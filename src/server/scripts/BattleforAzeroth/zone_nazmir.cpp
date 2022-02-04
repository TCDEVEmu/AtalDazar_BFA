/*
    WoWAtalDazar + Nordrassil
    Zone : Nazmir
    progress: 1%.
	Author: MistiX
 */

#include "ScriptedCreature.h"
#include "Conversation.h"
#include "Creature.h"
#include "Player.h"
#include "ObjectMgr.h"
#include "ScriptedGossip.h"


enum QuestsNazmir
{
	// Start The Threat to Nazrmir
	//Chapter BATTLE FOR AZEROTH #14 - ¡La amenaza de NAZMIR! Prince Jaume
    QUEST_TRAVELS_NAZMIR             = 47103,
	QUEST_NAZMIR_FORBIDDEN_SWAMP     = 48535,
	QUEST_IN_THE_DARK                = 47105,
	QUEST_THAT_NOT_ONE_IS_LEFT_ALIVE = 47264,
	QUEST_UNSEEMLY_BURIAL            = 47130,
	QUEST_ENDING_BLOOD_TROLLS        = 47262,
	QUEST_TIME_OF_REVELATIONS        = 47263,
	QUEST_THE_HELP_OF_THE_LOA        = 47188,
	QUEST_THE_SHADOW_OF_DEATH        = 47241,
    
};

enum SpellQuestsNazmir
{
	
};


enum ConversationQuestsNazmir
{
	//Conversation Rokhan ID 126549
	CONVERSATION_ROKHAN_NAZMIR_1 = 5800,
	CONVERSATION_ROKHAN_NAZMIR_2 = 6446,
};
		
/*
280857 Spinning Dazar'alor Disk Scene

ServerToClient: SMSG_PLAY_SCENE (0x2655) Length: 34 ConnIdx: 0 Time: 08/25/2018 08:40:18.958 Number: 362
SceneID: 2129
PlaybackFlags: 52
SceneInstanceID: 1
SceneScriptPackageID: 2332
TransportGUID: Full: 0x0
Pos: X: 1427.7589 Y: 1399.674 Z: 24.469297
Facing: 1.4343719482421875


281003 Taloc Effects [DNT]
ServerToClient: SMSG_PLAY_SCENE (0x2655) Length: 34 ConnIdx: 0 Time: 08/25/2018 08:40:18.958 Number: 366
SceneID: 2130
PlaybackFlags: 16
SceneInstanceID: 2
SceneScriptPackageID: 2336
TransportGUID: Full: 0x0
Pos: X: 1427.7589 Y: 1399.674 Z: 24.469297
Facing: 1.4343719482421875

ServerToClient: SMSG_SPELL_START (0x2C3A) Length: 103 ConnIdx: 0 Time: 08/25/2018 08:40:18.959 Number: 371
(Cast) CasterGUID: Full: 0x08398800000000000000000008C30EFE Player/0 R3682/S0 Map: 0 Low: 147001086
(Cast) CasterUnit: Full: 0x08398800000000000000000008C30EFE Player/0 R3682/S0 Map: 0 Low: 147001086
(Cast) CastID: Full: 0xBC3078CD40EFBA830060810052813211 Cast/3 R3102/S24705 Map: 1642 Low: 1384198673
(Cast) OriginalCastID: Full: 0x0
(Cast) SpellID: 245482 (245482) - Mod Aura Vision - Quest Zone-Specific 01
(Cast) SpellXSpellVisualID: 0
(Cast) CastFlags: 15
*/

//126549
class npc_rokhan_126549 : public ScriptedAI
{
public:
    npc_rokhan_126549(Creature* creature) : ScriptedAI(creature) { }

    void MoveInLineOfSight(Unit* unit) override
    {
        Player* player = unit->ToPlayer();
        if (!player)
            return;

        if (player->GetDistance(me) > 10.0f)
            return;

        if (!player->HasQuest(QuestsNazmir::QUEST_TRAVELS_NAZMIR) || player->GetQuestObjectiveData(QuestsNazmir::QUEST_TRAVELS_NAZMIR, 0))
            return;
		
		player->PlayConversation(ConversationQuestsNazmir::CONVERSATION_ROKHAN_NAZMIR_1);
	}
	
	void QuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QuestsNazmir::QUEST_NAZMIR_FORBIDDEN_SWAMP)
        {
            if (Creature* rokhan = player->SummonCreature(me->GetEntry(), me->GetPosition(), TEMPSUMMON_CORPSE_DESPAWN, 0, 0, true))
            {
                rokhan->AI()->SetGUID(player->GetGUID());
				
                me->DestroyForPlayer(player);
            }
        }
        
    }
	
	void SetGUID(ObjectGuid guid, int32 /*action*/) override
    {
        m_playerGUID = guid;
        //me->RemoveNpcFlag(UNIT_NPC_FLAG_QUESTGIVER);

       
        me->GetScheduler().Schedule(1s, [this](TaskContext /*context*/)
        {
			//player->PlayConversation(ConversationQuestsNazmir::CONVERSATION_ROKHAN_NAZMIR_2);
           //me->GetMotionMaster()->MovePoint(1, 0f, 0f, 0f);
        })
        .Schedule(2s, [this](TaskContext /*context*/)
        {
            
        });
    }
	
private:
    Player* GetPlayer() { return ObjectAccessor::GetPlayer(*me, m_playerGUID); }

    ObjectGuid m_playerGUID;
};

// 122689
class npc_pakuai_rokota_122689 : public ScriptedAI
{
public:
    npc_pakuai_rokota_122689(Creature* creature) : ScriptedAI(creature) { }

    bool GossipSelect(Player* player, uint32 /*menuId*/, uint32 /*gossipListId*/) override
    {
        
    }
};


//after https://www.wowhead.com/spell=257255/play-chapter-1-movie-dnt do https://www.wowhead.com/spell=242682/summon-talanjis-ride-dnt
// 257255
class spell_play_chapter_1 : public AuraScript
{
    PrepareAuraScript(spell_play_chapter_1);

    void OnRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
    {
        Unit* caster = GetCaster();
        if (!caster)
            return;

        caster->CastSpell(caster, 242682);
        if (Creature* tzena = caster->FindNearestCreature(121530, 5))
        {
            caster->CastSpell(tzena, 46598);
        }
    }

    void Register() override
    {
        AfterEffectRemove += AuraEffectRemoveFn(spell_play_chapter_1::OnRemove, EFFECT_2, SPELL_AURA_PLAY_SCENE, AURA_EFFECT_HANDLE_REAL);
    }
};

void AddSC_zone_nazmir()
{
	RegisterCreatureAI(npc_rokhan_126549);
	RegisterCreatureAI(npc_pakuai_rokota_122689);
	
    RegisterAuraScript(spell_play_chapter_1);
}

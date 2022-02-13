#include "Conversation.h"
#include "Creature.h"
#include "DatabaseEnv.h"
#include "DBCEnums.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "World.h"
#include "WorldSession.h"
#include "PhasingHandler.h"
#include "ScriptedCreature.h"
#include "ScriptedEscortAI.h"
#include "QuestPackets.h"
#include "ScenePackets.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "ObjectAccessor.h"
#include "SpellAuras.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "SpellHistory.h"
#include "MotionMaster.h"
#include "WorldSession.h"
#include "PhasingHandler.h"
#include "Channel.h"
#include "Common.h"
#include "Configuration/Config.h"
#include "Group.h"
#include "Guild.h"
#include "Log.h"

//Arreglo Quest 29524 Zona inicio Pandaren Memesan
class quest_29524 : public PlayerScript
{
public:
    quest_29524() : PlayerScript("quest_29524") {}
    
    void OnUpdate(Player* player, uint32 diff) override
    {
        if ((player->GetQuestStatus(29524) == QUEST_STATUS_COMPLETE) && (player->GetQuestStatus(29406) == QUEST_STATUS_REWARDED))
        {
            player->AddAura(100711, player);            
        }
    }
};

//Arreglo Quest 40222 Zona inicio DH Memesan
class quest_40222 : public PlayerScript
{
public:
    quest_40222() : PlayerScript("quest_40222") {}

    void OnUpdate(Player* player, uint32 diff) override
    {
        if ((player->GetQuestStatus(40222) == QUEST_STATUS_REWARDED && player->GetQuestStatus(40051) != QUEST_STATUS_COMPLETE) ||
            (player->GetQuestStatus(40222) == QUEST_STATUS_REWARDED && player->GetQuestStatus(40051) != QUEST_STATUS_REWARDED))
        {
            if (Quest const* quest = sObjectMgr->GetQuestTemplate(40051))
                player->AddQuest(quest, nullptr);
        }
    }
};

//Anuncia cuando un jugador se conecta Memesan
class announce_login : public PlayerScript
{
public:
    announce_login() : PlayerScript("announce_login") { }

    void OnLogin(Player* player, bool /*loginFirst*/)
    {        
        {
            if (player->GetTeam() == ALLIANCE)
            {
                std::ostringstream ss;
                ss << "|cff3DAEFF[ Anuncio de conexion ]|cffFFD800 : Jugador|cff4CFF00 " << player->GetName() << " |cffFFD800se ha conectado. Este jugador es|cff0026FF Alianza";
                sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
            }
            else
            {
                std::ostringstream ss;
                ss << "|cff3DAEFF[ Anuncio de conexion ]|cffFFD800 : Jugador|cff4CFF00 " << player->GetName() << " |cffFFD800se ha conectado. Este jugador es|cffFF0000 Horda";
                sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
            }
        } 
    }
};

//Anuncia la muerte de un boss y quien lo mato Memesan
class Boss_Announcer : public PlayerScript
{
public:
    Boss_Announcer() : PlayerScript("Boss_Announcer") {}

    void OnCreatureKill(Player* player, Creature* boss)
    {
        if (sConfigMgr->GetBoolDefault("Boss.Announcer.Enable", true))
        {
            if (boss->isWorldBoss())
            {
                std::string plr = player->GetName();
                std::string boss_n = boss->GetName();               
                std::string tag_colour = "7bbef7";
                std::string plr_colour = "7bbef7";
                std::string boss_colour = "ff0000";
                std::ostringstream stream;
                stream << "|CFF" << tag_colour <<

                    "|rEl grupo de|r""|r|cff" << plr_colour << " " << plr << "|r mató a"" |CFF" << boss_colour << "[" << boss_n << "]|r " "jefe de mundo" << "! Enhorabuena";
                sWorld->SendServerMessage(SERVER_MSG_STRING, stream.str().c_str());
            }
        }
    };
};

//Arreglo quest 39686 Zona inicio DH Memesan
class quest_39686 : public PlayerScript
{
public:
    quest_39686() : PlayerScript("quest_39686") {}

    void OnUpdate(Player* player, uint32 diff) override
    {
        if (player->GetQuestStatus(39686)==3 && player->GetAreaId()==7865)
        {            
            player->ForceCompleteQuest(39686);
        }
    }
};

//Arreglo resurreccion del DH en camara de las celadoras Memesan
class resu_dh : public PlayerScript
{
public:
    resu_dh() : PlayerScript("resu_dh") {}

    void OnUpdate(Player* player, uint32 diff) override
    {
        if (player->getClass() == CLASS_DEMON_HUNTER && player->GetZoneId() == 7814)
        {
            if (player->HasAuraType(SPELL_AURA_SPIRIT_OF_REDEMPTION))
                player->RemoveAurasByType(SPELL_AURA_MOD_SHAPESHIFT);

            if (!player->IsAlive())
            {
                player->ResurrectPlayer(1.0f);
                player->SpawnCorpseBones();
            }
        }
    }
};

//Arreglo Quest 29420 Zona inicio Pandaren Poker
class quest_29420 : public PlayerScript
{
public:
    quest_29420() : PlayerScript("quest_29420") {}

    void OnUpdate(Player* player, uint32 diff) override
    {
        if ((player->GetQuestStatus(29523) == QUEST_STATUS_REWARDED) && (player->GetQuestStatus(29418) == QUEST_STATUS_REWARDED))
        {
            player->AddAura(102398, player);
        }
    }
};

//Arreglo Quest 29678 Zona inicio Pandaren Poker
class quest_29678 : public PlayerScript
{
public:
    quest_29678() : PlayerScript("quest_29678") {}

    void OnUpdate(Player* player, uint32 diff) override
    {
        if (player->GetQuestStatus(29678) == QUEST_STATUS_REWARDED && player->GetAreaId() == 5862)
        {
            player->AddAura(102871, player);
            player->AddAura(102875, player);
            player->AddAura(128574, player);
        }
    }
};

//Arreglo Quest 29768 Zona inicio Pandaren Poker
class quest_29768 : public PlayerScript
{
public:
    quest_29768() : PlayerScript("quest_29768") {}

    void OnUpdate(Player* player, uint32 diff) override
    {
        if ((player->GetQuestStatus(29768) == QUEST_STATUS_INCOMPLETE && player->GetAreaId() == 5881) ||
            (player->GetQuestStatus(29768) == QUEST_STATUS_COMPLETE && player->GetAreaId() == 5881) ||
            (player->GetQuestStatus(29768) == QUEST_STATUS_REWARDED && player->GetAreaId() == 5881))
        {
            player->AddAura(108822, player);
        }
    }
};

//Arreglo Quest 29792 Zona inicio Pandaren Poker
class quest_29792 : public PlayerScript
{
public:
    quest_29792() : PlayerScript("quest_29792") {}

    void OnUpdate(Player* player, uint32 diff) override
    {
        if ((player->GetQuestStatus(29792) == QUEST_STATUS_INCOMPLETE && player->GetAreaId() == 5828) ||
            (player->GetQuestStatus(29792) == QUEST_STATUS_COMPLETE && player->GetAreaId() == 5828))
        {
            PhasingHandler::AddPhase(player, 878);
        }
    }
};

enum misc
{
    CHOICEID_DH_SPEC               = 231,

    RESPONSEID_DH_SPEC_DEVASTATION = 478,
    RESPONSEID_DH_SPEC_VENGEANCE   = 479,

    QUESTID_DH_SECRETOS_VILES      = 40051,

    SPELLID_DH_DEVASTATION         = 194940,
    SPELLID_DH_VENGANZA            = 194939,

};

/*Hacer funcionar el playerchoice de el dh para elegir especializacion*/
class dh_choice_231 : public PlayerScript
{
public:
    dh_choice_231() : PlayerScript("dh_choice_231") {}

    void OnPlayerChoiceResponse(Player* player, uint32 choiceID, uint32 responseID) override
    {
        if (choiceID != CHOICEID_DH_SPEC)
            return;

        player->LearnSpell(200749, false); // permite escoger especializacion

        switch (responseID)
        {
            case RESPONSEID_DH_SPEC_DEVASTATION:
                player->CastSpell(player, SPELLID_DH_DEVASTATION, true);
                player->KilledMonsterCredit(99071);
                break;

            case RESPONSEID_DH_SPEC_VENGEANCE:
                player->CastSpell(player, SPELLID_DH_VENGANZA, true);
                player->KilledMonsterCredit(99071);
                
                if (ChrSpecializationEntry const* spec = sChrSpecializationStore.AssertEntry(581))
                    player->ActivateTalentGroup(spec);
                break;
        default:
            break;
        }


    }
};

void AddSC_playerquest_fixes_lf()
{
    RegisterPlayerScript(quest_29524);
    RegisterPlayerScript(quest_40222);
    RegisterPlayerScript(announce_login);
    RegisterPlayerScript(Boss_Announcer);
    RegisterPlayerScript(quest_39686);
    RegisterPlayerScript(resu_dh);
    RegisterPlayerScript(quest_29420);
    RegisterPlayerScript(quest_29678);
    RegisterPlayerScript(quest_29768);
    RegisterPlayerScript(quest_29792);
    RegisterPlayerScript(dh_choice_231);
}

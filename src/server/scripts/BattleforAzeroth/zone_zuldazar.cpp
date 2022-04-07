#include "SpellScript.h"
#include "SpellAuras.h"
#include "SpellAuraEffects.h"
#include "Player.h"
#include "ScriptedEscortAI.h"
#include "Creature.h"
#include "ScriptedCreature.h"
#include "ScriptMgr.h"
#include "CreatureAI.h"
#include "ScriptedGossip.h"
#include "Pet.h"
#include "PetAI.h"
#include "Log.h"

enum ZuldazarQuests
{
    QUEST_SPEAKER_OF_THE_HORDE = 46931,
    OBJECTIVE_SUMMON_THE_HORDE = 291969
};

enum ZuldazarSpells
{
    SPELL_DAZAR_ALOR_DISK_SCENE = 280857
};

enum ZuldazarNpcs
{
    NPC_ZOLANI = 135441
};

// 138912
struct npc_enforcer_pterrordax : public npc_escortAI
{
    npc_enforcer_pterrordax(Creature* creature) : npc_escortAI(creature) { }

    void IsSummonedBy(Unit* summoner) override
    {
        Player* player = summoner->ToPlayer();

        me->SetCanFly(true);
        player->KilledMonsterCredit(135438);
        me->SetSpeed(MOVE_RUN, 21.f);
        player->EnterVehicle(me);
        Start(false, true, player->GetGUID());
        player->PlayConversation(8383);

    }

    void LastWaypointReached() override
    {
        me->ForcedDespawn();
    }
};

// 46931
struct quest_speaker_of_the_horde : public QuestScript
{
    quest_speaker_of_the_horde() : QuestScript("quest_speaker_of_the_horde") { }

    void OnQuestObjectiveChange(Player* player, Quest const* /*quest*/, QuestObjective const& objective, int32 /*oldAmount*/, int32 /*newAmount*/) override
    {
        if (objective.ID == 10000006)
        {
            if (player->GetQuestObjectiveCounter(10000006) == 0 && player->HasQuest(46931))
            {
                 player->SummonCreature(NPC_ZOLANI, Position(-1100.69f, 817.934f, 497.16f, 6.06216f), TEMPSUMMON_MANUAL_DESPAWN, 0, 0, true);
            }
        }
    }

    void OnQuestStatusChange(Player* player, Quest const* /*quest*/, QuestStatus /*oldStatus*/, QuestStatus newStatus) override
    {
        if (newStatus == QUEST_STATUS_NONE || newStatus == QUEST_STATUS_REWARDED)
        {
            player->GetSceneMgr().CancelSceneBySceneId(1894);
            player->GetSceneMgr().CancelSceneBySceneId(1975);
        }
    }
};

// 122690
struct npc_brillin_the_beauty : public ScriptedAI
{
    npc_brillin_the_beauty(Creature* creature) : ScriptedAI(creature) { }

    void MoveInLineOfSight(Unit* unit) override
    {
        if (Player * player = unit->ToPlayer())
            if (player->GetDistance(me) < 10.f)
                if (player->GetQuestStatus(QUEST_SPEAKER_OF_THE_HORDE) == QUEST_STATUS_INCOMPLETE)
                    if (player->GetQuestObjectiveCounter(OBJECTIVE_SUMMON_THE_HORDE) != 0)
                        KillCreditMe(player);
    }
};

// 130984
struct npc_natal_hakata : public ScriptedAI
{
    npc_natal_hakata(Creature* creature) : ScriptedAI(creature) { }

    void MoveInLineOfSight(Unit* unit) override
    {
        if (Player * player = unit->ToPlayer())
            if (player->GetDistance(me) < 10.f)
                if (player->GetQuestStatus(QUEST_SPEAKER_OF_THE_HORDE) == QUEST_STATUS_INCOMPLETE)
                    if (player->GetQuestObjectiveCounter(OBJECTIVE_SUMMON_THE_HORDE) != 0)
                        KillCreditMe(player);
    }
};

// 131443
struct npc_telemancer_oculeth_zuldazar : public ScriptedAI
{
    npc_telemancer_oculeth_zuldazar(Creature* creature) : ScriptedAI(creature) { }

    void MoveInLineOfSight(Unit* unit) override
    {
        if (Player * player = unit->ToPlayer())
            if (player->GetDistance(me) < 10.f)
                if (player->GetQuestStatus(QUEST_SPEAKER_OF_THE_HORDE) == QUEST_STATUS_INCOMPLETE)
                    if (player->GetQuestObjectiveCounter(OBJECTIVE_SUMMON_THE_HORDE) != 0)
                        player->KilledMonsterCredit(135435);
    }
};

class zone_zuldazar_scene_disk_controller : public ZoneScript
{
public:
    zone_zuldazar_scene_disk_controller() : ZoneScript("zone_zuldazar_scene_disk_controller") { }

    void OnPlayerEnter(Player* player) override
    {
        // need conditional
        player->CastSpell(player, SPELL_DAZAR_ALOR_DISK_SCENE);
    }

    void OnPlayerExit(Player* player) override
    {
        // need conditional
        player->RemoveAurasDueToSpell(SPELL_DAZAR_ALOR_DISK_SCENE);
    }
};

void AddSC_zone_zuldazar()
{
    RegisterCreatureAI(npc_enforcer_pterrordax);
    RegisterCreatureAI(npc_brillin_the_beauty);
    RegisterCreatureAI(npc_natal_hakata);
    RegisterCreatureAI(npc_telemancer_oculeth_zuldazar);

    RegisterQuestScript(quest_speaker_of_the_horde);

    new zone_zuldazar_scene_disk_controller();
}

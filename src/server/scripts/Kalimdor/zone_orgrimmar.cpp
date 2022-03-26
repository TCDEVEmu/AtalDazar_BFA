/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "GameObject.h"
#include "ScriptedCreature.h"
#include "Conversation.h"
#include "ObjectMgr.h"
#include "PhasingHandler.h"

enum OrgrimmarQuests
{
    QUEST_MISSION_ORDERS                    = 51443,
    QUEST_STORMWIND_EXTRACTION              = 50769
};

enum OrgrimmarQuestObjectives
{
    OBJECTIVE_MISSION_ORDERS_TAlk_SYLVANAS  = 335883,
    OBJECTIVE_STORMWIND_EXTRACTION_POTION   = 333785
};

enum OrgrimmarSpells
{
    SPELL_SCENE_SECRET_WEAPON   = 281294
};

enum OrgrimmarConversations
{
    CONVERSATION_MISSION_STATEMENT_ALL_HERE     = 7170
};

// Start Quest BfA
class playerscript_orgrimmar_start_bfa : public PlayerScript
{
public:
    playerscript_orgrimmar_start_bfa() : PlayerScript("playerscript_orgrimmar_start_bfa") { }

    void OnUpdate(Player* player, uint32 diff) override
    {
        if (player->GetAreaId() == 5170 && player->GetQuestStatus(53372) == QUEST_STATUS_NONE && player->GetTeamId() == TEAM_HORDE && player->getLevel() >= 110)
        {
            Conversation::CreateConversation(8423, player, player->GetPosition(), { player->GetGUID() });

            if (const Quest * quest = sObjectMgr->GetQuestTemplate(53372))
                player->AddQuest(quest, nullptr);
        }
        else
            return;
    }
};

 // 135201 - Talk to Sylvanas
struct npc_orgri_mission_orders_speak_sylvanas : public ScriptedAI
{
    npc_orgri_mission_orders_speak_sylvanas(Creature* creature) : ScriptedAI(creature) { }

    void MoveInLineOfSight(Unit* unit) override
    {
        if (Player* player = unit->ToPlayer())
            if (player->GetQuestStatus(QUEST_MISSION_ORDERS) == QUEST_STATUS_INCOMPLETE)
                if (player->GetQuestObjectiveCounter(OBJECTIVE_MISSION_ORDERS_TAlk_SYLVANAS) == 0)
                    if (player->GetDistance(me) < 40.f)
                        player->CastSpell(player, SPELL_SCENE_SECRET_WEAPON);
    }
};

// 134202 - Meet your team
struct  npc_orgri_mission_orders_meet_team : public ScriptedAI
{
    npc_orgri_mission_orders_meet_team(Creature* creature) : ScriptedAI(creature) { }

    void MoveInLineOfSight(Unit* unit) override
    {
        if (Player * player = unit->ToPlayer())
            if (player->GetQuestStatus(QUEST_MISSION_ORDERS) == QUEST_STATUS_INCOMPLETE)
                if (player->GetQuestObjectiveCounter(OBJECTIVE_MISSION_ORDERS_TAlk_SYLVANAS) == 1)
                    if (player->GetQuestObjectiveCounter(10000001) == 0)
                        if (player->GetDistance(me) < 1.0f)
                        {
                            Creature* creatureTarget1 = player->FindNearestCreature(139028, 2.0f);
                            Creature* creatureTarget2 = player->FindNearestCreature(135213, 2.0f);
                            if (creatureTarget1 && creatureTarget2)
                            {
                                creatureTarget1->HandleEmoteCommand(66);
                                creatureTarget2->HandleEmoteCommand(66);
                                KillCreditMe(player);
                                player->SummonCreature(135205, Position(1569.87f, -4412.15f, 15.7906f, 4.9360237f), TEMPSUMMON_MANUAL_DESPAWN);
                                player->PlayConversation(CONVERSATION_MISSION_STATEMENT_ALL_HERE);
                                player->KilledMonsterCredit(10000001);
                            }
                            else
                                return;
                        }
    }
};

// 50769
struct quest_stormwind_extraction : public QuestScript
{
    quest_stormwind_extraction() : QuestScript("quest_stormwind_extraction") { }

    void OnQuestObjectiveChange(Player* player, Quest const* /*quest*/, QuestObjective const& objective, int32 /*oldAmount*/, int32 /*newAmount*/) override
    {
        if (objective.ID == OBJECTIVE_STORMWIND_EXTRACTION_POTION)
        {
            if (player->GetQuestObjectiveCounter(OBJECTIVE_STORMWIND_EXTRACTION_POTION) == 0 && player->HasQuest(50769))
            {
                PhasingHandler::RemovePhase(player, 170, true);
                PhasingHandler::RemovePhase(player, 171, true);
                player->SummonCreature(135206, Position(1575.93f, -4457.36f, 15.821f, 1.15424f), TEMPSUMMON_MANUAL_DESPAWN);
                player->SummonCreature(135207, Position(1580.41f, -4456.33f, 15.8224f, 2.4398f), TEMPSUMMON_MANUAL_DESPAWN);
                player->SummonCreature(135205, Position(1577.17f, -4453.82f, 15.6648f, 5.01313f), TEMPSUMMON_MANUAL_DESPAWN);
                //player->SummonCreature(139028, Position(1569.4132080078125f, -4435.03125f, 16.13552284240722656f, 1.800256252288818359f), TEMPSUMMON_MANUAL_DESPAWN);
                //player->SummonCreature(135213, Position(1573.8072509765625f, -4433.2587890625f, 16.13552284240722656f, 2.0272674560546875f), TEMPSUMMON_MANUAL_DESPAWN);
            }
        }
    }
};

struct khadgars_upgraded_servant : public ScriptedAI
{
    khadgars_upgraded_servant(Creature* creature) : ScriptedAI(creature) { }

    void QuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == 44663)
        {
            me->DestroyForPlayer(player);
        }        
    }
};

void AddSC_orgrimmar()
{
    RegisterPlayerScript(playerscript_orgrimmar_start_bfa);
    RegisterCreatureAI(npc_orgri_mission_orders_speak_sylvanas);
    RegisterCreatureAI(npc_orgri_mission_orders_meet_team);
    RegisterQuestScript(quest_stormwind_extraction);
    RegisterCreatureAI(khadgars_upgraded_servant);
}

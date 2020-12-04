/*
lyosky
 */

#include "Player.h"
#include "Creature.h"
#include "GameObject.h"
#include "Map.h"
#include "ScriptedCreature.h"
#include "ScriptMgr.h"
#include "InstanceScript.h"
#include "WorldStatePackets.h"
#include "MiscPackets.h"
#include "IslandPackets.h"
#include "WorldSession.h"

enum worldstates
{
    WORLDSTATE_GAIN = 13627,
};

enum sv_events
{
    EVENT_START_TIMER = 1,
    EVENT_GAME_START,
};

enum sv_spells
{
    SPELL_AZERITE_RESIDUE = 260738,
    SPELL_ISLAND_COMPLETE = 245618, // island - complete
};

enum sv_gos
{
    GATE_01 = 303140,
    GATE_02 = 303141,
    GATE_03 = 303199,
};

class scenario_snowblossom_village : public InstanceMapScript
{
public:
    scenario_snowblossom_village() : InstanceMapScript("scenario_snowblossom_village", 1907) { }

    struct scenario_snowblossom_village_InstanceMapScript : public InstanceScript
    {
        scenario_snowblossom_village_InstanceMapScript(InstanceMap* map) : InstanceScript(map)
        {
        }

        int32 gain = 0;
        bool isIntr = false;
        bool isComplete = false;

        void InitWorldState(bool Enable = true)
        {
            DoUpdateWorldState(WORLDSTATE_GAIN, 0);
            DoUpdateWorldState(16018, 1);
            DoUpdateWorldState(14253, 1);
            DoUpdateWorldState(13004, 1);
            DoUpdateWorldState(14065, 1);
            DoUpdateWorldState(14246, 1);
            DoUpdateWorldState(14063, 1);
            DoUpdateWorldState(13321, 9);
            DoUpdateWorldState(12889, 1);
            DoUpdateWorldState(12878, 1);
            DoUpdateWorldState(12877, 1);

            DoUpdateWorldState(3191, 20);
            DoUpdateWorldState(3901, 18);
            DoUpdateWorldState(14684, 6000);
            DoUpdateWorldState(15893, 17);
        }

        void OnPlayerEnter(Player* player) override
        {
            //if (!TeamInInstance)
            //    TeamInInstance = player->GetTeam();
            player->SendUpdateWorldState(WORLDSTATE_GAIN, 0);
            InitWorldState();
            SetCheckPointPos({ 2234.674f, -129.7475f, 6.3429f, 2.344061f });
            player->RemoveAurasDueToSpell(SPELL_AZERITE_RESIDUE);

            WorldPackets::Misc::StartTimer startTimer;
            startTimer.Type = WorldPackets::Misc::StartTimer::TIMER_TYPE_BATTLEGROUND;
            startTimer.TotalTime = 33;
            startTimer.TimeLeft = 33;
            instance->SendToPlayers(startTimer.Write());

            events.ScheduleEvent(EVENT_START_TIMER, 33 * IN_MILLISECONDS);

            if (!isIntr)
            {
                isIntr = true;
                //143761

               
            }

        }

        void FillInitialWorldStates(WorldPackets::WorldState::InitWorldStates& packet) override
        {
            packet.Worldstates.emplace_back(uint32(WORLDSTATE_GAIN), int32(gain));
        }

        void OnCreatureCreate(Creature* creature) override
        {
            InstanceScript::OnCreatureCreate(creature);

            switch (creature->GetEntry())
            {
            default:
                break;
            }
        }

        void OnUnitDeath(Unit* who)
        {
            GiveIslandAzeriteXpGain(who->GetGUID(), 3);
        }

        void OnPlayerExit(Player* player) override
        {
            player->RemoveAurasDueToSpell(SPELL_AZERITE_RESIDUE);
            player->RemoveAurasDueToSpell(SPELL_ISLAND_COMPLETE);
        }

        void OnPlayerDeath(Player* player) override
        {
            player->RemoveAurasDueToSpell(SPELL_AZERITE_RESIDUE);
        }

        void OnCompletedIsland()
        {
            isComplete = true;
            DoRemoveAurasDueToSpellOnPlayers(SPELL_AZERITE_RESIDUE);
            DoCastSpellOnPlayers(SPELL_ISLAND_COMPLETE);

            WorldPackets::Island::IslandCompleted package;
            package.MapID = instance->GetId();           
            package.Winner = 0;
            DoOnPlayers([&](Player* player)
            {
                WorldPackets::Inspect::PlayerModelDisplayInfo playerModelDisplayInfo;
                playerModelDisplayInfo.Initialize(player);
                package.DisplayInfos.push_back(playerModelDisplayInfo);
            });
            instance->SendToPlayers(package.Write());           
        }

        void GiveIslandAzeriteXpGain(ObjectGuid guid, int32 xp)
        {
            gain = gain + xp;
            for (uint8 i = 0; i < xp; ++i)
                DoCastSpellOnPlayers(SPELL_AZERITE_RESIDUE);
            DoOnPlayers([=](Player* player)
            {
                WorldPackets::Island::IslandAzeriteXpGain xpgain;
                xpgain.SourceGuid = guid;
                xpgain.SourceID = guid.GetEntry();
                xpgain.PlayerGuid = player->GetGUID();
                xpgain.XpGain = xp;
                player->GetSession()->SendPacket(xpgain.Write());
            });
            DoUpdateWorldState(WORLDSTATE_GAIN, gain);
        }

        void Update(uint32 diff) override
        {
            events.Update(diff);
            switch (events.ExecuteEvent())
            {
            case EVENT_START_TIMER:
            
                isComplete = false;
                events.ScheduleEvent(EVENT_GAME_START, 1 * IN_MILLISECONDS);
                //
                break;
            case EVENT_GAME_START:

                if (gain >= 30 && !isComplete)
                    OnCompletedIsland();
                events.ScheduleEvent(EVENT_GAME_START, 1 * IN_MILLISECONDS);
                break;
            }
        }

    protected:
        EventMap events;
    };

    InstanceScript* GetInstanceScript(InstanceMap* map) const
    {
        return new scenario_snowblossom_village_InstanceMapScript(map);
    }
};

void AddSC_scenario_snowblossom_village()
{
    new scenario_snowblossom_village();
}

#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "InstanceScript.h"
#include "Map.h"
#include "MotionMaster.h"
#include "ObjectAccessor.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellInfo.h"
#include "SpellScript.h"
#include "TemporarySummon.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "uldir.h"

enum Definitionstext
{
    SAY_AGGRO = 5,
    SAY_SANITIZING_STRIKE = 1,
    SAY_PURIFYING_FLAME = 2,
    SAY_ULDIR_DEFENSIVE_BEAM = 4,
    SAY_CLEANSING_PURGE = 0,
    SAY_WIND_TUNNEL = 3,
    SAY_DEATH = 6,
    SAY_KILL,
    
    MOTHER_ENCOUNTER  = 2141,
};

enum spellmother
{
    SPELL_PERIODIC_ENERGY_GAIN        = 295065,
    //Rooms                           
    SPELL_FIRST_ROOM_OCCUPANT         = 267814,
    SPELL_SECOND_ROOM_OCCUPANT        = 267817,
    SPELL_THIRD_ROOM_OCCUPANT         = 267819,
    //Depleted Energy                 
    SPELL_DEPLETED_ENERGY             = 274205,
    //Cleansing Purge
    SPELL_CLEANSING_PURGE_ENERGY      = 269057,
    SPELL_CLEANSING_PURGE_AT          = 268089,
    SPELL_CLEANSING_PURGE_AURA        = 268095, //268277,
    //Purifying Flame                 
    SPELL_PURIFYING_FLAME_SUMMON      = 267802,
    SPELL_PURIFYING_FLAME_DAMAGE      = 267803,
    SPELL_PURIFYING_FLAME_AT          = 267887,
    SPELL_PURIFYING_FLAME_VISUAL      = 286467,//30 YARD
    SPELL_PURIFYING_FLAME_AURA        = 286466,// 270292
    //Sanitizing Strike               
    SPELL_SANITIZING_STRIKE           = 267787,
    //Wind Tunnel                     
    SPELL_WIND_TUNNEL_AT_R_TO_L       = 267885, //Entry: 136322
    SPELL_WIND_TUNNEL_AT_L_TO_R       = 267878,
    //275919 Wind Tunnel
    //Defense Grid
    SPELL_DEFENSE_GRID_DAMAGE         = 267821,
    //136298 npc, Defense Grid
    SPELL_DEFENSE_GRID_MISSILE        = 267831,
    SPELL_DEFENSE_GRID_MISSILE_SUMMON = 267832,
    //Uldir Defensive Beams
    SPELL_ULDIR_DEFENSE_BEAM_H_AT_M   = 275228, //npc 136554, from top to ground
    SPELL_ULDIR_DEFENSE_BEAM_V_AT_M   = 277961, //wall
    SPELL_ULDIR_DEFENSE_BEAM_V_AT_R   = 281642,
    SPELL_ULDIR_DEFENSE_BEAM_V_AT_L   = 281644,
    SPELL_ULDIR_DEFENSE_BEAM_AT_DAMAGE = 275432,
};

enum eventmother
{
  EVENT_ENERGIZE = 1,
  EVENT_CLEANSING_PURGE,
  EVENT_SANITIZING_STRIKE,
  EVENT_PURIFYING_FLAME,
  EVENT_WIND_TUNNEL,
  EVENT_ULDIR_DEFENSIVE_BEAM_1,
  EVENT_ULDIR_DEFENSIVE_BEAM_2,
  EVENT_DEPLETED_ENERGY,
};

const Position middle_of_the_room_pos = { -135.431f, -255.882f, 733.840f, 0.0f };
const Position final_pos = { 70.888f, -255.695f, 704.580f, 0.04f };

const Position summon_pos[5] =
{
    { -135.43f, -255.88f, 695.37f, 0.0f },
    { -81.6f, -255.65f, 695.3f, 0.0f },
    { -27.599f, -255.882f, 695.373f, 0.0f },
    { -108.608f, -255.599f, 695.369f, 3.1416f },
    { -54.6701f, -255.599f, 695.369f, 3.1416f },
};

const Position summon_pos2[4] =
{
    { -81.626f, -273.699f, 738.48f, 0.0f },
    { -81.626f, -273.699f, 695.215f, 0.0f },
    { -27.583f, -238.297f, 738.48f, 0.0f },   
    { -27.583f, -238.297f, 695.215f, 0.0f },
};

const Position summon_pos3[4] =
{    
    { -81.388f, -223.566f, 695.213f, 1.565f },
    { -81.457f, -287.875f, 695.213f, 1.565f },
    { -27.23f, -287.862f, 695.213f, 1.565f },
    { -27.5f, -222.9f, 695.213f, 1.565f },
};

std::vector<uint32> beamSpellList = { SPELL_ULDIR_DEFENSE_BEAM_V_AT_M, SPELL_ULDIR_DEFENSE_BEAM_V_AT_R, SPELL_ULDIR_DEFENSE_BEAM_V_AT_L };

struct boss_uldir_mother : public BossAI
{
    boss_uldir_mother(Creature* creature) : BossAI(creature, DATA_MOTHER) { }

    bool need_cleansing_purge = false;
    bool is_complete = false;
    bool isIntr = false;

    void Reset() override
    {
        BossAI::Reset();
        me->RemoveAura(SPELL_PERIODIC_ENERGY_GAIN);
        me->SetPowerType(POWER_ENERGY);
        me->SetPower(POWER_ENERGY, 100);
       
        if (!is_complete)
        {
            me->SetFaction(16);
            SummonNpc();
        }
        need_cleansing_purge = false;
    }

    void SummonNpc()
    {
        summons.DespawnAll();

        std::list<Creature*> targets;
        me->GetCreatureListWithEntryInGrid(targets, NPC_CHAMBER_NUMBER_1);
        me->GetCreatureListWithEntryInGrid(targets, NPC_CHAMBER_NUMBER_2);
        me->GetCreatureListWithEntryInGrid(targets, NPC_CHAMBER_NUMBER_3);
        me->GetCreatureListWithEntryInGrid(targets, NPC_DEFENSE_GRID);

        for (Creature* creature : targets)
            creature->DespawnOrUnsummon();

        me->SummonCreature(NPC_CHAMBER_NUMBER_1, summon_pos[0]);
        me->SummonCreature(NPC_CHAMBER_NUMBER_2, summon_pos[1]);
        me->SummonCreature(NPC_CHAMBER_NUMBER_3, summon_pos[2]);
        me->SummonCreature(NPC_WIND_TUNNEL, summon_pos[0]);
        me->SummonCreature(NPC_WIND_TUNNEL, summon_pos[1]);
        me->SummonCreature(NPC_WIND_TUNNEL, summon_pos[2]);
        me->SummonCreature(NPC_DEFENSE_GRID, summon_pos[3]);
        me->SummonCreature(NPC_DEFENSE_GRID, summon_pos[4]);
    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage) override
    {
        if (me->HealthBelowPctDamaged(5, damage) && !is_complete)
        {
            damage = 0;
            me->SetFaction(35);
            me->SetFullHealth();
            is_complete = true;
            _JustDied();
            Talk(SAY_DEATH);
            //8867
            instance->DoOnPlayers([](Player* player)
            {
                player->PlayConversation(8867);
            });
        }
    }

    void EnterCombat(Unit* /*unit*/) override
    {
        _EnterCombat();
        Talk(SAY_AGGRO);
        DoCast(SPELL_PERIODIC_ENERGY_GAIN);

        events.ScheduleEvent(EVENT_ENERGIZE, 5s);
        events.ScheduleEvent(EVENT_WIND_TUNNEL, 30s);
        events.ScheduleEvent(EVENT_ULDIR_DEFENSIVE_BEAM_1, 130s);
        events.ScheduleEvent(EVENT_ULDIR_DEFENSIVE_BEAM_2, 250s);
        events.ScheduleEvent(EVENT_CLEANSING_PURGE, 120s);
        events.ScheduleEvent(EVENT_DEPLETED_ENERGY, 240s);       
    }

    void ExecuteEvent(uint32 eventId) override
    {
        switch (eventId)
        {
        case EVENT_ENERGIZE:
        {
            if (me->GetPower(POWER_ENERGY) >= 100)
            {
                events.ScheduleEvent(EVENT_SANITIZING_STRIKE, 100ms);
            }
            events.Repeat(1s);
            break;
        }
        case EVENT_CLEANSING_PURGE:
        {
            std::list<Creature*> targets;
            me->GetCreatureListWithEntryInGrid(targets, NPC_CHAMBER_NUMBER_1);
            me->GetCreatureListWithEntryInGrid(targets, NPC_CHAMBER_NUMBER_2);
            me->GetCreatureListWithEntryInGrid(targets, NPC_CHAMBER_NUMBER_3);

            if (!targets.empty())
            {
                targets.sort(Trinity::ObjectDistanceOrderPred(me));

                Talk(SAY_CLEANSING_PURGE);
                DoCast(SPELL_CLEANSING_PURGE_ENERGY);

                if (Creature* target = targets.front())
                    target->CastSpell(target, SPELL_CLEANSING_PURGE_AT, true);

                events.Repeat(120s);
            }
            break;
        }
        case EVENT_SANITIZING_STRIKE:
        {
            if (me->GetPower(POWER_ENERGY) >= 100)
            {
                Talk(SAY_SANITIZING_STRIKE);
                me->StopMoving();
                DoCast(SPELL_SANITIZING_STRIKE);
                events.ScheduleEvent(EVENT_PURIFYING_FLAME, 5s);
            }
            break;
        }
        case EVENT_PURIFYING_FLAME:
        {
            Talk(SAY_PURIFYING_FLAME);
            if (instance)
                instance->DoCastSpellOnPlayers(SPELL_PURIFYING_FLAME_SUMMON);
            break;
        }
        case EVENT_WIND_TUNNEL:
        {
            Talk(SAY_WIND_TUNNEL);
            uint32 spellId = urand(0, 1) ? SPELL_WIND_TUNNEL_AT_R_TO_L : SPELL_WIND_TUNNEL_AT_L_TO_R;

            if(Creature* creature = me->FindNearestCreature(NPC_WIND_TUNNEL, 250.0f))
                creature->CastSpell(creature, spellId, true);

            events.Repeat(30s);
            break;
        }
        case EVENT_DEPLETED_ENERGY:
        {
            DoCastSelf(SPELL_DEPLETED_ENERGY);
            break;
        }
        case EVENT_ULDIR_DEFENSIVE_BEAM_1:
        {
            if (Creature* grid = me->SummonCreature(NPC_SURGICAL_GRID, summon_pos2[0]))
            {
                grid->AddAura(SPELL_ULDIR_DEFENSE_BEAM_H_AT_M);
                grid->GetMotionMaster()->MovePoint(1, summon_pos2[1]);
            }
            
            uint32 randSpellId = Trinity::Containers::SelectRandomContainerElement(beamSpellList);

            AddTimedDelayedOperation(6 * TimeConstants::IN_MILLISECONDS, [this, randSpellId]() -> void
            {
                if (Creature* grid = me->SummonCreature(NPC_SURGICAL_GRID, summon_pos3[0]))
                {
                    grid->AddAura(randSpellId);
                    grid->GetMotionMaster()->MovePoint(1, summon_pos3[1]);
                }
            });

            events.Repeat(45s);
            break;
        }
        case EVENT_ULDIR_DEFENSIVE_BEAM_2:
        {
            events.CancelEvent(EVENT_ULDIR_DEFENSIVE_BEAM_1);
            if (Creature* grid = me->SummonCreature(NPC_SURGICAL_GRID, summon_pos2[2]))
            {
                grid->AddAura(SPELL_ULDIR_DEFENSE_BEAM_H_AT_M);
                grid->GetMotionMaster()->MovePoint(1, summon_pos2[3]);
            }

            uint32 randSpellId = Trinity::Containers::SelectRandomContainerElement(beamSpellList);

            AddTimedDelayedOperation(6 * TimeConstants::IN_MILLISECONDS, [this, randSpellId]() -> void
            {
                if (Creature* grid = me->SummonCreature(NPC_SURGICAL_GRID, summon_pos3[2]))
                {
                    grid->AddAura(randSpellId);
                    grid->GetMotionMaster()->MovePoint(1, summon_pos3[3]);
                }
            });

            events.Repeat(45s);
            break;
        }
        }
    }

    void MoveInLineOfSight(Unit* who) override
    {
        if (Player* player = who->ToPlayer())
        {
            if (me->IsWithinDist(player, 25.0f, false) && !isIntr)
            {
                isIntr = true;
                instance->DoOnPlayers([](Player* player)
                {
                    player->PlayConversation(8854);
                });
            }
        }
    }
};

struct npc_do_nothing : public ScriptedAI
{
    npc_do_nothing(Creature* creature) : ScriptedAI(creature)  { }

    void Reset() override
    {
        SetCombatMovement(false);
        me->SetReactState(REACT_PASSIVE);
        me->AddUnitFlag(UNIT_FLAG_IMMUNE_TO_PC);
        me->AddUnitFlag(UNIT_FLAG_IMMUNE_TO_NPC);
        me->AddUnitState(UNIT_STATE_CANNOT_TURN);
    }
};

struct npc_defense_grid_136298 : public ScriptedAI
{
    npc_defense_grid_136298(Creature* creature) : ScriptedAI(creature) { }

    void Reset() override
    {
        me->SetReactState(REACT_PASSIVE);
        me->AddUnitFlag(UNIT_FLAG_IMMUNE_TO_PC);
        me->AddUnitFlag(UNIT_FLAG_IMMUNE_TO_NPC);
    }

    void MoveInLineOfSight(Unit* who) override
    {
        if (Player* player = who->ToPlayer())
        {
            if (me->IsWithinDist(player, 3.0f, false))
            {
                me->CastSpell(player, SPELL_DEFENSE_GRID_DAMAGE, true);
                player->CastSpell(player, SPELL_DEFENSE_GRID_MISSILE, true);
            }
        }
    }
};

struct npc_purifying_flame_136289 : public ScriptedAI
{
    npc_purifying_flame_136289(Creature* creature) : ScriptedAI(creature) {  }

    void Reset() override
    {
        me->SetReactState(REACT_PASSIVE);
        me->AddUnitFlag(UNIT_FLAG_IMMUNE_TO_PC);
        me->AddUnitFlag(UNIT_FLAG_IMMUNE_TO_NPC);
        if (Player* player = me->SelectNearestPlayer(200.0f))
            me->CastSpell(player, SPELL_PURIFYING_FLAME_DAMAGE, true);
    }
};

struct npc_surgical_grid_136554 : public ScriptedAI
{
    npc_surgical_grid_136554(Creature* creature) : ScriptedAI(creature) { }

    void Reset() override
    {
        me->SetReactState(REACT_PASSIVE);
        me->AddUnitFlag(UNIT_FLAG_IMMUNE_TO_PC);
        me->AddUnitFlag(UNIT_FLAG_IMMUNE_TO_NPC);
        me->SetDisableGravity(true);
    }

    void MovementInform(uint32 /*type*/, uint32 id) override
    {
        if (id == 1)
            me->DespawnOrUnsummon();
    }
};

//AT 17792 Cleansing Purge 268089
class at_uldir_cleansing_purge : public AreaTriggerAI
{
public:
    at_uldir_cleansing_purge(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit) override
    {
        if (Unit* caster = at->GetCaster())
            if (unit->IsPlayer() && !unit->HasAura(SPELL_CLEANSING_PURGE_AURA))
                unit->CastSpell(unit, SPELL_CLEANSING_PURGE_AURA, true);
    }

    void OnUnitExit(Unit* unit) override
    {
        unit->RemoveAurasDueToSpell(SPELL_CLEANSING_PURGE_AURA);
    }
};
//spell 267878 AT 17765
struct at_uldir_wind_tunnel_1 : AreaTriggerAI
{
    at_uldir_wind_tunnel_1(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit) override
    {
        if (unit->IsPlayer())
            unit->ApplyMovementForce(at->GetGUID(), *at->GetCaster(), -15.f, 0);
    }

    void OnUnitExit(Unit* unit) override
    {
        unit->RemoveMovementForce(at->GetGUID());
    }
};
//at 17767 267885
struct at_uldir_wind_tunnel_2 : AreaTriggerAI
{
    at_uldir_wind_tunnel_2(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit) override
    {
        if (unit->IsPlayer())
            unit->ApplyMovementForce(at->GetGUID(), *at->GetCaster(), 15.f, 0);
    }

    void OnUnitExit(Unit* unit) override
    {
        unit->RemoveMovementForce(at->GetGUID());
    }
};

struct at_uldir_defense_beam : AreaTriggerAI
{
    at_uldir_defense_beam(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit) override
    {
        if (Unit* caster = at->GetCaster())
            if (unit->IsPlayer() && !unit->HasAura(SPELL_ULDIR_DEFENSE_BEAM_AT_DAMAGE))
                unit->CastSpell(unit, SPELL_ULDIR_DEFENSE_BEAM_AT_DAMAGE, true);
    }

    void OnUnitExit(Unit* unit) override
    {
        unit->RemoveAurasDueToSpell(SPELL_ULDIR_DEFENSE_BEAM_AT_DAMAGE);
    }
};
void AddSC_boss_mother()
{
    RegisterCreatureAI(boss_uldir_mother);
    RegisterCreatureAI(npc_do_nothing);
    RegisterCreatureAI(npc_defense_grid_136298);
    RegisterCreatureAI(npc_purifying_flame_136289);
    RegisterCreatureAI(npc_surgical_grid_136554);
    RegisterAreaTriggerAI(at_uldir_cleansing_purge);
    RegisterAreaTriggerAI(at_uldir_wind_tunnel_1);
    RegisterAreaTriggerAI(at_uldir_wind_tunnel_2);
    RegisterAreaTriggerAI(at_uldir_defense_beam);
}

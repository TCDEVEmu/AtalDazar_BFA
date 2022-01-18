/*
 * Copyright (C) 2017-2018 AshamaneProject <https://github.com/AshamaneProject>
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

#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "GameObject.h"
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
#include "Vehicle.h"
#include "freehold.h"

enum Spells
{
    ///Rider SkyCap Kragg (Before Fight with Boss)
    VILE_BOMBADMENT          = 256005,
    VILE_COATING             = 256016,

    ///Boss SkyCap Kragg
    CHARRRRRGE               = 255952, /// With Mount 
    PISTOL_SHOT              = 255966, /// With Mount 
    AZERITE_POWDER_SHOT      = 256106, /// Without Mount 
    REVITALIZING_BREW_SKYCAP = 256060, /// Without Mount
    REVITALIZING_BREW_PLAYER = 263297, /// Without Mount
    SUMMON_SHARKBAIT         = 256056, /// Without Mount

    ///Heroic
    DiveBomb                 = 272046,  ///Sharkbait will then charge across the arena in a straight line, dealing damage and knocking back all players in the path

    END_CONVERSATION         = 258353
};

enum Events
{
    Event_Pistol_Shot,
    Event_Charrrrrge,
    Event_Azerite_Shot,
    Event_Revitalizing_Brew,

    Event_Vile_Bombadment
};

enum Phases
{
    Mount,
    Unmount
};

enum MovementPoint
{
    MovementPointMiddle,
    MovementPointEndPos1,
    MovementPointEndPos2,
};

enum TalkKragg
{
    Aggro = 0,
    Charge = 1,
    Hp75 = 2,
    Interruptgrog1 = 3,
    Azeriteshot1 = 4,
    Azeriteshot2 = 5,
    Interruptgrog2 = 6,
    Dead = 7,
    /*
    ? = 8, Well, looks like someone still ain\'t got their sea legs!
    ? = 9, Ah! Ye made me bilge on me own anchor!
    */
};

enum action
{
    sharkbaitfly = 0,
    sharkbaitendcombat = 1,
};

Position GetRandomPositionAround(Unit* unit, float distMin, float distMax)
{
    double angle = rand_norm() * 2.0 * M_PI;
    float x = unit->GetPositionX() + (float)(frand(distMin, distMax) * std::sin(angle));
    float y = unit->GetPositionY() + (float)(frand(distMin, distMax) * std::cos(angle));
    float z = unit->GetPositionZ();
    unit->UpdateAllowedPositionZ(x, y, z);
    return { x, y, z };
}

Position const MiddlePos = { -1755.8407f, -1021.54175f,  120.07338f, 0.0f};
Position const EndPos1   = { -1763.66f,   -1011.15f,  89.43428f, 0.0f};
Position const EndPos2   = { -1865.8f,  -829.222f,  133.511f, 0.0f};

Position const CombatPos[16] =
{
    {-1732.0999f, -1039.8822f,  120.07338f, 0.0f},
    {-1740.9257f, -1047.5714f,  120.07338f, 0.0f},
    {-1752.0221f, -1051.2977f,  120.07338f, 0.0f},
    {-1763.6998f, -1050.494f,   120.07338f, 0.0f},
    {-1774.1812f, -1045.2826f,  120.07338f, 0.0f},
    {-1781.8704f, -1036.4568f,  120.07338f, 0.0f},
    {-1785.5967f, -1025.3604f,  120.07338f, 0.0f},
    {-1784.793f,  -1013.68256f, 120.07338f, 0.0f},
    {-1779.5815f, -1003.2013f,  120.07338f, 0.0f},
    {-1770.7557f, -995.51215f,  120.07338f, 0.0f},
    {-1759.6593f, -991.78577f,  120.07338f, 0.0f},
    {-1747.9816f, -992.5895f,   120.07338f, 0.0f},
    {-1737.5002f, -997.8009f,   120.07338f, 0.0f},
    {-1729.811f,  -1006.62665f, 120.07338f, 0.0f},
    {-1726.0847f, -1017.72314f, 120.07338f, 0.0f},
    {-1726.8884f, -1029.4009f,  120.07338f, 0.0f},
};

// 126832
struct boss_skycap_kragg : public BossAI
{
    boss_skycap_kragg(Creature* creature) : BossAI(creature, DATA_BOSS_SKYCAPN_KRAGG)
    {
        instance = me->GetInstanceScript();
        me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_INTERRUPT, false);
    }
    
    void Reset() override
    {
        phase = Mount;
        me->Mount(80438);
        events.Reset();
        me->RemoveAllAreaTriggers();
        summons.DespawnAll();
        instance->SetBossState(DATA_BOSS_SKYCAPN_KRAGG, FAIL);
        instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
    }

    void EnterCombat(Unit* who) override
    {
        Talk(Aggro);
        BossAI::EnterCombat(who);
        phase = Mount;
        events.ScheduleEvent(Event_Pistol_Shot, 1, 1);
        events.ScheduleEvent(Event_Charrrrrge, 5000, 5000);
    }

    void OnSpellCastInterrupt(SpellInfo const* spell)
    {
        if (spell->Id == REVITALIZING_BREW_SKYCAP)
        {
            if (urand(0, 1) == 1)
                Talk(Interruptgrog1);
            else
                Talk(Interruptgrog2);
            me->RemoveAura(REVITALIZING_BREW_SKYCAP);
            me->SummonCreature(NpcRevitalizingBrew, GetRandomPositionAround(me, 3.0f, 5.0f), TEMPSUMMON_TIMED_DESPAWN, 15000);
        }
    }

    void JustDied(Unit* killer) override
    {
        Talk(Dead);
        events.Reset();
        me->RemoveAllAreaTriggers();
        me->GetScheduler().CancelAll();
        instance->SetBossState(DATA_BOSS_SKYCAPN_KRAGG, DONE);
        instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        
        if (Creature * sharkbait = me->FindNearestCreature(126841, 1000.0f))
        {
            sharkbait->AI()->DoAction(sharkbaitendcombat);
        }
    }

    void JustSummoned(Creature* summon) override
    {
        summons.Summon(summon);

        if (summon->GetEntry() == 126841)
        {
            summon->GetMotionMaster()->MovePoint(MovementPointMiddle, MiddlePos);
            summon->SetReactState(REACT_PASSIVE);
            summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        }

    }

    void DamageTaken(Unit* /*attacker*/, uint32 & damage) override
    {
        if (me->HealthWillBeBelowPctDamaged(75, damage) && phase == Mount)
        {
            Talk(Hp75);
            phase = Unmount;
            events.Reset();
            me->Dismount();
            me->CastSpell(me, SUMMON_SHARKBAIT, false);

            events.ScheduleEvent(Event_Azerite_Shot, 2000);
            events.ScheduleEvent(Event_Revitalizing_Brew, 15000);
        }
        
    }
    void UpdateAI(uint32 diff) override
    {
        events.Update(diff);

        if (!UpdateVictim())
            return;

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
                case Event_Pistol_Shot:
                    if (Unit * target = SelectTarget(SELECT_TARGET_RANDOM, 0.0, 0.0, true))
                    {
                        me->CastSpell(target, PISTOL_SHOT, false);
                    }
                    events.Repeat(2000);
                    break;
                case Event_Charrrrrge:
                    Talk(Charge);
                    if (Unit * target = SelectTarget(SELECT_TARGET_RANDOM, 0.0, 0.0, true))
                    {
                        me->SetReactState(REACT_PASSIVE);
                        me->AddUnitState(UNIT_STATE_CASTING);
                        me->CastSpell(target, CHARRRRRGE, false);
                    }
                    events.Repeat(8000);
                    break;
                case Event_Azerite_Shot:
                    if (urand(0, 1) == 1)
                        Talk(Azeriteshot1);
                    else
                        Talk(Azeriteshot2);
                    if (Unit * target = SelectTarget(SELECT_TARGET_RANDOM, 0.0, 0.0, true))
                    {
                        me->CastSpell(target, AZERITE_POWDER_SHOT, false);
                    }
                    events.Repeat(11000);
                    break;
                case Event_Revitalizing_Brew:
                    me->SetReactState(REACT_PASSIVE);
                    me->StopMoving();
                    me->CastSpell(me, REVITALIZING_BREW_SKYCAP, false);
                    events.Repeat(20000);
                    break;
            default:
                    break;
            }
        }
        DoMeleeAttackIfReady();
    }

private:
    Phases phase;
    EventMap events;
    InstanceScript* instance;
};

// 126841
struct npc_sharkbait : public ScriptedAI
{
    npc_sharkbait(Creature* creature) : ScriptedAI(creature)
    {
        m_Instance = creature->GetInstanceScript();
    }

    void MovementInform(uint32 type, uint32 pointId) override
    {
        if (type != POINT_MOTION_TYPE && type != EFFECT_MOTION_TYPE)
            return;

        switch (pointId)
        {
            case MovementPointMiddle:
            {
                if (!me->IsInCombat())
                    me->SetInCombatWithZone();
            
                events.Reset();
                events.ScheduleEvent(Event_Vile_Bombadment, 5000);
                //me->AI()->DoAction(sharkbaitfly);
                break;
            }
            case MovementPointEndPos1:
            {
                events.Reset();
                me->CastSpell(me, END_CONVERSATION, false);
                
                AddTimedDelayedOperation(8000, [this]() -> void
                    {
                        me->GetMotionMaster()->MovePoint(MovementPointEndPos2, EndPos2);
                        
                    });
                break;
            }
            case MovementPointEndPos2:
            { me->DespawnOrUnsummon(20000); }
        }
    }
    
    void DoAction(int32 action) override
    {
        if (sharkbaitfly)
        {
            // TO DO: loop para que se quede volando mientras dure el encuentro ya estan enumerados los puntos por sniff

        }
        if (sharkbaitendcombat)
        {
            me->GetMotionMaster()->MovePoint(MovementPointEndPos1, EndPos1);
        }

    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
                case Event_Vile_Bombadment:
                {
                    if (Unit * target = SelectTarget(SELECT_TARGET_RANDOM, 0.0, 0.0, true))
                        me->CastSpell(target, VILE_BOMBADMENT, false);
                
                    events.Repeat(5000);
                    break;
                }    
            }
        }
    }

private:
    InstanceScript* m_Instance;
};

/// 134021 - Revitalizing Brew
struct npc_revitalizing_brew : public ScriptedAI
{
    npc_revitalizing_brew(Creature* creature) : ScriptedAI(creature) { }

    void OnSpellClick(Unit* p_Clicker, bool& /*result*/) override
    {
        p_Clicker->CastSpell(p_Clicker, REVITALIZING_BREW_PLAYER, true);
        me->DespawnOrUnsummon();
    }
};

///Spell 256035 Vile Bombardment Areatriger ID 11912
struct at_vile_bombardment : AreaTriggerAI
{
    at_vile_bombardment(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit)
    {
        if (Player * player = unit->ToPlayer())
            if (!player->HasAura(VILE_COATING))
                player->CastSpell(player, VILE_COATING, true);
    }

    void OnUnitExit(Unit * unit)
    {
        unit->RemoveAurasDueToSpell(VILE_COATING);
    }
};

void AddSC_boss_skycapn_kragg()
{
    RegisterCreatureAI(boss_skycap_kragg);
    RegisterCreatureAI(npc_sharkbait);
    RegisterCreatureAI(npc_revitalizing_brew);
    ///Areatrigger
    RegisterAreaTriggerAI(at_vile_bombardment);
}

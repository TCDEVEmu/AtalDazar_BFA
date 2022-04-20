#include "freehold.h"
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

enum KraggSpells
{
    ///Rider SkyCap Kragg (Before Fight with Boss)
    VileBombadment         = 256005,
    VileCoating            = 256016,
    ///Boss SkyCap Kragg
    Charrrrrge             = 255952, /// With Mount 
    PistolShot             = 255966, /// With Mount 
    AzeritePowderShot      = 256106, /// Without Mount 
    RevitalizingBrewSkyCap = 256060, /// Without Mount
    RevitalizingBrewPlayer = 263297,
    ///Heroic
    Spell_DiveBomb         = 272046  ///Sharkbait will then charge across the arena in a straight line, dealing damage and knocking back all players in the path
};

enum KraggEvents
{
    EventVileBombadment = 1,
    EventChaaarrge,
    EventPistolShot,
    EventAzeritePowderShot,
    EventRevitalizingBrew,
    ///Heroic Event
    EventDiveBombs,
};

enum KraggDatas
{
    DataCharge,
    DataMountInCombat
};

enum KraggPhases
{
    PhaseMount,
    PhaseUnmount
};

enum KraggMovementPoint
{
    MovementPointMiddle,
    MovementPointEndPos1,
    MovementPointEndPos2,
    FlyP0 = 3, FlyP1, FlyP2, FlyP3, FlyP4, FlyP5, FlyP6, FlyP7, FlyP8, FlyP9, FlyP10, FlyP11, FlyP12, FlyP13, FlyP14, FlyP15,
    MovementPointDiveBomb,
    MovementPointDiveBombCasted,
    MovementPointReset
};



enum KraggTalk
{
    Aggro          = 0,
    Charge         = 1,
    Hp75           = 2,
    Interruptgrog1 = 3,
    Azeriteshot1   = 4,
    Azeriteshot2   = 5,
    Interruptgrog2 = 6,
    Dead           = 7,
    /*
    ? = 8, Well, looks like someone still ain\'t got their sea legs!
    ? = 9, Ah! Ye made me bilge on me own anchor!
    ? = 10 Avast, ye bilge suckers!
    */
};

enum action
{
    sharkbaitendcombat
};

Position const ResetPos  = { -1778.22f, -994.856f,    88.48f, 5.69468f };
Position const MiddlePos = { -1768.29f, -1009.25f,    110.0f, 0.418879f };
Position const EndPos1   = { -1763.66f, -1011.15f, 89.43428f, 0.0f };
Position const EndPos2   = { -1865.8f,  -829.222f,  133.511f, 0.0f };

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

///Todo Add damage on mechanic Dive Bombs, is necesary make  SPELL_EFFECT_254 is something related about charge effect and target front the trajectory 

Position GetRandomPositionAround(Unit* unit, float distMin, float distMax)
{
    double angle = rand_norm() * 2.0 * M_PI;
    float x = unit->GetPositionX() + (float)(frand(distMin, distMax) * std::sin(angle));
    float y = unit->GetPositionY() + (float)(frand(distMin, distMax) * std::cos(angle));
    float z = unit->GetPositionZ();
    unit->UpdateAllowedPositionZ(x, y, z);
    return { x, y, z };
}

///126832 - Skycap Kragg 
struct boss_skycap_kragg : public BossAI
{
    boss_skycap_kragg(Creature* creature) : BossAI(creature, DataSkycapKragg)
    {}

    void Reset() override
    {
        mountGUID.Clear();
        charge = false;
        phase = PhaseMount;
        me->ResetLootMode();
        events.Reset();
        summons.DespawnAll();
        me->RemoveAllAreaTriggers();
        me->SetReactState(REACT_AGGRESSIVE);

        if (instance)
        {
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            instance->SetBossState(DataSkycapKragg, NOT_STARTED);
        }

        if (!me->IsOnVehicle())
        {
            if (Creature* mount = me->SummonCreature(NpcSharkBaitBoss, me->GetPosition(), TEMPSUMMON_MANUAL_DESPAWN))
            {
                mountGUID = mount->GetGUID();
                me->EnterVehicle(mount);
                mount->AI()->SetData(DataMountInCombat, false);
                mount->GetThreatManager().ClearAllThreat();
            }
        }
    }

    void JustSummoned(Creature* summon) override
    {
        summons.Summon(summon);

        if (summon->GetEntry() == 126841)
        {
            summon->GetMotionMaster()->MovePoint(MovementPointReset, ResetPos);
            summon->SetReactState(REACT_PASSIVE);
            me->SetReactState(REACT_PASSIVE);
        }

    }

    void EnterEvadeMode(EvadeReason /*why*/) override
    {
        me->InterruptNonMeleeSpells(true);
        me->SetReactState(REACT_PASSIVE);
        me->GetThreatManager().ClearAllThreat();
        me->CombatStop();
        me->CastStop();
        me->GetMotionMaster()->Clear();
        me->GetMotionMaster()->MoveTargetedHome();
    }

    void JustReachedHome() override
    {
        _JustReachedHome();
        instance->SetBossState(DataSkycapKragg, FAIL);
        Reset();
    }

    void EnterCombat(Unit* /*who*/) override
    {
        Talk(Aggro);
        
        if (instance)
        {
            instance->SetBossState(DataSkycapKragg, IN_PROGRESS);
            instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me, 1);
        } 

        me->SetReactState(REACT_AGGRESSIVE);
        phase = PhaseMount;
        me->setActive(true);
        DoZoneInCombat();
        if (Creature* mount = ObjectAccessor::GetCreature(*me, mountGUID))
            mount->AI()->SetData(DataMountInCombat, true);

        events.ScheduleEvent(EventPistolShot, urand(3000, 5000));
        events.ScheduleEvent(EventChaaarrge, 4700);
    }

    void OnSpellCastInterrupt(SpellInfo const* spell)
    {
        if (spell->Id == RevitalizingBrewSkyCap)
        {
            if (urand(0, 1) == 1)
                Talk(Interruptgrog1);
            else
                Talk(Interruptgrog2);

            me->RemoveAura(RevitalizingBrewSkyCap);
            me->SummonCreature(NpcRevitalizingBrew, GetRandomPositionAround(me, 3.0f, 5.0f), TEMPSUMMON_TIMED_DESPAWN, 15000);
        }
    }

    void OnSpellFinished(SpellInfo const* spellInfo) override
    {
        if (spellInfo->Id == RevitalizingBrewSkyCap)
        {
            me->SetReactState(REACT_AGGRESSIVE);
        }
    }

    void JustDied(Unit* /*killer*/) override
    {
        DespawnRevitalizingBrew();
        events.Reset();
        me->RemoveAllAreaTriggers();
        Talk(Dead);
        if (instance)
        {
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            instance->SetBossState(DataSkycapKragg, DONE);
        }

        // not send doaction :(
        if (Creature* mount = ObjectAccessor::GetCreature(*me, mountGUID))
        {
            mount->AI()->DoAction(sharkbaitendcombat);
        }
    }

    void DamageTaken(Unit* /*attacker*/, uint32 & damage) override
    {
        if (me->HealthWillBeBelowPctDamaged(75, damage) && phase == PhaseMount)
        {
            phase = PhaseUnmount;
            Talk(Hp75);
            me->ExitVehicle();

            if (Creature* mount = ObjectAccessor::GetCreature(*me, mountGUID))
            {
                mount->SetReactState(REACT_PASSIVE);
                mount->GetMotionMaster()->MovePoint(MovementPointMiddle, MiddlePos);
            }

            events.Reset();

            events.CancelEvent(EventPistolShot);
            events.CancelEvent(EventChaaarrge);

            events.ScheduleEvent(EventAzeritePowderShot, 7300);
            events.ScheduleEvent(EventRevitalizingBrew, 20600);
        }
    }

    void SetData(uint32 id, uint32 value)
    {
        if (id == DataCharge)
            charge = value;
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        events.Update(diff);

        while (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EventChaaarrge:
                {
                    if (Creature* mount = ObjectAccessor::GetCreature(*me, mountGUID))
                    {
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 50.0f, true))
                        {
                            Talk(Charge);
                            charge = true;
                            mount->StopMoving();
                            mount->SetReactState(REACT_PASSIVE);
                            mount->CastSpell(target, Charrrrrge, false);
                        }
                    }
                
                    events.Repeat(8400); 
                    break;
                }
                case EventPistolShot:
                {
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true))
                        me->CastSpell(target, PistolShot, false);
                
                    events.Repeat(urand(3000, 5000));
                    break;
                }
                case EventAzeritePowderShot:
                {
                    if (urand(0, 1) == 1)
                        Talk(Azeriteshot1);
                    else
                        Talk(Azeriteshot2);
                
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true))
                        me->CastSpell(target, AzeritePowderShot, false);
                
                    events.Repeat(10800);
                    break;
                }
                case EventRevitalizingBrew:
                {
                    me->SetReactState(REACT_PASSIVE);
                    me->StopMoving();
                    me->CastSpell(me, RevitalizingBrewSkyCap, false);
                
                    events.Repeat(20600); 
                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
        CheckHomeDistToEvade(diff, 40.0f);

    }

private:
    ObjectGuid mountGUID;
    KraggPhases phase;
    bool charge;

    void DespawnRevitalizingBrew()
    {
        // Despawn RevitalizingBrew npcs
        std::list<Creature*> RevitalizingBrew;
        me->GetCreatureListWithEntryInGrid(RevitalizingBrew, NpcRevitalizingBrew, 200.0f);
        if (!RevitalizingBrew.empty())
        {
            for (auto itr : RevitalizingBrew)
            {
                itr->DespawnOrUnsummon();
            }
        }
    }
};

/// 129743, 126841 - Shark Bait
struct npc_sharkbait : public ScriptedAI
{
    npc_sharkbait(Creature* creature) : ScriptedAI(creature)
    {
        DiveBomb = false;
        InCombat = false;
        m_Instance = creature->GetInstanceScript();
    }

    void JustReachedHome() override
    {
        me->GetMotionMaster()->MovePoint(MovementPointReset, ResetPos);
        me->SetReactState(REACT_PASSIVE);
        if (Creature* kragg = m_Instance->instance->GetCreature(m_Instance->GetGuidData(NpcSkycapKragg)))
            kragg->SetReactState(REACT_PASSIVE);
    }

    void SetData(uint32 id, uint32 value)
    {
        if (id == DataMountInCombat)
            InCombat = value;
    }
    
    void DoAction(int32 action) override
    {
        if (sharkbaitendcombat)
        {
            fly = false;
            me->GetThreatManager().ClearAllThreat();
            me->CombatStop();
            me->SetReactState(REACT_PASSIVE);
            me->GetMotionMaster()->MovePoint(MovementPointEndPos1, EndPos1);
        }
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
                me->GetMotionMaster()->MovePoint(FlyP0, CombatPos[0]);
                fly = true;
                events.ScheduleEvent(EventVileBombadment, 6200);
                if (IsHeroic())
                    events.ScheduleEvent(EventDiveBombs, 17700);
                break;
            }
            case FlyP0:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP1, CombatPos[1]);
                break;
            case FlyP1:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP2, CombatPos[2]);
                break;
            case FlyP2:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP3, CombatPos[3]);
                break;
            case FlyP3:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP4, CombatPos[4]);
                break;
            case FlyP4:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP5, CombatPos[5]);
                break;
            case FlyP5:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP6, CombatPos[6]);
                break;
            case FlyP6:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP7, CombatPos[7]);
                break;
            case FlyP7:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP8, CombatPos[8]);
                break;
            case FlyP8:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP9, CombatPos[9]);
                break;
            case FlyP9:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP10, CombatPos[10]);
                break;
            case FlyP10:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP11, CombatPos[11]);
                break;
            case FlyP11:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP12, CombatPos[12]);
                break;
            case FlyP12:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP13, CombatPos[13]);
                break;
            case FlyP13:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP14, CombatPos[14]);
                break;
            case FlyP14:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP15, CombatPos[15]);
                break;
            case FlyP15:
                if (fly == true)
                    me->GetMotionMaster()->MovePoint(FlyP0, CombatPos[0]);
                break;
            case MovementPointEndPos1:
            {
                events.Reset();
            
                m_Instance->DoPlayConversation(6422);
            
                AddTimedDelayedOperation(8000, [this]() -> void
                    {
                        me->GetMotionMaster()->MovePoint(MovementPointEndPos2, EndPos2);
            
                    });
                break;
            }
            case MovementPointEndPos2:
            {
                me->DespawnOrUnsummon(1);
            }
            
            
            case MovementPointDiveBomb:
            {
                DiveBomb = true;
                me->CastSpell(me, Spell_DiveBomb, false);
                break;
            }
            case MovementPointDiveBombCasted:
            {
                events.Reset();
                DiveBomb = false;
                me->GetMotionMaster()->MovePoint(MovementPointMiddle, MiddlePos);
                break;
            }
            case MovementPointReset:
            {
                me->SetReactState(REACT_AGGRESSIVE);
                me->SetFacingTo(5.69468f);
                break;
            }
        }
    }

    void UpdateAI(uint32 diff) override
    {
        if ((!UpdateVictim() && InCombat) || DiveBomb)
            return;

        events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EventVileBombadment:
                {
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0.0, 0.0f, true))
                        me->CastSpell(target, VileBombadment, false);
                
                    events.Repeat(5900);
                    break;
                }
                case EventDiveBombs:
                {
                    if (Creature* kragg = m_Instance->instance->GetCreature(m_Instance->GetGuidData(NpcSkycapKragg)))
                        //kragg->AI()->Talk(TalkDiveBomb);
                
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0.0, 0.0f, true))
                        me->GetMotionMaster()->MovePoint(MovementPointDiveBomb, GetRandomPositionAround(target, 10.0f, 15.0f));
                
                    events.Repeat(17000);
                    break;
                }
            }
        }
    }

private:
    bool fly = false;
    bool DiveBomb;
    bool InCombat;
    InstanceScript* m_Instance;
};

/// 134021 - Revitalizing Brew
struct npc_revitalizing_brew : public ScriptedAI
{
    npc_revitalizing_brew(Creature* creature) : ScriptedAI(creature) { }

    void OnSpellClick(Unit* p_Clicker, bool& /*result*/) override
    {
        p_Clicker->CastSpell(p_Clicker, RevitalizingBrewPlayer, true);
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
            if (!player->HasAura(VileCoating))
                player->CastSpell(player, VileCoating, true);
    }

    void OnUnitExit(Unit* unit)
    {
        unit->RemoveAurasDueToSpell(VileCoating);
    }
};

///272046 Dive Bomb
class spell_dive_bomb : public SpellScript
{
    PrepareSpellScript(spell_dive_bomb);

    void HandleOnCast()
    {
        if (Unit* caster = GetCaster())
        {
            if (caster->IsCreature())
            {
                if (Unit* target = caster->ToCreature()->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0.0, 0.0f, true))
                {
                    Position ChargePosition;
                    GetPositionWithDistInOrientation(target, 10.0f, caster->GetAngle(target), ChargePosition);
                    caster->GetMotionMaster()->MoveCharge(ChargePosition.GetPositionX(), ChargePosition.GetPositionY(), ChargePosition.GetPositionZ(), 20.0f, MovementPointDiveBombCasted);
                }
            }
        }
    }

    void Register() override
    {
        OnCast += SpellCastFn(spell_dive_bomb::HandleOnCast);
    }
};

void AddSC_boss_skycapn_kragg()
{
    ///Craeture
    RegisterCreatureAI(boss_skycap_kragg);
    RegisterCreatureAI(npc_sharkbait);
    RegisterCreatureAI(npc_revitalizing_brew);
    ///Areatrigger
    RegisterAreaTriggerAI(at_vile_bombardment);
    ///Spell
    RegisterSpellScript(spell_dive_bomb);
}

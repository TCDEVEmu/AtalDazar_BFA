/*
ZandalarCore
 MistiX
 */

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
    VileBombadment = 256005,
    VileCoating    = 256016,
    ///Boss SkyCap Kragg
    Charrrrrge     = 255952, /// With Mount 
    PistolShot     = 255966, /// With Mount 
    AzeritePowderShot = 256106, /// Without Mount 
    RevitalizingBrewSkyCap = 256060, /// Without Mount
    RevitalizingBrewPlayer = 263297,
    ///Heroic
    DiveBomb = 272046  ///Sharkbait will then charge across the arena in a straight line, dealing damage and knocking back all players in the path
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
    MovementPointDiveBomb,
    MovementPointDiveBombCasted
};

enum KraggTalk
{
    TalkAggro1 = 0,
    TalkUnmount = 1,
    TalkAzeritePowderShot1 = 2,
    TalkDead = 5,
    TalkAggro2 = 6,
    TalkAzeritePowderShot2 = 7,
    TalkDiveBomb = 8
};

Position const MiddlePos = { -1768.29f, -1009.25f, 110.0f, 0.418879f };

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
        checkTimer = 1000;
        fightStarted = false;
        charge = false;
        resetFight = true;
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
            if (Creature * mount = me->SummonCreature(NpcSharkBaitBoss, me->GetPosition(), TEMPSUMMON_MANUAL_DESPAWN))
            {
                mountGUID = mount->GetGUID();
                me->EnterVehicle(mount);
                mount->AI()->SetData(DataMountInCombat, false);
                mount->GetThreatManager().ClearAllThreat();
            }
        }
    }

    void EnterEvadeMode(EvadeReason /*why*/) override
    {
        if (fightStarted)
        {
            fightStarted = false;
            me->InterruptNonMeleeSpells(true);
            me->SetReactState(REACT_PASSIVE);
            me->GetThreatManager().ClearAllThreat();
            me->CombatStop();
            me->CastStop();
            me->GetMotionMaster()->Clear();
            me->GetMotionMaster()->MoveTargetedHome();
        }
    }

    void JustReachedHome() override
    {
        _JustReachedHome();
        instance->SetBossState(DataSkycapKragg, FAIL);
        Reset();
    }

    void EnterCombat(Unit* /*who*/) override
    {
        if (instance)
        {
            // bosses do not respawn, check only on enter combat
            if (!instance->CheckRequiredBosses(me->GetEntry()))
            {
                EnterEvadeMode(EVADE_REASON_SEQUENCE_BREAK);
                return;
            }
            instance->SetBossState(DataSkycapKragg, IN_PROGRESS);
            instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me, 1);
        }

        if (urand(0, 1) == 1)
            Talk(TalkAggro1);
        else
            Talk(TalkAggro2);

        me->SetReactState(REACT_AGGRESSIVE);
        phase = PhaseMount;
        me->setActive(true);
        DoZoneInCombat();
        fightStarted = true;
        if (Creature * mount = ObjectAccessor::GetCreature(*me, mountGUID))
            mount->AI()->SetData(DataMountInCombat, true);

        events.ScheduleEvent(EventPistolShot, urand(3000, 5000));
        events.ScheduleEvent(EventChaaarrge, 8000);
    }

    void OnSpellCastInterrupt(SpellInfo const* spell)
    {
        if (spell->Id == RevitalizingBrewSkyCap)
        {
            me->RemoveAura(RevitalizingBrewSkyCap);
            me->SummonCreature(NpcRevitalizingBrew, GetRandomPositionAround(me, 3.0f, 5.0f), TEMPSUMMON_TIMED_DESPAWN, 15000);
        }
    }

    void JustDied(Unit* /*killer*/) override
    {
        _JustDied();
        Talk(TalkDead);
        if (instance)
            instance->SetBossState(DataSkycapKragg, DONE);
    }

    void DamageTaken(Unit* /*attacker*/, uint32 & damage) override
    {
        if (me->HealthWillBeBelowPctDamaged(75, damage) && phase == PhaseMount)
        {
            phase = PhaseUnmount;
            Talk(TalkUnmount);
            me->ExitVehicle();

            if (Creature * mount = ObjectAccessor::GetCreature(*me, mountGUID))
            {
                mount->SetReactState(REACT_PASSIVE);
                mount->GetMotionMaster()->MovePoint(MovementPointMiddle, MiddlePos);
            }

            events.Reset();

            events.ScheduleEvent(EventAzeritePowderShot, 2000);
            events.ScheduleEvent(EventRevitalizingBrew, 15000);
        }
    }

    void SetData(uint32 id, uint32 value)
    {
        if (id == DataCharge)
            charge = value;
    }

    void UpdateAI(uint32 diff) override
    {
        if (fightStarted)
        {
            if (checkTimer <= diff)
            {
                // Retrieving targets
                Map::PlayerList const& PlayerList = me->GetMap()->GetPlayers();
                if (!PlayerList.isEmpty())
                {
                    for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                    {
                        Player* player = i->GetSource();
                        if (player->IsAlive())
                        {
                            resetFight = false;
                            break;
                        }
                        else
                            resetFight = true;
                    }
                }

                if (resetFight)
                    EnterEvadeMode(EVADE_REASON_NO_HOSTILES);

                checkTimer = 1000;
            }
            else
                checkTimer -= diff;
        }

        if (!UpdateVictim() && fightStarted)
            return;

        events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EventChaaarrge:
            {
                if (Creature * mount = ObjectAccessor::GetCreature(*me, mountGUID))
                {
                    if (Unit * target = SelectTarget(SELECT_TARGET_RANDOM, 0, 50.0f, true))
                    {
                        charge = true;
                        mount->StopMoving();
                        mount->SetReactState(REACT_PASSIVE);
                        mount->CastSpell(target, Charrrrrge, false);
                    }
                }

                events.Repeat(8000);
                break;
            }
            case EventPistolShot:
            {
                if (Unit * target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true))
                    me->CastSpell(target, PistolShot, false);

                events.Repeat(8000);
                break;
            }
            case EventAzeritePowderShot:
            {
                if (urand(0, 1) == 1)
                    Talk(TalkAzeritePowderShot1);
                else
                    Talk(TalkAzeritePowderShot1);

                if (Unit * target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true))
                    me->CastSpell(target, AzeritePowderShot, false);

                events.Repeat(8000);
                break;
            }
            case EventRevitalizingBrew:
            {
                me->CastSpell(me, RevitalizingBrewSkyCap, false);

                events.Repeat(15000);
                break;
            }
            }
        }

        DoMeleeAttackIfReady();

    }

private:
    ObjectGuid mountGUID;
    KraggPhases phase;
    bool fightStarted;
    bool resetFight;
    bool charge;
    uint32 checkTimer;
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
        if (Creature * kragg = m_Instance->instance->GetCreature(m_Instance->GetGuidData(FreeholdCreature::NpcSkycapKragg)))
        {
            kragg->ExitVehicle();
            kragg->AI()->EnterEvadeMode(EVADE_REASON_NO_HOSTILES);
        }

        me->DespawnOrUnsummon();
    }

    void SetData(uint32 id, uint32 value)
    {
        if (id == DataMountInCombat)
            InCombat = value;
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
            events.ScheduleEvent(EventVileBombadment, 5000);
            if (IsHeroic())
                events.ScheduleEvent(EventDiveBombs, 17000);
            break;
        }
        case MovementPointDiveBomb:
        {
            DiveBomb = true;
            me->CastSpell(me, DiveBomb, false);
            break;
        }
        case MovementPointDiveBombCasted:
        {
            events.Reset();
            DiveBomb = false;
            me->GetMotionMaster()->MovePoint(MovementPointMiddle, MiddlePos);
            break;
        }
        case EVENT_JUMP:
            me->SetReactState(REACT_AGGRESSIVE);
            if (Creature * kragg = m_Instance->instance->GetCreature(m_Instance->GetGuidData(FreeholdCreature::NpcSkycapKragg)))
                kragg->AI()->SetData(DataCharge, false);
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
                if (Unit * target = SelectTarget(SELECT_TARGET_RANDOM, 0.0, 0.0f, true))
                    me->CastSpell(target, VileBombadment, false);

                events.Repeat(5000);
                break;
            }
            case KraggEvents::EventDiveBombs:
            {
                if (Creature * kragg = m_Instance->instance->GetCreature(m_Instance->GetGuidData(FreeholdCreature::NpcSkycapKragg)))
                    kragg->AI()->Talk(TalkDiveBomb);

                if (Unit * target = SelectTarget(SELECT_TARGET_RANDOM, 0.0, 0.0f, true))
                    me->GetMotionMaster()->MovePoint(MovementPointDiveBomb, GetRandomPositionAround(target, 10.0f, 15.0f));
                break;
            }
            }
        }
    }

private:
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

    void OnUnitExit(Unit * unit)
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
        if (Unit * caster = GetCaster())
        {
            if (caster->IsCreature())
            {
                if (Unit * target = caster->ToCreature()->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0.0, 0.0f, true))
                {
                    Position ChargePosition;
                    GetPositionWithDistInOrientation(target, 10.0f, caster->GetAngle(target), ChargePosition);
                    caster->GetMotionMaster()->MoveCharge(ChargePosition.GetPositionX(), ChargePosition.GetPositionY(), ChargePosition.GetPositionZ(), 20.0f, KraggMovementPoint::MovementPointDiveBombCasted);
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

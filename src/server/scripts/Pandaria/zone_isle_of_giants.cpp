#include "ScriptMgr.h"
#include "ScriptedCreature.h"

enum Spells
{
    SPELL_CRUSH              = 138765,
    SPELL_SKYCALL            = 138817,
    SPELL_DINO_MENDING       = 138770,
    SPELL_DINO_FORM          = 138771,
    SPELL_TRIPPLE_PUNCTURE   = 138768,
    SPELL_TRIHORN_CHARGE     = 138769,
    SPELL_TRIHORN_CHARGE_EFF = 138777,
    SPELL_DOUBLE_SWIPE       = 138772,
};

enum Events
{
    EVENT_CRUSH = 1,
    EVENT_SKYCALL,
    EVENT_DINO_MENDING,
    EVENT_TRIPPLE_PUNCTURE,
    EVENT_TRIHORN_CHARGE,
    EVENT_DOUBLE_SWIPE,
};

// Young Primal Devilsaur 70005
struct npc_young_primal_devilsaur : public ScriptedAI
{
    npc_young_primal_devilsaur(Creature* creature) : ScriptedAI(creature) { }

    void Reset() override
    {
        events.Reset();
        me->SetCombatDistance(5.0f);
    }

    void EnterCombat(Unit* /*who*/) override
    {
        me->SetCombatDistance(220.0f);
        events.ScheduleEvent(EVENT_SKYCALL, urand(3.5 * IN_MILLISECONDS, 6 * IN_MILLISECONDS));
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
                case EVENT_SKYCALL:
                {
                    me->CastSpell(me->GetVictim(), SPELL_SKYCALL, true);
                    events.ScheduleEvent(EVENT_SKYCALL, urand(7 * IN_MILLISECONDS, 13 * IN_MILLISECONDS));
                    break;
                }
            }
            break;
        }

        DoMeleeAttackIfReady();
    }
};

// Pterrorwing Skyscreamer 70020
struct npc_pterrorwing_skyscreamer : public ScriptedAI
{
    npc_pterrorwing_skyscreamer(Creature* creature) : ScriptedAI(creature) { }

    void Reset() override
    {
        events.Reset();
        me->SetCombatDistance(5.0f);
    }

    void EnterCombat(Unit* /*who*/) override
    {
        me->SetCombatDistance(220.0f);
        events.ScheduleEvent(EVENT_CRUSH, 2.5 * IN_MILLISECONDS);
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
                case EVENT_CRUSH:
                {
                    me->CastSpell(me->GetVictim(), SPELL_CRUSH, true);
                    events.ScheduleEvent(EVENT_CRUSH, urand(4.5 * IN_MILLISECONDS, 9 * IN_MILLISECONDS));
                    break;
                }
            }
            break;
        }

        DoMeleeAttackIfReady();
    }
};

// Zandalari Dinomancer 69925
struct npc_zandalari_dinomancer_2 : public ScriptedAI
{
    npc_zandalari_dinomancer_2(Creature* creature) : ScriptedAI(creature) { }

    bool hasTriggered;

    void Reset() override
    {
        hasTriggered = false;
        events.Reset();
        me->RemoveAurasDueToSpell(SPELL_DINO_FORM);
        me->SetCombatDistance(5.0f);
    }

    void EnterCombat(Unit* /*who*/) override
    {
        me->SetCombatDistance(220.0f);
        events.ScheduleEvent(EVENT_DINO_MENDING, 8.5 * IN_MILLISECONDS);
    }

    void DamageTaken(Unit* attacker, uint32& damage) override
    {
        if (HealthBelowPct(60) && !hasTriggered && !me->HasUnitState(UNIT_STATE_CASTING))
        {
            hasTriggered = true;
            DoCast(me, SPELL_DINO_FORM, true);
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
                case EVENT_DINO_MENDING:
                {
                    me->CastSpell(me, SPELL_DINO_MENDING, true);
                    events.ScheduleEvent(EVENT_DINO_MENDING, urand(10.5 * IN_MILLISECONDS, 14.3 * IN_MILLISECONDS));
                    break;
                }
            }
            break;
        }

        DoMeleeAttackIfReady();
    }
};

// Primal Direhorn Hatchling 70014
struct npc_primal_direhorn_hatchling : public ScriptedAI
{
    npc_primal_direhorn_hatchling(Creature* creature) : ScriptedAI(creature) { }

    void Reset() override
    {
        events.Reset();
        me->SetCombatDistance(5.0f);
    }

    void EnterCombat(Unit* /*who*/) override
    {
        me->SetCombatDistance(220.0f);
        events.ScheduleEvent(EVENT_TRIPPLE_PUNCTURE, 3 * IN_MILLISECONDS);
        events.ScheduleEvent(EVENT_TRIHORN_CHARGE, 8 * IN_MILLISECONDS);
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
                case EVENT_TRIPPLE_PUNCTURE:
                {
                    me->CastSpell(me->GetVictim(), SPELL_TRIPPLE_PUNCTURE, true);
                    events.ScheduleEvent(EVENT_TRIPPLE_PUNCTURE, urand(8.5 * IN_MILLISECONDS, 15 * IN_MILLISECONDS));
                    break;
                }
                case EVENT_TRIHORN_CHARGE:
                {
                    me->CastSpell(me->GetVictim(), SPELL_TRIHORN_CHARGE, true);
                    events.ScheduleEvent(EVENT_TRIHORN_CHARGE, urand(12 * IN_MILLISECONDS, 25 * IN_MILLISECONDS));
                    break;
                }
            }
            break;
        }

        DoMeleeAttackIfReady();
    }
};

// Primal Direhorn 70018
struct npc_primal_direhorn : public ScriptedAI
{
    npc_primal_direhorn(Creature* creature) : ScriptedAI(creature) { }

    void Reset() override
    {
        events.Reset();
        me->SetCombatDistance(5.0f);
    }

    void EnterCombat(Unit* /*who*/) override
    {
        me->SetCombatDistance(220.0f);
        events.ScheduleEvent(EVENT_TRIPPLE_PUNCTURE, 3 * IN_MILLISECONDS);
        events.ScheduleEvent(EVENT_TRIHORN_CHARGE, 8 * IN_MILLISECONDS);
        events.ScheduleEvent(EVENT_DOUBLE_SWIPE, 6 * IN_MILLISECONDS);
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
                case EVENT_TRIPPLE_PUNCTURE:
                {
                    me->CastSpell(me->GetVictim(), SPELL_TRIPPLE_PUNCTURE, true);
                    events.ScheduleEvent(EVENT_TRIPPLE_PUNCTURE, urand(8.5 * IN_MILLISECONDS, 15 * IN_MILLISECONDS));
                    break;
                }
                case SPELL_TRIHORN_CHARGE:
                {
                    me->CastSpell(me->GetVictim(), SPELL_TRIHORN_CHARGE, true);
                    events.ScheduleEvent(SPELL_TRIHORN_CHARGE, urand(15 * IN_MILLISECONDS, 25 * IN_MILLISECONDS));
                    break;
                }
                case EVENT_DOUBLE_SWIPE:
                {
                    me->CastSpell(me, SPELL_DOUBLE_SWIPE, true);
                    events.ScheduleEvent(EVENT_DOUBLE_SWIPE, urand(12 * IN_MILLISECONDS, 14 * IN_MILLISECONDS));
                    break;
                }
            }
            break;
        }

        DoMeleeAttackIfReady();
    }
};

// Trihorn Charge 138769
class spell_trihorn_charge : public SpellScript
{
    PrepareSpellScript(spell_trihorn_charge);

    void HandleEffectHitTarget(SpellEffIndex /*eff_idx*/)
    {
        if (Unit* caster = GetCaster())
            if (Unit* target = GetHitUnit())
                caster->CastSpell(target, SPELL_TRIHORN_CHARGE_EFF, true);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_trihorn_charge::HandleEffectHitTarget, EFFECT_0, SPELL_EFFECT_CHARGE);
    }
};

void AddSC_isle_of_giants()
{
    RegisterCreatureAI(npc_young_primal_devilsaur);
    RegisterCreatureAI(npc_pterrorwing_skyscreamer);
    RegisterCreatureAI(npc_zandalari_dinomancer_2);
    RegisterCreatureAI(npc_primal_direhorn_hatchling);
    RegisterCreatureAI(npc_primal_direhorn);

    RegisterSpellScript(spell_trihorn_charge);
}

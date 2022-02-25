#include "ScriptMgr.h"
#include "Spell.h"
#include "ScriptedCreature.h"
#include "Unit.h"
#include "ScriptedGossip.h"

enum WekemaraSpells
{
    SPELL_BIOELECTRIC_BLAST  = 303319,
    SPELL_ELECTRIC_DISCHARGE = 303451,
    SPELL_ELECTRIFIED_GROUND = 303324,
    SPELL_MEERAHS_JUKEBOX    = 288865,
    SPELL_SHOKBURST          = 303491,
    SPELL_SHOKBURST_2        = 303488,
    SPELL_SPIT               = 303332,
};

enum WekemaraEvents
{
   EVENT_1,
   EVENT_2,
   EVENT_3,
};

enum Talk
{
   TALK_AGRO
};

enum WekemaraDATA
{
    DATA_WEKEMARA
};

//
struct boss_Wekemara : public BossAI
{
    boss_Wekemara(Creature* creature) : BossAI(creature, DATA_WEKEMARA) { }

    void InitializeAI() override
    {
        BossAI::InitializeAI();
    }

    void Reset() override
    {
        BossAI::Reset();
        summons.DespawnAll();
    }

    void EnterCombat(Unit* /*who*/) override
    {
        Talk(TALK_AGRO);
        _EnterCombat();

        events.ScheduleEvent(EVENT_1, Seconds(8));
        events.ScheduleEvent(EVENT_2, Seconds(15));
        events.ScheduleEvent(EVENT_3, Seconds(20));
    }

    void JustDied(Unit* killer) override
    {
        BossAI::JustDied(killer);
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = events.ExecuteEvent())

        switch (eventId)
        {
        case EVENT_1:
        {
            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 100.0f, true))
                me->CastSpell(target, SPELL_ELECTRIC_DISCHARGE);
            DoCastVictim(SPELL_ELECTRIC_DISCHARGE);
            break;
        }
        case EVENT_2:
            DoCastVictim(SPELL_ELECTRIFIED_GROUND);
            DoCastVictim(SPELL_MEERAHS_JUKEBOX);
            events.ScheduleEvent(EVENT_2, Seconds(8));
            break;
        case EVENT_3:
            DoCastVictim(SPELL_SHOKBURST_2);
            DoCastVictim(SPELL_SPIT);
            break;
        }
        DoMeleeAttackIfReady();
    }   
};

void AddSC_boss_Wekemara()
{
    RegisterCreatureAI(boss_Wekemara);
    
}

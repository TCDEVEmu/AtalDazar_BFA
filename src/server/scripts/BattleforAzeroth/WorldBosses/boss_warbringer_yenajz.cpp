#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellAuras.h"
#include "SpellScript.h"

enum Says
{
    SAY_AGGRO = 0,
    SAY_DEATH = 1
};

enum Events
{
    EVENT_ENDLESS_ABYSS = 1,
    EVENT_REALITY_TEAR  = 2,
    EVENT_VOID_NOVA     = 3,
};

enum Spells
{
    SPELL_ENDLESS_ABYSS = 274932,
    SPELL_REALITY_TEAR  = 274904,
    SPELL_VOID_NOVA     = 274842,
};

enum data
{
    DATA_WARBRINGER_YENAJZ,
};

struct boss_warbringer_yenajz : public BossAI
{
    boss_warbringer_yenajz(Creature* creature) : BossAI(creature, DATA_WARBRINGER_YENAJZ) { }

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
        Talk(SAY_AGGRO);
        _EnterCombat();

        events.ScheduleEvent(EVENT_ENDLESS_ABYSS, Seconds(10));
        events.ScheduleEvent(EVENT_REALITY_TEAR, Seconds(20));
        events.ScheduleEvent(EVENT_VOID_NOVA, Seconds(30));
    }

    void JustDied(Unit* killer) override
    {
        Talk(SAY_DEATH);
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
        {
            switch (eventId)
            {
            case EVENT_ENDLESS_ABYSS:
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 100.0f, true))
                DoCast(target, SPELL_ENDLESS_ABYSS, true);
                events.Repeat(Seconds(15), Seconds(35));
                break;
            }
            case EVENT_REALITY_TEAR:
            {
                DoCast(SPELL_REALITY_TEAR);
                events.ScheduleEvent(EVENT_REALITY_TEAR, Seconds(20));
                break;
            }
            case EVENT_VOID_NOVA:
            {
                DoCast(SPELL_VOID_NOVA);
                events.ScheduleEvent(EVENT_VOID_NOVA, Seconds(30));
                break;
            }
            default:
                break;
            }
        }

        DoMeleeAttackIfReady();
    }
};

void AddSC_boss_warbringer_yenajz()
{
    RegisterCreatureAI(boss_warbringer_yenajz);
}


#include "ScriptMgr.h"
#include "CombatAI.h"
#include "Creature.h"
#include "CreatureAI.h"
#include "Spell.h"
#include "SpellAuras.h"

enum Spells
{
    SPELL_HAILSTONE_GLACIAL_BREATH         = 274892,
    SPELL_HAILSTONE_GLACIAL_BREATH_2       = 274891,
    SPELL_HAILSTONE_FREEZING_TEMPEST       = 274895,
    SPELL_HAILSTONE_ICE_RIMED_FIST         = 274888,
    SPELL_HAILSTONE_PERMAFROST_SPIKE       = 274896,
    SPELL_HAILSTONE_INQUISITORS_VIGOR      = 276880,
};
enum data
{
    DATA_HAILSTONE_CONSTRUCT,
};

//140252
struct boss_Hailstone_construct : public BossAI
{
    boss_Hailstone_construct(Creature* creature) : BossAI(creature, DATA_HAILSTONE_CONSTRUCT) {}

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
        _EnterCombat();

        events.ScheduleEvent(SPELL_HAILSTONE_GLACIAL_BREATH, Seconds(8));
        events.ScheduleEvent(SPELL_HAILSTONE_GLACIAL_BREATH_2, Seconds(10));
        events.ScheduleEvent(SPELL_HAILSTONE_FREEZING_TEMPEST, Seconds(20));
        events.ScheduleEvent(SPELL_HAILSTONE_ICE_RIMED_FIST, Seconds(15));
        events.ScheduleEvent(SPELL_HAILSTONE_PERMAFROST_SPIKE, Seconds(18));
        events.ScheduleEvent(SPELL_HAILSTONE_INQUISITORS_VIGOR, Seconds(25));
    }

    void ExecuteEvent(uint32 eventId) override
    {
        switch (eventId)
        {
        case SPELL_HAILSTONE_GLACIAL_BREATH:
            DoCastAOE(SPELL_HAILSTONE_GLACIAL_BREATH);
            events.Repeat(15s);
            break;
        case SPELL_HAILSTONE_GLACIAL_BREATH_2:
            if (SelectTarget(SELECT_TARGET_RANDOM, 0, BehindTargetSelector(me)))
            {
                DoCastAOE(SPELL_HAILSTONE_GLACIAL_BREATH_2);
                events.Repeat(25s);
            }
            else
                events.Repeat(10s);
            break;
        case SPELL_HAILSTONE_FREEZING_TEMPEST:
            DoCastAOE(SPELL_HAILSTONE_FREEZING_TEMPEST);
            events.Repeat(30s);
            break;
        case SPELL_HAILSTONE_ICE_RIMED_FIST:
            DoCastAOE(SPELL_HAILSTONE_ICE_RIMED_FIST);
            events.Repeat(25s);
            break;
        case SPELL_HAILSTONE_PERMAFROST_SPIKE:
            DoCastAOE(SPELL_HAILSTONE_PERMAFROST_SPIKE);
            events.Repeat(28s);
            break;
        case SPELL_HAILSTONE_INQUISITORS_VIGOR:
             DoCastSelf(SPELL_HAILSTONE_INQUISITORS_VIGOR);
             events.Repeat(28s);
        }
    }
};

void AddSC_boss_Hailstone_construct()
{
    RegisterCreatureAI(boss_Hailstone_construct);
}

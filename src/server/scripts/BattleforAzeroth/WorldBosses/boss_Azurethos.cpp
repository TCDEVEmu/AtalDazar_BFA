#include "ScriptMgr.h"
#include "CombatAI.h"
#include "Creature.h"
#include "CreatureAI.h"
#include "Spell.h"
#include "SpellAuras.h"

enum Spells
{
    SPELL_AZURETHOS_FURY   = 274840,
    SPELL_AZURETHOS_FURY_2 = 274839,
    SPELL_GALE_FORCE       = 274829,
    SPELL_GALE_FORCE_2     = 274822,
    SPELL_WING_BUFFET      = 274832,
};
enum data
{
    DATA_AZURETHOS,
};

// 136385
struct boss_Azurethos : public BossAI
{
    boss_Azurethos(Creature* creature) : BossAI(creature, DATA_AZURETHOS) {}

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

        events.ScheduleEvent(SPELL_AZURETHOS_FURY, Seconds(10));
        events.ScheduleEvent(SPELL_AZURETHOS_FURY_2, Seconds(20));
        events.ScheduleEvent(SPELL_GALE_FORCE, Seconds(30));
        events.ScheduleEvent(SPELL_GALE_FORCE_2, Seconds(25));
        events.ScheduleEvent(SPELL_WING_BUFFET, Seconds(28));
    }

    void ExecuteEvent(uint32 eventId) override
    {
        switch (eventId)
        {
        case SPELL_AZURETHOS_FURY:
            DoCastAOE(SPELL_AZURETHOS_FURY);
            events.Repeat(15s);
            break;
        case SPELL_AZURETHOS_FURY_2:
            if (SelectTarget(SELECT_TARGET_RANDOM, 0, BehindTargetSelector(me)))
            {
                DoCastAOE(SPELL_AZURETHOS_FURY_2);
                events.Repeat(25s);
            }
            else
                events.Repeat(10s);
            break;
        case SPELL_GALE_FORCE:
            DoCastAOE(SPELL_GALE_FORCE);
            events.Repeat(30s);
            break;
        case SPELL_GALE_FORCE_2:
            DoCastAOE(SPELL_GALE_FORCE_2);
            events.Repeat(25s);
            break;
        case SPELL_WING_BUFFET:
            DoCastAOE(SPELL_WING_BUFFET);
            events.Repeat(28s);
            break;
        }
    }
};

void AddSC_boss_Azurethos()
{
    RegisterCreatureAI(boss_Azurethos);
}

/*
 * Copyright (C) 2017-2019 AshamaneProject <https://github.com/AshamaneProject>
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
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "SpellScript.h"
#include "SpellAuras.h"
#include "SpellAuraEffects.h"
#include "ScriptMgr.h"
#include "waycrest_manor.h"

enum gorakSpells : uint32
{
    SPELL_DARKENED_LIGHTHING         = 266225,
    SPELL_DREAD_ESSENCE              = 266181,
    SPELL_SUMMON_DEATHTOUCHED_SLAVER = 266266,
};

enum gorakTalks : uint8
{
    TALK_AGGRO = 0,
    TALK_DEATH = 1,
};

enum gorakEvents : uint8
{
    EVENT_DARKENED_LIGHTHING         = 1,
    EVENT_DREAD_ESSENCE              = 2,
    EVENT_SUMMON_DEATHTOUCHED_SLAVER = 3,
};

struct boss_gorak_tul : public BossAI
{
    boss_gorak_tul(Creature* creature) : BossAI(creature, DATA_GORAK_TUL) { }

    void InitializeAI() override
    {
        BossAI::InitializeAI();
    }

    void Reset() override
    {
        BossAI::Reset();
    }

    void EnterCombat(Unit* who) override
    {
        Talk(TALK_AGGRO);
        events.ScheduleEvent(EVENT_DARKENED_LIGHTHING, 6000);
        events.ScheduleEvent(EVENT_DREAD_ESSENCE, 3000);
        events.ScheduleEvent(EVENT_SUMMON_DEATHTOUCHED_SLAVER, 5000);

        BossAI::EnterCombat(who);
    }

    void JustDied(Unit* killer) override
    {
        Talk(TALK_DEATH);
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
            case EVENT_DARKENED_LIGHTHING:
                DoCastVictim(SPELL_DARKENED_LIGHTHING);
                events.ScheduleEvent(EVENT_DARKENED_LIGHTHING, 10000);
                break;
            case EVENT_DREAD_ESSENCE:
                DoCastVictim(SPELL_DREAD_ESSENCE);
                events.ScheduleEvent(EVENT_DREAD_ESSENCE, 25000);
                break;
            case EVENT_SUMMON_DEATHTOUCHED_SLAVER:
                DoCastVictim(SPELL_SUMMON_DEATHTOUCHED_SLAVER);
                events.ScheduleEvent(EVENT_SUMMON_DEATHTOUCHED_SLAVER, 20000);
                break;

            default:
                break;
            }
        }

        DoMeleeAttackIfReady();
    }
};

void AddSC_boss_gorak_tul()
{
    RegisterCreatureAI(boss_gorak_tul);
}

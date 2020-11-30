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

void AddSC_boss_gorak_tul()
{

}

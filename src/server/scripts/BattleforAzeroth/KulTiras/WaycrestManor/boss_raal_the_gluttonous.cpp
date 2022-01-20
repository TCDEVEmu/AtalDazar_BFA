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

enum raalthegluttonousSpells : uint32
{
    SPELL_CALL_SERVANT     = 264931,
    SPELL_CONSUME_ALL      = 264734,
    SPELL_CONSUME_SERVANT  = 265005,
    SPELL_ROTTEN_EXPULSION = 264694,
    SPELL_TENDERICE        = 264923,
};

enum raalthegluttonousTalks : uint8
{
    TALK_AGGRO = 0,
    TALK_DEATH = 1,
};

enum raalthegluttonousEvents : uint8
{
    EVENT_CALL_SERVANT     = 1,
    EVENT_CONSUME_ALL      = 2,
    EVENT_CONSUME_SERVANT  = 3,
    EVENT_ROTTEN_EXPULSION = 4,
    EVENT_TENDERICE        = 5,
};

void AddSC_boss_raal_the_gluttonous()
{

}

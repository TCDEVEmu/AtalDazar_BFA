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

#include "ScriptMgr.h"
#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "SpellScript.h"
#include "SpellAuras.h"
#include "SpellAuraEffects.h"
#include "ScriptMgr.h"
#include "waycrest_manor.h"

enum heartsbaneSpells : uint32
{
    // Sister Briar
    SPELL_BRAMBLE_NOLT    = 260701,
    SPELL_JAGGED_NETTLES  = 260741,
    SPELL_AURA_OF_THORNS  = 268122,
    SPELL_IRONBARK_SHIELD = 261265, //damage reduction

    // Sister Solena
    SPELL_SOUL_ARMOR         = 261264,
    SPELL_SOUL_BOLT          = 260698,
    SPELL_AURA_OF_DREAD      = 266266,
    SPELL_SOUL_MANIPULATION1 = 260900,
    SPELL_SOUL_MANIPULATION2 = 260923,

    // Sister Maladis
    SPELL_RUINOS_BOLD         = 260696,
    SPELL_RUINOS_WARD         = 261266, //damage reduction
    SPELL_UNSTABLE_RUNIC_MARK = 260703,

    SPELL_WARDING_CANDLES     = 264027,
    SPELL_CLAIM_THE_IRIS      = 260852,
    SPELL_FOCUSING_IRIS       = 260805,
    SPELL_DIRE_RITUAL         = 260773,
};

enum heartsbaneTalks : uint8
{
    TALK_AGGRO = 0,
    TALK_DEATH = 1,
};

enum heartsbaneEvents : uint8
{
    EVENT_BRAMBLE_NOLT    = 1,
    EVENT_JAGGED_NETTLES  = 2,
    EVENT_AURA_OF_THORNS  = 3,
    EVENT_IRONBARK_SHIELD = 4,

    // Sister Solena
    EVENT_SOUL_ARMOR         = 5,
    EVENT_SOUL_BOLT          = 6,
    EVENT_AURA_OF_DREAD      = 7,
    EVENT_SOUL_MANIPULATION1 = 8,
    EVENT_SOUL_MANIPULATION2 = 9,

    // Sister Maladis
    EVENT_RUINOS_BOLD         = 10,
    EVENT_RUINOS_WARD         = 11,
    EVENT_UNSTABLE_RUNIC_MARK = 12,

    EVENT_WARDING_CANDLES  = 13,
    EVENT_CLAIM_THE_IRIS   = 14,
    EVENT_FOCUSING_IRIS    = 15,
    EVENT_DIRE_RITUAL      = 16,
};

void AddSC_boss_heartsbane_triad()
{

}

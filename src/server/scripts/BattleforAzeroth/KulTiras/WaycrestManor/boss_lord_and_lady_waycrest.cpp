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

enum lordandladywaycrestSpells : uint32
{
    // Lord
    SPELL_PUTRID_VITALITY   = 261447,
    SPELL_VIRULENT_PATHOGEN = 261439,
    SPELL_WASTING_STRIKE    = 261438,

    // Lady
    SPELL_DISCORDANT_CADENZA = 268306,
    SPELL_SOUL_ARMOR         = 271590,
    SPELL_VITALY_TRANSFER    = 261446,
    SPELL_WRACKING_CHORD     = 268271,

    SPELL_WARDING_CANDLES    = 264027,
};

enum lordandladywaycrestTalks : uint8
{
    TALK_AGGRO = 0,
    TALK_DEATH = 1,
};

enum lordandladywaycrestEvents : uint8
{
    EVENT_PUTRID_VITALITY   = 1,
    EVENT_VIRULENT_PATHOGEN = 2,
    EVENT_WASTING_STRIKE    = 3,

    EVENT_DISCORDANT_CADENZA = 4,
    EVENT_SOUL_ARMOR         = 5,
    EVENT_VITALY_TRANSFER    = 6,
    EVENT_WRACKING_CHORD     = 7,

    EVENT_WARDING_CANDLES    = 8,
};


void AddSC_boss_lord_and_lady_waycrest()
{

}

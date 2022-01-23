/*
 * Copyright (C) 2012-2013 JadeCore <http://www.pandashan.com/>
 * Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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

#include "GameObjectAI.h"
#include "GridNotifiers.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "terrace_of_endless_spring.h"
#include "SpellAuraEffects.h"
#include "SpellAuras.h"
#include "SpellAuraDefines.h"

enum eProtectorsSpells
{
    // Shared
    SPELL_SHA_CORRUPTION                = 117052,
    SPELL_SHA_MASK                      = 118221,

    // Protector Kaolan
    SPELL_TOUCH_OF_SHA                  = 117519,
    SPELL_DEFILED_GROUND_SUMMON         = 117986,
    SPELL_DEFILED_GROUND_VISUAL         = 117989,
    SPELL_DEFILED_GROUND_STACKS         = 118091,
    SPELL_EXPEL_CORRUPTION_SUMMON       = 117975,
    SPELL_EXPEL_CORRUPTION_VISUAL       = 117943,

    // Ancient Regail
    SPELL_LIGHTNING_BOLT                = 117187,
    SPELL_LIGHTNING_PRISON              = 111850,
    SPELL_LIGHTNING_PRISON_STUN         = 117436,
    SPELL_LIGHTNING_STORM               = 118077,
    SPELL_LIGHTNING_STORM_FIRST         = 118064,
    SPELL_LIGHTNING_STORM_SECOND        = 118040,
    SPELL_LIGHTNING_STORM_THIRD         = 118053,
    SPELL_LIGHTNING_STORM_FOURTH        = 118054,
    SPELL_LIGHTNING_STORM_FIFTH         = 118055,
    SPELL_LIGHTNING_STORM_FIRST_DMG     = 118003,
    SPELL_LIGHTNING_STORM_SECOND_DMG    = 118004,
    SPELL_LIGHTNING_STORM_THIRD_DMG     = 118005,
    SPELL_LIGHTNING_STORM_FOURTH_DMG    = 118007,
    SPELL_LIGHTNING_STORM_FIFTH_DMG     = 118008,
    SPELL_OVERWHELMING_CORRUPTION       = 117351,
    SPELL_OVERWHELMING_CORRUPTION_STACK = 117353,

    // Ancient Asani
    SPELL_WATER_BOLT                    = 118312,
    SPELL_CLEANSING_WATERS_SUMMON       = 117309,
    SPELL_CLEANSING_WATERS_VISUAL       = 117250,
    SPELL_CLEANSING_WATERS_REGEN        = 117283,
    SPELL_CORRUPTING_WATERS_SUMMON      = 117227,
    SPELL_CORRUPTING_WATERS_AURA        = 117217,
    SPELL_PURIFIED                      = 117235,

    // Minions of Fear
    SPELL_CORRUPTED_ESSENCE             = 118191,
    SPELL_ESSENCE_OF_FEAR               = 118198,
    SPELL_SUPERIOR_CORRUPTED_ESSENCE    = 117905,
    SPELL_SUPERIOR_ESSENCE_OF_FEAR      = 118186
};

enum eProtectorsEquipId
{
    ASANI_MH_ITEM   = 79832,
    KAOLAN_MH_ITEM  = 81390,
    REGAIL_ITEMS    = 81389
};

void AddSC_boss_protectors_of_the_endless()
{

}

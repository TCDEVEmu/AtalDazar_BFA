/*
 * Copyright 2021 BfaCore
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
#include "ScriptMgr.h"
#include "SpellAuras.h"
#include "SpellAuraEffects.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "uldir.h"

enum Spells
{
    //Phase one
    SPELL_PERIODIC_ENERGY_GAIN = 295065,
	SPELL_PLASMA_DISHARGE_DUMMY = 271222,
    SPELL_PLASMA_DISCHARGE_PERIODIC = 278889, //137578
    SPELL_PLASMA_AT_DAMAGE = 271225,
	SPELL_BLOOD_STORM_AT_DAMAGE = 270290,
	SPELL_CUDGEL_OF_GORE_CHARGE  = 271296, //138017
    SPELL_CUDGEL_OF_GORE_DAMAGE_KNOCK = 271811,
	SPELL_SANGUINE_STATIC = 272582,
	SPELL_POWERED_DOWN    = 271965,
    //Phase two
	SPELL_RETRIEVE_CUDGEL = 271728,	
	SPELL_COMBUSTIBLE_FUEL = 272584,
	SPELL_SLOUGH_OFF       = 273179,
    SPELL_ULDIR_DEFENSIVE_BEAM_MAIN = 275441, //npc 1402846 is using this // visual which triggering also fast periodic aura damage
	SPELL_ULDIR_DEFENSIVE_BEAM_CREATE_AT = 274921,
    SPELL_ULDIR_DEFENSIVE_BEAM_DAMAGE = 268253,
    //Mythic
    SPELL_ENLARGED_HEART = 275205, //tank
    SPELL_HARDENED_ARTERIES_DEBUFF = 275189,
    SPELL_HARDENED_ARTERIES_EXP = 275193,
};


void AddSC_boss_taloc()
{

}
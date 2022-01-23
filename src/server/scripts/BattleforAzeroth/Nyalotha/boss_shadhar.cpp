/*
 * Copyright (C) 2021 BfaCore Reforged
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
#include "Creature.h"
#include "CreatureAI.h"
#include "InstanceScript.h"
#include "SpellAuras.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "nyalotha.h"

enum Spells
{
	SPELL_CAUSTIC_COATING_PERIODIC_DAMAGE = 309704,
	SPELL_CAUSTIC_COATING_BUFF = 309707,
	SPELL_DEBILITATING_SPIT = 307358,
	SPELL_UMBRAL_ERUPTION_MISSILE = 307944,
	SPELL_CRASH_CAST = 307476,
	SPELL_CRASH_DAMAGE = 307471,
	SPELL_DISSOLVE_CAST = 307478,
	SPELL_DISSOLVE_DAMAGE = 307472,
	SPELL_FIXATE_TARGET	= 318078, //Living Miasma
	SPELL_SLURRY_OUTBURST = 307240, //Living Miasma
	SPELL_UMBRAL_MANTLE = 306448,
	SPELL_UMBRAL_BREATH_CAST = 312528,
	SPELL_UMBRAL_BREATH_STUN = 306928, 
	SPELL_EAT_ENTROPIC_CARCASS = 316031,
	SPELL_EAT_NOXIOUS_CARCASS = 316030,
	SPELL_ENTROPIC_MANTLE = 306934,
	SPELL_ENTROPIC_BREATH_INSTANT = 312530,
	SPELL_ENTROPIC_BREATH_MOD_HEALING_DONE = 306930,
	SPELL_ENTROPIC_BUILDUP_PERIODIC_DAMAGE = 308177,
	SPELL_ENTROPIC_BUILDUP_CREATE_AT = 308173,
	SPELL_NOXIOUS_MANTLE_PERIODIC = 306932,
	SPELL_NOXIOUS_MANTLE_APPLY_AT = 306931,
	SPELL_BUBBLING_OVERFLOW_AT_DAMAGE = 314736,
	SPELL_BUBBLING_OVERFLOW_APPLY_AT = 308025, //?
	SPELL_BUBBLING_OVERFLOW_MOD_DAMAGE_TAKEN = 308149,
	//314735?
	SPELL_BUBBLING_OVERFLOW_CREATE_AT = 315885,
	SPELL_BUBLING_OVERFLOW_MISSILE = 315888, // triggers spell + at above
	SPELL_BUBBLING_BREATH_CAST = 312529,
	SPELL_BUBBLING_BREATH_PERIODIC_DAMAGE = 306929,
	SPELL_FRENZY = 306942,
	//Heroic	
	//Mythic
	SPELL_HUNGRY_STACK = 312328,
	SPELL_UNCONTROLLABLY_RAVENOUS = 312329,
	SPELL_SLIMY_RESIDUE = 312332,
	SPELL_TASTY_MORSEL_MOD_SCALE = 312099,
	SPELL_TASTY_MORSEL_MISSILE = 312311,
	SPELL_TASTY_MORSEL_CREATE_AT = 312316,
};

void AddSC_shadhar()
{

};

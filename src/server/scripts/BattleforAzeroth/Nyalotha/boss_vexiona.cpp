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
	SPELL_DESPAIR = 307359,
	SPELL_SHATTERED_RESOLVE = 307371,
	SPELL_TWILIGHT_BREATH = 307020,
	SPELL_TWILIGHT_BREATH_DAMAGE = 307297,
	SPELL_ANNIHILATION = 307403,
	SPELL_ANNIHILATION_DAMAGE = 307421,
	SPELL_GIFT_OF_THE_VOID = 306981, // gives button to player
	SPELL_GIFT_OF_THE_VOID_DAMAGE = 306982,
	SPELL_VOID_CORRUPTION_PERIODIC_TRIGGER = 307019,
	SPELL_VOID_CORRUUPTION_DAMAGE = 313283,
	SPELL_DARK_GATEWAY_VISUAL = 313668,
	SPELL_DARK_GATEWAY_DAMAGE = 307057,
	SPELL_FANATICAL_ASCENSION = 307729,
	SPELL_VOID_BOLT = 307177,
	SPELL_ENCROACHING_SHADOWS_PERIODIC_TRIGGER = 307314,
	SPELL_ENCROACHING_SHADOWS_DAMAGE = 307317,
	SPELL_ENCROACHING_SHADOWS_CREATE_AT = 307318,
	SPELL_SHADOWY_RESIDUE_AT_DAMAGE = 307343,
	//Phase 2
	SPELL_DECIMATION_DAMAGE = 315769,
	SPELL_TWILIGHT_DECIMATOR_DAMAGE = 307218,
	SPELL_TWILIGHT_DECIMATOR_CREATE_AT = 307212,
	SPELL_TWILIGHT_DECIMATOR_CREATE_AT_SECOND = 310225,
	SPELL_TWILIGHT_DECIMATOR_CREATE_AT_THIRD = 310237,
	SPELL_TWILIGHT_DECIMATOR_CREATE_AT_FOUR = 310238,
	//Phase 3
	SPELL_TERRYFYING_PRESENCE = 307284,
	SPELL_HEART_OF_DARKNESS = 307639,
	SPELL_HEART_OF_DARKNESS_FEAR = 307645,
	SPELL_DESTRUCTIVE_RAGE = 317157,
	SPELL_DESOLATION_MISSILE = 310324,
	SPELL_DESOLATION_SLOW = 310323,
	SPELL_DESOLATION_DAMAGE = 310325,
	SPELL_BERSERK = 306845,
};

enum Events
{
	EVENT_GAIN_ENERGY_VEXIONA = 1,
	EVENT_ASCENDANT,
	EVENT_DESPAIR,
	EVENT_TWILIGHT_BREATH,
	EVENT_ANNIHILATION,
	EVENT_GATEWAY,
	EVENT_CULTIST_GAIN_ENERGY,
	EVENT_VOID_BOLT,
	EVENT_ENCROACHING_SHADOWS,
	//Phase 2
	EVENT_TWILIGHT_DECIMATOR,
	//Phase 3
	EVENT_HEART_OF_DARKNESS,
	EVENT_DESOLATION,
	EVENT_BERSERK
};

const Position flight_pos_one = { -372.505f, -50.668f, -191.482f, 6.282f };
const Position flight_pos_two = { -388.901f, 114.360f, -188.599f, 1.034f };
const Position flight_pos_three = { -721.146f, -13.310f, -156.645f, 4.833f };

void AddSC_vexiona()
{

};

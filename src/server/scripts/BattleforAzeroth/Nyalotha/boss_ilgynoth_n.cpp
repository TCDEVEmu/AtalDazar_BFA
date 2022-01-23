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

const Position organ_of_corruption_left = { -284.047f, 112.586f, -524.631f, 3.925f };
const Position organ_of_corruption_mid = { -294.877f, -1.449811f, -524.986f, 2.198f };
const Position organ_of_corruption_right = { -408.385f, 7.823f, -524.518f, 0.711f };

enum Spells
{
	SPELL_LIVING_CHAMBER = 315097,
	SPELL_EYE_OF_NZOTH = 309961, //every 25s on tank
	SPELL_CORRUPTORS_GAZE_CREATE_AT = 310321,
	SPELL_CORRUPTORS_GAZE_CREATE_PERIODIC_AURA_AT = 310320, //npc 159247
	SPELL_MORASS_OF_CORRUPTION_AT_DAMAGE = 310322,
	SPELL_CURSED_BLOOD = 311159,
	SPELL_CURSED_BLOOD_EPLOSION = 311160,
	SPELL_BERSERK = 317669,
	//Heroic
	SPELL_TOUCH_OF_THE_CORRUPTOR = 311401,
	SPELL_TOUCH_OF_THE_CORRUPTOR_MIND_CONTROL = 311367,
	//Mythic
	SPELL_ABSORBING_CHARGE = 318383,
	//Organ of Corruption
	SPELL_PUMPING_BLOOD_MISSILE = 310788, //triggers summon 159514
	//Blood of Nyalotha
	SPELL_RECURRING_NIGHTMARE_TRIGGER = 312485,
	SPELL_RECURRING_NIGHTMARE_DEBUFF = 312486,
	SPELL_HEMORRHAGE = 311143,
};

void AddSC_ilgynoth_n()
{

};

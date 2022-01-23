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

#include "eternal_palace.h"
#include "SpellAuraDefines.h"
#include "SpellAuraEffects.h"
#include "AreaTrigger.h"
#include "MoveSplineInit.h"
#include <G3D/Vector3.h>
#include "AreaTriggerAI.h"
#include "ScriptMgr.h"

enum Spells
{
    SPELL_CHIMERIC_MARKS = 294726,
    SPELL_FOST_MARK = 294711,
    SPELL_TOXIC_BRAND = 294715,
    SPELL_FROST_MARK_MISSILE = 295284,
    SPELL_TOXIC_BRAND_MISSILE = 295285,
    SPELL_UNSTABLE_MIXTURE = 294847,

    SPELL_OVERFLOW = 295346,
    SPELL_OVERFLOWING_CHILL_AURA = 295348,
    SPELL_OVERFLOWING_CHILL_DAMAGE = 295415,
    SPELL_FROZEN_GROUND_AT = 300715,
    SPELL_FROZEN_GROUND_AURA = 300961,

    SPELL_OVERFLOWING_VENOM_AURA = 295421,
    SPELL_OVERFLOWING_VENOM_DAMAGE = 295417,
    SPELL_SEPTIC_GROUND_AT = 300719,
    SPELL_SEPTIC_GROUND_AURA = 300962,

    SPELL_CRUSHING_REVERBERATION_TANK = 295332,
    SPELL_CRUSHING_REVERBERATION_TANK_MARK = 304829,

    SPELL_FROSTVENOM_TIPPED = 300698,
    SPELL_SEPTIC_TAINT = 300705,
    SPELL_RIMEFROST = 300701,

    SPELL_OVERWHELMING_BARRAGE_CAST = 296551,
    SPELL_FROSTBOLT_MISSILE = 295621,
    SPELL_FROSTBOLT_AURA = 295704,

    SPELL_OVERWHELMING_BARRAGE_FROST = 295144,
    SPELL_OVERWHELMING_BARRAGE_TOXIC = 295159,

    SPELL_TOXICBOLT_MISSILE = 295622,
    SPELL_TOXICBOLT_AURA = 295705,

    SPELL_FROSTSHOCK_BOLTS = 295601,
    SPELL_TOXIC_BOLT_JAVELIN = 295607,
    SPELL_FROST_BOLT_JAVELIN = 295606,

    SPELL_INVERSION_CAST = 295791,
    SPELL_INVERSION_SICKNESS_VENOM = 300883,
    SPELL_INVERSION_SICKNESS_FROST = 300882,

    SPELL_FROZEN_BLOOD_BAR = 295795,
    SPELL_FROZEN_BAR_STUN = 295807,
    SPELL_FROZEN_BLOOD_ENERGIZE = 295800,
    SPELL_FROZEN_BLOOD_ENERGIZE_BURN = 295803,

    SPELL_VENOMOUS_BLOOD_ENERGIZE = 295804,
    SPELL_VENOMOUS_BLOOD_ENERGIZE_BURN = 295805,
    SPELL_VENOMOUS_BLOOD_BAR = 295796,
    SPELL_VENOMOUS_BLOOD_DELIRIOUS = 295850,
};
const Position centerPos = { 298.54f, 153.91f, 1449.97f }; //40y

void AddSC_boss_commander_sivara()
{

}

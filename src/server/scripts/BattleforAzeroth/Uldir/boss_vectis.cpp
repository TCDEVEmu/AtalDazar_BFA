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
#include "InstanceScript.h"
#include "Map.h"
#include "MotionMaster.h"
#include "ObjectAccessor.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellInfo.h"
#include "SpellScript.h"
#include "SpellAuras.h"
#include "SpellAuraEffects.h"
#include "TemporarySummon.h"
#include "uldir.h"

enum Spells
{
    SPELL_OMEGA_VECTOR_CLOSEST_TARGET_SELECTOR = 277764,
    SPELL_OMEGA_VECTOR_TARGET_SELECTOR = 276439,
    SPELL_OMEGA_VECTOR_JUMP = 265140,
    SPELL_OMEGA_VECTOR_DAMAGE = 265143,
    SPELL_ENERGY_FILL = 265249,
    SPELL_LINGERING_INFECTION = 281080,
    SPELL_LINGERING_INFECTION_AURA = 265127,
    SPELL_EVOLVING_AFFLICTION = 265178,
    SPELL_CONTAGION = 267242,
    SPELL_GESTATE_TARGET_SELECTOR = 265208,
    SPELL_GESTATE = 265209,
    SPELL_GESTATE_SUMMON = 265215,
    SPELL_GESTATE_DAMAGE = 266077,
    SPELL_LIQUEFY = 265217,
    SPELL_LIQUEFY_CANCEL_COSMETIC = 265291,
    SPELL_BLOOD_GEYSER_TARGET_SELECTOR = 265928,
    SPELL_BLOOD_GEYSER_CREATE_AT = 277438,
    SPELL_BLOOD_GEYSER_DAMAGE = 265370,
    SPELL_BLOOD_GEYSER_CAST = 265281,
    SPELL_PLAGUE_BOMB_CAST = 266459,
    SPELL_PLAGUE_BOMB = 266926,
    SPELL_PLAGUE_BOMB_SUMMON_AMALGAM = 266953,
    SPELL_PLAGUE_BOMB_MISSILE_SUMMON = 277542,
    SPELL_PLAGUE_BOMB_AT = 267648,
    SPELL_BURSTING_LESIONS = 274990,
    SPELL_SPAWN_PARASITE = 275053,
    SPELL_TERMINAL_ERUPTION = 274989,
    SPELL_IMMUNOSUPPRESSION = 265206,
    SPELL_PATHOGEN_BOMB_VISUAL = 269676,
    SPELL_CAUSTIC_BITE = 275170,
    SPELL_PARASITIC_DISCHARGE = 276276,
    SPELL_LIQUEFY_CHANGE_MODEL = 277765,
};


void AddSC_boss_vectis()
{

}

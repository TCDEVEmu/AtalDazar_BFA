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
#include "TemporarySummon.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "uldir.h"

enum Spells
{
    SPELL_ANNIHILATION_DEBUFF = 272336,
    SPELL_EXISTENSE_FRAGMENT_CREATE_AT = 272480,
    SPELL_EXISTENCE_FRAGMENT_MISSILE = 272467,
    SPELL_ESSENCE_SHEAR = 273282,
    SPELL_OBLIVION_SPHERE_SUMMON = 272394, //npc 138492
    SPELL_OBLIVION_SPHERE_CHARM = 272407, //range 5y
    SPELL_OBLIVION_SPHERE_MIND_CONTROL = 284944,
    SPELL_CRASHING_OBLIVION_EXPLOSION = 276863,
    SPELL_OBLITERATION_BLAST_CREATE_AT = 273552,
    SPELL_OBLITERATION_BLAST_DAMAGE = 273554,
    SPELL_IMMINENT_RUIN_AURA = 272536,
    SPELL_IMMINENT_RUIN_DECREASE_SPEED = 272541,
    SPELL_IMMINENT_RUIN_EXPLOSION = 272543,
    //Phase 2
    SPELL_OBLIVION_VEIL_AURA = 274230,
    SPELL_XALZAIX_MAIN = 273810,
    SPELL_XALZAIX_CREATE_AT_VISUAL = 273831,
    SPELL_XALZAIX_DAMAGE = 273811,
    SPELL_OBLITERATION_BEAM_SUMMON_TARGET = 272110, //npc 138315
    SPELL_OBLITERATION_BEAM_CREATE_AT = 279887,
    SPELL_OBLITERATION_BEAM_AT_DAMAGE = 274113,
    //Heroic Phase 2
    SPELL_ESSENCE_SHATTER = 279013,
    //Adds
    SPELL_VISION_OF_MADNESS_SUMMON = 273951,
    SPELL_MINDFLAY = 274019,
    SPELL_VISION_OF_MADNESS_MISSILE = 273950,
    SPELL_VISION_OF_MADNESS_AURA = 274004,
    SPELL_CRITICAL_MASS_AURA = 276900,
    SPELL_VOID_VOLLEY = 273945,
    //Mythic
    //Once Xalzaix has landed, it will become active and players must damage it down to 50% health, at which point it will retreat and regain health back to 100%.
    SPELL_LIVING_WEAPON_LANDING_MARK = 276912,
    SPELL_LIVING_WEAPON_DAMAGE = 276922,    
    SPELL_VOID_ECHOES = 279157, // every 10s
};


void AddSC_boss_mythrax()
{

}

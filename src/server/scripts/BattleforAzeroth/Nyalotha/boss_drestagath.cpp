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

enum Texts
{

};

enum Spells
{
	SPELL_ABERRANT_REGENERATION = 308373,
	SPELL_VOID_INFUSED_ICHOR_MISSILE = 310964,
	SPELL_VOID_INFUSED_ICHOR_CREATE_AT = 310968,
	SPELL_VOID_INFUSED_ICHOR_BUFF = 308377,
	SPELL_THROES_OF_AGONY = 308941,
	SPELL_DISMEMBERMENT = 308661,
	SPELL_VOLATILE_SEED = 310277,
	SPELL_VOLATILE_DETONATION = 310288,
	SPELL_VOID_GRIP = 313280,
	SPELL_VOID_GRIP_STUN,
	SPELL_ENTROPIC_CRASH = 310329,
	SPELL_VOID_GLARE_DAMAGE = 310406,
	SPELL_VOID_GLARE_DUMMY = 310396, //dummy trigger
	SPELL_VOID_GLARE_APPLY_AURA_AT = 310404, // visual
	SPELL_MUTTERING_INSANITY_PERIODIC = 310358,
	SPELL_MUTTERING_OF_INSANITY_SLOW = 310359,
	SPELL_UNLEASHED_INSANITY = 310361,
	//Tentacle of Drestagath
	SPELL_CRUSHING_SLAM = 310614,
	SPELL_ENTROPIC_CRASH_TENTACLE = 310348,
	SPELL_REALITY_TEAR_MISSILE = 274849, // not correct, because we have no at
	SPELL_REALITY_TEAR_CREATE_AT_TENTACLE = 315766,
	//Eye of Drestagath
	SPELL_MIND_FLAY = 310552,
	SPELL_ERRANT_BLAST = 308953,
	//SPELL_ERRANT_BLAST_MISSILE = 308957,
	SPELL_ERRANT_BLAST_MISSILE = 315401,
	SPELL_ERRANT_BLAST_CREATE_AT = 318901,
	//Maw of Drestagath
	SPELL_ACID_SPLASH_MISSILE = 310580,
	SPELL_SPINE_ERUPTION = 310078,
	SPELL_SPINE_ERUPTION_SMALL_MISSILE = 310079,
	SPELL_SPINE_ERUPTION_MED_MISSILE = 310080,
	SPELL_SPINE_ERUPTION_BIG_MISSILE = 310081,
	//Heroic
	SPELL_UMBRAL_AVERSION = 317001,
	SPELL_VOID_MIASMA_APPLY_AT = 310478,
	SPELL_VOID_MISMA_AT_DAMAGE = 310499,
	SPELL_MUTTERING_OF_BETRAYAL_TRIGGER= 310561,
	SPELL_MUTTERING_OF_BETRAYAL_AURA = 310563,
	SPELL_BETRAYED = 310567,
	//Mythic
	SPELL_BERSERK = 26662,
};

void AddSC_drestagath()
{

};

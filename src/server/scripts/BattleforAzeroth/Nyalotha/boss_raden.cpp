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
#include "Spell.h"
#include "nyalotha.h"

enum Spells
{
	SPELL_NULLYFYING_STRIKE = 306819,	
	SPELL_DRAW_VITA = 306090,
	SPELL_INEVITABLE_PULL = 306106,
	SPELL_UNCLAIMED_VITA = 313395,
	SPELL_DRAW_VOID = 306168,
	SPELL_UNCLAIMED_VOID = 313398,
	SPELL_VOID_EMPOWERED = 306733,
	SPELL_VITA_EMPOWERED = 306732,
	SPELL_OVERWHELMING_RAGE = 307673,
	SPELL_UNLEASHED_VOID = 306184,
	SPELL_INSTABILITY_EXPOSURE = 306279,
	SPELL_UNSTABLE_VITA_DAMAGE = 306257,
	SPELL_UNSTABLE_VITA_AURA = 306273,
	SPELL_UNSTABLE_VITA_AREA_KNOCKBACK = 316005,
	SPELL_UNSTABLE_VOID_MISSILE = 306603,
	SPELL_UNLEASHED_VITA_DAMAGE = 306115,	
	//Summon Spells
	SPELL_SUMMON_CRACKLING_STALKER = 306865,
	SPELL_SUMMON_NIGHT_TERROR = 314484,
	SPELL_SUMMON_VOID_HUNTER = 306866,
	//Void Hunter
	SPELL_VOID_COLLAPSE = 306881,
	SPELL_VOID_DEFILEMENT = 309777,
	//Crackling Stalker
	SPELL_CHAIN_LIGHTNING = 306874,
	//Phase 2
	SPELL_GORGE_ENERGY = 309985,
	SPELL_DECAYING_STRIKE = 313213,
	SPELL_DECAYING_WOUND = 313227,
	SPELL_LINGERING_ENERGIES = 309755,
	SPELL_RUIN = 309852,
	SPELL_VOID_ERUPTION = 310003,
	SPELL_VOID_ERUPTION_MISSILE = 310004,
	SPELL_CHARGED_BONDS = 310019,
	//Mythic
	SPELL_NIGHTMARE_EMPOWERED = 312996,
	SPELL_UNSTABLE_NIGHTMARE = 313077,
	SPELL_UNLEASHED_NIGHTMARE_MISSILE = 306654,
	SPELL_UNSTABLE_NIGHTMARE_DAMAGE = 313109,
	SPELL_UNSTABLE_NIGHTMARE_MISSILE = 313003,
	SPELL_DRAW_NIGHTMARE = 312750,
	SPELL_UNCLAIMED_NIGHTMARE = 313399,
	SPELL_DREAD_INFERNO_CREATE_AT = 315252,
	SPELL_DREAD_INFERNO_AT_DAMAGE = 315258,
};

const Position essence_of_void_spawn = { -342.462f, 247.273f, -211.817f, 4.952f };
const Position essence_of_vita_spawn = { -266.726f, 180.448f, -211.817f, 3.255f };
const Position essence_of_nightmare_spawn = { -358.802f, 156.894f, -211.818f, 0.859f };

void AddSC_raden()
{

};
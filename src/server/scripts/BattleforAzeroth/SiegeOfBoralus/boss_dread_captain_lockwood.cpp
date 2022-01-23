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
#include "siege_of_boralus.h"
#include "ScriptedGossip.h"

enum Spells
{
	EVASIVE = 272471,
	LOCKWOOD_SHOOT = 280389, // random every 2.5s
	GUT_SHOT = 273470, // random
	CLEAR_THE_DECK = 269029, //tank
	WITHDRAW = 268752, // at 100 energy

	DREAD_VOLLEY_CHANNEL = 268933,
	DREAD_VOLLEY_GROUND_MARK = 268940,
	DREAD_VOLLEY_MISSILE = 268944,

	UNSTABLE_ORDNACE_SUMMON = 268963,
	UNSTABLE_ORDNACE = 268995,
	UNSTABLE_ORDNACE_EXP = 269015,
};



void AddSC_boss_dread_captain_lockwood()
{

}

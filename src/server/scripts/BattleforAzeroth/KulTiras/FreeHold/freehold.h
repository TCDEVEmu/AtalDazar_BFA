/*
 * Copyright (C) 2017-2018 AshamaneProject <https://github.com/AshamaneProject>
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
#include "ScriptedCreature.h"
#include "CellImpl.h"
#include "GridNotifiersImpl.h"
#include "MoveSplineInit.h"
#include "SpellAuraEffects.h"
#include "G3D/Vector3.h"

#ifndef FREEHOLD_H
#define FREEHOLD_H

#define DataHeader "F"

uint32 const EncounterCount = 4;

enum EncounterData
{

    DATA_BOSS_SKYCAPN_KRAGG          = 0,
    DATA_COUNCIL_OF_CAPITAINS        = 1,
    DATA_BOSS_TROTHAK                = 2,
    DATA_BOSS_HARLAN_SWEETE          = 3
};

enum Creatures
{
    ///Skycap Kragg
    BOSS_SKYCAPN_KRAGG = 126832,
    NpcSharkBaitBoss = 126841,
    NpcRevitalizingBrew = 134021,
    ///Skycap Kragg Rider      
    NpcSkycapnKragg = 126732,
    NpcSharkBait = 129743,

    ///Council o Captains
    NpcMurphy = 130467,
    NpcLokhtosDarkbargainer = 12944,
    BOSS_COUNCIL_OF_CAPITAINS_JOLLY = 126845,
    BOSS_COUNCIL_OF_CAPITAINS_EUDORA = 126848,
    BOSS_COUNCIL_OF_CAPITAINS_RAOUL = 126847,
    NpcRummyMancomb = 133219,
    NpcBlackoutBarrel = 130896,

    ///Ring of Booty
    NpcGukguk = 130090,
    NpcDavey = 130086,
    NpcLightning = 130099,
    NpcLudwigVonTortollan = 129699,
    BOSS_TROTHAK = 126969,
    NpcHammerShark = 129448,
    NpcSawtoothShark = 129359,
    NpcGurgthock = 129350,

    ///Harlan Sweete
    BOSS_HARLAN_SWEETE = 126983,
    NpcIrontideGrenadier = 129758,
    NpcSwiftwindSaber = 129747,
    NpcIrontideCannon = 130850,

    ///Trash                
    NpcIrontideEnforcer = 129602,
    NpcIrontideMastiff = 128551,
    NpcIrontideCorsair = 126928,
    NpcIrontideCrackshot = 126918,
    NpcIrontideBonesaw = 129788,
    NpcBlacktoothBrutes = 129548,
    NpcCutwaterDuelist = 129559,
    NpcIrontideOarsman = 127111,
    NpcBilgeRatPadfoot = 129550,
    NpcCutwaterKnifeJuggler = 129599,
    NpcVerminTrapper = 130404,
    NpcSoggyShiprat = 130024,
    NpcBlacktoothKnuckleduster = 129547,
    NpcBlacktoothScrapper = 129529,
    NpcCutwaterHarpooner = 129601,
    NpcIrontideCrusher = 130400,
    NpcIrontideOfficer = 127106,
    NpcIrontideRavager = 130012,
    NpcIrontideStormcaller = 126919,
    NpcIrontideBuccaneer = 130011,

    NpcCaptainsController = 160000,
};

enum FreeholdGameObject
{
    GoCouncilTribute = 288636
};

enum FreeHoldFaction
{
    FactionEnemy = 16,
    FactionFriendly = 35,
    FactionTheBilgeRats = 2934, ///Eudora Faction
    FactionBlacktoothBrawlers = 2935, ///Raoul Faction
    FactionCutwaterCorsairs = 2936, ///Jolly Faction
    FactionFriendlyFake = 2580, ///This isn�t the original faction
};

#endif // FREEHOLD_H

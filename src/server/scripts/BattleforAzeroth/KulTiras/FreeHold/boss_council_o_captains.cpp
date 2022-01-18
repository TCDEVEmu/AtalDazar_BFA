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


#include "freehold.h"
#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "GameObject.h"
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

enum CouncilCaptainSpells
{
    UnderOneBanner = 257821, ///Cast if you fight with the 3 boss
    BilgeRatBrew = 281357, ///This will get players drunk for 1 minute
    ///Captain Raoul Fight
    BlackoutBarrel = 258338,
    BlackoutBarrelVehicleAura = 258875,
    BarrelSmash = 256589,
    ///Captain Eudora Fight
    PowderShot = 256979,
    Grapeshot = 258381,
    GrapeShotFire = 258352,
    ///Captain Jolly Fight
    CuttingSurgeCast = 267522,
    CuttingSurge = 267523,
    WhirlpoolofBlades = 272397,
    WhirlpoolofBladesMissile = 267533,
    ///Allied Captain Buff
    ChainShot = 272902, /// Casted by Captain Eudora if she is Allied
    TappedKeg = 272884, /// Casted by Captain Raoul if he is Allied
    TappedKegBuff = 272900,
    TradeWindsVigor = 281329, /// Casted by Captain Jolly if he is Allied
    ///Heroic Mode
    ConfidenceBoostingFreeholdBrew = 265086, ///On Heroic difficulty, the nearby bartender Rummy Mancomb will throw beverages 
    InvigoratingFreeholdBrew = 264715, ///to the location of a randomly selected boss. These beverages will apply a buff 
    CausticFreeholdBrew = 265171  ///to any boss or player that stands within them.
};


void AddSC_boss_council_o_captains()
{

}

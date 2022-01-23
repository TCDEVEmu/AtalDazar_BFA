/*
 * Copyright (C) 2012-2013 JadeCore <http://www.pandashan.com/>
 * Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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

#include "ScriptedCreature.h"
#include "terrace_of_endless_spring.h"
#include "ScriptMgr.h"
#include "ScriptedGossip.h"
#include "ScriptedEscortAI.h"
#include "CreatureAI.h"
#include "MoveSplineInit.h"
#include "GridNotifiers.h"

enum eApparitionsSpells
{
    // Shared
    SPELL_CHANNELING_CORRUPTION     = 125706,
    SPELL_CORRUPTION_BOLT           = 125713,

    // Fear
    SPELL_OVERWHELMING_FEAR         = 125758,
    SPELL_NIGHT_TERRORS_MISSILE     = 125736,
    SPELL_NIGHT_TERRORS_PERIODIC    = 125745,
    SPELL_ENVELOPING_DARKNESS       = 125760,

    // Terror
    SPELL_GRIP_OF_FEAR              = 130115,
    SPELL_UNLEASHED_TERROR          = 130120
};

void AddSC_terrace_of_endless_spring()
{

}

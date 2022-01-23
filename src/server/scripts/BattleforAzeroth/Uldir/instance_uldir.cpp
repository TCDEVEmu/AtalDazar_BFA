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

#include "ScriptMgr.h"
#include "Player.h"
#include "InstanceScript.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "ObjectMgr.h"
#include "uldir.h"

struct instance_uldir : public InstanceScript
{
    instance_uldir(InstanceMap* map) : InstanceScript(map)
    {    
        SetBossNumber(EncounterCount);
    }

};

void AddSC_instance_uldir()
{
    RegisterInstanceScript(instance_uldir, 1861);
}

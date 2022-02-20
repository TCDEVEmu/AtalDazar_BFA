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
#include "Player.h"
#include "InstanceScript.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "Conversation.h"
#include "ObjectMgr.h"
#include "eternal_palace.h"

DoorData const doorData[] =
{
    { GO_SIVARA_ENCOUNTER, DATA_COMMANDER_SIVARA, DOOR_TYPE_ROOM },
    { GO_SIVARA_LEFT, DATA_COMMANDER_SIVARA, DOOR_TYPE_PASSAGE },
    { GO_SIVARA_RIGHT, DATA_COMMANDER_SIVARA, DOOR_TYPE_PASSAGE },
    { GO_LADY_ASHVANE_ENCOUNTER, DATA_LADY_ASHVANE, DOOR_TYPE_ROOM },
};

struct instance_eternal_palace : public InstanceScript
{
    instance_eternal_palace(InstanceMap* map) : InstanceScript(map), intro_conv(false)
    {
        SetHeaders(DataHeader);
        SetBossNumber(EncounterCount);
    }

    void Initialize() override
    {
        LoadDoorData(doorData);
    }

    void OnPlayerEnter(Player* player) override
    {
        intro_conv = true;
        if (intro_conv == true)
        {
            intro_conv = false;
            //Conversation::CreateConversation(1000, player, player->GetPosition(), { player->GetGUID() });
        }
    }

private:
    bool intro_conv;
};
/*
//329650 - Ashvane arcane wall
struct go_ashvane_arcane_wall : public GameObjectAI
{
    go_ashvane_arcane_wall(GameObject* go) : GameObjectAI(go) { }

    void Reset() override
    {
        go->GetScheduler().CancelAll();
        go->GetScheduler().Schedule(1s, [this] (TaskContext context)
        {
            if (InstanceScript* instance = go->GetInstanceScript())
            {
                if (instance->GetBossState(DATA_COMMANDER_SIVARA == DONE) && instance->GetBossState(DATA_BLACKWATER_BEHEMOTH == DONE) && instance->GetBossState(DATA_RADIANCE_OF_AZSHARA == DONE))
                    go->RemoveFromWorld();

                if (go->IsInWorld())
                    context.Repeat(1s);
            }
        });
    }

    void UpdateAI(uint32 diff) override
    {
        scheduler.Update(diff);
    }

private:
    TaskScheduler scheduler;
}; */

void AddSC_instance_eternal_palace()
{
    RegisterInstanceScript(instance_eternal_palace, 2164);
    // RegisterGameObjectAI(go_ashvane_arcane_wall);
}

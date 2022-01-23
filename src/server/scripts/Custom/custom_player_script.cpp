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

#include "Conversation.h"
#include "Creature.h"
#include "DatabaseEnv.h"
#include "DBCEnums.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "World.h"
#include "WorldSession.h"
#include "SpellAuras.h"
#include "PhasingHandler.h"

// SPELL_AZERITE_RESIDUE = 260738
class ps_spell_azerite_residue : public PlayerScript
{
public:
    ps_spell_azerite_residue() : PlayerScript("ps_spell_azerite_residue") { }

    // Called when a player kills another player
    void OnPVPKill(Player* killer, Player* killed) override
    {
        if (killed->HasAura(SPELL_AZERITE_RESIDUE))
        {
            if (Aura* aura = killed->GetAura(SPELL_AZERITE_RESIDUE))
            {
                uint8 count = aura->GetStackAmount();
                aura->SetStackAmount(1);
                if (InstanceScript* instance = killer->GetInstanceScript())
                    instance->GiveIslandAzeriteXpGain(killer, killed->GetGUID(), count);
            }
        }
    }

    // Called when a player kills a creature
    void OnCreatureKill(Player* killer, Creature* killed) override
    {
        if (killed->HasAura(SPELL_AZERITE_RESIDUE))
        {
            if (Aura* aura = killed->GetAura(SPELL_AZERITE_RESIDUE))
            {
                uint8 count = aura->GetStackAmount();
                aura->SetStackAmount(1);
                if (InstanceScript* instance = killer->GetInstanceScript())
                    instance->GiveIslandAzeriteXpGain(killer, killed->GetGUID(), count);
            }
        }
    }
};

class PlayerScript_Hack_Phase_Update : public PlayerScript
{
public:
    PlayerScript_Hack_Phase_Update() : PlayerScript("PlayerScript_Hack_Phase_Update") {}

    uint32 checkTimer = 50;

    void OnUpdate(Player* player, uint32 diff) override
    {
        if (checkTimer <= diff)
        {
            PhasingHandler::OnAreaChange(player);

            checkTimer = 50;
        }
        else checkTimer -= diff;
    }
};

void AddSC_custom_player_script()
{
    new ps_spell_azerite_residue();
    new PlayerScript_Hack_Phase_Update();
}

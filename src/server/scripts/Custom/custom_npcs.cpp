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

#include "Creature.h"
#include "Player.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "World.h"
#include "CollectionMgr.h"
#include "WorldSession.h"
#include "Chat.h"

class npc_rate_xp_modifier : public CreatureScript
{
    public:
        npc_rate_xp_modifier() : CreatureScript("npc_rate_xp_modifier") { }

#define MAX_RATE uint32(5)

        bool OnGossipHello(Player* player, Creature* creature) override
        {
            for (uint32 i = 1; i <= MAX_RATE; ++i)
            {
                if (i == player->GetPersonnalXpRate())
                    continue;

                if (i == sWorld->getRate(RATE_XP_KILL))
                    continue;

                std::ostringstream gossipText;
                gossipText << "Experiencia por x" << i;
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, gossipText.str(), GOSSIP_SENDER_MAIN, i);
            }

            if (player->GetPersonnalXpRate())
            {
                std::ostringstream gossipText;
                gossipText << "Experiencia por  x" << sWorld->getRate(RATE_XP_KILL);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, gossipText.str(), GOSSIP_SENDER_MAIN, 0);
            }

            SendGossipMenuFor(player, player->GetGossipTextId(creature), creature->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, Creature* /*creature*/, uint32 /*uiSender*/, uint32 uiAction) override
        {
            CloseGossipMenuFor(player);
            player->SetPersonnalXpRate(float(std::min(MAX_RATE, uiAction)));
            return true;
        }
};

class arwent_gift_mount : public PlayerScript
{
private:
    bool isEnabled = true; /* À changer en false le 26/07/2020 */
    uint32 flySpell = 90265; /* Maître cavalier */
    uint32 mountSpell = 307932; /* Wyrm éternel ensorcelé */

public:
    arwent_gift_mount() : PlayerScript("arwent_gift_mount") {}

    void OnLogin(Player* player, bool /*firstLogin*/) {
        if (isEnabled) {
            if (!player->HasSpell(flySpell)) {
                player->LearnSpell(flySpell, false);
            }

            if (!player->HasSpell(mountSpell)) {
                player->LearnSpell(mountSpell, false);
            }
        }
    }
};

class heirloom_mount_tempfix : public PlayerScript {
private:
    const uint32 heirloomSpell = 179244;
    const int16 heirloomRequiredSize = 35;
    const uint32 heirloomAchievement = 9909;

public:
    heirloom_mount_tempfix() : PlayerScript("heirloom_mount_tempfix") {}

    void OnUpdate(Player* player, uint32 /*diff*/) {
        if (!player->HasSpell(heirloomSpell)) {
            const CollectionMgr* sCollectionMgr = player->GetSession()->GetCollectionMgr();

            if (sCollectionMgr->GetAccountHeirlooms().size() == heirloomRequiredSize) {
                player->CompletedAchievement(heirloomAchievement);
                player->LearnSpell(heirloomSpell, false);
            }
        }
    }
};

void AddSC_custom_npcs()
{
    new npc_rate_xp_modifier();
    new arwent_gift_mount();
    new heirloom_mount_tempfix();
}

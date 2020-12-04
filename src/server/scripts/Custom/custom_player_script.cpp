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

// TODO : this script is temp fix,
// remove it when lordaeron battle is properly fixed
//class OnBfaArrival : public PlayerScript
//{
//public:
//    OnBfaArrival() : PlayerScript("OnBfaArrival") { }
//
//    enum queststartbfa
//    {
//        QUEST_DYING_WORLD_A = 52946,
//
//        SPELL_CREATE_WAR_CAMPAIGN_H = 273381,
//        SPELL_CREATE_WAR_CAMPAIGN_A = 273382,
//
//        CONVERSATION_MAGNI_DYING_WORLD = 9316,
//    };
//
//    void OnLogin(Player* player, bool /*firstLogin*/) override
//    {
//        if (player->getLevel() >= 110)
//            HandleBFAStart(player);
//    }
//
//    void OnLevelChanged(Player * player, uint8 oldLevel) override
//    {
//        if (oldLevel < 110 && player->getLevel() >= 110)
//            HandleBFAStart(player);
//    }
//
//    void HandleBFAStart(Player * player)
//    {
//        if (player->GetQuestStatus(QUEST_DYING_WORLD_A) == QUEST_STATUS_NONE)
//        {
//            player->CastSpell(player, player->IsInAlliance() ? SPELL_CREATE_WAR_CAMPAIGN_A : SPELL_CREATE_WAR_CAMPAIGN_H, true);
//
//            Conversation::CreateConversation(CONVERSATION_MAGNI_DYING_WORLD, player, player->GetPosition(), { player->GetGUID() });
//
//            if (const Quest * quest = sObjectMgr->GetQuestTemplate(QUEST_DYING_WORLD_A))
//                player->AddQuest(quest, nullptr);
//        }
//    }
//};

void AddSC_custom_player_script()
{
    //RegisterPlayerScript(OnBfaArrival);
}

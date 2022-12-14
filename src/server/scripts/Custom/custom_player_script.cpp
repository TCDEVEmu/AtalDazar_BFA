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
#include "GameEventMgr.h"

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

            std::list<Creature*> creatures = player->FindAllCreaturesInRange(50.0f);
            for (auto itr : creatures)
            {
                player->CanSeeOrDetect(itr);
            }
            
            checkTimer = 50;
        }
        else checkTimer -= diff;
    }
};

class PlayerScript_Weekly_Quests : public PlayerScript
{
public:
    PlayerScript_Weekly_Quests() : PlayerScript("PlayerScript_Weekly_Quests") {}

    void OnLogin(Player* player, bool /*firstLogin*/) override
    {
        if (!player)
            return;

        if (!sGameEventMgr->IsActiveEvent(110))
        {
            player->RemoveActiveQuest(sObjectMgr->GetQuestTemplate(44175), false);
            player->RemoveAura(225788);
        }
        else
            player->CastSpell(player, 225788, false);

        if (!sGameEventMgr->IsActiveEvent(111))
        {
            player->RemoveActiveQuest(sObjectMgr->GetQuestTemplate(44173), false);
            player->RemoveAura(186403);
        }
        else
            player->CastSpell(player, 186403, false);

        if (!sGameEventMgr->IsActiveEvent(112))
        {
            player->RemoveActiveQuest(sObjectMgr->GetQuestTemplate(44174), false);
            player->RemoveAura(186406);
        }
        else
            player->CastSpell(player, 186406, false);

        if (!sGameEventMgr->IsActiveEvent(113))
        {
            player->RemoveActiveQuest(sObjectMgr->GetQuestTemplate(44172), false);
            player->RemoveAura(186401);
        }
        else
            player->CastSpell(player, 186401, false);

        if (!sGameEventMgr->IsActiveEvent(114))
        {
            player->RemoveActiveQuest(sObjectMgr->GetQuestTemplate(44171), false);
            player->RemoveAura(225787);
        }
        else
            player->CastSpell(player, 225787, false);

        if (!sGameEventMgr->IsActiveEvent(102)) // TW Cataclism
            player->RemoveActiveQuest(sObjectMgr->GetQuestTemplate(44167), false);
        if (!sGameEventMgr->IsActiveEvent(100)) // TW BC
            player->RemoveActiveQuest(sObjectMgr->GetQuestTemplate(44164), false);
        if (!sGameEventMgr->IsActiveEvent(103)) // TW MoP
            player->RemoveActiveQuest(sObjectMgr->GetQuestTemplate(45799), false);
        if (!sGameEventMgr->IsActiveEvent(101)) // TW WotlK
            player->RemoveActiveQuest(sObjectMgr->GetQuestTemplate(44166), false);
    }

    void OnMapChanged(Player* player) override
    {
        if (!player)
            return;

        if (!sGameEventMgr->IsActiveEvent(110))
            player->RemoveAura(225788);
        if (!sGameEventMgr->IsActiveEvent(111))
            player->RemoveAura(186403);
        if (!sGameEventMgr->IsActiveEvent(112))
            player->RemoveAura(186406);
        if (!sGameEventMgr->IsActiveEvent(113))
            player->RemoveAura(186401);
        if (!sGameEventMgr->IsActiveEvent(114))
            player->RemoveAura(225787);

    }
};

enum Create_Garrison
{
    SPELL_CREATE_WAR_CAMPAIGN_H = 273381,
    SPELL_CREATE_WAR_CAMPAIGN_A = 273382
};

class Player_Change_Level : public PlayerScript
{
public:
    Player_Change_Level() : PlayerScript("Player_Change_Level") {}

    void OnLevelChanged(Player* player, uint8 oldLevel) override
    {
        if (oldLevel <= 110 && player->getLevel() >= 111) // Create WarCampaing
        {
           player->GetTeam() == ALLIANCE ? player->CastSpell(player, SPELL_CREATE_WAR_CAMPAIGN_A, false) : player->CastSpell(player, SPELL_CREATE_WAR_CAMPAIGN_H, false);
        }

        if (oldLevel <= 119 && player->getLevel() >= 120)
        { 
            switch (player->getRace()) // Heritage Armor
            {
                case RACE_VOID_ELF:
                    if (player->GetQuestStatus(49928) == QUEST_STATUS_NONE)
                        if (const Quest * quest = sObjectMgr->GetQuestTemplate(49928))
                            player->AddQuest(quest, nullptr);
                    break;
                case RACE_LIGHTFORGED_DRAENEI:
                    if (player->GetQuestStatus(49782) == QUEST_STATUS_NONE)
                        if (const Quest * quest = sObjectMgr->GetQuestTemplate(49782))
                            player->AddQuest(quest, nullptr);
                    break;
                case RACE_NIGHTBORNE:
                    if (player->GetQuestStatus(49784) == QUEST_STATUS_NONE)
                        if (const Quest * quest = sObjectMgr->GetQuestTemplate(49784))
                            player->AddQuest(quest, nullptr);
                    break;
                case RACE_HIGHMOUNTAIN_TAUREN:
                    if (player->GetQuestStatus(49783) == QUEST_STATUS_NONE)
                        if (const Quest * quest = sObjectMgr->GetQuestTemplate(49783))
                            player->AddQuest(quest, nullptr);
                    break;
                case RACE_DARK_IRON_DWARF:
                    if (player->GetQuestStatus(51483) == QUEST_STATUS_NONE)
                        if (const Quest * quest = sObjectMgr->GetQuestTemplate(51483))
                            player->AddQuest(quest, nullptr);
                    break;
                case RACE_MAGHAR_ORC:
                    if (player->GetQuestStatus(51484) == QUEST_STATUS_NONE)
                        if (const Quest * quest = sObjectMgr->GetQuestTemplate(51484))
                            player->AddQuest(quest, nullptr);
                    break;
                case RACE_ZANDALARI_TROLL:
                    if (player->GetQuestStatus(53721) == QUEST_STATUS_NONE)
                        if (const Quest * quest = sObjectMgr->GetQuestTemplate(53721))
                            player->AddQuest(quest, nullptr);
                    break;
                case RACE_KUL_TIRAN:
                    if (player->GetQuestStatus(53722) == QUEST_STATUS_NONE)
                        if (const Quest * quest = sObjectMgr->GetQuestTemplate(53722))
                            player->AddQuest(quest, nullptr);
                    break;
                case RACE_VULPERA:
                    if (player->GetQuestStatus(58435) == QUEST_STATUS_NONE)
                        if (const Quest * quest = sObjectMgr->GetQuestTemplate(58435))
                            player->AddQuest(quest, nullptr);
                    break;
                case RACE_MECHAGNOME:
                    if (player->GetQuestStatus(58436) == QUEST_STATUS_NONE)
                        if (const Quest * quest = sObjectMgr->GetQuestTemplate(58436))
                            player->AddQuest(quest, nullptr);
                    break;
                default:
                    break;
            }
        }
    }
};

#define MAX_RATE uint32(5)

class npc_rate_xp_modifier : public CreatureScript
{
public:
    npc_rate_xp_modifier() : CreatureScript("npc_rate_xp_modifier") { }

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

    bool OnGossipSelect(Player * player, Creature* /*creature*/, uint32 /*uiSender*/, uint32 uiAction) override
    {
        CloseGossipMenuFor(player);
        player->SetPersonnalXpRate(float(std::min(MAX_RATE, uiAction)));
        return true;
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

void AddSC_custom_player_script()
{
    new ps_spell_azerite_residue();
    new PlayerScript_Hack_Phase_Update();
    new PlayerScript_Weekly_Quests();
    RegisterPlayerScript(Player_Change_Level);
    new npc_rate_xp_modifier();
    new heirloom_mount_tempfix();
}

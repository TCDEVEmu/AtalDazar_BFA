/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
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

#include "ArenaHelper.h"
#include "Group.h"
#include "Battleground.h"
#include "BattlegroundMgr.h"
#include "CharacterCache.h"
#include "Common.h"
#include "DatabaseEnv.h"
#include "DB2Stores.h"
#include "Formulas.h"
#include "GameObject.h"
#include "GroupMgr.h"
#include "InstanceSaveMgr.h"
#include "Item.h"
#include "LFGMgr.h"
#include "Log.h"
#include "LootMgr.h"
#include "LootPackets.h"
#include "MapManager.h"
#include "ObjectAccessor.h"
#include "ObjectMgr.h"
#include "PartyPackets.h"
#include "Pet.h"
#include "Player.h"
#include "Random.h"
#include "SpellAuras.h"
#include "UpdateData.h"
#include "Util.h"
#include "World.h"
#include "WorldSession.h"

Group::Group() : m_leaderGuid(), m_leaderName(""), m_groupFlags(GROUP_FLAG_NONE), m_groupCategory(GROUP_CATEGORY_HOME),
m_dungeonDifficulty(DIFFICULTY_NORMAL), m_raidDifficulty(DIFFICULTY_NORMAL_RAID), m_legacyRaidDifficulty(DIFFICULTY_10_N),
m_bgGroup(nullptr), m_bfGroup(nullptr), m_lootMethod(FREE_FOR_ALL), m_lootThreshold(ITEM_QUALITY_UNCOMMON), m_looterGuid(),
m_masterLooterGuid(), m_subGroupsCounts(nullptr), m_guid(), m_maxEnchantingLevel(0), m_dbStoreId(0),
m_readyCheckStarted(false), m_readyCheckTimer(0), m_activeMarkers(0)
{
    for (uint8 i = 0; i < TARGET_ICONS_COUNT; ++i)
        m_targetIcons[i].Clear();

    for (uint8 i = 0; i < RAID_MARKERS_COUNT; ++i)
        m_markers[i] = nullptr;
}

Group::~Group()
{
    if (m_bgGroup)
    {
        TC_LOG_DEBUG("bg.battleground", "Group::~Group: battleground group being deleted.");
        if (m_bgGroup->GetBgRaid(ALLIANCE) == this)
            m_bgGroup->SetBgRaid(ALLIANCE, nullptr);
        else if (m_bgGroup->GetBgRaid(HORDE) == this)
            m_bgGroup->SetBgRaid(HORDE, nullptr);
        else
            TC_LOG_ERROR("misc", "Group::~Group: battleground group is not linked to the correct battleground.");
    }

    // this may unload some instance saves
    for (auto difficultyItr = m_boundInstances.begin(); difficultyItr != m_boundInstances.end(); ++difficultyItr)
        for (auto itr2 = difficultyItr->second.begin(); itr2 != difficultyItr->second.end(); ++itr2)
            itr2->second.save->RemoveGroup(this);

    // Sub group counters clean up
    delete[] m_subGroupsCounts;
}

bool Group::Create(Player* leader)
{
    ObjectGuid leaderGuid = leader->GetGUID();

    m_guid = ObjectGuid::Create<HighGuid::Party>(sGroupMgr->GenerateGroupId());
    m_leaderGuid = leaderGuid;
    m_leaderName = leader->GetName();
    leader->AddPlayerFlag(PLAYER_FLAGS_GROUP_LEADER);

    if (isBGGroup() || isBFGroup())
    {
        m_groupFlags = GROUP_MASK_BGRAID;
        m_groupCategory = GROUP_CATEGORY_INSTANCE;
    }

    if (m_groupFlags & GROUP_FLAG_RAID)
        _initRaidSubGroupsCounter();

    if (!isLFGGroup())
        m_lootMethod = GROUP_LOOT;

    m_lootThreshold = ITEM_QUALITY_UNCOMMON;
    m_looterGuid = leaderGuid;
    m_masterLooterGuid.Clear();

    m_dungeonDifficulty = DIFFICULTY_NORMAL;
    m_raidDifficulty = DIFFICULTY_NORMAL_RAID;
    m_legacyRaidDifficulty = DIFFICULTY_10_N;

    if (!isBGGroup() && !isBFGroup())
    {
        m_dungeonDifficulty = leader->GetDungeonDifficultyID();
        m_raidDifficulty = leader->GetRaidDifficultyID();
        m_legacyRaidDifficulty = leader->GetLegacyRaidDifficultyID();

        m_dbStoreId = sGroupMgr->GenerateNewGroupDbStoreId();

        sGroupMgr->RegisterGroupDbStoreId(m_dbStoreId, this);

        // Store group in database
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_GROUP);

        uint8 index = 0;

        stmt->setUInt32(index++, m_dbStoreId);
        stmt->setUInt64(index++, m_leaderGuid.GetCounter());
        stmt->setUInt8(index++, uint8(m_lootMethod));
        stmt->setUInt64(index++, m_looterGuid.GetCounter());
        stmt->setUInt8(index++, uint8(m_lootThreshold));
        stmt->setBinary(index++, m_targetIcons[0].GetRawValue());
        stmt->setBinary(index++, m_targetIcons[1].GetRawValue());
        stmt->setBinary(index++, m_targetIcons[2].GetRawValue());
        stmt->setBinary(index++, m_targetIcons[3].GetRawValue());
        stmt->setBinary(index++, m_targetIcons[4].GetRawValue());
        stmt->setBinary(index++, m_targetIcons[5].GetRawValue());
        stmt->setBinary(index++, m_targetIcons[6].GetRawValue());
        stmt->setBinary(index++, m_targetIcons[7].GetRawValue());
        stmt->setUInt8(index++, uint8(m_groupFlags));
        stmt->setUInt32(index++, uint8(m_dungeonDifficulty));
        stmt->setUInt32(index++, uint8(m_raidDifficulty));
        stmt->setUInt32(index++, uint8(m_legacyRaidDifficulty));
        stmt->setUInt64(index++, m_masterLooterGuid.GetCounter());

        CharacterDatabase.Execute(stmt);

        Group::ConvertLeaderInstancesToGroup(leader, this, false);

        ASSERT(AddMember(leader)); // If the leader can't be added to a new group because it appears full, something is clearly wrong.
    }
    else if (!AddMember(leader))
        return false;

    return true;
}

void Group::LoadGroupFromDB(Field* fields)
{
    m_dbStoreId = fields[17].GetUInt32();
    m_guid = ObjectGuid::Create<HighGuid::Party>(sGroupMgr->GenerateGroupId());
    m_leaderGuid = ObjectGuid::Create<HighGuid::Player>(fields[0].GetUInt64());

    // group leader not exist
    if (!sCharacterCache->GetCharacterNameByGuid(m_leaderGuid, m_leaderName))
        return;

    m_lootMethod = LootMethod(fields[1].GetUInt8());
    m_looterGuid = ObjectGuid::Create<HighGuid::Player>(fields[2].GetUInt64());
    m_lootThreshold = ItemQualities(fields[3].GetUInt8());

    for (uint8 i = 0; i < TARGET_ICONS_COUNT; ++i)
        m_targetIcons[i].SetRawValue(fields[4 + i].GetBinary());

    m_groupFlags  = GroupFlags(fields[12].GetUInt8());
    if (m_groupFlags & GROUP_FLAG_RAID)
        _initRaidSubGroupsCounter();

    m_dungeonDifficulty = Player::CheckLoadedDungeonDifficultyID(Difficulty(fields[13].GetUInt8()));
    m_raidDifficulty = Player::CheckLoadedRaidDifficultyID(Difficulty(fields[14].GetUInt8()));
    m_legacyRaidDifficulty = Player::CheckLoadedLegacyRaidDifficultyID(Difficulty(fields[15].GetUInt8()));

    m_masterLooterGuid = ObjectGuid::Create<HighGuid::Player>(fields[16].GetUInt64());

    if (m_groupFlags & GROUP_FLAG_LFG)
        sLFGMgr->_LoadFromDB(fields, GetGUID());
}

void Group::LoadMemberFromDB(ObjectGuid::LowType guidLow, uint8 memberFlags, uint8 subgroup, uint8 roles)
{
    MemberSlot member;
    member.guid = ObjectGuid::Create<HighGuid::Player>(guidLow);

    // skip non-existed member
    if (!sCharacterCache->GetCharacterNameAndClassByGUID(member.guid, member.name, member._class))
    {
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_DEL_GROUP_MEMBER);
        stmt->setUInt64(0, guidLow);
        CharacterDatabase.Execute(stmt);
        return;
    }

    member.group        = subgroup;
    member.flags        = memberFlags;
    member.roles        = roles;
    member.readyChecked = false;

    m_memberSlots.push_back(member);

    SubGroupCounterIncrease(subgroup);

    sLFGMgr->SetupGroupMember(member.guid, GetGUID());
}

void Group::ConvertToLFG()
{
    m_groupFlags = GroupFlags(m_groupFlags | GROUP_FLAG_LFG | GROUP_FLAG_LFG_RESTRICTED);
    m_groupCategory = GROUP_CATEGORY_INSTANCE;
    m_lootMethod = GROUP_LOOT;
    if (!isBGGroup() && !isBFGroup())
    {
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_GROUP_TYPE);

        stmt->setUInt8(0, uint8(m_groupFlags));
        stmt->setUInt32(1, m_dbStoreId);

        CharacterDatabase.Execute(stmt);
    }

    SendUpdate();
}

void Group::ConvertToRaid()
{
    m_groupFlags = GroupFlags(m_groupFlags | GROUP_FLAG_RAID);

    _initRaidSubGroupsCounter();

    if (!isBGGroup() && !isBFGroup())
    {
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_GROUP_TYPE);

        stmt->setUInt8(0, uint8(m_groupFlags));
        stmt->setUInt32(1, m_dbStoreId);

        CharacterDatabase.Execute(stmt);
    }

    SendUpdate();

    // update quest related GO states (quest activity dependent from raid membership)
    for (member_citerator citr = m_memberSlots.begin(); citr != m_memberSlots.end(); ++citr)
        if (Player* player = ObjectAccessor::FindPlayer(citr->guid))
            player->UpdateForQuestWorldObjects();
}

void Group::ConvertToGroup()
{
    if (m_memberSlots.size() > 5)
        return; // What message error should we send?

    m_groupFlags = GroupFlags(GROUP_FLAG_NONE);

    if (m_subGroupsCounts)
    {
        delete[] m_subGroupsCounts;
        m_subGroupsCounts = nullptr;
    }

    if (!isBGGroup() && !isBFGroup())
    {
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_GROUP_TYPE);

        stmt->setUInt8(0, uint8(m_groupFlags));
        stmt->setUInt32(1, m_dbStoreId);

        CharacterDatabase.Execute(stmt);
    }

    SendUpdate();

    // update quest related GO states (quest activity dependent from raid membership)
    for (member_citerator citr = m_memberSlots.begin(); citr != m_memberSlots.end(); ++citr)
        if (Player* player = ObjectAccessor::FindPlayer(citr->guid))
            player->UpdateForQuestWorldObjects();
}

bool Group::AddInvite(Player* player)
{
    if (!player || player->GetGroupInvite())
        return false;
    Group* group = player->GetGroup();
    if (group && (group->isBGGroup() || group->isBFGroup()))
        group = player->GetOriginalGroup();
    if (group)
        return false;

    RemoveInvite(player);

    m_invitees.insert(player);

    player->SetGroupInvite(this);

    sScriptMgr->OnGroupInviteMember(this, player->GetGUID());

    return true;
}

bool Group::AddLeaderInvite(Player* player)
{
    if (!AddInvite(player))
        return false;

    m_leaderGuid = player->GetGUID();
    m_leaderName = player->GetName();
    return true;
}

void Group::RemoveInvite(Player* player)
{
    if (player)
    {
        m_invitees.erase(player);
        player->SetGroupInvite(nullptr);
    }
}

void Group::RemoveAllInvites()
{
    for (InvitesList::iterator itr=m_invitees.begin(); itr != m_invitees.end(); ++itr)
        if (*itr)
            (*itr)->SetGroupInvite(nullptr);

    m_invitees.clear();
}

Player* Group::GetInvited(ObjectGuid guid) const
{
    for (InvitesList::const_iterator itr = m_invitees.begin(); itr != m_invitees.end(); ++itr)
    {
        if ((*itr) && (*itr)->GetGUID() == guid)
            return (*itr);
    }
    return nullptr;
}

Player* Group::GetInvited(const std::string& name) const
{
    for (InvitesList::const_iterator itr = m_invitees.begin(); itr != m_invitees.end(); ++itr)
    {
        if ((*itr) && (*itr)->GetName() == name)
            return (*itr);
    }
    return nullptr;
}

bool Group::AddMember(Player* player)
{
    // Get first not-full group
    uint8 subGroup = 0;
    if (m_subGroupsCounts)
    {
        bool groupFound = false;
        for (; subGroup < MAX_RAID_SUBGROUPS; ++subGroup)
        {
            if (m_subGroupsCounts[subGroup] < MAX_GROUP_SIZE)
            {
                groupFound = true;
                break;
            }
        }
        // We are raid group and no one slot is free
        if (!groupFound)
            return false;
    }

    MemberSlot member;
    member.guid         = player->GetGUID();
    member.name         = player->GetName();
    member._class       = player->getClass();
    member.group        = subGroup;
    member.flags        = 0;
    member.roles        = 0;
    member.readyChecked = false;
    m_memberSlots.push_back(member);

    SubGroupCounterIncrease(subGroup);

    player->SetGroupInvite(nullptr);
    if (player->GetGroup())
    {
        if (isBGGroup() || isBFGroup()) // if player is in group and he is being added to BG raid group, then call SetBattlegroundRaid()
            player->SetBattlegroundOrBattlefieldRaid(this, subGroup);
        else //if player is in bg raid and we are adding him to normal group, then call SetOriginalGroup()
            player->SetOriginalGroup(this, subGroup);
    }
    else //if player is not in group, then call set group
        player->SetGroup(this, subGroup);

    player->SetPartyType(m_groupCategory, GROUP_TYPE_NORMAL);
    player->ResetGroupUpdateSequenceIfNeeded(this);

    // if the same group invites the player back, cancel the homebind timer
    player->m_InstanceValid = player->CheckInstanceValidity(false);

    if (!isRaidGroup())                                      // reset targetIcons for non-raid-groups
    {
        for (uint8 i = 0; i < TARGET_ICONS_COUNT; ++i)
            m_targetIcons[i].Clear();
    }

    // insert into the table if we're not a battleground group
    if (!isBGGroup() && !isBFGroup())
    {
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_GROUP_MEMBER);

        stmt->setUInt32(0, m_dbStoreId);
        stmt->setUInt64(1, member.guid.GetCounter());
        stmt->setUInt8(2, member.flags);
        stmt->setUInt8(3, member.group);
        stmt->setUInt8(4, member.roles);

        CharacterDatabase.Execute(stmt);
    }

    SendUpdate();
    sScriptMgr->OnGroupAddMember(this, player->GetGUID());

    if (!IsLeader(player->GetGUID()) && !isBGGroup() && !isBFGroup())
    {
        // reset the new member's instances, unless he is currently in one of them
        // including raid/heroic instances that they are not permanently bound to!
        player->ResetInstances(INSTANCE_RESET_GROUP_JOIN, false, false);
        player->ResetInstances(INSTANCE_RESET_GROUP_JOIN, true, false);
        player->ResetInstances(INSTANCE_RESET_GROUP_JOIN, true, true);

        if (player->GetDungeonDifficultyID() != GetDungeonDifficultyID())
        {
            player->SetDungeonDifficultyID(GetDungeonDifficultyID());
            player->SendDungeonDifficulty();
        }
        if (player->GetRaidDifficultyID() != GetRaidDifficultyID())
        {
            player->SetRaidDifficultyID(GetRaidDifficultyID());
            player->SendRaidDifficulty(false);
        }
        if (player->GetLegacyRaidDifficultyID() != GetLegacyRaidDifficultyID())
        {
            player->SetLegacyRaidDifficultyID(GetLegacyRaidDifficultyID());
            player->SendRaidDifficulty(true);
        }
    }

    player->SetGroupUpdateFlag(GROUP_UPDATE_FULL);
    if (Pet* pet = player->GetPet())
        pet->SetGroupUpdateFlag(GROUP_UPDATE_PET_FULL);

    UpdatePlayerOutOfRange(player);

    // quest related GO state dependent from raid membership
    if (isRaidGroup())
        player->UpdateForQuestWorldObjects();

    {
        // Broadcast new player group member fields to rest of the group
        UpdateData groupData(player->GetMapId());
        WorldPacket groupDataPacket;

        // Broadcast group members' fields to player
        for (GroupReference* itr = GetFirstMember(); itr != nullptr; itr = itr->next())
        {
            if (itr->GetSource() == player)
                continue;

            if (Player* existingMember = itr->GetSource())
            {
                if (player->HaveAtClient(existingMember))
                    existingMember->BuildValuesUpdateBlockForPlayerWithFlag(&groupData, UF::UpdateFieldFlag::PartyMember, player);

                if (existingMember->HaveAtClient(player))
                {
                    UpdateData newData(player->GetMapId());
                    WorldPacket newDataPacket;
                    player->BuildValuesUpdateBlockForPlayerWithFlag(&newData, UF::UpdateFieldFlag::PartyMember, existingMember);
                    if (newData.HasData())
                    {
                        newData.BuildPacket(&newDataPacket);
                        existingMember->SendDirectMessage(&newDataPacket);
                    }
                }
            }
        }

        if (groupData.HasData())
        {
            groupData.BuildPacket(&groupDataPacket);
            player->SendDirectMessage(&groupDataPacket);
        }
    }

    if (m_maxEnchantingLevel < player->GetSkillValue(SKILL_ENCHANTING))
        m_maxEnchantingLevel = player->GetSkillValue(SKILL_ENCHANTING);

    return true;
}

bool Group::RemoveMember(ObjectGuid guid, const RemoveMethod& method /*= GROUP_REMOVEMETHOD_DEFAULT*/, ObjectGuid kicker /*= 0*/, const char* reason /*= nullptr*/)
{
    BroadcastGroupUpdate();

    sScriptMgr->OnGroupRemoveMember(this, guid, method, kicker, reason);

    Player* player = ObjectAccessor::FindConnectedPlayer(guid);
    if (player)
    {
        for (GroupReference* itr = GetFirstMember(); itr != nullptr; itr = itr->next())
        {
            if (Player* groupMember = itr->GetSource())
            {
                if (groupMember->GetGUID() == guid)
                    continue;

                groupMember->RemoveAllGroupBuffsFromCaster(guid);
                player->RemoveAllGroupBuffsFromCaster(groupMember->GetGUID());
            }
        }
    }

    // LFG group vote kick handled in scripts
    if (isLFGGroup() && method == GROUP_REMOVEMETHOD_KICK)
        return !m_memberSlots.empty();

    // remove member and change leader (if need) only if strong more 2 members _before_ member remove (BG/BF allow 1 member group)
    if (GetMembersCount() > ((isBGGroup() || isLFGGroup() || isBFGroup()) ? 1u : 2u))
    {
        if (player)
        {
            // Battleground group handling
            if (isBGGroup() || isBFGroup())
                player->RemoveFromBattlegroundOrBattlefieldRaid();
            else
            // Regular group
            {
                if (player->GetOriginalGroup() == this)
                    player->SetOriginalGroup(nullptr);
                else
                    player->SetGroup(nullptr);

                // quest related GO state dependent from raid membership
                player->UpdateForQuestWorldObjects();
            }

            player->SetPartyType(m_groupCategory, GROUP_TYPE_NONE);

            if (method == GROUP_REMOVEMETHOD_KICK || method == GROUP_REMOVEMETHOD_KICK_LFG)
                player->SendDirectMessage(WorldPackets::Party::GroupUninvite().Write());

            _homebindIfInstance(player);
        }

        // Remove player from group in DB
        if (!isBGGroup() && !isBFGroup())
        {
            CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_DEL_GROUP_MEMBER);
            stmt->setUInt64(0, guid.GetCounter());
            CharacterDatabase.Execute(stmt);
            DelinkMember(guid);
        }

        // Reevaluate group enchanter if the leaving player had enchanting skill or the player is offline
        if (!player || player->GetSkillValue(SKILL_ENCHANTING))
            ResetMaxEnchantingLevel();

        // Update subgroups
        member_witerator slot = _getMemberWSlot(guid);
        if (slot != m_memberSlots.end())
        {
            SubGroupCounterDecrease(slot->group);
            m_memberSlots.erase(slot);
        }

        // Pick new leader if necessary
        if (m_leaderGuid == guid)
        {
            for (member_witerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
            {
                if (ObjectAccessor::FindConnectedPlayer(itr->guid))
                {
                    ChangeLeader(itr->guid);
                    break;
                }
            }
        }

        SendUpdate();

        if (isLFGGroup() && GetMembersCount() == 1)
        {
            Player* leader = ObjectAccessor::FindConnectedPlayer(GetLeaderGUID());
            uint32 mapId = sLFGMgr->GetDungeonMapId(GetGUID());
            if (!mapId || !leader || (leader->IsAlive() && leader->GetMapId() != mapId))
            {
                Disband();
                return false;
            }
        }

        if (m_memberMgr.getSize() < ((isLFGGroup() || isBGGroup()) ? 1u : 2u))
            Disband();
        else if (player)
        {
            // send update to removed player too so party frames are destroyed clientside
            SendUpdateDestroyGroupToPlayer(player);
        }

        return true;
    }
    // If group size before player removal <= 2 then disband it
    else
    {
        Disband();
        return false;
    }
}

void Group::ChangeLeader(ObjectGuid newLeaderGuid, int8 partyIndex)
{
    member_witerator slot = _getMemberWSlot(newLeaderGuid);

    if (slot == m_memberSlots.end())
        return;

    Player* newLeader = ObjectAccessor::FindConnectedPlayer(slot->guid);

    // Don't allow switching leader to offline players
    if (!newLeader)
        return;

    sScriptMgr->OnGroupChangeLeader(this, newLeaderGuid, m_leaderGuid);

    if (!isBGGroup() && !isBFGroup())
    {
        CharacterDatabaseTransaction trans = CharacterDatabase.BeginTransaction();

        // Remove the groups permanent instance bindings
        for (auto difficultyItr = m_boundInstances.begin(); difficultyItr != m_boundInstances.end(); ++difficultyItr)
        {
            for (auto itr = difficultyItr->second.begin(); itr != difficultyItr->second.end();)
            {
                // Do not unbind saves of instances that already had map created (a newLeader entered)
                // forcing a new instance with another leader requires group disbanding (confirmed on retail)
                if (itr->second.perm && !sMapMgr->FindMap(itr->first, itr->second.save->GetInstanceId()))
                {
                    CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_DEL_GROUP_INSTANCE_PERM_BINDING);
                    stmt->setUInt32(0, m_dbStoreId);
                    stmt->setUInt32(1, itr->second.save->GetInstanceId());
                    trans->Append(stmt);

                    itr->second.save->RemoveGroup(this);
                    difficultyItr->second.erase(itr++);
                }
                else
                    ++itr;
            }
        }

        // Copy the permanent binds from the new leader to the group
        Group::ConvertLeaderInstancesToGroup(newLeader, this, true);

        // Update the group leader
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_GROUP_LEADER);

        stmt->setUInt64(0, newLeader->GetGUID().GetCounter());
        stmt->setUInt32(1, m_dbStoreId);

        trans->Append(stmt);

        CharacterDatabase.CommitTransaction(trans);
    }

    if (Player* oldLeader = ObjectAccessor::FindConnectedPlayer(m_leaderGuid))
        oldLeader->RemovePlayerFlag(PLAYER_FLAGS_GROUP_LEADER);

    newLeader->AddPlayerFlag(PLAYER_FLAGS_GROUP_LEADER);
    m_leaderGuid = newLeader->GetGUID();
    m_leaderName = newLeader->GetName();
    ToggleGroupMemberFlag(slot, MEMBER_FLAG_ASSISTANT, false);

    WorldPackets::Party::GroupNewLeader groupNewLeader;
    groupNewLeader.Name = m_leaderName;
    groupNewLeader.PartyIndex = partyIndex;
    BroadcastPacket(groupNewLeader.Write(), true);
}

/// convert the player's binds to the group
void Group::ConvertLeaderInstancesToGroup(Player* player, Group* group, bool switchLeader)
{
    // copy all binds to the group, when changing leader it's assumed the character
    // will not have any solo binds
    for (auto difficultyItr = player->m_boundInstances.begin(); difficultyItr != player->m_boundInstances.end(); ++difficultyItr)
    {
        for (auto itr = difficultyItr->second.begin(); itr != difficultyItr->second.end();)
        {
            if (!switchLeader || !group->GetBoundInstance(itr->second.save->GetDifficultyID(), itr->first))
                if (itr->second.extendState) // not expired
                    group->BindToInstance(itr->second.save, itr->second.perm, false);

            // permanent binds are not removed
            if (switchLeader && !itr->second.perm)
            {
                // increments itr in call
                player->UnbindInstance(itr, difficultyItr, false);
            }
            else
                ++itr;
        }
    }

    /* if group leader is in a non-raid dungeon map and nobody is actually bound to this map then the group can "take over" the instance *
    * (example: two-player group disbanded by disconnect where the player reconnects within 60 seconds and the group is reformed)       */
    if (Map* playerMap = player->GetMap())
        if (!switchLeader && playerMap->IsNonRaidDungeon())
            if (InstanceSave* save = sInstanceSaveMgr->GetInstanceSave(playerMap->GetInstanceId()))
                if (save->GetGroupCount() == 0 && save->GetPlayerCount() == 0)
                {
                    TC_LOG_DEBUG("maps", "Group::ConvertLeaderInstancesToGroup: Group for player %s is taking over unbound instance map %d with Id %d", player->GetName().c_str(), playerMap->GetId(), playerMap->GetInstanceId());
                    // if nobody is saved to this, then the save wasn't permanent
                    group->BindToInstance(save, false, false);
                }
}

void Group::Disband(bool hideDestroy /* = false */)
{
    sScriptMgr->OnGroupDisband(this);

    Player* player;
    for (member_citerator citr = m_memberSlots.begin(); citr != m_memberSlots.end(); ++citr)
    {
        player = ObjectAccessor::FindConnectedPlayer(citr->guid);
        if (!player)
            continue;

        //we cannot call _removeMember because it would invalidate member iterator
        //if we are removing player from battleground raid
        if (isBGGroup() || isBFGroup())
            player->RemoveFromBattlegroundOrBattlefieldRaid();
        else
        {
            //we can remove player who is in battleground from his original group
            if (player->GetOriginalGroup() == this)
                player->SetOriginalGroup(nullptr);
            else
                player->SetGroup(nullptr);
        }

        player->SetPartyType(m_groupCategory, GROUP_TYPE_NONE);

        // quest related GO state dependent from raid membership
        if (isRaidGroup())
            player->UpdateForQuestWorldObjects();

        if (!hideDestroy)
            player->SendDirectMessage(WorldPackets::Party::GroupDestroyed().Write());

        SendUpdateDestroyGroupToPlayer(player);

        _homebindIfInstance(player);
    }
    m_memberSlots.clear();

    RemoveAllInvites();

    if (!isBGGroup() && !isBFGroup())
    {
        CharacterDatabaseTransaction trans = CharacterDatabase.BeginTransaction();

        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_DEL_GROUP);
        stmt->setUInt32(0, m_dbStoreId);
        trans->Append(stmt);

        stmt = CharacterDatabase.GetPreparedStatement(CHAR_DEL_GROUP_MEMBER_ALL);
        stmt->setUInt32(0, m_dbStoreId);
        trans->Append(stmt);

        CharacterDatabase.CommitTransaction(trans);

        ResetInstances(INSTANCE_RESET_GROUP_DISBAND, false, false, nullptr);
        ResetInstances(INSTANCE_RESET_GROUP_DISBAND, true, false, nullptr);
        ResetInstances(INSTANCE_RESET_GROUP_DISBAND, true, true, nullptr);

        stmt = CharacterDatabase.GetPreparedStatement(CHAR_DEL_LFG_DATA);
        stmt->setUInt32(0, m_dbStoreId);
        CharacterDatabase.Execute(stmt);

        sGroupMgr->FreeGroupDbStoreId(this);
    }

    sGroupMgr->RemoveGroup(this);
    delete this;
}

/*********************************************************/
/***                  ARENA SYSTEM                     ***/
/*********************************************************/
void Group::OfflineMemberLost(ObjectGuid guid, uint32 againstMatchmakerRating, uint8 slot, int32 MatchmakerRatingChange)
{
    // Called for offline player after ending rated arena match!
    for (member_witerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
    {
        if (itr->guid == guid)
        {
            if (Player* p = ObjectAccessor::FindPlayer(guid))
            {
                // update personal rating
                int32 mod = ArenaHelper::GetRatingMod(p->GetArenaPersonalRating(slot), againstMatchmakerRating, false);
                p->SetArenaPersonalRating(slot, std::max(0, (int)p->GetArenaPersonalRating(slot) + mod));

                // update matchmaker rating
                p->SetArenaMatchMakerRating(slot, std::max(0, (int)p->GetArenaMatchMakerRating(slot) + MatchmakerRatingChange));

                // update personal played stats
                p->IncrementWeekGames(slot);
                p->IncrementSeasonGames(slot);
                p->IncrementDayGames(slot);
                return;
            }
        }
    }
}

void Group::MemberLost(Player* player, uint32 againstMatchmakerRating, uint8 slot, int32 MatchmakerRatingChange)
{
    // Called for each participant of a match after losing
    for (member_witerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
    {
        if (itr->guid == player->GetGUID())
        {
            // Update personal rating
            int32 mod = ArenaHelper::GetRatingMod(player->GetArenaPersonalRating(slot), againstMatchmakerRating, false);
            player->SetArenaPersonalRating(slot, std::max(0, (int)player->GetArenaPersonalRating(slot) + mod));

            // Update matchmaker rating
            player->SetArenaMatchMakerRating(slot, std::max(0, (int)player->GetArenaMatchMakerRating(slot) + MatchmakerRatingChange));

            // Update personal played stats
            player->IncrementWeekGames(slot);
            player->IncrementSeasonGames(slot);
            player->IncrementDayGames(slot);
            return;
        }
    }
}

uint32 Group::GetRating(uint8 slot)
{
    uint32 rating = 0;
    uint32 count = 0;
    for (member_witerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
    {
        if (Player* player = ObjectAccessor::FindPlayer(itr->guid))
        {
            rating += player->GetArenaPersonalRating(slot);
            ++count;
        }
    }

    if (!count)
        count = 1;

    rating /= count;
    return rating;
}

uint32 Group::GetAverageMMR(uint8 slot)
{
    uint32 rating = 0;
    uint32 count = 0;
    for (member_witerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
    {
        if (Player* player = ObjectAccessor::FindPlayer(itr->guid))
        {
            rating += player->GetArenaMatchMakerRating(slot);
            ++count;
        }
    }

    if (!count)
        count = 1;

    rating /= count;
    return rating;
}

void Group::WonAgainst(uint32 Own_MMRating, uint32 Opponent_MMRating, int32& rating_change, uint8 slot)
{
    // Called when the team has won
    // Change in Matchmaker rating
    int32 mod = ArenaHelper::GetMatchmakerRatingMod(Own_MMRating, Opponent_MMRating, true);

    for (member_witerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
    {
        if (Player* player = ObjectAccessor::FindPlayer(itr->guid))
        {
            // Change in Team Rating
            rating_change = ArenaHelper::GetRatingMod(player->GetArenaPersonalRating(slot), Opponent_MMRating, true);

            if (player->GetArenaPersonalRating(slot) < 1000)
                rating_change = 96;

            if (player->GetBattleground())
                for (auto playerScore : player->GetBattleground()->GetPlayerScores())
                    if (playerScore.first == itr->guid)
                        playerScore.second->RatingChange = rating_change;

            player->SetArenaPersonalRating(slot, player->GetArenaPersonalRating(slot) + rating_change);
            player->SetArenaMatchMakerRating(slot, player->GetArenaMatchMakerRating(slot) + mod);

            player->IncrementWeekWins(slot);
            player->IncrementSeasonWins(slot);
            player->IncrementDayGames(slot);
            player->IncrementDayWins(slot);
            player->IncrementWeekGames(slot);
            player->IncrementSeasonGames(slot);

        }
    }
}

void Group::LostAgainst(uint32 Own_MMRating, uint32 Opponent_MMRating, int32& rating_change, uint8 slot)
{
    // Called when the team has lost
    // Change in Matchmaker Rating
    int32 mod = ArenaHelper::GetMatchmakerRatingMod(Own_MMRating, Opponent_MMRating, false);

    for (member_witerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
    {
        if (Player* player = ObjectAccessor::FindPlayer(itr->guid))
        {
            // Change in Team Rating
            rating_change = ArenaHelper::GetRatingMod(player->GetArenaMatchMakerRating(slot), Opponent_MMRating, false);

            if (player->GetBattleground())
                for (auto playerScore : player->GetBattleground()->GetPlayerScores())
                    if (playerScore.first == itr->guid)
                        playerScore.second->RatingChange = rating_change;

            player->SetArenaPersonalRating(slot, std::max(0, (int)player->GetArenaPersonalRating(slot) + rating_change));
            player->SetArenaMatchMakerRating(slot, std::max(0, (int)player->GetArenaMatchMakerRating(slot) + mod));

            player->IncrementWeekGames(slot);
            player->IncrementSeasonGames(slot);
            player->IncrementDayGames(slot);
        }
    }
}

void Group::FinishGame(int32 rating_change, uint8 slot)
{
    for (member_witerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
    {
        if (Player* player = ObjectAccessor::FindPlayer(itr->guid))
        {
            if (player->GetBattleground())
                for (auto playerScore : player->GetBattleground()->GetPlayerScores())
                    if (playerScore.first == itr->guid)
                        playerScore.second->RatingChange = rating_change;

            player->SetArenaPersonalRating(slot, std::max(0, (int)player->GetArenaPersonalRating(slot) + rating_change));
            player->IncrementWeekGames(slot);
            player->IncrementSeasonGames(slot);
            player->IncrementDayGames(slot);
        }
    }
}

void Group::SetTargetIcon(uint8 symbol, ObjectGuid target, ObjectGuid changedBy, uint8 partyIndex)
{
    if (symbol >= TARGET_ICONS_COUNT)
        return;

    // clean other icons
    if (!target.IsEmpty())
        for (uint8 i = 0; i < TARGET_ICONS_COUNT; ++i)
            if (m_targetIcons[i] == target)
                SetTargetIcon(i, ObjectGuid::Empty, changedBy, partyIndex);

    m_targetIcons[symbol] = target;

    WorldPackets::Party::SendRaidTargetUpdateSingle updateSingle;
    updateSingle.PartyIndex = partyIndex;
    updateSingle.Target = target;
    updateSingle.ChangedBy = changedBy;
    updateSingle.Symbol = symbol;
    BroadcastPacket(updateSingle.Write(), true);
}

void Group::SendTargetIconList(WorldSession* session, int8 partyIndex)
{
    if (!session)
        return;

    WorldPackets::Party::SendRaidTargetUpdateAll updateAll;
    updateAll.PartyIndex = partyIndex;
    for (uint8 i = 0; i < TARGET_ICONS_COUNT; i++)
        updateAll.TargetIcons.insert(std::pair<uint8, ObjectGuid>(i, m_targetIcons[i]));

    session->SendPacket(updateAll.Write());
}

void Group::SendUpdate()
{
    for (member_witerator witr = m_memberSlots.begin(); witr != m_memberSlots.end(); ++witr)
        SendUpdateToPlayer(witr->guid, &(*witr));
}

void Group::SendUpdateToPlayer(ObjectGuid playerGUID, MemberSlot* slot)
{
    Player* player = ObjectAccessor::FindConnectedPlayer(playerGUID);

    if (!player || !player->GetSession() || player->GetGroup() != this)
        return;

    // if MemberSlot wasn't provided
    if (!slot)
    {
        member_witerator witr = _getMemberWSlot(playerGUID);

        if (witr == m_memberSlots.end()) // if there is no MemberSlot for such a player
            return;

        slot = &(*witr);
    }

    WorldPackets::Party::PartyUpdate partyUpdate;

    partyUpdate.PartyFlags = m_groupFlags;
    partyUpdate.PartyIndex = m_groupCategory;
    partyUpdate.PartyType = IsCreated() ? GROUP_TYPE_NORMAL : GROUP_TYPE_NONE;

    partyUpdate.PartyGUID = m_guid;
    partyUpdate.LeaderGUID = m_leaderGuid;

    partyUpdate.SequenceNum = player->NextGroupUpdateSequenceNumber(m_groupCategory);

    partyUpdate.MyIndex = -1;
    uint8 index = 0;
    for (member_citerator citr = m_memberSlots.begin(); citr != m_memberSlots.end(); ++citr, ++index)
    {
        if (slot->guid == citr->guid)
            partyUpdate.MyIndex = index;

        Player* member = ObjectAccessor::FindConnectedPlayer(citr->guid);

        WorldPackets::Party::PartyPlayerInfo playerInfos;

        playerInfos.GUID = citr->guid;
        playerInfos.Name = citr->name;
        playerInfos.Class = citr->_class;

        playerInfos.Status = MEMBER_STATUS_OFFLINE;
        if (member && member->GetSession() && !member->GetSession()->PlayerLogout())
            playerInfos.Status = MEMBER_STATUS_ONLINE | (isBGGroup() || isBFGroup() ? MEMBER_STATUS_PVP : 0);

        playerInfos.Subgroup = citr->group;         // groupid
        playerInfos.Flags = citr->flags;            // See enum GroupMemberFlags
        playerInfos.RolesAssigned = citr->roles;    // Lfg Roles

        partyUpdate.PlayerList.push_back(playerInfos);
    }

    if (GetMembersCount() > 1)
    {
        // LootSettings
        partyUpdate.LootSettings = boost::in_place();
        partyUpdate.LootSettings->Method = m_lootMethod;
        partyUpdate.LootSettings->Threshold = m_lootThreshold;
        partyUpdate.LootSettings->LootMaster = m_lootMethod == MASTER_LOOT ? m_masterLooterGuid : ObjectGuid::Empty;

        // Difficulty Settings
        partyUpdate.DifficultySettings = boost::in_place();
        partyUpdate.DifficultySettings->DungeonDifficultyID = m_dungeonDifficulty;
        partyUpdate.DifficultySettings->RaidDifficultyID = m_raidDifficulty;
        partyUpdate.DifficultySettings->LegacyRaidDifficultyID = m_legacyRaidDifficulty;
    }

    // LfgInfos
    if (isLFGGroup())
    {
        partyUpdate.LfgInfos = boost::in_place();

        partyUpdate.LfgInfos->Slot = sLFGMgr->GetLFGDungeonEntry(sLFGMgr->GetDungeon(m_guid));
        partyUpdate.LfgInfos->BootCount = 0;
        partyUpdate.LfgInfos->Aborted = false;

        partyUpdate.LfgInfos->MyFlags = sLFGMgr->GetState(m_guid) == lfg::LFG_STATE_FINISHED_DUNGEON ? 2 : 0;
        partyUpdate.LfgInfos->MyRandomSlot = sLFGMgr->GetSelectedRandomDungeon(player->GetGUID());

        partyUpdate.LfgInfos->MyPartialClear = 0;
        partyUpdate.LfgInfos->MyGearDiff = 0.0f;
        partyUpdate.LfgInfos->MyFirstReward = false;
        if (lfg::LfgReward const* reward = sLFGMgr->GetRandomDungeonReward(partyUpdate.LfgInfos->MyRandomSlot, player->getLevel()))
            if (Quest const* quest = sObjectMgr->GetQuestTemplate(reward->firstQuest))
                partyUpdate.LfgInfos->MyFirstReward = player->CanRewardQuest(quest, false);

        partyUpdate.LfgInfos->MyStrangerCount = 0;
        partyUpdate.LfgInfos->MyKickVoteCount = 0;
    }

    player->GetSession()->SendPacket(partyUpdate.Write());
}

void Group::SendUpdateDestroyGroupToPlayer(Player* player) const
{
    WorldPackets::Party::PartyUpdate partyUpdate;
    partyUpdate.PartyFlags = GROUP_FLAG_DESTROYED;
    partyUpdate.PartyIndex = m_groupCategory;
    partyUpdate.PartyType = GROUP_TYPE_NONE;
    partyUpdate.PartyGUID = m_guid;
    partyUpdate.MyIndex = -1;
    partyUpdate.SequenceNum = player->NextGroupUpdateSequenceNumber(m_groupCategory);
    player->GetSession()->SendPacket(partyUpdate.Write());
}

void Group::UpdatePlayerOutOfRange(Player* player)
{
    if (!player || !player->IsInWorld())
        return;

    WorldPackets::Party::PartyMemberState packet;
    packet.Initialize(player);

    Player* member;
    for (GroupReference* itr = GetFirstMember(); itr != nullptr; itr = itr->next())
    {
        member = itr->GetSource();
        if (member && member != player && (!member->IsInMap(player) || !member->IsWithinDist(player, member->GetSightRange(), false)))
            member->GetSession()->SendPacket(packet.Write());
    }
}

void Group::BroadcastAddonMessagePacket(WorldPacket const* packet, const std::string& prefix, bool ignorePlayersInBGRaid, int group /*= -1*/, ObjectGuid ignore /*= ObjectGuid::Empty*/)
{
    for (GroupReference* itr = GetFirstMember(); itr != nullptr; itr = itr->next())
    {
        Player* player = itr->GetSource();
        if (!player || (!ignore.IsEmpty() && player->GetGUID() == ignore) || (ignorePlayersInBGRaid && player->GetGroup() != this))
            continue;

        if (WorldSession* session = player->GetSession())
            if (session && (group == -1 || itr->getSubGroup() == group))
                if (session->IsAddonRegistered(prefix))
                    session->SendPacket(packet);
    }
}

void Group::BroadcastPacket(WorldPacket const* packet, bool ignorePlayersInBGRaid, int group, ObjectGuid ignoredPlayer)
{
    for (GroupReference* itr = GetFirstMember(); itr != nullptr; itr = itr->next())
    {
        Player* player = itr->GetSource();
        if (!player || (!ignoredPlayer.IsEmpty() && player->GetGUID() == ignoredPlayer) || (ignorePlayersInBGRaid && player->GetGroup() != this))
            continue;

        if (player->GetSession() && (group == -1 || itr->getSubGroup() == group))
            player->GetSession()->SendPacket(packet);
    }
}

bool Group::_setMembersGroup(ObjectGuid guid, uint8 group)
{
    member_witerator slot = _getMemberWSlot(guid);
    if (slot == m_memberSlots.end())
        return false;

    slot->group = group;

    SubGroupCounterIncrease(group);

    if (!isBGGroup() && !isBFGroup())
    {
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_GROUP_MEMBER_SUBGROUP);

        stmt->setUInt8(0, group);
        stmt->setUInt64(1, guid.GetCounter());

        CharacterDatabase.Execute(stmt);
    }

    return true;
}

bool Group::SameSubGroup(Player const* member1, Player const* member2) const
{
    if (!member1 || !member2)
        return false;

    if (member1->GetGroup() != this || member2->GetGroup() != this)
        return false;
    else
        return member1->GetSubGroup() == member2->GetSubGroup();
}

// Allows setting sub groups both for online or offline members
void Group::ChangeMembersGroup(ObjectGuid guid, uint8 group)
{
    // Only raid groups have sub groups
    if (!isRaidGroup())
        return;

    // Check if player is really in the raid
    member_witerator slot = _getMemberWSlot(guid);
    if (slot == m_memberSlots.end())
        return;

    uint8 prevSubGroup = slot->group;
    // Abort if the player is already in the target sub group
    if (prevSubGroup == group)
        return;

    // Update the player slot with the new sub group setting
    slot->group = group;

    // Increase the counter of the new sub group..
    SubGroupCounterIncrease(group);

    // ..and decrease the counter of the previous one
    SubGroupCounterDecrease(prevSubGroup);

    // Preserve new sub group in database for non-raid groups
    if (!isBGGroup() && !isBFGroup())
    {
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_GROUP_MEMBER_SUBGROUP);

        stmt->setUInt8(0, group);
        stmt->setUInt64(1, guid.GetCounter());

        CharacterDatabase.Execute(stmt);
    }

    // In case the moved player is online, update the player object with the new sub group references
    if (Player* player = ObjectAccessor::FindConnectedPlayer(guid))
    {
        if (player->GetGroup() == this)
            player->GetGroupRef().setSubGroup(group);
        else
        {
            // If player is in BG raid, it is possible that he is also in normal raid - and that normal raid is stored in m_originalGroup reference
            player->GetOriginalGroupRef().setSubGroup(group);
        }
    }

    // Broadcast the changes to the group
    SendUpdate();
}

void Group::SwapMembersGroups(ObjectGuid firstGuid, ObjectGuid secondGuid)
{
    if (!isRaidGroup())
        return;

    member_witerator slots[2];
    slots[0] = _getMemberWSlot(firstGuid);
    slots[1] = _getMemberWSlot(secondGuid);
    if (slots[0] == m_memberSlots.end() || slots[1] == m_memberSlots.end())
        return;

    if (slots[0]->group == slots[1]->group)
        return;

    uint8 tmp = slots[0]->group;
    slots[0]->group = slots[1]->group;
    slots[1]->group = tmp;

    CharacterDatabaseTransaction trans = CharacterDatabase.BeginTransaction();
    for (uint8 i = 0; i < 2; i++)
    {
        // Preserve new sub group in database for non-raid groups
        if (!isBGGroup() && !isBFGroup())
        {
            CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_GROUP_MEMBER_SUBGROUP);

            stmt->setUInt8(0, slots[i]->group);
            stmt->setUInt64(1, slots[i]->guid.GetCounter());

            trans->Append(stmt);
        }

        if (Player* player = ObjectAccessor::FindConnectedPlayer(slots[i]->guid))
        {
            if (player->GetGroup() == this)
                player->GetGroupRef().setSubGroup(slots[i]->group);
            else
                player->GetOriginalGroupRef().setSubGroup(slots[i]->group);
        }
    }
    CharacterDatabase.CommitTransaction(trans);

    SendUpdate();
}

// Retrieve the next Round-Roubin player for the group
//
// No update done if loot method is FFA.
//
// If the RR player is not yet set for the group, the first group member becomes the round-robin player.
// If the RR player is set, the next player in group becomes the round-robin player.
//
// If ifneed is true,
//      the current RR player is checked to be near the looted object.
//      if yes, no update done.
//      if not, he loses his turn.
void Group::UpdateLooterGuid(WorldObject* pLootedObject, bool ifneed)
{
    // round robin style looting applies for all low
    // quality items in each loot method except free for all
    if (GetLootMethod() == FREE_FOR_ALL)
        return;

    ObjectGuid oldLooterGUID = GetLooterGuid();
    member_citerator guid_itr = _getMemberCSlot(oldLooterGUID);
    if (guid_itr != m_memberSlots.end())
    {
        if (ifneed)
        {
            // not update if only update if need and ok
            Player* looter = ObjectAccessor::FindPlayer(guid_itr->guid);
            if (looter && looter->IsAtGroupRewardDistance(pLootedObject))
                return;
        }
        ++guid_itr;
    }

    // search next after current
    Player* pNewLooter = nullptr;
    for (member_citerator itr = guid_itr; itr != m_memberSlots.end(); ++itr)
    {
        if (Player* player = ObjectAccessor::FindPlayer(itr->guid))
            if (player->IsAtGroupRewardDistance(pLootedObject))
            {
                pNewLooter = player;
                break;
            }
    }

    if (!pNewLooter)
    {
        // search from start
        for (member_citerator itr = m_memberSlots.begin(); itr != guid_itr; ++itr)
        {
            if (Player* player = ObjectAccessor::FindPlayer(itr->guid))
                if (player->IsAtGroupRewardDistance(pLootedObject))
                {
                    pNewLooter = player;
                    break;
                }
        }
    }

    if (pNewLooter)
    {
        if (oldLooterGUID != pNewLooter->GetGUID())
        {
            SetLooterGuid(pNewLooter->GetGUID());
            SendUpdate();
        }
    }
    else
    {
        SetLooterGuid(ObjectGuid::Empty);
        SendUpdate();
    }
}

GroupJoinBattlegroundResult Group::CanJoinBattlegroundQueue(Battleground const* bgOrTemplate, BattlegroundQueueTypeId bgQueueTypeId, uint32 MinPlayerCount, uint32 /*MaxPlayerCount*/, bool /*isRated*/, uint32 /*arenaSlot*/, ObjectGuid& errorGuid)
{
    // check if this group is LFG group
    if (isLFGGroup())
        return ERR_LFG_CANT_USE_BATTLEGROUND;

    BattlemasterListEntry const* bgEntry = sBattlemasterListStore.LookupEntry(bgOrTemplate->GetTypeID());
    if (!bgEntry)
        return ERR_BATTLEGROUND_JOIN_FAILED;            // shouldn't happen

    // check for min / max count
    uint32 memberscount = GetMembersCount();

    if (int32(memberscount) > bgEntry->MaxGroupSize)                // no MinPlayerCount for battlegrounds
        return ERR_BATTLEGROUND_NONE;                        // ERR_GROUP_JOIN_BATTLEGROUND_TOO_MANY handled on client side

    // get a player as reference, to compare other players' stats to (arena team id, queue id based on level, etc.)
    Player* reference = ASSERT_NOTNULL(GetFirstMember())->GetSource();
    // no reference found, can't join this way
    if (!reference)
        return ERR_BATTLEGROUND_JOIN_FAILED;

    PVPDifficultyEntry const* bracketEntry = DB2Manager::GetBattlegroundBracketByLevel(bgOrTemplate->GetMapId(), reference->getLevel());
    if (!bracketEntry)
        return ERR_BATTLEGROUND_JOIN_FAILED;

    uint32 team = reference->GetTeam();

    // check every member of the group to be able to join
    memberscount = 0;
    for (GroupReference* itr = GetFirstMember(); itr != nullptr; itr = itr->next(), ++memberscount)
    {
        Player* member = itr->GetSource();
        // offline member? don't let join
        if (!member)
            return ERR_BATTLEGROUND_JOIN_FAILED;
        // don't allow cross-faction join as group
        if (member->GetTeam() != team)
        {
            errorGuid = member->GetGUID();
            return ERR_BATTLEGROUND_JOIN_TIMED_OUT;
        }
        // not in the same battleground level braket, don't let join
        PVPDifficultyEntry const* memberBracketEntry = DB2Manager::GetBattlegroundBracketByLevel(bracketEntry->MapID, member->getLevel());
        if (memberBracketEntry != bracketEntry)
            return ERR_BATTLEGROUND_JOIN_RANGE_INDEX;
        // don't let join if someone from the group is already in that bg queue
        if (member->InBattlegroundQueueForBattlegroundQueueType(bgQueueTypeId))
            return ERR_BATTLEGROUND_JOIN_FAILED;            // not blizz-like
        // don't let join if someone from the group is in bg queue random
        bool isInRandomBgQueue = member->InBattlegroundQueueForBattlegroundQueueType(BattlegroundMgr::BGQueueTypeId(BATTLEGROUND_RB, BattlegroundQueueIdType::Battleground, false, 0))
            || member->InBattlegroundQueueForBattlegroundQueueType(BattlegroundMgr::BGQueueTypeId(BATTLEGROUND_RANDOM_EPIC, BattlegroundQueueIdType::Battleground, false, 0));
        if (isInRandomBgQueue)
            return ERR_IN_RANDOM_BG;
        // don't let join to bg queue random if someone from the group is already in bg queue
        if ((bgOrTemplate->GetTypeID() == BATTLEGROUND_RB || bgOrTemplate->GetTypeID() == BATTLEGROUND_RANDOM_EPIC) && member->InBattlegroundQueue() && !isInRandomBgQueue)
            return ERR_IN_NON_RANDOM_BG;
        // check for deserter debuff in case not arena queue
        if (bgOrTemplate->GetTypeID() != BATTLEGROUND_AA && !member->CanJoinToBattleground(bgOrTemplate))
            return ERR_GROUP_JOIN_BATTLEGROUND_DESERTERS;
        // check if member can join any more battleground queues
        if (!member->HasFreeBattlegroundQueueId())
            return ERR_BATTLEGROUND_TOO_MANY_QUEUES;        // not blizz-like
        // check if someone in party is using dungeon system
        if (member->isUsingLfg())
            return ERR_LFG_CANT_USE_BATTLEGROUND;
        // check Freeze debuff
        if (member->HasAura(9454))
            return ERR_BATTLEGROUND_JOIN_FAILED;
    }

    // only check for MinPlayerCount since MinPlayerCount == MaxPlayerCount for arenas...
    if (bgOrTemplate->isArena() && memberscount != MinPlayerCount)
        return ERR_ARENA_TEAM_PARTY_SIZE;

    return ERR_BATTLEGROUND_NONE;
}

void Group::SetDungeonDifficultyID(Difficulty difficulty)
{
    m_dungeonDifficulty = difficulty;
    if (!isBGGroup() && !isBFGroup())
    {
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_GROUP_DIFFICULTY);

        stmt->setUInt8(0, uint8(m_dungeonDifficulty));
        stmt->setUInt32(1, m_dbStoreId);

        CharacterDatabase.Execute(stmt);
    }

    for (GroupReference* itr = GetFirstMember(); itr != nullptr; itr = itr->next())
    {
        Player* player = itr->GetSource();
        if (!player->GetSession())
            continue;

        player->SetDungeonDifficultyID(difficulty);
        player->SendDungeonDifficulty();
    }
}

void Group::SetRaidDifficultyID(Difficulty difficulty)
{
    m_raidDifficulty = difficulty;
    if (!isBGGroup() && !isBFGroup())
    {
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_GROUP_RAID_DIFFICULTY);

        stmt->setUInt8(0, uint8(m_raidDifficulty));
        stmt->setUInt32(1, m_dbStoreId);

        CharacterDatabase.Execute(stmt);
    }

    for (GroupReference* itr = GetFirstMember(); itr != nullptr; itr = itr->next())
    {
        Player* player = itr->GetSource();
        if (!player->GetSession())
            continue;

        player->SetRaidDifficultyID(difficulty);
        player->SendRaidDifficulty(false);
    }
}

void Group::SetLegacyRaidDifficultyID(Difficulty difficulty)
{
    m_legacyRaidDifficulty = difficulty;
    if (!isBGGroup() && !isBFGroup())
    {
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_GROUP_LEGACY_RAID_DIFFICULTY);

        stmt->setUInt8(0, uint8(m_legacyRaidDifficulty));
        stmt->setUInt32(1, m_dbStoreId);

        CharacterDatabase.Execute(stmt);
    }

    for (GroupReference* itr = GetFirstMember(); itr != nullptr; itr = itr->next())
    {
        Player* player = itr->GetSource();
        if (!player->GetSession())
            continue;

        player->SetLegacyRaidDifficultyID(difficulty);
        player->SendRaidDifficulty(true);
    }
}

Difficulty Group::GetDifficultyID(MapEntry const* mapEntry) const
{
    if (!mapEntry->IsRaid())
        return m_dungeonDifficulty;

    MapDifficultyEntry const* defaultDifficulty = sDB2Manager.GetDefaultMapDifficulty(mapEntry->ID);
    if (!defaultDifficulty)
        return m_legacyRaidDifficulty;

    DifficultyEntry const* difficulty = sDifficultyStore.LookupEntry(defaultDifficulty->DifficultyID);
    if (!difficulty || difficulty->Flags & DIFFICULTY_FLAG_LEGACY)
        return m_legacyRaidDifficulty;

    return m_raidDifficulty;
}

void Group::ResetInstances(uint8 method, bool isRaid, bool isLegacy, Player* SendMsgTo)
{
    if (isBGGroup() || isBFGroup())
        return;

    // method can be INSTANCE_RESET_ALL, INSTANCE_RESET_CHANGE_DIFFICULTY, INSTANCE_RESET_GROUP_DISBAND

    // we assume that when the difficulty changes, all instances that can be reset will be
    Difficulty diff = GetDungeonDifficultyID();
    if (isRaid)
    {
        if (!isLegacy)
            diff = GetRaidDifficultyID();
        else
            diff = GetLegacyRaidDifficultyID();
    }

    auto difficultyItr = m_boundInstances.find(diff);
    if (difficultyItr == m_boundInstances.end())
        return;

    for (auto itr = difficultyItr->second.begin(); itr != difficultyItr->second.end();)
    {
        InstanceSave* instanceSave = itr->second.save;
        const MapEntry* entry = sMapStore.LookupEntry(itr->first);
        if (!entry || entry->IsRaid() != isRaid || (!instanceSave->CanReset() && method != INSTANCE_RESET_GROUP_DISBAND))
        {
            ++itr;
            continue;
        }

        if (method == INSTANCE_RESET_ALL)
        {
            // the "reset all instances" method can only reset normal maps
            if (entry->IsRaid() || diff == DIFFICULTY_HEROIC)
            {
                ++itr;
                continue;
            }
        }

        bool isEmpty = true;
        // if the map is loaded, reset it
        Map* map = sMapMgr->FindMap(instanceSave->GetMapId(), instanceSave->GetInstanceId());
        if (map && map->IsDungeon() && !(method == INSTANCE_RESET_GROUP_DISBAND && !instanceSave->CanReset()))
        {
            if (instanceSave->CanReset())
                isEmpty = ((InstanceMap*)map)->Reset(method);
            else
                isEmpty = !map->HavePlayers();
        }

        if (SendMsgTo)
        {
            if (!isEmpty)
                SendMsgTo->SendResetInstanceFailed(INSTANCE_RESET_FAILED, instanceSave->GetMapId());
            else if (sWorld->getBoolConfig(CONFIG_INSTANCES_RESET_ANNOUNCE))
            {
                if (Group* group = SendMsgTo->GetGroup())
                {
                    for (GroupReference* groupRef = group->GetFirstMember(); groupRef != nullptr; groupRef = groupRef->next())
                        if (Player* player = groupRef->GetSource())
                            player->SendResetInstanceSuccess(instanceSave->GetMapId());
                }

                else
                    SendMsgTo->SendResetInstanceSuccess(instanceSave->GetMapId());
            }
            else
                SendMsgTo->SendResetInstanceSuccess(instanceSave->GetMapId());
        }

        if (isEmpty || method == INSTANCE_RESET_GROUP_DISBAND || method == INSTANCE_RESET_CHANGE_DIFFICULTY)
        {
            // do not reset the instance, just unbind if others are permanently bound to it
            if (isEmpty && instanceSave->CanReset())
                instanceSave->DeleteFromDB();
            else
            {
                CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_DEL_GROUP_INSTANCE_BY_INSTANCE);

                stmt->setUInt32(0, instanceSave->GetInstanceId());

                CharacterDatabase.Execute(stmt);
            }


            itr = difficultyItr->second.erase(itr);
            // this unloads the instance save unless online players are bound to it
            // (eg. permanent binds or GM solo binds)
            instanceSave->RemoveGroup(this);
        }
        else
            ++itr;
    }
}

InstanceGroupBind* Group::GetBoundInstance(Player* player)
{
    uint32 mapid = player->GetMapId();
    MapEntry const* mapEntry = sMapStore.LookupEntry(mapid);
    return GetBoundInstance(mapEntry);
}

InstanceGroupBind* Group::GetBoundInstance(Map* aMap)
{
    return GetBoundInstance(aMap->GetEntry());
}

InstanceGroupBind* Group::GetBoundInstance(MapEntry const* mapEntry)
{
    if (!mapEntry || !mapEntry->IsDungeon())
        return nullptr;

    Difficulty difficulty = GetDifficultyID(mapEntry);
    return GetBoundInstance(difficulty, mapEntry->ID);
}

InstanceGroupBind* Group::GetBoundInstance(Difficulty difficulty, uint32 mapId)
{
    // some instances only have one difficulty
    sDB2Manager.GetDownscaledMapDifficultyData(mapId, difficulty);

    auto difficultyItr = m_boundInstances.find(difficulty);
    if (difficultyItr == m_boundInstances.end())
        return nullptr;

    auto itr = difficultyItr->second.find(mapId);
    if (itr != difficultyItr->second.end())
        return &itr->second;
    else
        return nullptr;
}

InstanceGroupBind* Group::BindToInstance(InstanceSave* save, bool permanent, bool load)
{
    if (!save || isBGGroup() || isBFGroup())
        return nullptr;

    InstanceGroupBind& bind = m_boundInstances[save->GetDifficultyID()][save->GetMapId()];
    if (!load && (!bind.save || permanent != bind.perm || save != bind.save))
    {
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_REP_GROUP_INSTANCE);

        stmt->setUInt32(0, m_dbStoreId);
        stmt->setUInt32(1, save->GetInstanceId());
        stmt->setBool(2, permanent);

        CharacterDatabase.Execute(stmt);
    }

    if (bind.save != save)
    {
        if (bind.save)
            bind.save->RemoveGroup(this);
        save->AddGroup(this);
    }

    bind.save = save;
    bind.perm = permanent;
    if (!load)
        TC_LOG_DEBUG("maps", "Group::BindToInstance: %s, storage id: %u is now bound to map %d, instance %d, difficulty %d",
            GetGUID().ToString().c_str(), m_dbStoreId, save->GetMapId(), save->GetInstanceId(), save->GetDifficultyID());

    return &bind;
}

void Group::UnbindInstance(uint32 mapid, uint8 difficulty, bool unload)
{
    auto difficultyItr = m_boundInstances.find(Difficulty(difficulty));
    if (difficultyItr == m_boundInstances.end())
        return;

    auto itr = difficultyItr->second.find(mapid);
    if (itr != difficultyItr->second.end())
    {
        if (!unload)
        {
            CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_DEL_GROUP_INSTANCE_BY_GUID);

            stmt->setUInt32(0, m_dbStoreId);
            stmt->setUInt32(1, itr->second.save->GetInstanceId());

            CharacterDatabase.Execute(stmt);
        }

        itr->second.save->RemoveGroup(this);                // save can become invalid
        difficultyItr->second.erase(itr);
    }
}

void Group::_homebindIfInstance(Player* player)
{
    if (player && !player->IsGameMaster() && sMapStore.LookupEntry(player->GetMapId())->IsDungeon())
        player->m_InstanceValid = false;
}

void Group::BroadcastGroupUpdate(void)
{
    // FG: HACK: force flags update on group leave - for values update hack
    // -- not very efficient but safe
    for (member_citerator citr = m_memberSlots.begin(); citr != m_memberSlots.end(); ++citr)
    {
        if (Player * pp = ObjectAccessor::FindPlayer(citr->guid))
        {
            pp->ForceUpdateFieldChange(pp->m_values.ModifyValue(&Unit::m_unitData).ModifyValue(&UF::UnitData::PvpFlags));
            pp->ForceUpdateFieldChange(pp->m_values.ModifyValue(&Unit::m_unitData).ModifyValue(&UF::UnitData::FactionTemplate));
            TC_LOG_DEBUG("misc", "-- Forced group value update for '%s'", pp->GetName().c_str());
        }
    }
}

void Group::ResetMaxEnchantingLevel()
{
    m_maxEnchantingLevel = 0;
    Player* member = nullptr;
    for (member_citerator citr = m_memberSlots.begin(); citr != m_memberSlots.end(); ++citr)
    {
        member = ObjectAccessor::FindPlayer(citr->guid);
        if (member && m_maxEnchantingLevel < member->GetSkillValue(SKILL_ENCHANTING))
            m_maxEnchantingLevel = member->GetSkillValue(SKILL_ENCHANTING);
    }
}

void Group::SetLootMethod(LootMethod method)
{
    m_lootMethod = method;
}

void Group::SetLooterGuid(ObjectGuid guid)
{
    m_looterGuid = guid;
}

void Group::SetMasterLooterGuid(ObjectGuid guid)
{
    m_masterLooterGuid = guid;
}

void Group::SetLootThreshold(ItemQualities threshold)
{
    m_lootThreshold = threshold;
}

void Group::SetLfgRoles(ObjectGuid guid, uint8 roles)
{
    member_witerator slot = _getMemberWSlot(guid);
    if (slot == m_memberSlots.end())
        return;

    slot->roles = roles;
    SendUpdate();
}

uint8 Group::GetLfgRoles(ObjectGuid guid)
{
    member_witerator slot = _getMemberWSlot(guid);
    if (slot == m_memberSlots.end())
        return 0;

    return slot->roles;
}

void Group::Update(uint32 diff)
{
    UpdateReadyCheck(diff);
}

void Group::UpdateReadyCheck(uint32 diff)
{
    if (!m_readyCheckStarted)
        return;

    m_readyCheckTimer -= diff;
    if (m_readyCheckTimer <= 0)
        EndReadyCheck();
}

void Group::StartReadyCheck(ObjectGuid starterGuid, int8 partyIndex, uint32 duration)
{
    if (m_readyCheckStarted)
        return;

    member_witerator slot = _getMemberWSlot(starterGuid);
    if (slot == m_memberSlots.end())
        return ;

    m_readyCheckStarted = true;
    m_readyCheckTimer = duration;

    SetOfflineMembersReadyChecked();

    SetMemberReadyChecked(&(*slot));

    WorldPackets::Party::ReadyCheckStarted readyCheckStarted;
    readyCheckStarted.PartyGUID = m_guid;
    readyCheckStarted.PartyIndex = partyIndex;
    readyCheckStarted.InitiatorGUID = starterGuid;
    readyCheckStarted.Duration = duration;
    BroadcastPacket(readyCheckStarted.Write(), false);
}

void Group::EndReadyCheck(void)
{
    if (!m_readyCheckStarted)
        return;

    m_readyCheckStarted = false;
    m_readyCheckTimer = 0;

    ResetMemberReadyChecked();

    WorldPackets::Party::ReadyCheckCompleted readyCheckCompleted;
    readyCheckCompleted.PartyIndex = 0;
    readyCheckCompleted.PartyGUID = m_guid;
    BroadcastPacket(readyCheckCompleted.Write(), false);
}

bool Group::IsReadyCheckCompleted(void) const
{
    for (member_citerator citr = m_memberSlots.begin(); citr != m_memberSlots.end(); ++citr)
        if (!citr->readyChecked)
            return false;
    return true;
}

void Group::SetMemberReadyCheck(ObjectGuid guid, bool ready)
{
    if (!m_readyCheckStarted)
        return;

    member_witerator slot = _getMemberWSlot(guid);
    if (slot != m_memberSlots.end())
        SetMemberReadyCheck(&(*slot), ready);
}

void Group::SetMemberReadyCheck(MemberSlot* slot, bool ready)
{
    WorldPackets::Party::ReadyCheckResponse response;
    response.PartyGUID = m_guid;
    response.Player = slot->guid;
    response.IsReady = ready;
    BroadcastPacket(response.Write(), false);

    SetMemberReadyChecked(slot);
}

void Group::SetOfflineMembersReadyChecked(void)
{
    for (member_witerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
    {
        Player* player = ObjectAccessor::FindConnectedPlayer(itr->guid);
        if (!player || !player->GetSession())
            SetMemberReadyCheck(&(*itr), false);
    }
}

void Group::SetMemberReadyChecked(MemberSlot* slot)
{
    slot->readyChecked = true;
    if (IsReadyCheckCompleted())
        EndReadyCheck();
}

void Group::ResetMemberReadyChecked(void)
{
    for (member_witerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
        itr->readyChecked = false;
}

void Group::AddRaidMarker(uint8 markerId, uint32 mapId, float positionX, float positionY, float positionZ, ObjectGuid transportGuid)
{
    if (markerId >= RAID_MARKERS_COUNT || m_markers[markerId])
        return;

    m_activeMarkers |= (1 << markerId);
    m_markers[markerId] = std::make_unique<RaidMarker>(mapId, positionX, positionY, positionZ, transportGuid);
    SendRaidMarkersChanged();
}

void Group::DeleteRaidMarker(uint8 markerId)
{
    if (markerId > RAID_MARKERS_COUNT)
        return;

    for (uint8 i = 0; i < RAID_MARKERS_COUNT; i++)
        if (m_markers[i] && (markerId == i || markerId == RAID_MARKERS_COUNT))
        {
            m_markers[i] = nullptr;
            m_activeMarkers &= ~(1 << i);
        }

    SendRaidMarkersChanged();
}

void Group::SendRaidMarkersChanged(WorldSession* session, int8 partyIndex)
{
    WorldPackets::Party::RaidMarkersChanged packet;

    packet.PartyIndex = partyIndex;
    packet.ActiveMarkers = m_activeMarkers;

    for (uint8 i = 0; i < RAID_MARKERS_COUNT; i++)
        if (m_markers[i])
            packet.RaidMarkers.push_back(m_markers[i].get());

    if (session)
        session->SendPacket(packet.Write());
    else
        BroadcastPacket(packet.Write(), false);
}

bool Group::IsFull() const
{
    return isRaidGroup() ? (m_memberSlots.size() >= MAX_RAID_SIZE) : (m_memberSlots.size() >= MAX_GROUP_SIZE);
}

bool Group::isLFGGroup() const
{
    return (m_groupFlags & GROUP_FLAG_LFG) != 0;
}

bool Group::isRaidGroup() const
{
    return (m_groupFlags & GROUP_FLAG_RAID) != 0;
}

bool Group::isBGGroup() const
{
    return m_bgGroup != nullptr;
}

bool Group::isBFGroup() const
{
    return m_bfGroup != nullptr;
}

bool Group::IsCreated() const
{
    return GetMembersCount() > 0;
}

ObjectGuid Group::GetLeaderGUID() const
{
    return m_leaderGuid;
}

ObjectGuid Group::GetGUID() const
{
    return m_guid;
}

char const* Group::GetLeaderName() const
{
    return m_leaderName.c_str();
}

LootMethod Group::GetLootMethod() const
{
    return m_lootMethod;
}

ObjectGuid Group::GetLooterGuid() const
{
    if (GetLootMethod() == FREE_FOR_ALL)
        return ObjectGuid::Empty;
    return m_looterGuid;
}

ObjectGuid Group::GetMasterLooterGuid() const
{
    return m_masterLooterGuid;
}

ItemQualities Group::GetLootThreshold() const
{
    return m_lootThreshold;
}

bool Group::IsMember(ObjectGuid guid) const
{
    return _getMemberCSlot(guid) != m_memberSlots.end();
}

bool Group::IsLeader(ObjectGuid guid) const
{
    return (GetLeaderGUID() == guid);
}

ObjectGuid Group::GetMemberGUID(const std::string& name)
{
    for (member_citerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
        if (itr->name == name)
            return itr->guid;
    return ObjectGuid::Empty;
}

uint8 Group::GetMemberFlags(ObjectGuid guid) const
{
    member_citerator mslot = _getMemberCSlot(guid);
    if (mslot == m_memberSlots.end())
        return 0u;
    return mslot->flags;
}

bool Group::SameSubGroup(ObjectGuid guid1, ObjectGuid guid2) const
{
    member_citerator mslot2 = _getMemberCSlot(guid2);
    if (mslot2 == m_memberSlots.end())
       return false;
    return SameSubGroup(guid1, &*mslot2);
}

bool Group::SameSubGroup(ObjectGuid guid1, MemberSlot const* slot2) const
{
    member_citerator mslot1 = _getMemberCSlot(guid1);
    if (mslot1 == m_memberSlots.end() || !slot2)
        return false;
    return (mslot1->group == slot2->group);
}

bool Group::HasFreeSlotSubGroup(uint8 subgroup) const
{
    return (m_subGroupsCounts && m_subGroupsCounts[subgroup] < MAX_GROUP_SIZE);
}

uint8 Group::GetMemberGroup(ObjectGuid guid) const
{
    member_citerator mslot = _getMemberCSlot(guid);
    if (mslot == m_memberSlots.end())
       return (MAX_RAID_SUBGROUPS+1);
    return mslot->group;
}

void Group::SetBattlegroundGroup(Battleground* bg)
{
    m_bgGroup = bg;
}

void Group::SetBattlefieldGroup(Battlefield *bg)
{
    m_bfGroup = bg;
}

void Group::SetGroupMemberFlag(ObjectGuid guid, bool apply, GroupMemberFlags flag)
{
    // Assistants, main assistants and main tanks are only available in raid groups
    if (!isRaidGroup())
       return;

    // Check if player is really in the raid
    member_witerator slot = _getMemberWSlot(guid);
    if (slot == m_memberSlots.end())
        return;

    // Do flag specific actions, e.g ensure uniqueness
    switch (flag)
    {
        case MEMBER_FLAG_MAINASSIST:
            RemoveUniqueGroupMemberFlag(MEMBER_FLAG_MAINASSIST);         // Remove main assist flag from current if any.
            break;
        case MEMBER_FLAG_MAINTANK:
            RemoveUniqueGroupMemberFlag(MEMBER_FLAG_MAINTANK);           // Remove main tank flag from current if any.
            break;
        case MEMBER_FLAG_ASSISTANT:
            break;
        default:
            return;                                                      // This should never happen
    }

    // Switch the actual flag
    ToggleGroupMemberFlag(slot, flag, apply);

    // Preserve the new setting in the db
    CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_GROUP_MEMBER_FLAG);

    stmt->setUInt8(0, slot->flags);
    stmt->setUInt64(1, guid.GetCounter());

    CharacterDatabase.Execute(stmt);

    // Broadcast the changes to the group
    SendUpdate();
}

void Group::LinkMember(GroupReference* pRef)
{
    m_memberMgr.insertFirst(pRef);
}

void Group::DelinkMember(ObjectGuid guid)
{
    GroupReference* ref = m_memberMgr.getFirst();
    while (ref)
    {
        GroupReference* nextRef = ref->next();
        if (ref->GetSource()->GetGUID() == guid)
        {
            ref->unlink();
            break;
        }
        ref = nextRef;
    }
}

Group::BoundInstancesMap::iterator Group::GetBoundInstances(Difficulty difficulty)
{
    return m_boundInstances.find(difficulty);
}

Group::BoundInstancesMap::iterator Group::GetBoundInstanceEnd()
{
    return m_boundInstances.end();
}

void Group::_initRaidSubGroupsCounter()
{
    // Sub group counters initialization
    if (!m_subGroupsCounts)
        m_subGroupsCounts = new uint8[MAX_RAID_SUBGROUPS];

    memset((void*)m_subGroupsCounts, 0, (MAX_RAID_SUBGROUPS)*sizeof(uint8));

    for (member_citerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
        ++m_subGroupsCounts[itr->group];
}

Group::member_citerator Group::_getMemberCSlot(ObjectGuid Guid) const
{
    for (member_citerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
        if (itr->guid == Guid)
            return itr;
    return m_memberSlots.end();
}

Group::member_witerator Group::_getMemberWSlot(ObjectGuid Guid)
{
    for (member_witerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
        if (itr->guid == Guid)
            return itr;
    return m_memberSlots.end();
}

void Group::SubGroupCounterIncrease(uint8 subgroup)
{
    if (m_subGroupsCounts)
        ++m_subGroupsCounts[subgroup];
}

void Group::SubGroupCounterDecrease(uint8 subgroup)
{
    if (m_subGroupsCounts)
        --m_subGroupsCounts[subgroup];
}

void Group::RemoveUniqueGroupMemberFlag(GroupMemberFlags flag)
{
    for (member_witerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
        if (itr->flags & flag)
            itr->flags &= ~flag;
}

void Group::ToggleGroupMemberFlag(member_witerator slot, uint8 flag, bool apply)
{
    if (apply)
        slot->flags |= flag;
    else
        slot->flags &= ~flag;
}

void Group::SetEveryoneIsAssistant(bool apply)
{
    if (apply)
        m_groupFlags = GroupFlags(m_groupFlags | GROUP_FLAG_EVERYONE_ASSISTANT);
    else
        m_groupFlags = GroupFlags(m_groupFlags & ~GROUP_FLAG_EVERYONE_ASSISTANT);

    for (member_witerator itr = m_memberSlots.begin(); itr != m_memberSlots.end(); ++itr)
        ToggleGroupMemberFlag(itr, MEMBER_FLAG_ASSISTANT, apply);

    SendUpdate();
}

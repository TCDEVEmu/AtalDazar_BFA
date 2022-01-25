/*
 * Copyright (C) 2017-2019 AshamaneProject <https://github.com/AshamaneProject>
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

#ifndef ChallengeModePackets_h__
#define ChallengeModePackets_h__

#include "Packet.h"
#include "WorldSession.h"

namespace WorldPackets
{
    namespace ChallengeMode
    {
        struct ChallengeModeMap
        {
            struct bMember
            {
                ObjectGuid PlayerGuid;
                ObjectGuid GuildGuid;
                uint32 VirtualRealmAddress = 0;
                uint32 NativeRealmAddress = 0;
                uint32 SpecializationID = 0;
                uint32 Unk4 = 0;
                uint32 EquipmentLevel = 0;
            };

            uint32 MapId = 0;
            uint32 BestCompletionMilliseconds = 0;
            uint32 LastCompletionMilliseconds = 0;
            uint32 CompletedChallengeLevel = 0;
            uint32 ChallengeID = 0;
            time_t LastMedalDate = time(nullptr);
            time_t BestMedalDate = time(nullptr);
            std::vector<uint16> BestSpecID;
            std::array<uint32, 4> Affixes;
            std::vector<bMember> Members;
        };

        struct ModeAttempt
        {
            struct Member
            {
                ObjectGuid Guid;
                uint32 VirtualRealmAddress = 0;
                uint32 NativeRealmAddress = 0;
                uint32 SpecializationID = 0;
            };

            uint32 InstanceRealmAddress = 0;
            uint32 AttemptID = 0;
            uint32 CompletionTime = 0;
            time_t CompletionDate = time(nullptr);
            uint32 MedalEarned = 0;
            std::vector<Member> Members;
        };

        class StartRequest final : public ClientPacket
        {
        public:
            StartRequest(WorldPacket&& packet) : ClientPacket(CMSG_START_MYTHIC_PLUSS, std::move(packet)) { }

            void Read() override;

            uint8 Bag;
            uint32 Slot;
            ObjectGuid GobGUID;
        };

        class ChangePlayerDifficultyResult final : public ServerPacket
        {
        public:
            ChangePlayerDifficultyResult(uint32 type = 0) : ServerPacket(SMSG_CHANGE_PLAYER_DIFFICULTY_RESULT, 4), Type(type) { }

            WorldPacket const* Write() override;

            uint8 Type;
            uint32 InstanceDifficultyID;
            uint32 DifficultyRecID;
        };

        class Start final : public ServerPacket
        {
        public:
            Start() : ServerPacket(SMSG_MYTHIC_PLUS_START, 33) { }

            WorldPacket const* Write() override;

            std::array<uint32, 4> Affixes;
 
            uint32 MapID = 0;
            int32 ChallengeID = 0;
            uint32 ChallengeLevel = 2;
            uint32 DeathCount = 0;
            bool Energized = true;
        };

        class Reset final : public ServerPacket
        {
        public:
            Reset(uint32 mapId = 0) : ServerPacket(SMSG_MYTHIC_PLUS_RESET, 4), MapId(mapId) { }

            WorldPacket const* Write() override;

            uint32 MapId;
        };

        class UpdateDeathCount final : public ServerPacket
        {
        public:
            UpdateDeathCount(uint32 deathCount = 0) : ServerPacket(SMSG_MYTHIC_PLUS_UPDATE_DEATH_COUNT, 4), DeathCount(deathCount) { }

            WorldPacket const* Write() override;

            uint32 DeathCount;
        };

        class Complete final : public ServerPacket
        {
        public:
            Complete() : ServerPacket(SMSG_MYTHIC_PLUS_MODE_COMPLETE, 17) { }

            WorldPacket const* Write() override;

            uint32 MapID = 0;
            int32 CompletionMilliseconds = 0;
            int32 ChallengeLevel = 0;
            uint32 ChallengeID = 0;
            bool IsCompletedInTimer = false;
        };

        class NewPlayerRecord final : public ServerPacket
        {
        public:
            NewPlayerRecord() : ServerPacket(SMSG_MYTHIC_PLUS_NEW_PLAYER_RECORD, 4) { }

            WorldPacket const* Write() override;

            uint32 MapID = 0;
            int32 CompletionMilliseconds = 0;
            int32 ChallengeLevel = 0;
        };

        class AllMapStats final : public ServerPacket
        {
        public:
            AllMapStats() : ServerPacket(SMSG_MYTHIC_PLUS_ALL_MAP_STATS, 4) { }

            WorldPacket const* Write() override;

            std::vector<ChallengeModeMap> ChallengeModeMaps;
            uint32 Unk5 = 0;
            uint32 Unk6 = 31;
            std::vector<ModeAttempt> RealmMembers;
        };

        class RequestMapStats final : public ClientPacket
        {
        public:
            RequestMapStats(WorldPacket&& packet) : ClientPacket(CMSG_MYTHIC_PLUS_REQUEST_MAP_STATS, std::move(packet)) { }

            void Read() override;
        };

        class ChallengeModeRewards final : public ServerPacket
        {
        public:
            ChallengeModeRewards() : ServerPacket(SMSG_MYTHIC_PLUS_REWARDS, 4) { }

            WorldPacket const* Write() override;

            bool IsWeeklyRewardAvailable = true;
            uint32 LastWeekHighestKeyCompleted = -1;
            uint32 LastWeekMapChallengeKeyEntry = -1;
            uint32 CurrentWeekHighestKeyCompleted = -1;
            uint32 Unk1 = 17;//13 17
        };

        class GetChallengeModeRewards final : public ClientPacket
        {
        public:
            GetChallengeModeRewards(WorldPacket&& packet) : ClientPacket(CMSG_GET_CHALLENGE_MODE_REWARDS, std::move(packet)) { }

            void Read() override;
        };

        class RequestLeaders final : public ClientPacket
        {
        public:
            RequestLeaders(WorldPacket&& packet) : ClientPacket(CMSG_MYTHIC_PLUS_REQUEST_LEADERS, std::move(packet)) { }

            void Read() override;

            uint32 MapId = 0;
            uint32 ChallengeID = 0;
            time_t LastGuildUpdate = time(nullptr);
            time_t LastRealmUpdate = time(nullptr);
        };

        class RequestLeadersResult final : public ServerPacket
        {
        public:
            RequestLeadersResult() : ServerPacket(SMSG_MYTHIC_PLUS_REQUEST_LEADERS_RESULT, 20 + 8) { }

            WorldPacket const* Write() override;

            uint32 MapID = 0;
            uint32 ChallengeID = 0;
            time_t LastGuildUpdate = time(nullptr);
            time_t LastRealmUpdate = time(nullptr);
            std::vector<ModeAttempt> GuildLeaders;
            std::vector<ModeAttempt> RealmLeaders;
        };

        class RequestChallengeModeAffixes final : public ClientPacket
        {
        public:
            RequestChallengeModeAffixes(WorldPacket&& packet) : ClientPacket(CMSG_REQUEST_MYTHIC_PLUS_AFFIXES, std::move(packet)) { }

            void Read() override;
        };

        class RequestChallengeModeAffixesResult final : public ServerPacket
        {
        public:
            RequestChallengeModeAffixesResult() : ServerPacket(SMSG_MYTHIC_PLUS_CURRENT_AFFIXES) { }

            WorldPacket const* Write() override;

            std::array<uint32, 4> Affixes;//Length: 36
        };

    }
}

#endif // ChallengeModePackets_h__

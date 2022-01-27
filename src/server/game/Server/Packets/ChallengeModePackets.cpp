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

#include "ChallengeModePackets.h"

void WorldPackets::ChallengeMode::StartRequest::Read()
{
    _worldPacket >> Bag;
    _worldPacket >> Slot;
    _worldPacket >> GobGUID;
}

WorldPacket const* WorldPackets::ChallengeMode::ChangePlayerDifficultyResult::Write()
{
    _worldPacket.WriteBits(Type, 4);

    switch (Type)
    {
        case 5:
        {
            _worldPacket.WriteBit(false);
            _worldPacket << uint32(2766309915);
            break;
        }
        case 11:
        {
            _worldPacket << InstanceDifficultyID;
            _worldPacket << DifficultyRecID;
            break;
        }
    }

    return &_worldPacket;
}

WorldPacket const* WorldPackets::ChallengeMode::Start::Write()
{
    /*_worldPacket << (uint32)MapID;
    _worldPacket << (uint32)ChallengeID;
    _worldPacket << (uint32)ChallengeLevel;

    for (uint32 v : Affixes)
        _worldPacket << v;

    _worldPacket << (uint32)DeathCount;
    _worldPacket << (uint32)(0); // ClientEncounterStartPlayerInfo

    _worldPacket << (uint8)Energized;
    _worldPacket.FlushBits();

    return &_worldPacket;*/
	
	_worldPacket << (uint32)MapId;
    _worldPacket << (uint32)ChallengeId;
    _worldPacket << (uint32)ChallengeLevel;
	
    _worldPacket << (uint32)Affixes1;
    _worldPacket << (uint32)Affixes2;
    _worldPacket << (uint32)Affixes3;
    _worldPacket << (uint32)Affixes4;
	
	_worldPacket << (uint32)DeathCount;
    _worldPacket << (uint32)ClientEncounterStartPlayerInfo;

    _worldPacket << (uint8)Energized;
	_worldPacket.FlushBits();

    return &_worldPacket;
}

WorldPacket const* WorldPackets::ChallengeMode::Reset::Write()
{
    _worldPacket << (uint32)MapId;

    return &_worldPacket;
}

WorldPacket const* WorldPackets::ChallengeMode::UpdateDeathCount::Write()
{
    _worldPacket << (uint32)DeathCount;

    return &_worldPacket;
}

WorldPacket const* WorldPackets::ChallengeMode::Complete::Write()
{
    _worldPacket << (uint32)CompletionMilliseconds;
    _worldPacket << (uint32)MapID;
    _worldPacket << (uint32)ChallengeID;
    _worldPacket << (uint32)ChallengeLevel;

    _worldPacket << (uint8)IsCompletedInTimer;
    _worldPacket.FlushBits();

    return &_worldPacket;
}

ByteBuffer& operator<<(ByteBuffer& data, WorldPackets::ChallengeMode::ChallengeModeMap const& challengeModeMap)
{
    //data.FlushBits();
    //data << challengeModeMap.MapId;
    data << challengeModeMap.ChallengeID;
    data << challengeModeMap.CompletedChallengeLevel;
    data << challengeModeMap.LastCompletionMilliseconds / 1000;
    data.AppendPackedTime(challengeModeMap.LastMedalDate - challengeModeMap.LastCompletionMilliseconds);
    data.AppendPackedTime(challengeModeMap.LastMedalDate);

    //data << challengeModeMap.BestCompletionMilliseconds;
    // data.AppendPackedTime(challengeModeMap.BestMedalDate);

    for (auto const& v : challengeModeMap.Affixes)
        data << v;

    data << static_cast<uint32>(challengeModeMap.Members.size());

    for (auto const& map : challengeModeMap.Members)
    {
        //data.FlushBits();
        data << map.PlayerGuid;
        data << map.GuildGuid;
        data << map.VirtualRealmAddress;
        data << map.NativeRealmAddress;       
        data << map.SpecializationID;
        data << map.Unk4;
        data << map.EquipmentLevel;
    }

    //data << static_cast<uint32>(challengeModeMap.BestSpecID.size());
    //for (auto const& map : challengeModeMap.BestSpecID)
    //    data << map;


    return data;
}

WorldPacket const* WorldPackets::ChallengeMode::NewPlayerRecord::Write()
{
    _worldPacket << (int32)MapID;
	_worldPacket << (int32)CompletionMilliseconds;
	_worldPacket << (uint32)ChallengeLevel;
  
    return &_worldPacket;
}

WorldPacket const* WorldPackets::ChallengeMode::NewPlayerSeasonRecord::Write()
{
    _worldPacket << (uint32)MapID;
  
    return &_worldPacket;
}

WorldPacket const * WorldPackets::ChallengeMode::AllMapStats::Write()
{
    _worldPacket << static_cast<uint32>(ChallengeModeMaps.size());
    _worldPacket << static_cast<uint32>(ChallengeModeMaps.size());
    _worldPacket << static_cast<uint32>(ChallengeModeMaps.size());

    _worldPacket << (uint32)Unk5;
    _worldPacket << (uint32)Unk6;

    for (auto const& map : ChallengeModeMaps)
        _worldPacket << map;

    //_worldPacket.FlushBits();
    _worldPacket << (bool)true;
    //
    _worldPacket << (uint32)Unk5;
    _worldPacket << (uint32)Unk6;

    for (auto const& map : ChallengeModeMaps)
        _worldPacket << map;

    //_worldPacket.FlushBits();
    _worldPacket << (bool)true;

    //todo
    for (auto const& map : ChallengeModeMaps)
    {
        //_worldPacket.FlushBits();

        _worldPacket << map.ChallengeID;
        _worldPacket << map.CompletedChallengeLevel;
        _worldPacket.AppendPackedTime(map.LastMedalDate - map.LastCompletionMilliseconds);
        _worldPacket.AppendPackedTime(map.LastMedalDate);
        _worldPacket.AppendPackedTime(time(nullptr));     
    }
    //_worldPacket.FlushBits();
    _worldPacket << (bool)true;

    return &_worldPacket;
}

void WorldPackets::ChallengeMode::RequestMapStats::Read() {}

WorldPacket const * WorldPackets::ChallengeMode::ChallengeModeRewards::Write()
{
    _worldPacket.WriteBit(IsWeeklyRewardAvailable);
    _worldPacket << (uint32)LastWeekHighestKeyCompleted;
    _worldPacket << (uint32)LastWeekMapChallengeKeyEntry;
    _worldPacket << (uint32)CurrentWeekHighestKeyCompleted;
    _worldPacket << (uint32)Unk1;
    return &_worldPacket;
}

void WorldPackets::ChallengeMode::GetChallengeModeRewards::Read() {}

ByteBuffer& operator<<(ByteBuffer& data, WorldPackets::ChallengeMode::ModeAttempt const& modeAttempt)
{
    data << modeAttempt.InstanceRealmAddress;
    data << modeAttempt.AttemptID;
    data << modeAttempt.CompletionTime;
    data.AppendPackedTime(modeAttempt.CompletionDate);
    data << modeAttempt.MedalEarned;
    data << static_cast<uint32>(modeAttempt.Members.size());
    for (auto const& map : modeAttempt.Members)
    {
        data << map.VirtualRealmAddress;
        data << map.NativeRealmAddress;
        data << map.Guid;
        data << map.SpecializationID;
    }

    return data;
}

void WorldPackets::ChallengeMode::RequestLeaders::Read()
{
    _worldPacket >> MapId;
    LastGuildUpdate = _worldPacket.read<uint32>();
    LastRealmUpdate = _worldPacket.read<uint32>();
    _worldPacket >> ChallengeID;
}

WorldPacket const * WorldPackets::ChallengeMode::RequestLeadersResult::Write()
{
    _worldPacket << MapID;
    _worldPacket << ChallengeID;
    _worldPacket.AppendPackedTime(LastGuildUpdate);
    _worldPacket.AppendPackedTime(LastRealmUpdate);

    _worldPacket << static_cast<uint32>(GuildLeaders.size());
    _worldPacket << static_cast<uint32>(RealmLeaders.size());

    for (auto const& guildLeaders : GuildLeaders)
        _worldPacket << guildLeaders;

    for (auto const& realmLeaders : RealmLeaders)
        _worldPacket << realmLeaders;

    return &_worldPacket;
}

void WorldPackets::ChallengeMode::RequestChallengeModeAffixes::Read(){}

WorldPacket const * WorldPackets::ChallengeMode::RequestChallengeModeAffixesResult::Write()
{
     _worldPacket << uint32(Count);

    for (uint32 i = 0; i < 4; ++i)
    {
        _worldPacket << uint32(Affixes[i]);
        _worldPacket << uint32(RequiredSeason[i]);
    }
	
	return &_worldPacket;
}

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

#include "WorldSession.h"
#include "WodGarrison.h"
#include "ClassHall.h"
#include "WarCampaign.h"
#include "GarrisonAI.h"
#include "GarrisonMgr.h"
#include "GarrisonPackets.h"
#include "ObjectMgr.h"
#include "Player.h"

void WorldSession::HandleGetGarrisonInfo(WorldPackets::Garrison::GetGarrisonInfo& /*getGarrisonInfo*/)
{
    _player->SendGarrisonInfo();
}

void WorldSession::HandleGarrisonPurchaseBuilding(WorldPackets::Garrison::GarrisonPurchaseBuilding& garrisonPurchaseBuilding)
{
    if (!_player->GetNPCIfCanInteractWith(garrisonPurchaseBuilding.NpcGUID, UNIT_NPC_FLAG_NONE, UNIT_NPC_FLAG_2_GARRISON_ARCHITECT))
        return;

    if (Garrison* garrison = _player->GetGarrison(GARRISON_TYPE_GARRISON))
        garrison->ToWodGarrison()->PlaceBuilding(garrisonPurchaseBuilding.PlotInstanceID, garrisonPurchaseBuilding.BuildingID);
}

void WorldSession::HandleGarrisonCancelConstruction(WorldPackets::Garrison::GarrisonCancelConstruction& garrisonCancelConstruction)
{
    if (!_player->GetNPCIfCanInteractWith(garrisonCancelConstruction.NpcGUID, UNIT_NPC_FLAG_NONE, UNIT_NPC_FLAG_2_GARRISON_ARCHITECT))
        return;

    if (Garrison* garrison = _player->GetGarrison(GARRISON_TYPE_GARRISON))
        garrison->ToWodGarrison()->CancelBuildingConstruction(garrisonCancelConstruction.PlotInstanceID);
}

void WorldSession::HandleGarrisonCheckUpgradeable(WorldPackets::Garrison::GarrisonCheckUpgradeable& /*garrisonCheckUpgradeable*/)
{
    bool canUpgrade = false;
    if (Garrison* garrison = _player->GetGarrison(GARRISON_TYPE_GARRISON))
        canUpgrade = garrison->ToWodGarrison()->CanUpgrade(false);

    SendPacket(WorldPackets::Garrison::GarrisonCheckUpgradeableResult(canUpgrade).Write());
}

void WorldSession::HandleGarrisonUpgrade(WorldPackets::Garrison::GarrisonUpgrade& garrisonUpgrade)
{
    if (!_player->GetNPCIfCanInteractWith(garrisonUpgrade.NpcGUID, UNIT_NPC_FLAG_NONE, UNIT_NPC_FLAG_2_GARRISON_ARCHITECT))
        return;

    if (Garrison* garrison = _player->GetGarrison(GARRISON_TYPE_GARRISON))
    {
        /*bool result = */garrison->ToWodGarrison()->Upgrade();
        //SendPacket(WorldPackets::Garrison::GarrisonUpgradeResult().Write());
    }
}

void WorldSession::HandleGarrisonRequestBlueprintAndSpecializationData(WorldPackets::Garrison::GarrisonRequestBlueprintAndSpecializationData& /*garrisonRequestBlueprintAndSpecializationData*/)
{
    _player->SendGarrisonBlueprintAndSpecializationData();
}

void WorldSession::HandleGarrisonGetBuildingLandmarks(WorldPackets::Garrison::GarrisonGetBuildingLandmarks& /*garrisonGetBuildingLandmarks*/)
{
    if (Garrison* garrison = _player->GetGarrison(GARRISON_TYPE_GARRISON))
        garrison->ToWodGarrison()->SendBuildingLandmarks(_player);
}

void WorldSession::HandleGarrisonOpenMissionNpc(WorldPackets::Garrison::GarrisonOpenMissionNpcClient& garrisonOpenMissionNpcClient)
{
    Creature* adventureMap = _player->GetNPCIfCanInteractWith(garrisonOpenMissionNpcClient.NpcGUID, UNIT_NPC_FLAG_NONE, UNIT_NPC_FLAG_2_GARRISON_MISSION_NPC);
    if (!adventureMap)
        return;

    uint32 uiMapId = sObjectMgr->GetAdventureMapUIByCreature(adventureMap->GetEntry());
    GarrisonType garType = _player->GetCurrentGarrison();

    switch (_player->GetMap()->GetEntry()->ExpansionID)
    {
    case EXPANSION_WARLORDS_OF_DRAENOR:     garType = GARRISON_TYPE_GARRISON;       break;
    case EXPANSION_LEGION:                  garType = GARRISON_TYPE_CLASS_HALL;     break;
    case EXPANSION_BATTLE_FOR_AZEROTH:      garType = GARRISON_TYPE_WAR_CAMPAIGN;   break;
    default:                                garType = GARRISON_TYPE_WAR_CAMPAIGN;    break;
    }
    _player->SetCurrentGarrison(garType);

    if (uiMapId)
    {
        if (Garrison const* garrison = _player->GetGarrison(_player->GetCurrentGarrison()))
            garrison->SendMissionListUpdate(true);
        SendPacket(WorldPackets::Garrison::ShowAdventureMap(garrisonOpenMissionNpcClient.NpcGUID, uiMapId).Write());
    }
    else
    {
        if (Garrison const* garrison = _player->GetGarrison(GARRISON_TYPE_GARRISON))
        {
            WorldPackets::Garrison::GarrisonOpenMissionNpc garrisonOpenMissionNpc;
            for (auto const& p : garrison->GetMissions())
            {
                garrisonOpenMissionNpc.Missions.push_back(p.first);
            }
            SendPacket(garrisonOpenMissionNpc.Write());

            garrison->SendMissionListUpdate(true);
        }
    }
}

void WorldSession::HandleGarrisonRequestScoutingMap(WorldPackets::Garrison::GarrisonRequestScoutingMap& scoutingMap)
{
    AdventureMapPOIEntry const* poiEntry = sAdventureMapPOIStore.LookupEntry(scoutingMap.ID);
    if (!poiEntry)
        return;

    bool active = true;
    if (poiEntry->PlayerConditionID)
        active = active && _player->MeetPlayerCondition(poiEntry->PlayerConditionID);

    switch (scoutingMap.ID)
    {
    case 40: // Zuldazar
        if (_player->GetTeam() == HORDE)
        {
            active = true;
        }
        break;
    case 41:
        if (_player->GetTeam() == HORDE)
        {
            active = true;
        }
        break;
    case 42:
        if (_player->GetTeam() == HORDE)
        {
            active = true;
        }
        break;
    case 148:
        if (_player->GetTeam() == HORDE)
        {
            active = true;
        }
        break;
    case 149:
        if (_player->GetTeam() == HORDE)
        {
            active = true;
        }
        break;
    case 150:
        if (_player->GetTeam() == HORDE)
        {
            active = true;
        }
        break;
    case 43: // Tiragarde Sound
        if (_player->GetTeam() == ALLIANCE)
        {
            active = true;
        }
        break;
    case 44:
        if (_player->GetTeam() == ALLIANCE)
        {
            active = true;
        }
        break;
    case 45:
        if (_player->GetTeam() == ALLIANCE)
        {
            active = true;
        }
        break;
    case 151:
        if (_player->GetTeam() == ALLIANCE)
        {
            active = true;
        }
        break;
    case 152:
        if (_player->GetTeam() == ALLIANCE)
        {
            active = true;
        }
        break;
    case 153:
        if (_player->GetTeam() == ALLIANCE)
        {
            active = true;
        }
        break;
    default:
        break;
    }

    if (poiEntry->QuestID)
        if (Quest const* quest = sObjectMgr->GetQuestTemplate(poiEntry->QuestID))
            active = active && _player->CanTakeQuest(quest, false);

    WorldPackets::Garrison::GarrisonScoutingMapResult result;
    result.ID = scoutingMap.ID;
    result.Active = active;
    SendPacket(result.Write());
}

void WorldSession::HandleGarrisonStartMission(WorldPackets::Garrison::GarrisonStartMission& startMission)
{
    if (!_player->GetNPCIfCanInteractWith(startMission.NpcGUID, UNIT_NPC_FLAG_NONE, UNIT_NPC_FLAG_2_GARRISON_MISSION_NPC))
        return;

    GarrMissionEntry const* missionEntry = sGarrMissionStore.LookupEntry(startMission.MissionID);
    if (!missionEntry)
        return;

    Garrison* garrison = _player->GetGarrison(GarrisonType(missionEntry->GarrTypeID));
    if (!garrison)
        return;

    garrison->StartMission(startMission.MissionID, startMission.Followers);
}

void WorldSession::HandleGarrisonCompleteMission(WorldPackets::Garrison::GarrisonCompleteMission& completeMission)
{
    if (!_player->GetNPCIfCanInteractWith(completeMission.NpcGUID, UNIT_NPC_FLAG_NONE, UNIT_NPC_FLAG_2_GARRISON_MISSION_NPC))
        return;

    GarrMissionEntry const* missionEntry = sGarrMissionStore.LookupEntry(completeMission.MissionID);
    if (!missionEntry)
        return;

    Garrison* garrison = _player->GetGarrison(GarrisonType(missionEntry->GarrTypeID));
    if (!garrison)
        return;

    garrison->CompleteMission(completeMission.MissionID);
}

void WorldSession::HandleGarrisonMissionBonusRoll(WorldPackets::Garrison::GarrisonMissionBonusRoll& missionBonusRoll)
{
    if (!_player->GetNPCIfCanInteractWith(missionBonusRoll.NpcGUID, UNIT_NPC_FLAG_NONE, UNIT_NPC_FLAG_2_GARRISON_MISSION_NPC))
        return;

    GarrMissionEntry const* missionEntry = sGarrMissionStore.LookupEntry(missionBonusRoll.MissionID);
    if (!missionEntry)
        return;

    Garrison* garrison = _player->GetGarrison(GarrisonType(missionEntry->GarrTypeID));
    if (!garrison)
        return;

    garrison->CalculateMissonBonusRoll(missionBonusRoll.MissionID);
}

void WorldSession::HandleGarrisonRequestLandingPageShipmentInfo(WorldPackets::Garrison::GarrisonRequestLandingPageShipmentInfo &)
{
    GarrisonType garType = _player->GetCurrentGarrison();

    switch (_player->GetMap()->GetEntry()->ExpansionID)
    {
    case EXPANSION_WARLORDS_OF_DRAENOR:     garType = GARRISON_TYPE_GARRISON;       break;
    case EXPANSION_LEGION:                  garType = GARRISON_TYPE_CLASS_HALL;     break;
    case EXPANSION_BATTLE_FOR_AZEROTH:      garType = GARRISON_TYPE_WAR_CAMPAIGN;   break;
    default:                                garType = GARRISON_TYPE_WAR_CAMPAIGN;    break;
    }
    _player->SetCurrentGarrison(garType);

    if (Garrison* garrison = _player->GetGarrison(garType))
        garrison->SendGarrisonShipmentLandingPage();
}

void WorldSession::HandleGarrisonRequestShipmentInfo(WorldPackets::Garrison::GarrisonRequestShipmentInfo & packet)
{
    if (!_player->GetNPCIfCanInteractWith(packet.NpcGUID, UNIT_NPC_FLAG_NONE, UNIT_NPC_FLAG_2_SHIPMENT_CRAFTER))
        return;

    if (Garrison* garrison = _player->GetGarrison(_player->GetCurrentGarrison()))
        garrison->SendShipmentInfo(packet.NpcGUID);
}



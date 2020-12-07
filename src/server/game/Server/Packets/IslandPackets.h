#ifndef IslandPackets_h__
#define IslandPackets_h__

#include "Packet.h"
#include "ObjectGuid.h"
#include "SharedDefines.h"
#include "InspectPackets.h"

namespace WorldPackets
{
    namespace Island
    {
        class IslandOnQueue final : public ClientPacket
        {
        public:
            IslandOnQueue(WorldPacket&& packet) : ClientPacket(CMSG_ISLAND_QUEUE, std::move(packet)) { }

            void Read() override;

            ObjectGuid QueueNPCGuid;
            int32 ActivityID = 0;
        };

        class IslandOpenNpc final : public ServerPacket
        {
        public:
            IslandOpenNpc(ObjectGuid guid) : ServerPacket(SMSG_ISLAND_OPEN_QUEUE_NPC, 36), QueueNPCGuid(guid) { }

            WorldPacket const* Write() override;

            ObjectGuid QueueNPCGuid;
        };

        class IslandAzeriteXpGain final : public ServerPacket
        {
        public:
            IslandAzeriteXpGain() : ServerPacket(SMSG_ISLAND_AZERITE_XP_GAIN, 4 + 36 + 36 + 4) { }

            WorldPacket const* Write() override;

            int32 XpGain = 0;
            ObjectGuid PlayerGuid;
            ObjectGuid SourceGuid;
            int32 SourceID = 0;
        };

        class IslandCompleted final : public ServerPacket
        {
        public:
            IslandCompleted() : ServerPacket(SMSG_ISLAND_COMPLETED) { }

            WorldPacket const* Write() override;

            int32 MapID = 0;
            int32 Winner = 0;
            //uint32 GroupTeamSize = 0; DisplayInfos.size()

            //WorldPackets::Inspect::PlayerModelDisplayInfo::Initialize(Player const* player)
            std::vector<WorldPackets::Inspect::PlayerModelDisplayInfo> DisplayInfos;
        };            
    }
}

#endif // IslandPackets_h__

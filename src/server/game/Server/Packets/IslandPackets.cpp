#include "IslandPackets.h"

WorldPacket const * WorldPackets::Island::IslandOpenNpc::Write()
{
    _worldPacket << QueueNPCGuid;

    return &_worldPacket;
}

WorldPacket const * WorldPackets::Island::IslandAzeriteXpGain::Write()
{
    _worldPacket << XpGain;
    _worldPacket << PlayerGuid;
    _worldPacket << SourceGuid;
    _worldPacket << SourceID;

    return &_worldPacket;
}

WorldPacket const * WorldPackets::Island::IslandCompleted::Write()
{
    _worldPacket << MapID;
    _worldPacket << Winner;
    _worldPacket << DisplayInfos.size();
    /*
    if (!DisplayInfos.empty())
        for (auto displayInfo : DisplayInfos)
        {
            _worldPacket << displayInfo.GUID;
            _worldPacket << int32(displayInfo.SpecializationID);
            _worldPacket << uint32(displayInfo.Items.size());
            _worldPacket.WriteBits(displayInfo.Name.length(), 6);
            _worldPacket << uint8(displayInfo.GenderID);
            _worldPacket << uint8(displayInfo.Skin);
            _worldPacket << uint8(displayInfo.HairColor);
            _worldPacket << uint8(displayInfo.HairStyle);
            _worldPacket << uint8(displayInfo.FacialHairStyle);
            _worldPacket << uint8(displayInfo.Face);
            _worldPacket << uint8(displayInfo.Race);
            _worldPacket << uint8(displayInfo.ClassID);
            _worldPacket.append(displayInfo.CustomDisplay.data(), displayInfo.CustomDisplay.size());
            _worldPacket.WriteString(displayInfo.Name);
            
            for (WorldPackets::Inspect::InspectItemData const& itemData : displayInfo.Items)
            {
                _worldPacket << itemData.CreatorGUID;
                _worldPacket << uint8(itemData.Index);
                _worldPacket << uint32(itemData.AzeritePowers.size());
                _worldPacket << uint32(itemData.AzeriteEssences.size());

                if (!itemData.AzeritePowers.empty())
                    _worldPacket.append(itemData.AzeritePowers.data(), itemData.AzeritePowers.size());

                _worldPacket << itemData.Item;
                _worldPacket.WriteBit(itemData.Usable);
                _worldPacket.WriteBits(itemData.Enchants.size(), 4);
                _worldPacket.WriteBits(itemData.Gems.size(), 2);
                _worldPacket.FlushBits();

                for (WorldPackets::Inspect::AzeriteEssenceData const& azeriteEssenceData : itemData.AzeriteEssences)
                {
                    _worldPacket << uint32(azeriteEssenceData.Index);
                    _worldPacket << uint32(azeriteEssenceData.AzeriteEssenceID);
                    _worldPacket << uint32(azeriteEssenceData.Rank);
                    _worldPacket.WriteBit(azeriteEssenceData.SlotUnlocked);
                    _worldPacket.FlushBits();
                }

                for (WorldPackets::Inspect::InspectEnchantData const& enchantData : itemData.Enchants)
                {
                    _worldPacket << uint32(enchantData.Id);
                    _worldPacket << uint8(enchantData.Index);
                }

                for (WorldPackets::Item::ItemGemData const& gem : itemData.Gems)
                    _worldPacket << gem;
            }
            
        }
    */
    return &_worldPacket;
}

void WorldPackets::Island::IslandOnQueue::Read()
{
    _worldPacket >> QueueNPCGuid;
    _worldPacket >> ActivityID;
}


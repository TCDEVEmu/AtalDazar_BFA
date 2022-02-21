/*
ZandalarCore
 MistiX
 */

#include "Creature.h"
#include "Group.h"
#include "Player.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "World.h"
#include "InstanceScript.h"
#include "freehold.h"

struct instance_free_hold : public InstanceScript
{
    instance_free_hold(InstanceMap* map) : InstanceScript(map) { }

    void Initialize() override
    {
        skycapGuid = ObjectGuid::Empty;
        sharkbaitGuid = ObjectGuid::Empty;
        jollyGuid = ObjectGuid::Empty;
        eudoraGuid = ObjectGuid::Empty;
        raoulGuid = ObjectGuid::Empty;
        lightningGuid = ObjectGuid::Empty;
        tortollanGuid = ObjectGuid::Empty;
        trothakGuid = ObjectGuid::Empty;
        harlanGuid = ObjectGuid::Empty;
        gukgukGuid = ObjectGuid::Empty;
        gurgthockGuid = ObjectGuid::Empty;
        daveyGuid = ObjectGuid::Empty;
        countRaoul = 0;
        SetBossNumber(FreeholdData::DataMaxEncounters);
    }

    void OnCreatureCreate(Creature* creature) override
    {
        if (instance->IsHeroic())
            creature->SetBaseHealth(creature->GetMaxHealth() * 2.f);
        if (instance->IsMythic())
            creature->SetBaseHealth(creature->GetMaxHealth() * 1.33f);

        switch (creature->GetEntry())
        {
        case uint32(FreeholdCreature::NpcSkycapKragg):
            skycapGuid = creature->GetGUID();
            break;
        case uint32(FreeholdCreature::NpcSharkBaitBoss):
            sharkbaitGuid = creature->GetGUID();
            break;
        case uint32(FreeholdCreature::NpcCaptainJolly):
            jollyGuid = creature->GetGUID();
            break;
        case uint32(FreeholdCreature::NpcCaptainEudora):
            eudoraGuid = creature->GetGUID();
            break;
        case uint32(FreeholdCreature::NpcCaptainRaoul):
            raoulGuid = creature->GetGUID();
            break;
        case uint32(FreeholdCreature::NpcGukguk):
            gukgukGuid = creature->GetGUID();
            break;
        case uint32(FreeholdCreature::NpcGurgthock):
            gurgthockGuid = creature->GetGUID();
            break;
        case uint32(FreeholdCreature::NpcDavey):
            daveyGuid = creature->GetGUID();
            break;
        case uint32(FreeholdCreature::NpcLightning):
            lightningGuid = creature->GetGUID();
            break;
        case uint32(FreeholdCreature::NpcLudwigVonTortollan):
            tortollanGuid = creature->GetGUID();
            break;
        case uint32(FreeholdCreature::NpcTrothak):
            trothakGuid = creature->GetGUID();
            break;
        case uint32(FreeholdCreature::NpcHarlanSweete):
            harlanGuid = creature->GetGUID();
            break;
        default:
            break;
        }
    }

    void OnPlayerEnter(Player* player) override
    {
        if (GetData(FreeholdData::DataCounciloCaptains) != DONE)
        {
            if (countRaoul >= 2)
            {
                if (Creature * raoul = instance->GetCreature(raoulGuid))
                {
                    raoul->AI()->DoAction(FreeholdAction::ActionSelectCaptainRaoul);
                }
            }
        }
        if (isHorde == true || isAlliance == true)
        {
            return;
        }
        else
        {
            if (player->GetTeam() == HORDE)
            {
                isHorde = true;
                player->PlayConversation(9658);
            }
            if (player->GetTeam() == ALLIANCE)
            {
                isAlliance = true;
                //player->PlayConversation(0);
            }
        }
    }

    void OnUnitDeath(Unit* unit) override
    {
        if (!unit->IsCreature())
            return;

        if (GetData(FreeholdData::DataCounciloCaptains) != DONE)
        {
            if (unit->GetEntry() == FreeholdCreature::NpcBlacktoothKnuckleduster)
            {
                countRaoul++;

                if (countRaoul >= 2)
                {
                    if (Creature * raoul = instance->GetCreature(raoulGuid))
                    {
                        raoul->AI()->DoAction(FreeholdAction::ActionSelectCaptainRaoul);
                    }
                }
            }
        }
    }

    ObjectGuid GetGuidData(uint32 type) const override
    {
        switch (type)
        {
        case uint32(FreeholdCreature::NpcSkycapKragg):
            return skycapGuid;
            break;
        case uint32(FreeholdCreature::NpcSharkBaitBoss):
            return sharkbaitGuid;
            break;
        case uint32(FreeholdCreature::NpcCaptainJolly):
            return jollyGuid;
            break;
        case uint32(FreeholdCreature::NpcCaptainEudora):
            return eudoraGuid;
            break;
        case uint32(FreeholdCreature::NpcCaptainRaoul):
            return raoulGuid;
            break;
        case uint32(FreeholdCreature::NpcGukguk):
            return gukgukGuid;
            break;
        case uint32(FreeholdCreature::NpcGurgthock):
            return gurgthockGuid;
            break;
        case uint32(FreeholdCreature::NpcDavey):
            return daveyGuid;
            break;
        case uint32(FreeholdCreature::NpcLightning):
            return lightningGuid;
            break;
        case uint32(FreeholdCreature::NpcLudwigVonTortollan):
            return tortollanGuid;
            break;
        case uint32(FreeholdCreature::NpcTrothak):
            return trothakGuid;
            break;
        case uint32(FreeholdCreature::NpcHarlanSweete):
            return harlanGuid;
        default:
            break;
        }

        return ObjectGuid::Empty;
    }


    ObjectGuid skycapGuid;
    ObjectGuid sharkbaitGuid;
    ObjectGuid jollyGuid;
    ObjectGuid eudoraGuid;
    ObjectGuid raoulGuid;
    ObjectGuid lightningGuid;
    ObjectGuid tortollanGuid;
    ObjectGuid trothakGuid;
    ObjectGuid harlanGuid;
    ObjectGuid gukgukGuid;
    ObjectGuid gurgthockGuid;
    ObjectGuid daveyGuid;
    uint8 countRaoul;

 private:
     bool isHorde;
     bool isAlliance;
};

void AddSC_instance_freehold()
{
    RegisterInstanceScript(instance_free_hold, 1754);
}

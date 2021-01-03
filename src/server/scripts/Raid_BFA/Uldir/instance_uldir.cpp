#include "ScriptMgr.h"
#include "Player.h"
#include "InstanceScript.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "ObjectMgr.h"
#include "uldir.h"

DoorData const doorData[] =
{
    { GO_MYTHRAX_DOOR, DATA_MYTHRAX, DOOR_TYPE_PASSAGE },
};

struct instance_uldir : public InstanceScript
{
    instance_uldir(InstanceMap* map) : InstanceScript(map)
    {    
        SetBossNumber(EncounterCount);
    }

    void Initialize()
    {
        LoadDoorData(doorData);
    }

	void OnCreatureCreate(Creature* cre) override
	{
        if (CreatureTemplate const* cInfo = sObjectMgr->GetCreatureTemplate(cre->GetEntry()))
        {
            if (cInfo->MechanicImmuneMask == 0)
            {
                if (instance->IsMythic())
                    if (cre->GetFaction() == 16)
                        cre->SetBaseHealth(cre->GetMaxHealth() * 3.0f);

                if (instance->IsHeroic())
                    if (cre->GetFaction() == 16)
                        cre->SetBaseHealth(cre->GetMaxHealth() * 6.0f);

                 else
                    if (cre->GetFaction() == 16)
                        cre->SetBaseHealth(cre->GetMaxHealth() * 9.8f);
            }
            if (cInfo->rank == 3)
            {
                cre->SetBaseHealth(cre->GetMaxHealth() * 4.5f);
            }
        }
	}

    void OnGameObjectCreate(GameObject* go) override
    {
        switch (go->GetEntry())
        {
        case GO_MYTHRAX_DOOR:
            go->SetGoState(GO_STATE_READY);
            break;
        }
    }
};

void AddSC_instance_uldir()
{
    RegisterInstanceScript(instance_uldir, 1861);
}

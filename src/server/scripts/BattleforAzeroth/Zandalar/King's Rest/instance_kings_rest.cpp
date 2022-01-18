#include "ScriptMgr.h"
#include "Player.h"
#include "InstanceScript.h"
#include "kings_rest.h"

struct instance_kings_rest : public InstanceScript
{
    instance_kings_rest(InstanceMap* map) : InstanceScript(map)
    {
        SetBossNumber(EncounterCount);
    }

    void OnGameObjectCreate(GameObject* go) override
    {
        switch (go->GetEntry())
        {
        case GO_THE_COUNCILS_CACHE:
        case GO_BOON_OF_THE_FIRST_KING:
             go->SetFlag(GAMEOBJECT_FLAGS, GO_FLAG_LOCKED);
             break;
        }
    }
};

void AddSC_instance_kings_rest()
{
    RegisterInstanceScript(instance_kings_rest, 1762);
}

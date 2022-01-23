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
};

void AddSC_instance_kings_rest()
{
    RegisterInstanceScript(instance_kings_rest, 1762);
}

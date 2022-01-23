#include "throne_of_thunder.h"
#include "GameObject.h"
#include "MoveSplineInit.h"
#include "GameObjectAI.h"
#include "ObjectMgr.h"
#include "ScriptMgr.h"

struct instance_throne_of_thunder : public InstanceScript
{
    instance_throne_of_thunder(InstanceMap* map) : InstanceScript(map)
    {
        Initialize();
    }

    void Initialize()
    {
        SetBossNumber(MAX_ENCOUNTERS);
        
    }

};

void AddSC_instance_throne_of_thunder()
{
    RegisterInstanceScript(instance_throne_of_thunder, 1098);
}

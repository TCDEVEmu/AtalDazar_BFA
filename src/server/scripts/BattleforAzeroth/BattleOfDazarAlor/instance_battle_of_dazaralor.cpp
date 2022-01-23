#include "ScriptMgr.h"
#include "Player.h"
#include "InstanceScript.h"
#include "battle_of_dazaralor.h"
#include "GameObject.h"
#include "ObjectMgr.h"
#include "Conversation.h"
#include "PhasingHandler.h"

struct instance_battle_of_dazaralor : public InstanceScript
{
    instance_battle_of_dazaralor(InstanceMap* InstanceMap) : InstanceScript(InstanceMap)
	{
		SetHeaders(DataHeader);
		SetBossNumber(EncounterCount);		
	}
};

void AddSC_instance_battle_of_dazaralor()
{
	RegisterInstanceScript(instance_battle_of_dazaralor, 2070);
}

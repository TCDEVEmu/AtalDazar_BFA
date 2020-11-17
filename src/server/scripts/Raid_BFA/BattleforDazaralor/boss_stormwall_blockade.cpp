#include "ScriptMgr.h"
#include "Creature.h"
#include "CreatureAI.h"
#include "Unit.h"
#include "UnitAI.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "battle_of_dazaralor.h"
// ||

struct boss_stormwall_blockade : public BossAI
{
    boss_stormwall_blockade(Creature* creature) : BossAI(creature, DATA_STORMWALL_BLOCKADE) { }
};

void AddSC_boss_stormwall_blockade()
{
    RegisterCreatureAI(boss_stormwall_blockade);
}

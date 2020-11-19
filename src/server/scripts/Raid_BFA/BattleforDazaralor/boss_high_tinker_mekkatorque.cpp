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

struct boss_high_tinker_mekkatorque : public BossAI
{
    boss_high_tinker_mekkatorque(Creature* creature) : BossAI(creature, DATA_HIGH_TINKER_MEKKATORQUE) { }
};

void AddSC_boss_high_tinker_mekkatorque()
{
    RegisterCreatureAI(boss_high_tinker_mekkatorque);
}

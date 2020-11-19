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

struct boss_king_rastakhan : public BossAI
{
    boss_king_rastakhan(Creature* creature) : BossAI(creature, DATA_KING_RASTAKHAN) { }
};

void AddSC_boss_king_rastakhan()
{
    RegisterCreatureAI(boss_king_rastakhan);
}

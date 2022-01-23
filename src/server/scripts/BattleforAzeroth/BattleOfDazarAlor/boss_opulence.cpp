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

enum Spells
{
    PERIODIC_ENERGY_GAIN = 299956,
    HOARD_POWER = 287070,
    COIN_SHOWER_AT = 285014,
    COIN_SHOWER_MISSILE = 285027,
    COIN_SHOWER_DAMAGE = 285046,
    COIN_SWEEP = 287037,
    FOCUSED_ANIMUS_AURA = 284614,
    GREED_AURA = 284943,
    LIQUID_GOLD_AURA = 287072,
    LIQUID_GOLD_CREATE_AT = 287073,
    LIQUID_GOLD_AT_DAMAGE = 287074,
    SPIRITS_OF_GOLD = 285995,
    SURGING_GOLD = 289155,
    WAIL_OF_GREED = 284941,
    WAIL_OF_GREED_MOD_DAMAGE = 284942,
    //Add
    CHANNEL_OF_GOLD = 286026,
    GOLD_BURST_DAMAGE = 286040,
};

void AddSC_boss_opulence()
{

}

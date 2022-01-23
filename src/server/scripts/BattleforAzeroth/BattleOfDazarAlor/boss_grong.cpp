#include "ScriptMgr.h"
#include "Creature.h"
#include "CreatureAI.h"
#include "Unit.h"
#include "UnitAI.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "ScriptedGossip.h"
#include "PhasingHandler.h"
#include "battle_of_dazaralor.h"

const Position apetagonizer_3000_pos = { -907.793f, 919.714f, 386.374f, 0.08f };

enum Spells
{
    PERIODIC_ENERGY_GAIN = 299956,
    TANTRUM = 281936,
    REVERBERATING_SLAM = 282179,
    FEROCIOUS_ROAR = 290574,
    FEROCIOUS_ROAR_FEAR = 290575,
    BESTIAL_COMBO = 282082,
    BESTIAL_SMASH = 283078,
    BESTIAL_IMPACT = 289412,
    BESTIAL_THROW = 289292,
    BESTIAL_THROW_JUMP = 289406,
    RENDERING_BITE_CAST = 285874,
    RENDERING_BITE = 285875,
    MEGATOMIC_SEEKER_MISSILE = 282213,
    MEGATOMIC_SEEKER_MISSILE_CREATE_AT = 282215,
    MEGATOMIC_AT_PERIODIC_DAMAGE = 283069,
    SHATTERED = 282010,
    //Adds
    PARACHUTE = 55001,
    APETAGONIZE = 282243,
    APETAGONIZE_CORE_MISSILE = 285661,
    APETAGONIZE_CORE_BUFF = 285659,
    DISCHARGE_APETAGONIZE_CORE = 285660,
    LIGHTNING_DETONATION = 285654,
};

void AddSC_boss_grong()
{

}

#include "ScriptMgr.h"
#include "Creature.h"
#include "CreatureAI.h"
#include "Unit.h"
#include "UnitAI.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "VehicleDefines.h"
#include "battle_of_dazaralor.h"
enum Spells
{
    SPELL_ELECTROSHOCK_STRIKES_DUMMY = 289696,
    SPELL_ELECTROSHOCK_AMPLIFICATION_STACK = 289699,
    SPELL_BUSTER_CANNON_CAST_DUMMY = 287851,
    SPELL_BUSTER_CANNON_DAMAGE = 282182,
    SPELL_BUSTER_CANNON_CREATE_AT = 282153,
    SPELL_HEAVY_THRUSTERS_DUMMY = 284145,
    SPELL_BLAST_OFF = 282205,
    SPELL_CRASH_DOWN = 282245,
    SPELL_CRASH_DOWN_DAMAGE = 283394,
    SPELL_GIGAVOLT_CHARGE = 286646, // 2 tar, on heroic/myth 3
    SPELL_GIGAVOLT_BLAST = 283411,
    SPELL_SHRINK = 284219,
    SPELL_TRAMPLE = 284214,
    SPELL_DEPLOY_SPARK_BOT = 284042, //npc 144942
    SPELL_SPARK_PULSE = 282408,
    SPELL_GNOMISH_FORCE_SHIELD = 282401,
    SPELL_ANTI_TAMPERING_SHOCK = 286480,
    SPELL_SIGNAL_EXPLODING_SHEEP = 287929, //npc 148450
    SPELL_CRITTER_EXPLOSION = 287877,
    SPELL_SHEEP_SHRAPNEL_DAMAGE = 287891,
    SPELL_CRITTER_EXPLOSION_CREATE_AT = 287885,
    SPELL_HYPERDRIVE = 286051,
    //Heroic
    SPELL_WIND_UP = 287293,
    SPELL_WOUND_UP = 287297,
    SPELL_WORMHOLE_GENERATOR_DUMMY_CAST = 287952,
    SPELL_WORMHOLE_GENERATOR_VISUAL = 288232,
    SPELL_WORMHOLE_GENERATOR_TELEPORT = 287226,
};

const Position gnomish_support_claw_a = { -1588.186f, 789.644f, 126.965f, 0.0f };
const Position gnomish_support_claw_b = { -1605.073f, 788.459f, 126.965f, 0.0f };
const Position gnomish_support_claw_c = { -1605.872f, 816.764f, 126.965f, 0.0f };

void AddSC_boss_high_tinker_mekkatorque()
{

}

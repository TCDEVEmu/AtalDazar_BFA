#include "ScriptMgr.h"
#include "Creature.h"
#include "CreatureAI.h"
#include "Unit.h"
#include "UnitAI.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "MotionMaster.h"
#include "battle_of_dazaralor.h"

const Position living_bomb_pos_a = { -921.0f, 830.0f, 369.0f, 3.f };
const Position living_bomb_pos_b = { -878.0f, 805.0f, 370.0f, 3.f };
const Position living_bomb_pos_c = { -921.0f, 776.0f, 369.0f, 3.f };
const Position at_60_energy_pos = { -905.0f, 847.0f, 369.0f, 4.6f };
const Position center_of_room = { -909.0f, 805.0f, 369.0f, 3.1f };
const Position spirit_of_xuen_pos = { -905.0f, 786.0f, 369.0f, 1.6f };
const Position magma_trap_a = { -891.0f, 818.0f, 369.0f, 3.f };
const Position magma_trap_b = { -892.0f, 810.0f, 369.0f, 3.f };
const Position magma_trap_c = { -892.0f, 798.0f, 369.0f, 3.f };
const Position magma_trap_d = { -892.0f, 798.0f, 369.0f, 3.f };
const Position manceroy_tele_pos = { -898.0f, 736.0f, 369.0f, 1.6f }; // used for barrier phase
const Position mestrah_tele_pos = { -917.0f, 733.0f, 369.0f, 1.58f }; // used for barrier phase

enum Spells
{
    PERIODIC_ENERGY_GAIN = 299956,
    //Monk
    MULTI_SIDED_STRIKE = 284028,
    SUCCESSFUL_DEFENSE = 284089,
    TESTED = 288151,
    ROLL = 109131,
    WHIRLING_JADE_STORM = 286436,
    //Mage
    FIREBALL = 282036, //cast 2s
    RISING_FLAMES = 282037, //triggers burnout, after expire/remove
    BURNOUT = 282041,
    FIRE_SHIELD = 286425,
    PYROBLAST = 286379,
    SEARING_EMBERS = 286988, //5 targets
    UNLEASHED_EMBER = 286989,
    //Team attacks
    FIRE_FROM_MIST = 285428, // at 30 energy, summon two adds npc 146107, on mythic 3, they're stationary, displayid 90376
    BEAM_DAMAGE_AURA = 286503,
    EXPLOSION = 284399,
    //A Flash of Hostility used by Monk, at 60 energy, 
    //BARRIER npc, 147374, displayid 90015
    FLASH_OF_PHOENIXES = 284669,
    RING_OF_HOSTILITY_MESTRAH_PERIODIC_DUMMY = 297568,
    RING_OF_HOSTILITY_KNOCKBACK = 284146,
    PHOENIX_STRIKE_MISSILE = 282043,
    PHOENIX_STRIKE_DAMAGE = 284388,
    //Transmorms, at 100 energy, both bosses transform
    DRAGONS_BREATH = 286396,
    BLAZING_PHOENIX_TRANSFORM = 282040, //npc 147536, 89730 displayid    
    SPIRITS_OF_XUEN = 285645,
    TIGER_PAW = 285634,
    POUNCE = 286086,
    MAGMA_TRAP_MISSILE_TRIGGER = 284373, //on spellhitdest summon trap, spell 282038
    MAGMA_TRAP_KNOCK = 284374,
    MAGMA_TRAP_2 = 98170,
    FORCE_ORB_REDUCE_MOVEMENT_SPEED = 287747,
    PATH_OF_NIUAZUO_SUMMON = 287623, // npc 148344
    PATH_OF_NIUAZUO_AT_DAMAGE = 287615
};

void AddSC_boss_jadefire_masters()
{

}

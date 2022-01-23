#include "throne_of_thunder.h"
#include "GameObject.h"
#include "MoveSplineInit.h"
#include "GameObjectAI.h"
#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "AreaTrigger.h"
#include "SpellAuraDefines.h"
#include "SpellAuras.h"
#include "SpellAuraEffects.h"
#include "SpellMgr.h"
#include "Vehicle.h"

enum Spells
{
    SPELL_BERSERK               = 137697,
    SPELL_EJECT_ALL_PASSENGERS  = 50630,
    SPELL_ZERO_POWER            = 96301,

    // Iron Qon

    SPELL_THROW_SPEAR_AOE       = 136176, // aoe targetting
    SPELL_THROW_SPEAR           = 134925,
    SPELL_THROW_SPEAR_DMG       = 134926,

    SPELL_DISARM_SELF           = 135104,

    SPELL_IRON_QON_SPEAR        = 134927,

    SPELL_RETURN_SPEAR_SCRIPT   = 137712,
    SPELL_RETURN_SPEAR_DUMMY    = 137713,
    SPELL_RETURN_SPEAR_JUMP     = 137714,

    SPELL_IMPALE                    = 134691,

    SPELL_FIST_SMASH                = 136146,
    SPELL_FIST_SMASH_DMG            = 136147,

    SPELL_RISING_ANGER              = 136324,
    SPELL_RISING_ANGER_AURA         = 136323,

    SPELL_IGNITE_CYCLONE            = 136139,
    SPELL_FREEZE_CYCLONE            = 136153,

    // rushing wind 136161 136590
    SPELL_BURNING_BLAST_DMG         = 136925,

    // Ro'shak

    SPELL_MOLTEN_INFERNO            = 134664,
    SPELL_MOLTEN_OVERLOAD           = 137221,

    SPELL_UNLEASHED_FLAME_FORCE     = 139111,
    SPELL_UNLEASHED_FLAME_DUMMY_1   = 139112, // triggered by 139111
    SPELL_UNLEASHED_FLAME_PERIODIC  = 137991,
    SPELL_UNLEASHED_FLAME_DUMMY_2   = 134621, // triggered by 137991
    SPELL_UNLEASHED_FLAME_DUMMY_3   = 139140, // aoe which targets players, has basepoints 139138
    SPELL_UNLEASHED_FLAME_MISSILE_1 = 134611,
    SPELL_UNLEASHED_FLAME_MISSILE_2 = 139138,
    SPELL_UNLEASHED_FLAME_DMG       = 134628,

    SPELL_SCORCHED                  = 134647, // triggered by 134611 and 139138

    SPELL_BURNING_CINDERS_AOE       = 136330, // missile flies to the spear
    SPELL_BURNING_CINDERS           = 134758,
    SPELL_BURNING_CINDERS_AURA      = 135052,
    SPELL_BURNING_CINDERS_AURA_DMG  = 137668, // triggered by 137052

    SPELL_GROUND_RUPTURE            = 134759, // triggered by 134758

    // Quetzal

    SPELL_STORM_CLOUD_AOE           = 136419, // missile flies to the spear
    SPELL_STORM_CLOUD               = 136421,
    SPELL_STORM_CLOUD_AURA          = 136425,
    SPELL_STORM_CLOUD_AURA_DMG      = 137669, // triggered by 136425
    SPELL_ELECTRIFIED               = 136615,

    SPELL_STORM_SURGE               = 136498, // triggered by 136421


    SPELL_ARC_LIGHTNING_FORCE       = 139106,
    SPELL_LIGHTNING_STORM           = 136192, // main debuff, triggered by 139106
    SPELL_ARC_LIGHTNING_DUMMY       = 138473, // with basepoints 136193
    SPELL_ARC_LIGHTNING_AURA_DMG    = 136193,
    SPELL_ARC_LIGHTNING_SUMMON      = 136198,
    SPELL_ARC_LIGHTNING_REMOVE      = 136199,
    SPELL_ARC_LIGHTNING_PERIODIC_1  = 136224, // for visual
    SPELL_ARC_LIGHTNING_DUMMY_1     = 136226,
    SPELL_ARC_LIGHTNING_PERIODIC_2  = 138434,
    SPELL_ARC_LIGHTNING_DUMMY_2     = 138435,

    SPELL_RUSHING_WINDS_AREATRIGGER = 136574,
    SPELL_RUSHING_WINDS_AOE         = 136591,
    SPELL_RUSHING_WINDS_JUMP        = 136592,
    SPELL_RUSHING_WINDS_AURA        = 136654, // if player is hitted by a tornado
    SPELL_WINDSTORM_AURA            = 136577,
    // 137656
    // 137480

    // Dam'ren

    SPELL_FROZEN_BLOOD_AOE          = 136449,
    SPELL_FROZEN_BLOOD              = 136451,
    SPELL_FROZEN_BLOOD_DMG          = 136520, // triggered by 136451
    SPELL_FROZEN_BLOOD_DEBUFF       = 136452,
    SPELL_FROZEN_BLOOD_SLOW         = 137664, // triggered by 136452

    SPELL_DEAD_ZONE_LEFT            = 135199,
    SPELL_DEAD_ZONE_RIGHT           = 135223,
    SPELL_DEAD_ZONE_BACK            = 135225,
    SPELL_DEAD_ZONE_FRONT           = 135361,

    SPELL_DEAD_ZONE_FRONT_RIGHT     = 137226,
    SPELL_DEAD_ZONE_LEFT_RIGHT      = 137227,
    SPELL_DEAD_ZONE_FRONT_LEFT      = 137228,
    SPELL_DEAD_ZONE_FRONT_BACK      = 137229,
    SPELL_DEAD_ZONE_LEFT_BACK       = 137230,
    SPELL_DEAD_ZONE_BACK_RIGHT      = 137231,
    SPELL_DEAD_ZONE_SCRIPT          = 137232,

    SPELL_FROZEN_RESILIENCE         = 135144,
    SPELL_FROZEN_RESILIENCE_DMG     = 135142,
};

enum Adds
{
    NPC_IRON_QON_SPEAR_1    = 68480,
    NPC_IRON_QON_SPEAR_2    = 69159,
    NPC_LIGHTNING_CLOUD     = 70660,
};

const Position ironQonPos[3] =
{
    {6045.43f, 4598.80f, 146.51f, 1.60f}, // iron qon,  center
    {6065.55f, 4606.11f, 146.55f, 1.60f}, // frost add, right from the boss
    {6025.83f, 4605.50f, 146.55f, 1.60f}  // air add, left from boss
};

const Position centerRoomPos = {6045.66f, 4671.58f, 153.0f, 1.72f};

void AddSC_boss_iron_qon()
{

}

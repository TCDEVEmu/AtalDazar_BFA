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
    SPELL_ZERO_POWER                        = 78725, // energy

    SPELL_COSMETIC_TELEPORT_E               = 139102,
    SPELL_COSMETIC_TELEPORT_N               = 139103,
    SPELL_COSMETIC_TELEPORT_W               = 139104,
    SPELL_COSMETIC_TELEPORT_S               = 139105,

    SPELL_COSMETIC_LIGHTNING_PILLAR_BEAM    = 138090,
    SPELL_COSMETIC_LIGHTNING_PILLAR_SPARK_1 = 138091,
    SPELL_COSMETIC_LIGHTNING_PILLAR_SPARK_2 = 138152,
    SPELL_COSMETIC_LIGHTNING_PILLAR_SPARK_3 = 138153,

    SPELL_DISPLACE                          = 136948,

    SPELL_SUPERCHARGE_CONDUITS              = 137045,
    SPELL_SUPERCHARGE_CONDUITS_DUMMY        = 137073,
    SPELL_SUPERCHARGE_CONDUITS_SCRIPT_1     = 137146,   // it's in dbm notifications
    SPELL_SUPERCHARGE_CONDUITS_SCRIPT_2     = 137150,   // ? no visual
    SPELL_SUPERCHARGE_CONDUITS_SCRIPT_3     = 139872,   // ? no visual
    SPELL_SUPERCHARGE_CONDUITS_KNOCKBACK    = 138032,

    SPELL_OVERLOAD_CIRCUITS_AREATRIGGER_1   = 137153,
    SPELL_OVERLOAD_CIRCUITS_AREATRIGGER_2   = 137169,
    SPELL_OVERLOAD_CIRCUITS_AREATRIGGER_3   = 137170,
    SPELL_OVERLOAD_CIRCUITS_AREATRIGGER_4   = 137171,
    SPELL_OVERLOAD_CIRCUITS_DMG             = 137176,

    SPELL_ELECTICAL_CONDUIT_DUMMY           = 134800, // ? no visual
    SPELL_ELECTRICAL_CONDUIT_BEAM           = 134803, // from conduit to lei shen
    SPELL_ELECTRICAL_CONDUIT_DMG            = 134808,

    SPELL_CONDUIT_LEVEL_AURA                = 137606,
    SPELL_CONDUIT_LEVEL_PLAYERS             = 137607, // shows current conduit level 1-100 for players, triggered by 137606
    SPELL_CONDUIT_LEVEL_SCRIPT              = 137611, // triggered by 137606
    SPELL_CONDUIT_LEVEL_BOUNCING_BOLT       = 137581,
    SPELL_CONDUIT_LEVEL_OVERCHARGE          = 139272,
    SPELL_CONDUIT_LEVEL_STATIC_SHOCK        = 139271,
    SPELL_CONDUIT_LEVEL_DIFFUSION_CHAIN     = 139273,

    SPELL_DISCHARGED_ENERGY                 = 134820,
    SPELL_DISCHARGED_ENERGY_DMG             = 134821,
    SPELL_DISCHARGED_ENERGY_DEBUFF          = 137446,

    SPELL_STATIC_SHOCK_DUMMY                = 135680,
    SPELL_STATIC_SHOCK_AOE                  = 135695,
    SPELL_STATIC_SHOCK_DMG                  = 135703,

    SPELL_OVERCHARGE_DUMMY                  = 135682,
    SPELL_OVERCHARGE_AOE                    = 136295,
    SPELL_OVERCHARGE_DUMMY_VISUAL           = 137252, // triggered by 136295
    SPELL_OVERCHARGE_DMG                    = 136326,
    SPELL_ELECTRIC_DISCHARGE_VISUAL         = 140061, // wrong spell, but same visual

    SPELL_DIFFUSION_CHAIN_DUMMY             = 135681,
    SPELL_DIFFUSION_CHAIN_AOE               = 135990,
    SPELL_DIFFUSION_CHAIN_DMG               = 135991,
    SPELL_DIFFUSION_CHAIN_SUMMON_1          = 135992, // lesser
    SPELL_DIFFUSION_CHAIN_SUMMON_2          = 135993, // normal
    SPELL_DIFFUSION_CHAIN_SUMMON_3          = 135994, // greater

    SPELL_BOUNCING_BOLT_DUMMY               = 135683,
    SPELL_BOUNCING_BOLT_TRIGGER             = 136397, // on creature
    SPELL_BOUNCING_BOLT_MISSILE             = 136361,
    SPELL_BOUNCING_BOLT_DMG                 = 136366,
    SPELL_BOUNCING_BOLT_SUMMON_1            = 136391, // summons dummy trigger
    SPELL_BOUNCING_BOLT_SUMMON_2            = 136372, // summons mob

    SPELL_AMPLIFIER                         = 138070,


    // Lei Shen
    SPELL_DECAPITATE                        = 134912,
    SPELL_DECAPITATE_MARK                   = 135000,
    SPELL_DECAPITATE_MISSILE                = 134990,
    SPELL_DECAPITATE_SCRIPT                 = 134919,
    SPELL_DECAPITATE_DMG                    = 134916,

    SPELL_THUNDERSTRUCK_FORCE               = 135091,
    SPELL_THUNDERSTRUCK_MISSILE             = 135095,
    SPELL_THUNDERSTRUCK_DMG                 = 135096,
    SPELL_THUNDERSTRUCK_SUMMON              = 135098, // triggered by 135091
    SPELL_BALL_TARGET                       = 140770, // wrong spell but need to show target

    SPELL_CRUSHING_THUNDER_AURA_PRE         = 135143,
    SPELL_CRUSHING_THUNDER_DMG              = 135150, // summons area trigger
    SPELL_CRUSHING_THUNDER_DUMMY            = 135151,
    SPELL_CRUSHING_THUNDER_PERIODIC_DMG     = 135153,

    SPELL_FUSION_SLASH                      = 136478,

    SPELL_BALL_LIGHTNING_AOE                = 136544, // targetting for summon
    SPELL_SUMMON_BALL_LIGHTNING             = 136543,
    SPELL_BALL_LIGHTNING_VISUAL             = 136534,
    SPELL_BALL_LIGHTNING_JUMP               = 136548,
    SPELL_BALL_LIGHTNING_DMG                = 136620,
    SPELL_BALL_LIGHTNING_DUMMY_PERIODIC     = 139261,
    SPELL_BALL_LIGHTNING_DUMMY              = 136539,

    SPELL_LIGHTNING_WHIP_FORCE              = 136845,
    SPELL_LIGHTNING_WHIP_SUMMON             = 136846, // triggered by 136845
    SPELL_LIGHTNING_WHIP_DMG                = 136850,
    SPELL_LIGHTNING_WHIP_AREATRIGGER        = 137499, // triggered by 136850
    SPELL_LIGHTNING_BOLT                    = 136853,

    SPELL_OVERHELMING_POWER                 = 136913,
    SPELL_OVERHELMING_POWER_PERIODIC        = 137553, // on creatures ?
    SPELL_ELECTRICAL_SHOCK_DMG              = 136914,

    SPELL_VIOLENT_GALE_WINDS_SCRIPT         = 136869,
    SPELL_VIOLENT_GALE_WINDS_DMG            = 136889,
    SPELL_VIOLENT_GALE_WINDS_AREATRIGGER_1  = 136867,
    SPELL_VIOLENT_GALE_WINDS_AREATRIGGER_2  = 136876,
    SPELL_VIOLENT_GALE_WINDS_AREATRIGGER_3  = 136877,
    SPELL_VIOLENT_GALE_WINDS_AREATRIGGER_4  = 136879,
};

enum Adds
{
    NPC_STATIC_SHOCK_CONDUIT        = 68398,    // north
    NPC_DIFFUSION_CHAIN_CONDUIT     = 68696,    // east
    NPC_OVERCHARGE_CONDUIT          = 68697,    // south
    NPC_BOUNCING_BOLT_CONDUIT       = 68698,    // west

    NPC_BOUNCING_BOLT               = 69147,
    NPC_UNHARNESSED_POWER           = 69133,
    NPC_LESSER_DIFFUSED_LIGHTNING   = 69012,
    NPC_DIFFUSED_LIGHTNING          = 69013,
    NPC_GREATER_DIFFUSED_LIGHTNING  = 69014,
    NPC_THUNDEROUS_THROW            = 68574,
    NPC_BALL_LIGHTNING_1            = 69462, // ?
    NPC_BALL_LIGHTNING_2            = 69232,
    NPC_LIGHTNING_WHIP              = 69385,
};

enum Equipments
{
    EQUIPMENT_AXE       = 94982,
    EQUIPMENT_POLEARM   = 94983,
};

const Position conduitPos[4] =
{
    {5710.45f, 4177.31f, 156.463f, 1.57f},  // west
    {5627.34f, 4094.19f, 156.463f, 3.14f},  // south
    {5793.56f, 4094.19f, 156.463f, 0.00f},  // north
    {5710.45f, 4011.08f, 156.463f, 4.71f}   // east
};

const Position centerPos = {5710.55f, 4094.05f, 156.47f, 3.94f};

const Position introPos[4] =
{
    {5710.417969f, 4167.541016f, 156.47f, 1.53f}, // west
    {5783.684082f, 4094.173096f, 156.47f, 0.02f}, // north
    {5710.513184f, 4020.599854f, 156.47f, 4.64f}, // east
    {5636.246094f, 4094.226318f, 156.47f, 3.17f}  // south
};

void AddSC_boss_lei_shen()
{

}

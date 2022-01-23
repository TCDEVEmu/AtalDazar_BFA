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

enum eSpells
{
    // Intro
    SPELL_PULL_TARGET_TO_OWN_POSITION       = 138406, // Pulls target
    SPELL_FORCE_TO_JUMP                     = 138359,

    // Ji-Kun
    SPELL_CAW_FIRST                         = 138923,
    SPELL_CAW_MISSILE                       = 138926,

    SPELL_QUILLS                            = 134380,
    SPELL_QUILLS_DMG                        = 134381,
    SPELL_QUILLS_DUMMY                      = 138639, // ?

    SPELL_INFECTED_TALONS                   = 140094,
    SPELL_INFECTED_TALONS_DMG               = 140092,

    SPELL_TALON_RAKE                        = 134366,

    SPELL_DOWN_DRAFT                        = 134370,

    SPELL_SAFETY_NET_TRIGGER                = 136524,

    SPELL_SLIMED                            = 134256,

    SPELL_PRIMAL_NUTRIMENT                  = 140741,

    // Nests (with no effect : 138360  - 139286)
    SPELL_INCUBATE                          = 137526, // Red beam on activated nest
    SPELL_INCUBATED                         = 134347, // Incubated young egg (68194), turns into hatchling (68192) 10s after

    SPELL_LAY_EGG                           = 134367, // Summons an egg (68202)

    SPELL_FEED_YOUNG                        = 137528, // Casting 2s, triggers 2x 134385 (to script)
    SPELL_SUMMON_FEED                       = 134385, // Summons Feed (68178)

    SPELL_DROP_FEED_POOL                    = 138209, // Shows exploding green pool - triggers 134259 (summons 68188)

    SPELL_FEED_POOL_PERIODIC_DMG            = 138319, // aura, 35k/s

    SPELL_FEED_SPAWN_SPELL                  = 138840, // Spawns green blob on caster
    SPELL_FEED_POOL_SPAWN_SPELL_GREEN       = 138854, // Shows giant green pool at caster's feet

    SPELL_JUMP_TO_TARGET                    = 140575, // at platform
    SPELL_SUMMON_FEED_POOL_1                = 140578,

    SPELL_FEED_JUMPS_DOWN_TO_HATCHLING      = 138904, // Jumps + triggers 139285
    SPELL_SUMMON_FEED_POOL_2                = 139285,

    SPELL_JUMP_TO_TARGET_ABOVE_HATCHLING    = 138907, // Jumps to selected target

    SPELL_BEAM_TO_JUMP_TARGET_NON_HATCHLING = 138914, // Green
    SPELL_BEAM_TO_JUMP_TARGET_HATCHLING     = 138915, // Yellow

    SPELL_FEED_APPEARANCE_SPELL             = 138918, // Exploding yellow egg visual

    SPELL_FEED_POOL_SPAWN                   = 139020, // Shows exploding green pool + spawns feed pool (68188)
    SPELL_FEED_POOL_SPAWN_SPELL_YELLOW      = 139284, // Shows yellow pool at caster's feet

    SPELL_HATCH                             = 137534, // Spawn Juvenile (69836)
    SPELL_NEST_GUARDIAN_SUMMON              = 139090, // Spawns Nest Guardian
    SPELL_SPAWN_JI_KUN_HATCHLING            = 139148, // Spawns Ji-Kun Hatchling (70144)


    SPELL_CHEEP_HATCHLING                   = 139296, // Replace MeleeAttack for Hatchling
    SPELL_CHEEP_FLEDGLING                   = 140570,
    SPELL_CHEEP_JUVENILE                    = 140129,
    SPELL_EAT                               = 134321, // Cast by Hatchling when Feed pool is near
    SPELL_MORPH                             = 134322, // If hatchling succeeds to eat (is alive at SPELL_EAT's end), it triggers Morph to turn into Fledgling

    // Feathers
    SPELL_DROP_FEATHERS                     = 134338, // Create areatrigger + visual for spawning feathers
    SPELL_DROP_FEATHERS_GOB                 = 140016, // Spawn feater GOB
    SPELL_DAEDALIAN_WINGS                   = 134339, // Give the ability to fly to player
    SPELL_LESSON_OF_ICARUS                  = 140571, // Prevent players from catching a new feather
    SPELL_FLIGHT                            = 133755, // Flight spell for players
    // Falling
    SPELL_PREVENT_FALL_DAMAGE               = 139265, // Reduce fall damages
    SPELL_CATCH_FALL                        = 85282,  // Falling player ride vehicle (69839 - Fall Catcher)
    SPELL_EJECT_ALL_PASSENGERS              = 68576,  // Fall catcher eject passengers
    // Exit
    SPELL_EXIT_CHAMBER                      = 141014,
    // Heroic mode
    SPELL_TALON_STRIKE                      = 139100,
    SPELL_SCREECH                           = 140640,
    SPELL_SCREECH_REDUCE_CASTING_SPEED      = 134372,
};

enum Adds
{
    NPC_FEED_POOL                   = 68188,
    NPC_FEED_POOL_2                 = 70216,
    NPC_FEED                        = 68178,
    NPC_JI_KUN_FLEDGLING_S_EGG      = 68202,
    NPC_HATCHLING                   = 68192,
    NPC_FLEDGLING                   = 68193, // Hatchling evolution or spawned by Fledgling egg
    NPC_YOUNG_EGG_OF_JI_KUN         = 68194, // Is spawned above hatchlings
    NPC_INCUBATER                   = 69626, // Middle of nest
    NPC_MATURE_EGG_OF_JI_KUN        = 69628, // Spawned by Fledgling
    NPC_JUVENILE                    = 69836, // Spawned by Mature Egg
    NPC_FLEGLING_JUVENILE           = 70095, // Juvenile spawned by Fledgling's egg
    NPC_FALL_CATCHER                = 69839, // Catch falling players and resend them on Ji-kun platform
    NPC_EXIT_CHAMBER                = 70734, // Spawns
    NPC_NEST_GUARDIAN               = 701734, // Heroic mode
};

Position const waypointPos[52] =
{
    { 6211.530f, 4352.063f, -41.23960f, 0.0f },
    { 6219.918f, 4323.225f, -50.82288f, 0.0f },
    { 6200.393f, 4290.322f, -58.99046f, 0.0f },
    { 6167.124f, 4255.000f, -71.33135f, 0.0f },
    { 6130.888f, 4247.688f, -77.82609f, 0.0f },
    { 6094.024f, 4258.713f, -85.37042f, 0.0f },
    { 6080.453f, 4294.052f, -87.51177f, 0.0f },
    { 6083.603f, 4316.073f, -83.81752f, 0.0f },
    { 6091.601f, 4337.876f, -79.24355f, 0.0f },
    { 6115.493f, 4360.595f, -71.60667f, 0.0f },
    { 6143.307f, 4364.279f, -64.42132f, 0.0f },
    { 6170.492f, 4353.606f, -61.10223f, 0.0f },
    { 6189.739f, 4341.566f, -57.74512f, 0.0f },
    { 6203.971f, 4317.918f, -49.33831f, 0.0f },
    { 6206.109f, 4289.632f, -44.60070f, 0.0f },
    { 6189.743f, 4265.107f, -39.40984f, 0.0f },
    { 6163.300f, 4250.018f, -32.56945f, 0.0f },
    { 6136.179f, 4247.880f, -25.26046f, 0.0f },
    { 6093.636f, 4266.221f, -8.476698f, 0.0f },
    { 6075.295f, 4302.147f, 9.5958010f, 0.0f },
    { 6086.486f, 4356.149f, 34.423870f, 0.0f },
    { 6135.314f, 4386.748f, 58.916970f, 0.0f },
    { 6174.528f, 4380.014f, 65.794550f, 0.0f },
    { 6208.828f, 4352.507f, 70.634090f, 0.0f },
    { 6215.530f, 4317.869f, 71.754340f, 0.0f },
    { 6198.188f, 4279.812f, 75.545790f, 0.0f },
    { 6149.543f, 4285.440f, 75.545790f, 0.0f },
    { 6132.934f, 4319.959f, 75.545790f, 0.0f },
    { 6164.056f, 4341.441f, 74.958320f, 0.0f },
    { 6192.802f, 4302.389f, 72.754180f, 0.0f },
    { 6180.481f, 4254.817f, 67.915810f, 0.0f },
    { 6135.318f, 4246.200f, 61.224780f, 0.0f },
    { 6086.058f, 4267.385f, 53.709340f, 0.0f },
    { 6075.467f, 4313.128f, 51.114910f, 0.0f },
    { 6105.487f, 4349.319f, 43.703910f, 0.0f },
    { 6141.576f, 4359.033f, 34.561810f, 0.0f },
    { 6167.522f, 4340.946f, 27.807100f, 0.0f },
    { 6165.942f, 4305.924f, 20.013400f, 0.0f },
    { 6142.460f, 4289.088f, 9.9207350f, 0.0f },
    { 6121.972f, 4307.348f, -4.077662f, 0.0f },
    { 6130.896f, 4333.039f, -10.56661f, 0.0f },
    { 6155.038f, 4336.327f, -13.13866f, 0.0f },
    { 6169.749f, 4320.901f, -14.18135f, 0.0f },
    { 6174.592f, 4306.330f, -15.45293f, 0.0f },
    { 6172.712f, 4289.999f, -17.64817f, 0.0f },
    { 6162.471f, 4278.408f, -20.11584f, 0.0f },
    { 6151.760f, 4278.437f, -21.28869f, 0.0f },
    { 6144.905f, 4284.731f, -22.05752f, 0.0f },
    { 6142.729f, 4294.742f, -24.24618f, 0.0f },
    { 6145.100f, 4315.314f, -26.73017f, 0.0f },
    { 6148.108f, 4324.893f, -25.96644f, 0.0f },
    { 6160.587f, 4354.137f, -24.45477f, 0.0f }
};

Position const bossPlatformPos = { 6112.219f, 4285.634f, -30.04051f, 0.0f };
Position const bossPos = { 6146.1f, 4318.6f, -31.7793f, 6.16672f };

Position const featherPos[5] =
{
    { 6125.65f, 4355.60f, -31.8626f, 5.25605f },
    { 6110.11f, 4296.95f, -31.8626f, 0.49317f },
    { 6169.00f, 4281.05f, -31.8626f, 2.10022f },
    { 6184.19f, 4339.61f, -31.8627f, 3.66889f },
    { 6084.16f, 4428.31f, -119.633f, 5.20972f }
};

const Position nestPos[10] =
{
    {6192.71f, 4268.54f, -70.43f, 0.0f},
    {6070.34f, 4284.56f, -101.43f, 0.0f},
    {6097.09f, 4339.75f, -93.37f, 0.0f},
    {6159.36f, 4371.19f, -70.71f, 0.0f},
    {6220.28f, 4333.15f, -58.82f, 0.0f},

    {6173.13f, 4238.92f, 41.17f, 0.0f},
    {6077.61f, 4271.39f, 37.98f, 0.0f},
    {6083.54f, 4372.93f, 43.54f, 0.0f},
    {6217.55f, 4351.72f, 66.129f, 0.0f},
    {6151.94f, 4330.67f, 70.04f, 0.0f}
};

void AddSC_boss_ji_kun()
{

}

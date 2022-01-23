//////////////////////////////////////////////////////////////////////////////
///
///  MILLENIUM-STUDIO
///  Copyright 2015 Millenium-studio SARL
///  All Rights Reserved.
///
////////////////////////////////////////////////////////////////////////////////

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

// TODO: make scripts for rare elite npc
// example: No'ku Stormsayer

enum Spells
{
    // Zandalari Blade Initiate
    SPELL_WOUNDING_STRIKE   = 140049,

    // Zandalari Water Binder
    SPELL_BIND_WATER        = 137099,
    SPELL_BIND_WATER_SUMMON = 137100,
    SPELL_DELUGE            = 136881,
    SPELL_DELUGE_AURA       = 137087,
    SPELL_DELUGE_DMG        = 137088,
    SPELL_FROST_BOLT_AOE    = 136953,
    SPELL_FROST_BOLT_DMG    = 136952,

    // Zandalari Storm Caller
    SPELL_FOCUSED_LIGHTNING_AOE     = 139203, // aoe targetting
    SPELL_FOCUSED_LIGHTNING         = 139206, // summon sphere
    SPELL_FOCUSED_LIGHTNING_AOE2    = 139209, // aoe targetting
    SPELL_FOCUSED_LIGHTNING_DMG     = 139210,
    SPELL_FOCUSED_LIGHTNING_DUMMY   = 139233, // visual sphere on trigger
    SPELL_STORM_WEAPON              = 139218,
    SPELL_STORM_WEAPON_DMG          = 139220,
    SPELL_WATER_BOLT_AOE            = 139231,
    SPELL_WATER_BOLT_DMG            = 139251,

    // Zandalari Spear Shaper
    SPELL_BERSERKING                = 137096,
    SPELL_THROW_SPEAR_MISSILE       = 136986,
    SPELL_THROW_SPEAR_SUMMON        = 136984,
    SPELL_THROW_SPEAR_AURA          = 137058,
    SPELL_THROW_SPEAR_DMG           = 136989,
    SPELL_THROW_SPEAR_DISARM        = 137066,
    SPELL_RETRIEVE_SPEAR            = 137070,
    SPELL_RETRIEVE_SPEAR_DMG        = 137072,
    SPELL_SPEAR_SPIN                = 137077,
    SPELL_SPEAR_SPIN_DMG            = 137079,

    // Zandalari Storm Caller2
    SPELL_STORM_WEAPON2             = 139319,
    SPELL_STORM_WEAPON_DMG2         = 139320,
    SPELL_STORM_ENERGY_AOE          = 139559,
    SPELL_STORM_ENERGY              = 139322,
    SPELL_STORM_ENERGY_DMG          = 139321,

    // Ancient Python
    SPELL_STEALTH                   = 139885,
    SPELL_ANCIENT_VENOM             = 139888,

    // Spirit Flayer
    SPELL_SPIRIT_LANTERN            = 139364,
    SPELL_SPIRIT_LIGHT              = 139461,

    // Tormented Spirit
    SPELL_TORMENT                   = 139550,

    // Soul-fed Construct
    SPELL_CRUSH_ARMOR               = 33661,
    SPELL_SPIRITFIRE_BEAM           = 139895,

    // Stormbringer Draz'kil
    SPELL_CHAIN_LIGHTNING           = 139903,
    SPELL_STORMCLOUD                = 139900,
    SPELL_STORMCLOUD_DMG            = 139901,

    // Gurubashi Berserker
    SPELL_BERSERKER_FRENZY          = 138427,
    SPELL_BERSERKER_FRENZY_AURA     = 138540,
    SPELL_BLOODLETTING              = 138693,

    // Drakkari Frost Warden
    SPELL_FROST_BULWARK             = 138668,
    SPELL_GLACIAL_FREEZE_TOTEM      = 138690,
    SPELL_GLACIAL_FREEZE            = 138678,
    SPELL_GLACIAL_FREEZE_AURA       = 138687,

    // Amanishi Flame Chanter
    SPELL_CALL_FLAMES               = 138607,
    SPELL_ERUPTION                  = 138652,
    SPELL_ERUPTION_AURA             = 138655,
    SPELL_ERUPTION_DMG              = 138658,
    SPELL_FIERY_CORE                = 138610,
    SPELL_MOLTEN_BARRAGE            = 138651,

    // Farraki Sand Conjurer
    SPELL_SAND_BOLT                 = 138739,
    SPELL_SAND_BOLT_DMG             = 138740,
    SPELL_CHOKING_SANDS             = 138742,
    SPELL_CONJURE_ELEMENTALS        = 140636,

    // Zandalari High Priest
    SPELL_LIGHT_OF_THE_LOA          = 139228,

    // Zandalari Prophet
    SPELL_MARK_OF_THE_PROPHET       = 140400,
    SPELL_VISIONS_OF_DEMISE         = 140115,
    SPELL_VISIONS_OF_DEMISE_DMG     = 140385,
    SPELL_VISIONS_OF_GRANDEUR       = 139205,

    // Zandalari Warlord
    SPELL_CLEAVE                    = 140414,
    SPELL_STRENGTH_OF_THE_LOA       = 140422,
    SPELL_ZANDALARI_WARCRY          = 134856,

    // Zandalari Prelate
    SPELL_SEAL_OF_THE_LOA           = 139212,
    SPELL_MARK_OF_THE_LOA           = 139213,
    SPELL_JUDGEMENT_OF_THE_LOA      = 139223,

    // Lei Shen npc
    SPELL_CALL_LIGHTNING            = 139853,
    SPELL_LIGHTNING_STRIKE          = 139854,
    SPELL_TELEPORT_ALL_TO_DEPTH     = 139852,

    // Shale Stalker
    SPELL_SHALE_SHARDS              = 140616,

    // Fungal Growth
    SPELL_GROW                      = 140626,
    SPELL_FUNGI_SPORES              = 140620,
    SPELL_FUNGI_SPORES_DMG          = 140621,

    // Mist Lurker
    SPELL_CHOKING_MISTS             = 140682,
    SPELL_CORROSIVE_BREATH          = 140684,
    SPELL_CORROSIVE_BREATH_DMG      = 140685,
    SPELL_CORROSIVE_BREATH_AURA     = 140686,

    // Eternal Guardian
    SPELL_ETERNAL_PRISON            = 140629,
    SPELL_LIGHTNING_NOVA            = 140628,
    SPELL_SIPHON_LIFE               = 140630,
    SPELL_SIPHON_LIFE_2             = 140631,
    SPELL_ETERNAL_GUARDIAN_SPAWN    = 140577,
    SPELL_ACTIVATE_BELL             = 140627,
    SPELL_BELL_SHAKE                = 139179,

    // Cavern Burrower
    SPELL_SONIC_CALL                = 140600,
    SPELL_CRYSTAL_BARBS             = 140619,
    SPELL_CRUSH_ARMOR2              = 140618,
    SPELL_SUBMERGE                  = 140586,

    // Bore Worm
    SPELL_SHIFTING_DOOM             = 134452,

    // Bow Fly Swarm
    SPELL_LUCIFERASE                = 134470,
    SPELL_LUCIFERASE_DMG            = 134472,

    // Gastropod
    SPELL_ABRASIVE_RADULA           = 134414,
    SPELL_SNAIL_SHELL               = 134434,
    SPELL_FIXATED                   = 140306,
    SPELL_DEVOURED                  = 134415,
    SPELL_SLIME_TRAIL_AREATRIGGER   = 134397,
    SPELL_SLIME_TRAIL_AURA          = 134398,

    // Web and Corpse Spider
    SPELL_CORPSE_SPIDER_WEB_SPAWN   = 134483,
    SPELL_CORPSE_SPIDER_SPAWN       = 134481,
    SPELL_WEB_SPRAY                 = 139498,

    // Rotting Scavenger
    SPELL_INFECTED_BITE             = 139314,
    SPELL_ROT                       = 139315,
    SPELL_FRENZIED_COMSUMPTION      = 139311,
    SPELL_FRENZIED_COMSUMPTION_DMG  = 139313,

    // Putrid Waste
    SPELL_PUTRIFY                   = 139316,
    SPELL_PUTRIFY_DMG               = 139317,

    // Muck Bat
    SPELL_MUCK_SPIT                 = 139309,

    // Untrained Quilen
    SPELL_LEAPING_RUSH              = 121190,
    SPELL_CARNIVOROUS_BITE          = 122962,

    // Weisheng
    SPELL_TRIUMPHANT_ROAR           = 139815,

    // Manchu
    SPELL_TRIUMPHANT_RUSH           = 139803,
    SPELL_WILD_SMASH_AURA           = 139795,
    SPELL_WILD_SMASH_SCRIPT         = 139796,
    SPELL_WILD_SMASH_DMG            = 139797,
};

enum Adds
{
    NPC_ZANDALARI_BLADE_INITIATE    = 70230,
    NPC_ZANDALARI_WATER_BINDER      = 69455,
    NPC_BOUND_WATER_ELEMENTAL       = 69459,
    NPC_DRAWN_WATER                 = 69395,
    NPC_ZANDALARI_STORM_CALLER      = 69390,
    NPC_FOCUSED_LIGHTNING           = 70174,
    NPC_ZANDALARI_SPEAR_SHAPER      = 69388,
    MPC_ZANDALARI_STORM_CALLER2     = 70236,
    NPC_ANCIENT_PYTHON              = 70448,
    NPC_TORMENTED_SPIRIT            = 70341,
    NPC_SPIRIT_FLAYER               = 70246,
    NPC_SOUL_FED_CONSTRUCT          = 70308,
    NPC_STORMBRINGER_DRAZKIL        = 70445,
    NPC_GURUBASHI_BERSERKER         = 69905,
    NPC_DRAKKARI_FROST_WARDEN       = 69910,
    NPC_GLACIAL_FREEZE_TOTEM        = 70047,
    NPC_AMANISHI_FLAME_CHANTER      = 69909,
    NPC_ERUPTION                    = 70029,
    NPC_FARRAKI_SAND_CONJURER       = 69899,
    NPC_SAND_ELEMENTAL              = 69944,
    NPC_GURUBASHI_BERSERKER2        = 69916,
    NPC_ZANDALARI_HIGH_PRIEST       = 69906,
    NPC_ZANDALARI_PROPHET           = 70557,
    NPC_ZANDALARI_WARLORD           = 69911,
    NPC_ZANDALARI_PRELATE           = 69927,
    NPC_LEI_SHEN_EVENT              = 70437,
    NPC_MYSTERIOUS_MUSHROOM         = 70545,
    NPC_SHALE_STALKER               = 70587,
    NPC_FUNGAL_GROWTH               = 70153,
    NPC_MIST_LURKER                 = 70594,
    NPC_ETERNAL_GUARDIAN            = 70586,
    NPC_CAVERN_BURROWER             = 70589,
    NPC_BORE_WORM                   = 68221,
    NPC_BOW_FLY_SWARM               = 68222,
    NPC_GASTROPOD                   = 68220,
    NPC_CORPSE_SPIDER               = 68248,
    NPC_WEB                         = 68249,
    NPC_ROTTING_SCAVENGER           = 70224,
    NPC_PUTRID_WASTE                = 70219,
    NPC_MUCKBAT                     = 70232,
    NPC_UNTRAINED_QUILEN_1          = 70206,
    NPC_UNTRAINED_QUILEN_2          = 70209,
    NPC_MANCHU                      = 70202,
    NPC_WEISHENG                    = 70205,
};

const Position spiritflayerPos1[13] =
{
    {5713.401855f, 6263.392578f, 138.038414f, 4.458073f},
    {5711.047363f, 6252.970703f, 138.035538f, 4.296194f},
    {5706.226563f, 6246.150391f, 137.974174f, 3.905241f},
    {5698.590332f, 6240.289551f, 137.984688f, 3.627296f},
    {5689.059570f, 6237.239746f, 137.986359f, 3.077517f},
    {5679.937012f, 6238.814941f, 137.986359f, 2.802627f},
    {5670.291504f, 6244.667969f, 137.986588f, 2.384182f},
    {5663.910156f, 6255.004883f, 137.990692f, 1.706121f},
    {5663.932617f, 6266.145508f, 137.991066f, 1.446503f},
    {5667.715820f, 6275.750977f, 137.986961f, 1.064711f},
    {5674.412598f, 6283.752441f, 137.984909f, 0.533258f},
    {5688.580078f, 6289.006348f, 137.987099f, 6.254448f},
    {5702.403320f, 6283.515137f, 137.987099f, 5.677179f}
};

const Position spiritflayerPos2[19] =
{
    {5482.092285f, 6257.854492f, 132.047485f, 6.240122f},
    {5498.553711f, 6257.614746f, 132.058235f, 0.033293f},
    {5512.546875f, 6258.066406f, 130.872971f, 0.030239f},
    {5529.312988f, 6258.500977f, 131.944038f, 0.024130f},
    {5566.907715f, 6259.270996f, 132.055916f, 6.261502f},
    {5585.983887f, 6258.303223f, 132.047707f, 6.224852f},
    {5602.672363f, 6258.173828f, 130.871231f, 0.005807f},
    {5616.671875f, 6258.301270f, 131.109787f, 0.014970f},
    {5636.781250f, 6258.566895f, 132.047737f, 0.011915f},

    {5636.495605f, 6269.146484f, 132.047737f, 3.142600f},
    {5623.346680f, 6269.452148f, 132.047737f, 3.145654f},
    {5607.535156f, 6269.259277f, 130.872307f, 3.173144f},
    {5590.205566f, 6269.062500f, 131.355118f, 3.136491f},
    {5572.706055f, 6269.169434f, 132.054008f, 3.133437f},
    {5553.583984f, 6269.082031f, 132.055290f, 3.163980f},
    {5532.356445f, 6268.916504f, 132.056099f, 3.130383f},
    {5515.207520f, 6268.854004f, 130.872444f, 3.160926f},
    {5501.796387f, 6268.717285f, 131.479935f, 3.167035f},
    {5483.362305f, 6268.377441f, 132.049965f, 3.167035f}
};

const Position spiritflayerPos3[16] =
{
    {5459.971680f, 6263.718262f, 138.345879f, 4.341642f},
    {5457.041504f, 6253.376953f, 138.441185f, 4.402731f},
    {5451.681641f, 6244.478027f, 138.441185f, 3.993451f},
    {5442.734375f, 6237.701172f, 138.441185f, 3.675802f},
    {5433.077637f, 6235.482910f, 138.422035f, 3.138239f},
    {5421.366211f, 6237.002441f, 138.253265f, 2.655654f},
    {5412.348633f, 6242.738770f, 138.243645f, 2.386873f},
    {5406.313477f, 6250.382813f, 137.969048f, 1.983702f},
    {5403.034668f, 6262.096680f, 137.948959f, 1.638562f},
    {5405.832031f, 6274.675781f, 138.344994f, 1.033804f},
    {5411.674316f, 6283.166016f, 138.436462f, 0.719208f},
    {5419.626465f, 6288.601074f, 138.417229f, 0.392396f},
    {5431.413086f, 6291.487793f, 138.442223f, 6.278519f},
    {5441.747559f, 6289.384766f, 138.443604f, 5.798989f},
    {5451.087402f, 6283.937988f, 138.297729f, 5.569914f},
    {5457.380371f, 6274.509277f, 138.441902f, 5.053733f}
};

const Position spiritflayerPos4[16] =
{
    {5450.934082f, 6263.100098f, 138.441963f, 4.708162f},
    {5450.359863f, 6256.377930f, 138.441963f, 4.509635f},
    {5446.436523f, 6249.675781f, 138.441963f, 4.033159f},
    {5439.609863f, 6245.040527f, 138.441963f, 3.596390f},
    {5433.309082f, 6243.434082f, 138.441963f, 3.138240f},
    {5425.561523f, 6244.853027f, 138.441963f, 2.869458f},
    {5418.212891f, 6248.975098f, 138.441963f, 2.374655f},
    {5414.625000f, 6253.920898f, 138.441963f, 2.075328f},
    {5412.027832f, 6263.045410f, 138.441963f, 1.601905f},
    {5413.183105f, 6270.441406f, 138.441963f, 1.207897f},
    {5416.853027f, 6276.590332f, 138.441963f, 0.795562f},
    {5423.654297f, 6282.305664f, 138.441963f, 0.389337f},
    {5431.511230f, 6283.376953f, 138.441963f, 6.183831f},
    {5438.097168f, 6282.004883f, 138.441963f, 5.853963f},
    {5444.494141f, 6278.459473f, 138.441963f, 5.572965f},
    {5450.210938f, 6271.070313f, 138.441963f, 5.145362f}
};

const Position spiritflayerPos5[19] =
{
    {5425.482422f, 6213.105469f, 132.047310f, 4.709036f},
    {5425.360840f, 6197.530762f, 132.056717f, 4.733469f},
    {5425.735840f, 6184.936523f, 130.873024f, 4.742632f},
    {5426.153809f, 6168.562500f, 130.873024f, 4.715144f},
    {5426.266113f, 6133.562988f, 132.056450f, 4.715144f},
    {5425.978027f, 6114.213379f, 132.056450f, 4.651004f},
    {5423.932129f, 6098.960449f, 130.872444f, 4.620461f},
    {5424.258789f, 6085.170898f, 130.872444f, 4.806775f},
    {5425.753418f, 6064.566895f, 132.051674f, 4.724311f},
    {5424.713379f, 6059.989258f, 132.048492f, 6.013237f},
    {5437.947754f, 6059.711426f, 132.048492f, 0.606643f},
    {5437.367188f, 6075.051270f, 132.053337f, 1.635950f},
    {5437.173340f, 6087.718750f, 130.871750f, 1.574864f},
    {5437.102051f, 6105.212891f, 131.549538f, 1.574864f},
    {5436.959961f, 6140.204590f, 132.057236f, 1.574864f},
    {5436.888672f, 6157.704102f, 132.057236f, 1.574864f},
    {5436.817383f, 6175.204102f, 130.871758f, 1.574864f},
    {5436.746094f, 6192.704102f, 131.141632f, 1.574864f},
    {5436.675293f, 6210.204102f, 132.050056f, 1.574864f}
};

const Position leiShenEventPos = {6045.97f, 4985.88f, 148.02f, 1.56f};

const Position lightningSpanPos[6] =
{
    {6058.758301f, 5088.322266f, 153.791229f, 3.866019f},
    {6040.281738f, 5082.804199f, 153.680832f, 3.282641f},
    {6036.992676f, 5093.713867f, 153.870758f, 1.831836f},
    {6043.072266f, 5102.285156f, 153.465012f, 0.906375f},
    {6036.556641f, 5107.791504f, 153.802719f, 2.516005f},
    {6044.575684f, 5120.748047f, 153.526337f, 0.573455f}
};

void AddSC_throne_of_thunder()
{

}

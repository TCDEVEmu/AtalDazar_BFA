#include "throne_of_thunder.h"

enum Spells
{
    SPELL_TRIGGER_LULIN         = 137720,
    SPELL_TRIGGER_SUEN          = 137721,

    SPELL_DISSIPATE_SUEN        = 137105,
    SPELL_DISSIPATE_LULIN       = 137187,

    SPELL_INVIS_SUEN            = 137106,
    SPELL_INVIS_LULIN           = 137189,

    // Lu'lin
    SPELL_MOON_LOTUS                    = 136690,
    SPELL_MOON_LOTUS_SUMMON             = 136714,
    SPELL_BLOOM_MOON_LOTUS              = 137118,
    SPELL_MOON_LOTUS_AURA_1             = 137192,
    SPELL_MOON_LOTUS_AURA_2             = 137191,
    SPELL_MOON_LOTUS_AURA_3             = 136721, // fog
    SPELL_REAPPEAR_MOON_LOTUS           = 137196,
    SPELL_HIDE_MOON_LOTUS               = 137195,
    SPELL_SLUMBER_SPORES                = 136722,

    SPELL_COSMIC_BARRAGE_FORCE          = 137749, // by the controller
    SPELL_COSMIC_BARRAGE                = 136752,
    SPELL_COSMIC_BARRAGE_SUMMON_1       = 136768, // triggered by 136752
    SPELL_COSMIC_BARRAGE_SUMMON_2       = 137164,
    SPELL_CRASHING_STAR                 = 139561,
    SPELL_CRASHING_STAR_DMG             = 137129,

    SPELL_BEAST_OF_NIGHTMARES_FORCE     = 137375,
    SPELL_BEAST_OF_NIGHTMARES_SUMMON    = 137332,
    SPELL_BEAST_OF_NIGHTMARES_AURA      = 137341,
    SPELL_CORRUPTED_HEALING             = 137360,

    SPELL_ICE_COMET_FORCE_1             = 137739, // on creatures (on lulin?)
    SPELL_ICE_COMET_AOE_1               = 138799, // triggered by 137739, on players (targetting?)
    SPELL_ICE_COMET_FORCE_2             = 140855, // on creatures (on lulin?)
    SPELL_ICE_COMET_AOE_2               = 138795, // triggered by 140855, on players (targetting?)
    SPELL_ICE_COMET_MISSILE_1           = 137418, // speed 1, triggered by 138799, in phase 2
    SPELL_ICE_COMET_MISSILE_2           = 137495, // speed 1, triggered by 138799, in phase 3
    SPELL_ICE_COMET_MISSILE_3           = 138797, // speed 3
    SPELL_ICE_COMET_MISSILE_4           = 138798, // speed 3
    SPELL_ICE_COMET_DMG_1               = 137419, // triggered by missiles, with knockback
    SPELL_ICE_COMET_DMG_2               = 137722, // ?
    SPELL_ICE_COMET_AURA_1              = 137420,
    SPELL_ICE_COMET_AURA_2              = 137723, // animation bigger than 137420
    SPELL_DESPAWN_ICE_COMET             = 138679,

    SPELL_FACE_SUEN_1                   = 137436,
    SPELL_FACE_SUEN_2                   = 137724,
    SPELL_ICY_SHADOWS_AREATRIGGER_1     = 137439, // triggered by 137436
    SPELL_ICY_SHADOWS_AREATRIGGER_2     = 137725, // triggered by 137724, animation bigger than 137439
    SPELL_ICY_SHADOWS_DEBUFF            = 137440,

    SPELL_CHILLED                       = 137483,

    SPELL_TIDAL_FORCE                   = 137531,
    SPELL_TIDAL_FORCE_DUMMY_1           = 137718, // triggered by 137531, visual
    SPELL_TIDAL_FORCE_DUMMY_2           = 140863, // visual
    SPELL_TIDAL_FORCE_AREATRIGGER       = 138689,
    SPELL_TIDAL_FORCE_DMG_2             = 138688, // on caster, from areatrigger ?
    SPELL_TIDAL_FORCE_AURA              = 137717, // ?
    SPELL_TIDAL_FORCE_SCRIPT            = 137715, // triggered by 137717
    SPELL_TIDAL_FORCE_DMG_1             = 137716, // cone dmg

    // Suen
    SPELL_TEARS_OF_THE_SUN              = 137404,
    SPELL_TEARS_OF_THE_SUN_DMG_1        = 137405,
    SPELL_TEARS_OF_THE_SUN_DUMMY        = 138744,
    SPELL_TEARS_OF_THE_SUN_MISSILE      = 138745,
    SPELL_TEARS_OF_THE_SUN_DMG_2        = 138746,
    SPELL_EXPOSE_LURKERS                = 137406,

    SPELL_LIGHT_OF_DAY                  = 137401,
    SPELL_LIGHT_OF_DAY_DMG              = 137403,
    SPELL_LIGHT_OF_DAY_DUMMY            = 137432,
    //138823
    //137738

    SPELL_FAN_OF_FLAMES                 = 137408,

    SPELL_FLAMES_OF_PASSION_CHARGE_1    = 137412,
    SPELL_FLAMES_OF_PASSION_DMG_1       = 137414,
    SPELL_FLAMES_OF_PASSION_CHARGE_2    = 137415,
    SPELL_FLAMES_OF_PASSION_AREATRIGGER = 137416,
    SPELL_FLAMES_OF_PASSION_DMG_2       = 137417,

    SPELL_BLAZING_RADIANCE_AURA_1       = 137411, // main
    SPELL_BLAZING_RADIANCE_DMG_1        = 137410,
    SPELL_BLAZING_RADIANCE_AURA_2       = 137474, // ?
    SPELL_BLAZING_RADIANCE_DMG_2        = 137475, // to kill comets
    SPELL_BLAZING_RADIANCE_BUFF         = 139412,

    SPELL_SERPENT_CONSTELLATION         = 138262,

    SPELL_TIGER_CONSTELLATION           = 138261,
    SPELL_INVOKE_TIGER_SPIRIT_DUMMY     = 138263,
    SPELL_INVOKE_TIGER_SPIRIT           = 138264, // targets 138263

    SPELL_SUMMON_ASTRAL_PLANE           = 139043,
    SPELL_ASTRAL                        = 139050, // removes all auras
    SPELL_CLEAR_PHASE                   = 140038,

    SPELL_OX_CONSTELLATION              = 138260,
    SPELL_INVOKE_OX_SPIRIT_DUMMY        = 138256,
    SPELL_INVOKE_OX_SPIRIT              = 138254,

    SPELL_CRANE_CONSTELLATION           = 138180,

    SPELL_STAR_STATE_1                  = 137138, // inactive ?
    SPELL_STAR_STATE_2                  = 138039,
    SPELL_STAR_STATE_3                  = 138140,
    SPELL_STARDUST_BEAM                 = 138206, // drawn beam
    SPELL_MOONBEAM_STATE_WORLD          = 138114, // at first star
    SPELL_CANCEL_BEAMS                  = 138283, // removes 138206
    SPELL_STAR_1                        = 138199,
    SPELL_STAR_1_DUMMY                  = 138200,
    SPELL_STAR_2                        = 138202,
    SPELL_STAR_2_DUMMY                  = 138203,
    SPELL_STAR_3                        = 138219,
    SPELL_STAR_3_DUMMY                  = 138218,
    SPELL_STAR_4                        = 138221,
    SPELL_STAR_4_DUMMY                  = 138220,
    SPELL_STAR_5                        = 138224,
    SPELL_STAR_5_DUMMY                  = 138223,
    SPELL_STAR_6                        = 138227,
    SPELL_STAR_6_DUMMY                  = 138226,
    SPELL_STAR_7                        = 138205,
    SPELL_STAR_7_DUMMY                  = 138204,

};

enum Adds
{
    NPC_MOON_LOTUS_1    = 69340,
    NPC_MOON_LOTUS_2    = 69456,
    NPC_STAR_1          = 69365,
    NPC_STAR_2          = 69477,
    NPC_ICE_COMET_1     = 69596,
    NPC_ICE_COMET_2     = 69704,
    NPC_DEEP_SUBMERGE   = 69629,

    NPC_FADED_IMAGE_OF_XUEN     = 69771,
    NPC_FADED_IMAGE_OF_CHI_JI   = 69774,
    NPC_FADED_IMAGE_OF_NIUZAO   = 69777,
    NPC_FADED_IMAGE_OF_YULON    = 69779,
    NPC_STAR                    = 70124,
};

enum Equipments
{
    EQUIPMENT_FIST  = 94973,
};

#define MAX_LOTUS_POS 30
const Position moonLotusPos[MAX_LOTUS_POS] =
{
    {6108.074219f, 4174.293457f, 146.234009f, 3.877058f},
    {6134.152832f, 4254.355957f, 146.483658f, 4.160682f},
    {6130.495605f, 4238.264160f, 146.480057f, 4.957859f},
    {6134.978516f, 4229.258789f, 146.480057f, 5.513745f},
    {6137.994141f, 4215.915527f, 146.480057f, 4.902880f},
    {6146.712402f, 4204.885254f, 146.480057f, 5.776417f},
    {6159.466797f, 4199.766602f, 146.480057f, 6.087957f},
    {6174.732910f, 4199.347168f, 146.484146f, 0.256810f},
    {6188.443359f, 4203.899902f, 146.498001f, 0.437015f},
    {6202.053223f, 4214.027832f, 146.505188f, 0.889055f},
    {6211.376465f, 4227.911621f, 146.493927f, 0.995956f},
    {6216.133789f, 4235.255371f, 146.481567f, 0.995956f},
    {6219.291992f, 4247.871094f, 146.476242f, 2.318480f},
    {6208.723633f, 4256.328125f, 146.479050f, 2.358186f},
    {6207.823730f, 4264.114746f, 146.479050f, 1.402181f},
    {6207.729980f, 4280.320801f, 146.479050f, 2.113840f},
    {6195.707031f, 4281.911133f, 146.479050f, 3.582972f},
    {6185.229980f, 4276.206055f, 146.479050f, 3.561592f},
    {6174.428223f, 4282.368652f, 146.479050f, 2.449817f},
    {6163.853027f, 4286.050293f, 146.480423f, 3.204236f},
    {6153.390137f, 4276.761719f, 146.481033f, 4.236597f},
    {6144.024414f, 4269.105957f, 146.572372f, 3.393603f},
    {6131.291992f, 4264.188965f, 146.484146f, 4.209108f},
    {6129.705078f, 4250.964355f, 146.481766f, 4.991017f},
    {6134.751465f, 4238.879883f, 146.481766f, 5.134569f},
    {6133.199707f, 4229.473633f, 146.481766f, 4.206055f},
    {6131.208008f, 4215.163574f, 146.479706f, 5.458326f},
    {6144.114746f, 4209.368652f, 146.479706f, 5.968399f},
    {6154.716309f, 4201.980469f, 146.479706f, 5.320882f},
    {6163.786621f, 4195.862793f, 146.479706f, 0.399926f}
};

const Position spiritPos[1] =
{
    {6163.78f, 4170.13f, 146.48f, 1.52f}
};

const Position starPos[7] =
{
    {6172.662109f, 4239.790527f, 146.552404f, 5.498716f},   // center, 7 star
    {6158.319824f, 4225.383301f, 146.496877f, 1.467003f},   // 1 star
    {6150.236816f, 4244.935547f, 146.496053f, 0.456020f},   // 2 star
    {6168.481445f, 4263.004395f, 146.496008f, 5.496091f},   // 3 star
    {6187.605469f, 4254.597656f, 146.495291f, 4.320178f},   // 4 star
    {6196.098145f, 4234.114746f, 146.505102f, 3.174803f},   // 5 star
    {6177.960449f, 4216.429199f, 146.506994f, 2.059973f}    // 6 star
};

const uint32 constellationOx[4] = {1, 4, 5, 2};

void AddSC_boss_twin_consorts()
{

}

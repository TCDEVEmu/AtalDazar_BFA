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

#include <G3D/Vector3.h>


enum eSpells
{
    SPELL_HARD_STARE                     = 133765,
    SPELL_SERIOUS_WOUND                  = 133767,
    SPELL_ARTETIAL_CUT                   = 133768,

    SPELL_GAZE                           = 134029,

    SPELL_FORCE_OF_WILL                  = 136932,
    SPELL_FORCE_OF_WILL_KNOCK_BACK       = 136413,

    SPELL_LINGERING_GAZE                 = 138467, // Script Effect
    SPELL_LINGERING_GAZE_TARGET          = 134626,
    SPELL_LINGERING_GAZE_MISSILE         = 133792,
    SPELL_LINGERING_GAZE_AREA_TRIGGER    = 133793,
    SPELL_LINGERING_GAZE_AURA            = 134040,
    SPELL_LINGERING_GAZE_DMG             = 140495,


    SPELL_LIFE_DRAIN                     = 133795, // main spell
    SPELL_LIFE_DRAIN_AURA                = 133796, // on caster
    SPELL_LIFE_DRAIN_DMG                 = 133798, // damage
    SPELL_LIFE_DRAIN_HEAL                = 133807,
    SPELL_LIFE_DRAIN_STUN                = 137727,

    // Second Phase
    SPELL_BRIGHT_LIGHT_AURA              = 133737,
    SPELL_BRIGHT_LIGHT_LINK              = 134124, // Yellow link between caster/target
    SPELL_BRIGHT_LIGHT                   = 133740,
    SPELL_BRIGHT_LIGHT_DMG_1             = 133738,
    SPELL_BRIGHT_LIGHT_DMG_2             = 133739,

    SPELL_INFRARED_LIGHT_AURA            = 133731,
    SPELL_INFRARED_LIGHT_LINK            = 134123, // Red link between caster/target
    SPELL_INFRARED_LIGHT                 = 133734,
    SPELL_INFRARED_LIGHT_DMG_1           = 133732,
    SPELL_INFRARED_LIGHT_DMG_2           = 133733,

    SPELL_BLUE_RAYS_AURA                 = 133675,
    SPELL_BLUE_RAYS_LINK                 = 134122, // Blue link between caster/target
    SPELL_BLUE_RAYS                      = 133672,
    SPELL_BLUE_RAYS_DMG_1                = 133677,
    SPELL_BLUE_RAYS_DMG_2                = 133678, // 136119

    SPELL_RED_FOG_INVISIBILITY           = 136116,
    SPELL_YELLOW_FOG_INVISIBILITY        = 136117,
    SPELL_BLUE_FOG_INVISIBILITY          = 136118,

    SPELL_SUMMON_FOG_BEAST_RED           = 136128,
    SPELL_SUMMON_FOG_BEAST_BLUE          = 136130,
    SPELL_SUMMON_FOG_BEAST_YELLOW        = 136129,

    // Color adds spells
    SPELL_AMBER_ARMOR                    = 136174, // Amber Fog
    SPELL_BURST_OF_AMBER                 = 136123, // Amber Fog
    SPELL_AMBER_RETAILIATION             = 136175, // Amber Fog

    SPELL_CAUSTIC_SPIKE                  = 136154, // Crimson Fog
    SPELL_CRIMSON_BLOOM                  = 136122, // Crimson Fog

    SPELL_ICY_GRASP                      = 136177, // Azure Fog
    SPELL_FLASH_FREEZE                   = 136124,  // Azure Fog

    // Third Phase
    SPELL_SUMMON_EYEBEAM_TARGET          = 133775, // Target of 134169
    SPELL_DISINTEGRATION_BEAM_PRECAST    = 134169,
    SPELL_DISINTEGRATION_BEAM            = 133776,

        // Unk visual, seems to be not used for the maze
    SPELL_NEAR_CONE_SLICE                 = 134751, // Visual near from the caster
    SPELL_NEAR_MID_CONE_SLICE             = 134752, // Visual near-mid from the caster
    SPELL_MID_CONE_SLICE                  = 134753, // Visual mid from the caster
    SPELL_MID_FAR_CONE_SLICE              = 134754, // Visual mid-far from the caster
    SPELL_FAR_CONE_SLICE                  = 134814, // Visual far from the caster

    // Those cumulated spells form a cone covering the whole platform, every visual lasts for 12 seconds.
    SPELL_WHOLE_ROOM_SLICE_ONE            = 136232, // 4 Visual dark balls in front of the caster / dist from caster : 0.0f->1.61f          = 1.61f
    SPELL_WHOLE_ROOM_SLICE_TWO            = 136233, // Visual farther than the precedent one      / dist from caster : 1.6f->7.21f          = 5.61f
    SPELL_WHOLE_ROOM_SLICE_THREE          = 136234, // Visual farther than the precedent one      / dist from caster : 7.21f->11.443f       = 4.233f
    SPELL_WHOLE_ROOM_SLICE_FOUR           = 136235, // Visual farther than the precedent one      / dist from caster : 11.443f->16.859f     = 5.416f
    SPELL_WHOLE_ROOM_SLICE_FIVE           = 136236, // Visual farther than the precedent one      / dist from caster : 16.859f->21.94f      = 5.081f
    SPELL_WHOLE_ROOM_SLICE_SIX            = 136237, // Visual farther than the precedent one      / dist from caster : 21.94f->26.504f      = 4.564f
    SPELL_WHOLE_ROOM_SLICE_SEVEN          = 136238, // Visual farther than the precedent one      / dist from caster : 26.504f->32.24f      = 5.736f
    SPELL_WHOLE_ROOM_SLICE_EIGHT          = 136239, // Visual farther than the precedent one      / dist from caster : 32.24f->37.896f      = 5.656f
    SPELL_WHOLE_ROOM_SLICE_NINE           = 136240, // Visual farther than the precedent one      / dist from caster : 37.896f->43.273f     = 5.378f
    SPELL_WHOLE_ROOM_SLICE_TEN            = 136241, // Visual farther than the precedent one      / dist from caster : 43.273f->47.631f     = 4.358f
    SPELL_WHOLE_ROOM_SLICE_ELEVEN         = 136242, // Visual farther than the precedent one      / dist from caster : 47.631f->52.853f     = 5.222f
    SPELL_WHOLE_ROOM_SLICE_TWELVE         = 136243, // Visual farther than the precedent one      / dist from caster : 52.853f->58.051f     = 5.198f
    SPELL_WHOLE_ROOM_SLICE_THIRTEEN       = 136244, // Visual farther than the precedent one      / dist from caster : 58.051f->62.973f     = 4.922f

    // Each spell forms a cone covering the whole platform, with +3k MS duration for each spellId incrementation.
    // Maybe be launched from the 10th to the 1st to form the whole labyrinth
    SPELL_WHOLE_ROOM_MAZE_ONE_X           = 136553, // Whole dark cone visual (M_PI / 6) (duration = 12500 MS)
    SPELL_WHOLE_ROOM_MAZE_TWO_X           = 136554, // Whole dark cone visual (M_PI / 6) (duration = 15500 MS)
    SPELL_WHOLE_ROOM_MAZE_THREE_X         = 136555, // Whole dark cone visual (M_PI / 6) (duration = 18500 MS)
    SPELL_WHOLE_ROOM_MAZE_FOUR_X          = 136556, // Whole dark cone visual (M_PI / 6) (duration = 21500 MS)
    SPELL_WHOLE_ROOM_MAZE_FIVE_X          = 136557, // Whole dark cone visual (M_PI / 6) (duration = 24500 MS)
    SPELL_WHOLE_ROOM_MAZE_SIX_X           = 136558, // Whole dark cone visual (M_PI / 6) (duration = 27500 MS)
    SPELL_WHOLE_ROOM_MAZE_SEVEN_X         = 136559, // Whole dark cone visual (M_PI / 6) (duration = 30500 MS)
    SPELL_WHOLE_ROOM_MAZE_EIGHT_X         = 136560, // Whole dark cone visual (M_PI / 6) (duration = 33500 MS)
    SPELL_WHOLE_ROOM_MAZE_NINE_X          = 136561, // Whole dark cone visual (M_PI / 6) (duration = 36500 MS)
    SPELL_WHOLE_ROOM_MAZE_TEN_X           = 136562, // Whole dark cone visual (M_PI / 6) (duration = 39500 MS)

    SPELL_MAZE_PERIODIC_AURA_DAMAGE       = 140502,

    SPELL_MIND_DAGGERS                   = 139107,
};

enum Adds
{
    NPC_APPARAISING_EYE             = 67858,
    NPC_HUNGRY_EYE                  = 67859,
    NPC_CROSS_EYE                   = 67857,
    NPC_MIND_S_EYE                  = 67875,
    NPC_YELLOW_EYE                  = 67856,
    NPC_RED_EYE                     = 67855,
    NPC_BLUE_EYE                    = 67854,
    NPC_AZURE_FOG                   = 69052,
    NPC_AMBER_FOG                   = 69051,
    NPC_CRIMSON_FOG                 = 69050,
    NPC_EYEBEAM_TARGET              = 67882,
};

const Position addsPos[3] =
{
    {5903.19f, 4546.09f, -6.17f, 3.5f},
    {5865.86f, 4525.75f, -6.17f, 4.1f},
    {5881.32f, 4483.26f, -6.17f, 5.6f}
};

const Position beamPos[16] =
{
    {5959.319336f, 4499.680176f, -6.17f, 4.360798f},
    {5949.012695f, 4475.765137f, -6.17f, 4.122565f},
    {5931.737305f, 4458.432129f, -6.17f, 3.542241f},
    {5908.529297f, 4449.585938f, -6.17f, 3.334546f},
    {5882.817383f, 4449.294922f, -6.17f, 2.989405f},
    {5858.623535f, 4459.425293f, -6.17f, 2.555693f},
    {5841.645020f, 4476.826172f, -6.17f, 2.149466f},
    {5832.558105f, 4499.017090f, -6.17f, 1.715748f},
    {5831.775391f, 4526.116211f, -6.17f, 1.278977f},
    {5841.450684f, 4548.466309f, -6.17f, 1.016303f},
    {5859.814453f, 4566.952637f, -6.17f, 0.738359f},
    {5882.262207f, 4575.937012f, -6.17f, 0.286319f},
    {5908.115234f, 4576.000000f, -6.17f, 6.175498f},
    {5931.536621f, 4566.873535f, -6.17f, 5.735681f},
    {5949.432617f, 4548.770996f, -6.17f, 5.418036f},
    {5959.154785f, 4524.815918f, -6.17f, 5.036244f}
};

void AddSC_boss_durumu()
{

}

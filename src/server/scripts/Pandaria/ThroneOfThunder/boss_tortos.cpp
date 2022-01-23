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
#include "SpellMgr.h"

enum eSpells
{
    SPELL_ZERO_POWER            = 78725,

    // Tortos
    SPELL_SNAPPING_BITE         = 135251,
    SPELL_FURIOUS_STONE_BREATH  = 133939,
    SPELL_GROWING_FURY          = 136010,
    SPELL_QUAKE_STOMP           = 134920,
    SPELL_ROCK_FALL             = 134849,
    SPELL_ROCK_FALL_GROUND_AREA = 134475,
    SPELL_ROCK_FALL_SUMMON      = 134365,
    SPELL_ROCK_FALL_LARGE_DMG   = 134476,
    SPELL_CALL_OF_TORTOS        = 136294,
    SPELL_SUMMON_BATS           = 136685,
    SPELL_SUMMON_BATS_1         = 136686,

    // Whirl Turtle
    SPELL_SPINNING_SHELL_DMG    = 134011,
    SPELL_SPINNING_SHELL_AURA   = 133974,
    SPELL_SHELL_BLOCK_AURA      = 133971,
    SPELL_KICK_SHELL_OVERRIDER  = 134030,
    SPELL_KICK_SHELL_ROOT       = 134073,
    SPELL_SHELL_CONCUSSION      = 134092,

    // Humming Crystal
    SPELL_CRYSTAL_SHELL_AURA    = 137552,
    SPELL_CRYSTAL_SHELL_DMG     = 137633,
    SPELL_CRYSTAL_SHELL_HEAL    = 137648,

    SPELL_DRAIN_THE_WEAK        = 135103,
    SPELL_DRAIN_THE_WEAK_DMG    = 135101,
    SPELL_DRAIN_THE_WEAK_HEAL   = 135102,
};

enum Adds
{
    NPC_ROCKFALL                    = 68219,
    NPC_VAMPIRIC_CAVE_BAT           = 68497,
    NPC_WHIRL_TURTLE                = 67966,
    NPC_HUMMING_CRYSTAL             = 69639,
};

Position const vampiricBatSummonPos[2] =
{
    { 6015.67f, 4975.62f, 61.51f, 5.96f },
    { 6064.82f, 4959.10f, 61.48f, 2.81f }
};

const Position vampiricBatPos[2] =
{
    {6019.462402f, 4951.732910f, -33.689571f, 0.762538f},
    {6036.848633f, 4965.432129f, -61.215611f, 0.670908f}
};

const Position whirlTurtleMovePos[39] =
{
    {6065.276367f, 4938.449707f, -62.263905f, 1.355695f},
    {6068.838379f, 4945.345215f, -62.263905f, 0.857839f},
    {6075.766113f, 4951.248535f, -62.263905f, 1.126620f},
    {6079.081055f, 4959.626953f, -61.917130f, 1.209087f},
    {6078.945313f, 4974.710449f, -62.263050f, 2.082625f},
    {6072.402832f, 4978.508789f, -62.263050f, 2.968379f},
    {6069.432129f, 4983.285645f, -61.699638f, 1.361803f},
    {6063.125977f, 4987.260254f, -61.619225f, 3.194399f},
    {6058.121582f, 4988.006348f, -61.188892f, 2.363622f},
    {6050.702148f, 4993.962402f, -61.188892f, 1.890202f},
    {6048.507813f, 5001.146484f, -61.188892f, 2.339188f},
    {6040.953125f, 5000.738281f, -61.188892f, 4.287848f},
    {6039.726563f, 4996.496582f, -61.212494f, 4.694073f},
    {6040.911133f, 4987.204102f, -61.198524f, 4.999506f},
    {6042.916016f, 4973.878418f, -61.190174f, 4.800975f},
    {6043.709473f, 4967.136719f, -61.190174f, 4.742943f},
    {6043.474121f, 4956.442871f, -61.190174f, 4.434455f},
    {6039.260742f, 4951.245117f, -61.194279f, 3.676983f},
    {6033.071777f, 4952.366211f, -61.233273f, 2.354460f},
    {6030.967773f, 4958.603027f, -61.247639f, 1.523684f},
    {6031.870117f, 4967.652344f, -61.249355f, 1.407619f},
    {6032.594727f, 4972.973633f, -61.249336f, 1.462597f},
    {6033.330566f, 4980.916016f, -61.251389f, 1.563390f},
    {6033.395508f, 4989.666016f, -61.257545f, 1.563390f},
    {6032.734375f, 5000.425293f, -61.208649f, 1.832172f},
    {6027.802734f, 5004.323242f, -61.224121f, 2.907295f},
    {6023.079102f, 5003.795410f, -62.306141f, 3.454020f},
    {6018.395508f, 4999.131348f, -62.306141f, 4.287851f},
    {6016.166016f, 4992.450684f, -62.306789f, 4.526088f},
    {6014.545410f, 4983.852051f, -62.306789f, 4.526088f},
    {6012.915527f, 4975.255371f, -61.506165f, 4.523034f},
    {6011.268555f, 4966.661621f, -62.306747f, 4.523034f},
    {6009.497070f, 4958.960938f, -62.306747f, 4.376429f},
    {6005.353027f, 4961.579102f, -62.284538f, 1.896316f},
    {6003.105469f, 4971.421387f, -62.306946f, 1.584774f},
    {6023.054199f, 4975.040039f, -61.239994f, 5.876540f},
    {6028.178711f, 4968.849121f, -61.252308f, 5.091578f},
    {6033.848633f, 4962.531738f, -61.234135f, 6.017039f},
    {6040.395020f, 4963.221191f, -61.192425f, 0.763160f}
};

Position const whirlTurtleSpawnPos = { 6033.39f, 4879.94f, -61.19f, 1.45f };

void AddSC_boss_tortos()
{

}

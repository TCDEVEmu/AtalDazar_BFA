#ifndef __BATTLEGROUNDDG_H
#define __BATTLEGROUNDDG_H

#include "Battleground.h"

#define BG_EVENT_START_BATTLE               9158 // Achievement: Newbs to Plowshares


enum BG_DG_ObjectTypes
{
    BG_DG_OBJECT_BANNER_NEUTRAL = 0,
    BG_DG_OBJECT_BANNER_CONT_A = 1,
    BG_DG_OBJECT_BANNER_CONT_H = 2,
    BG_DG_OBJECT_BANNER_ALLY = 3,
    BG_DG_OBJECT_BANNER_HORDE = 4,
    BG_DG_OBJECT_AURA_ALLY = 5,
    BG_DG_OBJECT_AURA_HORDE = 6,
    BG_DG_OBJECT_AURA_CONTESTED = 7,

    BG_DG_OBJECT_H_FLAG = 24,
    BG_DG_OBJECT_A_FLAG = 25,
    BG_DG_OBJECT_DOOR_H1 = 26,
    BG_DG_OBJECT_DOOR_H2 = 27,
    BG_DG_OBJECT_DOOR_A1 = 27,
    BG_DG_OBJECT_DOOR_A2 = 28,

    BG_DG_OBJECT_MAX = 29
};

enum BG_DG_Objectives
{
    DG_OBJECTIVE_CAPTURE_FLAG = 42,
    DG_OBJECTIVE_RETURN_FLAG = 44,
    DG_OBJECTIVE_ASSAULT_BASE = 370,
    DG_OBJECTIVE_DEFEND_BASE = 371
};

enum BG_DG_ObjectEntry
{
    BG_OBJECT_A_FLAG_DG_ENTRY = 220164, // '-241.7413', '208.6111', '133.7474'
    BG_OBJECT_H_FLAG_DG_ENTRY = 220166, // '-91.61632', '791.3611', '133.7473'
    BG_OBJECT_A_FLAG_GROUND_DG_ENTRY = 220165, // not sure, template not fould
    BG_OBJECT_H_FLAG_GROUND_DG_ENTRY = 220174,

    BG_OBJECT_DOOR_H1_DG_ENTRY = 220161, // '-69.87847', '781.8368', '132.4303'
    BG_OBJECT_DOOR_H2_DG_ENTRY = 220366, // 220366 -119.6215', '798.9566', '132.4883
    BG_OBJECT_DOOR_A1_DG_ENTRY = 220159,
    BG_OBJECT_DOOR_A2_DG_ENTRY = 220160,

    BG_OBJECT_NODE_BANNER_0_ENTRY = 180087,       // Stables banner
    BG_OBJECT_NODE_BANNER_1_ENTRY = 180088,       // Blacksmith banner
    BG_OBJECT_NODE_BANNER_2_ENTRY = 180089,       // Farm banner

    BG_OBJECT_BANNER_A_ENTRY = 180058,
    BG_OBJECT_BANNER_CONT_A_ENTRY = 180059,
    BG_OBJECT_BANNER_H_ENTRY = 180060,
    BG_OBJECT_BANNER_CONT_H_ENTRY = 180061,

    BG_OBJECT_AURA_A_DG_ENTRY = 180100,
    BG_OBJECT_AURA_H_DG_ENTRY = 180101,
    BG_OBJECT_AURA_C_DG_ENTRY = 180102,
};

enum BG_DG_Graveyard
{
    BG_DG_GRAVEYART_ALLIANCE_SOUTH = 4488,
    BG_DG_GRAVEYART_ALLIANCE_NORTH = 4546,
    BG_DG_GRAVEYART_HORDE_SOUTH = 4545,
    BG_DG_GRAVEYART_HORDE_NORTH = 4489,
};

enum BG_DG_Sounds
{
    BG_DG_SOUND_NODE_CLAIMED = 8192,
    BG_DG_SOUND_NODE_CAPTURED_ALLIANCE = 8173,
    BG_DG_SOUND_NODE_CAPTURED_HORDE = 8213,
    BG_DG_SOUND_NODE_ASSAULTED_ALLIANCE = 8212,
    BG_DG_SOUND_NODE_ASSAULTED_HORDE = 8174,
    BG_DG_SOUND_FLAGS_RESPAWNED = 8232,
    BG_DG_SOUND_NEAR_VICTORY = 8456
};

enum BG_DG_Defines
{
    BG_DG_WARNING_NEAR_VICTORY_SCORE = 1400,
    BG_DG_MAX_TEAM_SCORE = 1600,

    BG_DG_NotDGBGWeekendHonorTicks = 260,
    BG_DG_DGBGWeekendHonorTicks = 160,
    BG_DG_NotDGBGWeekendReputationTicks = 160,
    BG_DG_DGBGWeekendReputationTicks = 120,

    BG_DG_SPELL_WARSONG_FLAG_DROPPED = 23334,
    BG_DG_SPELL_WARSONG_FLAG_PICKED = 61266,    // fake spell, does not exist but used as timer start event
    BG_DG_SPELL_SILVERWING_FLAG_DROPPED = 23336,
    BG_DG_SPELL_SILVERWING_FLAG_PICKED = 61265,

    BG_DG_SPELL_ALLIANCE_FLAG = 140876,
    BG_DG_SPELL_HORDE_FLAG = 141210,

    BG_DG_FLAG_RESPAWN_TIME = 23000,
    BG_DG_FLAG_DROP_TIME = 10000,
    BG_DG_FLAG_CAPTURING_TIME = 60000,
    BG_DG_SOURCE_BY_REWARD_FLAG = 200,
};

enum BG_DG_BattlegroundNodes
{
    BG_DG_NODE_GOBLIN = 0,
    BG_DG_NODE_CENTER = 1,
    BG_DG_NODE_PANDAREN = 2,
    BG_DG_DYNAMIC_NODES_COUNT = 3,

    BG_DG_SPIRIT_ALIANCE = 3,
    BG_DG_SPIRIT_HORDE = 4,

    BG_DG_ALL_NODES_COUNT = 5,                        // All nodes (dynamic and static)
};

const float BG_DG_NodePositions[BG_DG_DYNAMIC_NODES_COUNT][4] =
{
    {-397.773f,  574.368f, 110.97f,   0.9075713f},         // Goblin
    {-167.5035f, 499.059f, 92.83793f, -2.600541f},         // Center
    {68.3924f,   431.177f, 111.761f,  -2.303835f},         // Pandaren
};

enum BG_DG_NodeStatus
{
    BG_DG_NODE_TYPE_NEUTRAL = 0,
    BG_DG_NODE_TYPE_CONTESTED = 1,
    BG_DG_NODE_STATUS_ALLY_CONTESTED = 1,
    BG_DG_NODE_STATUS_HORDE_CONTESTED = 2,
    BG_DG_NODE_TYPE_OCCUPIED = 3,
    BG_DG_NODE_STATUS_ALLY_OCCUPIED = 3,
    BG_DG_NODE_STATUS_HORDE_OCCUPIED = 4
};

struct BG_DG_BannerTimer
{
    uint32 timer;
    uint8  type;
    uint8  teamIndex;
};

const uint32 BG_DG_TickIntervals[4] = { 0, 8000, 3000, 1000 };
const uint32 BG_DG_TickPoints[4] = { 0, 10, 10, 30 };

//Light, Water, Mine, Ally, Horde
const uint32 BG_DG_GraveyardIds[BG_DG_ALL_NODES_COUNT] = { 4614, 4545, 4613, 4487, 4486 };

const float BG_DG_SpiritGuidePos[BG_DG_ALL_NODES_COUNT][4] =
{
    { -438.592f, 582.324f, 111.570f, 4.07f },     // Lighthouse
    { -222.046f, 806.070f, 137.452f, 4.94f },     // Waterworks
    { 118.779f, 418.938f, 112.863f, 2.70f },     // Mine
    { -274.985f, 171.789f, 136.185f, 0.67f },     // Alliance
    { -61.7795f, 831.194f, 135.378f, 4.15f },     // Horde
};

enum BG_DG_FlagState
{
    BG_DG_FLAG_STATE_ON_BASE = 0,
    BG_DG_FLAG_STATE_WAIT_RESPAWN = 1,
    BG_DG_FLAG_STATE_ON_PLAYER = 2,
    BG_DG_FLAG_STATE_ON_GROUND = 3
};

enum BG_DG_Worldstates
{
    BG_DG_OP_RESOURCES_ALLY = 7880,
    BG_DG_OP_RESOURCES_HORDE = 7881,
    BG_DG_OP_OCCUPIED_BASES_ALLY = 8230,
    BG_DG_OP_OCCUPIED_BASES_HORDE = 8231,
    BG_DG_OP_FLAG_A = 7887,
    BG_DG_OP_FLAG_H = 7904,
};

const uint32 BG_DG_OP_NODEICONS[3][7] =
{
    {7938, 0, 7864, 7865, 0, 7856, 7856}, // Goblin
    {7939, 0, 7934, 7936, 0, 7932, 7932}, // Central
    {7935, 0, 7857, 7861, 0, 7855, 7855}, // Pandaren
};

class BattlegroundDG : public Battleground
{
public:
    BattlegroundDG(BattlegroundTemplate const* battlegroundTemplate);
    ~BattlegroundDG();
};

#endif

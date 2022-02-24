#ifndef BLOOD_IN_THE_SNOW_H_
#define BLOOD_IN_THE_SNOW_H_

const Position stonebeardJumpPos = { -5241.95f, -268.99f, 434.89f, 3.70f };

enum Data
{
    DATA_MOUNTAINEERS,
    DATA_SAVE_SCOUT_STONEBEARD,
    DATA_SAVE_SCOUT_BOLD_BREW,
    DATA_SAVE_SCOUT_FORGEFELLOW,
    DATA_COLD_CAVE,
    DATA_VICTORY_OF_DEATH,

    // Misc
    DATA_SHIMMERWEED,
};

enum Creatures
{
    NPC_MOUNTAINER_GRIMBOLT    = 70801,
    NPC_SCOUT_STONEBEARD       = 70602,
    NPC_SCOUT_FORGEFELLOW      = 70745,
    NPC_SCOUT_BOLDBREW         = 70744,
    NPC_MOIRA_THAURISSAN       = 70279,
    NPC_KING_VARIAN_WRYNN      = 70799,
    NPC_STORMWIND_ROYAL_GUARD  = 1756,
    NPC_DARK_IRON_FORGEGUARD   = 70275,
    NPC_PYROMANCE_FLAMEHEARTH  = 70709,

    // Trolls
    NPC_ZANDALARI_RAGE_BANNER  = 70789,
    NPC_FROSTMANE_FLESH_EATER  = 70746,
    NPC_FROSTMANE_HEADHUNTER   = 70473,
    NPC_FROSTMANE_SNOWSTALKER  = 70463,
    NPC_FROSTMANE_BERSERKER    = 70471,
    NPC_FROSTMANE_BONECHILLER  = 70465,
    NPC_FROSTMANE_WITCH_DOCTOR = 70464,
    NPC_BONECHILLER_BARAFU     = 70468,
    NPC_FARASTU                = 70474,
    NPC_HEKIMA_THE_WISE        = 70544,
    NPC_FROSTMANE_MAULER       = 70684,

    // Misc
    NPC_ROASTING_SPIT          = 70597,
    NPC_FREEZE_SOLID           = 70987,
    NPC_SHIMMERWEED_BASKET     = 71440,
};

enum miscSpells
{
    SPELL_BLIZZARD_WEATHER   = 98051,
    SPELL_PERM_FEIGN_DEATH   = 130966,
    SPELL_SHIMMERWEED_ACHIEV = 127327,
};

enum Yells
{
    TALK_INTRO,
    TALK_SPECIAL_1,
    TALK_SPECIAL_2,
    TALK_SPECIAL_3,
    TALK_SPECIAL_4,
    TALK_SPECIAL_5,
    TALK_SPECIAL_6,
    TALK_SPECIAL_7,
    TALK_SPECIAL_8,
    TALK_SPECIAL_9,
};

enum Actions
{
    ACTION_START_INTRO,
    ACTION_LAST_STAND,
};

enum Criteries
{
    CRITERIA_HEKIMA_DEFEATER   = 23264,
    CRITERIA_VILLAGE_ASSAULTED = 23265,
};

enum Worldstates
{
    WORLDSTATE_HEKIMAS_HEAL_HALTER = 14104,
};

#endif // BLOOD_IN_THE_SNOW_H_
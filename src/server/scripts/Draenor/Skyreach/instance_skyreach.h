

#ifndef SKYREACH_INSTANCE_H
#define SKYREACH_INSTANCE_H

#include "Spell.h"

enum RandomSpells
{
    INSTANCE_BOOTSTRAPPER = 171344,
    FORGETFUL = 152828,
    SABOTEUR = 152983,
    STEALTH_AND_INVISIBILITY_DETECTION = 141048,
    MOD_SCALE_70_130 = 151051,
    DORMANT = 160641,
    SUMMON_INTRO_DREAD_RAVEN = 163831,
    RIDE_VEHICLE_HARDCODED = 46598,
    CLOACK = 165848,
    INTRO_NARRATOR = 163922,
    TWISTER_DNT = 178617,
    CONJURE_SUN_ORB_DNT = 178618,
    WIELD_CHAKRAMS = 173168,
    WIELD_CHAKRAMS_2 = 170378,
    ENERGIZE_GLOWY_ORBS_COVER_DNT = 178324, // Visual to do when closed to sun orbs.
    ENERGIZE_GLOWY_ORBS_DNT_1 = 178321,
    ENERGIZE_GLOWY_ORBS_DNT_2 = 178330,
    EJECT_ALL_PASSENGERS = 50630,
    SERENE = 153716,
    OVERSEER_1 = 153195,
    OVERSEER_2 = 154368,
    EJECT_PASSENGER_1 = 60603,
    JUMP_TO_JUMP_POINT = 163828,
    // Skyreach Taln mobs.
    FIXATED = 152838,
    // Skyreach raven whisperer
    EXCITE = 153923,
    SUBMERGED = 154163,
    SUBMERGE = 154164,
    ENERGIZE = 154139, // During 12 seconds, restart after 3 seconds.
    ENERGIZE_HEAL = 154149,
    ENERGIZE_DMG = 154150,
    ENERGIZE_VISUAL_1 = 154179,
    ENERGIZE_VISUAL_2 = 154159,
    ENERGIZE_VISUAL_3 = 154177,
    DespawnAreaTriggers = 115905,
    Wind = 170818,
    LensFlare = 154034
};

enum GameObjectEntries
{
    DOOR_RANJIT_ENTRANCE = 234311,
    DOOR_RANJIT_EXIT = 234310,
    DOOR_ARAKNATH_ENTRANCE_1 = 234314,
    DOOR_ARAKNATH_ENTRANCE_2 = 234315,
    DOOR_ARAKNATH_EXIT_1 = 234312,
    DOOR_ARAKNATH_EXIT_2 = 234313,
    CACHE_OF_ARAKKOAN_TREASURES = 234165,
    DOOR_RUKHRAN_ENTRANCE = 229038,
    DOOR_RUKHRAN_EXIT = 234316,
    DOOR_HIGH_SAVE_VIRYX_ENTRANCE = 235994,
    DOOR_CHALLENGE_ENTRANCE = 239409
};

enum MobEntries
{
    SKYREACH_ARCANALOGIST = 76376,
    SKYREACH_SOLAR_CONSTRUCTOR = 76142,
    YoungKaliri = 76121,
    SKYREACH_RAVEN_WHISPERER = 76154,
    SOLAR_FLARE = 76227,
    PILE_OF_ASHES = 79505,
    ArakkoaPincerBirdsController = 76119,
    AirFamiliar = 76102,
    Kaliri = 81080,
    Kaliri2 = 81081,
    Arakkoa = 81088,
    SunConstructEnergizer = 76367,
    InteriorFocus = 77543,
    DreadRavenHatchling = 76253,
    RadiantSupernova = 79463,
    GrandDefenseConstruct = 76145,
    SolarZealot = 76267,
    AraokkoaMagnifyingConstructA = 76285,
    ArakkoaMagnifyingGlassFocus = 76083,
    ReshadOutro = 84782,
    SkyreachDefenseConstruct = 76292
};

enum class Achievements : uint32
{
    HeroicSkyreach = 8844,
    HeroicSkyreachGuildRun = 9372,
    ISawSolis = 9035,
    MagnifyEnhance = 9034,
    Monomania = 9036,
    ReadyForRaidingIV = 9033,
    Skyreach = 8843,
    SkyreachChallenger = 8871,
    SkyreachBronze = 8872,
    SkyreachGold = 8874,
    SkyreachSilver = 8873
};

#endif // !SKYREACH_INSTANCE_H

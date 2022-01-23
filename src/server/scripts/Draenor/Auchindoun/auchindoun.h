/*
 * Copyright (C) 2021 BfaCore Reforged
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef AUCHINDOUN_H
#define AUCHINDOUN_H
#define DataHeader "AUCHINDOUN"

#define HostileFaction 16
#define FriendlyFaction 35
#define InvisibleDisplay 11686

enum DataTypes
{
    DATA_KAATHAR = 0,
    DATA_NYAMI = 1,
    DATA_AZAAKEL = 2,
    DATA_TERONOGOR = 3,
    DATA_MAX_ENCOUNTERS,
};
enum Creatures
{
    NPC_KAATHAR = 75839,
    NPC_NYAMI = 76177,
    NPC_AZAAKEL = 75927,
    NPC_TERONOGOR = 77734,
};
enum Gameobjects
{
    GO_DOOR_1 = 0,
};

enum eAuchindounCreatures
{
    CreatureSoulAegis = 77832,
    CreatureSoulBinderTuulani01 = 322521,
    CreatureAuchenaiDefenderUnique = 76632,
    CreatureSoulBinderNyami = 77810,
    CreatureSoulBinderTuulani = 79248,
    CreatureAucheniDefender = 77693,
    CreatureAucheniMagus2 = 77694,
    CreatureAucheniCleric = 77947,
    CreatureAucheniSoulPriest = 77696,
    CreatureAucheniArbiter = 77695,
    CreatureAucheniVigiliant = 77819,
    CreatureAucheniSoultender = 77131,
    CreatureAucheniHoplite = 77948,
    CreatureAucheniRitualist = 77949,
    CreatureAucheniWarden = 77704,
    CreatureAucheniMagus = 87075,
    CreatureAucheniZealot = 77950,
    CreatureSargeiHoplite = 77133,
    CreatureSargereiMagus = 76263,
    CreatureSargeriRitualist = 77130,
    CreatureSargeriMagus = 77694,
    CreatureSargeriZealot = 77132,
    CreatureSargeriWarden = 77935,
    CreatureSargereiDefender = 77042,
    CreatureSargereiAssasinating = 87073,
    CreatureAuchenaiAssainated = 81796,
    CreatureSargeriSoulPriest = 76595,
    CreatureSargeriSoulBinder = 77812,
    CreatureSpitefulArbitrerTrash = 76284,
    CreatureZipteq = 78734,
    CreatureDuragTheDominator = 77890,
    CreatureShaadum = 78728,
    CreatureGulkosh = 78437,
    CreatureGromtashTheDestructor = 77889,
    CreatureZashoo = 78735,
    CreatureIruun = 77762,
    CreatureDurem = 77743,
    CreatureJoraa = 77756,
    CreatureShieldStalker = 82681,
    CreatureWardenAzzakael = 76572,
    CreatureLightWall = 953642,
    CreatureLightWallTargets = 79417,
    CreatureShadowBeam = 1000055,//水晶 CT新建
    CreatureShieldVisual = 82681,
    CreatureArcaneBomb = 324156,
    CreatureCorpsesNyamiFight = 456234,
    CreatureShieldSpot = 464574,
    CreatureArcaneBombExplosionNpc = 341634,
    CreatureWardensHammer = 76655,
    CreatureDemonsSummoner = 76216,
    CreatureFelborneAbyssal = 79508,
    CreatureLeftCrystalTrigger = 1000055,//水晶 CT新建
    CreatureAuchenaiShield = 82681
};

enum eAuchindounSpells
{
    SpellVoidBeam = 156920,
    SpellArcaneChanneling = 161383,
    SpellArcaneBombTriggerMissile = 157791,
    SpellWardenChainRoot = 154263,
    SpellWardenChainJump = 154639,
    SpellWardenChainDot = 154831,
    SpellApplaud = 106301,
    SpellGuard = 156893,
    SpellShadowBeam = 156862,
    SpellKneel = 142479,
    SpellTuulaniUnlock = 160415,
    SpellBarrierVisual = 160993,
    SpellLevitateNyami = 136383,
    SpellNyamiEscape = 153992,
    SpellNyamiExplodeCrystal = 153991,
    SpellDarkFire = 156955,
    SpellVoidFormTriggerBuff = 163715,
    SpellDispersionVisualNyami = 156868,
    SpellHolyBeam = 158565,
    SpellTuulaniCapturedVoidPrison = 154840,
    SpellCrystalEarthquake = 150209,
    SpellVoidChannel = 170677,
    SpellPrisonAura = 167081,
    SpellStrangulate = 78037,
    SpellDrainSoulVisual = 156862,
    SpellAbyssalVisual = 159610,
    SpellMindSpike = 157043,
    SpellSeverTendonDummy = 157167,
    SpellSeverTendonAura = 157165,
    SpellVoidMendingDummy = 154623,
    SpellVoidMendingAura = 165031,
    SpellVoidShiftDummy = 155524,
    SpellVoidShiftDamage = 157037,
    SpellShieldBash = 157159,
    SpellVoidStrikes = 166749,
    SpellVoidShell = 160312,
    SpellMindShear = 157170,
    SpellBendWill = 154527,
    SpellArcaneBombAreaTrigger = 154174,
    SpellArcaneBombDmg = 154232,
    SpellArcaneBombDummy = 157652,
    SpellAvengersShield = 165715,
    SpellWardenHammerDummy = 154729,
    SpellWardenThrowHammer = 154730,
    SpellWardenHammerLightning = 154740,
    SpellWardenHammerDamage = 154773,
    SpellWardenHammerLightningTempo = 154775,
    SpellFelblast = 167092,
    SpellFelStomp = 157173,
    SpellCrusaderStirke = 176931,
    SpellFixate = 157168,
    SpellConfligirate = 154981,
    SpellEmoteTalk = 1,
    SpellEmoteHover = 533,
    SpellEmoteRead = 483,
    SpellVoidShiftHeal = 157036,
    SpellVoidShiftDmg = 157037,
    SpellShadowWordPainPriest = 176518,
    SpellPsychicTerrorDummy = 154356,
    SpellPsychicTerrorFear = 154359,
};

enum eAuchindounObjects
{
    GameobjectGhostObject = 180322,
    GameobjectDoorBarrier = 231679,
    GameobjectDoorBarrier2 = 230397,
    GameobjectHolyBarrier = 230399,
    GameobjectHolyWall = 231680,
    GameobjectFelBarrier = 230400,
    GameobjectTaladorPortal = 236689,
    GameobjectChestAucheni = 231241,
    GameobjectNightmareBell = 237479,
    GameobjectDemonicPortal = 543242,
    GameobjectPuddle = 237542,
    GameobjectAuchindounWindow = 233009,
    GameobjectSoulTransportStart = 231736,
    GameobjectSoulTransport1 = 345366,
    GameobjectSoulTransport2 = 345367,
    GameobjectSoulTransport3 = 345368,
    GameobjectHolyBarrierEntra = 231679,
    GameObjectAuchindounCrystal = 23524
};

enum eAuchindounAchievements
{
    AchievementAuchindounNormal = 9039,
    AchievementAuchindounHeroic = 9049,
    AchievementAuchindounMythic = 10080,
    AchievementDemonSouls = 9551,
    AchievementNoTagBacks = 9552
};

enum eAuchindounSpellVisualKit
{
    SpellVisualKitBlackOrbFallingDownInSpiral = 37245,
    SpellVisualKitNyamiSpiralUponTornSpirit = 43801,
    SpellVisualKitNyamiSoulVesselCircle = 36179,
    SpellVisualKitNyamiSoulVesselSpiralCircle = 41267,
};

enum eAuchindounScenes
{
    SpellAuchindounSceneTulaaniReachNyami = 1365,//913,
    SpellAuchindounSceneTeronogorSpawn = 1366, //914
};
#endif // AUCHINDOUN_H

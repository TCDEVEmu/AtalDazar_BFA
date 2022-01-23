#ifndef BLACKROCK_FOUNDRY_HPP
# define BLACKROCK_FOUNDRY_HPP

# include "InstanceScript.h"
# include "ScriptedCreature.h"
# include "ScriptMgr.h"
# include "Cell.h"
# include "CellImpl.h"
# include "GridNotifiers.h"
# include "GridNotifiersImpl.h"
# include "Vehicle.h"
# include "GameObjectAI.h"
# include "Group.h"
# include "MoveSplineInit.h"
# include "CreatureTextMgr.h"
#include "SpellAuraEffects.h"
#include "DB2Stores.h"
#include "Unit.h"
#include "SmartScript.h"
#include "G3D/Vector2.h"
#include "G3D/Vector3.h"

#define DataHeader "BLACKROCKFOUNDRY"

enum eFoundryCreatures
{
    /// Slagworks - Part 1
    /// Gruul
    BossGruul               = 76877,
    /// Oregorger
    BossOregorger           = 77182,
    /// Blast Furnace
    HeartOfTheMountain      = 76806,
    ForemanFeldspar         = 76809,
    BlackhandCosmetic       = 76831,
    /// The Black Forge - Part 2
    /// Hans'gar & Franzok
    BossHansgar             = 76973,
    BossFranzok             = 76974,
    /// Flamebender Ka'graz
    BossFlamebenderKagraz   = 76814,
    AknorSteelbringer       = 77337,
    LavaStalker             = 77043,
    MoltenTorrentStalker    = 77253,
    CinderWolf              = 76794,
    /// Kromog
    BossKromog              = 77692,
    /// Iron Assembly - Part 3
    /// Beastlord Darmac
    BossBeastlordDarmac     = 76865,
    BossCruelfang           = 76884,
    BossDreadwing           = 76874,
    BossIroncrusher         = 76945,
    ThunderlordPackPens     = 77631,
    GromkarManAtArms        = 78832,
    IronRaider              = 81197,
    IronCrackShot           = 81315,
    GromkarFiremender       = 87841,
    /// Operator Thogar
    BossOperatorThogar      = 76906,
    /// Iron Maidens
    BossAdmiralGaran        = 77557,
    BossEnforcerSorka       = 77231,
    BossMarakTheBlooded     = 77477,
    ZiplineStalker          = 82538,
    IronCannon              = 78152,
    /// Blackhand's Crucible - Part 4
    ForgemistressFlamehand  = 87989,
    /// Blackhand
    BossBlackhand           = 77325,
    BlackrockFoundryTrigger = 77558,
    CeilingStalker          = 77570,
    AchievementStalker      = 80831
};

enum eFoundryGameObjects
{
    HardenedSlagEntrance        = 238838,
    HardenedSlagBlastFurnace    = 238834,
    /// Slagworks - Part 1
    SlagworksDoor               = 238835,
    GruulSpikeDoor              = 230930,
    BKFoundrySpikeTrapGate      = 230931,
    FurnacePortcullis           = 237224,
    BlastFurnaceEncounterDoor   = 230759,
    CrucibleLeft                = 233759,
    CrucibleRight               = 233839,
    FurnaceGate                 = 227423,
    /// The Black Forge - Part 2
    BlackForgeEntrance          = 238836,
    BlackForgePortcullis        = 236847,
    BlackForgeGate              = 237306,
    VolatileBlackrockOre        = 237308,
    HansgarAndFranzokEntrance   = 229318,
    HansgarAndFranzokExit       = 229319,
    ConveyorBelt002             = 230481,
    ConveyorBelt001             = 230482,
    ConveyorBelt003             = 230483,
    ConveyorBelt004             = 230484,
    ConveyorBelt005             = 230485,
    StampingPress16             = 229574,
    StampingPress20             = 229575,
    StampingPress19             = 229576,
    StampingPress18             = 229577,
    StampingPress17             = 229578,
    StampingPress15             = 229579,
    StampingPress14             = 229580,
    StampingPress13             = 229581,
    StampingPress12             = 229582,
    StampingPress11             = 229583,
    StampingPress06             = 229584,
    StampingPress07             = 229585,
    StampingPress08             = 229586,
    StampingPress09             = 229587,
    StampingPress10             = 229588,
    StampingPress05             = 229589,
    StampingPress04             = 229590,
    StampingPress01             = 229591,
    StampingPress02             = 229592,
    StampingPress03             = 229593,
    ConveyorBelt006             = 233238,
    ConveyorBelt007             = 233239,
    ConveyorBelt008             = 233240,
    ConveyorBelt009             = 236843,
    ConveyorBelt010             = 236844,
    FirewallDoor                = 236845,
    BurningFrontDoor            = 236842,
    KromogsDoorSouth            = 236839,
    KromogsDoorEast             = 236840,
    KromogDoor                  = 234029,
    /// Iron Assembly - Part 3
    IronAssembleyGate           = 238837,
    TheBeastGate                = 231841,
    BeastsEnclosureDoor         = 232021,
    TerminusDoor                = 237307,
    IronGate                    = 231842,
    MassiveDoorTrack4Right      = 231843,
    MassiveDoorTrack3Right      = 231844,
    MassiveDoorTrack2Right      = 231845,
    MassiveDoorTrack1Right      = 231846,
    MassiveDoorTrack4Left       = 231848,
    MassiveDoorTrack3Left       = 231847,
    MassiveDoorTrack2Left       = 231849,
    MassiveDoorTrack1Left       = 231850,
    FreightElevatorDoor         = 236848,
    IronMaidensRampDoor         = 232392,
    IronMaidensExitDoor         = 232393,
    AmmoLoader                  = 234028,
    /// Blackhand's Crucible - Part 4
    SpikeGate                   = 232556,
    CrucibleDoor                = 233006,
    PreBlackhandsGate           = 237109,
    BlackhandsGate              = 233007,
    BlackhandsCrucible01        = 233950,
    BlackhandsCrucible02        = 233951,
    BlackhandsCrucible03        = 233952,
    BlackhandsCrucible04        = 233953,
    BlackhandsCrucible05        = 233954,
    BlackhandAPlatform          = 230193,
    HangingIronStar             = 233841
};


enum eFoundrySpells
{
    Berserker                   = 26662,
    FollowerAknorSteelbringer   = 174973
};

enum eFoundryAchievements
{
    TheIronPrince           = 8978,
    HeShootsHeOres          = 8979,
    YaWeveGotTime           = 8930,
    StampStampRevolution    = 8980,
    TheSteelHasBeenBrought  = 8929,
    WouldYouGiveMeAHand     = 8983,
    FainWouldLieDown        = 8981,
    BeQuickOrBeDead         = 8984,
    AshesAshes              = 8952
};

enum eFoundryCriterias
{
    DreadwingMountedFirst   = 24675,
    IroncrusherMountedFirst = 24676,
    CruelfangMountedFirst   = 24677
};

enum eFoundryWorldState
{
    WorldStateDarmacAchievement = 9127
};

enum eFoundryVisuals
{
    CrucibleVisuals = 6922,
    ConveyorsStart  = 7621,
    ConveyorsStop   = 7336,
    ConveyorsStart2 = 6975,
    ConveyorsStart3 = 6974,
    AmmoLoaderAnim  = 4397
};

enum eFoundryDungeons
{
    Slagworks           = 847,
    BlackForge          = 846,
    IronAssembly        = 848,
    BlackhandsCrucible  = 823
};

#endif

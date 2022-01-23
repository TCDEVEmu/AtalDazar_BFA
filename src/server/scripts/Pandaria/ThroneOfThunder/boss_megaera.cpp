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
    // Heads summons
    SPELL_SUMMON_FLAMING_HEAD   = 134176,
    SPELL_SUMMON_FROZEN_HEAD    = 134177,
    SPELL_SUMMON_VENOMOUS_HEAD  = 134178,
    SPELL_SUMMON_ARCANE_HEAD    = 134179,

    // Shared
    SPELL_MEGAERAS_RAGE_FIRE    = 139758,
    SPELL_MEGAERAS_RAGE_FROST   = 139816,
    SPELL_MEGAERAS_RAGE_VENOM   = 139818,
    SPELL_MEGAERAS_RAGE_ARCANE  = 139820,

    SPELL_SUBMERGED             = 139832,
    SPELL_HYDRA_FRENZY          = 139942,

    SPELL_RAMPAGE_PERIODIC      = 139458,
    SPELL_RAMPAGE_FIRE          = 139548,
    SPELL_RAMPAGE_FIRE_BALL     = 140280,
    SPELL_RAMPAGE_FROST         = 139549,
    SPELL_RAMPAGE_FROST_BALL    = 140285,
    SPELL_RAMPAGE_VENOM         = 139551,
    SPELL_RAMPAGE_VENOM_BALL    = 140286,
    SPELL_RAMPAGE_ARCANE        = 139552,
    SPELL_RAMPAGE_ARCANE_BALL   = 140287,

    SPELL_ELEMENTAL_BLOOD_FIRE  = 139586,
    SPELL_ELEMENTAL_BLOOD_FROST = 139587,
    SPELL_ELEMENTAL_BLOOD_VENOM = 139588,
    SPELL_ELEMENTAL_BLOOD_ARCANE= 139589,

    // Back Flaming Head
    SPELL_CINDERS               = 139822,
    SPELL_CINDERS_SUMMON        = 139834,
    SPELL_CINDERS_AURA          = 139835,

    // Flaming Head
    SPELL_IGNITE_FLESH          = 137729,
    SPELL_IGNITE_FLESH_AURA     = 137731,

    // Back Venomous Head
    SPELL_ACID_RAIN_AOE         = 139845, // targetting
    SPELL_ACID_RAIN_MISSILE     = 139848,
    SPELL_ACID_RAIN_AURA        = 139847,
    SPELL_ACID_RAIN_DMG         = 139850,

    // Venomous Head
    SPELL_ROT_ARMOR             = 139838,
    SPELL_ROT_ARMOR_AURA        = 139840,

    // Back Frozen Head
    SPELL_TORRENT_OF_ICE_FORCE  = 139857,
    SPELL_TORRENT_OF_ICE        = 139866,
    SPELL_TORRENT_OF_ICE_SUMMON = 139870,
    SPELL_TORRENT_OF_ICE_AURA   = 139890,
    SPELL_TORRENT_OF_ICE_DMG    = 139889,
    SPELL_TORRENT_OF_ICE_SCALE  = 140213,

    SPELL_ICY_GROUND_VISUAL     = 139875,
    SPELL_ICY_GROUND_DUMMY      = 139877,
    SPELL_ICY_GROUND_DMG        = 139909,
    SPELL_ICY_GROUND_SNARE      = 139922,

    // Frozen Head
    SPELL_ARCTIC_FREEZE         = 139841,
    SPELL_ARCTIC_FREEZE_AURA    = 139843,
    SPELL_ARCTIC_FREEZE_STUN    = 139844,

    // Back Arcane Head
    SPELL_NETHER_TEAR           = 140138,
    SPELL_NETHER_TEAR_VISUAL    = 140258,

    // Arcane Head
    SPELL_DIFFUSION             = 139991,
    SPELL_DIFFUSION_AURA        = 139993,
    SPELL_DIFFUSION_HEAL        = 139994,

    // Nether Wyrm
    SPELL_NETHER_SPIKE          = 140178,
    SPELL_SUPPRESSION           = 140179,

    SPELL_ACHIEVEMENT           = 140353,
};

enum Adds
{
    NPC_FLAMING_HEAD                = 70212,
    NPC_BACK_FLAMING_HEAD           = 70229,
    NPC_FROZEN_HEAD                 = 70235,
    NPC_BACK_FROZEN_HEAD            = 70250,
    NPC_VENOMOUS_HEAD               = 70247,
    NPC_BACK_VENOMOUS_HEAD          = 70251,
    NPC_ARCANE_HEAD                 = 70248,
    NPC_BACK_ARCANE_HEAD            = 70252,
    NPC_CINDERS                     = 70432,
    NPC_ACID_RAIN                   = 70435,
    NPC_TORRENT_OF_ICE              = 70439,
    NPC_ICY_GROUND                  = 70446,
    NPC_NETHER_WYRM                 = 70507,
};

enum eSounds
{
    SOUND_HYDRA_EMERGE  = 36700
};

const Position nearHeadPos[4] =
{
    {6394.780273f, 4496.552246f, -211.520004f, 1.765240f},
    {6421.201172f, 4502.964844f, -211.529922f, 2.161906f},
    {6441.049316f, 4532.375000f, -211.347641f, 2.757503f}, // fire
    {6439.698730f, 4565.978516f, -211.090836f, 3.539416f}, // arcane
};

const Position farHeadPos[7]
{
    {6421.495605f, 4450.104492f, -210.031998f, 0.662190f},
    {6429.782715f, 4456.645996f, -210.032593f, 0.674407f},
    {6447.820801f, 4471.374023f, -210.031845f, 0.775200f},
    {6452.508789f, 4476.368164f, -210.032166f, 0.827123f},
    {6466.003418f, 4495.015625f, -210.032516f, 1.095904f},
    {6471.398438f, 4507.633789f, -210.031464f, 1.300545f},
    {6421.495605f, 4450.104492f, -210.031998f, 0.726331f},
};

Position const chestPos = { 6467.56f, 4483.96f, 182.452f, 2.502f };

void AddSC_boss_megaera()
{

}

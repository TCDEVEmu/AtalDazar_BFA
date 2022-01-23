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

// 137453
// 138322 visual anima orb

enum Spells
{
    // Anima Orb
    SPELL_TRANSFUSION_AOE           = 138118,
    SPELL_TRANSFUSION_ENERGIZE      = 138399,

    // Anima Golem
    SPELL_EVASIVE                   = 140759,
    SPELL_ACCELERATION_LINK         = 138451,
    SPELL_ACCELERATION_LINK_DUMMY   = 138452,
    SPELL_ACCELERATION_LINK_AURA    = 138453,
    SPELL_ANIMA_CAPACITY_4          = 138384,
    SPELL_CRITICALLY_DAMAGED_1      = 138400,
    SPELL_CRITICALLY_DAMAGED_2      = 138409,

    // Large Anima Golem
    SPELL_CRIMSON_WAKE_AOE          = 138541, // targetting
    SPELL_CRIMSON_WAKE              = 138480,
    SPELL_CRIMSON_WAKE_SLOW         = 138482,
    SPELL_CRIMSON_WAKE_MEDIUM       = 138484,
    SPELL_CRIMSON_WAKE_FAST         = 138544,
    SPELL_CRIMSON_WAKE_DMG          = 138485,
    SPELL_FIXATED                   = 138486,
    SPELL_ANIMA_CAPACITY_8          = 138385,

    // Massive Anima Golem
    SPELL_MATTER_SWAP               = 138609,
    SPELL_MATTER_SWAP_DAMAGE        = 138618,
    SPELL_TARGETED_MATTER_SWAP      = 139919,
    SPELL_EXPLOSIVE_SLAM            = 138569,
    SPELL_ANIMA_CAPACITY_36         = 138386,

    // Dark Animus
    SPELL_ACTIVATION_SEQUENCE       = 139537,   // LFR only

    SPELL_SIPHON_ANIMA              = 138644,

    SPELL_TOUCH_OF_THE_ANIMUS       = 138659,

    SPELL_EMPOWER_GOLEM             = 138780,   // Heroic only

    SPELL_ANIMA_RING                = 136954,   // 25 Anima needed
    SPELL_ANIMA_RING_1              = 136955,
    SPELL_ANIMA_RING_2              = 136956,
    SPELL_ANIMA_RING_3              = 136957,
    SPELL_ANIMA_RING_4              = 136958,
    SPELL_ANIMA_RING_5              = 136959,
    SPELL_ANIMA_RING_6              = 136960,
    SPELL_ANIMA_RING_7              = 138671,
    SPELL_ANIMA_RING_8              = 138672,
    SPELL_ANIMA_RING_9              = 138673,
    SPELL_ANIMA_RING_10             = 138674,
    SPELL_ANIMA_RING_11             = 138675,
    SPELL_ANIMA_RING_12             = 138676,
    SPELL_ANIMA_RING_DEBUFF         = 136962,

    SPELL_ANIMA_FONT                = 138691,   // 50 Anima needed
    SPELL_ANIMA_FONT_MISSILE        = 138697,

    SPELL_INTERRUPTING_JOLT         = 138763,   // 75 Anima needed
    SPELL_FULL_POWER                = 138729,   // 100 Anima neded (soft enrage)
    SPELL_FULL_POWER_MISSILE        = 138749,

    SPELL_ANIMA_CAPACITY_100        = 137387,
    SPELL_BERSERK                   = 47008,

    // Misc
    SPELL_BLOOD_ORB_VISUAL          = 138116,
    SPELL_HOVER                     = 138092,
    SPELL_FIERY_HANDS               = 34223,
    SPELL_SHIELD_INTERRUPTION       = 140021,
    SPELL_RITUAL_TRANSFORM_1        = 137618,
    SPELL_RITUAL_TRANSFORM_2        = 137898,
    SPELL_RITUAL_TRANSFORM_3        = 137899,
    SPELL_RITUAL_TRANSFORM_4        = 137900,
    SPELL_RITUAL_TRANSFORM_5        = 137902,
    SPELL_RITUAL_TRANSFORM_6        = 137903,
    SPELL_RITUAL_TRANSFORM_7        = 137904,
    SPELL_RITUAL_TRANSFORM_8        = 137906,
    SPELL_RITUAL_TRANSFORM_9        = 137944,
    SPELL_RITUAL_TRANSFORM_10       = 137945,
    SPELL_RITUAL_TRANSFORM_11       = 137946,
    SPELL_RITUAL_TRANSFORM_12       = 137947,
    SPELL_RITUAL_TRANSFORM_13       = 137948,
    SPELL_RITUAL_TRANSFORM_14       = 137949,
    SPELL_RITUAL_TRANSFORM_15       = 137951,
    SPELL_RITUAL_TRANSFORM_16       = 137952,
    SPELL_RITUAL_TRANSFORM_17       = 137953,
    SPELL_RITUAL_TRANSFORM_18       = 137954,
    SPELL_RITUAL_TRANSFORM_19       = 137955,
    SPELL_RITUAL_TRANSFORM_20       = 137956,
    SPELL_RITUAL_TRANSFORM_21       = 137957,
    SPELL_RITUAL_TRANSFORM_22       = 137958,
    SPELL_RITUAL_TRANSFORM_23       = 137959,
    SPELL_RITUAL_TRANSFORM_24       = 137960,
    SPELL_ZERO_ENERGY               = 72242,
    SPELL_TURNED_OFF                = 138373,
    SPELL_ENERGIZE_SEARCHER         = 138378,
    SPELL_ENERGIZE_CUSTOM           = 138909,
    SPELL_FIRE_BLAST                = 138099,
    SPELL_SHADOW_NOVA               = 137998,
    SPELL_SHORT_RITUAL_LIGHTNING    = 137995,
    SPELL_LONG_RITUAL_LIGHTNING     = 137994
};

enum Adds
{
    NPC_DARK_RITUALIST              = 69702,
    NPC_ANIMA_GOLEM                 = 69701,
    NPC_LARGE_ANIMA_GOLEM           = 69700,
    NPC_MASSIVE_ANIMA_GOLEM         = 69699,
    NPC_CRIMSON_WAKE                = 69951,
    NPC_ANIMA_ORB                   = 69756,
};

const Position animaGolemPos[25] =
{
    {5739.72f, 4774.27f, 75.3739f, 1.56583f},
    {5713.01f, 4766.28f, 77.6697f, 1.592f},
    {5707.22f, 4766.16f, 77.6697f, 1.592f},
    {5711.69f, 4848.08f, 77.6699f, 4.72574f},
    {5700.94f, 4766.02f, 77.6697f, 1.59505f},
    {5706.36f, 4848.2f, 77.6699f, 4.74712f},
    {5701.09f, 4847.81f, 77.6699f, 4.78988f},
    {5753.78f, 4850.66f, 77.6699f, 4.73796f},
    {5747.5f, 4850.58f, 77.6699f, 4.78683f},
    {5759.71f, 4850.82f, 77.6699f, 4.73796f},
    {5754.09f, 4764.69f, 77.6687f, 1.47507f},
    {5748.19f, 4764.79f, 77.6687f, 1.50256f},
    {5759.95f, 4764.35f, 77.6687f, 1.50867f},
    {5739.69f, 4839.37f, 75.3739f, 4.70611f},
    {5732.19f, 4839.05f, 75.3739f, 4.74581f},
    {5724.72f, 4774.3f, 75.3739f, 1.56888f},
    {5724.77f, 4839.0f, 75.3739f, 4.71832f},
    {5732.13f, 4774.28f, 75.3739f, 1.56888f},
    {5783.33f, 4829.07f, 77.6391f, 3.11155f},
    {5783.18f, 4824.22f, 77.6391f, 3.11155f},
    {5780.19f, 4786.08f, 77.6475f, 3.12943f},
    {5780.13f, 4781.37f, 77.6475f, 3.12943f},
    {5765.98f, 4813.97f, 75.3747f, 3.2852f},
    {5765.99f, 4805.92f, 75.3747f, 3.13816f},
    {5766.35f, 4798.31f, 75.3739f, 3.13816f}
};

const Position largeAnimaGolemPos[8] =
{
    {5751.12f, 4856.66f, 77.663f, 4.76632f},
    {5759.69f, 4856.34f, 77.665f, 4.68386f},
    {5715.51f, 4854.11f, 77.6676f, 4.7384f},
    {5705.1f, 4853.84f, 77.6676f, 4.7384f},
    {5716.56f, 4757.37f, 77.6677f, 1.57411f},
    {5707.36f, 4757.34f, 77.6677f, 1.57106f},
    {5750.7f, 4757.17f, 77.667f, 1.587f},
    {5761.87f, 4757.26f, 77.6647f, 1.68474f}
};

const Position massiveAnimaGolemPos[2] =
{
    {5786.09f, 4842.15f, 77.7136f, 3.14776f},
    {5786.0f, 4772.41f, 77.7091f, 3.16324f}
};

const Position animaOrbPos = {5732.17f, 4806.6f, 75.3752f, 3.15363f};

void AddSC_boss_dark_animus()
{

}

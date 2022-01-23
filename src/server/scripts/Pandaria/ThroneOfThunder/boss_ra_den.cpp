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
#include "Vehicle.h"

enum Spells
{
    SPELL_ZERO_MANA                     = 96301,

    SPELL_MATERIALS_OF_CREATION         = 138321,

    SPELL_SUMMON_ESSENSE_OF_VITA        = 138324,
    SPELL_DRAW_VITA                     = 138328,
    SPELL_SUMMON_CRACKLING_STALKER      = 138339,
    SPELL_IMBUED_WITH_VITA              = 138332,
    SPELL_UNLEASHED_VITA                = 138330,
    SPELL_FATAL_STRIKE                  = 138334,
    SPELL_UNSTABLE_VITA                 = 138297,
    SPELL_UNSTABLE_VITA_ALLY            = 138308,
    SPELL_UNSTABLE_VITA_DMG             = 138370,
    SPELL_UNSTABLE_VITA_DUMMY           = 138371,
    SPELL_VITA_SENSITIVITY              = 138372,

    SPELL_SUMMON_ESSENSE_OF_ANIMA       = 138323,
    SPELL_DRAW_ANIMA                    = 138327,
    SPELL_SUMMON_SANGUINE_HORROR        = 138338,
    SPELL_IMBUED_WITH_ANIMA             = 138331,
    SPELL_UNLEASHED_ANIMA               = 138329,
    SPELL_MURDEROUS_STRIKE              = 138333,
    SPELL_UNSTABLE_ANIMA                = 138288,
    SPELL_UNSTABLE_ANIMA_DUMMY          = 138294,
    SPELL_UNSTABLE_ANIMA_DMG            = 138295,
    SPELL_ANIMA_SENSITIVITY             = 139318,

    SPELL_LINGERING_ENERGIES            = 138450,

    SPELL_CALL_ESSENSE                  = 139040,

    SPELL_RUIN_BOLT                     = 139087,
    SPELL_RUIN                          = 139073,
    SPELL_RUIN_DMG                      = 139074,

    // Crackling Stalker
    SPELL_CAUTERIZING_FLARE             = 138337,
    SPELL_CRACKLE                       = 138340,

    // Sanguine Horror
    SPELL_SANGUINE_VOLLEY               = 138341,

    // Corrupted Vita
    SPELL_CORRUPTED_VITA                = 139072,
    SPELL_CORRUPTED_VITA_DMG            = 139078,

    // Corrupted Anima
    SPELL_TWISTED_ANIMA                 = 139075,
    SPELL_CORRUPTED_ANIMA               = 139071,
};

enum Adds
{
    NPC_ESSENSE_OF_VITA     = 69870,
    NPC_CORRUPTED_VITA      = 69958,
    NPC_CRACKLING_STALKER   = 69872,
    NPC_ESSENSE_OF_ANIMA    = 69869,
    NPC_CORRUPTED_ANIMA     = 69957,
    NPC_SANGUINE_HORROR     = 69871,
};

const Position spherePos[2] =
{
    {5448.32f, 4593.14f, -2.46f, 1.56f},
    {5447.50f, 4722.57f, -2.46f, 4.71f}
};

const Position centerPos = {5448.50f, 4655.93f, -2.46f, 0.0f};

void AddSC_boss_ra_den()
{

}

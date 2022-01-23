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
    SPELL_ZERO_POWER                    = 96301,

    // 137064 intro cosmetic
    SPELL_PRIMORDIAL_STRIKE             = 136037,

    SPELL_MALFORMED_BLOOD               = 136050,

    SPELL_MUTATED_ABOMINATION           = 140544,

    SPELL_EVOLUTION                     = 139144,

    /// Auras added when Primordius Evolution gains 1 stack
    SPELL_VENTRAL_SACS                  = 136210,
    SPELL_VENTRAL_SACS_DMG              = 136211,

    SPELL_GAS_BLADDER                   = 136215,
    SPELL_CAUSTIC_GAS                   = 136216,

    SPELL_ACIDIC_SPINES                 = 136218, // Triggers Acidic Explosion
    SPELL_ACIDIC_EXPLOSION_AOE          = 136856,
    SPELL_ACIDIC_EXPLOSION_MISSILE      = 136219,
    SPELL_ACIDIC_EXPLOSION_DMG          = 136220,

    SPELL_PATHOGEN_GLANDS               = 136225,
    SPELL_VOLATILE_PATHOGEN             = 136228,
    SPELL_VOLATILE_PATHOGEN_DMG         = 136231,

    SPELL_METABOLIC_BOOST               = 136245,

    SPELL_ERUPTING_PUSTULES             = 136246,
    SPELL_PUSTULE_ERUPTION_SCRIPT       = 140499, // ?
    SPELL_PUSTULE_ERUPTION_MISSILE_1    = 136248, // at targetted enemy
    SPELL_PUSTULE_ERUPTION_MISSILE_2    = 136249, // at random location
    SPELL_PUSTULE_ERUPTION_DMG          = 136247,

    SPELL_MUTATE_PRIMORDIUS_1           = 136203, // from living fluid
    SPELL_MUTATE_PRIMORDIUS_2           = 137060, // from mutagenic pool
    SPELL_VOLATILE_MUTATE_PRIMORDIUS    = 140509, // from volatile pool

    SPELL_MUTAGENIC_POOL                = 136049,

    SPELL_VOLATILE_POOL                 = 140506,
    SPELL_VOLATILE_MUTATION_AURA        = 141094,
    SPELL_VOLATILE_MUTATION_DMG         = 140508,

    SPELL_MUTATION                      = 136178,

    /// Benefic/Nephasts auras added when adds die
    SPELL_THICK_BONES                   = 136184,
    SPELL_FRAGULES_BONES                = 136185,
    SPELL_CLEAR_MIND                    = 136186,
    SPELL_CLOUDED_MIND                  = 136187,
    SPELL_IMPROVED_SYNAPSES             = 136182,
    SPELL_DULLED_SYNAPSES               = 136183,
    SPELL_KEEN_EYESIGHT                 = 136180,
    SPELL_IMPAIRED_EYESIGHT             = 136181,

    /// Saurok transformation
    SPELL_FULLY_MUTATED                 = 140546,
    SPELL_FULLY_MUTATED_2               = 140706,

    /// Heroic Mode
    SPELL_DEADLY_MUTAGEN                = 136995,
    SPELL_BLACK_BLOOD                   = 137000
};

enum Adds
{
    NPC_LIVING_FLUID                = 69069,
    NPC_VISCOUS_HORROR              = 69070,
};

#define INVIBLE_DISPLAY 11686

Position gSpawnPositions[10] =
{
    { 5623.743f, 4599.775f, 55.366f, 2.011344f }, /// GOB_FIRST_MOGU_BLOOD_VAT
    { 5646.376f, 4624.545f, 55.365f, 2.612180f }, /// GOB_SECOND_MOGU_BLOOD_VAT
    { 5655.994f, 4656.011f, 55.366f, 3.118759f }, /// GOB_THIRD_MOGU_BLOOD_VAT
    { 5646.648f, 4687.429f, 55.366f, 3.703888f }, /// GOB_FOURTH_MOGU_BLOOD_VAT
    { 5624.318f, 4712.191f, 55.367f, 4.105229f }, /// GOB_FIFTH_MOGU_BLOOD_VAT
    { 5561.621f, 4710.213f, 55.365f, 5.206335f }, /// GOB_SIXTH_MOGU_BLOOD_VAT
    { 5537.327f, 4688.097f, 55.366f, 5.811091f }, /// GOB_SEVENTH_MOGU_BLOOD_VAT
    { 5529.932f, 4656.286f, 55.369f, 6.223429f }, /// GOB_EIGHTH_MOGU_BLOOD_VAT
    { 5536.340f, 4624.192f, 55.367f, 0.484527f }, /// GOB_NINTH_MOGU_BLOOD_VAT
    { 5560.005f, 4600.493f, 55.366f, 1.068864f }  /// GOB_TENTH_MOGU_BLOOD_VAT
};

#define MAX_POWER 60

void AddSC_boss_primordius()
{

}

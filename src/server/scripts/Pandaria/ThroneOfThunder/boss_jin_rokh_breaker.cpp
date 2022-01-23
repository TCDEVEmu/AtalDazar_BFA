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

enum Spells
{
    // Boss

    // Thundering Throw.
    SPELL_RIDE_VEHICLE          = 43671,  // Grab spell (Control Vehicle).

    SPELL_THUNDERING_THROW      = 137180, // Main cast time spell, dummy effect 0 for SPELL_THUNDERING_THROW_GRAB.
    SPELL_THUNDERING_THROW_GRAB = 137161, // Silence, pacify, eff. 0 script effect for SPELL_RIDE_VEHICLE.
    SPELL_THUNDERING_THROW_JMP  = 137173, // Jump behind target spell cast on Statue npc.
    SPELL_THUNDERING_THROW_PLR  = 137370, // Dmg dealed to player on impact.
    SPELL_THUNDERING_THROW_AOE  = 137167, // Additional 190000 to 210000 Nature damage to other players within 8 yards of the point of impact.
    SPELL_THUNDERING_THROW_STUN = 137371, // Stun for 5 seconds on other players within 8 yards of the point of impact.

    // Conductive Waters.
    SPELL_CONDUCTIVE_WATER_SUMM = 137145, // Summons Conductive Waters npc NPC_CONDUCTIVE_WATER.
    SPELL_CONDUCTIVE_VISUAL     = 137277, // Water effect visual ground.
    SPELL_CONDUCTIVE_VISUAL_2   = 137340, // Mogu fountain visual shooted by statue (orientation!).
    SPELL_CONDUCTIVE_VISUAL_3   = 137978, // Electrified waters visual ground.
    SPELL_CONDUCTIVE_WATER_GROW = 137676, // Aura size increase 137694 11 % each 100 ms.
    SPELL_CONDUCTIVE_WATER      = 138470, // Debuff, + 80% Nature damage.
    SPELL_FLUIDITY              = 138002, // Buff 40% damage dealt.

    // Static burst + Wound.
    SPELL_STATIC_BURST          = 137162, // Does 95000 to 105000 Nature damage to all players. After 3 sec., expires and applies 10 Static Wound stacks to current target (eff 1).

    SPELL_STATIC_WOUND          = 138349, // Aura. Inflicts 20000 Nature damage / stack when taking melee damage. - 1 stack / 3 secs (eff 1).
    SPELL_STATIC_WOUND_COND     = 138375, // Static Wound Conduction damage, inflicting 20000 / 3 Nature damage / stack to all players in the Conductive Water. If tank is in it.
    SPELL_STATIC_WOUND_DMG      = 138389, // Inflicts 20000 / 3 Nature damage / stack to all players when taking melee damage. On SPELL_STATIC_WOUND.

    // Focused Lightning + Lightning Fissure left after FL explosion (If the Focused Lightning detonates outside of Conductive Water, a Lightning Fissure forms).
    SPELL_FOCUSED_LIGHTNING     = 137399, // Cast time + dummy on eff 0 (to summon Focused Lightning npc NPC_FOCUSED_LIGHTNING).
    SPELL_FOCUSED_LIGHTNING_VIS = 137425, // Focused Lightning visual.
    SPELL_FOCUSED_LIGHTNING_SPD = 137389, // Aura, each 500 ms increase movement speed (triggers 137437).
    SPELL_FOCUSED_LIGHTNING_DMG = 137423, // Pulses 38000 to 42000 Nature damage every half second to other players within 5 yards.
    SPELL_FOCUSED_LIGHTNING_FIX = 137422, // Fixated aura (player).
    SPELL_FOCUSED_LIGHTNING_DET = 137374, // Focused Lightning Detonation damage, 170625 to 179375 Nature damage to players in 8 yards of fixated victim.
    SPELL_FOCUSED_LIGHTNING_DMG_1 = 137530, // Focused Lightning Conduction damage, 170625 to 179375 Nature damage to all players standing in Conductive Water.
    SPELL_FOCUSED_LIGHTNING_DMG_2 = 138990, // If touches ELECTRIFIED Conductive Water.

    SPELL_LIGHTNING_FISSURE_SUM = 137479, // Summons Lightning Fissure npc NPC_LIGHTNING_FISSURE.
    SPELL_LIGHTNING_FISSURE_VIS = 137480, // Fissure visual.
    SPELL_LIGHTNING_FISSURE_DMG = 137484, // Aura.
    SPELL_LIGHTNING_FISS_COND   = 138133, // Contacts Conductive Water, removing Lightning Fissure + 71250 - 78750 dmg to players standing in Conductive Water.
    SPELL_IMPLOSION             = 137507, // LF implodes upon contact with another Focused Lightning, 237500 - 262500 dmg to all players + 10% damage taken from Implosion.

    // Lightning Storm.
    SPELL_LIGHTNING_STORM       = 137313, // Aura.
    SPELL_LIGHTNING_STORM_VIS   = 140555, // Visual.
    SPELL_LIGHTNING_STRIKE_VIS  = 140507, // Visual too.
    SPELL_LIGHTNING_STORM_VIS2  = 140775, // Visual 2.
    SPELL_LIGHTNING_STORM_DMG   = 137261, // Effect 0 damage from aura.
    SPELL_LIGHTNING_STORM_DUMMY = 140819, // Effect 1 dummy from aura.
    SPELL_LIGHTNING_STORM_H_DMG = 137647, // Heroic, triggered on SPELL_LIGHTNING_STORM_DUMMY.
    SPELL_LIGHTNING_DIFFUSION   = 137905, // Each Lightning Strike diffuses, 195000 to 205000 Nature damage to all players in a line. On SPELL_LIGHTNING_STORM_H_DMG.
    SPELL_ELECTRIFIED_WATERS    = 138006, // Removes Fluidity, 35000 Nature damage / sec. to players in Conductive Water. Electrifies the water (visual change).

    // Ionization - Heroic only.
    SPELL_IONIZATION_AURA       = 138732, // Dummy on effect 1 for SPELL_IONIZATION_DMG when dispelled or duration expires.
    SPELL_IONIZATION_DMG        = 138733, // HEROIC. Inflicts 450000 Nature damage to players within 8 yards.
    SPELL_IONIZATION_CONDUCTION = 138743, // Ionization damage travels through Conductive Water, inflicting 450000 Nature damage to players standing in Conductive Water.

    SPELL_BERSERK               = 144369, // Berserk, Enrage, Bye - Bye or, simply put, a wipe. :)

    SPELL_ACHIEVEMENT           = 139163,
};

enum Npcs
{
    NPC_STATUE_TRIGGER          = 69467,
    NPC_CONDUCTIVE_WATER        = 69469,
	NPC_FOCUSED_LIGHTNING       = 69593,
    NPC_LIGHTNING_FISSURE       = 69609
};

Position const middlePos        = { 5891.60f, 6263.18f, 124.11f };

#define MAX_MOGU_STATUES 4
Position const statueTriggerPlace[MAX_MOGU_STATUES] =
{
    { 5841.659f, 6313.456f, 162.212f, 5.38f }, // South-east
    { 5838.741f, 6210.887f, 159.103f, 0.74f }, // North-east
    { 5943.230f, 6210.887f, 161.288f, 2.30f }, // North-west
    { 5943.678f, 6315.564f, 163.020f, 3.88f }, // South-west
};

const uint32 statueFontainDataList[MAX_MOGU_STATUES] =
{
    DATA_MOGU_FOUNTAIN_SE,
    DATA_MOGU_FOUNTAIN_NE,
    DATA_MOGU_FOUNTAIN_NW,
    DATA_MOGU_FOUNTAIN_SW
};

Position const statueThrowPlace[MAX_MOGU_STATUES] =
{
    { 5855.366f,  6301.588f, 157.095f }, // Jump South-east 2.39f O
    { 5853.612f,  6227.119f, 156.869f }, // Jump North-east 3.95f O
    { 5927.603f,  6224.533f, 158.019f }, // Jump North-west 5.69f O
    { 5928.242f,  6301.532f, 156.285f }, // Jump South-west 0.72f O
};

Position const waterSummonPlace[MAX_MOGU_STATUES] =
{
    { 5861.975f, 6293.226f, 124.035f }, // South-east
    { 5860.412f, 6232.429f, 124.035f }, // North-east
    { 5922.794f, 6237.926f, 124.035f }, // North-west
    { 5921.287f, 6288.865f, 124.035f }, // South-west
};

void AddSC_boss_jinrokh_the_breaker()
{

}

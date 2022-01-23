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

enum Spells
{
    /*** Bosses ***/

    // Spirit of Gara'jal (Gara'jal the Spiritbinder)

    SPELL_INTRO_VISUAL          = 144465, // 137135
    SPELL_WISP_FORM             = 90793,

    SPELL_POSSESS               = 136442, // Possess councilor spell. Generating Dark Energy, 25% size increase. Periodic dummy effect 1.
    SPELL_LINGERING_PRESENCE    = 136467, // Increases damage done by 10%, Dark Energy generation rate by 10%. Cancels Possessed aura - not working. Use by adding aura.

    SPELL_SOUL_FRAGMENT         = 137641, // HEROIC only. Mechanic abilities override aura + Shadowed Soul (137650) trigger each 5 seconds. Every second time (Normal) / Every time (25 Heroic) spirit changes possess target.
    SPELL_SOUL_FRAGMENT_PASS    = 137643, // On button click to pass SPELL_SOUL_FRAGMENT to another player (trigger spell from target - not working, needs script).

    // Kazra'jin - Mostly no tank needed, casts Reckless Charge all the time.


    SPELL_RECKLESS_CHARGE_FORCE = 137107, // Select target
    SPELL_RECKLESS_CHARGE       = 137117, // Cast time and roll visual. 5 sec duration.
    SPELL_RECKLESS_CHARGE_DMG_1 = 137122, // Target reach damage and knockback.
    SPELL_RECKLESS_CHARGE_DMG_2 = 137133, // On players encountered while moving to target.
    SPELL_RECKLESS_CHARGE_DUMMY = 137131, //
    SPELL_RECKLESS_CHARGE_AREA  = 138026, // Creates areatrigger to the location where he will charge and on path. 2 sec duration.
    SPELL_RECKLESS_CHARGE_MARK  = 146012, // Wrong spell, need to find correct spell

    SPELL_OVERLOAD              = 137149, // Dummy duration aura, applies dummy aura on eff 0 for SPELL_OVERLOAD_REFLECT_DMG (40% dmg reflected). Boss should be "stunned" (passive). When Possesed.
    SPELL_OVERLOAD_REFLECT_DMG  = 137151, // Damage reflected spell.

    SPELL_DISCHARGE             = 137166, // HEROIC only. Replaces Overload. Dummy duration aura, applies dummy aura on eff 0 for SPELL_DISCHARGE_REFLECT_DMG (5% dmg reflected to raid). Boss "stunned" (passive). When Possesed.
    SPELL_DISCHARGE_REFLECT_DMG = 136935, // Damage reflected spell.

    // Sul the Sandcrawler - Mostly no tank needed, casts Sand Bolt all the time.

    SPELL_SAND_BOLT             = 136189, // Triggers 136190 damage in 5 yards.

    SPELL_QUICKSAND             = 136521, // Cast time + eff 0 triggering of SPELL_ENTRAPPED, stun 8 seconds on target player (who is at location where npc will spawn).
    SPELL_QUICKSAND_VISUAL      = 136851, // Visual aura. Dummy aura on effect 0 for SPELL_QUICKSAND_DMG / SPELL_ENSNARED for players entering it.
    SPELL_QUICKSAND_DMG         = 136860, // Periodic damage aura on player.
    SPELL_QUICKSAND_SPAWN_EFF   = 137759, // Spawn effect made by npc with DoCast.
    SPELL_TREACHEROUS_GROUND_QS = 137629, // HEROIC only. 50% Quicksand increase size, it despawns older Quicksand in radius after spawn and adds this aura (they "merge").

    SPELL_ENSNARED              = 136878, // 15% speed decrease each sec for players in Quicksand. On 5 stacks causes SPELL_ENTRAPPED.
    SPELL_ENTRAPPED             = 136857, // At 5 stacks or if player is at Quicksand npc location when it spawns. Used with add aura for 30 sec stun.

    SPELL_FORTIFIED             = 136864, // Living Sand alive when Sandstorm hits cast this on them, full heal + size + dmg done increase.
    SPELL_TREACHEROUS_GROUND    = 137614, // HEROIC only. Living Sand + 125% health and damage done aura if Quicksands combine (if Quicksand has SPELL_TREACHEROUS_GROUND_QS aura when Sandstorm hits).

    SPELL_SANDSTORM             = 136894, // Replaces Quicksand. Cast time and periodic damage spell. Despawns Quicksand and creates NPC_LIVING_SAND. Possessed version.
    SPELL_SANDSTORM_VISUAL      = 136895, // Boss visual.

    // Frost King Malakk

    SPELL_FRIGID_ASSAULT        = 136904, // Aura for 75k frost damage / melee triggered on eff 1, and stack add SPELL_FRIGID_ASSAULT_STACKS on eff 0.
    SPELL_FRIGID_ASSAULT_STACKS = 136903, // Periodic dummy eff 0 for checking stacks. At 15 stacks player stunned by SPELL_FRIGID_ASSAULT_STUN.
    SPELL_FRIGID_ASSAULT_STUN   = 136910, // 15 second stun.

    SPELL_BITING_COLD           = 136917,
    SPELL_BITING_COLD_AURA      = 136992, // 94 k dmg, triggers periodic aura on player.
    //SPELL_BITING_COLD_VISUAL    = 137579, // Visual dummy. Put on player with add aura.

    SPELL_FROSTBITE             = 136922, // Replaces Biting Cold. Added in 5 stacks to a player. Damage 22k / stack players in 4 yards, and removes 2 (1 in 25 - player) stacks for each. Can't remove fully. Possessed version.
    SPELL_FROSTBITE_DMG         = 136937,
    SPELL_FROSTBITE_VISUAL      = 136926,
    SPELL_FROSTBITE_AOE         = 137575, // aoe targetting
    SPELL_FROSTBITE_AOE_2       = 136990,
    SPELL_BODY_HEAT             = 137084, // HEROIC only. On player in 4 yards when hit by frostbite. Applies SPELL_CHILLED_TO_THE_BONE aura after 8 sec, and player cannot help remove Frostbite.
    SPELL_CHILLED_TO_THE_BONE   = 137085, // Prevents players from removing Frostbite stacks for 8 sec.

    // High Priestess Mar'li

    SPELL_WRATH_OF_THE_LOA      = 137344, // 133000 to 147000 Holy damage.
    SPELL_BLESSED_LOA_SPIRIT    = 137203, // Main fake cast time spell. Eff 0 dummy for SPELL_BLESSED_LOA_SPIRIT_S.
    SPELL_BLESSED_LOA_SPIRIT_S  = 137200, // Summons NPC_BLESSED_LOA_SPIRIT.

    SPELL_WRATH_OF_THE_LOA_POSS = 137347, // 152625 to 177375 Shadow damage. Possessed version.
    SPELL_SHADOWED_LOA_SPIRIT   = 137350, // Replaces Blessed Loa Spirit. Main fake cast time spell. Eff 0 dummy for SPELL_SHADOWED_LOA_SPIRIT_S. Possessed version.
    SPELL_SHADOWED_LOA_SPIRIT_S = 137351, // Summons NPC_SHADOWED_LOA_SPIRIT. Possessed version.

    SPELL_TWISTED_FATE          = 137891, // HEROIC only. Replaces Shadowed Loa Spirit summoning. Cast time and eff 0 spell trigger (for SPELL_TWISTED_FATE_S_1). Possessed version.
    SPELL_TWISTED_FATE_S_1      = 137893, // Summons NPC_TWISTED_FATE_1.
    SPELL_TWISTED_FATE_S_2      = 137963, // Summons NPC_TWISTED_FATE_2.
    SPELL_TWISTED_FATE_VISUAL   = 137967, // Visual between the two npc's. Dummy eff 0 (maybe for checking distance between them).
    SPELL_TWISTED_FATE_DMG_A    = 137986, // Damage aura on each mob, triggers SPELL_TWISTED_FATE_DMG to the whole raid every 3 sec.
    SPELL_TWISTED_FATE_DMG      = 137972, // Calculation is done according to distance between npc's (further = less dmg to raid). If one dies, 100k dmg / 3 sec to all raid by remaning one.

    SPELL_BLESSED_GIFT          = 137303, // Blessed Loa Spirit heal on councilor 5% hp.
    SPELL_SHADOWED_GIFT         = 137390, // Shadowed Loa Spirit 10 mil damage in 6 yards.
    SPELL_SHADOWED_GIFT_2       = 137407, // with 400 yards
    SPELL_MARKED_SOUL           = 137359, // Fixated spell for Shadowed Loa Spirit aura. Pet control (used with add aura).

    SPELL_TWISTED_FATE_CLONE_1  = 137950, // Player target cast on NPC_TWISTED_FATE_1 when it spawns.
    SPELL_TWISTED_FATE_CLONE_2  = 137965,  // Player target cast on NPC_TWISTED_FATE_2 when it spawns.

    // General / Misc

    SPELL_DARK_POWER            = 136507, // At 100 Dark Energy, raid damage and increase.
    SPELL_ZERO_POWER            = 72242,  // No Regen
    SPELL_BERSERK               = 144369, // Berserk, Enrage, Bye - Bye or, simply put, a wipe. :)
};

enum Npcs
{
    NPC_SPIRIT_OF_GARAJAL       = 69135,

    NPC_RECKLESS_CHARGE         = 69453, // Boss summons this and charges towards it.

    NPC_LIVING_SAND             = 69153, // Spawns from Quicksand on Sandstorm.

    NPC_BLESSED_LOA_SPIRIT      = 69480, // Moves slowly to lowest councilor and heals him for 5%. If alive after 20 seconds jumps and heals him.
    NPC_SHADOWED_LOA_SPIRIT     = 69548, // Fixates to random player and moves to him. If within 6 yards jump and kills him.
    NPC_TWISTED_FATE_1          = 69740, // Twisted Fate npc 1.
    NPC_TWISTED_FATE_2          = 69746  // Twisted Fate npc 2.
};

const Position bossesPos[4] =
{
    {6064.94f, 5375.51f, 136.089f, 2.19309f},    // Sul
    {6040.6f, 5370.47f, 136.089f, 1.475329f},    // Malakk
    {6027.79f, 5375.08f, 136.089f, 1.105759f},   // Mar'li
    {6053.38f, 5370.28f, 136.089f, 1.88469f}     // Kazra'jin
};

void AddSC_boss_council_of_elders()
{

}

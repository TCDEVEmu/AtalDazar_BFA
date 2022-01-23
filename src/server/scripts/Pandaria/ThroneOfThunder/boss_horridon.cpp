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
    /*** Boss ***/

    SPELL_TRIPLE_PUNCTURE       = 136767, // On tank, 370000 to 430000 Physical damage and increases the damage taken from Triple Puncture by 10% for 1.50 min. Stacks.
    SPELL_DOUBLE_SWIPE          = 136741, // Both swipe spells trigger 136739 / 136740. 277500 to 322500 Physical damage in front and back of caster in a 35y cone.
    SPELL_HORRIDON_CHARGE       = 136769, // Horridon charges at a random player, performing a Double Swipe once he reaches their location.
    SPELL_HORRIDON_CHARGE_TRIG  = 146740, // Charge to Object spell. Custom.
    SPELL_DOUBLE_SWIPE_CHARGE   = 136770, // This one is triggered by Charge.

    SPELL_HEADACHE              = 137294, // 10 second stun after crashing in door by Orb of Control usage. Triggers SPELL_CRACKED_SHELL.

    SPELL_BERSERK               = 144369, // Berserk, Enrage, Bye - Bye or, simply put, a wipe. :)

    SPELL_DIRE_CALL             = 137458, // Increase ally melee speed 50% (eff 0), 250000 Physical damage to all raid (eff 1), summon direhorn spirit dummy (effect 2) - 140947. HEROIC only.
    SPELL_SUMMON_DIREHORN_SPIRIT_FORCE  = 140947,
    SPELL_SUMMON_DIREHORN_SPIRIT    = 140945,
    SPELL_DIRE_FIXATION         = 140946, // Pet control Fixate aura (like Jin'rokh's Focused Lightning).
    SPELL_WEAK_LINK             = 140948, // Mob aura, knockback on damage taken.
    SPELL_WEAK_LINK_LEAP_BACK   = 140949,

    // Unused boss spells:
    // SPELL_CRACKED_SHELL         = 137240, // Door slam 50% increase damage debuff.
    // SPELL_SUMMON_DIREHORN_SPIR  = 140945, // Triggered from 140947 spell on SPELL_DIRE_CALL effect 2. Done by DB (insert into spell_linked_spell values (140947, 140945, 0, 'summon Direhorn Spirit');).


    /*** Farraki tribe ***/

    // Sul'lithuz Stonegazer
    SPELL_STONE_GAZE            = 136708, // 10 second stun.

    // Farraki Skirmisher - melee only.

    // Farraki Wastewalker
    SPELL_BLAZING_SUNLIGHT      = 136719, // Damage + periodic.

    // Sand Trap (summoned by Farraki Wastewalker)
    SPELL_SAND_TRAP             = 136725,
    SPELL_SAND_TRAP_AURA        = 136724, // Periodic aura, visual included. Does not move. Grows.
    SPELL_SAND_TRAP_DMG         = 136723,

    /*** Gurubashi tribe ***/

    // Gurubashi Bloodlord
    SPELL_RENDING_CHARGE        = 136654,
    SPELL_RENDING_CHARGE_DOT    = 136654, // 40k / sec for 15 seconds. Stacks.

    // Gurubashi Venom Priest
    SPELL_VENOM_BOLT_VOLLEY     = 136587, // Damage + periodic.

    // Venomous Effusion (summoned by Venom Priest) - uses also SPELL_VENOM_BOLT_VOLLEY.

    // Living Poison (summoned by Venomous Effusion)
    SPELL_LIVING_POISON         = 136645, // Periodic aura, visual included. Moves random.

    /*** Drakkari tribe ***/

    // Risen Drakkari Warrior
    SPELL_UNCONTROLLED_ABOM     = 136709, // Attacks random targets and stacks Deadly Plague on them for 15k / sec dmg.

    // Risen Drakkari Champion - uses also SPELL_UNCONTROLLED_ABOM.

    // Drakkari Frozen Warlord
    SPELL_MORTAL_STRIKE_W       = 136670, // 200% weapon damage and 50% heal decrease for 8 secs.

    // Frozen Orb (summoned by Drakkari Frozen Warlord)
    SPELL_FROZEN_BOLT           = 136572, // periodic aura, visual included.

    /*** Amani tribe ***/

    // Amani'shi Protector - melee only.

    // Amani'shi Flame Caster
    SPELL_FIREBALL_FC           = 136465, // 92500 - 107500 damage.

    // Amani Warbear
    SPELL_WARBEAR_SWIPE         = 136463, // 92500 - 107500 damage 5y cone.

    // Amani'shi Beast Shaman
    SPELL_CHAIN_LIGHTNING       = 136480, // 74000 - 86000 damage, 3 target jumps.
    SPELL_HEX_OF_CONFUSION      = 136512, // Aura, triggers 136513 (60% chance) on ability use, inflicting self damage of 46250 to 53750.
    SPELL_LIGHTNING_NOVA_TOTEM  = 136487, // Summons NPC_LIGHTNING_NOVA_TOTEM.

    // Lightning Nova Totem (summoned by Amani'shi Beast Shaman)
    SPELL_LIGHTNING_NOVA        = 136489, // periodic aura, visual included.

    /*** Zandalari Dinomancer ("mini bosses" which signal the end of each triber phase) ***/

    SPELL_DINO_MENDING          = 136797, // Heals 1% of Horridon's health each sec. Cast continously till 50%. Interruptible.
    SPELL_DINO_FORM             = 137237, // Transform, increase damage by 50%, stops healing boss.

    /*** War-God Jalak ***/
    SPELL_BESTIAL_CRY           = 136817, // 100k raid dmg + 50% increase. Stacks.
    SPELL_RAMPAGE               = 136821, // On Horridon, when he dies.

    /*** Orb of Control ***/

    SPELL_ORB_OF_CONTROL_FARRAKI_SUMMON     = 137445,
    SPELL_ORB_OF_CONTROL_GURUBASHI_SUMMON   = 137447,
    SPELL_ORB_OF_CONTROL_DRAKKARI_SUMMON    = 137448,
    SPELL_ORB_OF_CONTROL_AMANI_SUMMON       = 137449,

    SPELL_ORB_OF_CONTROL_FARRAK = 137433, // These 4 correspond to the GO's.
    SPELL_ORB_OF_CONTROL_GURUB  = 137442,
    SPELL_ORB_OF_CONTROL_DRAKK  = 137443,
    SPELL_ORB_OF_CONTROL_AMANI  = 137444,
};

enum Npcs
{
    // Boss
    NPC_DIREHORN_SPIRIT          = 70688, // Heroic

    // Adds

    // Farraki
    NPC_SUL_LITHUZ_STONEGAZER    = 69172,
    NPC_FARRAKI_SKIRMISHER       = 69173,
    NPC_FARRAKI_WASTEWALKER      = 69175,
    NPC_SAND_TRAP                = 69346,

    // Gurubashi
    NPC_GURUBASHI_BLOODLORD      = 69167,
    NPC_GURUBASHI_VENOM_PRIEST   = 69164,
    NPC_VENOMOUS_EFFUSION_HORR   = 69314,
    NPC_LIVING_POISON            = 69313,

    // Drakkari
    NPC_RISEN_DRAKKARI_WARRIOR   = 69184,
    NPC_RISEN_DRAKKARI_CHAMPION  = 69185,
    NPC_DRAKKARI_FROZEN_WARLORD  = 69178,
    NPC_FROZEN_ORB_HORR          = 69268,

    // Amani
    NPC_AMANI_SHI_PROTECTOR      = 69169,
    NPC_AMANI_SHI_FLAME_CASTER   = 69168,
    NPC_AMANI_WARBEAR            = 69177,
    NPC_AMANI_SHI_BEAST_SHAMAN   = 69176,
    NPC_LIGHTNING_NOVA_TOTEM     = 69215,

    // Zandalari Dinomancer
    NPC_ZANDALARI_DINOMANCER     = 69221,

    // War-God Jalak
    NPC_WAR_GOD_JALAK            = 69374,
};

enum GameObjectsIds
{
    GO_ORB_OF_CONTROL_FARRAKI    = 218193, // Used to get Horridon to crash into the Farraki gate.
    GO_ORB_OF_CONTROL_GURUBASHI  = 218374, // Used to get Horridon to crash into the Gurubashi gate.
    GO_ORB_OF_CONTROL_DRAKKARI   = 218375, // Used to get Horridon to crash into the Drakkari gate.
    GO_ORB_OF_CONTROL_AMANI      = 218376, // Used to get Horridon to crash into the Amani gate.

    GO_START_DOOR                = 218674  // Door Horridon breaks during intro.
};

Position const chargePlace[4] =
{
    { 5492.223f, 5813.665f, 130.04f }, // Farraki   - North-west.
    { 5488.879f, 5695.583f, 130.04f }, // Gurubashi - North-east.
    { 5372.876f, 5694.684f, 130.04f }, // Drakkari  - South-east.
    { 5373.481f, 5811.625f, 130.04f }, // Amani     - South-west.
};

Position const tribesmenSummonPlace[4] =
{
    { 5525.238f, 5850.004f, 131.123f }, // Farraki   - North-west.
    { 5530.141f, 5658.262f, 130.130f }, // Gurubashi - North-east.
    { 5337.873f, 5657.117f, 130.122f }, // Drakkari  - South-east.
    { 5336.561f, 5845.739f, 130.117f }, // Amani     - South-west.
};

Position const jalakIntroPos        = { 5432.82f, 5671.34f, 192.323f }; // Jalak summon position.
Position const midPos               = { 5434.05f, 5752.63f, 129.689f }; // Mid arena position Horridon moves to during intro.

float addOrientations[5] =
{
    3.94f,  // Farraki   - North-west.
    2.41f,  // Gurubashi - North-east.
    0.85f,  // Drakkari  - South-east.
    5.54f,  // Amani     - South-west.
    1.53f   // Jalak     - Intro.
};

const Position farakkiWasteWalkerPos[6] =
{
    {5512.16f, 5822.61f, 169.36f, 3.93f},   // spawn 1
    {5501.08f, 5833.55f, 169.17f, 3.93f},   // spawn 2
    {5488.33f, 5846.13f, 169.17f, 3.93f},   // spawn 3
    {5487.52f, 5798.69f, 129.63f, 3.93f},   // jump 1
    {5481.64f, 5804.32f, 129.81f, 3.93f},   // jump 2
    {5474.11f, 5813.26f, 129.61f, 3.93f}    // jump 3
};

const Position gurubashiPriestPos[6] =
{
    {5495.87f, 5668.50f, 168.70f, 2.37f},   // spawn 1
    {5503.67f, 5676.61f, 169.10f, 2.37f},   // spawn 2
    {5511.48f, 5684.58f, 169.00f, 2.37f},   // spawn 3
    {5472.25f, 5695.28f, 129.61f, 2.37f},   // jump 1
    {5481.24f, 5704.95f, 129.61f, 2.37f},   // jump 2
    {5490.37f, 5712.58f, 129.43f, 2.37f}    // jump 3
};

const Position drakkariWarlordPos[6] =
{
    {5331.45f, 5704.43f, 169.16f, 0.75f},   // spawn 1
    {5338.48f, 5697.49f, 169.16f, 0.75f},   // spawn 2
    {5379.83f, 5656.87f, 169.16f, 0.75f},   // spawn 3
    {5374.72f, 5715.72f, 129.61f, 0.75f},   // jump 1
    {5385.96f, 5707.35f, 129.61f, 0.75f},   // jump 2
    {5398.21f, 5696.16f, 129.61f, 0.75f}    // jump 3
};

const Position amaniWarBearPos[6] =
{
    {5374.55f, 5845.30f, 169.16f, 5.48f},
    {5352.98f, 5823.26f, 169.16f, 5.48f},
    {5345.16f, 5815.96f, 169.16f, 5.48f},
    {5392.44f, 5817.82f, 129.61f, 5.48f},
    {5381.56f, 5803.11f, 129.69f, 5.48f},
    {5368.70f, 5794.48f, 129.61f, 5.48f}
};

const Position dinomancerPos[5] =
{
    {5419.27f, 5672.63f, 192.30f, 1.52f},
    {5425.97f, 5672.63f, 192.30f, 1.52f},
    {5441.16f, 5672.63f, 192.30f, 1.52f},
    {5447.20f, 5672.63f, 192.30f, 1.52f},
    {5422.73f, 5725.36f, 129.61f, 1.52f}
};

void AddSC_boss_horridon()
{

}

#include "ScriptMgr.h"
#include "Creature.h"
#include "CreatureAI.h"
#include "Unit.h"
#include "UnitAI.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "SpellAuraEffects.h"
#include "battle_of_dazaralor.h"
enum Spells
{
    SPELL_PERIODIC_ENERGY_GAIN = 295065,
    SPELL_LOAS_WRATH = 282736,
    SPELL_LOAS_PACT = 282079,
    SPELL_HASTENING_WIND = 285945,
    SPELL_GIFT_OF_WIND = 282098,
    SPELL_PAKUS_WRATH = 282107,
    SPELL_WILD_MAUL = 285893,
    SPELL_CRAWLING_HEX = 282135,
    SPELL_GONKS_WRATH = 282155,
    SPELL_LACERATING_CLAWS = 282444,
    SPELL_BLEEDING_WOUNDS = 282592,
    SPELL_KIMBULS_WRATH_JUMP = 283508,
    SPELL_THUNDERING_STORM = 282411,
    SPELL_MIND_WIPE_SPAWN_EFFECT = 286708,
    SPELL_MIND_WIPE_PACIFY_SILENCE = 285879,
    SPELL_AKUNDAS_WRATH = 286811,
    SPELL_AKUNDAS_WRAT_EXP = 286821,
    SPELL_STATIC_ORB_CREATE_AT = 286833,
    //Heroic
    SPELL_CRY_OF_THE_FALLEN = 286060,
    SPELL_PACK_HUNTER = 286007,
    SPELL_KRAGWAS_WRATH_MAIN = 282636,
    //Mythic
    SPELL_BWONSAMDIS_WRATH = 284663,
};

const Position middle_of_the_room = { -1095.421f, 804.986f, 203.865f, 1.53f };
const Position pakku_pos = { -1078.854f, 766.060f, 204.249f, 1.91f };

void AddSC_boss_conclave_of_the_chosen()
{

}
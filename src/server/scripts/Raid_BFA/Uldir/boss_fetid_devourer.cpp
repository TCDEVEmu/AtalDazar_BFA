

#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "InstanceScript.h"
#include "Map.h"
#include "MotionMaster.h"
#include "ObjectAccessor.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellInfo.h"
#include "SpellScript.h"
#include "TemporarySummon.h"
#include "uldir.h"

enum Spells
{
    SPELL_PERIODIC_ENERGY_GAIN = 295065,
    SPELL_TERRIBLE_THRASH_DAMAGE = 262277,
    SPELL_ROTTING_REGURGITATION = 262292,
    SPELL_SHOCKWAVE_STOMP = 262288,
    SPELL_MALODOROUS_MIASMA_AURA = 262313,
    SPELL_FETID_FRENZY = 262378,
    SPELL_CONSUME_CORRUPTION = 262370,
    SPELL_ENTICING_ESSENCE = 262364,
    SPELL_TRASH_CHUTE_AT = 274470,
    SPELL_PUTRID_PAROXYSM = 262314,
    SPELL_BERSERK = 26662,
};

enum Events
{
    EVENT_TERRIBLE_THRASH = 1,
    EVENT_MALODOROUS_MIASMA,
    EVENT_WASTE_DISPOSAL_UNITS,
    EVENT_ROTTING_REGURGITATION,
    EVENT_SHOCKWAVE_STOMP,
    EVENT_GET_CORRUPTION,
    EVENT_BERSERK
};

enum Texts
{
    SAY_ROTTING_REGURGITATION,
    SAY_WASTE_DISPOSAL_UNITS,
};

enum Actions
{
    ACTION_GET_CORRUPTION = 1,
};

const Position corruption_corpuscle_spawn_pos = { 290.625f, -622.588f, 694.882f, 3.13f };
const Position corruption_corpuscle_spawn_pos2 = { 216.449f, -623.721f, 694.882f, 3.13f };
const Position corruption_corpuscle_spawn_pos3 = { 234.059f, -719.541f, 694.882f, 3.13f };
const Position corruption_corpuscle_spawn_pos4 = { 278.369f, -719.677f, 694.799f, 2.917f };



void AddSC_boss_fetid_devourer()
{
   
}

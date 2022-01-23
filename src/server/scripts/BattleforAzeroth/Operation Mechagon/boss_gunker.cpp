#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "ScriptMgr.h"
#include "SpellScript.h"
#include "SpellAuras.h"
#include "SpellAuraEffects.h"
#include "operation_mechagon.h"

enum Spells
{
    SPELL_PERIODIC_ENERGY_GAIN = 295065,
    SPELL_GUNKER_VISUAL = 300859,
    SPELL_GOOPED_CREATE_AURA_AT = 297821,
    SPELL_GOOPED_INCAPCITATED = 298124,
    SPELL_GOOPED_MAIN = 298259,
    SPELL_TOXIC_FLAMES_TRIGGER = 298228,
    SPELL_SPLATTER_TRIGGER = 297985,
    SPELL_COALESCE = 297835,
    SPELL_SLUDGE_BOLT = 298212,
    SPELL_TOXIC_WAVE = 297834,
    SPELL_SANITIZING_SPRAY = 297901,
    SPELL_SANITIZING_AURA = 298145,
    SPELL_SANITIZING_SPRAY2 = 298216,
};

const Position squirt_bot_pos = { 626.622f, -348.212f, 0.423f, 3.54f };
const Position squirt_bot_pos2 = { 595.423f, -325.170f, 1.017f, 4.79f };
const Position squirt_bot_pos3 = { 577.199f, -359.477f, 0.864f, 0.11f };

void AddSC_boss_gunker()
{   

}
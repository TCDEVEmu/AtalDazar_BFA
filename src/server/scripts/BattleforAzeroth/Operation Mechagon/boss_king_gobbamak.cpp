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
    SPELL_CHARGED_SMASH = 297254,
    SPELL_ELECTRICAL_CHARGE = 297257,
    SPELL_RUMBLE = 297261,
    SPELL_PERIODIC_ENERGY_GAIN = 295065,
};


const Position cave_pos = { 1188.0f, -75.0f, 21.84f, 3.59f };

void AddSC_boss_king_gobbamak()
{

}
#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "ScriptMgr.h"
#include "SpellScript.h"
#include "SpellAuras.h"
#include "SpellAuraEffects.h"
#include "Vehicle.h"
#include "InstanceScript.h"
#include "operation_mechagon.h"

enum Spells
{    
    SPELL_PULSE_BLAST = 291878,
    SPELL_PLASMA_ORB_DAMAGE_KNOCK = 291915,
    SPELL_PLASMA_ORB_APPLY_AT_VISUAL = 291835,
    SPELL_RECALIBRATE_DAMAGE_KNOCK = 291856,
    SPELL_RECALIBRATE_TAR_DEST_VISUAL = 291845,
    SPELL_GIGA_ZAP_MAIN = 291928,
    SPELL_GIGA_ZAP_DAMAGE = 291939,
    SPELL_TAKE_OFF = 291613,
    SPELL_CUTTING_BEAM_CREATE_AT = 291626,
    SPELL_OBNOXIOUS_MONOLOQUE = 291974,
    SPELL_MAGNETO_ARM_CREATE_AT = 283143,
};

const Position king_mechagon_jump_pos = { 699.518f, 623.309f, -238.285f, 5.25f };
const Position king_mechagon_vehicle_escort_pos = { 633.195f, 551.366f, -266.912f, 5.25f };

void AddSC_boss_king_mechagon()
{

};

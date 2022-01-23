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
    //Trixie
    SPELL_TAZE = 298669,    
    SPELL_MEGA_TAZE_VISUAL_MISSILE = 302687,
    SPELL_MEGA_TAZE_CHANNEL = 302682,
    SPELL_MEGA_TAZE_DAMAGE = 298718,
    SPELL_ELECTRIC_SLIDE = 298849,
    SPELL_JUMP_START = 298897,
    SPELL_SUPER_BOOST = 303525,//When Naeno is defeated, Trixie gains Super Boost granting her 100% Haste for the remainder of the encounter.
    //Naeno
    SPELL_BOLT_BUSTER = 298940,
    SPELL_ROADKILL_CHARGE = 298946,
    SPELL_ROLL_OUT = 298898,
    SPELL_TURBO_BOOST_MAIN = 299153,
    SPELL_TURBO_BOOST = 299241,//When defeated, Trixie uses Turbo Boost on Naeno causing his successful melee attacks to inflict 46607 Nature damage to all players for the remainder of the encounter.	
    //Mechacycle
    SPELL_SMOKE_CLOUD_CREATE_AT = 298573,
    SPELL_SMOKE_CLOUD_AURA = 298602,
    SPELL_PEDAL_TO_THE_METAL = 298651,
    SPELL_BURNOUT = 298571,    
};

void AddSC_boss_trixie_naeno()
{

};

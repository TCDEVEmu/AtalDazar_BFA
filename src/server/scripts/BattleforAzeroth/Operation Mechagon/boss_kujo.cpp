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
    SPELL_AIR_DROP_DAMAGE_KNOCK = 291930,
    SPELL_JUNK_BOMB_DAMAGE = 291953,
    SPELL_EXPLOSIVE_LEAP_TRIGGER = 291973,
    SPELL_EXPLOSIVE_LEAP_DAMAGE = 292035,
    SPELL_VENTING_FLAMES = 291946,
    SPELL_VENTING_FLAMES_DAMAGE = 291949, // triggered by previous spell already
    SPELL_BLAZING_CHOMP = 294929,
};

const Position middle_of_the_room = { 583.771f, 245.203f, -333.555f, 1.05f };

void AddSC_boss_kujo()
{

};

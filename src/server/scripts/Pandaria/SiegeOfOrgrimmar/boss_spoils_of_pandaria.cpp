#include "siege_of_orgrimmar.hpp"
#include "Object.h"
#include "SpellAuraEffects.h"
#include "SpellMgr.h"
#include "Player.h"

#include "ScriptedGossip.h"

// There are 36+36 lightweight crates (18 per room),
// 12+12 stout crates (6 per room),
// 4+4 massive crates (2 per room),
// 8 pandaren crates (2 per room).
// West and South rooms are mantid, North and East rooms are mogu.
// Players have two ways: from North to West and from East to South.
// North and West are first rooms, South and East are second rooms.
//

// TODO:
// "Return to Stone" spells

#define POSITION_X_MIN 1528.39f
#define POSITION_X_MAX 1735.57f
#define POSITION_Y_MIN -5226.14f
#define POSITION_Y_MAX -5018.64f
#define POSITION_Z_MIN -293.f
#define POSITION_Z_MAX -280.f

#define MAX_ENERGY 50
#define LIGHTWEIGHT_MOB_ENERGY 2
#define STOUT_MOB_ENERGY 5
#define MASSIVE_MOB_ENERGY 10


void AddSC_boss_spoils_of_pandaria()
{
    
}

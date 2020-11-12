#include "siege_of_orgrimmar.hpp"
#include "SpellAuraEffects.h"

#define MALKOROK_POWER_TYPE POWER_ENERGY
#define MALKOROK_POWER_MAX 100

#define ENERGY_UPDATE_TIMER 1000 // in milliseconds
#define FIRST_PHASE_DURATION 140000 // in milliseconds
//#define FIRST_PHASE_DURATION 10000 // in milliseconds

// The boss regenerates 100 rage in 140 seconds
// He should cast the '3 smashes and 1 breath' combo two times per phase
// So he casts arcing smash each 10-15 energy

void AddSC_boss_malkorok()
{
    
}

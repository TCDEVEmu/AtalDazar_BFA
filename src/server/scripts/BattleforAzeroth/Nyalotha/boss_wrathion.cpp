/*
 * Copyright (C) 2021 BfaCore Reforged
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "nyalotha.h"
#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "CombatAI.h"
#include "Conversation.h"
#include "Creature.h"
#include "CreatureAI.h"
#include "InstanceScript.h"
#include "ScriptMgr.h"
#include "Spell.h"
#include "SpellAuras.h"

const Position annex_of_prophecy_platform_wrathion_pos = { -1706.0f, -44.0f, -518.0f, 3.14f };
const Position annex_of_prophecy_platform_pos = { -1760.0f, -43.0f, -518.0f, 6.26f };
const Position ashwalker_assasin_pos { -1729.0f, -85.0f, -1475.0f, 2.0f };
const Position wrathion_room_center = { -1756.909424f, -43.431221f, -1477.871826f, 6.270624f };

const Position wrathion_burning_cataclysm_positions[4] = {
    { -1828.8824f, -43.157169f, -1477.873657f }, // South
    { -1759.8195f, 6.375f,      -1476.1115f   }, // West
    { -1760.3156f, -92.938530f, -1477.557861f }, // East
    { -1688.3801f, -43.461460f, -1477.789429f }, // North
};

const Position wrathion_center_square[2] = {
    { -1792.639893f, -12.733096f, -1478.160278f }, // Bottom left
    { -1718.550415f, -73.556931f, -1478.160278f }, // Top right
};

const Position wrathion_scorching_blister_positions[20] = {
    { -1818.4462f, -53.36111f,  -1477.9269f }, // South
    { -1818.6962f, -35.100697f, -1477.9023f }, // South
    { -1790.6823f, -8.862847f,  -1477.5057f }, // West
    { -1758.8281f, -3.8958333f, -1477.9944f }, // West
    { -1758.6137f, -84.570396f, -1477.8377f }, // East
    { -1788.8361f, -85.281670f, -1477.5578f }, // East
    { -1699.5662f, -31.777704f, -1477.7893f }, // North
    { -1699.3105f, -53.476192f, -1477.7888f }, // North
    { -1817.9983f, -73.68403f,  -1477.8148f },
    { -1728.6459f, -82.80903f,  -1477.4031f },
    { -1729.2483f, -53.543404f, -1477.8475f },
    { -1789.6024f, -50.96875f,  -1477.9846f },
    { -1757.8959f, -57.526043f, -1477.8907f },
    { -1698.6892f, -11.520833f, -1477.8252f },
    { -1818.7344f, -14.232639f, -1477.3846f },
    { -1789.981f,  -35.161457f, -1477.9846f },
    { -1729.3524f, -32.689236f, -1478.168f  },
    { -1757.8767f, -29.70139f,  -1478.0984f },
    { -1729.3802f, -4.717014f,  -1478.0111f },
    { -1700.9210f, -76.174034f, -1477.5568f },
};

enum Spells
{
    // Intro
    SPELL_WRATHION_INITIAL_TRANSFORM                    = 315140,
    SPELL_INTRO_CONVERSATION                            = 314697,
    SPELL_ENERGY_BAR_COLOR                              = 315294,
    // Phase 1
    // Searing Breath
    SPELL_SEARING_BREATH_VISUAL                         = 316875,
    SPELL_SEARING_BREATH_TARGETS                        = 313973,
    SPELL_SEARING_BREATH_DAMAGE                         = 305978,
    SPELL_SEARING_ARMOR                                 = 306015,
    // Tail Swipe
    SPELL_TAIL_SWIPE                                    = 307974,
    // Incineration
    SPELL_INCINERATION_TARGETS                          = 306111,
    SPELL_INCINERATION                                  = 306163,
    SPELL_INCINERATION_EXPLOSION                        = 306247,
    // Gale Blast
    SPELL_GALE_BLAST                                    = 306289,
    SPELL_GALE_BLAST_TARGETS                            = 307041,
    SPELL_GALE_BLAST_MISSILE                            = 307047,
    // Burning Cataclysm
    SPELL_BURNING_CATACLYSM_TELEPORT_VISUAL             = 306956,
    SPELL_BURNING_CATACLYSM_TELEPORT                    = 306949,
    SPELL_BURNING_CATACLYSM                             = 306735,
    SPELL_SCORCHING_BLISTER_MISSILE                     = 312676,
    SPELL_SCORCHING_BLISTER_CREATE_AT                   = 312490,
    SPELL_SCORCHING_BLISTER_AT_DAMAGE                   = 313959,
    SPELL_SCORCHING_BLISTER_EXPLOSION                   = 312698,
    // Molten Eruption
    SPELL_MOLTEN_ERUPTION_VISUAL                        = 306788,
    SPELL_MOLTEN_ERUPTION_MISSILE                       = 306789,
    SPELL_MOLTEN_ERUPTION_EXPLOSION                     = 306898,
    SPELL_MOLTEN_ERUPTION_WAIT_VISUAL                   = 306820,
    SPELL_MOLTEN_ERUPTION_SPAWN_VISUAL                  = 307205,
    // Phase 2
    SPELL_BEGIN_OF_PHASE_2_CONVERSATION                 = 307458,
    SPELL_END_OF_PHASE_2                                = 306947,
    SPELL_END_OF_PHASE_2_CONVERSATION                   = 307458,
    // Crackling Shards
    SPELL_CRACKLING_SHARD_SUMMON_TARGETS                = 308894,
    SPELL_CRACKLING_SHARD_SUMMON                        = 308905,
    SPELL_CRACKLING_SHARD_CREATE_AT                     = 308907,
    SPELL_MOLTEN_ERUPTION_MARK                          = 306899,
    SPELL_PYROCLASTIC_FLOW                              = 307017,
    SPELL_LAVA_POOL_AT                                  = 307031,
    SPELL_LAVA_POOL_AT_DAMAGE                           = 307053,
    SPELL_RISING_HEAT                                   = 311362,
    // Scale of Wrathion
    SPELL_SCALES_OF_WRATHION_MISSILE                    = 308679,
    SPELL_SCALES_OF_WRATHION_DAMAGE                     = 308682,
    SPELL_BURNING_MADNESS                               = 307013,
    // Smoke And Mirros
    SPELL_SMOKE_AND_MIRRORS                             = 306995,
    SPELL_SMOKE_AND_MIRRORS_ENDING                      = 307051,
    // Creeping Madness
    SPELL_CREEPING_MADNESS_TARGETS                      = 313253,
    SPELL_CREEPING_MADNESS                              = 313250,
    SPELL_CREEPING_MADNESS_SLOW                         = 313255,
    SPELL_CREEPING_MADNESS_DAMAGE                       = 314414,
    // Assassin spells
    SPELL_ASSASSIN_CREATION_MISSILE                     = 316929,
    SPELL_ASSASSIN_SPAWN                                = 316940,
    SPELL_SMOKE_SHROUD                                  = 312266,
    SPELL_NOXIOUS_CHOKE                                 = 314347,
    SPELL_DARK_AMBUSH                                   = 314373,
    SPELL_BERSERK                                       = 301495,
};

void AddSC_wrathion()
{

}

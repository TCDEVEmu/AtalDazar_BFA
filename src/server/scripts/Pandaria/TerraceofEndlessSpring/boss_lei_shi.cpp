/*
* Copyright (C) 2012-2013 JadeCore <http://www.pandashan.com/>
* Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
* Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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

#include "GameObjectAI.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "terrace_of_endless_spring.h"
#include "GridNotifiers.h"
#include "SpellAuraEffects.h"
#include "SpellAuras.h"
#include "SpellAuraDefines.h"

enum eLeiShiSpells
{
    SPELL_AFRAID            = 123181,
    SPELL_SPRAY             = 123121,
    SPELL_HIDE              = 123244,
    SPELL_HIDE_SUMMON       = 123213,
    SPELL_HIDE_STACKS       = 123233,
    SPELL_GET_AWAY          = 123461,
    SPELL_GET_AWAY_TELEPORT = 123441,
    SPELL_PROTECT           = 123250,
    SPELL_PROTECT_RESPAWN   = 123493,
    SPELL_PROTECT_VISUAL    = 123505,

    // This is for Heroic Mode
    SPELL_SCARY_FOG_CIRCLE  = 123797,
    SPELL_SCARY_FOG_DOT     = 123705,
    SPELL_SCARY_FOG_STACKS  = 123712,

    SPELL_LEI_SHI_TRANSFORM = 127535
};

Position leiShiPos = { -1017.93f, -2911.3f, 19.902f, 4.74f };

Position hidePositions[4] =
{
    { -990.678f,  -2890.043f, 19.172f, 3.781f },
    { -994.835f,  -2933.835f, 19.172f, 2.377f },
    { -1041.316f, -2932.84f,  19.172f, 0.733f },
    { -1045.101f, -2890.742f, 19.172f, 5.646f }
};

void AddSC_boss_lei_shi()
{

}

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
#include "GameObject.h"
#include "GameObjectAI.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "InstanceScript.h"

enum 
{
	ACTION_NZOTH_TALK,
	ACTION_WRATHION_TALK,
};

const Position annex_of_prophecy_first_elevator_pos = { -1099.468f, -45.313f, -237.333f, 0.043f };

//161720, used as custom mini event because of first elevator
struct npc_wrathion_special : public ScriptedAI
{
	npc_wrathion_special(Creature* c) : ScriptedAI(c) { }

private:
	bool Talk;

	void Reset() override
	{
		ScriptedAI::Reset();
		Talk = false;
		me->AddNpcFlag(UNIT_NPC_FLAG_SPELLCLICK);
	}

	void MoveInLineOfSight(Unit* who) override
	{
		if (!Talk && who->IsPlayer() && who->GetDistance2d(me) <= 15.0f)
		{
			Talk = true;

			if (Talk)
				me->Say("Champions! I will lead you to the top.", LANG_UNIVERSAL);
		}
	}

	void OnSpellClick(Unit* clicker, bool& /*result*/) override
	{
		if (Player* player = clicker->ToPlayer())
		{
			if (!player->IsInCombat() && instance->GetBossState(DATA_SKITRA) == DONE && me->GetAreaId() == 12880)
				player->NearTeleportTo(annex_of_prophecy_first_elevator_pos, false);

			//Second elevator, teleport to Vexiona
			if (!player->IsInCombat() && instance->GetBossState(DATA_XANESH) == DONE && me->GetAreaId() == 12870)
				player->NearTeleportTo(-516.791f, -454.167f, -149.436f, 1.690f, false);

			if (!player->IsInCombat() && instance->GetBossState(DATA_XANESH) == DONE && instance->GetBossState(DATA_VEXIONA) == DONE && instance->GetBossState(DATA_HIVEMIND) == DONE && instance->GetBossState(DATA_RADEN) == DONE)
				player->NearTeleportTo(-11667.841f, 9313.372f, 130.078f, 6.273f, false);
		}
	}
};

void AddSC_nyalotha()
{
	RegisterCreatureAI(npc_wrathion_special);
}


#include "SpellScript.h"
#include "SpellAuras.h"
#include "SpellAuraEffects.h"
#include "Player.h"
#include "ScriptedEscortAI.h"
#include "Creature.h"
#include "ScriptedCreature.h"
#include "ScriptMgr.h"
#include "CreatureAI.h"
#include "ScriptedGossip.h"
#include "Pet.h"
#include "PetAI.h"
#include "Log.h"

//144152 Moira Thaurissan
struct npc_Thaurissan_Iron_Dwarf : public ScriptedAI
{
    npc_Thaurissan_Iron_Dwarf(Creature* creature) : ScriptedAI(creature) { }

    void QuestAccept(Player* player, Quest const* /*quest*/) override
    {
        player->PlayConversation(9652);
    }
};

//150941
struct npc_Katherine_Proudmoore_kultiran_race : public ScriptedAI
{
    npc_Katherine_Proudmoore_kultiran_race(Creature* creature) : ScriptedAI(creature) { }

    void QuestAccept(Player* player, Quest const* /*quest*/) override
    {
        player->PlayConversation(11001);
    }
};

void AddSC_allied_races_alliance()
{
    RegisterCreatureAI(npc_Thaurissan_Iron_Dwarf);
    RegisterCreatureAI(npc_Katherine_Proudmoore_kultiran_race);
}

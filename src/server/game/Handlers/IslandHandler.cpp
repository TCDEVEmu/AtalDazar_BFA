/*
lyosky
*/
#include "WorldSession.h"
#include "IslandPackets.h"
#include "Opcodes.h"
#include "LFGMgr.h"

void WorldSession::HandleIslandQueue(WorldPackets::Island::IslandOnQueue& islandQueue)
{
    lfg::LfgDungeonSet newDungeons;
    newDungeons.insert(islandQueue.ActivityID);
    sLFGMgr->JoinLfg(GetPlayer(), ROLE_DAMAGE, newDungeons);

    //alliance
    GetPlayer()->KilledMonsterCredit(139310);
    //horde
    GetPlayer()->KilledMonsterCredit(139309);
}

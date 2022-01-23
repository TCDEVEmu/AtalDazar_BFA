
#include "Vehicle.h"
#include "GameObjectAI.h"

#ifndef IRON_DOCKS_HPP
# define IRON_DOCKS_HPP

enum eIronDocksCreatures
{
    /// Bosses and Etc
    CreatureFleshrenderNokgar            = 81305,  ///< http://www.wowhead.com/npc=81305/fleshrender-nokgar
    CreatureDreadfang                    = 81297,  ///< http://www.wowhead.com/npc=81297/dreadfang
    CreatureOshir                         = 79852,  ///< http://www.wowhead.com/npc=79852/oshir
    CreatureSkulloc                      = 83612,  ///< http://www.wowhead.com/npc=83612/skulloc
    CreatureTurret                       = 84215,
    CreatureZoggosh                      = 83616,  ///< http://www.wowhead.com/npc=83616/zoggosh
    CreatureKoramar                      = 83613,  ///< http://www.wowhead.com/npc=83613/koramar
    CreatureMakogg                       = 86231,  ///< http://www.wowhead.com/npc=80805/makogg-emberblade
    CreatureNox                          = 80808,  ///< http://www.wowhead.com/npc=80808/neesa-nox
    CreatureDuguru                       = 80816,
    /// Boss Adds
    CreatureGromkarFlameslinger          = 81279,  ///< http://www.wowhead.com/npc=81279/gromkar-flameslinger
    /// Mini bosses
    CreatureChampionDruna                = 81603,  ///< http://www.wowhead.com/npc=81603/champion-druna
    CreatureSiegemasterOlugar            = 83026,  ///< http://www.wowhead.com/npc=83026/siegemaster-olugar
    CreaturePitwardenGwarnok             = 84520,  ///< http://www.wowhead.com/npc=84520/pitwarden-gwarnok
    /// Trash
    CreatureGromkarFootSoldier           = 85997,  ///< http://www.wowhead.com/npc=85997/gromkar-footsoldier
    CreatureGromkarDeckhand              = 83762,  ///< http://www.wowhead.com/npc=83762/gromkar-deckhand
    /// Triggers
    CreatureArcheryTarget                = 79423,
    CreatureCannonBarrageTarget          = 99657,
    CreatureCannonBarrageTarget2         = 100981,
    CreatureCannonBarrageTarget3         = 100982,
    CreatureCannonBarrageInBossFight     = 354315,
    /// Custom
    CreatureGromkarFootSoldier2          = 859977, ///< http://www.wowhead.com/npc=85997/gromkar-footsoldier
    /// MISV
    CreatureIronStar                     = 81247,
    CreatureTrain                        = 83673
};

enum eIronDocksAchievements
{
    AchievementMilitaristicExpansionist    = 9083,
    AchievementHeroicIronDocks             = 9047,
    AchievementNormalIronDocks             = 9038
};

enum eIronDocksSpell
{
    SpellCannonBarrageAura = 168537
};

enum eIronDocksGameObject
{
    GameObjectChallengeModeDoor = 211989,
    GameObjectIronHordeCageDoor01 = 239229,
    GameObjectIronHordeCageDoor02 = 239218,
    GameObjectIronHordeCageDoor03 = 239221,
    GameObjectIronHordeCageDoor04 = 239219,
    GameObjectIronHordeCageDoor05 = 239230,
    GameObjectIronHordeCageDoor06 = 239216,
    GameObjectIronHordeCageDoor07 = 239227,
    GameObjectEncounterGateOshir  = 233817
};

#endif ///< IRON_DOCKS_HPP

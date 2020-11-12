/*
*Copyright (C) 2017-2019 LunarfallServer <https://lunarfallserver.com/>
*Reino Azshara BFA 2019
*Admin: Memesan <memesan@lunarfallserver.com>
* Copyright (C) 2008-2018 TrinityCore <https://www.trinitycore.org/>
* Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
************************************************************************************************************************************
Archivo para scripts custom que llevan un proceso de registro simple
************************************************************************************************************************************
Tipos de scripts que no necesitan ser metidos en base de datos:

CommandScript  --->proceso de registro diferente
PlayerScript
WorldScript    --Proceso de registro diferente
************************************************************************************************************************************
Todos los tipos de scripts y como se inicia:
*********************************************
*DECLARACION        *           TIPO        *
*********************************************
class nombre_script : public AccountMgr
class nombre_script : public Area
class nombre_script : public AreaTrigger
class nombre_script : public AreaTriggerAI
class nombre_script : public AuctionHouseObject
class nombre_script : public Aura
class nombre_script : public AuraScript
class nombre_script : public Battleground
class nombre_script : public BattlegroundMap
class nombre_script : public Channel
class nombre_script : public ChatCommand
class nombre_script : public Conversation
class nombre_script : public Creature
class nombre_script : public CreatureAI
class nombre_script : public DynamicObject
class nombre_script : public GameObject
class nombre_script : public GameObjectAI
class nombre_script : public Garrison
class nombre_script : public GarrisonAI
class nombre_script : public Guild
class nombre_script : public GridMap
class nombre_script : public Group
class nombre_script : public InstanceMap
class nombre_script : public InstanceScript
class nombre_script : public Item
class nombre_script : public Map
class nombre_script : public ModuleReference
class nombre_script : public OutdoorPvP
class nombre_script : public Player
class nombre_script : public Quest
class nombre_script : public ScriptMgr
class nombre_script : public Spell
class nombre_script : public SpellInfo
class nombre_script : public SpellScript
class nombre_script : public SpellCastTargets
class nombre_script : public Transport
class nombre_script : public Unit
class nombre_script : public Vehicle
class nombre_script : public Weather
class nombre_script : public WorldPacket
class nombre_script : public WorldSocket
class nombre_script : public WorldObject
class nombre_script : public WorldSession
class nombre_script : public RestResponse
class nombre_script : public ZoneScript
****************************************************************************************************************************************
Tipos de registros validos:

RegisterAreaTriggerAI(nombrescript);
RegisterAuraScript(nombrescript);                  ----para scripts de auras
RegisterConversationScript(nombrescript);          ----scripts de conversaciones
RegisterCreatureAI(nombrescript);                  ----Inteligencia artificial de npc, depende de una creaturescript que se declara diferente
RegisterCreatureAIWithFactory(nombrescript);
RegisterGameObjectAI(nombrescript);                ----Inteligencia artificial de gameobject, depende de una gameobjectscript que se declara diferente
RegisterGarrisonAI(nombrescript);             
RegisterInstanceScript(nombrescript);              ----Script de instancia
RegisterPlayerScript(nombrescript);                ----Script de jugador 
RegisterQuestScript(nombrescript);                 ----Script de quest
RegisterSceneScript(nombrescript);                 ----Script de escena
RegisterSpellAndAuraScriptPair(nombrescript);
RegisterSpellScript(nombrescript);                 ---- Script de spell

Para otro tipo de script el proceso de registro es diferente
****************************************************************************************************************************************
*/

//Librerias que incluye estos scripts para que funcione bien Memesan
#include "Conversation.h"
#include "Creature.h"
#include "DatabaseEnv.h"
#include "DBCEnums.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "World.h"
#include "WorldSession.h"
#include "PhasingHandler.h"
#include "ScriptedCreature.h"
#include "ScriptedEscortAI.h"
#include "QuestPackets.h"
#include "ScenePackets.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "ObjectAccessor.h"
#include "SpellAuras.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "SpellHistory.h"
#include "MotionMaster.h"
#include "WorldSession.h"
#include "PhasingHandler.h"
#include "Channel.h"
#include "Common.h"
#include "Configuration/Config.h"
#include "Group.h"
#include "Guild.h"
#include "Log.h"

/*
****************************************************************************************************************************************
SCRIPTS A PARTIR DE ACA
****************************************************************************************************************************************
*/






//Registro de Scripts (Necesario para que funcionen)
void AddSC_scripts_logan()
{
     //Ejemplo: RegisterPlayerScript(quest_29524);
    
}

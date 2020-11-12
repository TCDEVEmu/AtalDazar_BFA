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

//Arreglo Quest 29524 Zona inicio Pandaren Memesan
class quest_29524 : public PlayerScript
{
public:
    quest_29524() : PlayerScript("quest_29524") {}
    
    void OnUpdate(Player* player, uint32 diff) override
    {
        if ((player->GetQuestStatus(29524) == QUEST_STATUS_COMPLETE) && (player->GetQuestStatus(29406) == QUEST_STATUS_REWARDED))
        {
            player->AddAura(100711, player);            
        }

    }
};

//Arreglo Quest 40222 Zona inicio DH Memesan
class quest_40222 : public PlayerScript
{
public:
    quest_40222() : PlayerScript("quest_40222") {}

    void OnUpdate(Player* player, uint32 diff) override
    {
        if ((player->GetQuestStatus(40222) == QUEST_STATUS_REWARDED && !player->GetQuestStatus(40051) ==QUEST_STATUS_COMPLETE) ||
            (player->GetQuestStatus(40222) == QUEST_STATUS_REWARDED && !player->GetQuestStatus(40051) == QUEST_STATUS_REWARDED))
        {
            if (Quest const* quest = sObjectMgr->GetQuestTemplate(40051))
                player->AddQuest(quest, NULL);
        }

    }
};

//Anuncia cuando un jugador se conecta Memesan
class announce_login : public PlayerScript
{
public:
    announce_login() : PlayerScript("announce_login") { }

    void OnLogin(Player* player, bool /*loginFirst*/)
    {        
        {
            if (player->GetTeam() == ALLIANCE)
            {
                std::ostringstream ss;
                ss << "|cff3DAEFF[ Anuncio de conexion ]|cffFFD800 : Jugador|cff4CFF00 " << player->GetName() << " |cffFFD800se ha conectado. Este jugador es|cff0026FF Alianza";
                sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
            }
            else
            {
                std::ostringstream ss;
                ss << "|cff3DAEFF[ Anuncio de conexion ]|cffFFD800 : Jugador|cff4CFF00 " << player->GetName() << " |cffFFD800se ha conectado. Este jugador es|cffFF0000 Horda";
                sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
            }
        }
            
        
    }
};

//Anuncia la muerte de un boss y quien lo mato Memesan
class Boss_Announcer : public PlayerScript
{
public:
    Boss_Announcer() : PlayerScript("Boss_Announcer") {}

    void OnCreatureKill(Player* player, Creature* boss)
    {
        if (sConfigMgr->GetBoolDefault("Boss.Announcer.Enable", true))
        {
            if (boss->isWorldBoss())
            {
                std::string plr = player->GetName();
                std::string boss_n = boss->GetName();               
                std::string tag_colour = "7bbef7";
                std::string plr_colour = "7bbef7";
                std::string boss_colour = "ff0000";
                std::ostringstream stream;
                stream << "|CFF" << tag_colour <<

                    "|rEl grupo de|r""|r|cff" << plr_colour << " " << plr << "|r mató a"" |CFF" << boss_colour << "[" << boss_n << "]|r " "jefe de mundo" << "! Enhorabuena";
                sWorld->SendServerMessage(SERVER_MSG_STRING, stream.str().c_str());
            }
        }
    };
};

//Arreglo quest 39686 Zona inicio DH Memesan
class quest_39686 : public PlayerScript
{
public:
    quest_39686() : PlayerScript("quest_39686") {}

    void OnUpdate(Player* player, uint32 diff) override
    {
        if (player->GetQuestStatus(39686)==3 && player->GetAreaId()==7865)
        {            
            player->ForceCompleteQuest(39686);
        }

    }
};

//Arreglo resurreccion del DH en camara de las celadoras Memesan
class resu_dh : public PlayerScript
{
public:
    resu_dh() : PlayerScript("resu_dh") {}


    void OnUpdate(Player* player, uint32 diff) override
    {
        if (player->getClass() == CLASS_DEMON_HUNTER && player->GetZoneId() == 7814)
        {
            if (player->HasAuraType(SPELL_AURA_SPIRIT_OF_REDEMPTION))
                player->RemoveAurasByType(SPELL_AURA_MOD_SHAPESHIFT);


            if (!player->IsAlive())
            {
                player->ResurrectPlayer(1.0f);
                player->SpawnCorpseBones();
                player->Yell("He muerto por manco pero he sido rescatado", LANG_UNIVERSAL);
            }
        }

    }
};

//Arreglo Quest 29420 Zona inicio Pandaren Poker
class quest_29420 : public PlayerScript
{
public:
    quest_29420() : PlayerScript("quest_29420") {}

    void OnUpdate(Player* player, uint32 diff) override
    {
        if ((player->GetQuestStatus(29523) == QUEST_STATUS_REWARDED) && (player->GetQuestStatus(29418) == QUEST_STATUS_REWARDED))
        {
            player->AddAura(102398, player);
        }

    }
};

//Arreglo Quest 29678 Zona inicio Pandaren Poker
class quest_29678 : public PlayerScript
{
public:
    quest_29678() : PlayerScript("quest_29678") {}

    void OnUpdate(Player* player, uint32 diff) override
    {
        if (player->GetQuestStatus(29678) == QUEST_STATUS_REWARDED && player->GetAreaId() == 5862)
        {
            player->AddAura(102871, player);
            player->AddAura(102875, player);
            player->AddAura(128574, player);

        }

    }
};

//Arreglo Quest 29768 Zona inicio Pandaren Poker
class quest_29768 : public PlayerScript
{
public:
    quest_29768() : PlayerScript("quest_29768") {}

    void OnUpdate(Player* player, uint32 diff) override
    {
        if ((player->GetQuestStatus(29768) == QUEST_STATUS_INCOMPLETE && player->GetAreaId() == 5881) ||
            (player->GetQuestStatus(29768) == QUEST_STATUS_COMPLETE && player->GetAreaId() == 5881) ||
            (player->GetQuestStatus(29768) == QUEST_STATUS_REWARDED && player->GetAreaId() == 5881))
        {
            player->AddAura(108822, player);
        }

    }
};

//Arreglo Quest 29792 Zona inicio Pandaren Poker
class quest_29792 : public PlayerScript
{
public:
    quest_29792() : PlayerScript("quest_29792") {}

    void OnUpdate(Player* player, uint32 diff) override
    {
        if ((player->GetQuestStatus(29792) == QUEST_STATUS_INCOMPLETE && player->GetAreaId() == 5828) ||
            (player->GetQuestStatus(29792) == QUEST_STATUS_COMPLETE && player->GetAreaId() == 5828))
        {
            PhasingHandler::AddPhase(player, 878);
        }

    }
};

//Registro de Scripts (Necesario para que funcionen)
void AddSC_playerquest_fixes_lf()
{
    RegisterPlayerScript(quest_29524);
    RegisterPlayerScript(quest_40222);
    RegisterPlayerScript(announce_login);
    RegisterPlayerScript(Boss_Announcer);
    RegisterPlayerScript(quest_39686);
    RegisterPlayerScript(resu_dh);
    RegisterPlayerScript(quest_29420);
    RegisterPlayerScript(quest_29678);
    RegisterPlayerScript(quest_29768);
    RegisterPlayerScript(quest_29792);
}

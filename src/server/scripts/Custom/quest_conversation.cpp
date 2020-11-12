#include "ScriptMgr.h"
#include "Player.h"
#include "Config.h"
#include "World.h"
#include "Conversation.h"
#include "DatabaseEnv.h"
#include "Log.h"

// Structure Quest Conversation
struct QuestConversation
{
    QuestConversation(uint32 questId, uint32 questAcceptConversation, uint32 questCompleteConversation) :
        QuestId(questId), QuestAcceptConversation(questAcceptConversation), QuestCompleteConversation(questCompleteConversation) { }
    uint32      QuestId;
    uint32      QuestAcceptConversation;
    uint32      QuestCompleteConversation;
};
typedef std::unordered_map<uint32, QuestConversation*> QuestConversationMap;
QuestConversationMap _QuestConversations;
///struct QuestConversation;

// Structure Quest NPC Say
struct QuestNpcSay
{
    QuestNpcSay(uint32 questId, uint32 npcId, uint32 acceptSay, uint32 completeSay, uint32 rewardSay) :
        QuestId(questId), NpcId(npcId), AcceptSay(acceptSay), CompleteSay(completeSay), RewardSay(rewardSay) { }
    uint32      QuestId;
    uint32      NpcId;
    uint32      AcceptSay;
    uint32      CompleteSay;
    uint32      RewardSay;
};
typedef std::unordered_map<uint32, QuestNpcSay*> QuestNpcSayMap;
QuestNpcSayMap _QuestNpcSays;
enum NpcQuestType
{
    QUEST_ACCEPT,
    QUEST_COMPLETE,
    QUEST_REWARD
};
///struct QuestNpcSay;

class quest_conversation : public PlayerScript
{
public:
    quest_conversation() : PlayerScript("quest_conversation") { }

    // Called when player accepts some quest
    void OnQuestAccept(Player* player, Quest const* quest)
    {
        CheckConversationByQuestId(player, quest->GetQuestId(), true);
        CheckNpcSayByQuestId(player, quest->GetQuestId(), QUEST_ACCEPT);
    }

    // Called when player completes some quest
    void OnQuestComplete(Player* player, Quest const* quest)
    {
        CheckConversationByQuestId(player, quest->GetQuestId(), false);
        CheckNpcSayByQuestId(player, quest->GetQuestId(), QUEST_COMPLETE);
    }

    void OnQuestReward(Player* player, Quest const* quest)
    {
        CheckNpcSayByQuestId(player, quest->GetQuestId(), QUEST_REWARD);
    }

    QuestConversation* GetQuestConversation(uint32 questId)
    {
        if (_QuestConversations.find(questId) == _QuestConversations.end())
            return nullptr;

        return _QuestConversations.find(questId)->second;
    }

    void CheckConversationByQuestId(Player* player, uint32 quest, bool isaccept)
    {
        QuestConversation* qc = GetQuestConversation(quest);
        if (qc)
        {
            uint32 conversationEntry = 0;
            if(isaccept)
                conversationEntry = qc->QuestAcceptConversation;
            else
                conversationEntry = qc->QuestCompleteConversation;
             
            if (conversationEntry >0)
                Conversation::CreateConversation(conversationEntry, player, *player, { player->GetGUID() });
        }       
    }

    QuestNpcSay* GetQuestNpcSay(uint32 questId)
    {
        if (_QuestNpcSays.find(questId) == _QuestNpcSays.end())
            return nullptr;

        return _QuestNpcSays.find(questId)->second;
    }

    void CheckNpcSayByQuestId(Player* player, uint32 quest, uint32 questType)
    {
        if (QuestNpcSay* qs = GetQuestNpcSay(quest))
        {
            uint32 _sayBid = 0;
            switch (questType)
            {
            case QUEST_ACCEPT:
                _sayBid = qs->AcceptSay;
                break;
            case QUEST_COMPLETE:
                _sayBid = qs->CompleteSay;
                break;
            case QUEST_REWARD:
                _sayBid = qs->RewardSay;
                break;
            default:
                break;
            }
            if (_sayBid > 0)
            {
                if (Creature* npc = player->FindNearestCreature(qs->NpcId, 100.0f, true))
                    npc->Say(_sayBid, player);
            }
        }
    }
};

void LoadQuestConversation(void)
{
    // For reload case
    for (QuestConversationMap::const_iterator itr = _QuestConversations.begin(); itr != _QuestConversations.end(); ++itr)
        delete itr->second;

    const char *Table[] =
    {
        "quest_conversation",
    };

    QueryResult result = WorldDatabase.PQuery(
        "SELECT `questId`, `questAcceptConversation`, `questCompleteConversation` "
        //          0                   1                       2        
        "FROM `%s` ", Table[0]);

    uint32 nbQC = 0;
    _QuestConversations.clear();

    if (result)
    {
        TC_LOG_INFO("server.loading", "Loading %s ...", Table[0]);
        do
        {
            Field *fields = result->Fetch();

            uint32 questId = fields[0].GetUInt32();
            uint32 questAcceptConversation = 0;
            uint32 questCompleteConversation = 0;

            QuestConversation* questConversation =new QuestConversation(questId, fields[1].GetUInt32(), fields[2].GetUInt32());
            _QuestConversations[questId] = questConversation;

            ++nbQC;
        } while (result->NextRow());
        TC_LOG_INFO("server.loading", "Loaded %u quest_conversation.", nbQC);
    }
    else TC_LOG_ERROR("misc", "WARNING >> Loaded 0 quest_conversation.");
}

void LoadQuestNpcSay(void)
{
    // For reload case
    for (QuestNpcSayMap::const_iterator itr = _QuestNpcSays.begin(); itr != _QuestNpcSays.end(); ++itr)
        delete itr->second;

    const char *Table[] =
    {
        "quest_npc_say",
    };

    QueryResult result = WorldDatabase.PQuery(
        "SELECT `questId`, `npcId`,  `acceptSay`,  `completeSay`, `rewardSay` "
        //          0         1           2             3               4       
        "FROM `%s` ", Table[0]);

    uint32 nbQC = 0;
    _QuestNpcSays.clear();

    if (result)
    {
        TC_LOG_INFO("server.loading", "Loading %s ...", Table[0]);
        do
        {
            Field *fields = result->Fetch();

            uint32 questId = fields[0].GetUInt32();
            uint32 npcId = fields[1].GetUInt32();
            uint32 acceptSay = fields[2].GetUInt32();
            uint32 completeSay = fields[3].GetUInt32();
            uint32 rewardSay = fields[4].GetUInt32();

            QuestNpcSay* questNpcSay = new QuestNpcSay(questId, npcId, acceptSay, completeSay, rewardSay);
            _QuestNpcSays[questId] = questNpcSay;

            ++nbQC;
        } while (result->NextRow());
        TC_LOG_INFO("server.loading", "Loaded %u quest npc say.", nbQC);
    }
    else TC_LOG_ERROR("misc", "WARNING >> Loaded 0 quest npc say.");
}

void AddSC_quest_conversation()
{
    new quest_conversation();
    LoadQuestConversation();
    LoadQuestNpcSay();
}

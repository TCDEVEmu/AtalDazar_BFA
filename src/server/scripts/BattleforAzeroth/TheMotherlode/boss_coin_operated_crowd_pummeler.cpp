#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "ScriptMgr.h"
#include "SpellScript.h"
#include "SpellAuras.h"
#include "SpellAuraEffects.h"
#include "the_motherlode.h"
#include "ScriptedCreature.h"
#include "SpellHistory.h"

enum Spells
{
    SPELL_INSUFFICIENT_FUNDS = 267547,
    SPELL_PILES_OF_GOLD_VISUAL = 271801,
    SPELL_STATIC_PULSE = 262347,
    // SPELL_FOOTBOMB_LAUNCHER = 269493,
    SPELL_FOOTBOMB_LAUNCHER = 256213,
    SPELL_PAY_TO_WIN = 271867,
    SPELL_SHOCKING_CLAWS = 257337,
    SPELL_COIN_MAGNET = 271903,
    SPELL_BLAZING_AZERITE = 256163,
    SPELL_BLAZING_AZERITE_BOSS = 256493,
    SPELL_BLAZING_AZERITE_PLAYERS = 270882,
    SPELL_CAST_FOOTBOMB_LAUNCHER = 269493,
    SPELL_BOMB_TIMER = 256054,
    SPELL_BLUE_ARROW = 256624,
    SPELL_GOLD_DIED = 271372,
};

enum Events
{
    EVENT_THROW_COINS = 1,
    EVENT_FOOTBOMB_LAUNCHER,
    EVENT_SHOCKING_CLAW,
    EVENT_DETONATE,
    EVENT_STATIC_PULSE,
    EVENT_COIN_MAGNET,
};

enum Timers
{
    //TIMER_STATIC_PULSE = 23.1 * IN_MILLISECONDS,
    //TIMER_FOOTBOMB_LAUNCHER = 36.5 * IN_MILLISECONDS,
   // TIMER_SHOCKING_CLAW = 13 * IN_MILLISECONDS,
    TIMER_COIN_MAGNET = 10 * IN_MILLISECONDS,
    TIMER_THROW_COINS = 35 * IN_MILLISECONDS,
    TIMER_DETONATE = 15 * IN_MILLISECONDS,
};

enum Creatures
{
    BOSS_CO_CROWD_PLUMMELER = 129214,
    NPC_AZERITE_FOOTBOMB = 129246,
    NPC_PILE_OF_GOLD = 138083,
};

enum DisplayId
{
    DISPLAY_BOMB = 49134,
};

enum Actions
{
    ACTION_JUMP = 1,
    ACTION_INIT_SPELL,
};

const Position centerPos = { 1000.73f, -3556.13f, 13.01f }; //55y

enum SoundId
{
    SOUND_AGGRO = 97384,
    SOUND_STATIC = 97381,
    SOUND_SHOCKING_CLAW = 97380,
    SOUND_DEATH = 97385,
    SOUND_COIN_MAGNET = 97379,
};

#define AGGRO_TEXT "Sistemas comprometidos. Empiece a golpear. "
#define STATIC_PULSE "Aumento de voltaje."
#define SHOCKING_CLAW "Fuerza letal autorizada. "
#define DEATH_TEXT "Sistemas ... fallando. Lanzamiento de monedas ... avería ... "
#define COIN_MAGNET "Dañar esta unidad viola los términos de uso. "

//129214
struct boss_Coin_operated_crowd_pummeler : public BossAI
{
    boss_Coin_operated_crowd_pummeler(Creature* creature) : BossAI(creature, DATA_COIN_OPERATED_CROWD_PUMMELER), summons(me)
    {
        instance = me->GetInstanceScript();
    }

    void InitializeAI() override
    {
        BossAI::InitializeAI();
    }

        EventMap events;
        InstanceScript* instance;
        SummonList summons;

        void JustSummoned(Creature* summon) override
        {
            summons.Summon(summon);

            switch (summon->GetEntry())
            {
            case NPC_PILE_OF_GOLD:
                summon->SetFaction(35);
                summon->AddAura(SPELL_PILES_OF_GOLD_VISUAL, summon);
                break;
            case NPC_AZERITE_FOOTBOMB:
                summon->SetFaction(35);                
                summon->AI()->DoAction(ACTION_INIT_SPELL);
                summon->AddNpcFlag(UNIT_NPC_FLAG_SPELLCLICK);
                break;
            }
        }

        void SelectSoundAndText(Creature* me, uint32  selectedTextSound = 0)
        {
            if (!me)
                return;

            if (me)
            {
                switch (selectedTextSound)
                {
                case 1:
                    me->PlayDirectSound(SOUND_AGGRO);
                    me->Yell(AGGRO_TEXT, LANG_UNIVERSAL, NULL);
                    break;
                case 2:
                    me->PlayDirectSound(SOUND_DEATH);
                    me->Yell(DEATH_TEXT, LANG_UNIVERSAL, NULL);
                    break;
                case 3:
                    me->PlayDirectSound(SOUND_STATIC);
                    me->Yell(STATIC_PULSE, LANG_UNIVERSAL, NULL);
                    break;
                case 4:
                    me->PlayDirectSound(SOUND_COIN_MAGNET);
                    me->Yell(COIN_MAGNET, LANG_UNIVERSAL, NULL);
                    break;
                case 5:
                    me->PlayDirectSound(SOUND_SHOCKING_CLAW);
                    me->Yell(SHOCKING_CLAW, LANG_UNIVERSAL, NULL);
                    break;
                }
            }
        }

        void Reset() override
        {
            me->GetMotionMaster()->MoveTargetedHome();                           
            BossAI::Reset();
            summons.DespawnAll();
            events.Reset();
            instance->SetBossState(DATA_COIN_OPERATED_CROWD_PUMMELER, FAIL);
        }

        void EnterEvadeMode(EvadeReason w) override
        {
            me->GetMotionMaster()->MoveTargetedHome();
            Reset();
            summons.DespawnAll();
            me->CombatStop(false);

           
        }

        void JustDied(Unit*) override
        {
            SelectSoundAndText(me, 2);
            summons.DespawnAll();
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void EnterCombat(Unit* who) override
        {
            SelectSoundAndText(me, 1);
            me->RemoveAura(SPELL_INSUFFICIENT_FUNDS);
            instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);

            AddTimedDelayedOperation(14.3 * TimeConstants::IN_MILLISECONDS, [this]() -> void
                {
                    me->AddUnitState(UNIT_STATE_CASTING);
                    if (Unit * target = me->GetVictim())
                    {
                        SelectSoundAndText(me, 5);
                        me->CastSpell(me->GetVictim(), SPELL_SHOCKING_CLAWS);
                        events.ScheduleEvent(EVENT_SHOCKING_CLAW, urand(14300, 41300));
                    }
                });
            AddTimedDelayedOperation(5.7 * TimeConstants::IN_MILLISECONDS, [this]() -> void
                {
                    me->AddUnitState(UNIT_STATE_CASTING);
                    SelectSoundAndText(me, 3);
                    me->CastSpell(me->GetVictim(), SPELL_STATIC_PULSE);
                    events.ScheduleEvent(EVENT_STATIC_PULSE, 10 * IN_MILLISECONDS);
                });
            AddTimedDelayedOperation(9.4 * TimeConstants::IN_MILLISECONDS, [this]() -> void
                {
                    std::ostringstream str;
                    str << "Coin-Operated Crowd Pummeler casts |cFFF00000|h[Footbomb Launcher]|h|r !";
                    me->TextEmote(str.str().c_str(), 0, true);
                    me->AddUnitState(UNIT_STATE_CASTING);
                    me->CastSpell(me->GetVictim(), SPELL_CAST_FOOTBOMB_LAUNCHER);
                    events.ScheduleEvent(EVENT_FOOTBOMB_LAUNCHER, 17 * IN_MILLISECONDS);
                }); 
          //  events.ScheduleEvent(EVENT_SHOCKING_CLAW, 14.3 * IN_MILLISECONDS);
            

            if (me->GetMap()->IsMythic() || me->GetMap()->IsHeroic())
            {
                events.ScheduleEvent(EVENT_THROW_COINS, TIMER_THROW_COINS);

            }

            BossAI::EnterCombat(who);
        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);

            if (!UpdateVictim())
                return;
           
            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_STATIC_PULSE:
                    me->AddUnitState(UNIT_STATE_CASTING);
                    SelectSoundAndText(me, 3);
                    me->CastSpell(me->GetVictim(), SPELL_STATIC_PULSE);
                    events.ScheduleEvent(EVENT_STATIC_PULSE, 23.1 * IN_MILLISECONDS);
                    break;
                case EVENT_SHOCKING_CLAW:
                    me->AddUnitState(UNIT_STATE_CASTING);
                    if (Unit * target = me->GetVictim())
                    {
                        SelectSoundAndText(me, 5);
                        me->CastSpell(me->GetVictim(), SPELL_SHOCKING_CLAWS);                   
                    }
                   // events.ScheduleEvent(EVENT_SHOCKING_CLAW, 14.3 * IN_MILLISECONDS);
                    events.ScheduleEvent(EVENT_SHOCKING_CLAW, urand(14300, 41300));
                    break;
                case EVENT_THROW_COINS:
                {
                    for (uint8 i = 0; i < 3; ++i)
                    {
                        Position randomPos = me->GetRandomPoint(me->GetPosition(), 10.0f);
                        me->SummonCreature(NPC_PILE_OF_GOLD, randomPos, TEMPSUMMON_MANUAL_DESPAWN);
                    }
                    events.ScheduleEvent(EVENT_COIN_MAGNET, TIMER_COIN_MAGNET);
                    break;
                }
                case EVENT_FOOTBOMB_LAUNCHER:
                {

                    std::ostringstream str;
                    str << "Coin-Operated Crowd Pummeler casts |cFFF00000|h[Footbomb Launcher]|h|r !";
                    me->TextEmote(str.str().c_str(), 0, true);                                                                                                                   
                    me->AddUnitState(UNIT_STATE_CASTING);                    
                    me->CastSpell(me->GetVictim(), SPELL_CAST_FOOTBOMB_LAUNCHER);
                    events.ScheduleEvent(EVENT_FOOTBOMB_LAUNCHER, 36.5 * IN_MILLISECONDS);
                    

                break;
                }
                case EVENT_COIN_MAGNET:
                    SelectSoundAndText(me, 4);
                    me->CastSpell(me, SPELL_COIN_MAGNET);
                    events.ScheduleEvent(EVENT_THROW_COINS, TIMER_THROW_COINS);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }

        void OnSpellFinished(SpellInfo const* spellInfo) //override
        {
            switch (spellInfo->Id)
            {           
            case SPELL_FOOTBOMB_LAUNCHER:
            {
                me->ClearUnitState(UNIT_STATE_CASTING);
                break;
            }
            case EVENT_SHOCKING_CLAW:
            {
                me->ClearUnitState(UNIT_STATE_CASTING);
                break;
            }
            case EVENT_STATIC_PULSE:
            {
                me->ClearUnitState(UNIT_STATE_ROOT);
                break;
            }
            }
        }
    };


    struct bfa_npc_azerite_bomb_AI : public ScriptedAI
    {
        bfa_npc_azerite_bomb_AI(Creature* creature) : ScriptedAI(creature)
        {
            me->CastSpell(me, SPELL_BOMB_TIMER, true);
        }

        EventMap events;
        bool exploded;
        bool canAttack;

        void Reset() override
        {
            exploded = false;
            events.Reset();
        }

        void OnSpellClick(Unit* player, bool& /*result*/) override
        {
            //me->CastSpell(me, SPELL_BLUE_ARROW, true);
            Position pos;
            float orientation = player->GetOrientation();
            me->GetNearPoint(NULL, pos.m_positionX, pos.m_positionY, pos.m_positionZ, 1, 10, orientation);
            me->GetMotionMaster()->MoveJump(pos.m_positionX, pos.m_positionY, pos.m_positionZ, orientation, 20.0f, 15.0f);
            me->AI()->DoAction(ACTION_JUMP);
            
        }

      
        void IsSummonedBy(Unit* /*who*/) override
        {
            me->CastSpell(me, SPELL_BOMB_TIMER, true);
            me->DespawnOrUnsummon(16 * IN_MILLISECONDS);            
            events.ScheduleEvent(EVENT_DETONATE, TIMER_DETONATE);
        };

        void CheckIfBossNearby()
        {
            std::list<Creature*> bossList;
            me->GetCreatureListWithEntryInGrid(bossList, BOSS_CO_CROWD_PLUMMELER, 3.0f);
            if (!bossList.empty())
            {
                for (auto boss : bossList)
                {
                    if (!exploded && canAttack)
                    {
                        exploded = true;
                        me->CastSpell(me, SPELL_BLAZING_AZERITE, true);
                        boss->AddAura(SPELL_BLAZING_AZERITE_BOSS, boss);
                        boss->RemoveAura(270882);
                        me->DespawnOrUnsummon();
                    }
                }
            }
        }

        void DoAction(int32 action)
        {
            switch (action)
            {
            case ACTION_JUMP:
            {
                canAttack = true;

                me->GetScheduler().Schedule(2s, [this](TaskContext context)
                    {
                        canAttack = false;
                    });
                break;
            }
            case ACTION_INIT_SPELL:
                events.ScheduleEvent(EVENT_DETONATE, TIMER_DETONATE);
                break;
            }
        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);

            CheckIfBossNearby();

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_DETONATE:

                    me->CastSpell(me, SPELL_BLAZING_AZERITE, true);
                    std::list<Creature*> bossList;
                    me->GetCreatureListWithEntryInGrid(bossList, BOSS_CO_CROWD_PLUMMELER);
                    if (!bossList.empty())
                    {
                        for (auto boss : bossList)
                        {
                            boss->RemoveAura(270882);
                        }
                    }                         
                    break;
                }
            }
        }
    };

    


// 256163
class bfa_spell_blazing_azerite : public SpellScriptLoader
{
public:
    bfa_spell_blazing_azerite() : SpellScriptLoader("bfa_spell_blazing_azerite") { }

    class bfa_spell_blazing_azerite_SpellScript : public SpellScript
    {
        PrepareSpellScript(bfa_spell_blazing_azerite_SpellScript);

        void HandleOnHit()
        {
            Unit* target = GetHitUnit();
            Unit* caster = GetCaster();
            if (!caster || !target)
                return;

            caster->CastSpell(target, SPELL_BLAZING_AZERITE_PLAYERS, true);

        }

        void Register()
        {
            OnHit += SpellHitFn(bfa_spell_blazing_azerite_SpellScript::HandleOnHit);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new bfa_spell_blazing_azerite_SpellScript();
    }
};


// 269493
class bfa_spell_footbomb_launcher : public SpellScriptLoader
{
public:
    bfa_spell_footbomb_launcher() : SpellScriptLoader("bfa_spell_footbomb_launcher") { }

    class bfa_spell_footbomb_launcher_SpellScript : public SpellScript
    {
        PrepareSpellScript(bfa_spell_footbomb_launcher_SpellScript);

        void HandleAfterCast()
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;
            for (uint8 i = 0; i < 3; ++i)
            {
             Position randomPos = caster->GetRandomPoint(centerPos, 15.0f);                  
             caster->CastSpell(randomPos, SPELL_FOOTBOMB_LAUNCHER, true);
             }   
        }



        void Register() override
        {
            AfterCast += SpellCastFn(bfa_spell_footbomb_launcher_SpellScript::HandleAfterCast);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new bfa_spell_footbomb_launcher_SpellScript();
    }
};

// 271903
class bfa_spell_coin_magnet : public SpellScriptLoader
{
public:
    bfa_spell_coin_magnet() : SpellScriptLoader("bfa_spell_coin_magnet") { }

    class bfa_spell_coin_magnet_SpellScript : public SpellScript
    {
        PrepareSpellScript(bfa_spell_coin_magnet_SpellScript);

        void HandleAfterCast()
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;

            std::list<Creature*> coins;
            caster->GetCreatureListWithEntryInGrid(coins, NPC_PILE_OF_GOLD, 15.0f);
            if (!coins.empty())
            {
                for (auto validPile : coins)
                {
                    validPile->DespawnOrUnsummon();
                    caster->CastSpell(caster, SPELL_PAY_TO_WIN, true);
                }
            }
        }

        void Register()
        {
            AfterCast += SpellCastFn(bfa_spell_coin_magnet_SpellScript::HandleAfterCast);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new bfa_spell_coin_magnet_SpellScript();
    }
};

// 138083
struct npc_coint_test : public ScriptedAI
{
    npc_coint_test(Creature* creature) : ScriptedAI(creature)
    {
        me->AddAura(SPELL_PILES_OF_GOLD_VISUAL, me);
    }


};

void AddSC_boss_Coin_operated_crowd_pummeler()
{
    RegisterCreatureAI(boss_Coin_operated_crowd_pummeler);

    RegisterCreatureAI(bfa_npc_azerite_bomb_AI);
    RegisterCreatureAI(npc_coint_test);
    new bfa_spell_blazing_azerite();
    new bfa_spell_footbomb_launcher();
    new bfa_spell_coin_magnet();
}

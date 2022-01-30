#include "BattlegroundKotmoguTemplate.h"
#include "ScriptMgr.h"
#include "Battleground.h"
#include "CellImpl.h"
#include "DB2Stores.h"
#include "GridNotifiersImpl.h"
#include "Group.h"
#include "InstanceScript.h"
#include "Item.h"
#include "LFGMgr.h"
#include "Log.h"
#include "NPCPackets.h"
#include "Pet.h"
#include "ReputationMgr.h"
#include "SkillDiscovery.h"
#include "SpellAuraEffects.h"
#include "SpellHistory.h"
#include "SpellMgr.h"
#include "SpellScript.h"
#include "Vehicle.h"

// 121164, 121175, 121176, 121177 - Orb of Power
class spell_orb_of_power : public AuraScript
{
    PrepareAuraScript(spell_orb_of_power);

    void HandleRemove(AuraEffect const*, AuraEffectHandleModes)
    {
        if (Player * player = GetUnitOwner()->ToPlayer())
            if (Battleground * bg = player->GetBattleground())
                if (BattlegroundTK * tok = dynamic_cast<BattlegroundTK*>(bg))
                    tok->EventPlayerDroppedOrb(player);
    }

    void HandleTick(AuraEffect const*)
    {
        IncreaseAmount(GetEffect(EFFECT_0));
        IncreaseAmount(GetEffect(EFFECT_1));
        IncreaseAmount(GetEffect(EFFECT_2));
        if (AuraEffect * scale = GetEffect(EFFECT_4))
            scale->ChangeAmount(scale->GetAmount() + 5);
    }

    void IncreaseAmount(AuraEffect * eff)
    {
        if (eff)
        {
            int32 newAmount = eff->GetAmount() + eff->GetBaseAmount();
            eff->ChangeAmount(newAmount);
        }
    }

    void Register() override
    {
        OnEffectRemove += AuraEffectRemoveFn(spell_orb_of_power::HandleRemove, EFFECT_3, SPELL_AURA_PERIODIC_DUMMY, AURA_EFFECT_HANDLE_REAL);
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_orb_of_power::HandleTick, EFFECT_3, SPELL_AURA_PERIODIC_DUMMY);
    }
};

void AddSC_temple_of_kotmogu()
{
    RegisterAuraScript(spell_orb_of_power);
}

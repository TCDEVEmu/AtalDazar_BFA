/*
* Copyright (C) 2017-2019 AshamaneProject <https://github.com/AshamaneProject>
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

#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "Containers.h"
#include "ObjectAccessor.h"
#include "Pet.h"
#include "Player.h"
#include "ScriptedCreature.h"
#include "ScriptMgr.h"
#include "Spell.h"
#include "SpellScript.h"
#include "SpellMgr.h"
#include "SpellAuraEffects.h"
#include "SpellHistory.h"
#include "TemporarySummon.h"
#include "GridNotifiers.h"
#include "Log.h"
#include "Item.h"

enum SpellIds
{

};

// 280713 Champion of Azeroth
class spell_champion_of_azeroth : public SpellScriptLoader
{
public:
    spell_champion_of_azeroth() : SpellScriptLoader("spell_champion_of_azeroth") { }

    class spell_champion_of_azeroth_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_champion_of_azeroth_AuraScript);

        bool Validate(SpellInfo const* /*spell*/) override
        {
            return ValidateSpellInfo({ 280710 });
        }

        void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
        {
            if (Unit * caster = GetCaster())
            {
                if (AuraEffect * aurEf = caster->GetAuraEffect(280710, EFFECT_0)) // Champion of Azeroth 
                {
                    amount = aurEf->GetAmount();
                }
            }
        }

        void Register() override
        {
            DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_champion_of_azeroth_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_MOD_RATING);
            DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_champion_of_azeroth_AuraScript::CalculateAmount, EFFECT_1, SPELL_AURA_MOD_RATING);
            DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_champion_of_azeroth_AuraScript::CalculateAmount, EFFECT_2, SPELL_AURA_MOD_RATING);
            DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_champion_of_azeroth_AuraScript::CalculateAmount, EFFECT_3, SPELL_AURA_MOD_RATING);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_champion_of_azeroth_AuraScript();
    }
};

// 269239 Vampiric Speed
class spell_vampiric_speed_speed : public SpellScriptLoader
{
public:
    spell_vampiric_speed_speed() : SpellScriptLoader("spell_vampiric_speed_speed") { }

    class spell_vampiric_speed_speed_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_vampiric_speed_speed_AuraScript);

        bool Validate(SpellInfo const* /*spell*/) override
        {
            return ValidateSpellInfo({ 268599 });
        }

        void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
        {
            if (Unit * caster = GetCaster())
            {
                if (AuraEffect * aurEf = caster->GetAuraEffect(268599, EFFECT_1)) // Vampiric Speed
                {
                    amount = aurEf->GetAmount();
                }
            }
        }

        void Register() override
        {
            DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_vampiric_speed_speed_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_MOD_RATING);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_vampiric_speed_speed_AuraScript();
    }
};

// 269238 Vampiric Speed
class spell_vampiric_speed_heal : public SpellScriptLoader
{
public:
    spell_vampiric_speed_heal() : SpellScriptLoader("spell_vampiric_speed_heal") { }

    class spell_vampiric_speed_heal_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_vampiric_speed_heal_SpellScript);

        bool Validate(SpellInfo const* /*spell*/) override
        {
            return ValidateSpellInfo({ 268599 });
        }

        void HandleHeal(SpellEffIndex /*effIndex*/)
        {
            if (Unit * caster = GetCaster())
            {
                if (AuraEffect * aurEf = caster->GetAuraEffect(268599, EFFECT_0)) // Vampiric Speed
                {
                    SetHitHeal(aurEf->GetAmount());
                }
            }
        }
        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_vampiric_speed_heal_SpellScript::HandleHeal, EFFECT_0, SPELL_EFFECT_HEAL);
        }

    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_vampiric_speed_heal_SpellScript();
    }
};

void AddSC_azerite_spell_scripts()
{
    new spell_champion_of_azeroth();
    new spell_vampiric_speed_speed();
    new spell_vampiric_speed_heal();
}

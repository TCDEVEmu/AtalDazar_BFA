/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
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

// This is where scripts' loading functions should be declared:

//--------Kultiras---------
// This is where scripts' loading functions should be declared:
void AddSC_zone_drustvar();
void AddSC_zone_stormsong_valley();
void AddSC_zone_tiragarde_sound();

void AddSC_boss_aqusirr();
void AddSC_boss_lord_stormsong();
void AddSC_boss_tidesage_council();
void AddSC_volzith_the_whisperer();
void AddSC_shrine_of_the_storm();
void AddSC_instance_shrine_of_the_storm();

void AddSC_boss_council_o_captains();
void AddSC_boss_ring_of_booty();
void AddSC_boss_skycapn_kragg();
void AddSC_boss_harlan_sweete();
void AddSC_freehold();
void AddSC_instance_freehold();

void AddSC_boss_jes_howlis();
void AddSC_boss_knight_captain_valyri();
void AddSC_boss_overseer_korgus();
void AddSC_boss_the_sand_queen();
void AddSC_tol_dagor();
void AddSC_instance_tol_dagor();

void AddSC_boss_gorak_tul();
void AddSC_boss_heartsbane_triad();
void AddSC_boss_lord_and_lady_waycrest();
void AddSC_boss_raal_the_gluttonous();
void AddSC_boss_soulbound_goliath();
void AddSC_waycrest_manor();
void AddSC_instance_waycrest_manor();


void AddSC_boss_chopper_redhook();
void AddSC_boss_dread_captain_lockwood();
void AddSC_boss_hadal_darkfathom();
void AddSC_boss_viqgoth();
void AddSC_siege_of_boralus();
void AddSC_instance_siege_of_boralus();

//------Zuldazar----------
void AddSC_zone_nazmir();
void AddSC_zone_voldun();
void AddSC_zone_zuldazar();

void AddSC_boss_elder_leaxa();
void AddSC_boss_cragmaw_infested();
void AddSC_boss_sporecaller_zancha();
void AddSC_boss_unbound_abomination();
void AddSC_the_underrot();
void AddSC_instance_underrot();

void AddSC_boss_adderis_and_aspix();
void AddSC_boss_avatar_of_sethraliss();
void AddSC_boss_galvazzt();
void AddSC_boss_merektha();
void AddSC_temple_of_sethraliss();
void AddSC_instance_temple_of_sethraliss();

void AddSC_boss_priestess_alunza();
void AddSC_boss_rezan();
void AddSC_boss_volkaal();
void AddSC_boss_yazma();
void AddSC_atal_dazar();
void AddSC_instance_atal_dazar();

void AddSC_boss_dunegorger_kraulok();
void AddSC_boss_jiarak();
void AddSC_boss_tzane();

void AddSC_boss_Coin_operated_crowd_pummeler();
void AddSC_boss_azerokk();
void AddSC_boss_rixxafluxflame();
void AddSC_boss_mogulrazdunk();
void AddSC_the_motherlode();
void AddSC_instance_the_motherlode();

//King's Rest
void AddSC_instance_kings_rest();
void AddSC_boss_the_golden_serpent();
void AddSC_boss_mchimba_the_embalmber();
void AddSC_boss_council_of_tribes();
void AddSC_boss_dazar_the_first_king();

//Uldir
void AddSC_uldir();
void AddSC_instance_uldir();
void AddSC_boss_fetid_devourer();
void AddSC_boss_ghuun();
void AddSC_boss_mother();
void AddSC_boss_mythrax();
void AddSC_boss_taloc();
void AddSC_boss_vectis();
void AddSC_boss_zekvoz();
void AddSC_boss_zul();


// Scenarios 
void AddSC_stormwind_extraction();
void AddSC_scenario_stormwind_extraction();
void AddSC_scenario_zuldazar();
void AddSC_instance_scenario_zuldazar();
void AddSC_uncharted_island_tutorial();
void AddSC_scenario_uncharted_island_tutorial();
void AddSC_scenario_snowblossom_village();
void AddSC_scenario_draenor_shadowmoon_valley();
void AddSC_scenario_frostfire_finale();
void AddSC_scenario_talador_iron_horde_finale();
void AddSC_scenario_grommashar();
void AddSC_scenario_gorgrond_finale_1();
void AddSC_scenario_verdant_wilds();
void AddSC_scenario_ungol_ruins();


// The name of this function should match:
// void Add${NameOfDirectory}Scripts()
void AddBattleforAzerothScripts()
{
	//------Kultiras------
    AddSC_zone_drustvar();
    AddSC_zone_stormsong_valley();
    AddSC_zone_tiragarde_sound();

    AddSC_boss_aqusirr();
    AddSC_boss_lord_stormsong();
    AddSC_boss_tidesage_council();
    AddSC_volzith_the_whisperer();
    AddSC_shrine_of_the_storm();
    AddSC_instance_shrine_of_the_storm();

    AddSC_boss_council_o_captains();
    AddSC_boss_ring_of_booty();
    AddSC_boss_skycapn_kragg();
    AddSC_boss_harlan_sweete();
    AddSC_freehold();
    AddSC_instance_freehold();

    AddSC_boss_jes_howlis();
    AddSC_boss_knight_captain_valyri();
    AddSC_boss_overseer_korgus();
    AddSC_boss_the_sand_queen();
    AddSC_tol_dagor();
    AddSC_instance_tol_dagor();

    AddSC_boss_gorak_tul();
    AddSC_boss_heartsbane_triad();
    AddSC_boss_lord_and_lady_waycrest();
    AddSC_boss_raal_the_gluttonous();
    AddSC_boss_soulbound_goliath();
    AddSC_waycrest_manor();
    AddSC_instance_waycrest_manor();
	
	AddSC_boss_chopper_redhook();
    AddSC_boss_dread_captain_lockwood();
    AddSC_boss_hadal_darkfathom();
    AddSC_boss_viqgoth();
    AddSC_siege_of_boralus();
    AddSC_instance_siege_of_boralus();
	
	
	//----Zudlazar-----
	AddSC_zone_nazmir();
    AddSC_zone_voldun();
    AddSC_zone_zuldazar();

    AddSC_boss_elder_leaxa();
    AddSC_boss_cragmaw_infested();
    AddSC_boss_sporecaller_zancha();
    AddSC_boss_unbound_abomination();
    AddSC_the_underrot();
    AddSC_instance_underrot();

    AddSC_boss_adderis_and_aspix();
    AddSC_boss_avatar_of_sethraliss();
    AddSC_boss_galvazzt();
    AddSC_boss_merektha();
    AddSC_temple_of_sethraliss();
    AddSC_instance_temple_of_sethraliss();

    AddSC_boss_priestess_alunza();
    AddSC_boss_rezan();
    AddSC_boss_volkaal();
    AddSC_boss_yazma();
    AddSC_atal_dazar();
    AddSC_instance_atal_dazar();
    
    AddSC_boss_dunegorger_kraulok();
    AddSC_boss_jiarak();
    AddSC_boss_tzane();
		
	//Motherlode
	AddSC_boss_Coin_operated_crowd_pummeler();
	AddSC_boss_azerokk();
	AddSC_boss_rixxafluxflame();
	AddSC_boss_mogulrazdunk();
	AddSC_the_motherlode();
	AddSC_instance_the_motherlode();
	
	//King's Rest
    AddSC_instance_kings_rest();
    AddSC_boss_the_golden_serpent();
    AddSC_boss_mchimba_the_embalmber();
    AddSC_boss_council_of_tribes();
    AddSC_boss_dazar_the_first_king();
    
    //Uldir
    AddSC_uldir();
    AddSC_instance_uldir();
    AddSC_boss_fetid_devourer();
    AddSC_boss_ghuun();
    AddSC_boss_mother();
    AddSC_boss_mythrax();
    AddSC_boss_taloc();
    AddSC_boss_vectis();
    AddSC_boss_zekvoz();
    AddSC_boss_zul();
	
	//Scenarios
	AddSC_stormwind_extraction();
    AddSC_scenario_stormwind_extraction();
    AddSC_scenario_zuldazar();
    AddSC_instance_scenario_zuldazar();
    AddSC_uncharted_island_tutorial();
    AddSC_scenario_uncharted_island_tutorial();
    AddSC_scenario_snowblossom_village();
    AddSC_scenario_draenor_shadowmoon_valley();
    AddSC_scenario_frostfire_finale();
    AddSC_scenario_talador_iron_horde_finale();
    AddSC_scenario_grommashar();
    AddSC_scenario_gorgrond_finale_1();
    AddSC_scenario_verdant_wilds();
    AddSC_scenario_ungol_ruins();
	
}

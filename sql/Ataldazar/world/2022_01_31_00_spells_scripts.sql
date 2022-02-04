-- DH
DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_dh_fel_rush_damage',
'spell_dh_demon_spikes',
'spell_dh_annihilation',
'spell_dh_felblade2');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (223107, 'spell_dh_fel_rush_damage');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (203720, 'spell_dh_demon_spikes');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (201427, 'spell_dh_annihilation');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (232893, 'spell_dh_felblade2');

update `areatrigger_template` set `ScriptName`= 'at_shattered_soul_fragment' where `Id`= 10665;

-- DK
update `creature_template` set `ScriptName`= 'npc_dk_dancing_rune_weapon' where `entry`= 27893;
update `creature_template` set `ScriptName`= 'npc_dk_defile' where `entry`= 82521;

DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_dk_death_strike_heal',
'spell_dk_item_t17_frost_4p_driver_periodic',
'spell_dk_item_t17_frost_4p_driver',
'spell_dk_tombstone',
'spell_dk_crimsom_scourge',
'spell_dk_clawing_shadows',
'spell_dk_defile_aura',
'spell_dk_frost_strike',
'aura_grip_of_the_dead',
'aura_inexorable_assault',
'spell_dk_frostscythe',
'spell_dk_festering_wound_damage',
'spell_dk_blood_shield',
'spell_dk_unholy_frenzy');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (77535, 'spell_dk_blood_shield');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (45470, 'spell_dk_death_strike_heal');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (170205, 'spell_dk_item_t17_frost_4p_driver_periodic');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (167655, 'spell_dk_item_t17_frost_4p_driver');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (219809, 'spell_dk_tombstone');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (81136, 'spell_dk_crimsom_scourge');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (207311, 'spell_dk_clawing_shadows');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (156004, 'spell_dk_defile_aura');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (49143, 'spell_dk_frost_strike');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (273980, 'aura_grip_of_the_dead');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (253593, 'aura_inexorable_assault');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (207230, 'spell_dk_frostscythe');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (194311, 'spell_dk_festering_wound_damage');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (207289, 'spell_dk_unholy_frenzy');

-- Druid
DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'aura_dru_feral_affinity',
'spell_dru_moonfire_sunfire_dot',
'spell_dru_moonfire_sunfire_dot',
'spell_dru_regrowth',
'spell_dru_flourish',
'spell_dru_swiftmend',
'spell_dru_ursols_vortex',
'spell_dru_brambles',
'spell_dru_barkskin',
'spell_dru_cenarion_ward',
'spell_dru_cenarion_ward_hot',
'spell_dru_galactic_guardian',
'spell_dru_forms_trinket',
'spell_dru_glyph_of_starfire_proc',
'spell_dru_typhoon',
'spell_dru_t3_6p_bonus',
'spell_dru_t3_8p_bonus',
'spell_dru_t4_2p_bonus',
'spell_dru_item_t6_trinket',
'spell_dru_t10_balance_4p_bonus',
'spell_dru_t10_restoration_4p_bonus',
'spell_dru_t10_restoration_4p_bonus_dummy',
'spell_dru_primal_vitality',
'spell_dru_nourish',
'spell_dru_denmother',
'spell_dru_overgrowth',
'spell_dru_skull_bash_charge',
'spell_dru_tranquility_heal',
'spell_dru_cultivation',
'spell_dru_rejuvenation',
'spell_dru_infected_wounds',
'spell_dru_blessing_of_elune',
'spell_dru_essence_of_ghanir',
'spell_dru_rage_of_the_sleeper',
'spell_druid_lunar_strike',
'spell_druid_solar_wrath',
'spell_druid_earthwarden_triggered',
'spell_druid_earthwarden',
'spell_druid_pulverize',
'spell_druid_rend_and_tear',
'incarnation_tree_of_life',
'spell_feral_frenzy',
'spell_dru_starsurge',
'spell_dru_starfall',
'spell_dru_tiger_dash',
'spell_dru_photosynthesis',
'spell_dru_balance_affinity_dps',
'spell_dru_balance_affinity_resto',
'spell_dru_mass_entanglement');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (197488, 'spell_dru_balance_affinity_dps');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (197632, 'spell_dru_balance_affinity_resto');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (202157, 'aura_dru_feral_affinity');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (164812, 'spell_dru_moonfire_sunfire_dot');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (164815, 'spell_dru_moonfire_sunfire_dot');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (8936  , 'spell_dru_regrowth');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (197721, 'spell_dru_flourish');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (18562 , 'spell_dru_swiftmend');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (102793, 'spell_dru_ursols_vortex');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (203953, 'spell_dru_brambles');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (22812 , 'spell_dru_barkskin');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (102351, 'spell_dru_cenarion_ward');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (102352, 'spell_dru_cenarion_ward_hot');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (203964, 'spell_dru_galactic_guardian');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (37336 , 'spell_dru_forms_trinket');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (54845 , 'spell_dru_glyph_of_starfire_proc');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (61391 , 'spell_dru_typhoon');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28744 , 'spell_dru_t3_6p_bonus');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28719 , 'spell_dru_t3_8p_bonus');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (37288 , 'spell_dru_t4_2p_bonus');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (40442 , 'spell_dru_item_t6_trinket');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (70723 , 'spell_dru_t10_balance_4p_bonus');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (70691 , 'spell_dru_t10_restoration_4p_bonus');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (70664 , 'spell_dru_t10_restoration_4p_bonus_dummy');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (202808, 'spell_dru_primal_vitality');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (50464 , 'spell_dru_nourish');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (201522, 'spell_dru_denmother');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (203651, 'spell_dru_overgrowth');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (221514, 'spell_dru_skull_bash_charge');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (157982, 'spell_dru_tranquility_heal');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (200389, 'spell_dru_cultivation');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (774   , 'spell_dru_rejuvenation');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (58180 , 'spell_dru_infected_wounds');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (103917, 'spell_dru_blessing_of_elune');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (208253, 'spell_dru_essence_of_ghanir');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (200851, 'spell_dru_rage_of_the_sleeper');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (194153, 'spell_druid_lunar_strike');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (190984, 'spell_druid_solar_wrath');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (203975, 'spell_druid_earthwarden_triggered');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (203974, 'spell_druid_earthwarden');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (80313 , 'spell_druid_pulverize');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (204053, 'spell_druid_rend_and_tear');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (33891 , 'incarnation_tree_of_life');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (274837, 'spell_feral_frenzy');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (78674 , 'spell_dru_starsurge');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (191034, 'spell_dru_starfall');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (252216, 'spell_dru_tiger_dash');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (274902, 'spell_dru_photosynthesis');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (102359, 'spell_dru_mass_entanglement');

-- Generic
DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_class_mecagnomo_emergency',
'spell_class_mecagnomo_emergency2',
'spell_class_mecagnomo_emergency3',
'spell_class_hall_panel',
'spell_hidden_appearance_unlock',
'spell_sa_place_seaforium_charge',
'spell_gen_taunt_flag_targeting',
'spell_gen_absorb_if_health',
'spell_principles_of_war',
'spell_gen_create_artefact',
'spell_gen_herbalism_trap',
'spell_gen_mining_trap',
'spell_gen_learn_legion_skinning',
'spell_gen_bounce_achievement',
'spell_gen_bg_inactive',
'spell_gen_cooking_way',
'spell_gen_drums_of_rage',
'spell_gen_orb_of_power',
'spell_gen_dampening',
'spell_gen_brutal_assault',
'spell_time_lost_wisdom',
'spell_gulp_frog_toxin',
'spell_gen_leviroth_self_impale',
'spell_gen_gobelin_gumbo',
'spell_gen_dummy_trigger',
'spell_gen_launch',
'spell_gen_magic_rooster',
'spell_gen_gunship_portal',
'spell_gen_parachute_ic',
'spell_gen_feast',
'spell_endurance_of_niuzao',
'spell_sha_cloud',
'spell_legion_hearty_feast',
'spell_legion_food_table',
'spell_gen_hearthstone_board',
'spell_gen_winning_hand',
'spell_request_the_master_call_on_you',
'spell_searing_gaze_of_the_dook',
'spell_searing_gaze_of_the_dook_hit',
'spell_searing_gaze_of_the_dook_despawn',
'spell_deck_o_matic',
'spell_improved_card_pack',
'spell_kaldorei_light_globe',
'spell_throw_sphere_catch',
'spell_set_up_board',
'spell_hearthstation_horde',
'spell_hearthstation_alliance',
'spell_q29347_crayfish',
'spell_q13698_saw',
'spell_q13698_shredder_aura',
'spell_gen_love_seat',
'spell_q29347_bait',
'spell_gen_gilneas_prison_periodic_dummy',
'spell_gen_dream_funnel',
'spell_gen_throw_torch',
'spell_gen_on_tournament_mount',
'spell_maghar_orc_racial_ancestors_call',
'spell_gen_battle_guild_standart');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220584, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220645, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220651, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220658, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220662, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220663, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220670, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220676, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220679, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220681, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220683, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220684, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220688, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220690, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220691, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220692, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220693, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220694, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220696, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220699, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220701, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220703, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220705, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220706, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220708, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220709, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220710, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220712, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220715, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220718, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220724, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220729, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220731, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220732, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220734, 'spell_hidden_appearance_unlock');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220058, 'spell_gen_absorb_if_health');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220110, 'spell_gen_absorb_if_health');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220792, 'spell_gen_absorb_if_health');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (220887, 'spell_gen_absorb_if_health');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (193378, 'spell_gen_herbalism_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (193379, 'spell_gen_herbalism_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (193380, 'spell_gen_herbalism_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (193381, 'spell_gen_herbalism_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (193382, 'spell_gen_herbalism_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (193383, 'spell_gen_herbalism_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (193384, 'spell_gen_herbalism_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (205139, 'spell_gen_herbalism_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (205695, 'spell_gen_herbalism_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (205712, 'spell_gen_herbalism_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (205713, 'spell_gen_herbalism_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (205714, 'spell_gen_herbalism_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (185496, 'spell_gen_mining_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (185528, 'spell_gen_mining_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (185529, 'spell_gen_mining_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (185768, 'spell_gen_mining_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (185769, 'spell_gen_mining_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (185770, 'spell_gen_mining_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (204918, 'spell_gen_mining_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (204981, 'spell_gen_mining_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (205009, 'spell_gen_mining_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (205060, 'spell_gen_mining_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (205802, 'spell_gen_mining_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (205804, 'spell_gen_mining_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (205805, 'spell_gen_mining_trap');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (124693, 'spell_gen_cooking_way');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (125585, 'spell_gen_cooking_way');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (125590, 'spell_gen_cooking_way');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (125591, 'spell_gen_cooking_way');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (125592, 'spell_gen_cooking_way');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (125593, 'spell_gen_cooking_way');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (90216, 'spell_gen_battle_guild_standart');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (90708, 'spell_gen_battle_guild_standart'); 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (42760 , 'spell_gen_gobelin_gumbo');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (13567 , 'spell_gen_dummy_trigger');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (66218 , 'spell_gen_launch');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (65917 , 'spell_gen_magic_rooster');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (66637 , 'spell_gen_gunship_portal');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (66656 , 'spell_gen_parachute_ic');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (159953, 'spell_gen_feast');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (146193, 'spell_endurance_of_niuzao');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (145591, 'spell_sha_cloud');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (201632, 'spell_legion_hearty_feast');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (201644, 'spell_legion_food_table');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (176888, 'spell_gen_hearthstone_board');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (176890, 'spell_gen_winning_hand');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (217668, 'spell_request_the_master_call_on_you');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (128018, 'spell_searing_gaze_of_the_dook');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (127902, 'spell_searing_gaze_of_the_dook_hit');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (128058, 'spell_searing_gaze_of_the_dook_despawn');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (246290, 'spell_deck_o_matic');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (246292, 'spell_improved_card_pack');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (228704, 'spell_kaldorei_light_globe');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (246823, 'spell_throw_sphere_catch');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (246293, 'spell_set_up_board');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (246351, 'spell_hearthstation_horde');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (246289, 'spell_hearthstation_alliance');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (99424 , 'spell_q29347_crayfish');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63520 , 'spell_q13698_saw');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63517 , 'spell_q13698_shredder_aura');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (194582, 'spell_gen_love_seat');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (99435 , 'spell_q29347_bait');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (66853 , 'spell_gen_gilneas_prison_periodic_dummy');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (50344 , 'spell_gen_dream_funnel');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (67063 , 'spell_gen_throw_torch');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63034 , 'spell_gen_on_tournament_mount');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (274738, 'spell_maghar_orc_racial_ancestors_call');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (312916, 'spell_class_mecagnomo_emergency');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (313015, 'spell_class_mecagnomo_emergency2');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (313010, 'spell_class_mecagnomo_emergency3');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (213170, 'spell_class_hall_panel');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (146555, 'spell_gen_drums_of_rage');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (121176, 'spell_gen_orb_of_power');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (110310, 'spell_gen_dampening');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (98507 , 'spell_gen_brutal_assault');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (147280, 'spell_time_lost_wisdom');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (147655, 'spell_gulp_frog_toxin');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (49882 , 'spell_gen_leviroth_self_impale');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (8613  , 'spell_gen_learn_legion_skinning');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (95529 , 'spell_gen_bounce_achievement');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (43681 , 'spell_gen_bg_inactive');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (197912, 'spell_principles_of_war');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (192190, 'spell_gen_create_artefact');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (52410 , 'spell_sa_place_seaforium_charge');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (51640 , 'spell_gen_taunt_flag_targeting');


-- Hunter
DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_hun_roar_of_sacrifice',
'spell_hun_scatter_shot',
'spell_hun_glaive_toss_damage',
'spell_hun_glaive_toss_missile',
'spell_hun_blink_strike',
'spell_hun_lone_wolf',
'spell_hun_windburst',
'spell_hun_serpent_sting',
'spell_hun_aspect_of_the_turtle',
'spell_hun_aimed_shot',
'spell_hun_flanking_strike_pet',
'spell_hun_explosive_shot_aura',
'spell_hun_sidewinders',
'spell_hun_bestial_wrath');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (130392, 'spell_hun_blink_strike');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (155228, 'spell_hun_lone_wolf');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (204147, 'spell_hun_windburst');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (271788, 'spell_hun_serpent_sting');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (186265, 'spell_hun_aspect_of_the_turtle');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (19434 , 'spell_hun_aimed_shot');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (205434, 'spell_hun_flanking_strike_pet');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (212431, 'spell_hun_explosive_shot_aura');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (214579, 'spell_hun_sidewinders');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (19574 , 'spell_hun_bestial_wrath');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (53480 , 'spell_hun_roar_of_sacrifice');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (37506 , 'spell_hun_scatter_shot');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (120761, 'spell_hun_glaive_toss_damage');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (121414, 'spell_hun_glaive_toss_damage');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (120755, 'spell_hun_glaive_toss_missile');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (120756, 'spell_hun_glaive_toss_missile');



-- Item
DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_item_demon_hunters_aspect',
'spell_item_faded_wizard_hat',
'aura_item_avalanche_elixir',
'talisman_of_flame_ascendancy');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (113095, 'spell_item_demon_hunters_aspect');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (74589 , 'spell_item_faded_wizard_hat');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (188021, 'aura_item_avalanche_elixir');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (54814 , 'talisman_of_flame_ascendancy');


-- Mage
DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_mage_firestarter_pvp',
'spell_mage_blink',
'spell_mage_polymorph_cast_visual');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (203283, 'spell_mage_firestarter_pvp');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (1953  , 'spell_mage_blink');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (118   , 'spell_mage_polymorph_cast_visual');


-- Monk
DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_monk_zen_pilgrimage_return',
'spell_monk_essence_font');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (126895, 'spell_monk_zen_pilgrimage_return');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (191837, 'spell_monk_essence_font');

update `creature_template` set `ScriptName`= 'npc_monk_jade_serpent_statue' where `entry`= 60849;


-- Paladin
DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_pal_hand_of_hindrance',
'aura_darkest_before_the_dawn');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (183218, 'spell_pal_hand_of_hindrance');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (210378, 'aura_darkest_before_the_dawn');
 

-- Priest
DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_pri_holy_word_sanctify',
'aura_pri_guardian_spirit',
'spell_pri_lingering_insanity',
'spell_pri_holy_nova',
'spell_pri_holy_word_salvation',
'spell_pri_holy_word_serenity',
'spell_priest_void_torrent',
'spell_pri_dark_void',
'spell_dark_ascension');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (34861 , 'spell_pri_holy_word_sanctify');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (47788 , 'aura_pri_guardian_spirit');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (197937, 'spell_pri_lingering_insanity');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (132157, 'spell_pri_holy_nova');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (265202, 'spell_pri_holy_word_salvation');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (2050  , 'spell_pri_holy_word_serenity');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (263165, 'spell_priest_void_torrent');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (263346, 'spell_pri_dark_void');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (280711, 'spell_dark_ascension');


-- Rogue
DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_rog_mutilate',
'spell_rog_sinister_strike',
'spell_rog_hidden_blades');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (1329  , 'spell_rog_mutilate');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (193315, 'spell_rog_sinister_strike');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (270061, 'spell_rog_hidden_blades');


-- Shaman
DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_shaman_generic_summon_elemental',
'spell_sha_stormstrike',
'bfa_spell_frostbrand',
'bfa_spell_flametongue',
'bfa_spell_flametongue_proc_attack',
'bfa_spell_crash_lightning',
'bfa_spell_flametongue_attack_damage');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (192249, 'spell_shaman_generic_summon_elemental');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (17364 , 'spell_sha_stormstrike');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (196834, 'bfa_spell_frostbrand');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (193796, 'bfa_spell_flametongue');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (194084, 'bfa_spell_flametongue_proc_attack');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (187874, 'bfa_spell_crash_lightning');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (10444 , 'bfa_spell_flametongue_attack_damage');

update `creature_template` set `ScriptName`= 'npc_sha_tremor_totem' where `entry`= 8143;
 


-- Warrior
update `creature_template` set `ScriptName`= 'npc_warr_banner' where `entry`= 119052;

DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_warr_avatar',
'spell_warr_victory_rush_heal',
'spell_warr_wirlwind_dmg',
'aura_warr_victorious',
'spell_warr_siegebreaker',
'spell_defensive_state');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (107574, 'spell_warr_avatar');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (118779, 'spell_warr_victory_rush_heal');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (1680  , 'spell_warr_wirlwind_dmg');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (32215 , 'aura_warr_victorious');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (280772, 'spell_warr_siegebreaker');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (197690, 'spell_defensive_state');



-- Warlock
DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_warl_soul_link', 
'spell_warl_soulshatter',
'spell_warl_grimoire_of_service_aura');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (108415, 'spell_warl_soul_link');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (29858 , 'spell_warl_soulshatter');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (108501, 'spell_warl_grimoire_of_service_aura');
 
 
 
 
 
 
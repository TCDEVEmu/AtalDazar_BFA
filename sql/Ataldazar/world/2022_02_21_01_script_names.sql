update `gameobject_template` set `AIName`= '', `ScriptName`= 'go_waterfall_stairs' where `entry`= 278422; 
update `gameobject_template` set `AIName`= '', `ScriptName`= 'go_mothers_cache' where `entry`= 291079; 

update `instance_template` set `script`= 'instance_battle_of_dazaralor'   where `map`= 2070;
update `instance_template` set `script`= 'instance_eternal_palace'        where `map`= 2164;
update `instance_template` set `script`= 'instance_free_hold'             where `map`= 1754;
update `instance_template` set `script`= 'instance_atal_dazar'            where `map`= 1763;
update `instance_template` set `script`= 'instance_kings_rest'            where `map`= 1762;
update `instance_template` set `script`= 'instance_nyalotha'              where `map`= 2217;
update `instance_template` set `script`= 'instance_operation_mechagon'    where `map`= 2097;
update `instance_template` set `script`= 'instance_shrine_of_the_storm'   where `map`= 1864;
update `instance_template` set `script`= 'instance_siege_of_boralus'      where `map`= 1822;
update `instance_template` set `script`= 'instance_temple_of_sethraliss'  where `map`= 1877;
update `instance_template` set `script`= 'instance_the_underrot'          where `map`= 1841;
update `instance_template` set `script`= 'instance_tol_dagor'             where `map`= 1771;
update `instance_template` set `script`= 'instance_uldir'                 where `map`= 1861;
update `instance_template` set `script`= 'instance_waycrest_manor'        where `map`= 1862;


DELETE FROM `spell_script_names` WHERE `spell_id` in (
284663,286646,286988,282037,285349,288449,292159,298424,297932,292307,298595,301930,301494,292279,295412,294726,295346,289169,300962,300961,300698,300701,300705,295791,300883,300882,294711,294715,295332,298122,296662,296726,
302855,297240,296650,297402,302989,297397,299095,298156,298548,298242,298443,296691,295808,297934,297937,297898,304260,304267,298531,299094,300502,304475,303629,303657,299252,299253,307331,300807,299563,299915,299917,300550,
301807,301947,303227,296850,296851,301244,297564,297578,297648,304065,304025,304067,304026,295920,302202,296022,296018,295999,296078,294652,294515,295173,292963,295444,295498,296257,301141,295249,296262,301117,299617,301427,
295498,260665,255835,267618,265773,306973,306984,307071,310358,310277,311159,311367,308158,307806,314993,315025,306301,306273,310019,307358,307359,307314,313973,306111,306163,306735,306949,306995,313253,313250,264560,264144,
264477,269131,269289,269242,267299,240443,263234,256163,269493,271903,260280,260685,259718,279271,256970,257028,256038,256105,257092,257612,257608,272504,272506,270373,269455,272536,270449,265208,265212,276439,266459,266948,
265370,265281,265928,265217,267242,274990,265178,264383,265231,265237,267312,265437,265360,265402,264954,265061,265662,281473,273365,274271,276434,260703,268086,261440,261600,261552,261560,261718,296941,296942,296943,267160,
267161,267162,267163,295415,295417,295348,295421);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(284663, 'aura_bwonsamdis_wrath                              '),
(286646, 'aura_gigavolt_charge                               '),
(286988, 'aura_searing_embers                                '),
(282037, 'aura_rising_flames                                 '),
(285349, 'aura_plague_of_fire                                '),
(288449, 'aura_deaths_door                                   '),
(292159, 'bfa_spell_toxic_spine                              '),
(298424, 'bfa_spell_feeding_frenzy                           '),
(297932, 'bfa_spell_bioelectric_feelers                      '),
(292307, 'bfa_spell_gaze_from_below                          '),
(298595, 'bfa_spell_glowing_stinger                          '),
(301930, 'bfa_spell_piercing_barb_damage                     '),
(301494, 'bfa_spell_piercing_barb_beam                       '),
(292279, 'bfa_spell_shock_pulse_damage                       '),
(295412, 'bfa_spell_radiant_biomass                          '),
(294726, 'bfa_spell_chimeric_marks                           '),
(295346, 'bfa_spell_overflow                                 '),
(289169, 'aura_bwonsamdis_toon                               '),
(300962, 'bfa_spell_septic_ground_aura                       '),
(300961, 'bfa_spell_frozen_ground_aura                       '),
(300698, 'bfa_spell_frostvenom_tipped                        '),
(300701, 'bfa_spell_rimefrost_aura                           '),
(300705, 'bfa_spell_septic_taint_aura                        '),
(295791, 'bfa_spell_inversion                                '),
(300883, 'bfa_spell_inversion_sickness_venom                 '),
(300882, 'bfa_spell_inversion_sickness_frost                 '),
(294711, 'bfa_spell_frost_mark                               '),
(294715, 'bfa_spell_toxic_brand                              '),
(295332, 'bfa_spell_crushing_reverberation                   '),
(298122, 'bfa_spell_overwhelming_barrage                     '),
(296662, 'bfa_spell_rippling_wave_cast                       '),
(296726, 'bfa_spell_barnacle_bash                            '),
(302855, 'bfa_spell_regenerative_coral_dummy                 '),
(297240, 'bfa_spell_hardened_carapace_cast                   '),
(296650, 'bfa_spell_hardened_carapace_aura                   '),
(297402, 'bfa_spell_briny_bubble                             '),
(302989, 'bfa_spell_briny_bubble_aura                        '),
(297397, 'bfa_spell_briny_bubble_aura_mythic                 '),
(299095, 'bfa_spell_dribbling_ichor                          '),
(298156, 'bfa_spell_desensiizing_sting                       '),
(298548, 'bfa_spell_massive_incubator                        '),
(298242, 'bfa_spell_incubation_fluid                         '),
(298443, 'bfa_spell_amniotic_splatter_filter                 '),
(296691, 'bfa_spell_powerful_stomp                           '),
(295808, 'bfa_spell_aqua_lance                               '),
(297934, 'bfa_spell_longing                                  '),
(297937, 'bfa_spell_painful_memories                         '),
(297898, 'bfa_spell_cursed_heart                             '),
(304260, 'bfa_spell_longing_aura                             '),
(304267, 'bfa_spell_painful_memories_aura                    '),
(298531, 'bfa_spell_ground_pound                             '),
(299094, 'bfa_spell_beckon_cast                              '),
(300502, 'bfa_spell_arcane_mastery_periodic                  '),
(304475, 'bfa_spell_arcane_jolt                              '),
(303629, 'bfa_spell_arcane_burst_dummy                       '),
(303657, 'bfa_spell_arcane_burst_aura                        '),
(299252, 'bfa_spell_march                                    '),
(299253, 'bfa_spell_stay                                     '),
(307331, 'bfa_spell_divide_and_conquer_cast                  '),
(300807, 'bfa_spell_overload_dummy                           '),
(299563, 'bfa_spell_commanders_fury                          '),
(299915, 'bfa_spell_frenetic_charge_cast                     '),
(299917, 'bfa_spell_frenetic_charge_at_create                '),
(300550, 'bfa_spell_frenetic_charge_damage                   '),
(301807, 'bfa_spell_zealous_eruption_periodic                '),
(301947, 'bfa_spell_potent_spark_cast                        '),
(303227, 'bfa_spell_form_ranks_damage                        '),
(296850, 'bfa_spell_fanatical_verdict                        '),
(296851, 'bfa_spell_fanatical_verdict_aura                   '),
(301244, 'bfa_spell_repeat_performance                       '),
(297564, 'spell_deferred_sentence_periodic                   '),
(297578, 'bfa_spell_deferred_sentence_damage                 '),
(297648, 'bfa_spell_stand_alone_court                        '),
(304065, 'bfa_spell_arcanado_burst_cast                      '),
(304025, 'bfa_spell_arcane_bomb_radiance_dummy               '),
(304067, 'bfa_spell_arcanado_burst_dummy                     '),
(304026, 'bfa_spell_arcane_bomb_radiance                     '),
(295920, 'bfa_spell_ancient_tempest_players                  '),
(302202, 'bfa_spell_return_to_reality_button                 '),
(296022, 'bfa_spell_manic_dread_missile                      '),
(296018, 'bfa_spell_manic_dread_aura                         '),
(295999, 'bfa_spell_caustic_delirium_aura                    '),
(296078, 'bfa_spell_dark_pulse_shield                        '),
(294652, 'bfa_spell_quivering_claws                          '),
(294515, 'bfa_spell_dark_tear_cast                           '),
(295173, 'bfa_spell_fear_realm_hysteria                      '),
(292963, 'bfa_spell_dread_aura                               '),
(295444, 'bfa_spell_mind_tether_cast                         '),
(295498, 'bfa_spell_mind_tether_aura                         '),
(296257, 'bfa_spell_fear_realm_cast                          '),
(301141, 'bfa_spell_crushing_grasp_cast                      '),
(295249, 'bfa_spell_delirium_realm_aura                      '),
(296262, 'bfa_spell_delirium_realm_cast                      '),
(301117, 'bfa_spell_dark_shield                              '),
(299617, 'bfa_spell_fear_gate_cast                           '),
(301427, 'bfa_spell_fear_gate_button                         '),
(295498, 'bfa_spell_mind_tether_damage_share                 '),
(260665, 'spell_priestess_transfusion_cast                   '),
(255835, 'spell_priestess_transfusion_heal                   '),
(267618, 'aura_drain_fluids                                  '),
(265773, 'aura_spirit_of_gold                                '),
(306973, 'aura_madness_bomb                                  '),
(306984, 'aura_insanity_bomb                                 '),
(307071, 'aura_synthesis                                     '),
(310358, 'aura_mutterings_of_insanity                        '),
(310277, 'aura_volatile_seed                                 '),
(311159, 'aura_cursed_blood                                  '),
(311367, 'aura_touch_of_the_corruptor                        '),
(308158, 'aura_consuming_shadows                             '),
(307806, 'aura_devour_magic                                  '),
(314993, 'aura_drain_essence                                 '),
(315025, 'aura_ancient_curse                                 '),
(306301, 'aura_forbidden_mana                                '),
(306273, 'aura_unstable_vita                                 '),
(310019, 'aura_charged_bonds                                 '),
(307358, 'aura_debilatiting_spit                             '),
(307359, 'aura_despair                                       '),
(307314, 'aura_encroaching_shadows                           '),
(313973, 'spell_wrathion_searing_breath_targets              '),
(306111, 'spell_wrathion_incineration_targets                '),
(306163, 'aura_wrathion_incineration                         '),
(306735, 'aura_wrathion_burning_cataclysm                    '),
(306949, 'spell_wrathion_burning_cataclysm_teleport          '),
(306995, 'aura_wrathion_smoke_and_mirrors                    '),
(313253, 'spell_wrathion_creeping_madness_targets            '),
(313250, 'aura_wrathion_creeping_madness                     '),
(264560, 'bfa_spell_choking_brine                            '),
(264144, 'bfa_spell_undertow                                 '),
(264477, 'bfa_spell_grasp_from_the_depths                    '),
(269131, 'bfa_spell_ancient_mindbender                       '),
(269289, 'bfa_spell_disciple_of_the_volzith                  '),
(269242, 'bfa_spell_surrender_to_the_void                    '),
(267299, 'bfa_spell_call_the_abyss                           '),
(240443, 'spell_burst_sots                                   '),
(263234, 'bfa_spell_arcing_blade                             '),
(256163, 'bfa_spell_blazing_azerite                          '),
(269493, 'bfa_spell_footbomb_launcher                        '),
(271903, 'bfa_spell_coin_magnet                              '),
(260280, 'bfa_spell_gatling_gun                              '),
(260685, 'bfa_spell_taint_of_ghunn                           '),
(259718, 'bfa_spell_upheaval                                 '),
(279271, 'aura_underrot_open_web_door                        '),
(256970, 'spell_ignition                                     '),
(257028, 'bfa_spell_fuselighter                              '),
(256038, 'bfa_spell_generic_deadeye                          '),
(256105, 'bfa_spell_explosive_burst                          '),
(257092, 'bfa_spell_sand_trap                                '),
(257612, 'bfa_spell_upheaval_target_selector                 '),
(257608, 'bfa_spell_upheaval_2                               '),
(272504, 'spell_explosive_corruption_selector                '),
(272506, 'spell_explosive_corruption                         '),
(270373, 'spell_wave_of_corruption_selector                  '),
(269455, 'spell_power_matrix_cast                            '),
(272536, 'aura_imminent_ruin                                 '),
(270449, 'spell_plasma_discharge                             '),
(265208, 'spell_gestate_selector                             '),
(265212, 'spell_gestate                                      '),
(276439, 'spell_omega_vector_target_selector                 '),
(266459, 'spell_plague_bomb_cast                             '),
(266948, 'spell_plague_bomb                                  '),
(265370, 'spell_blood_geyser_damage                          '),
(265281, 'spell_blood_geyser_aura                            '),
(265928, 'spell_blood_geyser_cast                            '),
(265217, 'spell_liquefy                                      '),
(267242, 'spell_contagion                                    '),
(274990, 'aura_burning_lesions                               '),
(265178, 'aura_evolving_affliction                           '),
(264383, 'spell_eye_beam_selector                            '),
(265231, 'spell_void_lash_selector                           '),
(265237, 'spell_shatter                                      '),
(267312, 'spell_might_of_the_void                            '),
(265437, 'spell_roiling_deceit_selector                      '),
(265360, 'spell_roiling_deceit_aura                          '),
(265402, 'spell_roiling_deceit_dummy                         '),
(264954, 'spell_titan_spark_aura                             '),
(265061, 'spell_titan_spark_selector                         '),
(265662, 'aura_corruptors_path                               '),
(281473, 'spell_roiling_deceit_damage                        '),
(273365, 'aura_dark_revelation                               '),
(274271, 'aura_deathwish                                     '),
(276434, 'aura_decaying_flesh                                '),
(260703, 'bfa_spell_unstable_runic_mark                      '),
(268086, 'bfa_spell_aura_of_dread                            '),
(261440, 'bfa_spell_virulent_pathogen_aura                   '),
(261600, 'spell_coalseced_essence                            '),
(261552, 'spell_terror_wall                                  '),
(261560, 'spell_terror_wall_visual                           '),
(261718, 'spell_terror_wall_visual_back                      '),
(296941, 'bfa_spell_arcing_azerite_controller_red_yellow_blue'),
(296942, 'bfa_spell_arcing_azerite_controller_red_yellow_blue'),
(296943, 'bfa_spell_arcing_azerite_controller_red_yellow_blue'),
(267160, 'spell_omega_vector                                 '),
(267161, 'spell_omega_vector                                 '),
(267162, 'spell_omega_vector                                 '),
(267163, 'spell_omega_vector                                 '),
(295415, 'bfa_spell_overflowing_chill_venom_damage           '),
(295417, 'bfa_spell_overflowing_chill_venom_damage           '),
(295348, 'bfa_spell_overflowing_chill_venom_aura             '),
(295421, 'bfa_spell_overflowing_chill_venom_aura             ');

update `areatrigger_template` set `ScriptName`= 'at_megatomic '   where `id`= 19750;
update `areatrigger_template` set `ScriptName`= 'at_buster_cannon '   where `id`= 19687;
update `areatrigger_template` set `ScriptName`= 'bfa_at_bioluminescence '   where `id`= 16226;
update `areatrigger_template` set `ScriptName`= 'bfa_at_septic_ground '   where `id`= 17105;
update `areatrigger_template` set `ScriptName`= 'bfa_at_frozen_ground '   where `id`= 17104;
update `areatrigger_template` set `ScriptName`= 'bfa_at_toxic_frost_bolts '   where `id`= 16564;
update `areatrigger_template` set `ScriptName`= 'bfa_at_cutting_coral_ashvane '   where `id`= 16727;
update `areatrigger_template` set `ScriptName`= 'bfa_at_cutting_coral_growth '   where `id`= 17327;
update `areatrigger_template` set `ScriptName`= 'bfa_at_rippling_wave '   where `id`= 16715;
update `areatrigger_template` set `ScriptName`= 'bfa_at_regenerative_coral '   where `id`= 17366;
update `areatrigger_template` set `ScriptName`= 'bfa_at_empowered_rippling_wave '   where `id`= 17357;
update `areatrigger_template` set `ScriptName`= 'bfa_at_aqua_lance '   where `id`= 17048;
update `areatrigger_template` set `ScriptName`= 'bfa_at_cursed_heart '   where `id`= 16848;
update `areatrigger_template` set `ScriptName`= 'bfa_at_arcane_orb '   where `id`= 16953;
update `areatrigger_template` set `ScriptName`= 'bfa_at_nether_portal '   where `id`= 17468;
update `areatrigger_template` set `ScriptName`= 'bfa_at_piercing_gaze '   where `id`= 17112;
update `areatrigger_template` set `ScriptName`= 'bfa_at_flags_spell '   where `id`= 17380;
update `areatrigger_template` set `ScriptName`= 'bfa_at_mighty_rupture '   where `id`= 17071;
update `areatrigger_template` set `ScriptName`= 'bfa_at_form_ranks '   where `id`= 17397;
update `areatrigger_template` set `ScriptName`= 'bfa_at_arcanado '   where `id`= 17469;
update `areatrigger_template` set `ScriptName`= 'bfa_at_squall_trap '   where `id`= 16695;
update `areatrigger_template` set `ScriptName`= 'bfa_at_delirium_realm '   where `id`= 17037;
update `areatrigger_template` set `ScriptName`= 'bfa_at_nightmare_pool '   where `id`= 17455;
update `areatrigger_template` set `ScriptName`= 'bfa_at_reality_portal '   where `id`= 17303;
update `areatrigger_template` set `ScriptName`= 'at_maut_devoured_abyss '   where `id`= 22078;
update `areatrigger_template` set `ScriptName`= 'at_maut_dark_manifestation_pull'   where `id`= 22237;
update `areatrigger_template` set `ScriptName`= 'at_maut_mana_orb '   where `id`= 21916;
update `areatrigger_template` set `ScriptName`= 'at_wrathion_scorching_blister '   where `id`= 22681;
update `areatrigger_template` set `ScriptName`= 'at_wrathion_scales_of_wrathion '   where `id`= 22188;
update `areatrigger_template` set `ScriptName`= 'at_wrathion_crackling_shard '   where `id`= 22238;
update `areatrigger_template` set `ScriptName`= 'at_wrathion_smoke_and_mirrors '   where `id`= 4520 ;
update `areatrigger_template` set `ScriptName`= 'bfa_swiftness_ward_at '   where `id`= 17766;
update `areatrigger_template` set `ScriptName`= 'bfa_reinforcing_ward_at '   where `id`= 17771;
update `areatrigger_template` set `ScriptName`= 'bfa_yawning_gate_at '   where `id`= 13312;
update `areatrigger_template` set `ScriptName`= 'at_loose_sparks '   where `id`= 17715;
update `areatrigger_template` set `ScriptName`= 'bfa_at_cragmaw_charge '   where `id`= 17014;
update `areatrigger_template` set `ScriptName`= 'bfa_at_volatile_pod_explosion '   where `id`= 18227;
update `areatrigger_template` set `ScriptName`= 'bfa_at_vile_expulsion '   where `id`= 17928;
update `areatrigger_template` set `ScriptName`= 'areatrigger_blighted_corruption'   where `id`= 17948;
update `areatrigger_template` set `ScriptName`= 'at_wind_tunnel_l_to_r '   where `id`= 17765;
update `areatrigger_template` set `ScriptName`= 'at_wind_tunnel_r_to_l '   where `id`= 19645;
update `areatrigger_template` set `ScriptName`= 'areatrigger_plague_bomb '   where `id`= 17917;
update `areatrigger_template` set `ScriptName`= 'areatrigger_blood_geyser '   where `id`= 19185;
update `areatrigger_template` set `ScriptName`= 'at_slicing_hurricane'   where `id`= 19019;
update `areatrigger_template` set `ScriptName`= 'areatrigger_undulating_mass '   where `id`= 17350;
update `areatrigger_template` set `ScriptName`= 'areatrigger_undulating_mass '   where `id`= 18108;
update `areatrigger_template` set `ScriptName`= 'bfa_at_divide_and_conquer'   where `id`= 17064;
update `areatrigger_template` set `ScriptName`= 'bfa_at_divide_and_conquer '   where `id`= 17869;




update `creature_template` set `AIName`= '', `ScriptName`= 'npc_riding_pterrordax ' where `entry`= 149039;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_otoye ' where `entry`= 148372;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_master_mathias_shaw_148629 ' where `entry`= 148629;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_riding_gryphon ' where `entry`= 149050;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_nathanos_blightcaller_149506 ' where `entry`= 149506;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_paku_conclave ' where `entry`= 145405;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_gonk_conclave ' where `entry`= 148849;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_kimbul_conclave ' where `entry`= 145835;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_akunda_conclave ' where `entry`= 145397;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_ravenous_stalker ' where `entry`= 148962;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_kragwa ' where `entry`= 145075;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_bwonsamdi_conclave ' where `entry`= 149485;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_frida_ironbellows ' where `entry`= 144680;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_darkforged_crusader_145903 ' where `entry`= 145903;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_antoined_disciple_145898 ' where `entry`= 145898;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_grong ' where `entry`= 144637;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_apetagonizer_3000 ' where `entry`= 149611;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_high_tinker_mekkatorque ' where `entry`= 144796;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_gnomish_support_claw ' where `entry`= 145924;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_spark_bot ' where `entry`= 144942;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_explosive_sheep ' where `entry`= 148450;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_living_bomb_bod ' where `entry`= 146107;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_spirit_of_xuen ' where `entry`= 147069;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_spirit_of_niuzao ' where `entry`= 148344;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_generic_barrier ' where `entry`= 147374;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_super_meter ' where `entry`= 147374;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_king_rastakhan ' where `entry`= 145616;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_bwonsamdi ' where `entry`= 145644;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_opulence ' where `entry`= 145261;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_rawani_kanae ' where `entry`= 144683;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_zandalari_crusader_147896 ' where `entry`= 147896;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_rezani_disciple_147895 ' where `entry`= 147895;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_blackwater_behemoth ' where `entry`= 150653;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_oxygen_rich_membrane ' where `entry`= 150585;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_pufferfish ' where `entry`= 155278;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_darkwater_jellyfish ' where `entry`= 153779;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_commander_sivara ' where `entry`= 151881;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_lady_ashvane ' where `entry`= 152236;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_briny_bubble ' where `entry`= 153194;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_orgozoa ' where `entry`= 152128;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_zoatroid ' where `entry`= 156625;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_coral_growth ' where `entry`= 152726;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_azshari_witch ' where `entry`= 156132;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_dreadcoil_hulk ' where `entry`= 156133;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_zanjir_myrmidon ' where `entry`= 156131;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_hattchery_eggs ' where `entry`= 154361;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_queen_azshara ' where `entry`= 152910;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_titan_console ' where `entry`= 154959;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_aethanel ' where `entry`= 153059;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_cyranus ' where `entry`= 153060;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_overzealous_hulk ' where `entry`= 155643;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_crushing_depths_stalker ' where `entry`= 155845;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_ancient_ward ' where `entry`= 153175;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_loyal_myrmidon ' where `entry`= 154565;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_lightning_orbs_ep ' where `entry`= 153521;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_silivaz_the_zealous ' where `entry`= 152853;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_pashmar_the_fanatical ' where `entry`= 152852;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_potent_spark ' where `entry`= 153335;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_decree_controller ' where `entry`= 154480;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_radiance_of_azshara ' where `entry`= 152364;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_stormwraith ' where `entry`= 152512;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_stormlings ' where `entry`= 152816;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_zaqul ' where `entry`= 150859;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_maddening_eruption_trigger ' where `entry`= 151586;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_crushing_grasp_trigger ' where `entry`= 151034;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_horrific_summoner ' where `entry`= 154175;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_horrific_vision ' where `entry`= 151581;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_tentacle_delirium ' where `entry`= 152574;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_echo_of_fear ' where `entry`= 154682;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_echo_of_delirium ' where `entry`= 154685;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_horrific_summoner_dark_passage ' where `entry`= 154174;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_fear_gate ' where `entry`= 152192;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_teleporter_queen_azshara ' where `entry`= 156646;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_queen_azshara_154480 ' where `entry`= 154480;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_irontide_granadier ' where `entry`= 129758;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_lightning ' where `entry`= 130099;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_ludwig_von_tortollan ' where `entry`= 129699;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_revitalizing_brew ' where `entry`= 134021;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_reanimation_totem ' where `entry`= 127315;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_mob_echo_of_shadra ' where `entry`= 126734;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_dazar ' where `entry`= 136160;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_mchimba ' where `entry`= 134993;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_golden_serpent ' where `entry`= 135322;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_carapace ' where `entry`= 157439;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_thrashing_tentacle ' where `entry`= 162159;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_synthesis_growth ' where `entry`= 157475;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_mycelial_cyst ' where `entry`= 157461;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_nzoth_controller ' where `entry`= 161884;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_gaze_of_madness ' where `entry`= 157442;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_wrathion_carapace ' where `entry`= 160177;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_drestagath ' where `entry`= 157602;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_eye_of_drestagath ' where `entry`= 157612;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_tentacle_of_drestagath ' where `entry`= 157614;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_maw_of_drestagath ' where `entry`= 157613;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_acidic_aqir ' where `entry`= 159173;
update `creature_template` set `AIName`= '', `ScriptName`= 'ilgynoth_n ' where `entry`= 158328;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_organ_of_corruption ' where `entry`= 158343;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_blood_of_nyalotha ' where `entry`= 159514;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_clotted_corruption ' where `entry`= 163678;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_maut ' where `entry`= 156523;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_nzoth ' where `entry`= 158041;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_psychus ' where `entry`= 158376;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_exposed_synapse ' where `entry`= 159578;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_basher_tentacle ' where `entry`= 158367;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_spike_tentacle ' where `entry`= 160249;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_corruptor_tentacle_158375 ' where `entry`= 158375;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_minds_eye ' where `entry`= 158122;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_thought_harvester ' where `entry`= 162933;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_prophet_skitra ' where `entry`= 157620;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_shredded_psyche ' where `entry`= 158781;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_prophet_skitra_projection ' where `entry`= 157620;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_image_of_absolution ' where `entry`= 160990;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_raden ' where `entry`= 156866;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_shadhar ' where `entry`= 157231;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_living_miasma ' where `entry`= 157229;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_vexiona ' where `entry`= 157354;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_void_ascendant ' where `entry`= 162719;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_gift_of_the_void ' where `entry`= 157422;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_dark_gateway ' where `entry`= 161148;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_wrathion ' where `entry`= 156818;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_molten_eruption_stalker ' where `entry`= 157348;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_crackling_shard ' where `entry`= 158327;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_ashwalker_assasin ' where `entry`= 160291;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_xanesh ' where `entry`= 156575;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_queen_azshara_xanesh ' where `entry`= 156579;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_torment_vehicle ' where `entry`= 156840;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_flayed_soul ' where `entry`= 157005;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_wrathion_special ' where `entry`= 161720;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_gunker ' where `entry`= 150222;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_squirt_bot ' where `entry`= 154746;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_head_machinist_sparkflux ' where `entry`= 144248;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_hk_8 ' where `entry`= 150190;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_tank_buster_mk1 ' where `entry`= 150295;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_walkie_shockie_x1 ' where `entry`= 163746;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_overcharge_station ' where `entry`= 152138;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_hk8_arena_center_stalker ' where `entry`= 152272;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_tank_buster_mk2 ' where `entry`= 155760;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_king_gobbamak ' where `entry`= 150159;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_stolen_scrapbot ' where `entry`= 153172;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_stolen_shock_coil ' where `entry`= 153245;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_king_mechagon ' where `entry`= 150397;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_aeriel_unit ' where `entry`= 150396;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_omega_buster ' where `entry`= 144249;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_plasma_orb ' where `entry`= 150485;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_kujo ' where `entry`= 144246;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_flying_claw ' where `entry`= 150442;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_smoke_cloud_stalker ' where `entry`= 153761;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_buzz_saw ' where `entry`= 145312;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_aqusirr ' where `entry`= 134056;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_aqualing ' where `entry`= 134828;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_grasping_tentacle ' where `entry`= 134612;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_lord_stormsong ' where `entry`= 134060;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_awoken_void ' where `entry`= 137036;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_brother_ironhull ' where `entry`= 134063;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_galecaller_faye ' where `entry`= 134058;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_blowback ' where `entry`= 136314;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_volzith_the_whisperer ' where `entry`= 134069;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_tentacle ' where `entry`= 135987;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_manifestation_of_the_deep ' where `entry`= 135903;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_forgotten_denizen ' where `entry`= 136297;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_sunken_denizen ' where `entry`= 136100;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_rexxar ' where `entry`= 139971;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_brother_pike ' where `entry`= 139970;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_lord_stormsong ' where `entry`= 139737;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_meat_hook_target_stalker ' where `entry`= 129765;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_dread_captain_lockwood ' where `entry`= 129208;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_unstable_ordnace ' where `entry`= 143618;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_dread_cannon ' where `entry`= 139277;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_hadal_darkfathom ' where `entry`= 128651;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_viqgoth ' where `entry`= 128652;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_demolishing_terror ' where `entry`= 137614;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_cannon_viq ' where `entry`= 137123;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_jaina_sob_outro_ali ' where `entry`= 142486;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_adderis ' where `entry`= 133379;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_aspix ' where `entry`= 133944;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_avatar_of_sethraliss ' where `entry`= 133392;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_hoodoo_hexer ' where `entry`= 135552;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_plague_toad_137233 ' where `entry`= 137233;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_energy_fragment ' where `entry`= 142929;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_galvazzt ' where `entry`= 133389;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_energy_core ' where `entry`= 135445;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_merektha ' where `entry`= 133384;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_loose_spark ' where `entry`= 136108;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_Coin_operated_crowd_pummeler ' where `entry`= 129214;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_mogul_razdunk ' where `entry`= 129232;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_rixxa_fluxflame ' where `entry`= 129231;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_mine_cart_136776 ' where `entry`= 136776;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_cragmaw_the_infested ' where `entry`= 131817;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_blood_larves ' where `entry`= 132080;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_blood_tick ' where `entry`= 132051;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_elder_leaxa ' where `entry`= 131318;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_blood_effigy ' where `entry`= 134701;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_sporecaller_zancha ' where `entry`= 131383;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_spore_pod ' where `entry`= 131597;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_volatile_pod ' where `entry`= 139127;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_unbound_abomination ' where `entry`= 133007;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_titan_keeper_hezrel ' where `entry`= 134419;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_blood_visage ' where `entry`= 137103;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_rotting_spore ' where `entry`= 137458;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_underrot_faceless_corruptor ' where `entry`= 138281;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_sand_queen ' where `entry`= 127479;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_overseer_korgus ' where `entry`= 127503;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_jes_howlis ' where `entry`= 127484;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_knight_captain_valyri ' where `entry`= 127490;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_tol_dagor_ashavane_quartermaster ' where `entry`= 131856;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_tol_dagor_munitions_barrel ' where `entry`= 129437;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_fetid_devourer ' where `entry`= 133298;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_corruption_corpuscle ' where `entry`= 133492;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_ghuun ' where `entry`= 132998;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_power_matrix ' where `entry`= 134107;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_amorphous_cyst ' where `entry`= 134034;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_cyclopean_terror ' where `entry`= 138531;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_dark_young ' where `entry`= 134635;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_reorigination_drive ' where `entry`= 136263;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_blightspreader_tendril ' where `entry`= 134590;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_ghuun_non_static ' where `entry`= 163405;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_matrix_surge ' where `entry`= 139910;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_bursting_boil ' where `entry`= 141695;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_gibbering_horror ' where `entry`= 134010;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_spawn_of_ghuun ' where `entry`= 141851;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_mother ' where `entry`= 135452;
update `creature_template` set `AIName`= '', `ScriptName`= 'uldir_chamber_1 ' where `entry`= 136429;
update `creature_template` set `AIName`= '', `ScriptName`= 'uldir_chamber_2 ' where `entry`= 137022;
update `creature_template` set `AIName`= '', `ScriptName`= 'uldir_chamber_3 ' where `entry`= 137023;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_mother_wind_tunnel ' where `entry`= 136322;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_corners_purifying_flame ' where `entry`= 136325;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_summons_purifying_flame ' where `entry`= 136289;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_mother_defense_grid ' where `entry`= 136298;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_red_queen_room ' where `entry`= 136736;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_surgical_grid ' where `entry`= 136554;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_mythrax ' where `entry`= 134546;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_oblivion_sphere ' where `entry`= 138492;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_xalzaix ' where `entry`= 138324;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_taloc ' where `entry`= 137119;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_blood_storm ' where `entry`= 137578;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_vectis ' where `entry`= 134442;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_plague_amalgam ' where `entry`= 135016;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_engorged_parasite ' where `entry`= 140478;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_pathogen_bomb ' where `entry`= 135687;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_zekvoz ' where `entry`= 134445;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_silithid_warrior ' where `entry`= 134503;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_surging_darkness ' where `entry`= 135183;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_nerubian_voidweaver ' where `entry`= 135824;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_orb_of_corruption ' where `entry`= 159150;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_projection_of_cthun ' where `entry`= 134726;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_projection_of_yogg_saron ' where `entry`= 135129;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_ominous_cloud_stalker ' where `entry`= 135079;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_zul ' where `entry`= 138967;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_pool_of_darkness ' where `entry`= 139171;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_animated_ichor ' where `entry`= 139195;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_gorak_tul ' where `entry`= 131864;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_deathtouched_slaver ' where `entry`= 135552;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_raal_the_gluttonous ' where `entry`= 131863;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_wasting_servant ' where `entry`= 133361;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_soulbound_goliath ' where `entry`= 131667;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_soul_thorns ' where `entry`= 136330;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_burning_soul ' where `entry`= 136436;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_lucille_waycrest_intro ' where `entry`= 136084;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_lady_waycrest_intro ' where `entry`= 135357;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_inquisitor_mace ' where `entry`= 136086;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_inquisitor_notley ' where `entry`= 136094;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_inquisitor_yorrick' where `entry`= 136085;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_inquisitor_sterntide ' where `entry`= 136087;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_dunegorger_kraulok ' where `entry`= 138794;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_jiarak ' where `entry`= 132253;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_tzane ' where `entry`= 132701;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_orb_of_swirling ' where `entry`= 120988;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_heartsbane_triad' where `entry`= 131823;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_heartsbane_triad' where `entry`= 131824;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_heartsbane_triad ' where `entry`= 131825;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_lord_and_lady_waycrest ' where `entry`= 131527;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_lord_and_lady_waycrest ' where `entry`= 131545;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_generic_zul_minion' where `entry`= 139059;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_generic_zul_minion' where `entry`= 139057;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_generic_zul_minion' where `entry`= 139051;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_generic_zul_minion ' where `entry`= 138493;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_chopper_redhook' where `entry`= 128650;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_chopper_redhook' where `entry`= 128649;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_essence_raden' where `entry`= 156884;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_essence_raden' where `entry`= 156980;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_essence_raden' where `entry`= 160663;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_void_hunter_crackling_stalker' where `entry`= 157366;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_void_hunter_crackling_stalker' where `entry`= 157365;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_fanatic' where `entry`= 162715;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_fanatic' where `entry`= 162716;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_ritual_obelisk' where `entry`= 157126;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_ritual_obelisk' where `entry`= 162098;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_trixie_naeno' where `entry`= 150712;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_trixie_naeno' where `entry`= 153755;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_trixie_naeno' where `entry`= 153756;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_tusle_tonks' where `entry`= 144244;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_tusle_tonks' where `entry`= 145185;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_generic_horde_bod_story' where `entry`= 147383;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_generic_horde_bod_story' where `entry`= 147367;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_generic_horde_bod_story' where `entry`= 147372;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_generic_horde_bod_story ' where `entry`= 147370;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_conclave_of_the_chosen' where `entry`= 144767;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_conclave_of_the_chosen' where `entry`= 144747;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_conclave_of_the_chosen' where `entry`= 144963;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_conclave_of_the_chosen' where `entry`= 144941;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_jadefire_masters' where `entry`= 144693;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_jadefire_masters' where `entry`= 144690;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_jadefire_masters_horde' where `entry`= 148238;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_jadefire_masters_horde' where `entry`= 146100;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_king_rastakhan_minion' where `entry`= 146322;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_king_rastakhan_minion' where `entry`= 146320;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_king_rastakhan_minion' where `entry`= 146326;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_phantom_generic' where `entry`= 146492;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_phantom_generic' where `entry`= 146491;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_phantom_generic' where `entry`= 146493;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_king_rastakhan_static_generic' where `entry`= 146731;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_king_rastakhan_static_generic' where `entry`= 146766;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_plague_toad' where `entry`= 146695;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_plague_toad' where `entry`= 146698;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_plague_toad' where `entry`= 146700;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_azshara_indomitable_devoted' where `entry`= 154240;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_azshara_indomitable_devoted' where `entry`= 155354;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_tidemistresses' where `entry`= 153091;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_tidemistresses' where `entry`= 153090;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_tidemistresses' where `entry`= 153092;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_council_tribes' where `entry`= 135475;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_council_tribes' where `entry`= 135470;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_council_tribes' where `entry`= 135472;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_zanazal_totem' where `entry`= 135764;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_zanazal_totem' where `entry`= 135761;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_zanazal_totem' where `entry`= 135765;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_zanazal_totem' where `entry`= 135759;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_dazar_minions' where `entry`= 136984;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_dazar_minions' where `entry`= 136976;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_hivemind' where `entry`= 157253;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_hivemind' where `entry`= 157254;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_hivemind' where `entry`= 160599;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_hivemind' where `entry`= 157255;
update `creature_template` set `AIName`= '', `ScriptName`= 'npc_hivemind ' where `entry`= 157256;





delete from `creature_text` where `CreatureID` in ( 
149039,148372,148629,149050,149506,145405,148849,145835,145397,148962,145075,149485,144680,145903,145898,144637,149611,144796,145924,144942,148450,146107,147069,148344,147374,147374,145616,145644,145261,144683,147896,147895,
150653,150585,155278,153779,151881,152236,153194,152128,156625,152726,156132,156133,156131,154361,152910,154959,153059,153060,155643,155845,153175,154565,153521,152853,152852,153335,154480,152364,152512,152816,150859,151586,
151034,154175,151581,152574,154682,154685,154174,152192,156646,154480,129758,130099,129699,134021,127315,126734,136160,134993,135322,157439,162159,157475,157461,161884,157442,160177,157602,157612,157614,157613,159173,158328,
158343,159514,163678,156523,158041,158376,159578,158367,160249,158375,158122,162933,157620,158781,157620,160990,156866,157231,157229,157354,162719,157422,161148,156818,157348,158327,160291,156575,156579,156840,157005,161720,
150222,154746,144248,150190,150295,163746,152138,152272,155760,150159,153172,153245,150397,150396,144249,150485,144246,150442,153761,145312,134056,134828,134612,134060,137036,134063,134058,136314,134069,135987,135903,136297,
136100,139971,139970,139737,129765,129208,143618,139277,128651,128652,137614,137123,142486,133379,133944,133392,135552,137233,142929,133389,135445,133384,136108,129214,129232,129231,136776,131817,132080,132051,131318,134701,
131383,131597,139127,133007,134419,137103,137458,138281,127479,127503,127484,127490,131856,129437,133298,133492,132998,134107,134034,138531,134635,136263,134590,163405,139910,141695,134010,141851,135452,136429,137022,137023,
136322,136325,136289,136298,136736,136554,134546,138492,138324,137119,137578,134442,135016,140478,135687,134445,134503,135183,135824,159150,134726,135129,135079,138967,139171,139195,131864,135552,131863,133361,131667,136330,
136436,136084,135357,136086,136094,136085,136087,138794,132253,132701,120988,131823,131824,131825,131527,131545,139059,139057,139051,138493,128650,128649,156884,156980,160663,157366,157365,162715,162716,157126,162098,150712,
153755,153756,144244,145185,147383,147367,147372,147370,144767,144747,144963,144941,144693,144690,148238,146100,146322,146320,146326,146492,146491,146493,146731,146766,146695,146698,146700,154240,155354,153091,153090,153092,
135475,135470,135472,135764,135761,135765,135759,136984,136976,157253,157254,160599,157255,157256);

INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(127479, 0, 0, '|TInterface\\Icons\\SPELL_NATURE_EARTHQUAKE:20|t%s targets |cFFFF0000$n|r with |cFFFF0000|Hspell:257617|h[Upheaval]|h|r! Spread out!', 41, 0, 100, 0, 0, 0, 0, 0, 'The Sand Queen to Player'),
(127484, 0, 0, 'Fresh meat!', 14, 0, 100, 0, 0, 98150, 1393, 0, 'Jes Howlis'),
(127484, 1, 0, '|TInterface\\Icons\\ABILITY_ROGUE_FANOFKNIVES:20|t%s is preparing to throw |cFFFF0000|Hspell:257785|h[Flashing Daggers]|h|r! Hide!', 41, 0, 100, 0, 0, 98160, 0, 0, 'Jes Howlis'),
(127484, 2, 0, 'This shiv is going right through your ribcage!', 14, 0, 100, 0, 0, 98160, 24871, 0, 'Jes Howlis'),
(127484, 3, 0, 'Come on, boys! Show them why this is our block!', 14, 0, 100, 0, 0, 98156, 61212, 0, 'Jes Howlis'),
(127484, 4, 0, 'On your feet, little brother! There\'s killing to be done.', 14, 0, 100, 0, 0, 98157, 61619, 0, 'Jes Howlis'),
(127484, 5, 0, 'I\'ve been sharpening these blades just for you.', 14, 0, 100, 0, 0, 98155, 77509, 0, 'Jes Howlis'),
(127484, 6, 0, 'But I was... up for... parole...', 14, 0, 100, 0, 0, 98154, 91097, 0, 'Jes Howlis to Player'),
(127490, 0, 0, 'It\'s time to turn up the heat!', 14, 0, 100, 0, 0, 98134, 0, 0, 'Knight Captain Valyri'),
(127490, 1, 0, '|TInterface\\Icons\\SPELL_MAGE_FLAMEORB:20|tQuickly move Munitions Barrels out of fires to prevent %s from exploding them!', 41, 0, 100, 0, 0, 0, 0, 0, 'Knight Captain Valyri'),
(127490, 2, 0, 'I\'ll reduce you to cinders!', 14, 0, 100, 0, 0, 98136, 0, 0, 'Knight Captain Valyri to Munitions Barrel'),
(127490, 3, 0, 'More fuel for the flames! Now!', 14, 0, 100, 0, 0, 98137, 0, 0, 'Knight Captain Valyri to Explosive Munitions'),
(127490, 4, 0, 'I want these fires burning hotter!', 14, 0, 100, 0, 0, 98138, 0, 0, 'Knight Captain Valyri to Invisible Stalker (Scale x0.5)'),
(127490, 5, 0, 'The brightest stars... burn out... the fastest.', 14, 0, 100, 0, 0, 98138, 0, 0, 'Knight Captain Valyri to Player'),
(127503, 0, 0, 'So kind of you to return for your executions.', 14, 0, 100, 0, 0, 98171, 0, 0, 'Overseer Korgus'),
(127503, 1, 0, 'I\'ve been eager to try these rounds on living targets.', 14, 0, 100, 0, 0, 98175, 0, 0, 'Overseer Korgus'),
(127503, 2, 0, 'You\'ll get caught in the crossfire!', 14, 0, 100, 0, 0, 98176, 0, 0, 'Overseer Korgus'),
(127503, 3, 0, 'Run all you want! I never miss.', 14, 0, 100, 0, 0, 98177, 0, 0, 'Overseer Korgus'),
(127503, 4, 0, 'Your sentence is death!', 14, 0, 100, 0, 0, 98172, 0, 0, 'Overseer Korgus to Player'),
(127503, 5, 0, 'Good... shot...', 14, 0, 100, 0, 0, 98178, 0, 0, 'Overseer Korgus to Player'),
(128649, 0, 0, 'Your end is here, Horde scum!', 14, 0, 100, 34, 0, 97202, 0, 0, 'Sergeant Bainbridge'),
(128649, 1, 0, 'I will cut you down!', 14, 0, 100, 34, 0, 97202, 0, 0, 'Sergeant Bainbridge'),
(128649, 2, 0, '|TInterface\\ICONS\\ABILITY_VEHICLE_SIEGEENGINECANNON.BLP:20|t Incoming |cFFF00000|Hspell:257585|h[Cannon Barrage]|h|r!', 41, 0, 100, 34, 0, 97196, 0, 0, 'Sergeant Bainbridge'),
(128649, 3, 0, 'Cannons! Fire on my position!', 14, 0, 100, 34, 0, 97195, 0, 0, 'Sergeant Bainbridge'),
(128649, 4, 0, 'Prepare to die!', 14, 0, 100, 0, 0, 97198, 0, 0, 'Sergeant Bainbridge'),
(128649, 5, 0, 'You don\'t... deserve... victory...', 14, 0, 100, 0, 0, 97197, 0, 0, 'Sergeant Bainbridge'),
(128651, 0, 0, 'Full fathom five your bones shall lie!', 14, 0, 100, 0, 0, 97189, 0, 0, 'Hadal Darkfathom'),
(128651, 1, 0, 'Pulverized!', 14, 0, 100, 34, 0, 97193, 0, 0, 'Hadal Darkfathom'),
(128651, 2, 0, 'The depths will be your tomb!', 14, 0, 100, 34, 0, 97190, 0, 0, 'Hadal Darkfathom'),
(128651, 3, 0, 'Break!', 14, 0, 100, 34, 0, 97187, 0, 0, 'Hadal Darkfathom'),
(128651, 4, 0, 'Return... my body... to the sea...', 14, 0, 100, 0, 0, 97191, 0, 0, 'Hadal Darkfathom'),
(129208, 0, 0, 'No survivors!', 14, 0, 100, 0, 0, 103699, 0, 0, 'Dread Captain Lockwood'),
(129208, 1, 0, 'Here\'s lead in yer gut!', 14, 0, 100, 34, 0, 102104, 0, 0, 'Dread Captain Lockwood'),
(129208, 2, 0, 'All hands... ATTACK!', 14, 0, 100, 0, 0, 102109, 0, 0, 'Dread Captain Lockwood'),
(129208, 3, 0, 'Decimator rounds... FIRE!', 14, 0, 100, 0, 0, 102103, 0, 0, 'Dread Captain Lockwood'),
(129208, 4, 0, 'Clear the deck!', 14, 0, 100, 0, 0, 102105, 0, 0, 'Dread Captain Lockwood'),
(129208, 5, 0, 'I\'ll carve ya to ribbons!', 14, 0, 100, 34, 0, 102106, 0, 0, 'Dread Captain Lockwood'),
(129208, 6, 0, 'I sail to... uncharted waters...', 14, 0, 100, 0, 0, 102106, 0, 0, 'Dread Captain Lockwood'),
(129214, 0, 0, 'Venture Company thanks you for your patronage. Please enjoy your purchase of the basic pummeling package.', 14, 0, 100, 0, 0, 97390, 0, 0, 'Coin-Operated Crowd Pummeler to Player - TALK_AGGRO'),
(129214, 0, 1, 'Systems engaged. Commence pummeling.', 14, 0, 100, 0, 0, 97384, 0, 0, 'Coin-Operated Crowd Pummeler - TALK_AGGRO'),
(129214, 1, 0, 'Voltage increased.', 14, 0, 100, 0, 0, 97381, 0, 0, 'Coin-Operated Crowd Pummeler - TALK_STATIC_PULSE'),
(129214, 2, 0, '|TINTERFACE\\ICONS\\INV_MISC_SOCCERBALL.BLP:20|t Coin-Operated Crowd Pummeler casts |cFFFF0000|Hspell:256214|h[Footbomb Launcher]|h|r!', 41, 0, 100, 0, 0, 115344, 0, 0, 'Coin-Operated Crowd Pummeler - TALK_FOOTBOMB_LAUNCHER'),
(129214, 3, 0, 'Lethal force authorized.', 14, 0, 100, 0, 0, 97380, 0, 0, 'Coin-Operated Crowd Pummeler - TALK_SHOCKING_CLAW'),
(129214, 4, 0, 'Damaging this unit violates the terms of use.', 14, 0, 100, 0, 0, 97379, 0, 0, 'Coin-Operated Crowd Pummeler to 129246 - TALK_COIN_MAGNET'),
(129214, 5, 0, 'Systems... failing. Coin release... malfunction...', 14, 0, 100, 0, 0, 97385, 0, 0, 'Coin-Operated Crowd Pummeler to Player - TALK_DEATH'),
(129231, 0, 0, 'Â¡Â¡Â¡You are not prepared!!!!', 14, 0, 100, 0, 0, 0, 0, 0, 'Rixxafluxflame - YELL_AGGRO'),
(129231, 0, 1, 'Burn...', 14, 0, 100, 0, 0, 0, 0, 0, 'Rixxafluxflame- YELL_CHEMICAL_BURN'),
(129231, 1, 0, 'Figth with me.', 14, 0, 100, 0, 0, 0, 0, 0, 'Rixxafluxflame - YELL_PROPELLANT_BLAST'),
(129231, 2, 0, 'Arg', 41, 0, 100, 0, 0, 0, 0, 0, 'Rixxafluxflame - YELL_SEARING_REAGENT'),
(129231, 3, 0, 'Oh nooo...', 14, 0, 100, 0, 0, 0, 0, 0, 'Rixxafluxflame - YELL_KILLED'),
(129232, 0, 0, 'Â¡Â¡Â¡You are not prepared!!!!', 14, 0, 100, 0, 0, 0, 0, 0, 'Mogulrazdunk - YELL_AGGRO'),
(129232, 0, 1, 'Burn...', 14, 0, 100, 0, 0, 0, 0, 0, 'Mogulrazdunk- YELL_GATLING_GUN'),
(129232, 1, 0, 'Figth with me.', 14, 0, 100, 0, 0, 0, 0, 0, 'Mogulrazdunk - YELL_DRILL_SMASH'),
(129232, 2, 0, 'Arg', 41, 0, 100, 0, 0, 0, 0, 0, 'Mogulrazdunk - YELL_MICRO_MISSILES'),
(129232, 3, 0, 'Oh nooo...', 14, 0, 100, 0, 0, 0, 0, 0, 'Mogulrazdunk - YELL_KILLED'),
(131318, 1, 0, 'Rot and wither!', 14, 0, 100, 0, 0, 101026, 148211, 0, 'Elder Leaxa'),
(131318, 2, 0, 'G\'huun be everywhere!', 14, 0, 100, 0, 0, 101025, 148212, 0, 'Elder Leaxa'),
(131318, 3, 0, '|TINTERFACE\\ICONS\\INV_TikiMan2_Bloodtroll.blp:20|t Elder Leaxa begins to cast |cFFF00000|Hspell:264603|h[Blood Mirror]|h|r!', 41, 0, 100, 0, 0, 101025, 157334, 0, 'Elder Leaxa'),
(131318, 5, 0, 'Time for de sacrifice!', 14, 0, 100, 0, 0, 101029, 148174, 0, 'Elder Leaxa'),
(131318, 200, 0, 'For de glory of G\'huun!', 14, 0, 100, 0, 0, 101028, 148173, 0, 'Elder Leaxa'),
(131318, 202, 0, 'My blood for G\'huun...', 14, 0, 100, 0, 0, 101030, 148175, 0, 'Elder Leaxa'),
(131383, 1, 0, 'Corruption blooms!', 14, 0, 100, 0, 0, 109962, 143953, 0, 'Sporecaller Zancha'),
(131383, 4, 0, '|TInterface\\Icons\\ABILITY_EARTHEN_PILLAR.BLP:20|t %s targets you with |cFFFF0000|Hspell:259720|h[Upheaval]|h|r!', 42, 0, 100, 0, 0, 0, 161956, 0, 'Sporecaller Zancha'),
(131383, 5, 0, 'Grow!', 14, 0, 100, 0, 0, 109960, 143951, 0, 'Sporecaller Zancha'),
(131383, 200, 0, 'Harvest!', 14, 0, 100, 0, 0, 109965, 143939, 0, 'Sporecaller Zancha'),
(131383, 201, 0, 'Rot must spread!', 14, 0, 100, 0, 0, 109964, 143938, 0, 'Sporecaller Zancha'),
(131383, 202, 0, 'Everything... decays...', 14, 0, 100, 0, 0, 109966, 143960, 0, 'Sporecaller Zancha'),
(131527, 0, 0, 'Rot!', 14, 0, 100, 0, 0, 0, 145960, 0, 'Lord Waycrest'),
(131527, 1, 0, 'Fester!', 14, 0, 100, 0, 0, 0, 143941, 0, 'Lord Waycrest'),
(131545, 0, 0, 'Oh look, husband. Your supper has arrived.', 14, 0, 100, 0, 0, 0, 145919, 0, 'Lady Waycrest'),
(131545, 1, 0, '|TInterface\\ICONS\\INV_MISC_VOLATILESHADOW:20|t Lady Waycrest starts casting |cFFFF0404|Hspell:268306|h[Discordant Cadenza]|h|r!', 41, 0, 100, 0, 0, 0, 161927, 0, 'Lady Waycrest'),
(131545, 2, 0, 'Our bond can never be broken!', 14, 0, 100, 0, 0, 0, 145926, 0, 'Lady Waycrest'),
(131545, 3, 0, 'No! You won\'t take him from me!', 14, 0, 100, 0, 0, 0, 145924, 0, 'Lady Waycrest'),
(131545, 4, 0, 'We will never be parted...', 14, 0, 100, 0, 0, 0, 145954, 0, 'Lady Waycrest'),
(131545, 5, 0, 'I will never let him go!', 14, 0, 100, 0, 0, 0, 145925, 0, 'Lady Waycrest'),
(131667, 0, 0, 'Beware our torment!', 14, 0, 100, 0, 0, 0, 145080, 0, 'Soulbound Goliath'),
(131667, 1, 0, 'The thorns seek your soul!', 14, 0, 100, 0, 0, 0, 145130, 0, 'Soulbound Goliath'),
(131667, 2, 0, '|TInterface\\Icons\\Ability_Earthen_Pillar.blp:20|t$n is trapped in |cFFF00000|Hspell:260551|h[Soul Thorns]|h|r!', 41, 0, 100, 0, 0, 0, 162151, 0, 'Soulbound Goliath'),
(131667, 3, 0, '|TInterface\\ICONS\\ABILITY_DEATHKNIGHT_SOULREAPER:20|t Soulbound Goliath\'s damage increases with each stack of |cFFFF0404|Hspell:260512|h[Soul Harvest]|h|r!', 42, 0, 100, 0, 0, 0, 156331, 0, 'Soulbound Goliath'),
(131667, 4, 0, 'Beware the thorns!', 14, 0, 100, 0, 0, 0, 145098, 0, 'Soulbound Goliath'),
(131667, 5, 0, 'Yes! Release us!', 14, 0, 100, 0, 0, 0, 145094, 0, 'Soulbound Goliath'),
(131667, 6, 0, 'Thank... you...', 14, 0, 100, 0, 0, 0, 145091, 0, 'Soulbound Goliath'),
(131667, 7, 0, 'Fire will be its undoing!', 14, 0, 100, 0, 0, 0, 145122, 0, 'Soulbound Goliath'),
(131667, 8, 0, 'Finally... free...', 14, 0, 100, 0, 0, 0, 145092, 0, 'Soulbound Goliath'),
(131667, 9, 0, 'Flee! There is no hope!', 14, 0, 100, 0, 0, 0, 145085, 0, 'Soulbound Goliath'),
(131667, 10, 0, 'You have... released us...', 14, 0, 100, 0, 0, 0, 145093, 0, 'Soulbound Goliath'),
(131823, 0, 0, 'I\'ll carve screams from your flesh!', 14, 0, 100, 0, 0, 0, 144939, 0, 'Sister Malady'),
(131823, 1, 0, 'You\'ve had your turn!', 14, 0, 100, 0, 0, 0, 144944, 0, 'Sister Malady'),
(131823, 2, 0, 'Your destruction is at hand!', 14, 0, 100, 0, 0, 0, 144945, 0, 'Sister Malady'),
(131823, 3, 0, 'Such lovely agony!', 14, 0, 100, 0, 0, 0, 144941, 0, 'Sister Malady'),
(131823, 4, 0, 'You bear the black mark!', 14, 0, 100, 0, 0, 0, 144959, 0, 'Sister Malady'),
(131823, 5, 0, 'My body cracks... but my curse... shall linger...', 14, 0, 100, 0, 0, 0, 144940, 0, 'Sister Malady'),
(131824, 0, 0, 'Dance, puppet! Dance!', 14, 0, 100, 0, 0, 0, 144936, 0, 'Sister Solena'),
(131824, 1, 0, 'Give me the iris, you fool! Only I can focus its power!', 14, 0, 100, 0, 0, 0, 144935, 0, 'Sister Solena'),
(131824, 2, 0, 'You belong to me now!', 14, 0, 100, 0, 0, 0, 144937, 0, 'Sister Solena'),
(131824, 3, 0, '|TInterface\\ICONS\\SPELL_SHADOW_ANTISHADOW:20|t %s begins to cast |cFFFF0404|Hspell:260773|h[Dire Ritual]|h|r!', 41, 0, 100, 0, 0, 0, 151946, 0, 'Sister Solena'),
(131824, 4, 0, 'Blackened soul, the pitch of night, lay to waste all those in sight!', 14, 0, 100, 0, 0, 0, 144938, 0, 'Sister Solena'),
(131824, 5, 0, 'Such a fragile soul!', 14, 0, 100, 0, 0, 0, 144932, 0, 'Sister Solena'),
(131824, 6, 0, 'Death will not silence me...', 14, 0, 100, 0, 0, 0, 144933, 0, 'Sister Solena'),
(131824, 7, 0, 'You have no power here!', 14, 0, 100, 0, 0, 0, 144931, 0, 'Sister Solena'),
(131825, 0, 0, 'Release the iris to me, sister!', 14, 0, 100, 0, 0, 0, 144962, 0, 'Sister Briar'),
(131825, 1, 0, 'My thorns will rip you to shreds!', 14, 0, 100, 0, 0, 0, 144961, 0, 'Sister Briar'),
(131825, 2, 0, 'The more you struggle, the more you\'ll bleed!', 14, 0, 100, 0, 0, 0, 144960, 0, 'Sister Briar'),
(131825, 3, 0, 'I love the sound of snapping limbs.', 14, 0, 100, 0, 0, 0, 144955, 0, 'Sister Briar'),
(131825, 4, 0, 'Your skulls will make lovely ornaments.', 14, 0, 100, 0, 0, 0, 144958, 0, 'Sister Briar'),
(131825, 5, 0, 'My roots will sprout again...', 14, 0, 100, 0, 0, 0, 144956, 0, 'Sister Briar'),
(131856, 0, 0, 'More bombs incoming!', 14, 0, 100, 0, 0, 98146, 0, 0, 'Ashvane Quartermaster'),
(131856, 1, 0, 'Yes, ma\'am!', 14, 0, 100, 0, 0, 98145, 118627, 0, 'Ashvane Quartermaster'),
(131863, 0, 0, 'Stay for dinner!', 14, 0, 100, 0, 0, 0, 150384, 0, 'Raal the Gluttonous'),
(131863, 1, 0, '|TInterface\\ICONS\\INV_Misc_Bell_Green:20|t Raal the Gluttonous starts to cast |cFFFF0404|Hspell:264931|h[Call Servant]|h|r!', 41, 0, 100, 0, 0, 0, 161928, 0, 'Raal the Gluttonous'),
(131863, 2, 0, 'All staff to the kitchen!', 14, 0, 100, 0, 0, 0, 150393, 0, 'Raal the Gluttonous'),
(131863, 3, 0, 'Such... delicious... agony...', 14, 0, 100, 0, 0, 0, 150390, 0, 'Raal the Gluttonous'),
(131863, 4, 0, 'Fresh meat!', 14, 0, 100, 0, 0, 0, 137666, 0, 'Raal the Gluttonous'),
(131864, 0, 0, 'Death consumes all!', 14, 0, 100, 0, 0, 0, 150395, 0, 'Gorak Tul'),
(131864, 1, 0, 'Rise!', 14, 0, 100, 0, 0, 0, 150400, 0, 'Gorak Tul'),
(131864, 2, 0, 'Death... cannot hold me...', 14, 0, 100, 0, 0, 0, 150396, 0, 'Gorak Tul'),
(132998, 0, 0, 'The seals are broken. The end is here. Come, and be the first to receive my gift.', 15, 0, 100, 0, 0, 106373, 0, 0, 'G\'huun to Player'),
(132998, 1, 0, 'You will carry my pestilence, and a vast, bubbling, putrid cyst will cover the world.', 15, 0, 100, 0, 0, 106377, 0, 0, 'G\'huun to Player'),
(132998, 2, 0, 'Oou gul\'kafh lal lwhuk!', 14, 0, 100, 0, 0, 106361, 0, 0, 'G\'huun to G\'huun'),
(132998, 3, 0, 'The outbreak has begun!', 15, 0, 100, 0, 0, 106361, 0, 0, 'G\'huun to Player'),
(132998, 4, 0, '|TINTERFACE\\ICONS\\INV_MISC_MONSTERFANG_02.BLP:20|t G\'huun calls upon the |cFFFF0404|Hspell:267509|h[Thousand Maws]|h|r to assist him!', 41, 0, 100, 0, 0, 106357, 0, 0, 'G\'huun'),
(132998, 5, 0, 'Qam oou iilth ez i awtgsshu amun on\'ma!', 14, 0, 100, 0, 0, 106357, 0, 0, 'G\'huun to G\'huun'),
(132998, 6, 0, 'Let the feast of a thousand maws begin!', 15, 0, 100, 0, 0, 106357, 0, 0, 'G\'huun to Player'),
(132998, 7, 0, 'W\'oq uhn\'agth ez qam Shandai!', 14, 0, 100, 0, 0, 106355, 0, 0, 'G\'huun to G\'huun'),
(132998, 8, 0, 'Come, servants of rot. Consume!', 15, 0, 100, 0, 0, 106355, 0, 0, 'G\'huun to Player'),
(132998, 9, 0, 'Log\'loth w\'oq Ongg!', 14, 0, 100, 0, 0, 106356, 0, 0, 'G\'huun to G\'huun'),
(132998, 10, 0, 'Children, come and feed!', 15, 0, 100, 0, 0, 106356, 0, 0, 'G\'huun to Player'),
(132998, 11, 0, 'Zuq ag\'xig bormaz ag\'thyzak!', 14, 0, 100, 0, 0, 106351, 0, 0, 'G\'huun to G\'huun'),
(132998, 12, 0, 'You cannot escape infection!', 15, 0, 100, 0, 0, 106351, 0, 0, 'G\'huun to Player'),
(132998, 13, 0, 'Oou shath\'yar lwhuk shn\'ma yrr shandi agth fhssh.', 14, 0, 100, 0, 0, 106371, 0, 0, 'G\'huun to G\'huun'),
(132998, 14, 0, 'Ywaq zuq ywag shn\'ma Bo\'al za qwor.', 14, 0, 100, 0, 0, 106336, 0, 0, 'G\'huun to G\'huun'),
(132998, 15, 0, 'Seek out your allies. Share my gift.', 15, 0, 100, 0, 0, 106336, 0, 0, 'G\'huun to Player'),
(132998, 16, 0, 'Oou qam puul zyqtahg ywaq vorzz Qam ma shn\'ma.', 14, 0, 100, 0, 0, 106335, 0, 0, 'G\'huun to G\'huun'),
(132998, 17, 0, 'The rot runs through your veins. Let it spread.', 15, 0, 100, 0, 0, 106335, 0, 0, 'G\'huun to Player'),
(132998, 18, 0, 'Qam oou uhnish kyth zuq Ongg za fhssh as\'rr.', 14, 0, 100, 0, 0, 106337, 0, 0, 'G\'huun to G\'huun'),
(132998, 19, 0, 'Let the hunger take you. Feed on their blood.', 15, 0, 100, 0, 0, 106337, 0, 0, 'G\'huun to Player'),
(132998, 20, 0, 'Ywaq ongg an\'qov i lal halahs nuq.', 14, 0, 100, 0, 0, 106368, 0, 0, 'G\'huun to G\'huun'),
(132998, 21, 0, 'Your husk serves a new master now.', 15, 0, 100, 0, 0, 106368, 0, 0, 'G\'huun to Player'),
(133007, 200, 0, 'Devour! Consume! Spread!', 14, 0, 100, 0, 0, 102970, 151959, 0, 'Unbound Abomination'),
(133007, 201, 0, 'Infected!', 14, 0, 100, 0, 0, 102967, 151928, 0, 'Unbound Abomination'),
(133007, 202, 0, 'Must... spread...', 14, 0, 100, 0, 0, 102966, 151930, 0, 'Unbound Abomination'),
(133298, 0, 0, '|TInterface\\Icons\\SPELL_DEATHVORTEX:20|tFetid Devourer prepares to unleash |cFFFF0000|Hspell:262291|h[Rotting Regurgitation]|h|r!', 41, 0, 100, 0, 0, 0, 0, 0, 'Fetid Devourer to Fetid Devourer'),
(133298, 1, 0, 'Waste Disposal Units open, forming Corruption Corpuscles!', 41, 0, 100, 0, 0, 0, 0, 0, 'Fetid Devourer'),
(133379, 0, 0, 'Shattered like glass!', 14, 0, 100, 34, 0, 102130, 0, 0, 'Adderis'),
(133379, 1, 0, '|TInterface\\ICONS\\Spell_Nature_LightningShield.blp:20|t%s gains a |cFFFF0000|Hspell:263246|h[Lightning Shield]|h|r!', 41, 0, 100, 34, 0, 102130, 0, 0, 'Adderis'),
(133379, 2, 0, 'Thunder crash!', 14, 0, 100, 0, 0, 102127, 0, 0, 'Adderis'),
(133379, 3, 0, '|TInterface\\Icons\\Ability_Socererking_arcanewrath.blp:20|tAdderis begins his |cFFFF0000|Hspell:263389|h[Arc Dash]|h|r!', 41, 0, 100, 34, 0, 102126, 0, 0, 'Adderis'),
(133379, 4, 0, 'Arcing slash!', 14, 0, 100, 34, 0, 102126, 0, 0, 'Adderis'),
(133379, 5, 0, 'The sands... take me...', 14, 0, 100, 34, 0, 102129, 0, 0, 'Adderis'),
(133384, 0, 0, '|TInterface\\Icons\\SPELL_SHAMAN_EARTHQUAKE.BLP:20|tMerektha |cFFFF0000|Hspell:264206|h[Burrows]|h|r across the battlefield!', 41, 0, 100, 34, 0, 0, 0, 0, 'Merektha'),
(133384, 1, 0, 'Poison-covered eggs start to hatch to the west!', 16, 0, 100, 0, 0, 0, 0, 0, 'Merektha'),
(133384, 2, 0, 'Dust-covered eggs start to hatch to the east!', 16, 0, 100, 0, 0, 0, 0, 0, 'Merektha'),
(133392, 0, 0, 'Restore the Avatar to full health.', 41, 0, 100, 0, 0, 0, 153159, 0, 'Avatar of Sethraliss'),
(133392, 1, 0, '|TInterface\\Icons\\ABILITY_WARLOCK_HAUNT.BLP:20|tThe Avatar is no longer  |cFFFF0000|Hspell:274148|h[Tainted]|h|r, your heals are now fully effective!', 41, 0, 100, 0, 0, 0, 161067, 0, 'Avatar of Sethraliss'),
(133392, 2, 0, 'I hold dominion over all!', 14, 0, 100, 0, 0, 0, 150697, 0, 'Avatar of Sethraliss'),
(133392, 3, 0, '|TInterface\\Icons\\SPELL_NATURE_REGENERATION_02.BLP:20|tThe Avatar joins you,  |cFFFF0000|Hspell:269670|h[Empowering]|h|r you to finish the fight!', 41, 0, 100, 0, 0, 0, 153205, 0, 'Avatar of Sethraliss'),
(133392, 4, 0, 'The storm has broken, and I am myself again. Thank you.', 14, 0, 100, 0, 0, 0, 150686, 0, 'Avatar of Sethraliss'),
(133944, 0, 0, '|TInterface\\ICONS\\Spell_Nature_LightningShield.blp:20|t%s gains a |cFFFF0000|Hspell:263246|h[Lightning Shield]|h|r!', 41, 0, 100, 0, 0, 0, 0, 0, 'Aspix'),
(133944, 1, 0, 'Die, vermin!', 14, 0, 100, 0, 0, 102117, 0, 0, 'Aspix'),
(133944, 2, 0, 'Break them, Adderis!', 14, 0, 100, 0, 0, 102119, 0, 0, 'Aspix'),
(133944, 3, 0, 'What will become... of the empire...', 14, 0, 100, 0, 0, 102121, 0, 0, 'Aspix'),
(134058, 0, 0, 'None shall stand against the storm!', 14, 0, 100, 0, 0, 0, 150502, 0, 'Galecaller Faye'),
(134058, 1, 0, '|TInterface\\Icons\\70_inscription_vantus_rune_azure:20|t%s creates a |cFFFF0000|Hspell:267891|h[Swiftness Ward]|h|r!', 41, 0, 100, 0, 0, 0, 151969, 0, 'Galecaller Faye'),
(134058, 2, 0, 'The breeze is ever at our backs!', 14, 0, 100, 0, 0, 102933, 151288, 0, 'Galecaller Faye'),
(134058, 3, 0, 'The clouds... break...', 14, 0, 100, 0, 0, 0, 150506, 0, 'Galecaller Faye'),
(134058, 4, 0, 'Cleansed by the storm!', 14, 0, 100, 0, 0, 0, 150509, 0, 'Galecaller Faye'),
(134060, 0, 0, '|TInterface\\Icons\\Spell_shadow_mindflay.blp:20|tAn |cFFFF0000|Hspell:269131|h[Ancient Mindbender]|h|r attaches to |cFFFF0000$n|r!', 41, 0, 100, 0, 0, 0, 152885, 0, 'Lord Stormsong'),
(134063, 0, 0, 'My hull is impenetrable!', 14, 0, 100, 0, 0, 0, 151286, 0, 'Brother Ironhull'),
(134063, 1, 0, '|TInterface\\Icons\\70_inscription_vantus_rune_light:20|t%s creates a |cFFFF0000|Hspell:267905|h[Reinforcing Ward]|h|r!', 41, 0, 100, 0, 0, 0, 160664, 0, 'Brother Ironhull'),
(134063, 2, 0, 'The tides shall take you!', 14, 0, 100, 25, 0, 0, 150512, 0, 'Brother Ironhull'),
(134063, 3, 0, 'Return me... to the sea...', 14, 0, 100, 1, 0, 0, 150515, 0, 'Brother Ironhull'),
(134069, 0, 0, 'Ugalazul bwrxil\' qu rax.', 14, 0, 100, 0, 0, 103098, 150976, 0, 'Vol\'zith the Whisperer'),
(134069, 1, 0, 'Darkness roots. Pestilence spreads. The doorway is open.', 15, 0, 100, 0, 0, 103098, 151880, 0, 'Vol\'zith the Whisperer'),
(134069, 2, 0, 'Aglathrax hig\' thrixa.', 14, 0, 100, 0, 0, 103110, 150530, 0, 'Vol\'zith the Whisperer'),
(134069, 3, 0, 'I reside within your lungs!', 15, 0, 100, 0, 0, 103110, 151878, 0, 'Vol\'zith the Whisperer'),
(134069, 4, 0, 'Xul krass qi\' UN skush!', 14, 0, 100, 0, 0, 103106, 150709, 0, 'Vol\'zith the Whisperer'),
(134069, 5, 0, 'Blood pours forth in the depths.', 15, 0, 100, 0, 0, 103106, 151883, 0, 'Vol\'zith the Whisperer'),
(134069, 6, 0, 'Bwixki amala zal qulllll...', 14, 0, 100, 0, 0, 103112, 150531, 0, 'Vol\'zith the Whisperer'),
(134069, 7, 0, 'I will await you... in the dark...', 15, 0, 100, 0, 0, 103112, 151877, 0, 'Vol\'zith the Whisperer'),
(134069, 8, 0, 'ULL vera skish!!', 14, 0, 100, 0, 0, 103115, 150528, 0, 'Vol\'zith the Whisperer'),
(134069, 9, 0, 'You are mine!', 15, 0, 100, 0, 0, 103115, 151876, 0, 'Vol\'zith the Whisperer'),
(134069, 10, 0, 'Krax il\' oni OGOG!', 14, 0, 100, 0, 0, 103104, 150536, 0, 'Vol\'zith the Whisperer'),
(134069, 11, 0, 'Listen to the music of the drowned.', 15, 0, 100, 0, 0, 103104, 151881, 0, 'Vol\'zith the Whisperer'),
(134107, 0, 0, '|TINTERFACE\\ICONS\\ABILITY_TITANKEEPER_CLEANSINGORB.BLP:20|t A new |cFFFF0404|Hspell:263420|h[Power Matrix]|h|r is available.', 41, 0, 100, 0, 0, 0, 0, 0, 'Power Matrix to G\'huun'),
(134419, 0, 0, 'Massive breach detected.', 14, 0, 100, 0, 0, 104792, 151963, 0, 'Titan Keeper Hezrel'),
(134419, 1, 0, 'G\'huun containment failing. M.O.T.H.E.R. not responding.', 14, 0, 100, 0, 0, 104786, 151957, 0, 'Titan Keeper Hezrel'),
(134419, 2, 0, 'Planetary infection imminent.', 14, 0, 100, 0, 0, 104793, 151971, 0, 'Titan Keeper Hezrel'),
(134419, 3, 0, 'Virulent specimen detected. Containment priority one.', 14, 0, 100, 0, 0, 104794, 151960, 0, 'Titan Keeper Hezrel'),
(134419, 4, 0, '|TINTERFACE\\ICONS\\SPELL_HOLY_DIVINEPROVIDENCE:20|t Titan Keeper Hezrel begins to cast |cFFF00000|Hspell:269310|h[Cleansing Light]|h|r!', 41, 0, 100, 0, 0, 104788, 156522, 0, 'Titan Keeper Hezrel'),
(134419, 5, 0, 'Cleansing area.', 14, 0, 100, 0, 0, 104788, 151937, 0, 'Titan Keeper Hezrel'),
(134419, 6, 0, 'Purge protocols engaged.', 14, 0, 100, 0, 0, 104789, 151936, 0, 'Titan Keeper Hezrel'),
(134419, 7, 0, 'Contagion detected. Sanitize.', 14, 0, 100, 0, 0, 104790, 151941, 0, 'Titan Keeper Hezrel'),
(134419, 8, 0, 'Engaging final safeguard. Destroy virulent source.', 14, 0, 100, 0, 0, 104791, 151939, 0, 'Titan Keeper Hezrel'),
(134442, 0, 0, 'Fresh hosts!', 14, 0, 100, 0, 0, 103556, 0, 0, 'Vectis'),
(134442, 1, 0, 'Violent gestation!', 14, 0, 100, 0, 0, 103551, 0, 0, 'Vectis to Player'),
(134442, 2, 0, 'Pestilence spreads!', 14, 0, 100, 0, 0, 103552, 0, 0, 'Vectis to Player'),
(134442, 3, 0, '|TINTERFACE\\ICONS\\SPELL_SHADOW_CORPSEEXPLODE.BLP:20|t You are infected with |cFFFF0000|Hspell:265129|h[Omega Vector]|h|r!', 42, 0, 100, 0, 0, 103551, 0, 0, 'Vectis to Player'),
(134442, 4, 0, 'Blood contagion!', 14, 0, 100, 0, 0, 103553, 0, 0, 'Vectis'),
(134442, 5, 0, '|TInterface\\ICONS\\INV_misc_boilingblood.blp:20|t Vectis begins to |cFFFF0000|Hspell:265217|h[Liquefy]|h|r!', 41, 0, 100, 0, 0, 103553, 0, 0, 'Vectis to Vectis'),
(134442, 6, 0, '|TInterface\\ICONS\\artifactability_BloodDeathknight_UmbilicusEternus.blp:20|t Vectis casts |cFFFF0000|Hspell:266948|h[Plague Bomb]|h|r!', 41, 0, 100, 0, 0, 0, 0, 0, 'Vectis to Vectis'),
(134442, 7, 0, 'Fester!', 14, 0, 100, 0, 0, 103559, 0, 0, 'Vectis to Player'),
(134442, 8, 0, 'Outbreak inevitable...', 14, 0, 100, 0, 0, 103558, 0, 0, 'Vectis to Player'),
(134445, 0, 0, 'Ul basha krix.', 14, 0, 100, 0, 0, 102869, 0, 0, 'Zek\'voz to Zek\'voz'),
(134445, 1, 0, 'I am superior!', 15, 0, 100, 0, 0, 102869, 0, 0, 'Zek\'voz to Player'),
(134445, 2, 0, 'Ug\' crish zul Thraxas!', 14, 0, 100, 0, 0, 102867, 0, 0, 'Zek\'voz to Zek\'voz'),
(134445, 3, 0, 'You will be eradicated!', 15, 0, 100, 0, 0, 102867, 0, 0, 'Zek\'voz to Player'),
(134445, 4, 0, 'Hul bala miz rilakich...', 14, 0, 100, 0, 0, 102870, 0, 0, 'Zek\'voz to Zek\'voz'),
(134445, 5, 0, 'How is this... possible...', 15, 0, 100, 0, 0, 102870, 0, 0, 'Zek\'voz to Player'),
(134445, 6, 0, 'Zek\'voz whispers: I am superior!', 12, 0, 100, 0, 0, 102862, 0, 0, 'Zek\'voz'),
(134445, 7, 0, 'Zek\'voz whispers: Lesser creatures must serve... or die!', 12, 0, 100, 0, 0, 102861, 0, 0, 'Zek\'voz'),
(134445, 8, 0, 'Zek\'voz whispers: Not a single worthy trait among you.', 12, 0, 100, 0, 0, 102866, 0, 0, 'Zek\'voz'),
(134445, 9, 0, 'Zek\'voz whispers: You will be eradicated!', 12, 0, 100, 0, 0, 102856, 0, 0, 'Zek\'voz'),
(134546, 0, 0, 'AN\'zig wgah zzof!', 14, 0, 100, 0, 0, 106610, 0, 0, 'Mythrax the Unraveler to Mythrax the Unraveler'),
(134546, 1, 0, 'G\'huun will rise!', 15, 0, 100, 0, 0, 106610, 0, 0, 'Mythrax the Unraveler to Player'),
(134546, 2, 0, 'Zuq ag\'xig bormax oou iiqaath!', 14, 0, 100, 0, 0, 106585, 0, 0, 'Mythrax the Unraveler to Mythrax the Unraveler'),
(134546, 3, 0, 'You cannot escape the shadows!', 15, 0, 100, 0, 0, 106585, 0, 0, 'Mythrax the Unraveler to Player'),
(134546, 4, 0, 'Zuq ag\'xig ka\'kar za wgah!', 14, 0, 100, 0, 0, 106598, 0, 0, 'Mythrax the Unraveler to Mythrax the Unraveler'),
(134546, 5, 0, 'You cannot resist my call.', 15, 0, 100, 0, 0, 106598, 0, 0, 'Mythrax the Unraveler to Player'),
(134546, 6, 0, '|TINTERFACE\\ICONS\\SPELL_SHADOW_SHADOWFURY.BLP:20|t You are affected by |cFFFF0000|Hspell:272536|h[Imminent Ruin]|h|r!', 42, 0, 100, 0, 0, 0, 0, 0, 'Mythrax the Unraveler to Player'),
(134546, 7, 0, 'Naz raqul!', 14, 0, 100, 0, 0, 106593, 0, 0, 'Mythrax the Unraveler to Mythrax the Unraveler'),
(134546, 8, 0, 'Obliteration!', 15, 0, 100, 0, 0, 106593, 0, 0, 'Mythrax the Unraveler to Player'),
(134546, 9, 0, 'Xith wgah!', 14, 0, 100, 0, 0, 106594, 0, 0, 'Mythrax the Unraveler to Mythrax the Unraveler'),
(134546, 10, 0, 'Extermination!', 15, 0, 100, 0, 0, 106594, 0, 0, 'Mythrax the Unraveler to Player'),
(134546, 11, 0, 'Puul qi\'plahf ni oou bormax!', 14, 0, 100, 0, 0, 106597, 0, 0, 'Mythrax the Unraveler to Mythrax the Unraveler'),
(134546, 12, 0, 'Give yourself to the plague!', 15, 0, 100, 0, 0, 106597, 0, 0, 'Mythrax the Unraveler to Player'),
(134546, 13, 0, 'Uulg\'ma zyqtahg yrr!', 14, 0, 100, 0, 0, 106607, 0, 0, 'Mythrax the Unraveler to Mythrax the Unraveler'),
(134546, 14, 0, 'Xalzaix hungers for annihilation!', 15, 0, 100, 0, 0, 106607, 0, 0, 'Mythrax the Unraveler to Player'),
(134546, 15, 0, 'Zuq wgah qam n\'lyeth!', 14, 0, 100, 0, 0, 106589, 0, 0, 'Mythrax the Unraveler to Mythrax the Unraveler'),
(134546, 16, 0, 'You will not survive!', 15, 0, 100, 0, 0, 106589, 0, 0, 'Mythrax the Unraveler to Player'),
(134546, 17, 0, 'I wgah far\'al zuq ni shn!', 14, 0, 100, 0, 0, 106590, 0, 0, 'Mythrax the Unraveler to Mythrax the Unraveler'),
(134546, 18, 0, 'I will reduce you to ash!', 15, 0, 100, 0, 0, 106590, 0, 0, 'Mythrax the Unraveler to Player'),
(134546, 19, 0, 'Zuq ag\'xig gag wgah naggwa\'fssh!', 14, 0, 100, 0, 0, 106586, 0, 0, 'Mythrax the Unraveler to Mythrax the Unraveler'),
(134546, 20, 0, 'You cannot run from destruction!', 15, 0, 100, 0, 0, 106586, 0, 0, 'Mythrax the Unraveler to Player'),
(134546, 21, 0, 'AN\'zig wgah qam za zyqtahg...', 14, 0, 100, 0, 0, 106613, 0, 0, 'Mythrax the Unraveler to Mythrax the Unraveler'),
(134546, 22, 0, 'G\'huun will not be stopped...', 15, 0, 100, 0, 0, 106613, 0, 0, 'Mythrax the Unraveler to Player'),
(134726, 0, 0, '|TInterface\\Icons\\ACHIEVEMENT_BOSS_CTHUN.BLP:20|t The %s begins casting |cFFFF0000|Hspell:264382|h[Eye Beam]|h|r!', 41, 0, 100, 0, 0, 0, 0, 0, 'Projection of C\'thun to Eye Beam Disc Stalker'),
(135129, 0, 0, '|TInterface\\Icons\\ABILITY_DEATHKNIGHT_DEATHSIPHON2.BLP:20|t The %s begins casting |cFFFF0000|Hspell:265360|h[Roiling Deceit]|h|r!', 41, 0, 100, 0, 0, 0, 0, 0, 'Projection of Yogg-Saron to Yogg-Saron Disc Stalker'),
(135445, 0, 0, 'An energy core forms nearby.', 16, 0, 100, 0, 0, 0, 150066, 0, 'Energy Core'),
(135452, 0, 0, 'Cleansing protocol activated.', 14, 0, 100, 0, 0, 104960, 0, 0, 'MOTHER'),
(135452, 1, 0, 'Dissection protocol initiated.', 14, 0, 100, 0, 0, 104958, 0, 0, 'MOTHER'),
(135452, 2, 0, 'Testing bacterial resistance to extreme heat.', 14, 0, 100, 0, 0, 104956, 0, 0, 'MOTHER'),
(135452, 3, 0, 'Venting containment chamber.', 14, 0, 100, 0, 0, 104959, 0, 0, 'MOTHER'),
(135452, 4, 0, 'System restored. Levels returned to secure thresholds.', 14, 0, 100, 0, 0, 104971, 0, 0, 'MOTHER'),
(135452, 5, 0, 'Venting containment chamber.', 14, 0, 100, 0, 0, 104959, 154050, 0, 'Wind Tunnel'),
(135452, 7, 0, 'Infection purged.', 14, 0, 100, 0, 0, 104962, 154038, 0, 'Wipe'),
(137119, 0, 0, 'Hosts detected. Infection commencing.', 14, 0, 100, 0, 0, 104460, 0, 0, 'Taloc to Player'),
(137119, 1, 0, 'Initiating blood dispersal of target host.', 14, 0, 100, 0, 0, 104457, 0, 0, 'Taloc'),
(137119, 2, 0, 'Deploying cudgel.', 14, 0, 100, 0, 0, 104454, 0, 0, 'Taloc to Player'),
(137119, 3, 0, 'Activating cudgel retrieval.', 14, 0, 100, 0, 0, 104458, 0, 0, 'Taloc'),
(137119, 4, 0, 'Fluid evacuation in progress. Entering standby.', 14, 0, 100, 0, 0, 104455, 0, 0, 'Taloc'),
(137119, 5, 0, 'Levels at maximum. Resume collection.', 14, 0, 100, 0, 0, 104456, 0, 0, 'Taloc to Taloc'),
(137119, 6, 0, '|TInterface\\Icons\\INV_misc_boilingblood:20|t%s targets you with |cFFFF0000|Hspell:271224|h[Plasma Discharge]|h|r!', 42, 0, 100, 0, 0, 0, 0, 0, 'Taloc to Player'),
(137119, 7, 0, 'Fuel levels depleted. Shutting down...', 14, 0, 100, 0, 0, 104454, 0, 0, 'Taloc to Player'),
(137119, 8, 0, 'Specimen targeted for destruction.', 14, 0, 100, 0, 0, 104453, 0, 0, 'Taloc'),
(137119, 9, 0, 'Subjects primed for contamination.', 14, 0, 100, 0, 0, 104464, 0, 0, 'Taloc'),
(138967, 0, 0, 'Everything is as I have foreseen!', 14, 0, 100, 0, 0, 106190, 0, 0, 'Zul'),
(138967, 1, 0, 'Come, fools! I\'ve already seen your end.', 14, 0, 100, 0, 0, 106189, 0, 0, 'Zul'),
(138967, 2, 0, '|TInterface\\ICONS\\INV_Misc_Food_Legion_gooAmberPink_pool.BLP:20|t %s begins to cast |cFFFF0000|Hspell:273361|h[Pool of Darkness]|h|r!', 41, 0, 100, 0, 0, 0, 0, 0, 'Zul to Player'),
(138967, 3, 0, 'De power of G\'huun will be your doom!', 14, 0, 100, 0, 0, 106183, 0, 0, 'Zul'),
(138967, 4, 0, 'Come, brethren! Feed upon de unfaithful!', 14, 0, 100, 0, 0, 106185, 0, 0, 'Zul'),
(138967, 5, 0, 'Arise my chosen! Through blood we shall conquer!', 14, 0, 100, 0, 0, 106187, 0, 0, 'Zul'),
(138967, 6, 0, 'Rise from my blood to crush de weak!', 14, 0, 100, 0, 0, 106186, 0, 0, 'Zul'),
(138967, 7, 0, 'G\'huun\'s blood flows through my veins! Tremble before my power!', 14, 0, 100, 0, 0, 106188, 0, 0, 'Zul'),
(138967, 8, 0, 'Witness your end and despair!', 14, 0, 100, 0, 0, 106178, 0, 0, 'Zul'),
(138967, 9, 0, 'Weak. Just as I predicted.', 14, 0, 100, 0, 0, 106192, 0, 0, 'Zul to Player'),
(138967, 10, 0, 'G\'huun! Accept dis offering of blood!', 14, 0, 100, 0, 0, 106194, 0, 0, 'Zul'),
(138967, 11, 0, 'You never had a future.', 14, 0, 100, 0, 0, 106193, 0, 0, 'Zul to Player'),
(138967, 12, 0, 'Wait... Dis was not the future I was promised...', 14, 0, 100, 0, 0, 106191, 0, 0, 'Zul to Player'),
(139737, 0, 0, 'How dare you sully this holy place with your presence!', 14, 0, 100, 603, 0, 0, 150520, 0, 'Lord Stormsong'),
(139737, 1, 0, 'I call upon the surging waters! Arise, and wipe out these intruders!', 14, 0, 100, 5, 0, 0, 150521, 0, 'Lord Stormsong'),
(139970, 0, 0, 'All must be purified before stepping inside our most holy place. I ask that you receive the blessings of each cleansing font before entering the heart of the shrine.', 12, 0, 100, 1, 0, 0, 154061, 0, 'Brother Pike'),
(139971, 0, 0, 'With the power of the Tide Pearl, our fleets will be unstoppable.', 12, 0, 100, 1, 0, 103094, 150904, 0, 'Rexxar'),
(139971, 1, 0, 'The Alliance must not claim this prize. All who oppose us will fall!', 12, 0, 100, 1, 0, 103095, 151983, 0, 'Rexxar'),
(139971, 2, 0, 'Now... let the hunt begin!', 12, 0, 100, 1, 0, 103096, 152224, 0, 'Rexxar'),
(142929, 0, 0, '|TInterface\\Icons\\ABILITY_MONK_HEALTHSPHERE.BLP:20|tAn Energy Fragment forms nearby, use it to |cFFFF0000|Hspell:274149|h[Energize]|h|r the Avatar!', 41, 0, 100, 0, 0, 0, 161003, 0, 'Energy Fragment'),
(150159, 0, 0, 'Fight!!!', 14, 0, 100, 0, 0, 0, 0, 0, 'king gobbamak to Player - TALK_AGGRO'),
(150159, 0, 1, 'Oh nooo...', 14, 0, 100, 0, 0, 0, 0, 0, 'king gobbamak - talk death'),
(150190, 0, 0, 'Fight!!!', 14, 0, 100, 0, 0, 0, 0, 0, 'boss trixie_naenor to Player - TALK_AGGRO'),
(150190, 0, 1, 'Ooohhh....no...', 14, 0, 100, 0, 0, 0, 0, 0, 'boss trixie_naenor - TALK_DEATH'),
(150222, 0, 0, 'Fight!!!', 14, 0, 100, 0, 0, 0, 0, 0, 'boss gunker to Player - TALK_AGGRO'),
(150222, 0, 1, 'Oh nooo...', 14, 0, 100, 0, 0, 0, 0, 0, 'boss gunker - talk death'),
(150712, 0, 0, 'Fight!!!', 14, 0, 100, 0, 0, 0, 0, 0, 'boss trixie_naenor to Player - YELL_JUMP_START'),
(150712, 0, 1, 'MEGA_Taze', 14, 0, 100, 0, 0, 0, 0, 0, 'boss trixie_naenor - YELL_MEGA_TAZE'),
(150712, 0, 2, 'Taze', 14, 0, 100, 0, 0, 0, 0, 0, 'boss trixie_naenor - YELL_TAZE'),
(150712, 0, 3, 'Turbo boost!!!', 14, 0, 100, 0, 0, 0, 0, 0, 'boss trixie_naenor - YELL_TURBO_BOOST'),
(153755, 0, 4, 'Fight!!!', 14, 0, 100, 0, 0, 0, 0, 0, 'boss trixie_naenor to Player - YELL_BOLT_BUSTER'),
(153755, 0, 5, 'MEGA_Taze', 14, 0, 100, 0, 0, 0, 0, 0, 'boss trixie_naenor - YELL_ROADKILL'),
(153755, 0, 6, 'Taze', 14, 0, 100, 0, 0, 0, 0, 0, 'boss trixie_naenor - YELL_ROLL_OUT'),
(153755, 0, 7, 'Turbo boost!!!', 14, 0, 100, 0, 0, 0, 0, 0, 'boss trixie_naenor - YELL_SUPER_BOOST'),
(156523, 0, 0, 'I hunger!', 14, 0, 100, 0, 0, 145017, 181202, 0, 'Maut to Aqir Scarab'),
(156523, 1, 0, 'More mana!', 14, 0, 100, 0, 0, 145018, 181140, 0, 'Maut'),
(156523, 2, 0, 'Must consume.', 14, 0, 100, 0, 0, 145015, 181166, 0, 'Maut'),
(156523, 3, 0, 'Darkness gathers!', 14, 0, 100, 0, 0, 145008, 181196, 0, 'Maut'),
(156523, 4, 0, '|TINTERFACE\\ICONS\\spell_warlock_soulburn.blp:20|t Maut begins to cast |cFFFF0404|Hspell:308044|h[Stygian Annihilation]|h|r!', 41, 0, 100, 0, 0, 145011, 181244, 0, 'Maut'),
(156523, 5, 0, 'Annihilation!', 14, 0, 100, 0, 0, 145011, 181156, 0, 'Maut'),
(156523, 6, 0, 'Drained!', 14, 0, 100, 0, 0, 145012, 181142, 0, 'Maut to Player'),
(156523, 7, 0, 'Devour mana!', 14, 0, 100, 0, 0, 145009, 181157, 0, 'Maut'),
(156523, 8, 0, 'Skin of stone.', 14, 0, 100, 0, 0, 145010, 181199, 0, 'Maut'),
(156523, 9, 0, 'Broken!', 14, 0, 100, 0, 0, 145013, 181145, 0, 'Maut to Player'),
(156523, 10, 0, 'Not... enough... mana...', 14, 0, 100, 0, 0, 145019, 181141, 0, 'Maut to Player'),
(156818, 0, 0, 'I am the Cataclysm!', 14, 0, 100, 0, 0, 143144, 179723, 0, 'Wrathion'),
(156818, 1, 0, '|TInterface\\ICONS\\ABILITY_DEATHWING_CATACLYSM.BLP:20|t Wrathion erupts into a |cFFFF0000|Hspell:306735|h[Burning Cataclysm]|h|r!', 41, 0, 100, 0, 0, 0, 179713, 0, 'Wrathion to Wrathion'),
(156818, 2, 0, '|TInterface\\ICONS\\ACHIEVMENT_BOSS_MADNESSOFDEATHWING.BLP:20|t Wrathion sheds his scales of |cFFFF0000|Hspell:307013|h[Burning Madness]|h|r!', 41, 0, 100, 0, 0, 142395, 186166, 0, 'Wrathion'),
(156818, 3, 0, 'Azeroth... is doomed...', 14, 0, 100, 0, 0, 143145, 179752, 0, 'Wrathion to Player'),
(157620, 0, 0, 'So easily confused!', 14, 0, 100, 0, 0, 143644, 180274, 0, 'Prophet Skitra to Prophet Skitra'),
(157620, 1, 0, 'Your eyes betray you.', 14, 0, 100, 0, 0, 143652, 180275, 0, 'Prophet Skitra to Prophet Skitra'),
(161884, 0, 0, 'Come, my chosen. Witness the fate of this world.', 15, 0, 100, 0, 0, 143666, 182392, 0, 'N\'Zoth the Corruptor to Player'),
(161884, 1, 0, 'Behold the one who shall herald its coming.', 15, 0, 100, 0, 0, 143667, 182393, 0, 'N\'Zoth the Corruptor to Player'),
(161884, 2, 0, 'You tread within a vision of what was... and what will be.', 15, 0, 100, 0, 0, 144341, 183478, 0, 'N\'Zoth the Corruptor to Player'),
(161884, 3, 0, 'My empire is this world\'s inevitable destiny.', 15, 0, 100, 0, 0, 144342, 183480, 0, 'N\'Zoth the Corruptor to Player'),
(161884, 4, 0, 'The Black Empire stretches before you. Join me and herald the coming age.', 15, 0, 100, 0, 0, 145776, 186479, 0, 'N\'Zoth the Corruptor to Player'),
(161884, 5, 0, 'Watch as my empire consumes your reality. Soon, all will be one.', 15, 0, 100, 0, 0, 145779, 186472, 0, 'N\'Zoth the Corruptor to Player');

update `creature_template` set `AIName`= '', `ScriptName`= 'boss_Azurethos' where `entry`= 136385;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_Hailstone_construct' where `entry`= 140252;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_warbringer_yenajz' where `entry`= 140163;
update `creature_template` set `AIName`= '', `ScriptName`= 'boss_Wekemara' where `entry`= 152671;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_zaxasj_the_speaker' where `entry`= 144755;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_boss_fathuul_the_feared' where `entry`= 144754;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_eldritch_abomination' where `entry`= 145053;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_visage_from_beyond' where `entry`= 144996;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_oceanic_essence' where `entry`= 151412;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_undying_guardian' where `entry`= 146829;
update `creature_template` set `AIName`= '', `ScriptName`= 'bfa_npc_primordial_mindbender' where `entry`= 146940;

DELETE FROM `spell_script_names` WHERE `spell_id` in (282395,285412,285411,282562,282432,282386,282437,282743,293300,293968,282405,282418,285638,284684,284768,284569,286754,284804,293662,293661,293663,285652);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(282395, 'bfa_spell_void_crash_damage'),
(285412, 'bfa_spell_void_crash_damage'),
(285411, 'bfa_spell_void_crash_damage'),
(282562, 'bfa_spell_promises_of_power'),
(282432, 'bfa_spell_crushing_doubt'),
(282386, 'bfa_spell_aphotic_blast'),
(282437, 'bfa_spell_crushing_doubt_damage'),
(282743, 'bfa_spell_storm_of_annihilation'),
(293300, 'bfa_spell_storm_essence'),
(293968, 'bfa_spell_void_crash_missile'),
(282405, 'bfa_spell_void_crash_missile'),
(282418, 'bfa_spell_void_crash_missile '),
(285638, 'bfa_spell_gift_of_nzoth_hysteria'),
(284684, 'bfa_spell_void_stone_relic_remove'),
(284768, 'bfa_spell_trident_of_deep_ocean_relic_remove'),
(284569, 'bfa_spell_tempest_caller_relic_remove'),
(286754, 'bfa_spell_storm_of_annihilation_effect'),
(284804, 'bfa_spell_custody_of_deep_absorb'),
(293662, 'bfa_spell_unstable_resonance_remove_effect'),
(293661, 'bfa_spell_unstable_resonance_remove_effect'),
(293663, 'bfa_spell_unstable_resonance_remove_effect'),
(285652, 'bfa_spell_insatiable_torment');

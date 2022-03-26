-- Isle of Giants 100% fully passed
-- Dread_Wastes 50% passed
DELETE FROM `spell_script_names` WHERE `spell_id` IN (138769,130061);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(138769, 'spell_trihorn_charge'),

(130061, 'spell_zet_uk_sha_eruption');

UPDATE `creature_template` SET `ScriptName`= 'npc_young_primal_devilsaur' WHERE `entry`= 70005;
UPDATE `creature_template` SET `ScriptName`= 'npc_pterrorwing_skyscreamer' WHERE `entry`= 70020;
UPDATE `creature_template` SET `ScriptName`= 'npc_zandalari_dinomancer_2' WHERE `entry`= 69925;
UPDATE `creature_template` SET `ScriptName`= 'npc_primal_direhorn_hatchling' WHERE `entry`= 70014;
UPDATE `creature_template` SET `ScriptName`= 'npc_primal_direhorn' WHERE `entry`= 70018;

UPDATE `creature_template` SET `ScriptName`= 'npc_dak_the_breaker'  WHERE `entry`= 50334;
UPDATE `creature_template` SET `ScriptName`= 'npc_gar_lok'          WHERE `entry`= 50739;
UPDATE `creature_template` SET `ScriptName`= 'npc_nalash_verdantis' WHERE `entry`= 50776;
UPDATE `creature_template` SET `ScriptName`= 'npc_ai_li_skymirror' WHERE `entry`= 50821;
UPDATE `creature_template` SET `ScriptName`= 'npc_ik_ik_the_nimble' WHERE `entry`= 50836;
UPDATE `creature_template` SET `ScriptName`= 'npc_mistblade_reapper' WHERE `entry`= 61970;
UPDATE `creature_template` SET `ScriptName`= 'npc_coldbite_matriarch' WHERE `entry`= 62008;
UPDATE `creature_template` SET `ScriptName`= 'npc_adjunct_kree_zot' WHERE `entry`= 62301;
UPDATE `creature_template` SET `ScriptName`= 'npc_hulking_kor_thik_fleshrender' WHERE `entry`= 62686;
UPDATE `creature_template` SET `ScriptName`= 'npc_ik_thik_clutch_guard' WHERE `entry`= 62754;
UPDATE `creature_template` SET `ScriptName`= 'npc_ik_thik_amberstinger' WHERE `entry`= 63728;
UPDATE `creature_template` SET `ScriptName`= 'npc_shekzeer_clutch_keeper' WHERE `entry`= 64559;
UPDATE `creature_template` SET `ScriptName`= 'npc_ik_thik_whisperer' WHERE `entry`= 64622;
UPDATE `creature_template` SET `ScriptName`= 'npc_wake_of_horror' WHERE `entry`= 64626;
UPDATE `creature_template` SET `ScriptName`= 'npc_hisek_the_swarmkeeper_2' WHERE `entry`= 64672;
UPDATE `creature_template` SET `ScriptName`= 'npc_dread_kunchong' WHERE `entry`= 64717;
UPDATE `creature_template` SET `ScriptName`= 'npc_karanosh' WHERE `entry`= 64724;
UPDATE `creature_template` SET `ScriptName`= 'npc_kypa_rak' WHERE `entry`= 65229;
UPDATE `creature_template` SET `ScriptName`= 'npc_elder_spindlegrin' WHERE `entry`= 65391;
UPDATE `creature_template` SET `ScriptName`= 'npc_overgrown_seacarp' WHERE `entry`= 65394;
UPDATE `creature_template` SET `ScriptName`= 'npc_dread_fearbringer' WHERE `entry`= 65496;
UPDATE `creature_template` SET `ScriptName`= 'npc_warlord_gurthan' WHERE `entry`= 65502;
UPDATE `creature_template` SET `ScriptName`= 'npc_ik_thik_kunchong' WHERE `entry`= 65582;
UPDATE `creature_template` SET `ScriptName`= 'npc_ik_thik_terrorclaw' WHERE `entry`= 65632;
UPDATE `creature_template` SET `ScriptName`= 'npc_dread_matriarch' WHERE `entry`= 66187;
UPDATE `creature_template` SET `ScriptName`= 'npc_ik_thik_clutch_guard' WHERE `entry`= 66465;
UPDATE `creature_template` SET `ScriptName`= 'npc_shox_tik' WHERE `entry`= 66784;
UPDATE `creature_template` SET `ScriptName`= 'npc_manifestation_of_terror' WHERE `entry`= 66785;
UPDATE `creature_template` SET `ScriptName`= 'npc_vengeful_spirit' WHERE `entry`= 69806;

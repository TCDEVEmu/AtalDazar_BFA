-- 819 卡拉波的命运 
DELETE FROM `instance_template` WHERE `map`=1277;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES 
(1277, 1116, 'scenario_draenor_shadowmoon_valley', 1);


DELETE FROM `instance_template` WHERE `map` IN (1203,1402,1407,1266,1268,1329,1455,1200);
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES 
(1200, 1116, 'scenario_bonetown', 1),
(1203, 1116, 'scenario_frostfire_finale', 1),
(1266, 1116, 'scenario_circle_of_blood', 1),
(1268, 1116, 'scenario_terongors_confrontation', 1),
(1329, 1116, 'scenario_grommashar', 1),
(1402, 1116, 'scenario_gorgrond_finale_1', 1),
(1407, 1116, 'scenario_gorgrond_finale_2', 1),
(1455, 1116, 'scenario_edge_of_reality', 1);

--  1207  沙塔斯之战 TaladorIronHordeFinale
DELETE FROM `instance_template` WHERE `map` IN (1207);
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES 
(1207, 1116, 'scenario_talador_iron_horde_finale', 1, 0);

UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` = 79664;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` = 74023;

UPDATE `creature_template` SET `ScriptName`='npc_prophet_velen_79522' WHERE `entry`=79522;
UPDATE `creature_template` SET `ScriptName`='npc_yrel_79521' WHERE `entry`=79521;
UPDATE `creature_template` SET `ScriptName`='npc_krull_79560' WHERE `entry`=79560;
UPDATE `creature_template` SET `ScriptName`='npc_commander_vorka_74023' WHERE `entry`=74023;
UPDATE `creature_template` SET `ScriptName`='npc_prophet_velen_79043' WHERE `entry`=79043;
UPDATE `creature_template` SET `ScriptName`='npc_vindicator_maraad_75145' WHERE `entry`=75145;
UPDATE `creature_template` SET `ScriptName`='npc_arnokk_the_burner_75358' WHERE `entry`=75358;-- door 2ge ?
UPDATE `creature_template` SET `ScriptName`='npc_exarch_akama_72413' WHERE `entry`=72413;
UPDATE `creature_template` SET `ScriptName`='npc_yrel_73395' WHERE `entry`=73395;
UPDATE `creature_template` SET `ScriptName`='npc_commander_vorka_74715' WHERE `entry`=74715;
UPDATE `creature_template` SET `ScriptName`='npc_raindash_80300' WHERE `entry`=80300;
UPDATE `creature_template` SET `unit_flags`='0',`unit_flags2`='0' WHERE `entry`=74715;

UPDATE `creature_template` SET `gossip_menu_id`=17094,`npcflag`=1,`ScriptName`='npc_scenario_talador_stage_1' WHERE `entry` IN (77192, 77191);
UPDATE `creature_template` SET `ScriptName`='npc_iron_star_86671' WHERE `entry`=86671;
UPDATE `creature_template_addon` SET `auras`='173436 155693' WHERE `entry`=86712;
UPDATE `creature_template` SET `VehicleId`='25',`mechanic_immune_mask`=8388624 WHERE `entry`=86712;
UPDATE `creature_template` SET `ScriptName`='npc_archmage_khadgar_77195' WHERE `entry`=77195;
UPDATE `creature_template` SET `ScriptName`='npc_machinist_brandt_80962' WHERE `entry`=80962;

UPDATE `creature_template` SET `InhabitType`='4' WHERE `entry`=84229;
UPDATE `creature_template` SET `ScriptName`='npc_blackhand_77256' WHERE `entry`=77256;
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=77195;
-- UPDATE `creature_template_wdb` SET `Displayid2`='20570' WHERE `entry`=59113;
UPDATE `gameobject_template` SET `ScriptName`='go_portal_to_talador' WHERE `entry`=231620;
-- UPDATE `locales_gameobject` SET `name_loc4`='到塔拉多的传送门' WHERE `entry`=231620;

DELETE FROM `areatrigger_scripts` WHERE (`entry`=7891);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES 
(7891, 'at_iron_star_area_trigger');

DELETE FROM `gossip_menu` WHERE (`MenuId`=16270 AND `TextId`=23528) ;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(16270, 23528); -- 76484/杜隆坦


UPDATE `creature_template` SET `gossip_menu_id`=16270 WHERE (`entry`=76484);
UPDATE `creature_template` SET `ScriptName`='npc_durotan_76484' WHERE `entry`=76484;
UPDATE `creature_template` SET `ScriptName`='npc_draka_76485' WHERE `entry`=76485;
UPDATE `creature_template` SET `ScriptName`='npc_farseer_drek_thar_76489' WHERE `entry`=76489;
UPDATE `creature_template` SET `ScriptName`='npc_thrall_76488' WHERE `entry`=76488;
UPDATE `creature_template` SET `ScriptName`='npc_ga_nar_76486' WHERE `entry`=76486;
UPDATE `creature_template` SET `ScriptName`='npc_malgrim_stormhand_76630' WHERE `entry`=76630;
UPDATE `creature_template` SET `ScriptName`='npc_iron_clusterpult_76629' WHERE `entry`=76629;

-- scenario_grommashar
-- 格罗玛什之战 Q35169 Q35171
UPDATE `creature_template` SET `gossip_menu_id`=16586,`ScriptName`='npc_vindicator_yrel_81404' WHERE `entry`=81404;


DELETE FROM `gossip_menu` WHERE (`MenuId`=16586 AND `TextId`=24089) ;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(16586, 24089); -- 81404


DELETE FROM `gossip_menu` WHERE (`MenuId`=16823 AND `TextId`=24459) ;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(16823, 24459); -- 81405

UPDATE `creature_template` SET `gossip_menu_id`=16823 WHERE `entry`=81405;
UPDATE `creature_template` SET `ScriptName`='npc_rangari_dkaan_81405' WHERE `entry`=81405;



DELETE FROM `gossip_menu` WHERE (`MenuId`=16825 AND `TextId`=24459) ;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(16825, 24459); -- 83407

DELETE FROM `gossip_menu` WHERE (`MenuId`=16829 AND `TextId`=24465) ;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(16829, 24465); -- 83407

UPDATE `creature_template` SET `ScriptName`='npc_vindicator_yrel_83407' WHERE `entry`=83407;


UPDATE `creature_template` SET `ScriptName`='npc_rangari_dkaan_85061' WHERE `entry`=85061;

UPDATE `creature_template` SET `ScriptName`='npc_garrosh_hellscream_82133' WHERE `entry`=82133;


UPDATE `creature_template` SET `ScriptName`='npc_packmaster_grokglok_82131' WHERE `entry`=82131;



-- 84022 fire arrow
-- 89054 fir

-- UPDATE `creature_template_wdb` SET `Displayid1`=11686 WHERE `entry` IN (89054,84022,85186,85169);
UPDATE `creature_template` SET `ScriptName`='npc_deathman' WHERE `entry` IN (89054,84022,85186,85169);

UPDATE `creature_template` SET `unit_flags`='0' WHERE `entry`=85189;

UPDATE `creature_template` SET `gossip_menu_id`=17104,`ScriptName`='npc_draka_86401' WHERE `entry`=86401;
UPDATE `creature_template` SET `gossip_menu_id`=17104,`ScriptName`='npc_draka_86401' WHERE `entry`=85619;
DELETE FROM `gossip_menu` WHERE (`MenuId`=17104 AND `TextId`=25148) ;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(17104, 25148); -- 86401


DELETE FROM `spell_script_names` WHERE `spell_id`=172812;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (172812, 'spell_rune_of_earth_172812');


DELETE FROM `gossip_menu` WHERE (`MenuId`=16587 AND `TextId`=24090) ;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(16587, 24090); -- 81414

UPDATE `creature_template` SET `gossip_menu_id`=16587,`ScriptName`='npc_durotan_81414' WHERE `entry`=81414;
UPDATE `creature_template` SET `gossip_menu_id`=16824,`ScriptName`='npc_aggra_81416' WHERE `entry`=81416;
UPDATE `creature_template` SET `ScriptName`='npc_durotan_84443' WHERE `entry`=84443;

DELETE FROM `gossip_menu` WHERE (`MenuId`=16824 AND `TextId`=24460) ;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(16824, 24460); -- 81416

DELETE FROM `gossip_menu` WHERE (`MenuId`=16830 AND `TextId`=24466) ;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(16830, 24466); -- 84443

DELETE FROM `gossip_menu` WHERE (`MenuId`=16828 AND `TextId`=24464) ;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(16828, 24464); -- 84443

UPDATE `creature_template` SET `gossip_menu_id`=16424 WHERE (`entry`=79522);


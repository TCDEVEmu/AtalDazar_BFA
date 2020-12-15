-- 819 卡拉波的命运 
DELETE FROM `instance_template` WHERE `map`=1277;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES 
(1277, 1116, 'scenario_draenor_shadowmoon_valley', 1);


DELETE FROM `instance_template` WHERE `map` IN (1203,1402,1407,1266,1268,1329,1455,1200);
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `bonusChance`) VALUES 
(1200, 1116, 'scenario_bonetown', 1, 0),
(1203, 1116, 'scenario_frostfire_finale', 1, 0),
(1266, 1116, 'scenario_circle_of_blood', 1, 0),
(1268, 1116, 'scenario_terongors_confrontation', 1, 0),
(1329, 1116, 'scenario_grommashar', 1, 0),
(1402, 1116, 'scenario_gorgrond_finale_1', 1, 0),
(1407, 1116, 'scenario_gorgrond_finale_2', 1, 0),
(1455, 1116, 'scenario_edge_of_reality', 1, 0);

--  1207  沙塔斯之战 TaladorIronHordeFinale
DELETE FROM `instance_template` WHERE `map` IN (1207);
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `bonusChance`) VALUES 
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











/*
DELETE FROM `creature_text` WHERE (`Entry`=82131);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(82131, 0, 0, 'Fetch, girl.', 12, 0, 100, 0, 0, 46279, 84393, 16000, 59000, 166979, '兽王格罗戈洛克'),
(82131, 1, 0, 'Finish these weaklings.', 14, 0, 100, 0, 0, 46281, 84394, 40000, 40000, 0, '兽王格罗戈洛克'),
(82131, 2, 0, 'No... this can\'t be.', 12, 0, 100, 0, 0, 46282, 84395, 0, 0, 0, '兽王格罗戈洛克 to Player');

DELETE FROM `creature_text` WHERE (`Entry`=82133);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(82133, 0, 0, 'Leap from your caves, my wolves.', 14, 0, 100, 0, 0, 44556, 84397, 153000, 153000, 0, '加尔鲁什·地狱咆哮 to Player'),
(82133, 1, 0, 'Loose the Hungerer.', 14, 0, 100, 0, 0, 44557, 84401, 802000, 802000, 0, '加尔鲁什·地狱咆哮 to Player'),
(82133, 2, 0, 'Taste Gorehowl\'s steel.', 12, 0, 100, 0, 0, 44567, 84427, 28000, 139000, 167759, '加尔鲁什·地狱咆哮 to Gore Seeker Stalker'),
(82133, 3, 0, 'I am your death.', 12, 0, 100, 0, 0, 44561, 84413, 30000, 126000, 167492, '加尔鲁什·地狱咆哮'),
(82133, 4, 0, 'I\'m invincible.', 12, 0, 100, 0, 0, 44562, 84414, 145000, 145000, 0, '加尔鲁什·地狱咆哮');



DELETE FROM `gossip_menu_option` WHERE `MenuID`=16825;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxCurrency`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(16825, 0, 0, '不管喜欢与否，我们都得继续前进。前面到底是什么情况？', 1, 1, 0, 0, 0, 0, 0, 0, NULL, 85566, 0, 27547);-- 85562  85566

DELETE FROM `gossip_menu_option` WHERE `MenuID`=16829;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxCurrency`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(16829, 0, 0, '下令吧，伊瑞尔。摧毁城门，让我们进去。', 1, 1, 0, 0, 0, 0, 0, 0, NULL, 85568, 0, 27547);

DELETE FROM `gossip_menu_option` WHERE `MenuID`=16586;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxCurrency`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(16586, 0, 0, '伊瑞尔，让我们轰开大门，占领格罗玛什尔吧。', 1, 1, 0, 0, 0, 0, 0, 0, NULL, 84079, 0, 27547);


DELETE FROM `gossip_menu_option` WHERE `MenuID`=16823;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxCurrency`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(16823, 0, 0, '我同意，从侧翼迂回能帮你争取足够的时间，让我们的大部分部队更靠近加尔鲁什。', 1, 1, 0, 0, 0, 0, 0, 0, NULL, 85557, 0, 27547);-- 85557 85559


DELETE FROM `gossip_menu_option` WHERE `MenuID`=16830;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxCurrency`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(16830, 0, 0, '下令吧，杜隆坦。摧毁城门，让我们进去。', 1, 1, 0, 0, 0, 0, 0, 0, NULL, 85570, 0, 27547);

DELETE FROM `gossip_menu_option` WHERE `MenuID`=16828;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxCurrency`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(16828, 0, 0, '不管喜欢与否，我们都得继续前进。前面到底是什么情况？', 1, 1, 0, 0, 0, 0, 0, 0, NULL, 85566, 0, 27547);-- 85562  85566


DELETE FROM `gossip_menu_option` WHERE `MenuID`=16824;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxCurrency`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(16824, 0, 0, '我同意，从侧翼迂回能帮你争取足够的时间，让我们的大部分部队更靠近加尔鲁什。', 1, 1, 0, 0, 0, 0, 0, 0, NULL, 85559, 0, 27547);

DELETE FROM `gossip_menu_option` WHERE `MenuID`=16587;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxCurrency`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(16587, 0, 0, '杜隆坦，让我们轰开大门，占领格罗玛什尔吧。', 1, 1, 0, 0, 0, 0, 0, 0, NULL, 84087, 0, 27547);





DELETE FROM `gossip_menu` WHERE (`MenuId`=16440 AND `TextId`=23832) ;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(16440, 23832); -- 79457 (守备官玛尔拉德)


DELETE FROM `scenario_data` WHERE `MapID`=1203;
INSERT INTO `scenario_data` (`ScenarioID`, `MapID`, `DifficultyID`, `Team`, `Class`, `LfgDungeonID`) VALUES 
(324, 1203, 12, 0, 0, 0);

DELETE FROM `scenario_data` WHERE `MapID`=1402;
INSERT INTO `scenario_data` (`ScenarioID`, `MapID`, `DifficultyID`, `Team`, `Class`, `LfgDungeonID`) VALUES 
(723, 1402, 12, 0, 0, 0);


DELETE FROM `scenario_data` WHERE `MapID`=1277;
INSERT INTO `scenario_data` (`ScenarioID`, `MapID`, `DifficultyID`, `Team`, `Class`, `LfgDungeonID`) VALUES 
(449, 1277, 12, 469, 0, 0),-- 67
(450, 1277, 12, 469, 0, 0);



DELETE FROM `gossip_menu_option` WHERE `MenuID`=16424;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxCurrency`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(16424, 0, 0, 'Prophet, we\'re being overrun!', 1, 1, 0, 0, 0, 0, 0, 0, NULL, 81697, 0, 27547);


DELETE FROM `gossip_menu_option` WHERE (`MenuId`=16850);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxCurrency`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(16850, 0, 0, 'Then let\'s hurry!', 1, 1, 0, 0, 0, 0, 0, 0, '', 85801, 0, 0);


DELETE FROM `spell_script_names` WHERE `spell_id`=167264;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (167264, 'spell_talador_stop_time');

DELETE FROM `spell_script_names` WHERE `spell_id`=167260;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (167260, 'aura_talador_stop_time');


DELETE FROM `creature_text` WHERE (`Entry`=77195);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(77195, 0, 0, 'Champion! Speak with me when you are ready to travel to the enemy battleship.', 14, 0, 100, 0, 0, 44899, 80405, 270343, 270343, 177681, 'Archmage Khadgar to Player'),
(77195, 1, 0, 'They need your help with Blackhand! I can get you there. Speak with me when you\'re ready.', 14, 0, 100, 0, 0, 44900, 83081, 2609, 2609, 0, 'Archmage Khadgar to Guardian Orb');


DELETE FROM `creature_text` WHERE (`Entry`=77256);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(77256, 0, 0, 'That\'s all you can muster?', 14, 0, 100, 0, 0, 45439, 85883, 185672, 185672, 0, 'Blackhand to Player'),
(77256, 1, 0, 'Weak.', 14, 0, 100, 0, 0, 45435, 89715, 187797, 187797, 0, 'Blackhand to Player'),
(77256, 2, 0, 'Haha...haha... AHHAHAHAHA! Didn\'t anyone ever tell you not to play with fire?', 14, 0, 100, 153, 0, 45471, 86073, 194579, 194579, 169065, 'Blackhand to Blackhand'),
(77256, 3, 0, 'Blackhand has cast |TInterface\\Icons\\ability_rogue_hungerforblood.blp:20|t|cFFFF0404|Hspell:168261|h[Marked for Death]|h|r on you. Hide behind the Iron Stars to avoid the attack!', 42, 0, 100, 0, 0, 0, 85649, 145000, 145000, 168275, 'Blackhand to Player');






DELETE FROM `gossip_menu_option` WHERE (`MenuId`=16270);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxCurrency`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(16270, 0, 0, 'Let\'s ride.', 1, 1, 0, 0, 0, 0, 0, 0, NULL, 77608, 0, 27547);





DELETE FROM `creature_text` WHERE (`Entry`=79522);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(79522, 0, 0, 'The Temple of Karabor? No... it cannot be. We are under attack!', 12, 0, 100, 1, 0, 45356, 81621, 76891, 76891, 0, 'Prophet Velen to Player'),
(79522, 1, 0, 'Stay close to me, champion!', 12, 0, 100, 1, 0, 45357, 81627, 4703, 4703, 0, 'Prophet Velen to '),
(79522, 2, 0, 'As long as I live, Karabor shall not fall!', 12, 0, 100, 5, 0, 45358, 81700, 164000, 164000, 0, 'Prophet Velen to Player'),
(79522, 3, 0, 'I cannot... hold them... back...', 12, 0, 100, 0, 0, 45359, 81823, 310656, 310656, 0, 'Prophet Velen to Player'),
(79522, 4, 0, 'Wait... no... it cannot be. The temple is under attack!', 12, 0, 100, 1, 0, 45356, 81622, 19000, 19000, 0, 'Prophet Velen to Player');

DELETE FROM `creature_text` WHERE (`Entry`=79521);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(79521, 0, 0, 'Hold the barricades! Protect the defense crystal at all costs!', 14, 0, 100, 5, 0, 45673, 81623, 24000, 24000, 0, 'Yrel to Player'),
(79521, 1, 0, 'We couldn\'t stop the Dark Star, Prophet. The Iron Horde have taken the harbor!', 12, 0, 100, 5, 0, 45674, 81632, 29000, 29000, 0, 'Yrel to Player'),
(79521, 2, 0, 'Watch your heads! Iron capsules incoming!', 14, 0, 100, 5, 0, 45675, 81633, 93797, 93797, 0, 'Yrel to Player'),
(79521, 3, 0, 'Up there! The fleet commander shows himself!', 12, 0, 100, 397, 0, 45676, 81687, 135875, 135875, 0, 'Yrel to 450'),
(79521, 4, 0, 'No! That defense crystal was our only hope.', 12, 0, 100, 0, 0, 45677, 81626, 131000, 131000, 0, 'Yrel to Командир Ворка'),
(79521, 5, 0, 'They\'re breaking through. Retreat! We\'ll make our final stand on the stairs!', 12, 0, 100, 5, 0, 45678, 81689, 137000, 137000, 0, 'Yrel to Командир Ворка');

DELETE FROM `creature_text` WHERE (`Entry`=79043);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(79043, 0, 0, 'Drink the elixir and focus on the crystal, $n. Let the ebb and flow of time wash over you...', 12, 0, 100, 1, 0, 45355, 81837, 17000, 17000, 0, 'Prophet Velen  to Player'),
(79043, 1, 0, 'Now go. The Rangari follow your orders. Find the prisoners.', 12, 0, 100, 1, 0, 45386, 81485, 19984, 19984, 0, 'Prophet Velen to Player'),
(79043, 2, 0, 'You are capable of more than you know, Yrel.', 12, 0, 100, 1, 0, 45385, 81483, 15953, 15953, 0, 'Prophet Velen to Player');

DELETE FROM `creature_text` WHERE (`Entry`=74023);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(74023, 0, 0, 'ENOUGH! Play time is over. Ships, on my mark, FIRE ON THE CRYSTAL!', 14, 0, 100, 5, 0, 43664, 81625, 8297, 8297, 0, 'Commander Vorka'),
(74023, 1, 0, 'Prophet, your attempts are meaningless. Witness the TRUE might of the Iron Horde!', 14, 0, 100, 5, 0, 43665, 81701, 162437, 162437, 0, 'Commander Vorka to Player'),
(74023, 2, 0, 'Пророк, сопротивление бесполезно. Узри истинную мощь Железной Орды! Пушки… Огонь!', 14, 0, 100, 5, 0, 43665, 0, 59000, 59000, 0, 'Commander Vorka to Player');

DELETE FROM `creature_text` WHERE (`Entry`=75358);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(75358, 1, 0, 'Taste the flames!', 14, 0, 100, 0, 0, 43672, 78307, 5875, 5875, 0, 'Arnokk the Burner to Player'),
(75358, 2, 0, 'The Iron Horde... will... take you all...', 14, 0, 100, 0, 0, 43673, 78309, 57906, 57906, 0, 'Arnokk the Burner to 510'),
(75358, 3, 0, 'Поджарьтесь!', 14, 0, 100, 0, 0, 43672, 80245, 6032, 6032, 0, 'Arnokk the Burner to'),
(75358, 4, 0, 'I\'ll burn the ground beneath your feet.', 14, 0, 100, 0, 0, 0, 78308, 19188, 19188, 0, 'Arnokk the Burner');

DELETE FROM `creature_text` WHERE (`Entry`=73395);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(73395, 0, 0, 'No... Samaara!', 12, 0, 100, 5, 0, 45637, 77990, 0, 0, 0, 'Yrel to Player'),
(73395, 1, 0, 'Champion! Focus your attacks on that... THING! I will protect the others.', 12, 0, 100, 5, 0, 45638, 78040, 0, 0, 0, 'Yrel to Player'),
(73395, 2, 0, 'Great Prophet! Ner\'zhul is taking the captives to Shaz\'gul.', 12, 0, 100, 1, 0, 45639, 79693, 0, 0, 0, 'Yrel to Player'),
(73395, 3, 0, 'Герой, наару пришел нам на помощь. Защищай его, пока он набирает силу.', 12, 0, 100, 1, 0, 45628, 82583, 0, 0, 0, 'Yrel to 449'),
(73395, 4, 0, 'У нас получилось! Теперь закончим эту битву…', 12, 0, 100, 1, 0, 43657, 82584, 0, 0, 0, 'Yrel to 449'),
(73395, 5, 0, 'Пусть все узнают о нашей победе. Лети в гарнизон на волшебном дракончике. До встречи!', 12, 0, 100, 1, 0, 45634, 82762, 0, 0, 0, 'Yrel to 449'),
(73395, 6, 0, 'Герой, тебе неведом страх. Прими нашу благодарность.', 12, 0, 100, 1, 0, 45632, 82590, 0, 0, 0, 'Yrel to Player'),
(73395, 7, 0, 'Свет побеждает, ибо МЫ сражаемся против мрака.', 12, 0, 100, 1, 0, 45633, 88712, 0, 0, 0, 'Yrel to Player');
-- 指挥官沃尔卡
DELETE FROM `creature_text` WHERE (`Entry`=74715);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(74715, 0, 0, 'Iron Fleet! Darken the skies!', 14, 0, 100, 0, 0, 43656, 81655, 84406, 84406, 0, 'Commander Vorka to Player'),
(74715, 1, 0, 'ENOUGH. Play time is over. I will deal with you myself.', 14, 0, 100, 0, 0, 43657, 81973, 191000, 191000, 0, 'Commander Vorka to Player'),
(74715, 2, 0, 'Witness the TRUE power of the Iron Horde!', 14, 0, 100, 11, 0, 43658, 82585, 28125, 28125, 0, 'Commander Vorka to Player'),
(74715, 3, 0, '%s приземляется. В атаку!', 41, 0, 100, 0, 0, 43660, 82187, 29000, 29000, 151694, 'Commander Vorka to Player'),
(74715, 4, 0, 'The skies darken with iron!', 14, 0, 100, 0, 0, 43659, 78272, 20610, 20610, 150274, 'Commander Vorka'),
(74715, 5, 0, 'Soldiers - Come to my aid!', 14, 0, 100, 0, 0, 43660, 78285, 28125, 28125, 151661, 'Commander Vorka');


DELETE FROM `creature_text` WHERE (`Entry`=76484);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(76484, 0, 0, 'We will hold the line here.', 12, 0, 100, 1, 0, 45218, 79628, 1922, 1922, 0, 'Durotan to Generic Bunny - PRK (Large AOI)'),
(76484, 1, 0, 'Hold your position, Frostwolves! Let them come to you!', 12, 0, 100, 5, 0, 45219, 79638, 37203, 37203, 0, 'Durotan to Generic Bunny - PRK (Large AOI)'),
(76484, 2, 0, 'We can\'t fight with this cannon fire coming down. Thrall! $p! Take care of that tank!', 12, 0, 100, 0, 0, 45221, 79641, 83000, 83000, 0, 'Durotan to Generic Bunny - PRK (Large AOI)'),
(76484, 3, 0, 'Drek\'Thar\'s in trouble. Ga\'nar, get out there and lend him a hand.', 12, 0, 100, 0, 0, 45223, 79653, 338265, 338265, 0, 'Durotan to Generic Bunny - PRK (Large AOI)'),
(76484, 4, 0, 'You go too, $p.  Make sure my brother doesn\'t get himself killed.', 12, 0, 100, 0, 0, 45224, 79655, 347969, 347969, 0, 'Durotan to Generic Bunny - PRK (Large AOI)'),
(76484, 5, 0, 'Spears incoming! Hold your ground!', 12, 0, 100, 0, 0, 45226, 79661, 2000, 2000, 0, 'Durotan to Generic Bunny - PRK (Large AOI)'),
(76484, 6, 0, 'I\'ll be waiting.', 12, 0, 100, 0, 0, 45227, 79667, 11000, 11000, 0, 'Durotan to Generic Bunny - PRK (Large AOI)'),
(76484, 7, 0, 'Drek\'Thar! How much time do you need?', 12, 0, 100, 0, 0, 45229, 79677, 6110, 6110, 0, 'Durotan to Generic Bunny - PRK (Large AOI)'),
(76484, 8, 0, 'We are counting on you, shaman!', 12, 0, 100, 0, 0, 45230, 79679, 863062, 863062, 0, 'Durotan to Generic Bunny - PRK (Large AOI)'),
(76484, 9, 0, 'GRONN!', 12, 0, 100, 0, 0, 45232, 79683, 4000, 4000, 0, 'Durotan to Generic Bunny - PRK (Large AOI)'),
(76484, 10, 0, 'All Frostwolves - charge ahead! Take that thing down!', 12, 0, 100, 0, 0, 45233, 79684, 4235, 4235, 0, 'Durotan to Generic Bunny - PRK (Large AOI)');

DELETE FROM `creature_text` WHERE (`Entry`=76485);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(76485, 0, 0, 'Drek\'Thar, you can speak with the earth. Do you think you can collapse this canyon?', 12, 0, 100, 6, 0, 41784, 79629, 7000, 7000, 0, 'Draka to Generic Bunny - PRK (Large AOI)'),
(76485, 1, 0, '...and yet they still they keep coming.', 12, 0, 100, 0, 0, 41785, 79650, 14766, 14766, 0, 'Draka to Generic Bunny - PRK (Large AOI)'),
(76485, 2, 0, 'I smell Thunderlords...', 12, 0, 100, 0, 0, 41786, 79660, 2000, 2000, 0, 'Draka to Generic Bunny - PRK (Large AOI)'),
(76485, 3, 0, 'This one\'s mine.', 12, 0, 100, 0, 0, 41788, 100874, 33000, 33000, 0, 'Draka to Generic Bunny - PRK (Large AOI)'),
(76485, 4, 0, 'Come back me up, $p.', 12, 0, 100, 0, 0, 41789, 79668, 43000, 43000, 0, 'Draka to Generic Bunny - PRK (Large AOI)'),
(76485, 5, 0, 'Yeah. A few.', 12, 0, 100, 0, 0, 41790, 79670, 0, 815656, 0, 'Draka to Generic Bunny - PRK (Large AOI)'),
(76485, 6, 0, 'Well... if it\'ll make you happy, then LET\'S PLAY!', 12, 0, 100, 0, 0, 41791, 79672, 49609, 49609, 0, 'Draka to Malgrim Stormhand'),
(76485, 7, 0, 'A real man treats his mate with respect!', 12, 0, 100, 0, 0, 41792, 79674, 66609, 66609, 0, 'Draka to Malgrim Stormhand'),
(76485, 8, 0, '...and he probably would have caught that axe.', 12, 0, 100, 0, 0, 41793, 79675, 814203, 814203, 0, 'Draka to Malgrim Stormhand');


DELETE FROM `creature_text` WHERE (`Entry`=76489);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(76489, 0, 0, 'It would be a momentous task... I cannot make any promises.', 12, 0, 100, 274, 0, 46650, 79631, 11703, 11703, 0, 'Farseer Drek\'Thar to Generic Bunny - PRK (Large AOI)'),
(76489, 1, 0, 'Then I will do my best.', 12, 0, 100, 273, 0, 46651, 79633, 26235, 26235, 0, 'Farseer Drek\'Thar to Generic Bunny - PRK (Large AOI)'),
(76489, 2, 0, 'You fight like no shaman I have ever seen.', 12, 0, 100, 0, 0, 46652, 79643, 147844, 147844, 0, 'Farseer Drek\'Thar to Generic Bunny - PRK (Large AOI)'),
(76489, 3, 0, 'You should tell your teacher to rely less on the hammer, and more on his brains.', 12, 0, 100, 0, 0, 46653, 79645, 92000, 92000, 0, 'Farseer Drek\'Thar to Generic Bunny - PRK (Large AOI)'),
(76489, 4, 0, 'Durotan! I need help!', 12, 0, 100, 0, 0, 46654, 79652, 333610, 333610, 0, 'Farseer Drek\'Thar to Generic Bunny - PRK (Large AOI)'),
(76489, 5, 0, 'I owe you my life.', 12, 0, 100, 0, 0, 46655, 79657, 457656, 457656, 0, 'Farseer Drek\'Thar to Generic Bunny - PRK (Large AOI)'),
(76489, 6, 0, 'Only a bit longer!', 12, 0, 100, 0, 0, 46656, 79678, 858250, 858250, 0, 'Farseer Drek\'Thar to Generic Bunny - PRK (Large AOI)');

DELETE FROM `creature_text` WHERE (`Entry`=76488);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(76488, 0, 0, 'You\'d better hurry!  Here they come!', 12, 0, 100, 1, 0, 46362, 79634, 31015, 31015, 0, 'Thrall to Generic Bunny - PRK (Large AOI)'),
(76488, 1, 0, 'Dabu!', 12, 0, 100, 0, 0, 46363, 79642, 2609, 2609, 0, 'Thrall to Generic Bunny - PRK (Large AOI)'),
(76488, 2, 0, 'I was taught by the best... Drek\'thar.', 12, 0, 100, 0, 0, 46364, 79644, 9531, 9531, 0, 'Thrall to Generic Bunny - PRK (Large AOI)'),
(76488, 3, 0, 'He would be pleased to hear you say that.', 12, 0, 100, 0, 0, 46365, 79646, 19250, 19250, 0, 'Thrall to Generic Bunny - PRK (Large AOI)'),
(76488, 4, 0, 'Here comes another elekk!', 12, 0, 100, 0, 0, 46368, 79662, 1828, 1828, 0, 'Thrall to Generic Bunny - PRK (Large AOI)'),
(76488, 5, 0, 'Lok-tar ogar!', 12, 0, 100, 0, 0, 46370, 127481, 8000, 8000, 0, 'Тралл to Generic Bunny - PRK (Large AOI)');


DELETE FROM `creature_text` WHERE (`Entry`=76486);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(76486, 0, 0, 'I can. Shaman, if you bring that cliff wall down, I promise that our enemy will be waiting right underneath it.', 12, 0, 100, 397, 0, 44077, 79632, 16578, 16578, 0, 'Ga\'nar to Generic Bunny - PRK (Large AOI)'),
(76486, 1, 0, 'Bring me more! Your Iron Horde can bleed on my axe!', 12, 0, 100, 0, 0, 44078, 79639, 4750, 4750, 0, 'Ga\'nar to Generic Bunny - PRK (Large AOI)'),
(76486, 2, 0, 'Durotan, this isn\'t a choke point... it\'s a meat grinder!', 12, 0, 100, 0, 0, 45053, 79649, 0, 0, 0, 'Ga\'nar to Generic Bunny - PRK (Large AOI)'),
(76486, 3, 0, 'I know! That\'s the best part!', 12, 0, 100, 0, 0, 44080, 79651, 316219, 316219, 0, 'Ga\'nar to Generic Bunny - PRK (Large AOI)'),
(76486, 4, 0, 'Thought you\'d never ask, brother.', 12, 0, 100, 0, 0, 44081, 79654, 9922, 9922, 0, 'Ga\'nar to Generic Bunny - PRK (Large AOI)'),
(76486, 5, 0, 'I can still hear you!', 12, 0, 100, 0, 0, 44082, 79656, 352703, 352703, 0, 'Ga\'nar to Generic Bunny - PRK (Large AOI)'),
(76486, 6, 0, 'Save the embraces for later, shaman. I\'ve got a kill streak going.', 12, 0, 100, 0, 0, 44083, 79658, 462078, 462078, 0, 'Ga\'nar to Generic Bunny - PRK (Large AOI)');

DELETE FROM `creature_text` WHERE (`Entry`=76630);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(76630, 0, 0, 'Look at this cute little puppy you\'ve sent me, Durotan! Does she know any tricks?', 12, 0, 100, 0, 0, 41904, 79669, 39031, 98453, 0, 'Malgrim Stormhand to Generic Bunny - PRK (Large AOI)'),
(76630, 1, 0, 'Come here, puppy. I want to play FETCH.', 12, 0, 100, 0, 0, 41905, 79671, 51296, 51296, 0, 'Malgrim Stormhand'),
(76630, 2, 0, 'Draka... come join me in the Iron Horde.  Lose that armor, and settle down with a REAL MAN.', 12, 0, 100, 0, 0, 41906, 79673, 68234, 68234, 0, 'Malgrim Stormhand');


DELETE FROM `gossip_menu_option` WHERE `MenuID`=17104;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxCurrency`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(17104, 0, 0, 'Let\'s go.', 1, 1, 0, 0, 0, 0, 0, 0, NULL, 78305, 0, 27547);

DELETE FROM `creature_text` WHERE (`Entry`=86401);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(86401, 0, 0, 'The Iron Horde have no idea how much potential lies within the artifact. Let us give them a proper demonstration, shall we?', 12, 0, 100, 1, 0, 0, 87477, 15703, 15703, 0, 'Draka to Player');

DELETE FROM `creature_text` WHERE (`Entry`=85619);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(85619, 0, 0, 'The Iron Horde have no idea how much potential lies within the artifact. Let us give them a proper demonstration, shall we?', 12, 0, 100, 1, 0, 0, 87477, 15703, 15703, 0, 'Draka to Player');


DELETE FROM `creature_text` WHERE (`Entry`=85571);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(85571, 0, 0, 'Gronnlings, attack!', 14, 0, 100, 25, 0, 46590, 87453, 85094, 85094, 0, 'Commander Gar to 723'),
(85571, 1, 0, 'RELEASE THE IRON STARS!', 14, 0, 100, 273, 0, 46589, 87452, 19578, 150766, 0, 'Commander Gar to 723'),
(85571, 2, 0, 'You will never withstand the might of Goc!', 14, 0, 100, 603, 0, 46588, 87451, 210391, 210391, 0, 'Commander Gar to 723'),
(85571, 3, 0, 'See what weapons I have in my arsenal!', 14, 0, 100, 603, 0, 46587, 87450, 6219, 41281, 0, 'Commander Gar');
*/
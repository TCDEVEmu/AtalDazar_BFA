/*
49488
47445
47423
47433
47434
47435
47437
47422
47438
47439
48897
47441
47442

49918
50178
*/

update `creature_template` set `AIName`= 'SmartAI' where `entry` in (126586,126560,120740,126564,124827);

DELETE FROM `smart_scripts` WHERE `entryorguid`=120740 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(120740, 0, 0, 0, 19, 0, 100, 0, 49488, 0, 0, 0, 0, '', 206, 6401, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=126560 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126560, 0, 0, 0, 19, 0, 100, 0, 47423, 0, 0, 0, 0, '', 1, 0, 6000, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=126790 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126790, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 11, 251650, 0, 0, 0, 0, 0, 11, 126586, 20, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=126586 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126586, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3000, 3500, 0, '', 11, 256099, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Blood Bolt'),
(126586, 0, 1, 0, 8, 0, 100, 0, 251652, 0, 0, 0, 0, '', 80, 12658600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(126586, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(126586, 0, 3, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 138249, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=12658600 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(12658600, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 19, 126790, 20, 0, 0, 0, 0, 0, ''),
(12658600, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 2, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(12658600, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_text` WHERE `CreatureID`=126586;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(126586, 0, 0, 'Interfering Horde scum!', 14, 0, 100, 273, 0, 0, 136856, 0, 'Zanchuli Acolyte to Loti\'s Totem'),
(126586, 0, 1, 'Bah! I will not be undone by some interfering minion of de Horde!', 14, 0, 100, 6, 0, 0, 136853, 0, 'Zanchuli Acolyte to Loti\'s Totem'),
(126586, 0, 2, 'I will carve my next ritual with your blood.', 14, 0, 100, 6, 0, 0, 136857, 0, 'Zanchuli Acolyte to Loti\'s Totem'),
(126586, 0, 3, 'You think I\'m de only one using blood magic here? You are due for an ugly surprise.', 14, 0, 100, 0, 0, 0, 136854, 0, 'Zanchuli Acolyte to Loti\'s Totem'),
(126586, 0, 4, 'You can\'t stop us all!', 14, 0, 100, 0, 0, 0, 136855, 0, 'Zanchuli Acolyte to Loti\'s Totem');

update `quest_template_addon` set `ScriptName`= 'quest_forbidden_practices' where `id`= 47433;

DELETE FROM `smart_scripts` WHERE `entryorguid`=126564 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126564, 0, 0, 0, 62, 0, 100, 0, 21492, 0, 0, 0, 0, '', 33, 126564, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Hexlord Raal - On Gossip Option 0 Selected - Quest Credit \'\''),
(126564, 0, 1, 2, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 53, 0, 1265640, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(126564, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(126564, 0, 3, 0, 40, 0, 100, 0, 5, 0, 0, 0, 0, '', 1, 1, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(126564, 0, 4, 5, 52, 0, 100, 0, 1, 126564, 0, 0, 0, '', 1, 2, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(126564, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 10000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `waypoints` WHERE `entry`=1265640;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(1265640, 1,  -489.52084, 746.7778,  293.8151, 'wp 1'),
(1265640, 2,  -491.56598, 741.19617, 293.7964, 'wp 2'),
(1265640, 3,   -491.2882, 737.8524,  293.7926, 'wp 3'),
(1265640, 4,  -490.99133, 720.5382,  291.72977, 'wp 4'),
(1265640, 5,  -488.22916, 721.1042,  291.65762, 'wp 5');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=21492 AND `SourceEntry`=0 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 21492, 0, 0, 0, 9, 0, 47433, 0, 0, 0, 0, 0, '', ''),
(15, 21492, 0, 0, 0, 48, 0, 292610, 0, 0, 1, 0, 0, '', '');

update `creature_template` set `npcflag`=16777216  where `entry` = 126822;

DELETE FROM `smart_scripts` WHERE `entryorguid`=126822 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126822, 0, 0, 1, 73, 0, 100, 0, 0, 0, 0, 0, 0, '', 224, 47433, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(126822, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 62, 1642, 0, 0, 0, 0, 0, 7, 0, 0, 0, -620.348, 907.31, 348.808, 1.9496, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=126611 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126611, 0, 0, 1, 10, 0, 100, 1, 1, 1, 0, 0, 0, '', 33, 126611, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(126611, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 89, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(126611, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=126611 AND `SourceId`=0 AND `ElseGroup`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=126560 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126560, 0, 1, 0, 19, 0, 100, 0, 47435, 0, 0, 0, 0, '', 85, 277236, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(126560, 0, 2, 0, 19, 0, 100, 0, 47434, 0, 0, 0, 0, '', 85, 277236, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(126560, 0, 3, 0, 20, 0, 100, 0, 47437, 0, 0, 0, 0, '', 28, 285976, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=127669 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(127669, 0, 0, 0, 10, 0, 100, 0, 1, 1, 0, 0, 0, '', 33, 127669, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Nokano - On Spellclick -');



delete from `creature`  where `guid` in (966239,966240,966252,966311,966313,966314,966315,966319,966321,966322,965899,966232,966236,966243,966244,966270,966273,974627,974630,974652,974983,994215,994243,994246,994254,994258);
delete from `creature_addon`  where `guid` in (966239,966240,966252,966311,966313,966314,966315,966319,966321,966322,965899,966232,966236,966243,966244,966270,966273,974627,974630,974652,974983,994215,994243,994246,994254,994258);


delete from `creature` where `guid` in (965864,965866,965870,965871,965884,965944,965952,966287,966288,966305,966308,970190,970191,970195,970196,974939,974941,974942,974949,974950,974951,974952,974978,994260);
delete from `creature_addon`  where `guid` in (965864,965866,965870,965871,965884,965944,965952,966287,966288,966305,966308,970190,970191,970195,970196,974939,974941,974942,974949,974950,974951,974952,974978,994260);


DELETE FROM `smart_scripts` WHERE `entryorguid`=126564 AND `source_type`=0 AND `id`=6;
DELETE FROM `smart_scripts` WHERE `entryorguid`=126564 AND `source_type`=0 AND `id`=7;
DELETE FROM `smart_scripts` WHERE `entryorguid`=126564 AND `source_type`=0 AND `id`=8;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126564, 0, 6, 0, 20, 0, 100, 0, 47435, 0, 0, 0, 0, '', 28, 277236, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(126564, 0, 7, 0, 20, 0, 100, 0, 47434, 0, 0, 0, 0, '', 28, 277236, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(126564, 0, 8, 0, 19, 0, 100, 0, 47437, 0, 0, 0, 0, '', 85, 285976, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 47438 al cojer la quest el npc 126560 tira una conversation

DELETE FROM `smart_scripts` WHERE `entryorguid`=124827 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(124827, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 127444, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE `guid`= 1057167;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(1057167, 127576, 1642, 8499, 8670, '0', 0, 0, 0, 0, -889.70660400390625, 805.35589599609375, 368.495574951171875, 3.277691841125488281, 180, 0, 0, 0, 0, 0, 0, 0, 41359); -- 127576 (Area: 8670 - Difficulty: 0)

DELETE FROM `creature_equip_template` WHERE `CreatureID`= 127576;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(127576, 1, 128100, 0, 0, 0, 0, 0, 0, 0, 0); -- 127576

update `creature_template` set `faction`= 35 where `entry`= 127576;

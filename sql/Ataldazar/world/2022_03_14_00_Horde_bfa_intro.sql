/*
53372
51796
53028
51211
52428
53031
51443
50769
46957
46930
*/

delete from `creature` where `guid` in (1057121,1057122,1057123,1057124,1057162);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(1057121, 140210, 1, 1637, 5356, '0', 0, 0, 0, 0, 1652.078125, -4339.15283203125, 26.43912506103515625, 5.011474132537841796, 120, 0, 0, 14962, 0, 0, 0, 0, 0, 27144), -- 140210 (Area: Grommash Hold - Difficulty: 0)
(1057122, 134711, 1, 1637, 5356, '0', 0, 0, 0, 0, 1661.68408203125, -4347.095703125, 26.41849517822265625, 3.586645841598510742, 120, 0, 0, 51876000, 5902100, 0, 0, 0, 0, 27144), -- 134711 (Area: Grommash Hold - Difficulty: Normal)
(1057123, 139028, 1, 1637, 5170, '0', 170, 0, 0, 1, 1569.4132080078125, -4435.03125, 16.13552284240722656, 1.800256252288818359, 120, 0, 0, 114475, 0, 0, 0, 0, 0, 41359), -- 139028 (Area: 5170 - Difficulty: 0)
(1057124, 135213, 1, 1637, 5170, '0', 170, 0, 0, 1, 1573.8072509765625, -4433.2587890625, 16.13552284240722656, 2.0272674560546875, 120, 0, 0, 114475, 0, 0, 0, 0, 0, 41359), -- 135213 (Area: 5170 - Difficulty: 0)
(1057162, 135441, 1642, 8499, 8670, '0', 0, 0, 0, 0, -1100.6875, 817.93402099609375, 497.160064697265625, 6.062157630920410156, 120, 0, 0, 864600, 2951050, 0, 0, 0, 0, 27404); -- Zolani (Area: Dazar'alor - Difficulty: 0)


delete from `creature_addon` where `guid`in (1057121,1057122);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(1057121, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- 140210
(1057122, 0, 0, 0, 256, 0, 0, 0, 0, ''); -- 134711


UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 135211;
DELETE FROM `smart_scripts` WHERE `entryorguid`=135211 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(135211, 0, 0, 1, 8, 0, 100, 0, 52391, 0, 0, 0, 0, '', 33, 135211, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on spellclick - kc'),
(135211, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 85, 265595, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on link - self cast');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=22787;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 22787, 0, 0, 0, 9, 0, 51796, 0, 0, 0, 0, 0, '', 'Show gossip menu 22787 option'),
(15, 22787, 1, 0, 0, 9, 0, 51796, 0, 0, 0, 0, 0, '', 'Show gossip menu 22787 option');

UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName`= '' WHERE `entry` = 139093;

DELETE FROM `smart_scripts` WHERE `entryorguid`=139093 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(139093, 0, 0, 0, 62, 0, 100, 0, 22787, 1, 0, 0, 0, '', 224, 51796, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on gossip select 1 - questcomplete');

UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName`= '' WHERE `entry` = 140176;

DELETE FROM `smart_scripts` WHERE `entryorguid`=140176 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(140176, 0, 0, 0, 19, 0, 100, 0, 51443, 0, 0, 0, 0, '', 206, 9570, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on queststart 51443 - play conversation'),
(140176, 0, 1, 0, 19, 0, 100, 0, 53028, 0, 0, 0, 0, '', 206, 9316, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on queststart 53028 - play conversation');


DELETE FROM `creature_text` WHERE `CreatureID`=135208 and `GroupID`= 0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(135208, 0, 0, 'These war eagles will carry us to our destination. Ready to go? Then climb aboard!', 12, 0, 100, 0, 0, 81544, 156541, 'Lasan Skyhorn to Player');


DELETE FROM `conversation_actors` WHERE `ConversationId`=8383 AND `Idx`=0;
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `ConversationActorGuid`, `ConversationActorNearId`, `Idx`, `VerifiedBuild`) VALUES 
(8383, 0, 0, 138913, 0, 31478);



UPDATE `creature_template` SET `flags_extra`= 128 WHERE `entry` in (135917,137607,137580);



UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 130216;
DELETE FROM `smart_scripts` WHERE `entryorguid`=130216 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130216, 0, 0, 0, 10, 0, 100, 0, 1, 20, 0, 0, 0, '', 85, 279991 , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on occ lost - kc'),
(130216, 0, 1, 0, 19, 0, 100, 0, 51211, 0, 0, 0, 0, '', 12, 130216, 5, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on quest start - summon npc in personal visibility'),
(130216, 0, 2, 3, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 80, 13021600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on spawn - run actionlist'),
(130216, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 44, 169, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link - add phase'),
(130216, 0, 4, 5, 40, 0, 100, 0, 1, 0, 0, 0, 0, '', 54, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp reached 1 - pause wp'),
(130216, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 97, 15, 15, 0, 0, 0, 0, 1, 0, 0, 0, -7085.55,  1258.85,  -103.65, 0, ' on link - jump'),
(130216, 0, 6, 0, 40, 0, 100, 0, 2, 0, 0, 0, 0, '', 41, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp reached 2 - despawn');

DELETE FROM `smart_scripts` WHERE `entryorguid`=13021600 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(13021600, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'set npcflag 0'),
(13021600, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'text'),
(13021600, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 0, '', 53, 1, 1302160, 0, 0, 0, 0, 1, 0, 0, 0, 0,  0,  0, 0, 'move');

DELETE FROM `waypoints` WHERE `entry`=1302160;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(1302160, 1,  -7074.6494,  1266.6727,  -92.045135, 'wp 1'),
(1302160, 2,  -7077.59,  1231.29,  -112.250404, 'wp 2');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=130216 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 130216, 0, 0, 9, 0, 53028, 0, 0, 0, 0, 0, '', 'SAI only if has quest 53028'),
(22, 1, 130216, 0, 0, 28, 0, 53028, 0, 0, 1, 0, 0, '', 'SAI only if not complete quest 53028');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 137580;
DELETE FROM `smart_scripts` WHERE `entryorguid`=137580 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(137580, 0, 0, 1, 10, 0, 100, 0, 1, 1, 10, 10, 0, '', 12, 139828, 5, 0, 0, 1, 0, 8, 0, 0, 0, -8296.56, 1754.69, 312.128, 0.107698, 'on occ lost - summon creature'),
(137580, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 10000000, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on link - kc');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=137580 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 137580, 0, 0, 48, 0, 10000000, 0, 0, 1, 0, 0, '', 'SAI only if not complete objetive quest 10000000'),
(22, 1, 137580, 0, 0, 9, 0, 51211, 0, 0, 0, 0, 0, '', 'SAI only if not complete quest 53028');


DELETE FROM `creature_template` WHERE `entry`=10000000;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(10000000, 0, 0, 0, 0, 0, '', NULL, '', 'Custom Objetive for Quest 51211', NULL, 0, 1, 1, 0, 0, 0, 35, 0, 1, 1.14286, 1, 1, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 12, 1, 1, 1, 1, 3, 3, 0, 0, 1, 0, 128, '', -1);

DELETE FROM `quest_objectives` WHERE `ID`=10000000;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES 
(10000000, 51211, 0, 0, 4, 10000000, 1, 28, 0, 0, 'Custom - Magni Event', -1);

DELETE FROM `creature_template_model` WHERE `CreatureID`=10000000 AND `CreatureDisplayID`=78159;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(10000000, 0, 78159, 1, 1, -1);


UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 139828;
DELETE FROM `smart_scripts` WHERE `entryorguid`=139828 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(139828, 0, 0, 1, 10, 0, 100, 1, 1, 10, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on occ lost - talk'),
(139828, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 53, 1, 1398280, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link - wp'),
(139828, 0, 2, 0, 40, 0, 100, 0, 5, 0, 0, 0, 0, '', 41, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp end - despawn');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=22620 AND `SourceEntry`=0 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 22620, 0, 0, 0, 9, 0, 51211, 0, 0, 0, 0, 0, '', 'gossip only if has quest 51211'),
(15, 22620, 0, 0, 0, 48, 0, 335132, 0, 0, 1, 0, 0, '', 'gossip only if not objetive quest 335132');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=22537 AND `SourceEntry`=1 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 22537, 1, 0, 0, 9, 0, 51211, 0, 0, 0, 0, 0, '', 'gossip only if has quest 51211'),
(15, 22537, 1, 0, 0, 48, 0, 335716, 0, 0, 1, 0, 0, '', 'gossip only if not objetive quest 335716');



DELETE FROM `waypoints` WHERE `entry`=1398280;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(1398280, 1,  -8315.075, 1754.36, 316.91275, 'wp 1'),
(1398280, 2,  -8319.075, 1754.36, 315.91275, 'wp 2'),
(1398280, 3,  -8322.825, 1754.36, 314.66275, 'wp 3'),
(1398280, 4,  -8326.825, 1754.36, 313.66275, 'wp 4'),
(1398280, 5,  -8327.32 , 1754.36, 313.62012, 'wp 5');


UPDATE `scene_template` SET `ScriptName`= 'SmartScene' WHERE `SceneId`= 2136;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2136 AND `source_type`=10;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(2136, 10, 0, 0, 80, 0, 100, 0, 0, 0, 0, 0, 0, '', 85, 265586, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on scene cancel - player cast spell'),
(2136, 10, 1, 0, 80, 0, 100, 0, 0, 0, 0, 0, 0, '', 12, 135205, 5, 0, 0, 1, 0, 8, 0, 0, 0, 1650.54, -4348.23, 26.5083, 0.120623, 'on scene cancel - summon creature personal'),
(2136, 10, 2, 0, 81, 0, 100, 0, 0, 0, 0, 0, 0, '', 85, 265586, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on scene complete - player cast spell'),
(2136, 10, 3, 0, 81, 0, 100, 0, 0, 0, 0, 0, 0, '', 12, 135205, 5, 0, 0, 1, 0, 8, 0, 0, 0, 1650.54, -4348.23, 26.5083, 0.120623, 'on scene complete - summon creature personal');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 134711;
DELETE FROM `smart_scripts` WHERE `entryorguid`=134711 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(134711, 0, 0, 0, 38, 0, 100, 0, 2, 2, 0, 0, 0, '', 80, 13471100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on just spawned - run actionlist');

DELETE FROM `smart_scripts` WHERE `entryorguid`=13471100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(13471100, 9, 0, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 0, '', 1, 0 , 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'talk'),
(13471100, 9, 1, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 0, '', 45, 4 , 5, 0, 0, 0, 0, 11, 135205, 15, 0, 0, 0, 0, 0, 'set data 4 5');



UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 135205;
DELETE FROM `smart_scripts` WHERE `entryorguid`=135205 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(135205, 0, 0, 0, 38, 0, 100, 0, 4, 5, 0, 0, 0, '', 80, 13520500, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on data set - run action list'),
(135205, 0, 1, 0, 40, 0, 100, 0, 14, 0, 0, 0, 0, '', 41, 100 , 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp end - despawn'),
(135205, 0, 2, 3, 19, 0, 100, 0, 50769, 0, 0, 0, 0, '', 50, 289645, 0, 0, 0, 0, 0, 8, 0, 0, 0, 1577.965, -4455.622, 16.55939, 0, 'on qyuest start - summon go'),
(135205, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link - talk'),
(135205, 0, 4, 0, 62, 0, 100, 0, 23141, 0, 0, 0, 0, '', 85, 263948, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on gossip select - player cast spell'),
(135205, 0, 5, 6, 38, 0, 100, 0, 4, 3, 0, 0, 0, '', 53, 0, 1352051, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on data set - play wp'),
(135205, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 80, 13520501, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link - run action list'),
(135205, 0, 7, 8, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 53, 0, 1352052, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on just spawned - play wp'),
(135205, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 80, 13520502, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link - run action list'),
(135205, 0, 9, 10, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on just spawned - set npcflag'),
(135205, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 45, 2, 2, 0, 0, 0, 0, 11, 134711, 20, 0, 0, 0, 0, 0, 'on link - set data 2 2');



DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=8 AND `SourceEntry`=135205 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 8, 135205, 0, 0, 48, 0, 335884, 0, 0, 0, 0, 0, '', 'SAI only if quest objetive 335884'),
(22, 8, 135205, 0, 0, 48, 0, 10000002, 0, 0, 1, 0, 0, '', 'SAI only if not quest objetive 10000002');


DELETE FROM `smart_scripts` WHERE `entryorguid`=13520501 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(13520501, 9, 0, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, '', 41, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'despawn'),
(13520501, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 100, 0, 0, 0, 0, 0, 11, 135206, 2, 0, 0, 0, 0, 0, 'despawn'),
(13520501, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 100, 0, 0, 0, 0, 0, 11, 135207, 2, 0, 0, 0, 0, 0, 'despawn');


DELETE FROM `smart_scripts` WHERE `entryorguid`=13520502 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(13520502, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0 , 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'set npcflag'),
(13520502, 9, 1, 0, 0, 0, 100, 0, 18000, 18000, 0, 0, 0, '', 33, 10000002, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'kc'),
(13520502, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'despawn');

DELETE FROM `waypoints` WHERE `entry`=1352052; -- wp 
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(1352052, 1,  1569.9291, -4426.8681, 14.3961, 'wp 1'),
(1352052, 2,  1571.2016, -4431.3896, 16.0524, 'wp 2'),
(1352052, 3,  1577.17  , -4453.82  , 15.6648, 'wp 3');


DELETE FROM `creature_template` WHERE `entry`=10000002;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(10000002, 0, 0, 0, 0, 0, '', NULL, '', 'Custom Objetive for Quest 51443', NULL, 0, 1, 1, 0, 0, 0, 35, 0, 1, 1.14286, 1, 1, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 12, 1, 1, 1, 1, 3, 3, 0, 0, 1, 0, 128, '', -1);
DELETE FROM `creature_template` WHERE `entry`=10000001;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(10000001, 0, 0, 0, 0, 0, '', NULL, '', 'Custom Objetive for Quest 51443', NULL, 0, 1, 1, 0, 0, 0, 35, 0, 1, 1.14286, 1, 1, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 12, 1, 1, 1, 1, 3, 3, 0, 0, 1, 0, 128, '', -1);

DELETE FROM `quest_objectives` WHERE `ID`=10000002;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES 
(10000002, 51443, 0, 3, 3, 10000002, 1, 26, 0, 0, 'Custom - Nathanos arrived', -1);

DELETE FROM `quest_objectives` WHERE `ID`=10000001;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES 
(10000001, 51443, 0, 2, 2, 10000001, 1, 30, 0, 0, 'Custom - Deathguards greetings received', -1);

DELETE FROM `creature_template_model` WHERE `CreatureID`=10000002 AND `CreatureDisplayID`=78159;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(10000002, 0, 78159, 1, 1, -1);
DELETE FROM `creature_template_model` WHERE `CreatureID`=10000001 AND `CreatureDisplayID`=78159;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(10000001, 0, 78159, 1, 1, -1);

update `creature` set `position_x`= 1571.51, `position_y`= -4434.02, `position_z`= 16.0527 where `guid`= 1053403;


-- Custom en el sniff de shadowlands el wp cambio respecto al de bfa necesario algun sniff de bfa de blizzard para cojer el wp original de esa expansion
DELETE FROM `waypoints` WHERE `entry`=1352051;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(1352051, 1,  1571.5461, -4433.6923, 16.0534, 'wp 1');


DELETE FROM `smart_scripts` WHERE `entryorguid`=13520500 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(13520500, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0 , 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'set npcflag'),
(13520500, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 5, 2 , 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'emote'),
(13520500, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, '', 53, 0 , 1352050, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'play wp');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=23141 AND `SourceEntry`=0 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 23141, 0, 0, 0, 48, 0, 333785, 0, 0, 0, 0, 0, '', 'gossip only if quest objetive 333785');


DELETE FROM `waypoints` WHERE `entry`=1352050;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(1352050, 1,  1649.0703, -4349.089, 26.512444, 'wp 1'),
(1352050, 2,  1644.0703, -4352.589, 26.762444, 'wp 2'),
(1352050, 3,  1640.0703, -4356.589, 27.012444, 'wp 3'),
(1352050, 4,  1631.8203, -4361.589, 27.012444, 'wp 4'),
(1352050, 5,  1627.8203, -4363.589, 25.012444, 'wp 5'),
(1352050, 6,  1626.3203, -4364.339, 24.762444, 'wp 6'),
(1352050, 7,  1623.3203, -4364.339, 24.762444, 'wp 7'),
(1352050, 8,  1619.5703, -4363.089, 24.762444, 'wp 8'),
(1352050, 9,  1616.5703, -4362.839, 24.762444, 'wp 9'),
(1352050, 10,  1614.8203, -4366.089, 24.762444, 'wp 10'),
(1352050, 11,  1614.3203, -4368.339, 24.762444, 'wp 11'),
(1352050, 12,  1612.5703, -4371.589, 24.762444, 'wp 12'),
(1352050, 13,  1610.8203, -4372.839, 24.762444, 'wp 13'),
(1352050, 14,  1604.6024, -4376.9517, 21.01661, 'wp 14');



UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 135206;
DELETE FROM `smart_scripts` WHERE `entryorguid`=135206 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(135206, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 80, 13520600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on just spawned - run action list');
DELETE FROM `smart_scripts` WHERE `entryorguid`=13520600 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(13520600, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 206, 8399, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'play conversation'),
(13520600, 9, 1, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 0, '', 45, 4, 3, 0, 0, 0, 0, 11, 135205, 5, 0, 0, 0, 0, 0, 'set data 4 3'),
(13520600, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 45, 4, 3, 0, 0, 0, 0, 11, 135207, 5, 0, 0, 0, 0, 0, 'set data 4 3'),
(13520600, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 53, 0, 1352051, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'play wp');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 135207;
DELETE FROM `smart_scripts` WHERE `entryorguid`=135207 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(135207, 0, 0, 0, 38, 0, 100, 0, 4, 3, 0, 0, 0, '', 53, 0, 1352051, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on data set - play wp');



UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 135208;
DELETE FROM `smart_scripts` WHERE `entryorguid`=135208 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(135208, 0, 0, 0, 10, 0, 100, 0, 1, 10, 20000, 20000, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on occ lost - talk');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=135208 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 135208, 0, 0, 9, 0, 50769, 0, 0, 0, 0, 0, '', 'SAI only if has quest 50769'),
(22, 1, 135208, 0, 0, 8, 0, 50769, 0, 0, 1, 0, 0, '', 'SAI only if not quest rewarded 50769'),
(22, 1, 135208, 0, 0, 48, 0, 335889, 0, 0, 1, 0, 0, '', 'SAI only if not quest objetive 335889'),
(22, 1, 135208, 0, 0, 48, 0, 333785, 0, 0, 0, 0, 0, '', 'SAI only if quest objetive 333785');



DELETE FROM `creature_template` WHERE `entry`=10000003;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(10000003, 0, 0, 0, 0, 0, '', NULL, '', 'Custom Objetive for Quest 50769', NULL, 0, 1, 1, 0, 0, 0, 35, 0, 1, 1.14286, 1, 1, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 12, 1, 1, 1, 1, 3, 3, 0, 0, 1, 0, 128, '', -1);

DELETE FROM `quest_objectives` WHERE `ID`=10000003;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES 
(10000003, 50769, 0, 3, 3, 10000003, 1, 28, 0, 0, 'Custom - Talanji arrived', -1);


UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 121541;
DELETE FROM `smart_scripts` WHERE `entryorguid`=121541 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(121541, 0, 0, 0, 10, 0, 100, 0, 1, 25, 0, 0, 0, '', 80, 12154100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on occ lost - run actionlist');
DELETE FROM `smart_scripts` WHERE `entryorguid`=12154100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(12154100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 224, 50769, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'force_complete_quest'),
(12154100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 85, 243620, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'player cast spell'),
(12154100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 85, 280857, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'player cast spell');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=121541 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 121541, 0, 0, 9, 0, 50769, 0, 0, 0, 0, 0, '', 'SAI only if has quest 50769'),
(22, 1, 121541, 0, 0, 48, 0, 10000003, 0, 0, 1, 0, 0, '', 'SAI only if not complete quest objetive 10000003');




UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 132332;
DELETE FROM `smart_scripts` WHERE `entryorguid`=132332 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(132332, 0, 0, 0, 10, 0, 100, 0, 1, 25, 20000, 20000, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on occ lost - talk');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=132332 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 132332, 0, 0, 48, 0, 10000003, 0, 0, 0, 0, 0, '', 'SAI only if  questobjetive complete 10000003'),
(22, 1, 132332, 0, 0, 8, 0, 50769, 0, 0, 1, 0, 0, '', 'SAI only if not quest rewarded 50769');


DELETE FROM `conversation_actors` WHERE `ConversationId`=6722 AND `Idx`=1;
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `ConversationActorGuid`, `ConversationActorNearId`, `Idx`, `VerifiedBuild`) VALUES 
(6722, 0, 0, 120169, 1, 28153);


-- 138913
update `creature_template` set `speed_walk`=3.5, `speed_run`=3.5 where `entry`= 138912;


UPDATE `creature_template` SET `gossip_menu_id`=21433, `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 135440;
DELETE FROM `smart_scripts` WHERE `entryorguid`=135440 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(135440, 0, 0, 0, 62, 0, 100, 0, 21433, 0, 0, 0, 0, '', 85, 244534, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on gossip menu - kc');



UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 132661;

DELETE FROM `smart_scripts` WHERE `entryorguid`=132661 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(132661, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 43, 0, 80358, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on just spawn - mount'),
(132661, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 53, 1, 1326610, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link - play wp'),
(132661, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 80, 13266100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ' on link - run actionlist'),
(132661, 0, 3, 0, 40, 0, 100, 0, 11, 0, 0, 0, 0, '', 80, 13266101, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp reached - play actionlist');

DELETE FROM `smart_scripts` WHERE `entryorguid`=13266100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(13266100, 9, 0, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, '', 206, 6721, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'conversation');
DELETE FROM `smart_scripts` WHERE `entryorguid`=13266101 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(13266101, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 6.108650, 'set o'),
(13266101, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 265711, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'cast spell'),
(13266101, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 28, 261486, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'remove aura'),
(13266101, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 206, 6722, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'conversation'),
(13266101, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'despawn');


DELETE FROM `script_waypoint` WHERE `entry`=132661;
DELETE FROM `waypoints` WHERE `entry`=1326610;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(1326610, 1, -2069.57, 802.97, 5.933,     'wp 1'),
(1326610, 2, -2035.97, 803.092, 5.933,    'wp 2'),
(1326610, 3, -2007.02, 783.316, 5.933,    'wp 3'),
(1326610, 4, -1982.4, 790.391, 19.2036,   'wp 4'),
(1326610, 5, -1971.43, 794.131, 25.5329,  'wp 5'),
(1326610, 6, -1929.82, 802.68, 25.4165,   'wp 6'),
(1326610, 7, -1900.44, 802.798, 41.6337,  'wp 7'),
(1326610, 8, -1877.9, 802.887, 53.8157,   'wp 8'),
(1326610, 9, -1845.29, 821.676, 53.7782,  'wp 9'),
(1326610, 10, -1828.54, 821.559, 53.7431, 'wp 10'),
(1326610, 11, -1812.54, 803.364, 53.4007, 'wp 11');




UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 135441;
UPDATE `creature_template` SET `AIName`='', `ScriptName`= '' WHERE `entry`= 120740;
DELETE FROM `smart_scripts` WHERE `entryorguid`=120740 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=135441 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(135441, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 10000006, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on gossip hello - kc'),
(135441, 0, 1, 2, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 53, 0, 1354410, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on just spawned - play wp'),
(135441, 0, 2, 6, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link - talk'),
(135441, 0, 3, 4, 40, 0, 100, 0, 8, 0, 0, 0, 0, '', 33, 120169, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'on wp reached 8 - kc'),
(135441, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 1, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link - text'),
(135441, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 10000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link - despawn'),
(135441, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link - set npcflag 0');

UPDATE `quest_template_addon` SET `ScriptName`= 'SmartQuest' WHERE `id`= 46931;


DELETE FROM `creature_template` WHERE `entry`=10000006;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(10000006, 0, 0, 0, 0, 0, '', NULL, '', 'Custom Objetive for Quest 46931', NULL, 0, 1, 1, 0, 0, 0, 35, 0, 1, 1.14286, 1, 1, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 12, 1, 1, 1, 1, 3, 3, 0, 0, 1, 0, 128, '', -1);

DELETE FROM `quest_objectives` WHERE `ID`=10000006;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES 
(10000006, 46931, 0, 0, 7, 10000006, 1, 28, 0, 0, 'Custom - Player Summon Zolani', -1);

DELETE FROM `creature_template_model` WHERE `CreatureID`=10000006 AND `CreatureDisplayID`=78159;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(10000006, 0, 78159, 1, 1, -1);




DELETE FROM `script_waypoint` WHERE `entry`=135441;
DELETE FROM `waypoints` WHERE `entry`=1354410;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1354410, 1, -1100.43, 821.323, 497.072, '1 wp');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1354410, 2, -1097.96, 834.612,  487.71, '2 wp');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1354410, 3, -1099.14, 838.111,   487.7, '3 wp');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1354410, 4, -1110.93, 839.762,  487.69, '4 wp');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1354410, 5,  -1123.1, 840.027, 487.863, '5 wp');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1354410, 6,    -1130, 843.566, 487.863, '6 wp');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1354410, 7, -1129.66, 845.916, 487.865, '7 wp');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (1354410, 8, -1128.93, 845.625, 487.865, '8 wp');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=135441 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 135441, 0, 0, 48, 0, 10000006, 0, 0, 1, 0, 0, '', 'sAI only if - not complete qobjetive 10000006'),
(22, 1, 135441, 0, 0, 9, 0, 46931, 0, 0, 0, 0, 0, '', 'sAI only if - has quest 46931');

DELETE FROM `creature_template` WHERE `entry`=10000004;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(10000004, 0, 0, 0, 0, 0, '', NULL, '', 'Custom Objetive for Quest 46931', NULL, 0, 1, 1, 0, 0, 0, 35, 0, 1, 1.14286, 1, 1, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 12, 1, 1, 1, 1, 3, 3, 0, 0, 1, 0, 128, '', -1);
DELETE FROM `creature_template` WHERE `entry`=10000005;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(10000005, 0, 0, 0, 0, 0, '', NULL, '', 'Custom Objetive for Quest 46931', NULL, 0, 1, 1, 0, 0, 0, 35, 0, 1, 1.14286, 1, 1, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 12, 1, 1, 1, 1, 3, 3, 0, 0, 1, 0, 128, '', -1);


DELETE FROM `quest_objectives` WHERE `ID`=10000004;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES 
(10000004, 46931, 0, 0, 5, 10000004, 1, 28, 0, 0, 'Custom - Talanji Event', -1);
DELETE FROM `quest_objectives` WHERE `ID`=10000005;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES 
(10000005, 46931, 0, 0, 6, 10000005, 1, 28, 0, 0, 'Custom - Talanji Event2', -1);


DELETE FROM `creature_template_model` WHERE `CreatureID`=10000004 AND `CreatureDisplayID`=78159;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(10000004, 0, 78159, 1, 1, -1);
DELETE FROM `creature_template_model` WHERE `CreatureID`=10000005 AND `CreatureDisplayID`=78159;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(10000005, 0, 78159, 1, 1, -1);



UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 133050;
DELETE FROM `smart_scripts` WHERE `entryorguid`=-965537 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(-965537, 0, 0, 1, 10, 0, 100, 0, 1, 20, 0, 0, 0, '', 12, 133050, 5, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on occlost - summon creature'),
(-965537, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 10000004, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on link - kc');
DELETE FROM `smart_scripts` WHERE `entryorguid`=133050 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(133050, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on justspawned - talk'),
(133050, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 53, 0, 1330500, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link - play wp'),
(133050, 0, 2, 3, 40, 0, 100, 0, 999999, 0, 0, 0, 0, '', 33, 10000005, 0, 0, 0, 0, 0, 18, 30, 0, 0, 0, 0, 0, 0, 'on wp reached - XXXX - kc'),
(133050, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link - despawn'),
(133050, 0, 4, 0, 19, 0, 100, 0, 52131, 0, 0, 0, 0, '', 85, 273387, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on quest accept 52131 - self castspell');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=-965537 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, -965537, 0, 0, 48, 0, 10000004, 0, 0, 1, 0, 0, '', 'sAI only if - not complete qobjetive 10000004'),
(22, 1, -965537, 0, 0, 9, 0, 46931, 0, 0, 0, 0, 0, '', 'sAI only if - has quest 46931');








/*
965535

121000


1894 
1975 
*/
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

delete from `creature` where `guid` in (1057121,1057122,1057123,1057124);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(1057121, 140210, 1, 1637, 5356, '0', 0, 0, 0, 0, 1652.078125, -4339.15283203125, 26.43912506103515625, 5.011474132537841796, 120, 0, 0, 14962, 0, 0, 0, 0, 0, 27144), -- 140210 (Area: Grommash Hold - Difficulty: 0)
(1057122, 134711, 1, 1637, 5356, '0', 0, 0, 0, 0, 1661.68408203125, -4347.095703125, 26.41849517822265625, 3.586645841598510742, 120, 0, 0, 51876000, 5902100, 0, 0, 0, 0, 27144), -- 134711 (Area: Grommash Hold - Difficulty: Normal)
(1057123, 139028, 1, 1637, 5170, '0', 170, 0, 0, 1, 1569.4132080078125, -4435.03125, 16.13552284240722656, 1.800256252288818359, 120, 0, 0, 114475, 0, 0, 0, 0, 0, 41359), -- 139028 (Area: 5170 - Difficulty: 0)
(1057124, 135213, 1, 1637, 5170, '0', 170, 0, 0, 1, 1573.8072509765625, -4433.2587890625, 16.13552284240722656, 2.0272674560546875, 120, 0, 0, 114475, 0, 0, 0, 0, 0, 41359); -- 135213 (Area: 5170 - Difficulty: 0)

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
(139093, 0, 0, 0, 62, 0, 100, 0, 22787, 1, 0, 0, 0, '', 224, 51796, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on gossip select 1 - kc');

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

DELETE FROM `phase_area` WHERE `AreaId`=9609;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(9609, 169, 'Silithus Default Phase'),
(9609, 170, 'Silithus S-Q-53028 / Q-S-51211');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=9609;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 9609, 0, 0, 9, 0, 53028, 0, 0, 0, 0, 0, '', 'Phase 170 if has Quest 53028 '),
(26, 170, 9609, 0, 1, 28, 0, 53028, 0, 0, 0, 0, 0, '', 'Phase 170 if Quest 53028 complete'),
(26, 170, 9609, 0, 2, 8, 0, 53028, 0, 0, 0, 0, 0, '', 'Phase 170 if Quest 53028 rewarded'),
(26, 170, 9609, 0, 2, 9, 0, 51211, 0, 0, 1, 0, 0, '', 'Phase 170 if not has Quest 53028');

UPDATE `creature_template` SET `flags_extra`= 128 WHERE `entry` in (135917,137607,137580);

update `creature` set `phaseid` = 170 where `guid`=933142;

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 130216;
DELETE FROM `smart_scripts` WHERE `entryorguid`=130216 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130216, 0, 0, 0, 10, 0, 100, 0, 1, 20, 0, 0, 0, '', 85, 279991 , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on occ lost - kc'),
(130216, 0, 1, 0, 19, 0, 100, 0, 51211, 0, 0, 0, 0, '', 12, 130216, 5, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on quest start - summon npc in personal visibility'),
(130216, 0, 2, 3, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 80, 13021600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on spawn - run actionlist'),
(130216, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 44, 169, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link - add phase');
DELETE FROM `smart_scripts` WHERE `entryorguid`=13021600 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(13021600, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'set npcflag 0'),
(13021600, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'text'),
(13021600, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 0, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -7074.6494,  1266.6727,  -92.045135, 0, 'move'),
(13021600, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 97, 15, 15, 0, 0, 0, 0, 1, 0, 0, 0, -7085.55,  1258.85,  -103.65, 0, 'jump'),
(13021600, 9, 4, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -7077.59,  1231.29,  -112.250404, 0, 'move'),
(13021600, 9, 5, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 0, '', 41, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'despawn');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=130216 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 130216, 0, 0, 9, 0, 53028, 0, 0, 0, 0, 0, '', 'SAI only if has quest 53028'),
(22, 1, 130216, 0, 0, 28, 0, 53028, 0, 0, 1, 0, 0, '', 'SAI only if not complete quest 53028');

DELETE FROM `phase_area` WHERE `AreaId`=9667;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(9667, 169, 'Chamber of Heart Default Phase'),
(9667, 170, 'Chamber of Heart Intro Phase');

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


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=9667;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 9667, 0, 0, 8, 0, 53031, 0, 0, 1, 0, 0, '', 'Phase 170 if Quest 51211 complete');


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
(135205, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 45, 2, 2, 0, 0, 0, 0, 11, 134711, 20, 0, 0, 0, 0, 0, 'on just spawned - set npcflag');



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



update `creature` set `phaseid` = 170 where `guid` in (1053407,1053406);

DELETE FROM `phase_area` WHERE `AreaId`=8618;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(8618, 169, 'The broken Tusk Default Phase'),
(8618, 170, 'The broken Tusk Intro bfa Phase'),
(8618, 171, 'The broken Tusk Intro bfa Phase2');

update `creature` set `phaseid` = 171 where `guid` = 1053405;

DELETE FROM `phase_area` WHERE `AreaId`=5170;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(5170, 169, 'Valley of Strength Default Phase'),
(5170, 170, 'Valley of Strength Intro bfa Phase');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=5170;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 5170, 0, 0, 48, 0, 335883, 0, 0, 0, 0, 0, '', 'Phase 170 if quest objetive 335883 '),
(26, 170, 5170, 0, 0, 48, 0, 10000002, 0, 0, 1, 0, 0, '', 'Phase 170 if not quest objetive 10000002'),

(26, 170, 5170, 0, 1, 28, 0, 51443, 0, 0, 0, 0, 0, '', 'Phase 170 if quest complete 51443'),

(26, 170, 5170, 0, 2, 8, 0, 51443, 0, 0, 0, 0, 0, '', 'Phase 170 if quest rewarded 51443'),
(26, 170, 5170, 0, 2, 9, 0, 50769, 0, 0, 1, 0, 0, '', 'Phase 170 if not quest has 50769'),

(26, 170, 5170, 0, 3, 9, 0, 50769, 0, 0, 0, 0, 0, '', 'Phase 170 if quest has 50769'),
(26, 170, 5170, 0, 3, 48, 0, 333785, 0, 0, 1, 0, 0, '', 'Phase 170 if quest objetive 333785');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=8618;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 8618, 0, 0, 48, 0, 335883, 0, 0, 0, 0, 0, '', 'Phase 170 if quest objetive 335883 '),
(26, 170, 8618, 0, 1, 28, 0, 51443, 0, 0, 0, 0, 0, '', 'Phase 170 if quest complete 51443'),
(26, 170, 8618, 0, 2, 8, 0, 51443, 0, 0, 0, 0, 0, '', 'Phase 170 if quest rewarded 51443'),
(26, 170, 8618, 0, 2, 9, 0, 50769, 0, 0, 1, 0, 0, '', 'Phase 170 if not quest has 50769'),
(26, 170, 8618, 0, 3, 9, 0, 50769, 0, 0, 0, 0, 0, '', 'Phase 170 if quest has 50769'),
(26, 170, 8618, 0, 3, 48, 0, 333785, 0, 0, 1, 0, 0, '', 'Phase 170 if quest objetive 333785');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=171 AND `SourceEntry`=8618;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 171, 8618, 0, 0, 48, 0, 10000002, 0, 0, 0, 0, 0, '', 'Phase 170 if quest objetive 10000002 '),
(26, 171, 8618, 0, 1, 28, 0, 51443, 0, 0, 0, 0, 0, '', 'Phase 170 if quest complete 51443'),
(26, 171, 8618, 0, 2, 8, 0, 51443, 0, 0, 0, 0, 0, '', 'Phase 170 if quest rewarded 51443'),
(26, 171, 8618, 0, 2, 8, 0, 50769, 0, 0, 1, 0, 0, '', 'Phase 170 if not quest rewarded 50769'),
(26, 171, 8618, 0, 2, 48, 0, 333785, 0, 0, 1, 0, 0, '', 'Phase 170 if not quest objetive 333785');



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


DELETE FROM `phase_area` WHERE `AreaId`=8665;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(8665, 169, 'Port of Zandalar Default Phase'),
(8665, 170, 'Port of Zandalar Q-46957'),
(8665, 171, 'Port of Zandalar QE-50769 QR-46957');


update `creature` set `phaseid` = 170 where `guid` = 965214;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=8665;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 8665, 0, 0, 28, 0, 50769, 0, 0, 0, 0, 0, '', 'Phase 170 if Quest complete 50769'),
(26, 170, 8665, 0, 1, 8, 0, 50769, 0, 0, 0, 0, 0, '', 'Phase 170 if Quest rewarded 50769'),
(26, 170, 8665, 0, 1, 9, 0, 46957, 0, 0, 1, 0, 0, '', 'Phase 170 if not Quest has 46957'),
(26, 170, 8665, 0, 1, 28, 0, 46957, 0, 0, 1, 0, 0, '', 'Phase 170 if not quest complete 46957'),
(26, 170, 8665, 0, 1, 8, 0, 46957, 0, 0, 1, 0, 0, '', 'Phase 170 if not Quest rewarded 46957');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=171 AND `SourceEntry`=8665;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 171, 8665, 0, 0, 8, 0, 46957, 0, 0, 1, 0, 0, '', 'Phase 171 if not Quest rewarded 46957'),
(26, 171, 8665, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', 'Phase 171 if player horde');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=171 AND `SourceEntry`=8666;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 171, 8666, 0, 0, 8, 0, 46957, 0, 0, 1, 0, 0, '', 'Phase 171 if not Quest rewarded 46957'),
(26, 171, 8666, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', 'Phase 171 if player horde');

/*
update `creature` set `phaseid` = 171 where `guid` in ( 
210401244,210401227,210401241,210401235,210401240,210401243,210401251,210401247,210401256,210401259,210401258,210401250,210401252,210401255,210401264,210401270,210401189,210401190,210401253,210401257,210401248,210401254,210401242,210401239,210401236,210401238,210401233,
210401217,210401194,210401233,210401212,210401218,210401223,210401222,210401221,210401209,210401213,210401220,210401219,210401208,210401206,210401203,210401201,210401205,210401207,210401200,210401202,210401204,210401184,210401181,210401196,210401186,210401192,210401195,
210401199,210401191,210401183);
*/

DELETE FROM `conversation_actors` WHERE `ConversationId`=6722 AND `Idx`=1;
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `ConversationActorGuid`, `ConversationActorNearId`, `Idx`, `VerifiedBuild`) VALUES 
(6722, 0, 0, 120169, 1, 28153);

update `creature` set `phaseid` = 170 where `guid` = 965280;

DELETE FROM `phase_area` WHERE `AreaId`=8666;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(8666, 169, 'Grand Bazaar Default Phase'),
(8666, 170, 'Grand Bazaar Q-46957 QE-46957'),
(8666, 171, 'Port of Zandalar QE-50769 QR-46957');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=8666;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 8666, 0, 0, 48, 0, 296686, 0, 0, 0, 0, 0, '', 'Phase 170 if Quest objetive 296686'),
(26, 170, 8666, 0, 1, 8, 0, 46957, 0, 0, 0, 0, 0, '', 'Phase 170 if Quest rewarded 46957'),
(26, 170, 8666, 0, 1, 48, 0, 289869, 0, 0, 1, 0, 0, '', 'Phase 170 if not Quest objetive 289869');


DELETE FROM `phase_area` WHERE `AreaId`=1637;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(1637, 169, 'Orgrimmar Default Phase'),
(1637, 170, 'Orgrimmar Q-50769  Q-46930');

update `creature` set `phaseid` = 170 where `id` = 135211; 
update `creature` set `phaseid` = 170 where `guid` in (996963,996934,996951,996942,996930,996932,996961); 


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=1637 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 1637, 0, 0, 9, 0, 50769, 0, 0, 0, 0, 0, '',   'phase only if has quest 50769'),
(26, 170, 1637, 0, 0, 8, 0, 50769, 0, 0, 1, 0, 0, '',   'phase only if not quest rewarded 50769'),
(26, 170, 1637, 0, 0, 48, 0, 335889, 0, 0, 1, 0, 0, '', 'phase only if not  quest objetive 335889'),
(26, 170, 1637, 0, 0, 48, 0, 333785, 0, 0, 0, 0, 0, '', 'phase only if quest objetive 333785');


-- 138913
update `creature_template` set `speed_walk`=3.5, `speed_run`=3.5 where `entry`= 138912;


UPDATE `creature_template` SET `gossip_menu_id`=21433, `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 135440;
DELETE FROM `smart_scripts` WHERE `entryorguid`=135440 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(135440, 0, 0, 0, 62, 0, 100, 0, 21433, 0, 0, 0, 0, '', 85, 244534, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on gossip menu - kc');


DELETE FROM `phase_area` WHERE `AreaId`=8670;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(8670, 169, 'Dazar_alor Default Phase'),
(8670, 170, 'Dazar_alor Q-46930'),
(8670, 171, 'Dazar_alor QE-46930');


update `creature` set `phaseid` = 170 where `guid` in (967164, 965532); 

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=8670;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 8670, 0, 0, 48, 0, 289869, 0, 0, 0, 0, 0, '', 'Phase 170 if Quest objetive 289869'),
(26, 170, 8670, 0, 0, 48, 0, 290542, 0, 0, 1, 0, 0, '', 'Phase 170 if not Quest objetive 290542');

update `creature` set `phaseid` = 171 where `guid` = 965534; 

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=171 AND `SourceEntry`=8670;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 171, 8670, 0, 0, 28, 0, 46930, 0, 0, 0, 0, 0, '', 'Phase 170 if Quest complete 46930'),
(26, 171, 8670, 0, 1, 8, 0, 46930, 0, 0, 0, 0, 0, '', 'Phase 170 if Quest rewarded 46930');

/*
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`= '' WHERE `entry`= 120740;
DELETE FROM `smart_scripts` WHERE `entryorguid`=120740 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(120740, 0, 0, 0, 19, 0, 100, 0, 46931, 0, 0, 0, 0, '', 12, 135441, 5, 0, 0, 1, 0, 8, 0, 0, 0, -1100.689941, 817.934021, 497.243011, 6.062160, 'on quest start - summon creature');
*/
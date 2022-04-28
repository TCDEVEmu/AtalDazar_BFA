/*
49810
49801 
50154 
49814
50074
50150
*/
-- 54527 ver donde sale el npc 148343


-- 130905
update `creature_template` set `AIName`= 'SmartAI' where `entry` in (130922);

DELETE FROM `smart_scripts` WHERE `entryorguid`=130929 AND `source_type`=0 AND `id`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=130929 AND `source_type`=0 AND `id`=2;
DELETE FROM `smart_scripts` WHERE `entryorguid`=130929 AND `source_type`=0 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130929, 0, 1, 0, 10, 0, 100, 0, 1, 10, 15000, 20000, 0, '', 206, 6677, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(130929, 0, 2, 0, 19, 0, 100, 0, 49810, 0, 0, 0, 0, '', 206, 6678, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(130929, 0, 3, 0, 10, 0, 100, 0, 1, 10, 15000, 20000, 0, '', 206, 6681, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=2 AND `SourceEntry`=130929 AND `SourceId`=0 AND `ElseGroup`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=4 AND `SourceEntry`=130929 AND `SourceId`=0 AND `ElseGroup`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=5 AND `SourceEntry`=130929 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 2, 130929, 0, 0, 14, 0, 49810, 0, 0, 0, 0, 0, '', ''),
(22, 4, 130929, 0, 0, 28, 0, 49810, 0, 0, 0, 0, 0, '', ''),
(22, 5, 130929, 0, 0, 28, 0, 50150, 0, 0, 0, 0, 0, '', '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=131043 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(131043, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 267421, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(131043, 0, 1, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 258950, 0, 0, 0, 0, 0, 19, 130921, 20, 0, 0, 0, 0, 0, ''),
(131043, 0, 2, 3, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 267440, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(131043, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 258950, 0, 0, 0, 0, 0, 19, 130922, 20, 0, 0, 0, 0, 0, ''),
(131043, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 10000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=131043 AND `SourceId`=0 AND `ElseGroup`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=4 AND `SourceEntry`=131043 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 131043, 0, 0, 29, 0, 130921, 20, 0, 0, 0, 0, '', ''),
(22, 4, 131043, 0, 0, 29, 0, 130922, 20, 0, 0, 0, 0, '', '');

 
DELETE FROM `smart_scripts` WHERE `entryorguid`=130921 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130921, 0, 2, 0, 8, 0, 100, 0, 258950, 0, 0, 0, 0, '', 33, 130921, 0, 0, 0, 0, 0, 18, 15, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=130922 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130922, 0, 0, 0, 8, 0, 100, 0, 258950, 0, 0, 0, 0, '', 33, 130922, 0, 0, 0, 0, 0, 18, 15, 0, 0, 0, 0, 0, 0, '');

delete from `creature` where `guid` in (966392,967058,967059,967065,967075,967090,967110,967128,967168,966383,966386,966401,966406,967061,
967063,967081,967088,967089,967129,967130,971480,966405,967076,967077,967112,967113);

-- linea sniff 8226288
delete from `creature` where `guid` in (1057168,1057169,1057170);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(1057168, 131554, 1642, 8499, 8923, '0', 0, 0, 0, 0, -1073.795166015625, 465.295135498046875, 188.58856201171875, 0.970569849014282226, 120, 0, 0, 0, 0, 0, 0, 0, 41359),
(1057169, 131554, 1642, 8499, 8923, '0', 0, 0, 0, 0, -1108.7742919921875, 479.447906494140625, 203.0408782958984375, 4.747895717620849609, 120, 0, 0, 0, 0, 0, 0, 0, 41359),
(1057170, 131554, 1642, 8499, 8923, '0', 0, 0, 0, 0, -1126.3663330078125, 473.97222900390625, 203.2388763427734375, 0.970569849014282226, 120, 0, 0, 0, 0, 0, 0, 0, 41359);


delete from `creature` where `guid` in (
966663,966664,967124,967125,967126,974571,995401,995402,995403,995409,995411,995413,995418,966440,966645,966659,966661,966665,966668,967093,
967094,967095,967100,967103,967114,968258,966628,967098,967099,967101,967118,967169,968268,966445,966447,967102,967109);


DELETE FROM `smart_scripts` WHERE `entryorguid`=130905 AND `source_type`=0 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130905, 0, 3, 0, 19, 0, 100, 0, 50074, 0, 0, 0, 0, '', 206, 6743, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=130929 AND `source_type`=0 AND `id`=4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130929, 0, 4, 0, 10, 0, 100, 0, 1, 10, 15000, 20000, 0, '', 206, 6745, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=130905 AND `source_type`=0 AND `id`=4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130905, 0, 4, 0, 20, 0, 100, 0, 50074, 0, 0, 0, 0, '', 206, 6773, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=130905 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130905, 0, 0, 1, 62, 0, 100, 0, 22097, 0, 0, 0, 0, '', 33, 133060, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Cala Cruzpot - On Gossip Option 0 Selected - Quest Credit \'\''),
(130905, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Cala Cruzpot - On Gossip Option 0 Selected - Close Gossip'),
(130905, 0, 2, 0, 19, 0, 100, 0, 50074, 0, 0, 0, 0, '', 206, 6743, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(130905, 0, 3, 0, 20, 0, 100, 0, 50074, 0, 0, 0, 0, '', 206, 6773, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


-- 6772 130929

-- 6773 130905

-- 6778 130929 130905

-- 6815 130929 130905

-- 6779 130929

-- 6782 130929 130905

-- 6783 133366

-- 6786 133366 131808

-- 6784 130929 130905




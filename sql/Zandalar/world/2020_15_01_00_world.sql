DELETE FROM `creature` WHERE `guid` IN (760002006, 760002009);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `corpsetimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES ('760002006', '114562', '1', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '1609.32', '-4384.82', '20.8399', '3.62272', '300', '-1', '0', '0', '25', '120', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `corpsetimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES ('760002009', '114562', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '-8827.92', '633.675', '94.5284', '3.78335', '300', '-1', '0', '0', '8092', '1', '0', '0', '0', '0', '0', '0', '', '0');

UPDATE `creature_template` SET `entry`='114562', ``minlevel`='110', `maxlevel`='120', `faction`='35', `npcflag`='2', `ScriptName`='khadgars_upgraded_servant' WHERE (`entry`='114562');

DELETE FROM `creature_queststarter` WHERE `id` = '114562';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES ('114562', '44663');

UPDATE `quest_template` SET `ID`='44663', `MaxScalingLevel`='120', WHERE (`ID`='44663');


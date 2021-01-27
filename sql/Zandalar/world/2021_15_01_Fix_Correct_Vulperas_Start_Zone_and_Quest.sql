/*Hdeste70 Correct Vulperas start position */
DELETE FROM playercreateinfo WHERE `race` = '35';
DELETE FROM creature WHERE id = '145418';
DELETE FROM creature WHERE id = '163634';
DELETE FROM creature WHERE id = '160452';
DELETE FROM creature WHERE id = '163635'; 

DELETE FROM gameobject WHERE id = '282388';
DELETE FROM gameobject WHERE guid = '760000117';

DELETE FROM creature_queststarter WHERE id = '160452';
DELETE FROM creature_queststarter WHERE id = '133407';

DELETE FROM creature_questender WHERE id = '133407';
DELETE FROM creature_questender WHERE id = '160452';

DELETE FROM creature_template WHERE entry = '160452';

DELETE FROM creature WHERE id = '133407';

INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES ('35', '5', '1', '14', '1945.17', '-4634.91', '33.4735', '5.513');
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES ('35', '7', '1', '14', '1945.17', '-4634.91', '33.4735', '5.513');
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES ('35', '6', '2297', '12952', '481.941', '-2124.49', '840.857', '3.09056');
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES ('35', '1', '1', '14', '1945.17', '-4634.91', '33.4735', '5.513');
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES ('35', '3', '1', '14', '1945.17', '-4634.91', '33.4735', '5.513');
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES ('35', '4', '1', '14', '1945.17', '-4634.91', '33.4735', '5.513');
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES ('35', '8', '1', '14', '1945.17', '-4634.91', '33.4735', '5.513');
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES ('35', '9', '1', '14', '1945.17', '-4634.91', '33.4735', '5.513');
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES ('35', '10', '1', '14', '1945.17', '-4634.91', '33.4735', '5.513');

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `corpsetimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES ('760000100', '145418', '1', '1637', '5168', '0', '0', '0', '0', '-1', '0', '0', '1952.99', '-4622.3', '34.2416', '5.63555', '300', '-1', '0', '0', '31', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `corpsetimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES ('760000099', '163634', '1', '1637', '5168', '0', '0', '0', '0', '-1', '0', '0', '1947.89', '-4626.26', '34.5413', '5.59235', '300', '-1', '0', '0', '31', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `corpsetimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES ('760000096', '160452', '1', '1637', '5168', '0', '0', '0', '0', '-1', '0', '0', '1947.03', '-4632.14', '34.0999', '3.67048', '300', '-1', '0', '0', '31', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `corpsetimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES ('760000095', '163635', '1', '1637', '5168', '0', '0', '0', '0', '-1', '0', '0', '1949.01', '-4646.88', '33.3963', '0.495113', '300', '-1', '0', '0', '31', '0', '0', '0', '0', '0', '0', '0', '', '0');

INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES ('760000117', '282388', '1', '0', '0', '0', '0', '0', '0', '-1', '1947.44', '-4623.84', '34.6887', '3.81498', '-0', '-0', '-0.943852', '0.330369', '300', '255', '1', '0', '', '0');

INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES ('160452', '58122');
INSERT INTO `creature_questender` (`id`, `quest`) VALUES ('133407', '58122');
INSERT INTO `creature_questender` (`id`, `quest`) VALUES ('160452', '58124');
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES ('133407', '50303'); 
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES ('133407', '58124'); 
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES ('133407', '55138'); 
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES ('133407', '53502'); 
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES ('133407', '50319'); 

INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES ('160452', '0', '0', '0', '0', '0', 'Nilsa', '', NULL, NULL, NULL, '0', '1', '1', '7', '0', '0', '35', '3', '1', '1.14286', '1', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '', '35662');
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `corpsetimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES ('760000101', '133407', '1', '1637', '5332', '0', '0', '0', '0', '-1', '0', '0', '1563.99', '-4191.51', '53.6802', '5.58184', '300', '-1', '0', '0', '216806', '0', '0', '0', '0', '0', '0', '0', '', '0');


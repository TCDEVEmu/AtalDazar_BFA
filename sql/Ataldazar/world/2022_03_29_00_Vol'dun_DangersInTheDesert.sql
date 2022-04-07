SET @CGUID := 1200000;

/* Quest: Freshly Squeezed (51574) */	

UPDATE `npc_spellclick_spells` SET `cast_flags` = 1 WHERE `npc_entry` = 138107 AND `spell_id` = 271831; -- change spellclick caster
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 138107; -- set AIName

-- add SAI's for KCredit, addItem, despawn and setNpcflag
DELETE FROM `smart_scripts` WHERE `entryorguid`=138107;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(138107, 0, 0, 1, 8, 0, 100, 0, 271831, 0, 0, 0, 0, '', 33, 138107, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - KCredit'),
(138107, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 56, 160448, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Link - AddItem'),
(138107, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Link - SetFlag 0'),
(138107, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Link - Despawn');

-- add conditions to spellclick
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=138107 AND `SourceEntry`=271831;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 138107, 271831, 0, 0, 9, 0, 51574, 0, 0, 0, 0, 0, '', 'Only can touch if have quest in progress');

/* Quest: A Balm to Calm (47320) */

UPDATE `creature_template_addon` SET `auras` = 246309 WHERE `entry` = 122741;
UPDATE `creature` SET `PhaseId` = 171 WHERE `id` = 122741;
UPDATE `creature` SET `PhaseId` = 172 WHERE `id` = 130341;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (122741, 130341);
DELETE FROM `creature_addon` WHERE `guid` = 985511;

-- add condition to itemQuest
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=244636;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 244636, 0, 0, 1, 1, 246309, 0, 0, 0, 0, 0, '', 'Item only in correct objective');

-- add phases to area
DELETE FROM `phase_area` WHERE `AreaId`=8854 AND `PhaseId` IN (169, 171, 172);
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(8854, 169, 'Vulpera Hideaway Default Phase'),
(8854, 171, 'Vulpera Hideaway Q-47315'),
(8854, 172, 'Vulpera Hideaway Q-47320');

-- add conditions to enter in the phases
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup` IN (171, 172) AND `SourceEntry`=8854;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 171, 8854, 0, 0, 8, 0, 47315, 0, 0, 0, 0, 0, '', 'Phase 171 if quest reward 47315'),
(26, 171, 8854, 0, 0, 48, 0, 290472, 0, 0, 1, 0, 0, '', 'Phase 171 if quest objetive 290472'),
(26, 171, 8854, 0, 0, 8, 0, 47320, 0, 0, 1, 0, 0, '', 'Phase 171 if quest not rewarded 47320'),
(26, 172, 8854, 0, 0, 8, 0, 47320, 0, 0, 0, 0, 0, '', 'Phase 172 if quest reward 47320'),
(26, 172, 8854, 0, 1, 48, 0, 10100000, 0, 0, 0, 0, 0, '', 'Phase 172 if quest objetive 10100000');

-- add SAIs to Kaja
DELETE FROM `smart_scripts` WHERE `entryorguid`=122741 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=1227410 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(122741, 0, 0, 1, 8, 0, 100, 0, 244636, 0, 0, 0, 0, '', 33, 122741, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Despawn - KCredit'),
(122741, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 12, 122741, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - SummonUnit'),
(122741, 0, 2, 3, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 44, 169, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Link - Add Phase'),
(122741, 0, 3, 4, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 28, 246309, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Summon - Remove Aura - StandUp'),
(122741, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 206, 6400, 0, 0, 0, 0, 0, 18, 3, 0, 0, 0, 0, 0, 0, 'On StandUp - Say Text'),
(122741, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn before 3s'),
(122741, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 80, 1227410, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn before 3s'),
(1227410, 9, 0, 0, 0, 0, 100, 0, 3500, 3500, 0, 0, 0, '', 33, 10100000, 0, 0, 0, 0, 0, 18, 3, 0, 0, 0, 0, 0, 0, 'On Despawn - KCredit');

-- add conditions to KC and conversation
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` = 5 AND `SourceEntry`=122741;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` = 1 AND `SourceEntry`=1227410;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 5, 122741, 0, 0, 28, 0, 47320, 0, 0, 0, 0, 0, '', 'Conversation if have quest complete'),
(22, 5, 122741, 0, 0, 8, 0, 47320, 0, 0, 1, 0, 0, '', 'Conversation if not rewarded quest'),
(22, 1, 1227410, 0, 0, 28, 0, 47320, 0, 0, 0, 0, 0, '', 'KC if have quest complete'),
(22, 1, 1227410, 0, 0, 8, 0, 47320, 0, 0, 1, 0, 0, '', 'KC if not rewarded quest');

-- add custom Kaja
DELETE FROM `creature_template` WHERE `entry`=10100000;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (10100000, 0, 0, 0, 0, 0, '', '', NULL, 'Bladeguard Kaja Custom Objective', '', 0, 110, 120, 7, 0, 0, 2361, 0, 1, 1.14286, 1, 1, 0, 2000, 2000, 1, 1, 1, 33536, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1.5, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', -1);

-- add custom objective
DELETE FROM `quest_objectives` WHERE `ID`=10100000;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES 
(10100000, 47320, 0, 1, 1, 10100000, 1, 26, 0, 0, 'Custom - Kaja', -1);

/* Quest: Searching for Survivors (47317) */

UPDATE `npc_spellclick_spells` SET `cast_flags` = 1 WHERE `npc_entry` = 122729; -- change spellclick caster
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 122729; -- set AIName

-- add SAI's for KCredit, setNpcflag, TextInScreen
DELETE FROM `smart_scripts` WHERE `entryorguid`=122729;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(122729, 0, 0, 1, 8, 0, 100, 0, 244630, 0, 0, 0, 0, '', 33, 122729, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - KCredit'),
(122729, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - SetFlag 0'),
(122729, 0, 2, 0, 8, 0, 100, 0, 244630, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - TextWhisper');

-- add conditions to spellclick
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=122729 AND `SourceEntry`=244630;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 122729, 244630, 0, 0, 9, 0, 47317, 0, 0, 0, 0, 0, '', 'Only can touch if have quest in progress'),
(18, 122729, 244630, 0, 0, 48, 0, 290408, 0, 0, 1, 0, 0, '', 'Only can touch if not complete objective ');

/* Quest: Secrets in the Sands (47316) */


-- add loot to GOB
UPDATE `gameobject_template` SET `Data1` = 271844, `AIName` = 'SmartGameObjectAI' WHERE `entry` = 271844;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=271844 AND `Item`=151346;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (271844, 151346, 0, 100, 1, 1, 0, 1, 1, 'Rakera\'s Journal Page');

-- Falta ponerle las Conversations al recoger las hojas.
DELETE FROM `smart_scripts` WHERE `entryorguid`=271844 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(271844, 1, 0, 0, 70, 0, 100, 0, 2, 0, 0, 0, 0, '', 206, 5273, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On StandUp - Say Text');

/* Quest: Knickknack Takeback (47321) */

UPDATE `creature` SET `spawntimesecs` = 120 WHERE `areaId` = 9336; -- update respawn TIME
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 123586;
DELETE FROM `quest_objectives` WHERE `ObjectID` = 151278 AND `ID` = 338775; -- delete sec objective

-- add loot to snakes
DELETE FROM `creature_loot_template` WHERE `Item`=151273;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(122745, 151273, 0, 45, 1, 1, 0, 1, 1, NULL),
(122746, 151273, 0, 45, 1, 1, 0, 1, 1, NULL),
(122782, 151273, 0, 45, 1, 1, 0, 1, 1, NULL),
(123863, 151273, 0, 45, 1, 1, 0, 1, 1, NULL),
(123864, 151273, 0, 45, 1, 1, 0, 1, 1, NULL),
(123865, 151273, 0, 45, 1, 1, 0, 1, 1, NULL),
(123866, 151273, 0, 45, 1, 1, 0, 1, 1, NULL);

/* clear/remove/add NPC's with sniff */
DELETE FROM `creature` WHERE `areaId` = 9336 AND `id` IN 
(123863, 124527, 123866, 122746, 136664, 123864, 122782, 123865, 137416, 122745, 133234, 124016, 
124019, 137422, 129538, 137412, 122764, 122736, 137413, 137632, 137633, 123863, 137629);
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+69;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(@CGUID+0, 123863, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2509.91, 2895.48, 25.1178, 0.875246, 7200, 10, 0, 34584, 590210, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+1, 124527, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2683.96, 2921.71, 46.7839, 3.93729, 7200, 10, 0, 43230, 0, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+2, 123866, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2562.9, 2858.79, 20.8756, 6.21165, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+3, 122746, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2530.02, 2806.87, 17.1704, 1.88862, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+4, 136664, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2493.85, 2902.42, 46.9613, 5.49683, 7200, 10, 0, 43230, 0, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+5, 123863, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2591.6, 2864.07, 19.2196, 2.18011, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+6, 122746, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2558.51, 2902.44, 27.2199, 3.64499, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+7, 123864, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2547.83, 2911.69, 29.1163, 4.97419, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+8, 123863, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2547.61, 2913.99, 29.9519, 5.12217, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+9, 122782, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2563.07, 2875.53, 22.0986, 4.8799, 7200, 0, 0, 43230, 295105, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+10, 123865, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2525.16, 2848.54, 20.3765, 5.37219, 7200, 0, 0, 64845, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+11, 137416, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2586.2, 2897.36, 21.8009, 0.547623, 7200, 10, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+12, 122746, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2559.22, 2913.49, 30.4408, 5.59565, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+13, 122745, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2580.57, 2826.63, 17.1723, 3.17814, 7200, 0, 0, 43230, 100, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+14, 133234, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2465.7, 2789.09, 16.2612, 5.87275, 7200, 10, 0, 12969, 0, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+15, 133234, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2475.19, 2780.43, 16.2612, 2.83478, 7200, 0, 0, 12969, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+16, 124016, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2550.96, 2781.05, 16.2612, 4.26141, 7200, 10, 0, 43230, 0, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+17, 124019, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2483.89, 2741.29, 16.759, 5.58076, 7200, 10, 0, 43230, 0, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+18, 124016, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2467.74, 2781.91, 16.2612, 4.1138, 7200, 10, 0, 43230, 0, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+19, 137422, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2564.59, 2844.38, 20.1035, 2.58819, 7200, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+20, 123863, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2481.12, 2931.34, 22.0575, 6.22626, 7200, 10, 0, 34584, 590210, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+21, 137422, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2476.68, 2928.44, 21.313, 1.48871, 7200, 10, 0, 6, 0, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+22, 129538, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2514.63, 2919.99, 30.4202, 0.943542, 7200, 0, 0, 432300, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+23, 137412, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2529.89, 2931.16, 32.0088, 4.15338, 7200, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+24, 137416, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2502.33, 2949.3, 31.9821, 2.84937, 7200, 10, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+25, 122746, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2479.09, 2949.99, 25.1676, 2.01513, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+26, 124016, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2419.54, 2896.8, 16.3028, 5.91121, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+27, 122746, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2471.65, 2960.13, 25.3954, 5.94668, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+28, 123864, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2505.2, 2958.59, 33.2764, 4.88093, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+29, 122745, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2497.98, 2963.18, 33.2801, 5.5133, 7200, 0, 0, 43230, 100, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+30, 122764, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2507.97, 2959.97, 33.5484, 4.26295, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+31, 124016, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2452.1, 2843.22, 16.2612, 4.63924, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+32, 122745, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2573.36, 2825.58, 17.1999, 5.64397, 7200, 0, 0, 43230, 100, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+33, 122736, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2549.65, 2966.2, 29.8517, 4.56828, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+34, 123864, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2544.66, 2840.86, 20.5802, 2.048, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+35, 137413, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2605.35, 2917.07, 24.2005, 3.46229, 7200, 10, 0, 6, 0, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+36, 122736, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2555.28, 2970.87, 28.9193, 2.11994, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+37, 122736, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2549.12, 2973.55, 28.7544, 0.0781632, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+38, 137632, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2424.36, 2953.62, 18.7832, 3.30055, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+39, 137412, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2447.67, 2986.23, 25.6846, 0.715037, 7200, 10, 0, 6, 0, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+40, 123863, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2509.91, 2895.48, 25.1178, 0.875246, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+41, 122745, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2503.35, 2898.19, 24.2323, 1.11294, 7200, 0, 0, 43230, 100, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+42, 137633, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2419.16, 2956.34, 22.8216, 4.1722, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+43, 122745, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2570.38, 2848.12, 20.239, 1.76954, 7200, 10, 0, 43230, 100, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+44, 123863, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2465.44, 2931.2, 20.3704, 6.27342, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+45, 123864, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2534.03, 2943.04, 33.1249, 3.93323, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+46, 123863, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2576.89, 2867.58, 20.1081, 1.75045, 7200, 10, 0, 34584, 590210, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+47, 122746, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2566.11, 2905.49, 28.5468, 2.27559, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+48, 123864, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2559.01, 2925.69, 31.6363, 1.0148, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+49, 124527, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2692.47, 3088.81, 78.3548, 5.13651, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+50, 123864, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2497.91, 3051.35, 1.45212, 0.732734, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+51, 122746, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2525.94, 3056.33, 2.52233, 3.60668, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+52, 137412, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2537.79, 2927.44, 31.8095, 4.55951, 7200, 10, 0, 6, 0, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+53, 137413, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2625.89, 3028.52, 82.5572, 1.33973, 7200, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+54, 122745, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2550.33, 2863.92, 20.9152, 0.662967, 7200, 0, 0, 43230, 100, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+55, 122746, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2474.35, 2893.1, 19.2283, 1.64995, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+56, 122746, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2473.62, 2904.03, 19.765, 5.05038, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+57, 123863, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2571.44, 2857.43, 20.6669, 2.2674, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+58, 123863, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2565.7, 2853.68, 20.6361, 0.260354, 7200, 0, 0, 34584, 590210, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+59, 122745, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2579.78, 2829.66, 17.2806, 1.82643, 7200, 0, 0, 43230, 100, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+60, 122745, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2572.2, 2833.75, 17.9479, 1.71186, 7200, 0, 0, 43230, 100, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+61, 133234, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2448.66, 2818.07, 16.2207, 1.16702, 7200, 0, 0, 12969, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+62, 133234, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2447.5, 2820.05, 16.2207, 0.527154, 7200, 0, 0, 12969, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+63, 136664, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2461.12, 2784.97, 16.2469, 3.51756, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+64, 124016, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2404.27, 2843.23, 16.3028, 5.48735, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+65, 124016, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2424.12, 2815.85, 16.3028, 4.807, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+66, 136664, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2471.01, 2776.11, 16.2221, 2.72686, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+67, 124019, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2385.59, 2799.99, 16.2507, 6.18205, 7200, 10, 0, 43230, 0, 1, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+68, 137629, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2411.78, 2959.99, 17.9957, 3.47602, 7200, 0, 0, 43230, 0, 0, 0, 0, 0, 0, 0, '', 27404),
(@CGUID+69, 122746, 1642, 8501, 9336, '0', 0, 0, 0, -1, 0, 1, 2519.99, 2818.22, 17.3005, 5.29043, 300, 0, 0, 34584, 295105, 0, 0, 0, 0, 0, 0, '', 0);

/* Quest: The Warguard's Trial (47959)*/

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (122583, 127656);
UPDATE `creature` SET `PhaseId` = 170 WHERE `guid` IN (985918, 985932);
UPDATE `creature` SET `PhaseId` = 171 WHERE `guid` IN (986172, 985984);

-- add conditions to gossip
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 21437;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 21437, 0, 0, 0, 9, 0, 47959, 0, 0, 0, 0, 0, '', 'Show Gossip if quest 47959'),
(15, 21437, 1, 0, 0, 9, 0, 48684, 0, 0, 0, 0, 0, '', 'Show Gossip if quest 48684'),
(15, 21437, 2, 0, 0, 9, 0, 48896, 0, 0, 0, 0, 0, '', 'Show Gossip if quest 48896');

-- fix pre-requisites
UPDATE `quest_template_addon` SET `ExclusiveGroup` = -47316, `NextQuestId` = 47959 WHERE `ID` = 47316; -- Secrets in the Sand
UPDATE `quest_template_addon` SET `ExclusiveGroup` = -47316, `NextQuestId` = 47959 WHERE `ID` = 47317; -- Searching for Survivors
UPDATE `quest_template_addon` SET `ExclusiveGroup` = -47316, `NextQuestId` = 47959 WHERE `ID` = 47321; -- Knickknack Takeback
UPDATE `quest_template_addon` SET `PrevQuestID` = 0 WHERE `ID` = 47959; -- The Warguard's Trial

-- add SAIs
DELETE FROM `smart_scripts` WHERE `entryorguid`=122583 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(122583, 0, 0, 1, 62, 0, 100, 0, 21437, 0, 0, 0, 0, '', 62, 1642, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1333.90, 3058.86, 68.2501, 2.1072, 'On Select Gossip - Tele'),
(122583, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 224, 47959, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Tele - QComplete');

-- add Phases Area 9202 (Withering Gulch)
DELETE FROM `phase_area` WHERE `AreaId`=9202;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(9202, 169, 'Withering Gulch Default Phase'),
(9202, 170, 'Withering Gulch Q-47959'),
(9202, 171, 'Withering Gulch Q-47959');

-- add conditions to phases
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup` IN (170, 171) AND `SourceEntry`=9202;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 9202, 0, 0, 28, 0, 47959, 0, 0, 0, 0, 0, '', 'Phase 170 if quest complete 47959'),
(26, 170, 9202, 0, 1, 8, 0, 47959, 0, 0, 0, 0, 0, '', 'Phase 170 if quest rewarded 47959'),
(26, 170, 9202, 0, 1, 28, 0, 48549, 0, 0, 1, 0, 0, '', 'Phase 170 if quest not complete 48549'),
(26, 170, 9202, 0, 1, 28, 0, 48550, 0, 0, 1, 0, 0, '', 'Phase 170 if quest not complete 48549'),
(26, 170, 9202, 0, 1, 8, 0, 48549, 0, 0, 1, 0, 0, '', 'Phase 170 if quest not rewarded 48549'),
(26, 170, 9202, 0, 1, 8, 0, 48550, 0, 0, 1, 0, 0, '', 'Phase 170 if quest not rewarded 48550'),
(26, 171, 9202, 0, 0, 28, 0, 48549, 0, 0, 0, 0, 0, '', 'Phase 171 if quest complete 48549'),
(26, 171, 9202, 0, 1, 28, 0, 48550, 0, 0, 0, 0, 0, '', 'Phase 171 if quest complete 48550'),
(26, 171, 9202, 0, 2, 8, 0, 48550, 0, 0, 0, 0, 0, '', 'Phase 171 if quest rewarded 48550'),
(26, 171, 9202, 0, 2, 8, 0, 48549, 0, 0, 0, 0, 0, '', 'Phase 171 if quest rewarded 48549'),
(26, 171, 9202, 0, 2, 8, 0, 48684, 0, 0, 1, 0, 0, '', 'Phase 171 if quest not rewarded 48684');

/* Quest: Gozztok the Blackheart (48549) */

UPDATE `creature` SET `MovementType` = 0 WHERE `id` = 126697;
UPDATE `creature` SET `PhaseId` = 170 WHERE `id` IN (129304, 126697);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (129304, 126697);

-- add Phases Area 8960 (Atul'Aman)
DELETE FROM `phase_area` WHERE `AreaId`=8960 AND `PhaseId` IN (169, 170);
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(8960, 169, 'Atul\'Aman Default Phase'),
(8960, 170, 'Atul\'Aman Q-48549');

-- add conditions to spawn
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=29 AND `SourceGroup`=5 AND `SourceEntry` IN (129304, 126697);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(29, 5, 129304, 0, 0, 9, 0, 48549, 0, 0, 0, 0, 0, '', 'Spawn of creature with entry 129304 requires quest taken 48549'),
(29, 5, 126697, 0, 0, 9, 0, 48549, 0, 0, 0, 0, 0, '', 'Spawn of creature with entry 126697 requires quest taken 48549');

-- add SAIs
DELETE FROM `smart_scripts` WHERE `entryorguid` = 129304 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 126697 AND `source_type`=0 AND `id` >= 2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126697, 0, 2, 0, 10, 0, 100, 0, 0, 25, 180000, 180000, 0, '', 1, 0, 4500, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Near - Talk'),
(126697, 0, 3, 0, 52, 0, 100, 0, 0, 126697, 0, 0, 0, '', 45, 5, 5, 0, 0, 0, 0, 11, 129304, 3, 0, 0, 0, 0, 0, 'On Talk - SetData'),
(129304, 0, 0, 1, 38, 0, 100, 0, 5, 5, 0, 0, 0, '', 1, 0, 3000, 0, 0, 0, 0, 18, 25, 0, 0, 0, 0, 0, 0, 'On RecData - Talk'),
(129304, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 256144, 0, 0, 0, 0, 0, 18, 25, 0, 0, 0, 0, 0, 0, 'On Link - CastSpell'),
(129304, 0, 2, 0, 52, 0, 100, 0, 0, 129304, 0, 0, 0, '', 45, 5, 4, 0, 0, 0, 0, 11, 126697, 3, 0, 0, 0, 0, 0, 'On Talk - SetData'),
(126697, 0, 4, 0, 38, 0, 100, 0, 5, 4, 0, 0, 0, '', 1, 1, 4500, 0, 0, 0, 0, 18, 25, 0, 0, 0, 0, 0, 0, 'On RecData - Talk'),
(126697, 0, 5, 0, 52, 0, 100, 0, 1, 126697, 0, 0, 0, '', 45, 5, 3, 0, 0, 0, 0, 11, 129304, 3, 0, 0, 0, 0, 0, 'On Talk - SetData'),
(129304, 0, 3, 0, 38, 0, 100, 0, 5, 3, 0, 0, 0, '', 1, 1, 4500, 0, 0, 0, 0, 18, 25, 0, 0, 0, 0, 0, 0, 'On RecData - Talk'),
(129304, 0, 4, 5, 52, 0, 100, 0, 1, 129304, 0, 0, 0, '', 45, 5, 2, 0, 0, 0, 0, 11, 126697, 3, 0, 0, 0, 0, 0, 'On Talk - SetData'),
(129304, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 256143, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Link - CastSpell'),
(129304, 0, 6, 0, 8, 0, 100, 0, 256143, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - Despawn'),
(126697, 0, 6, 0, 38, 0, 100, 0, 5, 2, 0, 0, 0, '', 19, 33600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On RecData - RemoveUnitFlag'),
(126697, 0, 7, 8, 6, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 2, 0, 0, 0, 0, 0, 18, 25, 0, 0, 0, 0, 0, 0, 'On Death - Talk'),
(126697, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 224, 2, 0, 0, 0, 0, 0, 18, 25, 0, 0, 0, 0, 0, 0, 'On Talk - FQComplete');

/*  Quest: Missing Business (50739)  */

UPDATE `npc_spellclick_spells` SET `cast_flags` = 1 WHERE `npc_entry` = 135004 AND `spell_id` = 265199; -- change spellclick caster
UPDATE `creature_template` SET `AIName` = 'SmartAI', `speed_run` = 2 WHERE `entry` = 135004; -- set AIName
UPDATE `creature_addon` SET `bytes1` = 7 WHERE `guid` IN (985405, 985432, 985381, 985440, 985442, 985443, 985445); -- fix bytes1

-- add SAI for KCredit and Summon Unit
DELETE FROM `smart_scripts` WHERE `entryorguid`=135004 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(135004, 0, 0, 1, 8, 0, 100, 0, 265199, 0, 0, 0, 0, '', 33, 135004, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - KCredit'),
(135004, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - SetNpcflag 0'),
(135004, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 91, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - Up'),
(135004, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 89, 50, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - RandomMovement Out of Area'),
(135004, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 10000, 60, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - Force Despawn');

-- add conditions to spellclick
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=135004 AND `SourceEntry`=265199;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=265199;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 135004, 265199, 0, 0, 9, 0, 50739, 0, 0, 0, 0, 0, '', 'Only can touch if have quest in progress'),
(17, 0, 265199, 0, 0, 1, 1, 135004, 0, 0, 0, 0, 0, '', 'Item only in correct objective');

-- set phase Area 8856 (The Prickly Grove)
DELETE FROM `phase_area` WHERE `AreaId`=8856 AND `PhaseId` IN (169, 170);
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(8856, 169, 'The Prickly Grove Default Phase'),
(8856, 170, 'The Prickly Grove Q-47315');

-- set phase Area 8854 (Vulpera Hideaway)
DELETE FROM `phase_area` WHERE `AreaId` = 8854 AND `PhaseId` = 170;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(8854, 170, 'Vulpera Hideaway Q-50739');

-- set Phases Vivi&Coda
UPDATE `creature` SET `PhaseId` = 170 WHERE `guid` IN (985508, 985507, 985509, 985350);

-- conditions to Phase170 - Area 8856

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=8856;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 8856, 0, 2, 8, 0, 47315, 0, 0, 0, 0, 0, '', 'Phase 170 if quest rewarded 47315'),
(26, 170, 8856, 0, 1, 28, 0, 47315, 0, 0, 0, 0, 0, '', 'Phase 170 if quest complete 47315'),
(26, 170, 8856, 0, 0, 9, 0, 47315, 0, 0, 0, 0, 0, '', 'Phase 170 if quest taken 47315'),
(26, 170, 8856, 0, 2, 8, 0, 50739, 0, 0, 1, 0, 0, '', 'Phase 170 if quest not rewarded 50739');

-- conditions to Phase170 - Area 8854
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=8854;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 8854, 0, 0, 8, 0, 50739, 0, 0, 0, 0, 0, '', 'Phase 170 if quest rewarded 50739');

-- update REC
UPDATE `quest_template` SET `RewardItem1` = 158464, `RewardAmount1` = 1 WHERE `ID` = 50739;

-- add WPs
DELETE FROM `waypoints` WHERE `entry`=135012 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(135012, 1, 2130.57, 2916.7, 39.7224, 'Summon Vivi WP');

/* Quest: A Meal for Birds (50755) */

UPDATE `quest_template_addon` SET `ScriptName` = 'SmartQuest', `PrevQuestID` = 0 WHERE `ID` = 50755;
UPDATE `creature` SET `PhaseId` = 170 WHERE `id` IN (137633, 137632);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (137629, 137673, 137672);  

-- add phases to area
DELETE FROM `phase_area` WHERE `AreaId`=8857 AND `PhaseId` IN (169, 170);
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(8857, 169, 'The Brine Basin Default Phase'),
(8857, 170, 'The Brine Basin Q-50755');

-- add conditions to phase 170
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup` = 170 AND `SourceEntry`=8857;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 8857, 0, 0, 47, 0, 50755, 8, 0, 1, 0, 0, '', 'Phase 171 if not quest in progress 50755'),
(26, 170, 8857, 0, 0, 28, 0, 50755, 0, 0, 1, 0, 0, '', 'Phase 171 if not quest complete 50755');

-- add SAIs
DELETE FROM `smart_scripts` WHERE `entryorguid`=137629 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=50755 AND `source_type`=5;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(137629, 0, 0, 0, 19, 0, 100, 0, 50755, 0, 0, 0, 0, '', 85, 270711, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On AcceptQuest - AddAura'),
(50755, 5, 0, 0, 50, 0, 100, 0, 0, 0, 0, 0, 0, '', 28, 270711, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On RewardQuest - RemoveAura');

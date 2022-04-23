/* Quest: Ranah's Wrench(51829) */

-- add questGiver to GOB
DELETE FROM `gameobject_queststarter` WHERE `id`=291143 AND `quest`=51829;
INSERT INTO `gameobject_queststarter` (`id`, `quest`) VALUES (291143, 51829);

/* Quest: Wither Without Water (48551) */ 

-- add conditions for only use questItem in correct npcs
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=251780;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 251780, 0, 0, 1, 1, 251787, 0, 0, 0, 0, 0, '', 'Only use item in correct plants');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 126816; -- set SmartAI

DELETE FROM `smart_scripts` WHERE `entryorguid`=126816;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126816, 0, 0, 1, 8, 0, 100, 0, 251780, 0, 0, 0, 0, '', 33, 126816, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - KCredit'),
(126816, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 28, 251787, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - RemoveAura'),
(126816, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn after 60sec');

/* Quest: We Can Salvage the Seeds (48555) */

UPDATE `npc_spellclick_spells` SET `cast_flags` = 1 WHERE `npc_entry` = 126886; -- change spellclick caster to Fertile Soil
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 126886; -- set AIName to Fertile Soil
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` IN (127152, 126817); -- set random movement to Carnivorous plants
UPDATE `creature_template` SET `InhabitType` = 8 WHERE `entry` = 126892; -- make rooted summon npcs

-- add SAI's for KCredit and setNpcflag
DELETE FROM `smart_scripts` WHERE `entryorguid`=126886;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126886, 0, 0, 1, 8, 0, 100, 0, 251904, 0, 0, 0, 0, '', 33, 126886, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - KCredit'),
(126886, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - SetFlag 0'),
(126886, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 60000, 0, 0, 0, 0, 0, 19, 126892, 1, 0, 0, 0, 0, 0, 'After 1 min - Despawn Summon Unit'),
(126886, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 60000, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 1 min - Des/Respawn NPC');

-- add conditions to spellclick
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=126886 AND `SourceEntry`=251904;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 126886, 251904, 0, 0, 9, 0, 48555, 0, 0, 0, 0, 0, '', 'Only can touch if have quest in progress'),
(18, 126886, 251904, 0, 0, 2, 0, 152644, 1, 0, 0, 0, 0, '', 'Only can touch if have item in bag');

/* Quest: The Source of the Problem (48554) */

-- add Phase to area 9266
DELETE FROM `phase_area` WHERE `AreaId` = 9266;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(9266, 169, 'Verdant Plateau Default Phase'),
(9266, 170, 'Verdant Plateau Q-48554');

UPDATE `creature` SET `PhaseId` = 170 WHERE `id` = 127169; -- add phase to Colossal Cobra


-- add conditions to Phase 170
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=9266;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 9266, 0, 0, 47, 0, 48554, 8, 0, 0, 0, 0, '', 'Phase 170 if have quest 48554'),
(26, 170, 9266, 0, 0, 48, 0, 292768, 0, 0, 0, 0, 0, '', 'Phase 171 if complete objetive 290472 ');
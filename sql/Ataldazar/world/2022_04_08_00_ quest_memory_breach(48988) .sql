UPDATE `creature` SET `spawntimesecs` = 60 WHERE `id` = 122683;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 122683;
UPDATE `npc_spellclick_spells` SET `cast_flags` = 1 WHERE `npc_entry` = 122683;
UPDATE `quest_template_addon` SET `ScriptName` = 'quest_memory_breach' WHERE `ID` = 48988;

-- add conditions to spellclick 272297
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=122683 AND `SourceEntry`=272297;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 122683, 272297, 0, 0, 47, 0, 48988, 8, 0, 0, 0, 0, '', 'Only spellclick if quest in progress');

-- add SAIs
DELETE FROM `smart_scripts` WHERE `entryorguid`=122683;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(122683, 0, 0, 1, 8, 0, 100, 0, 272297, 0, 0, 0, 0, '', 11, 272287, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - Cast'),
(122683, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 138412, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - KCredit'),
(122683, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - SetFlag 0'),
(122683, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - Despawn');
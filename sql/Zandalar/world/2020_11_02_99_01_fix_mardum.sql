SET @ENTRY := 96813; 
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY ;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 1, 62, 0, 100, 512, 18723, 2, 0, 0, '', 33, 102627, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "killquest"),
(@ENTRY, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, '', 62, 1220, 0, 0, 0, 0, 0, 7, 0, 0, 0, 4632.87, 5340.63, 849.097, 3.6853, "Killquest"),
(@ENTRY, 0, 2, 3, 62, 0, 100, 512, 18723, 3, 0, 0, '', 33, 108025, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "killquest"),
(@ENTRY, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, '', 62, 1616, 0, 0, 0, 0, 0, 7, 0, 0, 0, -150.774, 7805.55, 111.992, 2.944, "Killquest"),
(@ENTRY, 0, 4, 5, 62, 0, 100, 512, 18723, 1, 0, 0, '', 62, 1220, 0, 0, 0, 0, 0, 7, 0, 0, 0, 2274.19, 6597.8, 138, 1.63, "Killquest");


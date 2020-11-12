-- https://www.wowhead.com/quest=47315/into-the-dunes
-- https://www.wowhead.com/npc=122347/pterrordax  
-- https://www.wowhead.com/spell=46598/ride-vehicle-hardcoded 		
-- Pterrordax SAI
SET @ENTRY := 122347;
SET @TARKAJ := 122159;
SET @JORANA := 122324;
SET @ACTIONLIST := @ENTRY*100;
SET @LEADERGUID := 280007666;
SET @TARKAJGUID := 210426356;
SET @JORANAGUID := 210426355;

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid` IN (@LEADERGUID,@TARKAJGUID,@JORANAGUID);
UPDATE `creature_template` SET `inhabitType`=4, `speed_walk`=5, `speed_run`=5 WHERE `entry` IN (@TARKAJ,@JORANA);
UPDATE `creature_template` SET `IconName`='vehichlecursor', `AIName`='SmartAI', `inhabitType`=4 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@TARKAJ,@JORANA) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,512,0,0,0,0,86,46598,0,7,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Spellclick - Cross Cast 'Ride Vehicle Hardcoded'"),
(@ENTRY,0,1,0,27,0,100,512,0,0,0,0,43,122817,0,0,0,0,0,7,0,0,0,0,0,0,0,"Pterrordax - On Passenger Boarded - Mount To Creature Bladeguard Kaja"),
(@ENTRY,0,2,22,27,0,100,512,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,-853.317261,801.137390,324.143250,0.003365,"Pterrordax - On Passenger Boarded - Move To Position"),
(@ENTRY,0,3,0,34,0,100,512,8,1,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 1 - Set Fly On"),
-- Mando Dato a todas las criaturas cercanas
(@ENTRY,0,22,0,61,0,100,512,0,0,0,0,45,1,1,0,0,0,0,11,0,20,0,0,0,0,0,"Pterrordax - On Reached Point 1 - Set Fly On"), 
-- Cuando recibe Dato Sigue al que lo envió, en este caso la montura
(@TARKAJ,0,0,0,38,0,100,512,1,1,0,0,29,0,270,0,0,0,0,7,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 1 - Set Fly On"), 
(@TARKAJ,0,1,0,34,0,100,512,8,13,0,0,1,0,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 1 - Set Fly On"),
(@TARKAJ,0,2,0,34,0,100,512,8,15,0,0,1,1,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 1 - Set Fly On"),
-- Cuando recibe Dato Sigue al que lo envió, en este caso la montura
(@JORANA,0,0,0,38,0,100,512,1,1,0,0,29,0,90,0,0,0,0,7,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 1 - Set Fly On"), 
(@JORANA,0,1,0,34,0,100,512,8,10,0,0,1,0,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 1 - Set Fly On"),
(@ENTRY,0,4,0,34,0,100,512,8,1,0,0,80,@ACTIONLIST+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 1 - Run Script"),
(@ENTRY,0,5,0,34,0,100,512,8,2,0,0,80,@ACTIONLIST+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 2 - Run Script"),
(@ENTRY,0,6,0,34,0,100,512,8,3,0,0,80,@ACTIONLIST+02,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 3 - Run Script"),
(@ENTRY,0,7,0,34,0,100,512,8,4,0,0,80,@ACTIONLIST+03,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 4 - Run Script"),
(@ENTRY,0,8,0,34,0,100,512,8,5,0,0,80,@ACTIONLIST+04,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 5 - Run Script"),
(@ENTRY,0,9,0,34,0,100,512,8,6,0,0,80,@ACTIONLIST+05,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 6 - Run Script"),
(@ENTRY,0,10,0,34,0,100,512,8,7,0,0,80,@ACTIONLIST+06,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 7 - Run Script"),
(@ENTRY,0,11,0,34,0,100,512,8,8,0,0,80,@ACTIONLIST+07,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 8 - Run Script"),
(@ENTRY,0,12,0,34,0,100,512,8,9,0,0,80,@ACTIONLIST+08,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 9 - Run Script"),
(@ENTRY,0,13,0,34,0,100,512,8,10,0,0,80,@ACTIONLIST+09,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 10 - Run Script"),
(@ENTRY,0,14,0,34,0,100,512,8,11,0,0,80,@ACTIONLIST+10,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 11 - Run Script"),
(@ENTRY,0,15,0,34,0,100,512,8,12,0,0,80,@ACTIONLIST+11,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 12 - Run Script"),
(@ENTRY,0,16,0,34,0,100,512,8,13,0,0,80,@ACTIONLIST+12,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 13 - Run Script"),
(@ENTRY,0,17,0,34,0,100,512,8,14,0,0,80,@ACTIONLIST+13,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 14 - Run Script"),
(@ENTRY,0,18,0,34,0,100,512,8,15,0,0,80,@ACTIONLIST+14,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 15 - Run Script"),
(@ENTRY,0,19,0,34,0,100,512,8,16,0,0,80,@ACTIONLIST+15,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 16 - Run Script"),
(@ENTRY,0,20,0,34,0,100,512,8,17,0,0,80,@ACTIONLIST+16,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 17 - Run Script"),
(@ENTRY,0,21,0,34,0,100,512,8,18,0,0,80,@ACTIONLIST+17,2,0,0,0,0,1,0,0,0,0,0,0,0,"Pterrordax - On Reached Point 18 - Run Script");

DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN @ACTIONLIST+00 AND @ACTIONLIST+17 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ACTIONLIST+00,9,0,0,0,0,100,512,1,1,0,0,69,2,0,0,0,0,0,8,0,0,0,-824.763672,797.382141,331.647766,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
(@ACTIONLIST+00,9,1,0,1,0,100,0,0,0,0,0,1,1,1000,0,0,0,0,11,122817,30,0,0,0,0,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
(@ACTIONLIST+01,9,0,0,0,0,100,512,1,1,0,0,69,3,0,0,0,0,0,8,0,0,0,-626.600342,782.298340,353.505341,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
(@ACTIONLIST+02,9,0,0,0,0,100,512,1,1,0,0,69,4,0,0,0,0,0,8,0,0,0,-412.855438,772.399963,328.083710,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
(@ACTIONLIST+03,9,0,0,0,0,100,512,1,1,0,0,69,5,0,0,0,0,0,8,0,0,0,-279.523590,764.964294,342.693634,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
(@ACTIONLIST+04,9,0,0,0,0,100,512,1,1,0,0,69,6,0,0,0,0,0,8,0,0,0,-75.305275,719.637207,328.761993,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
(@ACTIONLIST+05,9,0,0,0,0,100,512,1,1,0,0,69,7,0,0,0,0,0,8,0,0,0,322.358276,798.432129,133.297226,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
(@ACTIONLIST+06,9,0,0,0,0,100,512,1,1,0,0,69,8,0,0,0,0,0,8,0,0,0,552.753601,803.151550,91.710190,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
(@ACTIONLIST+07,9,0,0,0,0,100,512,1,1,0,0,69,9,0,0,0,0,0,8,0,0,0,710.455505,897.536194,151.187820,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
(@ACTIONLIST+08,9,0,0,0,0,100,512,1,1,0,0,69,10,0,0,0,0,0,8,0,0,0,872.005676,1058.815308,144.663864,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
-- text jorana
(@ACTIONLIST+09,9,0,0,0,0,100,512,1,1,0,0,69,11,0,0,0,0,0,8,0,0,0,998.406006,1206.367920,153.468201,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
-- text kaja
(@ACTIONLIST+10,9,0,0,0,0,100,512,1,1,0,0,69,12,0,0,0,0,0,8,0,0,0,1199.180908,1513.589355,182.605194,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
(@ACTIONLIST+11,9,0,0,0,0,100,512,1,1,0,0,69,13,0,0,0,0,0,8,0,0,0,1405.604858,1862.633301,188.852280,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
(@ACTIONLIST+12,9,0,0,0,0,100,512,1,1,0,0,69,14,0,0,0,0,0,8,0,0,0,1703.130859,2207.126465,123.415115,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
-- text kaja
(@ACTIONLIST+13,9,0,0,0,0,100,512,1,1,0,0,69,15,0,0,0,0,0,8,0,0,0,1894.138794,2362.389893,128.292709,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
-- text tarkaj
(@ACTIONLIST+14,9,0,0,0,0,100,512,1,1,0,0,69,16,0,0,0,0,0,8,0,0,0,1894.138794,2362.389893,128.292709,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
-- text kaja
(@ACTIONLIST+15,9,0,0,0,0,100,512,1,1,0,0,69,17,0,0,0,0,0,8,0,0,0,2099.759766,2531.765625,106.006577,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
-- text tarkaj
(@ACTIONLIST+16,9,0,0,0,0,100,512,1,1,0,0,69,18,0,0,0,0,0,8,0,0,0,2331.957275,2614.601562,115.191292,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax"),
-- text kaja
(@ACTIONLIST+17,9,0,0,0,0,100,512,1,1,0,0,69,19,0,0,0,0,0,8,0,0,0,2532.008545,2685.475342,92.322838,0,"Pterrordax - On Spellclick - Mount To Creature Pterrordax");
-- cinematica

UPDATE `creature_addon` SET `bytes1`=50331648 WHERE `guid` IN (@TARKAJGUID,@JORANAGUID);

-- https://www.wowhead.com/npc=122324/bladeguard-jorana
-- Bladeguard Jorana Text 122324 
DELETE FROM `creature_text` WHERE `creatureid`=@JORANA;
INSERT INTO `creature_text` (`creatureid`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`broadcastTextId`,`textRange`,`comment`) VALUES
(@JORANA,0,0,'Kaja, beneath us! What are those things?',12,0,100,0,0,105867,0,0,'Bladeguard Jorana');

-- https://www.wowhead.com/npc=122159/bladeguard-tarkaj
-- Bladeguard Tarkaj Text 122159 
DELETE FROM `creature_text` WHERE `creatureid`=@TARKAJ;
INSERT INTO `creature_text` (`creatureid`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`broadcastTextId`,`textRange`,`comment`) VALUES
(@TARKAJ,0,0,'Kaja, we should adjust course. We''re nearing de sethrak empire.',12,0,100,0,0,106238,0,0,'Bladeguard Tarkaj'),
(@TARKAJ,1,0,'It appears their presence has grown.',12,0,100,0,0,106239,0,0,'Bladeguard Tarkaj'),
(@TARKAJ,2,0,'It might be too late for dat.',12,0,100,0,0,106247,0,0,'Bladeguard Tarkaj'); 

-- Enforcer Sekal SAI 122229  	
SET @ENTRY := 122229;
SET @QUEST :=47313;
UPDATE `creature_template` SET `gossip_menu_id`=21096, `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,
`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,513,21096,0,0,0,33,122218,0,0,0,0,0,18,5,0,0,0,0,0,0,"Enforcer Sekal - On Gossip Option 0 Selected - Quest Credit '' (No Repeat)"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Enforcer Sekal - On Gossip Option 0 Selected - Say Line 0 (No Repeat)"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Enforcer Sekal - On Gossip Option 0 Selected - Close Gossip (No Repeat)");

-- Enforcer Sekal Text 122229 
DELETE FROM `creature_text` WHERE `creatureid`=@ENTRY;
INSERT INTO `creature_text` (`creatureid`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`broadcastTextId`,`textRange`,`comment`) VALUES
(@ENTRY,0,0,'Do ya have a death wish? Da general has eye and ears everywhere.',12,0,100,0,0,0,0,0,'Enforcer Sekal');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=21096 AND `ConditionValue1`=47313;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,21096,0,0,0,9,0,47313,0,0,0,0,0,'','Enforcer Sekal show gossip menu only if quest is taken');

-- Enforcer Gortok SAI 123243	
SET @ENTRY := 123243;
UPDATE `creature_template` SET `gossip_menu_id`=21189, `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,
`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,513,21189,0,0,0,33,122218,0,0,0,0,0,18,5,0,0,0,0,0,0,"Enforcer Gortok - On Gossip Option 0 Selected - Quest Credit '' (No Repeat)"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Enforcer Gortok - On Gossip Option 0 Selected - Say Line 0 (No Repeat)"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Enforcer Gortok - On Gossip Option 0 Selected - Close Gossip (No Repeat)");

-- Enforcer Gortok Text 123243 
DELETE FROM `creature_text` WHERE `creatureid`=@ENTRY;
INSERT INTO `creature_text` (`creatureid`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`broadcastTextId`,`textRange`,`comment`) VALUES
(@ENTRY,0,0,'Why do ya ask such questions? Are ya tryin'' ta get sent to da sands?',12,0,100,0,0,0,0,0,'Enforcer Gortok');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=21189 AND `ConditionValue1`=47313;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,21189,0,0,0,9,0,47313,0,0,0,0,0,'','Enforcer Gortok show gossip menu only if quest is taken');

-- Enforcer Dakanji SAI 122231	
SET @ENTRY := 122231;
UPDATE `creature_template` SET `gossip_menu_id`=21097, `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,
`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,513,21097,0,0,0,33,122218,0,0,0,0,0,18,5,0,0,0,0,0,0,"Enforcer Dakanji - On Gossip Option 0 Selected - Quest Credit '' (No Repeat)"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Enforcer Dakanji - On Gossip Option 0 Selected - Say Line 0 (No Repeat)"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Enforcer Dakanji - On Gossip Option 0 Selected - Close Gossip (No Repeat)");

-- Enforcer Dakanji Text 122231 
DELETE FROM `creature_text` WHERE `creatureid`=@ENTRY;
INSERT INTO `creature_text` (`creatureid`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`broadcastTextId`,`textRange`,`comment`) VALUES
(@ENTRY,0,0,'I don''t ask questions. I follow orders. You''d be better off not askin'' questions either.',12,0,100,0,0,0,0,0,'Enforcer Dakanji');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=21097 AND `ConditionValue1`=47313;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,21097,0,0,0,9,0,47313,0,0,0,0,0,'','Enforcer Dakanji show gossip menu only if quest is taken');

-- Bladeguard Kaja SAI 122817
SET @ENTRY := 122817;
UPDATE `creature_template` SET `AIName`='SmartAI', `MovementType`=2 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,
`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,512,1,15,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,"Bladeguard Kaja - Within 1-15 Range Out of Combat LoS - Quest Credit ''"),
(@ENTRY,0,1,0,10,0,100,513,1,20,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Bladeguard Kaja - Within 1-20 Range Out of Combat LoS - Say Line 0 (No Repeat)");

-- Bladeguard Kaja Text 122817 
DELETE FROM `creature_text` WHERE `creatureid`=@ENTRY;
INSERT INTO `creature_text` (`creatureid`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`broadcastTextId`,`textRange`,`comment`) VALUES
(@ENTRY,0,0,'Hey you! Yes, you. Are you da one dat''s been askin'' around about da general?',12,0,100,0,0,105867,0,0,'Bladeguard Kaja');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=@ENTRY  AND `ConditionTypeOrReference`=9;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,@ENTRY,0,0,9,0,47313,0,0,0,0,0,'','Only Run script if quest is taken');

-- UPDATE quest_objectives SET Flags=29 WHERE ID IN (290307,290315,290316);
UPDATE `quest_objectives` SET `Flags`=2 WHERE `ID` IN (290307,290315,290316); 

-- https://www.wowhead.com/npc=122320/bladeguard-kaja
-- Bladeguard Kaja SAI 122817
SET @ENTRY := 122817;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `event_type`=19;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,
`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,2,0,19,0,100,0,47314,0,0,0,12,122320,8,100,0,0,0,0,8,0,0,-859.700989,758.549988,339.885010,3.403390,"Bladeguard Kaja - On Quest '' Taken - Summon Creature 'Bladeguard Kaja'"),
(@ENTRY,0,3,0,19,0,100,0,47314,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bladeguard Kaja - On Quest '' Taken - Despawn Instant");

-- Bladeguard Kaja SAI 122320
SET @ENTRY := 122320;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,
`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,513,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Bladeguard Kaja - On Reset - Say Line 0 (No Repeat)"),
(@ENTRY,0,1,0,25,0,100,0,0,0,3000,3000,53,1,563430,0,0,0,0,7,0,0,0,0,0,0,0,"Bladeguard Kaja - On Reset - Start Waypoint"),
(@ENTRY,0,2,0,40,0,100,0,1,0,0,0,1,1,0,0,0,0,0,0,18,10,0,0,0,0,0,"Bladeguard Kaja - On Waypoint 1 Reached - Say Line 1"),
(@ENTRY,0,3,0,40,0,100,0,2,0,0,0,1,2,4000,0,0,0,0,1,0,0,0,0,0,0,0,"Bladeguard Kaja - On Waypoint 1 Reached - Say Line 2"),
(@ENTRY,0,4,0,40,0,100,0,3,0,0,0,1,3,4000,0,0,0,0,1,0,0,0,0,0,0,0,"Bladeguard Kaja - On Waypoint 1 Reached - Say Line 3"),
(@ENTRY,0,5,0,40,0,100,0,5,0,0,0,1,4,4000,0,0,0,0,1,0,0,0,0,0,0,0,"Bladeguard Kaja - On Waypoint 1 Reached - Say Line 4"),
(@ENTRY,0,6,0,40,0,100,0,6,0,0,0,1,5,4000,0,0,0,0,1,0,0,0,0,0,0,0,"Bladeguard Kaja - On Waypoint 1 Reached - Say Line 5"),
(@ENTRY,0,7,0,40,0,100,0,7,0,0,0,1,6,4000,0,0,0,0,1,0,0,0,0,0,0,0,"Bladeguard Kaja - On Waypoint 1 Reached - Say Line 6"),
(@ENTRY,0,8,0,40,0,100,0,7,0,0,0,33,122817,0,0,0,0,0,18,10,0,0,0,0,0,0,"Bladeguard Kaja - On Waypoint 7 Reached - Quest Credit ''");

-- Bladeguard Kaja Waypoint 122817 
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints`(`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-860.088745,766.296692,339.801819,'Bladeguard Kaja waypoint 1'),
(@ENTRY,2,-849.820312,767.098694,337.635040,'Bladeguard Kaja waypoint 2'),
(@ENTRY,3,-827.685791,766.640686,324.772980,'Bladeguard Kaja waypoint 3'),
(@ENTRY,4,-814.310059,766.001587,321.234314,'Bladeguard Kaja waypoint 4'),
(@ENTRY,5,-814.339294,780.026978,321.234314,'Bladeguard Kaja waypoint 5'),
(@ENTRY,6,-834.774841,794.860352,321.234314,'Bladeguard Kaja waypoint 6'),
(@ENTRY,7,-848.195557,803.203857,323.503571,'Bladeguard Kaja waypoint 7'),
(@ENTRY,8,-856.470886,805.328064,324.021881,'Bladeguard Kaja waypoint 8');

-- Bladeguard Kaja Text 122817 
DELETE FROM `creature_text` WHERE `creatureid`=@ENTRY;
INSERT INTO `creature_text` (`creatureid`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`broadcastTextId`,`textRange`,`comment`) VALUES
(@ENTRY,1,0,'Walk with me, but let''s try to avoid drawing any attention.',12,0,100,0,0,105876,0,0,'Bladeguard Kaja'),
(@ENTRY,2,0,'Warguard Rakera was my commander. De best one dis city has ever seen.',12,0,100,0,0,105877,0,0,'Bladeguard Kaja'),
(@ENTRY,3,0,'She told me she was close to proving dat General Jakra''zet is a traitor to de crown, but I haven''t heard from her since.',12,0,100,0,0,105878,0,0,'Bladeguard Kaja'),
(@ENTRY,4,0,'Whatever she uncovered was enough to earn her a trip to de desert.',12,0,100,0,0,105879,0,0,'Bladeguard Kaja'),
(@ENTRY,5,0,'De dunes are a death sentence. I will not stand by and let Rakera be swallowed by sands!.',12,0,100,0,0,105880,0,0,'Bladeguard Kaja'),
(@ENTRY,6,0,'As you can see, dere are still some of us who believe de same.',12,0,100,0,0,105881,0,0,'Bladeguard Kaja'),
(@ENTRY,7,0,'We''ll ride when you''re ready, but let''s not waste time. Rakera won''t last long in de sands.',12,0,100,0,0,105868,0,0,'Bladeguard Kaja'),
(@ENTRY,8,0,'We''ll need to travel through de swamp. As long as we stay in de air and out of sight, we shouldn''t have toomuch trouble.',12,0,100,0,0,105869,0,0,'Bladeguard Kaja'),
(@ENTRY,9,0,'Let''s keep flying and hope we don''t find out.',12,0,100,0,0,105870,0,0,'Bladeguard Kaja'),
(@ENTRY,10,0,'Up ahead I see de pass! Fly low, and keep an eye out for any sign of Rakera.',12,0,100,0,0,105871,0,0,'Bladeguard Kaja'),
(@ENTRY,11,0,'De serpent men? I thought dey hid mostly beneath de dunes...',12,0,100,0,0,105872,0,0,'Bladeguard Kaja'),
(@ENTRY,12,0,'So it has... Let''s head west and avoid any unnecessary conflict.',12,0,100,0,0,105873,0,0,'Bladeguard Kaja'); 

DELETE FROM `quest_template` WHERE `ID` IN (500000, 500001);
insert into `quest_template` (`ID`, `QuestType`, `QuestLevel`, `QuestPackageID`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardDisplaySpell1`, `RewardDisplaySpell2`, `RewardDisplaySpell3`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitTurnIn`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionCapIn1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionCapIn2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionCapIn3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionCapIn4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `RewardFactionCapIn5`, `RewardFactionFlags`, `RewardCurrencyID1`, `RewardCurrencyQty1`, `RewardCurrencyID2`, `RewardCurrencyQty2`, `RewardCurrencyID3`, `RewardCurrencyQty3`, `RewardCurrencyID4`, `RewardCurrencyQty4`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`,	`Expansion`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `QuestCompletionLog`, `VerifiedBuild`) values('500000','2','-1','0','100','0','0','0','0','0','1','0','0','1','0','0','0','0','0','0','0','0','0','1','0','66560','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','18446744073709551615','0','0','Invasiones Reinos del Este',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0');
insert into `quest_template` (`ID`, `QuestType`, `QuestLevel`, `QuestPackageID`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardDisplaySpell1`, `RewardDisplaySpell2`, `RewardDisplaySpell3`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitTurnIn`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionCapIn1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionCapIn2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionCapIn3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionCapIn4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `RewardFactionCapIn5`, `RewardFactionFlags`, `RewardCurrencyID1`, `RewardCurrencyQty1`, `RewardCurrencyID2`, `RewardCurrencyQty2`, `RewardCurrencyID3`, `RewardCurrencyQty3`, `RewardCurrencyID4`, `RewardCurrencyQty4`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`,	`Expansion`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `QuestCompletionLog`, `VerifiedBuild`) values('500001','2','-1','0','100','0','0','0','0','0','1','0','0','1','0','0','0','0','0','0','0','0','0','1','0','66560','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','18446744073709551615','0','0','Invasiones Kalimdor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0');
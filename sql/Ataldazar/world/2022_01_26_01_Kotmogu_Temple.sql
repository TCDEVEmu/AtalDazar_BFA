DELETE FROM `gameobject_template` WHERE `entry` = 180322;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(180322, 5, 6391, 'Ghost Gate', '', '', '', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0);

DELETE FROM `gameobject_template_addon` WHERE `entry` = 213172;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`, `WorldEffectID`, `AIAnimKitID`) VALUES (213172, 114, 48, 0, 0, 0, 0);

DELETE FROM `gameobject_template` WHERE `entry` IN (271002, 271089, 271013, 271012, 271090);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `RequiredLevel`, `VerifiedBuild`) VALUES
(271002, 5, 11527, 'Pedestal', '', '', '', 1.75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 271002
(271089, 5, 42702, 'Mogu Runes', '', '', '', 3.20000004768371582, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 271089
(271013, 5, 12585, 'Mogu Runes', '', '', '', 3.20000004768371582, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 271013
(271012, 5, 12273, 'Mogu Runes', '', '', '', 3.20000004768371582, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 271012
(271090, 5, 13513, 'Mogu Runes', '', '', '', 3.20000004768371582, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- 271090

DELETE FROM `spell_script_names` WHERE `spell_id` IN (121164, 121175, 121176, 121177);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(121164, 'spell_orb_of_power'),
(121175, 'spell_orb_of_power'),
(121176, 'spell_orb_of_power'),
(121177, 'spell_orb_of_power');

DELETE FROM `battleground_template` WHERE `ID` = 699;
INSERT INTO `battleground_template` (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES 
(699, 2, 10, 40, 120, 4059, 4060, 50, 1, '', 'Kotmogu\'s Temple');

UPDATE `gameobject_template` SET `type` = 0 WHERE `entry` = 213172 ;
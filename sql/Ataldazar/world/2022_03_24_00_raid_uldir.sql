DELETE FROM `areatrigger` WHERE `guid` IN (91, 92);
INSERT INTO `areatrigger` (`guid`, `id`, `map_id`, `spawn_mask`, `position_x`, `position_y`, `position_z`, `ScriptName`) VALUES 
(91, 100007, 1861, 245760, -374, -255, 1113, ''),
(92, 100007, 1642, 1, 1333, 619, -165, '');

DELETE FROM `areatrigger_teleport` WHERE `ID` IN (-55, -56);
INSERT INTO `areatrigger_teleport` (`ID`, `PortLocID`, `Name`) VALUES 
(-55, 6526, 'Freehold - Exit Target'),
(-56, 6335, 'Freehold- Entrance Target');



-- SELECT dungeonId, position_x, position_y, position_z, orientation, requiredItemLevel FROM lfg_dungeon_template



-- Snowblossom Village 1907 琼花村 
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (1983,1988,1989,1990);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(1983, 'Snowblossom Village 38', 2234.67, -129.747, 6.3429, 2.34406, 0, 28153),
(1988, 'Snowblossom Village 39', 2234.67, -129.747, 6.3429, 2.34406, 0, 28153),
(1989, 'Snowblossom Village 40', 2234.67, -129.747, 6.3429, 2.34406, 0, 28153),
(1990, 'Snowblossom Village 45', 2234.67, -129.747, 6.3429, 2.34406, 0, 28153);

UPDATE `creature` SET `spawnDifficulties`='38,39,40,45' WHERE `map`=1907;
UPDATE `gameobject` SET `spawnDifficulties`='38,39,40,45' WHERE `map`=1907;

-- 湾林镇 1814 havenswood -84.7982, -843.8871, 6.3429, 3.9626899
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (1928,1929,1930,1931,2025,2055);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(1928, 'Havenswood 38', -84.7982, -843.8871, 6.3429, 3.9626899, 0, 28153),
(1929, 'Havenswood 39', -84.7982, -843.8871, 6.3429, 3.9626899, 0, 28153),
(1930, 'Havenswood 40', -84.7982, -843.8871, 6.3429, 3.9626899, 0, 28153),
(1931, 'Havenswood 45', -84.7982, -843.8871, 6.3429, 3.9626899, 0, 28153),
(2025, 'Havenswood 153 pvp', -84.7982, -843.8871, 6.3429, 3.9626899, 0, 28153),
(2055, 'Havenswood 153', -84.7982, -843.8871, 6.3429, 3.9626899, 0, 28153);

UPDATE `creature` SET `spawnDifficulties`='38,39,40,45,153' WHERE `map`=1814;
UPDATE `gameobject` SET `spawnDifficulties`='38,39,40,45,153' WHERE `map`=1814;

-- The Dread Chain  1893   恐惧群岛 1424.8444, 457.19388, 6.432567, 4.33277
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (1734,1741,1748,1766);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(1734, 'The Dread Chain 38', 1424.8444, 457.19388, 6.432567, 4.33277, 0, 28153),
(1741, 'The Dread Chain 39', 1424.8444, 457.19388, 6.432567, 4.33277, 0, 28153),
(1748, 'The Dread Chain 40', 1424.8444, 457.19388, 6.432567, 4.33277, 0, 28153),
(1766, 'The Dread Chain 45', 1424.8444, 457.19388, 6.432567, 4.33277, 0, 28153);

UPDATE `creature` SET `spawnDifficulties`='38,39,40,45' WHERE `map`=1893;
UPDATE `gameobject` SET `spawnDifficulties`='38,39,40,45' WHERE `map`=1893;

-- The Rotting Mire 1892 腐化泥沼 9153.376, 9691.307, 6.3429, 1.5364347
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (1723,1744,1745,1764);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(1723, 'The Rotting Mire 38', 9153.376, 9691.307, 6.3429, 1.5364347, 0, 28153),
(1744, 'The Rotting Mire 39', 9153.376, 9691.307, 6.3429, 1.5364347, 0, 28153),
(1745, 'The Rotting Mire 40', 9153.376, 9691.307, 6.3429, 1.5364347, 0, 28153),
(1764, 'The Rotting Mire 45', 9153.376, 9691.307, 6.3429, 1.5364347, 0, 28153);

UPDATE `creature` SET `spawnDifficulties`='38,39,40,45' WHERE `map`=1892;
UPDATE `gameobject` SET `spawnDifficulties`='38,39,40,45' WHERE `map`=1892;

-- Jorundall 1879  约伦达尔 14404.991, 11490.11, 6.3429, 4.09958
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (1932,1933,1934,1935,2041,2056);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(1932, 'Jorundall 38', 14404.991, 11490.11, 6.3429, 4.09958, 0, 28153),
(1933, 'Jorundall 39', 14404.991, 11490.11, 6.3429, 4.09958, 0, 28153),
(1934, 'Jorundall 40', 14404.991, 11490.11, 6.3429, 4.09958, 0, 28153),
(1935, 'Jorundall 45', 14404.991, 11490.11, 6.3429, 4.09958, 0, 28153),
(2041, 'Jorundall 153 pvp', 14404.991, 11490.11, 6.3429, 4.09958, 0, 28153),
(2056, 'Jorundall 153', 14404.991, 11490.11, 6.3429, 4.09958, 0, 28153);

UPDATE `creature` SET `spawnDifficulties`='38,39,40,45,153' WHERE `map`=1879;
UPDATE `gameobject` SET `spawnDifficulties`='38,39,40,45,153' WHERE `map`=1879;

-- Verdant Wilds  1882   青翠荒野             9440/verdant-wilds 1724,1743,1746,1763,2058  
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (1724,1743,1746,1763,2058);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(1724, 'Verdant Wilds 38', 14917.806, 15177.087, 10.872437, 0, 0, 28153),
(1743, 'Verdant Wilds 39', 14917.806, 15177.087, 10.872437, 0, 0, 28153),
(1746, 'Verdant Wilds 40', 14917.806, 15177.087, 10.872437, 0, 0, 28153),
(1763, 'Verdant Wilds 45', 14917.806, 15177.087, 10.872437, 0, 0, 28153),
(2058, 'Verdant Wilds 153', 14917.806, 15177.087, 10.872437, 0, 0, 28153);

UPDATE `creature` SET `spawnDifficulties`='38,39,40,45,153' WHERE `map`=1882;
UPDATE `gameobject` SET `spawnDifficulties`='38,39,40,45,153' WHERE `map`=1882;

--  Whispering Reef  1883 低语堡礁 1735,1740,1749,1908 -913.84894, 2159.6199, 28.34297, 0
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (1735,1740,1749,1908);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(1735, 'Whispering Reef 38', -913.84894, 2159.6199, 28.34297, 0, 0, 28153),
(1740, 'Whispering Reef 39', -913.84894, 2159.6199, 28.34297, 0, 0, 28153),
(1749, 'Whispering Reef 40', -913.84894, 2159.6199, 28.34297, 0, 0, 28153),
(1908, 'Whispering Reef 45', -913.84894, 2159.6199, 28.34297, 08, 0, 28153);

UPDATE `creature` SET `spawnDifficulties`='38,39,40,45' WHERE `map`=1883;
UPDATE `gameobject` SET `spawnDifficulties`='38,39,40,45' WHERE `map`=1883;




-- TO DO
-- Crestfall 2124 潮落岛 1987,1985,1986,1984,2057
UPDATE `creature` SET `spawnDifficulties`='38,39,40,45,153' WHERE `map`=2124;
UPDATE `gameobject` SET `spawnDifficulties`='38,39,40,45,153' WHERE `map`=2124;
-- Molten Cay     1897         熔火海礁     9496/熔火海礁  1750,1751,1752,1765
UPDATE `creature` SET `spawnDifficulties`='38,39,40,45' WHERE `map`=1897;
UPDATE `gameobject` SET `spawnDifficulties`='38,39,40,45' WHERE `map`=1897;
-- Un\'gol Ruins  1813 安戈尔废墟 9469/         1687,1738,1739,1761
UPDATE `creature` SET `spawnDifficulties`='38,39,40,45' WHERE `map`=1813;
UPDATE `gameobject` SET `spawnDifficulties`='38,39,40,45' WHERE `map`=1813;
--  Skittering Hollow 1898   飞掠谷  1725,1742,1747,1767
UPDATE `creature` SET `spawnDifficulties`='38,39,40,45' WHERE `map`=1898;
UPDATE `gameobject` SET `spawnDifficulties`='38,39,40,45' WHERE `map`=1898;


DELETE FROM `instance_template` WHERE `map` IN (1814,1892,1893,1879,2124,1897,1813,1882,1898,1883);
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES 
(1814, 1642, 'scenario_havenswood', 1, 1),
(1892, 1642, 'scenario_the_rotting_mire', 1, 1),
(1893, 1642, 'scenario_the_dread_chain', 1, 1),
(1879, 1642, 'scenario_jorundall', 1, 1),
(2124, 1642, 'scenario_crestfall', 1, 1),
(1897, 1642, 'scenario_molten_cay', 1, 1),
(1813, 1642, 'scenario_ungol_ruins', 1, 1),
(1882, 1642, 'scenario_verdant_wilds', 1, 1),
(1898, 1642, 'scenario_skittering_hollow', 1, 1),
(1883, 1642, 'scenario_whispering_reef', 1, 1);

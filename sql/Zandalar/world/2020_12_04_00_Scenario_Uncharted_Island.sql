# TrinityCore - WowPacketParser
# File name: 2020-11-30_04-13-41_8.2.0_31478 - Scenario Uncharted Island Normal and Heroic .awps.pkt
# Detected build: V8_2_0_31478
# Detected locale: enUS
# Targeted database: BattleForAzeroth
# Parsing date: 12/01/2020 19:15:00

DELETE FROM `areatrigger_template` WHERE `Id` IN (17558, 20968, 17754, 16783, 18986, 20165, 20051, 20632);
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `VerifiedBuild`) VALUES
(17558, 0, 4, 1.5, 1.5, 0, 0, 0, 0, 31478),
(20968, 0, 0, 8, 8, 0, 0, 0, 0, 31478),
(17754, 0, 4, 30, 30, 0, 0, 0, 0, 31478),
(16783, 0, 18, 3, 3, 0, 0, 0, 0, 31478),
(18986, 0, 4, 0, 0, 0, 0, 0, 0, 31478),
(20165, 0, 0, 2, 2, 0, 0, 0, 0, 31478),
(20051, 0, 4, 5, 5, 0, 0, 0, 0, 31478),
(20632, 0, 4, 3, 3, 0, 0, 0, 0, 31478);


UPDATE `areatrigger_template` SET `VerifiedBuild`=31478 WHERE `Id`=3319;
UPDATE `areatrigger_template` SET `Flags`=4, `VerifiedBuild`=31478 WHERE `Id`=3983;
UPDATE `areatrigger_template` SET `VerifiedBuild`=31478 WHERE `Id`=7020;
UPDATE `areatrigger_template` SET `VerifiedBuild`=31478 WHERE `Id`=3319;
UPDATE `areatrigger_template` SET `VerifiedBuild`=31478 WHERE `Id`=11393;
UPDATE `areatrigger_template` SET `VerifiedBuild`=31478 WHERE `Id`=19652;
UPDATE `areatrigger_template` SET `VerifiedBuild`=31478 WHERE `Id`=3841;
UPDATE `areatrigger_template` SET `VerifiedBuild`=31478 WHERE `Id`=9181;
UPDATE `areatrigger_template` SET `VerifiedBuild`=31478 WHERE `Id`=5972;
UPDATE `areatrigger_template` SET `VerifiedBuild`=31478 WHERE `Id`=18005;


DELETE FROM `conversation_actors` WHERE (`ConversationId`=7491 AND `Idx`=0) OR (`ConversationId`=9748 AND `Idx`=0) OR (`ConversationId`=11262 AND `Idx`=0) OR (`ConversationId`=7498 AND `Idx`=0) OR (`ConversationId`=7504 AND `Idx`=0) OR (`ConversationId`=9742 AND `Idx`=0) OR (`ConversationId`=9744 AND `Idx`=0) OR (`ConversationId`=7271 AND `Idx`=0) OR (`ConversationId`=7502 AND `Idx`=0) OR (`ConversationId`=7265 AND `Idx`=0) OR (`ConversationId`=11148 AND `Idx`=0) OR (`ConversationId`=7277 AND `Idx`=0) OR (`ConversationId`=10725 AND `Idx`=0) OR (`ConversationId`=7487 AND `Idx`=0) OR (`ConversationId`=10728 AND `Idx`=0) OR (`ConversationId`=7486 AND `Idx`=0) OR (`ConversationId`=8508 AND `Idx`=0) OR (`ConversationId`=6514 AND `Idx`=0);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `VerifiedBuild`) VALUES
(7491, 0, 0, 31478),
(9748, 0, 0, 31478),
(11262, 0, 0, 31478),
(7498, 0, 0, 31478),-- half
(7504, 0, 0, 31478),-- on complete
(9742, 0, 0, 31478),
(9744, 0, 0, 31478),
(7271, 0, 0, 31478),-- alliance
(7502, 0, 0, 31478),-- let's go
(7265, 0, 0, 31478),-- alliance found horde
(11148, 0, 0, 31478),-- alliance
(7277, 0, 0, 31478),-- alliance
(10725, 0, 0, 31478),-- horde found alliance
(7487, 0, 0, 31478),-- 80%
(10728, 0, 0, 31478),
(7486, 0, 0, 31478),-- go
(8508, 0, 0, 31478),-- found dugun
(6514, 0, 0, 31478);-- on begin

DELETE FROM `conversation_actors` WHERE (`ConversationId`=7491 AND `Idx`=0) OR (`ConversationId`=9748 AND `Idx`=0) OR (`ConversationId`=11262 AND `Idx`=0) OR (`ConversationId`=7498 AND `Idx`=0) OR (`ConversationId`=7504 AND `Idx`=0) OR (`ConversationId`=9742 AND `Idx`=0) OR (`ConversationId`=9744 AND `Idx`=0) OR (`ConversationId`=7271 AND `Idx`=0) OR (`ConversationId`=7502 AND `Idx`=0) OR (`ConversationId`=7265 AND `Idx`=0) OR (`ConversationId`=11148 AND `Idx`=0) OR (`ConversationId`=7277 AND `Idx`=0) OR (`ConversationId`=10725 AND `Idx`=0) OR (`ConversationId`=7487 AND `Idx`=0) OR (`ConversationId`=10728 AND `Idx`=0) OR (`ConversationId`=7486 AND `Idx`=0) OR (`ConversationId`=8508 AND `Idx`=0) OR (`ConversationId`=6514 AND `Idx`=0);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `ConversationActorNearId`, `Idx`, `VerifiedBuild`) VALUES
(7491, 136445, 136445, 0, 31478),
(9748, 144782, 144782, 0, 31478),
(11262, 136445, 136445, 0, 31478),
(7498, 136445, 136445, 0, 31478),
(7504, 136445, 136445, 0, 31478),
(9742, 144772, 144772, 0, 31478),
(9744, 144772, 144772, 0, 31478),
(7271, 133585, 133585, 0, 31478),
(7502, 136445, 136445, 0, 31478),
(7265, 134286, 134286, 0, 31478),
(11148, 151029, 151029, 0, 31478),
(7277, 131728, 131728, 0, 31478),
(10725, 136445, 136445, 0, 31478),
(7487, 136445, 136445, 0, 31478),
(10728, 136445, 136445, 0, 31478),
(7486, 136445, 136445, 0, 31478),
(8508, 136445, 136445, 0, 31478),
(6514, 136445, 136445, 0, 31478);

SET @COVID = 136445;
DELETE FROM `conversation_actor_template` WHERE `Id`=@COVID;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(@COVID, @COVID, 81389, 31478);

SET @COVID = 144782;
DELETE FROM `conversation_actor_template` WHERE `Id`=@COVID;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(@COVID, @COVID, 88828, 31478);

SET @COVID = 144772;
DELETE FROM `conversation_actor_template` WHERE `Id`=@COVID;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(@COVID, @COVID, 88824, 31478);

SET @COVID = 133585;
DELETE FROM `conversation_actor_template` WHERE `Id`=@COVID;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(@COVID, @COVID, 83028, 31478);
-- 
SET @COVID = 134286;
DELETE FROM `conversation_actor_template` WHERE `Id`=@COVID;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(@COVID, @COVID, 83533, 31478);

SET @COVID = 151029;
DELETE FROM `conversation_actor_template` WHERE `Id`=@COVID;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(@COVID, @COVID, 91011, 31478);

SET @COVID = 131728;
DELETE FROM `conversation_actor_template` WHERE `Id`=@COVID;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(@COVID, @COVID, 82025, 31478);


DELETE FROM `conversation_line_template` WHERE `Id` IN (17095, 22417, 26985, 17102, 17108, 22411, 22413, 16607, 17106, 16595, 26676, 16619, 25263, 17091, 25266, 17090, 19144, 14769);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(17095, 0, 1081, 0, 0, 31478),
(22417, 0, 1219, 0, 0, 31478),
(26985, 0, 1081, 0, 0, 31478),
(17102, 0, 1081, 0, 0, 31478),
(17108, 0, 1081, 0, 0, 31478),
(22411, 0, 93, 0, 0, 31478),
(22413, 0, 93, 0, 0, 31478),
(16607, 0, 96, 0, 0, 31478),
(17106, 0, 1081, 0, 0, 31478),
(16595, 0, 108, 0, 0, 31478),
(26676, 0, 1060, 0, 0, 31478),
(16619, 0, 103, 0, 0, 31478),
(25263, 0, 1081, 0, 0, 31478),
(17091, 0, 1081, 0, 0, 31478),
(25266, 0, 1081, 0, 0, 31478),
(17090, 0, 1081, 0, 0, 31478),
(19144, 0, 1081, 0, 0, 31478),
(14769, 0, 1081, 0, 0, 31478);


DELETE FROM `conversation_template` WHERE `Id` IN (7502, 9748, 7487, 7271, 7491, 7498, 9742, 10725, 9744, 6514, 7504, 7486, 11148, 8508, 7277, 10728, 7265, 11262);
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `TextureKitId`, `VerifiedBuild`) VALUES
(7502, 17106, 4484, 0, 31478),
(9748, 22417, 6087, 0, 31478),
(7487, 17091, 3596, 0, 31478),
(7271, 16607, 5527, 0, 31478),
(7491, 17095, 7082, 0, 31478),
(7498, 17102, 4711, 0, 31478),
(9742, 22411, 5805, 0, 31478),
(10725, 25263, 10647, 0, 31478),
(9744, 22413, 7559, 0, 31478),
(6514, 14769, 6179, 0, 31478),
(7504, 17108, 6443, 0, 31478),
(7486, 17090, 4224, 0, 31478),
(11148, 26676, 7544, 0, 31478),
(8508, 19144, 8156, 0, 31478),
(7277, 16619, 7274, 0, 31478),
(10728, 25266, 7827, 0, 31478),
(7265, 16595, 9173, 0, 31478),
(11262, 26985, 8808, 0, 31478);


DELETE FROM `gameobject_template_addon` WHERE `entry` IN (326170 /*Abandoned Charm*/, 290910 /*Plundered Azerite*/, 326232 /*Elemental Bindings*/, 286987 /*Frozen Chest*/, 296997 /*Canoe*/, 273295 /*Azerite Crystal*/, 270945 /*Giant Clam*/, 307747 /*Airship Vol'dun*/, 282482 /*Zandalari Boat*/, 312057 /*Horde Flagship*/, 312060 /*Horde Gunship*/, 312058 /*Horde Transport*/, 290911 /*Sack of Azerite*/, 326189 /*Приманка на палочке*/, 282628 /*Sand Pile*/, 277525 /*Wanderer's Respite*/, 271828 /*Stranglevines*/, 290801 /*Twilight Hoard*/, 291123 /*Twilight Cache*/, 326192 /*326192*/, 281896 /*Azerite Detector*/, 270914 /*Reinforced Chest*/, 287447 /*Strangling Vines*/, 270913 /*Old Chest*/, 270912 /*Wooden Strongbox*/, 284423 /*Glowing Seed*/, 311483 /*Azerite Gas*/, 311481 /*Azerite Crack*/, 273296 /*Azerite Shard*/, 311480 /*Azerite Seam*/, 311482 /*Azerite Crack*/, 284424 /*Giant Flower*/, 289437 /*Azerite Crystal*/, 326016 /*XR-5P33DY Prototype Propellers*/, 303199 /*Doodad_8HU_KulTiras_ShipMedium_IslandGate001*/, 326586 /*Point Blank Cannon*/, 295547 /*Pirate's Booty*/, 293703 /*Crude Boomerang*/, 326160 /*Lightcrystal*/, 296167 /*Tol'vir Cache*/, 297070 /*Portal*/, 299039 /*Azerite Detector*/, 303140 /*Doodad_8TR_Zandalari_ShipMedTransport01_Gangplank_IslandGate001*/, 272644 /*Altar of the Sea*/, 269984 /*Sticky Starfish*/, 326009 /*Robotic Gizmo*/, 326056 /*Collision*/, 289356 /*Azerite Shard*/, 303141 /*Doodad_8TR_Zandalari_ShipMedTransport01_Gangplank_IslandGate002*/, 289359 /*Azerite Chunk*/, 273297 /*Azerite Chunk*/, 286963 /*Breath of Pa'ku*/, 286962 /*Kul'Tiran Frigate*/);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`) VALUES
(326170, 94, 0), -- Abandoned Charm
(290910, 0, 2), -- Plundered Azerite
(326232, 94, 0), -- Elemental Bindings
(286987, 0, 33), -- Frozen Chest
(296997, 0, 48), -- Canoe
(273295, 0, 32801), -- Azerite Crystal
(270945, 0, 34), -- Giant Clam
(307747, 0, 1048608), -- Airship Vol'dun
(282482, 0, 1048608), -- Zandalari Boat
(312057, 0, 1048608), -- Horde Flagship
(312060, 0, 1048608), -- Horde Gunship
(312058, 0, 1048608), -- Horde Transport
(290911, 0, 34), -- Sack of Azerite
(326189, 94, 0), -- Приманка на палочке
(282628, 0, 34), -- Sand Pile
(277525, 0, 32), -- Wanderer's Respite
(271828, 94, 0), -- Stranglevines
(290801, 0, 1), -- Twilight Hoard
(291123, 0, 33), -- Twilight Cache
(326192, 94, 0), -- 326192
(281896, 0, 32), -- Azerite Detector
(270914, 0, 34), -- Reinforced Chest
(287447, 0, 34), -- Strangling Vines
(270913, 0, 1), -- Old Chest
(270912, 0, 1), -- Wooden Strongbox
(284423, 94, 0), -- Glowing Seed
(311483, 1375, 16), -- Azerite Gas
(311481, 1375, 16), -- Azerite Crack
(273296, 0, 32769), -- Azerite Shard
(311480, 1375, 16), -- Azerite Seam
(311482, 1375, 16), -- Azerite Crack
(284424, 94, 0), -- Giant Flower
(289437, 0, 32769), -- Azerite Crystal
(326016, 0, 1), -- XR-5P33DY Prototype Propellers
(303199, 1375, 1048608), -- Doodad_8HU_KulTiras_ShipMedium_IslandGate001
(326586, 94, 0), -- Point Blank Cannon
(295547, 0, 33), -- Pirate's Booty
(293703, 94, 0), -- Crude Boomerang
(326160, 94, 0), -- Lightcrystal
(296167, 0, 34), -- Tol'vir Cache
(297070, 0, 32), -- Portal
(299039, 0, 32), -- Azerite Detector
(303140, 1375, 1048608), -- Doodad_8TR_Zandalari_ShipMedTransport01_Gangplank_IslandGate001
(272644, 0, 33), -- Altar of the Sea
(269984, 94, 0), -- Sticky Starfish
(326009, 0, 1), -- Robotic Gizmo
(326056, 1732, 1048608), -- Collision
(289356, 0, 32769), -- Azerite Shard
(303141, 1375, 1048608), -- Doodad_8TR_Zandalari_ShipMedTransport01_Gangplank_IslandGate002
(289359, 0, 32769), -- Azerite Chunk
(273297, 0, 32769), -- Azerite Chunk
(286963, 1375, 1048608), -- Breath of Pa'ku
(286962, 1375, 1048608); -- Kul'Tiran Frigate

UPDATE `gameobject_template_addon` SET `faction`=2402 WHERE `entry`=179944; -- Meeting Stone Summoning Portal

DELETE FROM `quest_poi` WHERE (`QuestID`=52680 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(52680, 0, 0, 32, 0, 0, 1220, 650, 0, 2, 0, 0, 0, 0, 31478); -- -Unknown-

DELETE FROM `quest_poi_points` WHERE (`QuestID`=52680 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(52680, 0, 0, 4174, 3682, 31478); -- -Unknown-

-- snowblossom-village 琼花村
DELETE FROM `instance_template` WHERE `map`=1907;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES
 (1907, 1642, 'scenario_snowblossom_village', 1, 1);

-- 151978 fly
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=151978; 

-- .go c id 123000
-- 143967


DELETE FROM `creature_text` WHERE (`CreatureID`=136532 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=138511 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=138511 AND `GroupID`='1' AND `ID`='0') OR (`CreatureID`=140838 AND `GroupID`='0' AND `ID`='0') OR (`CreatureID`=143761 AND `GroupID`='0' AND `ID`='0');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(136532, 0, 0, 'You! Want to help a guy out? I promise I am NOT with the Legion anymore. Those guys are gone. It\'s just me now, Sylvester the Honest Imp.', 14, 0, 100, 0, 0, 0, UNKNOWN, 'Sylvester to Player'),
(138511, 0, 0, 'We did not... choose our fate...', 12, 0, 100, 0, 0, 0, UNKNOWN, 'Azurescale'),
(138511, 1, 0, 'You march towards the death of your world... blinded by arrogance...', 12, 0, 100, 0, 0, 0, UNKNOWN, 'Azurescale'),
(140838, 0, 0, 'Got you!', 14, 0, 100, 0, 0, 0, UNKNOWN, 'Mischievous Flood'),
(143761, 0, 0, 'I bring goods to trade! Much luck they bring you!', 12, 0, 100, 0, 0, 0, UNKNOWN, 'Stick-In-The-Mud to Player');


DELETE FROM `gossip_menu` WHERE (`MenuId`=18747 AND `TextId`=27251);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(18747, 27251, 31478); -- 143967

DELETE FROM `gossip_menu_option` WHERE (`MenuId`=18747 AND `OptionIndex`=0);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES
(18747, 0, 31, 'Show me what missions you have prepared.', 0, 21, 1 31478);

-- 132925

-- 135182 CAST 265702/艾泽里特能量 Apply Aura：Area Trigger (12915) cast 265703

-- DOOR 303140, 303141, 303199
-- Doodad_8TR_Zandalari_ShipMedTransport01_Gangplank_IslandGate002

-- 1710/海员达布隆币 8

-- 147968,147932,147936,146116,146118,146178,147938 CHECK FACTION


SET @CGUID=441001;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+639;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
-- (@CGUID+0, 144245, 1642, 0, 0, '0', '0', 0, 0, 0, -2023.0550537109375, 1009.70635986328125, -41.78155517578125, 3.724664211273193359, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- -Unknown- (Area: -Unknown- - Difficulty: 1) (possible waypoints or random movement)
-- (@CGUID+1, 137289, 1642, 0, 0, '0', '0', 0, 0, 0, -1993.8663330078125, 950.3421630859375, 5.93170928955078125, 2.555346012115478515, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- -Unknown- (Area: -Unknown- - Difficulty: 1) (possible waypoints or random movement)
-- snowblossom-village 琼花村 scenario_snowblossom_village
-- Snowblossom Village
(@CGUID+2, 137946, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2237.373046875, -60.5816001892089843, 8.820034027099609375, 2.098994016647338867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Sand Mouse (Area: -Unknown- - Difficulty: 38) (Auras: 273393 - -Unknown-)
(@CGUID+3, 147192, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2245.800048828125, -127.877777099609375, 6.45240020751953125, 2.99206089973449707, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Extractor (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+4, 140335, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2265.7919921875, -52.9322891235351562, 8.570034027099609375, 5.47238779067993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Screecher (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+5, 124581, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2192.262939453125, -89.0386734008789062, 8.71820831298828125, 5.720685958862304687, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Spineshell Snapper (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+6, 122266, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2195.43896484375, -87.4714279174804687, 8.71820831298828125, 5.287815093994140625, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Spineshell Turtle (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+7, 136599, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2217.48193359375, -115.510299682617187, 0.423131912946701049, 5.176861763000488281, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mire Whelk (Area: -Unknown- - Difficulty: 38)
(@CGUID+8, 137950, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2221.48291015625, -60.3993110656738281, 9.093359947204589843, 6.029465198516845703, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Beach Scuttler (Area: -Unknown- - Difficulty: 38) (Auras: 273393 - -Unknown-)
(@CGUID+9, 132925, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2203.818115234375, -44.2118110656738281, 10.43966960906982421, 4.191464900970458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+10, 147192, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2253.007080078125, -114.976707458496093, 11.9637002944946289, 0.505275726318359375, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Extractor (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+11, 124581, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2186.55908203125, -75.3859481811523437, 9.23432159423828125, 4.952505111694335937, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Spineshell Snapper (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+12, 141875, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2240.562255859375, -126.370101928710937, 6.448200225830078125, 2.2957611083984375, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Sailor (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+13, 122266, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2196.35888671875, -90.8470382690429687, 8.670499801635742187, 5.450785160064697265, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Spineshell Turtle (Area: -Unknown- - Difficulty: 38)
(@CGUID+14, 122266, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2200.451904296875, -100.693199157714843, 8.729050636291503906, 5.996956825256347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Spineshell Turtle (Area: -Unknown- - Difficulty: 38)
(@CGUID+15, 137946, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2218.1220703125, -65.4218826293945312, 9.018897056579589843, 0.755011200904846191, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Sand Mouse (Area: -Unknown- - Difficulty: 38) (Auras: 273393 - -Unknown-)
(@CGUID+16, 124581, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2181.115966796875, -74.2683792114257812, 9.246088027954101562, 6.142046928405761718, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Spineshell Snapper (Area: -Unknown- - Difficulty: 38)
(@CGUID+17, 140334, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2264.76708984375, -59.7549705505371093, 8.582653045654296875, 0.946602225303649902, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Coilfang (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-)
(@CGUID+18, 122266, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2198.10888671875, -102.052001953125, 8.701245307922363281, 4.35088205337524414, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Spineshell Turtle (Area: -Unknown- - Difficulty: 38)
(@CGUID+19, 152714, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2193.4013671875, -93.794281005859375, 9.178638458251953125, 0.67256098985671997, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- A.T.O.M.I.K. Mk. II (Area: -Unknown- - Difficulty: 38) (Auras: 296740 - -Unknown-, 296739 - -Unknown-)
(@CGUID+20, 136594, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2227.733642578125, -132.613677978515625, 6.618800163269042968, 2.417860984802246093, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Captain Rez'okun (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+21, 122266, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2194.701904296875, -88.9163436889648437, 8.71820831298828125, 5.687716960906982421, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Spineshell Turtle (Area: -Unknown- - Difficulty: 38) (Auras: ) (possible waypoints or random movement)
(@CGUID+22, 136598, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2201.626953125, -79.1545181274414062, 8.782551765441894531, 3.814270973205566406, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Sand Stinger (Area: -Unknown- - Difficulty: 38) (Auras: 273393 - -Unknown-)
(@CGUID+23, 124581, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2187.342041015625, -75.2868118286132812, 9.246283531188964843, 4.736371040344238281, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Spineshell Snapper (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+24, 122263, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2194.12890625, -89.7258682250976562, 8.71820831298828125, 5.513939857482910156, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Spineshell Snapjaw (Area: -Unknown- - Difficulty: 38) (Auras: 265445 - -Unknown-)
(@CGUID+25, 122264, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2183.625, -76.5844802856445312, 9.09052276611328125, 2.057178020477294921, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Elder Spineshell (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-)
(@CGUID+26, 143761, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2229.29248046875, -130.122909545898437, 6.340199947357177734, 5.862061023712158203, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stick-In-The-Mud (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+27, 132925, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2204.153076171875, -36.470489501953125, 11.10531997680664062, 1.205098986625671386, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+28, 137946, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2202.39892578125, -90.6684036254882812, 8.741724014282226562, 4.371166229248046875, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Sand Mouse (Area: -Unknown- - Difficulty: 38) (Auras: 273393 - -Unknown-)
(@CGUID+29, 124581, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2201.115966796875, -98.2216033935546875, 8.734477996826171875, 0.620431482791900634, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Spineshell Snapper (Area: -Unknown- - Difficulty: 38)
(@CGUID+30, 140337, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2207.2900390625, -48.595489501953125, 10.02499961853027343, 3.261715888977050781, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Hatchling (Area: -Unknown- - Difficulty: 38) (Auras: 273393 - -Unknown-)
(@CGUID+31, 147192, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2217.876953125, -150.85150146484375, 14.95880031585693359, 0.692960977554321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Azerite Extractor (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+32, 140335, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2249.26708984375, -68.066192626953125, 8.906587600708007812, 0.348604291677474975, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Screecher (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+33, 151978, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2233.56396484375, -100.980903625488281, 0.100000001490116119, 4.425581932067871093, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Waterstrider (Area: -Unknown- - Difficulty: 38)
(@CGUID+34, 141880, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2255.45166015625, -119.957191467285156, 13.17290019989013671, 3.988660812377929687, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Sailor (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+35, 124581, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2195.48095703125, -87.1476287841796875, 8.71820831298828125, 5.138434886932373046, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Spineshell Snapper (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+36, 141899, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2256.37744140625, -123.666030883789062, 6.841700077056884765, 1.765460968017578125, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Sailor (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+37, 151978, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2248.446044921875, -92.322906494140625, 0.100000001490116119, 0.857559800148010253, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Waterstrider (Area: -Unknown- - Difficulty: 38)
(@CGUID+38, 140335, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2253.510009765625, -53.1007003784179687, 8.885463714599609375, 3.22420811653137207, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Screecher (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+39, 124581, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2198.1708984375, -103.933998107910156, 8.704229354858398437, 6.244163990020751953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Spineshell Snapper (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+40, 140619, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2281.68798828125, -126.385498046875, -5.61912298202514648, 2.268954992294311523, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Coastal Fathomjaw (Area: -Unknown- - Difficulty: 38)
(@CGUID+41, 140334, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2257.592041015625, -67.4375, 8.687252998352050781, 0.435604393482208251, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Coilfang (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+42, 141881, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2259.8955078125, -127.315193176269531, 7.943999767303466796, 6.222661018371582031, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Sailor (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+43, 124581, 1907, 9540, 9540, '38', '64938', 0, 0, 0, 2181.5458984375, -73.1708221435546875, 9.359365463256835937, 5.879618167877197265, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Spineshell Snapper (Area: -Unknown- - Difficulty: 38)
(@CGUID+44, 140335, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2211.635009765625, -43.7656288146972656, 10.35459041595458984, 1.562911033630371093, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Screecher (Area: -Unknown- - Difficulty: 38) (Auras: 273393 - -Unknown-)
(@CGUID+45, 140334, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2203.818115234375, -44.2118110656738281, 10.43966960906982421, 4.191464900970458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Coilfang (Area: -Unknown- - Difficulty: 38) (Auras: 276104 - -Unknown-)
(@CGUID+46, 138624, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2234.81005859375, -47.5145988464355468, 9.123060226440429687, 0.145924001932144165, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Amathet Champion (Area: -Unknown- - Difficulty: 38) (Auras: 263998 - -Unknown-)
(@CGUID+47, 138628, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2234.81005859375, -47.5145988464355468, 9.123060226440429687, 0.145924001932144165, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Amathet Priest (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 263998 - -Unknown-) (possible waypoints or random movement)
(@CGUID+48, 138633, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2234.81005859375, -47.5145988464355468, 9.123060226440429687, 0.145924001932144165, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Brother Maat (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 263998 - -Unknown-, 276102 - -Unknown-) (possible waypoints or random movement)
(@CGUID+49, 138633, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2234.81005859375, -47.5145988464355468, 9.123060226440429687, 0.145924001932144165, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Brother Maat (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 263998 - -Unknown-) (possible waypoints or random movement)
(@CGUID+50, 138628, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2234.81005859375, -47.5145988464355468, 9.123060226440429687, 0.145924001932144165, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Amathet Priest (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 263998 - -Unknown-) (possible waypoints or random movement)
(@CGUID+51, 138628, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2234.81005859375, -47.5145988464355468, 9.123060226440429687, 0.145924001932144165, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Amathet Priest (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 263998 - -Unknown-) (possible waypoints or random movement)
(@CGUID+52, 138635, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2234.81005859375, -47.5145988464355468, 9.123060226440429687, 0.145924001932144165, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Commander Husan (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 263998 - -Unknown-) (possible waypoints or random movement)
(@CGUID+53, 138628, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2234.81005859375, -47.5145988464355468, 9.123060226440429687, 0.145924001932144165, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Amathet Priest (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 263998 - -Unknown-) (possible waypoints or random movement)
(@CGUID+54, 140337, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2211.3779296875, -39.2563705444335937, 10.77085018157958984, 5.003859996795654296, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Hatchling (Area: -Unknown- - Difficulty: 38) (Auras: 273393 - -Unknown-)
(@CGUID+55, 140334, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2204.153076171875, -36.470489501953125, 11.10531997680664062, 1.205098986625671386, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Coilfang (Area: -Unknown- - Difficulty: 38) (Auras: 276104 - -Unknown-)
(@CGUID+56, 140334, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2212.636962890625, -32.657989501953125, 11.34156990051269531, 3.780668973922729492, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Coilfang (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-)
(@CGUID+57, 136598, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2245.281005859375, -39.6301498413085937, 9.822237014770507812, 3.523912906646728515, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Sand Stinger (Area: -Unknown- - Difficulty: 38)
(@CGUID+58, 140335, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2208.992919921875, -31.5781307220458984, 11.55006027221679687, 3.555414915084838867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Screecher (Area: -Unknown- - Difficulty: 38) (Auras: 273393 - -Unknown-)
(@CGUID+59, 136598, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2264.02197265625, -35.9500999450683593, 8.577724456787109375, 3.678663015365600585, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Sand Stinger (Area: -Unknown- - Difficulty: 38)
(@CGUID+60, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2257.68408203125, -5.61760711669921875, 9.290937423706054687, 1.978633999824523925, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+61, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2212.636962890625, -32.657989501953125, 11.34156990051269531, 3.780668973922729492, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+62, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2264.76708984375, -59.7549705505371093, 8.582653045654296875, 0.946602225303649902, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+63, 140335, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2252.403076171875, -15.9708595275878906, 9.138301849365234375, 3.727427959442138671, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Nightscale Screecher (Area: -Unknown- - Difficulty: 38) (Auras: ) (possible waypoints or random movement)
(@CGUID+64, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2194.0224609375, -82.7108535766601562, 8.690216064453125, 1.078635334968566894, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+65, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2179.447021484375, -77.679901123046875, 9.000028610229492187, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+66, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2186.931884765625, -80.5886306762695312, 8.8908843994140625, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+67, 140334, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2265.83935546875, -23.9148292541503906, 7.002105712890625, 0.340767174959182739, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Coilfang (Area: -Unknown- - Difficulty: 38) (Auras: 276104 - -Unknown-, 276102 - -Unknown-)
(@CGUID+68, 140334, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2257.68408203125, -5.61760711669921875, 9.290937423706054687, 1.978633999824523925, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Coilfang (Area: -Unknown- - Difficulty: 38) (Auras: 276104 - -Unknown-)
(@CGUID+69, 140335, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2255.8759765625, -6.47550201416015625, 9.2099456787109375, 4.069386005401611328, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Screecher (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+70, 140335, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2261.968994140625, -5.38265323638916015, 9.787545204162597656, 1.096408963203430175, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Screecher (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+71, 151990, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2221.02294921875, 21.09896087646484375, 17.51141929626464843, 0.634878993034362792, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Honeykeeper (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+72, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2218.326904296875, -61.8299713134765625, 9.087615966796875, 4.135691642761230468, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-) (possible waypoints or random movement)
(@CGUID+73, 150719, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2272.47802734375, 10.587982177734375, 9.245869636535644531, 0.786800026893615722, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Detected Azerite Pocket (Area: -Unknown- - Difficulty: 38) (Auras: 292124 - -Unknown-)
(@CGUID+74, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2399.26708984375, -12.0776300430297851, 7.890748977661132812, 5.176036834716796875, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+75, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2271.536376953125, -27.2311134338378906, 6.4031982421875, 6.192150592803955078, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+76, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2255.947265625, -61.6876296997070312, 8.61962890625, 3.059898138046264648, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+77, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2282.85107421875, 81.672454833984375, 10.49854278564453125, 1.56341552734375, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+78, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2213.7578125, -45.3603935241699218, 10.137176513671875, 4.833339691162109375, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+79, 137947, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2205.613525390625, 31.19033050537109375, 19.43575668334960937, 5.181403636932373046, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Scavenging Rat (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+80, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2205.65625, -59.8241348266601562, 9.483673095703125, 4.647305011749267578, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+81, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2211.48583984375, -43.3346786499023437, 10.3489990234375, 5.184160709381103515, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+82, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2208.8984375, -50.6971626281738281, 9.887176513671875, 1.397744536399841308, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+83, 129000, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2304.836669921875, -6.81816911697387695, 7.409621238708496093, 0.763524651527404785, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Southsea Brawler (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-) (possible waypoints or random movement)
(@CGUID+84, 136599, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2309.10107421875, -4.04166698455810546, 7.015517234802246093, 1.481361985206604003, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mire Whelk (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+85, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2254.073974609375, -66.2888946533203125, 8.652008056640625, 3.070472955703735351, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+86, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2254.364990234375, -68.2130966186523437, 9.069950103759765625, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+87, 151676, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2331.5048828125, -29.3923797607421875, 6.765517234802246093, 0.3533707857131958, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stinkfur Hooligan (Area: -Unknown- - Difficulty: 38) (Auras: 278814 - -Unknown-, 273393 - -Unknown-)
(@CGUID+88, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2399.26708984375, -12.0776300430297851, 7.890748977661132812, 5.176036834716796875, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+89, 151676, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2334.177978515625, -35.5014991760253906, 6.493470191955566406, 6.238722801208496093, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stinkfur Hooligan (Area: -Unknown- - Difficulty: 38) (Auras: 278814 - -Unknown-, 273393 - -Unknown-)
(@CGUID+90, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2399.26708984375, -12.0776300430297851, 7.890748977661132812, 5.176036834716796875, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+91, 132912, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2399.26708984375, -12.0776300430297851, 7.890748977661132812, 5.176036834716796875, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+92, 151679, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2334.863037109375, -35.5319709777832031, 6.41119384765625, 3.097130060195922851, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stinkfur Thumper (Area: -Unknown- - Difficulty: 38) (Auras: 278814 - -Unknown-, 273393 - -Unknown-)
(@CGUID+93, 151680, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2334.320068359375, -28.3541698455810546, 6.567724227905273437, 3.494963884353637695, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Orangetooth (Area: -Unknown- - Difficulty: 38) (Auras: 278814 - -Unknown-, 273393 - -Unknown-)
(@CGUID+94, 151676, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2337.175048828125, -35.6348381042480468, 6.133851051330566406, 3.097131013870239257, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stinkfur Hooligan (Area: -Unknown- - Difficulty: 38) (Auras: 278814 - -Unknown-, 273393 - -Unknown-)
(@CGUID+95, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2258.655029296875, -72.8090286254882812, 9.72133636474609375, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+96, 139758, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2322.592529296875, 1.261417865753173828, 7.232563018798828125, 5.905101776123046875, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Annie Two-Pistols (Area: -Unknown- - Difficulty: 38) (Auras: 276104 - -Unknown-) (possible waypoints or random movement)
(@CGUID+97, 123286, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2317.166015625, 7.159804344177246093, 6.515999794006347656, 1.138411998748779296, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Southsea Gambler (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-, 255657 - -Unknown-) (possible waypoints or random movement)
(@CGUID+98, 123286, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2308.73974609375, 3.115308761596679687, 6.954927444458007812, 3.547663450241088867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Southsea Gambler (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-, 255657 - -Unknown-) (possible waypoints or random movement)
(@CGUID+99, 137946, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2283.278076171875, 30.30208015441894531, 5.129780769348144531, 3.756922006607055664, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Sand Mouse (Area: -Unknown- - Difficulty: 38)
(@CGUID+100, 151988, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2324.153076171875, 14.57639026641845703, 6.529738903045654296, 5.516314983367919921, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Masked Tanuki (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+101, 137950, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2279.610107421875, 38.01694107055664062, 7.221032142639160156, 6.179433822631835937, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Beach Scuttler (Area: -Unknown- - Difficulty: 38)
(@CGUID+102, 136599, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2275.009033203125, 37.81377029418945312, 7.901452064514160156, 2.781934022903442382, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mire Whelk (Area: -Unknown- - Difficulty: 38)
(@CGUID+103, 140068, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2268.17822265625, 52.9866790771484375, 10.40301895141601562, 3.612179040908813476, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Rustpelt Snarler (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+104, 151988, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2223.146240234375, 42.580413818359375, 17.86052513122558593, 3.390064001083374023, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Masked Tanuki (Area: -Unknown- - Difficulty: 38) (Auras: 273393 - -Unknown-) (possible waypoints or random movement)
(@CGUID+105, 140067, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2273.6630859375, 50.34350967407226562, 10.411895751953125, 3.276071548461914062, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Rustpelt Alpha (Area: -Unknown- - Difficulty: 38) (Auras: 276104 - -Unknown-)
(@CGUID+106, 132819, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2271.343017578125, 52.22957229614257812, 10.63039588928222656, 6.27588653564453125, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Rustpelt Pup (Area: -Unknown- - Difficulty: 38)
(@CGUID+107, 132819, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2261.804931640625, 58.6893310546875, 11.00819778442382812, 2.629049301147460937, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Rustpelt Pup (Area: -Unknown- - Difficulty: 38)
(@CGUID+108, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2251.53955078125, -29.0651512145996093, 9.24993896484375, 3.698951005935668945, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+109, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2261.44091796875, -21.5669097900390625, 8.038168907165527343, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+110, 151988, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2288.69384765625, 67.0489044189453125, 11.08812713623046875, 0.152491003274917602, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Masked Tanuki (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-) (possible waypoints or random movement)
(@CGUID+111, 147068, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2311.7626953125, 52.1114044189453125, 7.084633827209472656, 0.786800026893615722, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Fissure (Area: -Unknown- - Difficulty: 38) (Auras: 285629 - -Unknown-)
(@CGUID+112, 140074, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2269.7041015625, 68.8120574951171875, 10.54892730712890625, 1.045202016830444335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Sharptooth (Area: -Unknown- - Difficulty: 38) (Auras: 276104 - -Unknown-) (possible waypoints or random movement)
(@CGUID+113, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2262.30712890625, -21.2690982818603515, 7.7830810546875, 1.77522587776184082, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+114, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2264.511962890625, -13.9548597335815429, 8.677556037902832031, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+115, 147968, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2184.46728515625, 48.50122833251953125, 21.59579849243164062, 4.168478012084960937, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Agitated Azerite (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-) (possible waypoints or random movement)
(@CGUID+116, 147932, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2180.374267578125, 56.64506912231445312, 21.36702728271484375, 6.015780925750732421, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Agitated Azershard (Area: -Unknown- - Difficulty: 38) (Auras: ) (possible waypoints or random movement)
(@CGUID+117, 147932, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2186.80615234375, 56.76830673217773437, 21.26947021484375, 2.919251680374145507, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Agitated Azershard (Area: -Unknown- - Difficulty: 38) (Auras: ) (possible waypoints or random movement)
(@CGUID+118, 147968, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2182.38623046875, 63.18813323974609375, 21.36250686645507812, 5.055758476257324218, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Agitated Azerite (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+119, 136532, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2201.409912109375, 74.5966033935546875, 21.35810089111328125, 3.854599952697753906, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Sylvester (Area: -Unknown- - Difficulty: 38)
(@CGUID+120, 132819, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2285.522705078125, 77.1629486083984375, 10.92896270751953125, 5.36488199234008789, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Rustpelt Pup (Area: -Unknown- - Difficulty: 38)
(@CGUID+121, 140068, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2268.427734375, 85.59752655029296875, 10.54467010498046875, 3.009058713912963867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Rustpelt Snarler (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-)
(@CGUID+122, 132819, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2265.61767578125, 82.23964691162109375, 10.64847183227539062, 5.848244667053222656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Rustpelt Pup (Area: -Unknown- - Difficulty: 38)
(@CGUID+123, 140067, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2284.474365234375, 80.29961395263671875, 10.49931621551513671, 4.97927713394165039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Rustpelt Alpha (Area: -Unknown- - Difficulty: 38) (Auras: 276104 - -Unknown-, 276105 - -Unknown-)
(@CGUID+124, 151989, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2338.260986328125, 22.89701080322265625, 6.879405021667480468, 0.243215903639793396, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Siftworm (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+125, 137955, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2341.23388671875, 47.50275039672851562, 7.380044937133789062, 5.396279811859130859, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Woodlands Recluse (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+126, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2399.26708984375, -12.0776300430297851, 7.890748977661132812, 5.176036834716796875, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+127, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2262.660400390625, 50.20212173461914062, 10.44850444793701171, 4.708552837371826171, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+128, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2180.20263671875, 66.61975860595703125, 21.27282905578613281, 4.109609603881835937, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+129, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2364.01806640625, 54.83698272705078125, 7.828619003295898437, 4.646169662475585937, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+130, 131311, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2285.183349609375, 20.03728866577148437, 4.850924491882324218, 0.786800026893615722, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Unleashed Azerite (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+131, 132868, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2272.432373046875, 1.171826362609863281, 12.15778064727783203, 0.786800026893615722, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Congealed Azerite (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+132, 131311, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2281.799560546875, 17.36712265014648437, 6.240471839904785156, 0.786800026893615722, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Unleashed Azerite (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+133, 132868, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2261.760009765625, 9.131177902221679687, 8.427083015441894531, 0.786800026893615722, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Congealed Azerite (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+134, 132868, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2264.0986328125, 18.115081787109375, 8.619626045227050781, 0.786800026893615722, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Congealed Azerite (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+135, 132868, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2283.17529296875, 10.23596858978271484, 5.981534004211425781, 0.786800026893615722, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Congealed Azerite (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+136, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2258.567626953125, 48.23724365234375, 10.81129074096679687, 1.564276695251464843, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+137, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2263.020263671875, 33.20566940307617187, 9.0855560302734375, 4.29974365234375, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+138, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2273.988037109375, 63.14236068725585937, 10.19015979766845703, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+139, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2276.653076171875, 69.32465362548828125, 11.36847972869873046, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+140, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2272.47802734375, 10.587982177734375, 9.245869636535644531, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+141, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2282.4306640625, 78.9341583251953125, 10.63565826416015625, 4.527158737182617187, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+142, 140335, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2293.363037109375, 133.610504150390625, 10.18871307373046875, 4.738558769226074218, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Screecher (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-)
(@CGUID+143, 140335, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2295.62353515625, 133.885498046875, 10.20212745666503906, 4.606565475463867187, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Screecher (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-)
(@CGUID+144, 140335, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2293.39990234375, 133.3866729736328125, 10.18290615081787109, 4.819759845733642578, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Screecher (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-)
(@CGUID+145, 140336, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2292.21044921875, 138.141998291015625, 10.21296215057373046, 4.864426612854003906, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Wind Serpent (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-)
(@CGUID+146, 140336, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2297.849609375, 131.8741302490234375, 10.12801742553710937, 4.341479778289794921, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Nightscale Wind Serpent (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-)
(@CGUID+147, 151989, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2259.506103515625, 135.627166748046875, 17.69787406921386718, 0.37321212887763977, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Siftworm (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+148, 146116, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2181.89111328125, 68.91484832763671875, 21.285614013671875, 4.053803443908691406, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Needleback Forager (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+149, 151988, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2226.779052734375, 137.229217529296875, 22.68014144897460937, 2.689606904983520507, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Masked Tanuki (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+150, 137951, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2184.5048828125, 88.411956787109375, 20.84892654418945312, 3.656650066375732421, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Skittish Squirrel (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+151, 151989, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2191.7392578125, 83.384033203125, 21.14899444580078125, 5.340875625610351562, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Siftworm (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+152, 146178, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2170.421875, 69.3308563232421875, 22.3150787353515625, 4.260316848754882812, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Azurespine (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-) (possible waypoints or random movement)
(@CGUID+153, 146116, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2176.3154296875, 84.8885955810546875, 20.85326766967773437, 0.690698504447937011, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Needleback Forager (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+154, 138969, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2300.33203125, 148.2938995361328125, 30.49251937866210937, 1.853888988494873046, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Zian-Ti Spirit (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+155, 151988, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2301.846923828125, 147.9168243408203125, 10.97226715087890625, 0.581875801086425781, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Masked Tanuki (Area: -Unknown- - Difficulty: 38)
(@CGUID+156, 137958, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2192.446044921875, 114.2603988647460937, 20.22075080871582031, 2.367516040802001953, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Crimsonwood Kit (Area: -Unknown- - Difficulty: 38)
(@CGUID+157, 151989, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2235.47509765625, 149.6177520751953125, 22.96964836120605468, 0.319945156574249267, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Siftworm (Area: -Unknown- - Difficulty: 38)
(@CGUID+158, 140293, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2359.837646484375, 68.75911712646484375, 8.277095794677734375, 1.593522071838378906, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Snowfur Snarler (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-) (possible waypoints or random movement)
(@CGUID+159, 140292, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2358.7373046875, 52.63063430786132812, 7.637094497680664062, 3.987279891967773437, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Snowfur Alpha (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-) (possible waypoints or random movement)
(@CGUID+160, 140295, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2366.9052734375, 64.142852783203125, 9.005741119384765625, 1.797869801521301269, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Snowfur Pup (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-) (possible waypoints or random movement)
(@CGUID+161, 137951, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2370.10498046875, 72.499298095703125, 8.9584197998046875, 6.254535198211669921, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Skittish Squirrel (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+162, 140295, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2364.116943359375, 50.40756988525390625, 7.63771820068359375, 2.374793529510498046, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Snowfur Pup (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-) (possible waypoints or random movement)
(@CGUID+163, 132807, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2294.98095703125, 166.6891937255859375, 11.33456993103027343, 1.570796012878417968, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Zian-Ti Quilen (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+164, 151989, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2251.374267578125, 165.571075439453125, 20.4588623046875, 4.5669403076171875, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Siftworm (Area: -Unknown- - Difficulty: 38)
(@CGUID+165, 137958, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2349.85791015625, 150.4832000732421875, 12.40192031860351562, 5.434030055999755859, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Crimsonwood Kit (Area: -Unknown- - Difficulty: 38)
(@CGUID+166, 136599, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2289.722412109375, 178.609466552734375, 13.35279560089111328, 5.791829586029052734, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Mire Whelk (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+167, 137947, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2246.08154296875, 173.5225830078125, 21.22286605834960937, 4.955776214599609375, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scavenging Rat (Area: -Unknown- - Difficulty: 38)
(@CGUID+168, 151990, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2256.75, 179.5756378173828125, 20.91481781005859375, 3.574191570281982421, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Honeykeeper (Area: -Unknown- - Difficulty: 38)
(@CGUID+169, 137947, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2306.361572265625, 200.58740234375, 9.346012115478515625, 1.116485238075256347, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scavenging Rat (Area: -Unknown- - Difficulty: 38)
(@CGUID+170, 151674, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2392.927734375, 122.8794784545898437, 12.82500267028808593, 5.452225208282470703, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Stinkfur Hopling (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-) (possible waypoints or random movement)
(@CGUID+171, 151674, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2392.160400390625, 123.5111160278320312, 12.78907394409179687, 4.476263999938964843, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Stinkfur Hopling (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-) (possible waypoints or random movement)
(@CGUID+172, 140292, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2372.9755859375, 69.26749420166015625, 9.028140068054199218, 2.219068527221679687, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Snowfur Alpha (Area: -Unknown- - Difficulty: 38) (Auras: 276104 - -Unknown-, 276105 - -Unknown-) (possible waypoints or random movement)
(@CGUID+173, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2302.93994140625, 128.3271942138671875, 10.67714977264404296, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+174, 123146, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2246.888916015625, 190.2064361572265625, 105.3988571166992187, 5.488658428192138671, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Torn Spirit (Area: -Unknown- - Difficulty: 38)
(@CGUID+175, 137947, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2266.650146484375, 207.8909454345703125, 17.46715354919433593, 4.313028812408447265, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Scavenging Rat (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+176, 151674, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2392.176025390625, 130.0785369873046875, 13.40302658081054687, 3.303019523620605468, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Stinkfur Hopling (Area: -Unknown- - Difficulty: 38) (Auras: 273612 - -Unknown-, 273393 - -Unknown-) (possible waypoints or random movement)
(@CGUID+177, 151989, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2313.9365234375, 218.87286376953125, 14.03216361999511718, 4.429199695587158203, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Siftworm (Area: -Unknown- - Difficulty: 38)
(@CGUID+178, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2302.10400390625, 139.489593505859375, 10.32176971435546875, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+179, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2294.81298828125, 138.19970703125, 10.14513969421386718, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+180, 137951, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2214.887939453125, 137.72174072265625, 23.15091896057128906, 5.153818130493164062, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Skittish Squirrel (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+181, 147188, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2213.123779296875, 156.966796875, 30.45240020751953125, 4.606999874114990234, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Extractor (Area: -Unknown- - Difficulty: 38) (Auras: 285806 - -Unknown-)
(@CGUID+182, 151988, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2213.175537109375, 172.0529937744140625, 26.38624954223632812, 0.393738925457000732, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Masked Tanuki (Area: -Unknown- - Difficulty: 38)
(@CGUID+183, 151989, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2305.061279296875, 230.883453369140625, 14.09837722778320312, 5.050034523010253906, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Siftworm (Area: -Unknown- - Difficulty: 38)
(@CGUID+184, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2297.251953125, 149.678802490234375, 10.48093986511230468, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+185, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2413.724609375, 182.5078125, 22.04659652709960937, 6.266699790954589843, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+186, 132912, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2388.83203125, 138.708984375, 12.55766010284423828, 6.266699790954589843, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+187, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2463.353515625, 187.048828125, 24.8440704345703125, 6.266699790954589843, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+188, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2388.83203125, 138.708984375, 12.55766010284423828, 6.266699790954589843, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+189, 132912, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2413.724609375, 182.5078125, 22.04659652709960937, 6.266699790954589843, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+190, 132912, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2463.353515625, 187.048828125, 24.8440704345703125, 6.266699790954589843, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+191, 151990, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2217.293212890625, 183.857208251953125, 26.77638053894042968, 5.281519412994384765, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Honeykeeper (Area: -Unknown- - Difficulty: 38)
(@CGUID+192, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2205.729736328125, 186.920257568359375, 26.33524322509765625, 5.693712234497070312, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+193, 151990, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2207.651611328125, 184.878814697265625, 29.01722908020019531, 0.413346558809280395, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Honeykeeper (Area: -Unknown- - Difficulty: 38)
(@CGUID+194, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2204.321044921875, 197.29669189453125, 25.50175857543945312, 0.334957242012023925, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+195, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2200.297119140625, 200.0079498291015625, 25.77946853637695312, 1.850253462791442871, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+196, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2197.012451171875, 191.864990234375, 26.17676162719726562, 0.080314017832279205, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+197, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2195.07568359375, 207.3673858642578125, 25.96185302734375, 1.281182527542114257, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+198, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2192.160888671875, 185.14990234375, 26.65761947631835937, 5.6952972412109375, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+199, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2186.2958984375, 186.7872467041015625, 26.0157318115234375, 4.944226264953613281, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+200, 140094, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2191.77880859375, 202.4113311767578125, 26.23478317260742187, 2.348519325256347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Thornback (Area: -Unknown- - Difficulty: 38) (Auras: 276105 - -Unknown-)
(@CGUID+201, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2198.8330078125, 198.719970703125, 25.89671707153320312, 5.1717376708984375, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+202, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2192.1796875, 195.3985748291015625, 26.19250869750976562, 4.962487220764160156, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+203, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2198.791259765625, 200.0864715576171875, 25.87053298950195312, 3.071376562118530273, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+204, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2191.538330078125, 191.0492401123046875, 26.2287139892578125, 5.262605190277099609, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+205, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2205.9404296875, 205.1020660400390625, 24.74938011169433593, 5.337091922760009765, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+206, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2186.860107421875, 189.506500244140625, 26.1447296142578125, 4.12378549575805664, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+207, 140095, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2189.05224609375, 193.83892822265625, 26.20281600952148437, 1.068703532218933105, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Gorer (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+208, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2186.76708984375, 184.1453094482421875, 25.98879241943359375, 1.893336653709411621, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+209, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2186.278076171875, 194.25579833984375, 26.08211898803710937, 4.680131912231445312, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+210, 137955, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2190.42041015625, 175.0868988037109375, 26.20301246643066406, 3.498734951019287109, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Woodlands Recluse (Area: -Unknown- - Difficulty: 38)
(@CGUID+211, 132912, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2207.26904296875, 304.76739501953125, 22.25605010986328125, 4.588097095489501953, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+212, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2196.254638671875, 195.7846221923828125, 26.05050277709960937, 3.094432830810546875, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+213, 137955, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2188.2763671875, 155.8066558837890625, 24.68676567077636718, 1.302727341651916503, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Woodlands Recluse (Area: -Unknown- - Difficulty: 38)
(@CGUID+214, 132820, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2179.816162109375, 191.1242828369140625, 25.450042724609375, 1.512720584869384765, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mudsnout Piglet (Area: -Unknown- - Difficulty: 38)
(@CGUID+215, 151990, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2183.731689453125, 125.0701828002929687, 23.87052726745605468, 2.710169792175292968, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Honeykeeper (Area: -Unknown- - Difficulty: 38)
(@CGUID+216, 151989, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2156.419921875, 146.08160400390625, 23.27720069885253906, 0.744274079799652099, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Siftworm (Area: -Unknown- - Difficulty: 38)
(@CGUID+217, 151989, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2169.163330078125, 113.2010574340820312, 21.04217910766601562, 5.274366378784179687, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Siftworm (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+218, 151990, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2159.858154296875, 140.8097381591796875, 24.56210136413574218, 1.678835630416870117, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Honeykeeper (Area: -Unknown- - Difficulty: 38)
(@CGUID+219, 151990, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2163.15869140625, 182.571929931640625, 25.67154312133789062, 5.358517646789550781, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Honeykeeper (Area: -Unknown- - Difficulty: 38)
(@CGUID+220, 151989, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2160.768798828125, 196.783203125, 24.6110382080078125, 2.670658588409423828, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Siftworm (Area: -Unknown- - Difficulty: 38)
(@CGUID+221, 146118, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2171.6650390625, 92.7379302978515625, 20.68691253662109375, 1.39018869400024414, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Territorial Needleback (Area: -Unknown- - Difficulty: 38) (Auras: ) (possible waypoints or random movement)
(@CGUID+222, 150719, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2134.130615234375, 130.50799560546875, 38.325347900390625, 0.786800026893615722, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Detected Azerite Pocket (Area: -Unknown- - Difficulty: 38) (Auras: 292124 - -Unknown-)
(@CGUID+223, 151989, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2146.10595703125, 157.44976806640625, 23.84427261352539062, 2.612845897674560546, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Siftworm (Area: -Unknown- - Difficulty: 38)
(@CGUID+224, 151988, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2161.250732421875, 90.0020294189453125, 20.79474449157714843, 0.179444581270217895, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Masked Tanuki (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+225, 137947, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2199.92041015625, 270.893951416015625, 23.46750259399414062, 2.755124092102050781, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scavenging Rat (Area: -Unknown- - Difficulty: 38) (Auras: 278821 - -Unknown-, 273393 - -Unknown-)
(@CGUID+226, 131311, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2214.326171875, 151.6894683837890625, 25.24645233154296875, 4.606999874114990234, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Unleashed Azerite (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+227, 131311, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2213.06298828125, 156.917694091796875, 25.62799072265625, 4.606999874114990234, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Unleashed Azerite (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+228, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2193.375, 193.1875, 26.18639945983886718, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+229, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2193.173095703125, 192.9411468505859375, 26.19065093994140625, 4.702723026275634765, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-) (possible waypoints or random movement)
(@CGUID+230, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2186.80908203125, 197.7985992431640625, 26.33805084228515625, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+231, 147068, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2191.447265625, 285.20672607421875, 22.06256866455078125, 0.786800026893615722, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Fissure (Area: -Unknown- - Difficulty: 38) (Auras: 285629 - -Unknown-)
(@CGUID+232, 135962, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2197.51123046875, 285.025238037109375, 21.99163055419921875, 5.752021312713623046, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Crag Rager (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+233, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2356.0576171875, 59.56640625, 7.939185142517089843, 0.440452992916107177, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+234, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2331.4326171875, 16.056640625, 6.773783683776855468, 6.197420120239257812, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+235, 132912, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2331.4326171875, 16.056640625, 6.773783683776855468, 6.197420120239257812, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+236, 132912, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2280.8037109375, 36.158203125, 6.497756004333496093, 2.132980108261108398, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+237, 132912, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2356.0576171875, 59.56640625, 7.939185142517089843, 0.440452992916107177, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+238, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2280.8037109375, 36.158203125, 6.497756004333496093, 2.132980108261108398, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+239, 147948, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2189.91943359375, 155.1575469970703125, 24.51729202270507812, 4.606999874114990234, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Coagulated Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+240, 147948, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2204.524658203125, 158.1244659423828125, 25.83774566650390625, 4.606999874114990234, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Coagulated Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+241, 147938, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2208.951416015625, 147.0770721435546875, 24.661163330078125, 4.606999874114990234, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azergem Crystalback (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+242, 147936, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2175.7138671875, 57.93230819702148437, 21.34352874755859375, 0.368610411882400512, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azergem Shardback (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-)
(@CGUID+243, 146118, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2167.297607421875, 70.40749359130859375, 21.8152923583984375, 4.035830497741699218, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Territorial Needleback (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-)
(@CGUID+244, 146116, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2164.78173828125, 72.26032257080078125, 21.85170364379882812, 5.227405548095703125, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Needleback Forager (Area: -Unknown- - Difficulty: 38) (Auras: )
(@CGUID+245, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2182.297607421875, 90.66951751708984375, 20.72196197509765625, 1.685847043991088867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+246, 138511, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2250.80322265625, 34.77077102661132812, 11.07354068756103515, 1.470846533775329589, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azurescale (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 263998 - -Unknown-, 276105 - -Unknown-) (possible waypoints or random movement)
(@CGUID+247, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2173.8720703125, 77.8975677490234375, 21.010009765625, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+248, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2175.0830078125, 71.5625, 21.14570045471191406, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+249, 138497, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2265.652587890625, 50.05982208251953125, 10.31787109375, 2.521622657775878906, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478); -- Twilight Scalesworn (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-; 263998 - -Unknown-) (possible waypoints or random movement)

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+250, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2169.09423828125, 90.32430267333984375, 20.73438644409179687, 1.076047062873840332, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-) (possible waypoints or random movement)
(@CGUID+251, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2151.55908203125, 103.3802032470703125, 22.12286949157714843, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+252, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2167.47802734375, 74.63021087646484375, 21.78985977172851562, 0, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38) (possible waypoints or random movement)
(@CGUID+253, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2184.751953125, 53.18402862548828125, 21.34988975524902343, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+254, 138501, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2278.604736328125, 60.18902206420898437, 10.2021484375, 1.550025820732116699, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Twilight Whelp (Area: -Unknown- - Difficulty: 38) (Auras: 263998 - -Unknown-, 277614 - -Unknown-)
(@CGUID+255, 147948, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2200.447265625, 146.867828369140625, 24.47426986694335937, 4.606999874114990234, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Coagulated Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+256, 138501, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2280.147705078125, 40.47324371337890625, 7.607664108276367187, 0.986733913421630859, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Twilight Whelp (Area: -Unknown- - Difficulty: 38) (Auras: 263998 - -Unknown-, 277614 - -Unknown-)
(@CGUID+257, 138498, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2289.14599609375, 59.62852859497070312, 7.088731765747070312, 5.287001609802246093, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Twilight Drake (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 263998 - -Unknown-)
(@CGUID+258, 138500, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2327.256591796875, 13.41123104095458984, 6.593137741088867187, 2.562898635864257812, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Twilight Scalesister (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 263998 - -Unknown-) (possible waypoints or random movement)
(@CGUID+259, 138499, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2327.92236328125, 17.316253662109375, 6.648788928985595703, 4.765698432922363281, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Twilight Dragonkin (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 263998 - -Unknown-)
(@CGUID+260, 138516, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2332.5791015625, 23.75285911560058593, 6.978541374206542968, 0.718695104122161865, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Twilight Evolutionist (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 263998 - -Unknown-, 276105 - -Unknown-)
(@CGUID+261, 138499, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2331.368408203125, 17.82128334045410156, 6.769140243530273437, 5.94156503677368164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Twilight Dragonkin (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 263998 - -Unknown-)
(@CGUID+262, 138500, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2322.3935546875, 8.2236328125, 6.597121715545654296, 5.852326869964599609, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Twilight Scalesister (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 263998 - -Unknown-)
(@CGUID+263, 138501, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2328.35546875, 16.09860801696777343, 6.631481170654296875, 2.509507417678833007, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Twilight Whelp (Area: -Unknown- - Difficulty: 38) (Auras: 263998 - -Unknown-, 277614 - -Unknown-)
(@CGUID+264, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2241.78173828125, 33.2566070556640625, 12.642822265625, 4.292527198791503906, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+265, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2252.2099609375, 34.248046875, 10.85342121124267578, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+266, 138501, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2355.034423828125, 55.8632659912109375, 7.733140945434570312, 3.127240657806396484, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- Twilight Whelp (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-) (possible waypoints or random movement)
(@CGUID+267, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2382.568115234375, 69.7064971923828125, 9.101253509521484375, 0.64636772871017456, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+268, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2399.26708984375, -12.0776300430297851, 7.890748977661132812, 5.176036834716796875, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+269, 132925, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2403.177978515625, 1.397536039352416992, 6.986481189727783203, 2.894956111907958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scouted Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+270, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2325.89013671875, 12.58246707916259765, 6.560039520263671875, 1.32744908332824707, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+271, 138511, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2363.203857421875, 49.47933197021484375, 7.581630706787109375, 4.699122905731201171, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azurescale (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 276105 - -Unknown-)
(@CGUID+272, 140293, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2368.296142578125, 39.85287857055664062, 7.194643020629882812, 1.675724983215332031, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Snowfur Snarler (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-, 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+273, 140295, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2366.639404296875, 52.60114288330078125, 7.778566360473632812, 4.415749549865722656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Snowfur Pup (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+274, 136599, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2366.69091796875, 37.49404144287109375, 7.320116996765136718, 4.94174814224243164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mire Whelk (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+275, 138498, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2368.228759765625, 36.09007644653320312, 7.0670318603515625, 2.720829486846923828, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Twilight Drake (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+276, 47319, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2315.46240234375, 15.47753334045410156, 6.186703205108642578, 5.339441299438476562, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Leap Target (Area: -Unknown- - Difficulty: 38)
(@CGUID+277, 147936, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2393.655029296875, -3.52604198455810546, 6.895989894866943359, 2.721554040908813476, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azergem Shardback (Area: -Unknown- - Difficulty: 38)
(@CGUID+278, 139652, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2356.13134765625, -52.7619590759277343, 3.06768798828125, 3.889765739440917968, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Coldlight Coastrunner (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+279, 137951, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2386.35595703125, 46.435760498046875, 7.695428848266601562, 3.14215397834777832, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Skittish Squirrel (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+280, 140293, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2374.564453125, 50.323974609375, 7.785877704620361328, 1.970416784286499023, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Snowfur Snarler (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-, 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+281, 132923, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2359.40185546875, -56.5483970642089843, 2.727264404296875, 2.014453411102294921, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Coldlight Murloc (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+282, 138497, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2385.546142578125, 42.54733657836914062, 7.3736572265625, 3.053511381149291992, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Twilight Scalesworn (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+283, 138501, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2368.6357421875, 57.28091812133789062, 8.0341644287109375, 0.221570655703544616, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Twilight Whelp (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+284, 140295, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2370.879150390625, 38.60632705688476562, 7.163732528686523437, 5.136556148529052734, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Snowfur Pup (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+285, 147965, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2399.26708984375, -12.0776300430297851, 7.890748977661132812, 5.176036834716796875, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Volatile Azerite (Area: -Unknown- - Difficulty: 38) (Auras: 276105 - -Unknown-)
(@CGUID+286, 139652, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2351.872314453125, -58.0949516296386718, 2.7999267578125, 5.75691986083984375, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Coldlight Coastrunner (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+287, 140295, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2382.687744140625, 42.37018203735351562, 7.384660243988037109, 0.949867129325866699, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Snowfur Pup (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-, 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+288, 140295, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2377.63720703125, 53.01978683471679687, 7.97591400146484375, 3.040138959884643554, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Snowfur Pup (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+289, 136599, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2350.574951171875, -41.1076393127441406, 4.27581787109375, 1.443634986877441406, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mire Whelk (Area: -Unknown- - Difficulty: 38) (Auras: 278814 - -Unknown-, 273393 - -Unknown-)
(@CGUID+290, 137958, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2396.553955078125, 41.248260498046875, 7.685663223266601562, 4.732213020324707031, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Crimsonwood Kit (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+291, 132923, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2352.131103515625, -65.3100357055664062, 1.60760498046875, 4.525814056396484375, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Coldlight Murloc (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+292, 137946, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2349.825927734375, -65.581756591796875, 1.747375965118408203, 0.916351675987243652, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Sand Mouse (Area: -Unknown- - Difficulty: 38) (Auras: 278814 - -Unknown-, 273393 - -Unknown-)
(@CGUID+293, 147948, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2402.10693359375, -2.44442296028137207, 6.942203044891357421, 4.713112831115722656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Coagulated Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+294, 149331, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2403.177978515625, 1.397536039352416992, 6.986481189727783203, 2.894956111907958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Luminous Azerite (Area: -Unknown- - Difficulty: 38) (Auras: 276104 - -Unknown-)
(@CGUID+295, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2331.376220703125, 9.55515289306640625, 6.736635208129882812, 0.755870282649993896, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+296, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2315.708984375, 5.687066078186035156, 6.409743785858154296, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+297, 139655, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2373.43408203125, -58.2131233215332031, 3.090423583984375, 0.427546709775924682, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Coldlight Seer (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+298, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2335.580078125, 15.208984375, 6.772282600402832031, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+299, 147948, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2407.5830078125, -0.7083333134651184, 8.271549224853515625, 0.744188904762268066, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Coagulated Azerite (Area: -Unknown- - Difficulty: 38)
(@CGUID+300, 147933, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2404.8720703125, -3.59375, 7.186709880828857421, 5.525135993957519531, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Geoactive Azershard (Area: -Unknown- - Difficulty: 38)
(@CGUID+301, 137955, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2413.2529296875, 35.24132156372070312, 8.277418136596679687, 0.288063287734985351, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Woodlands Recluse (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+302, 137958, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2388.950927734375, 77.447906494140625, 9.909466743469238281, 0.888853013515472412, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Crimsonwood Kit (Area: -Unknown- - Difficulty: 38) (Auras: 268343 - -Unknown-, 273393 - -Unknown-)
(@CGUID+303, 139675, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2358.9404296875, -63.3348312377929687, 2.051497220993041992, 2.639126300811767578, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Fathom-Seeker (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 276105 - -Unknown-)
(@CGUID+304, 139655, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2364.708251953125, -67.990631103515625, 1.94683837890625, 3.886706113815307617, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Coldlight Seer (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+305, 137947, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2426.407958984375, 23.09375, 8.217557907104492187, 4.901865959167480468, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Scavenging Rat (Area: -Unknown- - Difficulty: 38)
(@CGUID+306, 137955, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2427.320068359375, 48.220489501953125, 9.717237472534179687, 2.155801057815551757, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Woodlands Recluse (Area: -Unknown- - Difficulty: 38)
(@CGUID+307, 147068, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2412.865966796875, 85.48291015625, 11.39629459381103515, 0.786800026893615722, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Fissure (Area: -Unknown- - Difficulty: 38) (Auras: 285629 - -Unknown-)
(@CGUID+308, 137958, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2414.56591796875, 82.7963104248046875, 11.36579036712646484, 0.309702992439270019, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Crimsonwood Kit (Area: -Unknown- - Difficulty: 38)
(@CGUID+309, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2370.064208984375, 54.87030410766601562, 7.9481353759765625, 3.832089424133300781, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+310, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2368.07080078125, 57.08343505859375, 8.012256622314453125, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)
(@CGUID+311, 140993, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2443.2470703125, 19.29165077209472656, 7.810313224792480468, 4.852015018463134765, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Darktunnel Ambusher (Area: -Unknown- - Difficulty: 38) (Auras: 244121 - -Unknown-)
(@CGUID+312, 151674, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2406.9150390625, 112.0886154174804687, 13.3514404296875, 1.924676299095153808, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stinkfur Hopling (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-, 273612 - -Unknown-, 273393 - -Unknown-)
(@CGUID+313, 151679, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2402.49951171875, 119.0674667358398437, 14.07820892333984375, 3.983285188674926757, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stinkfur Thumper (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-, 273612 - -Unknown-, 273393 - -Unknown-)
(@CGUID+314, 151674, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2396.314697265625, 121.529632568359375, 13.56680679321289062, 2.247346401214599609, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stinkfur Hopling (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-, 273612 - -Unknown-, 273393 - -Unknown-)
(@CGUID+315, 151674, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2398.00634765625, 121.2639617919921875, 13.8308868408203125, 1.602094650268554687, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stinkfur Hopling (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-, 273612 - -Unknown-, 273393 - -Unknown-)
(@CGUID+316, 146864, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2396.19384765625, 121.8920364379882812, 13.54514312744140625, 5.526306629180908203, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mistscorn Earthbinder (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-, 276104 - -Unknown-)
(@CGUID+317, 151676, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2401.59423828125, 120.1151275634765625, 13.77238273620605468, 6.254734039306640625, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stinkfur Hooligan (Area: -Unknown- - Difficulty: 38) (Auras: 273612 - -Unknown-, 273393 - -Unknown-)
(@CGUID+318, 151674, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2400.743896484375, 123.0035781860351562, 14.56963348388671875, 2.433283329010009765, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stinkfur Hopling (Area: -Unknown- - Difficulty: 38) (Auras: 273612 - -Unknown-, 273393 - -Unknown-)
(@CGUID+319, 137958, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2432.076904296875, 101.9105987548828125, 14.64375019073486328, 2.035965919494628906, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Crimsonwood Kit (Area: -Unknown- - Difficulty: 38)
(@CGUID+320, 151674, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2407.2568359375, 122.1633987426757812, 14.9560546875, 0.563455283641815185, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stinkfur Hopling (Area: -Unknown- - Difficulty: 38) (Auras: 273612 - -Unknown-, 273393 - -Unknown-)
(@CGUID+321, 146864, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2391.180908203125, 132.892059326171875, 13.2495126724243164, 0.197478681802749633, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mistscorn Earthbinder (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+322, 151674, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2409.02197265625, 123.0672607421875, 15.15344429016113281, 2.905495882034301757, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stinkfur Hopling (Area: -Unknown- - Difficulty: 38) (Auras: 276102 - -Unknown-, 273612 - -Unknown-, 273393 - -Unknown-)
(@CGUID+323, 146864, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2391.015869140625, 138.1617279052734375, 14.29862594604492187, 0.160329803824424743, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mistscorn Earthbinder (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+324, 151988, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2411.580078125, 136.7274017333984375, 17.5061492919921875, 2.18263411521911621, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Masked Tanuki (Area: -Unknown- - Difficulty: 38) (Auras: 273612 - -Unknown-, 273393 - -Unknown-)
(@CGUID+325, 146863, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2391.130615234375, 142.199066162109375, 14.72824478149414062, 4.567472457885742187, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mistscorn Ravager (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+326, 146863, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2395.5263671875, 138.9737701416015625, 16.60757827758789062, 5.895481586456298828, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mistscorn Ravager (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+327, 146863, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2400.42236328125, 145.7800445556640625, 17.74275016784667968, 1.890486478805541992, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Mistscorn Ravager (Area: -Unknown- - Difficulty: 38) (Auras: 277614 - -Unknown-)
(@CGUID+328, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2370.238037109375, 59.19617843627929687, 8.210010528564453125, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+329, 151988, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2415.846923828125, 139.902801513671875, 17.74308967590332031, 5.718391895294189453, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Masked Tanuki (Area: -Unknown- - Difficulty: 38) (Auras: 273612 - -Unknown-, 273393 - -Unknown-)
(@CGUID+330, 151990, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2404.248046875, 147.8610992431640625, 19.68120002746582031, 5.606976032257080078, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Honeykeeper (Area: -Unknown- - Difficulty: 38) (Auras: 273612 - -Unknown-, 273393 - -Unknown-)
(@CGUID+331, 151676, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2400.272216796875, 149.943878173828125, 17.73608016967773437, 0.92341083288192749, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stinkfur Hooligan (Area: -Unknown- - Difficulty: 38) (Auras: 273612 - -Unknown-, 273393 - -Unknown-)
(@CGUID+332, 12999, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2366.2626953125, 54.595703125, 7.911120414733886718, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- World Invisible Trigger (Area: -Unknown- - Difficulty: 38)
(@CGUID+333, 135182, 1907, 9540, 9540, '38', '0', 0, 0, 0, 2389.111572265625, 67.2198333740234375, 9.163177490234375, 4.24571847915649414, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- Azerite Energy (Area: -Unknown- - Difficulty: 38) (Auras: 265702 - -Unknown-)

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+639;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
-- (@CGUID+0, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- -Unknown-
-- (@CGUID+1, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+2, 0, 0, 0, 1, 0, 0, 0, 0, '273393'), -- Sand Mouse - 273393 - -Unknown-
(@CGUID+3, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Azerite Extractor
(@CGUID+4, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Nightscale Screecher
(@CGUID+5, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Spineshell Snapper
(@CGUID+6, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Spineshell Turtle
(@CGUID+7, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mire Whelk
(@CGUID+8, 0, 0, 0, 1, 0, 0, 0, 0, '273393'), -- Beach Scuttler - 273393 - -Unknown-
(@CGUID+9, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+10, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Azerite Extractor
(@CGUID+11, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Spineshell Snapper
(@CGUID+12, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Sailor
(@CGUID+13, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Spineshell Turtle
(@CGUID+14, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Spineshell Turtle
(@CGUID+15, 0, 0, 0, 1, 0, 0, 0, 0, '273393'), -- Sand Mouse - 273393 - -Unknown-
(@CGUID+16, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Spineshell Snapper
(@CGUID+17, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Nightscale Coilfang - 276102 - -Unknown-
(@CGUID+18, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Spineshell Turtle
(@CGUID+19, 0, 0, 0, 1, 0, 0, 0, 0, '296740 296739'), -- A.T.O.M.I.K. Mk. II - 296740 - -Unknown-, 296739 - -Unknown-
(@CGUID+20, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Captain Rez'okun
(@CGUID+21, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Spineshell Turtle
(@CGUID+22, 0, 0, 0, 1, 0, 0, 0, 0, '273393'), -- Sand Stinger - 273393 - -Unknown-
(@CGUID+23, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Spineshell Snapper
(@CGUID+24, 0, 0, 0, 1, 0, 0, 0, 0, '265445'), -- Spineshell Snapjaw - 265445 - -Unknown-
(@CGUID+25, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Elder Spineshell - 276102 - -Unknown-
(@CGUID+26, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Stick-In-The-Mud
(@CGUID+27, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+28, 0, 0, 0, 1, 0, 0, 0, 0, '273393'), -- Sand Mouse - 273393 - -Unknown-
(@CGUID+29, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Spineshell Snapper
(@CGUID+30, 0, 0, 0, 1, 0, 0, 0, 0, '273393'), -- Nightscale Hatchling - 273393 - -Unknown-
(@CGUID+31, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Azerite Extractor
(@CGUID+32, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Nightscale Screecher
(@CGUID+33, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Waterstrider
(@CGUID+34, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Sailor
(@CGUID+35, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Spineshell Snapper
(@CGUID+36, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Sailor
(@CGUID+37, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Waterstrider
(@CGUID+38, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Nightscale Screecher
(@CGUID+39, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Spineshell Snapper
(@CGUID+40, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Coastal Fathomjaw
(@CGUID+41, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Nightscale Coilfang
(@CGUID+42, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Sailor
(@CGUID+43, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Spineshell Snapper
(@CGUID+44, 0, 0, 0, 1, 0, 0, 0, 0, '273393'), -- Nightscale Screecher - 273393 - -Unknown-
(@CGUID+45, 0, 0, 0, 1, 0, 0, 0, 0, '276104'), -- Nightscale Coilfang - 276104 - -Unknown-
(@CGUID+46, 0, 0, 0, 1, 0, 0, 0, 0, '263998'), -- Amathet Champion - 263998 - -Unknown-
(@CGUID+47, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- Amathet Priest - 277614 - -Unknown-, 263998 - -Unknown-
(@CGUID+48, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998 276102'), -- Brother Maat - 277614 - -Unknown-, 263998 - -Unknown-, 276102 - -Unknown-
(@CGUID+49, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- Brother Maat - 277614 - -Unknown-, 263998 - -Unknown-
(@CGUID+50, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- Amathet Priest - 277614 - -Unknown-, 263998 - -Unknown-
(@CGUID+51, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- Amathet Priest - 277614 - -Unknown-, 263998 - -Unknown-
(@CGUID+52, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- Commander Husan - 277614 - -Unknown-, 263998 - -Unknown-
(@CGUID+53, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- Amathet Priest - 277614 - -Unknown-, 263998 - -Unknown-
(@CGUID+54, 0, 0, 0, 1, 0, 0, 0, 0, '273393'), -- Nightscale Hatchling - 273393 - -Unknown-
(@CGUID+55, 0, 0, 0, 1, 0, 0, 0, 0, '276104'), -- Nightscale Coilfang - 276104 - -Unknown-
(@CGUID+56, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Nightscale Coilfang - 276102 - -Unknown-
(@CGUID+57, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Sand Stinger
(@CGUID+58, 0, 0, 0, 1, 0, 0, 0, 0, '273393'), -- Nightscale Screecher - 273393 - -Unknown-
(@CGUID+59, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Sand Stinger
(@CGUID+60, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+61, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+62, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+63, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Nightscale Screecher
(@CGUID+64, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+65, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+66, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+67, 0, 0, 0, 1, 0, 0, 0, 0, '276104 276102'), -- Nightscale Coilfang - 276104 - -Unknown-, 276102 - -Unknown-
(@CGUID+68, 0, 0, 0, 1, 0, 0, 0, 0, '276104'), -- Nightscale Coilfang - 276104 - -Unknown-
(@CGUID+69, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Nightscale Screecher
(@CGUID+70, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Nightscale Screecher
(@CGUID+71, 0, 0, 50331648, 1, 0, 0, 0, 0, '268343 273393'), -- Honeykeeper - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+72, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+73, 0, 0, 0, 1, 0, 0, 0, 0, '292124'), -- Detected Azerite Pocket - 292124 - -Unknown-
(@CGUID+74, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+75, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+76, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+77, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+78, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+79, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scavenging Rat
(@CGUID+80, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+81, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+82, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+83, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Southsea Brawler - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+84, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Mire Whelk - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+85, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+86, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+87, 0, 0, 0, 1, 0, 0, 0, 0, '278814 273393'), -- Stinkfur Hooligan - 278814 - -Unknown-, 273393 - -Unknown-
(@CGUID+88, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+89, 0, 0, 0, 1, 0, 0, 0, 0, '278814 273393'), -- Stinkfur Hooligan - 278814 - -Unknown-, 273393 - -Unknown-
(@CGUID+90, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+91, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+92, 0, 0, 0, 1, 0, 0, 0, 0, '278814 273393'), -- Stinkfur Thumper - 278814 - -Unknown-, 273393 - -Unknown-
(@CGUID+93, 0, 0, 0, 1, 0, 0, 0, 0, '278814 273393'), -- Orangetooth - 278814 - -Unknown-, 273393 - -Unknown-
(@CGUID+94, 0, 0, 0, 1, 0, 0, 0, 0, '278814 273393'), -- Stinkfur Hooligan - 278814 - -Unknown-, 273393 - -Unknown-
(@CGUID+95, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+96, 0, 0, 0, 1, 0, 0, 0, 0, '276104'), -- Annie Two-Pistols - 276104 - -Unknown-
(@CGUID+97, 0, 0, 0, 1, 0, 0, 0, 0, '276102 255657'), -- Southsea Gambler - 276102 - -Unknown-, 255657 - -Unknown-
(@CGUID+98, 0, 0, 0, 1, 0, 0, 0, 0, '276102 255657'), -- Southsea Gambler - 276102 - -Unknown-, 255657 - -Unknown-
(@CGUID+99, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Sand Mouse
(@CGUID+100, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Masked Tanuki - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+101, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Beach Scuttler
(@CGUID+102, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mire Whelk
(@CGUID+103, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rustpelt Snarler
(@CGUID+104, 0, 0, 0, 1, 0, 0, 0, 0, '273393'), -- Masked Tanuki - 273393 - -Unknown-
(@CGUID+105, 0, 0, 0, 1, 0, 0, 0, 0, '276104'), -- Rustpelt Alpha - 276104 - -Unknown-
(@CGUID+106, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rustpelt Pup
(@CGUID+107, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rustpelt Pup
(@CGUID+108, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+109, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+110, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Masked Tanuki - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+111, 0, 0, 0, 1, 0, 0, 0, 0, '285629'), -- Azerite Fissure - 285629 - -Unknown-
(@CGUID+112, 0, 0, 0, 1, 0, 0, 0, 0, '276104'), -- Sharptooth - 276104 - -Unknown-
(@CGUID+113, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+114, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+115, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Agitated Azerite - 276102 - -Unknown-
(@CGUID+116, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Agitated Azershard
(@CGUID+117, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Agitated Azershard
(@CGUID+118, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Agitated Azerite
(@CGUID+119, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Sylvester
(@CGUID+120, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rustpelt Pup
(@CGUID+121, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Rustpelt Snarler - 276102 - -Unknown-
(@CGUID+122, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rustpelt Pup
(@CGUID+123, 0, 0, 0, 1, 0, 0, 0, 0, '276104 276105'), -- Rustpelt Alpha - 276104 - -Unknown-, 276105 - -Unknown-
(@CGUID+124, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Siftworm - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+125, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Woodlands Recluse - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+126, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+127, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+128, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+129, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+130, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Unleashed Azerite
(@CGUID+131, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Congealed Azerite
(@CGUID+132, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Unleashed Azerite
(@CGUID+133, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Congealed Azerite
(@CGUID+134, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Congealed Azerite
(@CGUID+135, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Congealed Azerite
(@CGUID+136, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+137, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+138, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+139, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+140, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+141, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+142, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Nightscale Screecher - 276102 - -Unknown-
(@CGUID+143, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Nightscale Screecher - 276102 - -Unknown-
(@CGUID+144, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Nightscale Screecher - 276102 - -Unknown-
(@CGUID+145, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Nightscale Wind Serpent - 276102 - -Unknown-
(@CGUID+146, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Nightscale Wind Serpent - 276102 - -Unknown-
(@CGUID+147, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Siftworm
(@CGUID+148, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Needleback Forager
(@CGUID+149, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Masked Tanuki
(@CGUID+150, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Skittish Squirrel
(@CGUID+151, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Siftworm
(@CGUID+152, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Azurespine - 276102 - -Unknown-
(@CGUID+153, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Needleback Forager
(@CGUID+154, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Zian-Ti Spirit
(@CGUID+155, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Masked Tanuki
(@CGUID+156, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Crimsonwood Kit
(@CGUID+157, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Siftworm
(@CGUID+158, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Snowfur Snarler - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+159, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Snowfur Alpha - 276102 - -Unknown-
(@CGUID+160, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Snowfur Pup - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+161, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Skittish Squirrel - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+162, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Snowfur Pup - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+163, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Zian-Ti Quilen
(@CGUID+164, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Siftworm
(@CGUID+165, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Crimsonwood Kit
(@CGUID+166, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mire Whelk
(@CGUID+167, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scavenging Rat
(@CGUID+168, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Honeykeeper
(@CGUID+169, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scavenging Rat
(@CGUID+170, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Stinkfur Hopling - 276102 - -Unknown-
(@CGUID+171, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Stinkfur Hopling - 276102 - -Unknown-
(@CGUID+172, 0, 0, 0, 1, 0, 0, 0, 0, '276104 276105'), -- Snowfur Alpha - 276104 - -Unknown-, 276105 - -Unknown-
(@CGUID+173, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+174, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Torn Spirit
(@CGUID+175, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scavenging Rat
(@CGUID+176, 0, 0, 0, 1, 0, 0, 0, 0, '273612 273393'), -- Stinkfur Hopling - 273612 - -Unknown-, 273393 - -Unknown-
(@CGUID+177, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Siftworm
(@CGUID+178, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+179, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+180, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Skittish Squirrel
(@CGUID+181, 0, 0, 0, 1, 0, 0, 0, 0, '285806'), -- Azerite Extractor - 285806 - -Unknown-
(@CGUID+182, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Masked Tanuki
(@CGUID+183, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Siftworm
(@CGUID+184, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+185, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+186, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+187, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+188, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+189, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+190, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+191, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Honeykeeper
(@CGUID+192, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+193, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Honeykeeper
(@CGUID+194, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+195, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+196, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+197, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+198, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+199, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+200, 0, 0, 0, 1, 0, 0, 0, 0, '276105'), -- Mudsnout Thornback - 276105 - -Unknown-
(@CGUID+201, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+202, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+203, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+204, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+205, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+206, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+207, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Gorer
(@CGUID+208, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+209, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+210, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Woodlands Recluse
(@CGUID+211, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+212, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+213, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Woodlands Recluse
(@CGUID+214, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Mudsnout Piglet
(@CGUID+215, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Honeykeeper
(@CGUID+216, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Siftworm
(@CGUID+217, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Siftworm
(@CGUID+218, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Honeykeeper
(@CGUID+219, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Honeykeeper
(@CGUID+220, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Siftworm
(@CGUID+221, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Territorial Needleback
(@CGUID+222, 0, 0, 0, 1, 0, 0, 0, 0, '292124'), -- Detected Azerite Pocket - 292124 - -Unknown-
(@CGUID+223, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Siftworm
(@CGUID+224, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Masked Tanuki
(@CGUID+225, 0, 0, 0, 1, 0, 0, 0, 0, '278821 273393'), -- Scavenging Rat - 278821 - -Unknown-, 273393 - -Unknown-
(@CGUID+226, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Unleashed Azerite
(@CGUID+227, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Unleashed Azerite
(@CGUID+228, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+229, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+230, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+231, 0, 0, 0, 1, 0, 0, 0, 0, '285629'), -- Azerite Fissure - 285629 - -Unknown-
(@CGUID+232, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Crag Rager - 277614 - -Unknown-
(@CGUID+233, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+234, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+235, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+236, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+237, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+238, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+239, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Coagulated Azerite
(@CGUID+240, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Coagulated Azerite
(@CGUID+241, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Azergem Crystalback
(@CGUID+242, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Azergem Shardback - 276102 - -Unknown-
(@CGUID+243, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- Territorial Needleback - 276102 - -Unknown-
(@CGUID+244, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Needleback Forager
(@CGUID+245, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+246, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998 276105'), -- Azurescale - 277614 - -Unknown-, 263998 - -Unknown-, 276105 - -Unknown-
(@CGUID+247, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+248, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+249, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'); -- Twilight Scalesworn - 277614 - -Unknown-; 263998 - -Unknown-

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+250, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+251, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+252, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+253, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+254, 0, 0, 0, 1, 0, 0, 0, 0, '263998 277614'), -- Twilight Whelp - 263998 - -Unknown-, 277614 - -Unknown-
(@CGUID+255, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Coagulated Azerite
(@CGUID+256, 0, 0, 0, 1, 0, 0, 0, 0, '263998 277614'), -- Twilight Whelp - 263998 - -Unknown-, 277614 - -Unknown-
(@CGUID+257, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- Twilight Drake - 277614 - -Unknown-, 263998 - -Unknown-
(@CGUID+258, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- Twilight Scalesister - 277614 - -Unknown-, 263998 - -Unknown-
(@CGUID+259, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- Twilight Dragonkin - 277614 - -Unknown-, 263998 - -Unknown-
(@CGUID+260, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998 276105'), -- Twilight Evolutionist - 277614 - -Unknown-, 263998 - -Unknown-, 276105 - -Unknown-
(@CGUID+261, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- Twilight Dragonkin - 277614 - -Unknown-, 263998 - -Unknown-
(@CGUID+262, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- Twilight Scalesister - 277614 - -Unknown-, 263998 - -Unknown-
(@CGUID+263, 0, 0, 0, 1, 0, 0, 0, 0, '263998 277614'), -- Twilight Whelp - 263998 - -Unknown-, 277614 - -Unknown-
(@CGUID+264, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+265, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+266, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Twilight Whelp - 277614 - -Unknown-
(@CGUID+267, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+268, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+269, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scouted Azerite
(@CGUID+270, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+271, 0, 0, 0, 1, 0, 0, 0, 0, '277614 276105'), -- Azurescale - 277614 - -Unknown-, 276105 - -Unknown-
(@CGUID+272, 0, 0, 0, 1, 0, 0, 0, 0, '276102 268343 273393'), -- Snowfur Snarler - 276102 - -Unknown-, 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+273, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Snowfur Pup - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+274, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Mire Whelk - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+275, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Twilight Drake - 277614 - -Unknown-
(@CGUID+276, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Leap Target
(@CGUID+277, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Azergem Shardback
(@CGUID+278, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Coldlight Coastrunner - 277614 - -Unknown-
(@CGUID+279, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Skittish Squirrel - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+280, 0, 0, 0, 1, 0, 0, 0, 0, '276102 268343 273393'), -- Snowfur Snarler - 276102 - -Unknown-, 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+281, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Coldlight Murloc - 277614 - -Unknown-
(@CGUID+282, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Twilight Scalesworn - 277614 - -Unknown-
(@CGUID+283, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Twilight Whelp - 277614 - -Unknown-
(@CGUID+284, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Snowfur Pup - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+285, 0, 0, 0, 1, 0, 0, 0, 0, '276105'), -- Volatile Azerite - 276105 - -Unknown-
(@CGUID+286, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Coldlight Coastrunner - 277614 - -Unknown-
(@CGUID+287, 0, 0, 0, 1, 0, 0, 0, 0, '276102 268343 273393'), -- Snowfur Pup - 276102 - -Unknown-, 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+288, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Snowfur Pup - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+289, 0, 0, 0, 1, 0, 0, 0, 0, '278814 273393'), -- Mire Whelk - 278814 - -Unknown-, 273393 - -Unknown-
(@CGUID+290, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Crimsonwood Kit - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+291, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Coldlight Murloc - 277614 - -Unknown-
(@CGUID+292, 0, 0, 0, 1, 0, 0, 0, 0, '278814 273393'), -- Sand Mouse - 278814 - -Unknown-, 273393 - -Unknown-
(@CGUID+293, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Coagulated Azerite
(@CGUID+294, 0, 0, 0, 1, 0, 0, 0, 0, '276104'), -- Luminous Azerite - 276104 - -Unknown-
(@CGUID+295, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+296, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+297, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Coldlight Seer - 277614 - -Unknown-
(@CGUID+298, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+299, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Coagulated Azerite
(@CGUID+300, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Geoactive Azershard
(@CGUID+301, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Woodlands Recluse - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+302, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- Crimsonwood Kit - 268343 - -Unknown-, 273393 - -Unknown-
(@CGUID+303, 0, 0, 0, 1, 0, 0, 0, 0, '277614 276105'), -- Fathom-Seeker - 277614 - -Unknown-, 276105 - -Unknown-
(@CGUID+304, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Coldlight Seer - 277614 - -Unknown-
(@CGUID+305, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scavenging Rat
(@CGUID+306, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Woodlands Recluse
(@CGUID+307, 0, 0, 0, 1, 0, 0, 0, 0, '285629'), -- Azerite Fissure - 285629 - -Unknown-
(@CGUID+308, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Crimsonwood Kit
(@CGUID+309, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+310, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- Azerite Energy - 265702 - -Unknown-
(@CGUID+311, 0, 0, 0, 1, 0, 0, 0, 0, '244121'), -- Darktunnel Ambusher - 244121 - -Unknown-
(@CGUID+312, 0, 0, 0, 1, 0, 0, 0, 0, '276102 273612 273393'), -- Stinkfur Hopling - 276102 - -Unknown-, 273612 - -Unknown-, 273393 - -Unknown-
(@CGUID+313, 0, 0, 0, 1, 0, 0, 0, 0, '276102 273612 273393'), -- Stinkfur Thumper - 276102 - -Unknown-, 273612 - -Unknown-, 273393 - -Unknown-
(@CGUID+314, 0, 0, 0, 1, 0, 0, 0, 0, '276102 273612 273393'), -- Stinkfur Hopling - 276102 - -Unknown-, 273612 - -Unknown-, 273393 - -Unknown-
(@CGUID+315, 0, 0, 0, 1, 0, 0, 0, 0, '276102 273612 273393'), -- Stinkfur Hopling - 276102 - -Unknown-, 273612 - -Unknown-, 273393 - -Unknown-
(@CGUID+316, 0, 0, 0, 1, 0, 0, 0, 0, '277614 276104'), -- Mistscorn Earthbinder - 277614 - -Unknown-, 276104 - -Unknown-
(@CGUID+317, 0, 0, 0, 1, 0, 0, 0, 0, '273612 273393'), -- Stinkfur Hooligan - 273612 - -Unknown-, 273393 - -Unknown-
(@CGUID+318, 0, 0, 0, 1, 0, 0, 0, 0, '273612 273393'), -- Stinkfur Hopling - 273612 - -Unknown-, 273393 - -Unknown-
(@CGUID+319, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Crimsonwood Kit
(@CGUID+320, 0, 0, 0, 1, 0, 0, 0, 0, '273612 273393'), -- Stinkfur Hopling - 273612 - -Unknown-, 273393 - -Unknown-
(@CGUID+321, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Mistscorn Earthbinder - 277614 - -Unknown-
(@CGUID+322, 0, 0, 0, 1, 0, 0, 0, 0, '276102 273612 273393'), -- Stinkfur Hopling - 276102 - -Unknown-, 273612 - -Unknown-, 273393 - -Unknown-
(@CGUID+323, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Mistscorn Earthbinder - 277614 - -Unknown-
(@CGUID+324, 0, 0, 0, 1, 0, 0, 0, 0, '273612 273393'), -- Masked Tanuki - 273612 - -Unknown-, 273393 - -Unknown-
(@CGUID+325, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Mistscorn Ravager - 277614 - -Unknown-
(@CGUID+326, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Mistscorn Ravager - 277614 - -Unknown-
(@CGUID+327, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- Mistscorn Ravager - 277614 - -Unknown-
(@CGUID+328, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+329, 0, 0, 0, 1, 0, 0, 0, 0, '273612 273393'), -- Masked Tanuki - 273612 - -Unknown-, 273393 - -Unknown-
(@CGUID+330, 0, 0, 50331648, 1, 0, 0, 0, 0, '273612 273393'), -- Honeykeeper - 273612 - -Unknown-, 273393 - -Unknown-
(@CGUID+331, 0, 0, 0, 1, 0, 0, 0, 0, '273612 273393'), -- Stinkfur Hooligan - 273612 - -Unknown-, 273393 - -Unknown-
(@CGUID+332, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- World Invisible Trigger
(@CGUID+333, 0, 0, 0, 1, 0, 0, 0, 0, '265702'); -- Azerite Energy - 265702 - -Unknown-

SET @OGUID=100488;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+239;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
-- (@OGUID+0, 179944, 1642, 0, 0, '0', '', 0, -2004.8037109375, 948.89703369140625, 5.932227134704589843, 4.823257923126220703, 0, 0, -0.66684246063232421, 0.745198667049407958, 7200, 100, 1, 31478), -- Meeting Stone Summoning Portal (Area: -Unknown- - Difficulty: 1) - !!! might be temporary spawn !!!
(@OGUID+1, 286963, 1907, 9540, 9540, '38', '0', 0, 2230.780029296875, -140.727996826171875, 0, 0.67256098985671997, 0, 0, 0.329977035522460937, 0.943988978862762451, 7200, 0, 1, 31478), -- Breath of Pa'ku (Area: -Unknown- - Difficulty: 38)
(@OGUID+2, 273297, 1907, 9540, 9540, '38', '64938', 0, 2258.655029296875, -72.8090286254882812, 9.72133636474609375, 0.287267297506332397, -0.16614198684692382, 0.071720123291015625, 0.15546417236328125, 0.97112506628036499, 7200, 255, 0, 31478), -- Azerite Chunk (Area: -Unknown- - Difficulty: 38)
(@OGUID+3, 273285, 1907, 9540, 9540, '38', '64938', 0, 2190.39892578125, -72.1376495361328125, 9.363935470581054687, 0.260886311531066894, 0, 0, 0.130072593688964843, 0.991504490375518798, 7200, 255, 1, 31478), -- Turtle Egg (Area: -Unknown- - Difficulty: 38)
(@OGUID+4, 289359, 1907, 9540, 9540, '38', '64938', 0, 2254.364990234375, -68.2130966186523437, 9.069950103759765625, 3.103199958801269531, 0.040767669677734375, 0.077654838562011718, 0.9960174560546875, 0.016029834747314453, 7200, 255, 0, 31478), -- Azerite Chunk (Area: -Unknown- - Difficulty: 38)
(@OGUID+5, 273285, 1907, 9540, 9540, '38', '64938', 0, 2189.06201171875, -89.0618515014648437, 8.618207931518554687, 1.901903033256530761, 0, 0, 0.813968658447265625, 0.580908775329589843, 7200, 255, 1, 31478), -- Turtle Egg (Area: -Unknown- - Difficulty: 38)
(@OGUID+6, 303141, 1907, 9540, 9540, '38', '64938', 0, 2245.7265625, -143.41778564453125, 6.283229827880859375, 5.350041389465332031, 0, 0, -0.44982719421386718, 0.893115580081939697, 7200, 100, 0, 31478), -- Doodad_8TR_Zandalari_ShipMedTransport01_Gangplank_IslandGate002 (Area: -Unknown- - Difficulty: 38)
(@OGUID+7, 289356, 1907, 9540, 9540, '38', '64938', 0, 2186.931884765625, -80.5886306762695312, 8.8908843994140625, 5.666028976440429687, 0.035668849945068359, 0.022521018981933593, -0.30426979064941406, 0.951651394367218017, 7200, 255, 0, 31478), -- Azerite Shard (Area: -Unknown- - Difficulty: 38)
-- (@OGUID+8, 326056, 1907, 9540, 9540, '38', '64938', 0, 2193.4013671875, -93.794281005859375, 9.178638458251953125, 0.67256098985671997, 0, 0, 0.329977989196777343, 0.943988621234893798, 7200, 100, 0, 31478), -- Collision (Area: -Unknown- - Difficulty: 38) - !!! might be temporary spawn !!!
(@OGUID+9, 326009, 1907, 9540, 9540, '38', '64938', 0, 2246.89404296875, -57.24560546875, 8.903729438781738281, 0.786800026893615722, 0, 0, -0.07133960723876953, 0.997452080249786376, 7200, 100, 0, 31478), -- Robotic Gizmo (Area: -Unknown- - Difficulty: 38)
-- (@OGUID+10, 326056, 1907, 9540, 9540, '38', '64938', 0, 2193.4013671875, -93.794281005859375, 9.178638458251953125, 0.67256098985671997, 0, 0, 0.329977989196777343, 0.943988621234893798, 7200, 100, 0, 31478), -- Collision (Area: -Unknown- - Difficulty: 38) - !!! might be temporary spawn !!!
(@OGUID+11, 273285, 1907, 9540, 9540, '38', '64938', 0, 2174.01708984375, -79.3030166625976562, 8.664351463317871093, 4.358087062835693359, 0, 0, -0.82065105438232421, 0.571429610252380371, 7200, 255, 1, 31478), -- Turtle Egg (Area: -Unknown- - Difficulty: 38)
(@OGUID+12, 272644, 1907, 9540, 9540, '38', '64938', 0, 2169.201904296875, -77.982513427734375, 8.608125686645507812, 0.149076893925666809, 0.040452957153320312, -0.00057125091552734, 0.074552536010742187, 0.996396064758300781, 7200, 255, 0, 31478), -- Altar of the Sea (Area: -Unknown- - Difficulty: 38)
(@OGUID+13, 273285, 1907, 9540, 9540, '38', '64938', 0, 2190.097900390625, -75.5148773193359375, 8.993563652038574218, 3.399244070053100585, -0.02575063705444335, 0.03339385986328125, -0.99093055725097656, 0.127586781978607177, 7200, 255, 1, 31478), -- Turtle Egg (Area: -Unknown- - Difficulty: 38)
(@OGUID+14, 273285, 1907, 9540, 9540, '38', '64938', 0, 2200.368896484375, -98.7021865844726562, 8.62567138671875, 2.149651050567626953, 0, 0, 0.879507064819335937, 0.47588580846786499, 7200, 255, 1, 31478), -- Turtle Egg (Area: -Unknown- - Difficulty: 38)
(@OGUID+15, 273285, 1907, 9540, 9540, '38', '64938', 0, 2196.66796875, -105.61920166015625, 8.552806854248046875, 6.083334922790527343, 0.000545024871826171, -0.00543594360351562, -0.09975147247314453, 0.994997382164001464, 7200, 255, 1, 31478), -- Turtle Egg (Area: -Unknown- - Difficulty: 38)
(@OGUID+16, 303140, 1907, 9540, 9540, '38', '64938', 0, 2231.501708984375, -125.556915283203125, 6.283229827880859375, 2.260811090469360351, 0, 0, 0.904584884643554687, 0.426293522119522094, 7200, 100, 0, 31478), -- Doodad_8TR_Zandalari_ShipMedTransport01_Gangplank_IslandGate001 (Area: -Unknown- - Difficulty: 38)
-- (@OGUID+17, 326056, 1907, 9540, 9540, '38', '64938', 0, 2193.4013671875, -93.794281005859375, 9.178638458251953125, 0.67256098985671997, 0, 0, 0.329977989196777343, 0.943988621234893798, 7200, 100, 0, 31478), -- Collision (Area: -Unknown- - Difficulty: 38) - !!! might be temporary spawn !!!
(@OGUID+18, 289359, 1907, 9540, 9540, '38', '64938', 0, 2179.447021484375, -77.679901123046875, 9.000028610229492187, 3.198546886444091796, -0.00487518310546875, 0.055932998657226562, -0.99802303314208984, 0.028244443237781524, 7200, 255, 0, 31478), -- Azerite Chunk (Area: -Unknown- - Difficulty: 38)
(@OGUID+19, 299039, 1907, 9540, 9540, '38', '64938', 0, 2242.528076171875, -140.456588745117187, 6.291150093078613281, 5.372581005096435546, 0, 0, -0.43973350524902343, 0.898128271102905273, 7200, 100, 1, 31478), -- Azerite Detector (Area: -Unknown- - Difficulty: 38)
(@OGUID+20, 273285, 1907, 9540, 9540, '38', '64938', 0, 2192.571044921875, -109.309303283691406, 10.21792030334472656, 4.607166767120361328, 0, 0, -0.74331188201904296, 0.668945074081420898, 7200, 255, 1, 31478), -- Turtle Egg (Area: -Unknown- - Difficulty: 38)
(@OGUID+21, 273285, 1907, 9540, 9540, '38', '64938', 0, 2200.10791015625, -95.6192398071289062, 8.618785858154296875, 5.830798149108886718, 0, 0, -0.22426986694335937, 0.974527060985565185, 7200, 255, 1, 31478), -- Turtle Egg (Area: -Unknown- - Difficulty: 38)
(@OGUID+22, 297070, 1907, 9540, 9540, '38', '0', 0, 2234.81005859375, -47.5145988464355468, 9.123060226440429687, 0.145924001932144165, 0, 0, 0.072896957397460937, 0.997339487075805664, 7200, 100, 1, 31478), -- Portal (Area: -Unknown- - Difficulty: 38)
(@OGUID+23, 326009, 1907, 9540, 9540, '38', '0', 0, 2171.9150390625, 52.47426605224609375, 21.86100387573242187, 0.786800026893615722, 0, 0, -0.07133960723876953, 0.997452080249786376, 7200, 100, 0, 31478), -- Robotic Gizmo (Area: -Unknown- - Difficulty: 38)
(@OGUID+24, 296167, 1907, 9540, 9540, '38', '0', 0, 2179.830078125, -31.525390625, 33.26514816284179687, 3.461527585983276367, 0, 0, -0.98723220825195312, 0.159287676215171813, 7200, 100, 1, 31478), -- Tol'vir Cache (Area: -Unknown- - Difficulty: 38)
(@OGUID+25, 326160, 1907, 9540, 9540, '38', '0', 0, 2180.509765625, -28.833984375, 32.84382247924804687, 3.461527585983276367, 0, 0, -0.98723220825195312, 0.159287676215171813, 7200, 100, 1, 31478), -- Lightcrystal (Area: -Unknown- - Difficulty: 38)
(@OGUID+26, 289359, 1907, 9540, 9540, '38', '0', 0, 2261.44091796875, -21.5669097900390625, 8.038168907165527343, 6.186028003692626953, 0.01152801513671875, 0.065565109252929687, -0.04900264739990234, 0.996577680110931396, 7200, 255, 0, 31478), -- Azerite Chunk (Area: -Unknown- - Difficulty: 38)
(@OGUID+27, 273297, 1907, 9540, 9540, '38', '0', 0, 2264.511962890625, -13.9548597335815429, 8.677556037902832031, 2.265067100524902343, 0.035228729248046875, -0.13365936279296875, 0.892728805541992187, 0.428869903087615966, 7200, 255, 0, 31478), -- Azerite Chunk (Area: -Unknown- - Difficulty: 38)
(@OGUID+28, 293703, 1907, 9540, 9540, '38', '0', 0, 2320.751953125, -41.1666717529296875, 6.951955795288085937, 3.675899982452392578, 0, 0, -0.96452617645263671, 0.263987272977828979, 7200, 255, 1, 31478), -- Crude Boomerang (Area: -Unknown- - Difficulty: 38)
(@OGUID+29, 270913, 1907, 9540, 9540, '38', '0', 0, 2330.717041015625, -37.3472213745117187, 6.780887126922607421, 1.120246052742004394, 0.04155588150024414, 0.034574508666992187, 0.530185699462890625, 0.846156477928161621, 7200, 255, 1, 31478), -- Old Chest (Area: -Unknown- - Difficulty: 38)
(@OGUID+30, 270913, 1907, 9540, 9540, '38', '0', 0, 2332.346923828125, -26.875, 6.715723991394042968, 3.08923506736755371, 0.017751216888427734, -0.01520156860351562, 0.999377250671386718, 0.02643604390323162, 7200, 255, 1, 31478), -- Old Chest (Area: -Unknown- - Difficulty: 38)
(@OGUID+31, 295547, 1907, 9540, 9540, '38', '0', 0, 2315.708984375, 5.687066078186035156, 6.409743785858154296, 2.740161895751953125, 0, 0, 0.979924201965332031, 0.199370384216308593, 7200, 255, 0, 31478), -- Pirate's Booty (Area: -Unknown- - Difficulty: 38)
(@OGUID+32, 270912, 1907, 9540, 9540, '38', '0', 0, 2329.8779296875, -19.7413196563720703, 7.780444145202636718, 3.744607925415039062, 0.301366806030273437, 0.158946990966796875, -0.89091396331787109, 0.300310224294662475, 7200, 255, 1, 31478), -- Wooden Strongbox (Area: -Unknown- - Difficulty: 38)
(@OGUID+33, 326586, 1907, 9540, 9540, '38', '0', 0, 2315.68798828125, 5.769096851348876953, 6.577949047088623046, 6.265809059143066406, -0.04671955108642578, -0.00040626525878906, -0.00871658325195312, 0.998869955539703369, 7200, 255, 1, 31478), -- Point Blank Cannon (Area: -Unknown- - Difficulty: 38)
-- (@OGUID+34, 326056, 1907, 9540, 9540, '38', '0', 0, 2314.880859375, 497.296844482421875, 0.245662987232208251, 3.850179910659790039, 0, 0, -0.93789100646972656, 0.34693002700805664, 7200, 100, 0, 31478), -- Collision (Area: -Unknown- - Difficulty: 38) - !!! might be temporary spawn !!!
(@OGUID+35, 273297, 1907, 9540, 9540, '38', '0', 0, 2276.653076171875, 69.32465362548828125, 11.36847972869873046, 4.129045009613037109, 0.261285305023193359, 0.065020561218261718, -0.85645198822021484, 0.440445601940155029, 7200, 255, 0, 31478), -- Azerite Chunk (Area: -Unknown- - Difficulty: 38)
(@OGUID+36, 303199, 1907, 9540, 9540, '38', '0', 0, 2298.1240234375, 518.88323974609375, 6.661799907684326171, 5.433479785919189453, 0, 0, -0.4121866226196289, 0.911099433898925781, 7200, 100, 0, 31478), -- Doodad_8HU_KulTiras_ShipMedium_IslandGate001 (Area: -Unknown- - Difficulty: 38)
(@OGUID+37, 326016, 1907, 9540, 9540, '38', '0', 0, 2282.5205078125, 73.66455078125, 13.38501834869384765, 0.786800026893615722, 0, 0, -0.07133960723876953, 0.997452080249786376, 7200, 100, 0, 31478), -- XR-5P33DY Prototype Propellers (Area: -Unknown- - Difficulty: 38)
(@OGUID+38, 273297, 1907, 9540, 9540, '38', '0', 0, 2273.988037109375, 63.14236068725585937, 10.19015979766845703, 1.90645599365234375, 0.045625686645507812, 0.002823829650878906, 0.815028190612792968, 0.577615261077880859, 7200, 255, 0, 31478), -- Azerite Chunk (Area: -Unknown- - Difficulty: 38)
(@OGUID+39, 273297, 1907, 9540, 9540, '38', '0', 0, 2184.751953125, 53.18402862548828125, 21.34988975524902343, 2.350411891937255859, 0.030592918395996093, 0.006146430969238281, 0.922493934631347656, 0.384748280048370361, 7200, 255, 0, 31478), -- Azerite Chunk (Area: -Unknown- - Difficulty: 38)
(@OGUID+40, 289437, 1907, 9540, 9540, '38', '0', 0, 2272.47802734375, 10.587982177734375, 9.245869636535644531, 0.786800026893615722, 0, 0, 0, 1, 7200, 100, 0, 31478), -- Azerite Crystal (Area: -Unknown- - Difficulty: 38)
(@OGUID+41, 284424, 1907, 9540, 9540, '38', '0', 0, 2178.4169921875, 69.7725677490234375, 21.20187950134277343, 4.253419876098632812, -0.02282142639160156, -0.03774452209472656, -0.8481760025024414, 0.527874946594238281, 7200, 255, 1, 31478), -- Giant Flower (Area: -Unknown- - Difficulty: 38)
-- (@OGUID+42, 311482, 1907, 9540, 9540, '38', '0', 0, 2213.123779296875, 156.966796875, 30.45240020751953125, 4.606999874114990234, 0, 0, 0, 1, 7200, 100, 1, 31478), -- Azerite Crack (Area: -Unknown- - Difficulty: 38) - !!! might be temporary spawn !!!
(@OGUID+43, 289437, 1907, 9540, 9540, '38', '0', 0, 2302.93994140625, 128.3271942138671875, 10.67714977264404296, 1.919618010520935058, 0.103208065032958984, -0.00757694244384765, 0.817392349243164062, 0.566710174083709716, 7200, 255, 0, 31478), -- Azerite Crystal (Area: -Unknown- - Difficulty: 38)
(@OGUID+44, 277577, 1907, 9540, 9540, '38', '0', 0, 2178.318115234375, 61.24306106567382812, 21.31868934631347656, 3.702404022216796875, 0, 0, -0.96094322204589843, 0.276745527982711791, 7200, 255, 1, 31478), -- Striped Melon (Area: -Unknown- - Difficulty: 38)
-- (@OGUID+45, 311481, 1907, 9540, 9540, '38', '0', 0, 2213.123779296875, 156.966796875, 30.45240020751953125, 4.606999874114990234, 0, 0, 0, 1, 7200, 100, 1, 31478), -- Azerite Crack (Area: -Unknown- - Difficulty: 38) - !!! might be temporary spawn !!!
(@OGUID+46, 270912, 1907, 9540, 9540, '38', '0', 0, 2175.0830078125, 71.5625, 21.14570045471191406, 6.04289102554321289, -0.00867605209350585, -0.00568962097167968, -0.119903564453125, 0.992731332778930664, 7200, 255, 0, 31478), -- Wooden Strongbox (Area: -Unknown- - Difficulty: 38)
(@OGUID+47, 290452, 1907, 9540, 9540, '38', '0', 0, 2174.597900390625, 73.5511322021484375, 21.1557769775390625, 2.239521503448486328, 0, 0, 0.899995803833007812, 0.435898572206497192, 7200, 100, 1, 31478), -- Seafarer's Dubloon (Area: -Unknown- - Difficulty: 38)
(@OGUID+48, 273297, 1907, 9540, 9540, '38', '0', 0, 2297.251953125, 149.678802490234375, 10.48093986511230468, 0.262834399938583374, 0.005513668060302734, 0.003027915954589843, 0.131023406982421875, 0.991359293460845947, 7200, 255, 0, 31478), -- Azerite Chunk (Area: -Unknown- - Difficulty: 38)
(@OGUID+49, 273297, 1907, 9540, 9540, '38', '0', 0, 2302.10400390625, 139.489593505859375, 10.32176971435546875, 0.214558303356170654, 0.118565559387207031, 0.072167396545410156, 0.098586082458496093, 0.985400855541229248, 7200, 255, 0, 31478), -- Azerite Chunk (Area: -Unknown- - Difficulty: 38)
(@OGUID+50, 277449, 1907, 9540, 9540, '38', '0', 0, 2389.1630859375, 135.26739501953125, 12.49586963653564453, 1.83808302879333496, -0.07686519622802734, -0.08494472503662109, 0.790453910827636718, 0.601713180541992187, 7200, 255, 1, 31478), -- 277449 (Area: -Unknown- - Difficulty: 38)
(@OGUID+51, 284423, 1907, 9540, 9540, '38', '0', 0, 2196.47900390625, 200.8889007568359375, 26.00149917602539062, 1.994119048118591308, 0.014107227325439453, 0.02783203125, 0.839414596557617187, 0.542595148086547851, 7200, 255, 1, 31478), -- Glowing Seed (Area: -Unknown- - Difficulty: 38)
(@OGUID+52, 270913, 1907, 9540, 9540, '38', '0', 0, 2186.80908203125, 197.7985992431640625, 26.33805084228515625, 0.413799703121185302, 0.0416107177734375, 0.000347137451171875, 0.205576896667480468, 0.977755904197692871, 7200, 255, 0, 31478), -- Old Chest (Area: -Unknown- - Difficulty: 38)
(@OGUID+53, 270913, 1907, 9540, 9540, '38', '0', 0, 2193.375, 193.1875, 26.18639945983886718, 1.539541959762573242, -0.00556182861328125, 0.007232666015625, 0.695935249328613281, 0.718046605587005615, 7200, 255, 0, 31478), -- Old Chest (Area: -Unknown- - Difficulty: 38)
(@OGUID+54, 326009, 1907, 9540, 9540, '38', '0', 0, 2200.87939453125, 332.8282470703125, 19.21850204467773437, 0.786800026893615722, 0, 0, -0.07133960723876953, 0.997452080249786376, 7200, 100, 1, 31478), -- Robotic Gizmo (Area: -Unknown- - Difficulty: 38)
(@OGUID+55, 290452, 1907, 9540, 9540, '38', '0', 0, 2197.498046875, 192.341796875, 26.194183349609375, 4.851922035217285156, 0, 0, -0.65609359741210937, 0.754679560661315917, 7200, 100, 1, 31478), -- Seafarer's Dubloon (Area: -Unknown- - Difficulty: 38)
(@OGUID+56, 270913, 1907, 9540, 9540, '38', '0', 0, 2151.55908203125, 103.3802032470703125, 22.12286949157714843, 1.022487044334411621, 0.046964168548583984, 0.027499198913574218, 0.488489151000976562, 0.870871126651763916, 7200, 255, 0, 31478), -- Old Chest (Area: -Unknown- - Difficulty: 38)
(@OGUID+57, 287447, 1907, 9540, 9540, '38', '0', 0, 2151.55908203125, 103.3802032470703125, 22.12286949157714843, 1.022487044334411621, 0.046964168548583984, 0.027499198913574218, 0.488489151000976562, 0.870871126651763916, 7200, 255, 1, 31478), -- Strangling Vines (Area: -Unknown- - Difficulty: 38)
(@OGUID+58, 270914, 1907, 9540, 9540, '38', '0', 0, 2132.51904296875, 264.70660400390625, 22.45874977111816406, 3.901514053344726562, 0.017414569854736328, -0.01414203643798828, -0.92852497100830078, 0.370591640472412109, 7200, 255, 1, 31478), -- Reinforced Chest (Area: -Unknown- - Difficulty: 38)
(@OGUID+59, 281896, 1907, 9540, 9540, '38', '0', 0, 2290.273193359375, 537.22760009765625, 6.095880031585693359, 5.157619953155517578, 0, 0, -0.53354167938232421, 0.845773756504058837, 7200, 100, 1, 31478), -- Azerite Detector (Area: -Unknown- - Difficulty: 38)
(@OGUID+60, 270913, 1907, 9540, 9540, '38', '0', 0, 2173.8720703125, 77.8975677490234375, 21.010009765625, 0.631142020225524902, -0.01149320602416992, 0.000476837158203125, 0.310379981994628906, 0.950542986392974853, 7200, 255, 0, 31478), -- Old Chest (Area: -Unknown- - Difficulty: 38)
(@OGUID+61, 270913, 1907, 9540, 9540, '38', '0', 0, 2167.47802734375, 74.63021087646484375, 21.78985977172851562, 4.308064937591552734, 0.0001373291015625, -0.00067138671875, -0.83468437194824218, 0.550728142261505126, 7200, 255, 0, 31478), -- Old Chest (Area: -Unknown- - Difficulty: 38)
(@OGUID+62, 297070, 1907, 9540, 9540, '38', '0', 0, 2245.550048828125, 27.03870010375976562, 11.42510032653808593, 2.132980108261108398, 0, 0, 0.875509262084960937, 0.48320135474205017, 7200, 100, 1, 31478), -- Portal (Area: -Unknown- - Difficulty: 38)
(@OGUID+63, 326192, 1907, 9540, 9540, '38', '0', 0, 2251.3505859375, 32.150390625, 10.85387897491455078, 0.967380046844482421, 0, 0, 0.465048789978027343, 0.885285019874572753, 7200, 100, 1, 31478), -- 326192 (Area: -Unknown- - Difficulty: 38)
(@OGUID+64, 291123, 1907, 9540, 9540, '38', '0', 0, 2252.2099609375, 34.248046875, 10.85342121124267578, 0.967380046844482421, 0, 0, 0.465048789978027343, 0.885285019874572753, 7200, 100, 0, 31478), -- Twilight Cache (Area: -Unknown- - Difficulty: 38)
(@OGUID+65, 290801, 1907, 9540, 9540, '38', '0', 0, 2335.580078125, 15.208984375, 6.772282600402832031, 6.11163330078125, 0, 0, -0.08567047119140625, 0.99632352590560913, 7200, 100, 0, 31478), -- Twilight Hoard (Area: -Unknown- - Difficulty: 38)
(@OGUID+66, 326192, 1907, 9540, 9540, '38', '0', 0, 2334.4541015625, 12.63671875, 6.748250007629394531, 6.11163330078125, 0, 0, -0.08567047119140625, 0.99632352590560913, 7200, 100, 1, 31478), -- 326192 (Area: -Unknown- - Difficulty: 38)
(@OGUID+67, 326192, 1907, 9540, 9540, '38', '0', 0, 2366.041015625, 49.90625, 7.697417259216308593, 1.313167572021484375, 0, 0, 0.610414505004882812, 0.792082130908966064, 7200, 100, 1, 31478), -- 326192 (Area: -Unknown- - Difficulty: 38)
(@OGUID+68, 291123, 1907, 9540, 9540, '38', '0', 0, 2366.2626953125, 54.595703125, 7.911120414733886718, 1.313167572021484375, 0, 0, 0.610414505004882812, 0.792082130908966064, 7200, 100, 0, 31478), -- Twilight Cache (Area: -Unknown- - Difficulty: 38)
(@OGUID+69, 277578, 1907, 9540, 9540, '38', '0', 0, 2401.611083984375, 5.55555582046508789, 7.26995706558227539, 0.645741283893585205, 0.017450809478759765, -0.07700920104980468, 0.315710067749023437, 0.945564508438110351, 7200, 255, 1, 31478), -- Carrot (Area: -Unknown- - Difficulty: 38)
(@OGUID+70, 271828, 1907, 9540, 9540, '38', '0', 0, 2378.636962890625, 54.43402862548828125, 8.081288337707519531, 6.260526180267333984, 0.047817707061767578, -0.00777816772460937, -0.01096820831298828, 0.99876558780670166, 7200, 255, 1, 31478), -- Stranglevines (Area: -Unknown- - Difficulty: 38)
(@OGUID+71, 273297, 1907, 9540, 9540, '38', '0', 0, 2368.10107421875, 51.123260498046875, 7.738461971282958984, 0.46295320987701416, 0.017933845520019531, -0.00714874267578125, 0.229541778564453125, 0.973107337951660156, 7200, 255, 1, 31478), -- Azerite Chunk (Area: -Unknown- - Difficulty: 38)
(@OGUID+72, 277578, 1907, 9540, 9540, '38', '0', 0, 2382.117919921875, 13.39583015441894531, 6.623363018035888671, 4.893641948699951171, 0, 0, -0.64021015167236328, 0.768199801445007324, 7200, 255, 1, 31478), -- Carrot (Area: -Unknown- - Difficulty: 38)
(@OGUID+73, 273297, 1907, 9540, 9540, '38', '0', 0, 2370.238037109375, 59.19617843627929687, 8.210010528564453125, 3.576711893081665039, 0.08428955078125, 0.073459625244140625, -0.96914958953857421, 0.219654262065887451, 7200, 255, 0, 31478), -- Azerite Chunk (Area: -Unknown- - Difficulty: 38)
(@OGUID+74, 277525, 1907, 9540, 9540, '38', '0', 0, 2346.990966796875, -72.0746536254882812, 0.518008887767791748, 6.134688854217529296, 0.10269784927368164, -0.00763893127441406, -0.07378578186035156, 0.991942763328552246, 7200, 255, 1, 31478), -- Wanderer's Respite (Area: -Unknown- - Difficulty: 38)
(@OGUID+75, 282628, 1907, 9540, 9540, '38', '0', 0, 2382.85107421875, -45.6506195068359375, 3.821974039077758789, 3.01037907600402832, -0.04296159744262695, -0.0049295425415039, 0.996936798095703125, 0.065169543027877807, 7200, 255, 1, 31478), -- Sand Pile (Area: -Unknown- - Difficulty: 38)
(@OGUID+76, 290912, 1907, 9540, 9540, '38', '0', 0, 2358.8603515625, -66.7624969482421875, 1.741558790206909179, 1.355265378952026367, 0, 0, 0.626950263977050781, 0.779059290885925292, 7200, 100, 1, 31478), -- Bag of Azerite (Area: -Unknown- - Difficulty: 38)
(@OGUID+77, 326189, 1907, 9540, 9540, '38', '0', 0, 2352.60546875, -67.111328125, 1.465893507003784179, 1.355265378952026367, 0, 0, 0.626950263977050781, 0.779059290885925292, 7200, 100, 1, 31478), -- Приманка на палочке (Area: -Unknown- - Difficulty: 38)
(@OGUID+78, 290911, 1907, 9540, 9540, '38', '0', 0, 2357.923828125, -65.451171875, 1.811718702316284179, 1.355265378952026367, 0, 0, 0.626950263977050781, 0.779059290885925292, 7200, 100, 1, 31478), -- Sack of Azerite (Area: -Unknown- - Difficulty: 38)
(@OGUID+79, 277579, 1907, 9540, 9540, '38', '0', 0, 2402.736083984375, -5.17361116409301757, 6.920821189880371093, 0.769338488578796386, 0.001222133636474609, -0.02449417114257812, 0.374966621398925781, 0.926713824272155761, 7200, 255, 1, 31478), -- Carrot (Area: -Unknown- - Difficulty: 38)
(@OGUID+80, 281581, 1907, 9540, 9540, '38', '0', 0, 2403.14794921875, 121.196197509765625, 14.52105045318603515, 2.949955940246582031, -0.0295562744140625, -0.08896636962890625, 0.9912109375, 0.09333965927362442, 7200, 255, 1, 31478), -- Rack of Ribs (Area: -Unknown- - Difficulty: 38)
(@OGUID+81, 290911, 1907, 9540, 9540, '38', '0', 0, 2392.970703125, 129.873046875, 13.82288455963134765, 1.363072514533996582, 0, 0, 0.629986763000488281, 0.776605904102325439, 7200, 100, 1, 31478), -- Sack of Azerite (Area: -Unknown- - Difficulty: 38)
(@OGUID+82, 270914, 1907, 9540, 9540, '38', '0', 0, 2395.52392578125, 126.6197967529296875, 14.10573005676269531, 3.440382957458496093, 0.204941749572753906, 0.037873268127441406, -0.96692562103271484, 0.147035092115402221, 7200, 255, 1, 31478); -- Reinforced Chest (Area: -Unknown- - Difficulty: 38)


DELETE FROM `gameobject_addon` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+239;
INSERT INTO `gameobject_addon` (`guid`, `parent_rotation0`, `parent_rotation1`, `parent_rotation2`, `parent_rotation3`) VALUES
(@OGUID+2, -0.09895820170640945, 0.151507005095481872, 0.665638983249664306, 0.724000990390777587), -- Azerite Chunk
(@OGUID+3, 0, 0, 0.953580021858215332, 0.301140010356903076), -- Turtle Egg
(@OGUID+4, -0.01266259979456663, 0.086786903440952301, 0.796384990215301513, 0.59839797019958496), -- Azerite Chunk
(@OGUID+5, 0, 0, 0.317065000534057617, 0.948404014110565185), -- Turtle Egg
(@OGUID+7, 0.005337830167263746, -0.04184529930353164, 0.991078972816467285, -0.12642300128936767), -- Azerite Shard
(@OGUID+8, 0, 0, 0.317065000534057617, 0.948404014110565185), -- Turtle Egg
(@OGUID+10, -0.08795259892940521, 0.020372599363327026, 0.948179006576538085, -0.30464199185371398), -- Sticky Starfish
(@OGUID+11, 0, 0, -0.63135397434234619, 0.775494992733001708), -- Turtle Egg
(@OGUID+12, 0.040453799068927764, -0.00057183799799531, 0.074552796781063079, 0.996396005153656005), -- Altar of the Sea
(@OGUID+13, 0.012073299847543239, -0.0404043011367321, 0.879392027854919433, -0.47422799468040466), -- Turtle Egg
(@OGUID+14, 0, 0, 0.93094801902770996, 0.365153014659881591), -- Turtle Egg
(@OGUID+15, -0.00535049010068178, -0.00111068994738161, 0.97912001609802246, 0.203210994601249694), -- Turtle Egg
(@OGUID+17, -0.01922670006752014, -0.02282479964196681, 0.643963992595672607, 0.764473974704742431), -- Turtle Egg
(@OGUID+18, 0.047881498932838439, 0.029320800676941871, -0.42005199193954467, 0.905761003494262695), -- Azerite Chunk
(@OGUID+20, 0, 0, 0.317065000534057617, 0.948404014110565185), -- Turtle Egg
(@OGUID+21, 0, 0, 0.923611998558044433, -0.38332900404930114), -- Turtle Egg
(@OGUID+26, -0.03128150105476379, 0.058763999491930007, -0.65216898918151855, 0.755144000053405761), -- Azerite Chunk
(@OGUID+27, -0.0466729998588562, -0.13010700047016143, 0.978635013103485107, -0.15220600366592407), -- Azerite Chunk
(@OGUID+28, 0, 0, 0.338849008083343505, 0.94084101915359497), -- Crude Boomerang
(@OGUID+29, 0.050548501312732696, 0.019161900505423545, 0.776781976222991943, 0.627444982528686523), -- Old Chest
(@OGUID+30, -0.00362560991197824, 0.023088699206709861, -0.77709698677062988, 0.628946006298065185), -- Old Chest
(@OGUID+31, 0, 0, 1, 0.000000043711398944), -- Pirate's Booty
(@OGUID+32, -0.25982099771499633, -0.22040699422359466, 0.934795022010803222, -0.10036200284957885), -- Wooden Strongbox
(@OGUID+33, 0.000000002042259916, 0.046721398830413818, 0.998907983303070068, 0.000000043663700211), -- Point Blank Cannon
(@OGUID+34, -0.10806900262832641, 0.013572099618613719, 0.986302971839904785, 0.12386699765920639), -- Fresh Meat
(@OGUID+35, -0.22715100646018981, -0.14456899464130401, 0.951949000358581542, -0.14592799544334411), -- Azerite Chunk
(@OGUID+38, 0.043234501034021377, -0.01485040038824081, 0.974031984806060791, 0.221748992800712585), -- Azerite Chunk
(@OGUID+39, 0.031053299084305763, -0.00306649995036423, 0.994674980640411376, 0.098223797976970672), -- Azerite Chunk
(@OGUID+41, -0.0408501997590065, 0.016636800020933151, 0.3886910080909729, 0.920311987400054931), -- Giant Flower
(@OGUID+42, -0.00206094002351164, -0.00493776006624102, 0.814877986907958984, 0.5796089768409729), -- Azerite Shard
(@OGUID+43, 0.087085798382759094, -0.0559060014784336, 0.988749027252197265, 0.108006998896598815), -- Azerite Crystal
(@OGUID+44, 0, 0, -0.60784602165222167, 0.794054985046386718), -- Striped Melon
(@OGUID+45, -0.00597315980121493, 0.000901332008652389, -0.00911024957895278, 0.999939978122711181), -- Glowing Seed
(@OGUID+46, -0.01037339959293603, -0.0002278220053995, 0.424382001161575317, 0.905423998832702636), -- Wooden Strongbox
(@OGUID+48, 0.002333630109205842, -0.00584184983745217, 0.968002021312713623, -0.25086298584938049), -- Azerite Chunk
(@OGUID+49, 0.03199629858136177, -0.1350640058517456, 0.906706988811492919, -0.39826700091361999), -- Azerite Chunk
(@OGUID+50, -0.11046899855136871, -0.03034250065684318, 0.989961981773376464, 0.082767702639102935), -- 277449
(@OGUID+51, 0.03012390062212944, 0.008140180259943008, 0.964905023574829101, -0.26074001193046569), -- Glowing Seed
(@OGUID+52, 0.035862401127815246, 0.021106399595737457, -0.31084299087524414, 0.949549973011016845), -- Old Chest
(@OGUID+53, -0.00135783001314848, 0.009022819809615612, 0.956794977188110351, 0.290621012449264526), -- Old Chest
(@OGUID+56, 0.046964399516582489, 0.027499699965119361, 0.488489001989364624, 0.870871007442474365), -- Old Chest
(@OGUID+57, 0.046964399516582489, 0.027499699965119361, 0.488489001989364624, 0.870871007442474365), -- Strangling Vines
(@OGUID+58, -0.02140530012547969, -0.00671633007004857, 0.821518003940582275, 0.569742023944854736), -- Reinforced Chest
(@OGUID+60, -0.0113882003352046, -0.00162391003686934, 0.131960004568099975, 0.991187989711761474), -- Old Chest
(@OGUID+61, -0.00035205599851906, -0.00058813899522647, -0.24332800507545471, 0.969944000244140625), -- Old Chest
(@OGUID+69, -0.0735844001173973, -0.02864200063049793, 0.981842994689941406, -0.1724800020456314), -- Carrot
(@OGUID+70, 0.047748200595378875, -0.00819571036845445, -0.00225327000953257, 0.998822987079620361), -- Stranglevines
(@OGUID+71, -0.01001069974154233, -0.01650819927453994, 0.921876013278961181, -0.38700398802757263), -- Azerite Chunk
(@OGUID+72, 0, 0, 0.95976799726486206, 0.280791997909545898), -- Carrot
(@OGUID+73, 0.110134996473789215, -0.0192756000906229, -0.43920299410820007, 0.891403019428253173), -- Azerite Chunk
(@OGUID+74, 0.102697998285293579, -0.00763928983360528, -0.07378630340099334, 0.991943001747131347), -- Wanderer's Respite
(@OGUID+75, -0.04296199977397918, -0.00493026012554764, 0.996936976909637451, 0.065167203545570373), -- Sand Pile
(@OGUID+79, -0.02178310044109821, -0.0112712001428008, 0.998769998550415039, 0.043096799403429031), -- Carrot
(@OGUID+80, 0.093608997762203216, 0.005106600001454353, -0.45012301206588745, 0.888032019138336181), -- Rack of Ribs
(@OGUID+82, -0.20828199386596679, 0.007381900213658809, 0.912184000015258789, -0.35282400250434875); -- Reinforced Chest


DELETE FROM `creature_template_addon` WHERE `entry` IN (145304 /*145304 (Feral Strangler) - -Unknown-, -Unknown-*/, 146854 /*146854 (Stella Darkpaw) - -Unknown-, -Unknown-, -Unknown-*/, 145305 /*145305 (Feral Hulk) - -Unknown-, -Unknown-, -Unknown-*/, 146816 /*146816 (Sir Barton Brigham) - -Unknown-, -Unknown-, -Unknown-*/, 146827 /*146827 (Feral Dog) - -Unknown-, -Unknown-*/, 145298 /*145298 (Feral Hungerer) - -Unknown-, -Unknown-*/, 145399 /*145399 (Wild Starcaller) - -Unknown-, -Unknown-*/, 145372 /*145372 (Wild Mooncaller) - -Unknown-, -Unknown-*/, 126141 /*126141 (Spirit Healer) - -Unknown-*/, 136051 /*136051 (Fathomus) - -Unknown-, -Unknown-*/, 140996 /*140996 (Deepbore) - -Unknown-*/, 123266 /*123266 (Frost Patch) - -Unknown-*/, 122076 /*122076 (Snow Orb) - -Unknown-, -Unknown-*/, 130299 /*130299 (Droplet) - -Unknown-, -Unknown-*/, 139660 /*139660 (Dampscale Murloc) - -Unknown-, -Unknown-*/, 139659 /*139659 (Dampscale Oracle) - -Unknown-, -Unknown-*/, 139669 /*139669 (Shaman Garmr) - -Unknown-, -Unknown-, -Unknown-*/, 139662 /*139662 (Dampscale Raincaller) - -Unknown-, -Unknown-*/, 140841 /*140841 (Snickering Ripple)*/, 140838 /*140838 (Mischievous Flood)*/, 146863 /*146863 (Mistscorn Ravager) - -Unknown-*/, 146864 /*146864 (Mistscorn Earthbinder) - -Unknown-, -Unknown-*/, 140993 /*140993 (Darktunnel Ambusher) - -Unknown-*/, 139675 /*139675 (Fathom-Seeker) - -Unknown-, -Unknown-*/, 147933 /*147933 (Geoactive Azershard)*/, 139655 /*139655 (Coldlight Seer) - -Unknown-*/, 149331 /*149331 (Luminous Azerite) - -Unknown-*/, 147965 /*147965 (Volatile Azerite) - -Unknown-*/, 132923 /*132923 (Coldlight Murloc) - -Unknown-*/, 139652 /*139652 (Coldlight Coastrunner) - -Unknown-*/, 47319 /*47319 (Leap Target)*/, 138516 /*138516 (Twilight Evolutionist) - -Unknown-, -Unknown-, -Unknown-*/, 138499 /*138499 (Twilight Dragonkin) - -Unknown-, -Unknown-*/, 138500 /*138500 (Twilight Scalesister) - -Unknown-, -Unknown-*/, 138498 /*138498 (Twilight Drake) - -Unknown-, -Unknown-*/, 138501 /*138501 (Twilight Whelp) - -Unknown-, -Unknown-*/, 138497 /*138497 (Twilight Scalesworn) - -Unknown-, -Unknown-*/, 138511 /*138511 (Azurescale) - -Unknown-, -Unknown-, -Unknown-*/, 147936 /*147936 (Azergem Shardback) - -Unknown-*/, 147938 /*147938 (Azergem Crystalback)*/, 147948 /*147948 (Coagulated Azerite)*/, 135962 /*135962 (Crag Rager) - -Unknown-*/, 146118 /*146118 (Territorial Needleback)*/, 140095 /*140095 (Mudsnout Gorer)*/, 140094 /*140094 (Mudsnout Thornback) - -Unknown-*/, 132820 /*132820 (Mudsnout Piglet)*/, 147188 /*147188 (Azerite Extractor) - -Unknown-*/, 123146 /*123146 (Torn Spirit)*/, 151674 /*151674 (Stinkfur Hopling) - -Unknown-*/, 132807 /*132807 (Zian-Ti Quilen)*/, 140295 /*140295 (Snowfur Pup) - -Unknown-, -Unknown-*/, 140292 /*140292 (Snowfur Alpha) - -Unknown-*/, 140293 /*140293 (Snowfur Snarler) - -Unknown-, -Unknown-*/, 137958 /*137958 (Crimsonwood Kit)*/, 138969 /*138969 (Zian-Ti Spirit)*/, 146178 /*146178 (Azurespine) - -Unknown-*/, 137951 /*137951 (Skittish Squirrel)*/, 146116 /*146116 (Needleback Forager)*/, 140336 /*140336 (Nightscale Wind Serpent) - -Unknown-*/, 132868 /*132868 (Congealed Azerite)*/, 131311 /*131311 (Unleashed Azerite)*/, 137955 /*137955 (Woodlands Recluse) - -Unknown-, -Unknown-*/, 151989 /*151989 (Siftworm) - -Unknown-, -Unknown-*/, 136532 /*136532 (Sylvester)*/, 147932 /*147932 (Agitated Azershard)*/, 147968 /*147968 (Agitated Azerite) - -Unknown-*/, 140074 /*140074 (Sharptooth) - -Unknown-*/, 147068 /*147068 (Azerite Fissure) - -Unknown-*/, 132819 /*132819 (Rustpelt Pup)*/, 140067 /*140067 (Rustpelt Alpha) - -Unknown-*/, 140068 /*140068 (Rustpelt Snarler)*/, 151988 /*151988 (Masked Tanuki) - -Unknown-, -Unknown-*/, 123286 /*123286 (Southsea Gambler) - -Unknown-, -Unknown-*/, 139758 /*139758 (Annie Two-Pistols) - -Unknown-*/, 151680 /*151680 (Orangetooth) - -Unknown-, -Unknown-*/, 151679 /*151679 (Stinkfur Thumper) - -Unknown-, -Unknown-*/, 132912 /*132912 (Scouted Azerite)*/, 151676 /*151676 (Stinkfur Hooligan) - -Unknown-, -Unknown-*/, 129000 /*129000 (Southsea Brawler) - -Unknown-, -Unknown-*/, 137947 /*137947 (Scavenging Rat)*/, 150719 /*150719 (Detected Azerite Pocket) - -Unknown-*/, 151990 /*151990 (Honeykeeper) - -Unknown-, -Unknown-*/, 135182 /*135182 (Azerite Energy) - -Unknown-*/, 138635 /*138635 (Commander Husan) - -Unknown-, -Unknown-*/, 138633 /*138633 (Brother Maat) - -Unknown-, -Unknown-, -Unknown-*/, 138628 /*138628 (Amathet Priest) - -Unknown-, -Unknown-*/, 138624 /*138624 (Amathet Champion) - -Unknown-*/, 141881 /*141881 (Sailor)*/, 140619 /*140619 (Coastal Fathomjaw)*/, 141899 /*141899 (Sailor)*/, 141880 /*141880 (Sailor)*/, 151978 /*151978 (Waterstrider)*/, 140337 /*140337 (Nightscale Hatchling) - -Unknown-*/, 143761 /*143761 (Stick-In-The-Mud)*/, 122264 /*122264 (Elder Spineshell) - -Unknown-*/, 122263 /*122263 (Spineshell Snapjaw) - -Unknown-*/, 136598 /*136598 (Sand Stinger) - -Unknown-*/, 136594 /*136594 (Captain Rez'okun)*/, 152714 /*152714 (A.T.O.M.I.K. Mk. II) - -Unknown-, -Unknown-*/, 140334 /*140334 (Nightscale Coilfang) - -Unknown-*/, 141875 /*141875 (Sailor)*/, 132925 /*132925 (Scouted Azerite)*/, 137950 /*137950 (Beach Scuttler) - -Unknown-*/, 136599 /*136599 (Mire Whelk)*/, 122266 /*122266 (Spineshell Turtle)*/, 124581 /*124581 (Spineshell Snapper)*/, 140335 /*140335 (Nightscale Screecher)*/, 147192 /*147192 (Azerite Extractor)*/, 137946 /*137946 (Sand Mouse) - -Unknown-*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(145304, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 145304 (Feral Strangler) - -Unknown-, -Unknown-
(146854, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998 276102'), -- 146854 (Stella Darkpaw) - -Unknown-, -Unknown-, -Unknown-
(145305, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998 276105'), -- 145305 (Feral Hulk) - -Unknown-, -Unknown-, -Unknown-
(146816, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998 276102'), -- 146816 (Sir Barton Brigham) - -Unknown-, -Unknown-, -Unknown-
(146827, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 146827 (Feral Dog) - -Unknown-, -Unknown-
(145298, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 145298 (Feral Hungerer) - -Unknown-, -Unknown-
(145399, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 145399 (Wild Starcaller) - -Unknown-, -Unknown-
(145372, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 145372 (Wild Mooncaller) - -Unknown-, -Unknown-
(126141, 0, 0, 0, 1, 0, 0, 0, 0, '305122'), -- 126141 (Spirit Healer) - -Unknown-
(136051, 0, 0, 0, 1, 0, 0, 0, 0, '277614 276104'), -- 136051 (Fathomus) - -Unknown-, -Unknown-
(140996, 0, 0, 0, 1, 0, 0, 0, 0, '244121'), -- 140996 (Deepbore) - -Unknown-
(123266, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- 123266 (Frost Patch) - -Unknown-
(122076, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 122076 (Snow Orb) - -Unknown-, -Unknown-
(130299, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 130299 (Droplet) - -Unknown-, -Unknown-
(139660, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 139660 (Dampscale Murloc) - -Unknown-, -Unknown-
(139659, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 139659 (Dampscale Oracle) - -Unknown-, -Unknown-
(139669, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998 276104'), -- 139669 (Shaman Garmr) - -Unknown-, -Unknown-, -Unknown-
(139662, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 139662 (Dampscale Raincaller) - -Unknown-, -Unknown-
(140841, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 140841 (Snickering Ripple)
(140838, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 140838 (Mischievous Flood)
(146863, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- 146863 (Mistscorn Ravager) - -Unknown-
(146864, 0, 0, 0, 1, 0, 0, 0, 0, '277614 276104'), -- 146864 (Mistscorn Earthbinder) - -Unknown-, -Unknown-
(140993, 0, 0, 0, 1, 0, 0, 0, 0, '244121'), -- 140993 (Darktunnel Ambusher) - -Unknown-
(139675, 0, 0, 0, 1, 0, 0, 0, 0, '277614 276105'), -- 139675 (Fathom-Seeker) - -Unknown-, -Unknown-
(147933, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 147933 (Geoactive Azershard)
(139655, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- 139655 (Coldlight Seer) - -Unknown-
(149331, 0, 0, 0, 1, 0, 0, 0, 0, '276104'), -- 149331 (Luminous Azerite) - -Unknown-
(147965, 0, 0, 0, 1, 0, 0, 0, 0, '276105'), -- 147965 (Volatile Azerite) - -Unknown-
(132923, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- 132923 (Coldlight Murloc) - -Unknown-
(139652, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- 139652 (Coldlight Coastrunner) - -Unknown-
(47319, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 47319 (Leap Target)
(138516, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998 276105'), -- 138516 (Twilight Evolutionist) - -Unknown-, -Unknown-, -Unknown-
(138499, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 138499 (Twilight Dragonkin) - -Unknown-, -Unknown-
(138500, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 138500 (Twilight Scalesister) - -Unknown-, -Unknown-
(138498, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 138498 (Twilight Drake) - -Unknown-, -Unknown-
(138501, 0, 0, 0, 1, 0, 0, 0, 0, '263998 277614'), -- 138501 (Twilight Whelp) - -Unknown-, -Unknown-
(138497, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 138497 (Twilight Scalesworn) - -Unknown-, -Unknown-
(138511, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998 276105'), -- 138511 (Azurescale) - -Unknown-, -Unknown-, -Unknown-
(147936, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- 147936 (Azergem Shardback) - -Unknown-
(147938, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 147938 (Azergem Crystalback)
(147948, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 147948 (Coagulated Azerite)
(135962, 0, 0, 0, 1, 0, 0, 0, 0, '277614'), -- 135962 (Crag Rager) - -Unknown-
(146118, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 146118 (Territorial Needleback)
(140095, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 140095 (Mudsnout Gorer)
(140094, 0, 0, 0, 1, 0, 0, 0, 0, '276105'), -- 140094 (Mudsnout Thornback) - -Unknown-
(132820, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 132820 (Mudsnout Piglet)
(147188, 0, 0, 0, 1, 0, 0, 0, 0, '285806'), -- 147188 (Azerite Extractor) - -Unknown-
(123146, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 123146 (Torn Spirit)
(151674, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- 151674 (Stinkfur Hopling) - -Unknown-
(132807, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 132807 (Zian-Ti Quilen)
(140295, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- 140295 (Snowfur Pup) - -Unknown-, -Unknown-
(140292, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- 140292 (Snowfur Alpha) - -Unknown-
(140293, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- 140293 (Snowfur Snarler) - -Unknown-, -Unknown-
(137958, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 137958 (Crimsonwood Kit)
(138969, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 138969 (Zian-Ti Spirit)
(146178, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- 146178 (Azurespine) - -Unknown-
(137951, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 137951 (Skittish Squirrel)
(146116, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 146116 (Needleback Forager)
(140336, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- 140336 (Nightscale Wind Serpent) - -Unknown-
(132868, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 132868 (Congealed Azerite)
(131311, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 131311 (Unleashed Azerite)
(137955, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- 137955 (Woodlands Recluse) - -Unknown-, -Unknown-
(151989, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- 151989 (Siftworm) - -Unknown-, -Unknown-
(136532, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136532 (Sylvester)
(147932, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 147932 (Agitated Azershard)
(147968, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- 147968 (Agitated Azerite) - -Unknown-
(140074, 0, 0, 0, 1, 0, 0, 0, 0, '276104'), -- 140074 (Sharptooth) - -Unknown-
(147068, 0, 0, 0, 1, 0, 0, 0, 0, '285629'), -- 147068 (Azerite Fissure) - -Unknown-
(132819, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 132819 (Rustpelt Pup)
(140067, 0, 0, 0, 1, 0, 0, 0, 0, '276104'), -- 140067 (Rustpelt Alpha) - -Unknown-
(140068, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 140068 (Rustpelt Snarler)
(151988, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- 151988 (Masked Tanuki) - -Unknown-, -Unknown-
(123286, 0, 0, 0, 1, 0, 0, 0, 0, '276102 255657'), -- 123286 (Southsea Gambler) - -Unknown-, -Unknown-
(139758, 0, 0, 0, 1, 0, 0, 0, 0, '276104'), -- 139758 (Annie Two-Pistols) - -Unknown-
(151680, 0, 0, 0, 1, 0, 0, 0, 0, '278814 273393'), -- 151680 (Orangetooth) - -Unknown-, -Unknown-
(151679, 0, 0, 0, 1, 0, 0, 0, 0, '278814 273393'), -- 151679 (Stinkfur Thumper) - -Unknown-, -Unknown-
(132912, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 132912 (Scouted Azerite)
(151676, 0, 0, 0, 1, 0, 0, 0, 0, '278814 273393'), -- 151676 (Stinkfur Hooligan) - -Unknown-, -Unknown-
(129000, 0, 0, 0, 1, 0, 0, 0, 0, '268343 273393'), -- 129000 (Southsea Brawler) - -Unknown-, -Unknown-
(137947, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 137947 (Scavenging Rat)
(150719, 0, 0, 0, 1, 0, 0, 0, 0, '292124'), -- 150719 (Detected Azerite Pocket) - -Unknown-
(151990, 0, 0, 50331648, 1, 0, 0, 0, 0, '268343 273393'), -- 151990 (Honeykeeper) - -Unknown-, -Unknown-
(135182, 0, 0, 0, 1, 0, 0, 0, 0, '265702'), -- 135182 (Azerite Energy) - -Unknown-
(138635, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 138635 (Commander Husan) - -Unknown-, -Unknown-
(138633, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998 276102'), -- 138633 (Brother Maat) - -Unknown-, -Unknown-, -Unknown-
(138628, 0, 0, 0, 1, 0, 0, 0, 0, '277614 263998'), -- 138628 (Amathet Priest) - -Unknown-, -Unknown-
(138624, 0, 0, 0, 1, 0, 0, 0, 0, '263998'), -- 138624 (Amathet Champion) - -Unknown-
(141881, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 141881 (Sailor)
(140619, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 140619 (Coastal Fathomjaw)
(141899, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 141899 (Sailor)
(141880, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 141880 (Sailor)
(151978, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 151978 (Waterstrider)
(140337, 0, 0, 0, 1, 0, 0, 0, 0, '273393'), -- 140337 (Nightscale Hatchling) - -Unknown-
(143761, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143761 (Stick-In-The-Mud)
(122264, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- 122264 (Elder Spineshell) - -Unknown-
(122263, 0, 0, 0, 1, 0, 0, 0, 0, '265445'), -- 122263 (Spineshell Snapjaw) - -Unknown-
(136598, 0, 0, 0, 1, 0, 0, 0, 0, '273393'), -- 136598 (Sand Stinger) - -Unknown-
(136594, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136594 (Captain Rez'okun)
(152714, 0, 0, 0, 1, 0, 0, 0, 0, '296740 296739'), -- 152714 (A.T.O.M.I.K. Mk. II) - -Unknown-, -Unknown-
(140334, 0, 0, 0, 1, 0, 0, 0, 0, '276102'), -- 140334 (Nightscale Coilfang) - -Unknown-
(141875, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 141875 (Sailor)
(132925, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 132925 (Scouted Azerite)
(137950, 0, 0, 0, 1, 0, 0, 0, 0, '273393'), -- 137950 (Beach Scuttler) - -Unknown-
(136599, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136599 (Mire Whelk)
(122266, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 122266 (Spineshell Turtle)
(124581, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 124581 (Spineshell Snapper)
(140335, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 140335 (Nightscale Screecher)
(147192, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 147192 (Azerite Extractor)
(137946, 0, 0, 0, 1, 0, 0, 0, 0, '273393'); -- 137946 (Sand Mouse) - -Unknown-

UPDATE `creature_template_addon` SET `bytes2`=1, `auras`='' WHERE `entry`=130491; -- 130491
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=137276; -- 137276
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=137275; -- 137275
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=137303; -- 137303
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=137274; -- 137274
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=137305; -- 137305
UPDATE `creature_template_addon` SET `bytes2`=2 WHERE `entry`=12999; -- 12999 (World Invisible Trigger)

DELETE FROM `creature_template_scaling` WHERE (`Entry`=145304 AND `DifficultyID`=39) OR (`Entry`=146854 AND `DifficultyID`=39) OR (`Entry`=145305 AND `DifficultyID`=39) OR (`Entry`=146816 AND `DifficultyID`=39) OR (`Entry`=146827 AND `DifficultyID`=39) OR (`Entry`=145298 AND `DifficultyID`=39) OR (`Entry`=145399 AND `DifficultyID`=39) OR (`Entry`=145372 AND `DifficultyID`=39) OR (`Entry`=126141 AND `DifficultyID`=39) OR (`Entry`=136051 AND `DifficultyID`=39) OR (`Entry`=140996 AND `DifficultyID`=39) OR (`Entry`=123266 AND `DifficultyID`=39) OR (`Entry`=122076 AND `DifficultyID`=39) OR (`Entry`=130299 AND `DifficultyID`=39) OR (`Entry`=139660 AND `DifficultyID`=39) OR (`Entry`=139659 AND `DifficultyID`=39) OR (`Entry`=139669 AND `DifficultyID`=39) OR (`Entry`=139662 AND `DifficultyID`=39) OR (`Entry`=140841 AND `DifficultyID`=39) OR (`Entry`=140838 AND `DifficultyID`=39) OR (`Entry`=146863 AND `DifficultyID`=38) OR (`Entry`=146864 AND `DifficultyID`=38) OR (`Entry`=140993 AND `DifficultyID`=38) OR (`Entry`=139675 AND `DifficultyID`=38) OR (`Entry`=147933 AND `DifficultyID`=38) OR (`Entry`=139655 AND `DifficultyID`=38) OR (`Entry`=149331 AND `DifficultyID`=38) OR (`Entry`=147965 AND `DifficultyID`=38) OR (`Entry`=132923 AND `DifficultyID`=38) OR (`Entry`=139652 AND `DifficultyID`=38) OR (`Entry`=47319 AND `DifficultyID`=38) OR (`Entry`=138516 AND `DifficultyID`=38) OR (`Entry`=138499 AND `DifficultyID`=38) OR (`Entry`=138500 AND `DifficultyID`=38) OR (`Entry`=138498 AND `DifficultyID`=38) OR (`Entry`=138501 AND `DifficultyID`=38) OR (`Entry`=138497 AND `DifficultyID`=38) OR (`Entry`=138511 AND `DifficultyID`=38) OR (`Entry`=147936 AND `DifficultyID`=38) OR (`Entry`=147938 AND `DifficultyID`=38) OR (`Entry`=147948 AND `DifficultyID`=38) OR (`Entry`=135962 AND `DifficultyID`=38) OR (`Entry`=146118 AND `DifficultyID`=38) OR (`Entry`=140095 AND `DifficultyID`=38) OR (`Entry`=140094 AND `DifficultyID`=38) OR (`Entry`=132820 AND `DifficultyID`=38) OR (`Entry`=147188 AND `DifficultyID`=38) OR (`Entry`=123146 AND `DifficultyID`=38) OR (`Entry`=151674 AND `DifficultyID`=38) OR (`Entry`=132807 AND `DifficultyID`=38) OR (`Entry`=140295 AND `DifficultyID`=38) OR (`Entry`=140292 AND `DifficultyID`=38) OR (`Entry`=140293 AND `DifficultyID`=38) OR (`Entry`=137958 AND `DifficultyID`=38) OR (`Entry`=138969 AND `DifficultyID`=38) OR (`Entry`=146178 AND `DifficultyID`=38) OR (`Entry`=137951 AND `DifficultyID`=38) OR (`Entry`=146116 AND `DifficultyID`=38) OR (`Entry`=140336 AND `DifficultyID`=38) OR (`Entry`=132868 AND `DifficultyID`=38) OR (`Entry`=131311 AND `DifficultyID`=38) OR (`Entry`=137955 AND `DifficultyID`=38) OR (`Entry`=151989 AND `DifficultyID`=38) OR (`Entry`=136532 AND `DifficultyID`=38) OR (`Entry`=147932 AND `DifficultyID`=38) OR (`Entry`=147968 AND `DifficultyID`=38) OR (`Entry`=140074 AND `DifficultyID`=38) OR (`Entry`=147068 AND `DifficultyID`=38) OR (`Entry`=132819 AND `DifficultyID`=38) OR (`Entry`=140067 AND `DifficultyID`=38) OR (`Entry`=140068 AND `DifficultyID`=38) OR (`Entry`=151988 AND `DifficultyID`=38) OR (`Entry`=123286 AND `DifficultyID`=38) OR (`Entry`=139758 AND `DifficultyID`=38) OR (`Entry`=151680 AND `DifficultyID`=38) OR (`Entry`=151679 AND `DifficultyID`=38) OR (`Entry`=132912 AND `DifficultyID`=38) OR (`Entry`=151676 AND `DifficultyID`=38) OR (`Entry`=129000 AND `DifficultyID`=38) OR (`Entry`=137947 AND `DifficultyID`=38) OR (`Entry`=150719 AND `DifficultyID`=38) OR (`Entry`=151990 AND `DifficultyID`=38) OR (`Entry`=12999 AND `DifficultyID`=38) OR (`Entry`=135182 AND `DifficultyID`=38) OR (`Entry`=138635 AND `DifficultyID`=38) OR (`Entry`=138633 AND `DifficultyID`=38) OR (`Entry`=138628 AND `DifficultyID`=38) OR (`Entry`=138624 AND `DifficultyID`=38) OR (`Entry`=141881 AND `DifficultyID`=38) OR (`Entry`=140619 AND `DifficultyID`=38) OR (`Entry`=141899 AND `DifficultyID`=38) OR (`Entry`=141880 AND `DifficultyID`=38) OR (`Entry`=151978 AND `DifficultyID`=38) OR (`Entry`=140337 AND `DifficultyID`=38) OR (`Entry`=143761 AND `DifficultyID`=38) OR (`Entry`=122264 AND `DifficultyID`=38) OR (`Entry`=122263 AND `DifficultyID`=38) OR (`Entry`=136598 AND `DifficultyID`=38) OR (`Entry`=136594 AND `DifficultyID`=38) OR (`Entry`=152714 AND `DifficultyID`=38) OR (`Entry`=140334 AND `DifficultyID`=38) OR (`Entry`=141875 AND `DifficultyID`=38) OR (`Entry`=132925 AND `DifficultyID`=38) OR (`Entry`=137950 AND `DifficultyID`=38) OR (`Entry`=136599 AND `DifficultyID`=38) OR (`Entry`=122266 AND `DifficultyID`=38) OR (`Entry`=124581 AND `DifficultyID`=38) OR (`Entry`=140335 AND `DifficultyID`=38) OR (`Entry`=147192 AND `DifficultyID`=38) OR (`Entry`=137946 AND `DifficultyID`=38) OR (`Entry`=144245 AND `DifficultyID`=1);
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(145304, 39, 120, 120, 1, 1, 0, 31478),
(146854, 39, 120, 120, 2, 2, 0, 31478),
(145305, 39, 120, 120, 1, 1, 0, 31478),
(146816, 39, 120, 120, 2, 2, 0, 31478),
(146827, 39, 120, 120, 0, 0, 0, 31478),
(145298, 39, 120, 120, 0, 0, 0, 31478),
(145399, 39, 120, 120, 1, 1, 0, 31478),
(145372, 39, 120, 120, 0, 0, 0, 31478),
(126141, 39, 120, 0, 0, 0, 0, 31478),
(136051, 39, 120, 120, 2, 2, 0, 31478),
(140996, 39, 120, 120, 2, 2, 0, 31478),
(123266, 39, 120, 120, 0, 0, 0, 31478),
(122076, 39, 120, 120, 0, 0, 0, 31478),
(130299, 39, 120, 120, 0, 0, 0, 31478),
(139660, 39, 120, 120, 0, 0, 0, 31478),
(139659, 39, 120, 120, 0, 0, 0, 31478),
(139669, 39, 120, 120, 2, 2, 0, 31478),
(139662, 39, 120, 120, 0, 0, 0, 31478),
(140841, 39, 120, 120, -1, -1, 0, 31478),
(140838, 39, 120, 120, 1, 1, 0, 31478),
(146863, 38, 110, 120, 1, 1, 0, 31478),
(146864, 38, 110, 120, 1, 1, 0, 31478),
(140993, 38, 110, 120, 1, 1, 0, 31478),
(139675, 38, 110, 120, 2, 2, 0, 31478),
(147933, 38, 110, 120, 1, 1, 0, 31478),
(139655, 38, 110, 120, 0, 0, 0, 31478),
(149331, 38, 110, 120, 1, 1, 0, 31478),
(147965, 38, 110, 120, 1, 1, 0, 31478),
(132923, 38, 110, 120, 0, 0, 0, 31478),
(139652, 38, 110, 120, -1, -1, 0, 31478),
(47319, 38, 120, 0, 0, 0, 0, 31478),
(138516, 38, 110, 120, 1, 1, 0, 31478),
(138499, 38, 110, 120, 0, 0, 0, 31478),
(138500, 38, 110, 120, 0, 0, 0, 31478),
(138498, 38, 110, 120, 1, 1, 0, 31478),
(138501, 38, 110, 120, -1, -1, 0, 31478),
(138497, 38, 110, 120, 1, 1, 0, 31478),
(138511, 38, 110, 120, 2, 2, 0, 31478),
(147936, 38, 110, 120, 1, 1, 0, 31478),
(147938, 38, 110, 120, 1, 1, 0, 31478),
(147948, 38, 110, 120, -1, -1, 0, 31478),
(135962, 38, 120, 120, 0, 0, 0, 31478),
(146118, 38, 110, 120, 1, 1, 0, 31478),
(140095, 38, 110, 120, 1, 1, 0, 31478),
(140094, 38, 110, 120, 1, 1, 0, 31478),
(132820, 38, 110, 120, -1, -1, 0, 31478),
(147188, 38, 120, 0, 0, 0, 0, 31478),
(123146, 38, 110, 120, -1, -1, 0, 31478),
(151674, 38, 110, 120, -1, -1, 0, 31478),
(132807, 38, 110, 120, 0, 0, 0, 31478),
(140295, 38, 110, 120, -1, -1, 0, 31478),
(140292, 38, 110, 120, 1, 1, 0, 31478),
(140293, 38, 110, 120, 1, 1, 0, 31478),
(137958, 38, 120, 0, 0, 0, 0, 31478),
(138969, 38, 110, 120, 0, 0, 0, 31478),
(146178, 38, 110, 120, 2, 2, 0, 31478),
(137951, 38, 120, 0, 0, 0, 0, 31478),
(146116, 38, 110, 120, 0, 0, 0, 31478),
(140336, 38, 110, 120, 0, 0, 0, 31478),
(132868, 38, 110, 120, 0, 0, 0, 31478),
(131311, 38, 110, 120, 1, 1, 0, 31478),
(137955, 38, 120, 0, 0, 0, 0, 31478),
(151989, 38, 120, 0, 0, 0, 0, 31478),
(136532, 38, 120, 0, 0, 0, 0, 31478),
(147932, 38, 110, 120, 0, 0, 0, 31478),
(147968, 38, 110, 120, 0, 0, 0, 31478),
(140074, 38, 110, 120, 2, 2, 0, 31478),
(147068, 38, 120, 0, 0, 0, 0, 31478),
(132819, 38, 110, 120, -1, -1, 0, 31478),
(140067, 38, 110, 120, 1, 1, 0, 31478),
(140068, 38, 110, 120, 1, 1, 0, 31478),
(151988, 38, 120, 0, 0, 0, 0, 31478),
(123286, 38, 110, 120, 0, 0, 0, 31478),
(139758, 38, 110, 120, 2, 2, 0, 31478),
(151680, 38, 110, 120, 2, 2, 0, 31478),
(151679, 38, 110, 120, 1, 1, 0, 31478),
(132912, 38, 120, 0, 0, 0, 0, 31478),
(151676, 38, 110, 120, 1, 1, 0, 31478),
(129000, 38, 110, 120, 1, 1, 0, 31478),
(137947, 38, 120, 0, 0, 0, 0, 31478),
(150719, 38, 120, 0, 0, 0, 0, 31478),
(151990, 38, 120, 0, 0, 0, 0, 31478),
(12999, 38, 120, 0, 0, 0, 0, 31478),
(135182, 38, 120, 0, 0, 0, 0, 31478),
(138635, 38, 110, 120, 2, 2, 0, 31478),
(138633, 38, 110, 120, 1, 1, 0, 31478),
(138628, 38, 110, 120, 1, 1, 0, 31478),
(138624, 38, 110, 120, 1, 1, 0, 31478),
(141881, 38, 110, 120, 0, 0, 0, 31478),
(140619, 38, 110, 120, 0, 0, 0, 31478),
(141899, 38, 110, 120, 0, 0, 0, 31478),
(141880, 38, 110, 120, 0, 0, 0, 31478),
(151978, 38, 110, 120, 0, 0, 0, 31478),
(140337, 38, 110, 120, -1, -1, 0, 31478),
(143761, 38, 120, 0, 0, 0, 0, 31478),
(122264, 38, 110, 120, 1, 1, 0, 31478),
(122263, 38, 110, 120, 1, 1, 0, 31478),
(136598, 38, 120, 0, 0, 0, 0, 31478),
(136594, 38, 110, 120, 2, 2, 0, 31478),
(152714, 38, 120, 120, 0, 0, 0, 31478),
(140334, 38, 110, 120, 1, 1, 0, 31478),
(141875, 38, 110, 120, 0, 0, 0, 31478),
(132925, 38, 120, 0, 0, 0, 0, 31478),
(137950, 38, 120, 0, 0, 0, 0, 31478),
(136599, 38, 120, 0, 0, 0, 0, 31478),
(122266, 38, 110, 120, 0, 0, 0, 31478),
(124581, 38, 110, 120, -1, -1, 0, 31478),
(140335, 38, 110, 120, 1, 1, 0, 31478),
(147192, 38, 120, 0, 0, 0, 0, 31478),
(137946, 38, 120, 0, 0, 0, 0, 31478),
(144245, 1, 110, 120, 0, 0, 0, 31478);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=129318 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=130491 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=128631 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=126381 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=123000 AND `DifficultyID`=0);

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (89066, 89041, 89447, 89056, 89430, 89069, 89036, 89039, 89068, 89067, 89474, 89473, 89480, 89479, 89814, 89818, 89589, 89807, 91293, 89590);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(89066, 0.347222000360488891, 1.5, 0, 31478),
(89041, 0.381944000720977783, 1.649999976158142089, 0, 31478),
(89447, 0.694444000720977783, 3, 0, 31478),
(89056, 0.451389014720916748, 1.95000004768371582, 0, 31478),
(89430, 0.416666001081466674, 1.799999952316284179, 0, 31478),
(89069, 0.381944000720977783, 1.649999976158142089, 0, 31478),
(89036, 0.347222000360488891, 1.5, 0, 31478),
(89039, 0.347222000360488891, 1.5, 0, 31478),
(89068, 0.381944000720977783, 1.649999976158142089, 0, 31478),
(89067, 0.347222000360488891, 1.5, 0, 31478),
(89474, 0.503471970558166503, 2.174999952316284179, 0, 31478),
(89473, 0.503471970558166503, 2.174999952316284179, 0, 31478),
(89480, 0.802699983119964599, 3.45000004768371582, 0, 31478),
(89479, 0.802699983119964599, 3.45000004768371582, 0, 31478),
(89814, 1.5, 1.875, 0, 31478),
(89818, 2.5, 3.125, 0, 31478),
(89589, 3.512029886245727539, 1.5, 0, 31478),
(89807, 2.5, 1.5, 0, 31478),
(91293, 4.077789783477783203, 3, 0, 31478),
(89590, 3.516060113906860351, 1.5, 0, 31478);

UPDATE `creature_model_info` SET `BoundingRadius`=1, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=30222;
UPDATE `creature_model_info` SET `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=30224;
UPDATE `creature_model_info` SET `BoundingRadius`=1, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=30221;
UPDATE `creature_model_info` SET `BoundingRadius`=1.459499955177307128, `CombatReach`=5.25, `VerifiedBuild`=31478 WHERE `DisplayID`=71985;
UPDATE `creature_model_info` SET `BoundingRadius`=2.265460014343261718, `CombatReach`=3.375, `VerifiedBuild`=31478 WHERE `DisplayID`=84550;
UPDATE `creature_model_info` SET `BoundingRadius`=2.779809951782226562, `CombatReach`=2, `VerifiedBuild`=31478 WHERE `DisplayID`=84681;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=55913;
UPDATE `creature_model_info` SET `BoundingRadius`=0.336600005626678466, `CombatReach`=1.649999976158142089, `VerifiedBuild`=31478 WHERE `DisplayID`=88220;
UPDATE `creature_model_info` SET `BoundingRadius`=1.445129990577697753, `VerifiedBuild`=31478 WHERE `DisplayID`=23320;
UPDATE `creature_model_info` SET `BoundingRadius`=1.878659963607788085, `CombatReach`=1.299999952316284179, `VerifiedBuild`=31478 WHERE `DisplayID`=23322;
UPDATE `creature_model_info` SET `BoundingRadius`=2.167690038681030273, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=23317;
UPDATE `creature_model_info` SET `BoundingRadius`=0.454452008008956909, `CombatReach`=0.524999976158142089, `VerifiedBuild`=31478 WHERE `DisplayID`=86982;
UPDATE `creature_model_info` SET `BoundingRadius`=0.584295988082885742, `CombatReach`=0.675000011920928955, `VerifiedBuild`=31478 WHERE `DisplayID`=40357;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81245;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81268;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=78991;
UPDATE `creature_model_info` SET `BoundingRadius`=0.49599999189376831, `CombatReach`=1.60000002384185791, `VerifiedBuild`=31478 WHERE `DisplayID`=26818;
UPDATE `creature_model_info` SET `BoundingRadius`=0.688049972057342529, `CombatReach`=2.474999904632568359, `VerifiedBuild`=31478 WHERE `DisplayID`=75839;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=32313;
UPDATE `creature_model_info` SET `BoundingRadius`=0.333600014448165893, `CombatReach`=1.20000004768371582, `VerifiedBuild`=31478 WHERE `DisplayID`=31539;
UPDATE `creature_model_info` SET `BoundingRadius`=1.215000033378601074, `CombatReach`=4.050000190734863281, `VerifiedBuild`=31478 WHERE `DisplayID`=36714;
UPDATE `creature_model_info` SET `BoundingRadius`=2.105390071868896484, `VerifiedBuild`=31478 WHERE `DisplayID`=31508;
UPDATE `creature_model_info` SET `BoundingRadius`=1.930250048637390136, `VerifiedBuild`=31478 WHERE `DisplayID`=31510;
UPDATE `creature_model_info` SET `BoundingRadius`=3.008300065994262695, `CombatReach`=2.40000009536743164, `VerifiedBuild`=31478 WHERE `DisplayID`=34652;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=1, `VerifiedBuild`=31478 WHERE `DisplayID`=20138;
UPDATE `creature_model_info` SET `BoundingRadius`=2.475640058517456054, `CombatReach`=2.099999904632568359, `VerifiedBuild`=31478 WHERE `DisplayID`=86962;
UPDATE `creature_model_info` SET `BoundingRadius`=3.760380029678344726, `CombatReach`=3, `VerifiedBuild`=31478 WHERE `DisplayID`=39377;
UPDATE `creature_model_info` SET `BoundingRadius`=1.255159974098205566, `CombatReach`=1.875, `VerifiedBuild`=31478 WHERE `DisplayID`=35489;
UPDATE `creature_model_info` SET `BoundingRadius`=3.124989986419677734, `CombatReach`=2, `VerifiedBuild`=31478 WHERE `DisplayID`=52694;
UPDATE `creature_model_info` SET `BoundingRadius`=3.124989986419677734, `CombatReach`=2, `VerifiedBuild`=31478 WHERE `DisplayID`=52696;
UPDATE `creature_model_info` SET `BoundingRadius`=1.10000002384185791, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=43277;
UPDATE `creature_model_info` SET `BoundingRadius`=0.611042022705078125, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=39467;
UPDATE `creature_model_info` SET `BoundingRadius`=0.611042022705078125, `VerifiedBuild`=31478 WHERE `DisplayID`=39458;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=1141;
UPDATE `creature_model_info` SET `BoundingRadius`=1.10000002384185791, `CombatReach`=2.75, `VerifiedBuild`=31478 WHERE `DisplayID`=40155;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=52601;
UPDATE `creature_model_info` SET `BoundingRadius`=0.695363998413085937, `VerifiedBuild`=31478 WHERE `DisplayID`=52598;
UPDATE `creature_model_info` SET `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=65390;
UPDATE `creature_model_info` SET `BoundingRadius`=1, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=44005;
UPDATE `creature_model_info` SET `BoundingRadius`=0.930000007152557373, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=40120;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=64016;
UPDATE `creature_model_info` SET `BoundingRadius`=0.620000004768371582, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=40121;
UPDATE `creature_model_info` SET `BoundingRadius`=0.195299997925758361, `CombatReach`=0.629999995231628417, `VerifiedBuild`=31478 WHERE `DisplayID`=84157;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80910;
UPDATE `creature_model_info` SET `BoundingRadius`=0.150000005960464477, `CombatReach`=0.150000005960464477, `VerifiedBuild`=31478 WHERE `DisplayID`=44537;
UPDATE `creature_model_info` SET `BoundingRadius`=0.579842984676361083, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=76629;
UPDATE `creature_model_info` SET `BoundingRadius`=2.004430055618286132, `CombatReach`=3, `VerifiedBuild`=31478 WHERE `DisplayID`=83052;
UPDATE `creature_model_info` SET `BoundingRadius`=0.724337995052337646, `VerifiedBuild`=31478 WHERE `DisplayID`=62862;
UPDATE `creature_model_info` SET `BoundingRadius`=0.869204998016357421, `VerifiedBuild`=31478 WHERE `DisplayID`=52600;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=84893;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=40093;
UPDATE `creature_model_info` SET `BoundingRadius`=0.208000004291534423, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=88213;
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=88216;
UPDATE `creature_model_info` SET `BoundingRadius`=0.259999990463256835, `CombatReach`=1.875, `VerifiedBuild`=31478 WHERE `DisplayID`=88235;
UPDATE `creature_model_info` SET `BoundingRadius`=3.055210113525390625, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=46074;
UPDATE `creature_model_info` SET `BoundingRadius`=1.680369973182678222, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=39466;
UPDATE `creature_model_info` SET `BoundingRadius`=1.680369973182678222, `VerifiedBuild`=31478 WHERE `DisplayID`=39468;
UPDATE `creature_model_info` SET `BoundingRadius`=0.228799998760223388, `CombatReach`=1.649999976158142089, `VerifiedBuild`=31478 WHERE `DisplayID`=88218;
UPDATE `creature_model_info` SET `BoundingRadius`=2, `CombatReach`=2, `VerifiedBuild`=31478 WHERE `DisplayID`=32542;
UPDATE `creature_model_info` SET `BoundingRadius`=0.371699988842010498, `CombatReach`=0.314999997615814208, `VerifiedBuild`=31478 WHERE `DisplayID`=40126;
UPDATE `creature_model_info` SET `BoundingRadius`=1.828490018844604492, `CombatReach`=2.0625, `VerifiedBuild`=31478 WHERE `DisplayID`=85948;
UPDATE `creature_model_info` SET `BoundingRadius`=1.440629959106445312, `CombatReach`=1.625, `VerifiedBuild`=31478 WHERE `DisplayID`=85946;
UPDATE `creature_model_info` SET `BoundingRadius`=1.329810023307800292, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=35826;
UPDATE `creature_model_info` SET `BoundingRadius`=1.662260055541992187, `CombatReach`=1.875, `VerifiedBuild`=31478 WHERE `DisplayID`=85934;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=87502;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81479;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=87509;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=87501;
UPDATE `creature_model_info` SET `BoundingRadius`=1, `CombatReach`=1.25, `VerifiedBuild`=31478 WHERE `DisplayID`=40001;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8197060227394104, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=41681;
UPDATE `creature_model_info` SET `BoundingRadius`=3, `CombatReach`=4.5, `VerifiedBuild`=31478 WHERE `DisplayID`=44784;
UPDATE `creature_model_info` SET `BoundingRadius`=1.432289958000183105, `CombatReach`=3, `VerifiedBuild`=31478 WHERE `DisplayID`=44810;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=41960;
UPDATE `creature_model_info` SET `BoundingRadius`=2.762029886245727539, `CombatReach`=2, `VerifiedBuild`=31478 WHERE `DisplayID`=15137;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306255996227264404, `CombatReach`=0.800000011920928955, `VerifiedBuild`=31478 WHERE `DisplayID`=2176;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=87500;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=32790;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=42407;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=44778;
UPDATE `creature_model_info` SET `BoundingRadius`=0.6875, `CombatReach`=1.440000057220458984, `VerifiedBuild`=31478 WHERE `DisplayID`=42240;
UPDATE `creature_model_info` SET `BoundingRadius`=1.93341994285583496, `CombatReach`=1.399999976158142089, `VerifiedBuild`=31478 WHERE `DisplayID`=77905;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306255996227264404, `CombatReach`=0.800000011920928955, `VerifiedBuild`=31478 WHERE `DisplayID`=1418;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=72013;

DELETE FROM `npc_vendor` WHERE (`entry`=143761 AND `item`=170263 AND `ExtendedCost`=6302 AND `type`=1) OR (`entry`=143761 AND `item`=163761 AND `ExtendedCost`=6304 AND `type`=1) OR (`entry`=143761 AND `item`=163759 AND `ExtendedCost`=6304 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(143761, 3, 170263, 0, 6302, 1, 0, 1, 31478), -- -Unknown-
(143761, 2, 163761, 0, 6304, 1, 0, 1, 31478), -- -Unknown-
(143761, 1, 163759, 0, 6304, 1, 0, 1, 31478); -- -Unknown-


DELETE FROM `creature_equip_template` WHERE (`CreatureID`=139659 AND `ID`=1) OR (`CreatureID`=139669 AND `ID`=1) OR (`CreatureID`=139662 AND `ID`=1) OR (`CreatureID`=146863 AND `ID`=1) OR (`CreatureID`=146864 AND `ID`=1) OR (`CreatureID`=139675 AND `ID`=1) OR (`CreatureID`=139655 AND `ID`=1) OR (`CreatureID`=123286 AND `ID`=1) OR (`CreatureID`=139758 AND `ID`=1) OR (`CreatureID`=151679 AND `ID`=1) OR (`CreatureID`=129000 AND `ID`=1) OR (`CreatureID`=138624 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(139659, 1, 66247, 0, 0, 0, 0, 0, 0, 0, 0), -- Dampscale Oracle
(139669, 1, 25331, 0, 0, 0, 0, 0, 0, 0, 0), -- Shaman Garmr
(139662, 1, 59558, 0, 0, 0, 0, 0, 0, 0, 0), -- Dampscale Raincaller
(146863, 1, 60639, 0, 0, 60639, 0, 0, 0, 0, 0), -- Mistscorn Ravager
(146864, 1, 116639, 0, 0, 0, 0, 0, 0, 0, 0), -- Mistscorn Earthbinder
(139675, 1, 65468, 0, 0, 0, 0, 0, 0, 0, 0), -- Fathom-Seeker
(139655, 1, 59558, 0, 0, 0, 0, 0, 0, 0, 0), -- Coldlight Seer
(123286, 1, 54824, 0, 0, 54824, 0, 0, 159657, 0, 0), -- Southsea Gambler
(139758, 1, 108726, 0, 0, 0, 0, 0, 159657, 0, 0), -- Annie Two-Pistols
(151679, 1, 1394, 0, 0, 0, 0, 0, 0, 0, 0), -- Stinkfur Thumper
(129000, 1, 54825, 0, 0, 0, 0, 0, 0, 0, 0), -- Southsea Brawler
(138624, 1, 56382, 0, 0, 0, 0, 0, 0, 0, 0); -- Amathet Champion

UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=35, `npcflag`=32768, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=126141; -- Spirit Healer
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2097152, `unit_flags3`=32 WHERE `entry`=136051; -- Fathomus
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2022, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags3`=32 WHERE `entry`=140996; -- Deepbore
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=4227072, `unit_flags3`=33 WHERE `entry`=123266; -- Frost Patch
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `BaseAttackTime`=2000, `unit_flags3`=33 WHERE `entry`=122076; -- Snow Orb
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=130299; -- Droplet
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags3`=32 WHERE `entry`=139660; -- Dampscale Murloc
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags3`=32 WHERE `entry`=139659; -- Dampscale Oracle
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags`=33600, `unit_flags3`=32 WHERE `entry`=139669; -- Shaman Garmr
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags3`=32 WHERE `entry`=139662; -- Dampscale Raincaller
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=140841; -- Snickering Ripple
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=140838; -- Mischievous Flood
UPDATE `creature_template` SET `gossip_menu_id`=18747 WHERE `entry`=143967; -- -Unknown-
UPDATE `creature_template` SET `npcflag`=16777216 WHERE `entry`=55370; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags`=33555202, `unit_flags3`=32 WHERE `entry`=140993; -- Darktunnel Ambusher
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags2`=2097152, `unit_flags3`=32 WHERE `entry`=139675; -- Fathom-Seeker
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `speed_run`=1.154289960861206054, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=139655; -- Coldlight Seer
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `speed_run`=1.154289960861206054, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=132923; -- Coldlight Murloc
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `speed_run`=1.154289960861206054, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=139652; -- Coldlight Coastrunner
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=114, `RangeAttackTime`=0, `unit_flags`=33555200, `dynamicflags`=1 WHERE `entry`=47319; -- Leap Target
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `BaseAttackTime`=2000, `unit_flags2`=4, `unit_flags3`=33 WHERE `entry`=138516; -- Twilight Evolutionist
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags3`=32 WHERE `entry`=138499; -- Twilight Dragonkin
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags3`=32 WHERE `entry`=138500; -- Twilight Scalesister
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags3`=32, `HoverHeight`=3.599999904632568359 WHERE `entry`=138498; -- Twilight Drake
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags3`=32 WHERE `entry`=138501; -- Twilight Whelp
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags3`=32 WHERE `entry`=138497; -- Twilight Scalesworn
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags3`=32, `HoverHeight`=4.5 WHERE `entry`=138511; -- Azurescale
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=135962; -- Crag Rager
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=140095; -- Mudsnout Gorer
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=140094; -- Mudsnout Thornback
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=132820; -- Mudsnout Piglet
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `speed_run`=1.154289960861206054, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=33 WHERE `entry`=123146; -- Torn Spirit
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=33 WHERE `entry`=132807; -- Zian-Ti Quilen
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=140295; -- Snowfur Pup
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=140292; -- Snowfur Alpha
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=140293; -- Snowfur Snarler
UPDATE `creature_template` SET `faction`=1924, `speed_walk`=0.400000005960464477, `speed_run`=0.142857000231742858, `BaseAttackTime`=2000, `unit_flags2`=2052, `unit_flags3`=33 WHERE `entry`=137958; -- Crimsonwood Kit
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `speed_run`=1.154289960861206054, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=33 WHERE `entry`=138969; -- Zian-Ti Spirit
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=137951; -- Skittish Squirrel
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=140336; -- Nightscale Wind Serpent
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=132868; -- Congealed Azerite
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=33 WHERE `entry`=131311; -- Unleashed Azerite
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=137955; -- Woodlands Recluse
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `npcflag`=17179869184, `speed_run`=1.365210175514221191, `BaseAttackTime`=2000, `unit_flags3`=32 WHERE `entry`=136532; -- Sylvester
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=140074; -- Sharptooth
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=132819; -- Rustpelt Pup
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=140067; -- Rustpelt Alpha
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=140068; -- Rustpelt Snarler
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=123286; -- Southsea Gambler
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=139758; -- Annie Two-Pistols
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags`=33555202, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=132912; -- Scouted Azerite
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=129000; -- Southsea Brawler
UPDATE `creature_template` SET `faction`=190, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=137947; -- Scavenging Rat
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=1073743872, `unit_flags3`=1 WHERE `entry`=135182; -- Azerite Energy
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2097152, `unit_flags3`=32 WHERE `entry`=138635; -- Commander Husan
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags2`=4, `unit_flags3`=33 WHERE `entry`=138633; -- Brother Maat
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=138628; -- Amathet Priest
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=138624; -- Amathet Champion
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2978, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141881; -- Sailor
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=17179869184, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=140619; -- Coastal Fathomjaw
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2978, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141899; -- Sailor
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2978, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141880; -- Sailor
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=140337; -- Nightscale Hatchling
UPDATE `creature_template` SET `faction`=35, `npcflag`=128, `BaseAttackTime`=2000 WHERE `entry`=143761; -- Stick-In-The-Mud
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=3000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=122264; -- Elder Spineshell
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=122263; -- Spineshell Snapjaw
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=136598; -- Sand Stinger
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2978, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=1073743872, `unit_flags3`=1 WHERE `entry`=136594; -- Captain Rez'okun
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=140334; -- Nightscale Coilfang
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2978, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141875; -- Sailor
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=2048 WHERE `entry`=132925; -- Scouted Azerite
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=137950; -- Beach Scuttler
UPDATE `creature_template` SET `faction`=190, `npcflag`=17179869184, `speed_walk`=0.400000005960464477, `speed_run`=0.142857000231742858, `BaseAttackTime`=2000, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=136599; -- Mire Whelk
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1924, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=122266; -- Spineshell Turtle
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1924, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=32 WHERE `entry`=124581; -- Spineshell Snapper
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags3`=32 WHERE `entry`=140335; -- Nightscale Screecher
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=137946; -- Sand Mouse


REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(136532, @GROUP_ID+0, @ID+0, 'You! Want to help a guy out? I promise I am NOT with the Legion anymore. Those guys are gone. It\'s just me now, Sylvester the Honest Imp.', 14, 0, 100, 0, 0, 0, 159651, 'Sylvester to Player'),
(138511, @GROUP_ID+0, @ID+0, 'We did not... choose our fate...', 12, 0, 100, 0, 0, 0, 159074, 'Azurescale'),
(138511, @GROUP_ID+1, @ID+0, 'You march towards the death of your world... blinded by arrogance...', 12, 0, 100, 0, 0, 0, 159080, 'Azurescale'),
(138516, @GROUP_ID+0, @ID+0, 'We did not... choose our fate...', 12, 0, 100, 0, 0, 0, 159074, 'Twilight Evolutionist'),
(140838, @GROUP_ID+0, @ID+0, 'Got you!', 14, 0, 100, 0, 0, 0, 159330, 'Mischievous Flood'),
(143761, @GROUP_ID+0, @ID+0, 'I bring goods to trade! Much luck they bring you!', 12, 0, 100, 0, 0, 0, 161873, 'Stick-In-The-Mud to Player');

DELETE FROM `quest_template` WHERE `ID`=54913;
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `ScalingFactionGroup`, `MaxScalingLevel`, `QuestPackageID`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardDisplaySpell1`, `RewardDisplaySpell2`, `RewardDisplaySpell3`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(54913, 2, -1, 0, 120, 0, 120, -406, 107, 0, 0, 1, 1, 23400, 1, 1, 10800, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 34603016, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 7, 0, 0, 'Spark of Genius', 'Meet Mimiron at the Inventor\'s Library in the Storm Peaks.', '$n, I have wondrous news!$B$BA recent energy signature tripped several detection relays I installed after that unfortunate incident with Sargeras.$B$BI require further data to know for certain, but initial diagnostics suggest that these energies are coming from Hati! We might still be able to save him!$B$BHati\'s spirit is still bound to your own, so I\'ll need your help. Meet me at my library in the Storm Peaks right away!', '', 'Meet Mimiron at the Inventor\'s Library in the Storm Peaks.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 31478); -- -Unknown-


DELETE FROM `creature_template` WHERE `entry` IN (147068 /*Azerite Fissure*/, 145399 /*Wild Starcaller*/, 149331 /*Luminous Azerite*/, 151029 /*Thornspeaker Tavery*/, 152714 /*A.T.O.M.I.K. Mk. II*/, 148843 /*Everburning Treant*/, 147188 /*Azerite Extractor*/, 147192 /*Azerite Extractor*/, 151096 /*Hati*/, 151674 /*Stinkfur Hopling*/, 151676 /*Stinkfur Hooligan*/, 151679 /*Stinkfur Thumper*/, 151680 /*Orangetooth*/, 146116 /*Needleback Forager*/, 146118 /*Territorial Needleback*/, 146178 /*Azurespine*/, 146816 /*Sir Barton Brigham*/, 147932 /*Agitated Azershard*/, 147933 /*Geoactive Azershard*/, 150719 /*Detected Azerite Pocket*/, 147936 /*Azergem Shardback*/, 147938 /*Azergem Crystalback*/, 146827 /*Feral Dog*/, 147948 /*Coagulated Azerite*/, 147965 /*Volatile Azerite*/, 146854 /*Stella Darkpaw*/, 147968 /*Agitated Azerite*/, 146863 /*Mistscorn Ravager*/, 146864 /*Mistscorn Earthbinder*/, 153626 /*Well of Existence*/, 151978 /*Waterstrider*/, 145298 /*Feral Hungerer*/, 145304 /*Feral Strangler*/, 151988 /*Masked Tanuki*/, 145305 /*Feral Hulk*/, 151989 /*Siftworm*/, 151990 /*Honeykeeper*/, 144772 /*Lady Tamakeen*/, 144782 /*Brother Bruen*/, 154834 /*Daggertooth Frenzy*/, 145372 /*Wild Mooncaller*/);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `VerifiedBuild`) VALUES
(147068, 0, 0, 'Azerite Fissure', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 10, 17826816, 16, 1, 1, 0, 0, 31478), -- Azerite Fissure
(145399, 0, 0, 'Wild Starcaller', '', NULL, NULL, NULL, 7, 0, 0, 2, 0, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 31478), -- Wild Starcaller
(149331, 0, 0, 'Luminous Azerite', '', NULL, NULL, NULL, 7, 0, 0, 2, 0, 0, 0, 1, 0, 4, 0, 0, 6.5, 1, 0, 0, 31478), -- Luminous Azerite
(151029, 0, 0, 'Thornspeaker Tavery', '', 'Thornspeakers', NULL, NULL, 7, 0, 2950, 4, 0, 0, 0, 0, 0, 7, 32, 2097152, 2, 1, 0, 115, 31478), -- Thornspeaker Tavery
(152714, 0, 0, 'A.T.O.M.I.K. Mk. II', '', 'Remote Artillery Unit', NULL, NULL, 7, 0, 0, 2, 0, 0, 0, 0, 0, 9, 8, 0, 4, 1, 0, 164, 31478), -- A.T.O.M.I.K. Mk. II
(148843, 0, 0, 'Everburning Treant', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 12, 0, 0, 1, 1, 0, 0, 31478), -- Everburning Treant
(147188, 0, 0, 'Azerite Extractor', '', NULL, NULL, NULL, 7, 0, 3366, 1, 0, 0, 0, 1, 0, 7, 537919504, 0, 1, 1, 0, 0, 31478), -- Azerite Extractor
(147192, 0, 0, 'Azerite Extractor', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 9, 1611661328, 6, 1, 1, 0, 0, 31478), -- Azerite Extractor
(151096, 0, 0, 'Hati', '', NULL, NULL, NULL, 6, 0, 0, 1, 0, 0, 0, 0, 46, 1, 69633, 0, 1.5, 1, 0, 0, 31478), -- Hati
(151674, 0, 0, 'Stinkfur Hopling', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 6, 0, 7, 0, 0, 0.200000002980232238, 1, 0, 0, 31478), -- Stinkfur Hopling
(151676, 0, 0, 'Stinkfur Hooligan', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 7, 0, 0, 1.799999952316284179, 1, 0, 0, 31478), -- Stinkfur Hooligan
(151679, 0, 0, 'Stinkfur Thumper', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 31478), -- Stinkfur Thumper
(151680, 0, 0, 'Orangetooth', '', 'The Carrot Hoarder', NULL, NULL, 7, 0, 2952, 1, 0, 0, 0, 4, 0, 7, 0, 0, 9, 1, 0, 144, 31478), -- Orangetooth
(146116, 0, 0, 'Needleback Forager', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 31478), -- Needleback Forager
(146118, 0, 0, 'Territorial Needleback', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1.799999952316284179, 1, 0, 0, 31478), -- Territorial Needleback
(146178, 0, 0, 'Azurespine', '', NULL, NULL, NULL, 7, 0, 2952, 1, 0, 0, 0, 2, 0, 1, 0, 0, 6, 1, 0, 0, 31478), -- Azurespine
(146816, 0, 0, 'Sir Barton Brigham', '', NULL, NULL, NULL, 7, 0, 2952, 1, 0, 0, 0, 4, 0, 7, 0, 0, 5, 1, 0, 0, 31478), -- Sir Barton Brigham
(147932, 0, 0, 'Agitated Azershard', '', NULL, NULL, NULL, 7, 0, 0, 2, 0, 0, 0, 0, 0, 4, 0, 0, 1.10000002384185791, 1, 0, 0, 31478), -- Agitated Azershard
(147933, 0, 0, 'Geoactive Azershard', '', NULL, NULL, NULL, 7, 0, 0, 2, 0, 0, 0, 0, 0, 4, 0, 0, 1.75, 1, 0, 0, 31478), -- Geoactive Azershard
(150719, 0, 0, 'Detected Azerite Pocket', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 10, 17826816, 16, 1, 1, 0, 0, 31478), -- Detected Azerite Pocket
(147936, 0, 0, 'Azergem Shardback', '', NULL, NULL, NULL, 7, 0, 0, 2, 0, 0, 0, 0, 55, 4, 0, 0, 1.85000002384185791, 1, 0, 0, 31478), -- Azergem Shardback
(147938, 0, 0, 'Azergem Crystalback', '', NULL, NULL, NULL, 7, 0, 0, 2, 0, 0, 0, 1, 55, 4, 0, 0, 8, 1, 0, 0, 31478), -- Azergem Crystalback
(146827, 0, 0, 'Feral Dog', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1.10000002384185791, 1, 0, 0, 31478), -- Feral Dog
(147948, 0, 0, 'Coagulated Azerite', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 6, 24, 1, 0, 0, 0.699999988079071044, 1, 0, 0, 31478), -- Coagulated Azerite
(147965, 0, 0, 'Volatile Azerite', '', NULL, NULL, NULL, 7, 0, 0, 2, 0, 0, 0, 1, 0, 4, 0, 0, 6.5, 1, 0, 0, 31478), -- Volatile Azerite
(146854, 0, 0, 'Stella Darkpaw', '', NULL, NULL, NULL, 7, 0, 2952, 2, 0, 0, 0, 2, 0, 7, 0, 0, 12, 1, 0, 0, 31478), -- Stella Darkpaw
(147968, 0, 0, 'Agitated Azerite', '', NULL, NULL, NULL, 7, 0, 0, 2, 0, 0, 0, 0, 0, 4, 0, 0, 1.10000002384185791, 1, 0, 0, 31478), -- Agitated Azerite
(146863, 0, 0, 'Mistscorn Ravager', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 7, 0, 0, 2.5, 1, 0, 0, 31478), -- Mistscorn Ravager
(146864, 0, 0, 'Mistscorn Earthbinder', '', NULL, NULL, NULL, 7, 0, 0, 2, 0, 0, 0, 0, 0, 7, 0, 0, 3, 1, 0, 0, 31478), -- Mistscorn Earthbinder
(153626, 0, 0, 'Well of Existence', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 10, 537919488, 0, 1, 1, 0, 156, 31478), -- Well of Existence
(151978, 0, 0, 'Waterstrider', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 6, 0, 1, 0, 0, 0.5, 1, 0, 0, 31478), -- Waterstrider
(145298, 0, 0, 'Feral Hungerer', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 7, 0, 0, 1.10000002384185791, 1, 0, 0, 31478), -- Feral Hungerer
(145304, 0, 0, 'Feral Strangler', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 7, 0, 0, 1.5, 1, 0, 0, 31478), -- Feral Strangler
(151988, 0, 0, 'Masked Tanuki', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 8, 0, 0, 1, 1, 0, 0, 31478), -- Masked Tanuki
(145305, 0, 0, 'Feral Hulk', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 1, 0, 7, 0, 0, 5.75, 1, 0, 0, 31478), -- Feral Hulk
(151989, 0, 0, 'Siftworm', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 8, 0, 0, 1, 1, 0, 0, 31478), -- Siftworm
(151990, 0, 0, 'Honeykeeper', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 0, 0, 8, 0, 0, 1, 1, 0, 0, 31478), -- Honeykeeper
(144772, 0, 0, 'Lady Tamakeen', '', 'Dark Iron Demolishers', NULL, NULL, 7, 0, 2950, 1, 0, 0, 0, 0, 0, 7, 32, 2097152, 2.5, 1, 0, 115, 31478), -- Lady Tamakeen
(144782, 0, 0, 'Brother Bruen', '', 'Dark Iron Demolishers', NULL, NULL, 7, 0, 2950, 4, 0, 0, 0, 0, 0, 7, 32, 2097152, 2, 1, 0, 115, 31478), -- Brother Bruen
(154834, 0, 0, 'Daggertooth Frenzy', '', NULL, NULL, NULL, 4, 0, 0, 1, 0, 0, 0, 0, 0, 12, 0, 0, 1, 1, 0, 76, 31478), -- Daggertooth Frenzy
(145372, 0, 0, 'Wild Mooncaller', '', NULL, NULL, NULL, 7, 0, 0, 2, 0, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 31478); -- Wild Mooncaller


DELETE FROM `creature_template_model` WHERE (`CreatureID`=148843 AND `Idx`=0) OR (`CreatureID`=144782 AND `Idx`=0) OR (`CreatureID`=145304 AND `Idx`=1) OR (`CreatureID`=145304 AND `Idx`=0) OR (`CreatureID`=146854 AND `Idx`=0) OR (`CreatureID`=145305 AND `Idx`=1) OR (`CreatureID`=145305 AND `Idx`=0) OR (`CreatureID`=146816 AND `Idx`=0) OR (`CreatureID`=146827 AND `Idx`=2) OR (`CreatureID`=146827 AND `Idx`=1) OR (`CreatureID`=146827 AND `Idx`=0) OR (`CreatureID`=145298 AND `Idx`=1) OR (`CreatureID`=145298 AND `Idx`=0) OR (`CreatureID`=145399 AND `Idx`=1) OR (`CreatureID`=145399 AND `Idx`=0) OR (`CreatureID`=145372 AND `Idx`=1) OR (`CreatureID`=145372 AND `Idx`=0) OR (`CreatureID`=144772 AND `Idx`=0) OR (`CreatureID`=151096 AND `Idx`=0) OR (`CreatureID`=154834 AND `Idx`=0) OR (`CreatureID`=153626 AND `Idx`=0) OR (`CreatureID`=146863 AND `Idx`=1) OR (`CreatureID`=146863 AND `Idx`=0) OR (`CreatureID`=146864 AND `Idx`=1) OR (`CreatureID`=146864 AND `Idx`=0) OR (`CreatureID`=147933 AND `Idx`=0) OR (`CreatureID`=149331 AND `Idx`=0) OR (`CreatureID`=147965 AND `Idx`=0) OR (`CreatureID`=151029 AND `Idx`=0) OR (`CreatureID`=147936 AND `Idx`=1) OR (`CreatureID`=147936 AND `Idx`=0) OR (`CreatureID`=147938 AND `Idx`=1) OR (`CreatureID`=147938 AND `Idx`=0) OR (`CreatureID`=147948 AND `Idx`=0) OR (`CreatureID`=146118 AND `Idx`=0) OR (`CreatureID`=147188 AND `Idx`=0) OR (`CreatureID`=151674 AND `Idx`=3) OR (`CreatureID`=151674 AND `Idx`=2) OR (`CreatureID`=151674 AND `Idx`=1) OR (`CreatureID`=151674 AND `Idx`=0) OR (`CreatureID`=146178 AND `Idx`=0) OR (`CreatureID`=146116 AND `Idx`=0) OR (`CreatureID`=151989 AND `Idx`=0) OR (`CreatureID`=147932 AND `Idx`=0) OR (`CreatureID`=147968 AND `Idx`=0) OR (`CreatureID`=147068 AND `Idx`=1) OR (`CreatureID`=147068 AND `Idx`=0) OR (`CreatureID`=151988 AND `Idx`=0) OR (`CreatureID`=151680 AND `Idx`=0) OR (`CreatureID`=151679 AND `Idx`=0) OR (`CreatureID`=151676 AND `Idx`=0) OR (`CreatureID`=150719 AND `Idx`=1) OR (`CreatureID`=150719 AND `Idx`=0) OR (`CreatureID`=151990 AND `Idx`=0) OR (`CreatureID`=152714 AND `Idx`=0) OR (`CreatureID`=147192 AND `Idx`=0) OR (`CreatureID`=151978 AND `Idx`=0);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(148843, 0, 90140, 0.200000002980232238, 1, 31478), -- Everburning Treant
(144782, 0, 88828, 1, 1, 31478), -- Brother Bruen
(145304, 1, 89041, 1.10000002384185791, 1, 31478), -- Feral Strangler
(145304, 0, 89040, 1.10000002384185791, 1, 31478), -- Feral Strangler
(146854, 0, 89447, 2, 1, 31478), -- Stella Darkpaw
(145305, 1, 89057, 1.299999952316284179, 1, 31478), -- Feral Hulk
(145305, 0, 89056, 1.299999952316284179, 1, 31478), -- Feral Hulk
(146816, 0, 89430, 1.20000004768371582, 1, 31478), -- Sir Barton Brigham
(146827, 2, 30224, 0.899999976158142089, 1, 31478), -- Feral Dog
(146827, 1, 30222, 0.899999976158142089, 1, 31478), -- Feral Dog
(146827, 0, 30221, 0.899999976158142089, 1, 31478), -- Feral Dog
(145298, 1, 89039, 1, 1, 31478), -- Feral Hungerer
(145298, 0, 89036, 1, 1, 31478), -- Feral Hungerer
(145399, 1, 89069, 1.10000002384185791, 1, 31478), -- Wild Starcaller
(145399, 0, 89068, 1.10000002384185791, 1, 31478), -- Wild Starcaller
(145372, 1, 89067, 1, 1, 31478), -- Wild Mooncaller
(145372, 0, 89066, 1, 1, 31478), -- Wild Mooncaller
(144772, 0, 88824, 1, 1, 31478), -- Lady Tamakeen
(151096, 0, 70574, 1, 1, 31478), -- Hati
(154834, 0, 90944, 0.100000001490116119, 1, 31478), -- Daggertooth Frenzy
(153626, 0, 91860, 1, 1, 31478), -- Well of Existence
(146863, 1, 89474, 1.45000004768371582, 1, 31478), -- Mistscorn Ravager
(146863, 0, 89473, 1.45000004768371582, 1, 31478), -- Mistscorn Ravager
(146864, 1, 89480, 1.149999976158142089, 1, 31478), -- Mistscorn Earthbinder
(146864, 0, 89479, 1.149999976158142089, 1, 31478), -- Mistscorn Earthbinder
(147933, 0, 89807, 3, 1, 31478), -- Geoactive Azershard
(149331, 0, 89807, 3, 1, 31478), -- Luminous Azerite
(147965, 0, 83052, 2, 1, 31478), -- Volatile Azerite
(151029, 0, 91011, 1, 1, 31478), -- Thornspeaker Tavery
(147936, 1, 34068, 1.5, 0, 31478), -- Azergem Shardback
(147936, 0, 89814, 1.5, 1, 31478), -- Azergem Shardback
(147938, 1, 34068, 3, 0, 31478), -- Azergem Crystalback
(147938, 0, 89818, 3, 1, 31478), -- Azergem Crystalback
(147948, 0, 84157, 0.60000002384185791, 1, 31478), -- Coagulated Azerite
(146118, 0, 40121, 2, 1, 31478), -- Territorial Needleback
(147188, 0, 11686, 1, 1, 31478), -- Azerite Extractor
(151674, 3, 39468, 0.400000005960464477, 1, 31478), -- Stinkfur Hopling
(151674, 2, 39458, 0.400000005960464477, 1, 31478), -- Stinkfur Hopling
(151674, 1, 39466, 0.400000005960464477, 1, 31478), -- Stinkfur Hopling
(151674, 0, 39467, 0.400000005960464477, 1, 31478), -- Stinkfur Hopling
(146178, 0, 40120, 4, 1, 31478), -- Azurespine
(146116, 0, 40121, 1.299999952316284179, 1, 31478), -- Needleback Forager
(151989, 0, 44537, 1, 1, 31478), -- Siftworm
(147932, 0, 89807, 2.5, 1, 31478), -- Agitated Azershard
(147968, 0, 83052, 1, 1, 31478), -- Agitated Azerite
(147068, 1, 32542, 1, 1, 31478), -- Azerite Fissure
(147068, 0, 56187, 1, 0, 31478), -- Azerite Fissure
(151988, 0, 40093, 1, 1, 31478), -- Masked Tanuki
(151680, 0, 46074, 1, 1, 31478), -- Orangetooth
(151679, 0, 39466, 1.10000002384185791, 1, 31478), -- Stinkfur Thumper
(151676, 0, 39468, 1.10000002384185791, 1, 31478), -- Stinkfur Hooligan
(150719, 1, 32542, 1, 1, 31478), -- Detected Azerite Pocket
(150719, 0, 56187, 1, 0, 31478), -- Detected Azerite Pocket
(151990, 0, 40126, 0.699999988079071044, 1, 31478), -- Honeykeeper
(152714, 0, 91293, 1, 1, 31478), -- A.T.O.M.I.K. Mk. II
(147192, 0, 89590, 1, 1, 31478), -- Azerite Extractor
(151978, 0, 40001, 1, 1, 31478); -- Waterstrider


DELETE FROM `gameobject_template` WHERE `entry` IN (326170 /*Abandoned Charm*/, 290910 /*Plundered Azerite*/, 326232 /*Elemental Bindings*/, 286987 /*Frozen Chest*/, 296997 /*Canoe*/, 273295 /*Azerite Crystal*/, 270945 /*Giant Clam*/, 312057 /*Horde Flagship*/, 312058 /*Horde Transport*/, 307747 /*Airship Vol'dun*/, 282482 /*Zandalari Boat*/, 312060 /*Horde Gunship*/, 281581 /*Rack of Ribs*/, 277579 /*Carrot*/, 282628 /*Sand Pile*/, 290911 /*Sack of Azerite*/, 277525 /*Wanderer's Respite*/, 290912 /*Bag of Azerite*/, 326189 /*Приманка на палочке*/, 271828 /*Stranglevines*/, 277578 /*Carrot*/, 290801 /*Twilight Hoard*/, 291123 /*Twilight Cache*/, 326192 /*326192*/, 281896 /*Azerite Detector*/, 270914 /*Reinforced Chest*/, 287447 /*Strangling Vines*/, 277449 /*277449*/, 290452 /*Seafarer's Dubloon*/, 273296 /*Azerite Shard*/, 284423 /*Glowing Seed*/, 311480 /*Azerite Seam*/, 311481 /*Azerite Crack*/, 311482 /*Azerite Crack*/, 311483 /*Azerite Gas*/, 284424 /*Giant Flower*/, 277577 /*Striped Melon*/, 289437 /*Azerite Crystal*/, 303199 /*Doodad_8HU_KulTiras_ShipMedium_IslandGate001*/, 326016 /*XR-5P33DY Prototype Propellers*/, 277467 /*Fresh Meat*/, 295547 /*Pirate's Booty*/, 326586 /*Point Blank Cannon*/, 270912 /*Wooden Strongbox*/, 270913 /*Old Chest*/, 293703 /*Crude Boomerang*/, 326160 /*Lightcrystal*/, 296167 /*Tol'vir Cache*/, 297070 /*Portal*/, 269984 /*Sticky Starfish*/, 326009 /*Robotic Gizmo*/, 303141 /*Doodad_8TR_Zandalari_ShipMedTransport01_Gangplank_IslandGate002*/, 299039 /*Azerite Detector*/, 326056 /*Collision*/, 272644 /*Altar of the Sea*/, 289356 /*Azerite Shard*/, 303140 /*Doodad_8TR_Zandalari_ShipMedTransport01_Gangplank_IslandGate001*/, 273297 /*Azerite Chunk*/, 289359 /*Azerite Chunk*/, 273285 /*Turtle Egg*/, 286963 /*Breath of Pa'ku*/, 286962 /*Kul'Tiran Frigate*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `RequiredLevel`, `VerifiedBuild`) VALUES
(326170, 10, 13069, 'Abandoned Charm', 'lootall', 'Picking Up', '', 1.25, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 297154, 0, 0, 0, 125962, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Abandoned Charm
(290910, 10, 49756, 'Plundered Azerite', 'lootall', 'Opening', '', 3, 2906, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2970, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Plundered Azerite
(326232, 10, 45568, 'Elemental Bindings', 'lootall', 'Picking Up', '', 0.200000002980232238, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 297713, 0, 0, 0, 125962, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Elemental Bindings
(286987, 10, 8630, 'Frozen Chest', 'lootall', 'Opening', '', 1, 2905, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 1, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2970, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Frozen Chest
(296997, 10, 44134, 'Canoe', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Canoe
(273295, 10, 49212, 'Azerite Crystal', 'mine', 'Mining', '', 1, 2910, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 1, 78976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2970, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Crystal
(270945, 10, 261, 'Giant Clam', 'openhandglow', 'Prying', '', 2, 2889, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 143531, 0, 0, 0, 0, 0, 0, 0, 49081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Giant Clam
(312057, 43, 26722, 'Horde Flagship', '', '', '', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Horde Flagship
(312058, 43, 36653, 'Horde Transport', '', '', '', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Horde Transport
(307747, 43, 8254, 'Airship Vol\'dun', '', '', '', 1, 2110, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Airship Vol'dun
(282482, 43, 44473, 'Zandalari Boat', '', '', '', 1, 1916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Zandalari Boat
(312060, 43, 10688, 'Horde Gunship', '', '', '', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Horde Gunship
(281581, 10, 20297, 'Rack of Ribs', 'questinteract', 'Eating', '', 2, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263557, 0, 0, 0, 92973, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Rack of Ribs
(277579, 10, 10869, 'Carrot', 'questinteract', 'Eating', '', 0.300000011920928955, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 255124, 0, 0, 0, 92973, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Carrot
(282628, 10, 30824, 'Sand Pile', 'pickup', 'Digging', '', 1, 2848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 35059, 0, 0, 0, 0, 0, 0, 0, 56290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Sand Pile
(290911, 10, 49756, 'Sack of Azerite', 'lootall', 'Opening', '', 1.5, 2905, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 1, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2970, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Sack of Azerite
(277525, 10, 10953, 'Wanderer\'s Respite', 'cast', '', '', 1, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, 255114, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Wanderer's Respite
(290912, 10, 49910, 'Bag of Azerite', 'lootall', 'Opening', '', 1.5, 2907, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Bag of Azerite
(326189, 10, 36349, 'Bait-on-a-Stick', 'lootall', 'Selection', '', 1, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 297445, 0, 0, 0, 125962, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Приманка на палочке
(271828, 10, 48630, 'Stranglevines', 'lootall', 'Picking Up', '', 0.100000001490116119, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 267039, 0, 0, 0, 125962, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Stranglevines
(277578, 10, 11335, 'Carrot', 'questinteract', 'Eating', '', 0.300000011920928955, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 255124, 0, 0, 0, 92973, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Carrot
(290801, 10, 10588, 'Twilight Hoard', 'lootall', 'Opening', '', 1.5, 2906, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2970, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Twilight Hoard
(291123, 10, 10588, 'Twilight Cache', 'lootall', 'Opening', '', 0.75, 2905, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 1, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2970, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Twilight Cache
(326192, 10, 46129, '', 'lootall', '', '', 1.5, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 297446, 0, 0, 0, 125962, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 326192
(281896, 5, 52061, 'Azerite Detector', '', '', '', 0.699999988079071044, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Detector
(270914, 10, 49250, 'Reinforced Chest', 'lootall', 'Opening', '', 1, 2905, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 1, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2970, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Reinforced Chest
(287447, 10, 7735, 'Strangling Vines', 'picklock', 'Unlocking', '', 1, 2849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 24815, 0, 0, 0, 0, 0, 0, 0, 56320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Strangling Vines
(277449, 10, 45100, '', 'questinteract', '', '', 1.25, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 254929, 0, 0, 0, 92973, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 277449
(290452, 10, 14748, 'Seafarer\'s Dubloon', 'lootall', 'Looting', '', 0.800000011920928955, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 271688, 0, 0, 0, 108144, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Seafarer's Dubloon
(273296, 10, 48379, 'Azerite Shard', 'mine', 'Mining', '', 0.400000005960464477, 2912, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 0, 78976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Shard
(284423, 10, 22995, 'Glowing Seed', 'lootall', 'Picking Up', '', 0.400000005960464477, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 267040, 0, 0, 0, 125962, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Glowing Seed
(311480, 10, 51281, 'Azerite Seam', '', '', '', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Seam
(311481, 10, 51282, 'Azerite Crack', '', '', '', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Crack
(311482, 10, 54066, 'Azerite Crack', '', '', '', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Crack
(311483, 10, 51296, 'Azerite Gas', '', '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Gas
(284424, 10, 10242, 'Giant Flower', 'lootall', 'Picking Up', '', 0.699999988079071044, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 267043, 0, 0, 0, 125962, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Giant Flower
(277577, 10, 11220, 'Striped Melon', 'questinteract', 'Eating', '', 1.149999976158142089, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 254929, 0, 0, 0, 92973, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Striped Melon
(289437, 10, 47692, 'Azerite Crystal', 'mine', 'Mining', '', 1, 2910, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 1, 78976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2970, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Crystal
(303199, 0, 53053, 'Doodad_8HU_KulTiras_ShipMedium_IslandGate001', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Doodad_8HU_KulTiras_ShipMedium_IslandGate001
(326016, 10, 56128, 'XR-5P33DY Prototype Propellers', '', '', '', 0.5, 1635, 0, 0, 0, 0, 1, 0, 0, 0, 0, 234561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69444, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- XR-5P33DY Prototype Propellers
(277467, 10, 11649, 'Fresh Meat', 'questinteract', 'Eating', '', 0.899999976158142089, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 254929, 0, 0, 0, 92973, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Fresh Meat
(295547, 10, 25466, 'Pirate\'s Booty', 'lootall', 'Opening', '', 0.75, 2905, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 1, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2970, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Pirate's Booty
(326586, 10, 13469, 'Point Blank Cannon', 'lootall', 'Picking Up', '', 1, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 298017, 0, 0, 0, 125962, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Point Blank Cannon
(270912, 10, 49248, 'Wooden Strongbox', 'lootall', 'Opening', '', 0.699999988079071044, 2908, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Wooden Strongbox
(270913, 10, 49249, 'Old Chest', 'lootall', 'Opening', '', 0.800000011920928955, 2907, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Old Chest
(293703, 10, 51098, 'Crude Boomerang', 'lootall', 'Picking Up', '', 3, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 276810, 0, 0, 0, 125962, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Crude Boomerang
(326160, 10, 10605, 'Lightcrystal', 'lootall', 'Picking Up', '', 0.125, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 297259, 0, 0, 0, 125962, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Lightcrystal
(296167, 10, 10064, 'Tol\'vir Cache', 'lootall', 'Opening', '', 0.129999995231628417, 2905, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 1, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2970, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Tol'vir Cache
(297070, 5, 9510, 'Portal', '', '', '', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Portal
(269984, 10, 10368, 'Sticky Starfish', 'lootall', 'Picking Up', '', 0.699999988079071044, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 264742, 0, 0, 0, 125962, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Sticky Starfish
(326009, 10, 15589, 'Robotic Gizmo', '', 'Picking Up', '', 1, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 234561, 0, 0, 0, 125962, 0, 0, 0, 0, 0, 0, 0, 69445, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Robotic Gizmo
(303141, 0, 52901, 'Doodad_8TR_Zandalari_ShipMedTransport01_Gangplank_IslandGate002', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Doodad_8TR_Zandalari_ShipMedTransport01_Gangplank_IslandGate002
(299039, 5, 52062, 'Azerite Detector', '', '', '', 0.699999988079071044, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Detector
(326056, 0, 7735, 'Collision', '', '', '', 1.5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Collision
(272644, 10, 4853, 'Altar of the Sea', 'cast', '', '', 2.5, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, 248694, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Altar of the Sea
(289356, 10, 49201, 'Azerite Shard', 'mine', 'Mining', '', 0.400000005960464477, 2912, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 0, 78976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Shard
(303140, 0, 52901, 'Doodad_8TR_Zandalari_ShipMedTransport01_Gangplank_IslandGate001', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Doodad_8TR_Zandalari_ShipMedTransport01_Gangplank_IslandGate001
(273297, 10, 47685, 'Azerite Chunk', 'mine', 'Mining', '', 0.5, 2911, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 0, 78976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Chunk
(289359, 10, 49202, 'Azerite Chunk', 'mine', 'Mining', '', 0.5, 2911, 0, 0, 0, 0, 1, 0, 0, 0, 0, 263369, 0, 0, 0, 78976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 31478), -- Azerite Chunk
(273285, 10, 14031, 'Turtle Egg', 'questinteract', 'Eating', '', 1.25, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 255124, 0, 0, 0, 92973, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Turtle Egg
(286963, 43, 53027, 'Breath of Pa\'ku', '', '', '', 1, 1922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- Breath of Pa'ku
(286962, 43, 53028, 'Kul\'Tiran Frigate', '', '', '', 1, 1921, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- Kul'Tiran Frigate


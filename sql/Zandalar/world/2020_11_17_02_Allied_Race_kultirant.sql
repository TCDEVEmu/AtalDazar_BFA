# Zandalar-Sniffer - WowPacketParser
# File name: 2020-08-26_21-40-37_8.3.0
# Detected build: V8_3_0
# Targeted database: BattleForAzeroth
# Parsing date: 10/03/2020 21:13:05

SET @CGUID := 610000000;
SET @OGUID := 610000000;

DELETE FROM `playercreateinfo` WHERE `race`=32 AND `class`=1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (32, 1, 1643, 8717, 1071.362427, -483.988403, 9.700128, 1.255047);
DELETE FROM `playercreateinfo` WHERE `race`=32 AND `class`=2;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (32, 2, 1643, 8717, 1071.362427, -483.988403, 9.700128, 1.255047);
DELETE FROM `playercreateinfo` WHERE `race`=32 AND `class`=3;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (32, 3, 1643, 8717, 1071.362427, -483.988403, 9.700128, 1.255047);
DELETE FROM `playercreateinfo` WHERE `race`=32 AND `class`=4;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (32, 4, 1643, 8717, 1071.362427, -483.988403, 9.700128, 1.255047);
DELETE FROM `playercreateinfo` WHERE `race`=32 AND `class`=5;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (32, 5, 1643, 8717, 1071.362427, -483.988403, 9.700128, 1.255047);
DELETE FROM `playercreateinfo` WHERE `race`=32 AND `class`=6;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (32, 6, 1643, 8717, 1071.362427, -483.988403, 9.700128, 1.255047);
DELETE FROM `playercreateinfo` WHERE `race`=32 AND `class`=7;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (32, 7, 1643, 8717, 1071.362427, -483.988403, 9.700128, 1.255047);
DELETE FROM `playercreateinfo` WHERE `race`=32 AND `class`=8;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (32, 8, 1643, 8717, 1071.362427, -483.988403, 9.700128, 1.255047);
DELETE FROM `playercreateinfo` WHERE `race`=32 AND `class`=9;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (32, 9, 1643, 8717, 1071.362427, -483.988403, 9.700128, 1.255047);
DELETE FROM `playercreateinfo` WHERE `race`=32 AND `class`=10;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (32, 10, 1643, 8717, 1071.362427, -483.988403, 9.700128, 1.255047);
DELETE FROM `playercreateinfo` WHERE `race`=32 AND `class`=11;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (32, 11, 1643, 8717, 1071.362427, -483.988403, 9.700128, 1.255047);

DELETE FROM `conversation_actors` WHERE (`ConversationId`=11001 AND `Idx`=0);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorNearId`, `Idx`, `VerifiedBuild`) VALUES
(11001, 150941, 0, 31478); -- Full: 0x200028CD6093674000000000000000C9 Creature/0 R10/S0 Map: 1643 Entry: 150941 Low: 201

DELETE FROM `conversation_line_template` WHERE `Id` IN (26137, 26136);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(26137, 10015, 0, 0, 0, 31478),
(26136, 0, 0, 0, 0, 31478);


DELETE FROM `conversation_template` WHERE `Id`=11001;
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `TextureKitId`, `VerifiedBuild`) VALUES
(11001, 26136, 18015, 0, 31478);

DELETE FROM `conversation_actor_template`  WHERE `Id` = '150941';
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES ('150941', '150941', '76135', '31478');

DELETE FROM `creature_template_model` WHERE (`CreatureID`=148844 AND `Idx`=0) OR (`CreatureID`=15699 AND `Idx`=0) OR (`CreatureID`=78116 AND `Idx`=1) OR (`CreatureID`=78116 AND `Idx`=0) OR (`CreatureID`=61883 AND `Idx`=0) OR (`CreatureID`=135230 AND `Idx`=1) OR (`CreatureID`=135230 AND `Idx`=0) OR (`CreatureID`=132036 AND `Idx`=0) OR (`CreatureID`=142457 AND `Idx`=1) OR (`CreatureID`=142457 AND `Idx`=0) OR (`CreatureID`=132642 AND `Idx`=7) OR (`CreatureID`=132642 AND `Idx`=6) OR (`CreatureID`=132642 AND `Idx`=5) OR (`CreatureID`=132642 AND `Idx`=4) OR (`CreatureID`=132642 AND `Idx`=3) OR (`CreatureID`=132642 AND `Idx`=2) OR (`CreatureID`=132642 AND `Idx`=1) OR (`CreatureID`=132642 AND `Idx`=0) OR (`CreatureID`=138725 AND `Idx`=0) OR (`CreatureID`=123244 AND `Idx`=6) OR (`CreatureID`=123244 AND `Idx`=5) OR (`CreatureID`=123244 AND `Idx`=4) OR (`CreatureID`=123244 AND `Idx`=3) OR (`CreatureID`=123244 AND `Idx`=2) OR (`CreatureID`=123244 AND `Idx`=1) OR (`CreatureID`=123244 AND `Idx`=0) OR (`CreatureID`=144383 AND `Idx`=0) OR (`CreatureID`=63559 AND `Idx`=0) OR (`CreatureID`=142188 AND `Idx`=0) OR (`CreatureID`=124727 AND `Idx`=0) OR (`CreatureID`=142459 AND `Idx`=2) OR (`CreatureID`=142459 AND `Idx`=1) OR (`CreatureID`=142459 AND `Idx`=0) OR (`CreatureID`=131994 AND `Idx`=0) OR (`CreatureID`=124725 AND `Idx`=0) OR (`CreatureID`=132625 AND `Idx`=0) OR (`CreatureID`=130377 AND `Idx`=0) OR (`CreatureID`=125005 AND `Idx`=9) OR (`CreatureID`=125005 AND `Idx`=8) OR (`CreatureID`=125005 AND `Idx`=7) OR (`CreatureID`=125005 AND `Idx`=6) OR (`CreatureID`=125005 AND `Idx`=5) OR (`CreatureID`=125005 AND `Idx`=4) OR (`CreatureID`=125005 AND `Idx`=3) OR (`CreatureID`=125005 AND `Idx`=2) OR (`CreatureID`=125005 AND `Idx`=1) OR (`CreatureID`=125005 AND `Idx`=0) OR (`CreatureID`=143295 AND `Idx`=1) OR (`CreatureID`=143295 AND `Idx`=0) OR (`CreatureID`=143244 AND `Idx`=0) OR (`CreatureID`=123675 AND `Idx`=0) OR (`CreatureID`=133282 AND `Idx`=3) OR (`CreatureID`=133282 AND `Idx`=2) OR (`CreatureID`=133282 AND `Idx`=1) OR (`CreatureID`=133282 AND `Idx`=0) OR (`CreatureID`=135509 AND `Idx`=6) OR (`CreatureID`=135509 AND `Idx`=5) OR (`CreatureID`=135509 AND `Idx`=4) OR (`CreatureID`=135509 AND `Idx`=3) OR (`CreatureID`=135509 AND `Idx`=2) OR (`CreatureID`=135509 AND `Idx`=1) OR (`CreatureID`=135509 AND `Idx`=0) OR (`CreatureID`=135520 AND `Idx`=5) OR (`CreatureID`=135520 AND `Idx`=4) OR (`CreatureID`=135520 AND `Idx`=3) OR (`CreatureID`=135520 AND `Idx`=2) OR (`CreatureID`=135520 AND `Idx`=1) OR (`CreatureID`=135520 AND `Idx`=0) OR (`CreatureID`=142543 AND `Idx`=1) OR (`CreatureID`=142543 AND `Idx`=0) OR (`CreatureID`=142139 AND `Idx`=0) OR (`CreatureID`=142136 AND `Idx`=0) OR (`CreatureID`=142137 AND `Idx`=0) OR (`CreatureID`=142066 AND `Idx`=0) OR (`CreatureID`=124295 AND `Idx`=0) OR (`CreatureID`=149045 AND `Idx`=0) OR (`CreatureID`=142068 AND `Idx`=0) OR (`CreatureID`=142073 AND `Idx`=0) OR (`CreatureID`=142063 AND `Idx`=0) OR (`CreatureID`=123635 AND `Idx`=0) OR (`CreatureID`=124180 AND `Idx`=0) OR (`CreatureID`=124181 AND `Idx`=0) OR (`CreatureID`=140313 AND `Idx`=3) OR (`CreatureID`=140313 AND `Idx`=2) OR (`CreatureID`=140313 AND `Idx`=1) OR (`CreatureID`=140313 AND `Idx`=0) OR (`CreatureID`=123642 AND `Idx`=5) OR (`CreatureID`=123642 AND `Idx`=4) OR (`CreatureID`=123642 AND `Idx`=3) OR (`CreatureID`=123642 AND `Idx`=2) OR (`CreatureID`=123642 AND `Idx`=1) OR (`CreatureID`=123642 AND `Idx`=0) OR (`CreatureID`=62954 AND `Idx`=2) OR (`CreatureID`=62954 AND `Idx`=1) OR (`CreatureID`=62954 AND `Idx`=0) OR (`CreatureID`=124289 AND `Idx`=0) OR (`CreatureID`=142086 AND `Idx`=0) OR (`CreatureID`=142077 AND `Idx`=0) OR (`CreatureID`=144310 AND `Idx`=0) OR (`CreatureID`=142094 AND `Idx`=0) OR (`CreatureID`=142180 AND `Idx`=3) OR (`CreatureID`=142180 AND `Idx`=2) OR (`CreatureID`=142180 AND `Idx`=1) OR (`CreatureID`=142180 AND `Idx`=0) OR (`CreatureID`=70453 AND `Idx`=0) OR (`CreatureID`=133325 AND `Idx`=3) OR (`CreatureID`=133325 AND `Idx`=2) OR (`CreatureID`=133325 AND `Idx`=1) OR (`CreatureID`=133325 AND `Idx`=0) OR (`CreatureID`=126682 AND `Idx`=1) OR (`CreatureID`=126682 AND `Idx`=0) OR (`CreatureID`=250000 AND `Idx`=0) OR (`CreatureID`=994524 AND `Idx`=0) OR (`CreatureID`=148781 AND `Idx`=0) OR (`CreatureID`=131983 AND `Idx`=0) OR (`CreatureID`=139148 AND `Idx`=0) OR (`CreatureID`=131989 AND `Idx`=0) OR (`CreatureID`=124805 AND `Idx`=3) OR (`CreatureID`=124805 AND `Idx`=2) OR (`CreatureID`=124805 AND `Idx`=1) OR (`CreatureID`=124805 AND `Idx`=0) OR (`CreatureID`=126781 AND `Idx`=0) OR (`CreatureID`=135678 AND `Idx`=1) OR (`CreatureID`=135678 AND `Idx`=0) OR (`CreatureID`=139088 AND `Idx`=11) OR (`CreatureID`=139088 AND `Idx`=10) OR (`CreatureID`=139088 AND `Idx`=9) OR (`CreatureID`=139088 AND `Idx`=8) OR (`CreatureID`=139088 AND `Idx`=7) OR (`CreatureID`=139088 AND `Idx`=6) OR (`CreatureID`=139088 AND `Idx`=5) OR (`CreatureID`=139088 AND `Idx`=4) OR (`CreatureID`=139088 AND `Idx`=3) OR (`CreatureID`=139088 AND `Idx`=2) OR (`CreatureID`=139088 AND `Idx`=1) OR (`CreatureID`=139088 AND `Idx`=0) OR (`CreatureID`=123604 AND `Idx`=3) OR (`CreatureID`=123604 AND `Idx`=2) OR (`CreatureID`=123604 AND `Idx`=1) OR (`CreatureID`=123604 AND `Idx`=0) OR (`CreatureID`=140473 AND `Idx`=1) OR (`CreatureID`=140473 AND `Idx`=0) OR (`CreatureID`=144635 AND `Idx`=0) OR (`CreatureID`=135612 AND `Idx`=0) OR (`CreatureID`=65314 AND `Idx`=0) OR (`CreatureID`=154893 AND `Idx`=1) OR (`CreatureID`=154893 AND `Idx`=0) OR (`CreatureID`=510 AND `Idx`=1) OR (`CreatureID`=510 AND `Idx`=0) OR (`CreatureID`=68662 AND `Idx`=0) OR (`CreatureID`=142166 AND `Idx`=3) OR (`CreatureID`=142166 AND `Idx`=2) OR (`CreatureID`=142166 AND `Idx`=1) OR (`CreatureID`=142166 AND `Idx`=0) OR (`CreatureID`=26125 AND `Idx`=3) OR (`CreatureID`=26125 AND `Idx`=2) OR (`CreatureID`=26125 AND `Idx`=1) OR (`CreatureID`=26125 AND `Idx`=0) OR (`CreatureID`=140350 AND `Idx`=3) OR (`CreatureID`=140350 AND `Idx`=2) OR (`CreatureID`=140350 AND `Idx`=1) OR (`CreatureID`=140350 AND `Idx`=0) OR (`CreatureID`=73350 AND `Idx`=0) OR (`CreatureID`=18364 AND `Idx`=0) OR (`CreatureID`=4272 AND `Idx`=0) OR (`CreatureID`=18365 AND `Idx`=0) OR (`CreatureID`=305 AND `Idx`=0) OR (`CreatureID`=139144 AND `Idx`=0) OR (`CreatureID`=143251 AND `Idx`=0) OR (`CreatureID`=142169 AND `Idx`=0) OR (`CreatureID`=142167 AND `Idx`=0) OR (`CreatureID`=143254 AND `Idx`=0) OR (`CreatureID`=143842 AND `Idx`=0) OR (`CreatureID`=140472 AND `Idx`=1) OR (`CreatureID`=140472 AND `Idx`=0) OR (`CreatureID`=143856 AND `Idx`=0) OR (`CreatureID`=142187 AND `Idx`=0) OR (`CreatureID`=143844 AND `Idx`=3) OR (`CreatureID`=143844 AND `Idx`=2) OR (`CreatureID`=143844 AND `Idx`=1) OR (`CreatureID`=143844 AND `Idx`=0) OR (`CreatureID`=143870 AND `Idx`=1) OR (`CreatureID`=143870 AND `Idx`=0) OR (`CreatureID`=143709 AND `Idx`=0) OR (`CreatureID`=994519 AND `Idx`=0) OR (`CreatureID`=120599 AND `Idx`=3) OR (`CreatureID`=120599 AND `Idx`=2) OR (`CreatureID`=120599 AND `Idx`=1) OR (`CreatureID`=120599 AND `Idx`=0) OR (`CreatureID`=135675 AND `Idx`=1) OR (`CreatureID`=135675 AND `Idx`=0) OR (`CreatureID`=135677 AND `Idx`=3) OR (`CreatureID`=135677 AND `Idx`=2) OR (`CreatureID`=135677 AND `Idx`=1) OR (`CreatureID`=135677 AND `Idx`=0) OR (`CreatureID`=135681 AND `Idx`=0) OR (`CreatureID`=135446 AND `Idx`=0) OR (`CreatureID`=148927 AND `Idx`=0) OR (`CreatureID`=7565 AND `Idx`=0) OR (`CreatureID`=154852 AND `Idx`=0) OR (`CreatureID`=142117 AND `Idx`=0) OR (`CreatureID`=142174 AND `Idx`=0) OR (`CreatureID`=135808 AND `Idx`=0) OR (`CreatureID`=139522 AND `Idx`=0) OR (`CreatureID`=136633 AND `Idx`=11) OR (`CreatureID`=136633 AND `Idx`=10) OR (`CreatureID`=136633 AND `Idx`=9) OR (`CreatureID`=136633 AND `Idx`=8) OR (`CreatureID`=136633 AND `Idx`=7) OR (`CreatureID`=136633 AND `Idx`=6) OR (`CreatureID`=136633 AND `Idx`=5) OR (`CreatureID`=136633 AND `Idx`=4) OR (`CreatureID`=136633 AND `Idx`=3) OR (`CreatureID`=136633 AND `Idx`=2) OR (`CreatureID`=136633 AND `Idx`=1) OR (`CreatureID`=136633 AND `Idx`=0) OR (`CreatureID`=123169 AND `Idx`=1) OR (`CreatureID`=123169 AND `Idx`=0) OR (`CreatureID`=124859 AND `Idx`=0) OR (`CreatureID`=126434 AND `Idx`=1) OR (`CreatureID`=126434 AND `Idx`=0) OR (`CreatureID`=150941 AND `Idx`=0);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(148844, 0, 90141, 1, 1, 31478), -- 148844
(15699, 0, 10269, 1, 1, 31478), -- 15699
(78116, 1, 38373, 1, 0, 31478), -- 78116
(78116, 0, 525, 1, 1, 31478), -- 78116
(61883, 0, 42297, 1, 1, 31478), -- 61883
(135230, 1, 82814, 1, 1, 31478), -- 135230
(135230, 0, 82813, 1, 1, 31478), -- 135230
(132036, 0, 32778, 1, 1, 31478), -- 132036
(142457, 1, 87050, 1, 1, 31478), -- 142457
(142457, 0, 87053, 1, 1, 31478), -- 142457
(132642, 7, 82546, 1, 1, 31478), -- 132642
(132642, 6, 82612, 1, 1, 31478), -- 132642
(132642, 5, 82543, 1, 1, 31478), -- 132642
(132642, 4, 78963, 1, 1, 31478), -- 132642
(132642, 3, 78962, 1, 1, 31478), -- 132642
(132642, 2, 78475, 1, 1, 31478), -- 132642
(132642, 1, 82544, 1, 1, 31478), -- 132642
(132642, 0, 82545, 1, 1, 31478), -- 132642
(138725, 0, 85963, 1, 1, 31478), -- 138725
(123244, 6, 78632, 1, 1, 31478), -- 123244
(123244, 5, 78633, 1, 1, 31478), -- 123244
(123244, 4, 78630, 1, 1, 31478), -- 123244
(123244, 3, 78631, 1, 1, 31478), -- 123244
(123244, 2, 80857, 1, 1, 31478), -- 123244
(123244, 1, 80858, 1, 1, 31478), -- 123244
(123244, 0, 82693, 1, 1, 31478), -- 123244
(144383, 0, 77691, 1, 1, 31478), -- 144383
(63559, 0, 47955, 1, 1, 31478), -- 63559
(142188, 0, 87634, 1, 1, 31478), -- 142188
(124727, 0, 83664, 1, 1, 31478), -- 124727
(142459, 2, 87649, 1, 1, 31478), -- 142459
(142459, 1, 87648, 1, 1, 31478), -- 142459
(142459, 0, 87647, 1, 1, 31478), -- 142459
(131994, 0, 28047, 1, 1, 31478), -- 131994
(124725, 0, 83812, 1, 1, 31478), -- 124725
(132625, 0, 82148, 1.299999952316284179, 1, 31478), -- 132625
(130377, 0, 81168, 1, 1, 31478), -- 130377
(125005, 9, 88482, 1, 1, 31478), -- 125005
(125005, 8, 88481, 1, 1, 31478), -- 125005
(125005, 7, 82541, 1, 1, 31478), -- 125005
(125005, 6, 82540, 1, 1, 31478), -- 125005
(125005, 5, 82539, 1, 1, 31478), -- 125005
(125005, 4, 82538, 1, 1, 31478), -- 125005
(125005, 3, 78965, 1, 1, 31478), -- 125005
(125005, 2, 78964, 1, 1, 31478), -- 125005
(125005, 1, 78472, 1, 1, 31478), -- 125005
(125005, 0, 78471, 1, 1, 31478), -- 125005
(143295, 1, 88503, 1, 1, 31478), -- 143295
(143295, 0, 88502, 1, 1, 31478), -- 143295
(143244, 0, 87780, 1, 1, 31478), -- 143244
(123675, 0, 77532, 1, 1, 31478), -- 123675
(133282, 3, 81372, 1, 1, 31478), -- 133282
(133282, 2, 81321, 1, 1, 31478), -- 133282
(133282, 1, 81366, 1, 1, 31478), -- 133282
(133282, 0, 81363, 1, 1, 31478), -- 133282
(135509, 6, 84284, 1, 1, 31478), -- 135509
(135509, 5, 82234, 1, 1, 31478), -- 135509
(135509, 4, 82546, 1, 1, 31478), -- 135509
(135509, 3, 82543, 1, 1, 31478), -- 135509
(135509, 2, 82665, 1, 1, 31478), -- 135509
(135509, 1, 80182, 1, 1, 31478), -- 135509
(135509, 0, 80180, 1, 1, 31478), -- 135509
(135520, 5, 77043, 1, 1, 31478), -- 135520
(135520, 4, 76550, 1, 1, 31478), -- 135520
(135520, 3, 77054, 1, 1, 31478), -- 135520
(135520, 2, 77039, 1, 1, 31478), -- 135520
(135520, 1, 76547, 1, 1, 31478), -- 135520
(135520, 0, 76515, 1, 1, 31478), -- 135520
(142543, 1, 11686, 1, 1, 31478), -- 142543
(142543, 0, 1126, 1, 0, 31478), -- 142543
(142139, 0, 76046, 0.300000011920928955, 1, 31478), -- 142139
(142136, 0, 87583, 1, 1, 31478), -- 142136
(142137, 0, 87584, 1, 1, 31478), -- 142137
(142066, 0, 87375, 1, 1, 31478), -- 142066
(124295, 0, 77940, 1, 1, 31478), -- 124295
(149045, 0, 76422, 1, 1, 31478), -- 149045
(142068, 0, 38804, 1, 1, 31478), -- 142068
(142073, 0, 87599, 1, 1, 31478), -- 142073
(142063, 0, 87376, 1, 1, 31478), -- 142063
(123635, 0, 77466, 1, 1, 31478), -- 123635
(124180, 0, 77851, 1, 1, 31478), -- 124180
(124181, 0, 76515, 1, 1, 31478), -- 124181
(140313, 3, 86028, 1, 1, 31478), -- 140313
(140313, 2, 86027, 1, 1, 31478), -- 140313
(140313, 1, 86026, 1, 1, 31478), -- 140313
(140313, 0, 86025, 1, 1, 31478), -- 140313
(123642, 5, 84263, 1, 1, 31478), -- 123642
(123642, 4, 84262, 1, 1, 31478), -- 123642
(123642, 3, 78472, 1, 1, 31478), -- 123642
(123642, 2, 78471, 1, 1, 31478), -- 123642
(123642, 1, 80178, 1, 1, 31478), -- 123642
(123642, 0, 80177, 1, 1, 31478), -- 123642
(62954, 2, 2176, 1, 1, 31478), -- 62954
(62954, 1, 1418, 1, 2, 31478), -- 62954
(62954, 0, 1141, 1, 2, 31478), -- 62954
(124289, 0, 77936, 1, 1, 31478), -- 124289
(142086, 0, 87601, 1, 1, 31478), -- 142086
(142077, 0, 87600, 1, 1, 31478), -- 142077
(144310, 0, 88528, 1, 1, 31478), -- 144310
(142094, 0, 87611, 1, 1, 31478), -- 142094
(142180, 3, 80754, 1, 1, 31478), -- 142180
(142180, 2, 80753, 1, 1, 31478), -- 142180
(142180, 1, 80752, 1, 1, 31478), -- 142180
(142180, 0, 80751, 1, 1, 31478), -- 142180
(70453, 0, 48057, 1, 1, 31478), -- 70453
(133325, 3, 81802, 1, 1, 31478), -- 133325
(133325, 2, 80767, 1, 1, 31478), -- 133325
(133325, 1, 81345, 1, 1, 31478), -- 133325
(133325, 0, 81807, 1, 1, 31478), -- 133325
(126682, 1, 61205, 1, 1, 31478), -- 126682
(126682, 0, 61206, 1, 1, 31478), -- 126682
(250000, 0, 27614, 1.5, 1, 31478), -- 250000
(994524, 0, 22769, 1, 1, 31478), -- 994524
(148781, 0, 90155, 0.200000002980232238, 1, 31478), -- 148781
(131983, 0, 42178, 1.25, 1, 31478), -- 131983
(139148, 0, 82148, 1, 1, 31478), -- 139148
(131989, 0, 32778, 1, 1, 31478), -- 131989
(124805, 3, 88616, 1, 1, 31478), -- 124805
(124805, 2, 78196, 1, 1, 31478), -- 124805
(124805, 1, 78195, 1, 1, 31478), -- 124805
(124805, 0, 78193, 1, 1, 31478), -- 124805
(126781, 0, 28047, 1, 1, 31478), -- 126781
(135678, 1, 86472, 1, 1, 31478), -- 135678
(135678, 0, 86471, 1, 1, 31478), -- 135678
(139088, 11, 88612, 1, 1, 31478), -- 139088
(139088, 10, 88611, 1, 1, 31478), -- 139088
(139088, 9, 88610, 1, 1, 31478), -- 139088
(139088, 8, 88615, 1, 1, 31478), -- 139088
(139088, 7, 88614, 1, 1, 31478), -- 139088
(139088, 6, 88613, 1, 1, 31478), -- 139088
(139088, 5, 88607, 1, 1, 31478), -- 139088
(139088, 4, 88606, 1, 1, 31478), -- 139088
(139088, 3, 88604, 1, 1, 31478), -- 139088
(139088, 2, 88609, 1, 1, 31478), -- 139088
(139088, 1, 88608, 1, 1, 31478), -- 139088
(139088, 0, 88605, 1, 1, 31478), -- 139088
(123604, 3, 229, 1, 1, 31478), -- 123604
(123604, 2, 65, 1, 1, 31478), -- 123604
(123604, 1, 76890, 1, 1, 31478), -- 123604
(123604, 0, 76871, 1, 1, 31478), -- 123604
(140473, 1, 27823, 1, 1, 31478), -- 140473
(140473, 0, 14473, 1, 0, 31478), -- 140473
(144635, 0, 86764, 1, 1, 31478), -- 144635
(135612, 0, 85758, 1, 1, 31478), -- 135612
(65314, 0, 43868, 1, 1, 31478), -- 65314
(154893, 1, 81214, 0.75, 1, 31478), -- 154893
(154893, 0, 81215, 0.75, 1, 31478), -- 154893
(510, 1, 38373, 1, 0, 31478), -- 510
(510, 0, 525, 1, 1, 31478), -- 510
(68662, 0, 46925, 1, 1, 31478), -- 68662
(142166, 3, 88271, 1, 1, 31478), -- 142166
(142166, 2, 88265, 1, 1, 31478), -- 142166
(142166, 1, 88264, 1, 1, 31478), -- 142166
(142166, 0, 88262, 1, 1, 31478), -- 142166
(26125, 3, 24995, 1, 0.25, 31478), -- 26125
(26125, 2, 24992, 1, 0.25, 31478), -- 26125
(26125, 1, 24993, 1, 0.25, 31478), -- 26125
(26125, 0, 24994, 1, 0.25, 31478), -- 26125
(140350, 3, 86641, 1.10000002384185791, 1, 31478), -- 140350
(140350, 2, 86640, 1.10000002384185791, 1, 31478), -- 140350
(140350, 1, 86639, 1.10000002384185791, 1, 31478), -- 140350
(140350, 0, 86638, 1.10000002384185791, 1, 31478), -- 140350
(73350, 0, 51417, 1, 1, 31478), -- 73350
(18364, 0, 17700, 1, 0, 31478), -- 18364
(4272, 0, 2328, 1, 1, 31478), -- 4272
(18365, 0, 17701, 1, 0, 31478), -- 18365
(305, 0, 2410, 1, 1, 31478), -- 305
(139144, 0, 86168, 1.10000002384185791, 1, 31478), -- 139144
(143251, 0, 87788, 1, 1, 31478), -- 143251
(142169, 0, 86763, 1, 1, 31478), -- 142169
(142167, 0, 81166, 1, 1, 31478), -- 142167
(143254, 0, 87796, 1, 1, 31478), -- 143254
(143842, 0, 77523, 1, 1, 31478), -- 143842
(140472, 1, 27823, 1, 1, 31478), -- 140472
(140472, 0, 14473, 1, 0, 31478), -- 140472
(143856, 0, 26353, 1, 1, 31478), -- 143856
(142187, 0, 80893, 1, 1, 31478), -- 142187
(143844, 3, 88051, 1, 1, 31478), -- 143844
(143844, 2, 88050, 1, 1, 31478), -- 143844
(143844, 1, 88049, 1, 1, 31478), -- 143844
(143844, 0, 88048, 1, 0, 31478), -- 143844
(143870, 1, 86472, 1, 1, 31478), -- 143870
(143870, 0, 86471, 1, 1, 31478), -- 143870
(143709, 0, 13069, 1, 1, 31478), -- 143709
(994519, 0, 22769, 1, 1, 31478), -- 994519
(120599, 3, 75911, 1, 1, 31478), -- 120599
(120599, 2, 75910, 1, 1, 31478), -- 120599
(120599, 1, 75877, 1, 1, 31478), -- 120599
(120599, 0, 75876, 1, 1, 31478), -- 120599
(135675, 1, 85771, 1, 1, 31478), -- 135675
(135675, 0, 85767, 1, 1, 31478), -- 135675
(135677, 3, 55345, 1, 1, 31478), -- 135677
(135677, 2, 55344, 1, 1, 31478), -- 135677
(135677, 1, 53108, 1, 1, 31478), -- 135677
(135677, 0, 53107, 1, 1, 31478), -- 135677
(135681, 0, 5565, 1.220000028610229492, 1, 31478), -- 135681
(135446, 0, 88690, 1, 1, 31478), -- 135446
(148927, 0, 90165, 1, 1, 31478), -- 148927
(7565, 0, 1206, 1, 1, 31478), -- 7565
(154852, 0, 88766, 0.5, 1, 31478), -- 154852
(142117, 0, 24052, 1, 1, 31478), -- 142117
(142174, 0, 27681, 1, 1, 31478), -- 142174
(135808, 0, 84415, 1, 1, 31478), -- 135808
(139522, 0, 86443, 2, 1, 31478), -- 139522
(136633, 11, 88609, 1, 1, 31478), -- 136633
(136633, 10, 88608, 1, 1, 31478), -- 136633
(136633, 9, 88605, 1, 1, 31478), -- 136633
(136633, 8, 88607, 1, 1, 31478), -- 136633
(136633, 7, 88606, 1, 1, 31478), -- 136633
(136633, 6, 88604, 1, 1, 31478), -- 136633
(136633, 5, 88615, 1, 1, 31478), -- 136633
(136633, 4, 88614, 1, 1, 31478), -- 136633
(136633, 3, 88613, 1, 1, 31478), -- 136633
(136633, 2, 88612, 1, 1, 31478), -- 136633
(136633, 1, 88611, 1, 1, 31478), -- 136633
(136633, 0, 88610, 1, 1, 31478), -- 136633
(123169, 1, 78483, 1, 1, 31478), -- 123169
(123169, 0, 78482, 1, 1, 31478), -- 123169
(124859, 0, 46710, 1, 1, 31478), -- 124859
(126434, 1, 32646, 1, 1, 31478), -- 126434
(126434, 0, 33719, 1, 1, 31478), -- 126434
(150941, 0, 76135, 1, 1, 31478); -- 150941

DELETE FROM `gameobject_template_addon` WHERE `entry` IN (310299 /*310299*/, 316404 /*316404*/, 292407 /*292407*/, 292409 /*292409*/, 322804 /*322804*/, 302842 /*302842*/, 281609 /*281609*/, 35591 /*35591*/, 287435 /*287435*/, 293132 /*293132*/, 253128 /*253128*/, 252245 /*252245*/, 282246 /*282246*/, 229465 /*229465*/, 288433 /*288433*/, 282258 /*282258*/, 292522 /*292522*/, 239178 /*239178*/, 292547 /*292547*/, 272925 /*272925*/, 272322 /*272322*/);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`) VALUES
(310299, 0, 1048608), -- 310299
(316404, 1375, 32), -- 316404
(292407, 0, 4), -- 292407
(292409, 0, 4), -- 292409
(322804, 1732, 0), -- 322804
(302842, 0, 1048608), -- 302842
(281609, 0, 1048608), -- 281609
(35591, 2908, 0), -- 35591
(287435, 1375, 32), -- 287435
(293132, 0, 32), -- 293132
(253128, 0, 32), -- 253128
(252245, 0, 32), -- 252245
(282246, 0, 8192), -- 282246
(229465, 0, 8192), -- 229465
(288433, 0, 262176), -- 288433
(282258, 0, 8192), -- 282258
(292522, 0, 262144), -- 292522
(239178, 114, 0), -- 239178
(292547, 0, 1048864), -- 292547
(272925, 1375, 1048608), -- 272925
(272322, 0, 1048864); -- 272322


DELETE FROM `quest_poi` WHERE (`QuestID`=55142 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55142 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(55142, 0, 1, 0, 388754, 78707, 1643, 1161, 0, 0, 0, 0, 1731116, 0, 31478), -- 55142
(55142, 0, 0, -1, 0, 0, 0, 84, 0, 0, 0, 0, 1456603, 0, 31478); -- 55142

DELETE FROM `quest_poi_points` WHERE (`QuestID`=55142 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55142 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(55142, 1, 0, 1133, -525, 31478), -- 55142
(55142, 0, 0, -8173, 801, 31478); -- 55142


DELETE FROM `quest_details` WHERE `ID`=55142;
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(55142, 1, 0, 0, 0, 0, 0, 0, 0, 31478); -- 55142

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+1;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+1, 150941, 1643, 8717, 9802, '0', '9176', 0, 0, 0, 1072.9300537109375, -481.178985595703125, 9.783450126647949218, 4.408619880676269531, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- 150941 (Area: 9802 - Difficulty: 0)

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+1;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+1, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- 150941

DELETE FROM `creature_template_addon` WHERE `entry` IN (150941);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(150941, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- 150941

DELETE FROM `creature_template_scaling` WHERE `Entry` = '150941';
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(150941, 0, 120, 120, 0, 0, 0, 31478);

DELETE FROM `creature_queststarter` WHERE `id` = '150941';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES ('150941', '55142');

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (82814, 87050, 82544, 85963, 81345, 77691, 80858, 87634, 84284, 83664, 83812, 81372, 81168, 87649, 82541, 88502, 87780, 77532, 81363, 80754, 80182, 76550, 88264, 11686, 76046, 87375, 87584, 38804, 87583, 76422, 77940, 77466, 86027, 76515, 80178, 87376, 87599, 77851, 77936, 87601, 80751, 87611, 87600, 88528, 81802, 88262, 61205, 61206, 27614, 88614, 42178, 82148, 32778, 76890, 28047, 78195, 86471, 55344, 55345, 86764, 85758, 88051, 229, 88271, 86638, 88610, 86472, 88606, 80893, 88611, 90165, 88049, 76135, 5565, 84415, 88615, 86763, 46710, 77523, 81166, 27823, 75910, 78483, 88613, 26353, 24052, 86443, 88608, 88690, 88604, 87788, 53107, 85771, 87796, 86168, 33719, 13069, 27681, 88609, 85767, 32646, 88607, 88605, 22769, 88050);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(82814, 0.305999994277954101, 1.5, 0, 31478),
(87050, 0.305999994277954101, 1.5, 0, 31478),
(82544, 0.305999994277954101, 1.5, 0, 31478),
(85963, 0.208000004291534423, 1.5, 0, 31478),
(81345, 0.690244972705841064, 1.5, 0, 31478),
(77691, 1.140609979629516601, 1.5, 0, 31478),
(80858, 0.690244972705841064, 1.5, 0, 31478),
(87634, 0.208000004291534423, 1.5, 0, 31478),
(84284, 0.347222000360488891, 1.5, 0, 31478),
(83664, 0.310000002384185791, 1, 0, 31478),
(83812, 0.347222000360488891, 1.5, 0, 31478),
(81372, 0.208000004291534423, 1.5, 0, 31478),
(81168, 0.690244972705841064, 1.5, 0, 31478),
(87649, 0.305999994277954101, 1.5, 0, 31478),
(82541, 0.347222000360488891, 1.5, 0, 31478),
(88502, 0.305999994277954101, 1.5, 0, 31478),
(87780, 0.305999994277954101, 1.5, 0, 31478),
(77532, 0.305999994277954101, 1.5, 0, 31478),
(81363, 0.305999994277954101, 1.5, 0, 31478),
(80754, 0.305999994277954101, 1.5, 0, 31478),
(80182, 0.305999994277954101, 1.5, 0, 31478),
(76550, 0.151962995529174804, 1, 0, 31478),
(88264, 0.305999994277954101, 1.5, 0, 31478),
(11686, 0.5, 1, 0, 31478),
(76046, 0.60000002384185791, 1.5, 0, 31478),
(87375, 0.300000011920928955, 1, 0, 31478),
(87584, 0.305999994277954101, 1.5, 0, 31478),
(38804, 0.259725987911224365, 0.85000002384185791, 0, 31478),
(87583, 0.305999994277954101, 1.5, 0, 31478),
(76422, 0.305559992790222167, 1, 0, 31478),
(77940, 0.305999994277954101, 1.5, 0, 31478),
(77466, 0.208000004291534423, 1.5, 0, 31478),
(86027, 0.208000004291534423, 1.5, 0, 31478),
(76515, 0.151962995529174804, 1, 0, 31478),
(80178, 0.208000004291534423, 1.5, 0, 31478),
(87376, 0.305559992790222167, 1, 0, 31478),
(87599, 0.347222000360488891, 1.5, 0, 31478),
(77851, 0.208000004291534423, 1.5, 0, 31478),
(77936, 0.347222000360488891, 1.5, 0, 31478),
(87601, 0.305999994277954101, 1.5, 0, 31478),
(80751, 0.305999994277954101, 1.5, 0, 31478),
(87611, 0.347222000360488891, 1.5, 0, 31478),
(87600, 0.690244972705841064, 1.5, 0, 31478),
(88528, 0.208000004291534423, 1.5, 0, 31478),
(81802, 0.208000004291534423, 1.5, 0, 31478),
(88262, 0.305999994277954101, 1.5, 0, 31478),
(61205, 0.123999997973442077, 1.20000004768371582, 0, 31478),
(61206, 0.123999997973442077, 1.20000004768371582, 0, 31478),
(27614, 0, 1.5, 0, 31478),
(88614, 0.438598006963729858, 1.5, 0, 31478),
(42178, 0.75, 2.5, 0, 31478),
(82148, 1.180960059165954589, 1.95000004768371582, 0, 31478),
(32778, 0.224999994039535522, 0.75, 0, 31478),
(76890, 0.490500003099441528, 1.5, 0, 31478),
(28047, 0.375, 1.25, 0, 31478),
(78195, 0.305999994277954101, 1.5, 0, 31478),
(86471, 0.347000002861022949, 1.5, 0, 31478),
(55344, 0.347000002861022949, 1.5, 0, 31478),
(55345, 0.347000002861022949, 1.5, 0, 31478),
(86764, 2, 1, 0, 31478),
(85758, 0.351900011301040649, 1.72500002384185791, 0, 31478),
(88051, 0.208000004291534423, 1.5, 0, 31478),
(229, 0.490500003099441528, 1.5, 0, 31478),
(88271, 0.208000004291534423, 1.5, 0, 31478),
(86638, 0.336600005626678466, 1.649999976158142089, 0, 31478),
(88610, 0.602649986743927001, 1.5, 0, 31478),
(86472, 0.347000002861022949, 1.5, 0, 31478),
(88606, 0.377070993185043334, 1.5, 0, 31478),
(80893, 0.208000004291534423, 1.5, 0, 31478),
(88611, 0.602649986743927001, 1.5, 0, 31478),
(90165, 0.347000002861022949, 1.5, 0, 31478),
(88049, 0.305999994277954101, 1.5, 0, 31478),
(76135, 0.320068001747131347, 1.649999976158142089, 0, 31478),
(5565, 0.253760010004043579, 1.830000042915344238, 0, 31478),
(84415, 0.347222000360488891, 1.5, 0, 31478),
(88615, 0.438598006963729858, 1.5, 0, 31478),
(86763, 0.347222000360488891, 1.5, 0, 31478),
(46710, 0.5, 1, 0, 31478),
(77523, 1.20000004768371582, 1.799999952316284179, 0, 31478),
(81166, 0.208000004291534423, 1.5, 0, 31478),
(27823, 0.25, 0.5, 0, 31478),
(75910, 0.305999994277954101, 1.5, 0, 31478),
(78483, 0.208000004291534423, 1.5, 0, 31478),
(88613, 0.438598006963729858, 1.5, 0, 31478),
(26353, 0.381700009107589721, 1.649999976158142089, 0, 31478),
(24052, 0.347222000360488891, 1.5, 0, 31478),
(86443, 0.409869998693466186, 3.599999904632568359, 0, 31478),
(88608, 0.290053009986877441, 1.5, 0, 31478),
(88690, 1, 1.5, 0, 31478),
(88604, 0.377070993185043334, 1.5, 0, 31478),
(87788, 0.305999994277954101, 1.5, 0, 31478),
(53107, 0.347000002861022949, 1.5, 0, 31478),
(85771, 0.208000004291534423, 1.5, 0, 31478),
(87796, 0.690244972705841064, 1.5, 0, 31478),
(86168, 0.336600005626678466, 1.649999976158142089, 0, 31478),
(33719, 0.310000002384185791, 1, 0, 31478),
(13069, 0.004999999888241291, 1.5, 0, 31478),
(27681, 0.5, 0.5, 0, 31478),
(88609, 0.290053009986877441, 1.5, 0, 31478),
(85767, 0.305999994277954101, 1.5, 0, 31478),
(32646, 0.310000002384185791, 1, 0, 31478),
(88607, 0.377070993185043334, 1.5, 0, 31478),
(88605, 0.290053009986877441, 1.5, 0, 31478),
(22769, 0.174999997019767761, 0.349999994039535522, 0, 31478),
(88050, 0.208000004291534423, 1.5, 0, 31478);


DELETE FROM `creature_equip_template` WHERE (`CreatureID`=132642 AND `ID`=1) OR (`CreatureID`=133325 AND `ID`=2) OR (`CreatureID`=125005 AND `ID`=1) OR (`CreatureID`=133282 AND `ID`=1) OR (`CreatureID`=142180 AND `ID`=2) OR (`CreatureID`=135509 AND `ID`=1) OR (`CreatureID`=135520 AND `ID`=1) OR (`CreatureID`=142137 AND `ID`=1) OR (`CreatureID`=142136 AND `ID`=1) OR (`CreatureID`=149045 AND `ID`=1) OR (`CreatureID`=140313 AND `ID`=1) OR (`CreatureID`=123642 AND `ID`=1) OR (`CreatureID`=142180 AND `ID`=1) OR (`CreatureID`=144310 AND `ID`=1) OR (`CreatureID`=133325 AND `ID`=1) OR (`CreatureID`=135678 AND `ID`=1) OR (`CreatureID`=124805 AND `ID`=1) OR (`CreatureID`=135612 AND `ID`=1) OR (`CreatureID`=139088 AND `ID`=1) OR (`CreatureID`=142166 AND `ID`=1) OR (`CreatureID`=140350 AND `ID`=1) OR (`CreatureID`=135681 AND `ID`=1) OR (`CreatureID`=143842 AND `ID`=1) OR (`CreatureID`=142167 AND `ID`=1) OR (`CreatureID`=120599 AND `ID`=1) OR (`CreatureID`=123169 AND `ID`=1) OR (`CreatureID`=136633 AND `ID`=2) OR (`CreatureID`=143856 AND `ID`=1) OR (`CreatureID`=135677 AND `ID`=1) OR (`CreatureID`=139144 AND `ID`=1) OR (`CreatureID`=135675 AND `ID`=1) OR (`CreatureID`=136633 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(132642, 1, 45858, 0, 0, 0, 0, 0, 0, 0, 0), -- 132642
(133325, 2, 2703, 0, 0, 0, 0, 0, 0, 0, 0), -- 133325
(125005, 1, 2202, 0, 0, 0, 0, 0, 0, 0, 0), -- 125005
(133282, 1, 163840, 0, 0, 0, 0, 0, 0, 0, 0), -- 133282
(142180, 2, 109579, 0, 0, 0, 0, 0, 0, 0, 0), -- 142180
(135509, 1, 2202, 0, 0, 0, 0, 0, 0, 0, 0), -- 135509
(135520, 1, 45858, 0, 0, 0, 0, 0, 0, 0, 0), -- 135520
(142137, 1, 2202, 0, 0, 0, 0, 0, 0, 0, 0), -- 142137
(142136, 1, 2202, 0, 0, 0, 0, 0, 0, 0, 0), -- 142136
(149045, 1, 71732, 0, 0, 0, 0, 0, 0, 0, 0), -- 149045
(140313, 1, 155801, 0, 0, 155825, 0, 0, 0, 0, 0), -- 140313
(123642, 1, 2703, 0, 0, 0, 0, 0, 0, 0, 0), -- 123642
(142180, 1, 2703, 0, 0, 0, 0, 0, 0, 0, 0), -- 142180
(144310, 1, 155759, 0, 0, 155789, 0, 0, 155807, 0, 0), -- 144310
(133325, 1, 163840, 0, 0, 0, 0, 0, 0, 0, 0), -- 133325
(135678, 1, 1906, 0, 0, 0, 0, 0, 120060, 0, 0), -- 135678
(124805, 1, 118560, 0, 0, 0, 0, 0, 0, 0, 0), -- 124805
(135612, 1, 118080, 0, 0, 0, 0, 0, 0, 0, 0), -- 135612
(139088, 1, 0, 0, 0, 0, 0, 0, 155816, 0, 0), -- 139088
(142166, 1, 2703, 0, 0, 0, 0, 0, 0, 0, 0), -- 142166
(140350, 1, 155799, 0, 0, 155837, 0, 0, 155816, 0, 0), -- 140350
(135681, 1, 2179, 0, 0, 2711, 0, 0, 0, 0, 0), -- 135681
(143842, 1, 134850, 0, 0, 0, 0, 0, 0, 0, 0), -- 143842
(142167, 1, 816, 0, 0, 0, 0, 0, 0, 0, 0), -- 142167
(120599, 1, 3197, 0, 0, 0, 0, 0, 52052, 0, 0), -- 120599
(123169, 1, 816, 0, 0, 0, 0, 0, 0, 0, 0), -- 123169
(136633, 2, 155800, 0, 0, 0, 0, 0, 155816, 0, 0), -- 136633
(143856, 1, 1903, 0, 0, 0, 0, 0, 25972, 0, 0), -- 143856
(135677, 1, 1906, 0, 0, 0, 0, 0, 120060, 0, 0), -- 135677
(139144, 1, 155799, 0, 0, 155837, 0, 0, 155816, 0, 0), -- 139144
(135675, 1, 160482, 0, 0, 143, 0, 0, 2552, 0, 0), -- 135675
(136633, 1, 158900, 0, 0, 0, 0, 0, 155816, 0, 0); -- 136633

DELETE FROM `creature_template` WHERE `entry` IN (150941);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(150941, 0, 120, 120, 2992, 2, 1, 1.142860054969787597, 2000, 0, 32832, 2048, 0, 0, 0, 1); -- 150941

DELETE FROM `quest_template` WHERE `ID` IN (55142 /*55142*/, 46736 /*46736*/, 46735 /*46735*/, 46277 /*46277*/);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `ScalingFactionGroup`, `MaxScalingLevel`, `QuestPackageID`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardDisplaySpell1`, `RewardDisplaySpell2`, `RewardDisplaySpell3`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(55142, 2, 20, 0, 255, 0, 20, -566, 0, 0, 55146, 1, 1, 125, 1, 1, 2400, 0, 0, 0, 274724, 0, 0, 0, 0, 1, 0, 39845896, 8192, 0, 0, 0, 0, 0, 0, 157022, 165010, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 2147483648, 0, 7, 0, 0, 'For the Alliance', 'Take the portal to Stormwind in the Sanctum of the Sages and meet with Ambassador Moorgard in the Stormwind Embassy.', 'Thank you for meeting with me, $n.

I need representatives to go to Stormwind to represent our loyalty and commitment to our newly forged bond with the Alliance. 

I\'ve had Yvia and her magi prepare a portal to the city for you in the Sanctum of the Sages. Once there, go to the Stormwind Embassy and meet with Ambassador Moorgard.

You will face many challenges on the long journey ahead. Remember where you came from and make your people proud!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 31478), -- 55142
(46736, 0, -1, 0, 110, 0, 110, 0, 143, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 100728840, 33554432, 0, 0, 0, 0, 0, 0, 152654, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2045, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 0, 0, 0, 'Contribute to Nether Disruptor', '', '', '', '', 1226, 0, 0, 0, 75, 0, 0, 0, '', '', '', '', 0, 0, 31478), -- 46736
(46735, 0, -1, 0, 110, 0, 110, 0, 143, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 100728840, 33554432, 0, 0, 0, 0, 0, 0, 152654, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2045, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 0, 0, 0, 'Contribute to Command Center', '', '', '', '', 1226, 0, 0, 0, 75, 0, 0, 0, '', '', '', '', 0, 0, 31478), -- 46735
(46277, 0, -1, 0, 110, 0, 110, 0, 143, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 100729096, 33554432, 0, 0, 0, 0, 0, 0, 152654, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2045, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 6, 0, 0, 'Contribute to Mage Tower', '', '', '', '', 1226, 0, 0, 0, 75, 0, 0, 0, '', '', '', '', 0, 0, 31478); -- 46277


DELETE FROM `quest_objectives` WHERE `ID` IN (388754 /*388754*/, 289536 /*289536*/, 289535 /*289535*/, 289167 /*289167*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(388754, 55142, 14, 0, 0, 78707, 1, 0, 0, 0, '', 31478), -- 388754
(289536, 46736, 4, 0, -1, 1342, 100, 0, 0, 0, '', 31478), -- 289536
(289535, 46735, 4, 0, -1, 1342, 100, 0, 0, 0, '', 31478), -- 289535
(289167, 46277, 4, 0, -1, 1342, 100, 0, 0, 0, '', 31478); -- 289167

DELETE FROM `creature_template` WHERE `entry` IN (150941);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES ('150941', '0', '0', '0', '0', '0', 'Katherine Proudmoore', '', NULL, NULL, NULL, '0', '120', '120', '7', '0', '0', '2992', '2', '1', '1.14286', '1', '1', '0', '0', '0', '1', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '10', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', 'npc_Katherine_Proudmoore_kultiran_race', '31478');


DELETE FROM `creature_template_model` WHERE (`CreatureID`=148844 AND `Idx`=0) OR (`CreatureID`=15699 AND `Idx`=0) OR (`CreatureID`=78116 AND `Idx`=1) OR (`CreatureID`=78116 AND `Idx`=0) OR (`CreatureID`=61883 AND `Idx`=0) OR (`CreatureID`=135230 AND `Idx`=1) OR (`CreatureID`=135230 AND `Idx`=0) OR (`CreatureID`=132036 AND `Idx`=0) OR (`CreatureID`=142457 AND `Idx`=1) OR (`CreatureID`=142457 AND `Idx`=0) OR (`CreatureID`=132642 AND `Idx`=7) OR (`CreatureID`=132642 AND `Idx`=6) OR (`CreatureID`=132642 AND `Idx`=5) OR (`CreatureID`=132642 AND `Idx`=4) OR (`CreatureID`=132642 AND `Idx`=3) OR (`CreatureID`=132642 AND `Idx`=2) OR (`CreatureID`=132642 AND `Idx`=1) OR (`CreatureID`=132642 AND `Idx`=0) OR (`CreatureID`=138725 AND `Idx`=0) OR (`CreatureID`=123244 AND `Idx`=6) OR (`CreatureID`=123244 AND `Idx`=5) OR (`CreatureID`=123244 AND `Idx`=4) OR (`CreatureID`=123244 AND `Idx`=3) OR (`CreatureID`=123244 AND `Idx`=2) OR (`CreatureID`=123244 AND `Idx`=1) OR (`CreatureID`=123244 AND `Idx`=0) OR (`CreatureID`=144383 AND `Idx`=0) OR (`CreatureID`=63559 AND `Idx`=0) OR (`CreatureID`=142188 AND `Idx`=0) OR (`CreatureID`=124727 AND `Idx`=0) OR (`CreatureID`=142459 AND `Idx`=2) OR (`CreatureID`=142459 AND `Idx`=1) OR (`CreatureID`=142459 AND `Idx`=0) OR (`CreatureID`=131994 AND `Idx`=0) OR (`CreatureID`=124725 AND `Idx`=0) OR (`CreatureID`=132625 AND `Idx`=0) OR (`CreatureID`=130377 AND `Idx`=0) OR (`CreatureID`=125005 AND `Idx`=9) OR (`CreatureID`=125005 AND `Idx`=8) OR (`CreatureID`=125005 AND `Idx`=7) OR (`CreatureID`=125005 AND `Idx`=6) OR (`CreatureID`=125005 AND `Idx`=5) OR (`CreatureID`=125005 AND `Idx`=4) OR (`CreatureID`=125005 AND `Idx`=3) OR (`CreatureID`=125005 AND `Idx`=2) OR (`CreatureID`=125005 AND `Idx`=1) OR (`CreatureID`=125005 AND `Idx`=0) OR (`CreatureID`=143295 AND `Idx`=1) OR (`CreatureID`=143295 AND `Idx`=0) OR (`CreatureID`=143244 AND `Idx`=0) OR (`CreatureID`=123675 AND `Idx`=0) OR (`CreatureID`=133282 AND `Idx`=3) OR (`CreatureID`=133282 AND `Idx`=2) OR (`CreatureID`=133282 AND `Idx`=1) OR (`CreatureID`=133282 AND `Idx`=0) OR (`CreatureID`=135509 AND `Idx`=6) OR (`CreatureID`=135509 AND `Idx`=5) OR (`CreatureID`=135509 AND `Idx`=4) OR (`CreatureID`=135509 AND `Idx`=3) OR (`CreatureID`=135509 AND `Idx`=2) OR (`CreatureID`=135509 AND `Idx`=1) OR (`CreatureID`=135509 AND `Idx`=0) OR (`CreatureID`=135520 AND `Idx`=5) OR (`CreatureID`=135520 AND `Idx`=4) OR (`CreatureID`=135520 AND `Idx`=3) OR (`CreatureID`=135520 AND `Idx`=2) OR (`CreatureID`=135520 AND `Idx`=1) OR (`CreatureID`=135520 AND `Idx`=0) OR (`CreatureID`=142543 AND `Idx`=1) OR (`CreatureID`=142543 AND `Idx`=0) OR (`CreatureID`=142139 AND `Idx`=0) OR (`CreatureID`=142136 AND `Idx`=0) OR (`CreatureID`=142137 AND `Idx`=0) OR (`CreatureID`=142066 AND `Idx`=0) OR (`CreatureID`=124295 AND `Idx`=0) OR (`CreatureID`=149045 AND `Idx`=0) OR (`CreatureID`=142068 AND `Idx`=0) OR (`CreatureID`=142073 AND `Idx`=0) OR (`CreatureID`=142063 AND `Idx`=0) OR (`CreatureID`=123635 AND `Idx`=0) OR (`CreatureID`=124180 AND `Idx`=0) OR (`CreatureID`=124181 AND `Idx`=0) OR (`CreatureID`=140313 AND `Idx`=3) OR (`CreatureID`=140313 AND `Idx`=2) OR (`CreatureID`=140313 AND `Idx`=1) OR (`CreatureID`=140313 AND `Idx`=0) OR (`CreatureID`=123642 AND `Idx`=5) OR (`CreatureID`=123642 AND `Idx`=4) OR (`CreatureID`=123642 AND `Idx`=3) OR (`CreatureID`=123642 AND `Idx`=2) OR (`CreatureID`=123642 AND `Idx`=1) OR (`CreatureID`=123642 AND `Idx`=0) OR (`CreatureID`=62954 AND `Idx`=2) OR (`CreatureID`=62954 AND `Idx`=1) OR (`CreatureID`=62954 AND `Idx`=0) OR (`CreatureID`=124289 AND `Idx`=0) OR (`CreatureID`=142086 AND `Idx`=0) OR (`CreatureID`=142077 AND `Idx`=0) OR (`CreatureID`=144310 AND `Idx`=0) OR (`CreatureID`=142094 AND `Idx`=0) OR (`CreatureID`=142180 AND `Idx`=3) OR (`CreatureID`=142180 AND `Idx`=2) OR (`CreatureID`=142180 AND `Idx`=1) OR (`CreatureID`=142180 AND `Idx`=0) OR (`CreatureID`=70453 AND `Idx`=0) OR (`CreatureID`=133325 AND `Idx`=3) OR (`CreatureID`=133325 AND `Idx`=2) OR (`CreatureID`=133325 AND `Idx`=1) OR (`CreatureID`=133325 AND `Idx`=0) OR (`CreatureID`=126682 AND `Idx`=1) OR (`CreatureID`=126682 AND `Idx`=0) OR (`CreatureID`=250000 AND `Idx`=0) OR (`CreatureID`=994524 AND `Idx`=0) OR (`CreatureID`=148781 AND `Idx`=0) OR (`CreatureID`=131983 AND `Idx`=0) OR (`CreatureID`=139148 AND `Idx`=0) OR (`CreatureID`=131989 AND `Idx`=0) OR (`CreatureID`=124805 AND `Idx`=3) OR (`CreatureID`=124805 AND `Idx`=2) OR (`CreatureID`=124805 AND `Idx`=1) OR (`CreatureID`=124805 AND `Idx`=0) OR (`CreatureID`=126781 AND `Idx`=0) OR (`CreatureID`=135678 AND `Idx`=1) OR (`CreatureID`=135678 AND `Idx`=0) OR (`CreatureID`=139088 AND `Idx`=11) OR (`CreatureID`=139088 AND `Idx`=10) OR (`CreatureID`=139088 AND `Idx`=9) OR (`CreatureID`=139088 AND `Idx`=8) OR (`CreatureID`=139088 AND `Idx`=7) OR (`CreatureID`=139088 AND `Idx`=6) OR (`CreatureID`=139088 AND `Idx`=5) OR (`CreatureID`=139088 AND `Idx`=4) OR (`CreatureID`=139088 AND `Idx`=3) OR (`CreatureID`=139088 AND `Idx`=2) OR (`CreatureID`=139088 AND `Idx`=1) OR (`CreatureID`=139088 AND `Idx`=0) OR (`CreatureID`=123604 AND `Idx`=3) OR (`CreatureID`=123604 AND `Idx`=2) OR (`CreatureID`=123604 AND `Idx`=1) OR (`CreatureID`=123604 AND `Idx`=0) OR (`CreatureID`=140473 AND `Idx`=1) OR (`CreatureID`=140473 AND `Idx`=0) OR (`CreatureID`=144635 AND `Idx`=0) OR (`CreatureID`=135612 AND `Idx`=0) OR (`CreatureID`=65314 AND `Idx`=0) OR (`CreatureID`=154893 AND `Idx`=1) OR (`CreatureID`=154893 AND `Idx`=0) OR (`CreatureID`=510 AND `Idx`=1) OR (`CreatureID`=510 AND `Idx`=0) OR (`CreatureID`=68662 AND `Idx`=0) OR (`CreatureID`=142166 AND `Idx`=3) OR (`CreatureID`=142166 AND `Idx`=2) OR (`CreatureID`=142166 AND `Idx`=1) OR (`CreatureID`=142166 AND `Idx`=0) OR (`CreatureID`=26125 AND `Idx`=3) OR (`CreatureID`=26125 AND `Idx`=2) OR (`CreatureID`=26125 AND `Idx`=1) OR (`CreatureID`=26125 AND `Idx`=0) OR (`CreatureID`=140350 AND `Idx`=3) OR (`CreatureID`=140350 AND `Idx`=2) OR (`CreatureID`=140350 AND `Idx`=1) OR (`CreatureID`=140350 AND `Idx`=0) OR (`CreatureID`=73350 AND `Idx`=0) OR (`CreatureID`=18364 AND `Idx`=0) OR (`CreatureID`=4272 AND `Idx`=0) OR (`CreatureID`=18365 AND `Idx`=0) OR (`CreatureID`=305 AND `Idx`=0) OR (`CreatureID`=139144 AND `Idx`=0) OR (`CreatureID`=143251 AND `Idx`=0) OR (`CreatureID`=142169 AND `Idx`=0) OR (`CreatureID`=142167 AND `Idx`=0) OR (`CreatureID`=143254 AND `Idx`=0) OR (`CreatureID`=143842 AND `Idx`=0) OR (`CreatureID`=140472 AND `Idx`=1) OR (`CreatureID`=140472 AND `Idx`=0) OR (`CreatureID`=143856 AND `Idx`=0) OR (`CreatureID`=142187 AND `Idx`=0) OR (`CreatureID`=143844 AND `Idx`=3) OR (`CreatureID`=143844 AND `Idx`=2) OR (`CreatureID`=143844 AND `Idx`=1) OR (`CreatureID`=143844 AND `Idx`=0) OR (`CreatureID`=143870 AND `Idx`=1) OR (`CreatureID`=143870 AND `Idx`=0) OR (`CreatureID`=143709 AND `Idx`=0) OR (`CreatureID`=994519 AND `Idx`=0) OR (`CreatureID`=120599 AND `Idx`=3) OR (`CreatureID`=120599 AND `Idx`=2) OR (`CreatureID`=120599 AND `Idx`=1) OR (`CreatureID`=120599 AND `Idx`=0) OR (`CreatureID`=135675 AND `Idx`=1) OR (`CreatureID`=135675 AND `Idx`=0) OR (`CreatureID`=135677 AND `Idx`=3) OR (`CreatureID`=135677 AND `Idx`=2) OR (`CreatureID`=135677 AND `Idx`=1) OR (`CreatureID`=135677 AND `Idx`=0) OR (`CreatureID`=135681 AND `Idx`=0) OR (`CreatureID`=135446 AND `Idx`=0) OR (`CreatureID`=148927 AND `Idx`=0) OR (`CreatureID`=7565 AND `Idx`=0) OR (`CreatureID`=154852 AND `Idx`=0) OR (`CreatureID`=142117 AND `Idx`=0) OR (`CreatureID`=142174 AND `Idx`=0) OR (`CreatureID`=135808 AND `Idx`=0) OR (`CreatureID`=139522 AND `Idx`=0) OR (`CreatureID`=136633 AND `Idx`=11) OR (`CreatureID`=136633 AND `Idx`=10) OR (`CreatureID`=136633 AND `Idx`=9) OR (`CreatureID`=136633 AND `Idx`=8) OR (`CreatureID`=136633 AND `Idx`=7) OR (`CreatureID`=136633 AND `Idx`=6) OR (`CreatureID`=136633 AND `Idx`=5) OR (`CreatureID`=136633 AND `Idx`=4) OR (`CreatureID`=136633 AND `Idx`=3) OR (`CreatureID`=136633 AND `Idx`=2) OR (`CreatureID`=136633 AND `Idx`=1) OR (`CreatureID`=136633 AND `Idx`=0) OR (`CreatureID`=123169 AND `Idx`=1) OR (`CreatureID`=123169 AND `Idx`=0) OR (`CreatureID`=124859 AND `Idx`=0) OR (`CreatureID`=126434 AND `Idx`=1) OR (`CreatureID`=126434 AND `Idx`=0) OR (`CreatureID`=150941 AND `Idx`=0);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(148844, 0, 90141, 1, 1, 31478), -- 148844
(15699, 0, 10269, 1, 1, 31478), -- 15699
(78116, 1, 38373, 1, 0, 31478), -- 78116
(78116, 0, 525, 1, 1, 31478), -- 78116
(61883, 0, 42297, 1, 1, 31478), -- 61883
(135230, 1, 82814, 1, 1, 31478), -- 135230
(135230, 0, 82813, 1, 1, 31478), -- 135230
(132036, 0, 32778, 1, 1, 31478), -- 132036
(142457, 1, 87050, 1, 1, 31478), -- 142457
(142457, 0, 87053, 1, 1, 31478), -- 142457
(132642, 7, 82546, 1, 1, 31478), -- 132642
(132642, 6, 82612, 1, 1, 31478), -- 132642
(132642, 5, 82543, 1, 1, 31478), -- 132642
(132642, 4, 78963, 1, 1, 31478), -- 132642
(132642, 3, 78962, 1, 1, 31478), -- 132642
(132642, 2, 78475, 1, 1, 31478), -- 132642
(132642, 1, 82544, 1, 1, 31478), -- 132642
(132642, 0, 82545, 1, 1, 31478), -- 132642
(138725, 0, 85963, 1, 1, 31478), -- 138725
(123244, 6, 78632, 1, 1, 31478), -- 123244
(123244, 5, 78633, 1, 1, 31478), -- 123244
(123244, 4, 78630, 1, 1, 31478), -- 123244
(123244, 3, 78631, 1, 1, 31478), -- 123244
(123244, 2, 80857, 1, 1, 31478), -- 123244
(123244, 1, 80858, 1, 1, 31478), -- 123244
(123244, 0, 82693, 1, 1, 31478), -- 123244
(144383, 0, 77691, 1, 1, 31478), -- 144383
(63559, 0, 47955, 1, 1, 31478), -- 63559
(142188, 0, 87634, 1, 1, 31478), -- 142188
(124727, 0, 83664, 1, 1, 31478), -- 124727
(142459, 2, 87649, 1, 1, 31478), -- 142459
(142459, 1, 87648, 1, 1, 31478), -- 142459
(142459, 0, 87647, 1, 1, 31478), -- 142459
(131994, 0, 28047, 1, 1, 31478), -- 131994
(124725, 0, 83812, 1, 1, 31478), -- 124725
(132625, 0, 82148, 1.299999952316284179, 1, 31478), -- 132625
(130377, 0, 81168, 1, 1, 31478), -- 130377
(125005, 9, 88482, 1, 1, 31478), -- 125005
(125005, 8, 88481, 1, 1, 31478), -- 125005
(125005, 7, 82541, 1, 1, 31478), -- 125005
(125005, 6, 82540, 1, 1, 31478), -- 125005
(125005, 5, 82539, 1, 1, 31478), -- 125005
(125005, 4, 82538, 1, 1, 31478), -- 125005
(125005, 3, 78965, 1, 1, 31478), -- 125005
(125005, 2, 78964, 1, 1, 31478), -- 125005
(125005, 1, 78472, 1, 1, 31478), -- 125005
(125005, 0, 78471, 1, 1, 31478), -- 125005
(143295, 1, 88503, 1, 1, 31478), -- 143295
(143295, 0, 88502, 1, 1, 31478), -- 143295
(143244, 0, 87780, 1, 1, 31478), -- 143244
(123675, 0, 77532, 1, 1, 31478), -- 123675
(133282, 3, 81372, 1, 1, 31478), -- 133282
(133282, 2, 81321, 1, 1, 31478), -- 133282
(133282, 1, 81366, 1, 1, 31478), -- 133282
(133282, 0, 81363, 1, 1, 31478), -- 133282
(135509, 6, 84284, 1, 1, 31478), -- 135509
(135509, 5, 82234, 1, 1, 31478), -- 135509
(135509, 4, 82546, 1, 1, 31478), -- 135509
(135509, 3, 82543, 1, 1, 31478), -- 135509
(135509, 2, 82665, 1, 1, 31478), -- 135509
(135509, 1, 80182, 1, 1, 31478), -- 135509
(135509, 0, 80180, 1, 1, 31478), -- 135509
(135520, 5, 77043, 1, 1, 31478), -- 135520
(135520, 4, 76550, 1, 1, 31478), -- 135520
(135520, 3, 77054, 1, 1, 31478), -- 135520
(135520, 2, 77039, 1, 1, 31478), -- 135520
(135520, 1, 76547, 1, 1, 31478), -- 135520
(135520, 0, 76515, 1, 1, 31478), -- 135520
(142543, 1, 11686, 1, 1, 31478), -- 142543
(142543, 0, 1126, 1, 0, 31478), -- 142543
(142139, 0, 76046, 0.300000011920928955, 1, 31478), -- 142139
(142136, 0, 87583, 1, 1, 31478), -- 142136
(142137, 0, 87584, 1, 1, 31478), -- 142137
(142066, 0, 87375, 1, 1, 31478), -- 142066
(124295, 0, 77940, 1, 1, 31478), -- 124295
(149045, 0, 76422, 1, 1, 31478), -- 149045
(142068, 0, 38804, 1, 1, 31478), -- 142068
(142073, 0, 87599, 1, 1, 31478), -- 142073
(142063, 0, 87376, 1, 1, 31478), -- 142063
(123635, 0, 77466, 1, 1, 31478), -- 123635
(124180, 0, 77851, 1, 1, 31478), -- 124180
(124181, 0, 76515, 1, 1, 31478), -- 124181
(140313, 3, 86028, 1, 1, 31478), -- 140313
(140313, 2, 86027, 1, 1, 31478), -- 140313
(140313, 1, 86026, 1, 1, 31478), -- 140313
(140313, 0, 86025, 1, 1, 31478), -- 140313
(123642, 5, 84263, 1, 1, 31478), -- 123642
(123642, 4, 84262, 1, 1, 31478), -- 123642
(123642, 3, 78472, 1, 1, 31478), -- 123642
(123642, 2, 78471, 1, 1, 31478), -- 123642
(123642, 1, 80178, 1, 1, 31478), -- 123642
(123642, 0, 80177, 1, 1, 31478), -- 123642
(62954, 2, 2176, 1, 1, 31478), -- 62954
(62954, 1, 1418, 1, 2, 31478), -- 62954
(62954, 0, 1141, 1, 2, 31478), -- 62954
(124289, 0, 77936, 1, 1, 31478), -- 124289
(142086, 0, 87601, 1, 1, 31478), -- 142086
(142077, 0, 87600, 1, 1, 31478), -- 142077
(144310, 0, 88528, 1, 1, 31478), -- 144310
(142094, 0, 87611, 1, 1, 31478), -- 142094
(142180, 3, 80754, 1, 1, 31478), -- 142180
(142180, 2, 80753, 1, 1, 31478), -- 142180
(142180, 1, 80752, 1, 1, 31478), -- 142180
(142180, 0, 80751, 1, 1, 31478), -- 142180
(70453, 0, 48057, 1, 1, 31478), -- 70453
(133325, 3, 81802, 1, 1, 31478), -- 133325
(133325, 2, 80767, 1, 1, 31478), -- 133325
(133325, 1, 81345, 1, 1, 31478), -- 133325
(133325, 0, 81807, 1, 1, 31478), -- 133325
(126682, 1, 61205, 1, 1, 31478), -- 126682
(126682, 0, 61206, 1, 1, 31478), -- 126682
(250000, 0, 27614, 1.5, 1, 31478), -- 250000
(994524, 0, 22769, 1, 1, 31478), -- 994524
(148781, 0, 90155, 0.200000002980232238, 1, 31478), -- 148781
(131983, 0, 42178, 1.25, 1, 31478), -- 131983
(139148, 0, 82148, 1, 1, 31478), -- 139148
(131989, 0, 32778, 1, 1, 31478), -- 131989
(124805, 3, 88616, 1, 1, 31478), -- 124805
(124805, 2, 78196, 1, 1, 31478), -- 124805
(124805, 1, 78195, 1, 1, 31478), -- 124805
(124805, 0, 78193, 1, 1, 31478), -- 124805
(126781, 0, 28047, 1, 1, 31478), -- 126781
(135678, 1, 86472, 1, 1, 31478), -- 135678
(135678, 0, 86471, 1, 1, 31478), -- 135678
(139088, 11, 88612, 1, 1, 31478), -- 139088
(139088, 10, 88611, 1, 1, 31478), -- 139088
(139088, 9, 88610, 1, 1, 31478), -- 139088
(139088, 8, 88615, 1, 1, 31478), -- 139088
(139088, 7, 88614, 1, 1, 31478), -- 139088
(139088, 6, 88613, 1, 1, 31478), -- 139088
(139088, 5, 88607, 1, 1, 31478), -- 139088
(139088, 4, 88606, 1, 1, 31478), -- 139088
(139088, 3, 88604, 1, 1, 31478), -- 139088
(139088, 2, 88609, 1, 1, 31478), -- 139088
(139088, 1, 88608, 1, 1, 31478), -- 139088
(139088, 0, 88605, 1, 1, 31478), -- 139088
(123604, 3, 229, 1, 1, 31478), -- 123604
(123604, 2, 65, 1, 1, 31478), -- 123604
(123604, 1, 76890, 1, 1, 31478), -- 123604
(123604, 0, 76871, 1, 1, 31478), -- 123604
(140473, 1, 27823, 1, 1, 31478), -- 140473
(140473, 0, 14473, 1, 0, 31478), -- 140473
(144635, 0, 86764, 1, 1, 31478), -- 144635
(135612, 0, 85758, 1, 1, 31478), -- 135612
(65314, 0, 43868, 1, 1, 31478), -- 65314
(154893, 1, 81214, 0.75, 1, 31478), -- 154893
(154893, 0, 81215, 0.75, 1, 31478), -- 154893
(510, 1, 38373, 1, 0, 31478), -- 510
(510, 0, 525, 1, 1, 31478), -- 510
(68662, 0, 46925, 1, 1, 31478), -- 68662
(142166, 3, 88271, 1, 1, 31478), -- 142166
(142166, 2, 88265, 1, 1, 31478), -- 142166
(142166, 1, 88264, 1, 1, 31478), -- 142166
(142166, 0, 88262, 1, 1, 31478), -- 142166
(26125, 3, 24995, 1, 0.25, 31478), -- 26125
(26125, 2, 24992, 1, 0.25, 31478), -- 26125
(26125, 1, 24993, 1, 0.25, 31478), -- 26125
(26125, 0, 24994, 1, 0.25, 31478), -- 26125
(140350, 3, 86641, 1.10000002384185791, 1, 31478), -- 140350
(140350, 2, 86640, 1.10000002384185791, 1, 31478), -- 140350
(140350, 1, 86639, 1.10000002384185791, 1, 31478), -- 140350
(140350, 0, 86638, 1.10000002384185791, 1, 31478), -- 140350
(73350, 0, 51417, 1, 1, 31478), -- 73350
(18364, 0, 17700, 1, 0, 31478), -- 18364
(4272, 0, 2328, 1, 1, 31478), -- 4272
(18365, 0, 17701, 1, 0, 31478), -- 18365
(305, 0, 2410, 1, 1, 31478), -- 305
(139144, 0, 86168, 1.10000002384185791, 1, 31478), -- 139144
(143251, 0, 87788, 1, 1, 31478), -- 143251
(142169, 0, 86763, 1, 1, 31478), -- 142169
(142167, 0, 81166, 1, 1, 31478), -- 142167
(143254, 0, 87796, 1, 1, 31478), -- 143254
(143842, 0, 77523, 1, 1, 31478), -- 143842
(140472, 1, 27823, 1, 1, 31478), -- 140472
(140472, 0, 14473, 1, 0, 31478), -- 140472
(143856, 0, 26353, 1, 1, 31478), -- 143856
(142187, 0, 80893, 1, 1, 31478), -- 142187
(143844, 3, 88051, 1, 1, 31478), -- 143844
(143844, 2, 88050, 1, 1, 31478), -- 143844
(143844, 1, 88049, 1, 1, 31478), -- 143844
(143844, 0, 88048, 1, 0, 31478), -- 143844
(143870, 1, 86472, 1, 1, 31478), -- 143870
(143870, 0, 86471, 1, 1, 31478), -- 143870
(143709, 0, 13069, 1, 1, 31478), -- 143709
(994519, 0, 22769, 1, 1, 31478), -- 994519
(120599, 3, 75911, 1, 1, 31478), -- 120599
(120599, 2, 75910, 1, 1, 31478), -- 120599
(120599, 1, 75877, 1, 1, 31478), -- 120599
(120599, 0, 75876, 1, 1, 31478), -- 120599
(135675, 1, 85771, 1, 1, 31478), -- 135675
(135675, 0, 85767, 1, 1, 31478), -- 135675
(135677, 3, 55345, 1, 1, 31478), -- 135677
(135677, 2, 55344, 1, 1, 31478), -- 135677
(135677, 1, 53108, 1, 1, 31478), -- 135677
(135677, 0, 53107, 1, 1, 31478), -- 135677
(135681, 0, 5565, 1.220000028610229492, 1, 31478), -- 135681
(135446, 0, 88690, 1, 1, 31478), -- 135446
(148927, 0, 90165, 1, 1, 31478), -- 148927
(7565, 0, 1206, 1, 1, 31478), -- 7565
(154852, 0, 88766, 0.5, 1, 31478), -- 154852
(142117, 0, 24052, 1, 1, 31478), -- 142117
(142174, 0, 27681, 1, 1, 31478), -- 142174
(135808, 0, 84415, 1, 1, 31478), -- 135808
(139522, 0, 86443, 2, 1, 31478), -- 139522
(136633, 11, 88609, 1, 1, 31478), -- 136633
(136633, 10, 88608, 1, 1, 31478), -- 136633
(136633, 9, 88605, 1, 1, 31478), -- 136633
(136633, 8, 88607, 1, 1, 31478), -- 136633
(136633, 7, 88606, 1, 1, 31478), -- 136633
(136633, 6, 88604, 1, 1, 31478), -- 136633
(136633, 5, 88615, 1, 1, 31478), -- 136633
(136633, 4, 88614, 1, 1, 31478), -- 136633
(136633, 3, 88613, 1, 1, 31478), -- 136633
(136633, 2, 88612, 1, 1, 31478), -- 136633
(136633, 1, 88611, 1, 1, 31478), -- 136633
(136633, 0, 88610, 1, 1, 31478), -- 136633
(123169, 1, 78483, 1, 1, 31478), -- 123169
(123169, 0, 78482, 1, 1, 31478), -- 123169
(124859, 0, 46710, 1, 1, 31478), -- 124859
(126434, 1, 32646, 1, 1, 31478), -- 126434
(126434, 0, 33719, 1, 1, 31478), -- 126434
(150941, 0, 76135, 1, 1, 31478); -- 150941


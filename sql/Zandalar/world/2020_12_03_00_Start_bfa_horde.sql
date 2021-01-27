DELETE FROM `areatrigger_template` WHERE `Id` IN (15904, 15905, 18154, 17215, 8352, 16446, 18282, 19647, 3678, 17044, 9170, 10202);
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `VerifiedBuild`) VALUES
(15904, 4, 6, 6, 6, 5, 5, 4, 4, 32722),
(15905, 0, 2, 3, 3, 0, 0, 0, 0, 32722),
(18154, 4, 1, 3, 3, 8, 8, 0.300000011920928955, 0.300000011920928955, 32722),
(17215, 0, 4, 10, 10, 0, 0, 0, 0, 32722),
(8352, 0, 0, 8, 8, 0, 0, 0, 0, 32722),
(16446, 0, 0, 1, 1, 0, 0, 0, 0, 32722),
(18282, 4, 1, 2, 2, 6, 6, 0.300000011920928955, 0.300000011920928955, 32722),
(19647, 0, 4, 10, 10, 0, 0, 0, 0, 32722),
(3678, 4, 0, 10, 10, 7, 7, 3, 3, 32722),
(17044, 0, 4, 10, 10, 0, 0, 0, 0, 32722),
(9170, 4, 0, 3, 3, 4, 4, 1, 1, 32722),
(10202, 0, 0, 1, 1, 0, 0, 0, 0, 32722);


DELETE FROM `spell_areatrigger` WHERE (`SpellMiscId`=11221 AND `AreaTriggerId`=15904) OR (`SpellMiscId`=10958 AND `AreaTriggerId`=15905) OR (`SpellMiscId`=13639 AND `AreaTriggerId`=18154) OR (`SpellMiscId`=12537 AND `AreaTriggerId`=17215) OR (`SpellMiscId`=12483 AND `AreaTriggerId`=15905) OR (`SpellMiscId`=3680 AND `AreaTriggerId`=8352) OR (`SpellMiscId`=1409 AND `AreaTriggerId`=16446) OR (`SpellMiscId`=13805 AND `AreaTriggerId`=18282) OR (`SpellMiscId`=14996 AND `AreaTriggerId`=19647) OR (`SpellMiscId`=510 AND `AreaTriggerId`=3678) OR (`SpellMiscId`=12355 AND `AreaTriggerId`=17044) OR (`SpellMiscId`=4424 AND `AreaTriggerId`=9170) OR (`SpellMiscId`=5500 AND `AreaTriggerId`=10202);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(11221, 15904, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 32722), -- SpellId : 267688
(10958, 15905, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 32722), -- SpellId : 247426
(13639, 18154, 6566, 0, 0, 6565, 0, 0, 0, 731, 8000, 32722), -- SpellId : 272437
(12537, 17215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32722), -- SpellId : 262248
(12483, 15905, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 32722), -- SpellId : 261748
(3680, 8352, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 32722), -- SpellId : 209693
(1409, 16446, 0, 0, 0, 0, 0, 0, 0, 0, 500, 32722), -- SpellId : 268216
(13805, 18282, 6729, 0, 0, 6728, 0, 0, 0, 3053, 8000, 32722), -- SpellId : 274022
(14996, 19647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32722), -- SpellId : 281780
(510, 3678, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 32722), -- SpellId : 132950
(12355, 17044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32722), -- SpellId : 249365
(4424, 9170, 0, 0, 0, 0, 0, 0, 0, 0, 60000, 32722), -- SpellId : 187651
(5500, 10202, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 32722); -- SpellId : 260031

DELETE FROM `areatrigger_template` WHERE `Id` IN (11513, 11420);
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `VerifiedBuild`) VALUES
(11513, 0, 0, 40, 40, 0, 0, 0, 0, 27377),
(11420, 0, 4, 8, 8, 0, 0, 0, 0, 27377);


DELETE FROM `spell_areatrigger` WHERE (`SpellMiscId`=7044 AND `AreaTriggerId`=11513) OR (`SpellMiscId`=6917 AND `AreaTriggerId`=11420);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(7044, 11513, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 27377), -- SpellId : 212799
(6917, 11420, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 27377); -- SpellId : 196770

DELETE FROM `conversation_actors` WHERE (`ConversationId`=8423 AND `ConversationActorId`=126076 AND `Idx`=0);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `VerifiedBuild`) VALUES
(8423, 126076, 0, 27377);

DELETE FROM `conversation_actor_template` WHERE `Id`=126076;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(126076, 126076, 81857, 27377);


DELETE FROM `conversation_line_template` WHERE `Id` IN (19807, 19036);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(19807, 12708, 606, 0, 0, 27377),
(19036, 0, 606, 0, 0, 27377);


DELETE FROM `conversation_template` WHERE `Id`=8423;
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `TextureKitId`, `VerifiedBuild`) VALUES
(8423, 19036, 20012, 0, 27377);
DELETE FROM `conversation_actors` WHERE `ConversationId` IN 
(
8166,
6790,
6787,
6787,
2987,
7928,
8694,
6487,
1990,
1990,
6430,
8423,
9675,
5500,
5500,
5500,
6789,
6789,
5926,
5926,
5926,
6680,
6680,
8691,
7759,
7760,
7760,
8159,
7762,
7762,
7736,
7736,
9316,
6458,
6458,
6458,
8160,
8690,
7659,
7659,
7659,
7659,
7659,
7659,
8164,
8164,
9161,
9161
);

INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `VerifiedBuild`) VALUES
(8166, 137109, 0, 32722),
(6790, 144380, 0, 32722),
(6787, 124651, 0, 32722),
(6787, 130367, 1, 32722),
(2987, 105317, 1, 32722), -- Full: 0x202F30F3C066D94000055200006D75CB Creature/0 R3020/S1362 Map: 8.0 Boost Experience - Horde Entry: Warlord Zakgra Low: 7173579
(7928, 124651, 0, 32722),
(8694, 140129, 0, 32722),
(6487, 130367, 0, 32722),
(1990, 0, 2, 32722), -- Full: 0x0800040000000000FFFFFFFFFFFFFFFF Player/0 R1/S16777215 Map: Eastern Kingdoms Low: 1099511627775
(1990, 105317, 1, 32722), -- Full: 0x202F30F3C066D94000055200006D75CB Creature/0 R3020/S1362 Map: 8.0 Boost Experience - Horde Entry: Warlord Zakgra Low: 7173579
(6430, 130367, 0, 32722), -- Full: 0x2030F8DC007F4FC0007B9C00006D7645 Creature/0 R3134/S31644 Map: Lordaeron Entry: High Overlord Saurfang Low: 7173701
(8423, 126076, 0, 32722),
(9675, 124651, 0, 32722),
(5500, 125496, 0, 32722),
(5500, 125496, 2, 32722),
(5500, 125496, 1, 32722),
(6789, 130367, 1, 32722), -- Full: 0x2030F8DC007F4FC0007B9C00006D775F Creature/0 R3134/S31644 Map: Lordaeron Entry: High Overlord Saurfang Low: 7173983
(6789, 124651, 0, 32722), -- Full: 0x2030F8DC007F4F40007B9C00006D7760 Creature/0 R3134/S31644 Map: Lordaeron Entry: Lady Sylvanas Windrunner Low: 7173984
(5926, 126309, 2, 32722),
(5926, 133243, 0, 32722),
(5926, 124787, 1, 32722),
(6680, 140039, 1, 32722),
(6680, 130367, 0, 32722),
(8691, 139491, 0, 32722),
(7759, 133243, 0, 32722),
(7760, 133243, 0, 32722), -- Full: 0x2030F8DC00821EC0007B9C00006D7A75 Creature/0 R3134/S31644 Map: Lordaeron Entry: Nathanos Blightcaller Low: 7174773
(7760, 133240, 1, 32722), -- Full: 0x2030F8DC00821E00007B9C00006D7A73 Creature/0 R3134/S31644 Map: Lordaeron Entry: Baine Bloodhoof Low: 7174771
(8159, 124651, 0, 32722),
(7762, 137109, 1, 32722),
(7762, 133243, 0, 32722),
(7736, 133243, 1, 32722), -- Full: 0x2030F8DC00821EC0007B9C00006D7A75 Creature/0 R3134/S31644 Map: Lordaeron Entry: Nathanos Blightcaller Low: 7174773
(7736, 124651, 0, 32722), -- Full: 0x2030F8DC007F4F40007B9C00006D7A74 Creature/0 R3134/S31644 Map: Lordaeron Entry: Lady Sylvanas Windrunner Low: 7174772
(9316, 134282, 0, 32722),
(6458, 130367, 0, 32722), -- Full: 0x2030F8DC007F4FC0007B9C00006D7645 Creature/0 R3134/S31644 Map: Lordaeron Entry: High Overlord Saurfang Low: 7173701
(6458, 131737, 2, 32722), -- Full: 0x0
(6458, 131736, 1, 32722), -- Full: 0x0
(8160, 124651, 0, 32722),
(8690, 140126, 0, 32722),
(7659, 137109, 5, 32722),
(7659, 136392, 4, 32722),
(7659, 133243, 3, 32722),
(7659, 126794, 2, 32722),
(7659, 125138, 0, 32722),
(7659, 126309, 1, 32722),
(8164, 130367, 0, 32722),
(8164, 124651, 1, 32722),
(9161, 105317, 1, 32722), -- Full: 0x202F30F3C066D94000055200006D75CB Creature/0 R3020/S1362 Map: 8.0 Boost Experience - Horde Entry: Warlord Zakgra Low: 7173579
(9161, 0, 2, 32722); -- Full: 0x0800040000000000FFFFFFFFFFFFFFFF Player/0 R1/S16777215 Map: Eastern Kingdoms Low: 1099511627775


DELETE FROM `conversation_actor_template` WHERE `Id` IN 
(
137109,
144380,
124651,
105317,
140129,
130367,
126076,
125496,
133243,
124787,
126309,
140039,
139491,
133240,
134282,
131736,
131737,
140126,
125138,
126794,
136392
);

INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(137109, 137109, 17122, 32722),
(144380, 144380, 88541, 32722),
(124651, 124651, 86014, 32722),
(105317, 105317, 69090, 32722),
(140129, 140129, 65552, 32722),
(130367, 130367, 14732, 32722),
(126076, 126076, 81857, 32722),
(125496, 125496, 31177, 32722),
(133243, 133243, 86011, 32722),
(124787, 124787, 88348, 32722),
(126309, 126309, 86008, 32722),
(140039, 140039, 87523, 32722),
(139491, 139491, 86323, 32722),
(133240, 133240, 30272, 32722),
(134282, 134282, 71764, 32722),
(131736, 131736, 81612, 32722),
(131737, 131737, 7613, 32722),
(140126, 140126, 73176, 32722),
(125138, 125138, 86013, 32722),
(126794, 126794, 82723, 32722),
(136392, 136392, 86013, 32722);


DELETE FROM `conversation_line_template` WHERE `Id` IN (18494, 15486, 17563, 17562, 17561, 17560, 15481, 15482, 17559, 18028, 18027, 18026, 18076, 19452, 14676, 4186, 4187, 6482, 6240, 4185, 14507, 14516, 14515, 14514, 14513, 19807, 19036, 22122, 21942, 12335, 12330, 21941, 18480, 18489, 18488, 17580, 18487, 18486, 13292, 13271, 13291, 13290, 13273, 13272, 15237, 15236, 19449, 17757, 17777, 17776, 17775, 17774, 17773, 17772, 17771, 17770, 17769, 17768, 18474, 17784, 17783, 17678, 17676, 17677, 18516, 17675, 17674, 21011, 15015, 15019, 15017, 15016, 14622, 15020, 18475, 19448, 22245, 22244, 22243, 17442, 17441, 17440, 17439, 17438, 17437, 17436, 17435, 18485, 18484, 18483, 20582, 20580, 20579, 20577, 20575);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(18494, 0, 119, 0, 0, 32722),
(15486, 0, 100, 0, 0, 32722),
(17563, 64649, 607, 0, 1, 32722),
(17562, 57990, 607, 0, 0, 32722),
(17561, 45901, 607, 0, 0, 32722),
(17560, 32752, 607, 0, 0, 32722),
(15481, 18971, 607, 0, 0, 32722),
(15482, 6158, 87, 1, 0, 32722),
(17559, 0, 607, 0, 0, 32722),
(18028, 17498, 0, 1, 0, 32722),
(18027, 8133, 0, 1, 0, 32722),
(18026, 0, 0, 1, 0, 32722),
(18076, 0, 120, 0, 0, 32722),
(19452, 0, 101, 0, 0, 32722),
(14676, 0, 87, 0, 0, 32722),
(4186, 23055, 0, 2, 1, 32722),
(4187, 19139, 0, 1, 1, 32722),
(6482, 19139, 0, 2, 1, 32722),
(6240, 7309, 0, 1, 0, 32722),
(4185, 0, 0, 1, 0, 32722),
(14507, 27672, 0, 0, 0, 32722),
(14516, 21615, 0, 0, 0, 32722),
(14515, 11084, 0, 0, 0, 32722),
(14514, 4351, 0, 0, 0, 32722),
(14513, 0, 0, 0, 0, 32722),
(19807, 12708, 606, 0, 0, 32722),
(19036, 0, 606, 0, 0, 32722),
(22122, 0, 607, 0, 0, 32722),
(21942, 20814, 83, 0, 0, 32722),
(12335, 18020, 103, 2, 0, 32722),
(12330, 7239, 607, 1, 0, 32722),
(21941, 0, 83, 0, 0, 32722),
(18480, 32694, 0, 1, 1, 32722),
(18489, 21582, 0, 1, 0, 32722),
(18488, 14747, 0, 1, 1, 32722),
(17580, 4352, 0, 0, 0, 32722),
(18487, 2743, 0, 1, 0, 32722),
(18486, 0, 0, 0, 0, 32722),
(13292, 24889, 82, 2, 0, 32722),
(13271, 21532, 83, 0, 1, 32722),
(13291, 17834, 83, 0, 0, 32722),
(13290, 9365, 82, 2, 0, 32722),
(13273, 4471, 85, 1, 0, 32722),
(13272, 0, 83, 0, 0, 32722),
(15237, 3570, 130, 1, 0, 32722),
(15236, 0, 87, 0, 0, 32722),
(19449, 0, 94, 0, 0, 32722),
(17757, 0, 83, 0, 0, 32722),
(17777, 51479, 0, 0, 1, 32722),
(17776, 46738, 0, 0, 1, 32722),
(17775, 40378, 0, 1, 1, 32722),
(17774, 30271, 0, 0, 1, 32722),
(17773, 27176, 0, 1, 1, 32722),
(17772, 22356, 0, 0, 1, 32722),
(17771, 16818, 0, 0, 0, 32722),
(17770, 11071, 0, 0, 0, 32722),
(17769, 7067, 0, 1, 0, 32722),
(17768, 0, 0, 0, 0, 32722),
(18474, 0, 120, 0, 0, 32722),
(17784, 5762, 119, 1, 0, 32722),
(17783, 0, 83, 0, 0, 32722),
(17678, 29294, 0, 1, 1, 32722),
(17676, 25914, 0, 1, 0, 32722),
(17677, 20021, 0, 0, 0, 32722),
(18516, 9963, 0, 1, 0, 32722),
(17675, 6280, 0, 0, 0, 32722),
(17674, 0, 0, 0, 0, 32722),
(21011, 0, 91, 0, 0, 32722),
(15015, 18033, 0, 0, 0, 32722),
(15019, 11533, 0, 2, 0, 32722),
(15017, 9211, 0, 1, 0, 32722),
(15016, 5697, 0, 2, 0, 32722),
(14622, 3449, 0, 1, 0, 32722),
(15020, 0, 0, 0, 0, 32722),
(18475, 0, 120, 0, 0, 32722),
(19448, 0, 82, 0, 0, 32722),
(22245, 53616, 119, 5, 0, 32722),
(22244, 48044, 120, 4, 0, 32722),
(22243, 38775, 83, 3, 0, 32722),
(17442, 33614, 94, 2, 0, 32722),
(17441, 29731, 121, 0, 0, 32722),
(17440, 24518, 82, 1, 0, 32722),
(17439, 20298, 82, 1, 0, 32722),
(17438, 13337, 95, 2, 0, 32722),
(17437, 7100, 121, 0, 0, 32722),
(17436, 3635, 82, 1, 0, 32722),
(17435, 0, 121, 0, 0, 32722),
(18485, 25309, 86, 0, 0, 32722),
(18484, 9496, 607, 1, 0, 32722),
(18483, 0, 86, 0, 0, 32722),
(20582, 15509, 0, 1, 0, 32722),
(20580, 15509, 0, 2, 1, 32722),
(20579, 8459, 0, 1, 0, 32722),
(20577, 1959, 0, 1, 0, 32722),
(20575, 0, 0, 1, 0, 32722);


DELETE FROM `conversation_template` WHERE `Id` IN (9316, 6787, 8160, 8159, 7928, 8166, 7659, 5926, 7759, 7762, 7760, 7736, 8164, 8691, 8694, 9675, 8690, 5500, 6789, 6487, 6680, 6790, 6458, 6430, 8423, 9161, 1990, 2987);
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `TextureKitId`, `VerifiedBuild`) VALUES
(9316, 21011, 11188, 0, 32722),
(6787, 17559, 72812, 0, 32722),
(8160, 18475, 4403, 0, 32722),
(8159, 18474, 4658, 0, 32722),
(7928, 18076, 6927, 0, 32722),
(8166, 18494, 4053, 0, 32722),
(7659, 17435, 57692, 0, 32722),
(5926, 13272, 28828, 0, 32722),
(7759, 17757, 9348, 0, 32722),
(7762, 17783, 8623, 0, 32722),
(7760, 17768, 58533, 0, 32722),
(7736, 17674, 33378, 0, 32722),
(8164, 18483, 29845, 0, 32722),
(8691, 19449, 7231, 0, 32722),
(8694, 19452, 4652, 0, 32722),
(9675, 22122, 5493, 0, 32722),
(8690, 19448, 4195, 0, 32722),
(5500, 21941, 24513, 0, 32722),
(6789, 18486, 35675, 0, 32722),
(6487, 14676, 6201, 0, 32722),
(6680, 15236, 7864, 0, 32722),
(6790, 15486, 3865, 0, 32722),
(6458, 15020, 19913, 0, 32722),
(6430, 14513, 38809, 0, 32722),
(8423, 19036, 20012, 0, 32722),
(9161, 20575, 18459, 0, 32722),
(1990, 4185, 23055, 0, 32722),
(2987, 18026, 20562, 0, 32722);

DELETE FROM `zone_scripts` WHERE `scriptname` = 'zone_orgrimmar_start_bfa';
INSERT INTO `zone_scripts` (`zoneId`, `scriptname`) VALUES ('1637', 'zone_orgrimmar_start_bfa');

Delete from `creature_questender` WHERE `quest` = '53372';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES ('14720', '53372');

delete from `creature_queststarter` WHERE `quest` = '51796';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES ('14720', '51796');

delete from `quest_template_addon` WHERE `ID` IN (51796, 53372);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES ('51796', '0', '0', '0', '53372', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES ('53372', '0', '0', '0', '0', '51796', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');

UPDATE `quest_template_addon` SET `ID`='53028', `MaxLevel`='0', `AllowableClasses`='0', `SourceSpellID`='0', `PrevQuestID`='51796', `NextQuestID`='51211', `ExclusiveGroup`='0', `RewardMailTemplateID`='0', `RewardMailDelay`='0', `RequiredSkillID`='0', `RequiredSkillPoints`='0', `RequiredMinRepFaction`='0', `RequiredMaxRepFaction`='0', `RequiredMinRepValue`='0', `RequiredMaxRepValue`='0', `ProvidedItemCount`='0', `SpecialFlags`='0', `ScriptName`='' WHERE (`ID`='53028');

UPDATE `creature_template` SET `entry`='139093', `difficulty_entry_1`='0', `difficulty_entry_2`='0', `difficulty_entry_3`='0', `KillCredit1`='0', `KillCredit2`='0', `name`='Isabella', `femaleName`='', `subname`='Mage Trainer', `TitleAlt`=NULL, `IconName`=NULL, `gossip_menu_id`='22787', `minlevel`='110', `maxlevel`='110', `HealthScalingExpansion`='0', `RequiredExpansion`='0', `VignetteID`='0', `faction`='68', `npcflag`='3', `speed_walk`='1', `speed_run`='1.14286', `scale`='1', `rank`='0', `dmgschool`='0', `BaseAttackTime`='2000', `RangeAttackTime`='2000', `BaseVariance`='1', `RangeVariance`='1', `unit_class`='1', `unit_flags`='33600', `unit_flags2`='2048', `unit_flags3`='0', `dynamicflags`='0', `family`='0', `trainer_type`='0', `trainer_class`='0', `trainer_race`='0', `type`='7', `type_flags`='0', `type_flags2`='32768', `lootid`='0', `pickpocketloot`='0', `skinloot`='0', `resistance1`='0', `resistance2`='0', `resistance3`='0', `resistance4`='0', `resistance5`='0', `resistance6`='0', `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `spell5`='0', `spell6`='0', `spell7`='0', `spell8`='0', `VehicleId`='0', `mingold`='0', `maxgold`='0', `AIName`='', `MovementType`='0', `InhabitType`='3', `HoverHeight`='1', `HealthModifier`='1', `HealthModifierExtra`='1', `ManaModifier`='1', `ManaModifierExtra`='1', `ArmorModifier`='1', `DamageModifier`='1', `ExperienceModifier`='1', `RacialLeader`='0', `movementId`='0', `FadeRegionRadius`='0', `WidgetSetID`='0', `WidgetSetUnitConditionID`='0', `RegenHealth`='1', `mechanic_immune_mask`='0', `flags_extra`='0', `ScriptName`='npc_orgrimmar_isabella', `VerifiedBuild`='32978' WHERE (`entry`='139093');

delete from `creature` WHERE `guid` = '620000021';
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `corpsetimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES ('620000021', '139093', '1', '0', '0', '0', '0', '0', '0', '-1', '0', '1', '1654.25', '-4336.9', '26.3906', '5.2082', '300', '-1', '0', '0', '9136', '0', '0', '0', '0', '0', '0', '0', '', '0');

DELETE FROM `creature` WHERE `guid`='10646332';

UPDATE `quest_template` SET `ID`='53372', `QuestType`='0', `QuestLevel`='-1', `ScalingFactionGroup`='0', `MaxScalingLevel`='110', `QuestPackageID`='18965', `MinLevel`='110', `QuestSortID`='1637', `QuestInfoID`='0', `SuggestedGroupNum`='0', `RewardNextQuest`='51796', `RewardXPDifficulty`='1', `RewardXPMultiplier`='1', `RewardMoney`='19400', `RewardMoneyDifficulty`='1', `RewardMoneyMultiplier`='1', `RewardBonusMoney`='230', `RewardDisplaySpell1`='0', `RewardDisplaySpell2`='0', `RewardDisplaySpell3`='0', `RewardSpell`='0', `RewardHonor`='0', `RewardKillHonor`='0', `StartItem`='0', `RewardArtifactXPDifficulty`='0', `RewardArtifactXPMultiplier`='1', `RewardArtifactCategoryID`='0', `Flags`='38273088', `FlagsEx`='8192', `FlagsEx2`='0', `RewardItem1`='0', `RewardAmount1`='0', `RewardItem2`='0', `RewardAmount2`='0', `RewardItem3`='0', `RewardAmount3`='0', `RewardItem4`='0', `RewardAmount4`='0', `ItemDrop1`='0', `ItemDropQuantity1`='0', `ItemDrop2`='0', `ItemDropQuantity2`='0', `ItemDrop3`='0', `ItemDropQuantity3`='0', `ItemDrop4`='0', `ItemDropQuantity4`='0', `RewardChoiceItemID1`='0', `RewardChoiceItemQuantity1`='0', `RewardChoiceItemDisplayID1`='0', `RewardChoiceItemID2`='0', `RewardChoiceItemQuantity2`='0', `RewardChoiceItemDisplayID2`='0', `RewardChoiceItemID3`='0', `RewardChoiceItemQuantity3`='0', `RewardChoiceItemDisplayID3`='0', `RewardChoiceItemID4`='0', `RewardChoiceItemQuantity4`='0', `RewardChoiceItemDisplayID4`='0', `RewardChoiceItemID5`='0', `RewardChoiceItemQuantity5`='0', `RewardChoiceItemDisplayID5`='0', `RewardChoiceItemID6`='0', `RewardChoiceItemQuantity6`='0', `RewardChoiceItemDisplayID6`='0', `POIContinent`='0', `POIx`='0', `POIy`='0', `POIPriority`='0', `RewardTitle`='0', `RewardArenaPoints`='0', `RewardSkillLineID`='0', `RewardNumSkillUps`='0', `PortraitGiver`='0', `PortraitGiverMount`='0', `PortraitTurnIn`='0', `RewardFactionID1`='0', `RewardFactionValue1`='0', `RewardFactionOverride1`='0', `RewardFactionCapIn1`='7', `RewardFactionID2`='0', `RewardFactionValue2`='0', `RewardFactionOverride2`='0', `RewardFactionCapIn2`='7', `RewardFactionID3`='0', `RewardFactionValue3`='0', `RewardFactionOverride3`='0', `RewardFactionCapIn3`='7', `RewardFactionID4`='0', `RewardFactionValue4`='0', `RewardFactionOverride4`='0', `RewardFactionCapIn4`='7', `RewardFactionID5`='0', `RewardFactionValue5`='0', `RewardFactionOverride5`='0', `RewardFactionCapIn5`='7', `RewardFactionFlags`='0', `RewardCurrencyID1`='0', `RewardCurrencyQty1`='0', `RewardCurrencyID2`='0', `RewardCurrencyQty2`='0', `RewardCurrencyID3`='0', `RewardCurrencyQty3`='0', `RewardCurrencyID4`='0', `RewardCurrencyQty4`='0', `AcceptedSoundKitID`='890', `CompleteSoundKitID`='878', `AreaGroupID`='0', `TimeAllowed`='0', `AllowableRaces`='12261800583900083122', `TreasurePickerID`='0', `Expansion`='6', `ManagedWorldStateID`='0', `QuestSessionBonus`='0', `LogTitle`='Hour of Reckoning', `LogDescription`='Speak to High Overlord Saurfang inside Grommash Hold.', `QuestDescription`='Champions of the Horde, the time has come. \n\nThe Alliance seek to overthrow the Undercity and are laying siege to Lordaeron Keep. You are to report High Overlord Saurfang at once.\n\nMake haste, Brill has already fallen and there is no time to spare.', `AreaDescription`='', `PortraitGiverText`='', `PortraitGiverName`='', `PortraitTurnInText`='', `PortraitTurnInName`='', `QuestCompletionLog`='Speak to High Overlord Saurfang inside Grommash Hold in Orgrimmar.', `VerifiedBuild`='35662' WHERE (`ID`='53372');

delete from `creature_questender` where `quest` = '51796';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES ('140176', '51796');

delete from `creature_queststarter` where `quest` = '53028';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES ('140176', '53028');

UPDATE `creature_template` SET `entry`='140176', `difficulty_entry_1`='0', `difficulty_entry_2`='0', `difficulty_entry_3`='0', `KillCredit1`='0', `KillCredit2`='0', `name`='Nathanos Blightcaller', `femaleName`=NULL, `subname`='Champion of the Banshee Queen', `TitleAlt`=NULL, `IconName`=NULL, `gossip_menu_id`='22011', `minlevel`='98', `maxlevel`='110', `HealthScalingExpansion`='7', `RequiredExpansion`='0', `VignetteID`='0', `faction`='35', `npcflag`='3', `speed_walk`='1', `speed_run`='1.14286', `scale`='1', `rank`='1', `dmgschool`='0', `BaseAttackTime`='2000', `RangeAttackTime`='2000', `BaseVariance`='1', `RangeVariance`='1', `unit_class`='2', `unit_flags`='33536', `unit_flags2`='2048', `unit_flags3`='0', `dynamicflags`='0', `family`='0', `trainer_type`='0', `trainer_class`='0', `trainer_race`='0', `type`='7', `type_flags`='0', `type_flags2`='16384', `lootid`='0', `pickpocketloot`='0', `skinloot`='0', `resistance1`='0', `resistance2`='0', `resistance3`='0', `resistance4`='0', `resistance5`='0', `resistance6`='0', `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `spell5`='0', `spell6`='0', `spell7`='0', `spell8`='0', `VehicleId`='0', `mingold`='0', `maxgold`='0', `AIName`='', `MovementType`='0', `InhabitType`='3', `HoverHeight`='1', `HealthModifier`='10', `HealthModifierExtra`='1', `ManaModifier`='1', `ManaModifierExtra`='1', `ArmorModifier`='1', `DamageModifier`='1', `ExperienceModifier`='1', `RacialLeader`='0', `movementId`='0', `FadeRegionRadius`='0', `WidgetSetID`='0', `WidgetSetUnitConditionID`='0', `RegenHealth`='1', `mechanic_immune_mask`='0', `flags_extra`='0', `ScriptName`='npc_nathanos_orgrimmar', `VerifiedBuild`='32978' WHERE (`entry`='140176');

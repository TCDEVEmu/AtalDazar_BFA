
DELETE FROM `scene_template` WHERE (`SceneId`=2149 AND `ScriptPackageID`=2357);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`) VALUES
(2149, 27, 2357);

DELETE FROM `conversation_actors` WHERE (`ConversationId`=8854 AND `Idx`=1) OR (`ConversationId`=8854 AND `Idx`=0) OR (`ConversationId`=8939 AND `ConversationActorId`=0 AND `Idx`=0) OR (`ConversationId`=8939 AND `ConversationActorId`=0 AND `Idx`=1) OR (`ConversationId`=8915 AND `ConversationActorId`=0 AND `Idx`=0) OR (`ConversationId`=8867 AND `Idx`=1) OR (`ConversationId`=8867 AND `Idx`=0) OR (`ConversationId`=8929 AND `ConversationActorId`=0 AND `Idx`=0);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `VerifiedBuild`) VALUES
(8854, 140366, 1, 31478), -- Full: 0x200028E8A08913800000000000000010 Creature/0 R10/S0 Map: 1861 Entry: 140366 Low: 16
(8854, 135452, 0, 31478), -- Full: 0x200028E8A08447000000000000000018 Creature/0 R10/S0 Map: 1861 Entry: 135452 Low: 24
(8939, 138089, 0, 31478),
(8939, 140366, 1, 31478),
(8915, 138089, 0, 31478),
(8867, 140366, 1, 31478), -- Full: 0x200028E8A0891380000000000000004F Creature/0 R10/S0 Map: 1861 Entry: 140366 Low: 79
(8867, 135452, 0, 31478), -- Full: 0x200028E8A08447000000000000000018 Creature/0 R10/S0 Map: 1861 Entry: 135452 Low: 24
(8929, 138089, 0, 31478);


DELETE FROM `conversation_actor_template` WHERE `Id` =140366;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(140366, 140366, 75898, 31478);

DELETE FROM `conversation_actor_template` WHERE `Id` =138089;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(138089, 138089, 85630, 31478);


DELETE FROM `conversation_actor_template` WHERE `Id` =135452;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(135452, 135452, 85630, 31478);


DELETE FROM `conversation_line_template` WHERE `Id` IN (19905, 19904, 19903, 19902, 19901, 19900, 20171, 20170, 20169, 20168, 20109, 20108, 20107, 19949, 19948, 19947, 19946, 19945, 19944, 19943, 19942, 19941, 19940, 20302, 20152, 20151, 20150);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(19905, 29620, 192, 1, 0, 31478),
(19904, 23022, 192, 0, 0, 31478),
(19903, 15983, 192, 1, 0, 31478),
(19902, 8277, 192, 0, 0, 31478),
(19901, 5852, 192, 1, 0, 31478),
(19900, 0, 192, 0, 0, 31478),
(20171, 27425, 1244, 0, 0, 31478),
(20170, 16329, 599, 1, 0, 31478),
(20169, 5810, 599, 1, 0, 31478),
(20168, 0, 1244, 0, 0, 31478),
(20109, 15535, 598, 0, 0, 31478),
(20108, 7022, 598, 0, 0, 31478),
(20107, 0, 598, 0, 0, 31478),
(19949, 74464, 192, 1, 0, 31478),
(19948, 63972, 192, 0, 0, 31478),
(19947, 56065, 192, 0, 0, 31478),
(19946, 50091, 192, 1, 0, 31478),
(19945, 37509, 192, 0, 0, 31478),
(19944, 34902, 192, 1, 0, 31478),
(19943, 24225, 192, 0, 0, 31478),
(19942, 18180, 192, 1, 0, 31478),
(19941, 8223, 192, 0, 0, 31478),
(19940, 5176, 192, 1, 0, 31478),
(20302, 0, 192, 0, 0, 31478),
(20152, 14559, 598, 0, 0, 31478),
(20151, 4071, 598, 0, 0, 31478),
(20150, 0, 598, 0, 0, 31478);


DELETE FROM `conversation_template` WHERE `Id` IN (8915, 8929, 8939, 8867, 8854);
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `TextureKitId`, `VerifiedBuild`) VALUES
(8915, 20107, 23535, 0, 31478),
(8929, 20150, 22559, 0, 31478),
(8939, 20168, 35425, 0, 31478),
(8867, 20302, 82464, 0, 31478),
(8854, 19900, 37620, 0, 31478);


DELETE FROM `creature_equip_template` WHERE (`CreatureID`=141236 AND `ID`=1) OR (`CreatureID`=141238 AND `ID`=1) OR (`CreatureID`=141235 AND `ID`=1) OR (`CreatureID`=136496 AND `ID`=1) OR (`CreatureID`=138089 AND `ID`=1) OR (`CreatureID`=136949 AND `ID`=20) OR (`CreatureID`=136949 AND `ID`=19) OR (`CreatureID`=136949 AND `ID`=18) OR (`CreatureID`=136949 AND `ID`=17) OR (`CreatureID`=136949 AND `ID`=16) OR (`CreatureID`=136949 AND `ID`=15) OR (`CreatureID`=136949 AND `ID`=14) OR (`CreatureID`=136949 AND `ID`=13) OR (`CreatureID`=136949 AND `ID`=12) OR (`CreatureID`=136949 AND `ID`=11) OR (`CreatureID`=136949 AND `ID`=10) OR (`CreatureID`=136949 AND `ID`=9) OR (`CreatureID`=136949 AND `ID`=8) OR (`CreatureID`=136949 AND `ID`=7) OR (`CreatureID`=136949 AND `ID`=6) OR (`CreatureID`=136949 AND `ID`=5) OR (`CreatureID`=136949 AND `ID`=4) OR (`CreatureID`=136949 AND `ID`=3) OR (`CreatureID`=136949 AND `ID`=2) OR (`CreatureID`=136949 AND `ID`=1) OR (`CreatureID`=135452 AND `ID`=1) OR (`CreatureID`=136495 AND `ID`=1) OR (`CreatureID`=142800 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(141236, 1, 153584, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(141238, 1, 45123, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(141235, 1, 153584, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(136496, 1, 109166, 0, 0, 109166, 0, 0, 0, 0, 0), -- -Unknown-
(138089, 1, 160437, 0, 0, 0, 0, 0, 0, 0, 0), -- MOTHER
(136949, 20, 163874, 0, 0, 0, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 19, 29355, 0, 0, 0, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 18, 158093, 0, 0, 158322, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 17, 159644, 0, 0, 0, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 16, 159653, 0, 0, 170082, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 15, 103000, 0, 0, 0, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 14, 84528, 0, 0, 162459, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 13, 158112, 0, 0, 0, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 12, 159477, 0, 0, 159477, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 11, 64377, 0, 0, 64377, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 10, 128403, 0, 0, 0, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 9, 113913, 0, 0, 0, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 8, 159134, 0, 0, 159134, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 7, 128908, 0, 0, 134553, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 6, 160216, 0, 0, 162459, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 5, 158136, 0, 0, 162458, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 4, 128826, 0, 0, 0, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 3, 165588, 0, 0, 165591, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 2, 24550, 0, 0, 24550, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(136949, 1, 40343, 0, 0, 0, 0, 0, 0, 0, 0), -- Corrupted Blood Clone
(135452, 1, 160437, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(136495, 1, 153589, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(142800, 1, 162970, 0, 0, 160683, 0, 0, 0, 0, 0); -- Nazmani Veinsplitter


DELETE FROM `areatrigger_template_polygon_vertices` WHERE (`AreaTriggerId`=19219 AND `Idx`=3) OR (`AreaTriggerId`=19219 AND `Idx`=2) OR (`AreaTriggerId`=19219 AND `Idx`=1) OR (`AreaTriggerId`=19219 AND `Idx`=0) OR (`AreaTriggerId`=17833 AND `Idx`=3) OR (`AreaTriggerId`=17833 AND `Idx`=2) OR (`AreaTriggerId`=17833 AND `Idx`=1) OR (`AreaTriggerId`=17833 AND `Idx`=0) OR (`AreaTriggerId`=19924 AND `Idx`=3) OR (`AreaTriggerId`=19924 AND `Idx`=2) OR (`AreaTriggerId`=19924 AND `Idx`=1) OR (`AreaTriggerId`=19924 AND `Idx`=0) OR (`AreaTriggerId`=19923 AND `Idx`=3) OR (`AreaTriggerId`=19923 AND `Idx`=2) OR (`AreaTriggerId`=19923 AND `Idx`=1) OR (`AreaTriggerId`=19923 AND `Idx`=0);
INSERT INTO `areatrigger_template_polygon_vertices` (`AreaTriggerId`, `Idx`, `VerticeX`, `VerticeY`, `VerticeTargetX`, `VerticeTargetY`, `VerifiedBuild`) VALUES
(19219, 3, -30, -3.5, NULL, NULL, 31478),
(19219, 2, -30, -70, NULL, NULL, 31478),
(19219, 1, 30, -70, NULL, NULL, 31478),
(19219, 0, 30, -3.5, NULL, NULL, 31478),
(17833, 3, -30, 3.5, NULL, NULL, 31478),
(17833, 2, -30, 70, NULL, NULL, 31478),
(17833, 1, 30, 70, NULL, NULL, 31478),
(17833, 0, 30, 3.5, NULL, NULL, 31478),
(19924, 3, -2.5, -11, NULL, NULL, 31478),
(19924, 2, -2.5, -27.5, NULL, NULL, 31478),
(19924, 1, 2.5, -27.5, NULL, NULL, 31478),
(19924, 0, 2.5, -11, NULL, NULL, 31478),
(19923, 3, -2.5, -4.5, NULL, NULL, 31478),
(19923, 2, -2.5, 27.5, NULL, NULL, 31478),
(19923, 1, 2.5, 27.5, NULL, NULL, 31478),
(19923, 0, 2.5, -4.5, NULL, NULL, 31478);

DELETE FROM `areatrigger_template` WHERE `Id` IN (19290, 17350, 17528, 19180, 19139, 19185, 17917, 17517, 19211, 18108, 17765, 17834, 17767, 17792, 19219, 17833, 19926, 19925, 19924, 19923, 19293, 18165, 17949, 18158);
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `VerifiedBuild`) VALUES
(19290, 0, 0, 3, 3, 0, 0, 0, 0, 31478),
(17350, 0, 4, 12, 12, 0, 0, 0, 0, 31478),
(17528, 0, 4, 6, 6, 0, 0, 0, 0, 31478),
(19180, 4, 4, 2, 2, 8, 8, 0.3, 0.3, 31478),
(19139, 0, 2, 3, 12, 0, 0, 0, 0, 31478),
(19185, 4, 0, 1, 1, 5, 5, 2.5, 2.5, 31478),
(17917, 0, 4, 6, 6, 0, 0, 0, 0, 31478),
(17517, 0, 4, 12, 12, 0, 0, 0, 0, 31478),
(19211, 1, 4, 17.5, 17.5, 50, 17.5, 17.5, 50, 31478),
(18108, 0, 4, 12, 12, 0, 0, 0, 0, 31478),
(17765, 1, 0, 27.5, 50, 10, 27.5, 50, 10, 31478),
(17834, 1, 0, 5, 25, 1, 5, 25, 1, 31478),
(17767, 1, 0, 27.5, 50, 10, 27.5, 50, 10, 31478),
(17792, 1, 4, 27.5, 50, 150, 27.5, 50, 150, 31478),
(19219, 3, 4, 8, 8, 0, 0, 0, 0, 31478),
(17833, 3, 4, 8, 8, 0, 0, 0, 0, 31478),
(19926, 3, 4, 0, 0, 0, 0, 0, 0, 31478),
(19925, 3, 4, 0, 0, 0, 0, 0, 0, 31478),
(19924, 3, 4, 0, 0, 0, 0, 0, 0, 31478),
(19923, 3, 4, 0, 0, 0, 0, 0, 0, 31478),
(19293, 4, 4, 8, 8, 8, 8, 3, 3, 31478),
(18165, 0, 4, 4, 4, 0, 0, 0, 0, 31478),
(17949, 0, 6, 6, 6, 0, 0, 0, 0, 31478),
(18158, 4, 0, 2, 2, 8, 8, 0.3, 0.3, 31478);

DELETE FROM `spell_areatrigger` WHERE (`AreaTriggerId`=17792);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(4488, 17792, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- SpellId : 268089 Cleansing Purge


INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(13180, 17792, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- SpellId : 268089 Cleansing Purge

UPDATE `areatrigger_template` SET `ScriptName`='at_uldir_cleansing_purge' WHERE `Id` =17792; -- Cleansing Purge

--  SPELL_PURIFYING_FLAME_AT          = 267887,   13156


DELETE FROM `spell_areatrigger` WHERE (`AreaTriggerId`=17765);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(13153, 17765, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 31478); -- SpellId : 267878


DELETE FROM `spell_areatrigger` WHERE (`AreaTriggerId`=17767);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(13155, 17767, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 31478); -- SpellId : 267885


DELETE FROM `spell_areatrigger` WHERE (`AreaTriggerId`=17834);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(13822, 17834, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- SpellId : 274192



UPDATE `areatrigger_template` SET `ScriptName`='at_uldir_wind_tunnel_1' WHERE `Id` =17765; -- Wind Tunnel
UPDATE `areatrigger_template` SET `ScriptName`='at_uldir_wind_tunnel_2' WHERE `Id` =17767; -- Wind Tunnel

-- 13180 268089/净化荡涤

DELETE FROM `spell_areatrigger` WHERE (`AreaTriggerId`=19219);
DELETE FROM `spell_areatrigger` WHERE (`AreaTriggerId`=17833);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(13980, 19219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- SpellId : 275228 m
(14526, 17833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- SpellId : 275228 m


DELETE FROM `spell_areatrigger` WHERE (`AreaTriggerId`=19923);
DELETE FROM `spell_areatrigger` WHERE (`AreaTriggerId`=19924);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(14986, 19923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- SpellId : 281642 r
(14549, 19924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- SpellId : 281642 r

UPDATE `areatrigger_template` SET `ScriptName`='at_uldir_defense_beam' WHERE `Id` IN (19219,17833,19923,19924,19925,19926); 


DELETE FROM `spell_areatrigger` WHERE (`AreaTriggerId`=19925);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(14548, 19925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- SpellId : 277961 

DELETE FROM `spell_areatrigger` WHERE (`AreaTriggerId`=19926);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(14987, 19926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- SpellId : 277961 

 --   SPELL_ULDIR_DEFENSE_BEAM_V_AT_M   = 277961, //wall  14548,14549

 --   SPELL_ULDIR_DEFENSE_BEAM_V_AT_L   = 281644,  14987, 14549


UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=137043; -- Orb of Corruption Soak Visual
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `speed_walk`=1.60000002384185791, `speed_run`=1.714300036430358886, `BaseAttackTime`=1500, `unit_flags`=32768, `unit_flags2`=2097152, `unit_flags3`=1 WHERE `entry`=135083; -- Guardian of Yogg-Saron
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `speed_walk`=1.20000004768371582, `speed_run`=0.428570985794067382, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048 WHERE `entry`=135079; -- Ominous Cloud Stalker
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=135824; -- Nerubian Voidweaver
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=16, `speed_walk`=3.20000004768371582, `BaseAttackTime`=1500, `unit_flags`=64, `unit_flags2`=2097152 WHERE `entry`=134503; -- Silithid Warrior
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=1073776640, `unit_flags3`=1 WHERE `entry`=135183; -- Surging Darkness
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=2, `BaseAttackTime`=1500, `unit_flags`=576, `unit_flags2`=4194304 WHERE `entry`=134445; -- Zek'voz
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=135884; -- N'Zoth Disc Stalker
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=134785; -- Eye Beam Disc Stalker
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33587200, `unit_flags2`=2048 WHERE `entry`=142004; -- Void Tendril
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=1.714290022850036621, `BaseAttackTime`=2000, `unit_flags`=64 WHERE `entry`=141266; -- C'Thraxxi Breaker
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=16, `speed_walk`=2, `speed_run`=1.428570032119750976, `BaseAttackTime`=1500, `unit_flags`=64 WHERE `entry`=141267; -- Forgotten One
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=1.428570032119750976, `BaseAttackTime`=1500, `unit_flags`=64 WHERE `entry`=140599; -- Faceless Voidseeker
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=1.428570032119750976, `BaseAttackTime`=1500, `unit_flags`=64 WHERE `entry`=140594; -- Silithid Hunter-Killer
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=1.428570032119750976, `BaseAttackTime`=1500, `unit_flags`=64 WHERE `entry`=140591; -- Qiraji Scarab
UPDATE `creature_template` SET `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=268470272 WHERE `entry`=135687; -- Pathogen Bomb
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=135016; -- Plague Amalgam
UPDATE `creature_template` SET `minlevel`=115, `maxlevel`=115, `faction`=35, `speed_run`=2.5, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=140366; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `speed_run`=0.428570985794067382, `BaseAttackTime`=2000, `unit_flags`=33554944, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141749; -- Living Infection
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `speed_walk`=0.009999999776482582, `speed_run`=0.009999999776482582, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=139424; -- Gore Bomb Splatter Stalker
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123, `faction`=35, `BaseAttackTime`=2000 WHERE `entry`=140853; -- MOTHER
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags3`=0 WHERE `entry`=137023; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=142242; -- -Unknown-
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33554946, `unit_flags2`=2048 WHERE `entry`=139826; -- Trash Chute Stalker
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2099200 WHERE `entry`=133492; -- Corruption Corpuscle
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141236; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `npcflag`=4225, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141238; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141235; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `BaseAttackTime`=2000, `unit_flags`=33555202, `unit_flags2`=4196352, `unit_flags3`=1 WHERE `entry`=143877; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags3`=0 WHERE `entry`=136429; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=136499; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags3`=0 WHERE `entry`=137022; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=136298; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=136736; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=136322; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=1500, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=136496; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=136325; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2097152 WHERE `entry`=134442; -- Vectis
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=142207; -- Speaker Obara
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=142150; -- Nazmani Defiler
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=142149; -- Nazmani Supplicant
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2099200, `unit_flags3`=0 WHERE `entry`=135129; -- Projection of Yogg-Saron
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=71829504, `unit_flags3`=1 WHERE `entry`=134064; -- Reorigination Drive
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=67635200, `unit_flags3`=1 WHERE `entry`=139573; -- Reorigination Drive
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67635200, `unit_flags3`=0, `VehicleId`=6052 WHERE `entry`=139574; -- Reorigination Drive
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67635200, `unit_flags3`=0, `VehicleId`=5917 WHERE `entry`=136427; -- Reorigination Drive
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=134883; -- Titan Spark Stalker
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=1.714290022850036621, `BaseAttackTime`=1500, `unit_flags`=64, `unit_flags2`=1074298880 WHERE `entry`=132998; -- G'huun
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=1.714290022850036621, `BaseAttackTime`=1500 WHERE `entry`=138529; -- Dark Young
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=67108864 WHERE `entry`=134118; -- Reorigination Drive
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags3`=1 WHERE `entry`=141105; -- FX Stalker
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=32768, `unit_flags3`=0 WHERE `entry`=138937; -- Energy Bar Stalker
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=16, `speed_run`=1, `BaseAttackTime`=1500 WHERE `entry`=138531; -- Cyclopean Terror
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554688, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=141568; -- Destroyed Conduit
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags3`=1 WHERE `entry`=136263; -- Reorigination Drive
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags3`=1 WHERE `entry`=142632; -- Reorigination Drive
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123, `faction`=35, `speed_walk`=2.799999952316284179, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=33554434, `unit_flags2`=1073741824 WHERE `entry`=138089; -- MOTHER
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2099200, `unit_flags3`=0 WHERE `entry`=134705; -- Silithid Warrior Disc Stalker
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `speed_run`=1, `BaseAttackTime`=1500, `unit_flags2`=1073774624, `unit_flags3`=0 WHERE `entry`=134034; -- Amorphous Cyst
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048, `dynamicflags`=0 WHERE `entry`=142222; -- Malformed Lion
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `speed_run`=2.70000004768371582, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=142281; -- Surgical Grid
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=136554; -- Surgical Grid
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=4196352, `dynamicflags`=0 WHERE `entry`=136493; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=2, `BaseAttackTime`=3000, `unit_flags`=32768, `unit_flags2`=2099200 WHERE `entry`=136315; -- Remnant of Corruption
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=16 WHERE `entry`=136949; -- Corrupted Blood Clone
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32848, `unit_flags2`=2048 WHERE `entry`=142148; -- Warmother Rakkali
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=136289; -- Purifying Flame
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=2, `BaseAttackTime`=1500, `unit_flags`=64, `unit_flags2`=2097152, `dynamicflags`=4 WHERE `entry`=133298; -- Fetid Devourer
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=142221; -- Malformed Vulture
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=142223; -- Malformed Raptor
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048, `dynamicflags`=0 WHERE `entry`=142219; -- Malformed Creation
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123, `faction`=35, `speed_walk`=2.799999952316284179, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=80, `unit_flags2`=2097152 WHERE `entry`=135452; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `speed_walk`=0.009999999776482582, `speed_run`=0.009999999776482582, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=136726; -- Blood Orb
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=136510; -- Faceless Devourer
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=135127; -- Yogg-Saron Disc Stalker
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=16, `speed_run`=0.428570985794067382, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2099200, `dynamicflags`=4 WHERE `entry`=136507; -- Coagulated Blood
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `speed_run`=0.428570985794067382, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2099200, `dynamicflags`=4 WHERE `entry`=136509; -- Animated Rot
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=135832; -- Anub'ar Caster Disc Stalker
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `npcflag`=16777216, `BaseAttackTime`=1500, `unit_flags2`=1073774624, `unit_flags3`=1, `VehicleId`=6091 WHERE `entry`=141265; -- Amorphous Cyst
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `speed_walk`=2.40000009536743164, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=140616; -- Rot-Fused Nazmani
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `speed_walk`=2.40000009536743164, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=140490; -- Blood-Engorged Larva
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `speed_walk`=2.40000009536743164, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=141935; -- Thrashing Crawg
UPDATE `creature_template` SET `faction`=35, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags3`=1 WHERE `entry`=143774; -- Revitalized Voodoo Totem
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123, `BaseAttackTime`=2000, `unit_flags`=33554496, `unit_flags2`=131072, `unit_flags3`=0, `HoverHeight`=1.5 WHERE `entry`=138324; -- Xalzaix
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=1.571429967880249023, `BaseAttackTime`=3000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=138959; -- Coalesced Blood
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `speed_run`=0.857142984867095947, `BaseAttackTime`=3000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=138530; -- Volatile Droplet
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123, `faction`=16, `npcflag`=16777216, `speed_walk`=5.599999904632568359, `speed_run`=2, `BaseAttackTime`=1500, `unit_flags`=64, `VehicleId`=6008 WHERE `entry`=134546; -- Mythrax the Unraveler
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=1073743872 WHERE `entry`=143012; -- Blood Ritual
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2097152, `dynamicflags`=4 WHERE `entry`=137119; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `BaseAttackTime`=2000, `unit_flags`=33554946, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=138017; -- Cudgel of Gore
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=16, `BaseAttackTime`=1500, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=136495; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33587714, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=137578; -- Blood Storm
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=142801; -- Nazmani Bloodweaver
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=142802; -- Nazmani Dominator
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=142800; -- Nazmani Veinsplitter
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=136502; -- -Unknown-


UPDATE `creature_template` SET `ScriptName`='npc_defense_grid_136298' WHERE `entry`=136298;
UPDATE `creature_template` SET `ScriptName`='npc_do_nothing' WHERE `entry` IN (136429, 137022, 137023, 136322);
UPDATE `creature_template` SET `ScriptName`='boss_uldir_mother' WHERE `entry`=135452;
UPDATE `creature_template` SET `ScriptName`='npc_purifying_flame_136289' WHERE `entry`=136289;
UPDATE `creature_template` SET `ScriptName`='npc_surgical_grid_136554' WHERE `entry`=136554;

DELETE FROM `creature_text` WHERE `CreatureID`=135452;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(135452, 0, 0, 'Virulent strain detected. Neutralize with extreme prejudice.', 14, 0, 100, 0, 0, 104961, 154035, 'MOTHER'),
(135452, 1, 0, 'Dissection protocol initiated.', 14, 0, 100, 34, 0, 104958, 154048, 'MOTHER'),
(135452, 2, 0, 'Testing bacterial resistance to extreme heat.', 14, 0, 100, 34, 0, 104956, 154049, 'MOTHER'),
(135452, 3, 0, 'Venting containment chamber.', 14, 0, 100, 34, 0, 104959, 154050, 'MOTHER'),
(135452, 4, 0, 'Surgical field engaged. Preparing samples for study.', 14, 0, 100, 34, 0, 104957, 154052, 'MOTHER'),
(135452, 5, 0, 'Cleansing protocol activated.', 14, 0, 100, 34, 0, 104960, 154033, 'MOTHER'),
(135452, 6, 0, 'System restored. Levels returned to secure thresholds.', 14, 0, 100, 34, 0, 104971, 154047, 'MOTHER');


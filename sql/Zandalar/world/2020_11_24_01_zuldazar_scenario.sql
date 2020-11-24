
 SET NAMES utf8;
DELETE FROM `areatrigger_template` WHERE `Id` IN (17505, 17770, 17552, 18040, 16509);
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `VerifiedBuild`) VALUES
(17505, 0, 0, 5, 5, 0, 0, 0, 0, 31478),-- SpellId : 265093 黑暗先知之焰
(17770, 0, 4, 10, 10, 0, 0, 0, 0, 31478),-- SpellId : 267897 激光轰击
(17552, 0, 4, 12, 12, 0, 0, 0, 0, 31478),-- SpellId : 265382 洛阿神灵的祈祷：再生
(16509, 4, 4, 6, 6, 6, 6, 6, 6, 31478);-- SpellId : 255002 三角冲锋



DELETE FROM `spell_areatrigger` WHERE (`AreaTriggerId`=17770) OR (`AreaTriggerId`=17505) OR (`AreaTriggerId`=17552) OR (`AreaTriggerId`=16509) ;
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(13159, 17770, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- SpellId : 267897 激光轰击
(12856, 17505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- SpellId : 265093 黑暗先知之焰
(12908, 17552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- SpellId : 265382 洛阿神灵的祈祷：再生
(11816, 16509, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 31478); -- SpellId : 255002 三角冲锋


DELETE FROM `npc_text` WHERE `ID` IN (36267 /*36267*/, 35898 /*35898*/, 35889 /*35889*/, 35887 /*35887*/, 35886 /*35886*/, 35882 /*35882*/, 35894 /*35894*/, 34415 /*34415*/);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(36267, 1, 0, 0, 0, 0, 0, 0, 0, 161192, 0, 0, 0, 0, 0, 0, 0, 31478), -- 36267
(35898, 1, 0, 0, 0, 0, 0, 0, 0, 160900, 0, 0, 0, 0, 0, 0, 0, 31478), -- 35898
(35889, 1, 0, 0, 0, 0, 0, 0, 0, 160876, 0, 0, 0, 0, 0, 0, 0, 31478), -- 35889
(35887, 1, 0, 0, 0, 0, 0, 0, 0, 160874, 0, 0, 0, 0, 0, 0, 0, 31478), -- 35887
(35886, 1, 0, 0, 0, 0, 0, 0, 0, 160871, 0, 0, 0, 0, 0, 0, 0, 31478), -- 35886
(35882, 1, 0, 0, 0, 0, 0, 0, 0, 160863, 0, 0, 0, 0, 0, 0, 0, 31478), -- 35882
(35894, 1, 0, 0, 0, 0, 0, 0, 0, 160895, 0, 0, 0, 0, 0, 0, 0, 31478), -- 35894
(34415, 1, 0, 0, 0, 0, 0, 0, 0, 150417, 0, 0, 0, 0, 0, 0, 0, 31478); -- 34415


DELETE FROM `scenario_poi` WHERE (`CriteriaTreeID`=65497 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65973 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65495 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=66011 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65578 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65561 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65567 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=65559 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `scenario_poi` (`CriteriaTreeID`, `BlobIndex`, `Idx1`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(65497, 0, 0, 1906, 1181, 0, 0, 0, 0, 31478),
(65973, 0, 0, 1906, 1181, 0, 2, 0, 0, 31478),
(65495, 0, 0, 1906, 1181, 0, 2, 0, 0, 31478),
(66011, 0, 0, 1906, 1181, 0, 2, 0, 0, 31478),
(65578, 0, 0, 1906, 1181, 0, 2, 0, 0, 31478),
(65561, 0, 0, 1906, 1181, 0, 2, 0, 0, 31478),
(65567, 0, 0, 1906, 1181, 0, 2, 0, 0, 31478),
(65559, 0, 0, 1906, 1181, 0, 2, 0, 0, 31478);


DELETE FROM `scenario_poi_points` WHERE (`CriteriaTreeID`=65497 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65973 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65495 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=66011 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=66011 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=66011 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=66011 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=66011 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=66011 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=66011 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=66011 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=66011 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=66011 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=66011 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=66011 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65578 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=65578 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=65578 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=65578 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=65578 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=65578 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=65578 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=65578 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=65578 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=65578 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=65578 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=65578 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65561 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65567 AND `Idx1`=0 AND `Idx2`=0) OR (`CriteriaTreeID`=65559 AND `Idx1`=0 AND `Idx2`=11) OR (`CriteriaTreeID`=65559 AND `Idx1`=0 AND `Idx2`=10) OR (`CriteriaTreeID`=65559 AND `Idx1`=0 AND `Idx2`=9) OR (`CriteriaTreeID`=65559 AND `Idx1`=0 AND `Idx2`=8) OR (`CriteriaTreeID`=65559 AND `Idx1`=0 AND `Idx2`=7) OR (`CriteriaTreeID`=65559 AND `Idx1`=0 AND `Idx2`=6) OR (`CriteriaTreeID`=65559 AND `Idx1`=0 AND `Idx2`=5) OR (`CriteriaTreeID`=65559 AND `Idx1`=0 AND `Idx2`=4) OR (`CriteriaTreeID`=65559 AND `Idx1`=0 AND `Idx2`=3) OR (`CriteriaTreeID`=65559 AND `Idx1`=0 AND `Idx2`=2) OR (`CriteriaTreeID`=65559 AND `Idx1`=0 AND `Idx2`=1) OR (`CriteriaTreeID`=65559 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `scenario_poi_points` (`CriteriaTreeID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(65497, 0, 0, -908, 804, 31478),
(65973, 0, 0, -756, 1003, 31478),
(65495, 0, 0, -761, 1032, 31478),
(66011, 0, 11, -662, 1082, 31478),
(66011, 0, 10, -682, 1115, 31478),
(66011, 0, 9, -657, 1168, 31478),
(66011, 0, 8, -571, 1194, 31478),
(66011, 0, 7, -545, 1201, 31478),
(66011, 0, 6, -459, 1221, 31478),
(66011, 0, 5, -425, 1221, 31478),
(66011, 0, 4, -393, 1221, 31478),
(66011, 0, 3, -387, 1187, 31478),
(66011, 0, 2, -393, 1161, 31478),
(66011, 0, 1, -577, 1075, 31478),
(66011, 0, 0, -611, 1075, 31478),
(65578, 0, 11, -689, 1045, 31478),
(65578, 0, 10, -683, 1064, 31478),
(65578, 0, 9, -540, 1208, 31478),
(65578, 0, 8, -422, 1255, 31478),
(65578, 0, 7, -408, 1228, 31478),
(65578, 0, 6, -408, 1208, 31478),
(65578, 0, 5, -408, 1195, 31478),
(65578, 0, 4, -408, 1175, 31478),
(65578, 0, 3, -408, 1163, 31478),
(65578, 0, 2, -408, 1149, 31478),
(65578, 0, 1, -617, 1006, 31478),
(65578, 0, 0, -623, 1006, 31478),
(65561, 0, 0, -527, 601, 31478),
(65567, 0, 0, -500, 582, 31478),
(65559, 0, 11, -514, 425, 31478),
(65559, 0, 10, -572, 484, 31478),
(65559, 0, 9, -559, 542, 31478),
(65559, 0, 8, -507, 601, 31478),
(65559, 0, 7, -409, 627, 31478),
(65559, 0, 6, 150, 692, 31478),
(65559, 0, 5, 188, 666, 31478),
(65559, 0, 4, 235, 614, 31478),
(65559, 0, 3, 261, 556, 31478),
(65559, 0, 2, 274, 510, 31478),
(65559, 0, 1, -10, 431, 31478),
(65559, 0, 0, -291, 405, 31478);





DELETE FROM `conversation_actors` WHERE (`ConversationId`=7434 AND `Idx`=0) OR (`ConversationId`=7133 AND `Idx`=0) OR (`ConversationId`=7133 AND `Idx`=1) OR (`ConversationId`=7135 AND `Idx`=1) OR (`ConversationId`=7135 AND `Idx`=0) OR (`ConversationId`=7440 AND `Idx`=1) OR (`ConversationId`=7440 AND `Idx`=0);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `VerifiedBuild`) VALUES
(7434, 136324, 0, 31478), -- Full: 0x200028EE408521000000000000000053 Creature/0 R10/S0 Map: 1906 Entry: 136324 Low: 83
(7133, 134493, 0, 31478), -- Full: 0x240028EE40835740000000000000007B Vehicle/0 R10/S0 Map: 1906 Entry: 134493 Low: 123
(7133, 134692, 1, 31478), -- Full: 0x200028EE408389000000000000000080 Creature/0 R10/S0 Map: 1906 Entry: 134692 Low: 128
(7135, 134692, 1, 31478), -- Full: 0x200028EE4083890000000000000000DF Creature/0 R10/S0 Map: 1906 Entry: 134692 Low: 223
(7135, 134620, 0, 31478), -- Full: 0x200028EE4083770000000000000000DE Creature/0 R10/S0 Map: 1906 Entry: 134620 Low: 222
(7440, 136352, 1, 31478), -- Full: 0x080004000000000000FFFFFFFFFFFFFF Player/0 R1/S65535 Map: 0 Low: 1099511627775
(7440, 136352, 0, 31478); -- Full: 0x200028EE408528000000000000000067 Creature/0 R10/S0 Map: 1906 Entry: 136352 Low: 103

DELETE FROM `conversation_actor_template` WHERE `Id`=136324;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(136324, 136324, 77461, 32978); 

DELETE FROM `conversation_actor_template` WHERE `Id`=134493;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(134493, 134493, 80026, 32978); 

DELETE FROM `conversation_actor_template` WHERE `Id`=134620;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(134620, 134620, 80739, 32978); 

DELETE FROM `conversation_actor_template` WHERE `Id`=136352;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(136352, 136352, 75961, 32978); 

DELETE FROM `conversation_actor_template` WHERE `Id`=134692;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(134692, 134692, 75898, 32978); 


DELETE FROM `conversation_line_template` WHERE `Id` IN (17000, 16999, 16200, 16199, 16198, 16209, 16208, 16207, 16206, 16205, 16204, 21372, 17033, 17032);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(17000, 6081, 0, 0, 1, 31478),
(16999, 0, 0, 0, 1, 31478),
(16200, 14077, 0, 0, 0, 31478),
(16199, 8098, 0, 1, 0, 31478),
(16198, 0, 0, 0, 0, 31478),
(16209, 28001, 0, 1, 0, 31478),
(16208, 19453, 0, 0, 0, 31478),
(16207, 13848, 0, 1, 0, 31478),
(16206, 8730, 0, 0, 0, 31478),
(16205, 3681, 0, 1, 0, 31478),
(16204, 0, 0, 0, 0, 31478),
(21372, 23815, 0, 1, 1, 31478),
(17033, 11174, 0, 0, 1, 31478),
(17032, 0, 0, 0, 0, 31478);


DELETE FROM `conversation_template` WHERE `Id` IN (7440, 7434, 7135, 7133);
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `TextureKitId`, `VerifiedBuild`) VALUES
(7440, 17032, 23815, 0, 31478),
(7434, 16999, 8921, 0, 31478),
(7135, 16204, 36405, 0, 31478),
(7133, 16198, 21282, 0, 31478);

DELETE FROM `scene_template` WHERE (`SceneId`=1944 AND `ScriptPackageID`=2084) OR (`SceneId`=1925 AND `ScriptPackageID`=2055) OR (`SceneId`=1916 AND `ScriptPackageID`=2045);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`) VALUES
(1944, 24, 2084),
(1925, 24, 2055),
(1916, 20, 2045);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (47258 /*47258*/, 50954 /*50954*/, 47229 /*47229*/, 47205 /*47205*/, 47204 /*47204*/, 47201 /*47201*/, 47200 /*47200*/, 47198 /*47198*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(47258, 0, 0, 0, 0, 0, 0, 0, 0, 'Though our warchief may balk at further delays, I believe we are honor-bound to assist the Zandalari. $B$BThis is about more than gaining an ally in wartime. The Horde was founded on the idea of aiding those facing their hour of need.$B$BJust as Thrall once came to the defense of my people, so we must help save Zandalar.', 31478), -- 47258
(50954, 0, 0, 0, 0, 0, 0, 0, 0, 'We have won the battle, not the war.', 31478), -- 50954
(47229, 4, 0, 0, 0, 0, 0, 0, 0, 'Thank you! Though we must not stay here. More blood trolls are coming. Where is my father?', 31478), -- 47229
(47205, 1, 0, 0, 0, 0, 0, 0, 0, 'Dat vile creature took out half da scouts who came with me. Ya did good.', 31478), -- 47205
(47204, 1, 0, 0, 0, 0, 0, 0, 0, 'It may seem like a lot, but trust me when I say we saw a lot more comin\' when on our way here.', 31478), -- 47204
(47201, 11, 0, 0, 0, 0, 0, 0, 0, 'Ha! Thought I be singin\' with Bwonsamdi soon. But no.', 31478), -- 47201
(47200, 273, 0, 0, 0, 0, 0, 0, 0, 'At last, some breathing room. Now we must press our advantage.', 31478), -- 47200
(47198, 1, 0, 0, 0, 0, 0, 0, 0, 'It worked? Good! I shall have some of de wounded help me craft more.', 31478); -- 47198


DELETE FROM `quest_objectives_locale` WHERE  `locale`='zhCN' AND `ID` IN (334327 /*334327*/, 334255 /*334255*/, 294097 /*294097*/, 294095 /*294095*/, 294094 /*294094*/, 290137 /*290137*/, 290091 /*290091*/, 293923 /*293923*/, 290094 /*290094*/,290082);
INSERT INTO `quest_objectives_locale` (`ID`, `locale`, `QuestId`, `StorageIndex`, `Description`, `VerifiedBuild`) VALUES 
(334327, 'zhCN', 50954, 0, '完成“赞达拉万古长存”场景战役', 32750),
(334255, 'zhCN', 47229, 2, '', 32750),-- 鲜血仆从
(294097, 'zhCN', 47229, 1, '', 32750),-- 复生的巨怪
(294095, 'zhCN', 47229, 0, '', 32750),-- 鲜血巨魔
(294094, 'zhCN', 47229, -1, '摧毁鲜血巨魔军队', 32750),
(290137, 'zhCN', 47229, 3, '骑乘年迈的罗塔那', 32750),
(290091, 'zhCN', 47205, 0, '', 32750), --  战争主母夏扎卡
(293923, 'zhCN', 47204, 0, '消灭鲜血巨魔军队', 32750),
(290094, 'zhCN', 47201, 0, '骑乘年迈的罗塔那', 32750),
(290082, 'zhCN', 47198, 0, '营救受伤的俘虏', 32750);

   
DELETE FROM `quest_template_locale` WHERE  `locale`='zhCN' AND `ID` IN (50954,47229,47205,47204,47201,47198,47200);
INSERT INTO `quest_template_locale` (`ID`, `locale`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `QuestCompletionLog`, `VerifiedBuild`) VALUES 
(50954, 'zhCN', '赞达拉万古长存！', '完成“赞达拉万古长存”场景战役。', '邦桑迪悄悄给了我一个警告：敌人已经开始行动了。 我在有限的时间里召集了所有能参加守卫的人手，但是显然我们的力量还远远不够。 多亏了你先前的努力，我只希望洛阿神灵今日能与我们同在。 你准备好保卫赞达拉了吗？', NULL, '', '', NULL, NULL, '', 32750),
(47229, 'zhCN', '托卡利近卫', '与年迈的罗塔那一起冲入战场对抗鲜血巨魔。', '我们让年迈的罗塔那重新站了起来。$b$b给我们打好掩护，好让塔兰吉从外围攻进来。', NULL, '', '', NULL, NULL, '', 32750),
(47205, 'zhCN', '战争主母', '消灭战争主母夏扎卡。', '邪恶的鲜血巨魔带来的战争主母诅咒了年迈的罗塔那。我们得干掉她，然后才能让那头年迈的恐角龙重返战场。', NULL, '', '', NULL, NULL, '', 32750),
(47204, 'zhCN', '新的战线', '消灭鲜血巨魔军队。', '杀掉所有不是赞达拉巨魔的家伙！', NULL, '', '', NULL, NULL, '', 32750),
(47201, 'zhCN', '洛坎',  '与年迈的罗塔那一起冲入战场，并找到洛坎。', '我的斥候回报，你们的暗影猎手洛坎从纳兹米尔回来了。他被困在关口外面很远的地方。$b$b我们需要从侧翼包抄，突破那边的重围。$b$b年迈的罗塔那已经就位。骑上它，从侧翼冲破鲜血巨魔的阵型。$b$b过去以后，想办法找到洛坎。$b$b哦，还有，$p，要小心。那地方有很多黑暗魔法飞来飞去。', NULL, '', '', NULL, NULL, '', 32750),
(47198, 'zhCN', '别有用心', '治疗8名受伤的俘虏。', '鲜血巨魔的毒药会让我们麻痹，而不是致人于死地。你看，他们不想要我们的命。$b$b我有一种不祥的预感。$b$b我一直在尽快制作解毒剂，但我需要一个像你这样的人过去帮我测试一下。拿上我做出来的药，看看我们能不能让士兵们站起来。', NULL, '', '', NULL, NULL, '', 32750),
(47200, 'zhCN', '争分夺秒', '消灭6只血腹飞蝇。', '干掉那些血腹飞蝇，别让它们掠走我们所有的士兵！我会带着我的军队准备从侧翼冲锋。', NULL, '', '', NULL, NULL, '', 32750);

DELETE FROM `quest_visual_effect` WHERE (`ID`=334327 AND `Index`=0) OR (`ID`=334255 AND `Index`=0) OR (`ID`=294097 AND `Index`=0) OR (`ID`=294095 AND `Index`=0) OR (`ID`=294094 AND `Index`=0) OR (`ID`=290137 AND `Index`=0) OR (`ID`=290094 AND `Index`=0);
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(334327, 0, 9173, 31478),
(334255, 0, 0, 31478),
(294097, 0, 0, 31478),
(294095, 0, 0, 31478),
(294094, 0, 7304, 31478),
(290137, 0, 7304, 31478),
(290094, 0, 2099, 31478);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=134460;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(134460, 264223, 1, 0);-- Ride Old K'zlotech


DELETE FROM `gossip_menu` WHERE (`MenuId`=22290 AND `TextId`=34160) OR (`MenuId`=23129 AND `TextId`=35761) OR (`MenuId`=23017 AND `TextId`=35600) OR (`MenuId`=22445 AND `TextId`=34568) OR (`MenuId`=22966 AND `TextId`=36267) OR (`MenuId`=23211 AND `TextId`=35898) OR (`MenuId`=23195 AND `TextId`=35882) OR (`MenuId`=23202 AND `TextId`=35889) OR (`MenuId`=23200 AND `TextId`=35887) OR (`MenuId`=23199 AND `TextId`=35886) OR (`MenuId`=23207 AND `TextId`=35894) OR (`MenuId`=22455 AND `TextId`=34415) OR (`MenuId`=22431 AND `TextId`=34415);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(22290, 34160, 31478), -- 122689
(23129, 35761, 31478), -- 131216
(23017, 35600, 31478), -- 131216
(22445, 34568, 31478), -- 135775
(22966, 36267, 31478), -- 141555
(23211, 35898, 31478), -- 134478
(23195, 35882, 31478), -- 142818
(23202, 35889, 31478), -- 136372
(23200, 35887, 31478), -- 136355
(23199, 35886, 31478), -- 136357
(23207, 35894, 31478), -- 134834
(22455, 34415, 31478), -- 135890
(22431, 34415, 31478); -- 121599

DELETE FROM `gossip_menu_option` WHERE (`MenuId`=23129 AND `OptionIndex`=11) OR (`MenuId`=23129 AND `OptionIndex`=10) OR (`MenuId`=23129 AND `OptionIndex`=9) OR (`MenuId`=23129 AND `OptionIndex`=8) OR (`MenuId`=23129 AND `OptionIndex`=7) OR (`MenuId`=23129 AND `OptionIndex`=6) OR (`MenuId`=23129 AND `OptionIndex`=5) OR (`MenuId`=23129 AND `OptionIndex`=4) OR (`MenuId`=23129 AND `OptionIndex`=3) OR (`MenuId`=23129 AND `OptionIndex`=2) OR (`MenuId`=23129 AND `OptionIndex`=1) OR (`MenuId`=23129 AND `OptionIndex`=0) OR (`MenuId`=22966 AND `OptionIndex`=0) OR (`MenuId`=23195 AND `OptionIndex`=0) OR (`MenuId`=23202 AND `OptionIndex`=0) OR (`MenuId`=23200 AND `OptionIndex`=0) OR (`MenuId`=23199 AND `OptionIndex`=0) OR (`MenuId`=22455 AND `OptionIndex`=0);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `VerifiedBuild`) VALUES
(23129, 11, 0, 'Vendors', 0, 31478),
(23129, 10, 0, 'Transmogrifier', 0, 31478),
(23129, 9, 0, 'Trainers', 0, 31478),
(23129, 8, 0, 'Stable Master', 0, 31478),
(23129, 7, 0, 'Portals', 0, 31478),
(23129, 6, 0, 'Points of Interest', 0, 31478),
(23129, 5, 0, 'Inn', 0, 31478),
(23129, 4, 0, 'Guild Master & Vendor', 0, 31478),
(23129, 3, 0, 'Flight Master', 0, 31478),
(23129, 2, 0, 'Emissaries', 0, 31478),
(23129, 1, 0, 'Barber', 0, 31478),
(23129, 0, 0, 'Bank', 0, 31478),
(22966, 0, 0, 'Baine, you seem troubled about Sylvanas bringing back Derek Proudmoore.', 0, 31478),
(23195, 0, 0, 'Make for Princess Talanji and Warguard Rakera.', 0, 31478),
(23202, 0, 0, 'Make for Princess Talanji and Warguard Rakera.', 0, 31478),
(23200, 0, 0, 'Make for Princess Talanji and Warguard Rakera.', 0, 31478),
(23199, 0, 0, 'Make for Princess Talanji and Warguard Rakera.', 0, 31478),
(22455, 0, 0, 'I am ready to defend Zandalar.', 0, 31478);-- 135890 Q 50954

UPDATE `gossip_menu_option` SET `OptionType`=1,`OptionNpcFlag`=1 WHERE `MenuId` =22455;

UPDATE `gossip_menu_option` SET `OptionType`=1,`OptionNpcFlag`=1 WHERE `MenuId` =23195;
UPDATE `gossip_menu_option` SET `OptionType`=1,`OptionNpcFlag`=1 WHERE `MenuId` =23202;
UPDATE `gossip_menu_option` SET `OptionType`=1,`OptionNpcFlag`=1 WHERE `MenuId` =23200;
UPDATE `gossip_menu_option` SET `OptionType`=1,`OptionNpcFlag`=1 WHERE `MenuId` =23199;


DELETE FROM `gossip_menu_option_locale` WHERE `MenuId` IN (23195,23202,23200,23199) AND `OptionIndex`=0 AND `locale`='zhCN';
INSERT INTO `gossip_menu_option_locale` (`MenuId`, `OptionIndex`, `Locale`, `OptionText`, `BoxText`) VALUES 
(23195, 0, 'zhCN', '去找塔兰吉公主和戎卫莱克拉。', NULL),
(23202, 0, 'zhCN', '去找塔兰吉公主和戎卫莱克拉。', NULL),
(23200, 0, 'zhCN', '去找塔兰吉公主和戎卫莱克拉。', NULL),
(23199, 0, 'zhCN', '去找塔兰吉公主和戎卫莱克拉。', NULL);

DELETE FROM `gossip_menu_option_locale` WHERE (`MenuId`=22455 AND `OptionIndex`=0 AND `locale`='zhCN');
INSERT INTO `gossip_menu_option_locale` (`MenuId`, `OptionIndex`, `Locale`, `OptionText`, `BoxText`) VALUES 
(22455, 0, 'zhCN', '我准备好保卫赞达拉。', NULL);

UPDATE `creature_template` SET `gossip_menu_id`=22455,`minlevel`=120, `maxlevel`=120,`faction`=2900,`npcflag`=3, `speed_walk`=1,`speed_run`=1.1428,`BaseAttackTime`=2000,`unit_flags`=64, `unit_flags2`=2048,`HoverHeight`=1 WHERE `entry`=135890;
UPDATE `creature_template` SET `ScriptName`='npc_king_rastakhan_135890' WHERE `entry`=135890;
DELETE FROM `creature_template_scaling` WHERE (`Entry`=135890 AND `DifficultyID`=1); 
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(135890, 1, 110, 120, 0, 0, 0, 31478);

DELETE FROM `creature_equip_template` WHERE (`CreatureID`=135890 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(135890, 1, 161023, 0, 0, 0, 0, 0, 0, 0, 0); -- 135890
-- 134460/年迈的克兹罗特
UPDATE `creature_template` SET `ScriptName`='npc_old_kzlotec_134460' WHERE `entry`=134460;
UPDATE `creature_template` SET `spell1`=254981,`spell2`=254970,`spell3`=254971,`minlevel`=120, `maxlevel`=120,`faction`=2900,`npcflag`=16777216, `speed_walk`=1.2,`speed_run`=2,`BaseAttackTime`=2000,`unit_flags`=33280, `unit_flags2`=4261888,`unit_flags3`=1, `VehicleId`=5860,`HoverHeight`=1 WHERE `entry`=134460;

DELETE FROM `creature_template_locale` WHERE (`entry`=134460 AND `locale`='zhCN'); 
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `NameAlt`, `Title`, `TitleAlt`, `VerifiedBuild`) VALUES 
(134460, 'zhCN', '年迈的克兹罗特', NULL, '托卡利近卫', NULL, 32750);

DELETE FROM `creature_template_scaling` WHERE (`Entry`=134460 AND `DifficultyID`=12); 
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(134460, 12, 110, 120, 0, 0, 0, 31478);

DELETE FROM `creature_template_model` WHERE (`CreatureID`=134460 AND `Idx`=0);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(134460, 0, 78197, 1, 1, 31478); -- 134460

DELETE FROM `creature_template_locale` WHERE (`entry`=134756 AND `locale`='zhCN'); 
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `NameAlt`, `Title`, `TitleAlt`, `VerifiedBuild`) VALUES 
(134756, 'zhCN', '年迈的克兹罗特', NULL, '托卡利近卫', NULL, 32750);

DELETE FROM `quest_greeting` WHERE (`ID`=121601 AND `Type`=0);
INSERT INTO `quest_greeting` (`ID`, `Type`, `GreetEmoteType`, `GreetEmoteDelay`, `Greeting`, `VerifiedBuild`) VALUES
(121601, 0, 0, 0, 'Talanji be stuck on the wrong side of de Blood Gate. I got separated from her when scounting. We need to clear her a path.', 31478); -- 121601


DELETE FROM `quest_details` WHERE `ID` IN (50954 /*50954*/, 47258 /*47258*/, 47229 /*47229*/, 47205 /*47205*/, 47204 /*47204*/, 47201 /*47201*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(50954, 1, 0, 0, 0, 0, 0, 0, 0, 31478), -- 50954
(47258, 1, 0, 0, 0, 0, 0, 0, 0, 31478), -- 47258
(47229, 66, 0, 0, 0, 0, 0, 0, 0, 31478), -- 47229
(47205, 1, 0, 0, 0, 0, 0, 0, 0, 31478), -- 47205
(47204, 1, 0, 0, 0, 0, 0, 0, 0, 31478), -- 47204
(47201, 1, 0, 0, 0, 0, 0, 0, 0, 31478); -- 47201

DELETE FROM `instance_template` WHERE `map`=1906;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES 
(1906, 1642, 'instance_scenario_zuldazar', 1, 1);

DELETE FROM `scenarios` WHERE `map`=1906;
INSERT INTO `scenarios` (`map`, `difficulty`, `scenario_A`, `scenario_H`) VALUES 
(1906, 12, 0, 1524);



DELETE FROM `creature_template_locale` WHERE (`entry`=134433 AND `locale`='zhCN'); 
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `NameAlt`, `Title`, `TitleAlt`, `VerifiedBuild`) VALUES 
(134433, 'zhCN', '鲜血抱齿兽', NULL, '', NULL, 32750);

DELETE FROM `creature_template_locale` WHERE (`entry`=134432 AND `locale`='zhCN'); 
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `NameAlt`, `Title`, `TitleAlt`, `VerifiedBuild`) VALUES 
(134432, 'zhCN', '鲜血妖术师', NULL, '', NULL, 32750);

DELETE FROM `creature_template_locale` WHERE (`entry`=134431 AND `locale`='zhCN'); 
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `NameAlt`, `Title`, `TitleAlt`, `VerifiedBuild`) VALUES 
(134431, 'zhCN', '鲜血巨魔', NULL, '', NULL, 32750);

DELETE FROM `creature_template_locale` WHERE (`entry`=134507 AND `locale`='zhCN'); 
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `NameAlt`, `Title`, `TitleAlt`, `VerifiedBuild`) VALUES 
(134507, 'zhCN', '攻城巨兽', NULL, '', NULL, 32750);

DELETE FROM `creature_template_locale` WHERE (`entry`=134627 AND `locale`='zhCN'); 
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `NameAlt`, `Title`, `TitleAlt`, `VerifiedBuild`) VALUES 
(134627, 'zhCN', '鲜血巨魔战争主母', NULL, '', NULL, 32750);


UPDATE `creature_template` SET `ScriptName`='npc_blood_scenario' WHERE `entry` IN (134433,134432,134431,134507,134627);
UPDATE `creature_template` SET `ScriptName`='npc_pa_ku_134493' WHERE `entry`=134493; -- Pa'ku
UPDATE `creature_template` SET `npcflag`=1, `ScriptName`='npc_scenario_civilians_resued' WHERE `entry` IN (136355,136356,136357,136358,136359,136360,136367,136368,136369,136370,136371,136372,142818);
UPDATE `creature_template` SET `ScriptName`='npc_gonk_134492' WHERE `entry`=134492;
UPDATE `creature_template` SET `ScriptName`='npc_king_rastakhan_136324' WHERE `entry`=136324;
UPDATE `creature_template` SET `ScriptName`='npc_warlord_kara_na_131018' WHERE `entry`=131018;

UPDATE `creature_template` SET `ScriptName`='npc_mada_renkala_142765' WHERE `entry`=142765;

DELETE FROM `creature_template_scaling` WHERE (`Entry`=148923 AND `DifficultyID`=0) OR (`Entry`=146013 AND `DifficultyID`=0) OR (`Entry`=143948 AND `DifficultyID`=0) OR (`Entry`=141961 AND `DifficultyID`=0) OR (`Entry`=143947 AND `DifficultyID`=0) OR (`Entry`=150433 AND `DifficultyID`=0) OR (`Entry`=143595 AND `DifficultyID`=0) OR (`Entry`=142969 AND `DifficultyID`=0) OR (`Entry`=142157 AND `DifficultyID`=0) OR (`Entry`=142159 AND `DifficultyID`=0) OR (`Entry`=142158 AND `DifficultyID`=0) OR (`Entry`=148924 AND `DifficultyID`=0) OR (`Entry`=143388 AND `DifficultyID`=0) OR (`Entry`=143396 AND `DifficultyID`=0) OR (`Entry`=142992 AND `DifficultyID`=0) OR (`Entry`=143614 AND `DifficultyID`=0) OR (`Entry`=143615 AND `DifficultyID`=0) OR (`Entry`=142977 AND `DifficultyID`=0) OR (`Entry`=142975 AND `DifficultyID`=0) OR (`Entry`=142981 AND `DifficultyID`=0) OR (`Entry`=142970 AND `DifficultyID`=0) OR (`Entry`=147974 AND `DifficultyID`=0) OR (`Entry`=147975 AND `DifficultyID`=0) OR (`Entry`=142765 AND `DifficultyID`=12) OR (`Entry`=142799 AND `DifficultyID`=12) OR (`Entry`=136956 AND `DifficultyID`=12) OR (`Entry`=131018 AND `DifficultyID`=12) OR (`Entry`=136955 AND `DifficultyID`=12) OR (`Entry`=131040 AND `DifficultyID`=12) OR (`Entry`=134593 AND `DifficultyID`=12) OR (`Entry`=136326 AND `DifficultyID`=12) OR (`Entry`=136384 AND `DifficultyID`=12) OR (`Entry`=136272 AND `DifficultyID`=12) OR (`Entry`=136372 AND `DifficultyID`=12) OR (`Entry`=136370 AND `DifficultyID`=12) OR (`Entry`=136371 AND `DifficultyID`=12) OR (`Entry`=136357 AND `DifficultyID`=12) OR (`Entry`=136368 AND `DifficultyID`=12) OR (`Entry`=136355 AND `DifficultyID`=12) OR (`Entry`=136367 AND `DifficultyID`=12) OR (`Entry`=136358 AND `DifficultyID`=12) OR (`Entry`=134865 AND `DifficultyID`=12) OR (`Entry`=136369 AND `DifficultyID`=12) OR (`Entry`=134836 AND `DifficultyID`=12) OR (`Entry`=134831 AND `DifficultyID`=12) OR (`Entry`=134620 AND `DifficultyID`=12) OR (`Entry`=134834 AND `DifficultyID`=12) OR (`Entry`=134429 AND `DifficultyID`=12) OR (`Entry`=134427 AND `DifficultyID`=12) OR (`Entry`=134428 AND `DifficultyID`=12) OR (`Entry`=136360 AND `DifficultyID`=12) OR (`Entry`=136356 AND `DifficultyID`=12) OR (`Entry`=136359 AND `DifficultyID`=12) OR (`Entry`=142818 AND `DifficultyID`=12) OR (`Entry`=134756 AND `DifficultyID`=12) OR (`Entry`=134469 AND `DifficultyID`=12) OR (`Entry`=134432 AND `DifficultyID`=12) OR (`Entry`=134431 AND `DifficultyID`=12) OR (`Entry`=134433 AND `DifficultyID`=12) OR (`Entry`=134492 AND `DifficultyID`=12) OR (`Entry`=134591 AND `DifficultyID`=12) OR (`Entry`=134627 AND `DifficultyID`=12) OR (`Entry`=134507 AND `DifficultyID`=12) OR (`Entry`=134493 AND `DifficultyID`=12) OR (`Entry`=121744 AND `DifficultyID`=1) OR (`Entry`=128587 AND `DifficultyID`=1) OR (`Entry`=121810 AND `DifficultyID`=1) OR (`Entry`=128521 AND `DifficultyID`=1) OR (`Entry`=121585 AND `DifficultyID`=1) OR (`Entry`=121846 AND `DifficultyID`=1) OR (`Entry`=121566 AND `DifficultyID`=1) OR (`Entry`=121601 AND `DifficultyID`=1) OR (`Entry`=122061 AND `DifficultyID`=1) OR (`Entry`=122078 AND `DifficultyID`=1) OR (`Entry`=121577 AND `DifficultyID`=1) OR (`Entry`=121584 AND `DifficultyID`=1) OR (`Entry`=121703 AND `DifficultyID`=1) OR (`Entry`=128309 AND `DifficultyID`=1) OR (`Entry`=142518 AND `DifficultyID`=1) OR (`Entry`=142524 AND `DifficultyID`=1) OR (`Entry`=138602 AND `DifficultyID`=1) OR (`Entry`=128699 AND `DifficultyID`=1) OR (`Entry`=121581 AND `DifficultyID`=1) OR (`Entry`=121651 AND `DifficultyID`=1) OR (`Entry`=121599 AND `DifficultyID`=1) OR (`Entry`=121897 AND `DifficultyID`=1) OR (`Entry`=121696 AND `DifficultyID`=1) OR (`Entry`=121898 AND `DifficultyID`=1) OR (`Entry`=121930 AND `DifficultyID`=1) OR (`Entry`=128344 AND `DifficultyID`=1) OR (`Entry`=121596 AND `DifficultyID`=1);
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(148923, 0, 110, 120, 0, 0, 0, 31478),
(146013, 0, 120, 120, 0, 0, 0, 31478),
(143948, 0, 110, 120, 0, 0, 0, 31478),
(141961, 0, 110, 120, 0, 0, 0, 31478),
(143947, 0, 120, 120, 0, 0, 0, 31478),
(150433, 0, 120, 120, 0, 0, 0, 31478),
(143595, 0, 120, 120, 0, 0, 0, 31478),
(142969, 0, 120, 120, 0, 0, 0, 31478),
(142157, 0, 120, 120, 0, 0, 0, 31478),
(142159, 0, 120, 120, 0, 0, 0, 31478),
(142158, 0, 120, 120, 0, 0, 0, 31478),
(148924, 0, 120, 120, 0, 0, 0, 31478),
(143388, 0, 120, 120, 0, 0, 0, 31478),
(143396, 0, 120, 120, 0, 0, 0, 31478),
(142992, 0, 120, 120, 0, 0, 0, 31478),
(143614, 0, 120, 120, 0, 0, 0, 31478),
(143615, 0, 120, 120, 0, 0, 0, 31478),
(142977, 0, 120, 120, 0, 0, 0, 31478),
(142975, 0, 120, 120, 0, 0, 0, 31478),
(142981, 0, 120, 120, 0, 0, 0, 31478),
(142970, 0, 120, 120, 0, 0, 0, 31478),
(147974, 0, 120, 120, 0, 0, 0, 31478),
(147975, 0, 120, 120, 0, 0, 0, 31478),
(142765, 12, 110, 120, 0, 0, 0, 31478),
(142799, 12, 110, 120, 0, 0, 0, 31478),
(136956, 12, 110, 120, 0, 0, 0, 31478),
(131018, 12, 110, 120, 0, 0, 0, 31478),
(136955, 12, 110, 120, 0, 0, 0, 31478),
(131040, 12, 110, 120, 0, 0, 0, 31478),
(134593, 12, 110, 120, 0, 0, 0, 31478),
(136326, 12, 110, 120, 0, 0, 0, 31478),
(136384, 12, 110, 120, 0, 0, 0, 31478),
(136272, 12, 110, 120, 0, 0, 0, 31478),
(136372, 12, 110, 120, 0, 0, 0, 31478),
(136370, 12, 110, 120, 0, 0, 0, 31478),
(136371, 12, 110, 120, 0, 0, 0, 31478),
(136357, 12, 110, 120, 0, 0, 0, 31478),
(136368, 12, 110, 120, 0, 0, 0, 31478),
(136355, 12, 110, 120, 0, 0, 0, 31478),
(136367, 12, 110, 120, 0, 0, 0, 31478),
(136358, 12, 110, 120, 0, 0, 0, 31478),
(134865, 12, 110, 120, 0, 0, 0, 31478),
(136369, 12, 110, 120, 0, 0, 0, 31478),
(134836, 12, 110, 120, 0, 0, 0, 31478),
(134831, 12, 110, 120, 0, 0, 0, 31478),
(134620, 12, 110, 120, 0, 0, 0, 31478),
(134834, 12, 110, 120, 0, 0, 0, 31478),
(134429, 12, 110, 120, 0, 0, 0, 31478),
(134427, 12, 110, 120, 0, 0, 0, 31478),
(134428, 12, 110, 120, 0, 0, 0, 31478),
(136360, 12, 110, 120, 0, 0, 0, 31478),
(136356, 12, 110, 120, 0, 0, 0, 31478),
(136359, 12, 110, 120, 0, 0, 0, 31478),
(142818, 12, 110, 120, 0, 0, 0, 31478),
(134756, 12, 110, 120, 0, 0, 0, 31478),
(134469, 12, 110, 120, 0, 0, 0, 31478),
(134432, 12, 110, 120, 0, 0, 0, 31478),
(134431, 12, 110, 120, 0, 0, 0, 31478),
(134433, 12, 110, 120, 0, 0, 0, 31478),
(134492, 12, 110, 120, 0, 0, 0, 31478),
(134591, 12, 110, 120, 0, 0, 0, 31478),
(134627, 12, 110, 120, 0, 0, 0, 31478),
(134507, 12, 110, 120, 0, 0, 0, 31478),
(134493, 12, 110, 120, 0, 0, 0, 31478),
(121744, 1, 110, 120, 0, 0, 0, 31478),
(128587, 1, 110, 120, 0, 0, 0, 31478),
(121810, 1, 110, 120, 0, 0, 0, 31478),
(128521, 1, 110, 120, 0, 0, 0, 31478),
(121585, 1, 110, 120, 0, 0, 0, 31478),
(121846, 1, 110, 120, 0, 0, 0, 31478),
(121566, 1, 110, 120, 0, 0, 0, 31478),
(121601, 1, 110, 120, 0, 0, 0, 31478),
(122061, 1, 110, 120, 0, 0, 0, 31478),
(122078, 1, 110, 120, 0, 0, 0, 31478),
(121577, 1, 110, 120, 0, 0, 0, 31478),
(121584, 1, 110, 120, 0, 0, 0, 31478),
(121703, 1, 110, 120, 0, 0, 0, 31478),
(128309, 1, 110, 120, 0, 0, 0, 31478),
(142518, 1, 110, 120, 0, 0, 0, 31478),
(142524, 1, 110, 120, 0, 0, 0, 31478),
(138602, 1, 110, 120, 0, 0, 0, 31478),
(128699, 1, 110, 120, 0, 0, 0, 31478),
(121581, 1, 110, 120, 0, 0, 0, 31478),
(121651, 1, 110, 120, 0, 0, 0, 31478),
(121599, 1, 110, 120, 0, 0, 0, 31478),
(121897, 1, 110, 120, 0, 0, 0, 31478),
(121696, 1, 110, 120, 0, 0, 0, 31478),
(121898, 1, 110, 120, 0, 0, 0, 31478),
(121930, 1, 110, 120, 0, 0, 0, 31478),
(128344, 1, 110, 120, 0, 0, 0, 31478),
(121596, 1, 110, 120, 0, 0, 0, 31478);

UPDATE `creature_template_scaling` SET `LevelScalingMin`=110, `VerifiedBuild`=31478 WHERE (`Entry`=125816 AND `DifficultyID`=0);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=121017 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=132365 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131842 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=130230 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=132394 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=133549 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=130111 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=130257 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=130256 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=120900 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=130115 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=126023 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=130103 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=130108 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=130100 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=121253 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=129994 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=130117 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131522 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=132308 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=133123 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=128087 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=122689 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=122337 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=120802 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=122692 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=143872 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=141549 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131484 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131480 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131460 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=122691 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=122701 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131483 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=142179 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=141555 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=122690 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=141928 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131494 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=122697 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=140394 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=132264 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=132643 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131481 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=142185 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131443 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131503 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=130932 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131521 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131472 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=143873 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131511 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131542 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131216 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131514 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131502 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=141937 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=120168 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131477 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131512 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131566 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131506 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=131482 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=133632 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=142464 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `VerifiedBuild`=31478 WHERE (`Entry`=142404 AND `DifficultyID`=0);


DELETE FROM `creature_model_info` WHERE `DisplayID` IN (90162, 90770, 90164, 89367, 88839, 89086, 88890, 89085);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(90162, 0.347222000360488891, 1.5, 0, 31478),
(90770, 0.698000013828277587, 3, 0, 31478),
(90164, 0.236000001430511474, 1.5, 0, 31478),
(89367, 0.344700008630752563, 1.35000002384185791, 0, 31478),
(88839, 0.344700008630752563, 1.35000002384185791, 0, 31478),
(89086, 0.344700008630752563, 1.35000002384185791, 0, 31478),
(88890, 0.344700008630752563, 1.35000002384185791, 0, 31478),
(89085, 0.344700008630752563, 1.35000002384185791, 0, 31478);

UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=72016;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=83559;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=83141;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=71944;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=83139;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81389;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=83199;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=83558;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81246;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=83560;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=83561;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=64074;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=85697;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80554;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80553;
UPDATE `creature_model_info` SET `BoundingRadius`=0.534159004688262939, `VerifiedBuild`=31478 WHERE `DisplayID`=85714;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=83557;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=83556;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80802;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=35929;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=36411;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=83545;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80265;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=342;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81116;
UPDATE `creature_model_info` SET `BoundingRadius`=0.698000013828277587, `CombatReach`=3, `VerifiedBuild`=31478 WHERE `DisplayID`=83528;
UPDATE `creature_model_info` SET `BoundingRadius`=0.722000002861022949, `CombatReach`=3, `VerifiedBuild`=31478 WHERE `DisplayID`=83526;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81117;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81115;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=46458;
UPDATE `creature_model_info` SET `BoundingRadius`=0.698000013828277587, `CombatReach`=3, `VerifiedBuild`=31478 WHERE `DisplayID`=83530;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81204;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=86198;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=86203;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=64374;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=54893;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=86204;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82115;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=86219;
UPDATE `creature_model_info` SET `BoundingRadius`=0.382999986410140991, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=85858;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=85790;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=84915;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75730;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=67624;
UPDATE `creature_model_info` SET `BoundingRadius`=0.698000013828277587, `CombatReach`=3, `VerifiedBuild`=31478 WHERE `DisplayID`=88689;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87566;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=42409;
UPDATE `creature_model_info` SET `BoundingRadius`=0.283199995756149291, `CombatReach`=1.799999952316284179, `VerifiedBuild`=31478 WHERE `DisplayID`=89342;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=88522;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=63276;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75378;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=73854;
UPDATE `creature_model_info` SET `BoundingRadius`=0.459600001573562622, `CombatReach`=1.799999952316284179, `VerifiedBuild`=31478 WHERE `DisplayID`=86073;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80266;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=88687;
UPDATE `creature_model_info` SET `BoundingRadius`=0.382999986410140991, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=85799;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=70861;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=76532;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=86202;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=73116;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81249;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=86079;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=83764;
UPDATE `creature_model_info` SET `BoundingRadius`=0.372000008821487426, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=87732;
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=87588;
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=87816;
UPDATE `creature_model_info` SET `BoundingRadius`=0.443432003259658813, `CombatReach`=1.649999976158142089, `VerifiedBuild`=31478 WHERE `DisplayID`=83854;
UPDATE `creature_model_info` SET `BoundingRadius`=0.236000001430511474, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=87771;
UPDATE `creature_model_info` SET `BoundingRadius`=0.600794970989227294, `CombatReach`=1.417500019073486328, `VerifiedBuild`=31478 WHERE `DisplayID`=83832;
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=87748;
UPDATE `creature_model_info` SET `BoundingRadius`=0.36362999677658081, `CombatReach`=1.466249942779541015, `VerifiedBuild`=31478 WHERE `DisplayID`=83860;
UPDATE `creature_model_info` SET `BoundingRadius`=0.380948007106781005, `CombatReach`=1.417500019073486328, `VerifiedBuild`=31478 WHERE `DisplayID`=83831;
UPDATE `creature_model_info` SET `BoundingRadius`=0.600794970989227294, `CombatReach`=1.417500019073486328, `VerifiedBuild`=31478 WHERE `DisplayID`=83833;
UPDATE `creature_model_info` SET `BoundingRadius`=0.23069000244140625, `CombatReach`=1.466249942779541015, `VerifiedBuild`=31478 WHERE `DisplayID`=83858;
UPDATE `creature_model_info` SET `BoundingRadius`=0.380948007106781005, `CombatReach`=1.417500019073486328, `VerifiedBuild`=31478 WHERE `DisplayID`=83830;
UPDATE `creature_model_info` SET `BoundingRadius`=0.23069000244140625, `CombatReach`=1.466249942779541015, `VerifiedBuild`=31478 WHERE `DisplayID`=83859;
UPDATE `creature_model_info` SET `BoundingRadius`=0.36362999677658081, `CombatReach`=1.466249942779541015, `VerifiedBuild`=31478 WHERE `DisplayID`=83861;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82787;
UPDATE `creature_model_info` SET `BoundingRadius`=0.382999986410140991, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=87742;
UPDATE `creature_model_info` SET `BoundingRadius`=0.382999986410140991, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=87739;
UPDATE `creature_model_info` SET `BoundingRadius`=0.382999986410140991, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=87745;
UPDATE `creature_model_info` SET `BoundingRadius`=0.698000013828277587, `CombatReach`=3, `VerifiedBuild`=31478 WHERE `DisplayID`=87733;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80451;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82235;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82396;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87512;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=60927;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=60924;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=76071;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79847;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87515;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=76792;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=60926;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80524;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80523;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87623;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80716;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87624;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81126;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80525;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87669;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81128;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=76072;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79853;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=47243;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=77186;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=59014;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87382;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=60962;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=77188;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=77184;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82629;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=78593;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=33655;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82389;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=6412;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81045;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81044;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82397;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81046;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82398;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=77185;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81050;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81048;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=38261;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81036;
UPDATE `creature_model_info` SET `BoundingRadius`=1.606559991836547851, `CombatReach`=3.299999952316284179, `VerifiedBuild`=31478 WHERE `DisplayID`=707;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=21899;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=76020;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=4622;
UPDATE `creature_model_info` SET `BoundingRadius`=1.269090056419372558, `VerifiedBuild`=31478 WHERE `DisplayID`=78159;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81017;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81041;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=1924;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81033;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81004;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80258;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81026;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81011;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81013;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=32565;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81211;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=60862;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82356;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82358;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82359;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82704;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82706;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82357;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82707;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79771;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79373;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=77065;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=15468;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80925;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=44816;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=20923;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=85905;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81913;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87360;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81911;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=88068;
UPDATE `creature_model_info` SET `BoundingRadius`=0.722000002861022949, `CombatReach`=3, `VerifiedBuild`=31478 WHERE `DisplayID`=81848;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81853;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87363;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81862;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=78972;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81509;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81847;
UPDATE `creature_model_info` SET `BoundingRadius`=0.722000002861022949, `CombatReach`=3, `VerifiedBuild`=31478 WHERE `DisplayID`=82336;
UPDATE `creature_model_info` SET `BoundingRadius`=1.590160012245178222, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=79564;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87361;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81869;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81843;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87591;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81883;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=30272;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79947;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=83850;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82342;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=86679;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82325;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=77146;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82547;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81839;
UPDATE `creature_model_info` SET `BoundingRadius`=0.698000013828277587, `CombatReach`=3, `VerifiedBuild`=31478 WHERE `DisplayID`=87592;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81651;
UPDATE `creature_model_info` SET `BoundingRadius`=0.722000002861022949, `CombatReach`=3, `VerifiedBuild`=31478 WHERE `DisplayID`=81885;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=73853;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81855;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81491;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81870;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81906;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=78971;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81832;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=88069;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81860;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81886;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81650;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82334;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81863;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81854;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=76009;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87533;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=25502;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81836;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81838;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87368;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81914;
UPDATE `creature_model_info` SET `BoundingRadius`=0.698000013828277587, `CombatReach`=3, `VerifiedBuild`=31478 WHERE `DisplayID`=81859;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81841;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=77148;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=35804;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87639;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=41199;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=86053;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=76214;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75961;
UPDATE `creature_model_info` SET `BoundingRadius`=4.394219875335693359, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=81537;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=77149;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80787;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80429;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80430;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80420;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80428;
UPDATE `creature_model_info` SET `BoundingRadius`=4.394219875335693359, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=84757;
UPDATE `creature_model_info` SET `BoundingRadius`=4.394219875335693359, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=84755;
UPDATE `creature_model_info` SET `BoundingRadius`=4.394219875335693359, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=84754;
UPDATE `creature_model_info` SET `BoundingRadius`=4.394219875335693359, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=84756;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=82576;
UPDATE `creature_model_info` SET `BoundingRadius`=0.912486016750335693, `CombatReach`=1.20000004768371582, `VerifiedBuild`=31478 WHERE `DisplayID`=77687;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79791;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=78871;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=27222;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81989;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80797;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81990;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79768;
UPDATE `creature_model_info` SET `BoundingRadius`=4.394219875335693359, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=83922;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81985;
UPDATE `creature_model_info` SET `BoundingRadius`=4.394219875335693359, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=83310;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80623;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80646;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80740;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80739;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79320;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80642;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80624;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80487;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=80648;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=78870;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79769;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79514;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79233;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=77323;
UPDATE `creature_model_info` SET `BoundingRadius`=4.394219875335693359, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=75563;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79232;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79401;
UPDATE `creature_model_info` SET `BoundingRadius`=4.394219875335693359, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=84043;
UPDATE `creature_model_info` SET `BoundingRadius`=4.394219875335693359, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=76215;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=78169;
UPDATE `creature_model_info` SET `BoundingRadius`=4.394219875335693359, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=78197;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=78000;
UPDATE `creature_model_info` SET `BoundingRadius`=1.842249989509582519, `CombatReach`=10, `VerifiedBuild`=31478 WHERE `DisplayID`=80026;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75864;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75865;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75863;
UPDATE `creature_model_info` SET `BoundingRadius`=4.394219875335693359, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=78170;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75898;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79689;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=78227;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=24079;
UPDATE `creature_model_info` SET `BoundingRadius`=0.840022027492523193, `CombatReach`=1.799999952316284179, `VerifiedBuild`=31478 WHERE `DisplayID`=75861;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75860;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=76616;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=78226;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75862;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=78225;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75565;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=78228;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75858;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75859;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=47310;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87662;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=87664;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=19985;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=78832;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81223;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79854;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=76420;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75798;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=83539;
UPDATE `creature_model_info` SET `BoundingRadius`=0.280000001192092895, `CombatReach`=0.400000005960464477, `VerifiedBuild`=31478 WHERE `DisplayID`=36578;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75566;
UPDATE `creature_model_info` SET `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=86531;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=81234;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=76457;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=36953;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=77461;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=6295;
UPDATE `creature_model_info` SET `BoundingRadius`=0.026249999180436134, `CombatReach`=1.5, `VerifiedBuild`=31478 WHERE `DisplayID`=86529;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75966;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=79855;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=76564;
UPDATE `creature_model_info` SET `BoundingRadius`=1.519469976425170898, `CombatReach`=0.699999988079071044, `VerifiedBuild`=31478 WHERE `DisplayID`=76650;
UPDATE `creature_model_info` SET `VerifiedBuild`=31478 WHERE `DisplayID`=75971;

DELETE FROM `creature_equip_template` WHERE (`CreatureID`=146013 AND `ID`=1) OR (`CreatureID`=138708 AND `ID`=1) OR (`CreatureID`=143948 AND `ID`=1) OR (`CreatureID`=141961 AND `ID`=1) OR (`CreatureID`=150433 AND `ID`=1) OR (`CreatureID`=142159 AND `ID`=1) OR (`CreatureID`=142158 AND `ID`=1) OR (`CreatureID`=143396 AND `ID`=1) OR (`CreatureID`=143614 AND `ID`=1) OR (`CreatureID`=143615 AND `ID`=1) OR (`CreatureID`=147974 AND `ID`=1) OR (`CreatureID`=147975 AND `ID`=1) OR (`CreatureID`=131542 AND `ID`=1) OR (`CreatureID`=142765 AND `ID`=1) OR (`CreatureID`=142799 AND `ID`=1) OR (`CreatureID`=136956 AND `ID`=3) OR (`CreatureID`=136956 AND `ID`=2) OR (`CreatureID`=136956 AND `ID`=1) OR (`CreatureID`=131018 AND `ID`=1) OR (`CreatureID`=136955 AND `ID`=1) OR (`CreatureID`=131040 AND `ID`=1) OR (`CreatureID`=136326 AND `ID`=3) OR (`CreatureID`=136326 AND `ID`=2) OR (`CreatureID`=136326 AND `ID`=1) OR (`CreatureID`=136324 AND `ID`=1) OR (`CreatureID`=136384 AND `ID`=3) OR (`CreatureID`=136384 AND `ID`=2) OR (`CreatureID`=136384 AND `ID`=1) OR (`CreatureID`=136372 AND `ID`=1) OR (`CreatureID`=136370 AND `ID`=1) OR (`CreatureID`=136371 AND `ID`=1) OR (`CreatureID`=136357 AND `ID`=1) OR (`CreatureID`=136355 AND `ID`=1) OR (`CreatureID`=136358 AND `ID`=1) OR (`CreatureID`=134836 AND `ID`=1) OR (`CreatureID`=134831 AND `ID`=1) OR (`CreatureID`=134620 AND `ID`=1) OR (`CreatureID`=134429 AND `ID`=1) OR (`CreatureID`=134427 AND `ID`=1) OR (`CreatureID`=134428 AND `ID`=1) OR (`CreatureID`=136360 AND `ID`=1) OR (`CreatureID`=136356 AND `ID`=1) OR (`CreatureID`=134432 AND `ID`=1) OR (`CreatureID`=134431 AND `ID`=1) OR (`CreatureID`=134461 AND `ID`=1) OR (`CreatureID`=134689 AND `ID`=1) OR (`CreatureID`=134692 AND `ID`=1) OR (`CreatureID`=135708 AND `ID`=1) OR (`CreatureID`=121601 AND `ID`=1) OR (`CreatureID`=121703 AND `ID`=1) OR (`CreatureID`=121599 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(146013, 1, 0, 0, 0, 0, 0, 0, 18680, 0, 0), -- -Unknown-
(138708, 1, 61297, 0, 0, 61297, 0, 0, 0, 0, 0), -- -Unknown-
(143948, 1, 155799, 0, 0, 155799, 0, 0, 0, 0, 0), -- -Unknown-
(141961, 1, 160500, 0, 0, 160501, 0, 0, 0, 0, 0), -- -Unknown-
(150433, 1, 107366, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(142159, 1, 2198, 0, 0, 3698, 0, 0, 0, 0, 0), -- -Unknown-
(142158, 1, 5289, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(143396, 1, 5289, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(143614, 1, 5289, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(143615, 1, 5289, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(147974, 1, 45208, 0, 0, 150518, 0, 0, 0, 0, 0), -- -Unknown-
(147975, 1, 45208, 0, 0, 150518, 0, 0, 0, 0, 0), -- -Unknown-
(131542, 1, 2703, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(142765, 1, 52942, 0, 0, 0, 0, 0, 0, 0, 0), -- Ma'da Renkala
(142799, 1, 94106, 0, 0, 94196, 0, 0, 0, 0, 0), -- Torcali Ironhide
(136956, 3, 94121, 0, 0, 0, 0, 0, 0, 0, 0), -- Rastari Spirit
(136956, 2, 94028, 0, 0, 0, 0, 0, 0, 0, 0), -- Rastari Spirit
(136956, 1, 153585, 0, 0, 0, 0, 0, 0, 0, 0), -- Rastari Spirit
(131018, 1, 94827, 0, 0, 0, 0, 0, 0, 0, 0), -- Warlord Kara-na
(136955, 1, 56232, 0, 0, 56232, 0, 0, 0, 0, 0), -- Zanchuli Betrayer
(131040, 1, 82348, 0, 0, 0, 0, 0, 0, 0, 0), -- Kao-Tien Render
(136326, 3, 153585, 0, 0, 0, 0, 0, 0, 0, 0), -- Rastari Defender
(136326, 2, 94028, 0, 0, 0, 0, 0, 0, 0, 0), -- Rastari Defender
(136326, 1, 94121, 0, 0, 0, 0, 0, 0, 0, 0), -- Rastari Defender
(136324, 1, 161023, 0, 0, 0, 0, 0, 0, 0, 0), -- King Rastakhan
(136384, 3, 153585, 0, 0, 0, 0, 0, 0, 0, 0), -- Rastari Spirit
(136384, 2, 94028, 0, 0, 0, 0, 0, 0, 0, 0), -- Rastari Spirit
(136384, 1, 94121, 0, 0, 0, 0, 0, 0, 0, 0), -- Rastari Spirit
(136372, 1, 158132, 0, 0, 159808, 0, 0, 0, 0, 0), -- Toko
(136370, 1, 158132, 0, 0, 159808, 0, 0, 0, 0, 0), -- Old Tella
(136371, 1, 158132, 0, 0, 159808, 0, 0, 0, 0, 0), -- Rakle the Wretched
(136357, 1, 158132, 0, 0, 159808, 0, 0, 0, 0, 0), -- Chronicler Bah'kini
(136355, 1, 158132, 0, 0, 159808, 0, 0, 0, 0, 0), -- Trader Haw'li
(136358, 1, 158132, 0, 0, 159808, 0, 0, 0, 0, 0), -- No'ci the Scribe
(134836, 1, 0, 0, 0, 0, 0, 0, 94664, 0, 0), -- Pa'kura Warbow
(134831, 1, 94106, 0, 0, 0, 0, 0, 0, 0, 0), -- Bladeguard Kaja
(134620, 1, 95790, 0, 0, 94194, 0, 0, 0, 0, 0), -- Warguard Rakera
(134429, 1, 151334, 0, 0, 0, 0, 0, 0, 0, 0), -- Diamondback Warbringer
(134427, 1, 151335, 0, 0, 0, 0, 0, 0, 0, 0), -- Sethrak Skycaller
(134428, 1, 151334, 0, 0, 151334, 0, 0, 0, 0, 0), -- Bladesworn Diamondback
(136360, 1, 158132, 0, 0, 159808, 0, 0, 0, 0, 0), -- Headhunter Lani
(136356, 1, 158132, 0, 0, 159808, 0, 0, 0, 0, 0), -- Bri'tani
(134432, 1, 10571, 0, 0, 15976, 0, 0, 0, 0, 0), -- Blood Hexxer
(134431, 1, 128193, 0, 0, 128193, 0, 0, 0, 0, 0), -- Blood Troll
(134461, 1, 161023, 0, 0, 0, 0, 0, 0, 0, 0), -- King Rastakhan
(134689, 1, 29433, 0, 0, 0, 0, 0, 0, 0, 0), -- Rokhan
(134692, 1, 126524, 0, 0, 0, 0, 0, 0, 0, 0), -- Princess Talanji
(135708, 1, 126524, 0, 0, 0, 0, 0, 0, 0, 0), -- Princess Talanji
(121601, 1, 94248, 0, 0, 0, 0, 0, 0, 0, 0), -- Rokhan
(121703, 1, 11763, 0, 0, 0, 0, 0, 28023, 0, 0), -- Raptari Warrior
(121599, 1, 161023, 0, 0, 0, 0, 0, 0, 0, 0); -- -Unknown-

UPDATE `creature_equip_template` SET `ItemID2`=3935 WHERE (`CreatureID`=137302 AND `ID`=1); -- -Unknown-



UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=22290 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=22290 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=160055 WHERE (`MenuId`=23129 AND `OptionIndex`=10);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=159721 WHERE (`MenuId`=23129 AND `OptionIndex`=7);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=159391 WHERE (`MenuId`=23129 AND `OptionIndex`=2);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=23017 AND `OptionIndex`=13);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=23017 AND `OptionIndex`=12);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=23017 AND `OptionIndex`=11);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=23017 AND `OptionIndex`=10);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=23017 AND `OptionIndex`=9);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=23017 AND `OptionIndex`=8);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=23017 AND `OptionIndex`=7);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=23017 AND `OptionIndex`=6);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=23017 AND `OptionIndex`=5);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=23017 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=23017 AND `OptionIndex`=3);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=23017 AND `OptionIndex`=2);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=23017 AND `OptionIndex`=1);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=23017 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=160055 WHERE (`MenuId`=23129 AND `OptionIndex`=10);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=159721 WHERE (`MenuId`=23129 AND `OptionIndex`=7);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=159391 WHERE (`MenuId`=23129 AND `OptionIndex`=2);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=22290 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=22290 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=160055 WHERE (`MenuId`=23129 AND `OptionIndex`=10);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=159721 WHERE (`MenuId`=23129 AND `OptionIndex`=7);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=159391 WHERE (`MenuId`=23129 AND `OptionIndex`=2);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=31478 WHERE (`MenuId`=22445 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=168255 WHERE (`MenuId`=22966 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=160864 WHERE (`MenuId`=23195 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=160864 WHERE (`MenuId`=23195 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=160864 WHERE (`MenuId`=23195 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=160864 WHERE (`MenuId`=23202 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=160864 WHERE (`MenuId`=23200 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=160864 WHERE (`MenuId`=23195 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=160864 WHERE (`MenuId`=23199 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=160864 WHERE (`MenuId`=23195 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=150719 WHERE (`MenuId`=22455 AND `OptionIndex`=0);


DELETE FROM `creature_template` WHERE `entry` IN (148923 /*-Unknown-*/, 146013 /*-Unknown-*/, 150433 /*-Unknown-*/, 148924 /*-Unknown-*/, 149045 /*-Unknown-*/, 147974 /*-Unknown-*/, 147975 /*-Unknown-*/, 250000 /*-Unknown-*/, 4722900 /*Custom - Blood Troll Spawn Controller*/);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(148923, 0, 120, 120, 2900, 128, 1, 1.142860054969787597, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(146013, 0, 120, 120, 68, 2, 1, 1.142860054969787597, 2000, 0, 768, 2048, 0, 0, 0, 1), -- -Unknown-
(150433, 0, 120, 120, 1735, 2, 1, 1.142860054969787597, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(148924, 0, 120, 120, 1735, 128, 1, 1.142860054969787597, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(149045, 0, 120, 120, 35, 129, 1, 1.142860054969787597, 2000, 0, 768, 2048, 0, 0, 0, 1), -- -Unknown-
(147974, 0, 120, 120, 106, 0, 1, 1.142860054969787597, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(147975, 0, 120, 120, 106, 0, 1, 1.142860054969787597, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(250000, 0, 123, 123, 35, 1, 1, 1.142860054969787597, 500, 0, 0, 0, 0, 0, 0, 1), -- -Unknown-
(4722900, 0, 1, 1, 35, 0, 1, 1.142860054969787597, 2000, 0, 33555200, 0, 0, 0, 0, 1); -- Custom - Blood Troll Spawn Controller


UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=83, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=139028; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=34816, `HoverHeight`=2.5 WHERE `entry`=135209; -- -Unknown-
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=137229; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0, `unit_flags`=537166592, `unit_flags2`=33556481 WHERE `entry`=143906; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=83, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=135213; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=83, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=33556480 WHERE `entry`=143948; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1735, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33600, `unit_flags2`=2048 WHERE `entry`=141961; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=7, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags2`=67110912, `unit_flags3`=1 WHERE `entry`=143947; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=7, `npcflag`=16777216, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67143680, `dynamicflags`=128 WHERE `entry`=131752; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1735, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143595; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1735, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142969; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1735, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142157; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1735, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142159; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1735, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142158; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1735, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143388; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=106, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143396; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1735, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142992; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=106, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143614; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=106, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143615; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1735, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142977; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1735, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142975; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1735, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142981; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1735, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142970; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=142765; -- Ma'da Renkala
UPDATE `creature_template` SET `minlevel`=108, `maxlevel`=108, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=33587456, `unit_flags2`=67110912 WHERE `entry`=136327; -- Ultra Cannon Target
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=537166592, `unit_flags2`=33556481, `unit_flags3`=8193, `dynamicflags`=64 WHERE `entry`=142799; -- Torcali Ironhide
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2979, `speed_walk`=0.815999984741210937, `speed_run`=0.914288043975830078, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=136956; -- Rastari Spirit
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=136352; -- Bwonsamdi
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2903, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=131018; -- Warlord Kara-na
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2902, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=136955; -- Zanchuli Betrayer
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2903, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=131040; -- Kao-Tien Render
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `BaseAttackTime`=2000, `unit_flags2`=1073743872 WHERE `entry`=134593; -- Mythrax the Unraveler
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=136326; -- Rastari Defender
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2899, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=33556480 WHERE `entry`=136324; -- King Rastakhan
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2979, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=136384; -- Rastari Spirit
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `speed_walk`=1.20000004768371582, `BaseAttackTime`=2000, `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=136272; -- Caravan Brutosaur
UPDATE `creature_template` SET `gossip_menu_id`=23202, `minlevel`=120, `maxlevel`=120, `faction`=2899, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=136372; -- Toko
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2899, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=136370; -- Old Tella
UPDATE `creature_template` SET `faction`=35, `npcflag`=16777216, `speed_walk`=3.20000004768371582, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1, `VehicleId`=5916, `HoverHeight`=0 WHERE `entry`=136409; -- Sethrak Wall Climb Stalker
UPDATE `creature_template` SET `gossip_menu_id`=23195, `minlevel`=120, `maxlevel`=120, `faction`=2899, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=136371; -- Rakle the Wretched
UPDATE `creature_template` SET `gossip_menu_id`=23199, `minlevel`=120, `maxlevel`=120, `faction`=2900, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=136357; -- Chronicler Bah'kini
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2899, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=136368; -- Vessel Zetoa
UPDATE `creature_template` SET `gossip_menu_id`=23200, `minlevel`=120, `maxlevel`=120, `faction`=2899, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=136355; -- Trader Haw'li
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2899, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=136367; -- Vessel Iluna
UPDATE `creature_template` SET `gossip_menu_id`=23195, `minlevel`=120, `maxlevel`=120, `faction`=2900, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=136358; -- No'ci the Scribe
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2903, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33587200, `unit_flags3`=1 WHERE `entry`=134865; -- Lightning Spire
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2899, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=136369; -- Madam Konawla
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2899, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=33556480 WHERE `entry`=134836; -- Pa'kura Warbow
UPDATE `creature_template` SET `faction`=2899, `npcflag`=1, `speed_walk`=1.399999976158142089, `speed_run`=2.571429967880249023, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=4212736 WHERE `entry`=134475; -- Akunda
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2899, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=35653632 WHERE `entry`=134831; -- Bladeguard Kaja
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2899, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=134620; -- Warguard Rakera
UPDATE `creature_template` SET `gossip_menu_id`=23207, `minlevel`=120, `maxlevel`=120, `faction`=2899, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=35653632 WHERE `entry`=134834; -- Meerah
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2903, `BaseAttackTime`=2000, `unit_flags`=134250560, `unit_flags2`=33556480 WHERE `entry`=134429; -- Diamondback Warbringer
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2903, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=134427; -- Sethrak Skycaller
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=134428; -- Bladesworn Diamondback
UPDATE `creature_template` SET `gossip_menu_id`=23195, `minlevel`=120, `maxlevel`=120, `faction`=2899, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=136360; -- Headhunter Lani
UPDATE `creature_template` SET `gossip_menu_id`=23195, `minlevel`=120, `maxlevel`=120, `faction`=2899, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=136356; -- Bri'tani
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2899, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=136359; -- B'wizati
UPDATE `creature_template` SET `gossip_menu_id`=23195, `minlevel`=120, `maxlevel`=120, `faction`=2899, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=142818; -- Moj'ito
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2900, `npcflag`=16777216, `speed_walk`=1.20000004768371582, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=33088, `unit_flags2`=67584, `unit_flags3`=1, `dynamicflags`=128, `VehicleId`=5862 WHERE `entry`=134756; -- Old K'zlotec
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2900, `speed_walk`=4, `speed_run`=2.142859935760498046, `BaseAttackTime`=2000, `unit_flags`=49152, `unit_flags2`=37748736 WHERE `entry`=134469; -- Krag'wa the Huge
UPDATE `creature_template` SET `speed_walk`=3.20000004768371582, `speed_run`=2, `RangeAttackTime`=0, `unit_flags`=33570816, `unit_flags2`=4196352, `unit_flags3`=1, `HoverHeight`=0 WHERE `entry`=72390; -- General Purpose Bunny ZTO
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2099200 WHERE `entry`=134432; -- Blood Hexxer
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2903, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2099200 WHERE `entry`=134431; -- Blood Troll
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2902, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2099200 WHERE `entry`=134433; -- Blood Crawg
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `speed_walk`=2, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=4196352 WHERE `entry`=134492; -- Gonk
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `BaseAttackTime`=2000, `unit_flags2`=1073743872 WHERE `entry`=134591; -- Mythrax the Unraveler
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2903, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=134627; -- Blood Troll Warmother
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `speed_walk`=2.40000009536743164, `speed_run`=1.714290022850036621, `BaseAttackTime`=2400, `unit_flags`=32832, `unit_flags2`=2099200, `VehicleId`=5859 WHERE `entry`=134507; -- Siege Monstrosity
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2976, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=134461; -- King Rastakhan
UPDATE `creature_template` SET `faction`=126, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=134689; -- Rokhan
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2900, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=134692; -- Princess Talanji
UPDATE `creature_template` SET `faction`=190, `speed_walk`=1.20000004768371582, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=4229120 WHERE `entry`=134478; -- Kimbul
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2900, `npcflag`=16777216, `speed_walk`=1.2, `speed_run`=2.1428599, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=4196352, `dynamicflags`=0, `VehicleId`=5863, `HoverHeight`=0 WHERE `entry`=134493; -- Pa'ku
UPDATE `creature_template` SET `unit_flags3`=0, `VehicleId`=0 WHERE `entry`=135890; -- King Rastakhan
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=121744; -- Blood Troll
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2903, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2099200 WHERE `entry`=128587; -- Risen Gargantuan
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=121810; -- Blood Minion
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `speed_walk`=1.20000004768371582, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=536903680, `unit_flags2`=67584, `VehicleId`=5620 WHERE `entry`=128521; -- Old Rotana
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2900, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=135708; -- Princess Talanji
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2900, `npcflag`=16777216, `BaseAttackTime`=2400, `unit_flags`=262976, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=121846; -- Old Rotana
UPDATE `creature_template` SET `faction`=126, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=121601; -- Rokhan
UPDATE `creature_template` SET `minlevel`=120, `speed_walk`=1, `speed_run`=1.142860054969787597, `RangeAttackTime`=0 WHERE `entry`=121577; -- Reckless Cutter
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2900, `BaseAttackTime`=2000, `unit_flags`=33587264, `unit_flags2`=2048 WHERE `entry`=121703; -- Raptari Warrior
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2900, `npcflag`=16777216, `BaseAttackTime`=2400, `unit_flags`=576, `unit_flags2`=2099200, `unit_flags3`=1, `VehicleId`=5613 WHERE `entry`=128309; -- Old Rotana
UPDATE `creature_template` SET `minlevel`=112, `maxlevel`=114, `RangeAttackTime`=0, `unit_flags`=537167616, `unit_flags2`=33556481 WHERE `entry`=121847; -- Zandalari Battlesaur
UPDATE `creature_template` SET `gossip_menu_id`=22431, `minlevel`=120, `maxlevel`=120, `faction`=2900, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=121599; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2900, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=295680, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=121596; -- Wounded Captive


DELETE FROM `quest_template` WHERE `ID`=50710;
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `ScalingFactionGroup`, `MaxScalingLevel`, `QuestPackageID`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardDisplaySpell1`, `RewardDisplaySpell2`, `RewardDisplaySpell3`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(50710, 2, 1, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 31478); -- -Unknown-


DELETE FROM `creature_template` WHERE `entry` IN (146011 /*Varok Saurfang*/, 4722900 /*Custom - Blood Troll Spawn Controller*/);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `FadeRegionRadius`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `VerifiedBuild`) VALUES
(146011, 0, 0, 'Varok Saurfang', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 0, 0, 1, 0, 7, 2097164, 64, 500, 1, 0, 0, 31478), -- Varok Saurfang
(4722900, 0, 0, 'Custom - Blood Troll Spawn Controller', '', NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 31478); -- Custom - Blood Troll Spawn Controller


DELETE FROM `creature_template_model` WHERE (`CreatureID`=146011 AND `Idx`=0) OR (`CreatureID`=4722900 AND `Idx`=0);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(146011, 0, 90011, 1.10000002384185791, 1, 31478), -- Varok Saurfang
(4722900, 0, 40906, 1, 1, 31478); -- Custom - Blood Troll Spawn Controller


DELETE FROM `gameobject_template` WHERE `entry`=287157;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `RequiredLevel`, `VerifiedBuild`) VALUES
(287157, 0, 6391, 'Wall', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 5703, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- Wall

SET @GROUP_ID=0;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(121566, @GROUP_ID+0, 0, 'Meat for da warmothers!', 12, 0, 100, 0, 0, 0, 131886, 'Blood Troll to Player'),
(121585, @GROUP_ID+0, 0, 'Ya cannot defeat us all. Dazar\'alor gonna fall!', 12, 0, 100, 0, 0, 0, 130935, 'Warmother Shazraka to Player'),
(121585, @GROUP_ID+1, 0, 'My death is not the end of me.', 12, 0, 100, 0, 0, 0, 130944, 'Warmother Shazraka to Player'),
(121596, @GROUP_ID+0, 0, 'Blood troll savages!', 12, 0, 100, 15, 0, 0, 130924, 'Wounded Captive to Player'),
(121596, @GROUP_ID+1, 0, 'They said they were going to use me blood.', 12, 0, 100, 15, 0, 0, 130922, 'Wounded Captive to Player'),
(121596, @GROUP_ID+2, 0, 'Ha! Ya not be gettin\' me this day, ya bunch of savages.', 12, 0, 100, 15, 0, 0, 130921, 'Wounded Captive to Player'),
(131018, @GROUP_ID+0, 0, 'Zul... never said... I would lose...', 12, 0, 100, 0, 0, 103900, 144042, 'Warlord Kara-na'),
(132114, @GROUP_ID+0, 0, 'If Vol\'jin had had his trusty invulnerability totem wit\' him on da Broken Shore, he\'d still be wit\' us today. Don\'t be makin\' da same mistake!', 12, 0, 100, 1, 0, 0, 144720, 'Griftah to Player'),
(134427, @GROUP_ID+0, 0, 'Your lands are next to fall!', 12, 0, 100, 0, 0, 103647, 140584, 'Sethrak Skycaller'), -- BroadcastTextID: 140584 - 150844
(134431, @GROUP_ID+0, 0, 'Nice bones.', 12, 0, 100, 0, 0, 0, 130927, 'Blood Troll'),
(134431, @GROUP_ID+1, 0, 'Ma\'da needs ya blood.', 12, 0, 100, 0, 0, 0, 130928, 'Blood Troll'),
(134431, @GROUP_ID+2, 0, 'Fresh flesh, flowing blood.', 12, 0, 100, 0, 0, 0, 130926, 'Blood Troll'),
(134431, @GROUP_ID+3, 0, 'Gut ya!', 12, 0, 100, 0, 0, 0, 130931, 'Blood Troll'),
(134431, @GROUP_ID+4, 0, 'More blood! More blood!', 12, 0, 100, 0, 0, 0, 130929, 'Blood Troll'),
(134461, @GROUP_ID+0, 0, 'De Blood Gate is overrun. Quickly, we must crush as many of dese invaders as we can before dey reach de city.', 14, 0, 100, 0, 0, 109666, 149260, 'King Rastakhan'),
(134461, @GROUP_ID+1, 0, 'Die, invaders!', 12, 0, 100, 0, 0, 109668, 149262, 'King Rastakhan'),
(134461, @GROUP_ID+2, 0, 'A gift for old Bwonsamdi.', 12, 0, 100, 0, 0, 109669, 149263, 'King Rastakhan'),
(134461, @GROUP_ID+3, 0, 'Dere are so many.', 12, 0, 100, 0, 0, 109667, 149261, 'King Rastakhan'),
(134461, @GROUP_ID+4, 0, 'Too many are getting past us. Make for de bridge to Dazar\'alor. We can force dem into a choke point.', 14, 0, 100, 0, 0, 109670, 149264, 'King Rastakhan'),
(134469, @GROUP_ID+0, 0, 'Go, Little King. I shall swallow any who try to follow you.', 12, 0, 100, 0, 0, 102980, 149066, 'Krag\'wa the Huge'),
(134478, @GROUP_ID+0, 0, 'The way is clear, little ones. Move now. Mythrax is approaching.', 14, 0, 100, 0, 0, 111350, 149278, 'Kimbul'),
(135708, @GROUP_ID+0, 0, 'De way is clear! Press de gates before de next wave breaks through.', 14, 0, 100, 0, 0, 0, 150545, 'Princess Talanji to Player'),
(136955, @GROUP_ID+0, 0, 'The world... still gonna... be ours...', 12, 0, 100, 34, 0, 98716, 146541, 'Zanchuli Betrayer'),
(142765, @GROUP_ID+0, 0, 'Your soul for me master! Your soul for G\'huun!', 12, 0, 100, 34, 0, 98478, 131604, 'Ma\'da Renkala');


DELETE FROM `creature_template_addon` WHERE `entry` IN (148923 /*148923*/, 146013 /*146013*/, 143948 /*143948*/, 141961 /*141961*/, 143947 /*143947 - -Unknown-*/, 150433 /*150433*/, 131752 /*131752*/, 143595 /*143595*/, 142969 /*142969*/, 142157 /*142157*/, 142159 /*142159*/, 142158 /*142158*/, 148924 /*148924*/, 143388 /*143388*/, 143396 /*143396*/, 142992 /*142992*/, 143614 /*143614*/, 143615 /*143615*/, 149045 /*149045*/, 142977 /*142977*/, 142975 /*142975*/, 142981 /*142981*/, 142970 /*142970*/, 147974 /*147974*/, 147975 /*147975*/, 250000 /*250000 - -Unknown-*/, 142765 /*142765 (Ma'da Renkala)*/, 136327 /*136327 (Ultra Cannon Target) - -Unknown-*/, 142799 /*142799 (Torcali Ironhide) - -Unknown-*/, 136956 /*136956 (Rastari Spirit) - -Unknown-*/, 136352 /*136352 (Bwonsamdi) - -Unknown-*/, 131018 /*131018 (Warlord Kara-na) - -Unknown-*/, 136955 /*136955 (Zanchuli Betrayer) - -Unknown-, -Unknown-*/, 131040 /*131040 (Kao-Tien Render) - -Unknown-*/, 134593 /*134593 (Mythrax the Unraveler)*/, 136326 /*136326 (Rastari Defender) - -Unknown-*/, 136324 /*136324 (King Rastakhan) - -Unknown-*/, 136384 /*136384 (Rastari Spirit) - -Unknown-*/, 136272 /*136272 (Caravan Brutosaur) - -Unknown-*/, 136372 /*136372 (Toko)*/, 136370 /*136370 (Old Tella)*/, 136409 /*136409 (Sethrak Wall Climb Stalker)*/, 136371 /*136371 (Rakle the Wretched)*/, 136357 /*136357 (Chronicler Bah'kini)*/, 136368 /*136368 (Vessel Zetoa)*/, 136355 /*136355 (Trader Haw'li)*/, 136367 /*136367 (Vessel Iluna)*/, 136358 /*136358 (No'ci the Scribe)*/, 134865 /*134865 (Lightning Spire)*/, 136369 /*136369 (Madam Konawla)*/, 134836 /*134836 (Pa'kura Warbow)*/, 134475 /*134475 (Akunda)*/, 134831 /*134831 (Bladeguard Kaja)*/, 134620 /*134620 (Warguard Rakera)*/, 134834 /*134834 (Meerah)*/, 134429 /*134429 (Diamondback Warbringer)*/, 134427 /*134427 (Sethrak Skycaller)*/, 134428 /*134428 (Bladesworn Diamondback) - -Unknown-*/, 136360 /*136360 (Headhunter Lani)*/, 136356 /*136356 (Bri'tani)*/, 136359 /*136359 (B'wizati)*/, 142818 /*142818 (Moj'ito)*/, 134756 /*134756 (Old K'zlotec)*/, 134469 /*134469 (Krag'wa the Huge)*/, 72390 /*72390 (General Purpose Bunny ZTO)*/, 134432 /*134432 (Blood Hexxer)*/, 134431 /*134431 (Blood Troll) - -Unknown-*/, 134433 /*134433 (Blood Crawg) - -Unknown-*/, 134492 /*134492 (Gonk)*/, 134591 /*134591 (Mythrax the Unraveler)*/, 134627 /*134627 (Blood Troll Warmother)*/, 134507 /*134507 (Siege Monstrosity)*/, 134461 /*134461 (King Rastakhan)*/, 134689 /*134689 (Rokhan)*/, 134692 /*134692 (Princess Talanji)*/, 134460 /*134460 (Old K'zlotec)*/, 134478 /*134478 (Kimbul)*/, 134493 /*134493 (Pa'ku)*/, 135890 /*135890 (King Rastakhan)*/, 4722900 /*4722900 (Custom - Blood Troll Spawn Controller)*/, 128587 /*128587 (Risen Gargantuan)*/, 128521 /*128521 (Old Rotana)*/, 135708 /*135708 (Princess Talanji)*/, 121846 /*121846 (Old Rotana) - -Unknown-*/, 121601 /*121601 (Rokhan)*/, 121703 /*121703 (Raptari Warrior)*/, 128309 /*128309 (Old Rotana)*/, 121599 /*121599*/, 121596 /*121596 (Wounded Captive) - -Unknown-*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(148923, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 148923
(146013, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 146013
(143948, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143948
(141961, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 141961
(143947, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- 143947 - -Unknown-
(150433, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 150433
(131752, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 131752
(143595, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 143595
(142969, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142969
(142157, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142157
(142159, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142159
(142158, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 142158
(148924, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 148924
(143388, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143388
(143396, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 143396
(142992, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142992
(143614, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 143614
(143615, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 143615
(149045, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 149045
(142977, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142977
(142975, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142975
(142981, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142981
(142970, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142970
(147974, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 147974
(147975, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 147975
(250000, 0, 0, 0, 1, 0, 0, 0, 0, '203570'), -- 250000 - -Unknown-
(142765, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142765 (Ma'da Renkala)
(136327, 0, 0, 50331648, 1, 0, 0, 0, 0, '267897'), -- 136327 (Ultra Cannon Target) - -Unknown-
(142799, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 (Torcali Ironhide) - -Unknown-
(136956, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 136956 (Rastari Spirit) - -Unknown-
(136352, 0, 0, 33554432, 1, 0, 0, 0, 0, '243010'), -- 136352 (Bwonsamdi) - -Unknown-
(131018, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131018 (Warlord Kara-na) - -Unknown-
(136955, 0, 0, 0, 1, 0, 0, 0, 0, '212061 155893'), -- 136955 (Zanchuli Betrayer) - -Unknown-, -Unknown-
(131040, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 (Kao-Tien Render) - -Unknown-
(134593, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134593 (Mythrax the Unraveler)
(136326, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 (Rastari Defender) - -Unknown-
(136324, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 136324 (King Rastakhan) - -Unknown-
(136384, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 (Rastari Spirit) - -Unknown-
(136272, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136272 (Caravan Brutosaur) - -Unknown-
(136372, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136372 (Toko)
(136370, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136370 (Old Tella)
(136409, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- 136409 (Sethrak Wall Climb Stalker)
(136371, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136371 (Rakle the Wretched)
(136357, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136357 (Chronicler Bah'kini)
(136368, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136368 (Vessel Zetoa)
(136355, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136355 (Trader Haw'li)
(136367, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136367 (Vessel Iluna)
(136358, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136358 (No'ci the Scribe)
(134865, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134865 (Lightning Spire)
(136369, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136369 (Madam Konawla)
(134836, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- 134836 (Pa'kura Warbow)
(134475, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134475 (Akunda)
(134831, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134831 (Bladeguard Kaja)
(134620, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134620 (Warguard Rakera)
(134834, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134834 (Meerah)
(134429, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429 (Diamondback Warbringer)
(134427, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427 (Sethrak Skycaller)
(134428, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 (Bladesworn Diamondback) - -Unknown-
(136360, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136360 (Headhunter Lani)
(136356, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136356 (Bri'tani)
(136359, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136359 (B'wizati)
(142818, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142818 (Moj'ito)
(134756, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134756 (Old K'zlotec)
(134469, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134469 (Krag'wa the Huge)
(72390, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 72390 (General Purpose Bunny ZTO)
(134432, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432 (Blood Hexxer)
(134431, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 (Blood Troll) - -Unknown-
(134433, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 (Blood Crawg) - -Unknown-
(134492, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134492 (Gonk)
(134591, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134591 (Mythrax the Unraveler)
(134627, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627 (Blood Troll Warmother)
(134507, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134507 (Siege Monstrosity)
(134461, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134461 (King Rastakhan)
(134689, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134689 (Rokhan)
(134692, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134692 (Princess Talanji)
(134460, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134460 (Old K'zlotec)
(134478, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134478 (Kimbul)
(134493, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- 134493 (Pa'ku)
(135890, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 135890 (King Rastakhan)
(4722900, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 4722900 (Custom - Blood Troll Spawn Controller)
(128587, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 128587 (Risen Gargantuan)
(128521, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 128521 (Old Rotana)
(135708, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 135708 (Princess Talanji)
(121846, 0, 0, 0, 1, 0, 0, 0, 0, '242988'), -- 121846 (Old Rotana) - -Unknown-
(121601, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 121601 (Rokhan)
(121703, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 121703 (Raptari Warrior)
(128309, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 128309 (Old Rotana)
(121599, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 121599
(121596, 0, 0, 0, 0, 0, 0, 0, 0, '242867'); -- 121596 (Wounded Captive) - -Unknown-





SET @CGUID = 441863;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+498 AND @CGUID+2475;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
-- King Rastakhan
-- 37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50954 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 39944 - 49984 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808
(@CGUID+498, 135890, 1642, 0, 0, '0', '37320', 0, 0, 0, 124.6890029907226562, 626.989990234375, 122.3960037231445312, 2.071439981460571289, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 135890 (Area: -1 - Difficulty: 1)
-- 37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50954 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 39944 - 49984 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808

(@CGUID+500, 135708, 1642, 0, 0, '0', '37320', 0, 0, 0, 126.9459991455078125, 631.55401611328125, 122.0709991455078125, 3.260030031204223632, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 135708 (Area: -1 - Difficulty: 1)
(@CGUID+501, 134493, 1906, 9570, 9572, '0', '37320', 0, 0, 0, -527.3809814453125, 904.9630126953125, 447.09698486328125, 3.442169904708862304, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134493 (Area: 9572 - Difficulty: 12)
(@CGUID+502, 134478, 1906, 9570, 9572, '0', '37320', 0, 0, 0, -493.462005615234375, 898.90997314453125, 403.941009521484375, 1.835469961166381835, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134478 (Area: 9572 - Difficulty: 12)
(@CGUID+503, 134460, 1906, 9570, 9572, '12', '0', 0, 0, 0, 83.375, 639.79168701171875, 119.249603271484375, 4.027328014373779296, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134460 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+504, 134692, 1906, 9570, 9572, '12', '0', 0, 0, 0, 83.375, 639.79168701171875, 119.249603271484375, 4.027328014373779296, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134692 (Area: 9572 - Difficulty: 12)
(@CGUID+505, 134689, 1906, 9570, 9572, '12', '0', 0, 0, 0, 83.375, 639.79168701171875, 119.249603271484375, 4.027328014373779296, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134689 (Area: 9572 - Difficulty: 12)
(@CGUID+506, 134461, 1906, 9570, 9572, '12', '0', 0, 0, 0, 83.375, 639.79168701171875, 119.249603271484375, 4.027328014373779296, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134461 (Area: 9572 - Difficulty: 12)
(@CGUID+507, 134507, 1906, 9570, 9572, '12', '0', 0, 0, 0, 98.0107421875, 507.513885498046875, 121.8347015380859375, 1.980386972427368164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134507 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+508, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 98.0107421875, 507.513885498046875, 121.8347015380859375, 1.980386972427368164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+509, 134591, 1906, 9570, 9572, '12', '0', 0, 0, 0, -544.7550048828125, 974.43798828125, 376.738006591796875, 4.195129871368408203, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134591 (Area: 9572 - Difficulty: 12)
(@CGUID+510, 134492, 1906, 9570, 9572, '12', '0', 0, 0, 0, -558.01202392578125, 900.88702392578125, 382.746002197265625, 3.169539928436279296, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134492 (Area: 9572 - Difficulty: 12)
(@CGUID+511, 134507, 1906, 9570, 9572, '12', '0', 0, 0, 0, 218.4980926513671875, 543.27886962890625, 113.8660964965820312, 2.332859992980957031, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134507 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+512, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 218.4980926513671875, 543.27886962890625, 113.8660964965820312, 2.332859992980957031, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+513, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+514, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -83.1132125854492187, 599.82830810546875, 136.528045654296875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+515, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.7308731079101562, 596.72845458984375, 137.4105224609375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+516, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -87.4206085205078125, 598.391845703125, 138.6249542236328125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+517, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 138.69140625, 542.8668212890625, 115.4023971557617187, 3.139585018157958984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+518, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 143.66339111328125, 543.86944580078125, 115.3705215454101562, 3.139585018157958984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+519, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 138.184417724609375, 537.876953125, 115.4717636108398437, 3.139585018157958984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+520, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 143.25689697265625, 540.81805419921875, 115.3720932006835937, 3.139585018157958984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+521, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 141.187103271484375, 538.5150146484375, 115.4203567504882812, 3.139585018157958984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+522, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 142.37451171875, 545.9320068359375, 115.3705215454101562, 3.139585018157958984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+523, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 206.278564453125, 548.2540283203125, 114.2418594360351562, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+524, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 207.49920654296875, 543.9227294921875, 114.4134979248046875, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+525, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 211.82147216796875, 542.6705322265625, 114.2858047485351562, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+526, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 210.6733551025390625, 547.112548828125, 113.9323043823242187, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+527, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 228.780303955078125, 554.18310546875, 112.059600830078125, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+528, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 233.752288818359375, 555.18572998046875, 111.5193328857421875, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+529, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 231.2760009765625, 549.831298828125, 112.5996170043945312, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+530, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 228.2733154296875, 549.1932373046875, 112.757659912109375, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+531, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 232.463409423828125, 557.248291015625, 111.0756988525390625, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+532, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 233.345794677734375, 552.13433837890625, 112.1515579223632812, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+533, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -149.565994262695312, 483.42010498046875, 162.622894287109375, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+534, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -145.882888793945312, 486.48529052734375, 160.671417236328125, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+535, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -150.072982788085937, 478.43023681640625, 163.1014556884765625, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+536, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -145.000503540039062, 481.371337890625, 161.715240478515625, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+537, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -147.070297241210937, 479.06829833984375, 162.6079254150390625, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+538, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -144.594009399414062, 484.4227294921875, 160.78375244140625, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+539, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 222.1811981201171875, 546.34405517578125, 113.4324951171875, 2.332859992980957031, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+540, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 218.4980926513671875, 543.27886962890625, 113.8660964965820312, 2.332859992980957031, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+541, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 223.4700775146484375, 544.281494140625, 113.6402206420898437, 2.332859992980957031, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+542, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 217.9911041259765625, 538.28900146484375, 114.5283279418945312, 2.332859992980957031, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+543, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 223.0635833740234375, 541.2301025390625, 114.0672378540039062, 2.332859992980957031, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+544, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 220.9937896728515625, 538.92706298828125, 114.3914413452148437, 2.332859992980957031, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+545, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 126.011932373046875, 466.89013671875, 127.1700439453125, 2.521116018295288085, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+546, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 122.1471023559570312, 464.585113525390625, 127.454803466796875, 2.521116018295288085, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+547, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 126.0526046752929687, 462.349700927734375, 127.82879638671875, 2.521116018295288085, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+548, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 122.0620193481445312, 460.085906982421875, 128.1900482177734375, 2.521116018295288085, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+549, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 228.780303955078125, 554.18310546875, 112.059600830078125, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+550, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 228.2733154296875, 549.1932373046875, 112.757659912109375, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+551, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 232.463409423828125, 557.248291015625, 111.0756988525390625, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+552, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 231.2760009765625, 549.831298828125, 112.5996170043945312, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+553, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 233.752288818359375, 555.18572998046875, 111.5193328857421875, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+554, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 233.345794677734375, 552.13433837890625, 112.1515579223632812, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+555, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 153.1529998779296875, 546.47027587890625, 115.40679931640625, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+556, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 158.1249847412109375, 547.472900390625, 115.3705215454101562, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+557, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 156.8361053466796875, 549.53546142578125, 115.3705215454101562, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+558, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 155.6486968994140625, 542.11846923828125, 115.3705215454101562, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+559, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 157.7184906005859375, 544.4215087890625, 115.3705215454101562, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+560, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 152.6460113525390625, 541.48040771484375, 115.3705215454101562, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+561, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.8177947998046875, 541.24932861328125, 115.4467010498046875, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+562, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.7897796630859375, 542.251953125, 115.2727432250976562, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+563, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 189.3134918212890625, 536.89752197265625, 115.3546524047851562, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+564, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.3108062744140625, 536.25946044921875, 115.3337478637695312, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+565, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 190.5009002685546875, 544.31451416015625, 115.2393722534179687, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+566, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.3832855224609375, 539.2005615234375, 115.3267745971679687, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+567, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 153.1529998779296875, 546.47027587890625, 115.40679931640625, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+568, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 158.1249847412109375, 547.472900390625, 115.3705215454101562, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+569, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 156.8361053466796875, 549.53546142578125, 115.3705215454101562, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+570, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 157.7184906005859375, 544.4215087890625, 115.3705215454101562, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+571, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 155.6486968994140625, 542.11846923828125, 115.3705215454101562, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+572, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 152.6460113525390625, 541.48040771484375, 115.3705215454101562, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+573, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 98.0107421875, 507.513885498046875, 121.8347015380859375, 1.980386972427368164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+574, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 101.69384765625, 510.579071044921875, 120.716278076171875, 1.980386972427368164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+575, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 100.506439208984375, 503.162078857421875, 122.0089874267578125, 1.980386972427368164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+576, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 102.98272705078125, 508.516510009765625, 120.8824462890625, 1.980386972427368164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+577, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 102.57623291015625, 505.465118408203125, 121.5578155517578125, 1.980386972427368164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+578, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 97.503753662109375, 502.524017333984375, 122.04052734375, 1.980386972427368164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+579, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.34918212890625, 499.38360595703125, 186.5232696533203125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+580, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+581, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.625274658203125, 492.23052978515625, 186.132904052734375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+582, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.871307373046875, 494.86822509765625, 186.6670379638671875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+583, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+584, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.34918212890625, 499.38360595703125, 186.5232696533203125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+585, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.625274658203125, 492.23052978515625, 186.132904052734375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+586, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.871307373046875, 494.86822509765625, 186.6670379638671875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+587, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 190.5009002685546875, 544.31451416015625, 115.2393722534179687, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+588, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.8177947998046875, 541.24932861328125, 115.4467010498046875, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+589, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.3832855224609375, 539.2005615234375, 115.3267745971679687, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+590, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.7897796630859375, 542.251953125, 115.2727432250976562, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+591, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.3108062744140625, 536.25946044921875, 115.3337478637695312, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+592, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 189.3134918212890625, 536.89752197265625, 115.3546524047851562, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+593, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -31.178436279296875, 481.849334716796875, 140.5309295654296875, 3.455313920974731445, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+594, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -31.584930419921875, 478.797943115234375, 140.394805908203125, 3.455313920974731445, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+595, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -32.467315673828125, 483.911895751953125, 141.2816162109375, 3.455313920974731445, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+596, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -36.150421142578125, 480.846710205078125, 142.7621002197265625, 3.455313920974731445, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+597, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -36.65740966796875, 475.856842041015625, 142.019134521484375, 3.455313920974731445, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+598, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -33.65472412109375, 476.494903564453125, 140.9816131591796875, 3.455313920974731445, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+599, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3546524047851562, 598.489501953125, 136.7055206298828125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+600, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+601, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.0657730102539062, 596.42694091796875, 137.4203338623046875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+602, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.4722671508789062, 593.37554931640625, 138.829681396484375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+603, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -81.5420608520507812, 591.072509765625, 139.9442901611328125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+604, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.5447463989257812, 590.4344482421875, 140.4889984130859375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+605, 134507, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134507 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+606, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+607, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 138.69140625, 542.8668212890625, 115.4023971557617187, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12)
(@CGUID+608, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 140.5039215087890625, 546.98565673828125, 115.3705215454101562, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+609, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 143.1695404052734375, 543.30987548828125, 115.3705215454101562, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+610, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 141.2306671142578125, 539.15167236328125, 115.4092788696289062, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+611, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.34918212890625, 499.38360595703125, 186.5232696533203125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+612, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+613, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.625274658203125, 492.23052978515625, 186.132904052734375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+614, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.871307373046875, 494.86822509765625, 186.6670379638671875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+615, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.8177947998046875, 541.24932861328125, 115.4467010498046875, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+616, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.3832855224609375, 539.2005615234375, 115.3267745971679687, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+617, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 190.5009002685546875, 544.31451416015625, 115.2393722534179687, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+618, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.7897796630859375, 542.251953125, 115.2727432250976562, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+619, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.3108062744140625, 536.25946044921875, 115.3337478637695312, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+620, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 189.3134918212890625, 536.89752197265625, 115.3546524047851562, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+621, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -62.9548606872558593, 469.7257080078125, 146.311004638671875, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+622, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -57.9828758239746093, 470.72833251953125, 145.849365234375, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+623, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -59.2717552185058593, 472.7908935546875, 146.668670654296875, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+624, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -63.4618492126464843, 464.73583984375, 145.6539306640625, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+625, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -58.3893699645996093, 467.67694091796875, 144.8868255615234375, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+626, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -60.4591636657714843, 465.3739013671875, 144.87261962890625, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+627, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -167.59429931640625, 485.840606689453125, 167.2030029296875, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+628, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.91119384765625, 488.905792236328125, 166.43743896484375, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+629, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -162.622314453125, 486.843231201171875, 166.4144439697265625, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+630, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.02880859375, 483.791839599609375, 166.715087890625, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+631, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -165.098602294921875, 481.488800048828125, 167.20892333984375, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+632, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -168.101287841796875, 480.850738525390625, 167.7141571044921875, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+633, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.8177947998046875, 541.24932861328125, 115.4467010498046875, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+634, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.7897796630859375, 542.251953125, 115.2727432250976562, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+635, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 190.5009002685546875, 544.31451416015625, 115.2393722534179687, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+636, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.3832855224609375, 539.2005615234375, 115.3267745971679687, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+637, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 189.3134918212890625, 536.89752197265625, 115.3546524047851562, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+638, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.3108062744140625, 536.25946044921875, 115.3337478637695312, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+639, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 228.780303955078125, 554.18310546875, 112.059600830078125, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+640, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 232.463409423828125, 557.248291015625, 111.0756988525390625, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+641, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 233.345794677734375, 552.13433837890625, 112.1515579223632812, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+642, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 231.2760009765625, 549.831298828125, 112.5996170043945312, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+643, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 233.752288818359375, 555.18572998046875, 111.5193328857421875, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+644, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 228.2733154296875, 549.1932373046875, 112.757659912109375, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+645, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+646, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.00201416015625, 497.719635009765625, 186.820526123046875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+647, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.40850830078125, 494.668243408203125, 186.7431488037109375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+648, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.2908935546875, 499.782196044921875, 186.52667236328125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+649, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -291.478302001953125, 492.365203857421875, 186.371307373046875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+650, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -294.480987548828125, 491.727142333984375, 186.05633544921875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+651, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -62.9548606872558593, 469.7257080078125, 146.311004638671875, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+652, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -60.4591636657714843, 465.3739013671875, 144.87261962890625, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+653, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -57.9828758239746093, 470.72833251953125, 145.849365234375, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+654, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -58.3893699645996093, 467.67694091796875, 144.8868255615234375, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+655, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -63.4618492126464843, 464.73583984375, 145.6539306640625, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+656, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -59.2717552185058593, 472.7908935546875, 146.668670654296875, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+657, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 168.9987030029296875, 545.628173828125, 115.422698974609375, 3.063456058502197265, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12)
(@CGUID+658, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 173.49755859375, 545.72930908203125, 115.3709030151367187, 3.063456058502197265, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+659, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 171.119232177734375, 549.59722900390625, 115.3705215454101562, 3.063456058502197265, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+660, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 171.248046875, 541.73065185546875, 115.3761520385742187, 3.063456058502197265, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+661, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -236.714096069335937, 501.63848876953125, 179.3397979736328125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+662, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -232.148605346679687, 499.5897216796875, 178.338104248046875, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+663, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -233.030990600585937, 504.70367431640625, 178.2891082763671875, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+664, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -231.742111206054687, 502.64111328125, 178.03338623046875, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+665, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -237.221084594726562, 496.64862060546875, 180.2686767578125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+666, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -234.218399047851562, 497.28668212890625, 179.4303741455078125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+667, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.0657730102539062, 596.42694091796875, 137.4203338623046875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+668, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3546524047851562, 598.489501953125, 136.7055206298828125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+669, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+670, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.4722671508789062, 593.37554931640625, 138.829681396484375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+671, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -81.5420608520507812, 591.072509765625, 139.9442901611328125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+672, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.5447463989257812, 590.4344482421875, 140.4889984130859375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+673, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.432296752929687, 493.5260009765625, 181.5868072509765625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+674, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -241.749191284179687, 496.5911865234375, 180.978851318359375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+675, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.460311889648437, 494.52862548828125, 180.9354095458984375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+676, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -242.936599731445312, 489.1741943359375, 180.80889892578125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+677, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.866806030273437, 491.47723388671875, 181.0423431396484375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+678, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.939285278320312, 488.5361328125, 180.896148681640625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+679, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 125.8302078247070312, 467.650299072265625, 127.0199432373046875, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+680, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 122.1471023559570312, 464.585113525390625, 127.454803466796875, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+681, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 127.1190872192382812, 465.587738037109375, 127.46636962890625, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+682, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 126.7125930786132812, 462.536346435546875, 127.8514404296875, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+683, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 124.6427993774414062, 460.233306884765625, 127.97003173828125, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+684, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 121.6401138305664062, 459.595245361328125, 128.3243255615234375, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+685, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 172.6818084716796875, 548.693359375, 115.3689956665039062, 3.063456058502197265, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+686, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 168.9987030029296875, 545.628173828125, 115.422698974609375, 3.063456058502197265, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+687, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 173.5641937255859375, 543.57940673828125, 115.3804550170898437, 3.063456058502197265, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+688, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 171.4944000244140625, 541.2763671875, 115.3822097778320312, 3.063456058502197265, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+689, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 173.9706878662109375, 546.63079833984375, 115.3705215454101562, 3.063456058502197265, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+690, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 168.4917144775390625, 540.6383056640625, 115.3712539672851562, 3.063456058502197265, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+691, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -241.749191284179687, 496.5911865234375, 180.978851318359375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+692, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.432296752929687, 493.5260009765625, 181.5868072509765625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+693, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.460311889648437, 494.52862548828125, 180.9354095458984375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+694, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.939285278320312, 488.5361328125, 180.896148681640625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+695, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.866806030273437, 491.47723388671875, 181.0423431396484375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+696, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -242.936599731445312, 489.1741943359375, 180.80889892578125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+697, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -62.9548606872558593, 469.7257080078125, 146.311004638671875, 3.156893014907836914, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+698, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -58.3893699645996093, 467.67694091796875, 144.8868255615234375, 3.156893014907836914, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+699, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -59.2717552185058593, 472.7908935546875, 146.668670654296875, 3.156893014907836914, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+700, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -57.9828758239746093, 470.72833251953125, 145.849365234375, 3.156893014907836914, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+701, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -63.4618492126464843, 464.73583984375, 145.6539306640625, 3.156893014907836914, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+702, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -60.4591636657714843, 465.3739013671875, 144.87261962890625, 3.156893014907836914, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+703, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -81.5420608520507812, 591.072509765625, 139.9442901611328125, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+704, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.0657730102539062, 596.42694091796875, 137.4203338623046875, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+705, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+706, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.4722671508789062, 593.37554931640625, 138.829681396484375, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+707, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.5447463989257812, 590.4344482421875, 140.4889984130859375, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+708, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3546524047851562, 598.489501953125, 136.7055206298828125, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+709, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -294.480987548828125, 491.727142333984375, 186.05633544921875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+710, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+711, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -291.478302001953125, 492.365203857421875, 186.371307373046875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+712, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.00201416015625, 497.719635009765625, 186.820526123046875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+713, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.2908935546875, 499.782196044921875, 186.52667236328125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+714, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.40850830078125, 494.668243408203125, 186.7431488037109375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+715, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 138.69140625, 542.8668212890625, 115.4023971557617187, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+716, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 142.37451171875, 545.9320068359375, 115.3705215454101562, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+717, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 138.184417724609375, 537.876953125, 115.4717636108398437, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+718, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 143.25689697265625, 540.81805419921875, 115.3720932006835937, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+719, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 141.187103271484375, 538.5150146484375, 115.4203567504882812, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+720, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 143.66339111328125, 543.86944580078125, 115.3705215454101562, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+721, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 153.1529998779296875, 546.47027587890625, 115.40679931640625, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+722, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 154.923065185546875, 550.6075439453125, 115.4679031372070312, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+723, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 155.7303314208984375, 542.78143310546875, 115.3705215454101562, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+724, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 157.6263427734375, 546.9593505859375, 115.3705215454101562, 3.149869918823242187, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+725, 134507, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.2950973510742187, 617.36749267578125, 130.373199462890625, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134507 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+726, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.2950973510742187, 617.36749267578125, 130.373199462890625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+727, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.8177947998046875, 541.24932861328125, 115.4467010498046875, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+728, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 189.3134918212890625, 536.89752197265625, 115.3546524047851562, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+729, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 190.5009002685546875, 544.31451416015625, 115.2393722534179687, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+730, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.3832855224609375, 539.2005615234375, 115.3267745971679687, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+731, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.7897796630859375, 542.251953125, 115.2727432250976562, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+732, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.3108062744140625, 536.25946044921875, 115.3337478637695312, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+733, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 210.6733551025390625, 547.112548828125, 113.9323043823242187, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+734, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 206.278564453125, 548.2540283203125, 114.2418594360351562, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+735, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 207.49920654296875, 543.9227294921875, 114.4134979248046875, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12)
(@CGUID+736, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 211.82147216796875, 542.6705322265625, 114.2858047485351562, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+737, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 116.4910964965820312, 545.5264892578125, 115.3915023803710937, 2.997946023941040039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+738, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 120.1742019653320312, 548.5916748046875, 115.3712081909179687, 2.997946023941040039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+739, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 115.9841079711914062, 540.53662109375, 115.3876266479492187, 2.997946023941040039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+740, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 118.9867935180664062, 541.1746826171875, 115.3884658813476562, 2.997946023941040039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+741, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 121.4630813598632812, 546.52911376953125, 115.3731765747070312, 2.997946023941040039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+742, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 121.0565872192382812, 543.47772216796875, 115.3803634643554687, 2.997946023941040039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+743, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 212.47119140625, 544.92535400390625, 114.0063705444335937, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+744, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 207.49920654296875, 543.9227294921875, 114.4134979248046875, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+745, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 211.18231201171875, 546.9879150390625, 113.9095840454101562, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+746, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 206.992218017578125, 538.932861328125, 114.9173202514648437, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+747, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 212.064697265625, 541.87396240234375, 114.3680191040039062, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+748, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 209.994903564453125, 539.5709228515625, 114.7298965454101562, 3.82883310317993164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+749, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 232.463409423828125, 557.248291015625, 111.0756988525390625, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- 134432 (Area: 9572 - Difficulty: 12)

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+750, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 233.752288818359375, 555.18572998046875, 111.5193328857421875, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+751, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 228.780303955078125, 554.18310546875, 112.059600830078125, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+752, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 233.345794677734375, 552.13433837890625, 112.1515579223632812, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+753, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 228.2733154296875, 549.1932373046875, 112.757659912109375, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+754, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 231.2760009765625, 549.831298828125, 112.5996170043945312, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+755, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 138.69140625, 542.8668212890625, 115.4023971557617187, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+756, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 143.66339111328125, 543.86944580078125, 115.3705215454101562, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+757, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 142.37451171875, 545.9320068359375, 115.3705215454101562, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+758, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 141.187103271484375, 538.5150146484375, 115.4203567504882812, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+759, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 143.25689697265625, 540.81805419921875, 115.3720932006835937, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+760, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 138.184417724609375, 537.876953125, 115.4717636108398437, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+761, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.2950973510742187, 617.36749267578125, 130.373199462890625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+762, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -67.7296066284179687, 615.3187255859375, 129.8285369873046875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+763, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -67.3231124877929687, 618.3701171875, 128.990264892578125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+764, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -68.6119918823242187, 620.43267822265625, 128.6546630859375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+765, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -69.7994003295898437, 613.01568603515625, 130.826629638671875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+766, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.8020858764648437, 612.37762451171875, 131.793914794921875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+767, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.91119384765625, 488.905792236328125, 166.43743896484375, 2.199059009552001953, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+768, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -167.59429931640625, 485.840606689453125, 167.2030029296875, 2.199059009552001953, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+769, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -162.622314453125, 486.843231201171875, 166.4144439697265625, 2.199059009552001953, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+770, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -165.098602294921875, 481.488800048828125, 167.20892333984375, 2.199059009552001953, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+771, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -168.101287841796875, 480.850738525390625, 167.7141571044921875, 2.199059009552001953, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+772, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.02880859375, 483.791839599609375, 166.715087890625, 2.199059009552001953, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+773, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 228.780303955078125, 554.18310546875, 112.059600830078125, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12)
(@CGUID+774, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 227.559661865234375, 558.514404296875, 110.9819107055664062, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+775, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 231.9544525146484375, 557.3729248046875, 111.065765380859375, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+776, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 233.102569580078125, 552.930908203125, 111.994384765625, 3.82883310317993164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+777, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.677947998046875, 620.33502197265625, 129.8810577392578125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+778, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.2950973510742187, 617.36749267578125, 130.373199462890625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+779, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -71.3705520629882812, 621.771484375, 128.58428955078125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+780, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -67.9882125854492187, 618.671630859375, 129.012359619140625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+781, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -241.3094482421875, 491.722625732421875, 181.131256103515625, 1.571009993553161621, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+782, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.432296752929687, 493.5260009765625, 181.5868072509765625, 1.571009993553161621, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12)
(@CGUID+783, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -249.141769409179687, 490.978485107421875, 182.192657470703125, 1.571009993553161621, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+784, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -244.979324340820312, 489.048858642578125, 180.9530029296875, 1.571009993553161621, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+785, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 122.1471023559570312, 464.585113525390625, 127.454803466796875, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+786, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 125.8302078247070312, 467.650299072265625, 127.0199432373046875, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+787, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 124.6427993774414062, 460.233306884765625, 127.97003173828125, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+788, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 127.1190872192382812, 465.587738037109375, 127.46636962890625, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+789, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 121.6401138305664062, 459.595245361328125, 128.3243255615234375, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+790, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 126.7125930786132812, 462.536346435546875, 127.8514404296875, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+791, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.0657730102539062, 596.42694091796875, 137.4203338623046875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+792, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+793, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3546524047851562, 598.489501953125, 136.7055206298828125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+794, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.4722671508789062, 593.37554931640625, 138.829681396484375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+795, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -81.5420608520507812, 591.072509765625, 139.9442901611328125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+796, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.5447463989257812, 590.4344482421875, 140.4889984130859375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+797, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -67.3231124877929687, 618.3701171875, 128.990264892578125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+798, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.2950973510742187, 617.36749267578125, 130.373199462890625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+799, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -68.6119918823242187, 620.43267822265625, 128.6546630859375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+800, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -67.7296066284179687, 615.3187255859375, 129.8285369873046875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+801, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.8020858764648437, 612.37762451171875, 131.793914794921875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+802, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -69.7994003295898437, 613.01568603515625, 130.826629638671875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+803, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 98.0107421875, 507.513885498046875, 121.8347015380859375, 1.980386972427368164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+804, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 102.57623291015625, 505.465118408203125, 121.5578155517578125, 1.980386972427368164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+805, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 101.69384765625, 510.579071044921875, 120.716278076171875, 1.980386972427368164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+806, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 97.503753662109375, 502.524017333984375, 122.04052734375, 1.980386972427368164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+807, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 102.98272705078125, 508.516510009765625, 120.8824462890625, 1.980386972427368164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+808, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 100.506439208984375, 503.162078857421875, 122.0089874267578125, 1.980386972427368164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+809, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 120.1742019653320312, 548.5916748046875, 115.3712081909179687, 2.997946023941040039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+810, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 121.4630813598632812, 546.52911376953125, 115.3731765747070312, 2.997946023941040039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+811, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 116.4910964965820312, 545.5264892578125, 115.3915023803710937, 2.997946023941040039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+812, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 115.9841079711914062, 540.53662109375, 115.3876266479492187, 2.997946023941040039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+813, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 118.9867935180664062, 541.1746826171875, 115.3884658813476562, 2.997946023941040039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+814, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 121.0565872192382812, 543.47772216796875, 115.3803634643554687, 2.997946023941040039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+815, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -236.261123657226562, 497.161346435546875, 179.92779541015625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+816, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -232.59124755859375, 499.835113525390625, 178.398834228515625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+817, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -236.714096069335937, 501.63848876953125, 179.3397979736328125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+818, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.423568725585937, 499.090972900390625, 180.4556427001953125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+819, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.871307373046875, 494.86822509765625, 186.6670379638671875, 2.61759805679321289, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+820, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.34918212890625, 499.38360595703125, 186.5232696533203125, 2.61759805679321289, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+821, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12)
(@CGUID+822, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.625274658203125, 492.23052978515625, 186.132904052734375, 2.61759805679321289, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+823, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+824, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -83.1132125854492187, 599.82830810546875, 136.528045654296875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+825, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.7308731079101562, 596.72845458984375, 137.4105224609375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+826, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -87.4206085205078125, 598.391845703125, 138.6249542236328125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+827, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 140.5039215087890625, 546.98565673828125, 115.3705215454101562, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+828, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 138.69140625, 542.8668212890625, 115.4023971557617187, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12)
(@CGUID+829, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 141.2306671142578125, 539.15167236328125, 115.4092788696289062, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+830, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 143.1695404052734375, 543.30987548828125, 115.3705215454101562, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+831, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -241.749191284179687, 496.5911865234375, 180.978851318359375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+832, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.432296752929687, 493.5260009765625, 181.5868072509765625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+833, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.866806030273437, 491.47723388671875, 181.0423431396484375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+834, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.939285278320312, 488.5361328125, 180.896148681640625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+835, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.460311889648437, 494.52862548828125, 180.9354095458984375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+836, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -242.936599731445312, 489.1741943359375, 180.80889892578125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+837, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+838, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.34918212890625, 499.38360595703125, 186.5232696533203125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+839, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.625274658203125, 492.23052978515625, 186.132904052734375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+840, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.871307373046875, 494.86822509765625, 186.6670379638671875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+841, 134507, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134507 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+842, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+843, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.432296752929687, 493.5260009765625, 181.5868072509765625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+844, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.866806030273437, 491.47723388671875, 181.0423431396484375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+845, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.460311889648437, 494.52862548828125, 180.9354095458984375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+846, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -241.749191284179687, 496.5911865234375, 180.978851318359375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+847, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -242.936599731445312, 489.1741943359375, 180.80889892578125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+848, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.939285278320312, 488.5361328125, 180.896148681640625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+849, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -149.565994262695312, 483.42010498046875, 162.622894287109375, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+850, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -144.594009399414062, 484.4227294921875, 160.78375244140625, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+851, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -145.882888793945312, 486.48529052734375, 160.671417236328125, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+852, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -147.070297241210937, 479.06829833984375, 162.6079254150390625, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+853, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -150.072982788085937, 478.43023681640625, 163.1014556884765625, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+854, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -145.000503540039062, 481.371337890625, 161.715240478515625, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+855, 134507, 1906, 9570, 9572, '12', '0', 0, 0, 0, 168.9987030029296875, 545.628173828125, 115.422698974609375, 3.063456058502197265, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134507 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+856, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 168.9987030029296875, 545.628173828125, 115.422698974609375, 3.063456058502197265, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12)
(@CGUID+857, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 138.69140625, 542.8668212890625, 115.4023971557617187, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12)
(@CGUID+858, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 140.5039215087890625, 546.98565673828125, 115.3705215454101562, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+859, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 141.2306671142578125, 539.15167236328125, 115.4092788696289062, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+860, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 143.1695404052734375, 543.30987548828125, 115.3705215454101562, 3.139585018157958984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+861, 134507, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.2950973510742187, 617.36749267578125, 130.373199462890625, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134507 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+862, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.2950973510742187, 617.36749267578125, 130.373199462890625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+863, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.2908935546875, 499.782196044921875, 186.52667236328125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+864, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.00201416015625, 497.719635009765625, 186.820526123046875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+865, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+866, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -291.478302001953125, 492.365203857421875, 186.371307373046875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+867, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -294.480987548828125, 491.727142333984375, 186.05633544921875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+868, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.40850830078125, 494.668243408203125, 186.7431488037109375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+869, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.7897796630859375, 542.251953125, 115.2727432250976562, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+870, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.8177947998046875, 541.24932861328125, 115.4467010498046875, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+871, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 190.5009002685546875, 544.31451416015625, 115.2393722534179687, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+872, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.3832855224609375, 539.2005615234375, 115.3267745971679687, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+873, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.3108062744140625, 536.25946044921875, 115.3337478637695312, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+874, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 189.3134918212890625, 536.89752197265625, 115.3546524047851562, 2.785486936569213867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+875, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.432296752929687, 493.5260009765625, 181.5868072509765625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+876, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -241.3094482421875, 491.722625732421875, 181.131256103515625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+877, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -244.979324340820312, 489.048858642578125, 180.9530029296875, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+878, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -249.141769409179687, 490.978485107421875, 182.192657470703125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+879, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 168.9987030029296875, 545.628173828125, 115.422698974609375, 3.063456058502197265, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12)
(@CGUID+880, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 173.49755859375, 545.72930908203125, 115.3709030151367187, 3.063456058502197265, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+881, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 171.119232177734375, 549.59722900390625, 115.3705215454101562, 3.063456058502197265, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+882, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 171.248046875, 541.73065185546875, 115.3761520385742187, 3.063456058502197265, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950)
(@CGUID+883, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.432296752929687, 493.5260009765625, 181.5868072509765625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+884, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -241.749191284179687, 496.5911865234375, 180.978851318359375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+885, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.460311889648437, 494.52862548828125, 180.9354095458984375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+886, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.866806030273437, 491.47723388671875, 181.0423431396484375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+887, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -242.936599731445312, 489.1741943359375, 180.80889892578125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+888, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.939285278320312, 488.5361328125, 180.896148681640625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+889, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -167.59429931640625, 485.840606689453125, 167.2030029296875, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+890, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -162.622314453125, 486.843231201171875, 166.4144439697265625, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+891, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.91119384765625, 488.905792236328125, 166.43743896484375, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+892, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.02880859375, 483.791839599609375, 166.715087890625, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+893, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -165.098602294921875, 481.488800048828125, 167.20892333984375, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+894, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -168.101287841796875, 480.850738525390625, 167.7141571044921875, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+895, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.91119384765625, 488.905792236328125, 166.43743896484375, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+896, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -165.098602294921875, 481.488800048828125, 167.20892333984375, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+897, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -162.622314453125, 486.843231201171875, 166.4144439697265625, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+898, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -167.59429931640625, 485.840606689453125, 167.2030029296875, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+899, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.02880859375, 483.791839599609375, 166.715087890625, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+900, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -168.101287841796875, 480.850738525390625, 167.7141571044921875, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+901, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+902, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.2908935546875, 499.782196044921875, 186.52667236328125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+903, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -291.478302001953125, 492.365203857421875, 186.371307373046875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+904, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.00201416015625, 497.719635009765625, 186.820526123046875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+905, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.40850830078125, 494.668243408203125, 186.7431488037109375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+906, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -294.480987548828125, 491.727142333984375, 186.05633544921875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+907, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 102.4402008056640625, 487.46661376953125, 123.8702011108398437, 1.907379031181335449, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+908, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 107.0056915283203125, 485.4178466796875, 123.382537841796875, 1.907379031181335449, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+909, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 107.4121856689453125, 488.46923828125, 123.134002685546875, 1.907379031181335449, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+910, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 104.9358978271484375, 483.11480712890625, 124.1280364990234375, 1.907379031181335449, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+911, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 106.1233062744140625, 490.53179931640625, 123.2879791259765625, 1.907379031181335449, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+912, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 101.9332122802734375, 482.47674560546875, 124.99371337890625, 1.907379031181335449, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+913, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+914, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.34918212890625, 499.38360595703125, 186.5232696533203125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+915, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.871307373046875, 494.86822509765625, 186.6670379638671875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+916, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.625274658203125, 492.23052978515625, 186.132904052734375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+917, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.00201416015625, 497.719635009765625, 186.820526123046875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+918, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.2908935546875, 499.782196044921875, 186.52667236328125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+919, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+920, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.40850830078125, 494.668243408203125, 186.7431488037109375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+921, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -291.478302001953125, 492.365203857421875, 186.371307373046875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+922, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -294.480987548828125, 491.727142333984375, 186.05633544921875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+923, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 122.1471023559570312, 464.585113525390625, 127.454803466796875, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+924, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 127.1190872192382812, 465.587738037109375, 127.46636962890625, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+925, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 125.8302078247070312, 467.650299072265625, 127.0199432373046875, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+926, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 126.7125930786132812, 462.536346435546875, 127.8514404296875, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+927, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 124.6427993774414062, 460.233306884765625, 127.97003173828125, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+928, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 121.6401138305664062, 459.595245361328125, 128.3243255615234375, 2.521116018295288085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+929, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.871307373046875, 494.86822509765625, 186.6670379638671875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+930, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.34918212890625, 499.38360595703125, 186.5232696533203125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+931, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+932, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.625274658203125, 492.23052978515625, 186.132904052734375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+933, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 190.5009002685546875, 544.31451416015625, 115.2393722534179687, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+934, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.7897796630859375, 542.251953125, 115.2727432250976562, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+935, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.8177947998046875, 541.24932861328125, 115.4467010498046875, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+936, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.3832855224609375, 539.2005615234375, 115.3267745971679687, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+937, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.3108062744140625, 536.25946044921875, 115.3337478637695312, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+938, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 189.3134918212890625, 536.89752197265625, 115.3546524047851562, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+939, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.2950973510742187, 617.36749267578125, 130.373199462890625, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+940, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -69.7994003295898437, 613.01568603515625, 130.826629638671875, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+941, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -67.3231124877929687, 618.3701171875, 128.990264892578125, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+942, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -68.6119918823242187, 620.43267822265625, 128.6546630859375, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+943, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -67.7296066284179687, 615.3187255859375, 129.8285369873046875, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+944, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.8020858764648437, 612.37762451171875, 131.793914794921875, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+945, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 98.0107421875, 507.513885498046875, 121.8347015380859375, 1.980386972427368164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+946, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 100.506439208984375, 503.162078857421875, 122.0089874267578125, 1.980386972427368164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+947, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 97.503753662109375, 502.524017333984375, 122.04052734375, 1.980386972427368164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+948, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 102.57623291015625, 505.465118408203125, 121.5578155517578125, 1.980386972427368164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+949, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 101.69384765625, 510.579071044921875, 120.716278076171875, 1.980386972427368164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+950, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 102.98272705078125, 508.516510009765625, 120.8824462890625, 1.980386972427368164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+951, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 107.4121856689453125, 488.46923828125, 123.134002685546875, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+952, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 102.4402008056640625, 487.46661376953125, 123.8702011108398437, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+953, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 106.1233062744140625, 490.53179931640625, 123.2879791259765625, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+954, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 101.9332122802734375, 482.47674560546875, 124.99371337890625, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+955, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 104.9358978271484375, 483.11480712890625, 124.1280364990234375, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+956, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 107.0056915283203125, 485.4178466796875, 123.382537841796875, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+957, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+958, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3546524047851562, 598.489501953125, 136.7055206298828125, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+959, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -81.5420608520507812, 591.072509765625, 139.9442901611328125, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+960, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.0657730102539062, 596.42694091796875, 137.4203338623046875, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+961, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.4722671508789062, 593.37554931640625, 138.829681396484375, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+962, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.5447463989257812, 590.4344482421875, 140.4889984130859375, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+963, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.00201416015625, 497.719635009765625, 186.820526123046875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+964, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+965, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.2908935546875, 499.782196044921875, 186.52667236328125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+966, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -294.480987548828125, 491.727142333984375, 186.05633544921875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+967, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.40850830078125, 494.668243408203125, 186.7431488037109375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+968, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -291.478302001953125, 492.365203857421875, 186.371307373046875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+969, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.432296752929687, 493.5260009765625, 181.5868072509765625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+970, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -241.749191284179687, 496.5911865234375, 180.978851318359375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+971, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.939285278320312, 488.5361328125, 180.896148681640625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+972, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.866806030273437, 491.47723388671875, 181.0423431396484375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+973, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.460311889648437, 494.52862548828125, 180.9354095458984375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+974, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -242.936599731445312, 489.1741943359375, 180.80889892578125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+975, 134507, 1906, 9570, 9572, '12', '0', 0, 0, 0, -36.150421142578125, 480.846710205078125, 142.7621002197265625, 3.455313920974731445, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134507 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+976, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -36.150421142578125, 480.846710205078125, 142.7621002197265625, 3.455313920974731445, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+977, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 118.4804763793945312, 541.4901123046875, 115.3853378295898437, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+978, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 118.8669052124023437, 549.34820556640625, 115.3705215454101562, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+979, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 120.9869308471679687, 545.33294677734375, 115.3753738403320312, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+980, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 116.4910964965820312, 545.5264892578125, 115.3915023803710937, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+981, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 122.1471023559570312, 464.585113525390625, 127.454803466796875, 2.521116018295288085, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+982, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 127.1190872192382812, 465.587738037109375, 127.46636962890625, 2.521116018295288085, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+983, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 126.7125930786132812, 462.536346435546875, 127.8514404296875, 2.521116018295288085, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+984, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 125.8302078247070312, 467.650299072265625, 127.0199432373046875, 2.521116018295288085, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+985, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 124.6427993774414062, 460.233306884765625, 127.97003173828125, 2.521116018295288085, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+986, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 121.6401138305664062, 459.595245361328125, 128.3243255615234375, 2.521116018295288085, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+987, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+988, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3546524047851562, 598.489501953125, 136.7055206298828125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+989, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.0657730102539062, 596.42694091796875, 137.4203338623046875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+990, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.5447463989257812, 590.4344482421875, 140.4889984130859375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+991, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -81.5420608520507812, 591.072509765625, 139.9442901611328125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+992, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.4722671508789062, 593.37554931640625, 138.829681396484375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+993, 134507, 1906, 9570, 9572, '12', '0', 0, 0, 0, -36.150421142578125, 480.846710205078125, 142.7621002197265625, 3.455313920974731445, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134507 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+994, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -36.150421142578125, 480.846710205078125, 142.7621002197265625, 3.455313920974731445, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+995, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 106.1233062744140625, 490.53179931640625, 123.2879791259765625, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+996, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 102.4402008056640625, 487.46661376953125, 123.8702011108398437, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+997, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 107.4121856689453125, 488.46923828125, 123.134002685546875, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+998, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 107.0056915283203125, 485.4178466796875, 123.382537841796875, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+999, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 104.9358978271484375, 483.11480712890625, 124.1280364990234375, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478); -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+1000, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 101.9332122802734375, 482.47674560546875, 124.99371337890625, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1001, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.432296752929687, 493.5260009765625, 181.5868072509765625, 1.571009993553161621, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+1002, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -242.936599731445312, 489.1741943359375, 180.80889892578125, 1.571009993553161621, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+1003, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.866806030273437, 491.47723388671875, 181.0423431396484375, 1.571009993553161621, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+1004, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -241.749191284179687, 496.5911865234375, 180.978851318359375, 1.571009993553161621, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+1005, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.460311889648437, 494.52862548828125, 180.9354095458984375, 1.571009993553161621, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+1006, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.939285278320312, 488.5361328125, 180.896148681640625, 1.571009993553161621, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+1007, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 189.946044921875, 544.484130859375, 115.2449264526367187, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1008, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 186.8177947998046875, 541.24932861328125, 115.4467010498046875, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1009, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 191.171722412109375, 540.11212158203125, 115.3139724731445312, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1010, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 187.91131591796875, 536.88421630859375, 115.3667984008789062, 2.785486936569213867, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1011, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 138.69140625, 542.8668212890625, 115.4023971557617187, 3.139585018157958984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1012, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 142.37451171875, 545.9320068359375, 115.3705215454101562, 3.139585018157958984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1013, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 143.66339111328125, 543.86944580078125, 115.3705215454101562, 3.139585018157958984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1014, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 141.187103271484375, 538.5150146484375, 115.4203567504882812, 3.139585018157958984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1015, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 143.25689697265625, 540.81805419921875, 115.3720932006835937, 3.139585018157958984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1016, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 138.184417724609375, 537.876953125, 115.4717636108398437, 3.139585018157958984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1017, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1018, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -83.1132125854492187, 599.82830810546875, 136.528045654296875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1019, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -87.4206085205078125, 598.391845703125, 138.6249542236328125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1020, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.7308731079101562, 596.72845458984375, 137.4105224609375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1021, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+1022, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.40850830078125, 494.668243408203125, 186.7431488037109375, 2.61759805679321289, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+1023, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.2908935546875, 499.782196044921875, 186.52667236328125, 2.61759805679321289, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+1024, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.00201416015625, 497.719635009765625, 186.820526123046875, 2.61759805679321289, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+1025, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -291.478302001953125, 492.365203857421875, 186.371307373046875, 2.61759805679321289, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316)
(@CGUID+1026, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -294.480987548828125, 491.727142333984375, 186.05633544921875, 2.61759805679321289, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12)
(@CGUID+1027, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 116.4910964965820312, 545.5264892578125, 115.3915023803710937, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1028, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 121.0565872192382812, 543.47772216796875, 115.3803634643554687, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1029, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 121.4630813598632812, 546.52911376953125, 115.3731765747070312, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1030, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 120.1742019653320312, 548.5916748046875, 115.3712081909179687, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1031, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 115.9841079711914062, 540.53662109375, 115.3876266479492187, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1032, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 118.9867935180664062, 541.1746826171875, 115.3884658813476562, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1033, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -167.59429931640625, 485.840606689453125, 167.2030029296875, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1034, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.198593139648437, 486.803802490234375, 166.5171966552734375, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1035, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -169.099090576171875, 481.59967041015625, 167.7934417724609375, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1036, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -164.597137451171875, 482.48394775390625, 167.06121826171875, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1037, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1038, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3546524047851562, 598.489501953125, 136.7055206298828125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1039, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.5447463989257812, 590.4344482421875, 140.4889984130859375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1040, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.4722671508789062, 593.37554931640625, 138.829681396484375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1041, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -81.5420608520507812, 591.072509765625, 139.9442901611328125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1042, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.0657730102539062, 596.42694091796875, 137.4203338623046875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1043, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.432296752929687, 493.5260009765625, 181.5868072509765625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1044, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.460311889648437, 494.52862548828125, 180.9354095458984375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1045, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -242.936599731445312, 489.1741943359375, 180.80889892578125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1046, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -240.866806030273437, 491.47723388671875, 181.0423431396484375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1047, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -241.749191284179687, 496.5911865234375, 180.978851318359375, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1048, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -245.939285278320312, 488.5361328125, 180.896148681640625, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1049, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -83.1132125854492187, 599.82830810546875, 136.528045654296875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1050, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1051, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.7308731079101562, 596.72845458984375, 137.4105224609375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1052, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -87.4206085205078125, 598.391845703125, 138.6249542236328125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1053, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 102.4402008056640625, 487.46661376953125, 123.8702011108398437, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1054, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 106.1233062744140625, 490.53179931640625, 123.2879791259765625, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1055, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 107.4121856689453125, 488.46923828125, 123.134002685546875, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1056, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 107.0056915283203125, 485.4178466796875, 123.382537841796875, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1057, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 101.9332122802734375, 482.47674560546875, 124.99371337890625, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1058, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 104.9358978271484375, 483.11480712890625, 124.1280364990234375, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1059, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -62.9548606872558593, 469.7257080078125, 146.311004638671875, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1060, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -59.2717552185058593, 472.7908935546875, 146.668670654296875, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1061, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -57.9828758239746093, 470.72833251953125, 145.849365234375, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1062, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -63.4618492126464843, 464.73583984375, 145.6539306640625, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1063, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -58.3893699645996093, 467.67694091796875, 144.8868255615234375, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1064, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -60.4591636657714843, 465.3739013671875, 144.87261962890625, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1065, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -62.9548606872558593, 469.7257080078125, 146.311004638671875, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1066, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -59.2717552185058593, 472.7908935546875, 146.668670654296875, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1067, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -57.9828758239746093, 470.72833251953125, 145.849365234375, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1068, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -58.3893699645996093, 467.67694091796875, 144.8868255615234375, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1069, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -60.4591636657714843, 465.3739013671875, 144.87261962890625, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1070, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -63.4618492126464843, 464.73583984375, 145.6539306640625, 3.156893014907836914, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1071, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.0657730102539062, 596.42694091796875, 137.4203338623046875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1072, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1073, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3546524047851562, 598.489501953125, 136.7055206298828125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1074, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.4722671508789062, 593.37554931640625, 138.829681396484375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1075, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.5447463989257812, 590.4344482421875, 140.4889984130859375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1076, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -81.5420608520507812, 591.072509765625, 139.9442901611328125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1077, 72390, 1906, 9570, 9572, '12', '0', 0, 0, 0, -521.15228271484375, 574.35711669921875, 220.527496337890625, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 72390 (Area: 9572 - Difficulty: 12)
(@CGUID+1078, 134469, 1906, 9570, 9572, '12', '0', 0, 0, 0, -591.83197021484375, 625.57598876953125, 197.160003662109375, 5.770669937133789062, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134469 (Area: 9572 - Difficulty: 12)
(@CGUID+1079, 134507, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134507 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1080, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1081, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1082, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.34918212890625, 499.38360595703125, 186.5232696533203125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1083, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.625274658203125, 492.23052978515625, 186.132904052734375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1084, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.871307373046875, 494.86822509765625, 186.6670379638671875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1085, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.871307373046875, 494.86822509765625, 186.6670379638671875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1086, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.34918212890625, 499.38360595703125, 186.5232696533203125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1087, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1088, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.625274658203125, 492.23052978515625, 186.132904052734375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1089, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1090, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.2908935546875, 499.782196044921875, 186.52667236328125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1091, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.00201416015625, 497.719635009765625, 186.820526123046875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1092, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.40850830078125, 494.668243408203125, 186.7431488037109375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1093, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -294.480987548828125, 491.727142333984375, 186.05633544921875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1094, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -291.478302001953125, 492.365203857421875, 186.371307373046875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1095, 134756, 1906, 9570, 9572, '12', '0', 0, 0, 0, -577.2603759765625, 580.9254150390625, 220.541595458984375, 5.796477794647216796, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134756 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1096, 134689, 1906, 9570, 9572, '12', '0', 0, 0, 0, -568.052001953125, 577.052001953125, 220.5540008544921875, 5.401740074157714843, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134689 (Area: 9572 - Difficulty: 12)
(@CGUID+1097, 134493, 1906, 9570, 9572, '12', '0', 0, 0, 0, -673.75, 701.49798583984375, 270.9580078125, 5.700550079345703125, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134493 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1098, 134692, 1906, 9570, 9572, '12', '0', 0, 0, 0, -567.81402587890625, 572.39801025390625, 220.5540008544921875, 0.542949974536895751, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134692 (Area: 9572 - Difficulty: 12) (Auras: 46598 - 46598)
(@CGUID+1099, 134461, 1906, 9570, 9572, '12', '0', 0, 0, 0, -577.2603759765625, 580.9254150390625, 220.541595458984375, 5.796477794647216796, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134461 (Area: 9572 - Difficulty: 12)
(@CGUID+1100, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1101, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3546524047851562, 598.489501953125, 136.7055206298828125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1102, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.0657730102539062, 596.42694091796875, 137.4203338623046875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1103, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.4722671508789062, 593.37554931640625, 138.829681396484375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1104, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -81.5420608520507812, 591.072509765625, 139.9442901611328125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1105, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.5447463989257812, 590.4344482421875, 140.4889984130859375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1106, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -167.59429931640625, 485.840606689453125, 167.2030029296875, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1107, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.91119384765625, 488.905792236328125, 166.43743896484375, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1108, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -168.101287841796875, 480.850738525390625, 167.7141571044921875, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1109, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -165.098602294921875, 481.488800048828125, 167.20892333984375, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1110, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -162.622314453125, 486.843231201171875, 166.4144439697265625, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1111, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.02880859375, 483.791839599609375, 166.715087890625, 2.199059009552001953, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1112, 142818, 1906, 9570, 9572, '12', '0', 0, 0, 0, -611.54998779296875, 1073.5699462890625, 321.072998046875, 1.869940042495727539, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142818 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1113, 136359, 1906, 9570, 9572, '12', '0', 0, 0, 0, -621.822998046875, 1073.8499755859375, 321.22698974609375, 1.237030029296875, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136359 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1114, 136356, 1906, 9570, 9572, '12', '0', 0, 0, 0, -587.31402587890625, 1098.56005859375, 321.12200927734375, 2.882989883422851562, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136356 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1115, 136360, 1906, 9570, 9572, '12', '0', 0, 0, 0, -579.62799072265625, 1069.18994140625, 322.0570068359375, 2.352109909057617187, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136360 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1116, 134507, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.2950973510742187, 617.36749267578125, 130.373199462890625, 4.404843807220458984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134507 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1117, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.2950973510742187, 617.36749267578125, 130.373199462890625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1118, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -11.4389934539794921, 536.098388671875, 133.6501617431640625, 2.925195217132568359, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1119, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -15.5831794738769531, 528.033203125, 134.5775604248046875, 2.923484325408935546, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1120, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -10.1555023193359375, 534.03692626953125, 133.5753021240234375, 2.925388813018798828, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1121, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -15.065464973449707, 533.0206298828125, 134.3366851806640625, 2.923089265823364257, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1122, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -10.5350551605224609, 530.9796142578125, 133.800537109375, 2.924387693405151367, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1123, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -12.6007823944091796, 528.67572021484375, 134.1614990234375, 2.924244403839111328, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1124, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -14.6603574752807617, 536.55426025390625, 134.1443634033203125, 3.095220804214477539, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1125, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -19.1694469451904296, 528.5107421875, 135.0766143798828125, 3.114407777786254882, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1126, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -13.7699079513549804, 531.44000244140625, 134.2697906494140625, 3.094652652740478515, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1127, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -13.2235326766967773, 534.484130859375, 134.031158447265625, 3.084917545318603515, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1128, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -16.1434192657470703, 529.14801025390625, 134.6612091064453125, 3.113387823104858398, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1129, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -18.3819293975830078, 533.4908447265625, 134.812652587890625, 3.097934484481811523, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1130, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 11.36706447601318359, 535.87066650390625, 129.634002685546875, 4.010855674743652343, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1131, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 11.85114002227783203, 540.8333740234375, 129.10504150390625, 4.012363910675048828, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1132, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 15.45992469787597656, 543.8099365234375, 128.004913330078125, 4.017170906066894531, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1133, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 14.32300949096679687, 536.4532470703125, 128.908233642578125, 4.013919830322265625, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1134, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 16.36489486694335937, 538.7230224609375, 128.2469482421875, 4.01572418212890625, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1135, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 16.74155998229980468, 541.73870849609375, 127.900146484375, 4.017632484436035156, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1136, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -149.565994262695312, 483.42010498046875, 162.622894287109375, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1137, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -146.57818603515625, 486.785064697265625, 160.844146728515625, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1138, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -148.28778076171875, 479.10546875, 162.767059326171875, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1139, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -145.167633056640625, 482.4691162109375, 161.4272308349609375, 2.828038930892944335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1140, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 24.0678863525390625, 553.50079345703125, 125.3004074096679687, 3.43974471092224121, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1141, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 29.5231170654296875, 546.62066650390625, 124.5844345092773437, 3.115669965744018554, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1142, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 28.39188194274902343, 550.74493408203125, 124.4944534301757812, 3.073834180831909179, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1143, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 25.29846954345703125, 549.19488525390625, 125.3782958984375, 3.46253204345703125, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1144, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -16.6896896362304687, 536.55255126953125, 134.462310791015625, 3.181831121444702148, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1145, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -15.4324817657470703, 534.4886474609375, 134.370574951171875, 3.182945489883422851, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1146, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -20.3706226348876953, 533.4874267578125, 135.1170501708984375, 3.181754589080810546, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1147, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -17.9231185913085937, 529.13360595703125, 134.9294281005859375, 3.183449268341064453, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1148, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -20.9077682495117187, 528.49627685546875, 135.341705322265625, 3.182816982269287109, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1149, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -15.8468942642211914, 531.4368896484375, 134.5842742919921875, 3.183222293853759765, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1150, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -236.714096069335937, 501.63848876953125, 179.3397979736328125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1151, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -231.742111206054687, 502.64111328125, 178.03338623046875, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1152, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -232.148605346679687, 499.5897216796875, 178.338104248046875, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1153, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -233.030990600585937, 504.70367431640625, 178.2891082763671875, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1154, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -234.218399047851562, 497.28668212890625, 179.4303741455078125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1155, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -237.221084594726562, 496.64862060546875, 180.2686767578125, 1.571009993553161621, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1156, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 33.02568817138671875, 554.196533203125, 123.1135406494140625, 2.992180585861206054, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1157, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 25.36416244506835937, 546.201416015625, 125.59234619140625, 3.353152275085449218, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1158, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 30.51659965515136718, 550.50091552734375, 123.9973907470703125, 2.986688613891601562, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1159, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 28.12437248229980468, 549.95623779296875, 124.6544418334960937, 3.343591928482055664, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1160, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 95.815277099609375, 498.205169677734375, 122.1877059936523437, 2.22210860252380371, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1161, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 94.39215087890625, 498.08123779296875, 122.1953277587890625, 2.163004875183105468, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1162, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 93.14643096923828125, 492.680694580078125, 123.7472076416015625, 2.27549910545349121, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1163, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 94.81914520263671875, 492.007415771484375, 123.6656875610351562, 2.073273181915283203, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1164, 134507, 1906, 9570, 9572, '12', '0', 0, 0, 0, 138.7297821044921875, 545.13336181640625, 115.3729705810546875, 3.14554142951965332, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134507 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1165, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1166, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.0657730102539062, 596.42694091796875, 137.4203338623046875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1167, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3546524047851562, 598.489501953125, 136.7055206298828125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1168, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.5447463989257812, 590.4344482421875, 140.4889984130859375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1169, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -81.5420608520507812, 591.072509765625, 139.9442901611328125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1170, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.4722671508789062, 593.37554931640625, 138.829681396484375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1171, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 87.622589111328125, 513.84466552734375, 121.333740234375, 2.514870643615722656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1172, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 91.73574066162109375, 514.1141357421875, 120.7558135986328125, 2.590712547302246093, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1173, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 89.43361663818359375, 510.20916748046875, 121.3896865844726562, 2.591457605361938476, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1174, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 85.20944976806640625, 510.0404052734375, 121.5502853393554687, 2.519771099090576171, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1175, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 125.61187744140625, 543.05364990234375, 115.3762969970703125, 3.144771575927734375, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1176, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 126.0371856689453125, 546.10504150390625, 115.3740692138671875, 3.144689559936523437, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1177, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 121.0369873046875, 545.102294921875, 115.3733978271484375, 3.144811391830444335, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1178, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 124.76715087890625, 548.167724609375, 115.3825836181640625, 3.144603967666625976, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1179, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 123.523284912109375, 540.75048828125, 115.3874130249023437, 3.144855976104736328, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1180, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 120.520599365234375, 540.11248779296875, 115.4042434692382812, 3.14485478401184082, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1181, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 138.4900970458984375, 540.77178955078125, 115.38983154296875, 3.144695758819580078, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1182, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 135.4874267578125, 540.1336669921875, 115.387725830078125, 3.144695758819580078, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1183, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 140.5675201416015625, 543.0748291015625, 115.3703079223632812, 3.144700288772583007, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1184, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 141.0199432373046875, 546.12640380859375, 115.370391845703125, 3.144721746444702148, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1185, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 139.7923583984375, 548.18914794921875, 115.3700714111328125, 3.144747495651245117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1186, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 136.0096893310546875, 545.12371826171875, 115.37298583984375, 3.144698858261108398, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1187, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 116.4910964965820312, 545.5264892578125, 115.3915023803710937, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1188, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 118.4804763793945312, 541.4901123046875, 115.3853378295898437, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1189, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 118.8669052124023437, 549.34820556640625, 115.3705215454101562, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1190, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 120.9869308471679687, 545.33294677734375, 115.3753738403320312, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1191, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 102.4402008056640625, 487.46661376953125, 123.8702011108398437, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1192, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 107.0056915283203125, 485.4178466796875, 123.382537841796875, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1193, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 106.1233062744140625, 490.53179931640625, 123.2879791259765625, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1194, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 107.4121856689453125, 488.46923828125, 123.134002685546875, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1195, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, 104.9358978271484375, 483.11480712890625, 124.1280364990234375, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1196, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, 101.9332122802734375, 482.47674560546875, 124.99371337890625, 1.907379031181335449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1197, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.0377578735351562, 595.42431640625, 139.11529541015625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1198, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3546524047851562, 598.489501953125, 136.7055206298828125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1199, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.0657730102539062, 596.42694091796875, 137.4203338623046875, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1200, 134432, 1906, 9570, 9572, '12', '0', 0, 0, 0, -81.5420608520507812, 591.072509765625, 139.9442901611328125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134432 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1201, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -84.5447463989257812, 590.4344482421875, 140.4889984130859375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1202, 134431, 1906, 9570, 9572, '12', '0', 0, 0, 0, -79.4722671508789062, 593.37554931640625, 138.829681396484375, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134431 (Area: 9572 - Difficulty: 12) (Auras: 262316 - 262316) (possible waypoints or random movement)
(@CGUID+1203, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.2950973510742187, 617.36749267578125, 130.373199462890625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1204, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.677947998046875, 620.33502197265625, 129.8810577392578125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1205, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -71.3705520629882812, 621.771484375, 128.58428955078125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1206, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -67.9882125854492187, 618.671630859375, 129.012359619140625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1207, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -72.2950973510742187, 617.36749267578125, 130.373199462890625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1208, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -71.3705520629882812, 621.771484375, 128.58428955078125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1209, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.677947998046875, 620.33502197265625, 129.8810577392578125, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1210, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -67.9882125854492187, 618.671630859375, 129.012359619140625, 4.404843807220458984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1211, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -290.34918212890625, 499.38360595703125, 186.5232696533203125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1212, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.9739990234375, 496.717010498046875, 185.96319580078125, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1213, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -293.625274658203125, 492.23052978515625, 186.132904052734375, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1214, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, -289.871307373046875, 494.86822509765625, 186.6670379638671875, 2.61759805679321289, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1215, 72390, 1906, 9570, 9572, '12', '0', 0, 0, 0, -144.689300537109375, 988.60748291015625, 255.837005615234375, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 72390 (Area: 9572 - Difficulty: 12)
(@CGUID+1216, 134627, 1906, 9570, 9572, '12', '0', 0, 0, 0, 116.4910964965820312, 545.5264892578125, 115.3915023803710937, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134627 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1217, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 118.8669052124023437, 549.34820556640625, 115.3705215454101562, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1218, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 118.4804763793945312, 541.4901123046875, 115.3853378295898437, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1219, 134433, 1906, 9570, 9572, '12', '0', 0, 0, 0, 120.9869308471679687, 545.33294677734375, 115.3753738403320312, 2.997946023941040039, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134433 (Area: 9572 - Difficulty: 12) (Auras: 18950 - 18950) (possible waypoints or random movement)
(@CGUID+1220, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -102.225700378417968, 1099.238037109375, 263.042694091796875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1221, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1222, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -101.029670715332031, 1104.0928955078125, 262.58026123046875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1223, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -97.3708572387695312, 1098.0419921875, 260.941986083984375, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1224, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.295791625976562, 1039.944091796875, 277.9326171875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1225, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -202.718658447265625, 1035.2520751953125, 276.413421630859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1226, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -205.868728637695312, 1036.7774658203125, 277.4051513671875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1227, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -207.377716064453125, 1033.5799560546875, 276.84124755859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1228, 134834, 1906, 9570, 9572, '12', '0', 0, 0, 0, -398.209991455078125, 1192.4000244140625, 319.7340087890625, 3.146689891815185546, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134834 (Area: 9572 - Difficulty: 12)
(@CGUID+1229, 72390, 1906, 9570, 9572, '12', '0', 0, 0, 0, -281.83990478515625, 1177.750244140625, 309.7388916015625, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 72390 (Area: 9572 - Difficulty: 12)
(@CGUID+1230, 134620, 1906, 9570, 9572, '12', '0', 0, 0, 0, -399.07598876953125, 1188.22998046875, 319.740997314453125, 3.14207005500793457, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134620 (Area: 9572 - Difficulty: 12)
(@CGUID+1231, 134831, 1906, 9570, 9572, '12', '0', 0, 0, 0, -398.139007568359375, 1184.739990234375, 319.6929931640625, 3.200150012969970703, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134831 (Area: 9572 - Difficulty: 12)
(@CGUID+1232, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -127.442550659179687, 1114.1541748046875, 273.872650146484375, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1233, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -132.318130493164062, 1115.0093994140625, 274.12762451171875, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1234, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1235, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -130.2872314453125, 1112.1151123046875, 273.42694091796875, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1236, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1237, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1238, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -128.198562622070312, 1109.2623291015625, 272.488433837890625, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1239, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1240, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1241, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -190.484466552734375, 1031.8819580078125, 273.110443115234375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1242, 134475, 1906, 9570, 9572, '12', '0', 0, 0, 0, -340.1669921875, 1286.5400390625, 336.272003173828125, 4.603779792785644531, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134475 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1243, 134692, 1906, 9570, 9572, '12', '0', 0, 0, 0, -398.875, 1190.1300048828125, 319.738006591796875, 3.466759920120239257, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134692 (Area: 9572 - Difficulty: 12) (Auras: 265382 - 265382) (possible waypoints or random movement)
(@CGUID+1244, 134836, 1906, 9570, 9572, '12', '0', 0, 0, 0, -406.69000244140625, 1197.8399658203125, 319.957000732421875, 3.171809911727905273, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134836 (Area: 9572 - Difficulty: 12)
(@CGUID+1245, 134836, 1906, 9570, 9572, '12', '0', 0, 0, 0, -407.279998779296875, 1193.3800048828125, 320.00201416015625, 3.171809911727905273, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134836 (Area: 9572 - Difficulty: 12)
(@CGUID+1246, 134836, 1906, 9570, 9572, '12', '0', 0, 0, 0, -407.188995361328125, 1186.8900146484375, 319.949005126953125, 3.171809911727905273, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134836 (Area: 9572 - Difficulty: 12)
(@CGUID+1247, 134478, 1906, 9570, 9572, '12', '0', 0, 0, 0, -441.7860107421875, 1291.5999755859375, 395.264007568359375, 5.379809856414794921, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134478 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1248, 134836, 1906, 9570, 9572, '12', '0', 0, 0, 0, -406.70098876953125, 1182.550048828125, 319.970001220703125, 3.171809911727905273, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134836 (Area: 9572 - Difficulty: 12)
(@CGUID+1249, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.8077926635742187, 1102.8568115234375, 256.306884765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478); -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+1250, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3925628662109375, 1097.8740234375, 255.5662994384765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1251, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.4098358154296875, 1098.289306640625, 254.45452880859375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1252, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.295791625976562, 1039.944091796875, 277.9326171875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1253, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.8709716796875, 1103.2177734375, 254.9691314697265625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1254, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1255, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -207.377716064453125, 1033.5799560546875, 276.84124755859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1256, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -202.718658447265625, 1035.2520751953125, 276.413421630859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1257, 72390, 1906, 9570, 9572, '12', '0', 0, 0, 0, -488.1370849609375, 1189.0987548828125, 320.378509521484375, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 72390 (Area: 9572 - Difficulty: 12)
(@CGUID+1258, 136369, 1906, 9570, 9572, '12', '0', 0, 0, 0, -511.042999267578125, 1147.1300048828125, 322.635986328125, 1.550809979438781738, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136369 (Area: 9572 - Difficulty: 12)
(@CGUID+1259, 134865, 1906, 9570, 9572, '12', '0', 0, 0, 0, -456.177001953125, 1206.969970703125, 320.795989990234375, 5.736480236053466796, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134865 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1260, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -461.260009765625, 1171.4200439453125, 320.930999755859375, 0.701947987079620361, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (Auras: 69149 - 69149)
(@CGUID+1261, 136358, 1906, 9570, 9572, '12', '0', 0, 0, 0, -584.35797119140625, 1202.4100341796875, 322.35699462890625, 0.000004291534423828, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136358 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1262, 134865, 1906, 9570, 9572, '12', '0', 0, 0, 0, -457.5159912109375, 1174.75, 320.7449951171875, 0.497207999229431152, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134865 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1263, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -522.08697509765625, 1174.1400146484375, 320.761993408203125, 4.073029994964599609, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1264, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -452.707000732421875, 1173.3199462890625, 320.839996337890625, 2.90932011604309082, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (Auras: 69149 - 69149)
(@CGUID+1265, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -457.177001953125, 1205.0699462890625, 320.77099609375, 0.948332011699676513, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (Auras: 69149 - 69149)
(@CGUID+1266, 136367, 1906, 9570, 9572, '12', '0', 0, 0, 0, -508.52398681640625, 1145.27001953125, 322.635986328125, 1.72939002513885498, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136367 (Area: 9572 - Difficulty: 12)
(@CGUID+1267, 136355, 1906, 9570, 9572, '12', '0', 0, 0, 0, -535.84698486328125, 1141.8900146484375, 322.44500732421875, 3.117510080337524414, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136355 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1268, 136368, 1906, 9570, 9572, '12', '0', 0, 0, 0, -513.77099609375, 1145.2099609375, 322.635986328125, 1.39189004898071289, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136368 (Area: 9572 - Difficulty: 12)
(@CGUID+1269, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -458.8179931640625, 1180.3699951171875, 320.545989990234375, 4.802020072937011718, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (Auras: 69149 - 69149)
(@CGUID+1270, 136357, 1906, 9570, 9572, '12', '0', 0, 0, 0, -524.00897216796875, 1172.0799560546875, 320.980987548828125, 1.22109997272491455, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136357 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1271, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -511.269012451171875, 1150.989990234375, 322.635986328125, 4.780560016632080078, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1272, 136371, 1906, 9570, 9572, '12', '0', 0, 0, 0, -477.62701416015625, 1230.280029296875, 323.03900146484375, 5.658090114593505859, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136371 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1273, 136409, 1906, 9570, 9572, '12', '0', 0, 0, 0, -546.71502685546875, 1204.3399658203125, 348.19500732421875, 5.42173004150390625, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136409 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1274, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -102.225700378417968, 1099.238037109375, 263.042694091796875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1275, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -101.029670715332031, 1104.0928955078125, 262.58026123046875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1276, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -97.3708572387695312, 1098.0419921875, 260.941986083984375, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1277, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1278, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1279, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1280, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1281, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.630340576171875, 1075.277587890625, 287.29766845703125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1282, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1283, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1284, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1285, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1286, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -181.680923461914062, 1122.528564453125, 288.908721923828125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1287, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.198043823242187, 1033.8028564453125, 278.339752197265625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1288, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1289, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.518707275390625, 1036.123779296875, 276.9696044921875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1290, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1291, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1292, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1293, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1294, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1295, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.630340576171875, 1075.277587890625, 287.29766845703125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1296, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1297, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1298, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1299, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -129.068084716796875, 1112.989013671875, 273.41827392578125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1300, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1301, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -130.21893310546875, 1106.01220703125, 272.53985595703125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1302, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1303, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.061553955078125, 1069.37939453125, 285.92333984375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1304, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.66387939453125, 1076.4248046875, 287.5048828125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1305, 136409, 1906, 9570, 9572, '12', '0', 0, 0, 0, -562.25, 1191.3199462890625, 348.19500732421875, 5.42173004150390625, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136409 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1306, 72390, 1906, 9570, 9572, '12', '0', 0, 0, 0, -558.44122314453125, 1171.5970458984375, 320.463409423828125, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 72390 (Area: 9572 - Difficulty: 12)
(@CGUID+1307, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.8709716796875, 1103.2177734375, 254.9691314697265625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1308, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.8077926635742187, 1102.8568115234375, 256.306884765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1309, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.4098358154296875, 1098.289306640625, 254.45452880859375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1310, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3925628662109375, 1097.8740234375, 255.5662994384765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1311, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1312, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.451019287109375, 1047.8851318359375, 280.75250244140625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1313, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.969818115234375, 1052.8116455078125, 281.929595947265625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1314, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.386337280273437, 1048.2662353515625, 281.465423583984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1315, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -568.69500732421875, 1214.3499755859375, 321.352996826171875, 2.550610065460205078, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1316, 136409, 1906, 9570, 9572, '12', '0', 0, 0, 0, -575.9840087890625, 1175.780029296875, 345.87701416015625, 5.42173004150390625, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136409 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1317, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1318, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -132.318130493164062, 1115.0093994140625, 274.12762451171875, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1319, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -130.2872314453125, 1112.1151123046875, 273.42694091796875, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1320, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -127.442550659179687, 1114.1541748046875, 273.872650146484375, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1321, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -128.198562622070312, 1109.2623291015625, 272.488433837890625, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1322, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1323, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1324, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.630340576171875, 1075.277587890625, 287.29766845703125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1325, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1326, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1327, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -102.225700378417968, 1099.238037109375, 263.042694091796875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1328, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -104.812873840332031, 1103.5166015625, 264.101959228515625, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1329, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -97.94708251953125, 1101.8251953125, 261.4620361328125, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1330, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1331, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1332, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -100.551261901855468, 1106.0347900390625, 262.82073974609375, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1333, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1334, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1335, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.630340576171875, 1075.277587890625, 287.29766845703125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1336, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -594.71197509765625, 1180.9100341796875, 321.85198974609375, 2.734110116958618164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1337, 136409, 1906, 9570, 9572, '12', '0', 0, 0, 0, -595.26898193359375, 1158.22998046875, 347.589996337890625, 5.42173004150390625, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136409 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1338, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -595.9580078125, 1178.6600341796875, 321.85198974609375, 2.298680067062377929, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1339, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1340, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1341, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -130.21893310546875, 1106.01220703125, 272.53985595703125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1342, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1343, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -129.068084716796875, 1112.989013671875, 273.41827392578125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1344, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -190.484466552734375, 1031.8819580078125, 273.110443115234375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1345, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1346, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1347, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -77.1628494262695312, 1101.69091796875, 255.19427490234375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1348, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1349, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3925628662109375, 1097.8740234375, 255.5662994384765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1350, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.736679077148437, 1049.4171142578125, 281.26361083984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1351, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -76.5756301879882812, 1094.644287109375, 254.72686767578125, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1352, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -218.780868530273437, 1050.0330810546875, 282.0369873046875, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1353, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -132.318130493164062, 1115.0093994140625, 274.12762451171875, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1354, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -128.198562622070312, 1109.2623291015625, 272.488433837890625, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1355, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -127.442550659179687, 1114.1541748046875, 273.872650146484375, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1356, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1357, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1358, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1359, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1360, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1361, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -130.2872314453125, 1112.1151123046875, 273.42694091796875, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1362, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1363, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1364, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -129.068084716796875, 1112.989013671875, 273.41827392578125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1365, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -130.21893310546875, 1106.01220703125, 272.53985595703125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1366, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1367, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1368, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1369, 136370, 1906, 9570, 9572, '12', '0', 0, 0, 0, -620.09600830078125, 1131.9000244140625, 321.139007568359375, 5.831480026245117187, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136370 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1370, 136372, 1906, 9570, 9572, '12', '0', 0, 0, 0, -617.9580078125, 1134.0400390625, 321.183990478515625, 5.638040065765380859, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136372 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1371, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -102.225700378417968, 1099.238037109375, 263.042694091796875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1372, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -104.812873840332031, 1103.5166015625, 264.101959228515625, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1373, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -100.551261901855468, 1106.0347900390625, 262.82073974609375, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1374, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -97.94708251953125, 1101.8251953125, 261.4620361328125, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1375, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.518707275390625, 1036.123779296875, 276.9696044921875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1376, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.198043823242187, 1033.8028564453125, 278.339752197265625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1377, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1378, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1379, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -129.068084716796875, 1112.989013671875, 273.41827392578125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1380, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -130.21893310546875, 1106.01220703125, 272.53985595703125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1381, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.295791625976562, 1039.944091796875, 277.9326171875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1382, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1383, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -202.718658447265625, 1035.2520751953125, 276.413421630859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1384, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -207.377716064453125, 1033.5799560546875, 276.84124755859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1385, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1386, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1387, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1388, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.66387939453125, 1076.4248046875, 287.5048828125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1389, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -181.680923461914062, 1122.528564453125, 288.908721923828125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1390, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1391, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1392, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.061553955078125, 1069.37939453125, 285.92333984375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1393, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1394, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.759033203125, 1114.269287109375, 281.920745849609375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1395, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1396, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.4935302734375, 1107.4141845703125, 281.102569580078125, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1397, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1398, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1399, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1400, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1401, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1402, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1403, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -181.680923461914062, 1122.528564453125, 288.908721923828125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1404, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1405, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1406, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.66387939453125, 1076.4248046875, 287.5048828125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1407, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.061553955078125, 1069.37939453125, 285.92333984375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1408, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -593.67901611328125, 1100.8900146484375, 320.881988525390625, 5.977449893951416015, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1409, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -593.75201416015625, 1106.949951171875, 320.798004150390625, 0.26937800645828247, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1410, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -562.25, 1191.3199462890625, 348.19500732421875, 5.42173004150390625, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (Auras: 46598 - 46598)
(@CGUID+1411, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -546.71502685546875, 1204.3399658203125, 348.19500732421875, 5.42173004150390625, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (Auras: 46598 - 46598)
(@CGUID+1412, 72390, 1906, 9570, 9572, '12', '0', 0, 0, 0, -606.7086181640625, 1118.40869140625, 320.4248046875, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 72390 (Area: 9572 - Difficulty: 12)
(@CGUID+1413, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3925628662109375, 1097.8740234375, 255.5662994384765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1414, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.8709716796875, 1103.2177734375, 254.9691314697265625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1415, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.8077926635742187, 1102.8568115234375, 256.306884765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1416, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.4098358154296875, 1098.289306640625, 254.45452880859375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1417, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1418, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1419, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1420, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1421, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.630340576171875, 1075.277587890625, 287.29766845703125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1422, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -583.38397216796875, 1070.4300537109375, 322.0570068359375, 6.056300163269042968, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1423, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -581.30401611328125, 1072.6199951171875, 322.0570068359375, 5.419340133666992187, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1424, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1425, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1426, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -181.680923461914062, 1122.528564453125, 288.908721923828125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1427, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1428, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1429, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1430, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1431, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1432, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1433, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.630340576171875, 1075.277587890625, 287.29766845703125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1434, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -620.2139892578125, 1078.8800048828125, 320.7869873046875, 4.445209980010986328, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1435, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -614.00201416015625, 1078.510009765625, 320.85101318359375, 4.931690216064453125, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1436, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -101.029670715332031, 1104.0928955078125, 262.58026123046875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1437, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -102.225700378417968, 1099.238037109375, 263.042694091796875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1438, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -97.3708572387695312, 1098.0419921875, 260.941986083984375, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1439, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1440, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.061553955078125, 1069.37939453125, 285.92333984375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1441, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.66387939453125, 1076.4248046875, 287.5048828125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1442, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+1443, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1444, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+1445, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1446, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.700912475585937, 1050.566162109375, 281.647064208984375, 1.483579993247985839, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1447, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.386337280273437, 1048.2662353515625, 281.465423583984375, 1.483579993247985839, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+1448, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.969818115234375, 1052.8116455078125, 281.929595947265625, 1.483579993247985839, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1449, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1450, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.451019287109375, 1047.8851318359375, 280.75250244140625, 1.483579993247985839, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+1451, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+1452, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.759033203125, 1114.269287109375, 281.920745849609375, 2.89376997947692871, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1453, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1454, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.4935302734375, 1107.4141845703125, 281.102569580078125, 2.89376997947692871, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+1455, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.295791625976562, 1039.944091796875, 277.9326171875, 1.905212044715881347, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1456, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -202.718658447265625, 1035.2520751953125, 276.413421630859375, 1.905212044715881347, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1457, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -207.377716064453125, 1033.5799560546875, 276.84124755859375, 1.905212044715881347, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1458, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -76.5756301879882812, 1094.644287109375, 254.72686767578125, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1459, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3925628662109375, 1097.8740234375, 255.5662994384765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1460, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -77.1628494262695312, 1101.69091796875, 255.19427490234375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1461, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1462, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -189.130630493164062, 1032.52783203125, 272.943817138671875, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1463, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.490524291992187, 1025.8621826171875, 271.937225341796875, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1464, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1465, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -132.318130493164062, 1115.0093994140625, 274.12762451171875, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1466, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -128.198562622070312, 1109.2623291015625, 272.488433837890625, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1467, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -127.442550659179687, 1114.1541748046875, 273.872650146484375, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1468, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1469, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1470, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1471, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -130.2872314453125, 1112.1151123046875, 273.42694091796875, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1472, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1473, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1474, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.307403564453125, 1123.1314697265625, 288.842926025390625, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1475, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1476, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1477, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -182.87628173828125, 1116.5435791015625, 288.063629150390625, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1478, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1479, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1480, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3925628662109375, 1097.8740234375, 255.5662994384765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1481, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.8077926635742187, 1102.8568115234375, 256.306884765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1482, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1483, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.8709716796875, 1103.2177734375, 254.9691314697265625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1484, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1485, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.4098358154296875, 1098.289306640625, 254.45452880859375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1486, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1487, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1488, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1489, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1490, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1491, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1492, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1493, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.451019287109375, 1047.8851318359375, 280.75250244140625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1494, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.969818115234375, 1052.8116455078125, 281.929595947265625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1495, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -181.680923461914062, 1122.528564453125, 288.908721923828125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1496, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.700912475585937, 1050.566162109375, 281.647064208984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1497, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.386337280273437, 1048.2662353515625, 281.465423583984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1498, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.518707275390625, 1036.123779296875, 276.9696044921875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1499, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478); -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+1500, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -129.068084716796875, 1112.989013671875, 273.41827392578125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1501, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -130.21893310546875, 1106.01220703125, 272.53985595703125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1502, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1503, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.198043823242187, 1033.8028564453125, 278.339752197265625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1504, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1505, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1506, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1507, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1508, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -202.718658447265625, 1035.2520751953125, 276.413421630859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1509, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1510, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.295791625976562, 1039.944091796875, 277.9326171875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1511, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -205.868728637695312, 1036.7774658203125, 277.4051513671875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1512, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -207.377716064453125, 1033.5799560546875, 276.84124755859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1513, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -157.0411376953125, 1115.2933349609375, 281.6597900390625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1514, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -161.82733154296875, 1116.5562744140625, 283.275543212890625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1515, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.206558227539062, 1110.4825439453125, 281.003265380859375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1516, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1517, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1518, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1519, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1520, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1521, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.630340576171875, 1075.277587890625, 287.29766845703125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1522, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -622.77301025390625, 1078.699951171875, 320.80499267578125, 4.880630016326904296, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1523, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.206558227539062, 1110.4825439453125, 281.003265380859375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1524, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -161.82733154296875, 1116.5562744140625, 283.275543212890625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1525, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -157.0411376953125, 1115.2933349609375, 281.6597900390625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1526, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1527, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1528, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.451019287109375, 1047.8851318359375, 280.75250244140625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1529, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.969818115234375, 1052.8116455078125, 281.929595947265625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1530, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.047470092773437, 1113.501220703125, 282.066314697265625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1531, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.386337280273437, 1048.2662353515625, 281.465423583984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1532, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.700912475585937, 1050.566162109375, 281.647064208984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1533, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3925628662109375, 1097.8740234375, 255.5662994384765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1534, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.8709716796875, 1103.2177734375, 254.9691314697265625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1535, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -78.1317672729492187, 1100.5458984375, 255.3709564208984375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1536, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.4098358154296875, 1098.289306640625, 254.45452880859375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1537, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.8077926635742187, 1102.8568115234375, 256.306884765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1538, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1539, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1540, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1541, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.630340576171875, 1075.277587890625, 287.29766845703125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1542, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1543, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -161.82733154296875, 1116.5562744140625, 283.275543212890625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1544, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1545, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -157.0411376953125, 1115.2933349609375, 281.6597900390625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1546, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.206558227539062, 1110.4825439453125, 281.003265380859375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1547, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -218.780868530273437, 1050.0330810546875, 282.0369873046875, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1548, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1549, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.047470092773437, 1113.501220703125, 282.066314697265625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1550, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.736679077148437, 1049.4171142578125, 281.26361083984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1551, 136409, 1906, 9570, 9572, '12', '0', 0, 0, 0, -656.08197021484375, 1114.6300048828125, 348.19500732421875, 5.99667978286743164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136409 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1552, 136409, 1906, 9570, 9572, '12', '0', 0, 0, 0, -660.14801025390625, 1103.9300537109375, 348.19500732421875, 6.04019021987915039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136409 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+1553, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -104.812873840332031, 1103.5166015625, 264.101959228515625, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1554, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -102.225700378417968, 1099.238037109375, 263.042694091796875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1555, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1556, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -97.94708251953125, 1101.8251953125, 261.4620361328125, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1557, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1558, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -100.551261901855468, 1106.0347900390625, 262.82073974609375, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1559, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -101.388481140136718, 1102.636474609375, 262.77008056640625, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1560, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1561, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1562, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1563, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -129.068084716796875, 1112.989013671875, 273.41827392578125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1564, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1565, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -130.21893310546875, 1106.01220703125, 272.53985595703125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1566, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1567, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.630340576171875, 1075.277587890625, 287.29766845703125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1568, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1569, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1570, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1571, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1572, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -161.82733154296875, 1116.5562744140625, 283.275543212890625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1573, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.206558227539062, 1110.4825439453125, 281.003265380859375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1574, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -157.0411376953125, 1115.2933349609375, 281.6597900390625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1575, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -205.868728637695312, 1036.7774658203125, 277.4051513671875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1576, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.295791625976562, 1039.944091796875, 277.9326171875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1577, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -207.377716064453125, 1033.5799560546875, 276.84124755859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1578, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -202.718658447265625, 1035.2520751953125, 276.413421630859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1579, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1580, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1581, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.759033203125, 1114.269287109375, 281.920745849609375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1582, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.969818115234375, 1052.8116455078125, 281.929595947265625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1583, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.4935302734375, 1107.4141845703125, 281.102569580078125, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1584, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.700912475585937, 1050.566162109375, 281.647064208984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1585, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.451019287109375, 1047.8851318359375, 280.75250244140625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1586, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.386337280273437, 1048.2662353515625, 281.465423583984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1587, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1588, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -182.87628173828125, 1116.5435791015625, 288.063629150390625, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1589, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1590, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.307403564453125, 1123.1314697265625, 288.842926025390625, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1591, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1592, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1593, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1594, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -161.82733154296875, 1116.5562744140625, 283.275543212890625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1595, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1596, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -189.130630493164062, 1032.52783203125, 272.943817138671875, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1597, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.206558227539062, 1110.4825439453125, 281.003265380859375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1598, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -157.0411376953125, 1115.2933349609375, 281.6597900390625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1599, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1600, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.490524291992187, 1025.8621826171875, 271.937225341796875, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1601, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -101.029670715332031, 1104.0928955078125, 262.58026123046875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1602, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -102.225700378417968, 1099.238037109375, 263.042694091796875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1603, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1604, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -97.3708572387695312, 1098.0419921875, 260.941986083984375, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1605, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1606, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1607, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1608, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -595.26898193359375, 1158.22998046875, 347.589996337890625, 5.42173004150390625, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (Auras: 46598 - 46598)
(@CGUID+1609, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -575.9840087890625, 1175.780029296875, 345.87701416015625, 5.42173004150390625, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (Auras: 46598 - 46598)
(@CGUID+1610, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1611, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -157.0411376953125, 1115.2933349609375, 281.6597900390625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1612, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -161.82733154296875, 1116.5562744140625, 283.275543212890625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1613, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.295791625976562, 1039.944091796875, 277.9326171875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1614, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -202.718658447265625, 1035.2520751953125, 276.413421630859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1615, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1616, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.206558227539062, 1110.4825439453125, 281.003265380859375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1617, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -207.377716064453125, 1033.5799560546875, 276.84124755859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1618, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -205.868728637695312, 1036.7774658203125, 277.4051513671875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1619, 136272, 1906, 9570, 9572, '12', '0', 0, 0, 0, -669.26702880859375, 1058.030029296875, 320.52899169921875, 2.381700038909912109, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136272 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1620, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -102.225700378417968, 1099.238037109375, 263.042694091796875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1621, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -100.551261901855468, 1106.0347900390625, 262.82073974609375, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1622, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -104.812873840332031, 1103.5166015625, 264.101959228515625, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1623, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1624, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.198043823242187, 1033.8028564453125, 278.339752197265625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1625, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.518707275390625, 1036.123779296875, 276.9696044921875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1626, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -97.94708251953125, 1101.8251953125, 261.4620361328125, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1627, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.8709716796875, 1103.2177734375, 254.9691314697265625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1628, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.8077926635742187, 1102.8568115234375, 256.306884765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1629, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3925628662109375, 1097.8740234375, 255.5662994384765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1630, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1631, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -189.130630493164062, 1032.52783203125, 272.943817138671875, 2.80132603645324707, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1632, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.4098358154296875, 1098.289306640625, 254.45452880859375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1633, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.490524291992187, 1025.8621826171875, 271.937225341796875, 2.80132603645324707, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1634, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.8077926635742187, 1102.8568115234375, 256.306884765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1635, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.4098358154296875, 1098.289306640625, 254.45452880859375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1636, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3925628662109375, 1097.8740234375, 255.5662994384765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1637, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.8709716796875, 1103.2177734375, 254.9691314697265625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1638, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+1639, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1640, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -78.1317672729492187, 1100.5458984375, 255.3709564208984375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1641, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1642, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1643, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1644, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1645, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1646, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1647, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1648, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -181.680923461914062, 1122.528564453125, 288.908721923828125, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1649, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1650, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1651, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1652, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3925628662109375, 1097.8740234375, 255.5662994384765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1653, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -76.5756301879882812, 1094.644287109375, 254.72686767578125, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1654, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -77.1628494262695312, 1101.69091796875, 255.19427490234375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1655, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.490524291992187, 1025.8621826171875, 271.937225341796875, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1656, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -189.130630493164062, 1032.52783203125, 272.943817138671875, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1657, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1658, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1659, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.307403564453125, 1123.1314697265625, 288.842926025390625, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1660, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1661, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.518707275390625, 1036.123779296875, 276.9696044921875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1662, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -182.87628173828125, 1116.5435791015625, 288.063629150390625, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1663, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.198043823242187, 1033.8028564453125, 278.339752197265625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1664, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -104.812873840332031, 1103.5166015625, 264.101959228515625, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1665, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -102.225700378417968, 1099.238037109375, 263.042694091796875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1666, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -97.94708251953125, 1101.8251953125, 261.4620361328125, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1667, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -100.551261901855468, 1106.0347900390625, 262.82073974609375, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1668, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1669, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -190.484466552734375, 1031.8819580078125, 273.110443115234375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1670, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1671, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1672, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1673, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -102.225700378417968, 1099.238037109375, 263.042694091796875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1674, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -97.94708251953125, 1101.8251953125, 261.4620361328125, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1675, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -104.812873840332031, 1103.5166015625, 264.101959228515625, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1676, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -100.551261901855468, 1106.0347900390625, 262.82073974609375, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1677, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.736679077148437, 1049.4171142578125, 281.26361083984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1678, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1679, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -218.780868530273437, 1050.0330810546875, 282.0369873046875, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1680, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1681, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -127.442550659179687, 1114.1541748046875, 273.872650146484375, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1682, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -132.318130493164062, 1115.0093994140625, 274.12762451171875, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1683, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.969818115234375, 1052.8116455078125, 281.929595947265625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1684, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.386337280273437, 1048.2662353515625, 281.465423583984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1685, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.451019287109375, 1047.8851318359375, 280.75250244140625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1686, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1687, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -128.198562622070312, 1109.2623291015625, 272.488433837890625, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1688, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.759033203125, 1114.269287109375, 281.920745849609375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1689, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1690, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1691, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1692, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.4935302734375, 1107.4141845703125, 281.102569580078125, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1693, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1694, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1695, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1696, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1697, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1698, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1699, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1700, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1701, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1702, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1703, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -102.225700378417968, 1099.238037109375, 263.042694091796875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1704, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -101.029670715332031, 1104.0928955078125, 262.58026123046875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1705, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1706, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.969818115234375, 1052.8116455078125, 281.929595947265625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1707, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -97.3708572387695312, 1098.0419921875, 260.941986083984375, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1708, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.451019287109375, 1047.8851318359375, 280.75250244140625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1709, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.700912475585937, 1050.566162109375, 281.647064208984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1710, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.386337280273437, 1048.2662353515625, 281.465423583984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1711, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1712, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.759033203125, 1114.269287109375, 281.920745849609375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1713, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.4935302734375, 1107.4141845703125, 281.102569580078125, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1714, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.518707275390625, 1036.123779296875, 276.9696044921875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1715, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1716, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.198043823242187, 1033.8028564453125, 278.339752197265625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1717, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1718, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -157.0411376953125, 1115.2933349609375, 281.6597900390625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1719, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.047470092773437, 1113.501220703125, 282.066314697265625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1720, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -161.82733154296875, 1116.5562744140625, 283.275543212890625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1721, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.206558227539062, 1110.4825439453125, 281.003265380859375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1722, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.736679077148437, 1049.4171142578125, 281.26361083984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1723, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -218.780868530273437, 1050.0330810546875, 282.0369873046875, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1724, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1725, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -161.82733154296875, 1116.5562744140625, 283.275543212890625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1726, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.206558227539062, 1110.4825439453125, 281.003265380859375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1727, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -157.0411376953125, 1115.2933349609375, 281.6597900390625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1728, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1729, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1730, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.969818115234375, 1052.8116455078125, 281.929595947265625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1731, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.386337280273437, 1048.2662353515625, 281.465423583984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1732, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.451019287109375, 1047.8851318359375, 280.75250244140625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1733, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.700912475585937, 1050.566162109375, 281.647064208984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1734, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3925628662109375, 1097.8740234375, 255.5662994384765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1735, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -78.1317672729492187, 1100.5458984375, 255.3709564208984375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1736, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.8709716796875, 1103.2177734375, 254.9691314697265625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1737, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.4098358154296875, 1098.289306640625, 254.45452880859375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1738, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.8077926635742187, 1102.8568115234375, 256.306884765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1739, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -218.780868530273437, 1050.0330810546875, 282.0369873046875, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1740, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1741, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.736679077148437, 1049.4171142578125, 281.26361083984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1742, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -656.08197021484375, 1114.6300048828125, 348.19500732421875, 5.99667978286743164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (Auras: 46598 - 46598)
(@CGUID+1743, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -660.14801025390625, 1103.9300537109375, 348.19500732421875, 6.04019021987915039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (Auras: 46598 - 46598)
(@CGUID+1744, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1745, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -161.82733154296875, 1116.5562744140625, 283.275543212890625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1746, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.206558227539062, 1110.4825439453125, 281.003265380859375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1747, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1748, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -157.0411376953125, 1115.2933349609375, 281.6597900390625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1749, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478); -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+1750, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1751, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.630340576171875, 1075.277587890625, 287.29766845703125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1752, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1753, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.759033203125, 1114.269287109375, 281.920745849609375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1754, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1755, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1756, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1757, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.4935302734375, 1107.4141845703125, 281.102569580078125, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1758, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1759, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1760, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1761, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -129.068084716796875, 1112.989013671875, 273.41827392578125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1762, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1763, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -190.484466552734375, 1031.8819580078125, 273.110443115234375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1764, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -130.21893310546875, 1106.01220703125, 272.53985595703125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1765, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1766, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1767, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1768, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1769, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1770, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1771, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1772, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1773, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -181.680923461914062, 1122.528564453125, 288.908721923828125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1774, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -189.130630493164062, 1032.52783203125, 272.943817138671875, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1775, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.490524291992187, 1025.8621826171875, 271.937225341796875, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1776, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1777, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1778, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1779, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -181.680923461914062, 1122.528564453125, 288.908721923828125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1780, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1781, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1782, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.969818115234375, 1052.8116455078125, 281.929595947265625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1783, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.386337280273437, 1048.2662353515625, 281.465423583984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1784, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.451019287109375, 1047.8851318359375, 280.75250244140625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1785, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.759033203125, 1114.269287109375, 281.920745849609375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1786, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1787, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1788, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.4935302734375, 1107.4141845703125, 281.102569580078125, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1789, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.700912475585937, 1050.566162109375, 281.647064208984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1790, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.451019287109375, 1047.8851318359375, 280.75250244140625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1791, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.969818115234375, 1052.8116455078125, 281.929595947265625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1792, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.386337280273437, 1048.2662353515625, 281.465423583984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1793, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -102.225700378417968, 1099.238037109375, 263.042694091796875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1794, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -100.551261901855468, 1106.0347900390625, 262.82073974609375, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1795, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1796, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -97.94708251953125, 1101.8251953125, 261.4620361328125, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1797, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -104.812873840332031, 1103.5166015625, 264.101959228515625, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1798, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1799, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1800, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1801, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1802, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.759033203125, 1114.269287109375, 281.920745849609375, 2.89376997947692871, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1803, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1804, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.4935302734375, 1107.4141845703125, 281.102569580078125, 2.89376997947692871, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1805, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.518707275390625, 1036.123779296875, 276.9696044921875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1806, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.198043823242187, 1033.8028564453125, 278.339752197265625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1807, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1808, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1809, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+1810, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1811, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1812, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1813, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1814, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1815, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3925628662109375, 1097.8740234375, 255.5662994384765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1816, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -77.1628494262695312, 1101.69091796875, 255.19427490234375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1817, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1818, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -76.5756301879882812, 1094.644287109375, 254.72686767578125, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1819, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.490524291992187, 1025.8621826171875, 271.937225341796875, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1820, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -189.130630493164062, 1032.52783203125, 272.943817138671875, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1821, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -157.0411376953125, 1115.2933349609375, 281.6597900390625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1822, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1823, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -161.82733154296875, 1116.5562744140625, 283.275543212890625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1824, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.047470092773437, 1113.501220703125, 282.066314697265625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1825, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1826, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.206558227539062, 1110.4825439453125, 281.003265380859375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1827, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1828, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1829, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1830, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1831, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.206558227539062, 1110.4825439453125, 281.003265380859375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1832, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -161.82733154296875, 1116.5562744140625, 283.275543212890625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1833, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -157.0411376953125, 1115.2933349609375, 281.6597900390625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1834, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1835, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1836, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1837, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1838, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -127.442550659179687, 1114.1541748046875, 273.872650146484375, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1839, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1840, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -132.318130493164062, 1115.0093994140625, 274.12762451171875, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1841, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1842, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -128.198562622070312, 1109.2623291015625, 272.488433837890625, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1843, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.295791625976562, 1039.944091796875, 277.9326171875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1844, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -207.377716064453125, 1033.5799560546875, 276.84124755859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1845, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -202.718658447265625, 1035.2520751953125, 276.413421630859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1846, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -205.868728637695312, 1036.7774658203125, 277.4051513671875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1847, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -161.82733154296875, 1116.5562744140625, 283.275543212890625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1848, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1849, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.047470092773437, 1113.501220703125, 282.066314697265625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1850, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -157.0411376953125, 1115.2933349609375, 281.6597900390625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1851, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.518707275390625, 1036.123779296875, 276.9696044921875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1852, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.206558227539062, 1110.4825439453125, 281.003265380859375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1853, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1854, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.198043823242187, 1033.8028564453125, 278.339752197265625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1855, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3925628662109375, 1097.8740234375, 255.5662994384765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1856, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.8709716796875, 1103.2177734375, 254.9691314697265625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1857, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.4098358154296875, 1098.289306640625, 254.45452880859375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1858, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.8077926635742187, 1102.8568115234375, 256.306884765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1859, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.295791625976562, 1039.944091796875, 277.9326171875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1860, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -207.377716064453125, 1033.5799560546875, 276.84124755859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1861, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -202.718658447265625, 1035.2520751953125, 276.413421630859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1862, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1863, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.8077926635742187, 1102.8568115234375, 256.306884765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1864, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.8709716796875, 1103.2177734375, 254.9691314697265625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1865, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -80.3925628662109375, 1097.8740234375, 255.5662994384765625, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1866, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.9508056640625, 1053.2471923828125, 282.45849609375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1867, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -75.4098358154296875, 1098.289306640625, 254.45452880859375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1868, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.451019287109375, 1047.8851318359375, 280.75250244140625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1869, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -78.1317672729492187, 1100.5458984375, 255.3709564208984375, 3.224734067916870117, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1870, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.969818115234375, 1052.8116455078125, 281.929595947265625, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1871, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -212.700912475585937, 1050.566162109375, 281.647064208984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1872, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.386337280273437, 1048.2662353515625, 281.465423583984375, 1.483579993247985839, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1873, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1874, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -132.318130493164062, 1115.0093994140625, 274.12762451171875, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1875, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -130.2872314453125, 1112.1151123046875, 273.42694091796875, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1876, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1877, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1878, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -128.198562622070312, 1109.2623291015625, 272.488433837890625, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1879, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -127.442550659179687, 1114.1541748046875, 273.872650146484375, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1880, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1881, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1882, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -102.225700378417968, 1099.238037109375, 263.042694091796875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1883, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1884, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1885, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -101.029670715332031, 1104.0928955078125, 262.58026123046875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1886, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -97.3708572387695312, 1098.0419921875, 260.941986083984375, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1887, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1888, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1889, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -104.812873840332031, 1103.5166015625, 264.101959228515625, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1890, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -102.225700378417968, 1099.238037109375, 263.042694091796875, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1891, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -100.551261901855468, 1106.0347900390625, 262.82073974609375, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1892, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -97.94708251953125, 1101.8251953125, 261.4620361328125, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1893, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.198043823242187, 1033.8028564453125, 278.339752197265625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1894, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1895, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.518707275390625, 1036.123779296875, 276.9696044921875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1896, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -101.388481140136718, 1102.636474609375, 262.77008056640625, 3.685442924499511718, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1897, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.759033203125, 1114.269287109375, 281.920745849609375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1898, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1899, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.974716186523437, 1035.08837890625, 274.1741943359375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1900, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -188.930068969726562, 1028.706298828125, 272.042724609375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1901, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -187.325531005859375, 1033.3890380859375, 272.71881103515625, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1902, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1903, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.4935302734375, 1107.4141845703125, 281.102569580078125, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1904, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -132.318130493164062, 1115.0093994140625, 274.12762451171875, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1905, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -127.442550659179687, 1114.1541748046875, 273.872650146484375, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1906, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -133.13189697265625, 1110.0760498046875, 273.865997314453125, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1907, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -193.643402099609375, 1030.375, 273.607513427734375, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1908, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -128.198562622070312, 1109.2623291015625, 272.488433837890625, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1909, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -191.490524291992187, 1025.8621826171875, 271.937225341796875, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1910, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -130.2872314453125, 1112.1151123046875, 273.42694091796875, 2.978111028671264648, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1911, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -189.130630493164062, 1032.52783203125, 272.943817138671875, 2.80132603645324707, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1912, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1913, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1914, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1915, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1916, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1917, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.061553955078125, 1069.37939453125, 285.92333984375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1918, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -211.66387939453125, 1076.4248046875, 287.5048828125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1919, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -734.22198486328125, 1013.1300048828125, 321.128997802734375, 2.771379947662353515, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1920, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -723.6929931640625, 994.531005859375, 320.930999755859375, 2.376600027084350585, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1921, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -740.0679931640625, 1023.05999755859375, 321.15399169921875, 3.197170019149780273, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1922, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -735.92401123046875, 1027.4300537109375, 321.144012451171875, 2.607409954071044921, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1923, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -734.37701416015625, 1019.66998291015625, 321.14300537109375, 0.47335401177406311, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1924, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -742.80401611328125, 1028.81005859375, 321.15899658203125, 3.274970054626464843, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1925, 72390, 1906, 9570, 9572, '12', '0', 0, 0, 0, -648.47027587890625, 1077.4267578125, 320.897186279296875, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 72390 (Area: 9572 - Difficulty: 12)
(@CGUID+1926, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -163.053802490234375, 1111.708984375, 282.5950927734375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1927, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -161.82733154296875, 1116.5562744140625, 283.275543212890625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1928, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -157.0411376953125, 1115.2933349609375, 281.6597900390625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1929, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -160.047470092773437, 1113.501220703125, 282.066314697265625, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1930, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -158.206558227539062, 1110.4825439453125, 281.003265380859375, 2.89376997947692871, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1931, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -202.718658447265625, 1035.2520751953125, 276.413421630859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1932, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -204.295791625976562, 1039.944091796875, 277.9326171875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1933, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -207.377716064453125, 1033.5799560546875, 276.84124755859375, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1934, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.018798828125, 1038.302978515625, 278.2965087890625, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1935, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -205.868728637695312, 1036.7774658203125, 277.4051513671875, 1.905212044715881347, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1936, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -761.10400390625, 1055.25, 320.9639892578125, 2.221529960632324218, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1937, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -755.97900390625, 1035, 321.12701416015625, 2.849179983139038085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1938, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -747.7860107421875, 1014.3599853515625, 321.207000732421875, 4.194439888000488281, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852) (possible waypoints or random movement)
(@CGUID+1939, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -183.0693359375, 1125.7802734375, 290.280029296875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1940, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -184.88580322265625, 1121.1219482421875, 289.359588623046875, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1941, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -178.476028442382812, 1123.935302734375, 288.75, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1942, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -180.227432250976562, 1119.305419921875, 287.854278564453125, 2.769790887832641601, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1943, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -209.903579711914062, 1073.02685546875, 286.66705322265625, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+1944, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -215.311309814453125, 1077.582763671875, 287.79180908203125, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1945, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -210.375274658203125, 1077.954345703125, 287.779144287109375, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1946, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -214.885406494140625, 1072.6009521484375, 286.86279296875, 3.22687697410583496, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+1947, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -760.62701416015625, 1022.94000244140625, 321.27398681640625, 2.235699892044067382, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1948, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -767.16802978515625, 1039.489990234375, 321.239013671875, 1.282920002937316894, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1949, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -755.85797119140625, 1028.6400146484375, 321.19000244140625, 2.771379947662353515, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1950, 136324, 1906, 9570, 9572, '12', '0', 0, 0, 0, -769.89898681640625, 1034.02001953125, 321.27398681640625, 4.245490074157714843, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136324 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+1951, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -734.38201904296875, 1019.70001220703125, 321.14300537109375, 0.59775400161743164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1952, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -735.92401123046875, 1027.4300537109375, 321.144012451171875, 2.607409954071044921, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1953, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -755.85797119140625, 1028.6400146484375, 321.19000244140625, 2.771379947662353515, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1954, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -742.80401611328125, 1028.81005859375, 321.15899658203125, 3.274970054626464843, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1955, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -760.62701416015625, 1022.94000244140625, 321.27398681640625, 2.235699892044067382, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1956, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -755.97900390625, 1035, 321.12701416015625, 2.849179983139038085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1957, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -740.0679931640625, 1023.05999755859375, 321.15399169921875, 3.197170019149780273, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1958, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -767.16802978515625, 1039.489990234375, 321.239013671875, 1.282920002937316894, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1959, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -761.10400390625, 1055.25, 320.9639892578125, 2.221529960632324218, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1960, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -773.64202880859375, 1047.9100341796875, 321.194000244140625, 5.010149955749511718, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1961, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -768.718994140625, 1025.4300537109375, 321.27398681640625, 3.504549980163574218, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1962, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -723.6929931640625, 994.531005859375, 320.930999755859375, 2.376600027084350585, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12)
(@CGUID+1963, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -747.7860107421875, 1014.3599853515625, 321.207000732421875, 4.194439888000488281, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1964, 134492, 1906, 9570, 9572, '12', '0', 0, 0, 0, -759.04498291015625, 1123.199951171875, 322.44500732421875, 2.78992009162902832, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134492 (Area: 9572 - Difficulty: 12)
(@CGUID+1965, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -734.22198486328125, 1013.1300048828125, 321.128997802734375, 2.771379947662353515, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1966, 134478, 1906, 9570, 9572, '12', '0', 0, 0, 0, -763.37298583984375, 1105.800048828125, 321.0260009765625, 2.351700067520141601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134478 (Area: 9572 - Difficulty: 12)
(@CGUID+1967, 134620, 1906, 9570, 9572, '12', '0', 0, 0, 0, -760.60601806640625, 1111.68994140625, 321.097991943359375, 2.428329944610595703, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134620 (Area: 9572 - Difficulty: 12)
(@CGUID+1968, 134831, 1906, 9570, 9572, '12', '0', 0, 0, 0, -770.802001953125, 1105.6199951171875, 321.102996826171875, 2.26484990119934082, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134831 (Area: 9572 - Difficulty: 12)
(@CGUID+1969, 134692, 1906, 9570, 9572, '12', '0', 0, 0, 0, -754.56597900390625, 1110.0899658203125, 321.055999755859375, 6.027860164642333984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134692 (Area: 9572 - Difficulty: 12)
(@CGUID+1970, 134836, 1906, 9570, 9572, '12', '0', 0, 0, 0, -762.73797607421875, 1127.4000244140625, 322.44500732421875, 2.738749980926513671, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134836 (Area: 9572 - Difficulty: 12)
(@CGUID+1971, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -775.9169921875, 1079.5, 321.079986572265625, 2.235699892044067382, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1972, 134593, 1906, 9570, 9572, '12', '0', 0, 0, 0, -869.07000732421875, 1212.6099853515625, 321.57501220703125, 5.418300151824951171, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134593 (Area: 9572 - Difficulty: 12)
(@CGUID+1973, 134836, 1906, 9570, 9572, '12', '0', 0, 0, 0, -765.57000732421875, 1125.010009765625, 322.44500732421875, 2.764029979705810546, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134836 (Area: 9572 - Difficulty: 12)
(@CGUID+1974, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -773.64202880859375, 1047.9100341796875, 321.194000244140625, 5.010149955749511718, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1975, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -768.718994140625, 1025.4300537109375, 321.27398681640625, 3.504549980163574218, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1976, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -775.9169921875, 1079.5, 321.079986572265625, 2.235699892044067382, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1977, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -778.56597900390625, 1028.25, 321.32000732421875, 0.94109499454498291, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1978, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -782.32098388671875, 1013.6400146484375, 321.37701416015625, 2.235699892044067382, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852) (possible waypoints or random movement)
(@CGUID+1979, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -791.98602294921875, 1009.6199951171875, 321.376007080078125, 4.797830104827880859, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1980, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -775.78302001953125, 1011.71002197265625, 321.378997802734375, 4.298540115356445312, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1981, 134836, 1906, 9570, 9572, '12', '0', 0, 0, 0, -780.56402587890625, 1108.1600341796875, 322.444000244140625, 2.024039983749389648, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134836 (Area: 9572 - Difficulty: 12)
(@CGUID+1982, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -778.56597900390625, 1028.25, 321.32000732421875, 0.94109499454498291, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1983, 134836, 1906, 9570, 9572, '12', '0', 0, 0, 0, -786.97601318359375, 1105.0799560546875, 322.47698974609375, 2.034399986267089843, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134836 (Area: 9572 - Difficulty: 12)
(@CGUID+1984, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -778.2080078125, 1023.969970703125, 321.32000732421875, 4.398489952087402343, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1985, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -769.61602783203125, 1009.6300048828125, 321.381011962890625, 1.527590036392211914, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1986, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -769.697998046875, 1009.46002197265625, 321.3800048828125, 1.527590036392211914, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1987, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -775.7449951171875, 1011.75, 321.378997802734375, 4.298540115356445312, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1988, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -782.68597412109375, 1013.41998291015625, 321.37701416015625, 2.235699892044067382, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1989, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -778.2080078125, 1023.969970703125, 321.32000732421875, 4.398489952087402343, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1990, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -784.08502197265625, 998.89599609375, 321.376007080078125, 4.194439888000488281, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1991, 136384, 1906, 9570, 9572, '12', '0', 0, 0, 0, -791.98602294921875, 1009.6199951171875, 321.376007080078125, 4.797830104827880859, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136384 (Area: 9572 - Difficulty: 12) (Auras: 257852 - 257852)
(@CGUID+1992, 136326, 1906, 9570, 9572, '12', '0', 0, 0, 0, -784.08502197265625, 998.89599609375, 321.376007080078125, 4.194439888000488281, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136326 (Area: 9572 - Difficulty: 12) (Auras: 192921 - 192921)
(@CGUID+1993, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1994, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+1995, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1996, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+1997, 72390, 1906, 9570, 9572, '12', '0', 0, 0, 0, -756.656982421875, 1028.0374755859375, 321.116302490234375, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 72390 (Area: 9572 - Difficulty: 12)
(@CGUID+1998, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+1999, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+2000, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2001, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -823.66302490234375, 984.98797607421875, 321.253997802734375, 0.836148977279663085, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2002, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -810.260009765625, 974.14801025390625, 321.128997802734375, 0.809147000312805175, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893) (possible waypoints or random movement)
(@CGUID+2003, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2004, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2005, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2006, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2007, 136955, 1906, 9570, 9572, '12', '0', 0, 0, 0, -838.69598388671875, 978.76397705078125, 320.832000732421875, 1.042379975318908691, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136955 (Area: 9572 - Difficulty: 12) (Auras: 212061 - 212061, 155893 - 155893)
(@CGUID+2008, 131018, 1906, 9570, 9572, '12', '0', 0, 0, 0, -825.56097412109375, 970.36297607421875, 320.819000244140625, 0.807262003421783447, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131018 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2009, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.14801025390625, 986.62298583984375, 320.99798583984375, 0.126873001456260681, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2010, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -832.9639892578125, 962.97601318359375, 320.8699951171875, 0.909193992614746093, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2011, 136955, 1906, 9570, 9572, '12', '0', 0, 0, 0, -819.37298583984375, 958.85101318359375, 320.7760009765625, 1.042379975318908691, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136955 (Area: 9572 - Difficulty: 12) (Auras: 212061 - 212061, 155893 - 155893)
(@CGUID+2012, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -868.7969970703125, 987.697021484375, 321.02099609375, 0.200211003422737121, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2013, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -865.7239990234375, 983.218994140625, 320.87298583984375, 0.200157999992370605, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2014, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -869.7860107421875, 992.5980224609375, 321.092010498046875, 0.200281992554664611, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2015, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2016, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2017, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2018, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2019, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -874.68402099609375, 991.60400390625, 321.092010498046875, 0.200543001294136047, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2020, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -866.80401611328125, 977.89801025390625, 320.944000244140625, 0.199836000800132751, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2021, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -871.70599365234375, 976.90301513671875, 320.967010498046875, 0.200365006923675537, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2022, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -872.697998046875, 981.802978515625, 320.967010498046875, 0.200418993830680847, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2023, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -873.6920166015625, 986.7039794921875, 321.092010498046875, 0.200332999229431152, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2024, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -813.19097900390625, 934.53802490234375, 320.8699951171875, 1.698709964752197265, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2025, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2026, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2027, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2028, 136955, 1906, 9570, 9572, '12', '0', 0, 0, 0, -814.55401611328125, 903.45697021484375, 324.076995849609375, 1.574830055236816406, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136955 (Area: 9572 - Difficulty: 12) (Auras: 212061 - 212061, 155893 - 155893)
(@CGUID+2029, 136955, 1906, 9570, 9572, '12', '0', 0, 0, 0, -809.4169921875, 903.58001708984375, 324.076995849609375, 1.574830055236816406, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136955 (Area: 9572 - Difficulty: 12) (Auras: 212061 - 212061, 155893 - 155893)
(@CGUID+2030, 136955, 1906, 9570, 9572, '12', '0', 0, 0, 0, -815.552001953125, 899.5830078125, 324.076995849609375, 1.574830055236816406, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136955 (Area: 9572 - Difficulty: 12) (Auras: 212061 - 212061, 155893 - 155893)
(@CGUID+2031, 136955, 1906, 9570, 9572, '12', '0', 0, 0, 0, -808.80401611328125, 900.0419921875, 324.076995849609375, 1.574830055236816406, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136955 (Area: 9572 - Difficulty: 12) (Auras: 212061 - 212061, 155893 - 155893)
(@CGUID+2032, 136955, 1906, 9570, 9572, '12', '0', 0, 0, 0, -812.10198974609375, 900.9949951171875, 324.076995849609375, 1.574830055236816406, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136955 (Area: 9572 - Difficulty: 12) (Auras: 212061 - 212061, 155893 - 155893)
(@CGUID+2033, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2034, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2035, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2036, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2037, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2038, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2039, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2040, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2041, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2042, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
-- (@CGUID+2043, 136352, 1906, 9570, 9572, '12', '0', 0, 0, 0, -772.40301513671875, 1021.5, 322.384002685546875, 0.731365978717803955, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136352 (Area: 9572 - Difficulty: 12) (Auras: 243010 - 243010)
(@CGUID+2044, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2045, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2046, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2047, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2048, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2049, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2050, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2051, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2052, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2053, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2054, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2055, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2056, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2057, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2058, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2059, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2060, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2061, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2062, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2063, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2064, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2065, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2066, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2067, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2068, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2069, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2070, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2071, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2072, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2073, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2074, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -910.23797607421875, 995.8070068359375, 321.157958984375, 3.026459217071533203, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2075, 136956, 1906, 9570, 9572, '12', '0', 0, 0, 0, -913.99102783203125, 996.24102783203125, 321.282989501953125, 6.168051719665527343, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136956 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2076, 136956, 1906, 9570, 9572, '12', '0', 0, 0, 0, -923.60797119140625, 1017.97998046875, 321.308013916015625, 2.517475366592407226, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136956 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2077, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -924.58001708984375, 1018.67999267578125, 321.2169189453125, 5.659068107604980468, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2078, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2079, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2080, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2081, 136955, 1906, 9570, 9572, '12', '0', 0, 0, 0, -900.8773193359375, 903.95843505859375, 339.80029296875, 4.187412261962890625, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136955 (Area: 9572 - Difficulty: 12) (Auras: 212061 - 212061, 155893 - 155893)
(@CGUID+2082, 136956, 1906, 9570, 9572, '12', '0', 0, 0, 0, -901.17730712890625, 903.44049072265625, 339.80029296875, 1.045819401741027832, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136956 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2083, 136956, 1906, 9570, 9572, '12', '0', 0, 0, 0, -902.83392333984375, 898.36260986328125, 339.80029296875, 3.92568373680114746, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136956 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2084, 136956, 1906, 9570, 9572, '12', '0', 0, 0, 0, -943.52899169921875, 1001.54998779296875, 321.3179931640625, 1.489528656005859375, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136956 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2085, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -943.28302001953125, 1004.57000732421875, 321.3179931640625, 4.631121158599853515, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2086, 136955, 1906, 9570, 9572, '12', '0', 0, 0, 0, -905.31201171875, 895.8909912109375, 340.27569580078125, 0.784091055393218994, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136955 (Area: 9572 - Difficulty: 12) (Auras: 212061 - 212061, 155893 - 155893)
(@CGUID+2087, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -936.58502197265625, 940.40802001953125, 339.8590087890625, 6.210400104522705078, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2088, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2089, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2090, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2091, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2092, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2093, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2094, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2095, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2096, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2097, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2098, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2099, 136955, 1906, 9570, 9572, '12', '0', 0, 0, 0, -875.5101318359375, 861.49334716796875, 339.80029296875, 1.497201919555664062, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136955 (Area: 9572 - Difficulty: 12) (Auras: 212061 - 212061, 155893 - 155893)
(@CGUID+2100, 136956, 1906, 9570, 9572, '12', '0', 0, 0, 0, -875.40625, 862.90234375, 339.80029296875, 4.638794422149658203, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136956 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2101, 136955, 1906, 9570, 9572, '12', '0', 0, 0, 0, -878.74700927734375, 863.94598388671875, 339.885009765625, 5.980395317077636718, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136955 (Area: 9572 - Difficulty: 12) (Auras: 212061 - 212061, 155893 - 155893)
(@CGUID+2102, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2103, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2104, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2105, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2106, 136956, 1906, 9570, 9572, '12', '0', 0, 0, 0, -931.15313720703125, 903.52874755859375, 339.80029296875, 2.990488529205322265, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136956 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2107, 136956, 1906, 9570, 9572, '12', '0', 0, 0, 0, -941.79998779296875, 908.13702392578125, 339.885009765625, 4.780548095703125, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136956 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2108, 136955, 1906, 9570, 9572, '12', '0', 0, 0, 0, -932.9224853515625, 903.79815673828125, 339.80029296875, 6.132081508636474609, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136955 (Area: 9572 - Difficulty: 12) (Auras: 212061 - 212061, 155893 - 155893)
(@CGUID+2109, 136956, 1906, 9570, 9572, '12', '0', 0, 0, 0, -936.18902587890625, 903.625, 339.885009765625, 3.219157218933105468, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136956 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2110, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -914.75897216796875, 876.98101806640625, 368.496002197265625, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2111, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2112, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2113, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2114, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2115, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2116, 136955, 1906, 9570, 9572, '12', '0', 0, 0, 0, -941.4639892578125, 903.21502685546875, 339.885009765625, 1.638955235481262207, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136955 (Area: 9572 - Difficulty: 12) (Auras: 212061 - 212061, 155893 - 155893)
(@CGUID+2117, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -906.3590087890625, 861.5260009765625, 368.496002197265625, 5.05505990982055664, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2118, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -898.05401611328125, 846.9320068359375, 368.496002197265625, 2.766560077667236328, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2119, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -913.67401123046875, 843.26898193359375, 368.496002197265625, 5.139490127563476562, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2120, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -903.46502685546875, 832.1669921875, 368.496002197265625, 3.565259933471679687, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2121, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -948.468994140625, 873.864990234375, 368.427001953125, 3.165329933166503906, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: 155893 - 155893)
(@CGUID+2122, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2123, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2124, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2125, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2126, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2127, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -900.22100830078125, 817.97198486328125, 368.496002197265625, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2128, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -865.8489990234375, 814.80902099609375, 368.496002197265625, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2129, 72390, 1906, 9570, 9572, '12', '0', 0, 0, 0, -968.594482421875, 903.52728271484375, 364.89581298828125, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 72390 (Area: 9572 - Difficulty: 12)
(@CGUID+2130, 131040, 1906, 9570, 9572, '12', '0', 0, 0, 0, -956.74298095703125, 879.44097900390625, 368.427001953125, 3.13229990005493164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 131040 (Area: 9572 - Difficulty: 12) (Auras: ) (possible waypoints or random movement)
(@CGUID+2131, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -883.9580078125, 821.6510009765625, 368.496002197265625, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2132, 136327, 1906, 9570, 9572, '12', '0', 0, 0, 0, -961.2340087890625, 876.31402587890625, 369.496002197265625, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 136327 (Area: 9572 - Difficulty: 12) (Auras: 267897 - 267897)
(@CGUID+2133, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -922.16302490234375, 834.75201416015625, 368.496002197265625, 6.00478982925415039, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2134, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -891.24102783203125, 806.97198486328125, 368.496002197265625, 3.410959959030151367, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2135, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -914.2449951171875, 816.79302978515625, 368.496002197265625, 4.085529804229736328, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2136, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2137, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2138, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2139, 142765, 1906, 9570, 9572, '12', '0', 0, 0, 0, -909.2860107421875, 804.9639892578125, 368.496002197265625, 1.657690048217773437, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142765 (Area: 9572 - Difficulty: 12) (Auras: )
(@CGUID+2140, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -867.156005859375, 790.11102294921875, 368.496002197265625, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2141, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -933.33697509765625, 809.68798828125, 371.1510009765625, 5.232999801635742187, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2142, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -905.0570068359375, 802.99102783203125, 368.496002197265625, 1.369879961013793945, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2143, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -895.427001953125, 792.75201416015625, 368.496002197265625, 5.852550029754638671, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2144, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -922.7659912109375, 800.66302490234375, 368.496002197265625, 0.757242023944854736, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2145, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -908.29998779296875, 788.50701904296875, 368.496002197265625, 0.091572299599647521, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2146, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -897.19097900390625, 774.65301513671875, 368.496002197265625, 5.276860237121582031, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2147, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -938.7239990234375, 793.67999267578125, 371.1510009765625, 2.38331007957458496, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2148, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -922.39898681640625, 782.45001220703125, 368.496002197265625, 4.141540050506591796, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2149, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2150, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2151, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2152, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2153, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2154, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2155, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2156, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2157, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2158, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2159, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2160, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2161, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2162, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2163, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2164, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2165, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2166, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2167, 72390, 1906, 9570, 9572, '12', '0', 0, 0, 0, -994.385009765625, 805.36102294921875, 438.488006591796875, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 72390 (Area: 9572 - Difficulty: 12)
(@CGUID+2168, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2169, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2170, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2171, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -911.81402587890625, 774.135009765625, 368.496002197265625, 0.886471986770629882, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2172, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2173, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2174, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2175, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2176, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -900.55401611328125, 757.37298583984375, 368.496002197265625, 2.479700088500976562, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2177, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2178, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2179, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2180, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2181, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2182, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2183, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2184, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2185, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2186, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2187, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2188, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2189, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2190, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2191, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2192, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2193, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2194, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2195, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2196, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2197, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2198, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2199, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2200, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2201, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2202, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2203, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2204, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2205, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2206, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2207, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2208, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2209, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2210, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2211, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2212, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2213, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2214, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2215, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2216, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2217, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2218, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2219, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2220, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2221, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2222, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2223, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2224, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2225, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2226, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2227, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2228, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2229, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2230, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2231, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2232, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2233, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2234, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2235, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2236, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2237, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2238, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2239, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2240, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2241, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2242, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2243, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2244, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2245, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2246, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2247, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2248, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2249, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478); -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+2250, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2251, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2252, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2253, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2254, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2255, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2256, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2257, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2258, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2259, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2260, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2261, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2262, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2263, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2264, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2265, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2266, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2267, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2268, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2269, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2270, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2271, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2272, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2273, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2274, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2275, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2276, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2277, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2278, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2279, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2280, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2281, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2282, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2283, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2284, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2285, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2286, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2287, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2288, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2289, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2290, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2291, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2292, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2293, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2294, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2295, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2296, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2297, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2298, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2299, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2300, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2301, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2302, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2303, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2304, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2305, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2306, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2307, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2308, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2309, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2310, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2311, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2312, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2313, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2314, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2315, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2316, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2317, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2318, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2319, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2320, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2321, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2322, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2323, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2324, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2325, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2326, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2327, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2328, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2329, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2330, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2331, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2332, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2333, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2334, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2335, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2336, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2337, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2338, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2339, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2340, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2341, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2342, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2343, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2344, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2345, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2346, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2347, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2348, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2349, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2350, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2351, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -906.76898193359375, 747.2030029296875, 368.496002197265625, 4.510660171508789062, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2352, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -919.71697998046875, 734.34002685546875, 368.496002197265625, 2.621479988098144531, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2353, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2354, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2355, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2356, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2357, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2358, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2359, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2360, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2361, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2362, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2363, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2364, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2365, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2366, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2367, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2368, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2369, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2370, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2371, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2372, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2373, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2374, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2375, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2376, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2377, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2378, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2379, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2380, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2381, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2382, 142799, 1906, 9570, 9572, '12', '0', 0, 0, 0, -899.822998046875, 736.18402099609375, 368.496002197265625, 0.759936988353729248, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 142799 (Area: 9572 - Difficulty: 12) (Auras: 29266 - 29266)
(@CGUID+2383, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2384, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2385, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2386, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2387, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2388, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2389, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2390, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2391, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2392, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2393, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2394, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2395, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2396, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2397, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2398, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2399, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2400, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2401, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2402, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2403, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2404, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2405, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2406, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2407, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2408, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2409, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2410, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2411, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2412, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2413, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2414, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2415, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2416, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2417, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2418, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2419, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2420, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2421, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2422, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2423, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2424, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2425, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2426, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2427, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2428, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2429, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2430, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2431, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2432, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2433, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2434, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2435, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2436, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2437, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2438, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2439, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2440, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2441, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2442, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2443, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2444, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2445, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2446, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2447, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2448, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12) (possible waypoints or random movement)
(@CGUID+2449, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459) (possible waypoints or random movement)
(@CGUID+2450, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2451, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2452, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2453, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2454, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2455, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2456, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66644287109375, 1199.191162109375, 321.215057373046875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2457, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -856.66937255859375, 1194.194091796875, 321.21502685546875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2458, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2459, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2460, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2461, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2462, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2463, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2464, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2465, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2466, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2467, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2468, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2469, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2470, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2471, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.16937255859375, 1194.1932373046875, 321.21514892578125, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2472, 134428, 1906, 9570, 9572, '12', '0', 0, 0, 0, -851.66937255859375, 1194.191162109375, 321.21600341796875, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134428 (Area: 9572 - Difficulty: 12) (Auras: 42459 - 42459)
(@CGUID+2473, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -858.66937255859375, 1194.1953125, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134427 (Area: 9572 - Difficulty: 12)
(@CGUID+2474, 134429, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20697021484375, 1190.65771484375, 321.215423583984375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478), -- 134429 (Area: 9572 - Difficulty: 12)
(@CGUID+2475, 134427, 1906, 9570, 9572, '12', '0', 0, 0, 0, -855.20281982421875, 1197.728759765625, 321.221038818359375, 5.497200965881347656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 31478); -- 134427 (Area: 9572 - Difficulty: 12)


DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+498 AND @CGUID+2475;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+498, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- 135890


INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+500, 0, 80358, 0, 1, 0, 0, 0, 0, ''), -- 135708
(@CGUID+501, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- 134493
(@CGUID+502, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134478
(@CGUID+503, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134460
(@CGUID+504, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134692
(@CGUID+505, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134689
(@CGUID+506, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134461
(@CGUID+507, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134507
(@CGUID+508, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+509, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134591
(@CGUID+510, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134492
(@CGUID+511, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134507
(@CGUID+512, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+513, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+514, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+515, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+516, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+517, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+518, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+519, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+520, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+521, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+522, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+523, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+524, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+525, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+526, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+527, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+528, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+529, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+530, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+531, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+532, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+533, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+534, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+535, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+536, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+537, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+538, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+539, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+540, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+541, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+542, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+543, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+544, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+545, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+546, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+547, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+548, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+549, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+550, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+551, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+552, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+553, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+554, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+555, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+556, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+557, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+558, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+559, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+560, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+561, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+562, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+563, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+564, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+565, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+566, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+567, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+568, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+569, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+570, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+571, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+572, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+573, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+574, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+575, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+576, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+577, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+578, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+579, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+580, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+581, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+582, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+583, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+584, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+585, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+586, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+587, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+588, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+589, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+590, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+591, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+592, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+593, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+594, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+595, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+596, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+597, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+598, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+599, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+600, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+601, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+602, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+603, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+604, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+605, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134507
(@CGUID+606, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+607, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+608, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+609, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+610, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+611, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+612, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+613, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+614, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+615, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+616, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+617, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+618, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+619, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+620, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+621, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+622, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+623, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+624, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+625, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+626, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+627, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+628, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+629, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+630, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+631, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+632, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+633, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+634, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+635, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+636, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+637, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+638, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+639, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+640, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+641, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+642, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+643, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+644, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+645, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+646, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+647, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+648, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+649, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+650, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+651, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+652, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+653, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+654, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+655, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+656, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+657, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+658, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+659, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+660, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+661, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+662, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+663, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+664, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+665, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+666, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+667, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+668, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+669, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+670, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+671, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+672, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+673, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+674, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+675, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+676, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+677, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+678, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+679, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+680, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+681, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+682, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+683, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+684, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+685, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+686, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+687, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+688, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+689, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+690, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+691, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+692, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+693, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+694, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+695, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+696, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+697, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+698, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+699, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+700, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+701, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+702, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+703, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+704, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+705, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+706, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+707, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+708, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+709, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+710, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+711, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+712, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+713, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+714, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+715, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+716, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+717, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+718, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+719, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+720, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+721, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+722, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+723, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+724, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+725, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134507
(@CGUID+726, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+727, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+728, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+729, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+730, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+731, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+732, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+733, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+734, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+735, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+736, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+737, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+738, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+739, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+740, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+741, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+742, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+743, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+744, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+745, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+746, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+747, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+748, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+749, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- 134432

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+750, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+751, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+752, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+753, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+754, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+755, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+756, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+757, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+758, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+759, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+760, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+761, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+762, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+763, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+764, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+765, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+766, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+767, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+768, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+769, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+770, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+771, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+772, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+773, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+774, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+775, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+776, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+777, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+778, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+779, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+780, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+781, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+782, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+783, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+784, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+785, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+786, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+787, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+788, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+789, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+790, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+791, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+792, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+793, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+794, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+795, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+796, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+797, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+798, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+799, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+800, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+801, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+802, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+803, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+804, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+805, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+806, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+807, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+808, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+809, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+810, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+811, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+812, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+813, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+814, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+815, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+816, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+817, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+818, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+819, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+820, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+821, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+822, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+823, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+824, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+825, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+826, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+827, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+828, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+829, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+830, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+831, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+832, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+833, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+834, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+835, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+836, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+837, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+838, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+839, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+840, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+841, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134507
(@CGUID+842, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+843, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+844, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+845, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+846, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+847, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+848, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+849, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+850, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+851, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+852, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+853, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+854, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+855, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134507
(@CGUID+856, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+857, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+858, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+859, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+860, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+861, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134507
(@CGUID+862, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+863, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+864, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+865, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+866, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+867, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+868, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+869, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+870, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+871, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+872, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+873, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+874, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+875, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+876, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+877, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+878, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+879, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+880, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+881, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+882, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+883, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+884, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+885, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+886, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+887, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+888, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+889, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+890, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+891, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+892, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+893, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+894, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+895, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+896, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+897, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+898, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+899, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+900, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+901, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+902, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+903, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+904, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+905, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+906, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+907, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+908, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+909, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+910, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+911, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+912, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+913, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+914, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+915, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+916, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+917, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+918, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+919, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+920, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+921, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+922, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+923, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+924, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+925, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+926, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+927, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+928, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+929, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+930, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+931, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+932, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+933, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+934, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+935, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+936, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+937, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+938, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+939, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+940, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+941, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+942, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+943, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+944, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+945, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+946, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+947, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+948, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+949, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+950, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+951, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+952, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+953, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+954, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+955, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+956, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+957, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+958, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+959, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+960, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+961, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+962, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+963, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+964, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+965, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+966, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+967, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+968, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+969, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+970, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+971, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+972, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+973, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+974, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+975, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134507
(@CGUID+976, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+977, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+978, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+979, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+980, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+981, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+982, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+983, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+984, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+985, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+986, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+987, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+988, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+989, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+990, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+991, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+992, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+993, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134507
(@CGUID+994, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+995, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+996, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+997, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+998, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+999, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- 134432

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+1000, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1001, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1002, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1003, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1004, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1005, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1006, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1007, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1008, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1009, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1010, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1011, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1012, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1013, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1014, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1015, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1016, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1017, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1018, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1019, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1020, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1021, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1022, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1023, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1024, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1025, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1026, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1027, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1028, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1029, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1030, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1031, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1032, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1033, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1034, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1035, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1036, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1037, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1038, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1039, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1040, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1041, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1042, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1043, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1044, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1045, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1046, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1047, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1048, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1049, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1050, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1051, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1052, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1053, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1054, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1055, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1056, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1057, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1058, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1059, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1060, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1061, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1062, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1063, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1064, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1065, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1066, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1067, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1068, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1069, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1070, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1071, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1072, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1073, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1074, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1075, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1076, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1077, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 72390
(@CGUID+1078, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134469
(@CGUID+1079, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134507
(@CGUID+1080, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1081, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1082, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1083, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1084, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1085, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1086, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1087, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1088, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1089, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1090, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1091, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1092, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1093, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1094, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1095, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134756
(@CGUID+1096, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134689
(@CGUID+1097, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- 134493
(@CGUID+1098, 0, 0, 0, 1, 0, 0, 0, 0, '46598'), -- 134692 - 46598 - 46598
(@CGUID+1099, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134461
(@CGUID+1100, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1101, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1102, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1103, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1104, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1105, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1106, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1107, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1108, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1109, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1110, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1111, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1112, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142818
(@CGUID+1113, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136359
(@CGUID+1114, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136356
(@CGUID+1115, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136360
(@CGUID+1116, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134507
(@CGUID+1117, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1118, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1119, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1120, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1121, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1122, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1123, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1124, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1125, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1126, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1127, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1128, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1129, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1130, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1131, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1132, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1133, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1134, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1135, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1136, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1137, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1138, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1139, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1140, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1141, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1142, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1143, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1144, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1145, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1146, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1147, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1148, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1149, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1150, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1151, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1152, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1153, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1154, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1155, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1156, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1157, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1158, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1159, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1160, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1161, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1162, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1163, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1164, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134507
(@CGUID+1165, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1166, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1167, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1168, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1169, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1170, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1171, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1172, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1173, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1174, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1175, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1176, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1177, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1178, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1179, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1180, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1181, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1182, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1183, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1184, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1185, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1186, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1187, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1188, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1189, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1190, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1191, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1192, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1193, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1194, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1195, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1196, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1197, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1198, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1199, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1200, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134432
(@CGUID+1201, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1202, 0, 0, 0, 1, 0, 0, 0, 0, '262316'), -- 134431 - 262316 - 262316
(@CGUID+1203, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1204, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1205, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1206, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1207, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1208, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1209, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1210, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1211, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1212, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1213, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1214, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1215, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 72390
(@CGUID+1216, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134627
(@CGUID+1217, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1218, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1219, 0, 0, 0, 1, 0, 0, 0, 0, '18950'), -- 134433 - 18950 - 18950
(@CGUID+1220, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1221, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1222, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1223, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1224, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1225, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1226, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1227, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1228, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134834
(@CGUID+1229, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 72390
(@CGUID+1230, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134620
(@CGUID+1231, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134831
(@CGUID+1232, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1233, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1234, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1235, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1236, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1237, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1238, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1239, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1240, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1241, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1242, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134475
(@CGUID+1243, 0, 0, 0, 1, 0, 0, 0, 0, '265382'), -- 134692 - 265382 - 265382
(@CGUID+1244, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- 134836
(@CGUID+1245, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- 134836
(@CGUID+1246, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- 134836
(@CGUID+1247, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134478
(@CGUID+1248, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- 134836
(@CGUID+1249, 0, 0, 0, 1, 0, 0, 0, 0, '42459'); -- 134428 - 42459 - 42459

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+1250, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1251, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1252, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1253, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1254, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1255, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1256, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1257, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 72390
(@CGUID+1258, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136369
(@CGUID+1259, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134865
(@CGUID+1260, 0, 0, 0, 1, 0, 0, 0, 0, '69149'), -- 134427 - 69149 - 69149
(@CGUID+1261, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136358
(@CGUID+1262, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134865
(@CGUID+1263, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1264, 0, 0, 0, 1, 0, 0, 0, 0, '69149'), -- 134427 - 69149 - 69149
(@CGUID+1265, 0, 0, 0, 1, 0, 0, 0, 0, '69149'), -- 134427 - 69149 - 69149
(@CGUID+1266, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136367
(@CGUID+1267, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136355
(@CGUID+1268, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136368
(@CGUID+1269, 0, 0, 0, 1, 0, 0, 0, 0, '69149'), -- 134427 - 69149 - 69149
(@CGUID+1270, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136357
(@CGUID+1271, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1272, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136371
(@CGUID+1273, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- 136409
(@CGUID+1274, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1275, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1276, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1277, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1278, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1279, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1280, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1281, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1282, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1283, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1284, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1285, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1286, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1287, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1288, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1289, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1290, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1291, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1292, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1293, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1294, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1295, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1296, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1297, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1298, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1299, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1300, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1301, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1302, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1303, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1304, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1305, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- 136409
(@CGUID+1306, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 72390
(@CGUID+1307, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1308, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1309, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1310, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1311, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1312, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1313, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1314, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1315, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1316, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- 136409
(@CGUID+1317, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1318, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1319, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1320, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1321, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1322, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1323, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1324, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1325, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1326, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1327, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1328, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1329, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1330, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1331, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1332, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1333, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1334, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1335, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1336, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1337, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- 136409
(@CGUID+1338, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1339, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1340, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1341, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1342, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1343, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1344, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1345, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1346, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1347, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1348, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1349, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1350, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1351, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1352, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1353, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1354, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1355, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1356, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1357, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1358, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1359, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1360, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1361, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1362, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1363, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1364, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1365, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1366, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1367, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1368, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1369, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136370
(@CGUID+1370, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136372
(@CGUID+1371, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1372, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1373, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1374, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1375, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1376, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1377, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1378, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1379, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1380, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1381, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1382, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1383, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1384, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1385, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1386, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1387, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1388, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1389, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1390, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1391, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1392, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1393, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1394, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1395, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1396, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1397, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1398, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1399, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1400, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1401, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1402, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1403, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1404, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1405, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1406, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1407, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1408, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1409, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1410, 0, 0, 0, 1, 0, 0, 0, 0, '46598'), -- 134429 - 46598 - 46598
(@CGUID+1411, 0, 0, 0, 1, 0, 0, 0, 0, '46598'), -- 134429 - 46598 - 46598
(@CGUID+1412, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 72390
(@CGUID+1413, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1414, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1415, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1416, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1417, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1418, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1419, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1420, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1421, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1422, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1423, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1424, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1425, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1426, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1427, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1428, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1429, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1430, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1431, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1432, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1433, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1434, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1435, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1436, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1437, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1438, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1439, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1440, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1441, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1442, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1443, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1444, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1445, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1446, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1447, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1448, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1449, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1450, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1451, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1452, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1453, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1454, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1455, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1456, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1457, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1458, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1459, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1460, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1461, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1462, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1463, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1464, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1465, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1466, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1467, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1468, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1469, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1470, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1471, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1472, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1473, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1474, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1475, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1476, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1477, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1478, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1479, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1480, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1481, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1482, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1483, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1484, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1485, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1486, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1487, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1488, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1489, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1490, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1491, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1492, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1493, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1494, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1495, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1496, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1497, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1498, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1499, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- 134427

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+1500, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1501, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1502, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1503, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1504, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1505, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1506, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1507, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1508, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1509, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1510, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1511, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1512, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1513, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1514, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1515, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1516, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1517, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1518, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1519, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1520, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1521, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1522, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1523, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1524, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1525, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1526, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1527, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1528, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1529, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1530, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1531, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1532, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1533, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1534, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1535, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1536, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1537, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1538, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1539, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1540, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1541, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1542, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1543, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1544, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1545, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1546, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1547, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1548, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1549, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1550, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1551, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- 136409
(@CGUID+1552, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- 136409
(@CGUID+1553, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1554, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1555, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1556, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1557, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1558, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1559, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1560, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1561, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1562, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1563, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1564, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1565, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1566, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1567, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1568, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1569, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1570, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1571, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1572, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1573, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1574, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1575, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1576, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1577, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1578, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1579, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1580, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1581, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1582, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1583, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1584, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1585, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1586, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1587, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1588, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1589, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1590, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1591, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1592, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1593, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1594, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1595, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1596, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1597, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1598, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1599, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1600, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1601, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1602, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1603, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1604, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1605, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1606, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1607, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1608, 0, 0, 0, 1, 0, 0, 0, 0, '46598'), -- 134429 - 46598 - 46598
(@CGUID+1609, 0, 0, 0, 1, 0, 0, 0, 0, '46598'), -- 134429 - 46598 - 46598
(@CGUID+1610, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1611, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1612, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1613, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1614, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1615, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1616, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1617, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1618, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1619, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136272 - 192921 - 192921
(@CGUID+1620, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1621, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1622, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1623, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1624, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1625, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1626, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1627, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1628, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1629, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1630, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1631, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1632, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1633, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1634, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1635, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1636, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1637, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1638, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1639, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1640, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1641, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1642, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1643, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1644, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1645, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1646, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1647, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1648, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1649, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1650, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1651, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1652, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1653, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1654, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1655, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1656, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1657, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1658, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1659, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1660, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1661, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1662, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1663, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1664, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1665, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1666, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1667, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1668, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1669, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1670, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1671, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1672, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1673, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1674, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1675, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1676, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1677, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1678, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1679, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1680, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1681, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1682, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1683, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1684, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1685, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1686, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1687, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1688, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1689, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1690, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1691, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1692, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1693, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1694, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1695, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1696, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1697, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1698, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1699, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1700, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1701, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1702, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1703, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1704, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1705, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1706, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1707, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1708, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1709, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1710, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1711, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1712, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1713, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1714, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1715, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1716, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1717, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1718, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1719, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1720, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1721, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1722, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1723, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1724, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1725, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1726, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1727, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1728, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1729, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1730, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1731, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1732, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1733, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1734, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1735, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1736, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1737, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1738, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1739, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1740, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1741, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1742, 0, 0, 0, 1, 0, 0, 0, 0, '46598'), -- 134429 - 46598 - 46598
(@CGUID+1743, 0, 0, 0, 1, 0, 0, 0, 0, '46598'), -- 134429 - 46598 - 46598
(@CGUID+1744, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1745, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1746, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1747, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1748, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1749, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- 134427

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+1750, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1751, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1752, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1753, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1754, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1755, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1756, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1757, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1758, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1759, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1760, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1761, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1762, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1763, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1764, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1765, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1766, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1767, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1768, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1769, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1770, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1771, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1772, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1773, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1774, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1775, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1776, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1777, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1778, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1779, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1780, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1781, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1782, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1783, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1784, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1785, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1786, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1787, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1788, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1789, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1790, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1791, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1792, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1793, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1794, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1795, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1796, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1797, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1798, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1799, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1800, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1801, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1802, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1803, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1804, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1805, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1806, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1807, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1808, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1809, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1810, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1811, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1812, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1813, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1814, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1815, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1816, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1817, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1818, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1819, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1820, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1821, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1822, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1823, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1824, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1825, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1826, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1827, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1828, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1829, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1830, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1831, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1832, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1833, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1834, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1835, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1836, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1837, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1838, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1839, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1840, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1841, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1842, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1843, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1844, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1845, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1846, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1847, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1848, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1849, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1850, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1851, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1852, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1853, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1854, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1855, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1856, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1857, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1858, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1859, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1860, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1861, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1862, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1863, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1864, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1865, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1866, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1867, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1868, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1869, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1870, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1871, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1872, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1873, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1874, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1875, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1876, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1877, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1878, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1879, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1880, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1881, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1882, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1883, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1884, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1885, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1886, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1887, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1888, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1889, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1890, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1891, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1892, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1893, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1894, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1895, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1896, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1897, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1898, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1899, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1900, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1901, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1902, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1903, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1904, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1905, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1906, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1907, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1908, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1909, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1910, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1911, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1912, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1913, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1914, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1915, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1916, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1917, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1918, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1919, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1920, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1921, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1922, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1923, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1924, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1925, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 72390
(@CGUID+1926, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1927, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1928, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1929, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1930, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1931, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1932, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1933, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1934, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1935, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1936, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1937, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1938, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1939, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1940, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1941, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1942, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1943, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1944, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1945, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1946, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1947, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1948, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1949, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1950, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 136324 - 155893 - 155893
(@CGUID+1951, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1952, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1953, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1954, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1955, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1956, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1957, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1958, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1959, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1960, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1961, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1962, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 136326
(@CGUID+1963, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1964, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134492
(@CGUID+1965, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1966, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134478
(@CGUID+1967, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134620
(@CGUID+1968, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134831
(@CGUID+1969, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134692
(@CGUID+1970, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- 134836
(@CGUID+1971, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1972, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134593
(@CGUID+1973, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- 134836
(@CGUID+1974, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1975, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1976, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1977, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1978, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1979, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1980, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1981, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- 134836
(@CGUID+1982, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1983, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- 134836
(@CGUID+1984, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1985, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1986, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1987, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1988, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1989, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1990, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1991, 0, 0, 0, 257, 0, 0, 0, 0, '257852'), -- 136384 - 257852 - 257852
(@CGUID+1992, 0, 0, 262144, 1, 0, 0, 0, 0, '192921'), -- 136326 - 192921 - 192921
(@CGUID+1993, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1994, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+1995, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1996, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+1997, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 72390
(@CGUID+1998, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+1999, 0, 0, 0, 1, 0, 0, 0, 0, '42459'); -- 134428 - 42459 - 42459

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+2000, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2001, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2002, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2003, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2004, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2005, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2006, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2007, 0, 0, 0, 1, 0, 0, 0, 0, '212061 155893'), -- 136955 - 212061 - 212061, 155893 - 155893
(@CGUID+2008, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131018 - 155893 - 155893
(@CGUID+2009, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2010, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2011, 0, 0, 0, 1, 0, 0, 0, 0, '212061 155893'), -- 136955 - 212061 - 212061, 155893 - 155893
(@CGUID+2012, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2013, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2014, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2015, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2016, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2017, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2018, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2019, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2020, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2021, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2022, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2023, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2024, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2025, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2026, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2027, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2028, 0, 0, 0, 1, 0, 0, 0, 0, '212061 155893'), -- 136955 - 212061 - 212061, 155893 - 155893
(@CGUID+2029, 0, 0, 0, 1, 0, 0, 0, 0, '212061 155893'), -- 136955 - 212061 - 212061, 155893 - 155893
(@CGUID+2030, 0, 0, 0, 1, 0, 0, 0, 0, '212061 155893'), -- 136955 - 212061 - 212061, 155893 - 155893
(@CGUID+2031, 0, 0, 0, 1, 0, 0, 0, 0, '212061 155893'), -- 136955 - 212061 - 212061, 155893 - 155893
(@CGUID+2032, 0, 0, 0, 1, 0, 0, 0, 0, '212061 155893'), -- 136955 - 212061 - 212061, 155893 - 155893
(@CGUID+2033, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2034, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2035, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2036, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2037, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2038, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2039, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2040, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2041, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2042, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
-- (@CGUID+2043, 0, 0, 33554432, 1, 0, 0, 0, 0, '243010'), -- 136352 - 243010 - 243010
(@CGUID+2044, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2045, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2046, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2047, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2048, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2049, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2050, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2051, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2052, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2053, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2054, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2055, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2056, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2057, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2058, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2059, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2060, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2061, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2062, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2063, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2064, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2065, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2066, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2067, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2068, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2069, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2070, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2071, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2072, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2073, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2074, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2075, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 136956 - 155893 - 155893
(@CGUID+2076, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 136956 - 155893 - 155893
(@CGUID+2077, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2078, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2079, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2080, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2081, 0, 0, 0, 1, 0, 0, 0, 0, '212061 155893'), -- 136955 - 212061 - 212061, 155893 - 155893
(@CGUID+2082, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 136956 - 155893 - 155893
(@CGUID+2083, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 136956 - 155893 - 155893
(@CGUID+2084, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 136956 - 155893 - 155893
(@CGUID+2085, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2086, 0, 0, 0, 1, 0, 0, 0, 0, '212061 155893'), -- 136955 - 212061 - 212061, 155893 - 155893
(@CGUID+2087, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2088, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2089, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2090, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2091, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2092, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2093, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2094, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2095, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2096, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2097, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2098, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2099, 0, 0, 0, 1, 0, 0, 0, 0, '212061 155893'), -- 136955 - 212061 - 212061, 155893 - 155893
(@CGUID+2100, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 136956 - 155893 - 155893
(@CGUID+2101, 0, 0, 0, 1, 0, 0, 0, 0, '212061 155893'), -- 136955 - 212061 - 212061, 155893 - 155893
(@CGUID+2102, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2103, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2104, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2105, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2106, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 136956 - 155893 - 155893
(@CGUID+2107, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 136956 - 155893 - 155893
(@CGUID+2108, 0, 0, 0, 1, 0, 0, 0, 0, '212061 155893'), -- 136955 - 212061 - 212061, 155893 - 155893
(@CGUID+2109, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 136956 - 155893 - 155893
(@CGUID+2110, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2111, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2112, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2113, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2114, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2115, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2116, 0, 0, 0, 1, 0, 0, 0, 0, '212061 155893'), -- 136955 - 212061 - 212061, 155893 - 155893
(@CGUID+2117, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2118, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2119, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2120, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2121, 0, 0, 0, 1, 0, 0, 0, 0, '155893'), -- 131040 - 155893 - 155893
(@CGUID+2122, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2123, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2124, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2125, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2126, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2127, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2128, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2129, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 72390
(@CGUID+2130, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 131040
(@CGUID+2131, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2132, 0, 0, 50331648, 1, 0, 0, 0, 0, '267897'), -- 136327 - 267897 - 267897
(@CGUID+2133, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2134, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2135, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2136, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2137, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2138, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2139, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142765
(@CGUID+2140, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2141, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2142, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2143, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2144, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2145, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2146, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2147, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2148, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2149, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2150, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2151, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2152, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2153, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2154, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2155, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2156, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2157, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2158, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2159, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2160, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2161, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2162, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2163, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2164, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2165, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2166, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2167, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 72390
(@CGUID+2168, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2169, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2170, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2171, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2172, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2173, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2174, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2175, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2176, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2177, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2178, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2179, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2180, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2181, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2182, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2183, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2184, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2185, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2186, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2187, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2188, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2189, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2190, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2191, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2192, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2193, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2194, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2195, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2196, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2197, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2198, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2199, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2200, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2201, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2202, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2203, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2204, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2205, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2206, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2207, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2208, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2209, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2210, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2211, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2212, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2213, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2214, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2215, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2216, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2217, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2218, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2219, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2220, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2221, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2222, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2223, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2224, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2225, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2226, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2227, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2228, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2229, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2230, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2231, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2232, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2233, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2234, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2235, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2236, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2237, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2238, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2239, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2240, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2241, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2242, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2243, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2244, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2245, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2246, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2247, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2248, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2249, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- 134427

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+2250, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2251, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2252, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2253, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2254, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2255, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2256, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2257, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2258, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2259, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2260, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2261, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2262, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2263, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2264, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2265, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2266, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2267, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2268, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2269, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2270, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2271, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2272, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2273, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2274, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2275, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2276, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2277, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2278, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2279, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2280, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2281, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2282, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2283, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2284, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2285, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2286, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2287, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2288, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2289, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2290, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2291, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2292, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2293, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2294, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2295, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2296, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2297, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2298, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2299, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2300, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2301, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2302, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2303, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2304, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2305, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2306, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2307, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2308, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2309, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2310, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2311, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2312, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2313, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2314, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2315, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2316, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2317, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2318, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2319, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2320, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2321, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2322, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2323, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2324, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2325, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2326, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2327, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2328, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2329, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2330, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2331, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2332, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2333, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2334, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2335, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2336, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2337, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2338, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2339, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2340, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2341, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2342, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2343, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2344, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2345, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2346, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2347, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2348, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2349, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2350, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2351, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2352, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2353, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2354, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2355, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2356, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2357, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2358, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2359, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2360, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2361, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2362, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2363, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2364, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2365, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2366, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2367, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2368, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2369, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2370, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2371, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2372, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2373, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2374, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2375, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2376, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2377, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2378, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2379, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2380, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2381, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2382, 0, 0, 0, 1, 0, 0, 0, 0, '29266'), -- 142799 - 29266 - 29266
(@CGUID+2383, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2384, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2385, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2386, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2387, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2388, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2389, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2390, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2391, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2392, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2393, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2394, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2395, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2396, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2397, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2398, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2399, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2400, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2401, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2402, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2403, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2404, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2405, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2406, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2407, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2408, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2409, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2410, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2411, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2412, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2413, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2414, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2415, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2416, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2417, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2418, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2419, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2420, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2421, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2422, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2423, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2424, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2425, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2426, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2427, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2428, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2429, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2430, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2431, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2432, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2433, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2434, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2435, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2436, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2437, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2438, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2439, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2440, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2441, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2442, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2443, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2444, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2445, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2446, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2447, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2448, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2449, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2450, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2451, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2452, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2453, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2454, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2455, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2456, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2457, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2458, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2459, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2460, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2461, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2462, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2463, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2464, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2465, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2466, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2467, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2468, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2469, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2470, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2471, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2472, 0, 0, 0, 1, 0, 0, 0, 0, '42459'), -- 134428 - 42459 - 42459
(@CGUID+2473, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 134427
(@CGUID+2474, 0, 80368, 0, 1, 0, 0, 0, 0, ''), -- 134429
(@CGUID+2475, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- 134427

SET @OGUID=100413;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+20 AND @OGUID+74;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
/*
(@OGUID+0, 276617, 1642, 0, 0, '0', '', 0, 206.4640045166015625, 671.3179931640625, 92.03170013427734375, 0, 0, 0, 0, 1, 7200, 255, 1, 31478), -- 276617 (Area: -1 - Difficulty: 1)
(@OGUID+1, 295566, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 39944 - 47198 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 289.02899169921875, 586.10400390625, 110.5080032348632812, 5.5327301025390625, 0, 0, -0.36648464202880859, 0.930424094200134277, 7200, 255, 1, 31478), -- 295566 (Area: -1 - Difficulty: 1)
(@OGUID+2, 295567, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 39944 - 47198 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 282.3380126953125, 568.11199951171875, 110.5080032348632812, 0.811610996723175048, 0, 0, 0.394758224487304687, 0.918785035610198974, 7200, 255, 1, 31478), -- 295567 (Area: -1 - Difficulty: 1)
(@OGUID+3, 295565, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 39944 - 47198 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 285.878997802734375, 565.84002685546875, 110.5080032348632812, 1.439929962158203125, 0, 0, 0.659358978271484375, 0.751828253269195556, 7200, 255, 1, 31478), -- 295565 (Area: -1 - Difficulty: 1)
(@OGUID+4, 296544, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 1509 - 39944 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 263.04901123046875, 738.0780029296875, 93.1660003662109375, 2.356199979782104492, 0, 0, 0.923880577087402343, 0.382680922746658325, 7200, 255, 1, 31478), -- 296544 (Area: -1 - Difficulty: 1)
(@OGUID+5, 281870, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 1509 - 39944 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 234.1909942626953125, 735.55401611328125, 90.06749725341796875, 0, 0, 0, 0, 1, 7200, 255, 1, 31478), -- 281870 (Area: -1 - Difficulty: 1)
(@OGUID+6, 296552, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 1509 - 39944 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 264.165008544921875, 742.9840087890625, 93.04450225830078125, 4.660039901733398437, -0.01785469055175781, -0.05802249908447265, -0.72294330596923828, 0.688235104084014892, 7200, 255, 1, 31478), -- 296552 (Area: -1 - Difficulty: 1)
(@OGUID+7, 281869, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 1509 - 39944 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 182.656005859375, 720.98297119140625, 96.61569976806640625, 4.650760173797607421, 0.024759769439697265, -0.14157485961914062, -0.71439456939697265, 0.684824049472808837, 7200, 255, 1, 31478), -- 281869 (Area: -1 - Difficulty: 1)
(@OGUID+8, 296543, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 1509 - 39944 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 282.375, 766.677001953125, 88.72370147705078125, 1.980949997901916503, -0.01745033264160156, 0.004365921020507812, 0.83620452880859375, 0.548122644424438476, 7200, 255, 1, 31478), -- 296543 (Area: -1 - Difficulty: 1)
(@OGUID+9, 281867, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 1509 - 39944 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 193.886993408203125, 824.77899169921875, 94.519500732421875, 0.016462000086903572, -0.01391172409057617, -0.07147407531738281, 0.007170677185058593, 0.997319638729095458, 7200, 255, 1, 31478), -- 281867 (Area: -1 - Difficulty: 1)
(@OGUID+10, 296542, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 1509 - 39944 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 284.996002197265625, 836.41302490234375, 88.294403076171875, 3.473200082778930664, -0.00726318359375, 0.004835128784179687, -0.98625469207763671, 0.165001675486564636, 7200, 255, 1, 31478), -- 296542 (Area: -1 - Difficulty: 1)
(@OGUID+11, 276617, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 1509 - 39944 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 224.8719940185546875, 885.70697021484375, 100.1350021362304687, 6.20092010498046875, 0.026713371276855468, -0.0196084976196289, -0.04059028625488281, 0.998626232147216796, 7200, 255, 1, 31478), -- 276617 (Area: -1 - Difficulty: 1)
(@OGUID+12, 296541, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 1509 - 39944 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 317.02301025390625, 847.56402587890625, 81.26519775390625, 1.884950041770935058, 0.042503833770751953, 0.020096778869628906, 0.808669090270996093, 0.586382031440734863, 7200, 255, 1, 31478), -- 296541 (Area: -1 - Difficulty: 1)
(@OGUID+13, 296549, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 1509 - 39944 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 323.529998779296875, 864.8280029296875, 92.88690185546875, 2.836159944534301757, 0, 0, 0.988361358642578125, 0.152124300599098205, 7200, 255, 1, 31478), -- 296549 (Area: -1 - Difficulty: 1)
(@OGUID+14, 278456, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 1508 - 1509 - 39944 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 330.657989501953125, 872.9639892578125, 92.69159698486328125, 1.732110023498535156, 0.026702404022216796, -0.02430438995361328, 0.761251449584960937, 0.647450745105743408, 7200, 255, 1, 31478), -- 278456 (Area: -1 - Difficulty: 1)
(@OGUID+15, 296550, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 1508 - 1509 - 39944 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 361.72698974609375, 811.60400390625, 72.50440216064453125, 4.939280033111572265, -0.03678655624389648, -0.00189876556396484, -0.62261867523193359, 0.781657934188842773, 7200, 255, 1, 31478), -- 296550 (Area: -1 - Difficulty: 1)
(@OGUID+16, 296551, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 1508 - 1509 - 39944 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, 360.67498779296875, 785.6929931640625, 72.467498779296875, 3.202699899673461914, 0.009282588958740234, 0.028481483459472656, -0.99907588958740234, 0.030822694301605224, 7200, 255, 1, 31478), -- 296551 (Area: -1 - Difficulty: 1)
-- (@OGUID+17, 272677, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 1508 - 1509 - 39944 - 49984 - 47199 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, -3412.74658203125, 736.498291015625, 0, 3.885103702545166015, 0, 0, 0, 1, 7200, 255, 1, 31478), -- 0 (Area: -1 - Difficulty: 1) - !!! transport !!!
(@OGUID+18, 292584, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50954 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 39944 - 49984 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, -2140.330078125, 763.60797119140625, 0, 3.141590118408203125, 0, 0, -1, 0, 7200, 0, 1, 31478), -- 292584 (Area: -1 - Difficulty: 1)
(@OGUID+19, 289558, 1642, 0, 0, '0', '37320 - 37321 - 39028 - 29012 - 54097 - 55214 - 55772 - 55216 - 47436 - 51338 - 24056 - 50235 - 27401 - 27406 - 24092 - 46931 - 55848 - 39708 - 47509 - 50297 - 55872 - 47531 - 33608 - 64836 - 2464 - 29200 - 47583 - 39228 - 47584 - 45920 - 45921 - 54280 - 11392 - 39808 - 50950 - 50954 - 50957 - 32020 - 45950 - 278 - 49310 - 49871 - 50430 - 39848 - 49884 - 64938 - 61600 - 43220 - 47706 - 55513 - 59978 - 10964 - 59981 - 59982 - 39944 - 49984 - 11555 - 11563 - 48897 - 11579 - 60600 - 38328 - 11610 - 37792 - 29994 - 26664 - 51175 - 48399 - 40049 - 53420 - 40052 - 53421 - 48966 - 40054 - 52877 - 47313 - 51770 - 11671 - 11672 - 11673 - 25608 - 42320 - 42321 - 30628 - 38428 - 12808', 0, -2186.639892578125, 784.24798583984375, -0.10249000042676925, 4.712389945983886718, 0, 0, -0.70710563659667968, 0.707107901573181152, 7200, 0, 1, 31478), -- 289558 (Area: -1 - Difficulty: 1)
*/
(@OGUID+20, 295620, 1906, 9570, 9572, '12', '0', 0, -586.322998046875, 716.8709716796875, 234.897003173828125, 1.666790008544921875, 0, 0, 0.740216255187988281, 0.672368884086608886, 7200, 255, 1, 31478), -- 295620 (Area: 9572 - Difficulty: 12)
(@OGUID+21, 295628, 1906, 9570, 9572, '12', '0', 0, -579.66802978515625, 722.0159912109375, 234.9850006103515625, 5.497789859771728515, 0, 0, -0.38268280029296875, 0.923879802227020263, 7200, 255, 1, 31478), -- 295628 (Area: 9572 - Difficulty: 12)
(@OGUID+22, 295621, 1906, 9570, 9572, '12', '0', 0, -584.31500244140625, 718.68402099609375, 234.9470062255859375, 3.298690080642700195, 0, 0, -0.99691677093505859, 0.078466430306434631, 7200, 255, 1, 31478), -- 295621 (Area: 9572 - Difficulty: 12)
(@OGUID+23, 295625, 1906, 9570, 9572, '12', '0', 0, -586.10498046875, 720.59197998046875, 234.949005126953125, 4.372049808502197265, 0, 0, -0.81664180755615234, 0.577144801616668701, 7200, 255, 1, 31478), -- 295625 (Area: 9572 - Difficulty: 12)
(@OGUID+24, 295622, 1906, 9570, 9572, '12', '0', 0, -576.5889892578125, 726.864990234375, 234.9900054931640625, 1.754050016403198242, 0, 0, 0.768840789794921875, 0.639440298080444335, 7200, 255, 1, 31478), -- 295622 (Area: 9572 - Difficulty: 12)
(@OGUID+25, 295626, 1906, 9570, 9572, '12', '0', 0, -577.4019775390625, 731.0830078125, 234.9900054931640625, 4.930560111999511718, 0, 0, -0.62592220306396484, 0.779885530471801757, 7200, 255, 1, 31478), -- 295626 (Area: 9572 - Difficulty: 12)
(@OGUID+26, 295627, 1906, 9570, 9572, '12', '0', 0, -578.41900634765625, 728.7080078125, 234.9900054931640625, 0.235617995262145996, 0, 0, 0.117536544799804687, 0.993068516254425048, 7200, 255, 1, 31478), -- 295627 (Area: 9572 - Difficulty: 12)
(@OGUID+27, 287157, 1906, 9570, 9572, '12', '0', 0, -677.40802001953125, 1046.72998046875, 320.865997314453125, 0.964855015277862548, 0, 0, 0.463931083679199218, 0.885871291160583496, 7200, 255, 1, 31478), -- 287157 (Area: 9572 - Difficulty: 12)
(@OGUID+28, 287157, 1906, 9570, 9572, '12', '0', 0, -685.69097900390625, 1065.02001953125, 320.842010498046875, 0.313122987747192382, 0, 0, 0.155922889709472656, 0.987769246101379394, 7200, 255, 1, 31478), -- 287157 (Area: 9572 - Difficulty: 12)
(@OGUID+29, 287157, 1906, 9570, 9572, '12', '0', 0, -692.07098388671875, 1073.050048828125, 321.07598876953125, 1.026440024375915527, 0, 0, 0.490985870361328125, 0.871167540550231933, 7200, 255, 1, 31478), -- 287157 (Area: 9572 - Difficulty: 12)
(@OGUID+30, 287157, 1906, 9570, 9572, '12', '0', 0, -689.47900390625, 1063.260009765625, 320.790008544921875, 3.907059907913208007, 0, 0, -0.92764663696289062, 0.373459100723266601, 7200, 255, 1, 31478), -- 287157 (Area: 9572 - Difficulty: 12)
(@OGUID+31, 287157, 1906, 9570, 9572, '12', '0', 0, -667.88702392578125, 1041.8299560546875, 320.709991455078125, 1.229699969291687011, 0, 0, 0.576836585998535156, 0.816859602928161621, 7200, 255, 1, 31478), -- 287157 (Area: 9572 - Difficulty: 12)
(@OGUID+32, 287157, 1906, 9570, 9572, '12', '0', 0, -683.75701904296875, 1054.7900390625, 320.92498779296875, 0.363240003585815429, 0, 0, 0.180623054504394531, 0.983552396297454833, 7200, 255, 1, 31478), -- 287157 (Area: 9572 - Difficulty: 12)
(@OGUID+33, 287157, 1906, 9570, 9572, '12', '0', 0, -666.822998046875, 1047.25, 320.60101318359375, 0.374514997005462646, 0, 0, 0.18616485595703125, 0.982518494129180908, 7200, 255, 1, 31478), -- 287157 (Area: 9572 - Difficulty: 12)
(@OGUID+34, 287157, 1906, 9570, 9572, '12', '0', 0, -696.52801513671875, 1071.3900146484375, 321.446990966796875, 3.806469917297363281, 0, 0, -0.94524860382080078, 0.326351195573806762, 7200, 255, 1, 31478), -- 287157 (Area: 9572 - Difficulty: 12)
(@OGUID+35, 287157, 1906, 9570, 9572, '12', '0', 0, -681.2239990234375, 1060.27001953125, 320.613006591796875, 1.059910058975219726, 0, 0, 0.505494117736816406, 0.862830042839050292, 7200, 255, 1, 31478), -- 287157 (Area: 9572 - Difficulty: 12)
(@OGUID+36, 287157, 1906, 9570, 9572, '12', '0', 0, -660.5469970703125, 1039.06005859375, 320.834991455078125, 0.949213027954101562, 0, 0, 0.456987380981445312, 0.889473199844360351, 7200, 255, 1, 31478), -- 287157 (Area: 9572 - Difficulty: 12)
(@OGUID+37, 287157, 1906, 9570, 9572, '12', '0', 0, -673.24102783203125, 1055.3399658203125, 320.438995361328125, 0.965580999851226806, 0, 0, 0.464252471923828125, 0.885702908039093017, 7200, 255, 1, 31478), -- 287157 (Area: 9572 - Difficulty: 12)
(@OGUID+38, 295560, 1906, 9570, 9572, '12', '0', 0, -506.381988525390625, 1153.52001953125, 322.5260009765625, 4.694940090179443359, 0, 0, -0.71324825286865234, 0.700911521911621093, 7200, 255, 1, 31478), -- 295560 (Area: 9572 - Difficulty: 12)
(@OGUID+39, 295658, 1906, 9570, 9572, '12', '0', 0, -530.1400146484375, 1140.06005859375, 322.147003173828125, 0.061084698885679245, 0, 0, 0.030536651611328125, 0.999533653259277343, 7200, 255, 1, 31478), -- 295658 (Area: 9572 - Difficulty: 12)
(@OGUID+40, 287157, 1906, 9570, 9572, '12', '0', 0, -701.78802490234375, 1077.7900390625, 322.569000244140625, 1.201689958572387695, 0, 0, 0.565338134765625, 0.824859261512756347, 7200, 255, 1, 31478), -- 287157 (Area: 9572 - Difficulty: 12)
(@OGUID+41, 295559, 1906, 9570, 9572, '12', '0', 0, -519.82000732421875, 1148.719970703125, 322.5469970703125, 5.009099960327148437, 0, 0, -0.59482192993164062, 0.80385744571685791, 7200, 255, 1, 31478), -- 295559 (Area: 9572 - Difficulty: 12)
(@OGUID+42, 295557, 1906, 9570, 9572, '12', '0', 0, -502.364990234375, 1153.0899658203125, 322.51800537109375, 4.363319873809814453, 0, 0, -0.81915092468261718, 0.573578059673309326, 7200, 255, 1, 31478), -- 295557 (Area: 9572 - Difficulty: 12)
(@OGUID+43, 295556, 1906, 9570, 9572, '12', '0', 0, -520.3070068359375, 1152.199951171875, 322.52398681640625, 5.078909873962402343, 0, 0, -0.56640434265136718, 0.824127495288848876, 7200, 255, 1, 31478), -- 295556 (Area: 9572 - Difficulty: 12)
(@OGUID+44, 287157, 1906, 9570, 9572, '12', '0', 0, -709.25201416015625, 1080.5400390625, 324.537994384765625, 1.201689958572387695, 0, 0, 0.565338134765625, 0.824859261512756347, 7200, 255, 1, 31478), -- 287157 (Area: 9572 - Difficulty: 12)
(@OGUID+45, 295558, 1906, 9570, 9572, '12', '0', 0, -502.7080078125, 1149.6400146484375, 322.540008544921875, 4.24114990234375, 0, 0, -0.85263919830322265, 0.522500097751617431, 7200, 255, 1, 31478), -- 295558 (Area: 9572 - Difficulty: 12)
(@OGUID+46, 295649, 1906, 9570, 9572, '12', '0', 0, -539.99102783203125, 1129.9000244140625, 321.14300537109375, 3.752460002899169921, 0, 0, -0.95371627807617187, 0.300707906484603881, 7200, 255, 1, 31478), -- 295649 (Area: 9572 - Difficulty: 12)
(@OGUID+47, 295661, 1906, 9570, 9572, '12', '0', 0, -552.094970703125, 1218.0999755859375, 322.355987548828125, 2.993220090866088867, 0, 0, 0.997249603271484375, 0.074116282165050506, 7200, 255, 1, 31478), -- 295661 (Area: 9572 - Difficulty: 12)
(@OGUID+48, 295650, 1906, 9570, 9572, '12', '0', 0, -539.99700927734375, 1127.8599853515625, 321.14300537109375, 3.001950025558471679, 0, 0, 0.997563362121582031, 0.069766148924827575, 7200, 255, 1, 31478), -- 295650 (Area: 9572 - Difficulty: 12)
(@OGUID+49, 295660, 1906, 9570, 9572, '12', '0', 0, -552.364990234375, 1219.6700439453125, 322.355987548828125, 3.473210096359252929, 0, 0, -0.98628520965576171, 0.165049895644187927, 7200, 255, 1, 31478), -- 295660 (Area: 9572 - Difficulty: 12)
(@OGUID+50, 295656, 1906, 9570, 9572, '12', '0', 0, -549.97900390625, 1140.300048828125, 321.12200927734375, 4.511680126190185546, 0, 0, -0.77439212799072265, 0.632705986499786376, 7200, 255, 1, 31478), -- 295656 (Area: 9572 - Difficulty: 12)
(@OGUID+51, 295655, 1906, 9570, 9572, '12', '0', 0, -544.27899169921875, 1122.8499755859375, 321.14300537109375, 4.459320068359375, 0, 0, -0.79068946838378906, 0.612217426300048828, 7200, 255, 1, 31478), -- 295655 (Area: 9572 - Difficulty: 12)
(@OGUID+52, 295653, 1906, 9570, 9572, '12', '0', 0, -545.0989990234375, 1118.77001953125, 321.14300537109375, 1.300269961357116699, 0, 0, 0.605292320251464843, 0.796003282070159912, 7200, 255, 1, 31478), -- 295653 (Area: 9572 - Difficulty: 12)
(@OGUID+53, 295657, 1906, 9570, 9572, '12', '0', 0, -550.885009765625, 1137.1700439453125, 321.12298583984375, 4.564040184020996093, 0, 0, -0.75756359100341796, 0.652761340141296386, 7200, 255, 1, 31478), -- 295657 (Area: 9572 - Difficulty: 12)
(@OGUID+54, 295659, 1906, 9570, 9572, '12', '0', 0, -556.2440185546875, 1218.489990234375, 322.355987548828125, 6.117380142211914062, 0, 0, -0.08280658721923828, 0.996565639972686767, 7200, 255, 1, 31478), -- 295659 (Area: 9572 - Difficulty: 12)
(@OGUID+55, 295652, 1906, 9570, 9572, '12', '0', 0, -543.32598876953125, 1126.800048828125, 321.285003662109375, 0.471237003803253173, 0, 0, 0.233443260192871093, 0.972370445728302001, 7200, 255, 1, 31478), -- 295652 (Area: 9572 - Difficulty: 12)
(@OGUID+56, 295654, 1906, 9570, 9572, '12', '0', 0, -545.8699951171875, 1122.75, 321.14300537109375, 4.939280033111572265, 0, 0, -0.6225137710571289, 0.78260880708694458, 7200, 255, 1, 31478), -- 295654 (Area: 9572 - Difficulty: 12)
(@OGUID+57, 295651, 1906, 9570, 9572, '12', '0', 0, -543.72698974609375, 1128.989990234375, 321.285003662109375, 6.047570228576660156, 0, 0, -0.11753654479980468, 0.993068516254425048, 7200, 255, 1, 31478), -- 295651 (Area: 9572 - Difficulty: 12)
(@OGUID+58, 295644, 1906, 9570, 9572, '12', '0', 0, -557.802001953125, 1116.3499755859375, 322.14599609375, 3.778640031814575195, 0, 0, -0.94969844818115234, 0.313165903091430664, 7200, 255, 1, 31478), -- 295644 (Area: 9572 - Difficulty: 12)
(@OGUID+59, 295646, 1906, 9570, 9572, '12', '0', 0, -559.88201904296875, 1118.300048828125, 322.147003173828125, 3.944449901580810546, 0, 0, -0.92050457000732421, 0.3907318115234375, 7200, 255, 1, 31478), -- 295646 (Area: 9572 - Difficulty: 12)
(@OGUID+60, 295663, 1906, 9570, 9572, '12', '0', 0, -580.82000732421875, 1198.7099609375, 322.27301025390625, 0.802851021289825439, 0, 0, 0.390730857849121093, 0.920504987239837646, 7200, 255, 1, 31478), -- 295663 (Area: 9572 - Difficulty: 12)
(@OGUID+61, 295647, 1906, 9570, 9572, '12', '0', 0, -560.8740234375, 1119.2900390625, 322.144012451171875, 3.831000089645385742, 0, 0, -0.94117546081542968, 0.337918221950531005, 7200, 255, 1, 31478), -- 295647 (Area: 9572 - Difficulty: 12)
(@OGUID+62, 295648, 1906, 9570, 9572, '12', '0', 0, -562.5250244140625, 1120.9599609375, 322.139007568359375, 3.953170061111450195, 0, 0, -0.91878986358642578, 0.394747018814086914, 7200, 255, 1, 31478), -- 295648 (Area: 9572 - Difficulty: 12)
(@OGUID+63, 295645, 1906, 9570, 9572, '12', '0', 0, -558.655029296875, 1117.280029296875, 322.14599609375, 4.101520061492919921, 0, 0, -0.88701057434082031, 0.461749136447906494, 7200, 255, 1, 31478), -- 295645 (Area: 9572 - Difficulty: 12)
(@OGUID+64, 295662, 1906, 9570, 9572, '12', '0', 0, -578.83001708984375, 1200.4200439453125, 322.272003173828125, 3.883359909057617187, 0, 0, -0.9320077896118164, 0.36243826150894165, 7200, 255, 1, 31478), -- 295662 (Area: 9572 - Difficulty: 12)
(@OGUID+65, 295595, 1906, 9570, 9572, '12', '0', 0, -661.9730224609375, 985.33697509765625, 322.38800048828125, 1.745329976081848144, 0, 0, 0.766042709350585937, 0.642789661884307861, 7200, 255, 1, 31478), -- 295595 (Area: 9572 - Difficulty: 12)
(@OGUID+66, 295597, 1906, 9570, 9572, '12', '0', 0, -662.89697265625, 988.74200439453125, 322.38800048828125, 4.869470119476318359, 0, 0, -0.64944648742675781, 0.760407328605651855, 7200, 255, 1, 31478), -- 295597 (Area: 9572 - Difficulty: 12)
(@OGUID+67, 295596, 1906, 9570, 9572, '12', '0', 0, -660.89300537109375, 985.9420166015625, 322.38800048828125, 2.22529006004333496, 0, 0, 0.896872520446777343, 0.442289173603057861, 7200, 255, 1, 31478), -- 295596 (Area: 9572 - Difficulty: 12)
(@OGUID+68, 295598, 1906, 9570, 9572, '12', '0', 0, -666.083984375, 971.926025390625, 322.3380126953125, 0.008726149797439575, 0, 0, 0.004362106323242187, 0.999990463256835937, 7200, 255, 1, 31478), -- 295598 (Area: 9572 - Difficulty: 12)
(@OGUID+69, 298844, 1906, 9570, 9572, '12', '0', 0, -1009.8599853515625, 884.60400390625, 375.256011962890625, 4.712389945983886718, 0, 0, -0.70710659027099609, 0.707106947898864746, 7200, 255, 1, 31478), -- 298844 (Area: 9572 - Difficulty: 12)
(@OGUID+70, 298843, 1906, 9570, 9572, '12', '0', 0, -1017.80999755859375, 884.60400390625, 375.256011962890625, 4.712389945983886718, 0, 0, -0.70710659027099609, 0.707106947898864746, 7200, 255, 1, 31478), -- 298843 (Area: 9572 - Difficulty: 12)
(@OGUID+71, 298842, 1906, 9570, 9572, '12', '0', 0, -1009.8599853515625, 854.0269775390625, 375.256011962890625, 4.712389945983886718, 0, 0, -0.70710659027099609, 0.707106947898864746, 7200, 255, 1, 31478), -- 298842 (Area: 9572 - Difficulty: 12)
(@OGUID+72, 298841, 1906, 9570, 9572, '12', '0', 0, -1017.80999755859375, 854.0269775390625, 375.256011962890625, 4.712389945983886718, 0, 0, -0.70710659027099609, 0.707106947898864746, 7200, 255, 1, 31478), -- 298841 (Area: 9572 - Difficulty: 12)
(@OGUID+73, 278212, 1906, 9570, 9572, '12', '0', 0, -1126.5, 851.7960205078125, 487.868011474609375, 3.141590118408203125, 0, 0, -1, 0, 7200, 255, 24, 31478), -- 0 (Area: 9572 - Difficulty: 12)
(@OGUID+74, 278211, 1906, 9570, 9572, '12', '0', 0, -1126.5, 757.60198974609375, 487.868011474609375, 3.141590118408203125, 0, 0, -1, 0, 7200, 255, 24, 31478); -- 0 (Area: 9572 - Difficulty: 12)


DELETE FROM `gameobject_addon` WHERE `guid` BETWEEN @OGUID+20 AND @OGUID+74;
INSERT INTO `gameobject_addon` (`guid`, `parent_rotation0`, `parent_rotation1`, `parent_rotation2`, `parent_rotation3`) VALUES
/*
(@OGUID+1, 0, 0, -0.36648499965667724, 0.930423974990844726), -- 295566
(@OGUID+2, 0, 0, -0.36648499965667724, 0.930423974990844726), -- 295567
(@OGUID+3, 0, 0, -0.36648499965667724, 0.930423974990844726), -- 295565
(@OGUID+18, 0, 0, -1, 0), -- 292584
(@OGUID+19, 0, 0, -0.70710700750350952, 0.707107007503509521), -- 289558
*/
(@OGUID+20, 0, 0, -0.38268399238586425, 0.923879027366638183), -- 295620
(@OGUID+21, 0, 0, -0.38268399238586425, 0.923879027366638183), -- 295628
(@OGUID+22, 0, 0, -0.38268399238586425, 0.923879027366638183), -- 295621
(@OGUID+23, 0, 0, -0.38268399238586425, 0.923879027366638183), -- 295625
(@OGUID+24, 0, 0, -0.38268399238586425, 0.923879027366638183), -- 295622
(@OGUID+25, 0, 0, -0.38268399238586425, 0.923879027366638183), -- 295626
(@OGUID+26, 0, 0, -0.38268399238586425, 0.923879027366638183), -- 295627
(@OGUID+38, 0, 0, 1, -0.00000004371139894), -- 295560
(@OGUID+39, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295658
(@OGUID+41, 0, 0, 1, -0.00000004371139894), -- 295559
(@OGUID+42, 0, 0, 1, -0.00000004371139894), -- 295557
(@OGUID+43, 0, 0, 1, -0.00000004371139894), -- 295556
(@OGUID+45, 0, 0, 1, -0.00000004371139894), -- 295558
(@OGUID+46, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295649
(@OGUID+47, 0, 0, 0.382683008909225463, 0.923879981040954589), -- 295661
(@OGUID+48, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295650
(@OGUID+49, 0, 0, 0.382683008909225463, 0.923879981040954589), -- 295660
(@OGUID+50, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295656
(@OGUID+51, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295655
(@OGUID+52, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295653
(@OGUID+53, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295657
(@OGUID+54, 0, 0, 0.382683008909225463, 0.923879981040954589), -- 295659
(@OGUID+55, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295652
(@OGUID+56, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295654
(@OGUID+57, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295651
(@OGUID+58, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295644
(@OGUID+59, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295646
(@OGUID+60, 0, 0, 0.382683008909225463, 0.923879981040954589), -- 295663
(@OGUID+61, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295647
(@OGUID+62, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295648
(@OGUID+63, 0, 0, 0.923879981040954589, -0.38268300890922546), -- 295645
(@OGUID+64, 0, 0, 0.382683008909225463, 0.923879981040954589), -- 295662
(@OGUID+65, 0, 0, -0.70710700750350952, 0.707107007503509521), -- 295595
(@OGUID+66, 0, 0, -0.70710700750350952, 0.707107007503509521), -- 295597
(@OGUID+67, 0, 0, -0.70710700750350952, 0.707107007503509521), -- 295596
(@OGUID+68, 0, 0, -0.70710700750350952, 0.707107007503509521), -- 295598
(@OGUID+69, 0, 0, 1, -0.00000004371139894), -- 298844
(@OGUID+70, 0, 0, 1, -0.00000004371139894), -- 298843
(@OGUID+71, 0, 0, 1, -0.00000004371139894), -- 298842
(@OGUID+72, 0, 0, 1, -0.00000004371139894), -- 298841
(@OGUID+73, 0, 0, 1, -0.00000004371139894), -- 0
(@OGUID+74, 0, 0, 1, -0.00000004371139894); -- 0


UPDATE `conversation_template` SET `LastLineEndTime`=22578, `VerifiedBuild`=27404 WHERE `Id`=8383;

SET NAMES 'utf8';
DELETE FROM `creature_template_locale` WHERE (`entry`=137931 AND `locale`='zhCN') OR (`entry`=131443 AND `locale`='zhCN') OR (`entry`=132264 AND `locale`='zhCN') OR (`entry`=131564 AND `locale`='zhCN') OR (`entry`=122697 AND `locale`='zhCN') OR (`entry`=141937 AND `locale`='zhCN') OR (`entry`=131494 AND `locale`='zhCN') OR (`entry`=131521 AND `locale`='zhCN') OR (`entry`=131566 AND `locale`='zhCN') OR (`entry`=122690 AND `locale`='zhCN') OR (`entry`=142179 AND `locale`='zhCN') OR (`entry`=122692 AND `locale`='zhCN') OR (`entry`=142185 AND `locale`='zhCN') OR (`entry`=122691 AND `locale`='zhCN') OR (`entry`=143872 AND `locale`='zhCN') OR (`entry`=131514 AND `locale`='zhCN') OR (`entry`=143873 AND `locale`='zhCN') OR (`entry`=132643 AND `locale`='zhCN') OR (`entry`=131503 AND `locale`='zhCN') OR (`entry`=140394 AND `locale`='zhCN') OR (`entry`=131216 AND `locale`='zhCN') OR (`entry`=122701 AND `locale`='zhCN') OR (`entry`=131506 AND `locale`='zhCN') OR (`entry`=131460 AND `locale`='zhCN') OR (`entry`=131511 AND `locale`='zhCN') OR (`entry`=131472 AND `locale`='zhCN') OR (`entry`=141549 AND `locale`='zhCN') OR (`entry`=131502 AND `locale`='zhCN') OR (`entry`=131512 AND `locale`='zhCN') OR (`entry`=131542 AND `locale`='zhCN') OR (`entry`=121000 AND `locale`='zhCN') OR (`entry`=130984 AND `locale`='zhCN') OR (`entry`=135440 AND `locale`='zhCN') OR (`entry`=131483 AND `locale`='zhCN') OR (`entry`=131484 AND `locale`='zhCN') OR (`entry`=131481 AND `locale`='zhCN') OR (`entry`=131480 AND `locale`='zhCN') OR (`entry`=131477 AND `locale`='zhCN') OR (`entry`=130932 AND `locale`='zhCN') OR (`entry`=125953 AND `locale`='zhCN') OR (`entry`=131482 AND `locale`='zhCN') OR (`entry`=125948 AND `locale`='zhCN') OR (`entry`=122642 AND `locale`='zhCN') OR (`entry`=142464 AND `locale`='zhCN') OR (`entry`=142404 AND `locale`='zhCN') OR (`entry`=144187 AND `locale`='zhCN') OR (`entry`=138065 AND `locale`='zhCN') OR (`entry`=131809 AND `locale`='zhCN') OR (`entry`=130901 AND `locale`='zhCN') OR (`entry`=131840 AND `locale`='zhCN') OR (`entry`=144075 AND `locale`='zhCN') OR (`entry`=122695 AND `locale`='zhCN') OR (`entry`=140953 AND `locale`='zhCN') OR (`entry`=143324 AND `locale`='zhCN') OR (`entry`=143320 AND `locale`='zhCN') OR (`entry`=142503 AND `locale`='zhCN') OR (`entry`=142504 AND `locale`='zhCN') OR (`entry`=122702 AND `locale`='zhCN') OR (`entry`=140946 AND `locale`='zhCN') OR (`entry`=122693 AND `locale`='zhCN') OR (`entry`=122694 AND `locale`='zhCN') OR (`entry`=127112 AND `locale`='zhCN') OR (`entry`=122703 AND `locale`='zhCN') OR (`entry`=132959 AND `locale`='zhCN') OR (`entry`=144074 AND `locale`='zhCN') OR (`entry`=127031 AND `locale`='zhCN') OR (`entry`=144077 AND `locale`='zhCN') OR (`entry`=122696 AND `locale`='zhCN') OR (`entry`=131836 AND `locale`='zhCN') OR (`entry`=133123 AND `locale`='zhCN') OR (`entry`=132978 AND `locale`='zhCN') OR (`entry`=122704 AND `locale`='zhCN') OR (`entry`=132968 AND `locale`='zhCN') OR (`entry`=131834 AND `locale`='zhCN') OR (`entry`=131804 AND `locale`='zhCN') OR (`entry`=132130 AND `locale`='zhCN') OR (`entry`=132984 AND `locale`='zhCN') OR (`entry`=132983 AND `locale`='zhCN') OR (`entry`=131835 AND `locale`='zhCN') OR (`entry`=122700 AND `locale`='zhCN') OR (`entry`=122699 AND `locale`='zhCN') OR (`entry`=122698 AND `locale`='zhCN') OR (`entry`=132711 AND `locale`='zhCN') OR (`entry`=137237 AND `locale`='zhCN') OR (`entry`=141936 AND `locale`='zhCN') OR (`entry`=141609 AND `locale`='zhCN') OR (`entry`=132308 AND `locale`='zhCN') OR (`entry`=132714 AND `locale`='zhCN') OR (`entry`=132707 AND `locale`='zhCN') OR (`entry`=132704 AND `locale`='zhCN') OR (`entry`=141954 AND `locale`='zhCN') OR (`entry`=137234 AND `locale`='zhCN') OR (`entry`=130995 AND `locale`='zhCN') OR (`entry`=128076 AND `locale`='zhCN') OR (`entry`=132686 AND `locale`='zhCN') OR (`entry`=141956 AND `locale`='zhCN') OR (`entry`=131173 AND `locale`='zhCN') OR (`entry`=131170 AND `locale`='zhCN') OR (`entry`=126331 AND `locale`='zhCN') OR (`entry`=132690 AND `locale`='zhCN') OR (`entry`=132687 AND `locale`='zhCN') OR (`entry`=132691 AND `locale`='zhCN') OR (`entry`=132689 AND `locale`='zhCN') OR (`entry`=130512 AND `locale`='zhCN') OR (`entry`=130486 AND `locale`='zhCN') OR (`entry`=136413 AND `locale`='zhCN') OR (`entry`=136411 AND `locale`='zhCN') OR (`entry`=136410 AND `locale`='zhCN') OR (`entry`=137526 AND `locale`='zhCN') OR (`entry`=137525 AND `locale`='zhCN') OR (`entry`=130589 AND `locale`='zhCN') OR (`entry`=131594 AND `locale`='zhCN') OR (`entry`=130447 AND `locale`='zhCN') OR (`entry`=130403 AND `locale`='zhCN') OR (`entry`=130575 AND `locale`='zhCN') OR (`entry`=132634 AND `locale`='zhCN') OR (`entry`=124040 AND `locale`='zhCN') OR (`entry`=131471 AND `locale`='zhCN') OR (`entry`=131522 AND `locale`='zhCN') OR (`entry`=130832 AND `locale`='zhCN') OR (`entry`=130242 AND `locale`='zhCN') OR (`entry`=130229 AND `locale`='zhCN') OR (`entry`=121017 AND `locale`='zhCN') OR (`entry`=132447 AND `locale`='zhCN') OR (`entry`=131574 AND `locale`='zhCN') OR (`entry`=131006 AND `locale`='zhCN') OR (`entry`=128087 AND `locale`='zhCN') OR (`entry`=130117 AND `locale`='zhCN') OR (`entry`=130122 AND `locale`='zhCN') OR (`entry`=130014 AND `locale`='zhCN') OR (`entry`=130105 AND `locale`='zhCN') OR (`entry`=129994 AND `locale`='zhCN') OR (`entry`=130120 AND `locale`='zhCN') OR (`entry`=129998 AND `locale`='zhCN') OR (`entry`=130103 AND `locale`='zhCN') OR (`entry`=120802 AND `locale`='zhCN') OR (`entry`=130100 AND `locale`='zhCN') OR (`entry`=129997 AND `locale`='zhCN') OR (`entry`=125455 AND `locale`='zhCN') OR (`entry`=138913 AND `locale`='zhCN') OR (`entry`=138912 AND `locale`='zhCN') OR (`entry`=138363 AND `locale`='zhCN') OR (`entry`=130445 AND `locale`='zhCN') OR (`entry`=131083 AND `locale`='zhCN') OR (`entry`=130918 AND `locale`='zhCN') OR (`entry`=143967 AND `locale`='zhCN') OR (`entry`=130108 AND `locale`='zhCN') OR (`entry`=125879 AND `locale`='zhCN') OR (`entry`=142642 AND `locale`='zhCN') OR (`entry`=144195 AND `locale`='zhCN') OR (`entry`=132393 AND `locale`='zhCN') OR (`entry`=144193 AND `locale`='zhCN') OR (`entry`=120840 AND `locale`='zhCN') OR (`entry`=141774 AND `locale`='zhCN') OR (`entry`=132388 AND `locale`='zhCN') OR (`entry`=141775 AND `locale`='zhCN') OR (`entry`=132378 AND `locale`='zhCN') OR (`entry`=120806 AND `locale`='zhCN') OR (`entry`=132383 AND `locale`='zhCN') OR (`entry`=120803 AND `locale`='zhCN') OR (`entry`=144196 AND `locale`='zhCN') OR (`entry`=126032 AND `locale`='zhCN') OR (`entry`=132364 AND `locale`='zhCN') OR (`entry`=120900 AND `locale`='zhCN') OR (`entry`=144194 AND `locale`='zhCN') OR (`entry`=126031 AND `locale`='zhCN') OR (`entry`=130257 AND `locale`='zhCN') OR (`entry`=130256 AND `locale`='zhCN') OR (`entry`=142502 AND `locale`='zhCN') OR (`entry`=130115 AND `locale`='zhCN') OR (`entry`=131842 AND `locale`='zhCN') OR (`entry`=130111 AND `locale`='zhCN') OR (`entry`=125822 AND `locale`='zhCN') OR (`entry`=125823 AND `locale`='zhCN') OR (`entry`=130441 AND `locale`='zhCN') OR (`entry`=125816 AND `locale`='zhCN') OR (`entry`=126023 AND `locale`='zhCN') OR (`entry`=132394 AND `locale`='zhCN') OR (`entry`=130448 AND `locale`='zhCN') OR (`entry`=120169 AND `locale`='zhCN') OR (`entry`=135438 AND `locale`='zhCN') OR (`entry`=143156 AND `locale`='zhCN') OR (`entry`=143138 AND `locale`='zhCN') OR (`entry`=143136 AND `locale`='zhCN') OR (`entry`=139634 AND `locale`='zhCN') OR (`entry`=125355 AND `locale`='zhCN') OR (`entry`=141928 AND `locale`='zhCN') OR (`entry`=141919 AND `locale`='zhCN') OR (`entry`=141914 AND `locale`='zhCN') OR (`entry`=137334 AND `locale`='zhCN') OR (`entry`=132365 AND `locale`='zhCN') OR (`entry`=131331 AND `locale`='zhCN') OR (`entry`=121042 AND `locale`='zhCN') OR (`entry`=130491 AND `locale`='zhCN') OR (`entry`=133549 AND `locale`='zhCN') OR (`entry`=121253 AND `locale`='zhCN') OR (`entry`=129226 AND `locale`='zhCN') OR (`entry`=132286 AND `locale`='zhCN') OR (`entry`=130328 AND `locale`='zhCN') OR (`entry`=132661 AND `locale`='zhCN');
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `NameAlt`, `Title`, `TitleAlt`, `VerifiedBuild`) VALUES
(137931, 'zhCN', '希利苏斯传送门', NULL, NULL, NULL, 27404),
(131443, 'zhCN', '首席传送师欧库勒斯', NULL, '传送门训练师', NULL, 27404),
(132264, 'zhCN', '记载者基扎尼', NULL, '铭文训练师', NULL, 27404),
(131564, 'zhCN', '工头阿尔吉卜', NULL, '锻造与工程学供应商', NULL, 27404),
(122697, 'zhCN', '贾米尔·阿布胡辛', NULL, '皇家医师', NULL, 27404),
(141937, 'zhCN', '阿拉卡', NULL, '杂货商', NULL, 27404),
(131494, 'zhCN', '指挥官莫库尔', NULL, NULL, NULL, 27404),
(131521, 'zhCN', '助手贝罗斯', NULL, NULL, NULL, 27404),
(131566, 'zhCN', '苦工', NULL, NULL, NULL, 27404),
(122690, 'zhCN', '“美人”布丽琳', NULL, '旅店老板', NULL, 27404),
(142179, 'zhCN', '克林基利·腐拳', NULL, '公会注册员', NULL, 27404),
(122692, 'zhCN', '拉卡·金牙', NULL, '银行职员', NULL, 27404),
(142185, 'zhCN', '尤拉·天足', NULL, '公会商人', NULL, 27404),
(122691, 'zhCN', '恩多·护币', NULL, '银行职员', NULL, 27404),
(143872, 'zhCN', '蜜雪儿·钱趾', NULL, '银行职员', NULL, 27404),
(131514, 'zhCN', '绝望的平民', '绝望的平民', NULL, NULL, 27404),
(143873, 'zhCN', '罗梅利·铁目', NULL, '银行职员', NULL, 27404),
(132643, 'zhCN', '福斯·艾特肯', NULL, NULL, NULL, 27404),
(131503, 'zhCN', '斥候丘姆丘', NULL, NULL, NULL, 27404),
(140394, 'zhCN', '瓦尔基', NULL, NULL, NULL, 27404),
(131216, 'zhCN', '亡灵战地卫兵', '亡灵战地卫兵', NULL, NULL, 27404),
(122701, 'zhCN', '考察者阿勒琳达', NULL, '考古学训练师', NULL, 27404),
(131506, 'zhCN', '塔库·沼泽行者', NULL, NULL, NULL, 27404),
(131460, 'zhCN', '“巨石”洛克', NULL, '金库保安', NULL, 27404),
(131511, 'zhCN', '莉莉·哨酒', NULL, '千桶不醉', NULL, 27404),
(131472, 'zhCN', '酿酒师塞斯娜拉', NULL, NULL, NULL, 27404),
(141549, 'zhCN', '皇家大厨提萨拉', NULL, '烹饪训练师', NULL, 27404),
(131502, 'zhCN', '魔精混调师寇乔', NULL, NULL, NULL, 27404),
(131512, 'zhCN', '下班的卫兵', '下班的卫兵', NULL, NULL, 27404),
(131542, 'zhCN', '部落大使', '部落大使', NULL, NULL, 27404),
(121000, 'zhCN', '部落战旗', NULL, NULL, NULL, 27404),
(130984, 'zhCN', '纳塔哈卡塔', NULL, '赞达拉帝国大使', NULL, 27404),
(135440, 'zhCN', '塔兰吉公主', NULL, NULL, NULL, 27404),
(131483, 'zhCN', '部落先锋', '部落先锋', NULL, NULL, 27404),
(131484, 'zhCN', '部落先锋', '部落先锋', NULL, NULL, 27404),
(131481, 'zhCN', '部落先锋', '部落先锋', NULL, NULL, 27404),
(131480, 'zhCN', '部落先锋', '部落先锋', NULL, NULL, 27404),
(131477, 'zhCN', '部落先锋', '部落先锋', NULL, NULL, 27404),
(130932, 'zhCN', '诺克塔尔', NULL, '蔓林小村', NULL, 27404),
(125953, 'zhCN', '哈布图', NULL, '君王之盾', NULL, 27404),
(131482, 'zhCN', '部落先锋', '部落先锋', NULL, NULL, 27404),
(125948, 'zhCN', '先知祖尔', NULL, NULL, NULL, 27404),
(122642, 'zhCN', '沃卡尔', NULL, '赞枢利议会', NULL, 27404),
(142464, 'zhCN', '冒尔特', NULL, '追猎者莫吉卡的宠物', NULL, 27404),
(142404, 'zhCN', '追猎者莫吉卡', NULL, NULL, NULL, 27404),
(144187, 'zhCN', '洛娜', NULL, '珠宝加工供应商', NULL, 27404),
(138065, 'zhCN', '蘑菇头斯努什', NULL, '蘑菇商', NULL, 27404),
(131809, 'zhCN', '贡克祭司', '贡克祭司', NULL, NULL, 27404),
(130901, 'zhCN', '记载者伽祖尔', NULL, '铭文训练师', NULL, 27404),
(131840, 'zhCN', '舒佳·爆帽', NULL, '工程学训练师', NULL, 27404),
(144075, 'zhCN', '训练假人', NULL, '治疗', NULL, 27404),
(122695, 'zhCN', '瑟舒利', NULL, '珠宝加工训练师', NULL, 27404),
(140953, 'zhCN', '初级珠宝匠', '初级珠宝匠', NULL, NULL, 27404),
(143324, 'zhCN', '斯努夫图', NULL, NULL, NULL, 27404),
(143320, 'zhCN', '鲁斯图什', NULL, NULL, NULL, 27404),
(142503, 'zhCN', '琦基', NULL, '石匠', NULL, 27404),
(142504, 'zhCN', '比利', NULL, NULL, NULL, 27404),
(122702, 'zhCN', '女附魔师奎妮', NULL, '附魔训练师', NULL, 27404),
(140946, 'zhCN', '初级附魔师', '初级附魔师', NULL, NULL, 27404),
(122693, 'zhCN', '阿图兰吉', NULL, '君王之锤', NULL, 27404),
(122694, 'zhCN', '金匠西科特', NULL, '采矿训练师', NULL, 27404),
(127112, 'zhCN', '掌炉者扎克阿尔', NULL, '锻造训练师', NULL, 27404),
(122703, 'zhCN', '聪明的库玛莉', NULL, '炼金训练师', NULL, 27404),
(132959, 'zhCN', '狂野的克兰扎', NULL, NULL, NULL, 27404),
(144074, 'zhCN', '训练假人', NULL, 'PvP治疗', NULL, 27404),
(127031, 'zhCN', '缚神工匠', '缚神工匠', NULL, NULL, 27404),
(144077, 'zhCN', '训练假人', NULL, '士气假人', NULL, 27404),
(122696, 'zhCN', '驭兽者卡拉塔克', NULL, '兽栏管理员', NULL, 27404),
(131836, 'zhCN', '训练有素的翼手龙', NULL, NULL, NULL, 27404),
(133123, 'zhCN', '下班的执行者', '下班的执行者', NULL, NULL, 27404),
(132978, 'zhCN', '“捷径”基雅·尤加尼', NULL, NULL, NULL, 27404),
(122704, 'zhCN', '贾登·弗拉', NULL, '草药学训练师', NULL, 27404),
(132968, 'zhCN', '征服者萨鲁', NULL, NULL, NULL, 27404),
(131834, 'zhCN', '帕库拉祭司', '帕库拉祭司', NULL, NULL, 27404),
(131804, 'zhCN', '缚神训练师', '缚神训练师', NULL, NULL, 27404),
(132130, 'zhCN', '格兰达·华泰', NULL, '草药学供应商', NULL, 27404),
(132984, 'zhCN', '赞达拉贵族', NULL, NULL, NULL, 27404),
(132983, 'zhCN', '赞达拉贵族', NULL, NULL, NULL, 27404),
(131835, 'zhCN', '训练有素的翼手龙', NULL, NULL, NULL, 27404),
(122700, 'zhCN', '耐心的品金', NULL, '裁缝训练师', NULL, 27404),
(122699, 'zhCN', '“快刀”拉娜', NULL, '剥皮训练师', NULL, 27404),
(122698, 'zhCN', '赞约', NULL, '制皮训练师', NULL, 27404),
(132711, 'zhCN', '丘南基', NULL, NULL, NULL, 27404),
(137237, 'zhCN', '远古岩石魔像', NULL, NULL, NULL, 27404),
(141936, 'zhCN', '哈努尔·迅风', NULL, '材料供应商', NULL, 27404),
(141609, 'zhCN', '童商阿曼', NULL, '裁缝和制皮供应商', NULL, 27404),
(132308, 'zhCN', '拉斯塔利征服者', '拉斯塔利征服者', NULL, NULL, 27404),
(132714, 'zhCN', '丘黛娜', NULL, NULL, NULL, 27404),
(132707, 'zhCN', '班扎尔', NULL, NULL, NULL, 27404),
(132704, 'zhCN', '泰舒基', NULL, NULL, NULL, 27404),
(141954, 'zhCN', '阿尔伯', NULL, '武器', NULL, 27404),
(137234, 'zhCN', '远古岩石魔像', NULL, NULL, NULL, 27404),
(130995, 'zhCN', '派基队长', NULL, NULL, NULL, 27404),
(128076, 'zhCN', '铭文师诺希', NULL, '雕文和符文商人', NULL, 27404),
(132686, 'zhCN', '达萨罗苦力', NULL, NULL, NULL, 27404),
(141956, 'zhCN', '萨莫', NULL, '杂货商', NULL, 27404),
(131173, 'zhCN', '“雷霆之声”安吉', NULL, NULL, NULL, 27404),
(131170, 'zhCN', '沉睡的德鲁伊', NULL, NULL, NULL, 27404),
(126331, 'zhCN', '行窃的撕咬者', NULL, NULL, NULL, 27404),
(132690, 'zhCN', '达萨罗苦力', NULL, NULL, NULL, 27404),
(132687, 'zhCN', '达萨罗苦力', NULL, NULL, NULL, 27404),
(132691, 'zhCN', '商队雷龙', NULL, NULL, NULL, 27404),
(132689, 'zhCN', '达萨罗苦力', NULL, NULL, NULL, 27404),
(130512, 'zhCN', '幼年肥指猩猩', NULL, NULL, NULL, 27404),
(130486, 'zhCN', '狂暴肥指猩猩', NULL, NULL, NULL, 27404),
(136413, 'zhCN', '尊主塞拉雯', NULL, NULL, NULL, 27404),
(136411, 'zhCN', '马瑞斯·魔灾', NULL, '伊利达雷', NULL, 27404),
(136410, 'zhCN', '特德·舒马克', NULL, NULL, NULL, 27404),
(137526, 'zhCN', '桑乔恩', NULL, NULL, NULL, 27404),
(137525, 'zhCN', '西斯', NULL, NULL, NULL, 27404),
(130589, 'zhCN', '流浪的啮咬者', NULL, NULL, NULL, 27404),
(131594, 'zhCN', '蚊子', NULL, NULL, NULL, 27404),
(130447, 'zhCN', '蓝色蝴蝶', NULL, NULL, NULL, 27404),
(130403, 'zhCN', '野生翼手龙', NULL, NULL, NULL, 27404),
(130575, 'zhCN', '游荡的斧喙鸟', NULL, NULL, NULL, 27404),
(132634, 'zhCN', '野生的翼手龙宝宝', NULL, NULL, NULL, 27404),
(124040, 'zhCN', '商队雷龙', NULL, NULL, NULL, 27404),
(131471, 'zhCN', '渡河雷龙', NULL, NULL, NULL, 27404),
(131522, 'zhCN', '贪婪的矛丽鱼', NULL, NULL, NULL, 27404),
(130832, 'zhCN', '盐目斧喙鸟', NULL, NULL, NULL, 27404),
(130242, 'zhCN', '沙怒部族演讲者', NULL, '沙怒巨魔大使', NULL, 27404),
(130229, 'zhCN', '晶鳞蜥蜴', NULL, NULL, NULL, 27404),
(121017, 'zhCN', '沙怒掷斧者', '沙怒掷斧者', '沙怒部族', NULL, 27404),
(132447, 'zhCN', '树根蛙', NULL, NULL, NULL, 27404),
(131574, 'zhCN', '闪鳍鱼', NULL, NULL, NULL, 27404),
(131006, 'zhCN', '塔里萨队长', NULL, NULL, NULL, 27404),
(128087, 'zhCN', '拉斯塔利执行者', '拉斯塔利执行者', NULL, NULL, 27404),
(130117, 'zhCN', '冰斧部族代言人', '冰斧部族代言人', NULL, NULL, 27404),
(130122, 'zhCN', '代言人伊克纳尔', NULL, '影牙部族', NULL, 27404),
(130014, 'zhCN', '代言人马拉卡拉兹', NULL, '达卡莱部族', NULL, 27404),
(130105, 'zhCN', '燃棘部族代言人', '燃棘部族代言人', NULL, NULL, 27404),
(129994, 'zhCN', '霜鬃部族代言人', '霜鬃部族代言人', NULL, NULL, 27404),
(130120, 'zhCN', '碎矛部族代言人', '碎矛部族代言人', NULL, NULL, 27404),
(129998, 'zhCN', '恶齿部族代言人', '恶齿部族代言人', NULL, NULL, 27404),
(130103, 'zhCN', '烂苔部族代言人', '烂苔部族代言人', NULL, NULL, 27404),
(120802, 'zhCN', '皇家卫士', NULL, NULL, NULL, 27404),
(130100, 'zhCN', '火树部族代言人', '火树部族代言人', NULL, NULL, 27404),
(129997, 'zhCN', '血顶部族代言人', '血顶部族代言人', NULL, NULL, 27404),
(125455, 'zhCN', '蚊子', NULL, NULL, NULL, 27404),
(138913, 'zhCN', '塔兰吉公主', NULL, NULL, NULL, 27404),
(138912, 'zhCN', '执行者的翼手龙', NULL, NULL, NULL, 27404),
(138363, 'zhCN', '加库布·暖心', NULL, '修理服务商', NULL, 27404),
(130445, 'zhCN', '丛林巨口蛙', NULL, NULL, NULL, 27404),
(131083, 'zhCN', '火焰兔子', NULL, NULL, NULL, 27404),
(130918, 'zhCN', '阿基里昂巨型海龟', NULL, NULL, NULL, 27404),
(143967, 'zhCN', '探险地图', NULL, NULL, NULL, 27404),
(130108, 'zhCN', '邪枝部族代言人', '邪枝部族代言人', NULL, NULL, 27404),
(125879, 'zhCN', '塔路图', NULL, '坐骑商人', NULL, 27404),
(142642, 'zhCN', '阿达努', NULL, '希莫的学徒', NULL, 27404),
(144195, 'zhCN', '阿矛', NULL, NULL, NULL, 27404),
(132393, 'zhCN', '轮休的步兵', NULL, NULL, NULL, 27404),
(144193, 'zhCN', '科尔因', NULL, NULL, NULL, 27404),
(120840, 'zhCN', '无情的希莫', NULL, '旅店老板', NULL, 27404),
(141774, 'zhCN', '耶尔亨', NULL, NULL, NULL, 27404),
(132388, 'zhCN', '老乔达', NULL, '思想和饮料的守护者', NULL, 27404),
(141775, 'zhCN', '马哈巴', NULL, NULL, NULL, 27404),
(132378, 'zhCN', '编织者阿纳夏', NULL, '传说守护者', NULL, 27404),
(120806, 'zhCN', '赞达拉魔术士', '赞达拉魔术士', NULL, NULL, 27404),
(132383, 'zhCN', '赞达拉贵族', NULL, NULL, NULL, 27404),
(120803, 'zhCN', '赞达拉剑卫', '赞达拉剑卫', NULL, NULL, 27404),
(144196, 'zhCN', '塔克', NULL, NULL, NULL, 27404),
(126032, 'zhCN', '巫毒祭司格洛墨乔', NULL, '厄运巫毒', NULL, 27404),
(132364, 'zhCN', '康纳·响痕', NULL, '理发师', NULL, 27404),
(120900, 'zhCN', '阿曼尼战士', NULL, NULL, NULL, 27404),
(144194, 'zhCN', '杰娜', NULL, NULL, NULL, 27404),
(126031, 'zhCN', '巫医胡卡里', NULL, '厄运巫毒', NULL, 27404),
(130257, 'zhCN', '阿曼尼斗熊', NULL, NULL, NULL, 27404),
(130256, 'zhCN', '阿曼尼野熊', NULL, NULL, NULL, 27404),
(142502, 'zhCN', '赞达拉孩童', '赞达拉孩童', NULL, NULL, 27404),
(130115, 'zhCN', '碎颅部族代言人', '碎颅部族代言人', NULL, NULL, 27404),
(131842, 'zhCN', '卡特尼丝·断尖', NULL, '理发师', NULL, 27404),
(130111, 'zhCN', '枯木部族代言人', '枯木部族代言人', NULL, NULL, 27404),
(125822, 'zhCN', '“巫医”托可', NULL, NULL, NULL, 27404),
(125823, 'zhCN', '“巫医”里可拉', NULL, NULL, NULL, 27404),
(130441, 'zhCN', '神殿甲虫', NULL, NULL, NULL, 27404),
(125816, 'zhCN', '苍穹之母', NULL, NULL, NULL, 27404),
(126023, 'zhCN', '港口细颚龙', NULL, NULL, NULL, 27404),
(132394, 'zhCN', '赞达拉流浪者', '赞达拉流浪者', NULL, NULL, 27404),
(130448, 'zhCN', '沙德里克爬行者', NULL, NULL, NULL, 27404),
(120169, 'zhCN', '塔兰吉公主', NULL, NULL, NULL, 27404),
(135438, 'zhCN', '执行者的翼手龙', NULL, NULL, NULL, 27404),
(143156, 'zhCN', '伊克萨尔', NULL, '尤亚姆巴果汁', NULL, 27404),
(143138, 'zhCN', '商人林沃斯', NULL, '补给与修理商', NULL, 27404),
(143136, 'zhCN', '梅维克', NULL, NULL, NULL, 27404),
(139634, 'zhCN', '醉鬼比鲁', NULL, NULL, NULL, 27404),
(125355, 'zhCN', '赞枢利剑卫', NULL, NULL, NULL, 27404),
(141928, 'zhCN', '柯尔丘', NULL, '商人', NULL, 27404),
(141919, 'zhCN', '胡克', NULL, '布雷斯莱兹', NULL, 27404),
(141914, 'zhCN', '莫特拉', NULL, '书籍和合剂', NULL, 27404),
(137334, 'zhCN', '乔佳', NULL, '材料供应商和修理', NULL, 27404),
(132365, 'zhCN', '“乱毛”杰戈瓦', NULL, NULL, NULL, 27404),
(131331, 'zhCN', '低贱的赞达拉巨魔', '低贱的赞达拉巨魔', NULL, NULL, 27404),
(121042, 'zhCN', '赞达拉鱼贩', '赞达拉鱼贩', NULL, NULL, 27404),
(130491, 'zhCN', '赞达拉渔夫', '赞达拉渔夫', NULL, NULL, 27404),
(133549, 'zhCN', '赞达拉流浪者', '赞达拉流浪者', NULL, NULL, 27404),
(121253, 'zhCN', '尖叫的翼手龙', NULL, NULL, NULL, 27404),
(129226, 'zhCN', '博石达', NULL, '设计石', NULL, 27404),
(132286, 'zhCN', '傲慢的魔暴龙', NULL, NULL, NULL, 27404),
(130328, 'zhCN', '赞达拉码头工人', '赞达拉码头工人', NULL, NULL, 27404),
(132661, 'zhCN', '塔兰吉公主', NULL, NULL, NULL, 27404);

DELETE FROM `quest_template_locale` WHERE (`ID`=47513 AND `locale`='zhCN') OR (`ID`=47512 AND `locale`='zhCN') OR (`ID`=47514 AND `locale`='zhCN') OR (`ID`=52131 AND `locale`='zhCN') OR (`ID`=6 AND `locale`='zhCN') OR (`ID`=52139 AND `locale`='zhCN') OR (`ID`=50178 AND `locale`='zhCN') OR (`ID`=47135 AND `locale`='zhCN') OR (`ID`=46931 AND `locale`='zhCN') OR (`ID`=46930 AND `locale`='zhCN') OR (`ID`=49918 AND `locale`='zhCN') OR (`ID`=45926 AND `locale`='zhCN');
INSERT INTO `quest_template_locale` (`ID`, `locale`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `QuestCompletionLog`, `VerifiedBuild`) VALUES
(47513, 'zhCN', '沃顿', '与塔兰吉公主交谈。', '加卡泽将军憎恨部落，无法信任。只要他还把持着权柄，城市就仍然处于危险之中。\n\n怀疑他的不只是我们。与塔兰吉公主谈谈，采取下一步行动。', '', '', '', '', '', '', 27404),
(47512, 'zhCN', '纳兹米尔', '与塔兰吉公主交谈。', '被诅咒的纳兹米尔沼泽里的鲜血巨魔威胁着要毁灭整个祖达萨。\n\n塔兰吉公主想要部落帮助她出征直击鲜血巨魔的心脏，终结他们对祖达萨的威胁。', '', '', '', '', '', '', 27404),
(47514, 'zhCN', '祖达萨', '与塔兰吉公主交谈。', '拉斯塔哈大王是一个古老的统治者，他不会那么快就信任新盟友。如果我们想要赢得他的舰队，就必须先赢得他的信任。\n\n祖达萨是赞达拉帝国的权力中心，也是赢得新盟友的好起点。', '', '', '', '', '', '', 27404),
(52131, 'zhCN', '各取所需', '聆听塔兰吉公主的话。', '父王认为他把我惯坏了。他的统治持续了两百年了，那可是好几代巨魔的寿命。在他的脑海中，王国所面临的威胁太过渺小。$b$b但我不一样，我亲眼见证了许多事情。$b$b所以，既然父王和他的顾问们不愿出手相助，我就得找些愿意帮忙的家伙。$b$b你们的大酋长需要我们的舰队，而我需要她的勇士。这就是我们现在的情况。', '', '', '', '', '', '', 27404),
(6, 'zhCN', '加瑞克·帕德弗特的赏金', '杀死加瑞克·帕德弗特，带着他的徽记到北郡修道院去找维里副队长。', '加瑞克·帕德弗特，这个恶棍几周以来一直让我们的农民和商人心惊胆战，前几天有人在农场附近的小屋里看到了他的身影，大概在就是修道院东边过了桥以后的那片地方。带他的徽记回来见我，然后领取赏金吧！$B$B不过你要小心一点，$n。加瑞克身边总是有一帮暴徒，他可不是那么容易搞定的家伙。', '', '', '', '', '', '', 27404),
(52139, 'zhCN', '手头要事', '在巨擘封印和塔兰吉公主见面。', '塔兰吉公主应该准备好和你聊一聊如何拯救我们的帝国了。\n\n我现在就去找她，她在附近准备了一处场地。', '', '', '', '', '', '在巨擘封印和塔兰吉公主见面', 27404),
(50178, 'zhCN', '林根之路上的麻烦', '', '', '', '', '', '', '', '', 27404),
(47135, 'zhCN', '为他们着想', '', '', '', '', '', '', '', '', 27404),
(46931, 'zhCN', '部落的代言人', '设立你的大使馆。', '你们的部落如今十分强大，幅员辽阔到让不少巨魔王国相形见绌。$b$b你拯救了我的女儿，也赢得了踏足这座城市的资格。$b$B我的女儿对你的印象很不错，你可以到城市下层的巨擘封印去见她。在那里，奴仆们正准备招待你。$b$b塔兰吉为你的同胞们准备了一些东西，她看起来很激动。希望你们的计划不会让我感到无聊。$B$b佐拉妮能为你指引一条可以安全下去的路。', '', '', '', '', '', '在列王宝库与记载者图基尼交谈。', 27404),
(46930, 'zhCN', '拉斯塔哈', '与拉斯塔哈大王见面。', '我是加卡泽将军，赞达拉军队统领，海洋的执法者，战争的使者。\n\n我不喜欢你。\n\n你的部落把我的人民击败之后，我花了许多年才赢得今天的地位。我不能让你使我的努力化为乌有。\n\n伟大的拉斯塔哈大王让我好好“招待”你。我会看着你双腿发抖，然后跪地求饶。但最后我还是会把你“送”进沃顿的荒原。\n\n公主“殿下”肯定会反对……但她还不是女王。\n\n来吧，让我们迎接你的命运。', '', '', '', '', '', '与拉斯塔哈大王交谈', 27404),
(49918, 'zhCN', '猩猩峡谷', '', '', '', '', '', '', '', '', 27404),
(45926, 'zhCN', '扎特斯', '', '', '', '', '', '', '', '', 27404);

DELETE FROM `quest_objectives_locale` WHERE (`ID`=296333 AND `locale`='zhCN') OR (`ID`=296331 AND `locale`='zhCN') OR (`ID`=296329 AND `locale`='zhCN') OR (`ID`=296327 AND `locale`='zhCN') OR (`ID`=296325 AND `locale`='zhCN') OR (`ID`=290863 AND `locale`='zhCN') OR (`ID`=337188 AND `locale`='zhCN') OR (`ID`=337187 AND `locale`='zhCN') OR (`ID`=337186 AND `locale`='zhCN') OR (`ID`=291969 AND `locale`='zhCN') OR (`ID`=289873 AND `locale`='zhCN') OR (`ID`=290542 AND `locale`='zhCN') OR (`ID`=289869 AND `locale`='zhCN') OR (`ID`=295615 AND `locale`='zhCN');
INSERT INTO `quest_objectives_locale` (`ID`, `locale`, `QuestId`, `StorageIndex`, `Description`, `VerifiedBuild`) VALUES
(296333, 'zhCN', 50178, 2, '消灭野生暴掠龙', 27404),
(296331, 'zhCN', 50178, 1, '消灭羽蛇幼崽', 27404),
(296329, 'zhCN', 50178, 4, '摧毁羽蛇卵', 27404),
(296327, 'zhCN', 50178, 3, '消灭羽蛇', 27404),
(296325, 'zhCN', 50178, -1, '消灭有攻击性的野生动物', 27404),
(290863, 'zhCN', 47135, 1, '安抚疯狂的魔鼠幼崽', 27404),
(337188, 'zhCN', 46931, 4, '探索皇家珍宝间', 27404),
(337187, 'zhCN', 46931, 3, '探索远古通路大厅', 27404),
(337186, 'zhCN', 46931, 2, '探索巨擘封印', 27404),
(291969, 'zhCN', 46931, 0, '召唤部落', 27404),
(289873, 'zhCN', 46931, 1, '跟随佐拉妮', 27404),
(290542, 'zhCN', 46930, 1, '与塔兰吉公主交谈', 27404),
(289869, 'zhCN', 46930, 0, '骑乘执行者的翼手龙前往王座', 27404),
(295615, 'zhCN', 49918, -1, '消灭达卡尼猩猩', 27404);

DELETE FROM `quest_poi` WHERE (`QuestID`=52139 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=52139 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49015 AND `BlobIndex`=2 AND `Idx1`=6) OR (`QuestID`=49015 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=49015 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=49015 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=49015 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=49015 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49015 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=28654 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=28654 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=28654 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=28654 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=28654 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(52139, 0, 1, 32, 0, 0, 1642, 1165, 0, 0, 0, 0, 1539343, 0, 27404), -- -Unknown-
(52139, 0, 0, -1, 0, 0, 1642, 862, 0, 0, 0, 0, 1452170, 0, 27404), -- -Unknown-
(49015, 2, 6, 32, 0, 0, 1669, 883, 0, 2, 0, 51972, 0, 0, 27404), -- -Unknown-
(49015, 1, 5, 32, 0, 0, 1669, 831, 0, 2, 0, 52311, 0, 0, 27404), -- -Unknown-
(49015, 0, 4, 32, 0, 0, 1669, 886, 0, 2, 0, 51973, 0, 0, 27404), -- -Unknown-
(49015, 0, 3, -1, 0, 0, 1669, 886, 0, 0, 0, 51973, 1374946, 0, 27404), -- -Unknown-
(49015, 0, 2, -1, 0, 0, 1669, 883, 0, 0, 0, 51972, 1369396, 0, 27404), -- -Unknown-
(49015, 0, 1, -1, 0, 0, 1669, 831, 0, 0, 0, 52311, 1364390, 0, 27404), -- -Unknown-
(49015, 0, 0, -1, 0, 0, 1712, 919, 0, 2, 0, 0, 0, 0, 27404), -- -Unknown-
(28654, 3, 4, 32, 0, 0, 1, 249, 0, 0, 0, 0, 527862, 0, 27404), -- -Unknown-
(28654, 2, 3, 32, 0, 0, 1, 249, 0, 0, 0, 0, 527581, 0, 27404), -- -Unknown-
(28654, 1, 2, 32, 0, 0, 1, 249, 0, 0, 0, 0, 527862, 0, 27404), -- -Unknown-
(28654, 0, 1, 32, 0, 0, 1, 249, 0, 0, 0, 0, 527581, 0, 27404), -- -Unknown-
(28654, 0, 0, -1, 0, 0, 644, 297, 0, 1, 0, 0, 0, 0, 27404); -- -Unknown-

DELETE FROM `quest_poi_points` WHERE (`QuestID`=52139 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=52139 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49015 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=49015 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=49015 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=49015 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=49015 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49015 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49015 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=28654 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=28654 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=28654 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=28654 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=28654 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(52139, 1, 0, -1092, 833, 27404), -- -Unknown-
(52139, 0, 0, -1120, 818, 27404), -- -Unknown-
(49015, 6, 0, 4731, 9869, 27404), -- -Unknown-
(49015, 5, 0, 503, 1478, 27404), -- -Unknown-
(49015, 4, 0, -2641, 8720, 27404), -- -Unknown-
(49015, 3, 0, -2642, 8721, 27404), -- -Unknown-
(49015, 2, 0, 4732, 9870, 27404), -- -Unknown-
(49015, 1, 0, 504, 1479, 27404), -- -Unknown-
(49015, 0, 0, 3091, -9630, 27404), -- -Unknown-
(28654, 4, 0, -10809, -336, 27404), -- -Unknown-
(28654, 3, 0, -9305, 423, 27404), -- -Unknown-
(28654, 2, 0, -10809, -336, 27404), -- -Unknown-
(28654, 1, 0, -9305, 423, 27404), -- -Unknown-
(28654, 0, 0, -446, 367, 27404); -- -Unknown-


UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=32641; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=32642; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=62821; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=62822; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=135209; -- -Unknown-


DELETE FROM `areatrigger_template` WHERE `Id`=14725;
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `VerifiedBuild`) VALUES
(14725, 4, 0, 5, 5, 5, 5, 1, 1, 27404);


SET NAMES 'utf8';

DELETE FROM `creature_template_locale` WHERE (`entry`=120791 AND `locale`='zhCN') OR (`entry`=132979 AND `locale`='zhCN') OR (`entry`=130742 AND `locale`='zhCN') OR (`entry`=141521 AND `locale`='zhCN') OR (`entry`=136428 AND `locale`='zhCN') OR (`entry`=129323 AND `locale`='zhCN') OR (`entry`=139440 AND `locale`='zhCN') OR (`entry`=136334 AND `locale`='zhCN') OR (`entry`=135858 AND `locale`='zhCN') OR (`entry`=122429 AND `locale`='zhCN') OR (`entry`=120812 AND `locale`='zhCN') OR (`entry`=121210 AND `locale`='zhCN') OR (`entry`=135435 AND `locale`='zhCN') OR (`entry`=120171 AND `locale`='zhCN') OR (`entry`=135397 AND `locale`='zhCN') OR (`entry`=134353 AND `locale`='zhCN') OR (`entry`=138161 AND `locale`='zhCN') OR (`entry`=134964 AND `locale`='zhCN') OR (`entry`=134965 AND `locale`='zhCN') OR (`entry`=142458 AND `locale`='zhCN') OR (`entry`=139146 AND `locale`='zhCN') OR (`entry`=134945 AND `locale`='zhCN') OR (`entry`=134943 AND `locale`='zhCN') OR (`entry`=134938 AND `locale`='zhCN') OR (`entry`=134951 AND `locale`='zhCN') OR (`entry`=134944 AND `locale`='zhCN') OR (`entry`=134881 AND `locale`='zhCN') OR (`entry`=134193 AND `locale`='zhCN') OR (`entry`=134201 AND `locale`='zhCN') OR (`entry`=138013 AND `locale`='zhCN') OR (`entry`=134191 AND `locale`='zhCN') OR (`entry`=134192 AND `locale`='zhCN') OR (`entry`=134199 AND `locale`='zhCN') OR (`entry`=134200 AND `locale`='zhCN') OR (`entry`=134198 AND `locale`='zhCN') OR (`entry`=134202 AND `locale`='zhCN') OR (`entry`=142319 AND `locale`='zhCN') OR (`entry`=137892 AND `locale`='zhCN') OR (`entry`=142318 AND `locale`='zhCN') OR (`entry`=134197 AND `locale`='zhCN') OR (`entry`=134783 AND `locale`='zhCN') OR (`entry`=134195 AND `locale`='zhCN') OR (`entry`=134194 AND `locale`='zhCN') OR (`entry`=134609 AND `locale`='zhCN') OR (`entry`=134624 AND `locale`='zhCN') OR (`entry`=138018 AND `locale`='zhCN') OR (`entry`=139948 AND `locale`='zhCN') OR (`entry`=134163 AND `locale`='zhCN') OR (`entry`=134094 AND `locale`='zhCN') OR (`entry`=134091 AND `locale`='zhCN') OR (`entry`=134092 AND `locale`='zhCN') OR (`entry`=134093 AND `locale`='zhCN') OR (`entry`=137428 AND `locale`='zhCN') OR (`entry`=134079 AND `locale`='zhCN') OR (`entry`=134120 AND `locale`='zhCN') OR (`entry`=134086 AND `locale`='zhCN') OR (`entry`=134085 AND `locale`='zhCN') OR (`entry`=134087 AND `locale`='zhCN') OR (`entry`=134083 AND `locale`='zhCN') OR (`entry`=134084 AND `locale`='zhCN') OR (`entry`=137345 AND `locale`='zhCN') OR (`entry`=137351 AND `locale`='zhCN') OR (`entry`=134039 AND `locale`='zhCN') OR (`entry`=134032 AND `locale`='zhCN') OR (`entry`=134036 AND `locale`='zhCN') OR (`entry`=137718 AND `locale`='zhCN') OR (`entry`=134038 AND `locale`='zhCN') OR (`entry`=134040 AND `locale`='zhCN') OR (`entry`=134031 AND `locale`='zhCN') OR (`entry`=134037 AND `locale`='zhCN') OR (`entry`=134522 AND `locale`='zhCN') OR (`entry`=135209 AND `locale`='zhCN') OR (`entry`=135208 AND `locale`='zhCN') OR (`entry`=135211 AND `locale`='zhCN') OR (`entry`=142856 AND `locale`='zhCN') OR (`entry`=135206 AND `locale`='zhCN') OR (`entry`=135207 AND `locale`='zhCN') OR (`entry`=139028 AND `locale`='zhCN') OR (`entry`=135213 AND `locale`='zhCN') OR (`entry`=134711 AND `locale`='zhCN') OR (`entry`=141941 AND `locale`='zhCN') OR (`entry`=135816 AND `locale`='zhCN') OR (`entry`=127482 AND `locale`='zhCN') OR (`entry`=143680 AND `locale`='zhCN') OR (`entry`=141870 AND `locale`='zhCN') OR (`entry`=137607 AND `locale`='zhCN') OR (`entry`=136728 AND `locale`='zhCN') OR (`entry`=139828 AND `locale`='zhCN') OR (`entry`=136729 AND `locale`='zhCN') OR (`entry`=137580 AND `locale`='zhCN') OR (`entry`=137606 AND `locale`='zhCN') OR (`entry`=135668 AND `locale`='zhCN') OR (`entry`=142306 AND `locale`='zhCN') OR (`entry`=142294 AND `locale`='zhCN') OR (`entry`=135671 AND `locale`='zhCN') OR (`entry`=142299 AND `locale`='zhCN') OR (`entry`=143682 AND `locale`='zhCN') OR (`entry`=135917 AND `locale`='zhCN') OR (`entry`=137906 AND `locale`='zhCN') OR (`entry`=137907 AND `locale`='zhCN') OR (`entry`=137904 AND `locale`='zhCN') OR (`entry`=137905 AND `locale`='zhCN') OR (`entry`=141912 AND `locale`='zhCN');
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `NameAlt`, `Title`, `TitleAlt`, `VerifiedBuild`) VALUES
(120791, 'zhCN', '先知祖尔', NULL, NULL, NULL, 27404),
(132979, 'zhCN', '神语者基哈拉', NULL, NULL, NULL, 27404),
(130742, 'zhCN', '夏督军', NULL, NULL, NULL, 27404),
(141521, 'zhCN', '萨莱·诺特队长', NULL, NULL, NULL, 27404),
(136428, 'zhCN', '黑暗史学家', NULL, '白骨之声', NULL, 27404),
(129323, 'zhCN', '剜齿虎后', NULL, NULL, NULL, 27404),
(139440, 'zhCN', '偷猎者加布拉坎', NULL, NULL, NULL, 27404),
(136334, 'zhCN', '肥指猩猩长者', NULL, NULL, NULL, 27404),
(135858, 'zhCN', '第七军团水手', '第七军团水手', NULL, NULL, 27404),
(122429, 'zhCN', '商队雷龙', NULL, NULL, NULL, 27404),
(120812, 'zhCN', '旅行兽', NULL, NULL, NULL, 27404),
(121210, 'zhCN', '纳萨诺斯·凋零者', NULL, '黑暗女王的勇士', NULL, 27404),
(135435, 'zhCN', '首席奥术师塔莉萨', NULL, NULL, NULL, 27404),
(120171, 'zhCN', '洛坎', NULL, NULL, NULL, 27404),
(135397, 'zhCN', '拉斯塔利荣誉卫兵', '拉斯塔利荣誉卫兵', NULL, NULL, 27404),
(134353, 'zhCN', '暴风城火炮', NULL, NULL, NULL, 27404),
(138161, 'zhCN', '精英法师卫兵', '精英法师卫兵', NULL, NULL, 27404),
(134964, 'zhCN', '天角雄鹰', NULL, NULL, NULL, 27404),
(134965, 'zhCN', '阿维亚什', NULL, '拉善的坐骑', NULL, 27404),
(142458, 'zhCN', '城镇公告员', NULL, NULL, NULL, 27404),
(139146, 'zhCN', '寒冰壁垒', NULL, NULL, NULL, 27404),
(134945, 'zhCN', '侏儒旋翼工程师', '侏儒旋翼工程师', NULL, NULL, 27404),
(134943, 'zhCN', '埃索达卫士', '埃索达卫士', NULL, NULL, 27404),
(134938, 'zhCN', '泰达希尔卫兵', NULL, NULL, NULL, 27404),
(134951, 'zhCN', '侏儒旋翼工程师', '侏儒旋翼工程师', NULL, NULL, 27404),
(134944, 'zhCN', '矮人火枪手', '矮人火枪手', NULL, NULL, 27404),
(134881, 'zhCN', '寒冰壁垒', NULL, NULL, NULL, 27404),
(134193, 'zhCN', '暴风城战斗法师', '暴风城战斗法师', NULL, NULL, 27404),
(134201, 'zhCN', '吉安娜·普罗德摩尔', NULL, NULL, NULL, 27404),
(138013, 'zhCN', '[DNT] Fire STalker', NULL, NULL, NULL, 27404),
(134191, 'zhCN', '吉尔尼斯格斗家', '吉尔尼斯格斗家', NULL, NULL, 27404),
(134192, 'zhCN', '吉尔尼斯战斗法师', '吉尔尼斯战斗法师', NULL, NULL, 27404),
(134199, 'zhCN', '吉尔尼斯神盾卫士', '吉尔尼斯神盾卫士', NULL, NULL, 27404),
(134200, 'zhCN', '吉恩·格雷迈恩', NULL, NULL, NULL, 27404),
(134198, 'zhCN', '暴风城教士', '暴风城教士', NULL, NULL, 27404),
(134202, 'zhCN', '安度因·乌瑞恩', NULL, '暴风城国王', NULL, 27404),
(142319, 'zhCN', '暴风城平民', '暴风城平民', NULL, NULL, 27404),
(137892, 'zhCN', '公告员古德曼', NULL, NULL, NULL, 27404),
(142318, 'zhCN', '暴风城平民', '暴风城平民', NULL, NULL, 27404),
(134197, 'zhCN', '暴风城皇家卫兵', '暴风城皇家卫兵', NULL, NULL, 27404),
(134783, 'zhCN', '军情七处特工', '军情七处特工', NULL, NULL, 27404),
(134195, 'zhCN', '暴风城卫兵', '暴风城卫兵', NULL, NULL, 27404),
(134194, 'zhCN', '暴风城骑士', '暴风城骑士', NULL, NULL, 27404),
(134609, 'zhCN', '蜂式直升机', NULL, NULL, NULL, 27404),
(134624, 'zhCN', '城镇公告员', NULL, NULL, NULL, 27404),
(138018, 'zhCN', '冰霜元素', NULL, NULL, NULL, 27404),
(139948, 'zhCN', '暴风城下水道入口', NULL, NULL, NULL, 27404),
(134163, 'zhCN', '法师指挥官莱拉', NULL, NULL, NULL, 27404),
(134094, 'zhCN', NULL, NULL, NULL, NULL, 27404),
(134091, 'zhCN', '第七军团战斗法师', '第七军团战斗法师', NULL, NULL, 27404),
(134092, 'zhCN', '塔兰吉公主', NULL, NULL, NULL, 27404),
(134093, 'zhCN', '先知祖尔', NULL, NULL, NULL, 27404),
(137428, 'zhCN', '卡祖尔', NULL, NULL, NULL, 27404),
(134079, 'zhCN', '霍格“服饰”', NULL, NULL, NULL, 27404),
(134120, 'zhCN', '萨鲁法尔大王', NULL, NULL, NULL, 27404),
(134086, 'zhCN', '被禁闭的捣乱者', NULL, NULL, NULL, 27404),
(134085, 'zhCN', '被监禁的暴徒', '被监禁的暴徒', NULL, NULL, 27404),
(134087, 'zhCN', '被关押的盗贼', NULL, NULL, NULL, 27404),
(134083, 'zhCN', '第七军团执行者', '第七军团执行者', NULL, NULL, 27404),
(134084, 'zhCN', '第七军团神射手', '第七军团神射手', NULL, NULL, 27404),
(137345, 'zhCN', '军官费尔班克', NULL, NULL, NULL, 27404),
(137351, 'zhCN', '暴风城守卫', '暴风城守卫', NULL, NULL, 27404),
(134039, 'zhCN', '纳萨诺斯·凋零者', NULL, '黑暗女王的勇士', NULL, 27404),
(134032, 'zhCN', '阿维亚什', NULL, '拉善的坐骑', NULL, 27404),
(134036, 'zhCN', '拉善·天角', NULL, '天角酋长', NULL, 27404),
(137718, 'zhCN', '亡灵卫兵珊莎', NULL, NULL, NULL, 27404),
(134038, 'zhCN', '洛坎', NULL, NULL, NULL, 27404),
(134040, 'zhCN', '亡灵卫兵马尔科姆', NULL, NULL, NULL, 27404),
(134031, 'zhCN', '天角雄鹰', NULL, NULL, NULL, 27404),
(134037, 'zhCN', '首席奥术师塔莉萨', NULL, NULL, NULL, 27404),
(134522, 'zhCN', '天角雄鹰', NULL, NULL, NULL, 27404),
(135209, 'zhCN', '阿维亚什', NULL, '拉善的坐骑', NULL, 27404),
(135208, 'zhCN', '拉善·天角', NULL, '天角酋长', NULL, 27404),
(135211, 'zhCN', '天角雄鹰', NULL, NULL, NULL, 27404),
(142856, 'zhCN', '金·霍恩', NULL, '公会商人', NULL, 27404),
(135206, 'zhCN', '洛坎', NULL, NULL, NULL, 27404),
(135207, 'zhCN', '首席奥术师塔莉萨', NULL, NULL, NULL, 27404),
(139028, 'zhCN', '亡灵卫兵珊莎', NULL, NULL, NULL, 27404),
(135213, 'zhCN', '亡灵卫兵马尔科姆', NULL, NULL, NULL, 27404),
(134711, 'zhCN', '希尔瓦娜斯·风行者', NULL, '大酋长', NULL, 27404),
(141941, 'zhCN', '巴尔', NULL, NULL, NULL, 27404),
(135816, 'zhCN', '邪犬', NULL, NULL, NULL, 27404),
(127482, 'zhCN', '下水道钳嘴鳄', NULL, NULL, NULL, 27404),
(143680, 'zhCN', 'Proxy Credit', NULL, NULL, NULL, 27404),
(141870, 'zhCN', '艾泽里特伤痕', NULL, NULL, NULL, 27404),
(137607, 'zhCN', '隐形的潜伏者', NULL, NULL, NULL, 27404),
(136728, 'zhCN', '生命侍女', NULL, NULL, NULL, 27404),
(139828, 'zhCN', '麦格尼·铜须', NULL, '代言人', NULL, 27404),
(136729, 'zhCN', '防御节点', NULL, NULL, NULL, 27404),
(137580, 'zhCN', '隐形的潜伏者', NULL, NULL, NULL, 27404),
(137606, 'zhCN', '隐形的潜伏者', NULL, NULL, NULL, 27404),
(135668, 'zhCN', '塞纳里奥议会德鲁伊', '塞纳里奥议会德鲁伊', '塞纳里奥议会', NULL, 27404),
(142306, 'zhCN', '赞吉吉', NULL, NULL, NULL, 27404),
(142294, 'zhCN', '布罗尔·熊皮', NULL, NULL, NULL, 27404),
(135671, 'zhCN', '大地之环萨满', '大地之环萨满', '大地之环', NULL, 27404),
(142299, 'zhCN', '大德鲁伊哈缪尔·符文图腾', NULL, NULL, NULL, 27404),
(143682, 'zhCN', '土灵守护者', NULL, NULL, NULL, 27404),
(135917, 'zhCN', 'Invisible Bunny', NULL, NULL, NULL, 27404),
(137906, 'zhCN', '灌魔基岩', NULL, NULL, NULL, 27404),
(137907, 'zhCN', '灌魔碎岩', NULL, NULL, NULL, 27404),
(137904, 'zhCN', '灌注艾泽里特的小型元素', NULL, NULL, NULL, 27404),
(137905, 'zhCN', '灌注艾泽里特的元素', NULL, NULL, NULL, 27404),
(141912, 'zhCN', '旅行的战士', NULL, NULL, NULL, 27404);


SET NAMES 'latin1';
SET NAMES 'utf8';
DELETE FROM `quest_template_locale` WHERE (`ID`=46957 AND `locale`='zhCN') OR (`ID`=51870 AND `locale`='zhCN') OR (`ID`=47733 AND `locale`='zhCN') OR (`ID`=51802 AND `locale`='zhCN') OR (`ID`=51801 AND `locale`='zhCN') OR (`ID`=51663 AND `locale`='zhCN') OR (`ID`=51555 AND `locale`='zhCN') OR (`ID`=51465 AND `locale`='zhCN') OR (`ID`=51421 AND `locale`='zhCN') OR (`ID`=49871 AND `locale`='zhCN') OR (`ID`=51286 AND `locale`='zhCN') OR (`ID`=53349 AND `locale`='zhCN') OR (`ID`=51247 AND `locale`='zhCN') OR (`ID`=53602 AND `locale`='zhCN') OR (`ID`=51087 AND `locale`='zhCN') OR (`ID`=51071 AND `locale`='zhCN') OR (`ID`=51800 AND `locale`='zhCN') OR (`ID`=47585 AND `locale`='zhCN') OR (`ID`=49884 AND `locale`='zhCN') OR (`ID`=52472 AND `locale`='zhCN') OR (`ID`=49810 AND `locale`='zhCN') OR (`ID`=47329 AND `locale`='zhCN') OR (`ID`=49785 AND `locale`='zhCN') OR (`ID`=52444 AND `locale`='zhCN') OR (`ID`=49775 AND `locale`='zhCN') OR (`ID`=47312 AND `locale`='zhCN') OR (`ID`=49758 AND `locale`='zhCN') OR (`ID`=53435 AND `locale`='zhCN') OR (`ID`=49754 AND `locale`='zhCN') OR (`ID`=49681 AND `locale`='zhCN') OR (`ID`=47257 AND `locale`='zhCN') OR (`ID`=51980 AND `locale`='zhCN') OR (`ID`=51340 AND `locale`='zhCN') OR (`ID`=49421 AND `locale`='zhCN') OR (`ID`=51332 AND `locale`='zhCN') OR (`ID`=49940 AND `locale`='zhCN') OR (`ID`=47199 AND `locale`='zhCN') OR (`ID`=53056 AND `locale`='zhCN') OR (`ID`=51249 AND `locale`='zhCN') OR (`ID`=47226 AND `locale`='zhCN') OR (`ID`=51248 AND `locale`='zhCN') OR (`ID`=51072 AND `locale`='zhCN') OR (`ID`=51246 AND `locale`='zhCN') OR (`ID`=51888 AND `locale`='zhCN') OR (`ID`=52210 AND `locale`='zhCN') OR (`ID`=50769 AND `locale`='zhCN') OR (`ID`=51443 AND `locale`='zhCN') OR (`ID`=51165 AND `locale`='zhCN') OR (`ID`=53031 AND `locale`='zhCN') OR (`ID`=52428 AND `locale`='zhCN') OR (`ID`=51211 AND `locale`='zhCN');
INSERT INTO `quest_template_locale` (`ID`, `locale`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `QuestCompletionLog`, `VerifiedBuild`) VALUES
(46957, 'zhCN', '欢迎来到祖达萨', '与塔兰吉公主共骑。', '部落的勇士，欢迎来到赞达拉王国的都城、巨魔帝国的中心——祖达萨。$b$b来和我共乘一骑吧，这样我们讨论的事项就不会被偷听到了。', '', '', '', '', '', '前往百商集市与加卡泽将军交谈。', 27404),
(51870, 'zhCN', '海岛探险', '向赞达拉港的雷兹奥昆报到。', '我们的间谍截获了一条的联盟消息，称无尽之海中有艾泽里特露出海床。\n\n女妖之啸号航速不足，无法赶在联盟之前将我们送到那里。但我们很走运，我已经安排好一艘赞达拉的船，随时准备出航抓住这次机会。\n\n去码头西侧找雷兹奥昆船长谈谈，他已经了解基本情况，应该在等你了。', '', '', '', '', '', '', 27404),
(47733, 'zhCN', '神语者的背叛', '消灭神语者基哈拉。', '听着，陌生人。我活不了多久了。\n\n佐拉妮把大王带来时，我就在村子里。当时说要严守这个秘密，否则祖尔就会找到我们。\n\n你看看四周。他们还是找到了我们！\n\n但是我知道……这不是先知一己之力能做到的。我们的神语者用客套话糊弄住了佐拉妮，说什么自己会帮忙，然后转身就把我们卖了。\n\n我们马上就要死了，这都是基哈拉的罪过。是她把这灾难带到了我们头上！\n\n干掉她……让她血债血偿！', '', '这个村子的神语者答应要帮助大王，却把祖尔的走狗带到了泽布阿里。', '神语者基哈拉', '', '', '', 27404),
(51802, 'zhCN', '据点：斯托颂谷地', '在斯托颂谷地协助雷克萨。', '我们在斯托颂谷地建立并强化了一座岗哨，战牙要塞。\n\n库尔提拉斯军队已经包围了我们，他们即将发动攻击。我们需要支援。赶快。\n\n                                 - 雷克萨', '', '', '', '', '', '', 27404),
(51801, 'zhCN', '据点：德鲁斯瓦', '在德鲁斯瓦协助加里维克斯和伊崔格', '看来德鲁斯瓦的地下有片巨大的艾泽里特矿层。\n\n你想赚钱吗？我可想死了。这真是个金子般的好机会，你懂的。时间就是金钱！\n\n          - 贸易大王加里维克斯', '', '', '', '', '', '', 27404),
(51663, 'zhCN', '做好准备', '破坏8份加巴尼补给。', '<神庙的地面上散放着大量补给品，大部分都被严加看守。加巴尼似乎正在为攻城或者别的重大行动做准备。\n\n祖尔应该会想要阻碍他们的行动。>', '', '', '', '', '', '', 27404),
(51555, 'zhCN', '保持本心', '去塔兰吉的惩戒与丹尼斯·格林泰尔交谈。', '多亏塔兰吉公主的行动，我们已经甩掉追击者了。她的洛阿神灵实在是强大。\n\n我们需要确定是否还有幸存者，他们在赞达拉已经没有立足之地了。我担心我们的同胞被遗忘者可能会变得……过于狂热。请对他们多加留意，提醒他们什么才是真正的荣耀。', '', '', '', '', '', '', 27404),
(51465, 'zhCN', '一大堆原料', '对破烂的裤子使用碎裂专家Mk1型。', '嘿，这位陌生的朋友，不想了解一下本世纪的最新发明吗？$b$b它被称为碎裂专家Mk1型，旅行者的随身护甲师、武器匠和道具专家，可以把您的生产力提高三，哦不，四倍。$b$b来，用这些裤子来感受一下它神奇的功能吧。包您满意。', '', '', '', '', '', '', 27404),
(51421, 'zhCN', '坐船前行', '和暗影猎手塔金一起前往提拉加德海峡。', '我们的暗影猎手似乎捉到了一艘海盗舤船。\n\n我们派他去提拉加德海峡寻找据点，看上去他好象胸有成竹了。\n\n塔金需要你亲自过去帮忙。别让他等太久。', '', '', '', '', '', '', 27404),
(49871, 'zhCN', '逆潮而上', '杀死夏督军并点燃烽火。', '魔古已经歇斯底里了。哈！他们或许还想在洛阿神灵降下怒火之前逃走！\n\n督军的巫师喽啰设下了路障，并且攻占了塔楼。\n\n如果没有刺痛的话，避雷针用起来也挺不错的。甚至可以说是能量充沛。\n\n找到夏督军并让他“下岗”。\n\n然后让我们的人知道，我们夺回了帕库之息！\n\n这种魔精已经被赋予了力量，可以通过强大的爆炸来点燃塔楼的烽火。', '', '残忍无情。', '夏督军', '', '', '', 27404),
(51286, 'zhCN', '别想逃跑', '阻止联盟的撤退企图。', '这是一场彻头彻尾的灾难。你收集到的情报似乎表明，他们已经在这座岛屿上建立起据点了，而这只是其中的一个而已。\n\n他们手上有一艘船，而我们需要拖延住他们。这是一些爆盐炸弹。把它安放在敌人的船上，毁掉他们逃离的希望吧。如果可能的话，除掉负责指挥撤离的船长。', '', '', '', '', '', '', 27404),
(53349, 'zhCN', '征战的回报', '', '', '', '', '', '', '', '', 27404),
(51247, 'zhCN', '他们带来的东西', '收集联盟的情报。', '在我们回去报告之前，我们得打探清楚这些水手的来头。\n\n在理想情况下，我们会入侵他们的营地，但他们人多势众，我们的小队应付不了。幸运的是，他们正专注于打捞工作，而忽视了安保。看看你能不能找到这群打捞者头领的情报。', '', '', '', '', '', '', 27404),
(53602, 'zhCN', '战略精进', '与伊崔格谈一谈，开始研究一项升级。', '单靠武力是无法赢得这场战争的。你战斗时请多多审视周边的环境并加以利用，这样我们就能在面对敌人时获得更多优势。\n\n我列出了一些改动，你可以进行选择。虽然每一个单看起来不怎么起眼，但合起来却能成为巨大的优势。\n\n你拿定主意后，就告诉我。', '', '', '', '', '', '', 27404),
(51087, 'zhCN', '通缉：黑暗史学家', '消灭黑暗史学家。', '想要深入希巴拉探险的勇士。$b$b每当夜晚降临时，便会有奇怪的噪音和哀号声从骸骨中传出，我的工人都被吓坏了。$b$b请你找到怪声的来源并将其消除，我会报答你的。', '', '希巴拉崇拜者最后的残魂。', '黑暗史学家', '', '', '', 27404),
(51071, 'zhCN', '通缉：剜齿虎后', '消灭一只剜齿虎后。', '致所有勇于接受挑战的人：$b$b找到一只祖达萨最强壮、最恶毒的剜齿虎——残暴的剜齿虎后，然后把它干掉。$b$b它们经常出没于蔓林小村外的道路两侧。$b$b成功者将获得奖励！', '', '剜齿虎主母。', '剜齿虎后', '', '', '', 27404),
(51800, 'zhCN', '据点：提拉加德海峡', '在提拉加德海峡协助暗影猎手塔金。', '提拉加德的海岸线上有数不清的海盗。\n\n我跟某艘船的大副搭了几句话，她觉得我们应该可以把船长干掉，顺便建立一个漂亮的岗哨。\n\n          - 暗影猎手塔金', '', '', '', '', '', '', 27404),
(47585, 'zhCN', '螳螂捕蝉', '在禁猎区内找到另外两名猎人。', '<他的背部有一个伤口，看起来像是被一把匕首所伤。\n\n看来攻击我们的不仅仅是野生动物了。>', '', '', '', '', '', '与狩猎大师沃加交谈。', 27404),
(49884, 'zhCN', '希望之光', '与格雷兹科船长一起飞行以点燃塔楼上的烽火。', '还剩最后一步！\n\n占下第二座塔，舰队将再次属于我们！\n\n爬上来，让我们完成这最后一步！', '', '', '', '', '', '', 27404),
(52472, 'zhCN', '小洛快跑', '学习如何引导洛。', '你好，$n！我们始祖龟从小就听说着洛的事迹，它是我们的同类，有着许多传奇般的冒险经历。每当有年幼的始祖龟对洛是如何完成这些历险而表示好奇的时候，这些故事都会让他们大开眼界。\n\n想试试吗？', '', '', '', '', '', '', 27404),
(49810, 'zhCN', '恐龙红娘', '将巫医贾拉尔的巫毒图腾放置在两只雷龙附近。', '我们碰到了关于爱情的问题，你来得正是时候。$b$b这两只白色雷龙是该种族仅存的两只，公的叫做本金，母的叫做玛卡冯。它们其他的族人都不在世上了。$b$b这两只雷龙现在还没有恋爱的想法。如果你能帮助我和我的新朋友卡拉，可能会为这个种族保留唯一延续的机会。$b$b将我的巫毒图腾放置在他们附近，然后我就可以感知到他们的想法，从而知道我们要怎么帮助他们。', '', '', '', '', '', '', 27404),
(47329, 'zhCN', '血望者的遗产', '帮助考察者泰莎拉·血望者找到希巴拉化石。', '你好，$n。$b$b我是代表我的父亲高阶考察者泰瑟兰·血望者到这里来的，我的任务是监督这一带各种化石、遗物和神器的发掘工作。$b$b我收到情报表明，在这处遗迹的地下埋藏着一件东西，它能大大推进部落的伟大事业。$b$b挖掘的过程中需要你的帮助。你也看到了，这些夜之子远算不上手巧，对干脏活儿也有些抵触。$b$b能请你为他们树立一个良好的榜样吗？', '', '', '', '', '', '', 27404),
(49785, 'zhCN', '摧毁武器', '调查武器。', '我已经侦察了下一个岛屿。莱赞之爪号的甲板上装配了强大的武器。\n\n我不知道那武器是什么，但他们信心满满，认为它能够冲破我们家园的防线。\n\n快找到那艘船。赶在他们朝祖达萨开火之前破坏掉它！', '', '', '', '', '', '', 27404),
(52444, 'zhCN', '最后的据点', '在库尔提拉斯战役地图上查看最后一个据点。', '我们已经在库尔提拉斯建立了两个重要的据点，现在是时候建立第三个了。\n\n等你做好准备，我们就来看一看作战计划。', '', '', '', '', '', '', 27404),
(49775, 'zhCN', '牢笼钥匙', '拿到舵手加尔扎的钥匙。', '要判断一名巨魔的本质，只要看他在知道了祖尔的真面目后会作何举动就可以了。\n\n那个加尔扎是一个獠牙肮脏、偷窃船只的造反叛徒。她是个狂热的信徒，会追随那个异教徒被上古之神吞噬。\n\n我嘛，我是那种拔下她的獠牙，用来揍她一顿的类型。\n\n不过只要你拿走她的钥匙，把我们的海波师和船员解决出来，我就满意了！', '', '', '', '', '', '在下层甲板上与兰珐交谈。', 27404),
(47312, 'zhCN', '翎后', '杀死翎后并带回她的一根翎毛。', '啊，你就是那个继承了巴兹科基恐龙群的家伙？反正也没剩下什么了。\n\n我知道是什么杀了他，我也试过警告他。翎后是一头凶恶的暴掠龙，她比她同类的体型更大，也更聪明。这里大多数的蛋都是她的。\n\n通常我是会赞美这种野兽的力量的，不过她已经变成了一个麻烦。\n\n你可以在饲育之地发现正在守卫巢穴的她。杀死她，并把她的一根头翎带来作为证明。', '', '狂鬃暴掠龙的主母，人们都知道她会偷袭毫无防备的战兽栏照看者。', '翎后', '', '', '', 27404),
(49758, 'zhCN', '点燃烽火！', '登上船只。', '我的船员不是和祖尔一伙儿的。我们已经看透了他的真面目。\n\n而在远方的港口里，祖尔的叛徒们已经和魔古族一起同流合污，打算夺取整支舰队。如果我们丢了舰队又丢了港口，我们就等于丢了整座城市！\n\n我们必须让祖达萨的人民知道，我们绝不动摇。我们会夺回战舰。我们要赶走恶徒。\n\n我们要用受神灵祝福的烈焰点燃塔楼，让他们明白，列王海湾永远属于赞达拉！', '', '', '', '', '', '与水手长玛塞特交谈。', 27404),
(53435, 'zhCN', '部落的艾泽里特', '在海岛探险中收集艾泽里特。', '在海岛探险中协助部落收集艾泽里特。', '', '', '', '', '', '', 27404),
(49754, 'zhCN', '祖尔的信徒', '净化祖尔的部队。', '这里的敌人，要么追随祖尔，要么只是想利用他来夺取赞达拉。\n\n祖尔很自大，二者他都来者不拒。\n\n他们还声称只有祖尔才有资格领导我们。\n\n你去劝劝他们。', '', '', '', '', '', '', 27404),
(49681, 'zhCN', '小提', '救出小提。', '<这只小巧的装甲迅猛龙可怜兮兮地挠着笼子的木栅栏。随着你的靠近，这个小家伙开始疯狂地扭动身体，并发出了刺耳的求救声！$b$b也许你可以打开笼子，放它自由。>', '', '', '', '', '', '将小提交给兽母加巴蒂。', 27404),
(47257, 'zhCN', '希巴拉的骨骸', '前往希巴拉骨骸并与考察者泰莎拉·血望者交谈。', '往南走一段距离，你会看到一具远古生物骨骸。那是希巴拉，魔暴龙的始祖。它是莱赞之母，也是后来所有的魔暴龙之母。那里现在并没有赞达拉巨魔居住，是野兽的领地。$b$b我听说过传闻，你们部落似乎正派人在它的骨骸中寻找着什么东西。$b$b这实在是太不明智了。你可以去看看情况吗？', '', '', '', '', '', '', 27404),
(51980, 'zhCN', '通缉：加布拉坎', '消灭偷猎者加布拉坎。', '致所有想要寻找挑战的猎人：\n\n找到并击败名为加布拉坎的巨魔。为了自己的兽栏，他偷猎了战兽栏宝贵的蛋、毛皮和野兽。\n\n成功后去找飞翼骑士尼维克领取你的奖赏。', '', '', '偷猎者加布拉坎', '', '', '', 27404),
(51340, 'zhCN', '德鲁斯瓦呀！', '与伊崔格和亡灵舰长塔特赛尔交谈。', '空气中有艾泽里特的味道， $n。你闻到了吗？\n\n德鲁斯瓦的地下显然有着巨量的艾泽里特，储量冠绝库尔提拉斯。艾泽里特意味着利润，利润意味着战胜联盟……而胜利意味着更多的利润。\n\n我们必须得到那些艾泽里特! \n\n去找伊崔格和塔特赛尔报到，这样我们能早点出发。时间就是金钱！', '', '', '', '', '', '', 27404),
(49421, 'zhCN', '追杀祖尔', '前往佐卡罗广场与拉斯塔哈大王见面。', '祖尔正在将他的军队全部调回其位于先知神殿的要塞中。$b$b拉斯塔哈已经发出了命令，他要在佐卡罗广场集结一支军队，只要拿得动武器，所有忠于大王的人都要加入队伍。看来老大王的拥护者比祖尔预期的还要多。$b$b有三位最为年长的神灵也选择支持他。$b$b去帮帮他们。', '', '', '', '', '', '', 27404),
(51332, 'zhCN', '跨越大洋的旅途', '到祖达萨向贸易大王加里维克斯报到。', '我知道你要在德鲁斯瓦建立我们的据点，贸易大王加里维克斯会协助你完成这项任务。\n\n我明白，这选择很奇怪，但有人告诉我德鲁斯瓦有艾泽里特，贸易大王的态度也很坚决。', '', '', '', '', '', '', 27404),
(49940, 'zhCN', '沙痕裂口', '与剑卫桑吉在沙痕裂口会面。', '我听到了一些关于沙子和毒蛇的传言。$b$b情报来自祖达萨边界上的一个只有几片农场的小村子。我记得它的名字是多什么什么。去那里看看到底出什么情况了。$b$b剑卫桑吉之前已经出发了。她能够帮你了解有关……那个村子事态的最新情况。', '', '', '', '', '', '', 27404),
(47199, 'zhCN', '鲜血关口', '前往鲜血关口。', '我们刚刚接到消息说，北部边境正遭受着鲜血巨魔的猛烈进攻。$b$b拉斯塔哈大王需要增援。$b$b你比我们中的任何人都更加了解那种威胁。尽你所能帮助他们。', '', '', '', '', '', '前往鲜血关口与拉斯塔哈大王交谈。', 27404),
(53056, 'zhCN', '扩大影响', '到赞达拉港的女妖之啸号上与纳萨诺斯·凋零者会面。', '我们发现了一个地点，很适合作为库尔提拉斯最终的大型据点。\n\n回到女妖之啸号上去，我们来讨论一下新的任务。', '', '是时候在库尔提拉斯建立新的据点了。', '纳萨诺斯·凋零者', '', '', '', 27404),
(51249, 'zhCN', '蟹肉美餐', '从荒弃六足蟹身上收集$1oa块蟹肉。', '被遗忘者身上没带任何食物，他们可能会吃人，或者，也许他们不用吃东西吧。\n\n但我和提凯要饿死了！$n，如果你不太忙的话，能不能给我们找点吃的东西来？\n\n比如一些新鲜的蟹肉？', '', '', '', '', '', '', 27404),
(47226, 'zhCN', '孤儿幼崽', '前往战兽栏，找到能够照顾恐角龙宝宝的人。', '<幸存下来的幼崽可怜巴巴地呜咽着，眼巴巴地望着母兽的尸体。\n\n它满怀希望地打量着你，看来它想跟随你。\n\n也许你可以在战兽栏找到能够照顾它的人？>', '', '', '', '', '', '', 27404),
(51248, 'zhCN', '高产的害虫', '收集$1oa只虫子。', '这片丛林对小动物和野兽来说是片全新的栖息地。真可惜，我们来这儿只是为了解决联盟的浮木。\n\n我想出了一个好点子，天才般的计划。就俩字儿：毒虫。\n\n首先，我需要一些虫子。为了完成测试，爬虫飞虫我都要。', '', '', '', '', '', '', 27404),
(51072, 'zhCN', '通缉：肥指猩猩长者', '消灭一只肥指猩猩长者。', '致所有勇于接受挑战的人：$b$b找到一只最庞大、最危险的野生大猩猩——肥指猩猩长者，然后把它干掉。$b$b它们经常出没于蔓林小村外的道路两侧。$b$b成功者将获得奖励！', '', '庞大且重视地盘。', '肥指猩猩长者', '', '', '', 27404),
(51246, 'zhCN', '海难侦察', '消灭$1oa个第七军团海难水手。', '我真不敢相信他们当中有人能从那次海难中活下来。我们接到命令，不能让幸存者建立据点。\n\n他们的数量远远超过预期。我们需要削弱他们的力量。\n\n怎么说呢？你还在等什么？一次盛情邀请？', '', '', '', '', '', '', 27404),
(51888, 'zhCN', '海岛探险', '与雷兹奥昆船长对话以开始探险，然后探索神秘海岛。', '若要赶在联盟之前抵达海岛，我们就最好加快速度。\n\n准备好了吗？', '', '', '', '', '', '', 27404),
(52210, 'zhCN', '发出求救信号', '和船长交谈。', '我注意到有大批人马离开了舰队，进入了港口。\n\n他们派出了飞行单位去搜寻某样东西，或者是某个人。\n\n那些战舰完成了一次伟大的航行，但它们还有更重大的任务。\n\n请你去和格雷兹科船长谈谈，我相信他需要你的帮助！', '', '', '', '', '', '', 27404),
(50769, 'zhCN', '逃出暴风城', '完成“逃出暴风城”场景战役。', '女王陛下真是精明过人。要渗透暴风城，我们势必需要部落最出色的支援，而这样一只不引人注目的小队正好可以神不知鬼不觉地潜入暴风城的核心地带。\n\n<纳萨诺斯凝视着集结完毕的小队，摸着下巴说道。>\n\n嗯，我懂了。\n\n道路已经畅通无阻。等你准备好接受大酋长委派的任务时就来找我，$n。', '', '', '', '', '', '', 27404),
(51443, 'zhCN', '使命宣言', '在大酋长希尔瓦娜斯·风行者那里接受任务。', '跟我来，$n。大酋长召唤我们去执行一项绝密任务。\n\n部落的未来已经危在旦夕。\n\n我认为我们最好别让她等太久。', '', '', '', '', '', '', 27404),
(51165, 'zhCN', '通缉：沙漠斥候维萨里克', '找到并消灭沙漠斥候维萨里克。', '致所有想让无信者帝国灭亡的人：\n\n我们发现沙漠斥候维萨里克在东面的沙丘上巡逻。召集一支出色的队伍，去干掉他吧！\n\n成功者将获得一笔可观的奖赏。', '', '战斗的老手。接近时需非常谨慎。', '沙漠斥候维萨里克', '', '', '', 27404),
(53031, 'zhCN', '代言人的命令', '前往奥格瑞玛与纳萨诺斯·凋零者交谈。', '世界之魂暂时…安全了。我又听见了艾泽拉斯的声音，但她还是很虚弱。\n\n上层表面的元素已经冷静下来了。即使只运用艾泽拉斯之心的些许力量，都能给这里带来平和。\n\n你必须返回奥格瑞玛，告知你的盟友这里发生了什么事。记得提醒他们，无论战争中发生了怎样的状况，我们都必须拯救我们的世界。\n\n很快我们就会再次见面，$n。艾泽拉斯的战斗才刚刚打响。', '', '', '', '', '', '前往奥格瑞玛与纳萨诺斯·凋零者交谈。', 27404),
(52428, 'zhCN', '灌注世界之心', '吸收艾泽里特来强化艾泽拉斯之心。', '艾泽拉斯的声音变得越发微弱。如果这个秘室的封印破裂，她就会失去灵魂！\n\n我们只有一次机会来拯救所有人。\n\n吸收秘室周围的艾泽里特，把它们注入艾泽拉斯之心。然后释放护符的力量，来治愈封印中间的裂痕。\n\n艾泽里特拥有毁灭性的力量，但通过护符引导的话，也可以用来治愈世界！', '', '', '', '', '', '', 27404),
(51211, 'zhCN', '艾泽拉斯之心', '进入心之秘室与艾泽拉斯进行密谈。', '艾泽拉斯正命悬一线，$n。萨格拉斯之剑造成了深深的伤口。世界的痛苦让元素们都陷入了狂乱！\n\n我能听到艾泽拉斯的声音，但这远远不够。\n\n她需要的是付诸行动的勇士。\n\n我们脚下深藏着一座名为“心之密室”的上古泰坦宝库。我能感到，艾泽拉斯希望在那里和你们对话。\n\n跟我一起进入密室。这可能是拯救她的最后机会！', '', '', '', '', '', '', 27404);


SET NAMES 'latin1';
SET NAMES 'utf8';
DELETE FROM `quest_objectives_locale` WHERE (`ID`=296686 AND `locale`='zhCN') OR (`ID`=336652 AND `locale`='zhCN') OR (`ID`=336869 AND `locale`='zhCN') OR (`ID`=338528 AND `locale`='zhCN') OR (`ID`=335476 AND `locale`='zhCN') OR (`ID`=341497 AND `locale`='zhCN') OR (`ID`=341733 AND `locale`='zhCN') OR (`ID`=290630 AND `locale`='zhCN') OR (`ID`=290629 AND `locale`='zhCN') OR (`ID`=295479 AND `locale`='zhCN') OR (`ID`=341842 AND `locale`='zhCN') OR (`ID`=339070 AND `locale`='zhCN') OR (`ID`=339068 AND `locale`='zhCN') OR (`ID`=295369 AND `locale`='zhCN') OR (`ID`=295368 AND `locale`='zhCN') OR (`ID`=295985 AND `locale`='zhCN') OR (`ID`=295930 AND `locale`='zhCN') OR (`ID`=292647 AND `locale`='zhCN') OR (`ID`=295238 AND `locale`='zhCN') OR (`ID`=295237 AND `locale`='zhCN') OR (`ID`=339037 AND `locale`='zhCN') OR (`ID`=295529 AND `locale`='zhCN') OR (`ID`=341368 AND `locale`='zhCN') OR (`ID`=295485 AND `locale`='zhCN') OR (`ID`=295702 AND `locale`='zhCN') OR (`ID`=295051 AND `locale`='zhCN') OR (`ID`=335466 AND `locale`='zhCN') OR (`ID`=335465 AND `locale`='zhCN') OR (`ID`=335440 AND `locale`='zhCN') OR (`ID`=337463 AND `locale`='zhCN') OR (`ID`=337462 AND `locale`='zhCN') OR (`ID`=337137 AND `locale`='zhCN') OR (`ID`=335889 AND `locale`='zhCN') OR (`ID`=333785 AND `locale`='zhCN') OR (`ID`=335884 AND `locale`='zhCN') OR (`ID`=335883 AND `locale`='zhCN') OR (`ID`=340595 AND `locale`='zhCN') OR (`ID`=341314 AND `locale`='zhCN') OR (`ID`=340536 AND `locale`='zhCN') OR (`ID`=340066 AND `locale`='zhCN') OR (`ID`=338944 AND `locale`='zhCN') OR (`ID`=337943 AND `locale`='zhCN') OR (`ID`=335716 AND `locale`='zhCN') OR (`ID`=335132 AND `locale`='zhCN') OR (`ID`=335131 AND `locale`='zhCN');
INSERT INTO `quest_objectives_locale` (`ID`, `locale`, `QuestId`, `StorageIndex`, `Description`, `VerifiedBuild`) VALUES
(296686, 'zhCN', 46957, 0, '跟随塔兰吉公主', 27404),
(336652, 'zhCN', 51663, 1, '摧毁加巴尼物资', 27404),
(336869, 'zhCN', 51421, 0, '与塔特赛尔交谈并乘船前往提拉加德海峡', 27404),
(338528, 'zhCN', 49871, 0, '点燃烽火', 27404),
(335476, 'zhCN', 51286, 0, '放置爆盐炸弹', 27404),
(341497, 'zhCN', 53349, 0, '获得征服点数', 27404),
(341733, 'zhCN', 53602, 0, '选择要进行的升级', 27404),
(290630, 'zhCN', 47585, 2, '找到神枪手尤利安', 27404),
(290629, 'zhCN', 47585, 1, '找到游侠帕露', 27404),
(295479, 'zhCN', 49884, 0, '点燃烽火', 27404),
(341842, 'zhCN', 52472, 0, '引导洛在不走回头路的情况下通过所有地点', 27404),
(339070, 'zhCN', 52472, 2, '指引洛到达第一个目的地', 27404),
(339068, 'zhCN', 52472, 1, '与托基谈一谈', 27404),
(295369, 'zhCN', 49810, 1, '对暴躁的玛卡冯使用巫毒图腾', 27404),
(295368, 'zhCN', 49810, 0, '对温顺的本金使用巫毒图腾', 27404),
(295985, 'zhCN', 47329, 1, '第一个泥土堆', 27404),
(295930, 'zhCN', 47329, 0, '普通的泥土堆', 27404),
(292647, 'zhCN', 47329, -1, '发现化石', 27404),
(295238, 'zhCN', 49785, 1, '消灭雷欧卡', 27404),
(295237, 'zhCN', 49785, 0, '调查武器', 27404),
(339037, 'zhCN', 52444, 0, '查看最后一个据点', 27404),
(295529, 'zhCN', 49758, 1, '带领舰队斥候前往远方的岛屿。', 27404),
(341368, 'zhCN', 53435, 0, '在海岛探险中收集40000份艾泽里特', 27404),
(295485, 'zhCN', 49754, 0, '净化祖尔的部队', 27404),
(295702, 'zhCN', 49681, 2, '找到小提的主人', 27404),
(295051, 'zhCN', 49681, 1, '释放小提', 27404),
(335466, 'zhCN', 51340, 1, '与塔特赛尔交谈并乘船前往德鲁斯瓦', 27404),
(335465, 'zhCN', 51340, 0, '与伊崔格交谈', 27404),
(335440, 'zhCN', 51248, 0, '收集虫子', 27404),
(337463, 'zhCN', 51888, 1, '探索神秘海岛', 27404),
(337462, 'zhCN', 51888, 0, '与雷兹奥昆船长谈一谈', 27404),
(337137, 'zhCN', 50769, 2, '完成“逃出暴风城”场景战役', 27404),
(335889, 'zhCN', 50769, 1, '搭乘城墙的交通工具', 27404),
(333785, 'zhCN', 50769, 0, '喝下药水', 27404),
(335884, 'zhCN', 51443, 1, '与你的队伍会合', 27404),
(335883, 'zhCN', 51443, 0, '与大酋长希尔瓦娜斯·风行者交谈', 27404),
(340595, 'zhCN', 53031, 0, '返回奥格瑞玛', 27404),
(341314, 'zhCN', 52428, 1, '使用艾泽拉斯之心来修复封印', 27404),
(340536, 'zhCN', 52428, 2, '艾泽里特伤痕追踪', 27404),
(340066, 'zhCN', 52428, 3, '进入心之秘室', 27404),
(338944, 'zhCN', 52428, -1, '吸收艾泽里特', 27404),
(337943, 'zhCN', 51211, 3, '部落麦格尼', 27404),
(335716, 'zhCN', 51211, 0, '在心之秘室内与麦格尼交谈', 27404),
(335132, 'zhCN', 51211, 2, '使用泰坦控制台观看过往事迹', 27404),
(335131, 'zhCN', 51211, 1, '使用希利苏斯的设备前往心之秘室', 27404);


SET NAMES 'latin1';
SET NAMES 'utf8';
DELETE FROM `quest_request_items_locale` WHERE (`ID`=50769 AND `locale`='zhCN');
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(50769, 'zhCN', '我们绝不能让大酋长失望。', 27404);


DELETE FROM `creature_template_addon` WHERE `entry` IN (42504 /*42504*/, 62116 /*62116*/, 39380 /*39380*/, 39379 /*39379*/, 131909 /*131909 (废土碾压者)*/, 49523 /*49523 - -Unknown-*/, 49499 /*49499 (被征用的火炮) - -Unknown-*/, 49115 /*49115 (司克诺兹步兵尸体) - -Unknown-, -Unknown-, -Unknown-*/, 49113 /*49113 (Scorch Mark Bunny JSB) - -Unknown-, -Unknown-, -Unknown-*/, 62127 /*62127 (翡翠树蚺)*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(42504, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 42504
(62116, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 62116
(39380, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 39380
(39379, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 39379
(131909, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 131909 (废土碾压者)
(49523, 0, 0, 65536, 1, 0, 0, 0, 0, '46598'), -- 49523 - -Unknown-
(49499, 0, 0, 65536, 1, 0, 0, 0, 0, '85809'), -- 49499 (被征用的火炮) - -Unknown-
(49115, 0, 0, 65536, 1, 0, 0, 0, 0, '80852 85500 29266'), -- 49115 (司克诺兹步兵尸体) - -Unknown-, -Unknown-, -Unknown-
(49113, 0, 0, 65536, 1, 0, 0, 0, 0, '80852 90101 91462'), -- 49113 (Scorch Mark Bunny JSB) - -Unknown-, -Unknown-, -Unknown-
(62127, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- 62127 (翡翠树蚺)


DELETE FROM `creature_template_scaling` WHERE (`Entry`=138161 AND `DifficultyID`=12) OR (`Entry`=134201 AND `DifficultyID`=12) OR (`Entry`=134092 AND `DifficultyID`=12) OR (`Entry`=134093 AND `DifficultyID`=12) OR (`Entry`=134036 AND `DifficultyID`=12) OR (`Entry`=134037 AND `DifficultyID`=12) OR (`Entry`=134038 AND `DifficultyID`=12) OR (`Entry`=42504 AND `DifficultyID`=0) OR (`Entry`=39380 AND `DifficultyID`=0) OR (`Entry`=39379 AND `DifficultyID`=0) OR (`Entry`=3300 AND `DifficultyID`=0) OR (`Entry`=24935 AND `DifficultyID`=0) OR (`Entry`=131909 AND `DifficultyID`=0) OR (`Entry`=49523 AND `DifficultyID`=0) OR (`Entry`=49499 AND `DifficultyID`=0) OR (`Entry`=28960 AND `DifficultyID`=0) OR (`Entry`=49835 AND `DifficultyID`=0) OR (`Entry`=49727 AND `DifficultyID`=0) OR (`Entry`=45302 AND `DifficultyID`=0) OR (`Entry`=32520 AND `DifficultyID`=0) OR (`Entry`=48275 AND `DifficultyID`=0) OR (`Entry`=50491 AND `DifficultyID`=0) OR (`Entry`=50490 AND `DifficultyID`=0) OR (`Entry`=49725 AND `DifficultyID`=0) OR (`Entry`=50496 AND `DifficultyID`=0) OR (`Entry`=48883 AND `DifficultyID`=0) OR (`Entry`=1420 AND `DifficultyID`=0) OR (`Entry`=14881 AND `DifficultyID`=0) OR (`Entry`=49131 AND `DifficultyID`=0) OR (`Entry`=49743 AND `DifficultyID`=0);
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(138161, 12, 110, 120, 0, 0, 189, 27404),
(134201, 12, 110, 120, 0, 0, 189, 27404),
(134092, 12, 110, 120, 0, 0, 189, 27404),
(134093, 12, 110, 120, 0, 0, 189, 27404),
(134036, 12, 110, 120, 0, 0, 189, 27404),
(134037, 12, 110, 120, 0, 0, 189, 27404),
(134038, 12, 110, 120, 0, 0, 189, 27404),
(42504, 0, 0, 0, 0, 0, 150, 27404),
(39380, 0, 0, 0, 0, 0, 150, 27404),
(39379, 0, 0, 0, 0, 0, 150, 27404),
(3300, 0, 0, 0, 0, 0, 277, 27404),
(24935, 0, 0, 0, 0, 0, 277, 27404),
(131909, 0, 110, 120, 0, 0, 650, 27404),
(49523, 0, 83, 90, 0, 0, 55, 27404),
(49499, 0, 83, 90, 0, 0, 55, 27404),
(28960, 0, 0, 0, 0, 0, 277, 27404),
(49835, 0, 0, 0, 0, 0, 277, 27404),
(49727, 0, 0, 0, 0, 0, 277, 27404),
(45302, 0, 0, 0, 0, 0, 135, 27404),
(32520, 0, 0, 0, 0, 0, 277, 27404),
(48275, 0, 0, 0, 0, 0, 135, 27404),
(50491, 0, 0, 0, 0, 0, 277, 27404),
(50490, 0, 0, 0, 0, 0, 135, 27404),
(49725, 0, 0, 0, 0, 0, 277, 27404),
(50496, 0, 0, 0, 0, 0, 277, 27404),
(48883, 0, 0, 0, 0, 0, 135, 27404),
(1420, 0, 0, 0, 0, 0, 277, 27404),
(14881, 0, 0, 0, 0, 0, 277, 27404),
(49131, 0, 0, 0, 0, 0, 159, 27404),
(49743, 0, 0, 0, 0, 0, 277, 27404);

DELETE FROM `creature_equip_template` WHERE (`CreatureID`=134093 AND `ID`=2);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(134093, 2, 161122, 0, 0, 161068, 0, 0, 0, 0, 0); -- 先知祖尔




UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=42504; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=29, `npcflag`=3, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=512, `unit_flags2`=4196352 WHERE `entry`=4311; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=9, `maxlevel`=11, `faction`=189, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=42859; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=100, `maxlevel`=100, `faction`=68, `npcflag`=129, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=34816, `unit_flags3`=1 WHERE `entry`=6566; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=68, `npcflag`=128, `speed_run`=1.385714292526245117, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=50304; -- 多纳尔德·亚当斯上尉
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `npcflag`=16777216, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=34816, `VehicleId`=6033, `HoverHeight`=2 WHERE `entry`=135211; -- 天角雄鹰
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=135209; -- 阿维亚什
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=135208; -- 拉善·天角
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=68, `npcflag`=128, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=142856; -- 金·霍恩
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=135206; -- 洛坎
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=135207; -- 首席奥术师塔莉萨
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=139028; -- 亡灵卫兵珊莎
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=135213; -- 亡灵卫兵马尔科姆
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `npcflag`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=135205; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction`=2160, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=71100; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=125, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=40891; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=68, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141652; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=68, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141647; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=1734, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33600, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=140218; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=1735, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags3`=1 WHERE `entry`=141705; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=2201, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=140224; -- -Unknown-

UPDATE `creature_template` SET `unit_flags`=32768, `dynamicflags`=0 WHERE `entry`=3084; -- -Unknown-
UPDATE `creature_template` SET `gossip_menu_id`=22722 WHERE `entry`=136728; -- 生命侍女
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=14, `speed_walk`=1.399999976158142089, `speed_run`=1.428571462631225585, `BaseAttackTime`=1500, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=131909; -- 废土碾压者
UPDATE `creature_template` SET `npcflag`=0, `speed_walk`=1, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=49499; -- 被征用的火炮
UPDATE `creature_template` SET `unit_flags`=537133312, `unit_flags2`=2099201, `unit_flags3`=8193 WHERE `entry`=49115; -- 司克诺兹步兵尸体
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=1420; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=4953; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=15476; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=29, `npcflag`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=47253; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=3329; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=35068; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=47571; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=23128; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=46140; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=44338; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=45339; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=44865; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=17098; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=46142; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=3144; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=45337; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=44867; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=44866; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=0, `dynamicflags`=0 WHERE `entry`=44868; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=44872; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=44871; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=4047; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=49622; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=6466; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=62822; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=62821; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=32642; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=32641; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=68, `npcflag`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141691; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=49837; -- -Unknown-
UPDATE `creature_template` SET `faction`=35, `speed_run`=1.385714292526245117, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=14558; -- -Unknown-
UPDATE `creature_template` SET `faction`=35, `speed_run`=1.385714292526245117, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=12343; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=2, `maxlevel`=2, `faction`=35, `speed_run`=1.385714292526245117, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=12342; -- -Unknown-
UPDATE `creature_template` SET `faction`=35, `speed_run`=1.385714292526245117, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=12341; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=2, `maxlevel`=2, `faction`=35, `speed_run`=1.385714292526245117, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=11156; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=68, `npcflag`=82, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141693; -- -Unknown-
UPDATE `creature_template` SET `faction`=35, `speed_run`=1.385714292526245117, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=35169; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=2, `maxlevel`=2, `faction`=35, `speed_run`=1.385714292526245117, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=34238; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=68, `npcflag`=131, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141702; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=68, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141119; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=85, `npcflag`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=3296; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=85, `speed_walk`=6, `speed_run`=1.385714292526245117, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=4196352 WHERE `entry`=51346; -- -Unknown-

DELETE FROM `creature_questitem` WHERE (`CreatureEntry`=6503 AND `Idx`=2);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(6503, 2, 142388, 27404); -- 刺尾剑龙





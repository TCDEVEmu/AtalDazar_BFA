SET NAMES utf8;
DELETE FROM `quest_template_locale` WHERE  `locale`='zhCN' AND `ID` IN (52946,53028);
INSERT INTO `quest_template_locale` (`ID`, `locale`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `QuestCompletionLog`, `VerifiedBuild`) VALUES 
(52946, 'zhCN', '垂死的世界', '前往卡利姆多的希利苏斯与麦格尼·铜须见面。', '勇士，在部落与联盟争夺一座废都之际，艾泽拉斯却已奄奄一息。 她需要你的帮助。前往我在希利苏斯的营地，她有东西要交给你。', NULL, '艾泽拉斯已经奄奄一息。', '麦格尼·铜须', NULL, NULL, '前往希利苏斯的营地与麦格尼·铜须见面。', 32750),
(53028, 'zhCN', '垂死的世界', '前往卡利姆多的希利苏斯与麦格尼·铜须见面。', '勇士，麦格尼·铜须需要你的帮助。 艾泽拉斯已经奄奄一息。在这场战争爆发以前，名叫萨格拉斯的巨型恶魔一剑刺伤了这颗星球。 我们的星球在痛苦中哭喊，但部落和联盟却在彼此征伐。 麦格尼·铜须相信，你能帮助他治愈星球的创伤。 快去希利苏斯见他。他已经在萨格拉斯之剑刺入星球的地方建立了营地。', NULL, '艾泽拉斯已经奄奄一息。', '麦格尼·铜须', NULL, NULL, '前往希利苏斯的营地与麦格尼·铜须见面。', 32750);

DELETE FROM `quest_offer_reward_locale` WHERE  `locale`='zhCN' AND `ID` IN (52946,53028);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES 
(52946, 'zhCN', '你来了。我们不能再浪费时间了。', 32750),
(53028, 'zhCN', '你来了。我们不能再浪费时间了。', 32750);

DELETE FROM `quest_objectives_locale` WHERE  `locale`='zhCN' AND `QuestId` IN (52946,53028);
INSERT INTO `quest_objectives_locale` (`ID`, `locale`, `QuestId`, `StorageIndex`, `Description`, `VerifiedBuild`) VALUES 
(341616, 'zhCN', 53028, 0, '使用传送门前往奥丹姆从而接近希利苏斯', 32750),
(341617, 'zhCN', 53028, 1, '前往希利苏斯', 32750),
(341630, 'zhCN', 52946, 0, '使用传送门前往奥丹姆从而接近希利苏斯', 32750),
(341631, 'zhCN', 52946, 1, '前往希利苏斯', 32750);

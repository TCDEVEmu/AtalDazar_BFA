/*
Navicat MySQL Data Transfer

Source Server         : Oficial-AtalDazar
Source Server Version : 50505
Source Host           : localhost:3308
Source Database       : world

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-08-22 13:32:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for quest_npc_say
-- ----------------------------
DROP TABLE IF EXISTS `quest_npc_say`;
CREATE TABLE `quest_npc_say` (
  `questId` int(10) unsigned NOT NULL,
  `npcId` int(10) unsigned NOT NULL DEFAULT '0',
  `acceptSay` int(10) unsigned NOT NULL DEFAULT '0',
  `completeSay` int(10) unsigned NOT NULL DEFAULT '0',
  `rewardSay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`questId`,`npcId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quest_npc_say
-- ----------------------------
INSERT INTO `quest_npc_say` VALUES ('42869', '102799', '114963', '0', '0');
INSERT INTO `quest_npc_say` VALUES ('42872', '109196', '114986', '0', '0');
INSERT INTO `quest_npc_say` VALUES ('40997', '98092', '104916', '0', '104918');

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for quest_conversation
-- ----------------------------
DROP TABLE IF EXISTS `quest_conversation`;
CREATE TABLE `quest_conversation` (
  `questId` smallint(10) unsigned NOT NULL,
  `questAcceptConversation` smallint(10) unsigned NOT NULL DEFAULT '0',
  `questCompleteConversation` smallint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`questId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='List of quest Conversation in this database.';

-- ----------------------------
-- Records of quest_conversation
-- ----------------------------

/*
 Navicat Premium Data Transfer

 Source Server         : WoW 9.2.7 45161
 Source Server Type    : MySQL
 Source Server Version : 50509
 Source Host           : localhost:3306
 Source Schema         : bfa_hotfixes

 Target Server Type    : MySQL
 Target Server Version : 50509
 File Encoding         : 65001

 Date: 27/08/2022 13:49:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for updates
-- ----------------------------
DROP TABLE IF EXISTS `updates`;
CREATE TABLE `updates`  (
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','ARCHIVED') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp when the query was applied.',
  `speed` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'List of all applied updates in this database.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of updates
-- ----------------------------
INSERT INTO `updates` VALUES ('2022_03_14_00_Fix_update.sql', '53F58FAC3B965A0449CADB1AE2BBA2C6D0E72407', 'RELEASED', '2022-03-28 13:49:00', 40);
INSERT INTO `updates` VALUES ('2022_03_15_00_hotfixes_fix_fishing_spell.sql', 'D3E59AE84E4C55D7E68DD20F90A4A4613CF46F4C', 'RELEASED', '2022-03-28 13:49:00', 143);
INSERT INTO `updates` VALUES ('2022_03_20_00_map_difficulty.sql', '710D0385F4B5325832B441C06C79FC82E4DD24D0', 'RELEASED', '2022-03-28 13:49:00', 147);
INSERT INTO `updates` VALUES ('22_03_2022_PvPTier .sql', '11BB63E3B7735F34EC14B121E8E9DDC0CBC57ECE', 'RELEASED', '2022-03-28 13:49:05', 5259);
INSERT INTO `updates` VALUES ('2022_03_29_00_map_difficulty.sql', 'D6F646BFB053313D52E841168BC89FF1AB91EB38', 'RELEASED', '2022-04-09 06:37:44', 580);
INSERT INTO `updates` VALUES ('2022_04_16_00_fix_memory_fuge.sql', '3A6ADBD858F377CCBB9E2B334E827CA9A5AA7CBA', 'RELEASED', '2022-04-22 06:08:42', 336);

SET FOREIGN_KEY_CHECKS = 1;

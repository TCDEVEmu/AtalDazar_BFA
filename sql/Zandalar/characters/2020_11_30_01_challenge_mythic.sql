DROP TABLE IF EXISTS `challenge_member`;
CREATE TABLE `challenge_member` (
  `id` int(11) NOT NULL,
  `member` bigint(20) NOT NULL DEFAULT '0',
  `specID` mediumint(6) NOT NULL DEFAULT '0',
  `ChallengeLevel` smallint(6) NOT NULL DEFAULT '0',
  `Date` int(10) NOT NULL DEFAULT '0',
  `ChestID` int(10) NOT NULL DEFAULT '0',
  KEY `id` (`id`,`member`),
  KEY `member` (`member`),
  KEY `Date` (`Date`),
  KEY `ChallengeLevel` (`ChallengeLevel`),
  KEY `ChestID` (`ChestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `challenge_oplote_loot`;

CREATE TABLE `challenge_oplote_loot`(  
  `guid` INT(10) NOT NULL DEFAULT 0,
  `chestListID` VARCHAR(150) NOT NULL DEFAULT '',
  `date` INT(10) NOT NULL DEFAULT 0,
  `ChallengeLevel` INT(10) DEFAULT 0 NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=INNODB CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `challenge`;
CREATE TABLE `challenge` (
  `ID` int(11) NOT NULL,
  `GuildID` bigint(20) NOT NULL DEFAULT '0',
  `MapID` mediumint(9) NOT NULL DEFAULT '0',
  `RecordTime` int(11) NOT NULL DEFAULT '0',
  `Date` int(11) NOT NULL DEFAULT '0',
  `ChallengeLevel` smallint(6) NOT NULL DEFAULT '0',
  `TimerLevel` smallint(6) NOT NULL DEFAULT '0',
  `Affixes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ChestID` int(10) NOT NULL DEFAULT '0',
  `ChallengeID` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MapID` (`MapID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `challenge_key`;
CREATE TABLE `challenge_key`(
  `guid` INT(10) NOT NULL DEFAULT 0,
  `ID` MEDIUMINT(6) UNSIGNED NOT NULL DEFAULT 0,
  `Level` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
  `Affix` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
  `Affix1` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
  `Affix2` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
  `KeyIsCharded` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
  `timeReset` INT(10) UNSIGNED DEFAULT 0 NOT NULL,
  `InstanceID` MEDIUMINT(6) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`),
  KEY `guid` (`guid`)
) ENGINE=INNODB CHARSET=utf8 COLLATE=utf8_general_ci;
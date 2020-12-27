--
-- Table structure for table `group_finder_activity`
--

DROP TABLE IF EXISTS `group_finder_activity`;
CREATE TABLE `group_finder_activity` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FullName` text,
  `ShortName` text,
  `GroupFinderCategoryID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint(4) NOT NULL DEFAULT '0',
  `GroupFinderActivityGrpID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MinLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxLevelSuggestion` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `MinGearLevelSuggestion` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AreaID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MaxPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DisplayType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `group_finder_activity_locale`
--

DROP TABLE IF EXISTS `group_finder_activity_locale`;
CREATE TABLE `group_finder_activity_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `FullName_lang` text,
  `ShortName_lang` text,
  `VerifiedBuild` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `group_finder_activity_grp`
--

DROP TABLE IF EXISTS `group_finder_activity_grp`;
CREATE TABLE `group_finder_activity_grp` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `OrderIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `group_finder_activity_grp_locale`
--

DROP TABLE IF EXISTS `group_finder_activity_grp_locale`;
CREATE TABLE `group_finder_activity_grp_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `VerifiedBuild` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Table structure for table `group_finder_category`
--

DROP TABLE IF EXISTS `group_finder_category`;
CREATE TABLE `group_finder_category` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `OrderIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `group_finder_category_locale`
--

DROP TABLE IF EXISTS `group_finder_category_locale`;
CREATE TABLE `group_finder_category_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `VerifiedBuild` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


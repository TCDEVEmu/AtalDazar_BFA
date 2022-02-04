
-- .debug send playerchoice 342
DELETE FROM `playerchoice` WHERE `ChoiceId`=342;
INSERT INTO `playerchoice` (`ChoiceId`, `UiTextureKitId`, `SoundKitId`, `Question`, `HideWarboardHeader`, `KeepOpenAfterChoice`, `VerifiedBuild`) VALUES
(342, 262, 0, 'The Warchief needs you! Take a flyer.', 0, 0, 31478);

DELETE FROM `playerchoice_response` WHERE (`ChoiceId`=342);
INSERT INTO `playerchoice_response` (`ChoiceId`, `ResponseId`, `Index`, `ChoiceArtFileId`, `Flags`, `WidgetSetId`, `UiTextureAtlasElementID`, `SoundKitId`, `GroupId`, `Header`, `Subheader`, `ButtonTooltip`, `Answer`, `Description`, `Confirmation`, `RewardQuestID`, `VerifiedBuild`) VALUES
(342, 847, 0, 1851071, 0, 0, 0, 0, 0, 'Azshara', '', '', 'Defend Orgrimmar', 'The Alliance are attempting to reverse the efforts made by our forces in Azshara.$B$BPush them back!', '', 0, 31478),
(342, 848, 1, 1851084, 0, 0, 0, 0, 0, 'Northern Barrens', '', '', 'Defend the Barrens', 'The quilboars and centaurs advancing on the Northern Barrens pose a threat to the supply caravans being sent out of Orgrimmar.\n\nStop them!', '', 0, 31478),
(342, 864, 2, 1851086, 0, 0, 0, 0, 0, 'Silverpine Forest', '', '', 'Defeat the Gilneans', 'Guerilla forces sent by Gilneas continue to attack Horde outposts in Silverpine Forest.$B$BAssist the Forsaken and crush the Gilnean opposition.', '', 0, 31478),
(342, 851, 3, 1851070, 0, 0, 0, 0, 0, 'Ashenvale', '', '', 'Reinforce the Rampart', 'The might of Ashenvale is bearing down on our forces at the Mor\'shan Rampart.\n\nRepel the night elves and claim Ashenvale\'s resources for the Horde!', '', 0, 31478),
(342, 868, 4, 1851080, 0, 0, 0, 0, 0, 'Hillsbrad Foothills', '', '', 'Reclaim the Foothills', 'The Forsaken are continuing their campaign to conquer the Eastern Kingdoms for the Horde.$B$BAssist them with their operations in Hillsbrad.', '', 0, 31478),
(342, 872, 5, 1851104, 0, 0, 0, 0, 0, 'Northern Stranglethorn', '', '', 'Secure Our Trade Routes', 'Recent attacks are hindering our ability to keep supply routes open to Stonard.$B$BAid Commander Aggro\'gosh in creating a safe route to our other outposts.', '', 0, 31478),
(342, 852, 6, 1851107, 0, 0, 0, 0, 0, 'Stonetalon Mountains', '', '', 'For the Horde!', 'The Alliance seek to control more territory in Kalimdor. This cannot happen. Suit up and report to Blood Guard Aldo Rockrain in Ashenvale.$B$BThe Warchief\'s eyes are upon you.', '', 0, 31478),
(342, 854, 7, 1851097, 0, 0, 0, 0, 0, 'Desolace', '', '', 'Lend Aid to Desolace', 'The Alliance, the Burning Blade, and demons. We have many enemies, and they must be beat back so that the Horde can launch their campaign on Desolace.$B$BGo to Tethris Aran and speak with Furien.', '', 0, 31478),
(342, 853, 8, 1851087, 0, 0, 0, 0, 0, 'Southern Barrens', '', '', 'Fortify the Barrens', 'The Southern Barrens belongs to the Horde, but recent Alliance victories are threatening our control of the land.$B$BShow them that this is our land, and we will defend it.', '', 0, 31478),
(342, 856, 9, 1851102, 0, 0, 0, 0, 0, 'Feralas', '', '', 'Assist Camp Ataya', 'An insidious sickness falls over the lands of Feralas, all while the Alliance and the Gordunni ogres assail our encampments.$B$BTravel to Feralas and see what can be done to quell the Gordunni threat and cure the land.', '', 0, 31478),
(342, 855, 10, 1851110, 0, 0, 0, 0, 0, 'Thousand Needles', '', '', 'Stop the Grimtotem', 'The Cataclysm has flooded Thousand Needles, displacing the tauren of Freewind Post and our allies at the Shimmering Flats.$B$BHelp the tauren stop the Grimtotem, and aid our allies in bringing peace to the region.', '', 0, 31478),
(342, 858, 11, 1851109, 0, 0, 0, 0, 0, 'Tanaris', '', '', 'Assist the Cartel', 'The Steamwheedle Cartel is one of the most successful goblin cartels, and we need to establish the Horde presence in their capital city.$B$BAssist the Bilgewater Cartel in persuading Marin Noggenfogger that Gadgetzan should side with the Horde.', '', 0, 31478),
(342, 861, 12, 1851111, 0, 0, 0, 0, 0, 'Un\'Goro Crater', '', '', 'Assist the Expeditions', 'Un\'Goro Crater is a lush tropical environment that has many unique beasts and crystals all throughout its landscape.$B$BThe Marshal Expeditions is looking for help to study the land and gain a better understanding of the crater.', '', 0, 31478),
(342, 860, 13, 1851114, 0, 0, 0, 0, 0, 'Winterspring', '', '', 'Travel to Winterspring', 'The furbolg of Winterspring are growing increasingly hostile and pose a threat to the Horde and its allies in the area.$B$BTravel to Snowden Chalet and discover why the Winterfall furbolg have decided to attack the Horde.', '', 0, 31478),
(342, 862, 14, 1851106, 0, 0, 0, 0, 0, 'Silithus', '', '', 'Travel to Silithus', 'The Twilight\'s Hammer and silithid roam the desert of Silithus, terrorizing the Cenarion Circle and adventurers alike.$B$BHelp our allies at Cenarion Hold stop the Twilight\'s Hammer and root out the silithid from their hives.', '', 0, 31478),
(342, 887, 15, 1851148, 0, 0, 0, 0, 0, 'Borean Tundra', '', '', 'Fly to Warsong Hold', 'Under the command of Garrosh Hellscream, the Warsong Offensive has established an outpost on the western shore of Northrend.$B$BTravel to Borean Tundra and show the Scourge the Horde\'s might.', '', 0, 31478),
(342, 888, 16, 1851153, 0, 0, 0, 0, 0, 'Howling Fjord', '', '', 'Fly to Vengeance Landing', 'The Forsaken have established a beachhead on the shores of Howling Fjord named Vengeance Landing.$B$BFly to Howling Fjord and assist the Royal Apothecary Society in delivering a plague that will devour the Scourge.', '', 0, 31478);


DELETE FROM `playerchoice_response_reward` WHERE (`ChoiceId`=342 AND `ResponseId`=856) OR (`ChoiceId`=342 AND `ResponseId`=853) OR (`ChoiceId`=342 AND `ResponseId`=861) OR (`ChoiceId`=342 AND `ResponseId`=862) OR (`ChoiceId`=342 AND `ResponseId`=872) OR (`ChoiceId`=342 AND `ResponseId`=854) OR (`ChoiceId`=342 AND `ResponseId`=858) OR (`ChoiceId`=342 AND `ResponseId`=855) OR (`ChoiceId`=342 AND `ResponseId`=887) OR (`ChoiceId`=342 AND `ResponseId`=888) OR (`ChoiceId`=342 AND `ResponseId`=860) OR (`ChoiceId`=342 AND `ResponseId`=864) OR (`ChoiceId`=342 AND `ResponseId`=847) OR (`ChoiceId`=342 AND `ResponseId`=848) OR (`ChoiceId`=342 AND `ResponseId`=868) OR (`ChoiceId`=342 AND `ResponseId`=851) OR (`ChoiceId`=342 AND `ResponseId`=852);
INSERT INTO `playerchoice_response_reward` (`ChoiceId`, `ResponseId`, `TitleId`, `PackageId`, `SkillLineId`, `SkillPointCount`, `ArenaPointCount`, `HonorPointCount`, `Money`, `Xp`, `VerifiedBuild`) VALUES
(342, 856, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 853, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 861, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 862, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 872, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 854, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 858, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 855, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 887, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 888, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 860, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 864, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 847, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 848, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 868, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 851, 0, 0, 0, 0, 0, 0, 0, 0, 31478),
(342, 852, 0, 0, 0, 0, 0, 0, 0, 0, 31478);
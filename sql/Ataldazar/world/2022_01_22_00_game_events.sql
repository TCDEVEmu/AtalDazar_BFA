DELETE FROM `game_event` WHERE `eventEntry` in (110,111,112,113,114);
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`, `announce`) VALUES 
(110, '2018-04-18 02:00:00', '2035-03-28 02:00:00', 90720, 10080, 592, 'World Quest Bonus Event', 0, 2),
(111, '2018-04-04 02:00:00', '2035-03-28 02:00:00', 90720, 10080, 563, 'Battleground Bonus Event', 0, 2),
(112, '2018-05-23 02:00:00', '2035-03-28 02:00:00', 90720, 10080, 564, 'Pet Battle Bonus Event', 0, 2),
(113, '2018-05-02 02:00:00', '2035-03-28 02:00:00', 90720, 10080, 561, 'Arena Skirmish Bonus Event', 0, 2),
(114, '2018-05-16 02:00:00', '2035-03-28 02:00:00', 90720, 10080, 591, 'Battle for Azeroth Dungeon Event', 0, 2);


DELETE FROM  `game_event` WHERE `eventEntry` IN (126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137);
INSERT INTO `game_event`(`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES 
(126, '2017-11-22 13:00:00', '2035-07-05 17:00:00', 120960, 10080, 0, 'Raging, Volcanic, Tyrannical', 'Reaping', 0),
(127, '2017-11-29 13:00:00', '2035-07-05 17:00:00', 120960, 10080, 0, 'Teeming, FelExplosives, Fortified', 'Reaping', 0),
(128, '2017-12-06 13:00:00', '2035-07-05 17:00:00', 120960, 10080, 0, 'Bolstering, Grievous, Tyrannical', 'Reaping', 0),
(129, '2017-12-13 13:00:00', '2035-07-05 17:00:00', 120960, 10080, 0, 'Sanguine, Volcanic, Fortified', 'Reaping', 0),
(130, '2017-12-20 13:00:00', '2035-07-05 17:00:00', 120960, 10080, 0, 'Bursting, Skittish, Tyrannical', 'Beguiling', 0),
(131, '2017-12-27 13:00:00', '2035-07-05 17:00:00', 120960, 10080, 0, 'Teeming, Quaking, Fortified', 'Beguiling', 0),
(132, '2018-01-03 13:00:00', '2035-07-05 17:00:00', 120960, 10080, 0, 'Raging, Necrotic, Tyrannical', 'Beguiling', 0),
(133, '2018-01-10 13:00:00', '2035-07-05 17:00:00', 120960, 10080, 0, 'Bolstering, Skittish, Fortified', 'Beguiling', 0),
(134, '2018-01-17 13:00:00', '2035-07-05 17:00:00', 120960, 10080, 0, 'Teeming, Necrotic, Tyrannical', 'Awakened', 0),
(135, '2018-01-24 13:00:00', '2035-07-05 17:00:00', 120960, 10080, 0, 'Sanguine, Grievous, Fortified', 'Awakened', 0),
(136, '2018-01-31 13:00:00', '2035-07-05 17:00:00', 120960, 10080, 0, 'Bolstering, FelExplosives, Tyrannical', 'Awakened', 0),
(137, '2018-02-07 13:00:00', '2035-07-05 17:00:00', 120960, 10080, 0, 'Bursting, Quaking, Fortified', 'Awakened', 0);

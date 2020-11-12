DELETE FROM `instance_template` WHERE `map` = 1763;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES (1763, 0, 'instance_atal_dazar', 1, 1);

DELETE FROM `game_tele` WHERE `id` = 1873;
INSERT INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (1873, -848.182129, 2073.235596, 725.144592, 1.517881, 1763, 'ataldazardungeon');

DELETE FROM `graveyard_zone` WHERE ID = 6123;
INSERT INTO `graveyard_zone`(`ID`, `GhostZone`, `Faction`, `Comment`) VALUES (6123, 9028, 0, 'Atal Dazar Dungeon');

DELETE FROM `areatrigger` WHERE `guid` IN (53, 54);
INSERT INTO `areatrigger` (`guid`, `id`, `map_id`, `spawn_mask`, `position_x`, `position_y`, `position_z`, `ScriptName`) VALUES
(53, 100004, 1763, 8388870, -848.246582, 2043.836914, 726.121765, ''),
(54, 100004, 1642, 1, -848.285583, 2045.240234, 726.122375, '');

DELETE FROM `areatrigger_teleport` WHERE `ID` IN (-53, -54);
INSERT INTO `areatrigger_teleport` (`ID`, `PortLocID`, `Name`) VALUES
(-53, 6124, 'Atal dazar - Exit Target'),
(-54, 6123, 'Atal dazar - Entrance Target');

SET @CGUID = 392045860;
SET @OGUID = 392407737;
SET @PHASEID = 0;
SET @CDIFFS = "1,2,23,8";
SET @ODIFFS = "1,2,23,8";

DELETE FROM creature WHERE `map` =1763;
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+0, 127352, 1763, @CDIFFS, @PHASEID, -833.3004, 2070.316, 725.2075, 0.6239696);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+1, 127352, 1763, @CDIFFS, @PHASEID, -864.0972, 2079.578, 725.2069, 3.948628);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+2, 127352, 1763, @CDIFFS, @PHASEID, -844.5139, 2098.799, 727.706, 5.627817);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+3, 130678, 1763, @CDIFFS, @PHASEID, -860.2293, 2091.975, 725.9965, 6.24136);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+4, 130678, 1763, @CDIFFS, @PHASEID, -824.4243, 2084.596, 725.9966, 4.622877);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+5, 130902, 1763, @CDIFFS, @PHASEID, -870.8636, 2072.015, 725.9546, 4.123931);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+6, 130679, 1763, @CDIFFS, @PHASEID, -874.3551, 2058.578, 725.9966, 5.713211);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+7, 130902, 1763, @CDIFFS, @PHASEID, -823.3997, 2056.36, 725.9966, 0.3020731);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+8, 127352, 1763, @CDIFFS, @PHASEID, -863.2014, 2146.2, 692.7123, 4.301091);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+9, 127352, 1763, @CDIFFS, @PHASEID, -816.9531, 2142.604, 692.715, 1.5355);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+10, 127352, 1763, @CDIFFS, @PHASEID, -837.4028, 2150.783, 692.7169, 2.783058);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+11, 130902, 1763, @CDIFFS, @PHASEID, -838.7955, 2141.302, 693.4551, 2.010201);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+12, 130678, 1763, @CDIFFS, @PHASEID, -863.5877, 2145.634, 692.655, 2.781547);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+13, 130902, 1763, @CDIFFS, @PHASEID, -878.0576, 2145.015, 692.655, 6.006264);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+14, 130680, 1763, @CDIFFS, @PHASEID, -819.5533, 2146.131, 692.6549, 3.59264);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+15, 130678, 1763, @CDIFFS, @PHASEID, -877.0834, 2150.597, 692.655, 0.5194987);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+16, 130902, 1763, @CDIFFS, @PHASEID, -835.324, 2157.119, 693.4683, 1.576709);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+17, 122986, 1763, @CDIFFS, @PHASEID, -802.0432, 2163.37, 750.653, 1.014002);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+18, 127757, 1763, @CDIFFS, @PHASEID, -774.7083, 2147.066, 705.7621, 4.377702);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+19, 127315, 1763, @CDIFFS, @PHASEID, -770.6754, 2151.144, 705.7615, 3.573522);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+20, 135989, 1763, @CDIFFS, @PHASEID, -936.4792, 2146.771, 705.7659, 3.179134);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+21, 127799, 1763, @CDIFFS, @PHASEID, -940.6007, 2142.844, 705.7678, 1.05217);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+22, 135989, 1763, @CDIFFS, @PHASEID, -934.8542, 2153.856, 705.7654, 2.335721);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+23, 127799, 1763, @CDIFFS, @PHASEID, -940.368, 2148.57, 705.7663, 5.78041);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+24, 128435, 1763, @CDIFFS, @PHASEID, -852.6094, 2190.695, 678.321, 0.7328172);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+25, 122971, 1763, @CDIFFS, @PHASEID, -938.493, 2157.198, 705.7638, 5.587091);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+26, 127352, 1763, @CDIFFS, @PHASEID, -850.6441, 2191.613, 678.3201, 0.9765844);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+27, 130902, 1763, @CDIFFS, @PHASEID, -939.3529, 2141.999, 705.855, 1.377446);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+28, 127352, 1763, @CDIFFS, @PHASEID, -856.7674, 2194.884, 678.3185, 2.933136);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+29, 127352, 1763, @CDIFFS, @PHASEID, -833.5695, 2194.271, 678.3121, 1.857378);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+30, 130902, 1763, @CDIFFS, @PHASEID, -752.1444, 2137.872, 705.855, 4.237814);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+31, 128435, 1763, @CDIFFS, @PHASEID, -854.6337, 2197.314, 678.3234, 4.108932);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+32, 127879, 1763, @CDIFFS, @PHASEID, -748.7704, 2157.728, 705.855, 0.8263345);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+33, 127352, 1763, @CDIFFS, @PHASEID, -730.9479, 2141.161, 705.7687, 0.879902);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+34, 128435, 1763, @CDIFFS, @PHASEID, -793.5156, 2186.695, 662.2404, 0.06236963);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+35, 127757, 1763, @CDIFFS, @PHASEID, -733.9474, 2149.161, 705.255, 3.662387);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+36, 127879, 1763, @CDIFFS, @PHASEID, -727.7188, 2139.262, 705.7699, 3.342204);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+37, 127352, 1763, @CDIFFS, @PHASEID, -791.2656, 2187.151, 662.2404, 5.71488);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+38, 127315, 1763, @CDIFFS, @PHASEID, -729.3906, 2145.781, 705.7689, 4.427501);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+39, 122969, 1763, @CDIFFS, @PHASEID, -728.0712, 2143.415, 705.7687, 3.655416);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+40, 128435, 1763, @CDIFFS, @PHASEID, -787.7153, 2188.965, 662.2404, 3.136791);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+41, 130902, 1763, @CDIFFS, @PHASEID, -839.5337, 2202.552, 678.5135, 0.416777);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+42, 130680, 1763, @CDIFFS, @PHASEID, -729.2212, 2133.334, 705.855, 1.457435);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+43, 130680, 1763, @CDIFFS, @PHASEID, -799.1945, 2189.33, 667.1461, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+44, 122971, 1763, @CDIFFS, @PHASEID, -964.7621, 2158.988, 705.989, 6.048663);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+45, 130902, 1763, @CDIFFS, @PHASEID, -729.5024, 2137.473, 705.855, 2.355536);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+46, 127352, 1763, @CDIFFS, @PHASEID, -786.0538, 2192.903, 662.2404, 1.336167);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+47, 122973, 1763, @CDIFFS, @PHASEID, -969.1024, 2154.373, 705.7255, 6.228983);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+48, 128435, 1763, @CDIFFS, @PHASEID, -784.8489, 2194.786, 665.3043, 3.038234);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+49, 127352, 1763, @CDIFFS, @PHASEID, -724.0816, 2151.205, 705.7674, 0.2244384);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+50, 122972, 1763, @CDIFFS, @PHASEID, -967.2136, 2164.877, 706.0172, 5.814768);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+51, 130902, 1763, @CDIFFS, @PHASEID, -921.5052, 2186.573, 673.5653, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+52, 130902, 1763, @CDIFFS, @PHASEID, -726.952, 2144, 705.855, 1.131432);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+53, 130680, 1763, @CDIFFS, @PHASEID, -924.4358, 2187.391, 676.5959, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+54, 130902, 1763, @CDIFFS, @PHASEID, -769.0156, 2188.561, 668.8794, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+55, 130902, 1763, @CDIFFS, @PHASEID, -926.6493, 2190.936, 665.6281, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+56, 130902, 1763, @CDIFFS, @PHASEID, -964.8785, 2169.557, 705.7613, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+57, 128434, 1763, @CDIFFS, @PHASEID, -943.3941, 2190.356, 665.14, 0.336174);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+58, 122986, 1763, @CDIFFS, @PHASEID, -713.036, 2143.606, 776.1538, 1.014495);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+59, 122986, 1763, @CDIFFS, @PHASEID, -856.6186, 2241.678, 736.2179, 1.724186);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+60, 128434, 1763, @CDIFFS, @PHASEID, -927.3281, 2207.903, 664.1473, 4.78604);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+61, 128435, 1763, @CDIFFS, @PHASEID, -850.9011, 2239.439, 677.8341, 1.467413);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+62, 122971, 1763, @CDIFFS, @PHASEID, -1000.07, 2143.707, 705.7734, 2.031732);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+63, 127352, 1763, @CDIFFS, @PHASEID, -850.2153, 2240.53, 677.8119, 1.963769);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+64, 128435, 1763, @CDIFFS, @PHASEID, -844.8559, 2242.97, 677.8359, 1.985952);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+65, 128434, 1763, @CDIFFS, @PHASEID, -856.3264, 2245.149, 680.9689, 5.186097);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+66, 122972, 1763, @CDIFFS, @PHASEID, -1004.401, 2148.014, 705.7709, 0.5673556);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+67, 122973, 1763, @CDIFFS, @PHASEID, -995.4816, 2168.487, 705.2932, 4.452395);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+68, 122972, 1763, @CDIFFS, @PHASEID, -984.1614, 2187.222, 705.7581, 5.362248);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+69, 122971, 1763, @CDIFFS, @PHASEID, -994.6354, 2174.752, 705.7257, 5.717124);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+70, 122973, 1763, @CDIFFS, @PHASEID, -989.7708, 2185.915, 705.7581, 5.449562);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+71, 130902, 1763, @CDIFFS, @PHASEID, -716.7971, 2190.786, 705.855, 1.405384);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+72, 130679, 1763, @CDIFFS, @PHASEID, -698.5992, 2165.086, 705.855, 0.7841296);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+73, 122984, 1763, @CDIFFS, @PHASEID, -997.092, 2182.611, 706.2072, 5.621305);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+74, 127352, 1763, @CDIFFS, @PHASEID, -703.1632, 2191.186, 705.7621, 3.295353);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+75, 127879, 1763, @CDIFFS, @PHASEID, -697.0903, 2186.71, 705.7621, 3.926843);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+76, 122969, 1763, @CDIFFS, @PHASEID, -701.7327, 2194.609, 705.7621, 4.316591);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+77, 122971, 1763, @CDIFFS, @PHASEID, -991.052, 2199.872, 705.855, 1.570639);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+78, 127315, 1763, @CDIFFS, @PHASEID, -698.8125, 2190.818, 705.7621, 4.655212);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+79, 130902, 1763, @CDIFFS, @PHASEID, -843.4744, 2257.378, 677.978, 4.594671);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+80, 130679, 1763, @CDIFFS, @PHASEID, -877.4175, 2243.704, 642.0648, 6.10464);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+81, 127757, 1763, @CDIFFS, @PHASEID, -695.6768, 2196.364, 705.8551, 2.076394);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+82, 130902, 1763, @CDIFFS, @PHASEID, -985.9752, 2204.337, 705.9117, 5.614255);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+83, 127352, 1763, @CDIFFS, @PHASEID, -956.0382, 2227.873, 662.2485, 0.7799919);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+84, 128434, 1763, @CDIFFS, @PHASEID, -879.4427, 2269.865, 691.0431, 1.246177);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+85, 130679, 1763, @CDIFFS, @PHASEID, -737.8301, 2223.163, 662.2549, 4.421616);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+86, 130902, 1763, @CDIFFS, @PHASEID, -855.0249, 2266.5, 677.5776, 5.723192);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+87, 127352, 1763, @CDIFFS, @PHASEID, -955.0278, 2236.637, 662.245, 3.963502);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+88, 129553, 1763, @CDIFFS, @PHASEID, -847.7465, 2276.934, 678.255, 4.706481);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+89, 130679, 1763, @CDIFFS, @PHASEID, -746.7629, 2234.826, 662.2864, 3.419354);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+90, 130902, 1763, @CDIFFS, @PHASEID, -744.9354, 2235.767, 662.255, 2.756378);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+91, 130902, 1763, @CDIFFS, @PHASEID, -838.334, 2259.219, 642.5792, 3.361105);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+92, 129552, 1763, @CDIFFS, @PHASEID, -844.1902, 2280.449, 679.255, 4.706486);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+93, 128455, 1763, @CDIFFS, @PHASEID, -851.2611, 2280.49, 679.255, 4.706486);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+94, 130680, 1763, @CDIFFS, @PHASEID, -837.9476, 2261.386, 642.5792, 0.1054762);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+95, 130680, 1763, @CDIFFS, @PHASEID, -952.7668, 2238.388, 662.255, 5.722989);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+96, 130679, 1763, @CDIFFS, @PHASEID, -858.0806, 2266.45, 644.4907, 5.564853);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+97, 130902, 1763, @CDIFFS, @PHASEID, -738.0646, 2238.621, 662.2549, 0.4429614);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+98, 130678, 1763, @CDIFFS, @PHASEID, -680.4556, 2192.322, 705.855, 5.01018);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+99, 128434, 1763, @CDIFFS, @PHASEID, -800.6302, 2284.438, 680.9742, 2.602714);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+100, 130678, 1763, @CDIFFS, @PHASEID, -871.0881, 2281.168, 677.2722, 4.784968);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+101, 127879, 1763, @CDIFFS, @PHASEID, -696.6805, 2230.88, 705.7634, 4.406281);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+102, 128435, 1763, @CDIFFS, @PHASEID, -884.467, 2287.231, 677.9539, 2.571132);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+103, 130902, 1763, @CDIFFS, @PHASEID, -994.305, 2227.531, 705.855, 2.999565);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+104, 130678, 1763, @CDIFFS, @PHASEID, -844.0538, 2284.176, 678.4553, 4.483886);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+105, 127352, 1763, @CDIFFS, @PHASEID, -885.1354, 2288.335, 677.9062, 3.067487);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+106, 130679, 1763, @CDIFFS, @PHASEID, -1047.777, 2151.033, 717.0551, 3.126515);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+107, 128435, 1763, @CDIFFS, @PHASEID, -802.2239, 2288.554, 677.832, 1.459046);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+108, 127757, 1763, @CDIFFS, @PHASEID, -699.3087, 2239.239, 705.855, 2.836972);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+109, 130902, 1763, @CDIFFS, @PHASEID, -999.5068, 2229.601, 705.855, 5.782096);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+110, 127879, 1763, @CDIFFS, @PHASEID, -690.2743, 2231.201, 705.7653, 4.894147);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+111, 130678, 1763, @CDIFFS, @PHASEID, -1000.002, 2229.559, 705.855, 4.195048);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+112, 122969, 1763, @CDIFFS, @PHASEID, -703.2518, 2244.243, 705.7631, 4.115314);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+113, 127352, 1763, @CDIFFS, @PHASEID, -801.757, 2290.762, 677.7872, 3.861354);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+114, 130902, 1763, @CDIFFS, @PHASEID, -705.7948, 2241.173, 705.855, 3.39247);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+115, 130902, 1763, @CDIFFS, @PHASEID, -868.352, 2279.56, 645.0639, 3.529334);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+116, 128435, 1763, @CDIFFS, @PHASEID, -808.9097, 2293.389, 677.7794, 0.3876439);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+117, 127315, 1763, @CDIFFS, @PHASEID, -699.7587, 2243.243, 705.7639, 2.011099);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+118, 127352, 1763, @CDIFFS, @PHASEID, -886.3438, 2293.778, 677.7865, 1.550305);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+119, 128435, 1763, @CDIFFS, @PHASEID, -884.9045, 2294.219, 677.8317, 3.089671);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+120, 127352, 1763, @CDIFFS, @PHASEID, -806.8368, 2294.521, 677.8164, 3.905435);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+121, 130902, 1763, @CDIFFS, @PHASEID, -685.0278, 2222.161, 705.855, 1.590515);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+122, 130679, 1763, @CDIFFS, @PHASEID, -795.1716, 2287.136, 678.0063, 6.093798);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+123, 130902, 1763, @CDIFFS, @PHASEID, -1054.207, 2146.998, 717.0551, 4.144977);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+124, 130680, 1763, @CDIFFS, @PHASEID, -811.1481, 2281.039, 642.3918, 1.358099);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+125, 130902, 1763, @CDIFFS, @PHASEID, -819.6225, 2280.594, 642.5741, 4.761539);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+126, 130678, 1763, @CDIFFS, @PHASEID, -1056, 2150.853, 717.1768, 0.6168283);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+127, 122963, 1763, @CDIFFS, @PHASEID, -894.9155, 2288.354, 642.6039, 1.515335);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+128, 128435, 1763, @CDIFFS, @PHASEID, -920.5364, 2290.285, 677.7543, 1.973983);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+129, 130902, 1763, @CDIFFS, @PHASEID, -703.2028, 2248.791, 705.855, 2.363137);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+130, 127352, 1763, @CDIFFS, @PHASEID, -921.0764, 2292.628, 677.7528, 4.642621);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+131, 128435, 1763, @CDIFFS, @PHASEID, -764.5278, 2288.703, 677.9342, 1.399469);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+132, 130680, 1763, @CDIFFS, @PHASEID, -702.5524, 2250.713, 705.855, 1.536613);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+133, 127352, 1763, @CDIFFS, @PHASEID, -763.9271, 2290.297, 677.8246, 2.68058);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+134, 129985, 1763, @CDIFFS, @PHASEID, -974.9271, 2270.031, 686.9348, 1.570796);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+135, 130678, 1763, @CDIFFS, @PHASEID, -889.8899, 2288.057, 643.1225, 2.482585);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+136, 128435, 1763, @CDIFFS, @PHASEID, -771, 2294.24, 677.7013, 0.6651596);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+137, 130902, 1763, @CDIFFS, @PHASEID, -931.0125, 2286.133, 678.2381, 1.042901);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+138, 127352, 1763, @CDIFFS, @PHASEID, -770.0417, 2295.873, 677.8209, 5.579017);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+139, 128434, 1763, @CDIFFS, @PHASEID, -919.5504, 2300.184, 678.3338, 3.050086);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+140, 128434, 1763, @CDIFFS, @PHASEID, -768.2448, 2300.955, 680.769, 5.749907);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+141, 130902, 1763, @CDIFFS, @PHASEID, -962.5009, 2281.126, 680.9008, 3.975408);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+142, 127879, 1763, @CDIFFS, @PHASEID, -731.9705, 2285.878, 680.9181, 3.128294);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+143, 130678, 1763, @CDIFFS, @PHASEID, -732.425, 2279.892, 680.855, 3.465477);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+144, 127799, 1763, @CDIFFS, @PHASEID, -962.2483, 2287.688, 680.9174, 0.8016711);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+145, 130679, 1763, @CDIFFS, @PHASEID, -825.1471, 2302.466, 642.6882, 1.68654);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+146, 130902, 1763, @CDIFFS, @PHASEID, -1065.257, 2172.675, 717.655, 2.050689);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+147, 122986, 1763, @CDIFFS, @PHASEID, -846.1236, 2320.426, 723.1001, 3.4294);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+148, 128434, 1763, @CDIFFS, @PHASEID, -874.0903, 2319.854, 695.2013, 5.724258);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+149, 130902, 1763, @CDIFFS, @PHASEID, -871.8204, 2302.351, 642.7669, 3.753756);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+150, 129985, 1763, @CDIFFS, @PHASEID, -1000.599, 2270.031, 699.2057, 1.570796);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+151, 122969, 1763, @CDIFFS, @PHASEID, -731.684, 2290.964, 680.9198, 2.823445);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+152, 129985, 1763, @CDIFFS, @PHASEID, -957.6823, 2293.585, 673.2751, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+153, 122972, 1763, @CDIFFS, @PHASEID, -967.3333, 2290.271, 680.9152, 0.2523345);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+154, 122972, 1763, @CDIFFS, @PHASEID, -1047.399, 2223.868, 741.0365, 4.590658);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+155, 122972, 1763, @CDIFFS, @PHASEID, -966.7986, 2296.205, 680.915, 6.20765);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+156, 130680, 1763, @CDIFFS, @PHASEID, -794.3976, 2306.05, 641.2335, 0.7017408);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+157, 127879, 1763, @CDIFFS, @PHASEID, -732.5139, 2298.856, 680.9182, 3.624039);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+158, 127799, 1763, @CDIFFS, @PHASEID, -963.3108, 2299.372, 680.9169, 6.20213);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+159, 122971, 1763, @CDIFFS, @PHASEID, -1054.004, 2224.278, 741.0365, 4.75632);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+160, 129985, 1763, @CDIFFS, @PHASEID, -1015.555, 2270.031, 711.2242, 1.570796);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+161, 130680, 1763, @CDIFFS, @PHASEID, -859.8881, 2315.029, 642.611, 3.559196);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+162, 130902, 1763, @CDIFFS, @PHASEID, -1035.541, 2246.456, 740.6515, 2.28497);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+163, 122986, 1763, @CDIFFS, @PHASEID, -866.2842, 2347.739, 743.9127, 2.253992);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+164, 130902, 1763, @CDIFFS, @PHASEID, -667.1073, 2254.882, 705.855, 6.257045);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+165, 130679, 1763, @CDIFFS, @PHASEID, -829.642, 2321.539, 643.0624, 0.2288224);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+166, 130678, 1763, @CDIFFS, @PHASEID, -851.2338, 2331.209, 677.8815, 2.586868);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+167, 130902, 1763, @CDIFFS, @PHASEID, -964.7719, 2306.811, 680.8549, 3.67942);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+168, 130902, 1763, @CDIFFS, @PHASEID, -858.2161, 2327.918, 642.9473, 3.453116);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+169, 130679, 1763, @CDIFFS, @PHASEID, -727.9355, 2305.959, 681.0165, 5.191316);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+170, 129985, 1763, @CDIFFS, @PHASEID, -974.9271, 2315.208, 687.8198, 4.712389);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+171, 130902, 1763, @CDIFFS, @PHASEID, -973.683, 2310.133, 681.4551, 0.6734676);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+172, 122986, 1763, @CDIFFS, @PHASEID, -764.7349, 2332.835, 745.5665, 3.206447);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+173, 130902, 1763, @CDIFFS, @PHASEID, -644.007, 2255.579, 710.0179, 2.576402);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+174, 130679, 1763, @CDIFFS, @PHASEID, -895.327, 2336.114, 642.5281, 0.2527713);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+175, 127757, 1763, @CDIFFS, @PHASEID, -662.9182, 2287.227, 706.7443, 1.50895);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+176, 130902, 1763, @CDIFFS, @PHASEID, -883.0306, 2341.715, 642.6835, 3.183069);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+177, 127352, 1763, @CDIFFS, @PHASEID, -656.3594, 2283.998, 707.6426, 0.7347901);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+178, 130678, 1763, @CDIFFS, @PHASEID, -883.5208, 2340.32, 642.6531, 6.146783);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+179, 129985, 1763, @CDIFFS, @PHASEID, -1000.599, 2315.208, 700.0905, 4.712389);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+180, 130678, 1763, @CDIFFS, @PHASEID, -834.4249, 2346.134, 642.8045, 3.116432);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+181, 130902, 1763, @CDIFFS, @PHASEID, -1084.526, 2229.666, 740.7966, 2.443393);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+182, 122969, 1763, @CDIFFS, @PHASEID, -655.3889, 2287.658, 708.1279, 4.199506);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+183, 127315, 1763, @CDIFFS, @PHASEID, -660.0972, 2291.832, 705.9263, 2.078579);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+184, 130902, 1763, @CDIFFS, @PHASEID, -832.2093, 2347.789, 642.4871, 2.138677);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+185, 130678, 1763, @CDIFFS, @PHASEID, -1088.189, 2226.54, 740.7966, 5.581624);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+186, 129985, 1763, @CDIFFS, @PHASEID, -1015.555, 2315.208, 712.1095, 4.712389);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+187, 122969, 1763, @CDIFFS, @PHASEID, -661.9601, 2300.068, 708.1441, 1.787992);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+188, 127352, 1763, @CDIFFS, @PHASEID, -663.5226, 2303.318, 707.517, 4.472739);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+189, 127757, 1763, @CDIFFS, @PHASEID, -655.7795, 2298.25, 708.0262, 0.3162924);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+190, 128435, 1763, @CDIFFS, @PHASEID, -846.8008, 2366.802, 677.7559, 4.76826);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+191, 130902, 1763, @CDIFFS, @PHASEID, -1107.844, 2221.019, 740.7965, 4.249324);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+192, 127352, 1763, @CDIFFS, @PHASEID, -699.3455, 2341.696, 705.764, 4.1739);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+193, 127757, 1763, @CDIFFS, @PHASEID, -705.8504, 2352.749, 705.8664, 1.977611);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+194, 127757, 1763, @CDIFFS, @PHASEID, -699.2706, 2351.417, 705.9289, 4.041179);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+195, 127352, 1763, @CDIFFS, @PHASEID, -690.2708, 2350.969, 705.7657, 5.199553);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+196, 122965, 1763, @CDIFFS, @PHASEID, -616.3542, 2292.719, 709.8065, 3.221104);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+197, 127315, 1763, @CDIFFS, @PHASEID, -698.5816, 2357.793, 705.7635, 1.028818);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+198, 122969, 1763, @CDIFFS, @PHASEID, -701.6823, 2359.809, 705.7629, 1.763883);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+199, 122972, 1763, @CDIFFS, @PHASEID, -1086.536, 2289.835, 740.687, 0.3492432);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+200, 127799, 1763, @CDIFFS, @PHASEID, -1094.976, 2281.882, 740.6873, 5.449492);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+201, 127799, 1763, @CDIFFS, @PHASEID, -1087.3, 2299.238, 740.6871, 0.8894297);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+202, 122971, 1763, @CDIFFS, @PHASEID, -1093.785, 2294.113, 741.2795, 0.2617813);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+203, 122986, 1763, @CDIFFS, @PHASEID, -592.9307, 2316.951, 766.3053, 1.426273);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+204, 122967, 1763, @CDIFFS, @PHASEID, -1119.707, 2292.363, 745.1975, 3.100947);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+205, 122986, 1763, @CDIFFS, @PHASEID, -936.7654, 2405.692, 794.1528, 4.037837);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+206, 122968, 1763, @CDIFFS, @PHASEID, -847.5695, 2467.101, 734.3118, 4.684122);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+207, 131289, 1763, @CDIFFS, @PHASEID, -830.408, 2473.38, 734.506, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+208, 131289, 1763, @CDIFFS, @PHASEID, -865.25, 2473.497, 734.506, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+209, 122986, 1763, @CDIFFS, @PHASEID, -787.5261, 2465.95, 772.9844, 3.542661);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+210, 130902, 1763, @CDIFFS, @PHASEID, -669.5903, 2330.251, 705.9556, 3.091007);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+211, 130679, 1763, @CDIFFS, @PHASEID, -596.6664, 2266.418, 709.8628, 2.253113);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+212, 130902, 1763, @CDIFFS, @PHASEID, -708.6406, 2364.249, 705.8591, 1.133874);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+213, 130681, 1763, @CDIFFS, @PHASEID, -669.16, 2361.015, 715.932, 4.394897);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+214, 132126, 1763, @CDIFFS, @PHASEID, -1097.175, 2249.793, 740.6874, 2.515301);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+215, 130902, 1763, @CDIFFS, @PHASEID, -1044.701, 2321.17, 740.6549, 5.455524);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+216, 130679, 1763, @CDIFFS, @PHASEID, -703.1628, 2363.605, 705.9575, 0.9899534);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+217, 130679, 1763, @CDIFFS, @PHASEID, -639.7631, 2326.232, 710.3669, 0.2245305);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+218, 130681, 1763, @CDIFFS, @PHASEID, -666.1661, 2384.2, 715.6981, 4.143978);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+219, 130681, 1763, @CDIFFS, @PHASEID, -724.108, 2417.216, 710.7236, 4.972827);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+220, 131289, 1763, @CDIFFS, @PHASEID, -883.3629, 2523.971, 734.5065, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+221, 131289, 1763, @CDIFFS, @PHASEID, -812.3125, 2523.663, 734.506, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+222, 130902, 1763, @CDIFFS, @PHASEID, -881.0498, 2436.248, 713.855, 2.26755);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+223, 130680, 1763, @CDIFFS, @PHASEID, -1053.961, 2347.625, 740.4551, 1.241958);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+224, 130902, 1763, @CDIFFS, @PHASEID, -867.3979, 2448.991, 705.8721, 4.203376);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+225, 130902, 1763, @CDIFFS, @PHASEID, -1069.485, 2351.662, 740.7966, 6.072861);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+226, 130902, 1763, @CDIFFS, @PHASEID, -574.733, 2298.113, 710.2654, 2.408132);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+227, 130686, 1763, @CDIFFS, @PHASEID, -698.0932, 2421.55, 707.3219, 3.440164);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+228, 128956, 1763, @CDIFFS, @PHASEID, -1110.497, 2259.431, 741.7603, 0.09323248);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+229, 132126, 1763, @CDIFFS, @PHASEID, -1090.899, 2286.339, 740.6871, 5.511673);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+230, 130681, 1763, @CDIFFS, @PHASEID, -649.3733, 2383.086, 721.8254, 4.366068);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+231, 130902, 1763, @CDIFFS, @PHASEID, -832.8647, 2452.669, 705.8904, 0.9991455);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+232, 130902, 1763, @CDIFFS, @PHASEID, -827.0015, 2446.755, 705.855, 2.24683);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+233, 130902, 1763, @CDIFFS, @PHASEID, -864.7625, 2475.765, 731.541, 6.201485);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+234, 130681, 1763, @CDIFFS, @PHASEID, -746.3138, 2435.831, 707.1921, 5.64589);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+235, 130681, 1763, @CDIFFS, @PHASEID, -716.2815, 2447.853, 715.5359, 0.7727626);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+236, 130686, 1763, @CDIFFS, @PHASEID, -699.8031, 2429.122, 707.5182, 1.459204);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+237, 130686, 1763, @CDIFFS, @PHASEID, -696.4868, 2447.717, 707.4905, 4.562148);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+238, 130686, 1763, @CDIFFS, @PHASEID, -680.3633, 2404.041, 708.3507, 1.089713);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+239, 130681, 1763, @CDIFFS, @PHASEID, -625.4387, 2409.797, 710.2015, 3.172959);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+240, 130681, 1763, @CDIFFS, @PHASEID, -672.0137, 2450.291, 711.4333, 4.476608);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+241, 122970, 1763, @CDIFFS, @PHASEID, -810.0739, 2183.943, 667.7653, 2.037112);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+242, 130681, 1763, @CDIFFS, @PHASEID, -630.1772, 2440.794, 715.2645, 6.274045);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+243, 130902, 1763, @CDIFFS, @PHASEID, -814.0875, 2520.75, 731.3287, 3.593903);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+244, 130902, 1763, @CDIFFS, @PHASEID, -839.3998, 2546.456, 732.2529, 2.984269);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+245, 130902, 1763, @CDIFFS, @PHASEID, -856.3027, 2540.178, 732.4001, 2.742918);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+246, 132126, 1763, @CDIFFS, @PHASEID, -1096.686, 2334.304, 740.6874, 3.628992);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+247, 122984, 1763, @CDIFFS, @PHASEID, -1051.32, 2210.68, 734.421, 6.209408);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+248, 122971, 1763, @CDIFFS, @PHASEID, -1051.32, 2210.68, 734.421, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+249, 122972, 1763, @CDIFFS, @PHASEID, -1051.32, 2210.68, 734.421, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+250, 122973, 1763, @CDIFFS, @PHASEID, -1051.32, 2210.68, 734.421, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+251, 128956, 1763, @CDIFFS, @PHASEID, -1110.545, 2325.283, 741.7603, 0.09323248);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+252, 130902, 1763, @CDIFFS, @PHASEID, -1106.493, 2344.608, 740.7965, 5.367279);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+253, 130680, 1763, @CDIFFS, @PHASEID, -1103.756, 2357.552, 740.7966, 4.32363);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+254, 122970, 1763, @CDIFFS, @PHASEID, -683.0919, 2292.406, 702.0253, 0.2105479);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+255, 126734, 1763, @CDIFFS, @PHASEID, -830.5573, 2451.313, 705.8753, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+256, 126734, 1763, @CDIFFS, @PHASEID, -815.8489, 2434.976, 713.9169, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+257, 126734, 1763, @CDIFFS, @PHASEID, -835.6077, 2434.583, 705.8644, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+258, 126734, 1763, @CDIFFS, @PHASEID, -815.4479, 2455.47, 723.5307, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+259, 126734, 1763, @CDIFFS, @PHASEID, -827.2205, 2426.755, 712.1941, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+260, 126734, 1763, @CDIFFS, @PHASEID, -847.696, 2430.795, 705.455, 4.089445);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+261, 126734, 1763, @CDIFFS, @PHASEID, -839.7016, 2447.325, 706.0182, 5.761759);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+262, 126734, 1763, @CDIFFS, @PHASEID, -854.5321, 2447.474, 706.0424, 1.117643);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+263, 126734, 1763, @CDIFFS, @PHASEID, -847.4841, 2453.338, 705.455, 1.638274);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+264, 126734, 1763, @CDIFFS, @PHASEID, -855.4007, 2435.472, 706.0679, 5.74439);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+265, 126734, 1763, @CDIFFS, @PHASEID, -863.4924, 2447.412, 705.9087, 5.835465);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+266, 126734, 1763, @CDIFFS, @PHASEID, -879.3935, 2435.095, 713.8542, 2.754707);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+267, 126734, 1763, @CDIFFS, @PHASEID, -877.3389, 2453.058, 721.9734, 2.423009);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+268, 126734, 1763, @CDIFFS, @PHASEID, -865.4496, 2427.148, 709.4588, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+269, 126734, 1763, @CDIFFS, @PHASEID, -817.2761, 2485.625, 730.9741, 4.6671);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+270, 126734, 1763, @CDIFFS, @PHASEID, -877.8768, 2485.625, 730.9741, 4.6671);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+271, 130679, 1763, @CDIFFS, @PHASEID, -823.5287, 2088.405, 725.9966, 1.190855);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+272, 130680, 1763, @CDIFFS, @PHASEID, -873.9063, 2057.119, 725.9966, 0.2125429);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+273, 122970, 1763, @CDIFFS, @PHASEID, -810.7646, 2147.614, 692.655, 3.120581);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+274, 130679, 1763, @CDIFFS, @PHASEID, -862.3993, 2145.892, 692.712, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+275, 130678, 1763, @CDIFFS, @PHASEID, -817.7575, 2144.419, 692.655, 0.3752591);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+276, 130680, 1763, @CDIFFS, @PHASEID, -878.3546, 2149.153, 692.655, 4.990435);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+277, 122986, 1763, @CDIFFS, @PHASEID, -798.7486, 2169.658, 750.653, 1.164193);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+278, 122971, 1763, @CDIFFS, @PHASEID, -958.3802, 2154.153, 705.767, 2.701488);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+279, 130679, 1763, @CDIFFS, @PHASEID, -799.1945, 2189.33, 668.1583, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+280, 130679, 1763, @CDIFFS, @PHASEID, -729.184, 2134.766, 705.7709, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+281, 122986, 1763, @CDIFFS, @PHASEID, -849.8522, 2225.947, 723.1, 5.916841);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+282, 122973, 1763, @CDIFFS, @PHASEID, -974.8889, 2156.285, 705.7255, 5.895982);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+283, 130678, 1763, @CDIFFS, @PHASEID, -924.4358, 2187.391, 674.5812, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+284, 122986, 1763, @CDIFFS, @PHASEID, -780.3129, 2213.52, 776.1539, 3.662253);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+285, 127879, 1763, @CDIFFS, @PHASEID, -723.5839, 2176.699, 705.855, 3.939257);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+286, 122972, 1763, @CDIFFS, @PHASEID, -975.5695, 2180.583, 705.7589, 1.639875);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+287, 122973, 1763, @CDIFFS, @PHASEID, -993.2188, 2156.95, 705.7255, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+288, 122984, 1763, @CDIFFS, @PHASEID, -989.2761, 2175.2, 705.7255, 5.911885);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+289, 122971, 1763, @CDIFFS, @PHASEID, -1007.641, 2163.222, 705.7609, 3.210067);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+290, 122971, 1763, @CDIFFS, @PHASEID, -992.191, 2204.953, 705.7581, 3.552718);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+291, 122986, 1763, @CDIFFS, @PHASEID, -955.9467, 2232.052, 736.2179, 4.755873);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+292, 130678, 1763, @CDIFFS, @PHASEID, -878.8824, 2242.815, 641.9902, 3.693432);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+293, 130680, 1763, @CDIFFS, @PHASEID, -736.5862, 2224.518, 662.255, 2.199731);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+294, 122972, 1763, @CDIFFS, @PHASEID, -1029.944, 2160.76, 717.3042, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+295, 130680, 1763, @CDIFFS, @PHASEID, -746.7687, 2234.242, 662.2498, 0.8815076);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+296, 122971, 1763, @CDIFFS, @PHASEID, -1033.047, 2157.719, 717.4526, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+297, 122971, 1763, @CDIFFS, @PHASEID, -1029.741, 2176.278, 717.3042, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+298, 122984, 1763, @CDIFFS, @PHASEID, -1035.436, 2167.04, 717.4526, 6.209408);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+299, 122973, 1763, @CDIFFS, @PHASEID, -1035.264, 2173.639, 717.4526, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+300, 130679, 1763, @CDIFFS, @PHASEID, -678.0533, 2190.991, 705.8549, 6.079789);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+301, 130680, 1763, @CDIFFS, @PHASEID, -860.7761, 2268.802, 644.7792, 1.895036);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+302, 130679, 1763, @CDIFFS, @PHASEID, -871.7423, 2284.414, 677.5419, 4.194539);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+303, 122986, 1763, @CDIFFS, @PHASEID, -932.1144, 2274.089, 743.9127, 5.705147);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+304, 130680, 1763, @CDIFFS, @PHASEID, -998.9792, 2231.356, 705.855, 1.527666);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+305, 130678, 1763, @CDIFFS, @PHASEID, -794.8876, 2287.74, 677.8607, 3.919166);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+306, 130679, 1763, @CDIFFS, @PHASEID, -1056.229, 2149.875, 717.1549, 4.482233);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+307, 130679, 1763, @CDIFFS, @PHASEID, -702.8066, 2251.17, 705.855, 5.160867);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+308, 130679, 1763, @CDIFFS, @PHASEID, -888.2919, 2287.32, 643.3408, 4.718319);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+309, 130680, 1763, @CDIFFS, @PHASEID, -731.0833, 2279.233, 680.916, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+310, 122986, 1763, @CDIFFS, @PHASEID, -803.8169, 2309.846, 745.5665, 4.140691);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+311, 130679, 1763, @CDIFFS, @PHASEID, -795.2974, 2305.752, 641.3411, 3.48559);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+312, 130680, 1763, @CDIFFS, @PHASEID, -830.2767, 2322.226, 643.1608, 1.37687);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+313, 130678, 1763, @CDIFFS, @PHASEID, -728.394, 2306.15, 681.0364, 3.110094);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+314, 130680, 1763, @CDIFFS, @PHASEID, -882.6002, 2338.768, 642.8669, 4.18765);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+315, 130678, 1763, @CDIFFS, @PHASEID, -893.991, 2338.453, 642.5281, 5.387494);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+316, 130679, 1763, @CDIFFS, @PHASEID, -834.0018, 2344.307, 642.9723, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+317, 130680, 1763, @CDIFFS, @PHASEID, -1089.156, 2225.893, 740.7966, 4.029295);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+318, 122986, 1763, @CDIFFS, @PHASEID, -768.6717, 2369.858, 772.9844, 6.278203);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+319, 122986, 1763, @CDIFFS, @PHASEID, -854.5048, 2399.628, 794.1528, 2.095272);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+320, 122986, 1763, @CDIFFS, @PHASEID, -683.3143, 2353.057, 766.3053, 4.297445);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+321, 130678, 1763, @CDIFFS, @PHASEID, -1054.24, 2347.167, 740.4551, 2.394812);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+322, 130678, 1763, @CDIFFS, @PHASEID, -705.824, 2359.31, 705.9044, 4.283499);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+323, 130680, 1763, @CDIFFS, @PHASEID, -642.3263, 2326.759, 709.855, 3.270022);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+324, 130912, 1763, @CDIFFS, @PHASEID, -962.6185, 2164.496, 706.2354, 5.460102);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+325, 131089, 1763, @CDIFFS, @PHASEID, -946.3403, 2145.073, 705.7687, 2.872326);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+326, 131089, 1763, @CDIFFS, @PHASEID, -992.8489, 2204.368, 705.7581, 4.82782);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+327, 131089, 1763, @CDIFFS, @PHASEID, -955.1597, 2165.22, 705.7618, 3.579553);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+328, 130678, 1763, @CDIFFS, @PHASEID, -597.3323, 2266.145, 709.855, 2.576509);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+329, 122970, 1763, @CDIFFS, @PHASEID, -730.1825, 2292.076, 680.8651, 3.098259);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+330, 138148, 1763, @CDIFFS, @PHASEID, -683.4149, 2418.55, 707.9707, 3.901039);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+331, 130678, 1763, @CDIFFS, @PHASEID, -873.6345, 2056.258, 725.9966, 5.382328);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+332, 130679, 1763, @CDIFFS, @PHASEID, -818.7101, 2144.043, 692.7151, 1.670403);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+333, 122970, 1763, @CDIFFS, @PHASEID, -785.3177, 2147.13, 705.765, 2.734421);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+334, 122970, 1763, @CDIFFS, @PHASEID, -744.1823, 2112.925, 715.3468, 1.635017);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+335, 130680, 1763, @CDIFFS, @PHASEID, -862.3403, 2091.184, 725.8953, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+336, 122970, 1763, @CDIFFS, @PHASEID, -706.8793, 2240.914, 705.7802, 4.72597);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+337, 130678, 1763, @CDIFFS, @PHASEID, -809.3711, 2281.465, 642.2601, 2.116223);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+338, 122986, 1763, @CDIFFS, @PHASEID, -854.9542, 2314.717, 743.9127, 1.546374);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+339, 122986, 1763, @CDIFFS, @PHASEID, -794.7448, 2306.172, 723.1, 2.504809);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+340, 130678, 1763, @CDIFFS, @PHASEID, -824.9305, 2303.366, 642.7917, 4.56721);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+341, 130679, 1763, @CDIFFS, @PHASEID, -861.158, 2315.028, 642.611, 1.317787);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+342, 130678, 1763, @CDIFFS, @PHASEID, -831.6215, 2321.078, 643.2003, 0.6388713);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+343, 122970, 1763, @CDIFFS, @PHASEID, -676.205, 2292.021, 706.4611, 3.696937);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+344, 130680, 1763, @CDIFFS, @PHASEID, -893.5817, 2338.168, 642.5281, 6.006326);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+345, 122986, 1763, @CDIFFS, @PHASEID, -872.592, 2196.811, 736.2179, 0.9280686);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+346, 122986, 1763, @CDIFFS, @PHASEID, -686.4031, 2346.799, 766.3053, 4.234918);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+347, 122986, 1763, @CDIFFS, @PHASEID, -812.6615, 2398.248, 772.9844, 5.158459);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+348, 122986, 1763, @CDIFFS, @PHASEID, -714.6771, 2299.95, 745.5665, 2.11417);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+349, 130680, 1763, @CDIFFS, @PHASEID, -1044.896, 2149.936, 717.0551, 2.144544);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+350, 130680, 1763, @CDIFFS, @PHASEID, -877.9332, 2243.093, 641.98, 1.853966);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+351, 130680, 1763, @CDIFFS, @PHASEID, -851.7639, 2329.792, 677.9014, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+352, 122986, 1763, @CDIFFS, @PHASEID, -889.3559, 2211.878, 750.653, 4.447031);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+353, 122986, 1763, @CDIFFS, @PHASEID, -705.8941, 2177.387, 776.1538, 1.91169);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+354, 122986, 1763, @CDIFFS, @PHASEID, -941.7552, 2398.181, 794.1528, 4.415684);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+355, 130679, 1763, @CDIFFS, @PHASEID, -1086.555, 2224.385, 740.7966, 2.197623);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+356, 130678, 1763, @CDIFFS, @PHASEID, -702.3546, 2248.082, 705.8681, 2.295805);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+357, 130678, 1763, @CDIFFS, @PHASEID, -737.2832, 2223.719, 662.2549, 1.608445);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+358, 130679, 1763, @CDIFFS, @PHASEID, -879.8568, 2147.834, 692.655, 4.190267);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+359, 127879, 1763, @CDIFFS, @PHASEID, -743.3417, 2159.194, 705.855, 3.614083);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+360, 122986, 1763, @CDIFFS, @PHASEID, -796.639, 2203.756, 750.653, 1.854613);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+361, 122973, 1763, @CDIFFS, @PHASEID, -999.9008, 2151.874, 705.9842, 4.452355);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+362, 122986, 1763, @CDIFFS, @PHASEID, -864.3553, 2261.641, 736.218, 2.153912);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+363, 127757, 1763, @CDIFFS, @PHASEID, -690.1549, 2197.25, 705.855, 0.5537775);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+364, 130679, 1763, @CDIFFS, @PHASEID, -953.3372, 2238.331, 662.255, 0.5103535);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+365, 130678, 1763, @CDIFFS, @PHASEID, -834.9879, 2262.356, 642.5792, 3.453252);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+366, 130679, 1763, @CDIFFS, @PHASEID, -843.6009, 2286.331, 678.5873, 1.940305);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+367, 122986, 1763, @CDIFFS, @PHASEID, -876.6092, 2294.618, 723.0999, 4.253394);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+368, 130680, 1763, @CDIFFS, @PHASEID, -1055.867, 2150.538, 717.1713, 0.7513256);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+369, 130679, 1763, @CDIFFS, @PHASEID, -810.2365, 2283.085, 642.2069, 2.092123);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+370, 130678, 1763, @CDIFFS, @PHASEID, -858.334, 2316.667, 642.611, 3.751538);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+371, 130679, 1763, @CDIFFS, @PHASEID, -851.9807, 2330.41, 677.9092, 1.72754);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+372, 122986, 1763, @CDIFFS, @PHASEID, -734.3752, 2324.792, 745.5665, 2.560298);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+373, 128435, 1763, @CDIFFS, @PHASEID, -847.2905, 2359.413, 677.8563, 4.70715);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+374, 122986, 1763, @CDIFFS, @PHASEID, -914.8633, 2365.01, 743.9128, 3.338942);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+375, 122986, 1763, @CDIFFS, @PHASEID, -788.8647, 2374.317, 772.9844, 5.860934);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+376, 122986, 1763, @CDIFFS, @PHASEID, -946.3399, 2385.055, 794.1528, 4.432023);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+377, 122986, 1763, @CDIFFS, @PHASEID, -677.7608, 2359.642, 766.3053, 3.927248);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+378, 130679, 1763, @CDIFFS, @PHASEID, -705.1481, 2357.836, 705.9031, 1.351779);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+379, 130680, 1763, @CDIFFS, @PHASEID, -597.4458, 2265.35, 710.1321, 3.96534);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+380, 130678, 1763, @CDIFFS, @PHASEID, -641.5446, 2326.294, 709.8649, 1.210793);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+381, 130679, 1763, @CDIFFS, @PHASEID, -1052.949, 2348.151, 740.4551, 2.013125);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+382, 130681, 1763, @CDIFFS, @PHASEID, -635.6568, 2441.917, 715.3478, 2.947613);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+383, 122970, 1763, @CDIFFS, @PHASEID, -818.2193, 2145.949, 692.655, 1.201753);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+384, 130686, 1763, @CDIFFS, @PHASEID, -691.2949, 2449.557, 706.4558, 5.251151);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+385, 122970, 1763, @CDIFFS, @PHASEID, -692.6345, 2206.242, 705.855, 4.164391);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+386, 122970, 1763, @CDIFFS, @PHASEID, -668.6812, 2283.152, 707.0416, 4.689926);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+387, 130678, 1763, @CDIFFS, @PHASEID, -924.4358, 2187.391, 662.2549, 4.452531);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+388, 130679, 1763, @CDIFFS, @PHASEID, -1103.229, 2355.509, 740.7966, 5.036436);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+389, 130681, 1763, @CDIFFS, @PHASEID, -663.8102, 2364.121, 715.932, 0.8546125);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+390, 122986, 1763, @CDIFFS, @PHASEID, -795.6064, 2199.871, 776.1537, 4.077308);

DELETE FROM creature_model_info WHERE DisplayID IN (81527, 33733, 33735, 33736, 81328, 78460, 66212, 1206, 45563, 15467, 76913, 80376, 82388, 80904, 88595, 81323, 88597, 88592, 88596, 81330, 88601, 76912, 81325, 88598, 81336, 80338, 88593, 76903, 80709, 76483, 47659, 76902, 78188, 21342, 88600, 80622, 82227, 79453, 80293, 79568, 65995, 36956, 88603, 76762, 46710, 81575, 27710, 82238, 88599, 84461, 1479, 6894, 84712, 81486, 84711, 42720, 42722, 15475, 75961, 56);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (81328, 0.4166664, 1.8, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (78460, 0.4331471, 0.2, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (66212, 0.4426804, 0.36, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (1206, 0.35, 0.5, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (45563, 0.4331471, 0.2, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (15467, 0.1713126, 0.15, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (76913, 1.770524, 2.94, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (80376, 1.272553, 0, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (82388, 1.25, 0, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (80904, 0.7685159, 1.95, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (88595, 0.4041664, 1.746, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (81323, 1.26909, 0, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (88597, 0.4861108, 2.1, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (88592, 0.433333, 1.872, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (88596, 0.4861108, 2.1, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (81330, 0.4197914, 1.8135, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (88601, 0.4243053, 1.833, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (76912, 2.095722, 3.48, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (81325, 0.4861108, 2.1, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (88598, 0.4197914, 1.8135, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (81336, 0.437847, 1.8915, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (80338, 1.993216, 1.75, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (88593, 0.4965274, 2.145, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (76903, 2.149922, 3.57, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (80709, 0.4861108, 2.1, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (76483, 0.75, 4.5, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (47659, 0.7, 4.2, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (76902, 1.824723, 3.03, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (78188, 8.361759, 8.25, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (21342, 0.5, 1, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (88600, 0.4107636, 1.7745, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (80622, 0.4694441, 2.028, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (82227, 1.5, 0, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (79453, 3.880437, 3.375, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (80293, 0.9109098, 3, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (79568, 2.94021, 4.9, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (65995, 0.5, 1, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (36956, 0.1225, 0.35, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (88603, 0.4513886, 1.95, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (76762, 0.2323184, 0, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (46710, 0.5, 1, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (81575, 0.4453122, 1.92375, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (27710, 3.829555, 2.625, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (82238, 0.4513886, 1.95, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (88599, 0.4288191, 1.8525, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (84461, 1.439557, 1.7595, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (1479, 0.459, 2.25, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (6894, 0.459, 2.25, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (84712, 0.4640622, 2.00475, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (81486, 0.6076385, 2.625, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (84711, 0.4687497, 2.025, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (42720, 0.6557649, 1.2, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (42722, 0.6557649, 1.2, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (15475, 0.5745, 2.25, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (75961, 1.684503, 3.75, 0);
INSERT INTO creature_model_info (DisplayID, BoundingRadius, CombatReach, DisplayID_Other_Gender) VALUES (56, 0.459, 2.25, 0);
INSERT INTO `creature_model_info`(`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (33733, 1.073, 1.5, 0, 27377);
INSERT INTO `creature_model_info`(`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (33735, 1.073, 1.5, 0, 27377);
INSERT INTO `creature_model_info`(`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (33736, 1.073, 1.5, 0, 27377);
INSERT INTO `creature_model_info`(`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (81527, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (127352, 130678, 130902, 130679, 130680, 122986, 127757, 127315, 135989, 127799, 128435, 122971, 127879, 122969, 122973, 122972, 128434, 122984, 129553, 129552, 128455, 122963, 129985, 125977, 122965, 122967, 122968, 131289, 130681, 132126, 130686, 128956, 122970, 92870, 126734, 125828, 130912, 131089, 62821, 62822, 138148);
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (127352, 0, 0, 0, 1, 0, 0, 0, 0, '252737 255943 255934');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (130678, 0, 0, 0, 1, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (130902, 0, 0, 0, 1, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (130679, 0, 0, 0, 1, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (130680, 0, 0, 0, 1, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (122986, 0, 0, 50331648, 1, 0, 0, 0, 0, '123978');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (127757, 0, 0, 0, 1, 0, 0, 0, 0, '255968 256956');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (127315, 0, 0, 0, 1, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (135989, 0, 0, 0, 1, 0, 0, 0, 0, '237007 257568 141048');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (127799, 0, 0, 0, 1, 0, 0, 0, 0, '237007 145363');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (128435, 0, 0, 0, 1, 0, 0, 0, 0, '255894');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (122971, 0, 0, 0, 1, 0, 0, 0, 0, '254973 145363');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (127879, 0, 0, 0, 1, 0, 0, 0, 0, '237007 257568 141048');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (122969, 0, 0, 0, 1, 0, 0, 0, 0, '123978 258727');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (122973, 0, 0, 0, 1, 0, 0, 0, 0, '237007 254973 145363');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (122972, 0, 0, 0, 1, 0, 0, 0, 0, '237007 254973 145363');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (128434, 0, 0, 0, 1, 0, 0, 0, 0, '123978');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (122984, 0, 0, 0, 1, 0, 0, 0, 0, '254958 141048 145363');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (129553, 0, 0, 0, 2, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (129552, 0, 0, 0, 1, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (128455, 0, 0, 0, 1, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (122963, 0, 0, 0, 1, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (129985, 0, 0, 50331648, 1, 0, 10455, 0, 0, '257685 258421 257689 279247');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (125977, 0, 0, 0, 1, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (122965, 0, 0, 0, 1, 0, 0, 0, 0, '250192');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (122967, 0, 0, 0, 1, 0, 0, 0, 0, '258386');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (122968, 0, 0, 0, 1, 0, 0, 0, 0, '128512');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (131289, 0, 0, 50331648, 1, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (130681, 0, 0, 50331648, 1, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (132126, 0, 0, 0, 1, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (130686, 0, 0, 0, 1, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (128956, 0, 0, 50331648, 1, 0, 0, 0, 0, '255619 260658');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (122970, 0, 0, 0, 1, 0, 0, 0, 0, '123167 205708 252661 12654 252703 211793');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (92870, 0, 0, 50331648, 1, 0, 0, 0, 0, '');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (126734, 0, 0, 0, 1, 0, 0, 0, 0, '123978 250013 258611');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (125828, 0, 0, 0, 1, 0, 0, 0, 0, '249926');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (130912, 0, 0, 0, 1, 0, 0, 0, 0, '113746 196941');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (131089, 0, 0, 0, 1, 0, 0, 0, 0, '207707');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (62821, 0, 0, 0, 1, 0, 0, 0, 0, '122729 123236');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (62822, 0, 0, 0, 1, 0, 0, 0, 0, '122729 123240');
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, aiAnimKit, movementAnimKit, meleeAnimKit, auras) VALUES (138148, 0, 0, 50331648, 1, 0, 0, 0, 0, '243010 257142');


DELETE FROM `creature_template` WHERE `entry` IN (130902, 130912, 131089, 138148);
INSERT INTO `creature_template` (entry , unit_flags,unit_flags2,unit_flags3,BaseAttackTime,RangeAttackTime) VALUES (130902,256,2048,0,1500,0);
INSERT INTO `creature_template` (entry , unit_flags,unit_flags2,unit_flags3,BaseAttackTime,RangeAttackTime) VALUES (130912,0,2048,0,2000,0);
INSERT INTO `creature_template` (entry , unit_flags,unit_flags2,unit_flags3,BaseAttackTime,RangeAttackTime) VALUES (131089,0,2048,0,2000,0);
INSERT INTO `creature_template` (entry , unit_flags,unit_flags2,unit_flags3,BaseAttackTime,RangeAttackTime) VALUES (138148,0,2048,0,2000,0);


DELETE FROM `creature_template` WHERE `entry` IN ( 127352, 130678, 130679, 130680,130681);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(127352, 0, 120, 120, 16, 0, 1, 1.142857, 1500, 2000, 33588032, 4196352, 0, 0, 0, 1), -- 127352
(130678, 0, 1, 1, 188, 0, 1, 1.142857, 2000, 2000, 0, 2048, 0, 0, 0, 1), -- 130678
(130679, 0, 1, 1, 188, 0, 1, 1.142857, 2000, 2000, 0, 2048, 0, 0, 0, 1), -- 130679
(130680, 0, 1, 1, 188, 0, 1, 1.142857, 2000, 2000, 0, 2048, 0, 0, 0, 1), -- 130680
(130681, 0, 1, 1, 188, 0, 1, 1.142857, 2000, 2000, 0, 2048, 0, 0, 0, 1); -- 130681
DELETE FROM `creature_template` WHERE `entry` IN (127799, 131009,122973,122969,122986, 127757, 127315,129517,129566, 126734, 135989, 128435, 122971, 127879, 122972, 128434, 122963,129985,125977,122967, 122984, 129553, 129552, 128455, 122965, 122968, 131289, 132126, 130686, 128956, 125868, 125828, 126734, 122970);
INSERT INTO `creature_template` (`entry`, `BaseAttackTime`, `RangeAttackTime`, `name`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `HealthScalingExpansion`, 
`minlevel`, `maxlevel`, `unit_class`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `faction`, 
`movementId`, `VerifiedBuild`) VALUES
(122973, 1500, 2000, 'Dazar\'ai Confessor', 0, 0, 0, 0, 7, 110, 120, 2, 1, 0, 7, 2097224, 0, 5, 10, 16, 144, 29297), -- 122973
(122984, 1500, 2000, 'Dazar\'ai Colossus', 0, 0, 0, 0, 7, 110, 120, 1, 1, 0, 9, 2097736, 0, 8.5, 1, 16, 144, 29297), -- 122984
(129553, 1500, 2000, 'Dinomancer Kish\'o', 0, 0, 0, 0, 7, 110, 120, 1, 1, 0, 7, 2097224, 0, 12, 1, 16, 0, 29297), -- 129553
(129552, 1500, 2000, 'Monzumi', 0, 0, 0, 0, 7, 110, 120, 1, 1, 138, 1, 2097224, 0, 10.2, 1, 16, 0, 29297), -- 129552
(128455, 1500, 2000, 'T\'lonja', 0, 0, 0, 0, 7, 110, 120, 1, 1, 138, 1, 2097224, 0, 10, 1, 16, 0, 29297), -- 128455
(122965, 1500, 2000, 'Vol\'kaal', 0, 0, 0, 0, 7, 110, 120, 1, 3, 0, 6, 2097256, 128, 32, 20, 16, 188, 29297), -- 122965
(122968, 1500, 2000, 'Yazma', 0, 0, 0, 0, 7, 110, 120, 4, 3, 0, 7, 104, 128, 39, 1, 16, 188, 29297), -- 122968
(131289, 1500, 2000, 'Pyroshadow', 0, 0, 0, 0, 7, 110, 120, 1, 0, 0, 10, 1024, 0, 1, 1, 16, 0, 29297), -- 131289
(132126, 1500, 2000, 'Gilded Pristess', 0, 0, 0, 0, 7, 110, 120, 4, 1, 0, 7, 2097224, 0, 5, 1, 16, 188, 29297), -- 132126
(130686, 0, 0, 'Croador de la cima', 0, 0, 0, 0, 7, 1, 1, 1, 0, 0, 8, 0, 0, 0.2, 1, 31, 0, 29297), -- 130686
(128956, 1500, 2000, 'Caldero de oro manchado con sangre', 0, 0, 0, 0, 7, 110, 120, 2, 1, 0, 10, 1048648, 128, 35, 5, 16, 0, 29297), -- 128956
(125868, 1500, 2000, 'Echo of Shadra', 0, 0, 0, 0, 7, 110, 120, 1, 0, 0, 1, 2097224, 128, 1.5, 1, 16, 79, 29297), -- 125868
(125828, 1500, 2000, 'Soulrend', 0, 0, 0, 0, 7, 110, 120, 1, 1, 0, 6, 2097224, 128, 1.5, 1, 16, 76, 29297), -- 125828
(126734, 1500, 2000, 'Echo of Shadra', 0, 33587200, 32768, 1, 7, 110, 120, 1, 0, 0, 1, 2097224, 128, 1.5, 1, 16, 79, 29297), -- 126734
(122969, 1500, 2000, 'Zanchuli Witch-Doctor', 0, 0, 0, 0, 7, 110, 120, 2, 1, 0, 7, 2097224, 0, 5, 10, 16, 0, 29297), -- 122969
(122970, 1500, 2000, 'Shadowblade Stalker', 0, 32832, 4196352, 0, 7, 110, 120, 4, 1, 0, 7, 2097224, 1, 5, 1, 16, 0, 29297), -- 122970
(122967, 1500, 2000, 'Priestess Alun\' za', 0 , 32832, 6291456, 0, 7, 110, 120, 1, 3,0,0,0,0, 31, 1, 16, 0,29297), -- 122967
(122963, 1500, 2000, 'Rezan', 0, 32832, 4196352, 0, 7, 110, 120, 1, 3,0, 0, 0, 0, 33, 1, 16, 0, 29297), -- 122963
(131009, 1500, 2000, 'Spirit Of Gold', 0, 0, 0, 0, 7, 110, 120, 1, 1, 0, 0, 0, 0, 10, 1, 16, 0, 29297),
(128435, 1500, 2000, 'Toxic Saurid', 0, 32768, 4196352, 0, 7, 110, 120, 0, 0, 0, 0, 0, 0, 5, 0, 16, 0, 29297), -- 128435
(128434, 1500, 2000, 'Feasting Skyscreamer', 0, 32832, 4196352, 0, 7, 110, 120, 0, 0, 0, 0, 0, 0, 5, 0, 16, 0, 29297), -- 128434
(122971, 1500, 2000, 'Dazar\'ai Juggernaut', 0, 32832, 4196352, 0, 7, 110, 120, 0, 0, 0, 0, 0, 0, 5, 0, 16, 0, 28297),
(127799, 1500, 2000, 'Dazar\'ai Honor Guard', 0, 32832, 4196352, 0, 7, 110, 120, 0, 0, 0, 0, 0, 0, 5, 0, 16, 0, 28297), 
(122972, 1500, 2000, 'Dazar\'ai Augur', 0, 32832, 4196352, 0, 7, 110, 120, 0, 0, 0, 0, 0, 0, 5, 0, 16, 0, 28297),
(127879, 1500, 2000, 'Shieldbearer of Zul', 0, 32832, 4196352, 0, 7, 110, 120, 0, 0, 0, 0, 0, 0, 5, 0, 16, 0, 28297),
(127757, 1500, 2000, 'Reanimated Honor Guard', 0, 32832, 4196352, 0, 7, 110, 120, 0, 0, 0, 0, 0, 0, 5, 0, 16, 0, 28297),
(122986, 1500, 2000, '', 0, 32832, 1073743872, 0, 7, 110, 120, 0, 0, 0, 0, 0, 0, 5, 0, 16, 0, 28297),
(127315, 1500, 2000, '', 0, 0, 4194304, 1, 7, 110, 120, 0, 0, 0, 0, 0, 0, 5, 0, 14, 0, 28297),
(135989, 1500, 2000, '', 0, 32832, 2048, 0, 7, 110, 120, 0, 0, 0, 0, 0, 0, 5, 0, 16, 0, 28297),
(129985, 1500, 2000, '', 0, 33554432, 4196352, 1, 7, 110, 120, 0, 0, 0, 0, 0, 0, 5, 0, 14, 0, 28297),
(125977, 2000, 2000, '', 0, 0, 4227072, 1, 7, 110, 120, 0, 0, 0, 0, 0, 0, 5, 0, 16, 0, 28297),
(129517, 1500, 2000, '', 0, 33536, 2048, 0, 7, 110, 120, 0, 0, 0, 0, 0, 0, 5, 0, 16, 0, 28297),
(129566, 1500, 2000, '', 0, 33536, 2048, 0, 7, 110, 120, 0, 0, 0, 0, 0, 0, 5, 0, 16, 0, 28297);


UPDATE `creature_template` SET `VehicleId` = 5059 WHERE `entry`=122967;
UPDATE `creature_template` SET `VehicleId` = 5634 WHERE `entry`=122963;
UPDATE `creature_template` SET `VehicleId` = 5059 WHERE `entry`=132126;

UPDATE `creature_template` SET `speed_walk`= 2.4 WHERE `entry`IN (129517,129566);
UPDATE `creature_template` SET `speed_walk`= 1.4 WHERE `entry` = 126734;
UPDATE `creature_template` SET `speed_walk`= 2.8 WHERE `entry` = 122963;

UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1 WHERE `entry`=130678;

UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=120 WHERE `entry`=130902;
UPDATE `creature_template` SET `faction`=188 WHERE `entry`=130902;
UPDATE `creature_template` SET `npcflag`=16777216 WHERE `entry`=130902;
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=120 WHERE `entry`=130912;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=130912;
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=120 WHERE `entry`=131089;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=131089;
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123 WHERE `entry`=138148;
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=138148;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=138148;

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`=128140;

INSERT IGNORE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (130902, 258890, 0, 0);

INSERT IGNORE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES (135989, 1, 159682, 0, 0, 94192, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES (127799, 1, 94122, 0, 0, 94122, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES (122971, 1, 93281, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES (127879, 1, 159682, 0, 0, 159810, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES (122969, 1, 94749, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES (122973, 1, 94119, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES (122972, 1, 94681, 0, 0, 94684, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES (129553, 1, 0, 0, 0, 0, 0, 0, 159491, 0, 0);
INSERT IGNORE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES (122970, 1, 93595, 0, 0, 93595, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES (130912, 1, 94028, 0, 0, 94028, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES (131089, 1, 93595, 0, 0, 93595, 0, 0, 0, 0, 0);

INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (127352, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (130902, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (122986, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (127757, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (127315, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (135989, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (127799, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (128435, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (122971, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (127879, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (122969, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (122973, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (122972, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (128434, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (122984, 110, 120, 0, 1);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (129553, 110, 120, 0, 1);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (129552, 110, 120, 0, 1);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (128455, 110, 120, 0, 1);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (122963, 110, 120, 0, 2);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (129985, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (125977, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (122965, 110, 120, 0, 2);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (122967, 110, 120, 0, 2);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (122968, 110, 120, 0, 2);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (131289, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (132126, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (128956, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (122970, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (129517, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (126734, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (125828, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (125868, 110, 120, 0, 0);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (130912, 110, 120, 0, 1);
INSERT IGNORE INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`) VALUES (131089, 110, 120, 0, 0);


DELETE FROM gameobject WHERE `map` = 1763;
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+0, 276643, 1763, @ODIFFS, @PHASEID, -849.0764, 2044.167, 729.6942, 1.570796, 0, 0, 0.7071066, 0.7071069, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+1, 278820, 1763, @ODIFFS, @PHASEID, -911.5799, 2147.01, 704.9904, 0, 0, -0.7071066, 0, 0.7071069, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+2, 288204, 1763, @ODIFFS, @PHASEID, -955.9855, 2288.606, 681.2731, 3.141593, 0, 0, -1, 0, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+3, 288202, 1763, @ODIFFS, @PHASEID, -739.5535, 2288.606, 681.2731, 3.141593, 0, 0, -1, 0, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+4, 288205, 1763, @ODIFFS, @PHASEID, -955.9855, 2296.698, 681.2731, 3.141593, 0, 0, -1, 0, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+5, 288203, 1763, @ODIFFS, @PHASEID, -739.5535, 2296.698, 681.2731, 3.141593, 0, 0, -1, 0, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+6, 288478, 1763, @ODIFFS, @PHASEID, -965.9672, 2279.492, 681.5456, 3.141593, 0, 0, -1, 0, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+7, 288477, 1763, @ODIFFS, @PHASEID, -729.3082, 2279.52, 681.5456, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+8, 292402, 1763, @ODIFFS, @PHASEID, -649.2153, 2280.241, 711.6238, 3.141593, 0, 0, -1, 0, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+9, 292399, 1763, @ODIFFS, @PHASEID, -649.2153, 2288.389, 711.6238, 3.141593, 0, 0, -1, 0, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+10, 292400, 1763, @ODIFFS, @PHASEID, -649.2153, 2296.546, 711.6238, 3.141593, 0, 0, -1, 0, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+11, 292401, 1763, @ODIFFS, @PHASEID, -649.2153, 2304.633, 711.6238, 3.141593, 0, 0, -1, 0, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+12, 278422, 1763, @ODIFFS, @PHASEID, -847.7704, 2415.89, 678.2501, 4.71239, 0, 0, -0.7071066, 0.7071069, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+13, 292398, 1763, @ODIFFS, @PHASEID, -880.5806, 2469.369, 732.9503, 4.71239, 0, 0, -0.7071066, 0.7071069, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+14, 292397, 1763, @ODIFFS, @PHASEID, -815.1183, 2469.369, 732.9503, 4.71239, 0, 0, -0.7071066, 0.7071069, 120, 255, 1);
INSERT INTO gameobject (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (@OGUID+15, 278820, 1763, @ODIFFS, @PHASEID, -847.6996, 2389.783, 678.3637, 4.705675, 0, 0, -0.7094765, 0.7047291, 120, 255, 1);


INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (276643, 5, 672, 'Instance Portal', '', '', '', 1.75, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (278820, 5, 6391, 'Collision Wall', '', '', '', 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (288204, 0, 48888, 'Doodad_8DU_CityofGold_Gate001', '', '', '', 0.8959771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (288202, 0, 48888, 'Doodad_8DU_CityofGold_Gate003', '', '', '', 0.8959772, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (288205, 0, 48888, 'Doodad_8DU_CityofGold_Gate002', '', '', '', 0.8959771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (288203, 0, 48888, 'Doodad_8DU_CityofGold_Gate004', '', '', '', 0.8959772, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (288478, 1, 49080, 'Ancient Switch', '', '', '', 2.534223, 0, 0, 63723, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (288477, 1, 49080, 'Ancient Switch', '', '', '', 2.534223, 0, 0, 63723, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (292402, 0, 48888, 'Doodad_8DU_CityofGold_Gate005', '', '', '', 0.8959772, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (292399, 0, 48888, 'Doodad_8DU_CityofGold_Gate006', '', '', '', 0.8959772, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (292400, 0, 48888, 'Doodad_8DU_CityofGold_Gate007', '', '', '', 0.8959772, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (292401, 0, 48888, 'Doodad_8DU_CityofGold_Gate008', '', '', '', 0.8959772, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (278422, 0, 45999, 'Doodad_8DU_CityofGold_WaterfallStairs001', '', '', '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (292398, 0, 48888, 'Doodad_8DU_CityofGold_Gate010', '', '', '', 0.8959772, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (292397, 0, 48888, 'Doodad_8DU_CityofGold_Gate009', '', '', '', 0.8959772, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (233282, 22, 7537, 'Refreshment Table', '', '', '', 1.2, 167143, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, size, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, Data32, Data33, RequiredLevel) VALUES (302855, 22, 51525, 'Portal to Dazar\'alor', '', '', '', 1, 281406, 0, 1, 1, 0, 923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (32627, 135928, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (33163, 138749, 1, 138748, 1, 138747, 1, 138746, 1, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (32077, 131830, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (33231, 139726, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (32123, 132179, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (32037, 131650, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (32122, 132178, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (33584, 143542, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (34711, 153167, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (34975, 155343, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (34894, 154520, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (34880, 154489, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (34881, 154493, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (35041, 156270, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (33860, 146422, 1, 146423, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (35145, 156915, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (32194, 132599, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (33080, 138048, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0, Probability0, BroadcastTextID1, Probability1, BroadcastTextID2, Probability2, BroadcastTextID3, Probability3, BroadcastTextID4, Probability4, BroadcastTextID5, Probability5, BroadcastTextID6, Probability6, BroadcastTextID7, Probability7) VALUES (14126, 32778, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


DELETE FROM creature_text WHERE CreatureID = 122963;
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122963, 0, 0, 'The restless bones come to life as a Reanimated Raptor!', 41, 0, 100, 0, 0, 0, 141130, 'Rezan');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122963, 1, 0, '|TInterface\\Icons\\ABILITY_DEVOUR.BLP:20|tRezan uses his |cFFFF0000|Hspell:255371|h[Terrifying Visage]|h|r, hide!', 41, 0, 100, 0, 0, 0, 141155, 'Rezan');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122963, 2, 0, 'Rezan sets his sights on $n to |TInterface\\Icons\\ABILITY_MOUNT_FOSSILIZEDRAPTOR.BLP:20|t|cFFFF0000|Hspell:255421|h[Devour]|h|r them!', 41, 0, 100, 0, 0, 0, 138730, 'Rezan');
DELETE FROM creature_text WHERE CreatureID = 122971;
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122971, 0, 0, 'Protect de priestess! Let no one make it through!', 14, 0, 100, 7, 0, 0, 140897, 'Dazar\'ai Juggernaut');
DELETE FROM creature_text WHERE CreatureID = 122967;
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122967, 0, 0, 'You came for de gold, but you will leave behind your bones!', 14, 0, 100, 7, 0, 0, 140324, 'Priestess Alun\'za');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122967, 1, 0, '$n gilds her hands with gold.', 16, 0, 100, 7, 0, 0, 138800, 'Priestess Alun\'za');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122967, 2, 0, 'My claws will find your heart.', 14, 0, 100, 7, 0, 0, 140353, 'Priestess Alun\'za');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122967, 3, 0, '|TInterface\\Icons\\SPELL_HOLY_PURIFY.BLP:20|t$n casts |cFFFF0000|Hspell:255577|h[Transfusion]|h|r!', 41, 0, 100, 0, 0, 0, 138801, 'Priestess Alun\'za');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122967, 4, 0, 'You do not belong here!', 14, 0, 100, 7, 0, 0, 140354, 'Priestess Alun\'za');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122967, 5, 0, 'De pools... must be... cleansed.', 14, 0, 100, 7, 0, 97340, 140327, 'Priestess Alun\'za');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122967, 6, 0, 'Servants of Yazma are not welcome here!', 14, 0, 100, 7, 0, 0, 140323, 'Priestess Alun\'za');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122967, 7, 0, 'Corruption be purified!', 14, 0, 100, 7, 0, 0, 140331, 'Priestess Alun\'za');
DELETE FROM creature_text WHERE CreatureID = 122965;
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122965, 0, 0, 'Master want your bones!', 14, 0, 100, 0, 0, 0, 140411, 'Vol\'kaal');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122965, 1, 0, 'You die with me!', 14, 0, 100, 0, 0, 0, 140453, 'Vol\'kaal');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122965, 2, 0, 'Master gonna build me again...', 14, 0, 100, 0, 0, 0, 140457, 'Vol\'kaal');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122965, 3, 0, 'You?! I tear you apart!', 14, 0, 100, 7, 0, 0, 140446, 'Vol\'kaal');
DELETE FROM creature_text WHERE CreatureID = 122968;
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122968, 0, 0, 'Dazar will awaken soon, but you will not live to see it!', 14, 0, 100, 7, 0, 0, 140480, 'Yazma');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122968, 1, 0, 'Let your soul be shattered!', 14, 0, 100, 0, 0, 0, 140508, 'Yazma');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122968, 2, 0, '|TINTERFACE\\ICONS\\Ability_DemonHunter_SoulCleave2.blp:20|t Yazma begins to cast |cFFFF0404|Hspell:249924|h[Soulrend]|h|r on $n!', 41, 0, 100, 0, 0, 0, 135578, 'Yazma');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122968, 3, 0, 'Fools! Zul will rip... your spirits... apart...', 14, 0, 100, 0, 0, 0, 140493, 'Yazma');
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (122968, 4, 0, 'I will tear your soul apart!', 14, 0, 100, 0, 0, 0, 140507, 'Yazma');
DELETE FROM creature_text WHERE CreatureID = 130912;
INSERT INTO creature_text (CreatureID, GroupID, ID, Text, Type, Language, Probability, Emote, Duration, Sound, BroadcastTextId, comment) VALUES (130912, 0, 0, 'You will not take my head today!', 14, 0, 100, 7, 0, 97368, 142721, 'Shadowblade Razi');

UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 122986;

DELETE FROM `scenarios` WHERE `map` = 1763;
INSERT INTO `scenarios` (`map`, `scenario_A`, `scenario_H`) VALUES
('1763', '1528', '1528');

DELETE FROM `creature_template_journal` WHERE entry IN (122968, 122965, 122967, 122963);
INSERT INTO `creature_template_journal` VALUES
(122968, 2030), -- Yazma
(122965, 2036), -- Vol'kaal
(122967, 2082), -- Priestess Alun'za
(122963, 2083); -- Rezan

UPDATE creature SET spawntimesecs = 86400 WHERE map = 1763;
UPDATE creature_template SET mechanic_immune_mask = 2147467263 WHERE entry IN (122968, 122965, 122967, 122963);

DELETE FROM conditions WHERE SourceTypeOrReferenceId = 13 AND SourceEntry IN (250229);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES
(13, 1, 250229, 31, 5, 125977);

DELETE FROM creature_template_model WHERE CreatureID IN (131009, 130738, 129566, 129517, 122969, 130902, 130912, 131089, 138148, 127352, 130678, 130679, 130680, 122986, 127757, 127315, 135989, 127799, 128435, 122971, 127879, 122972, 128434, 122963,129985,125977,122967,130681,126734,122973, 122984, 129553, 129552, 128455, 122965, 122968, 131289, 132126, 130686, 128956, 125868, 125828, 126734, 122970);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (129517, 0, 33733, 1, 1, 28153);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (129517, 1, 33735, 1, 1, 28153);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (129517, 2, 33736, 1, 1, 28153);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122969, 0, 80622, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122969, 1, 88593, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122969, 2, 88592, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (129566, 0, 33733, 1, 1, 28153);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (129566, 1, 33735, 1, 1, 28153);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (129566, 2, 33736, 1, 1, 28153);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122963, 0, 78188, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122965, 0, 79453, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122967, 0, 80293, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122968, 0, 79568, 1, 0, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122970, 1, 81575, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122970, 2, 84711, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122970, 0, 84712, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122971, 0, 81325, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122971, 1, 88596, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122971, 2, 88597, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122972, 0, 81336, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122972, 1, 88600, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122972, 2, 88601, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122973, 0, 81330, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122973, 1, 88598, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122973, 2, 88599, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122984, 0, 80338, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122986, 3, 76902, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122986, 2, 76903, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122986, 1, 76912, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (122986, 0, 76913, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (125828, 0, 10913, 1, 1, 28153);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (125828, 0, 34915, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (125868, 0, 84461, 0.85, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (125977, 0, 82227, 0.75, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (126734, 0, 84461, 0.75, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (127315, 0, 82388, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (127352, 1, 81326, 1, 0, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (127352, 0, 81328, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (127757, 0, 80376, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (127799, 0, 81326, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (127799, 1, 81328, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (127799, 2, 88595, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (127879, 0, 80904, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (128434, 3, 76902, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (128434, 2, 76903, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (128434, 1, 76912, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (128434, 0, 76913, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (128435, 0, 81323, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (128455, 0, 47659, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (128956, 0, 42963, 1, 0, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (128956, 1, 46710, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (129552, 0, 76483, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (129553, 0, 80709, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (129985, 0, 16480, 1, 0, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (129985, 1, 21342, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (130678, 0, 45563, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (130678, 1, 78460, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (130679, 0, 1206, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (130680, 0, 15467, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (130681, 0, 36956, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (130686, 0, 76762, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (130902, 0, 66212, 1, 1, 28153);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (130912, 0, 81486, 1, 1, 28153);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (131089, 0, 81575, 1, 1, 28153);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (131089, 1, 84711, 1, 1, 28153);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (131089, 2, 84712, 1, 1, 28153);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (131289, 0, 16480, 1, 0, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (131289, 1, 65995, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (132126, 0, 82238, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (132126, 1, 88602, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (132126, 2, 88603, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (135989, 0, 80904, 1, 1, 29297);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (131009, 0, 81527, 1, 1, 28153);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (130738, 0, 46710, 1, 1, 28153);
INSERT INTO `creature_template_model`(`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (138148, 0, 75961, 1, 1, 28153);


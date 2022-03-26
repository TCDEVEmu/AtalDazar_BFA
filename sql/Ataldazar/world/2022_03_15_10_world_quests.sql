replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('10676','0','0','0','2','0','100','1','0','15','0','0','0','25','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Raider Jhash - On 15% HP - Flee');
replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('10676','0','1','0','2','0','100','1','0','15','0','0','0','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Raider Jhash - On 15% HP - Say 0');
replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('10676','0','2','0','9','0','100','0','0','20','7000','9000','0','11','6533','0','0','0','0','0','2','0','0','0','0','0','0','0','Raider Jhash - On Close - Cast Net');
replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('10676','0','3','0','62','0','100','0','11189','0','0','0','0','85','73678','0','0','0','0','0','7','0','0','0','0','0','0','0','Raider Jhash - On Gossip Select - Invoker Cast 73678');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`='39239';

replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('39239','0','0','0','27','0','100','0','0','0','0','0','0','53','1','39239','0','0','0','0','23','0','0','0','0','0','0','0','Durotar Riding Wolf - On Passenger Boarded - Start WP 39239');
replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('39239','0','1','0','58','0','100','0','18','39239','0','0','0','41','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Durotar Riding Wolf - On Wp Reached - Despawn');
replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('39239','0','2','0','58','0','100','0','18','39239','0','0','0','15','25171','0','0','0','0','0','21','10','0','0','0','0','0','0','Durotar Riding Wolf - On Wp Reached - Complete Quest');

replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','1','-817.445','-4880.22','19.0949','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','2','-775.32','-4843.44','18.2446','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','3','-689.507','-4770.98','33.6768','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','4','-642.223','-4729.53','33.6771','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','5','-581.367','-4728.2','33.9392','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','6','-557.183','-4735.64','33.4315','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','7','-491.575','-4768.59','32.2102','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','8','-449.438','-4776.29','32.4108','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','9','-369.711','-4812.98','32.3114','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','10','-294.168','-4804.69','29.532','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','11','-97.6855','-4745.22','21.5711','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','12','-42.1502','-4749.2','21.058','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','13','78.5766','-4743.46','18.027','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','14','133.525','-4766.12','12.6002','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','15','187.827','-4750.91','11.2574','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','16','238.708','-4737.98','10.1029','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','17','265.059','-4749.52','10.0805','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','18','300.983','-4754.8','9.39913','Durotar Riding Wolf');

UPDATE `quest_template_addon` SET `PrevQuestID` = '25132' WHERE `ID` = '25135'; 
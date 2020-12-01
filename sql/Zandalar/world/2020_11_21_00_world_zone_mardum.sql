DELETE FROM smart_scripts WHERE entryorguid=98986;
UPDATE creature_template SET ScriptName="npc_q39495_prolifica" WHERE entry=98986;

/* quest 4077 waypoints */
replace  into `waypoint_data`(`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) values 
(10267107,1,1178.73,3203.94,51.5596,0,0,1,0,100,0),
(10267107,2,1169.01,3206.02,51.7205,0,0,1,0,100,0),
(10267107,3,1157.38,3202.05,48.5555,0,0,1,0,100,0),
(10267107,4,1142.81,3197.18,43.5603,0,0,1,336,100,0),
(10267107,5,1131.93,3194.71,43.2108,0,0,1,0,100,0),
(10267107,6,1117.65,3191.72,35.4776,0,0,1,337,100,0),
(10267107,7,1101.23,3188.03,31.3267,0,0,1,0,100,0),
(10267107,8,1085.24,3181.91,26.0593,0,0,1,0,100,0),
(10267107,9,1066.22,3172.38,19.1902,0,0,1,0,100,0),
(10267107,10,1057.33,3165.81,17.8223,0,0,1,0,100,0),
(10267111,1,1168.07,3203.88,51.1538,0,0,1,0,100,0),
(10267111,2,1155.24,3201.22,47.6943,0,0,1,0,100,0),
(10267111,3,1140.44,3196.55,42.6629,0,0,1,336,100,0),
(10267111,4,1131.84,3194.26,43.748,0,0,1,0,100,0),
(10267111,5,1121.43,3191.73,36.3668,0,0,1,337,100,0),
(10267111,6,1112.27,3190.34,34.0611,0,0,1,0,100,0),
(10267111,7,1095.81,3186.08,29.4127,0,0,1,0,100,0),
(10267111,8,1081.67,3179.01,24.9956,0,0,1,0,100,0),
(10267111,9,1070.42,3172.81,20.7183,0,0,1,0,100,0),
(10267111,10,1057.83,3165.26,17.7868,0,0,1,0,100,0),
(10267112,1,1167.82,3202.48,50.798,0,0,1,0,100,0),
(10267112,2,1151.47,3197.79,45.3514,0,0,1,0,100,0),
(10267112,3,1138.01,3195.36,41.5363,0,0,1,336,100,0),
(10267112,4,1130.64,3193.69,41.6789,0,0,1,0,100,0),
(10267112,5,1120.36,3190.48,35.9676,0,0,1,337,100,0),
(10267112,6,1100.82,3185.39,30.8637,0,0,1,0,100,0),
(10267112,7,1081.18,3181.05,25.1364,0,0,1,0,100,0),
(10267112,8,1063.56,3173.27,18.7396,0,0,1,0,100,0),
(10267112,9,1057.57,3168.61,18.2155,0,0,1,0,100,0),
(10267110,8,1087.39,3185.91,26.9575,0,0,1,0,100,0),
(10267110,7,1103.81,3189.32,32.2262,0,0,1,0,100,0),
(10267110,6,1119.06,3192.96,35.9639,0,0,1,337,100,0),
(10267110,5,1131.05,3197,42.6448,0,0,1,0,100,0),
(10267110,4,1139.25,3199.53,42.8941,0,0,1,336,100,0),
(10267110,3,1149.89,3202.98,46.5824,0,0,1,0,100,0),
(10267110,2,1156.65,3204.88,49.0171,0,0,1,0,100,0),
(10267110,1,1170.24,3207.99,52.2548,0,0,1,0,100,0),
(10267110,9,1073.64,3182.91,23.6075,0,0,1,0,100,0),
(10267110,10,1054.45,3174.69,18.728,0,0,1,0,100,0),
(10267109,11,1059.64,3170.84,18.4537,0,0,1,0,100,0),
(10267109,10,1063.99,3174.41,19.0846,0,0,1,0,100,0),
(10267109,9,1079.56,3183.88,25.159,0,0,1,0,100,0),
(10267109,8,1092.45,3187.91,28.7512,0,0,1,0,100,0),
(10267109,7,1103.64,3191.97,32.619,0,0,1,0,100,0),
(10267109,6,1118.68,3198.24,36.7279,0,0,1,337,100,0),
(10267109,5,1131.66,3202.43,43.384,0,0,1,0,100,0),
(10267109,4,1139.73,3204.31,43.8143,0,0,1,336,100,0),
(10267109,3,1151.73,3207.11,48.0207,0,0,1,0,100,0),
(10267109,2,1166.16,3208.31,51.9857,0,0,1,0,100,0),
(10267109,1,1174.98,3204.27,51.5042,0,0,1,0,100,0),
(10267108,10,1061.93,3176.11,19.0967,0,0,1,0,100,0),
(10267108,9,1078.7,3185.25,25.1685,0,0,1,0,100,0),
(10267108,8,1097.17,3194.71,31.4578,0,0,1,0,100,0),
(10267108,5,1131.1,3204.25,44.9873,0,0,1,0,100,0),
(10267108,6,1119.6,3202.27,37.9456,0,0,1,337,100,0),
(10267108,7,1112.31,3200.29,35.7262,0,0,1,0,100,0),
(10267108,4,1141.28,3207.38,44.871,0,0,1,336,100,0),
(10267108,3,1159.42,3212.35,50.6096,0,0,1,0,100,0),
(10267108,2,1173.74,3209.55,52.7726,0,0,1,0,100,0),
(10267108,1,1180.78,3205.39,51.9965,0,0,1,0,100,0);

/* remove smart_script since this boss has a core script for the same action */
delete from smart_scripts where entryorguid in (96441);

/* fel lord caza texts */
delete from creature_text where CreatureID in (96441);
insert into `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) values
('96441','0','0','Damn your spectral sight!','14','0','100','0','0','55172','0','0','Fel Lord Caza to Player'),
('96441','0','1','My axe never misses its mark.','14','0','100','0','0','55174','0','0','Fel Lord Caza to Player'),
('96441','0','2','I would have sundered your forces...','14','0','100','0','0','55173','0','0','Fel Lord Caza to Player');


/* quest 39495 hidden no more rockslide */
UPDATE gameobject_template SET ScriptName="go_q39495" WHERE entry=245045;
UPDATE gameobject SET PhaseId=0 WHERE id=245045;

update `creature` set `phaseid` = 11604 where `guid` in (1057121,1055837,194746);


DELETE FROM `phase_area` WHERE `AreaId`=5356 AND `PhaseId`=169;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (5356, 169, 'Orgrimmar  - Default phase');
DELETE FROM `phase_area` WHERE `AreaId`=5356 AND `PhaseId`=11604;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (5356, 11604, 'Orgrimmar - BFA Intro');

DELETE FROM `phase_area` WHERE `AreaId`=5356 AND `PhaseId`=11279;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (5356, 11279, 'Orgrimmar - after accept quest 51796');
DELETE FROM `phase_area` WHERE `AreaId`=5356 AND `PhaseId`=11189;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (5356, 11189, 'Orgrimmar - after accept quest 51796');


DELETE FROM `phase_area` WHERE `AreaId`=9609;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(9609, 169, 'Silithus Default Phase'),
(9609, 170, 'Silithus S-Q-53028 / Q-S-51211');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=9609;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 9609, 0, 0, 9, 0, 53028, 0, 0, 0, 0, 0, '', 'Phase 170 if has Quest 53028 '),
(26, 170, 9609, 0, 1, 28, 0, 53028, 0, 0, 0, 0, 0, '', 'Phase 170 if Quest 53028 complete'),
(26, 170, 9609, 0, 2, 8, 0, 53028, 0, 0, 0, 0, 0, '', 'Phase 170 if Quest 53028 rewarded'),
(26, 170, 9609, 0, 2, 9, 0, 51211, 0, 0, 1, 0, 0, '', 'Phase 170 if not has Quest 53028');

update `creature` set `phaseid` = 170 where `guid`=933142;

DELETE FROM `phase_area` WHERE `AreaId`=9667;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(9667, 169, 'Chamber of Heart Default Phase'),
(9667, 170, 'Chamber of Heart Intro Phase');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=9667;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 9667, 0, 0, 8, 0, 53031, 0, 0, 1, 0, 0, '', 'Phase 170 if Quest 51211 complete');


update `creature` set `phaseid` = 170 where `guid` in (1053407,1053406);

DELETE FROM `phase_area` WHERE `AreaId`=8618;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(8618, 169, 'The broken Tusk Default Phase'),
(8618, 170, 'The broken Tusk Intro bfa Phase'),
(8618, 171, 'The broken Tusk Intro bfa Phase2');

update `creature` set `phaseid` = 171 where `guid` = 1053405;

DELETE FROM `phase_area` WHERE `AreaId`=5170;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(5170, 169, 'Valley of Strength Default Phase'),
(5170, 170, 'Valley of Strength Intro bfa Phase');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=5170;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 5170, 0, 0, 48, 0, 335883, 0, 0, 0, 0, 0, '', 'Phase 170 if quest objetive 335883 '),
(26, 170, 5170, 0, 0, 48, 0, 10000002, 0, 0, 1, 0, 0, '', 'Phase 170 if not quest objetive 10000002'),

(26, 170, 5170, 0, 1, 28, 0, 51443, 0, 0, 0, 0, 0, '', 'Phase 170 if quest complete 51443'),

(26, 170, 5170, 0, 2, 8, 0, 51443, 0, 0, 0, 0, 0, '', 'Phase 170 if quest rewarded 51443'),
(26, 170, 5170, 0, 2, 9, 0, 50769, 0, 0, 1, 0, 0, '', 'Phase 170 if not quest has 50769'),

(26, 170, 5170, 0, 3, 9, 0, 50769, 0, 0, 0, 0, 0, '', 'Phase 170 if quest has 50769'),
(26, 170, 5170, 0, 3, 48, 0, 333785, 0, 0, 1, 0, 0, '', 'Phase 170 if quest objetive 333785');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=8618;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 8618, 0, 0, 48, 0, 335883, 0, 0, 0, 0, 0, '', 'Phase 170 if quest objetive 335883 '),
(26, 170, 8618, 0, 1, 28, 0, 51443, 0, 0, 0, 0, 0, '', 'Phase 170 if quest complete 51443'),
(26, 170, 8618, 0, 2, 8, 0, 51443, 0, 0, 0, 0, 0, '', 'Phase 170 if quest rewarded 51443'),
(26, 170, 8618, 0, 2, 9, 0, 50769, 0, 0, 1, 0, 0, '', 'Phase 170 if not quest has 50769'),
(26, 170, 8618, 0, 3, 9, 0, 50769, 0, 0, 0, 0, 0, '', 'Phase 170 if quest has 50769'),
(26, 170, 8618, 0, 3, 48, 0, 333785, 0, 0, 1, 0, 0, '', 'Phase 170 if quest objetive 333785');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=171 AND `SourceEntry`=8618;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 171, 8618, 0, 0, 48, 0, 10000002, 0, 0, 0, 0, 0, '', 'Phase 170 if quest objetive 10000002 '),
(26, 171, 8618, 0, 1, 28, 0, 51443, 0, 0, 0, 0, 0, '', 'Phase 170 if quest complete 51443'),
(26, 171, 8618, 0, 2, 8, 0, 51443, 0, 0, 0, 0, 0, '', 'Phase 170 if quest rewarded 51443'),
(26, 171, 8618, 0, 2, 8, 0, 50769, 0, 0, 1, 0, 0, '', 'Phase 170 if not quest rewarded 50769'),
(26, 171, 8618, 0, 2, 48, 0, 333785, 0, 0, 1, 0, 0, '', 'Phase 170 if not quest objetive 333785');


DELETE FROM `phase_area` WHERE `AreaId`=1637;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(1637, 169, 'Orgrimmar Default Phase'),
(1637, 172, 'Orgrimmar Q-50769  Q-46930');

update `creature` set `phaseid` = 172 where `id` = 135211; 
update `creature` set `phaseid` = 172 where `guid` in (996963,996934,996951,996942,996930,996932,996961); 


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=172 AND `SourceEntry`=1637 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 172, 1637, 0, 0, 9, 0, 50769, 0, 0, 0, 0, 0, '',   'phase only if has quest 50769'),
(26, 172, 1637, 0, 0, 8, 0, 50769, 0, 0, 1, 0, 0, '',   'phase only if not quest rewarded 50769'),
(26, 172, 1637, 0, 0, 48, 0, 335889, 0, 0, 1, 0, 0, '', 'phase only if not  quest objetive 335889'),
(26, 172, 1637, 0, 0, 48, 0, 333785, 0, 0, 0, 0, 0, '', 'phase only if quest objetive 333785');





DELETE FROM `phase_area` WHERE `AreaId`=8665;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(8665, 169, 'Port of Zandalar Default Phase'),
(8665, 170, 'Port of Zandalar Q-46957'),
(8665, 171, 'Port of Zandalar QE-50769 QR-46957');


update `creature` set `phaseid` = 170 where `guid` = 965214;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=8665;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 170, 8665, 0, 0, 28, 0, 50769, 0, 0, 0, 0, 0, '', 'Phase 170 if Quest complete 50769'),
(26, 170, 8665, 0, 1, 8, 0, 50769, 0, 0, 0, 0, 0, '', 'Phase 170 if Quest rewarded 50769'),
(26, 170, 8665, 0, 1, 9, 0, 46957, 0, 0, 1, 0, 0, '', 'Phase 170 if not Quest has 46957'),
(26, 170, 8665, 0, 1, 28, 0, 46957, 0, 0, 1, 0, 0, '', 'Phase 170 if not quest complete 46957'),
(26, 170, 8665, 0, 1, 8, 0, 46957, 0, 0, 1, 0, 0, '', 'Phase 170 if not Quest rewarded 46957');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=171 AND `SourceEntry`=8665;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 171, 8665, 0, 0, 8, 0, 46957, 0, 0, 1, 0, 0, '', 'Phase 171 if not Quest rewarded 46957'),
(26, 171, 8665, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', 'Phase 171 if player horde');

/*
update `creature` set `phaseid` = 171 where `guid` in ( 
210401244,210401227,210401241,210401235,210401240,210401243,210401251,210401247,210401256,210401259,210401258,210401250,210401252,210401255,210401264,210401270,210401189,210401190,210401253,210401257,210401248,210401254,210401242,210401239,210401236,210401238,210401233,
210401217,210401194,210401233,210401212,210401218,210401223,210401222,210401221,210401209,210401213,210401220,210401219,210401208,210401206,210401203,210401201,210401205,210401207,210401200,210401202,210401204,210401184,210401181,210401196,210401186,210401192,210401195,
210401199,210401191,210401183);
*/


update `creature` set `phaseid` = 172 where `guid` = 965280;

DELETE FROM `phase_area` WHERE `AreaId`=8666;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(8666, 169, 'Grand Bazaar Default Phase'),
(8666, 172, 'Grand Bazaar Q-46957 QE-46957'),
(8666, 173, 'Port of Zandalar QE-50769 QR-46957');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=172 AND `SourceEntry`=8666;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 172, 8666, 0, 0, 48, 0, 296686, 0, 0, 0, 0, 0, '', 'Phase 172 if Quest objetive 296686'),
(26, 172, 8666, 0, 1, 8, 0, 46957, 0, 0, 0, 0, 0, '', 'Phase 172 if Quest rewarded 46957'),
(26, 172, 8666, 0, 1, 48, 0, 289869, 0, 0, 1, 0, 0, '', 'Phase 172 if not Quest objetive 289869');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=173 AND `SourceEntry`=8666;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 173, 8666, 0, 0, 8, 0, 46957, 0, 0, 1, 0, 0, '', 'Phase 173 if not Quest rewarded 46957'),
(26, 173, 8666, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', 'Phase 173 if player horde');


DELETE FROM `phase_area` WHERE `AreaId`=8670;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(8670, 169, 'Dazar_alor Default Phase'),
(8670, 174, 'Dazar_alor QH-46930'),
(8670, 175, 'Dazar_alor QC-46930 / notQE 46931'),
(8670, 176, 'Dazar_alor Q-46931 Zolani'),
(8670, 178, 'Dazar_alor QH-46930');

update `creature` set `phaseid` = 174 where `guid` in (965532,967164);
update `creature` set `phaseid` = 175 where `guid` in (965534);
update `creature` set `phaseid` = 176 where `guid` in (1057162);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=174 AND `SourceEntry`=8670;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 174, 8670, 0, 0, 9, 0, 46930, 0, 0, 0, 0, 0, '', 'Phase 174 if - has quest 46930'),
(26, 174, 8670, 0, 0, 48, 0, 290542, 0, 0, 1, 0, 0, '', 'Phase 174 if - quest qbjective 290542');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=175 AND `SourceEntry`=8670;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 175, 8670, 0, 0, 28, 0, 46930, 0, 0, 0, 0, 0, '', 'Phase 175 if - quest 46930 complete'),

(26, 175, 8670, 0, 1, 8, 0, 46930, 0, 0, 0, 0, 0, '', 'Phase 175 if - quest 46930 rewarded'),
(26, 175, 8670, 0, 1, 8, 0, 46931, 0, 0, 1, 0, 0, '', 'Phase 175 if - not quest 46931 rewarded');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=176 AND `SourceEntry`=8670;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 176, 8670, 0, 0, 9, 0, 46931, 0, 0, 0, 0, 0, '', 'Phase 176 if - has quest 46931'),
(26, 176, 8670, 0, 0, 48, 0, 10000006, 0, 0, 1, 0, 0, '', 'Phase 176 if - not qobjetive 10000006');



DELETE FROM `phase_area` WHERE `AreaId`=9598;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(9598, 169, 'Dazar_alor Default Phase'),
(9598, 177, 'Dazar_alor QH-46930'),
(9598, 178, 'Dazar_alor QH-46930');

update `creature` set `phaseid` = 177 where `guid` in (965537);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=177 AND `SourceEntry`=9598;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 177, 9598, 0, 0, 9, 0, 46931, 0, 0, 0, 0, 0, '', 'Phase 177 if - has quest 46931'),
(26, 177, 9598, 0, 0, 48, 0, 10000006, 0, 0, 0, 0, 0, '', 'Phase 177 if - qobjetive 10000006'),
(26, 177, 9598, 0, 0, 48, 0, 10000004, 0, 0, 1, 0, 0, '', 'Phase 177 if - not qobjetive 10000004');

update `creature` set `phaseid` = 178 where `guid` in (965535);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=178 AND `SourceEntry`=9598;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 178, 9598, 0, 0, 9, 0, 46931, 0, 0, 0, 0, 0, '', 'Phase 178 if - has quest 46931'),
(26, 178, 9598, 0, 0, 48, 0, 10000005, 0, 0, 0, 0, 0, '', 'Phase 178 if - qobjetive 10000005'),
(26, 178, 9598, 0, 0, 48, 0, 291969, 0, 0, 1, 0, 0, '', 'Phase 178 if -not qobjetive 291969');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=178 AND `SourceEntry`=8670;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 178, 8670, 0, 0, 9, 0, 46931, 0, 0, 0, 0, 0, '', 'Phase 178 if - has quest 46931'),
(26, 178, 8670, 0, 0, 48, 0, 10000005, 0, 0, 0, 0, 0, '', 'Phase 178 if - qobjetive 10000005'),
(26, 178, 8670, 0, 0, 48, 0, 291969, 0, 0, 1, 0, 0, '', 'Phase 178 if -not qobjetive 291969');


-- 8670



--  
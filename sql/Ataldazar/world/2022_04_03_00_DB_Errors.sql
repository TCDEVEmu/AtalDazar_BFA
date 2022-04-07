/*Table `creature` has creature with unsupported datas*/
UPDATE `creature` SET `spawndist`= 0 WHERE `guid` IN (933356,997978,997977);
UPDATE `creature` SET `MovementType`= 0 WHERE `guid` IN (974580,1055583,1055584,522767,522775,522778);
UPDATE `creature` SET `PhaseId`= 0 WHERE `guid` IN (610000001,997973);
UPDATE `creature` SET `orientation`= 3.14159 WHERE `guid` IN (523956,523979,524071);

UPDATE `creature_template` SET `flags_extra`= 0 WHERE `entry` IN (67950,62352);

UPDATE `creature` SET `spawnDifficulties`= 12 WHERE `guid` IN (442364,442365);
UPDATE `creature` SET `spawnDifficulties`= 1 WHERE `guid` IN (518966,518967,518968,518969,518970);

/*Table `gameobject` has gameobject with unsupported datas*/
UPDATE `gameobject` SET `spawnDifficulties`= '1' WHERE `guid` IN (303236,303237,303238,303239,303240,303241,303242,303243,303244,303245,303246,303247,303248,303249,303255,
303256,303257,303258,303259,303260,303261,303262,303263,303264,303265,303266,303267,303268,303269,303270,304478);
UPDATE `gameobject` SET `spawnDifficulties`= '1,2' WHERE `guid` IN (304471,304584,304472,304475,304573,304477,304569,304578,304572,304575,
304574,304577,304581,304587,304589,304590,304591);
UPDATE `gameobject` SET `spawnDifficulties`= '2' WHERE `guid` IN (304588);
UPDATE `gameobject` SET `spawnDifficulties`= '3,4' WHERE `guid` IN (304592,304593,304594,304595);
UPDATE `gameobject` SET `spawnDifficulties`= '3,4,5,6' WHERE `guid` IN (305090,305091,305092,305093,305094,304579);

/*Table `creature_queststarter` and `creature_questender` has data for nonexistent creature entry*/
DELETE FROM `creature_questender` WHERE `id` IN (2000003);
DELETE FROM `creature_queststarter` WHERE `id` IN (2000003);

/*Table `creature_questender` has creature entry for quest but npcflag does not include UNIT_NPC_FLAG_QUESTGIVER*/
UPDATE `creature_template` SET `npcflag`= 82 WHERE entry IN (1317,4573,12032);



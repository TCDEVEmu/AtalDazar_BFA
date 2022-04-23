UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` IN (132271, 137513, 132258);
UPDATE `areatrigger_template` SET `ScriptName` = 'at_mogulrazdunk_gatling_gun' WHERE `Id` = 17012;
UPDATE `creature_template` SET `ScriptName` = 'bfa_npc_homing_missile' WHERE `entry` = 132338;
UPDATE `creature_template` SET `ScriptName` = 'bfa_npc_venture_skyscorcher' WHERE `entry` = 133436;
UPDATE `creature_template` SET `ScriptName` = 'bfa_boss_mogul_razdunk' WHERE `entry` = 129232;

DELETE FROM `creature` WHERE `id` IN (132056, 132338);
DELETE FROM `spell_script_names` WHERE `spell_id` = 260280;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (260280, 'bfa_spell_gatling_gun');

DELETE FROM `creature_text` WHERE `CreatureID` = 129232;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(129232, 0, 0, 'Do you bums realize how much property damage you\'ve done!?', 14, 0, 100, 0, 0, 97410, 0, 0, 'Mogul Razdunk to Player'),
(129232, 1, 0, 'Right where you belong--under my heel!', 14, 0, 100, 0, 0, 97413, 0, 0, 'Mogul Razdunk'),
(129232, 2, 0, 'Taste some high-caliber carnage!', 14, 0, 100, 0, 0, 97405, 0, 0, 'Mogul Razdunk'),
(129232, 3, 0, 'Get a load of 300 rounds per minute!', 14, 0, 100, 0, 0, 97404, 0, 0, 'Mogul Razdunk'),
(129232, 4, 0, 'What am I payin\' you fools for?! Get out here and fix this!', 14, 0, 100, 0, 0, 97409, 0, 0, 'Mogul Razdunk to Mogul Razdunk'),
(129232, 5, 0, 'Pulverize!', 14, 0, 100, 0, 0, 97415, 0, 0, 'Mogul Razdunk to Drill Smash Target Stalker'),
(129232, 6, 0, '|TINTERFACE\\ICONS\\ABILITY_SIEGE_ENGINEER_SOCKWAVE_MISSILE.BLP:20|t You have been targeted by |cFFFF0000|Hspell:260838|h[Drill Smash]|h|r!', 42, 0, 100, 0, 0, 97406, 0, 0, 'Mogul Razdunk to Player'),
(129232, 7, 0, 'Doh! My insurance premiums!', 14, 0, 100, 0, 0, 97406, 0, 0, 'Mogul Razdunk to Mogul Razdunk'),
(129232, 8, 0, 'Crush!', 14, 0, 100, 0, 0, 97417, 0, 0, 'Mogul Razdunk to Drill Smash Target Stalker'),
(129232, 9, 0, 'Smash!', 14, 0, 100, 0, 0, 97416, 0, 0, 'Mogul Razdunk to Drill Smash Target Stalker'),
(129232, 10, 0, 'You\'ll pay for that!', 14, 0, 100, 0, 0, 97407, 0, 0, 'Mogul Razdunk to Mogul Razdunk');
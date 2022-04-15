DELETE FROM `creature` WHERE `id` IN (129802/*Earthrager*/, 129883/*Fracking Totem Summoned*/, 129804/*Fracking Totem Clickee*/);

UPDATE `creature_template` SET `ScriptName` = 'bfa_boss_azerokk', `unit_flags` = 32832 WHERE `entry` = 129227;
UPDATE `creature_template` SET `ScriptName` = 'bfa_npc_earthrager', `speed_walk` = 1.799999952316284179, `speed_run` = 0.642857134342193603 WHERE `entry` = 129802;
UPDATE `creature_template` SET `ScriptName` = 'bfa_npc_fracking_totem' WHERE `entry` = 136500;
UPDATE `creature_template` SET `ScriptName` = 'bfa_npc_fracking_totem_selector' WHERE `entry` = 129804;
UPDATE `creature_template` SET `faction` = 35, `npcflag` = 16777216, `unit_flags2` = 2048 WHERE `entry` = 129804; -- old 14, 0, 0

DELETE FROM `spell_script_names` WHERE `spell_id` IN (257480, 258622);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(257480, 'bfa_spell_fracking_totem_summon'),
(258622, 'bfa_spell_resonant_pulse');

DELETE FROM `creature_text` WHERE `CreatureID`=129227;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(129227, 0, 0, 'You trespass in my domain!', 14, 0, 100, 0, 0, 97428, 143106, 0, ''),
(129227, 1, 0, '|TINTERFACE\\ICONS\\SPELL_SHAMAN_EARTHQUAKE.BLP:20|t Azerokk prepares to cast |cFFFF0000|Hspell:258622|h[Resonant Pulse]|h|r!', 41, 0, 100, 0, 0, 0, 154960, 0, ''),
(129227, 2, 0, 'Shatter!', 14, 0, 100, 0, 0, 97425, 143135, 0, ''),
(129227, 3, 0, 'The blood of Azeroth flows through you!', 14, 0, 100, 0, 0, 97424, 143134, 0, ''),
(129227, 4, 0, 'The ground will consume you!', 14, 0, 100, 0, 0, 97426, 143137, 0, ''),
(129227, 5, 0, 'Unleash your power!', 14, 0, 100, 0, 0, 97423, 143132, 0, ''),
(129227, 6, 0, 'Arise!', 14, 0, 100, 0, 0, 97427, 143129, 0, ''),
(129227, 7, 0, 'The wounds... must be mended...', 12, 0, 100, 0, 0, 97429, 143108, 0, '');




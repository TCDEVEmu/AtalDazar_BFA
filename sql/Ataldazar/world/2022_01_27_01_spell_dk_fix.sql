/*Here all spell clace DK fixes will be added*/

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dk_ghoul_claw';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(47468, 'spell_dk_ghoul_claw');
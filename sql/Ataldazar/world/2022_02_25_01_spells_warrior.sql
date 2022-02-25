DELETE FROM `spell_proc` WHERE `SpellId` = 202225;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (23881, 85288, 100, 215571, 280721, 280772);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(100, 'spell_warr_charge'),
(23881, 'spell_warr_bloodthirst'),
(85288, 'spell_warr_raging_blow'),
(215571, 'spell_frothing_berserker'),
(280772, 'spell_warr_siegebreaker');


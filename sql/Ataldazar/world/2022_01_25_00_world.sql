-- correct typo in script name
UPDATE `spell_script_names` SET `ScriptName`="spell_item_nitro_boosts" WHERE `ScriptName`="spell_item_nitro_boots";

--
DELETE FROM `spell_script_names` WHERE `scriptname`='spell_item_nitro_boosts_backfire';
INSERT INTO `spell_script_names` (`spell_id`,`scriptname`) VALUES (54621,'spell_item_nitro_boosts_backfire');
-- DH
DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_dh_fel_rush_damage',
'spell_dh_demon_spikes',
'spell_dh_annihilation',
'spell_dh_felblade');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (223107, 'spell_dh_fel_rush_damage');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (203720, 'spell_dh_demon_spikes');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (201427, 'spell_dh_annihilation');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (232893, 'spell_dh_felblade');

update `areatrigger_template` set `ScriptName`= 'at_shattered_soul_fragment' where `Id`= 10665;

-- DK
update `creature_template` set `ScriptName`= 'npc_dk_dancing_rune_weapon' where `entry`= 27893;
update `creature_template` set `ScriptName`= 'npc_dk_defile' where `entry`= 82521;

DELETE FROM `spell_script_names` WHERE `ScriptName` in (
'spell_dk_death_strike_heal',
'spell_dk_item_t17_frost_4p_driver_periodic',
'spell_dk_item_t17_frost_4p_driver',
'spell_dk_tombstone',
'spell_dk_crimsom_scourge',
'spell_dk_clawing_shadows',
'spell_dk_defile_aura',
'spell_dk_frost_strike',
'aura_grip_of_the_dead',
'aura_inexorable_assault',
'spell_dk_frostscythe',
'spell_dk_festering_wound_damage',
'spell_dk_unholy_frenzy');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (45470, 'spell_dk_death_strike_heal');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (170205, 'spell_dk_item_t17_frost_4p_driver_periodic');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (167655, 'spell_dk_item_t17_frost_4p_driver');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (219809, 'spell_dk_tombstone');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (81136, 'spell_dk_crimsom_scourge');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (207311, 'spell_dk_clawing_shadows');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (156004, 'spell_dk_defile_aura');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (49143, 'spell_dk_frost_strike');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (273980, 'aura_grip_of_the_dead');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (253593, 'aura_inexorable_assault');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (207230, 'spell_dk_frostscythe');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (194311, 'spell_dk_festering_wound_damage');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (207289, 'spell_dk_unholy_frenzy');


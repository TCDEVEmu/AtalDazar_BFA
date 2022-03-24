-- Core*/Work Pandaria/Bosses and Other Implementations
DELETE FROM `spell_script_names` WHERE `spell_id` IN (136350,136349,136353,121673,138390,138859,119626,129356);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(136350, 'spell_nalak_lightning_tether_eff'),
(136349, 'spell_nalak_lightning_teather_hit_eff'),
(136353, 'spell_nalak_lightning_teather_hit_eff'),
(121673, 'spell_galleon_fire_shot'),
(138390, 'spell_alpha_male_eff'),
(138859, 'spell_kill_dohaman'),
(119626, 'spell_sha_of_anger_aggressive_behaviour'),
(129356, 'spell_sha_of_anger_overcome_by_anger');


UPDATE `creature_template` SET `ScriptName`= 'boss_galion' WHERE `entry`= 62346;
UPDATE `creature_template` SET `ScriptName`= 'npc_salyin_skrimisher' WHERE `entry`= 62350;
UPDATE `creature_template` SET `ScriptName`= 'npc_salyin_warmonger' WHERE `entry`= 62351;
UPDATE `creature_template` SET `ScriptName`= 'boss_nalak' WHERE `entry`= 69099;
UPDATE `creature_template` SET `ScriptName`= 'boss_oondasta' WHERE `entry`= 69161;
UPDATE `creature_template` SET `ScriptName`= 'boss_sha_of_anger' WHERE `entry`= 60491;
UPDATE `creature_template` SET `ScriptName`= 'npc_sha_of_anger_bunny' WHERE `entry`= 35114;


DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=119393 AND `spell_effect`=-119388 AND `type`=0;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (119393, -119388, 0, 'Bulwark - trigger Bombardment Effect');

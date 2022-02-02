/*Sql_Script by MikeFernandz(◄◄⚔ϨϾ∆₹₣∆ϾƩ⚔►►)*/
/*Instance MotherLode*/
/*Iniciate 29/12/2021 Hora/11:03PM*/

/*Scenario Entrance Dungeons*/
DELETE FROM `scenarios` WHERE `map` =1594 AND `difficulty` = 1;
INSERT INTO `scenarios` (`map`, `difficulty`, `scenario_A`, `scenario_H`) VALUES 
(1594, 1, 1448, 1448);

DELETE FROM `instance_encounters` WHERE `entry` =2105;
INSERT INTO `instance_encounters` (`entry`, `creditType`, `creditEntry`, `lastEncounterDungeon`, `comment`) VALUES 
(2105, 0, 129214, 0, 'Coin-Operated Crowd Pummeler');

/*Game_Tele The_Motherlode*/
DELETE FROM `game_tele` WHERE `id` = 1900;
INSERT INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES 
(1900, -2647.25, 2388.37, 10.0474, 0.008595, 1642, 'motherlode');

/*Boss_Coin_operated_crowd_pummeler*/

DELETE FROM `creature_template` WHERE `entry` = 129246;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(129246, 0, 0, 0, 0, 0, 'Azerite Footbomb', '', NULL, NULL, 'Interact', 0, 1, 1, 7, 0, 0, 2203, 16777216, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 520, 0, 0, 0, 0, 0, 0, 0, 11, 1611924480, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 'bfa_npc_azerite_bomb_AI', 28153);

UPDATE `creature_template` SET `ScriptName` = 'boss_Coin_operated_crowd_pummeler' WHERE `entry` = 129214;

DELETE FROM `spell_script_names` WHERE `spell_id` = 256163;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (256163, 'bfa_spell_blazing_azerite');
DELETE FROM `spell_script_names` WHERE `spell_id` = 271903;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (271903, 'bfa_spell_coin_magnet');
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 129246;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES (129246, 255996, 0);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (269493, 'bfa_spell_footbomb_launcher');


/*Boss_Azerokk*/
UPDATE `creature_template` SET `ScriptName` = 'boss_azerokk' WHERE `entry` = 129227;
UPDATE `creature_template` SET `ScriptName` = 'bfa_npc_earthrager_AI' WHERE `entry` = 129802;
UPDATE `creature_template` SET `ScriptName` = 'bfa_npc_fracking_totem_AI' WHERE `entry` = 136500;
UPDATE `creature_template` SET `ScriptName` = 'bfa_npc_fracking_totem_selector' WHERE `entry` = 129804;
DELETE FROM `spell_script_names` WHERE `spell_id` = 257480;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (257480, 'bfa_spell_fracking_totem_summon')


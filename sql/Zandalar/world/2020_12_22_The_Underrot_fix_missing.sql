DELETE FROM `conversation_actors` WHERE (`ConversationId`=9670 AND `ConversationActorId`=0 AND `Idx`=1) OR (`ConversationId`=9672 AND `ConversationActorId`=0 AND `Idx`=1) OR (`ConversationId`=9671 AND `ConversationActorId`=0 AND `Idx`=1) OR (`ConversationId`=9674 AND `ConversationActorId`=0 AND `Idx`=1);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `VerifiedBuild`) VALUES
(9670, 120649, 1, 31478),
(9672, 120649, 1, 31478),
(9671, 120649, 1, 31478),
(9674, 120649, 1, 31478);

DELETE FROM `conversation_actor_template` WHERE `Id`=120649;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(120649, 120649, 75898, 31478);

DELETE FROM `conversation_line_template` WHERE `Id` IN (22106, 22105, 22114, 22113, 22111, 22110, 22121, 22120);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(22106, 5808, 1243, 1, 0, 31478),
(22105, 0, 1243, 1, 0, 31478),
(22114, 4754, 1243, 1, 0, 31478),
(22113, 0, 1243, 1, 0, 31478),
(22111, 4591, 1243, 1, 0, 31478),
(22110, 0, 1243, 1, 0, 31478),
(22121, 6001, 1243, 1, 0, 31478),
(22120, 0, 1243, 1, 0, 31478);


DELETE FROM `conversation_template` WHERE `Id` IN (9674, 9672, 9671, 9670);
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `TextureKitId`, `VerifiedBuild`) VALUES
(9674, 22120, 14001, 0, 31478),
(9672, 22113, 12754, 0, 31478),
(9671, 22110, 12591, 0, 31478),
(9670, 22105, 13808, 0, 31478);

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_Taint_Of_Ghunn';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('260685', 'spell_Taint_Of_Ghunn');

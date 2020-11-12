/*YAZMA INTRO ENTER TO DUNGEONS*/

DELETE FROM `conversation_actors` WHERE (`ConversationId`=6322 AND `ConversationActorId`=122968 AND `Idx`=0) OR (`ConversationId`=6320 AND `ConversationActorId`=122968 AND `Idx`=0);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `VerifiedBuild`) VALUES
(6322, 122968, 0, 31478),
(6320, 122968, 0, 31478);


DELETE FROM `conversation_actor_template` WHERE `Id`=122968;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(122968, 122968, 79568, 31478);


DELETE FROM `conversation_line_template` WHERE `Id` IN (14209, 14207, 14206);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(14209, 0, 815, 0, 0, 31478),
(14207, 7571, 815, 0, 0, 31478),
(14206, 0, 815, 0, 0, 31478);


DELETE FROM `conversation_template` WHERE `Id` IN (6322, 6320);
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `TextureKitId`, `VerifiedBuild`) VALUES
(6322, 14209, 8692, 0, 31478),
(6320, 14206, 15571, 0, 31478);
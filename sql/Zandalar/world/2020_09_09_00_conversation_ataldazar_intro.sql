/*YAZMA INTRO ENTER TO DUNGEONS*/


DELETE FROM `conversation_actors` WHERE (`ConversationId`=6321 AND `ConversationActorId`=122968 AND `Idx`=0) OR (`ConversationId`=6324 AND `ConversationActorId`=122968 AND `Idx`=0) OR (`ConversationId`=6322 AND `ConversationActorId`=122968 AND `Idx`=0) OR (`ConversationId`=7947 AND `ConversationActorId`=117694 AND `Idx`=0) OR (`ConversationId`=7947 AND `ConversationActorId`=122968 AND `Idx`=1) OR (`ConversationId`=6323 AND `ConversationActorId`=122968 AND `Idx`=0);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `VerifiedBuild`) VALUES
(6321, 122968, 0, 28153),
(6324, 122968, 0, 28153),
(6322, 122968, 0, 28153),
(7947, 117694, 0, 28153),
(7947, 122968, 1, 28153),
(6323, 122968, 0, 28153);


DELETE FROM `conversation_actor_template` WHERE `Id` IN (122968, 117694);
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(122968, 122968, 79568, 28153),
(117694, 117694, 26353, 28153);


DELETE FROM `conversation_line_template` WHERE `Id` IN (14208, 14211, 14209, 18114, 18104, 18831, 18113, 18112, 14210);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(14208, 0, 815, 0, 0, 28153),
(14211, 0, 815, 0, 0, 28153),
(14209, 0, 815, 0, 0, 28153),
(18114, 30517, 90, 0, 0, 28153),
(18104, 20612, 815, 1, 0, 28153),
(18831, 13041, 815, 1, 0, 28153),
(18113, 7721, 90, 0, 0, 28153),
(18112, 0, 90, 0, 0, 28153),
(14210, 0, 815, 0, 0, 28153);


DELETE FROM `conversation_template` WHERE `Id` IN (6324, 6323, 6321, 6322, 7947);
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `TextureKitId`, `VerifiedBuild`) VALUES
(6324, 14211, 9442, 0, 28153),
(6323, 14210, 9925, 0, 28153),
(6321, 14208, 15631, 0, 28153),
(6322, 14209, 8692, 0, 28153),
(7947, 18112, 34699, 0, 28153);
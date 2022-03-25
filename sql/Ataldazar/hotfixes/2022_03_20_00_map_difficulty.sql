/*Table `creature` has creature has unsupported difficulty for map.*/
DELETE FROM `map_difficulty` WHERE `ID`IN (3518,741,1579,1861,1862,4096,4097,4098,4171); 
INSERT INTO `map_difficulty`(`ID`, `Message`, `DifficultyID`, `LockID`, `ResetInterval`, `MaxPlayers`, `ItemContext`, `ItemContextPickerID`, `Flags`, `ContentTuningID`, `MapID`, `VerifiedBuild`) VALUES 
(3518, '', 25, 0, 0, 30, 0, 0, 0, 0, 1191, 34963),
(741, 'Para entrar, debes tener al menos nivel 85.', 3, 0, 2, 10, 0, 0, 0, 0, 720, 34963),
(1579, 'Para entrar, debes tener al menos nivel 85.', 4, 0, 2, 25, 0, 0, 0, 0, 720, 34963),
(1861, 'Tienes que haber completado el logro de las Tierras de Fuego para poder intentar la dificultad heroica.', 5, 0, 2, 10, 0, 0, 0, 0, 720, 34963),
(1862, 'Tienes que haber completado el logro de las Tierras de Fuego para poder intentar la dificultad heroica.', 6, 0, 2, 25, 0, 0, 0, 0, 720, 34963),
(4096, '', 38, 0, 0, 3, 0, 0, 0, 0, 1882, 34963),
(4097, '', 39, 0, 0, 3, 0, 0, 0, 0, 1882, 34963),
(4098, '', 40, 0, 0, 3, 0, 0, 0, 0, 1882, 34963),
(4171, '', 45, 0, 0, 6, 0, 0, 0, 0, 1882, 34963);

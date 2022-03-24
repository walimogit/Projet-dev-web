-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : jeu. 24 mars 2022 à 08:17
-- Version du serveur : 10.3.34-MariaDB-1:10.3.34+maria~focal
-- Version de PHP : 8.0.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bddprojetweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `Belong`
--

CREATE TABLE `Belong` (
  `ID_people` int(11) NOT NULL,
  `ID_class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Belong`
--

INSERT INTO `Belong` (`ID_people`, `ID_class`) VALUES
(1, 10),
(2, 16),
(3, 2),
(4, 10),
(6, 6),
(8, 14),
(9, 2),
(10, 4),
(11, 16),
(13, 3),
(14, 6),
(16, 6),
(17, 12),
(18, 15),
(21, 10),
(22, 6),
(23, 15),
(25, 9),
(26, 5),
(27, 5),
(28, 9),
(29, 2),
(33, 17),
(34, 2),
(35, 5),
(37, 7),
(38, 3),
(40, 4),
(41, 9),
(42, 12),
(43, 16),
(44, 9),
(45, 4),
(46, 17),
(47, 8),
(48, 16),
(52, 2),
(54, 16),
(56, 9),
(57, 17),
(59, 4),
(60, 9),
(61, 1),
(62, 1),
(63, 13),
(64, 15),
(65, 7),
(67, 15),
(68, 14),
(69, 1),
(70, 16),
(71, 14),
(72, 6),
(74, 5),
(77, 15),
(78, 13),
(79, 7),
(82, 1),
(83, 8),
(84, 16),
(85, 16),
(86, 1),
(87, 6),
(93, 13),
(96, 6),
(97, 16),
(99, 9),
(101, 14),
(102, 12),
(104, 3),
(105, 14),
(106, 15),
(107, 10),
(110, 14),
(111, 4),
(112, 3),
(113, 5),
(115, 15),
(116, 3),
(117, 9),
(118, 7),
(120, 4),
(121, 9),
(123, 4),
(125, 8),
(126, 7),
(127, 14),
(128, 7),
(129, 1),
(132, 15),
(133, 12),
(134, 10),
(137, 2),
(140, 4),
(141, 17),
(142, 3),
(145, 7),
(147, 7),
(148, 6),
(149, 7),
(150, 11),
(151, 13),
(153, 16),
(156, 13),
(159, 5),
(160, 17),
(161, 3),
(162, 13),
(163, 3),
(164, 4),
(165, 13),
(166, 4),
(169, 14),
(173, 17),
(175, 7),
(177, 11),
(179, 7),
(180, 10),
(181, 5),
(182, 17),
(185, 3),
(186, 15),
(187, 5),
(189, 7),
(190, 8),
(191, 4),
(195, 17),
(196, 2),
(197, 13),
(201, 2),
(202, 11),
(203, 13),
(205, 2),
(206, 13),
(207, 14),
(209, 5),
(211, 1),
(212, 10),
(214, 6),
(217, 10),
(218, 4),
(219, 1),
(220, 12),
(222, 4),
(223, 11),
(224, 16),
(225, 16),
(226, 4),
(227, 12),
(228, 1),
(229, 9),
(230, 14),
(231, 4),
(232, 11),
(233, 14),
(236, 11),
(238, 13),
(240, 1),
(242, 1),
(243, 4),
(244, 13),
(245, 3),
(246, 10),
(248, 8),
(250, 5),
(252, 4),
(253, 7),
(254, 16),
(255, 6),
(256, 13),
(257, 4),
(258, 7),
(259, 4),
(260, 6),
(261, 5),
(262, 7),
(264, 3),
(265, 13),
(266, 12),
(269, 11),
(270, 12),
(272, 16),
(273, 16),
(274, 11),
(276, 9),
(278, 10),
(279, 16),
(280, 10);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Belong`
--
ALTER TABLE `Belong`
  ADD PRIMARY KEY (`ID_people`,`ID_class`),
  ADD KEY `Belong_Class0_FK` (`ID_class`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Belong`
--
ALTER TABLE `Belong`
  ADD CONSTRAINT `Belong_Class0_FK` FOREIGN KEY (`ID_class`) REFERENCES `Class` (`ID_class`),
  ADD CONSTRAINT `Belong_People_FK` FOREIGN KEY (`ID_people`) REFERENCES `People` (`ID_people`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

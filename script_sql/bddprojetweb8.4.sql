-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : lun. 28 mars 2022 à 08:07
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
-- Structure de la table `Being_in`
--

CREATE TABLE `Being_in` (
  `ID_sector` int(11) NOT NULL,
  `ID_enterprise` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Being_in`
--

INSERT INTO `Being_in` (`ID_sector`, `ID_enterprise`) VALUES
(1, 14),
(2, 10),
(3, 12),
(3, 13),
(4, 2),
(5, 11),
(6, 3),
(6, 4),
(6, 5),
(7, 1),
(8, 8),
(8, 15),
(9, 6),
(9, 7),
(10, 9);

-- --------------------------------------------------------

--
-- Structure de la table `Being_located`
--

CREATE TABLE `Being_located` (
  `ID_City` int(11) NOT NULL,
  `ID_enterprise` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Being_located`
--

INSERT INTO `Being_located` (`ID_City`, `ID_enterprise`) VALUES
(39, 8),
(41, 10),
(67, 13),
(75, 6),
(81, 14),
(83, 1),
(106, 7),
(108, 3),
(142, 2),
(176, 5),
(178, 4),
(212, 9),
(230, 15),
(236, 12);

-- --------------------------------------------------------

--
-- Structure de la table `Being_proposed`
--

CREATE TABLE `Being_proposed` (
  `ID_people` int(11) NOT NULL,
  `ID_internship_offers` int(11) NOT NULL,
  `Advancement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Being_proposed`
--

INSERT INTO `Being_proposed` (`ID_people`, `ID_internship_offers`, `Advancement`) VALUES
(47, 1, 5),
(56, 7, 4),
(61, 20, 6),
(78, 22, 1),
(142, 4, 4),
(142, 8, 1),
(154, 21, 6),
(158, 15, 1),
(169, 11, 1),
(180, 17, 2),
(187, 13, 2),
(190, 6, 2),
(196, 3, 6),
(208, 16, 3),
(210, 19, 6),
(217, 14, 4),
(218, 12, 3),
(233, 10, 2),
(236, 18, 1),
(243, 9, 4),
(278, 5, 1),
(280, 2, 6);

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

-- --------------------------------------------------------

--
-- Structure de la table `Campus`
--

CREATE TABLE `Campus` (
  `ID_campus` int(11) NOT NULL,
  `Campus` text NOT NULL,
  `Booldel` tinyint(1) NOT NULL,
  `ID_City` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Campus`
--

INSERT INTO `Campus` (`ID_campus`, `Campus`, `Booldel`, `ID_City`) VALUES
(1, 'Aix-en-Provence', 1, 24),
(2, 'Angoulême', 1, 177),
(3, 'Arras', 1, 178),
(4, 'Bordeaux', 1, 9),
(5, 'Brest', 1, 25),
(6, 'Caen', 1, 40),
(7, 'Châteauroux', 1, 167),
(8, 'Dijon', 1, 17),
(9, 'Grenoble', 1, 16),
(10, 'La Rochelle', 1, 66),
(11, 'Le Mans', 1, 23),
(12, 'Lille', 1, 10),
(13, 'Lyon', 1, 3),
(14, 'Montpellier', 1, 7),
(15, 'Nancy', 1, 41),
(16, 'Nanterre', 1, 45),
(17, 'Nantes', 1, 6),
(18, 'Nice', 1, 5),
(19, 'Orléans', 1, 34),
(20, 'Pau', 1, 65),
(21, 'Reims', 1, 12),
(22, 'Rouen', 1, 36),
(23, 'Saint Nazaire', 1, 75),
(24, 'Strasbourg', 1, 8),
(25, 'Toulouse', 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `City`
--

CREATE TABLE `City` (
  `ID_City` int(11) NOT NULL,
  `City` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `City`
--

INSERT INTO `City` (`ID_City`, `City`) VALUES
(1, 'Paris'),
(2, 'Marseille'),
(3, 'Lyon'),
(4, 'Toulouse'),
(5, 'Nice'),
(6, 'Nantes'),
(7, 'Montpellier'),
(8, 'Strasbourg'),
(9, 'Bordeaux'),
(10, 'Lille'),
(11, 'Rennes'),
(12, 'Reims'),
(13, 'Toulon'),
(14, 'Saint-Étienne'),
(15, 'Le Havre'),
(16, 'Grenoble'),
(17, 'Dijon'),
(18, 'Angers'),
(19, 'Villeurbanne'),
(20, 'Saint-Denis'),
(21, 'Nîmes'),
(22, 'Clermont-Ferrand'),
(23, 'Le Mans'),
(24, 'Aix-en-Provence'),
(25, 'Brest'),
(26, 'Tours'),
(27, 'Amiens'),
(28, 'Limoges'),
(29, 'Annecy'),
(30, 'Boulogne-Billancourt'),
(31, 'Perpignan'),
(32, 'Besançon'),
(33, 'Metz'),
(34, 'Orléans'),
(35, 'Saint-Denis'),
(36, 'Rouen'),
(37, 'Argenteuil'),
(38, 'Montreuil'),
(39, 'Mulhouse'),
(40, 'Caen'),
(41, 'Nancy'),
(42, 'Saint-Paul'),
(43, 'Roubaix'),
(44, 'Tourcoing'),
(45, 'Nanterre'),
(46, 'Vitry-sur-Seine'),
(47, 'Nouméa'),
(48, 'Créteil'),
(49, 'Avignon'),
(50, 'Poitiers'),
(51, 'Aubervilliers'),
(52, 'Dunkerque'),
(53, 'Aulnay-sous-Bois'),
(54, 'Colombes'),
(55, 'Asnières-sur-Seine'),
(56, 'Versailles'),
(57, 'Saint-Pierre'),
(58, 'Courbevoie'),
(59, 'Le Tampon'),
(60, 'Cherbourg-en-Cotentin'),
(61, 'Fort-de-France'),
(62, 'Rueil-Malmaison'),
(63, 'Béziers'),
(64, 'Champigny-sur-Marne'),
(65, 'Pau'),
(66, 'La Rochelle'),
(67, 'Saint-Maur-des-Fossés'),
(68, 'Cannes'),
(69, 'Calais'),
(70, 'Antibes'),
(71, 'Drancy'),
(72, 'Mamoudzou'),
(73, 'Ajaccio'),
(74, 'Mérignac'),
(75, 'Saint-Nazaire'),
(76, 'Colmar'),
(77, 'Issy-les-Moulineaux'),
(78, 'Noisy-le-Grand'),
(79, 'Évry-CourcouronnesNote 4'),
(80, 'Vénissieux'),
(81, 'Cergy'),
(82, 'Levallois-Perret'),
(83, 'Valence'),
(84, 'Bourges'),
(85, 'Pessac'),
(86, 'Cayenne'),
(87, 'Ivry-sur-Seine'),
(88, 'Quimper'),
(89, 'La Seyne-sur-Mer'),
(90, 'Antony'),
(91, 'Villeneuve-d-Ascq'),
(92, 'Clichy'),
(93, 'Troyes'),
(94, 'Montauban'),
(95, 'Neuilly-sur-Seine'),
(96, 'Pantin'),
(97, 'Niort'),
(98, 'Chambéry'),
(99, 'Sarcelles'),
(100, 'Le Blanc-Mesnil'),
(101, 'Lorient'),
(102, 'Saint-André'),
(103, 'Beauvais'),
(104, 'Maisons-Alfort'),
(105, 'Meaux'),
(106, 'Narbonne'),
(107, 'Chelles'),
(108, 'Hyères'),
(109, 'Villejuif'),
(110, 'Épinay-sur-Seine'),
(111, 'La Roche-sur-Yon'),
(112, 'Bobigny'),
(113, 'Cholet'),
(114, 'Bondy'),
(115, 'Saint-Quentin'),
(116, 'Fréjus'),
(117, 'Saint-Louis'),
(118, 'Vannes'),
(119, 'Les Abymes'),
(120, 'Clamart'),
(121, 'Sartrouville'),
(122, 'Fontenay-sous-Bois'),
(123, 'Cagnes-sur-Mer'),
(124, 'Bayonne'),
(125, 'Sevran'),
(126, 'Arles'),
(127, 'Corbeil-Essonnes'),
(128, 'Vaulx-en-Velin'),
(129, 'Saint-Ouen-sur-Seine'),
(130, 'Massy'),
(131, 'Vincennes'),
(132, 'Laval'),
(133, 'Albi'),
(134, 'Grasse'),
(135, 'Suresnes'),
(136, 'Montrouge'),
(137, 'Martigues'),
(138, 'Bastia'),
(139, 'Gennevilliers'),
(140, 'Aubagne'),
(141, 'Belfort'),
(142, 'Évreux'),
(143, 'Brive-la-Gaillarde'),
(144, 'Carcassonne'),
(145, 'Saint-Priest'),
(146, 'Saint-Malo'),
(147, 'Charleville-Mézières'),
(148, 'Saint-Herblain'),
(149, 'Choisy-le-Roi'),
(150, 'Rosny-sous-Bois'),
(151, 'Blois'),
(152, 'Meudon'),
(153, 'Saint-Laurent-du-Maroni'),
(154, 'Salon-de-Provence'),
(155, 'Livry-Gargan'),
(156, 'Puteaux'),
(157, 'Chalon-sur-Saône'),
(158, 'Saint-Germain-en-Laye'),
(159, 'Les Sables-d-Olonne'),
(160, 'Alfortville'),
(161, 'Châlons-en-Champagne'),
(162, 'Mantes-la-Jolie'),
(163, 'Noisy-le-Sec'),
(164, 'Saint-Brieuc'),
(165, 'La Courneuve'),
(166, 'Sète'),
(167, 'Châteauroux'),
(168, 'Istres'),
(169, 'Valenciennes'),
(170, 'Garges-lès-Gonesse'),
(171, 'Caluire-et-Cuire'),
(172, 'Talence'),
(173, 'Tarbes'),
(174, 'Rezé'),
(175, 'Bron'),
(176, 'Castres'),
(177, 'Angoulême'),
(178, 'Arras'),
(179, 'Le Cannet'),
(180, 'Bourg-en-Bresse'),
(181, 'Wattrelos'),
(182, 'Bagneux'),
(183, 'Alès'),
(184, 'Boulogne-sur-Mer'),
(185, 'Le Lamentin'),
(186, 'Gap'),
(187, 'Compiègne'),
(188, 'Thionville'),
(189, 'Melun'),
(190, 'Douai'),
(191, 'Gagny'),
(192, 'Anglet'),
(193, 'Montélimar'),
(194, 'Draguignan'),
(195, 'Colomiers'),
(196, 'Stains'),
(197, 'Marcq-en-Barœul'),
(198, 'Chartres'),
(199, 'Saint-Martin-d-Hères'),
(200, 'Poissy'),
(201, 'Joué-lès-Tours'),
(202, 'Pontault-Combault'),
(203, 'Saint-Joseph'),
(204, 'Villepinte'),
(205, 'Saint-Benoît'),
(206, 'Châtillon'),
(207, 'Franconville'),
(208, 'Échirolles'),
(209, 'Savigny-sur-Orge'),
(210, 'Villefranche-sur-Saône'),
(211, 'Annemasse'),
(212, 'Tremblay-en-France'),
(213, 'Sainte-Geneviève-des-Bois'),
(214, 'Dumbéa'),
(215, 'Creil'),
(216, 'Neuilly-sur-Marne'),
(217, 'Conflans-Sainte-Honorine'),
(218, 'Saint-Raphaël'),
(219, 'Palaiseau'),
(220, 'Bagnolet'),
(221, 'La Ciotat'),
(222, 'Villenave-d-Ornon'),
(223, 'Thonon-les-Bains'),
(224, 'Athis-Mons'),
(225, 'Saint-Chamond'),
(226, 'Montluçon'),
(227, 'Haguenau'),
(228, 'Auxerre'),
(229, 'Villeneuve-Saint-Georges'),
(230, 'Saint-Leu'),
(231, 'Châtenay-Malabry'),
(232, 'Meyzieu'),
(233, 'Saint-Martin'),
(234, 'Roanne'),
(235, 'Mâcon'),
(236, 'Le Perreux-sur-Marne'),
(237, 'Six-Fours-les-Plages'),
(238, 'Le Port'),
(239, 'Nevers'),
(240, 'Sainte-Marie'),
(241, 'Romans-sur-Isère'),
(242, 'Vitrolles'),
(243, 'Schiltigheim'),
(244, 'Agen'),
(245, 'Les Mureaux'),
(246, 'Matoury'),
(247, 'Nogent-sur-Marne'),
(248, 'Marignane'),
(249, 'La Possession'),
(250, 'Montigny-le-Bretonneux'),
(251, 'Cambrai'),
(252, 'Houilles'),
(253, 'Épinal'),
(254, 'Koungou'),
(255, 'Trappes'),
(256, 'Châtellerault'),
(257, 'Lens'),
(258, 'Saint-Médard-en-Jalles'),
(259, 'Vigneux-sur-Seine'),
(260, 'Pontoise'),
(261, 'L-Haÿ-les-Roses'),
(262, 'Le Chesnay-Rocquencourt'),
(263, 'Baie-Mahault'),
(264, 'Plaisir'),
(265, 'Cachan'),
(266, 'Pierrefitte-sur-Seine'),
(267, 'Malakoff'),
(268, 'Viry-Châtillon'),
(269, 'Dreux'),
(270, 'Goussainville'),
(271, 'Bezons'),
(272, 'Liévin'),
(273, 'Rillieux-la-Pape'),
(274, 'Chatou'),
(275, 'Menton'),
(276, 'Herblay-sur-Seine'),
(277, 'Périgueux'),
(278, 'Charenton-le-Pont'),
(279, 'Saint-Cloud'),
(280, 'Vandœuvre-lès-Nancy'),
(281, 'Villemomble');

-- --------------------------------------------------------

--
-- Structure de la table `Class`
--

CREATE TABLE `Class` (
  `ID_class` int(11) NOT NULL,
  `Class` text NOT NULL,
  `Booldel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Class`
--

INSERT INTO `Class` (`ID_class`, `Class`, `Booldel`) VALUES
(1, 'A1', 1),
(2, 'A2 IT', 1),
(3, 'A2 Generalist', 1),
(4, 'A2 BPW', 1),
(5, 'A2 2ES', 1),
(6, 'A3 IT', 1),
(7, 'A3 Generalist', 1),
(8, 'A3 BPW', 1),
(9, 'A3 2ES', 1),
(10, 'A4 IT', 1),
(11, 'A4 Generalist', 1),
(12, 'A4 BPW', 1),
(13, 'A4 2ES', 1),
(14, 'A5 IT', 1),
(15, 'A5 Generalist', 1),
(16, 'A5 BPW', 1),
(17, 'A5 2ES', 1);

-- --------------------------------------------------------

--
-- Structure de la table `Enterprise`
--

CREATE TABLE `Enterprise` (
  `ID_enterprise` int(11) NOT NULL,
  `Name_enterprise` text NOT NULL,
  `Number_interns_accepted` text NOT NULL,
  `Booldel` tinyint(1) NOT NULL,
  `ID_people` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Enterprise`
--

INSERT INTO `Enterprise` (`ID_enterprise`, `Name_enterprise`, `Number_interns_accepted`, `Booldel`, `ID_people`) VALUES
(1, 'PWC', '3', 1, 234),
(2, 'Onet', '3', 1, 235),
(3, 'Auchan', '3', 1, 237),
(4, 'Carrefour', '2', 1, 239),
(5, 'Leclerc', '1', 1, 241),
(6, 'Boulanger', '2', 1, 247),
(7, 'Darty', '2', 1, 249),
(8, 'Cactus', '2', 1, 251),
(9, 'CGT', '1', 1, 263),
(10, 'BNP Paribas', '1', 1, 267),
(11, 'Alstom', '2', 1, 268),
(12, 'Citroën', '3', 1, 271),
(13, 'Peugeot', '2', 1, 275),
(14, 'Inter-Actif', '3', 1, 277),
(15, 'Noneo', '1', 1, 281);

-- --------------------------------------------------------

--
-- Structure de la table `Evaluation_interns`
--

CREATE TABLE `Evaluation_interns` (
  `ID_evaluation_interns` int(11) NOT NULL,
  `Evaluation_interns` text NOT NULL,
  `Booldel` tinyint(1) NOT NULL,
  `ID_enterprise` int(11) NOT NULL,
  `ID_people` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Evaluation_interns`
--

INSERT INTO `Evaluation_interns` (`ID_evaluation_interns`, `Evaluation_interns`, `Booldel`, `ID_enterprise`, `ID_people`) VALUES
(1, '1', 1, 1, 142),
(3, '16', 1, 3, 145),
(4, '5', 1, 5, 9),
(5, '9', 1, 5, 16),
(6, '17', 1, 15, 104),
(7, '9', 1, 7, 121),
(8, '19', 1, 8, 8),
(9, '20', 1, 15, 21),
(10, '20', 1, 9, 63),
(11, '3', 1, 1, 42),
(12, '10', 1, 15, 46),
(13, '15', 1, 11, 159),
(15, '20', 1, 6, 113),
(16, '18', 1, 8, 274),
(17, '4', 1, 8, 148),
(18, '3', 1, 15, 25),
(19, '14', 1, 1, 206),
(21, '1', 1, 7, 229),
(22, '2', 1, 13, 75),
(23, '18', 1, 2, 245),
(24, '8', 1, 3, 165),
(25, '9', 1, 1, 34),
(26, '9', 1, 6, 238),
(27, '6', 1, 4, 169),
(28, '16', 1, 11, 166),
(29, '9', 1, 10, 140),
(30, '2', 1, 6, 202),
(32, '1', 1, 10, 102),
(33, '19', 1, 2, 96),
(34, '4', 1, 11, 79),
(35, '10', 1, 7, 52),
(37, '19', 1, 8, 141),
(38, '7', 1, 15, 189),
(39, '12', 1, 10, 48),
(40, '16', 1, 11, 74),
(41, '1', 1, 15, 248),
(42, '14', 1, 7, 214),
(43, '6', 1, 6, 80),
(44, '19', 1, 2, 62),
(45, '10', 1, 12, 197),
(46, '7', 1, 13, 129),
(47, '1', 1, 5, 276),
(48, '17', 1, 8, 195),
(49, '9', 1, 13, 253),
(50, '3', 1, 12, 265);

-- --------------------------------------------------------

--
-- Structure de la table `Internship_offers`
--

CREATE TABLE `Internship_offers` (
  `ID_internship_offers` int(11) NOT NULL,
  `Competense` text NOT NULL,
  `Duree_de_stage` text NOT NULL,
  `Base_remuneration` text NOT NULL,
  `Date_offre` date NOT NULL,
  `Nb_places_offertes` int(11) NOT NULL,
  `Boolsuppr` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Internship_offers`
--

INSERT INTO `Internship_offers` (`ID_internship_offers`, `Competense`, `Duree_de_stage`, `Base_remuneration`, `Date_offre`, `Nb_places_offertes`, `Boolsuppr`) VALUES
(1, 'System and Computer Security Engineer', '6 months', '5,20 €', '2022-02-25', 1, 1),
(2, 'IT Operations Technician M/F', '6 months', '3,90 €', '2022-02-25', 2, 1),
(3, 'English Community Manager H/F', '2 months', '0,00 €', '2022-02-16', 2, 1),
(4, 'JAVA Developer M/F', '6 months', '3,90 €', '2022-01-28', 2, 1),
(5, 'PHP Web Developer', '6 months', '3,90 €', '2021-11-05', 2, 1),
(6, 'Receptionist', '4 months', '5,20 €', '2022-03-02', 3, 1),
(7, 'HR Officer M/F', '5 months', '3,90 €', '2022-03-16', 2, 1),
(8, 'Sales/Bar/Communication/Commercial/Event management', '2 months', '0,00 €', '2022-03-22', 1, 1),
(9, 'Internal Communication M/F', '6 months', '4,70 €', '2022-03-08', 2, 1),
(10, 'Communication Officer M/F', '6 months', '3,90 €', '2022-03-19', 1, 1),
(11, 'Technician (M/F)', '4 months', '3,90 €', '2022-02-22', 5, 1),
(12, 'Commercial M/F', '44 days < 2 months', '0,00 €', '2022-03-06', 1, 1),
(13, 'Show off your talent', '2 months', '0,00 €', '2022-02-04', 1, 1),
(14, 'Business Development Assistant M/F', '4 months', '3,90 €', '2022-01-01', 1, 1),
(15, 'Marketing & Sales Development', '6 months', '3,90 €', '2022-03-18', 5, 1),
(16, 'BTS International Trade M/F Bulgaria', '2 months', '18,40 €', '2022-03-18', 3, 1),
(17, 'Web Marketing Digital Manager', '6 months', '3,90 €', '2022-03-15', 2, 1),
(18, 'Assistant Area Manager - IDF (M/F)', '6 months', '6,40 €', '2022-03-15', 15, 1),
(19, 'Assistant IT or Logistics Project Manager (M/F)', '4-6 months', '5,00 €', '2022-03-09', 1, 1),
(20, 'Executive Assistant M/F', '2 months', '0,00 €', '2022-03-18', 1, 1),
(21, 'Executive Assistant M/F', '3 months', '3,90 €', '2022-03-21', 1, 1),
(22, 'Sales Assistant M/F', '2 months', '3,90 €', '2022-03-25', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Own`
--

CREATE TABLE `Own` (
  `ID_role` int(11) NOT NULL,
  `ID_people` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Own`
--

INSERT INTO `Own` (`ID_role`, `ID_people`) VALUES
(1, 3),
(1, 4),
(1, 11),
(1, 14),
(1, 16),
(1, 17),
(1, 21),
(1, 27),
(1, 28),
(1, 40),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 47),
(1, 57),
(1, 61),
(1, 62),
(1, 68),
(1, 69),
(1, 74),
(1, 78),
(1, 79),
(1, 85),
(1, 93),
(1, 96),
(1, 97),
(1, 101),
(1, 102),
(1, 106),
(1, 110),
(1, 116),
(1, 120),
(1, 123),
(1, 125),
(1, 126),
(1, 127),
(1, 128),
(1, 129),
(1, 132),
(1, 134),
(1, 137),
(1, 140),
(1, 141),
(1, 145),
(1, 148),
(1, 150),
(1, 159),
(1, 161),
(1, 165),
(1, 169),
(1, 173),
(1, 177),
(1, 179),
(1, 181),
(1, 185),
(1, 190),
(1, 197),
(1, 202),
(1, 203),
(1, 211),
(1, 212),
(1, 214),
(1, 218),
(1, 219),
(1, 220),
(1, 222),
(1, 225),
(1, 226),
(1, 227),
(1, 236),
(1, 243),
(1, 246),
(1, 248),
(1, 252),
(1, 257),
(1, 259),
(1, 260),
(1, 261),
(1, 262),
(1, 269),
(1, 272),
(1, 276),
(1, 278),
(1, 279),
(1, 280),
(2, 1),
(2, 2),
(2, 3),
(2, 6),
(2, 8),
(2, 9),
(2, 10),
(2, 13),
(2, 18),
(2, 22),
(2, 23),
(2, 25),
(2, 26),
(2, 29),
(2, 33),
(2, 34),
(2, 35),
(2, 37),
(2, 38),
(2, 41),
(2, 46),
(2, 48),
(2, 52),
(2, 54),
(2, 56),
(2, 59),
(2, 60),
(2, 63),
(2, 64),
(2, 65),
(2, 67),
(2, 70),
(2, 71),
(2, 72),
(2, 77),
(2, 82),
(2, 83),
(2, 84),
(2, 86),
(2, 87),
(2, 99),
(2, 104),
(2, 105),
(2, 107),
(2, 111),
(2, 112),
(2, 113),
(2, 115),
(2, 117),
(2, 118),
(2, 121),
(2, 133),
(2, 142),
(2, 147),
(2, 149),
(2, 151),
(2, 153),
(2, 156),
(2, 160),
(2, 162),
(2, 163),
(2, 164),
(2, 166),
(2, 175),
(2, 180),
(2, 182),
(2, 186),
(2, 187),
(2, 189),
(2, 191),
(2, 195),
(2, 196),
(2, 201),
(2, 205),
(2, 206),
(2, 207),
(2, 209),
(2, 217),
(2, 223),
(2, 224),
(2, 228),
(2, 229),
(2, 230),
(2, 231),
(2, 232),
(2, 233),
(2, 238),
(2, 240),
(2, 242),
(2, 244),
(2, 245),
(2, 250),
(2, 253),
(2, 254),
(2, 255),
(2, 256),
(2, 258),
(2, 264),
(2, 265),
(2, 266),
(2, 270),
(2, 273),
(2, 274),
(3, 5),
(3, 7),
(3, 12),
(3, 15),
(3, 19),
(3, 20),
(3, 24),
(3, 30),
(3, 31),
(3, 32),
(3, 36),
(3, 39),
(3, 49),
(3, 50),
(3, 51),
(3, 53),
(3, 55),
(3, 58),
(3, 66),
(3, 73),
(3, 75),
(3, 76),
(3, 80),
(3, 81),
(3, 88),
(3, 89),
(3, 90),
(3, 91),
(3, 92),
(3, 94),
(3, 95),
(3, 98),
(3, 100),
(3, 103),
(3, 108),
(3, 109),
(3, 114),
(3, 119),
(3, 122),
(3, 124),
(3, 130),
(3, 131),
(3, 135),
(3, 136),
(3, 138),
(3, 139),
(3, 143),
(3, 144),
(3, 146),
(3, 152),
(3, 154),
(3, 155),
(3, 157),
(3, 158),
(3, 167),
(3, 168),
(3, 170),
(3, 171),
(3, 172),
(3, 174),
(3, 176),
(3, 178),
(3, 183),
(3, 184),
(3, 188),
(3, 192),
(3, 193),
(3, 194),
(3, 198),
(3, 199),
(3, 200),
(3, 204),
(3, 208),
(3, 210),
(3, 213),
(3, 215),
(3, 216),
(3, 221),
(5, 3),
(6, 234),
(6, 235),
(6, 237),
(6, 239),
(6, 241),
(6, 247),
(6, 249),
(6, 251),
(6, 263),
(6, 267),
(6, 268),
(6, 271),
(6, 275),
(6, 277),
(6, 281);

-- --------------------------------------------------------

--
-- Structure de la table `People`
--

CREATE TABLE `People` (
  `ID_people` int(11) NOT NULL,
  `First_name` text NOT NULL,
  `Last_name` text NOT NULL,
  `Login` text NOT NULL,
  `Password` text NOT NULL,
  `Booldel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `People`
--

INSERT INTO `People` (`ID_people`, `First_name`, `Last_name`, `Login`, `Password`, `Booldel`) VALUES
(1, 'Georgi', 'Facello', 'Facello1', 'ETHQU', 1),
(2, 'Bezalel', 'Simmel', 'Simmel2', 'BORCW', 1),
(3, 'Parto', 'Bamford', 'Bamford3', 'BRSFL', 1),
(4, 'Chirstian', 'Koblick', 'Koblick4', 'WMMOG', 1),
(5, 'Kyoichi', 'Maliniak', 'Maliniak5', 'WTEWB', 1),
(6, 'Anneke', 'Preusig', 'Preusig6', 'YHMFV', 1),
(7, 'Jean', 'Messiha', 'Messiha7', 'LQPEU', 1),
(8, 'Jules', 'Rogé', 'Rogé8', 'QHSEA', 1),
(9, 'Maxence', 'Leroux', 'Leroux9', 'CUBLB', 1),
(10, 'Duangkaew', 'Piveteau', 'Piveteau10', 'UORQR', 1),
(11, 'Mary', 'Sluis', 'Sluis11', 'PQQCT', 1),
(12, 'Patricio', 'Bridgland', 'Bridgland12', 'DDBUJ', 1),
(13, 'Eberhardt', 'Terkki', 'Terkki13', 'ZSBWD', 1),
(14, 'Mona', 'Azuma', 'Azuma14', 'RVEEY', 1),
(15, 'Guoxiang', 'Nooteboom', 'Nooteboom15', 'GDNSK', 1),
(16, 'Kazuhito', 'Cappelletti', 'Cappelletti16', 'GXBAA', 1),
(17, 'Cristinel', 'Bouloucos', 'Bouloucos17', 'WAKZT', 1),
(18, 'Kazuhide', 'Peha', 'Peha18', 'XLJCW', 1),
(19, 'Lillian', 'Haddadi', 'Haddadi19', 'CZXCM', 1),
(20, 'Mayuko', 'Warwick', 'Warwick20', 'LMRIK', 1),
(21, 'Timothée', 'Renaud', 'Renaud21', 'BTAQJ', 1),
(22, 'Shahaf', 'Famili', 'Famili22', 'HHKKI', 1),
(23, 'Bojan', 'Montemayor', 'Montemayor23', 'NKVCI', 1),
(24, 'Suzette', 'Pettey', 'Pettey24', 'YSBVQ', 1),
(25, 'Prasadram', 'Heyers', 'Heyers25', 'ZMZBX', 1),
(26, 'Yongqiao', 'Berztiss', 'Berztiss26', 'PLBTZ', 1),
(27, 'Divier', 'Reistad', 'Reistad27', 'PSCSQ', 1),
(28, 'Domenick', 'Tempesti', 'Tempesti28', 'SCZCK', 1),
(29, 'Otmar', 'Herbst', 'Herbst29', 'AUKPG', 1),
(30, 'Elvis', 'Demeyer', 'Demeyer30', 'JSZHZ', 1),
(31, 'Steevy', 'Boulay', 'Boulay31', 'WMASZ', 1),
(32, 'Jeong', 'Reistad', 'Reistad32', 'AQPQU', 1),
(33, 'Arif', 'Merlo', 'Merlo33', 'YEFRY', 1),
(34, 'Bader', 'Swan', 'Swan34', 'UBNWX', 1),
(35, 'Alain', 'Chappelet', 'Chappelet35', 'WZNBN', 1),
(36, 'Adamantios', 'Portugali', 'Portugali36', 'OIIXQ', 1),
(37, 'Pradeep', 'Makrucki', 'Makrucki37', 'PPADW', 1),
(38, 'Huan', 'Lortz', 'Lortz38', 'IBMOE', 1),
(39, 'Michel', 'Drucker', 'Drucker39', 'TAHLS', 1),
(40, 'Macka', 'Teguen-Idibei', 'Teguen-Idibei40', 'XQNBJ', 1),
(41, 'Uri', 'Lenart', 'Lenart41', 'HMRSA', 1),
(42, 'Magy', 'Stamatiou', 'Stamatiou42', 'JQNFO', 1),
(43, 'Yishay', 'Tzvieli', 'Tzvieli43', 'MBMSB', 1),
(44, 'Fabrice', 'Di Vizio', 'Di Vizio44', 'FIKZS', 1),
(45, 'Pierre', 'Garnier', 'Garnier45', 'UTPSK', 1),
(46, 'Jules', 'Thiébault', 'Thiébault46', 'IYZOC', 1),
(47, 'Sumant', 'Peac', 'Peac47', 'DVQEJ', 1),
(48, 'Florian', 'Annal', 'Annal48', 'UBUWO', 1),
(49, 'Basil', 'Tramer', 'Tramer49', 'IKEHA', 1),
(50, 'Yinghua', 'Dredge', 'Dredge50', 'XIZZV', 1),
(51, 'Hidefumi', 'Caine', 'Caine51', 'VOMVC', 1),
(52, 'Heping', 'Nitsch', 'Nitsch52', 'LVWCO', 1),
(53, 'Sanjiv', 'Zschoche', 'Zschoche53', 'QGULC', 1),
(54, 'Mayumi', 'Schueller', 'Schueller54', 'QNBYH', 1),
(55, 'Georgy', 'Dredge', 'Dredge55', 'OJNAI', 1),
(56, 'Brendon', 'Bernini', 'Bernini56', 'ZRVUM', 1),
(57, 'Ebbe', 'Callaway', 'Callaway57', 'KNSYW', 1),
(58, 'Berhard', 'McFarlin', 'McFarlin58', 'UITXR', 1),
(59, 'Alejandro', 'McAlpine', 'McAlpine59', 'AYEXJ', 1),
(60, 'Breannda', 'Billingsley', 'Billingsley60', 'LJICA', 1),
(61, 'Tse', 'Herber', 'Herber61', 'IXFQC', 1),
(62, 'Anoosh', 'Peyn', 'Peyn62', 'LAOZP', 1),
(63, 'Gino', 'Leonhardt', 'Leonhardt63', 'HYHYS', 1),
(64, 'Udi', 'Jansch', 'Jansch64', 'AWJBO', 1),
(65, 'Satosi', 'Awdeh', 'Awdeh65', 'IOEOX', 1),
(66, 'Kwee', 'Schusler', 'Schusler66', 'GGYUO', 1),
(67, 'Claudi', 'Stavenow', 'Stavenow67', 'UTBRP', 1),
(68, 'Charlene', 'Brattka', 'Brattka68', 'KSIDA', 1),
(69, 'Margareta', 'Bierman', 'Bierman69', 'OGNSD', 1),
(70, 'Reuven', 'Garigliano', 'Garigliano70', 'PTYVH', 1),
(71, 'Hisao', 'Lipner', 'Lipner71', 'ODYOM', 1),
(72, 'Hironoby', 'Sidou', 'Sidou72', 'DNSGI', 1),
(73, 'Shir', 'McClurg', 'McClurg73', 'NTBWN', 1),
(74, 'Mokhtar', 'Bernatsky', 'Bernatsky74', 'OMDBZ', 1),
(75, 'Gao', 'Dolinsky', 'Dolinsky75', 'GXOJF', 1),
(76, 'Erez', 'Ritzmann', 'Ritzmann76', 'KRBXE', 1),
(77, 'Eric', 'Naulleau', 'Naulleau77', 'QUQSK', 1),
(78, 'Danel', 'Mondadori', 'Mondadori78', 'VWXYE', 1),
(79, 'Kshitij', 'Gils', 'Gils79', 'FJKZB', 1),
(80, 'Premal', 'Baek', 'Baek80', 'AFKHR', 1),
(81, 'Zhongwei', 'Rosen', 'Rosen81', 'ZMXSF', 1),
(82, 'Parviz', 'Lortz', 'Lortz82', 'SZQBI', 1),
(83, 'Vishv', 'Zockler', 'Zockler83', 'RTNMJ', 1),
(84, 'Tuval', 'Kalloufi', 'Kalloufi84', 'EZJTP', 1),
(85, 'Kenroku', 'Malabarba', 'Malabarba85', 'WJKLP', 1),
(86, 'Somnath', 'Foote', 'Foote86', 'JXLZX', 1),
(87, 'Xinglin', 'Eugenio', 'Eugenio87', 'JZSWV', 1),
(88, 'Jungsoon', 'Syrzycki', 'Syrzycki88', 'ARAXH', 1),
(89, 'Sudharsan', 'Flasterstein', 'Flasterstein89', 'TBFNS', 1),
(90, 'Kendra', 'Hofting', 'Hofting90', 'MAJBP', 1),
(91, 'Amabile', 'Gomatam', 'Gomatam91', 'RSJID', 1),
(92, 'Valdiodio', 'Niizuma', 'Niizuma92', 'EWJHV', 1),
(93, 'Sailaja', 'Desikan', 'Desikan93', 'ZIVHT', 1),
(94, 'Arumugam', 'Ossenbruggen', 'Ossenbruggen94', 'GTRUF', 1),
(95, 'Hilari', 'Morton', 'Morton95', 'KYOBL', 1),
(96, 'Jayson', 'Mandell', 'Mandell96', 'DEILO', 1),
(97, 'Remzi', 'Waschkowski', 'Waschkowski97', 'YVCQF', 1),
(98, 'Sreekrishna', 'Servieres', 'Servieres98', 'FDKGC', 1),
(99, 'Valter', 'Sullins', 'Sullins99', 'KLLYT', 1),
(100, 'Hironobu', 'Haraldson', 'Haraldson100', 'KWYIZ', 1),
(101, 'Perla', 'Heyers', 'Heyers101', 'CUVYE', 1),
(102, 'Paraskevi', 'Luby', 'Luby102', 'CTLDJ', 1),
(103, 'Akemi', 'Birch', 'Birch103', 'VTATF', 1),
(104, 'Xinyu', 'Warwick', 'Warwick104', 'SYESI', 1),
(105, 'Hironoby', 'Piveteau', 'Piveteau105', 'URQWA', 1),
(106, 'Eben', 'Aingworth', 'Aingworth106', 'OIOPA', 1),
(107, 'Dung', 'Baca', 'Baca107', 'QDYWB', 1),
(108, 'Lunjin', 'Giveon', 'Giveon108', 'LHEGX', 1),
(109, 'Mariusz', 'Prampolini', 'Prampolini109', 'PNOWX', 1),
(110, 'Xuejia', 'Ullian', 'Ullian110', 'FYCNR', 1),
(111, 'Hugo', 'Rosis', 'Rosis111', 'OWFJP', 1),
(112, 'Yuichiro', 'Swick', 'Swick112', 'RTFIV', 1),
(113, 'Jaewon', 'Syrzycki', 'Syrzycki113', 'UONOD', 1),
(114, 'Munir', 'Demeyer', 'Demeyer114', 'GRHAR', 1),
(115, 'Chikara', 'Rissland', 'Rissland115', 'QZFWK', 1),
(116, 'Dayanand', 'Czap', 'Czap116', 'PPJKN', 1),
(117, 'Kiyotoshi', 'Blokdijk', 'Blokdijk117', 'GQUTU', 1),
(118, 'Zhonghui', 'Zyda', 'Zyda118', 'BLACY', 1),
(119, 'Domenick', 'Peltason', 'Peltason119', 'ZDBHU', 1),
(120, 'Armond', 'Fairtlough', 'Fairtlough120', 'CUDDO', 1),
(121, 'Guoxiang', 'Ramsay', 'Ramsay121', 'RDZQZ', 1),
(122, 'Ohad', 'Esposito', 'Esposito122', 'JRRDQ', 1),
(123, 'Hinrich', 'Randi', 'Randi123', 'LSVLE', 1),
(124, 'Geraldo', 'Marwedel', 'Marwedel124', 'NTRUV', 1),
(125, 'Syozo', 'Hiltgen', 'Hiltgen125', 'TJZKF', 1),
(126, 'Kayoko', 'Valtorta', 'Valtorta126', 'YGLXQ', 1),
(127, 'Subir', 'Baja', 'Baja127', 'LUJQO', 1),
(128, 'Babette', 'Lamba', 'Lamba128', 'DTDJH', 1),
(129, 'Armond', 'Peir', 'Peir129', 'YOWSI', 1),
(130, 'Nishit', 'Casperson', 'Casperson130', 'UZLJN', 1),
(131, 'Magdalena', 'Eldridge', 'Eldridge131', 'UXHSE', 1),
(132, 'Ayakannu', 'Skrikant', 'Skrikant132', 'WBUMV', 1),
(133, 'Giri', 'Isaak', 'Isaak133', 'VPIQM', 1),
(134, 'Diederik', 'Siprelle', 'Siprelle134', 'QHUPA', 1),
(135, 'Nathan', 'Monkewich', 'Monkewich135', 'PKUQK', 1),
(136, 'Zissis', 'Pintelas', 'Pintelas136', 'LTAIF', 1),
(137, 'Maren', 'Hutton', 'Hutton137', 'WTKIY', 1),
(138, 'Perry', 'Shimshoni', 'Shimshoni138', 'PUTUJ', 1),
(139, 'Ewing', 'Foong', 'Foong139', 'VPZXU', 1),
(140, 'Yucel', 'Auria', 'Auria140', 'XNUGW', 1),
(141, 'Shahaf', 'Ishibashi', 'Ishibashi141', 'OKUVB', 1),
(142, 'Tzvetan', 'Hettesheimer', 'Hettesheimer142', 'POPRP', 1),
(143, 'Abderrazak', 'Daoudi', 'Daoudi143', 'SIUMM', 1),
(144, 'Marla', 'Brendel', 'Brendel144', 'QFKNA', 1),
(145, 'Akemi', 'Esposito', 'Esposito145', 'CKEUH', 1),
(146, 'Chenyi', 'Syang', 'Syang146', 'HQZHZ', 1),
(147, 'Kazuhito', 'Encarnacion', 'Encarnacion147', 'BEGJQ', 1),
(148, 'Douadi', 'Azumi', 'Azumi148', 'IOIDH', 1),
(149, 'Xiadong', 'Perry', 'Perry149', 'WPHMX', 1),
(150, 'Zhenbing', 'Perng', 'Perng150', 'JBYXG', 1),
(151, 'Itzchak', 'Lichtner', 'Lichtner151', 'WENWQ', 1),
(152, 'Jaques', 'Munro', 'Munro152', 'QDFUT', 1),
(153, 'Heekeun', 'Majewski', 'Majewski153', 'RNYSP', 1),
(154, 'Abdulah', 'Thibadeau', 'Thibadeau154', 'WQPVO', 1),
(155, 'Adas', 'Nastansky', 'Nastansky155', 'BWVCE', 1),
(156, 'Sumali', 'Fargier', 'Fargier156', 'IZKSH', 1),
(157, 'Nigel', 'Aloisi', 'Aloisi157', 'PCIZO', 1),
(158, 'Khedija', 'Mitsuhashi', 'Mitsuhashi158', 'SBBKF', 1),
(159, 'Serif', 'Buescher', 'Buescher159', 'AJGWM', 1),
(160, 'Debatosh', 'Khasidashvili', 'Khasidashvili160', 'UNXZR', 1),
(161, 'Hairong', 'Mellouli', 'Mellouli161', 'EDMVF', 1),
(162, 'Florina', 'Eugenio', 'Eugenio162', 'JTKGU', 1),
(163, 'Karsten', 'Szmurlo', 'Szmurlo163', 'HRGWJ', 1),
(164, 'Jagoda', 'Braunmuhl', 'Braunmuhl164', 'NDPLA', 1),
(165, 'Miyeon', 'Macedo', 'Macedo165', 'SGNOO', 1),
(166, 'Samphel', 'Siegrist', 'Siegrist166', 'KFUZL', 1),
(167, 'Duangkaew', 'Rassart', 'Rassart167', 'QOJWW', 1),
(168, 'Dharmaraja', 'Stassinopoulos', 'Stassinopoulos168', 'FURLM', 1),
(169, 'Sampalli', 'Snedden', 'Snedden169', 'DIDEN', 1),
(170, 'Kasturi', 'Jenevein', 'Jenevein170', 'LGZAY', 1),
(171, 'Herbert', 'Trachtenberg', 'Trachtenberg171', 'DAFFP', 1),
(172, 'Shigeu', 'Matzen', 'Matzen172', 'QJBQP', 1),
(173, 'Shrikanth', 'Mahmud', 'Mahmud173', 'EENKA', 1),
(174, 'Badri', 'Furudate', 'Furudate174', 'SHSMH', 1),
(175, 'Aleksandar', 'Ananiadou', 'Ananiadou175', 'HOKZL', 1),
(176, 'Brendon', 'Lenart', 'Lenart176', 'YFNDG', 1),
(177, 'Pragnesh', 'Iisaka', 'Iisaka177', 'ZNGFO', 1),
(178, 'Valery', 'Litvinov', 'Litvinov178', 'GVDUQ', 1),
(179, 'Deniz', 'Duclos', 'Duclos179', 'TDJRR', 1),
(180, 'Shaw', 'Wendorf', 'Wendorf180', 'PJJFD', 1),
(181, 'Sibyl', 'Nooteboom', 'Nooteboom181', 'XFWBG', 1),
(182, 'Moriyoshi', 'Merey', 'Merey182', 'OFXID', 1),
(183, 'Mechthild', 'Bonifati', 'Bonifati183', 'XOZOW', 1),
(184, 'Mihalis', 'Lowrie', 'Lowrie184', 'DFTOE', 1),
(185, 'Duro', 'Sidhu', 'Sidhu185', 'IBRIL', 1),
(186, 'Shigehito', 'Kropatsch', 'Kropatsch186', 'UAAET', 1),
(187, 'Tommaso', 'Narwekar', 'Narwekar187', 'YUWPA', 1),
(188, 'Christ', 'Muchinsky', 'Muchinsky188', 'DCXGT', 1),
(189, 'Khalid', 'Erva', 'Erva189', 'BNESN', 1),
(190, 'Arve', 'Fairtlough', 'Fairtlough190', 'NHPHC', 1),
(191, 'Zdislav', 'Nastansky', 'Nastansky191', 'SJXJY', 1),
(192, 'Mohua', 'Falck', 'Falck192', 'BYSVD', 1),
(193, 'Masaru', 'Cheshire', 'Cheshire193', 'JVODO', 1),
(194, 'Josyula', 'Hofmeyr', 'Hofmeyr194', 'JHMMA', 1),
(195, 'Annemarie', 'Redmiles', 'Redmiles195', 'WEZCS', 1),
(196, 'Marc', 'Hellwagner', 'Hellwagner196', 'QLUFT', 1),
(197, 'Kasidit', 'Krzyzanowski', 'Krzyzanowski197', 'ETNMS', 1),
(198, 'Pranav', 'Furedi', 'Furedi198', 'CPJTM', 1),
(199, 'Kazuhisa', 'Ranta', 'Ranta199', 'HYJIF', 1),
(200, 'Vidya', 'Awdeh', 'Awdeh200', 'CFKKR', 1),
(201, 'Idoia', 'Kavraki', 'Kavraki201', 'KKQOF', 1),
(202, 'Greger', 'Lichtner', 'Lichtner202', 'MWCQC', 1),
(203, 'Steen', 'Escriba', 'Escriba203', 'CWWNM', 1),
(204, 'Nevio', 'Ritcey', 'Ritcey204', 'MMFYI', 1),
(205, 'Mabhin', 'Leijenhorst', 'Leijenhorst205', 'YFEAK', 1),
(206, 'Alassane', 'Iwayama', 'Iwayama206', 'FNWZQ', 1),
(207, 'Girolamo', 'Anandan', 'Anandan207', 'FJYXU', 1),
(208, 'Xiping', 'Klerer', 'Klerer208', 'YUJIW', 1),
(209, 'Yolla', 'Ellozy', 'Ellozy209', 'ZHWUW', 1),
(210, 'Yuping', 'Alpin', 'Alpin210', 'GIHTP', 1),
(211, 'Vishu', 'Strehl', 'Strehl211', 'MTWPC', 1),
(212, 'Divier', 'Esteva', 'Esteva212', 'VABBU', 1),
(213, 'Jackson', 'Kakkad', 'Kakkad213', 'RIXBS', 1),
(214, 'Tadahiko', 'Ciolek', 'Ciolek214', 'WXGAD', 1),
(215, 'Xiaobin', 'Duclos', 'Duclos215', 'XGZOT', 1),
(216, 'Amstein', 'Ghemri', 'Ghemri216', 'YXYYD', 1),
(217, 'Yongmin', 'Roison', 'Roison217', 'NPMNP', 1),
(218, 'Zhenhua', 'Magalhaes', 'Magalhaes218', 'DZJXG', 1),
(219, 'Genta', 'Kolvik', 'Kolvik219', 'OFHLX', 1),
(220, 'Kish', 'Fasbender', 'Fasbender220', 'KNHRS', 1),
(221, 'Yucai', 'Granlund', 'Granlund221', 'GRZOP', 1),
(222, 'Tze', 'Nourani', 'Nourani222', 'RFYOE', 1),
(223, 'Carrsten', 'Schmiedel', 'Schmiedel223', 'FNKLP', 1),
(224, 'Leon', 'Trogemann', 'Trogemann224', 'HBLYH', 1),
(225, 'Kellie', 'Chinen', 'Chinen225', 'DHDJE', 1),
(226, 'Xinglin', 'Plessier', 'Plessier226', 'BLMVU', 1),
(227, 'Anneli', 'Kaiser', 'Kaiser227', 'XWVFJ', 1),
(228, 'Karoline', 'Cesareni', 'Cesareni228', 'TCFAL', 1),
(229, 'Ulises', 'Takanami', 'Takanami229', 'OWCEG', 1),
(230, 'Clyde', 'Vernadat', 'Vernadat230', 'PFTNA', 1),
(231, 'Shaowen', 'Desikan', 'Desikan231', 'RHVJT', 1),
(232, 'Marko', 'Auria', 'Auria232', 'FQKSX', 1),
(233, 'Lein', 'Vendrig', 'Vendrig233', 'ESPUV', 1),
(234, 'Arunachalam', 'Bakhtari', 'Bakhtari234', 'REVEB', 1),
(235, 'Susanta', 'Roccetti', 'Roccetti235', 'QZFXA', 1),
(236, 'Susumu', 'Bade', 'Bade236', 'BUZES', 1),
(237, 'Yannis', 'Mandell', 'Mandell237', 'LOTLG', 1),
(238, 'Mototsugu', 'Gire', 'Gire238', 'ACHWR', 1),
(239, 'Nikolaos', 'Llado', 'Llado239', 'WPANY', 1),
(240, 'Remko', 'Maccarone', 'Maccarone240', 'WWLZW', 1),
(241, 'Ortrud', 'Murillo', 'Murillo241', 'TMRYX', 1),
(242, 'Lunjin', 'Ozeri', 'Ozeri242', 'IOKQP', 1),
(243, 'Wonhee', 'Pouyioutas', 'Pouyioutas243', 'XCADF', 1),
(244, 'Foong', 'Flasterstein', 'Flasterstein244', 'SJCQC', 1),
(245, 'Ramalingam', 'Gente', 'Gente245', 'CAFBZ', 1),
(246, 'Basem', 'Teitelbaum', 'Teitelbaum246', 'DADZS', 1),
(247, 'Heon', 'Riefers', 'Riefers247', 'XKKJE', 1),
(248, 'Frederique', 'Tempesti', 'Tempesti248', 'SUEOZ', 1),
(249, 'Marie', 'Boreale', 'Boreale249', 'XIFIV', 1),
(250, 'Serap', 'Etalle', 'Etalle250', 'LVGJJ', 1),
(251, 'Alair', 'Rosenbaum', 'Rosenbaum251', 'QCEAX', 1),
(252, 'Shirish', 'Wegerle', 'Wegerle252', 'RPRSE', 1),
(253, 'Zsolt', 'Salinas', 'Salinas253', 'NJISS', 1),
(254, 'Shen', 'Brattka', 'Brattka254', 'SSCYW', 1),
(255, 'Roddy', 'Garnick', 'Garnick255', 'ILKMS', 1),
(256, 'Irene', 'Radhakrishnan', 'Radhakrishnan256', 'SKAUC', 1),
(257, 'Aiman', 'Riexinger', 'Riexinger257', 'KXLJH', 1),
(258, 'Basil', 'Ishibashi', 'Ishibashi258', 'RNMDZ', 1),
(259, 'Susanna', 'Vesel', 'Vesel259', 'IPFKP', 1),
(260, 'Alper', 'Suomi', 'Suomi260', 'DQHWV', 1),
(261, 'Mang', 'Erie', 'Erie261', 'QBMWJ', 1),
(262, 'Mahendra', 'Maraist', 'Maraist262', 'PRUHE', 1),
(263, 'Takahiro', 'Waterhouse', 'Waterhouse263', 'BJKDM', 1),
(264, 'Nalini', 'Kawashimo', 'Kawashimo264', 'KFTZJ', 1),
(265, 'Ramalingam', 'Muniz', 'Muniz265', 'VGACI', 1),
(266, 'Sukumar', 'Rassart', 'Rassart266', 'NVSQM', 1),
(267, 'Shaunak', 'Cullers', 'Cullers267', 'ISAEK', 1),
(268, 'Nishit', 'Siochi', 'Siochi268', 'FSAKM', 1),
(269, 'Taizo', 'Oxman', 'Oxman269', 'NYIMV', 1),
(270, 'Bedir', 'Hartvigsen', 'Hartvigsen270', 'ODWFW', 1),
(271, 'Sham', 'Eastman', 'Eastman271', 'MXETM', 1),
(272, 'Yishai', 'Cannane', 'Cannane272', 'OQQKC', 1),
(273, 'Baocai', 'Lieblein', 'Lieblein273', 'CODLG', 1),
(274, 'Dmitri', 'Pearson', 'Pearson274', 'VZIUD', 1),
(275, 'Marek', 'Luck', 'Luck275', 'WWSUJ', 1),
(276, 'Xuejun', 'Hempstead', 'Hempstead276', 'DPPCS', 1),
(277, 'Isaac', 'Schwartzbauer', 'Schwartzbauer277', 'GEWAE', 1),
(278, 'Lubomir', 'Nitsch', 'Nitsch278', 'QFESG', 1),
(279, 'Barton', 'Jumpertz', 'Jumpertz279', 'CVKJL', 1),
(280, 'Stabislas', 'Delgrange', 'Delgrange280', 'VSOEO', 1),
(281, 'Thierry', 'Beccaro', 'Beccaro281', 'TIOIP', 1);

-- --------------------------------------------------------

--
-- Structure de la table `Pilot_trust`
--

CREATE TABLE `Pilot_trust` (
  `ID_Pilot_trust` int(11) NOT NULL,
  `Pilot_trust` text NOT NULL,
  `Booldel` tinyint(1) NOT NULL,
  `ID_enterprise` int(11) NOT NULL,
  `ID_people` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Pilot_trust`
--

INSERT INTO `Pilot_trust` (`ID_Pilot_trust`, `Pilot_trust`, `Booldel`, `ID_enterprise`, `ID_people`) VALUES
(1, '4', 1, 6, 159),
(2, '1', 1, 1, 277),
(3, '0', 1, 12, 158),
(4, '20', 1, 12, 167),
(5, '10', 1, 3, 258),
(6, '7', 1, 12, 110),
(7, '1', 1, 14, 258),
(8, '0', 1, 15, 271),
(9, '6', 1, 8, 244),
(10, '2', 1, 3, 281),
(11, '8', 1, 1, 90),
(12, '3', 1, 4, 22),
(13, '3', 1, 8, 158),
(14, '5', 1, 5, 78),
(15, '13', 1, 8, 140),
(16, '5', 1, 6, 32),
(17, '9', 1, 2, 102),
(18, '0', 1, 12, 140),
(19, '13', 1, 7, 198),
(20, '9', 1, 3, 86),
(21, '1', 1, 13, 229),
(22, '8', 1, 12, 32),
(23, '4', 1, 7, 262),
(24, '20', 1, 10, 164),
(25, '14', 1, 5, 147),
(26, '7', 1, 10, 250),
(27, '17', 1, 12, 6),
(28, '19', 1, 1, 9),
(29, '19', 1, 15, 170),
(30, '2', 1, 2, 71),
(31, '14', 1, 9, 115),
(32, '20', 1, 12, 46),
(33, '12', 1, 8, 55),
(34, '9', 1, 5, 208),
(35, '13', 1, 2, 168);

-- --------------------------------------------------------

--
-- Structure de la table `Propose`
--

CREATE TABLE `Propose` (
  `ID_internship_offers` int(11) NOT NULL,
  `ID_enterprise` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Propose`
--

INSERT INTO `Propose` (`ID_internship_offers`, `ID_enterprise`) VALUES
(1, 1),
(2, 1),
(3, 12),
(4, 14),
(5, 5),
(6, 11),
(7, 2),
(8, 6),
(9, 12),
(10, 4),
(11, 15),
(12, 8),
(13, 15),
(14, 8),
(15, 12),
(16, 9),
(17, 6),
(18, 3),
(19, 4),
(20, 10),
(21, 13),
(22, 14);

-- --------------------------------------------------------

--
-- Structure de la table `Represent`
--

CREATE TABLE `Represent` (
  `ID_people` int(11) NOT NULL,
  `ID_class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Represent`
--

INSERT INTO `Represent` (`ID_people`, `ID_class`) VALUES
(1, 3),
(2, 1),
(6, 8),
(8, 7),
(9, 8),
(10, 11),
(13, 14),
(18, 6),
(22, 16),
(23, 12),
(25, 10),
(26, 14),
(29, 5),
(33, 14),
(34, 12),
(35, 2),
(37, 15),
(38, 13),
(41, 13),
(46, 3),
(48, 14),
(52, 7),
(54, 7),
(56, 14),
(59, 13),
(60, 15),
(63, 10),
(64, 8),
(65, 3),
(67, 14),
(70, 6),
(71, 12),
(72, 12),
(77, 4),
(82, 3),
(83, 4),
(84, 5),
(86, 15),
(87, 1),
(99, 15),
(104, 5),
(105, 7),
(107, 7),
(111, 8),
(112, 14),
(113, 11),
(115, 3),
(117, 8),
(118, 13),
(121, 15),
(133, 13),
(142, 17),
(147, 14),
(149, 12),
(151, 2),
(153, 17),
(156, 11),
(160, 1),
(162, 9),
(163, 5),
(164, 3),
(166, 12),
(175, 11),
(180, 9),
(182, 11),
(186, 11),
(187, 8),
(189, 17),
(191, 12),
(195, 13),
(196, 15),
(201, 14),
(205, 9),
(206, 8),
(207, 8),
(209, 13),
(217, 10),
(223, 7),
(224, 1),
(228, 16),
(229, 14),
(230, 8),
(231, 4),
(232, 6),
(233, 16),
(238, 6),
(240, 10),
(242, 4),
(244, 17),
(245, 9),
(250, 8),
(253, 13),
(254, 5),
(255, 6),
(256, 14),
(258, 13),
(264, 17),
(265, 10),
(266, 11),
(270, 10),
(273, 11),
(274, 17);

-- --------------------------------------------------------

--
-- Structure de la table `Role`
--

CREATE TABLE `Role` (
  `ID_role` int(11) NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Role`
--

INSERT INTO `Role` (`ID_role`, `role`) VALUES
(1, 'Student'),
(2, 'Delegate'),
(3, 'Tutor'),
(4, 'Other'),
(5, 'Admin'),
(6, 'Enterprise');

-- --------------------------------------------------------

--
-- Structure de la table `Sector`
--

CREATE TABLE `Sector` (
  `ID_sector` int(11) NOT NULL,
  `Sector` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Sector`
--

INSERT INTO `Sector` (`ID_sector`, `Sector`) VALUES
(1, 'Apple premium reseller'),
(2, 'Bank, Insurance'),
(3, 'Car manufacturer'),
(4, 'Cleaning facilities'),
(5, 'Financial audit'),
(6, 'Mass distribution'),
(7, 'Railway industry'),
(8, 'Retail trade'),
(9, 'Specialized mass distribution'),
(10, 'Trade union confederation');

-- --------------------------------------------------------

--
-- Structure de la table `Working_in`
--

CREATE TABLE `Working_in` (
  `ID_people` int(11) NOT NULL,
  `ID_campus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Working_in`
--

INSERT INTO `Working_in` (`ID_people`, `ID_campus`) VALUES
(1, 12),
(2, 21),
(3, 25),
(4, 16),
(5, 17),
(6, 2),
(7, 11),
(8, 1),
(9, 5),
(10, 7),
(11, 9),
(12, 22),
(13, 14),
(14, 20),
(15, 3),
(16, 9),
(17, 25),
(18, 18),
(19, 25),
(20, 15),
(21, 15),
(22, 7),
(23, 15),
(24, 20),
(25, 21),
(26, 2),
(27, 4),
(28, 14),
(29, 6),
(30, 13),
(31, 17),
(32, 13),
(33, 9),
(34, 11),
(35, 19),
(36, 13),
(37, 6),
(38, 1),
(39, 13),
(40, 8),
(41, 21),
(42, 2),
(43, 22),
(44, 19),
(45, 15),
(46, 13),
(47, 12),
(48, 2),
(49, 17),
(50, 5),
(51, 17),
(52, 16),
(53, 23),
(54, 13),
(55, 18),
(56, 9),
(57, 1),
(58, 6),
(59, 8),
(60, 21),
(61, 14),
(62, 12),
(63, 14),
(64, 6),
(65, 22),
(66, 22),
(67, 18),
(68, 8),
(69, 1),
(70, 19),
(71, 14),
(72, 25),
(73, 10),
(74, 15),
(75, 2),
(76, 14),
(77, 8),
(78, 14),
(79, 22),
(80, 19),
(81, 7),
(82, 20),
(83, 2),
(84, 7),
(85, 14),
(86, 9),
(87, 2),
(88, 19),
(89, 13),
(90, 13),
(91, 13),
(92, 18),
(93, 18),
(94, 2),
(95, 21),
(96, 4),
(97, 22),
(98, 19),
(99, 12),
(100, 20),
(101, 16),
(102, 25),
(103, 8),
(104, 13),
(105, 1),
(106, 3),
(107, 5),
(108, 23),
(109, 23),
(110, 12),
(111, 4),
(112, 6),
(113, 19),
(114, 21),
(115, 3),
(116, 24),
(117, 15),
(118, 4),
(119, 7),
(120, 22),
(121, 20),
(122, 3),
(123, 10),
(124, 19),
(125, 17),
(126, 11),
(127, 24),
(128, 15),
(129, 24),
(130, 23),
(131, 21),
(132, 18),
(133, 25),
(134, 22),
(135, 1),
(136, 21),
(137, 23),
(138, 23),
(139, 13),
(140, 3),
(141, 13),
(142, 9),
(143, 2),
(144, 24),
(145, 5),
(146, 11),
(147, 12),
(148, 16),
(149, 21),
(150, 13),
(151, 23),
(152, 7),
(153, 25),
(154, 15),
(155, 18),
(156, 10),
(157, 21),
(158, 1),
(159, 25),
(160, 22),
(161, 20),
(162, 22),
(163, 15),
(164, 24),
(165, 2),
(166, 20),
(167, 20),
(168, 17),
(169, 24),
(170, 24),
(171, 4),
(172, 23),
(173, 8),
(174, 2),
(175, 13),
(176, 12),
(177, 17),
(178, 4),
(179, 17),
(180, 4),
(181, 12),
(182, 15),
(183, 6),
(184, 19),
(185, 4),
(186, 12),
(187, 12),
(188, 13),
(189, 10),
(190, 7),
(191, 18),
(192, 4),
(193, 7),
(194, 16),
(195, 10),
(196, 9),
(197, 1),
(198, 6),
(199, 25),
(200, 15),
(201, 7),
(202, 10),
(203, 10),
(204, 20),
(205, 23),
(206, 2),
(207, 18),
(208, 15),
(209, 23),
(210, 7),
(211, 9),
(212, 7),
(213, 6),
(214, 14),
(215, 16),
(216, 12),
(217, 18),
(218, 11),
(219, 23),
(220, 2),
(221, 21),
(222, 14),
(223, 19),
(224, 15),
(225, 10),
(226, 11),
(227, 12),
(228, 23),
(229, 25),
(230, 11),
(231, 8),
(232, 9),
(233, 9),
(234, 20),
(235, 11),
(236, 9),
(237, 21),
(238, 1),
(239, 18),
(240, 8),
(241, 21),
(242, 13),
(243, 12),
(244, 19),
(245, 11),
(246, 2),
(247, 14),
(248, 6),
(249, 15),
(250, 15),
(251, 20),
(252, 21),
(253, 18),
(254, 18),
(255, 24),
(256, 8),
(257, 13),
(258, 16),
(259, 14),
(260, 3),
(261, 11),
(262, 2),
(263, 23),
(264, 12),
(265, 25),
(266, 22),
(267, 16),
(268, 9),
(269, 5),
(270, 16),
(271, 11),
(272, 4),
(273, 14),
(274, 16),
(275, 25),
(276, 16),
(277, 22),
(278, 2),
(279, 10),
(280, 10),
(281, 25);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Being_in`
--
ALTER TABLE `Being_in`
  ADD PRIMARY KEY (`ID_sector`,`ID_enterprise`),
  ADD KEY `Being_in_Enterprise0_FK` (`ID_enterprise`);

--
-- Index pour la table `Being_located`
--
ALTER TABLE `Being_located`
  ADD PRIMARY KEY (`ID_City`,`ID_enterprise`),
  ADD KEY `Being_located_Enterprise0_FK` (`ID_enterprise`);

--
-- Index pour la table `Being_proposed`
--
ALTER TABLE `Being_proposed`
  ADD PRIMARY KEY (`ID_people`,`ID_internship_offers`),
  ADD KEY `Being_proposed_Internship_offers0_FK` (`ID_internship_offers`);

--
-- Index pour la table `Belong`
--
ALTER TABLE `Belong`
  ADD PRIMARY KEY (`ID_people`,`ID_class`),
  ADD KEY `Belong_Class0_FK` (`ID_class`);

--
-- Index pour la table `Campus`
--
ALTER TABLE `Campus`
  ADD PRIMARY KEY (`ID_campus`),
  ADD KEY `Campus_City_FK` (`ID_City`);

--
-- Index pour la table `City`
--
ALTER TABLE `City`
  ADD PRIMARY KEY (`ID_City`);

--
-- Index pour la table `Class`
--
ALTER TABLE `Class`
  ADD PRIMARY KEY (`ID_class`);

--
-- Index pour la table `Enterprise`
--
ALTER TABLE `Enterprise`
  ADD PRIMARY KEY (`ID_enterprise`),
  ADD KEY `Enterprise_People_FK` (`ID_people`);

--
-- Index pour la table `Evaluation_interns`
--
ALTER TABLE `Evaluation_interns`
  ADD PRIMARY KEY (`ID_evaluation_interns`),
  ADD KEY `Evaluation_interns_Enterprise_FK` (`ID_enterprise`),
  ADD KEY `Evaluation_interns_People0_FK` (`ID_people`);

--
-- Index pour la table `Internship_offers`
--
ALTER TABLE `Internship_offers`
  ADD PRIMARY KEY (`ID_internship_offers`);

--
-- Index pour la table `Own`
--
ALTER TABLE `Own`
  ADD PRIMARY KEY (`ID_role`,`ID_people`),
  ADD KEY `Own_People0_FK` (`ID_people`);

--
-- Index pour la table `People`
--
ALTER TABLE `People`
  ADD PRIMARY KEY (`ID_people`);

--
-- Index pour la table `Pilot_trust`
--
ALTER TABLE `Pilot_trust`
  ADD PRIMARY KEY (`ID_Pilot_trust`),
  ADD KEY `Pilot_trust_Enterprise_FK` (`ID_enterprise`),
  ADD KEY `Pilot_trust_People0_FK` (`ID_people`);

--
-- Index pour la table `Propose`
--
ALTER TABLE `Propose`
  ADD PRIMARY KEY (`ID_internship_offers`,`ID_enterprise`),
  ADD KEY `Propose_Enterprise0_FK` (`ID_enterprise`);

--
-- Index pour la table `Represent`
--
ALTER TABLE `Represent`
  ADD PRIMARY KEY (`ID_people`,`ID_class`),
  ADD KEY `Represent_Class0_FK` (`ID_class`);

--
-- Index pour la table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`ID_role`);

--
-- Index pour la table `Sector`
--
ALTER TABLE `Sector`
  ADD PRIMARY KEY (`ID_sector`);

--
-- Index pour la table `Working_in`
--
ALTER TABLE `Working_in`
  ADD PRIMARY KEY (`ID_people`,`ID_campus`),
  ADD KEY `Working_in_Campus0_FK` (`ID_campus`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Campus`
--
ALTER TABLE `Campus`
  MODIFY `ID_campus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `City`
--
ALTER TABLE `City`
  MODIFY `ID_City` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT pour la table `Class`
--
ALTER TABLE `Class`
  MODIFY `ID_class` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `Enterprise`
--
ALTER TABLE `Enterprise`
  MODIFY `ID_enterprise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `Evaluation_interns`
--
ALTER TABLE `Evaluation_interns`
  MODIFY `ID_evaluation_interns` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `Internship_offers`
--
ALTER TABLE `Internship_offers`
  MODIFY `ID_internship_offers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `People`
--
ALTER TABLE `People`
  MODIFY `ID_people` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT pour la table `Pilot_trust`
--
ALTER TABLE `Pilot_trust`
  MODIFY `ID_Pilot_trust` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `Role`
--
ALTER TABLE `Role`
  MODIFY `ID_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `Sector`
--
ALTER TABLE `Sector`
  MODIFY `ID_sector` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Being_in`
--
ALTER TABLE `Being_in`
  ADD CONSTRAINT `Being_in_Enterprise0_FK` FOREIGN KEY (`ID_enterprise`) REFERENCES `Enterprise` (`ID_enterprise`),
  ADD CONSTRAINT `Being_in_Sector_FK` FOREIGN KEY (`ID_sector`) REFERENCES `Sector` (`ID_sector`);

--
-- Contraintes pour la table `Being_located`
--
ALTER TABLE `Being_located`
  ADD CONSTRAINT `Being_located_City_FK` FOREIGN KEY (`ID_City`) REFERENCES `City` (`ID_City`),
  ADD CONSTRAINT `Being_located_Enterprise0_FK` FOREIGN KEY (`ID_enterprise`) REFERENCES `Enterprise` (`ID_enterprise`);

--
-- Contraintes pour la table `Being_proposed`
--
ALTER TABLE `Being_proposed`
  ADD CONSTRAINT `Being_proposed_Internship_offers0_FK` FOREIGN KEY (`ID_internship_offers`) REFERENCES `Internship_offers` (`ID_internship_offers`),
  ADD CONSTRAINT `Being_proposed_People_FK` FOREIGN KEY (`ID_people`) REFERENCES `People` (`ID_people`);

--
-- Contraintes pour la table `Belong`
--
ALTER TABLE `Belong`
  ADD CONSTRAINT `Belong_Class0_FK` FOREIGN KEY (`ID_class`) REFERENCES `Class` (`ID_class`),
  ADD CONSTRAINT `Belong_People_FK` FOREIGN KEY (`ID_people`) REFERENCES `People` (`ID_people`);

--
-- Contraintes pour la table `Campus`
--
ALTER TABLE `Campus`
  ADD CONSTRAINT `Campus_City_FK` FOREIGN KEY (`ID_City`) REFERENCES `City` (`ID_City`);

--
-- Contraintes pour la table `Enterprise`
--
ALTER TABLE `Enterprise`
  ADD CONSTRAINT `Enterprise_People_FK` FOREIGN KEY (`ID_people`) REFERENCES `People` (`ID_people`);

--
-- Contraintes pour la table `Evaluation_interns`
--
ALTER TABLE `Evaluation_interns`
  ADD CONSTRAINT `Evaluation_interns_Enterprise_FK` FOREIGN KEY (`ID_enterprise`) REFERENCES `Enterprise` (`ID_enterprise`),
  ADD CONSTRAINT `Evaluation_interns_People0_FK` FOREIGN KEY (`ID_people`) REFERENCES `People` (`ID_people`);

--
-- Contraintes pour la table `Own`
--
ALTER TABLE `Own`
  ADD CONSTRAINT `Own_People0_FK` FOREIGN KEY (`ID_people`) REFERENCES `People` (`ID_people`),
  ADD CONSTRAINT `Own_Role_FK` FOREIGN KEY (`ID_role`) REFERENCES `Role` (`ID_role`);

--
-- Contraintes pour la table `Pilot_trust`
--
ALTER TABLE `Pilot_trust`
  ADD CONSTRAINT `Pilot_trust_Enterprise_FK` FOREIGN KEY (`ID_enterprise`) REFERENCES `Enterprise` (`ID_enterprise`),
  ADD CONSTRAINT `Pilot_trust_People0_FK` FOREIGN KEY (`ID_people`) REFERENCES `People` (`ID_people`);

--
-- Contraintes pour la table `Propose`
--
ALTER TABLE `Propose`
  ADD CONSTRAINT `Propose_Enterprise0_FK` FOREIGN KEY (`ID_enterprise`) REFERENCES `Enterprise` (`ID_enterprise`),
  ADD CONSTRAINT `Propose_Internship_offers_FK` FOREIGN KEY (`ID_internship_offers`) REFERENCES `Internship_offers` (`ID_internship_offers`);

--
-- Contraintes pour la table `Represent`
--
ALTER TABLE `Represent`
  ADD CONSTRAINT `Represent_Class0_FK` FOREIGN KEY (`ID_class`) REFERENCES `Class` (`ID_class`),
  ADD CONSTRAINT `Represent_People_FK` FOREIGN KEY (`ID_people`) REFERENCES `People` (`ID_people`);

--
-- Contraintes pour la table `Working_in`
--
ALTER TABLE `Working_in`
  ADD CONSTRAINT `Working_in_Campus0_FK` FOREIGN KEY (`ID_campus`) REFERENCES `Campus` (`ID_campus`),
  ADD CONSTRAINT `Working_in_People_FK` FOREIGN KEY (`ID_people`) REFERENCES `People` (`ID_people`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mer. 23 mars 2022 à 11:03
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
(4, 234),
(4, 235),
(4, 237),
(4, 239),
(4, 241),
(4, 247),
(4, 249),
(4, 251),
(4, 263),
(4, 267),
(4, 268),
(4, 271),
(4, 275),
(4, 277),
(4, 281),
(5, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Own`
--
ALTER TABLE `Own`
  ADD PRIMARY KEY (`ID_role`,`ID_people`),
  ADD KEY `Own_People0_FK` (`ID_people`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Own`
--
ALTER TABLE `Own`
  ADD CONSTRAINT `Own_People0_FK` FOREIGN KEY (`ID_people`) REFERENCES `People` (`ID_people`),
  ADD CONSTRAINT `Own_Role_FK` FOREIGN KEY (`ID_role`) REFERENCES `Role` (`ID_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

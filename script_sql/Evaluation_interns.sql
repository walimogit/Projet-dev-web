-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mar. 22 mars 2022 à 11:04
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

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Evaluation_interns`
--
ALTER TABLE `Evaluation_interns`
  ADD PRIMARY KEY (`ID_evaluation_interns`),
  ADD UNIQUE KEY `Evaluation_interns_People_AK` (`ID_people`),
  ADD KEY `Evaluation_interns_Enterprise_FK` (`ID_enterprise`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Evaluation_interns`
--
ALTER TABLE `Evaluation_interns`
  MODIFY `ID_evaluation_interns` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Evaluation_interns`
--
ALTER TABLE `Evaluation_interns`
  ADD CONSTRAINT `Evaluation_interns_Enterprise_FK` FOREIGN KEY (`ID_enterprise`) REFERENCES `Enterprise` (`ID_enterprise`),
  ADD CONSTRAINT `Evaluation_interns_People0_FK` FOREIGN KEY (`ID_people`) REFERENCES `People` (`ID_people`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

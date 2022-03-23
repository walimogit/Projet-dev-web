-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mer. 23 mars 2022 à 11:33
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

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Campus`
--
ALTER TABLE `Campus`
  ADD PRIMARY KEY (`ID_campus`),
  ADD KEY `Campus_City_FK` (`ID_City`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Campus`
--
ALTER TABLE `Campus`
  MODIFY `ID_campus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Campus`
--
ALTER TABLE `Campus`
  ADD CONSTRAINT `Campus_City_FK` FOREIGN KEY (`ID_City`) REFERENCES `City` (`ID_City`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

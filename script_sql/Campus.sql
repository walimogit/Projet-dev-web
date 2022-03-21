-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : lun. 21 mars 2022 à 14:50
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
-- Base de données : `bddprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `Campus`
--

CREATE TABLE `Campus` (
  `ID_campus` int(11) NOT NULL,
  `Campus` text NOT NULL,
  `Booldel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Campus`
--

INSERT INTO `Campus` (`ID_campus`, `Campus`, `Booldel`) VALUES
(1, 'Aix-en-Provance', 1),
(2, 'Angoulême', 1),
(3, 'Arras', 1),
(4, 'Bordeaux', 1),
(5, 'Brest', 1),
(6, 'Cean', 1),
(7, 'Châteauroux', 1),
(8, 'Dijon', 1),
(9, 'Grenoble', 1),
(10, 'La Rochelle', 1),
(11, 'Le Mans', 1),
(12, 'Lille', 1),
(13, 'Lyon', 1),
(14, 'Montpellier', 1),
(15, 'Nancy', 1),
(16, 'Nanterre', 1),
(17, 'Nantes', 1),
(18, 'Nice', 1),
(19, 'Orléan', 1),
(20, 'Pau', 1),
(21, 'Reims', 1),
(22, 'Rouen', 1),
(23, 'Saint Nazaire', 1),
(24, 'Strasbourg', 1),
(25, 'Toulouse', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Campus`
--
ALTER TABLE `Campus`
  ADD PRIMARY KEY (`ID_campus`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Campus`
--
ALTER TABLE `Campus`
  MODIFY `ID_campus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

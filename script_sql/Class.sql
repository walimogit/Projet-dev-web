-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : lun. 21 mars 2022 à 15:04
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

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Class`
--
ALTER TABLE `Class`
  ADD PRIMARY KEY (`ID_class`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Class`
--
ALTER TABLE `Class`
  MODIFY `ID_class` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : lun. 21 mars 2022 à 15:21
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
-- Structure de la table `Enterprise`
--

CREATE TABLE `Enterprise` (
  `ID_enterprise` int(11) NOT NULL,
  `Name_enterprise` text NOT NULL,
  `Number_interns_accepted` text NOT NULL,
  `Booldel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Enterprise`
--

INSERT INTO `Enterprise` (`ID_enterprise`, `Name_enterprise`, `Number_interns_accepted`, `Booldel`) VALUES
(1, 'PWC', '3', 1),
(2, 'Onet', '3', 1),
(3, 'Auchan', '3', 1),
(4, 'Carrefour', '2', 1),
(5, 'Leclerc', '1', 1),
(6, 'Boulanger', '2', 1),
(7, 'Darty', '2', 1),
(8, 'Cactus', '2', 1),
(9, 'CGT', '1', 1),
(10, 'BNP Paribas', '1', 1),
(11, 'Alstom', '2', 1),
(12, 'Citroën', '3', 1),
(13, 'Peugeot', '2', 1),
(14, 'Inter-Actif', '3', 1),
(15, 'Noneo', '1', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Enterprise`
--
ALTER TABLE `Enterprise`
  ADD PRIMARY KEY (`ID_enterprise`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Enterprise`
--
ALTER TABLE `Enterprise`
  MODIFY `ID_enterprise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

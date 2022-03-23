-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mer. 23 mars 2022 à 11:28
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
-- Structure de la table `Enterprise`
--

CREATE TABLE `Enterprise` (
  `ID_enterprise` int(11) NOT NULL,
  `Name_enterprise` text NOT NULL,
  `Number_interns_accepted` text NOT NULL,
  `Login` text NOT NULL,
  `Password` text NOT NULL,
  `Booldel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Enterprise`
--

INSERT INTO `Enterprise` (`ID_enterprise`, `Name_enterprise`, `Number_interns_accepted`, `Login`, `Password`, `Booldel`) VALUES
(1, 'PWC', '3', 'PWC1', 'KQYWO', 1),
(2, 'Onet', '3', 'Onet2', 'QPQKH', 1),
(3, 'Auchan', '3', 'Auchan3', 'XLBVE', 1),
(4, 'Carrefour', '2', 'Carrefour4', 'CYMWG', 1),
(5, 'Leclerc', '1', 'Leclerc5', 'ZYAHJ', 1),
(6, 'Boulanger', '2', 'Boulanger6', 'PGDRM', 1),
(7, 'Darty', '2', 'Darty7', 'TDINV', 1),
(8, 'Cactus', '2', 'Cactus8', 'OENQP', 1),
(9, 'CGT', '1', 'CGT9', 'GLIUK', 1),
(10, 'BNP Paribas', '1', 'BNPParibas10', 'YFNKI', 1),
(11, 'Alstom', '2', 'Alstom11', 'TLIQG', 1),
(12, 'Citroën', '3', 'Citroën12', 'CWSBS', 1),
(13, 'Peugeot', '2', 'Peugeot13', 'TPPHR', 1),
(14, 'Inter-Actif', '3', 'Inter-Actif14', 'KPFPI', 1),
(15, 'Noneo', '1', 'Noneo15', 'UWUVG', 1);

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

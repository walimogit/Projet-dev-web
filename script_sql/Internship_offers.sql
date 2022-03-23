-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mer. 23 mars 2022 à 09:20
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

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Internship_offers`
--
ALTER TABLE `Internship_offers`
  ADD PRIMARY KEY (`ID_internship_offers`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Internship_offers`
--
ALTER TABLE `Internship_offers`
  MODIFY `ID_internship_offers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

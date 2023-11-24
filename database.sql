-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 24 nov. 2023 à 13:59
-- Version du serveur : 10.5.21-MariaDB
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ppvufssr_smd`
--

CREATE DATABASE sdm;
USE sdm;

-- --------------------------------------------------------

--
-- Structure de la table `sdm`
--

CREATE TABLE `sdm` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `story` varchar(500) NOT NULL,
  `love` int(11) NOT NULL,
  `no_love` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `smd`
--

INSERT INTO `sdm` (`id`, `pseudo`, `title`, `story`, `love`, `no_love`) VALUES
(1, 'toto', 'l\'Amelanchier', 'Sous l\'Amelanchier, j\'me retrouve seul à glander. Noël, c\'est juste une occasion de se rappeler que ma famille, c\'est du passé. L\'arbre, c\'est là où je cache mes clopes et mes regrets. Les boules brillent, mais moi, je suis dans l\'ombre.', 0, 0),
(2, 'titi', 'Ce triphosphate', 'Au labo, avec ce triphosphate chelou, je regarde les lumières de Noël. Ma famille ? Ouais, loin derrière. Les rires ? Des souvenirs qu\'on a mis au congélo. Noël, c\'est juste un jour de plus, mais avec des décorations inutiles.', 0, 0),
(3, 'tutu', 'Pétrichor', 'Collé à la fenêtre, je respire le Pétrichor et me souviens d\'elle. Noël, c\'est devenu un foutu terrain de guerre. Les gouttes tombent, comme mes larmes. La magie ? Elle est partie avec elle. Noël, ça pue la solitude et le passé qui colle comme la pluie.', 0, 0),
(4, 'tata', 'Noël', 'Le cadeau que j\'ai ouvert ce Noël-là était une claque. Un bouquin sur la solitude. J\'ai essayé de sourire, mais sérieux, qui offre ça comme cadeau? Ce Noël, c\'était comme si quelqu\'un m\'avait envoyé un message subtil : T\'es seul, mec, et ça changera pas.', 0, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `smd`
--
ALTER TABLE `sdm`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `smd`
--
ALTER TABLE `sdm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

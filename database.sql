-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 23 nov. 2023 à 11:12
-- Version du serveur : 8.0.34
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sdm`
--

DROP DATABASE IF EXISTS `sdm`;
CREATE DATABASE IF NOT EXISTS `sdm`;
USE `sdm`;

-- --------------------------------------------------------

--
-- Structure de la table `sdm`
--

DROP TABLE IF EXISTS `sdm`;
CREATE TABLE IF NOT EXISTS `sdm` (
                                     `id` int NOT NULL AUTO_INCREMENT,
                                     `pseudo` varchar(25) NOT NULL,
                                     `title` varchar(50) NOT NULL,
                                     `story` varchar(500) NOT NULL,
                                     `photo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                                     `love` int NOT NULL,
                                     `no_love` int NOT NULL,
                                     PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `sdm`
--

INSERT INTO `sdm` (`id`, `pseudo`, `title`, `story`, `photo`, `love`, `no_love`) VALUES
    (1, 'toto', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum massa est, aliquet sit amet imperdiet nec, mattis vitae lectus. Vestibulum dapibus nisl ac dui gravida, quis efficitur augue rhoncus. Donec rutrum ornare volutpat. Integer turpis sem, mollis finibus placerat eget, laoreet posuere leo. In hendrerit urna ante. Vestibulum dui felis, aliquet eget suscipit sed, hendrerit eget ligula. Mauris a orci nec odio maximus placerat. Quisque faucibus, urna in lacinia porta, libero quam nullam.', NULL, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

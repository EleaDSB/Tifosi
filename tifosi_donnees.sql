-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 14 jan. 2026 à 10:25
-- Version du serveur : 8.0.44
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

--
-- Déchargement des données de la table `achete`
--

INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES
(1, 1, '2026-01-14');

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES
(1, 'Coca-cola zéro', 1),
(2, 'Coca-cola original', 1),
(3, 'Fanta orange', 1),
(4, 'Fanta citron', 1),
(5, 'Sprite', 1),
(6, 'Monster energy ultra', 3),
(7, 'Monster energy original', 3),
(8, 'Aquarius', 1),
(9, 'Mountain Dew', 4),
(10, 'Perrier', 4),
(11, 'Pepsi', 4),
(12, 'Pepsi Max', 4),
(13, 'Lipton ice tea pêche', 4);

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES
(1, 'Tifosi Admin', 30, 75001);

--
-- Déchargement des données de la table `comprend`
--

INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(1, 3),
(2, 3),
(4, 3),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(1, 7),
(3, 7),
(4, 7),
(1, 9),
(3, 9),
(4, 9),
(2, 11),
(1, 13),
(2, 13),
(3, 13),
(4, 13),
(1, 15),
(2, 15),
(3, 15),
(4, 15),
(1, 19),
(2, 19),
(3, 19),
(4, 19);

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES
(1, 'Mozza', 9.8),
(2, 'Gorgonzola', 10.8),
(3, 'Racllette', 8.9),
(4, 'Emmental', 9.8),
(5, 'Traditionnelle', 8.9),
(6, 'Hawaienne', 11.2),
(7, 'Américaine', 10.8),
(8, 'Paysanne', 12.8);

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(1, 'Ail'),
(2, 'Aneth'),
(3, 'Base tomate'),
(4, 'Champignon'),
(5, 'Emmental'),
(6, 'Gorgonzola'),
(7, 'Jambon cuit'),
(8, 'Jambon fumé'),
(9, 'Oeuf'),
(10, 'Oignon'),
(11, 'Olive noire'),
(12, 'Olive verte'),
(13, 'Parmesan'),
(14, 'Piment'),
(15, 'Poivre'),
(16, 'Pomme de terre'),
(17, 'Roquette'),
(18, 'Salami'),
(19, 'Tomate cerise');

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-Cola'),
(2, 'Cristaline'),
(3, 'Monster'),
(4, 'Pepsico');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

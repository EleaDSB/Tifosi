-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 14 jan. 2026 à 10:26
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

-- --------------------------------------------------------

--
-- Structure de la table `achete`
--

DROP TABLE IF EXISTS `achete`;
CREATE TABLE `achete` (
  `id_client` int NOT NULL,
  `id_focaccia` int NOT NULL,
  `jour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `achete`
--

INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES
(1, 1, '2026-01-14');

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
CREATE TABLE `boisson` (
  `id_boisson` int NOT NULL,
  `nom_boisson` varchar(45) NOT NULL,
  `id_marque` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id_client` int NOT NULL,
  `nom_client` varchar(45) NOT NULL,
  `age` int DEFAULT NULL,
  `cp_client` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES
(1, 'Tifosi Admin', 30, 75001);

-- --------------------------------------------------------

--
-- Structure de la table `comprend`
--

DROP TABLE IF EXISTS `comprend`;
CREATE TABLE `comprend` (
  `id_focaccia` int NOT NULL,
  `id_ingredient` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

DROP TABLE IF EXISTS `contient`;
CREATE TABLE `contient` (
  `id_menu` int NOT NULL,
  `id_boisson` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `est_constitue`
--

DROP TABLE IF EXISTS `est_constitue`;
CREATE TABLE `est_constitue` (
  `id_focaccia` int NOT NULL,
  `id_menu` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `focaccia`
--

DROP TABLE IF EXISTS `focaccia`;
CREATE TABLE `focaccia` (
  `id_focaccia` int NOT NULL,
  `nom_focaccia` varchar(45) NOT NULL,
  `prix_focaccia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE `ingredient` (
  `id_ingredient` int NOT NULL,
  `nom_ingredient` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE `marque` (
  `id_marque` int NOT NULL,
  `nom_marque` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-Cola'),
(2, 'Cristaline'),
(3, 'Monster'),
(4, 'Pepsico');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id_menu` int NOT NULL,
  `nom_menu` varchar(45) NOT NULL,
  `prix_menu` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paye`
--

DROP TABLE IF EXISTS `paye`;
CREATE TABLE `paye` (
  `id_client` int NOT NULL,
  `id_menu` int NOT NULL,
  `jour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achete`
--
ALTER TABLE `achete`
  ADD PRIMARY KEY (`id_client`,`id_focaccia`,`jour`),
  ADD KEY `id_focaccia` (`id_focaccia`);

--
-- Index pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD PRIMARY KEY (`id_boisson`),
  ADD KEY `fk_boisson_marque` (`id_marque`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD PRIMARY KEY (`id_focaccia`,`id_ingredient`),
  ADD KEY `id_ingredient` (`id_ingredient`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD PRIMARY KEY (`id_menu`,`id_boisson`),
  ADD KEY `id_boisson` (`id_boisson`);

--
-- Index pour la table `est_constitue`
--
ALTER TABLE `est_constitue`
  ADD PRIMARY KEY (`id_focaccia`,`id_menu`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Index pour la table `focaccia`
--
ALTER TABLE `focaccia`
  ADD PRIMARY KEY (`id_focaccia`);

--
-- Index pour la table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id_ingredient`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id_marque`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Index pour la table `paye`
--
ALTER TABLE `paye`
  ADD PRIMARY KEY (`id_client`,`id_menu`,`jour`),
  ADD KEY `id_menu` (`id_menu`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `boisson`
--
ALTER TABLE `boisson`
  MODIFY `id_boisson` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `focaccia`
--
ALTER TABLE `focaccia`
  MODIFY `id_focaccia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id_ingredient` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id_marque` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achete`
--
ALTER TABLE `achete`
  ADD CONSTRAINT `achete_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `achete_ibfk_2` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`);

--
-- Contraintes pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD CONSTRAINT `fk_boisson_marque` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`);

--
-- Contraintes pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD CONSTRAINT `comprend_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`),
  ADD CONSTRAINT `comprend_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`);

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  ADD CONSTRAINT `contient_ibfk_2` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`);

--
-- Contraintes pour la table `est_constitue`
--
ALTER TABLE `est_constitue`
  ADD CONSTRAINT `est_constitue_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`),
  ADD CONSTRAINT `est_constitue_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);

--
-- Contraintes pour la table `paye`
--
ALTER TABLE `paye`
  ADD CONSTRAINT `paye_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `paye_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

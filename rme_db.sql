-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 16 juin 2025 à 12:02
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rme_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `affectation`
--

DROP TABLE IF EXISTS `affectation`;
CREATE TABLE IF NOT EXISTS `affectation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chantier_id` int NOT NULL,
  `materiel_id` int NOT NULL,
  `duree_utilisation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mois_facturation` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F4DD61D3D0C0049D` (`chantier_id`),
  KEY `IDX_F4DD61D316880AAF` (`materiel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `affectation`
--

INSERT INTO `affectation` (`id`, `chantier_id`, `materiel_id`, `duree_utilisation`, `mois_facturation`) VALUES
(27, 15, 66, '4', '2025-06'),
(28, 15, 59, '4', '2025-06'),
(29, 25, 103, '3', '2025-06'),
(30, 13, 106, '28', '2025-04'),
(31, 11, 78, '15', '2025-04'),
(32, 11, 104, '15', '2025-04'),
(33, 12, 86, '24', '2025-04'),
(34, 12, 72, '24', '2025-04'),
(35, 11, 132, '30', '2025-04'),
(36, 12, 72, '23', '2025-04'),
(37, 12, 133, '30', '2025-04'),
(38, 12, 121, '30', '2025-04'),
(42, 13, 121, '30', '2025-04'),
(43, 13, 133, '30', '2025-04'),
(44, 13, 112, '30', '2025-04'),
(45, 13, 122, '30', '2025-04'),
(46, 13, 123, '30', '2025-04'),
(47, 14, 124, '30', '2025-04'),
(48, 23, 65, '30', '2025-04'),
(49, 23, 134, '30', '2025-04'),
(50, 23, 111, '30', '2025-04'),
(51, 23, 55, '25', '2025-04'),
(52, 23, 17, '30', '2025-04'),
(53, 23, 78, '30', '2025-04'),
(54, 23, 126, '30', '2025-04'),
(55, 23, 127, '30', '2025-04'),
(56, 23, 128, '30', '2025-04'),
(57, 23, 135, '30', '2025-04'),
(58, 23, 136, '30', '2025-04'),
(59, 20, 62, '30', '2025-04'),
(60, 20, 56, '30', '2025-04'),
(61, 20, 129, '30', '2025-04'),
(62, 20, 12, '30', '2025-04'),
(63, 20, 128, '30', '2025-04'),
(64, 20, 78, '30', '2025-24'),
(65, 20, 127, '30', '2025-04'),
(66, 20, 131, '30', '2025-04'),
(67, 20, 68, '30', '2025-04'),
(68, 17, 137, '30', '2025-04'),
(69, 17, 138, '30', '2025-04'),
(70, 17, 8, '30', '2025-04'),
(71, 6, 66, '30', '2025-04'),
(72, 6, 103, '30', '2025-04'),
(73, 6, 140, '30', '2025-04'),
(74, 6, 80, '30', '2025-04'),
(75, 10, 24, '30', '2025-04'),
(76, 10, 32, '30', '2025-04'),
(78, 10, 63, '30', '2025-04'),
(79, 10, 141, '30', '2025-04'),
(80, 8, 120, '30', '2025-04'),
(81, 8, 112, '30', '2025-04'),
(82, 8, 113, '30', '2025-04'),
(83, 8, 100, '30', '2025-04'),
(84, 8, 106, '30', '2025-04'),
(85, 24, 117, '30', '2025-04'),
(86, 24, 122, '30', '2025-04'),
(87, 14, 107, '30', '2025-05'),
(88, 14, 124, '30', '2025-05'),
(89, 26, 109, '30', '2025-05'),
(90, 26, 142, '30', '2025-05'),
(91, 11, 132, '30', '2025-05'),
(92, 11, 104, '30', '2025-05'),
(93, 16, 70, '30', '2025-05'),
(94, 16, 86, '10', '2025-05'),
(95, 17, 137, '30', '2025-05'),
(96, 17, 138, '30', '2025-05'),
(97, 17, 8, '30', '2025-05'),
(98, 18, 88, '30', '2025-05'),
(99, 18, 101, '30', '2025-05'),
(100, 19, 76, '10', '2025-05'),
(101, 20, 60, '30', '2025-05'),
(102, 20, 62, '30', '2025-05'),
(103, 20, 68, '30', '2025-05'),
(104, 20, 79, '30', '2025-05'),
(105, 20, 129, '30', '2025-05'),
(106, 20, 130, '30', '2025-05'),
(107, 20, 12, '30', '2025-05'),
(108, 20, 128, '30', '2025-05'),
(109, 20, 127, '30', '2025-05'),
(110, 20, 131, '30', '2025-05'),
(111, 20, 56, '24', '2025-05'),
(112, 21, 87, '13', '2025-05'),
(113, 22, 97, '28', '2025-05'),
(114, 22, 92, '3', '2025-05'),
(115, 13, 106, '30', '2025-05'),
(116, 13, 121, '30', '2025-05'),
(117, 13, 133, '30', '2025-05'),
(118, 13, 112, '30', '2025-05'),
(119, 13, 122, '30', '2025-05'),
(120, 13, 123, '30', '2025-05'),
(121, 23, 17, '30', '2025-05'),
(122, 23, 55, '30', '2025-05'),
(123, 23, 65, '30', '2025-05'),
(124, 23, 134, '30', '2025-05'),
(125, 23, 78, '30', '2025-05'),
(126, 23, 125, '30', '2025-05'),
(127, 23, 126, '30', '2025-05'),
(128, 23, 127, '30', '2025-05'),
(129, 23, 128, '30', '2025-05'),
(130, 23, 135, '30', '2025-05'),
(131, 23, 136, '30', '2025-05'),
(132, 24, 23, '30', '2025-05'),
(133, 24, 117, '30', '2025-05'),
(134, 24, 122, '30', '2025-05'),
(135, 10, 8, '30', '2025-05'),
(136, 10, 24, '30', '2025-05'),
(137, 10, 32, '30', '2025-05'),
(138, 10, 63, '30', '2025-05'),
(139, 10, 141, '30', '2025-05'),
(140, 10, 138, '30', '2025-05'),
(141, 8, 97, '13', '2025-05'),
(142, 8, 119, '13', '2025-05'),
(143, 8, 120, '10', '2025-05'),
(144, 8, 95, '10', '2025-05'),
(145, 8, 143, '10', '2025-05'),
(146, 8, 145, '7', '2025-05'),
(147, 6, 66, '30', '2025-05'),
(148, 6, 103, '30', '2025-05'),
(149, 6, 140, '30', '2025-05'),
(150, 6, 80, '30', '2025-05');

-- --------------------------------------------------------

--
-- Structure de la table `chantier`
--

DROP TABLE IF EXISTS `chantier`;
CREATE TABLE IF NOT EXISTS `chantier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_chantier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsable_chantier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `chantier`
--

INSERT INTO `chantier` (`id`, `nom`, `code_chantier`, `adresse`, `nif`, `stat`, `contact_client`, `responsable_chantier`) VALUES
(6, 'BASE AMBOHIMALAZA', '7894561230', 'Ambohimalaza Imerkasinina', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Kanto'),
(7, 'Salle serveur', 'DSI20250512', 'Ampatsakana', '123456789', '147852369', '0321145678', 'Informatique'),
(8, 'Helios', 'DSI20250514', 'Ampatsaskana', '16651231', '61651612', '0381053233', 'Kiady'),
(9, 'a', 'a', 'a', 'a', 'a', 'a', 'a'),
(10, 'TMF', 'C25002C', 'Toamasina', 'Aucun', 'Aucun', 'Aucun', 'Kanto'),
(11, 'VITOGAZ', 'C25049B', 'Ambohimanambola', '0000010039', '25114 11 2007 0 11026', '0321167509', 'Nandrianina'),
(12, 'MADARAIL PK228', 'C24067C', 'PK228', '0000010039', '25114 11 2007 0 11026', '0321167509', 'Nandrianina'),
(13, 'RAVINALA', 'C24099C', 'Ivato', '0000010039', '25114 11 2007 0 11026', '0321167585', 'Kanto'),
(14, 'OTI Ambatobe', 'C23092C', 'Ambatobe', '0000010039', '25114 11 2007 0 11026', '0321167585', 'Kanto'),
(15, 'ECE', 'Aucun', 'Andranobevava', '0000010039', '25114 11 2007 0 11026', '0321167585', 'Kanto'),
(16, 'LPSA ATL', 'C24034C', 'Antalaha', '0000010039', '25114 11 2007 0 11026', '0321167509', 'Kanto'),
(17, 'DMSA', 'C24043B', 'Toamasina', '0000010039', '25114 11 2007 0 11026', '0321167585', 'Kanto'),
(18, 'LPSA EHL', 'C24009C', 'Ehoala', '0000010039', '25114 11 2007 0 11026', '0321167509', 'Kanto'),
(19, 'LPSA FNR', 'C25026C', 'Fianarantsoa', '0000010039', '25114 11 2007 0 11026', '0321167585', 'Kanto'),
(20, 'GRT', 'C23096E', 'Toamasina', '0000010039', '25114 11 2007 0 11026', '0321167509', 'Kanto'),
(21, 'MADARAIL PK00', 'C23072C', 'Soarano', '0000010039', '25114 11 2007 0 11026', '0321167585', 'Kanto'),
(22, 'NEA MADAGASCAR', 'C24181B', 'Andraharo', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Kanto'),
(23, 'COLAS', 'C24048E', 'RN13', 'Aucun', 'Aucun', 'Aucun', 'Lanto'),
(24, 'SS TOTAL MAHATSARA', 'C24191C', 'Toamasina', 'Aucun', 'Aucun', 'Aucun', 'Kanto'),
(25, 'Betsizaraina', 'Aucun', 'Betsizaraina', 'Aucun', 'Aucun', 'Aucun', 'Aucun'),
(26, 'VITOGAZ A/TRIMO', 'C24145B', 'Ambohidratrimo', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'MAHERY/NANDRIANINA');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250422130046', '2025-04-22 15:01:06', 133);

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mois_facture` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chantier_id` int NOT NULL,
  `date_creation` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `responsable_maintenance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FE866410D0C0049D` (`chantier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`id`, `mois_facture`, `numero`, `chantier_id`, `date_creation`, `responsable_maintenance`) VALUES
(89, '2025-05-09 10:26:43', 'FA N°001-BASE-RME-2025', 6, '2025-05-09 10:26:43', 'Kanto RAMPARISON'),
(91, '2025-05-14 09:18:59', 'FA N°002-BASE-RME-2025', 7, '2025-05-14 09:18:59', 'Derrick Raherison'),
(92, '2025-04-15 09:26:36', 'FA N°003-BASE-RME-2025', 8, '2025-05-15 09:26:36', 'Kanto RAMPARISON'),
(93, '2025-05-23 12:48:44', 'FA N°004-BASE-RME-2025', 7, '2025-05-23 12:48:44', ''),
(94, '2025-05-23 12:50:07', 'FA N°005-BASE-RME-2025', 6, '2025-05-23 12:50:07', ''),
(95, '2025-04-23 12:51:11', 'FA N°006-BASE-RME-2025', 6, '2025-05-23 12:51:11', ''),
(96, '2025-05-05 05:11:46', 'FA N°007-BASE-RME-2025', 9, '2025-06-05 05:11:46', 'Kanto '),
(97, '2025-05-05 05:54:27', 'FA N°008-BASE-RME-2025', 6, '2025-06-05 05:54:27', 'Kanto'),
(98, '2025-06-05 05:59:56', 'FA N°009-BASE-RME-2025', 10, '2025-06-05 05:59:56', 'Aina'),
(99, '2025-06-11 11:04:35', 'FA N°010-BASE-RME-2025', 25, '2025-06-11 11:04:35', 'Kanto'),
(100, '2025-06-11 11:06:05', 'FA N°011-BASE-RME-2025', 25, '2025-06-11 11:06:05', ''),
(101, '2025-04-12 14:20:51', 'FA N°012-BASE-RME-2025', 13, '2025-06-12 14:20:52', 'Kanto'),
(102, '2025-04-12 14:23:41', 'FA N°013-BASE-RME-2025', 11, '2025-06-12 14:23:41', 'Kanto RAMPARISON'),
(103, '2025-04-12 14:24:12', 'FA N°014-BASE-RME-2025', 12, '2025-06-12 14:24:12', 'Kanto RAMPARISON'),
(104, '2025-04-12 14:24:57', 'FA N°015-BASE-RME-2025', 14, '2025-06-12 14:24:57', 'Kanto RAMPARISON'),
(105, '2025-04-12 14:25:15', 'FA N°016-BASE-RME-2025', 23, '2025-06-12 14:25:15', 'Kanto RAMPARISON'),
(106, '2025-04-12 14:25:34', 'FA N°017-BASE-RME-2025', 20, '2025-06-12 14:25:34', 'Kanto RAMPARISON'),
(107, '2025-04-12 14:25:55', 'FA N°018-BASE-RME-2025', 17, '2025-06-12 14:25:55', 'Kanto RAMPARISON'),
(108, '2025-04-12 14:26:13', 'FA N°019-BASE-RME-2025', 6, '2025-06-12 14:26:13', 'Kanto RAMPARISON'),
(109, '2025-04-12 14:26:30', 'FA N°020-BASE-RME-2025', 10, '2025-06-12 14:26:30', 'Kanto RAMPARISON'),
(110, '2025-04-12 14:26:53', 'FA N°021-BASE-RME-2025', 8, '2025-06-12 14:26:53', 'Kanto RAMPARISON'),
(111, '2025-05-13 07:53:49', 'FA N°022-BASE-RME-2025', 14, '2025-06-13 07:53:49', 'Kanto RAMPARISON'),
(112, '2025-05-13 07:54:27', 'FA N°023-BASE-RME-2025', 26, '2025-06-13 07:54:27', 'Kanto RAMPARISON'),
(113, '2025-05-13 07:54:55', 'FA N°024-BASE-RME-2025', 11, '2025-06-13 07:54:55', 'Kanto RAMPARISON'),
(114, '2025-05-13 07:56:15', 'FA N°025-BASE-RME-2025', 16, '2025-06-13 07:56:15', 'Kanto RAMPARISON'),
(115, '2025-05-13 07:56:35', 'FA N°026-BASE-RME-2025', 17, '2025-06-13 07:56:35', 'Kanto RAMPARISON'),
(116, '2025-05-13 07:56:56', 'FA N°027-BASE-RME-2025', 18, '2025-06-13 07:56:56', 'Kanto RAMPARISON'),
(117, '2025-05-13 07:57:16', 'FA N°028-BASE-RME-2025', 19, '2025-06-13 07:57:16', 'Kanto RAMPARISON'),
(118, '2025-05-13 07:57:46', 'FA N°029-BASE-RME-2025', 20, '2025-06-13 07:57:46', 'Kanto RAMPARISON'),
(119, '2025-05-13 07:58:13', 'FA N°030-BASE-RME-2025', 21, '2025-06-13 07:58:13', 'Kanto RAMPARISON'),
(120, '2025-05-13 07:58:39', 'FA N°031-BASE-RME-2025', 22, '2025-06-13 07:58:40', 'Kanto RAMPARISON'),
(121, '2025-05-13 07:59:01', 'FA N°032-BASE-RME-2025', 13, '2025-06-13 07:59:01', 'Kanto RAMPARISON'),
(122, '2025-05-13 07:59:25', 'FA N°033-BASE-RME-2025', 23, '2025-06-13 07:59:25', 'Kanto RAMPARISON'),
(123, '2025-05-13 07:59:52', 'FA N°034-BASE-RME-2025', 24, '2025-06-13 07:59:53', 'Kanto RAMPARISON'),
(124, '2025-05-13 08:00:27', 'FA N°035-BASE-RME-2025', 10, '2025-06-13 08:00:27', 'Kanto RAMPARISON'),
(125, '2025-05-13 08:00:45', 'FA N°036-BASE-RME-2025', 8, '2025-06-13 08:00:45', 'Kanto RAMPARISON'),
(126, '2025-05-13 08:00:59', 'FA N°037-BASE-RME-2025', 6, '2025-06-13 08:00:59', 'Kanto RAMPARISON');

-- --------------------------------------------------------

--
-- Structure de la table `materiel`
--

DROP TABLE IF EXISTS `materiel`;
CREATE TABLE IF NOT EXISTS `materiel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_affaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix_unitaire` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chantier_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_18D2B091D0C0049D` (`chantier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `materiel`
--

INSERT INTO `materiel` (`id`, `libelle`, `code_affaire`, `unite`, `prix_unitaire`, `description`, `chantier_id`) VALUES
(8, 'Ford 6723 TBC', 'O24593', 'Jour', 206839, NULL, 7),
(9, 'LOGAN 6905 TAV', 'O24591', 'Jour', 135442, NULL, NULL),
(10, 'FORD 9825 TAV', 'O24592', 'Jour', 198906, NULL, NULL),
(11, 'FORD 6722 TBC', 'O24594', 'Jour', 206839, NULL, NULL),
(12, 'FORD 7434 TBB', 'O24595', 'Jour', 206839, NULL, NULL),
(13, 'FORD 6519 TAL', 'O24596', 'Jour', 175107, NULL, NULL),
(14, 'FORD 3165 TAU', 'O24597', 'Jour', 175107, NULL, NULL),
(15, 'FORD 2759TBN', 'O24598', 'Jour', 222705, NULL, NULL),
(16, 'FORD 9895TBS', 'O24599', 'Jour', 216076, NULL, NULL),
(17, 'FORD 9896TBS', 'O24600', 'Jour', 216076, NULL, NULL),
(18, 'MITSUBISHI 9251 TBB', 'O24601', 'Jour', 175107, NULL, NULL),
(19, 'MITSUBISHI 8172WWT', 'O24602', 'Jour', 214772, NULL, NULL),
(20, 'TOYOTA HJ75 4659 TBN', 'O24603', 'Jour', 116402, NULL, NULL),
(21, 'MAXUS', 'O24604', 'Jour', 236370, NULL, NULL),
(22, 'TOYOTA HILUX 27676WWT', 'O24605', 'Jour', 230638, NULL, NULL),
(23, 'SPRINTER 5146TBD', 'O24606', 'Jour', 175107, NULL, 24),
(24, 'SPRINTER 4X4', 'O24607', 'Jour', 230638, NULL, 10),
(25, 'VARIO 814D', 'O24608', 'Jour', 190973, NULL, NULL),
(26, 'TOYOTA GX', 'O24609', 'Jour', 175107, NULL, NULL),
(27, 'BAIC H2 N°1  15696WWT', 'O24610', 'Jour', 143375, NULL, NULL),
(28, 'BAIC H2 N°2 53649WWT', 'O24611', 'Jour', 143375, NULL, NULL),
(29, 'BAIC H2 N°4 1615WWT', 'O24612', 'Jour', 143375, NULL, NULL),
(30, 'BAIC H2 N° 3 1614WWT', 'O24613', 'Jour', 143375, NULL, NULL),
(31, 'WINGLE 5', 'O24614', 'Jour', 175107, NULL, NULL),
(32, 'VARIO 618D', 'O24615', 'Jour', 175107, NULL, 10),
(33, 'ZNA', 'O24616', 'Jour', 151308, NULL, NULL),
(34, 'BENELLI 58150 WWT', 'O24617', 'Jour', 53363, NULL, NULL),
(35, 'HONDA 125 5746 TBF', 'O24618', 'Jour', 50983, NULL, NULL),
(36, 'HONDA ACE 125 DK 12549 WWT', 'O24619', 'Jour', 50983, NULL, NULL),
(37, 'HONDA CGX 125 55074 WWT', 'O24620', 'Jour', 50983, NULL, NULL),
(38, 'HONDA ACE CB 110CC', 'O24621', 'Jour', 50983, NULL, NULL),
(39, 'PACIFIC CITY YBR 59656WWT', 'O24622', 'Jour', 51719, NULL, NULL),
(40, 'YAMAHA CRUX 00532WWA', 'O24623', 'Jour', 50931, NULL, NULL),
(41, 'YAMAHA CRUX 0529WWA', 'O24624', 'Jour', 50821, NULL, NULL),
(42, 'YAMAHA CRUX 58389WWT', 'O24625', 'Jour', 51206, NULL, NULL),
(43, 'YAMAHA CRUX 20366WWT', 'O24626', 'Jour', 51226, NULL, NULL),
(44, 'CROSS PACIFIC DIRT 62139WWT', 'O24627', 'Jour', 48819, NULL, NULL),
(45, 'CROSS PACIFIC DIRT 62140WWT', 'O24628', 'Jour', 48819, NULL, NULL),
(46, 'PACIFIC DIRT 150CC 53186 WWT', 'O24629', 'jour', 48921, NULL, NULL),
(47, 'PACIFIC ROUTIER 150CC 63034WWT', 'O24630', 'jours', 48921, NULL, NULL),
(48, 'LIFAN 150-13 3618 TBR', 'O24631', 'jours', 48921, NULL, NULL),
(49, 'LIFAN 125 CC 3578 TBR', 'O24632', 'jours', 48921, NULL, NULL),
(50, 'JMC CARRYING 9852WWT', 'O24635', 'jours', 183040, NULL, 8),
(51, 'JMC CARRYING 0634TBS', 'O24636', 'jours', 183040, NULL, NULL),
(52, 'MIDLUM 180 2983TBC', 'O24637', 'jours', 288519, NULL, NULL),
(53, 'INTERNATIONAL', 'O24638', 'jours', 288519, NULL, NULL),
(54, 'MIDLUM 220 9375 TBB', 'O24639', 'jours', 256787, NULL, NULL),
(55, 'KERAX 3008TBC', 'O24640', 'jours', 447180, NULL, NULL),
(56, 'ACTROS 4741TBL', 'O24641', 'jours', 526511, NULL, 20),
(57, 'PORTE CONTENEUR 1927AH', 'O24642', 'jours', 183163, NULL, NULL),
(58, 'PORTE CHAR 4841TBF', 'O24643', 'jours', 246628, NULL, NULL),
(59, 'PREMIUM 9310 TBE', 'O24644', 'jours', 288519, NULL, NULL),
(60, 'GRUE 35T', 'O24645', 'jours', 2383831, NULL, 10),
(61, 'DEMAG AC50', 'O24646', 'jours', 3335796, NULL, NULL),
(62, 'MERLO ROTO', 'O24647', 'jours', 556619, NULL, 20),
(63, 'MERLO P4017', 'O24648', 'jours', 437623, NULL, 10),
(64, 'MANITOU 1335 SL', 'O24649', 'jours', 397958, NULL, NULL),
(65, 'MANITOU MT 732', 'O24650', 'jours', 256787, NULL, 23),
(66, 'GRUE 13T HYDRA', 'O24651', 'jours', 367850, NULL, NULL),
(67, 'FOREUSE DOMINE', 'O24652', 'jours', 477288, NULL, NULL),
(68, 'TRACTOPELLE', 'O24653', 'jours', 556619, NULL, 20),
(69, 'DUMPER', 'O24655', 'jours', 225055, NULL, NULL),
(70, 'GE KAPUR 125 KVA N°01', 'O24665', 'jours', 249372, NULL, NULL),
(71, 'GE KAPUR 125 KVA N°02', 'O24666', 'jours', 249372, NULL, NULL),
(72, 'GE KOFO 125 KVA N°01', 'O24667', 'jours', 249372, NULL, NULL),
(73, 'GE KOFO 125 KVA  N°02', 'O24668', 'jours', 249372, NULL, NULL),
(74, 'GE KAPUR 125 KVA N°03', 'O24669', 'jours', 249372, NULL, NULL),
(75, 'GE KAPUR 125 KVA N°04', 'O24670', 'jours', 249372, NULL, NULL),
(76, 'GE GREAVES POWER 160KVA', 'O24674', 'jours', 293797, NULL, NULL),
(77, 'GE JAGUAR 250 KVA', 'O24675', 'jours', 408033, NULL, NULL),
(78, 'MILLER 350', 'O24680', 'jours', 89950, NULL, NULL),
(79, 'MILLER 700', 'O24681', 'jours', 108990, NULL, NULL),
(80, 'COMPRESSEUR IR 7/170', 'O24682', 'jours', 225573, NULL, NULL),
(81, 'COMPRESSEUR IR P 180', 'O24683', 'jours', 146242, NULL, NULL),
(82, 'COMPRESSEUR XAHS 306 N°01', 'O24684', 'jours', 249372, NULL, NULL),
(83, 'COMPRESSEUR XAHS 306 N°02', 'O24685', 'jours', 249372, NULL, NULL),
(84, 'COMPRESSEUR KAESER M22', 'O24686', 'jours', 114510, NULL, NULL),
(85, 'COMPRESSEUR CHINOIS', 'O24687', 'jours', 146242, NULL, NULL),
(86, 'COMPRESSEUR XAS 97 N°01', 'O24688', 'jours', 138309, NULL, NULL),
(87, 'COMPRESSEUR XAS 97 N°02', 'O24689', 'jours', 138309, NULL, NULL),
(88, 'COMPRESSEUR XAS 97 N°03', 'O24690', 'jours', 138309, NULL, NULL),
(89, 'COMPRESSEUR ZR3 N°01', 'O24691', 'jours', 170042, NULL, NULL),
(90, 'COMPRESSEUR 100L ROUGE', 'O24692', 'jours', 16792, NULL, NULL),
(91, 'COMPRESSEUR LIUTECH', 'O24693', 'jours', 249372, NULL, NULL),
(92, 'GE FIRMAN 5KVA JAUNE N°01', 'Aucun', 'jours', 95028, NULL, NULL),
(93, 'GE FIRMAN 5KVA JAUNE N°02', 'Aucun', 'jours', 95028, NULL, NULL),
(94, 'GE FIRMAN 5KVA JAUNE N°03', 'Aucun', 'jours', 95028, NULL, NULL),
(95, 'GE FIRMAN 5KVA JAUNE N°04', 'Aucun', 'jours', 95028, NULL, NULL),
(96, 'GE FIRMAN 5KVA JAUNE N°05', 'Aucun', 'jours', 95028, NULL, NULL),
(97, 'GE FIRMAN 5KVA JAUNE N°06', 'Aucun', 'jours', 95028, NULL, NULL),
(99, 'GE FIRMAN 5KVA JAUNE N°07', 'Aucun', 'jours', 95028, NULL, NULL),
(100, 'GE FIRMAN 5KVA JAUNE N°08', 'Aucun', 'jours', 95028, NULL, NULL),
(101, 'GE SDMO 110KVA N°01', 'Aucun', 'jours', 264874, NULL, NULL),
(102, 'GE SDMO 110KVA N°02', 'Aucun', 'jours', 264874, NULL, NULL),
(103, 'GE SDMO 110KVA N°03', 'Aucun', 'jours', 264874, NULL, NULL),
(104, 'GE SDMO 110KVA N°04', 'Aucun', 'jours', 264874, NULL, NULL),
(105, 'GE SDMO 110KVA N°05', 'Aucun', 'jours', 264874, NULL, NULL),
(106, 'GE 5KVA ROUGE N°01', 'Aucun', 'jours', 95028, NULL, NULL),
(107, 'GE 5KVA ROUGE N°02', 'Aucun', 'jours', 95028, NULL, NULL),
(108, 'GE 5KVA ROUGE N°03', 'Aucun', 'jours', 95028, NULL, NULL),
(109, 'GE 5KVA ROUGE N°04', 'Aucun', 'jours', 95028, NULL, NULL),
(110, 'GE 5KVA ROUGE N°05', 'Aucun', 'jours', 95028, NULL, NULL),
(111, 'GE 5KVA ROUGE N°06', 'Aucun', 'jours', 95028, NULL, NULL),
(112, 'Betonnière N°01', 'Aucun', 'jours', 115130, NULL, NULL),
(113, 'Betonnière N°02', 'Aucun', 'jours', 115130, NULL, NULL),
(114, 'Betonnière N°03', 'Aucun', 'jours', 115130, NULL, NULL),
(115, 'Betonnière N°04', 'Aucun', 'jours', 115130, NULL, NULL),
(116, 'Betonnière N°05', 'Aucun', 'jours', 115130, NULL, NULL),
(117, 'Betonnière N°06', 'Aucun', 'jours', 115130, NULL, NULL),
(118, 'Betonnière N°07', 'Aucun', 'jours', 115130, NULL, NULL),
(119, 'Betonnière N°08', 'Aucun', 'jours', 115130, NULL, NULL),
(120, 'Betonnière N°09', 'Aucun', 'jours', 115130, NULL, NULL),
(121, 'POSTE 220V', 'Aucun', 'jours', 91303, NULL, NULL),
(122, 'MARTEAU PIQUEUR', 'Aucun', 'jours', 92387, NULL, NULL),
(123, 'PERVIBRATEUR', 'Aucun', 'jours', 92103, NULL, NULL),
(124, 'KUBOTA', 'Aucun', 'jours', 109190, NULL, NULL),
(125, 'KAPUR 30KVA', 'Aucun', 'jours', 108990, NULL, NULL),
(126, 'EKOMAXX 220', 'Aucun', 'jours', 103490, NULL, NULL),
(127, 'LINCOLN 380V', 'Aucun', 'jours', 104407, NULL, NULL),
(128, 'MEGAFORCE 220V', 'Aucun', 'jours', 103490, NULL, NULL),
(129, 'DONGFENG', 'Aucun', 'jours', 99443, NULL, NULL),
(130, 'MITSUBISHI 6207TCA', 'Aucun', 'jours', 229304, NULL, 20),
(131, 'poste pegasus 380', 'Aucun', 'jours', 104407, NULL, NULL),
(132, 'GE FIRMAN 40KVA', 'O24677', 'jours', 121683, NULL, NULL),
(133, 'POSTE 380', 'Aucun', 'jours', 95330, NULL, NULL),
(134, 'GE KAPUR 60KVA', 'O24662', 'jours', 147068, NULL, NULL),
(135, 'GE 168KVA', 'O24671', 'jours', 303951, NULL, 23),
(136, 'BETONNIERE', 'Aucun', 'jours', 115130, NULL, 23),
(137, 'GE SDMO 110KVA N°06', 'Aucun', 'jours', 222705, NULL, 17),
(138, 'GE CHINOIX 8KVA N°01', 'O24660', 'jours', 81065, NULL, NULL),
(139, 'GE CHINOIX 8KVA N°02', 'O24661', 'jours', 81065, NULL, NULL),
(140, 'PRAMAC 220KVA', 'Aucun', 'jours', 408033, NULL, 6),
(141, 'GE VOLVO 300KVA', 'O24676', 'jours', 471497, NULL, 10),
(142, 'GE 145KVA', 'Aucun', 'jours', 162085, NULL, NULL),
(143, 'CAMION FOTON', 'Aucun', 'jours', 261853, NULL, NULL),
(144, 'NAVARA', 'Aucun', 'jours', 218200, NULL, NULL),
(145, 'ISUZU', 'Aucun', 'jours', 297491, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matricule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`)
) ;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `firstname`, `matricule`) VALUES
(23, 'Jocelyn@gmail.com', '[]', '$2y$13$ChX9hixgFAJ7DP9Orw194en4lQpSXkHCtkcLqUbwb1Xou2qVcMtoO', 'Miary', 'Jocelyn', '7530'),
(25, 'kiady@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$hodID1b0pls/8whRhVRVWOHtu6C.UjmopIRzk79LulTwWDDGwGLsm', 'Kiady', 'Aaron', 'S2510'),
(27, 'derrick.raherison@oti.mg', '[\"ROLE_ADMIN\"]', '$2y$13$UMb4CjYp0WOZ/wc3UICoBOfrzonho25zK4ZFnwrKD0bsCxHd5.bd.', 'RAHERISON', 'Altina Derrick', '25077'),
(29, 'miary.ramaherison@oti.mg', '[]', '$2y$13$eCLxxE.aYIhzPxfCuYkCAeMmS0ZdNRdAnGjHU1WzGB63.EQKygHOm', 'RAMAHERISON', 'Miariniaina Fiononana Jocelyn', '25083'),
(30, 'fano.rakotondrazaka@oti.mg', '[\"ROLE_ADMIN\"]', '$2y$13$mfS/bgKHivW0SaqsgKQAc.uOROfqDV2pH62Kz4gXvh15rIGB7jrGS', 'RAKOTONDRAZAKA', 'Andrianandrasana Fanomezantsoa Tiavina', '25116');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD CONSTRAINT `FK_F4DD61D316880AAF` FOREIGN KEY (`materiel_id`) REFERENCES `materiel` (`id`),
  ADD CONSTRAINT `FK_F4DD61D3D0C0049D` FOREIGN KEY (`chantier_id`) REFERENCES `chantier` (`id`);

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `FK_FE866410D0C0049D` FOREIGN KEY (`chantier_id`) REFERENCES `chantier` (`id`);

--
-- Contraintes pour la table `materiel`
--
ALTER TABLE `materiel`
  ADD CONSTRAINT `FK_18D2B091D0C0049D` FOREIGN KEY (`chantier_id`) REFERENCES `chantier` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

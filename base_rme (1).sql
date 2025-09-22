-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 08 août 2025 à 06:01
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
-- Base de données : `base_rme`
--

-- --------------------------------------------------------

--
-- Structure de la table `affectation`
--

DROP TABLE IF EXISTS `affectation`;
CREATE TABLE IF NOT EXISTS `affectation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `materiel_id` int NOT NULL,
  `chantier_id` int NOT NULL,
  `date_debut` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `date_fin` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `is_validated` tinyint(1) NOT NULL,
  `panne` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F4DD61D316880AAF` (`materiel_id`),
  KEY `IDX_F4DD61D3D0C0049D` (`chantier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `affectation`
--

INSERT INTO `affectation` (`id`, `materiel_id`, `chantier_id`, `date_debut`, `date_fin`, `is_validated`, `panne`) VALUES
(2, 78, 1, '2025-04-16 08:14:00', '2025-06-09 08:15:00', 0, 0),
(3, 104, 1, '2025-04-18 08:16:00', '2025-06-09 08:16:00', 0, 0),
(4, 132, 1, '2025-04-01 08:30:00', '2025-05-15 08:30:00', 0, 0),
(5, 93, 4, '2025-06-02 08:37:00', '2025-08-31 08:38:00', 0, 0),
(6, 106, 4, '2025-04-03 08:39:00', '2025-06-04 08:39:00', 0, 0),
(7, 121, 4, '2025-03-17 08:44:00', '2025-06-30 08:44:00', 0, 0),
(8, 122, 4, '2025-03-17 08:46:00', '2025-06-30 08:46:00', 0, 0),
(9, 123, 4, '2025-03-17 08:47:00', '2025-06-30 08:47:00', 0, 0),
(10, 65, 6, '2025-04-01 08:57:00', '2025-08-31 08:57:00', 0, 0),
(11, 134, 6, '2025-04-01 08:59:00', '2025-08-31 08:59:00', 0, 0),
(12, 55, 6, '2025-04-06 09:01:00', '2025-08-31 09:01:00', 0, 0),
(13, 17, 6, '2025-04-01 09:02:00', '2025-08-31 09:02:00', 0, 0),
(14, 25, 6, '2025-06-06 09:03:00', '2025-08-31 09:03:00', 0, 0),
(15, 126, 6, '2025-04-01 09:07:00', '2025-08-31 09:07:00', 0, 0),
(16, 127, 6, '2025-04-01 09:08:00', '2025-06-30 09:08:00', 0, 0),
(17, 128, 6, '2025-04-01 09:08:00', '2025-06-30 09:08:00', 0, 0),
(18, 135, 6, '2025-04-01 09:10:00', '2025-08-31 09:10:00', 0, 0),
(19, 117, 6, '2025-04-01 09:11:00', '2025-08-31 09:11:00', 0, 0),
(20, 62, 7, '2025-04-01 09:14:00', '2025-07-08 09:14:00', 0, 0),
(21, 60, 7, '2025-04-01 09:15:00', '2025-06-23 09:16:00', 0, 0),
(22, 56, 7, '2025-04-05 09:26:00', '2025-05-25 09:26:00', 0, 0),
(23, 68, 7, '2025-04-05 09:27:00', '2025-07-24 09:27:00', 0, 0),
(24, 79, 8, '2025-04-05 09:29:00', '2025-08-31 09:29:00', 0, 0),
(25, 131, 7, '2025-04-15 09:30:00', '2025-06-30 09:30:00', 0, 0),
(26, 127, 7, '2025-04-15 09:31:00', '2025-06-30 09:31:00', 0, 0),
(27, 128, 7, '2025-06-05 09:32:00', '2025-06-30 09:32:00', 0, 0),
(28, 12, 7, '2025-06-05 09:36:00', '2025-08-31 09:36:00', 0, 0),
(30, 129, 7, '2025-04-19 09:40:00', '2025-06-30 09:40:00', 0, 0),
(31, 107, 5, '2025-04-29 09:44:00', '2025-08-31 09:44:00', 0, 0),
(32, 124, 5, '2025-04-01 09:52:00', '2025-08-31 09:52:00', 0, 0),
(33, 24, 8, '2025-04-01 09:55:00', '2025-08-31 09:55:00', 0, 0),
(34, 32, 13, '2025-04-01 09:55:00', '2025-08-31 09:55:00', 0, 0),
(35, 31, 13, '2025-04-01 09:58:00', '2025-08-31 09:58:00', 0, 0),
(36, 63, 13, '2025-04-01 09:59:00', '2025-06-10 10:00:00', 0, 0),
(37, 141, 13, '2025-04-01 10:21:00', '2025-08-31 10:21:00', 0, 0),
(38, 138, 13, '2025-04-01 10:22:00', '2025-06-30 10:22:00', 0, 0),
(39, 101, 11, '2025-04-01 10:24:00', '2025-08-30 10:24:00', 0, 0),
(40, 88, 11, '2025-04-01 10:25:00', '2025-08-31 10:25:00', 0, 0),
(41, 23, 10, '2025-04-01 10:26:00', '2025-08-31 10:26:00', 0, 0),
(43, 117, 10, '2025-04-01 10:27:00', '2025-06-30 10:27:00', 0, 0),
(44, 84, 10, '2025-04-01 10:30:00', '2025-08-31 10:30:00', 0, 0),
(45, 87, 3, '2025-05-14 12:03:00', '2025-05-27 12:03:00', 0, 0),
(46, 97, 15, '2025-05-02 12:57:00', '2025-05-29 12:58:00', 0, 0),
(47, 92, 15, '2025-05-27 12:59:00', '2025-06-02 13:00:00', 0, 0),
(48, 76, 14, '2025-05-21 13:21:00', '2025-08-31 13:21:00', 0, 0),
(49, 86, 14, '2025-06-03 13:21:00', '2025-08-31 13:21:00', 0, 0),
(50, 105, 8, '2025-05-09 13:23:00', '2025-08-31 13:23:00', 0, 0),
(51, 91, 8, '2025-06-07 13:24:00', '2025-08-31 13:25:00', 0, 0),
(52, 82, 8, '2025-04-01 13:26:00', '2025-08-31 13:26:00', 0, 0),
(53, 66, 6, '2025-06-06 13:31:00', '2025-06-30 13:31:00', 0, 0),
(54, 66, 17, '2025-06-03 13:34:00', '2025-06-06 13:34:00', 0, 0),
(55, 59, 17, '2025-06-03 13:34:00', '2025-06-06 13:34:00', 0, 0),
(56, 103, 16, '2025-06-07 13:36:00', '2025-06-10 13:37:00', 0, 0),
(57, 119, 18, '2025-06-17 14:37:00', '2025-06-06 14:37:00', 0, 0),
(58, 119, 18, '2025-06-16 14:38:00', '2025-06-30 14:38:00', 0, 0),
(59, 120, 18, '2025-05-20 14:39:00', '2025-06-30 14:40:00', 0, 0),
(60, 96, 18, '2025-05-20 14:41:00', '2025-06-30 14:41:00', 0, 0),
(61, 97, 18, '2025-05-17 14:42:00', '2025-06-30 14:42:00', 0, 0),
(62, 94, 18, '2025-06-11 14:43:00', '2025-06-30 14:43:00', 0, 0),
(63, 113, 18, '2025-06-16 14:44:00', '2025-06-30 14:44:00', 0, 0),
(64, 115, 18, '2025-06-03 14:45:00', '2025-06-30 14:45:00', 0, 0),
(65, 99, 18, '2025-06-12 14:46:00', '2025-06-30 14:46:00', 0, 0),
(66, 100, 18, '2025-05-29 14:47:00', '2025-06-30 14:47:00', 0, 0),
(67, 106, 18, '2025-06-12 14:48:00', '2025-06-30 14:48:00', 0, 0),
(68, 108, 18, '2025-06-21 14:49:00', '2025-06-30 14:49:00', 0, 0),
(69, 110, 18, '2025-06-12 14:51:00', '2025-07-02 14:51:00', 0, 0),
(70, 111, 18, '2025-06-12 14:52:00', '2025-06-30 14:52:00', 0, 0),
(71, 146, 18, '2025-06-21 14:57:00', '2025-06-30 14:57:00', 0, 0),
(73, 103, 19, '2025-06-27 08:11:00', '2025-07-31 08:12:00', 0, 0),
(74, 105, 19, '2025-06-27 08:12:00', '2025-07-31 08:12:00', 0, 0),
(75, 60, 20, '2025-06-28 08:14:00', '2025-07-28 08:14:00', 0, 0),
(76, 71, 12, '2025-06-01 13:04:00', '2025-07-31 13:04:00', 0, 0),
(77, 110, 18, '2025-07-03 08:05:00', '2025-07-31 08:05:00', 0, 0),
(78, 86, 19, '2025-07-11 11:26:00', '2025-08-01 11:27:00', 0, 0),
(79, 120, 19, '2025-07-11 11:28:00', '2025-08-01 11:28:00', 0, 0),
(80, 94, 21, '2025-07-05 11:33:00', '2025-08-01 11:33:00', 0, 0),
(81, 86, 19, '2025-07-12 11:50:00', '2025-08-05 11:50:00', 0, 0),
(82, 120, 19, '2025-07-12 11:51:00', '2025-08-12 11:51:00', 0, 0),
(83, 21, 13, '2025-06-01 12:00:00', '2025-08-31 12:00:00', 0, 0),
(84, 154, 13, '2025-06-01 12:00:00', '2025-08-31 12:00:00', 0, 0),
(85, 152, 13, '2025-06-01 12:04:00', '2025-08-31 12:04:00', 0, 0),
(86, 70, 13, '2025-06-01 12:07:00', '2025-08-31 12:07:00', 0, 0),
(87, 155, 7, '2025-06-01 14:50:00', '2025-06-30 14:50:00', 0, 0),
(88, 102, 22, '2025-07-18 15:54:00', '2025-09-30 15:54:00', 0, 0),
(89, 66, 11, '2025-06-01 16:06:00', '2025-08-31 16:06:00', 0, 0),
(90, 11, 4, '2025-06-01 07:40:00', '2025-08-31 07:40:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `affectation_temp`
--

DROP TABLE IF EXISTS `affectation_temp`;
CREATE TABLE IF NOT EXISTS `affectation_temp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chantier_id` int DEFAULT NULL,
  `materiel_id` int DEFAULT NULL,
  `affectation_originale_id` int DEFAULT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_debut` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `date_fin` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `panne` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_EE38E2E45F37A13B` (`token`),
  KEY `IDX_EE38E2E4D0C0049D` (`chantier_id`),
  KEY `IDX_EE38E2E416880AAF` (`materiel_id`),
  KEY `IDX_EE38E2E4ACF87942` (`affectation_originale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `responsable_chantier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `chantier`
--

INSERT INTO `chantier` (`id`, `nom`, `code_chantier`, `adresse`, `nif`, `stat`, `responsable_chantier`, `email`) VALUES
(1, 'VITOGAZ A/MBOLA', 'C25049B', 'Ambohimanambola', '0000010039', '25114 11 2007 0 11026', 'Mr Rivo', 'rivo@oti.mg'),
(2, 'MADARAIL PK228', 'C24067C', 'PK228', '0000010039', '25114 11 2007 0 11026', 'Mr Rivo', 'rivo@oti.mg'),
(3, 'MADARAIL PK00', 'C23072C', 'Soarano PK00', '0000010039', '25114 11 2007 0 11026', 'Mr Rivo', 'rivo@oti.mg'),
(4, 'RAVINALA IVATO', 'C24065B', 'Ivato', '0000010039', '25114 11 2007 0 11026', 'Mr Rivo', 'rivo@oti.mg'),
(5, 'OTI Ambatobe', 'C23092C', 'Ambatobe', '0000010039', '25114 11 2007 0 11026', 'Mr Rivo', 'rivo@oti.mg'),
(6, 'Colas RN13', 'C24048E/C25019C/C25080C', 'RN13', '0000010039', '25114 11 2007 0 11026', 'Mr Radohery', 'radohery.rakotomalala@oti.mg'),
(7, 'GRT T010', 'C24167C', 'Toamasina', '0000010039', '25114 11 2007 0 11026', 'Mr Radohery', 'radohery.rakotomalala@oti.mg'),
(8, 'DMSA', 'C24058C', 'Toamasina', '0000010039', '25114 11 2007 0 11026', 'Mr Aroui', 'aroui@oti.mg'),
(9, 'VITOGAZ A/TRIMO', 'C24145B', 'Ambodratrimo', '0000010039', '25114 11 2007 0 11026', 'Mr Aroui', 'aroui@oti.mg'),
(10, 'TOTAL MAHATSARA', 'C24191C', 'Toamasina', '0000010039', '25114 11 2007 0 11026', 'Mr Rivo', 'rivo@oti.mg'),
(11, 'LPSA EHL', 'C24009C/C25028C', 'Ehoala', '0000010039', '25114 11 2007 0 11026', 'Mr Radohery', 'radohery.rakotomalala@oti.mg'),
(12, 'LPSA ATL', 'C24034C', 'Antalaha', '0000010039', '25114 11 2007 0 11026', 'Mr Radohery', 'radohery.rakotomalala@oti.mg'),
(13, 'TMF', 'Aucun', 'Toamasina', '0000010039', '25114 11 2007 0 11026', 'Aucun', ''),
(14, 'LPSA FNR', 'C25026C', 'Fianarantsoa', '0000010039', '25114 11 2007 0 11026', 'Mr Radohery', 'radohery.rakotomalala@oti.mg'),
(15, 'NEA MADAGASCAR', 'C24181B/C24182B', 'Andraharo', '0000010039', '25114 11 2007 0 11026', 'Mr Rivo', 'rivo@oti.mg'),
(16, 'Betsizaraina', 'Aucun', 'Betsizaraina', 'Aucun', 'Aucun', 'Aucun', ''),
(17, 'ECE', 'Aucun', 'Andranobevava', 'Aucun', 'Aucun', 'Aucun', ''),
(18, 'Site HELIOS', 'Aucun', 'Aucun', 'Aucun', 'Aucun', 'Mm Kanto', 'kanto@oti.mg'),
(19, 'LSPA NOSY BE', 'C25027E', 'NOSY BE', '0000010039', '25114 11 2007 0 11026', 'Mr Radohery', 'radohery.rakotomalala@oti.mg'),
(20, 'VITOGAZ MAHAJANGA', 'C24083B', 'Mahajanga', '0000010039', '25114 11 2007 0 11026', 'Mr Rivo', 'rivo@oti.mg'),
(21, 'LPSA Antsohihy', 'C25025C', 'Antsohihy', '0000010039', '25114 11 2007 0 11026', 'Mr Radohery', 'radohery.rakotomalala@oti.mg'),
(22, 'PENTA PORT TOAMASINA', 'C22116E', 'Toamasina', '0000010039', '25114 11 2007 0 11026', 'Mr Radohery', 'radohery.rakotomalala@oti.mg');

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

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chantier_id` int NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_creation` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `mois_facture` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `responsable_maintenance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FE866410D0C0049D` (`chantier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`id`, `chantier_id`, `numero`, `date_creation`, `mois_facture`, `responsable_maintenance`) VALUES
(1, 16, 'FA N°001-BASE-RME-2025', '2025-06-27 10:37:35', '2025-06-27 10:37:35', 'Kanto RAMPARISON'),
(2, 7, 'FA N°002-BASE-RME-2025', '2025-06-27 10:38:28', '2025-06-27 10:38:28', 'Kanto RAMPARISON'),
(3, 1, 'FA N°003-BASE-RME-2025', '2025-07-02 08:15:50', '2025-06-02 08:15:50', 'Kanto RAMPARISON'),
(5, 4, 'FA N°005-BASE-RME-2025', '2025-07-02 08:17:03', '2025-06-02 08:17:03', 'Kanto RAMPARISON'),
(6, 5, 'FA N°006-BASE-RME-2025', '2025-07-02 08:18:24', '2025-06-02 08:18:23', 'Kanto RAMPARISON'),
(7, 12, 'FA N°007-BASE-RME-2025', '2025-07-02 08:18:57', '2025-06-02 08:18:56', 'Kanto RAMPARISON'),
(8, 8, 'FA N°008-BASE-RME-2025', '2025-07-02 08:19:15', '2025-06-02 08:19:15', 'Kanto RAMPARISON'),
(9, 11, 'FA N°009-BASE-RME-2025', '2025-07-02 08:20:03', '2025-06-02 08:20:03', 'Kanto RAMPARISON'),
(10, 14, 'FA N°010-BASE-RME-2025', '2025-07-02 08:20:37', '2025-06-02 08:20:37', 'Kanto RAMPARISON'),
(12, 6, 'FA N°012-BASE-RME-2025', '2025-07-02 08:21:43', '2025-06-02 08:21:43', 'Kanto RAMPARISON'),
(13, 10, 'FA N°013-BASE-RME-2025', '2025-07-02 08:22:11', '2025-06-02 08:22:11', 'Kanto RAMPARISON'),
(14, 13, 'FA N°014-BASE-RME-2025', '2025-07-02 08:22:53', '2025-06-02 08:22:53', 'Kanto RAMPARISON'),
(15, 18, 'FA N°015-BASE-RME-2025', '2025-07-02 08:23:15', '2025-06-02 08:23:15', 'Kanto RAMPARISON'),
(20, 13, 'FA N°016-BASE-RME-2025', '2025-08-05 11:39:56', '2025-07-05 11:39:56', 'Kanto RAMPARISON'),
(21, 5, 'FA N°017-BASE-RME-2025', '2025-08-05 11:40:25', '2025-07-05 11:40:25', 'Kanto'),
(22, 19, 'FA N°018-BASE-RME-2025', '2025-08-05 11:52:01', '2025-07-05 11:52:01', 'Kanto RAMPARISON'),
(23, 13, 'FA N°019-BASE-RME-2025', '2025-08-05 12:08:33', '2025-07-05 12:08:33', 'Kanto RAMPARISON'),
(24, 8, 'FA N°020-BASE-RME-2025', '2025-08-05 12:17:31', '2025-07-05 12:17:30', 'Kanto RAMPARISON'),
(25, 10, 'FA N°021-BASE-RME-2025', '2025-08-05 12:41:39', '2025-07-05 12:41:38', 'Kanto RAMPARISON'),
(26, 7, 'FA N°022-BASE-RME-2025', '2025-08-05 15:01:39', '2025-07-05 15:01:39', 'Kanto RAMPARISON'),
(27, 14, 'FA N°023-BASE-RME-2025', '2025-08-05 15:13:59', '2025-07-05 15:13:58', 'Kanto RAMPARISON'),
(28, 20, 'FA N°024-BASE-RME-2025', '2025-08-05 15:20:50', '2025-07-05 15:20:50', 'Kanto RAMPARISON'),
(29, 21, 'FA N°025-BASE-RME-2025', '2025-08-05 15:41:03', '2025-07-05 15:41:02', 'Kanto RAMPARISON'),
(30, 22, 'FA N°026-BASE-RME-2025', '2025-08-05 15:55:59', '2025-07-05 15:55:58', 'Kanto RAMPARISON'),
(31, 4, 'FA N°027-BASE-RME-2025', '2025-08-06 07:59:46', '2025-07-06 07:59:46', 'Kanto RAMPARISON'),
(32, 5, 'FA N°028-BASE-RME-2025', '2025-08-06 08:01:32', '2025-07-06 08:01:32', 'Kanto RAMPARISON'),
(33, 11, 'FA N°029-BASE-RME-2025', '2025-08-06 08:03:49', '2025-07-06 08:03:49', 'Kanto RAMPARISON'),
(34, 6, 'FA N°030-BASE-RME-2025', '2025-08-06 08:08:02', '2025-07-06 08:08:02', 'Kanto RAMPARISON'),
(35, 7, 'FA N°031-BASE-RME-2025', '2025-08-06 13:36:28', '2025-07-06 13:36:28', 'Kanto RAMPARISON'),
(36, 1, 'FA N°032-BASE-RME-2025', '2025-08-07 14:00:48', '2025-07-07 14:00:48', 'Kanto RAMPARISON');

-- --------------------------------------------------------

--
-- Structure de la table `materiel`
--

DROP TABLE IF EXISTS `materiel`;
CREATE TABLE IF NOT EXISTS `materiel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chantier_id` int DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_affaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix_unitaire` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kilometrage` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_18D2B091D0C0049D` (`chantier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `materiel`
--

INSERT INTO `materiel` (`id`, `chantier_id`, `libelle`, `code_affaire`, `unite`, `prix_unitaire`, `description`, `kilometrage`) VALUES
(8, NULL, 'Ford 6723 TBC', 'O24593', 'Jour', 206839, NULL, NULL),
(9, NULL, 'LOGAN 6905 TAV', 'O24591', 'Jour', 135442, NULL, NULL),
(10, NULL, 'FORD 9825 TAV', 'O24592', 'Jour', 198906, NULL, NULL),
(11, NULL, 'FORD 6722 TBC', 'O24594', 'Jour', 206839, NULL, NULL),
(12, NULL, 'FORD 7434 TBB', 'O24595', 'Jour', 206839, NULL, NULL),
(13, NULL, 'FORD 6519 TAL', 'O24596', 'Jour', 175107, NULL, NULL),
(14, NULL, 'FORD 3165 TAU', 'O24597', 'Jour', 175107, NULL, NULL),
(15, NULL, 'FORD 2759TBN', 'O24598', 'Jour', 222705, NULL, NULL),
(16, NULL, 'FORD 9895TBS', 'O24599', 'Jour', 216076, NULL, NULL),
(17, NULL, 'FORD 9896TBS', 'O24600', 'Jour', 216076, NULL, NULL),
(18, NULL, 'MITSUBISHI 9251 TBB', 'O24601', 'Jour', 175107, NULL, NULL),
(19, NULL, 'MITSUBISHI 8172WWT', 'O24602', 'Jour', 214772, NULL, NULL),
(20, NULL, 'TOYOTA HJ75 4659 TBN', 'O24603', 'Jour', 116402, NULL, NULL),
(21, NULL, 'MAXUS', 'O24604', 'Jour', 236370, NULL, NULL),
(22, NULL, 'TOYOTA HILUX 27676WWT', 'O24605', 'Jour', 230638, NULL, NULL),
(23, NULL, 'SPRINTER 5146TBD', 'O24606', 'Jour', 175107, NULL, NULL),
(24, NULL, 'SPRINTER 4X4', 'O24607', 'Jour', 230638, NULL, NULL),
(25, NULL, 'VARIO 814D', 'O24608', 'Jour', 190973, NULL, NULL),
(26, NULL, 'TOYOTA GX', 'O24609', 'Jour', 175107, NULL, NULL),
(27, NULL, 'BAIC H2 N°1  15696WWT', 'O24610', 'Jour', 143375, NULL, NULL),
(28, NULL, 'BAIC H2 N°2 53649WWT', 'O24611', 'Jour', 143375, NULL, NULL),
(29, NULL, 'BAIC H2 N°4 1615WWT', 'O24612', 'Jour', 143375, NULL, NULL),
(30, NULL, 'BAIC H2 N° 3 1614WWT', 'O24613', 'Jour', 143375, NULL, NULL),
(31, NULL, 'WINGLE 5', 'O24614', 'Jour', 175107, NULL, NULL),
(32, NULL, 'VARIO 618D', 'O24615', 'Jour', 175107, NULL, NULL),
(33, NULL, 'ZNA', 'O24616', 'Jour', 151308, NULL, NULL),
(34, NULL, 'BENELLI 58150 WWT', 'O24617', 'Jour', 53363, NULL, NULL),
(35, NULL, 'HONDA 125 5746 TBF', 'O24618', 'Jour', 50983, NULL, NULL),
(36, NULL, 'HONDA ACE 125 DK 12549 WWT', 'O24619', 'Jour', 50983, NULL, NULL),
(37, NULL, 'HONDA CGX 125 55074 WWT', 'O24620', 'Jour', 50983, NULL, NULL),
(38, NULL, 'HONDA ACE CB 110CC', 'O24621', 'Jour', 50983, NULL, NULL),
(39, NULL, 'PACIFIC CITY YBR 59656WWT', 'O24622', 'Jour', 51719, NULL, NULL),
(40, NULL, 'YAMAHA CRUX 00532WWA', 'O24623', 'Jour', 50931, NULL, NULL),
(41, NULL, 'YAMAHA CRUX 0529WWA', 'O24624', 'Jour', 50821, NULL, NULL),
(42, NULL, 'YAMAHA CRUX 58389WWT', 'O24625', 'Jour', 51206, NULL, NULL),
(43, NULL, 'YAMAHA CRUX 20366WWT', 'O24626', 'Jour', 51226, NULL, NULL),
(44, NULL, 'CROSS PACIFIC DIRT 62139WWT', 'O24627', 'Jour', 48819, NULL, NULL),
(45, NULL, 'CROSS PACIFIC DIRT 62140WWT', 'O24628', 'Jour', 48819, NULL, NULL),
(46, NULL, 'PACIFIC DIRT 150CC 53186 WWT', 'O24629', 'jour', 48921, NULL, NULL),
(47, NULL, 'PACIFIC ROUTIER 150CC 63034WWT', 'O24630', 'jours', 48921, NULL, NULL),
(48, NULL, 'LIFAN 150-13 3618 TBR', 'O24631', 'jours', 48921, NULL, NULL),
(49, NULL, 'LIFAN 125 CC 3578 TBR', 'O24632', 'jours', 48921, NULL, NULL),
(50, NULL, 'JMC CARRYING 9852WWT', 'O24635', 'jours', 183040, NULL, NULL),
(51, NULL, 'JMC CARRYING 0634TBS', 'O24636', 'jours', 183040, NULL, NULL),
(52, NULL, 'MIDLUM 180 2983TBC', 'O24637', 'jours', 288519, NULL, NULL),
(53, NULL, 'INTERNATIONAL', 'O24638', 'jours', 288519, NULL, NULL),
(54, NULL, 'MIDLUM 220 9375 TBB', 'O24639', 'jours', 256787, NULL, NULL),
(55, NULL, 'KERAX 3008TBC', 'O24640', 'jours', 447180, NULL, NULL),
(56, NULL, 'ACTROS 4741TBL', 'O24641', 'jours', 526511, NULL, NULL),
(57, NULL, 'PORTE CONTENEUR 1927AH', 'O24642', 'jours', 183163, NULL, NULL),
(58, NULL, 'PORTE CHAR 4841TBF', 'O24643', 'jours', 246628, NULL, NULL),
(59, NULL, 'PREMIUM 9310 TBE', 'O24644', 'jours', 288519, NULL, NULL),
(60, NULL, 'GRUE 35T', 'O24645', 'jours', 2383831, NULL, NULL),
(61, NULL, 'DEMAG AC50', 'O24646', 'jours', 3335796, NULL, NULL),
(62, NULL, 'MERLO ROTO', 'O24647', 'jours', 556619, NULL, NULL),
(63, NULL, 'MERLO P4017', 'O24648', 'jours', 437623, NULL, NULL),
(64, NULL, 'MANITOU 1335 SL', 'O24649', 'jours', 397958, NULL, NULL),
(65, NULL, 'MANITOU MT 732', 'O24650', 'jours', 256787, NULL, NULL),
(66, NULL, 'GRUE 13T HYDRA', 'O24651', 'jours', 367850, NULL, NULL),
(67, NULL, 'FOREUSE DOMINE', 'O24652', 'jours', 477288, NULL, NULL),
(68, NULL, 'TRACTOPELLE', 'O24653', 'jours', 556619, NULL, NULL),
(69, NULL, 'DUMPER', 'O24655', 'jours', 225055, NULL, NULL),
(70, NULL, 'GE KAPUR 125 KVA N°01', 'O24665', 'jours', 249372, NULL, NULL),
(71, NULL, 'GE KAPUR 125 KVA N°02', 'O24666', 'jours', 249372, NULL, NULL),
(72, NULL, 'GE KOFO 125 KVA N°01', 'O24667', 'jours', 249372, NULL, NULL),
(73, NULL, 'GE KOFO 125 KVA  N°02', 'O24668', 'jours', 249372, NULL, NULL),
(74, NULL, 'GE KAPUR 125 KVA N°03', 'O24669', 'jours', 249372, NULL, NULL),
(75, NULL, 'GE KAPUR 125 KVA N°04', 'O24670', 'jours', 249372, NULL, NULL),
(76, NULL, 'GE GREAVES POWER 160KVA', 'O24674', 'jours', 293797, NULL, NULL),
(77, NULL, 'GE JAGUAR 250 KVA', 'O24675', 'jours', 408033, NULL, NULL),
(78, NULL, 'MILLER 350', 'O24680', 'jours', 89950, NULL, NULL),
(79, NULL, 'MILLER 700', 'O24681', 'jours', 108990, NULL, NULL),
(80, NULL, 'COMPRESSEUR IR 7/170', 'O24682', 'jours', 225573, NULL, NULL),
(81, NULL, 'COMPRESSEUR IR P 180', 'O24683', 'jours', 146242, NULL, NULL),
(82, NULL, 'COMPRESSEUR XAHS 306 N°01', 'O24684', 'jours', 249372, NULL, NULL),
(83, NULL, 'COMPRESSEUR XAHS 306 N°02', 'O24685', 'jours', 249372, NULL, NULL),
(84, NULL, 'COMPRESSEUR KAESER M22', 'O24686', 'jours', 114510, NULL, NULL),
(85, NULL, 'COMPRESSEUR CHINOIS', 'O24687', 'jours', 146242, NULL, NULL),
(86, NULL, 'COMPRESSEUR XAS 97 N°01', 'O24688', 'jours', 138309, NULL, NULL),
(87, NULL, 'COMPRESSEUR XAS 97 N°02', 'O24689', 'jours', 138309, NULL, NULL),
(88, NULL, 'COMPRESSEUR XAS 97 N°03', 'O24690', 'jours', 138309, NULL, NULL),
(89, NULL, 'COMPRESSEUR ZR3 N°01', 'O24691', 'jours', 170042, NULL, NULL),
(90, NULL, 'COMPRESSEUR 100L ROUGE', 'O24692', 'jours', 16792, NULL, NULL),
(91, NULL, 'COMPRESSEUR LIUTECH', 'O24693', 'jours', 249372, NULL, NULL),
(92, NULL, 'GE FIRMAN 5KVA JAUNE N°01', 'Aucun', 'jours', 95028, NULL, NULL),
(93, NULL, 'GE FIRMAN 5KVA JAUNE N°02', 'Aucun', 'jours', 95028, NULL, NULL),
(94, NULL, 'GE FIRMAN 5KVA JAUNE N°03', 'Aucun', 'jours', 95028, NULL, NULL),
(95, NULL, 'GE FIRMAN 5KVA JAUNE N°04', 'Aucun', 'jours', 95028, NULL, NULL),
(96, NULL, 'GE FIRMAN 5KVA JAUNE N°05', 'Aucun', 'jours', 95028, NULL, NULL),
(97, NULL, 'GE FIRMAN 5KVA JAUNE N°06', 'Aucun', 'jours', 95028, NULL, NULL),
(99, NULL, 'GE FIRMAN 5KVA JAUNE N°07', 'Aucun', 'jours', 95028, NULL, NULL),
(100, NULL, 'GE FIRMAN 5KVA JAUNE N°08', 'Aucun', 'jours', 95028, NULL, NULL),
(101, NULL, 'GE SDMO 110KVA N°01', 'Aucun', 'jours', 264874, NULL, NULL),
(102, NULL, 'GE SDMO 110KVA N°02', 'Aucun', 'jours', 264874, NULL, NULL),
(103, NULL, 'GE SDMO 110KVA N°03', 'Aucun', 'jours', 264874, NULL, NULL),
(104, NULL, 'GE SDMO 110KVA N°04', 'Aucun', 'jours', 264874, NULL, NULL),
(105, NULL, 'GE SDMO 110KVA N°05', 'Aucun', 'jours', 264874, NULL, NULL),
(106, NULL, 'GE 5KVA ROUGE N°01', 'Aucun', 'jours', 95028, NULL, NULL),
(107, NULL, 'GE 5KVA ROUGE N°02', 'Aucun', 'jours', 95028, NULL, NULL),
(108, NULL, 'GE 5KVA ROUGE N°03', 'Aucun', 'jours', 95028, NULL, NULL),
(109, NULL, 'GE 5KVA ROUGE N°04', 'Aucun', 'jours', 95028, NULL, NULL),
(110, NULL, 'GE 5KVA ROUGE N°05', 'Aucun', 'jours', 95028, NULL, NULL),
(111, NULL, 'GE 5KVA ROUGE N°06', 'Aucun', 'jours', 95028, NULL, NULL),
(112, NULL, 'Betonnière N°01', 'Aucun', 'jours', 115130, NULL, NULL),
(113, NULL, 'Betonnière N°02', 'Aucun', 'jours', 115130, NULL, NULL),
(114, NULL, 'Betonnière N°03', 'Aucun', 'jours', 115130, NULL, NULL),
(115, NULL, 'Betonnière N°04', 'Aucun', 'jours', 115130, NULL, NULL),
(116, NULL, 'Betonnière N°05', 'Aucun', 'jours', 115130, NULL, NULL),
(117, NULL, 'Betonnière N°06', 'Aucun', 'jours', 115130, NULL, NULL),
(118, NULL, 'Betonnière N°07', 'Aucun', 'jours', 115130, NULL, NULL),
(119, NULL, 'Betonnière N°08', 'Aucun', 'jours', 115130, NULL, NULL),
(120, NULL, 'Betonnière N°09', 'Aucun', 'jours', 115130, NULL, NULL),
(121, NULL, 'POSTE 220V', 'Aucun', 'jours', 91303, NULL, NULL),
(122, NULL, 'MARTEAU PIQUEUR', 'Aucun', 'jours', 92387, NULL, NULL),
(123, NULL, 'PERVIBRATEUR', 'Aucun', 'jours', 92103, NULL, NULL),
(124, NULL, 'KUBOTA', 'Aucun', 'jours', 109190, NULL, NULL),
(125, NULL, 'KAPUR 30KVA', 'Aucun', 'jours', 108990, NULL, NULL),
(126, NULL, 'EKOMAXX 220', 'Aucun', 'jours', 103490, NULL, NULL),
(127, NULL, 'LINCOLN 380V', 'Aucun', 'jours', 104407, NULL, NULL),
(128, NULL, 'MEGAFORCE 220V', 'Aucun', 'jours', 103490, NULL, NULL),
(129, NULL, 'DONGFENG', 'Aucun', 'jours', 99443, NULL, NULL),
(130, NULL, 'MITSUBISHI 6207TCA', 'Aucun', 'jours', 229304, NULL, NULL),
(131, NULL, 'poste pegasus 380', 'Aucun', 'jours', 104407, NULL, NULL),
(132, NULL, 'GE FIRMAN 40KVA', 'O24677', 'jours', 121683, NULL, NULL),
(133, NULL, 'POSTE 380', 'Aucun', 'jours', 95330, NULL, NULL),
(134, NULL, 'GE KAPUR 60KVA', 'O24662', 'jours', 147068, NULL, NULL),
(135, NULL, 'GE 168KVA', 'O24671', 'jours', 303951, NULL, NULL),
(136, NULL, 'BETONNIERE', 'Aucun', 'jours', 115130, NULL, NULL),
(137, NULL, 'GE SDMO 110KVA N°06', 'Aucun', 'jours', 222705, NULL, NULL),
(138, NULL, 'GE CHINOIX 8KVA N°01', 'O24660', 'jours', 81065, NULL, NULL),
(139, NULL, 'GE CHINOIX 8KVA N°02', 'O24661', 'jours', 81065, NULL, NULL),
(140, NULL, 'PRAMAC 220KVA', 'Aucun', 'jours', 408033, NULL, NULL),
(141, NULL, 'GE VOLVO 300KVA', 'O24676', 'jours', 471497, NULL, NULL),
(142, NULL, 'GE 145KVA', 'Aucun', 'jours', 162085, NULL, NULL),
(143, NULL, 'CAMION FOTON', 'Aucun', 'jours', 261853, NULL, NULL),
(144, NULL, 'NAVARA', 'Aucun', 'jours', 218200, NULL, NULL),
(145, NULL, 'ISUZU', 'Aucun', 'jours', 297491, NULL, NULL),
(146, NULL, 'GE 3Kva essence', 'Aucun', 'jours', 95019, NULL, NULL),
(147, NULL, 'Compacteur HONG YAN', 'Aucun', 'jours', 134691, NULL, NULL),
(148, NULL, 'Bétonnière 350L', 'Aucun', 'jours', 115130, NULL, NULL),
(149, NULL, 'CHARGEUR L&T9020', 'Aucun', 'jours', 816298, NULL, NULL),
(150, NULL, 'Compacteur LT 491', 'Aucun', 'jours', 424469, NULL, NULL),
(151, NULL, 'Excavatrice KOMATSU', 'Aucun', 'jours', 871103, NULL, NULL),
(152, 13, 'GRUE ACE F150', 'Aucun', 'jours', 651970, NULL, NULL),
(153, 13, 'GE VOLVO 300KVA', 'O24676', 'jours', 471497, NULL, NULL),
(154, 13, 'Bus bleu Dong Feng', 'Aucun', 'jours', 646672, NULL, NULL),
(155, 7, 'GE QAS 168', 'O24671', 'jours', 303951, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `firstname`, `matricule`) VALUES
(1, 'kiady@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$vlYO5Zz9k6uBHa5vmSKBHu65B/3EN2S8kFvotqs8Vhs.RrP.JUuVu', 'RAMIJOROA', 'Lalaina Kiady Aaron', 'S2510'),
(2, 'fano.rakotondrazaka@oti.mg', '[\"ROLE_ADMIN\"]', '$2y$13$TJ/YD53NVc60o7STphIP2OfKHjFdkwfIBDsAB3fA/J56FyzuOLr22', 'RAKOTONDRAZAKA', 'Andrianandrasana Fanomezantsoa Tiavina', '25116'),
(3, 'derrick.raherison@oti.mg', '[\"ROLE_ADMIN\"]', '$2y$13$AVjR3U0WjwP.oqKsSVNIduG1MayKmkCz3s8S8dF5IqFdJu.UwzCOO', 'RAHERISON', 'Altina Derrick', '25077'),
(4, 'nary@oti.mg', '[\"ROLE_ADMIN\"]', '$2y$13$oT65j16aR0pRQ0lGYC1LLe8bAVln2dk9ohDWHL5tzr.NDsSOWCdsi', 'randriamahazo', 'Razafindranary', '00002'),
(6, 'andrianirina.rakotoarivony@oti.mg', '[\"ROLE_DIRECTEUR\"]', '$2y$13$M1f09NBRaBjDs02/5eYDheQqy1MHOAugAkl17ZKBWjk1doIeg1qDK', 'RAKOTOARIVONY', 'Andrianirina', '25080'),
(7, 'angelo.staelen@oti.mg', '[\"ROLE_DIRECTEUR\"]', '$2y$13$MiV0rA9GgHhTYVJFv1MXbeFEkNyMT25BT4CccM6x0knM4LiIGhqNK', 'Staelen', 'Angelo', '25079'),
(8, 'aroui@oti.mg', '[\"ROLE_DIRECTEUR\"]', '$2y$13$HHzUHc3bLvxeogtdhdTQcOwbo.5tZHVZjhLYubMvzzfoHUCYbBMXS', 'ROUSSAFI', 'Aroui', '21189'),
(9, 'cyrine@oti.mg', '[\"ROLE_DIRECTEUR\"]', '$2y$13$u4gYA58H5ILYUyn12P3ka.VfiBf25OT9tpSr/.EYzeyqWAe0cyBYq', 'BEN AHMED', 'Cyrine', '21188'),
(10, 'hery.randria@oti.mg', '[\"ROLE_DIRECTEUR\"]', '$2y$13$fDEmWqbt/YY0Ffc7WwGEY.T1zOZ1wb1p4jl0pJMR.0J28yAUcxis.', 'RANDRIA', 'Hery Nirina', '25162'),
(11, 'kanto@oti.mg', '[\"ROLE_DIRECTEUR\"]', '$2y$13$QFbIh8RNuGqerSGREe77Xeecd3Yq6JIp2lA8Ek6B/zt4kNmiCzwFu', 'RAMPARISON', 'Kanto', '21418'),
(12, 'radohery.rakotomalala@oti.mg', '[\"ROLE_DIRECTEUR\"]', '$2y$13$h.tGGC5DobunoTVwHIYY2u6zd/AyFiz4DjDs4O14eJ31SHGXo93L6', 'RAKOTOMALALA', 'Radohery', '19059'),
(13, 'rivo@oti.mg', '[\"ROLE_DIRECTEUR\"]', '$2y$13$ShbA.teBx2Xm0eDAi/M1jOX24nr2mPhK47fKwNvHfK02L.7lqgb1a', 'RAZAFIMAHALEO', 'Rivo', '21286'),
(14, 'andrianina.randriamiharisoa@volta.mg', '[\"ROLE_DIRECTEUR\"]', '$2y$13$EJnYXg7VCZYNWoUvPAm01OwC6LHFBjIetGQaZr1ZxWAY/6lCRwRqC', 'RANDRIAMIHARISOA', 'Andrianina', '169'),
(15, 'alex1.herivier@oti.mg', '[\"ROLE_IP\"]', '$2y$13$.hATtHfuIKJYHzMztxMGge9K0S4HGKSKdj4ZOyd8m71YrBykZAPwi', 'HERIVIER', 'Alexandre', '21373'),
(16, 'ando.diamondraniaina@oti.mg', '[\"ROLE_IP\"]', '$2y$13$ctCDiHabMrOAtWWmpmx1S.sSMDz784CcJrRDtToj9aynfgpMO9JsC', 'DIAMONDRANIAINA', 'Andoninosy Josepha', '23007'),
(17, 'dieudonne.rakotonandrasana@oti.mg', '[\"ROLE_IP\"]', '$2y$13$DeztlcCpH2RPEsmDRx60quRjlee2c3xx9VK2I26eNOvGm5u5PA3ye', 'RAKOTONANDRASANA', 'Dieudonné', '25288'),
(18, 'ezra.nandrianina@oti.mg', '[\"ROLE_IP\"]', '$2y$13$xDK8v67zXma1IrUAnE4IZOD427yyk4o9wdjLT1D.iVJQdvqYUvYgu', 'NANDRIANINA', 'Ezra', '24252'),
(19, 'florence.ralantomampionona@oti.mg', '[\"ROLE_IP\"]', '$2y$13$u8iA/iM/PH7d./u6j4uNq.IYZPyPBa5nDYa02m0wAsSZBCM5SGyYO', 'RALANTOMAMPIONONA', 'Rova Florence', '23150'),
(20, 'fy.raherimandimby@oti.mg', '[\"ROLE_IP\"]', '$2y$13$NUpx7MZv7WnGk26sRaDTFuD7.1Ag2gynqLxpgh.JghAcOHfLoX4BC', 'RAHERIMANDIMBY', 'Fy Ihantana', '25032'),
(21, 'israel@oti.mg', '[\"ROLE_IP\"]', '$2y$13$5HdusGk9pE3HassKzNDgI.Tuqoc/OOzJIdy2mIRpEk4JdzzhmxUwW', 'RAKOTONIRINA', 'Fenohery Israël', '21285'),
(22, 'lantohydro@oti.mg', '[\"ROLE_IP\"]', '$2y$13$z.XM0zlmqPjyoHR2/FsJDeJ0Hu28gTXMnA968CxBYdi9WS1HZKcYq', 'RAFANOMEZANTSOA', 'Lanto', 'F2001'),
(23, 'lantosoa@oti.mg', '[\"ROLE_IP\"]', '$2y$13$YFSMQDKZ.iukn/asCUeC0ONYIxZYBCsKUQRAw5btFPN98nnhZIzmm', 'RAJAONARIVONY', 'Lantosoa', '10113'),
(24, 'larry.tolojanahary@oti.mg', '[\"ROLE_IP\"]', '$2y$13$UURCHT3pJrQnzBJ1W9P/Z.eAmc/GvQtcBZ6inuRSv2/JVUiQcV2ty', 'TOLOJANAHARY', 'Larry', 'none'),
(25, 'lova.mampionona@oti.mg', '[\"ROLE_IP\"]', '$2y$13$8Q/X.lRESpZQl0Ona/tU8uMPHMDCbYfA/A2JJW5dRGDj3IapeNWRa', 'RAKOTONDRAVOAVY', 'Lova Mampionona', '21372'),
(26, 'mahery.randriamanamihaja@oti.mg', '[\"ROLE_IP\"]', '$2y$13$9BuQW5ov5L.qpDfx18nDZOMk6sXkSyEXoHl1sVem9X6P7HNU8PiY6', 'RANDRIAMANAMIHAJA', 'Mahery', '22162'),
(27, 'nandrianina.raoelinjatovo@oti.mg', '[\"ROLE_IP\"]', '$2y$13$pbPM56k0/Bf32ViU2YCFkufS.6oJ1G9yMFG2adu9CLCPFFksij/L.', 'RAOELINJATOVO', 'Nandrianina', '24018'),
(28, 'onja.andrianirina@oti.mg', '[\"ROLE_IP\"]', '$2y$13$/PDyWJQuYzEuR9hu.jWt.Ot7uLc8H4sKIoS3CX5CTaXROzCK4lDDC', 'ANDRIANIRINA', 'Onjaniaina', '25068'),
(29, 'robert.rajaonarison@oti.mg', '[\"ROLE_IP\"]', '$2y$13$6JXbbF7eJRVC8e3/pYTehunBk7OHq3G55.vQ4NUtkI8r7skor2csS', 'RAJAONARISON', 'Robert', '25180'),
(30, 'rojo.razanabelo@oti.mg', '[\"ROLE_IP\"]', '$2y$13$4sIvr7FjxauF7Q72WxKu8eTeFObPEVUwAqcdrLb0wk0KC20.p9tee', 'RAZANABELO', 'Rojo', 'OT25001'),
(31, 'romeo@oti.mg', '[\"ROLE_IP\"]', '$2y$13$BKxLK0Igu8kOyOo9R.C5L.0mtXxLTRGgUD7etoH08xcwIQgUSCAJW', 'ANDRIANARY', 'Roméo', '18079'),
(32, 'sariaka.randriamanohisoa@oti.mg', '[\"ROLE_IP\"]', '$2y$13$rfj0SNU/RIkGgZdAReZOTuXFJTViNA4O3L56v7DjXnwC4v5Ol1U9O', 'RANDRIAMANOHISOA', 'Sariaka Fitahiana', '25270'),
(33, 'tanjona.rajaonarivo@oti.mg', '[\"ROLE_IP\"]', '$2y$13$9tSw15.b3Nmep4zjPkts1e9jLy6wyKjt1W2Aa7z6c2B6zQkBqeBgC', 'RAJAONARIVO', 'Tanjona', 'none'),
(34, 'toavina@oti.mg', '[\"ROLE_IP\"]', '$2y$13$/i653c1t/2ZXrLHMTdo5MO8iIDydjrpt7Y5sQlcwCl22xI0vm9BP2', 'RAKOTONDRAMARO', 'Andonirina Toavina', '21218'),
(35, 'tojoniaina@oti.mg', '[\"ROLE_IP\"]', '$2y$13$Dc1iYYTaVzqFwSOIdwXuxOyzY5E7BywJO66fdTSU8fkwf6M4n3I/a', 'RANDRIANARIMANANA', 'Daniela Tojoniaina', '19104'),
(36, 'tovo@oti.mg', '[\"ROLE_IP\"]', '$2y$13$AjHiREwh16w3BaoohURFwOhtX2oobpvthgZcyMBFlW4f0uTbf4zG2', 'RANAIVOJAONA', 'Tovoherinjaka Lolah', '14680'),
(37, 'tsanta.rakotoarivelo@oti.mg', '[\"ROLE_IP\"]', '$2y$13$/sk8NElUg41JsKTgUK/DC.m/C4nc5VcY.xKtqGcdyNZZjkBWbkJka', 'RAKOTOARIVELO', 'Tsanta Ny Aina', '25070'),
(38, 'vahatra.randiranirina@oti.mg', '[\"ROLE_IP\"]', '$2y$13$gVRvSoGPBmZUxVO95awQpuPPqVoiVtWbS5AWLzcMbJAzQgEXAgbeW', 'RANDRIANIRINA', 'Vahatra', 'none');

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
-- Contraintes pour la table `affectation_temp`
--
ALTER TABLE `affectation_temp`
  ADD CONSTRAINT `FK_EE38E2E416880AAF` FOREIGN KEY (`materiel_id`) REFERENCES `materiel` (`id`),
  ADD CONSTRAINT `FK_EE38E2E4ACF87942` FOREIGN KEY (`affectation_originale_id`) REFERENCES `affectation` (`id`),
  ADD CONSTRAINT `FK_EE38E2E4D0C0049D` FOREIGN KEY (`chantier_id`) REFERENCES `chantier` (`id`);

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

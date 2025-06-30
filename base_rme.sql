-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 30 juin 2025 à 11:16
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
  PRIMARY KEY (`id`),
  KEY `IDX_F4DD61D316880AAF` (`materiel_id`),
  KEY `IDX_F4DD61D3D0C0049D` (`chantier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `affectation`
--

INSERT INTO `affectation` (`id`, `materiel_id`, `chantier_id`, `date_debut`, `date_fin`, `is_validated`) VALUES
(2, 78, 1, '2025-04-16 08:14:00', '2025-06-09 08:15:00', 0),
(3, 104, 1, '2025-04-18 08:16:00', '2025-06-09 08:16:00', 0),
(4, 132, 1, '2025-04-01 08:30:00', '2025-05-15 08:30:00', 0),
(5, 96, 4, '2025-06-02 08:37:00', '2025-06-30 08:38:00', 0),
(6, 106, 4, '2025-04-03 08:39:00', '2025-06-04 08:39:00', 0),
(7, 121, 4, '2025-03-17 08:44:00', '2025-06-30 08:44:00', 0),
(8, 122, 4, '2025-03-17 08:46:00', '2025-06-30 08:46:00', 0),
(9, 123, 4, '2025-03-17 08:47:00', '2025-06-30 08:47:00', 0),
(10, 65, 6, '2025-04-01 08:57:00', '2025-06-30 08:57:00', 0),
(11, 134, 6, '2025-04-01 08:59:00', '2025-06-30 08:59:00', 0),
(12, 55, 6, '2025-04-06 09:01:00', '2025-06-30 09:01:00', 0),
(13, 17, 6, '2025-04-01 09:02:00', '2025-06-30 09:02:00', 0),
(14, 25, 6, '2025-06-06 09:03:00', '2025-06-30 09:03:00', 0),
(15, 126, 6, '2025-04-01 09:07:00', '2025-06-30 09:07:00', 0),
(16, 127, 6, '2025-04-01 09:08:00', '2025-06-30 09:08:00', 0),
(17, 128, 6, '2025-04-01 09:08:00', '2025-06-30 09:08:00', 0),
(18, 135, 6, '2025-04-01 09:10:00', '2025-06-30 09:10:00', 0),
(19, 117, 6, '2025-04-01 09:11:00', '2025-06-30 09:11:00', 0),
(20, 62, 7, '2025-04-01 09:14:00', '2025-06-30 09:14:00', 0),
(21, 60, 7, '2025-04-01 09:15:00', '2025-06-23 09:16:00', 0),
(22, 56, 7, '2025-04-05 09:26:00', '2025-05-25 09:26:00', 0),
(23, 68, 7, '2025-04-05 09:27:00', '2025-06-30 09:27:00', 0),
(24, 79, 7, '2025-04-05 09:29:00', '2025-06-30 09:29:00', 0),
(25, 131, 7, '2025-04-15 09:30:00', '2025-06-30 09:30:00', 0),
(26, 127, 7, '2025-04-15 09:31:00', '2025-06-30 09:31:00', 0),
(27, 128, 7, '2025-06-05 09:32:00', '2025-06-30 09:32:00', 0),
(28, 12, 7, '2025-06-05 09:36:00', '2025-06-30 09:36:00', 0),
(29, 19, 7, '2025-04-05 09:39:00', '2025-06-30 09:39:00', 0),
(30, 129, 7, '2025-04-19 09:40:00', '2025-06-30 09:40:00', 0),
(31, 107, 5, '2025-04-29 09:44:00', '2025-06-30 09:44:00', 0),
(32, 124, 5, '2025-04-01 09:52:00', '2025-06-30 09:52:00', 0),
(33, 24, 13, '2025-04-01 09:55:00', '2025-06-30 09:55:00', 0),
(34, 32, 13, '2025-04-01 09:55:00', '2025-06-30 09:55:00', 0),
(35, 8, 13, '2025-04-01 09:58:00', '2025-06-30 09:58:00', 0),
(36, 63, 13, '2025-04-01 09:59:00', '2025-06-10 10:00:00', 0),
(37, 141, 13, '2025-04-01 10:21:00', '2025-06-30 10:21:00', 0),
(38, 138, 13, '2025-04-01 10:22:00', '2025-06-30 10:22:00', 0),
(39, 101, 11, '2025-04-01 10:24:00', '2025-06-30 10:24:00', 0),
(40, 88, 11, '2025-04-01 10:25:00', '2025-06-30 10:25:00', 0),
(41, 23, 10, '2025-04-01 10:26:00', '2025-06-30 10:26:00', 0),
(42, 12, 10, '2025-04-01 10:27:00', '2025-06-30 10:27:00', 0),
(43, 117, 10, '2025-04-01 10:27:00', '2025-06-30 10:27:00', 0),
(44, 122, 10, '2025-04-01 10:30:00', '2025-06-30 10:30:00', 0),
(45, 87, 3, '2025-05-14 12:03:00', '2025-05-27 12:03:00', 0),
(46, 97, 15, '2025-05-02 12:57:00', '2025-05-29 12:58:00', 0),
(47, 92, 15, '2025-05-27 12:59:00', '2025-06-02 13:00:00', 0),
(48, 76, 14, '2025-05-21 13:21:00', '2025-06-30 13:21:00', 0),
(49, 86, 14, '2025-06-03 13:21:00', '2025-06-30 13:21:00', 0),
(50, 105, 8, '2025-05-09 13:23:00', '2025-06-30 13:23:00', 0),
(51, 138, 8, '2025-06-07 13:24:00', '2025-05-27 13:25:00', 0),
(52, 8, 8, '2025-04-01 13:26:00', '2025-06-30 13:26:00', 0),
(53, 66, 6, '2025-06-06 13:31:00', '2025-06-30 13:31:00', 0),
(54, 66, 17, '2025-06-03 13:34:00', '2025-06-06 13:34:00', 0),
(55, 59, 17, '2025-06-03 13:34:00', '2025-06-06 13:34:00', 0),
(56, 103, 16, '2025-06-07 13:36:00', '2025-06-10 13:37:00', 0),
(57, 119, 18, '2025-06-17 14:37:00', '2025-06-06 14:37:00', 0),
(58, 119, 18, '2025-06-16 14:38:00', '2025-06-30 14:38:00', 0),
(59, 120, 18, '2025-05-20 14:39:00', '2025-06-30 14:40:00', 0),
(60, 96, 18, '2025-05-20 14:41:00', '2025-06-30 14:41:00', 0),
(61, 97, 18, '2025-05-17 14:42:00', '2025-06-30 14:42:00', 0),
(62, 94, 18, '2025-06-11 14:43:00', '2025-06-30 14:43:00', 0),
(63, 113, 18, '2025-06-16 14:44:00', '2025-06-30 14:44:00', 0),
(64, 115, 18, '2025-06-03 14:45:00', '2025-06-30 14:45:00', 0),
(65, 99, 18, '2025-06-12 14:46:00', '2025-06-30 14:46:00', 0),
(66, 100, 18, '2025-05-29 14:47:00', '2025-06-30 14:47:00', 0),
(67, 106, 18, '2025-06-12 14:48:00', '2025-06-30 14:48:00', 0),
(68, 108, 18, '2025-06-21 14:49:00', '2025-06-30 14:49:00', 0),
(69, 110, 18, '2025-06-12 14:51:00', '2025-06-30 14:51:00', 0),
(70, 111, 18, '2025-06-12 14:52:00', '2025-06-30 14:52:00', 0),
(71, 146, 18, '2025-06-21 14:57:00', '2025-06-30 14:57:00', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `chantier`
--

INSERT INTO `chantier` (`id`, `nom`, `code_chantier`, `adresse`, `nif`, `stat`, `contact_client`, `responsable_chantier`) VALUES
('VITOGAZ A/MBOLA', 'C25049B', 'Ambohimanambola', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Nandrianina'),
('MADARAIL PK228', 'C24067C', 'PK228', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Nandrianina'),
('MADARAIL PK00', 'C23072C', 'Soarano PK00', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Nandrianina'),
('RAVINALA IVATO', 'C24065B', 'Ivato', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Nandrianina/Toavina'),
('OTI Ambatobe', 'C23092C', 'Ambatobe', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Notiavina'),
('Colas RN13', 'C24048E/C25019C/C25080C', 'RN13', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Lanto'),
('GRT T010', 'C24167C', 'Toamasina', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Israel'),
('DMSA', 'C24058C', 'Toamasina', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Roméo'),
('VITOGAZ A/TRIMO', 'C24145B', 'Ambodratrimo', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Nandrianina'),
('TOTAL MAHATSARA', 'C24191C', 'Toamasina', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Israel'),
('LPSA EHL', 'C24009C/C25028C', 'Ehoala', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Alex'),
('LPSA ATL', 'C24034C', 'Antalaha', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Tojo'),
('TMF', 'Aucun', 'Toamasina', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Aucun'),
('LPSA FNR', 'C25026C', 'Fianarantsoa', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Tojo'),
('NEA MADAGASCAR', 'C24181B/C24182B', 'Andraharo', '0000010039', '25114 11 2007 0 11026', 'Aucun', 'Mahery'),
('Betsizaraina', 'Aucun', 'Betsizaraina', 'Aucun', 'Aucun', 'Aucun', 'Aucun'),
('ECE', 'Aucun', 'Andranobevava', 'Aucun', 'Aucun', 'Aucun', 'Aucun'),
('Site HELIOS', 'Aucun', 'Aucun', 'Aucun', 'Aucun', 'Aucun', 'Aucun');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`id`, `chantier_id`, `numero`, `date_creation`, `mois_facture`, `responsable_maintenance`) VALUES
(1, 16, 'FA N°001-BASE-RME-2025', '2025-06-27 10:37:35', '2025-06-27 10:37:35', 'Kanto RAMPARISON'),
(2, 7, 'FA N°002-BASE-RME-2025', '2025-06-27 10:38:28', '2025-06-27 10:38:28', 'Kanto RAMPARISON');

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
  PRIMARY KEY (`id`),
  KEY `IDX_18D2B091D0C0049D` (`chantier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `materiel`
--

INSERT INTO `materiel` (`libelle`, `code_affaire`, `unite`, `prix_unitaire`, `description`) VALUES
('Ford 6723 TBC', 'O24593', 'Jour', 206839, NULL),
('LOGAN 6905 TAV', 'O24591', 'Jour', 135442, NULL),
('FORD 9825 TAV', 'O24592', 'Jour', 198906, NULL),
('FORD 6722 TBC', 'O24594', 'Jour', 206839, NULL),
('FORD 7434 TBB', 'O24595', 'Jour', 206839, NULL),
('FORD 6519 TAL', 'O24596', 'Jour', 175107, NULL),
('FORD 3165 TAU', 'O24597', 'Jour', 175107, NULL),
('FORD 2759TBN', 'O24598', 'Jour', 222705, NULL),
('FORD 9895TBS', 'O24599', 'Jour', 216076, NULL),
('FORD 9896TBS', 'O24600', 'Jour', 216076, NULL),
('MITSUBISHI 9251 TBB', 'O24601', 'Jour', 175107, NULL),
('MITSUBISHI 8172WWT', 'O24602', 'Jour', 214772, NULL),
('TOYOTA HJ75 4659 TBN', 'O24603', 'Jour', 116402, NULL),
('MAXUS', 'O24604', 'Jour', 236370, NULL),
('TOYOTA HILUX 27676WWT', 'O24605', 'Jour', 230638, NULL),
('SPRINTER 5146TBD', 'O24606', 'Jour', 175107, NULL),
('SPRINTER 4X4', 'O24607', 'Jour', 230638, NULL),
('VARIO 814D', 'O24608', 'Jour', 190973, NULL),
('TOYOTA GX', 'O24609', 'Jour', 175107, NULL),
('BAIC H2 N°1  15696WWT', 'O24610', 'Jour', 143375, NULL),
('BAIC H2 N°2 53649WWT', 'O24611', 'Jour', 143375, NULL),
('BAIC H2 N°4 1615WWT', 'O24612', 'Jour', 143375, NULL),
('BAIC H2 N° 3 1614WWT', 'O24613', 'Jour', 143375, NULL),
('WINGLE 5', 'O24614', 'Jour', 175107, NULL),
('VARIO 618D', 'O24615', 'Jour', 175107, NULL),
('ZNA', 'O24616', 'Jour', 151308, NULL),
('BENELLI 58150 WWT', 'O24617', 'Jour', 53363, NULL),
('HONDA 125 5746 TBF', 'O24618', 'Jour', 50983, NULL),
('HONDA ACE 125 DK 12549 WWT', 'O24619', 'Jour', 50983, NULL),
('HONDA CGX 125 55074 WWT', 'O24620', 'Jour', 50983, NULL),
('HONDA ACE CB 110CC', 'O24621', 'Jour', 50983, NULL),
('PACIFIC CITY YBR 59656WWT', 'O24622', 'Jour', 51719, NULL),
('YAMAHA CRUX 00532WWA', 'O24623', 'Jour', 50931, NULL),
('YAMAHA CRUX 0529WWA', 'O24624', 'Jour', 50821, NULL),
('YAMAHA CRUX 58389WWT', 'O24625', 'Jour', 51206, NULL),
('YAMAHA CRUX 20366WWT', 'O24626', 'Jour', 51226, NULL),
('CROSS PACIFIC DIRT 62139WWT', 'O24627', 'Jour', 48819, NULL),
('CROSS PACIFIC DIRT 62140WWT', 'O24628', 'Jour', 48819, NULL),
('PACIFIC DIRT 150CC 53186 WWT', 'O24629', 'jour', 48921, NULL),
('PACIFIC ROUTIER 150CC 63034WWT', 'O24630', 'jours', 48921, NULL),
('LIFAN 150-13 3618 TBR', 'O24631', 'jours', 48921, NULL),
('LIFAN 125 CC 3578 TBR', 'O24632', 'jours', 48921, NULL),
('JMC CARRYING 9852WWT', 'O24635', 'jours', 183040, NULL),
('JMC CARRYING 0634TBS', 'O24636', 'jours', 183040, NULL),
('MIDLUM 180 2983TBC', 'O24637', 'jours', 288519, NULL),
('INTERNATIONAL', 'O24638', 'jours', 288519, NULL),
('MIDLUM 220 9375 TBB', 'O24639', 'jours', 256787, NULL),
('KERAX 3008TBC', 'O24640', 'jours', 447180, NULL),
('ACTROS 4741TBL', 'O24641', 'jours', 526511, NULL),
('PORTE CONTENEUR 1927AH', 'O24642', 'jours', 183163, NULL),
('PORTE CHAR 4841TBF', 'O24643', 'jours', 246628, NULL),
('PREMIUM 9310 TBE', 'O24644', 'jours', 288519, NULL),
('GRUE 35T', 'O24645', 'jours', 2383831, NULL),
('DEMAG AC50', 'O24646', 'jours', 3335796, NULL),
('MERLO ROTO', 'O24647', 'jours', 556619, NULL),
('MERLO P4017', 'O24648', 'jours', 437623, NULL),
('MANITOU 1335 SL', 'O24649', 'jours', 397958, NULL),
('MANITOU MT 732', 'O24650', 'jours', 256787, NULL),
('GRUE 13T HYDRA', 'O24651', 'jours', 367850, NULL),
('FOREUSE DOMINE', 'O24652', 'jours', 477288, NULL),
('TRACTOPELLE', 'O24653', 'jours', 556619, NULL),
('DUMPER', 'O24655', 'jours', 225055, NULL),
('GE KAPUR 125 KVA N°01', 'O24665', 'jours', 249372, NULL),
('GE KAPUR 125 KVA N°02', 'O24666', 'jours', 249372, NULL),
('GE KOFO 125 KVA N°01', 'O24667', 'jours', 249372, NULL),
('GE KOFO 125 KVA  N°02', 'O24668', 'jours', 249372, NULL),
('GE KAPUR 125 KVA N°03', 'O24669', 'jours', 249372, NULL),
('GE KAPUR 125 KVA N°04', 'O24670', 'jours', 249372, NULL),
('GE GREAVES POWER 160KVA', 'O24674', 'jours', 293797, NULL),
('GE JAGUAR 250 KVA', 'O24675', 'jours', 408033, NULL),
('MILLER 350', 'O24680', 'jours', 89950, NULL),
('MILLER 700', 'O24681', 'jours', 108990, NULL),
('COMPRESSEUR IR 7/170', 'O24682', 'jours', 225573, NULL),
('COMPRESSEUR IR P 180', 'O24683', 'jours', 146242, NULL),
('COMPRESSEUR XAHS 306 N°01', 'O24684', 'jours', 249372, NULL),
('COMPRESSEUR XAHS 306 N°02', 'O24685', 'jours', 249372, NULL),
('COMPRESSEUR KAESER M22', 'O24686', 'jours', 114510, NULL),
('COMPRESSEUR CHINOIS', 'O24687', 'jours', 146242, NULL),
('COMPRESSEUR XAS 97 N°01', 'O24688', 'jours', 138309, NULL),
('COMPRESSEUR XAS 97 N°02', 'O24689', 'jours', 138309, NULL),
('COMPRESSEUR XAS 97 N°03', 'O24690', 'jours', 138309, NULL),
('COMPRESSEUR ZR3 N°01', 'O24691', 'jours', 170042, NULL),
('COMPRESSEUR 100L ROUGE', 'O24692', 'jours', 16792, NULL),
('COMPRESSEUR LIUTECH', 'O24693', 'jours', 249372, NULL),
('GE FIRMAN 5KVA JAUNE N°01', 'Aucun', 'jours', 95028, NULL),
('GE FIRMAN 5KVA JAUNE N°02', 'Aucun', 'jours', 95028, NULL),
('GE FIRMAN 5KVA JAUNE N°03', 'Aucun', 'jours', 95028, NULL),
('GE FIRMAN 5KVA JAUNE N°04', 'Aucun', 'jours', 95028, NULL),
('GE FIRMAN 5KVA JAUNE N°05', 'Aucun', 'jours', 95028, NULL),
('GE FIRMAN 5KVA JAUNE N°06', 'Aucun', 'jours', 95028, NULL),
('GE FIRMAN 5KVA JAUNE N°07', 'Aucun', 'jours', 95028, NULL),
('GE FIRMAN 5KVA JAUNE N°08', 'Aucun', 'jours', 95028, NULL),
('GE SDMO 110KVA N°01', 'Aucun', 'jours', 264874, NULL),
('GE SDMO 110KVA N°02', 'Aucun', 'jours', 264874, NULL),
('GE SDMO 110KVA N°03', 'Aucun', 'jours', 264874, NULL),
('GE SDMO 110KVA N°04', 'Aucun', 'jours', 264874, NULL),
('GE SDMO 110KVA N°05', 'Aucun', 'jours', 264874, NULL),
('GE 5KVA ROUGE N°01', 'Aucun', 'jours', 95028, NULL),
('GE 5KVA ROUGE N°02', 'Aucun', 'jours', 95028, NULL),
('GE 5KVA ROUGE N°03', 'Aucun', 'jours', 95028, NULL),
('GE 5KVA ROUGE N°04', 'Aucun', 'jours', 95028, NULL),
('GE 5KVA ROUGE N°05', 'Aucun', 'jours', 95028, NULL),
('GE 5KVA ROUGE N°06', 'Aucun', 'jours', 95028, NULL),
('Betonnière N°01', 'Aucun', 'jours', 115130, NULL),
('Betonnière N°02', 'Aucun', 'jours', 115130, NULL),
('Betonnière N°03', 'Aucun', 'jours', 115130, NULL),
('Betonnière N°04', 'Aucun', 'jours', 115130, NULL),
('Betonnière N°05', 'Aucun', 'jours', 115130, NULL),
('Betonnière N°06', 'Aucun', 'jours', 115130, NULL),
('Betonnière N°07', 'Aucun', 'jours', 115130, NULL),
('Betonnière N°08', 'Aucun', 'jours', 115130, NULL),
('Betonnière N°09', 'Aucun', 'jours', 115130, NULL),
('POSTE 220V', 'Aucun', 'jours', 91303, NULL),
('MARTEAU PIQUEUR', 'Aucun', 'jours', 92387, NULL),
('PERVIBRATEUR', 'Aucun', 'jours', 92103, NULL),
('KUBOTA', 'Aucun', 'jours', 109190, NULL),
('KAPUR 30KVA', 'Aucun', 'jours', 108990, NULL),
('EKOMAXX 220', 'Aucun', 'jours', 103490, NULL),
('LINCOLN 380V', 'Aucun', 'jours', 104407, NULL),
('MEGAFORCE 220V', 'Aucun', 'jours', 103490, NULL),
('DONGFENG', 'Aucun', 'jours', 99443, NULL),
('MITSUBISHI 6207TCA', 'Aucun', 'jours', 229304, NULL),
('poste pegasus 380', 'Aucun', 'jours', 104407, NULL),
('GE FIRMAN 40KVA', 'O24677', 'jours', 121683, NULL),
('POSTE 380', 'Aucun', 'jours', 95330, NULL),
('GE KAPUR 60KVA', 'O24662', 'jours', 147068, NULL),
('GE 168KVA', 'O24671', 'jours', 303951, NULL),
('BETONNIERE', 'Aucun', 'jours', 115130, NULL),
('GE SDMO 110KVA N°06', 'Aucun', 'jours', 222705, NULL),
('GE CHINOIX 8KVA N°01', 'O24660', 'jours', 81065, NULL),
('GE CHINOIX 8KVA N°02', 'O24661', 'jours', 81065, NULL),
('PRAMAC 220KVA', 'Aucun', 'jours', 408033, NULL),
('GE VOLVO 300KVA', 'O24676', 'jours', 471497, NULL),
('GE 145KVA', 'Aucun', 'jours', 162085, NULL),
('CAMION FOTON', 'Aucun', 'jours', 261853, NULL),
('NAVARA', 'Aucun', 'jours', 218200, NULL),
('ISUZU', 'Aucun', 'jours', 297491, NULL),
('GE 3Kva essence', 'Aucun', 'jours', 95019, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `firstname`, `matricule`) VALUES
(1, 'kiady@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$vlYO5Zz9k6uBHa5vmSKBHu65B/3EN2S8kFvotqs8Vhs.RrP.JUuVu', 'RAMIJOROA', 'Lalaina Kiady Aaron', 'S2510'),
(2, 'fano.rakotondrazaka@oti.mg', '[\"ROLE_ADMIN\"]', '$2y$13$TJ/YD53NVc60o7STphIP2OfKHjFdkwfIBDsAB3fA/J56FyzuOLr22', 'RAKOTONDRAZAKA', 'Andrianandrasana Fanomezantsoa Tiavina', '25116');

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

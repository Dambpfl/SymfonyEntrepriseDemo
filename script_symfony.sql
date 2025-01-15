-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour symfonyentreprisedemo
CREATE DATABASE IF NOT EXISTS `symfonyentreprisedemo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `symfonyentreprisedemo`;

-- Listage de la structure de table symfonyentreprisedemo. doctrine_migration_versions
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Listage des données de la table symfonyentreprisedemo.doctrine_migration_versions : ~1 rows (environ)
REPLACE INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20250115133952', '2025-01-15 13:40:47', 238);

-- Listage de la structure de table symfonyentreprisedemo. employe
CREATE TABLE IF NOT EXISTS `employe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entreprise_id` int NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` datetime DEFAULT NULL,
  `date_embauche` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F804D3B9A4AEAFEA` (`entreprise_id`),
  CONSTRAINT `FK_F804D3B9A4AEAFEA` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table symfonyentreprisedemo.employe : ~4 rows (environ)
REPLACE INTO `employe` (`id`, `entreprise_id`, `nom`, `prenom`, `date_naissance`, `date_embauche`) VALUES
	(1, 1, 'SMAIL', 'Stephane', '1982-09-15 16:22:35', '2019-01-15 16:22:43'),
	(2, 1, 'MATHIEU', 'Quentin', '2085-04-15 16:24:21', '2022-06-16 16:24:31'),
	(3, 1, 'MURMANN', 'Mickael', '1980-06-15 16:24:58', '2010-05-15 16:25:23'),
	(4, 2, 'ANDRES', 'Mathilde', '1994-03-17 16:25:43', '2015-03-15 16:25:50');

-- Listage de la structure de table symfonyentreprisedemo. entreprise
CREATE TABLE IF NOT EXISTS `entreprise` (
  `id` int NOT NULL AUTO_INCREMENT,
  `raison_sociale` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_creation` datetime NOT NULL,
  `adresse` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table symfonyentreprisedemo.entreprise : ~3 rows (environ)
REPLACE INTO `entreprise` (`id`, `raison_sociale`, `date_creation`, `adresse`, `cp`, `ville`) VALUES
	(1, 'ELAN FORMATION', '2025-01-15 15:39:30', '14 rue du rhone', '67100', 'STRASBOURG'),
	(2, 'COACTIS', '2025-01-15 15:40:04', '10 rue de la charmille', '67200', 'STRASBOURG'),
	(3, 'ENTREPRISE', '2025-01-15 15:40:57', '1 rue principale', '68000', 'COLMAR');

-- Listage de la structure de table symfonyentreprisedemo. messenger_messages
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

-- Listage des données de la table symfonyentreprisedemo.messenger_messages : ~0 rows (environ)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

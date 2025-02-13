-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: fishbowl_test
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activeFlag` bit(1) NOT NULL,
  `countedAsAvailable` bit(1) NOT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `defaultCustomerId` int DEFAULT NULL,
  `defaultFlag` bit(1) NOT NULL,
  `defaultVendorId` int DEFAULT NULL,
  `description` varchar(252) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locationGroupId` int NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentId` int DEFAULT NULL,
  `pickable` bit(1) NOT NULL,
  `receivable` bit(1) NOT NULL,
  `sortOrder` int DEFAULT NULL,
  `typeId` int NOT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKlc2j6104g2nrydu089volt013` (`name`,`locationGroupId`),
  KEY `locationNameIdx` (`name`),
  KEY `FKrm7ei310f0tvnlciel8wlrjaa` (`defaultCustomerId`),
  KEY `FKo7qub3x04qf08t0p66p4kjo62` (`defaultVendorId`),
  KEY `FKdbr8c3q0091lx99rftn63xd6o` (`locationGroupId`),
  KEY `FK5b4bqcapyw1o0negakd8x1r4h` (`typeId`),
  CONSTRAINT `FK5b4bqcapyw1o0negakd8x1r4h` FOREIGN KEY (`typeId`) REFERENCES `locationtype` (`id`),
  CONSTRAINT `FKdbr8c3q0091lx99rftn63xd6o` FOREIGN KEY (`locationGroupId`) REFERENCES `locationgroup` (`id`),
  CONSTRAINT `FKo7qub3x04qf08t0p66p4kjo62` FOREIGN KEY (`defaultVendorId`) REFERENCES `vendor` (`id`),
  CONSTRAINT `FKrm7ei310f0tvnlciel8wlrjaa` FOREIGN KEY (`defaultCustomerId`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:59:05

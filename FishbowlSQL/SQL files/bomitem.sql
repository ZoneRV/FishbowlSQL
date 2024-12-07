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
-- Table structure for table `bomitem`
--

DROP TABLE IF EXISTS `bomitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bomitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `addToService` bit(1) NOT NULL,
  `bomId` int NOT NULL,
  `bomItemGroupId` int DEFAULT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupDefault` bit(1) NOT NULL,
  `maxQty` decimal(28,9) DEFAULT NULL,
  `minQty` decimal(28,9) DEFAULT NULL,
  `oneTimeItem` bit(1) NOT NULL,
  `partId` int DEFAULT NULL,
  `priceAdjustment` decimal(28,9) DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `quantity` decimal(28,9) NOT NULL,
  `sortIdConfig` int NOT NULL,
  `stage` bit(1) NOT NULL,
  `stageBomId` int DEFAULT NULL,
  `typeId` int NOT NULL,
  `uomId` int DEFAULT NULL,
  `useItemLocation` bit(1) NOT NULL,
  `variableQty` bit(1) NOT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKafsutqv162b95w8f00ykatr2q` (`bomId`),
  KEY `FKafig77wjhrxl0nhfvl3rwg42m` (`bomItemGroupId`),
  KEY `FKtews6ftw81upyqqyiwq111asn` (`partId`),
  KEY `FK99c2vt6pl1q6018pt4bgprt2e` (`typeId`),
  KEY `FK7n42xf709goe0ddpgmskkyw5c` (`uomId`),
  CONSTRAINT `FK7n42xf709goe0ddpgmskkyw5c` FOREIGN KEY (`uomId`) REFERENCES `uom` (`id`),
  CONSTRAINT `FK99c2vt6pl1q6018pt4bgprt2e` FOREIGN KEY (`typeId`) REFERENCES `bomitemtype` (`id`),
  CONSTRAINT `FKafig77wjhrxl0nhfvl3rwg42m` FOREIGN KEY (`bomItemGroupId`) REFERENCES `bomitemgroup` (`id`),
  CONSTRAINT `FKafsutqv162b95w8f00ykatr2q` FOREIGN KEY (`bomId`) REFERENCES `bom` (`id`),
  CONSTRAINT `FKtews6ftw81upyqqyiwq111asn` FOREIGN KEY (`partId`) REFERENCES `part` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:55

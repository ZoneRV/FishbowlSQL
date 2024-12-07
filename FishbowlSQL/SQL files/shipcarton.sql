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
-- Table structure for table `shipcarton`
--

DROP TABLE IF EXISTS `shipcarton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipcarton` (
  `id` int NOT NULL AUTO_INCREMENT,
  `additionalHandling` bit(1) NOT NULL,
  `carrierId` int NOT NULL,
  `cartonNum` int NOT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `freightAmount` decimal(28,9) DEFAULT NULL,
  `freightWeight` decimal(28,9) DEFAULT NULL,
  `height` decimal(28,9) DEFAULT NULL,
  `insuredValue` decimal(28,9) DEFAULT NULL,
  `len` decimal(28,9) DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `orderTypeId` int NOT NULL,
  `shipId` int NOT NULL,
  `shipperRelease` bit(1) NOT NULL,
  `sizeUOM` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sscc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trackingNum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weightUOM` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` decimal(28,9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK23q2knnra6kbmfenxh8a1y3kt` (`carrierId`),
  KEY `shipCartonOrderIdIdx` (`orderId`),
  KEY `FKm0uqqtsfdrr7o0m7hdtyosbak` (`orderTypeId`),
  KEY `FKgoymbo8vkasddndg5ben4hp6x` (`shipId`),
  CONSTRAINT `FK23q2knnra6kbmfenxh8a1y3kt` FOREIGN KEY (`carrierId`) REFERENCES `carrier` (`id`),
  CONSTRAINT `FKgoymbo8vkasddndg5ben4hp6x` FOREIGN KEY (`shipId`) REFERENCES `ship` (`id`),
  CONSTRAINT `FKm0uqqtsfdrr7o0m7hdtyosbak` FOREIGN KEY (`orderTypeId`) REFERENCES `ordertype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:59:02

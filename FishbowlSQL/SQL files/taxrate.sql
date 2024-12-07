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
-- Table structure for table `taxrate`
--

DROP TABLE IF EXISTS `taxrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxrate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountingHash` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountingId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeFlag` bit(1) NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `defaultFlag` bit(1) NOT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderTypeId` int DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `taxAccountId` int DEFAULT NULL,
  `typeCode` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `typeId` int NOT NULL,
  `unitCost` decimal(28,9) DEFAULT NULL,
  `vendorId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKmik31fyg32pxhh3ogjfnqbe6q` (`name`),
  KEY `FK4p83gy522cshq5r4wn9l2xcme` (`orderTypeId`),
  KEY `FK7yro48jdp8us6w877mdtrf7qi` (`taxAccountId`),
  KEY `FKi7xub8a6vro89g9v0cyen4cd4` (`typeId`),
  KEY `FKtoec9s9y0ir9d9jc9n5jbtrvd` (`vendorId`),
  CONSTRAINT `FK4p83gy522cshq5r4wn9l2xcme` FOREIGN KEY (`orderTypeId`) REFERENCES `ordertype` (`id`),
  CONSTRAINT `FK7yro48jdp8us6w877mdtrf7qi` FOREIGN KEY (`taxAccountId`) REFERENCES `asaccount` (`id`),
  CONSTRAINT `FKi7xub8a6vro89g9v0cyen4cd4` FOREIGN KEY (`typeId`) REFERENCES `taxratetype` (`id`),
  CONSTRAINT `FKtoec9s9y0ir9d9jc9n5jbtrvd` FOREIGN KEY (`vendorId`) REFERENCES `vendor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:59:00

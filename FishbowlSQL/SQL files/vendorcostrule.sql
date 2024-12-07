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
-- Table structure for table `vendorcostrule`
--

DROP TABLE IF EXISTS `vendorcostrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendorcostrule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `description` varchar(252) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partId` int NOT NULL,
  `qty` decimal(28,9) DEFAULT NULL,
  `unitCost` decimal(28,9) DEFAULT NULL,
  `userId` int NOT NULL,
  `vendorId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKkh1qjce9pu68ahmi4f4rmk958` (`name`,`vendorId`,`partId`),
  KEY `FKp530eoh5nd0jb6mcbyofg3tj5` (`partId`),
  KEY `FKg6bc62hmsios5yv36nthb2kdw` (`userId`),
  KEY `FK28xtr178lx6dwthse9a07m9tw` (`vendorId`),
  CONSTRAINT `FK28xtr178lx6dwthse9a07m9tw` FOREIGN KEY (`vendorId`) REFERENCES `vendor` (`id`),
  CONSTRAINT `FKg6bc62hmsios5yv36nthb2kdw` FOREIGN KEY (`userId`) REFERENCES `sysuser` (`id`),
  CONSTRAINT `FKp530eoh5nd0jb6mcbyofg3tj5` FOREIGN KEY (`partId`) REFERENCES `part` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

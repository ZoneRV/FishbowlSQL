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
-- Table structure for table `postso`
--

DROP TABLE IF EXISTS `postso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime(6) NOT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `datePosted` datetime(6) DEFAULT NULL,
  `extRefNumber` varchar(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extTxnHash` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extTxnId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extTxnNumber` int DEFAULT NULL,
  `journalPosted` bit(1) NOT NULL,
  `journalTxnId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postDate` datetime(6) DEFAULT NULL,
  `soId` int NOT NULL,
  `statusId` int NOT NULL,
  `totalTax` decimal(28,9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc1drjhmt7ltmm9vs6m75hme2r` (`soId`),
  KEY `FKgqet0nyr7vssg1mcrb6cl14u2` (`statusId`),
  CONSTRAINT `FKc1drjhmt7ltmm9vs6m75hme2r` FOREIGN KEY (`soId`) REFERENCES `so` (`id`),
  CONSTRAINT `FKgqet0nyr7vssg1mcrb6cl14u2` FOREIGN KEY (`statusId`) REFERENCES `postorderstatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:51

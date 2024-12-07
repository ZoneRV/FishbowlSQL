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
-- Table structure for table `soitem_aud`
--

DROP TABLE IF EXISTS `soitem_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soitem_aud` (
  `id` int NOT NULL,
  `REV` bigint NOT NULL,
  `REVTYPE` tinyint DEFAULT NULL,
  `adjustAmount` decimal(28,9) DEFAULT NULL,
  `adjustPercentage` decimal(28,9) DEFAULT NULL,
  `customerPartNum` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateLastFulfillment` datetime(6) DEFAULT NULL,
  `dateScheduledFulfillment` datetime(6) DEFAULT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchangeSOLineItem` int DEFAULT NULL,
  `itemAdjustId` int DEFAULT NULL,
  `markupCost` decimal(28,9) DEFAULT NULL,
  `mcTotalPrice` decimal(28,9) DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `productId` int DEFAULT NULL,
  `productNum` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `qtyFulfilled` decimal(28,9) DEFAULT NULL,
  `qtyOrdered` decimal(28,9) DEFAULT NULL,
  `qtyPicked` decimal(28,9) DEFAULT NULL,
  `qtyToFulfill` decimal(28,9) DEFAULT NULL,
  `revLevel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showItemFlag` bit(1) DEFAULT NULL,
  `soId` int DEFAULT NULL,
  `soLineItem` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `taxId` int DEFAULT NULL,
  `taxRate` double DEFAULT NULL,
  `taxableFlag` bit(1) DEFAULT NULL,
  `totalCost` decimal(28,9) DEFAULT NULL,
  `totalPrice` decimal(28,9) DEFAULT NULL,
  `typeId` int DEFAULT NULL,
  `unitPrice` decimal(28,9) DEFAULT NULL,
  `uomId` int DEFAULT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`,`REV`),
  KEY `FKir2jruirik6jplu8qf4nj1qm6` (`REV`),
  CONSTRAINT `FKir2jruirik6jplu8qf4nj1qm6` FOREIGN KEY (`REV`) REFERENCES `revinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:58

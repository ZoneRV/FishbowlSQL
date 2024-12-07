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
-- Table structure for table `poitem_aud`
--

DROP TABLE IF EXISTS `poitem_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poitem_aud` (
  `id` int NOT NULL,
  `REV` bigint NOT NULL,
  `REVTYPE` tinyint DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `dateLastFulfillment` datetime(6) DEFAULT NULL,
  `dateScheduledFulfillment` datetime(6) DEFAULT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcTotalCost` decimal(28,9) DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `partId` int DEFAULT NULL,
  `outsourcedPartId` int DEFAULT NULL,
  `partNum` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poId` int DEFAULT NULL,
  `poLineItem` int DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `qtyFulfilled` decimal(28,9) DEFAULT NULL,
  `qtyPicked` decimal(28,9) DEFAULT NULL,
  `qtyToFulfill` decimal(28,9) DEFAULT NULL,
  `repairFlag` bit(1) DEFAULT NULL,
  `revLevel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `taxId` int DEFAULT NULL,
  `taxRate` double DEFAULT NULL,
  `tbdCostFlag` bit(1) DEFAULT NULL,
  `totalCost` decimal(28,9) DEFAULT NULL,
  `typeId` int DEFAULT NULL,
  `unitCost` decimal(28,9) DEFAULT NULL,
  `uomId` int DEFAULT NULL,
  `vendorPartNum` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outsourcedPartNumber` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `outsourcedPartDescription` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`,`REV`),
  KEY `FK1agmw2fkd9wcnwtp1iklffvq0` (`REV`),
  CONSTRAINT `FK1agmw2fkd9wcnwtp1iklffvq0` FOREIGN KEY (`REV`) REFERENCES `revinfo` (`id`)
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

-- Dump completed on 2024-12-05 17:59:05

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
-- Table structure for table `part_aud`
--

DROP TABLE IF EXISTS `part_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part_aud` (
  `id` int NOT NULL,
  `REV` bigint NOT NULL,
  `REVTYPE` tinyint DEFAULT NULL,
  `abcCode` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountingHash` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountingId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeFlag` bit(1) DEFAULT NULL,
  `adjustmentAccountId` int DEFAULT NULL,
  `alertNote` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alwaysManufacture` bit(1) DEFAULT NULL,
  `cogsAccountId` int DEFAULT NULL,
  `configurable` bit(1) DEFAULT NULL,
  `consumptionRate` decimal(28,9) DEFAULT NULL,
  `controlledFlag` bit(1) DEFAULT NULL,
  `cycleCountTol` decimal(28,9) DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `defaultBomId` int DEFAULT NULL,
  `defaultOutsourcedReturnItemId` int DEFAULT NULL,
  `defaultPoItemTypeId` int DEFAULT NULL,
  `defaultProductId` int DEFAULT NULL,
  `description` varchar(252) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `height` decimal(28,9) DEFAULT NULL,
  `inventoryAccountId` int DEFAULT NULL,
  `lastChangedUser` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leadTime` int DEFAULT NULL,
  `leadTimeToFulfill` int DEFAULT NULL,
  `len` decimal(28,9) DEFAULT NULL,
  `num` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partClassId` int DEFAULT NULL,
  `pickInUomOfPart` bit(1) DEFAULT NULL,
  `receivingTol` decimal(28,9) DEFAULT NULL,
  `revision` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scrapAccountId` int DEFAULT NULL,
  `serializedFlag` bit(1) DEFAULT NULL,
  `sizeUomId` int DEFAULT NULL,
  `stdCost` decimal(28,9) DEFAULT NULL,
  `taxId` int DEFAULT NULL,
  `trackingFlag` bit(1) DEFAULT NULL,
  `typeId` int DEFAULT NULL,
  `uomId` int DEFAULT NULL,
  `upc` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `varianceAccountId` int DEFAULT NULL,
  `weight` decimal(28,9) DEFAULT NULL,
  `weightUomId` int DEFAULT NULL,
  `width` decimal(28,9) DEFAULT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`,`REV`),
  KEY `FKq5ciejt20syacn3fb8qbc38i2` (`REV`),
  CONSTRAINT `FKq5ciejt20syacn3fb8qbc38i2` FOREIGN KEY (`REV`) REFERENCES `revinfo` (`id`)
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

-- Dump completed on 2024-12-05 17:58:46

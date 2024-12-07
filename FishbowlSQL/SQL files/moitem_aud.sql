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
-- Table structure for table `moitem_aud`
--

DROP TABLE IF EXISTS `moitem_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moitem_aud` (
  `id` int NOT NULL,
  `REV` bigint NOT NULL,
  `REVTYPE` tinyint DEFAULT NULL,
  `addToService` bit(1) DEFAULT NULL,
  `bomId` int DEFAULT NULL,
  `bomItemId` int DEFAULT NULL,
  `dateScheduled` datetime(6) DEFAULT NULL,
  `dateScheduledToStart` datetime(6) DEFAULT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructionNote` longtext COLLATE utf8mb4_unicode_ci,
  `moId` int DEFAULT NULL,
  `oneTimeItem` bit(1) DEFAULT NULL,
  `parentId` int DEFAULT NULL,
  `partId` int DEFAULT NULL,
  `priceAdjustment` decimal(28,9) DEFAULT NULL,
  `priorityId` int DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `qtyFulfilled` decimal(28,9) DEFAULT NULL,
  `qtyToFulfill` decimal(28,9) DEFAULT NULL,
  `soItemId` int DEFAULT NULL,
  `sortIdInstruct` int DEFAULT NULL,
  `stage` bit(1) DEFAULT NULL,
  `stageLevel` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `totalCost` decimal(28,9) DEFAULT NULL,
  `typeId` int DEFAULT NULL,
  `uomId` int DEFAULT NULL,
  `calCategoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`,`REV`),
  KEY `FKffebj2go345hbnk4xbo5b0u7m` (`REV`),
  CONSTRAINT `FKffebj2go345hbnk4xbo5b0u7m` FOREIGN KEY (`REV`) REFERENCES `revinfo` (`id`)
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

-- Dump completed on 2024-12-05 17:58:48

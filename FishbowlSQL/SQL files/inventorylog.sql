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
-- Table structure for table `inventorylog`
--

DROP TABLE IF EXISTS `inventorylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventorylog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `begLocationId` int NOT NULL,
  `begTagNum` bigint DEFAULT NULL,
  `changeQty` decimal(28,9) DEFAULT NULL,
  `cost` decimal(28,9) DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `endLocationId` int NOT NULL,
  `endTagNum` bigint DEFAULT NULL,
  `eventDate` datetime(6) DEFAULT NULL,
  `info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locationGroupId` int DEFAULT NULL,
  `partId` int NOT NULL,
  `partTrackingId` int DEFAULT NULL,
  `qtyOnHand` decimal(28,9) DEFAULT NULL,
  `recordId` bigint DEFAULT NULL,
  `tableId` int DEFAULT NULL,
  `typeId` int NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventoryLogEventDateIdx` (`eventDate`),
  KEY `inventoryLogBegTagNumIdx` (`begTagNum`),
  KEY `inventoryLogEndTagNumIdx` (`endTagNum`),
  KEY `inventoryLogTableIdIdx` (`tableId`),
  KEY `inventoryLogRecordIdIdx` (`recordId`),
  KEY `inventoryLogPartTrackingIdIdx` (`partTrackingId`),
  KEY `FK8i3qih5k0vlst9hf2a30pfyp4` (`begLocationId`),
  KEY `FK4365ss8d1y218q1d10x78859i` (`endLocationId`),
  KEY `FKqyvvoyphlhr86w6gkggmc5ik9` (`locationGroupId`),
  KEY `FK1dfktk3okp61o0as2gny8uhe6` (`partId`),
  KEY `FK1h6cacrnleo45osgvui23od46` (`typeId`),
  KEY `FKkhipim74kwxe0g2s6y60v54v9` (`userId`),
  CONSTRAINT `FK1dfktk3okp61o0as2gny8uhe6` FOREIGN KEY (`partId`) REFERENCES `part` (`id`),
  CONSTRAINT `FK1h6cacrnleo45osgvui23od46` FOREIGN KEY (`typeId`) REFERENCES `inventorylogtype` (`id`),
  CONSTRAINT `FK4365ss8d1y218q1d10x78859i` FOREIGN KEY (`endLocationId`) REFERENCES `location` (`id`),
  CONSTRAINT `FK8i3qih5k0vlst9hf2a30pfyp4` FOREIGN KEY (`begLocationId`) REFERENCES `location` (`id`),
  CONSTRAINT `FKkhipim74kwxe0g2s6y60v54v9` FOREIGN KEY (`userId`) REFERENCES `sysuser` (`id`),
  CONSTRAINT `FKqyvvoyphlhr86w6gkggmc5ik9` FOREIGN KEY (`locationGroupId`) REFERENCES `locationgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3876 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:52

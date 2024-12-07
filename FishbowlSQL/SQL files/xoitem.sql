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
-- Table structure for table `xoitem`
--

DROP TABLE IF EXISTS `xoitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xoitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateLastFulfillment` datetime(6) DEFAULT NULL,
  `dateScheduledFulfillment` datetime(6) NOT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lineItem` int NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `partId` int DEFAULT NULL,
  `partNum` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qtyFulfilled` decimal(28,9) DEFAULT NULL,
  `qtyPicked` decimal(28,9) DEFAULT NULL,
  `qtyToFulfill` decimal(28,9) DEFAULT NULL,
  `revisionNum` int DEFAULT NULL,
  `statusId` int NOT NULL,
  `totalCost` decimal(28,9) DEFAULT NULL,
  `typeId` int NOT NULL,
  `uomId` int DEFAULT NULL,
  `xoId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtqq5fxenrwruxkstwbmh75xlu` (`partId`),
  KEY `FK3an0sfx5ydknrar5x1suj78bb` (`uomId`),
  KEY `FK75f34uk5ck2rkthewhi1kc40r` (`xoId`),
  KEY `FKakq792ehvtmfbjim7da0bmcqk` (`statusId`),
  KEY `FKk29vqs6wbct65fy99y823uf3a` (`typeId`),
  CONSTRAINT `FK3an0sfx5ydknrar5x1suj78bb` FOREIGN KEY (`uomId`) REFERENCES `uom` (`id`),
  CONSTRAINT `FK75f34uk5ck2rkthewhi1kc40r` FOREIGN KEY (`xoId`) REFERENCES `xo` (`id`),
  CONSTRAINT `FKakq792ehvtmfbjim7da0bmcqk` FOREIGN KEY (`statusId`) REFERENCES `xoitemstatus` (`id`),
  CONSTRAINT `FKk29vqs6wbct65fy99y823uf3a` FOREIGN KEY (`typeId`) REFERENCES `xoitemtype` (`id`),
  CONSTRAINT `FKtqq5fxenrwruxkstwbmh75xlu` FOREIGN KEY (`partId`) REFERENCES `part` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

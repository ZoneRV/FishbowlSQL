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
-- Table structure for table `ship`
--

DROP TABLE IF EXISTS `ship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ship` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FOBPointId` int DEFAULT NULL,
  `billOfLading` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrierId` int NOT NULL,
  `carrierServiceId` int DEFAULT NULL,
  `cartonCount` int DEFAULT NULL,
  `contact` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `dateShipped` datetime(6) DEFAULT NULL,
  `locationGroupId` int DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `num` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderTypeId` int NOT NULL,
  `ownerIsFrom` bit(1) NOT NULL,
  `poId` int DEFAULT NULL,
  `shipToId` int DEFAULT NULL,
  `shipmentIdentificationNumber` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippedBy` int DEFAULT NULL,
  `soId` int DEFAULT NULL,
  `statusId` int NOT NULL,
  `xoId` int DEFAULT NULL,
  `shipToAddress` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToCity` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToZip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToCountryId` int DEFAULT NULL,
  `shipToStateId` int DEFAULT NULL,
  `shipToResidential` bit(1) NOT NULL DEFAULT b'0',
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK12ukpm61t81vbevjep7pu9rwq` (`num`),
  KEY `shipDateShippedIdx` (`dateShipped`),
  KEY `FK73bo2eirdgnov84twe2vognn5` (`carrierId`),
  KEY `FKgp56ykbb0ckhrt743fj6qfog4` (`carrierServiceId`),
  KEY `FKgje9eqhtbes0puqgjd7pefrg6` (`FOBPointId`),
  KEY `FKba5surnm1t6w0rimckhk6xivd` (`locationGroupId`),
  KEY `FKdjmo1324e9rheybq7nu3od2e` (`orderTypeId`),
  KEY `FKr80r1a8p7al7rupcrfsspu16w` (`poId`),
  KEY `FKhe2bfi51splcp6r21qfbqh6ka` (`soId`),
  KEY `FK6eopar0962yqnbcrxi34d8jym` (`shippedBy`),
  KEY `FKfvvrd32j1947v9m7oe0pkq9sx` (`statusId`),
  KEY `FKq4t84fl5qy7wd5w9ka7ujqo2m` (`xoId`),
  KEY `FKcountry` (`shipToCountryId`),
  KEY `FKstate` (`shipToStateId`),
  CONSTRAINT `FK6eopar0962yqnbcrxi34d8jym` FOREIGN KEY (`shippedBy`) REFERENCES `sysuser` (`id`),
  CONSTRAINT `FK73bo2eirdgnov84twe2vognn5` FOREIGN KEY (`carrierId`) REFERENCES `carrier` (`id`),
  CONSTRAINT `FKba5surnm1t6w0rimckhk6xivd` FOREIGN KEY (`locationGroupId`) REFERENCES `locationgroup` (`id`),
  CONSTRAINT `FKcountry` FOREIGN KEY (`shipToCountryId`) REFERENCES `countryconst` (`id`),
  CONSTRAINT `FKdjmo1324e9rheybq7nu3od2e` FOREIGN KEY (`orderTypeId`) REFERENCES `ordertype` (`id`),
  CONSTRAINT `FKfvvrd32j1947v9m7oe0pkq9sx` FOREIGN KEY (`statusId`) REFERENCES `shipstatus` (`id`),
  CONSTRAINT `FKgje9eqhtbes0puqgjd7pefrg6` FOREIGN KEY (`FOBPointId`) REFERENCES `fobpoint` (`id`),
  CONSTRAINT `FKgp56ykbb0ckhrt743fj6qfog4` FOREIGN KEY (`carrierServiceId`) REFERENCES `carrierservice` (`id`),
  CONSTRAINT `FKhe2bfi51splcp6r21qfbqh6ka` FOREIGN KEY (`soId`) REFERENCES `so` (`id`),
  CONSTRAINT `FKq4t84fl5qy7wd5w9ka7ujqo2m` FOREIGN KEY (`xoId`) REFERENCES `xo` (`id`),
  CONSTRAINT `FKr80r1a8p7al7rupcrfsspu16w` FOREIGN KEY (`poId`) REFERENCES `po` (`id`),
  CONSTRAINT `FKstate` FOREIGN KEY (`shipToStateId`) REFERENCES `stateconst` (`id`)
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

-- Dump completed on 2024-12-05 17:58:59

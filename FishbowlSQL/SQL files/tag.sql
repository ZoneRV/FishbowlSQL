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
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateLastCycleCount` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `locationId` int NOT NULL,
  `num` bigint NOT NULL,
  `partId` int DEFAULT NULL,
  `qty` decimal(28,9) NOT NULL,
  `qtyCommitted` decimal(28,9) DEFAULT NULL,
  `serializedFlag` bit(1) NOT NULL,
  `trackingEncoding` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeId` int NOT NULL,
  `usedFlag` bit(1) NOT NULL,
  `woItemId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKax0yx0grys13dmlfqijr89w5e` (`num`),
  KEY `tagNumIdx` (`num`),
  KEY `tagDateLastCycleCountIdx` (`dateLastCycleCount`),
  KEY `FK29ws6jbab1w79ww7uf9ck7pjj` (`locationId`),
  KEY `FKekotaub2vdb0x3ixgb8fgr2dl` (`partId`),
  KEY `FKmmvc5vpa1mjkjioi91yop7f5s` (`typeId`),
  KEY `FK54blyq1yart0w22xoj529mfph` (`woItemId`),
  CONSTRAINT `FK29ws6jbab1w79ww7uf9ck7pjj` FOREIGN KEY (`locationId`) REFERENCES `location` (`id`),
  CONSTRAINT `FK54blyq1yart0w22xoj529mfph` FOREIGN KEY (`woItemId`) REFERENCES `woitem` (`id`),
  CONSTRAINT `FKekotaub2vdb0x3ixgb8fgr2dl` FOREIGN KEY (`partId`) REFERENCES `part` (`id`),
  CONSTRAINT `FKmmvc5vpa1mjkjioi91yop7f5s` FOREIGN KEY (`typeId`) REFERENCES `tagtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3056 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

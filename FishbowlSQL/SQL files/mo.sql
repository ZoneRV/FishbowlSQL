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
-- Table structure for table `mo`
--

DROP TABLE IF EXISTS `mo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateCompleted` datetime(6) DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateIssued` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `dateScheduled` datetime(6) DEFAULT NULL,
  `locationGroupId` int NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `num` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qbClassId` int DEFAULT NULL,
  `revision` int NOT NULL,
  `soId` int DEFAULT NULL,
  `statusId` int NOT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` int NOT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK5g52mitoj6vc014rogr35ycjc` (`num`),
  KEY `moDateIssuedIdx` (`dateIssued`),
  KEY `moDateCompletedIdx` (`dateCompleted`),
  KEY `moDateScheduledIdx` (`dateScheduled`),
  KEY `FKlwbv9u1264ui0jv0kip6t7f2e` (`locationGroupId`),
  KEY `FK2ix4grppwu0yjt19jwrr4wt8s` (`qbClassId`),
  KEY `FK3gxa9fjew75ayg25qbye2r645` (`soId`),
  KEY `FKq2hk5iswfbed9til72tt52lar` (`statusId`),
  KEY `FKwpij5b0kijs636t63oga5qpw` (`userId`),
  CONSTRAINT `FK2ix4grppwu0yjt19jwrr4wt8s` FOREIGN KEY (`qbClassId`) REFERENCES `qbclass` (`id`),
  CONSTRAINT `FK3gxa9fjew75ayg25qbye2r645` FOREIGN KEY (`soId`) REFERENCES `so` (`id`),
  CONSTRAINT `FKlwbv9u1264ui0jv0kip6t7f2e` FOREIGN KEY (`locationGroupId`) REFERENCES `locationgroup` (`id`),
  CONSTRAINT `FKq2hk5iswfbed9til72tt52lar` FOREIGN KEY (`statusId`) REFERENCES `mostatus` (`id`),
  CONSTRAINT `FKwpij5b0kijs636t63oga5qpw` FOREIGN KEY (`userId`) REFERENCES `sysuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

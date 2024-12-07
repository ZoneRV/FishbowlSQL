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
-- Table structure for table `fbschedule`
--

DROP TABLE IF EXISTS `fbschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fbschedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `actionSubType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actionTypeId` int DEFAULT NULL,
  `activeFlag` bit(1) DEFAULT NULL,
  `cronString` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `dateNextScheduled` datetime(6) DEFAULT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emailReport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fileMask` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fileName` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `javaClass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastChangedUserId` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reportId` int DEFAULT NULL,
  `pluginManaged` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK23nonsi679mwi61j8hhh6lybp` (`name`),
  KEY `FKj73s3be8rjgb43ugv3wjf9n2x` (`actionTypeId`),
  KEY `FKnerk7v06du0otn9lltvwgd9rt` (`reportId`),
  KEY `FK6ixdd0aqrlt6tclp7gwbe241h` (`lastChangedUserId`),
  CONSTRAINT `FK6ixdd0aqrlt6tclp7gwbe241h` FOREIGN KEY (`lastChangedUserId`) REFERENCES `sysuser` (`id`),
  CONSTRAINT `FKj73s3be8rjgb43ugv3wjf9n2x` FOREIGN KEY (`actionTypeId`) REFERENCES `fbscheduleactiontype` (`id`),
  CONSTRAINT `FKnerk7v06du0otn9lltvwgd9rt` FOREIGN KEY (`reportId`) REFERENCES `report` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

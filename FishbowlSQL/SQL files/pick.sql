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
-- Table structure for table `pick`
--

DROP TABLE IF EXISTS `pick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pick` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateFinished` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `dateScheduled` datetime(6) DEFAULT NULL,
  `dateStarted` datetime(6) DEFAULT NULL,
  `locationGroupId` int NOT NULL,
  `num` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int NOT NULL,
  `statusId` int NOT NULL,
  `typeId` int NOT NULL,
  `userId` int NOT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6t1e66s1mxtseev3umc97jhr0` (`num`),
  KEY `pickDateStartedIdx` (`dateStarted`),
  KEY `pickDateFinishedIdx` (`dateFinished`),
  KEY `pickDateScheduledIdx` (`dateScheduled`),
  KEY `FK5aw6xpq8126ajp30yywjl9lf7` (`locationGroupId`),
  KEY `FKb2em4mjo8uha5p9pkc8gyx02t` (`priority`),
  KEY `FKmjg8t8csiw42a1ubnfuyi38bm` (`statusId`),
  KEY `FKqq1tjt6pxatumck6evga926nv` (`typeId`),
  KEY `FKj0extcfl38rrvmfaa9t2tltnq` (`userId`),
  CONSTRAINT `FK5aw6xpq8126ajp30yywjl9lf7` FOREIGN KEY (`locationGroupId`) REFERENCES `locationgroup` (`id`),
  CONSTRAINT `FKb2em4mjo8uha5p9pkc8gyx02t` FOREIGN KEY (`priority`) REFERENCES `priority` (`id`),
  CONSTRAINT `FKj0extcfl38rrvmfaa9t2tltnq` FOREIGN KEY (`userId`) REFERENCES `sysuser` (`id`),
  CONSTRAINT `FKmjg8t8csiw42a1ubnfuyi38bm` FOREIGN KEY (`statusId`) REFERENCES `pickstatus` (`id`),
  CONSTRAINT `FKqq1tjt6pxatumck6evga926nv` FOREIGN KEY (`typeId`) REFERENCES `picktype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

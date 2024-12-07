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
-- Table structure for table `wo`
--

DROP TABLE IF EXISTS `wo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `calCategoryId` int DEFAULT NULL,
  `cost` decimal(28,9) DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateFinished` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `dateScheduled` datetime(6) DEFAULT NULL,
  `dateScheduledToStart` datetime(6) DEFAULT NULL,
  `dateStarted` datetime(6) DEFAULT NULL,
  `locationGroupId` int DEFAULT NULL,
  `locationId` int DEFAULT NULL,
  `moItemId` int NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `num` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priorityId` int NOT NULL,
  `qbClassId` int DEFAULT NULL,
  `qtyOrdered` int DEFAULT NULL,
  `qtyScrapped` int DEFAULT NULL,
  `qtyTarget` int DEFAULT NULL,
  `statusId` int NOT NULL,
  `userId` int NOT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKa9dug46v3ybtjdsa90jkp0n7h` (`num`),
  KEY `FK4rgrqmd8t44871m5p4m663edn` (`calCategoryId`),
  KEY `FK8jw6dmx7cq2hg6al4yrggugmc` (`customerId`),
  KEY `FKehkprc6rewqtagth6wrob57jb` (`locationId`),
  KEY `FKp1jvxjqnx6dx1h8469k5xa02d` (`locationGroupId`),
  KEY `FK5mifl1way9iwh9v1ql41o261m` (`moItemId`),
  KEY `FK5toym0tqqujop26pc6vn7i7f5` (`priorityId`),
  KEY `FKjvhddsb9806fi44i4mqidp88s` (`qbClassId`),
  KEY `FKj4v67oqha89tpafmpm6cbto19` (`statusId`),
  KEY `FK7auqtn6or120su6keupf6b14n` (`userId`),
  CONSTRAINT `FK4rgrqmd8t44871m5p4m663edn` FOREIGN KEY (`calCategoryId`) REFERENCES `calcategory` (`id`),
  CONSTRAINT `FK5mifl1way9iwh9v1ql41o261m` FOREIGN KEY (`moItemId`) REFERENCES `moitem` (`id`),
  CONSTRAINT `FK5toym0tqqujop26pc6vn7i7f5` FOREIGN KEY (`priorityId`) REFERENCES `priority` (`id`),
  CONSTRAINT `FK7auqtn6or120su6keupf6b14n` FOREIGN KEY (`userId`) REFERENCES `sysuser` (`id`),
  CONSTRAINT `FK8jw6dmx7cq2hg6al4yrggugmc` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKehkprc6rewqtagth6wrob57jb` FOREIGN KEY (`locationId`) REFERENCES `location` (`id`),
  CONSTRAINT `FKj4v67oqha89tpafmpm6cbto19` FOREIGN KEY (`statusId`) REFERENCES `wostatus` (`id`),
  CONSTRAINT `FKjvhddsb9806fi44i4mqidp88s` FOREIGN KEY (`qbClassId`) REFERENCES `qbclass` (`id`),
  CONSTRAINT `FKp1jvxjqnx6dx1h8469k5xa02d` FOREIGN KEY (`locationGroupId`) REFERENCES `locationgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:55

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
-- Table structure for table `moitem`
--

DROP TABLE IF EXISTS `moitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `addToService` bit(1) NOT NULL,
  `bomId` int DEFAULT NULL,
  `bomItemId` int DEFAULT NULL,
  `dateScheduled` datetime(6) DEFAULT NULL,
  `dateScheduledToStart` datetime(6) DEFAULT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructionNote` longtext COLLATE utf8mb4_unicode_ci,
  `moId` int DEFAULT NULL,
  `oneTimeItem` bit(1) NOT NULL,
  `parentId` int DEFAULT NULL,
  `partId` int DEFAULT NULL,
  `priceAdjustment` decimal(28,9) DEFAULT NULL,
  `priorityId` int DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `qtyFulfilled` decimal(28,9) DEFAULT NULL,
  `qtyToFulfill` decimal(28,9) DEFAULT NULL,
  `soItemId` int DEFAULT NULL,
  `sortIdInstruct` int NOT NULL,
  `stage` bit(1) NOT NULL,
  `stageLevel` int DEFAULT NULL,
  `statusId` int NOT NULL,
  `totalCost` decimal(28,9) DEFAULT NULL,
  `typeId` int NOT NULL,
  `uomId` int DEFAULT NULL,
  `calCategoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `moItemDateScheduledIdx` (`dateScheduled`),
  KEY `moItemDateScheduledToStartIdx` (`dateScheduledToStart`),
  KEY `FK3tnjfbsa7mcsimwqm1oh35hua` (`bomId`),
  KEY `FK383uj4tri9yfo4hhx2gvapr42` (`bomItemId`),
  KEY `FKgpw7fw4x7439tjkbekfvw6i69` (`moId`),
  KEY `FK2fb12c6s2asg4yid1txxfm1um` (`parentId`),
  KEY `FKd8mneun66c2jrw2a17iv9bft1` (`partId`),
  KEY `FKsxha8uqqvo0c7t085domo1x5j` (`priorityId`),
  KEY `FKa1mb00b1xd1b1x0hfd7bnujuq` (`qbClassId`),
  KEY `FK2snnnril98bgflww8vrsep0a4` (`statusId`),
  KEY `FK3djlgxojf01k883cjmp0w6aml` (`typeId`),
  KEY `FKstoa2olo02dhmc7lvesbiiiqo` (`uomId`),
  KEY `FKmoItemToSoItem` (`soItemId`),
  CONSTRAINT `FK2fb12c6s2asg4yid1txxfm1um` FOREIGN KEY (`parentId`) REFERENCES `moitem` (`id`),
  CONSTRAINT `FK2snnnril98bgflww8vrsep0a4` FOREIGN KEY (`statusId`) REFERENCES `moitemstatus` (`id`),
  CONSTRAINT `FK383uj4tri9yfo4hhx2gvapr42` FOREIGN KEY (`bomItemId`) REFERENCES `bomitem` (`id`),
  CONSTRAINT `FK3djlgxojf01k883cjmp0w6aml` FOREIGN KEY (`typeId`) REFERENCES `bomitemtype` (`id`),
  CONSTRAINT `FK3tnjfbsa7mcsimwqm1oh35hua` FOREIGN KEY (`bomId`) REFERENCES `bom` (`id`),
  CONSTRAINT `FKa1mb00b1xd1b1x0hfd7bnujuq` FOREIGN KEY (`qbClassId`) REFERENCES `qbclass` (`id`),
  CONSTRAINT `FKd8mneun66c2jrw2a17iv9bft1` FOREIGN KEY (`partId`) REFERENCES `part` (`id`),
  CONSTRAINT `FKgpw7fw4x7439tjkbekfvw6i69` FOREIGN KEY (`moId`) REFERENCES `mo` (`id`),
  CONSTRAINT `FKmoItemToSoItem` FOREIGN KEY (`soItemId`) REFERENCES `soitem` (`id`),
  CONSTRAINT `FKstoa2olo02dhmc7lvesbiiiqo` FOREIGN KEY (`uomId`) REFERENCES `uom` (`id`),
  CONSTRAINT `FKsxha8uqqvo0c7t085domo1x5j` FOREIGN KEY (`priorityId`) REFERENCES `priority` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:59:01

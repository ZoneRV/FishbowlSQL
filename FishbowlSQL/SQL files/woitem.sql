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
-- Table structure for table `woitem`
--

DROP TABLE IF EXISTS `woitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `woitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cost` decimal(28,9) DEFAULT NULL,
  `standardCost` decimal(28,9) DEFAULT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moItemId` int NOT NULL,
  `partId` int DEFAULT NULL,
  `qtyScrapped` decimal(28,9) DEFAULT NULL,
  `qtyTarget` decimal(28,9) DEFAULT NULL,
  `qtyUsed` decimal(28,9) DEFAULT NULL,
  `sortId` int NOT NULL,
  `typeId` int DEFAULT NULL,
  `uomId` int DEFAULT NULL,
  `woId` int NOT NULL,
  `oneTimeItem` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FKkldf51x6w3d96jscbadyesvf6` (`moItemId`),
  KEY `FK52gp8xaf702gn14muj4go2q1t` (`partId`),
  KEY `FK51qmwttlc8kn0py6ce97we7o0` (`typeId`),
  KEY `FKm76jhjaqax94288bilk6rw318` (`uomId`),
  KEY `FKr6a3dddbfponms402wdayp9c3` (`woId`),
  CONSTRAINT `FK51qmwttlc8kn0py6ce97we7o0` FOREIGN KEY (`typeId`) REFERENCES `bomitemtype` (`id`),
  CONSTRAINT `FK52gp8xaf702gn14muj4go2q1t` FOREIGN KEY (`partId`) REFERENCES `part` (`id`),
  CONSTRAINT `FKkldf51x6w3d96jscbadyesvf6` FOREIGN KEY (`moItemId`) REFERENCES `moitem` (`id`),
  CONSTRAINT `FKm76jhjaqax94288bilk6rw318` FOREIGN KEY (`uomId`) REFERENCES `uom` (`id`),
  CONSTRAINT `FKr6a3dddbfponms402wdayp9c3` FOREIGN KEY (`woId`) REFERENCES `wo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:56

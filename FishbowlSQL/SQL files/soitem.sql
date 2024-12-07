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
-- Table structure for table `soitem`
--

DROP TABLE IF EXISTS `soitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adjustAmount` decimal(28,9) DEFAULT NULL,
  `adjustPercentage` decimal(28,9) DEFAULT NULL,
  `customerPartNum` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateLastFulfillment` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `dateScheduledFulfillment` datetime(6) NOT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchangeSOLineItem` int DEFAULT NULL,
  `itemAdjustId` int DEFAULT NULL,
  `markupCost` decimal(28,9) DEFAULT NULL,
  `mcTotalPrice` decimal(28,9) DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `productId` int DEFAULT NULL,
  `productNum` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qbClassId` int DEFAULT NULL,
  `qtyFulfilled` decimal(28,9) DEFAULT NULL,
  `qtyOrdered` decimal(28,9) DEFAULT NULL,
  `qtyPicked` decimal(28,9) DEFAULT NULL,
  `qtyToFulfill` decimal(28,9) DEFAULT NULL,
  `revLevel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showItemFlag` bit(1) NOT NULL,
  `soId` int NOT NULL,
  `soLineItem` int NOT NULL,
  `statusId` int NOT NULL,
  `taxId` int DEFAULT NULL,
  `taxRate` double DEFAULT NULL,
  `taxableFlag` bit(1) NOT NULL,
  `totalCost` decimal(28,9) DEFAULT NULL,
  `totalPrice` decimal(28,9) DEFAULT NULL,
  `typeId` int NOT NULL,
  `unitPrice` decimal(28,9) DEFAULT NULL,
  `uomId` int DEFAULT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjd6d7fhmvpsmk526hlmk2eslu` (`itemAdjustId`),
  KEY `FKc5dwnwba96x78bb8pdleqddac` (`productId`),
  KEY `FK7eqs8u2qlc4205xj601tq6fkr` (`qbClassId`),
  KEY `FKcebj5n3me5rnbhlg99n6as0m` (`soId`),
  KEY `FKq4qigr9k5657freb8cw47iifu` (`statusId`),
  KEY `FK6dht8w6kdbym0i89kb9l6iy80` (`taxId`),
  KEY `FKsirq6y6w6ot38v5kxv8uwbt8n` (`typeId`),
  KEY `FKrp4o3oect4i6kj7fhnegty2bi` (`uomId`),
  CONSTRAINT `FK6dht8w6kdbym0i89kb9l6iy80` FOREIGN KEY (`taxId`) REFERENCES `taxrate` (`id`),
  CONSTRAINT `FK7eqs8u2qlc4205xj601tq6fkr` FOREIGN KEY (`qbClassId`) REFERENCES `qbclass` (`id`),
  CONSTRAINT `FKc5dwnwba96x78bb8pdleqddac` FOREIGN KEY (`productId`) REFERENCES `product` (`id`),
  CONSTRAINT `FKcebj5n3me5rnbhlg99n6as0m` FOREIGN KEY (`soId`) REFERENCES `so` (`id`),
  CONSTRAINT `FKjd6d7fhmvpsmk526hlmk2eslu` FOREIGN KEY (`itemAdjustId`) REFERENCES `itemadjust` (`id`),
  CONSTRAINT `FKq4qigr9k5657freb8cw47iifu` FOREIGN KEY (`statusId`) REFERENCES `soitemstatus` (`id`),
  CONSTRAINT `FKrp4o3oect4i6kj7fhnegty2bi` FOREIGN KEY (`uomId`) REFERENCES `uom` (`id`),
  CONSTRAINT `FKsirq6y6w6ot38v5kxv8uwbt8n` FOREIGN KEY (`typeId`) REFERENCES `soitemtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:57

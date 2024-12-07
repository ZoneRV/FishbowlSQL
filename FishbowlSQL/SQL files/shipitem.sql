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
-- Table structure for table `shipitem`
--

DROP TABLE IF EXISTS `shipitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `itemId` int DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `orderTypeId` int NOT NULL,
  `poItemId` int DEFAULT NULL,
  `qtyShipped` decimal(28,9) DEFAULT NULL,
  `shipCartonId` int NOT NULL,
  `shipId` int NOT NULL,
  `soItemId` int DEFAULT NULL,
  `tagId` bigint DEFAULT NULL,
  `totalCost` decimal(28,9) DEFAULT NULL,
  `uomId` int NOT NULL,
  `xoItemId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shipItemOrderIdIdx` (`orderId`),
  KEY `FKs5og8s6hkfbdb9jvebmh0sspf` (`orderTypeId`),
  KEY `FK22ksf1230bq10soxnmtswrun6` (`poItemId`),
  KEY `FK7r8ox8ivljpbcfpcepnh1bx1d` (`shipId`),
  KEY `FKr0hdcfe5si0lsm0nvwn508vy6` (`shipCartonId`),
  KEY `FKkigiflb3oyfy5oddiwohg4hj1` (`soItemId`),
  KEY `FK5c6v183gvuwfqvmsokd6usj1m` (`uomId`),
  KEY `FKbbjuocl4uqev15e3w8afrpwis` (`xoItemId`),
  CONSTRAINT `FK22ksf1230bq10soxnmtswrun6` FOREIGN KEY (`poItemId`) REFERENCES `poitem` (`id`),
  CONSTRAINT `FK5c6v183gvuwfqvmsokd6usj1m` FOREIGN KEY (`uomId`) REFERENCES `uom` (`id`),
  CONSTRAINT `FK7r8ox8ivljpbcfpcepnh1bx1d` FOREIGN KEY (`shipId`) REFERENCES `ship` (`id`),
  CONSTRAINT `FKbbjuocl4uqev15e3w8afrpwis` FOREIGN KEY (`xoItemId`) REFERENCES `xoitem` (`id`),
  CONSTRAINT `FKkigiflb3oyfy5oddiwohg4hj1` FOREIGN KEY (`soItemId`) REFERENCES `soitem` (`id`),
  CONSTRAINT `FKr0hdcfe5si0lsm0nvwn508vy6` FOREIGN KEY (`shipCartonId`) REFERENCES `shipcarton` (`id`),
  CONSTRAINT `FKs5og8s6hkfbdb9jvebmh0sspf` FOREIGN KEY (`orderTypeId`) REFERENCES `ordertype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:48

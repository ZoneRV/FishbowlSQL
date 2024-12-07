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
-- Table structure for table `pickitem`
--

DROP TABLE IF EXISTS `pickitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pickitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `destTagId` bigint DEFAULT NULL,
  `orderId` int NOT NULL,
  `orderTypeId` int NOT NULL,
  `partId` int NOT NULL,
  `pickId` int NOT NULL,
  `poItemId` int DEFAULT NULL,
  `qty` decimal(28,9) DEFAULT NULL,
  `shipId` int DEFAULT NULL,
  `slotNum` int DEFAULT NULL,
  `soItemId` int DEFAULT NULL,
  `srcLocationId` int DEFAULT NULL,
  `srcTagId` bigint DEFAULT NULL,
  `statusId` int NOT NULL,
  `tagId` bigint DEFAULT NULL,
  `typeId` int NOT NULL,
  `uomId` int NOT NULL,
  `woItemId` int DEFAULT NULL,
  `xoItemId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pickItemOrderIdIdx` (`orderId`),
  KEY `pickItemShipIdIdx` (`shipId`),
  KEY `FK6h0grdyvnagipkp69j35cbfe6` (`orderTypeId`),
  KEY `FK2opakx1e66pm5v4ihd7lyr4rn` (`partId`),
  KEY `FKfrapttns7m4of6t7u4y75cp8s` (`pickId`),
  KEY `FK9u8545r37n3q106tfo5fkaocc` (`poItemId`),
  KEY `FK5wyguawrki4l2caxsjcob9qed` (`soItemId`),
  KEY `FK6g66t1jgjcp3lnue79kq7nb68` (`statusId`),
  KEY `FK801ec895hy8pbfjh86kht3au8` (`typeId`),
  KEY `FKol3jxjs4xkqvdh297bxh9vmvj` (`uomId`),
  KEY `FKlkklywqjfs2ag5f2wjdlsspon` (`woItemId`),
  KEY `FKjef6m2q7crenvjo3jb6heg3g1` (`xoItemId`),
  CONSTRAINT `FK2opakx1e66pm5v4ihd7lyr4rn` FOREIGN KEY (`partId`) REFERENCES `part` (`id`),
  CONSTRAINT `FK5wyguawrki4l2caxsjcob9qed` FOREIGN KEY (`soItemId`) REFERENCES `soitem` (`id`),
  CONSTRAINT `FK6g66t1jgjcp3lnue79kq7nb68` FOREIGN KEY (`statusId`) REFERENCES `pickitemstatus` (`id`),
  CONSTRAINT `FK6h0grdyvnagipkp69j35cbfe6` FOREIGN KEY (`orderTypeId`) REFERENCES `ordertype` (`id`),
  CONSTRAINT `FK801ec895hy8pbfjh86kht3au8` FOREIGN KEY (`typeId`) REFERENCES `pickitemtype` (`id`),
  CONSTRAINT `FK9u8545r37n3q106tfo5fkaocc` FOREIGN KEY (`poItemId`) REFERENCES `poitem` (`id`),
  CONSTRAINT `FKfrapttns7m4of6t7u4y75cp8s` FOREIGN KEY (`pickId`) REFERENCES `pick` (`id`),
  CONSTRAINT `FKjef6m2q7crenvjo3jb6heg3g1` FOREIGN KEY (`xoItemId`) REFERENCES `xoitem` (`id`),
  CONSTRAINT `FKlkklywqjfs2ag5f2wjdlsspon` FOREIGN KEY (`woItemId`) REFERENCES `woitem` (`id`),
  CONSTRAINT `FKol3jxjs4xkqvdh297bxh9vmvj` FOREIGN KEY (`uomId`) REFERENCES `uom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=634 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:49

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
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `locationGroupId` int NOT NULL,
  `orderTypeId` int NOT NULL,
  `poId` int DEFAULT NULL,
  `soId` int DEFAULT NULL,
  `statusId` int NOT NULL,
  `typeId` int NOT NULL,
  `userId` int NOT NULL,
  `xoId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK55lrc8meneoxaotygksohs5oe` (`locationGroupId`),
  KEY `FK7w54h7mqa2k5kr3v6yepe8701` (`orderTypeId`),
  KEY `FKk8sytdefvbkrsflw0969hegxk` (`poId`),
  KEY `FK9rp80kxbn28aau62wg4m9lgis` (`soId`),
  KEY `FKiidqfkahcig0igvswl71v1sc8` (`statusId`),
  KEY `FK3c01r7gtw2181lirbcbkrpr2p` (`xoId`),
  KEY `FK7tn7vgikqjafs5v89fid1q0tx` (`typeId`),
  KEY `FKjbkawab714fdfmel9ixnf0mkm` (`userId`),
  CONSTRAINT `FK3c01r7gtw2181lirbcbkrpr2p` FOREIGN KEY (`xoId`) REFERENCES `xo` (`id`),
  CONSTRAINT `FK55lrc8meneoxaotygksohs5oe` FOREIGN KEY (`locationGroupId`) REFERENCES `locationgroup` (`id`),
  CONSTRAINT `FK7tn7vgikqjafs5v89fid1q0tx` FOREIGN KEY (`typeId`) REFERENCES `receipttype` (`id`),
  CONSTRAINT `FK7w54h7mqa2k5kr3v6yepe8701` FOREIGN KEY (`orderTypeId`) REFERENCES `ordertype` (`id`),
  CONSTRAINT `FK9rp80kxbn28aau62wg4m9lgis` FOREIGN KEY (`soId`) REFERENCES `so` (`id`),
  CONSTRAINT `FKiidqfkahcig0igvswl71v1sc8` FOREIGN KEY (`statusId`) REFERENCES `receiptstatus` (`id`),
  CONSTRAINT `FKjbkawab714fdfmel9ixnf0mkm` FOREIGN KEY (`userId`) REFERENCES `sysuser` (`id`),
  CONSTRAINT `FKk8sytdefvbkrsflw0969hegxk` FOREIGN KEY (`poId`) REFERENCES `po` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:59:03

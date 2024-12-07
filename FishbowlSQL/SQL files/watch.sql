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
-- Table structure for table `watch`
--

DROP TABLE IF EXISTS `watch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `alertLevel` decimal(28,9) NOT NULL,
  `columnName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comparison` int NOT NULL,
  `criticalLevel` decimal(28,9) NOT NULL,
  `itemDesc` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemId` int NOT NULL,
  `lgSumTypeId` int DEFAULT NULL,
  `locationGroupId` int DEFAULT NULL,
  `strId` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sysUserId` int NOT NULL,
  `tableId` int NOT NULL,
  `typeId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq74qsmdcqycr2cxyqk2cvlvyh` (`itemId`),
  KEY `FKrtrohckkt3to8ikcerxtm75j7` (`lgSumTypeId`),
  KEY `FK5ps0jyg9wlibhp2iu4bbhu7lp` (`locationGroupId`),
  KEY `FKhbyb9s62b28hehakn3k3tuk0j` (`sysUserId`),
  KEY `FKce6xh9v77bux1txa8nkk3ww0n` (`typeId`),
  CONSTRAINT `FK5ps0jyg9wlibhp2iu4bbhu7lp` FOREIGN KEY (`locationGroupId`) REFERENCES `locationgroup` (`id`),
  CONSTRAINT `FKce6xh9v77bux1txa8nkk3ww0n` FOREIGN KEY (`typeId`) REFERENCES `watchtype` (`id`),
  CONSTRAINT `FKhbyb9s62b28hehakn3k3tuk0j` FOREIGN KEY (`sysUserId`) REFERENCES `sysuser` (`id`),
  CONSTRAINT `FKq74qsmdcqycr2cxyqk2cvlvyh` FOREIGN KEY (`itemId`) REFERENCES `part` (`id`),
  CONSTRAINT `FKrtrohckkt3to8ikcerxtm75j7` FOREIGN KEY (`lgSumTypeId`) REFERENCES `lgsumtype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:54

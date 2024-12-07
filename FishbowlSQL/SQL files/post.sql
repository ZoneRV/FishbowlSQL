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
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` decimal(28,9) DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `datePosted` datetime(6) DEFAULT NULL,
  `editSequence` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `orderTypeId` int NOT NULL,
  `postedTotalCost` decimal(28,9) DEFAULT NULL,
  `quantity` decimal(28,9) DEFAULT NULL,
  `refId` int DEFAULT NULL,
  `refItemId` int DEFAULT NULL,
  `refNumber` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serialNum` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statusId` int NOT NULL,
  `txnId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnLineId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `typeId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5ggwlfgchqp0laj8kh1dkujx0` (`customerId`),
  KEY `FKio7k706qejm4363q3vb13volu` (`orderTypeId`),
  KEY `FKp0ovr224ykog8q9q4yuf9ss2n` (`statusId`),
  KEY `FKneqdk86c73xn3sepl5bfroaqd` (`typeId`),
  KEY `idx_post_refId` (`refId`),
  CONSTRAINT `FK5ggwlfgchqp0laj8kh1dkujx0` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKio7k706qejm4363q3vb13volu` FOREIGN KEY (`orderTypeId`) REFERENCES `ordertype` (`id`),
  CONSTRAINT `FKneqdk86c73xn3sepl5bfroaqd` FOREIGN KEY (`typeId`) REFERENCES `posttype` (`id`),
  CONSTRAINT `FKp0ovr224ykog8q9q4yuf9ss2n` FOREIGN KEY (`statusId`) REFERENCES `poststatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2930 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

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
-- Table structure for table `postpoitem`
--

DROP TABLE IF EXISTS `postpoitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postpoitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime(6) NOT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `extRefNumber` varchar(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extTxnHash` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extTxnId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extTxnLineId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poItemId` int DEFAULT NULL,
  `postPoId` int NOT NULL,
  `postedTotalCost` decimal(28,9) DEFAULT NULL,
  `mcPostedTotalCost` decimal(28,9) DEFAULT NULL,
  `qty` decimal(28,9) NOT NULL,
  `receiptItemId` int DEFAULT NULL,
  `shipItemId` int DEFAULT NULL,
  `stdCost` decimal(28,9) DEFAULT NULL,
  `receivedTotalCost` decimal(28,9) NOT NULL DEFAULT '0.000000000',
  PRIMARY KEY (`id`),
  KEY `FKij8ivfkbmalljkkdfahj3yu8t` (`poItemId`),
  KEY `FKgdrk308otm2h5j29bgiq3r1ln` (`postPoId`),
  KEY `FKp03lkg4xf890l9el812jkcvrx` (`receiptItemId`),
  KEY `FK4g1wam0l8pq6u28vqoxevnhaa` (`shipItemId`),
  CONSTRAINT `FK4g1wam0l8pq6u28vqoxevnhaa` FOREIGN KEY (`shipItemId`) REFERENCES `shipitem` (`id`),
  CONSTRAINT `FKgdrk308otm2h5j29bgiq3r1ln` FOREIGN KEY (`postPoId`) REFERENCES `postpo` (`id`),
  CONSTRAINT `FKij8ivfkbmalljkkdfahj3yu8t` FOREIGN KEY (`poItemId`) REFERENCES `poitem` (`id`),
  CONSTRAINT `FKp03lkg4xf890l9el812jkcvrx` FOREIGN KEY (`receiptItemId`) REFERENCES `receiptitem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:50

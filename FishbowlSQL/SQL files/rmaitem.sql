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
-- Table structure for table `rmaitem`
--

DROP TABLE IF EXISTS `rmaitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rmaitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `crossShipFlag` bit(1) NOT NULL,
  `dateResolved` datetime(6) DEFAULT NULL,
  `issueId` int DEFAULT NULL,
  `lineNum` int NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `productId` int NOT NULL,
  `productSubId` int DEFAULT NULL,
  `qty` decimal(28,9) DEFAULT NULL,
  `resolutionId` int DEFAULT NULL,
  `returnFlag` bit(1) NOT NULL,
  `rmaId` int NOT NULL,
  `shipFlag` bit(1) NOT NULL,
  `typeId` int NOT NULL,
  `uomId` int NOT NULL,
  `vendorId` int DEFAULT NULL,
  `vendorRMA` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK422sbdwhwbqx2q2mh3pok8s3` (`productId`),
  KEY `FKn1iu90y8r0xlkset9273ami9t` (`productSubId`),
  KEY `FKcmlrb6s44mv1tylo01g7gn48d` (`rmaId`),
  KEY `FK8b8k2bq6m53krwkyj76m7xpbc` (`typeId`),
  KEY `FKm7ik7bejnd1o9t9mj4st10s8` (`uomId`),
  KEY `FK7wejyg9945fkksqjr94mmx1ko` (`vendorId`),
  CONSTRAINT `FK422sbdwhwbqx2q2mh3pok8s3` FOREIGN KEY (`productId`) REFERENCES `product` (`id`),
  CONSTRAINT `FK7wejyg9945fkksqjr94mmx1ko` FOREIGN KEY (`vendorId`) REFERENCES `vendor` (`id`),
  CONSTRAINT `FK8b8k2bq6m53krwkyj76m7xpbc` FOREIGN KEY (`typeId`) REFERENCES `rmaitemtype` (`id`),
  CONSTRAINT `FKcmlrb6s44mv1tylo01g7gn48d` FOREIGN KEY (`rmaId`) REFERENCES `rma` (`id`),
  CONSTRAINT `FKm7ik7bejnd1o9t9mj4st10s8` FOREIGN KEY (`uomId`) REFERENCES `uom` (`id`),
  CONSTRAINT `FKn1iu90y8r0xlkset9273ami9t` FOREIGN KEY (`productSubId`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:59:06

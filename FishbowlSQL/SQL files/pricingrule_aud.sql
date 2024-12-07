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
-- Table structure for table `pricingrule_aud`
--

DROP TABLE IF EXISTS `pricingrule_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricingrule_aud` (
  `id` int NOT NULL,
  `REV` bigint NOT NULL,
  `REVTYPE` tinyint DEFAULT NULL,
  `customerInclId` int DEFAULT NULL,
  `customerInclTypeId` int DEFAULT NULL,
  `dateApplies` bit(1) DEFAULT NULL,
  `dateBegin` datetime(6) DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateEnd` datetime(6) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `isActive` bit(1) DEFAULT NULL,
  `isAutoApply` bit(1) DEFAULT NULL,
  `isTier2` bit(1) DEFAULT NULL,
  `name` varchar(41) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paAmount` decimal(28,9) DEFAULT NULL,
  `paApplies` bit(1) DEFAULT NULL,
  `paBaseAmountTypeId` int DEFAULT NULL,
  `paPercent` decimal(28,9) DEFAULT NULL,
  `paTypeId` int DEFAULT NULL,
  `productInclId` int DEFAULT NULL,
  `productInclTypeId` int DEFAULT NULL,
  `qtyApplies` bit(1) DEFAULT NULL,
  `qtyMax` decimal(28,9) DEFAULT NULL,
  `qtyMin` decimal(28,9) DEFAULT NULL,
  `rndApplies` bit(1) DEFAULT NULL,
  `rndIsMinus` bit(1) DEFAULT NULL,
  `rndPMAmount` decimal(28,9) DEFAULT NULL,
  `rndToAmount` decimal(28,9) DEFAULT NULL,
  `rndTypeId` int DEFAULT NULL,
  `spcApplies` bit(1) DEFAULT NULL,
  `spcBuyX` int DEFAULT NULL,
  `spcGetYFree` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`,`REV`),
  KEY `FKr13divdm7gjs1c3hw1bgc5wts` (`REV`),
  CONSTRAINT `FKr13divdm7gjs1c3hw1bgc5wts` FOREIGN KEY (`REV`) REFERENCES `revinfo` (`id`)
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

-- Dump completed on 2024-12-05 17:58:58

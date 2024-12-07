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
-- Table structure for table `customer_aud`
--

DROP TABLE IF EXISTS `customer_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_aud` (
  `id` int NOT NULL,
  `REV` bigint NOT NULL,
  `REVTYPE` tinyint DEFAULT NULL,
  `accountId` int DEFAULT NULL,
  `accountingHash` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountingId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeFlag` bit(1) DEFAULT NULL,
  `carrierServiceId` int DEFAULT NULL,
  `creditLimit` decimal(28,9) DEFAULT NULL,
  `currencyId` int DEFAULT NULL,
  `currencyRate` decimal(28,9) DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `defaultCarrierId` int DEFAULT NULL,
  `defaultPaymentTermsId` int DEFAULT NULL,
  `defaultPriorityId` int DEFAULT NULL,
  `defaultSalesmanId` int DEFAULT NULL,
  `defaultShipTermsId` int DEFAULT NULL,
  `jobDepth` int DEFAULT NULL,
  `lastChangedUser` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(41) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentId` int DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `sysUserId` int DEFAULT NULL,
  `taxExempt` bit(1) DEFAULT NULL,
  `taxExemptNumber` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxRateId` int DEFAULT NULL,
  `toBeEmailed` bit(1) DEFAULT NULL,
  `toBePrinted` bit(1) DEFAULT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issuableStatusId` int DEFAULT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`,`REV`),
  KEY `FKid3qexmiqlncrl1jv0y18eweg` (`REV`),
  CONSTRAINT `FKid3qexmiqlncrl1jv0y18eweg` FOREIGN KEY (`REV`) REFERENCES `revinfo` (`id`)
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

-- Dump completed on 2024-12-05 17:59:00

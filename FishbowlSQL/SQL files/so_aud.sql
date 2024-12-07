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
-- Table structure for table `so_aud`
--

DROP TABLE IF EXISTS `so_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_aud` (
  `id` int NOT NULL,
  `REV` bigint NOT NULL,
  `REVTYPE` tinyint DEFAULT NULL,
  `billToAddress` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billToCity` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billToCountryId` int DEFAULT NULL,
  `billToName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billToStateId` int DEFAULT NULL,
  `billToZip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calCategoryId` int DEFAULT NULL,
  `carrierId` int DEFAULT NULL,
  `carrierServiceId` int DEFAULT NULL,
  `cost` decimal(28,9) DEFAULT NULL,
  `createdByUserId` int DEFAULT NULL,
  `currencyId` int DEFAULT NULL,
  `currencyRate` double DEFAULT NULL,
  `customerContact` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `customerPO` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateCalStart` datetime(6) DEFAULT NULL,
  `dateCalEnd` datetime(6) DEFAULT NULL,
  `dateCompleted` datetime(6) DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateExpired` datetime(6) DEFAULT NULL,
  `dateFirstShip` datetime(6) DEFAULT NULL,
  `dateIssued` datetime(6) DEFAULT NULL,
  `dateRevision` datetime(6) DEFAULT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimatedTax` decimal(28,9) DEFAULT NULL,
  `fobPointId` int DEFAULT NULL,
  `locationGroupId` int DEFAULT NULL,
  `mcTotalTax` decimal(28,9) DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `num` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentLink` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentTermsId` int DEFAULT NULL,
  `phone` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priorityId` int DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `registerId` int DEFAULT NULL,
  `shipToResidential` bit(1) DEFAULT NULL,
  `revisionNum` int DEFAULT NULL,
  `salesman` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salesmanId` int DEFAULT NULL,
  `salesmanInitials` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipTermsId` int DEFAULT NULL,
  `shipToAddress` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToCity` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToCountryId` int DEFAULT NULL,
  `shipToName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToStateId` int DEFAULT NULL,
  `shipToZip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `taxRate` double DEFAULT NULL,
  `taxRateId` int DEFAULT NULL,
  `taxRateName` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `toBeEmailed` bit(1) DEFAULT NULL,
  `toBePrinted` bit(1) DEFAULT NULL,
  `totalIncludesTax` bit(1) DEFAULT NULL,
  `totalTax` decimal(28,9) DEFAULT NULL,
  `subTotal` decimal(28,9) DEFAULT NULL,
  `totalPrice` decimal(28,9) DEFAULT NULL,
  `typeId` int DEFAULT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendorPO` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`,`REV`),
  KEY `FKr930cu61ho8tqpdv8rv2wg4je` (`REV`),
  CONSTRAINT `FKr930cu61ho8tqpdv8rv2wg4je` FOREIGN KEY (`REV`) REFERENCES `revinfo` (`id`)
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

-- Dump completed on 2024-12-05 17:58:53

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
-- Table structure for table `po_aud`
--

DROP TABLE IF EXISTS `po_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `po_aud` (
  `id` int NOT NULL,
  `REV` bigint NOT NULL,
  `REVTYPE` tinyint DEFAULT NULL,
  `buyer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyerId` int DEFAULT NULL,
  `carrierId` int DEFAULT NULL,
  `carrierServiceId` int DEFAULT NULL,
  `currencyId` int DEFAULT NULL,
  `currencyRate` double DEFAULT NULL,
  `customerSO` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateCompleted` datetime(6) DEFAULT NULL,
  `dateConfirmed` datetime(6) DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateFirstShip` datetime(6) DEFAULT NULL,
  `dateIssued` datetime(6) DEFAULT NULL,
  `dateRevision` datetime(6) DEFAULT NULL,
  `deliverTo` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fobPointId` int DEFAULT NULL,
  `issuedByUserId` int DEFAULT NULL,
  `locationGroupId` int DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `num` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentTermsId` int DEFAULT NULL,
  `phone` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `remitAddress` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remitCity` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remitCountryId` int DEFAULT NULL,
  `remitStateId` int DEFAULT NULL,
  `remitToName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remitZip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revisionNum` int DEFAULT NULL,
  `shipTermsId` int DEFAULT NULL,
  `shipToAddress` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToCity` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToCountryId` int DEFAULT NULL,
  `shipToName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToStateId` int DEFAULT NULL,
  `shipToZip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `taxRateId` int DEFAULT NULL,
  `taxRateName` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalIncludesTax` bit(1) DEFAULT NULL,
  `totalTax` decimal(28,9) DEFAULT NULL,
  `typeId` int DEFAULT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendorContact` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendorId` int DEFAULT NULL,
  `vendorSO` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`,`REV`),
  KEY `FKtcxtnjt3c8qbv560db3dl01i8` (`REV`),
  CONSTRAINT `FKtcxtnjt3c8qbv560db3dl01i8` FOREIGN KEY (`REV`) REFERENCES `revinfo` (`id`)
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

-- Dump completed on 2024-12-05 17:59:03

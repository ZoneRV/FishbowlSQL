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
-- Table structure for table `po`
--

DROP TABLE IF EXISTS `po`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `po` (
  `id` int NOT NULL AUTO_INCREMENT,
  `buyer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyerId` int NOT NULL,
  `carrierId` int NOT NULL,
  `carrierServiceId` int DEFAULT NULL,
  `currencyId` int DEFAULT NULL,
  `currencyRate` double DEFAULT NULL,
  `customerSO` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateCompleted` datetime(6) DEFAULT NULL,
  `dateConfirmed` datetime(6) DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateFirstShip` datetime(6) DEFAULT NULL,
  `dateIssued` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `dateRevision` datetime(6) DEFAULT NULL,
  `deliverTo` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fobPointId` int NOT NULL,
  `issuedByUserId` int DEFAULT NULL,
  `locationGroupId` int NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `num` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentTermsId` int NOT NULL,
  `phone` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `remitAddress` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remitCity` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remitCountryId` int DEFAULT NULL,
  `remitStateId` int DEFAULT NULL,
  `remitToName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remitZip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revisionNum` int DEFAULT NULL,
  `shipTermsId` int NOT NULL,
  `shipToAddress` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToCity` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToCountryId` int DEFAULT NULL,
  `shipToName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToStateId` int DEFAULT NULL,
  `shipToZip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statusId` int NOT NULL,
  `taxRateId` int DEFAULT NULL,
  `taxRateName` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalIncludesTax` bit(1) NOT NULL,
  `totalTax` decimal(28,9) DEFAULT NULL,
  `typeId` int NOT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendorContact` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendorId` int NOT NULL,
  `vendorSO` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKdp7rb75np4g21k831rpgdpfgi` (`num`),
  KEY `FK79ybfw24fkkuhhx7t2ubq4swp` (`carrierId`),
  KEY `FKrr9ng5rglebl56v6gh7dpxwjr` (`currencyId`),
  KEY `FK9v45cfml9phvbpnno56yavhsv` (`fobPointId`),
  KEY `FKns1kxfo7dgixcekw34hu4bnt4` (`locationGroupId`),
  KEY `FKe5r6hfyipyk5lrny0ndcxwhqn` (`paymentTermsId`),
  KEY `FKlb47qhwbc6t1ravynsr45uh8k` (`qbClassId`),
  KEY `FKtnvorwamne54x6ughnkw10osw` (`shipTermsId`),
  KEY `FKr6htame66mxfb2w8gs32vjojn` (`statusId`),
  KEY `FKgixl2jgj96g06pvy04yn6utvw` (`buyerId`),
  KEY `FKkxodwtwddm7c1fpyq7bk86hu7` (`taxRateId`),
  KEY `FKq4xe0mr2qrhbashos3evvmgky` (`typeId`),
  KEY `FKq3hdd263xn41vrctjg1g6txud` (`vendorId`),
  KEY `FKPoCarrierService` (`carrierServiceId`),
  KEY `FKPoIssuedByUser` (`issuedByUserId`),
  CONSTRAINT `FK79ybfw24fkkuhhx7t2ubq4swp` FOREIGN KEY (`carrierId`) REFERENCES `carrier` (`id`),
  CONSTRAINT `FK9v45cfml9phvbpnno56yavhsv` FOREIGN KEY (`fobPointId`) REFERENCES `fobpoint` (`id`),
  CONSTRAINT `FKe5r6hfyipyk5lrny0ndcxwhqn` FOREIGN KEY (`paymentTermsId`) REFERENCES `paymentterms` (`id`),
  CONSTRAINT `FKgixl2jgj96g06pvy04yn6utvw` FOREIGN KEY (`buyerId`) REFERENCES `sysuser` (`id`),
  CONSTRAINT `FKkxodwtwddm7c1fpyq7bk86hu7` FOREIGN KEY (`taxRateId`) REFERENCES `taxrate` (`id`),
  CONSTRAINT `FKlb47qhwbc6t1ravynsr45uh8k` FOREIGN KEY (`qbClassId`) REFERENCES `qbclass` (`id`),
  CONSTRAINT `FKns1kxfo7dgixcekw34hu4bnt4` FOREIGN KEY (`locationGroupId`) REFERENCES `locationgroup` (`id`),
  CONSTRAINT `FKPoCarrierService` FOREIGN KEY (`carrierServiceId`) REFERENCES `carrierservice` (`id`),
  CONSTRAINT `FKPoIssuedByUser` FOREIGN KEY (`issuedByUserId`) REFERENCES `sysuser` (`id`),
  CONSTRAINT `FKq3hdd263xn41vrctjg1g6txud` FOREIGN KEY (`vendorId`) REFERENCES `vendor` (`id`),
  CONSTRAINT `FKq4xe0mr2qrhbashos3evvmgky` FOREIGN KEY (`typeId`) REFERENCES `potype` (`id`),
  CONSTRAINT `FKr6htame66mxfb2w8gs32vjojn` FOREIGN KEY (`statusId`) REFERENCES `postatus` (`id`),
  CONSTRAINT `FKrr9ng5rglebl56v6gh7dpxwjr` FOREIGN KEY (`currencyId`) REFERENCES `currency` (`id`),
  CONSTRAINT `FKtnvorwamne54x6ughnkw10osw` FOREIGN KEY (`shipTermsId`) REFERENCES `shipterms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:46

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
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountId` int NOT NULL,
  `accountNum` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountingHash` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountingId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeFlag` bit(1) NOT NULL,
  `creditLimit` decimal(28,9) DEFAULT NULL,
  `currencyId` int DEFAULT NULL,
  `currencyRate` double DEFAULT NULL,
  `dateEntered` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `defaultCarrierId` int NOT NULL,
  `defaultCarrierServiceId` int DEFAULT NULL,
  `defaultPaymentTermsId` int NOT NULL,
  `defaultShipTermsId` int NOT NULL,
  `lastChangedUser` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leadTime` int DEFAULT NULL,
  `minOrderAmount` decimal(28,9) DEFAULT NULL,
  `name` varchar(41) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statusId` int NOT NULL,
  `sysUserId` int DEFAULT NULL,
  `taxRateId` int DEFAULT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKkdb9k9pj6r0qvq5n36n0pdok2` (`name`),
  KEY `vendorAccountNumIdx` (`accountNum`),
  KEY `FKjwg91uh46u5hf3h71nd1mbj40` (`accountId`),
  KEY `FK1j3nbsjqg4lmst3gn7fbay8vm` (`defaultCarrierId`),
  KEY `FKnrlf4sdg58qevuqn6c91e1kbf` (`currencyId`),
  KEY `FKlw0m775ep4h0g56332mvlniq8` (`defaultPaymentTermsId`),
  KEY `FK7gb4jl1tn8271gsv3lj9u8qg5` (`defaultShipTermsId`),
  KEY `FK786fmhlwef0lumhmtcdgaww5l` (`statusId`),
  KEY `FKc6gsxq6y86dn2lv3ukdd0f5r2` (`taxRateId`),
  KEY `FKVendorCarrierService` (`defaultCarrierServiceId`),
  CONSTRAINT `FK1j3nbsjqg4lmst3gn7fbay8vm` FOREIGN KEY (`defaultCarrierId`) REFERENCES `carrier` (`id`),
  CONSTRAINT `FK786fmhlwef0lumhmtcdgaww5l` FOREIGN KEY (`statusId`) REFERENCES `vendorstatus` (`id`),
  CONSTRAINT `FK7gb4jl1tn8271gsv3lj9u8qg5` FOREIGN KEY (`defaultShipTermsId`) REFERENCES `shipterms` (`id`),
  CONSTRAINT `FKc6gsxq6y86dn2lv3ukdd0f5r2` FOREIGN KEY (`taxRateId`) REFERENCES `taxrate` (`id`),
  CONSTRAINT `FKjwg91uh46u5hf3h71nd1mbj40` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`),
  CONSTRAINT `FKlw0m775ep4h0g56332mvlniq8` FOREIGN KEY (`defaultPaymentTermsId`) REFERENCES `paymentterms` (`id`),
  CONSTRAINT `FKnrlf4sdg58qevuqn6c91e1kbf` FOREIGN KEY (`currencyId`) REFERENCES `currency` (`id`),
  CONSTRAINT `FKVendorCarrierService` FOREIGN KEY (`defaultCarrierServiceId`) REFERENCES `carrierservice` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

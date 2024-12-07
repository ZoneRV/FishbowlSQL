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
-- Table structure for table `so`
--

DROP TABLE IF EXISTS `so`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so` (
  `id` int NOT NULL AUTO_INCREMENT,
  `billToAddress` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billToCity` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billToCountryId` int DEFAULT NULL,
  `billToName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billToStateId` int DEFAULT NULL,
  `billToZip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calCategoryId` int DEFAULT NULL,
  `carrierId` int NOT NULL,
  `carrierServiceId` int DEFAULT NULL,
  `cost` decimal(28,9) DEFAULT NULL,
  `createdByUserId` int DEFAULT NULL,
  `currencyId` int DEFAULT NULL,
  `currencyRate` double DEFAULT NULL,
  `customerContact` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customerId` int NOT NULL,
  `customerPO` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateCalStart` datetime(6) DEFAULT NULL,
  `dateCalEnd` datetime(6) DEFAULT NULL,
  `dateCompleted` datetime(6) DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateExpired` datetime(6) DEFAULT NULL,
  `dateFirstShip` datetime(6) DEFAULT NULL,
  `dateIssued` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `dateRevision` datetime(6) DEFAULT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimatedTax` decimal(28,9) DEFAULT NULL,
  `fobPointId` int NOT NULL,
  `locationGroupId` int NOT NULL,
  `mcTotalTax` decimal(28,9) DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `num` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentLink` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentTermsId` int NOT NULL,
  `phone` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priorityId` int NOT NULL,
  `qbClassId` int DEFAULT NULL,
  `registerId` int DEFAULT NULL,
  `shipToResidential` bit(1) NOT NULL,
  `revisionNum` int DEFAULT NULL,
  `salesman` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salesmanId` int NOT NULL,
  `salesmanInitials` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipTermsId` int DEFAULT NULL,
  `shipToAddress` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToCity` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToCountryId` int DEFAULT NULL,
  `shipToName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipToStateId` int DEFAULT NULL,
  `shipToZip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statusId` int NOT NULL,
  `taxRate` double DEFAULT NULL,
  `taxRateId` int DEFAULT NULL,
  `taxRateName` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `toBeEmailed` bit(1) NOT NULL,
  `toBePrinted` bit(1) NOT NULL,
  `totalIncludesTax` bit(1) NOT NULL,
  `totalTax` decimal(28,9) DEFAULT NULL,
  `subTotal` decimal(28,9) NOT NULL DEFAULT '0.000000000',
  `totalPrice` decimal(28,9) NOT NULL DEFAULT '0.000000000',
  `typeId` int NOT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendorPO` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6u05sv6ksninol838pj0no8s` (`num`),
  KEY `FKk6i192qsul06clopj5ob27nt9` (`carrierId`),
  KEY `FKm215p3f6igsm3crbqq7nweok1` (`carrierServiceId`),
  KEY `FKnf15cjucepcvuj3mki9ccea0u` (`currencyId`),
  KEY `FKd10kh3o7nusuv0bh378q7nw2t` (`customerId`),
  KEY `FKfnw0ujo5hna8wul5dedib947e` (`fobPointId`),
  KEY `FKrypf38gxheyggehl4ssm4l2mt` (`locationGroupId`),
  KEY `FKe0itupe5oygyvberlmd9mfni0` (`paymentTermsId`),
  KEY `FKtceqy7ddohwa7ftaluxt9rir3` (`priorityId`),
  KEY `FK8vbusriy3fhgbfn893wp6d7ia` (`qbClassId`),
  KEY `FKpas03n83xxcfccgg0406rxkvv` (`shipTermsId`),
  KEY `FKcf3l72blx98ducs1ti11soy3y` (`statusId`),
  KEY `FKj68pnq4bc4buyden2dik5nqf5` (`salesmanId`),
  KEY `FKd2xrax3c18ffbu5n9uxrq8rf8` (`taxRateId`),
  KEY `FK2dderdafefd4w7yixduwc0crq` (`typeId`),
  KEY `FKsoCalCategory` (`calCategoryId`),
  KEY `FKSoCreatedByUserId_idx` (`createdByUserId`),
  CONSTRAINT `FK2dderdafefd4w7yixduwc0crq` FOREIGN KEY (`typeId`) REFERENCES `sotype` (`id`),
  CONSTRAINT `FK8vbusriy3fhgbfn893wp6d7ia` FOREIGN KEY (`qbClassId`) REFERENCES `qbclass` (`id`),
  CONSTRAINT `FKcf3l72blx98ducs1ti11soy3y` FOREIGN KEY (`statusId`) REFERENCES `sostatus` (`id`),
  CONSTRAINT `FKd10kh3o7nusuv0bh378q7nw2t` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKd2xrax3c18ffbu5n9uxrq8rf8` FOREIGN KEY (`taxRateId`) REFERENCES `taxrate` (`id`),
  CONSTRAINT `FKe0itupe5oygyvberlmd9mfni0` FOREIGN KEY (`paymentTermsId`) REFERENCES `paymentterms` (`id`),
  CONSTRAINT `FKfnw0ujo5hna8wul5dedib947e` FOREIGN KEY (`fobPointId`) REFERENCES `fobpoint` (`id`),
  CONSTRAINT `FKj68pnq4bc4buyden2dik5nqf5` FOREIGN KEY (`salesmanId`) REFERENCES `sysuser` (`id`),
  CONSTRAINT `FKk6i192qsul06clopj5ob27nt9` FOREIGN KEY (`carrierId`) REFERENCES `carrier` (`id`),
  CONSTRAINT `FKm215p3f6igsm3crbqq7nweok1` FOREIGN KEY (`carrierServiceId`) REFERENCES `carrierservice` (`id`),
  CONSTRAINT `FKnf15cjucepcvuj3mki9ccea0u` FOREIGN KEY (`currencyId`) REFERENCES `currency` (`id`),
  CONSTRAINT `FKpas03n83xxcfccgg0406rxkvv` FOREIGN KEY (`shipTermsId`) REFERENCES `shipterms` (`id`),
  CONSTRAINT `FKrypf38gxheyggehl4ssm4l2mt` FOREIGN KEY (`locationGroupId`) REFERENCES `locationgroup` (`id`),
  CONSTRAINT `FKsoCalCategory` FOREIGN KEY (`calCategoryId`) REFERENCES `calcategory` (`id`),
  CONSTRAINT `FKSoCreatedByUserId` FOREIGN KEY (`createdByUserId`) REFERENCES `sysuser` (`id`),
  CONSTRAINT `FKtceqy7ddohwa7ftaluxt9rir3` FOREIGN KEY (`priorityId`) REFERENCES `priority` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountId` int NOT NULL,
  `accountingHash` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountingId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeFlag` bit(1) NOT NULL,
  `carrierServiceId` int DEFAULT NULL,
  `creditLimit` decimal(28,9) DEFAULT NULL,
  `currencyId` int DEFAULT NULL,
  `currencyRate` decimal(28,9) DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `defaultCarrierId` int DEFAULT NULL,
  `defaultPaymentTermsId` int NOT NULL,
  `defaultPriorityId` int DEFAULT NULL,
  `defaultSalesmanId` int DEFAULT NULL,
  `defaultShipTermsId` int NOT NULL,
  `jobDepth` int DEFAULT NULL,
  `lastChangedUser` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(41) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentId` int DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `statusId` int NOT NULL,
  `sysUserId` int DEFAULT NULL,
  `taxExempt` bit(1) NOT NULL,
  `taxExemptNumber` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxRateId` int DEFAULT NULL,
  `toBeEmailed` bit(1) NOT NULL,
  `toBePrinted` bit(1) NOT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issuableStatusId` int DEFAULT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6i1jo7brg3kqpdiw58ye3vasv` (`number`),
  UNIQUE KEY `UKce8f1dpemolf390y20ijetd7k` (`name`,`parentId`),
  KEY `customerNameIdx` (`name`),
  KEY `customerNumberIdx` (`number`),
  KEY `FK94bqsq44lb8q1t7yg3p4xbw7r` (`accountId`),
  KEY `FK4g00osq6ky1r9nyimx2xsxva9` (`carrierServiceId`),
  KEY `FKs0r6464d8usongpt7d96x6hwj` (`currencyId`),
  KEY `FKstgsiyl5p2aqlpu6c4dnj9q5w` (`defaultCarrierId`),
  KEY `FKh1kfwowfqhqany0pn3jqnhiy6` (`defaultPaymentTermsId`),
  KEY `FKcustomerDefaultPriority` (`defaultPriorityId`),
  KEY `FKo7xxd2shpuh9lxg8v4lksy2fm` (`defaultShipTermsId`),
  KEY `FKieq94r5kgbqax6xo4g45c3txj` (`parentId`),
  KEY `FKlr7myb3s9g6ab1k3q9jwerfo6` (`qbClassId`),
  KEY `FKcc0seu1jhtpcxl9pjyfyseyh5` (`statusId`),
  KEY `FKdjai2kvporlupbtelejvebh21` (`taxRateId`),
  KEY `issuableStatusKey` (`issuableStatusId`),
  CONSTRAINT `FK4g00osq6ky1r9nyimx2xsxva9` FOREIGN KEY (`carrierServiceId`) REFERENCES `carrierservice` (`id`),
  CONSTRAINT `FK94bqsq44lb8q1t7yg3p4xbw7r` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`),
  CONSTRAINT `FKcc0seu1jhtpcxl9pjyfyseyh5` FOREIGN KEY (`statusId`) REFERENCES `customerstatus` (`id`),
  CONSTRAINT `FKcustomerDefaultPriority` FOREIGN KEY (`defaultPriorityId`) REFERENCES `priority` (`id`),
  CONSTRAINT `FKdjai2kvporlupbtelejvebh21` FOREIGN KEY (`taxRateId`) REFERENCES `taxrate` (`id`),
  CONSTRAINT `FKh1kfwowfqhqany0pn3jqnhiy6` FOREIGN KEY (`defaultPaymentTermsId`) REFERENCES `paymentterms` (`id`),
  CONSTRAINT `FKieq94r5kgbqax6xo4g45c3txj` FOREIGN KEY (`parentId`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKlr7myb3s9g6ab1k3q9jwerfo6` FOREIGN KEY (`qbClassId`) REFERENCES `qbclass` (`id`),
  CONSTRAINT `FKo7xxd2shpuh9lxg8v4lksy2fm` FOREIGN KEY (`defaultShipTermsId`) REFERENCES `shipterms` (`id`),
  CONSTRAINT `FKs0r6464d8usongpt7d96x6hwj` FOREIGN KEY (`currencyId`) REFERENCES `currency` (`id`),
  CONSTRAINT `FKstgsiyl5p2aqlpu6c4dnj9q5w` FOREIGN KEY (`defaultCarrierId`) REFERENCES `carrier` (`id`),
  CONSTRAINT `issuableStatusKey` FOREIGN KEY (`issuableStatusId`) REFERENCES `issuablestatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:59

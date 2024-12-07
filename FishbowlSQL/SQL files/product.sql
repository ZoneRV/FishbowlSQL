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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountingHash` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountingId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeFlag` bit(1) NOT NULL,
  `alertNote` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cartonCount` decimal(28,9) NOT NULL DEFAULT '0.000000000',
  `defaultCartonTypeId` int DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `defaultSoItemType` int NOT NULL,
  `description` varchar(252) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `displayTypeId` int DEFAULT NULL,
  `height` decimal(28,9) DEFAULT NULL,
  `incomeAccountId` int DEFAULT NULL,
  `kitFlag` bit(1) NOT NULL,
  `kitGroupedFlag` bit(1) NOT NULL,
  `len` decimal(28,9) DEFAULT NULL,
  `num` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partId` int DEFAULT NULL,
  `price` decimal(28,9) DEFAULT NULL,
  `qbClassId` int DEFAULT NULL,
  `sellableInOtherUoms` bit(1) NOT NULL,
  `showSoComboFlag` bit(1) NOT NULL,
  `sizeUomId` int DEFAULT NULL,
  `sku` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxId` int DEFAULT NULL,
  `taxableFlag` bit(1) NOT NULL,
  `uomId` int NOT NULL,
  `upc` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usePriceFlag` bit(1) NOT NULL,
  `weight` decimal(28,9) DEFAULT NULL,
  `weightUomId` int DEFAULT NULL,
  `width` decimal(28,9) DEFAULT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_pvbunwdwn8v8e5n6lt6wyghfg` (`num`),
  KEY `ProductNumIdx` (`num`),
  KEY `ProductDescriptionIdx` (`description`),
  KEY `ProductSkuIdx` (`sku`),
  KEY `ProductUpcIdx` (`upc`),
  KEY `ProductShowSoComboFlagIdx` (`showSoComboFlag`),
  KEY `FKmpt7wmnpasu4xm9htvlx4tk2o` (`defaultSoItemType`),
  KEY `FKl6kuy56bo330inolrb9f6rwbq` (`displayTypeId`),
  KEY `FKkouipxtdl8e1xm2cpojs2gqk` (`incomeAccountId`),
  KEY `FKj9v7tao0cke6neukmq70q0i14` (`partId`),
  KEY `FKj4pceg5l3atadp8o1ikbnl37f` (`qbClassId`),
  KEY `FKqtt5lk0of46jkiqlfu1hqgvao` (`sizeUomId`),
  KEY `FKomhtsqhqgt8v81tmu4vjb3kuf` (`taxId`),
  KEY `FKexsq89d2vtabwkk78n5cku33o` (`uomId`),
  KEY `FK7mm9b0j0rgdgiua6dbywitopj` (`weightUomId`),
  KEY `FKcartonType` (`defaultCartonTypeId`),
  CONSTRAINT `FK7mm9b0j0rgdgiua6dbywitopj` FOREIGN KEY (`weightUomId`) REFERENCES `uom` (`id`),
  CONSTRAINT `FKcartonType` FOREIGN KEY (`defaultCartonTypeId`) REFERENCES `cartontype` (`id`),
  CONSTRAINT `FKexsq89d2vtabwkk78n5cku33o` FOREIGN KEY (`uomId`) REFERENCES `uom` (`id`),
  CONSTRAINT `FKj4pceg5l3atadp8o1ikbnl37f` FOREIGN KEY (`qbClassId`) REFERENCES `qbclass` (`id`),
  CONSTRAINT `FKj9v7tao0cke6neukmq70q0i14` FOREIGN KEY (`partId`) REFERENCES `part` (`id`),
  CONSTRAINT `FKkouipxtdl8e1xm2cpojs2gqk` FOREIGN KEY (`incomeAccountId`) REFERENCES `asaccount` (`id`),
  CONSTRAINT `FKl6kuy56bo330inolrb9f6rwbq` FOREIGN KEY (`displayTypeId`) REFERENCES `kitdisplaytype` (`id`),
  CONSTRAINT `FKmpt7wmnpasu4xm9htvlx4tk2o` FOREIGN KEY (`defaultSoItemType`) REFERENCES `soitemtype` (`id`),
  CONSTRAINT `FKomhtsqhqgt8v81tmu4vjb3kuf` FOREIGN KEY (`taxId`) REFERENCES `taxrate` (`id`),
  CONSTRAINT `FKqtt5lk0of46jkiqlfu1hqgvao` FOREIGN KEY (`sizeUomId`) REFERENCES `uom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:56

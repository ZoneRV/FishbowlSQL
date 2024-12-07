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
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part` (
  `id` int NOT NULL AUTO_INCREMENT,
  `abcCode` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountingHash` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountingId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeFlag` bit(1) NOT NULL,
  `adjustmentAccountId` int DEFAULT NULL,
  `alertNote` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alwaysManufacture` bit(1) NOT NULL,
  `cogsAccountId` int DEFAULT NULL,
  `configurable` bit(1) NOT NULL,
  `consumptionRate` decimal(28,9) NOT NULL DEFAULT '0.000000000',
  `controlledFlag` bit(1) NOT NULL,
  `cycleCountTol` decimal(28,9) DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `defaultBomId` int DEFAULT NULL,
  `defaultOutsourcedReturnItemId` int DEFAULT NULL,
  `defaultPoItemTypeId` int DEFAULT NULL,
  `defaultProductId` int DEFAULT NULL,
  `description` varchar(252) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `height` decimal(28,9) DEFAULT NULL,
  `inventoryAccountId` int DEFAULT NULL,
  `lastChangedUser` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leadTime` int DEFAULT NULL,
  `len` decimal(28,9) DEFAULT NULL,
  `num` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partClassId` int DEFAULT NULL,
  `pickInUomOfPart` bit(1) NOT NULL,
  `receivingTol` decimal(28,9) DEFAULT NULL,
  `revision` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scrapAccountId` int DEFAULT NULL,
  `serializedFlag` bit(1) NOT NULL,
  `sizeUomId` int DEFAULT NULL,
  `stdCost` decimal(28,9) DEFAULT NULL,
  `taxId` int DEFAULT NULL,
  `trackingFlag` bit(1) NOT NULL,
  `typeId` int NOT NULL,
  `uomId` int NOT NULL,
  `upc` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `varianceAccountId` int DEFAULT NULL,
  `weight` decimal(28,9) DEFAULT NULL,
  `weightUomId` int DEFAULT NULL,
  `width` decimal(28,9) DEFAULT NULL,
  `customFields` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKqnd735nbo16erc7luyqe8bchn` (`num`),
  KEY `partNumIdx` (`num`),
  KEY `partDescriptionIdx` (`description`),
  KEY `partUPCIdx` (`upc`),
  KEY `FK1tjoy7axycg81d1jj8fxdibgw` (`adjustmentAccountId`),
  KEY `FKgo6p90v4bag4p6flg0wq9igl3` (`defaultBomId`),
  KEY `FKPoItemType` (`defaultPoItemTypeId`),
  KEY `FKeyunpip5cqrlelvtrcc1rukaq` (`cogsAccountId`),
  KEY `FKd66hs7743k1fatmsronlq7l5v` (`defaultProductId`),
  KEY `FKce78r5mq7swada1brt8m1x852` (`inventoryAccountId`),
  KEY `FKc5wpf2q8fjmwr9xhnvpxk7stt` (`typeId`),
  KEY `FK84ru0seuvjnpvr9o1nldwynd9` (`scrapAccountId`),
  KEY `FKehqatujavsaf5bfxw6n1c702t` (`sizeUomId`),
  KEY `FKj7exys6ksj7osv0evb6seyjoi` (`taxId`),
  KEY `FKhinn05th5neilep4wj1m7jw02` (`uomId`),
  KEY `FKm4swbkft1n14fdtnnywbguyl5` (`varianceAccountId`),
  KEY `FK3680fxg2n0j7yrjj4fq9elsq9` (`weightUomId`),
  KEY `FKOutsourcedReturnItem` (`defaultOutsourcedReturnItemId`),
  CONSTRAINT `FK1tjoy7axycg81d1jj8fxdibgw` FOREIGN KEY (`adjustmentAccountId`) REFERENCES `asaccount` (`id`),
  CONSTRAINT `FK3680fxg2n0j7yrjj4fq9elsq9` FOREIGN KEY (`weightUomId`) REFERENCES `uom` (`id`),
  CONSTRAINT `FK84ru0seuvjnpvr9o1nldwynd9` FOREIGN KEY (`scrapAccountId`) REFERENCES `asaccount` (`id`),
  CONSTRAINT `FKc5wpf2q8fjmwr9xhnvpxk7stt` FOREIGN KEY (`typeId`) REFERENCES `parttype` (`id`),
  CONSTRAINT `FKce78r5mq7swada1brt8m1x852` FOREIGN KEY (`inventoryAccountId`) REFERENCES `asaccount` (`id`),
  CONSTRAINT `FKd66hs7743k1fatmsronlq7l5v` FOREIGN KEY (`defaultProductId`) REFERENCES `product` (`id`),
  CONSTRAINT `FKehqatujavsaf5bfxw6n1c702t` FOREIGN KEY (`sizeUomId`) REFERENCES `uom` (`id`),
  CONSTRAINT `FKeyunpip5cqrlelvtrcc1rukaq` FOREIGN KEY (`cogsAccountId`) REFERENCES `asaccount` (`id`),
  CONSTRAINT `FKgo6p90v4bag4p6flg0wq9igl3` FOREIGN KEY (`defaultBomId`) REFERENCES `bom` (`id`),
  CONSTRAINT `FKhinn05th5neilep4wj1m7jw02` FOREIGN KEY (`uomId`) REFERENCES `uom` (`id`),
  CONSTRAINT `FKj7exys6ksj7osv0evb6seyjoi` FOREIGN KEY (`taxId`) REFERENCES `taxrate` (`id`),
  CONSTRAINT `FKm4swbkft1n14fdtnnywbguyl5` FOREIGN KEY (`varianceAccountId`) REFERENCES `asaccount` (`id`),
  CONSTRAINT `FKOutsourcedReturnItem` FOREIGN KEY (`defaultOutsourcedReturnItemId`) REFERENCES `part` (`id`),
  CONSTRAINT `FKPoItemType` FOREIGN KEY (`defaultPoItemTypeId`) REFERENCES `poitemtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

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
-- Table structure for table `receiptitem`
--

DROP TABLE IF EXISTS `receiptitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receiptitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `billVendorFlag` bit(1) NOT NULL,
  `billedTotalCost` decimal(28,9) DEFAULT NULL,
  `mcBilledTotalCost` decimal(28,9) DEFAULT NULL,
  `carrierId` int DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `dateBilled` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `dateReceived` datetime(6) DEFAULT NULL,
  `dateReconciled` datetime(6) DEFAULT NULL,
  `deliverTo` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landedTotalCost` decimal(28,9) DEFAULT NULL,
  `mcLandedTotalCost` decimal(28,9) DEFAULT NULL,
  `locationId` int DEFAULT NULL,
  `orderTypeId` int NOT NULL,
  `packageCount` int DEFAULT NULL,
  `partId` int DEFAULT NULL,
  `partTypeId` int NOT NULL,
  `poItemId` int DEFAULT NULL,
  `qty` decimal(28,9) DEFAULT NULL,
  `reason` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiptId` int NOT NULL,
  `refNo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsibilityId` int DEFAULT NULL,
  `shipItemId` int DEFAULT NULL,
  `soItemId` int DEFAULT NULL,
  `statusId` int NOT NULL,
  `tagId` bigint DEFAULT NULL,
  `taxId` int DEFAULT NULL,
  `taxRate` double DEFAULT NULL,
  `trackingNum` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `typeId` int NOT NULL,
  `uomId` int NOT NULL,
  `xoItemId` int DEFAULT NULL,
  `outsourcedCost` decimal(28,9) DEFAULT NULL,
  `carrierServiceId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ReceiptItemDateReceivedIdx` (`dateReceived`),
  KEY `ReceiptItemDateReconciledIdx` (`dateReconciled`),
  KEY `ReceiptItemDateBilledIdx` (`dateBilled`),
  KEY `FKgnpf1ucchpx48emkf1uy5ikwb` (`carrierId`),
  KEY `FKa6ys8h5icpegfhvvtrqr0l6n3` (`customerId`),
  KEY `FKoig8kulfvaw0scrgi86jdaw23` (`orderTypeId`),
  KEY `FKidqu7nms2hqyr3qlgaiu95dud` (`partId`),
  KEY `FKtqs16jjg57yn5mg5d61osoeyd` (`partTypeId`),
  KEY `FKct73aik026yusq2aemgxqy7a2` (`poItemId`),
  KEY `FKhgu7j8jnv2c6h0sraqh2pqqph` (`receiptId`),
  KEY `FKcddq9ae9kw17avpo74s84mamf` (`typeId`),
  KEY `FKnm4lsdmiir6vr44nn6ud4snqj` (`soItemId`),
  KEY `FK5vo9fll6inbxe82m7utbm20rm` (`statusId`),
  KEY `FK7nnbc9ama1wr4yux4csnqit2v` (`taxId`),
  KEY `FK1s1h8w2bxtnva4248h7w6e0or` (`uomId`),
  KEY `FKp5ylf9bhlswke1698pvbdw1dj` (`xoItemId`),
  CONSTRAINT `FK1s1h8w2bxtnva4248h7w6e0or` FOREIGN KEY (`uomId`) REFERENCES `uom` (`id`),
  CONSTRAINT `FK5vo9fll6inbxe82m7utbm20rm` FOREIGN KEY (`statusId`) REFERENCES `receiptitemstatus` (`id`),
  CONSTRAINT `FK7nnbc9ama1wr4yux4csnqit2v` FOREIGN KEY (`taxId`) REFERENCES `taxrate` (`id`),
  CONSTRAINT `FKa6ys8h5icpegfhvvtrqr0l6n3` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKcddq9ae9kw17avpo74s84mamf` FOREIGN KEY (`typeId`) REFERENCES `receiptitemtype` (`id`),
  CONSTRAINT `FKct73aik026yusq2aemgxqy7a2` FOREIGN KEY (`poItemId`) REFERENCES `poitem` (`id`),
  CONSTRAINT `FKgnpf1ucchpx48emkf1uy5ikwb` FOREIGN KEY (`carrierId`) REFERENCES `carrier` (`id`),
  CONSTRAINT `FKhgu7j8jnv2c6h0sraqh2pqqph` FOREIGN KEY (`receiptId`) REFERENCES `receipt` (`id`),
  CONSTRAINT `FKidqu7nms2hqyr3qlgaiu95dud` FOREIGN KEY (`partId`) REFERENCES `part` (`id`),
  CONSTRAINT `FKnm4lsdmiir6vr44nn6ud4snqj` FOREIGN KEY (`soItemId`) REFERENCES `soitem` (`id`),
  CONSTRAINT `FKoig8kulfvaw0scrgi86jdaw23` FOREIGN KEY (`orderTypeId`) REFERENCES `ordertype` (`id`),
  CONSTRAINT `FKp5ylf9bhlswke1698pvbdw1dj` FOREIGN KEY (`xoItemId`) REFERENCES `xoitem` (`id`),
  CONSTRAINT `FKtqs16jjg57yn5mg5d61osoeyd` FOREIGN KEY (`partTypeId`) REFERENCES `parttype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:57

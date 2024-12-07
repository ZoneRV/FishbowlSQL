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
-- Table structure for table `pricingrule`
--

DROP TABLE IF EXISTS `pricingrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricingrule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerInclId` int DEFAULT NULL,
  `customerInclTypeId` int NOT NULL,
  `dateApplies` bit(1) NOT NULL,
  `dateBegin` datetime(6) DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateEnd` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `isActive` bit(1) NOT NULL,
  `isAutoApply` bit(1) NOT NULL,
  `isTier2` bit(1) NOT NULL,
  `name` varchar(41) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paAmount` decimal(28,9) DEFAULT NULL,
  `paApplies` bit(1) NOT NULL,
  `paBaseAmountTypeId` int DEFAULT NULL,
  `paPercent` decimal(28,9) DEFAULT NULL,
  `paTypeId` int DEFAULT NULL,
  `productInclId` int DEFAULT NULL,
  `productInclTypeId` int NOT NULL,
  `qtyApplies` bit(1) NOT NULL,
  `qtyMax` decimal(28,9) DEFAULT NULL,
  `qtyMin` decimal(28,9) DEFAULT NULL,
  `rndApplies` bit(1) NOT NULL,
  `rndIsMinus` bit(1) NOT NULL,
  `rndPMAmount` decimal(28,9) DEFAULT NULL,
  `rndToAmount` decimal(28,9) DEFAULT NULL,
  `rndTypeId` int DEFAULT NULL,
  `spcApplies` bit(1) NOT NULL,
  `spcBuyX` int DEFAULT NULL,
  `spcGetYFree` int DEFAULT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKrt6jylcshd3siajamdd4632rx` (`name`),
  KEY `PricingRuleProductInclIdIdx` (`productInclId`),
  KEY `FKo6vpn7dj74hauf25n0nt3jxq0` (`customerInclTypeId`),
  KEY `FKqxhcagwiruywtpw5ynf7p8uag` (`paBaseAmountTypeId`),
  KEY `FK9bjrykiwa7abl7nmoafr19io5` (`paTypeId`),
  KEY `FKejo1ljvdsav4eqqlwkt2poldy` (`productInclTypeId`),
  KEY `FKm5fhbvu9bqn2dbiirl213d1vb` (`rndTypeId`),
  KEY `FK9tlisi4j6au13jdu4x3bg0t85` (`userId`),
  CONSTRAINT `FK9bjrykiwa7abl7nmoafr19io5` FOREIGN KEY (`paTypeId`) REFERENCES `patype` (`id`),
  CONSTRAINT `FK9tlisi4j6au13jdu4x3bg0t85` FOREIGN KEY (`userId`) REFERENCES `sysuser` (`id`),
  CONSTRAINT `FKejo1ljvdsav4eqqlwkt2poldy` FOREIGN KEY (`productInclTypeId`) REFERENCES `productincltype` (`id`),
  CONSTRAINT `FKm5fhbvu9bqn2dbiirl213d1vb` FOREIGN KEY (`rndTypeId`) REFERENCES `rndtype` (`id`),
  CONSTRAINT `FKo6vpn7dj74hauf25n0nt3jxq0` FOREIGN KEY (`customerInclTypeId`) REFERENCES `customerincltype` (`id`),
  CONSTRAINT `FKqxhcagwiruywtpw5ynf7p8uag` FOREIGN KEY (`paBaseAmountTypeId`) REFERENCES `pabaseamounttype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

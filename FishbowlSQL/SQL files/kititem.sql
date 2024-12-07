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
-- Table structure for table `kititem`
--

DROP TABLE IF EXISTS `kititem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kititem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime(6) DEFAULT NULL,
  `dateLastModified` datetime(6) DEFAULT NULL,
  `defaultQty` decimal(28,9) NOT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discountId` int DEFAULT NULL,
  `kitItemTypeId` int NOT NULL,
  `kitProductId` int NOT NULL,
  `kitTypeId` int NOT NULL,
  `maxQty` decimal(28,9) NOT NULL,
  `minQty` decimal(28,9) NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `productId` int DEFAULT NULL,
  `qtyPriceAdjustment` decimal(28,9) DEFAULT NULL,
  `soItemTypeId` int DEFAULT NULL,
  `sortOrder` int DEFAULT NULL,
  `taxRateId` int DEFAULT NULL,
  `uomId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKciiikjl03nmgpmqpp45eat6qf` (`discountId`),
  KEY `FKnnq6wba83pk2qh7c2x8mhhbmk` (`kitItemTypeId`),
  KEY `FKiijbe14ru0vm22ruoi64vs9ks` (`kitProductId`),
  KEY `FKi8w84xt4bveufskomxkmc8lf` (`kitTypeId`),
  KEY `FK8i2pu1q41ph3o0228k6sb68x5` (`productId`),
  KEY `FKjvl5i0ij32utt7baciv7nsfym` (`soItemTypeId`),
  KEY `FK69o19mjn68kqokl05iid361fu` (`taxRateId`),
  KEY `FKtjwqga0pi4rqkqidd27p24hj` (`uomId`),
  CONSTRAINT `FK69o19mjn68kqokl05iid361fu` FOREIGN KEY (`taxRateId`) REFERENCES `taxrate` (`id`),
  CONSTRAINT `FK8i2pu1q41ph3o0228k6sb68x5` FOREIGN KEY (`productId`) REFERENCES `product` (`id`),
  CONSTRAINT `FKciiikjl03nmgpmqpp45eat6qf` FOREIGN KEY (`discountId`) REFERENCES `itemadjust` (`id`),
  CONSTRAINT `FKi8w84xt4bveufskomxkmc8lf` FOREIGN KEY (`kitTypeId`) REFERENCES `kittype` (`id`),
  CONSTRAINT `FKiijbe14ru0vm22ruoi64vs9ks` FOREIGN KEY (`kitProductId`) REFERENCES `product` (`id`),
  CONSTRAINT `FKjvl5i0ij32utt7baciv7nsfym` FOREIGN KEY (`soItemTypeId`) REFERENCES `soitemtype` (`id`),
  CONSTRAINT `FKnnq6wba83pk2qh7c2x8mhhbmk` FOREIGN KEY (`kitItemTypeId`) REFERENCES `kititemtype` (`id`),
  CONSTRAINT `FKtjwqga0pi4rqkqidd27p24hj` FOREIGN KEY (`uomId`) REFERENCES `uom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:52

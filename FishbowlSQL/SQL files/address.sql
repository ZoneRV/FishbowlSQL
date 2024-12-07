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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountId` int NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryId` int DEFAULT NULL,
  `defaultFlag` bit(1) NOT NULL,
  `locationGroupId` int DEFAULT NULL,
  `addressName` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `residentialFlag` bit(1) NOT NULL,
  `stateId` int DEFAULT NULL,
  `address` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeID` int NOT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK5w1mb41edcvduewuqia318h69` (`addressName`,`accountId`),
  KEY `FK67byjyhh5igpeofrgnaoosxp` (`accountId`),
  KEY `FKqicc2emqupxahe07grwtdjmsg` (`typeID`),
  KEY `FKs3f5hqoh7xwfocskewrm3o24k` (`countryId`),
  KEY `FKeb9p2sl5g5eg3ss19hxfj68vx` (`locationGroupId`),
  KEY `FKjlrluybov0bdf54mmt379j2ri` (`stateId`),
  CONSTRAINT `FK67byjyhh5igpeofrgnaoosxp` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`),
  CONSTRAINT `FKeb9p2sl5g5eg3ss19hxfj68vx` FOREIGN KEY (`locationGroupId`) REFERENCES `locationgroup` (`id`),
  CONSTRAINT `FKjlrluybov0bdf54mmt379j2ri` FOREIGN KEY (`stateId`) REFERENCES `stateconst` (`id`),
  CONSTRAINT `FKqicc2emqupxahe07grwtdjmsg` FOREIGN KEY (`typeID`) REFERENCES `addresstype` (`id`),
  CONSTRAINT `FKs3f5hqoh7xwfocskewrm3o24k` FOREIGN KEY (`countryId`) REFERENCES `countryconst` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:58:50

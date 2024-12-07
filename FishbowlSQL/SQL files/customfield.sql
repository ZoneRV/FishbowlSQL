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
-- Table structure for table `customfield`
--

DROP TABLE IF EXISTS `customfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customfield` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accessRight` bit(1) NOT NULL,
  `activeFlag` bit(1) NOT NULL,
  `customFieldTypeId` int NOT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listId` int DEFAULT NULL,
  `name` varchar(41) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` bit(1) NOT NULL,
  `sortOrder` int NOT NULL,
  `tableId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKokqy39j1gy4c1ehml3fioyhdb` (`name`,`tableId`),
  KEY `customFieldTableIdIdx` (`tableId`),
  KEY `customFieldListIdIdx` (`listId`),
  KEY `FKsg6cy0hqdm3fa8mlf6n9smmcp` (`customFieldTypeId`),
  CONSTRAINT `FKghxn2pt9kcshhvxb16rme6pcn` FOREIGN KEY (`listId`) REFERENCES `customlist` (`id`),
  CONSTRAINT `FKsg6cy0hqdm3fa8mlf6n9smmcp` FOREIGN KEY (`customFieldTypeId`) REFERENCES `customfieldtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 17:59:05

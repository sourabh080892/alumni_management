-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: segr5300
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alum_events`
--

DROP TABLE IF EXISTS `alum_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alum_events` (
  `alum_events_id` int(6) NOT NULL,
  `all_events_id` int(6) NOT NULL,
  `alumni_id` int(6) NOT NULL,
  `attended` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`alum_events_id`),
  KEY `all_events_id` (`all_events_id`),
  KEY `alumni_id` (`alumni_id`),
  CONSTRAINT `alum_events_ibfk_1` FOREIGN KEY (`all_events_id`) REFERENCES `all_events` (`all_events_id`),
  CONSTRAINT `alum_events_ibfk_2` FOREIGN KEY (`alumni_id`) REFERENCES `alumni` (`alumni_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alum_events`
--

LOCK TABLES `alum_events` WRITE;
/*!40000 ALTER TABLE `alum_events` DISABLE KEYS */;
INSERT INTO `alum_events` VALUES (1,9,47,1),(2,3,21,1),(3,6,37,1),(4,4,8,1),(5,3,6,0),(6,9,5,0),(7,6,6,1),(8,8,14,1),(9,2,47,0),(10,2,6,1),(11,8,36,0),(12,5,7,0),(13,2,11,0),(14,7,44,1),(15,2,2,1),(16,2,43,0),(17,6,37,1),(18,5,20,0),(19,1,41,1),(20,8,35,0),(21,2,1,0),(22,3,37,1),(23,1,40,0),(24,6,37,0),(25,7,6,0),(26,1,23,1),(27,1,16,1),(28,4,46,1),(29,6,9,1),(30,6,28,1),(31,7,17,0),(32,4,17,0),(33,1,4,1),(34,8,1,1),(35,3,11,0),(36,7,40,1),(37,8,15,1),(38,3,11,0),(39,5,32,1),(40,3,48,1);
/*!40000 ALTER TABLE `alum_events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-27 22:40:19

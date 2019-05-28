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
-- Table structure for table `alumni_donation`
--

DROP TABLE IF EXISTS `alumni_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alumni_donation` (
  `alumni_donation_id` int(6) NOT NULL,
  `alumni_donation_memo` varchar(50) DEFAULT NULL,
  `alumni_donation_amount` decimal(13,2) DEFAULT NULL,
  `alumni_id` int(6) NOT NULL,
  PRIMARY KEY (`alumni_donation_id`),
  KEY `alumni_id` (`alumni_id`),
  CONSTRAINT `alumni_donation_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `alumni` (`alumni_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumni_donation`
--

LOCK TABLES `alumni_donation` WRITE;
/*!40000 ALTER TABLE `alumni_donation` DISABLE KEYS */;
INSERT INTO `alumni_donation` VALUES (1,'New Machine Learning Building',100.00,5),(2,'New Machine Learning Building',80.00,8),(3,'New Machine Learning Building',50.00,10),(4,'Annual Scholarship fund',100.00,21),(5,'Annual Scholarship fund',100.00,1),(6,'Annual Scholarship fund',100.00,3),(7,'New Machine Learning Building',200.00,11),(8,'New Machine Learning Building',100.00,18),(9,'Annual Scholarship fund',100.00,18),(10,'New Research Lab',100.00,15),(11,'New Machine Learning Building',100.00,23),(12,'New Research Lab',80.00,33),(13,'New Machine Learning Building',50.00,22),(14,'Annual Scholarship fund',100.00,16),(15,'Annual International Scholarship fund',100.00,14),(16,'Annual Scholarship fund',100.00,33),(17,'New Research Lab',200.00,31),(18,'New Machine Learning Building',100.00,19),(19,'Annual International Scholarship fund',100.00,28),(20,'New Machine Learning Building',100.00,45),(21,'New Machine Learning Building',200.00,43),(22,'New Research Lab',50.00,43),(23,'New Machine Learning Building',150.00,42),(24,'Annual Scholarship fund',120.00,46),(25,'Annual International Scholarship fund',150.00,44),(26,'Annual Scholarship fund',100.00,39),(27,'New Research Lab',200.00,41),(28,'New Machine Learning Building',100.00,49),(29,'Annual International Scholarship fund',100.00,51),(30,'New Machine Learning Building',100.00,50);
/*!40000 ALTER TABLE `alumni_donation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-27 22:40:20

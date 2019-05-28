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
-- Table structure for table `alum_program`
--

DROP TABLE IF EXISTS `alum_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alum_program` (
  `alum_program_id` int(6) NOT NULL,
  `alumni_id` int(6) NOT NULL,
  `program_id` int(6) NOT NULL,
  `alum_program_grad_year` year(4) DEFAULT NULL,
  PRIMARY KEY (`alum_program_id`),
  KEY `alumni_id` (`alumni_id`),
  KEY `program_id` (`program_id`),
  CONSTRAINT `alum_program_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `alumni` (`alumni_id`),
  CONSTRAINT `alum_program_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `program` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alum_program`
--

LOCK TABLES `alum_program` WRITE;
/*!40000 ALTER TABLE `alum_program` DISABLE KEYS */;
INSERT INTO `alum_program` VALUES (1,1,21,1990),(2,2,8,2010),(3,3,2,2014),(4,4,6,1991),(5,5,8,2005),(6,6,2,2012),(7,7,4,2008),(8,8,3,1996),(9,9,4,1992),(10,10,24,2010),(11,11,1,2002),(12,12,18,2013),(13,13,25,2002),(14,14,23,2013),(15,15,2,2005),(16,16,7,2003),(17,17,18,1991),(18,18,11,2002),(19,19,2,2004),(20,20,22,2008),(21,21,15,1996),(22,22,12,1998),(23,23,6,1994),(24,24,8,2010),(25,25,25,1992),(26,26,17,2010),(27,27,14,1991),(28,28,21,1999),(29,29,22,2013),(30,30,7,1996),(31,31,16,1995),(32,32,7,1991),(33,33,8,1999),(34,34,3,1992),(35,35,15,1995),(36,36,22,2002),(37,37,3,2009),(38,38,19,2002),(39,39,6,2012),(40,40,16,2003),(41,41,24,2003),(42,42,22,1996),(43,43,20,1996),(44,44,12,2013),(45,45,14,2001),(46,46,9,1996),(47,47,5,2010),(48,48,21,2005),(49,49,3,1999),(50,50,15,1998),(51,51,2,2000);
/*!40000 ALTER TABLE `alum_program` ENABLE KEYS */;
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

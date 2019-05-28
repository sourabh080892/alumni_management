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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `department_id` int(6) NOT NULL,
  `department_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Accounting'),(2,'Adult Education & Training'),(3,'Anthropology, Sociology, & Social work'),(4,'Biology'),(5,'Business School'),(6,'Civil/Environmental Engineering'),(7,'Chemistry'),(8,'Culture and Language Bridge'),(9,'Communication/Journalism'),(10,'Counseling'),(11,'Criminal Justice'),(12,'Computer Science/Software Engineering'),(13,'Center for the Study of Sport'),(14,'Curriculum & Instruction'),(15,'Digital Cultures'),(16,'Diagnostic Ultrasound'),(17,'Electrical/Computer Engineering'),(18,'Economics'),(19,'Education Administration'),(20,'Education Leadership'),(21,'Education Professional Development'),(22,'General Education'),(23,'Educating Non-Native English Speakers'),(24,'English'),(25,'Center for Leadership Formation'),(26,'Finance'),(27,'History'),(28,'Interdisciplinary Liberal Studies'),(29,'International Studies'),(30,'Institute of Public Service'),(31,'Interdisciplinary Studies'),(32,'Kinesiology'),(33,'Law School'),(34,'Literacy for Diverse Learners'),(35,'Mathematics'),(36,'Modern Languages'),(37,'Mechanical Engineering'),(38,'Management'),(39,'Marketing'),(40,'Matteo Ricci'),(41,'Nursing'),(42,'Organizational Leadership-NCS'),(43,'Performing Arts & Arts Leadership'),(44,'Philosophy'),(45,'Physics'),(46,'Political Science'),(47,'Pre-Collegiate High School Program'),(48,'Psychology'),(49,'Study Abroad'),(50,'Sport Administration & Leadership'),(51,'Student Development Administration'),(52,'Special Education'),(53,'School Psychology'),(54,'School of Theology & Ministry'),(55,'Teacher Education'),(56,'Theology and Religious Studies'),(57,'Teaching English to Speakers of Other Languages'),(58,'University Core'),(59,'Web Application & Technology Studies'),(60,'Art and Art History');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-27 22:40:23

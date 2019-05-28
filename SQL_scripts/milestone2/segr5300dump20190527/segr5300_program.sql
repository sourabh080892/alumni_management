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
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `program` (
  `program_id` int(6) NOT NULL,
  `program_name` varchar(50) DEFAULT NULL,
  `program_begin_date` date DEFAULT NULL,
  `department_id` int(6) DEFAULT NULL,
  `program_categories_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`program_id`),
  KEY `department_id` (`department_id`),
  KEY `program_categories_id` (`program_categories_id`),
  CONSTRAINT `program_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  CONSTRAINT `program_ibfk_2` FOREIGN KEY (`program_categories_id`) REFERENCES `program_categories` (`program_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
INSERT INTO `program` VALUES (1,'Mechanical Engineering','1910-10-31',37,2),(2,'Computer Science','1981-12-16',12,2),(3,'Civil and Environmental Engineering ','1929-05-16',6,2),(4,'MSBA','1996-03-12',5,1),(5,'Chemistry','2007-10-12',7,2),(6,'MSF','1985-02-23',26,1),(7,'PMBA','2005-04-30',5,1),(8,'Business 118omics','1921-12-09',5,2),(9,'Sociology','2008-01-23',3,2),(10,'Finance','1991-03-01',26,2),(11,'Business and Law','1973-09-09',5,2),(12,'Business Analytics','1906-05-22',5,2),(13,'BRMB','2013-04-18',5,1),(14,'MPAC','1904-07-11',1,1),(15,'MSBL','1932-04-24',5,1),(16,'MSBA','1982-10-03',5,1),(17,'Information System','1988-02-01',5,2),(18,'Marketing','1961-01-13',39,2),(19,'118omics','1944-02-21',18,2),(20,'107ory','2005-08-01',27,2),(21,'Management','1972-04-29',38,2),(22,'Mathematics','2009-04-03',35,2),(23,'International Business','2001-09-24',29,2),(24,'Psychology ','2009-04-03',53,2),(25,'Accounting','1995-02-09',1,2),(26,'Nursing','2009-04-03',41,2);
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-27 22:40:22

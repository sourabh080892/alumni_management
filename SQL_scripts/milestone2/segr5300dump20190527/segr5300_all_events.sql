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
-- Table structure for table `all_events`
--

DROP TABLE IF EXISTS `all_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `all_events` (
  `all_events_id` int(6) NOT NULL,
  `all_events_name` varchar(50) DEFAULT NULL,
  `all_events_start_time` datetime DEFAULT NULL,
  `all_events_end_time` datetime DEFAULT NULL,
  `all_events_address` varchar(50) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`all_events_id`),
  KEY `dept_id_idx` (`department_id`),
  KEY `city_id_idx` (`city_id`),
  CONSTRAINT `city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  CONSTRAINT `dept_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_events`
--

LOCK TABLES `all_events` WRITE;
/*!40000 ALTER TABLE `all_events` DISABLE KEYS */;
INSERT INTO `all_events` VALUES (1,'Alumni Meet 2013','2013-01-24 16:30:00','2013-01-24 18:30:00','Garfield Community Center',12,9),(2,'Senior Signature 2013','2013-04-14 09:30:00','2013-01-24 13:00:00','International Community Center',17,6),(3,'Rendezvous 2013','2013-10-16 13:00:00','2013-01-24 15:00:00','Pacific Hall',29,7),(4,'Alumni Meet 2014','2014-01-20 16:30:00','2014-01-20 18:30:00','Garfield Community Center',12,9),(5,'Rendezvous 2014','2014-10-06 13:00:00','2014-10-06 15:00:00','Pacific Hall',29,7),(6,'Senior Signature 2014','2014-04-04 09:30:00','2014-04-04 13:00:00','International Community Center',17,6),(7,'Alumni Meet 2015','2015-01-08 16:30:00','2015-01-08 18:30:00','Garfield Community Center',12,9),(8,'Rendezvous 2015','2015-10-26 13:00:00','2015-10-26 15:00:00','Pacific Hall',29,7),(9,'Senior Signature 2015','2015-04-01 09:30:00','2015-04-01 13:00:00','International Community Center',17,6),(10,'Alumni Meet 2016','2016-01-20 16:30:00','2016-01-20 18:30:00','Garfield Community Center',12,9),(11,'Rendezvous 2016','2016-10-26 13:00:00','2016-10-26 15:00:00','Pacific Hall',29,7),(12,'Senior Signature 2016','2016-04-12 09:30:00','2016-04-12 13:00:00','International Community Center',17,6),(13,'Alumni Meet 2017','2017-01-30 16:30:00','2017-01-30 18:30:00','Garfield Community Center',12,9),(14,'Rendezvous 2017','2017-10-10 13:00:00','2017-10-10 15:00:00','Pacific Hall',29,7),(15,'Senior Signature 2017','2017-04-20 09:30:00','2017-04-20 13:00:00','International Community Center',17,6);
/*!40000 ALTER TABLE `all_events` ENABLE KEYS */;
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

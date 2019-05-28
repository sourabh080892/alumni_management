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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Adams Resources & Energy'),(2,'Campbell Soup Company'),(3,'Synnex Corporation'),(4,'Oge Energy Corp'),(5,'Allstate'),(6,'Patriot Coal Corporation'),(7,'Agco Corporation'),(8,'Union Pacific Corporation'),(9,'A.o. Smith Corporation'),(10,'Baxter International'),(11,'Reliance Steel And Aluminum'),(12,'Select Medical Corporation'),(13,'Abercrombie & Fitch Co'),(14,'Chevron Corp'),(15,'Allstate Insurance Company'),(16,'Carter\'s'),(17,'Sanderson Farms'),(18,'Kiewit'),(19,'Continental Airlines'),(20,'Jarden Corporation'),(21,'Cummins Engine'),(22,'Capital One Financial Corporation'),(23,'Exxonmobil'),(24,'Freeport-mcmoran Copper & Gold'),(25,'Quiksilver'),(26,'Adobe Systemsorporated'),(27,'Levi Strauss And Co'),(28,'Hasbro'),(29,'W. R. Berkley Corporation'),(30,'Metlife'),(31,'Southern Company'),(32,'Targa Resources'),(33,'Ametek'),(34,'Reader\'s Digest Association'),(35,'Directv'),(36,'American Tire Distributors'),(37,'Berry Plastics Corporation'),(38,'The Kroger Co'),(39,'Coventry Health Care'),(40,'Bristol Myers Squibb Company'),(41,'Flowers Foods'),(42,'Genworth Financial'),(43,'Nationwide Insurance Company'),(44,'The Scotts Miracle-gro Company'),(45,'Bio-rad Laboratories'),(46,'Teradata Corporation'),(47,'Constellation Brands'),(48,'Republic Airways Holdings'),(49,'Republic Services'),(50,'Graphic Packaging Holding Company'),(51,'Beckman Coulter');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-27 22:40:21

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
-- Table structure for table `alumni`
--

DROP TABLE IF EXISTS `alumni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alumni` (
  `alumni_id` int(6) NOT NULL,
  `alumni_student_id` int(10) DEFAULT NULL,
  `alumni_name` varchar(50) DEFAULT NULL,
  `alumni_emailID` varchar(50) DEFAULT NULL,
  `alumni_contact_no` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `alumni_postal_street_address` varchar(100) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `alumni_postal_zip` int(6) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `alumni_designation` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`alumni_id`),
  KEY `company_id_idx` (`company_id`),
  KEY `city_id_idx` (`city_id`),
  CONSTRAINT `alumni_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  CONSTRAINT `company_id` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumni`
--

LOCK TABLES `alumni` WRITE;
/*!40000 ALTER TABLE `alumni` DISABLE KEYS */;
INSERT INTO `alumni` VALUES (1,400401,'Lennon Mccullough','Lennon.MCCULL1787@mail2web.com','2256198495','8378 Conservatory',1,94579,23,'Sales Manager'),(2,400402,'Matias Gamble','Mati.GAMB9672@hushmail.com','7573492222','5262 Randolph',1,6954,5,'Senior Engineer'),(3,400403,'Ainsley Mclaughlin','Ainsley.MCLAUGH2847@mail2web.com','5708831725','528 Evergreen',2,57013,5,'Business Analyst'),(4,400404,'Jessie Finley','Jessie.FIN6992@yahoo.com','9387744791','7594 Holbrook',2,43593,2,'Senior Manager'),(5,400405,'Dallas Cross','Dallas.CR5969@mail2web.com','2527320124','2834 Private',5,97339,26,'Data Engineer'),(6,400406,'Raymond Leblanc','Raymon.LEB2200@live.com','7192831062','9724 Prairie Park',1,30062,31,'Executive Assistant'),(7,400407,'Lainey Davenport','Lain.DAVEN1440@live.com','6366920691','844 St James',5,93946,36,'Vice President'),(8,400408,'Quintin Lyons','Quintin.LY8671@gmail.com','5419994982','6601 Walnut',1,80632,1,'Senior Engineer'),(9,400409,'Corinne Cortez','Cor.CORT9235@live.com','8134978207','9549 Chicago River',3,68689,40,'Human Resources'),(10,400410,'Rogelio House','Rogelio.HOU1129@live.com','7475141618','5559 Laramie',10,70647,6,'Customer Service Representative'),(11,400411,'Yoselin Armstrong','Yosel.ARMSTRONG7942@live.com','9518493985','4783 North Shore',10,23220,49,'Software Engineer'),(12,400412,'Israel Baxter','Isra.BAX4207@live.com','5599900052','9552 Elbridge',1,89665,15,'Marketing Director'),(13,400413,'Sullivan Powers','Sull.POW6526@gmail.com','2624146124','1450 Sheridan',1,48016,32,'Vice President'),(14,400414,'Londyn Henson','Londyn.HENSO3764@yahoo.com','5172638118','2784 Kedvale',9,38320,49,'Project Manager'),(15,400415,'Iris Chambers','Iris.CHAMB2765@mail2web.com','7709677500','6504 Germania',3,70469,31,'Office Assistant'),(16,400416,'Trent Roberson','Tren.ROBE8413@gmail.com','5032718076','3048 Harper',7,6140,17,'Vice President'),(17,400417,'Tinley Bell','Tin.BE4516@live.com','4429487578','5200 Bennett',8,33072,3,'Sales Manager'),(18,400418,'Luka Sharpe','Lu.SHA5584@hushmail.com','6313844462','1021 Douglas',9,32333,24,'Administrative Assistant'),(19,400419,'Kailynn Meyer','Kailyn.MEY5479@hushmail.com','2168499363','933 Fuller',7,35847,9,'Software Engineer'),(20,400420,'Ishaan Allen','Ishaan.AL6087@gmail.com','7012206716','3103 Village',3,35871,35,'Accountant'),(21,400421,'Armani Holman','Arm.HOLM7515@yahoo.com','9513226962','3039 Erie',10,89058,41,'Director Assistant'),(22,400422,'Brandon Vinson','Bran.VINSO6863@yahoo.com','2603633588','7265 Burley',4,80233,38,'Data Engineer Clerk'),(23,400423,'Marianna Morse','Marianna.MORS7166@yahoo.com','9372631936','4644 Arthington',3,38705,3,'Sales Manager'),(24,400424,'Valeria Rush','Valer.RUSH1203@live.com','3099949087','6369 138th',2,36120,26,'Project Manager'),(25,400425,'Coleman Murray','Col.MURRA4855@mail2web.com','6822227601','6070 Butler',5,76005,29,'Administrative Assistant'),(26,400426,'Tyree Noel','Tyr.NOEL7301@live.com','5076159628','2518 Webster',7,92571,48,'Senior Manager'),(27,400427,'Blaine Bradshaw','Blaine.BRAD6459@yahoo.com','4252037791','2786 Winnemac',7,98092,5,'Senior Manager'),(28,400428,'Danny Bishop','Dan.BISHO4985@yahoo.com','2105567228','1731 Brompton',1,33926,34,'Senior Manager'),(29,400429,'Rebekah Fernandez','Rebekah.FERNANDEZ7317@live.com','2679903252','1375 Brandon',1,89590,46,'Customer Service Representative'),(30,400430,'Linda Holder','Linda.HOLD3292@yahoo.com','7578888514','7893 Hood',3,97591,22,'Accountant'),(31,400431,'Alyssa Charles','Alyss.CHARLE3234@gmail.com','9523599684','8715 Seminole',9,30922,6,'Human Resources Director'),(32,400432,'Adriel Orr','Adri.OR7827@yahoo.com','3088765742','2594 Paulina',7,95359,4,'Senior Engineer'),(33,400433,'Jonas Mcknight','Jonas.MCKNIGHT6259@live.com','5014772368','300 Kennison',2,48048,27,'Operational Manager'),(34,400434,'Millie Wright','Mil.WRI1643@gmail.com','7851331696','4892 Caldwell',1,70768,11,'Data Analyst'),(35,400435,'Deborah Obrien','Debor.OBRIEN8177@gmail.com','4016053223','6948 Fulton Market',10,19930,48,'Director Assistant'),(36,400436,'Malcolm Gentry','Mal.GENTRY7087@yahoo.com','9042953805','9972 Dan Ryan Ib Stevenson',3,95736,21,'Accountant'),(37,400437,'Ximena Sparks','Ximen.SPARK5942@live.com','7729013926','4054 Bishop',4,30940,19,'Senior Engineer'),(38,400438,'Dakota Price','Dakot.PRIC9423@hushmail.com','9803832232','8219 Haynes',8,6938,22,'Marketing Director'),(39,400439,'Nicholas Ratliff','Nicho.RAT3436@yahoo.com','9897544329','2813 Cottage',8,85425,27,'Vice President'),(40,400440,'Sophie Wilkins','Sophi.WILKINS3656@hushmail.com','3524151787','1411 Marquette',1,60552,16,'Software Engineer'),(41,400441,'Karlie Rutledge','Karli.RUTLEDG1334@mail2web.com','6575061696','5254 Kilpatrick',3,32860,35,'Office Assistant'),(42,400442,'Barbara Ford','Bar.FOR4478@live.com','4756548366','6596 Navarre',6,2425,2,'Executive Assistant'),(43,400443,'Reese Fisher','Ree.FIS7374@yahoo.com','8185520297','5121 Winston',2,84026,22,'Executive Assistant'),(44,400444,'Solomon Collins','Solomo.COL3170@live.com','8437487154','6946 Kennedy Ogden Av',1,48817,47,'Senior Data Scientist'),(45,400445,'Lucy Boyd','Lu.BOYD9078@gmail.com','6076150258','9747 Germania',1,92986,48,'Vice President'),(46,400446,'Sienna Pickett','Sie.PIC1268@hushmail.com','9795358716','5153 72nd',3,14226,23,'Sales Manager'),(47,400447,'Alonso Finch','Alonso.FIN9499@yahoo.com','7631148200','8421 108th',3,78740,23,'Project Manager'),(48,400448,'Ezekiel Rosa','Ezek.ROSA7590@yahoo.com','4845641431','837 Artesian',9,32821,34,'Project Manager'),(49,400449,'Pierre Mullen','Pierr.MULLEN4033@hushmail.com','5856232365','4074 Felton',3,90726,10,'Marketing Director'),(50,400450,'Giovanny Sutton','Giovan.SUTTO9001@live.com','5597548969','8839 122nd',8,52225,32,'Business Analyst'),(51,400400,'Perla Herring','Perla.HERRING5573@yahoo.com','4141537167','5370 Lynn White',9,66358,33,'Senior Engineer');
/*!40000 ALTER TABLE `alumni` ENABLE KEYS */;
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

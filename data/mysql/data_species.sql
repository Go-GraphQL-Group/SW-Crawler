-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: data
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `species`
--

DROP TABLE IF EXISTS `species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `species` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `ID` char(100) DEFAULT NULL,
  `Name` char(100) DEFAULT NULL,
  `Classification` char(100) DEFAULT NULL,
  `Designation` char(100) DEFAULT NULL,
  `Average_height` char(100) DEFAULT NULL,
  `Skin_colors` char(100) DEFAULT NULL,
  `Hair_colors` char(100) DEFAULT NULL,
  `Eye_colors` char(100) DEFAULT NULL,
  `Average_lifespan` char(100) DEFAULT NULL,
  `Homeworld` char(100) DEFAULT NULL,
  `Language` char(100) DEFAULT NULL,
  `People` char(200) DEFAULT NULL,
  `Films` char(200) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species`
--

LOCK TABLES `species` WRITE;
/*!40000 ALTER TABLE `species` DISABLE KEYS */;
INSERT INTO `species` VALUES (1,'1','Human','mammal','sentient','180','caucasian, black, asian, hispanic','blonde, brown, black, red','brown, blue, green, hazel, grey, amber','120','9','Galactic Basic','[\"1\",\"4\",\"5\",\"6\",\"7\",\"9\",\"10\",\"11\",\"12\",\"14\",\"18\",\"19\",\"21\",\"22\",\"25\",\"26\",\"28\",\"29\",\"32\",\"34\",\"43\",\"51\",\"60\",\"61\",\"62\",\"66\",\"67\",\"68\",\"69\",\"74\",\"81\",\"84\",\"85\",\"86\",\"35\"]','[\"2\",\"7\",\"5\",\"4\",\"6\",\"3\",\"1\"]'),(2,'10','Sullustan','mammal','sentient','180','pale','none','black','unknown','33','Sullutese','[\"31\"]','[\"3\"]'),(3,'11','Neimodian','unknown','sentient','180','grey, green','none','red, pink','unknown','18','Neimoidia','[\"33\"]','[\"4\"]'),(4,'12','Gungan','amphibian','sentient','190','brown, green','none','orange','unknown','8','Gungan basic','[\"36\",\"37\",\"38\"]','[\"5\",\"4\"]'),(5,'13','Toydarian','mammal','sentient','120','blue, green, grey','none','yellow','91','34','Toydarian','[\"40\"]','[\"5\",\"4\"]'),(6,'14','Dug','mammal','sentient','100','brown, purple, grey, red','none','yellow, blue','unknown','35','Dugese','[\"41\"]','[\"4\"]'),(7,'15','Twi\'lek','mammals','sentient','200','orange, yellow, blue, green, pink, purple, tan','none','blue, brown, orange, pink','unknown','37','Twi\'leki','[\"45\",\"46\"]','[\"5\",\"4\",\"6\",\"3\"]'),(8,'16','Aleena','reptile','sentient','80','blue, gray','none','unknown','79','38','Aleena','[\"47\"]','[\"4\"]'),(9,'17','Vulptereen','unknown','sentient','100','grey','none','yellow','unknown','39','vulpterish','[\"48\"]','[\"4\"]'),(10,'18','Xexto','unknown','sentient','125','grey, yellow, purple','none','black','unknown','40','Xextese','[\"49\"]','[\"4\"]'),(11,'19','Toong','unknown','sentient','200','grey, green, yellow','none','orange','unknown','41','Tundan','[\"50\"]','[\"4\",\"6\"]'),(12,'2','Droid','artificial','sentient','n/a','n/a','n/a','n/a','indefinite','','n/a','[\"2\",\"3\",\"8\",\"23\",\"87\"]','[\"2\",\"7\",\"5\",\"4\",\"6\",\"3\",\"1\"]'),(13,'20','Cerean','mammal','sentient','200','pale pink','red, blond, black, white','hazel','unknown','43','Cerean','[\"52\"]','[\"4\",\"6\"]'),(14,'21','Nautolan','amphibian','sentient','180','green, blue, brown, red','none','black','70','44','Nautila','[\"53\"]','[\"4\"]'),(15,'22','Zabrak','mammal','sentient','180','pale, brown, red, orange, yellow','black','brown, orange','unknown','45','Zabraki','[\"44\",\"54\"]','[\"4\"]'),(16,'23','Tholothian','mammal','sentient','unknown','dark','unknown','blue, indigo','unknown','46','unknown','[\"55\"]','[\"4\",\"6\"]'),(17,'24','Iktotchi','unknown','sentient','180','pink','none','orange','unknown','47','Iktotchese','[\"56\"]','[\"4\",\"6\"]'),(18,'25','Quermian','mammal','sentient','240','white','none','yellow','86','48','Quermian','[\"57\"]','[\"4\",\"6\"]'),(19,'26','Kel Dor','unknown','sentient','180','peach, orange, red','none','black, silver','70','49','Kel Dor','[\"58\"]','[\"4\",\"6\"]'),(20,'27','Chagrian','amphibian','sentient','190','blue','none','blue','unknown','50','Chagria','[\"59\"]','[\"4\",\"6\"]'),(21,'28','Geonosian','insectoid','sentient','178','green, brown','none','green, hazel','unknown','11','Geonosian','[\"63\"]','[\"5\",\"6\"]'),(22,'29','Mirialan','mammal','sentient','180','yellow, green','black, brown','blue, green, red, yellow, brown, orange','unknown','51','Mirialan','[\"64\",\"65\"]','[\"5\",\"6\"]'),(23,'3','Wookiee','mammal','sentient','210','gray','black, brown','blue, green, yellow, brown, golden, red','400','14','Shyriiwook','[\"13\",\"80\"]','[\"2\",\"7\",\"6\",\"3\",\"1\"]'),(24,'30','Clawdite','reptilian','sentient','180','green, yellow','none','yellow','70','54','Clawdite','[\"70\"]','[\"5\",\"6\"]'),(25,'31','Besalisk','amphibian','sentient','178','brown','none','yellow','75','55','besalisk','[\"71\"]','[\"5\"]'),(26,'32','Kaminoan','amphibian','sentient','220','grey, blue','none','black','80','10','Kaminoan','[\"72\",\"73\"]','[\"5\"]'),(27,'33','Skakoan','mammal','sentient','unknown','grey, green','none','unknown','unknown','56','Skakoan','[\"76\"]','[\"5\",\"6\"]'),(28,'34','Muun','mammal','sentient','190','grey, white','none','black','100','57','Muun','[\"77\"]','[\"5\",\"6\"]'),(29,'35','Togruta','mammal','sentient','180','red, white, orange, yellow, green, blue','none','red, orange, yellow, green, blue, black','94','58','Togruti','[\"78\"]','[\"5\",\"6\"]'),(30,'36','Kaleesh','reptile','sentient','170','brown, orange, tan','none','yellow','80','59','Kaleesh','[\"79\"]','[\"6\"]'),(31,'37','Pau\'an','mammal','sentient','190','grey','none','black','700','12','Utapese','[\"83\"]','[\"6\"]'),(32,'4','Rodian','sentient','reptilian','170','green, blue','n/a','black','unknown','23','Galactic Basic','[\"15\"]','[\"1\"]'),(33,'5','Hutt','gastropod','sentient','300','green, brown, tan','n/a','yellow, red','1000','24','Huttese','[\"16\"]','[\"3\",\"1\"]'),(34,'6','Yoda\'s species','mammal','sentient','66','green, yellow','brown, white','brown, green, yellow','900','28','Galactic basic','[\"20\"]','[\"2\",\"5\",\"4\",\"6\",\"3\"]'),(35,'7','Trandoshan','reptile','sentient','200','brown, green','none','yellow, orange','unknown','29','Dosh','[\"24\"]','[\"2\"]'),(36,'8','Mon Calamari','amphibian','sentient','160','red, blue, brown, magenta','none','yellow','unknown','31','Mon Calamarian','[\"27\"]','[\"3\"]'),(37,'9','Ewok','mammal','sentient','100','brown','white, brown, black','orange, brown','unknown','7','Ewokese','[\"30\"]','[\"3\"]');
/*!40000 ALTER TABLE `species` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-21 22:31:45

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
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicle` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `ID` char(100) DEFAULT NULL,
  `Name` char(100) DEFAULT NULL,
  `Model` char(100) DEFAULT NULL,
  `Manufacturer` char(100) DEFAULT NULL,
  `Cost_in_credits` char(100) DEFAULT NULL,
  `Length` char(100) DEFAULT NULL,
  `Max_atmosphering_speed` char(100) DEFAULT NULL,
  `Crew` char(100) DEFAULT NULL,
  `Passenger` char(100) DEFAULT NULL,
  `Cargo_capacity` char(100) DEFAULT NULL,
  `Consumables` char(100) DEFAULT NULL,
  `Vehicle_class` char(100) DEFAULT NULL,
  `Pilots` char(200) DEFAULT NULL,
  `Films` char(200) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'14','Snowspeeder','t-47 airspeeder','Incom corporation','unknown','4.5','650','2','0','10','none','airspeeder','[\"1\",\"18\"]','[\"2\"]'),(2,'16','TIE bomber','TIE/sa bomber','Sienar Fleet Systems','unknown','7.8','850','1','0','none','2 days','space/planetary bomber','[]','[\"2\",\"3\"]'),(3,'18','AT-AT','All Terrain Armored Transport','Kuat Drive Yards, Imperial Department of Military Research','unknown','20','60','5','40','1000','unknown','assault walker','[]','[\"2\",\"3\"]'),(4,'19','AT-ST','All Terrain Scout Transport','Kuat Drive Yards, Imperial Department of Military Research','unknown','2','90','2','0','200','none','walker','[\"13\"]','[\"2\",\"3\"]'),(5,'20','Storm IV Twin-Pod cloud car','Storm IV Twin-Pod','Bespin Motors','75000','7','1500','2','0','10','1 day','repulsorcraft','[]','[\"2\"]'),(6,'24','Sail barge','Modified Luxury Sail Barge','Ubrikkian Industries Custom Vehicle Division','285000','30','100','26','500','2000000','Live food tanks','sail barge','[]','[\"3\"]'),(7,'25','Bantha-II cargo skiff','Bantha-II','Ubrikkian Industries','8000','9.5','250','5','16','135000','1 day','repulsorcraft cargo skiff','[]','[\"3\"]'),(8,'26','TIE/IN interceptor','Twin Ion Engine Interceptor','Sienar Fleet Systems','unknown','9.6','1250','1','0','75','2 days','starfighter','[]','[\"3\"]'),(9,'30','Imperial Speeder Bike','74-Z speeder bike','Aratech Repulsor Company','8000','3','360','1','1','4','1 day','speeder','[\"1\",\"5\"]','[\"3\"]'),(10,'33','Vulture Droid','Vulture-class droid starfighter','Haor Chall Engineering, Baktoid Armor Workshop','unknown','3.5','1200','0','0','0','none','starfighter','[]','[\"4\",\"6\"]'),(11,'34','Multi-Troop Transport','Multi-Troop Transport','Baktoid Armor Workshop','138000','31','35','4','112','12000','unknown','repulsorcraft','[]','[\"4\"]'),(12,'35','Armored Assault Tank','Armoured Assault Tank','Baktoid Armor Workshop','unknown','9.75','55','4','6','unknown','unknown','repulsorcraft','[]','[\"4\"]'),(13,'36','Single Trooper Aerial Platform','Single Trooper Aerial Platform','Baktoid Armor Workshop','2500','2','400','1','0','none','none','repulsorcraft','[]','[\"4\"]'),(14,'37','C-9979 landing craft','C-9979 landing craft','Haor Chall Engineering','200000','210','587','140','284','1800000','1 day','landing craft','[]','[\"4\"]'),(15,'38','Tribubble bongo','Tribubble bongo','Otoh Gunga Bongameken Cooperative','unknown','15','85','1','2','1600','unknown','submarine','[\"10\",\"32\"]','[\"4\"]'),(16,'4','Sand Crawler','Digger Crawler','Corellia Mining Corporation','150000','36.8','30','46','30','50000','2 months','wheeled','[]','[\"5\",\"1\"]'),(17,'42','Sith speeder','FC-20 speeder bike','Razalon','4000','1.5','180','1','0','2','unknown','speeder','[\"44\"]','[\"4\"]'),(18,'44','Zephyr-G swoop bike','Zephyr-G swoop bike','Mobquet Swoops and Speeders','5750','3.68','350','1','1','200','none','repulsorcraft','[\"11\"]','[\"5\"]'),(19,'45','Koro-2 Exodrive airspeeder','Koro-2 Exodrive airspeeder','Desler Gizh Outworld Mobility Corporation','unknown','6.6','800','1','1','80','unknown','airspeeder','[\"70\"]','[\"5\"]'),(20,'46','XJ-6 airspeeder','XJ-6 airspeeder','Narglatch AirTech prefabricated kit','unknown','6.23','720','1','1','unknown','unknown','airspeeder','[\"11\"]','[\"5\"]'),(21,'50','LAAT/i','Low Altitude Assault Transport/infrantry','Rothana Heavy Engineering','unknown','17.4','620','6','30','170','unknown','gunship','[]','[\"5\",\"6\"]'),(22,'51','LAAT/c','Low Altitude Assault Transport/carrier','Rothana Heavy Engineering','unknown','28.82','620','1','0','40000','unknown','gunship','[]','[\"5\"]'),(23,'53','AT-TE','All Terrain Tactical Enforcer','Rothana Heavy Engineering, Kuat Drive Yards','unknown','13.2','60','6','36','10000','21 days','walker','[]','[\"5\",\"6\"]'),(24,'54','SPHA','Self-Propelled Heavy Artillery','Rothana Heavy Engineering','unknown','140','35','25','30','500','7 days','walker','[]','[\"5\"]'),(25,'55','Flitknot speeder','Flitknot speeder','Huppla Pasa Tisc Shipwrights Collective','8000','2','634','1','0','unknown','unknown','speeder','[\"67\"]','[\"5\"]'),(26,'56','Neimoidian shuttle','Sheathipede-class transport shuttle','Haor Chall Engineering','unknown','20','880','2','6','1000','7 days','transport','[]','[\"5\",\"6\"]'),(27,'57','Geonosian starfighter','Nantex-class territorial defense','Huppla Pasa Tisc Shipwrights Collective','unknown','9.8','20000','1','0','unknown','unknown','starfighter','[]','[\"5\"]'),(28,'6','T-16 skyhopper','T-16 skyhopper','Incom Corporation','14500','10.4','1200','1','1','50','0','repulsorcraft','[]','[\"1\"]'),(29,'60','Tsmeu-6 personal wheel bike','Tsmeu-6 personal wheel bike','Z-Gomot Ternbuell Guppat Corporation','15000','3.5','330','1','1','10','none','wheeled walker','[\"79\"]','[\"6\"]'),(30,'62','Emergency Firespeeder','Fire suppression speeder','unknown','unknown','unknown','unknown','2','unknown','unknown','unknown','fire suppression ship','[]','[\"6\"]'),(31,'67','Droid tri-fighter','tri-fighter','Colla Designs, Phlac-Arphocc Automata Industries','20000','5.4','1180','1','0','0','none','droid starfighter','[]','[\"6\"]'),(32,'69','Oevvaor jet catamaran','Oevvaor jet catamaran','Appazanna Engineering Works','12125','15.1','420','2','2','50','3 days','airspeeder','[]','[\"6\"]'),(33,'7','X-34 landspeeder','X-34 landspeeder','SoroSuub Corporation','10550','3.4','250','1','1','5','unknown','repulsorcraft','[]','[\"1\"]'),(34,'70','Raddaugh Gnasp fluttercraft','Raddaugh Gnasp fluttercraft','Appazanna Engineering Works','14750','7','310','2','0','20','none','air speeder','[]','[\"6\"]'),(35,'71','Clone turbo tank','HAVw A6 Juggernaut','Kuat Drive Yards','350000','49.4','160','20','300','30000','20 days','wheeled walker','[]','[\"6\"]'),(36,'72','Corporate Alliance tank droid','NR-N99 Persuader-class droid enforcer','Techno Union','49000','10.96','100','0','4','none','none','droid tank','[]','[\"6\"]'),(37,'73','Droid gunship','HMP droid gunship','Baktoid Fleet Ordnance, Haor Chall Engineering','60000','12.3','820','0','0','0','none','airspeeder','[]','[\"6\"]'),(38,'76','AT-RT','All Terrain Recon Transport','Kuat Drive Yards','40000','3.2','90','1','0','20','1 day','walker','[]','[\"6\"]'),(39,'8','TIE/LN starfighter','Twin Ion Engine/Ln Starfighter','Sienar Fleet Systems','unknown','6.4','1200','1','0','65','2 days','starfighter','[]','[\"2\",\"3\",\"1\"]');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
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

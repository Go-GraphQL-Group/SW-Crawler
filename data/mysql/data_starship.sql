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
-- Table structure for table `starship`
--

DROP TABLE IF EXISTS `starship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `starship` (
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
  `Hyperdrive_rating` char(100) DEFAULT NULL,
  `MGLT` char(100) DEFAULT NULL,
  `Starship_class` char(100) DEFAULT NULL,
  `Pilots` char(200) DEFAULT NULL,
  `Films` char(200) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `starship`
--

LOCK TABLES `starship` WRITE;
/*!40000 ALTER TABLE `starship` DISABLE KEYS */;
INSERT INTO `starship` VALUES (1,'1','Executor','Executor-class star dreadnought','Kuat Drive Yards, Fondor Shipyards','1143350000','19000','n/a','279144','38000','250000000','6 years','2.0','40','Star dreadnought','','2&3&'),(2,'10','Millennium Falcon','YT-1300 light freighter','Corellian Engineering Corporation','100000','34.37','1050','4','6','100000','2 months','0.5','75','Light freighter','13&14&25&31&','2&7&3&1&'),(3,'11','Y-wing','BTL Y-wing','Koensayr Manufacturing','134999','14','1000km','2','0','110','1 week','1.0','80','assault starfighter','','2&3&1&'),(4,'12','X-wing','T-65 X-wing','Incom Corporation','149999','12.5','1050','1','0','110','1 week','1.0','100','Starfighter','1&9&18&19&','2&3&1&'),(5,'13','TIE Advanced x1','Twin Ion Engine Advanced x1','Sienar Fleet Systems','unknown','9.2','1200','1','0','150','5 days','1.0','105','Starfighter','4&','1&'),(6,'14','Republic Cruiser','Consular-class cruiser','Corellian Engineering Corporation','unknown','115','900','9','16','unknown','unknown','2.0','unknown','Space cruiser','','4&'),(7,'15','Executor','Executor-class star dreadnought','Kuat Drive Yards, Fondor Shipyards','1143350000','19000','n/a','279144','38000','250000000','6 years','2.0','40','Star dreadnought','','2&3&'),(8,'16','Naboo Royal Starship','J-type 327 Nubian royal starship','Theed Palace Space Vessel Engineering Corps, Nubia Star Drives','unknown','76','920','8','unknown','unknown','unknown','1.8','unknown','yacht','39&','4&'),(9,'17','Rebel transport','GR-75 medium transport','Gallofree Yards, Inc.','unknown','90','650','6','90','19000000','6 months','4.0','20','Medium transport','','2&3&'),(10,'18','J-type diplomatic barge','J-type diplomatic barge','Theed Palace Space Vessel Engineering Corps, Nubia Star Drives','2000000','39','2000','5','10','unknown','1 year','0.7','unknown','Diplomatic barge','','5&'),(11,'19','AA-9 Coruscant freighter','Botajef AA-9 Freighter-Liner','Botajef Shipyards','unknown','390','unknown','unknown','30000','unknown','unknown','unknown','unknown','freighter','','5&'),(12,'2','CR90 corvette','CR90 corvette','Corellian Engineering Corporation','3500000','150','950','165','600','3000000','1 year','2.0','60','corvette','','6&3&1&'),(13,'20','Jedi starfighter','Delta-7 Aethersprite-class interceptor','Kuat Systems Engineering','180000','8','1150','1','0','60','7 days','1.0','unknown','Starfighter','10&58&','5&6&'),(14,'21','Slave 1','Firespray-31-class patrol and attack','Kuat Systems Engineering','unknown','21.5','1000','1','6','70000','1 month','3.0','70','Patrol craft','22&','2&5&'),(15,'22','Imperial shuttle','Lambda-class T-4a shuttle','Sienar Fleet Systems','240000','20','850','6','20','80000','2 months','1.0','50','Armed government transport','1&13&14&','2&3&'),(16,'23','EF76 Nebulon-B escort frigate','EF76 Nebulon-B escort frigate','Kuat Drive Yards','8500000','300','800','854','75','6000000','2 years','2.0','40','Escort ship','','2&3&'),(17,'24','Theta-class T-2c shuttle','Theta-class T-2c shuttle','Cygnus Spaceworks','1000000','18.5','2000','5','16','50000','56 days','1.0','unknown','transport','','6&'),(18,'25','T-70 X-wing fighter','T-70 X-wing fighter','Incom','unknown','unknown','unknown','1','unknown','unknown','unknown','unknown','unknown','fighter','86&','7&'),(19,'26','Rebel transport','GR-75 medium transport','Gallofree Yards, Inc.','unknown','90','650','6','90','19000000','6 months','4.0','20','Medium transport','','2&3&'),(20,'27','Calamari Cruiser','MC80 Liberty type Star Cruiser','Mon Calamari shipyards','104000000','1200','n/a','5400','1200','unknown','2 years','1.0','60','Star Cruiser','','3&'),(21,'28','A-wing','RZ-1 A-wing Interceptor','Alliance Underground Engineering, Incom Corporation','175000','9.6','1300','1','0','40','1 week','1.0','120','Starfighter','29&','3&'),(22,'29','B-wing','A/SF-01 B-wing starfighter','Slayn & Korpil','220000','16.9','950','1','0','45','1 week','2.0','91','Assault Starfighter','','3&'),(23,'3','Star Destroyer','Imperial I-class Star Destroyer','Kuat Drive Yards','150000000','1,600','975','47060','0','36000000','2 years','2.0','60','Star Destroyer','','2&3&1&'),(24,'30','Republic attack cruiser','Senator-class Star Destroyer','Kuat Drive Yards, Allanteen Six shipyards','59000000','1137','975','7400','2000','20000000','2 years','1.0','unknown','star destroyer','','6&'),(25,'31','Republic Cruiser','Consular-class cruiser','Corellian Engineering Corporation','unknown','115','900','9','16','unknown','unknown','2.0','unknown','Space cruiser','','4&'),(26,'32','Droid control ship','Lucrehulk-class Droid Control Ship','Hoersch-Kessel Drive, Inc.','unknown','3170','n/a','175','139000','4000000000','500 days','2.0','unknown','Droid control ship','','5&4&6&'),(27,'33','arc-170','Aggressive Reconnaissance-170 starfighte','Incom Corporation, Subpro Corporation','155000','14.5','1000','3','0','110','5 days','1.0','100','starfighter','','6&'),(28,'34','Belbullab-22 starfighter','Belbullab-22 starfighter','Feethan Ottraw Scalable Assemblies','168000','6.71','1100','1','0','140','7 days','6','unknown','starfighter','10&79&','6&'),(29,'35','V-wing','Alpha-3 Nimbus-class V-wing starfighter','Kuat Systems Engineering','102500','7.9','1050','1','0','60','15 hours','1.0','unknown','starfighter','','6&'),(30,'36','CR90 corvette','CR90 corvette','Corellian Engineering Corporation','3500000','150','950','165','600','3000000','1 year','2.0','60','corvette','','6&3&1&'),(31,'37','Banking clan frigate','Munificent-class star frigate','Hoersch-Kessel Drive, Inc, Gwori Revolutionary Industries','57000000','825','unknown','200','unknown','40000000','2 years','1.0','unknown','cruiser','','6&'),(32,'39','Naboo fighter','N-1 starfighter','Theed Palace Space Vessel Engineering Corps','200000','11','1100','1','0','65','7 days','1.0','unknown','Starfighter','11&60&35&','5&4&'),(33,'4','Millennium Falcon','YT-1300 light freighter','Corellian Engineering Corporation','100000','34.37','1050','4','6','100000','2 months','0.5','75','Light freighter','13&14&25&31&','2&7&3&1&'),(34,'40','Naboo Royal Starship','J-type 327 Nubian royal starship','Theed Palace Space Vessel Engineering Corps, Nubia Star Drives','unknown','76','920','8','unknown','unknown','unknown','1.8','unknown','yacht','39&','4&'),(35,'41','Scimitar','Star Courier','Republic Sienar Systems','55000000','26.5','1180','1','6','2500000','30 days','1.5','unknown','Space Transport','44&','4&'),(36,'43','J-type diplomatic barge','J-type diplomatic barge','Theed Palace Space Vessel Engineering Corps, Nubia Star Drives','2000000','39','2000','5','10','unknown','1 year','0.7','unknown','Diplomatic barge','','5&'),(37,'47','AA-9 Coruscant freighter','Botajef AA-9 Freighter-Liner','Botajef Shipyards','unknown','390','unknown','unknown','30000','unknown','unknown','unknown','unknown','freighter','','5&'),(38,'48','Jedi starfighter','Delta-7 Aethersprite-class interceptor','Kuat Systems Engineering','180000','8','1150','1','0','60','7 days','1.0','unknown','Starfighter','10&58&','5&6&'),(39,'49','H-type Nubian yacht','H-type Nubian yacht','Theed Palace Space Vessel Engineering Corps','unknown','47.9','8000','4','unknown','unknown','unknown','0.9','unknown','yacht','35&','5&'),(40,'5','Sentinel-class landing craft','Sentinel-class landing craft','Sienar Fleet Systems, Cyngus Spaceworks','240000','38','1000','5','75','180000','1 month','1.0','70','landing craft','','1&'),(41,'52','Republic Assault ship','Acclamator I-class assault ship','Rothana Heavy Engineering','unknown','752','unknown','700','16000','11250000','2 years','0.6','unknown','assault ship','','5&'),(42,'58','Solar Sailer','Punworcca 116-class interstellar sloop','Huppla Pasa Tisc Shipwrights Collective','35700','15.2','1600','3','11','240','7 days','1.5','unknown','yacht','','5&'),(43,'59','Trade Federation cruiser','Providence-class carrier/destroyer','Rendili StarDrive, Free Dac Volunteers Engineering corps.','125000000','1088','1050','600','48247','50000000','4 years','1.5','unknown','capital ship','10&11&','6&'),(44,'6','X-wing','T-65 X-wing','Incom Corporation','149999','12.5','1050','1','0','110','1 week','1.0','100','Starfighter','1&9&18&19&','2&3&1&'),(45,'61','Theta-class T-2c shuttle','Theta-class T-2c shuttle','Cygnus Spaceworks','1000000','18.5','2000','5','16','50000','56 days','1.0','unknown','transport','','6&'),(46,'63','Republic attack cruiser','Senator-class Star Destroyer','Kuat Drive Yards, Allanteen Six shipyards','59000000','1137','975','7400','2000','20000000','2 years','1.0','unknown','star destroyer','','6&'),(47,'64','Naboo star skiff','J-type star skiff','Theed Palace Space Vessel Engineering Corps/Nubia Star Drives, Incorporated','unknown','29.2','1050','3','3','unknown','unknown','0.5','unknown','yacht','10&35&','6&'),(48,'65','Jedi Interceptor','Eta-2 Actis-class light interceptor','Kuat Systems Engineering','320000','5.47','1500','1','0','60','2 days','1.0','unknown','starfighter','10&11&','6&'),(49,'66','arc-170','Aggressive Reconnaissance-170 starfighte','Incom Corporation, Subpro Corporation','155000','14.5','1000','3','0','110','5 days','1.0','100','starfighter','','6&'),(50,'68','Banking clan frigate','Munificent-class star frigate','Hoersch-Kessel Drive, Inc, Gwori Revolutionary Industries','57000000','825','unknown','200','unknown','40000000','2 years','1.0','unknown','cruiser','','6&'),(51,'7','TIE Advanced x1','Twin Ion Engine Advanced x1','Sienar Fleet Systems','unknown','9.2','1200','1','0','150','5 days','1.0','105','Starfighter','4&','1&'),(52,'74','Belbullab-22 starfighter','Belbullab-22 starfighter','Feethan Ottraw Scalable Assemblies','168000','6.71','1100','1','0','140','7 days','6','unknown','starfighter','10&79&','6&'),(53,'75','V-wing','Alpha-3 Nimbus-class V-wing starfighter','Kuat Systems Engineering','102500','7.9','1050','1','0','60','15 hours','1.0','unknown','starfighter','','6&'),(54,'77','T-70 X-wing fighter','T-70 X-wing fighter','Incom','unknown','unknown','unknown','1','unknown','unknown','unknown','unknown','unknown','fighter','86&','7&'),(55,'8','Slave 1','Firespray-31-class patrol and attack','Kuat Systems Engineering','unknown','21.5','1000','1','6','70000','1 month','3.0','70','Patrol craft','22&','2&5&'),(56,'9','Death Star','DS-1 Orbital Battle Station','Imperial Department of Military Research, Sienar Fleet Systems','1000000000000','120000','n/a','342953','843342','1000000000000','3 years','4.0','10','Deep Space Mobile Battlestation','','1&');
/*!40000 ALTER TABLE `starship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-20 11:20:52

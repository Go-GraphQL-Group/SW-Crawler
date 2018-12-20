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
-- Table structure for table `planet`
--

DROP TABLE IF EXISTS `planet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `planet` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `ID` char(100) DEFAULT NULL,
  `Name` char(100) DEFAULT NULL,
  `Rotation_period` char(100) DEFAULT NULL,
  `Orbital_period` char(100) DEFAULT NULL,
  `Diameter` char(100) DEFAULT NULL,
  `Climate` char(100) DEFAULT NULL,
  `Gravity` char(100) DEFAULT NULL,
  `Terrain` char(100) DEFAULT NULL,
  `Surface_water` char(100) DEFAULT NULL,
  `Population` char(100) DEFAULT NULL,
  `Residents` char(200) DEFAULT NULL,
  `Films` char(200) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planet`
--

LOCK TABLES `planet` WRITE;
/*!40000 ALTER TABLE `planet` DISABLE KEYS */;
INSERT INTO `planet` VALUES (1,'1','Tatooine','23','304','10465','','1 standard','desert','1','200000','[\"1\",\"2\",\"4\",\"6\",\"7\",\"8\",\"9\",\"11\",\"43\",\"62\"]','[\"5\",\"4\",\"6\",\"3\",\"1\"]'),(2,'10','Kamino','27','463','19720','','1 standard','ocean','100','1000000000','[\"22\",\"72\",\"73\"]','[\"5\"]'),(3,'11','Geonosis','30','256','11370','','0.9 standard','rock, desert, mountain, barren','5','100000000000','[\"63\"]','[\"5\"]'),(4,'12','Utapau','27','351','12900','','1 standard','scrublands, savanna, canyons, sinkholes','0.9','95000000','[\"83\"]','[\"6\"]'),(5,'13','Mustafar','36','412','4200','','1 standard','volcanoes, lava rivers, mountains, caves','0','20000','[]','[\"6\"]'),(6,'14','Kashyyyk','26','381','12765','','1 standard','jungle, forests, lakes, rivers','60','45000000','[\"13\",\"80\"]','[\"6\"]'),(7,'15','Polis Massa','24','590','0','','0.56 standard','airless asteroid','0','1000000','[]','[\"6\"]'),(8,'16','Mygeeto','12','167','10088','','1 standard','glaciers, mountains, ice canyons','unknown','19000000','[]','[\"6\"]'),(9,'17','Felucia','34','231','9100','','0.75 standard','fungus forests','unknown','8500000','[]','[\"6\"]'),(10,'18','Cato Neimoidia','25','278','0','','1 standard','mountains, fields, forests, rock arches','unknown','10000000','[\"33\"]','[\"6\"]'),(11,'19','Saleucami','26','392','14920','','unknown','caves, desert, mountains, volcanoes','unknown','1400000000','[]','[\"6\"]'),(12,'2','Alderaan','24','364','12500','','1 standard','grasslands, mountains','40','2000000000','[\"5\",\"68\",\"81\"]','[\"6\",\"1\"]'),(13,'20','Stewjon','unknown','unknown','0','','1 standard','grass','unknown','unknown','[\"10\"]','[]'),(14,'21','Eriadu','24','360','13490','','1 standard','cityscape','unknown','22000000000','[\"12\"]','[]'),(15,'22','Corellia','25','329','11000','','1 standard','plains, urban, hills, forests','70','3000000000','[\"14\",\"18\"]','[]'),(16,'23','Rodia','29','305','7549','','1 standard','jungles, oceans, urban, swamps','60','1300000000','[\"15\"]','[]'),(17,'24','Nal Hutta','87','413','12150','','1 standard','urban, oceans, swamps, bogs','unknown','7000000000','[\"16\"]','[]'),(18,'25','Dantooine','25','378','9830','','1 standard','oceans, savannas, mountains, grasslands','unknown','1000','[]','[]'),(19,'26','Bestine IV','26','680','6400','','unknown','rocky islands, oceans','98','62000000','[\"19\"]','[]'),(20,'27','Ord Mantell','26','334','14050','','1 standard','plains, seas, mesas','10','4000000000','[]','[\"2\"]'),(21,'28','unknown','0','0','0','','unknown','unknown','unknown','unknown','[\"20\",\"23\",\"29\",\"32\",\"75\",\"84\",\"85\",\"86\",\"87\",\"88\"]','[]'),(22,'29','Trandosha','25','371','0','','0.62 standard','mountains, seas, grasslands, deserts','unknown','42000000','[\"24\"]','[]'),(23,'3','Yavin IV','24','4818','10200','','1 standard','jungle, rainforests','8','1000','[]','[\"1\"]'),(24,'30','Socorro','20','326','0','','1 standard','deserts, mountains','unknown','300000000','[\"25\"]','[]'),(25,'31','Mon Cala','21','398','11030','','1','oceans, reefs, islands','100','27000000000','[\"27\"]','[]'),(26,'32','Chandrila','20','368','13500','','1','plains, forests','40','1200000000','[\"28\"]','[]'),(27,'33','Sullust','20','263','12780','','1','mountains, volcanoes, rocky deserts','5','18500000000','[\"31\"]','[]'),(28,'34','Toydaria','21','184','7900','','1','swamps, lakes','unknown','11000000','[\"40\"]','[]'),(29,'35','Malastare','26','201','18880','','1.56','swamps, deserts, jungles, mountains','unknown','2000000000','[\"41\"]','[]'),(30,'36','Dathomir','24','491','10480','','0.9','forests, deserts, savannas','unknown','5200','[\"44\"]','[]'),(31,'37','Ryloth','30','305','10600','','1','mountains, valleys, deserts, tundra','5','1500000000','[\"45\",\"46\"]','[]'),(32,'38','Aleen Minor','unknown','unknown','unknown','','unknown','unknown','unknown','unknown','[\"47\"]','[]'),(33,'39','Vulpter','22','391','14900','','1','urban, barren','unknown','421000000','[\"48\"]','[]'),(34,'4','Hoth','23','549','7200','','1.1 standard','tundra, ice caves, mountain ranges','100','unknown','[]','[\"2\"]'),(35,'40','Troiken','unknown','unknown','unknown','','unknown','desert, tundra, rainforests, mountains','unknown','unknown','[\"49\"]','[]'),(36,'41','Tund','48','1770','12190','','unknown','barren, ash','unknown','0','[\"50\"]','[]'),(37,'42','Haruun Kal','25','383','10120','','0.98','toxic cloudsea, plateaus, volcanoes','unknown','705300','[\"51\"]','[]'),(38,'43','Cerea','27','386','unknown','','1','verdant','20','450000000','[\"52\"]','[]'),(39,'44','Glee Anselm','33','206','15600','','1','lakes, islands, swamps, seas','80','500000000','[\"53\"]','[]'),(40,'45','Iridonia','29','413','unknown','','unknown','rocky canyons, acid pools','unknown','unknown','[\"54\"]','[]'),(41,'46','Tholoth','unknown','unknown','unknown','','unknown','unknown','unknown','unknown','[]','[]'),(42,'47','Iktotch','22','481','unknown','','1','rocky','unknown','unknown','[\"56\"]','[]'),(43,'48','Quermia','unknown','unknown','unknown','','unknown','unknown','unknown','unknown','[\"57\"]','[]'),(44,'49','Dorin','22','409','13400','','1','unknown','unknown','unknown','[\"58\"]','[]'),(45,'5','Dagobah','23','341','8900','','N/A','swamp, jungles','8','unknown','[]','[\"2\",\"6\",\"3\"]'),(46,'50','Champala','27','318','unknown','','1','oceans, rainforests, plateaus','unknown','3500000000','[\"59\"]','[]'),(47,'51','Mirial','unknown','unknown','unknown','','unknown','deserts','unknown','unknown','[\"64\",\"65\"]','[]'),(48,'52','Serenno','unknown','unknown','unknown','','unknown','rainforests, rivers, mountains','unknown','unknown','[\"67\"]','[]'),(49,'53','Concord Dawn','unknown','unknown','unknown','','unknown','jungles, forests, deserts','unknown','unknown','[\"69\"]','[]'),(50,'54','Zolan','unknown','unknown','unknown','','unknown','unknown','unknown','unknown','[\"70\"]','[]'),(51,'55','Ojom','unknown','unknown','unknown','','unknown','oceans, glaciers','100','500000000','[\"71\"]','[]'),(52,'56','Skako','27','384','unknown','','1','urban, vines','unknown','500000000000','[\"76\"]','[]'),(53,'57','Muunilinst','28','412','13800','','1','plains, forests, hills, mountains','25','5000000000','[\"77\"]','[]'),(54,'58','Shili','unknown','unknown','unknown','','1','cities, savannahs, seas, plains','unknown','unknown','[\"78\"]','[]'),(55,'59','Kalee','23','378','13850','','1','rainforests, cliffs, canyons, seas','unknown','4000000000','[\"79\"]','[]'),(56,'6','Bespin','12','5110','118000','','1.5 (surface), 1 standard (Cloud City)','gas giant','0','6000000','[\"26\"]','[\"2\"]'),(57,'60','Umbara','unknown','unknown','unknown','','unknown','unknown','unknown','unknown','[\"82\"]','[]'),(58,'61','Jakku','unknown','unknown','unknown','','unknown','deserts','unknown','unknown','[]','[\"7\"]'),(59,'7','Endor','18','402','4900','','0.85 standard','forests, mountains, lakes','8','30000000','[\"30\"]','[\"3\"]'),(60,'8','Naboo','26','312','12120','','1 standard','grassy hills, swamps, forests, mountains','12','4500000000','[\"3\",\"21\",\"36\",\"37\",\"38\",\"39\",\"42\",\"60\",\"61\",\"66\",\"35\"]','[\"5\",\"4\",\"6\",\"3\"]'),(61,'9','Coruscant','24','368','12240','','1 standard','cityscape, mountains','unknown','1000000000000','[\"34\",\"55\",\"74\"]','[\"5\",\"4\",\"6\",\"3\"]');
/*!40000 ALTER TABLE `planet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-20 21:03:12

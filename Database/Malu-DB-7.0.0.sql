CREATE DATABASE  IF NOT EXISTS `malu_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `malu_db`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: malu_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fish`
--

DROP TABLE IF EXISTS `fish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fish` (
  `fish_id` int(11) NOT NULL AUTO_INCREMENT,
  `fish_name` varchar(45) NOT NULL,
  PRIMARY KEY (`fish_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fish`
--

LOCK TABLES `fish` WRITE;
/*!40000 ALTER TABLE `fish` DISABLE KEYS */;
INSERT INTO `fish` VALUES (1,'Bass'),(2,'Cod'),(3,'Anchovy'),(4,'Mullet'),(5,'Tuna'),(6,'Cuttlefish'),(7,'Thresher shark'),(8,'Bullet tuna'),(9,'Prawns');
/*!40000 ALTER TABLE `fish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `main_view`
--

DROP TABLE IF EXISTS `main_view`;
/*!50001 DROP VIEW IF EXISTS `main_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `main_view` AS SELECT 
 1 AS `vsl_id`,
 1 AS `vsl_name`,
 1 AS `vsl_owner`,
 1 AS `vsl_reg_port`,
 1 AS `vsl_max_rate_speed`,
 1 AS `vsl_min_rate_speed`,
 1 AS `vsl_cur_speed`,
 1 AS `vsl_boat_len`,
 1 AS `vsl_boat_max_width`,
 1 AS `vsl_boat_max_dep`,
 1 AS `vsl_boat_weight`,
 1 AS `vsl_eng_capacity`,
 1 AS `vsl_allow_fishing_state`,
 1 AS `vessl_has_type_vsl_id`,
 1 AS `vessl_has_type_type_id`,
 1 AS `vsl_type_id`,
 1 AS `vsl_type_name`,
 1 AS `own_id`,
 1 AS `own_name`,
 1 AS `own_adress`,
 1 AS `own_phone`,
 1 AS `own_email`,
 1 AS `voyage_id`,
 1 AS `voyage_vessal_id`,
 1 AS `voyage_dep_time`,
 1 AS `voyage_arv_time`,
 1 AS `voge_fishing_fish_voy_id`,
 1 AS `voge_fishing_fish_fish_id`,
 1 AS `voge_fishing_fish_weight`,
 1 AS `voge_fishing_fish_time`,
 1 AS `voge_fishing_fish_isimergency`,
 1 AS `voge_fishing_fish_state`,
 1 AS `fish_id`,
 1 AS `fish_name`,
 1 AS `vsl_has_vog_vog_id`,
 1 AS `vsl_has_vog_time`,
 1 AS `vsl_has_vog_long`,
 1 AS `vsl_has_vog_lati`,
 1 AS `vsl_has_vog_speed`,
 1 AS `vsl_has_vog_true_heading`,
 1 AS `vsl_has_vog_wind_speed`,
 1 AS `vsl_has_vog_wind_deg`,
 1 AS `vsl_has_vog_temp`,
 1 AS `vsl_has_vog_humidity`,
 1 AS `vsl_has_vog_pressure`,
 1 AS `vsl_has_vog_rain`,
 1 AS `vsl_has_vog_btry_status`,
 1 AS `vsl_has_vog_div_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `own_id` int(11) NOT NULL AUTO_INCREMENT,
  `own_name` varchar(45) NOT NULL,
  `own_adress` varchar(45) DEFAULT NULL,
  `own_phone` varchar(45) DEFAULT NULL,
  `own_email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`own_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (1,'Suranga','Kandy','0771234456','suranga@gmail.com'),(2,'Minura','Colombo','0771234457','minura@gmail.com'),(3,'Suthan','Jaffna','0777116635','suthan@gmail.com'),(4,'Anuradha','Colombo','0777112235','anuradha@gmail.com'),(5,'owner','Negambo','0777556656','owner@vms.com');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `proximity`
--

DROP TABLE IF EXISTS `proximity`;
/*!50001 DROP VIEW IF EXISTS `proximity`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `proximity` AS SELECT 
 1 AS `vsl_has_vog_vog_id`,
 1 AS `vsl_has_vog_time`,
 1 AS `vsl_has_vog_long`,
 1 AS `vsl_has_vog_lati`,
 1 AS `vsl_has_vog_speed`,
 1 AS `vsl_has_vog_true_heading`,
 1 AS `vsl_has_vog_wind_speed`,
 1 AS `vsl_has_vog_wind_deg`,
 1 AS `vsl_has_vog_temp`,
 1 AS `vsl_has_vog_humidity`,
 1 AS `vsl_has_vog_pressure`,
 1 AS `vsl_has_vog_rain`,
 1 AS `vsl_has_vog_btry_status`,
 1 AS `vsl_has_vog_div_status`,
 1 AS `vsl_has_vog_vog_id2`,
 1 AS `vsl_has_vog_time2`,
 1 AS `vsl_has_vog_long2`,
 1 AS `vsl_has_vog_lati2`,
 1 AS `vsl_has_vog_speed2`,
 1 AS `vsl_has_vog_true_heading2`,
 1 AS `vsl_has_vog_wind_speed2`,
 1 AS `vsl_has_vog_wind_deg2`,
 1 AS `vsl_has_vog_temp2`,
 1 AS `vsl_has_vog_humidity2`,
 1 AS `vsl_has_vog_pressure2`,
 1 AS `vsl_has_vog_rain2`,
 1 AS `vsl_has_vog_btry_status2`,
 1 AS `vsl_has_vog_div_status2`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `proximity3`
--

DROP TABLE IF EXISTS `proximity3`;
/*!50001 DROP VIEW IF EXISTS `proximity3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `proximity3` AS SELECT 
 1 AS `voyage1`,
 1 AS `vsl_id`,
 1 AS `vsl_name`,
 1 AS `voyage2`,
 1 AS `vsl_has_vog_time1`,
 1 AS `vsl_has_vog_time2`,
 1 AS `timeGap`,
 1 AS `longDist`,
 1 AS `latiDist`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `proximity4`
--

DROP TABLE IF EXISTS `proximity4`;
/*!50001 DROP VIEW IF EXISTS `proximity4`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `proximity4` AS SELECT 
 1 AS `voyage1`,
 1 AS `vsl_id`,
 1 AS `vsl_name`,
 1 AS `voyage2`,
 1 AS `vsl_id2`,
 1 AS `vsl_name2`,
 1 AS `vsl_has_vog_time1`,
 1 AS `vsl_has_vog_time2`,
 1 AS `timeGap`,
 1 AS `longDist`,
 1 AS `latiDist`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `proximityview2`
--

DROP TABLE IF EXISTS `proximityview2`;
/*!50001 DROP VIEW IF EXISTS `proximityview2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `proximityview2` AS SELECT 
 1 AS `voyage1`,
 1 AS `voyage2`,
 1 AS `vsl_has_vog_time1`,
 1 AS `vsl_has_vog_time2`,
 1 AS `timeGap`,
 1 AS `longDist`,
 1 AS `latiDist`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!50001 DROP VIEW IF EXISTS `temp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `temp` AS SELECT 
 1 AS `vsl_id`,
 1 AS `vsl_name`,
 1 AS `vsl_owner`,
 1 AS `vsl_reg_port`,
 1 AS `vsl_max_rate_speed`,
 1 AS `vsl_min_rate_speed`,
 1 AS `vsl_cur_speed`,
 1 AS `vsl_boat_len`,
 1 AS `vsl_boat_max_width`,
 1 AS `vsl_boat_max_dep`,
 1 AS `vsl_boat_weight`,
 1 AS `vsl_eng_capacity`,
 1 AS `vsl_allow_fishing_state`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vessel`
--

DROP TABLE IF EXISTS `vessel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vessel` (
  `vsl_id` int(11) NOT NULL AUTO_INCREMENT,
  `vsl_name` varchar(45) NOT NULL,
  `vsl_owner` int(11) NOT NULL,
  `vsl_reg_port` varchar(45) DEFAULT NULL,
  `vsl_max_rate_speed` float DEFAULT NULL,
  `vsl_min_rate_speed` float DEFAULT NULL,
  `vsl_cur_speed` float DEFAULT NULL,
  `vsl_boat_len` float DEFAULT NULL,
  `vsl_boat_max_width` float DEFAULT NULL,
  `vsl_boat_max_dep` float DEFAULT NULL,
  `vsl_boat_weight` float DEFAULT NULL,
  `vsl_eng_capacity` int(11) DEFAULT NULL,
  `vsl_allow_fishing_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`vsl_id`),
  KEY `vsl_owner_idx` (`vsl_owner`),
  CONSTRAINT `owner_id` FOREIGN KEY (`vsl_owner`) REFERENCES `owner` (`own_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vessel`
--

LOCK TABLES `vessel` WRITE;
/*!40000 ALTER TABLE `vessel` DISABLE KEYS */;
INSERT INTO `vessel` VALUES (1,'Fishing Boat',2,'Colombo',12,2,10,20,10,7,40,80,1),(2,'Malu Boat',1,'Negambo',11,2,7,25,6,4,30,85,1),(3,'Malu Boat 2',1,'Colombo',13,2,7,30,5,7,60,90,1),(4,'Samudura',4,'Galle',8,5,2,30,12,5,69,75,0),(5,'Rathnadeepa ',4,'Puttalam',20,8,15,28,7,4,45,70,0);
/*!40000 ALTER TABLE `vessel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vessel_has_voyage`
--

DROP TABLE IF EXISTS `vessel_has_voyage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vessel_has_voyage` (
  `vsl_has_vog_vog_id` int(11) NOT NULL,
  `vsl_has_vog_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vsl_has_vog_long` double DEFAULT NULL,
  `vsl_has_vog_lati` float DEFAULT NULL,
  `vsl_has_vog_speed` float DEFAULT NULL,
  `vsl_has_vog_true_heading` float DEFAULT NULL,
  `vsl_has_vog_wind_speed` float DEFAULT NULL,
  `vsl_has_vog_wind_deg` float DEFAULT NULL,
  `vsl_has_vog_temp` float DEFAULT NULL,
  `vsl_has_vog_humidity` float DEFAULT NULL,
  `vsl_has_vog_pressure` float DEFAULT NULL,
  `vsl_has_vog_rain` float DEFAULT NULL,
  `vsl_has_vog_btry_status` float DEFAULT NULL,
  `vsl_has_vog_div_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`vsl_has_vog_vog_id`,`vsl_has_vog_time`),
  KEY `voyage_id_idx` (`vsl_has_vog_vog_id`),
  CONSTRAINT `voyage_id` FOREIGN KEY (`vsl_has_vog_vog_id`) REFERENCES `voyage` (`voyage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vessel_has_voyage`
--

LOCK TABLES `vessel_has_voyage` WRITE;
/*!40000 ALTER TABLE `vessel_has_voyage` DISABLE KEYS */;
INSERT INTO `vessel_has_voyage` VALUES (1,'2016-10-25 17:45:49',79.80899810791016,7.21617,12,86.52,4,NULL,27,86,101425,1,95,1),(1,'2016-10-25 17:46:09',79.66069793701172,7.23797,5,86.3214,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1,'2016-10-25 17:50:24',79.51789855957031,7.25704,NULL,86.6527,12,NULL,28,75,101225,1,98,1),(1,'2016-10-25 17:51:04',78.93560028076172,7.10444,NULL,110.677,14,NULL,28,89,102325,1,97,1),(1,'2016-10-26 13:58:09',79.82730102539062,7.20461,4,5.6408,3,NULL,2,NULL,NULL,NULL,NULL,NULL),(1,'2016-10-26 13:58:39',79.82759857177734,7.20665,5,68.2756,4,NULL,27,87,101325,1,96,1),(1,'2016-10-26 13:59:29',79.82669830322266,7.20972,8,68.2756,4,NULL,27,86,101425,1,95,NULL),(2,'2016-06-08 02:52:40',78.3478012084961,7.86608,3.25,-65.7799,12,NULL,21,45,123654,0,45,0),(2,'2016-06-24 23:49:27',78.3478012084961,7.86608,13.632,113.633,5,NULL,15,85,123654,0,40,1),(5,'2016-09-06 23:49:29',79.82769775390625,7.20391,6,11.3172,15,NULL,32,65,101221,0,74,1),(6,'2016-09-06 23:59:29',79.82759857177734,7.20706,8,45.9027,10,NULL,24,74,102324,0,72,1),(11,'2016-05-03 05:53:28',79.90239715576172,8.94287,4,66.1559,12,NULL,31,70,100321,1,80,1),(11,'2016-05-03 06:00:28',79.72660064697266,9.00799,6,81.8399,10,NULL,32,74,101225,0,80,1),(11,'2016-05-03 06:10:28',79.51789855957031,9.14902,12,65.4196,13,NULL,25,87,102325,0,79,0),(12,'2016-06-07 03:52:40',79.8572006225586,6.96201,3.22,-63.0352,14,NULL,21,41,123465,1,65,1),(12,'2016-06-07 04:42:40',79.85009765625,6.96798,7.8501,-75.7573,NULL,NULL,NULL,NULL,NULL,NULL,62,1),(12,'2016-06-07 05:52:40',79.72109985351562,6.99456,8.224,-83.3408,14.6,NULL,21,54,145654,0,58,1),(12,'2016-06-07 22:52:40',79.40249633789062,7.2126,11.3,-57.0585,12,NULL,21,49,123654,0,55,1),(12,'2016-06-08 00:52:40',78.76519775390625,7.56124,12.25,-72.5596,12,NULL,18,45,123456,1,52,1),(12,'2016-06-08 02:42:40',78.43569946289062,7.75723,45.25,-58.9531,21,NULL,21,45,134565,0,51,1),(12,'2016-06-25 01:49:27',78.9739990234375,7.44143,7.44142,127.055,21,NULL,NULL,NULL,NULL,NULL,38,1),(12,'2016-06-25 02:39:27',79.72109985351562,7.03817,8,123.139,NULL,NULL,NULL,NULL,NULL,NULL,47,1),(16,'2016-06-01 05:55:19',79.86070251464844,6.90226,16.182,258.139,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(16,'2016-06-01 06:02:18',79.86119842529297,6.90226,13.2568,254.203,6,NULL,32,60,102311,0,97,1),(16,'2016-06-01 06:05:19',79.86119842529297,6.90226,13.2568,254.203,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(16,'2016-06-01 06:15:19',79.86119842529297,6.90226,13.2568,254.203,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(16,'2016-06-01 06:25:19',79.86119842529297,6.90226,13.2568,254.203,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(16,'2016-06-01 06:35:19',79.86119842529297,6.90226,13.2568,254.203,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(16,'2016-06-01 06:45:19',79.86129760742188,6.90218,22.827,234.152,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(16,'2016-06-01 06:55:19',79.86100006103516,6.90232,14.6583,163.945,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(16,'2016-06-01 07:05:19',79.86100006103516,6.90232,14.6583,163.945,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(16,'2016-06-01 07:15:19',79.86109924316406,6.90206,0.996028,105.408,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(16,'2016-06-01 07:25:19',79.86109924316406,6.90206,0.996028,105.408,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(16,'2016-10-26 11:53:06',79.86070251464844,6.90226,16.182,258.139,12,3,30,75,100321,0,98,1);
/*!40000 ALTER TABLE `vessel_has_voyage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vessel_type`
--

DROP TABLE IF EXISTS `vessel_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vessel_type` (
  `vsl_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `vsl_type_name` varchar(45) NOT NULL,
  PRIMARY KEY (`vsl_type_id`),
  UNIQUE KEY `vsl_type_name_UNIQUE` (`vsl_type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vessel_type`
--

LOCK TABLES `vessel_type` WRITE;
/*!40000 ALTER TABLE `vessel_type` DISABLE KEYS */;
INSERT INTO `vessel_type` VALUES (3,'Longliner'),(5,'Multipurpose vessel'),(4,'Pole and line vessel'),(2,'Seiner'),(1,'Trawler');
/*!40000 ALTER TABLE `vessel_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vessel_view`
--

DROP TABLE IF EXISTS `vessel_view`;
/*!50001 DROP VIEW IF EXISTS `vessel_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vessel_view` AS SELECT 
 1 AS `vsl_id`,
 1 AS `vsl_name`,
 1 AS `vsl_owner`,
 1 AS `vsl_reg_port`,
 1 AS `vsl_max_rate_speed`,
 1 AS `vsl_min_rate_speed`,
 1 AS `vsl_cur_speed`,
 1 AS `vsl_boat_len`,
 1 AS `vsl_boat_max_width`,
 1 AS `vsl_boat_max_dep`,
 1 AS `vsl_boat_weight`,
 1 AS `vsl_eng_capacity`,
 1 AS `vsl_allow_fishing_state`,
 1 AS `vessl_has_type_vsl_id`,
 1 AS `vessl_has_type_type_id`,
 1 AS `vsl_type_id`,
 1 AS `vsl_type_name`,
 1 AS `own_id`,
 1 AS `own_name`,
 1 AS `own_adress`,
 1 AS `own_phone`,
 1 AS `own_email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vessl_has_type`
--

DROP TABLE IF EXISTS `vessl_has_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vessl_has_type` (
  `vsl_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`vsl_id`,`type_id`),
  KEY `type_id_idx` (`type_id`),
  CONSTRAINT `type_id` FOREIGN KEY (`type_id`) REFERENCES `vessel_type` (`vsl_type_id`),
  CONSTRAINT `ves_id` FOREIGN KEY (`vsl_id`) REFERENCES `vessel` (`vsl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vessl_has_type`
--

LOCK TABLES `vessl_has_type` WRITE;
/*!40000 ALTER TABLE `vessl_has_type` DISABLE KEYS */;
INSERT INTO `vessl_has_type` VALUES (1,2),(2,2),(3,1),(4,3),(5,5);
/*!40000 ALTER TABLE `vessl_has_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voge_fishing_fish`
--

DROP TABLE IF EXISTS `voge_fishing_fish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voge_fishing_fish` (
  `voge_fishing_fish_voy_id` int(11) NOT NULL,
  `voge_fishing_fish_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `voge_fishing_fish_fish_id` int(11) DEFAULT NULL,
  `voge_fishing_fish_weight` float DEFAULT NULL,
  `voge_fishing_fish_isimergency` int(11) DEFAULT NULL,
  `voge_fishing_fish_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`voge_fishing_fish_voy_id`,`voge_fishing_fish_time`),
  KEY `fish_id_idx` (`voge_fishing_fish_fish_id`),
  CONSTRAINT `fish_id` FOREIGN KEY (`voge_fishing_fish_fish_id`) REFERENCES `fish` (`fish_id`),
  CONSTRAINT `voy_id` FOREIGN KEY (`voge_fishing_fish_voy_id`) REFERENCES `voyage` (`voyage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voge_fishing_fish`
--

LOCK TABLES `voge_fishing_fish` WRITE;
/*!40000 ALTER TABLE `voge_fishing_fish` DISABLE KEYS */;
INSERT INTO `voge_fishing_fish` VALUES (1,'2016-05-10 02:39:16',2,50,NULL,1),(1,'2016-05-10 11:39:16',3,60,NULL,1),(6,'2016-07-02 04:50:15',5,40,NULL,0),(6,'2016-07-03 12:09:15',NULL,NULL,1,NULL),(12,'2016-06-07 05:50:40',2,456,NULL,NULL),(12,'2016-06-07 06:12:40',3,456,NULL,NULL),(12,'2016-06-08 00:52:40',NULL,NULL,NULL,1),(12,'2016-06-08 02:42:40',NULL,NULL,NULL,0),(12,'2016-06-25 01:49:27',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `voge_fishing_fish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voyage`
--

DROP TABLE IF EXISTS `voyage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voyage` (
  `voyage_id` int(11) NOT NULL AUTO_INCREMENT,
  `voyage_dep_time` timestamp NULL DEFAULT NULL,
  `voyage_arv_time` timestamp NULL DEFAULT NULL,
  `voyage_vessal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`voyage_id`),
  KEY `vessleId_idx` (`voyage_vessal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voyage`
--

LOCK TABLES `voyage` WRITE;
/*!40000 ALTER TABLE `voyage` DISABLE KEYS */;
INSERT INTO `voyage` VALUES (1,'2016-05-09 02:39:16','2016-06-01 08:46:07',1),(2,'2016-06-07 21:43:27','2016-07-01 03:46:27',1),(3,'2016-07-01 09:14:54','2016-07-07 11:20:56',1),(4,'2016-08-06 07:09:51','2016-08-09 08:10:47',1),(5,'2016-09-06 23:48:29','2016-09-30 07:06:19',1),(6,'2016-06-30 22:35:15','2016-07-20 02:40:28',2),(7,'2016-08-21 05:48:27','2016-09-07 04:59:30',2),(8,'2016-09-09 06:53:24','2016-09-16 03:50:27',2),(9,'2016-09-19 03:53:22','2016-10-01 03:50:20',2),(10,'2016-10-05 18:30:00','2016-10-06 01:44:15',2),(11,'2016-05-03 05:53:28','2016-05-24 03:59:15',3),(12,'2016-06-07 03:52:40','2016-06-25 02:49:27',3),(13,'2016-07-04 07:55:26','2016-07-18 04:54:18',3),(14,'2016-09-06 04:59:29','2016-09-30 06:48:21',3),(15,'2016-10-05 05:42:35','2016-10-19 04:54:17',3),(16,'2016-06-01 05:52:18','2016-06-22 05:57:22',4),(17,'2016-07-05 05:56:26','2016-07-20 02:55:31',4),(18,'2016-08-02 03:51:19','2016-09-13 05:56:25',4),(19,'2016-09-19 18:30:00','2016-10-26 18:30:00',4),(20,'2016-10-03 05:58:29','2016-10-24 00:58:45',4),(21,'2016-07-04 05:54:26','2016-07-09 06:54:26',5),(22,'2016-07-12 08:55:30','2016-07-21 23:29:30',5),(23,'2016-08-08 02:55:33','2016-08-11 03:10:38',5),(24,'2016-08-24 18:30:00','2016-10-11 06:01:37',5),(25,'2016-10-22 08:51:31','2016-10-25 12:11:36',5);
/*!40000 ALTER TABLE `voyage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `voyage_view`
--

DROP TABLE IF EXISTS `voyage_view`;
/*!50001 DROP VIEW IF EXISTS `voyage_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `voyage_view` AS SELECT 
 1 AS `voyage_id`,
 1 AS `voyage_vessal_id`,
 1 AS `voyage_dep_time`,
 1 AS `voyage_arv_time`,
 1 AS `voge_fishing_fish_voy_id`,
 1 AS `voge_fishing_fish_fish_id`,
 1 AS `voge_fishing_fish_weight`,
 1 AS `voge_fishing_fish_time`,
 1 AS `voge_fishing_fish_isimergency`,
 1 AS `voge_fishing_fish_state`,
 1 AS `fish_id`,
 1 AS `fish_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'malu_db'
--

--
-- Dumping routines for database 'malu_db'
--

--
-- Final view structure for view `main_view`
--

/*!50001 DROP VIEW IF EXISTS `main_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `main_view` AS select `vessel_view`.`vsl_id` AS `vsl_id`,`vessel_view`.`vsl_name` AS `vsl_name`,`vessel_view`.`vsl_owner` AS `vsl_owner`,`vessel_view`.`vsl_reg_port` AS `vsl_reg_port`,`vessel_view`.`vsl_max_rate_speed` AS `vsl_max_rate_speed`,`vessel_view`.`vsl_min_rate_speed` AS `vsl_min_rate_speed`,`vessel_view`.`vsl_cur_speed` AS `vsl_cur_speed`,`vessel_view`.`vsl_boat_len` AS `vsl_boat_len`,`vessel_view`.`vsl_boat_max_width` AS `vsl_boat_max_width`,`vessel_view`.`vsl_boat_max_dep` AS `vsl_boat_max_dep`,`vessel_view`.`vsl_boat_weight` AS `vsl_boat_weight`,`vessel_view`.`vsl_eng_capacity` AS `vsl_eng_capacity`,`vessel_view`.`vsl_allow_fishing_state` AS `vsl_allow_fishing_state`,`vessel_view`.`vessl_has_type_vsl_id` AS `vessl_has_type_vsl_id`,`vessel_view`.`vessl_has_type_type_id` AS `vessl_has_type_type_id`,`vessel_view`.`vsl_type_id` AS `vsl_type_id`,`vessel_view`.`vsl_type_name` AS `vsl_type_name`,`vessel_view`.`own_id` AS `own_id`,`vessel_view`.`own_name` AS `own_name`,`vessel_view`.`own_adress` AS `own_adress`,`vessel_view`.`own_phone` AS `own_phone`,`vessel_view`.`own_email` AS `own_email`,`voyage_view`.`voyage_id` AS `voyage_id`,`voyage_view`.`voyage_vessal_id` AS `voyage_vessal_id`,`voyage_view`.`voyage_dep_time` AS `voyage_dep_time`,`voyage_view`.`voyage_arv_time` AS `voyage_arv_time`,`voyage_view`.`voge_fishing_fish_voy_id` AS `voge_fishing_fish_voy_id`,`voyage_view`.`voge_fishing_fish_fish_id` AS `voge_fishing_fish_fish_id`,`voyage_view`.`voge_fishing_fish_weight` AS `voge_fishing_fish_weight`,`voyage_view`.`voge_fishing_fish_time` AS `voge_fishing_fish_time`,`voyage_view`.`voge_fishing_fish_isimergency` AS `voge_fishing_fish_isimergency`,`voyage_view`.`voge_fishing_fish_state` AS `voge_fishing_fish_state`,`voyage_view`.`fish_id` AS `fish_id`,`voyage_view`.`fish_name` AS `fish_name`,`vessel_has_voyage`.`vsl_has_vog_vog_id` AS `vsl_has_vog_vog_id`,`vessel_has_voyage`.`vsl_has_vog_time` AS `vsl_has_vog_time`,`vessel_has_voyage`.`vsl_has_vog_long` AS `vsl_has_vog_long`,`vessel_has_voyage`.`vsl_has_vog_lati` AS `vsl_has_vog_lati`,`vessel_has_voyage`.`vsl_has_vog_speed` AS `vsl_has_vog_speed`,`vessel_has_voyage`.`vsl_has_vog_true_heading` AS `vsl_has_vog_true_heading`,`vessel_has_voyage`.`vsl_has_vog_wind_speed` AS `vsl_has_vog_wind_speed`,`vessel_has_voyage`.`vsl_has_vog_wind_deg` AS `vsl_has_vog_wind_deg`,`vessel_has_voyage`.`vsl_has_vog_temp` AS `vsl_has_vog_temp`,`vessel_has_voyage`.`vsl_has_vog_humidity` AS `vsl_has_vog_humidity`,`vessel_has_voyage`.`vsl_has_vog_pressure` AS `vsl_has_vog_pressure`,`vessel_has_voyage`.`vsl_has_vog_rain` AS `vsl_has_vog_rain`,`vessel_has_voyage`.`vsl_has_vog_btry_status` AS `vsl_has_vog_btry_status`,`vessel_has_voyage`.`vsl_has_vog_div_status` AS `vsl_has_vog_div_status` from ((`vessel_view` left join `voyage_view` on((`voyage_view`.`voyage_vessal_id` = `vessel_view`.`vsl_id`))) left join `vessel_has_voyage` on((`vessel_has_voyage`.`vsl_has_vog_vog_id` = `voyage_view`.`voyage_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `proximity`
--

/*!50001 DROP VIEW IF EXISTS `proximity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `proximity` AS select `v1`.`vsl_has_vog_vog_id` AS `vsl_has_vog_vog_id`,`v1`.`vsl_has_vog_time` AS `vsl_has_vog_time`,`v1`.`vsl_has_vog_long` AS `vsl_has_vog_long`,`v1`.`vsl_has_vog_lati` AS `vsl_has_vog_lati`,`v1`.`vsl_has_vog_speed` AS `vsl_has_vog_speed`,`v1`.`vsl_has_vog_true_heading` AS `vsl_has_vog_true_heading`,`v1`.`vsl_has_vog_wind_speed` AS `vsl_has_vog_wind_speed`,`v1`.`vsl_has_vog_wind_deg` AS `vsl_has_vog_wind_deg`,`v1`.`vsl_has_vog_temp` AS `vsl_has_vog_temp`,`v1`.`vsl_has_vog_humidity` AS `vsl_has_vog_humidity`,`v1`.`vsl_has_vog_pressure` AS `vsl_has_vog_pressure`,`v1`.`vsl_has_vog_rain` AS `vsl_has_vog_rain`,`v1`.`vsl_has_vog_btry_status` AS `vsl_has_vog_btry_status`,`v1`.`vsl_has_vog_div_status` AS `vsl_has_vog_div_status`,`v2`.`vsl_has_vog_vog_id` AS `vsl_has_vog_vog_id2`,`v2`.`vsl_has_vog_time` AS `vsl_has_vog_time2`,`v2`.`vsl_has_vog_long` AS `vsl_has_vog_long2`,`v2`.`vsl_has_vog_lati` AS `vsl_has_vog_lati2`,`v2`.`vsl_has_vog_speed` AS `vsl_has_vog_speed2`,`v2`.`vsl_has_vog_true_heading` AS `vsl_has_vog_true_heading2`,`v2`.`vsl_has_vog_wind_speed` AS `vsl_has_vog_wind_speed2`,`v2`.`vsl_has_vog_wind_deg` AS `vsl_has_vog_wind_deg2`,`v2`.`vsl_has_vog_temp` AS `vsl_has_vog_temp2`,`v2`.`vsl_has_vog_humidity` AS `vsl_has_vog_humidity2`,`v2`.`vsl_has_vog_pressure` AS `vsl_has_vog_pressure2`,`v2`.`vsl_has_vog_rain` AS `vsl_has_vog_rain2`,`v2`.`vsl_has_vog_btry_status` AS `vsl_has_vog_btry_status2`,`v2`.`vsl_has_vog_div_status` AS `vsl_has_vog_div_status2` from (`vessel_has_voyage` `v1` join `vessel_has_voyage` `v2`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `proximity3`
--

/*!50001 DROP VIEW IF EXISTS `proximity3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `proximity3` AS select `proximityview2`.`voyage1` AS `voyage1`,`vessel`.`vsl_id` AS `vsl_id`,`vessel`.`vsl_name` AS `vsl_name`,`proximityview2`.`voyage2` AS `voyage2`,`proximityview2`.`vsl_has_vog_time1` AS `vsl_has_vog_time1`,`proximityview2`.`vsl_has_vog_time2` AS `vsl_has_vog_time2`,`proximityview2`.`timeGap` AS `timeGap`,`proximityview2`.`longDist` AS `longDist`,`proximityview2`.`latiDist` AS `latiDist` from ((`proximityview2` left join `voyage` on((`proximityview2`.`voyage1` = `voyage`.`voyage_id`))) left join `vessel` on((`vessel`.`vsl_id` = `voyage`.`voyage_vessal_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `proximity4`
--

/*!50001 DROP VIEW IF EXISTS `proximity4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `proximity4` AS select `proximity3`.`voyage1` AS `voyage1`,`proximity3`.`vsl_id` AS `vsl_id`,`proximity3`.`vsl_name` AS `vsl_name`,`proximity3`.`voyage2` AS `voyage2`,`vessel`.`vsl_id` AS `vsl_id2`,`vessel`.`vsl_name` AS `vsl_name2`,`proximity3`.`vsl_has_vog_time1` AS `vsl_has_vog_time1`,`proximity3`.`vsl_has_vog_time2` AS `vsl_has_vog_time2`,`proximity3`.`timeGap` AS `timeGap`,`proximity3`.`longDist` AS `longDist`,`proximity3`.`latiDist` AS `latiDist` from ((`proximity3` left join `voyage` on((`proximity3`.`voyage2` = `voyage`.`voyage_id`))) left join `vessel` on((`vessel`.`vsl_id` = `voyage`.`voyage_vessal_id`))) where (`proximity3`.`vsl_id` <> `vessel`.`vsl_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `proximityview2`
--

/*!50001 DROP VIEW IF EXISTS `proximityview2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `proximityview2` AS select `proximity`.`vsl_has_vog_vog_id` AS `voyage1`,`proximity`.`vsl_has_vog_vog_id2` AS `voyage2`,`proximity`.`vsl_has_vog_time` AS `vsl_has_vog_time1`,`proximity`.`vsl_has_vog_time2` AS `vsl_has_vog_time2`,(unix_timestamp(`proximity`.`vsl_has_vog_time`) - unix_timestamp(`proximity`.`vsl_has_vog_time2`)) AS `timeGap`,abs((`proximity`.`vsl_has_vog_long` - `proximity`.`vsl_has_vog_long2`)) AS `longDist`,abs((`proximity`.`vsl_has_vog_lati` - `proximity`.`vsl_has_vog_lati2`)) AS `latiDist` from `proximity` where ((`proximity`.`vsl_has_vog_vog_id` <> `proximity`.`vsl_has_vog_vog_id2`) and ((unix_timestamp(`proximity`.`vsl_has_vog_time`) - unix_timestamp(`proximity`.`vsl_has_vog_time2`)) > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `temp`
--

/*!50001 DROP VIEW IF EXISTS `temp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `temp` AS select `vessel`.`vsl_id` AS `vsl_id`,`vessel`.`vsl_name` AS `vsl_name`,`vessel`.`vsl_owner` AS `vsl_owner`,`vessel`.`vsl_reg_port` AS `vsl_reg_port`,`vessel`.`vsl_max_rate_speed` AS `vsl_max_rate_speed`,`vessel`.`vsl_min_rate_speed` AS `vsl_min_rate_speed`,`vessel`.`vsl_cur_speed` AS `vsl_cur_speed`,`vessel`.`vsl_boat_len` AS `vsl_boat_len`,`vessel`.`vsl_boat_max_width` AS `vsl_boat_max_width`,`vessel`.`vsl_boat_max_dep` AS `vsl_boat_max_dep`,`vessel`.`vsl_boat_weight` AS `vsl_boat_weight`,`vessel`.`vsl_eng_capacity` AS `vsl_eng_capacity`,`vessel`.`vsl_allow_fishing_state` AS `vsl_allow_fishing_state` from `vessel` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vessel_view`
--

/*!50001 DROP VIEW IF EXISTS `vessel_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vessel_view` AS select `vessel`.`vsl_id` AS `vsl_id`,`vessel`.`vsl_name` AS `vsl_name`,`vessel`.`vsl_owner` AS `vsl_owner`,`vessel`.`vsl_reg_port` AS `vsl_reg_port`,`vessel`.`vsl_max_rate_speed` AS `vsl_max_rate_speed`,`vessel`.`vsl_min_rate_speed` AS `vsl_min_rate_speed`,`vessel`.`vsl_cur_speed` AS `vsl_cur_speed`,`vessel`.`vsl_boat_len` AS `vsl_boat_len`,`vessel`.`vsl_boat_max_width` AS `vsl_boat_max_width`,`vessel`.`vsl_boat_max_dep` AS `vsl_boat_max_dep`,`vessel`.`vsl_boat_weight` AS `vsl_boat_weight`,`vessel`.`vsl_eng_capacity` AS `vsl_eng_capacity`,`vessel`.`vsl_allow_fishing_state` AS `vsl_allow_fishing_state`,`vessl_has_type`.`vsl_id` AS `vessl_has_type_vsl_id`,`vessl_has_type`.`type_id` AS `vessl_has_type_type_id`,`vessel_type`.`vsl_type_id` AS `vsl_type_id`,`vessel_type`.`vsl_type_name` AS `vsl_type_name`,`owner`.`own_id` AS `own_id`,`owner`.`own_name` AS `own_name`,`owner`.`own_adress` AS `own_adress`,`owner`.`own_phone` AS `own_phone`,`owner`.`own_email` AS `own_email` from (((`vessel` left join `vessl_has_type` on((`vessel`.`vsl_id` = `vessl_has_type`.`vsl_id`))) left join `vessel_type` on((`vessl_has_type`.`type_id` = `vessel_type`.`vsl_type_id`))) left join `owner` on((`owner`.`own_id` = `vessel`.`vsl_owner`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `voyage_view`
--

/*!50001 DROP VIEW IF EXISTS `voyage_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `voyage_view` AS select `voyage`.`voyage_id` AS `voyage_id`,`voyage`.`voyage_vessal_id` AS `voyage_vessal_id`,`voyage`.`voyage_dep_time` AS `voyage_dep_time`,`voyage`.`voyage_arv_time` AS `voyage_arv_time`,`voge_fishing_fish`.`voge_fishing_fish_voy_id` AS `voge_fishing_fish_voy_id`,`voge_fishing_fish`.`voge_fishing_fish_fish_id` AS `voge_fishing_fish_fish_id`,`voge_fishing_fish`.`voge_fishing_fish_weight` AS `voge_fishing_fish_weight`,`voge_fishing_fish`.`voge_fishing_fish_time` AS `voge_fishing_fish_time`,`voge_fishing_fish`.`voge_fishing_fish_isimergency` AS `voge_fishing_fish_isimergency`,`voge_fishing_fish`.`voge_fishing_fish_state` AS `voge_fishing_fish_state`,`fish`.`fish_id` AS `fish_id`,`fish`.`fish_name` AS `fish_name` from ((`voyage` left join `voge_fishing_fish` on((`voge_fishing_fish`.`voge_fishing_fish_voy_id` = `voyage`.`voyage_id`))) left join `fish` on((`voge_fishing_fish`.`voge_fishing_fish_fish_id` = `fish`.`fish_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-26 21:26:36

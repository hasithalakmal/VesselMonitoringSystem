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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fish`
--

LOCK TABLES `fish` WRITE;
/*!40000 ALTER TABLE `fish` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!50001 DROP VIEW IF EXISTS `temp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `temp` AS SELECT 
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vessel`
--

LOCK TABLES `vessel` WRITE;
/*!40000 ALTER TABLE `vessel` DISABLE KEYS */;
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
  `vsl_has_vog_long` float DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vessel_type`
--

LOCK TABLES `vessel_type` WRITE;
/*!40000 ALTER TABLE `vessel_type` DISABLE KEYS */;
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
  `voge_fishing_fish_fish_id` int(11) NOT NULL,
  `voge_fishing_fish_weight` float DEFAULT NULL,
  `voge_fishing_fish_time` timestamp NULL DEFAULT NULL,
  `voge_fishing_fish_isimergency` int(11) DEFAULT NULL,
  `voge_fishing_fish_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`voge_fishing_fish_voy_id`,`voge_fishing_fish_fish_id`),
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
  KEY `vessleId_idx` (`voyage_vessal_id`),
  CONSTRAINT `vessleId` FOREIGN KEY (`voyage_vessal_id`) REFERENCES `vessel` (`vsl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voyage`
--

LOCK TABLES `voyage` WRITE;
/*!40000 ALTER TABLE `voyage` DISABLE KEYS */;
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
/*!50001 VIEW `temp` AS select `vessel_has_voyage`.`vsl_has_vog_vog_id` AS `vsl_has_vog_vog_id`,`vessel_has_voyage`.`vsl_has_vog_time` AS `vsl_has_vog_time`,`vessel_has_voyage`.`vsl_has_vog_long` AS `vsl_has_vog_long`,`vessel_has_voyage`.`vsl_has_vog_lati` AS `vsl_has_vog_lati`,`vessel_has_voyage`.`vsl_has_vog_speed` AS `vsl_has_vog_speed`,`vessel_has_voyage`.`vsl_has_vog_true_heading` AS `vsl_has_vog_true_heading`,`vessel_has_voyage`.`vsl_has_vog_wind_speed` AS `vsl_has_vog_wind_speed`,`vessel_has_voyage`.`vsl_has_vog_wind_deg` AS `vsl_has_vog_wind_deg`,`vessel_has_voyage`.`vsl_has_vog_temp` AS `vsl_has_vog_temp`,`vessel_has_voyage`.`vsl_has_vog_humidity` AS `vsl_has_vog_humidity`,`vessel_has_voyage`.`vsl_has_vog_pressure` AS `vsl_has_vog_pressure`,`vessel_has_voyage`.`vsl_has_vog_rain` AS `vsl_has_vog_rain`,`vessel_has_voyage`.`vsl_has_vog_btry_status` AS `vsl_has_vog_btry_status`,`vessel_has_voyage`.`vsl_has_vog_div_status` AS `vsl_has_vog_div_status` from `vessel_has_voyage` */;
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
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
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

-- Dump completed on 2016-10-25 21:24:40

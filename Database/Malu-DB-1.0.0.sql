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
-- Table structure for table `vessel`
--

DROP TABLE IF EXISTS `vessel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vessel` (
  `vsl_id` int(11) NOT NULL AUTO_INCREMENT,
  `vsl_name` varchar(45) NOT NULL,
  `vsl_owner` int(11) NOT NULL,
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
  `vsl_has_vog_vsl_id` int(11) NOT NULL,
  `vsl_has_vog_vog_id` int(11) DEFAULT NULL,
  `vsl_has_vog_time` timestamp NULL DEFAULT NULL,
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
  PRIMARY KEY (`vsl_has_vog_vsl_id`),
  KEY `voyage_id_idx` (`vsl_has_vog_vog_id`),
  CONSTRAINT `vessle_id` FOREIGN KEY (`vsl_has_vog_vsl_id`) REFERENCES `vessel` (`vsl_id`),
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
  `voge_fishing_fish_isimergency` varchar(45) DEFAULT NULL,
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
  PRIMARY KEY (`voyage_id`)
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
-- Dumping events for database 'malu_db'
--

--
-- Dumping routines for database 'malu_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-22 18:54:28

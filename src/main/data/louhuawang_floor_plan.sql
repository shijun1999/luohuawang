CREATE DATABASE  IF NOT EXISTS `louhuawang` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `louhuawang`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: louhuawang
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `floor_plan`
--

DROP TABLE IF EXISTS `floor_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `floor_plan` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `BUILDING_ID` int(10) NOT NULL,
  `LEVEL` varchar(45) DEFAULT NULL,
  `INTERIOR_AREA` varchar(45) DEFAULT NULL,
  `EXTERIOR_AREA` varchar(45) DEFAULT NULL,
  `TOTAL_AREA` varchar(45) DEFAULT NULL,
  `FLOOR_PLAN_PIC` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floor_plan`
--

LOCK TABLES `floor_plan` WRITE;
/*!40000 ALTER TABLE `floor_plan` DISABLE KEYS */;
INSERT INTO `floor_plan` VALUES (27,13,'aa-','aaa','aa','a',NULL),(28,13,'v-','vv','vv','v',NULL),(29,13,'v--','vv','vv','v',NULL),(30,13,'aa-','aaa','aa','a',NULL),(31,13,'h-','hh','hhh','hhhh',NULL),(42,24,'qr','qq','qqq','qqqq',NULL),(43,24,'sr','ss','sss','ssss',NULL),(44,24,'fr','ff','fff','ffff',NULL);
/*!40000 ALTER TABLE `floor_plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-06 20:42:46

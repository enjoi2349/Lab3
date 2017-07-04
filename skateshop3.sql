-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: skateshop
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Current Database: `skateshop`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `skateshop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `skateshop`;

--
-- Table structure for table `decks`
--

DROP TABLE IF EXISTS `decks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `decks` (
  `DeckID` int(11) NOT NULL,
  `Brand` varchar(255) DEFAULT NULL,
  `Size` double DEFAULT NULL,
  `WidthRelID` int(11) DEFAULT NULL,
  PRIMARY KEY (`DeckID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decks`
--

LOCK TABLES `decks` WRITE;
/*!40000 ALTER TABLE `decks` DISABLE KEYS */;
INSERT INTO `decks` VALUES (0,'Brand',0,0),(100,'Enjoi',8,11),(101,'Baker',7.5,10),(102,'Anti-Hero',8.25,12),(103,'Girl',8,11),(104,'Habitat',7.75,10),(105,'Plan-B',8.125,12),(106,'Darkstar',7.8,10);
/*!40000 ALTER TABLE `decks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decks2skateshops`
--

DROP TABLE IF EXISTS `decks2skateshops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `decks2skateshops` (
  `DeckID` int(11) DEFAULT NULL,
  `shopID` int(11) DEFAULT NULL,
  KEY `DeckID` (`DeckID`),
  KEY `shopID` (`shopID`),
  CONSTRAINT `decks2skateshops_ibfk_1` FOREIGN KEY (`DeckID`) REFERENCES `decks` (`DeckID`),
  CONSTRAINT `decks2skateshops_ibfk_2` FOREIGN KEY (`shopID`) REFERENCES `skateshops` (`shopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decks2skateshops`
--

LOCK TABLES `decks2skateshops` WRITE;
/*!40000 ALTER TABLE `decks2skateshops` DISABLE KEYS */;
INSERT INTO `decks2skateshops` VALUES (100,1),(101,2),(106,7),(105,4),(104,5);
/*!40000 ALTER TABLE `decks2skateshops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skateshops`
--

DROP TABLE IF EXISTS `skateshops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skateshops` (
  `shopID` int(11) NOT NULL AUTO_INCREMENT,
  `shopLocation` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`shopID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skateshops`
--

LOCK TABLES `skateshops` WRITE;
/*!40000 ALTER TABLE `skateshops` DISABLE KEYS */;
INSERT INTO `skateshops` VALUES (1,'Philadelphia'),(2,'New York'),(3,'Miami'),(4,'San Fransisco'),(5,'Tokyo'),(6,'Bangkok'),(7,'Haddonfield');
/*!40000 ALTER TABLE `skateshops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trucks`
--

DROP TABLE IF EXISTS `trucks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trucks` (
  `TruckID` int(11) DEFAULT NULL,
  `Brand` varchar(255) DEFAULT NULL,
  `Size` double DEFAULT NULL,
  `WidthRelID` int(11) NOT NULL,
  PRIMARY KEY (`WidthRelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trucks`
--

LOCK TABLES `trucks` WRITE;
/*!40000 ALTER TABLE `trucks` DISABLE KEYS */;
INSERT INTO `trucks` VALUES (0,'Brand',0,0),(201,'Venture',129,10),(203,'Royal',139,11),(200,'Independent',149,12);
/*!40000 ALTER TABLE `trucks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-04 13:29:47

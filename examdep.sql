-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.21-MariaDB

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
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lecture` (
  `lecturecode` char(4) NOT NULL,
  `name` char(50) DEFAULT NULL,
  PRIMARY KEY (`lecturecode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture`
--

LOCK TABLES `lecture` WRITE;
/*!40000 ALTER TABLE `lecture` DISABLE KEYS */;
INSERT INTO `lecture` VALUES ('A5L5','Fundamentos de Ingenieria de Software'),('A6L3','Administracion de Base de Datos'),('A8L4','Programacion Web');
/*!40000 ALTER TABLE `lecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list` (
  `listcode` char(8) NOT NULL,
  `groupcode` char(6) DEFAULT NULL,
  `usercode` char(8) DEFAULT NULL,
  PRIMARY KEY (`listcode`),
  KEY `groupcode` (`groupcode`),
  KEY `usercode` (`usercode`),
  CONSTRAINT `list_ibfk_1` FOREIGN KEY (`groupcode`) REFERENCES `team` (`groupcode`),
  CONSTRAINT `list_ibfk_2` FOREIGN KEY (`usercode`) REFERENCES `user` (`usercode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES ('A5L50101','A5L501','16121021'),('A5L501PF','A5L501','PF000000'),('A5L50201','A5L502','15120342'),('A8L40101','A8L401','16121021'),('A8L401PF','A8L401','PF567123');
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `qcode` char(15) NOT NULL,
  `descript` text,
  `opa` text,
  `opb` text,
  `opc` text,
  `opcorrect` text,
  `testcode` char(6) DEFAULT NULL,
  PRIMARY KEY (`qcode`),
  KEY `testcode` (`testcode`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`testcode`) REFERENCES `test` (`testcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `groupcode` char(6) NOT NULL,
  `lecturecode` char(4) DEFAULT NULL,
  PRIMARY KEY (`groupcode`),
  KEY `lecturecode` (`lecturecode`),
  CONSTRAINT `team_ibfk_1` FOREIGN KEY (`lecturecode`) REFERENCES `lecture` (`lecturecode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES ('A5L501','A5L5'),('A5L502','A5L5'),('A8L401','A8L4');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `testcode` char(6) NOT NULL,
  `time` date DEFAULT NULL,
  `function` int(11) DEFAULT NULL,
  `type` char(2) DEFAULT NULL,
  `lecturecode` char(4) DEFAULT NULL,
  PRIMARY KEY (`testcode`),
  KEY `lecturecode` (`lecturecode`),
  CONSTRAINT `test_ibfk_1` FOREIGN KEY (`lecturecode`) REFERENCES `lecture` (`lecturecode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `usercode` char(8) NOT NULL,
  `userpass` char(30) DEFAULT NULL,
  `name` char(150) DEFAULT NULL,
  `type` enum('student','professor','admin') DEFAULT NULL,
  PRIMARY KEY (`usercode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('15120342','alumno','Rene Saldana Calderon','student'),('16121020','ponys','Blanca Cristina Cordova Cristobal','student'),('16121021','ponys','Aldo Hassan Corona Alcantar','student'),('PF000000','profesor','Miriam Zulma','professor'),('PF567123','prueba','Gerardo Flores Gaona','professor');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-25 23:05:44

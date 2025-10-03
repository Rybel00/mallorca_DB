-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: coldzone
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clienttable`
--

DROP TABLE IF EXISTS `clienttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clienttable` (
  `idC` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(25) DEFAULT NULL,
  `bday` date DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idC`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienttable`
--

LOCK TABLES `clienttable` WRITE;
/*!40000 ALTER TABLE `clienttable` DISABLE KEYS */;
INSERT INTO `clienttable` VALUES (91,'Justin Amorte','0000-00-00','09876543210','jzreaperXD@gmail.com','JZReaperXD','ilovepanc1tc4nton');
/*!40000 ALTER TABLE `clienttable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `ORnum` int NOT NULL AUTO_INCREMENT,
  `idC` int DEFAULT NULL,
  `idR` varchar(25) DEFAULT NULL,
  `modePayment` varchar(25) DEFAULT NULL,
  `amount` varchar(10) DEFAULT NULL,
  `datepayed` date DEFAULT NULL,
  `idRes` int DEFAULT NULL,
  PRIMARY KEY (`ORnum`),
  KEY `idC` (`idC`),
  KEY `idR` (`idR`),
  KEY `idRes` (`idRes`),
  CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`idC`) REFERENCES `clienttable` (`idC`),
  CONSTRAINT `receipt_ibfk_2` FOREIGN KEY (`idR`) REFERENCES `room` (`idR`),
  CONSTRAINT `receipt_ibfk_3` FOREIGN KEY (`idRes`) REFERENCES `reserveroom` (`idRes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserveroom`
--

DROP TABLE IF EXISTS `reserveroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserveroom` (
  `idRes` int NOT NULL AUTO_INCREMENT,
  `idC` int DEFAULT NULL,
  `idR` varchar(25) DEFAULT NULL,
  `datereserve` date DEFAULT NULL,
  `pax` varchar(25) DEFAULT NULL,
  `numHours` varchar(25) DEFAULT NULL,
  `numRoom` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idRes`),
  KEY `idC` (`idC`),
  KEY `idR` (`idR`),
  CONSTRAINT `reserveroom_ibfk_1` FOREIGN KEY (`idC`) REFERENCES `clienttable` (`idC`),
  CONSTRAINT `reserveroom_ibfk_2` FOREIGN KEY (`idR`) REFERENCES `room` (`idR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserveroom`
--

LOCK TABLES `reserveroom` WRITE;
/*!40000 ALTER TABLE `reserveroom` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserveroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `idR` varchar(25) NOT NULL,
  `idC` int DEFAULT NULL,
  `amenities` varchar(25) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `number` int DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idR`),
  KEY `idC` (`idC`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`idC`) REFERENCES `clienttable` (`idC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-03 15:44:13

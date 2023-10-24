-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: inventory
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `financialtronrental`
--

DROP TABLE IF EXISTS `financialtronrental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financialtronrental` (
  `trID` int NOT NULL,
  `trDate` date NOT NULL,
  `Accounts_acccountID` int NOT NULL,
  `Rentals_rentalID` int DEFAULT NULL,
  `TrTypeCode_trTypeCode` int NOT NULL,
  `User_username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`trID`),
  KEY `fk_FinancialTrOnRental_Accounts1_idx` (`Accounts_acccountID`),
  KEY `fk_FinancialTrOnRental_TrTypeCode1_idx` (`TrTypeCode_trTypeCode`),
  KEY `fk_Username_idx` (`User_username`),
  KEY `fk_Rental_idx` (`Rentals_rentalID`),
  CONSTRAINT `fk_FinancialTrOnRental_TrTypeCode1` FOREIGN KEY (`TrTypeCode_trTypeCode`) REFERENCES `trtypecode` (`trtypecode`),
  CONSTRAINT `fk_Rental` FOREIGN KEY (`Rentals_rentalID`) REFERENCES `rentals` (`rentalid`),
  CONSTRAINT `fk_Username` FOREIGN KEY (`User_username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialtronrental`
--

LOCK TABLES `financialtronrental` WRITE;
/*!40000 ALTER TABLE `financialtronrental` DISABLE KEYS */;
INSERT INTO `financialtronrental` VALUES (1,'2018-07-07',1,1,1,'admin'),(2,'2018-07-07',2,2,2,'admin'),(3,'2018-07-09',3,2,3,'admin'),(4,'2018-07-09',4,2,4,'admin'),(5,'2018-07-11',5,1,2,'admin'),(6,'2018-07-12',6,3,1,'admin'),(7,'2018-07-14',7,4,3,'admin'),(8,'2018-07-16',8,3,4,'admin'),(9,'2018-07-17',9,2,2,'admin'),(10,'2018-07-17',10,2,1,'admin'),(11,'2018-08-10',6,11,1,'admin'),(12,'2018-08-10',4,12,1,'admin'),(13,'2018-08-11',4,13,1,'admin'),(14,'2018-08-11',4,14,1,'admin'),(15,'2018-08-11',10,15,1,'admin');
/*!40000 ALTER TABLE `financialtronrental` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-24 13:51:57

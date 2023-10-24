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
-- Table structure for table `financialtronpurchase`
--

DROP TABLE IF EXISTS `financialtronpurchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financialtronpurchase` (
  `trID` int NOT NULL,
  `trDate` date DEFAULT NULL,
  `Accounts_acccountID` int NOT NULL,
  `TrTypeCode_trTypeCode` int NOT NULL,
  `Purchases_purchaseID` int NOT NULL,
  `User_username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`trID`),
  KEY `fk_financialTrOnPurchase_Accounts1_idx` (`Accounts_acccountID`),
  KEY `fk_financialTrOnPurchase_TrTypeCode1_idx` (`TrTypeCode_trTypeCode`),
  KEY `fk_financialTrOnPurchase_Purchases1_idx` (`Purchases_purchaseID`),
  KEY `fk_User_idx` (`User_username`),
  CONSTRAINT `fk_financialTrOnPurchase_Purchases1` FOREIGN KEY (`Purchases_purchaseID`) REFERENCES `purchases` (`purchaseid`),
  CONSTRAINT `fk_financialTrOnPurchase_TrTypeCode1` FOREIGN KEY (`TrTypeCode_trTypeCode`) REFERENCES `trtypecode` (`trtypecode`),
  CONSTRAINT `fk_User` FOREIGN KEY (`User_username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialtronpurchase`
--

LOCK TABLES `financialtronpurchase` WRITE;
/*!40000 ALTER TABLE `financialtronpurchase` DISABLE KEYS */;
INSERT INTO `financialtronpurchase` VALUES (1,'2018-07-05',1,1,1,'admin'),(2,'2018-07-06',2,2,2,'admin'),(3,'2018-07-07',3,2,3,'admin'),(4,'2018-07-09',4,2,4,'admin'),(5,'2018-07-11',5,1,5,'admin'),(6,'2018-07-11',6,3,6,'admin'),(7,'2018-07-12',7,4,7,'admin'),(8,'2018-07-12',8,3,8,'admin'),(9,'2018-07-14',9,2,9,'admin'),(10,'2018-07-14',10,2,10,'admin'),(11,'2018-08-06',9,1,11,'admin'),(12,'2018-08-07',7,1,12,'admin'),(13,'2018-08-18',8,1,13,'admin'),(14,'2018-08-09',10,1,14,'admin'),(15,'2018-08-10',5,2,15,'admin'),(16,'2018-08-10',7,1,16,'employee'),(17,'2018-08-10',6,1,17,'admin'),(18,'2018-08-11',3,1,18,'admin'),(19,'2018-08-11',1,1,19,'admin'),(20,'2018-08-11',9,1,20,'admin'),(21,'2018-08-11',5,1,21,'admin'),(22,'2020-07-10',3,1,22,'admin');
/*!40000 ALTER TABLE `financialtronpurchase` ENABLE KEYS */;
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

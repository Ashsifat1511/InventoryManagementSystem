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
-- Table structure for table `rentals`
--

DROP TABLE IF EXISTS `rentals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentals` (
  `rentalID` int NOT NULL,
  `rentalDate` date NOT NULL,
  `returnDate` date DEFAULT NULL,
  `paid` double DEFAULT NULL,
  `amountDue` double DEFAULT NULL,
  `User_username` varchar(45) NOT NULL,
  `Item_itemID` int NOT NULL,
  `Customers_customerID` int NOT NULL,
  PRIMARY KEY (`rentalID`),
  KEY `fk_Rentals_User_idx` (`User_username`),
  KEY `fk_Rentals_Item1_idx` (`Item_itemID`),
  KEY `fk_Rentals_Customers1_idx` (`Customers_customerID`),
  CONSTRAINT `fk_Rentals_User` FOREIGN KEY (`User_username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentals`
--

LOCK TABLES `rentals` WRITE;
/*!40000 ALTER TABLE `rentals` DISABLE KEYS */;
INSERT INTO `rentals` VALUES (1,'2018-07-03','2018-07-12',1000,0,'admin',3,1),(2,'2018-07-04','2018-07-16',620,0,'admin',5,2),(3,'2018-07-05','2018-07-16',550,0,'admin',3,2),(4,'2018-07-05','2018-07-16',600,100,'admin',7,3),(5,'2018-07-06','2018-07-16',420,0,'admin',7,3),(6,'2018-07-07','2018-07-16',800,40,'admin',5,4),(7,'2018-07-07','2018-07-16',600,60,'admin',7,5),(8,'2018-07-08','2018-07-17',200,70,'admin',3,6),(9,'2018-07-09','2018-07-17',1000,80,'admin',5,6),(10,'2018-07-10','2018-07-17',1800,90,'admin',5,1),(11,'2018-07-11','2018-08-16',300,0,'admin',8,5),(12,'2018-07-12','2018-08-11',800,0,'admin',4,3),(13,'2018-07-16','2018-08-12',800,0,'admin',4,3),(14,'2018-07-11','2018-08-12',400,0,'admin',3,3),(15,'2018-08-11','2018-08-15',3200,0,'admin',4,9);
/*!40000 ALTER TABLE `rentals` ENABLE KEYS */;
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

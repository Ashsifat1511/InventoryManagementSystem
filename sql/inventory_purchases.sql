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
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `purchaseID` int NOT NULL,
  `purchaseDate` varchar(45) NOT NULL,
  `purchaseQuantity` int NOT NULL,
  `amountDue` double DEFAULT NULL,
  `User_username` varchar(45) NOT NULL,
  `Item_itemID` int NOT NULL,
  `Customers_customerID` int NOT NULL,
  `payAmount` double DEFAULT NULL,
  PRIMARY KEY (`purchaseID`),
  KEY `fk_Purchases_User1_idx` (`User_username`),
  KEY `fk_Purchases_Item1_idx` (`Item_itemID`),
  KEY `fk_Purchases_Customers1_idx` (`Customers_customerID`),
  CONSTRAINT `fk_Purchases_User1` FOREIGN KEY (`User_username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (1,'2018-7-5',2,0,'admin',1,1,1000),(2,'2018-7-6',3,0,'admin',2,2,1210),(3,'2018-7-7',1,0,'admin',3,3,920),(4,'2018-7-8',5,10,'admin',3,4,100),(5,'2018-7-9',7,0,'admin',1,6,200),(6,'2018-7-11',7,0,'admin',4,8,600),(7,'2018-7-12',4,0,'admin',5,1,8030),(8,'2018-7-13',9,0,'admin',6,7,800),(9,'2018-7-14',2,0,'admin',7,5,900),(10,'2018-7-17',6,0,'admin',8,5,1120),(11,'2018-08-7',3,0,'admin',7,8,180),(12,'2018-08-8',7,0,'admin',6,6,700),(13,'2018-08-9',5,0,'admin',9,7,70),(14,'2018-08-10',3,0,'admin',4,9,300),(15,'2018-08-10',1,0,'admin',10,4,90),(16,'2018-08-10',3,0,'employee',7,6,180),(17,'2018-08-10',1,0,'admin',6,5,100),(18,'2018-08-11',1,0,'admin',9,2,70),(19,'2018-08-11',3,0,'admin',1,1,6000),(20,'2018-08-11',1,0,'admin',6,8,100),(21,'2018-08-11',1,0,'admin',2,4,15000),(22,'2020-07-10',10,25,'admin',10,2,875);
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-24 13:51:56

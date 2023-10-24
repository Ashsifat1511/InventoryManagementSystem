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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerID` int NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `memberSince` date DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Dr. Professor','Karim','Dhaka','0188999999','dr.karim@gmail.com','file:/D:/Project_Final/IntellijIDEA/Images/customers/man3.jpg','Male','2018-08-11'),(2,'Faysal','Khan','Shukrabad','017222222','faysal@gmail.com','file:/D:/Project_Final/IntellijIDEA/Images/customers/man1.jpg','Male','2018-08-11'),(3,'Afif','Anik','Dhaka','01722562455','anik@gmail.com','file:/D:/Project_Final/IntellijIDEA/Images/customers/man2.jpg','Male','2018-08-11'),(4,'Jubayer','Ahmed','Dhaka','0199999999','jubaer@gmail.com','file:/D:/Project_Final/IntellijIDEA/Images/customers/man4.jpg','Male','2018-08-11'),(5,'Niloy','Mia','Jamalpur','01722265222','niloy@gmail.com','file:/D:/Project_Final/IntellijIDEA/Images/customers/man5.jpg','Male','2018-08-11'),(6,'Sadia','Zamal','Dhaka','0167799999','zamal@gmail.com','file:/D:/Project_Final/IntellijIDEA/Images/customers/woman1.jpg','Female','2018-08-11'),(7,'Hasina','Sheikh','Dhaka','0169999999','sheikh@gmail.com','file:/D:/Project_Final/IntellijIDEA/Images/customers/woman2.jpg','Female','2018-08-11'),(8,'John','Anderson','Dhaka','0188999999','john@gmail.com','file:/D:/Project_Final/IntellijIDEA/Images/customers/man5.jpg','Male','2018-08-11'),(9,'Imam','Rayhan','Chittagong','0155999999','imam@gmail.com','','Male','2018-10-01'),(10,'Babul','Kadir','Dhaka','0166999999','babul@gmail.com','','Male','2018-10-01'),(11,'Test','User','Dhaka','017888888','test@email.com','file:/C:/Users/daddy/Desktop/man2.jpg','Male','2018-08-10'),(12,'New','Guy','New','7567','jhnhgh',NULL,'Male','2020-07-10'),(13,'Gab ','Faysal','Teligati','01474747','gabfosol',NULL,'Male','2023-10-24');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
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

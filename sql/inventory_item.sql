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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `itemID` int NOT NULL,
  `itemName` varchar(45) NOT NULL,
  `stock` int NOT NULL,
  `rentalOrSale` set('Rental','Sale') NOT NULL,
  `salePrice` double DEFAULT NULL,
  `rentRate` double DEFAULT NULL,
  `photo` varchar(160) DEFAULT NULL,
  `ItemType_itemTypeId` int NOT NULL,
  PRIMARY KEY (`itemID`),
  KEY `fk_Item_ItemType1_idx` (`ItemType_itemTypeId`),
  CONSTRAINT `fk_Item_ItemType1` FOREIGN KEY (`ItemType_itemTypeId`) REFERENCES `itemtype` (`itemtypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Mobile',47,'Sale',2000,0,'file:/D:/Project_Final/IntellijIDEA/Images/items/mobile.jpg',1),(2,'Computer',29,'Sale',15000,0,'file:/D:/Project_Final/IntellijIDEA/Images/items/computer.jpg',1),(3,'Truc',9,'Rental',0,400,'file:/D:/Project_Final/IntellijIDEA/Images/items/truck.jpg',5),(4,'Electric Heater',4,'Rental,Sale',100,800,'file:/D:/Project_Final/IntellijIDEA/Images/items/heater.jpg',2),(5,'Drilling Machine',10,'Sale',100,0,'file:/D:/Project_Final/IntellijIDEA/Images/items/drill.png',3),(6,'SkateBoard',1,'Sale',100,0,'file:/D:/Project_Final/IntellijIDEA/Images/items/skate.jpg',7),(7,'Hammer',4,'Sale',60,0,'file:/D:/Project_Final/IntellijIDEA/Images/items/hammer.jpg',4),(8,'X-mas lights',39,'Rental',0,50,'file:/D:/Project_Final/IntellijIDEA/Images/items/xmas.jpg',9),(9,'Product 2',14,'Sale',70,0,NULL,6),(10,'Product 3',9,'Sale',90,0,NULL,6),(11,'hghf',20,'Sale',44,0,NULL,2);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
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

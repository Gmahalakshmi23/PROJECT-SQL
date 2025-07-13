-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: rems
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agents` (
  `agent_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `agency_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`agent_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` VALUES (1,'Ravi Kumar','ravi.kumar@example.com','9876543210','Dream Homes'),(2,'Suma Rani','suma.rani@example.com','9123456780','Elite Estates'),(3,'Arun Raj','arun.raj@example.com','9012345678','Prime Properties'),(4,'Deepa S','deepa.s@example.com','9988776655','Trust Realty'),(5,'Karthik V','karthik.v@example.com','9345678901','Urban Nest'),(6,'Priya M','priya.m@example.com','9876512340','Property World'),(7,'Vignesh P','vignesh.p@example.com','9567890123','Galaxy Realtors'),(8,'Anitha L','anitha.l@example.com','9678901234','Star Builders'),(9,'Saravanan T','saravanan.t@example.com','9789012345','Green Homes'),(10,'Meena J','meena.j@example.com','9890123456','Skyline Properties'),(11,'Kavin R','kavin.r@example.com','9901234567','NextGen Realty'),(12,'Shanthi K','shanthi.k@example.com','9812345678','Home Square'),(13,'Manoj P','manoj.p@example.com','9823456789','Secure Properties'),(14,'Divya S','divya.s@example.com','9834567890','SafeNest Realty'),(15,'Ganesh V','ganesh.v@example.com','9845678901','City Realty'),(16,'Lakshmi N','lakshmi.n@example.com','9856789012','Smart Spaces'),(17,'Naveen K','naveen.k@example.com','9867890123','RealtyPro'),(18,'Harini M','harini.m@example.com','9878901234','Property Planet'),(19,'Ramesh B','ramesh.b@example.com','9889012345','Landmark Homes'),(20,'Swathi T','swathi.t@example.com','9890123456','Elite Nest');
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `user_id` (`user_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,1,1,'2025-07-01','Pending'),(2,2,2,'2025-07-02','Confirmed'),(3,3,3,'2025-07-03','Cancelled'),(4,4,4,'2025-07-04','Pending'),(5,5,5,'2025-07-05','Confirmed'),(6,6,6,'2025-07-06','Pending'),(7,7,7,'2025-07-07','Confirmed'),(8,8,8,'2025-07-08','Cancelled'),(9,9,9,'2025-07-09','Pending'),(10,10,10,'2025-07-10','Confirmed'),(11,11,11,'2025-07-11','Pending'),(12,12,12,'2025-07-12','Cancelled'),(13,13,13,'2025-07-13','Pending'),(14,14,14,'2025-07-14','Confirmed'),(15,15,15,'2025-07-15','Pending'),(16,16,16,'2025-07-16','Cancelled'),(17,17,17,'2025-07-17','Confirmed'),(18,18,18,'2025-07-18','Pending'),(19,19,19,'2025-07-19','Confirmed'),(20,20,20,'2025-07-20','Pending');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `user_id` (`user_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` int NOT NULL,
  `booking_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `user_id` (`user_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2025-07-01','confirmed',1,2),(2,'2025-07-02','pending',2,5),(3,'2025-07-03','confirmed',3,7),(4,'2025-07-04','pending',4,10),(5,'2025-07-05','confirmed',5,3),(6,'2025-07-06','pending',6,1),(7,'2025-07-07','confirmed',7,4),(8,'2025-07-08','pending',8,6),(9,'2025-07-09','confirmed',9,8),(10,'2025-07-10','pending',10,9),(11,'2025-07-11','confirmed',1,11),(12,'2025-07-12','pending',2,12),(13,'2025-07-13','confirmed',3,13),(14,'2025-07-14','pending',4,14),(15,'2025-07-15','confirmed',5,15),(16,'2025-07-16','pending',6,16),(17,'2025-07-17','confirmed',7,17),(18,'2025-07-18','pending',8,18),(19,'2025-07-19','confirmed',9,19),(20,'2025-07-20','pending',10,20);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fav`
--

DROP TABLE IF EXISTS `fav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fav` (
  `fav_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `saved_date` date DEFAULT NULL,
  PRIMARY KEY (`fav_id`),
  KEY `user_id` (`user_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `fav_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fav_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fav`
--

LOCK TABLES `fav` WRITE;
/*!40000 ALTER TABLE `fav` DISABLE KEYS */;
INSERT INTO `fav` VALUES (1,1,1,'2025-07-01'),(2,2,2,'2025-07-02'),(3,3,3,'2025-07-03'),(4,4,4,'2025-07-04'),(5,5,5,'2025-07-05'),(6,6,6,'2025-07-06'),(7,7,7,'2025-07-07'),(8,8,8,'2025-07-08'),(9,9,9,'2025-07-09'),(10,10,10,'2025-07-10'),(11,11,11,'2025-07-11'),(12,12,12,'2025-07-12'),(13,13,13,'2025-07-13'),(14,14,14,'2025-07-14'),(15,15,15,'2025-07-15'),(16,16,16,'2025-07-16'),(17,17,17,'2025-07-17'),(18,18,18,'2025-07-18'),(19,19,19,'2025-07-19'),(20,20,20,'2025-07-20');
/*!40000 ALTER TABLE `fav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorities`
--

DROP TABLE IF EXISTS `favorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorities` (
  `fav_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `saved_date` date DEFAULT NULL,
  PRIMARY KEY (`fav_id`),
  KEY `user_id` (`user_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `favorities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `favorities_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorities`
--

LOCK TABLES `favorities` WRITE;
/*!40000 ALTER TABLE `favorities` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `location_status`
--

DROP TABLE IF EXISTS `location_status`;
/*!50001 DROP VIEW IF EXISTS `location_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `location_status` AS SELECT 
 1 AS `location`,
 1 AS `total_properties`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owners` (
  `owner_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`owner_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES (1,'Arjun Rao','9876543210','arjun.rao@example.com'),(2,'Meena Devi','9123456780','meena.devi@example.com'),(3,'Sundar P','9012345678','sundar.p@example.com'),(4,'Lakshmi S','9988776655','lakshmi.s@example.com'),(5,'Rajeev K','9345678901','rajeev.k@example.com'),(6,'Divya R','9876512340','divya.r@example.com'),(7,'Ravi Kumar','9567890123','ravi.kumar@example.com'),(8,'Anitha L','9678901234','anitha.l@example.com'),(9,'Saravanan T','9789012345','saravanan.t@example.com'),(10,'Meena J','9890123456','meena.j@example.com'),(11,'Kavin R','9901234567','kavin.r@example.com'),(12,'Shanthi K','9812345678','shanthi.k@example.com'),(13,'Manoj P','9823456789','manoj.p@example.com'),(14,'Divya S','9834567890','divya.s@example.com'),(15,'Ganesh V','9845678901','ganesh.v@example.com'),(16,'Lakshmi N','9856789012','lakshmi.n@example.com'),(17,'Naveen K','9867890123','naveen.k@example.com'),(18,'Harini M','9878901234','harini.m@example.com'),(19,'Ramesh B','9889012345','ramesh.b@example.com'),(20,'Swathi T','9890123456','swathi.t@example.com');
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `property_type` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`property_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'City Center Flat','Flat in city center','Trichy',8000000.00,'commercial','available',5),(2,'Erode Plot','Plot in Erode','Erode',2000000.00,'land','available',1),(3,'Metro Apartment','Near metro station','Chennai',4700000.00,'apartment','available',2),(4,'Madurai Home','Apartment with amenities','Madurai',6200000.00,'apartment','sold',3),(5,'Villa Coimbatore','Big villa','Coimbatore',10000000.00,'villa','available',4),(6,'Salem House','New house with car park','Salem',3800000.00,'house','available',5),(7,'Furnished Flat','Fully furnished apartment','Chennai',2500000.00,'apartment','available',1),(8,'Trichy Shop','Commercial property','Trichy',5500000.00,'commercial','available',2),(9,'Erode Flat','Apartment in Erode','Erode',2900000.00,'apartment','sold',3),(10,'Madurai Land','Open plot','Madurai',1800000.00,'land','available',4),(11,'Peaceful House','House in peaceful area','Salem',5600000.00,'house','available',5),(12,'Main Road Plot','Land on main road','Coimbatore',7500000.00,'land','available',1),(13,'Luxury Villa','Villa with interiors','Chennai',12000000.00,'villa','available',2),(14,'Trichy Apartment','Flat in Trichy','Trichy',4200000.00,'apartment','available',3),(15,'Erode Plot','Well maintained land','Erode',2300000.00,'land','sold',4),(16,'Salem Commercial','Shop in waterfall area','Salem',6000000.00,'commercial','available',5),(17,'Budget Apartment','Small flat','Madurai',1800000.00,'apartment','available',1),(18,'Luxury Apartment','Apartment with gym','Chennai',7000000.00,'apartment','available',2),(19,'Rental Home','House for rent','Coimbatore',4000000.00,'house','sold',3),(20,'Farm Plot','Agricultural land','Trichy',3500000.00,'land','available',4);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`review_id`),
  KEY `user_id` (`user_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (21,1,1,5,'Great location and value.'),(22,2,2,4,'Well maintained.'),(23,3,3,3,'Average property.'),(24,4,4,5,'Highly recommended.'),(25,5,5,2,'Needs renovation.'),(26,6,6,4,'Spacious and clean.'),(27,7,7,5,'Beautiful view.'),(28,8,8,3,'Okay for the price.'),(29,9,9,4,'Decent neighborhood.'),(30,10,10,5,'Loved it.'),(31,11,11,3,'Could be better.'),(32,12,12,4,'Worth the money.'),(33,13,13,2,'Not great service.'),(34,14,14,5,'Fantastic!'),(35,15,15,3,'Just okay.'),(36,16,16,4,'Nice place.'),(37,17,17,1,'Very noisy.'),(38,18,18,4,'Nice locality.'),(39,19,19,5,'Top notch.'),(40,20,20,2,'Too expensive.');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transactions_id` int NOT NULL AUTO_INCREMENT,
  `property_id` int DEFAULT NULL,
  `buyer_id` int DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  PRIMARY KEY (`transactions_id`),
  KEY `property_id` (`property_id`),
  KEY `buyer_id` (`buyer_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,1,1045000.00,'2024-01-05'),(2,2,2,1320000.00,'2024-01-10'),(3,3,3,968000.55,'2024-01-15'),(4,4,4,1099999.99,'2024-01-20'),(5,5,5,715000.00,'2024-01-25'),(6,6,6,1474000.00,'2024-02-01'),(7,7,7,770000.83,'2024-02-05'),(8,8,8,979000.00,'2024-02-10'),(9,9,9,1199000.28,'2024-02-15'),(10,10,10,1078000.00,'2024-02-20'),(11,11,1,1122000.00,'2024-03-01'),(12,12,2,847000.00,'2024-03-05'),(13,13,3,1276000.66,'2024-03-10'),(14,14,4,1039500.00,'2024-03-15'),(15,15,5,759000.00,'2024-03-20'),(16,16,6,935000.00,'2024-03-25'),(17,17,7,1089000.00,'2024-04-01'),(18,18,8,1023000.00,'2024-04-05'),(19,19,9,1155000.00,'2024-04-10'),(20,20,10,1232000.00,'2024-04-15');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Arun Kumar','arun.kumar@example.com','9876543210','buyer'),(2,'Divya Rani','divya.rani@example.com','9845098450','seller'),(3,'Sathish M','sathish.m@example.com','9887766554','agent'),(4,'Priya S','priya.s@example.com','9753108642','buyer'),(5,'Karthik R','karthik.r@example.com','9123456780','seller'),(6,'Lakshmi N','lakshmi.n@example.com','9123456781','agent'),(7,'Vikram A','vikram.a@example.com','9123456782','buyer'),(8,'Meena P','meena.p@example.com','9123456783','seller'),(9,'Rajesh K','rajesh.k@example.com','9123456784','agent'),(10,'Anita D','anita.d@example.com','9123456785','buyer'),(11,'Suresh T','suresh.t@example.com','9123456786','seller'),(12,'Geetha V','geetha.v@example.com','9123456787','agent'),(13,'Ravi S','ravi.s@example.com','9123456788','buyer'),(14,'Nandhini L','nandhini.l@example.com','9123456789','seller'),(15,'Prakash M','prakash.m@example.com','9123456790','agent'),(16,'Sneha R','sneha.r@example.com','9123456791','buyer'),(17,'Manoj B','manoj.b@example.com','9123456792','seller'),(18,'Deepa K','deepa.k@example.com','9123456793','agent'),(19,'Aravind J','aravind.j@example.com','9123456794','buyer'),(20,'Kavitha S','kavitha.s@example.com','9123456795','seller');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `location_status`
--

/*!50001 DROP VIEW IF EXISTS `location_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `location_status` AS select `properties`.`location` AS `location`,count(0) AS `total_properties` from `properties` group by `properties`.`location` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-12 19:57:15

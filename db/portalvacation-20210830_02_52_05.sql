-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: portalvacation
-- ------------------------------------------------------
-- Server version	10.4.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'manager'),(2,'employee'),(3,'admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'pending'),(2,'approved'),(3,'rejected');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` int(11) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role`),
  CONSTRAINT `user_roles` FOREIGN KEY (`role`) REFERENCES `role` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (38,'Abigail','Maris','abigail@gmail.com','123',2,'21112202',NULL,NULL),(39,'Amy','Tarter','amy@gmail.com','1234',1,'211112252',NULL,NULL),(40,'Themhs','Theotokatos','themhz@gmail.com','526996',2,'2107798659','dodekanisou 18','2021-07-28'),(41,'Admin','Administrator','admin@yahoo.com','123',3,'6987556486','zhnodotou 9 zografou','2021-07-29'),(42,'Hal','jonson','jonson@gmail.com','123',2,NULL,NULL,'2021-07-29'),(43,'testuser2','testuser2','testuser2@gmail.com','123456789',2,NULL,NULL,'2021-07-30'),(44,'testuser3','testuser3','testuser3@gmail.com','123456789',2,NULL,NULL,'2021-07-30'),(45,'GERASIMOS','THEOTOKATOS','themhz@gmail.com','123456789',1,NULL,NULL,'2021-07-30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacations`
--

DROP TABLE IF EXISTS `vacations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vacation_user` (`user_id`),
  CONSTRAINT `vacation_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacations`
--

LOCK TABLES `vacations` WRITE;
/*!40000 ALTER TABLE `vacations` DISABLE KEYS */;
INSERT INTO `vacations` VALUES (1,40,'2021-07-28','2021-08-10','2021-07-28 00:00:00',2,NULL),(2,40,'2021-07-03','2021-07-31','2021-07-28 14:52:55',3,NULL),(4,40,'2021-07-28','2021-08-07','2021-07-28 14:58:20',2,NULL),(5,40,'2021-07-28','2021-07-31','2021-07-28 14:58:39',1,NULL),(7,40,'2021-07-30','2021-08-07','2021-07-28 18:55:18',1,'Need vacation'),(8,38,'2021-07-29','2021-08-13','2021-07-29 10:59:54',3,NULL),(9,40,'2021-07-28','2021-08-07','2021-07-29 11:47:43',1,'Θέλω διακοπές'),(10,40,'2021-07-28','2021-07-31','2021-07-29 11:48:08',1,'thelw diakopes'),(11,40,'2021-07-28','2021-07-31','2021-07-29 13:33:39',1,'Θέλω διακοπές!'),(12,40,'2021-07-28','2021-07-31','2021-07-29 13:33:44',1,'Θέλω διακοπές!'),(13,40,'2021-07-28','2021-07-31','2021-07-29 13:35:38',1,'Θέλω διακοπές!'),(14,40,'2021-07-28','2021-07-31','2021-07-29 13:38:16',2,'θέλω θέλω διακοπές'),(16,43,'2021-07-30','2021-08-07','2021-07-30 00:42:08',1,'Θέλω διακοπές γιατί θέλω να κάνω μπάνια');
/*!40000 ALTER TABLE `vacations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-30  5:52:12

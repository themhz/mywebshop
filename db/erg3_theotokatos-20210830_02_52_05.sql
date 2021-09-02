-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: erg3_theotokatos
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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `courses_type` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `semester` int(11) NOT NULL,
  `ects` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_types` (`courses_type`),
  KEY `course_users` (`users`),
  CONSTRAINT `course_types` FOREIGN KEY (`courses_type`) REFERENCES `courses_type` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `course_users` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (6,11,'ΠΛΗ10',1,'Εισαγωγή στην πληροφορική',1,5),(9,17,'ΠΛΗ11',1,'Τεχνολογία λογισμικού 1',1,5),(10,12,'ΠΛΗ12',1,'Μαθηματικά 2',1,5),(11,12,'ΠΛΗ20',1,'Μαθηματικά 2',2,5),(12,17,'ΠΛΗ21',1,'Ψηφιακά συστήματα',2,5),(13,17,'ΠΛΗ22',1,'Δίκτυα',2,5),(14,18,'ΠΛΗ30',1,'Θεμελιώσεις Επιστήμης Η/Υ',2,5),(15,18,'ΠΛΗ31',1,'Τεχνιτή Νοημοσύνη',2,5),(16,11,'ΠΛΗ23',2,'Τηλεματική, Διαδίκτυα & Κοινωνία',3,5),(17,17,'ΠΛΗ37',2,'Εκπαίδευση πληροφορικής',3,5);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_type`
--

DROP TABLE IF EXISTS `courses_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_type`
--

LOCK TABLES `courses_type` WRITE;
/*!40000 ALTER TABLE `courses_type` DISABLE KEYS */;
INSERT INTO `courses_type` VALUES (1,'Βασικό'),(2,'Επιλογής');
/*!40000 ALTER TABLE `courses_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrolements`
--

DROP TABLE IF EXISTS `enrolements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrolements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users` int(11) NOT NULL,
  `courses` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `enroled_status` (`status`),
  KEY `enroled_courses` (`courses`),
  KEY `enroled_users` (`users`),
  CONSTRAINT `enroled_courses` FOREIGN KEY (`courses`) REFERENCES `courses` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `enroled_status` FOREIGN KEY (`status`) REFERENCES `status` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `enroled_users` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrolements`
--

LOCK TABLES `enrolements` WRITE;
/*!40000 ALTER TABLE `enrolements` DISABLE KEYS */;
INSERT INTO `enrolements` VALUES (62,10,6,1,6,'2021-04-13 20:05:38'),(63,10,9,1,5,'2021-04-13 20:05:40'),(64,10,10,1,7,'2021-04-13 20:05:42'),(65,9,6,1,9,'2021-04-13 20:05:56'),(66,9,10,1,10,'2021-04-13 20:05:59'),(67,13,6,1,5,'2021-04-13 20:06:50'),(68,14,10,1,8,'2021-04-13 20:07:13'),(69,14,9,1,7,'2021-04-13 20:07:15'),(70,19,9,1,1,'2021-04-13 20:07:34'),(71,20,6,1,7,'2021-04-13 20:07:54'),(72,20,9,1,8,'2021-04-13 20:07:56'),(73,10,14,1,9,'2021-04-13 20:19:24'),(75,9,9,1,8,'2021-04-13 20:20:10'),(76,9,14,1,10,'2021-04-13 20:20:12'),(77,9,11,1,9,'2021-04-13 20:20:14'),(78,9,15,1,6,'2021-04-13 20:20:16'),(79,14,6,1,5,'2021-04-13 20:20:37'),(80,14,11,1,9,'2021-04-13 20:20:39'),(81,13,9,1,6,'2021-04-13 20:20:55'),(82,14,15,1,5,'2021-04-14 17:58:52'),(83,14,12,1,6,'2021-04-14 17:58:56');
/*!40000 ALTER TABLE `enrolements` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `role` VALUES (1,'Διαχειριστές'),(2,'Διδάσκοντες'),(3,'Φοιτητές');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semester` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `semester_users` (`users`),
  CONSTRAINT `semester_users` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (19,9,1),(20,10,1),(21,13,1),(22,19,1),(23,20,1),(24,14,1),(25,9,2),(26,10,2),(27,13,2),(28,14,2);
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Εγγεγραμένος'),(2,'Μη Εγγεγραμένος'),(3,'Προβιβάσιμος');
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
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` int(11) NOT NULL,
  `mobilephone` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  `am` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role`),
  CONSTRAINT `user_roles` FOREIGN KEY (`role`) REFERENCES `role` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (9,'Δεσποινα','Νεραϊδούλα','despoina@test.gr','12345678',3,'2107798556','Δωδεκανήσου 15','1979-10-10',NULL,'0001'),(10,'Αναμπέλα','Ανατολίτσα','anatoli@test.gr','56987558',3,'6988569845','Κορυτσάς 33',NULL,NULL,'0002'),(11,'Δημήτρης','Βεργάδος','vergados.dimitrios@ac.eap.gr','12345678a',2,'2610367338','dddd',NULL,NULL,'0003'),(12,'Παναγιώτης','Καρκαζής','karkazis.panagiotis@ac.eap.gr','12345678a',2,'2610367320','dsfsf','2020-01-19',NULL,'0004'),(13,'Δημήτρης','Αλεξανδρίδης','dimitris@gmail.com','3358j9225',3,'6988587542','',NULL,NULL,'0005'),(14,'Νικόλαος','Ψαλτάκης','nikpsal@hotmail.com','22585k458',3,'6522584526','',NULL,NULL,'0005'),(15,'Γραματέας 1','lastname1','gramateas@hotmail.com','1234|5678',1,'5566856652',NULL,NULL,NULL,'0006'),(16,'Γραματέας 2','lastname2','gramateas2@email.com','3365g8545',1,'4452696852',NULL,NULL,NULL,'0007'),(17,'Καθηγητής 1','Καθηγητής 1','kathigitis@eap.gr','dsffewr58',2,'5585566685','',NULL,NULL,'0008'),(18,'Καθηγητής 2','Καθηγητής 2','adsad@eap.gr','dga8dg5sd',2,NULL,NULL,NULL,NULL,'0009'),(19,'Φοιτητής 1','Φοιτητής 1','fititis@eap.gr','85548jjdf',3,'','',NULL,NULL,'0010'),(20,'Φοιτητής 2','Φοιτητής 2','fititi2s@eap.gr','sdf4584r',3,'','',NULL,NULL,'0011'),(28,'Ευθύμιος','Θεοτοκάτος','themhz@gmail.com','12345678a',1,'6987556486','',NULL,'2021-03-17','0012');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-30  5:52:06

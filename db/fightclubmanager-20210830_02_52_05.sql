-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: fightclubmanager
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
-- Table structure for table `fcm_fightarts`
--

DROP TABLE IF EXISTS `fcm_fightarts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_fightarts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fightart` varchar(45) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_fightarts`
--

LOCK TABLES `fcm_fightarts` WRITE;
/*!40000 ALTER TABLE `fcm_fightarts` DISABLE KEYS */;
INSERT INTO `fcm_fightarts` VALUES (1,'Πυγμαχία','2014-07-23 11:13:40'),(2,'Kick Boxing','2014-07-23 11:13:40'),(3,'Muay Thai','2014-07-23 11:13:40'),(6,'Krav Maga','2015-09-30 17:32:04');
/*!40000 ALTER TABLE `fcm_fightarts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_fightclubs`
--

DROP TABLE IF EXISTS `fcm_fightclubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_fightclubs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_fightclubs`
--

LOCK TABLES `fcm_fightclubs` WRITE;
/*!40000 ALTER TABLE `fcm_fightclubs` DISABLE KEYS */;
INSERT INTO `fcm_fightclubs` VALUES (1,'Theotokatos FC',0,NULL,NULL,NULL),(3,'Theotokatos FC 2',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `fcm_fightclubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_fightclubs_emails`
--

DROP TABLE IF EXISTS `fcm_fightclubs_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_fightclubs_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `fightclub_id` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_fightclubs_emails`
--

LOCK TABLES `fcm_fightclubs_emails` WRITE;
/*!40000 ALTER TABLE `fcm_fightclubs_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_fightclubs_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_fightclubs_groups`
--

DROP TABLE IF EXISTS `fcm_fightclubs_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_fightclubs_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fightclub_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_fightclubs_groups`
--

LOCK TABLES `fcm_fightclubs_groups` WRITE;
/*!40000 ALTER TABLE `fcm_fightclubs_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_fightclubs_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_fightclubs_phones`
--

DROP TABLE IF EXISTS `fcm_fightclubs_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_fightclubs_phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(45) DEFAULT NULL,
  `fightclub_id` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_fightclubs_phones`
--

LOCK TABLES `fcm_fightclubs_phones` WRITE;
/*!40000 ALTER TABLE `fcm_fightclubs_phones` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_fightclubs_phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_groups`
--

DROP TABLE IF EXISTS `fcm_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) DEFAULT NULL,
  `fightart_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `maxstudents` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_groups`
--

LOCK TABLES `fcm_groups` WRITE;
/*!40000 ALTER TABLE `fcm_groups` DISABLE KEYS */;
INSERT INTO `fcm_groups` VALUES (3,'Μάκης Θεοτοκάτος ',1,2,'2015-09-23 18:41:13',15),(4,'Παναγιώτης',3,4,'2015-09-23 19:27:25',15),(5,'Tsapaliarhs',6,3,'2015-09-23 19:29:35',15),(7,'Ευθύμιος Θεοτοκάτος',1,5,'2015-09-23 20:45:04',20),(8,'Γκάγκο Kick Boxing',2,7,'2016-05-04 22:32:30',15);
/*!40000 ALTER TABLE `fcm_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_groups_schedule`
--

DROP TABLE IF EXISTS `fcm_groups_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_groups_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_groups_schedule`
--

LOCK TABLES `fcm_groups_schedule` WRITE;
/*!40000 ALTER TABLE `fcm_groups_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_groups_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_groups_students`
--

DROP TABLE IF EXISTS `fcm_groups_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_groups_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_groups_students`
--

LOCK TABLES `fcm_groups_students` WRITE;
/*!40000 ALTER TABLE `fcm_groups_students` DISABLE KEYS */;
INSERT INTO `fcm_groups_students` VALUES (51,3,3,'2016-05-04 17:26:01'),(52,4,3,'2016-05-04 17:27:16'),(60,7,3,'2016-05-04 19:19:05'),(61,7,7,'2016-05-04 19:19:05'),(62,8,3,'2016-05-04 19:21:23'),(63,6,3,'2016-05-04 19:24:35'),(65,9,3,'2016-05-04 19:44:48'),(66,9,4,'2016-05-04 19:44:48'),(67,10,3,'2016-05-04 19:46:34'),(68,10,7,'2016-05-04 19:46:34'),(69,11,3,'2016-05-04 21:12:54'),(70,11,7,'2016-05-04 21:12:54'),(71,12,3,'2016-05-04 22:31:22'),(72,12,7,'2016-05-04 22:31:22'),(73,13,3,'2016-05-05 17:53:02'),(74,13,7,'2016-05-05 17:53:02'),(75,14,3,'2016-05-05 17:54:36'),(76,14,7,'2016-05-05 17:54:36'),(77,15,3,'2016-05-05 20:58:39'),(78,15,7,'2016-05-05 20:58:39'),(79,16,3,'2016-05-06 20:36:17'),(80,16,7,'2016-05-06 20:36:17'),(81,17,3,'2016-05-06 22:12:45'),(82,17,7,'2016-05-06 22:12:45'),(83,18,3,'2016-05-06 22:15:27'),(84,18,7,'2016-05-06 22:15:27'),(85,19,3,'2016-05-07 17:02:11'),(86,19,7,'2016-05-07 17:02:11'),(87,5,3,'2016-05-07 18:08:56'),(88,20,3,'2016-05-09 18:02:16'),(89,20,7,'2016-05-09 18:02:16'),(92,22,5,'2016-05-09 22:22:02'),(93,23,5,'2016-05-09 22:22:51'),(94,24,5,'2016-05-09 22:29:16'),(95,25,5,'2016-05-09 22:29:48'),(96,26,5,'2016-05-09 22:30:12'),(97,27,5,'2016-05-09 22:30:42'),(98,28,5,'2016-05-09 22:31:11'),(99,29,5,'2016-05-09 22:32:03'),(100,30,5,'2016-05-09 22:32:33'),(101,31,8,'2016-05-10 18:14:33'),(102,32,3,'2016-05-11 19:16:49'),(103,32,7,'2016-05-11 19:16:49'),(104,33,3,'2016-05-11 19:21:07'),(105,33,7,'2016-05-11 19:21:07'),(106,34,3,'2016-05-11 20:48:44'),(107,34,7,'2016-05-11 20:48:44'),(110,35,5,'2016-05-12 22:24:24'),(111,36,5,'2016-05-12 22:24:58'),(112,37,5,'2016-05-12 22:25:31'),(113,38,3,'2016-05-16 17:54:24'),(114,38,7,'2016-05-16 17:54:24'),(115,39,5,'2016-05-16 20:05:24'),(116,40,5,'2016-05-16 20:06:18'),(117,41,5,'2016-05-16 20:07:07'),(118,42,5,'2016-05-16 22:31:06'),(119,43,5,'2016-05-20 17:43:56'),(120,44,5,'2016-05-20 17:45:09'),(121,2,3,'2016-05-23 21:05:50'),(122,45,7,'2016-05-26 18:12:43'),(123,46,3,'2016-05-27 22:15:38'),(124,46,7,'2016-05-27 22:15:38'),(125,47,3,'2016-06-08 20:13:49'),(126,48,3,'2016-06-08 20:16:05'),(127,49,3,'2016-06-08 20:17:25'),(128,50,3,'2016-06-08 20:20:49'),(129,51,3,'2016-07-11 19:37:43'),(130,51,7,'2016-07-11 19:37:43'),(131,52,3,'2016-07-11 19:45:30'),(132,21,3,'2016-09-05 18:02:03'),(133,21,7,'2016-09-05 18:02:03'),(135,53,8,'2016-09-05 19:43:29');
/*!40000 ALTER TABLE `fcm_groups_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_months`
--

DROP TABLE IF EXISTS `fcm_months`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_months` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_months`
--

LOCK TABLES `fcm_months` WRITE;
/*!40000 ALTER TABLE `fcm_months` DISABLE KEYS */;
INSERT INTO `fcm_months` VALUES (1,'January'),(2,'February'),(3,'March'),(4,'April'),(5,'May'),(6,'June'),(7,'July'),(8,'August'),(9,'September'),(10,'October'),(11,'November'),(12,'December');
/*!40000 ALTER TABLE `fcm_months` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_services`
--

DROP TABLE IF EXISTS `fcm_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `months` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_services`
--

LOCK TABLES `fcm_services` WRITE;
/*!40000 ALTER TABLE `fcm_services` DISABLE KEYS */;
INSERT INTO `fcm_services` VALUES (1,'Monthly',1),(2,'Three months',3),(3,'Six months',6),(4,'Annual',12),(5,'Daily',0);
/*!40000 ALTER TABLE `fcm_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_student_payments`
--

DROP TABLE IF EXISTS `fcm_student_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_student_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `paymentdate` datetime DEFAULT NULL,
  `payment_for_month` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_student_payments`
--

LOCK TABLES `fcm_student_payments` WRITE;
/*!40000 ALTER TABLE `fcm_student_payments` DISABLE KEYS */;
INSERT INTO `fcm_student_payments` VALUES (1,6,1,40,'0000-00-00 00:00:00',4,'2016-05-04 19:10:22'),(2,8,1,40,'0000-00-00 00:00:00',4,'2016-05-04 19:19:42'),(3,7,1,60,'0000-00-00 00:00:00',4,'2016-05-04 19:29:38'),(4,14,1,40,'0000-00-00 00:00:00',5,'2016-05-05 17:56:41'),(5,15,1,50,'0000-00-00 00:00:00',5,'2016-05-05 20:59:14'),(6,18,1,40,'0000-00-00 00:00:00',5,'2016-05-06 22:16:34'),(7,19,1,50,'0000-00-00 00:00:00',5,'2016-05-07 17:03:15'),(8,20,1,40,'0000-00-00 00:00:00',5,'2016-05-09 18:02:43'),(9,21,1,40,'0000-00-00 00:00:00',5,'2016-05-09 18:08:29'),(10,31,1,40,'0000-00-00 00:00:00',5,'2016-05-10 18:15:40'),(11,32,1,40,'0000-00-00 00:00:00',5,'2016-05-11 19:17:09'),(12,33,1,40,'0000-00-00 00:00:00',6,'2016-05-11 19:21:28'),(13,36,1,50,'0000-00-00 00:00:00',5,'2016-05-12 22:26:22'),(14,37,1,40,'0000-00-00 00:00:00',5,'2016-05-12 22:26:34'),(15,35,1,40,'0000-00-00 00:00:00',5,'2016-05-12 22:26:46'),(16,12,1,40,'0000-00-00 00:00:00',4,'2016-05-13 22:19:13'),(17,13,1,40,'0000-00-00 00:00:00',5,'2016-05-16 17:53:11'),(18,38,1,40,'0000-00-00 00:00:00',5,'2016-05-16 17:54:50'),(19,43,1,40,'0000-00-00 00:00:00',5,'2016-05-20 17:46:25'),(20,44,1,40,'0000-00-00 00:00:00',5,'2016-05-20 17:46:35'),(21,2,1,40,'0000-00-00 00:00:00',6,'2016-05-23 21:06:32'),(22,19,1,50,'0000-00-00 00:00:00',6,'2016-05-24 17:51:19'),(23,45,5,5,'0000-00-00 00:00:00',5,'2016-05-26 18:13:13'),(24,45,5,5,'0000-00-00 00:00:00',5,'2016-05-27 18:10:13'),(25,46,1,40,'0000-00-00 00:00:00',6,'2016-05-27 22:15:57'),(26,13,1,40,'0000-00-00 00:00:00',6,'2016-06-08 20:14:28'),(27,47,1,40,'0000-00-00 00:00:00',6,'2016-06-08 20:14:59'),(28,34,1,40,'0000-00-00 00:00:00',6,'2016-06-08 20:15:17'),(29,48,1,40,'0000-00-00 00:00:00',1,'2016-06-08 20:16:32'),(30,18,1,40,'0000-00-00 00:00:00',6,'2016-06-08 20:18:07'),(31,11,1,40,'0000-00-00 00:00:00',5,'2016-06-08 20:18:27'),(32,50,1,40,'0000-00-00 00:00:00',6,'2016-06-08 20:21:21'),(33,45,1,5,'0000-00-00 00:00:00',6,'2016-06-08 20:22:26'),(34,6,1,40,'0000-00-00 00:00:00',6,'2016-06-08 20:23:14'),(35,17,1,40,'0000-00-00 00:00:00',6,'2016-07-11 19:36:28'),(36,51,1,40,'0000-00-00 00:00:00',6,'2016-07-11 19:38:14'),(37,31,1,40,'0000-00-00 00:00:00',6,'2016-07-11 19:39:46'),(38,52,1,40,'0000-00-00 00:00:00',6,'2016-07-11 19:46:07'),(39,48,1,40,'0000-00-00 00:00:00',6,'2016-07-11 19:46:51'),(40,49,1,40,'0000-00-00 00:00:00',7,'2016-07-21 21:40:00'),(41,21,2,120,'0000-00-00 00:00:00',9,'2016-09-05 18:02:55');
/*!40000 ALTER TABLE `fcm_student_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_students`
--

DROP TABLE IF EXISTS `fcm_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(300) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_students`
--

LOCK TABLES `fcm_students` WRITE;
/*!40000 ALTER TABLE `fcm_students` DISABLE KEYS */;
INSERT INTO `fcm_students` VALUES (2,'Πέτκος Βαγγέλης','0000-00-00','Ζωγράφου','','male','6948892171','2016-05-04 17:18:58','vagpet@gmail.com'),(4,'Τρορής Γιώργος','0000-00-00','','','male','','2016-05-04 17:27:00',''),(5,'Κωνσταντίνος Zώτος','1984-07-07','','','male','6936997469','2016-05-04 17:30:10','zwtosk@hotmail.gr'),(6,'Άρης Οικονόμου','1979-07-24','','','male','6957200403','2016-05-04 17:56:40','aristeidis.economou@gmail.com'),(7,'Ιωάννης Παρμάκης','0000-00-00','','','male','6983509335','2016-05-04 19:15:19','salonikios20@yahoo.gr'),(8,'Δημήτρης Ζαρμπούρης','1981-05-26','','','male','6945328743','2016-05-04 19:18:00','meskalino29@yahoo.gr'),(10,'Γιώργος Πρόφης','0000-00-00','','','male','6992825368','2016-05-04 19:46:34','profis.ilias@gmail.com'),(11,'Μάκης Αναστασίου','0000-00-00','','','male','6974506064','2016-05-04 21:12:54','eythimiosanastasiou@yahoo.com'),(12,'Φωτονιάτας Γιάννης','0000-00-00','','','male','6944557778','2016-05-04 22:31:22','fotoniatas@yahoo.com'),(13,'Άγγελος Θωμάς','1993-02-22','','','male','6983078518','2016-05-05 17:53:02',''),(14,'Ευάγγελος Τσώλης','1985-06-17','','','male','6939268146','2016-05-05 17:54:36','legionaire215@hotmail.com'),(15,'Τσίλιας Πάρης','1981-06-19','','','male','6974303530','2016-05-05 20:58:39','parinhoo@yahoo.gr'),(16,'Άγαπη Βασιλική Ζαρμακούπη','1995-03-30','','','female','6982793323','2016-05-06 20:36:17','zarmiagapi@gmail.com'),(17,'Μάριος Αναστασίου','1989-05-14','','','male','6948213635','2016-05-06 22:12:45','mariosanastasioy90@yahoo.com'),(18,'Παναγιώτης Αρχοντάκης','1991-08-19','','','male','6947283291','2016-05-06 22:15:27','panarch1991@gmail.com'),(19,'Ιώαννης Μπεκιάρης','1985-01-26','','','male','6974580758','2016-05-07 17:02:10','bekiarisgiannis85@gmail.com'),(20,'Κλεάνθος Μηχάλης','1993-10-19','','','male','6944040870','2016-05-09 18:02:15','mikyyg9@gmail.com'),(21,'Θωμάς κωσταρόπουλος','1995-04-13','','','male','6978687068','2016-05-09 18:07:53','stud3132025@aua.gr'),(22,'Ανδριόπουλος Γιώργος','0000-00-00','','','male','','2016-05-09 22:22:02',''),(23,'Σταθοπούλου Μάγδα','0000-00-00','','','female','','2016-05-09 22:22:51',''),(24,'Γεργόπουλος Θοδωρής','0000-00-00','','','male','','2016-05-09 22:29:16',''),(25,'Ελένη Ζαγουράκη','0000-00-00','','','male','','2016-05-09 22:29:48',''),(26,'Μαρία Μουλά','0000-00-00','','','male','','2016-05-09 22:30:12',''),(27,'Λάμπρου Γεώργος','0000-00-00','','','male','','2016-05-09 22:30:42',''),(28,'Νικολέτα Μισιάν','0000-00-00','','','male','','2016-05-09 22:31:11',''),(29,'Καφάσης Θεόδορος','0000-00-00','','','male','','2016-05-09 22:32:03',''),(30,'Φίλιπος Αλτανόπουλος','0000-00-00','','','male','','2016-05-09 22:32:33',''),(31,'Γιάννης Δράκος','1982-10-07','','','male','2107621410','2016-05-10 18:14:33','john_drakos@hotmail.com'),(32,'Βραχνός Δημήτρης','0000-00-00','','','male','','2016-05-11 19:16:48',''),(33,'Κουνατίδης Χάρης','1994-10-06','','','male','6983972170','2016-05-11 19:21:07','xarisxaris1994@yahoo.gr'),(34,'Χρήστος Μπαλάφας','1988-07-27','','','male','6980773615','2016-05-11 20:48:44','chris.balafas.1@gmail.com'),(35,'Κότση Αλεξάνδρα','0000-00-00','','','male','','2016-05-12 22:24:24',''),(36,'Τσιρογιάννης Παναγιώτης','0000-00-00','','','male','','2016-05-12 22:24:58',''),(37,'Σόλονας Πετρακόπουλος','0000-00-00','','','male','','2016-05-12 22:25:30',''),(38,'Ιωαννου Αντώνιος','1991-11-19','','','male','6971612966','2016-05-16 17:54:24',''),(39,'Έυη Παγωνη','0000-00-00','','','female','','2016-05-16 20:05:24',''),(40,'Διονύσης Παπαζής','0000-00-00','','','male','','2016-05-16 20:06:18',''),(41,'Λάμπρος Οικονομόπουλος','0000-00-00','','','male','','2016-05-16 20:07:07',''),(42,'Γιαννης Ανδρολιακάκης','0000-00-00','','','male','','2016-05-16 22:31:06',''),(43,'Νίκος Κουρέας','0000-00-00','','','male','','2016-05-20 17:43:55',''),(44,'Ντένις Φουρτζιου','0000-00-00','','','male','','2016-05-20 17:45:09',''),(45,'Κωνσταντίνος Χριστοφής','1991-03-08','','','male','6994765767','2016-05-26 18:12:42','konsand@sytanet.com.cy'),(46,'Κανόπουλος Χρίστος','1967-09-04','','','male','6948111585','2016-05-27 22:15:38','ckanopoulos@hotmail.com'),(47,'Σωτίρης Λαλάζης','0000-00-00','','','male','','2016-06-08 20:13:49',''),(48,'Νάκας','0000-00-00','','','male','','2016-06-08 20:16:05',''),(49,'Ζώτος Κωνσταντίντος','0000-00-00','','','male','','2016-06-08 20:17:25',''),(50,'Τσόλης Παναγιώτης','0000-00-00','','','male','','2016-06-08 20:20:49',''),(51,'Κωσταρόπουλος Σταύρος','0000-00-00','','','male','','2016-07-11 19:37:43',''),(52,'Παπαζής Σωτήρης','0000-00-00','','','male','','2016-07-11 19:45:30',''),(53,'Σφυρή Αλεξάνδρα','0000-00-00','','','female','6973061032','2016-09-05 19:43:13','hammeraki@gmail.com');
/*!40000 ALTER TABLE `fcm_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_students_emails`
--

DROP TABLE IF EXISTS `fcm_students_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_students_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_students_emails`
--

LOCK TABLES `fcm_students_emails` WRITE;
/*!40000 ALTER TABLE `fcm_students_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_students_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_students_payments_schedule`
--

DROP TABLE IF EXISTS `fcm_students_payments_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_students_payments_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `paymentdate` datetime DEFAULT NULL,
  `completed` bit(1) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_students_payments_schedule`
--

LOCK TABLES `fcm_students_payments_schedule` WRITE;
/*!40000 ALTER TABLE `fcm_students_payments_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_students_payments_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_students_phones`
--

DROP TABLE IF EXISTS `fcm_students_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_students_phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(45) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_students_phones`
--

LOCK TABLES `fcm_students_phones` WRITE;
/*!40000 ALTER TABLE `fcm_students_phones` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_students_phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_teachers`
--

DROP TABLE IF EXISTS `fcm_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(200) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_teachers`
--

LOCK TABLES `fcm_teachers` WRITE;
/*!40000 ALTER TABLE `fcm_teachers` DISABLE KEYS */;
INSERT INTO `fcm_teachers` VALUES (2,'Makhs Theotokatos','0000-00-00 00:00:00','Athens','','','',NULL),(3,'Tsapaliarhs Giorgos','0000-00-00 00:00:00','Athens','Marinidou 23','tsapaliarhs@yahoo.com','',NULL),(4,'Panagiwths','0000-00-00 00:00:00','','','','2107798659',NULL),(5,'Eythymios Theotokatos','0000-00-00 00:00:00','Greece','Dodekanisou 18','themhz@gmail.com','2107798659','2015-09-29 23:27:09'),(6,'Ρεζά','0000-00-00 00:00:00','','','info@reza.com','693798558','2015-10-05 12:16:37'),(7,'Γκάγκο','0000-00-00 00:00:00','','','','6984057388','2016-05-04 20:26:09');
/*!40000 ALTER TABLE `fcm_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_users`
--

DROP TABLE IF EXISTS `fcm_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_users`
--

LOCK TABLES `fcm_users` WRITE;
/*!40000 ALTER TABLE `fcm_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-30  5:52:07

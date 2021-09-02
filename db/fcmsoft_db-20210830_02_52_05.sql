-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: fcmsoft_db
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
-- Table structure for table `fcm_account_unlock_requests`
--

DROP TABLE IF EXISTS `fcm_account_unlock_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_account_unlock_requests` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `token` varchar(450) DEFAULT NULL,
  `used` tinyint(1) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `expdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_account_unlock_requests_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_account_unlock_requests` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_account_unlock_requests_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_account_unlock_requests`
--

LOCK TABLES `fcm_account_unlock_requests` WRITE;
/*!40000 ALTER TABLE `fcm_account_unlock_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_account_unlock_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_accounts`
--

DROP TABLE IF EXISTS `fcm_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `email` varchar(89) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `time_zone` varchar(100) DEFAULT NULL,
  `confirmed` int(11) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `regtoken` varchar(450) DEFAULT NULL,
  `maxstudents` int(11) DEFAULT NULL,
  `paypal_client_id` varchar(1024) DEFAULT NULL,
  `paypal_secret` varchar(1024) DEFAULT NULL,
  `facebook_url` varchar(1024) DEFAULT NULL,
  `twitter_url` varchar(1024) DEFAULT NULL,
  `zip_code` varchar(45) DEFAULT NULL,
  `paypalme_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_accounts`
--

LOCK TABLES `fcm_accounts` WRITE;
/*!40000 ALTER TABLE `fcm_accounts` DISABLE KEYS */;
INSERT INTO `fcm_accounts` VALUES (1,'themhz','$2y$09$oC2x5I9x8HWhA4UHi5TM9O9leTSnDDMjFFnLrMqi6JPmWtR/4Z0PS','Themis Theotokatos','themhz@gmail.com','6987556486','Europe/Athens',1,'GR','Athens','Dodekanisou 15','2016-10-31 00:00:00','el_GR','EUR',23,NULL,200,'AcWN4VWL2HeS1QTjbcaWDiEShs5q5AjMbt0lE58xg3MgLn3OlLq5iNb7EoiEhm_3irKgjp0R_ycKkOao','EFstd4vUr5ySOr_dD1czMQFzJrv4Azh3QB7Ft7p-26txvWBvxIL1LgomUcchgL4LY--UInn6lB7hibb-','https://www.facebook.com/theotokatosfc/','https://twitter.com/miketheotokatos','16452','paypal.me/MTheotokatos'),(91,'test1','$2y$09$tLwrCgGMjdd39d5Z2CLQ8OZtR0e3c7qyCJw/fpvP7ZtM0rrCKXqmq','Themis Theotokatos','themhz@yahoo.com','','Europe/Athens',0,'','','','2019-03-14 21:32:45',NULL,NULL,NULL,'dd4f1565d557b0887907ec3388f943de9d468c9145f5c19952b3a532bb8c110d',25,NULL,NULL,NULL,NULL,NULL,NULL),(92,'Pollux','$2y$09$knYzVcZCRn43NRIcsyeeLOENP5NEDe11b4299SHvemevP3rl/jqGW','Pollux vouvali','mindpiece00@gmail.com','','Europe/Athens',0,'','','','2019-04-05 15:33:17',NULL,NULL,NULL,'b99f45cf50e4c8b85cf268a5408dd5eebcc4f506cecea70e2bf2e4b069421cac',25,NULL,NULL,NULL,NULL,NULL,NULL),(93,'polluxaki','$2y$09$j2Jwm9s1svro9piQUKhkBenzL8H8pG.LfYyGF16zU12xBfLzCcGsm','Vaso','vassiliki.apost@gmail.com','','Europe/Athens',1,'','','','2019-09-10 14:56:58','el_GR','EUR',NULL,'36d14886d74397930dd63165768ffb13e0f9862b6b64801165e9e9bf8b8199cd',25,NULL,NULL,NULL,NULL,NULL,NULL),(94,'polux','$2y$09$laZO32SbWBSbFY5GyqUDUuOSHSNdSisGEDhNara.B6.jzOIZZNLte','ΒΑΣΙΛΙΚΗ ΑΠΟΣΤΟΛΙΔΟΥ','vaso.apostolidou@gmail.com','','Europe/Athens',1,'','','','2020-03-07 09:29:35',NULL,NULL,NULL,'454564832707232afb7e7f61f98bfebc9a115894e70565ca1687c1d3bbe7f497',25,NULL,NULL,NULL,NULL,NULL,NULL),(95,NULL,'$2y$09$lg82HsOS5RuIdcyTj0RzMuR8BkHMrgapI.c07pACbmeDVLhKfPdna',NULL,NULL,'',NULL,0,'','','','2020-06-10 04:15:10',NULL,NULL,NULL,'91f0a7a58c206c13608aaa058578f83657ab6c5634ec1f6810df772e7d061dab',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `fcm_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_attendance`
--

DROP TABLE IF EXISTS `fcm_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_attendance_fcm_accounts` (`account_id`),
  KEY `FK_fcm_attendance_fcm_students` (`student_id`),
  KEY `FK_fcm_attendance_fcm_groups` (`group_id`),
  CONSTRAINT `FK_fcm_attendance` FOREIGN KEY (`student_id`) REFERENCES `fcm_students` (`id`),
  CONSTRAINT `FK_fcm_attendance_account` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_attendance_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_attendance_fcm_groups` FOREIGN KEY (`group_id`) REFERENCES `fcm_groups` (`id`),
  CONSTRAINT `FK_fcm_attendance_fcm_students` FOREIGN KEY (`student_id`) REFERENCES `fcm_students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_attendance`
--

LOCK TABLES `fcm_attendance` WRITE;
/*!40000 ALTER TABLE `fcm_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_blog`
--

DROP TABLE IF EXISTS `fcm_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(55) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `pagetype` int(11) DEFAULT NULL,
  `metadescr` varchar(140) DEFAULT NULL,
  `furl` varchar(45) DEFAULT NULL,
  `active` smallint(1) NOT NULL,
  `account_id` int(11) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_blog_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_blog_account` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_blog_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_blog`
--

LOCK TABLES `fcm_blog` WRITE;
/*!40000 ALTER TABLE `fcm_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_blog_categories`
--

DROP TABLE IF EXISTS `fcm_blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(55) DEFAULT NULL,
  `title` varchar(140) DEFAULT NULL,
  `active` smallint(1) NOT NULL,
  `account_id` int(11) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_blog_categories_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_blog_categories_account` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_blog_categories_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_blog_categories`
--

LOCK TABLES `fcm_blog_categories` WRITE;
/*!40000 ALTER TABLE `fcm_blog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

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
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_fightarts_categories_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_fightarts_categories_account` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_fightarts_categories_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_fightarts`
--

LOCK TABLES `fcm_fightarts` WRITE;
/*!40000 ALTER TABLE `fcm_fightarts` DISABLE KEYS */;
INSERT INTO `fcm_fightarts` VALUES (1,'Πυγμαχία','2014-07-23 11:13:40',1),(2,'Kick Boxing','2014-07-23 11:13:40',1),(3,'Muay Thai','2014-07-23 11:13:40',1),(6,'Krav Maga','2015-09-30 17:32:04',1);
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
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_fightclubs_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_fightclubs_account` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_fightclubs_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_fightclubs`
--

LOCK TABLES `fcm_fightclubs` WRITE;
/*!40000 ALTER TABLE `fcm_fightclubs` DISABLE KEYS */;
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
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_fightclubs_emails_fcm_accounts` (`account_id`),
  KEY `FK_fcm_fightclubs_emails` (`fightclub_id`),
  CONSTRAINT `FK_fcm_fightclubs_emails` FOREIGN KEY (`fightclub_id`) REFERENCES `fcm_fightclubs` (`id`),
  CONSTRAINT `FK_fcm_fightclubs_emails_account` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_fightclubs_emails_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
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
-- Table structure for table `fcm_fightclubs_expenses`
--

DROP TABLE IF EXISTS `fcm_fightclubs_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_fightclubs_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` float DEFAULT NULL,
  `descr` varchar(200) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `fightclub_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_fightclubs_expenses_fcm_accounts` (`account_id`),
  KEY `FK_fcm_fightclubs_expenses` (`fightclub_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_fightclubs_expenses`
--

LOCK TABLES `fcm_fightclubs_expenses` WRITE;
/*!40000 ALTER TABLE `fcm_fightclubs_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_fightclubs_expenses` ENABLE KEYS */;
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
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_fightclubs_groups_fcm_accounts` (`account_id`),
  KEY `FK_fcm_fightclubs_groups_fcm_groups` (`group_id`),
  KEY `FK_fcm_fightclubs_groups` (`fightclub_id`),
  CONSTRAINT `FK_fcm_fightclubs_groups` FOREIGN KEY (`fightclub_id`) REFERENCES `fcm_fightclubs` (`id`),
  CONSTRAINT `FK_fcm_fightclubs_groups_account` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_fightclubs_groups_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_fightclubs_groups_fcm_groups` FOREIGN KEY (`group_id`) REFERENCES `fcm_groups` (`id`)
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
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_fightclubs_phones_fcm_accounts` (`account_id`),
  KEY `FK_fcm_fightclubs_phones` (`fightclub_id`),
  CONSTRAINT `FK_fcm_fightclubs_phones` FOREIGN KEY (`fightclub_id`) REFERENCES `fcm_fightclubs` (`id`),
  CONSTRAINT `FK_fcm_fightclubs_phones_account` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_fightclubs_phones_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
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
  `fightart_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  `maxstudents` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `imageName` varchar(500) DEFAULT NULL,
  `grouptext` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_groups_fcm_accounts` (`account_id`),
  KEY `FK_fcm_groups_fcm_fightarts` (`fightart_id`),
  KEY `FK_fcm_groups_fcm_teachers` (`teacher_id`),
  CONSTRAINT `FK_fcm_groups_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_groups_fcm_fightarts` FOREIGN KEY (`fightart_id`) REFERENCES `fcm_fightarts` (`id`),
  CONSTRAINT `FK_fcm_groups_fcm_teachers` FOREIGN KEY (`teacher_id`) REFERENCES `fcm_teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_groups`
--

LOCK TABLES `fcm_groups` WRITE;
/*!40000 ALTER TABLE `fcm_groups` DISABLE KEYS */;
INSERT INTO `fcm_groups` VALUES (3,'Μάκης Πυγμαχία Προχωρημένοι',1,2,'2015-09-23 18:41:13',15,1,'http://localhost/fightclubmanager_v2/accountfiles/ac_1/classes/http://localhost/fightclubmanager_v2/accountfiles/ac_1/classes/WIN_20180528_08_35_21_Pro.jpg','ο Μάκης Θεοτοκάτος, παλαίμαχος πυγμάχος και πρωταθλητής Ελλάδος κατά τα έτη 1970 έως 1978, θα σας βοηθήσει να μάθετε τα μυστικά της πυγμαχίας'),(7,'Πυγμαχική γυμναστική',1,5,'2015-09-23 20:45:04',20,1,'http://localhost/fightclubmanager_v2/accountfiles/ac_1/classes/http://localhost/fightclubmanager_v2/accountfiles/ac_1/classes/http://localhost/fightclubmanager_v2/accountfiles/ac_1/classes/http://localhost/fightclubmanager_v2/accountfiles/ac_1/classes/WIN_20180528_08_35_21_Pro.jpg','Γυμναστική πυγμαχίας'),(8,'Γκάγκο Kick Boxing',2,7,'2016-05-04 22:32:30',20,1,'http://localhost/fightclubmanager_v2/accountfiles/ac_1/classes/WIN_20171016_14_49_26_Pro.jpg','είναι ένα τμήμα kick boxing'),(20,'Krav Maga Mohamed Soimu',6,1,'2019-03-13 16:06:48',3,1,'http://localhost/fightclubmanager_v2/accountfiles/ac_1/classes/#','');
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
  `schedule_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `day` varchar(15) DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `hour_to` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_groups_schedule_fcm_accounts` (`account_id`),
  KEY `FK_fcm_groups_schedule_fcm_groups` (`group_id`),
  CONSTRAINT `FK_fcm_groups_schedule_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_groups_schedule_fcm_groups` FOREIGN KEY (`group_id`) REFERENCES `fcm_groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1491 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_groups_schedule`
--

LOCK TABLES `fcm_groups_schedule` WRITE;
/*!40000 ALTER TABLE `fcm_groups_schedule` DISABLE KEYS */;
INSERT INTO `fcm_groups_schedule` VALUES (1486,1,3,'friday','23:00:00','2020-07-29 08:37:12',1,'00:00:00'),(1487,1,3,'monday','13:30:00','2020-07-29 08:37:12',1,'16:30:00'),(1488,1,3,'thursday','01:00:00','2020-07-29 08:37:12',1,'02:00:00'),(1489,1,7,'tuesday','00:00:00','2020-07-29 08:37:12',1,'02:00:00'),(1490,1,7,'wednesday','22:30:00','2020-07-29 08:37:12',1,'23:30:00');
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
  `group_id` int(11) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_groups_students_fcm_students` (`student_id`),
  KEY `FK_fcm_groups_students_fcm_accounts` (`account_id`),
  KEY `FK_fcm_groups_students_fcm_groups` (`group_id`),
  CONSTRAINT `FK_fcm_groups_fcm_groups_students` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_groups_students` FOREIGN KEY (`student_id`) REFERENCES `fcm_students` (`id`),
  CONSTRAINT `FK_fcm_groups_students_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_groups_students_fcm_groups` FOREIGN KEY (`group_id`) REFERENCES `fcm_groups` (`id`),
  CONSTRAINT `FK_fcm_groups_students_fcm_students` FOREIGN KEY (`student_id`) REFERENCES `fcm_students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_groups_students`
--

LOCK TABLES `fcm_groups_students` WRITE;
/*!40000 ALTER TABLE `fcm_groups_students` DISABLE KEYS */;
INSERT INTO `fcm_groups_students` VALUES (1,132,3,'2019-09-05 17:55:56',1),(2,132,7,'2019-09-05 17:55:56',1),(3,133,3,'2019-09-05 19:11:20',1),(4,133,7,'2019-09-05 19:11:20',1),(5,134,3,'2019-09-10 14:41:53',1),(6,134,7,'2019-09-10 14:41:53',1),(7,135,3,'2019-09-10 14:42:57',1),(8,135,7,'2019-09-10 14:42:57',1),(9,136,3,'2019-09-10 14:43:56',1),(10,136,7,'2019-09-10 14:43:56',1),(12,137,7,'2020-07-31 11:31:41',1);
/*!40000 ALTER TABLE `fcm_groups_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_homepage`
--

DROP TABLE IF EXISTS `fcm_homepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_homepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `regdate` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_homepage_fcm_accounts` (`account_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_homepage`
--

LOCK TABLES `fcm_homepage` WRITE;
/*!40000 ALTER TABLE `fcm_homepage` DISABLE KEYS */;
INSERT INTO `fcm_homepage` VALUES (1,1,'%3Cp%20style%3D%22%22%3E%3Cimg%20src%3D%22http%3A%2F%2Ftheotokatosfc.gr%2Fimages%2Ftheotokatos3.png%22%20border%3D%220%22%20alt%3D%22%22%20width%3D%22235%22%20height%3D%22177%22%20style%3D%22border-color%3A%20rgb(192%2C%20185%2C%20165)%3B%20border-style%3A%20solid%3B%20border-width%3A%201px%3B%20margin%3A%2010px%3B%20float%3A%20left%3B%22%3E%3C%2Fp%3E%3Cdiv%20style%3D%22text-align%3A%20right%3B%22%3E%CE%A3%CF%87%CE%BF%CE%BB%CE%AE%20%CE%BC%CE%B1%CF%82%20%CE%B4%CE%B9%CE%B4%CE%AC%CF%83%CE%BA%CE%BF%CE%BD%CF%84%CE%B1%CE%B9%20%CE%BC%CE%B1%CE%B8%CE%AE%CE%BC%CE%B1%CF%84%CE%B1%20%CF%80%CF%85%CE%B3%CE%BC%CE%B1%CF%87%CE%AF%CE%B1%CF%82%2C%20kickboxing%2C%26nbsp%3BCrossfit%20%CE%BA%CE%B1%CE%B9%20krav%20maga%20%CE%BA%CE%B1%CE%B8%CE%B7%CE%BC%CE%B5%CF%81%CE%B9%CE%BD%CE%AC.%3C%2Fdiv%3E%3Cp%3E%3C%2Fp%3E%3Cp%20style%3D%22text-align%3A%20right%3B%20margin-top%3A%2012px%3B%20margin-bottom%3A%2012px%3B%20padding%3A%200px%3B%22%3E%CE%94%CE%AC%CF%83%CE%BA%CE%B1%CE%BB%CE%BF%CF%82%20%CF%83%CE%B1%CF%82%20%CE%BF%20%CE%9C%CE%AC%CE%BA%CE%B7%CF%82%20%CE%98%CE%B5%CE%BF%CF%84%CE%BF%CE%BA%CE%AC%CF%84%CE%BF%CF%82%2C%20%CF%80%CE%B1%CE%BB%CE%B1%CE%AF%CE%BC%CE%B1%CF%87%CE%BF%CF%82%20%CF%80%CF%85%CE%B3%CE%BC%CE%AC%CF%87%CE%BF%CF%82%20%CE%BA%CE%B1%CE%B9%20%CF%80%CF%81%CF%89%CF%84%CE%B1%CE%B8%CE%BB%CE%B7%CF%84%CE%AE%CF%82%20%CE%95%CE%BB%CE%BB%CE%AC%CE%B4%CE%BF%CF%82%20%CE%BA%CE%B1%CF%84%CE%AC%20%CF%84%CE%B1%20%CE%AD%CF%84%CE%B7%201970%20%CE%AD%CF%89%CF%82%201978.%3C%2Fp%3E%3Cp%20style%3D%22text-align%3A%20right%3B%20margin-top%3A%2012px%3B%20margin-bottom%3A%2012px%3B%20padding%3A%200px%3B%22%3E%CE%97%20%CF%83%CF%87%CE%BF%CE%BB%CE%AE%20%CE%BC%CE%B1%CF%82%20%CF%87%CF%89%CF%81%CE%AF%CE%B6%CE%B5%CF%84%CE%B1%CE%B9%20%CF%83%CE%B5%20%CF%84%CE%BC%CE%AE%CE%BC%CE%B1%CF%84%CE%B1%2C%20%CE%B1%CE%BD%CE%B1%CE%BB%CF%8C%CE%B3%CF%89%CF%82%20%CF%84%CE%BF%20%CE%B5%CF%80%CE%AF%CF%80%CE%B5%CE%B4%CE%BF%20%CF%84%CE%BF%CF%85%20%CE%BC%CE%B1%CE%B8%CE%B7%CF%84%CE%AE%2C%20%CE%BA%CE%B1%CE%B9%20%CE%B4%CE%AF%CE%BD%CE%B5%CF%84%CE%B1%CE%B9%20%CE%B9%CE%B4%CE%B9%CE%B1%CE%AF%CF%84%CE%B5%CF%81%CE%B7%20%CF%80%CF%81%CE%BF%CF%83%CE%BF%CF%87%CE%AE%20%CE%BA%CE%B1%CF%84%CE%AC%20%CF%84%CE%B1%20%CF%80%CF%81%CF%8E%CF%84%CE%B1%20%CF%83%CF%84%CE%AC%CE%B4%CE%B9%CE%B1%20%CF%84%CE%B7%CF%82%20%CE%B5%CE%BA%CE%BC%CE%AC%CE%B8%CE%B7%CF%83%CE%B7%CF%82%20%CF%84%CE%BF%CF%85%2C%20%CF%8E%CF%83%CF%84%CE%B5%20%CE%BF%20%CE%BC%CE%B1%CE%B8%CE%B7%CF%84%CE%AE%CF%82%20%CE%BD%CE%B1%20%CE%BC%CF%80%CE%BF%CF%81%CE%AD%CF%83%CE%B5%CE%B9%20%CE%BD%CE%B1%20%CE%B1%CF%86%CE%BF%CE%BC%CE%BF%CE%B9%CF%8E%CF%83%CE%B5%CE%B9%20%CF%8C%CF%83%CE%BF%20%CF%84%CE%BF%20%CE%B4%CF%85%CE%BD%CE%B1%CF%84%CF%8C%20%CE%BA%CE%B1%CE%BB%CF%8D%CF%84%CE%B5%CF%81%CE%B1%20%CF%84%CE%B9%CF%82%20%CE%B3%CE%BD%CF%8E%CF%83%CE%B5%CE%B9%CF%82%20%CE%B1%CE%BB%CE%BB%CE%AC%20%CE%BA%CE%B1%CE%B9%20%CF%84%CE%B7%CE%BD%20%CE%BA%CE%BF%CF%85%CE%BB%CF%84%CE%BF%CF%8D%CF%81%CE%B1%20%CF%84%CE%BF%CF%85%20%CE%BC%CE%B1%CF%87%CE%B7%CF%84%CE%AE.%3C%2Fp%3E%3Cp%20style%3D%22text-align%3A%20right%3B%20margin-top%3A%2012px%3B%20margin-bottom%3A%2012px%3B%20padding%3A%200px%3B%22%3E%CE%A4%CE%B1%20%CE%BC%CE%B1%CE%B8%CE%AE%CE%BC%CE%B1%CF%84%CE%B1%20%CF%80%CE%B5%CE%B9%CE%B8%CE%B1%CF%81%CF%87%CE%AF%CE%B1%CF%82%20%CE%BA%CE%B1%CE%B9%20%CF%80%CF%85%CE%B3%CE%BC%CE%AE%CF%82%20%CF%80%CE%BF%CF%85%20%CE%B8%CE%B1%20%CE%BA%CE%AC%CE%BD%CE%B5%CF%84%CE%B5%20%CE%BC%CF%80%CE%BF%CF%81%CE%BF%CF%8D%CE%BD%20%CE%BD%CE%B1%20%CE%B3%CE%AF%CE%BD%CE%BF%CF%85%CE%BD%20%CE%B5%CF%86%CF%8C%CE%B4%CE%B9%CE%B1%20%CE%BA%CE%B1%CE%B9%20%CF%83%CE%B5%20%CE%AC%CE%BB%CE%BB%CE%BF%CF%85%CF%82%20%CF%84%CE%BF%CE%BC%CE%B5%CE%AF%CF%82%20%CF%83%CF%84%CE%B7%CE%BD%20%CE%B6%CF%89%CE%AE%20%CF%83%CE%B1%CF%82.%3C%2Fp%3E%3Cp%20style%3D%22text-align%3A%20right%3B%20margin-top%3A%2012px%3B%20margin-bottom%3A%2012px%3B%20padding%3A%200px%3B%22%3E%CE%9C%CE%B5%CF%84%CE%AC%20%CE%B1%CF%80%CF%8C%20%CE%BA%CE%AC%CE%B8%CE%B5%20%CE%BC%CE%AC%CE%B8%CE%B7%CE%BC%CE%B1%2C%20%CE%B8%CE%B1%20%CE%BD%CE%BF%CE%B9%CF%8E%CE%B8%CE%B5%CF%84%CE%B5%20%CE%B1%CE%BD%CE%B1%CE%B6%CF%89%CE%BF%CE%B3%CE%BF%CE%BD%CE%B7%CE%BC%CE%AD%CE%BD%CE%BF%CE%B9%20%CE%BC%CE%B5%20%CE%BA%CE%B1%CE%B8%CE%B1%CF%81%CE%AE%20%CF%80%CE%BD%CE%B5%CF%85%CE%BC%CE%B1%CF%84%CE%B9%CE%BA%CE%AE%20%CE%B5%CE%BD%CE%AD%CF%81%CE%B3%CE%B5%CE%B9%CE%B1.%3C%2Fp%3E%3Cp%20style%3D%22text-align%3A%20right%3B%20margin-top%3A%2012px%3B%20margin-bottom%3A%2012px%3B%20padding%3A%200px%3B%22%3E%CE%A4%CE%B1%20%CF%84%CE%BC%CE%AE%CE%BC%CE%B1%CF%84%CE%B1%20%CE%B1%CF%85%CF%84%CE%AC%20%CE%B1%CF%80%CE%B5%CF%85%CE%B8%CF%8D%CE%BD%CE%BF%CE%BD%CF%84%CE%B1%CE%B9%20%CF%83%CE%B5%20%CF%8C%CE%BB%CE%BF%CF%85%CF%82%20%CE%B1%CE%BD%CE%B5%CE%BE%CE%B1%CF%81%CF%84%CE%AE%CF%84%CE%BF%CF%85%20%CE%B7%CE%BB%CE%B9%CE%BA%CE%AF%CE%B1%CF%82.%20%CE%97%20%CE%B5%CE%BD%CE%B1%CF%83%CF%87%CF%8C%CE%BB%CE%B7%CF%83%CE%B7%20%CE%BC%CE%B5%20%CF%84%CE%B9%CF%82%20%CF%80%CE%BF%CE%BB%CE%B5%CE%BC%CE%B9%CE%BA%CE%AD%CF%82%20%CF%84%CE%AD%CF%87%CE%BD%CE%B5%CF%82%2C%20%CF%80%CF%81%CE%BF%CF%83%CF%86%CE%AD%CF%81%CE%B5%CE%B9%20%CE%AD%CE%BD%CE%B1%20%CF%85%CE%B3%CE%B9%CE%AD%CF%82%20%CE%BA%CE%B1%CE%B9%20%CF%8C%CE%BC%CE%BF%CF%81%CF%86%CE%BF%20%CF%83%CF%8E%CE%BC%CE%B1%2C%20%CE%B1%CE%BB%CE%BB%CE%AC%20%CF%84%CE%B1%CF%85%CF%84%CF%8C%CF%87%CF%81%CE%BF%CE%BD%CE%B1%20%CF%83%CE%B1%CF%82%20%CE%B4%CE%B9%CE%B4%CE%AC%CF%83%CE%BA%CE%B5%CE%B9%20%CE%B1%CF%85%CF%84%CE%BF%CE%AC%CE%BC%CF%85%CE%BD%CE%B1.%3C%2Fp%3E%3Cp%20style%3D%22text-align%3A%20right%3B%20margin-top%3A%2012px%3B%20margin-bottom%3A%2012px%3B%20padding%3A%200px%3B%22%3E%CE%A4%CE%BC%CE%AE%CE%BC%CE%B1%CF%84%CE%B1%20%CE%BB%CE%B5%CE%B9%CF%84%CE%BF%CF%85%CF%81%CE%B3%CE%BF%CF%8D%CE%BD%20%CE%BA%CE%B1%CE%B8%CE%B7%CE%BC%CE%B5%CF%81%CE%B9%CE%BD%CE%AC%2C%20%CE%BA%CE%B1%CE%B9%20%CF%83%CE%B1%CF%82%20%CF%80%CE%B5%CF%81%CE%B9%CE%BC%CE%AD%CE%BD%CE%BF%CF%85%CE%BC%CE%B5%20%CE%BC%CE%B5%20%CF%87%CE%B1%CF%81%CE%AC%20%CE%BD%CE%B1%20%CF%83%CE%B1%CF%82%20%CE%BE%CE%B5%CE%BD%CE%B1%CE%B3%CE%AF%CF%83%CE%BF%CF%85%CE%BC%CE%B5%20%CF%83%CF%84%CE%BF%CE%BD%20%CF%87%CF%8E%CF%81%CE%BF%20%CF%84%CF%89%CE%BD%20%CE%BC%CE%B1%CF%87%CE%B7%CF%84%CE%B9%CE%BA%CF%8E%CE%BD%20%CF%84%CE%B5%CF%87%CE%BD%CF%8E%CE%BD%3C%2Fp%3E%3Cp%20style%3D%22text-align%3A%20right%3B%20margin-top%3A%2012px%3B%20margin-bottom%3A%2012px%3B%20padding%3A%200px%3B%22%3E%CE%9F%20%CE%9C%CE%AC%CE%BA%CE%B7%CF%82%20-%20%CE%93%CE%B5%CF%81%CE%AC%CF%83%CE%B9%CE%BC%CE%BF%CF%82%20%CE%98%CE%B5%CE%BF%CF%84%CE%BF%CE%BA%CE%AC%CF%84%CE%BF%CF%82%20%CE%B5%CE%AF%CE%BD%CE%B1%CE%B9%20%CE%B1%CE%BD%CE%B1%CE%B3%CE%BD%CF%89%CF%81%CE%B9%CF%83%CE%BC%CE%AD%CE%BD%CE%BF%CF%82%20%CE%BA%CE%B1%CE%B9%20%CE%B4%CE%B9%CF%80%CE%BB%CE%BF%CE%BC%CE%B1%CF%84%CE%BF%CF%8D%CF%87%CE%BF%CF%82%20%CF%83%CF%84%CE%BF%20%CE%AC%CE%B8%CE%BB%CE%B7%CE%BC%CE%B1%20%CF%84%CE%B7%CF%82%20%CF%80%CF%85%CE%B3%CE%BC%CE%B1%CF%87%CE%AF%CE%B1%CF%82%20%CE%B1%CF%80%CE%BF%20%CF%84%CE%B7%CE%BD%20%CE%B1%CE%B8%CE%BB%CE%B7%CF%84%CE%B9%CE%BA%CE%AE%20%CE%BF%CE%BC%CE%BF%CF%83%CF%80%CE%BF%CE%BD%CE%B4%CE%AF%CE%B1%20%CF%80%CF%85%CE%B3%CE%BC%CE%B1%CF%87%CE%AF%CE%B1%CF%82%20Brooklyn%20New%20York%20%CE%BA%CE%B1%CE%B9%20%CE%B1%CF%80%CE%BF%20%CF%84%CE%B7%CE%BD%20%CE%95%CE%BB%CE%BB%CE%B7%CE%BD%CE%B9%CE%BA%CE%AE%20%CE%BF%CE%BC%CE%BF%CF%83%CF%80%CE%BF%CE%BD%CE%B4%CE%AF%CE%B1%20%CF%80%CF%85%CE%B3%CE%BC%CE%B1%CF%87%CE%AF%CE%B1%CF%82%3C%2Fp%3E','2017-05-02 12:52:27','210-7798659, 6987556486','themhz@gmail.com');
/*!40000 ALTER TABLE `fcm_homepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_homepage_messages`
--

DROP TABLE IF EXISTS `fcm_homepage_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_homepage_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `phone` varchar(300) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_homepage_messages`
--

LOCK TABLES `fcm_homepage_messages` WRITE;
/*!40000 ALTER TABLE `fcm_homepage_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_homepage_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_inbox`
--

DROP TABLE IF EXISTS `fcm_inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_inbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `isread` smallint(1) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_inbox_fcm_accounts` (`account_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_inbox`
--

LOCK TABLES `fcm_inbox` WRITE;
/*!40000 ALTER TABLE `fcm_inbox` DISABLE KEYS */;
INSERT INTO `fcm_inbox` VALUES (31,1,'2019-03-14 13:01:01','Μήνυμα από την φόρμα αποστολής του site','6987556486','Καλημέρα ρε','Themis Theotokatos',0,'6987556486');
/*!40000 ALTER TABLE `fcm_inbox` ENABLE KEYS */;
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
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_months_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_groups_fcm_months_students` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_months_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_months`
--

LOCK TABLES `fcm_months` WRITE;
/*!40000 ALTER TABLE `fcm_months` DISABLE KEYS */;
INSERT INTO `fcm_months` VALUES (1,'January',1),(2,'February',1),(3,'March',1),(4,'April',1),(5,'May',1),(6,'June',1),(7,'July',1),(8,'August',1),(9,'September',1),(10,'October',1),(11,'November',1),(12,'December',1);
/*!40000 ALTER TABLE `fcm_months` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_paypal_responses`
--

DROP TABLE IF EXISTS `fcm_paypal_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_paypal_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart` varchar(45) DEFAULT NULL,
  `pid` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_paypal_responses_fcm_accounts` (`account_id`),
  KEY `FK_fcm_paypal_responses_fcm_student_payments` (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_paypal_responses`
--

LOCK TABLES `fcm_paypal_responses` WRITE;
/*!40000 ALTER TABLE `fcm_paypal_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_paypal_responses` ENABLE KEYS */;
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
  `price` double DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_services_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_services_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_services`
--

LOCK TABLES `fcm_services` WRITE;
/*!40000 ALTER TABLE `fcm_services` DISABLE KEYS */;
INSERT INTO `fcm_services` VALUES (1,'Μηνιαία ',1,50,NULL,1),(2,'Three months',3,120,NULL,1),(3,'Έξι μήνες ',6,200,'2018-09-12 06:24:33',1),(4,'Annual',12,450,NULL,1),(5,'Daily',0,5,'2018-09-12 06:24:27',1);
/*!40000 ALTER TABLE `fcm_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_sparring`
--

DROP TABLE IF EXISTS `fcm_sparring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_sparring` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `promodatestart` datetime DEFAULT NULL,
  `promodateend` datetime DEFAULT NULL,
  `eventdatestart` datetime DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `desc` varchar(8000) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `drawcomplete` int(11) DEFAULT 0,
  `account_id` int(11) DEFAULT NULL,
  `image` varchar(400) DEFAULT NULL,
  `gmap` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_sparring_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_sparring_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_sparring`
--

LOCK TABLES `fcm_sparring` WRITE;
/*!40000 ALTER TABLE `fcm_sparring` DISABLE KEYS */;
INSERT INTO `fcm_sparring` VALUES (1,1,'2019-03-12 22:00:00','2019-03-21 22:00:00','2019-03-22 22:00:00','Το πρώτο Sparring','Σας προσκαλούμε στους φιλικούς, αγώνες sparring που διοργανώνει η σχολή πυγμαχίας του Αγίου Θωμάς  που θα γίνει στις 23-24/03/2019 στου ζωγράφου. Ακριβής τοποθεσία Ζηνοδότου 9 Ζωγράφου. ','2017-12-06 06:23:37',0,1,'https://accountfiles.fcmsoft.com/ac_1/sparring/THEOTOKATOS_afisa.jpg','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3144.9169478939775!2d23.7594115153235!3d37.979067479722744!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14a1bd564b27c859%3A0xce632d5d5f723856!2zzpbOt869zr_OtM-Mz4TOv8-FIDksIM6Wz4nOs8-BzqzPhs6_z4UgMTU3IDcx!5e0!3m2!1sel!2sgr!4v1552571662185\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>');
/*!40000 ALTER TABLE `fcm_sparring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_sparring_draw_results`
--

DROP TABLE IF EXISTS `fcm_sparring_draw_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_sparring_draw_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fightart_id` int(11) DEFAULT NULL,
  `fightartname` varchar(100) DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL,
  `redcornerFighter_id` int(11) NOT NULL,
  `redcornerFighter_fullname` varchar(100) DEFAULT NULL,
  `redcornerFighter_age` int(11) DEFAULT NULL,
  `redcornerFighter_weight` int(11) DEFAULT NULL,
  `redcornerFighter_sex` int(11) DEFAULT NULL,
  `redcornerFighter_level` int(11) DEFAULT NULL,
  `redcornerFighter_team_id` int(11) DEFAULT NULL,
  `redcornerFighter_team_name` varchar(100) DEFAULT NULL,
  `bluecornerFighter_id` int(11) NOT NULL,
  `bluecornerFighter_fullname` varchar(100) DEFAULT NULL,
  `bluecornerFighter_age` int(11) DEFAULT NULL,
  `bluecornerFighter_weight` int(11) DEFAULT NULL,
  `bluecornerFighter_sex` int(11) DEFAULT NULL,
  `bluecornerFighter_level` int(11) DEFAULT NULL,
  `bluecornerFighter_team_id` int(11) DEFAULT NULL,
  `bluecornerFighter_team_name` varchar(100) DEFAULT NULL,
  `draw_id` int(11) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `winner_fighter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_sparring_draw_results_fcm_accounts` (`account_id`),
  KEY `FK_fcm_sparring_draw_results_fcm_fightarts` (`fightart_id`),
  KEY `FK_fcm_sparring_draw_results_fcm_sparring` (`eventid`),
  KEY `FK_fcm_sparring_requests_fcm_sparring_requests_athletes_blue` (`bluecornerFighter_id`),
  KEY `FK_fcm_sparring_requests_fcm_sparring_requests_athletes_red` (`redcornerFighter_id`),
  KEY `FK_fcm_sparring_requests_fcm_sparring_requests_red_team_id` (`redcornerFighter_team_id`),
  KEY `FK_fcm_sparring_requests_fcm_sparring_requests_blue_team_id` (`bluecornerFighter_team_id`),
  KEY `FK_fcm_sparring_draw_results_fcm_sparring_draws` (`draw_id`),
  KEY `FK_fcm_sparring_draw_results_sparring_requests_athletes` (`winner_fighter_id`),
  CONSTRAINT `FK_fcm_sparring_draw_results_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_sparring_draw_results_fcm_fightarts` FOREIGN KEY (`fightart_id`) REFERENCES `fcm_fightarts` (`id`),
  CONSTRAINT `FK_fcm_sparring_draw_results_fcm_sparring` FOREIGN KEY (`eventid`) REFERENCES `fcm_sparring` (`id`),
  CONSTRAINT `FK_fcm_sparring_draw_results_fcm_sparring_draws` FOREIGN KEY (`draw_id`) REFERENCES `fcm_sparring_draws` (`id`),
  CONSTRAINT `FK_fcm_sparring_draw_results_sparring_requests_athletes` FOREIGN KEY (`winner_fighter_id`) REFERENCES `fcm_sparring_requests_athletes` (`id`),
  CONSTRAINT `FK_fcm_sparring_requests_fcm_sparring_requests_athletes_blue` FOREIGN KEY (`bluecornerFighter_id`) REFERENCES `fcm_sparring_requests_athletes` (`id`),
  CONSTRAINT `FK_fcm_sparring_requests_fcm_sparring_requests_athletes_red` FOREIGN KEY (`redcornerFighter_id`) REFERENCES `fcm_sparring_requests_athletes` (`id`),
  CONSTRAINT `FK_fcm_sparring_requests_fcm_sparring_requests_blue_team_id` FOREIGN KEY (`bluecornerFighter_team_id`) REFERENCES `fcm_sparring_requests_athletes` (`id`),
  CONSTRAINT `FK_fcm_sparring_requests_fcm_sparring_requests_red_team_id` FOREIGN KEY (`redcornerFighter_team_id`) REFERENCES `fcm_sparring_requests_athletes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_sparring_draw_results`
--

LOCK TABLES `fcm_sparring_draw_results` WRITE;
/*!40000 ALTER TABLE `fcm_sparring_draw_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_sparring_draw_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_sparring_draw_results_unmatched`
--

DROP TABLE IF EXISTS `fcm_sparring_draw_results_unmatched`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_sparring_draw_results_unmatched` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) DEFAULT NULL,
  `athlete_id` int(11) DEFAULT NULL,
  `draw_id` int(11) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `fightartname` varchar(100) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_sparring_draw_results_unmatched_fcm_accounts` (`account_id`),
  KEY `FK_fcm_sparring_draw_results_unmatched_fcm_sparring` (`eventid`),
  KEY `FK_fcm_sparring_draw_results_unmatched_fcm_sparring_draws` (`draw_id`),
  KEY `FK_fcm_sparring_draw_results_unmatched_requests_athletes` (`athlete_id`),
  CONSTRAINT `FK_fcm_sparring_draw_results_unmatched_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_sparring_draw_results_unmatched_fcm_sparring` FOREIGN KEY (`eventid`) REFERENCES `fcm_sparring` (`id`),
  CONSTRAINT `FK_fcm_sparring_draw_results_unmatched_fcm_sparring_draws` FOREIGN KEY (`draw_id`) REFERENCES `fcm_sparring_draws` (`id`),
  CONSTRAINT `FK_fcm_sparring_draw_results_unmatched_requests_athletes` FOREIGN KEY (`athlete_id`) REFERENCES `fcm_sparring_requests_athletes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_sparring_draw_results_unmatched`
--

LOCK TABLES `fcm_sparring_draw_results_unmatched` WRITE;
/*!40000 ALTER TABLE `fcm_sparring_draw_results_unmatched` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_sparring_draw_results_unmatched` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_sparring_draws`
--

DROP TABLE IF EXISTS `fcm_sparring_draws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_sparring_draws` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matched` int(11) DEFAULT NULL,
  `unmatched` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `sparring_event_id` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_sparring_draws_fcm_accounts` (`account_id`),
  KEY `FK_fcm_sparring_draws_fcm_sparring` (`sparring_event_id`),
  CONSTRAINT `FK_fcm_sparring_draws_fcm_sparring` FOREIGN KEY (`sparring_event_id`) REFERENCES `fcm_sparring` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_sparring_draws`
--

LOCK TABLES `fcm_sparring_draws` WRITE;
/*!40000 ALTER TABLE `fcm_sparring_draws` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_sparring_draws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_sparring_fightarts_weights`
--

DROP TABLE IF EXISTS `fcm_sparring_fightarts_weights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_sparring_fightarts_weights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `weightfrom` float DEFAULT NULL,
  `weightto` float DEFAULT NULL,
  `fightart` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_sparring_fightarts_weights_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_sparring_fightarts_weights_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_sparring_fightarts_weights`
--

LOCK TABLES `fcm_sparring_fightarts_weights` WRITE;
/*!40000 ALTER TABLE `fcm_sparring_fightarts_weights` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_sparring_fightarts_weights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_sparring_levels`
--

DROP TABLE IF EXISTS `fcm_sparring_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_sparring_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_sparring_levels_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_sparring_levels_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_sparring_levels`
--

LOCK TABLES `fcm_sparring_levels` WRITE;
/*!40000 ALTER TABLE `fcm_sparring_levels` DISABLE KEYS */;
INSERT INTO `fcm_sparring_levels` VALUES (1,'Κατηγορία Α (10 Αγώνες και Πάνω)','2017-04-02 10:23:55',1),(2,'Κατηγορία Β (5 έως 10 Αγώνες)','2017-04-02 10:23:55',1),(3,'Κατηγορία Γ (0 έως 5 Αγώνες)','2017-04-02 10:23:55',1);
/*!40000 ALTER TABLE `fcm_sparring_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_sparring_levels_age`
--

DROP TABLE IF EXISTS `fcm_sparring_levels_age`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_sparring_levels_age` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `agefrom` int(11) DEFAULT NULL,
  `ageto` varchar(45) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_sparring_levels_age_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_sparring_levels_age_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_sparring_levels_age`
--

LOCK TABLES `fcm_sparring_levels_age` WRITE;
/*!40000 ALTER TABLE `fcm_sparring_levels_age` DISABLE KEYS */;
INSERT INTO `fcm_sparring_levels_age` VALUES (1,'Παίδων',11,'14',1),(2,'Εφήβων',15,'17',1),(3,'Ανδρών',18,'100',1);
/*!40000 ALTER TABLE `fcm_sparring_levels_age` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_sparring_requests`
--

DROP TABLE IF EXISTS `fcm_sparring_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_sparring_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamname` varchar(500) DEFAULT NULL,
  `coachname` varchar(200) DEFAULT NULL,
  `helper1name` varchar(200) DEFAULT NULL,
  `helper2name` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone1` varchar(20) DEFAULT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_sparring_requests_fcm_accounts` (`account_id`),
  KEY `FK_fcm_sparring_requests_fcm_sparring` (`eventid`),
  CONSTRAINT `FK_fcm_sparring_requests_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_sparring_requests_fcm_sparring` FOREIGN KEY (`eventid`) REFERENCES `fcm_sparring` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_sparring_requests`
--

LOCK TABLES `fcm_sparring_requests` WRITE;
/*!40000 ALTER TABLE `fcm_sparring_requests` DISABLE KEYS */;
INSERT INTO `fcm_sparring_requests` VALUES (5,'viper fight club','ΚΩΝΣΤΑΝΤΙΝΟΣ ΘΕΟΔΩΡΟΥ','ΗΛΙΑΣ ΛΑΡΙΓΚΟΣ','ΑΝΤΩΝΙΑ ΡΑΠΤΗ','info@viperfightclub.gr','6971618234','',1,'2019-03-19 15:50:56',1);
/*!40000 ALTER TABLE `fcm_sparring_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_sparring_requests_athletes`
--

DROP TABLE IF EXISTS `fcm_sparring_requests_athletes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_sparring_requests_athletes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(300) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `fightart` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `teamid` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_sparring_requests_athletes_fcm_accounts` (`account_id`),
  KEY `FK_fcm_sparring_requests_athletes_fcm_sparring_requests` (`teamid`),
  CONSTRAINT `FK_fcm_sparring_requests_athletes_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_sparring_requests_athletes_fcm_sparring_requests` FOREIGN KEY (`teamid`) REFERENCES `fcm_sparring_requests` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_sparring_requests_athletes`
--

LOCK TABLES `fcm_sparring_requests_athletes` WRITE;
/*!40000 ALTER TABLE `fcm_sparring_requests_athletes` DISABLE KEYS */;
INSERT INTO `fcm_sparring_requests_athletes` VALUES (8,'Δημητρης μπιφανης',15,59,1,0,3,5,'2019-03-19 15:50:56',1),(9,'ΘΑΝΟΣ ΚΑΛΟΡΙΤΗΣ',20,75,2,0,3,5,'2019-03-19 15:50:57',1);
/*!40000 ALTER TABLE `fcm_sparring_requests_athletes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_sparring_sex`
--

DROP TABLE IF EXISTS `fcm_sparring_sex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_sparring_sex` (
  `id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_sparring_sex_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_sparring_sex_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_sparring_sex`
--

LOCK TABLES `fcm_sparring_sex` WRITE;
/*!40000 ALTER TABLE `fcm_sparring_sex` DISABLE KEYS */;
INSERT INTO `fcm_sparring_sex` VALUES (0,'Άντρας',1),(1,'Γυναίκα',1);
/*!40000 ALTER TABLE `fcm_sparring_sex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_student_invoices`
--

DROP TABLE IF EXISTS `fcm_student_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_student_invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_student_invoices_fcm_students` (`student_id`),
  KEY `FK_fcm_student_invoices_fcm_accounts` (`account_id`),
  KEY `FK_fcm_student_invoices_fcm_services` (`service_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_student_invoices`
--

LOCK TABLES `fcm_student_invoices` WRITE;
/*!40000 ALTER TABLE `fcm_student_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_student_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_student_payment_types`
--

DROP TABLE IF EXISTS `fcm_student_payment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_student_payment_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_student_payment_types`
--

LOCK TABLES `fcm_student_payment_types` WRITE;
/*!40000 ALTER TABLE `fcm_student_payment_types` DISABLE KEYS */;
INSERT INTO `fcm_student_payment_types` VALUES (1,'cash'),(2,'paypal_internet'),(3,'paypal_pos');
/*!40000 ALTER TABLE `fcm_student_payment_types` ENABLE KEYS */;
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
  `account_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_StudentPayment_fcm_students` (`student_id`),
  KEY `FK_fcm_student_payments_fcm_accounts` (`account_id`),
  KEY `FK_fcm_student_payments_fcm_services` (`service_id`),
  CONSTRAINT `FK_StudentPayment` FOREIGN KEY (`student_id`) REFERENCES `fcm_students` (`id`),
  CONSTRAINT `FK_StudentPayment_fcm_students` FOREIGN KEY (`student_id`) REFERENCES `fcm_students` (`id`),
  CONSTRAINT `FK_fcm_student_payments_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_student_payments_fcm_services` FOREIGN KEY (`service_id`) REFERENCES `fcm_services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_student_payments`
--

LOCK TABLES `fcm_student_payments` WRITE;
/*!40000 ALTER TABLE `fcm_student_payments` DISABLE KEYS */;
INSERT INTO `fcm_student_payments` VALUES (1,6,1,40,'2016-05-04 19:10:22',4,'2016-05-04 19:10:22',1,1),(2,8,1,40,'2016-05-04 19:19:42',4,'2016-05-04 19:19:42',1,1),(3,7,1,60,'2016-05-04 19:29:38',4,'2016-05-04 19:29:38',1,1),(4,14,1,40,'2016-05-05 17:56:41',5,'2016-05-05 17:56:41',1,1),(5,15,1,50,'2016-05-05 20:59:14',5,'2016-05-05 20:59:14',1,1),(6,18,1,40,'2016-05-06 22:16:34',5,'2016-05-06 22:16:34',1,1),(7,19,1,50,'2016-05-07 17:03:15',5,'2016-05-07 17:03:15',1,1),(8,20,1,40,'2016-05-09 18:02:43',5,'2016-05-09 18:02:43',1,1),(9,21,1,40,'2016-05-09 18:08:29',5,'2016-05-09 18:08:29',1,1),(10,31,1,40,'2016-05-10 18:15:40',5,'2016-05-10 18:15:40',1,1),(11,32,1,40,'2016-05-11 19:17:09',5,'2016-05-11 19:17:09',1,1),(12,33,1,40,'2016-05-11 19:21:28',6,'2016-05-11 19:21:28',1,1),(13,36,1,50,'2016-05-12 22:26:22',5,'2016-05-12 22:26:22',1,1),(14,37,1,40,'2016-05-12 22:26:34',5,'2016-05-12 22:26:34',1,1),(15,35,1,40,'2016-05-12 22:26:46',5,'2016-05-12 22:26:46',1,1),(16,12,1,40,'2016-05-13 22:19:13',4,'2016-05-13 22:19:13',1,1),(17,13,1,40,'2016-05-16 17:53:11',5,'2016-05-16 17:53:11',1,1),(18,38,1,40,'2016-05-16 17:54:50',5,'2016-05-16 17:54:50',1,1),(19,43,1,40,'2016-05-20 17:46:25',5,'2016-05-20 17:46:25',1,1),(20,44,1,40,'2016-05-20 17:46:35',5,'2016-05-20 17:46:35',1,1),(21,2,1,40,'2016-05-23 21:06:32',6,'2016-05-23 21:06:32',1,1),(22,19,1,50,'2016-05-24 17:51:19',6,'2016-05-24 17:51:19',1,1),(23,45,5,5,'2016-05-26 18:13:13',5,'2016-05-26 18:13:13',1,1),(24,45,5,5,'2016-05-27 18:10:13',5,'2016-05-27 18:10:13',1,1),(25,46,1,40,'2016-05-27 22:15:57',6,'2016-05-27 22:15:57',1,1),(26,13,1,40,'2016-06-08 20:14:28',6,'2016-06-08 20:14:28',1,1),(27,47,1,40,'2016-06-08 20:14:59',6,'2016-06-08 20:14:59',1,1),(28,34,1,40,'2016-06-08 20:15:17',6,'2016-06-08 20:15:17',1,1),(29,48,1,40,'2016-06-08 20:16:32',1,'2016-06-08 20:16:32',1,1),(30,18,1,40,'2016-06-08 20:18:07',6,'2016-06-08 20:18:07',1,1),(31,11,1,40,'2016-06-08 20:18:27',5,'2016-06-08 20:18:27',1,1),(32,50,1,40,'2016-06-08 20:21:21',6,'2016-06-08 20:21:21',1,1),(33,45,1,5,'2016-06-08 20:22:26',6,'2016-06-08 20:22:26',1,1),(34,6,1,40,'2016-06-08 20:23:14',6,'2016-06-08 20:23:14',1,1),(35,17,1,40,'2016-07-11 19:36:28',6,'2016-07-11 19:36:28',1,1),(36,51,1,40,'2016-07-11 19:38:14',6,'2016-07-11 19:38:14',1,1),(37,31,1,40,'2016-07-11 19:39:46',6,'2016-07-11 19:39:46',1,1),(38,52,1,40,'2016-07-11 19:46:07',6,'2016-07-11 19:46:07',1,1),(39,48,1,40,'2016-07-11 19:46:51',6,'2016-07-11 19:46:51',1,1),(40,49,1,40,'2016-07-21 21:40:00',6,'2016-07-21 21:40:00',1,1),(41,21,2,120,'2016-09-05 18:02:55',9,'2016-09-05 18:02:55',1,1),(42,49,1,40,'2016-09-06 19:27:00',7,'2016-09-06 19:27:00',1,1),(43,48,1,40,'2016-09-06 19:30:11',9,'2016-09-06 19:30:11',1,1),(44,54,1,40,'2016-09-06 20:26:56',9,'2016-09-06 20:26:56',1,1),(45,13,1,40,'2016-09-09 18:09:23',9,'2016-09-09 18:09:23',1,1),(46,55,1,40,'2016-09-09 18:12:50',9,'2016-09-09 18:12:50',1,1),(47,53,1,40,'2016-09-09 18:13:20',9,'2016-09-09 18:13:20',1,1),(48,19,1,50,'2016-09-12 11:11:33',9,'2016-09-12 11:11:33',1,1),(49,56,1,30,'2016-09-12 20:37:53',9,'2016-09-12 20:37:53',1,1),(50,49,1,40,'2016-09-26 20:17:35',9,'2016-09-26 20:17:35',1,1),(51,13,1,40,'2016-10-05 19:22:13',10,'2016-10-05 19:22:13',1,1),(52,57,1,40,'2016-11-07 19:56:22',11,'2016-11-07 19:56:22',1,1),(53,58,1,40,'2016-11-08 21:08:47',11,'2016-11-08 21:08:47',1,1),(54,58,1,40,'2017-04-21 18:39:10',4,'2017-04-21 18:39:10',1,1),(55,59,1,40,'2017-04-21 22:08:18',4,'2017-04-21 22:08:18',1,1),(56,19,1,40,'2017-04-24 18:40:39',3,'2017-04-24 18:40:39',1,1),(57,60,1,40,'2017-04-24 18:42:40',3,'2017-04-24 18:42:40',1,1),(58,61,1,40,'2017-04-24 18:44:05',3,'2017-04-24 18:44:05',1,1),(59,11,1,40,'2017-04-24 18:44:42',3,'2017-04-24 18:44:42',1,1),(60,17,1,40,'2017-04-24 18:45:18',3,'2017-04-24 18:45:18',1,1),(61,48,1,40,'2017-04-24 18:45:43',3,'2017-04-24 18:45:43',1,1),(62,62,1,40,'2017-04-24 18:47:13',3,'2017-04-24 18:47:13',1,1),(63,63,1,40,'2017-04-24 18:48:47',3,'2017-04-24 18:48:47',1,1),(64,64,1,40,'2017-04-24 18:49:45',3,'2017-04-24 18:49:45',1,1),(65,65,1,40,'2017-04-24 18:51:11',3,'2017-04-24 18:51:11',1,1),(66,58,1,40,'2017-04-24 18:52:01',3,'2017-04-24 18:52:01',1,1),(67,2,1,40,'2017-04-24 18:52:36',3,'2017-04-24 18:52:36',1,1),(68,66,1,40,'2017-04-24 18:53:48',3,'2017-04-24 18:53:48',1,1),(69,67,1,40,'2017-04-24 18:55:07',3,'2017-04-24 18:55:07',1,1),(70,18,1,40,'2017-04-24 18:56:38',3,'2017-04-24 18:56:38',1,1),(71,68,1,40,'2017-04-24 18:58:24',3,'2017-04-24 18:58:24',1,1),(72,21,1,40,'2017-04-24 18:59:07',3,'2017-04-24 18:59:07',1,1),(73,69,1,40,'2017-04-24 19:00:42',3,'2017-04-24 19:00:42',1,1),(74,49,1,40,'2017-04-24 19:01:47',3,'2017-04-24 19:01:47',1,1),(75,70,1,40,'2017-04-24 19:03:21',3,'2017-04-24 19:03:21',1,1),(76,53,1,40,'2017-04-24 19:04:27',3,'2017-04-24 19:04:27',1,1),(77,71,1,40,'2017-04-24 19:06:28',3,'2017-04-24 19:06:28',1,1),(78,72,1,40,'2017-04-24 19:08:36',3,'2017-04-24 19:08:36',1,1),(79,2,1,40,'2017-04-24 21:02:28',4,'2017-04-24 21:02:28',1,1),(80,64,1,40,'2017-04-26 18:34:09',4,'2017-04-26 18:34:09',1,1),(81,67,1,40,'2017-04-27 18:22:40',4,'2017-04-27 18:22:40',1,1),(82,67,1,40,'2017-04-27 18:23:22',2,'2017-04-27 18:23:22',1,1),(83,49,1,40,'2017-04-27 00:00:00',4,'2017-04-28 20:45:59',1,1),(84,72,1,45,'2017-04-27 00:00:00',4,'2017-04-28 20:46:51',1,1),(85,73,1,45,'2017-05-01 00:00:00',5,'2017-05-02 18:17:04',1,1),(86,63,1,45,'2017-05-01 00:00:00',5,'2017-05-02 18:19:12',1,1),(87,13,1,40,'2017-05-02 00:00:00',5,'2017-05-03 18:32:16',1,1),(88,48,1,40,'2017-05-02 00:00:00',5,'2017-05-03 18:36:21',1,1),(89,17,1,40,'2017-05-03 00:00:00',5,'2017-05-04 18:23:09',1,1),(90,53,1,40,'2017-05-07 00:00:00',5,'2017-05-08 19:58:43',1,1),(91,71,1,40,'2017-05-07 00:00:00',5,'2017-05-08 20:03:06',1,1),(92,74,1,45,'2017-05-08 00:00:00',5,'2017-05-09 20:21:24',1,1),(93,76,5,10,'2017-05-09 00:00:00',5,'2017-05-10 19:58:47',1,1),(94,77,5,10,'2017-05-09 00:00:00',5,'2017-05-10 19:59:14',1,1),(95,23,1,45,'2017-05-09 00:00:00',5,'2017-05-10 22:36:11',1,1),(96,21,1,40,'2017-05-10 00:00:00',5,'2017-05-11 18:55:05',1,1),(97,18,1,40,'2017-05-11 00:00:00',5,'2017-05-12 18:21:28',1,1),(98,80,1,45,'2017-06-14 00:00:00',5,'2017-05-15 18:43:57',1,1),(99,58,1,40,'2017-05-14 00:00:00',5,'2017-05-15 20:28:05',1,1),(100,78,1,45,'2017-05-14 00:00:00',5,'2017-05-15 22:23:27',1,1),(101,79,1,45,'2017-05-14 00:00:00',5,'2017-05-15 22:27:42',1,1),(102,68,1,40,'2017-05-22 00:00:00',5,'2017-05-23 19:03:29',1,1),(103,65,1,40,'2017-05-24 00:00:00',6,'2017-05-25 18:15:34',1,1),(104,2,1,40,'2017-05-24 00:00:00',5,'2017-05-26 20:07:25',1,1),(105,72,1,40,'2017-05-24 00:00:00',5,'2017-05-29 22:39:41',1,1),(106,13,1,40,'2017-06-05 00:00:00',6,'2017-06-06 18:36:26',1,1),(107,61,1,45,'2017-06-05 00:00:00',6,'2017-06-06 20:22:24',1,1),(108,48,1,40,'2017-06-06 00:00:00',6,'2017-06-07 18:43:17',1,1),(109,49,1,40,'2017-06-06 00:00:00',5,'2017-06-07 20:41:36',1,1),(110,64,1,40,'2017-06-07 00:00:00',6,'2017-06-08 18:26:40',1,1),(111,63,1,45,'2017-06-11 00:00:00',6,'2017-06-12 18:25:45',1,1),(112,70,1,45,'2017-06-11 00:00:00',6,'2017-06-12 20:10:50',1,1),(113,17,1,45,'2017-06-11 00:00:00',6,'2017-06-13 18:32:36',1,1),(114,23,1,45,'2017-06-15 00:00:00',6,'2017-06-16 22:27:17',1,1),(115,79,1,45,'2017-06-18 00:00:00',6,'2017-06-19 20:49:27',1,1),(116,78,1,45,'2017-06-20 00:00:00',6,'2017-06-21 22:25:22',1,1),(117,2,1,40,'2017-06-26 00:00:00',6,'2017-06-27 19:12:45',1,1),(118,19,1,45,'2017-06-25 00:00:00',6,'2017-06-27 19:15:39',1,1),(119,64,1,40,'2017-07-02 00:00:00',7,'2017-07-03 18:32:51',1,1),(120,81,5,10,'2017-07-20 00:00:00',7,'2017-07-21 15:57:11',1,1),(121,63,1,45,'2017-09-05 00:00:00',9,'2017-09-06 18:59:11',1,1),(122,17,1,45,'2017-09-06 00:00:00',9,'2017-09-07 15:52:47',1,1),(123,82,1,45,'2017-09-07 00:00:00',9,'2017-09-08 17:02:39',1,1),(124,83,1,45,'2017-09-07 00:00:00',9,'2017-09-08 18:17:49',1,1),(125,84,1,45,'2017-09-08 00:00:00',9,'2017-09-09 12:58:22',1,1),(126,8,1,45,'2017-09-12 00:00:00',9,'2017-09-13 20:47:31',1,1),(127,85,1,45,'2017-09-17 00:00:00',9,'2017-09-18 16:35:24',1,1),(128,78,1,45,'2017-09-17 00:00:00',9,'2017-09-18 19:08:21',1,1),(129,48,1,40,'2017-09-17 00:00:00',9,'2017-09-20 15:29:57',1,1),(130,86,1,45,'2017-09-21 00:00:00',9,'2017-09-22 19:40:33',1,1),(131,64,1,40,'2017-09-25 00:00:00',9,'2017-09-26 17:00:33',1,1),(132,72,1,45,'2017-09-25 00:00:00',9,'2017-09-26 17:01:56',1,1),(133,21,1,45,'2017-09-27 00:00:00',9,'2017-09-28 15:29:34',1,1),(134,87,1,45,'2017-10-01 00:00:00',10,'2017-10-02 18:03:00',1,1),(135,89,1,45,'2017-10-03 00:00:00',10,'2017-10-04 17:58:52',1,1),(136,83,1,45,'2017-10-04 00:00:00',10,'2017-10-05 19:58:20',1,1),(137,86,1,45,'2017-10-05 00:00:00',10,'2017-10-06 22:29:33',1,1),(138,63,1,45,'2017-10-08 00:00:00',10,'2017-10-09 18:34:06',1,1),(139,61,1,45,'2017-10-08 00:00:00',10,'2017-10-09 18:35:27',1,1),(140,91,1,40,'2017-10-10 00:00:00',10,'2017-10-11 18:34:03',1,1),(141,82,1,45,'2017-10-10 00:00:00',10,'2017-10-11 20:10:35',1,1),(142,84,1,40,'2017-10-11 00:00:00',10,'2017-10-12 13:35:58',1,1),(143,58,1,45,'2017-10-15 00:00:00',10,'2017-10-16 20:42:50',1,1),(144,8,1,45,'2017-10-19 00:00:00',10,'2017-10-20 17:45:43',1,1),(145,88,1,40,'2017-10-19 00:00:00',10,'2017-10-20 17:46:11',1,1),(146,65,1,45,'2017-10-22 00:00:00',10,'2017-10-23 17:14:26',1,1),(147,78,1,45,'2017-10-22 00:00:00',10,'2017-10-23 19:26:06',1,1),(148,92,1,45,'2017-10-24 00:00:00',10,'2017-10-25 14:35:16',1,1),(149,93,1,56,'2017-10-25 03:00:00',10,'2018-09-28 07:09:20',1,1),(150,89,1,50,'2019-09-02 00:00:00',NULL,'2019-09-03 15:54:56',1,NULL),(151,71,1,50,'2019-09-03 00:00:00',NULL,'2019-09-03 16:06:41',1,NULL),(152,86,1,50,'2019-09-04 00:00:00',NULL,'2019-09-04 19:21:05',1,NULL),(153,132,1,50,'2019-09-05 00:00:00',NULL,'2019-09-05 17:56:18',1,NULL),(154,133,1,50,'2019-09-05 00:00:00',NULL,'2019-09-05 19:12:13',1,NULL),(155,17,1,40,'2019-09-06 00:00:00',NULL,'2019-09-06 19:42:36',1,NULL),(156,134,1,50,'2019-09-10 00:00:00',NULL,'2019-09-10 14:44:55',1,NULL),(157,135,1,50,'2019-09-10 00:00:00',NULL,'2019-09-10 14:45:13',1,NULL),(158,136,1,50,'2019-09-10 00:00:00',NULL,'2019-09-10 14:45:31',1,NULL);
/*!40000 ALTER TABLE `fcm_student_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_student_registration_requests`
--

DROP TABLE IF EXISTS `fcm_student_registration_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_student_registration_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_student_registration_requests_fcm_students` (`student_id`),
  KEY `FK_fcm_student_registration_requests_fcm_accounts` (`account_id`),
  KEY `FK_fcm_student_registration_requests_fcm_groups` (`group_id`),
  KEY `FK_fcm_student_registration_requests_fcm_services` (`service_id`),
  CONSTRAINT `FK_fcm_student_registration_requests` FOREIGN KEY (`student_id`) REFERENCES `fcm_students` (`id`),
  CONSTRAINT `FK_fcm_student_registration_requests_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_student_registration_requests_fcm_groups` FOREIGN KEY (`group_id`) REFERENCES `fcm_groups` (`id`),
  CONSTRAINT `FK_fcm_student_registration_requests_fcm_services` FOREIGN KEY (`service_id`) REFERENCES `fcm_services` (`id`),
  CONSTRAINT `FK_fcm_student_registration_requests_fcm_students` FOREIGN KEY (`student_id`) REFERENCES `fcm_students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_student_registration_requests`
--

LOCK TABLES `fcm_student_registration_requests` WRITE;
/*!40000 ALTER TABLE `fcm_student_registration_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_student_registration_requests` ENABLE KEYS */;
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
  `country` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL COMMENT 'the subscription type or service id',
  `regdate` datetime DEFAULT NULL,
  `qrcodetxt` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_students_fcm_accounts` (`account_id`),
  KEY `FK_fcm_students_fcm_services` (`service_id`),
  CONSTRAINT `FK_fcm_students_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_students_fcm_services` FOREIGN KEY (`service_id`) REFERENCES `fcm_services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_students`
--

LOCK TABLES `fcm_students` WRITE;
/*!40000 ALTER TABLE `fcm_students` DISABLE KEYS */;
INSERT INTO `fcm_students` VALUES (2,'Πέτκος Βαγγέλης',NULL,'GR','Ζωγράφου','','male','6948892171','vagpet@gmail.com',1,1,1,'2016-05-04 17:18:58','JH8RIEHMZkXre6n'),(4,'Τρορής Γιώργος',NULL,'GR','','','male','','',1,1,1,'2016-05-04 17:27:00','UGNUM2L2ayQIEUn'),(5,'Κωνσταντίνος Zώτος','1984-07-07','GR','','','male','6936997469','zwtosk@hotmail.gr',1,1,1,'2016-05-04 17:30:10','rlld9OAIk9PGXYO'),(6,'Άρης Οικονόμου','1979-07-24','GR','','','male','6957200403','aristeidis.economou@gmail.com',1,1,1,'2016-05-04 17:56:40','vtmJZRVlvBJPTEo'),(7,'Ιωάννης Παρμάκης',NULL,'GR','','','male','6983509335','salonikios20@yahoo.gr',1,1,1,'2016-05-04 19:15:19','VttZQ738j9QTxqO'),(8,'Δημήτρης Ζαρμπούρης','1981-05-26','GR','','','male','6945328743','meskalino29@yahoo.gr',1,1,1,'2016-05-04 19:18:00','TgircFzHqvD3FZj'),(10,'Γιώργος Πρόφης',NULL,'GR','','','male','6992825368','profis.ilias@gmail.com',1,1,1,'2016-05-04 19:46:34','suOWo1dnPPVYd18'),(11,'Μάκης Αναστασίου',NULL,'GR','','','male','6974526064','eythimiosanastasiou@yahoo.com',1,1,1,'2016-05-04 21:12:54','xybAriquxpjy8mY'),(12,'Φωτονιάτας Γιάννης',NULL,'GR','','','male','6944557778','fotoniatas@yahoo.com',1,1,1,'2016-05-04 22:31:22','078YzNbqt1tTp9t'),(13,'Άγγελος Θωμάς','1993-02-22','GR','','','male','6983078518','',1,1,1,'2016-05-05 17:53:02','wB1aQNZ10aRZzt1'),(14,'Ευάγγελος Τσώλης','1985-06-17','GR','','','male','6939268146','legionaire215@hotmail.com',1,1,1,'2016-05-05 17:54:36','yEVhGPd1QcA2ZlL'),(15,'Τσίλιας Πάρης','1981-06-19','GR','','','male','6974303530','parinhoo@yahoo.gr',1,1,1,'2016-05-05 20:58:39','ICnWTFTRTCYJzsd'),(16,'Άγαπη Βασιλική Ζαρμακούπη','1995-03-30','GR','','','female','6982793323','zarmiagapi@gmail.com',1,1,1,'2016-05-06 20:36:17','ggDIHQ73JCnlAro'),(17,'Μάριος Αναστασίου','1989-05-14','GR','','','male','6948213635','mariosanastasioy90@yahoo.com',1,1,1,'2016-05-06 22:12:45','a0FCDa82jOb6jaE'),(18,'Παναγιώτης Αρχοντάκης','1991-08-19','GR','','','male','6947283291','panarch1991@gmail.com',1,1,1,'2016-05-06 22:15:27','NeWTz8mLqF7ANSt'),(19,'Ιώαννης Μπεκιάρης','1985-01-26','GR','','','male','6974580758','bekiarisgiannis85@gmail.com',1,1,1,'2016-05-07 17:02:10','dFn6YvfgKh6EPs1'),(20,'Κλεάνθος Μηχάλης','1993-10-19','GR','','','male','6944040870','mikyyg9@gmail.com',1,1,1,'2016-05-09 18:02:15','u60BuUoXS3BDoV5'),(21,'Κωσταρόπουλος Θωμάς','1995-04-13','GR','','','male','6978687068','stud3132025@aua.gr',1,1,1,'2016-05-09 18:07:53','MdlOW5FgfeJoglS'),(22,'Ανδριόπουλος Γιώργος',NULL,'GR','','','male','','',1,1,1,'2016-05-09 22:22:02','G7FW5nUh58iJEZw'),(23,'Σταθοπούλου Μάγδα',NULL,'GR','','','female','','',1,1,1,'2016-05-09 22:22:51','Ef3QSPTWJTC45nO'),(24,'Γεργόπουλος Θοδωρής',NULL,'GR','','','male','','',1,1,1,'2016-05-09 22:29:16','VhMzJ92vc2EGzMA'),(25,'Ελένη Ζαγουράκη',NULL,'GR','','','male','','',1,1,1,'2016-05-09 22:29:48','JxKhHlLJdGaomMP'),(26,'Μαρία Μουλά',NULL,'GR','','','male','','',1,1,1,'2016-05-09 22:30:12','fJn4KpFJS1na6CJ'),(27,'Λάμπρου Γεώργος',NULL,'GR','','','male','','',1,1,1,'2016-05-09 22:30:42','dnPqdcJI2vUiZMt'),(28,'Νικολέτα Μισιάν',NULL,'GR','','','male','','',1,1,1,'2016-05-09 22:31:11','nWZ1HdBDtGAUqFq'),(29,'Καφάσης Θεόδορος',NULL,'GR','','','male','','',1,1,1,'2016-05-09 22:32:03','VK03jc4Y8XG9ZMb'),(30,'Φίλιπος Αλτανόπουλος',NULL,'GR','','','male','','',1,1,1,'2016-05-09 22:32:33','2YQqBGULkda0bal'),(31,'Γιάννης Δράκος','1982-10-07','GR','','','male','2107621410','john_drakos@hotmail.com',1,1,1,'2016-05-10 18:14:33','xCCFbCaPiEU5HFr'),(32,'Βραχνός Δημήτρης',NULL,'GR','','','male','','',1,1,1,'2016-05-11 19:16:48','8KaQbi6JZFVbJID'),(33,'Κουνατίδης Χάρης','1994-10-06','GR','','','male','6983972170','xarisxaris1994@yahoo.gr',1,1,1,'2016-05-11 19:21:07','N8NGFrJ2olTb355'),(34,'Χρήστος Μπαλάφας','1988-07-27','GR','','','male','6980773615','chris.balafas.1@gmail.com',1,1,1,'2016-05-11 20:48:44','4gmGa5pws9WWpwa'),(35,'Κότση Αλεξάνδρα',NULL,'GR','','','male','','',1,1,1,'2016-05-12 22:24:24','NYOOqD66FlZJRBA'),(36,'Τσιρογιάννης Παναγιώτης',NULL,'GR','','','male','','',1,1,1,'2016-05-12 22:24:58','XRlst03Iv8HWLBK'),(37,'Σόλονας Πετρακόπουλος',NULL,'GR','','','male','','',1,1,1,'2016-05-12 22:25:30','etgbcmqrUCXwY0c'),(38,'Ιωαννου Αντώνιος','1991-11-19','GR','','','male','6971612966','',1,1,1,'2016-05-16 17:54:24','SuI0u1sHOHt7O6s'),(39,'Έυη Παγωνη',NULL,'GR','','','female','','',1,1,1,'2016-05-16 20:05:24','DYkF5gXMN852DAk'),(40,'Διονύσης Παπαζής',NULL,'GR','','','male','','',1,1,1,'2016-05-16 20:06:18','9V3LkwvYjLr4juO'),(41,'Λάμπρος Οικονομόπουλος',NULL,'GR','','','male','','',1,1,1,'2016-05-16 20:07:07','E235NIie54yIEjG'),(42,'Γιαννης Ανδρολιακάκης',NULL,'GR','','','male','','',1,1,1,'2016-05-16 22:31:06','v3915pPppi3cXP2'),(43,'Νίκος Κουρέας',NULL,'GR','','','male','','',1,1,1,'2016-05-20 17:43:55','eGzuP3DES3BfG9A'),(44,'Ντένις Φουρτζιου',NULL,'GR','','','male','','',1,1,1,'2016-05-20 17:45:09','t6ja3u0rcGb0E1k'),(45,'Κωνσταντίνος Χριστοφής','1991-03-08','GR','','','male','6994765767','konsand@sytanet.com.cy',1,1,1,'2016-05-26 18:12:42','WClqRPZUQtPLuib'),(46,'Κανόπουλος Χρίστος','1967-09-04','GR','','','male','6948111585','ckanopoulos@hotmail.com',1,1,1,'2016-05-27 22:15:38','tTuUZEOlMQskP48'),(47,'Σωτίρης Λαλάζης',NULL,'GR','','','male','','',1,1,1,'2016-06-08 20:13:49','cAr5P2w1wDq9amK'),(48,'Βασίλης Νάκας',NULL,'GR','','','male','','',1,1,1,'2016-06-08 20:16:05','d4Fzp5xvsyrCzll'),(49,'Ζώτος Κωνσταντίντος',NULL,'GR','','','male','','',1,1,1,'2016-06-08 20:17:25','wvLIjrGwz6reoIR'),(50,'Τσόλης Παναγιώτης',NULL,'GR','','','male','','',1,1,1,'2016-06-08 20:20:49','Oo0jJDbDYJY9ZLz'),(51,'Κωσταρόπουλος Σταύρος',NULL,'GR','','','male','','',1,1,1,'2016-07-11 19:37:43','JKlJIJyEVTZ3IIJ'),(52,'Παπαζής Σωτήρης',NULL,'GR','','','male','','',1,1,1,'2016-07-11 19:45:30','9W9oGWG4Qyhkm8o'),(53,'Σφυρή Αλεξάνδρα',NULL,'GR','','','female','6973061032','hammeraki@gmail.com',1,1,1,'2016-09-05 19:43:13','isv1xQ1BaKx8MSn'),(54,'Φραγκουδάκης Βασίλης',NULL,'GR','','','male','','',1,1,1,'2016-09-06 20:26:29','3rtpmMdWvSmRsjC'),(55,'Βηδάλης Κωνστσντίνος',NULL,'GR','','','male','','',1,1,1,'2016-09-09 18:12:09','tGccEa7PImaIwfW'),(56,'Ανδρεαδάκη Άντα',NULL,'GR','','','female','','',1,1,1,'2016-09-12 20:37:34','AphxEerxEkc3Mxv'),(57,'στεργιούδας παύλος',NULL,'GR','','','male','','',1,1,1,'2016-11-07 19:53:43','FLcQtPab4GMZxyT'),(58,'Αλεξόπουλος Νικος',NULL,'GR','','','male','','',1,1,1,'2016-11-08 21:07:52','fu9Po0IrpGW5LC3'),(59,'Γιώργος Μαλαφέκας','1981-03-21','GR','','','male','','gmalaf@hotmail.com',1,1,1,'2017-04-21 22:07:31','AroMiT7k35opdvh'),(60,'Σιδεράς Σπύρος',NULL,'GR','','','male','','',1,1,1,'2017-04-24 18:41:55','hC6pCBmQE1fb7dd'),(61,'Βαλάντις Στράγκα',NULL,'GR','','','male','','',1,1,1,'2017-04-24 18:43:32','xd0fvFLN9HkR512'),(62,'M Nemati',NULL,'GR','','','male','','',1,1,1,'2017-04-24 18:46:49','TpRJQHWLd3sYX49'),(63,'Νάζαρης Βαγγέλης',NULL,'GR','','','male','','',1,1,1,'2017-04-24 18:48:18','IxQeOVYqCAyWYv9'),(64,'Σοφιανός Χρίστος','1997-12-29','GR','','','male','6945926261','chr.sofianos@gmail.com',1,1,1,'2017-04-24 18:49:22','ve9Tkdsm8iWD9jx'),(65,'Κοσκινάς Γιώργος',NULL,'GR','','','male','','',1,1,1,'2017-04-24 18:50:49','k4AJx9ZtP4Pfk4Z'),(66,'Λικούδι Ιωάννα',NULL,'GR','','','female','','',1,0,1,'2017-04-24 18:53:27','2BRNhLG5XpddxBI'),(67,'Λιάπης Γιωργος',NULL,'GR','','','male','','',1,1,1,'2017-04-24 18:54:29','1ZYSQNAVxU4AqNt'),(68,'Αναγνωστόπουλος Θέμης',NULL,'GR','','','male','','',1,1,1,'2017-04-24 18:57:47','4nqq6Jh0TkkOau1'),(69,'Κωνσταντόπουλος Θωμάς',NULL,'GR','','','male','','',1,1,1,'2017-04-24 19:00:01','W96kZxtJ1AscFYp'),(70,'Μητροτζούλης Άρης',NULL,'GR','','','male','','',1,1,1,'2017-04-24 19:03:05','c0W9HDd3aDZWyCZ'),(71,'Σταράκης Μανόλης',NULL,'GR','','','male','','',1,1,1,'2017-04-24 19:05:31','9mEsyxm5tyP6LoE'),(72,'Ζαχαρόπουλος Γιάννης',NULL,'GR','','','male','','',1,1,1,'2017-04-24 19:08:07','eKuUHiQccJVDXVG'),(73,'Χρυσοβαλάντης Στράγκας','1997-03-20','GR','','','male','','straval1997@gmail.com',1,1,1,'2017-05-02 18:16:32','MHbAKEnC8vQf1wq'),(74,'Δενδρινός Γεράσιμος','1990-11-05','GR','','','male','6982836784','dendrinos.gerasimos@gmail.com',1,1,1,'2017-05-09 20:20:13','r0ntEbjOS93OyZN'),(75,'Κουτσούκος Δημήτρης','1988-07-03','GR','','','male','6986892123','dimitriskoutsoukos65@gmail.com',1,1,1,'2017-05-10 18:31:10','hFjhBGdHAAgOBPz'),(76,'Χατζηγεωργίου Αντρέας','1995-07-19','GR','','','male','6980099522','hadjigeorgiou.an@hotmail.com',1,1,1,'2017-05-10 19:57:18','NumJozHPOILtMf3'),(77,'Κόνικκος Ραφαήλ','1997-12-21','GR','','','male','6963780335','',1,1,1,'2017-05-10 19:58:10','Kw1xeJnF3EaqMYJ'),(78,'Νάτσης Άλκης','1995-08-11','GR','','','male','6971564050','alkinoos.n@gmail.com',1,1,1,'2017-05-10 22:34:55','gvXUaPh2BRbYxao'),(79,'Πετρόνιος Κωσταντίνος','1995-08-03','GR','','','male','6970011462','kspetronios@yahoo.gr',1,1,1,'2017-05-10 22:35:26','3rR68hw3xwgs88F'),(80,'Ράντος Λευτέρης','2003-10-09','GR','','','male','','',1,1,1,'2017-05-15 18:43:34','1eAOZHQj3TogrCb'),(81,'Μιχάλης Χοδρουάκης',NULL,'GR','','','male','','',1,1,1,'2017-07-21 15:56:34','fSfHmzCTcg4fQ8s'),(82,'Κοψιδάς Γιάννης','1991-10-01','GR','','','male','6956519799','kopsidas.i@gmail.com',1,1,1,'2017-09-08 17:02:08','IVW7MuTSpaG632z'),(83,'Χάρης Αργυρόπουλος',NULL,'GR','','','male','6940726229','charis.argyropoulos96@gmail.com',1,1,1,'2017-09-08 18:17:22','d56ocw5MCpRYKEU'),(84,'Γιάννης Δρίζης','1988-06-25','GR','','','male','6930900058','zweistein316@hotmail.com',1,1,1,'2017-09-09 12:57:40','DIHeOPeVunekZQO'),(85,'Γιώργος κωνσταντάκης',NULL,'GR','','','male','','',1,1,1,'2017-09-18 16:34:36','X9E1ne4EKcPTC3x'),(86,'Patrick Ares','1991-03-24','GR','','','male','6941557008','patrickares1991@gmail.com',1,1,1,'2017-09-22 19:40:01','HaayKmQyFqPocHB'),(87,'Βασίλης Μαντζάνας',NULL,'GR','','','male','6977538042','matzas4thewin@yahoo.gr',1,1,1,'2017-10-02 18:02:28','UpOxkHL5DUXulsU'),(88,'Γιάννης Διαμαντής',NULL,'GR','','','male','6972116242','',1,1,1,'2017-10-04 17:01:07','WMV6uJ1MRIzdSpe'),(89,'Θανάσης Σιάκος',NULL,'GR','','','male','6973560057','athasiakos@gmail.com',1,1,1,'2017-10-04 17:58:17','nWHwlNfWvJuQvc6'),(90,'Βαρθολομέος Σταύρος',NULL,'GR','','','male','6971788553','',1,1,1,'2017-10-10 20:02:50','bl3aVHinD2idQKH'),(91,'Τραφαλής Γιώργος',NULL,'GR','','','male','6995636260','george.naf7@hotmail.com',1,1,1,'2017-10-11 18:32:48','zqxjLSDTZCExO0R'),(92,'Τζακαπίδης Αθανάσιος',NULL,'GR','','','male','','',1,1,2,'2017-10-25 14:34:37','axgHhRBrKENfgzg'),(93,'Αποσπόρης Γιάννης',NULL,'GR','','','male','6992988425','test@testy.vg',1,1,1,'2017-10-26 14:08:48','HaN1zagK8Qw6djT'),(132,'Μπάμπης Αυλακιώτης','1996-05-17',NULL,'','','male','6976133450','charakambos96@gmail.com',1,1,1,'2019-09-05 00:00:00','OZfUUZFn0dNWd4q'),(133,'Άγγελος Παππαδόπουλος','1997-05-11',NULL,'','','male','6987950913','aggelos_roudy@hotmail.com',1,1,1,'2019-09-05 00:00:00','CFmp9GiT7h21aPU'),(134,'Γιώργος Παπακωνσταντίνου ','1990-10-10',NULL,'','','male','0000000000','info@nomail.com',1,1,1,'2019-09-09 00:00:00','r7lU5vr3IZaJxgm'),(135,'Παναγιώτης Κόκκινος ','2019-01-01',NULL,'','','male','0000000000','info@nomail.com',1,1,1,'2019-09-09 00:00:00','IhAWmXafDzWRtlt'),(136,'Θεοδωρος Μοσχοβάκης','2001-01-01',NULL,'','','male','00000000','info@nomail.com',1,1,1,'2019-09-09 00:00:00','uom7ZTWHSYDQ7XB'),(137,'Χριστίνα παπαντζανάκη','2013-06-03',NULL,'','','male','6979091319','christina2089@hotmail.com',1,1,1,'2019-09-01 00:00:00','votqvgh5TgPBl0k');
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
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_students_emails_fcm_students` (`student_id`),
  KEY `FK_fcm_students_emails_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_students_emails` FOREIGN KEY (`student_id`) REFERENCES `fcm_students` (`id`),
  CONSTRAINT `FK_fcm_students_emails_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_students_emails_fcm_students` FOREIGN KEY (`student_id`) REFERENCES `fcm_students` (`id`)
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
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_students_payments_schedule_fcm_students` (`student_id`),
  KEY `FK_fcm_students_payments_schedule_fcm_accounts` (`account_id`),
  KEY `FK_fcm_students_payments_schedule_fcm_services` (`service_id`),
  CONSTRAINT `FK_fcm_students_payments_schedule` FOREIGN KEY (`student_id`) REFERENCES `fcm_students` (`id`),
  CONSTRAINT `FK_fcm_students_payments_schedule_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_students_payments_schedule_fcm_services` FOREIGN KEY (`service_id`) REFERENCES `fcm_services` (`id`),
  CONSTRAINT `FK_fcm_students_payments_schedule_fcm_students` FOREIGN KEY (`student_id`) REFERENCES `fcm_students` (`id`)
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
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_students_phones_fcm_students` (`student_id`),
  KEY `FK_fcm_students_phones_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_students_phones` FOREIGN KEY (`student_id`) REFERENCES `fcm_students` (`id`),
  CONSTRAINT `FK_fcm_students_phones_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`),
  CONSTRAINT `FK_fcm_students_phones_fcm_students` FOREIGN KEY (`student_id`) REFERENCES `fcm_students` (`id`)
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
  `birthdate` date DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `teacherFileImage` varchar(500) DEFAULT NULL,
  `teachertext` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fcm_teachers_fcm_accounts` (`account_id`),
  CONSTRAINT `FK_fcm_teachers_fcm_accounts` FOREIGN KEY (`account_id`) REFERENCES `fcm_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_teachers`
--

LOCK TABLES `fcm_teachers` WRITE;
/*!40000 ALTER TABLE `fcm_teachers` DISABLE KEYS */;
INSERT INTO `fcm_teachers` VALUES (1,'Mohamed soimu','1999-10-10','athens','gatoules 23',NULL,'soimu@gmail.com','2018-01-06 11:12:47',1,NULL,NULL),(2,'Makhs Theotokatos','2017-12-14','Athens','','','',NULL,1,'http://localhost/fightclubmanager_v2/accountfiles/ac_1/teachers/theotokatos3.png',''),(5,'Eythymios Theotokatos','1975-10-10','Greece','Dodekanisou 18','2107798659','themhz@gmail.com','2015-09-29 00:00:00',1,'http://localhost/fightclubmanager_v2/accountfiles/ac_1/teachers/WIN_20170131_19_10_35_Pro.jpg',NULL),(7,'Γκάγκο','2017-05-14','','','6984057388','','2016-05-04 00:00:00',1,'http://localhost/fightclubmanager_v2/accountfiles/ac_1/teachers/boxing2.png','eeee');
/*!40000 ALTER TABLE `fcm_teachers` ENABLE KEYS */;
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

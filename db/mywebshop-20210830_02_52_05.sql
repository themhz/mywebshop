-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: mywebshop
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `locations_address` (`location_id`),
  KEY `user_address` (`user_id`),
  CONSTRAINT `locations_address` FOREIGN KEY (`location_id`) REFERENCES `locatons` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_address` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,0,'Languages'),(2,1,'Java'),(3,1,'Python'),(4,1,'Artificial Inteligence'),(5,1,'PHP'),(6,1,'C#'),(7,1,'Css'),(8,1,'Javascript'),(9,1,'Html'),(10,1,'SQL'),(11,2,'Object oriented patterns');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locatons`
--

DROP TABLE IF EXISTS `locatons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locatons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dimos` varchar(45) DEFAULT NULL,
  `nomos` varchar(45) DEFAULT NULL,
  `vatid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vatcode_locations` (`vatid`),
  CONSTRAINT `vatcode_locations` FOREIGN KEY (`vatid`) REFERENCES `vatcodes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locatons`
--

LOCK TABLES `locatons` WRITE;
/*!40000 ALTER TABLE `locatons` DISABLE KEYS */;
INSERT INTO `locatons` VALUES (1,'Αγίων Αναργύρων - Καματερού','Αττικής',1),(2,'Γόρτυνας','Ηρακλείου',1),(3,'Αγίου Δημητρίου','Αττικής',1),(4,'Αγίου Ευστρατίου','Λέσβου',1),(5,'Ικαρίας','Σάμου',1),(6,'Αγίου Νικολάου','Λασιθίου',1),(7,'Διονύσου','Αττικής',1),(8,'Δελφών','Φωκίδας',1),(9,'Άνδρου','Κυκλάδων',1),(10,'Βιάννου','Ηρακλείου',1),(11,'Γεωργίου Καραϊσκάκη','Άρτας',1),(12,'Φυλής','Αττικής',1),(13,'Άργους - Μυκηνών','Αργολίδας',1),(14,'Ορεστίδος','Καστοριάς',1),(15,'Αρταίων','Άρτας',1),(16,'Βόρειας Κυνουρίας','Αρκαδίας',1),(17,'Έδεσσας','Πέλλας',1),(18,'Ιάσμου','Ροδόπης',1),(19,'Ιλίου','Αττικής',1),(20,'Ιητών','Κυκλάδων',1),(21,'Αίγινας','Αττικής',1),(22,'Αιγιαλείας','Αχαΐας',1),(23,'Αγίας Βαρβάρας','Αττικής',1),(24,'Δωδώνης','Ιωαννίνων',1),(25,'Λέρου','Δωδεκανήσου',1),(26,'Αγίας Παρασκευής','Αττικής',1),(27,'Αμαρίου','Ρεθύμνης',1),(28,'Αγιάς','Λάρισας',1),(29,'Αγρινίου','Αιτωλοακαρνανίας',1),(30,'Αθηναίων','Αττικής',1),(31,'Αιγάλεω','Αττικής',1),(32,'Πύδνας-Κολινδρού','Πιερίας',1),(33,'Αλιάρτου - Θεσπιέων','Βοιωτίας',1),(34,'Αλεξάνδρειας','Ημαθίας',1),(35,'Αλεξανδρούπολης','Έβρου',1),(36,'Κύμης-Αλιβερίου','Εύβοιας',1),(37,'Αλμυρού','Μαγνησίας',1),(38,'Ήλιδας','Ηλείας',1),(39,'Αμοργού','Κυκλάδων',1),(40,'Αμπελοκήπων-Μενεμένης','Θεσσαλονίκης',1),(41,'Αμφιλοχίας','Αιτωλοακαρνανίας',1),(42,'Αμυνταίου','Φλώρινας',1),(43,'Ανάφης','Κυκλάδων',1),(44,'Αργιθέας','Καρδίτσας',1),(45,'Αντιπάρου','Κυκλάδων',1),(46,'Ανωγείων','Ρεθύμνης',1),(47,'Σίφνου','Κυκλάδων',1),(48,'Βόρειας Κέρκυρας','Κέρκυρας',1),(49,'Νοτίου Πηλίου','Μαγνησίας',1),(50,'Αργοστολίου','Κεφαλληνίας',1),(51,'Ελληνικού-Αργυρούπολης','Αττικής',1),(52,'Αλμωπίας','Πέλλας',1),(53,'Αρχαίας Ολυμπίας','Ηλείας',1),(54,'Επιδαύρου','Αργολίδας',1),(55,'Ζαγορίου','Ιωαννίνων',1),(56,'Ασπροπύργου','Αττικής',1),(57,'Ξηρομέρου','Αιτωλοακαρνανίας',1),(58,'Λοκρών','Φθιώτιδας',1),(59,'Αχαρνών','Αττικής',1),(60,'Βέροιας','Ημαθίας',1),(61,'Βελβεντού','Κοζάνης',1),(62,'Ρήγα Φεραίου','Μαγνησίας',1),(63,'Κεντρικών Τζουμέρκων','Άρτας',1),(64,'Βάρης - Βούλας - Βουλιαγμένης','Αττικής',1),(65,'Βριλησσίων','Αττικής',1),(66,'Αποκορώνου','Χανίων',1),(67,'Βόλου','Μαγνησίας',1),(68,'Ακτίου-Βόνιτσας','Αιτωλοακαρνανίας',1),(69,'Βύρωνος','Αττικής',1),(70,'Μαλεβιζίου','Ηρακλείου',1),(71,'Παξών','Κέρκυρας',1),(72,'Παλλήνης','Αττικής',1),(73,'Γαλατσίου','Αττικής',1),(74,'Τροιζηνίας - Μεθάνων','Αττικής',1),(75,'Πηνειού','Ηλείας',1),(76,'Αβδήρων','Ξάνθης',1),(77,'Πλατανιά','Χανίων',1),(78,'Πέλλας','Πέλλας',1),(79,'Γλυφάδας','Αττικής',1),(80,'Χερσονήσου','Ηρακλείου',1),(81,'Γρεβενών','Γρεβενών',1),(82,'Ανατολικής Μάνης','Λακωνίας',1),(83,'Δάφνης - Υμηττού','Αττικής',1),(84,'Διστόμου-Αράχοβας-Αντίκυρας','Βοιωτίας',1),(85,'Δεσκάτης','Γρεβενών',1),(86,'Γορτυνίας','Αρκαδίας',1),(87,'Διδυμοτείχου','Έβρου',1),(88,'Δομοκού','Φθιώτιδας',1),(89,'Δράμας','Δράμας',1),(90,'Ελασσόνας','Λάρισας',1),(91,'Ελαφονήσου','Λακωνίας',1),(92,'Ζίτσας','Ιωαννίνων',1),(93,'Παγγαίου','Καβάλας',1),(94,'Ελευσίνας','Αττικής',1),(95,'Ερέτριας','Εύβοιας',1),(96,'Σύρου - Ερμούπολης','Κυκλάδων',1),(97,'Μινώα Πεδιάδας','Ηρακλείου',1),(98,'Τοπείρου','Ξάνθης',1),(99,'Κορδελιού-Ευόσμου','Θεσσαλονίκης',1),(100,'Ζακύνθου','Ζακύνθου',1),(101,'Ζαγοράς-Μουρεσίου','Μαγνησίας',1),(102,'Ζαχάρως','Ηλείας',1),(103,'Βέλου-Βόχας','Κορινθίας',1),(104,'Ζωγράφου','Αττικής',1),(105,'Ηγουμενίτσας','Θεσπρωτίας',1),(106,'Ηλιούπολης','Αττικής',1),(107,'Ηράκλειας','Σερρών',1),(108,'Ηρακλείου','Αττικής',1),(109,'Ηρακλείου','Ηρακλείου',1),(110,'Θάσου','Καβάλας',1),(111,'Θέρμης','Θεσσαλονίκης',1),(112,'Θέρμου','Αιτωλοακαρνανίας',1),(113,'Θηβαίων','Βοιωτίας',1),(114,'Θήρας','Κυκλάδων',1),(115,'Θεσσαλονίκης','Θεσσαλονίκης',1),(116,'Ιεράπετρας','Λασιθίου',1),(117,'Αριστοτέλη','Χαλκιδικής',1),(118,'Ιθάκης','Ιθάκης',1),(119,'Κέας','Κυκλάδων',1),(120,'Ιστιαίας - Αιδηψού','Εύβοιας',1),(121,'Ιωαννιτών','Ιωαννίνων',1),(122,'Καρπάθου','Δωδεκανήσου',1),(123,'Καρύστου','Εύβοιας',1),(124,'Δυτικής Αχαΐας','Αχαΐας',1),(125,'Κάτω Νευροκοπίου','Δράμας',1),(126,'Αμφίκλειας-Ελάτειας','Φθιώτιδας',1),(127,'Κεντρικής Κέρκυρας & Διαποντίων ν.','Κέρκυρας',1),(128,'Κιμώλου','Κυκλάδων',1),(129,'Κισσάμου','Χανίων',1),(130,'Καβάλας','Καβάλας',1),(131,'Καισαριανής','Αττικής',1),(132,'Καλαβρύτων','Αχαΐας',1),(133,'Αλίμου','Αττικής',1),(134,'Καλαμάτας','Μεσσηνίας',1),(135,'Καλαμαριάς','Θεσσαλονίκης',1),(136,'Μετεώρων','Τρικάλων',1),(137,'Δοξάτου','Δράμας',1),(138,'Καλλιθέας','Αττικής',1),(139,'Δυτικής Λέσβου','Λέσβου',1),(140,'Πωγωνίου','Ιωαννίνων',1),(141,'Σαρωνικού','Αττικής',1),(142,'Καμένων Βούρλων','Φθιώτιδας',1),(143,'Πάργας','Πρέβεζας',1),(144,'Καρδίτσας','Καρδίτσας',1),(145,'Δυτικής Μάνης','Μεσσηνίας',1),(146,'Δυτικής Σάμου','Σάμου',1),(147,'Καρπενησίου','Ευρυτανίας',1),(148,'Κασσάνδρας','Χαλκιδικής',1),(149,'Καστοριάς','Καστοριάς',1),(150,'Γαύδου','Χανίων',1),(151,'Κατερίνης','Πιερίας',1),(152,'Μεγανησίου','Λευκάδας',1),(153,'Αγράφων','Ευρυτανίας',1),(154,'Κερατσινίου - Δραπετσώνας','Αττικής',1),(155,'Κηφισιάς','Αττικής',1),(156,'Σικυωνίων','Κορινθίας',1),(157,'Κιλκίς','Κιλκίς',1),(158,'Κοζάνης','Κοζάνης',1),(159,'Κομοτηνής','Ροδόπης',1),(160,'Κορυδαλλού','Αττικής',1),(161,'Κρωπίας','Αττικής',1),(162,'Χαλκηδόνος','Θεσσαλονίκης',1),(163,'Ανδρίτσαινας - Κρεστένων','Ηλείας',1),(164,'Ερμιονίδας','Αργολίδας',1),(165,'Τριφυλίας','Μεσσηνίας',1),(166,'Κω','Δωδεκανήσου',1),(167,'Κόνιτσας','Ιωαννίνων',1),(168,'Κορινθίων','Κορινθίας',1),(169,'Κυθήρων','Αττικής',1),(170,'Κύθνου','Κυκλάδων',1),(171,'Λάρισας','Λάρισας',1),(172,'Μαντουδίου-Λίμνης-Αγίας Άννας','Εύβοιας',1),(173,'Λαγκαδά','Θεσσαλονίκης',1),(174,'Πρεσπών','Φλώρινας',1),(175,'Λαμιέων','Φθιώτιδας',1),(176,'Λαυρεωτικής','Αττικής',1),(177,'Λειψών','Δωδεκανήσου',1),(178,'Λευκάδας','Λευκάδας',1),(179,'Νότιας Κέρκυρας','Κέρκυρας',1),(180,'Ανδραβίδας - Κυλλήνης','Ηλείας',1),(181,'Νότιας Κυνουρίας','Αρκαδίας',1),(182,'Ληξουρίου','Κεφαλληνίας',1),(183,'Λεβαδέων','Βοιωτίας',1),(184,'Δωρίδος','Φωκίδας',1),(185,'Δίου-Ολύμπου','Πιερίας',1),(186,'Λουτρακίου-Αγίων Θεοδώρων','Κορινθίας',1),(187,'Μάνδρας-Ειδυλλίας','Αττικής',1),(188,'Μεγαρέων','Αττικής',1),(189,'Μετσόβου','Ιωαννίνων',1),(190,'Μήλου','Κυκλάδων',1),(191,'Τεμπών','Λάρισας',1),(192,'Νισύρου','Δωδεκανήσου',1),(193,'Μαραθώνος','Αττικής',1),(194,'Μαρκόπουλου Μεσογαίας','Αττικής',1),(195,'Αμαρουσίου','Αττικής',1),(196,'Αγαθονησίου','Δωδεκανήσου',1),(197,'Τήλου','Δωδεκανήσου',1),(198,'Μεγίστης','Δωδεκανήσου',2),(199,'Αγκιστρίου','Αττικής',1),(200,'Μεγαλόπολης','Αρκαδίας',1),(201,'Πεντέλης','Αττικής',1),(202,'Οιχαλίας','Μεσσηνίας',1),(203,'Ιεράς Πόλεως Μεσολογγίου','Αιτωλοακαρνανίας',1),(204,'Μεσσήνης','Μεσσηνίας',1),(205,'Μεταμορφώσεως','Αττικής',1),(206,'Φαιστού','Ηρακλείου',1),(207,'Μονεμβασιάς','Λακωνίας',1),(208,'Λίμνης Πλαστήρα','Καρδίτσας',1),(209,'Μοσχάτου-Ταύρου','Αττικής',1),(210,'Μουζακίου','Καρδίτσας',1),(211,'Μυτιλήνης','Λέσβου',1),(212,'Μυκόνου','Κυκλάδων',1),(213,'Λήμνου','Λήμνου',1),(214,'Νάξου & Μικρών Κυκλάδων','Κυκλάδων',1),(215,'Νάουσας','Ημαθίας',1),(216,'Νέας Ζίχνης','Σερρών',1),(217,'Νέας Ιωνίας','Αττικής',1),(218,'Νέας Προποντίδας','Χαλκιδικής',1),(219,'Νέας Σμύρνης','Αττικής',1),(220,'Νέας Φιλαδελφείας - Νέας Χαλκηδόνος','Αττικής',1),(221,'Κιλελέρ','Λάρισας',1),(222,'Νίκαιας - Αγίου Ιωάννη Ρέντη','Αττικής',1),(223,'Ναυπακτίας','Αιτωλοακαρνανίας',1),(224,'Ναυπλιέων','Αργολίδας',1),(225,'Νεμέας','Κορινθίας',1),(226,'Νεστορίου','Καστοριάς',1),(227,'Βισαλτίας','Σερρών',1),(228,'Σιθωνίας','Χαλκιδικής',1),(229,'Ξάνθης','Ξάνθης',1),(230,'Ξυλοκάστρου-Ευρωστίνης','Κορινθίας',1),(231,'Οινουσσών','Χίου',1),(232,'Ορεστιάδας','Έβρου',1),(233,'Ορχομενού','Βοιωτίας',1),(234,'Πάρου','Κυκλάδων',1),(235,'Πάτμου','Δωδεκανήσου',1),(236,'Πατρέων','Αχαΐας',1),(237,'Μυλοποτάμου','Ρεθύμνης',1),(238,'Περάματος','Αττικής',1),(239,'Νικόλαου Σκουφά','Άρτας',1),(240,'Παιανίας','Αττικής',1),(241,'Παλαιού Φαλήρου','Αττικής',1),(242,'Καντάνου - Σελίνου','Χανίων',1),(243,'Παλαμά','Καρδίτσας',1),(244,'Πυλαίας-Χορτιάτη','Θεσσαλονίκης',1),(245,'Σουλίου','Θεσπρωτίας',1),(246,'Παρανεστίου','Δράμας',1),(247,'Αλοννήσου','Μαγνησίας',1),(248,'Αρχανών - Αστερουσίων','Ηρακλείου',1),(249,'Πειραιώς','Αττικής',1),(250,'Θερμαϊκού','Θεσσαλονίκης',1),(251,'Περιστερίου','Αττικής',1),(252,'Πετρούπολης','Αττικής',1),(253,'Λυκόβρυσης-Πεύκης','Αττικής',1),(254,'Πολυγύρου','Χαλκιδικής',1),(255,'Παιονίας','Κιλκίς',1),(256,'Βορείων Τζουμέρκων','Ιωαννίνων',1),(257,'Πρέβεζας','Πρέβεζας',1),(258,'Προσοτσάνης','Δράμας',1),(259,'Εορδαίας','Κοζάνης',1),(260,'Καλυμνίων','Δωδεκανήσου',1),(261,'Πόρου','Αττικής',1),(262,'Πύλης','Τρικάλων',1),(263,'Πύλου - Νέστορος','Μεσσηνίας',1),(264,'Πύργου','Ηλείας',1),(265,'Ρεθύμνης','Ρεθύμνης',1),(266,'Ραφήνας-Πικερμίου','Αττικής',1),(267,'Αμφίπολης','Σερρών',1),(268,'Ρόδου','Δωδεκανήσου',1),(269,'Σάμης','Κεφαλληνίας',1),(270,'Ανατολικής Σάμου','Σάμου',1),(271,'Μαρωνείας-Σαπών','Ροδόπης',1),(272,'Σερβίων','Κοζάνης',1),(273,'Σερίφου','Κυκλάδων',1),(274,'Σερρών','Σερρών',1),(275,'Σικίνου','Κυκλάδων',1),(276,'Δέλτα','Θεσσαλονίκης',1),(277,'Σαλαμίνας','Αττικής',1),(278,'Σαμοθράκης','Έβρου',1),(279,'Σητείας','Λασιθίου',1),(280,'Βοΐου','Κοζάνης',1),(281,'Σιντικής','Σερρών',1),(282,'Ευρώτα','Λακωνίας',1),(283,'Σκιάθου','Μαγνησίας',1),(284,'Σκοπέλου','Μαγνησίας',1),(285,'Σκύδρας','Πέλλας',1),(286,'Σκύρου','Εύβοιας',1),(287,'Μύκης','Ξάνθης',1),(288,'Σουφλίου','Έβρου',1),(289,'Σοφάδων','Καρδίτσας',1),(290,'Σπάρτης','Λακωνίας',1),(291,'Σπάτων-Αρτέμιδος','Αττικής',1),(292,'Σπετσών','Αττικής',1),(293,'Αγίου Βασιλείου','Ρεθύμνης',1),(294,'Μακρακώμης','Φθιώτιδας',1),(295,'Παύλου Μελά','Θεσσαλονίκης',1),(296,'Βόλβης','Θεσσαλονίκης',1),(297,'Στυλίδας','Φθιώτιδας',1),(298,'Νεάπολης-Συκεών','Θεσσαλονίκης',1),(299,'Τανάγρας','Βοιωτίας',1),(300,'Σύμης','Δωδεκανήσου',1),(301,'Τήνου','Κυκλάδων',1),(302,'Οροπεδίου Λασιθίου','Λασιθίου',1),(303,'Τρικκαίων','Τρικάλων',1),(304,'Τρίπολης','Αρκαδίας',1),(305,'Τυρνάβου','Λάρισας',1),(306,'Φαρσάλων','Λάρισας',1),(307,'Φαρκαδόνος','Τρικάλων',1),(308,'Φιλιατών','Θεσπρωτίας',1),(309,'Ζηρού','Πρέβεζας',1),(310,'Αρριανών','Ροδόπης',1),(311,'Φλώρινας','Φλώρινας',1),(312,'Φολεγάνδρου','Κυκλάδων',1),(313,'Φούρνων Κορσεών','Σάμου',1),(314,'Κάσου','Δωδεκανήσου',1),(315,'Χάλκης','Δωδεκανήσου',1),(316,'Χίου','Χίου',1),(317,'Χαλανδρίου','Αττικής',1),(318,'Ερυμάνθου','Αχαΐας',1),(319,'Χαλκιδέων','Εύβοιας',1),(320,'Χανίων','Χανίων',1),(321,'Χαϊδαρίου','Αττικής',1),(322,'Παπάγου-Χολαργού','Αττικής',1),(323,'Νέστου','Καβάλας',1),(324,'Εμμανουήλ Παππά','Σερρών',1),(325,'Αστυπάλαιας','Δωδεκανήσου',1),(326,'Σφακίων','Χανίων',1),(327,'Ψαρών','Χίου',1),(328,'Διρφύων-Μεσσαπίων','Εύβοιας',1),(329,'Φιλοθέης-Ψυχικού','Αττικής',1),(330,'Ωραιοκάστρου','Θεσσαλονίκης',1),(331,'Ωρωπού','Αττικής',1),(332,'Ύδρας','Αττικής',1);
/*!40000 ALTER TABLE `locatons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `shipping_address` varchar(200) DEFAULT NULL,
  `shipping_postcode` varchar(45) DEFAULT NULL,
  `shipping_location_id` int(11) DEFAULT NULL,
  `payment_location_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `shipment_method_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `amount_with_tax` float DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_orders` (`user_id`),
  KEY `location_shipping_order` (`shipping_location_id`),
  KEY `location_payment_order` (`payment_location_id`),
  KEY `paymentmethod_order` (`payment_method_id`),
  KEY `shippingmethod_order` (`shipment_method_id`),
  CONSTRAINT `location_payment_order` FOREIGN KEY (`payment_location_id`) REFERENCES `locatons` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `location_shipping_order` FOREIGN KEY (`shipping_location_id`) REFERENCES `locatons` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `paymentmethod_order` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `shippingmethod_order` FOREIGN KEY (`shipment_method_id`) REFERENCES `shipping_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_orders` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_detail`
--

DROP TABLE IF EXISTS `orders_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `amount_with_tax` float DEFAULT NULL,
  `orders_detailcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_orderdetail` (`product_id`),
  CONSTRAINT `product_orderdetail` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_detail`
--

LOCK TABLES `orders_detail` WRITE;
/*!40000 ALTER TABLE `orders_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `descr` varchar(1000) DEFAULT NULL,
  `fee` float DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  `params` varchar(2000) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product` (`product_id`),
  KEY `category` (`category_id`),
  CONSTRAINT `category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,1,6,NULL),(2,2,6,NULL),(3,3,5,NULL),(4,4,5,NULL),(5,6,10,NULL),(6,7,8,NULL),(7,8,8,NULL),(8,9,8,NULL),(9,10,2,NULL),(10,11,2,NULL),(11,12,3,NULL),(13,13,2,NULL);
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `width` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `length` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Σύνοψη του βιβλίου \"Διαδικτυακός προγραμματισμός C','Το βιβλίο απευθύνεται στους φοιτητές και σπουδαστές πανεπιστημιακών τμημάτων και ΤΕΙ που έχουν σχέση με την Κοινωνία της Πληροφορίας (Προγραμματιστές, Αναλυτές, Μηχανικούς Λογισμικού) και σε φοιτητές και σπουδαστές που η C# και το .ΝΕΤ κρίνεται απαραίτητο εργαλείο στην ειδικότητά τους (π.χ. τμήματα Μαθηματικών, Φυσικής, Μηχανολόγων, Πολιτικών Μηχανικών, ΜΜΕ, Ανώτατες Στρατιωτικές Σχολές κ.λπ.). Απευθύνεται παράλληλα και σε επαγγελματίες μηχανικούς υπολογιστών που πρέπει να εκσυγχρονίσουν τις γνώσεις τους σε θέματα Πληροφορικής και ειδικότερα στο διαδικτυακό προγραμματισμό, κάνοντας το πέρασμα από την JAVA στη C#.',36.00,'book1.jpg',NULL,NULL,NULL,NULL,NULL),(2,'Απαντήσεις στα προβλήματα της C','Στο βιβλίο αυτό θα βρείτε συγκεντρωμένες τις απαντήσεις στις ασκήσεις του βιβλίου \"Η γλώσσα προγραμματισμού C\" των Kernigan και Ritchie. Ο συνδυασμός των δύο αυτών βιβλίων αποτελεί ιδανική λύση για κάθε σειρά μαθημάτων που αφορούν τη γλώσσα C.',12.00,'book2.jpg',NULL,NULL,NULL,NULL,NULL),(3,'PHP Cookbook','Want to understand a certain PHP programming technique? Or learn how to accomplish a particular task? This cookbook is the first place to look. With more than 350 code-rich recipes revised for PHP 5.4 and 5.5, this third edition provides updated solutions for generating dynamic web content - everything from using basic data types to querying databases, and from calling RESTful APIs to testing and securing your site. Each recipe includes code solutions that you can freely use, along with a discussion of how and why they work. Whether you\'re an experienced PHP programmer or coming to PHP from another language, this book is an ideal on-the-job resource. You\'ll find recipes to help you with: Basic data types: strings, numbers, arrays, and dates and times Program building blocks: variables, functions, classes, and objects Web programming: cookies, forms, sessions, and authentication Database access using PDO, SQLite, and other extensions RESTful API clients and servers, including HTTP, XML, and OAuth Key concepts: email, regular expressions, and graphics creation Designing robust applications: security and encryption, error handling, debugging and testing, and performance tuning Files, directories, and PHP\'s Command Line Interface Libraries and package managers such as Composer and PECL',58.00,'book3.jpg',NULL,NULL,NULL,NULL,NULL),(4,'Μάθετε Ajax, Javascript και PHP','Με το βιβλίο αυτό μπορείτε σε πολύ λίγο χρόνο να μάθετε πώς να χρησιμοποιείτε την Ajax, την JavaScript και την PHP για να δημιουργείτε διαδραστικές διασυνδέσεις στις εφαρμογές σας Web, συνδυάζοντας αυτές τις δυναμικές τεχνολογίες. Xρησιμοποιώντας μια άμεση, βήμα προς βήμα προσέγγιση, κάθε κεφάλαιο του βιβλίου βασίζεται στις γνώσεις που αποχτήσατε στα προγούμενα και τις επαυξάνει, επιτρέποντάς σας να μάθετε τα ουσιώδη του προγραμματισμού σε Ajax με JavaScript, PHP και τις σχετικές τεχνολογίες, αρχίζοντας από την αρχή.',19.00,'book4.jpg',NULL,NULL,NULL,NULL,NULL),(5,'SQL For Dummies','Uncover the secrets of SQL and start building better relational databases today! This fun and friendly guide will help you demystify database management systems so you can create more powerful databases and access information with ease. Updated for the latest SQL functionality, SQL For Dummies, 8th Edition covers the core SQL language and shows you how to use SQL to structure a DBMS, implement a database design, secure your data, and retrieve information when you need it. Includes new enhancements of SQL:2011, including temporal data functionality which allows you to set valid times for transactions to occur and helps prevent database corruption Covers creating, accessing, manipulating, maintaining, and storing information in relational database management systems like Access, Oracle, SQL Server, and MySQL Provides tips for keeping your data safe from theft, accidental or malicious corruption, or loss due to equipment failures and advice on eliminating errors in your work Don\'t be daunted by database development anymore - get SQL For Dummies, 8th Edition, and you\'ll be on your way to SQL stardom.',29.00,'book5.jpg',NULL,NULL,NULL,NULL,NULL),(6,'Learning SQL','As data floods into your company, you need to put it to work right away-and SQL is the best tool for the job. With the latest edition of this introductory guide, author Alan Beaulieu helps developers get up to speed with SQL fundamentals for writing database applications, performing administrative tasks, and generating reports. You\'ll find new chapters on SQL and big data, analytic functions, and working with very large databases. Each chapter presents a self-contained lesson on a key SQL concept or technique using numerous illustrations and annotated examples. Exercises let you practice the skills you learn. Knowledge of SQL is a must for interacting with data. With Learning SQL, you\'ll quickly discover how to put the power and flexibility of this language to work. Move quickly through SQL basics and several advanced features Use SQL data statements to generate, manipulate, and retrieve data Create database objects, such as tables, indexes, and constraints with SQL schema statements Learn how datasets interact with queries; understand the importance of subqueries Convert and manipulate data with SQL\'s built-in functions and use conditional logic in data statements',58.00,'book6.jpg',NULL,NULL,NULL,NULL,NULL),(7,'JavaScript & JQuery','Learn JavaScript and jQuery a nicer way This full-color book adopts a visual approach to teaching JavaScript & jQuery, showing you how to make web pages more interactive and interfaces more intuitive through the use of inspiring code examples, infographics, and photography. The content assumes no previous programming experience, other than knowing how to create a basic web page in HTML & CSS. You\'ll learn how to achieve techniques seen on many popular websites (such as adding animation, tabbed panels, content sliders, form validation, interactive galleries, and sorting data).. Introduces core programming concepts in JavaScript and jQuery Uses clear descriptions, inspiring examples, and easy-to-follow diagrams Teaches you how to create scripts from scratch, and understand the thousands of JavaScripts, JavaScript APIs, and jQuery plugins that are available on the web Demonstrates the latest practices in progressive enhancement, cross-browser compatibility, and when you may be better off using CSS3 If you\'re looking to create more enriching web experiences and express your creativity through code, then this is the book for you. This book is also available as part of a set in hardcover - Web Design with HTML, CSS, JavaScript and jQuery, 9781119038634 - and in softcover - Web Design with HTML, CSS, JavaScript and jQuery, 9781118907443.',40.00,'book7.jpg',NULL,NULL,NULL,NULL,NULL),(8,'JavaScript with Promises','Asynchronous JavaScript is everywhere, whether you\'re using Ajax, AngularJS, Node.js, or WebRTC. This practical guide shows intermediate to advanced JavaScript developers how Promises can help you manage asynchronous code effectively-including the inevitable flood of callbacks as your codebase grows. You\'ll learn the inner workings of Promises and ways to avoid difficulties and missteps when using them. The ability to asynchronously fetch data and load scripts in the browser broadens the capabilities of JavaScript applications. But if you don\'t understand how the async part works, you\'ll wind up with unpredictable code that\'s difficult to maintain. This book is ideal whether you\'re new to Promises or want to expand your knowledge of this technology. Understand how async JavaScript works by delving into callbacks, the event loop, and threading Learn how Promises organize callbacks into discrete steps that are easier to read and maintain Examine scenarios you\'ll encounter and techniques you can use when writing real-world applications Use features in the Bluebird library and jQuery to work with Promises Learn how the Promise API handles asynchronous errors Explore ECMAScript 6 language features that simplify Promise-related code',19.00,'book8.jpg',NULL,NULL,NULL,NULL,NULL),(9,'Advanced Game Design with HTML5 and JavaScript','How do you make a video game? Advanced Game Design with HTML5 and JavaScript is a down to earth education in how to make video games from scratch, using the powerful HTML5 and JavaScript technologies. This book is a point-by-point round up of all the essential techniques that every game designer needs to know. You\'ll discover how to create and render game graphics, add interactivity, sound, and animation. You\'ll learn how to build your own custom game engine with reusable components so that you can quickly develop games with maximum impact and minimum code. You\'ll also learn the secrets of vector math and advanced collision detection techniques, all of which are covered in a friendly and non-technical manner. You\'ll find detailed working examples, with hundreds of illustrations and thousands of lines of source code that you can freely adapt for your own projects. All the math and programming techniques are elaborately explained and examples are open-ended to encourage you to think of original ways to use these techniques in your own games. You can use what you learn in this book to make games for desktops, mobile phones, tablets or the Web. Advanced Game Design with HTML5 and JavaScript is a great next step for experienced programmers or ambitious beginners who already have some JavaScript experience, and want to jump head first into the world of video game development. It\'s also great follow-up book for readers of Foundation Game Design with HTML5 and JavaScript (by the same author) who want to add depth and precision to their skills. The game examples in this book use pure JavaScript, so you can code as close to the metal as possible without having to be dependent on any limiting frameworks or game engines. No libraries, no dependencies, no third-party plugins: just you, your computer, and the code. If you\'re looking for a book to take your game design skills into the stratosphere and beyond, this is it!',38.00,'book9.jpg',NULL,NULL,NULL,NULL,NULL),(10,'Java Programming for Android Developers For Dummies','Develop the next killer Android App using Java programming! Android is everywhere! It runs more than half the smartphones in the U.S. and Java makes it go. If you want to cash in on its popularity by learning to build Android apps with Java, all the easy-to-follow guidance you need to get started is at your fingertips. Inside, you\'ll learn the basics of Java and grasp how it works with Android; then, you\'ll go on to create your first real, working application. How cool is that? The demand for Android apps isn\'t showing any signs of slowing, but if you\'re a mobile developer who wants to get in on the action, it\'s vital that you get the necessary Java background to be a success. With the help of Java Programming for Android Developers For Dummies, you\'ll quickly and painlessly discover the ins and outs of using Java to create groundbreaking Android apps no prior knowledge or experience required! * Get the know-how to create an Android program from the ground up * Make sense of basic Java development concepts and techniques * Develop the skills to handle programming challenges * Find out how to debug your app Don\'t sit back and watch other developers release apps that bring in the bucks! Everything you need to create that next killer Android app is just a page away!',21.00,'book10.jpg',NULL,NULL,NULL,NULL,NULL),(11,'Head First Java','Learning a complex new language is no easy task especially when it s an object-oriented computer programming language like Java. You might think the problem is your brain. It seems to have a mind of its own, a mind that doesn\'t always want to take in the dry, technical stuff you\'re forced to study. The fact is your brain craves novelty. It\'s constantly searching, scanning, waiting for something unusual to happen. After all, that\'s the way it was built to help you stay alive. It takes all the routine, ordinary, dull stuff and filters it to the background so it won\'t interfere with your brain\'s real work--recording things that matter. How does your brain know what matters? It\'s like the creators of the Head First approach say, suppose you\'re out for a hike and a tiger jumps in front of you, what happens in your brain? Neurons fire. Emotions crank up. Chemicals surge. That\'s how your brain knows. And that\'s how your brain will learn Java. Head First Java combines puzzles, strong visuals, mysteries, and soul-searching interviews with famous Java objects to engage you in many different ways. It\'s fast, it\'s fun, and its effective. And, despite its playful appearance, Head First Java is serious stuff: a complete introduction to object-oriented programming and Java. You\'ll learn everything from the fundamentals to advanced topics, including threads, network sockets, and distributed programming with RMI. And the new. second edition focuses on Java 5.0, the latest version of the Java language and development platform. Because Java 5.0 is a major update to the platform, with deep, code-level changes, even more careful study and implementation is required. So learning the Head First way is more important than ever. If you\'ve read a Head First book, you know what to expect--a visually rich format designed for the way your brain works. If you haven\'t, you\'re in for a treat. You\'ll see why people say it\'s unlike any other Java book you\'ve ever read. By exploiting how your brain works, Head First Java compresses the time it takes to learn and retain--complex information. Its unique approach not only shows you what you need to know about Java syntax, it teaches you to think like a Java programmer. If you want to be bored, buy some other book. But if you want to understand Java, this book\'s for you.',44.00,'book11.jpg',NULL,NULL,NULL,NULL,NULL),(12,'Το βιβλίο της PYTHON','Το \"Βιβλίο της Python\" είναι ένα πλήρες εγχειρίδιο αναφοράς της γλώσσας για την εκμάθησή της. Ξεκινάει από τα πιο βασικά και απολύτως απαραίτητα στοιχεία που χρειάζεται να μάθει κάποιος που ασχολείται για πρώτη φορά με τον προγραμματισμό και προχωράει σε βάθος, σε κάθε πτυχή της γλώσσας, και σε πιο σύνθετες προγραμματιστικές τεχνικές που θα καλύψουν ακόμα και τους πιο προχωρημένους και απαιτητικούς αναγνώστες.',31.00,'book12.jpg',NULL,NULL,NULL,NULL,NULL),(13,'Artificial Intelligence in Practice','Cyber-solutions to real-world business problems Artificial Intelligence in Practice is a fascinating look into how companies use AI and machine learning to solve problems. Presenting 50 case studies of actual situations, this book demonstrates practical applications to issues faced by businesses around the globe. The rapidly evolving field of artificial intelligence has expanded beyond research labs and computer science departments and made its way into the mainstream business environment. Artificial intelligence and machine learning are cited as the most important modern business trends to drive success. It is used in areas ranging from banking and finance to social media and marketing. This technology continues to provide innovative solutions to businesses of all sizes, sectors and industries. This engaging and topical book explores a wide range of cases illustrating how businesses use AI to boost performance, drive efficiency, analyse market preferences and many others. Best-selling author and renowned AI expert Bernard Marr reveals how machine learning technology is transforming the way companies conduct business. This detailed examination provides an overview of each company, describes the specific problem and explains how AI facilitates resolution. Each case study provides a comprehensive overview, including some technical details as well as key learning summaries: Understand how specific business problems are addressed by innovative machine learning methods Explore how current artificial intelligence applications improve performance and increase efficiency in various situations Expand your knowledge of recent AI advancements in technology Gain insight on the future of AI and its increasing role in business and industry Artificial Intelligence in Practice: How 50 Successful Companies Used Artificial Intelligence to Solve Problems is an insightful and informative exploration of the transformative power of technology in 21st century commerce.',37.00,'book13.jpg',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_method`
--

DROP TABLE IF EXISTS `shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `descr` varchar(1000) DEFAULT NULL,
  `fee` float DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_method`
--

LOCK TABLES `shipping_method` WRITE;
/*!40000 ALTER TABLE `shipping_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opened` time DEFAULT NULL,
  `closed` time DEFAULT NULL,
  `metatitle` varchar(250) DEFAULT NULL,
  `metadescription` varchar(1000) DEFAULT NULL,
  `metakeywords` varchar(500) DEFAULT NULL,
  `facebookpage` varchar(200) DEFAULT NULL,
  `twitterpage` varchar(200) DEFAULT NULL,
  `youtubepage` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'08:00:00','17:00:00',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_paths`
--

DROP TABLE IF EXISTS `user_paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_paths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `path` varchar(500) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_paths`
--

LOCK TABLES `user_paths` WRITE;
/*!40000 ALTER TABLE `user_paths` DISABLE KEYS */;
INSERT INTO `user_paths` VALUES (1,1,'main',NULL),(2,1,'test',NULL);
/*!40000 ALTER TABLE `user_paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `openid` varchar(250) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'themhz@gmail.com','$2y$10$fSLaaCrMQZk4l0Bxnfc8VuPkw454Nxd2JF1v7uJ0goFSA0Wk0IHKa','themis theotokatos',NULL,NULL,'6987556486','dodekanisou 18','ilioupolh','16754',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vatcodes`
--

DROP TABLE IF EXISTS `vatcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vatcodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vatcodes`
--

LOCK TABLES `vatcodes` WRITE;
/*!40000 ALTER TABLE `vatcodes` DISABLE KEYS */;
INSERT INTO `vatcodes` VALUES (1,'ΦΠΑ',23),(2,'Μειωμένος ΦΠΑ',13),(3,'Υπερμειωμένος',6);
/*!40000 ALTER TABLE `vatcodes` ENABLE KEYS */;
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

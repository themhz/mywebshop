-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: development_db
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
-- Table structure for table `email_sended`
--

DROP TABLE IF EXISTS `email_sended`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_sended` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `body` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `emailto` varchar(255) NOT NULL,
  `regdate` datetime NOT NULL,
  `reason` varchar(255) NOT NULL,
  `emailfrom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_sended`
--

LOCK TABLES `email_sended` WRITE;
/*!40000 ALTER TABLE `email_sended` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_sended` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phinxlog`
--

DROP TABLE IF EXISTS `phinxlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phinxlog`
--

LOCK TABLES `phinxlog` WRITE;
/*!40000 ALTER TABLE `phinxlog` DISABLE KEYS */;
INSERT INTO `phinxlog` VALUES (20210807180735,'MyNewMigration','2021-08-23 20:57:59','2021-08-23 20:57:59',0),(20210823235834,'AddingEmailSended','2021-08-23 20:59:50','2021-08-23 20:59:50',0),(20210824000025,'ChangeEmailSended','2021-08-23 21:12:05','2021-08-23 21:12:05',0),(20210824001413,'AddingEmailFrom','2021-08-23 21:14:48','2021-08-23 21:14:48',0);
/*!40000 ALTER TABLE `phinxlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logins`
--

DROP TABLE IF EXISTS `user_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `regdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logins`
--

LOCK TABLES `user_logins` WRITE;
/*!40000 ALTER TABLE `user_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Lenore','Kling','estevan30','4be97e572ecfac10285a73b94c1bdf72edf3c539','2021-08-24 03:18:04'),(2,'Sofia','Kris','padberg.dayana','0bdc55c9cdee992bcdb949f3975cc8c5c5eca204','2021-08-24 03:18:04'),(3,'Angel','Schiller','ronny75','d8730b5125c882d47b5ffa7c2e4f0d7cd50f70e5','2021-08-24 03:18:04'),(4,'Jaclyn','Kuhn','qwiegand','02bb641fcb1036fd3a10de0cfb416f4d653c3f7b','2021-08-24 03:18:04'),(5,'Quinten','Koch','tara.gorczany','746b3355ff3d1f024ad814a367d439ea844ed939','2021-08-24 03:18:04'),(6,'Janice','Ortiz','katharina.nolan','e593fdc59ab11ae00914bdd001b75bfd57d0c127','2021-08-24 03:18:04'),(7,'Jeffry','Rosenbaum','vandervort.israel','827e579bf347f2d58536fc7636961fca884c74e8','2021-08-24 03:18:04'),(8,'Colin','Reynolds','jodie42','c4a6948cd438754b2fd006511e591becea4f27fa','2021-08-24 03:18:04'),(9,'Alena','Hayes','joannie.medhurst','6de27d2563a81e299317a06cb4f1e10a232eaea2','2021-08-24 03:18:04'),(10,'Karlie','Wintheiser','cydney48','9a8010f30957ee2ee087d36e1e0139282eeb9159','2021-08-24 03:18:04'),(11,'Rosella','Gottlieb','nelson.dubuque','0af1205bd3dc58f231578a2a4034860fa641d927','2021-08-24 03:18:04'),(12,'Claudia','Zemlak','savanna.gislason','bfa702dc2a1a53de2093595c8559716dd7827d15','2021-08-24 03:18:04'),(13,'Amber','Brekke','melyna05','93f9995ed8712240ec68795d6cf60d62ca8a517f','2021-08-24 03:18:04'),(14,'Ollie','Collier','wintheiser.rosanna','4ec3085c00b92347a620d9c8604e6fa30ff97fd5','2021-08-24 03:18:04'),(15,'Eusebio','Emard','moberbrunner','acc9d55dfb43371206ae9a1c74c3bf78b5b2c160','2021-08-24 03:18:04'),(16,'Brionna','Mayert','jimmy.davis','f1e464eb231625d9a035e5936d28bc8ee0d00397','2021-08-24 03:18:04'),(17,'Monserrate','Emard','wwest','14419f96701cce23df4b9ca10b8d1cc8d071a695','2021-08-24 03:18:04'),(18,'Lavinia','Rice','rflatley','dc4c648d5374ef8d3e33768fe8b82b468c087927','2021-08-24 03:18:04'),(19,'Kennith','Powlowski','renee.watsica','240cd8a1238fb80d8c9d951c766620c46194675b','2021-08-24 03:18:04'),(20,'Cynthia','Gusikowski','hayes.lila','d6e74d896e21813ce985804069ee88faf39d0a3b','2021-08-24 03:18:04'),(21,'Tre','Gusikowski','terry.gabrielle','219d348335344b2fda90fe92ac12b06bb6be0749','2021-08-24 03:18:04'),(22,'Eudora','Murray','lehner.frederique','9793193bba80e4d52d6d34f1fb33264fbb8665dc','2021-08-24 03:18:04'),(23,'Willa','Funk','kbartoletti','6ed5c360aa4b9b832ec9d40bb45b68cd57d0b4a2','2021-08-24 03:18:04'),(24,'Elmo','Kihn','keeley22','57d979470ca76dfa8c73968d835b18987feda6cf','2021-08-24 03:18:04'),(25,'Lola','Ratke','hudson.nicolette','6e2b9d67562af0614bdc8b480f8b38653bbcaec3','2021-08-24 03:18:04'),(26,'Elena','Gleichner','witting.antwon','aa614d16fc02fc3c68abb6e494bdbe9bcfa09080','2021-08-24 03:18:04'),(27,'Austin','Schmeler','aaufderhar','2a143606a25767026deed8a3f64d3b48de26e7c7','2021-08-24 03:18:04'),(28,'Claudine','Terry','finn52','c89226e3fe8376da570f1318449c98e69e2481e3','2021-08-24 03:18:04'),(29,'Norris','Padberg','xgreen','b1f23a6a12dffb0f0fc2d54e22636b5cf7c01174','2021-08-24 03:18:04'),(30,'Grady','Jakubowski','nfeeney','af45971f9127d66518068a969bce3de5d0a61992','2021-08-24 03:18:04'),(31,'Aglae','McDermott','floyd.kemmer','303994d33cedd69fd22e853b3b7efb88b484fe9e','2021-08-24 03:18:04'),(32,'Mikel','Ledner','robel.ariel','e084613870a7b1180c06fb3d2805314db5a50b50','2021-08-24 03:18:04'),(33,'Kristofer','Stanton','johns.oswald','a0225da6116725744a5ab40e9e1ed1dca819a25a','2021-08-24 03:18:04'),(34,'Riley','O\'Reilly','corkery.izabella','fe4ab020245bd9d8bcbf354298316f4ece6f0933','2021-08-24 03:18:04'),(35,'Oran','West','little.casper','224398fc76fd00a9e8c257b16a55533f4c96b96d','2021-08-24 03:18:04'),(36,'Santina','Homenick','gschinner','32b9937ca6fa16e70864f657400b5e73d063c19b','2021-08-24 03:18:04'),(37,'Ari','Senger','hnienow','7d41fd8bccf96f03fc1085fb2b77ed38203f38d3','2021-08-24 03:18:04'),(38,'Ephraim','Jacobs','tvonrueden','199c27f29e092374e20789f6b7e9db87cade6480','2021-08-24 03:18:04'),(39,'Dorthy','Bernhard','yjacobs','56946e9e756971b913a6b47029072b71d7af178e','2021-08-24 03:18:04'),(40,'Joy','Champlin','oheidenreich','f338224177b02df941803bdb25e71e2c48c0a3e0','2021-08-24 03:18:04'),(41,'Josie','Conn','walker.jeffery','24ae31075b0763c813420e9a720fe1a68254071e','2021-08-24 03:18:04'),(42,'Bryana','Gislason','antoinette42','7c069a6bf837aa94cefdb2110815d283ff18d82e','2021-08-24 03:18:04'),(43,'Daisy','Satterfield','sheridan.leuschke','7230dfd974f189b303489cf3529009bff0dfe82f','2021-08-24 03:18:04'),(44,'Georgiana','Cole','evelyn41','4a604fe9edde6b77ce5a65d3a1bfe3d05a19dc59','2021-08-24 03:18:04'),(45,'Nyah','Gutkowski','isabella.wilderman','217176c457003e476998a26f5789f6ca7fea01e3','2021-08-24 03:18:04'),(46,'Aniya','Langworth','bradtke.darrick','c0c7c4641d27da53d583754ecd83e16777e229a7','2021-08-24 03:18:04'),(47,'Trycia','Schuppe','roselyn28','675e2724f1777051265131474c2a24611053bb3e','2021-08-24 03:18:04'),(48,'Cedrick','Cronin','glenda99','0040d7b63fa343381116cd5e0e8c2fcf8105fee8','2021-08-24 03:18:04'),(49,'Astrid','Deckow','kozey.eveline','063d65ed44efcd6355d1bf78d845aca05e8520e2','2021-08-24 03:18:04'),(50,'Nick','Schaefer','mmurphy','fa15e0c1564d14ec8747d1e03b89dd1aeb0dc31a','2021-08-24 03:18:04'),(51,'Dwight','Blick','sdouglas','51d805774f5013ab9457f3689814cc3999381e46','2021-08-24 03:18:04'),(52,'Jennifer','Torp','stoltenberg.katharina','19e037ac3891673f3cd56483f4c20fca969a83ec','2021-08-24 03:18:04'),(53,'Mazie','Kirlin','tatum23','64ddc92accc93caf0a08decfeb4f8862eb7ffa8a','2021-08-24 03:18:04'),(54,'Kirk','Koch','ari.pollich','6955d11dbfb55ab487f1dfbb2eb1c5da9ce31966','2021-08-24 03:18:04'),(55,'Maynard','Hessel','violette66','7f509fcf1f29a368a7b8e56cbdfd273602382450','2021-08-24 03:18:04'),(56,'Gladys','Bartell','lurline.muller','84ad6fbc591840b10fca159ef1dcfb187a01b0c0','2021-08-24 03:18:04'),(57,'Golda','Auer','breanne04','fad7123547ea311167380b2eb4ccfac8acc7fd7f','2021-08-24 03:18:04'),(58,'Lauretta','Lakin','olson.boyd','70e7f4eb4e38343da58882f8686b29f0d03dc0d6','2021-08-24 03:18:04'),(59,'Teresa','Batz','dabernathy','b11ee508b9b8fc48a0d0b22e070aff266b8edcee','2021-08-24 03:18:04'),(60,'Declan','Larson','keebler.herta','e2d63e168b466a37156200262ed1206efd547a91','2021-08-24 03:18:04'),(61,'Elisha','Stark','newell11','0c30b2f664d2420c244dd70bef5c119d6e53cafc','2021-08-24 03:18:04'),(62,'Imani','Rippin','windler.ted','6e0c0f7b4bab65abe532e47bcf0c4c308943edc3','2021-08-24 03:18:04'),(63,'Alda','Bednar','irma17','0c7f417a70882d96f7b3822abd83b8eaa7682ced','2021-08-24 03:18:04'),(64,'Cameron','Berge','laurence.lakin','9be8d2afb3d1a407832e2e41a28522999136f26f','2021-08-24 03:18:04'),(65,'Gianni','Beier','jerde.jayde','252796d4fa61456defb899d80e138aef79f3336b','2021-08-24 03:18:04'),(66,'Pink','Kuhic','oebert','98402a9b1419b2163ecc20f419970edfd11f895e','2021-08-24 03:18:04'),(67,'Westley','Harber','creilly','c1fd1b3c65d6be781b4803a52ddb9dd00c56e2e5','2021-08-24 03:18:04'),(68,'Chloe','Grimes','werner.swaniawski','6cbf1d654513beca0a9f182b9def1a7e1fd5962d','2021-08-24 03:18:04'),(69,'Miles','Hilpert','hassie.conroy','aa79c24acdfbe8a66514c76e593b4bf47df8f985','2021-08-24 03:18:04'),(70,'Wilford','Ebert','hkris','2beb9410561cce68ee3ea9942694ede98a380f1c','2021-08-24 03:18:04'),(71,'Camille','Corkery','mertie.bechtelar','5a33d5649a49c47026e7a2b7c47eb455c41ad63b','2021-08-24 03:18:04'),(72,'Cortez','Flatley','eudora36','0bf369de9d56b3ab32d0750972fe58ad421a7e82','2021-08-24 03:18:04'),(73,'Elroy','Paucek','hilda.cassin','c4edf714108bd122d981a11e1fb50a6d4ad7df4b','2021-08-24 03:18:04'),(74,'Anabel','Mertz','fwiza','934b8d1738051afde41f1c22b7183c69799aee70','2021-08-24 03:18:04'),(75,'Dedric','Monahan','lbeatty','0b7f2ff692d68e25744f297ae8b7705f5c7e34fc','2021-08-24 03:18:04'),(76,'Vidal','Schiller','tillman.marjory','931dacd9bb9cb8312f24a3b372bd0466adbe9c3d','2021-08-24 03:18:04'),(77,'Fannie','Nicolas','runolfsson.hailie','f805ef4b8ac6d71fe8b521e25a562fcf608f48ce','2021-08-24 03:18:04'),(78,'Ericka','Pacocha','von.emery','7153f417787fc9addf563d6dc6ad67c026f41a03','2021-08-24 03:18:04'),(79,'Ignacio','Turcotte','tracey07','40f78afaf5152d3bc516a76b67ca6e60ded76caa','2021-08-24 03:18:04'),(80,'Korbin','Thiel','nkautzer','75351cdd1beb7b18a9a1430d00dba7ebe3735460','2021-08-24 03:18:04'),(81,'Neil','Emard','zglover','29bd48c1404cdc7e455d92da1a7fbdc0c53adaed','2021-08-24 03:18:04'),(82,'Sterling','Beer','cary.volkman','718e015c3fde55928edd1a1f3d755a3c5da5fe0d','2021-08-24 03:18:04'),(83,'Jonathon','Cormier','parisian.billie','7d54434897c5a3a788a6da40713d6e158c24450f','2021-08-24 03:18:04'),(84,'Nola','Kub','titus.gutkowski','2d9da2c747d112948ce975cd4267d7dd4d5b6eaf','2021-08-24 03:18:04'),(85,'Rafaela','Abbott','nasir.stehr','d2da9c597ffb1bff5cfb4ed75774bd17dd724619','2021-08-24 03:18:04'),(86,'Nelle','Dibbert','dortha.feest','b5d09cd02a91d78d112a174ddf62e1778fe14116','2021-08-24 03:18:04'),(87,'Steve','Gusikowski','marquise08','25f0d76cd78c8b9e8cd5718674843c0f116b2375','2021-08-24 03:18:04'),(88,'Stacy','VonRueden','bosco.carlee','d9ee0094843fdbb68cd4f9ca6f9abf20fa8707de','2021-08-24 03:18:04'),(89,'Luigi','Howell','pkovacek','8cabe69b8157a68c5f05ba921d4e336a14e60068','2021-08-24 03:18:04'),(90,'Ron','Kirlin','elisa.jenkins','ed96abccb2d789a7f1bc0441adc3388791ed0a28','2021-08-24 03:18:04'),(91,'Felipa','Nolan','missouri.berge','fec6c7453bb2ad996daf652d4a6720f6ef690ad7','2021-08-24 03:18:04'),(92,'Hazle','Halvorson','rodger.hintz','aa1163d170d51b586e0aaa8c99f0d0454ef89d11','2021-08-24 03:18:04'),(93,'Jazlyn','Casper','rmurphy','13972c56b105b1bd1c4794ffbdb2a14b27a61e99','2021-08-24 03:18:04'),(94,'Eloise','Senger','xhuels','2637d710818f3e1f75e600c7935d6b3f864f61b1','2021-08-24 03:18:04'),(95,'Magnolia','Gislason','una.huel','527ace9fff10493669918c143437dac99b1564f6','2021-08-24 03:18:04'),(96,'Reid','Larkin','henry23','81873985f281d1cedb97b8adb7d73e8fcad7a584','2021-08-24 03:18:04'),(97,'Graciela','Dietrich','bernadette40','c04150898d404c01d5f5f7362cd654e736204361','2021-08-24 03:18:04'),(98,'Otha','Thompson','litzy29','ee7bfee6f5e4b8fb978f6c2047c6a6812c8336b9','2021-08-24 03:18:04'),(99,'Alba','Rempel','terrance31','9cb094ad8fb6e6adbb092f7c588e9b7b8a5034cd','2021-08-24 03:18:04'),(100,'Ava','Mills','leannon.antonina','e5ad1028672cc7827b86b2bf3dd159e7d13be3c8','2021-08-24 03:18:04');
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

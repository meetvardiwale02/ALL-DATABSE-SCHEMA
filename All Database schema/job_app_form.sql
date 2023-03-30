-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: job_app_form
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `academic_detail`
--

DROP TABLE IF EXISTS `academic_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_detail` (
  `academic_id` int NOT NULL AUTO_INCREMENT,
  `course` varchar(45) NOT NULL,
  `university` varchar(45) NOT NULL,
  `passing` varchar(45) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `candidate_id` int DEFAULT NULL,
  PRIMARY KEY (`academic_id`),
  KEY `candidate_id` (`candidate_id`),
  CONSTRAINT `academic_detail_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `basic_detail` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_detail`
--

LOCK TABLES `academic_detail` WRITE;
/*!40000 ALTER TABLE `academic_detail` DISABLE KEYS */;
INSERT INTO `academic_detail` VALUES (8,'B.E','GTU','2025','2023-02-27 03:54:54',7),(9,'MCA','GU','2023','2023-02-27 03:57:26',8),(10,'BCA','GU','2023','2023-02-27 04:00:55',9),(11,'B.E','GTU','2023','2023-02-27 04:03:26',10),(12,'MBA','Others','2025','2023-02-27 04:06:28',11),(14,'P.H.D','Others','2019','2023-02-28 08:21:08',1),(47,'MCA','GU','2025','2023-02-28 09:29:07',5),(48,'M.Tech','DIM','2026','2023-02-28 09:29:07',5),(133,'Enfield','Others','2024','2023-02-28 11:01:56',4),(134,'B.E','DIM','2023','2023-02-28 11:01:56',4),(135,'P.H.D','GU','','2023-02-28 11:01:56',4),(137,'M','G','2','2023-03-11 10:06:22',12),(138,'B','T','0','2023-03-11 10:06:22',12),(139,'A','U','2','2023-03-11 10:06:22',12);
/*!40000 ALTER TABLE `academic_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_detail`
--

DROP TABLE IF EXISTS `basic_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_detail` (
  `candidate_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `designation` varchar(45) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `state` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `relation_status` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `zipcode` varchar(50) NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `is_delted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_detail`
--

LOCK TABLES `basic_detail` WRITE;
/*!40000 ALTER TABLE `basic_detail` DISABLE KEYS */;
INSERT INTO `basic_detail` VALUES (1,'Alpesh bhai','vardiwale','php devloper','F-17 Darshan Complex','alpesh@gmail.com','Ahmedabad','6352422208','Gujarat','Male','married','2023-02-25 12:39:59','380061','2022-11-06',0),(2,'Dev','thakkar','software devloper','Ranip','dev@gmail.com','Ahmedabad','6352422207','Gujarat','Male','unmarried','2023-02-25 12:42:04','380005','2022-02-06',1),(3,'parth','sathiya','data science','Firozabad','alpesh@gmail.com','Firozobad','9898079456','Delhi','Male','unmarried','2023-02-25 12:47:19','394568','2022-06-04',1),(4,'sagar','patel','software devloper','raipur','sagar@gmail.com','Ahmedabad','6352422207','Gujarat','Male','unmarried','2023-02-27 03:38:58','380054','2022-08-05',0),(5,'Alpesh bhai','vardiwale','php devloper','F-17 Darshan Complex','alpesh@gmail.com','Ahmedabad','6352422208','Gujarat','Male','married','2023-02-27 03:43:07','380061','2022-11-06',0),(6,'Alpesh bhai','vardiwale','php devloper','F-17 Darshan Complex','alpesh@gmail.com','Ahmedabad','6352422208','Gujarat','Male','married','2023-02-27 03:52:12','380061','2022-11-06',0),(7,'Alpesh bhai','vardiwale','php devloper','F-17 Darshan Complex','alpesh@gmail.com','Ahmedabad','6352422208','Gujarat','Male','married','2023-02-27 03:54:54','380061','2022-11-06',0),(8,'Alpesh bhai','vardiwale','php devloper','F-17 Darshan Complex','alpesh@gmail.com','Ahmedabad','6352422208','Gujarat','Male','married','2023-02-27 03:57:26','380061','2022-11-06',0),(9,'Alpesh bhai','vardiwale','php devloper','F-17 Darshan Complex','alpesh@gmail.com','Ahmedabad','6352422208','Gujarat','Male','married','2023-02-27 04:00:55','380061','2022-11-06',0),(10,'Alpesh bhai','vardiwale','php devloper','F-17 Darshan Complex','alpesh@gmail.com','Ahmedabad','6352422208','Gujarat','Male','married','2023-02-27 04:03:26','380061','2022-11-06',0),(11,'Alpesh bhai','vardiwale','php devloper','F-17 Darshan Complex','alpesh@gmail.com','Ahmedabad','6352422208','Gujarat','Male','married','2023-02-27 04:06:28','380061','2022-11-06',0),(12,'sohamjyjuytu','dahite','data science','pune','sohamdahite@gmail.com','Siri','7418529635','Delhi','Male','married','2023-03-11 09:42:02','380061','2023-03-12',0);
/*!40000 ALTER TABLE `basic_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_master`
--

DROP TABLE IF EXISTS `city_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_master` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) NOT NULL,
  `state_id` int NOT NULL,
  PRIMARY KEY (`city_id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `city_master_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_master`
--

LOCK TABLES `city_master` WRITE;
/*!40000 ALTER TABLE `city_master` DISABLE KEYS */;
INSERT INTO `city_master` VALUES (1,'Ahmedabad',1),(2,'Jamnagar',1),(3,'Junagadh',1),(4,'Rajkot',1),(5,'Surat',1),(6,'Vadodara',1),(7,'Bhavnagar',1),(8,'Ahmedabad',1),(9,'Jaipur',2),(10,'Jodhpur',2),(11,'Kota',2),(12,'Bikaner',2),(13,'Bhiwadi',2),(14,'Udaipur',2),(15,'Ajmer',2),(16,'Bhilwara',2),(17,'Siri',3),(18,'Tughlqabad',3),(19,'Jahanpanah',3),(20,'Firozobad',3),(21,'Shahjahanabad',3),(22,'New Delhi',3),(23,'Hubli-Dharwad',4),(24,'Mysore',4),(25,'Kalaburagi',4),(26,'Mangalore',4),(27,'Ludhiana',5),(28,'Amritsar',5),(29,'Jalandhar',5),(30,'Patiala',5),(31,'Gandhigram',6),(32,'Jairampur',6),(33,'Kharsang',6),(34,'Bhatpara',7),(35,'Panihati',7),(36,'Kamarhati',7),(37,'Kanpur',8),(38,'Lucknow',8),(39,'Ayodhya',8),(40,'Patna',9),(41,'Muzaffarpur',9),(42,'Gaya',9),(43,'Guwahati',10),(44,'Silchar',10),(45,'Jorhat',10),(46,'Kozhikode',11),(47,'Thiruvanthampuram',11),(48,'Kochi',11),(49,'Indore',12),(50,'Bhopal',12),(51,'JabalPur',12),(52,'Raipur',13),(53,'Bhilai',13),(54,'Bilaspur',13),(55,'Margao',14),(56,'Panaji',14),(57,'Mapusa',14),(58,'Shimla',15),(59,'Dharamsala',15),(60,'Solan',15);
/*!40000 ALTER TABLE `city_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lang_detail`
--

DROP TABLE IF EXISTS `lang_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lang_detail` (
  `lang_id` int NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(50) NOT NULL,
  `lang_read` varchar(50) NOT NULL,
  `lang_write` varchar(50) NOT NULL,
  `lang_speak` varchar(50) NOT NULL,
  `candidate_id` int DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`lang_id`),
  KEY `candidate_id` (`candidate_id`),
  CONSTRAINT `lang_detail_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `basic_detail` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lang_detail`
--

LOCK TABLES `lang_detail` WRITE;
/*!40000 ALTER TABLE `lang_detail` DISABLE KEYS */;
INSERT INTO `lang_detail` VALUES (1,'Hindi','Yes','Yes','Yes',1,'2023-02-25 12:39:59'),(2,'English','Yes','Yes','Yes',1,'2023-02-25 12:39:59'),(3,'Hindi','No','No','Yes',2,'2023-02-25 12:42:04'),(4,'Gujarati','Yes','Yes','Yes',2,'2023-02-25 12:42:04'),(5,'Hindi','Yes','No','Yes',3,'2023-02-25 12:47:19'),(6,'Marathi','Yes','Yes','Yes',3,'2023-02-25 12:47:19'),(7,'French','Yes','No','No',3,'2023-02-25 12:47:19'),(11,'Marathi','Yes','Yes','Yes',5,'2023-02-27 03:43:07'),(12,'Hindi','Yes','Yes','Yes',6,'2023-02-27 03:52:12'),(13,'Marathi','Yes','Yes','Yes',7,'2023-02-27 03:54:54'),(14,'English','Yes','Yes','Yes',8,'2023-02-27 03:57:26'),(15,'Hindi','Yes','Yes','Yes',9,'2023-02-27 04:00:55'),(16,'English','Yes','Yes','Yes',9,'2023-02-27 04:00:55'),(17,'Hindi','Yes','No','No',10,'2023-02-27 04:03:26'),(18,'English','Yes','Yes','Yes',10,'2023-02-27 04:03:26'),(19,'Marathi','Yes','Yes','Yes',11,'2023-02-27 04:06:28'),(61,'Marathi','Yes','No','No',4,'2023-02-28 11:01:56'),(62,'French','Yes','No','No',4,'2023-02-28 11:01:56'),(65,'Hindi','Yes','Yes','Yes',12,'2023-03-11 10:06:22'),(66,'Gujarati','Yes','No','No',12,'2023-03-11 10:06:22');
/*!40000 ALTER TABLE `lang_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_master`
--

DROP TABLE IF EXISTS `option_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `option_master` (
  `option_id` int NOT NULL AUTO_INCREMENT,
  `option_value` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `select_id` int NOT NULL,
  PRIMARY KEY (`option_id`),
  KEY `select_id` (`select_id`),
  CONSTRAINT `option_master_ibfk_1` FOREIGN KEY (`select_id`) REFERENCES `select_master` (`select_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_master`
--

LOCK TABLES `option_master` WRITE;
/*!40000 ALTER TABLE `option_master` DISABLE KEYS */;
INSERT INTO `option_master` VALUES (1,'gujarat','2023-02-14 08:34:32',1),(4,'Rajasthan','2023-02-14 08:45:48',1),(5,'assam','2023-02-14 08:46:53',1),(6,'married','2023-02-14 08:48:02',2),(7,'unmarried','2023-02-14 08:48:22',2),(8,'divorced','2023-02-14 08:49:17',2),(9,'delhi','2023-02-14 08:50:32',1),(10,'karnataka','2023-02-14 08:50:32',1),(11,'kerela','2023-02-14 08:53:03',1),(12,'Madhya pradesh','2023-02-14 08:53:03',1),(13,'Chattisghar','2023-02-14 08:53:03',1),(14,'punjab','2023-02-14 08:53:03',1),(15,'Arunachal pradesh','2023-02-14 08:53:03',1),(16,'goa','2023-02-14 08:53:03',1),(17,'Himachal Pradesh','2023-02-14 08:55:53',1),(18,'kolkata','2023-02-14 08:55:53',1),(19,'uttar pradesh','2023-02-14 08:55:53',1),(20,'bihar','2023-02-14 08:55:53',1),(21,'B.E','2023-02-14 11:41:55',3),(22,'MBA','2023-02-14 11:41:55',3),(23,'MCA','2023-02-14 11:41:55',3),(24,'BCA','2023-02-14 11:41:55',3),(25,'M.Tech','2023-02-14 11:41:55',3),(26,'P.H.D','2023-02-14 11:41:55',3),(27,'Enfield','2023-02-14 11:41:55',3),(28,'BSC','2023-02-14 11:41:55',3),(41,'GTU','2023-02-14 12:17:56',4),(42,'GU','2023-02-14 12:17:56',4),(43,'DIM','2023-02-14 12:17:56',4),(44,'Others','2023-02-14 12:17:56',4),(45,'Hindi','2023-02-14 12:32:11',5),(46,'English','2023-02-14 12:32:11',5),(47,'Gujarati','2023-02-14 12:32:11',5),(48,'Marathi','2023-02-14 12:32:11',5),(49,'French','2023-02-14 12:32:11',5),(50,'PHP','2023-02-14 12:50:43',6),(51,'REACT_JS','2023-02-14 12:50:43',6),(52,'NODE_JS','2023-02-14 12:50:43',6),(53,'ASP_NET','2023-02-14 12:50:43',6),(54,'ANGULAR','2023-02-14 12:50:43',6),(55,'ANDROID','2023-02-14 12:50:43',6),(56,'IOS','2023-02-14 12:50:43',6),(57,'Ahmedabad','2023-02-14 13:21:29',7),(58,'Rajkot','2023-02-14 13:21:29',7),(59,'Surat','2023-02-14 13:21:29',7),(60,'Vadodra','2023-02-14 13:21:29',7),(61,'Software Devloper','2023-02-14 13:30:18',8),(62,'Requriement Gathering Team','2023-02-14 13:30:18',8),(63,'UI/UX Design','2023-02-14 13:30:18',8),(64,'HR Management','2023-02-14 13:30:18',8),(65,'Security','2023-02-14 13:30:18',8),(66,'Buisness Development','2023-02-14 13:30:18',8),(67,'Marketing Team','2023-02-14 13:30:18',8);
/*!40000 ALTER TABLE `option_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pref_detail`
--

DROP TABLE IF EXISTS `pref_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pref_detail` (
  `pref_id` int NOT NULL AUTO_INCREMENT,
  `pref_location` varchar(50) NOT NULL,
  `pref_notice_time` varchar(50) NOT NULL,
  `pref_expected_ctc` varchar(50) NOT NULL,
  `pref_current_ctc` varchar(50) NOT NULL,
  `pref_department` varchar(50) NOT NULL,
  `candidate_id` int DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pref_id`),
  KEY `candidate_id` (`candidate_id`),
  CONSTRAINT `pref_detail_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `basic_detail` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pref_detail`
--

LOCK TABLES `pref_detail` WRITE;
/*!40000 ALTER TABLE `pref_detail` DISABLE KEYS */;
INSERT INTO `pref_detail` VALUES (1,'Vadodra','1 month','7 LPA','5LPA','REACT_JS',1,'2023-02-28 03:53:30'),(2,'Rajkot','4 month','10 LPA','7LPA','ANGULAR',2,'2023-02-28 03:58:28'),(3,'Vadodra','1 month','7 LPA','5LPA','REACT_JS',3,'2023-02-28 03:53:30'),(4,'Rajkot','20 days','5 LPA','3 LPA','NODE_JS',4,'2023-02-28 08:24:21'),(5,'Vadodra','1 month','7 LPA','5LPA','REACT_JS',5,'2023-02-28 03:53:30'),(6,'Vadodra','1 month','7 LPA','5LPA','REACT_JS',6,'2023-02-28 03:53:30'),(7,'Vadodra','1 month','7 LPA','5LPA','REACT_JS',7,'2023-02-28 03:53:30'),(8,'Vadodra','1 month','7 LPA','5LPA','REACT_JS',8,'2023-02-28 03:53:30'),(9,'Vadodra','1 month','7 LPA','5LPA','REACT_JS',9,'2023-02-28 03:53:30'),(10,'Vadodra','1 month','7 LPA','5LPA','REACT_JS',10,'2023-02-28 03:53:30'),(11,'Vadodra','1 month','7 LPA','5LPA','REACT_JS',11,'2023-02-28 03:53:30'),(12,'Rajkot','4 month','10 LPA','7LPA','Security',12,'2023-03-11 09:42:02');
/*!40000 ALTER TABLE `pref_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_detail`
--

DROP TABLE IF EXISTS `ref_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ref_detail` (
  `ref_id` int NOT NULL AUTO_INCREMENT,
  `ref_name` varchar(50) NOT NULL,
  `ref_contact` varchar(50) NOT NULL,
  `ref_relation` varchar(50) NOT NULL,
  `candidate_id` int DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ref_id`),
  KEY `candidate_id` (`candidate_id`),
  CONSTRAINT `ref_detail_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `basic_detail` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_detail`
--

LOCK TABLES `ref_detail` WRITE;
/*!40000 ALTER TABLE `ref_detail` DISABLE KEYS */;
INSERT INTO `ref_detail` VALUES (1,'Parth','6352422201','friend',1,'2023-02-25 12:39:59'),(2,'dev','9898079504','friend',1,'2023-02-25 12:39:59'),(3,'meet','6352422801','friend',2,'2023-02-25 12:42:04'),(4,'dev','9898079598','friend',2,'2023-02-25 12:42:04'),(5,'Vivek','6352422274','friend',3,'2023-02-25 12:47:19'),(6,'sathiya','9898079504','friend',3,'2023-02-25 12:47:19'),(7,'vivek','9898079504','brother',4,'2023-02-28 08:46:02'),(8,'vishwa','7418529635','friend',4,'2023-02-28 08:52:24'),(9,'nisarg','4567891235','brother',5,'2023-02-27 03:43:07'),(10,'jay','7539517896','brother',5,'2023-02-27 03:43:07'),(11,'jay','7415289365','friend',6,'2023-02-27 03:52:12'),(12,'nandani','7419586523','father',6,'2023-02-27 03:52:12'),(13,'Vivek','7415289365','friend',7,'2023-02-27 03:54:54'),(14,'nandani','9898079598','friend',7,'2023-02-27 03:54:54'),(15,'nisarg','6352422801','brother',8,'2023-02-27 03:57:26'),(16,'nandani','9898079598','friend',8,'2023-02-27 03:57:26'),(17,'Parth','6352422274','friend',9,'2023-02-27 04:00:55'),(18,'sathiya','9898079504','friend',9,'2023-02-27 04:00:55'),(19,'Parth','6352422201','friend',10,'2023-02-27 04:03:26'),(20,'sagar','7419586523','brother',10,'2023-02-27 04:03:26'),(21,'jaymin','6724985552','friend',11,'2023-02-27 04:06:28'),(22,'sathiya','7539517896','brother',11,'2023-02-27 04:06:28'),(23,'meet','6352422201','friend',12,'2023-03-11 09:42:02'),(24,'nandani','7419586523','friend',12,'2023-03-11 09:42:02');
/*!40000 ALTER TABLE `ref_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_master`
--

DROP TABLE IF EXISTS `select_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `select_master` (
  `select_id` int NOT NULL AUTO_INCREMENT,
  `sel_name` varchar(50) NOT NULL,
  `key_sel_master` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`select_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_master`
--

LOCK TABLES `select_master` WRITE;
/*!40000 ALTER TABLE `select_master` DISABLE KEYS */;
INSERT INTO `select_master` VALUES (1,'state','state_id','2023-02-14 08:21:56'),(2,'Relationship_status','relationship_id','2023-02-14 08:29:23'),(3,'Course','course_id','2023-02-14 11:35:11'),(4,'University','university_id','2023-02-14 12:06:57'),(5,'Language','language_id','2023-02-14 12:30:14'),(6,'Technology','tech_id','2023-02-14 12:47:20'),(7,'Location','location_id','2023-02-14 13:19:23'),(8,'Department','department_id','2023-02-14 13:27:51');
/*!40000 ALTER TABLE `select_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_master`
--

DROP TABLE IF EXISTS `state_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state_master` (
  `state_id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(50) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_master`
--

LOCK TABLES `state_master` WRITE;
/*!40000 ALTER TABLE `state_master` DISABLE KEYS */;
INSERT INTO `state_master` VALUES (1,'Gujarat'),(2,'Rajasthan'),(3,'Delhi'),(4,'Karnataka'),(5,'Punjab'),(6,'Arunachal Pradesh'),(7,'Kolkata'),(8,'Uttar Pradesh'),(9,'Bihar'),(10,'Assam'),(11,'Kerela'),(12,'Madhya Pradesh'),(13,'Chattisghar'),(14,'Goa'),(15,'Himachal Pradesh');
/*!40000 ALTER TABLE `state_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tech_detail`
--

DROP TABLE IF EXISTS `tech_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tech_detail` (
  `tech_id` int NOT NULL AUTO_INCREMENT,
  `tech_name` varchar(50) NOT NULL,
  `tech_level` varchar(50) NOT NULL,
  `candidate_id` int DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tech_id`),
  KEY `candidate_id` (`candidate_id`),
  CONSTRAINT `tech_detail_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `basic_detail` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tech_detail`
--

LOCK TABLES `tech_detail` WRITE;
/*!40000 ALTER TABLE `tech_detail` DISABLE KEYS */;
INSERT INTO `tech_detail` VALUES (1,'REACT_JS','Mideator',1,'2023-02-25 12:39:59'),(2,'NODE_JS','Mideator',1,'2023-02-25 12:39:59'),(3,'REACT_JS','Mideator',2,'2023-02-25 12:42:04'),(4,'NODE_JS','expert',2,'2023-02-25 12:42:04'),(5,'ASP_NET','Mideator',3,'2023-02-25 12:47:19'),(6,'ANGULAR','expert',3,'2023-02-25 12:47:19'),(10,'ANDROID','Mideator',5,'2023-02-27 03:43:07'),(11,'PHP','Mideator',6,'2023-02-27 03:52:12'),(12,'REACT_JS','expert',7,'2023-02-27 03:54:54'),(13,'NODE_JS','Mideator',7,'2023-02-27 03:54:54'),(14,'REACT_JS','expert',8,'2023-02-27 03:57:26'),(15,'IOS','Mideator',9,'2023-02-27 04:00:55'),(16,'PHP','Beginer',10,'2023-02-27 04:03:26'),(17,'PHP','Mideator',11,'2023-02-27 04:06:28'),(47,'REACT_JS','Beginer',4,'2023-02-28 11:01:56'),(48,'NODE_JS','Mideator',4,'2023-02-28 11:01:56'),(51,'PHP','Beginer',12,'2023-03-11 10:06:22'),(52,'IOS','Mideator',12,'2023-03-11 10:06:22');
/*!40000 ALTER TABLE `tech_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_exp_detial`
--

DROP TABLE IF EXISTS `work_exp_detial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_exp_detial` (
  `work_exp_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(45) NOT NULL,
  `company_designation` varchar(45) NOT NULL,
  `ctc` varchar(45) NOT NULL,
  `joining_date` varchar(45) NOT NULL,
  `ending_date` varchar(45) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `candidate_id` int DEFAULT NULL,
  PRIMARY KEY (`work_exp_id`),
  KEY `candidate_id` (`candidate_id`),
  CONSTRAINT `work_exp_detial_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `basic_detail` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_exp_detial`
--

LOCK TABLES `work_exp_detial` WRITE;
/*!40000 ALTER TABLE `work_exp_detial` DISABLE KEYS */;
INSERT INTO `work_exp_detial` VALUES (1,'espark','jr software devloper','3LPA','2023-02-05','2023-02-28','2023-02-25 12:39:59',1),(2,'espark','jr software devloper','5LPA','2023-02-05','2023-02-24','2023-02-25 12:42:04',2),(3,'espark','jr software devloper','3LPA','2023-02-02','2023-02-28','2023-02-25 12:47:19',3),(4,'meditab','php devloper','5LPA','2023-02-03','2023-02-26','2023-02-25 12:47:19',3),(7,'L&T','mech engineer','5LPA','2023-01-08','2023-02-19','2023-02-27 03:52:12',6),(8,'espark','php devloper','5LPA','2023-02-01','2023-02-22','2023-02-27 03:54:54',7),(9,'espark','jr software devloper','3LPA','2023-02-03','2023-02-28','2023-02-27 03:57:26',8),(10,'mindhunt','securtiy analyst','4.15 LPA','2023-02-03','2023-02-25','2023-02-27 04:00:55',9),(11,'L&T','mech engineer','3LPA','2022-12-03','2023-02-16','2023-02-27 04:03:26',10),(12,'L&T','php devloper','4.15 LPA','2022-10-01','2023-02-05','2023-02-27 04:06:28',11),(69,'meditab','flutter devloper','3 LPA','2022-06-08','2023-02-04','2023-02-28 11:01:56',4),(70,'L&T','mech engineer','4.15 LPA','2023-02-12','2023-08-26','2023-02-28 11:01:56',4),(72,'L','s','5','2','2','2023-03-11 10:06:22',12),(73,'&','e','L','0','0','2023-03-11 10:06:22',12),(74,'T','c','P','2','2','2023-03-11 10:06:22',12);
/*!40000 ALTER TABLE `work_exp_detial` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-30 18:56:09

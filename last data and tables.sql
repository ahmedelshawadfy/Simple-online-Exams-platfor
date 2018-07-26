-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: exams
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
  `idCourses` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCourses`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'math'),(2,'biology');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_has_students`
--

DROP TABLE IF EXISTS `courses_has_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_has_students` (
  `course_id` int(11) NOT NULL,
  `studenst_id` int(11) NOT NULL,
  PRIMARY KEY (`course_id`,`studenst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_has_students`
--

LOCK TABLES `courses_has_students` WRITE;
/*!40000 ALTER TABLE `courses_has_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_has_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Points_Per_Question` int(11) DEFAULT NULL,
  `title` text,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (10,10,'test exam',2),(11,5,'first exam for math Course',1);
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `models` (
  `idModels` int(11) NOT NULL AUTO_INCREMENT,
  `Questions` text,
  `exam_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idModels`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professors` (
  `idProfessors` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProfessors`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors_has_courses`
--

DROP TABLE IF EXISTS `professors_has_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professors_has_courses` (
  `professor_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`professor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors_has_courses`
--

LOCK TABLES `professors_has_courses` WRITE;
/*!40000 ALTER TABLE `professors_has_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `professors_has_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `idQuestions` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(45) DEFAULT NULL,
  `ans1` varchar(45) DEFAULT NULL,
  `ans2` varchar(45) DEFAULT NULL,
  `ans3` varchar(45) DEFAULT NULL,
  `ans4` varchar(45) DEFAULT NULL,
  `ans` varchar(45) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idQuestions`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'hwo','a','b','c','d','jkf',10,1),(2,'                        jkasdnjkashdj','jksdfhjkh','jksdfhjfksdh','kjhsdjkf','jkhsdfjk','b',5,2),(3,'                        sjfsdjkfh','jsdfhjksh','jkhfsdjkfh','kjhsdffjkh','kjsdfhsdjk','a',10,2),(4,'1st question of 2017 math ex','50','60','70','80','c',10,9),(8,'qdsfnjksdn ','jnfsdjkfn','jkfsdkfb','jbsdkjbf','kjbsdkb','b',5,11),(9,'nkdkfjsdnfjkn','jkndfjksndfjk','njksdngjksdn','jknsdjkn','jkngkdjng','b',5,11),(10,'ksdfnjskdn','jkndsjksnd','jnfsdkjfn','jknsdjkfn','kjnfsdjkfn','b',5,11),(11,'jsndfjksdn','kjnsdfjkfnkj','jkdnsdkjng','kjnsdkjgn','kjnsdkjfn','b',5,11),(13,'msd fnsd ','nk dsnf ','k fsdnkf ','k sdnkf ','nd fnsd ','b',5,11),(15,'kdnfjksdn','jsdnfkjsdn','jkndkjfn','jkndskjfn','jknsdfjkn','b',5,11),(16,'sdnfjksdn','kjnsdfjkfn','kjnfkjsnd','kjnfsdjkfn','kjnsdfksjn','b',5,11),(17,'nsmd fksdnfn','kjnsdfkjsn','knfdjkfn','jkndfjksdn','jknsjkn','b',5,11),(18,'dlfnksdn','ldnfskdjn','jsdfnsdjkn','jdnkfsdjkn','djknfsdjk','b',5,11),(19,'Question','10','20','30','40','10',5,10),(20,'sdkfnjksdf','10','20','30','40','30',5,10),(21,'sdknfsdjkn','10','20','30','40','40',5,10);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `idStudents` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `Department` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idStudents`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-29 23:42:55

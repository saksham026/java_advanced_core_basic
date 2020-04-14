CREATE DATABASE  IF NOT EXISTS `online` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `online`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: online
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `2025_flat_cosum`
--

DROP TABLE IF EXISTS `2025_flat_cosum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2025_flat_cosum` (
  `co` varchar(100) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `exam` int(11) DEFAULT NULL,
  `assessment` int(11) DEFAULT NULL,
  `practical` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2025_flat_cosum`
--

LOCK TABLES `2025_flat_cosum` WRITE;
/*!40000 ALTER TABLE `2025_flat_cosum` DISABLE KEYS */;
/*!40000 ALTER TABLE `2025_flat_cosum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2025_os_comix`
--

DROP TABLE IF EXISTS `2025_os_comix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2025_os_comix` (
  `co` varchar(100) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `exam` int(11) DEFAULT NULL,
  `assessment` int(11) DEFAULT NULL,
  `practical` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2025_os_comix`
--

LOCK TABLES `2025_os_comix` WRITE;
/*!40000 ALTER TABLE `2025_os_comix` DISABLE KEYS */;
INSERT INTO `2025_os_comix` VALUES ('co0',NULL,NULL,NULL,NULL),('co1',NULL,NULL,NULL,NULL),('co2',NULL,NULL,NULL,NULL),('co3',NULL,NULL,NULL,NULL),('co4',NULL,NULL,NULL,NULL),('co5',NULL,NULL,NULL,NULL),('co6',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `2025_os_comix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2025_os_cosum`
--

DROP TABLE IF EXISTS `2025_os_cosum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2025_os_cosum` (
  `co` varchar(100) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `exam` int(11) DEFAULT NULL,
  `assessment` int(11) DEFAULT NULL,
  `practical` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2025_os_cosum`
--

LOCK TABLES `2025_os_cosum` WRITE;
/*!40000 ALTER TABLE `2025_os_cosum` DISABLE KEYS */;
INSERT INTO `2025_os_cosum` VALUES ('co0',NULL,NULL,NULL,NULL),('co1',NULL,NULL,NULL,NULL),('co2',NULL,NULL,NULL,NULL),('co3',NULL,NULL,NULL,NULL),('co4',NULL,NULL,NULL,NULL),('co5',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `2025_os_cosum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2025_prn`
--

DROP TABLE IF EXISTS `2025_prn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2025_prn` (
  `prn` bigint(20) NOT NULL,
  PRIMARY KEY (`prn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2025_prn`
--

LOCK TABLES `2025_prn` WRITE;
/*!40000 ALTER TABLE `2025_prn` DISABLE KEYS */;
/*!40000 ALTER TABLE `2025_prn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2025_subject`
--

DROP TABLE IF EXISTS `2025_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2025_subject` (
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2025_subject`
--

LOCK TABLES `2025_subject` WRITE;
/*!40000 ALTER TABLE `2025_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `2025_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abc`
--

DROP TABLE IF EXISTS `abc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abc` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abc`
--

LOCK TABLES `abc` WRITE;
/*!40000 ALTER TABLE `abc` DISABLE KEYS */;
/*!40000 ALTER TABLE `abc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abcd`
--

DROP TABLE IF EXISTS `abcd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abcd` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abcd`
--

LOCK TABLES `abcd` WRITE;
/*!40000 ALTER TABLE `abcd` DISABLE KEYS */;
/*!40000 ALTER TABLE `abcd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment`
--

DROP TABLE IF EXISTS `assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assessment` (
  `q1` int(11) DEFAULT NULL,
  `q2` int(11) DEFAULT NULL,
  `q3` int(11) DEFAULT NULL,
  `q4` int(11) DEFAULT NULL,
  `q5` int(11) DEFAULT NULL,
  `q6` int(11) DEFAULT NULL,
  `a1` int(11) DEFAULT NULL,
  `a2` int(11) DEFAULT NULL,
  `a3` int(11) DEFAULT NULL,
  `a4` int(11) DEFAULT NULL,
  `a5` int(11) DEFAULT NULL,
  `a6` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment`
--

LOCK TABLES `assessment` WRITE;
/*!40000 ALTER TABLE `assessment` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author_book`
--

DROP TABLE IF EXISTS `author_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author_book` (
  `auth_aid` int(11) NOT NULL,
  `bok_bid` int(11) NOT NULL,
  PRIMARY KEY (`auth_aid`,`bok_bid`),
  KEY `FK2A7A111D6763503A` (`bok_bid`),
  KEY `FK2A7A111DDF134CC5` (`auth_aid`),
  CONSTRAINT `FK2A7A111D6763503A` FOREIGN KEY (`bok_bid`) REFERENCES `book` (`bid`),
  CONSTRAINT `FK2A7A111DDF134CC5` FOREIGN KEY (`auth_aid`) REFERENCES `author` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author_book`
--

LOCK TABLES `author_book` WRITE;
/*!40000 ALTER TABLE `author_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `author_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors1`
--

DROP TABLE IF EXISTS `authors1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors1` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors1`
--

LOCK TABLES `authors1` WRITE;
/*!40000 ALTER TABLE `authors1` DISABLE KEYS */;
INSERT INTO `authors1` VALUES (1,'abcd'),(2,'sde');
/*!40000 ALTER TABLE `authors1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors1_book`
--

DROP TABLE IF EXISTS `authors1_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors1_book` (
  `auth_aid` int(11) NOT NULL,
  `bok_bid` int(11) NOT NULL,
  PRIMARY KEY (`auth_aid`,`bok_bid`),
  KEY `FK41B2247F6763503A` (`bok_bid`),
  KEY `FK41B2247FDF134CC5` (`auth_aid`),
  CONSTRAINT `FK41B2247F6763503A` FOREIGN KEY (`bok_bid`) REFERENCES `book` (`bid`),
  CONSTRAINT `FK41B2247FDF134CC5` FOREIGN KEY (`auth_aid`) REFERENCES `authors1` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors1_book`
--

LOCK TABLES `authors1_book` WRITE;
/*!40000 ALTER TABLE `authors1_book` DISABLE KEYS */;
INSERT INTO `authors1_book` VALUES (1,1),(2,1),(1,2),(2,2);
/*!40000 ALTER TABLE `authors1_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awedqrw`
--

DROP TABLE IF EXISTS `awedqrw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awedqrw` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awedqrw`
--

LOCK TABLES `awedqrw` WRITE;
/*!40000 ALTER TABLE `awedqrw` DISABLE KEYS */;
/*!40000 ALTER TABLE `awedqrw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(255) DEFAULT NULL,
  `bdesc` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'java','ss',500),(2,'c','ss',500),(3,'java','ss',500),(4,'c','ss',500),(5,'java','ss',500),(6,'c','ss',500);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(20) DEFAULT NULL,
  `b_desc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'java','complete ref'),(2,'c','completeref2'),(3,'c#','full_knowlwdge');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Mobile');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daa`
--

DROP TABLE IF EXISTS `daa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daa` (
  `co1` varchar(100) DEFAULT NULL,
  `co2` varchar(100) DEFAULT NULL,
  `co3` varchar(100) DEFAULT NULL,
  `co4` varchar(100) DEFAULT NULL,
  `co5` varchar(100) DEFAULT NULL,
  `co6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daa`
--

LOCK TABLES `daa` WRITE;
/*!40000 ALTER TABLE `daa` DISABLE KEYS */;
/*!40000 ALTER TABLE `daa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daa_assessment`
--

DROP TABLE IF EXISTS `daa_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daa_assessment` (
  `q1` int(11) DEFAULT NULL,
  `q2` int(11) DEFAULT NULL,
  `q3` int(11) DEFAULT NULL,
  `q4` int(11) DEFAULT NULL,
  `q5` int(11) DEFAULT NULL,
  `q6` int(11) DEFAULT NULL,
  `a1` int(11) DEFAULT NULL,
  `a2` int(11) DEFAULT NULL,
  `a3` int(11) DEFAULT NULL,
  `a4` int(11) DEFAULT NULL,
  `a5` int(11) DEFAULT NULL,
  `a6` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daa_assessment`
--

LOCK TABLES `daa_assessment` WRITE;
/*!40000 ALTER TABLE `daa_assessment` DISABLE KEYS */;
/*!40000 ALTER TABLE `daa_assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daa_exam`
--

DROP TABLE IF EXISTS `daa_exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daa_exam` (
  `marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daa_exam`
--

LOCK TABLES `daa_exam` WRITE;
/*!40000 ALTER TABLE `daa_exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `daa_exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daa_practical`
--

DROP TABLE IF EXISTS `daa_practical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daa_practical` (
  `p1` int(11) DEFAULT NULL,
  `p2` int(11) DEFAULT NULL,
  `p3` int(11) DEFAULT NULL,
  `p4` int(11) DEFAULT NULL,
  `p5` int(11) DEFAULT NULL,
  `p6` int(11) DEFAULT NULL,
  `p7` int(11) DEFAULT NULL,
  `p8` int(11) DEFAULT NULL,
  `p9` int(11) DEFAULT NULL,
  `p10` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daa_practical`
--

LOCK TABLES `daa_practical` WRITE;
/*!40000 ALTER TABLE `daa_practical` DISABLE KEYS */;
/*!40000 ALTER TABLE `daa_practical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defr`
--

DROP TABLE IF EXISTS `defr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defr` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defr`
--

LOCK TABLES `defr` WRITE;
/*!40000 ALTER TABLE `defr` DISABLE KEYS */;
/*!40000 ALTER TABLE `defr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeenew`
--

DROP TABLE IF EXISTS `employeenew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeenew` (
  `id` int(10) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `salary` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeenew`
--

LOCK TABLES `employeenew` WRITE;
/*!40000 ALTER TABLE `employeenew` DISABLE KEYS */;
INSERT INTO `employeenew` VALUES (102,'saksham',100);
/*!40000 ALTER TABLE `employeenew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam` (
  `marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excel`
--

DROP TABLE IF EXISTS `excel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `excel` (
  `id` varchar(10) DEFAULT NULL,
  `paswd` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excel`
--

LOCK TABLES `excel` WRITE;
/*!40000 ALTER TABLE `excel` DISABLE KEYS */;
INSERT INTO `excel` VALUES ('1.0','12.0'),('2.0','23.0'),('21.0','dsa'),('1.0','d3fgk'),('1.0','12.0'),('2.0','23.0'),('21.0','dsa'),('1.0','d3fgk');
/*!40000 ALTER TABLE `excel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food` (
  `ticket_no` int(11) DEFAULT NULL,
  `items` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,23,1246),(10,6,315),(3,17,931),(4,26,1521);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibertest`
--

DROP TABLE IF EXISTS `hibertest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibertest` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibertest`
--

LOCK TABLES `hibertest` WRITE;
/*!40000 ALTER TABLE `hibertest` DISABLE KEYS */;
/*!40000 ALTER TABLE `hibertest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_session`
--

DROP TABLE IF EXISTS `login_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_session` (
  `user_name` varchar(20) NOT NULL,
  `pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_session`
--

LOCK TABLES `login_session` WRITE;
/*!40000 ALTER TABLE `login_session` DISABLE KEYS */;
INSERT INTO `login_session` VALUES ('saksham','123456'),('saksham026','qwerty');
/*!40000 ALTER TABLE `login_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderh`
--

DROP TABLE IF EXISTS `orderh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderh` (
  `order_no` varchar(20) NOT NULL,
  `total_items` varchar(20) DEFAULT NULL,
  `total_Cost` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderh`
--

LOCK TABLES `orderh` WRITE;
/*!40000 ALTER TABLE `orderh` DISABLE KEYS */;
INSERT INTO `orderh` VALUES ('14598','13.0','730.36'),('21647','24.0','1326.70'),('28063','28.0','1521.01'),('29780','6.0','314.92'),('45888','12.0','629.85');
/*!40000 ALTER TABLE `orderh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os`
--

DROP TABLE IF EXISTS `os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os` (
  `co1` varchar(100) DEFAULT NULL,
  `co2` varchar(100) DEFAULT NULL,
  `co3` varchar(100) DEFAULT NULL,
  `co4` varchar(100) DEFAULT NULL,
  `co5` varchar(100) DEFAULT NULL,
  `co6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os`
--

LOCK TABLES `os` WRITE;
/*!40000 ALTER TABLE `os` DISABLE KEYS */;
/*!40000 ALTER TABLE `os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_assessment`
--

DROP TABLE IF EXISTS `os_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_assessment` (
  `q1` int(11) DEFAULT NULL,
  `q2` int(11) DEFAULT NULL,
  `q3` int(11) DEFAULT NULL,
  `q4` int(11) DEFAULT NULL,
  `q5` int(11) DEFAULT NULL,
  `q6` int(11) DEFAULT NULL,
  `a1` int(11) DEFAULT NULL,
  `a2` int(11) DEFAULT NULL,
  `a3` int(11) DEFAULT NULL,
  `a4` int(11) DEFAULT NULL,
  `a5` int(11) DEFAULT NULL,
  `a6` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_assessment`
--

LOCK TABLES `os_assessment` WRITE;
/*!40000 ALTER TABLE `os_assessment` DISABLE KEYS */;
/*!40000 ALTER TABLE `os_assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_exam`
--

DROP TABLE IF EXISTS `os_exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_exam` (
  `marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_exam`
--

LOCK TABLES `os_exam` WRITE;
/*!40000 ALTER TABLE `os_exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `os_exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_practical`
--

DROP TABLE IF EXISTS `os_practical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_practical` (
  `p1` int(11) DEFAULT NULL,
  `p2` int(11) DEFAULT NULL,
  `p3` int(11) DEFAULT NULL,
  `p4` int(11) DEFAULT NULL,
  `p5` int(11) DEFAULT NULL,
  `p6` int(11) DEFAULT NULL,
  `p7` int(11) DEFAULT NULL,
  `p8` int(11) DEFAULT NULL,
  `p9` int(11) DEFAULT NULL,
  `p10` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_practical`
--

LOCK TABLES `os_practical` WRITE;
/*!40000 ALTER TABLE `os_practical` DISABLE KEYS */;
/*!40000 ALTER TABLE `os_practical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `park_bills`
--

DROP TABLE IF EXISTS `park_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `park_bills` (
  `bill_no` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_no` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `tax` decimal(10,0) NOT NULL,
  `service_charge` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`bill_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `park_bills`
--

LOCK TABLES `park_bills` WRITE;
/*!40000 ALTER TABLE `park_bills` DISABLE KEYS */;
INSERT INTO `park_bills` VALUES (2,2,1700,561,NULL,1700),(3,3,9495,3133,7,9731),(4,4,4685,1547,11,5071),(5,5,2000,660,NULL,2000);
/*!40000 ALTER TABLE `park_bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `park_customers`
--

DROP TABLE IF EXISTS `park_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `park_customers` (
  `ticket_no` int(11) NOT NULL AUTO_INCREMENT,
  `below_5` int(11) DEFAULT NULL,
  `below_10` int(11) DEFAULT NULL,
  `above_10` int(11) DEFAULT NULL,
  `day` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ticket_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `park_customers`
--

LOCK TABLES `park_customers` WRITE;
/*!40000 ALTER TABLE `park_customers` DISABLE KEYS */;
INSERT INTO `park_customers` VALUES (2,1,1,1,'friday'),(3,2,3,6,'thursday'),(4,3,2,2,'friday'),(5,4,1,1,'sunday');
/*!40000 ALTER TABLE `park_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKED8DCCEF19C66EAA` (`cid`),
  CONSTRAINT `FKED8DCCEF19C66EAA` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'sjvj','4 tb memory',132000,1),(2,'spksp','28 gb ram',122000,1),(3,'asus zmpm1','brilliant',12000,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `ptype` varchar(30) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (3,'saksham','male','family','false'),(4,'saksham gupta','male','family','true'),(7,'sg','male','friends','true'),(8,'gupta','male','friends','true');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rank_store`
--

DROP TABLE IF EXISTS `rank_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank_store` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(20) DEFAULT NULL,
  `b_desc` varchar(20) DEFAULT NULL,
  `rank` int(1) unsigned zerofill DEFAULT '0',
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank_store`
--

LOCK TABLES `rank_store` WRITE;
/*!40000 ALTER TABLE `rank_store` DISABLE KEYS */;
INSERT INTO `rank_store` VALUES (1,'java','complete ref',4),(2,'c','completeref2',5),(3,'c#','full_knowlwdge',1);
/*!40000 ALTER TABLE `rank_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `contact` varchar(14) DEFAULT NULL,
  `photo` longblob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (5,'saksham','saksham@026','123456','7447424746','�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	\r\r\r\r( \Z%!1!%)+...383-7(-.+\n\n\n\r\Z---+---------+-----------------------++------------��\0\0\�\0\�\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0A\0\0\0\0\01a!AQ�\"q��2R��#BCr4Tbs35Sc����\�\��\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0/\0\0\0\0\0!1A\"Qa2q#3B�4RC��\�\0\0\0?\0=\�s\�y�?�Q���\�Y\�e+Oq\��s\�� �\�륝\�y_4�9s\�q{��@\�@	\0$\0�A��6t\Z���lK� \�8\��H9����.$���w�\�\�\�˼�E�28t�\�#�\�\�۩�Q\�IX4\�K\�\��jce�:$��j\�-��t�\0$\0�@A3\�\��9\�{NZ�8�\�>`�\�\0n�\�=��io���GᔵG�{����|\�Ԁ>$�V\�<�O+�\�\�G8\�\� �\0�ӛ;\r]\�\�\�Y�EnD�\�SQ*�\�Qҫ\nei*:>���\�\�e.�\�\�p�\�+y�\�\�\�w�C��\�\�\���Aí�.v\�,��\��\�,W���\�E\�]��R�p.��i)\�n%Ѱ���K�\�\\\��8!p�\�W�\0$\0��qH �8 ��(\���n�\0\���\0\�\0���\0H�N68\�)$A�LP���Jd\�i����\�AEº0��(8VƱI\��\�º5\nO$���j�ZYD�\�G\�K��^I!�c�J\��\�\��ُ\�?$q�w\���\�|��Y,�-��R-�Q\nko\n�P\�2A�\�p��cP\�\�D��\�x:zUT�7HR©q�ȯ�V\�r�\�\n$\�8\\$$\0�@	\0$\0�@\0�q�\�ؤ�\"d0�cy\�#MJ��,�/KC\�b0��\�%��\�j3\�\�PY�\�ZI\�]�\�؛�Sz�j�\�\��\�t}R\�fB>��\�y֑c�\�0�\�e\�)<\�?F�]\n+���6h�\�/,�\��:V<~	-��P\�\�\�^�h_\�#G\��\�}μ*?\�e�B\�\�>AM_5�S.��/�}V��\�|�͚�%oC�_�\�p\�G�a\�5\�f]\�\��\�\�T�X$fz�G>	�\�� ݕ�I��w\n�b��5U	yVhWx\"�����?]�\�\�TJ#���$j��#!�8\\$$\0�@	\0$\��\�lRH��2U���\���ςb0�\�(��L³6\�\�\r�\�N\0�MF	{3-���^lZD��t�,wK]�x�\�/M�!\�^u��\�\�Z>82\�\�?l�\�\�:�W��M$>\�[�W؉Qs��y\��\�\�9zBv�\Z+� \\��\�r��߳:νZ��d7\�&x5Z�{����\0@�\"r\�f\�\��]�\0ǿ�\�\�\��\0RT:��e\\�$�ï��\���B��>iycN?�][ϝ\� ;U-4hB\�Mn/cU�xÚx\nQ�Q�\�nĪ\�\"�{\�-9t]�s�-\Zs~$y\�Ώ(}U�(K;�HsH#��\�5�eF\�A\�En���D\�4i�YI\�VP4\�Q^Q�\�Ʃhf2!@�3�\�B@	\0$\�\�5I\"\r� �[/9�\����h�PQ\�\�7lʺ\�\�h��֌����e\�r��\�\�t��d@9\���Y�n^\"ot����ic\0\�\�@�`�\�t�E#9w�MS�)��^��G\�)�MW#�\�-:�a\�_\�/���W*n\�\�\�}U���R�@�\�\�\�G�\�*=\�X��.|��w�ñ\��]V\"\�&�t>�.I�K�A\�n���\�\�EW:!?�u\�_K�Yq�\�I��\�?E�v���\�}mK鴰\� p\�9	��zY\�\���h\�i\�^\�_ND�fnwL�\�q�\�\�PX] �\�\�l\�dl[G��\'�>2)\��[�UYX�\�\�T�\�j\�h\Z���hBd	�hf,i�D��\0H��\�E�ab�\"�\�+Gb�e�\�K�n2���Y\�\�4��Z�\�1\�\��F��,m������Y99.oK\�\��gMU�s��@ђpR1rzF͖ƨ�S5�ݑ�\�%j\�\�%\�G�\�공�\�D��I\'%=�fB�\'���r����\�f�\�R\��9+�U��F��]ʏ2\�A\�\�ð:\�\�WT\�:	P\�r�Vʀ�=*\�\�)f8b�\�u|f���\�\���]ǩ��\�Fŵ\�:\�i~�\rk%hsH9X�T\��\�c���\�#wKs&ak���Ss�\�\�aG\"�+\�vWD\�\�;w��n��#�x�\�x�\�\"�q�\�Qd4h\�i[��JN&�V\'�-$?	�La3��L�\0zq�D\�4�I�icWA\nY ���d\�\"f_ai�\�\���\�\�F&E�������w#�F�!���(\�\��ve�G����,\�z=,\�\Z\�\�-S�K�c\Z2	u�����?g�\�=BY\�E\n��~\�OB\�\�\0��\�+9�uR	��\�/)�\�H>Z�S�\�j#>�A̹T6jy�\�~Ўg{c��]S\"\���ML�U��\�[�N��-o*�\�F\�C�5\�wMB͙�P\\t��\�8w\�N\�+�R��F>D�\�\�\�j\�+C�s��enL���Qȇ$A\��\�\�\�\0pyV\�^\�\�K�`��\�>ё^�\�\�#��%�yj�\�.,�\\i�I\�j�\n�dII\�ժ`���hv�\�Z�W�4.�,��E3a�(�L��L�\�)�NU\"\�A\����{r=\�\��fE��\�\��.HԢ`h\0l�\�\�qUj�(����\�=\0\�\�܎�\0��F��y���\�\�@̮U��Z2���E[+U�iI\�צ�URZS4��5B�\�v�_2�ȹ@h\�TvMD\�sgt.��C\�6\Zd�JD	1N��U()�U񘥕���LBfu�+uf\�ӕ\�fU���%z,pa>\�Ȫr�S�װ\��rƷO\�468�+Zg���\�锍qh�kF�\0yj\�]�ŞK�\�v�\�G\�2ۥ6\�bQ�aV��t�\�m\�0C�F�r �*�\�8\�扎0.�\r�)X����\�\�&\���\�[m�\'\�ZFL͋H\�\�qGw\0V^e����\�p�7��\�\�s��K\�rѡ������#�W�9\�\'r�\�#�\�\�vO�*\n�ҶHע��YP���Z�O2^R�Oz����\�Q\'��7*Il\�z%\�HO�b56/+�;���\�R\�\�ޙH�t_lo*�v\�.�E�T2�\"\�g\0�$\�HJ\�\��;&�#.\�\�U��n\�ؽ���\�\�4�\�\�#\r\'\�n\�̫���I\�r�ö���ʘI�|BZ��f�u\n\�1��k�\�6+|��\�T\�\'Ŕ��;�����2�XĜѯT����\"ƔI�\��BL)F\�\����\�\"\�;Z1�$_4�\\�n7=\�S|`ُ�\�&\�OK@�`M\�\��TV��G\�T�\�~\0�J\�����1\�29MV��\�>\�\�$#�YV��t�\�mQ\0\rT�Y�N��ez��ȡ��L��]Q8\�>��%7U{�\�#H�{�Ed�=,h\�y\'A?7\Zk\�\�̽\��xE�h\Z*X�4.%�\�.k��p{\�\�G呸���\�U,f����\\)0Od�\�Qv\�&H�4=lm@�\����\�\�+�Ŭ�n�m�P��t5�}��H\�ȁ�h\���\Z3\�\��U�\rΛ\�4�r>+\�\�S\�g\Z�@vp���9�ԩ\�dx�3+�[��چ1�U���Fhڦ@z���4 \��P,�\nq+�b��&`�.e�\�͓\�#&F����\'W\���\�z(\��2Q�8\�z,T{I=Gf[������<x֏�>\�Cfs�uX�<J\�t���͚b�zVLт!���\�\�1eY쌥�����=V>\�m\�Q\�Z\�\��\�f۔���$��I?\����\�T\�\�\��\0�\�\�)��\��F�E\'\��\0���z\�\�q�\n�������Զ��\�\��@*\�In\�!n6�:r���a!ez4!=������\�ʦ��Rl���%�\�.\�\�ّ|K��|�\"�\�\�\�I��^�\�\�0��\�\�6�s�gr������W�w_V�n�_��\�=�S֣7EJ\�\�\�#v���diVȘU�)²%S\r\�\r�U��2\�in\�\�<�k^\�\��\\y�\�A�C=\n;��\�V\�1ǂ��[�=\\�\�\'�1\���sϙ+\�\�\�Q\�\�\�\�U\���\�f\�:+u�\�\'6kҁ���\��\�u\��\�)�B~��!�f���3\�m��\0i#sx$x9\�;�jǯ\�\�f]��t�\0j4}cCN)_\�\�7���\0�g�	,w-=�\���4\�F���W=��\���Z[�h\�\�y�,\���\0\�?\"�\�\��\0F�]�\��?�ZhH��\�.{dCq\��겚ֽ\nth\�9IO\����#|f�&��\�C@\0�Ī�\�\��)�\0����\�յ��0[\�I=�rj\�n-ܑ]��+*kLՋ\�:���N�\��1;Qb�=9dދu��\'\�\�\�\�Få�ꁼ,lūQ\�\'�4y��\��.a�X���\�\���{}o���wHXoP�#t��J\�j���u(�X�\�U���\�O�~�$\���\����%\�=�C�{�b��ݿ�JJ�ލ���\0_��ޏw|J�\�\�\��\�2\�⒰\�\�+u�9���KHzp�臲R�Zld�E��(\�͞�>�\�Tb:8�;�.>�#\�g\�\�\�=&�S\�\�U��\\��B��\�x�\�\�Q��\�1��\�̎=�`�\�\'�\�s�m$�:\�C��Gb���\"�\�\��\0F�\\[�?ɟi������Շ\n\�ɩY[�<�VJ�#4lU1�#sH\�{��\�\�&�ٞ\�ثik�u\'D�7𸅿��E?�簥���V;�;W�\�T�\rƪD\��W�R\��n�M�ʼ�ZN\�B�FQ�\�\���겳�y�\��\�ڀ~\�O\�*�o\�!ޭ�\0��\�w>�j\�G�\�)\�$���9_��I\�Ԭ���R�]�\�y\�5Y�yl����y(\�t�\�D�P^P\�ASE�\�\�\������h\�\�[�_��\�\�\�\�����e2\�\�\�V�\�V�\�s6*\�\��\�;�\�\�)z-�y�Ǣ\�\�~Q���3\�(ux3\"�s��\�=\�\�u�(ѩ�ڇ;����t��K\�y\��o\��/��@K:]�\�*Yt��⽓Ż�b�k\\\�j#l0u\�\�8c\�`�\�Õ2r�\�~b\�J1ZH�\�!/����9q�lɚܔWɹ�u��\0����_�_\�\�\�O���\0\�\��k0t��x�\�\�\r� �\��~dٞV\�\n\�g��\�\�AT�$�\n�	\�Xm\�\�9*�[�-\�?_�)���f \��Y�\�=B��l����*���c�=c����V͞�/��uȬ�\r\�pW�Rf�d%Yx\�9]�	��]�j}ȵZ��z�bd�V�?w7Ϻ�>;�\��i�_r�3r\�8+&/L��G�\Z���\�A\�^���#\��\\.h�\\\�\�/b5�\�VkY�Jhإ�\�jZHЃ#�\��\�\�;g���O\Zz32�\�7�eW֖\Zg�>aY\�i\�lاM��c�_>�^�����;H߸|�)<<�D��c�K�\�܌�駦�\�:7\�z[]�qg�}ʟ�il�\�xI�\�\�g;�^\"�iz/JH�a��\0|�+;9Mp��g��\�s\�[\�\�:\��\�zw���F��x\�ܥ�(\�Y�\�uL��׹8\�\���ZVm�\�U�T\�vJƛ\�7 ���\n196�bbJ\�X�\�\�9Z2o�o�E��z>����lvza`\�ad\�v3\����c�\�YM\�xUvw1N�f�Q1����Zv�%F\�\�\�\� \rI\�)#N�Dʯe\�pؑ�\�?d\����\�\�\�;S1�\"h�.��Vw\�{+r#ʶgcO�����\�|B�~u\�;3\�oE��c��\��CG�\������\�նĖ<ʽ|[�f��f��+$iW\"����H��_T�Ul6����:75\�qii\� \���Eɭ?FV3\�Ѹ\�]w\�k\'p�M���]�\0��OOk\�\�\�\�z�.��-\�\�\�3\�<�pY\�\\\�57M�ተ\�\�\�o \0�)\�\�lt\�\�Ioڲ���\�l�c�\ZA�����׷\�	\��*\�Z�\�\�KXj�\�=\�{��F{4y�\�)�U\�;�\�~\����$���\�6\�H��4J�b�(�r\�E�fϺE�\�\�\�\�c\�L�i�>����W\�.0lʌ]���Z��hAy�=����p�G\�R��^\�\�%i\�CKg�\�v�E|E\�M�S��h�J��t\�PR�f�V\\u]G$�z�N\�Xm�윭�Y.v:��ӝ�S\����\n��͞\�T$���\0���\�6�a\�o\�пSA��v�\n\�;x\�B}k�_5�d�Zm�-�-�\�\�ٯR\�O�Jq6���\����MZ�\n�4�C��e\�\�.���_]�)�� \�\r\�\�hU��2\�5\"\�E�e`�e{~L�\�/ܓxr��?S�\�p��B?�\�\�\�(?K7\�u�\�ϼUVeՄ�����e\�4\� {���{\ZKC�F��\�A\ZXU����PA�j3.��[)�N\�\�\Zn��0�S:\�.(o�\�s������\'\�e%��\�\�59?�%յ�r<\�\��0\�\rٻ�r3����\�f�<\n\�k�I͛D9KHze@�M+�:�\�رkn�]�Pfu\�-V���\�H\�ɬ\��-\��D�m[\\�wG\�\�Y��e\�\�c\�e\'�z\�\�N:&m�m�$u\�\�\�ƹN:<.v4��b�q�߲��-�ҹ[J��Mzm\�ӥ�F��ĩq\Z�\�HQ�Y���!uM�qLu�%X�dH�\�wY\�\�t��9�ME#�,�\�q.�BS\'S���E�`^��1�[ia�\�\�\�7\\�\�.i{�\�7=\��v̴�u�(\�-Ԣ65���m�r\�\�p��(��]\�E\0�\�\�ur�\�\��\��ާ9��\��*7�HX\�\� \0�zRlԮ �\n��\�\r\�p���d�\\��T\�R�T\���,Vꍓu\�ɾ�\�b�9�� �<N:f5�p�$lK�f���;���S�G�鹊�\�~\�\�\�\�٘ZG|v+�Z\�\�u%�_\�\�o��1\�k��;n�a5dv�\�*g\�EN��~ʩ\�h\�p�����iUp*z^��-!IN�p��w@�\�Z�paQ\�K��\�C�\�`]\�E\�z:~\�J\�a2\ZUd`Q;Bt��+\�+.\r\�Q\�\�3\�\\Ym��\0\�<&RQFU�9=#Q\�aC�=\�\�\�\'/#�\��zN�Ӹ.\���\�fiq8\0$\�\'�m_ti��2�Wx�G�\�\��u�Mj�\�e�k�(W*�\�VH\�Ǭ�\�ͺNr6)�w��\�\"+���#�\�G�\0v¤�4M��[/8��j6L\�F}ՖKm^\�ӵ\�\�Ȩ�\�[\�\�\'\�;�+\�V\�S�cY�\�\�)j#C�r\nĜ^�\�q�#t9D{��v�\��|v>C����\�c|yGٚ\�lΌ���\�V\�\'\�\�\�.2+�(N���\0�4<%�Y�]\�騸U8\r\��$�|*\�\�\�F���ǂ��p;\�e\nJĘ��SP)�\��z���\�\�Pp��b6\��\�	 �p���gN\�M\�\Z>�\�\�0���\�\�\�\��\�\�\�+�\0e��\�\�C\�=#j\��D\�7�\�&\�=G�Zؘ�W&y��\��Fis�ߺbɔc\�V+\�S��M`:�R�f�q\�\�KcQC%@�<A\� �WN1螦�\\�B�etd+dt5[&a#6\�%��n\�\�\�d_I~\�ڌ\�C\\r\��P\�\�V-�d0�\'�?��RU6F�4�XӃ�\�=�>L/�(������8z�Ut�~\nr�+\�^}�k֖{2Z:��Z\�\�\�~\�\'�Ӯ\�{^QS����&t��/q��S۸U��\�C�\�­\�3��o\�C�X���v\����� �	p۸V*�\'����PHRy�ϧ$��4�\�Uv_\n\�S�vD�_l�(\�\0\�.�%dߕ+?�\�`��S�O\�=��\'�	d�5�8\�;~L\�:�\0c��J\�\�\�\�\�#\���\�|+�f�:�\�rs\����Vk\�I\�f\�5\0j�J\�F�pL�Cc��\�VZ�\�\�! �\0\�t�D��V&U(�i�WFB�V\Z��L\�fuԖ\Z\n���\�a�u\�O\�7\�G|��FWm�6��o�\Z[��گqL�+&\�iA���WrԼ0�\0��6�%\�\�2�\���\�f���\�\�\�\�\�xer�F�\�<��t_�\�t?g�%N��~	�\�V�D%��h����n�>\�>\�\�_��\��\�\�\"�\�s�\��4̧�g\�aA\�Z�\'\Zo���\�\�?{\rD�`�U\�2,�\�[�\�1\��\�yIٛ9z61�p�?!�\�kF\0&\�߳j�aZ\�V�+k\�\��T\�S~�sj�}O\�C\�Z��-a\�o�{��F,a\��<�_P�%\�xE\�p\�{�\�=SA]��ߺRs5i�UP���*\�M*�Lv\"8�\�.H\��g� �\0�\�J�dZ$E*�e2�B��]\nΰ�%bb3��\�)�Xf\�@~\�w- �xLmIy3\�L��\�h\�N{\�\�\�)ne\�#�\�V\�|K\�-�7\�d\��=�b\�&�^�=�	2@v �\�Z4cl\'\�\�耸M�\�LM���L��žA�\�\�c\�\�\�6ɨEzB.\Z\�9F>ȕWH�s��N^��\�J��vV.\�ɣ\"1\�S\�`�\�\�\�\�S�������\\\�w�\'��x2�\�kܙ\\��r����c�\�\�yJ\�f�T�\�jR�]`٥T67^\�[e\�\r��H�p\�@	\0$\0���\�T�\"\��r��U(�!�VFB�%OX��\�,�)M_ʾ6	Y@V�\�ʾ6�ٌ���\�SLRX\�z\rQ\�Y[�ϯu\�W	{DS���)���rҩxu��u�|�Y�\�Ыx.]g!�\\\���ξ�y}m!ۤ|\�\�h�]S&_ ��U+�~>�����J\�\����WrwvU��\"�r�\n��r���U\�\�k�TJ�\���U5��e1\�\�OR��\�!Y\nYUM�Fg9V\�rCd�<\\:$\0�@	\0$\0�@��:t�C��I2$�\�V)JȪ��b�\ro*\�1yRN���b�ZX\�\���\�$�\�\�\�MZR�˟��t�\�M˟�;��a�ܹ��;I,a�.<�;c�D�\�ʭ\�_rռ�\�\�#Aj�UNc1��,\�!�\�F|��˔FK�vX��+�O�\0$\0�@O�\�1\�\�s���\�\�pA�@\r��\0H �]9��\�ݑhu��&E\�y��)8��ML�\�>ʥ%2�P\�k9S\�V\�;���ȿl\�w���Vr�̒�i\�|���U��E̱T0�\��c�Aȵ@i\�Ql�G˄�r�tH �\0H\0\��\0��s��\��{e�c$\�uʂ>��WL�:�v�X�\���T��� �A`�7 @	\0$\0�@\�t掃���:]\�\�\'bU\�Dx�	�y\�{�뼎p=�tr�e\�A�\�ʎD��6w��r\�\�h�p\�2�t�\0$\0�@	\0$�{!�_,\�\�_]��2$�R\�Ů-;G\�\��\0}\�<�\�\0t�>S�\��ը�7�@�\0�@	\0$\0�@	\0zN3�\0�t�<\\ \n��\0H �\0H �#�}�\�@b�a���\�'),(6,'saksham gupta','saksham026','123456','7447424746','PK\0\0\0\0\0!\0�Y��y\0\0\0\0\0[Content_Types].xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\�j\�0E����Ѷ\�J�(�\�ɢ�eh��5v\�ꅤ���#;1%\�14\�\� \�\�{\� 3\�\�V\�d\r\��32J�$�.t����\�\��$>0͙4\Z2�O��ۛ�|g�\'�\�>#\�\��>_�b>54V\n\�xt%�,�a%\��\���\�F\�a���_�`+�\�-^\�$\�J�<׍1+#BE��@[5�?\�0k�\�Y�:]k~D6\�S���z�RX�\r	�\�Э+E\�:L�G\�>��s\�)�Ӎq�r��j\�\��-���94�\�f�\��{|Y%Ӧ��Ї�;9�J-���� �u/�;	���o<���k\0\�{6���\Z\��^�s\�l!\���u/D�e�wt6Ges*;g\�X�\�\��c\�æ�\�l�q��k\��\�� .#�%�V�|�\0\0��\0PK\0\0\0\0\0!\0�\Z�\�\0\0\0N\0\0\0_rels/.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���j\�0@\���ѽQ\���N/c\�\�\�[IL\�\�j\���<\�\�]\�aG\�\�ӓ\�zs�Fu\��]�\Z�U\r��	\��^\�[��x\0����1x\�p\��\��f�\�#I)ʃ�Y�\�\Z����\��\�*D�\�i\")\�\�c$���qU\���~3��1\�\�jH[{�=E���\�~\nf?��3-��\�޲]\�Tꓸ2�j)�,\Zl0/%��b�\n\Z�\�\�z���ŉ�,	�	�/�|f\\Z�\�\�?6\�!Y�_\�o�]A�\0\0��\0PK\0\0\0\0\0!\0YiJ\�?\0\0\�$\0\0\0word/_rels/document.xml.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�Z\�o\�6~����{�\�r�u�\�\�6?x���M�%6���\�\\��;I�\�`�Qڂ�\�\��\�x�\�����\���X�\�$\Z.�(�3��I���G�*\�YGUF�V0�\�`�O׿���\�p�-xi{hE\�IT8W~�c\�\n�\�t	\n?Yj#�\�G�\�%eO4�8��|�]\��+��Y6�\�,��\�ú��1��K\�\�V�J�r?���@KFp��F�\���f-\�5X�\'^B\�ic�~�g\�An���0nX\�\�f\�\\g\�\�\�\���\"���\��9X�\�&%��\�\��\�mP\�o\�\�1\�\��\�hM\�Q��\�\�}\�X>\�5�=�\�\�0T�1t�\�\���fe����\�0h\Z�,Q\�V\�l��d\�Ҡ~\��;*�\�9:I\�m%�E�&g�ͮV���\�ZR��Q[h�\�B#��u\\\r\n\'=\�7}ץ�\\�c/�\�:\�\�\�x�|�\�\�.�Xj\�\�B\�x�]:\�GgJ\�h��\�\�\�t�j\�\�w\�H��eU#�\�d\�4�\�\�O\�	����3u\�\�\0\�\�9(\��Gf~���\��\r�j\�\�}XFv#3Z��\�%��<��\��3�\\�A-\0\�7`08xc�PZ\�|�|����>+�>J��\�\�\�\��Ğ\�e�֭\�r�\��2Ò\�y%?�$�ζ�\�\�)O\�\�2����6ǂJ\Z�O\�}AMI.�+\0����LT\�Ҁ�&�>��\�hT%`v�ym�ub����#%9R\�s�)\�L\�j\�gC�\�<S�ZU/�+\�X\�9�\�rS�\�e�����\�a�驼:\r;Dn\�\�mYc��30Y)\�Z�\�`���r����\�\Z\�\�\�I�:\rm?FbdXI3\�m�Č\�\�9���:f�ؼ\��zaU\�}�,��M�Fa���^�5��==I=�%z�\r�\�p$��\�3m�A�\��\'�\�\��I�gVC\�$IC�\�Գ��+�hz�y\�d���ύPwĶ?<�\� W���\�\�\�\�\�!A���hȼ�� ��5\�0�=�75\�z}���\�\�\r+N�ԩ?\�,	�L��Y�\�{��F払a\'T�\�h�_\�M���jX��\\e���Fa9����g��\�N;\�\��\�Hz��/=3��_r�\�@�)�>R��\��zE+4k\�ٸw�-U�Gܟ�e�-C�\�)\�Ny�ý;5\�<��\�\�\��w��\��\0\0��\0PK\0\0\0\0\0!\09B\�mE\0\0�;\0\0\0\0word/document.xml\�}\�nI�\���\�ec$\�.ۚ�\Z\�bUiƮ,WW/�� �$��\�\�΋hկ~�v�z�z�~�=\�9y!)��u�\�tW\�d232\�Ĺ\�\�\���\�8V�:ˍM�_\�\�m�(��62\����_?���^Qy$Q\�D�r���\����\�G6,\�:)\r�\���4�~eT\���z��8\�{cf6���\��L�\�\'6�ַ667�S�\�P\�9�\�(H.�|\�\r~Zl�(&�0\�YGAV\�O���dw�\��\�ف��` Z\�\�\�\�P۷jo��h\��Y͌��e#\�Y\�ޗ��5;ҫ/i{v�\�_6\�:�gܦ:�6}͆\�\� �(\�5\Z8\r\n\�7�)�h̍=?L`��/�=U�0ގn=«���t��Q\��+e�\�\�ת\�1�}y\��\�\�Y�<r\��|=\�1�\�&�Ȥ���t4�q\���i�\�\�\�7I7$�\�\�ӱ��p�\�;��c��\�#nn,�#�zb�)�\�\�g2&,�_�E�i\0wsA\�ؚ`/4��C�I\�\'\�\��v\�\��a�qM\�t�u\��cf˴\�|\�h�5\�O �o1�ú&%\�_7��Q�K���\�\�fA?�)B\�;��iW�n\�R�6�¿E?v��e\�\�oj<\�\�\�\�&݃.]�4\\�)XYww\�8>O��^-�\�p\���Ǎ����\�\�G\���>=}{g\�\�w\��\�\�?40Y^|��:�Ɓ�V�xd\�r�\��\�/�-��\�Ԫ\�\�_\�\�f=�\nD?f&\�\�!�Kc4V\�\�\�)2����\�������\�\�/\�Kg.n��:\�~\�/~\�k\�F��8�I;@�·_\�\�fK0-?R(�on\�ww6\�\�\�\�Al��kH\\_g�\�\�D�6\�\�\�Ko�\�\�z�q1{�\�$RyA^-����j��\'._\�º[\�^�ru��)6 \��_>����ntX*o\�NlR\�\'\r���f�s����v$xZn\�&��\�\� \�\�?泗�\�}��(\�C[ o\�\�\�\�Λ\�r[�����\�a��k\�n\�4+�l\�ͳ[0\�\�g�����,�B�E�i\�\\�M�\�p\�\�#\�\�35\�v,��[\�aз��>2Q��z��<72��%^BQb��\�L3�\�\�R���q���\�A06�\�\�\"�\�ʒ^a��Б\Zdv�\nz\��\�\�\�=\�\"zaf\�\�m��\n\��`|^��\�\�\��V5+�-��I�\r����`\�i\�\�\�<�Up�\�;�\�&,+�\n\Z�\�\'�<\n\n���L\�m�̏m����Q�e*�\�EV��\�U�y5\��7��hz\�$Ef�2\�xZm�y�\�S��\�\�$W�FzWl\�B|��R\'!\�M\"�L\�mi��=���\���� W۽M�{c\nE\��^\�S\�v��0�g�\�9\�w?��b:��5)\���ė0G�eJ�\�i\�yk�z�\�w\�3�\rQ�Ñ����N,\�\\\n\�KB�\�\���\�e�-L��Z\�\��O~\�\'S���,	uo3\�ȩ#�\�CN{;k��P�eޡz�\�\�\Z\�M\'A�i(\�u0�\��\�?oԟ1\�T�\�\�\�K\�u�0��l\�&�\�F�$\�\�y�՘pې\�\�4s(K*�\n\�NU\�\�\�{O\0M\�i\�\��\�ӗD+i\�I���M��?\�\�\�-L�\�R#ep�s8M\�_KV\�LM�	5�k\�v��n�[Xe/u\�5\"(�\�\�$3�.h1=�\nZ>�u\�R\�\�\�\�,P��t�\�\�\��\�f�����.j\�gA��|��.Z\�\0�)\�VEߍ\ZwvdԑѷHF�]A�\�:\r��\�\�\��}|�\�\n�̈�\��JI\�%Z���.�C\�\�\Z\�p��$ژ���\� ^^���*7��A�m�ǝz\�\�\�3�\�\�F:\� usl#30:\�\�WL�SҠ�/\�PG=�^�mvU=\�\�\��<�$3�\�A\�$�\�Wq4*P��@g��\�I\�\�\�\�QfG�Ϛ2���}M�e\�\�\�D7$ಒ�ff\n�Y�\'�=r�	{ 9\�E\�L���\�\�\�;\\\�rBԜ��|E\�Rvs\rm\�\�{�4���sW\�D\�}�`�I\�\�\�G\�|:�>��>�t_* Q��f�\�\�\�\n\�8^��f{WfDw����r/,�\\Q�l}/\�RT���\�\�\�*	ƄqgFBt!\�y�U%0IZ\��=����\�r������q-�ݡ\�\�맧\���\�\�_?�s\�~\�l\�,�\�S�w\�\�ί�\�\�\�܌/̂td�\���\�ƕw\�\�r_\���eRϕ\�#V^�fS\�\�\���omu\�\�\��\�\�h�i?��E��z�䒶k\��C��e@?%�`��\n.\�\�e})\�,)�A��-n�\�_[�\�\�&=1q�7\�\�����	\�i\��*\�ϳ��I>�M|\�c\��z\�~G=,�\�\��T�\�F�\�\��O�l�\�`�>1Я� ��~�~<\��\�Gm�E\���f\�\��\�r77.\'�\�\�$&�_y�K\�O�26\��\����\�\��ٷIğ��\��y#�uc�\�#��kP@󻐟�D\��촓G\�N\�nY\�/\�+t\�}��u\�p\�\�t��X\�p\0�\�qb����w{�-S\�\Z-u�\��@h~�M+C�Y5\�(\0\�l�\'h\�u^�\�\�A\�#\�H�ͮ�\�YP\01\�Y$Wkm.q-Ζ[u\�\��Ƹ\�\r�kx\�Yf!�u�`���ǔ���\�:�\�Y�M\Z�\�\��n#\�6�\�RF�̼$�}SV�]/\r���#{DM\�E�&�\�j�\ZJJ���Y�v<\�ID��3\�\�(L\'��i\Z�P\Z/Iȹb\��U^\�q��-\�\�e��\��u\�r�:�\��(C\�7\�\�\�`k\�\�\n�@�\�`\���I�\0�\�p7U\�+�ԛi�`F\�\\U���RUa���xtri2�pLW�~J\Za�^o4��>`@\�\�`\�m\�m~�-b����aS� 6���R���\��0	I;��!��\�t՜���%��FԲ\�t2a�xu#t�J׆\�\�\�\�rK\�;b\�Q�m���`�����+�\�w�\��	ѡDuUa�)^�Z[\�0\�\0gqW���@$*�,\'a\�w�a�=\�n՝\�\�_�`��Y�\�8�z}J!{f���\�	\��m9y\�B\�)\�\�\�YyoƊ_Kj�\Z\�E�͞1i$�z\�S�\�ѐ�����@\�6�Dw��Dϕ\�\�۶i\'�\Z�\�\�P\'�n@,8X��o\Z�0��]X\0a3��:��V\Z:2�K�Μ\�\�\��&��a��L�`\�S\'�<|�:�\�	�fc0\�p\'}{�W\�\�q��V~y�.R�\�\0�@��D#\�dW=u@��r�I��+ŇD\�R\'�\�\n��!W\�t/\�\�rǖla#&\ZY4�\�\�jt�:\�t,�X\�7\�2\�L�\�)ܝHi����<\�\�ɔ<�o\�\���n�Rk\�쑚U:Q��!I\�\�\�\�<���tq�K5�G![�ʮY\�r��Ӭb{{kgkK\�\�˚UlM�#\�z�~[]��\'֬\�1�c	�U\�a�\�iVѠ��YE��<�D\�Y\�7٬b\�\�\�{��k���@\�\'�KJyg\�u\r*:k\��\��$�R\�|f\r\�`��o������sl^\'\�:\��\�r�\��N\�+\r\�\���N\�~�\�j���ZZf�\�\�$z�o\nU���ł�\�\�\�_Jb�\��赯��\��Et?�\�%�xcn\�}\�\n<$1f\�S\�m<��\�\�;��\�G\�2���	\��Dd�^����RZ]�W�\�)B�� vc�#^`\0��\�\�\�>�U\�y��\����\�O\���\�p\�#2\�F�Z��c;\�\�.~\�ɻ�_]_w���7[;;UC\�7�pH\����\�7�\�\���\����c\�\�\�\�\\O,��ȱ�W\�Q\\\�\�\�ԗ.��D\\˨\�Âa{��!\�W\�\�\�?��cڈ�w�3Qn��7��wF\��E����|*\'�\�\�4~�e��\�R���	\��pr<\"\�\�Ҡ\�	��y 9p\�\�o$o�z6���R�3�F�\�\�yX�D\�C\�\�;|�j{癰\�k\\�\����&\��\�4\�\n�\�Nn2[�m�\�\���~��\�7b��\�I?2�\Z\0�\�\�H�Ɣ���I��?�\�\�i�ߴ���\�w���=!�I\�%\n�\�\��۔�\r6^\�\�m�ϑd���$\�$\�!\"�\�\�3�u�j��`k\�\�r�7�fq�}T�\��d�5\�\\d-DRE\��^*�.�rK\�\\�%ԥ`&c�n>\�Ǫ��枋� \�Ǩ�ġ.V\�!\�\��%2�̖\���g\�H�\'�D\�2�\�\��\��\�\�\�\�\�\�x\�n_f<��\�\�\�흝�eN]l,��3�ٕ�\�\�m��\�ψNſ龛\�\�\�:\�x�\��m\�WDZ�_9\�?\�Y��\�un\�_Vw\�rOǋ�R6˱��\�B\�\�`r\��,u׎@/\�C\�;�\�֘��۶r�tgy\�\�wp{瀠\�\\G��w4Xj\�o�\�^�\�̈s�=f�5\"*#�\�Be��g�\�k\�Pa-���+G\\|O3?#^m�+\�(M/k!\�O�]��C\�e����\�DO/G�\�|�I�Z\�\�\�bW�;\�`b=\�2#�\"ad�iL�vk�\�S8�\�m;	y`K\�Y\�\�\���8֑�U%�L}\'��΍^�*\�K_(.�\�\�\�ƽ\�8˵��\�\Z\�\�=p5i;5ժ\�f�I�\�j!Ta3k\�Q\�\�\�ׇE�?�x��D|\�E�\�\�.I��@\Z.���\�K\�/\�(�\�|JT�\�CA\�ʤ\�\�[{İM�,(��\�\r��_�:�J�D�\�}\�\�\�]\�S��4|��\��	{T�]h�\�l�6�,��:v�e�G�6\�u�\�\�y$\� `e;\�Uq�\Z�+\��g̓�Bbb�V�\�\��\�pc�\�2YX.��[M\�8\�\�cT��wLV��٩�\\ Ff\�\\�~{��\���n(�G\�\�^\�_F׊�\���\�\��w��Gx_d�\�l�-�z�)����})\�\��\�\n\�\n\�,#�xF�ˉ*A<���L3ȹ8H84x4�ږk�\��\�\�_Z�\�\�l��9&\�\�\��B�\�\"(��T�Ӓ\�T��<�\�\�`K*]\����{\�X#n\�WDHe\��\��\�K�B?Ē� \�ͱ���r�\�L�d�\�\�\�L��\���=uB\�\�O\�c\�\�ӇC��Il������\�U�\r��\�\'9}_f�e�rê?Ǡ1\�[\"w�b��wŰ�Hv!ط\�[\�\� ~HX\Z,H���\���w+��\�f��\�;�Dj�\�\�\0t�\�hM&�\� \�sw�A�\Z2.\�\�\�bd����\�򜤿9#Һژ�u1�ڪ�4\�\�؛�=g�\�\�\�\�?\\�z\�$\�!\"\�¸��[m\�\�a�+�ʧ�!��\�B0n;�>@\�}B@\����\"\"��ȺⅠ\�v���y�?�;zl�sv\��\�p9\�l���L\�S���\0\�\�M�qޛ�\�\�\�#��[\�\�X\��\r;(�\�=�D��	\\��>�i\��\�_�\�\'MR�zᲹ\�G\�\�\��\�l��Qp\�mSNX���^\r��7\�̀~�\�I�\"\�qN\�w\�dso\�\�^�9��#\�aU�\�#O����3�fP��\�\���(��� ��\�\�\�N�O\�%\�����NzsaR��K\��m�\�\���\�a\�\�\�Ǐ\�ޮ��c\�\n]S\�kxo�\�\�[�5{\�ccs�\�ɮ�\�BH=۾\�q���&s�Ap!\��|�ŏ�\\��\�:�\�<5\�g4,\�\�j�\���0Ա�\�Y���\Z\�\�`\��	���\�V�\����\��\"�B\�L�\�&\�J_\�\�3\������D4\"��$q��\�l\'���Ҹh|[���f��\�\\����\�\���ήTli���&\�>Z�\�/\�N��\�]\��l�!\�K�#\'}\"\�,\�\�%Z^\�mI`\�v&��\�.\�.yZ�1��v�\�\�\�PU1B�x�\�l�e	\�3�&{\� \�M���\�.gW�\�\�\\	\�O\�@�����\�RA�\�\�[Yt�\�9猬j3��\�<:j�f%?zi�\'�\�m��_o�=�oї+��edI \�\�\�hVK���ԇe�M\�9\�\��l:�lh� \�\"�V�����\�\�\�\�\�ޡ�\�/�\�\�^.\�F\�n;\r]�ż1\�e�_p}\�$Y�ǳ__v\�\�\��f`LH{)V/YƄ\�c\�ć��P\�_�\�M��R[\�H��-\�?����;��,\�QS\�\�sn\�^\�\�\�t�z�xh3R\�ǹ\�\�$�\�4��XQ\�ӄ;���$t\��|�e\�Dߋ\rZ]V�7\��=�#d��\\\�q�Pj\�v۹��U(�\0.��=�εK���\�\�\�%8�\\I[c�s\�Y\�\�\rZ�m\�\��8\nF�w���ɒ\0�9�{�8S\0�s�o�W	�פln!x�=&��Y&�c�s��z�\�\0��\095\�\��\�\�	���̠�\�Bqe(\�Ɯ;6\�Al~\�R\�T�\nU,0g�0h�L�,\�Jһ\�a,�\�\�ܐ|�\0�����tb\�\��h�Բ�\�I-D8\�I�/rh��ְC\�\�?�m9M]#\�\�$kb��̽�\�s\'�pM�=\'\�\�\�;�~D�\"��Z\�d�F�!G�M�Lb�؀\n\n\�\�H:6\�%�(�ő雂O\�2\�\�^Ĵl\�\�A�\�d\0�v2�q\�٘o��)�\�\Z\�\�\��\��� �8>h��@t\�\�u/�-/آE9݊M�Sp��f\�ܭ\�W[��\�i\�\�j\�\�\�\�\�\r!��\�\��u}\�uչ��Z\�Owb\�\��L��3��[��\n���vv�k��U\�\�蕷���r\�\��\�\�s�\�\�\�\�� J �\�K!.u4t�\�bA�#��*�g���89Gn������k�^�� ��\�P((\�\�@����Ia��$��R!�\�\�rS�^��Ȑ&�ih�}]L4�l6�I�㜎U����:�rg�c�\�(&\�\�Q\']\�\�}\�Z\�L�9?\�\�\�e�	�ڨ����}�����|Q��U\�,\������\�F��GYgsx?�k$I:�w�\�\"\�\�ɪ@O�m�Eܔg�\�5U7��\�\�S�\�Y437\����\�\�\��n\�gN-4�*#b\��?\�\�K�\�\�\�\�]m�x+�\�ճ�5!�VN\�k\��{\�\�[�;\'o�:��(\�&r�6r�\�T��:%)�|�����%�(;$A\�\n\��\��]��\�\0avB��ri0�\�\"\�\�VDGC\�|�,�mx!�E�\�\rn\�\�.�D���	]\�!VKB\�1zlD�Ù\�\� \���\�5ey�-c<G\�@�\0���{\��,��\��ꅃA-$�\�\�#��Y\'�\�\���\�\��c\�\�q\���\�\0\�\�\�ZL\�f�\�Cd�\�.\�lD��X����n�\�\0%�_\'\�\�w��Wg�Z�RD�����ݼ�ۂ�\��+�\��U\�\�\�F\�\r\�H\�ǻr��jmosfz\�rn��d��MNrn�\0�Xu�x6�V\�\��3�L�H�C�\�Z����Ң�:���\\\�̉Ȉe���h��D)ñva�K\\�׷?m��~D�\�s9P�4,���I-\�SO��\�Y\�d\�oꝞ�@�����\n\�Bd���(50\�O�p#2.�\�̧aJ<bʥk�\'I�pN�Y�ܾ��&f���\�̯\�\�{\�y\'\�\�6D�$�����\�}gs;�=\�v}\�_\�~�n[\�\�*\�\�WT=P#í�3$��/z@s\�\�\�\�2H.�vKt����dK�\n�%���\�4�ʶ\�5\�Qu�Iy\��?��d^yC�TI�b��S\r\�<=P\�\�uq\�N!\���,Į�\�y\�\�\�v��\�\�Ze�C@\�\n\�p>\����sᢌ�[�f�\��d\0-\� J�N�\�ɔ^��C��e~�iq�c[o^8^\�HlD\�\�\�W�\�1gs�\�\��2\�_X�5b�~e`qɉVA\�\�\�\�l9�7�#��:C���?@��g��^Y�q\\vEJh>!�7K<=y$��I�L��n*�`\'\�t�o�l\�{�.eP\��\�4�\�\�\��\�Kå\nc6��\r7崇�\�\�\�\�K�L�A��œ����;�\�\�~�H\�5��;�\�j)e\�5�12�I\�a/�1لI�B��\rmx���7\�%T\�O��\�@\Z*\�\�A�\"Tdp\�1\�\�\'�d���Ȭ�A�\�;2\�\�h9ɨv^\�\�\�\��\�\�YU\�\�$g\� ����\�\'\�\�\�\��\�˖��.��\�\0#\��?���pOl�Y@U\��&�=F%\�\Z�e1�\�L~��\"Hw���\�\�k\�\�)b�~Z�ͤ\�\n\�Y\� 0�L\�c�\�)tU\�\'Q\nHk�(�!\0�]��p\�0f�\�f\�#�XR�s\�6��\�0\�\�\��<U�\�n\�\'�Q>y(~\�k\n\�w\�sB����U�� {�\��\�E�qʃ�ar�֊n�Ŀ�_)\nRX\��-��l+�ՑMG6_�^D6!:(\�\�\�\�\��xRh�1�*Lɂ�U�\��d�r�~�)21�S\n�\\��,L3۶�w���+Si&4w$ב\�G���\�H�3V�]:�5�fV�[�{7�\�rI\�GR�m�\�\�J�\�ȡ#�[�2/\�T�Ufh\�\��7ܧ�S�X=wl�r��\�Gr�f%KO��pDU\��\��\'3\�g�s4<W\r��M\�\�\�>}����FN�Jc\����r§\�\�\��馜MX\�,p&T\�~\�\�W�� =SDp�\�e��6�J�2�Q��HT\�\�Mz�3\��\�\�\��Fl�\�9�\�1��AR8�R���\r\��/}���\�*�{?]\�-��k4G��:k�FҺ�7\�o\�\�ns�L�\�Y�`]:,8�U�.���\�\��v�\�K?wfrl`�܎\�VAR�C\�ěa�7cȫ�\�p>Ҝ��1g}��df�4@�\��O�!<��d��E33hp�z\�\���\��9\Z^�\�$\�� \�\�7�|@�\�u��Ar���\��U\�\nE��\�X\�qs &:�]��\�Z��\�-:m��j$?mBkl��4�$b����C�\�	{y>\�\�uE���RL�%�i}�.�	�\�ү�[��u�&�\0{b��a\�h4\��->��\����U�>R���i\n\�̒*\�\�/�̠�+a����.\'�ʠ�kV+\�\�(Xq�\�\�Q�<!�6ԸI�c�~�rT&\�\�h%7���\�\�]�?�#r~�r\�>gi�ڿ&$��*#Ti��d�\�h��T\�쪾�l�c\��\�S\�%k}퇥\�ơ�)�\��:\�\�8	qsO�y�r��Sxt\nhS�=��:h���>V�ߦ�\�1_\�%[Pg\�\\���\�A)e\�,���59x\�:�\�\�\�?3+=r\' �\�X��q��]>�#�)\�\�k(\�m\\w6�z\�v\n\��\�ż�\�\'d3M��P��״���sQi�Α���\�\�\�t\�0Guc9N���\�y�\\�|).ۆ \�\�t䆋�\�j�5$�P��Q�\\�\�\�q��-R\�?�\�8��\�놮�\�lUU՝D���̢\�e�\��\'\\�R(\�W<\�\���\r�P���N�Sqh6]\��\�7%�:6\�z#�s�=^��������\� �\�\�5�i\���fbM\�z�#\\|+,lr� \"`e���{?���%W\�a=\�=7���0��^\�w\�\�5�\0S�g`�jsccױ��A]V�p\�7��s\�J�B�bU�+}r�\r%\�EG9[�5�\�2�=*\�!\�SI\��5��!hD[\�\r��C�%Z��\��w}r���\��K\�\�\�l:!I!(\�@(�U�8XW�?1\��z�Jۺ=��\�P��3\�I\�I\n����}��r\�\���\�\0��;\�h\�\�M��]\�\�#\�O\�Si[̠1�۠�ӯ\�<�@��׍wG�&F<\\3;\�uq\'\0b$��\�\�5��\�p\�7�%4R�^A�\�\Z�\�\�\�S���z^\�tb�\�y��Ɍ˱W���Lz�s6�v�n����\�:\�\�|mo�dc�\��\�\��<\�4�\�\Z:^ww�\�\�\�\�\�\��۳�m���F��$�\�p�C��\�G�t\0�V�h�\�9�\�=�_�l7�\��d\��\�\�]����#��Z�ꥉ�����\ngY�\�\Z�\��T\0AKɭ-\���\�\�m\�V\�m��F�H\0\�Eӝ.\�I�#)`���\�zb�6\�s��H5}I0�X\�8\�x;@\'�&�BG\�-e�l���\�%_�4UĈ\�$\�iТ\�F�$�)r@g�2��X\��rI�|;�l\����Ђ4yc���8I��\�\�7]\�/7V�6A�F\�{ĥ\�\��L�U\�f\�\��������z�u�\�\�rݼ���\�5����יW\�\���U�����1hN<�r��f���\0TР\rc�\�\�\Z�P�1O\r�\�\�ۄ�5��\�Wz\�\'\�\�\���ys�;\��΂�\�\ZD(�m\�TP{�;*���sGGK�\'[Юs\�\�\0{��LK��\�C	J\�\�sj\�=t��9W�\�vn\�\�k\�q�\�#\�\ZG�\�ö2\�h\�\��Y�4$��M\�(wv�\�y^\'47�n�}\��\��{���Sa�{dsI��P\�U���;�\�\�V*R�ޮ̠����H�\�nD۠b7J�Q\�\�<\� ����;x��l�{\�,�S@U�\")y\'\�\r|6\\ı4\�\�\\��ҽ�\��\�\�0�<��E\��1\�鞴��$Z�{��F�\�\r����\"��]\�\�X?+\�\�Hr-\"N\�͂\�\�n�`�y#{��ѕ\�Y�LM�n�f�>���NI^F\r*S\�Ao��Ζ���\�\�uK�t}F=\�\�\�\�Or��\�\�}�okׅT>ǩ�x���r\�*@*}�I3����,\�\�\�7�\�\� �IJEnc�\��E\�쐫\�\�\�\�\�y��`���B���|�ح\�B�\�\�\"��\�J\�;�8x\�i/�����-@qO,N�pDl\�<�\0u2e/�Tr\�YR�\�E3����\�\�_ΡU4�D;\�D�L�U\���\��K��+ǅj��s�\�b�\"\�\�]�S\�x��\nU�����in+\Z	Dlڌ�ݪ\�\�ib�C\��\r�\�ڞ7\�\\\�r���\���׵-\\\�kP��`/��M<pn2\�\�r;\��?\�@\�O\�Gyb,���2Kc\�_Y6\0�e�x7\�k$��SS�6��l\�Z�Ɉ�~[\�s�@\�I΍�9�$g\�r\�هbTG��̓a�o�\�4���@S�\�\�O�\�\�D\�\�ӥ?�1�\��_e\�ף �\�&\\\�o\�I�8L�B�u��\'\r���L-�|^\�)G3\�	�\�\�\��P��-\�\�\�T	c�f�\��I1�0\�\�UU�*R��\"\r«�\��l��mv[U=��1|XE��\���{PS��Cd\�R�\�\�\�JR/*Vԉ�\�\'\��\�jI�I���EL-2@\�N\�S��\��e�\'\�ج�\�����16�Lk��f\�\�<�	1E,2ׄ\�g}��L_\�\�۫X���\��ꭸ4���}�/�\�\�W\�*�\��j�s�\�֞� ៍\�\��\�7\\Q}\r\�X>�D��\��6\�\�Z�vє0��\�,�\��s\�gWy�\ZB\�?m8��;\�{#\�U\nU���\�h�(\�`\�Wh\�8C���*Z|��/�f���L|��2na�׈\�f.H�G_�Z>0\�\\��	g\�\��)`���D߅J���\�_W7u�۰Y6U���A*���2\�jx>���΋�����\�\��\�\�x\Z�K\�3#R:�c�*4[�f�/\�r�\�Hǩ5��L\�V\�\�lƜ\�\�Cu\�rF��\�V Ih��Ҵ��&\�S�\�ԑ�Cj����f\�O\�\�t\�N�w\�\�\����`NC)�+֖Cf\�cI�p�Ŀ�j[���\�\�\�sJN`����K��]�\�.-W{�\��\"Q���\�JV�k\�\\�X�ܧ\�Ɗ\�!lYN��\�M!Zj\�1�\�}O3�5\�Az\�y/$x^p�\"�z\0>�\"Z�t��Sd]֑XڧԢ*<�z\�]��5W���kXH-\�cxn}\�\�5a�\�w\�\�1�\�o#4W\�\�ꪁ2\�FO+J�o\Z�\�F:IO\�\��}dW8$~�\�,p��ʩ����*_�\�\�<�a9\�L!�^I�3c9I�\�L�bg�\'Є�bT�t\\\�1�\�)+Āx9C�R�Ҝ�\�\�\�М�OS���\��5w�)\r5�pYZ)D\�\n﹇V+h{�l.�\�k0!|�Q��Ly2�\�E�\��۱\�r�\�T&2\�wW[K�E�\�\�䍮�Ī:����~9�\�ݪ:Pt,\�`{�!�r\�\�x�eŚ��ߋ\\�L])ifs�/s�~?\�\�`u\�M<Q�ܺ\�qe��Ñ\�T�\0lԛ���o�)Z�R\0��BJ�dk�\�A<\0���;�\�\�Ӊ`�fvW\�\�+w\�lꦼZff.\rIzW�I��,!����Zܑ�\�s��<�\�\�\�5$\�\�E \"���F�VN\nN���2�;U?W�ӎ\">eZ[>J[�h�\�)P�Lqu?A6����}�9�6ʧ��i�tI�\�|\�/z\�s\�?sj]�\�4|�\�\�\�\�5W�\�\�{C\��>L��BB\�&�\����\'G��\�\�kfOԾ\�Fy�R�\Z]\�]�ezȲ:!\"�8H��8����C-�*�`\�j\�A2ݟ\0\�upEE\��Tv\�\�(R�\"\r�\Z�\�CR�َ���\�\�\�r84��\�(�W#Sa\�#W㗛��\�\�z�_Zm<4w\�E3�V�P�\�Hp�\�\�\0,\�{�$��$\��%�\�˂\��\�z��?�O5h0b�<����{�\�C��ӆ�ԞN��\�C7GvL\��`\�\�\Z7m\�8�3\�<ɂ!,h���\�,4ߤl�\�bs1M\���b��^���=]�\��7\�ou\�_��¤)�n��\�\�q��\�mOY\�sj���\�.Ywg�X�4hYk�\��S�\�`�]�ٵޓsV�a�8Fl._\ZZq���V�մl.�\�)tT���Α\�;�2\�K�K�\�=�gu�V\�b:=��\"\\<B�\�\�!.}h�D&��]�+�*Mmh�\�Μ:�\�\�\']b\�&v\����\�\�#\�;��~\0�V\�\�\n���9�C�+״\���]D\�$�f\"CL�4��\��{�\��巂׃���}\�^�#�𑁯!��\�\�;�e��:$^�k��\�T\��x�羃�4t�\Z¼����9\�a�����\�:Fi�PM���a]1��4���\�\�ܥ9u�\�9�{/��|>\�wt�w;M\ZGyU�ͤZw������U%\��\��9<\0�\�s=߉�>\�\�\�YU\�W\�Y\�\��\�T]\�$�\�Crs�j\���\nӌ\�f�d\�f\�A\�>/�E\'��\� \�\�uޙ5�t��Ӛh\�\\\�m|8��ת���t)�|§\�r�_)�x/�/{\�\�\�-4B�\�r]\�\0>\�\�xq�%\�s\�\�\����޻�\"\�j+R*��\��* BN�s�IUb0.Mg$\�\�Z��騄��QV�Nw�No�_�9\�j�S�&�>ˎI\�I\��\�9��p��g\�\����G�i�6\��a1�����P��\�}���*>~2�\�`I\�\�H�\�\�\�\"\�m���\"���X3	�t�4D\�s\Z�\��)_-0P�\�;��i{@\�N\�\�c\�ý_�X\�H��D. \�?*\�\0U�Vi�q�\��\�SC2�OfO,k��㞜A)����ƶ\�<\��\�`��z��zB8��8-�@�\��\�\�ޝ��\"\��\"�a u��v��f�\�yYr�L���VbY5U\�K!c#�\�UK�+0�o+\�\Z�\�D�\'\�S9\��(,��?�\�WǇwz�\0\�ч�����@\Z\�p?\�\��p��n\Z\�D�AG#kYvp���=ґ�\�\�N=Z\��\�\�y�9;���8J�#�S�\��\�\�\'��ԩ��\�G\�ϐrG\�p\�uD�\�\"+C\�E/\r���oKq8��#r\�5\�9�ސ]8r��\�\'}�@<H�YbƲ\Z��F�\n\�8J(�\�o�\�*߾\�۸S\��n�ْ\��/�\�-+5:�3#�*Ӵ\�$\0i�\���Zg�G\�YG�2�	\�C}�c�\�L��\r��;��z{\��\�\�9���\��i�|\�\�\�\�\�띖\����\�m\�M}\�{\�����\�\�ƃP\�\�l$��1��t3�.�N�*�GrҮ\� f�`\�\�DV�$�\�-k�\�T��.�NM�y�O\�\�+�C\�.��ˣ��p�.���7g�\�n\��d�~\�®�1�Ȳ\�\��\�\n>l�f0`�?헌	Ab�q��<�O��YP��j��\�B��DR�\�\�\�e�T�Bw\�g�F\�\�8NQ\�\ng�\�\�u��\�:(���U\�&z.8Ƈj�\��i\�\�F����ҹ�G:NG\�{g�8�+�嘯�0_lX\�ݝ�����\�q\�6\�Ԫ+\'q,\�\�\�a�}b{b\�p\�\�b�5ʂ	M�>���\�P�\��\�\�ħ\�\�ӻ\�voL��~��\�O߯\�\�\�no!4^1\\�^\�\�.O��{i\"�o6v\�F\�܊�I߃,ݏlx�)��y��v*�a�t�8yH���\"\�__\�̊(\�\�\�[�\'[�.He\�\�&\�?��&�N���^�\�`-���\�\�t\�ɗ�2�-\�\��\�\�\�\�\�\�mnom��D8��\��[*ޒt?���\�,H�FO\�\�\0��a\�\ndv��\��A5A�\�\�A\�#�?�\�\�+V\�\�l�\�@?�\�	l{\�(���\�#\�d\�PyQ�Sn~�׾�1\�18H��/*�M�\�\�\�~ZM�>}�h\�%�\0֌/\n� ˂ ~Z2\�\0k|�\�\��R�\�	���\�\��(����~l\�\�x>�l_��\�5V\�\��~��\�U�\�t��q@Ϲ\�\��%�����Q�\�{i\�\�\��\��\��@}b\�_9�\r�nd\��\�i�?j;V�@����\�\�\�\�߂ˉż�%q�&߯�\�\�\�\�\Z��\r\�\r)u߯�\���@�6��3ɝX>�c$�n�\�}���o\r2��\�]\�n\�H�\"�03�cG7ۙE\�V�\�d�8���)QR\��b����|K�l�Tu7�)J�d;�\�\�ojvw�����c~gd�$�Ը��:lo\�;wM_�F\�w\�X�Ir_7N�Z8/\n��Dx�-�-�?\�@?bPi�SQ0\Z��\�&�yg�N��m����b2h (~\n2d\�0\Z|\�U\�U�>���\�\�!\�\'����\�l$(�Y\�*<\�[\�\�%J^n��\��\��\�ĴO��\�u�HX\�\����!�\��5\�\�\�\�3\�t�0�\�Qc��)��\�\�\�~M�ryhw\�h�遛\�_��\n<\�a �����ˇ<�J\��\�iƿ�i��\�\�\�t5���2\�Ojn���W�\�t�S~z�h��\�\�%�S�ҥ(\"\�:\�mg�Ǜgx3�w;���Ǌ�\�؋ �\�)G\�e{\�\�2ĀvY�?a0D�%\�pA%��W�+��2�P,\�\�\�2$\�P�4!D�9����sL��ܞ\Z\�X9sڭ\�\�\�\�\�5snem\�<k\�t6�.��\�Y�j�j\nv\'r?��\\��ˣ9EC�c\�1�٤�Np[!\�R��\�P�N�|.�9J�sY֒�L.l��\\;�+�bb\�G3N\�\��^\�8�;��?S\�\�\�FT\�I���(Q!\��8�\�\�v�\�\�6�?�]4$%Ý\\x��8ψYc[�ec\�o�̆(�Mn:��u\���v�G�0Cqۑ�\nNT��\�\�\�$i��̵�\�Š,���\\9i>� ���c��\�\�����7P@�P!	�I��9w\�@u\�f_T40�}Q�$4�J\�r�\�hl\�P\���|\�5�d*\�j� /�\'b\�c�6\�\�ɂȫ!`l�\�*<\0\���Ft�b(\�\�]?e$X1*S뫓ϫ�\nw�\�f��œ�r��b��_��/<l��\�tx�~�\�z ���Zt;\��6�\�\r�c2\�4�\�~32*#r 1Q�CI�ԸҾ��@ʍ�=J��s�\\���s�(\�h\�~�\�},��t�=\� ������DtM{P����5�O��QeW.\0�i �\�7\�\�c0��\�\�\�uc\�K�f\"�3�\�\�g\��5Y\�\�<�*�tm���V�Z�\"T\�!M�ԧu��Z\Z.5\�8��x\Z�\\X�5\�e�s<�,!F�\�\�u/�þ�C\�1��x\�G) �v\�\�h\�|�\�WÈ��5V�\"M�O���BY@�\�}�ZC��k.8Ȑ!\��+�\�]V�5�7B��lu\"vѡ�<�_\�rf\�s�`����\�\�VܪD�U�<Rg\�\0I\�P\�zR-Ӏ��6\r*č$?\�i��`4\�N��\�ۘV/|��\n5\"�\n3\��\\�َ���S�O�nA�{\0.���\�C\�?<�0=IXK�<\�\�ܓ0&�z�+\���!�u\�&�}\��u* W�\�j��\�Ο�\�;�\�ni\�X\�\�*�D\'\�l`3n�^���\�O\"}\Z\�lCM-�$��\�bm*��\�<��\"XL\�m$q\'oӷ�\�+6��A��s�E\rc�\�Z�\�J�3��*�\�~A\�Fs�w[��*>w��sյ/Q\�S^\�\�n�ݛ�6�b$;�\�Vh76�\���n>\�:\02W-��\�\�0^�=���W4T[�\�+Rd2�,k�;}�.�\Z�\r4�x7(ļ�\�81��fh>xv��emh�/�h�^K\�[\����bPW{\�\�.���z�\��\��S)λ\��t\�\��rx\�b�8,,:i\��q|����x�����2��\�Gz����ٳ���!��6\�h\�*1�Icxzǝ�\�\�ښȾ�1k�{\�-y�no\�uw\�5j\���\�߀�C� \�ҧ⫴�\�&]\�s\�k�Fa�\�ٵ5:����J\�$y�\�\�5�\�hG\�\�2��t$+}���\�~\�l#2`\��zq�\�0&\�\�X�-א�Q\�R�h�\�8��\��/n���\��\�й\�֯�9�&\�g��\�*��\�vL�\�\�\�~�{���g�\��ԼŊ�z��}%�HT\��*\�G	\�,��C^�\Z��\�Ĺ7:\�X���a�[+��ȖW-C6]Đ-Ȗz?�m+\�r��7�˔�	���9�\�	�\�\�\� \�e\�T�o��;%Q�|oa\�<��^�Q��\�hG92��)&Q\�rXK>N(P\�6� B\�@����\���}.e2\��d�~�˅K\'.��T�L\�F*���a@(\�I\�\��:G\�^\rH� �\� �T[U�u�Pî�G�_qM���o_��;�\"r#?�̲QeM\�>��\Z�^\�\�lqm\0ދW��|j�=	�|�`Ł�[\�\�\�\�D܇yZ2EP\�u՘h*O%M\�\�S\�\�\�S߽����\�\�:�&\�\�\�\�~iU�8\��\�G��[l�����\0��8�\�l$����/9+b�{,CB�0\�I.b��\�g(�.�1,�R�̂#Yڴ@\n5\�ʐ\��^\�\�\��\Z�\�;+��l(H\�)�xb�[�=\'��\�\0>\�\�L\�W-��8�\�)WdKΆFV\ZY�\�\�w�`��\�/�3\�S웢N��\�\\��ԢJ�2cE\�O\�T:h�\"i�^\�i*ET#tՒU\�&\\�(7\�\�\Z�k\�/\�_\�\�<�b���w,IYU(xP�k\�C�8��\�ݺ\� &\�rmW��7�\�0\Z8�W;S5��j_�ز\���O�@�3K\�\��%��4�\�	�*p>R!A\�X��&��2��a�\�R\�R��A�\�\�CYD\�ǉ*\�F�A�6�W���cm\�#�>REVaP9W�¤�w���}�R\�\�ݻ�h��~\Z��UF�\��+\�RM\�2�(T��:R��\�Jf϶�\�\�\�\�\�Y�\�Z=�ʁ���cE�tS��\��E5�Pq1�\�-cc(u�Dȕ��Ӫp�\�\�+o�X�r�KJ5\��u\�3&Y�~\'\�\�X�t\�\\�b�\�o���ʔP���\�\�\�U;\�R}\�6�U\�\��6�\���6\�Y)��\n\�0b\�&�\��<YB\�̕&c�rS��=vZ\�\�\ZUf�����\���A�5�\�\�\�c���TY\�n2�1m�\��A/\�\Zc��7&�Q��\��;��ȹx�o�G�U\��\�y��Kc4���剝\�w,\0��0f�\�\�ȿH�qa/=��Sł\'U<�֤\�a�3\�fcO7r�\�\�o�YS���y��>\�\�q�\�q\��r��V\�G?�s\�*��m\n{\�\�t&E\�\"Η\�Oeΐ�\�4(ܠ�Ɠ��0A��\ny�W\rW�9\�3�K\��S7��q�[�HvNZ%��\�\�y{����{��6\�\��=��Ez�^���i�r�K�A\����˚�\�F\�庖� ��\�a�Qc����\�@z�\���\�j��HI\�=��Z�K\�<\�lz\�V٩\�\�\�*kdq7Y|O\�_L�\���c��ƹR|�Dðӊj9��Hlģ���Y��Ka�vހ\�md���\�-G�Fc[��\�|J�\�Z�\�V\0]j�\�nM�@\r���&�s/۝1\\\�򽬪\�ՙ^�Vܶ:�\�XC\��\�\�\\�O�+��\��\���m����\�����	�ᅣ�\�b��+;��:\�{�4\��1\�\�\�1|��^O�h\�\�_�\�V/\�\�q\�5\�O-څBi��d-�l\�l\rVeq!����\�pf\�c�.t��x;\�~\��\�@\�(S�H���p�qs��v\0*�\�\rњ�a\�e\�^w�ۦ��Z�҂O3�WЕW\�\�<_��$S\�\�S\��!u$��h:n9-H\�\�Y��T\�~˝!s*����NwV\�m]\�(s\Z�%2Qˍ\�\\̰X�\�\��1x\�n\�<\�a�̀\�t�Fm#d#����}x��)咗\�\'\�\� �1���Mm?�hin&2;\�h.#咈\r\�V���PL\'�<c&�_y �9|\�8\�\�\��\�n�\�/�\�5\��dW��7��\�\���\'UѼ_D\��z�\�\�\"\"\��b01r~\���΍��5!Z��U�\"\�3�\��<r\�e\��r\�G�$��Y�\�\�\�ۻ��\Z\�\�C\�<β8\"2�Ӂ�60I���XC��� ш\�/�)ނ�qM\��\�\�@�*�\�\�\\)\�@�Bɯ̔�\�h1�b\�\�\�ްQHt��X���A<3��afȃ�\�&B*JD\�ƻ\�Mױ\�\�\�\�I�^����\��lz����\'�A_�6rPV�`I\�\��\�\�Y=���\�\�>,;��\�kc\�N\r�*�L\�BeMA���\�K��~Ho\�\�+���Z\�Ϟu:ϟ�;bP��s�*R�&\r����|uy-pdF\�h�\�_\�\�0�\���\�\�Sy��\�tx*z�?�\���\�\�X����[�u1(/PW��\�\�Bp!p�	C^�U�\�w\�c�\�ou{=\�\�R5�\�%_x�����m�ޒ\�LŜyo�S�A�\"g\�N�\�n�Gsr��,Ā��[l*>�N�\�K7��u�;Y<Ǡ�%	謊�\�v\�wL�\�X/�N\��uǤ\Z\�\�I\�\nA\��A.p\r\�\�WI\0o!\�\��@��/�t���qo\�G/\�\�qK�u\�\��\0\0��\0PK\0\0\0\0\0!\0���\��\0\0P\0\0\0\0\0word/theme/theme1.xml\�YKoG�W\�w\����Ŏ\r-�\�Pq\�w\�\�f\�	�Up�T�*�z(Ro=Tm�@\�~��T-��\n�\�\�z�c���T�����ߏ��/^�3tD��<iy��U�\�\�Mw�\�;�\�!�p`\�\��&Dz��?�\�\"\�R�	�Dn\�)�nU*҇e,\��$�7\�\"\�\n�\"�ߘU\�\�\�z%\�4�P�c`{c8�>A}\�\�۞2\�2�J�\�>��5�(6\��CNd�	t�Y\�9?\�CK-�j>^e�b� bj	m��g>9]N�\�N����\�kl^\�-�\0S��n�\�\�\�\n~�},\�t)c��Z{ʳʆ��;\�f�a\�K�\��\�v��i\�\r(6�\��\�N\�\�P6l.\�\�\�\�t\�-�e\��|\�\�\�z\�\�P\�h2Z@\�x�) Cή8\�\0ߘ&�U)eWF��e�\�;\\�\0`��M���d�}�up<kx�\�\�N�\�˅%-I_\�T���S1��x�㋧�\�ɽ\'\'�~9��\�\�\��+8	\�TϿ�\������Wn�,\��\�\�~�\�\rTe೯��\�ѳo>������2�Oc\"\�ur�x�9��x=�~�i�b\'	%N��q��*�\�\�\'�\�ѱpmb{�\�^߱>�\�XQ�j[�=\�Y��MW���\�I\�.\�e\�\�G.ٝ��v\�)\��4-mhD,5���$!\n\�=>\"\�Av�R˯{\�\\�B�)jc\�tI��l�]�1\�e\�R\�m�f\�js\�b�K�l$Tf.��Yn��\�\n\�N�q\�\�\�kXE.%\'·.D:$��n@�t\�\�Kݫz�3\�{l\�H�\�ȅ��9/#w��\�8u\�L����H� E1\�\�ʩ�+D\�!8Y\Z\�[�X\�~umߤ��\�,A�\�X\�}\�\��1M^֎�~|\�\�\Z\�o��\Z���\\�0\�~�\�\�n�����=w��}i��\�o�\�b\�]Vϫ6\�Yo5\�\�\�\���������C5a\�4]Y�\�A\�\��4�a.\��1\\}BUt\�\�Ԍ�P\�C�R.\�\Z`�����T�֜^\0�\��\��Ű`cf��|N�i�\n[�p:a�����QmQZa�S�y\�ބj@X_�k\��L4df$\�~\�L\�r\�!�H#m��!5\�ܦ/y�K\�\�lO!m� �\�5���F\�4Q�2�EI\�\�\\9�Ğ�cЪYoz\�\�i\�\�!\n�q\n��n@��I\��Un\�+�y\�`wZ֪K\r�D�B�],��\�l\�D,�\�_o6�\�\�\0G7ZM���\���y�CK�C\�%+�i�\�Ǌ�\�(8F6�֩\n�T\�;\�䚞�P�3���*��}&�\�\�\�=I�\�\�\�nƅfVR��\�\������?#S\�i����3��k��p\�my\\��CJ#\���,\�AYh�ӿ6k]\�Ѭoe<LA�9D\�	\n�NE��}�\��\nf��+救3\��L��L�\�\�\�ջ�\��P4\�&�#n>h�<w\� ԅ���|��y\�\��LPF���R\�/�\n6O�\�k�j��� �\�\\�U�\�\�\�/h\�T�lv�\���>b\�%�D<�<�.\�l4\0��\�L�f�I���Q�r\�].�3tvq\\�s�\�Ž���\�\�r9\\]Y,\�J\�\"cf�:�����1S\�\�G\�\�U�3��\0�d\r\��?\0\0\0��\0PK\n\0\0\0\0\0\0\0!\0!\�\�U\�k\0\0\�k\0\0\0\0\0word/media/image4.jpeg�\��\�\0JFIF\0\0x\0x\0\0�\�\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342�\�\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0\�&��\�d7�J�\�c�W�i�Y�\0��?��\�v_�\�m삧\�^\�iAEhxs�>g�\�,�\0\�{���h�\�����\0���EW��dO��v3\�?�\�\���\Z<��\0=\�?\�\�\�G��d\�}\�\�,�\0\�{���h�����\0���P\�O�kv�.\�0\0\'��\�\�\���w�������\0���Y�\0����o�\��\0}\�\�\��\0Ϭ_�\��\���}�\0ǖ\�\���������\0����\0>�\�ty��\0�\���G$;~\�>�\0�?�\�\�����\�����\0��_Ϳ�\0�X�\�<\��\0��������o�9\�\��\'�����\0���/��\�\�\�U\�\�\�Os\�F�) lպ8>�I��g��\0M\�?\�\�\�?�\�\���\Z}��;!{Y�c<��\0=\�\�\�\�=\�\'�ҟX>2�xgï}\n���Q=\�e\ZqWiԔ�Sy�\�>8�\��\�/��ϛu��L��H\�F�X���\�\�]��\�\'�cҰ\�\�.,�(ŧ]j���ك�y\�9\�\�Q.H\��ܨ�\���\�v`~�m\�;|\�Ȑ�Y�\0|\�	\�B\�T�m[S��\�\�I�\�\�*���j�<G�K�ܛ\�9��&\�\Z�zv�/�䨝��~\'�4L�C�\0�5\�xKP���\�\�\�S3۾SՔ�Ͻx���\�rI\�\�ӯ.od�Po\�|�g�{W��<�\�z�\0*»��\�(\�\�\Z���֊ZAK\\\'�QE\0QE\0�Җ��P�\�\�\�\��\�$ҥ�r�(\�����Y�\0����Пzo�\�\�Ο^\�:P\�Z%Z�\�z��\�����\0���\�?�\�\����u#0Dg9©5~\�����v\'�\�\�����\�����\0��Z;�١YR\�-�\�\�s�w��\0>�\�t�!\��+�}�\0(�\0\�{���i|��\0=\�\�\��m�\0��\��\0}\�\�\��\0Ϭ_�\��\��<��%�,�\0\�{���i<��\0=\�?\�\�<\��\0�������o�\0\�\�/�\�Hv��}�\0ǖ\�\���4�Y�\0��?���\�yy~d��\�S���7S��է۸�\0S\�i�:}�sϿ\�?\�?�\�\���\Z<��\0=�\�\��n�86��m�\0��E�\0}\�\�o�|�\����g�{\\\�\�_,�\0\�{���j���\0>�\�ty��\0�\���G$;~\�>�\0�?�\�\���4�Y�\0����\�6�\0�}b�\0�\�<\�C�}\"�\0�\��8v��}�\0ϖ\�\���4�Y\����\�SU\�\�\�\�\��\�)�el\�\�k\��\0]ꌞcB��{=3IW�\�\nUI7��\�I�>m\�=w�O!\�ϛu�\�y�kJ�\�5?\r\�6�<z�\�{ѓ�Zg�\�ckڎ���\�Ö3\�G�w���ï�$\��n%\�NRqR\�\��\�\�gͺǯ�i>\� \�-\���\�p�n�>��N\�M�S�}1aޱ��U_\�\�W�\�\�S�q`\�\�\�\�S\�O�K\�o��\�z�\��\�]c\�\�o�R�\�\�\\i\�4\�\Z�\"w�\�bk´�\0k\�h\Z-ݍ�\�֫5\�,Е\��\�=�\�|-��\�H\�}��9沬\�*m�cZ*�*�\�\�s���+\�= ��(\0��(\0�=�i(�\�/�o�[�6H�-�\"�m�\�ܚ�\�\�\\�\0\�ڱw�\0!}G���\0J�`�+ףJ\�;5z���\\�\�?�\�\����<��\0=\�?\�骱\�\�N$h-���\\�u\�?Ϳ�\0�X�\�Ӓ�>y��I���\0=\�?\�\�\�?�\�\���\�m�\0��\��\0}\�\�\��\0Ϭ_�\��\��<��%�,�\0\�{���I\��\�q�\0MA\�_�\0Ϥ_�\�\'��\0>�\�trC�\��\���<��\0=\�?\�\�\�?�\�\���\�g���6v��j��=Z��\�N~]\�8��S�\����\����\�\�k���a4�C��͹\�a\�\Z\�4�Z\�\�^%\�\�k�i\�\�,q<�\�M/�b\��\�W�V�� �f�\�\�\�}k;×�GCD�sr�ju�g�8�.�\�K\�>	]\�f��Z�\�>Ѯl���\�)dA;d����o]\�\�x�\���ڕ\�EzN����K�?\�+���w�\�\�\�\�Ku�g4\�(��\�8�\0����P\�n����\�j\�qYAld�\�\�\��o�OS\�\��z^\�q1�mM\�k:��Ӌ�\'nRe\Z��71\�yg�{\�\�\�<��\0=\�?\�\�W�o�\�D=>z<\��\0������y)���\�w�I���\0=\�?\�\�Q�\0�����o�\0\�\�/�\�6�\0�}b�\0�\�\�o�9\�\��,yg�{\�\�\�O,�\0\�{���j���\0>�\�t�m�\0��\��\0}\�\�߀sϿ\�O\��\�q�\0\r_�7��\0��������\�\�b@en�n�N�\�\�&���\"x�\�?\�\�=V����\�W�\�ݣ�\�,�8\�Y�԰\�A\��\0Ы,E8�7dm��?j�\��_�\�o�\�\�/���\0pT�\��\�/��QL���(\0�z��x��\��\�\�T\��\0\���\�_\�I\�5�q���\�R�\�?ZJhQE(��\0�w�\0?�ѿ�Z����c�\0]�U�HodQE1fk����i4ۢQX�ITa\�֝�MY�6�щam\�(,`��{\"�/���\�G��R�\0�{R�\0��|D\�ѭ�/\'\�\',x\�]G��\�\�=*=�i\'пk%w\�\��j\�g�u�\\�7�Q*\�\�L\�+k^\�46�\�˨\�\�\�\�Wr1\�G����1+\�\����\�>\�H\�-4��	�ٺ/\�\��4b�T�\0}�bw·<�\0���\���,ZQ�e\�m�nU��ζ���-yg�QE\0QE\0��-!\��P��Y�\�:}5:\��\0][�ӫܥ�G\��*|l)�Ǵ\�\�\Z}2o����\�T\�Dv���\0pT������\0\�=0\n(��qF�\nZJ(���\0 �=\��t������\0m)u/�\��ΓT�\0�q�\0}*KE\�\��RR�_\�5DE\�@Rz\�k�����s��5M:\�X\�\�4\���ӎކ������\0���U�\�-\'t\�M�4s\�V�\�\r\'M�KsA\�ӟ�W�EUռ5�\���J\�RKV��0��\���v���Z8�t�ՙj��\�9h<=�[|@��\"��ɖ/,Bq����WY\�ψK=��\0k�����\���\��\�Iр��\�\�~��zm\�ۻ�3,�s���\�xT\�Ar?\�\����\�\�j�W�F���_\�k,DTh��p\�r�\�\�֊(�(�(��(��(�:��\0����\0]�\0�F�\�Iw�\0!}K���\0J�\�\n�\��\0\'�_�����Y?\�Uʥ�Ǭ��٪\�q\�\�\�-t�\�ژ��\�E\0Gq�\0��i,�,\�\����\�7���i����\�\�}�7y�x�\�U\�%�\�{�\06��\0}A�u\�#Wּ3}�4�\�{�\0\�\"Q\�޺�J;{��gX�k+��V�\�\rWQ�~��#Y$����\�}\�ƹ\�\�_W\�t;�k4M0.\�\��ϵu��\�J^\�{y��\�[�wRO\���Shm�#���函njg��O\�Q�տ�~�ST�\0���k�\�\�!\�ɫ�\�~���\�{\nJ��,(�#��AE�@\�j\0�tӴ�\0�\��U��u�\0\��\��U�K�\�R��\0!�\0�\'�\0B����B�\0\\O��Yb?�Ͱ\�\�E{/���\0pT���x\��\0�*z\�;#)|L(��d�Q@T\��\0\���\�_\�Vꦧ�\0-���\0:Oa�ˍ��֨ͩm\�F�o�t#�g\n�\�\'ޯ0�\�ֳeӤ]a�;9%�/*h\�d8֓��mwr(��no\r�VocR�\�\�\�k\�\�ޫ\�U�1\�\�\�s�I\�>݅:�֮g\\ë>�m2�\�\�+��\��7�b��G�\�r�0��27!���ߴ\�ig}Km→M5,�\��B�<\�ٳoPkn	\Zkh\�d\�\�2W9\�\�X��\�Oy�]\\\�[O%�\r	0=ֶ�RH���VVu\��ǥT9��3岱\��}X�\0\�F�Uj�\��\0\�ŏ�to\�V�\�dQE1Q@Q@Q@z\��w�j�\��>��\�\���\�?\�_\�\\�\�\�x/\�ozZN��\��QE\0QE\0R��-!\��P�\'Y�\�:u5:\��\0][�ӫܥ�G\��*|l)�Ǵ\��\�\�\�Ǽ�\�\Z�J#\��:}�ݪQ\�]��Xؼ��9C&p[H\�wO;t�c�\�ON\�nt��\�\�\�\r�\�Ρ�\�]\�E\'~�+kr5\�\�\�\�\�!�w\�c�\�i\�\�隯����}�\�\�Z�\r�$�lzT��I�.�\�\Z|�\�~p	\�\\\�Ko	\�gx���(�1\�y�1\\�0U��f\�K�\Z%N\�\�\�u닍^�\�-96\�\�!�F�\���_�\�\�P��h��\�*�\�H\�6\�C��\�\�\�V[v{��*�^c��\�\�|�z��t����e\�.H\�Ty��2Q\�\�b]K�	G�I�\�9�\�J]K�	�@����������!.��\�\�K��X\�M\�}��ӭ46q\�]Y<v�̠\��${\��\�H\�洔�\�\�b;qTF�q>�\�U�½��\�fE��(�7A\�Fڑ\�\��[�=ݛ\�\r��u d��X��^��3^[��ml���oC\�%Ɖs}imkwr�+U\"-�\�l`��t�\rϣʲ\�\\\�\ZH7JW!\�\�}5��r\�N\�e�]�ZH\��[\�\�\��0�\�\"��Wxu{k)�dHn���\�\����O�\�����\�\"/\��5a-5#����x\0\�k�\�A\�MsY_q5gm�<_X�I\rZ\�Un\��\��\��\0*�ڴ[��\n(����(��|-�\0#\��{��5�Z��\0��\���\���\�\�	�8O⣵��+\�=���(\0��(\0��(ή�\0\�/�\�\�Q���R]�\0\�_R�\0��\0ң_����?É\�W�#)i_�\�(\�	�\�DuV��\�\�\�Ѯ^\�0\��\�\�ޥ\�\�-$>�7�Ӯ,�+���m\��7t\"��V\'MnE�n\r���y\r��r������g\���3$Ь\�!o��\�r*\�\�76�߽�\��;�>\�\��\�>�^C\r\�Ҩ�\��\�:�\���P\��\Z%O��q\��U\�z�6\�q�I��\�\�W�=HivQ\�\�q$�A\�I�hח\Z\�경����\�Q��\��B�\�\�|���\r�̉\"J�<�8lS\\\�w&к�\�\�\�o0\�~CL��\0��>\�[\�陦ZǍ����[�К�(�HQE\0UMO�<�\��\�\�T\��\0\���\0��Γ\�kr\�\��\�[Ks;m�$.\�\�+4\�.�P\�\�`�\�Ⱦa�w̋ؑ\�Z��\�\�\�e6|�\�kb�\r2\�M�&�\�7��\�1Qҥ\��[j2M\�\�\�quf\�Cp��m\�|\� L\�v>$�d\rdP\�@�ŵ��^��]hWֶ��w*c�R\"\�9-�~��\��Kk�ü�W\"C\�zu��\��4J��-\�\��ЎS`��J	%\���4x�?\�\�=\�^;�u\���g^�M\Z�>�3�\�C��\���4�����m$sJe�η�1�G\�\�\rW�b_%��ӱ7zk���G\�W*�\��~i��r\�V�ћ\nX?\� ��\��\0\�T��\�A\��\0Ы,G�ٶ���e�\06�\0\�\n����\0��OZ\�de/��QL���(\0����x��\��\�\�T\��\0\�ſ\�_\�I\�5�q��}i)[\�ZN})�(��h\0��c�V\��>l�\�*�Un�\0\�\�\���7�T����QE\�QE\0QE\0QE\0\�s�\������ʰ�\�烿\��T�\0}�r\�?�u࿊u�\�i;\�הz\�EPEPHz~���\�@h�f�\0���\�\�\�\�7�uo\�N�r��C���M�\0\��i�ɿ\�\�o�\rQ(�\��A\��\0\�\n����\0�u����\�Ҙ��?G��?\n9�\n����\���\�F��\0 \���R\�_��\�?�&�Ɯs\�ҥ���\�))[�\�)?\n�B�9���\n(\�Ҏ\�V\��?l\��Uk�U�\�\�\�V�RC{QLAEPZ��\0��\���\���ʭ_\��s�\0^\��\�s⿄Μ\'�Q\�\�E\�\�QE\0QE\0QE\�W�Կ\���\��`�.�\0\�/�\�\�Q���^\�\�\���\0��������5\\�Zg�zI�\0]��\�ڸ\�g-ö(��Jb\n(�\0\"�\0�\��=f�\0p\�m?\�\�\���N�\�q��i�\06�\0\�\n]J\�MES$(��\0*���\0\r���\0:�U5>t��\0}�\'�\�\�\��߀��#��RS@��(QE��\n�_����\0��Z\�Un\��\�����\�%\�o�R��\0!�\0�\'�\0B����B�\0\\O��Yb?�Ͱ\�\�E{/���\0pT���x\��\0�*z\�;#)|L(��d�Q@Cw��hC�\'�ǵME*�\Z���\0\��\0~\��/�\0\��?��V��aܪ-\�\�\���y?�γt�F\�U��#��M��K\r�x\�[�\�{f�\�\�Z=֬\�w&c<��-�g��{��V\�f���\0jߺ_#P�\0���\�QWbnSw-<2Ox�,LHP�\�\\��Bn\�EP ��(\0��(\0��(\0\�[��\0�\�S���U�޷<�\0ڧ�\�����#��S�\�KIޖ��\�\n(��\n(��\nC\��=?\n\0�D\�7�uo\�N��Y�\�:u{���O��5�:2F\�+�Jud�����/\�*\�O�/�\0\��?��V�ɥaܩ\�j���\�ơv\�#}^\�\�%����y\�[��=s�\�Q��e�&�\�1n�T\�=,\\Zw���{�\0��\0���\�\�_�\0\���\�{���V&\�	l�g�˒�\n�\�*\�ݿڭ\��	 �\�q���\�\�E�vU�5�G\��3�ȿ�\0���\�QE�\�ao~H�>\�fi\Z�֮���\�Jl�<�u�����޹\�\�Z=άl\��|��-���2�qk��E�\0��\0\��\0~\��/�\0\��?��V\�*\�Eʂ\�\�a�{�q$*�3V�\0\n(�`l(��QE\0�\�o�.\�\����\����?�\�\�\�>+�L\�\��Q^A\�Q@Q@Q@uw�\0!}K���\0J�}\�K��j_�\��T]\�ۣ�8�\�H��\�b\�z�1`3�\���C�\��\0�uj��\".U�/�\0\��?��G��\0?��\0ߺ�FO�\�E�\�\�ug�i\�c_E\�^�0%:Z>E�\0��\0\��\0~\�\'W\�,�<W�jr\�2]C��\�\��\�jc{��+(��\��H\�\r�xa����~TŻqE�>��\�\��\�U�l(��\�oG�K\Zd�\�Ǹ\�}+[�3ǯ�\nI�ŭȋU��\��im�\�,\�7\�\�ֿJO`�Z\�*�>\�jЇٸ�1\�g\�귳��\�O�L�XW1\��Z\�\�BjK@qqܫ\�j��\�\��y\�-\�\�\0_\�\���\�[��Nh��ai��֩u�C\�*l���\�Z\��5�o���gY>\�총KW�\�\�k�s -��κ\�0���ͮm\n�F��\0A�\0\�\�F��\0A�\0\�\�Z��\�\\���-u\�\�#�$�ELf�ьQM+w\nX?\� ��\��\0\�T��\�A\��\0ЫG�ٶ���e�\06�\0\�\n����\0��OZ\�de/��QL���(\0�\�,p\�\�J�z��U=S�<�\��t1�\��\0iYg�>:�h�Ҳ�\0���\0�MZe]\�\�_�曵���-G�\\jV!�n\�\�m5\�xJ\�\�D�֤3���cʜl\�]~���\0|ҐU_ʥ\�\�7\�jvMw*�\0iY\���\0�M\�V_�\�\�&�\�_\�/\�F\��\��UZ�B\�\�%�c�p\�\�uH\"�UK�_�X��~�j�@�V\n(����(��(��(��nx;�?�O�\��Vz\��w�j�\��\\g����N��-\'zZ�\\(��\0(��\0)O���(\��\��տ�:��f�\0���\�\�\�R�#\�x>6}NR}(�M�\0\��\0�j\�\�v8�\0��\����\�+/���ɥ�U�η�\�v�m_\�/��KQ\�V�Ҳ\�r9\��\0�sQ\�YE�]hL|���88\�\��W]��\��\0\�4aq����K��*3彺���c�\0?��4�\�6_���ɫ_\�/\�F\��\��UZ�tV�ұ\��!y>��\�\�FYj/V5WRU��\"���\�9ӎ���ƒ��e���_�\�\���g�\0?�\0|��ʹ��\�ғj�\0q*z�BԬw\r\�#i\�����YY\�\Z\�4\�~\�w�\��\��\�ڿ\�_�\���ǵK�\�}�R�Z\�V�Ҳ�\0���\0�MQ�\��|���j\�\��\��Ta���V�\�C��ҬQ\�)��\��槪�\0}�\�\�Pw�@��}�W\�(��b\n(��\n\����?�\�\�\�Uj�[�F���_\�k��&t\�?��֊(� �B�(��(��(�:��\0����\0]�\0�G��\n�\��B���w��\Z�\�\n�\��\0\'�_���څ��+\\.A��<Q��e�\0?�\0|����>\�)ڧ37${\�\�/�W�M�\��\0\�6���\��\0\n?�l�\�\�\��g�\���\��\0u*5�!�\�\�_�\�C\�Vo\�ۣ	�t��\�VY�\0���\0|��\�1�q�\�&���\0|Ԩٶ��\�t�\�V:��\�nG\�i�*\�认a�Gz�\�W\�|��jK?���\0pU+\�Nֹ>N1��JJ(�H�n����>\�(rH�<TrȑF\�H�#XӪ���\0 ��\0y�a����\�\�}6�Q�؆\\\�w�O�U��8؝��0�\�\���j\Z����mS\\�� ]\\f<����t�\0\�V_��?\�Vp���\�I����(ǕY)s;�������/��h�ҳ�\0���\0�O�U���\���p�\�_ʞ�\�W��\�i(\�V�\�ʸ#5b�]\0/��A\�܁\�V\�L�,�_�\��*JX?\� ��\��\0\�U�#�l\�\r�TW��\0��OPYǍ�����c�2�\�(�HQE\0UMO�<�\��un�j�\�\�\�/��\Zܸ\�x�i)Y�\�)�n<\�\�4�\�ą`\�x \�\�\�[hu-\�4〻�(_\\�@��h�#��2;n�̈��\�Һ�^\��>,\�*�Un����\0����\�\0�AESQE\0QE\0QE\0w�\�\������\0*\�\�[��\0�\�S���Uˌ�ׂ�)\����\�K^Q\�Q@Q@!\��R\���\0y�u�����SS�\��տ�:�\�_}�\�7�{M�\�\�&�\0�i�\�5L�Ea�\0 \��X�\�L��[\�`2�=j\�\�߳pߌ\�\�?�0�FtS�u�&��\�\�^zP!(���\�T\�\�9�̋8�S>����[Q�\0�{�G�T�\0�q�\0}(\�yӜ��?�\Z�����\�RR.7_�e߷pݏ��i�\�\n\�\�J��l-�\�v\�\�[\�\Z	w}s\��h�#\�T\�\�ҏ2\"p%B}���̯s�\0�?�\��\0*�ڪ\��\0\����t?ʭv���QE\�QE\0�\�o�.\�\����\����?�\�\�\�>+�L\�\��Q^A\�Q@Q@Q@uw�\0!}K���\0J�\�\n�\��B���w��\Z�\0�\�\��O\n��GL�\0�I?\�:�T�\������7󫀩b��e\�\����\�=Ţ�%�\��\�T\��Ѻ:��i�\�u�B��\03���dXϚ�N\�\�ۏ����\�M��\0��ȍm8WV!CE��x\��\0�)u+�5QL���(\0�����\����un�j��o�\��\�{\rn\\n����\�$\�\094֒$Ev�7F\'��\���UFY�\�z\�`\n� ��\�@\�\�\r\"\�\�(2D:ʟ�Т\�fW��\0�\�?����\�z�p������}*\�%\�@���B�\0\\O��IK������\n�\�\r�a����_�\�o�\�\�/���\0pT��vFR��QE\�\n(��\n���\0ǋq��:�U5?��o���\�{\rnA<SG↾\�$Kk�2��f���Y//�[I,��-�T�\�}ki���\�jT\n\�f5����M�o`M�\nTɿ�\'�U5ӵg�&�����2\�/��H���Z(\�A\�\�+�	N�5Ž��,\�\�?�V\�4��g&{W��M\�\��:騣�[�\�;X�y�\0V}�v\��UV\��>,\�*�T�{ ��)�(��\0(��\0(��\0;\�烿\��T�\0}�a��\�\������\0*\�\�\��\�{\�\�w��(�(��(����)iO<\�:\��\0][�ө�\�o�\�\�Ν^\�/�>��S\�aL��=\��\0�f�L��=��\0p\�2Q�qm$��#\��a�|�l`b�\�\�|Amp�tѤ$�87\r\�}�B\��A\��\0\�\n���\�cY\�Kn����7-,\�X�\r�=��S��\�\��Bۣz��\�\�6�\�8���9�O[���Fy���\�-�em�J��z��\�\�α\r��x����M1��\"��?�p����4j��o�җQ�\0�|�Q�\�5O��Ҙ��K�\�y#[M���\0¡���\�Ŝ�R\�	��+����\'?�&I\�C�s\�}���T��5\�@�K��<�K�jQOoF\�X\�\���\�̪ݿ]5�@�уs`\�\�\���)-\Z?�\�\�N*���\�\�H\�{IdF6n\�H\�sںjJ9\�?h\�b�\��X�\0\�C��\�j�s�\0�?\�\�V�U-\�{QLAEPZ��\0��\���\���ʭ_\��s�\0^\��\�s⿄Μ\'�Q\�\�E\�\�QE\0QE\0QE\�W�Կ\���\��`�ԗ�Կ\���\��`�n��\�xU�\0�\�Z_�zHs�\�5UD�\�W\�n>\��E2�]���֬\��\�\'�vj��T�\�\"�l��O�M7T�\�cquʡn\�\�V�\�͵[x\�\��?*i7}\�\�j\�\�G(�\�\�Y\�j\"\�ɯm̖�\�\�l\r��\�\"��Үd��\�ٲC+űuֺj\\�^\�Z\���;�������\�4\n�[�\�5�i�\06�\0\�\nu\��z\��\0\\\�6\��<`�\0pS�yt�\�&��*�\n(��\n��ǁ�\0}�[�����\����t�\�[�ݩ�\�\�%�\�*�\�qX����Z\�K�\�3$!�[�������M\\�+\re2j:t�Y�\�M7*\�\��Z��\��|Wv\�3f\�E\�ޭ�(\�A\�\�(le\ZeݽݛMp\�FY7}\����;�#Qc&ݝ���B�I\�\�Eu\�Rt\�*5\Z2\�^;�Eue\�\�A=��N�\�[���\0\��\0\�?ʭw���aK������\n���/�q?�e��6\�\�\�\�\���S\�_�\�o�\�\�H�(\�_\n(�����(\0����x��\��\�\�V\�#yl\�cR\�8N\r\'�\�\��\�\�I�US|ē���ݤ�q�\0�+�ʋ��-�~S\�͏����u��ZQ\r�Ø�c\�toJ9��Y��QU>\�\�\�\��\�\��\�s�Qt+1n�\0\�\�\���7�UA��\�\�\�-�ѬlY�\�J�B�QE\�QE\0QE\0QE\0\�s�\������ʰ�\�烿\��T?\��\\g����N��-%-yG�QE\0QE\0��\�KHzP�\'Y�\�:u5:\��\0][�ӫܥ�G\��*|l)�Ǵ\�\�\Z}6@ZFK!����?\�o�\��\0\n�mu$6\�\�\�7�pHT�no�����2\�\�G\�U>\�q�\0W?�D5x�ٴ�-\�\�y�<r֎d>Vh~~S\�͓��s�Q�\��\0��ʋ�Y��\�>N;�\�I�\�4�\0��\r\�ķ\�\nY\\b:���G$�.��g�o~)�-7_���<��\��i>\�\��\�s�S�&̷�Q�UO��\�Xܓ��`\�!�i�\�_˓\�|�\��(�\rT�sύ\�\�Gۛ?�\�s�Qt+s�\0�?�\��\0*�ڨd���Ŭȱ�,\�*�o`��)�QE\0�\�o�.\�\����\����?�\�\�\�>+�L\�\��Q^A\�Q@Q@Q@uw�\0!}K���\0J�\�\n�\��B���w����׷G�q<*�\0\�e3�=$�\0�\��\�\�gZ\�%�rB�s9��(㚛\��\0>W?�Rj\�5�o�4~S\��\0>7?�no����\����\0\n?\nϓW�+�m\�\�\�M6|�\�-��/ێpln*9��Y=\��{M�\�\��\0Ǎ����\�x\��\�\�ne dT�o��\�v��\���E�;\�L�X\� �x�4r.\�a\�S\�QE\0ST�\0�{��Φ���\�\�\�.$)�\�{Tz�o-�,h\\\�X\�g4�\�r\�u�\'\�U>\�\��\\.}�Z>\�\�\�\�nr}���o��\�u��T�\�\�\�\� \�\\T\�mo����)&>V[�(�*�ۏ��\\�T�n?�\�s�S���?�����g�U��d�\��\��F��,\�1Z��\�\�JX?\� ��\��\0\�T��\�@\��\0�VX�\�\\7�Q^\��<��*|֫ڐ�l-�\�8ĉ/�<\�8�Sv\0�#�2�\�EF �\�&\�\��ri�k\n,��p�\0�\�V�\�Q\�	���\�S僕��9�\�iB>d\�[\'�Q�hIFq\��\�%��%y�}㓃Mpy&\r�\�\'\'\�=h\�4,d�\�\�>�[C Ea��\��Ɲ\�\���?nd\�3��ʋ�\�A?7j\�!�\�m\�ڌ�\�qs\�&\�П��tIk\n,��p�\0|d\�&�}�\�j�M#-�\�~r0G��$ˍ�%m���1�@\'=j��\�$*wF0�c\�oH\�\�q�9<֚�dM�A\� ��1\�z��\�\����\���kXcVL��\�\�h\�4&��6�\�\��`ݓ��\��>�$\��(\"l}?:J�\�y�\�S�7?\Zs\�\�$�#)ރ\�94\nȗ�)q\�B-\�4�N\�\�ri����\n|�9#q�tj=	�g�\�B\�\Z��\'\�\��\0�N0Dg���\�rqH4$\�J\��w�~j�\��v\�d��\�2\�wdc��\�x;�>�O�\��W63�GV��[KIK^Q\�Q@Q@#t��=?\n\0�D\�7�uo\�N�C�6/�/�uo\�UB&��<�*��A\�kۧ�G\��j|r�.Q\�\�Q��\�b�\\H-�GwU;��ܚ\�R4&\�q\�⌜w�\�\�����rF\��\�\�m	��S����<�\Z��\�l�k��N\�W\�D��\�\�^\�\�\n͏�\0]t_g�\�3�&S�9?ʱ\"\�t�\�\�tx\�Ava�\��k9\�K�M�{v:���\'�\�PXM�\�P�`\�\rǊSM2HAރ�MivA.Nz�\�9����d�@0\���O4\�i�\�\"69#q�t�\�O�d\�@\�к��$G�>c\�8C\�>у\�c\��T�2�#�O�r\�\�uM6\�\\:��\�\�\�\�M��?�lWD����h8~\\�=+@�\�u���d\��\�\��\��\�׿J�[�\\\�7\�v\�\�q\���-�\rD\��4�!\\�t\��ж�$\�(s�7\�֮\�\�B\\��\'\�o�j�Z@-\��\�NH\�iZ\�TVBDpn#j2j*?\"37�T�@\�S��\�(āT�3\�\�\��(\�,�x4�c�W6pD%O�@\��=�\�w�\�N\��\�\�q�\0נ,HkW\�\��0\\�\0׺�\03X�,�,�\�+r�z���\n�\0\��s�\0^\��\�s⿄Ό\'�Q\�\�E\�\�QE\0QE\0QE\�7�\�\���\�3\�Kw�\0!}G���\0J�<\�����	�\�=\�ۣ�8�\�H�\'�Ҍ�\�֫\�g��2��Ϝ��h�$\�ð�lrWq\����3�,d�і�\�@��ȱ�)+\�\�_\"17��\��\��T�#�\�4\�R\�\�\�%��\�,핔�~n~�u-��9\�\�:��c\�2F�.\�r�H9�����0���#\�?γ��v.wj7\�X\�\���\��qu\�J\�Ёq,T�\�֮5�M$r2�ь/\�j��%���_\�n\n�#OJ�l\�L~%b/\�]\�x^\�\����۔9\�Z��e\�ri���o5��i(\�I9$u�\�Z]�\�~!6�\�\�b&;��\0j�t��䛓lѣߵP���:����H�PE�v;�\��uk*Y]g��\�c��z��\�W�\�/u?KgbȲ��X��\�kn\�\'�O��\�h�%Y\�H\�uˋM#\�\���\�Q!�$o\�?�k\�-�����q��<D�8\�\�BK�\�;�%\�\�N:\�۽(b�~�\n���\�\�`����,O�\���\�sZc�𦛪\�ڦ�&�$l�\�]��\��WS\�sӊ\�]CJ\�o/\�g�J7g#�\�[�\�\�\\&@0N?*Ξ�к�rԗ\'֌�\�)m\n\n�g\�\�\�E�\�C���r\�δԋ\"\�\�G\'�L\�y��F\�\�Hѻ/\�\�9<�(�1;M���94\0�\�Ӡ�\0���\0��\0B��i�\�H\�X\�#��\'<Ջ2Z�7f�>b�3��\��\0\r�\��\0�b\�K�\�2\�/�楋���.>`:T6��2!��\�\�J�\�o�߁��\0�Z\�dc-\� \�zd҈ayX3�ޟޫ\�\�>�\rS$b\�NȬ�{�`��~\�q�\0@��\0��\�D�s���Ԓ*\�O�\\g�A\��\0}S�\�?���\0��\�G!\�\n�`OJ\�_��N��\��s�˟ݕ=O����weF.{�\�\���\�\�T�j�\���\��\0��2\�\\��Х�\�ډ\�g\�d\�S$�/�sc?\�\�t\�\�o,�\�)s�\�\�}�u����>C�~�d\�t�4���\�\�Z�\�\�\�n\�\�N�\�u�7}zLl�VX\��H�}�T\��Eě^\�Ƒy*\�|\��J��J\�#��U\��\����\�w���\0�Y��\�ƛql\�Q�ZM��WU�\�S4�n\��\0Q[&hb�%}���>��\�%A\��5�\�q\�N�ꏵ\�c�A\��\0}W4�-�{ǁR0C�Ո;I\��\�V\�\�5\��٢%Ǟ��򻏮hSO`pkr\�ڮ?\��\0�\�j��\0�{�\0\�Ul����vfw*\�x\�t�Kj�]\�I�UV_�\n[{D\�έЁ�ESQEb/�O�&b�}t~�\0�\�S���U\�#f\�T��\�{ں�\0\�\����\0*\�\��\0\�u\��\0��:\�ZJZ�\�\\(��\0(��\0)O���(\�#\�\�s�\0=[�\�`3\�P��/Jt|x\�\�[�\�v�c�U2��\'\���n��C���\�Ԛ�\��E\"�L��=��\0pք\"�w\�K\ZȖGwZwڮ\��\0�\�Ic�\0 \��OJ�r�\�\�x�\0@����1lfO6��,�\�N3\�9\��W@��\�k�\Z\�\�[G9�<\�\�`�\�p\�AQ+u.w�����1��!���\�\��\0�{�\0\�U��\�\�7�WR\�\�A�лs\�ң��$\�[Y^��J�MB1\�&8ȣ�Z�#��m}�㾝\'��G\�\��\0�|��Y�Z�\�\�:̛\�O��\�zm# �ֳ�\�)��g�C�S��?i����ٶ\�c��U\������W�a\�\�U�{�]YY[\�&\�BQ�F�\���E\����O,C5\�G��Y�\�\�s�\��l\�[˕`��\���\�\���tiu\'[&�\�\�\�J�}⫫]B{@���p\�9��+N\��\0R�\�\�m��ܪm\�# |���T\�7~\�\�V\�_�U\��\����\�w�\0�{�\0\�Uo�|��V�2�)�\��LP\�h����U�\�֪\�s{c�\0]�]�QE1x\�Ey_o\�\��\r��\�\n�\0\�\�s�\0^\��\�b\�?l\�\�g�y�?��\�_�.\�\���|O�Յ�*;Z(���\�\n(��\n(��\n(��<\�\��B���w��Zo8\�\0�n��f\��B���w��R\�����\����j��xu��ɻ�zQA\�b�թ�\�ɶ���i`Pi�k�\��%�z��\�\�뱫g�-Ǣ9��>[\�iz�i\�Z\�2\�\'=+T\�ܓ��I�\0}ժ��^Mf�zB\�h��ؿaSn[�\�\�dK����I�\0}UmG\�\�4��ӟ�kP�E冥qfBI\�3/�\�s\��\�Vme�\�,�3o&պ�[\"6n�>�<�h|��L4�\�4�\�OE�a3��\\�U\���I�\0}V���	5;Y|�q\��y\�x�\�O��\rSX�J\�-L�^\�Ǜ��Џj\�Z�ۻ[�>\�q�\0>\�T�k�\��\'��XVZ��=؎\���N���[�^Z�\�\r\�\�tT��/\�l�\�\�Z\��N�,��\�m{D�O{a\�5��\�q&�&\�\�\"�݅c\�x�\�m\"MA��\�\�@>���N\���GU���G�d�_\�v�\���4oq�\�\�荏�\\\�9�\0\�\��\�\�9媶�s�ً���\�\n/���?Jԭ��4��?�\��iڥ\�i\��o7!�\�\�Jص��B˘�&�����O��Z�g�\0W��\�I!\��]�\�QT@QE\0��=��Um,\�&S	&?-�>��\�0ɨt\�/r�a�\�/��a��7\�[�ʏ~|�\'\��w�����C\�g\�\��g�ElH\�\"!w�\�Z\�&d\�J�\�\�ֱ\�\�v?\�5^��<\'�\0pՎ�j\����\�T�%nI���\�_\�O�\���?��S�[\�B x ��E���E��#\���\�\�\�\�O����HX/�\'n��%��L%KtYG�\�ձ��a-!�p�\�D��\�Zv�u\�?\�\�VQ��V{�*9�]Io䷴1\�y�\'�\� {��8�\�d\�ŵ��Kn�6m\�p\�\�H�6Nr��>\�b\�\�7GN�+�!��x��0P\�N\���\�5�\�pF<\�\�z\�\�%�gNl\�L�Ͳ3��$g�>\�j#d�4[]���\�j:\�\�X,w	)�Uwp�\�sڵ\��XY-\�etc0\���\�rH�\�6�\�8��\�|�x��D�-|л�\��}+-b\�Kہ:*Y$\�nJ�\�\�N\�UY䜀�\�*�ÃܟcIJ7�\�$�ͯ\�4QEhdV��B�\��ɿ�Z���\0\�R\���7�T�ؔQE1Q\�h5y�n Á�w�o�7�?5O�\��W<��\�R%\�2��\��7�?5Og_\�\\��\�|μ�~G]KIK^Y\�Q@Q@!\��R\�7O<\�/�0�\�����\�C�4�>|��g�Kޗ��j�\0\�\�v�^\�Y��\�?sҽ�}�\�/Rjd�\0�\�7���L��=��\0pղ�����\0\�=Aa�\0 \��OLA�Teh�춌<v=:���lR>\�\�P�\�\�c�i����:H�ѫF>RLt�\�6�\��\�f\�>�=I�C�^��#\�RX\�\��6�~\�\'�-\�q%���I**H�0�\\�\�TsD�Yb\�\��m\�y\�\�F>�#XYɀ�q�XcY��\Zx\��W\�il\�Ș(O\�\�/\�֤�wYV)\�W \nN\��K�%{93�6V�Ս�d�#?�/\�\�B��\0�݅뎟�sw�����k{�e�ߺ-�����k��\rޑw1�H\�\��s\�N/}�\����\�#oPz\���\��J�b\"G\��V@\�\��QD�<�y��m�j?\��Z�\�-�4��a��@e��J7�:rJ\�AFx��Ҵ2*\��\0\����\��U�\�V\��?�\��Udt�\�od-QLAE~�%�W<�����[>�\0��\���\���\�ڦ�q�#Ǘ\�\�[~�\0��\���\���\�\��\0	�X_⣵��+\�=���(\0��(\0��C@uw�\0!}K���\0J�v!\����`ۏ\�v���Կ\����Qc+�w�==\�ڥ�$xu��\�\�^i;Q\�=h�LJ��\�\�\�[=j�\����\�WZH\�Jd�C8Q4J�NW#���)�\�>\�i�\0>��۞�h�\r�\�Ϳ\�S\�bG�	\rU\�of�k$�\n.&�\�R2#�\��\�u;�7��L\�1_�������m\"ғ4͍�R�\�\"�\�׽9�\����\n\�.��g�J\�\�:��[�P$3A�\�@\�\�z\Z�w}�\�\�ɱ�I(9\'�.x�\�.\�\�\�-7\���9��랴0�X��i\�?/L��`\��\�\�\�ZG3$b\�\�\�%�j]7Y��֠��DK|H��3oFs\�$��kijJ\�F~\�\�\�	gk�\�n�˝���z\�\�\�\�mP�{�ıJ\�	\�t�W\��͜6R�,&�sĀ{\�C�P{9=�(!�<�#X\�;��sO�\�t\�\\\��\�$n� fh�\Z�V�kC7��U,�\0\�\������U,�\0\�\�����A��n�(�HQE\0}zTz�.�\��#\�uJ>�\�\�*1.B\�/��S|\��*\��6o��*#����\�\�W0�wB=�a��A�x\�P>r:f�\Z�\�\�\�k��8R�\�P\�\�zp��G.�xm��\�1��;%�M\�H\�\�o�\0=����\�kY\"�gRk\��,\�\��\�Q��c�\0>��\0\��\�\�\�?�yx��TU\�lv�\�\�_�\\�\0\�;o��^���c�\0>��\0\��\��l�g�\���TR�\�\�?��\���\���\���\\�\0\�;o�\�\�\�}-\�<\�\�\����믰}Ew<\�N�2���V\���[��[k5*r�7C^�e\�\'\�괾f�Ћ_�揮���\��=\�\�6\�D�nS�\�\�T\�ux\�d�\�Y���\�[w!��^�_B\�e�\�ҹxkI�森I.�軹�0\��3\�)}q\�a�Iw2<㵗\�XnH\�֏3\�\�\�쳎��\��\�8\�-\��y�\'<}\�\�\\}��\�q�l\�,�Buۻ�z\�H�]-�Պ\�,�ڽ\�\�}-\�<\�\�\����돰}G\��\�\\�\0r\��\0\�J>\�q�\0<\����Aߠ�ֿ�\�G�Ϣi�1\�\�o�I5)r[�?����\�\�Rg��9�hcHШ\�\�\�jٺ��\0�\�]%λ\�\�_��ꬲ�|�P��\n�\�\�BK�\rz3c�\�\�X\�!<��3\�P\�d�\�P\�d���\�\r\�i�ܼ��\�\�\�)�\�\�l\�\�\�Z��g%�Ml�\��gC\��@3\�?��\0t>��\��T�\�)>\���J\�#\�t9�\�\���L�E\��\"�\�.t=\\o���X�G�`\�CG\�_�\�?�p\�wd.\�\�\�ncЊ\��/oZ6H��ya�7޶O�k\�Q��!AG\�95��\�Q�=+\Z��R<�6��T\�\�qE-W1\�QE\0QE\0�ӚZJ\0�9�\�\�\�mn��C�F#�S\�P[ܨ��#iR\rz]ŭ�\���\�7\�i\�^�,�A3G\�gZ\�-\�)X\�	JM��\�}��ꔍqn��R���F�̱�\0�H\�G�e���C�\0|\n���\�\'\�\�<��\��\"lBd�Z�\�\\�\0\�;o��^���c�\0>��\0\���\�I� O\r�{�eG4���\�+�\��\0n��\0�v\���s��m�\���\�^f�\�k�\0|ѿA���\0�h�\�\�Q]\�:�\"\�\�Ku��4�fo\�,�p�Z�S&�\'\��m/��\�k�\0|\��\�}K\��y^\�ɲw[��֩��Es�\�٥���j\�#�\�X�#޽C\�\�}-\�\�\riZW�u\�]�Hn�-\�8���}�\�+��gf.Z\�\�\��\����9\�\�\�I\�\��f�\�k�\0|\�t2~\��\�>�\�Q�<\�8\0�ee����i\�;�VKk4`�U���z.�\�\����\�\�}-\�>�\�Q]\�>�u\����\0���n��\0�v\���\�\�Gk_�\�{.�c���$��ud@z�O믰}Ew<�Β{�w���$\�|\�ߵ�F|Ԯ�mgð)2[*�e|\�\�V�\0@kKk�*\r̞Tlc�*5�����ڠ�\0�\�Gڠ�\0�\�]T���\�\�\��\�M61$\�\��8\�G�#j�]?O�6�!��\0RLX\�})�w���\��ڠ�\0�\�Gڠ?�\�+��\�t+�e�Uv�<\�.��q�Ӵ\�\�Us�JT�\��\�;\�Q�\�\�\�?�q_k��xR\�\��yߞ\�/F�\�WW��-\�b$r8rr+��n��\0�\��<���G\�\�J\�H�4�G@eW\�G�\�4��T\�\�{���+�\�\n(��\n(��\nCKI@u���ׯ\��fE&8oj�5\��p���\�=Ezl\��\�&٣Ir\�}旦�1�4�~���\�x���qT��M\�=\�\�v�Ϛ��\�V��\0Z�\�ٖ?�\���(�˱�\0�H\�W�\�\��\�cy ���Ih�݂z\�\�\�Gm�\0}ק�\0fX�\0Ϥ?���\�8�\0�H\�K믰��\�y�ۮ睷���\�\�?�\�\���W�1\�\�ʰ�:���3A���\0�h�\�\�Q]\�<k��R�\r�/p^�ӻ�V��!z�+\�w\�>���\�\'��\�\��&\�gE]}�\�+�\�j�n\"\�\�n�\�7\\t�/ugeuy=��\"G�_��ֽ+\�\�}-\�\�񎛣k��Ӣ���3&��)}q\�a�Iw98oŪN��{\'Pܷ\'\�5!��Rml�(\�\���X\�?�l4��`�{xByΜ�jy�\\Z��\�\\}�\�K�\�\�ͦ\�\�h�p���ť��6�\�\��\�f�\��=q��\�\�}-\�>�\�R��\�iu,H(-QDW��}�\��y\�\�\��/3A���\0�iQ�9$�jX���?��\���\�y\�ۮ:�v\���i*\�n$�H��>\�)\�+���\�l\�\'�{ \��\� X��\'���熮�Vc��L!R#ౣ믰}Ew9��A�\0=R��A�\0=��\�\�\n\�\�Q�Kh\�\�\�7\n�䁌��\�j^��N�\�\�:�&h���g&�׿�/�x\��\���J>\���J\�Y�\����?v\�.<��>�*Iu=\�\�+�\�($�L�\�)\�CG\��/�x\�E\��\0\\�/�톩4�c[x��v\�x�\�\�\�N��\�eV���s�\0֫\Zz2\��\�  ���\�\�\�\�cZXE	s^\�\�V\�B\�Y�Zm�F\�Qc1\�W�=��o��}�h=\�%����3�IH��t�\�jCKU\�fk{)�PF��=\r\0O޸�?C�|N\�<?.� �\�\�Hg���q�|\��O�\�>-@e:��hz�>!�֐Z��\���\�(\�V�\��\0�\'\�\�\�\�/�\�V]\�޳g�\"ڕ�=	���\�d\�$�\�`ؑ�\�h\��g\�-�\�b\�L\�؀d�]5�V\�6PN\�Q\�d�_aQ�\�\�X�拨��L67kjb2,���\��U���\"���\�Z\0��K`8��>�G5\��+\�6~&Ե\�\�Gk_�\�yle\� c�WO�\�\�\�Iu\�F��Zf��Z\��\�\�m��\����cs\�v�>\���+��g\�OA���s�۟%L`]\n\�j��Qۭ��6)cɪ\Z���\�i�]-�63y��~�(��\�d\�Dq�qGحq�\0\��\0\��\�\�Q�\�o\�=A��4���\���/z\0����qr�Q\�\�D\�媀[��G\�7)\�\��qK��ݖU|1;O�u�ˣ#\\0�\�T4=R\�4��\�_��1�+��\�W\�\n�\�.�\�\�\�̒K\�ˁ��]�?\n�\�\�S]٬r\�\'���0A���\n�os�����kǌ�P�k[\�\�x2;ɥ�{\�\�cr�6��#\�Tڏ��l�vʶ��\�G͑�\�\�b�P[a(K�\n̈�ܯzM;Ñ\�����NVIT��ڒ�\�3\�[���*ƒ٘\�\Z2�l\���B�\�-�\0�\'(\�ϱw�`;U�@EPEPEPEP66��\�TӚ����\�\���m����\�\���Ss\Z�\�\�W��4���yPI *��\��\�_x���e\�t\�]ͳJ\'$���+r\�}f\�\�9�mB\�7�Td\��	<E��au\r\0�S@�\0c��\0�h�\�K�;O������<�\�<�Z��$d\�\�{�KqV�^+\�=\�j\0\��\�����!}�6�\'X�e#\0g�h\�R\�\�\Z�������A�%ASW\�5MkI�\�nE��p���\�Y��խ-a��mDq E���+_�����\�\�\Z���\�\�wG�\�0=�P\�8?�>�\�X\�^=����dP�\�i,�[\roQ\�aȞ�\'���F\0\\V��\0�h�\�\\�\�]n\�º-�\�\�f\�e�H�\0�k��\�R�R���X<�q˞NEgk\�\r�\0��\��Z�i2L1��r(v-��9\Z\�4gP\�FW=�I�+L�\0Ǵ_���\'�o?(��\�S\�F����\�\��\��\�\�$l\�\�6*	\ns\\/��H�y�\�v\�[M�\�\�-�\�\�\�\��\�zZ����h\Z��⺎\�\�\�nn\Z\�\�[�\0-�\0�!\�ٞ\�\�̍\�2�e8�L�i�Ǳ��k\�r(�A���.u8/m\�[s���<�ؠ^\��\��h\�.o�{��\�X(�P>aߦj[��ƕ�ص\��\0A\�v\��\��:\�G�(\�\�KbU�\�ٌC�:�s�im�5���畚0T�ch�O@\�\�Z\�\��+yrio�\�\�\��\�Z�T���\�\�\��O��{m\�]��(��(��(��(��w\�\n}�Έ�eq\��\�ګv\�\�x\�� ���4j�)\r\0[R�\�i�S�̞\\,�\�\�U}R\�\�\�\�\�j��&}�~���=fh^&�:�\'�\�1�\�6�)�\�z�\�>ξc �@b\�<�\�>\�k�\0>\��\0\��t-P����d-��\���\'5s��\�qݥ��Պ�<�hK\�v�\�\��\�Ws\�H�)Z�l\�\�]\�L�|\r��{WCkq�\�[$궡\\d�*���\'�a\�Oپ\��@:�\�s@\�\�;\�\��\0|\n���\�GRm=gHc\�\"(v\�]ni%ũإ�\�j\Z|Z\�5�\����6ɏq@<7=��\�?Q:zۋ�U\�R(,��~\�k�\0>�s����Z\�\�j���A#V<`qQ�krF�`\�9�x�\�Q���hGGh�\�%&f\0�c�>��\�\�v��\���+\�D\�m5\�\�Z%���\'_\�\�?�[��\�\�\��Kf@�<�P�ح\�\�/�\�W#�\\��g|t\�8{����I\�[\�]jR\��h�\�\0�瓚\�\�t-G\�q\�\�_*9�a��S�@�\�徺�Q[���-��v��\�e���\�.V\�\��\�1�����ǯ�n\�\�O֥\�.\�n\�+��I\�\�t4�\'��\�}�;��[s\rK�\�\�|�se%�܆;`\�F�c\r\�z\n\�F(��\0�2\'�2Kt\�L�ɀ0N�߅_\Zl�\�YĪ��0\�0S\�z\�\�(\�\0g\�\ZX\���\�Ry%X��9 \�ASؤ�\�\�9�N���\�\�\�\�]4[1�V-\�}{\���0:�l%H\r\�\�M�F�\�5y|\��\�n|��K\�G�\�>\�\�\0��\�\�v���P����\0\�*\�����T�_�]\�3@Z�\0ǜ�\��MP\�ǜ�\��M@����\����t�����\0�1�\0ZM{�Am���\0:[O�\\�\0\��\0�\0h\�E-\0ei��ԇ�5ʵ?\nǳ���\�\�P�\�:�\\�\�9ty�\'�L\�N\�c	\��\��h\�W�~\�_�\��V�b\���ڠyV�M�W\��涨\0�j����\0��k��j����\0��h�\�IKE\0fM�\0#��po\�Zu�7���\0����iPEPEPH\�[P�;X(̟\���c�VO�}�]�|��f:\�X(h��\0(��\0(��\0(��\0F���qU�cx�9�r\�Ylm9\�j���qa\��y\�z\�ڂ��<��\0p�\0*����\0�)�\0\�?ʀ!\�\�k�\0\\\�]�ZO��m똫�SR�\0�m\����Y�\0\�J\���֯\�_���\0p\�1�\0+c�\0Nk@P(4���W�\��jf����\���\�G�<f\'T�\'~\��\�\�3�\�@\�\�oP�\0�*\���[=�\�\�N��\�y�+lP\�5\'�|?�\�]-sR�\0\�\��\0\���T\�R\�E\0fj?�ӿ\��U�\�5���\0\�CO�\0���V�\0QE\0���\�Uq��\��7��7�\0v�\�a��\�\�\�>�\�f�\�EPEPEPEPU/\�\�\�7��9�/j�zUC\�\�\��K��\�\�@���\0\�\��\0\��O�\0�եY���~\��\0�ڴ�\�Xڷ��-ܓ�\0A5�Xڷ��-?ܓ�\0A�:/��\�ܭ\n���\0\�\��ʿ@5?�]\�6�U%��\0C������?�\�\�&�U]\�d��\�\�.��C�ȏ�Zt>\�&��\0 ����Y��\0�X\�ʰ�M\"e\�$ΧrB\�f9\� �\0ҷ��\0\�\�/��	k7\\�\0�[�\0����*\�\�\��\0\���(�_���\0u+O�fY\�b��ԭ1Ҁ\n\�\�?\�#�\�o\�Z���\�GR�\0�\�Ҁ5h��\0(��\0k�\�\�x\�Ut�Y-,>@\�~J�\�\�{U{?�}��,��\'�\�@��\�\�Jo�\�ڒɃ\�\�\�/(�1ҝ7�俔@}�n}i-|\�k\�\n�q�\�\0��\��\n��\0�f�U=P\�\�B�I��\0Mi�\0p\�5�U5d[\�V�m0�*�\�8�?�l�\0\���j\05\����\��뙽yǎ�G�\�-�	��\�z\�յ[{�/&%���p<�\�S�\�\�y�\�\rx*���\�\�\�x�o�޵\�B�\'�\"�Y<|��:\�K=�\�����\�\�\�\�\�*�\�㿶kk�r\�\���\�n\��O�\0~�\0p��^K�>\�Qy\�\�x\�,\�?צ\���qu�\'�\��\����d`\�\�\�3�l\�I�\�\�\\\�*�G�ܤg�֠<K\�\�\�Q4�+o�m��N\�Xq�TW\�\�h��4\�O\�\��#\�#�\�Z\�ul�\rA&YAi�#$\Z���g\�7��j\0䥼Ԥ��K\'��⑾\�i2�\�\�k*װm�i\�UеĄ��\�޵��l�\'�\0�MY)?�m.�9|�u#ga\��\�\0u#����g\�?��4n\��M�\0~�\0,��0[�\0\��u�X�^Gy�\�Ь�V�\�m\n\0Z(��\n(�=(�h�Q�\�Ŝ�?\��ձҩFm�\0�\�TR\'إ\�\�v���\0QE\0QE\0QE\0QE\0#}\�\�x\�Ut��,Ѽ�\'?�\�\�Zl\�\�8��h\�.�Zo\�+Ҁ,\���\�?���T\�AvZL\0\�(@��\0 �_�\�*\�ai�ŴC\"\�k(կ\�\�?I�\0\�Ѡ\Z���n?\�5\�\�<\�\�\���l\�\�O?\�\�>\�ǽm\�k6�\�\�\Z	\�2�j1t�W֭2˴\�(ʡ<\�\Z�^&K���nynܑ\�\�\�WO>�w�iv�h}6Pm\�Q\�l}�v\��g\�?��j?�l�\'�\0�F�<�O}z\��{K�\�e�/\�h�@;䄱ʷ���v\�X�]�6�䪼A\�\�\�\�j\�,n޵q4K �\�\n!5�@,��1x��o\��\0g\\\�\��r�\�{U)��o�Ok,�r\�\r��K\�\�\�2\�+�\�\n\�\�v\Z\��% R��H<U�\�\�?I�\�ѠJ;\�V}-xuX�j�@Ls|��ִ,�y�`�H\�\'k�.�r\�}	�\�\�\�?I�\0\�Ѭ��2�ߕ7�/}ÜcҀ:�+3�v\�\���h�ݳ����\Z\0]G�B\Z�u?ʴ�\nmB\�J\�aY�Y	$\�@V\���(\0�4���*�O\�M�q\�\�c\��\�Z�T\�[�\0k�\�~\�\�gwm���\0QE\0QE\0QE\0QE\0U;\�y9�\�̠t���r�\�}��_f*1 ߻��\�\�Q@���~i�\0�ڴ�\�N�(�k�\\�K�(�\�H5\�?�m�\0~�\0i\�F��\�!�a��\�I��g\�7��j�sw��A\�$�\">\�c#P1�M�f�٤��@�\"5|\��s\�᎕7�/uX<\�Iu�\��\�\�\�NNO\�Oc]��\�A�\��8t\\b5o�r\�\���\�\�j\�\�R\�sً��\�l&,d\nv\�&	�=\���>�5ֵ-\�]\"Ig\�>X�\�B�\�ﵛY4��E��F@Q\�Դ\�\� \�<F�~�\�W��\�\�\�\�2\�Y�����=\�Y�]j\�(\��\�=KN���˺�\�\�?Z\�m\�K�ڥ�ހd\�hu�E��O��\�\Z\0\��\0W�\�..b\�Oh\"k��&Hر\�=�jӾ�Q�ݑd�[�6}�`��A��;�]G�ퟤ�\0�骞��\�\�YbY�\�\�\�#��\0\\��\0�\�\���ZC�a��VZ\�ל��ȸ\"2A�?۶~��\0ߣ@\Z���\�GR�\0�\�ҝ��e��o�\0~�G�?�s:��yr��\�5袊\0(��\0k�<㊫�\"%�X\�3.\��\�\�s\�\�]5�\�\�d)\����	�\nm\�\�i\�z{\�l�\�!�j�\��i�m�d޻�i\�\�C�K�=�2E�a�(\�&(\�.h�T��e\�x�F��\�ko+˅=H\�ҵ$�\0V\��5\���yl�-SM�\�\�\�\\��I\�c��\�J\0�k/h��\��go,���\'q늾.`w�Di\"�\�_�xυt-kI���j:d\�X\�=Ђ(\�[3�;�\�H5\�i��Ι\�\�5&���u�vNDR/\�$vȠ\�|A�>�&���\�\�\"D�\��T�4��oJ�������+{���p�O@>�\�\�\��K\rz\�\�\�F\��Sv����]6\�O5\�\�x|k?�}\Z�\�O0�\�2*�O\�@|�����%\�Ky2���\�=@��GJ�\�ū�h�\��i%��\��\�G���H�s7�\��\�Q�5�� ��~U?�*\0�\�����\���\��\�r\�b\�/���30`O	\�f�\�~,\�5{�\���>(\�$�@�I\�O�\�@�\�q�}��d�\�\n�k�\�^\��\�N�:��OZ\�|,5=C�w\'\�K�Y^�\�\�P)�\�gx�I\�58l\�c���spL\�<�ޢ�=o�\�����@RB+\�5x�[9)\�e�\�ęaS��)\\��\�f�\�\�\�iykh^�\�\�-<y�7� r�\�s�P�\01���(��\Z\�㔴�d:�LaG�$�\0 {m\�{D�������hJ(\�%\0-�f�+#\�o�CX\�AW���Z��	\r\�\�eV�\0*\�5hP\�E\0QE\0QE\0QE\0��O8\�\�\�d�\�r��\�V�R\�d�{]�\�Ѣ1R�:�z��(���\�iV\�\��h\��p]\�\�\'�W�\�:4_l���\�#\�O�A��?���7��\�\�\�K��x�\�\�\��\'�\�x�\�:\�զ�wic(�P���4\0r��\�!��P�\�\�VV�s\�/p\�\��Sn�]:\�(f���(�`�;��\Z�F��@\���2U���qup#�H�\�\���\��}C^�m�\0֯�\�E{i9�	�O�\�7Ϧ0(\�[T\�\�R�Mk��쩽 �\"����-[N��\�\�+��\�\�CM?2܊�J\��\0\�a�wV\�t�[�\�Z�W�G��5��\�w\�\�\nk�]�*�=G<�o=H4\�i����n\�\��\�B�P�g����g\�׋�sO�N��\�Zm�w6F\�6D@\�q(Xt��\�\�?\�W�R0��\�\0\�A^>�\�Dg�1I��\��W�h��\�,\�TY�\�$�\�p6����\�\�1��F��\�7\�\�w2\�2\�\�\�\�-��\�\0ze\����\�D�# ��K\�\\��@\�$N2��\rq~4\�\�2\�My�i{�\�z1�\�\�\ZηO�rSr��\\\�\�[�E�\�\�*=\Z�=*0\�OOz\\\�h��\�f�񌫣\\\�\�\�[\\L�հ�|�c��5*\�]?��^K�G\�r]p��Z�{�=(\�p8�\n�\�⃭ۍX]���3)�	C>��D\0�QI�\0ZF\�Fh\�\0V/��O$yB<���j���\�%�\�1�cCg�Z��(��(��(��(�=*��F�G�9��?x�Uʣ���k\\F\�<\�ہѻ\Z\0�E%\0��\�\\� ѡ�{)o�K�\�\'�~��}\rx\��-N�^�Pi\�ڔV�\�\�Fp\�[=�ր=5�C�G~\�2^��(�\���_7%\�[�#�,��H�\�^+�xk^_\�\�t\�o4�d�k����\0#v �u\�x�\re�G���M\�gse8�x3�<\r��=���-[N�����\���\�x�\�1\�Q��i7:\\���Ic!\�S�:\��h\�\�\�}*\�\�텭50\�o�=�RxH�M�say�Moy0�3��b\�\0v�k\�E���\�\�\�\�ov�`��$\'��:p:׋\��CZ�GM9\�\�\�M\�cm$O�X1f�\0w�^y<u.�,�Kz��\���`�q���\�\0z\�x\�~tc��?*�����qo��LȄΣ��ۺ��^-�\���g��2K�1,`o�B�\�~4\��\����\�{݋T��\�\�Gr;gֹ�\nG�ǯ\�\�]߽\�o&me,paʜw\\~��k�\�V �t\�\Z\�\��xl� \�H\�\���M\�z�\�([8\nq\�^ci/������,�3E<#�0p7c޳� �f��k\�\�\�.�+]\�F�PH(W\�q@�@�\���Ey\��&�i�I�17��UF\�Σ�^�\�\'\�$���q~b��q\�잴�E�ϵ\0-���l�8\�\�\�$�ۦ�Dۏ\�*w`��@OAPX�\�n�_$\�\�@�\�kW��\�Z\�\�B�\��uQE\0��O\�{\�V��#L�``U]V�O\�7-p\�h��l(��Qկ����q\�,\�86\�Z_\�\�\�	��\�nd��8��\0�M\�o&�ZN\� $E��x���ߏ�\�o�v��\�h��,\�\�w�\�h�\�\�/�0>j�\rB\�O}j\�1�8�\"``QE\0Sӵ[\�\rVy.��ȍ�>ZK�Z�=J�nK3\�F�����.]jq��O�Y�A$yt��5\r��\�r\�vw�\�[�*#a��Q@-\�\�m|\r\�\�)I\"-\�PpI���ɢEs�\�\�\�ë�Q@��\��t�~q�:Ÿ&3��e�_K�jӽ\�aϖ\�-PO�_\'�t˥�a4\�o|��\�ji\�U��F�	��\0[MB\�MkW��c)�\�\�+�ߟ\�y���B˴I��f�(\�\�{�>\�\�y��85L��\�x\�K3}�\�ϗ��\�E\0k\�\�\�\r�#\\nf-\�rjࢊ\0Z(��\n(��\n(��\n(���<Iu=�\�\�\�Cy@m�\�P$\�.��b�7\�\�-\�<f��\�\�$\Z\��\���-Pw\�\�Ǆ#�-���/���j�R��X\�\�I\�G:\"\�|\�Q@�\�.\�\�\Z��L\��\�&��ڵ��gR�k�3D\�#\�|�Q@�\�/b\�t\�\�ᄲ��l��>�t<_\r�����\�S\�(?R��\�YY\'fg\�-T�W�_�\�o�v��\�P\�\�J�)�EI\���o\�F�w\�K��F�����y\�(�,5k\�|;�\\�\�4\�\�Dm��\�7n\�:}��m�\�YV\�`9�Ɗ(VK��\�KQ1�-̘\'_M\�\�&�֖Iم�>P��x��\0����\0�!�{���A�fq���jW�\�h�\�q�4\0>n(��,C}t\�)��3E�L�\�\��k\�t\r^\�K�i`r#b\�E\0��R�/i�	p\�4��5j\��\�?\�Z�\� �2遃E�cqy����C��\�\�(��(��(��(��(��\�縢�\0\����\�5��f)L`�\0\rU\Z��\0�!\�^}��\�%\�8\�P�CR��]G;(�o\�Ᾱo\�\���H�*``QE\0P�կ\�\�5Y\�ጐ��\�\�6�\0V��\�\�u\�\\�\�,ʮ\��(��w�Q��\�\�fa��Lj-J�]OY�\�b�b-PH��@�>K\�r\�h\���U�OT��\�DX\�V௚\05P�\�$�3 !!01��c�\�K�k�\� ��\�\�(��+����^\�K\�=\�\�*>�\'�jޯq-ƻg�L\�\�a\�\�\��{\�E\0?K��+�F\����x�0\�*�Z��x>k\�r\�\�d >@\�P��N�/\�_.\�\�Ǜ���\�\�\�\�1k?9�\� \�\�\�c4Q@,�K\�lu�\�@O�p>Z�}Z�|-av�,\'��w�\���\0�u�]����U��2�]09�\�\�7rkz�3\�Bc\\��(=2yuM�뙉�\�\�g�Ӣ��U\0`\n(��\�PK\n\0\0\0\0\0\0\0!\0��\�i�\0\0�\0\0\0\0\0word/media/image3.gifGIF89a�\0�\0\0\0\0\0������\0\0\0!�\0\0,\0\0\0\0�\0\0����\�\�c�ڋ�޼��\�Hr҉J\�ʶ\�\�@J\��-\��\���<\��!�L*Qƥ�\�|J�T[�\n�b�ܭ�\��\�\�/9wN�}\�u�\�˅s��?\��=��\�\�%X\�Dh����X\�\�\�\'\�Fiy�y��\�	�v!���VW\�G1�JS:���z)\�0Dˤ`\�z�ԋ�\�\�ĪXIW\�K���\�\\\�me\���c1c�vҫ�\�\�9�F���}\�L��N\�Kl._�n�ޓ?ٕN��\r�[\�\n\�fώ*x�\�\r\Z�L��w\�Ϋh\�b=n�QBe�ȍ��S�\Z��\'r�\�{ W�\��Ȑ&!����̜U\�8&��#\�\�#U\�@�:\�T巘c��,w�)Q�Z\'�)�\�L7�����붓\�\�re[T�Ze6oJ��\�\�֙bQ\�\�\�r\�8g�nx4n_4z�]\�إ`Ƣ\�\�ja:�=�\�\�X��ۄ\�zvKC\���aT�Y3\�K	��\��쪖\��\�-��j���g5\��\�\�\�\�\��ys愥[>����\�v�z\�ｵ�1O�5�,�\�C\\�\�=��\�嗗߾���\�\��\�\�a2H�2�߁d������נ�q]\'! �V!]fXM�V�\�W�(\�C$�� �(�Hޅ+~\�⋁�(�\Z.�Rc4\�\�<\�\�\�,\�(\�~G�]E0Y$�A6Y�:=\�0P:	E�Zn\�e�^r)�W0B\�h�p�]f�S\�\�暈�I�\�Idp�)\'&t2bg8-�\�q0�\�\�\"��1V����6\�\'R�����Ye��(˧�P�&�S���J��O^\�wobE��j\�Y\�\�J\�a�\�zd���\�\"��!��\Z�ݲ�:챭\�(-�\�2�e�\�n\�-\�V���\�	\�̖{\�\�`�n-߶�\�qor\�\�{��\�ҋ��\�9\� ��\�\�\�r�����\�p�6�\�\���1�\�B웥+��\�Y|��\�1\�Qv\�\��[��(�;�\�:�l��/? r\�,7\�m\�\�ތ�\�:34\�E�\'�\�;=3\�)j<2\�NK=u|\�lt\�Ljݣ\�	�˵�a\�x�\��,\� B=4\�j\��v\�+-w\�\�\�]�\�m���\�}O�3\�n�\�(\�O>7߆��8\�Q\�=��>ONy\��_�\'N�\�\�֌ܧ���w\�\��n�\�Is�\�߬z\�\�.���\�G\��鰻�8ּ#\�\�\�\���\������\��\�\��\�\�o6\�VWO3�޴\�\�\���\�C����[o\�\�\�wμ�\�O��˾v�A���%�/>��=�\�YaZw�&G���SY���u��� �c�\n\ngE\0\�Nx\�D�\�\�$�\Z�\�<8�\nEO�T�B���0Ԏ�HX\�\Z�Ѕ+\�a\�e\�qk6�!s�C�q9F4\�\�S³�=da��\��\�.KZ� z�E&v���\nc.�(Cahb��;	��$\�G~�B+8�9RQ�m�\��\�>\�+�i�(\�A\�o�<\�\"Ip<=r�iU#/�H�+��c\�?Fy\��d#PJBv\�=!L�)��\�Kzꕣġ+�KZ���\�ce5�\�S\��{��~	LQ*r��<!\'-cF�\�R��Ğ3�M4޲�ˬ\�.�Y>\�1�Ϥ�\nX�$��Rx\�$�\��^!s�\�\��r�N�\�2{^@ě�)���}\�4ء�)Y���\�\����<�����g�.J��\�Ob3h���P��딓��6\Z\�MԢ\�$���Ё���0\�\�\"�БJј\�shN)�҅���\�H=�Sk�S�@9\�W�\�Sr�:��W�J\�n�3\�N)\�Ύ�1�=*TQ:��nq���G\�I�Zզ��$F�*V�\"�SO�)=��\�@>h�@]�]=�U��\�a�kZ5�$��\n��}�`ȹ�\"4��̬^3\�Q\�O���Ҭ~JZ�~R��\�TYeY������)A�\nVڞ���ŭ2��>\�5��a�acC�y&��K�#W���\rʔ�����;�%�ӶCe\�t�\�ӝ�!w\�M\�o�J\���I�.q-�\�\�N�\�o(\�Ѡ\�ַ\�oy��W֦7���,w��͖���\�\r/`�{P��B��Up�\�\������\�\��ߊz��\�[0\'8����\�qkF\�\�\�W�L프?\\\�pVқ��q`\�\�\�0�\�ֱ��^L��\��-e{�c�\�P0��|W\'7\�띱�\\\���xð\�j��\��^y\�<n\�\\�Z\n�\�\�_\�p�\�\�8\�\�`>\�4�|��vy\�?\\s�EKjR\�?/�\�h\�\�}|~9\rݷ|�W����\�4-\�6��\�j��7a\�?Z\�-\����7S[\�ү��\�d_�tZ\�\�5pu]\�>�\�ׅu�\�iVϙ����}\�jZC�\�\�V��E\�\�HKzqĖ\�8\Z\n\�\�\�\rώ��\�-n@3�ڰ�b�эa,��\�7�\�M\���\�f��\�]\�7�\�̎c��d��ZH�.���m�|�����9q�!\\}\�~Q\���\�H\�G\�-�x\�c|rO�-\�\�f��M\��\�\�Ӂ�y�m�\�\��\�;\�y\�{��f�+�\�Bz\�+M�]\�\�N:\�!�t�;=ꕥ�\�)m��.UV�yכ^�X\���е�6R���QG{ڷ�F�R\�\�\�\�\�|v���vg:\�\�\�s�\��a�Xx�\�}�l\�f\��\ZP$^�Ǡ\�+?�j\�虧\�?\�\�\�U\��\�\�\�\�Z�\�\��\'�Z�������\�M�\�\���\�r\�e\�{\�\���_1�t\�\�\�֋1|\nv\�Rt\�\'�\�7�\�_u�1�\"�\�<:�\�\�[\�Lȿ\�\�Ӗ1�t�Z@\�P���\\�J\�\�U\�\�V���e�.�ﰿ~\�TY�_��\r\�7v<\�p\0(~�\��\�g\�~�r\n�d{��\�\�Zz\�[CV��QZ�n�\�\�	hc�wQ$�[S�{��>\�W/aZ\��S�S=�|Qu|4X����w�.\�W{\�\�g~B��� O\����F^�\�0�f6N@(N8׀4��0\�@^H|�\'�g8�i8{�ǁc�y\�g�m�:B�6|v��yȆn��o��\�r�<2�:��)�\�R�:��A��tx�\0z�(�\�Φw��q�x\'��oJǉ��e\�7w�xq���\�\�w�Ȋ�\�\��u�Xo�\�!�\�kbg�鶋����������(��Hv�\�8\�\�,\��h\�Ȍ��\�xj�(����\�h�Έ�W�t\��l����C�\�H�P\0\0;PK\n\0\0\0\0\0\0\0!\0b<�;�\0\0�\0\0\0\0\0word/media/image2.gifGIF89aA]�\0\0\0\0\0������\0\0\0!�\0\0,\0\0\0\0A]\0����\�\����ڋ�޼��\�H�扦\�ʶ\�\��L\���\��\���\n�Ģ�L*�̦�	�J�Ԫ��\�j�ܮ��\�\���N�\�\��\r�\�\�����\�\�߀��(8HXhx����H�\��\�\0�!9iy�S�9��\��\�	\� :jz:R�z��\��ZѺ*[k�@�\0\�ы�k�\�1|k�ZL\�\�i \��,�� M|l}M��\�\0���-Ny]~;�-..\�^\�\�\\����\�\�\���\�\�\�\�^=\r\�\�\�Sp�&}ʹգ�P��|\� .�q ���\�bHx0䜄\���T\�q�G�\r��L�r\�K�\�D\��D\�a\'y4aN㘎\�/�0UV\�\��țL\�\�\��gF����Jt�Й@?6������\�\r�(p^Y���P\�6�]ZX\n6o�z�\���\�/��W!l�\�\�O\�q\�8r\�r(K�<\�2͘;�\�\��\�\�7D�1M:u�c�U�f�(�\�ٴk\�\��:��ֺ{�\�\�;xg\�3&n<�_\�ʛ7e\�<zH\�ҫc��\�9�\�\�]m\�~\���\�1�/�>l���\r�����6ѿp��\����o\rn\0X��8�].\�X>�\�yN8\�m^�a��P��]xȡH \"{#jqb����bz)b�b�\�HA�8Hb\n\�\"cy\�\�D�\�\�uB61�X F��/L�`$�\��\�Z<ɥ\�I\�\�O[\\�VG\�ܣ\�F\�H\��?\�\�\�2d&��V@\ruUUf�)�d*�f�|���TG��cVk��QwFEV�]9\�gvj�)(K2yc\�VEU9\�Tyn�(GFzʤ�:ک��:�i�Xq\�U��Iju4\Z�e>yY!]Υ+�b\�\�N5εc���J7*\�.��\�F��\�NkɵPh��z3v\��${�X\�*��`\��e\�ƥº�\�p\�ągZ��g��f	]]K\�f>Y�o\�*\�T�R\�C���T��\�K��	۫�tVē�)9�O�\Z�\�\�sִqo�\�YgŞ:��\�v>\Zpͭ\"\��k\�\�̲�,�ʌ�jr:<��\�GgqY֕��V�^̯\��Z\�V\�L\��s�u���f^��X\�>K�vjdG\�v\�\�\�M\�\�K\�M7\ZxO��h\Z�\rx\���\�ބ\�j�\�&�8��7�\�\�\�(�\�*�Vny��gN\�\�C\��\��.:���N\�\���\���\�:~�\�N\�\�wx{\�\�\�;����\r�\�s:��/�\�\�/\�|�\�w�<\��?9�\�F����h�8�}a/�\�\�g\���Gx���F�?��E��t\�?��D\���������\�?�g=`\r\�c\"��\n$�~h��G���\�s�\nz\�-\��	����Ș�LHBؠ\�G+L�\n�W\�=o�4��l�d\�\�p�-��`�\�M7B�[��\�2$\nC�`cb��\�\"*!�P��>���0HKDA�&�E\�Hq�^�ȼ\�\�j���lܢ\�\��\��1�l\�\�\�q���uD= /@P\"E�����Q�k\�R�b\�+�̏\"\�c!�qȧ�\�J��G#s�\n�k �d\��\'�\�\"��\�3��EfE�I�\�\�J������͂&�L���Y�\�\Z�\�GOb�k�\Z�KJ�J��db�c.Oi���\�cV3I�Pf���\n�J�$2\�y4T%M�J#\�0a�%w��פ\'-#�Τ�2���\'5�v\�*겖A\�//�Λ��U\�\�%:U\�\�^F��\'�Y8�I\�y\��\� �\'����)K\�\"5�����<�G��R��Id�\�\�G�R�h�\�\�h*Z7�n4��$jK�ST+BԨ>u[@\�&TLbq�\�z\�N�\Z�-���\�*S}\�F\�ю:X\�Rz�E�Q�\��Y\�\�Te��ll��[\�\n׳\n	�k\�+\�2�W�Ƶ�l��yӑ\Z����/I�/c͒b�\�)��*W���$�f�\�\�ɢ�bezS[$k\�I\nKj��*�\'W\Z�d�L�DZ\�}!eg�Z��vټ\��\r\�\�l���t�R���\r&�\n\�ۂ�3�Pͣ2��\�n�\�*\�}dҘ��օR&\�Z�+\\�\��c�p,+��\�9\�e�ڬ(\�vI^�M\�u�ja֩��N%�\�R\�iZ*�f\�/a�\�V\0c�4K.;�y\�YI��bp\�\�\�\��]���؂�i\�W\�7��\��8�\�߁r���-񪢩`��\��%��\�;UI/�iby�\�\�n.&Ed�$	\�N�wʌemk*�\"_\�\�2�r{�\�\�&��v�\�.ӥ\r�{��j�\�\�Z��\���su�+c<�Y\��\�\�\�\���YЂ$4�R\r�\�;G���n4�\�\�HK\�B2\�h\�K[0Ӛ^\��:\�@N�\�!NC��u\�3��p�5lZ\�\�\�:\�\�\�Ϫ�uk2\�zY�N�_��6�\�.� z�M\�b\�H�Lv%�\��e;�\�J`����\n;�\�愶��\�n��\�\�����\�\�/��\�C�\�&\roGg\"\��\�!�X���0����\�\�|\�d\�\�\�w�\�\"�P\�\�fG��9\���0q:kw\�57nq�/�\�\�\n:~D�V\�ox��R�ʷ��y3S��\�,G�9̝�Z�˼L-�\�\Z\rd#\�Dӱn5�G�\�J�l#�b\�\�X�>�b(\�iޑƷ�v�b\�\���wT.\��I$\�޲k�\��\�\�H\�2\�\�*\�g�Y\�P\�}��\��\����\�\�\�\�\�%j�X�C2\�w\�xC^\�|\�:\�;\�B{\��jp�y�,0w%Y\�o\�7\r��\�^f�uM�d13\�OW{}D�{�\����n�?���_x�]>��W��^ٚem�Y�K����\�r}J8\�\�\�\�\��r��\�Ay\�\�?V�/t��n?�_\��Ћm�f�/�si��\�1AQg	\'��WR�tX5�_�\'w�5f\�\�g�\'z�\�L tO�\roM\�f�nw}�4VcG#No�P�%`�(�b�\�y�\�3�����wG�C�c�\�M��~�w]Qfb=� \�I�\'4\�en��:a^(��\'h\�N���\�d�E8SV��\�w�\��b\���/x�?\�x\�z*v�дa`\�y�7���\\�xH�kb�Ng[y()\�\�+�r�J\�Y[�d$5&�eUg�.\�G������\�s\n\�M\�d�\�zn\�{�G�ɧ��h|\�@~Q��\�6�\�\�u\���\�\�|�\�{���\�|�������\�x�&�44o\�h���;��\"\�FgČه;Ϙg\�&�\0X;\�h�Έ��x�\�x����-�0\�\�؍嘅�����\�h�\�莼0l\r�l�(U\�\�B\�f�^�v����ȏu�.���W��؏\0ym\�&�޸�\�֐�\�1�\�x�\�V�vw��s��<\�\�!�!�w|��\"���ȋ>���h��ؒK\�p,\�.9|(�#3_Y\�m\�Gj�Hm\��V�Г�\�\Z\�8DOE�`3���f�{hJ�`*j$\ZHiDǴ�%�~\\\�EW	�2��\�W���8	Qƅ5Pax!cU�e����\�el9Z\����%fSk�XH\�\�^8�t�$ZL\'\�H��$��G\'+��w8��\�,�&�EC2��sT\�zxH���s��_\�\Z�M�9�\�\����?Ɣ0�\�U���l\�\'O7��S�O��u\���sI�&\�a�h�҅���i\�yc��b�y��{�yrA��\��H�\�v�h,�8�����\�e<,�HR�\�2���������\���8�z؞\��y����\�6�2��ց�\�\����ʟ�	{\n��)�5�\")���j��Q<\�S��\�ɡ�ؠ\n��\"�#Z�%��4��,\�+JW*\�i�1\�3J�\��7*�0��\�e�=ڔ?\n�^Y�C*dEj����I\Z�<ʤ�G�OJ�-*�]I�UʔB��\Z*bX:�	\�e�[Z�\�R�@z���=:�I�C��f*md��n��4Z�\�r�x���ҧ1z�\�R��zʥRr�\���ʨ�ꨏ\n��*��J��j��`e:��旜��\Z�5v�.k���\�\�1jX�\nY���Z�6\����x�\�$I,\�C~d�\�ey٪�]H�\nZ�^�\n�.(MM3�:qO�X�T������ă\�B�X�\�\�\Z�\�}x\n��j�B0��j�犮骮\�ʮ\�Z\0\0;PK\n\0\0\0\0\0\0\0!\0�s\�\�\r\0\0\�\r\0\0\0\0\0word/media/image1.gifGIF89aA�\0�\0\0\0\0\0������\0\0\0!�\0\0,\0\0\0\0A�\0\0����\�\����ڋ�޼��\�H�扦\�ʶ\�\��L\���\��\���\n�Ģ�L*�̦�	�J�Ԫ��\�j�ܮ��\�\���N�\�\��\r�\�\�����\�\����(8HXhx����ǡ\��)9)\�\���i����\�\�i�6\Z*Qj�j\n�zֺ\��j)�C;v[k��ǫK\���:\\W��r���\�猬}5�W\�v�\��\�}K\�\'���Pn\�\nX�nr�}�h�\�\���߀.�;��P\��)�7�\�\'ig�;�l8O��7g���&\�ǰa�A\01t4�\rb\�X�aBYP\���ލۅ�M�7K�\�Y�g\�q\�\\�\�1\Z���8u�	�\�ƅR}ڬzO�=w�\�U�z�\�գb\�Z%\nU\�ؗF\�)�Ah(M�Xբ\�\��^�<\�i�97-ε%�\�=<�\�ޱ�	\'6�\�C\�?��j�Y\�u��5\\Y�\�ΗA7ފue]ǁua�Ў�\�\�i\�1.�\��\�\�Z5Z��[4jùS����_d�z�MO\�s��>I[�oԬ�)S�����\�\�U�\�\�سO\�\Z.�Lݽ{j^�g7��3��l\�ul\rؗ@�u\�_	*\�r�y��GH��]Xxa��	E|�ԇ\�2\0FW\nO�Xt\�g!j�\"�Y���iч\�6\��\\B�T�>�X	�@Id����\\��%\�b}S4\�$3\�\�F�N�r�C\�dy�#m\�%#P�f�֘\�C��\�m��fq��&�!ed\':y�0\'{\�ѧH��0蟶zQ����(�\� ���NJi��RҨ�\ng��2h�~Jj�\�i��fq\�\r��\n+�\��j��>1+\\�\�\�k��k�\�\"񫖝�,\��\�Pk�\���\�\�>K-���m��f�L�\�~�k�ӂK.\�b[�\�\�-\�p.�\�\�g��ʋ/�r\�O��&�\�d��K����n�\n7r�{�.1d\r�q\�Z 	�ZL��+ḻ�|\\Jr� ��r\�q\�\�\�#�,\n˵<\n��\�\'3�\�\�<3�:�Q��9\�\'��\r�%�4��KШ�s�M���,���1]\�\\\�Ҁ\Z6=\�\�UVLK��f0Ү�(㌈�\�t�\�\�\�\��\� ��\�V\�/S�4Hy���p\�\�=x�`#��}J,#/�9��҂��YQ�g����\�x9��T���\�b\0���fı\�\�fg�\�Ԗ�\�h�vֆ\'��\�z�L|�4^\�\��[\�wum\�\�w҄�\�)��j�\�\��勫Ӹ\�VMO\�\�9�}r\�+\��\�\�n���6��%>S\�W�=\�a5\��\�9�]O|\�\�\�򢧤\�g���,�V�©�6\�`v\"\�@̹/��[ ^̆��Ug;�+O\�R\�5Ι��v�؂�ؑd<�á]:\�-�J��\�h�4�Վ#R�\nl\0W��1mM� \r�&��I�#��P����%�h�+��&ʅˌ\�B���\���g�\"���GE\��\"\�3\�f\�@o��Ir\�T���\"\�L�bu�\�Juȶ�Q9���}U\�FE�Pi�\"��\�\�i�U̢&?66ٕg7�\�\�\�2\�ɑ�\\\�&�w�O��Y��Ȭ\��HR\�2x!\�%yy�\�͒D@�_�j�\��ϰ$\r\�\�%an�\�R&Z�\�I\�2m���f¿9��xBW�rG\�o\�*\n#��:��Cb�����6I\�˔\�\�ۙ\�\�)���y�{%5dN�1�s\�<c�\"�O\���D�`8�?�j�\�e\'\���6^� �\�	JAEʎ�\�\�\�H!\ZH�~q?\��[D\�G��\�\�U\��v\�\�+R�~D,-\n���ԍ�Pc\"\�\�	\�ą;\�\�\��.��Ї��*	�(�\�XH�_+���/8R?\�j#\�\�,�&������d�;\n\�Pfe\�%�4X\�`��~݃\�+�ҩ�p���Y����\�:�$;\�n��\��uVD9Ж����,��\�R��\�h\�4�\�\�\�#��\�o)5F��\�8<\'�zӔ��\��բk\�H\�\�0Ԧq0�֢\�z-N^\�#\�\�\�Q�\�l�ڥ\�5�\�|)\�\0*+\�\�*�\�U\�z��P\�Tt��$\\|\�GBIӞߌgC�\Z\����?$�j\��ǁ\����i{�\���1���@z�\�O�fЮ �6\�\��\�O̦?+�\�g\�\".��[B\�\�-ñ\�h?\�7p~Nn\�ĭR\�\�\�x�6\�[�W�\��S�墻\��\��Df�3\����\�C�{\�\���!V&�w��i�y\�(��>�\Zg #�\�2.񅉕G\�e�����?Y\�/\�TG\�\�p1%Gߪ6c��+�\nlܣn��e}\�Y\Z\� s\���\'�}!eXL�i��<P\r?�\�O\�q#Y=�J\�J6�i�*T5�b\���\�\������k.�\�\�Yx�\�Ȧvv��\�\�&\Z\�Ǿv���\�g;�\������\�_g��\�v촻\�mf{\�ܷ\�6�\�\r\�qc[\�\�V\�o��\���\��m�U\�Ts�\�Ɔ�!�}-u\�6\��X�~J�+�\��Ƴ\���g\�\�\�%A��X�\�J\'�\�\�1l��\���x)�q~W!��J9:_�ϫ\�\�\�9m��spg7�ym+ҁN\�\'9=�z��\�%u9U}��E9\�\�*�\�6�y�z��+��]�a2;�i~Y��R\�^r{r�.���\�u�z5w\���\�\�\�rd\�q�,\��x_&\�mI�}+V\��_�3�^r����\'F7\�e\Zl26�菏�k\�y\�\�:��\'xeW�F\���bӬu\�݆p~���8S\�]�\��>���\��#\�;�\���߭[����\��3�|H]7����YVM:f\�ꓥ\\\�\�q�φ�Z��\ZTZ+�/\�7�\� ��A}J����=�\'�L}\�\"}S\�e\�s\�\�P��{\�z\�\�L@qjԗB�d)�e\��{��\\�R*\�{�&tχf�u~%�~�1��z�\'{0w|}�E\�4V\�cy,(V\�G|��5RI7�~k�A�/\�\�?E����u�}���i\�Jp\��ǂH(�x,Z��H&fdfM3h�I��a�=��_�V�&(p��0bHho(b$؅�pt{R+�W~p6U\r�v}�<�s��6D1�i��}|�z�F{O3� �E��t�s\�^�\�E�2��&��7s��y�����Qs��>�y\�U��Ȋ�r�\�rG����������hut�����Bs�eg��7�\�G�\�\�zĂ���6ht\�hu\�\�g\�苺X�&؍�X���e0x�\�H�=\�søNrҌ�G��,)��1X��\�ڸ6��AZ�g׏���\�X9��P\�\�&��^瘐\0)X��<腻����&j�?	(R^\�y\�9ZOH��\\H���tT�u)X��D�\�D�p2u\��z\�D;ɓ]��-يK�v��w	�J�W^I���w%Yl\Z	j�fj�Ȏ/(�S	���{k\\ԕ�Y\�zi�|aP8KT9�48zwSR���|��rVi0Җ���E��-\Z�b��\�s2�ɘ/ɗ�sh\"��r��q7DVB�h�`��9�y��i��8�`)����Iy\�x�iqzi�+8���Dwy��}j8��%��ɏ��.�v\nK9�[(��\'z��&��Fl_�8n\�Q(����\�\�O\�$�逢\�5�\�\�Fgjՙ\�\�^.%df��\�v\�\�_+�Q �B���\r۲�\���7&܉<\�\�cyXhTQ\�W�J��\�d�ן\�\�	^\�Uc\�\�=�􇓂�\���\�X:�\nT��Q��\\\�i���h�ɂA�\�>9D����&Z�M�*}$%/j�E�\�\�B<d�\n�9��_x�_\�@��9鉺	�N��v�\�Y.#\�\�g�䂥噚\�ҥU\�\�Ҙx��e��e2k\�,\0\0;PK\n\0\0\0\0\0\0\0!\0ӎа}&\0\0}&\0\0\0\0\0word/media/image5.jpeg�\��\�\0JFIF\0mm\0\0�\�\0C\0	\Z!\Z\"$\"$�\�\0C��\0\0\�\0\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	�\�\0R\0\0		\0\0\0!1�\"7AW��\�#28QVXaqtuv\�\�RSU���$3456Bw��	r��Cs���\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0?\0\�t�(�(#7�\�\�\�g\�\�	)$�V\�肊���s�\0�c	��k��A\�aZJ\�ʲL�/(\�P\\0�@�� !��<C\\-t\r�*�l���:N��5��@\�\�\�0�NP\�\Z�jC9\�CR瞃�&[�mh��jW\�\�Ăꮒ\�T\�>\r��G\0&\0ɔ�PhL�Fx\�\�\�\��]\�\�U9#�2 uSm.x��S�׷�\�8\�Л{\�%��s�\n�*e�\�b��2(2a�8\0�܍p�\�rl�\���vG�m\�hƶ1Jee�n\"\"B��Á<0\"�\�uFZ�[,��ܹz�c�d\�Yåp&\�B�R����@\"!Q��f\�i3 �2y�\�c7�N\Z\0<Å$L@	NSpSd<k�\�6ϣ\�{6�B-\�Qz\��\��H�S \�L8�i��&\�q\�F5JRr�\0�\��V\�\�x�Fo�ft]�T$e�\nw6�@\r���\�4�\�\�\" P��q�$���l\�n]ʊB�\��9r�tL\\t�]�\�M�nͦ\��<\�\��x\�5���g�s빹fn9\�\�\�T�:$M�d%�v�\�P\�8\n\�+&��i��\�;b\�d�\"U�\�a��+dͼ9ӀA`�\�\�\�\�z(-\�ꌵY6^@��.�plɓDEg���\�\�8(��\0\02\"泯8\��\��c)*�w1�HK3\�b��1LA�7\�ĢƸ\Z�\��\�̾\�=�c��_7f���i�H0\�}� \0�rm�\0\Z�\��Wͻ&H�NhmƮ#\�\�ʶQ�\�T\�\�	 p*�@D<8\�&��\�Md�L\"�2c\�`0��<�H\�2�\�\�\��k8\�Z�\�˺Jݴd\ZYog��\�c\�j��!\�쵁���D�1@�0��m��׆��\�ѻ.F�x\�U4%��u�gJ \�4��\�\�8D\�G��m�\�n\�\r�\rw\\qV�)\�\�P�\�H�I1QU�9��I22c�D\0\nQo]XDK�f\��s��\�H4)V]�~\�\�m1�}� ]\�\r��\�_\�\�ɯnM\�G�*kvu��\�(\n��R*�������.x\��q�ޢܲW��v\�\�v�\�\�\�|z\�=f��\�Ʉ۠���a\�\��\�x���\',�8�dRj\��\'��󊈈�`��\�G\�8�8	\�.�ȁs\�\�\�Y\�R,E\�M��\�wM\�=���`\�\�t��c�`;�A10��u���l\�\�H\�ܨ\�[r*^^��I��8��r��n\�\�\�&	�2y\�\�\�;�4\�)J)J)J\nJ{�X�\�\�F^R6��\�⬣�H*ew\"d�i\�\n\�lOx	JR��\Z�KLi�c��9\�5�g]ڧc>+���HnM���\�\\�˯a����Z�q]A\n\�TM�\�AyP�d�%�\rZ�\Z.%�X�\��($ �\0���1�ϥ�)mO��:vϥ�)mO��:Ք�\�}�\�o\�[S���N��\�o\�[S���N�e(2�l�[�\��\0(�\0��l�[�\��\0(�\0��YJ�\�>����?\�?\�\�\�>����?\�?\�\�VR�)�ϥ�)mO��:�\��L]\��ƿj�1��i�\�\�o\�0s(�\��Ʃ˚=��\�>˔�A6F�S|\�i4\�i�(s\�%�D��v�\�Y\���\�T=@nS\���*�T\�)\�\�\�Gj�z��̙��m�\����\�RrV��\�?�pf\�\��Er��Eu\�DN8�!�Ԏȳ�\�6�$[v�(D\�0t�\�\�1��L4�-(�R\�~sO�\�\�J>T�ߜ\���j.aԓ\�\ns���HPe\�ش�\�K}�\�?\�S�-(�R\�~sO�ը��RO$)\�#��y!A�{bҏ�-�\�4�\0-^H\��3\�\�b�m\�.\�}�$qSq1\��7H�kV����HS�G�$�B�.�ť*[\�\�i�Z��iGʖ����E\�#��y!Naԓ\�\n�\��|�o�9��\�2�\�$n�\�\�\�\\�\�)%R\�UN��Ԓ?H��@?���^\�?�\'�O\�c+OTl;\�	����,�P(�PY%��1��\��\�}�%n\�h��\�ܶ��GI�\�)N�\�\�9\0�\�*��,\�]�9\�#�]�C\�\�O 4��X�}+�\0Q\Z�\0\�+Z\�%�\�gҿ������\�[z�z\\r\�*��\�lKh\'\�\����v�\"�2\�\�\�EM��2\0�\�d\�2\�ӫzrE\�g�E9 )dڶ|�H?(\��Q\06J\0Q\�7��\��x�\�o$g��M�ɤ\"pJ��\�Q	��� \�E\r�Â\�\�\n��xL��3�\�j\�&滑@e��F}\�4?\Z�A�\�¨�\�\�.\�t.\�\r\�!\�	N\�&P�p�t\�\�$\�I\�\�\��dK/�Ev&���q�x��ѻ�\�x\�~7$��%%gAI%\n	\���\�\�*\�r��!L;@2S	�@\�Ӛ�d�\�4����\�{:y\�Y�DDN�\�\"�\�c�Q9�0\�ݢ�]6�l�\�\�\�q \�E��Ocܙ���&LLQ�p <C!Ƹ��S�) Ȏ\�g\�7$j�@#\�C�\�p 9W\':�\"#�D\�\��\Z[�b�hu9\�e\�MI%\�.\�\��\�\�	�c\�1�����	�\0*sgN��\�3\��=K�!.ӗ� !ѐ�\��\\�v\n\�I\�d��A\�W&MdU\\\�v��M�@J<>n]�X\�\�m\�Y�ݎ\�0\"|\�P\�\��D\��F�\�UF�w�\��JuկUF�w�\��Ju\�9Y����\�w^B�z�9Y����\�w^B�zW�\�nۆ󟅷&\ZB#D�V`\�ΗU>s�ȆԀ�ú\�\�1VD\�k\ZvEIW�`\�t\n\�\�\�>Q�e\"Q0�\�=\�7\�p\�h+[���Q�����O\�ƭN\�)�ϑ|��ʠ�W.�1\�hD�/��\�\�CN\�i��+\�iE��o%)J)`�t!�x�jqm\��\�\�Շf\rA\�LɔGaH�@�e)z\n\0B�p�D��[r3Kȯ\�$\�\��`G�+7K�n\�H\���hn�^��f��-8�F�$\�ӵ\�*�<d�@R*d\�\'1�/\�@\�:+�{�z\�\�\"ķD\�I.�SFmD;\r3�\�\0\�\r�\�In�^6\��xw���PTh�\�\���m0x8@~�\�Mm�KH��B\�\'N\�H�s\�Q\\��\�a0��9\�\\w;h9.��)6˿J!ɢ�)M�\�$Rr�\�&\�Sp��\0D#SK\�ew[�\�2MD�eD\�9�m�L\�S`\�)��\�\rxU�-�E�ݲ̈g��H\�2gl�i\"#��\�@�@C�\�nފm	�\�9P�1�e�eU9�a1�cDDDDG\�\n�U<�?�t\�\�\�/�\\U�UO(O\�0��\����n�:����JR�N���ǩ��\�ϥ\�#_�%k]\�D�=\��W��5�\0�V�\���\�t���;e\�E\�@\�\"�US\�U:c�(d\�;2\0�	gێ\�F\��\\D\�yd�\�u9�M�\�\�\�L�QQ4̙�\�9�q\�nһ\�NYj].\Z9�j�\�ɼ�(� ���N��\�b\"\n\�[���\�e!#i:���ng-\�TtC�)�9�3�p\�@\��\�\��\�A\�+vD?��\�Q��9Ĕ�5�\�<\�N�\�!��JQU6�`\0\�\0\�\�@xN41�ʹ͒+��\��\"�\�)�,b�\�� n�\�jZ�f���\'PQ$\�C���\�1\r\�\�\0\"\\\0\��㢼,5F\�uq�#\��S����ݹ7]��\0 \�t]�ІMæ�wJ���hs��i\�\ns�a��%`�N Qۜ@:k�5:�^Ļ+�C$a��Hr�S@�\��\�\�Q�\��4�\�ҝ@�k\�Q�\��4�\�ҝ@�V}\�\���א�^��V}\�\���א�^�JW׹�o,�[(ܱ�Nwt\'M�0\0x�4��.)뤺��1ޮ�\��\Z����#�2!�@L��`��\�֙]�\�\01V%�v\'v��v�k\�g �!M\�9�G`w	�r\�\0��q\�\\�\�NmH�&��\�[rsm��\�8��\�Ύ2TM�Ȏ�%\0W���㡢�\�^\�])8\�No�Vg\�\"�<������d\07\0d3S�@P��>dI{�\�\�\�~��Ut\�K�\�(��A�\�8\�i��َZ�t�\�\�QhB*�\�q@Hsl!���\�\�	r<�rͫ6q\'b��I5U�\\ᳳp�tLC2��\���\��\�h,\nTl������ŧ\Z&\�Ne�\�\�Bseܠo\�D�\�`\�C���\��p�Ux��pD\�\�.\�\�\0`�.@@C!\�4z�yBx\�ߦ_츫Z��P�\�:a�\��.(!P\��uG\�v=H��7~�Q�]�R%(!���J�\0\�F��Jֻ��d�\�>H6��M\�]r\�,\�\�\�.\��:*\n�\0;J\"a���\\,�t\�[yH��>b\���.8�z(=\�ӻj赑,K�x����\�D�F*&\�\�V:�qTJ8\�\��\�(#6���E���^\�l�g\�Wے9YE�>\0Snj8\�;���`Ŋ�Z8i�\�\�(�$���\�Slݻ\�1@x\n�iAP\�il\�t������Eڸ@�Iu�ޒNR0(eV2�\�GF�\�6�C�\�\�\r<�Y)U$\'�p�MXՖT��\"��\�@\��!\�!\�\"a�\Z�\�v���.Y�\�ۦ\�t��j�l*�O�Je��\0\�\���ou��N�\�\�mB*\�FT�\n(\�\�&Q:�+b\"CC1��\�\�\�J�@��U��iץ:�\�תz\�z\�\�\�!c\�ìWJ\�\�?��2f\�V�Ye\�!�a0�ޜ4�V}\�\���א�^�~R��S�+p3�lgOR��x��\�\�%\0���b\0\rJ����Z\�[�(>b\�b�3\�����:�\���P{Nں-�\�J^!hG�$���IΎv��\�\�\�\�S�PG\�+|\�J͘\�\�\�IE_�l۰Rޞ8\�\�Q�~˺\�\ZG\�\�n\�P�#O��g�8ȗ<\�s�L$� `&L\��ՍJ\nj;Hf\�t����2m\�hTUQ\�Vl\�U9ńp|		���\�\�\�=��B|��\�T}5\nxÝ<\�h\�QS��7d\�((\�96܈��Y4��HN��,�z�\�r�\��\�G\nWET�\�\�D�+��&/r>F�ڲV�7ȿ�I��N�T���hR�\n%LU9σnۻ\��\�\�@���\'���}�e�ˊ���ՙ�6�\����\�FN�vH0�E%�q\�D\�P�(\rZ�N���ǩ��\�Ӫ?k�\�D����\0�x���}��\0��]y\�W\�\�z6�[(���V/\\5LM��i(R�\�\n\��.��B}i�ZV�j\n�\�蘭y\�����\�I>.<�\�\�MV�(*�c��|\\y\�ޚ�Wn�h��mH\�2�ORc\�\�7�O�����q\�\0��]���t\�ܓ�i��)&a(HM��s(T�.E\"�.D\�\�\'\�A\��:���}\�o�I�N�\�\�2�\�g䡅C<\��\"?��5~���\�\�\�=��Ճ�:H\�֝�\���\�d\�\"�*R\�͹�/c��\�6\�\�τ�_O�^5��n��\�]����*�\�0d>�\Z\n\�\�蘭y\�����\�I>.<�\�\�MV�(*�c��|\\y\�ޚ�U�l\�qCk\�4�jco9/\r�G0�F�DF���Uur薕\\r\�\�KYQ�=Xw*�[\�zD\�ي�xՋJ\n�\�\�?�\0\�\�S\�\�?�\0\�\�U�J\n�\�\�?�\0\�\�W�[A46.-̜��ѻ6��u\�3\�HB�La�\�\0\\5��iL\�26�\Zoc\�IJ\�MaY\�ne9��7\00�`�\�\�=8xh)\�Km��R�緦��\�\�\�b\�p�\�Q)\�@\0��\��V��:h\�Ć�\0\�8���\�G\�_lodnK*BNB\�X�\\$\�#(b�\"Sx\�0n(\��_Qmi\�w%�8Ü\�*\�*�\�rd8��=\�!\�\Z\n�\�\�?�\0\�\�S\�\�?�\0\�\�U�J\n�\�\�?�\0\�\�T\�ɲ�[*<\�-X1((;�\���!\�&0�0�#R*PgHn�:����JR�N���ǩ�^E\���O�>\�J\�\�T\�\"\�{\�\'֟u�j\�R��W:\�h�\�	6m��󖪦\\�1� ��(>zid/)�+NI��eH\"W�\\\n�H�I�\"!�\�z*h\�,��\�\�d�k҃��\0\�\'⣿3%\\۟WyW[0�M\\���Ch*\�x���\�`(d~q\n\���h]:�lLK\�Ԥ��V�\�6�<\�P(��P8�\n\�r\�\�\�\�\�A�y7\�r����wT\�$��X��%\�C	97\0x2\�\�V=a>E�F�]2�\Z{+\�m�\0|�\�)UT���2�=چ\�\�\�n\�)U\�(\��\�\�Շ(\�\�G�ԈBB:!\0y\�LC\0��\\�p\�\�((\rp\�-`e��Zw��7T[si�lFEYUǘ*\�0��\0\������\���\�\�\�V~\r[��X=uw1폧wc�Ny�c;3�?M}\���\�}8e1~J��z_�j\�9\n�\Z�\�)\n\0�p#\�;�sA�;\��Qߙ��oܲ�)��2U��A��i\��j\\�\\\�\�o��#\�SM.\�(\�y�l�>\Z\�4�����t�\�Ӫ?k�\�D�!��\�\�\�z�)A%\�]\�z��\�\\\�L�.��B}i�ZV�j)J)Js$g\�W\�$f�Y��\�]\�6>�\Z�k\������\\@,T%��m\Z\�sA,D�O�@\�!�׎Ct\�6<�<��g�t\�B]�t\�A\�9ΦG\"<xp��v\�i|i��_��Y0���\�+����\��n|\�\n�!9\�\��E�I�Z��gt�ŵ�\�\r=gt�ŵ�\�\ri\�\�\Z\�\�\�$j���D������@d�Cڒ\����xc\�\�ۅ��\�	~*\�z\�\�G�kO\�(�\Zz\�\�G�kO\�(�\Z�\0n�ƘO8%��\�}��\�	~*\�z\�\�G�kO\�(�\Zz\�\�G�kO\�(�\Z�\Z9j�.;\�hn\�s\�\�{1.o�\���\�c�\�\�oO7ƶ�m��ƈO8%���\�;�-�?4��i\�;�-�?4��h;��Z_\Za<\��⮻e\�r�Wn�Hᒝ3�!�t\�\'\�wJ<[Z~iG�\�4��-*\�\�Tl���u�Z>J3�c�ਙT�$A\����J`\0��4m)J)J)J\�\rߧT~\�cԉJCw\�\��\��\"R�KȻ\��	��\�iZ���\�]\�z��\�\\\�\nR�\nR�o)��ѿy\":\�UiU[\�k��o\�H���ZT�\�t��t<�n\�\�n�8t\�@�XUvcb�i�|�d8��T�\���:ۮW�#\�Kf�mÄ�P�\�\0\n�&�\�\�R���vWL�1�0N=\�MRnr����@UL\�S{q\�!\\�4�-�ƀ\�fU�[g�<���Vh�i$a8�~6$@礹��X��e\�\�\�bP|V�\�Ee�\�Mtϝ�!�D��G/��2�\�\�\�C\�\��\�v\�\�1lu�n\�j�+|��G�]\��gjK��NE\�\�O�Mt�KyHc@L�\�*n\Z�%��\�FIG���nB1\�j�\�\\�7���8{�2\�\0��?$�R9\'R-D\�&鼫�\r[�@QGE@�1\��\07�H�J�W�\�\���p{B=�Ӓ�M\�ZZ�̗4&6J\"\"U@\�C��q^\�\�\'���^G\�5\�\�\�Vv�<ѻ�\���V(D\�\nD0�(�\�@zMt\�!�s�I�zd\�-�\�\�3�|\�7\�\\w\\\�n\�\�b��[R�#\�,\�h0:\r�\\\\,\�餰7\�<)�\�\�xd;���u���L��\�~�\��Q�����)̠\0�\� \�\�x�\�u¸\�\�k}WΜ;��X��hlD��:ȟz�NqA(�l\�\�ƽs\Z\\�Ҩ>��_HK *�h\�dș\�@2e@Ɋek)��\�s�\�\�I�\�C9h\�r\�\�$]�\�\�9)�\��\�Z�\��Q��N��X��\�ED3�nc�&���\� P�\�\03Î��j�\0\�G\�U:���)J)J)J\�\rߧT~\�cԉJCw\�\��\��\"R�KȻ\��	��\�iZ���\�]\�z��\�\\\�\nR�\nR�o)��ѿy\":\�UiU[\�k��o\�H���ZT\nR�\�]qj\�RW\0\�a\�*\��1\�7P驴�ț� \�F�CTtޤM����a*U\Z�I\�y\�*�)�|\�52+�y\�\�\�i�/\Z�\�{����\r;	�c\�\�O��=!H�e9w\�)�Q(�@��@k�~\�\�\�2;h�1�8����\�\r\�\�)�Q	\�S\0�\��7�x�B�\�y�F9��\�\��c�ę����+�,\n\�=\�\�\�R��\�\'\�碦��\�Yn�4�e7M\�\�\�K�����\0|>%N\�]1x\�q�k\�;T&d\���9�~��\"��yІ$�$\�;tlc,@#��e\0��\��<栒ҹ�7g�\��r̜\�A�w�_�\�\�J8\�\�%*\�E�j���@l�T �t�\�(=�V\�W��\0J>�\�׫J�\�j�\0\�G\�U:���)J)J)J\�\rߧT~\�cԉJCw\�\��\��\"R�KȻ\��	��\�iZ���\�]\�z��\�\\\�\nR�\nR�o)��ѿy\":\�UiU]\�u\'�I \�G��c&\�4��s(9ME\� 	���\Z\"E��cyH�I<d\�0U\�0�C `\���\�q�p1�Q�q\�Ҝ�\��\�ב[\�.���\n$�\0�\0\�?\�V=( �ql\�GCI6�ڶ\�\�oz�\'\�r�\�]�9\�RL\0\0)\nJ^\\�X-Fam\�\�)�n�\�Z��\�\�DDɢS7\0\'�\�ey�\�\�Υ�\�r.�t1+,ؑ�VJ;���q\�D\� �\��;L@\�\�\�{�r�,g\�Y��\���&�6M�	�:O\\��.x�8\0n>\�\�*ޥ\Z]#�;�^v\�\�ꡐ;��./q\�d\�!E>����H(|\�,�����Jmd�3���\�U�!9�\n�	�ΘD� a.@�@DqSJP*�֯���}\�S��V�T���	]l\�ke��y�L=!8�3b�Q09�\0Gq\��\�\Zn������t�\�Ӫ?k�\�D�!��\�\�\�z�)A%\�]\�z��\�\\\�L�.��B}i�ZV�j)J)J\�\�)\�%1@J<�B��\Z����\�i\�Ac��m2\���A2\n_\�\0iR������\0n\��\0\�\��\0=b�?۷��;�\�V�(*�X�O�\�\��\�\��ז[F\�x��R�%\�ݣDN�\�\�w��Ɍ=߀�\�\�ܺo9BZmt\�\�h���\�s\�Rf��Q6�7\0(d7���p���\\=���<\\�\�\�\�\�Ggu�l΀E����p~& \�q�;¯X�O�\�\��\�\��\�\�\�\n�.*�az\�\�H=k�}R\�tLr�9�)\�\�wc>\��_R\�\�YK\�4��\\�Y<D��X�Jr2�������\0n\��\0\�\��\0=b�?۷��;�\�V�(*�X�O�\�\��\�\��Ԧ��mK�#;gf\�\�Ҋ�g�**q\�8\n�ҁJR�JR�JR�:Cw\�\��\��\"R�\��uG\�v=H����.��B}i�ZV�j�y{ޡ>���+W5���������oI4�D\�UTHw�\08\��q^\��\�`q�\0\�o�Pc�hl��\0\�c�\0�\�e�E\�($�I���(\�\0�i�\0M\�\�����m\n)J)J)J)J)J\�\rߧT~\�cԉJCw\�\��\��\"R�KȻ\��	��\�iZ���\�~^�\�\��\\�$�\�r�E^\�9�\�)\� >\Z�h�(�(�(�(Kr�\�u��Q�&�����TLT^�XTW/�L\�0`rQ\�xxp���\�Pz~��i\\���vv\�Ȏ8�\0�&D�|\0<J?1��rS\�FzL�\�C\�\�\�\�v2l\�n�\�8Dx���\0\�\�8$Յf�\�6�:$3��0�4\�Ȕ�<D\0xg\�X7���-?��ܳ,\�V6��B\�/G B���� O���P)JP)JP)JP)JP)JPgHn�:����JW\�j�FCT�.Y��fKN�\�5K\�LtZ�E\0Ãp��{iTl\���<\�ݩq.�S]\�C�LC\�0�c�C?=@YZ������~��\�\��A:R��\�B��~�(z*v�xտ|�=)@\�B��~�(z*v�xտ|�=)@\�B��~�(z*v�xտ|�=)@\�B��~�(z*v�xտ|�=)@\�B��~�(z*v�xտ|�=)A\��\�{��}K\�kٟg<Q\�h�Ý]LoP}�\�5\�\�B��~�(z*R�څ�\�V��P�T\�B��~�(z*R�څ�\�V��P�T\�B��~�(z*R�څ�\�V��P�T\�B��~�(z*R�څ�\�V��P�T\�B��~�(z*R�څ�\�V��P�U�9�\���i\rM\�\rO�T��H���y\0�JPK\�+%8欢#\"�M�i�\n\0\�x�G�G�Ҕ��\�PK\0\0\0\0\0!\0�0(��\0\0B\r\0\0\0\0\0word/settings.xml�W\�o\�6~��!\��\�X�ĸ\���\�]�v��,\�JbԲII������&�\�v{ie~\�G��D\�ç\'\�L�TȚ��)�q�ږ��\�\�j�\�!�-��H[���t5=S9���\�>�\"I�59�VF�\\M�Ju\�|.\�=eD\����\0n�`D��\�\���nVr\�UuS��;N0i�jzm4R\�X]\n.�Vi��o�uI\�\�B�\�\�`����h�z�sA���r_wҰ��\�\�ސ�mG\��rް\�ճ\�[\�\��\�%�\n\�\Z`\�^{���}߀\�q�=�#�_]G\0�\"ʺzG0r\���G\��\���F�}2D�yKj\�.\���\�\�\�v\�rA��N E�>:�WG�.\�W\�\�\�uT�pr\�\�ag:\�\0ԋo7�(P�dG����eC	���� .���6ݒC�H�Q��#�M���\�AJEŦ#%��y�o�^\�\�j\rQ�9-�k�WI�쎜�A]!�\�\�CKl�\�5�\�ՑD��zh�>\Z��C�\���\'hC�\�\�\�c\�\��\�Ӷ�\��ñ�;�\�;<��4�?8WF\�q\�\�M\�1R�^!\'Y[\�\�Ԇ \�e���\n\�\�����<�ݥ\r�\�˳��.^[�\�i\�؆��\�z�\�\\\�[�x�cߊ\�A\�\��%\�{\���;�w�/lH\�\'�\"I�֨��\�&D\�\�Z�R���}��;\r?w2+��An�\�\�u�5���Q�X��\��Y\�k�Xk���$���e\�\�5\�e\Z.\�Q\�Ple��-I\�0M�g\'Y��k�v�^`�O�zAn=UI\���kC\���.�8�\�:]c(�\r\�|�N��7�\� �\�4Ga\�Zs�c7\�V?9�\�\�6Zx}�\�/��0�0��	,ք�&�{=�̵F!��5xA�\�\�kds(8�\r�d�irx�\r\��EU-��n�usO\�\�\�;j�\Z\�/\�\\�1R�\��n@O�t�mE/�@�7Z֭����\�C�1V-4\�+\�\�V�E��KzN��6Au~\�H\�nz]\�ξl�d��\�\�VB\�I\�\r�ءմ�w{�tQ�U�T\�;<b�\�����\�;\�qq�a#�\�s�̽\�<#�.2\�\���,0�@\��g�6`�x�\�h�Z�\�M\�O��|�_��$\�=\�h:p�� �99F�	FZ\�\n~,tu\�\�\�ڎ6��~�x��1�ܽd��\"�-�0\��7�\�!��\�8nά�\�67C\�M-a�\�`R\\\�C~T��\�c\� �+@��^\�|���;�Ro9[~8K�\�\"GI�f\�\�\��?�\0\0��\0PK\0\0\0\0\0!\0nY\�ܯ\0\0?\0\0\0\0\0word/webSettings.xml\�Y]o\� }���`��5LԴRWu�\�}w{wl�����\�M����\�\�n\�C\�>�\�\��ι�\�\�ɍ�5ӆ�j\Z\�C�*Tɫ\�4�uy~����yU\�BUl\Z��	O�߿;j&\r��dֺ7M\�P*3�\�4\\Z[O�\�K&ss�jV���\�2����\��ժ>(��s\�g\\p��b\0p��\�\�AQ�9/ؙ*V�U��4QUf\�k�Ek��\�(]\�Z\��)z<��\�&�$/�2jn\�b63ꠜ;]K�{�t?��\0.x�\�`D\�s�c\�~0\�Ƭ%�	YL>-*��pH����.\�\�\��c\�.BJ~m6Ϡ��sO\�B��*\�g\�\�u.\\�Qku�q�\�vkw\�|�|\�|�\�\�Se��\�\�<NKݶ\�O\�\�:ts۾\�6\�`�v��rᘯ�\�!\�`f�y\�vf����|\�h�\�V�K.\�]M��@�c�v�x�_����K|��AD�\'~\\\�\�88\� �ďK|�I3D=�c�BHbJ�\'~\\\�!�҄ ��\�<�	H1D�U\�?\�\�JS�q����x\�\0�y\�_����-�\���r���_\�rz`\nc\�\�\�@^�\�\�I��&���\�$���\���+8�(M}�����[tS;x9\���R�&)MzM�*����e���\�O3H�S\�܍�ly֖F�A�b\�s\�M\�(S����#浓��U�\�߲s�O�j\��טX�~�\�z����\�c�6�\���\0\0\0��\0PK\0\0\0\0\0!\0��Py>\r\0\0�\0\0\0\0\0word/styles.xml\�[w۸\�\�{N���ڇD�|K|ֻǗ��i�x#�y�H\�BM*/��\�\0A	\�\�z۞}I,��#��\�\0\�\�O��$q�D����t4y�7\nh\Z���\��W\�>��� iDb�\�\�\�+\�G���\�?��|��1\�H�$<-�bu2\�\�&$\�W4+<KH!~f\�d�\�\�]ȓ)؜ŬxO���F\Z����ł����eB\�Bُ3\Z\"O�%[\�5\�\�g\�*\�!\�sq\�I\\�\�\�5fr\0@	3��E�^�n�B	�ɞ�+�7�C`\n\0G!�p�#\�K��S\�\�\�	}Ixr��\�cA]��X�+w��p����tAʸ\�\�\�\�.\�?�/�\�O�<x>!y\�ؽh� &L��\�Ҝ�\�\ZJ�\�,g\�\\�I/�\�r\�V\�0/�\�\�,b��\�i�o��ħ�\�^r!\�X���^F\�w\�gfc�Es�=�\�\�\�L\Z���U�G�\���v�\"!S�!��\n\��\'�1��6=>�|+e_��\�z\'\nP��ƎA����1�\�T���\�<|�Ѭ+NGj_b\������L�\�\�\�\�G�pFv͢��Ɔ\�E�ǒ�\�s\Zm��z�\�I/y������#\�y�\�%�+�bmJ�&_�A,�.\�f\�\��_5l��h�_R\"3T0\�F�\�Si�G\�\�,��]m�\�\��[\�\�\�vt�V;R��;:~�}x�)\�o�#�F��\nD�@\�űD#�c	64\�Kh�%T\�K$�9GGs,~�\�X\��)xh�B\�\��-\�\�\�\�=F�qw	n\�\�#�ww\�w\�\�\�\�n\�\�\�܍�;{�qw\'k<��j7\"\�\�bp�-8/R^Р�/\�i$,U��\�\�A�f^\��\�lz L���\�CT���\�,\��\�\�D�?�\�4}����E�\��Ѣ\�,=\�\�\�]Ќ�!�\�\����\�2�{�\�y�Ƣi\��j����vhQ?/e�0N��0\�ÛƉ���\�\��JB��2��\'\�?.�X\�k�^\Z(\��\�@a��f��H\�<���y\�0M�\�o��\�7M�\�o�\�\�4mx�ݳ\"V)ޜuL������<\�>�3��1>\�\�s��\�\�CFV\�@��nǚǌ\�\�9�^�{cښ\�k^�\\\�B5K\�\�ڠ�\n�5\�Sx�y�l\�b�b�,\'h\�~\�Y9/Z�V�z\�\�e5�m�\�a�\0�bY\�-ڱ<���\�J9}d�M+�7l\�\ZV\�Y\�k�4\�C+c>�I\�ׯ+���\�q0\�\�1��?\�\�x\�kf\�O�$�B�S�Z���Z��\�?\�ח\�[�\Z|@w1a�\�>�K�3�\��\�\��=_\�2Sv�\�9/\n�xc\�3��A\��\��3Q�����\�\�\�!�`��\�#O$1\�d)�2�*\�\�\�뜓,�C�\�huWLA=g$YU��%�\�\�?fC���1y^\�WP\�{��\r�r�O\ZOu_x\�\�\�\�ײP\�\�TWY�\�\r�&4pçJM1<H��p�\r\���m\�|\�EL�Y/�:�|n\��}�Ë?\�\�1\�e\�k����޺�\�e�\�>�X�<�\��>^�.�xN\�)\�\�2yC�|)�`�dP0_\Z(�W�ߡc��ߦc��߫S�<M�/?�:�{�\�c�|�����3�\�g\n\�\�\��/�X�I��!\�@��9\�o�I��xF�WO\�O1} N�V���/\�\�<�n\����\�c��\�\n\�K\�t\�i�\�]Έ�8\�\�ӹ�̀�,���w��\'97\�.&!]�8��\�춢^�U�el7_5�\�i\�\�\�aY�\��l��9\�\�iY\�\r�\�;l\���y�6�[\Z�2�\n�8\�\�o�<�a|�\�x3�hX����<\�m��%7,�{Z\�}~\�i�\�a\��${lu�\�.�Y\�x\�;\��q\�n�im\�\�\�]^\��\�,\�\��N���\���=&�\�L8\�)�\�ʎ\�\n�o�ɑ�4\��\�wOl\�n_M�{e\�_K^��o\\p\��P׍�8�9\rZ9��/\\5���{�;�wޱ#z\' ;�W&���R��\�;7\�����\�VpD�e+h�\�V\�\�%[A�K�\Z0�#zO\�t�B:P\�\�T�s�@�t�B:P!�p�Th�Th\���\����T�@*D�\"Ё\n\�@u�\�[͝RЁ\n\�@�t���\�@���@��.�\n).�\n)\�@�t�B:P!��T�@*0w\nTHA*D�\"ЁZ=j\��\��\�\�%P!\�%P!��T�@*D�\"Ё\n�@\�N�\n)\�@�t�B:P\�\�\��\n\�q�\n\�]R\\RЁ\n\�@�t�B:P!��\nT`\����T�@*Dt���Di�\�~�?\�i�c���+ݨo\�\�&j�?�n��\��Y�s\��\��U�\�\�\�1\�\��岺\�U�D�.|~�\�~\�Ǥ|\�~B]3����\��\�A�˛��\�;\��t\�\�:���i	������Ⲿ)EG��+\�\��yW�6\�aw\�h\��pWf6aw\�c\��0�\�y\���g?�\�/�.w4\�vB�[B�\�t��hvB_�섾2\�	(=���vZa;\�MjfX�\�\�N�J\r	NR��\�\�,5D�I\r#VjH�J힜\�\'�\�]j�r�\Z�ܤ�CVjH�J\r	X�\�V��\�\�,5D�I\r\'wX�!+5$`��\'�\�]j�r�\Z�ܤU2ZjH�J\r	X�!�Ij�q�\Z�����.�\�Y��\�(�\rs\�$\�0\�\rȆ!.9�Ւa\�X-\�j	jUk���L\�섾\�\�	}e�PzZ1xa\�(�\�v��Ըj�Mj�@��R\�%�Ըj�Sj\\�\�)5�Z�K���ڤ\�UKmR�\'g;�Ij\\�\�)5�Z\�\ZW-٥\�UKmR㪥6�q\�R�\�d+\�]j\\�\�)5�Z�K���ڤ\�UKmR㪥6�qՒUj\\�\�)5�Z\�\ZW-٥\�UKmR㪥6�q\�R�Ըj\�*5�Z\�\ZW-uJ���n�	��\n�YB�\"����k�/2�\�\�ӌ\�<~�Q�>\��s\�Ur\�#sb�B�|m��QT��UՆ7\��\�R\�X�(\�_�ҋU\��5V�w��BXo���\�lzQ]�k\�F�w�/�N��7�R��q�_e�fI\�\�5\�bI�j\�\�\�\�mtُfzyt<=��\��\��}�ÙT�~��כ\�~՟&\�[�_p#�Ų��\�˚_,{>\�\��>?\�u\�j�u�Z?	w:�g	̓/�9�\��\\i����\�{p�k\�.����\�\���\�\�\�\�Dk~�Zf|\�\�\�\"�P���me?\�o^?6�\�9�\�<�W[B\�\�&ت\�\Z�\�\�څLqmV)�3��,i�X�Z(\�3�+�ܤҧ��⪖F/�B��4�oI�5_\�7�風\�N�\�K*�\�ϫ�-Z\�350[\�fc��\�~R}�A\�1b\�gr�i\�nu�\�ОƦ�J\�tnӿz�\�Tgop�/l�\�\�\�\����Oj�\r�\��������1\�z \�d�̀��Zl+�Y\�&sk^�\�>�{?���\�{{WWz��B�\��*5\��e.򂚓lg���\�.��\�a\�\��]�\�ڿ�k\�w#o��u\����y���\�\�y�W5�\�y9�y��\�\'�}��}�\�o\�Q/�\���ƞ]�e�\�,�r�oh\�\�O�kK�BS��%V�kK�Iˌ�Z�L$�\��]\�	z���H!w�����n\�\�۝�Wӡ=�.\�m\�ܖ(\�\�����]K�~�`[��\n�\0-#�>\�\�\�s�~0\�\�Z����\0\0\0��\0PK\0\0\0\0\0!\0O|m\\\0\0�	\0\0\0\0\0word/fontTable.xmlԔM�\�0@\��\"ߗ8&�-��t�z顥\�\�8�\Zۑ�����@�d��T\" \�/�\�\�\�?\�d\�m��B�)\nzy\\1���\�\�\�y��*��V|��ܢ�\�\��\�$Ѫ��Wv\"\��E�O|߲�Kj{:\�\nm$-\�Ѭ}IͯM~Ǵ\�i!V\"\�\�\'G���[(:I\�5\�H��j�oxD�l*r{���\�Jm\�\�hƭ�3ˬ\�I*\�3&[ )�\�V\'E\�\�B��\0Ww2;\�\0�����1��\�\�\��\�\�0�\�\�%\�!O�ɗ�҆�2 �\ZN\�U`�\�^6kr\�+\'�J��}/W:�\�9U\��\0��4�\"<�+�\�\�G�?�C仉,�\�rǨ\'�:�P)��!j���\�E�\�C|K�p���X\��Ʈ0p��#��y��\��\�#�\�\�#�\�x�_h�X\nɭ���޷j痌�\"\�!|	܅��To�{#O�g�X�\�!2\r[F\�/���s���\���sr\�\��++\�F\�Ɇ\�17�t$b\�\�\�]���p���\��J��>*�n\n�ʜfbeĕ�XT�\���tJ	[\nk�ȧ?���\�w)�%M����x�N\��^�{��\�p�S�\�Do\�TBF\\3\�ze\���\�n&\�\�3qtj\"$.%�#\�9��\��f����\�\0\0\0��\0PK\0\0\0\0\0!\0\�\�u\0\0\�\0\0\0docProps/core.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��]O\�0�\�M�K\�Gׁ�15\�IH\�h��\�*k״����\�\�p�Ļ��\'�\�i:;\�<8���PSD\n@������\�<���:�8\�St�f\�\�M\�t\�\nKSh0N�\r<Iل\�)\�:��-ۂ�v\�\�7ׅ�\��\�l��lG7�\�(\Zc	�r\�(���\�\�\�C\�\�k\0gr���\�d@�E\��H{u�\��RJ\�N\Z�J\�f�>Z\�	˲�\�Z\��\'�c��Z?5��\�R\�\'\\Y�/��\��\��k\�]\�cf��\�d�K�\�n[��\���,�~��yˌ\�\�_���\n^�S\���k�\�=/kƟj%4p\�G\�Fq-\���lk���ۑ4浝�\�\�\�j��8\"�0\Z��h\�\'w\�$�>��z��<o�/q�\"q�>�4\���d�\0\0��\0PK\0\0\0\0\0!\0��Ψ\�\0\0o\\\0\0\0\0\0word/numbering.xml\�\\\�n\�6\�\�?�L�~\�g\�G\\�(&EײL\�BDI�d;\�?\�O\�g�JR\�Q,�7�\�{\�sHQ犱�|}�\�`P&�X\�o5e\0\� Y��\�X��qq\�)�,�\�%1+� S�\���×�(\�\�%@�\�\0c\�\�h�ce�\�\�HU�`��\�\�0@I���\� �j�^�P�	Z���k�)J�eg\�\�;?SJ�\�\�2���8�\0Zj��Q^:3��U�	dt\0\�\r�	e2C9*\�U\�\��{\�@��!�C\�\�d4�\�nHf\�\�ԘN�9��ĸr� \�\��=�\�G\�\���~.\�(\�_1�\�T0~?w\�����bFpU��@d�*�d�lQ<*\�o\�x\��Q_�t	�\"d�[\�2W��I�m´�\�aW4\\��@vm$v0�\�\�S�\�\�\�\��4/�<\0^\��R=oGԵF�@\��t\���UO ���w�\�H\\�\��0\Z\0N^8�+�BM\�G\�d�\rƮ`�Wx�\��\�S�\��3J�\�-\��p���\�1̀Uκ\�;!\�י\�?\�KFOq��e�{�\�\�\0O��/��\�;\��e�#?ȿm\�\�\�\�:�8r�\06\Z��b�\��\"\�?�&%\�\�h\�G�d>\�\r}8WTR�Q�\nv z|MAՆ�F��h�\�4�\�<˘L\�ڬ��v�\"ć\�Z�/Uc�h�\�օ+�\�/�q\�#x�\�~\�o\��_��4\�(NC�CX��X��\��r�\��kh��zh\�D\0�S\�Ⓧ?Q�f:Uk��ҋ�%�����x9\�r΁����nYmli53]C]�]C���]Z\�L\�A\�\�B\��Z\�jf���6���mti53][]�]\�l]�h53]G]�][k]�h53]W]�]�u��\�\�t=t�<\�:V\�RE�/�����\�j�ȃ�\�\�\�t\�\Zng�p��1t\�k\�\�\�&���4A\�I$M�4A\�IT\�e4A\�I\�l�C�Ӳz\�&\�\�L\�[XN�Z=<\����&H� i��	�&H� i�J��&�,\�\�&\�Zh�aw6A�6�M݅Q�Vϥ&h��\"P\��f4��\��\�\�\�G�<,�8ψ\�Y�c\��+\\&\r�`AO\n\�8\'\�l\�cኞfւW���\�.eO�u1�\Z8\�b��oW��=/f?wx1��O\�b���W���.fOg{1�\Zg\�b��\�W��-/f?W~1��~\�b���$�ʖR�\'{J\�9�34\�\�a��b����Y�UJ=��*+Y�^U�W\�ߧ+߫��+߫\���b_��}�Jnnv4\�f�c{=vd\�\�\�t2�aǁ�4A\�I$M�4A\�IT\�e4Ad�����\�j�^�V�Û {a-f�I�Z=<rsYn.1\�\�\�\\��\�\�=\�\�2Gg+7�9�f��\�ѕ\�\�e���sn.��˜RX��\�:޴\�{Jq?���\���|�L)>\"�H8)*��%[4��Gz�-���\�\�d�Z��[�\�GfG���}\������\nI3xH**\�/��d�����\r�\nI9xH**\�/��ă����\nI?xH**�!�\�HBb�|\�\�\�H\�I&R\�%\\�N�q>\�j	3χU�/��\�\�C�\�f��)8\��?\�;\���&<\����\n+�EJx�\0\0\0��\0PK\0\0\0\0\0!\0@�\�}\�\0\0\�\0\0\0docProps/app.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�S�n\�0�\�?�7r/EŐb\�a[\�mϚL\'\�dI�ؠ\�׏�O\�v�O���\�I�\�\�\�d\'Q;�\�\�\"\��*\�h{\�\��\�U�E���\�Y\�\�g���x��\��PC\�H\�\�M~D�kƢ:B\'\�Җ2��D\nÁ��\�\n\�z\��\"+�b\�\��6\�\��I0\�\'�_\�Ʃ\�_|�Ϟ����F\"�o��f\�8\�8�X^;��\���XQb\n�N �����g�(�Շ���\�Q���(ʏ\�e�Y\��O\��$R�\�W����\�\�a���\n��%����4�I�!��-y(ď��y\��XV�\�)\�{%\rl���&g�	~���N\�\�\�	\�\'P\�B�O�r�g\�e��{��$���ll|\� j����x�iY�u%\�C�\�\�!<�v7�Z��\�\�<5;x�&vRg�3�Pݺ\�KK-f�����vw�����LF����R\�PeU�\�%Hr|O,44\�i*�\�\���\'п�\0ͥ\�\�D�VO\��嬠oأG�0=(�\0\0��\0PK-\0\0\0\0\0\0!\0�Y��y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0�\Z�\�\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0_rels/.relsPK-\0\0\0\0\0\0!\0YiJ\�?\0\0\�$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0word/_rels/document.xml.relsPK-\0\0\0\0\0\0!\09B\�mE\0\0�;\0\0\0\0\0\0\0\0\0\0\0\0\0\0S\0\0word/document.xmlPK-\0\0\0\0\0\0!\0���\��\0\0P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�Q\0\0word/theme/theme1.xmlPK-\0\n\0\0\0\0\0\0\0!\0!\�\�U\�k\0\0\�k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0X\0\0word/media/image4.jpegPK-\0\n\0\0\0\0\0\0\0!\0��\�i�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\�\0\0word/media/image3.gifPK-\0\n\0\0\0\0\0\0\0!\0b<�;�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�\0\0word/media/image2.gifPK-\0\n\0\0\0\0\0\0\0!\0�s\�\�\r\0\0\�\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�\0\0word/media/image1.gifPK-\0\n\0\0\0\0\0\0\0!\0ӎа}&\0\0}&\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�\0\0word/media/image5.jpegPK-\0\0\0\0\0\0!\0�0(��\0\0B\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0word/settings.xmlPK-\0\0\0\0\0\0!\0nY\�ܯ\0\0?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P\0word/webSettings.xmlPK-\0\0\0\0\0\0!\0��Py>\r\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01\0word/styles.xmlPK-\0\0\0\0\0\0!\0O|m\\\0\0�	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�(\0word/fontTable.xmlPK-\0\0\0\0\0\0!\0\�\�u\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(+\0docProps/core.xmlPK-\0\0\0\0\0\0!\0��Ψ\�\0\0o\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�-\0word/numbering.xmlPK-\0\0\0\0\0\0!\0@�\�}\�\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�3\0docProps/app.xmlPK\0\0\0\0\0\0R\0\07\0\0\0'),(7,'saksham gupta','saksham0261','123456','7447424746','saksham\r\n'),(8,'GUPTA','sak','123456','7447424746','�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	\Z\Z ( \Z%!1\"*)+...383-7(-.+\n\n\n\r-----------------+-------+----+-+---------------7--��\0\0�\n\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0E\0\0\0\0\0!1Aa\"Qq2BR���#3br���\�\����\�\��4c\�CDE��\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\01!Q�\�\0\0\0?\0�Q�ulx{���`\�\�\r������/�\�cG8���\�0\�[tڎ0Z�\�\r�ь\�m\�(2�~z-��R\�N�\�O�\�u\�.$�\�\�)��l\rt\�\�q\�m�ȹ���\�b�\��<=�O6\��ϸ�)\��\�0`b�%�oӐR,��*�\�����\�\��\0F�Ga8�6�g;\�F;\�\�l\"�j���?\�i\�\�8�Go�3O��\�{M�\�,ف�\�\�շ�C��7\"�To\���\�ɌF�\0n;4ߨ\�P�\"�V\��C�\�Aȯ�QM�\�>wi�Zk\�\�R\�}\���\�>ʙ�\�˰\�\�\0ߌ\�\���\�0\�}A�3�ÂFe�@Ə\'�RW7\�\�A#\�\��X87P\�\�]�\�t[^C�\n�4\�Y�Ʋ���o;�\�\�y�\"��õ)�\� \�\�#C�cn9\�w�\��o��:�\�W���\Z\�&�\�W]\\����\�\"=\�.y��\�[Yg\��@��\�\�!�\�\�\��6G\�ᘶ��ul����\0\0\0\�\�/�YKDDD~9�\�\�PUk�2[�\��3�\�\\\�7�2\�t�j�\�YME�>nfe�γg`\�\�{M\�Ӓ�*\�=e\�\��F���o#[�x�\�\�\�\�\�S���30@ٙ�\���/\�?�B�uQD/ƛAv�\�k\�\�x\05�� h\n\r���\�4�\�\r�P�{5n�\��n���̴Y�\�\�ۣR.�8�3.(\�5�����\�\�\\�u{wC\�XA\�\�P\n�\�\\a��\����=\��R	1_\rwո�\�\��ѵ䵛��\�{��wm�+��u\�B���;\��\�6k\ZcG�h\�2�F�\�2v�o�w9\�\�\�yyq�\�l��`\�\�\r��z\�.�\�x�n��\�_!\�\�&\�k �MO\�>j\�E\�\�q�l#\�\�c�7w��S�Ye\�E\\\�\�Y��x_!�y\��\n/W�LG6�v }�3��+�W*\�Z5X\�=\'\�O\�?uL�\��\�\�<}\�\�|\�տI���=7�����*l_\�\�~s���\\^\�_�X�\0�Xx�\0\�3\��\0行\�	\�R�	�`�˲�B��̈́~\�_�S����*\���\�t\��8j�	�w\�{O\�T\0ɿ���*���\�\�\�\r\0X4\0= x�ۚ\�b{?�Szy��Ð\�M\�ī�<[\�\n|�_Ao�Ղu�w\�\�\����qls�H\�+G� �̱S[r\�%�\0� �B\n�\�\��dI�,�<I�>l:�f\����wji�|K���~�6p\�賍#�)Z&��1�\�8\�w�/���\��YH�\�8\�?�Q�x\�H��\�m\�\�\�|ԥeD@DDD@DDD@_2H\"\� �$\�ԮVd\�pe�̓�\�\�F�q�hT�b\�ՙ�C \�\0>�6�{��pVE�1\�{Ze4������\�ȶ\�y����\\\nʳJe��g�	�h���\�r˂A;\���tVS\�P[l�<\�\"\�a���X�\\�U�\�\�~���$�x�5�V��É\�u��aggtllѠx��*�ț+n\�Wǈo?��:��SL��`\�\�t:OhO\����f\�\�be,\�\�1��\0x�꡸�өp\�\�\�\�2�\0����g\�R�V\�4�\�\Z׺޻�6Šϒ�e�0\0\�bx�b\�\��GA�VE�*\��\�v \�\\�\�3�݄�\�q�\\\\���s[�����zion�\�\\.\��w��\�H�u\�\�nܗ=��O�\�E\�\�\�覧e#C#hkZ,\Z\�`@�[�@0-�\�\�Y\�>w��\��\nmA����E\����)�DDA�U*�6�ןǊ\�Dy��FAc��-\�u��\�<�%Ϯ\��\�rE\�u\�{�\�\�\�\"��\�~�>*P�٣.E�\�1\�,\��w\�<B��mW\���~�(\��\0�\rƶWOSsN�D\�d���Bų�fL>W\�^�d�d�\�5,�1c�ޗ�V2qx�Y[W���G\�%��\�\�\�{u\�#�\�%aeͥ\�b�l\�P�\�\�\���\�-�a\�2\n��|O\r\'�!\�\'�p�T3պy\�4q. p76�\��x�W���t�/<\0��}h\�{[\��\�\�i�K\Z��\�D\\)b2\"\"����SĢ\�c2\����\�\\~C\��A��\���\�p+\�Oi�᦭a\�}c\�B��\�&\�4�A\�\�t.\Z=\�\�z-\��,�%��\�\�\����d\\mK�\�\�U|�4\�wqwF��X��U��\�0\�\�uq_4t9�A}\�s`�\r\n\�ɛ:�h|\���\���Nj\�yfn���\�\�7#�\���y��\rã\�\�CG̟y���\�\�Z\"\"\"�\�^�\"�h7կ<�=yq*��\�^\�y�\�\\]\�Taà��W5\�\r6\'[1� ��hU\ru+���,-:�\�|�\�Q8\�>b�R!{�b��֍Gj\\\�G-*�^U\�,!��x�7B:ߒ�γ�\�F\�_��Ѻ\�\�.!��\����B�H��Ȉ��������ڭ1\�&���G5᮷;w��o�XԳ��5\�\�\�\".Wj�	p\�I�]�\�h�	],�)��q\�ذ|�eo\�.(\�\0�~b;�\\\�4ܑ\�ꤣ\�ܴ���jx�\�+�\�C��\�ۻ\�\��q\�Q:\�G{�\�Ws$\���=-{�\��\�\�E\��7p\08\r_���J�\�w�\05v�v�+Ef�D|M+`is�k@�$�\0�\'���\�\�}(0�O7�1�\�&�\�>S\�V�\�\�LGv&�|\�}P�\�s�\�v�݌po�x4s�\�On�I\�\\�؛�O���)q��w|\0�\�>�\\ �;x�w3��d͎͟;}\�;�\���\�>Je�vd)���\�w����:q�V�����hk@�\0X\0����_�f\�m\�[W\'��u�dDD�\�O��\\<�Y�\Z\n��cٹ�\�\���d��\�s%S^�Z\�Dw\�]v�\��|\�+�mYI6=�;\0\Z\Z|G�[&�x{]\�W�C\�}\��������tok��譾��������\�e,}\�n�LƇ�\�F�O\�g��\�R\�\�q/e�\�\�s�<�\�{\��uw 85��\�\�5��cd��\�v�\�7gUǳGfM�\0b�\�%͸�ո�c\"\"(�������ʑ\��|��{��~M[�$\�\�!{\�ogL\�k\�n\\�E��1ƫ)how�9�5�`y��\�dŅ\r4t��wع��&\�.���~�cQ#���9\�Ď&\�\�̠i�sZu\�\�\�\�c�ۼ\�O]B\�\�{z\�m\�q\�\�;�����\�s\rE4P�Q��\�k��n�H��G\ZŢ�!t�1�\Z�\�̟�0cp\�\�<\�\�c~.<�\�\�\��y�;g	�t\��wbi=�@\�Ѯ�\�\�q*��\�g,�S�\�Z	��\r�9�X�\�c�m6�\�\�?\�a���\�\�u\�\�쇳GV\�\�5\�\�:�O\��:y�\�\'����A\�\'���\'��\0��\�)\�\�r�A�t�մo\��.��\��\�\�\�֏�>$�%m,�h���\" \"\"�\�v^\�p����{�T\�B��i�8�2\�~{�̬\�\�d��>�؈�Z\�k��d\�p�C�\0b/�\0��mA\�[n?L\�\0$gx:ڐ\�\�~�^ys��|O5\��K\�w*�9>�Ik\�2i�]\�\�X�骟B�\��M\�F��+\�y3nb�l�{xY�޷�\Z\�N�X\���\�؎��]\�y(\�\�d�\�\�{ѾѾ\�Ԏ�\0���Z�^�E�ǉ\0 ���A\�\�\"\" \"\"\�\�+Y�D�d6c\Z\\\�\�-�W\�;~/4xe6�s��n\�Z\�ѣ�}\���:WcՕ�Ùk<7\�\06�,\ro��6ѱ�\�u\�8\�0�q��u�z�E\�[8�ّ��N-pof\����%\�\�\�A�.p7\�\�}\�iG>\��\�\�ऻ7��F#N,E��|;�/���Q\�;��3�\\\�\���VV\�0\�\�[<\�G\\\�\�\�W��\�i?\�P�\\H���>\�_0T\�ղQ��E�C~�>�\�ߠ\��\�\�j�g^F�mR��\���N��\0d\"C7f\�\�\�ﰾ�5[@Y5�E�\�C���;��Ǭ�\r�\�o�\�U*DFDD@DDD@DD�ϔN\�\�XȌ�y��?ʻ\�\�\���$��W\n\�=���9�+\�7�.\nd���)\��E�2G��w3�F~-V���)���\�\�.\�Z\�Ȃ>am��\�y�~^�tRh8�si&˚\�p	\�\�h�\�����1�7\�\Z%g{x�-\�\�@9��q�<\�!\�jV�\��p��B�\�`7p\�4�\�\�>J\�^T��uĐ�\�,7\Z\��\�ə� \�ٳ048;�j��ے�%K�D\�ߺ����\�tΓC#���\�\�q?tq?\�{*ˮ����\�Y�Y�\�0����󯕼V�)�I�1[H\�a^D.\�7;�\�\ng��\�e�WM�	h\rc.\�!����\n��\�6?�چҰ�C\��.{�\\�O\�Wgꇬ\��+$Һ�\�{���I$\�\�|D>�浮\�\�Yܵ�|֕\���\Zy���\�\�E�\�b^?7��\n\�\�n�\"���>_�w@@\��*�\�\�Q\��0\�\�v\��k\�u���\Z>\�U�ѻ�\�J�DE�{�lҵ�\�\\K��x\��<KN�D�.M\�l̴\�XH;�3\��O\�w\�\�b.�*�ǰ��{U�\�Azg�=��	��nN\�p�U�����\�sBX]q�\�>�ͮ�꺊 ���d�\�긆�q�6�����\�t\"\�<�\�6�oU�AY&#%�۲���\��\�}�\��\�\�-#!�\�sŇv�#�+�|�u��qq\��jV��J\�<8�Du.J\0\�-kd7����/(\\\\ۃG\�I��Y�Y����\�\"[�A\�n\�ztLG�\�\�00�H\����ou\�\�w�\�ۧ/%\\Rm�\�v�ړ\�?M\�xԭ\n���{:k�\�>\�\��8\�L�ɪ\�!�bt�q\r\r.-\�v��\�\�M� �󚟚f�\�0�D���y�e\�\�qɱ�o\�Aݸ-h\0{\�9��t\\\�8F5\�1\��VL�;�Z�\0���ZgԖ\�֗:Kd�\Z5�\�\���\�-\���Uw\�\�#�\0h���\\\�\�i׳i��\�\�4�J�w�6Zj�0\�\�\�:Gn\�\�ѣO���\",�\"\"\" \"\"\" \"\"\" \"\"\" ,s\�چ�=�\�p �.<�YS�e*��)�\�\\\�Gĵ�H#�\0q�\�\nI���O�Y�\�7\\{�?u߱\�\�L�G4l��0�e<_\�\�\��\��T�Fь\�\0�L���\0��0�8N\�i�;�\���7\�wx~T\�XD]WY�fͮk[\��\\IЀ/�!��T��3\�\�eS���A��U\�c\��|�d\�09(�=\�C\"v\�\�:�\�\�|l]\�Xb�t���Ӟ\�h���O��|���\\*,Z3\�i �\�Q�\�F�\��EY^�cbkCc6\07u��>kZ�5�qB\�v\�<��/d\�\�:�yi\\Ƌ��\�F|F�o��B�\�aT�-5|rV@\�f,-k\�1\���r	��\�V2�\ZHb�C$\"V��{zM�\�rm�\�Q\�xs\\H-<xX\�\�\�e�ä��G����xuS\�#g���WMS�dq{�\�I��Y\�ߎ�\�\�Y^�-3v�\'\�y�s�\�\�4R\�Q���\�`A�TY����-�\�\�w^\\��eD@DDD@DDD@DDD@DDD@DDD@\\�W-R\��\0mOϵ��0\�u�]�Z9�\��G\�x<|/�\\�\�X~Ƹ���oͯ\n\�EtU�e\\����\0Z�fȟ7\�V�\�L\'\�\�j\"i��z*k�e\�]�>\r�R\�/�\���8�����Į�(�������������������������������������������\�');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rides`
--

DROP TABLE IF EXISTS `rides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rides` (
  `ticket_no` int(11) NOT NULL,
  `water_rides` int(11) DEFAULT NULL,
  `dry_rides` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticket_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rides`
--

LOCK TABLES `rides` WRITE;
/*!40000 ALTER TABLE `rides` DISABLE KEYS */;
INSERT INTO `rides` VALUES (2,0,3),(3,5,6),(4,4,3),(5,4,2);
/*!40000 ALTER TABLE `rides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s`
--

DROP TABLE IF EXISTS `s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s` (
  `co1` varchar(100) DEFAULT NULL,
  `co2` varchar(100) DEFAULT NULL,
  `co3` varchar(100) DEFAULT NULL,
  `co4` varchar(100) DEFAULT NULL,
  `co5` varchar(100) DEFAULT NULL,
  `co6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s`
--

LOCK TABLES `s` WRITE;
/*!40000 ALTER TABLE `s` DISABLE KEYS */;
/*!40000 ALTER TABLE `s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semployee`
--

DROP TABLE IF EXISTS `semployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semployee` (
  `eid` int(11) DEFAULT NULL,
  `ename` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semployee`
--

LOCK TABLES `semployee` WRITE;
/*!40000 ALTER TABLE `semployee` DISABLE KEYS */;
INSERT INTO `semployee` VALUES (1,'ss');
/*!40000 ALTER TABLE `semployee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `rollno` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tableinfo`
--

DROP TABLE IF EXISTS `tableinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tableinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableinfo`
--

LOCK TABLES `tableinfo` WRITE;
/*!40000 ALTER TABLE `tableinfo` DISABLE KEYS */;
INSERT INTO `tableinfo` VALUES (1,'John Smith',33),(2,'saksham',10),(3,'yes',10);
/*!40000 ALTER TABLE `tableinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teach_login`
--

DROP TABLE IF EXISTS `teach_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teach_login` (
  `id` varchar(40) DEFAULT NULL,
  `passwd` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teach_login`
--

LOCK TABLES `teach_login` WRITE;
/*!40000 ALTER TABLE `teach_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `teach_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_data` (
  `name` varchar(20) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `accType` varchar(20) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `services` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_data`
--

LOCK TABLES `user_data` WRITE;
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 11:25:38

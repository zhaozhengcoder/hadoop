-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `id` varchar(255) NOT NULL,
  `score` varchar(255) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES ('3120610001','720','30','65.45','36'),('3120610002','857','30','77.91','18'),('3120610003','956','30','86.91','5'),('3120610004','947','30','86.09','7'),('3120610005','836','30','76','21'),('3120610006','843','30','76.64','20'),('3120610007','962','30','87.45','2'),('3120610008','927','30','84.27','10'),('3120610009','934','30','84.91','8'),('3120610010','962','30','87.45','2'),('3120610011','865','30','78.64','16'),('3120610012','864','30','78.55','17'),('3120610013','766','30','69.64','30'),('3120610014','799','30','72.64','26'),('3120610015','906','30','82.36','12'),('3120610016','557','30','50.64','48'),('3120610017','716','30','65.09','37'),('3120610018','601','30','54.64','46'),('3120610019','742','30','67.45','33'),('3120610020','932','30','84.73','9'),('3120610022','724','30','65.82','35'),('3120610023','702','30','63.82','38'),('3120610024','651','30','59.18','41'),('3120610025','728','30','66.18','34'),('3120610026','757','30','68.82','31'),('3120610027','609','30','55.36','44'),('3120610028','887','30','73.92','25'),('3120610029','818','30','68.17','32'),('3120610030','987','30','82.25','13'),('3120610031','575','30','52.27','47'),('3120610033','831','30','75.55','22'),('3120610034','819','30','74.45','24'),('3120610035','613','30','55.73','42'),('3120610036','887','30','80.64','14'),('3120610037','949','30','86.27','6'),('3120610038','923','30','83.91','11'),('3120610039','785','30','71.36','27'),('3120610040','844','30','76.73','19'),('3120610041','782','30','71.09','28'),('3120610042','821','28','74.64','23'),('3120610043','670','28','60.91','39'),('3120610044','777','30','70.64','29'),('3120610045','652','30','59.27','40'),('3120610048','875','30','79.55','15'),('3120610049','514','30','46.73','51'),('3120610050','524','30','47.64','50'),('3120610051','606','30','55.09','45'),('3120610052','541','30','49.18','49'),('3120610053','610','30','55.45','43');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-29  9:59:42
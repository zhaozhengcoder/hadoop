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

--
-- Table structure for table `id_name`
--

DROP TABLE IF EXISTS `id_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `id_name` (
  `id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_name`
--

LOCK TABLES `id_name` WRITE;
/*!40000 ALTER TABLE `id_name` DISABLE KEYS */;
INSERT INTO `id_name` VALUES ('3120610047','杨珉'),('3120610003','郝丹'),('3120610010','周蓉'),('3120610037','陈文艳'),('3120610007','房晓楠'),('3120610004','黄丽蓉'),('3120610020','向楠'),('3120610009','马林云'),('3120610038','任梦秋'),('3120610008','朱佳慧'),('3120610030','杨胜兰'),('3120610015','林祯'),('3120610048','李承'),('3120610036','胡文越'),('3120610012','史一婷'),('3120610011','黄玮'),('3120610006','武碧蓉'),('3120610002','姚素珍'),('3120610040','邹德臣'),('3120610005','龙敏敏'),('3120610033','吴亚男'),('3120610042','尚晓伟'),('3120610034','刘敏超'),('3120610028','赵明竹'),('3120610014','左少华'),('3120610044','王朋飞'),('3120610013','张浩'),('3120610041','郑立全'),('3120610023','张新冀'),('3120610029','孟颖'),('3120610039','金程浩'),('3120610019','吴胜凯'),('3120610026','杨波'),('3120610001','廖子星'),('3120610017','韩亚太'),('3120610025','陆文宇'),('3120610022','司云飞'),('3120610043','高利剑'),('3120610024','郭定京军'),('3120610053','王华'),('3120610018','韩海鹰'),('3120610045','赵震'),('3120610035','耿娇娇'),('3120610051','王彭'),('3120610016','王世辉'),('3120610031','张姗艳'),('3120610027','余宝全'),('3120610049','罗春程'),('3120610052','殷昌鹏'),('3120610050','李耿卓');
/*!40000 ALTER TABLE `id_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `venid` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (100,'显示器',10001),(100,'显示器a',10002),(100,'显示器b',10003),(100,'主机',10004),(200,'word',20001),(200,'word 2005',20002),(200,'word 2006',20003),(200,'excel 2006',20004),(200,'ppt 2006',20005),(300,'goole book',30001),(300,'goole glasses',30002),(300,'goole vr',30003),(300,'goole earth',30004);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-29  9:59:16

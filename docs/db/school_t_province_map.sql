-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `t_province_map`
--

DROP TABLE IF EXISTS `t_province_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_province_map` (
  `f_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `f_name` varchar(32) NOT NULL COMMENT '名称',
  `f_full_name` varchar(32) NOT NULL COMMENT '全名称',
  `f_code` varchar(6) NOT NULL COMMENT '编码',
  `f_pin_yin` varchar(256) NOT NULL COMMENT '拼音',
  `f_operator` varchar(32) NOT NULL DEFAULT '' COMMENT '修改人',
  `f_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='省份表, 数据来源于腾讯地图API';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_province_map`
--

LOCK TABLES `t_province_map` WRITE;
/*!40000 ALTER TABLE `t_province_map` DISABLE KEYS */;
INSERT INTO `t_province_map` VALUES (1,'北京','北京市','110000','beijing','','2022-03-14 10:06:01'),(2,'天津','天津市','120000','tianjin','','2022-03-14 10:06:01'),(3,'河北','河北省','130000','hebei','','2022-03-14 10:06:01'),(4,'山西','山西省','140000','shanxi','','2022-03-14 10:06:01'),(5,'内蒙古','内蒙古自治区','150000','neimenggu','','2022-03-14 10:06:01'),(6,'辽宁','辽宁省','210000','liaoning','','2022-03-14 10:06:01'),(7,'吉林','吉林省','220000','jilin','','2022-03-14 10:06:01'),(8,'黑龙江','黑龙江省','230000','heilongjiang','','2022-03-14 10:06:01'),(9,'上海','上海市','310000','shanghai','','2022-03-14 10:06:01'),(10,'江苏','江苏省','320000','jiangsu','','2022-03-14 10:06:01'),(11,'浙江','浙江省','330000','zhejiang','','2022-03-14 10:06:01'),(12,'安徽','安徽省','340000','anhui','','2022-03-14 10:06:01'),(13,'福建','福建省','350000','fujian','','2022-03-14 10:06:01'),(14,'江西','江西省','360000','jiangxi','','2022-03-14 10:06:01'),(15,'山东','山东省','370000','shandong','','2022-03-14 10:06:01'),(16,'河南','河南省','410000','henan','','2022-03-14 10:06:01'),(17,'湖北','湖北省','420000','hubei','','2022-03-14 10:06:01'),(18,'湖南','湖南省','430000','hunan','','2022-03-14 10:06:01'),(19,'广东','广东省','440000','guangdong','','2022-03-14 10:06:01'),(20,'广西','广西壮族自治区','450000','guangxi','','2022-03-14 10:06:01'),(21,'海南','海南省','460000','hainan','','2022-03-14 10:06:01'),(22,'重庆','重庆市','500000','chongqing','','2022-03-14 10:06:01'),(23,'四川','四川省','510000','sichuan','','2022-03-14 10:06:01'),(24,'贵州','贵州省','520000','guizhou','','2022-03-14 10:06:01'),(25,'云南','云南省','530000','yunnan','','2022-03-14 10:06:01'),(26,'西藏','西藏自治区','540000','xizang','','2022-03-14 10:06:01'),(27,'陕西','陕西省','610000','shanxi','','2022-03-14 10:06:01'),(28,'甘肃','甘肃省','620000','gansu','','2022-03-14 10:06:01'),(29,'青海','青海省','630000','qinghai','','2022-03-14 10:06:01'),(30,'宁夏','宁夏回族自治区','640000','ningxia','','2022-03-14 10:06:01'),(31,'新疆','新疆维吾尔自治区','650000','xinjiang','','2022-03-14 10:06:01'),(32,'台湾','台湾省','710000','taiwan','','2022-03-14 10:06:01'),(33,'香港','香港特别行政区','810000','xianggang','','2022-03-14 10:06:01'),(34,'澳门','澳门特别行政区','820000','aomen','','2022-03-14 10:06:01');
/*!40000 ALTER TABLE `t_province_map` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-02 16:46:21

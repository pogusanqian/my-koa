-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: db_school
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `province_map`
--

DROP TABLE IF EXISTS `province_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `province_map` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) NOT NULL COMMENT '名称',
  `full_name` varchar(32) NOT NULL COMMENT '全名称',
  `code` varchar(6) NOT NULL COMMENT '编码',
  `pin_yin` varchar(256) NOT NULL COMMENT '拼音',
  `operator` varchar(32) NOT NULL DEFAULT '' COMMENT '修改人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='省份表, 数据来源于腾讯地图API';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province_map`
--

LOCK TABLES `province_map` WRITE;
/*!40000 ALTER TABLE `province_map` DISABLE KEYS */;
INSERT INTO `province_map` VALUES (1,'北京','北京市','110000','bei jing','liuqincai','2023-02-25 15:23:02'),(2,'天津','天津市','120000','tian jin','liuqincai','2023-02-25 15:23:02'),(3,'河北','河北省','130000','he bei','liuqincai','2023-02-25 15:23:02'),(4,'山西','山西省','140000','shan xi','liuqincai','2023-02-25 15:23:02'),(5,'内蒙古','内蒙古自治区','150000','nei meng gu','liuqincai','2023-02-25 15:23:02'),(6,'辽宁','辽宁省','210000','liao ning','liuqincai','2023-02-25 15:23:02'),(7,'吉林','吉林省','220000','ji lin','liuqincai','2023-02-25 15:23:02'),(8,'黑龙江','黑龙江省','230000','hei long jiang','liuqincai','2023-02-25 15:23:02'),(9,'上海','上海市','310000','shang hai','liuqincai','2023-02-25 15:23:02'),(10,'江苏','江苏省','320000','jiang su','liuqincai','2023-02-25 15:23:02'),(11,'浙江','浙江省','330000','zhe jiang','liuqincai','2023-02-25 15:23:02'),(12,'安徽','安徽省','340000','an hui','liuqincai','2023-02-25 15:23:02'),(13,'福建','福建省','350000','fu jian','liuqincai','2023-02-25 15:23:02'),(14,'江西','江西省','360000','jiang xi','liuqincai','2023-02-25 15:23:02'),(15,'山东','山东省','370000','shan dong','liuqincai','2023-02-25 15:23:02'),(16,'河南','河南省','410000','he nan','liuqincai','2023-02-25 15:23:02'),(17,'湖北','湖北省','420000','hu bei','liuqincai','2023-02-25 15:23:02'),(18,'湖南','湖南省','430000','hu nan','liuqincai','2023-02-25 15:23:02'),(19,'广东','广东省','440000','guang dong','liuqincai','2023-02-25 15:23:02'),(20,'广西','广西壮族自治区','450000','guang xi','liuqincai','2023-02-25 15:23:02'),(21,'海南','海南省','460000','hai nan','liuqincai','2023-02-25 15:23:02'),(22,'重庆','重庆市','500000','chong qing','liuqincai','2023-02-25 15:23:02'),(23,'四川','四川省','510000','si chuan','liuqincai','2023-02-25 15:23:02'),(24,'贵州','贵州省','520000','gui zhou','liuqincai','2023-02-25 15:23:02'),(25,'云南','云南省','530000','yun nan','liuqincai','2023-02-25 15:23:02'),(26,'西藏','西藏自治区','540000','xi zang','liuqincai','2023-02-25 15:23:02'),(27,'陕西','陕西省','610000','shan xi','liuqincai','2023-02-25 15:23:02'),(28,'甘肃','甘肃省','620000','gan su','liuqincai','2023-02-25 15:23:02'),(29,'青海','青海省','630000','qing hai','liuqincai','2023-02-25 15:23:02'),(30,'宁夏','宁夏回族自治区','640000','ning xia','liuqincai','2023-02-25 15:23:02'),(31,'新疆','新疆维吾尔自治区','650000','xin jiang','liuqincai','2023-02-25 15:23:02'),(32,'台湾','台湾省','710000','tai wan','liuqincai','2023-02-25 15:23:02'),(33,'香港','香港特别行政区','810000','xiang gang','liuqincai','2023-02-25 15:23:02'),(34,'澳门','澳门特别行政区','820000','ao men','liuqincai','2023-02-25 15:23:02');
/*!40000 ALTER TABLE `province_map` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-25 17:22:55

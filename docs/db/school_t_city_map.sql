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
-- Table structure for table `t_city_map`
--

DROP TABLE IF EXISTS `t_city_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_city_map` (
  `f_id` int NOT NULL DEFAULT '0' COMMENT '主键',
  `f_name` varchar(32) NOT NULL COMMENT '名称',
  `f_full_name` varchar(32) NOT NULL COMMENT '全名称',
  `f_code` varchar(6) NOT NULL COMMENT '编码',
  `f_pin_yin` varchar(256) NOT NULL COMMENT '拼音',
  `f_operator` varchar(32) NOT NULL DEFAULT '' COMMENT '修改人',
  `f_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_city_map`
--

LOCK TABLES `t_city_map` WRITE;
/*!40000 ALTER TABLE `t_city_map` DISABLE KEYS */;
INSERT INTO `t_city_map` VALUES (1,'东城','东城区','110101','dongcheng','v_vqcailiu','2022-09-26 00:36:35'),(2,'西城','西城区','110102','xicheng','v_vqcailiu','2022-09-26 00:36:35'),(3,'朝阳','朝阳区','110105','chaoyang','v_vqcailiu','2022-09-26 00:36:35'),(4,'丰台','丰台区','110106','fengtai','v_vqcailiu','2022-09-26 00:36:35'),(5,'石景山','石景山区','110107','shijingshan','v_vqcailiu','2022-09-26 00:36:35'),(6,'海淀','海淀区','110108','haidian','v_vqcailiu','2022-09-26 00:36:35'),(7,'门头沟','门头沟区','110109','mentougou','v_vqcailiu','2022-09-26 00:36:35'),(8,'房山','房山区','110111','fangshan','v_vqcailiu','2022-09-26 00:36:35'),(9,'通州','通州区','110112','tongzhou','v_vqcailiu','2022-09-26 00:36:35'),(10,'顺义','顺义区','110113','shunyi','v_vqcailiu','2022-09-26 00:36:35'),(11,'昌平','昌平区','110114','changping','v_vqcailiu','2022-09-26 00:36:35'),(12,'大兴','大兴区','110115','daxing','v_vqcailiu','2022-09-26 00:36:35'),(13,'怀柔','怀柔区','110116','huairou','v_vqcailiu','2022-09-26 00:36:35'),(14,'平谷','平谷区','110117','pinggu','v_vqcailiu','2022-09-26 00:36:35'),(15,'密云','密云区','110118','miyun','v_vqcailiu','2022-09-26 00:36:35'),(16,'延庆','延庆区','110119','yanqing','v_vqcailiu','2022-09-26 00:36:35'),(17,'和平','和平区','120101','heping','v_vqcailiu','2022-09-26 00:36:35'),(18,'河东','河东区','120102','hedong','v_vqcailiu','2022-09-26 00:36:35'),(19,'河西','河西区','120103','hexi','v_vqcailiu','2022-09-26 00:36:35'),(20,'南开','南开区','120104','nankai','v_vqcailiu','2022-09-26 00:36:35'),(21,'河北','河北区','120105','hebei','v_vqcailiu','2022-09-26 00:36:35'),(22,'红桥','红桥区','120106','hongqiao','v_vqcailiu','2022-09-26 00:36:35'),(23,'东丽','东丽区','120110','dongli','v_vqcailiu','2022-09-26 00:36:35'),(24,'西青','西青区','120111','xiqing','v_vqcailiu','2022-09-26 00:36:35'),(25,'津南','津南区','120112','jinnan','v_vqcailiu','2022-09-26 00:36:35'),(26,'北辰','北辰区','120113','beichen','v_vqcailiu','2022-09-26 00:36:35'),(27,'武清','武清区','120114','wuqing','v_vqcailiu','2022-09-26 00:36:35'),(28,'宝坻','宝坻区','120115','baodi','v_vqcailiu','2022-09-26 00:36:35'),(29,'滨海','滨海新区','120116','binhai','v_vqcailiu','2022-09-26 00:36:35'),(30,'宁河','宁河区','120117','ninghe','v_vqcailiu','2022-09-26 00:36:35'),(31,'静海','静海区','120118','jinghai','v_vqcailiu','2022-09-26 00:36:35'),(32,'蓟州','蓟州区','120119','jizhou','v_vqcailiu','2022-09-26 00:36:35'),(33,'石家庄','石家庄市','130100','shijiazhuang','v_vqcailiu','2022-09-26 00:36:35'),(34,'唐山','唐山市','130200','tangshan','v_vqcailiu','2022-09-26 00:36:35'),(35,'秦皇岛','秦皇岛市','130300','qinhuangdao','v_vqcailiu','2022-09-26 00:36:35'),(36,'邯郸','邯郸市','130400','handan','v_vqcailiu','2022-09-26 00:36:35'),(37,'邢台','邢台市','130500','xingtai','v_vqcailiu','2022-09-26 00:36:35'),(38,'保定','保定市','130600','baoding','v_vqcailiu','2022-09-26 00:36:35'),(39,'张家口','张家口市','130700','zhangjiakou','v_vqcailiu','2022-09-26 00:36:35'),(40,'承德','承德市','130800','chengde','v_vqcailiu','2022-09-26 00:36:35'),(41,'沧州','沧州市','130900','cangzhou','v_vqcailiu','2022-09-26 00:36:35'),(42,'廊坊','廊坊市','131000','langfang','v_vqcailiu','2022-09-26 00:36:35'),(43,'衡水','衡水市','131100','hengshui','v_vqcailiu','2022-09-26 00:36:35'),(44,'太原','太原市','140100','taiyuan','v_vqcailiu','2022-09-26 00:36:35'),(45,'大同','大同市','140200','datong','v_vqcailiu','2022-09-26 00:36:35'),(46,'阳泉','阳泉市','140300','yangquan','v_vqcailiu','2022-09-26 00:36:35'),(47,'长治','长治市','140400','changzhi','v_vqcailiu','2022-09-26 00:36:35'),(48,'晋城','晋城市','140500','jincheng','v_vqcailiu','2022-09-26 00:36:35'),(49,'朔州','朔州市','140600','shuozhou','v_vqcailiu','2022-09-26 00:36:35'),(50,'晋中','晋中市','140700','jinzhong','v_vqcailiu','2022-09-26 00:36:35'),(51,'运城','运城市','140800','yuncheng','v_vqcailiu','2022-09-26 00:36:35'),(52,'忻州','忻州市','140900','xinzhou','v_vqcailiu','2022-09-26 00:36:35'),(53,'临汾','临汾市','141000','linfen','v_vqcailiu','2022-09-26 00:36:35'),(54,'吕梁','吕梁市','141100','lvliang','v_vqcailiu','2022-09-26 00:36:35'),(55,'呼和浩特','呼和浩特市','150100','huhehaote','v_vqcailiu','2022-09-26 00:36:35'),(56,'包头','包头市','150200','baotou','v_vqcailiu','2022-09-26 00:36:35'),(57,'乌海','乌海市','150300','wuhai','v_vqcailiu','2022-09-26 00:36:35'),(58,'赤峰','赤峰市','150400','chifeng','v_vqcailiu','2022-09-26 00:36:35'),(59,'通辽','通辽市','150500','tongliao','v_vqcailiu','2022-09-26 00:36:35'),(60,'鄂尔多斯','鄂尔多斯市','150600','eerduosi','v_vqcailiu','2022-09-26 00:36:35'),(61,'呼伦贝尔','呼伦贝尔市','150700','hulunbeier','v_vqcailiu','2022-09-26 00:36:35'),(62,'巴彦淖尔','巴彦淖尔市','150800','bayannaoer','v_vqcailiu','2022-09-26 00:36:35'),(63,'乌兰察布','乌兰察布市','150900','wulanchabu','v_vqcailiu','2022-09-26 00:36:35'),(64,'兴安','兴安盟','152200','xingan','v_vqcailiu','2022-09-26 00:36:35'),(65,'锡林郭勒','锡林郭勒盟','152500','xilinguole','v_vqcailiu','2022-09-26 00:36:35'),(66,'阿拉善','阿拉善盟','152900','alashan','v_vqcailiu','2022-09-26 00:36:35'),(67,'沈阳','沈阳市','210100','shenyang','v_vqcailiu','2022-09-26 00:36:35'),(68,'大连','大连市','210200','dalian','v_vqcailiu','2022-09-26 00:36:35'),(69,'鞍山','鞍山市','210300','anshan','v_vqcailiu','2022-09-26 00:36:35'),(70,'抚顺','抚顺市','210400','fushun','v_vqcailiu','2022-09-26 00:36:35'),(71,'本溪','本溪市','210500','benxi','v_vqcailiu','2022-09-26 00:36:35'),(72,'丹东','丹东市','210600','dandong','v_vqcailiu','2022-09-26 00:36:35'),(73,'锦州','锦州市','210700','jinzhou','v_vqcailiu','2022-09-26 00:36:35'),(74,'营口','营口市','210800','yingkou','v_vqcailiu','2022-09-26 00:36:35'),(75,'阜新','阜新市','210900','fuxin','v_vqcailiu','2022-09-26 00:36:35'),(76,'辽阳','辽阳市','211000','liaoyang','v_vqcailiu','2022-09-26 00:36:35'),(77,'盘锦','盘锦市','211100','panjin','v_vqcailiu','2022-09-26 00:36:35'),(78,'铁岭','铁岭市','211200','tieling','v_vqcailiu','2022-09-26 00:36:35'),(79,'朝阳','朝阳市','211300','chaoyang','v_vqcailiu','2022-09-26 00:36:35'),(80,'葫芦岛','葫芦岛市','211400','huludao','v_vqcailiu','2022-09-26 00:36:35'),(81,'长春','长春市','220100','changchun','v_vqcailiu','2022-09-26 00:36:35'),(82,'吉林','吉林市','220200','jilin','v_vqcailiu','2022-09-26 00:36:35'),(83,'四平','四平市','220300','siping','v_vqcailiu','2022-09-26 00:36:35'),(84,'辽源','辽源市','220400','liaoyuan','v_vqcailiu','2022-09-26 00:36:35'),(85,'通化','通化市','220500','tonghua','v_vqcailiu','2022-09-26 00:36:35'),(86,'白山','白山市','220600','baishan','v_vqcailiu','2022-09-26 00:36:35'),(87,'松原','松原市','220700','songyuan','v_vqcailiu','2022-09-26 00:36:35'),(88,'白城','白城市','220800','baicheng','v_vqcailiu','2022-09-26 00:36:35'),(89,'延边','延边朝鲜族自治州','222400','yanbian','v_vqcailiu','2022-09-26 00:36:35'),(90,'哈尔滨','哈尔滨市','230100','haerbin','v_vqcailiu','2022-09-26 00:36:35'),(91,'齐齐哈尔','齐齐哈尔市','230200','qiqihaer','v_vqcailiu','2022-09-26 00:36:35'),(92,'鸡西','鸡西市','230300','jixi','v_vqcailiu','2022-09-26 00:36:35'),(93,'鹤岗','鹤岗市','230400','hegang','v_vqcailiu','2022-09-26 00:36:35'),(94,'双鸭山','双鸭山市','230500','shuangyashan','v_vqcailiu','2022-09-26 00:36:35'),(95,'大庆','大庆市','230600','daqing','v_vqcailiu','2022-09-26 00:36:35'),(96,'伊春','伊春市','230700','yichun','v_vqcailiu','2022-09-26 00:36:35'),(97,'佳木斯','佳木斯市','230800','jiamusi','v_vqcailiu','2022-09-26 00:36:35'),(98,'七台河','七台河市','230900','qitaihe','v_vqcailiu','2022-09-26 00:36:35'),(99,'牡丹江','牡丹江市','231000','mudanjiang','v_vqcailiu','2022-09-26 00:36:35'),(100,'黑河','黑河市','231100','heihe','v_vqcailiu','2022-09-26 00:36:35'),(101,'绥化','绥化市','231200','suihua','v_vqcailiu','2022-09-26 00:36:35'),(102,'大兴安岭','大兴安岭地区','232700','daxinganling','v_vqcailiu','2022-09-26 00:36:35'),(103,'黄浦','黄浦区','310101','huangpu','v_vqcailiu','2022-09-26 00:36:35'),(104,'徐汇','徐汇区','310104','xuhui','v_vqcailiu','2022-09-26 00:36:35'),(105,'长宁','长宁区','310105','changning','v_vqcailiu','2022-09-26 00:36:35'),(106,'静安','静安区','310106','jingan','v_vqcailiu','2022-09-26 00:36:35'),(107,'普陀','普陀区','310107','putuo','v_vqcailiu','2022-09-26 00:36:35'),(108,'虹口','虹口区','310109','hongkou','v_vqcailiu','2022-09-26 00:36:35'),(109,'杨浦','杨浦区','310110','yangpu','v_vqcailiu','2022-09-26 00:36:35'),(110,'闵行','闵行区','310112','minhang','v_vqcailiu','2022-09-26 00:36:35'),(111,'宝山','宝山区','310113','baoshan','v_vqcailiu','2022-09-26 00:36:35'),(112,'嘉定','嘉定区','310114','jiading','v_vqcailiu','2022-09-26 00:36:35'),(113,'浦东','浦东新区','310115','pudong','v_vqcailiu','2022-09-26 00:36:35'),(114,'金山','金山区','310116','jinshan','v_vqcailiu','2022-09-26 00:36:35'),(115,'松江','松江区','310117','songjiang','v_vqcailiu','2022-09-26 00:36:35'),(116,'青浦','青浦区','310118','qingpu','v_vqcailiu','2022-09-26 00:36:35'),(117,'奉贤','奉贤区','310120','fengxian','v_vqcailiu','2022-09-26 00:36:35'),(118,'崇明','崇明区','310151','chongming','v_vqcailiu','2022-09-26 00:36:35'),(119,'南京','南京市','320100','nanjing','v_vqcailiu','2022-09-26 00:36:35'),(120,'无锡','无锡市','320200','wuxi','v_vqcailiu','2022-09-26 00:36:35'),(121,'徐州','徐州市','320300','xuzhou','v_vqcailiu','2022-09-26 00:36:35'),(122,'常州','常州市','320400','changzhou','v_vqcailiu','2022-09-26 00:36:35'),(123,'苏州','苏州市','320500','suzhou','v_vqcailiu','2022-09-26 00:36:35'),(124,'南通','南通市','320600','nantong','v_vqcailiu','2022-09-26 00:36:35'),(125,'连云港','连云港市','320700','lianyungang','v_vqcailiu','2022-09-26 00:36:35'),(126,'淮安','淮安市','320800','huaian','v_vqcailiu','2022-09-26 00:36:35'),(127,'盐城','盐城市','320900','yancheng','v_vqcailiu','2022-09-26 00:36:35'),(128,'扬州','扬州市','321000','yangzhou','v_vqcailiu','2022-09-26 00:36:35'),(129,'镇江','镇江市','321100','zhenjiang','v_vqcailiu','2022-09-26 00:36:35'),(130,'泰州','泰州市','321200','taizhou','v_vqcailiu','2022-09-26 00:36:35'),(131,'宿迁','宿迁市','321300','suqian','v_vqcailiu','2022-09-26 00:36:35'),(132,'杭州','杭州市','330100','hangzhou','v_vqcailiu','2022-09-26 00:36:35'),(133,'宁波','宁波市','330200','ningbo','v_vqcailiu','2022-09-26 00:36:35'),(134,'温州','温州市','330300','wenzhou','v_vqcailiu','2022-09-26 00:36:35'),(135,'嘉兴','嘉兴市','330400','jiaxing','v_vqcailiu','2022-09-26 00:36:35'),(136,'湖州','湖州市','330500','huzhou','v_vqcailiu','2022-09-26 00:36:35'),(137,'绍兴','绍兴市','330600','shaoxing','v_vqcailiu','2022-09-26 00:36:35'),(138,'金华','金华市','330700','jinhua','v_vqcailiu','2022-09-26 00:36:35'),(139,'衢州','衢州市','330800','quzhou','v_vqcailiu','2022-09-26 00:36:35'),(140,'舟山','舟山市','330900','zhoushan','v_vqcailiu','2022-09-26 00:36:35'),(141,'台州','台州市','331000','taizhou','v_vqcailiu','2022-09-26 00:36:35'),(142,'丽水','丽水市','331100','lishui','v_vqcailiu','2022-09-26 00:36:35'),(143,'合肥','合肥市','340100','hefei','v_vqcailiu','2022-09-26 00:36:35'),(144,'芜湖','芜湖市','340200','wuhu','v_vqcailiu','2022-09-26 00:36:35'),(145,'蚌埠','蚌埠市','340300','bengbu','v_vqcailiu','2022-09-26 00:36:35'),(146,'淮南','淮南市','340400','huainan','v_vqcailiu','2022-09-26 00:36:35'),(147,'马鞍山','马鞍山市','340500','maanshan','v_vqcailiu','2022-09-26 00:36:35'),(148,'淮北','淮北市','340600','huaibei','v_vqcailiu','2022-09-26 00:36:35'),(149,'铜陵','铜陵市','340700','tongling','v_vqcailiu','2022-09-26 00:36:35'),(150,'安庆','安庆市','340800','anqing','v_vqcailiu','2022-09-26 00:36:35'),(151,'黄山','黄山市','341000','huangshan','v_vqcailiu','2022-09-26 00:36:35'),(152,'滁州','滁州市','341100','chuzhou','v_vqcailiu','2022-09-26 00:36:35'),(153,'阜阳','阜阳市','341200','fuyang','v_vqcailiu','2022-09-26 00:36:35'),(154,'宿州','宿州市','341300','suzhou','v_vqcailiu','2022-09-26 00:36:35'),(155,'六安','六安市','341500','liuan','v_vqcailiu','2022-09-26 00:36:35'),(156,'亳州','亳州市','341600','bozhou','v_vqcailiu','2022-09-26 00:36:35'),(157,'池州','池州市','341700','chizhou','v_vqcailiu','2022-09-26 00:36:35'),(158,'宣城','宣城市','341800','xuancheng','v_vqcailiu','2022-09-26 00:36:35'),(159,'福州','福州市','350100','fuzhou','v_vqcailiu','2022-09-26 00:36:35'),(160,'厦门','厦门市','350200','xiamen','v_vqcailiu','2022-09-26 00:36:35'),(161,'莆田','莆田市','350300','putian','v_vqcailiu','2022-09-26 00:36:35'),(162,'三明','三明市','350400','sanming','v_vqcailiu','2022-09-26 00:36:35'),(163,'泉州','泉州市','350500','quanzhou','v_vqcailiu','2022-09-26 00:36:35'),(164,'漳州','漳州市','350600','zhangzhou','v_vqcailiu','2022-09-26 00:36:35'),(165,'南平','南平市','350700','nanping','v_vqcailiu','2022-09-26 00:36:35'),(166,'龙岩','龙岩市','350800','longyan','v_vqcailiu','2022-09-26 00:36:35'),(167,'宁德','宁德市','350900','ningde','v_vqcailiu','2022-09-26 00:36:35'),(168,'南昌','南昌市','360100','nanchang','v_vqcailiu','2022-09-26 00:36:35'),(169,'景德镇','景德镇市','360200','jingdezhen','v_vqcailiu','2022-09-26 00:36:35'),(170,'萍乡','萍乡市','360300','pingxiang','v_vqcailiu','2022-09-26 00:36:35'),(171,'九江','九江市','360400','jiujiang','v_vqcailiu','2022-09-26 00:36:35'),(172,'新余','新余市','360500','xinyu','v_vqcailiu','2022-09-26 00:36:35'),(173,'鹰潭','鹰潭市','360600','yingtan','v_vqcailiu','2022-09-26 00:36:35'),(174,'赣州','赣州市','360700','ganzhou','v_vqcailiu','2022-09-26 00:36:35'),(175,'吉安','吉安市','360800','jian','v_vqcailiu','2022-09-26 00:36:35'),(176,'宜春','宜春市','360900','yichun','v_vqcailiu','2022-09-26 00:36:35'),(177,'抚州','抚州市','361000','fuzhou','v_vqcailiu','2022-09-26 00:36:35'),(178,'上饶','上饶市','361100','shangrao','v_vqcailiu','2022-09-26 00:36:35'),(179,'济南','济南市','370100','jinan','v_vqcailiu','2022-09-26 00:36:35'),(180,'青岛','青岛市','370200','qingdao','v_vqcailiu','2022-09-26 00:36:35'),(181,'淄博','淄博市','370300','zibo','v_vqcailiu','2022-09-26 00:36:35'),(182,'枣庄','枣庄市','370400','zaozhuang','v_vqcailiu','2022-09-26 00:36:35'),(183,'东营','东营市','370500','dongying','v_vqcailiu','2022-09-26 00:36:35'),(184,'烟台','烟台市','370600','yantai','v_vqcailiu','2022-09-26 00:36:35'),(185,'潍坊','潍坊市','370700','weifang','v_vqcailiu','2022-09-26 00:36:35'),(186,'济宁','济宁市','370800','jining','v_vqcailiu','2022-09-26 00:36:35'),(187,'泰安','泰安市','370900','taian','v_vqcailiu','2022-09-26 00:36:35'),(188,'威海','威海市','371000','weihai','v_vqcailiu','2022-09-26 00:36:35'),(189,'日照','日照市','371100','rizhao','v_vqcailiu','2022-09-26 00:36:35'),(190,'临沂','临沂市','371300','linyi','v_vqcailiu','2022-09-26 00:36:35'),(191,'德州','德州市','371400','dezhou','v_vqcailiu','2022-09-26 00:36:35'),(192,'聊城','聊城市','371500','liaocheng','v_vqcailiu','2022-09-26 00:36:35'),(193,'滨州','滨州市','371600','binzhou','v_vqcailiu','2022-09-26 00:36:35'),(194,'菏泽','菏泽市','371700','heze','v_vqcailiu','2022-09-26 00:36:35'),(195,'郑州','郑州市','410100','zhengzhou','v_vqcailiu','2022-09-26 00:36:35'),(196,'开封','开封市','410200','kaifeng','v_vqcailiu','2022-09-26 00:36:35'),(197,'洛阳','洛阳市','410300','luoyang','v_vqcailiu','2022-09-26 00:36:35'),(198,'平顶山','平顶山市','410400','pingdingshan','v_vqcailiu','2022-09-26 00:36:35'),(199,'安阳','安阳市','410500','anyang','v_vqcailiu','2022-09-26 00:36:35'),(200,'鹤壁','鹤壁市','410600','hebi','v_vqcailiu','2022-09-26 00:36:35'),(201,'新乡','新乡市','410700','xinxiang','v_vqcailiu','2022-09-26 00:36:35'),(202,'焦作','焦作市','410800','jiaozuo','v_vqcailiu','2022-09-26 00:36:35'),(203,'濮阳','濮阳市','410900','puyang','v_vqcailiu','2022-09-26 00:36:35'),(204,'许昌','许昌市','411000','xuchang','v_vqcailiu','2022-09-26 00:36:35'),(205,'漯河','漯河市','411100','luohe','v_vqcailiu','2022-09-26 00:36:35'),(206,'三门峡','三门峡市','411200','sanmenxia','v_vqcailiu','2022-09-26 00:36:35'),(207,'南阳','南阳市','411300','nanyang','v_vqcailiu','2022-09-26 00:36:35'),(208,'商丘','商丘市','411400','shangqiu','v_vqcailiu','2022-09-26 00:36:35'),(209,'信阳','信阳市','411500','xinyang','v_vqcailiu','2022-09-26 00:36:35'),(210,'周口','周口市','411600','zhoukou','v_vqcailiu','2022-09-26 00:36:35'),(211,'驻马店','驻马店市','411700','zhumadian','v_vqcailiu','2022-09-26 00:36:35'),(212,'济源','济源市','419001','jiyuan','v_vqcailiu','2022-09-26 00:36:35'),(213,'武汉','武汉市','420100','wuhan','v_vqcailiu','2022-09-26 00:36:35'),(214,'黄石','黄石市','420200','huangshi','v_vqcailiu','2022-09-26 00:36:35'),(215,'十堰','十堰市','420300','shiyan','v_vqcailiu','2022-09-26 00:36:35'),(216,'宜昌','宜昌市','420500','yichang','v_vqcailiu','2022-09-26 00:36:35'),(217,'襄阳','襄阳市','420600','xiangyang','v_vqcailiu','2022-09-26 00:36:35'),(218,'鄂州','鄂州市','420700','ezhou','v_vqcailiu','2022-09-26 00:36:35'),(219,'荆门','荆门市','420800','jingmen','v_vqcailiu','2022-09-26 00:36:35'),(220,'孝感','孝感市','420900','xiaogan','v_vqcailiu','2022-09-26 00:36:35'),(221,'荆州','荆州市','421000','jingzhou','v_vqcailiu','2022-09-26 00:36:35'),(222,'黄冈','黄冈市','421100','huanggang','v_vqcailiu','2022-09-26 00:36:35'),(223,'咸宁','咸宁市','421200','xianning','v_vqcailiu','2022-09-26 00:36:35'),(224,'随州','随州市','421300','suizhou','v_vqcailiu','2022-09-26 00:36:35'),(225,'恩施','恩施土家族苗族自治州','422800','enshi','v_vqcailiu','2022-09-26 00:36:35'),(226,'仙桃','仙桃市','429004','xiantao','v_vqcailiu','2022-09-26 00:36:35'),(227,'潜江','潜江市','429005','qianjiang','v_vqcailiu','2022-09-26 00:36:35'),(228,'天门','天门市','429006','tianmen','v_vqcailiu','2022-09-26 00:36:35'),(229,'神农架','神农架林区','429021','shennongjia','v_vqcailiu','2022-09-26 00:36:35'),(230,'长沙','长沙市','430100','changsha','v_vqcailiu','2022-09-26 00:36:35'),(231,'株洲','株洲市','430200','zhuzhou','v_vqcailiu','2022-09-26 00:36:35'),(232,'湘潭','湘潭市','430300','xiangtan','v_vqcailiu','2022-09-26 00:36:35'),(233,'衡阳','衡阳市','430400','hengyang','v_vqcailiu','2022-09-26 00:36:35'),(234,'邵阳','邵阳市','430500','shaoyang','v_vqcailiu','2022-09-26 00:36:35'),(235,'岳阳','岳阳市','430600','yueyang','v_vqcailiu','2022-09-26 00:36:35'),(236,'常德','常德市','430700','changde','v_vqcailiu','2022-09-26 00:36:35'),(237,'张家界','张家界市','430800','zhangjiajie','v_vqcailiu','2022-09-26 00:36:35'),(238,'益阳','益阳市','430900','yiyang','v_vqcailiu','2022-09-26 00:36:35'),(239,'郴州','郴州市','431000','chenzhou','v_vqcailiu','2022-09-26 00:36:35'),(240,'永州','永州市','431100','yongzhou','v_vqcailiu','2022-09-26 00:36:35'),(241,'怀化','怀化市','431200','huaihua','v_vqcailiu','2022-09-26 00:36:35'),(242,'娄底','娄底市','431300','loudi','v_vqcailiu','2022-09-26 00:36:35'),(243,'湘西','湘西土家族苗族自治州','433100','xiangxi','v_vqcailiu','2022-09-26 00:36:35'),(244,'广州','广州市','440100','guangzhou','v_vqcailiu','2022-09-26 00:36:35'),(245,'韶关','韶关市','440200','shaoguan','v_vqcailiu','2022-09-26 00:36:35'),(246,'深圳','深圳市','440300','shenzhen','v_vqcailiu','2022-09-26 00:36:35'),(247,'珠海','珠海市','440400','zhuhai','v_vqcailiu','2022-09-26 00:36:35'),(248,'汕头','汕头市','440500','shantou','v_vqcailiu','2022-09-26 00:36:35'),(249,'佛山','佛山市','440600','foshan','v_vqcailiu','2022-09-26 00:36:35'),(250,'江门','江门市','440700','jiangmen','v_vqcailiu','2022-09-26 00:36:35'),(251,'湛江','湛江市','440800','zhanjiang','v_vqcailiu','2022-09-26 00:36:35'),(252,'茂名','茂名市','440900','maoming','v_vqcailiu','2022-09-26 00:36:35'),(253,'肇庆','肇庆市','441200','zhaoqing','v_vqcailiu','2022-09-26 00:36:35'),(254,'惠州','惠州市','441300','huizhou','v_vqcailiu','2022-09-26 00:36:35'),(255,'梅州','梅州市','441400','meizhou','v_vqcailiu','2022-09-26 00:36:35'),(256,'汕尾','汕尾市','441500','shanwei','v_vqcailiu','2022-09-26 00:36:35'),(257,'河源','河源市','441600','heyuan','v_vqcailiu','2022-09-26 00:36:35'),(258,'阳江','阳江市','441700','yangjiang','v_vqcailiu','2022-09-26 00:36:35'),(259,'清远','清远市','441800','qingyuan','v_vqcailiu','2022-09-26 00:36:35'),(260,'东莞','东莞市','441900','dongguan','v_vqcailiu','2022-09-26 00:36:35'),(261,'中山','中山市','442000','zhongshan','v_vqcailiu','2022-09-26 00:36:35'),(262,'潮州','潮州市','445100','chaozhou','v_vqcailiu','2022-09-26 00:36:35'),(263,'揭阳','揭阳市','445200','jieyang','v_vqcailiu','2022-09-26 00:36:35'),(264,'云浮','云浮市','445300','yunfu','v_vqcailiu','2022-09-26 00:36:35'),(265,'南宁','南宁市','450100','nanning','v_vqcailiu','2022-09-26 00:36:35'),(266,'柳州','柳州市','450200','liuzhou','v_vqcailiu','2022-09-26 00:36:35'),(267,'桂林','桂林市','450300','guilin','v_vqcailiu','2022-09-26 00:36:35'),(268,'梧州','梧州市','450400','wuzhou','v_vqcailiu','2022-09-26 00:36:35'),(269,'北海','北海市','450500','beihai','v_vqcailiu','2022-09-26 00:36:35'),(270,'防城港','防城港市','450600','fangchenggang','v_vqcailiu','2022-09-26 00:36:35'),(271,'钦州','钦州市','450700','qinzhou','v_vqcailiu','2022-09-26 00:36:35'),(272,'贵港','贵港市','450800','guigang','v_vqcailiu','2022-09-26 00:36:35'),(273,'玉林','玉林市','450900','yulin','v_vqcailiu','2022-09-26 00:36:35'),(274,'百色','百色市','451000','baise','v_vqcailiu','2022-09-26 00:36:35'),(275,'贺州','贺州市','451100','hezhou','v_vqcailiu','2022-09-26 00:36:35'),(276,'河池','河池市','451200','hechi','v_vqcailiu','2022-09-26 00:36:35'),(277,'来宾','来宾市','451300','laibin','v_vqcailiu','2022-09-26 00:36:35'),(278,'崇左','崇左市','451400','chongzuo','v_vqcailiu','2022-09-26 00:36:35'),(279,'海口','海口市','460100','haikou','v_vqcailiu','2022-09-26 00:36:35'),(280,'三亚','三亚市','460200','sanya','v_vqcailiu','2022-09-26 00:36:35'),(281,'三沙','三沙市','460300','sansha','v_vqcailiu','2022-09-26 00:36:35'),(282,'儋州','儋州市','460400','danzhou','v_vqcailiu','2022-09-26 00:36:35'),(283,'五指山','五指山市','469001','wuzhishan','v_vqcailiu','2022-09-26 00:36:35'),(284,'琼海','琼海市','469002','qionghai','v_vqcailiu','2022-09-26 00:36:35'),(285,'文昌','文昌市','469005','wenchang','v_vqcailiu','2022-09-26 00:36:35'),(286,'万宁','万宁市','469006','wanning','v_vqcailiu','2022-09-26 00:36:35'),(287,'东方','东方市','469007','dongfang','v_vqcailiu','2022-09-26 00:36:35'),(288,'定安','定安县','469021','dingan','v_vqcailiu','2022-09-26 00:36:35'),(289,'屯昌','屯昌县','469022','tunchang','v_vqcailiu','2022-09-26 00:36:35'),(290,'澄迈','澄迈县','469023','chengmai','v_vqcailiu','2022-09-26 00:36:35'),(291,'临高','临高县','469024','lingao','v_vqcailiu','2022-09-26 00:36:35'),(292,'白沙','白沙黎族自治县','469025','baisha','v_vqcailiu','2022-09-26 00:36:35'),(293,'昌江','昌江黎族自治县','469026','changjiang','v_vqcailiu','2022-09-26 00:36:35'),(294,'乐东','乐东黎族自治县','469027','ledong','v_vqcailiu','2022-09-26 00:36:35'),(295,'陵水','陵水黎族自治县','469028','lingshui','v_vqcailiu','2022-09-26 00:36:35'),(296,'保亭','保亭黎族苗族自治县','469029','baoting','v_vqcailiu','2022-09-26 00:36:35'),(297,'琼中','琼中黎族苗族自治县','469030','qiongzhong','v_vqcailiu','2022-09-26 00:36:35'),(298,'万州','万州区','500101','wanzhou','v_vqcailiu','2022-09-26 00:36:35'),(299,'涪陵','涪陵区','500102','fuling','v_vqcailiu','2022-09-26 00:36:35'),(300,'渝中','渝中区','500103','yuzhong','v_vqcailiu','2022-09-26 00:36:35'),(301,'大渡口','大渡口区','500104','dadukou','v_vqcailiu','2022-09-26 00:36:35'),(302,'江北','江北区','500105','jiangbei','v_vqcailiu','2022-09-26 00:36:35'),(303,'沙坪坝','沙坪坝区','500106','shapingba','v_vqcailiu','2022-09-26 00:36:35'),(304,'九龙坡','九龙坡区','500107','jiulongpo','v_vqcailiu','2022-09-26 00:36:35'),(305,'南岸','南岸区','500108','nanan','v_vqcailiu','2022-09-26 00:36:35'),(306,'北碚','北碚区','500109','beibei','v_vqcailiu','2022-09-26 00:36:35'),(307,'綦江','綦江区','500110','qijiang','v_vqcailiu','2022-09-26 00:36:35'),(308,'大足','大足区','500111','dazu','v_vqcailiu','2022-09-26 00:36:35'),(309,'渝北','渝北区','500112','yubei','v_vqcailiu','2022-09-26 00:36:35'),(310,'巴南','巴南区','500113','banan','v_vqcailiu','2022-09-26 00:36:35'),(311,'黔江','黔江区','500114','qianjiang','v_vqcailiu','2022-09-26 00:36:35'),(312,'长寿','长寿区','500115','changshou','v_vqcailiu','2022-09-26 00:36:35'),(313,'江津','江津区','500116','jiangjin','v_vqcailiu','2022-09-26 00:36:35'),(314,'合川','合川区','500117','hechuan','v_vqcailiu','2022-09-26 00:36:35'),(315,'永川','永川区','500118','yongchuan','v_vqcailiu','2022-09-26 00:36:35'),(316,'南川','南川区','500119','nanchuan','v_vqcailiu','2022-09-26 00:36:35'),(317,'璧山','璧山区','500120','bishan','v_vqcailiu','2022-09-26 00:36:35'),(318,'铜梁','铜梁区','500151','tongliang','v_vqcailiu','2022-09-26 00:36:35'),(319,'潼南','潼南区','500152','tongnan','v_vqcailiu','2022-09-26 00:36:35'),(320,'荣昌','荣昌区','500153','rongchang','v_vqcailiu','2022-09-26 00:36:35'),(321,'开州','开州区','500154','kaizhou','v_vqcailiu','2022-09-26 00:36:35'),(322,'梁平','梁平区','500155','liangping','v_vqcailiu','2022-09-26 00:36:35'),(323,'武隆','武隆区','500156','wulong','v_vqcailiu','2022-09-26 00:36:35'),(324,'城口','城口县','500229','chengkou','v_vqcailiu','2022-09-26 00:36:35'),(325,'丰都','丰都县','500230','fengdu','v_vqcailiu','2022-09-26 00:36:35'),(326,'垫江','垫江县','500231','dianjiang','v_vqcailiu','2022-09-26 00:36:35'),(327,'忠县','忠县','500233','zhongxian','v_vqcailiu','2022-09-26 00:36:35'),(328,'云阳','云阳县','500235','yunyang','v_vqcailiu','2022-09-26 00:36:35'),(329,'奉节','奉节县','500236','fengjie','v_vqcailiu','2022-09-26 00:36:35'),(330,'巫山','巫山县','500237','wushan','v_vqcailiu','2022-09-26 00:36:35'),(331,'巫溪','巫溪县','500238','wuxi','v_vqcailiu','2022-09-26 00:36:35'),(332,'石柱','石柱土家族自治县','500240','shizhu','v_vqcailiu','2022-09-26 00:36:35'),(333,'秀山','秀山土家族苗族自治县','500241','xiushan','v_vqcailiu','2022-09-26 00:36:35'),(334,'酉阳','酉阳土家族苗族自治县','500242','youyang','v_vqcailiu','2022-09-26 00:36:35'),(335,'彭水','彭水苗族土家族自治县','500243','pengshui','v_vqcailiu','2022-09-26 00:36:35'),(336,'成都','成都市','510100','chengdu','v_vqcailiu','2022-09-26 00:36:35'),(337,'自贡','自贡市','510300','zigong','v_vqcailiu','2022-09-26 00:36:35'),(338,'攀枝花','攀枝花市','510400','panzhihua','v_vqcailiu','2022-09-26 00:36:35'),(339,'泸州','泸州市','510500','luzhou','v_vqcailiu','2022-09-26 00:36:35'),(340,'德阳','德阳市','510600','deyang','v_vqcailiu','2022-09-26 00:36:35'),(341,'绵阳','绵阳市','510700','mianyang','v_vqcailiu','2022-09-26 00:36:35'),(342,'广元','广元市','510800','guangyuan','v_vqcailiu','2022-09-26 00:36:35'),(343,'遂宁','遂宁市','510900','suining','v_vqcailiu','2022-09-26 00:36:35'),(344,'内江','内江市','511000','neijiang','v_vqcailiu','2022-09-26 00:36:35'),(345,'乐山','乐山市','511100','leshan','v_vqcailiu','2022-09-26 00:36:35'),(346,'南充','南充市','511300','nanchong','v_vqcailiu','2022-09-26 00:36:35'),(347,'眉山','眉山市','511400','meishan','v_vqcailiu','2022-09-26 00:36:35'),(348,'宜宾','宜宾市','511500','yibin','v_vqcailiu','2022-09-26 00:36:35'),(349,'广安','广安市','511600','guangan','v_vqcailiu','2022-09-26 00:36:35'),(350,'达州','达州市','511700','dazhou','v_vqcailiu','2022-09-26 00:36:35'),(351,'雅安','雅安市','511800','yaan','v_vqcailiu','2022-09-26 00:36:35'),(352,'巴中','巴中市','511900','bazhong','v_vqcailiu','2022-09-26 00:36:35'),(353,'资阳','资阳市','512000','ziyang','v_vqcailiu','2022-09-26 00:36:35'),(354,'阿坝','阿坝藏族羌族自治州','513200','aba','v_vqcailiu','2022-09-26 00:36:35'),(355,'甘孜','甘孜藏族自治州','513300','ganzi','v_vqcailiu','2022-09-26 00:36:35'),(356,'凉山','凉山彝族自治州','513400','liangshan','v_vqcailiu','2022-09-26 00:36:35'),(357,'贵阳','贵阳市','520100','guiyang','v_vqcailiu','2022-09-26 00:36:35'),(358,'六盘水','六盘水市','520200','liupanshui','v_vqcailiu','2022-09-26 00:36:35'),(359,'遵义','遵义市','520300','zunyi','v_vqcailiu','2022-09-26 00:36:35'),(360,'安顺','安顺市','520400','anshun','v_vqcailiu','2022-09-26 00:36:35'),(361,'毕节','毕节市','520500','bijie','v_vqcailiu','2022-09-26 00:36:35'),(362,'铜仁','铜仁市','520600','tongren','v_vqcailiu','2022-09-26 00:36:35'),(363,'黔西南','黔西南布依族苗族自治州','522300','qianxinan','v_vqcailiu','2022-09-26 00:36:35'),(364,'黔东南','黔东南苗族侗族自治州','522600','qiandongnan','v_vqcailiu','2022-09-26 00:36:35'),(365,'黔南','黔南布依族苗族自治州','522700','qiannan','v_vqcailiu','2022-09-26 00:36:35'),(366,'昆明','昆明市','530100','kunming','v_vqcailiu','2022-09-26 00:36:35'),(367,'曲靖','曲靖市','530300','qujing','v_vqcailiu','2022-09-26 00:36:35'),(368,'玉溪','玉溪市','530400','yuxi','v_vqcailiu','2022-09-26 00:36:35'),(369,'保山','保山市','530500','baoshan','v_vqcailiu','2022-09-26 00:36:35'),(370,'昭通','昭通市','530600','zhaotong','v_vqcailiu','2022-09-26 00:36:35'),(371,'丽江','丽江市','530700','lijiang','v_vqcailiu','2022-09-26 00:36:35'),(372,'普洱','普洱市','530800','puer','v_vqcailiu','2022-09-26 00:36:35'),(373,'临沧','临沧市','530900','lincang','v_vqcailiu','2022-09-26 00:36:35'),(374,'楚雄','楚雄彝族自治州','532300','chuxiong','v_vqcailiu','2022-09-26 00:36:35'),(375,'红河','红河哈尼族彝族自治州','532500','honghe','v_vqcailiu','2022-09-26 00:36:35'),(376,'文山','文山壮族苗族自治州','532600','wenshan','v_vqcailiu','2022-09-26 00:36:35'),(377,'西双版纳','西双版纳傣族自治州','532800','xishuangbanna','v_vqcailiu','2022-09-26 00:36:35'),(378,'大理','大理白族自治州','532900','dali','v_vqcailiu','2022-09-26 00:36:35'),(379,'德宏','德宏傣族景颇族自治州','533100','dehong','v_vqcailiu','2022-09-26 00:36:35'),(380,'怒江','怒江傈僳族自治州','533300','nujiang','v_vqcailiu','2022-09-26 00:36:35'),(381,'迪庆','迪庆藏族自治州','533400','diqing','v_vqcailiu','2022-09-26 00:36:35'),(382,'拉萨','拉萨市','540100','lasa','v_vqcailiu','2022-09-26 00:36:35'),(383,'日喀则','日喀则市','540200','rikaze','v_vqcailiu','2022-09-26 00:36:35'),(384,'昌都','昌都市','540300','changdu','v_vqcailiu','2022-09-26 00:36:35'),(385,'林芝','林芝市','540400','linzhi','v_vqcailiu','2022-09-26 00:36:35'),(386,'山南','山南市','540500','shannan','v_vqcailiu','2022-09-26 00:36:35'),(387,'那曲','那曲市','540600','naqu','v_vqcailiu','2022-09-26 00:36:35'),(388,'阿里','阿里地区','542500','ali','v_vqcailiu','2022-09-26 00:36:35'),(389,'西安','西安市','610100','xian','v_vqcailiu','2022-09-26 00:36:35'),(390,'铜川','铜川市','610200','tongchuan','v_vqcailiu','2022-09-26 00:36:35'),(391,'宝鸡','宝鸡市','610300','baoji','v_vqcailiu','2022-09-26 00:36:35'),(392,'咸阳','咸阳市','610400','xianyang','v_vqcailiu','2022-09-26 00:36:35'),(393,'渭南','渭南市','610500','weinan','v_vqcailiu','2022-09-26 00:36:35'),(394,'延安','延安市','610600','yanan','v_vqcailiu','2022-09-26 00:36:35'),(395,'汉中','汉中市','610700','hanzhong','v_vqcailiu','2022-09-26 00:36:35'),(396,'榆林','榆林市','610800','yulin','v_vqcailiu','2022-09-26 00:36:35'),(397,'安康','安康市','610900','ankang','v_vqcailiu','2022-09-26 00:36:35'),(398,'商洛','商洛市','611000','shangluo','v_vqcailiu','2022-09-26 00:36:35'),(399,'兰州','兰州市','620100','lanzhou','v_vqcailiu','2022-09-26 00:36:35'),(400,'嘉峪关','嘉峪关市','620200','jiayuguan','v_vqcailiu','2022-09-26 00:36:35'),(401,'金昌','金昌市','620300','jinchang','v_vqcailiu','2022-09-26 00:36:35'),(402,'白银','白银市','620400','baiyin','v_vqcailiu','2022-09-26 00:36:35'),(403,'天水','天水市','620500','tianshui','v_vqcailiu','2022-09-26 00:36:35'),(404,'武威','武威市','620600','wuwei','v_vqcailiu','2022-09-26 00:36:35'),(405,'张掖','张掖市','620700','zhangye','v_vqcailiu','2022-09-26 00:36:35'),(406,'平凉','平凉市','620800','pingliang','v_vqcailiu','2022-09-26 00:36:35'),(407,'酒泉','酒泉市','620900','jiuquan','v_vqcailiu','2022-09-26 00:36:35'),(408,'庆阳','庆阳市','621000','qingyang','v_vqcailiu','2022-09-26 00:36:35'),(409,'定西','定西市','621100','dingxi','v_vqcailiu','2022-09-26 00:36:35'),(410,'陇南','陇南市','621200','longnan','v_vqcailiu','2022-09-26 00:36:35'),(411,'临夏','临夏回族自治州','622900','linxia','v_vqcailiu','2022-09-26 00:36:35'),(412,'甘南','甘南藏族自治州','623000','gannan','v_vqcailiu','2022-09-26 00:36:35'),(413,'西宁','西宁市','630100','xining','v_vqcailiu','2022-09-26 00:36:35'),(414,'海东','海东市','630200','haidong','v_vqcailiu','2022-09-26 00:36:35'),(415,'海北','海北藏族自治州','632200','haibei','v_vqcailiu','2022-09-26 00:36:35'),(416,'黄南','黄南藏族自治州','632300','huangnan','v_vqcailiu','2022-09-26 00:36:35'),(417,'海南','海南藏族自治州','632500','hainan','v_vqcailiu','2022-09-26 00:36:35'),(418,'果洛','果洛藏族自治州','632600','guoluo','v_vqcailiu','2022-09-26 00:36:35'),(419,'玉树','玉树藏族自治州','632700','yushu','v_vqcailiu','2022-09-26 00:36:35'),(420,'海西','海西蒙古族藏族自治州','632800','haixi','v_vqcailiu','2022-09-26 00:36:35'),(421,'银川','银川市','640100','yinchuan','v_vqcailiu','2022-09-26 00:36:35'),(422,'石嘴山','石嘴山市','640200','shizuishan','v_vqcailiu','2022-09-26 00:36:35'),(423,'吴忠','吴忠市','640300','wuzhong','v_vqcailiu','2022-09-26 00:36:35'),(424,'固原','固原市','640400','guyuan','v_vqcailiu','2022-09-26 00:36:35'),(425,'中卫','中卫市','640500','zhongwei','v_vqcailiu','2022-09-26 00:36:35'),(426,'乌鲁木齐','乌鲁木齐市','650100','wulumuqi','v_vqcailiu','2022-09-26 00:36:35'),(427,'克拉玛依','克拉玛依市','650200','kelamayi','v_vqcailiu','2022-09-26 00:36:35'),(428,'吐鲁番','吐鲁番市','650400','tulufan','v_vqcailiu','2022-09-26 00:36:35'),(429,'哈密','哈密市','650500','hami','v_vqcailiu','2022-09-26 00:36:35'),(430,'昌吉','昌吉回族自治州','652300','changji','v_vqcailiu','2022-09-26 00:36:35'),(431,'博州','博尔塔拉蒙古自治州','652700','bozhou','v_vqcailiu','2022-09-26 00:36:35'),(432,'巴州','巴音郭楞蒙古自治州','652800','bazhou','v_vqcailiu','2022-09-26 00:36:35'),(433,'阿克苏','阿克苏地区','652900','akesu','v_vqcailiu','2022-09-26 00:36:35'),(434,'克州','克孜勒苏柯尔克孜自治州','653000','kezhou','v_vqcailiu','2022-09-26 00:36:35'),(435,'喀什','喀什地区','653100','kashi','v_vqcailiu','2022-09-26 00:36:35'),(436,'和田','和田地区','653200','hetian','v_vqcailiu','2022-09-26 00:36:35'),(437,'伊犁','伊犁哈萨克自治州','654000','yili','v_vqcailiu','2022-09-26 00:36:35'),(438,'塔城','塔城地区','654200','tacheng','v_vqcailiu','2022-09-26 00:36:35'),(439,'阿勒泰','阿勒泰地区','654300','aletai','v_vqcailiu','2022-09-26 00:36:35'),(440,'石河子','石河子市','659001','shihezi','v_vqcailiu','2022-09-26 00:36:35'),(441,'阿拉尔','阿拉尔市','659002','alaer','v_vqcailiu','2022-09-26 00:36:35'),(442,'图木舒克','图木舒克市','659003','tumushuke','v_vqcailiu','2022-09-26 00:36:35'),(443,'五家渠','五家渠市','659004','wujiaqu','v_vqcailiu','2022-09-26 00:36:35'),(444,'北屯','北屯市','659005','beitun','v_vqcailiu','2022-09-26 00:36:35'),(445,'铁门关','铁门关市','659006','tiemenguan','v_vqcailiu','2022-09-26 00:36:35'),(446,'双河','双河市','659007','shuanghe','v_vqcailiu','2022-09-26 00:36:35'),(447,'可克达拉','可克达拉市','659008','kekedala','v_vqcailiu','2022-09-26 00:36:35'),(448,'昆玉','昆玉市','659009','kunyu','v_vqcailiu','2022-09-26 00:36:35'),(449,'胡杨河','胡杨河市','659010','huyanghe','v_vqcailiu','2022-09-26 00:36:35'),(450,'台北','台北市','710100','taibei','v_vqcailiu','2022-09-26 00:36:35'),(451,'高雄','高雄市','710200','gaoxiong','v_vqcailiu','2022-09-26 00:36:35'),(452,'台南','台南市','710300','tainan','v_vqcailiu','2022-09-26 00:36:35'),(453,'台中','台中市','710400','taizhong','v_vqcailiu','2022-09-26 00:36:35'),(454,'南投','南投县','710600','nantou','v_vqcailiu','2022-09-26 00:36:35'),(455,'基隆','基隆市','710700','jilong','v_vqcailiu','2022-09-26 00:36:35'),(456,'新竹','新竹市','710800','xinzhu','v_vqcailiu','2022-09-26 00:36:35'),(457,'嘉义','嘉义市','710900','jiayi','v_vqcailiu','2022-09-26 00:36:35'),(458,'新北','新北市','711100','xinbei','v_vqcailiu','2022-09-26 00:36:35'),(459,'宜兰','宜兰县','711200','yilan','v_vqcailiu','2022-09-26 00:36:35'),(460,'新竹','新竹县','711300','xinzhu','v_vqcailiu','2022-09-26 00:36:35'),(461,'桃园','桃园市','711400','taoyuan','v_vqcailiu','2022-09-26 00:36:35'),(462,'苗栗','苗栗县','711500','miaoli','v_vqcailiu','2022-09-26 00:36:35'),(463,'彰化','彰化县','711700','zhanghua','v_vqcailiu','2022-09-26 00:36:35'),(464,'嘉义','嘉义县','711900','jiayi','v_vqcailiu','2022-09-26 00:36:35'),(465,'云林','云林县','712100','yunlin','v_vqcailiu','2022-09-26 00:36:35'),(466,'屏东','屏东县','712400','pingdong','v_vqcailiu','2022-09-26 00:36:35'),(467,'台东','台东县','712500','taidong','v_vqcailiu','2022-09-26 00:36:35'),(468,'花莲','花莲县','712600','hualian','v_vqcailiu','2022-09-26 00:36:35'),(469,'澎湖','澎湖县','712700','penghu','v_vqcailiu','2022-09-26 00:36:35'),(470,'中西区','中西区','810101','zhongxiqu','v_vqcailiu','2022-09-26 00:36:35'),(471,'东区','东区','810102','dongqu','v_vqcailiu','2022-09-26 00:36:35'),(472,'九龙','九龙城区','810103','jiulong','v_vqcailiu','2022-09-26 00:36:35'),(473,'观塘区','观塘区','810104','guantangqu','v_vqcailiu','2022-09-26 00:36:35'),(474,'南区','南区','810105','nanqu','v_vqcailiu','2022-09-26 00:36:35'),(475,'深水埗区','深水埗区','810106','shenshuibuqu','v_vqcailiu','2022-09-26 00:36:35'),(476,'湾仔区','湾仔区','810107','wanziqu','v_vqcailiu','2022-09-26 00:36:35'),(477,'黄大仙区','黄大仙区','810108','huangdaxianqu','v_vqcailiu','2022-09-26 00:36:35'),(478,'油尖旺区','油尖旺区','810109','youjianwangqu','v_vqcailiu','2022-09-26 00:36:35'),(479,'离岛区','离岛区','810110','lidaoqu','v_vqcailiu','2022-09-26 00:36:35'),(480,'葵青区','葵青区','810111','kuiqingqu','v_vqcailiu','2022-09-26 00:36:35'),(481,'北区','北区','810112','beiqu','v_vqcailiu','2022-09-26 00:36:35'),(482,'西贡区','西贡区','810113','xigongqu','v_vqcailiu','2022-09-26 00:36:35'),(483,'沙田区','沙田区','810114','shatianqu','v_vqcailiu','2022-09-26 00:36:35'),(484,'屯门区','屯门区','810115','tunmenqu','v_vqcailiu','2022-09-26 00:36:35'),(485,'大埔区','大埔区','810116','dapuqu','v_vqcailiu','2022-09-26 00:36:35'),(486,'荃湾区','荃湾区','810117','quanwanqu','v_vqcailiu','2022-09-26 00:36:35'),(487,'元朗区','元朗区','810118','yuanlangqu','v_vqcailiu','2022-09-26 00:36:35'),(488,'澳门半岛','澳门半岛','820101','aomenbandao','v_vqcailiu','2022-09-26 00:36:35'),(489,'凼仔','凼仔','820102','dangzi','v_vqcailiu','2022-09-26 00:36:35'),(490,'路凼城','路凼城','820103','ludangcheng','v_vqcailiu','2022-09-26 00:36:35'),(491,'路环','路环','820104','luhuan','v_vqcailiu','2022-09-26 00:36:35');
/*!40000 ALTER TABLE `t_city_map` ENABLE KEYS */;
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
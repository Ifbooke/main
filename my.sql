-- MySQL dump 10.13  Distrib 5.5.52, for linux2.6 (x86_64)
--
-- Host: localhost    Database: main
-- ------------------------------------------------------
-- Server version	5.5.52-log

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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` tinyint(3) DEFAULT NULL COMMENT '父ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `url` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '链接',
  `icon` varchar(255) DEFAULT NULL COMMENT 'class图标',
  `sort` tinyint(2) NOT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='标题 链接表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,0,'今日头条','/new',NULL,1,'2016-11-16 20:21:58'),(2,0,'动漫','/manga',NULL,2,'2016-11-16 20:22:00'),(3,0,'音乐','/music',NULL,3,'2016-11-16 20:23:34'),(4,0,'读书','/book',NULL,4,'2016-11-16 20:23:57');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_news`
--

DROP TABLE IF EXISTS `top_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `desc` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `content` text COLLATE utf8_unicode_ci COMMENT '内容',
  `url` varchar(200) CHARACTER SET latin1 DEFAULT NULL COMMENT '链接',
  `pic_url` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT '图片链接',
  `sort` tinyint(3) DEFAULT NULL COMMENT '排序',
  `category` int(11) DEFAULT NULL COMMENT '类别',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 0：不可用，1：可用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `sign` tinyint(2) DEFAULT NULL COMMENT '标志 头部 中部 底部',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_news`
--

LOCK TABLES `top_news` WRITE;
/*!40000 ALTER TABLE `top_news` DISABLE KEYS */;
INSERT INTO `top_news` VALUES (19,'DDanted to show a little in-progr','I created for my Stranger Things piece!','gogogo','/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/02/07/ChMkJ1bKy0aIY1KaAA3JYVGTfY8AALIogGF2ZkADcl5805.jpg',1,1,1,'2016-11-17 10:58:15',1),(20,'如果川普当选总统，对美国是福是祸？如果川普当选总统，对美国是福是祸？如果川普当选总统，对美国是福是祸？','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/02/04/ChMkJlbKyB2IZe7QAAOmwThzhfkAALH9QPTUVsAA6bZ565.jpg',2,1,1,'2016-11-17 10:58:15',1),(21,'911之前的美国是什么样的？','I created for my Stranger Things piece!','<img src=\"https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/06e3fa43695635.57f90c038795d.jpg\" />\r\n<img src=\"https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/15716143695635.57fa2fdeac791.jpg\" />\r\n<img src=\"https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/fc43b243695635.57fa2fdead8ae.jpg\" />\r\n<img src=\"https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/06e3fa43695635.57f90c038795d.jpg\" />\r\n<img src=\"https://mir-s3-cdn-cf.behance.net/project_modules/1400/60897043695635.57fa2fdeae8ee.jpg\" />\r\n<img src=\"https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/06e3fa43695635.57f90c038795d.jpg\" />','/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/02/0A/ChMkJ1ZucGmILUw6AAQNq9c8baYAAGJygBD568ABA3D317.jpg',3,1,1,'2016-11-17 10:58:15',2),(22,'看新闻写到「年薪百万，要交 40 多万的税」，这一说法是否准确？','I created for my Stranger Things piece!','<p><br></p><p><b><font color=\"#808000\">老司机要开车啦</font></b></p><p><img src=\"https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/3e7fbc43695635.57f90c0389365.jpg\"></p><p><img src=\"https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/3e7fbc43695635.57f90c0389365.jpg\"></p><p><br></p><p><img src=\"https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/3e7fbc43695635.57f90c0389365.jpg\"></p><p><img src=\"https://mir-s3-cdn-cf.behance.net/project_modules/1400/60897043695635.57fa2fdeae8ee.jpg\"></p><p><br></p><p><br></p>','/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/02/0A/ChMkJ1ZucGiIROKiAAUovnd-nKYAAGJyQNh-yEABSjW785.jpg',4,1,1,'2016-11-17 10:58:15',2),(23,'2016 年美国大选，希拉里输在哪儿','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/06/08/ChMkJ1ZXvYuIBgwTAAS3zVB-lRIAAFZcgEg_uUABLfl181.jpg',5,1,1,'2016-11-17 10:58:15',2),(24,'Wanted to show a little in-progr','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/02/0A/ChMkJ1bKz4CIWn4HAA_ZwkdCYBcAALJVwJoxTYAD9na337.jpg',6,1,1,'2016-11-17 10:58:15',3),(25,'Wanted to show a little in-progr','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/02/0A/ChMkJlbKz4GIEpDQAAj1iyFKGfYAALJVwM4n2sACPWj637.jpg',7,1,1,'2016-11-17 10:58:15',3),(26,'看新闻写到「年薪百万要交 40 多万的税」，这一说法是否准确？看新闻写到「年薪百万，要交 40 多万的税」，这一说法是否准确？看新闻写到「年薪百万，要交 40 多万的税」，这一说法是否准确？看新闻写到「年薪百万，要交 40 多万的税」，这一说法是否准确？','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/08/01/ChMkJlafP7iIXRYsAAna0Ao0MSoAAHfYgLjwaoACdro013.jpg',8,1,1,'2016-11-17 10:58:15',3),(27,'Wanted to show a little in-progr','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s144x90c5/g5/M00/08/01/ChMkJlafP8SIMkhKAAmVsOrMLxQAAHfZQA0YBcACZXI618.jpg',9,1,1,'2016-11-17 10:58:15',3),(28,'Wanted to show a little in-progr','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/04/05/ChMkJ1aV4paIGXfNABBEtvSyR_4AAHQXwM2Jr8AEETO469.jpg',10,1,1,'2016-11-17 10:58:15',3),(29,'Wanted to show a little in-progr','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/04/05/ChMkJlaV4oWINNUsABNOz1FJqh8AAHQXQIMp_QAE07n970.jpg',11,1,1,'2016-11-17 10:58:15',3),(30,'Wanted to show a little in-progr','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/04/05/ChMkJlaV4pOINkt-ABEo20GIjyEAAHQXwGqnIIAESjz205.jpg',12,1,1,'2016-11-17 10:58:15',3),(31,'Wanted to show a little in-progr','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g2/M00/00/0C/Cg-4WVVBxnmIL6v4AAreM2GH6UEAACmxQNDmXcACt5L912.jpg',13,1,1,'2016-11-17 10:58:15',3),(32,'Wanted to show a little in-progr','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/02/08/ChMkJ1bKzQWISybgAChD35IcftgAALI8QGkmpEAKEP3605.jpg',14,1,1,'2016-11-17 10:58:15',3),(33,'Wanted to show a little in-progr','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/02/07/ChMkJ1bKy46ISNbxAAlkfNgt6XwAALIsgBzhmYACWSU050.jpg',15,1,1,'2016-11-17 10:58:15',3),(34,'Wanted to show a little in-progr','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/02/00/ChMkJlbKw_6ICsBtAArgvekH7-oAALG_wF9tx8ACuDV426.jpg',16,1,1,'2016-11-17 10:58:15',3),(35,'Wanted to show a little in-progr','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/01/0F/ChMkJ1bKwsCIM77EAA9knoGV1JgAALGsgPufYgAD2S2338.jpg',17,1,1,'2016-11-17 10:58:15',3),(36,'看新闻写到「年薪百万要交 40 多万的税」，这一说法是否准确？看新闻写到「年薪百万，要交 40 多万的税」，这一说法是否准确？看新闻写到「年薪百万，要交 40 多万的税」，这一说法是否准确？看新闻写到「年薪百万，要交 40 多万的税」，这一说法是否准确？','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/08/01/ChMkJlafP7iIXRYsAAna0Ao0MSoAAHfYgLjwaoACdro013.jpg',18,1,1,'2016-11-17 10:58:15',3),(37,'看新闻写到「年薪百万要交 40 多万的税」，这一说法是否准确？看新闻写到「年薪百万，要交 40 多万的税」，这一说法是否准确？看新闻写到「年薪百万，要交 40 多万的税」，这一说法是否准确？看新闻写到「年薪百万，要交 40 多万的税」，这一说法是否准确？','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/08/01/ChMkJlafP7iIXRYsAAna0Ao0MSoAAHfYgLjwaoACdro013.jpg',19,1,1,'2016-11-17 10:58:15',3),(38,'看新闻写到「年薪百万要交 40 多万的税」，这一说法是否准确？看新闻写到「年薪百万，要交 40 多万的税」，这一说法是否准确？看新闻写到「年薪百万，要交 40 多万的税」，这一说法是否准确？看新闻写到「年薪百万，要交 40 多万的税」，这一说法是否准确？','I created for my Stranger Things piece!',NULL,'/top','http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/08/01/ChMkJlafP7iIXRYsAAna0Ao0MSoAAHfYgLjwaoACdro013.jpg',8,1,1,'2016-11-17 10:58:15',3);
/*!40000 ALTER TABLE `top_news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-19 12:25:27

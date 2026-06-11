-- MySQL dump 10.13  Distrib 5.6.50, for Linux (x86_64)
--
-- Host: localhost    Database: testsql
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `pay_anounce`
--

DROP TABLE IF EXISTS `pay_anounce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_anounce` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` text,
  `color` varchar(10) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `addtime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_anounce`
--

LOCK TABLES `pay_anounce` WRITE;
/*!40000 ALTER TABLE `pay_anounce` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_anounce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_batch`
--

DROP TABLE IF EXISTS `pay_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_batch` (
  `batch` varchar(20) NOT NULL,
  `allmoney` decimal(10,2) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `time` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`batch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_batch`
--

LOCK TABLES `pay_batch` WRITE;
/*!40000 ALTER TABLE `pay_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_cache`
--

DROP TABLE IF EXISTS `pay_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_cache` (
  `k` varchar(32) NOT NULL,
  `v` longtext,
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`k`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_cache`
--

LOCK TABLES `pay_cache` WRITE;
/*!40000 ALTER TABLE `pay_cache` DISABLE KEYS */;
INSERT INTO `pay_cache` VALUES ('config','a:59:{s:12:\"admin_paypwd\";s:6:\"123456\";s:9:\"admin_pwd\";s:6:\"123456\";s:10:\"admin_user\";s:5:\"admin\";s:10:\"blockalert\";s:72:\"温馨提醒该商品禁止出售，如有疑问请联系网站客服！\";s:9:\"blockname\";s:206:\"百度云|摆渡|云盘|点券|芸盘|萝莉|罗莉|网盘|黑号|q币|Q币|扣币|qq货币|QQ货币|花呗|baidu云|bd云|吃鸡|透视|自瞄|后座|穿墙|脚本|外挂|模拟|辅助|检测|武器|套装\";s:5:\"build\";s:10:\"2021-10-15\";s:10:\"captcha_id\";s:32:\"b31335edde91b2f98dacd393f6ae6de8\";s:11:\"captcha_key\";s:32:\"170d2349acef92b7396c7157eb9d8f47\";s:12:\"captcha_open\";s:1:\"1\";s:7:\"cronkey\";s:6:\"842816\";s:11:\"description\";s:270:\"彩虹易支付是八爷源码亲测8ye.net旗下的免签约支付产品，完美解决支付难题，一站式接入支付宝，微信，财付通，QQ钱包,微信wap，帮助开发者快速集成到自己相应产品，效率高，见效快，费率低！\";s:8:\"homepage\";s:1:\"1\";s:8:\"keywords\";s:121:\"彩虹易支付,支付宝免签约即时到账,财付通免签约,微信免签约支付,QQ钱包免签约,免签约支付\";s:4:\"kfqq\";s:9:\"8ye.net\";s:8:\"localurl\";s:23:\"http://chyzf.8ye.net/\";s:12:\"login_alipay\";s:1:\"0\";s:20:\"login_alipay_channel\";s:1:\"0\";s:8:\"login_qq\";s:1:\"0\";s:14:\"login_qq_appid\";s:9:\"310786672\";s:15:\"login_qq_appkey\";s:16:\"mkgbmYqS8IZzfGqn\";s:8:\"login_wx\";s:1:\"0\";s:16:\"login_wx_channel\";s:1:\"0\";s:10:\"mail_cloud\";s:1:\"0\";s:9:\"mail_name\";s:0:\"\";s:9:\"mail_port\";s:3:\"465\";s:8:\"mail_pwd\";s:0:\"\";s:9:\"mail_smtp\";s:11:\"smtp.qq.com\";s:7:\"onecode\";s:1:\"1\";s:7:\"orgname\";s:36:\"八爷源码亲测8ye.net\";s:12:\"pay_maxmoney\";s:4:\"1000\";s:8:\"recharge\";s:1:\"1\";s:8:\"reg_open\";s:1:\"1\";s:7:\"reg_pay\";s:1:\"1\";s:13:\"reg_pay_price\";s:1:\"5\";s:11:\"reg_pay_uid\";s:4:\"1000\";s:13:\"settle_alipay\";s:1:\"1\";s:11:\"settle_bank\";s:1:\"0\";s:14:\"settle_fee_max\";s:2:\"20\";s:14:\"settle_fee_min\";s:3:\"0.1\";s:12:\"settle_money\";s:2:\"30\";s:11:\"settle_open\";s:1:\"1\";s:12:\"settle_qqpay\";s:1:\"1\";s:11:\"settle_rate\";s:3:\"0.5\";s:11:\"settle_type\";s:1:\"1\";s:12:\"settle_wxpay\";s:1:\"1\";s:8:\"sitename\";s:15:\"彩虹易支付\";s:7:\"sms_api\";s:1:\"0\";s:6:\"syskey\";s:32:\"pQE4F4NgG2884pGfg6jNh8nuQ77b827n\";s:8:\"template\";s:6:\"index1\";s:9:\"test_open\";s:1:\"1\";s:12:\"test_pay_uid\";s:4:\"1000\";s:5:\"title\";s:54:\"彩虹易支付 - 行业领先的免签约支付平台\";s:15:\"transfer_alipay\";s:1:\"0\";s:13:\"transfer_desc\";s:27:\"八爷源码亲测8ye.net\";s:13:\"transfer_name\";s:15:\"彩虹易支付\";s:14:\"transfer_qqpay\";s:1:\"0\";s:14:\"transfer_wxpay\";s:1:\"0\";s:10:\"verifytype\";s:1:\"1\";s:7:\"version\";s:4:\"2001\";}',0),('tongji','a:3:{s:9:\"usermoney\";s:4:\"0.08\";s:11:\"settlemoney\";N;s:11:\"order_today\";a:3:{s:3:\"all\";d:0;s:7:\"paytype\";a:3:{i:1;d:0;i:2;d:0;i:3;d:0;}s:7:\"channel\";a:2:{i:2;d:0;i:3;d:0;}}}',0);
/*!40000 ALTER TABLE `pay_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_channel`
--

DROP TABLE IF EXISTS `pay_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_channel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) unsigned NOT NULL,
  `plugin` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `rate` decimal(5,2) NOT NULL DEFAULT '100.00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `appid` varchar(255) DEFAULT NULL,
  `appkey` text,
  `appsecret` text,
  `appurl` varchar(255) DEFAULT NULL,
  `appmchid` varchar(255) DEFAULT NULL,
  `apptype` varchar(50) DEFAULT NULL,
  `daytop` int(10) DEFAULT '0',
  `daystatus` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_channel`
--

LOCK TABLES `pay_channel` WRITE;
/*!40000 ALTER TABLE `pay_channel` DISABLE KEYS */;
INSERT INTO `pay_channel` VALUES (2,1,'zpay','Z支付',0.25,1,'26410','as4DnnRyAryZlD5eHqRsw8w0T9ZMv1Fc','','','','',0,0),(3,2,'zpay','Z支付1',0.25,1,'26410','as4DnnRyAryZlD5eHqRsw8w0T9ZMv1Fc','','','','',0,0);
/*!40000 ALTER TABLE `pay_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_config`
--

DROP TABLE IF EXISTS `pay_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_config` (
  `k` varchar(32) NOT NULL,
  `v` text,
  PRIMARY KEY (`k`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_config`
--

LOCK TABLES `pay_config` WRITE;
/*!40000 ALTER TABLE `pay_config` DISABLE KEYS */;
INSERT INTO `pay_config` VALUES ('admin_paypwd','123456'),('admin_pwd','123456'),('admin_user','admin'),('blockalert','温馨提醒该商品禁止出售，如有疑问请联系网站客服！'),('blockname','百度云|摆渡|云盘|点券|芸盘|萝莉|罗莉|网盘|黑号|q币|Q币|扣币|qq货币|QQ货币|花呗|baidu云|bd云|吃鸡|透视|自瞄|后座|穿墙|脚本|外挂|模拟|辅助|检测|武器|套装'),('build','2021-10-15'),('captcha_id','b31335edde91b2f98dacd393f6ae6de8'),('captcha_key','170d2349acef92b7396c7157eb9d8f47'),('captcha_open','1'),('cronkey','842816'),('description','彩虹易支付是八爷源码亲测8ye.net旗下的免签约支付产品，完美解决支付难题，一站式接入支付宝，微信，财付通，QQ钱包,微信wap，帮助开发者快速集成到自己相应产品，效率高，见效快，费率低！'),('homepage','1'),('keywords','彩虹易支付,支付宝免签约即时到账,财付通免签约,微信免签约支付,QQ钱包免签约,免签约支付'),('kfqq','8ye.net'),('localurl','http://chyzf.8ye.net/'),('login_alipay','0'),('login_alipay_channel','0'),('login_qq','0'),('login_qq_appid','310786672'),('login_qq_appkey','mkgbmYqS8IZzfGqn'),('login_wx','0'),('login_wx_channel','0'),('mail_cloud','0'),('mail_name',''),('mail_port','465'),('mail_pwd',''),('mail_smtp','smtp.qq.com'),('onecode','1'),('orgname','八爷源码亲测8ye.net'),('pay_maxmoney','1000'),('recharge','1'),('reg_open','1'),('reg_pay','1'),('reg_pay_price','5'),('reg_pay_uid','1000'),('settle_alipay','1'),('settle_bank','0'),('settle_fee_max','20'),('settle_fee_min','0.1'),('settle_money','30'),('settle_open','1'),('settle_qqpay','1'),('settle_rate','0.5'),('settle_type','1'),('settle_wxpay','1'),('sitename','彩虹易支付'),('sms_api','0'),('syskey','pQE4F4NgG2884pGfg6jNh8nuQ77b827n'),('template','index1'),('test_open','1'),('test_pay_uid','1000'),('title','彩虹易支付 - 行业领先的免签约支付平台'),('tongji_cachetime','1635236481'),('transfer_alipay','0'),('transfer_desc','彩虹易支付自动结算'),('transfer_name','彩虹易支付'),('transfer_qqpay','0'),('transfer_wxpay','0'),('verifytype','1'),('version','2001');
/*!40000 ALTER TABLE `pay_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_group`
--

DROP TABLE IF EXISTS `pay_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_group` (
  `gid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `isbuy` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(10,2) DEFAULT NULL,
  `sort` int(10) NOT NULL DEFAULT '0',
  `expire` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_group`
--

LOCK TABLES `pay_group` WRITE;
/*!40000 ALTER TABLE `pay_group` DISABLE KEYS */;
INSERT INTO `pay_group` VALUES (1,'默认用户组','{\"1\":{\"type\":\"\",\"channel\":\"-1\",\"rate\":\"\"},\"2\":{\"type\":\"\",\"channel\":\"-1\",\"rate\":\"\"},\"3\":{\"type\":\"\",\"channel\":\"-1\",\"rate\":\"\"}}',0,NULL,0,0);
/*!40000 ALTER TABLE `pay_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_log`
--

DROP TABLE IF EXISTS `pay_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(20) DEFAULT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_log`
--

LOCK TABLES `pay_log` WRITE;
/*!40000 ALTER TABLE `pay_log` DISABLE KEYS */;
INSERT INTO `pay_log` VALUES (1,0,'登录后台','2021-10-15 22:51:37','42.238.54.94','',NULL),(2,0,'登录后台','2021-10-15 23:08:25','42.238.54.94','',NULL),(3,0,'登录后台','2021-10-19 08:46:23','42.224.75.168','',NULL),(4,0,'登录后台','2021-10-23 20:21:29','42.224.89.9','',NULL),(5,1,'普通登录','2021-10-23 20:23:02','42.224.89.9','河南省洛阳市',NULL),(6,0,'登录后台','2021-10-26 13:56:07','42.238.52.147','',NULL),(7,1,'普通登录','2021-10-26 13:57:53','42.238.52.147','河南省平顶山市',NULL),(8,0,'登录后台','2021-10-26 16:21:20','42.238.52.147','',NULL),(9,2,'普通登录','2021-10-26 16:22:41','42.238.52.147','河南省平顶山市',NULL);
/*!40000 ALTER TABLE `pay_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_order`
--

DROP TABLE IF EXISTS `pay_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_order` (
  `trade_no` varchar(64) NOT NULL,
  `out_trade_no` varchar(255) NOT NULL,
  `api_trade_no` varchar(255) DEFAULT NULL,
  `uid` int(11) unsigned NOT NULL,
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL,
  `channel` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `realmoney` decimal(10,2) DEFAULT NULL,
  `getmoney` decimal(10,2) DEFAULT NULL,
  `notify_url` varchar(255) DEFAULT NULL,
  `return_url` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `date` date DEFAULT NULL,
  `domain` varchar(32) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `buyer` varchar(30) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `notify` int(5) NOT NULL DEFAULT '0',
  `invite` int(11) unsigned NOT NULL DEFAULT '0',
  `invitemoney` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`trade_no`),
  KEY `uid` (`uid`),
  KEY `out_trade_no` (`uid`,`out_trade_no`),
  KEY `api_trade_no` (`api_trade_no`),
  KEY `invite` (`invite`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_order`
--

LOCK TABLES `pay_order` WRITE;
/*!40000 ALTER TABLE `pay_order` DISABLE KEYS */;
INSERT INTO `pay_order` VALUES ('2021102320232819957','2021102320232819957',NULL,1,3,0,0,'在线收款',1.00,NULL,NULL,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320232819957','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320232819957','2021-10-23 20:23:28',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102320233328803','2021102320233328803',NULL,1,3,0,0,'在线收款',1.00,NULL,NULL,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320233328803','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320233328803','2021-10-23 20:23:33',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102320433869096','2021102320433869096',NULL,1,3,0,0,'在线收款',1.00,NULL,NULL,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320433869096','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320433869096','2021-10-23 20:43:38',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102320435887665','2021102320435887665',NULL,1,3,0,0,'在线收款',1.00,NULL,NULL,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320435887665','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320435887665','2021-10-23 20:43:58',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102320440865297','2021102320440865297',NULL,1,3,0,0,'在线收款',1.00,NULL,NULL,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320440865297','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320440865297','2021-10-23 20:44:08',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102320444697154','2021102320444697154',NULL,1,3,0,0,'在线收款',1.00,NULL,NULL,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320444697154','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320444697154','2021-10-23 20:44:46',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102320465867019','2021102320465867019',NULL,1,3,0,0,'在线收款',1.00,NULL,NULL,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320465867019','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320465867019','2021-10-23 20:46:58',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102320500259111','2021102320500259111',NULL,1,3,0,0,'在线收款',1.00,NULL,NULL,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320500259111','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320500259111','2021-10-23 20:50:02',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102320510369750','2021102320510369750',NULL,1,3,0,0,'在线收款',1.00,NULL,NULL,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320510369750','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320510369750','2021-10-23 20:51:03',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102320510681477','2021102320510681477',NULL,1,3,0,0,'在线收款',0.10,NULL,NULL,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320510681477','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320510681477','2021-10-23 20:51:06',NULL,NULL,'chyzf.8ye.net','42.237.238.41',NULL,0,0,0,NULL),('2021102320522911636','2021102320522911636',NULL,1,3,0,0,'在线收款',1.00,NULL,NULL,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320522911636','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320522911636','2021-10-23 20:52:29',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102320525665407','2021102320525665407',NULL,1,3,0,0,'在线收款',1.00,NULL,NULL,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320525665407','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320525665407','2021-10-23 20:52:56',NULL,NULL,'chyzf.8ye.net','42.237.238.41',NULL,0,0,0,NULL),('2021102320533039764','2021102320533039764',NULL,1,3,0,0,'在线收款',1.00,NULL,NULL,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320533039764','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320533039764','2021-10-23 20:53:30',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102320534672463','2021102320534672463',NULL,1,3,0,0,'在线收款',1.00,NULL,NULL,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320534672463','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320534672463','2021-10-23 20:53:46',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102320564782638','2021102320564782638',NULL,1,3,1,2,'在线收款',1.00,1.00,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320564782638','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102320564782638','2021-10-23 20:56:47',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102321020195864','2021102321020195864',NULL,1,3,1,2,'在线收款',1.00,1.00,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321020195864','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321020195864','2021-10-23 21:02:01',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102321035587355','2021102321035587355',NULL,1,3,1,2,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321035587355','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321035587355','2021-10-23 21:03:55',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102321041345864','2021102321041345864',NULL,1,3,1,2,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321041345864','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321041345864','2021-10-23 21:04:13',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102321064655487','2021102321064655487',NULL,1,3,1,2,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321064655487','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321064655487','2021-10-23 21:06:46',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102321071940447','2021102321071940447',NULL,1,3,1,2,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321071940447','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321071940447','2021-10-23 21:07:19',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102321091839378','2021102321091839378',NULL,1,3,1,2,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321091839378','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321091839378','2021-10-23 21:09:18',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102321112262390','2021102321112262390',NULL,1,3,1,2,'在线收款',1.00,1.00,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321112262390','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321112262390','2021-10-23 21:11:22',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102321121952749','2021102321121952749',NULL,1,3,1,2,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321121952749','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321121952749','2021-10-23 21:12:19',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102321204473909','2021102321204473909',NULL,1,3,1,2,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321204473909','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321204473909','2021-10-23 21:20:44',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102321212480721','2021102321212480721',NULL,1,3,1,2,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321212480721','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321212480721','2021-10-23 21:21:24',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102321220278364','2021102321220278364',NULL,1,3,1,2,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321220278364','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321220278364','2021-10-23 21:22:02',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102321232096323','2021102321232096323','2021102321232096323',1,3,1,2,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321232096323','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321232096323','2021-10-23 21:23:20','2021-10-23 21:32:22','2021-10-23','chyzf.8ye.net','42.224.89.9',NULL,1,0,0,NULL),('2021102321244398187','2021102321244398187',NULL,1,3,1,2,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321244398187','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321244398187','2021-10-23 21:24:43',NULL,NULL,'chyzf.8ye.net','42.224.89.9',NULL,0,0,0,NULL),('2021102321325098701','2021102321325098701','2021102321325098701',1,3,1,2,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321325098701','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321325098701','2021-10-23 21:32:50','2021-10-23 21:32:57','2021-10-23','chyzf.8ye.net','42.224.89.9',NULL,1,0,0,NULL),('2021102321334063255','2021102321334063255','2021102321334063255',1,3,1,2,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321334063255','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321334063255','2021-10-23 21:33:40','2021-10-23 21:33:44','2021-10-23','chyzf.8ye.net','42.224.89.9',NULL,1,0,0,NULL),('2021102321340059305','2021102321340059305','2021102321340059305',1,3,2,3,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321340059305','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102321340059305','2021-10-23 21:34:00','2021-10-23 21:34:05','2021-10-23','chyzf.8ye.net','42.224.89.9',NULL,1,0,0,NULL),('2021102415325547145','2021102415325547145',NULL,1,3,2,3,'在线收款',0.10,0.10,0.00,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102415325547145','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102415325547145','2021-10-24 15:32:55',NULL,NULL,'chyzf.8ye.net','182.118.235.215',NULL,0,0,0,NULL),('2021102523343491354','2021102523343491354',NULL,1,3,2,3,'在线收款',10.00,10.00,0.03,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102523343491354','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102523343491354','2021-10-25 23:34:34',NULL,NULL,'chyzf.8ye.net','42.224.85.77',NULL,0,0,0,NULL),('2021102523365696244','2021102523365696244',NULL,1,3,1,2,'在线收款',10.00,10.00,0.03,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102523365696244','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102523365696244','2021-10-25 23:36:56',NULL,NULL,'chyzf.8ye.net','42.224.85.77',NULL,0,0,0,NULL),('2021102523373067631','2021102523373067631',NULL,1,3,1,2,'在线收款',10.00,10.00,0.03,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102523373067631','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102523373067631','2021-10-25 23:37:30',NULL,NULL,'chyzf.8ye.net','42.224.85.77',NULL,0,0,0,NULL),('2021102523381120836','2021102523381120836',NULL,1,3,1,2,'在线收款',10.00,10.00,0.03,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102523381120836','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102523381120836','2021-10-25 23:38:11',NULL,NULL,'chyzf.8ye.net','42.224.85.77',NULL,0,0,0,NULL),('2021102523434226826','2021102523434226826','2021102523434226826',1,3,1,2,'在线收款',10.00,10.00,0.03,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102523434226826','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102523434226826','2021-10-25 23:43:42','2021-10-25 23:44:12','2021-10-25','chyzf.8ye.net','42.224.85.77',NULL,1,0,0,NULL),('2021102523462238108','2021102523462238108','2021102523462238108',1,3,1,2,'在线收款',20.00,20.00,0.05,'http://chyzf.8ye.net/paypage/success.php?trade_no=2021102523462238108','http://chyzf.8ye.net/paypage/success.php?trade_no=2021102523462238108','2021-10-25 23:46:22','2021-10-25 23:46:36','2021-10-25','chyzf.8ye.net','42.224.85.77',NULL,1,0,0,NULL),('2021102613552186993','2021102613552186993',NULL,1000,3,1,2,'支付测试',1.00,1.00,0.00,'http://chyzf.8ye.net/user/test.php?ok=1&trade_no=2021102613552186993','http://chyzf.8ye.net/user/test.php?ok=1&trade_no=2021102613552186993','2021-10-26 13:55:21',NULL,NULL,'chyzf.8ye.net','42.238.52.147',NULL,0,0,0,NULL),('2021102613553239119','2021102613553239119',NULL,1000,3,2,3,'支付测试',1.00,1.00,0.00,'http://chyzf.8ye.net/user/test.php?ok=1&trade_no=2021102613553239119','http://chyzf.8ye.net/user/test.php?ok=1&trade_no=2021102613553239119','2021-10-26 13:55:32',NULL,NULL,'chyzf.8ye.net','42.238.52.147',NULL,1,0,0,NULL),('2021102614021936228','2021102614021936228',NULL,1000,3,1,2,'支付测试',1.00,1.00,0.00,'http://chyzf.8ye.net/user/test.php?ok=1&trade_no=2021102614021936228','http://chyzf.8ye.net/user/test.php?ok=1&trade_no=2021102614021936228','2021-10-26 14:02:19',NULL,NULL,'chyzf.8ye.net','42.238.52.147',NULL,0,0,0,NULL);
/*!40000 ALTER TABLE `pay_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_plugin`
--

DROP TABLE IF EXISTS `pay_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_plugin` (
  `name` varchar(30) NOT NULL,
  `showname` varchar(60) DEFAULT NULL,
  `author` varchar(60) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `types` varchar(50) DEFAULT NULL,
  `inputs` text,
  `select` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_plugin`
--

LOCK TABLES `pay_plugin` WRITE;
/*!40000 ALTER TABLE `pay_plugin` DISABLE KEYS */;
INSERT INTO `pay_plugin` VALUES ('aliold','支付宝旧版接口','支付宝','https://b.alipay.com/signing/productSetV2.htm','alipay','appid:合作者身份(PID),appkey:安全校验码(Key)','1:电脑网站支付,2:手机网站支付'),('alipay','支付宝官方支付','支付宝','https://b.alipay.com/signing/productSetV2.htm','alipay','appid:应用APPID,appkey:支付宝公钥(RSA2),appsecret:商户私钥(RSA2)','1:电脑网站支付,2:手机网站支付,3:当面付扫码,4:JS支付'),('codepay','码支付','码支付','https://codepay.fateqq.com/','alipay,qqpay,wxpay','appid:商户ID,appkey:商户密钥',''),('epay','彩虹易支付','彩虹','http://blog.cccyun.cc/','alipay,qqpay,wxpay,bank','appurl:接口地址,appid:商户ID,appkey:商户密钥',''),('jdpay','京东支付','京东','https://www.jdpay.com/','jdpay','appid:商户号,appkey:商户DES密钥',''),('micro','小微支付','小微支付','http://blog.cccyun.cc/','alipay,wxpay','appurl:接口地址,appid:APPID,appkey:APPKEY,appmchid:商户号MCHID',''),('qqpay','QQ钱包官方支付','QQ钱包','https://qpay.qq.com/','qqpay','appid:QQ钱包商户号,appkey:QQ钱包API密钥','1:扫码支付(包含H5),2:公众号支付'),('swiftpass','威富通','威富通','https://www.swiftpass.cn/','alipay,wxpay,qqpay,bank,jdpay','appid:商户号,appkey:RSA平台公钥,appsecret:RSA应用私钥','1:微信公众号支付,2:微信H5支付'),('unionpay','银联扫码支付','银联','http://www.95516.com/','alipay,wxpay,bank','appid:商户号,appkey:商户密钥',''),('wxpay','微信官方支付','微信','https://pay.weixin.qq.com/','wxpay','appid:公众号APPID,appmchid:商户号,appkey:商户支付密钥,appsecret:公众号SECRET','1:扫码支付,2:公众号支付,3:H5支付'),('wxpaysl','微信官方支付服务商版','微信','https://pay.weixin.qq.com/partner/public/home','wxpay','appid:公众号APPID,appmchid:商户号,appkey:商户支付密钥,appsecret:公众号SECRET,appurl:子商户号','1:扫码支付,2:公众号支付,3:H5支付'),('zhangyishou','掌易收聚合支付','掌易收','http://www.zhangyishou.com/','alipay,wxpay','appid:商户ID,appkey:商户密钥,appmchid:通道ID',''),('zpay','Z支付','Z支付','https://zzhifu.com/','alipay,wxpay','appid:商户号,appkey:商户密钥','');
/*!40000 ALTER TABLE `pay_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_record`
--

DROP TABLE IF EXISTS `pay_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `action` int(1) NOT NULL DEFAULT '0',
  `money` decimal(10,2) NOT NULL,
  `oldmoney` decimal(10,2) NOT NULL,
  `newmoney` decimal(10,2) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `trade_no` varchar(64) DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `trade_no` (`trade_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_record`
--

LOCK TABLES `pay_record` WRITE;
/*!40000 ALTER TABLE `pay_record` DISABLE KEYS */;
INSERT INTO `pay_record` VALUES (1,1,1,0.03,0.00,0.03,'在线收款','2021102523434226826','2021-10-25 23:44:12'),(2,1,1,0.05,0.03,0.08,'在线收款','2021102523462238108','2021-10-25 23:46:36');
/*!40000 ALTER TABLE `pay_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_regcode`
--

DROP TABLE IF EXISTS `pay_regcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_regcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `to` varchar(32) DEFAULT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_regcode`
--

LOCK TABLES `pay_regcode` WRITE;
/*!40000 ALTER TABLE `pay_regcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_regcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_risk`
--

DROP TABLE IF EXISTS `pay_risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_risk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '0',
  `url` varchar(64) DEFAULT NULL,
  `content` varchar(64) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_risk`
--

LOCK TABLES `pay_risk` WRITE;
/*!40000 ALTER TABLE `pay_risk` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_risk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_roll`
--

DROP TABLE IF EXISTS `pay_roll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_roll` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `kind` int(1) unsigned NOT NULL DEFAULT '0',
  `info` text,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `index` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_roll`
--

LOCK TABLES `pay_roll` WRITE;
/*!40000 ALTER TABLE `pay_roll` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_roll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_settle`
--

DROP TABLE IF EXISTS `pay_settle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_settle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `auto` int(1) NOT NULL DEFAULT '1',
  `type` int(1) NOT NULL DEFAULT '1',
  `account` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `realmoney` decimal(10,2) NOT NULL,
  `addtime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `transfer_status` int(1) NOT NULL DEFAULT '0',
  `transfer_result` varchar(64) DEFAULT NULL,
  `transfer_date` datetime DEFAULT NULL,
  `result` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `batch` (`batch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_settle`
--

LOCK TABLES `pay_settle` WRITE;
/*!40000 ALTER TABLE `pay_settle` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_settle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_type`
--

DROP TABLE IF EXISTS `pay_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `device` int(1) unsigned NOT NULL DEFAULT '0',
  `showname` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`device`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_type`
--

LOCK TABLES `pay_type` WRITE;
/*!40000 ALTER TABLE `pay_type` DISABLE KEYS */;
INSERT INTO `pay_type` VALUES (1,'alipay',0,'支付宝',1),(2,'wxpay',0,'微信支付',1),(3,'qqpay',0,'QQ钱包',1),(4,'bank',0,'网银支付',0),(5,'jdpay',0,'京东支付',0);
/*!40000 ALTER TABLE `pay_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_user`
--

DROP TABLE IF EXISTS `pay_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_user` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) unsigned NOT NULL DEFAULT '0',
  `upid` int(11) unsigned NOT NULL DEFAULT '0',
  `key` varchar(32) NOT NULL,
  `pwd` varchar(32) DEFAULT NULL,
  `account` varchar(128) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `codename` varchar(32) DEFAULT NULL,
  `settle_id` int(1) NOT NULL DEFAULT '1',
  `alipay_uid` varchar(32) DEFAULT NULL,
  `qq_uid` varchar(32) DEFAULT NULL,
  `wxid` varchar(32) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `url` varchar(64) DEFAULT NULL,
  `cert` int(1) NOT NULL DEFAULT '0',
  `certno` varchar(18) DEFAULT NULL,
  `certname` varchar(32) DEFAULT NULL,
  `certtime` datetime DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `lasttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `level` int(1) NOT NULL DEFAULT '1',
  `pay` int(1) NOT NULL DEFAULT '1',
  `settle` int(1) NOT NULL DEFAULT '1',
  `keylogin` int(1) NOT NULL DEFAULT '1',
  `apply` int(1) NOT NULL DEFAULT '0',
  `mode` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `email` (`email`),
  KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_user`
--

LOCK TABLES `pay_user` WRITE;
/*!40000 ALTER TABLE `pay_user` DISABLE KEYS */;
INSERT INTO `pay_user` VALUES (2,1,0,'uznlwWnGcCaKPgU3KZAK3NfRAAdguRwZ','b2da6e683abedb45de08c5f2f53b2ff7','18888888888','admin',NULL,1,NULL,NULL,NULL,0.00,'','18888888888','','',1,'','',NULL,'2021-10-26 16:22:25','2021-10-26 16:22:41',NULL,1,1,1,1,0,0,1);
/*!40000 ALTER TABLE `pay_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'testsql'
--

--
-- Dumping routines for database 'testsql'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-26 16:25:10

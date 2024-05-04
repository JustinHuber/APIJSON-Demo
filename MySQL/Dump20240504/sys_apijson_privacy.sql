-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: sys
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
-- Table structure for table `apijson_privacy`
--

DROP TABLE IF EXISTS `apijson_privacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apijson_privacy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `certified` tinyint NOT NULL DEFAULT '0' COMMENT '已认证',
  `phone` bigint NOT NULL COMMENT '手机号，仅支持 11 位数的。不支持 +86 这种国家地区开头的。如果要支持就改为 VARCHAR(14)',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `_password` varchar(20) NOT NULL COMMENT '登录密码',
  `_payPassword` int NOT NULL DEFAULT '123456' COMMENT '支付密码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=1693661843997 DEFAULT CHARSET=utf8mb3 COMMENT='用户隐私信息表。\n对安全要求高，不想泄漏真实名称。对外名称为 Privacy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apijson_privacy`
--

LOCK TABLES `apijson_privacy` WRITE;
/*!40000 ALTER TABLE `apijson_privacy` DISABLE KEYS */;
INSERT INTO `apijson_privacy` VALUES (38710,1,13000038710,33376.00,'666666',123456),(70793,0,13000070793,56000.00,'apijson',123456),(82001,1,13000082001,102437.38,'123456',123456),(82002,1,13000082002,6817.38,'123456',123456),(82003,1,13000082003,7901.20,'123456',123456),(82004,0,13000082004,2000.00,'123456',123456),(82005,0,13000082005,1923.00,'123456',123456),(82006,0,13000082006,2000.00,'123456',123456),(82009,0,13000082009,2000.00,'123456',123456),(82012,0,13000082012,0.00,'123456',123456),(82020,0,12345678900,0.00,'123456',123456),(82021,0,12345678901,0.00,'123456',123456),(82022,0,12345678902,0.00,'123456',123456),(82023,0,12345678903,0.00,'123456',123456),(82024,0,12345678904,0.00,'123456',123456),(82025,0,12345678905,0.00,'123456',123456),(82026,0,12345678906,0.00,'123456',123456),(82027,0,12345678907,0.00,'123456',123456),(82028,0,12345678908,0.00,'123456',123456),(82029,0,12345678909,0.00,'123456',123456),(82030,0,12345678910,0.00,'123456',123456),(82031,0,12345678911,0.00,'123456',123456),(82032,0,12345678912,0.00,'123456',123456),(82033,0,12345678913,0.00,'123456',123456),(82034,0,12345678914,0.00,'123456',123456),(82035,0,12345678915,0.00,'123456',123456),(82036,0,12345678916,0.00,'123456',123456),(82037,0,12345678917,0.00,'123456',123456),(82038,0,12345678918,0.00,'123456',123456),(82039,0,12345678919,0.00,'123456',123456),(82040,0,13000082019,0.00,'123456',123456),(82041,0,13000082015,0.00,'123456',123456),(82042,0,13000082016,0.00,'123456',123456),(82043,0,13000082017,0.00,'123456',123456),(82044,0,13000082018,0.00,'123456',123456),(82045,0,13000082020,0.00,'123456',123456),(82046,0,13000082010,0.00,'123456',123456),(82047,0,13000082021,0.00,'123456',123456),(82048,0,13000038711,0.00,'123456',123456),(82049,0,13000038712,0.00,'123456',123456),(82050,0,13000038713,0.00,'123456',123456),(82051,0,13000038714,0.00,'123456',123456),(82052,0,13000038715,0.00,'123456',123456),(82053,0,13000038720,0.00,'123456',123456),(82054,0,13000038721,0.00,'123456',123456),(82055,0,13000082030,0.00,'123456',123456),(82056,0,13000082040,0.00,'123456',123456),(82057,0,13000038730,0.00,'123456',123456),(82058,0,13000038750,0.00,'123456',123456),(82059,0,13000082033,0.00,'123456',123456),(82060,0,13000082050,0.00,'123456',123456),(88888,1,13000088888,10000.00,'123456',123456),(90814,1,13000090814,0.00,'123456',123456),(93793,1,13000093793,3000.00,'apijson',123456),(93794,0,99999999999,0.00,'123456',123456),(99999,1,13000099999,100.00,'123456',123456),(1490109742863,0,13000082100,0.00,'123456',123456),(1490109845208,0,13000082101,0.00,'123456',123456),(1490420651686,0,13000038716,0.00,'123456',123456),(1490427139175,0,13000038717,0.00,'123456',123456),(1490427577823,0,13000082102,0.00,'123456',123456),(1490584952968,0,13000038790,0.00,'123456',123456),(1490973670928,0,13000082051,0.00,'123456',123456),(1492936169722,0,13000093794,0.00,'123456',123456),(1493480142628,0,13000038888,0.00,'123456',123456),(1493747512860,0,13000038777,0.00,'123456',123456),(1493747777770,0,13000038778,0.00,'123456',123456),(1493748594003,0,13000038779,0.00,'123456',123456),(1493748615711,0,13000038780,0.00,'123456',123456),(1493749090643,0,13000038781,0.00,'123456',123456),(1493836043151,0,13000038999,0.00,'123456',123456),(1493883110132,0,13000039999,0.00,'123456',123456),(1493890214167,0,13000031000,0.00,'123456',123456),(1493890303473,0,13000031001,0.00,'123456',123456),(1493890303474,0,13000088887,0.00,'123456',123456),(1497792972314,0,13000082111,0.00,'654321',123456),(1499057230629,0,13000082011,0.00,'123456',123456),(1500825221910,0,13000099998,0.00,'123456',123456),(1502639062900,0,13000082222,0.00,'123456',123456),(1502639424119,0,13000082333,0.00,'12345678',123456),(1507220582167,0,13000011111,0.00,'123456',123456),(1508072071492,0,13000071492,0.00,'123456',123456),(1508072105320,0,13000082008,0.00,'123456',123456),(1508072160401,0,13000082007,0.00,'123456',123456),(1508072202871,0,13000082031,0.00,'123456',123456),(1510495628760,0,13000082000,0.00,'123456',123456),(1511407581570,0,17610725819,0.00,'123123',123456),(1511761906715,0,13708222312,0.00,'123456',123456),(1511965911349,0,13000093333,0.00,'123456',123456),(1512387063078,0,15858585858,0.00,'123456',123456),(1512531601485,0,18210847727,0.00,'5816136',123456),(1514623064133,0,13000038725,0.00,'123456',123456),(1514625918255,0,13000038726,255.00,'123456',123456),(1514626163032,0,13000038727,4951.37,'123456',123456),(1514858422969,0,13000082041,164.00,'123456',123456),(1515565976140,0,15009257563,0.00,'qazwsx',123456),(1518218350585,0,18663689263,0.00,'cherish751220',123456),(1519778917280,0,15000536915,0.00,'123456',123456),(1520242280259,0,18917212395,0.00,'123456',123456),(1521274648008,0,18989491914,0.00,'123456',123456),(1521371722416,0,13000088889,0.00,'123456',123456),(1521374327542,0,13000056789,0.00,'123456',123456),(1523626157302,0,15603313259,0.00,'15603313259',123456),(1523935772553,0,15603313258,0.00,'15603313258',123456),(1524042900591,0,15222297100,0.00,'123456',123456),(1524298730523,0,17854217949,0.00,'123456',123456),(1524878698882,0,13917451840,0.00,'123456',123456),(1525677515673,0,13390935538,10000.00,'123456',123456),(1527495857924,0,13142033345,15.00,'qweasd',123456),(1527498229991,0,13142033342,0.00,'qweasd',123456),(1527821445610,0,13142033346,0.00,'qweasd',123456),(1528250827953,0,15122820115,0.00,'123456',123456),(1528254173621,0,15225556855,200.00,'lmt970208',123456),(1528255497767,0,15822798927,0.00,'111111',123456),(1528264711016,0,15620878773,0.00,'111111',123456),(1528339692804,0,15122541683,0.00,'568599',123456),(1528344980598,0,15188899797,0.00,'123456',123456),(1528356470041,0,15620878772,0.00,'111111',123456),(1531969715979,0,13800138000,10000.00,'123456',123456),(1532188114543,0,13977757845,20360.00,'123456',123456),(1532439021068,0,18779607703,0.00,'15879684798qq',123456),(1533835176109,0,13977757846,1700.00,'123456',123456),(1534926301956,0,17602120205,0.00,'123456',123456),(1538504264944,0,13000087654,0.00,'123456',123456),(1538504500574,0,13000087655,0.00,'123456',123456),(1538987952996,0,18662327672,0.00,'123456',123456),(1541583762603,0,18689846285,0.00,'jyt123456',123456),(1544276209348,0,13000087656,1050.00,'123456',123456),(1544503822963,0,13000082968,0.00,'123456',123456),(1545707526805,0,13533039558,0.00,'123456',123456),(1545895694424,0,13533039550,357.00,'123456',123456),(1547177436600,0,18980210241,0.00,'123456',123456),(1548068043688,0,17181595855,0.00,'0812563993gg',123456),(1553095415917,0,13185236871,0.00,'123456',123456),(1553527700480,0,13189758117,0.00,'3802489',123456),(1559129626356,0,13000000000,0.00,'123456',123456),(1560409157504,0,18030546471,0.00,'123456789',123456),(1561539257158,0,15870873323,0.00,'123qwe',123456),(1563605318975,0,13590330481,0.00,'123456',123456),(1570529238569,0,15669090286,0.00,'jiaojun2jj',123456),(1571629309520,0,17051059209,0.00,'123456',123456),(1592544225995,0,18979117764,0.00,'apijson1122',123456),(1594366766076,0,18861507756,0.00,'123456',123456),(1606355327749,0,15801485371,0.00,'23507209',123456),(1607327721514,0,13007730773,0.00,'aw07734',123456),(1612026209696,0,13000083333,0.00,'123456',123456),(1617779786088,0,13818380518,0.00,'123456',123456),(1617791617244,0,13410220286,0.00,'tczj4726866',123456),(1618542651755,0,15210142165,0.00,'112233',123456),(1620959466969,0,18264750851,0.00,'123456',123456),(1622460076442,0,15012345601,0.00,'123456',123456),(1625139659901,0,13200082000,0.00,'123456',123456),(1626942274763,0,18829028020,0.00,'15Srrch11',123456),(1627003736851,0,18818775856,0.00,'jia123456',123456),(1627379132238,0,18362643488,0.00,'123456',123456),(1627460157815,0,17635700162,0.00,'lixuxin',123456),(1627751909080,0,13323332339,0.00,'123456',123456),(1629182147093,0,13588803866,0.00,'4470784',123456),(1629242760752,0,18866668888,0.00,'18866668888',123456),(1629344450286,0,13922860297,0.00,'yrj900229',123456),(1631617361403,0,18036122391,0.00,'1234qwer',123456),(1631711813832,0,13590486207,0.00,'47755482',123456),(1633578722680,0,15106211301,0.00,'tc891016',123456),(1633877831592,0,18670910821,0.00,'xiaoxijin',123456),(1634709530342,0,15697509296,0.00,'88888888',123456),(1634985722864,0,18919312181,0.00,'980910',123456),(1635169494440,0,13000002000,0.00,'123456',123456),(1635298996791,0,18610851331,0.00,'wupinglan',123456),(1635328180560,0,13588403735,0.00,'T3Q8L93avrsHzS4',123456),(1635415421614,0,18210722114,0.00,'1qaz2wsx',123456),(1635487317001,0,17816869367,0.00,'8023forget',123456),(1635490283143,0,18650433969,0.00,'aa5566556',123456),(1635726344906,0,18630742860,0.00,'123456',123456),(1635731167481,0,13429661169,0.00,'13429661169',123456),(1635755610457,0,18630742861,0.00,'123456',123456),(1635814886542,0,18630742862,0.00,'123456',123456),(1635821266476,0,13366666666,0.00,'123456',123456),(1635844920478,0,18016233271,0.00,'123qwe123',123456),(1636094219508,0,15515333576,0.00,'api123456789',123456),(1636336186325,0,18522520829,0.00,'shao123',123456),(1636340324511,0,18578200347,0.00,'Eeda123',123456),(1636427131222,0,13960828406,0.00,'dream6969699',123456),(1636504967120,0,13504955181,0.00,'181818',123456),(1636598520774,0,15712886824,0.00,'hua5996094',123456),(1636958896972,0,18613805395,0.00,'gewennihao2021',123456),(1636961689146,0,18136521638,0.00,'zhangzehua123',123456),(1637139486293,0,15801590611,0.00,'179515971',123456),(1637199454849,0,13548653133,0.00,'123abc',123456),(1637565991578,0,17778025527,0.00,'hj78721684',123456),(1637582389884,0,15690111837,0.00,'wujiaao521',123456),(1637824224903,0,18782099063,0.00,'123456',123456),(1637894918405,0,13403511308,0.00,'123456',123456),(1637895069532,0,15513026273,0.00,'123456',123456),(1638243844692,0,15744125821,0.00,'123456',123456),(1638243934092,0,15745678901,0.00,'123456',123456),(1638253820088,0,18802007503,0.00,'123456',123456),(1638273057658,0,13650909408,0.00,'qqqqqq',123456),(1638863790945,0,13840185879,0.00,'123qwe',123456),(1639015667147,0,17319418579,0.00,'zhang1366',123456),(1639987570483,0,18756963739,0.00,'123456',123456),(1640224388749,0,17601546432,0.00,'123456',123456),(1640226429804,0,18031105400,0.00,'w369874125',123456),(1640533384052,0,13691725479,0.00,'qweasd123',123456),(1642574030663,0,19983430977,0.00,'123456',123456),(1644219958691,0,13000082025,0.00,'123456',123456),(1644567479886,0,13570583966,0.00,'123456',123456),(1645077808646,0,15038634953,0.00,'qiyana521',123456),(1645540288925,0,18710728717,0.00,'QQ201718',123456),(1645679844970,0,18651810695,0.00,'123123',123456),(1645944029434,0,19162294665,0.00,'123456',123456),(1646272674945,0,18616736097,0.00,'123456',123456),(1647363472772,0,13278651173,0.00,'wufan2000120812',123456),(1648020752521,0,13599034224,0.00,'Hjlong23',123456),(1648973644623,0,15021367376,0.00,'px4563346',123456),(1649303175037,0,13136291560,0.00,'a1111111',123456),(1649386775460,0,13282135975,0.00,'jingnanao',123456),(1649754648722,0,15918751215,0.00,'123456',123456),(1649917864874,0,18019321071,0.00,'a67194803',123456),(1650124472611,0,13925513180,0.00,'123456',123456),(1650203096188,0,13666632711,0.00,'123456',123456),(1650729052818,0,13000086543,0.00,'666666',123456),(1650729145974,0,13000087653,0.00,'222222',123456),(1650729291868,0,13000087777,0.00,'222222',123456),(1650731958142,0,13000081234,0.00,'666666',123456),(1651113083185,0,17744463385,0.00,'Zc930707',123456),(1651195944934,0,18826107253,0.00,'havecity122333',123456),(1651334486204,0,13080082001,0.00,'123456',123456),(1651665004571,0,13702035069,0.00,'AAAaaa111',123456),(1651744153461,0,13889505065,0.00,'xul21590',123456),(1652776005887,0,19983295959,0.00,'12345678',123456),(1652777353299,0,13281152528,0.00,'sophitiaA1',123456),(1652881250088,0,18373877604,0.00,'123456',123456),(1653460727512,0,18314432335,0.00,'123456',123456),(1653461884440,0,18788402136,0.00,'191026',123456),(1655037951689,0,17375103851,0.00,'cxj3344520',123456),(1655310011415,0,18964310811,0.00,'123123',123456),(1655364019471,0,18618123656,0.00,'sillytear131618',123456),(1655432667654,0,18910211131,0.00,'18910211131',123456),(1655448439355,0,15645209786,0.00,'rootroot',123456),(1655780508531,0,18326014824,0.00,'123456',123456),(1656173251610,0,13693682849,0.00,'10Million',123456),(1656230790121,0,13242240040,0.00,'fantasy1989',123456),(1657100711107,0,13002007275,0.00,'123456',123456),(1657507082526,0,13205005928,0.00,'11223344',123456),(1657522377266,0,18073216535,0.00,'7854951abc',123456),(1657606209138,0,18767126138,0.00,'123456',123456),(1658115131441,0,17846941803,0.00,'zch520520',123456),(1658467307200,0,13055206709,0.00,'apijson2651257',123456),(1658716761381,0,18259086857,0.00,'a987857456110',123456),(1659074261658,0,13002001000,0.00,'123456',123456),(1659491893037,0,13757598984,0.00,'22114891',123456),(1659593571973,0,15895884659,0.00,'njStr0ng1t',123456),(1660553429453,0,13000082022,0.00,'123456',123456),(1660615147446,0,13067770537,0.00,'123456',123456),(1660645570787,0,13800000000,0.00,'123456',123456),(1660735624607,0,18710172004,0.00,'Ww123123',123456),(1661305083066,0,13116110516,0.00,'dys321',123456),(1661305219024,0,13136110516,0.00,'dys321',123456),(1661436525944,0,13289765678,0.00,'123456',123456),(1661476520718,0,13119186694,0.00,'Ants12345',123456),(1661925532557,0,13607118810,0.00,'123456',123456),(1662112443331,0,18917358037,0.00,'123456',123456),(1663579240791,0,18823302939,0.00,'Xukai123',123456),(1664178104245,0,18884621629,0.00,'li123456',123456),(1665395701628,0,18931153528,0.00,'123456',123456),(1665460245211,0,18256029700,0.00,'198610java',123456),(1667352384911,0,17706067677,0.00,'123456',123456),(1667532582633,0,15652316239,0.00,'wlf1472583695',123456),(1693661843996,0,13000089999,0.00,'123456',123456);
/*!40000 ALTER TABLE `apijson_privacy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 23:54:52

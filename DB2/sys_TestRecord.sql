-- SQLINES DEMO ***  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- SQLINES DEMO ***    Database: sys
-- SQLINES DEMO *** -------------------------------------
-- SQLINES DEMO *** 7.33-log

/* SQLINES DEMO *** ARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/* SQLINES DEMO *** ARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/* SQLINES DEMO *** LLATION_CONNECTION=@@COLLATION_CONNECTION */;
/* SQLINES DEMO *** tf8 */;
/* SQLINES DEMO *** ME_ZONE=@@TIME_ZONE */;
/* SQLINES DEMO *** NE='+00:00' */;
/* SQLINES DEMO *** IQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/* SQLINES DEMO *** REIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/* SQLINES DEMO *** L_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/* SQLINES DEMO *** L_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- SQLINES DEMO *** or table `Verify`
--

DROP TABLE IF EXISTS Verify;
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Verify (
  id bigint NOT NULL AUTO_INCREMENT ,
  type int NOT NULL DEFAULT '0' ,
  phone bigint NOT NULL ,
  verify int NOT NULL ,
  date timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  PRIMARY KEY (id)
)  ;
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `Verify`
--

LOCK TABLES Verify WRITE;
/* SQLINES DEMO ***  `Verify` DISABLE KEYS */;
INSERT INTO Verify VALUES (1527950171719,1,130000844444,10375,'2018-06-02 14:36:11'),(1528250810515,1,15122820115,2586,'2018-06-06 02:06:50'),(1528254139866,1,15225556855,8912,'2018-06-06 03:02:19'),(1528255485691,1,15822798927,2101,'2018-06-06 03:24:45'),(1528264687329,1,15620878773,3991,'2018-06-06 05:58:07'),(1528269508031,1,18616024605,4901,'2018-06-06 07:18:28'),(1528289406640,1,13142033348,3005,'2018-06-06 12:50:06'),(1528330720259,2,15122820115,5267,'2018-06-07 00:18:40'),(1528339646013,1,15122541683,6112,'2018-06-07 02:47:26'),(1528344962707,1,15188899797,4540,'2018-06-07 04:16:02'),(1528345364195,2,15122541683,10500,'2018-06-07 04:22:44'),(1528356342784,2,15620878773,2076,'2018-06-07 07:25:42'),(1528356449927,1,15620878772,4733,'2018-06-07 07:27:29'),(1531793525394,1,15629184762,9737,'2018-07-17 02:12:05'),(1531983017848,2,13800138000,1552,'2018-07-19 06:50:17'),(1532188103364,1,13977757845,8753,'2018-07-21 15:48:23'),(1532439015405,1,18779607703,10136,'2018-07-24 13:30:15'),(1533450371245,1,18911061423,5795,'2018-08-05 06:26:11'),(1533618759900,1,13977757843,10204,'2018-08-07 05:12:39'),(1533627819054,1,13107695518,7515,'2018-08-07 07:43:39'),(1533693421836,1,15901373410,4884,'2018-08-08 01:57:01'),(1533698902309,1,18664900086,3654,'2018-08-08 03:28:22'),(1533723898511,1,8881816,5272,'2018-08-08 10:24:58'),(1533835163777,1,13977757846,9332,'2018-08-09 17:19:23'),(1534142797624,2,13977757845,4136,'2018-08-13 06:46:37'),(1534671951719,1,13000082023,5869,'2018-08-19 09:45:51'),(1534671960833,1,13000082013,6169,'2018-08-19 09:46:00'),(1534671980295,1,13000082032,10171,'2018-08-19 09:46:20'),(1534898613829,1,17755531490,3961,'2018-08-22 00:43:33'),(1534926287534,1,17602120205,5297,'2018-08-22 08:24:47'),(1535345181813,1,13000082022,8145,'2018-08-27 04:46:21'),(1536220749108,1,13241042199,9916,'2018-09-06 07:59:09'),(1536583466723,1,18013819609,2483,'2018-09-10 12:44:26'),(1537515280163,2,13000038713,5877,'2018-09-21 07:34:40'),(1537515287973,2,13000038714,10441,'2018-09-21 07:34:47'),(1537515337629,1,13000033333,7353,'2018-09-21 07:35:37'),(1537521279290,1,13000049499,2854,'2018-09-21 09:14:39'),(1538114970328,1,15855512382,10359,'2018-09-28 06:09:30'),(1538504485798,1,13000087655,4776,'2018-10-02 18:21:25'),(1538987940551,1,18662327672,1800,'2018-10-08 08:39:00'),(1539076064496,1,15094295280,3361,'2018-10-09 09:07:44'),(1539076102284,1,15094395280,1562,'2018-10-09 09:08:22'),(1540364623910,1,13000085001,4382,'2018-10-24 07:03:43'),(1540966375865,1,13122091271,3880,'2018-10-31 06:12:55'),(1541500666143,1,15280239960,9142,'2018-11-06 10:37:46'),(1541510152560,1,13000099999,1097,'2018-11-06 13:15:52'),(1541510270190,1,13000077777,8192,'2018-11-06 13:17:50'),(1541583746916,1,18689846285,8724,'2018-11-07 09:42:26'),(1541757538733,1,17717112856,2268,'2018-11-09 09:58:58'),(1542261432641,1,15800506515,2586,'2018-11-15 05:57:12'),(1542265654497,1,18010001000,5666,'2018-11-15 07:07:34'),(1542337959344,1,13000012345,4981,'2018-11-16 03:12:39'),(1542548523509,1,13317833374,8921,'2018-11-18 13:42:03'),(1542702268195,1,123123,8055,'2018-11-20 08:24:28'),(1542840424025,1,13818118257,7126,'2018-11-21 22:47:04'),(1543377157089,1,18622250185,6620,'2018-11-28 03:52:37'),(1543966631575,1,13466260815,5835,'2018-12-04 23:37:11'),(1544276193603,1,13000087656,4078,'2018-12-08 13:36:33'),(1544276277509,2,13000087656,9356,'2018-12-08 13:37:57'),(1544276475231,1,15988125475,8940,'2018-12-08 13:41:15'),(1544503797981,1,13000082968,6965,'2018-12-11 04:49:57'),(1545238881566,1,13166059778,4434,'2018-12-19 17:01:21'),(1545269417538,1,18124099720,4882,'2018-12-20 01:30:17'),(1545464407106,1,17755015200,3870,'2018-12-22 07:40:07'),(1545707514503,1,13533039558,3941,'2018-12-25 03:11:54'),(1545895656481,1,13533039550,4968,'2018-12-27 07:27:36'),(1546701633801,1,13534201057,8487,'2019-01-05 15:20:33'),(1547177422559,1,18980210241,7012,'2019-01-11 03:30:22'),(1548068010027,1,17181595855,10716,'2019-01-21 10:53:30'),(1548310439111,1,13059203278,9438,'2019-01-24 06:13:59'),(1548398132694,1,15050529772,9276,'2019-01-25 06:35:32'),(1548742004597,1,13738007826,6318,'2019-01-29 06:06:44'),(1548742124507,6,13000082001,4901,'2019-01-29 06:08:44'),(1548742151361,10,13000082001,8513,'2019-01-29 06:09:11'),(1550473143648,1,13381683351,6922,'2019-02-18 06:59:03'),(1550740162526,1,13521991626,8747,'2019-02-21 09:09:22'),(1551076882566,1,1111111,6119,'2019-02-25 06:41:22'),(1551076937013,1,11111,9166,'2019-02-25 06:42:17'),(1551706765917,1,18983383960,2896,'2019-03-04 13:39:25'),(1551766808556,1,18285650445,2527,'2019-03-05 06:20:08'),(1552014558621,1,13000087654,7672,'2019-03-08 03:09:18'),(1552535605843,1,18859368881,7047,'2019-03-14 03:53:25'),(1552898799194,1,13719254713,8205,'2019-03-18 08:46:39'),(1553090092099,1,18059049703,5740,'2019-03-20 13:54:52'),(1553095400510,1,13185236871,1397,'2019-03-20 15:23:20'),(1553527669068,1,13189758117,8610,'2019-03-25 15:27:49'),(1556263210364,1,18668133682,5235,'2019-04-26 07:20:10'),(1557305399671,1,18717150408,1101,'2019-05-08 08:49:59'),(1557398553414,1,13886881990,10900,'2019-05-09 10:42:33'),(1558870796477,1,18601549904,3826,'2019-05-26 11:39:56'),(1559129604658,1,13000000000,9753,'2019-05-29 11:33:24'),(1559130251743,1,13000000001,8717,'2019-05-29 11:44:11'),(1559207431934,1,1366666666,1122,'2019-05-30 09:10:31'),(1559207507258,1,13666666666,10370,'2019-05-30 09:11:47'),(1559545496930,1,13767332646,1093,'2019-06-03 07:04:56'),(1559790218764,1,15159512738,8811,'2019-06-06 03:03:38'),(1560409123788,1,18030546471,5677,'2019-06-13 06:58:43'),(1561539248383,1,15870873323,4526,'2019-06-26 08:54:08'),(1561702709638,1,18627923596,1989,'2019-06-28 06:18:29'),(1562328158620,1,13687367235,6808,'2019-07-05 12:02:38'),(1562683560796,1,16602341503,7946,'2019-07-09 14:46:00'),(1562914759983,1,15172299452,1876,'2019-07-12 06:59:19'),(1563605296604,1,13590330481,1393,'2019-07-20 06:48:16'),(1563849723501,1,18819375641,2381,'2019-07-23 02:42:03'),(1564024588101,1,18588812307,4869,'2019-07-25 03:16:28'),(1564366616956,1,15855539563,5714,'2019-07-29 02:16:56'),(1564756192754,1,13662626604,10846,'2019-08-02 14:29:52'),(1564805700460,1,13000012356,7884,'2019-08-03 04:15:00'),(1567395836494,1,13800138000,4452,'2019-09-02 03:43:56'),(1568181298813,1,15846537034,9286,'2019-09-11 05:54:58'),(1568768241952,1,13977377898,10365,'2019-09-18 00:57:21'),(1569572535995,1,15954082701,6230,'2019-09-27 08:22:15'),(1570529262714,1,15669090286,2802,'2019-10-08 10:07:42'),(1570601456336,1,18715468983,9341,'2019-10-09 06:10:56'),(1571629287990,1,17051059209,9248,'2019-10-21 03:41:27'),(1573139529444,1,18671349210,3305,'2019-11-07 15:12:09'),(1573634227126,1,18003486540,4101,'2019-11-13 08:37:07'),(1574048501681,1,18311481261,7204,'2019-11-18 03:41:41'),(1574334582308,1,67655615,7420,'2019-11-21 11:09:42'),(1575010570180,1,18102158632,9838,'2019-11-29 06:56:10'),(1575254926301,1,17709218294,1082,'2019-12-02 02:48:46'),(1575624474671,1,15023322360,8839,'2019-12-06 09:27:54'),(1576293801888,1,15182844020,8178,'2019-12-14 03:23:21'),(1578984721638,1,9012667,1927,'2020-01-14 06:52:01'),(1579406819458,2,13000038710,9601,'2020-01-19 04:06:59'),(1579485179096,1,13533487064,6383,'2020-01-20 01:52:59'),(1579582269601,1,15981549382,5927,'2020-01-21 04:51:09'),(1580391228639,1,123456,7373,'2020-01-30 13:33:48'),(1580921833366,1,15518860308,10117,'2020-02-05 16:57:13'),(1586707556460,2,13000088888,8923,'2020-04-12 16:05:56'),(1586707565181,1,13000038710,1883,'2020-04-12 16:06:05'),(1587054127321,1,18813200410,5959,'2020-04-16 16:22:07'),(1592544220843,1,18979117764,2031,'2020-06-19 05:23:40'),(1594366764231,1,18861507756,1776,'2020-07-10 07:39:24'),(1596443483000,1,13855585327,2907,'2020-08-03 08:31:23'),(1600588229871,1,123,6834,'2020-09-20 07:50:29'),(1602859328676,1,15233270513,2109,'2020-10-16 14:42:08'),(1606143623697,1,111,6296,'2020-11-23 15:00:23'),(1606355324165,1,15801485371,1884,'2020-11-26 01:48:44'),(1606728297163,1,13012345678,10306,'2020-11-30 09:24:57'),(1607327720587,1,13007730773,1421,'2020-12-07 07:55:20'),(1616672602256,1,13000082002,10998,'2021-03-25 11:43:22'),(1617086774205,2,13000082001,8074,'2021-03-30 06:46:14'),(1617779775964,1,13818380518,3625,'2021-04-07 07:16:15'),(1617791576584,1,13410220286,6343,'2021-04-07 10:32:56'),(1618542646057,1,15210142165,6431,'2021-04-16 03:10:46'),(1620959465476,1,18264750851,2066,'2021-05-14 02:31:05'),(1621133001977,0,13030809100,4924,'2021-05-16 02:43:21'),(1622441752465,1,15601668311,7513,'2021-05-31 06:15:52'),(1622460068537,1,15012345601,5683,'2021-05-31 11:21:08'),(1623050785460,1,13000082001,8573,'2021-06-07 07:26:25'),(1623254912809,0,13000082001,7025,'2021-06-09 16:08:32');
/* SQLINES DEMO ***  `Verify` ENABLE KEYS */;
UNLOCK TABLES;-- SQLINES DEMO ***  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- SQLINES DEMO ***    Database: sys
-- SQLINES DEMO *** -------------------------------------
-- SQLINES DEMO *** 7.33-log

/* SQLINES DEMO *** ARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/* SQLINES DEMO *** ARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/* SQLINES DEMO *** LLATION_CONNECTION=@@COLLATION_CONNECTION */;
/* SQLINES DEMO *** tf8 */;
/* SQLINES DEMO *** ME_ZONE=@@TIME_ZONE */;
/* SQLINES DEMO *** NE='+00:00' */;
/* SQLINES DEMO *** IQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/* SQLINES DEMO *** REIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/* SQLINES DEMO *** L_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/* SQLINES DEMO *** L_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- SQLINES DEMO *** or table `TestRecord`
--

DROP TABLE IF EXISTS TestRecord;
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE TestRecord (
  id bigint NOT NULL ,
  userId bigint NOT NULL ,
  testAccountId bigint NOT NULL DEFAULT '0',
  documentId bigint NOT NULL ,
  randomId bigint NOT NULL DEFAULT '0' ,
  host varchar(1000) DEFAULT NULL,
  date timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  duration bigint DEFAULT NULL ,
  minDuration bigint DEFAULT NULL ,
  maxDuration bigint DEFAULT NULL ,
  response clob NOT NULL ,
  compare clob ,
  standard clob ,
  PRIMARY KEY (id)
)  ;
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `TestRecord`
--

/* SQLINES DEMO *** NE=@OLD_TIME_ZONE */;

/* SQLINES DEMO *** E=@OLD_SQL_MODE */;
/* SQLINES DEMO *** _KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/* SQLINES DEMO *** CHECKS=@OLD_UNIQUE_CHECKS */;
/* SQLINES DEMO *** ER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/* SQLINES DEMO *** ER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/* SQLINES DEMO *** ON_CONNECTION=@OLD_COLLATION_CONNECTION */;
/* SQLINES DEMO *** ES=@OLD_SQL_NOTES */;

-- SQLINES DEMO ***  2021-06-21 23:26:44

/* SQLINES DEMO *** NE=@OLD_TIME_ZONE */;

/* SQLINES DEMO *** E=@OLD_SQL_MODE */;
/* SQLINES DEMO *** _KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/* SQLINES DEMO *** CHECKS=@OLD_UNIQUE_CHECKS */;
/* SQLINES DEMO *** ER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/* SQLINES DEMO *** ER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/* SQLINES DEMO *** ON_CONNECTION=@OLD_COLLATION_CONNECTION */;
/* SQLINES DEMO *** ES=@OLD_SQL_NOTES */;

-- SQLINES DEMO ***  2021-06-21 23:25:59

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
-- SQLINES DEMO *** or table `Access`
--

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Access';
EXCEPTION
   WHEN OTHERS THEN NULL;
END;
/
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Access (
  id number(19) NOT NULL,
  debug number(3) DEFAULT '0' NOT NULL ,
  name varchar2(50) NOT NULL ,
  alias varchar2(20) DEFAULT NULL ,
  get varchar2(100) DEFAULT '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]' NOT NULL ,
  head varchar2(100) DEFAULT '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]' NOT NULL ,
  gets varchar2(100) DEFAULT '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]' NOT NULL ,
  heads varchar2(100) DEFAULT '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]' NOT NULL ,
  post varchar2(100) DEFAULT '["OWNER", "ADMIN"]' NOT NULL ,
  put varchar2(100) DEFAULT '["OWNER", "ADMIN"]' NOT NULL ,
  delete varchar2(100) DEFAULT '["OWNER", "ADMIN"]' NOT NULL ,
  date timestamp(0) DEFAULT SYSTIMESTAMP NOT NULL ,
  detail varchar2(1000) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT name_UNIQUE UNIQUE  (name),
  CONSTRAINT alias_UNIQUE UNIQUE  (alias)
)   ;

COMMENT ON TABLE Access IS '权限配置(必须)'

-- Generate ID using sequence and trigger
CREATE SEQUENCE Access_seq START WITH 31 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER Access_seq_tr
 BEFORE INSERT ON Access FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT Access_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `Access`
--

LOCK TABLES Access WRITE;
/* SQLINES DEMO ***  `Access` DISABLE KEYS */;
INSERT INTO Access  SELECT 1,0,'Access',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[]','[]','[]','2019-07-21 12:21:36',NULL FROM dual UNION ALL  SELECT 2,1,'Table',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[]','[]','[]','2018-11-28 16:38:14',NULL FROM dual UNION ALL  SELECT 3,1,'Column',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[]','[]','[]','2018-11-28 16:38:14',NULL FROM dual UNION ALL  SELECT 4,0,'Function',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[]','[]','[]','2018-11-28 16:38:15',NULL FROM dual UNION ALL  SELECT 5,0,'Request',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[]','[]','[]','2018-11-28 16:38:14',NULL FROM dual UNION ALL  SELECT 6,0,'Response',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[]','[]','[]','2018-11-28 16:38:15',NULL FROM dual UNION ALL  SELECT 7,1,'Document',NULL,'["LOGIN", "ADMIN"]','["LOGIN", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','2018-11-28 16:38:15',NULL FROM dual UNION ALL  SELECT 8,1,'TestRecord',NULL,'["LOGIN", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','2018-11-28 16:38:15',NULL FROM dual UNION ALL  SELECT 9,0,'Test',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[]','[]','[]','2018-11-28 16:38:15',NULL FROM dual UNION ALL  SELECT 10,1,'PgAttribute',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[]','[]','[]','2018-11-28 16:38:14',NULL FROM dual UNION ALL  SELECT 11,1,'PgClass',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[]','[]','[]','2018-11-28 16:38:14',NULL FROM dual UNION ALL  SELECT 12,0,'Login',NULL,'[]','[]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[ "ADMIN"]','[ "ADMIN"]','["ADMIN"]','2018-11-28 16:29:48',NULL FROM dual UNION ALL  SELECT 13,0,'Verify',NULL,'[]','[]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[ "ADMIN"]','["ADMIN"]','2018-11-28 16:29:48',NULL FROM dual UNION ALL  SELECT 14,0,'apijson_user','User','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN","LOGIN","OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["ADMIN"]','2018-11-28 16:28:53',NULL FROM dual UNION ALL  SELECT 15,0,'apijson_privacy','Privacy','[]','[]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["UNKNOWN","LOGIN","OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["ADMIN"]','2018-11-28 16:29:48',NULL FROM dual UNION ALL  SELECT 16,0,'Moment',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["OWNER", "ADMIN"]','2018-11-28 16:29:19',NULL FROM dual UNION ALL  SELECT 17,0,'Comment',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','2018-11-28 16:29:19',NULL FROM dual UNION ALL  SELECT 19,1,'SysTable',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[]','[]','[]','2019-10-04 01:01:20',NULL FROM dual UNION ALL  SELECT 20,1,'SysColumn',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[]','[]','[]','2019-10-04 01:01:20',NULL FROM dual UNION ALL  SELECT 21,1,'ExtendedProperty',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[]','[]','[]','2019-10-04 01:33:45',NULL FROM dual UNION ALL  SELECT 22,1,'Random',NULL,'["LOGIN", "ADMIN"]','["LOGIN", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["LOGIN", "OWNER", "ADMIN"]','["OWNER", "ADMIN"]','2019-12-01 15:13:13',NULL FROM dual UNION ALL  SELECT 23,0,'Swagger',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','[]','[]','[]','2018-11-28 16:38:15',NULL FROM dual UNION ALL  SELECT 24,1,'Method',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["LOGIN", "ADMIN"]','["OWNER", "ADMIN"]','2018-11-28 16:38:15',NULL FROM dual UNION ALL  SELECT 25,1,'Input',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','2020-01-10 07:12:49',NULL FROM dual UNION ALL  SELECT 26,1,'Device',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','2020-01-10 07:12:49',NULL FROM dual UNION ALL  SELECT 27,1,'System',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','2020-01-10 07:12:49',NULL FROM dual UNION ALL  SELECT 28,1,'Flow',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','2020-01-10 07:12:49',NULL FROM dual UNION ALL  SELECT 29,1,'Output',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','2020-01-10 07:12:49',NULL FROM dual UNION ALL  SELECT 30,0,'ViewTable',NULL,'["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','["OWNER", "ADMIN"]','2021-01-20 14:51:43','MySQL View 支持多张表合并为一张表，这个示例 View 的创建 SQL 为 CREATE VIEW sys.`ViewTable` AS SELECT C.id as `commentId`, C.toId, C.momentId, C.content,  U.* FROM sys.Comment AS C INNER JOIN sys.apijson_user AS U ON U.id = C.userId; 初测正则匹配等条件单表查询、与其它表关联查询、与其它表 JOIN 都和普通的表用起来没有大的区别，目前发现的问题两个是： 1.作为 ViewTable 的表中有同名字段的话要把部分字段取别名，例如 Comment 和 apijson_user 都有 id，这里就用 C.id as `commentId` 取了别名避免冲突；2.APIAuto 不能显示 ViewTable 的表注释和字段注释' FROM dual;
/* SQLINES DEMO ***  `Access` ENABLE KEYS */;
UNLOCK TABLES;
/* SQLINES DEMO *** NE=@OLD_TIME_ZONE */;

/* SQLINES DEMO *** E=@OLD_SQL_MODE */;
/* SQLINES DEMO *** _KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/* SQLINES DEMO *** CHECKS=@OLD_UNIQUE_CHECKS */;
/* SQLINES DEMO *** ER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/* SQLINES DEMO *** ER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/* SQLINES DEMO *** ON_CONNECTION=@OLD_COLLATION_CONNECTION */;
/* SQLINES DEMO *** ES=@OLD_SQL_NOTES */;

-- SQLINES DEMO ***  2021-06-21 23:26:57

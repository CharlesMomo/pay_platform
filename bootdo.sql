-- MySQL dump 10.13  Distrib 5.7.24, for macos10.14 (x86_64)
--
-- Host: localhost    Database: bootdo
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CALENDARS`
--

LOCK TABLES `QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_JOB_DETAILS`
--

LOCK TABLES `QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_LOCKS`
--

LOCK TABLES `QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QRTZ_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `QRTZ_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_TRIGGERS`
--

LOCK TABLES `QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_evt_log`
--

DROP TABLE IF EXISTS `act_evt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_evt_log`
--

LOCK TABLES `act_evt_log` WRITE;
/*!40000 ALTER TABLE `act_evt_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_evt_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

LOCK TABLES `act_ge_bytearray` WRITE;
/*!40000 ALTER TABLE `act_ge_bytearray` DISABLE KEYS */;
INSERT INTO `act_ge_bytearray` VALUES ('135065',1,'流程审批测试流程.bpmn20.xml','135064',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"salary\" name=\"流程审批测试流程\" isExecutable=\"true\">\n    <startEvent id=\"start\" name=\"启动审批\" activiti:initiator=\"apply\" activiti:formKey=\"/act/salary/form\"></startEvent>\n    <endEvent id=\"end\" name=\"结束审批\"></endEvent>\n    <userTask id=\"modify\" name=\"员工薪酬档级修改\" activiti:assignee=\"${apply}\"></userTask>\n    <userTask id=\"audit\" name=\"薪酬主管初审\" activiti:assignee=\"admin\"></userTask>\n    <exclusiveGateway id=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"></exclusiveGateway>\n    <userTask id=\"audit2\" name=\"集团人力资源部部长审核\" activiti:assignee=\"admin\"></userTask>\n    <exclusiveGateway id=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\" sourceRef=\"audit2\" targetRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"></sequenceFlow>\n    <userTask id=\"audit3\" name=\"集团人力资源部分管领导审核\" activiti:assignee=\"admin\"></userTask>\n    <exclusiveGateway id=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\" sourceRef=\"audit3\" targetRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"></sequenceFlow>\n    <userTask id=\"audit4\" name=\"集团总经理审批\" activiti:assignee=\"admin\"></userTask>\n    <exclusiveGateway id=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"></exclusiveGateway>\n    <userTask id=\"apply_end\" name=\"薪酬档级兑现\" activiti:assignee=\"admin\"></userTask>\n    <sequenceFlow id=\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\" sourceRef=\"audit4\" targetRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"></sequenceFlow>\n    <sequenceFlow id=\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\" sourceRef=\"audit\" targetRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"></sequenceFlow>\n    <sequenceFlow id=\"sid-7D723190-1432-411D-A4A4-774225E54CD9\" name=\"是\" sourceRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" targetRef=\"apply_end\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-D44CAD43-0271-4920-A524-9B8533E52550\" name=\"是\" sourceRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" targetRef=\"audit4\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\" name=\"否\" sourceRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" targetRef=\"modify\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\n    </sequenceFlow>\n    <exclusiveGateway id=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\" sourceRef=\"modify\" targetRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"></sequenceFlow>\n    <sequenceFlow id=\"sid-72258A41-203E-428C-B71D-CA3506252D73\" name=\"是\" sourceRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" targetRef=\"audit2\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\" name=\"重新申请\" sourceRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" targetRef=\"audit\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\" name=\"是\" sourceRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" targetRef=\"audit3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\" name=\"否\" sourceRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" targetRef=\"modify\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\" name=\"否\" sourceRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" targetRef=\"modify\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-35CC8C6C-1067-4398-991C-CCF955115965\" name=\"否\" sourceRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" targetRef=\"modify\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\" sourceRef=\"apply_end\" targetRef=\"end\"></sequenceFlow>\n    <sequenceFlow id=\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\" name=\"销毁\" sourceRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" targetRef=\"end\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\" sourceRef=\"start\" targetRef=\"audit\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_salary\">\n    <bpmndi:BPMNPlane bpmnElement=\"salary\" id=\"BPMNPlane_salary\">\n      <bpmndi:BPMNShape bpmnElement=\"start\" id=\"BPMNShape_start\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"30.0\" y=\"240.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"BPMNShape_end\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"975.0\" y=\"356.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"modify\" id=\"BPMNShape_modify\">\n        <omgdc:Bounds height=\"58.0\" width=\"102.0\" x=\"209.0\" y=\"135.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"audit\" id=\"BPMNShape_audit\">\n        <omgdc:Bounds height=\"57.0\" width=\"96.0\" x=\"105.0\" y=\"225.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" id=\"BPMNShape_sid-C28BB5F6-013D-4570-B432-61B380C1F46F\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"240.0\" y=\"240.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"audit2\" id=\"BPMNShape_audit2\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"210.0\" y=\"330.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" id=\"BPMNShape_sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"345.0\" y=\"350.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"audit3\" id=\"BPMNShape_audit3\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"330.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" id=\"BPMNShape_sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"555.0\" y=\"350.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"audit4\" id=\"BPMNShape_audit4\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"630.0\" y=\"330.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" id=\"BPMNShape_sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"765.0\" y=\"350.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"apply_end\" id=\"BPMNShape_apply_end\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"840.0\" y=\"330.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" id=\"BPMNShape_sid-5FED02D6-C388-48C6-870E-097DB2131EA0\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"240.0\" y=\"45.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\" id=\"BPMNEdge_sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\">\n        <omgdi:waypoint x=\"730.0\" y=\"370.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"765.0\" y=\"370.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\" id=\"BPMNEdge_sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\">\n        <omgdi:waypoint x=\"240.0\" y=\"65.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"153.0\" y=\"65.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"153.0\" y=\"225.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\" id=\"BPMNEdge_sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\">\n        <omgdi:waypoint x=\"59.9965176371898\" y=\"255.32320080051775\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"91.4000015258789\" y=\"256.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"105.0\" y=\"255.44805199630667\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7D723190-1432-411D-A4A4-774225E54CD9\" id=\"BPMNEdge_sid-7D723190-1432-411D-A4A4-774225E54CD9\">\n        <omgdi:waypoint x=\"805.0\" y=\"370.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"840.0\" y=\"370.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\" id=\"BPMNEdge_sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\">\n        <omgdi:waypoint x=\"260.0\" y=\"240.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"260.0\" y=\"193.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\" id=\"BPMNEdge_sid-A7589084-4623-4FEA-A774-00A70DDC1D20\">\n        <omgdi:waypoint x=\"385.0\" y=\"370.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"370.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-35CC8C6C-1067-4398-991C-CCF955115965\" id=\"BPMNEdge_sid-35CC8C6C-1067-4398-991C-CCF955115965\">\n        <omgdi:waypoint x=\"785.0\" y=\"350.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"785.0\" y=\"164.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\" id=\"BPMNEdge_sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\">\n        <omgdi:waypoint x=\"201.0\" y=\"256.4158878504673\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"241.14537444933922\" y=\"258.8546255506608\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\" id=\"BPMNEdge_sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\">\n        <omgdi:waypoint x=\"575.0\" y=\"350.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"575.0\" y=\"164.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\" id=\"BPMNEdge_sid-3DBCD661-5720-4480-8156-748BE0275FEF\">\n        <omgdi:waypoint x=\"520.0\" y=\"370.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"555.0\" y=\"370.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\" id=\"BPMNEdge_sid-163DBC60-DBC9-438B-971A-67738FB7715A\">\n        <omgdi:waypoint x=\"260.0\" y=\"135.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"260.0\" y=\"85.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\" id=\"BPMNEdge_sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\">\n        <omgdi:waypoint x=\"280.0\" y=\"65.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"989.0\" y=\"65.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"989.0\" y=\"356.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\" id=\"BPMNEdge_sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\">\n        <omgdi:waypoint x=\"940.0\" y=\"370.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"975.0\" y=\"370.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-72258A41-203E-428C-B71D-CA3506252D73\" id=\"BPMNEdge_sid-72258A41-203E-428C-B71D-CA3506252D73\">\n        <omgdi:waypoint x=\"260.0\" y=\"280.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"260.0\" y=\"330.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\" id=\"BPMNEdge_sid-FA618636-3708-4D0C-8514-29A4BB8BC926\">\n        <omgdi:waypoint x=\"365.0\" y=\"350.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"365.0\" y=\"164.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-D44CAD43-0271-4920-A524-9B8533E52550\" id=\"BPMNEdge_sid-D44CAD43-0271-4920-A524-9B8533E52550\">\n        <omgdi:waypoint x=\"595.0\" y=\"370.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"630.0\" y=\"370.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\" id=\"BPMNEdge_sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\">\n        <omgdi:waypoint x=\"310.0\" y=\"370.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"345.0\" y=\"370.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('135066',1,'流程审批测试流程.salary.png','135064',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0�\0\0\0p��\0\0B�IDATx\�\�\�����9ǹ&�r�\�B\���	�K�pA>�<\�+\�B%S�\�\�0�1s�9�aʘ`�	GJ\�)�lVzXA�²x*�9��#2�F�v���oZ�3;�O\�\�~>U�\�ݙ\�\�G��\��\����+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`�>\�_\0\0\0\0�gZ޲\�G\0\0\0�C���my[P�8ݿ\0\0\0:��O�|�\�oU\�\0\0@g�\�\0\0\0\���&�{z\�9�\0\0\0І}��݈=\0\0\0��\�*C�\�\�\0\0�1,\�\����\0\0\0\�Y�h}?\0\0\00\�.�7\�\�\0\0\0����F\�\0\0`�/r�;y���q(\�\�\�\�y\0\0\00��Ba���e������Oa\0\0\0\�PЇk�y6�¾XЧ6��s\�\0\0`5*�\�\���^O�\�;\�\0\0\0F���6�B�^a\�jA_.\�M\�\0\0�ah��nV\���/���#�\0\0\00���Ղ�Qa�\�0�\�9�\0\0\00��`��K#(\�G��\0\0\0��2ґ�z��H\n�ra\�{\0\0�N�\�\�~6\�Ʈ\��\�#\\D1\�<B�R\��X`�h��i��iZu�:���_3ͮv\�\�`#��\�Ǿ#�\0\0�\�JL�t_elΩNa\�z\0\0Pa%f�t�#\�n[W\�\��C)\�]�\0\0\�CX�Aa߬�nv�f��odJ\�}\�\0@=���ak6Rެ����O�\0�m\0\0�z+1\�\�hľՂ~��}�y\nz\0\0Pa%fĈ}y*����߇�^a?��s�C\0\0\�!�ČAa_�x^�@o���4�>��\0\0�Vb\�Py*~\�+C�M]���)\�\0@=����/\�G�\�\�~\0\0@=���6/\�G�\0\0\0���JLF:eޔ{\0\0Pa%�\r\n�����(\0\0���\��:�ޔ{\0\0Pa%��)y\�\�\�\��e\0\0�\�JL��V+ا\r��V=\0\0���Ӟ\Z�؛r\0\0\�!�w`a��\0\0�X�;��_��\0\0�X�;\�\���\�_��e\�u\0\0�+q�-�E��\�g��S�\�\�\0\0\�!�w����O\�\�iw,�\�\�n#�\0\0�+q�c9\�\�:�\0\0P���3�ϔ4J�Z^\�P\0\0���J\�\�gQ��O��έ\0\0�X�\�{\��O����l�!\0\0Pa%��\�YR������C\0\0�\�Jl%n\�\�\�p�޹�\0\0�+q{/�E����\0\0\�!�[V\0\0`�\�XV\0\0`�\�XV\0\0`�Ė\0\0`+1�\0\0\�\�+1�\0\0\�\�+�e\0\0\�\�\�J�e\0\0���J�e\0\0���J�e\0\0���JlY\0\0���cY\0�}l�cY\0�}l�[V\0\0�}l�\�XV\0\0`�\�XV\0\0`�\�XV\0\0`�Ė\0\0`+1�\0\0\�\�+1�\0\0\�\�+�e\0\0\�\�\�J�e\0\0���J�e\0\0���JlY\0\0���JlY\0�}l�\�X���\0\0�>6X���\0\0�>6X�-+\0\0�>6Vb,+\0\0��\rVb,+\0\0��\rVb\�\n\0\0����\�JlY\0�}l�cY\0�}l�cY\0�}l�[V\0\0�}l�\�XV\0\0`�\�XV\0\0`�Ė\0\0`+1�\0\0\�\�+1�\0\0\�\�+�eY�﫯��ȓO>��e˖e===\�bYu�\�t\�\�lժU��Y�\0�z�\�MEA�z�\�l˖-ٮ]���ܶnݚ�\\��ݼ�?O�\0\0P��xP1B��o�\�~WOO\�\�\0�z�ă�)�\n\��kyQ�[�\0\0P��xPq.�\"�-�z�\'\0\0\�!��NQ�\�_����\�\�sK�Vm�y<�\0W\�\0�+q�}\�z�\r?�>��\�k�h�X<�W\�\0�+q�����\�}jo<�H��\0@=V\�v-\�_x\�\r��xN��\0@=V\�6-\�7�\�ذ��\�\�z\0\0\�C`%V\�k�z\0\0\�C`%͢>�vߨ��\�\�z\0\0\�C`%nӢ~\�\�4,\�\�9E��\0\0�X�۴��w}�\��N�\��\�\�z\0\0\�C`%nӢ>\�kO\�?���\�\��z\0\0\�C`%n\�~\�\�l\�O�;p\�}�X<�W\�\0�+q�}\�z��\�\�\���x.^�W\�\0�+q��;wfon\\��\�G_nXЧ��\�\Z�W\�\0�+�^.ꛍ\��W\�\0�+q����\�6j�(W\�\0�+�^*\�[Ч�(W\�\0�+�^*\�5E=\0\0(\�+\�5E=\0\0\�!�+\��\0\0�+��~�\�\�\��%_7wH(\0\0\�!P\�kR\�׊���^\�`\0P��^\�E}��W\�\0�+���͋�|���f_.\��\0\0���J��o\�v\�-�d�F\��\0\0���J��o�֬�\�4M\�4md\�^.���O��>�{\�ǲٳgW[|�K�\�O�XݱcGv\�\'V[z�s\�=���|0{\����o޼9۸qcv\�gV[��\��l\�ʕٲe˲m۶U\�7^�dɒ��__{\�{�\�x\��\�o�~�\�o\��\�ڵk�\�oڴ)�:uj��\�\�^{m�\�oذ��x�~�u�\���\�oH����;\�s\�\��\\p�\�\���\'\���\�\�\�X�ǩ����G�\��x\�g�\�\�9\�jK\0\���\��׿�\�{\�\�\����U�\��_�u\�\��\�Ɓ�x\�!�\���	\'�\��ޯ��J�\�/��\�\�y\�=��\�w||��\�E�U?/�]w\�qG���}\����\�;\�ϋ�[�����\�[��\�V��\�\�~\�c�9��s�~�\�=\n�p��\�+\�\�	l�\09yE}â�\�OP��Y�f�\�{�\�#�<�Z\�6z\�\����\��\�\�\�9?��\��GQ)O��\������f\�\�\�{\���{ňzz���\�ʎ:\�\�(�u\�]�\�kcd>��\�ի�ŋ��ͩ\�����W_}���7�\�\Z1c f\�\�H\�\�\r7\��\�?��V_\��k�\�D�[ڕG\�\�	l�\09yE���g�s\�\�ݣ�?�\�����>z\�i\�͊�}�Fأh�i��\�Hz���\�\��9�\��QD��=�\�\��\��D\�Ev�\�w\�}w��SO=����\�\��\�\��\��o�ꪫ��?N3�Ԧ\�ǁ��\�\�.�\�ja�կ~��x�.x(��Q���4C!��7�Ѩ�O\�Ƚ<�\� G /���[HG!�G�],�\����Q��\�6\�\����\�hy<v\�E\r8w?>��\�[�\�\�\��\�\�}p��\�w\\�<��A�Jm@y&Az\��y�m1ʟK#�q`#��\�;,�ԧ>U}ުNŏ�1��8���\r��~z�o�\�Y���z�ϊk�s��ȏ�W|�| �YQ/O`�\�\�X�-\�\�̙S�<F�����>��^�P\\:w=�\�����8~���\�gx`�\��\�n��D�R�O#\�P���i\�@\����_���ԃ�\�(\�\��x�xm�SN9�z�!$\�L��X^�i>��xN~�:q��\���������xԊ�4R��i\�Q\�\�\�x\Z��Q����\�t\�Au\�?�>餓�\�\�q\�qQ�\�\�}�\">�\�(�\�\�(\�\�\�\���\�(�\�\�ό�=\n�4�>�	��?qE��r���$ā�8?��\�\�+\�\�E�\�\�S�ˣ�z@�@�@^�J<\��\�G\�A�\�E\Z��SO=5�s\�c4>\�1\�Sҋ�|��>�\��J\���\�9�QH\�SOW�o6�>�&F�c\�<���3}���_��OgP��\�ͫ�f!���zhu\�~z��?�i��z@�@�@^�J<jE}�4\�\�\�E\�f͚�\�𣀍�\�EK�\�1\��\�\�\�pi:|�Y�\�-\�b�y,���\�L�Ji�>\�W?\�3�W�V{�ڔ����_o�>M���ѧ�7\Z�\���\�|\�>�=q�x}��\�rK��}��z\0Ż�?~F�w�\�~�����#�#�����\�9��:.�\�\�\����\�+\�\�n��\�/F\�+�[̕/\�W��*�\�\�4]>�\��\�T<w>���	��F3�\�\�\�Ǹ\�^��3\rR\�]���\�9�q0#\�\�?묳�\�k���Sb�~�wM\�Ⱦ��#�#����\�ڣ)\�99y+��^Q/O G���`%V\�k�zy99y+��^S\�rr�VbE��^��v	�#�P\�k�zy99\�+��^S\�\�(������XQ���\'@�@�@^�J��W\�\�\� G /X����^�@�@�@^�J��\��������XQ���\'�]\�\����^�@�@�\0y�J��\��6\n G G /`%V\�+\�\�	�#�#���,[�L\�~mG^\�\�\'@�@�@^�J<�U�V��e\��t�\�\�޿΋�\�	�#�#��j��\�g�X�\�Wo���v�\����~\�ҥ�\�\�<y\�\�\��\�M\�\�����u1\�;\�\�\�\��\�Ce��:�������0Qz�#�#��\�h9-�e5u\�\�}�7\�	\��#��w����O\�\�iw,�\�\�\�i�#�r\�\�X�;��_˩\�\���\�\� G /`%\�\�3%�ҧ��\��g\�	\��#�����YT,\�\�h�s\�\�	\��#�����0J�Zww�\��C�r\�\�Vb+q�.�%�\n�Z[\�?$O G���`%��\�ri8J\�\�zy9\�\��\�\�\\\rVл�<�r�Vb\�\n\�\�\�\��\�XVXF G G /`%Ʋ��@�\09y+�e�err\�Vb,+,#�#�#��cYYF������ز\�29\�\�+1��\�\�\�X���,#@�@�@^�J�ee�r�Vb\�\n\�\�\���\�XVXF G G /�7V\�E�\�6i\���t8XF G G /\�~+씼\���\�\�\�\�?�\��299y��\\i�Rԯ�:u\��K:,#�#�#�hϕvJ������l�!�\�\�\����[\�\��uF\�u8XF G G /\��+\�s\�K�\��299y����\�\�p��@�@�@^�3��OΥ�\�?�\��299y�\�Z��\�\��\�\�`����@\��S�\�:,#�#�#�&�,\��}�\�Wy�\�\'�lٲ�����Z�ĝ�;/]�4[�j\�\�\�m�\�\��#��-\n�իWg[�l\�v\�ڥ�Sۺuk�r\�\�w��<�\� G /K�\�+\��Za����\��\� G /KL�W`ｖ��u8XF G���0,q��\�z���\�\��#�ƴ����\�\�^]��칥_���<S�+\�u8� G G /�qQ߷�7\��\�볟/�f��\�s�sE�\�2\�\�\�6-\�7=��\n�\�\�xn�\�\\Q�ñ�\099y�]����fâ>�S�+\�u8� G G /�iQ��\�ƆE}<�8W\�\�p,#@�@�@^P\�+\�u8XF G Gr�\�h�q��FE}<�8W\�\�p,#@�@�@^hӢ~\�\�4,\�\�9Ź�^�crr�B��\���\�6<~\�����c�\�\\Q�ñ�\099y�M��h�=}���>S�+\�u8� G G /\�.˲\�[�~�����+\�ϟ�\�W\\�{Μ9Y�Sf͚�\�?�\�?\�u\�u׽�\�o~��\�I]\�\�ܙm�\�wN�\��\�\��L�u8\�t�6\n G�������\�G\�馛v_y\�\�����\�\�\'�\�z{{�;vd!>nٲ%�\�\�~�\�E�������?��_^|�\�M���o[o��;\Z�S\�\�k\��A���my[P�8]�k�\0r\�\�ː\�\��ܯ�\�;��\�j����\�g�z�\�g�/~�\�ϛ7\��\�?�\�	_\�\�ܙ��qy��}�aA�Z�&^k\�^Q?HA�\n��ߪ��Q\09\�\�eyM�\�c�=���K.\�-Z4�b�\�G?�Q6w\�\�\�eԾ^Q\�ltި��~�}�ǱQ\09\�\�e`A�bŊ�.���\�\�_\�F\�/�\�\�K.\�~\�E�\�D,\�[�l\�^��������\n���s\�m@�\09yi,F裠�s\�GS�\�\�_\�\�\�\�=k��\�-\�SS�O���Ղ݈��\� G /�\�9�1\�~�F\�\�\�Ϟ={[^\�=��zMQ?�U�6?\�\�c�\0rrL��\�U\����\�s\�\�\�\�ŋ�Ϝ9s��^S\�{\�=��Oao�\0r\�\�K���U\\\������v饗�թ\������\\Џ\��c�\0rr�2Q\�(}܇>n[7~��\�\�\�\�zE��~4�(\�x�6\n G G /�l����\�\�x#�u\�P͝;���zx;��\�\�\�M�:u_E��~�њ:o\�\�F\�\�H�`�\�\�?�\�\�{\�\'O,x6��^\�&���mʋ�oD���Wԏ��E\�~\'o\�>E��\\<\�F\�\��\�y�?��O>�\��?�\�O��C�\�ߟ��\�v\�\�y���WԏAA?�P�?oY\�c��}�\�S\�\�(���5/W\\q\�\�7\�|s\\���\�zkK���ɂ=�P\�\�ky�\��\��O�����;�\�t�zS\�/�\�\�\n�bA�\�\�\��α�Q\099&c^\�̙�\�رc\\���y1*\�^���E}j[��ݼMNQ\�\'�Xm�=�X�;�\�s�?���x���\�͛��7fg�yf�͞=�����\�?[�re�lٲl۶m\���\�/Y�d�\�۰aC��5k\��{\�)�/\�\����\�}}<��\�����ַ�ձE}�\�\�//\�\���{C�\�F�v�}�¾\�\�\��z\�\�\�(���-/񇍷\�����`\�\�\�յ-��fmd���=���\�\����\��\�\�\�����}\'\�[�s_�Q��\����\�\�\�\�\�gf̘��\�O\��y�w�c�&/܏�5k\�!yA��(\��?�����_\�9�IQ�\�\�;��\�\�Կ�\�{\��qd}}}\�ǋE�֭[�_\�u�rH��\'�pB���W^y���\�_lX�\��o��Ơ��QGU}Ϗ}\�c\�SO=5\��C�.q�\�\�SO\�\�㎫8���-<<��\�\����X:(\�)��\��\�G}4;\�#:����>l\�ׇ\����6�B�^a\�jA_.\�MŷQ\099&C^.��\�ߎ�H��\�\�\�\��;���B�6Z~x\�Q�\�E�I\\p��=\n���y�|��c\�\�\�~�y�\'��8\0P;�,\�<��W\��A@\�_��V�����y�_y{�AA�=\�7��\� �p��\���(��\�{�\�\�?>[�hQ���:uj�\�\�\��.\���q\0�R��b:��T�\����N:)�\�K��\'>O\����W��]bf�O<\��!^ϗJ�\�뮻�\�ky\��ϋ\�Q<`_\�t\�M�_\�\�~ٗ���!�w\�ܙ\�\�CZn/זݗ/�o\������\�ύk\"̜9�\�\��\�g���(�c�ucQ�3>>\�ºYa?Ԃ���V�\�\�(��?/�_~���>�~�\�\�/\�\�s\�o��\�}Z)\�\�\�Q�d��Ra��=�\�\�\�\�?�|\�Q�h�\�~{�\�;\�T�\�\���t@ �\'>nڴ�����<�\�\�\�~�\�\'Fʣ؏\��x\�(�>�\�\�cG}t���Ji�?>�Ǟy\�=,�\���y���y\�D�S\�\�|<7w\�\�\�\�\�sN� \�p�\�\�\��Ϻ����?�\�\��2�S���\�y�^�\�\�?�\�\�/�9o�b\�|\�\�\�?\�\�\�y{0ow\�\�\��{/��F����3f��X\��G�\�\��\�\�\�O<��80U��o��nT\�\�3̂>q���\�\�0�r��\�o\�\���\�?��\�r��\�\�0��޽\�S\�GQ�\n\�\�>\���\�\�W�^]}좋.\�>F\�S�|뭷V��\�����(�+�)�1ݽ\�\���뭷�\�#��i&@�*\�a��4�Q�tP\�+�\�>�\�g�����~<�T4\Z�/�\�\�{\�\�q���\�9�q�\�(֣h�\�=/\��EQ_+\�\��qޞ��}���k����f�ޟ\�w\�}?5\�B�^a�\�\n�\�`�F\�\�\�\��\�_�\�=\�}��n�aq�ܧ��p�4uqQ�F�Sq{\�w���u*�S�^�\�1\�}���ف�s\�1\�m�\�V}n\�ڵ{�ԧ�7D\��я~�ڢ���\��ϏO�}�\�w�N�����b�^o�A*�\�<�\�O?}�߹\\ԟ|�\�F\�\�@\�Yg�\��\�;���7�\�S���q\�Ư>�\�O��w�w�|\��揬W؏��/�α�Q\099y�����\�\�.�\�7\����]�~ƌ��\�a��\�[�\r����\�T\�\�\�x�q1��:h��v�:Ή�\�B9��{\�\�믿^}\�\�^p���Ο\n�f\�\�덦�i�q��\�kR�&\���Q�?�\�{�i4~\"��\�v\�\�k\�\�ǁ�l�}��m�?.�ܗG\�_�=>j\��]��\�\�\�\�t\�UW�\��\�g\�5�>.h���O\�-\�c4>�1�>��^��^.\�S��Ω�Ԯ�_)�S\�\���rQ�F\�\�h}\\\�.\�\�\��\��\�\��\�\�W��\�*�)�\��\�\�\���xm�\��kQ\�\�\����B>\��\��Ǧ\�9=�\�\�\�l����\�7b�\�F\�\��\�y��\�?����\�\�0Z�mƌ\�\�\��d*\�+�)\�(��\�z\�\rG\�+����J�g�1\�\�\"u1?��GK�y\�\0��t��t���Ь��4�\�}��_�\�1J\�E�\Z��\�Q�N�O}��j\�YX���G�P@�U\�\��\��Ω�Q\099&K^\�͛�>n�6�\�����w��Zԧ�\�cT�R�j|q�:�.�w|W�/NmO��/�&.�W\�\��C9\�˼�X��>]`Μ9�S�n\�<����N.\��B����\�0\n\�VG\�ݶ�\�\�\�Rػ���\�\�0��\�ϝ;w�\�/�<&���\��{ŷ0\�9��zm�\�\�(ꇩ\��f��ov�F�Tܧ\�F\�\��|y�5k\�\�y�潷e˖Q-\�\�x㍟̘1\��N�v��W\�C���f}e��}:\�lݶ�\�\�0	�2s\�̹_|q\�h�\�\�}�]]]_\�����^Q?D�F\�[-\�Zا����Q\099&s^����f\�z�o�\�o~=��\�m�������r��9\����W\�C�ؗ�\�_X�}\�\���K?\�9�6\n G G������Ϙ1cټy�\�z\�g�\�>�?��C�f\�Z\�\�\�s\����Q,\�\�+\���&\�\�u6\n G G��4�\�ϋ\�~Μ9[\�ϟ�\�O~�\�{{{ߌ+��\�۷��y�旖.]�?n��\�%3g\�|5���\�ԫ\�+\��c�<?\n�ٕ�ߦ��}\��6\n G G��4�\�\�\�\�2�G<��\��#�)����(oW\��D�(\���\\؏T���\�(���^Q\�\��h �F\�\�\�E���o�H�̛ro�\0r\�\��zE}�CiwQ<�#@�@^P\�+\�\��P�Лro�\0r\�\��zE}�S�֗��%\�F\��#�����1�V�O\���\nz�#@�@^P\�+\�\�S�{S\�m@�\09yAQ��\��\�^Ao�\0r\�\��eٲe�\�\�v\�E�\�I���B~��\�F\��#�FѪU�\�ܲe�{/�\�\�޿΋�&ɪ6�\�\�m��\� G /��\�˗��bŊ_���\�\�\�\�7B�ҥK_\�\�y:,#�#@�@^����\�\�ӳ.��\�9\�ژ��?�0�\nz�er\�\��\��299\�\�\�`����\0\�p,#@�@�@^\0�\�ȑ��\0:,#�#�#�\0�e\�\�\��\��29\�\�\�\�`����\��\��299y\�\�XF Grr�\�p��@�@�\0yt8XF G G /\0:\��#�#�@��er\�\��\��299y\�\�XF�\�\�\��\�29\�\�\�\�`���\�p��@�@�@^\0t8� G G /�\�\��#�@��err��ñ�\099y\�\�XF G���\0:,#�#�#@^\0�\�\�\��\�2\�\�\�\�\�`�r�\�p��@�@�@^\0t8� G G /\0:\�\��#�@��err\��\��299y\�\�XF����\0:,#�#�#@^\0�\�\�\��\�2\�\�\��4�ˢ\�`��u�S6\n G���\0\�׹L\�\�\�������\��S6\n G���\0\�\��,��_;u\�\�}��l@�\09yڳ��Ҩ�\�\�\�>\�\�F\��#���;�z\�֯3Jo�\0r\�\�\���̀s\�Ko�\0r\�\�\�!�\"~�Qz�#@�@^�\�,\�?Q8�~����\� G /@gu6\�s\�\�\�(�r�t^g3E�c�\0r\�\�L:Y�\��ꫯ>�\�O�fٲeYOO�6\�m\�ҥ٪U��>o�l\�H�#9�#9�#9�#yZ�\�ի�-[�d�v\�\��Rۺuk�r\�\�w�\r�yv�\�H�#9�>ˑɑ\�В8��\�o�\r�����\�Dɑ&Gr�ɑɑ\�В���\�m��w��\�Dɑ&Gr�ɑɑ\�В8�G�\�V���\�8\'�FA�\�H�\�H�\�H����#E=L�\��׿z3{u\��\�~�\�\��xL���Q�#9�#9�#9�#MQ�q\�߷�7\��\�볟/�f��\�s:m���(9�#9�#9�#9\��@�v����\�jo<�H���%Gr$Gr$Gr$G��h\�\���\'�ٰ�\�t\�:;Qr$Gr$Gr$Gr�)\�6\��7�\�ذ�\�t\�:;Qr$Gr$Gr$Gr�)\���\�\�N�ir$Gr$Gr$Gr$/�hv�qU\�F�<�\�\��ۉ�#9�#9�#9�#MQ�i\�q\�w\Zv��N[\�o\'J�\�H�\�H�\�H�4E=Ц��;�\�\r�\�0p�V�X<�\�\��ۉ�#9�#9�#9�#MQ�i\��\�\��\�c:l����ɑɑɑi�z��;��;��?�\��)Z�c�N[\�o\'J�\�H�\�H�\�H�4E=І�߶\�\�\�5w4<�*��\�\�u�v�\�H�\�H�\�H�\�H\�\�\�\�X�h\�֩��S:��;�77.\�~�/7\��S�\�\�kݵe\'J�\�H�\�H�\�H���-\�\�m�`E}WW\�tt@\�\�\�(���:;Qr$Gr$Gr$Gr�M�\��X2HQ�v\�ԩ����:�V�\�vtW\'n\'\�N�ɑɑɑ\�QG�S\Z�\�\�\�g���C:�\�v��\�\�\�D\�1��5M�\�H�\�H�\�H�\�H�ں��wn�:��\�A����e�\�m[\�\�>N�#M�\�H�\�H�\�H�ڶ�pn�s\�A\�Mޝ�\�J;N12�u�\�Hɑɑɑɑ6�r���҃\�_�uZ���\�&\��ɑɑɑi���D\�\\�	y�\n(\�5��\�5\�QJ\�O�#M�\�H�\�H�\�H�\�O:�\�(=\���ɷ\�\�҄!�#9�#9�#9�#�\�s4s\�̏wuu]��\�mc\�ޫ�\�\�\�\�k�)�W\�\�TQ��\�&\�N\�iC�\�\�\�H�#9\�\�H�\�H�FQܪ.o=y\�5\�=\�\�\����TS��\�&\�N\�pG:\���:yGJ�\�H�\�H�\�H��N\�Q^��\�?\ZB!_��>���TU�\�_\�����N]\�詏r$Gr$Gr$Gr�uR����>;cƌ�S,\�gΜ�}\�\�Ȗ/_��\�\��]���Yx\���\�\�\�l͚5ق�\�}\�s\�¾Ϩ=\���\�މjv��~9�#9�#M�\�H��\�����X\�?��ٖ-[�Vl۶�����bq��\�E�+\��\��;o\'j��\Zܑ#$r$Gr$Gr$Gr�uB�b��X\�_u\�U\�Q�\�\�\�kʅ�{\��\��;h�)_T\�w�va\�\�P���\�.V$Gr$Gr$Gr$GZ�\�(Ρ/N��\���\�WLͿ�\�\�S�Ve�\�_\�\�9;P\�;B\�\�[V�\�\�T�\�\�)9�#9�#9�#9\�\�=GyA��8B?҂�XؗF\�W��@\��\��Jmd#+�Vv��;P�\�.<\�1\�4ʑɑɑɑ\�\�9�\�\�ϡ\����\�ϱ7\rt�:��\�hǦ\�\�`;R�^O�\�w\�9�r$Gr$Gr$Gr��yQߓ\n\�\�\�Xx衇�\�C\'t���[�vm�\�/V?߼ys\�\�=��\�ٹ\�[m�g\�\�{\�\�s\�\�\�Ν[�|\�\�\�\�\�̘1�\�\�\�\�#�̎=�؆Ͽ�\�k\��|ꩧ�S�\�\�\��̮��\�\�\�����\'�x����\�\�ߑZ��{\�w�\�}\�-�\�љ\�\�����?�mذa�w�ѩ\�\�G�5m;F�v�Z݁*\�H��\�\�V�Wr$Gr4�9\�:��#9���Y7fΜ��tq�M\�wƤ���\�nww�jڬ�Oȧ>�����.����A�\�z\���=\����\�:k�\��\�\�>�M�:��y___\�b\�\�SOm�w�\�G?��r\�)��&\n��+Wf�?�x�hѢj��\�3\�do��V�\�_�~�\�x�\�\�\�(N\�(X\�\�\�_}�\�\��\��ᦛn�>��\�W�\�h�`�\�\�\�\�\�\��Ӣz���>\�ⷵ�#\�lGj�;Pş�u�GHZ�_ɑ\�\��\�H�ňɑ�Ϻ�?~Yz]4Kq�BQ�jڬ�O�4\��_p���\�رc�bdɒ%٬Y��-^#z�vX�կ~��\�߬9�\��>;�Q�D��\�o���#�8��w{\�G�x�5k\�T������EU�GuT�he�_y\�\�ǭ[���4��\�\�\���>P}�����\�\�*~F�:���36n\�X}.=\�.��-ir�w�S\�H\�3\���\�̸\�H����#9���͑6��9�#9\Z\�u#\����+ƴ��mu\�wY�ڂ6*꣸���1��8\�6�\�\�\�(ʯ�Ƙ�_\�\�x���4a��&�\������\�Oy�.����w\�}�Z\�\�\�_}��Ϗ;\�j����x,��FQ�M���\'�pB�o?\�C�3\�8c@S�\�\��L\�H|ܴiS�v��Gx\�\� �\�z;R/�`j��Ϙ��\�H�\�h�r�M\�bD�\�H�\�`\�ȿޘ\�\�����M�-h��>v��x���TL��\�\�kT��\r_w\�u\�\��جISscD�Xp4�,#�{\�hf�:\��\���#���H\��\�~�\�\����/\��~�^zia�\n�(�\�b��i�3\�\�c�\�\�\�\�C�P�裏V�\�G]}~ٲe�\Z�[\�_<\�[��5ґ�z;R#ف*\�HMk���ɑ�O��\�Q�ȑ\�\�\�y۞��\�\�\rv{�\�\�ޡڂ6\Z��;\�1\�w\�W֝6\�\�+Fb\�<Ε�)�Q\04+F*��\�\Z�E�Q�M\�M�E\��\�O~r�\�����ş����\�F	\�4\�\�c�؊�\�(<N?���i\�iT2\�=N\�\�l\�p�\�|\�3igg�W�}ꌈ�T{|$�\��*�ɑ�o���or$G\�\�\�Q���\�\�SmA��1\�;\�q���:v|Snc��rūX��aӹ�qѭ��#�����4e8]\r;>�?~\�\�\�٫7��Q1ϟ|�\�����\�_\�\�\���)\��J_\�EF�#�1�\\x�&�|V\�\�_uں���\�S�Nݷ�\�fW\�\�H+�\rn瑑=�Wr$Gr4>9\Z�;HĬ�\�\����\�\���X_\����SV\�\�9�\�3�9s\�j�?\�[\��V\�\�\�\�=�y\\l2\�\�i%;r4�rTo\�q\�\'V[\�Ev\�\�>�`uJ��~>\��hi���\�q\0:fVŕ\�\�������\�\�m\���ϋ��3\�b\�[�xjq�\�\�z�L\�~I\�_��l�_��Ll\�\�\�5q\�\�,�J\�:2:R߿n\����I^\�G\'_��\�AL��sa\�\�E�)�i\�?v\�\��\�j\�W��)\�>�\�j\Z\��xL.>�Ot0\�G�)~�I\'�TݐD���GQ\�*\�q\�\�\��R�S\�\�\�\�ة��W|���Ϸc\�_\�y*\��U\�\�\�\�\�H\�\�s\���\�H�\�h|r4�w�H�0)l������#[�FE�t��CD�(eF����\�\�?��w�H\�\�\�8ȗ\n�\�]\\ܲ��ĵ;\�\�)��\�%ڼ��q\�Q�\�q�t�+\�\�*�;q\��\�t9\�\��|��U)�vU.��\�h�fJ�\�QT�3Y<\�2\�\�h��\�n��\�\�\Z\ZO۰J锸�\�]s\�zP\����\�}��b\�Q\�x,�\�N>Z�F\�UW�\�D1p\�%��\�\�\�c��s\�Q\�\�	K�;>qt�8\Z�؁�ׯ^��\�\����x���v�\�|\�ш���1�\rOq\�$\���\rFq#?�|e�6\��\�vww�\�`\�i$#�nT\�j\�CّڛW�%Gr$G㗣\�\�A\":E�\���4�_G���E\�~\�\�\�c���]ƈ~z]\�<����\�CmXP\�E�STҁ�4(�%)\�\�;U��7���ɽ=j4�x\�J�\�?�Zp\�A�tP,Z�-f2\�\�4\��\�6-+��w\�uW��v\�3�S|mLK\�۠b^\�\0o�o��R\�p\�iV\\*\�\�\�+�\n�bN\�\�4;����놫߃���#;3ŝ���U\�\�k�V��^���H��,��DA\�A�\�\�tA�x}��ظ\�\�\�qMG�\�;^���b\"6 iJr�^\�\�89v\�oO�\�NH�Zwq�q��ϴ1j�\������H4�\�o��72��w\�\�\��J�\�H�\�\'G\�q�\�I�}\����tp-ו\�T\�(\�\��\�Ay}NEB�0s%�6���<\�\�-�H�\�A��\�1�FA#\�\��(\�\"\�r4�s\�l��8\�ۣt��QA�E_�bۖ�>�x\�T�G\�r���f��k\�\�pdK\�Ô��x\�w�����|P�R:%f���3g\"k\� F|L�\�:`��\�\�>���\�&\�URG�\�\�D��\�0w�Ҕ˳\�H��ɛ��D�E}:Q\�Gq��Q�\�k���\�\"�q��X@D\�Ӊ\�\�^i0R_o1(\�=����O#�\���Թn�\��>�u4ֹX�\� nǕ\�i.ŃU\�\0p\�*�\�O#�q�R�\�i�֪\�A*�\�ݝ��\�8(�n�Z�.x�	1\�&Nũw��\��r����⁶t�.e�݋�V̜9�\�y��;\n\���\�\Z\�/Κ5뷅��p\�(F#\�\�I�;PCݑJ?\�l9\�\�H�\�\�iFK�\��+^0+~fy�o<{\0Q|�Q�4u?��^�b��\0���x>N9)\"\�\�L����\�#��\����w@�\�Ω���\��s\�+�Q�T\�\�\�\�\���9\�\�\�hz\\+&No�[�\�v\�m��*���4*�\n�z�x3�fD�YIw�\"�\�@�L�\�3\\o�J����t�\\�N0�Gq\��Tl\��l,<�\�C\�Q�\�*-�\�\�H�v\�\�b�7cƌj�\�*cG���\�@���\�htf�W\n����{\��M\�D���\�\�+C�\�o��\�C���9J�xi\'�|\�\�\�5\�)\���+^\\,vvb\'+��hŝ�T�s�czozM�׵c\�\�hb\�h�\� #�i�q<\�ާ;:���\�Q�\�b�\�_ir���\�/\�\��s,O�o����+@\�Q\�z\�J�~E�l�b\�O\�Z��\�z�p\\��х\�b\�z|O��{\���Tҹ\�\�\�HL\�O\�b|�\�\�/ogʣ��3c��h\�\��x�ޝ]b\�|l+�\�b&Md%�o\�\�8N	�\�)H\�\�\�A��\\��\r���S����}��x�|_��>�y�TZ0A��t%߸\�O\�\�I�\'I�$�wԵ\\\�\�\�q?\�F\�?\�+\�m���H�M�4\��\�U[�{\�\�L��C\�\�T�\���\�m�\�)Gi�_\�i\�\�\�1-29iD�x��\��bG(\n�\��O\�\�NO�u\�{\�ǈf��[\�g�\�N�&f�\�\�1��vW\\qE���(�8�\�\��ωb������Ɍ��\�\��G;]�\��\�G�s��\�\�\�\�V��XB��<ˑ\�Q:8��\��V�\�//*�i�L\�\�W\n�2M\�\�G�ҀMqm6�>�&�\�K<\�烝R�\��⁼�x\�/]\�\"NyI�\�+��_)\\,�xM�N\�\�\���\�k�\�\�\�b?\�_�\��\�Q�!^+褢>:�b��vV*��\\\�s\��bϥ�\�\�jԁ�z�\�t���\ZjU�\�\�p�\rE+�\�E}qGgza�hve\�*\�H\�Gܱ9��f��\���9����Q\�&F-\�z_od��sEv\�PE�饗\�=��Z���_A��)�t�[\�\�hb\�h�\� �f\�Ķ&\���Z~9wł#�D\��E�\\�G}�\0[i=D\�\��+~o�[D��z\�ה�t�\�4ʙ\�C�\�\�jO�l�\�\�X�\�H�q��|G��F\�c��.�Z|�⁷\�\�G.RXo�>e&\�Ғ�z\�{:�|\�\�hq\�K0N\�Ҕ�\�~�p!\�\�=\�\�#\'Ń��uhQx޶��{��#-\�c\�\�\�o.�G\�\�\�\�}�*&pQ_��v���:\�\��\�;\Z�6�څK;h0�+��\�\�J튧is�Gg\'A1RoGj4F\\\���\�퐣F�\���/�S\�t\�\�\�L젧\�o\��\���ئ���E\�\�͛W},]��\�\��\����D��v|\���[\�\�hb\�h�\� Q�U]�H�Iwqh4��\��[}�P��\�7TJ\�+^�O�\�h��f��\"8\�b�8#�R:M�R�\ri�._\�O��Ν�\�N\�7K�\�9��H�\�#~v\�v�<\�->ƶ)\�\��\�S�ENb;Z��\�}�H�NÙ9\�\�\��l�h^\Z�\�T���\��i�0ы�4�S�b�T\�l\�HQ�\��a��#=����H�N�x\�U|�n���\��J����\�.�cT\'E�\�ѭ���\�\�!\�ź#\��\n\�:�1�P����\�H}.\�LD�҈|�1\�R�ΟF4*��k\�m{�;A\�\�>�{ŕ�\�\��\�\�5)\� h�\�\�\�\�̑f{$Gr$G�ɋ\�9\�\�>α�Yq`�ի\�\�E�\�\�G\�\�\���\�\n&A\�#-Q�\�ŀb�?�妫���@��\�JmJdL\�jv�m�ŋ\nEK���\�P7\�Hs��4v�Z\Z\�\�Ŏ�\�8Z9�\"�x._q\�a*~\��,��#��O�tid#�(\�\�4\�(\�S�fɤ\�>��X���O\�)�\�\�Wj�\"N�\�*\�w�]r\'G�/G�\�ɑ\rM�\�\�m[�(�\�>N\\�bEu>M͏mtooou_�/��/�/��7\�\�)�q�@e���O\�\��TP��oU�\\(�R�\�\�H��x,\�KS\�\�T�(�\�����\�D5\�\Z\�\�FG]�h�s\�ܵ\�^�\��}\�\�7:�1�Q�b��q�\0Y���.T<\�>��ѹ�ũ\�\�;9�#\��H�49j.α/\�\�n�m�s\�a�u�\��\�\�\�:�>\n�(f*��\�E}��Q�8�\�J��s�x�vEb\�0�KS�\��by�U\�!�>F��\�9J\�vZ�\�\��JmD�Q!�F\�\�hz\�~��\�\�\�h�u:\�7](�\�����t��|[�J\�\n���\�;9�=\�l�\�H��!�\�Պ�\�C)\�ct\�U\�av�i\�1�\�U\nȋ\��(j\Z/q.o��\�}��\�+��\���]T�\�\�B\�53f\�أ�JW�\�\�<�L��\�\�HM\�[_\�Ζ��?�%�J�F\�\��\��R\�W\Z\�/]1<]\�7�\�Gv\"[\�\0[��\�����P\ZAotU\�vʝ\�i�Gr�\�\�\�͜9�\�yqe^�?��\��V�\�\�My[���c�_:��;���o�R~<F0ˣ�\�).\�����~Fe/�7Av�´\�ҴA�\�:v�F#GQ�\���T\�\�T��%\\�\�U\�+�\�ջ�c�\�\�(~\\\�\"\��t`-�x�F\��I��ne}o\�N�l�4\�#9\�\�P\�k:��!�S\�H�\�H�\�H�\�HS\�:m�w�\��	�%Gr$Gr$Gr$G��\��k��O;N&\��ɑɑɑi�z@\�M�\�?\�Y\�*|� 9�#9�#9�#9\�\�\��k�����ir$Gr$Gr$Gr��\��#G�ɑ&Gȑ\��u�ȑ!G�ɑ&G�\�_\��ˑ&Gȑ!G�:�?r�ɑir�\��\�_\�\�r�ɑir\��5�?r$Gȑ!G�:M\�/G�!Gr�\��\�_\�ir$G�!Gr\��5�?r$Gȑ&Gr�\���\�t�r�\�r$Gȑ\���\��#G�ɑ&Gȑ\��u�ȑ!G�ɑ&G�\�_\��#Gr�\�r�\���\�t�r�\�r$Gȑ\��u�ȑ&Gr�ɑY\��l�-[�\�m��#\��w[+\�H�#9\�\�9�#���Z�\�\�-[�\�x۠����u\���`��#M�\�H�#\�H�\0Z�|��V�X�\�~{�x\�ɍ�\�ҥ�\�\�<k�ir$G\�i9B�\��ey�3���g]L�s�qo�A\�/G�ɑ\�r$G\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00��/E��>K\�\0\0\0\0IEND�B`�',1),('142502',3,'source',NULL,_binary '{\"resourceId\":\"142501\",\"properties\":{\"process_id\":\"process\",\"name\":\"\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-450D3E1C-0BC3-46D1-9A34-B5B1E25358E2\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-01195158-26A2-436D-A9A9-B148E4CA82F9\"}],\"bounds\":{\"lowerRight\":{\"x\":116,\"y\":99},\"upperLeft\":{\"x\":86,\"y\":69}},\"dockers\":[]},{\"resourceId\":\"sid-1E824AD2-3B5E-46E0-9DBF-8AC0C77ED5E1\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-BA3E24A9-4796-4754-BC74-659051F2504D\"}],\"bounds\":{\"lowerRight\":{\"x\":261,\"y\":124},\"upperLeft\":{\"x\":161,\"y\":44}},\"dockers\":[]},{\"resourceId\":\"sid-01195158-26A2-436D-A9A9-B148E4CA82F9\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-1E824AD2-3B5E-46E0-9DBF-8AC0C77ED5E1\"}],\"bounds\":{\"lowerRight\":{\"x\":160.15625,\"y\":84},\"upperLeft\":{\"x\":116.609375,\"y\":84}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-1E824AD2-3B5E-46E0-9DBF-8AC0C77ED5E1\"}},{\"resourceId\":\"sid-6671953E-684E-41C2-8C80-8BEAD9289719\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":334,\"y\":98},\"upperLeft\":{\"x\":306,\"y\":70}},\"dockers\":[]},{\"resourceId\":\"sid-BA3E24A9-4796-4754-BC74-659051F2504D\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-6671953E-684E-41C2-8C80-8BEAD9289719\"}],\"bounds\":{\"lowerRight\":{\"x\":305.375,\"y\":84},\"upperLeft\":{\"x\":261.390625,\"y\":84}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-6671953E-684E-41C2-8C80-8BEAD9289719\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('142503',2,'source-extra',NULL,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0\0�\0\0\0?\�M\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0�\�\0\0u0\0\0\�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0�\�\�\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\�\0\0\��+\0\0\�IDATx\�\�\�\rP\�g~��v\�_�c�p\�D\�a\�\Z�\�x\�I����DsMft\n�h/�$4\�\�It\ZcƤ^�L�֤ɵ�\�%\��\'�E41*\�9�p��\�\�&�R��Uy�=�\��~p�<��\����ϲ\�\�\�\��=ϳ\���\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��EPE�\'�ԩS?ill̾r\�\�ئ��h�\�M��6\�#\"<v���\�f;\�\�Ҳ*--\�7�\n	\0\���Cuu��.�kPrr����3C�5���N/i��j\�\�\�\�\�\�\�\��MsssvFF��\�!\0Au\�̙\'O>v\�w�\�Çk��B�\�\�JSQQ\�,#�y>�\�6Jd`�P�\�_�\�ƍg���h�@GV			Q.\\����]���w�R!\0�\�>\�]��lll�\����q~�\�8�\�f�O�\�\\�|\�\�3V{,�\�K6�M��\�\�tΚ?������\����*�N?�\�9��\��?{��Lc�1\�n�j<\�Vs�\�9sh�q՟�\0��\���ͨQ�\��\�\�	\0d\��\'���\��w�\����jS�\�5T�*�\0�Ȉ#�V\�={��5�A\0B�z\�j�\�\���o\�\�\�\��ΰaÜr3�� \0�\��u�gw<m-ݿ\�ù})11�/\�&����MO�\�\�(>�?|Wn�(	F\0@@\�\�I�\�\"\r·�:�$\0 4D\�|��!���@@\�J�\�>c�\r\���%*\�$�L��\0\0\�Ր�qfp\�\�.:l<�\0\�\�Z�;=\��\�\n  \\]m�\�=\��\�7��\�t�ܜ�\�\�\�\0  �\�U�\��wߟ\�\\�=m*�g.�\�o<�\0\��{!${�\�\�\�\���n	�\�o�Q°��e��K\�0@��=��6�2\Z��\�\����\0\�_i��V\�N�\0z�) ��\���\0\0@\0\0�\0\0\0$\0\0�-\�C\� \�kᖕ����#G~TUU5���rP}}�\�\�r�\�\�:thKBB¹\�\�\�����-]���ܚ��\�hmm}<\"\"b�ܝ$G�C\�p\�\�x<*\���\�b)X�n\�H\0�[\��\�\'�����;\�ҥK\�q\�ƙ��ts�\�i�Mtt��$\�\�\�`;{�\�h�\�1��\�\�?z\�\�455\�����)E�g\�͛��\�<\�v��Io\�\�)\�r��\�\�\�\�\��-++�X\�Y�~}>	\0}\���O���\�\�\�\�\�٥���\'\Z\�qt����HJJ2�\�{�Y�paDii\�Ȃ��_\�\�\�,����\�M����&��/�Õq/O�ץ\�{\�HBx\"\\c��^�u��\�Ek׮}`�\�\�\�G\�\�MrXv\�ޝ�q\�\�\�?�\�3�\�h\0\�,333+22�]\��_���\�\�]w\�e�N�jRRRL||�^S�ImjkkMEE�9x�Ѷii�v\�4y\�E<��@�\Z�}��\�߻w\��/^lƌӫ�\�\�\�0���1+W���SO=e_�z�/(e\�Z\���4��\��[:\Z~\�p͜9\�;��ޠA��\��\�\�\�}�\�\�M;v\�0;w\�4\��ק��X�@�$��\�p�\n(\0�\�e˖\��\�+�n�;�9Ҽ�\�k1R\�WJ\�̦��k=�Bi����6\�o��~\0\�e\�\�\���u���OG\�p�5��霿�$X�hQ�+`O\�����\�C����C*f*���L\�����nG\�?v\�X�bŊ?i\�o��N_?a\�\�$�^8\�\Z	��t�OQQ\�{:\�\�W=��F\�\�K�\�CJ�\��\�9\��/Y�\�;\�\�:5���\��&����?���p�.\�\�9{�5kVL\\\\\�h��0P\�ROi��_뜿6ڽm�}���\�}m��K��\0�\��w8�K=������rrr�#=�\�4�^����΢�]����\�N�tG\�\�\�G��\�p(w\�O�\�.Xu\�f \�}�\�6�\�>Z\�A\n\n*�\��L\�\�v\�m���#\"\"ֵ���lڴ������C\�\�\�M��������uH\��\���M\0���\��\�?��c�hZ�b�\�\��ݝ\�\�/&Lp~�\�s\�\�U����\�\�\�\�%��%�k�G�]\�T�v\�Z�=0X\�\�|�C�%vꥑ\�&�}�:Ծ��7\�4\��lz\�\�AzR�\�X\�CA�5@�ӽ}t{�@�:uj�T\�\�P)% \�%�ʗ].W��yl��\�g\�\�\�\\�=+\��G���C�Q\�o���\�\�\�5e\���B��>	 $b��tc7]�Hw\�y\� �\�&W�&F�K �X��u�vIЮed��\�ѡ�:�#�\"ݫG\�\�I>1\�\�_bԨQ�w\'��B%��\�\�C\�@jiiI� i�\�X\�E\'G�����\�iff手/RaBDuu�w+��C:2�+uh�\�!\�\����c\��O$�KZ1u3�@:p\�����/���\����\�2g\�*M�\�/��+ӟ\��Y\�\�WK?��KB}G%$\0tI��\�\�9�I`ʔ)՛7o��F��\0��=i,��\�ڮK\0\'\'O�|\'5&4\���\��\�Ӛ~\Z�u�Mz���N�or\�\�\�$\�\�\�\�\�$�\����H\0\�z�\Z\�R[[kKNN\�ό����`pt����\�]�6k`\�\�d\�h�\�~�\�߫KE%I\�\�\�\0�|�I5&4$&&zW�,]�4$\�Niʍ�}�\�v�C\�\�*�\�\��u#7&\0}\�$\0t)>>����R�\0\�\�\�Nh/)\���ێ�c�1\Z�\�\�cCLL\�^i�k�!�3�Ŷ��c��W]\�!IG;�ɓ\'��$0_�e���$\0t7\�\�p8Rt\��@ٿ�����O\���\�\���}pl7S�dD�O��\��\�\�?}�t��b��>����&�I]]\�2x���-2@\'��\�\�\�u�\�\��7\�\�\\n�###?j_\�IO~�CV��P\�\�\��\�\�\�RSSS㗓�t�\�СC���iON$\0t���{b�\�ŧ�B~O\�T����h�\�\��S\�_�X��\�6\�\�G�\�^�}޼yŒ<f\�\\�B.��_۵k��u\�\�����m H\0�,���8q�\�ϣ�ڏ>�\�$�\�\n\�\�)��\�A�CzU���&�iӦ�\�ggϞ5�~�\�޿\�گ¡\�\�\rԏ֬Y���������j\�*\��7UUUP\��֯__(7\����\�~�m\�о�K?\�y\�6��k��p�5��G�u\�\�\���r��YY\��C�͖\�\�챃\�	Ӿ4���Ҽ�曽N\��K2�;w�c\�N�F��ж\�\�իOKe�\�\�[H��\�ʕ+\'I��g\��/���k�g�|\�m��;潤�N\�\�\n}ݫ��\�&�����N�<N�F����u�����/_\�\�W#\����⋷\�p�=����2`̆\rtj\�\�$�#�e˖\�\�ן\�\�-}�$�\�K/���u�Ҳp�5U&0��>���r���d�\�bi3f�-2��o\�[o�U }�T\�\�r����l.\\�\"\�;��{�\�\��\����;��\�Ǐמ\�\�\�.�\���\�\�U<\'N�Е<\�\�th�\�\�v\�4��\�%F�2�\�\�?t�\�W�\�D�[\��9\�k\�cP�{\'YYY6nܸf\�Ν\�srrb\�瞘�ܵgϞ¼����)R�`\��q�I�|�\�C�1�pXw:\�\�&fFJt\�?\\c�`\�k� �s\�U���\�lRSS/���\r=z�-!!!Y7�knn>/CѺ����\\F\r����R�G\�k\�t:���\�Q�=��&�x�$���h�J\�X\�F^\�Գ7\��LKKK\�=z�o\��d�\�����յ\��-ǳ\�p\�	\�Xs�\�z��XKn�5�9]=�{�\���J��\0�L\�b���\�\0\�Z��\n\0H\0\0\0\0\0�\0\0 \0\0H\0\0\0\0\0�\0\0 \0\0H\0\0\0\0\0�\0\0 \0\0H\0\0\0\0N%����\�n\n\"\��\�i��.H\0�\�EGG_hhh� B�\�˗\�\���\0�_TTTI]]�Ng�\�S$\0  \\.׿VUU�x<\n#�*jjj&\�\���\0Ĵi\�J\���\�\�J\n#�\��?T>�\�C(\r\0\�Q@vEEŕ��z\n#jkk�I\���n��Jc\�P���\�,8x\�ҥ\�\�\�\�\�v;��ƿ��lBDD\�?Μ9��!\0���w2;;�w\�ϟ\\\Z��\�\�\���`��\�\�pl��׃\��Ϙ1\�3�d`!�rv\�ޝ\Z��\�j�\'))\����ߕQA�<F\�����ץ��\�G?�\�9��\�\�\�pP:$\0 dM��\��2]�\�rDS*��\'y\�:�b9���/\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�i�V1\�W�Q\0\0\0\0IEND�B`�',NULL),('145002',1,'new-process.bpmn20.xml','145001',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"process\" isExecutable=\"true\">\n    <startEvent id=\"sid-450D3E1C-0BC3-46D1-9A34-B5B1E25358E2\"></startEvent>\n    <userTask id=\"sid-1E824AD2-3B5E-46E0-9DBF-8AC0C77ED5E1\"></userTask>\n    <sequenceFlow id=\"sid-01195158-26A2-436D-A9A9-B148E4CA82F9\" sourceRef=\"sid-450D3E1C-0BC3-46D1-9A34-B5B1E25358E2\" targetRef=\"sid-1E824AD2-3B5E-46E0-9DBF-8AC0C77ED5E1\"></sequenceFlow>\n    <endEvent id=\"sid-6671953E-684E-41C2-8C80-8BEAD9289719\"></endEvent>\n    <sequenceFlow id=\"sid-BA3E24A9-4796-4754-BC74-659051F2504D\" sourceRef=\"sid-1E824AD2-3B5E-46E0-9DBF-8AC0C77ED5E1\" targetRef=\"sid-6671953E-684E-41C2-8C80-8BEAD9289719\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_process\">\n    <bpmndi:BPMNPlane bpmnElement=\"process\" id=\"BPMNPlane_process\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-450D3E1C-0BC3-46D1-9A34-B5B1E25358E2\" id=\"BPMNShape_sid-450D3E1C-0BC3-46D1-9A34-B5B1E25358E2\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"86.0\" y=\"69.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-1E824AD2-3B5E-46E0-9DBF-8AC0C77ED5E1\" id=\"BPMNShape_sid-1E824AD2-3B5E-46E0-9DBF-8AC0C77ED5E1\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"161.0\" y=\"44.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-6671953E-684E-41C2-8C80-8BEAD9289719\" id=\"BPMNShape_sid-6671953E-684E-41C2-8C80-8BEAD9289719\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"306.0\" y=\"70.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-BA3E24A9-4796-4754-BC74-659051F2504D\" id=\"BPMNEdge_sid-BA3E24A9-4796-4754-BC74-659051F2504D\">\n        <omgdi:waypoint x=\"261.0\" y=\"84.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"306.0\" y=\"84.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-01195158-26A2-436D-A9A9-B148E4CA82F9\" id=\"BPMNEdge_sid-01195158-26A2-436D-A9A9-B148E4CA82F9\">\n        <omgdi:waypoint x=\"116.0\" y=\"84.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"161.0\" y=\"84.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('145003',1,'new-process.process.png','145001',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0X\0\0\0�\0\0\0�/��\0\0\�IDATx\�\�\�\�OSg�q/���؅ɖ\�?a��0\�.$ �$V(�$dJ �4�\�-YLH���%\� cL^\n�Wɘ��6D�2��+ȳ\�\�Qs,�\�����~?\�7�b\�9\�>}z^�m\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�B)�}ll\�fOO\�ۖ�\�\�\�̰x�\�n\�\�\���\�l���H\\;::�\�\�U~���133�\�\�\�^\�\�\�e�Bf�\�\�6��\�\�0[%\��,@\�\�3t`�\�*��5@\�f��*�J ��\���\Z뽦�ܥ�!�-_#�@����T\Z�\�@}�{C�&�F \��>�yM\\�cb��0X\0\�v�n����\�#�f`4�lXy�0X\0���W`威�+�F \���v}�a`\�1\�H`�\�\�\�A���x\����<F	,�0+\�\�\�7\�V�F	,�H���\Z\��a\����<F	,�0+gj�t}�\�\Z�<\�\�\\�V�g�S��ꏆo7�kp\��\��2�%�\0>؏\�Z�\�X\0av3�\�\�f	%��A`ÍkpJ`\�&�\0,�@`\0�%��9�R;]ׯ_o+++{q\�ر�\�\�L����\�\�\�W�9\�?}��Xyyy��X�\r_ZZ\�\'\�\�\�9z���Ǩ�鱨\�C�X����|u��޺u\�\�ٳg����\�իWUOO����T���Jȯ^�Wݿ_\�\0�\�Ǐ��8qb�СC\��A`7o߾}_\�Ѭ�5��w���S�8�C�u\�ܹ\��x.//�\�\�\�\�W���\�.�k8))\�3\� �ӑܩ#ٰ���7:���9yֺ������\�ê��nKa\r\�\�Р���|N�\�Xm�\�~Jjj\�\�X\��\����U=~�X�|�2�?-,,\�=vuu���\n���\�\�\�3��y\\=\�o���jddDE\����ұ�eggC`���\�\�A\\6����*�\�sss�\�\�g��3���\r\�\�U\�\�\'x�\�\�ӳظu%�6�3Wc\\����\�p\���\�2��ۚ�,Dk\�\�L���s��\�E`�XYs5.�[�,�?>t�`e�\�\���\�\�R�������ާ\�\�\�#��D���\�8s�4�\�Ȇ\�d;��\r\�\�\��(Ơ7o�َ=:�o_,����e\\s\rwY\�C\�\�5Y�\nl0{�\�\\\�P,+�\�uK`	l\���|@e�\�\�jf�v!gh\�[���UYYYӲe��^�/	,�5s�3��l\�,svv֔�K�.9�k\'��9����RY����_N��ч��S\�\�\�\�_Xk\�6�z�k\��.^�h�>f\�)J#rm9�\�J\�\�\�\��I��\�\�aw֛�X\�6�zm��\��\�\�}LNF0�]\�(]�ȅ[���,\r\����W?\�Ol�s���wK`#نV/\��z�?\�\n%g|�O(]�\�U��n���<�2�\�w\�lD\��X\�6��/��\�:4\�C�l~�\"��\�^\�\"&��\�k\�\�6V\�c�.F222V����|�\�8���\��\�w\�\�\�3\�H�!\�u]��&�\�\�\\�\�k�O�>�\�\�k�5X�m�5\�TTT4j�Q����\��(�{r�MhX	,��\�6\�Q	\�ҥK�V[\\\\\\o�\�`ם�X\�m�\�`Й3g>\�\�\�yk\�\\����\�\�\�%��FB\�\�\�\���grɽ�8�\�&�����\�Z���U�z~4�%��\�Z	\�\���I\'O�\\�`;�g�}\\M��մ̻��\�\�V���͸\\�A��+\�����N\�p��\�u=X=QZ6\�^\�u_sY���uG����Z�3������\�\�cƄ;\Z�pGKOOO\�3مhߓkbb�S�my\�=��rO�\�^Ѹ\'W\�̕��JKK˒Fk&+3W��ޠ\n\��߆�\�(\�d3��\r\�UV�\�\�\��q\�U��5G�WW=�}q��\�W|�5w��\�k�, ��],�5c_\�c\�H	�\'+\'#\�\�4�| \�\0r���Dp\�\�����6\�\�y�\�k	�&�_[\\.\�t__�o+ǹ655U\�@�\�\"��ց,�5k_3�\�\�`\�5>���\�\�\�LoYY\�Pgg\�#�*:�@�\\�E�-\�v�)))��_}\�\�ɖWR�}�I`	�\��\�jh��V\'\�k��6+�\�[=���\\�\'x�����\�,�\�9��K`\�\�\0K`X�@`	,\0K`X�@`	,\0K`X�@`	,\0K`X�@`	,\0K`X�@`	,\0K`X�@`	,\0K`X�@`	,\0+���6��E\�%�J�!\�\�ۧ�^/q������Iv��p�\�\�֯<\��gϞ��\\\�f�W�\��H��l���\�z��9�\�\�SYdX>\�\�}��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�?�#�\r\0\0\0\0IEND�B`�',1),('145006',2,'source',NULL,_binary '{\"resourceId\":\"145005\",\"properties\":{\"process_id\":\"process\",\"name\":\"\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('145007',1,'source-extra',NULL,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\02\0\0\02\0\0\0?��\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0�\�\0\0u0\0\0\�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0�\�\�\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\�\0\0\��+\0\0\0 IDATx\�\��\0\0\0� ��nH@\0\0\0\0\0\0\0\0��\'B\0����\0\0\0\0IEND�B`�',NULL),('147502',1,'source',NULL,_binary '{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL),('57502',8,'source',NULL,_binary '{\"resourceId\":\"57501\",\"properties\":{\"process_id\":\"salary\",\"name\":\"流程审批测试流程\",\"documentation\":\"\",\"process_author\":\"bootdo\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/test\",\"executionlisteners\":\"{\\\"executionListeners\\\":\\\"[]\\\"}\",\"eventlisteners\":\"{\\\"eventListeners\\\":\\\"[]\\\"}\",\"signaldefinitions\":\"\\\"[]\\\"\",\"messagedefinitions\":\"\\\"[]\\\"\",\"messages\":[]},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"start\",\"properties\":{\"overrideid\":\"start\",\"name\":\"启动审批\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"apply\",\"formkeydefinition\":\"/act/salary/form\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\"}],\"bounds\":{\"lowerRight\":{\"x\":60,\"y\":270},\"upperLeft\":{\"x\":30,\"y\":240}},\"dockers\":[]},{\"resourceId\":\"end\",\"properties\":{\"overrideid\":\"end\",\"name\":\"结束审批\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":1003,\"y\":384},\"upperLeft\":{\"x\":975,\"y\":356}},\"dockers\":[]},{\"resourceId\":\"modify\",\"properties\":{\"overrideid\":\"modify\",\"name\":\"员工薪酬档级修改\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"${apply}\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\"}],\"bounds\":{\"lowerRight\":{\"x\":311,\"y\":193},\"upperLeft\":{\"x\":209,\"y\":135}},\"dockers\":[]},{\"resourceId\":\"audit\",\"properties\":{\"overrideid\":\"audit\",\"name\":\"薪酬主管初审\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"admin\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\"}],\"bounds\":{\"lowerRight\":{\"x\":201,\"y\":282},\"upperLeft\":{\"x\":105,\"y\":225}},\"dockers\":[]},{\"resourceId\":\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\",\"properties\":{\"overrideid\":\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\"},{\"resourceId\":\"sid-72258A41-203E-428C-B71D-CA3506252D73\"}],\"bounds\":{\"lowerRight\":{\"x\":280,\"y\":280},\"upperLeft\":{\"x\":240,\"y\":240}},\"dockers\":[]},{\"resourceId\":\"audit2\",\"properties\":{\"overrideid\":\"audit2\",\"name\":\"集团人力资源部部长审核\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"admin\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\"}],\"bounds\":{\"lowerRight\":{\"x\":310,\"y\":410},\"upperLeft\":{\"x\":210,\"y\":330}},\"dockers\":[]},{\"resourceId\":\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\",\"properties\":{\"overrideid\":\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\"},{\"resourceId\":\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\"}],\"bounds\":{\"lowerRight\":{\"x\":385,\"y\":390},\"upperLeft\":{\"x\":345,\"y\":350}},\"dockers\":[]},{\"resourceId\":\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\",\"properties\":{\"overrideid\":\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"}],\"bounds\":{\"lowerRight\":{\"x\":345.1328125,\"y\":370},\"upperLeft\":{\"x\":310.21875,\"y\":370}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"}},{\"resourceId\":\"audit3\",\"properties\":{\"overrideid\":\"audit3\",\"name\":\"集团人力资源部分管领导审核\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"admin\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\"}],\"bounds\":{\"lowerRight\":{\"x\":520,\"y\":410},\"upperLeft\":{\"x\":420,\"y\":330}},\"dockers\":[]},{\"resourceId\":\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\",\"properties\":{\"overrideid\":\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-D44CAD43-0271-4920-A524-9B8533E52550\"},{\"resourceId\":\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\"}],\"bounds\":{\"lowerRight\":{\"x\":595,\"y\":390},\"upperLeft\":{\"x\":555,\"y\":350}},\"dockers\":[]},{\"resourceId\":\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\",\"properties\":{\"overrideid\":\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"}],\"bounds\":{\"lowerRight\":{\"x\":555.1328125,\"y\":370},\"upperLeft\":{\"x\":520.21875,\"y\":370}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"}},{\"resourceId\":\"audit4\",\"properties\":{\"overrideid\":\"audit4\",\"name\":\"集团总经理审批\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"admin\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\"}],\"bounds\":{\"lowerRight\":{\"x\":730,\"y\":410},\"upperLeft\":{\"x\":630,\"y\":330}},\"dockers\":[]},{\"resourceId\":\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\",\"properties\":{\"overrideid\":\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-7D723190-1432-411D-A4A4-774225E54CD9\"},{\"resourceId\":\"sid-35CC8C6C-1067-4398-991C-CCF955115965\"}],\"bounds\":{\"lowerRight\":{\"x\":805,\"y\":390},\"upperLeft\":{\"x\":765,\"y\":350}},\"dockers\":[]},{\"resourceId\":\"apply_end\",\"properties\":{\"overrideid\":\"apply_end\",\"name\":\"薪酬档级兑现\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"admin\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\"}],\"bounds\":{\"lowerRight\":{\"x\":940,\"y\":410},\"upperLeft\":{\"x\":840,\"y\":330}},\"dockers\":[]},{\"resourceId\":\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\",\"properties\":{\"overrideid\":\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"}],\"bounds\":{\"lowerRight\":{\"x\":765.1328125,\"y\":370},\"upperLeft\":{\"x\":730.21875,\"y\":370}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"}},{\"resourceId\":\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\",\"properties\":{\"overrideid\":\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"}],\"bounds\":{\"lowerRight\":{\"x\":241.44715254815893,\"y\":258.8729578650751},\"upperLeft\":{\"x\":201.64659745184107,\"y\":256.4551671349249}},\"dockers\":[{\"x\":48,\"y\":28.5},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"}},{\"resourceId\":\"sid-7D723190-1432-411D-A4A4-774225E54CD9\",\"properties\":{\"overrideid\":\"sid-7D723190-1432-411D-A4A4-774225E54CD9\",\"name\":\"是\",\"documentation\":\"\",\"conditionsequenceflow\":\"${pass==1}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"apply_end\"}],\"bounds\":{\"lowerRight\":{\"x\":839.78125,\"y\":370},\"upperLeft\":{\"x\":804.8671875,\"y\":370}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"apply_end\"}},{\"resourceId\":\"sid-D44CAD43-0271-4920-A524-9B8533E52550\",\"properties\":{\"overrideid\":\"sid-D44CAD43-0271-4920-A524-9B8533E52550\",\"name\":\"是\",\"documentation\":\"\",\"conditionsequenceflow\":\"${pass==1}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"audit4\"}],\"bounds\":{\"lowerRight\":{\"x\":629.78125,\"y\":370},\"upperLeft\":{\"x\":594.8671875,\"y\":370}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"audit4\"}},{\"resourceId\":\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\",\"properties\":{\"overrideid\":\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\",\"name\":\"否\",\"documentation\":\"\",\"conditionsequenceflow\":\"${pass==0}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"modify\"}],\"bounds\":{\"lowerRight\":{\"x\":260,\"y\":239.5},\"upperLeft\":{\"x\":260,\"y\":193.5}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":51,\"y\":29}],\"target\":{\"resourceId\":\"modify\"}},{\"resourceId\":\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\",\"properties\":{\"overrideid\":\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\"},{\"resourceId\":\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\"}],\"bounds\":{\"lowerRight\":{\"x\":280,\"y\":85},\"upperLeft\":{\"x\":240,\"y\":45}},\"dockers\":[]},{\"resourceId\":\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\",\"properties\":{\"overrideid\":\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"}],\"bounds\":{\"lowerRight\":{\"x\":260,\"y\":134.3828125},\"upperLeft\":{\"x\":260,\"y\":84.5625}},\"dockers\":[{\"x\":51,\"y\":29},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"}},{\"resourceId\":\"sid-72258A41-203E-428C-B71D-CA3506252D73\",\"properties\":{\"overrideid\":\"sid-72258A41-203E-428C-B71D-CA3506252D73\",\"name\":\"是\",\"documentation\":\"\",\"conditionsequenceflow\":\"${pass==1}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"audit2\"}],\"bounds\":{\"lowerRight\":{\"x\":260,\"y\":329.46875},\"upperLeft\":{\"x\":260,\"y\":279.90625}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"audit2\"}},{\"resourceId\":\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\",\"properties\":{\"overrideid\":\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\",\"name\":\"重新申请\",\"documentation\":\"\",\"conditionsequenceflow\":\"${pass==1}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"audit\"}],\"bounds\":{\"lowerRight\":{\"x\":239.7734375,\"y\":224.51953125},\"upperLeft\":{\"x\":153,\"y\":65}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":153,\"y\":65},{\"x\":48,\"y\":28.5}],\"target\":{\"resourceId\":\"audit\"}},{\"resourceId\":\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\",\"properties\":{\"overrideid\":\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\",\"name\":\"是\",\"documentation\":\"\",\"conditionsequenceflow\":\"${pass==1}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"audit3\"}],\"bounds\":{\"lowerRight\":{\"x\":419.78125,\"y\":370},\"upperLeft\":{\"x\":384.8671875,\"y\":370}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"audit3\"}},{\"resourceId\":\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\",\"properties\":{\"overrideid\":\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\",\"name\":\"否\",\"documentation\":\"\",\"conditionsequenceflow\":\"${pass==0}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"modify\"}],\"bounds\":{\"lowerRight\":{\"x\":365,\"y\":349.6875},\"upperLeft\":{\"x\":311.859375,\"y\":164}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":365,\"y\":164},{\"x\":51,\"y\":29}],\"target\":{\"resourceId\":\"modify\"}},{\"resourceId\":\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\",\"properties\":{\"overrideid\":\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\",\"name\":\"否\",\"documentation\":\"\",\"conditionsequenceflow\":\"${pass==0}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"modify\"}],\"bounds\":{\"lowerRight\":{\"x\":575,\"y\":349.6875},\"upperLeft\":{\"x\":311.44921875,\"y\":164}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":575,\"y\":164},{\"x\":51,\"y\":29}],\"target\":{\"resourceId\":\"modify\"}},{\"resourceId\":\"sid-35CC8C6C-1067-4398-991C-CCF955115965\",\"properties\":{\"overrideid\":\"sid-35CC8C6C-1067-4398-991C-CCF955115965\",\"name\":\"否\",\"documentation\":\"\",\"conditionsequenceflow\":\"${pass==0}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"modify\"}],\"bounds\":{\"lowerRight\":{\"x\":785,\"y\":349.6875},\"upperLeft\":{\"x\":311.244140625,\"y\":164}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":785,\"y\":164},{\"x\":51,\"y\":29}],\"target\":{\"resourceId\":\"modify\"}},{\"resourceId\":\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\",\"properties\":{\"overrideid\":\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"end\"}],\"bounds\":{\"lowerRight\":{\"x\":974.078125,\"y\":370},\"upperLeft\":{\"x\":940.5,\"y\":370}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"end\"}},{\"resourceId\":\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\",\"properties\":{\"overrideid\":\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\",\"name\":\"销毁\",\"documentation\":\"\",\"conditionsequenceflow\":\"${pass==0}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"end\"}],\"bounds\":{\"lowerRight\":{\"x\":989,\"y\":355.89453125},\"upperLeft\":{\"x\":280.2216796875,\"y\":65}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":989,\"y\":65},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"end\"}},{\"resourceId\":\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\",\"properties\":{\"overrideid\":\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"audit\"}],\"bounds\":{\"lowerRight\":{\"x\":104.83832369973481,\"y\":256},\"upperLeft\":{\"x\":60.49976831931648,\"y\":255.3340467200345}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":91.4000015258789,\"y\":256},{\"x\":48,\"y\":28.5}],\"target\":{\"resourceId\":\"audit\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('62501',3,'source-extra',NULL,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\�\0\0\0�_г\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0�\�\0\0u0\0\0\�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0�\�\�\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\�\0\0\��+\0\0 \0IDATx\�\�\�	xT\����3�� ���QYT\\\�\�b���EE �Vjk�����XA\�A��Ek�*�*P!D ABB6�\���\�ͽ�fHB�\��~=\�\�\�rg\�\�̜��s\�U\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�!ƌӌZ\0\0\0\0PY\�T\01eʔQYYY\�\�\�ᣩ\r\0\0\0\0���*\0��\�O�>|��믿\��\���\�}��\�\�\�\0\0\0�� t@}�\�t�\�]ҽ\�Q@Ct���\�\�r�.�\�<�պ\\�\�\�\�\�\�\�f{\�>S�5U]�\'O\Z�x	~7\�x�\�ڵ�kݺu�0\��6m\�]E��[]\�t\�򺭗.��ؿ�.}u�s\�\�J��~\���\0\0\0�@U� \�B]:\�2^��t9�\�\n]Rt\��\n$$txP�/t�\�n\�q�u	��/.T\�K�\�3�\"땺��\��\�\�b]~�\�p]~ѥ�.�\��+EF8$$$DJ\�p饗���m\�Vu\�\�ͽ~��ۮ�\n\�\��.��\�j�\'=�\�Q\'��?���Kw]\�u�D�	\�cWY�\�\�\�>�\0\0\0\0�P�c�..]t\�dun���o\�\�\�\�J]6Z�_�\�(]>\�e�@\�e�.\�uY_D\�\�\n$<�\�z�@\��k\�s٣)<�4\�e�2\�sɷ��ty\�\n6Z����\��p���n;p��i\�\�6l\�p\�o�\�\�[�l�ч�\�D\�*I\�\�>]\"U~\����\Z]^V��\�\r���\�\�V�ݬ\�\'��^\���C\0\0\0\0��\�\�Y��?]��\�Y� @F,|e]�I��G]>T�\���[����\�\�0+0�\�m�K���\\�\�\n����\��\��v�����.�ʇS$p���]��\��/�\�\"��ݻww�\�w�\�\�g\�Ν;��\�pdT��dت\�\�*D\�]\�X��6��\�#���%d��DB��*\�\��T~\�#\�q�.kU�4�,>�\0\0\0\0�\�k\�\�2T\�t��Z��)xZ� \���U�\�!��\�\��\�\�CV7\�z\�_U�\ZE�t\�d-�\�^�V\�t\0��?źO��\�\�e�\��+3p!�C�>}J\�WF<t\�\�\�\�o���o߾;v\�ܹ��\�m\���\�{r�$�\�%ͺ}�U_Bz�\�v$�K�.�\�b���\��|�\0\0�\�\�)3Q_H�\�o�\��^S�/S%\�V��dj\�*���v8duhQ�\�\�~����E��\�	��\���U���x+�\�jݷ\�ѩ�\����b\�ĉ�<xМRq���֫W/�\�c�z<�aaa7V�!��\�]\�Z�\��Y�7���\�r�\�\�.�rªϻ�\0BB���\n\0\0\0\0�P%�Y!�\�Y�w��\�N7X�W	��nu�}E�\\\�(2� ��_DF8���,w.\ZYZ<L�<9�\�\�ň#n�\�\�:��Wt�\��)\��5\�\�\�\���oXA��>!\�fd���\��u�w\0\0\0�\��*\�Am�~�&�J\�,0y\�k\�uV\�?\�*�����%<{\���\\n��}�u	\�ON�b�]Ω\�~ʔ)�bcc\�-O\�\�}�Ѡ���e�<Ⱥ2�DF��\�\�\�\�78\�\��\�t��2�BF@|j]oaս�j9\�G\0\0\0 t\0��L�hk�	{��\�uY�E�\�k9%\�6\��V�X{���׸K?�\��\"���dZA�u|!�\�_ف\�\�Ç\�\Z\�\rl2%c�\�ɕ<8��.�4\�A\�Y\�!\�\�ʩ5%���;\�/�\0\0\0��\"�\�e*=�\�\�*���\����o�U�\�h\�\�Y\�O\���x���Y/\�ԗ\�a\�	G[ʱ\���eJ�8�v\r����Z,�\�5�\�_R�.\�\�\�\�qYy͉\�u	��[��u0$���{\0\0\0���S�\�ZX�B�\�\�V\'u��S�;���\�)�\�*\�,tU����J��\�_|�\�t��z�~�\�mr�\�I�\�P�\�\�E#\'L�P8����x\��}\�Ν�Z���e322Խ�\�{\�~�\�\�W͛77��\�<x��\����\r���\\]�ÕPh�U\'\��%\�\\^uԿԫLA�5\�X\�\�@]���3�	m\�\�\"?(\�,\0\0\0�j\�\n��\�#�0�8g�ߛ�*�T��p��3\�p�ꫯ\�\�`��\�nu�\�4��}\�̙��o߮rrr\�\�\�s���\�\�\�s\�N5cƌ�\�\�\�\�%K�|\�\�:��}\0\0\0T1?�\0(�Q\�mygyL^_�R;\�\�\�\�ccc#�[4�K�.j˖-*99��a���4աCվ}{�w\�^�b\�\nu��i�~sĸq\�̀©m۶\��\�S\�~�\�^x\�={�\��Q�Wƾ\0\0\0\0\0��8,�5.�\�b���\�\�\�_]0�!77W}���\�w����6m�JMM-طq\�\�J?�jѢE�\�զM?;x��⋷\�\�\���w\0\0\0� t\0ꈧ�~:,..�T�FJ�����bcc\��Ax<�\�\�\"$$D]s\�5\�\�+��$x\�޽{޷\�~{ۅ^���F<\0\0\0\0�\��:`�\�\�C\�\�\�˔��F88\�:_|�\�\�\�4�K\� #��~�ҨQ#5i\�$p\�\�k۶m@�n\��6m\�$S-v<\0\0\0\0 t\0j9\�`E�\�PY��{�\�\���4�f͚�g��5 J�]�v�\�w^η\�~;�\�\0\0\0\0g��O���v՛1Ԅo�o\�>%99y\���\�\�e	�^~�e�y�\�)B	Y�ᩧ�*\�sFGG\'M�>]\�\�\�0\�x\0\0\0@}[p\�{�\�]�R\r�q�\�Qu\�M7��bԨQ\�\�+t��\�\��\�o/�s�\�۷y�R><�w	\0\0\00=ShBT�p��ru\�\��Ԇ\r��\�\�笋Gg�\�\�\�\�r�A�MF:�Z�\�\�P;v\�8v\�ȑF�y1\�\0\0\0�X���\�U%<**\����=�\�?Ϟ=;�*���{��]�v�Z!d1\�C���[��~���\�9%p�1cF�~ΰ%K�|\�;\0\0��*44T6�:xp�1\0j�iӦ-=\�s�Λ7/o\�Ν�~����JKK+�MF<\�N�<�\�y\����Q\�\�ܺu�8�$p\0\0\0\0@\�\0\�s\�\�Y٬Y�;�6o��\�ż~X(P�\�bv\�ܹ\�\�1\�K�.-\��\�۷/~�\�ف\0\0\0\0l�@!�C�F��͝;7\�l�CBB�Z�zu�\�!88\�<[EHHH�m�N�R�6mR(��dJExxxS\�0\�8\0\0\0\0�:\0u\����Wdff~�嗳K\n^{\�5���]p�aÆj\�رf\�0~�xTp�~>s��Q{\r\�0FFFF�\�]\0\0\0\0`#t\0꘥K��\�\�\�2o޼�����7�Ç�\�\�܂ۺt颮��J�rϞ=U\�޽\�3X	\'\�\�\�՚5k\�x.\�\Z\0\0\0\0�:\0uPdd\�\�ӧO\�>gΜ,\�\�)))2\Z\��\���B\�ǍW\�III\�\�w\�5�6\��\�K/\�#�R\0\0\0�(�2��$x>|���f\���ĉ�\�t�͚5�\�\��X�nQ\�~2\��\�u�m\0\0\0\0Ea�P�\�T�ӧO\�*#�mۖW\�)��}�\n\0\0\0\0%!t\0\�8G�p����=�\"//\��T\0\0\0\08B��\�!//o�\�\�\�\�\n\�E#k8\0\0\0\0(%B����<̜9S�Zd�\�\�E#�R\0\0\0���zD����\�fϞ�S\�\�A\�i1	\0\0\0\0�\Z�P\�\�T	^z\�\�[����\�}�\�gΜ�/�fJ\0\0\0��\"t\0\�!	\�6{�l\��\�\�S�\�G\�p\��\���\�\Z\0\0\0��\"t\0\�)�*���;d֬Y�-[�\n�g� p\0\0\0\0P^�@=&#rss\�3g�kժU�\�=����㏓\�5�R\0\0\0�\"�z\����\Z\�ٳG-Z���\0\0\0�\�@\�\0@5l\�p�\���;88x-�\0\0\0��\0������\�O�>=�Z\0\0\0PQ�\0�\�\����a�R+\0\0\0\0*�\���x<7y\�4`ذa��\0\0\0\0A\�\0\�saaa7�\\�V��rui\�\�\�w#�\0\0\0�\"�z\�\���\�em�P;\0\0\0\0*�\��\�\�7�y\�\�gmo3fL�\0\0\0���z�]�vW�\\�3\�n0#[o\Z�>}�)\0\0\0\0ʍ\��\�ø��\�].��u?S,\0\0\0\0��PO\�\�\n\�0�\�`�2Ţ�\0\0\0�<�z�u\�\��\�Z\�-S\�\�,33�?�\0\0\0�<��\��\�\�M�0\�b\�r�FS[\0\0\0\0\�\�\�\n�z랳\�o��\�0��\�Y.\0\0\0\0�L�zh��\���Ii��)mڴ��Z\0\0\0PV�@=\�r���q��5\0\0\0\0eŐi�Z�dɋz��\�\�\�g�f�.\�QQQ\�PK\0\0\0\0*��\0\0\0\0\0�\'\0\0\0\0\0�O:\0\0\0\0\0\0� t\0\0\0\0\0\0>A\�\0\0\0\0\0\0|�\�\0\0\0\0\0��\0\0\0\0\0�	B\0\0\0\0\0\��\0\0\0\0\0�\'\0\0\0\0\0�O:\0\0\0\0\0\0� t\0\0\0\0\0\0>A\�\0\0\0\0\0\0|�\�\0\0\0\0\0��\0\0\0\0\0�	B\0\0\0\0\0\��\0\0\0\0\0�\'\0\0\0\0\0�O:\0\0\0\0\0\0� t\0\0\0\0\0\0>A\�\0\0\0\0\0\0|�\�\0\0\0\0\0��\0\0\0\0\0�	B\0\0\0\0\0\��\0\0\0\0\0�\'\0\0\0\0\0�O:\0\0\0\0\0\0� t\0\0\0\0\0\0>A\�\0\0\0\0\0\0|�\�\0\0\0\0\0��\0\0\0\0\0�	B\0\0\0\0\0\��\0\0\0\0\0�\'\0\0\0\0\0�O�S@\�3#\�\���\�\�\�\�Fedd�HOO�x<5�����}����\�?\��\�;�&�\�\�2\Z4hp\"00psNN\�\�����\�S\0\0\0\�<�@%;x�\�_�n\�:+++�a۶m����\�v\���E��u\��x\\iii-SSS\'$$�ꫯ~\�\�\�5hР>�\0\0\0@\���\n�\�\�ŭ<t\�Ы-Z�hx�嗫Ν;��M�֊��V�\�\��٤IձcGկ_��N�:��Q\�֭B\�\0\0\0\05\�ow�\0�8\�2䢋.R:t�)\0TJi߾�\�ӧO�\�\�~o\�ڵ�P#\0\0\0@\�@\�\0T�Rq\���!=z�0���v:\�:��ڷ�Y�w\�3*n�;*+�W�\Z5j�z�\�\�r�\��\�\�.�F\0\0\0�\�G\�\0T�,\Z���8K�R8��}�JKܫ<y\�\��䪌��Tܶ�	*�]�v����ͥ6\0\0\0�\�G\�\0T���B��!�EI:��\�\�N?\�v	 n�+Yǎ�����\��\�?��\�\0\0\0\0��PArZL9CEqk8d�0�AFA��n\�:Ao�R\0\0\0@�\"t\0*(##�����8F^N�6<T��lٲ�\��&\0\0\0�\�\�O\0���BE\� ��h�7��	\0\0\0�z1\�� �ǣ\�n�R��Ŗ�~�\0\0\0\���9U\0�V@�9\�\�\�߀\0\0\0\0\�.B�ǚw�F�6:\�v��`ռK*\0\0\0@�E\�\0�X\�V=U��=��=��ET\0\0\0�:�\��y9�gܖ{�\0\0\0�N#t\0|(;���\���J;�\����دⶾi\�\0\0\0\0u�\�#\'�nWq\�\�R\��\�\'#吊\���J��F��J\0\0\0P�pJ9��\�ȅc�>1G2��\'/\�\��\��T\�����vT\"\0\0\0�:��@%���\r�dDġ-�S�\0\0\0\0\�B��\�ȅ�2<�T \0\0\0�:�\�@%�`\�sT\0\0\0\0(F:\0\0\0\0\0\0!t\0\0\0\0\0\0>A\�\0\0Ç344�\'j\0\0\0�8B�G��\�+�nݺB\�7\�P\'N���\�x\�g\n.ϟ?_\�\�}!\�\�\�lu��au���\�>�\��v\�k����\�/|��\�{O<x�\�\�LNNV}�Q��[��7o^���[��e˖�\�g�cLKK�p0��4$\�b�\�\���\�\��	\0\0\0*��$Y�p�z�\�ݶh\�\"u����M:ΧO�.�y^~�e�z�\�i^��\��\�3/��\�*..μ,ۣG�����j\�*���ϫ�~�I\�ٳGEGG�-Z�\�ݻ�M�6�K/�T�<yRy<u\�-���{�����\�?��F�\Ze^^�z���\�Ն\r԰a\�\�\�	/��EEE�N�:�������\�|�W\\a\�7}�t3P�׷I@ѣG��\�r��I�\n\�CJ۶m\�\�ΐF��]�v�M�6j͚5\�/�K���<\�ațјO+\0\0\0@\�\0\�:\�\�B:�\�RRR����j\�8�\�b\�\n�n��f��\�?n\�o��\�one\�ĠA�T\�Ν\�\��\�\�\�R\����\Z5R_|�\nHxp�\��\��޼_n=z�\n.��%<�ҰaC�\�\�VK�.US�N-\�GFW8p@=��j��\�f0!A�����\��B��ظq��6m�Y���YDȱϞ=\�f�j�SP7rܲ\�\�͛\���\��O�\�۟��[�_Sҕ��a�\0\0\0�\�I�ɗε��\0\�:v\�X\�zPP�jРAAG\�ۗ_~�233\�N�_��W�裏�#N�:e\�cw\�}���t\�%�\�b\�ʕ\�СC�[�n���\�\�Ăλ����}��jڴ�\��_�`��xEq�\�B�]<�\�攉\�{N��\�\�رc\�}2\�\�\'�,t�D\�1~�\�w\��\�k���\�\���!\�\�m�\�V���	G�~$��\�Q\�\�[oU#F�(Έ�MZZ\�}q�.�%hp�\\|8\0\0\0B����x�\�\�Я_?u\�w�?��\�\�}�\�W�9s\�\�˗�#$p�����L\��\��Xh9�V�Z�ہ�O?�T�]�V\�\�\�\�!�\�o�\� ��\����\�\�\�_u\�U\�\�	$�c�\�?�\�d�¿��oդIsڇ�2�A���q\�\�3 �0\�駟6_C�����\�s\�9\�\�L��i���o߾f\"�*\�\�ݻB	[�\�ۧ�5kf����9�\�\�,�+SL���ֳ>\�\�\Z���+����\�\�6#��\0*$\"***�j\0@\�\0T1Y�\��F�\�\�\��SoO�\�{yIH �AVV�\�y���\�?Ր!C�|�o��\Z���\n!!!\�V֎�\�@�r�\\�\�\��,2)��,\�(|��\�N��\��\�m\�֭\��C�\�\�\n�.���2*a�\�\�\����&\�\�\�n\�\�\�\�+d��L#�9s�JOO7ד�0E\���^0Gt{ԃL+�c�0$55��z� �t���.�2�b�\�\�\�Q@�x�*\0@\�\0T�����\�_Q���,�(�z\�!s\� }Y\�Q�s̘1CM�<\�\\�@:\�2�b\�ر\�Y�A�^\�	{��ʰ~���אD\�\�\�aE��\0ջwo3`�Q2\�\�?V�ӟ\��&L�`\�k/i�2\�B֨��2�3\�N�#$���ƛ<�ԫ,�\�M�[X#*\�P\r\�\�bi]@�\�a×�l�:�r�J\0 t\0��t�mr\�\�PW9m�,\�(�7\�dqE�p\�W�x\�`/6)dꅌ<�\"g~��e4�5\�\\c�i\�IFR�l\�Ҝ� $,��\"$Eq\�ƙA�L��E#_}�Us\Z���S�y�\�HX!���ܐ\r/������\�(nM��&y\�W\n-ji�),�s,Y��\�S�\�\�\�\�\r\�hQ�z���\�Z\�>W���\�X\�\�p\�ghi@�\�\�\�P\�vD�\0�\��N�8�|�/\��C-[\�\\K����\�s\�\�	dĂ�V��\�k\�7\�|cN5(�\r��Y;AF\0\�B�\�\� �� 2\��ٯe/H\�Yp��;\�\�2�AN\�)k9\�\�.k6Ȉ\n{�\�\�\�:2B\�\�g�5\�yN}!�\�;dʇL�\�8etC�^�̑΅&���\�[��e�\\�\�d�i\�f��x�\�\�jʧ\0\0\0 t\0j%\�\�\��=������?sqF�\n \�d-�� ���� %:I\�\�y\nMY�Q\�L�\��X\� ���B�r\�L\�\�\�S�\�\�\�\��\�(\�\�\'����/�d\���\�\�>��L��2e���\�]w\�e����i\�Y)d��Y\�\�;\�Ts\�\�=\�,2eB\�@��]���ɔ�E֛X�l��Ȥ8y��\�{\�)2\�C\�\��\�O?��הo[d\�\�\�rz۰aC�\������\�\�\n5���\�)-\0\0\0\0B�擎��\� A��M\���/gU�۶o\�nv�\��+���\�T\�\��=\�@\�Y\'AF\"\�t	!v�3.\�>\�d�=\�A�$\�Y\'dJ��5k����\� �ɴ\rQ \�3�\�ڵ\�\�J�\"�Ĕ\����,)?�	$|�5(d\n�M^S\�		B\�4�r\�r\�M\�ד総CFQ\�h	9\�\�G1GHH(SҨoz��z3\�\n ���WF@\0\0\0\0�@�&!BqS\�\�?\\\��\�\�.p�;\�2�B�R\�\����\�$�-\n\Z�\�o�\�\����8Y|\�IFg�t\\r�	�BF]\�\�Y.�ދ=\�SLd\�y\\I�u)�{�T\�[\�ͨ����\'%\�\�\�\0\0\0T.7U\0Tr�rWm�rE]�f���$e	B\��\��٧�,-\�H	\0\0\0\0��D\0\0\0\0\0\0_ t\0\0\0\0\0\0>A\�\0\0\0\0\0\0|�\�\0\0\0\0\0��\0\0\0\0\0�	B\0\0\0\0\0\��\0\0\0\0\0�\'\0\0\0\0\0�O:\0\0\0\0\0\0� t\0\0\0\0\0\0>A\�\0\0\0\0\0\0|�\�\0\0\0\0\0��P\�F\�v����A��qHor�	\0\0\0���KTP1AAA��:u���A���c�&��\0\0\0\0��PAO�<IE\� 			�z���\0\0\0\0��PAYYY\�\�\�\�sà2j�ؤ��>z�U\0\0\0T/B�����\�\�|\0\0 \0IDAT\�͆a\�:z�(�Q\�\�\�|�ߏ�\�_�&j\0\0\0�^�@%\�\�\�\Z����JeT����UIII�z<�I\�\0\0\0P��J0hРuGwȞ={N<T	v\�\�\�\�\�r�Y�1\�\0\0\0P��J2p\������w\�ܹ35...�5�LlLL̛�v\�R_~X�S%\0\0\0@\�@\�\0T\"	��򮌍�\��\�\�߿��\�\�\��\�S\����\�\�_T?��S�?V]��N�8�={�D~��\�III\��m\�8\0\0\0\05�?U\0T.�j!�5k\�􍏏�\�\0}��.A5��?��C����\�̙��\rVӫ��.\�u�A��,\Z	\0\0\0\�L���\�p\�\r\�z]�u̘1AYYY�rY֤X�hQpDDD\�\"\0\0\0��`z\09�\�U\�\�O�@�\0\0\0\0�(B\0b��a�R%\0\0\0\0*�\���\�\���aÆ5�Z\0\0\0\0T�Pυ��ݨ7-7\�\�u??��\0\0\0\0A\�\0\�s�ax�rpY\�!\�\0\0\0�� t\0\�\�l\�-\��\�mrVj	\0\0\0@y:\0�X�v\�\���o7#[o\Z�>}�)\0\0\0\0ʍ\��\��R\�/�[F@H��\0\0\0\0\�F\�\0\�S2�\�\��\�P\�}�a���L�hFm\0\0\0(B��jݺ�\0�\�ժ�]���\�233�S[\0\0\0\0ʃ\������n?\�.�\�\�\ZMm\0\0\0(B���x<w�e�\0�\�0��\�Y.\0\0\0\0�L�zh��\�].WHi��)mڴ��Z\0\0\0PV�@=\�r���q��5\0\0\0\0eŐiT�#F<�;�/s�\�\�\�Щ\����\\\�Z�X�dɋz��6��<#\�.\���y�Z\0\0\0PQ�t@\�}�\�\�hj\0\0\0\0P\�O�\nPY\"##W�q����\�\0\0\0\0�n#t@e[~���\�\�0VSU\0\0\0\0P�:�R���,�\�\�?.�k�\0\0\0\0u�*UÆ\r7\�Mr	�钘����\�\0\0\0���\��*\"\"\"\�\�r}R\�\��\�0��6lȥ�\0\0\0\0�n#t@�3\�b\�2\�sp�\�PK\0\0\0\0P�:�\�\�\�	\�02��+@�\����k�%\0\0\0\0��P\�d\�\�\��ٞZ���\0\0\0\0P?:�\'<ϧ\�\�ax��_P;\0\0\0\0P?:�\'�;�Zo\�\�.�\�_�{<����\�\�Ŏ\�rJҧ�\0\0\0\0Չ\�>!S(\\.\�g^7�^�lY\Z�\�\�;.�\�%K�\�uyQ�˭r�.���\0\0\0\0TB���Y,\\.g��Y\'\�^�S��{�\�\�t�\�*\ru9LU\0\0\0�*�T|%((hSVVV��\r\Zl�V�\�\�e	Y���\0\0\0�\�\�\0����\�2c�\\v�\\��jŧn\�\�\�d\�\�W�˨\0\0\0\0Չ���\�\�<xp|ZZڨ���\�\�\�A��\�gbb�ڼy��\�\�\�;v�Qӎ\�\�r\r\Z48�9\'\'gf���\�\�\�Eg]�\�e�\�\�DK\0\0\0P�j���e\�֭����\Z�m\�VI			Qnw\��r\�w\�غ�x<���������~�\�W?dff�\Z4hPL-�h�K�wu���G=�si1\0\0\0\0�\�+j������z�E�\r/��rչsgմi\�\Z8\���\�I�&�cǎ�_�~��:u\�#�֭[7���H�tyD��\��)��h�Ot\�ʻ\0\0\0��0ҡ��A�!]t�\�QF\�k߾��8��v\�zo\�ڵw\r8�\�Zt�v�O�x���?��3[x\�\0\0\0\0U\�IA\r\'S*80�G�E�ӎ�\�\�\�}\�U{\�=�⶿��R�Pq\�ШQ#ջw\��\��\�g�}vq-:�Ǝ\�o\�2F��w\0\0\0@U!t�d\�\�\�\�\�Y2����\�\�\�TZ\�^\�\�\�V�\'We$��ⶽM�PN<t\�\�\�\�\�\�7�v�\���N\0\0\0�N�����B����EI:��\�\�N?\�v	 n�˩cǎ\������\�_Em\0\0\0\0@\�:\�rZL9C�\�\�*��\�F3\�(�_\�֭�f(5\0\0\0\0eG\�Pddd��3T\�\�\�)��S�+�e˖�f\05\0\0\0\0e\�\�+j�������*�\Z\�zo�7��	\0\0\0\0(;F:\��G�ݼU\�\�@�\�p\0\0\0\0\�ӧ�\nj��\�s��Ͽ#$\0\0\0\0\0ՃСh\��\Z\�\�\�\���U�.�� \0\0\0\0@� t�\Z�\�\Z�\�Q\�\�!�/��\0\0\0\0\0ՂС�\�\�\�<\�\�ӧ�\0\0\0\0@��\�\���{�\�\�;v\�+>>�\�ѣG����gee)#$$$�y�\�G�4i�\����\�\��ַ70;��J��#��|���\�O\�Wq[\�Tm{ަq��}��)���Ν;�V\0\0\0�52t��\�\�?|\�\�;q\�Ϟ=ՀT�N�T�\�\�UPP�\�\�\�r�:u*�\�\�\�m��\�wM�4).==��7\�x\���\�<�]�\�g*7;�\�}2R�\�ͯ�V\��f��R.�[p���~:L��Y7\�t�ڰa\��\'�|�Ĵi\�\"�\0\0\0\0u*tشi\�\�\��_\'O�l\Z\Z���\����\�\�O�)�Z�R�^z��\�{\\;w\�\��ڸq\�MJJ�uٲe���o��n8�\�s$Cix�\��O�A�>�\n\ni\�\'&O�<4..\�	&��-\�6\�7o\�[�&Mʞ={�bj\0\0\0@y՘��\r\��_�jպ����u���/�`�	Eő�B?\�\��\�o� $$d\���\�_]|\�d\�Bi\'��qh\�\�|\�Q@F8$&&.�0a���7�=��\�~\�\�\�\�N�4\�.j	\0\0\0@yՈ\�A�/���k\�^�\�#��[n��La��A�Ig*\�\�vϽ\���ko��\\(w]{r�\�\�>�\�~���n;p��\�\�KM�8\�|��۩-\0\0\0\0\�Q#�W|�\�Gk֮]{��)S\�\���K�.\�\�g�\r�\�?��bXX\�\�\�\�\��\�ʛv��\��\�B$p���]��\��edCQ\��Gy\�o֬YK\�\�a\��\�*j\0\0\0@YT�HY\�\�\�O?�n	�8\�\���|�\�\��\�\�\�.\�\�\��a\�\���xx�\�G�ť�G���\�\0\0\0P\�\Z:\�Y*֬Y�\�\�7߬~�\��\�5d\�È#\Z�\�\�wx�Q\�M�8�.�)gl<<�\�c��gEXX؍\�\"\0\0\0�Ҫ\�\�a\�ʕo\�i/e\r_\Z<xppӦM�\�Ө��F?�\�3�\�ϟ�rsϾ�Cvv�:|��:~�x�m�|�y����8���p\�\��裏\�W_}U\�\�ӧ+ݡ-ry��[���\�}뭷�<\��LF8���,w.\ZYZ<L�<9�\�\�ň#n�6\0\0\0\�\�\�AF9\�\�\��\�b���ƍw�\�\�~�>��\�֭3\�\0)?��c�e)G�U�7oVO=���\�O?�d\�>��J�^�ZM�6Mm߾ݼ�p\�Bu\�\�	�w\�^x\�ku\�\�Y�EWk֬)�\�͛����\�\�|\�\�\�c8x�.\�m��\�n��Ƃ�D�	�E�]\��F�\Z�Vx\�S�L�2eTll\�\�	��ã�>\Z�\��e\0\0\0\0jt\�{�\�ѿ��i�xWT\�޽4h\�-44�kU���5��˝Æ\rk\\����\��\��3/�I䲔?�\�\���+��0\�ܷ{�\�\�u	\Z6lhv�\�\�>��6mj�-Z�P���ž^xx����.��iӦB��-[f��N�2_oȐ!fp�ꫯ�\��嗫\�\�\�WFW,Z�\�1\�8\��^�$d��\�[\�ƍ\��\��\�|�����\�B��l�����\���\�\�}\�k\�p��ᅲ�Cy��\�ɓ\'<\0\0\0\0(�j;{Ŏ;\�LEN�YV�z�J�\�\�\�\�gV��O����=���;�ŏt٠;��\"\"\"�|��_~��\�\�\�4G0����o�\�`@:\�r[LL�\�ԩ���\�\��Ǐo�\Z\�\�)S_ԡC�T�n\�\n�O�@$&&\n\�\�/dԂ\\�N�\�\�\��\�ڶmkn۴i�ڷoo��\�?��\�\��\�K��A�\�\�?6O�*���9ҼOF\\<���cǎf���4�\�;\�s\�9Ǽ<x�\��c�Q\r�ɷ�G��~��\�Z4rai�,C;2��\�ӧ/\r�C���U\n\0\0\0�F����}P��y\�W6�\�\�~W\r��\�0\�a_b���S�\Z\Z����Zw�\�=z4fÆ\r���zW_}��3g�Z�|��:u�8\�\�-��\�/�?���\�С�\�ٗ\���է�~�֮]����TFF�z��\��\�p\�UWz��\�(��\�(	5$����q\���2\rD�_��\�\�q˨\n!�đ#G\�\����#2u\�\�c�=f��7��-[��՝n������\Z\��g�\��2?((heDDDJE�\�^4r	�����\0\�\�ܹs�=F\�]\�M�\�4o\�\�t}\��䃰���\0\0\0\0�Rm\�+t���Y�*�{\�\r��o\r����]f\���v\�\�\��H\��3r\�Ȏyb\�4ʈm�b\�\n3���΁ak\"\�H{D�		1��O�6�J\�VF%\�e}|f��,\�`�i2rAF(ȴ��\�;��Hȱx�bկ_?s�8$\'\'��ǹ~�z3Xصk�9\r�(�.�R.��b38�/\�k\��tyG�\'\��\�\�]��\�I�[4�Y�ff\� Sh\n~	�\�\�\�^+�x	�k�\�h�Q�F���\�:�EC��\�L�\0\0\0\0P�j鐚�\�/���;��t�;Ww\�\�We���޶\��֝\'s��\�\'\�\�r,F�/�EFF&����\�֛P)2�@g����,�XVҩ�\�2�ᡇ2G	H\�RF\�\��3d��$\��N1v\�X�ӿt\�Rsz�t�\�\�m�\�fv��$@��<�\�Q�\����\�{t�<�=%BY\�\�&?�|\�nOð>\�TY\�a̘1\�\�3G@xO���gEaO퐩#r\\�&�\\���9�?s��0F_�?�\�����+K3\'<<|tll\�\�P\�\Z\�^{��V��4\�g\�\\\�S)	~d�\�ݻw�����_���I�&E�`��=П��#F�.Y�\�c~�\0\0\0��\�A�]�aUڶm��3O��\�\�y\��x�\08o�\0\"\�q�P��\�i\�\0�\"\�%\�\�>;v\��~�R���L38p\��\�\����\�\�СCe�I��;vX E:\�\�\�LOOW\�\\s��\��S\�k\�\�.��M��I\0!�V:\�	\n��O�6\�y�QH\�,�\�\�o.8�;�E~��sl���2\�A�pH���<\�y�\�|\��d+���K��$.[�,��>�\r\�3g��~�ׯ\�_��i�s�_\�e�Z�+)p8\�\Z2ME\�b�F��?\�4�����a\�9JEB��￿\��Wd�V	�$x���\0\0\0\0�=tНSCw�\\U<�\�\��\��\�˛\���\"��.A����\�\�\��!��u<Th\�\�\�\�z\�\�^\�;�(+}L��\�K\�+\�c%H�\�AF,H\�Q�\��\�o\�X��&A�\�iOKKS�V�2G	8��\� g��u�\"\"\"\�\����\����Z�E(�\�\�z9��gϞE�t�:�\�ty\�b��\���\�{r\�~\�!��!	#\�Q2B$:\�	\�z�]\��\���:\���ׯ5^�\�\���\�\�\�\�]k�O?�tXi!�J佖u;$p4\�\�eb�\�62\�\�\�s\�-��$x�<yrތ3\"G�q7#\0\0\0\0Tk\�ФI�����@\�z_kԨ\�	\�Qˌ��z�\"\�\�Rw<;:�m��`\�\�\n�_Yg�(�|\�o���zpp����\�}�\�g�\�8etÃ>�&L�`~\�/��\�l\�u�e\�E\�\'d���Z\�IF���`�\���~��\��]�\�\�r:M\��~!S\0\��}�\�O\�z \�\n9[�3t�5lΑ!������~\�z\�>��5�\�jm[Z�@�*!���@\�\�ˣ�\�)V\��cӦM#\�\�\�v.\Zy6w\�qG�N��l�i/\�PEF�>�Tϧ_7�\�G�̜9s�#\�\"x\0\0\0\0Pm�C�f\�\�tgv\�\���չ�k}\�7ӱg{�\�:\�\��\�:���u\�z\�/�����g��p\�O��9�A:\�f\�kW5lذ�}�SJ\��Hg�\�7\�T\�ƍ3�Ϛ5\�\�ڝx�6\\ut��0�<��^��2�C�)��69��n\�$\�(��\r��ĉ�{��3�ꫯ*ݩ5\�}(�t�%D)\�����u������4��3&(++\��PK0�\�ߖń\�mc��P�װ>/N\��#\\B��\�p(�H\�\�v�;YsE\��p.:y6�\\rI�\�<m��\�\0\0\0\0�u�×111\�\��UEw��G�e5׹�2~��ݩN\�ӷ���^/n�~y؝|�R!E\��\r�͵M:\�NΑ�\�\�ѣ�	�q\�A�\�?տ�B��!׋�\�!�\Z\��Nŭ!���w�c�RJ\��\n:���\�clyk�2�̤>d���6	edZ��\Z��\���;v4�,�>}�4�<yr\��\�\�����`�\0\0\0����Sf�<y�\�\�h���>�����vy5׹�8\��	���ݢ��&Wf\�Pg\�P\�uoe���,�_����*�\\�z�D�?���]$�\r\Z4Ȝ*Q^r*L\�u*\��\�\�^\�\�\�۷o�����\�\��t̘1\�\0\0\0�z�\�F:<�\�s?=�\�#w\�\�ٽ<\�Ж՚5k>�x<]t?��\�ҦP�\�(a����آ\�Gn�{\�ѣGc������1���>}��z-o�/6<u2\�A��\�\���;v\�8�q\�\�&�yo�uIx�\0\0\0B�*w�\�ɿ\�\�b\�Y�/\�t|�$e\�\�\�K\��\�N\�\�\�[Y#\ZP{\�\"�\���P_\��ɚ�Q��S�.|�\�\'3gϞ�\�C�\�\Z\�\�ݻ\�\\�\�9�B\�$Y@s\�֭e�b!�Ì3��s�\\�d	S+\0\0\0\0B�\���\�o/7nܔO?��\�-�\�\�י9s��r葐�U]?kTT\�L>n(�]~lР�ڲ��6m\�҉\'fϛ7o�\���vă���yzT�s\�\�ɓ\'\�;\�c�v(\�T��[�{饗\���E$\0\0�z\�]\��;6\\�bE\����}���w\��h۶m7\�\�ԟ�΀�***\�9]��w*9sV6k\�\�N�\�۾}{��\������\�\�⟲�\�Y@�.]Z�\�۷o_�\�ٳ	\0\0\0\0ت=t�5����<k֬�\�ǏW\�s9r\�/��b_�\�5922�G\�n\�e<4j\�h\�ܹss\�<$$$��!u����ꩧ�R!!!��:uJmڴ\�<�iIdJExxxS\�0\�8\0\0\0\0��k\�A�����\�\�\�&�\��H��2\�\��\���jdd\���ը\�ϟ�\"33s�\�/��]R��\�k��\�\�\�\�2}b\�رf\�0~�xTp�~>s�\�\�4c�\�`\�H\�\�V�.\0\0\0\0��kʁ,Z�h�ɓ\'��\�Ϧ�Z�*��\�Ly饗\"�M�v�\�㙺dɒy�Q�,]�tmNNΐy�\�e<lܸQ>|X\�\��:ۨK�.\�\�+�4/�\�\�S�\�\�\�<���p\"==]\�\0s\�s\�\Z���\0\0\0\0jl\� �,Y�;B}t�\�|�؎;2\���\�?�<\�\�\��ߖ-[\�s�\\\�EEEE��>���\\}��\�\�\�̙��s\�΂\�SRRd4�\"8\������7�\�-���Ի\�knm2\�A�\�G0�\0\0\0@Q�k\�\�\Zz�\�\�\�;gΜ�@```�.�\�x���w\�\�-�y�\�me\�wff\�1݁:���\�\�߸q�\����{\�\�\�uԏ�����>�F�\�!r��\�\�o�5kֿ\'N�$�\�l֬�\�~\�\�\�t����\�R!����\r\0\0\0�V���a�\�,9rdǝ;w\��[}��.Y�Ȅ�\�\�\"\���B����E�ZH�0gΜ?��\��]v�_E�S\�Y*\0\0\0\0˿�\�E�\�\��\0(#G�j\�ĉ\r*<\�S*8-&\0\0\0�\�pS@\�\'�C^^\�\�9s朎��.\�*�����5\0\0\0\0��Cmx�\�nù�����CzS\'\���$x�9sfֶm۲\��X碑�\�\0\0\0\0�\��\�jx͗tiU��uy\�,���\�_β\�t]\Z\�\�[���\�nԥEM����~9u\��\�j����7\�u\�\�� \'\'\�ٳg\�6x���qZL\0\0\0\0�VU�C�.���mu�\��S�tp\�w�.]�b\r���E<\�Վ\�@��ץ�\�k	\�t�3\\��n�ˉ��&l<y�$�\�j�����7\�\�\�$S-$xx饗��nݚ^Ҿ��틟9sf��8�)\0\0\0\0jj\� !\�\'VyB���\�\�t9\�\�O:5��2W埥BF\'Xہ�c�\�xN)��\�Ǭ\�\�\\+��p\�!G\� \�9\�\�7)++kz|||�a|b�VlRRR�����`<\�\�Ӱٳg��oߞZ\�>��Cxxx�\�OF8�\�\�\0\0\0\0���nUx�]�:�\�\��0\�\n�}F;��{t�\\\�`�\�\�q��.\��XA\�\�V�!�\�e�L��K�z�]qQ�\\{�u\�o\�ѣG�\�V����\�u����\�7\�şO�J\�\�\��5k�k˖-��{\r����{\0\0\0\0\��\���\n�J���\�^�/޺��ʟR�.KT�i=���Fd9�S.\�:��r\�q�\�\"�AFMܦ�G:l\�\�\�q�?+\�8R�ߨ���Q������|j�@JJʪ���[=Ϥ��sʈ�\�\�\�;\�̙\����\�O._�\\�_�>\�^Á)\0\0\0\0jC\� d\�;T\�\�r\�9�`\�\�\n�8n�R��\���\�(��V\�\�\�\�\�w�,ԥ�.�\�1�\���6�Q�\r�Qw�\�ٳ\�$��\��ݻw�r�\\\��S\�^;xX�`A\�|�\�x\�\0\0\0\0�)t�\�\�:�3G<�Q�r�\'�W��d�I� S!\�X��z\�c�\�5�\��N�{U�4�Zm\���\�9�s\�Ν�qqqI��P\�bcbb\�ܵk�]\���7�n	\\.\�r�,[\0\0\0\0�%thU\���ct�\�uV�0B9m�=��\�cdd�s}�r�c�,\�㝮�/.T��\��C^^ޕ���[��uh�m\0\0 \0IDAT�\�\���\�ߑ���\��x�4����C\'N��Ϟ={\"���댤��n��\�\�S\�`3\�\�-\0\0\0\0T��\���˵��V��ô5r\\\�a�?[\�e!ȉ����O�y��\��yZL9\�\�\'\�\�O�����ce�\��\�cs��A�_Fb��\ro�L��͚5k�\�\�\�\�e��\�\��\�P6����A\�]\�\�\�E#\0\0\0�.�rJ\�oT�\"�ұ�\����p\\�89=���Y��\�\�<X\�kes�Lߐ\�;�\�_\�\"��e\n\����\�\�\�\��\�\�p\�\r\�z\�\�\0\0\0\0P�:t���\�R\����y��\�\�\n\�\��۳�\�\�\�{\�q��U\�\����\0\0\0\0\0�\�M\0\0\0\0\0\0_ t\0\0\0\0\0\0>A\�\0\�]�8\�ET\0\0\0��B\�\0\�]U�M~��\�b���\0\0\0\0Uş*\0\�\�t�G埆6]\�)f�.Y�\�\�\�/��\0\0\0PU��A�M��\�뺌\�\�\\\�}�\�V�W���\0\0\0\0TB�n�\\\�-�\�8�\0\0\0@UaM�nK\�\�k;^��\0\0\0@U!t\0궟�\"m}\�\0\0\0�*1��\�S�\�2�AB�?\�\\�u��\�kT\0\0\0��D\�\0\�\rˬ\�$k8ܩKC]&\�2G��T\0\0\0��\��\n�\�jhm3t	\�\�I�\�h\0\0\0\0�9B�\��^4\�\0\0\0\0�J:\0\0\0\0\0\0� t\0\0\0\0\0\0>A\�\0\0\0\0\0\0|�\�\0\0\0\0\0��\0\0\0\0\0�	B\0\0\0\0\0\��\0\0\0\0\0�\'\0\0\0\0\0�O:\0\0\0\0\0\0� t\0\0\0\0\0\0>A\�\0\0\0\0\0\0|�\�\0\0\0\0\0��\0\0\0\0\0�	B\0\0\0\0\0\��\0\0\0\0\0�\'\0\0\0\0\0�O�S@�3bĈ\'\\.\�\�\�=544t�󆨨(�\0\0\0��\�\0\�ǆ\�vGS\0\0\0\0|\���\n��\'22r�a�J��aj\0\0\0@y:\0�\��ܟ\'�����\0\0\0P�@=e\�\�\�#��\\�E\�\0\0\0�� t\0ꩆ\rnԛ\�v	\�%1!!a#�\0\0\0�<�z*\"\"\"\�\�r}R\�\��\�0��6lȥ�\0\0\0\0��P���V1w�\�9�\�\��%\0\0\0\0\�E\�\0\�c2u\�0��\"\�\n\�\�p||�Zj	\0\0\0@y:\0��L�p�\�^7\�S+V3�\0\0\0@E:\0��\�\��\�y\�0�u�j\0\0\0@E:\0�ܱc\�V\�M�}\�\�r�\�u�\��1�\0\0\0�\"�zN�P�\\�ϼn^�lٲ4j\0\0\0@E:\08\�,.���V\0\0\0\0�0B\0*((h��z�\r6P+\0\0\0\0*�\�����\�2c�\\v�\\��j\0\0\0@E�S�o\�N|\���ǧ���\�\�\�葞�\��xj\��&&&�͛7�\�.�\�ܱc\�\Z5�8].�ѠA�����srrf�\�\�}-�H�V��#���/\�\�{]���ԝvT[ЎhG�#\�\�vD;�P�\�����u\�\�YYYY\r۶m�����(��f.�\�;j|\�\��\�]�?������~�\�W?dff�\Z4hPL\r?t��\�\�r]��?�^\�\�^C\�m�^�/�����ڀvD;�юhG�#\��\n-�dqqq+:�j�-\Z^~�\�s\�ΪiӦ�\�TY��t=6i\�Du\�\�Q�\�\�/�S�N}$_�nݐ\Z~蹺dX�\��{�\�\�t�\�*\ru9̻L;�юhG�#\�\�vB\0E�Ǥː�.�Hu\�\�A��Q)>־}{էO�`��\�{k׮����\�e�#\�W�юhG�#\�\�vD;��\���d\�݁��\�\�\�Ll��N;�G����V\�]���\���\�J=B\�U�F�\Z�޽{�\�?\��\�\�.���*�y�]�L]�\�r\�\�vD;�юhG�#\�\�vB�\�\�\�B����d\�]q�1��}�JKܫ<y\�\��䪌��Tܶ�����\�ڵ�\�\�\�on\r>\�\�\�zɺ�Z\�vD;�юhG�#\�j_;�Pud5cY\\H��%\�\�\�*7;��\�\�?�ă��Jұc\�\��������ϯ����/]\�e�.T�b^�юhG�#\�\�v�\�׎PJ���r�$Yɸ��~�%�ޒ���n\�:\�ȑ#C�\�M5�w\��.Su	\�e�.W;?N���юhG�#\�\�vD;�\��vB�j\���\�?�\�y9\�?\�\�ϕ�e˖�Nj\�\�٣\��\���W��\�_I\�{\�\�vD;�юhG�#\�Q\�mG(\�/\0���$\�kF�\�\�C;��(VM\�\�q�\r]\�x��\'<�#ЎhG�#\�\�v�\ZߎPJ�t\0*�\�\�\�|\�5��>\�\�\�m\�^\��\�;F;�юhG�#\�\����aĈO�\\���{jhh\�T\�\rQQQ�\�<��&�\n�S\�}�\rH\�\�@;hG���k�;�Z(�^����w�F�6:\�v��`ռK*��#�v�Z.22r�\�_��4חz!t\0�@\�V=U��=��=��ET@;hG\0\�u�a�)\�~�\�K�:\0U$/\'�\�rO��b\0\�@;hG�#\�x\�,�d\�?.�kQ}�B�ǲӏ��mo��\�?�q_���*n\�\�>\0hG\0\���vkذ\�F�\�UR�KbBB\�FB\0v�\�v�\�[*#�`��d�R��_U\�q\�(�s;�#�vЎPkEDDd��YI�\��Wnذ!��\�	�\�|@\�c�>1\�\��\�e���:��j}�`d���ю\0\�@;B-4_�;��\\.��\�\���>U#\0�����19Ir~h\�\�T @;hG\0\���L�0㌅?$pЛ\����k\�S}:\0> 	wy�\\*��#�v�ZJ�N�\\�\�\"?���>M�L�\0|\���\�Q	�t\�۷O9z��\�ܹ�)\�@;��vD;B\�e\�\n�\�5\�q�,�!_�Q\�ꂑ\0P<��\�a\�\�ɳn�\�&u���\�O>�\�j��#�f:v\�\�j�I�\�{\'z<��\�[]:\0@\r7y�\�qqq\�?\�}\�=���~ح�#{kҤIwU\�a\\�\���*\�\�\�v\�\�8�5�b�\�ͫ�-[�F\�\0\0�1\��\�\�ĥ&L��\�K\�\���\�#\��%\'\'�[�\�ݯ\�w^\�\�!ЎhG�ю�b\�s^q�\\\�\�J t\0�\Z*<<|�\�?���|�d��g\�ի��8q���ރ>x{\�@����\�\��#\�P����M\�\�\r\Z4\�@\�\0\0�1\�\�\�\�.���\�\�\�\��Gy\�/--m\�=�\�3�\n\���\�;\�\��#\��#Gv1b\��\�\�\�eYYY�U��\�\�\�w\��V\����\0\0\��\�H�<�C�$�\rӣ�>\Z�/.=z�\�>>��^\�\�hG�#ЎhG�Raaa���󀓫��\�E�����\"*\�?�� \�B�\"�$RADQ0\n�(\�TAQA��\0A� \�l@h�\r��P�\0	$\���\�Ν\�}\�\�\�f�\��~��\�ٙ7o\�ܹ\�\�s\�=\�ܽC�a��\��)�J�U\�\�&�\�]\nm\��\�\�\�\���-[�\�ȑ#o\n\�9P����t\�s\�\�<�������ॊ\�׾��!a��\"L\\�v�%\r/+t����\�n��Ў\nm��(Gʑ(Gʑ���9r\�0ޯe�\�\�vmH;\���p�\�\��>|�\"\"ҥ���hѢ�i��FA\�3f\�\�A�]1bĈ\�,�uY\���uh7g-y�ò!�?\nmT�\"tPD9R�D9R�d� ������y��\����#�8\";묳���\�\'\��\�ӳ����\���\� W\�V[m�\r<8=ն\�}w�ר�\"\�̏~��\�\���\�f7\�xc\�\�\��\�\�k�ɮ��ښ\�?�A\��ss�\��\��uq-�fͪ��c�=�\�s\�=��y�\�_��\��|\�ŋ\����\�;͙3\�\��.]�ʍ�O<��y�\�]�2\n^�\�=�iȐ!�u���nh���(\�\��d-!�g�֤)G\�Qߓ#\�H�C�=0u��\�kEg\�{\�M�81;vl�я~4{�ߜ�\�5�ɏի^��\�\roȶ\�f\"��\�����\�\�D=�\Z5\�s:Dd�Y�p!{�fm�Q��w�����׿�5=����=7�l\�]w�4nVk��f��c�X6w\�ܚ�5mڴ\�\�n�\��~:\�\�_��\�.\�\�\�\�ș2eJn�\�\���D+\�\�\�q\��c�=�\�\�?��O�:\��\�s\�\�s�\'�|�\�\��\�K�\���c0\���\�gO<�D�T�\�w��^��F��>f̘\�V�\�ZBW\�S��\��\��\�\�B[�)G\�Qߒ#\�H�C\"f577\��	��~:E$�u\�]��s0\�s<\�\�9	\�<��E<\�t\�FN8\�l\�M7��\�\�1+����e\�,Z���Ϻ\��\Z>0j���^�\\\�7��\�pY�`Av\�QG\�\�s̻\���\�[\��V�����r\�Zk��}��\�\�\r\"��@|\�k_��\�_�\�\r�7�\�M�w7ޘo�\��5�ȝw\�9_1�\�?��\�׽\�u���z\��q�֨\�5�3\�\�\�֦��_\�	9�뇶Zh然ah���i\�z5)ͫU��#\�ȑ�r$�rP\�a\���?�\�ܓO>��\�=�>ޏ�$��s�\�l\�_�L�\�&Xi\�XHy�\�+�10�\\}�\�٠A-��\�A�\�\r7ܐ\r>�\�\�Z���y�駳[n��b �r�\�f�U^gE�\�/���^\�o�\�<�\�q޻�\�kg��vZn�pM�Ї*\��\���K;\�C��!C�\�\�\�&�y䑹ax\�W\�F$|��\�\�>�\��\���/})��?�\�\�*\�<\�C�՘�E��>�节����/|\�\�\���\���^\�;\�WG�\0㌉\�\�[�κ<LZ�N�>�ڕ�\��B\�>�S\�p\�ZV�؇��\�k�F�$V�\�2\�#\�H9\��r$���<a.>?�T\�0z�\�J\n\�\�B&)8z\�!�\"\�\��w�~\�g����׷�\�m\�v\�mWӰ�u�\"�UK�|\�y�za��Vsܳ\�>[�����޻r\�5�\\\��7\�p\�<�;���9B�O:\�\�\�!,\�\�\��vn\�_\�~�\�y:Q�[\r?\�`�\rZ]\�;\��\�쮻\�ʮ��ʼ\�N\Zf\�\rx\�m�\�7c�V�.B\���|�\�-�a�B���00<��Vy����\��g�dh+���W��\�Cۇ!���uCH�r�)G\"ʑr$=	\�b�9�\�<����:R\�E&�\Z\���4�\"\�\0y\�KL\�\� !4��![o�u\�\�o\�ƍ\�W/�UQB�9_��\�\�?�|+C���4L|ذa٫_�\�\n/���\�Gr�\�9(\"e\�lzo��\�l��|��\�[��\�Y�M?����\�y\�<F7\�\�o�=_\r�\�]�\�$��7�d\�w\�谠\�R�H}���\�W�gܰ�\�\n=`�R ��󻭱\�\Zy�a\�\�㎣���N.\�\�\���)Gʑ�r�I/_��ô�)�\�|i\�fss�\�u:�H��h��>�\�h��\�:�\\t\�\�}�Ѫ\�\����\�}�r�\��\��&�\�\'?�\�ﾯX��F\�\�?��V\�=�\�s�<�(Lo}\�[�0Jn���j��?�)�\��\�jE��6�!\�1��\�Gx�g��G<�|�믿>�\�\���\�_t\�E��������\�멟\�T�^\�\�\�0YQUx\�\�Ç�\��t��.��\�\��矟�.�̴�ؖ)�\"�퐨\�u��\�\��\�\�\�O�w���#\�H9\�Z9��\��s�;v��j5�d��lQދ�R�H�Z0\����\n�;δg7\�hՐ�z*AF\Z\�U��I\�t\�#\�Ev�RH\�C檁��\�NI�\�t\�$\��H\�k��c�=Ř{�p�o\n>\�c\�8N��\0�]=�-5$t:�H�0qp�g3\�lc8�\�X\r�`\\q����O\�\�V\rj\�\�tP \�3c��x\�\"\�sN��\�|�\�sw\�}�+r\�~n�@T����]\�3Oa��r�3\�<S�n��\�\�y����>8)Oa�$�\���\�Q��E���R�Ĥt`��~��Ca���\�\�\�Cmh���N:iTT�\�*\�Ū>��\�j�U�C��\�pZV�7\�x\�\�C\�3fL�\�ӻz�)���&\����.mO?)Gʑr\�ur���\��st\�AÅ\�!n՘:uj>��O\�\��\'%*�,r\Z�Z.��\�,����\�\\M�0��\�C�Q\��Q<9�+�\�\r>��\'\�G9\�]rT\r\�&\�)\Z�|\�c\Zs\�b\n\nN8\�,\�u8%\�\����u\�7c��6�D*�1�\�\0y\�9>�Xccƌ��]v\�e�\�E�!��\�R\��\�w�����\��{EQnp&�ǵR�\�_�j+�$N�Zΐ�&CK�.\�;�Dn��{g���\�ܯ�\�B��t(����oX��u<�\�7�1W\�\�M�\�\�La�(7{&�\�}��ֽ\��\�7�3\�<��?\�^{\�\�wW�X��ƪD�\�>!\�ŕ�\�C\��\�˔\�W_=WH��\��\�wy\�:&L>���v\�m��!V&�?�\�5W\�zh�Z3L<��.^��\�01_��r���W���KA�\�7(�E�\�b�}�\���U% |e\"|��A\���\�\�\��\�\�6z�\�\�\�ƍ�yP�>}\�%�\\\�\r]E!$�5��$�u��Kj��r�)G]+G�t���\�1\�X\"7�\�R/��\��\�\���)���]�\�3�#�Ố�G\\ \��&�ND2![�v�nD!q\r8�{>�\��p+C,\Z\\�JE� ����x\�\�y�|�{\�\��/�\�9�\�D�GD=9S�V-9�F<P\�b�]v�\�HD$�i8r\0\'N0\"\�[�\���\�=y�\Z�<��\�ᓂ�#Q��^zi�R:\� \�\�\���Ae�|\�t\��b4\\*�\�\�\�\�;ِ��\'��\��7\"�89�;\������*?7s�\�XG�z3�\�Pxn��8Mo\�\n8�_���/�;�/\�BF:�t#(0x�Y5!\Z%�\�/�\���Nq��I��	���\�J���\�w���*�+I��\�SO\�W�	�KC\�Dx=N�(bd�g��^u`b\�\�\�A~Lt�Ē;^\\\�29aT��\�$\�\�Ge�Io>\�]�U�\�G�M\'5\��ަ\�A8�p��{=&�����\'�|�Z9�� t��B($�T�\��\�\�~�U\�k[l��\��A)��\�]�\�T��\��G��ia\�+Wf\�I9R����\�Q#��0ފ0\�\�\�\"R�F\�v�\"�$\�6�?	\�;aO�<9�կ~\�\�\�)S�\�\�7��jD� c\'�xb\�D(��}�\\:4�/$���\�(�\"8\�b�c!\Zx4�\Z8\0YBn��`t��\\[*�\�=UE9\�=�Q5p\�0�����0vHG\�9\��!��6\�BD\n\�O\�\�E\�\� �\�Aq\�u\�e�<�H\�|c\�\��!Mi\�-�l��2�Ccǎ\�\�+���87��AZ_\�\��\�\�2��\�hk[\�\�\"(�\0�d��=U[=�B\�	��u\�H�n\0#�Ʉ\�c	P��UJ��\"?r���\�N?��<|�I&����D�\�\'\�/v\�[\rd*xLQ,97E��K\r+&\nإ0\��X\�@	\nB�<��(����\�s\�yT\�P�P\\	7gRD�\�x �k�+\�\\\�\�U\�QW�ۂ��\�	�\�\�=�smD��F�4|�ӟ~<�ٺ�(�G��0\�c\�1Sc������\��ѽ�\��\�\�?��\�0�\�\��\�\�\'V��Q?I?�\�끶�#\�H9\�\�]`�\�Dik�8\�p�!s�5�~B�[)��\0B֪E�)?\\�\����)-Y�$5�4iR�YE8�����2Hta\�8b�Ct���\�\r�^;8���@�\�͛��\�UZ\"0h�\�\�`�qmq�\�E�H�H\�\�Q=H1a\�Μ93�8 ���\��>w�\�\�DĨ=\�\"p\�-[�,O�}S�\��\�B\�\r\�9\�X\�!NZ)}\�;Q��y\rg5\�E8&p20�1�01�I_�nJ�K�\�\�y�2�\�(\r@�9/��oj���jsi{\�a9j%C|�\�\�֕ο�Ni�t4\��\�\n(\�\�i\�7+�m@\�϶}�`E5�\�r\�u<J��E�\�\�Ji�&�T	a�y�1����\�?��\��hJ�3[\�~HwhC�|�7���O\�\�H^/\�\�cI�]+L��ԧ:2��Y>\��DL6B����r�)G]#G4����\�3v1\�k��Fv�IW�����\�8\���`\�\�FFj\0at�Z�\��(\"����4ҡY\�x��\�\�\��Xe.:899c\�\�\\��\"\�\�z\ZY\�W���\�\'\��y���#=�~��Ap��\�\�ч\�\r\�y�Ǽ7ub\�#�D\Z\�w\�}�\�L|DK\�y\r\��3�?�\�8&e�1���\�zGE�7\�a\�q\�\�\�9�3\�erT�\�w\�6��(\�c��>�N���b\�((X(M�\Z\�ⱂ\�$\'9\��ꅙ�krr\�]/+\\�~DEe��y\��I\rj\�mj�\�\�\�0A�҉?W#],+ݪ����\��\�?��=�\�\�p\�l��R�\�J�G�\0y\�+\�\�k�M�\�k\�y;se��~\�K`q�*m�\��`�o\�r\�*&�?�^���\"D)`���C�(VE��0�Q\"	/�9\�i�5!�bq��\��x)VqGY�\�u�ZT3�.wʑrTm<�z\�cL\�]`���B��h�siM��׃�Ɓ��Q&\�f��+�\��(c�5V\�g��馛Z�8\n97��\�`ѢE�\"��\�6�|\����6\�87�\�-!qB\�T\�u� E\�\�6�B��Z�Q4�P\�IE4s\n����s����\�}/O=b\�20FHM!*�z���\"\�\�md B_\�`.*F\�U\�\�H\�\�DU	A�Qt8XH�IY�`A~ ł\�\�\ry�VӨ\�<���98(�dye�\�.�����06��1�+\�ݩ:�tWn\�:D�G\�N8^oVx(D��\��L\�\�p�\�ϥ��[l�E��^��O$V�\�f�mj\�d�\�1p\�\�$E�k�H^W�\�����\�\�:g0$kMP/S���\0\0IDAT2��Ihh��\���\��7�6m\�С\�N�2e�	\'���ĉ��\�!�\�-\�) \�I�ߦ�!�a\�~���\�[-\\\�~A	����~Y�Ů��W���\�\�\������,(p;��c$l;\��X彌aVW�\�a��\�P�Ie�c�\��d)-$\�\��\�h�\�9�\��\�\�N9\�r������\��.�����`쳲Y�M6\�$���N��{·1�\�.\�sIm���l�[\�\"S\�K�UX\�\�o\�{�c\�\\q@��|\���4ҁ\�ki\�\�V?w�Q����{/s\�\�\�8Ͷ\�j�\�)F$@\Z��1Θ�\�\�bS����	�|\�U�GDFj�E~+\��p��bAM!tD\�?s��t�� �8\�x/\rGv�!R��\�E8��n\"�\�I�z,\�k���\�\�l9\���u�7^\�iԕNΟ�N\�V�Hs�\'Ԛ�V�(\Z�+Iռ\��7\��4D;Ҟ*\�ծ\rC����2y\�Y\�s\�\�\�\�^\��ʊ\nմVcŧ�tI��7��\�Lq\�i�]z\�1Ǽ�ܙ\�\��FW�P\�\�oNW\�\�&y����\Z]yJ\�\�&LX-(\"tu��p�KʓwVV�\��Sg@Q|.\��J���5�`\��Fep\�1�KK�Q/gD\�\�A��O�(�(t\�7\�\�_T���X�\"��!�Ҷ\nʝr\�Cr\���0/\�n>#�©�1�S�Zr\�9��\�ض\"�b*+Ƽ�\�E�0\�5G��\�b�u\�}�4\���\r`5�+\�?Dn���ʮ1ʑ�Q\n\�q\��7:\�T\���!\����\�-n�D�!O�/~V�4B���z95!�+H���c��\'`,RYˑ_-B9%\���\r8Y��8���#��\�\��Rt��Ź(|���Ӂ\��\�\�\n\��M\�n�\"ҭ��+�1���\�l�\�dLD����\�n,*�\�H)VW��\�\�\'&��z\�\�7\�9�{\\�\�\��f%��~\�\�\�D53�_\��jVF\�iҤI����_�;�Ѫ\��\�/Z�dIM\0V%c�y��\�\�~[�|�ĉ��C�++vC\�\�O��\�j[,(g\�qS�.��\��%[��xaE��<\\����\�g\\\�\�N��(�GuT6{�\�Ã��PH�UӔ�!FK���br���Q�\0\�p�^*\�x\"$<\�ꐮN\�]`�]`�՜E8\�0Jp4\�b��h*\�t�h\��p\�g\�\�\0_���9s\�\���u\�\\��+�8\�Y]\�Z9>%uإ�Ep�`@\�|t�\'\�\�M�bL+AFIO\�H}\�\�G\�8��B`��w1\�k9���KS�\�ԦX\"M\�cl}TX���>\�#��9A}\n\�2g�sŗ�#����>�\�h�8%�\�\0\�>��8�Q\�92�/��I�\�-2\�\�\���0���N��R�;\�O�<:D�\�a\�\�5\��^\�+HQ�+��D�t�3\ZF\��Q�\�\�\�\�\�\�$\�J\Z\�!\�Z\�^_�0��\�\�\�^�қۻ2��&�\�ar�$(��\�)z((!��\�j69[_F��VR\�m\�D\�q\�Q��V�:\�O+\����)8\�\0b<�|�ɕq���rĸ\�p�\�+��ϑ-� �0�p\�\�\�\�T��ŷb��b�9r�\nlq\�\'\�\� �N�UI����\��nV7�y��vj�DC(\��\�r�!�ˌN5\"(�䒐��b8\�с�!C�x-\'\�g��N�P��\�\�V5#03$\�\�<�̊S��)8�qLv\�*�r\�7\�#\�\"�,\0\�\��>$u(RL5 : :ې%\�R\Z`����~\�yM\��[5C>\�+�!\�lM?\��\'\�L�ـ��#�K��=�Q.qH2���́\�9\�^�#D�\r\�&\Z��\0�e\\+\�\�\�Wd(ܛf-[���Ķ���\��Ý��ٳgFT*?5S���tL�(�l��G�ԡdŽ�Y\�a\�J=(b(�Q���N�\��\�О*\�(#���.+f�ZR\'ő\�S���(\'�J�yMMM3;�2\�+�\��\�&O����|\�+Cj)zlkW6\0�BS��D��\�\�U�_|1?�X�0*x�g\�\��O�>�/�S{�X��_�\0@FP~��G7Vu0XP�	[%�\�\�\�\"�%�O�0�\�@�h_e9L��wJ!�\�)\rGF\�\�i��R\�^\�N9\�r\�ջ��`d�\�i\�F�u��]#\�V���z+�\\Cz���l�\�h՘�\�\���#_i�[Q&\�(�ù�}E�:��j�:�4\��0�\��+�a~�� 1\�´�rtHF\'E-���#�\�\�O:ݴi\�5j\�\�a\�ݑ�#�7��\�Qp�\�\":n�1c\�<�\"\�m0\�J=u\�\�J7&<\�qRA`\�A��\�\\,\0\�\�G�_��F�|ìY��#�8\"O\�@1ë��F\�b&I7rދJn_\"\�\�ә\��\�Ko�\�^g�}�G}tSQ\�\�\�$t7]=dxV\���q�C	e�UB:\�!�;sf;��\Z\�,N��w�^s�w��o�\�Cjdκ4R%\�*\ra\�~���PUR,R%�Ht4�:�\�j\n�#��}��ȝr\�{\��<�}��>9U5�\nsD[uv\Z��Q\�\�\�\�|ٞk\�\��\�\�2�2�#p:\�\�̨\'\"���\�J�C�T�q�\�\�D�\�A�j̹%��X��U\�bu\�T\��E�jM��DE\�\�\�q1,�\��؉E�x\�\�+�}x�	�f�/;��\��\�.Y�\�S�&MZL�^��:�c��\�M\�o�{\�EU\�\\�%��pDw\�\��e7�9V\�\��]�Rc��[�al����+Eq{�(�s��QHp�D�� 䛨�bQH\�N9Q�Dz���s3�Y�r\�\�B$\�\�ɓ�y�D9̟?F\�7#D���ԬF�}+���\�>9�䢳j[\�ym�\�7��XQ�E,qvPȋ\\]B\�)(�*+z�\���\�Ǐ�\�c�\�W���^\�!a%�\�qqE	�\�YU���rHcZy�\�(�\����\�J��ԙ��%�!n��Ӏ��G悢P9q��1��<p�\�V��;\�HD9\�P��2\�PS�\�\�\�\��8&M�\��\�#�ļ���J�\�o��\��\�~q̈�=\�\�\�8�alDb\�\�~�\�	\�6�gIq<\'&\n\�\��\���(7\��U[q�rw�z\Z�\�r1\�^#�-\�;6\�|�\�#�B_RB[C�\�\�\n\�\�ٳ�u\�9Q�B�!�uUR��j e�-\0\�\�\� J ��\�p\n��0�;\�\�Џ\�D\Z\�ԠvېQ\�;\�V�����\n��P\�#\�H��C��\�\�f�\�\����K�\Z�2�N:iٜ9sb�i_2��\�g:D�ST�\�	ՆSX�V���\�&�E��\n2�j�:��U�X\��Ĳ�K�<�Q\"�<^Ťn�\�&�\��%U�bk0F^�BX��\�\n\�\�SOͣ\�?\��p�\�g{\�g\��x�C�#DO�@U|\�:\�\�\�Q\�p\��|\nJ�\�ɮ\0���W\�N9Q�Dz/aL��pxt<�x�\�1mڴ�ۘV�\�H�;vl\Z\�@q\�\�O�>�?�W\�!#\�qn�\�\�b�\�\�#�+��4��ro\�{�\�v\�i�>wF\��|�\�\�C7\�l��\�}_a\�	9Z�\�6�\�}��ɝr��r��rT�#F�\�-�Jk\�\�ع�HG�\�>�T%R/�x\�\��VسgϦ-_�dI�4P��\�3fL\�o��5D��0wQ\�\�F��U��yW�b�}Ǎ7�\�c��\�[4ܱi�.CXge���\�T\���r��(G\"}\"F��\�R�t[i���w\�yg\�\�R)�ǷRá?�T\���\"\"\���_~y\�\'�<{�\�\ZU�\��ܜY\�HD9\�^��\�;{i/�J\�Y���㭡}\�\��hu8\�t酐S��7a�\�\�\�\�{\�}�\�7n\�1gVD9Q�Dz\��0\�\���7*�Jǆ�f�6/�\�\�C��ph\�ǘ\�6\n\�َt���KE-L�饊ިQ��O�8��\�g\�����\"�\\�������\�\"��(G\"=ȴi\�p,L*7Ɍt\���t\�ҽƏ_���۟M_K���\��(G\"ʑ��Vt:���bXa\n�\�>�&M*\�v\�m��sf\raQ�D�#�NgDh$��!pVﻶA{\�Ўl\�>o�\�\�\�\�\�\�v\rmm�\"\"\�U�\������\��(G\"ʑH��]h&�Ss\�U\�\�q7��ж\�Z��Qt�\�\��\�\rm���8v+�MC{O�?\�3�k���6�o\nm��s���N\�E/�q\�-�0�P�Q�D�#�.a�\�~\�\�Cۣ\�p\nlX�{|h\�f-�!g��d\�AA{>y\�\�\�ma����&i�Ǐ����˟�\�о�8`y�\�:DD�\�!����i-�!Q�D�#�.�(�\�C�\�Q�ݞ�\�6�:	N);\Z\"We+�ސ<>�`oږYK\�\�c�#n*w�s\n\��e�\'�χ\�\���SB����t.S�LYd/�(G\"ʑH�\�Tv`\�_���2�(;^m\�\�*�\�lE\�£\�c� �\'\��@�\�\�mI�x�\Z\�\�\�W>ש\���qHh���Nu\�L�,cw�B��\�n\�Z\"~]~���1\�\��\�)�{ޒ�\�f :a\�*\�\�;��%y�\�\�g�\�Ǭ�$����u�N���vEh��\Z&cB�S�5�ޛ��XD\�g-iDD�7k)&yM�ǳ΋ݒǟJ��Kh\�\��ҡ:DDDDDDDZ\�%k٭[����\�\0[X��p�oC�\�WC;\'�\�C;#��k\�߻�o�<~,9fq�\�\�:�\�\�ڿ�G�G��������HKQG��SPG�H�b\ZDS\�x\�%>\�\�l\�.��I֒��C\���\�q鶘\��\���%�yD��8CH�`g\rv���/t�N����vo�\�\�Y���t\�2q	qzrl�<`\n�CR\�a~�\�z�\�5\�]\���-1�|�3��4�S_\�T�\"\"\"\"\"\"\"-\�[��g\�\��e+��|�\�HI#^h\�1pL�\�~�<~2[�E\�\�ʭOᖙ\"\"\"\"\"\"\"g�]�Jt:�������H��\�A�3i��\�\�\�ul�\�\��`\�RdG�#Q��#Q�D9R���e\�.\�8MMMO<�\�svD/`\�ڹ۞P�D9R�D9\�H9��G��H\'0x�\�[�y\�;��\�c��\�\�\���r$ʑr$ʑ(Gʑ�<:D:�ŋ�5������팞eނؚ\�r�B9\�H9\�H�#\�Hz�\"���\�o[��\�}�\�G\�d\�ܹ7�\�\�ѝv\�\�\���r$ʑr$ʑ(Gʑ�<:D:�ŋ8o޼�}�Y;�X�hѕ,\�s��\�\�\�ʑ(Gʑr��r�I\�`�] \�9L�:���:趧�~z�aÆ5\r:\�N\�ƉiΜ9\�-�JG\��η\�#ʑ(Gʑr��r��N�~\�E]t��x\�\�?�w�Q>�\�\Zk��\�1]Ǽ�s\�^6o޼�11\�\�W\�%ʑ(G�)G�)G\�{PjD��뮻n\�L4h\�\�뮻\�\�묳\��Æ\r{}x\�\�\� \�\�\��IT3���~�\�\�\�.s\�\�H�#Q��#Q��#\�\� �\�p��\�oV*��\r?\�Bk�W:\�Ҭe�\�C�\�\�Bʑ(G�)G�)G\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\�\���\�\�l^D�\"\0\0\0\0IEND�B`�',NULL);
/*!40000 ALTER TABLE `act_ge_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('next.dbid','150001',61),('schema.history','create(5.22.0.0)',1),('schema.version','5.22.0.0',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_group`
--

DROP TABLE IF EXISTS `act_id_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_group`
--

LOCK TABLES `act_id_group` WRITE;
/*!40000 ALTER TABLE `act_id_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_info`
--

DROP TABLE IF EXISTS `act_id_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_info`
--

LOCK TABLES `act_id_info` WRITE;
/*!40000 ALTER TABLE `act_id_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_membership`
--

DROP TABLE IF EXISTS `act_id_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_membership`
--

LOCK TABLES `act_id_membership` WRITE;
/*!40000 ALTER TABLE `act_id_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_user`
--

DROP TABLE IF EXISTS `act_id_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_user`
--

LOCK TABLES `act_id_user` WRITE;
/*!40000 ALTER TABLE `act_id_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_procdef_info`
--

DROP TABLE IF EXISTS `act_procdef_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_procdef_info`
--

LOCK TABLES `act_procdef_info` WRITE;
/*!40000 ALTER TABLE `act_procdef_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_procdef_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment` VALUES ('135064','流程审批测试流程',NULL,'','2018-01-07 10:09:38'),('145001','new-process',NULL,'','2018-01-09 11:32:28');
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_model`
--

DROP TABLE IF EXISTS `act_re_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_model`
--

LOCK TABLES `act_re_model` WRITE;
/*!40000 ALTER TABLE `act_re_model` DISABLE KEYS */;
INSERT INTO `act_re_model` VALUES ('142501',8,'new-process','process',NULL,'2018-01-08 08:10:30','2018-01-09 11:32:30',1,'{\"name\":\"new-process\",\"description\":\"\",\"revision\":1}','145001','142502','142503',''),('145005',4,'new-process','process',NULL,'2018-01-09 12:00:51','2018-01-09 12:01:00',1,'{\"name\":\"new-process\",\"description\":\"\",\"revision\":1}',NULL,'145006','145007',''),('147501',2,'new-process','process',NULL,'2019-04-15 03:47:59','2019-04-15 03:47:59',1,'{\"name\":\"new-process\",\"description\":\"\",\"revision\":1}',NULL,'147502',NULL,''),('57501',31,'流程审批测试流程','test_audit02',NULL,'2017-11-12 00:42:13','2018-01-07 10:09:38',1,'{\"name\":\"流程审批测试流程\",\"revision\":1,\"description\":\"\"}','135064','57502','62501','');
/*!40000 ALTER TABLE `act_re_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef` VALUES ('process:1:145004',1,'http://www.activiti.org/processdef',NULL,'process',1,'145001','new-process.bpmn20.xml','new-process.process.png',NULL,0,1,1,''),('salary:3:135067',1,'http://www.activiti.org/test','流程审批测试流程','salary',3,'135064','流程审批测试流程.bpmn20.xml','流程审批测试流程.salary.png',NULL,1,1,1,'');
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_content`
--

DROP TABLE IF EXISTS `blog_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_content` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `slug` varchar(255) DEFAULT NULL,
  `created` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `modified` bigint(20) DEFAULT NULL COMMENT '最近修改人id',
  `content` text COMMENT '内容',
  `type` varchar(16) DEFAULT NULL COMMENT '类型',
  `tags` varchar(200) DEFAULT NULL COMMENT '标签',
  `categories` varchar(200) DEFAULT NULL COMMENT '分类',
  `hits` int(5) DEFAULT NULL,
  `comments_num` int(5) DEFAULT '0' COMMENT '评论数量',
  `allow_comment` int(1) DEFAULT '0' COMMENT '开启评论',
  `allow_ping` int(1) DEFAULT '0' COMMENT '允许ping',
  `allow_feed` int(1) DEFAULT '0' COMMENT '允许反馈',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  `gtm_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gtm_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章内容';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_content`
--

LOCK TABLES `blog_content` WRITE;
/*!40000 ALTER TABLE `blog_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_notify`
--

DROP TABLE IF EXISTS `oa_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_notify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '类型',
  `title` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `content` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `files` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '附件',
  `status` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `oa_notify_del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='通知通告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_notify`
--

LOCK TABLES `oa_notify` WRITE;
/*!40000 ALTER TABLE `oa_notify` DISABLE KEYS */;
INSERT INTO `oa_notify` VALUES (41,'3','十九大召开了','十九大召开了，竟然没邀请我','','1',1,NULL,NULL,'2017-10-10 17:21:11','',NULL),(42,'3','苹果发布新手机了','有全面屏的iphoneX','','1',1,NULL,NULL,'2017-10-10 18:51:14','',NULL),(43,'3','十九大要消灭贫困人口','我还只有两三年的活头了','','1',1,NULL,NULL,'2017-10-11 09:56:35','',NULL),(44,'3','骑士又输了','捉急','','1',1,NULL,NULL,'2017-10-26 13:59:34','',NULL),(45,'3','火箭5连败','没有保罗不行呀','','1',1,NULL,NULL,'2017-12-30 12:10:20','',NULL);
/*!40000 ALTER TABLE `oa_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_notify_record`
--

DROP TABLE IF EXISTS `oa_notify_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_notify_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `notify_id` bigint(20) DEFAULT NULL COMMENT '通知通告ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '接受人',
  `is_read` tinyint(1) DEFAULT '0' COMMENT '阅读标记',
  `read_date` date DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`),
  KEY `oa_notify_record_notify_id` (`notify_id`),
  KEY `oa_notify_record_user_id` (`user_id`),
  KEY `oa_notify_record_read_flag` (`is_read`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='通知通告发送记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_notify_record`
--

LOCK TABLES `oa_notify_record` WRITE;
/*!40000 ALTER TABLE `oa_notify_record` DISABLE KEYS */;
INSERT INTO `oa_notify_record` VALUES (18,41,1,1,'2017-10-26'),(19,42,1,1,'2017-10-26'),(20,43,136,0,NULL),(21,43,133,0,NULL),(22,43,130,0,NULL),(23,43,1,1,'2017-10-26'),(24,44,1,1,'2017-12-29'),(25,45,1,1,'2018-01-07'),(26,45,135,0,NULL);
/*!40000 ALTER TABLE `oa_notify_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `PROC_INS_ID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '流程实例ID',
  `USER_ID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '变动用户',
  `OFFICE_ID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属部门',
  `POST` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '岗位',
  `AGE` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `EDU` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '学历',
  `CONTENT` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '调整原因',
  `OLDA` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '现行标准 薪酬档级',
  `OLDB` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '现行标准 月工资额',
  `OLDC` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '现行标准 年薪总额',
  `NEWA` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '调整后标准 薪酬档级',
  `NEWB` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '调整后标准 月工资额',
  `NEWC` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '调整后标准 年薪总额',
  `ADD_NUM` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '月增资',
  `EXE_DATE` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '执行时间',
  `HR_TEXT` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '人力资源部门意见',
  `LEAD_TEXT` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '分管领导意见',
  `MAIN_LEAD_TEXT` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '集团主要领导意见',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `OA_TEST_AUDIT_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='审批流程测试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES ('825693cd6c1c4f6b86699fc3f1a54887','','136','','','','','技能提高','','','','','100','','','','同意','同意','总经理审批','1','2017-12-15 22:01:41','1','2017-12-15 22:01:41',NULL,'1'),('a80e1d9ef35a4502bd65b0e5ba7eafff','','cccc','ccc','ccccc','','','','','','','','','','','','','','','','2017-11-30 16:35:15','','2017-11-30 16:35:15','',''),('b5d228f729f74833883917825749f0d5','','','','','','','','','','','','','防守打法','','','','','','','2017-11-30 19:58:36','','2017-11-30 19:58:36','',''),('cc2e8083f9d8478f831b2ea852e5c17b','','','cc','cc','','','xxx','','','','','','','','','','','','','2017-11-30 19:18:59','','2017-11-30 19:18:59','',''),('cebdb316794b48be87d93dd4dbfb7d4b','','','','发的顺丰','','','','','','','','','','','','','','','','2017-11-30 19:58:43','','2017-11-30 19:58:43','','');
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='部门管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (6,0,'研发部',1,1),(7,6,'研發一部',1,1),(8,6,'研发二部',2,1),(9,0,'销售部',2,1),(10,9,'销售一部',1,1),(11,0,'产品部',3,1),(12,11,'产品一部',1,1),(13,0,'测试部',5,1),(14,13,'测试一部',1,1),(15,13,'测试二部',2,1);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '标签名',
  `value` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数据值',
  `type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '类型',
  `description` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `parent_id` bigint(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` int(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`name`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
INSERT INTO `sys_dict` VALUES (1,'正常','0','del_flag','删除标记',10,0,1,NULL,1,NULL,NULL,'0'),(3,'显示','1','show_hide','显示/隐藏',10,0,1,NULL,1,NULL,NULL,'0'),(4,'隐藏','0','show_hide','显示/隐藏',20,0,1,NULL,1,NULL,NULL,'0'),(5,'是','1','yes_no','是/否',10,0,1,NULL,1,NULL,NULL,'0'),(6,'否','0','yes_no','是/否',20,0,1,NULL,1,NULL,NULL,'0'),(7,'红色','red','color','颜色值',10,0,1,NULL,1,NULL,NULL,'0'),(8,'绿色','green','color','颜色值',20,0,1,NULL,1,NULL,NULL,'0'),(9,'蓝色','blue','color','颜色值',30,0,1,NULL,1,NULL,NULL,'0'),(10,'黄色','yellow','color','颜色值',40,0,1,NULL,1,NULL,NULL,'0'),(11,'橙色','orange','color','颜色值',50,0,1,NULL,1,NULL,NULL,'0'),(12,'默认主题','default','theme','主题方案',10,0,1,NULL,1,NULL,NULL,'0'),(13,'天蓝主题','cerulean','theme','主题方案',20,0,1,NULL,1,NULL,NULL,'0'),(14,'橙色主题','readable','theme','主题方案',30,0,1,NULL,1,NULL,NULL,'0'),(15,'红色主题','united','theme','主题方案',40,0,1,NULL,1,NULL,NULL,'0'),(16,'Flat主题','flat','theme','主题方案',60,0,1,NULL,1,NULL,NULL,'0'),(17,'国家','1','sys_area_type','区域类型',10,0,1,NULL,1,NULL,NULL,'0'),(18,'省份、直辖市','2','sys_area_type','区域类型',20,0,1,NULL,1,NULL,NULL,'0'),(19,'地市','3','sys_area_type','区域类型',30,0,1,NULL,1,NULL,NULL,'0'),(20,'区县','4','sys_area_type','区域类型',40,0,1,NULL,1,NULL,NULL,'0'),(21,'公司','1','sys_office_type','机构类型',60,0,1,NULL,1,NULL,NULL,'0'),(22,'部门','2','sys_office_type','机构类型',70,0,1,NULL,1,NULL,NULL,'0'),(23,'小组','3','sys_office_type','机构类型',80,0,1,NULL,1,NULL,NULL,'0'),(24,'其它','4','sys_office_type','机构类型',90,0,1,NULL,1,NULL,NULL,'0'),(25,'综合部','1','sys_office_common','快捷通用部门',30,0,1,NULL,1,NULL,NULL,'0'),(26,'开发部','2','sys_office_common','快捷通用部门',40,0,1,NULL,1,NULL,NULL,'0'),(27,'人力部','3','sys_office_common','快捷通用部门',50,0,1,NULL,1,NULL,NULL,'0'),(28,'一级','1','sys_office_grade','机构等级',10,0,1,NULL,1,NULL,NULL,'0'),(29,'二级','2','sys_office_grade','机构等级',20,0,1,NULL,1,NULL,NULL,'0'),(30,'三级','3','sys_office_grade','机构等级',30,0,1,NULL,1,NULL,NULL,'0'),(31,'四级','4','sys_office_grade','机构等级',40,0,1,NULL,1,NULL,NULL,'0'),(32,'所有数据','1','sys_data_scope','数据范围',10,0,1,NULL,1,NULL,NULL,'0'),(33,'所在公司及以下数据','2','sys_data_scope','数据范围',20,0,1,NULL,1,NULL,NULL,'0'),(34,'所在公司数据','3','sys_data_scope','数据范围',30,0,1,NULL,1,NULL,NULL,'0'),(35,'所在部门及以下数据','4','sys_data_scope','数据范围',40,0,1,NULL,1,NULL,NULL,'0'),(36,'所在部门数据','5','sys_data_scope','数据范围',50,0,1,NULL,1,NULL,NULL,'0'),(37,'仅本人数据','8','sys_data_scope','数据范围',90,0,1,NULL,1,NULL,NULL,'0'),(38,'按明细设置','9','sys_data_scope','数据范围',100,0,1,NULL,1,NULL,NULL,'0'),(39,'系统管理','1','sys_user_type','用户类型',10,0,1,NULL,1,NULL,NULL,'0'),(40,'部门经理','2','sys_user_type','用户类型',20,0,1,NULL,1,NULL,NULL,'0'),(41,'普通用户','3','sys_user_type','用户类型',30,0,1,NULL,1,NULL,NULL,'0'),(42,'基础主题','basic','cms_theme','站点主题',10,0,1,NULL,1,NULL,NULL,'0'),(43,'蓝色主题','blue','cms_theme','站点主题',20,0,1,NULL,1,NULL,NULL,'1'),(44,'红色主题','red','cms_theme','站点主题',30,0,1,NULL,1,NULL,NULL,'1'),(45,'文章模型','article','cms_module','栏目模型',10,0,1,NULL,1,NULL,NULL,'0'),(46,'图片模型','picture','cms_module','栏目模型',20,0,1,NULL,1,NULL,NULL,'1'),(47,'下载模型','download','cms_module','栏目模型',30,0,1,NULL,1,NULL,NULL,'1'),(48,'链接模型','link','cms_module','栏目模型',40,0,1,NULL,1,NULL,NULL,'0'),(49,'专题模型','special','cms_module','栏目模型',50,0,1,NULL,1,NULL,NULL,'1'),(50,'默认展现方式','0','cms_show_modes','展现方式',10,0,1,NULL,1,NULL,NULL,'0'),(51,'首栏目内容列表','1','cms_show_modes','展现方式',20,0,1,NULL,1,NULL,NULL,'0'),(52,'栏目第一条内容','2','cms_show_modes','展现方式',30,0,1,NULL,1,NULL,NULL,'0'),(53,'发布','0','cms_del_flag','内容状态',10,0,1,NULL,1,NULL,NULL,'0'),(54,'删除','1','cms_del_flag','内容状态',20,0,1,NULL,1,NULL,NULL,'0'),(55,'审核','2','cms_del_flag','内容状态',15,0,1,NULL,1,NULL,NULL,'0'),(56,'首页焦点图','1','cms_posid','推荐位',10,0,1,NULL,1,NULL,NULL,'0'),(57,'栏目页文章推荐','2','cms_posid','推荐位',20,0,1,NULL,1,NULL,NULL,'0'),(58,'咨询','1','cms_guestbook','留言板分类',10,0,1,NULL,1,NULL,NULL,'0'),(59,'建议','2','cms_guestbook','留言板分类',20,0,1,NULL,1,NULL,NULL,'0'),(60,'投诉','3','cms_guestbook','留言板分类',30,0,1,NULL,1,NULL,NULL,'0'),(61,'其它','4','cms_guestbook','留言板分类',40,0,1,NULL,1,NULL,NULL,'0'),(62,'公休','1','oa_leave_type','请假类型',10,0,1,NULL,1,NULL,NULL,'0'),(63,'病假','2','oa_leave_type','请假类型',20,0,1,NULL,1,NULL,NULL,'0'),(64,'事假','3','oa_leave_type','请假类型',30,0,1,NULL,1,NULL,NULL,'0'),(65,'调休','4','oa_leave_type','请假类型',40,0,1,NULL,1,NULL,NULL,'0'),(66,'婚假','5','oa_leave_type','请假类型',60,0,1,NULL,1,NULL,NULL,'0'),(67,'接入日志','1','sys_log_type','日志类型',30,0,1,NULL,1,NULL,NULL,'0'),(68,'异常日志','2','sys_log_type','日志类型',40,0,1,NULL,1,NULL,NULL,'0'),(69,'请假流程','leave','act_type','流程类型',10,0,1,NULL,1,NULL,NULL,'0'),(70,'审批测试流程','test_audit','act_type','流程类型',20,0,1,NULL,1,NULL,NULL,'0'),(71,'分类1','1','act_category','流程分类',10,0,1,NULL,1,NULL,NULL,'0'),(72,'分类2','2','act_category','流程分类',20,0,1,NULL,1,NULL,NULL,'0'),(73,'增删改查','crud','gen_category','代码生成分类',10,0,1,NULL,1,NULL,NULL,'1'),(74,'增删改查（包含从表）','crud_many','gen_category','代码生成分类',20,0,1,NULL,1,NULL,NULL,'1'),(75,'树结构','tree','gen_category','代码生成分类',30,0,1,NULL,1,NULL,NULL,'1'),(76,'=','=','gen_query_type','查询方式',10,0,1,NULL,1,NULL,NULL,'1'),(77,'!=','!=','gen_query_type','查询方式',20,0,1,NULL,1,NULL,NULL,'1'),(78,'&gt;','&gt;','gen_query_type','查询方式',30,0,1,NULL,1,NULL,NULL,'1'),(79,'&lt;','&lt;','gen_query_type','查询方式',40,0,1,NULL,1,NULL,NULL,'1'),(80,'Between','between','gen_query_type','查询方式',50,0,1,NULL,1,NULL,NULL,'1'),(81,'Like','like','gen_query_type','查询方式',60,0,1,NULL,1,NULL,NULL,'1'),(82,'Left Like','left_like','gen_query_type','查询方式',70,0,1,NULL,1,NULL,NULL,'1'),(83,'Right Like','right_like','gen_query_type','查询方式',80,0,1,NULL,1,NULL,NULL,'1'),(84,'文本框','input','gen_show_type','字段生成方案',10,0,1,NULL,1,NULL,NULL,'1'),(85,'文本域','textarea','gen_show_type','字段生成方案',20,0,1,NULL,1,NULL,NULL,'1'),(86,'下拉框','select','gen_show_type','字段生成方案',30,0,1,NULL,1,NULL,NULL,'1'),(87,'复选框','checkbox','gen_show_type','字段生成方案',40,0,1,NULL,1,NULL,NULL,'1'),(88,'单选框','radiobox','gen_show_type','字段生成方案',50,0,1,NULL,1,NULL,NULL,'1'),(89,'日期选择','dateselect','gen_show_type','字段生成方案',60,0,1,NULL,1,NULL,NULL,'1'),(90,'人员选择','userselect','gen_show_type','字段生成方案',70,0,1,NULL,1,NULL,NULL,'1'),(91,'部门选择','officeselect','gen_show_type','字段生成方案',80,0,1,NULL,1,NULL,NULL,'1'),(92,'区域选择','areaselect','gen_show_type','字段生成方案',90,0,1,NULL,1,NULL,NULL,'1'),(93,'String','String','gen_java_type','Java类型',10,0,1,NULL,1,NULL,NULL,'1'),(94,'Long','Long','gen_java_type','Java类型',20,0,1,NULL,1,NULL,NULL,'1'),(95,'仅持久层','dao','gen_category','代码生成分类',40,0,1,NULL,1,NULL,NULL,'1'),(96,'男','1','sex','性别',10,0,1,NULL,1,NULL,NULL,'0'),(97,'女','2','sex','性别',20,0,1,NULL,1,NULL,NULL,'0'),(98,'Integer','Integer','gen_java_type','Java类型',30,0,1,NULL,1,NULL,NULL,'1'),(99,'Double','Double','gen_java_type','Java类型',40,0,1,NULL,1,NULL,NULL,'1'),(100,'Date','java.util.Date','gen_java_type','Java类型',50,0,1,NULL,1,NULL,NULL,'1'),(104,'Custom','Custom','gen_java_type','Java类型',90,0,1,NULL,1,NULL,NULL,'1'),(105,'会议通告','1','oa_notify_type','通知通告类型',10,0,1,NULL,1,NULL,NULL,'0'),(106,'奖惩通告','2','oa_notify_type','通知通告类型',20,0,1,NULL,1,NULL,NULL,'0'),(107,'活动通告','3','oa_notify_type','通知通告类型',30,0,1,NULL,1,NULL,NULL,'0'),(108,'草稿','0','oa_notify_status','通知通告状态',10,0,1,NULL,1,NULL,NULL,'0'),(109,'发布','1','oa_notify_status','通知通告状态',20,0,1,NULL,1,NULL,NULL,'0'),(110,'未读','0','oa_notify_read','通知通告状态',10,0,1,NULL,1,NULL,NULL,'0'),(111,'已读','1','oa_notify_read','通知通告状态',20,0,1,NULL,1,NULL,NULL,'0'),(112,'草稿','0','oa_notify_status','通知通告状态',10,0,1,NULL,1,NULL,'','0'),(113,'删除','0','del_flag','删除标记',NULL,NULL,NULL,NULL,NULL,NULL,'',''),(118,'关于','about','blog_type','博客类型',NULL,NULL,NULL,NULL,NULL,NULL,'全url是:/blog/open/page/about',''),(119,'交流','communication','blog_type','博客类型',NULL,NULL,NULL,NULL,NULL,NULL,'',''),(120,'文章','article','blog_type','博客类型',NULL,NULL,NULL,NULL,NULL,NULL,'',''),(121,'编码','code','hobby','爱好',NULL,NULL,NULL,NULL,NULL,NULL,'',''),(122,'绘画','painting','hobby','爱好',NULL,NULL,NULL,NULL,NULL,NULL,'','');
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '文件类型',
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COMMENT='文件上传';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (110,0,'/files/d64a62e3-6821-48f1-bac6-a1b9945f4afb.jpg','2017-10-14 16:20:17'),(111,0,'/files/aa2c3dc6-495f-48cc-8e12-446eceb2535e.jpg','2017-10-14 16:20:21'),(118,0,'/files/a973499e-3ec7-4d43-8a52-b6f6517c77e3.jpg','2017-10-20 11:53:52'),(132,0,'/files/e6f13526-e31c-4ebe-a3cf-5fd88dd10be6.jpg','2017-12-18 20:19:51'),(134,0,'/files/cd016e72-77f7-4425-afe2-b79dfbdc3ae9.jpeg','2017-12-18 22:44:07'),(138,0,'/files/9ec12ee7-65b5-4cc5-9900-d2ec6185b336.jpg','2017-12-19 19:55:27'),(139,0,'/files/f6aab9d4-00a1-4bc8-a695-40fc472d4ea9.jpg','2018-01-02 19:53:24'),(141,0,'/files/445c5d98-b3b6-4226-a5af-249d1b2a6a34.jpg','2018-01-09 19:28:53');
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `time` int(11) DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=559 DEFAULT CHARSET=utf8 COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (467,NULL,NULL,'error',NULL,'http://localhost/api/goPay','org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'GET\' not supported',NULL,'2019-09-07 17:30:23'),(468,NULL,NULL,'error',NULL,'http://localhost/api/goPay','org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'GET\' not supported',NULL,'2019-11-14 16:13:29'),(469,NULL,NULL,'error',NULL,'http://localhost/api/goPay','org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'GET\' not supported',NULL,'2019-11-14 16:16:28'),(470,NULL,NULL,'error',NULL,'http://localhost/api/goPay','java.lang.RuntimeException: post请求异常,当前请求的url为https://api.qapple.io/v2/api/merchant/merchantcenter/pay/prePay参数为{\"vipName\":\"0103069\",\"orderAmountRmb\":100.00,\"orderAmountRmb10000\":1000000,\"subject\":\"交易商品\",\"outTradeNo\":\"20191114162221088\",\"sign\":\"hRUveuOSqeEhLKJVyBbMUNSb4fIhKUb7dXnrtdw5fDCxq+0KRWxQWnrdjG/I9tX3iInifzJiY2Bd7JQHkP/wLAE0FhPz+O/hIslMs7HZP1WH6Lx6TygGVgHCrJSaElg6mZUypdqLg4FC26czAvoSHq0rP2EKNBZArRnwaOgESYU=\",\"notifyUrl\":\"http://localhost/api/notify\",\"signType\":\"RSA\",\"body\":\"交易金额\",\"merchantName\":\"xgww213\"}',NULL,'2019-11-14 16:22:42'),(471,NULL,NULL,'error',NULL,'http://localhost/api/goPay','java.lang.RuntimeException: post请求异常,当前请求的url为https://api.qapple.io/v2/api/merchant/merchantcenter/pay/prePay参数为{\"vipName\":\"0103069\",\"orderAmountRmb\":100.00,\"orderAmountRmb10000\":1000000,\"subject\":\"交易商品\",\"outTradeNo\":\"20191114162357821\",\"sign\":\"Q3yCu/GFfVfBjaNQsHt6X59gO0j45eeq5gQYHJURw2SD8sH1eV7jiEr8ODOk60nI9pv6Yz7tn5j/ygSQGe2Qf6aQ2M5QnHnSyFCCoAJQjBk3tpY8ojUDAFCHav797m6Gwxhk6Fkl3xEyRSXXBXvtdqCSUZHrWLoBpBtCBP4a7DI=\",\"notifyUrl\":\"http://localhost/api/notify\",\"signType\":\"RSA\",\"body\":\"交易金额\",\"merchantName\":\"xgww213\"}',NULL,'2019-11-14 16:23:58'),(472,NULL,NULL,'error',NULL,'http://192.168.0.101/api/myteam','org.apache.catalina.connector.ClientAbortException: java.io.IOException: Broken pipe',NULL,'2020-03-28 19:14:38'),(473,NULL,NULL,'error',NULL,'http://192.168.0.101/api/goPay','java.lang.RuntimeException: post请求异常,当前请求的url为https://api.qapple.io/v2/api/merchant/merchantcenter/pay/prePay参数为{\"vipName\":\"0104065\",\"orderAmountRmb\":1000.00,\"orderAmountRmb10000\":10000000,\"subject\":\"交易商品\",\"outTradeNo\":\"20200329173952799\",\"sign\":\"DT8lN8phBDfMbIfCM455O0tp+D/hscjLglx7TSYMVcQwpvgoCfQy1kWDKMRC7uWwm7aiWObH2J4bZCp7ARwEfbtmleHDrDiM9zdDXgD+fXh4pKVTyZ1EukLHjl0Kc68Dj6ZQIq+Fb4bfxiKFw8y0YYOJ7CWxys5DLs/oQGF0Wms=\",\"notifyUrl\":\"http://localhost/api/notify\",\"signType\":\"RSA\",\"body\":\"交易金额\",\"merchantName\":\"xgww213\"}',NULL,'2020-03-29 17:39:54'),(474,NULL,NULL,'error',NULL,'http://192.168.0.101/api/goPay','java.lang.NullPointerException',NULL,'2020-03-29 18:25:55'),(475,NULL,NULL,'error',NULL,'http://localhost/api/getRecord','java.lang.IllegalArgumentException: No enum constant com.bootdo.app.zwlenum.TradeTypeEnum.cash_deposit',NULL,'2020-03-30 08:41:31'),(476,1,'admin','登录',176,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-04-03 10:37:02'),(477,1,'admin','请求访问主页',50,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-print\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-sort-amount-asc\",\"url\":\"activiti/model\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"','127.0.0.1','2020-04-03 10:37:02'),(478,-1,'获取用户信息为空','登录',0,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-04-03 10:54:14'),(479,-1,'获取用户信息为空','登录',1,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-04-03 10:54:18'),(480,1,'admin','登录',19,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-04-03 10:54:23'),(481,1,'admin','请求访问主页',36,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-print\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-sort-amount-asc\",\"url\":\"activiti/model\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"','127.0.0.1','2020-04-03 10:54:23'),(482,1,'admin','登录',19,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-04-03 11:04:30'),(483,1,'admin','请求访问主页',53,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-print\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-sort-amount-asc\",\"url\":\"activiti/model\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"','127.0.0.1','2020-04-03 11:04:30'),(484,1,'admin','登录',17,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-04-03 21:31:43'),(485,1,'admin','请求访问主页',29,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"},{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-print\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-sort-amount-asc\",\"url\":\"activiti/model\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"','127.0.0.1','2020-04-03 21:31:43'),(486,1,'admin','登录',17,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-04-03 22:11:48'),(487,1,'admin','请求访问主页',30,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"},{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-print\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-sort-amount-asc\",\"url\":\"activiti/model\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"','127.0.0.1','2020-04-03 22:11:48'),(488,1,'admin','登录',19,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-04-04 14:23:41'),(489,1,'admin','请求访问主页',34,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"},{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-print\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-sort-amount-asc\",\"url\":\"activiti/model\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"','127.0.0.1','2020-04-04 14:23:41'),(490,NULL,NULL,'error',NULL,'http://localhost:6868/api/getRecord','org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.PersistenceException: \n### Error querying database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String',NULL,'2020-04-07 18:13:09'),(491,NULL,NULL,'error',NULL,'http://localhost:6868/api/getRecord','org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.PersistenceException: \n### Error querying database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String',NULL,'2020-04-07 18:13:19'),(492,NULL,NULL,'error',NULL,'http://localhost:6868/api/getRecord','org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.PersistenceException: \n### Error querying database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String',NULL,'2020-04-07 18:13:20'),(493,NULL,NULL,'error',NULL,'http://localhost:6868/api/login','org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'POST\' not supported',NULL,'2020-04-08 10:41:22'),(494,1,'admin','登录',39,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-05-02 23:09:25'),(495,1,'admin','请求访问主页',60,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"},{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-print\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-sort-amount-asc\",\"url\":\"activiti/model\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"','127.0.0.1','2020-05-02 23:09:25'),(496,1,'admin','登录',38,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-05-02 23:15:22'),(497,1,'admin','请求访问主页',48,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"},{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-print\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-sort-amount-asc\",\"url\":\"activiti/model\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"','127.0.0.1','2020-05-02 23:15:22'),(498,1,'admin','登录',262,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-05-02 23:21:18'),(499,1,'admin','请求访问主页',51,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"},{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-print\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-sort-amount-asc\",\"url\":\"activiti/model\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"','127.0.0.1','2020-05-02 23:21:18'),(500,1,'admin','登录',18,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-05-20 16:49:47'),(501,1,'admin','请求访问主页',32,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"},{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-print\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-sort-amount-asc\",\"url\":\"activiti/model\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"','127.0.0.1','2020-05-20 16:49:47'),(502,-1,'获取用户信息为空','登录',26,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-11-23 17:26:29'),(503,1,'admin','登录',16,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-11-23 17:26:33'),(504,1,'admin','请求访问主页',80,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"},{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-print\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-sort-amount-asc\",\"url\":\"activiti/model\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"','127.0.0.1','2020-11-23 17:26:33'),(505,1,'admin','登录',6,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-11-23 19:36:51'),(506,1,'admin','登录',3,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-11-23 19:37:00'),(507,1,'admin','请求访问主页',13,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"},{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-print\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-sort-amount-asc\",\"url\":\"activiti/model\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"','127.0.0.1','2020-11-23 19:37:00'),(508,1,'admin','登录',26,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-11-23 19:48:20'),(509,1,'admin','请求访问主页',77,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"},{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":\"fa fa-print\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-sort-amount-asc\",\"url\":\"activiti/model\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"','127.0.0.1','2020-11-23 19:48:21'),(510,1,'admin','添加菜单',1,'com.bootdo.system.controller.MenuController.add()',NULL,'127.0.0.1','2020-11-23 19:48:55'),(511,1,'admin','添加菜单',6,'com.bootdo.system.controller.MenuController.add()',NULL,'127.0.0.1','2020-11-23 19:49:08'),(512,1,'admin','保存菜单',7,'com.bootdo.system.controller.MenuController.save()',NULL,'127.0.0.1','2020-11-23 19:50:23'),(513,1,'admin','编辑角色',4,'com.bootdo.system.controller.RoleController.edit()',NULL,'127.0.0.1','2020-11-23 19:50:31'),(514,1,'admin','更新角色',34,'com.bootdo.system.controller.RoleController.update()',NULL,'127.0.0.1','2020-11-23 19:50:36'),(515,1,'admin','请求访问主页',10,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 19:50:40'),(516,1,'admin','请求访问主页',10,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 19:50:47'),(517,1,'admin','登录',5,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-11-23 19:51:00'),(518,1,'admin','请求访问主页',9,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 19:51:00'),(519,1,'admin','请求访问主页',11,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 19:54:37'),(520,1,'admin','请求访问主页',11,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 19:56:03'),(521,1,'admin','请求访问主页',7,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 19:56:10'),(522,1,'admin','登录',278,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-11-23 19:58:00'),(523,1,'admin','请求访问主页',73,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 19:58:00'),(524,1,'admin','请求访问主页',16,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 20:02:21'),(525,-1,'获取用户信息为空','登录',6,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-11-23 20:03:37'),(526,1,'admin','登录',120,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-11-23 20:03:42'),(527,1,'admin','请求访问主页',82,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 20:03:42'),(528,1,'admin','登录',232,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-11-23 20:17:39'),(529,1,'admin','请求访问主页',68,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 20:17:39'),(530,1,'admin','error',NULL,'http://localhost:6868/system/ustdLog/list','java.lang.IllegalArgumentException: No enum constant com.bootdo.app.zwlenum.USDTLogStatusEnum.pre_pay',NULL,'2020-11-23 20:17:44'),(531,1,'admin','登录',336,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-11-23 20:20:24'),(532,1,'admin','请求访问主页',95,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 20:20:24'),(533,1,'admin','登录',58,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-11-23 20:38:06'),(534,1,'admin','请求访问主页',47,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 20:38:06'),(535,1,'admin','请求访问主页',13,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 20:38:30'),(536,1,'admin','登录',250,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-11-23 20:57:23'),(537,1,'admin','请求访问主页',61,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 20:57:23'),(538,1,'admin','请求访问主页',15,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 20:59:12'),(539,1,'admin','登录',281,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-11-23 21:53:30'),(540,1,'admin','请求访问主页',74,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2020-11-23 21:53:30'),(541,NULL,NULL,'error',NULL,'http://localhost:6868/api/register','org.springframework.jdbc.BadSqlGrammarException: \n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'wallet_address\' in \'field list\'\n### The error may exist in file [/Users/dingbaosheng/Documents/bootdo/target/classes/mybatis/system/MemberMapper.xml]\n### The error may involve defaultParameterMap\n### The error occurred while setting parameters\n### SQL: select `id`,`nick_name`,`username`,`password`,`create_time`,`owner_invite_code`,`source_invite_code`,`total_amount`,`free_amount`,`lock_amount`,`profit_amount`,`transit_amount`,`level`,`commission_rate`,`bank_no`,`bank_name`,`card_no` ,`really_name`,`bank_address`,`bank_branch_name` ,`team_profit_amount`,`day_profit_amount`,`wallet_address` from zwl_member          WHERE  owner_invite_code = ?                            order by id desc\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'wallet_address\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'wallet_address\' in \'field list\'',NULL,'2020-11-24 15:47:26'),(542,NULL,NULL,'error',NULL,'http://localhost:6868/api/register','java.lang.RuntimeException: 手机号码格式错误',NULL,'2020-11-24 15:48:08'),(543,NULL,NULL,'error',NULL,'http://localhost:6868/api/openbank','org.springframework.dao.DataIntegrityViolationException: \n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'id\' cannot be null\n### The error may involve com.bootdo.system.dao.MemberBankDao.save-Inline\n### The error occurred while setting parameters\n### SQL: insert into zwl_member_bank   (    `id`,    `back_name`,    `branch_name`,    `card_no`,    `create_time`,    `status`,    `remark`,    `mid`,    `username`   )   values   (    ?,    ?,    ?,    ?,    ?,    ?,    ?,    ?,    ?   )\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'id\' cannot be null\n; ]; Column \'id\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'id\' cannot be null',NULL,'2020-11-24 16:22:32'),(544,NULL,NULL,'error',NULL,'http://localhost:6868/api/bankCard','org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'POST\' not supported',NULL,'2020-11-24 16:28:53'),(545,NULL,NULL,'error',NULL,'http://localhost:6868/api/goPay','org.springframework.data.redis.RedisSystemException: Error in execution; nested exception is io.lettuce.core.RedisCommandExecutionException: ERR value is not an integer or out of range',NULL,'2020-11-24 18:13:34'),(546,NULL,NULL,'error',NULL,'http://localhost:6868/api/goPay','org.springframework.data.redis.RedisSystemException: Error in execution; nested exception is io.lettuce.core.RedisCommandExecutionException: ERR value is not an integer or out of range',NULL,'2020-11-24 18:14:53'),(547,NULL,NULL,'error',NULL,'http://localhost:6868/api/goPay','org.springframework.data.redis.RedisSystemException: Error in execution; nested exception is io.lettuce.core.RedisCommandExecutionException: ERR value is not an integer or out of range',NULL,'2020-11-24 18:20:24'),(548,NULL,NULL,'error',NULL,'http://localhost:6868/api/goPay','org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'bankBranch\' in \'class com.bootdo.system.domain.UstdLogDO\'',NULL,'2020-11-24 19:23:45'),(549,NULL,NULL,'error',NULL,'http://localhost:6868/api/goPay','org.springframework.jdbc.BadSqlGrammarException: \n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'username\' in \'field list\'\n### The error may involve com.bootdo.system.dao.UstdLogDao.save-Inline\n### The error occurred while setting parameters\n### SQL: insert into zwl_ustd_log   (    `mid`,    `no`,    `amount`,    `status`,    `source`,    `target`,    `create_time`,    `cny_price`,    `total_amount`,    `profile_amount`,    `operator`,    `username`,    `bank_name`,    `bank_branch`,    `bank_no`,    `really_name`   )   values   (    ?,    ?,    ?,    ?,    ?,    ?,    ?,    ?,    ?,    ?,    ?,    ?,    ?,    ?,    ?,    ?   )\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'username\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'username\' in \'field list\'',NULL,'2020-11-24 19:33:46'),(550,NULL,NULL,'error',NULL,'http://localhost:6868/api/my','org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'POST\' not supported',NULL,'2020-11-24 19:56:05'),(551,-1,'获取用户信息为空','登录',29,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2021-03-13 16:54:05'),(552,1,'admin','登录',8,'com.bootdo.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2021-03-13 16:54:11'),(553,1,'admin','请求访问主页',41,'com.bootdo.system.controller.LoginController.index()','{\"menus\":[{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-book\",\"url\":\"/common/dict\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"78\",\"parentId\":\"1\",\"text\":\"数据字典\"},{\"attributes\":{\"icon\":\"fa fa-folder-open\",\"url\":\"/common/sysFile\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"71\",\"parentId\":\"1\",\"text\":\"文件管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"1\",\"parentId\":\"0\",\"text\":\"基础管理\"},{\"attributes\":{\"icon\":\"fa fa-desktop\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-barcode\",\"url\":\"/system/ustdLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"115\",\"parentId\":\"3\",\"text\":\"USDT交易\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/user/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"6\",\"parentId\":\"3\",\"text\":\"用户管理\"},{\"attributes\":{\"icon\":\"fa fa-paw\",\"url\":\"sys/role\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"7\",\"parentId\":\"3\",\"text\":\"角色管理\"},{\"attributes\":{\"icon\":\"fa fa-th-list\",\"url\":\"sys/menu/\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"2\",\"parentId\":\"3\",\"text\":\"系统菜单\"},{\"attributes\":{\"icon\":\"fa fa-users\",\"url\":\"/system/sysDept\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"73\",\"parentId\":\"3\",\"text\":\"部门管理\"},{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"/system/member\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"107\",\"parentId\":\"105\",\"text\":\"编辑\"}],\"hasChildren\":true,\"hasParent\":true,\"id\":\"105\",\"parentId\":\"3\",\"text\":\"会员管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"/system/payGateway\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"108\",\"parentId\":\"3\",\"text\":\"渠道管理\"},{\"attributes\":{\"icon\":\"fa fa-bar-chart-o\",\"url\":\"/system/tradeLog\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"111\",\"parentId\":\"3\",\"text\":\"交易记录\"},{\"attributes\":{\"icon\":\"fa fa-archive\",\"url\":\"/system/investMoney\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"112\",\"parentId\":\"3\",\"text\":\"充值管理\"},{\"attributes\":{\"icon\":\"fa fa-bars\",\"url\":\"/system/withdraw\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"113\",\"parentId\":\"3\",\"text\":\"提现管理\"},{\"attributes\":{\"icon\":\"fa fa-suitcase\",\"url\":\"/system/agreement\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"114\",\"parentId\":\"3\",\"text\":\"合约管理\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"3\",\"parentId\":\"0\",\"text\":\"系统管理\"},{\"attributes\":{\"icon\":\"fa fa-gear\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"\",\"url\":\"/swagger-ui.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"104\",\"parentId\":\"77\",\"text\":\"swagger\"},{\"attributes\":{\"icon\":\"fa fa-code\",\"url\":\"common/generator\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"48\",\"parentId\":\"77\",\"text\":\"代码生成\"},{\"attributes\":{\"icon\":\"fa fa-hourglass-1\",\"url\":\"common/job\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"72\",\"parentId\":\"77\",\"text\":\"计划任务\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"77\",\"parentId\":\"0\",\"text\":\"系统工具\"},{\"attributes\":{\"icon\":\"fa fa-video-camera\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-user\",\"url\":\"sys/online\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"92\",\"parentId\":\"91\",\"text\":\"在线用户\"},{\"attributes\":{\"icon\":\"fa fa-warning\",\"url\":\"common/log\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"27\",\"parentId\":\"91\",\"text\":\"系统日志\"},{\"attributes\":{\"icon\":\"fa fa-caret-square-o-right\",\"url\":\"/druid/index.html\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"57\",\"parentId\":\"91\",\"text\":\"运行监控\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"91\",\"parentId\":\"0\",\"text\":\"系统监控\"},{\"attributes\":{\"icon\":\"fa fa-laptop\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-envelope-square\",\"url\":\"oa/notify/selfNotify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"90\",\"parentId\":\"84\",\"text\":\"我的通知\"},{\"attributes\":{\"icon\":\"fa fa-pencil-square\",\"url\":\"oa/notify\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"85\",\"parentId\":\"84\",\"text\":\"通知公告\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"84\",\"parentId\":\"0\",\"text\":\"办公管理\"},{\"attributes\":{\"icon\":\"fa fa-rss\",\"url\":\"\"},\"checked\":false,\"children\":[{\"attributes\":{\"icon\":\"fa fa-edit\",\"url\":\"/blog/bContent/add\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"68\",\"parentId\":\"49\",\"text\":\"发布文章\"},{\"attributes\":{\"icon\":\"fa fa-file-image-o\",\"url\":\"blog/bContent\"},\"checked\":false,\"children\":[],\"hasChildren\":false,\"hasParent\":true,\"id\":\"50\",\"parentId\":\"49\",\"text\":\"文章列表\"}],\"hasChildren\":true,\"hasParent\":false,\"id\":\"49\",\"parentId\":\"0\",\"text\":\"博客管理\"},{\"attributes\":{\"icon\":','127.0.0.1','2021-03-13 16:54:11'),(554,NULL,NULL,'error',NULL,'http://localhost:6868/api/addTask','org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'GET\' not supported',NULL,'2021-03-13 07:48:26'),(555,NULL,NULL,'error',NULL,'http://localhost:6868/api/addTask','java.lang.NullPointerException',NULL,'2021-03-13 08:40:34'),(556,NULL,NULL,'error',NULL,'http://localhost:6868/api/unBindHuobiAccount','java.lang.RuntimeException: 手机号码格式错误',NULL,'2021-03-21 00:43:22'),(557,NULL,NULL,'error',NULL,'http://localhost:6868/api/closeTask','org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'GET\' not supported',NULL,'2021-03-21 08:48:13'),(558,NULL,NULL,'error',NULL,'http://localhost:6868/api/addTask','java.lang.ClassCastException: java.lang.Integer cannot be cast to java.lang.String',NULL,'2021-04-03 01:26:39');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COMMENT='菜单管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,0,'基础管理','','',0,'fa fa-bars',0,'2017-08-09 22:49:47',NULL),(2,3,'系统菜单','sys/menu/','sys:menu:menu',1,'fa fa-th-list',2,'2017-08-09 22:55:15',NULL),(3,0,'系统管理',NULL,NULL,0,'fa fa-desktop',1,'2017-08-09 23:06:55','2017-08-14 14:13:43'),(6,3,'用户管理','sys/user/','sys:user:user',1,'fa fa-user',0,'2017-08-10 14:12:11',NULL),(7,3,'角色管理','sys/role','sys:role:role',1,'fa fa-paw',1,'2017-08-10 14:13:19',NULL),(12,6,'新增','','sys:user:add',2,'',0,'2017-08-14 10:51:35',NULL),(13,6,'编辑','','sys:user:edit',2,'',0,'2017-08-14 10:52:06',NULL),(14,6,'删除',NULL,'sys:user:remove',2,NULL,0,'2017-08-14 10:52:24',NULL),(15,7,'新增','','sys:role:add',2,'',0,'2017-08-14 10:56:37',NULL),(20,2,'新增','','sys:menu:add',2,'',0,'2017-08-14 10:59:32',NULL),(21,2,'编辑','','sys:menu:edit',2,'',0,'2017-08-14 10:59:56',NULL),(22,2,'删除','','sys:menu:remove',2,'',0,'2017-08-14 11:00:26',NULL),(24,6,'批量删除','','sys:user:batchRemove',2,'',0,'2017-08-14 17:27:18',NULL),(25,6,'停用',NULL,'sys:user:disable',2,NULL,0,'2017-08-14 17:27:43',NULL),(26,6,'重置密码','','sys:user:resetPwd',2,'',0,'2017-08-14 17:28:34',NULL),(27,91,'系统日志','common/log','common:log',1,'fa fa-warning',0,'2017-08-14 22:11:53',NULL),(28,27,'刷新',NULL,'sys:log:list',2,NULL,0,'2017-08-14 22:30:22',NULL),(29,27,'删除',NULL,'sys:log:remove',2,NULL,0,'2017-08-14 22:30:43',NULL),(30,27,'清空',NULL,'sys:log:clear',2,NULL,0,'2017-08-14 22:31:02',NULL),(48,77,'代码生成','common/generator','common:generator',1,'fa fa-code',3,NULL,NULL),(49,0,'博客管理','','',0,'fa fa-rss',6,NULL,NULL),(50,49,'文章列表','blog/bContent','blog:bContent:bContent',1,'fa fa-file-image-o',1,NULL,NULL),(51,50,'新增','','blog:bContent:add',2,'',NULL,NULL,NULL),(55,7,'编辑','','sys:role:edit',2,'',NULL,NULL,NULL),(56,7,'删除','','sys:role:remove',2,NULL,NULL,NULL,NULL),(57,91,'运行监控','/druid/index.html','',1,'fa fa-caret-square-o-right',1,NULL,NULL),(58,50,'编辑','','blog:bContent:edit',2,NULL,NULL,NULL,NULL),(59,50,'删除','','blog:bContent:remove',2,NULL,NULL,NULL,NULL),(60,50,'批量删除','','blog:bContent:batchRemove',2,NULL,NULL,NULL,NULL),(61,2,'批量删除','','sys:menu:batchRemove',2,NULL,NULL,NULL,NULL),(62,7,'批量删除','','sys:role:batchRemove',2,NULL,NULL,NULL,NULL),(68,49,'发布文章','/blog/bContent/add','blog:bContent:add',1,'fa fa-edit',0,NULL,NULL),(71,1,'文件管理','/common/sysFile','common:sysFile:sysFile',1,'fa fa-folder-open',2,NULL,NULL),(72,77,'计划任务','common/job','common:taskScheduleJob',1,'fa fa-hourglass-1',4,NULL,NULL),(73,3,'部门管理','/system/sysDept','system:sysDept:sysDept',1,'fa fa-users',3,NULL,NULL),(74,73,'增加','/system/sysDept/add','system:sysDept:add',2,NULL,1,NULL,NULL),(75,73,'刪除','system/sysDept/remove','system:sysDept:remove',2,NULL,2,NULL,NULL),(76,73,'编辑','/system/sysDept/edit','system:sysDept:edit',2,NULL,3,NULL,NULL),(77,0,'系统工具','','',0,'fa fa-gear',4,NULL,NULL),(78,1,'数据字典','/common/dict','common:dict:dict',1,'fa fa-book',1,NULL,NULL),(79,78,'增加','/common/dict/add','common:dict:add',2,NULL,2,NULL,NULL),(80,78,'编辑','/common/dict/edit','common:dict:edit',2,NULL,2,NULL,NULL),(81,78,'删除','/common/dict/remove','common:dict:remove',2,'',3,NULL,NULL),(83,78,'批量删除','/common/dict/batchRemove','common:dict:batchRemove',2,'',4,NULL,NULL),(84,0,'办公管理','','',0,'fa fa-laptop',5,NULL,NULL),(85,84,'通知公告','oa/notify','oa:notify:notify',1,'fa fa-pencil-square',NULL,NULL,NULL),(86,85,'新增','oa/notify/add','oa:notify:add',2,'fa fa-plus',1,NULL,NULL),(87,85,'编辑','oa/notify/edit','oa:notify:edit',2,'fa fa-pencil-square-o',2,NULL,NULL),(88,85,'删除','oa/notify/remove','oa:notify:remove',2,'fa fa-minus',NULL,NULL,NULL),(89,85,'批量删除','oa/notify/batchRemove','oa:notify:batchRemove',2,'',NULL,NULL,NULL),(90,84,'我的通知','oa/notify/selfNotify','',1,'fa fa-envelope-square',NULL,NULL,NULL),(91,0,'系统监控','','',0,'fa fa-video-camera',5,NULL,NULL),(92,91,'在线用户','sys/online','',1,'fa fa-user',NULL,NULL,NULL),(93,0,'工作流程','','',0,'fa fa-print',6,NULL,NULL),(94,93,'模型管理','activiti/model','',1,'fa fa-sort-amount-asc',NULL,NULL,NULL),(95,94,'全部权限','','activiti:model',2,'',NULL,NULL,NULL),(96,93,'流程管理','activiti/process','',1,'fa fa-flag',NULL,NULL,NULL),(97,0,'图表管理','','',0,'fa fa-bar-chart',7,NULL,NULL),(98,97,'百度chart','/chart/graph_echarts.html','',1,'fa fa-area-chart',NULL,NULL,NULL),(99,96,'所有权限','','act:process',2,'',NULL,NULL,NULL),(101,93,'待办任务','activiti/task/todo','',1,'',NULL,NULL,NULL),(104,77,'swagger','/swagger-ui.html','',1,'',NULL,NULL,NULL),(105,3,'会员管理','/system/member','system:member:member',1,'fa fa-user',5,NULL,NULL),(106,105,'新增','','system:member:add',2,'fa fa-add',1,NULL,NULL),(107,105,'编辑','','system:member:edit',1,'fa fa-edit',2,NULL,NULL),(108,3,'渠道管理','/system/payGateway','system:payGateway:payGateway',1,'fa fa-gear',6,NULL,NULL),(109,108,'新增','/system/payGateway/add','system:payGateway:add',2,'fa fa-add',1,NULL,NULL),(110,108,'编辑','/system/payGateway/edit','/system:payGateway:add	',2,'fa fa-edit',2,NULL,NULL),(111,3,'交易记录','/system/tradeLog','',1,'fa fa-bar-chart-o',110,NULL,NULL),(112,3,'充值管理','/system/investMoney','',1,'fa fa-archive',112,NULL,NULL),(113,3,'提现管理','/system/withdraw','',1,'fa fa-bars',114,NULL,NULL),(114,3,'合约管理','/system/agreement','',1,'fa fa-suitcase',115,NULL,NULL),(115,3,'USDT交易','/system/ustdLog','',1,'fa fa-barcode',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `role_sign` varchar(100) DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级用户角色','admin','拥有最高权限',2,'2017-08-12 00:43:52','2017-08-12 19:14:59'),(59,'普通用户',NULL,'基本用户权限',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3638 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (367,44,1),(368,44,32),(369,44,33),(370,44,34),(371,44,35),(372,44,28),(373,44,29),(374,44,30),(375,44,38),(376,44,4),(377,44,27),(378,45,38),(379,46,3),(380,46,20),(381,46,21),(382,46,22),(383,46,23),(384,46,11),(385,46,12),(386,46,13),(387,46,14),(388,46,24),(389,46,25),(390,46,26),(391,46,15),(392,46,2),(393,46,6),(394,46,7),(598,50,38),(632,38,42),(737,51,38),(738,51,39),(739,51,40),(740,51,41),(741,51,4),(742,51,32),(743,51,33),(744,51,34),(745,51,35),(746,51,27),(747,51,28),(748,51,29),(749,51,30),(750,51,1),(1064,54,53),(1095,55,2),(1096,55,6),(1097,55,7),(1098,55,3),(1099,55,50),(1100,55,49),(1101,55,1),(1856,53,28),(1857,53,29),(1858,53,30),(1859,53,27),(1860,53,57),(1861,53,71),(1862,53,48),(1863,53,72),(1864,53,1),(1865,53,7),(1866,53,55),(1867,53,56),(1868,53,62),(1869,53,15),(1870,53,2),(1871,53,61),(1872,53,20),(1873,53,21),(1874,53,22),(2084,56,68),(2085,56,60),(2086,56,59),(2087,56,58),(2088,56,51),(2089,56,50),(2090,56,49),(2243,48,72),(2247,63,-1),(2248,63,84),(2249,63,85),(2250,63,88),(2251,63,87),(2252,64,84),(2253,64,89),(2254,64,88),(2255,64,87),(2256,64,86),(2257,64,85),(2258,65,89),(2259,65,88),(2260,65,86),(2262,67,48),(2263,68,88),(2264,68,87),(2265,69,89),(2266,69,88),(2267,69,86),(2268,69,87),(2269,69,85),(2270,69,84),(2271,70,85),(2272,70,89),(2273,70,88),(2274,70,87),(2275,70,86),(2276,70,84),(2277,71,87),(2278,72,59),(2279,73,48),(2280,74,88),(2281,74,87),(2282,75,88),(2283,75,87),(2284,76,85),(2285,76,89),(2286,76,88),(2287,76,87),(2288,76,86),(2289,76,84),(2292,78,88),(2293,78,87),(2294,78,NULL),(2295,78,NULL),(2296,78,NULL),(2308,80,87),(2309,80,86),(2310,80,-1),(2311,80,84),(2312,80,85),(2328,79,72),(2329,79,48),(2330,79,77),(2331,79,84),(2332,79,89),(2333,79,88),(2334,79,87),(2335,79,86),(2336,79,85),(2337,79,-1),(2338,77,89),(2339,77,88),(2340,77,87),(2341,77,86),(2342,77,85),(2343,77,84),(2344,77,72),(2345,77,-1),(2346,77,77),(2974,57,93),(2975,57,99),(2976,57,95),(2977,57,101),(2978,57,96),(2979,57,94),(2980,57,-1),(2981,58,93),(2982,58,99),(2983,58,95),(2984,58,101),(2985,58,96),(2986,58,94),(2987,58,-1),(3232,59,98),(3233,59,101),(3234,59,99),(3235,59,95),(3236,59,90),(3237,59,89),(3238,59,88),(3239,59,87),(3240,59,86),(3241,59,68),(3242,59,60),(3243,59,59),(3244,59,58),(3245,59,51),(3246,59,76),(3247,59,75),(3248,59,74),(3249,59,62),(3250,59,56),(3251,59,55),(3252,59,15),(3253,59,26),(3254,59,25),(3255,59,24),(3256,59,14),(3257,59,13),(3258,59,12),(3259,59,61),(3260,59,22),(3261,59,21),(3262,59,20),(3263,59,83),(3264,59,81),(3265,59,80),(3266,59,79),(3267,59,71),(3268,59,97),(3269,59,96),(3270,59,94),(3271,59,93),(3272,59,85),(3273,59,84),(3274,59,50),(3275,59,49),(3276,59,73),(3277,59,7),(3278,59,6),(3279,59,2),(3280,59,3),(3281,59,78),(3282,59,1),(3283,59,-1),(3564,1,98),(3565,1,101),(3566,1,99),(3567,1,95),(3568,1,92),(3569,1,57),(3570,1,30),(3571,1,29),(3572,1,28),(3573,1,90),(3574,1,89),(3575,1,88),(3576,1,87),(3577,1,86),(3578,1,104),(3579,1,72),(3580,1,48),(3581,1,68),(3582,1,60),(3583,1,59),(3584,1,58),(3585,1,51),(3586,1,114),(3587,1,113),(3588,1,112),(3589,1,111),(3590,1,110),(3591,1,109),(3592,1,107),(3593,1,106),(3594,1,76),(3595,1,75),(3596,1,74),(3597,1,62),(3598,1,56),(3599,1,55),(3600,1,15),(3601,1,26),(3602,1,25),(3603,1,24),(3604,1,14),(3605,1,13),(3606,1,12),(3607,1,61),(3608,1,22),(3609,1,21),(3610,1,20),(3611,1,83),(3612,1,81),(3613,1,80),(3614,1,79),(3615,1,71),(3616,1,97),(3617,1,96),(3618,1,94),(3619,1,93),(3620,1,27),(3621,1,91),(3622,1,85),(3623,1,84),(3624,1,77),(3625,1,50),(3626,1,49),(3627,1,108),(3628,1,105),(3629,1,73),(3630,1,7),(3631,1,6),(3632,1,2),(3633,1,78),(3634,1,1),(3635,1,115),(3636,1,3),(3637,1,-1);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_task`
--

DROP TABLE IF EXISTS `sys_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron表达式',
  `method_name` varchar(255) DEFAULT NULL COMMENT '任务调用的方法名',
  `is_concurrent` varchar(255) DEFAULT NULL COMMENT '任务是否有状态',
  `description` varchar(255) DEFAULT NULL COMMENT '任务描述',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `bean_class` varchar(255) DEFAULT NULL COMMENT '任务执行时调用哪个类的方法 包名+类名',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `job_status` varchar(255) DEFAULT NULL COMMENT '任务状态',
  `job_group` varchar(255) DEFAULT NULL COMMENT '任务分组',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `spring_bean` varchar(255) DEFAULT NULL COMMENT 'Spring bean',
  `job_name` varchar(255) DEFAULT NULL COMMENT '任务名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35570 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_task`
--

LOCK TABLES `sys_task` WRITE;
/*!40000 ALTER TABLE `sys_task` DISABLE KEYS */;
INSERT INTO `sys_task` VALUES (35563,'* 5 13 30 5 ? 2019',NULL,NULL,'{agreementId=5055, mid=55796, tid=128094}',NULL,'','2019-05-23 13:05:26','start','agreement',NULL,NULL,NULL,'agreement_1558587926444'),(35564,'15914',NULL,NULL,'{mid=55796, tid=128095}',NULL,'','2019-05-23 15:30:00','start','purchase',NULL,NULL,NULL,'purchase_back1558596599999'),(35565,'* 7 21 20 6 ? 2019',NULL,NULL,'{agreementId=5059, mid=55797, tid=128151}',NULL,'','2019-06-13 21:07:23','start','agreement',NULL,NULL,NULL,'agreement_1560431242968'),(35566,'* 7 21 20 6 ? 2019',NULL,NULL,'{agreementId=5057, mid=55797, tid=128148}',NULL,'','2019-06-13 21:07:23','start','agreement',NULL,NULL,NULL,'agreement_1560431242967'),(35567,'* 7 21 20 6 ? 2019',NULL,NULL,'{agreementId=5056, mid=55797, tid=128149}',NULL,'','2019-06-13 21:07:23','start','agreement',NULL,NULL,NULL,'agreement_1560431242967'),(35568,'* 7 21 20 6 ? 2019',NULL,NULL,'{agreementId=5058, mid=55797, tid=128150}',NULL,'','2019-06-13 21:07:23','start','agreement',NULL,NULL,NULL,'agreement_1560431242967'),(35569,'* 48 15 25 8 ? 2019',NULL,NULL,'{agreementId=5060, mid=55797, tid=128155}',NULL,'','2019-08-18 15:49:00','start','agreement',NULL,NULL,NULL,'agreement_1566114539894');
/*!40000 ALTER TABLE `sys_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `dept_id` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(255) DEFAULT NULL COMMENT '状态 0:禁用，1:正常',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `sex` bigint(32) DEFAULT NULL COMMENT '性别',
  `birth` datetime DEFAULT NULL COMMENT '出身日期',
  `pic_id` bigint(32) DEFAULT NULL,
  `live_address` varchar(500) DEFAULT NULL COMMENT '现居住地',
  `hobby` varchar(255) DEFAULT NULL COMMENT '爱好',
  `province` varchar(255) DEFAULT NULL COMMENT '省份',
  `city` varchar(255) DEFAULT NULL COMMENT '所在城市',
  `district` varchar(255) DEFAULT NULL COMMENT '所在地区',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','超级管理员','d0af8fa1272ef5a152d9e27763eea293',6,'admin@example.com','17699999999',1,1,'2017-08-15 21:40:39','2017-08-15 21:41:00',96,'2017-12-14 00:00:00',138,'ccc','122;121;','北京市','北京市市辖区','东城区'),(2,'test','临时用户','6cf3bb3deba2aadbd41ec9a22511084e',6,'test@bootdo.com',NULL,1,1,'2017-08-14 13:43:05','2017-08-14 21:15:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'ldh','刘德华','bfd9394475754fbe45866eba97738c36',7,'ldh@bootdo.com',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(123,'zxy','张学友','35174ba93f5fe7267f1fb3c1bf903781',6,'zxy@bootdo',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(124,'wyf','吴亦凡','e179e6f687bbd57b9d7efc4746c8090a',6,'wyf@bootdo.com',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(130,'lh','鹿晗','7924710cd673f68967cde70e188bb097',9,'lh@bootdo.com',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(131,'lhc','令狐冲','d515538e17ecb570ba40344b5618f5d4',6,'lhc@bootdo.com',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(132,'lyf','刘亦菲','7fdb1d9008f45950c1620ba0864e5fbd',13,'lyf@bootdo.com',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(134,'lyh','李彦宏','dc26092b3244d9d432863f2738180e19',8,'lyh@bootdo.com',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(135,'wjl','王健林','3967697dfced162cf6a34080259b83aa',6,'wjl@bootod.com',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(136,'gdg','郭德纲','3bb1bda86bc02bf6478cd91e42135d2f',9,'gdg@bootdo.com',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_plus`
--

DROP TABLE IF EXISTS `sys_user_plus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_plus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `payment` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_plus`
--

LOCK TABLES `sys_user_plus` WRITE;
/*!40000 ALTER TABLE `sys_user_plus` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_plus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (73,30,48),(74,30,49),(75,30,50),(76,31,48),(77,31,49),(78,31,52),(79,32,48),(80,32,49),(81,32,50),(82,32,51),(83,32,52),(84,33,38),(85,33,49),(86,33,52),(87,34,50),(88,34,51),(89,34,52),(106,124,1),(110,1,1),(111,2,1),(113,131,48),(117,135,1),(120,134,1),(121,134,48),(123,130,1),(124,NULL,48),(125,132,52),(126,132,49),(127,123,48),(132,36,48);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zwl_agreement`
--

DROP TABLE IF EXISTS `zwl_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zwl_agreement` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mid` int(11) DEFAULT NULL COMMENT '会员id',
  `type` varchar(32) DEFAULT NULL COMMENT '类型',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `percent` varchar(32) DEFAULT NULL COMMENT '佣金比例',
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `status` varchar(32) DEFAULT NULL COMMENT '合约状态',
  `amount` varchar(64) DEFAULT NULL COMMENT '合约的金额',
  `free_amount` varchar(64) DEFAULT NULL COMMENT '冻结的金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10357 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zwl_agreement`
--

LOCK TABLES `zwl_agreement` WRITE;
/*!40000 ALTER TABLE `zwl_agreement` DISABLE KEYS */;
INSERT INTO `zwl_agreement` VALUES (10339,66049,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','185652535109','disable','7500000','2500000'),(10340,66048,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','185651482179','disable','7500000','2500000'),(10341,66047,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','185652835254','disable','7500000','2500000'),(10342,66046,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','185651873385','disable','7500000','2500000'),(10343,66045,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','185652457041','disable','7500000','2500000'),(10344,66044,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','185651463576','disable','7500000','2500000'),(10345,66043,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','185652622416','disable','7500000','2500000'),(10346,66042,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','185651595786','disable','7500000','2500000'),(10347,66041,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','15162603930','disable','7500000','2500000'),(10348,66040,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','15161424661','disable','7500000','2500000'),(10349,66039,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','15162431150','disable','7500000','2500000'),(10350,66038,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','15161137284','disable','7500000','2500000'),(10351,66037,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','13162769370','disable','7500000','2500000'),(10352,66036,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','13162900695','disable','7500000','2500000'),(10353,66035,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','13162016582','disable','7500000','2500000'),(10354,66034,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','13162074134','disable','7500000','2500000'),(10355,66033,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','13162727753','disable','7500000','2500000'),(10356,66032,'month','2020-03-08 20:30:24','2020-05-09 22:13:04','0.25','13162789927','disable','7500000','2500000');
/*!40000 ALTER TABLE `zwl_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zwl_coin_task_info`
--

DROP TABLE IF EXISTS `zwl_coin_task_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zwl_coin_task_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `mid` int(11) DEFAULT NULL COMMENT '会员id',
  `total_amount` varchar(16) DEFAULT '0.0' COMMENT '持仓总额',
  `total_position` varchar(16) DEFAULT '0.0' COMMENT '持仓量',
  `current_order_num` int(11) DEFAULT '0',
  `avg_price` varchar(16) DEFAULT '0' COMMENT '持仓均价',
  `current_price` varchar(16) DEFAULT '0' COMMENT '当前价格',
  `total_profit` varchar(16) DEFAULT '0' COMMENT '总收益',
  `profit_loss_ratio` varchar(16) DEFAULT '0' COMMENT '盈亏幅度',
  `current_profit_loss_amount` varchar(16) DEFAULT '0' COMMENT '当前盈亏',
  `deal_num` int(11) DEFAULT '0' COMMENT '交易次数',
  `first_amount` varchar(16) DEFAULT NULL COMMENT '首单额度',
  `plan_order_num` int(11) DEFAULT NULL COMMENT '计划做单数',
  `cover_ratio` varchar(6) DEFAULT NULL COMMENT '补仓比例',
  `cover_reset_ratio` varchar(6) DEFAULT NULL COMMENT '补仓复位',
  `cover_add_ratio` varchar(6) DEFAULT NULL COMMENT '补仓增幅',
  `cover_callback_ratio` varchar(6) DEFAULT NULL COMMENT '补仓回调比例',
  `profit_ratio` varchar(6) DEFAULT NULL COMMENT '止盈比例',
  `profit_callback_ratio` varchar(6) DEFAULT NULL COMMENT '止盈比例回调',
  `create_time` mediumtext COMMENT '创建时间',
  `modify_time` mediumtext COMMENT '最后更新时间',
  `status` varchar(32) DEFAULT NULL COMMENT '状态',
  `deleted` smallint(6) DEFAULT NULL COMMENT '是否删除',
  `symbol` varchar(12) DEFAULT NULL COMMENT '买的币种',
  `type` varchar(45) DEFAULT 'square_market' COMMENT '类型 bi多元，bi乘方限，bi乘方市',
  `first_price` varchar(16) DEFAULT NULL COMMENT '首单价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zwl_coin_task_info`
--

LOCK TABLES `zwl_coin_task_info` WRITE;
/*!40000 ALTER TABLE `zwl_coin_task_info` DISABLE KEYS */;
INSERT INTO `zwl_coin_task_info` VALUES (25,66051,'0.00','0.00',0,NULL,'100.00','0.00','0.00','0.00',0,'100',5,'5','5','5','1','3','1','1617453424472','0','pause_by',0,'ethabc','square_market',NULL);
/*!40000 ALTER TABLE `zwl_coin_task_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zwl_invest_money`
--

DROP TABLE IF EXISTS `zwl_invest_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zwl_invest_money` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mid` int(11) DEFAULT NULL COMMENT '会员id',
  `status` varchar(32) CHARACTER SET utf8mb4 NOT NULL COMMENT '状态',
  `amount` varchar(64) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '额度',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `finished_time` datetime DEFAULT NULL COMMENT '完成时间',
  `trade_id` int(11) DEFAULT NULL COMMENT '流水记录id',
  `remark` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注',
  `mobile` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zwl_invest_money`
--

LOCK TABLES `zwl_invest_money` WRITE;
/*!40000 ALTER TABLE `zwl_invest_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `zwl_invest_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zwl_member`
--

DROP TABLE IF EXISTS `zwl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zwl_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(64) CHARACTER SET latin1 DEFAULT NULL COMMENT '昵称',
  `username` varchar(32) CHARACTER SET latin1 DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET latin1 DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `owner_invite_code` varchar(32) CHARACTER SET latin1 DEFAULT NULL COMMENT '邀请码',
  `source_invite_code` varchar(32) CHARACTER SET latin1 DEFAULT NULL COMMENT '推荐人邀请码',
  `total_amount` varchar(64) CHARACTER SET latin1 DEFAULT '0' COMMENT '总额',
  `free_amount` varchar(64) CHARACTER SET latin1 DEFAULT '0' COMMENT '可用余额',
  `lock_amount` varchar(64) CHARACTER SET latin1 DEFAULT '0' COMMENT '冻结额度',
  `profit_amount` varchar(64) CHARACTER SET latin1 DEFAULT '0' COMMENT '总盈利',
  `transit_amount` varchar(64) CHARACTER SET latin1 DEFAULT '0' COMMENT '在途资金',
  `level` smallint(4) DEFAULT '1' COMMENT '会员等级',
  `commission_rate` int(11) DEFAULT NULL COMMENT '佣金比例',
  `bank_no` varchar(64) CHARACTER SET latin1 DEFAULT NULL COMMENT '银行卡号',
  `bank_name` varchar(64) DEFAULT NULL COMMENT '银行名称',
  `card_no` varchar(64) CHARACTER SET latin1 DEFAULT NULL COMMENT '身份证',
  `really_name` varchar(64) DEFAULT NULL COMMENT '这是姓名',
  `bank_branch_name` varchar(64) DEFAULT NULL COMMENT '支行名称',
  `bank_address` varchar(255) DEFAULT NULL COMMENT '银行地址',
  `team_profit_amount` varchar(32) DEFAULT '0' COMMENT '团队收益',
  `day_profit_amount` varchar(32) DEFAULT '0' COMMENT '当日收益',
  `wallet_address` varchar(255) DEFAULT NULL COMMENT '钱包地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=66052 DEFAULT CHARSET=utf8 COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zwl_member`
--

LOCK TABLES `zwl_member` WRITE;
/*!40000 ALTER TABLE `zwl_member` DISABLE KEYS */;
INSERT INTO `zwl_member` VALUES (66032,NULL,'13162789927','123456','2020-03-08 22:13:04','92CDW8W',NULL,'31375000','31375000','0','21375000','0',1,NULL,'123748238748374','招商银行','411304190871635564','王刚','南京支行','南京市','0.00','0.00',NULL),(66051,NULL,'dingbs','123456','2020-11-24 16:13:47','kbogdl','92CDW8W','0','0','0','0','0',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.00','0.00','1232323123234234234324');
/*!40000 ALTER TABLE `zwl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zwl_member_bank`
--

DROP TABLE IF EXISTS `zwl_member_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zwl_member_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `back_name` varchar(64) DEFAULT NULL COMMENT '银行名称',
  `branch_name` varchar(64) DEFAULT NULL COMMENT '支行名称',
  `card_no` varchar(64) DEFAULT NULL COMMENT '银行卡号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` smallint(4) DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `mid` int(11) DEFAULT NULL COMMENT '会员id',
  `username` varchar(64) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zwl_member_bank`
--

LOCK TABLES `zwl_member_bank` WRITE;
/*!40000 ALTER TABLE `zwl_member_bank` DISABLE KEYS */;
INSERT INTO `zwl_member_bank` VALUES (2,'招商银行','首体支行','622577013452564','2020-11-24 16:24:20',1,NULL,66051,'王刚'),(3,'招商1','首体支行','622577013452532','2020-11-24 20:05:56',0,NULL,66051,'王刚');
/*!40000 ALTER TABLE `zwl_member_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zwl_member_level`
--

DROP TABLE IF EXISTS `zwl_member_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zwl_member_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mid` int(11) DEFAULT NULL COMMENT '会员id',
  `parent_mid` int(11) DEFAULT NULL COMMENT '父会员id',
  `grand_mid` int(11) DEFAULT NULL COMMENT '祖父id',
  `great_mid` int(11) DEFAULT '0' COMMENT '曾祖父id',
  `status` varchar(32) DEFAULT 'disable' COMMENT '是否有效投资',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `type` varchar(32) DEFAULT 'A' COMMENT '代理级别',
  `level1` int(11) DEFAULT '0' COMMENT '直接会员数',
  `level2` int(11) DEFAULT '0' COMMENT '间接会员数',
  `level3` int(11) DEFAULT '0' COMMENT '三级会员个数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=66021 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zwl_member_level`
--

LOCK TABLES `zwl_member_level` WRITE;
/*!40000 ALTER TABLE `zwl_member_level` DISABLE KEYS */;
INSERT INTO `zwl_member_level` VALUES (66001,66032,NULL,NULL,NULL,'enable',NULL,'A',5,4,8),(66002,66033,66032,NULL,NULL,'enable',NULL,'A',2,4,0),(66003,66034,66032,NULL,NULL,'enable',NULL,'A',2,4,0),(66004,66035,66032,NULL,NULL,'enable',NULL,'A',0,0,0),(66005,66036,66032,NULL,NULL,'enable',NULL,'A',0,0,0),(66006,66037,66032,NULL,NULL,'enable',NULL,'A',0,0,0),(66007,66038,66033,66032,NULL,'enable',NULL,'A',2,0,0),(66008,66039,66033,66032,NULL,'enable',NULL,'A',2,0,0),(66009,66040,66034,66032,NULL,'enable',NULL,'A',2,0,0),(66010,66041,66034,66032,NULL,'enable',NULL,'A',2,0,0),(66011,66042,66038,66033,66032,'enable',NULL,'A',0,0,0),(66012,66043,66038,66033,66032,'enable',NULL,'A',0,0,0),(66013,66044,66039,66033,66032,'enable',NULL,'A',0,0,0),(66014,66045,66039,66033,66032,'enable',NULL,'A',0,0,0),(66015,66046,66040,66034,66032,'enable',NULL,'A',0,0,0),(66016,66047,66040,66034,66032,'enable',NULL,'A',0,0,0),(66017,66048,66041,66034,66032,'enable',NULL,'A',0,0,0),(66018,66049,66041,66034,66032,'enable',NULL,'A',0,0,0),(66019,66050,66033,66032,NULL,'disable',NULL,'A',0,0,0),(66020,66051,66032,NULL,NULL,'disable',NULL,'A',0,0,0);
/*!40000 ALTER TABLE `zwl_member_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zwl_pay_gateway`
--

DROP TABLE IF EXISTS `zwl_pay_gateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zwl_pay_gateway` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) DEFAULT NULL COMMENT '支付名称',
  `mch_id` varchar(64) DEFAULT NULL COMMENT '商户名称',
  `key` varchar(64) DEFAULT NULL COMMENT '秘钥',
  `type` varchar(32) DEFAULT NULL COMMENT '支付类型',
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  `notify` varchar(255) DEFAULT NULL COMMENT '回调url',
  `result` varchar(255) DEFAULT NULL COMMENT '结果',
  `status` varchar(32) DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `description` varchar(255) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zwl_pay_gateway`
--

LOCK TABLES `zwl_pay_gateway` WRITE;
/*!40000 ALTER TABLE `zwl_pay_gateway` DISABLE KEYS */;
/*!40000 ALTER TABLE `zwl_pay_gateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zwl_trade_log`
--

DROP TABLE IF EXISTS `zwl_trade_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zwl_trade_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `trade_no` varchar(32) DEFAULT NULL COMMENT '流水单号',
  `amount` varchar(32) DEFAULT '0' COMMENT '交易额度',
  `m_free_total` varchar(64) DEFAULT '0' COMMENT '可用余额',
  `fact_amount` varchar(32) DEFAULT '0' COMMENT '真实到账',
  `type` varchar(32) DEFAULT NULL COMMENT '交易类型',
  `create_time` datetime DEFAULT NULL COMMENT '交易时间',
  `finished_time` datetime DEFAULT NULL COMMENT '完成时间',
  `trade_out_no` varchar(32) DEFAULT NULL COMMENT '外部的交易单号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `mid` int(11) DEFAULT NULL COMMENT '会员id',
  `status` varchar(32) DEFAULT NULL COMMENT '状态',
  `mobile` varchar(32) DEFAULT NULL COMMENT '当前用户手机号',
  `agree_id` int(11) DEFAULT NULL COMMENT '合同id',
  `task_id` int(11) DEFAULT NULL COMMENT '任务的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zwl_trade_log`
--

LOCK TABLES `zwl_trade_log` WRITE;
/*!40000 ALTER TABLE `zwl_trade_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zwl_trade_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zwl_ustd_log`
--

DROP TABLE IF EXISTS `zwl_ustd_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zwl_ustd_log` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mid` bigint(11) DEFAULT NULL COMMENT '会员id',
  `no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `amount` varchar(255) DEFAULT NULL COMMENT 'u币个数',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `source` varchar(255) DEFAULT NULL COMMENT '来源地址',
  `target` varchar(255) DEFAULT NULL COMMENT '目标地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `finished_time` datetime DEFAULT NULL COMMENT '完成时间',
  `cny_price` varchar(32) DEFAULT NULL COMMENT '指导价格',
  `total_amount` varchar(255) DEFAULT NULL COMMENT '总u币数',
  `profile_amount` varchar(255) DEFAULT NULL COMMENT '奖励金额',
  `back_total_amount` varchar(255) DEFAULT NULL COMMENT '返现的总利润',
  `operator` varchar(32) DEFAULT NULL COMMENT '操作者',
  `username` varchar(255) DEFAULT NULL COMMENT '会员名称',
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_branch` varchar(255) DEFAULT NULL,
  `bank_no` varchar(64) DEFAULT NULL,
  `really_name` varchar(64) DEFAULT NULL COMMENT '收款人',
  `current_date` date DEFAULT NULL COMMENT '当天日期',
  PRIMARY KEY (`id`),
  KEY `idx_current_date` (`current_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zwl_ustd_log`
--

LOCK TABLES `zwl_ustd_log` WRITE;
/*!40000 ALTER TABLE `zwl_ustd_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zwl_ustd_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zwl_withdraw`
--

DROP TABLE IF EXISTS `zwl_withdraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zwl_withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `mid` int(11) DEFAULT NULL COMMENT '会员id',
  `amount` varchar(64) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '提现额度',
  `bank_no` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '银行卡号',
  `bank_name` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '收款人姓名',
  `third_account` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '第三方账号',
  `third_type` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '微信或支付宝',
  `create_time` datetime DEFAULT NULL COMMENT '提现时间',
  `finished_time` datetime DEFAULT NULL COMMENT '完成时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注',
  `trade_id` int(11) DEFAULT NULL COMMENT '交易id',
  `status` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '状态',
  `fact_amount` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '实际金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zwl_withdraw`
--

LOCK TABLES `zwl_withdraw` WRITE;
/*!40000 ALTER TABLE `zwl_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `zwl_withdraw` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-08 18:31:42

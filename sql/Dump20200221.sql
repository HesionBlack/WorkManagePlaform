-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: workmanage
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `allocated_task`
--

DROP TABLE IF EXISTS `allocated_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allocated_task` (
  `uId` bigint(20) DEFAULT NULL,
  `tId` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `createby` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updateby` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allocated_task`
--

LOCK TABLES `allocated_task` WRITE;
/*!40000 ALTER TABLE `allocated_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `allocated_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpt\0\0pppt\01t\00/10 * * * * ?t\0ryTask.ryNoParamst\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（无参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpt\0\0pppt\01t\00/15 * * * * ?t\0ryTask.ryParams(\'ry\')t\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（有参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpt\0\0pppt\01t\00/20 * * * * ?t\08ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)t\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（多参）t\03t\01x\0');
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler','LAPTOP-6RGHAD0S1582258142367',1582258295486,15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1582258150000,-1,5,'PAUSED','CRON',1582258142000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1582258155000,-1,5,'PAUSED','CRON',1582258142000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,1582258160000,-1,5,'PAUSED','CRON',1582258142000,0,NULL,2,'');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_performchange`
--

DROP TABLE IF EXISTS `record_performchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record_performchange` (
  `id` varchar(255) NOT NULL,
  `uId` bigint(20) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `score` float(11,1) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_performchange`
--

LOCK TABLES `record_performchange` WRITE;
/*!40000 ALTER TABLE `record_performchange` DISABLE KEYS */;
INSERT INTO `record_performchange` VALUES ('1997eae0546011ea8ea2005056c00001',103,'加班',1.5,0,'leader','2020-02-21 12:10:31'),('1bc01cdc546011ea8ea2005056c00001',103,'加班',1.5,0,'leader','2020-02-21 12:10:35'),('3bcf913b53ad11ea8ea2005056c00001',103,'是是是',2.0,0,'leader','2020-02-20 14:50:09'),('782ad92053b011ea8ea2005056c00001',103,'试试',13.0,1,'leader','2020-02-20 15:13:18'),('acea3081545d11ea8ea2005056c00001',103,'迟到',1.0,1,'leader','2020-02-21 11:53:10'),('d1ac597e543711ea8ea2005056c00001',103,'加班',1.0,0,'leader','2020-02-21 07:22:11');
/*!40000 ALTER TABLE `record_performchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00');
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','关闭状态'),(18,1,'新增','1','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(19,2,'修改','2','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','修改操作'),(20,3,'删除','3','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','删除操作'),(21,4,'授权','4','sys_oper_type','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','授权操作'),(22,5,'导出','5','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导出操作'),(23,6,'导入','6','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导入操作'),(24,7,'强退','7','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','强退操作'),(25,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','生成操作'),(26,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','清空操作'),(27,1,'成功','0','sys_common_status','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(28,2,'失败','1','sys_common_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-18 22:47:15'),(101,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-18 22:50:00'),(102,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-18 22:52:04'),(103,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-18 23:20:28'),(104,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-18 23:20:36'),(105,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-18 23:20:42'),(106,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-18 23:20:46'),(107,'leader','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-18 23:21:58'),(108,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 06:55:06'),(109,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-19 07:01:33'),(110,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 07:01:41'),(111,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 07:35:12'),(112,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-19 07:43:44'),(113,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 07:43:51'),(114,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-19 07:43:58'),(115,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 07:44:02'),(116,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-19 07:45:02'),(117,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','1','密码输入错误1次','2020-02-19 07:45:10'),(118,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 07:45:16'),(119,'admin','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-19 07:45:43'),(120,'admin','127.0.0.1','内网IP','Firefox 7','Windows 10','1','验证码错误','2020-02-19 08:27:51'),(121,'admin','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-19 08:28:04'),(122,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 08:46:37'),(123,'admin','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-19 08:47:23'),(124,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 08:56:23'),(125,'admin','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-19 08:56:37'),(126,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-19 08:56:55'),(127,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 08:57:03'),(128,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-19 08:59:55'),(129,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 09:00:03'),(130,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-19 09:00:49'),(131,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 09:00:56'),(132,'admin','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-19 09:13:37'),(133,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 09:46:53'),(134,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2020-02-19 10:27:59'),(135,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 10:28:03'),(136,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 11:03:29'),(137,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 11:09:59'),(138,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 11:35:53'),(139,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 11:39:22'),(140,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2020-02-19 12:45:59'),(141,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 12:46:01'),(142,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 13:23:05'),(143,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2020-02-19 13:26:15'),(144,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2020-02-19 13:26:18'),(145,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 13:26:20'),(146,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 13:33:52'),(147,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 14:08:19'),(148,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 14:15:07'),(149,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 14:24:37'),(150,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','1','密码输入错误1次','2020-02-19 14:31:11'),(151,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 14:31:18'),(152,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 19:01:23'),(153,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 19:37:16'),(154,'admin','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-19 19:44:02'),(155,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-19 20:08:44'),(156,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 10:12:43'),(157,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-20 10:17:49'),(158,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 10:17:55'),(159,'admin','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-20 10:44:35'),(160,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 12:44:46'),(161,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 12:48:34'),(162,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 12:54:49'),(163,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 13:06:02'),(164,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-20 13:23:11'),(165,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 13:23:19'),(166,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-20 13:51:36'),(167,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2020-02-20 13:51:41'),(168,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 13:51:43'),(169,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 14:35:34'),(170,'worker','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-20 15:16:51'),(171,'worker','127.0.0.1','内网IP','Firefox 7','Windows 10','0','退出成功','2020-02-20 15:45:04'),(172,'admin','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-20 15:45:16'),(173,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 15:46:10'),(174,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-20 16:42:53'),(175,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 16:43:02'),(176,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 17:07:42'),(177,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 17:27:06'),(178,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-20 17:27:11'),(179,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 17:27:18'),(180,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-20 17:28:46'),(181,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 17:28:54'),(182,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 19:41:18'),(183,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 20:14:13'),(184,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 20:30:42'),(185,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 20:33:59'),(186,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 20:44:41'),(187,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 20:48:22'),(188,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 20:52:46'),(189,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 20:55:09'),(190,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 20:58:54'),(191,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 21:12:01'),(192,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 21:20:39'),(193,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 21:21:58'),(194,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 21:26:17'),(195,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2020-02-20 21:56:54'),(196,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 21:56:56'),(197,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 22:13:39'),(198,'admin','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-20 22:30:28'),(199,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 22:42:27'),(200,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 22:43:41'),(201,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-20 22:43:44'),(202,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 22:43:49'),(203,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 22:50:54'),(204,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-20 22:53:52'),(205,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-21 07:17:12'),(206,'leader','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-21 07:29:57'),(207,'worer','127.0.0.1','内网IP','Chrome 8','Windows 10','1','用户不存在/密码错误','2020-02-21 10:59:30'),(208,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-21 10:59:39'),(209,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-21 11:06:02'),(210,'worker','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-21 11:13:40'),(211,'worker3','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-21 11:13:48'),(212,'worker3','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-21 11:42:11'),(213,'worker3','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-21 11:52:01'),(214,'leader','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-21 11:52:33'),(215,'worker3','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-21 11:57:19'),(216,'admin','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-21 11:59:12'),(217,'leader','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-21 12:07:16'),(218,'worer3','127.0.0.1','内网IP','Chrome 8','Windows 10','1','用户不存在/密码错误','2020-02-21 12:07:28'),(219,'worker3','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2020-02-21 12:07:32'),(220,'worker3','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-21 12:07:36'),(221,'leader','127.0.0.1','内网IP','Firefox 7','Windows 10','1','密码输入错误1次','2020-02-21 12:10:10'),(222,'leader','127.0.0.1','内网IP','Firefox 7','Windows 10','0','登录成功','2020-02-21 12:10:19'),(223,'worker3','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-21 12:10:48');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2012 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'#','','M','0','','fa fa-gear','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统管理目录'),(2,'系统监控',0,2,'#','menuItem','M','1','','fa fa-video-camera','admin','2018-03-16 11:33:00','admin','2020-02-18 22:58:12','系统监控目录'),(3,'系统工具',0,3,'#','','M','0','','fa fa-bars','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统工具目录'),(100,'用户管理',1,3,'/system/user','menuItem','C','0','system:user:view','#','admin','2018-03-16 11:33:00','admin','2020-02-18 23:12:11','用户管理菜单'),(101,'角色管理',1,4,'/system/role','menuItem','C','0','system:role:view','#','admin','2018-03-16 11:33:00','admin','2020-02-18 23:12:17','角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','','C','0','system:menu:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','','C','0','system:dept:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','部门管理菜单'),(104,'岗位管理',1,5,'/system/post','menuItem','C','1','system:post:view','#','admin','2018-03-16 11:33:00','admin','2020-02-18 22:58:31','岗位管理菜单'),(105,'字典管理',1,6,'/system/dict','','C','0','system:dict:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','字典管理菜单'),(106,'参数设置',1,7,'/system/config','','C','0','system:config:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','参数设置菜单'),(107,'通知公告',1,8,'/system/notice','menuItem','C','1','system:notice:view','#','admin','2018-03-16 11:33:00','admin','2020-02-18 22:58:22','通知公告菜单'),(108,'日志管理',1,9,'#','','M','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','','C','0','monitor:online:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','在线用户菜单'),(110,'定时任务',2,2,'/monitor/job','','C','0','monitor:job:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','定时任务菜单'),(111,'数据监控',2,3,'/monitor/data','','C','0','monitor:data:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','数据监控菜单'),(112,'服务监控',2,3,'/monitor/server','','C','0','monitor:server:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','服务监控菜单'),(113,'表单构建',3,1,'/tool/build','','C','0','tool:build:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','表单构建菜单'),(114,'代码生成',3,2,'/tool/gen','','C','0','tool:gen:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','代码生成菜单'),(115,'系统接口',3,3,'/tool/swagger','','C','0','tool:swagger:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','','C','0','monitor:operlog:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','','C','0','monitor:logininfor:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录日志菜单'),(1000,'用户查询',100,1,'#','','F','0','system:user:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1001,'用户新增',100,2,'#','','F','0','system:user:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1002,'用户修改',100,3,'#','','F','0','system:user:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1003,'用户删除',100,4,'#','','F','0','system:user:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1004,'用户导出',100,5,'#','','F','0','system:user:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1005,'用户导入',100,6,'#','','F','0','system:user:import','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1006,'重置密码',100,7,'#','','F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1007,'角色查询',101,1,'#','','F','0','system:role:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1008,'角色新增',101,2,'#','','F','0','system:role:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1009,'角色修改',101,3,'#','','F','0','system:role:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1010,'角色删除',101,4,'#','','F','0','system:role:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1011,'角色导出',101,5,'#','','F','0','system:role:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1012,'菜单查询',102,1,'#','','F','0','system:menu:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1013,'菜单新增',102,2,'#','','F','0','system:menu:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1014,'菜单修改',102,3,'#','','F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1015,'菜单删除',102,4,'#','','F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1016,'部门查询',103,1,'#','','F','0','system:dept:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1017,'部门新增',103,2,'#','','F','0','system:dept:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1018,'部门修改',103,3,'#','','F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1019,'部门删除',103,4,'#','','F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1020,'岗位查询',104,1,'#','','F','0','system:post:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1021,'岗位新增',104,2,'#','','F','0','system:post:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1022,'岗位修改',104,3,'#','','F','0','system:post:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1023,'岗位删除',104,4,'#','','F','0','system:post:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1024,'岗位导出',104,5,'#','','F','0','system:post:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1025,'字典查询',105,1,'#','','F','0','system:dict:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1026,'字典新增',105,2,'#','','F','0','system:dict:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1027,'字典修改',105,3,'#','','F','0','system:dict:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1028,'字典删除',105,4,'#','','F','0','system:dict:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1029,'字典导出',105,5,'#','','F','0','system:dict:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1030,'参数查询',106,1,'#','','F','0','system:config:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1031,'参数新增',106,2,'#','','F','0','system:config:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1032,'参数修改',106,3,'#','','F','0','system:config:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1033,'参数删除',106,4,'#','','F','0','system:config:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1034,'参数导出',106,5,'#','','F','0','system:config:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1035,'公告查询',107,1,'#','','F','0','system:notice:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1036,'公告新增',107,2,'#','','F','0','system:notice:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1037,'公告修改',107,3,'#','','F','0','system:notice:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1038,'公告删除',107,4,'#','','F','0','system:notice:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1039,'操作查询',500,1,'#','','F','0','monitor:operlog:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1040,'操作删除',500,2,'#','','F','0','monitor:operlog:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1041,'详细信息',500,3,'#','','F','0','monitor:operlog:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1042,'日志导出',500,4,'#','','F','0','monitor:operlog:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1043,'登录查询',501,1,'#','','F','0','monitor:logininfor:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1044,'登录删除',501,2,'#','','F','0','monitor:logininfor:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1045,'日志导出',501,3,'#','','F','0','monitor:logininfor:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1046,'账户解锁',501,4,'#','','F','0','monitor:logininfor:unlock','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1047,'在线查询',109,1,'#','','F','0','monitor:online:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1048,'批量强退',109,2,'#','','F','0','monitor:online:batchForceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1049,'单条强退',109,3,'#','','F','0','monitor:online:forceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1050,'任务查询',110,1,'#','','F','0','monitor:job:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1051,'任务新增',110,2,'#','','F','0','monitor:job:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1052,'任务修改',110,3,'#','','F','0','monitor:job:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1053,'任务删除',110,4,'#','','F','0','monitor:job:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1054,'状态修改',110,5,'#','','F','0','monitor:job:changeStatus','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1055,'任务详细',110,6,'#','','F','0','monitor:job:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1056,'任务导出',110,7,'#','','F','0','monitor:job:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1057,'生成查询',114,1,'#','','F','0','tool:gen:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1058,'生成修改',114,2,'#','','F','0','tool:gen:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1059,'生成删除',114,3,'#','','F','0','tool:gen:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1060,'预览代码',114,4,'#','','F','0','tool:gen:preview','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1061,'生成代码',114,5,'#','','F','0','tool:gen:code','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2000,'普通员工管理',1,2,'/system/worker','menuItem','C','1','system:worker:view','#','admin','2020-02-18 23:02:57','admin','2020-02-20 19:42:53',''),(2001,'领导管理',1,1,'/system/leader','menuItem','C','1','system:leader:view','#','admin','2020-02-18 23:11:48','admin','2020-02-20 19:42:45',''),(2002,'基础服务',0,1,'#','menuItem','M','0',NULL,'#','admin','2020-02-18 23:14:07','',NULL,''),(2004,'员工管理',2002,2,'/leader/workermanage','menuItem','C','0','system:leader:view','#','admin','2020-02-19 06:57:00','admin','2020-02-19 08:14:05',''),(2005,'绩效管理',2002,3,'leader/Performance','menuItem','C','0','system:leader:view','#','admin','2020-02-19 06:58:58','admin','2020-02-19 19:44:36',''),(2006,'绩效查询',2002,2,'/worker/performance','menuItem','C','0','system:worker:view','#','admin','2020-02-19 07:00:19','admin','2020-02-20 22:08:22',''),(2007,'任务查询',2002,2,'/worker/task','menuItem','C','0','system:worker:view','#','admin','2020-02-19 07:01:12','admin','2020-02-20 15:45:55',''),(2008,'任务管理',1,2,'/system/task','menuItem','C','0','','#','admin','2020-02-19 07:39:14','admin','2020-02-20 15:45:26',''),(2009,'员工信息查看',2004,1,'#','menuItem','F','0','system:leader:list','#','admin','2020-02-19 08:52:52','admin','2020-02-19 08:53:24',''),(2010,'员工编辑',2004,2,'#','menuItem','F','0','system:leader:edit','#','admin','2020-02-19 08:53:55','',NULL,''),(2011,'员工删除',2004,3,'#','menuItem','F','0','system:leader:remove','#','admin','2020-02-19 08:54:19','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'角色管理',1,'com.ruoyi.web.controller.system.SysRoleController.addSave()','POST',1,'admin','研发部门','/system/role/add','127.0.0.1','内网IP','{\r\n  \"roleName\" : [ \"员工\" ],\r\n  \"roleKey\" : [ \"staff\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 22:56:40'),(101,'角色管理',1,'com.ruoyi.web.controller.system.SysRoleController.addSave()','POST',1,'admin','研发部门','/system/role/add','127.0.0.1','内网IP','{\r\n  \"roleName\" : [ \"领导\" ],\r\n  \"roleKey\" : [ \"leader\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 22:56:55'),(102,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"存在子菜单,不允许删除\",\r\n  \"code\" : 301\r\n}',0,NULL,'2020-02-18 22:57:18'),(103,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/107','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"存在子菜单,不允许删除\",\r\n  \"code\" : 301\r\n}',0,NULL,'2020-02-18 22:57:32'),(104,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/1035','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}',0,NULL,'2020-02-18 22:57:38'),(105,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统监控\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-video-camera\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 22:58:12'),(106,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"107\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"通知公告\" ],\r\n  \"url\" : [ \"/system/notice\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:notice:view\" ],\r\n  \"orderNum\" : [ \"8\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 22:58:22'),(107,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"104\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"岗位管理\" ],\r\n  \"url\" : [ \"/system/post\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:post:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 22:58:31'),(108,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()','POST',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"员工\" ],\r\n  \"deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18902067778\" ],\r\n  \"email\" : [ \"1026320617@qq.com\" ],\r\n  \"loginName\" : [ \"worker\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:00:14'),(109,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()','POST',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"领导\" ],\r\n  \"deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18902067980\" ],\r\n  \"email\" : [ \"1111111111@qq.com\" ],\r\n  \"loginName\" : [ \"leader\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"101\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"101\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:00:59'),(110,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/108','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:01:16'),(111,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/109','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:01:19'),(112,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/102','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:01:21'),(113,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/104','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:01:28'),(114,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"普通员工管理\" ],\r\n  \"url\" : [ \"/system/worker\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:worker:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:02:57'),(115,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"领导管理\" ],\r\n  \"url\" : [ \"/system/leader\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:leader:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:11:48'),(116,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"普通员工管理\" ],\r\n  \"url\" : [ \"/system/worker\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:worker:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:11:57'),(117,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"用户管理\" ],\r\n  \"url\" : [ \"/system/user\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:view\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:12:11'),(118,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"101\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"角色管理\" ],\r\n  \"url\" : [ \"/system/role\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:role:view\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:12:17'),(119,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"基础服务\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:14:08'),(120,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"任务分配\" ],\r\n  \"url\" : [ \"/system/worker/allocation\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:leader:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:15:38'),(121,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()','POST',1,'admin','研发部门','/system/role/authDataScope','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"员工\" ],\r\n  \"roleKey\" : [ \"staff\" ],\r\n  \"dataScope\" : [ \"2\" ],\r\n  \"deptIds\" : [ \"100,101,103\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:16:39'),(122,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()','POST',1,'admin','研发部门','/system/role/authDataScope','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"员工\" ],\r\n  \"roleKey\" : [ \"staff\" ],\r\n  \"dataScope\" : [ \"2\" ],\r\n  \"deptIds\" : [ \"100,101,103\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:16:47'),(123,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()','POST',1,'admin','研发部门','/system/role/authDataScope','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"101\" ],\r\n  \"roleName\" : [ \"领导\" ],\r\n  \"roleKey\" : [ \"leader\" ],\r\n  \"dataScope\" : [ \"2\" ],\r\n  \"deptIds\" : [ \"100,101,103\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:21:05'),(124,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"101\" ],\r\n  \"roleName\" : [ \"领导\" ],\r\n  \"roleKey\" : [ \"leader\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2002,2003\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-18 23:21:28'),(125,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"员工管理\" ],\r\n  \"url\" : [ \"/system/leader/workermanage\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:leader:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 06:57:00'),(126,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2003\" ],\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"任务分配\" ],\r\n  \"url\" : [ \"/system/leader/allocation\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:leader:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 06:57:36'),(127,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"绩效管理\" ],\r\n  \"url\" : [ \"/system/leader/Performance \" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:leader:view\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 06:58:58'),(128,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"101\" ],\r\n  \"roleName\" : [ \"领导\" ],\r\n  \"roleKey\" : [ \"leader\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2002,2003,2004,2005\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 06:59:11'),(129,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"绩效查询\" ],\r\n  \"url\" : [ \"/system/worker/performance\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:worker:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 07:00:19'),(130,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"任务查询\" ],\r\n  \"url\" : [ \"/system/worker/task\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:worker:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 07:01:12'),(131,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"员工\" ],\r\n  \"roleKey\" : [ \"staff\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2002,2006,2007\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 07:01:30'),(132,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"任务管理\" ],\r\n  \"url\" : [ \"/system/task\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 07:39:14'),(133,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2003','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}',0,NULL,'2020-02-19 07:44:29'),(134,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"101\" ],\r\n  \"roleName\" : [ \"领导\" ],\r\n  \"roleKey\" : [ \"leader\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2002,2004,2005\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 07:44:51'),(135,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2003','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 07:44:57'),(136,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2004\" ],\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"员工管理\" ],\r\n  \"url\" : [ \"/leader/workermanage\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:leader:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 08:14:05'),(137,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"2004\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"员工信息查看\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:leader:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 08:52:52'),(138,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2009\" ],\r\n  \"parentId\" : [ \"2004\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"员工信息查看\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:leader:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 08:53:24'),(139,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"2004\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"员工编辑\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:leader:edit\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 08:53:55'),(140,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"2004\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"员工删除\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:leader:remove\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 08:54:19'),(141,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()','POST',1,'admin','研发部门','/system/role/authDataScope','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"101\" ],\r\n  \"roleName\" : [ \"领导\" ],\r\n  \"roleKey\" : [ \"leader\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 08:58:11'),(142,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()','POST',1,'admin','研发部门','/system/role/authDataScope','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"101\" ],\r\n  \"roleName\" : [ \"领导\" ],\r\n  \"roleKey\" : [ \"leader\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 09:00:25'),(143,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"101\" ],\r\n  \"roleName\" : [ \"领导\" ],\r\n  \"roleKey\" : [ \"leader\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2002,2004,2009,2010,2011,2005\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 09:00:39'),(144,'重置密码',2,'com.ruoyi.web.controller.leader.LeaderWorkManageController.resetPwd()','GET',1,'admin','研发部门','/leader/workermanage/resetPwd/100','127.0.0.1','内网IP','{ }','\"leader/resetPwd\"',0,NULL,'2020-02-19 09:13:54'),(145,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2005\" ],\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"绩效管理\" ],\r\n  \"url\" : [ \"leader/Performance\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:leader:view\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-19 19:44:36'),(146,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()','POST',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"员工2\" ],\r\n  \"deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"13807878902\" ],\r\n  \"email\" : [ \"2222222221@qq.com\" ],\r\n  \"loginName\" : [ \"worker2\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-20 10:13:54'),(147,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()','POST',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"员工3\" ],\r\n  \"deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"13787788888\" ],\r\n  \"email\" : [ \"3333333@ww.com\" ],\r\n  \"loginName\" : [ \"worker3\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-20 10:45:29'),(148,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2008\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"任务管理\" ],\r\n  \"url\" : [ \"/system/task\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-20 15:45:26'),(149,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"任务查询\" ],\r\n  \"url\" : [ \"/worker/task\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:worker:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-20 15:45:55'),(150,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"领导管理\" ],\r\n  \"url\" : [ \"/system/leader\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:leader:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-20 19:42:45'),(151,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"普通员工管理\" ],\r\n  \"url\" : [ \"/system/worker\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:worker:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-20 19:42:54'),(152,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"绩效查询\" ],\r\n  \"url\" : [ \"/worker/performance\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:worker:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-20 22:08:22');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'se','项目经理',2,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(3,'hr','人力资源',3,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(4,'user','普通员工',4,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'管理员','admin',1,'1','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员'),(2,'普通角色','common',2,'2','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','普通角色'),(100,'员工','staff',3,'2','0','0','admin','2020-02-18 22:56:40','admin','2020-02-19 07:01:30',''),(101,'领导','leader',4,'1','0','0','admin','2020-02-18 22:56:55','admin','2020-02-19 09:00:39','');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105),(100,100),(100,101),(100,103);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,1),(2,2),(2,3),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),(2,1049),(2,1050),(2,1051),(2,1052),(2,1053),(2,1054),(2,1055),(2,1056),(2,1057),(2,1058),(2,1059),(2,1060),(2,1061),(100,2002),(100,2006),(100,2007),(101,2002),(101,2004),(101,2005),(101,2009),(101,2010),(101,2011);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_task`
--

DROP TABLE IF EXISTS `sys_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_task` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `mallocStatu` int(11) DEFAULT NULL,
  `del_flag` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_task`
--

LOCK TABLES `sys_task` WRITE;
/*!40000 ALTER TABLE `sys_task` DISABLE KEYS */;
INSERT INTO `sys_task` VALUES ('aaf2780b-2306-4143-bbe4-ae0fe591ca47','改改','改改','改噶叫姐姐',0,'0','2020-02-20 20:34:10','2020-02-20 21:22:33','admin','admin');
/*!40000 ALTER TABLE `sys_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','29c67a30398638269fe600f73a054934','111111','0','0','127.0.0.1','2020-02-21 11:59:13','admin','2018-03-16 11:33:00','ry','2020-02-21 11:59:12','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','8e6d98b90472783cc73c17047ddccf36','222222','0','0','127.0.0.1','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','测试员'),(100,103,'worker','员工','00','1026320617@qq.com','18902067778','0','','2189695cf8986c73084783321514c8c5','390fe1','0','0','127.0.0.1','2020-02-21 11:06:03','admin','2020-02-18 23:00:14','','2020-02-21 11:06:02',NULL),(101,103,'leader','领导','00','1111111111@qq.com','18902067980','0','','b94d712917ef32c07ad6e1dea3ef8bb8','e6f270','0','0','127.0.0.1','2020-02-21 12:10:20','admin','2020-02-18 23:00:59','','2020-02-21 12:10:19',NULL),(102,103,'worker2','员工2','00','2222222221@qq.com','13807878902','1','','41d1bee64194281882536a16cd25a91f','59290c','0','0','',NULL,'admin','2020-02-20 10:13:54','',NULL,NULL),(103,103,'worker3','员工3','00','3333333@ww.com','13787788888','0','','8948c298d0af69634ea7f65f87e59437','277bc5','0','0','127.0.0.1','2020-02-21 12:10:48','admin','2020-02-20 10:45:29','','2020-02-21 12:10:48',NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='在线用户记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('704ea01a-6e01-47d8-a1fc-233182f58451','worker3','研发部门','127.0.0.1','内网IP','Chrome 8','Windows 10','on_line','2020-02-21 12:10:42','2020-02-21 12:10:48',1800000),('be8be1ec-91ec-4659-96f3-82717ff0f937','leader','研发部门','127.0.0.1','内网IP','Firefox 7','Windows 10','on_line','2020-02-21 12:07:10','2020-02-21 12:10:20',1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2),(100,4),(101,2),(102,4),(103,4);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2),(100,100),(101,101),(102,100),(103,100);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_worker_perform`
--

DROP TABLE IF EXISTS `v_worker_perform`;
/*!50001 DROP VIEW IF EXISTS `v_worker_perform`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_worker_perform` AS SELECT 
 1 AS `userId`,
 1 AS `perform`,
 1 AS `createby`,
 1 AS `updateby`,
 1 AS `create_time`,
 1 AS `update_time`,
 1 AS `user_name`,
 1 AS `phonenumber`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_worker_task`
--

DROP TABLE IF EXISTS `v_worker_task`;
/*!50001 DROP VIEW IF EXISTS `v_worker_task`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_worker_task` AS SELECT 
 1 AS `id`,
 1 AS `wId`,
 1 AS `taskId`,
 1 AS `completion`,
 1 AS `create_time`,
 1 AS `create_by`,
 1 AS `update_time`,
 1 AS `update_by`,
 1 AS `del_flag`,
 1 AS `name`,
 1 AS `describe`,
 1 AS `remark`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `worker_performance`
--

DROP TABLE IF EXISTS `worker_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker_performance` (
  `wId` bigint(20) NOT NULL,
  `perform` float(11,1) DEFAULT NULL,
  `createby` varchar(255) DEFAULT NULL,
  `updateby` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`wId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker_performance`
--

LOCK TABLES `worker_performance` WRITE;
/*!40000 ALTER TABLE `worker_performance` DISABLE KEYS */;
INSERT INTO `worker_performance` VALUES (100,10.0,'leader',NULL,'2020-02-19 20:42:09',NULL),(102,15.0,'admin',NULL,'2020-02-20 14:19:39',NULL),(103,2.8,'admin','leader','2020-02-20 14:45:06','2020-02-21 12:10:35');
/*!40000 ALTER TABLE `worker_performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker_task`
--

DROP TABLE IF EXISTS `worker_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker_task` (
  `id` varchar(36) NOT NULL,
  `wId` bigint(20) DEFAULT NULL,
  `taskId` varchar(36) DEFAULT NULL,
  `completion` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `del_flag` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker_task`
--

LOCK TABLES `worker_task` WRITE;
/*!40000 ALTER TABLE `worker_task` DISABLE KEYS */;
INSERT INTO `worker_task` VALUES ('ddd98465-e64f-4226-94c7-6fc2cd18165a',100,'1',100,'2020-02-19 13:33:59','leader','2020-02-20 17:44:14','worker','0');
/*!40000 ALTER TABLE `worker_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `v_worker_perform`
--

/*!50001 DROP VIEW IF EXISTS `v_worker_perform`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_worker_perform` AS select `sys_user`.`user_id` AS `userId`,`worker_performance`.`perform` AS `perform`,`worker_performance`.`createby` AS `createby`,`worker_performance`.`updateby` AS `updateby`,`worker_performance`.`create_time` AS `create_time`,`worker_performance`.`update_time` AS `update_time`,`sys_user`.`user_name` AS `user_name`,`sys_user`.`phonenumber` AS `phonenumber` from (`sys_user` left join `worker_performance` on((`sys_user`.`user_id` = `worker_performance`.`wId`))) where `sys_user`.`user_id` in (select `sys_user_role`.`user_id` from `sys_user_role` where (`sys_user_role`.`role_id` = 100)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_worker_task`
--

/*!50001 DROP VIEW IF EXISTS `v_worker_task`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_worker_task` AS select `worker_task`.`id` AS `id`,`worker_task`.`wId` AS `wId`,`worker_task`.`taskId` AS `taskId`,`worker_task`.`completion` AS `completion`,`worker_task`.`create_time` AS `create_time`,`worker_task`.`create_by` AS `create_by`,`worker_task`.`update_time` AS `update_time`,`worker_task`.`update_by` AS `update_by`,`worker_task`.`del_flag` AS `del_flag`,`sys_task`.`name` AS `name`,`sys_task`.`describe` AS `describe`,`sys_task`.`remark` AS `remark` from (`worker_task` left join `sys_task` on((`sys_task`.`id` = `worker_task`.`taskId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-21 12:14:07

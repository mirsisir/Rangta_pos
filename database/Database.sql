-- MySQL dump 10.19  Distrib 10.3.32-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: gbrekdxn_pos_mobile_updated
-- ------------------------------------------------------
-- Server version	10.3.32-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account_transactions`
--

DROP TABLE IF EXISTS `account_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `type` enum('debit','credit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_type` enum('opening_balance','fund_transfer','deposit') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(22,4) NOT NULL,
  `reff_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `transaction_payment_id` int(11) DEFAULT NULL,
  `transfer_transaction_id` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `account_transactions_account_id_index` (`account_id`) USING BTREE,
  KEY `account_transactions_transaction_id_index` (`transaction_id`) USING BTREE,
  KEY `account_transactions_transaction_payment_id_index` (`transaction_payment_id`) USING BTREE,
  KEY `account_transactions_transfer_transaction_id_index` (`transfer_transaction_id`) USING BTREE,
  KEY `account_transactions_created_by_index` (`created_by`) USING BTREE,
  KEY `account_transactions_type_index` (`type`) USING BTREE,
  KEY `account_transactions_sub_type_index` (`sub_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_transactions`
--

LOCK TABLES `account_transactions` WRITE;
/*!40000 ALTER TABLE `account_transactions` DISABLE KEYS */;
INSERT INTO `account_transactions` (`id`, `account_id`, `type`, `sub_type`, `amount`, `reff_no`, `operation_date`, `created_by`, `transaction_id`, `transaction_payment_id`, `transfer_transaction_id`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES (1,1,'credit',NULL,5.0000,NULL,'2022-03-01 08:24:36',2,88,53,NULL,NULL,'2022-03-02 16:08:07','2022-03-01 13:24:36','2022-03-02 16:08:07'),(2,1,'debit',NULL,2.0000,NULL,'2022-03-01 08:24:36',2,88,54,NULL,NULL,'2022-03-02 16:08:07','2022-03-01 13:24:36','2022-03-02 16:08:07'),(3,1,'credit',NULL,17500.0000,NULL,'2022-03-02 13:14:00',2,124,69,NULL,NULL,NULL,'2022-03-02 18:14:00','2022-03-02 18:14:00'),(4,1,'credit',NULL,17990.0000,NULL,'2022-03-02 22:06:57',2,139,84,NULL,NULL,NULL,'2022-03-03 03:06:57','2022-03-03 03:06:57'),(5,1,'credit',NULL,14990.0000,NULL,'2022-03-02 22:07:49',2,140,85,NULL,NULL,NULL,'2022-03-03 03:07:49','2022-03-03 03:07:49'),(6,1,'credit',NULL,14990.0000,NULL,'2022-03-02 22:09:00',2,141,86,NULL,NULL,NULL,'2022-03-03 03:09:00','2022-03-03 03:09:00'),(7,1,'credit',NULL,17990.0000,NULL,'2022-03-02 22:10:11',2,143,88,NULL,NULL,NULL,'2022-03-03 03:10:11','2022-03-03 03:10:11'),(8,1,'credit',NULL,14990.0000,NULL,'2022-03-02 22:11:01',2,144,89,NULL,NULL,NULL,'2022-03-03 03:11:01','2022-03-03 03:11:01'),(9,1,'credit',NULL,10.0000,NULL,'2022-03-02 22:17:38',2,145,90,NULL,NULL,'2022-03-03 04:47:46','2022-03-03 03:17:38','2022-03-03 04:47:46'),(10,1,'debit',NULL,7.0000,NULL,'2022-03-02 22:17:38',2,145,91,NULL,NULL,'2022-03-03 04:33:33','2022-03-03 03:17:38','2022-03-03 04:33:33'),(11,1,'debit',NULL,8.0000,NULL,'2022-03-02 22:17:38',2,145,90,NULL,NULL,'2022-03-03 04:47:46','2022-03-03 04:33:33','2022-03-03 04:47:46'),(12,1,'debit',NULL,2.0000,NULL,'2022-03-02 22:17:38',2,145,90,NULL,NULL,'2022-03-03 04:47:46','2022-03-03 04:35:56','2022-03-03 04:47:46'),(13,1,'credit',NULL,3.0000,NULL,'2022-03-02 23:59:51',2,147,94,NULL,NULL,'2022-03-03 05:02:58','2022-03-03 04:59:51','2022-03-03 05:02:58'),(14,1,'credit',NULL,6.0000,NULL,'2022-03-04 14:21:15',2,161,106,NULL,NULL,'2022-03-04 19:24:49','2022-03-04 19:21:15','2022-03-04 19:24:49'),(15,1,'credit',NULL,17990.0000,NULL,'2022-03-04 19:47:09',2,165,110,NULL,NULL,NULL,'2022-03-05 00:47:09','2022-03-05 00:47:09');
/*!40000 ALTER TABLE `account_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_types`
--

DROP TABLE IF EXISTS `account_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_account_type_id` int(11) DEFAULT NULL,
  `business_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `account_types_parent_account_type_id_index` (`parent_account_type_id`) USING BTREE,
  KEY `account_types_business_id_index` (`business_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_types`
--

LOCK TABLES `account_types` WRITE;
/*!40000 ALTER TABLE `account_types` DISABLE KEYS */;
INSERT INTO `account_types` (`id`, `name`, `parent_account_type_id`, `business_id`, `created_at`, `updated_at`) VALUES (1,'Currency',NULL,2,'2022-03-01 13:09:49','2022-03-01 13:09:49');
/*!40000 ALTER TABLE `account_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `accounts_business_id_index` (`business_id`) USING BTREE,
  KEY `accounts_account_type_id_index` (`account_type_id`) USING BTREE,
  KEY `accounts_created_by_index` (`created_by`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`id`, `business_id`, `name`, `account_number`, `account_details`, `account_type_id`, `note`, `created_by`, `is_closed`, `deleted_at`, `created_at`, `updated_at`) VALUES (1,2,'Cash','0123','[{\"label\":null,\"value\":null},{\"label\":null,\"value\":null},{\"label\":null,\"value\":null},{\"label\":null,\"value\":null},{\"label\":null,\"value\":null},{\"label\":null,\"value\":null}]',1,NULL,2,0,NULL,'2022-03-01 13:10:20','2022-03-01 13:10:20'),(2,2,'Bank','123456789','[{\"label\":null,\"value\":null},{\"label\":null,\"value\":null},{\"label\":null,\"value\":null},{\"label\":null,\"value\":null},{\"label\":null,\"value\":null},{\"label\":null,\"value\":null}]',1,NULL,2,0,NULL,'2022-03-01 13:10:53','2022-03-01 13:10:53');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `activity_log_log_name_index` (`log_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `business_id`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES (100,'default','added',57,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":420000}}','2022-02-24 06:31:15','2022-02-24 06:31:15'),(101,'default','payment_edited',57,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"paid\",\"final_total\":\"420000.0000\"},\"old\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":\"420000.0000\"}}','2022-02-24 06:39:07','2022-02-24 06:39:07'),(102,'default','added',58,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":40000}}','2022-02-24 06:44:40','2022-02-24 06:44:40'),(103,'default','added',59,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"due\",\"final_total\":50000}}','2022-02-24 06:46:28','2022-02-24 06:46:28'),(104,'default','edited',59,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":50000},\"old\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"due\",\"final_total\":\"50000.0000\"}}','2022-02-24 07:12:55','2022-02-24 07:12:55'),(105,'default','added',60,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":50000}}','2022-02-24 07:44:01','2022-02-24 07:44:01'),(106,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-02-24 14:04:50','2022-02-24 14:04:50'),(107,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-02-24 17:36:36','2022-02-24 17:36:36'),(108,'default','added',5,'App\\Contact',1,1,'App\\User','[]','2022-02-24 17:42:08','2022-02-24 17:42:08'),(109,'default','added',61,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":400}}','2022-02-24 17:47:23','2022-02-24 17:47:23'),(110,'default','added',6,'App\\Contact',1,1,'App\\User','[]','2022-02-24 17:51:28','2022-02-24 17:51:28'),(111,'default','added',62,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":125}}','2022-02-24 17:51:43','2022-02-24 17:51:43'),(112,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-02-25 04:03:25','2022-02-25 04:03:25'),(113,'default','added',7,'App\\Contact',1,1,'App\\User','[]','2022-02-25 04:10:28','2022-02-25 04:10:28'),(117,'default','added',66,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":2500}}','2022-02-25 05:53:33','2022-02-25 05:53:33'),(118,'default','added',67,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"due\",\"final_total\":600}}','2022-02-25 05:59:51','2022-02-25 05:59:51'),(119,'default','edited',67,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"draft\",\"payment_status\":\"due\",\"final_total\":600},\"old\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"due\",\"final_total\":\"600.0000\"}}','2022-02-25 06:00:05','2022-02-25 06:00:05'),(120,'default','sell_deleted',67,'App\\Transaction',1,1,'App\\User','{\"id\":67,\"invoice_no\":\"2022\\/0001\",\"attributes\":{\"type\":\"sell\",\"status\":\"draft\",\"payment_status\":\"due\",\"final_total\":\"600.0000\"}}','2022-02-25 06:24:12','2022-02-25 06:24:12'),(121,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-02-26 06:52:09','2022-02-26 06:52:09'),(122,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-02-27 11:07:26','2022-02-27 11:07:26'),(123,'default','logout',1,'App\\User',1,1,'App\\User','[]','2022-02-27 11:10:29','2022-02-27 11:10:29'),(124,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-02-28 06:16:03','2022-02-28 06:16:03'),(125,'default','added',68,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":4000}}','2022-02-28 06:26:48','2022-02-28 06:26:48'),(126,'default','added',69,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":950}}','2022-02-28 06:29:18','2022-02-28 06:29:18'),(127,'default','added',70,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":50}}','2022-02-28 06:48:14','2022-02-28 06:48:14'),(130,'default','added',73,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell_return\",\"final_total\":950}}','2022-02-28 07:09:58','2022-02-28 07:09:58'),(132,'default','added',8,'App\\Contact',1,1,'App\\User','[]','2022-02-28 07:37:21','2022-02-28 07:37:21'),(134,'default','added',9,'App\\Contact',1,1,'App\\User','[]','2022-02-28 07:40:31','2022-02-28 07:40:31'),(135,'default','added',76,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":7350}}','2022-02-28 07:41:26','2022-02-28 07:41:26'),(136,'default','added',77,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":1060}}','2022-02-28 07:48:10','2022-02-28 07:48:10'),(137,'default','added',78,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase_return\",\"final_total\":1000}}','2022-02-28 07:50:11','2022-02-28 07:50:11'),(138,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-02-28 19:23:14','2022-02-28 19:23:14'),(139,'default','added',79,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":24000}}','2022-02-28 20:50:20','2022-02-28 20:50:20'),(140,'default','purchase_deleted',79,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"paid\",\"final_total\":\"24000.0000\"}}','2022-02-28 20:53:23','2022-02-28 20:53:23'),(143,'default','added',83,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":30000}}','2022-02-28 21:00:05','2022-02-28 21:00:05'),(144,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-01 01:16:07','2022-03-01 01:16:07'),(145,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-01 01:20:36','2022-03-01 01:20:36'),(146,'default','added',84,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":75400}}','2022-03-01 01:27:53','2022-03-01 01:27:53'),(147,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-01 04:16:36','2022-03-01 04:16:36'),(148,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-01 04:22:57','2022-03-01 04:22:57'),(149,'default','added',85,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":16000}}','2022-03-01 04:26:59','2022-03-01 04:26:59'),(150,'default','logout',1,'App\\User',1,1,'App\\User','[]','2022-03-01 04:42:04','2022-03-01 04:42:04'),(151,'default','logout',1,'App\\User',1,1,'App\\User','[]','2022-03-01 06:18:33','2022-03-01 06:18:33'),(152,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-01 06:28:10','2022-03-01 06:28:10'),(153,'default','logout',2,'App\\User',2,2,'App\\User','[]','2022-03-01 12:57:02','2022-03-01 12:57:02'),(154,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-01 12:58:35','2022-03-01 12:58:35'),(155,'default','added',11,'App\\Contact',2,2,'App\\User','[]','2022-03-01 13:18:09','2022-03-01 13:18:09'),(156,'default','added',86,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":4}}','2022-03-01 13:21:09','2022-03-01 13:21:09'),(157,'default','added',87,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":5}}','2022-03-01 13:22:48','2022-03-01 13:22:48'),(158,'default','added',88,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":3}}','2022-03-01 13:24:36','2022-03-01 13:24:36'),(159,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-02 09:08:14','2022-03-02 09:08:14'),(160,'default','logout',2,'App\\User',2,2,'App\\User','[]','2022-03-02 12:13:13','2022-03-02 12:13:13'),(161,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-02 12:13:43','2022-03-02 12:13:43'),(162,'default','added',12,'App\\Contact',1,1,'App\\User','[]','2022-03-02 12:17:09','2022-03-02 12:17:09'),(163,'default','added',13,'App\\Contact',1,1,'App\\User','[]','2022-03-02 12:20:53','2022-03-02 12:20:53'),(164,'default','added',89,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":10}}','2022-03-02 12:28:18','2022-03-02 12:28:18'),(165,'default','added',90,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":40}}','2022-03-02 12:29:39','2022-03-02 12:29:39'),(166,'default','added',91,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":20}}','2022-03-02 13:12:52','2022-03-02 13:12:52'),(167,'default','added',92,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":20}}','2022-03-02 13:15:47','2022-03-02 13:15:47'),(168,'default','added',93,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":10}}','2022-03-02 13:16:38','2022-03-02 13:16:38'),(169,'default','added',94,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":20}}','2022-03-02 13:17:27','2022-03-02 13:17:27'),(170,'default','added',95,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":105000}}','2022-03-02 13:22:43','2022-03-02 13:22:43'),(171,'default','added',96,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":13125}}','2022-03-02 13:23:07','2022-03-02 13:23:07'),(172,'default','added',97,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":500}}','2022-03-02 13:25:42','2022-03-02 13:25:42'),(173,'default','added',98,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":500}}','2022-03-02 13:29:37','2022-03-02 13:29:37'),(174,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-02 14:44:26','2022-03-02 14:44:26'),(177,'default','added',101,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":20}}','2022-03-02 15:20:24','2022-03-02 15:20:24'),(178,'default','added',102,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":500}}','2022-03-02 15:23:03','2022-03-02 15:23:03'),(179,'default','added',103,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":120}}','2022-03-02 15:30:11','2022-03-02 15:30:11'),(180,'default','added',104,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":50}}','2022-03-02 15:33:01','2022-03-02 15:33:01'),(181,'default','added',105,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":40}}','2022-03-02 15:34:24','2022-03-02 15:34:24'),(182,'default','added',106,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase_return\",\"final_total\":0}}','2022-03-02 15:41:55','2022-03-02 15:41:55'),(183,'default','added',107,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":1000}}','2022-03-02 15:52:34','2022-03-02 15:52:34'),(184,'default','added',108,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":400}}','2022-03-02 15:56:29','2022-03-02 15:56:29'),(185,'default','logout',1,'App\\User',1,1,'App\\User','[]','2022-03-02 16:02:24','2022-03-02 16:02:24'),(186,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-02 16:06:24','2022-03-02 16:06:24'),(187,'default','purchase_deleted',87,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":\"5.0000\"}}','2022-03-02 16:07:33','2022-03-02 16:07:33'),(189,'default','sell_deleted',88,'App\\Transaction',2,2,'App\\User','{\"id\":88,\"invoice_no\":\"0001\",\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":\"3.0000\"}}','2022-03-02 16:08:07','2022-03-02 16:08:07'),(190,'default','purchase_deleted',86,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"partial\",\"final_total\":\"4.0000\"}}','2022-03-02 16:08:54','2022-03-02 16:08:54'),(191,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-02 16:10:03','2022-03-02 16:10:03'),(192,'default','added',14,'App\\Contact',2,2,'App\\User','[]','2022-03-02 16:14:16','2022-03-02 16:14:16'),(193,'default','added',109,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":70050}}','2022-03-02 16:17:30','2022-03-02 16:17:30'),(194,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-02 16:22:19','2022-03-02 16:22:19'),(195,'default','added',110,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":26280}}','2022-03-02 16:36:15','2022-03-02 16:36:15'),(196,'default','added',111,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":10}}','2022-03-02 16:39:02','2022-03-02 16:39:02'),(197,'default','added',112,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":37880}}','2022-03-02 16:40:35','2022-03-02 16:40:35'),(198,'default','purchase_deleted',111,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":\"10.0000\"}}','2022-03-02 16:41:51','2022-03-02 16:41:51'),(199,'default','added',113,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":45080}}','2022-03-02 16:48:51','2022-03-02 16:48:51'),(200,'default','contact_deleted',11,'App\\Contact',2,2,'App\\User','[]','2022-03-02 16:52:09','2022-03-02 16:52:09'),(201,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-02 16:54:11','2022-03-02 16:54:11'),(202,'default','logout',1,'App\\User',1,1,'App\\User','[]','2022-03-02 16:55:34','2022-03-02 16:55:34'),(203,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-02 16:56:37','2022-03-02 16:56:37'),(204,'default','added',114,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":24970}}','2022-03-02 17:00:32','2022-03-02 17:00:32'),(205,'default','added',115,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":25990}}','2022-03-02 17:02:15','2022-03-02 17:02:15'),(206,'default','added',116,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":16640}}','2022-03-02 17:03:37','2022-03-02 17:03:37'),(207,'default','added',117,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":1}}','2022-03-02 17:05:06','2022-03-02 17:05:06'),(208,'default','added',118,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":9780}}','2022-03-02 17:05:57','2022-03-02 17:05:57'),(209,'default','purchase_deleted',117,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":\"1.0000\"}}','2022-03-02 17:06:28','2022-03-02 17:06:28'),(210,'default','added',119,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":4}}','2022-03-02 17:24:19','2022-03-02 17:24:19'),(211,'default','added',120,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"draft\",\"final_total\":1}}','2022-03-02 17:26:27','2022-03-02 17:26:27'),(212,'default','sell_deleted',120,'App\\Transaction',2,2,'App\\User','{\"id\":120,\"invoice_no\":\"2022\\/0001\",\"attributes\":{\"type\":\"sell\",\"status\":\"draft\",\"final_total\":\"1.0000\"}}','2022-03-02 17:27:30','2022-03-02 17:27:30'),(213,'default','added',121,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"draft\",\"sub_status\":\"quotation\",\"final_total\":1}}','2022-03-02 17:27:51','2022-03-02 17:27:51'),(214,'default','added',122,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"due\",\"final_total\":1}}','2022-03-02 17:28:19','2022-03-02 17:28:19'),(215,'default','added',15,'App\\Contact',2,2,'App\\User','[]','2022-03-02 17:29:13','2022-03-02 17:29:13'),(216,'default','edited',122,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"due\",\"final_total\":1},\"old\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"due\",\"final_total\":\"1.0000\"}}','2022-03-02 17:29:19','2022-03-02 17:29:19'),(217,'default','sell_deleted',122,'App\\Transaction',2,2,'App\\User','{\"id\":122,\"invoice_no\":\"0002\",\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"due\",\"final_total\":\"1.0000\"}}','2022-03-02 17:34:00','2022-03-02 17:34:00'),(218,'default','purchase_deleted',119,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":\"4.0000\"}}','2022-03-02 17:34:54','2022-03-02 17:34:54'),(219,'default','added',16,'App\\Contact',2,2,'App\\User','[]','2022-03-02 18:11:29','2022-03-02 18:11:29'),(220,'default','added',123,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":16340}}','2022-03-02 18:13:06','2022-03-02 18:13:06'),(221,'default','added',17,'App\\Contact',2,2,'App\\User','[]','2022-03-02 18:13:47','2022-03-02 18:13:47'),(222,'default','added',124,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":17500}}','2022-03-02 18:14:00','2022-03-02 18:14:00'),(223,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-02 23:56:18','2022-03-02 23:56:18'),(224,'default','added',125,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":42030}}','2022-03-02 23:57:58','2022-03-02 23:57:58'),(225,'default','added',18,'App\\Contact',2,2,'App\\User','[]','2022-03-03 00:21:13','2022-03-03 00:21:13'),(226,'default','added',126,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":21270}}','2022-03-03 00:22:46','2022-03-03 00:22:46'),(227,'default','added',127,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":23350}}','2022-03-03 00:23:30','2022-03-03 00:23:30'),(228,'default','added',128,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":16640}}','2022-03-03 00:24:58','2022-03-03 00:24:58'),(229,'default','added',129,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":28020}}','2022-03-03 00:27:10','2022-03-03 00:27:10'),(230,'default','added',19,'App\\Contact',2,2,'App\\User','[]','2022-03-03 01:02:32','2022-03-03 01:02:32'),(231,'default','added',130,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":9150}}','2022-03-03 01:03:29','2022-03-03 01:03:29'),(232,'default','added',131,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":8120}}','2022-03-03 01:05:00','2022-03-03 01:05:00'),(233,'default','added',132,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":25460}}','2022-03-03 01:07:08','2022-03-03 01:07:08'),(234,'default','added',133,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":33020}}','2022-03-03 01:08:03','2022-03-03 01:08:03'),(235,'default','added',134,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":18870}}','2022-03-03 01:09:40','2022-03-03 01:09:40'),(236,'default','added',135,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":21230}}','2022-03-03 01:10:55','2022-03-03 01:10:55'),(237,'default','added',136,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":30180}}','2022-03-03 01:12:14','2022-03-03 01:12:14'),(238,'default','added',137,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":22640}}','2022-03-03 01:12:55','2022-03-03 01:12:55'),(239,'default','added',138,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":17920}}','2022-03-03 01:14:42','2022-03-03 01:14:42'),(240,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-03 02:54:04','2022-03-03 02:54:04'),(241,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-03 03:00:54','2022-03-03 03:00:54'),(242,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-03 03:03:41','2022-03-03 03:03:41'),(243,'default','logout',2,'App\\User',2,2,'App\\User','[]','2022-03-03 03:05:20','2022-03-03 03:05:20'),(244,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-03 03:05:55','2022-03-03 03:05:55'),(245,'default','added',139,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":17990}}','2022-03-03 03:06:58','2022-03-03 03:06:58'),(246,'default','added',140,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":14990}}','2022-03-03 03:07:49','2022-03-03 03:07:49'),(247,'default','added',141,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":14990}}','2022-03-03 03:09:00','2022-03-03 03:09:00'),(248,'default','added',142,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":4}}','2022-03-03 03:09:27','2022-03-03 03:09:27'),(249,'default','added',143,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":17990}}','2022-03-03 03:10:11','2022-03-03 03:10:11'),(250,'default','added',144,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":14990}}','2022-03-03 03:11:01','2022-03-03 03:11:01'),(251,'default','added',145,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":3}}','2022-03-03 03:17:38','2022-03-03 03:17:38'),(252,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-03 03:33:13','2022-03-03 03:33:13'),(253,'default','logout',2,'App\\User',2,2,'App\\User','[]','2022-03-03 03:37:42','2022-03-03 03:37:42'),(254,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-03 03:37:52','2022-03-03 03:37:52'),(255,'default','logout',1,'App\\User',1,1,'App\\User','[]','2022-03-03 03:58:03','2022-03-03 03:58:03'),(256,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-03 04:31:23','2022-03-03 04:31:23'),(257,'default','edited',145,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":2},\"old\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":\"3.0000\"}}','2022-03-03 04:33:33','2022-03-03 04:33:33'),(258,'default','edited',145,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":8},\"old\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":\"2.0000\"}}','2022-03-03 04:35:56','2022-03-03 04:35:56'),(259,'default','added',146,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell_return\",\"final_total\":2}}','2022-03-03 04:39:02','2022-03-03 04:39:02'),(260,'default','sell_deleted',145,'App\\Transaction',2,2,'App\\User','{\"id\":145,\"invoice_no\":\"0009\",\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":\"8.0000\"}}','2022-03-03 04:47:46','2022-03-03 04:47:46'),(261,'default','edited',142,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"partial\",\"final_total\":5},\"old\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"partial\",\"final_total\":\"4.0000\"}}','2022-03-03 04:57:56','2022-03-03 04:57:56'),(262,'default','added',147,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":3}}','2022-03-03 04:59:51','2022-03-03 04:59:51'),(263,'default','sell_deleted',147,'App\\Transaction',2,2,'App\\User','{\"id\":147,\"invoice_no\":\"0010\",\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":\"3.0000\"}}','2022-03-03 05:02:58','2022-03-03 05:02:58'),(264,'default','purchase_deleted',142,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"partial\",\"final_total\":\"5.0000\"}}','2022-03-03 05:03:18','2022-03-03 05:03:18'),(265,'default','logout',2,'App\\User',2,2,'App\\User','[]','2022-03-03 05:04:12','2022-03-03 05:04:12'),(266,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-03 05:04:27','2022-03-03 05:04:27'),(267,'default','added',20,'App\\Contact',1,1,'App\\User','[]','2022-03-03 05:09:12','2022-03-03 05:09:12'),(268,'default','added',148,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":40}}','2022-03-03 05:09:16','2022-03-03 05:09:16'),(269,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-03 05:32:35','2022-03-03 05:32:35'),(270,'default','added',149,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":20}}','2022-03-03 05:53:53','2022-03-03 05:53:53'),(271,'default','added',150,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":12.5}}','2022-03-03 05:54:44','2022-03-03 05:54:44'),(272,'default','added',151,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":12.5}}','2022-03-03 05:54:55','2022-03-03 05:54:55'),(273,'default','added',152,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":1050}}','2022-03-03 06:01:13','2022-03-03 06:01:13'),(274,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-03 07:49:38','2022-03-03 07:49:38'),(275,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-04 03:44:41','2022-03-04 03:44:41'),(276,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-04 06:30:00','2022-03-04 06:30:00'),(277,'default','added',153,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":18750}}','2022-03-04 06:33:02','2022-03-04 06:33:02'),(278,'default','added',154,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":1312.5}}','2022-03-04 06:41:23','2022-03-04 06:41:23'),(279,'default','added',155,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":1312.5}}','2022-03-04 06:42:54','2022-03-04 06:42:54'),(280,'default','added',156,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":12.5}}','2022-03-04 06:48:07','2022-03-04 06:48:07'),(281,'default','added',157,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":5000}}','2022-03-04 06:55:32','2022-03-04 06:55:32'),(282,'default','added',158,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":292.5}}','2022-03-04 06:58:06','2022-03-04 06:58:06'),(283,'default','edited',158,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":355},\"old\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":\"292.50\"}}','2022-03-04 06:59:14','2022-03-04 06:59:14'),(284,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-04 08:00:56','2022-03-04 08:00:56'),(285,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-04 16:04:54','2022-03-04 16:04:54'),(286,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-04 18:46:28','2022-03-04 18:46:28'),(287,'default','logout',2,'App\\User',2,2,'App\\User','[]','2022-03-04 18:58:01','2022-03-04 18:58:01'),(288,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-04 18:58:23','2022-03-04 18:58:23'),(289,'default','added',159,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":1062.5}}','2022-03-04 19:03:02','2022-03-04 19:03:02'),(290,'default','logout',1,'App\\User',1,1,'App\\User','[]','2022-03-04 19:14:29','2022-03-04 19:14:29'),(291,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-04 19:16:13','2022-03-04 19:16:13'),(292,'default','added',160,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":2}}','2022-03-04 19:20:36','2022-03-04 19:20:36'),(293,'default','added',161,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":6}}','2022-03-04 19:21:15','2022-03-04 19:21:15'),(294,'default','sell_deleted',161,'App\\Transaction',2,2,'App\\User','{\"id\":161,\"invoice_no\":\"0011\",\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":\"6.00\"}}','2022-03-04 19:24:49','2022-03-04 19:24:49'),(295,'default','purchase_deleted',160,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":\"2.00\"}}','2022-03-04 19:25:32','2022-03-04 19:25:32'),(296,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-04 20:01:10','2022-03-04 20:01:10'),(297,'default','logout',1,'App\\User',1,1,'App\\User','[]','2022-03-04 20:16:53','2022-03-04 20:16:53'),(298,'default','logout',2,'App\\User',2,2,'App\\User','[]','2022-03-04 20:25:35','2022-03-04 20:25:35'),(299,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-04 20:26:17','2022-03-04 20:26:17'),(300,'default','added',162,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":18750}}','2022-03-04 20:28:35','2022-03-04 20:28:35'),(301,'default','added',163,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":50265}}','2022-03-04 21:14:43','2022-03-04 21:14:43'),(302,'default','added',164,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":1050}}','2022-03-04 21:16:46','2022-03-04 21:16:46'),(303,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-04 21:39:51','2022-03-04 21:39:51'),(304,'default','logout',2,'App\\User',2,2,'App\\User','[]','2022-03-04 21:44:49','2022-03-04 21:44:49'),(305,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-05 00:45:01','2022-03-05 00:45:01'),(306,'default','added',165,'App\\Transaction',2,2,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":17990}}','2022-03-05 00:47:09','2022-03-05 00:47:09'),(307,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-05 20:15:58','2022-03-05 20:15:58'),(308,'default','logout',2,'App\\User',2,2,'App\\User','[]','2022-03-05 22:03:50','2022-03-05 22:03:50'),(309,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-05 22:09:56','2022-03-05 22:09:56'),(310,'default','logout',2,'App\\User',2,2,'App\\User','[]','2022-03-05 22:59:51','2022-03-05 22:59:51'),(311,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-05 22:59:59','2022-03-05 22:59:59'),(312,'default','added',166,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":650}}','2022-03-05 23:22:42','2022-03-05 23:22:42'),(313,'default','added',167,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"status\":\"final\"}}','2022-03-05 23:24:14','2022-03-05 23:24:14'),(314,'default','added',169,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":187.5}}','2022-03-05 23:24:41','2022-03-05 23:24:41'),(315,'default','added',170,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":187.5}}','2022-03-05 23:25:02','2022-03-05 23:25:02'),(316,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-06 19:19:14','2022-03-06 19:19:14'),(317,'default','login',2,'App\\User',2,2,'App\\User','[]','2022-03-06 19:34:33','2022-03-06 19:34:33'),(318,'default','logout',2,'App\\User',2,2,'App\\User','[]','2022-03-06 22:08:37','2022-03-06 22:08:37'),(319,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-07 02:17:02','2022-03-07 02:17:02'),(320,'default','added',171,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":650}}','2022-03-07 02:18:52','2022-03-07 02:18:52'),(321,'default','added',172,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":125}}','2022-03-07 02:19:16','2022-03-07 02:19:16'),(322,'default','added',173,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"status\":\"final\"}}','2022-03-07 02:20:17','2022-03-07 02:20:17'),(323,'default','added',175,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"sell\",\"status\":\"final\",\"payment_status\":\"paid\",\"final_total\":187.5}}','2022-03-07 02:20:43','2022-03-07 02:20:43'),(324,'default','logout',1,'App\\User',1,1,'App\\User','[]','2022-03-07 02:29:33','2022-03-07 02:29:33'),(325,'default','login',1,'App\\User',1,1,'App\\User','[]','2022-03-07 03:42:16','2022-03-07 03:42:16'),(326,'default','added',176,'App\\Transaction',1,1,'App\\User','{\"attributes\":{\"type\":\"purchase\",\"status\":\"received\",\"payment_status\":\"due\",\"final_total\":1550}}','2022-03-07 03:52:57','2022-03-07 03:52:57');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barcodes`
--

DROP TABLE IF EXISTS `barcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barcodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` double(22,4) DEFAULT NULL,
  `height` double(22,4) DEFAULT NULL,
  `paper_width` double(22,4) DEFAULT NULL,
  `paper_height` double(22,4) DEFAULT NULL,
  `top_margin` double(22,4) DEFAULT NULL,
  `left_margin` double(22,4) DEFAULT NULL,
  `row_distance` double(22,4) DEFAULT NULL,
  `col_distance` double(22,4) DEFAULT NULL,
  `stickers_in_one_row` int(11) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_continuous` tinyint(1) NOT NULL DEFAULT 0,
  `stickers_in_one_sheet` int(11) DEFAULT NULL,
  `business_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `barcodes_business_id_foreign` (`business_id`) USING BTREE,
  CONSTRAINT `barcodes_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barcodes`
--

LOCK TABLES `barcodes` WRITE;
/*!40000 ALTER TABLE `barcodes` DISABLE KEYS */;
INSERT INTO `barcodes` (`id`, `name`, `description`, `width`, `height`, `paper_width`, `paper_height`, `top_margin`, `left_margin`, `row_distance`, `col_distance`, `stickers_in_one_row`, `is_default`, `is_continuous`, `stickers_in_one_sheet`, `business_id`, `created_at`, `updated_at`) VALUES (1,'20 Labels per Sheet','Sheet Size: 8.5\" x 11\", Label Size: 4\" x 1\", Labels per sheet: 20',4.0000,1.0000,8.5000,11.0000,0.5000,0.1250,0.0000,0.1875,2,0,0,20,NULL,'2017-12-18 22:13:44','2017-12-18 22:13:44'),(2,'30 Labels per sheet','Sheet Size: 8.5\" x 11\", Label Size: 2.625\" x 1\", Labels per sheet: 30',2.6250,1.0000,8.5000,11.0000,0.5000,0.1880,0.0000,0.1250,3,0,0,30,NULL,'2017-12-18 22:04:39','2017-12-18 22:10:40'),(3,'32 Labels per sheet','Sheet Size: 8.5\" x 11\", Label Size: 2\" x 1.25\", Labels per sheet: 32',2.0000,1.2500,8.5000,11.0000,0.5000,0.2500,0.0000,0.0000,4,0,0,32,NULL,'2017-12-18 21:55:40','2017-12-18 21:55:40'),(4,'40 Labels per sheet','Sheet Size: 8.5\" x 11\", Label Size: 2\" x 1\", Labels per sheet: 40',2.0000,1.0000,8.5000,11.0000,0.5000,0.2500,0.0000,0.0000,4,0,0,40,NULL,'2017-12-18 21:58:40','2017-12-18 21:58:40'),(5,'50 Labels per Sheet','Sheet Size: 8.5\" x 11\", Label Size: 1.5\" x 1\", Labels per sheet: 50',1.5000,1.0000,8.5000,11.0000,0.5000,0.5000,0.0000,0.0000,5,0,0,50,NULL,'2017-12-18 21:51:10','2017-12-18 21:51:10'),(6,'Continuous Rolls - 31.75mm x 25.4mm','Label Size: 31.75mm x 25.4mm, Gap: 3.18mm',1.2500,1.0000,1.2500,0.0000,0.1250,0.0000,0.1250,0.0000,1,0,1,NULL,NULL,'2017-12-18 21:51:10','2017-12-18 21:51:10');
/*!40000 ALTER TABLE `barcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(10) unsigned NOT NULL,
  `waiter_id` int(10) unsigned DEFAULT NULL,
  `table_id` int(10) unsigned DEFAULT NULL,
  `correspondent_id` int(11) DEFAULT NULL,
  `business_id` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `booking_start` datetime NOT NULL,
  `booking_end` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `booking_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `bookings_contact_id_foreign` (`contact_id`) USING BTREE,
  KEY `bookings_business_id_foreign` (`business_id`) USING BTREE,
  KEY `bookings_created_by_foreign` (`created_by`) USING BTREE,
  KEY `bookings_table_id_index` (`table_id`) USING BTREE,
  KEY `bookings_waiter_id_index` (`waiter_id`) USING BTREE,
  KEY `bookings_location_id_index` (`location_id`) USING BTREE,
  KEY `bookings_booking_status_index` (`booking_status`) USING BTREE,
  KEY `bookings_correspondent_id_index` (`correspondent_id`) USING BTREE,
  CONSTRAINT `bookings_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bookings_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bookings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `brands_business_id_foreign` (`business_id`) USING BTREE,
  KEY `brands_created_by_foreign` (`created_by`) USING BTREE,
  CONSTRAINT `brands_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  CONSTRAINT `brands_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`id`, `business_id`, `name`, `description`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES (1,1,'Samsung','Samsung',1,NULL,'2021-12-28 02:13:22','2021-12-28 02:13:22'),(2,1,'Realme',NULL,1,NULL,'2022-01-01 04:37:31','2022-01-01 04:37:31'),(3,1,'I phone',NULL,1,NULL,'2022-02-24 17:39:26','2022-02-24 17:39:26'),(4,1,'Symphony',NULL,1,NULL,'2022-02-25 04:13:18','2022-02-25 04:13:18'),(5,2,'Samsung',NULL,2,NULL,'2022-03-01 13:15:30','2022-03-01 13:15:30'),(6,2,'Realme',NULL,2,NULL,'2022-03-01 13:15:46','2022-03-01 13:15:46'),(7,2,'Oppo',NULL,2,NULL,'2022-03-01 13:16:00','2022-03-01 13:16:00'),(8,2,'Tecno',NULL,2,NULL,'2022-03-01 13:16:13','2022-03-01 13:16:13'),(9,2,'Oneplus',NULL,2,NULL,'2022-03-01 13:16:24','2022-03-01 13:16:24'),(10,2,'Symphony',NULL,2,NULL,'2022-03-01 13:16:38','2022-03-01 13:16:38'),(11,2,'Xiaomi',NULL,2,NULL,'2022-03-01 13:17:01','2022-03-01 13:17:01'),(12,2,'Vivo',NULL,2,NULL,'2022-03-01 13:17:25','2022-03-01 13:17:25'),(13,2,'Walton',NULL,2,NULL,'2022-03-01 13:17:44','2022-03-01 13:17:44'),(14,1,'MI',NULL,1,NULL,'2022-03-02 12:17:59','2022-03-02 12:17:59');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_id` int(10) unsigned NOT NULL,
  `start_date` date DEFAULT NULL,
  `tax_number_1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_label_1` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_number_2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_label_2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_label_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_label_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_sales_tax` int(10) unsigned DEFAULT NULL,
  `default_profit_percent` double(5,2) NOT NULL DEFAULT 0.00,
  `owner_id` int(10) unsigned NOT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Asia/Kolkata',
  `fy_start_month` tinyint(4) NOT NULL DEFAULT 1,
  `accounting_method` enum('fifo','lifo','avco') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fifo',
  `default_sales_discount` decimal(5,2) DEFAULT NULL,
  `sell_price_tax` enum('includes','excludes') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'includes',
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_product_expiry` tinyint(1) NOT NULL DEFAULT 0,
  `expiry_type` enum('add_expiry','add_manufacturing') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add_expiry',
  `on_product_expiry` enum('keep_selling','stop_selling','auto_delete') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'keep_selling',
  `stop_selling_before` int(11) NOT NULL COMMENT 'Stop selling expied item n days before expiry',
  `enable_tooltip` tinyint(1) NOT NULL DEFAULT 1,
  `purchase_in_diff_currency` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Allow purchase to be in different currency then the business currency',
  `purchase_currency_id` int(10) unsigned DEFAULT NULL,
  `p_exchange_rate` decimal(20,3) NOT NULL DEFAULT 1.000,
  `transaction_edit_days` int(10) unsigned NOT NULL DEFAULT 30,
  `stock_expiry_alert_days` int(10) unsigned NOT NULL DEFAULT 30,
  `keyboard_shortcuts` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos_settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weighing_scale_setting` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'used to store the configuration of weighing scale',
  `enable_brand` tinyint(1) NOT NULL DEFAULT 1,
  `enable_category` tinyint(1) NOT NULL DEFAULT 1,
  `enable_sub_category` tinyint(1) NOT NULL DEFAULT 1,
  `enable_price_tax` tinyint(1) NOT NULL DEFAULT 1,
  `enable_purchase_status` tinyint(1) DEFAULT 1,
  `enable_lot_number` tinyint(1) NOT NULL DEFAULT 0,
  `default_unit` int(11) DEFAULT NULL,
  `enable_sub_units` tinyint(1) NOT NULL DEFAULT 0,
  `enable_racks` tinyint(1) NOT NULL DEFAULT 0,
  `enable_row` tinyint(1) NOT NULL DEFAULT 0,
  `enable_position` tinyint(1) NOT NULL DEFAULT 0,
  `enable_editing_product_from_purchase` tinyint(1) NOT NULL DEFAULT 1,
  `sales_cmsn_agnt` enum('logged_in_user','user','cmsn_agnt') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_addition_method` tinyint(1) NOT NULL DEFAULT 1,
  `enable_inline_tax` tinyint(1) NOT NULL DEFAULT 1,
  `currency_symbol_placement` enum('before','after') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'before',
  `enabled_modules` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'm/d/Y',
  `time_format` enum('12','24') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '24',
  `ref_no_prefixes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_color` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `enable_rp` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `rp_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `amount_for_unit_rp` decimal(22,4) NOT NULL DEFAULT 1.0000 COMMENT 'rp is the short form of reward points',
  `min_order_total_for_rp` decimal(22,4) NOT NULL DEFAULT 1.0000 COMMENT 'rp is the short form of reward points',
  `max_rp_per_order` int(11) DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `redeem_amount_per_unit_rp` decimal(22,4) NOT NULL DEFAULT 1.0000 COMMENT 'rp is the short form of reward points',
  `min_order_total_for_redeem` decimal(22,4) NOT NULL DEFAULT 1.0000 COMMENT 'rp is the short form of reward points',
  `min_redeem_point` int(11) DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `max_redeem_point` int(11) DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `rp_expiry_period` int(11) DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `rp_expiry_type` enum('month','year') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'year' COMMENT 'rp is the short form of reward points',
  `email_settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_labels` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `common_settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `business_owner_id_foreign` (`owner_id`) USING BTREE,
  KEY `business_currency_id_foreign` (`currency_id`) USING BTREE,
  KEY `business_default_sales_tax_foreign` (`default_sales_tax`) USING BTREE,
  CONSTRAINT `business_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  CONSTRAINT `business_default_sales_tax_foreign` FOREIGN KEY (`default_sales_tax`) REFERENCES `tax_rates` (`id`),
  CONSTRAINT `business_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` (`id`, `name`, `currency_id`, `start_date`, `tax_number_1`, `tax_label_1`, `tax_number_2`, `tax_label_2`, `code_label_1`, `code_1`, `code_label_2`, `code_2`, `default_sales_tax`, `default_profit_percent`, `owner_id`, `time_zone`, `fy_start_month`, `accounting_method`, `default_sales_discount`, `sell_price_tax`, `logo`, `sku_prefix`, `enable_product_expiry`, `expiry_type`, `on_product_expiry`, `stop_selling_before`, `enable_tooltip`, `purchase_in_diff_currency`, `purchase_currency_id`, `p_exchange_rate`, `transaction_edit_days`, `stock_expiry_alert_days`, `keyboard_shortcuts`, `pos_settings`, `weighing_scale_setting`, `enable_brand`, `enable_category`, `enable_sub_category`, `enable_price_tax`, `enable_purchase_status`, `enable_lot_number`, `default_unit`, `enable_sub_units`, `enable_racks`, `enable_row`, `enable_position`, `enable_editing_product_from_purchase`, `sales_cmsn_agnt`, `item_addition_method`, `enable_inline_tax`, `currency_symbol_placement`, `enabled_modules`, `date_format`, `time_format`, `ref_no_prefixes`, `theme_color`, `created_by`, `enable_rp`, `rp_name`, `amount_for_unit_rp`, `min_order_total_for_rp`, `max_rp_per_order`, `redeem_amount_per_unit_rp`, `min_order_total_for_redeem`, `min_redeem_point`, `max_redeem_point`, `rp_expiry_period`, `rp_expiry_type`, `email_settings`, `sms_settings`, `custom_labels`, `common_settings`, `is_active`, `created_at`, `updated_at`) VALUES (1,'Glorious  Mobile Shop',134,'2021-12-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25.00,1,'Asia/Dhaka',1,'fifo',0.00,'includes','1639331823_Glorious IT Logo.jpg',NULL,0,'add_expiry','keep_selling',0,1,0,NULL,1.000,30,30,'{\"pos\":{\"express_checkout\":\"shift+e\",\"pay_n_ckeckout\":\"shift+p\",\"draft\":\"shift+d\",\"cancel\":\"shift+c\",\"recent_product_quantity\":\"f2\",\"weighing_scale\":null,\"edit_discount\":\"shift+i\",\"edit_order_tax\":\"shift+t\",\"add_payment_row\":\"shift+r\",\"finalize_payment\":\"shift+f\",\"add_new_product\":\"f4\"}}','{\"amount_rounding_method\":null,\"cash_denominations\":null,\"disable_pay_checkout\":0,\"disable_draft\":0,\"disable_express_checkout\":0,\"hide_product_suggestion\":0,\"hide_recent_trans\":0,\"disable_discount\":0,\"disable_order_tax\":0,\"is_pos_subtotal_editable\":0}','{\"label_prefix\":null,\"product_sku_length\":\"4\",\"qty_length\":\"3\",\"qty_length_decimal\":\"2\"}',1,1,1,1,1,0,1,0,0,0,0,1,NULL,1,0,'before','[\"purchases\",\"add_sale\",\"pos_sale\",\"stock_transfers\",\"stock_adjustment\",\"expenses\",\"account\"]','d-m-Y','12','{\"purchase\":\"PO\",\"purchase_return\":null,\"purchase_order\":null,\"stock_transfer\":\"ST\",\"stock_adjustment\":\"SA\",\"sell_return\":\"CN\",\"expense\":\"EP\",\"contacts\":\"CO\",\"purchase_payment\":\"PP\",\"sell_payment\":\"SP\",\"expense_payment\":null,\"business_location\":\"BL\",\"username\":null,\"subscription\":null,\"draft\":null,\"sales_order\":null}',NULL,NULL,0,NULL,1.0000,1.0000,NULL,1.0000,1.0000,NULL,NULL,NULL,'year','{\"mail_driver\":\"smtp\",\"mail_host\":null,\"mail_port\":null,\"mail_username\":null,\"mail_password\":null,\"mail_encryption\":null,\"mail_from_address\":null,\"mail_from_name\":null}','{\"sms_service\":\"other\",\"nexmo_key\":null,\"nexmo_secret\":null,\"nexmo_from\":null,\"twilio_sid\":null,\"twilio_token\":null,\"twilio_from\":null,\"url\":null,\"send_to_param_name\":\"to\",\"msg_param_name\":\"text\",\"request_method\":\"post\",\"header_1\":null,\"header_val_1\":null,\"header_2\":null,\"header_val_2\":null,\"header_3\":null,\"header_val_3\":null,\"param_1\":null,\"param_val_1\":null,\"param_2\":null,\"param_val_2\":null,\"param_3\":null,\"param_val_3\":null,\"param_4\":null,\"param_val_4\":null,\"param_5\":null,\"param_val_5\":null,\"param_6\":null,\"param_val_6\":null,\"param_7\":null,\"param_val_7\":null,\"param_8\":null,\"param_val_8\":null,\"param_9\":null,\"param_val_9\":null,\"param_10\":null,\"param_val_10\":null}','{\"payments\":{\"custom_pay_1\":null,\"custom_pay_2\":null,\"custom_pay_3\":null,\"custom_pay_4\":null,\"custom_pay_5\":null,\"custom_pay_6\":null,\"custom_pay_7\":null},\"contact\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null,\"custom_field_5\":null,\"custom_field_6\":null,\"custom_field_7\":null,\"custom_field_8\":null,\"custom_field_9\":null,\"custom_field_10\":null},\"product\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"location\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"user\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"purchase\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"sell\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"shipping\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null,\"custom_field_5\":null},\"types_of_service\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null,\"custom_field_5\":null,\"custom_field_6\":null}}','{\"enable_product_warranty\":\"1\",\"default_credit_limit\":null,\"default_datatable_page_entries\":\"25\"}',1,'2021-12-13 15:57:03','2022-03-07 03:52:57'),(2,'Mobile Bazar',134,'2022-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,2,'Asia/Dhaka',1,'fifo',0.00,'includes',NULL,NULL,0,'add_expiry','keep_selling',0,1,0,NULL,1.000,30,30,'{\"pos\":{\"express_checkout\":\"shift+e\",\"pay_n_ckeckout\":\"shift+p\",\"draft\":\"shift+d\",\"cancel\":\"shift+c\",\"recent_product_quantity\":\"f2\",\"weighing_scale\":null,\"edit_discount\":\"shift+i\",\"edit_order_tax\":\"shift+t\",\"add_payment_row\":\"shift+r\",\"finalize_payment\":\"shift+f\",\"add_new_product\":\"f4\"}}','{\"amount_rounding_method\":null,\"cash_denominations\":null,\"disable_pay_checkout\":0,\"disable_draft\":0,\"disable_express_checkout\":0,\"hide_product_suggestion\":0,\"hide_recent_trans\":0,\"disable_discount\":0,\"disable_order_tax\":0,\"is_pos_subtotal_editable\":0}','{\"label_prefix\":null,\"product_sku_length\":\"4\",\"qty_length\":\"3\",\"qty_length_decimal\":\"2\"}',1,1,1,1,1,0,2,0,0,0,0,1,NULL,1,0,'before','[\"purchases\",\"add_sale\",\"pos_sale\",\"expenses\",\"account\"]','m/d/Y','12','{\"purchase\":\"PO\",\"purchase_return\":null,\"purchase_order\":null,\"stock_transfer\":\"ST\",\"stock_adjustment\":\"SA\",\"sell_return\":\"CN\",\"expense\":\"EP\",\"contacts\":\"CO\",\"purchase_payment\":\"PP\",\"sell_payment\":\"SP\",\"expense_payment\":null,\"business_location\":\"BL\",\"username\":null,\"subscription\":null,\"draft\":null,\"sales_order\":null}',NULL,NULL,0,NULL,1.0000,1.0000,NULL,1.0000,1.0000,NULL,NULL,NULL,'year','{\"mail_driver\":\"smtp\",\"mail_host\":null,\"mail_port\":null,\"mail_username\":null,\"mail_password\":null,\"mail_encryption\":null,\"mail_from_address\":null,\"mail_from_name\":null}','{\"sms_service\":\"other\",\"nexmo_key\":null,\"nexmo_secret\":null,\"nexmo_from\":null,\"twilio_sid\":null,\"twilio_token\":null,\"twilio_from\":null,\"url\":null,\"send_to_param_name\":\"to\",\"msg_param_name\":\"text\",\"request_method\":\"post\",\"header_1\":null,\"header_val_1\":null,\"header_2\":null,\"header_val_2\":null,\"header_3\":null,\"header_val_3\":null,\"param_1\":null,\"param_val_1\":null,\"param_2\":null,\"param_val_2\":null,\"param_3\":null,\"param_val_3\":null,\"param_4\":null,\"param_val_4\":null,\"param_5\":null,\"param_val_5\":null,\"param_6\":null,\"param_val_6\":null,\"param_7\":null,\"param_val_7\":null,\"param_8\":null,\"param_val_8\":null,\"param_9\":null,\"param_val_9\":null,\"param_10\":null,\"param_val_10\":null}','{\"payments\":{\"custom_pay_1\":\"bikash\",\"custom_pay_2\":\"Nagad\",\"custom_pay_3\":\"DBBL\",\"custom_pay_4\":null,\"custom_pay_5\":null,\"custom_pay_6\":null,\"custom_pay_7\":null},\"contact\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null,\"custom_field_5\":null,\"custom_field_6\":null,\"custom_field_7\":null,\"custom_field_8\":null,\"custom_field_9\":null,\"custom_field_10\":null},\"product\":{\"custom_field_1\":\"Product Price Code\",\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"location\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"user\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"purchase\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"sell\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"shipping\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null,\"custom_field_5\":null},\"types_of_service\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null,\"custom_field_5\":null,\"custom_field_6\":null}}','{\"enable_product_warranty\":\"1\",\"default_credit_limit\":null,\"default_datatable_page_entries\":\"25\"}',1,'2022-03-01 06:27:03','2022-03-04 19:20:36');
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_locations`
--

DROP TABLE IF EXISTS `business_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(10) unsigned NOT NULL,
  `location_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_scheme_id` int(10) unsigned NOT NULL,
  `invoice_layout_id` int(10) unsigned NOT NULL,
  `sale_invoice_layout_id` int(11) DEFAULT NULL,
  `selling_price_group_id` int(11) DEFAULT NULL,
  `print_receipt_on_invoice` tinyint(1) DEFAULT 1,
  `receipt_printer_type` enum('browser','printer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'browser',
  `printer_id` int(11) DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_products` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `default_payment_accounts` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `business_locations_business_id_index` (`business_id`) USING BTREE,
  KEY `business_locations_invoice_scheme_id_foreign` (`invoice_scheme_id`) USING BTREE,
  KEY `business_locations_invoice_layout_id_foreign` (`invoice_layout_id`) USING BTREE,
  KEY `business_locations_sale_invoice_layout_id_index` (`sale_invoice_layout_id`) USING BTREE,
  KEY `business_locations_selling_price_group_id_index` (`selling_price_group_id`) USING BTREE,
  KEY `business_locations_receipt_printer_type_index` (`receipt_printer_type`) USING BTREE,
  KEY `business_locations_printer_id_index` (`printer_id`) USING BTREE,
  CONSTRAINT `business_locations_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  CONSTRAINT `business_locations_invoice_layout_id_foreign` FOREIGN KEY (`invoice_layout_id`) REFERENCES `invoice_layouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `business_locations_invoice_scheme_id_foreign` FOREIGN KEY (`invoice_scheme_id`) REFERENCES `invoice_schemes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_locations`
--

LOCK TABLES `business_locations` WRITE;
/*!40000 ALTER TABLE `business_locations` DISABLE KEYS */;
INSERT INTO `business_locations` (`id`, `business_id`, `location_id`, `name`, `landmark`, `country`, `state`, `city`, `zip_code`, `invoice_scheme_id`, `invoice_layout_id`, `sale_invoice_layout_id`, `selling_price_group_id`, `print_receipt_on_invoice`, `receipt_printer_type`, `printer_id`, `mobile`, `alternate_number`, `email`, `website`, `featured_products`, `is_active`, `default_payment_accounts`, `custom_field1`, `custom_field2`, `custom_field3`, `custom_field4`, `deleted_at`, `created_at`, `updated_at`) VALUES (1,1,'BL0001','Glorious  Mobile Shop','South Central Road','Bangladesh','99','khulna','9100',1,1,1,NULL,1,'browser',NULL,'01759568080','01972475777','','https://www.gloriousit.com',NULL,1,'{\"cash\":{\"is_enabled\":1,\"account\":null},\"card\":{\"is_enabled\":1,\"account\":null},\"cheque\":{\"is_enabled\":1,\"account\":null},\"bank_transfer\":{\"is_enabled\":1,\"account\":null},\"other\":{\"is_enabled\":1,\"account\":null},\"custom_pay_1\":{\"is_enabled\":1,\"account\":null},\"custom_pay_2\":{\"is_enabled\":1,\"account\":null},\"custom_pay_3\":{\"is_enabled\":1,\"account\":null},\"custom_pay_4\":{\"is_enabled\":1,\"account\":null},\"custom_pay_5\":{\"is_enabled\":1,\"account\":null},\"custom_pay_6\":{\"is_enabled\":1,\"account\":null},\"custom_pay_7\":{\"is_enabled\":1,\"account\":null}}',NULL,NULL,NULL,NULL,NULL,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(2,1,'BL0002','Showroom 2',NULL,'Afghanistan','Khulna','Khulna','7400',1,1,1,NULL,1,'browser',NULL,NULL,NULL,NULL,NULL,NULL,1,'{\"cash\":{\"is_enabled\":\"1\",\"account\":null},\"card\":{\"is_enabled\":\"1\",\"account\":null},\"cheque\":{\"is_enabled\":\"1\",\"account\":null},\"bank_transfer\":{\"is_enabled\":\"1\",\"account\":null},\"other\":{\"is_enabled\":\"1\",\"account\":null},\"custom_pay_1\":{\"is_enabled\":\"1\",\"account\":null},\"custom_pay_2\":{\"is_enabled\":\"1\",\"account\":null},\"custom_pay_3\":{\"is_enabled\":\"1\",\"account\":null},\"custom_pay_4\":{\"is_enabled\":\"1\",\"account\":null},\"custom_pay_5\":{\"is_enabled\":\"1\",\"account\":null},\"custom_pay_6\":{\"is_enabled\":\"1\",\"account\":null},\"custom_pay_7\":{\"is_enabled\":\"1\",\"account\":null}}',NULL,NULL,NULL,NULL,NULL,'2022-02-15 05:03:43','2022-02-15 05:03:43'),(3,2,'BL0001','Mobile Bazar','Thana more keshabpur bazar','Bangladesh','Thana more keshabpur bazar ,Jessore','Jessore','7450',2,2,2,NULL,1,'browser',NULL,'+8801719408784',NULL,'debkundu125@gmail.com',NULL,NULL,1,'{\"cash\":{\"is_enabled\":\"1\",\"account\":\"1\"},\"card\":{\"is_enabled\":\"1\",\"account\":\"1\"},\"cheque\":{\"is_enabled\":\"1\",\"account\":null},\"bank_transfer\":{\"is_enabled\":\"1\",\"account\":null},\"other\":{\"account\":null},\"custom_pay_1\":{\"is_enabled\":\"1\",\"account\":null},\"custom_pay_2\":{\"is_enabled\":\"1\",\"account\":null},\"custom_pay_3\":{\"is_enabled\":\"1\",\"account\":null},\"custom_pay_4\":{\"account\":null},\"custom_pay_5\":{\"account\":null},\"custom_pay_6\":{\"account\":null},\"custom_pay_7\":{\"account\":null}}',NULL,NULL,NULL,NULL,NULL,'2022-03-01 06:27:04','2022-03-01 13:12:51');
/*!40000 ALTER TABLE `business_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_register_transactions`
--

DROP TABLE IF EXISTS `cash_register_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cash_register_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cash_register_id` int(10) unsigned NOT NULL,
  `amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `pay_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('debit','credit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_type` enum('initial','sell','transfer','refund') COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cash_register_transactions_cash_register_id_foreign` (`cash_register_id`) USING BTREE,
  KEY `cash_register_transactions_transaction_id_index` (`transaction_id`) USING BTREE,
  KEY `cash_register_transactions_type_index` (`type`) USING BTREE,
  KEY `cash_register_transactions_transaction_type_index` (`transaction_type`) USING BTREE,
  CONSTRAINT `cash_register_transactions_cash_register_id_foreign` FOREIGN KEY (`cash_register_id`) REFERENCES `cash_registers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_register_transactions`
--

LOCK TABLES `cash_register_transactions` WRITE;
/*!40000 ALTER TABLE `cash_register_transactions` DISABLE KEYS */;
INSERT INTO `cash_register_transactions` (`id`, `cash_register_id`, `amount`, `pay_method`, `type`, `transaction_type`, `transaction_id`, `created_at`, `updated_at`) VALUES (1,1,125.0000,'cash','credit','sell',6,'2022-01-01 02:10:16','2022-01-01 02:10:16'),(2,1,0.0000,'cash','credit','sell',6,'2022-01-01 02:10:16','2022-01-01 02:10:16'),(3,1,1000.0000,'cash','credit','sell',7,'2022-01-01 02:58:04','2022-01-01 02:58:04'),(4,1,-875.0000,'cash','credit','sell',7,'2022-01-01 02:58:04','2022-01-01 02:58:04'),(9,1,12.5000,'cash','credit','sell',13,'2022-01-01 04:50:45','2022-01-01 04:50:45'),(10,1,0.0000,'cash','credit','sell',13,'2022-01-01 04:50:45','2022-01-01 04:50:45'),(11,1,125.0000,'cash','credit','sell',14,'2022-01-04 15:08:03','2022-01-04 15:08:03'),(12,1,0.0000,'cash','credit','sell',14,'2022-01-04 15:08:03','2022-01-04 15:08:03'),(13,1,250.0000,'cash','credit','sell',16,'2022-01-04 15:37:58','2022-01-04 15:37:58'),(14,1,0.0000,'cash','credit','sell',16,'2022-01-04 15:37:58','2022-01-04 15:37:58'),(15,1,625.0000,'cash','credit','sell',20,'2022-01-19 16:25:00','2022-01-19 16:25:00'),(16,1,0.0000,'cash','credit','sell',20,'2022-01-19 16:25:00','2022-01-19 16:25:00'),(17,1,230.0000,'cash','credit','sell',22,'2022-01-27 17:24:51','2022-01-27 17:24:51'),(18,1,0.0000,'cash','credit','sell',22,'2022-01-27 17:24:51','2022-01-27 17:24:51'),(19,2,10000.0000,'cash','credit','initial',NULL,'2022-02-10 05:09:02','2022-02-10 05:09:02'),(20,2,62500.0000,'cash','credit','sell',31,'2022-02-18 05:31:34','2022-02-18 05:31:34'),(21,2,0.0000,'cash','credit','sell',31,'2022-02-18 05:31:34','2022-02-18 05:31:34'),(22,2,31250.0000,'cash','credit','sell',32,'2022-02-18 07:23:12','2022-02-18 07:23:12'),(23,2,0.0000,'cash','credit','sell',32,'2022-02-18 07:23:12','2022-02-18 07:23:12'),(24,2,31250.0000,'cash','credit','sell',33,'2022-02-18 07:30:25','2022-02-18 07:30:25'),(25,2,0.0000,'cash','credit','sell',33,'2022-02-18 07:30:25','2022-02-18 07:30:25'),(26,2,31250.0000,'cash','credit','sell',34,'2022-02-18 07:52:01','2022-02-18 07:52:01'),(27,2,0.0000,'cash','credit','sell',34,'2022-02-18 07:52:01','2022-02-18 07:52:01'),(28,2,31250.0000,'cash','credit','sell',35,'2022-02-18 08:12:07','2022-02-18 08:12:07'),(29,2,0.0000,'cash','credit','sell',35,'2022-02-18 08:12:07','2022-02-18 08:12:07'),(30,2,62500.0000,'cash','credit','sell',36,'2022-02-18 08:21:59','2022-02-18 08:21:59'),(31,2,0.0000,'cash','credit','sell',36,'2022-02-18 08:21:59','2022-02-18 08:21:59'),(38,2,12500.0000,'cash','credit','sell',43,'2022-02-20 05:27:49','2022-02-20 05:27:49'),(39,2,0.0000,'cash','credit','sell',43,'2022-02-20 05:27:49','2022-02-20 05:27:49'),(40,2,62500.0000,'cash','credit','sell',47,'2022-02-21 00:10:00','2022-02-21 00:10:00'),(41,2,0.0000,'cash','credit','sell',47,'2022-02-21 00:10:00','2022-02-21 00:10:00'),(42,2,50000.0000,'cash','credit','sell',59,'2022-02-24 07:12:55','2022-02-24 07:12:55'),(43,2,200.0000,'cash','credit','sell',62,'2022-02-24 17:51:43','2022-02-24 17:51:43'),(44,2,-75.0000,'cash','credit','sell',62,'2022-02-24 17:51:43','2022-02-24 17:51:43'),(45,2,950.0000,'cash','credit','sell',69,'2022-02-28 06:29:18','2022-02-28 06:29:18'),(46,2,0.0000,'cash','credit','sell',69,'2022-02-28 06:29:18','2022-02-28 06:29:18'),(49,2,20.0000,'cash','credit','sell',91,'2022-03-02 13:12:52','2022-03-02 13:12:52'),(50,2,0.0000,'cash','credit','sell',91,'2022-03-02 13:12:52','2022-03-02 13:12:52'),(51,2,20.0000,'cash','credit','sell',92,'2022-03-02 13:15:47','2022-03-02 13:15:47'),(52,2,0.0000,'cash','credit','sell',92,'2022-03-02 13:15:47','2022-03-02 13:15:47'),(53,2,20.0000,'cash','credit','sell',94,'2022-03-02 13:17:27','2022-03-02 13:17:27'),(54,2,0.0000,'cash','credit','sell',94,'2022-03-02 13:17:27','2022-03-02 13:17:27'),(55,2,13125.0000,'cash','credit','sell',96,'2022-03-02 13:23:07','2022-03-02 13:23:07'),(56,2,0.0000,'cash','credit','sell',96,'2022-03-02 13:23:07','2022-03-02 13:23:07'),(57,2,50.0000,'cash','credit','sell',104,'2022-03-02 15:33:01','2022-03-02 15:33:01'),(58,2,0.0000,'cash','credit','sell',104,'2022-03-02 15:33:01','2022-03-02 15:33:01'),(59,3,17500.0000,'cash','credit','sell',124,'2022-03-02 18:14:00','2022-03-02 18:14:00'),(60,3,0.0000,'cash','credit','sell',124,'2022-03-02 18:14:00','2022-03-02 18:14:00'),(61,3,17990.0000,'cash','credit','sell',139,'2022-03-03 03:06:57','2022-03-03 03:06:57'),(62,3,0.0000,'cash','credit','sell',139,'2022-03-03 03:06:57','2022-03-03 03:06:57'),(63,3,14990.0000,'cash','credit','sell',140,'2022-03-03 03:07:49','2022-03-03 03:07:49'),(64,3,0.0000,'cash','credit','sell',140,'2022-03-03 03:07:49','2022-03-03 03:07:49'),(65,3,14990.0000,'cash','credit','sell',141,'2022-03-03 03:09:00','2022-03-03 03:09:00'),(66,3,0.0000,'cash','credit','sell',141,'2022-03-03 03:09:00','2022-03-03 03:09:00'),(67,3,17990.0000,'cash','credit','sell',143,'2022-03-03 03:10:11','2022-03-03 03:10:11'),(68,3,0.0000,'cash','credit','sell',143,'2022-03-03 03:10:11','2022-03-03 03:10:11'),(69,3,14990.0000,'cash','credit','sell',144,'2022-03-03 03:11:01','2022-03-03 03:11:01'),(70,3,0.0000,'cash','credit','sell',144,'2022-03-03 03:11:01','2022-03-03 03:11:01'),(77,2,12.5000,'cash','credit','sell',150,'2022-03-03 05:54:44','2022-03-03 05:54:44'),(78,2,0.0000,'cash','credit','sell',150,'2022-03-03 05:54:44','2022-03-03 05:54:44'),(79,2,12.5000,'cash','credit','sell',151,'2022-03-03 05:54:55','2022-03-03 05:54:55'),(80,2,0.0000,'cash','credit','sell',151,'2022-03-03 05:54:55','2022-03-03 05:54:55'),(81,2,1050.0000,'cash','credit','sell',152,'2022-03-03 06:01:13','2022-03-03 06:01:13'),(82,2,0.0000,'cash','credit','sell',152,'2022-03-03 06:01:13','2022-03-03 06:01:13'),(83,2,18750.0000,'cash','credit','sell',153,'2022-03-04 06:33:02','2022-03-04 06:33:02'),(84,2,0.0000,'cash','credit','sell',153,'2022-03-04 06:33:02','2022-03-04 06:33:02'),(85,2,1312.5000,'cash','credit','sell',154,'2022-03-04 06:41:23','2022-03-04 06:41:23'),(86,2,0.0000,'cash','credit','sell',154,'2022-03-04 06:41:23','2022-03-04 06:41:23'),(87,2,1312.5000,'card','credit','sell',155,'2022-03-04 06:42:54','2022-03-04 06:42:54'),(88,2,0.0000,'cash','credit','sell',155,'2022-03-04 06:42:54','2022-03-04 06:42:54'),(89,2,12.5000,'cash','credit','sell',156,'2022-03-04 06:48:07','2022-03-04 06:48:07'),(90,2,0.0000,'cash','credit','sell',156,'2022-03-04 06:48:07','2022-03-04 06:48:07'),(91,2,292.5000,'cash','credit','sell',158,'2022-03-04 06:58:06','2022-03-04 06:58:06'),(92,2,0.0000,'cash','credit','sell',158,'2022-03-04 06:58:06','2022-03-04 06:58:06'),(93,2,62.5000,'cash','credit','sell',158,'2022-03-04 06:59:14','2022-03-04 06:59:14'),(94,2,2000.0000,'cash','credit','sell',159,'2022-03-04 19:03:02','2022-03-04 19:03:02'),(95,2,-937.5000,'cash','credit','sell',159,'2022-03-04 19:03:02','2022-03-04 19:03:02'),(98,2,18750.0000,'cash','credit','sell',162,'2022-03-04 20:28:35','2022-03-04 20:28:35'),(99,2,0.0000,'cash','credit','sell',162,'2022-03-04 20:28:35','2022-03-04 20:28:35'),(100,2,50265.0000,'cash','credit','sell',163,'2022-03-04 21:14:43','2022-03-04 21:14:43'),(101,2,0.0000,'cash','credit','sell',163,'2022-03-04 21:14:43','2022-03-04 21:14:43'),(102,2,1050.0000,'cash','credit','sell',164,'2022-03-04 21:16:46','2022-03-04 21:16:46'),(103,2,0.0000,'cash','credit','sell',164,'2022-03-04 21:16:46','2022-03-04 21:16:46'),(104,3,17990.0000,'cash','credit','sell',165,'2022-03-05 00:47:09','2022-03-05 00:47:09'),(105,3,0.0000,'cash','credit','sell',165,'2022-03-05 00:47:09','2022-03-05 00:47:09'),(106,2,187.5000,'cash','credit','sell',169,'2022-03-05 23:24:41','2022-03-05 23:24:41'),(107,2,0.0000,'cash','credit','sell',169,'2022-03-05 23:24:41','2022-03-05 23:24:41'),(108,2,187.5000,'cash','credit','sell',170,'2022-03-05 23:25:02','2022-03-05 23:25:02'),(109,2,0.0000,'cash','credit','sell',170,'2022-03-05 23:25:02','2022-03-05 23:25:02'),(110,2,125.0000,'cash','credit','sell',172,'2022-03-07 02:19:16','2022-03-07 02:19:16'),(111,2,0.0000,'cash','credit','sell',172,'2022-03-07 02:19:16','2022-03-07 02:19:16'),(112,2,187.5000,'cash','credit','sell',175,'2022-03-07 02:20:43','2022-03-07 02:20:43'),(113,2,0.0000,'cash','credit','sell',175,'2022-03-07 02:20:43','2022-03-07 02:20:43');
/*!40000 ALTER TABLE `cash_register_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_registers`
--

DROP TABLE IF EXISTS `cash_registers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cash_registers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(10) unsigned NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `status` enum('close','open') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `closed_at` datetime DEFAULT NULL,
  `closing_amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `total_card_slips` int(11) NOT NULL DEFAULT 0,
  `total_cheques` int(11) NOT NULL DEFAULT 0,
  `denominations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closing_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cash_registers_business_id_foreign` (`business_id`) USING BTREE,
  KEY `cash_registers_user_id_foreign` (`user_id`) USING BTREE,
  KEY `cash_registers_location_id_index` (`location_id`) USING BTREE,
  CONSTRAINT `cash_registers_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cash_registers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_registers`
--

LOCK TABLES `cash_registers` WRITE;
/*!40000 ALTER TABLE `cash_registers` DISABLE KEYS */;
INSERT INTO `cash_registers` (`id`, `business_id`, `location_id`, `user_id`, `status`, `closed_at`, `closing_amount`, `total_card_slips`, `total_cheques`, `denominations`, `closing_note`, `created_at`, `updated_at`) VALUES (1,1,1,1,'close','2022-02-03 02:00:32',1492.5000,0,0,NULL,NULL,'2021-12-19 13:34:00','2022-02-03 07:00:32'),(2,1,1,1,'open',NULL,0.0000,0,0,NULL,NULL,'2022-02-10 05:09:00','2022-02-10 05:09:02'),(3,2,3,2,'open',NULL,0.0000,0,0,NULL,NULL,'2022-03-01 06:34:00','2022-03-01 06:34:58');
/*!40000 ALTER TABLE `cash_registers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int(10) unsigned NOT NULL,
  `short_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `category_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `categories_business_id_foreign` (`business_id`) USING BTREE,
  KEY `categories_created_by_foreign` (`created_by`) USING BTREE,
  KEY `categories_parent_id_index` (`parent_id`) USING BTREE,
  CONSTRAINT `categories_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  CONSTRAINT `categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `business_id`, `short_code`, `parent_id`, `created_by`, `category_type`, `description`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES (1,'Android Phone',1,NULL,0,1,'product','android phone',NULL,NULL,'2021-12-28 02:14:17','2021-12-28 02:14:17'),(2,'Android Phone',2,NULL,0,2,'product','Android Phone',NULL,NULL,'2022-03-01 13:00:16','2022-03-01 13:00:16'),(3,'Button Phone',2,NULL,0,2,'product','Button Phone',NULL,NULL,'2022-03-01 13:01:04','2022-03-01 13:01:04'),(4,'Accessories',2,NULL,0,2,'product','Accessories',NULL,NULL,'2022-03-01 13:01:53','2022-03-01 13:01:53'),(5,'Memory Card',2,NULL,4,2,'product','Memory Card',NULL,NULL,'2022-03-01 13:02:33','2022-03-01 13:02:33'),(6,'Cover',2,NULL,4,2,'product','Cover',NULL,NULL,'2022-03-01 13:03:49','2022-03-01 13:03:49');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorizables`
--

DROP TABLE IF EXISTS `categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorizables` (
  `category_id` int(11) NOT NULL,
  `categorizable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorizable_id` bigint(20) unsigned NOT NULL,
  KEY `categorizables_categorizable_type_categorizable_id_index` (`categorizable_type`,`categorizable_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorizables`
--

LOCK TABLES `categorizables` WRITE;
/*!40000 ALTER TABLE `categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(10) unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_business_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `tax_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_term_number` int(11) DEFAULT NULL,
  `pay_term_type` enum('days','months') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_limit` decimal(22,4) DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `balance` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `total_rp` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `total_rp_used` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `total_rp_expired` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_custom_field_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_export` tinyint(1) NOT NULL DEFAULT 0,
  `export_custom_field_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_custom_field_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_custom_field_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_custom_field_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_custom_field_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_custom_field_6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `custom_field1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field8` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field9` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field10` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `contacts_business_id_foreign` (`business_id`) USING BTREE,
  KEY `contacts_created_by_foreign` (`created_by`) USING BTREE,
  KEY `contacts_type_index` (`type`) USING BTREE,
  KEY `contacts_contact_status_index` (`contact_status`) USING BTREE,
  CONSTRAINT `contacts_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  CONSTRAINT `contacts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` (`id`, `business_id`, `type`, `supplier_business_name`, `name`, `prefix`, `first_name`, `middle_name`, `last_name`, `email`, `contact_id`, `contact_status`, `tax_number`, `city`, `state`, `country`, `address_line_1`, `address_line_2`, `zip_code`, `dob`, `mobile`, `landline`, `alternate_number`, `pay_term_number`, `pay_term_type`, `credit_limit`, `created_by`, `balance`, `total_rp`, `total_rp_used`, `total_rp_expired`, `is_default`, `shipping_address`, `shipping_custom_field_details`, `is_export`, `export_custom_field_1`, `export_custom_field_2`, `export_custom_field_3`, `export_custom_field_4`, `export_custom_field_5`, `export_custom_field_6`, `position`, `customer_group_id`, `custom_field1`, `custom_field2`, `custom_field3`, `custom_field4`, `custom_field5`, `custom_field6`, `custom_field7`, `custom_field8`, `custom_field9`, `custom_field10`, `deleted_at`, `created_at`, `updated_at`) VALUES (1,1,'customer',NULL,'Walk-In Customer',NULL,NULL,NULL,NULL,NULL,'CO0001','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,0.0000,1,0.0000,0,0,0,1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(2,1,'supplier',NULL,' Realme Company  ',NULL,'Realme Company',NULL,NULL,NULL,'CO0002','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'01755457896',NULL,NULL,NULL,NULL,NULL,1,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-12-28 02:17:35','2021-12-28 02:17:35'),(3,1,'customer',NULL,'Mr  Sumon  Dutta','Mr ','Sumon',NULL,'Dutta',NULL,'CO0003','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0175956808/2',NULL,NULL,NULL,NULL,NULL,1,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-01 02:10:10','2022-01-01 02:10:10'),(4,1,'supplier',NULL,' c  ',NULL,'c',NULL,NULL,NULL,'CO0004','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'01755457896',NULL,NULL,NULL,NULL,NULL,1,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-19 16:16:14','2022-01-19 16:16:14'),(5,1,'supplier','new shop','mr Sea Source  Foods International','mr','Sea Source',NULL,'Foods International',NULL,'CO0005','active',NULL,NULL,NULL,NULL,'China Tower,',NULL,NULL,NULL,'21251251',NULL,NULL,NULL,NULL,NULL,1,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-24 17:42:08','2022-02-24 17:42:08'),(6,1,'customer','google','mr Sea Source  Foods International','mr','Sea Source',NULL,'Foods International',NULL,'CO0006','active',NULL,NULL,NULL,NULL,'China Tower,',NULL,NULL,NULL,'+8801711329283',NULL,NULL,NULL,NULL,NULL,1,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-24 17:51:28','2022-02-24 17:51:28'),(7,1,'supplier','BD shops','mr Jabul  ','mr','Jabul',NULL,NULL,NULL,'CO0007','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'01754216',NULL,NULL,NULL,NULL,NULL,1,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-25 04:10:28','2022-02-25 04:10:28'),(8,1,'supplier',NULL,' fg  ',NULL,'fg',NULL,NULL,NULL,'CO0008','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fg',NULL,NULL,NULL,NULL,NULL,1,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 07:37:21','2022-02-28 07:37:21'),(9,1,'supplier',NULL,'mr Sea Source  Foods International','mr','Sea Source',NULL,'Foods International',NULL,'CO0009','active',NULL,NULL,NULL,NULL,'China Tower,',NULL,NULL,NULL,'01755457896',NULL,NULL,NULL,NULL,NULL,1,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 07:40:31','2022-02-28 07:40:31'),(10,2,'customer',NULL,'Walk-In Customer',NULL,NULL,NULL,NULL,NULL,'CO0001','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,0.0000,2,0.0000,0,0,0,1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-01 06:27:04','2022-03-01 06:27:04'),(11,2,'supplier','Test','mr Test  ','mr','Test',NULL,NULL,NULL,'CO0002','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0123',NULL,NULL,NULL,NULL,NULL,2,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 16:52:09','2022-03-01 13:18:09','2022-03-02 16:52:09'),(12,1,'customer',NULL,'mr Sonali  Roy','mr','Sonali',NULL,'Roy',NULL,'CO0010','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+8801711329283',NULL,NULL,NULL,NULL,NULL,1,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 12:17:09','2022-03-02 12:17:09'),(13,1,'supplier',NULL,'mr Sonalo  roy','mr','Sonalo',NULL,'roy',NULL,'CO0011','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+8801711329283',NULL,NULL,NULL,NULL,NULL,1,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 12:20:53','2022-03-02 12:20:53'),(14,2,'supplier','tona telecom',' masud  ',NULL,'masud',NULL,NULL,NULL,'CO0003','active',NULL,NULL,NULL,NULL,'JESSORE',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,2,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 16:14:16','2022-03-02 16:14:16'),(15,2,'customer',NULL,'mr test  rahaman','mr','test',NULL,'rahaman',NULL,'CO0004','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'7',NULL,NULL,NULL,NULL,NULL,2,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 17:29:13','2022-03-02 17:29:13'),(16,2,'supplier','the mobile store',' PIYAL  ',NULL,'PIYAL',NULL,NULL,NULL,'CO0005','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,2,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 18:11:29','2022-03-02 18:11:29'),(17,2,'customer',NULL,' ANUPOM DUTTA  ',NULL,'ANUPOM DUTTA',NULL,NULL,NULL,'CO0006','active',NULL,NULL,NULL,NULL,'keshabpur',NULL,NULL,NULL,'01711211335',NULL,NULL,NULL,NULL,NULL,2,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 18:13:47','2022-03-02 18:13:47'),(18,2,'supplier','the mobile store',' DIPU  ',NULL,'DIPU',NULL,NULL,NULL,'CO0007','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8',NULL,NULL,NULL,NULL,NULL,2,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 00:21:13','2022-03-03 00:21:13'),(19,2,'supplier','siraj and co',' RUBEL  ',NULL,'RUBEL',NULL,NULL,NULL,'CO0008','active',NULL,NULL,NULL,NULL,'JESSORE',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,2,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 01:02:32','2022-03-03 01:02:32'),(20,1,'supplier',NULL,' g  ',NULL,'g',NULL,NULL,NULL,'CO0012','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fg',NULL,NULL,NULL,NULL,NULL,1,0.0000,0,0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 05:09:12','2022-03-03 05:09:12');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thousand_separator` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_separator` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` (`id`, `country`, `currency`, `code`, `symbol`, `thousand_separator`, `decimal_separator`, `created_at`, `updated_at`) VALUES (1,'Albania','Leke','ALL','Lek',',','.',NULL,NULL),(2,'America','Dollars','USD','$',',','.',NULL,NULL),(3,'Afghanistan','Afghanis','AF','؋',',','.',NULL,NULL),(4,'Argentina','Pesos','ARS','$',',','.',NULL,NULL),(5,'Aruba','Guilders','AWG','ƒ',',','.',NULL,NULL),(6,'Australia','Dollars','AUD','$',',','.',NULL,NULL),(7,'Azerbaijan','New Manats','AZ','ман',',','.',NULL,NULL),(8,'Bahamas','Dollars','BSD','$',',','.',NULL,NULL),(9,'Barbados','Dollars','BBD','$',',','.',NULL,NULL),(10,'Belarus','Rubles','BYR','p.',',','.',NULL,NULL),(11,'Belgium','Euro','EUR','€',',','.',NULL,NULL),(12,'Beliz','Dollars','BZD','BZ$',',','.',NULL,NULL),(13,'Bermuda','Dollars','BMD','$',',','.',NULL,NULL),(14,'Bolivia','Bolivianos','BOB','$b',',','.',NULL,NULL),(15,'Bosnia and Herzegovina','Convertible Marka','BAM','KM',',','.',NULL,NULL),(16,'Botswana','Pula\'s','BWP','P',',','.',NULL,NULL),(17,'Bulgaria','Leva','BG','лв',',','.',NULL,NULL),(18,'Brazil','Reais','BRL','R$',',','.',NULL,NULL),(19,'Britain [United Kingdom]','Pounds','GBP','£',',','.',NULL,NULL),(20,'Brunei Darussalam','Dollars','BND','$',',','.',NULL,NULL),(21,'Cambodia','Riels','KHR','៛',',','.',NULL,NULL),(22,'Canada','Dollars','CAD','$',',','.',NULL,NULL),(23,'Cayman Islands','Dollars','KYD','$',',','.',NULL,NULL),(24,'Chile','Pesos','CLP','$',',','.',NULL,NULL),(25,'China','Yuan Renminbi','CNY','¥',',','.',NULL,NULL),(26,'Colombia','Pesos','COP','$',',','.',NULL,NULL),(27,'Costa Rica','Colón','CRC','₡',',','.',NULL,NULL),(28,'Croatia','Kuna','HRK','kn',',','.',NULL,NULL),(29,'Cuba','Pesos','CUP','₱',',','.',NULL,NULL),(30,'Cyprus','Euro','EUR','€','.',',',NULL,NULL),(31,'Czech Republic','Koruny','CZK','Kč',',','.',NULL,NULL),(32,'Denmark','Kroner','DKK','kr',',','.',NULL,NULL),(33,'Dominican Republic','Pesos','DOP ','RD$',',','.',NULL,NULL),(34,'East Caribbean','Dollars','XCD','$',',','.',NULL,NULL),(35,'Egypt','Pounds','EGP','£',',','.',NULL,NULL),(36,'El Salvador','Colones','SVC','$',',','.',NULL,NULL),(37,'England [United Kingdom]','Pounds','GBP','£',',','.',NULL,NULL),(38,'Euro','Euro','EUR','€','.',',',NULL,NULL),(39,'Falkland Islands','Pounds','FKP','£',',','.',NULL,NULL),(40,'Fiji','Dollars','FJD','$',',','.',NULL,NULL),(41,'France','Euro','EUR','€','.',',',NULL,NULL),(42,'Ghana','Cedis','GHS','¢',',','.',NULL,NULL),(43,'Gibraltar','Pounds','GIP','£',',','.',NULL,NULL),(44,'Greece','Euro','EUR','€','.',',',NULL,NULL),(45,'Guatemala','Quetzales','GTQ','Q',',','.',NULL,NULL),(46,'Guernsey','Pounds','GGP','£',',','.',NULL,NULL),(47,'Guyana','Dollars','GYD','$',',','.',NULL,NULL),(48,'Holland [Netherlands]','Euro','EUR','€','.',',',NULL,NULL),(49,'Honduras','Lempiras','HNL','L',',','.',NULL,NULL),(50,'Hong Kong','Dollars','HKD','$',',','.',NULL,NULL),(51,'Hungary','Forint','HUF','Ft',',','.',NULL,NULL),(52,'Iceland','Kronur','ISK','kr',',','.',NULL,NULL),(53,'India','Rupees','INR','₹',',','.',NULL,NULL),(54,'Indonesia','Rupiahs','IDR','Rp',',','.',NULL,NULL),(55,'Iran','Rials','IRR','﷼',',','.',NULL,NULL),(56,'Ireland','Euro','EUR','€','.',',',NULL,NULL),(57,'Isle of Man','Pounds','IMP','£',',','.',NULL,NULL),(58,'Israel','New Shekels','ILS','₪',',','.',NULL,NULL),(59,'Italy','Euro','EUR','€','.',',',NULL,NULL),(60,'Jamaica','Dollars','JMD','J$',',','.',NULL,NULL),(61,'Japan','Yen','JPY','¥',',','.',NULL,NULL),(62,'Jersey','Pounds','JEP','£',',','.',NULL,NULL),(63,'Kazakhstan','Tenge','KZT','лв',',','.',NULL,NULL),(64,'Korea [North]','Won','KPW','₩',',','.',NULL,NULL),(65,'Korea [South]','Won','KRW','₩',',','.',NULL,NULL),(66,'Kyrgyzstan','Soms','KGS','лв',',','.',NULL,NULL),(67,'Laos','Kips','LAK','₭',',','.',NULL,NULL),(68,'Latvia','Lati','LVL','Ls',',','.',NULL,NULL),(69,'Lebanon','Pounds','LBP','£',',','.',NULL,NULL),(70,'Liberia','Dollars','LRD','$',',','.',NULL,NULL),(71,'Liechtenstein','Switzerland Francs','CHF','CHF',',','.',NULL,NULL),(72,'Lithuania','Litai','LTL','Lt',',','.',NULL,NULL),(73,'Luxembourg','Euro','EUR','€','.',',',NULL,NULL),(74,'Macedonia','Denars','MKD','ден',',','.',NULL,NULL),(75,'Malaysia','Ringgits','MYR','RM',',','.',NULL,NULL),(76,'Malta','Euro','EUR','€','.',',',NULL,NULL),(77,'Mauritius','Rupees','MUR','₨',',','.',NULL,NULL),(78,'Mexico','Pesos','MXN','$',',','.',NULL,NULL),(79,'Mongolia','Tugriks','MNT','₮',',','.',NULL,NULL),(80,'Mozambique','Meticais','MZ','MT',',','.',NULL,NULL),(81,'Namibia','Dollars','NAD','$',',','.',NULL,NULL),(82,'Nepal','Rupees','NPR','₨',',','.',NULL,NULL),(83,'Netherlands Antilles','Guilders','ANG','ƒ',',','.',NULL,NULL),(84,'Netherlands','Euro','EUR','€','.',',',NULL,NULL),(85,'New Zealand','Dollars','NZD','$',',','.',NULL,NULL),(86,'Nicaragua','Cordobas','NIO','C$',',','.',NULL,NULL),(87,'Nigeria','Nairas','NGN','₦',',','.',NULL,NULL),(88,'North Korea','Won','KPW','₩',',','.',NULL,NULL),(89,'Norway','Krone','NOK','kr',',','.',NULL,NULL),(90,'Oman','Rials','OMR','﷼',',','.',NULL,NULL),(91,'Pakistan','Rupees','PKR','₨',',','.',NULL,NULL),(92,'Panama','Balboa','PAB','B/.',',','.',NULL,NULL),(93,'Paraguay','Guarani','PYG','Gs',',','.',NULL,NULL),(94,'Peru','Nuevos Soles','PE','S/.',',','.',NULL,NULL),(95,'Philippines','Pesos','PHP','Php',',','.',NULL,NULL),(96,'Poland','Zlotych','PL','zł',',','.',NULL,NULL),(97,'Qatar','Rials','QAR','﷼',',','.',NULL,NULL),(98,'Romania','New Lei','RO','lei',',','.',NULL,NULL),(99,'Russia','Rubles','RUB','руб',',','.',NULL,NULL),(100,'Saint Helena','Pounds','SHP','£',',','.',NULL,NULL),(101,'Saudi Arabia','Riyals','SAR','﷼',',','.',NULL,NULL),(102,'Serbia','Dinars','RSD','Дин.',',','.',NULL,NULL),(103,'Seychelles','Rupees','SCR','₨',',','.',NULL,NULL),(104,'Singapore','Dollars','SGD','$',',','.',NULL,NULL),(105,'Slovenia','Euro','EUR','€','.',',',NULL,NULL),(106,'Solomon Islands','Dollars','SBD','$',',','.',NULL,NULL),(107,'Somalia','Shillings','SOS','S',',','.',NULL,NULL),(108,'South Africa','Rand','ZAR','R',',','.',NULL,NULL),(109,'South Korea','Won','KRW','₩',',','.',NULL,NULL),(110,'Spain','Euro','EUR','€','.',',',NULL,NULL),(111,'Sri Lanka','Rupees','LKR','₨',',','.',NULL,NULL),(112,'Sweden','Kronor','SEK','kr',',','.',NULL,NULL),(113,'Switzerland','Francs','CHF','CHF',',','.',NULL,NULL),(114,'Suriname','Dollars','SRD','$',',','.',NULL,NULL),(115,'Syria','Pounds','SYP','£',',','.',NULL,NULL),(116,'Taiwan','New Dollars','TWD','NT$',',','.',NULL,NULL),(117,'Thailand','Baht','THB','฿',',','.',NULL,NULL),(118,'Trinidad and Tobago','Dollars','TTD','TT$',',','.',NULL,NULL),(119,'Turkey','Lira','TRY','TL',',','.',NULL,NULL),(120,'Turkey','Liras','TRL','£',',','.',NULL,NULL),(121,'Tuvalu','Dollars','TVD','$',',','.',NULL,NULL),(122,'Ukraine','Hryvnia','UAH','₴',',','.',NULL,NULL),(123,'United Kingdom','Pounds','GBP','£',',','.',NULL,NULL),(124,'United States of America','Dollars','USD','$',',','.',NULL,NULL),(125,'Uruguay','Pesos','UYU','$U',',','.',NULL,NULL),(126,'Uzbekistan','Sums','UZS','лв',',','.',NULL,NULL),(127,'Vatican City','Euro','EUR','€','.',',',NULL,NULL),(128,'Venezuela','Bolivares Fuertes','VEF','Bs',',','.',NULL,NULL),(129,'Vietnam','Dong','VND','₫',',','.',NULL,NULL),(130,'Yemen','Rials','YER','﷼',',','.',NULL,NULL),(131,'Zimbabwe','Zimbabwe Dollars','ZWD','Z$',',','.',NULL,NULL),(132,'Iraq','Iraqi dinar','IQD','د.ع',',','.',NULL,NULL),(133,'Kenya','Kenyan shilling','KES','KSh',',','.',NULL,NULL),(134,'Bangladesh','Taka','BDT','৳',',','.',NULL,NULL),(135,'Algerie','Algerian dinar','DZD','د.ج',' ','.',NULL,NULL),(136,'United Arab Emirates','United Arab Emirates dirham','AED','د.إ',',','.',NULL,NULL),(137,'Uganda','Uganda shillings','UGX','USh',',','.',NULL,NULL),(138,'Tanzania','Tanzanian shilling','TZS','TSh',',','.',NULL,NULL),(139,'Angola','Kwanza','AOA','Kz',',','.',NULL,NULL),(140,'Kuwait','Kuwaiti dinar','KWD','KD',',','.',NULL,NULL),(141,'Bahrain','Bahraini dinar','BHD','BD',',','.',NULL,NULL);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_groups`
--

DROP TABLE IF EXISTS `customer_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(5,2) NOT NULL,
  `price_calculation_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'percentage',
  `selling_price_group_id` int(11) DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `customer_groups_business_id_foreign` (`business_id`) USING BTREE,
  KEY `customer_groups_created_by_index` (`created_by`) USING BTREE,
  KEY `customer_groups_price_calculation_type_index` (`price_calculation_type`) USING BTREE,
  KEY `customer_groups_selling_price_group_id_index` (`selling_price_group_id`) USING BTREE,
  CONSTRAINT `customer_groups_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_groups`
--

LOCK TABLES `customer_groups` WRITE;
/*!40000 ALTER TABLE `customer_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_configurations`
--

DROP TABLE IF EXISTS `dashboard_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_configurations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(10) unsigned NOT NULL,
  `created_by` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dashboard_configurations_business_id_foreign` (`business_id`) USING BTREE,
  CONSTRAINT `dashboard_configurations_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_configurations`
--

LOCK TABLES `dashboard_configurations` WRITE;
/*!40000 ALTER TABLE `dashboard_configurations` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_variations`
--

DROP TABLE IF EXISTS `discount_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_variations` (
  `discount_id` int(11) NOT NULL,
  `variation_id` int(11) NOT NULL,
  KEY `discount_variations_discount_id_index` (`discount_id`) USING BTREE,
  KEY `discount_variations_variation_id_index` (`variation_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_variations`
--

LOCK TABLES `discount_variations` WRITE;
/*!40000 ALTER TABLE `discount_variations` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `discount_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `applicable_in_spg` tinyint(1) DEFAULT 0,
  `applicable_in_cg` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `discounts_business_id_index` (`business_id`) USING BTREE,
  KEY `discounts_brand_id_index` (`brand_id`) USING BTREE,
  KEY `discounts_category_id_index` (`category_id`) USING BTREE,
  KEY `discounts_location_id_index` (`location_id`) USING BTREE,
  KEY `discounts_priority_index` (`priority`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_and_notes`
--

DROP TABLE IF EXISTS `document_and_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_and_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(11) NOT NULL,
  `notable_id` int(11) NOT NULL,
  `notable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `document_and_notes_business_id_index` (`business_id`) USING BTREE,
  KEY `document_and_notes_notable_id_index` (`notable_id`) USING BTREE,
  KEY `document_and_notes_created_by_index` (`created_by`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_and_notes`
--

LOCK TABLES `document_and_notes` WRITE;
/*!40000 ALTER TABLE `document_and_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_and_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `expense_categories_business_id_foreign` (`business_id`) USING BTREE,
  CONSTRAINT `expense_categories_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_categories`
--

LOCK TABLES `expense_categories` WRITE;
/*!40000 ALTER TABLE `expense_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_sub_taxes`
--

DROP TABLE IF EXISTS `group_sub_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_sub_taxes` (
  `group_tax_id` int(10) unsigned NOT NULL,
  `tax_id` int(10) unsigned NOT NULL,
  KEY `group_sub_taxes_group_tax_id_foreign` (`group_tax_id`) USING BTREE,
  KEY `group_sub_taxes_tax_id_foreign` (`tax_id`) USING BTREE,
  CONSTRAINT `group_sub_taxes_group_tax_id_foreign` FOREIGN KEY (`group_tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `group_sub_taxes_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_sub_taxes`
--

LOCK TABLES `group_sub_taxes` WRITE;
/*!40000 ALTER TABLE `group_sub_taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_sub_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imeis`
--

DROP TABLE IF EXISTS `imeis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imeis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `variation_id` bigint(20) NOT NULL,
  `purchase_line_id` int(11) NOT NULL,
  `imei1` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `imei2` varchar(191) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imeis`
--

LOCK TABLES `imeis` WRITE;
/*!40000 ALTER TABLE `imeis` DISABLE KEYS */;
INSERT INTO `imeis` (`id`, `business_id`, `product_id`, `variation_id`, `purchase_line_id`, `imei1`, `imei2`, `status`, `created_at`, `updated_at`) VALUES (1,1,27,34,1,'Imei-111','Imei-112',0,'2022-02-24 06:31:15','2022-02-24 06:31:15'),(2,1,27,34,1,'Imei-121','Imei-122',0,'2022-02-24 06:31:15','2022-02-24 06:31:15'),(3,1,27,35,2,'Imei-211','Imei-212',0,'2022-02-24 06:31:15','2022-02-24 06:31:15'),(4,1,27,35,2,'Imei-221','Imei-222',0,'2022-02-24 06:31:15','2022-02-24 06:31:15'),(5,1,28,36,3,'Imei-311','Imei-312',1,'2022-02-24 06:31:15','2022-02-24 07:44:01'),(6,1,28,36,3,'Imei-321','Imei-322',0,'2022-02-24 06:31:15','2022-02-24 06:31:15'),(7,1,28,37,4,'Imei-411','Imei-412',1,'2022-02-24 06:31:15','2022-03-04 21:14:43'),(8,1,28,37,4,'Imei-421','Imei-422',0,'2022-02-24 06:31:15','2022-02-24 06:31:15'),(9,1,28,36,5,'Black-Real-40','Black-Real-41',1,'2022-02-24 06:44:40','2022-02-24 06:46:28'),(10,1,29,38,6,'12121rt','er515121',1,'2022-02-24 17:47:23','2022-02-24 17:51:43'),(11,1,29,38,6,'546465465','66dgzgv',0,'2022-02-24 17:47:23','2022-02-24 17:47:23'),(12,1,29,38,6,'986956','654654',0,'2022-02-24 17:47:23','2022-02-24 17:47:23'),(13,1,29,38,6,'66erg','dd5645',0,'2022-02-24 17:47:23','2022-02-24 17:47:23'),(14,1,30,39,10,'ghcj','hgjm g',0,'2022-02-25 05:53:33','2022-02-25 05:53:33'),(15,1,30,39,10,'jgh','gcjm',0,'2022-02-25 05:53:33','2022-02-25 05:53:33'),(16,1,30,39,10,'njhcg','fgcn',0,'2022-02-25 05:53:33','2022-02-25 05:53:33'),(17,1,30,39,10,'ng cv','vcn',0,'2022-02-25 05:53:33','2022-02-25 05:53:33'),(18,1,30,39,10,'nc v','nfgcn',1,'2022-02-25 05:53:33','2022-02-25 06:00:05'),(20,1,31,40,11,'khihdh56565','nkdbnkljbn56546',1,'2022-02-28 06:26:48','2022-03-03 06:01:13'),(21,1,31,40,11,'bidfgbh22','nnlkn236',1,'2022-02-28 06:26:48','2022-03-04 21:16:46'),(22,1,31,40,11,'iuhoiuho1341','hgiuho41354',1,'2022-02-28 06:26:48','2022-03-04 19:03:02'),(23,1,35,44,18,'fgdxc','df',0,'2022-02-28 07:38:11','2022-02-28 07:38:11'),(24,1,34,43,19,'uyhuyhg','tt',0,'2022-02-28 07:38:11','2022-02-28 07:38:11'),(25,1,35,44,20,'213213','hfgdh',0,'2022-02-28 07:41:26','2022-02-28 07:41:26'),(26,1,35,44,20,'254324523.','dfhht',0,'2022-02-28 07:41:26','2022-02-28 07:41:26'),(27,1,35,44,20,'35345','54',0,'2022-02-28 07:41:26','2022-02-28 07:41:26'),(28,1,35,44,20,'453','666666666666666663',1,'2022-02-28 07:41:26','2022-03-04 06:41:23'),(29,1,35,44,20,'4563','456',0,'2022-02-28 07:41:26','2022-02-28 07:41:26'),(30,1,35,44,20,'2452','2452',1,'2022-02-28 07:41:26','2022-03-04 06:42:54'),(31,1,35,44,20,'524','454',0,'2022-02-28 07:41:26','2022-02-28 07:41:26'),(32,1,35,44,22,'df','gds',0,'2022-02-28 07:48:10','2022-02-28 07:48:10'),(36,1,37,48,32,'221121213','221121214',1,'2022-02-28 21:00:05','2022-03-04 20:28:35'),(35,1,37,47,31,'221121211','221121212',1,'2022-02-28 21:00:05','2022-03-04 06:33:02'),(37,1,38,49,33,'5465gf5df','dsgfdshgfd',0,'2022-03-01 01:27:53','2022-03-01 01:27:53'),(38,1,38,49,33,'860898050141619','56df',0,'2022-03-01 01:27:53','2022-03-01 01:27:53'),(39,1,38,49,33,'665gsdf','65gdf',0,'2022-03-01 01:27:53','2022-03-01 01:27:53'),(40,1,38,49,33,'dflhnkl5642','5631232132',0,'2022-03-01 01:27:53','2022-03-01 01:27:53'),(41,1,38,49,33,'4156415gdfgs','4165456',0,'2022-03-01 01:27:53','2022-03-01 01:27:53'),(42,1,38,49,33,'56656','656',0,'2022-03-01 01:27:53','2022-03-01 01:27:53'),(43,1,38,49,33,'526252','2226oiholjnol',0,'2022-03-01 01:27:53','2022-03-01 01:27:53'),(44,1,38,49,33,'hkl65232860898050141619860898050141619','86089805017541619',0,'2022-03-01 01:27:53','2022-03-01 01:27:53'),(45,1,38,49,33,'45','151552',0,'2022-03-01 01:27:53','2022-03-01 01:27:53'),(46,1,38,49,33,'55574ers','sryytre',0,'2022-03-01 01:27:53','2022-03-01 01:27:53'),(47,1,40,51,34,'Mobile-01110','Mobile-01111',0,'2022-03-01 04:26:59','2022-03-01 04:26:59'),(48,1,40,51,34,'Mobile-01112','Mobile-01113',0,'2022-03-01 04:26:59','2022-03-01 04:26:59'),(73,2,49,60,51,'861142050988870','',1,'2022-03-02 16:17:30','2022-03-03 03:09:00'),(72,2,49,60,51,'861142050987898','',0,'2022-03-02 16:17:30','2022-03-02 16:17:30'),(71,2,49,60,51,'861142051191656','',1,'2022-03-02 16:17:30','2022-03-03 03:11:01'),(53,1,42,53,37,'454654165','',0,'2022-03-02 12:28:18','2022-03-02 12:28:18'),(54,1,42,53,38,'757585','',1,'2022-03-02 12:29:39','2022-03-02 13:15:47'),(55,1,42,53,38,'77fgbx','',0,'2022-03-02 12:29:39','2022-03-02 12:29:39'),(56,1,42,53,38,'dzfz4ds56','',0,'2022-03-02 12:29:39','2022-03-02 12:29:39'),(57,1,42,53,38,'5646541651463zsd','',1,'2022-03-02 12:29:39','2022-03-02 13:12:52'),(58,1,42,53,39,'5151csaas','aSFC74AWE6GZ5A',1,'2022-03-02 13:16:38','2022-03-02 13:17:27'),(59,1,45,56,41,'GSR57','RTDSF132',0,'2022-03-02 13:25:42','2022-03-02 13:25:42'),(60,1,45,56,42,'2312','.21',0,'2022-03-02 13:29:37','2022-03-02 13:29:37'),(61,1,46,57,44,'321321356665dfhfgfd','fdgh654656323fdh',0,'2022-03-02 15:19:11','2022-03-02 15:19:11'),(62,1,46,57,45,'4654654fsdsd','454654654',0,'2022-03-02 15:20:24','2022-03-02 15:20:24'),(63,1,46,57,45,'dsfgsdfg','',0,'2022-03-02 15:20:24','2022-03-02 15:20:24'),(68,1,48,59,49,',m,lmg,.;hnd','1531313',0,'2022-03-02 15:52:34','2022-03-02 15:52:34'),(65,1,47,58,47,'maeni1dsffssdd','',0,'2022-03-02 15:30:11','2022-03-02 15:30:11'),(66,1,47,58,47,'mai4465464','@gihi65#',0,'2022-03-02 15:30:11','2022-03-02 15:30:11'),(67,1,47,58,48,'\\\'gh241123','',0,'2022-03-02 15:34:24','2022-03-02 15:34:24'),(69,1,48,59,49,'13213213','fghfx',0,'2022-03-02 15:52:34','2022-03-02 15:52:34'),(70,1,48,59,50,'dgvxgfvd','',0,'2022-03-02 15:56:29','2022-03-02 15:56:29'),(74,2,49,60,51,'861142053092738','',0,'2022-03-02 16:17:30','2022-03-02 16:17:30'),(75,2,49,60,51,'861142052995915','',1,'2022-03-02 16:17:30','2022-03-03 03:07:49'),(76,2,50,61,52,'867587051024170','',0,'2022-03-02 16:36:15','2022-03-02 16:36:15'),(77,2,50,61,52,'867587050741592','',0,'2022-03-02 16:36:15','2022-03-02 16:36:15'),(83,2,53,64,55,'862487057476356','',0,'2022-03-02 16:48:51','2022-03-02 16:48:51'),(79,2,52,63,54,'862060057360571','',0,'2022-03-02 16:40:35','2022-03-02 16:40:35'),(80,2,52,63,54,'862060059165796','',0,'2022-03-02 16:40:35','2022-03-02 16:40:35'),(81,2,52,63,54,'862060058608994','',0,'2022-03-02 16:40:35','2022-03-02 16:40:35'),(82,2,52,63,54,'862060057360779','',0,'2022-03-02 16:40:35','2022-03-02 16:40:35'),(84,2,53,64,55,'862487056728658','',0,'2022-03-02 16:48:51','2022-03-02 16:48:51'),(85,2,53,64,55,'862487057989796','',0,'2022-03-02 16:48:51','2022-03-02 16:48:51'),(86,2,53,64,55,'862487056730316','',0,'2022-03-02 16:48:51','2022-03-02 16:48:51'),(87,2,56,67,56,'861983053863036','',0,'2022-03-02 17:00:32','2022-03-02 17:00:32'),(88,2,57,68,57,'863534059481998','',0,'2022-03-02 17:02:15','2022-03-02 17:02:15'),(89,2,55,66,58,'866766059528314','',1,'2022-03-02 17:03:37','2022-03-03 03:10:11'),(91,2,54,65,60,'861829059969238','',1,'2022-03-02 17:05:57','2022-03-03 03:06:57'),(98,2,49,60,63,'868126069614034','',0,'2022-03-02 23:57:58','2022-03-02 23:57:58'),(97,2,49,60,63,'868126069575854','',0,'2022-03-02 23:57:58','2022-03-02 23:57:58'),(96,2,59,70,62,'861286050303059','',1,'2022-03-02 18:13:06','2022-03-02 18:14:00'),(99,2,49,60,63,'868126069577876','',0,'2022-03-02 23:57:58','2022-03-02 23:57:58'),(100,2,60,71,64,'867301050554355','',0,'2022-03-03 00:22:46','2022-03-03 00:22:46'),(101,2,62,73,65,'863304051099531','',0,'2022-03-03 00:23:30','2022-03-03 00:23:30'),(102,2,63,74,66,'868477052429298','',1,'2022-03-03 00:24:58','2022-03-05 00:47:09'),(103,2,61,72,67,'864763057852897','',0,'2022-03-03 00:27:10','2022-03-03 00:27:10'),(104,2,61,72,67,'864763055029134','',0,'2022-03-03 00:27:10','2022-03-03 00:27:10'),(105,2,73,84,68,'351465070054697','',0,'2022-03-03 01:03:29','2022-03-03 01:03:29'),(106,2,72,83,69,'350458612122867','',0,'2022-03-03 01:05:00','2022-03-03 01:05:00'),(107,2,68,79,70,'354551894609761','',0,'2022-03-03 01:07:08','2022-03-03 01:07:08'),(108,2,68,79,70,'354551894576028','',0,'2022-03-03 01:07:08','2022-03-03 01:07:08'),(109,2,69,80,71,'358154350307610','',0,'2022-03-03 01:08:03','2022-03-03 01:08:03'),(110,2,71,82,72,'357661640503908','',0,'2022-03-03 01:09:40','2022-03-03 01:09:40'),(111,2,70,81,73,'356032730351718','',0,'2022-03-03 01:10:55','2022-03-03 01:10:55'),(112,2,66,77,74,'350816950439112','',0,'2022-03-03 01:12:14','2022-03-03 01:12:14'),(113,2,66,77,74,'350816950354055','',0,'2022-03-03 01:12:14','2022-03-03 01:12:14'),(114,2,65,76,75,'350414100415719','',0,'2022-03-03 01:12:55','2022-03-03 01:12:55'),(115,2,64,75,76,'357484291063944','',0,'2022-03-03 01:14:42','2022-03-03 01:14:42'),(129,1,76,88,80,'15136','6546',1,'2022-03-03 05:53:53','2022-03-03 05:54:55'),(127,1,75,87,79,'bhbhbhbhbhbhbhbhbhbhbhkh','jkj',1,'2022-03-03 05:09:16','2022-03-04 19:03:02'),(128,1,75,87,79,'bkkk','kkkkkkkh',0,'2022-03-03 05:09:16','2022-03-03 05:09:16'),(126,1,75,86,78,'jhjhjhjhjhjhjhjhjh','jhjhjhjhjhjhjhjhjhjbh',1,'2022-03-03 05:09:16','2022-03-04 06:48:07'),(125,1,75,86,78,'jhb,nb','nbk,jh',0,'2022-03-03 05:09:16','2022-03-03 05:09:16'),(130,1,76,88,80,'131','226',1,'2022-03-03 05:53:53','2022-03-03 05:54:44');
/*!40000 ALTER TABLE `imeis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_layouts`
--

DROP TABLE IF EXISTS `invoice_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_layouts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_no_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading_line1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading_line2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading_line3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading_line4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading_line5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_heading_not_paid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_heading_paid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `round_off_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_due_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_client_id` tinyint(1) NOT NULL DEFAULT 0,
  `client_id_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_tax_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_time` tinyint(1) NOT NULL DEFAULT 1,
  `show_brand` tinyint(1) NOT NULL DEFAULT 0,
  `show_sku` tinyint(1) NOT NULL DEFAULT 1,
  `show_cat_code` tinyint(1) NOT NULL DEFAULT 1,
  `show_expiry` tinyint(1) NOT NULL DEFAULT 0,
  `show_lot` tinyint(1) NOT NULL DEFAULT 0,
  `show_image` tinyint(1) NOT NULL DEFAULT 0,
  `show_sale_description` tinyint(1) NOT NULL DEFAULT 0,
  `sales_person_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_sales_person` tinyint(1) NOT NULL DEFAULT 0,
  `table_product_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_qty_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_unit_price_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_subtotal_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_code_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_logo` tinyint(1) NOT NULL DEFAULT 0,
  `show_business_name` tinyint(1) NOT NULL DEFAULT 0,
  `show_location_name` tinyint(1) NOT NULL DEFAULT 1,
  `show_landmark` tinyint(1) NOT NULL DEFAULT 1,
  `show_city` tinyint(1) NOT NULL DEFAULT 1,
  `show_state` tinyint(1) NOT NULL DEFAULT 1,
  `show_zip_code` tinyint(1) NOT NULL DEFAULT 1,
  `show_country` tinyint(1) NOT NULL DEFAULT 1,
  `show_mobile_number` tinyint(1) NOT NULL DEFAULT 1,
  `show_alternate_number` tinyint(1) NOT NULL DEFAULT 0,
  `show_email` tinyint(1) NOT NULL DEFAULT 0,
  `show_tax_1` tinyint(1) NOT NULL DEFAULT 1,
  `show_tax_2` tinyint(1) NOT NULL DEFAULT 0,
  `show_barcode` tinyint(1) NOT NULL DEFAULT 0,
  `show_payments` tinyint(1) NOT NULL DEFAULT 0,
  `show_customer` tinyint(1) NOT NULL DEFAULT 0,
  `customer_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_reward_point` tinyint(1) NOT NULL DEFAULT 0,
  `highlight_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `common_settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `business_id` int(10) unsigned NOT NULL,
  `design` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT 'classic',
  `cn_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cn = credit note',
  `cn_no_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cn_amount_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_tax_headings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_previous_bal` tinyint(1) NOT NULL DEFAULT 0,
  `prev_bal_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change_return_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_fields` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_custom_fields` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_custom_fields` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imei1` tinyint(1) NOT NULL DEFAULT 0,
  `imei2` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `invoice_layouts_business_id_foreign` (`business_id`) USING BTREE,
  CONSTRAINT `invoice_layouts_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_layouts`
--

LOCK TABLES `invoice_layouts` WRITE;
/*!40000 ALTER TABLE `invoice_layouts` DISABLE KEYS */;
INSERT INTO `invoice_layouts` (`id`, `name`, `header_text`, `invoice_no_prefix`, `quotation_no_prefix`, `invoice_heading`, `sub_heading_line1`, `sub_heading_line2`, `sub_heading_line3`, `sub_heading_line4`, `sub_heading_line5`, `invoice_heading_not_paid`, `invoice_heading_paid`, `quotation_heading`, `sub_total_label`, `discount_label`, `tax_label`, `total_label`, `round_off_label`, `total_due_label`, `paid_label`, `show_client_id`, `client_id_label`, `client_tax_label`, `date_label`, `date_time_format`, `show_time`, `show_brand`, `show_sku`, `show_cat_code`, `show_expiry`, `show_lot`, `show_image`, `show_sale_description`, `sales_person_label`, `show_sales_person`, `table_product_label`, `table_qty_label`, `table_unit_price_label`, `table_subtotal_label`, `cat_code_label`, `logo`, `show_logo`, `show_business_name`, `show_location_name`, `show_landmark`, `show_city`, `show_state`, `show_zip_code`, `show_country`, `show_mobile_number`, `show_alternate_number`, `show_email`, `show_tax_1`, `show_tax_2`, `show_barcode`, `show_payments`, `show_customer`, `customer_label`, `show_reward_point`, `highlight_color`, `footer_text`, `module_info`, `common_settings`, `is_default`, `business_id`, `design`, `cn_heading`, `cn_no_label`, `cn_amount_label`, `table_tax_headings`, `show_previous_bal`, `prev_bal_label`, `change_return_label`, `product_custom_fields`, `contact_custom_fields`, `location_custom_fields`, `created_at`, `updated_at`, `imei1`, `imei2`) VALUES (1,'Default',NULL,'Invoice No.',NULL,'Invoice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Subtotal','Discount','Tax','Total',NULL,'Total Due','Total Paid',0,NULL,NULL,'Date',NULL,1,1,1,1,0,0,1,1,NULL,0,'Product','Quantity','Unit Price','Subtotal',NULL,NULL,0,0,1,1,1,1,1,1,1,0,0,1,0,0,1,1,'Customer',0,'#000000',NULL,NULL,'{\"due_date_label\":null,\"total_quantity_label\":null,\"item_discount_label\":null,\"show_warranty_name\":\"1\",\"show_warranty_exp_date\":\"1\",\"show_warranty_description\":\"1\",\"show_total_in_words\":\"1\",\"num_to_word_format\":\"indian\"}',1,1,'slim',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'2021-12-13 15:57:03','2022-03-04 21:13:20',1,1),(2,'Default',NULL,'Invoice No.',NULL,'Invoice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Subtotal','Discount','Tax','Total Payable','Round off','Total Due','Total Paid',0,NULL,NULL,'Date',NULL,1,1,1,1,0,0,0,1,NULL,0,'Product','Quantity','Unit Price','Subtotal',NULL,'1646101608_logo.jpg',0,0,1,0,0,1,1,1,1,1,1,0,0,1,1,1,'Customer',0,'#000000',NULL,NULL,'{\"due_date_label\":null,\"total_quantity_label\":\"Total Quantity\",\"item_discount_label\":null,\"show_warranty_name\":\"1\",\"show_warranty_exp_date\":\"1\",\"show_total_in_words\":\"1\",\"num_to_word_format\":\"international\"}',1,2,'slim',NULL,NULL,NULL,NULL,1,'Previous Due Amount','Return Money',NULL,NULL,NULL,'2022-03-01 06:27:04','2022-03-06 20:02:51',1,1);
/*!40000 ALTER TABLE `invoice_layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_schemes`
--

DROP TABLE IF EXISTS `invoice_schemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_schemes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheme_type` enum('blank','year') COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_number` int(11) DEFAULT NULL,
  `invoice_count` int(11) NOT NULL DEFAULT 0,
  `total_digits` int(11) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `invoice_schemes_business_id_foreign` (`business_id`) USING BTREE,
  KEY `invoice_schemes_scheme_type_index` (`scheme_type`) USING BTREE,
  CONSTRAINT `invoice_schemes_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_schemes`
--

LOCK TABLES `invoice_schemes` WRITE;
/*!40000 ALTER TABLE `invoice_schemes` DISABLE KEYS */;
INSERT INTO `invoice_schemes` (`id`, `business_id`, `name`, `scheme_type`, `prefix`, `start_number`, `invoice_count`, `total_digits`, `is_default`, `created_at`, `updated_at`) VALUES (1,1,'Default','blank','',1,42,4,1,'2021-12-13 15:57:03','2022-03-07 02:20:43'),(2,2,'Default','blank','',1,12,4,1,'2022-03-01 06:27:04','2022-03-05 00:47:09');
/*!40000 ALTER TABLE `invoice_schemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(11) NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uploaded_by` int(11) DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_media_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`) USING BTREE,
  KEY `media_business_id_index` (`business_id`) USING BTREE,
  KEY `media_uploaded_by_index` (`uploaded_by`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` (`id`, `business_id`, `file_name`, `description`, `uploaded_by`, `model_type`, `model_media_type`, `model_id`, `created_at`, `updated_at`) VALUES (1,1,'1640578601_1099842997_realme-8-pro-ofic-1.jpg',NULL,1,'App\\Variation',NULL,1,'2021-12-28 02:16:41','2021-12-28 02:16:41'),(2,1,'1640932900_1093794411_download.jpg',NULL,1,'App\\Variation',NULL,3,'2022-01-01 04:41:40','2022-01-01 04:41:40'),(3,1,'1645722877_692024985_realme-8-pro-ofic-1.jpg',NULL,1,'App\\Variation',NULL,39,'2022-02-25 04:14:37','2022-02-25 04:14:37'),(4,2,'1646101194_1792259404_realme-8-pro-ofic-1.jpg',NULL,2,'App\\Variation',NULL,52,'2022-03-01 13:19:54','2022-03-01 13:19:54'),(5,1,'1646244782_844758252_download.jpg',NULL,1,'App\\Variation',NULL,88,'2022-03-03 05:13:02','2022-03-03 05:13:02');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2017_07_05_071953_create_currencies_table',1),(9,'2017_07_05_073658_create_business_table',1),(10,'2017_07_22_075923_add_business_id_users_table',1),(11,'2017_07_23_113209_create_brands_table',1),(12,'2017_07_26_083429_create_permission_tables',1),(13,'2017_07_26_110000_create_tax_rates_table',1),(14,'2017_07_26_122313_create_units_table',1),(15,'2017_07_27_075706_create_contacts_table',1),(16,'2017_08_04_071038_create_categories_table',1),(17,'2017_08_08_115903_create_products_table',1),(18,'2017_08_09_061616_create_variation_templates_table',1),(19,'2017_08_09_061638_create_variation_value_templates_table',1),(20,'2017_08_10_061146_create_product_variations_table',1),(21,'2017_08_10_061216_create_variations_table',1),(22,'2017_08_19_054827_create_transactions_table',1),(23,'2017_08_31_073533_create_purchase_lines_table',1),(24,'2017_10_15_064638_create_transaction_payments_table',1),(25,'2017_10_31_065621_add_default_sales_tax_to_business_table',1),(26,'2017_11_20_051930_create_table_group_sub_taxes',1),(27,'2017_11_20_063603_create_transaction_sell_lines',1),(28,'2017_11_21_064540_create_barcodes_table',1),(29,'2017_11_23_181237_create_invoice_schemes_table',1),(30,'2017_12_25_122822_create_business_locations_table',1),(31,'2017_12_25_160253_add_location_id_to_transactions_table',1),(32,'2017_12_25_163227_create_variation_location_details_table',1),(33,'2018_01_04_115627_create_sessions_table',1),(34,'2018_01_05_112817_create_invoice_layouts_table',1),(35,'2018_01_06_112303_add_invoice_scheme_id_and_invoice_layout_id_to_business_locations',1),(36,'2018_01_08_104124_create_expense_categories_table',1),(37,'2018_01_08_123327_modify_transactions_table_for_expenses',1),(38,'2018_01_09_111005_modify_payment_status_in_transactions_table',1),(39,'2018_01_09_111109_add_paid_on_column_to_transaction_payments_table',1),(40,'2018_01_25_172439_add_printer_related_fields_to_business_locations_table',1),(41,'2018_01_27_184322_create_printers_table',1),(42,'2018_01_30_181442_create_cash_registers_table',1),(43,'2018_01_31_125836_create_cash_register_transactions_table',1),(44,'2018_02_07_173326_modify_business_table',1),(45,'2018_02_08_105425_add_enable_product_expiry_column_to_business_table',1),(46,'2018_02_08_111027_add_expiry_period_and_expiry_period_type_columns_to_products_table',1),(47,'2018_02_08_131118_add_mfg_date_and_exp_date_purchase_lines_table',1),(48,'2018_02_08_155348_add_exchange_rate_to_transactions_table',1),(49,'2018_02_09_124945_modify_transaction_payments_table_for_contact_payments',1),(50,'2018_02_12_113640_create_transaction_sell_lines_purchase_lines_table',1),(51,'2018_02_12_114605_add_quantity_sold_in_purchase_lines_table',1),(52,'2018_02_13_183323_alter_decimal_fields_size',1),(53,'2018_02_14_161928_add_transaction_edit_days_to_business_table',1),(54,'2018_02_15_161032_add_document_column_to_transactions_table',1),(55,'2018_02_17_124709_add_more_options_to_invoice_layouts',1),(56,'2018_02_19_111517_add_keyboard_shortcut_column_to_business_table',1),(57,'2018_02_19_121537_stock_adjustment_move_to_transaction_table',1),(58,'2018_02_20_165505_add_is_direct_sale_column_to_transactions_table',1),(59,'2018_02_21_105329_create_system_table',1),(60,'2018_02_23_100549_version_1_2',1),(61,'2018_02_23_125648_add_enable_editing_sp_from_purchase_column_to_business_table',1),(62,'2018_02_26_103612_add_sales_commission_agent_column_to_business_table',1),(63,'2018_02_26_130519_modify_users_table_for_sales_cmmsn_agnt',1),(64,'2018_02_26_134500_add_commission_agent_to_transactions_table',1),(65,'2018_02_27_121422_add_item_addition_method_to_business_table',1),(66,'2018_02_27_170232_modify_transactions_table_for_stock_transfer',1),(67,'2018_03_05_153510_add_enable_inline_tax_column_to_business_table',1),(68,'2018_03_06_210206_modify_product_barcode_types',1),(69,'2018_03_13_181541_add_expiry_type_to_business_table',1),(70,'2018_03_16_113446_product_expiry_setting_for_business',1),(71,'2018_03_19_113601_add_business_settings_options',1),(72,'2018_03_26_125334_add_pos_settings_to_business_table',1),(73,'2018_03_26_165350_create_customer_groups_table',1),(74,'2018_03_27_122720_customer_group_related_changes_in_tables',1),(75,'2018_03_29_110138_change_tax_field_to_nullable_in_business_table',1),(76,'2018_03_29_115502_add_changes_for_sr_number_in_products_and_sale_lines_table',1),(77,'2018_03_29_134340_add_inline_discount_fields_in_purchase_lines',1),(78,'2018_03_31_140921_update_transactions_table_exchange_rate',1),(79,'2018_04_03_103037_add_contact_id_to_contacts_table',1),(80,'2018_04_03_122709_add_changes_to_invoice_layouts_table',1),(81,'2018_04_09_135320_change_exchage_rate_size_in_business_table',1),(82,'2018_04_17_123122_add_lot_number_to_business',1),(83,'2018_04_17_160845_add_product_racks_table',1),(84,'2018_04_20_182015_create_res_tables_table',1),(85,'2018_04_24_105246_restaurant_fields_in_transaction_table',1),(86,'2018_04_24_114149_add_enabled_modules_business_table',1),(87,'2018_04_24_133704_add_modules_fields_in_invoice_layout_table',1),(88,'2018_04_27_132653_quotation_related_change',1),(89,'2018_05_02_104439_add_date_format_and_time_format_to_business',1),(90,'2018_05_02_111939_add_sell_return_to_transaction_payments',1),(91,'2018_05_14_114027_add_rows_positions_for_products',1),(92,'2018_05_14_125223_add_weight_to_products_table',1),(93,'2018_05_14_164754_add_opening_stock_permission',1),(94,'2018_05_15_134729_add_design_to_invoice_layouts',1),(95,'2018_05_16_183307_add_tax_fields_invoice_layout',1),(96,'2018_05_18_191956_add_sell_return_to_transaction_table',1),(97,'2018_05_21_131349_add_custom_fileds_to_contacts_table',1),(98,'2018_05_21_131607_invoice_layout_fields_for_sell_return',1),(99,'2018_05_21_131949_add_custom_fileds_and_website_to_business_locations_table',1),(100,'2018_05_22_123527_create_reference_counts_table',1),(101,'2018_05_22_154540_add_ref_no_prefixes_column_to_business_table',1),(102,'2018_05_24_132620_add_ref_no_column_to_transaction_payments_table',1),(103,'2018_05_24_161026_add_location_id_column_to_business_location_table',1),(104,'2018_05_25_180603_create_modifiers_related_table',1),(105,'2018_05_29_121714_add_purchase_line_id_to_stock_adjustment_line_table',1),(106,'2018_05_31_114645_add_res_order_status_column_to_transactions_table',1),(107,'2018_06_05_103530_rename_purchase_line_id_in_stock_adjustment_lines_table',1),(108,'2018_06_05_111905_modify_products_table_for_modifiers',1),(109,'2018_06_06_110524_add_parent_sell_line_id_column_to_transaction_sell_lines_table',1),(110,'2018_06_07_152443_add_is_service_staff_to_roles_table',1),(111,'2018_06_07_182258_add_image_field_to_products_table',1),(112,'2018_06_13_133705_create_bookings_table',1),(113,'2018_06_15_173636_add_email_column_to_contacts_table',1),(114,'2018_06_27_182835_add_superadmin_related_fields_business',1),(115,'2018_07_10_101913_add_custom_fields_to_products_table',1),(116,'2018_07_17_103434_add_sales_person_name_label_to_invoice_layouts_table',1),(117,'2018_07_17_163920_add_theme_skin_color_column_to_business_table',1),(118,'2018_07_24_160319_add_lot_no_line_id_to_transaction_sell_lines_table',1),(119,'2018_07_25_110004_add_show_expiry_and_show_lot_colums_to_invoice_layouts_table',1),(120,'2018_07_25_172004_add_discount_columns_to_transaction_sell_lines_table',1),(121,'2018_07_26_124720_change_design_column_type_in_invoice_layouts_table',1),(122,'2018_07_26_170424_add_unit_price_before_discount_column_to_transaction_sell_line_table',1),(123,'2018_07_28_103614_add_credit_limit_column_to_contacts_table',1),(124,'2018_08_08_110755_add_new_payment_methods_to_transaction_payments_table',1),(125,'2018_08_08_122225_modify_cash_register_transactions_table_for_new_payment_methods',1),(126,'2018_08_14_104036_add_opening_balance_type_to_transactions_table',1),(127,'2018_09_04_155900_create_accounts_table',1),(128,'2018_09_06_114438_create_selling_price_groups_table',1),(129,'2018_09_06_154057_create_variation_group_prices_table',1),(130,'2018_09_07_102413_add_permission_to_access_default_selling_price',1),(131,'2018_09_07_134858_add_selling_price_group_id_to_transactions_table',1),(132,'2018_09_10_112448_update_product_type_to_single_if_null_in_products_table',1),(133,'2018_09_10_152703_create_account_transactions_table',1),(134,'2018_09_10_173656_add_account_id_column_to_transaction_payments_table',1),(135,'2018_09_19_123914_create_notification_templates_table',1),(136,'2018_09_22_110504_add_sms_and_email_settings_columns_to_business_table',1),(137,'2018_09_24_134942_add_lot_no_line_id_to_stock_adjustment_lines_table',1),(138,'2018_09_26_105557_add_transaction_payments_for_existing_expenses',1),(139,'2018_09_27_111609_modify_transactions_table_for_purchase_return',1),(140,'2018_09_27_131154_add_quantity_returned_column_to_purchase_lines_table',1),(141,'2018_10_02_131401_add_return_quantity_column_to_transaction_sell_lines_table',1),(142,'2018_10_03_104918_add_qty_returned_column_to_transaction_sell_lines_purchase_lines_table',1),(143,'2018_10_03_185947_add_default_notification_templates_to_database',1),(144,'2018_10_09_153105_add_business_id_to_transaction_payments_table',1),(145,'2018_10_16_135229_create_permission_for_sells_and_purchase',1),(146,'2018_10_22_114441_add_columns_for_variable_product_modifications',1),(147,'2018_10_22_134428_modify_variable_product_data',1),(148,'2018_10_30_181558_add_table_tax_headings_to_invoice_layout',1),(149,'2018_10_31_122619_add_pay_terms_field_transactions_table',1),(150,'2018_10_31_161328_add_new_permissions_for_pos_screen',1),(151,'2018_10_31_174752_add_access_selected_contacts_only_to_users_table',1),(152,'2018_10_31_175627_add_user_contact_access',1),(153,'2018_10_31_180559_add_auto_send_sms_column_to_notification_templates_table',1),(154,'2018_11_02_171949_change_card_type_column_to_varchar_in_transaction_payments_table',1),(155,'2018_11_08_105621_add_role_permissions',1),(156,'2018_11_26_114135_add_is_suspend_column_to_transactions_table',1),(157,'2018_11_28_104410_modify_units_table_for_multi_unit',1),(158,'2018_11_28_170952_add_sub_unit_id_to_purchase_lines_and_sell_lines',1),(159,'2018_11_29_115918_add_primary_key_in_system_table',1),(160,'2018_12_03_185546_add_product_description_column_to_products_table',1),(161,'2018_12_06_114937_modify_system_table_and_users_table',1),(162,'2018_12_13_160007_add_custom_fields_display_options_to_invoice_layouts_table',1),(163,'2018_12_14_103307_modify_system_table',1),(164,'2018_12_18_133837_add_prev_balance_due_columns_to_invoice_layouts_table',1),(165,'2018_12_18_170656_add_invoice_token_column_to_transaction_table',1),(166,'2018_12_20_133639_add_date_time_format_column_to_invoice_layouts_table',1),(167,'2018_12_21_120659_add_recurring_invoice_fields_to_transactions_table',1),(168,'2018_12_24_154933_create_notifications_table',1),(169,'2019_01_08_112015_add_document_column_to_transaction_payments_table',1),(170,'2019_01_10_124645_add_account_permission',1),(171,'2019_01_16_125825_add_subscription_no_column_to_transactions_table',1),(172,'2019_01_28_111647_add_order_addresses_column_to_transactions_table',1),(173,'2019_02_13_173821_add_is_inactive_column_to_products_table',1),(174,'2019_02_19_103118_create_discounts_table',1),(175,'2019_02_21_120324_add_discount_id_column_to_transaction_sell_lines_table',1),(176,'2019_02_21_134324_add_permission_for_discount',1),(177,'2019_03_04_170832_add_service_staff_columns_to_transaction_sell_lines_table',1),(178,'2019_03_09_102425_add_sub_type_column_to_transactions_table',1),(179,'2019_03_09_124457_add_indexing_transaction_sell_lines_purchase_lines_table',1),(180,'2019_03_12_120336_create_activity_log_table',1),(181,'2019_03_15_132925_create_media_table',1),(182,'2019_05_08_130339_add_indexing_to_parent_id_in_transaction_payments_table',1),(183,'2019_05_10_132311_add_missing_column_indexing',1),(184,'2019_05_14_091812_add_show_image_column_to_invoice_layouts_table',1),(185,'2019_05_25_104922_add_view_purchase_price_permission',1),(186,'2019_06_17_103515_add_profile_informations_columns_to_users_table',1),(187,'2019_06_18_135524_add_permission_to_view_own_sales_only',1),(188,'2019_06_19_112058_add_database_changes_for_reward_points',1),(189,'2019_06_28_133732_change_type_column_to_string_in_transactions_table',1),(190,'2019_07_13_111420_add_is_created_from_api_column_to_transactions_table',1),(191,'2019_07_15_165136_add_fields_for_combo_product',1),(192,'2019_07_19_103446_add_mfg_quantity_used_column_to_purchase_lines_table',1),(193,'2019_07_22_152649_add_not_for_selling_in_product_table',1),(194,'2019_07_29_185351_add_show_reward_point_column_to_invoice_layouts_table',1),(195,'2019_08_08_162302_add_sub_units_related_fields',1),(196,'2019_08_26_133419_update_price_fields_decimal_point',1),(197,'2019_09_02_160054_remove_location_permissions_from_roles',1),(198,'2019_09_03_185259_add_permission_for_pos_screen',1),(199,'2019_09_04_163141_add_location_id_to_cash_registers_table',1),(200,'2019_09_04_184008_create_types_of_services_table',1),(201,'2019_09_06_131445_add_types_of_service_fields_to_transactions_table',1),(202,'2019_09_09_134810_add_default_selling_price_group_id_column_to_business_locations_table',1),(203,'2019_09_12_105616_create_product_locations_table',1),(204,'2019_09_17_122522_add_custom_labels_column_to_business_table',1),(205,'2019_09_18_164319_add_shipping_fields_to_transactions_table',1),(206,'2019_09_19_170927_close_all_active_registers',1),(207,'2019_09_23_161906_add_media_description_cloumn_to_media_table',1),(208,'2019_10_18_155633_create_account_types_table',1),(209,'2019_10_22_163335_add_common_settings_column_to_business_table',1),(210,'2019_10_29_132521_add_update_purchase_status_permission',1),(211,'2019_11_09_110522_add_indexing_to_lot_number',1),(212,'2019_11_19_170824_add_is_active_column_to_business_locations_table',1),(213,'2019_11_21_162913_change_quantity_field_types_to_decimal',1),(214,'2019_11_25_160340_modify_categories_table_for_polymerphic_relationship',1),(215,'2019_12_02_105025_create_warranties_table',1),(216,'2019_12_03_180342_add_common_settings_field_to_invoice_layouts_table',1),(217,'2019_12_05_183955_add_more_fields_to_users_table',1),(218,'2019_12_06_174904_add_change_return_label_column_to_invoice_layouts_table',1),(219,'2019_12_11_121307_add_draft_and_quotation_list_permissions',1),(220,'2019_12_12_180126_copy_expense_total_to_total_before_tax',1),(221,'2019_12_19_181412_make_alert_quantity_field_nullable_on_products_table',1),(222,'2019_12_25_173413_create_dashboard_configurations_table',1),(223,'2020_01_08_133506_create_document_and_notes_table',1),(224,'2020_01_09_113252_add_cc_bcc_column_to_notification_templates_table',1),(225,'2020_01_16_174818_add_round_off_amount_field_to_transactions_table',1),(226,'2020_01_28_162345_add_weighing_scale_settings_in_business_settings_table',1),(227,'2020_02_18_172447_add_import_fields_to_transactions_table',1),(228,'2020_03_13_135844_add_is_active_column_to_selling_price_groups_table',1),(229,'2020_03_16_115449_add_contact_status_field_to_contacts_table',1),(230,'2020_03_26_124736_add_allow_login_column_in_users_table',1),(231,'2020_04_13_154150_add_feature_products_column_to_business_loactions',1),(232,'2020_04_15_151802_add_user_type_to_users_table',1),(233,'2020_04_22_153905_add_subscription_repeat_on_column_to_transactions_table',1),(234,'2020_04_28_111436_add_shipping_address_to_contacts_table',1),(235,'2020_06_01_094654_add_max_sale_discount_column_to_users_table',1),(236,'2020_06_12_162245_modify_contacts_table',1),(237,'2020_06_22_103104_change_recur_interval_default_to_one',1),(238,'2020_07_09_174621_add_balance_field_to_contacts_table',1),(239,'2020_07_23_104933_change_status_column_to_varchar_in_transaction_table',1),(240,'2020_09_07_171059_change_completed_stock_transfer_status_to_final',1),(241,'2020_09_21_123224_modify_booking_status_column_in_bookings_table',1),(242,'2020_09_22_121639_create_discount_variations_table',1),(243,'2020_10_05_121550_modify_business_location_table_for_invoice_layout',1),(244,'2020_10_16_175726_set_status_as_received_for_opening_stock',1),(245,'2020_10_23_170823_add_for_group_tax_column_to_tax_rates_table',1),(246,'2020_11_04_130940_add_more_custom_fields_to_contacts_table',1),(247,'2020_11_10_152841_add_cash_register_permissions',1),(248,'2020_11_17_164041_modify_type_column_to_varchar_in_contacts_table',1),(249,'2020_12_18_181447_add_shipping_custom_fields_to_transactions_table',1),(250,'2020_12_22_164303_add_sub_status_column_to_transactions_table',1),(251,'2020_12_24_153050_add_custom_fields_to_transactions_table',1),(252,'2020_12_28_105403_add_whatsapp_text_column_to_notification_templates_table',1),(253,'2020_12_29_165925_add_model_document_type_to_media_table',1),(254,'2021_02_08_175632_add_contact_number_fields_to_users_table',1),(255,'2021_02_11_172217_add_indexing_for_multiple_columns',1),(256,'2021_02_23_122043_add_more_columns_to_customer_groups_table',1),(257,'2021_02_24_175551_add_print_invoice_permission_to_all_roles',1),(258,'2021_03_03_162021_add_purchase_order_columns_to_purchase_lines_and_transactions_table',1),(259,'2021_03_11_120229_add_sales_order_columns',1),(260,'2021_03_16_120705_add_business_id_to_activity_log_table',1),(261,'2021_03_16_153427_add_code_columns_to_business_table',1),(262,'2021_03_18_173308_add_account_details_column_to_accounts_table',1),(263,'2021_03_18_183119_add_prefer_payment_account_columns_to_transactions_table',1),(264,'2021_03_22_120810_add_more_types_of_service_custom_fields',1),(265,'2021_03_24_183132_add_shipping_export_custom_field_details_to_contacts_table',1),(266,'2021_03_25_170715_add_export_custom_fields_info_to_transactions_table',1),(267,'2021_04_15_063449_add_denominations_column_to_cash_registers_table',1),(268,'2021_12_30_095918_create_imeis_table',1),(269,'2022_02_08_000533_add_column_to_imei_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES (1,'App\\User',1),(3,'App\\User',2);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_templates`
--

DROP TABLE IF EXISTS `notification_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(11) NOT NULL,
  `template_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_send` tinyint(1) NOT NULL DEFAULT 0,
  `auto_send_sms` tinyint(1) NOT NULL DEFAULT 0,
  `auto_send_wa_notif` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_templates`
--

LOCK TABLES `notification_templates` WRITE;
/*!40000 ALTER TABLE `notification_templates` DISABLE KEYS */;
INSERT INTO `notification_templates` (`id`, `business_id`, `template_for`, `email_body`, `sms_body`, `whatsapp_text`, `subject`, `cc`, `bcc`, `auto_send`, `auto_send_sms`, `auto_send_wa_notif`, `created_at`, `updated_at`) VALUES (1,1,'new_sale','<p>Dear {contact_name},</p>\n\n                    <p>Your invoice number is {invoice_number}<br />\n                    Total amount: {total_amount}<br />\n                    Paid amount: {received_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>','Dear {contact_name}, Thank you for shopping with us. {business_name}',NULL,'Thank you from {business_name}',NULL,NULL,0,0,0,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(2,1,'payment_received','<p>Dear {contact_name},</p>\n\n                <p>We have received a payment of {received_amount}</p>\n\n                <p>{business_logo}</p>','Dear {contact_name}, We have received a payment of {received_amount}. {business_name}',NULL,'Payment Received, from {business_name}',NULL,NULL,0,0,0,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(3,1,'payment_reminder','<p>Dear {contact_name},</p>\n\n                    <p>This is to remind you that you have pending payment of {due_amount}. Kindly pay it as soon as possible.</p>\n\n                    <p>{business_logo}</p>','Dear {contact_name}, You have pending payment of {due_amount}. Kindly pay it as soon as possible. {business_name}',NULL,'Payment Reminder, from {business_name}',NULL,NULL,0,0,0,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(4,1,'new_booking','<p>Dear {contact_name},</p>\n\n                    <p>Your booking is confirmed</p>\n\n                    <p>Date: {start_time} to {end_time}</p>\n\n                    <p>Table: {table}</p>\n\n                    <p>Location: {location}</p>\n\n                    <p>{business_logo}</p>','Dear {contact_name}, Your booking is confirmed. Date: {start_time} to {end_time}, Table: {table}, Location: {location}',NULL,'Booking Confirmed - {business_name}',NULL,NULL,0,0,0,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(5,1,'new_order','<p>Dear {contact_name},</p>\n\n                    <p>We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>','Dear {contact_name}, We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible. {business_name}',NULL,'New Order, from {business_name}',NULL,NULL,0,0,0,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(6,1,'payment_paid','<p>Dear {contact_name},</p>\n\n                    <p>We have paid amount {paid_amount} again invoice number {order_ref_number}.<br />\n                    Kindly note it down.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>','We have paid amount {paid_amount} again invoice number {order_ref_number}.\n                    Kindly note it down. {business_name}',NULL,'Payment Paid, from {business_name}',NULL,NULL,0,0,0,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(7,1,'items_received','<p>Dear {contact_name},</p>\n\n                    <p>We have received all items from invoice reference number {order_ref_number}. Thank you for processing it.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>','We have received all items from invoice reference number {order_ref_number}. Thank you for processing it. {business_name}',NULL,'Items received, from {business_name}',NULL,NULL,0,0,0,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(8,1,'items_pending','<p>Dear {contact_name},<br />\n                    This is to remind you that we have not yet received some items from invoice reference number {order_ref_number}. Please process it as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>','This is to remind you that we have not yet received some items from invoice reference number {order_ref_number} . Please process it as soon as possible.{business_name}',NULL,'Items Pending, from {business_name}',NULL,NULL,0,0,0,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(9,1,'new_quotation','<p>Dear {contact_name},</p>\n\n                    <p>Your quotation number is {invoice_number}<br />\n                    Total amount: {total_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>','Dear {contact_name}, Thank you for shopping with us. {business_name}',NULL,'Thank you from {business_name}',NULL,NULL,0,0,0,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(10,2,'new_sale','<p>Dear {contact_name},</p>\n\n                    <p>Your invoice number is {invoice_number}<br />\n                    Total amount: {total_amount}<br />\n                    Paid amount: {received_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>','Dear {contact_name}, Thank you for shopping with us. {business_name}',NULL,'Thank you from {business_name}',NULL,NULL,0,0,0,'2022-03-01 06:27:04','2022-03-01 06:27:04'),(11,2,'payment_received','<p>Dear {contact_name},</p>\n\n                <p>We have received a payment of {received_amount}</p>\n\n                <p>{business_logo}</p>','Dear {contact_name}, We have received a payment of {received_amount}. {business_name}',NULL,'Payment Received, from {business_name}',NULL,NULL,0,0,0,'2022-03-01 06:27:04','2022-03-01 06:27:04'),(12,2,'payment_reminder','<p>Dear {contact_name},</p>\n\n                    <p>This is to remind you that you have pending payment of {due_amount}. Kindly pay it as soon as possible.</p>\n\n                    <p>{business_logo}</p>','Dear {contact_name}, You have pending payment of {due_amount}. Kindly pay it as soon as possible. {business_name}',NULL,'Payment Reminder, from {business_name}',NULL,NULL,0,0,0,'2022-03-01 06:27:04','2022-03-01 06:27:04'),(13,2,'new_booking','<p>Dear {contact_name},</p>\n\n                    <p>Your booking is confirmed</p>\n\n                    <p>Date: {start_time} to {end_time}</p>\n\n                    <p>Table: {table}</p>\n\n                    <p>Location: {location}</p>\n\n                    <p>{business_logo}</p>','Dear {contact_name}, Your booking is confirmed. Date: {start_time} to {end_time}, Table: {table}, Location: {location}',NULL,'Booking Confirmed - {business_name}',NULL,NULL,0,0,0,'2022-03-01 06:27:04','2022-03-01 06:27:04'),(14,2,'new_order','<p>Dear {contact_name},</p>\n\n                    <p>We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>','Dear {contact_name}, We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible. {business_name}',NULL,'New Order, from {business_name}',NULL,NULL,0,0,0,'2022-03-01 06:27:04','2022-03-01 06:27:04'),(15,2,'payment_paid','<p>Dear {contact_name},</p>\n\n                    <p>We have paid amount {paid_amount} again invoice number {order_ref_number}.<br />\n                    Kindly note it down.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>','We have paid amount {paid_amount} again invoice number {order_ref_number}.\n                    Kindly note it down. {business_name}',NULL,'Payment Paid, from {business_name}',NULL,NULL,0,0,0,'2022-03-01 06:27:04','2022-03-01 06:27:04'),(16,2,'items_received','<p>Dear {contact_name},</p>\n\n                    <p>We have received all items from invoice reference number {order_ref_number}. Thank you for processing it.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>','We have received all items from invoice reference number {order_ref_number}. Thank you for processing it. {business_name}',NULL,'Items received, from {business_name}',NULL,NULL,0,0,0,'2022-03-01 06:27:04','2022-03-01 06:27:04'),(17,2,'items_pending','<p>Dear {contact_name},<br />\n                    This is to remind you that we have not yet received some items from invoice reference number {order_ref_number}. Please process it as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>','This is to remind you that we have not yet received some items from invoice reference number {order_ref_number} . Please process it as soon as possible.{business_name}',NULL,'Items Pending, from {business_name}',NULL,NULL,0,0,0,'2022-03-01 06:27:04','2022-03-01 06:27:04'),(18,2,'new_quotation','<p>Dear {contact_name},</p>\n\n                    <p>Your quotation number is {invoice_number}<br />\n                    Total amount: {total_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>','Dear {contact_name}, Thank you for shopping with us. {business_name}',NULL,'Thank you from {business_name}',NULL,NULL,0,0,0,'2022-03-01 06:27:04','2022-03-01 06:27:04');
/*!40000 ALTER TABLE `notification_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `oauth_access_tokens_user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `oauth_clients_user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (1,'profit_loss_report.view','web','2021-12-10 04:13:25',NULL),(2,'direct_sell.access','web','2021-12-10 04:13:25',NULL),(3,'product.opening_stock','web','2021-12-10 04:14:12','2021-12-10 04:14:12'),(4,'crud_all_bookings','web','2021-12-10 04:14:31','2021-12-10 04:14:31'),(5,'crud_own_bookings','web','2021-12-10 04:14:31','2021-12-10 04:14:31'),(6,'access_default_selling_price','web','2021-12-10 04:14:52','2021-12-10 04:14:52'),(7,'purchase.payments','web','2021-12-10 04:15:03','2021-12-10 04:15:03'),(8,'sell.payments','web','2021-12-10 04:15:03','2021-12-10 04:15:03'),(9,'edit_product_price_from_sale_screen','web','2021-12-10 04:15:07','2021-12-10 04:15:07'),(10,'edit_product_discount_from_sale_screen','web','2021-12-10 04:15:07','2021-12-10 04:15:07'),(11,'roles.view','web','2021-12-10 04:15:09','2021-12-10 04:15:09'),(12,'roles.create','web','2021-12-10 04:15:09','2021-12-10 04:15:09'),(13,'roles.update','web','2021-12-10 04:15:09','2021-12-10 04:15:09'),(14,'roles.delete','web','2021-12-10 04:15:09','2021-12-10 04:15:09'),(15,'account.access','web','2021-12-10 04:15:19','2021-12-10 04:15:19'),(16,'discount.access','web','2021-12-10 04:15:25','2021-12-10 04:15:25'),(17,'view_purchase_price','web','2021-12-10 04:15:39','2021-12-10 04:15:39'),(18,'view_own_sell_only','web','2021-12-10 04:15:40','2021-12-10 04:15:40'),(19,'edit_product_discount_from_pos_screen','web','2021-12-10 04:15:55','2021-12-10 04:15:55'),(20,'edit_product_price_from_pos_screen','web','2021-12-10 04:15:55','2021-12-10 04:15:55'),(21,'access_shipping','web','2021-12-10 04:16:01','2021-12-10 04:16:01'),(22,'purchase.update_status','web','2021-12-10 04:16:04','2021-12-10 04:16:04'),(23,'list_drafts','web','2021-12-10 04:16:14','2021-12-10 04:16:14'),(24,'list_quotations','web','2021-12-10 04:16:14','2021-12-10 04:16:14'),(25,'view_cash_register','web','2021-12-10 04:16:45','2021-12-10 04:16:45'),(26,'close_cash_register','web','2021-12-10 04:16:45','2021-12-10 04:16:45'),(27,'print_invoice','web','2021-12-10 04:17:11','2021-12-10 04:17:11'),(28,'user.view','web','2021-12-10 04:23:59',NULL),(29,'user.create','web','2021-12-10 04:23:59',NULL),(30,'user.update','web','2021-12-10 04:23:59',NULL),(31,'user.delete','web','2021-12-10 04:23:59',NULL),(32,'supplier.view','web','2021-12-10 04:23:59',NULL),(33,'supplier.create','web','2021-12-10 04:23:59',NULL),(34,'supplier.update','web','2021-12-10 04:23:59',NULL),(35,'supplier.delete','web','2021-12-10 04:23:59',NULL),(36,'customer.view','web','2021-12-10 04:23:59',NULL),(37,'customer.create','web','2021-12-10 04:23:59',NULL),(38,'customer.update','web','2021-12-10 04:23:59',NULL),(39,'customer.delete','web','2021-12-10 04:23:59',NULL),(40,'product.view','web','2021-12-10 04:23:59',NULL),(41,'product.create','web','2021-12-10 04:23:59',NULL),(42,'product.update','web','2021-12-10 04:23:59',NULL),(43,'product.delete','web','2021-12-10 04:23:59',NULL),(44,'purchase.view','web','2021-12-10 04:23:59',NULL),(45,'purchase.create','web','2021-12-10 04:23:59',NULL),(46,'purchase.update','web','2021-12-10 04:23:59',NULL),(47,'purchase.delete','web','2021-12-10 04:23:59',NULL),(48,'sell.view','web','2021-12-10 04:23:59',NULL),(49,'sell.create','web','2021-12-10 04:23:59',NULL),(50,'sell.update','web','2021-12-10 04:23:59',NULL),(51,'sell.delete','web','2021-12-10 04:23:59',NULL),(52,'purchase_n_sell_report.view','web','2021-12-10 04:23:59',NULL),(53,'contacts_report.view','web','2021-12-10 04:23:59',NULL),(54,'stock_report.view','web','2021-12-10 04:23:59',NULL),(55,'tax_report.view','web','2021-12-10 04:23:59',NULL),(56,'trending_product_report.view','web','2021-12-10 04:23:59',NULL),(57,'register_report.view','web','2021-12-10 04:23:59',NULL),(58,'sales_representative.view','web','2021-12-10 04:23:59',NULL),(59,'expense_report.view','web','2021-12-10 04:23:59',NULL),(60,'business_settings.access','web','2021-12-10 04:23:59',NULL),(61,'barcode_settings.access','web','2021-12-10 04:23:59',NULL),(62,'invoice_settings.access','web','2021-12-10 04:23:59',NULL),(63,'brand.view','web','2021-12-10 04:23:59',NULL),(64,'brand.create','web','2021-12-10 04:23:59',NULL),(65,'brand.update','web','2021-12-10 04:23:59',NULL),(66,'brand.delete','web','2021-12-10 04:23:59',NULL),(67,'tax_rate.view','web','2021-12-10 04:23:59',NULL),(68,'tax_rate.create','web','2021-12-10 04:23:59',NULL),(69,'tax_rate.update','web','2021-12-10 04:23:59',NULL),(70,'tax_rate.delete','web','2021-12-10 04:23:59',NULL),(71,'unit.view','web','2021-12-10 04:23:59',NULL),(72,'unit.create','web','2021-12-10 04:23:59',NULL),(73,'unit.update','web','2021-12-10 04:23:59',NULL),(74,'unit.delete','web','2021-12-10 04:23:59',NULL),(75,'category.view','web','2021-12-10 04:23:59',NULL),(76,'category.create','web','2021-12-10 04:23:59',NULL),(77,'category.update','web','2021-12-10 04:23:59',NULL),(78,'category.delete','web','2021-12-10 04:23:59',NULL),(79,'expense.access','web','2021-12-10 04:23:59',NULL),(80,'access_all_locations','web','2021-12-10 04:23:59',NULL),(81,'dashboard.data','web','2021-12-10 04:23:59',NULL),(82,'location.1','web','2021-12-13 15:57:03','2021-12-13 15:57:03'),(83,'location.2','web','2022-02-15 05:03:43','2022-02-15 05:03:43'),(84,'location.3','web','2022-03-01 06:27:04','2022-03-01 06:27:04');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printers`
--

DROP TABLE IF EXISTS `printers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `printers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection_type` enum('network','windows','linux') COLLATE utf8mb4_unicode_ci NOT NULL,
  `capability_profile` enum('default','simple','SP2000','TEP-200M','P822D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `char_per_line` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `printers_business_id_foreign` (`business_id`) USING BTREE,
  CONSTRAINT `printers_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printers`
--

LOCK TABLES `printers` WRITE;
/*!40000 ALTER TABLE `printers` DISABLE KEYS */;
/*!40000 ALTER TABLE `printers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_locations`
--

DROP TABLE IF EXISTS `product_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_locations` (
  `product_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  KEY `product_locations_product_id_index` (`product_id`) USING BTREE,
  KEY `product_locations_location_id_index` (`location_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_locations`
--

LOCK TABLES `product_locations` WRITE;
/*!40000 ALTER TABLE `product_locations` DISABLE KEYS */;
INSERT INTO `product_locations` (`product_id`, `location_id`) VALUES (27,1),(28,1),(29,1),(30,1),(30,2),(31,1),(31,2),(32,1),(33,1),(33,2),(34,1),(34,2),(35,1),(35,2),(36,1),(37,1),(38,1),(39,1),(40,1),(41,3),(42,1),(42,2),(44,1),(45,2),(46,1),(46,2),(47,1),(48,1),(49,3),(50,3),(51,3),(52,3),(53,3),(54,3),(55,3),(56,3),(57,3),(58,3),(59,3),(60,3),(61,3),(62,3),(63,3),(64,3),(65,3),(66,3),(67,3),(68,3),(69,3),(70,3),(71,3),(72,3),(73,3),(74,3),(75,1),(76,1),(76,2),(77,1),(78,3),(79,3),(80,1),(80,2),(81,1),(81,2),(82,1),(82,2),(83,1),(83,2);
/*!40000 ALTER TABLE `product_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_racks`
--

DROP TABLE IF EXISTS `product_racks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_racks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `rack` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `product_racks_business_id_index` (`business_id`) USING BTREE,
  KEY `product_racks_location_id_index` (`location_id`) USING BTREE,
  KEY `product_racks_product_id_index` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_racks`
--

LOCK TABLES `product_racks` WRITE;
/*!40000 ALTER TABLE `product_racks` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_racks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variations`
--

DROP TABLE IF EXISTS `product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_variations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `variation_template_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `is_dummy` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `product_variations_name_index` (`name`) USING BTREE,
  KEY `product_variations_product_id_index` (`product_id`) USING BTREE,
  CONSTRAINT `product_variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variations`
--

LOCK TABLES `product_variations` WRITE;
/*!40000 ALTER TABLE `product_variations` DISABLE KEYS */;
INSERT INTO `product_variations` (`id`, `variation_template_id`, `name`, `product_id`, `is_dummy`, `created_at`, `updated_at`) VALUES (27,6,'Color',27,0,'2022-02-24 06:18:14','2022-02-24 06:18:14'),(28,6,'Color',28,0,'2022-02-24 06:19:10','2022-02-24 06:19:10'),(29,NULL,'DUMMY',29,1,'2022-02-24 17:39:59','2022-02-24 17:39:59'),(30,NULL,'DUMMY',30,1,'2022-02-25 04:14:37','2022-02-25 04:14:37'),(31,NULL,'DUMMY',31,1,'2022-02-28 06:24:34','2022-02-28 06:24:34'),(32,NULL,'DUMMY',32,1,'2022-02-28 06:45:18','2022-02-28 06:45:18'),(33,NULL,'DUMMY',33,1,'2022-02-28 06:54:24','2022-02-28 06:54:24'),(34,NULL,'DUMMY',34,1,'2022-02-28 07:28:30','2022-02-28 07:28:30'),(35,NULL,'DUMMY',35,1,'2022-02-28 07:30:35','2022-02-28 07:30:35'),(37,6,'Color',37,0,'2022-02-28 20:58:01','2022-02-28 20:58:01'),(38,NULL,'DUMMY',38,1,'2022-03-01 01:22:09','2022-03-01 01:22:09'),(39,NULL,'DUMMY',39,1,'2022-03-01 01:42:59','2022-03-01 01:42:59'),(40,NULL,'DUMMY',40,1,'2022-03-01 04:25:40','2022-03-01 04:25:40'),(42,NULL,'DUMMY',42,1,'2022-03-02 12:18:41','2022-03-02 12:18:41'),(43,NULL,'DUMMY',43,1,'2022-03-02 12:24:56','2022-03-02 12:24:56'),(44,NULL,'DUMMY',44,1,'2022-03-02 13:21:14','2022-03-02 13:21:14'),(45,NULL,'DUMMY',45,1,'2022-03-02 13:24:22','2022-03-02 13:24:22'),(46,NULL,'DUMMY',46,1,'2022-03-02 15:11:41','2022-03-02 15:11:41'),(47,NULL,'DUMMY',47,1,'2022-03-02 15:27:46','2022-03-02 15:27:46'),(48,NULL,'DUMMY',48,1,'2022-03-02 15:51:43','2022-03-02 15:51:43'),(49,NULL,'DUMMY',49,1,'2022-03-02 16:12:35','2022-03-02 16:12:35'),(50,NULL,'DUMMY',50,1,'2022-03-02 16:33:56','2022-03-02 16:33:56'),(52,NULL,'DUMMY',52,1,'2022-03-02 16:38:55','2022-03-02 16:38:55'),(53,NULL,'DUMMY',53,1,'2022-03-02 16:46:05','2022-03-02 16:46:05'),(54,NULL,'DUMMY',54,1,'2022-03-02 16:52:23','2022-03-02 16:52:23'),(55,NULL,'DUMMY',55,1,'2022-03-02 16:54:53','2022-03-02 16:54:53'),(56,NULL,'DUMMY',56,1,'2022-03-02 16:57:04','2022-03-02 16:57:04'),(57,NULL,'DUMMY',57,1,'2022-03-02 16:59:11','2022-03-02 16:59:11'),(59,NULL,'DUMMY',59,1,'2022-03-02 18:10:56','2022-03-02 18:10:56'),(60,NULL,'DUMMY',60,1,'2022-03-03 00:08:50','2022-03-03 00:08:50'),(61,NULL,'DUMMY',61,1,'2022-03-03 00:14:25','2022-03-03 00:14:25'),(62,NULL,'DUMMY',62,1,'2022-03-03 00:16:23','2022-03-03 00:16:23'),(63,NULL,'DUMMY',63,1,'2022-03-03 00:19:08','2022-03-03 00:19:08'),(64,NULL,'DUMMY',64,1,'2022-03-03 00:41:25','2022-03-03 00:41:25'),(65,NULL,'DUMMY',65,1,'2022-03-03 00:43:24','2022-03-03 00:43:24'),(66,NULL,'DUMMY',66,1,'2022-03-03 00:46:57','2022-03-03 00:46:57'),(67,NULL,'DUMMY',67,1,'2022-03-03 00:48:25','2022-03-03 00:48:25'),(68,NULL,'DUMMY',68,1,'2022-03-03 00:50:28','2022-03-03 00:50:28'),(69,NULL,'DUMMY',69,1,'2022-03-03 00:52:38','2022-03-03 00:52:38'),(70,NULL,'DUMMY',70,1,'2022-03-03 00:56:15','2022-03-03 00:56:15'),(71,NULL,'DUMMY',71,1,'2022-03-03 00:58:38','2022-03-03 00:58:38'),(72,NULL,'DUMMY',72,1,'2022-03-03 00:59:49','2022-03-03 00:59:49'),(73,NULL,'DUMMY',73,1,'2022-03-03 01:01:47','2022-03-03 01:01:47'),(75,6,'Color',75,0,'2022-03-03 05:05:34','2022-03-03 05:05:34'),(76,NULL,'DUMMY',76,1,'2022-03-03 05:10:28','2022-03-03 05:10:28'),(77,NULL,'DUMMY',77,1,'2022-03-04 06:53:25','2022-03-04 06:53:25'),(80,NULL,'DUMMY',80,1,'2022-03-04 21:08:08','2022-03-04 21:08:08'),(81,6,'Color',81,0,'2022-03-05 23:19:26','2022-03-05 23:19:26'),(82,7,'Size',81,0,'2022-03-05 23:19:26','2022-03-05 23:19:26'),(83,6,'Color',82,0,'2022-03-07 02:17:55','2022-03-07 02:17:55'),(84,6,'Color',83,0,'2022-03-07 03:49:49','2022-03-07 03:49:49'),(85,7,'Size',83,0,'2022-03-07 03:49:49','2022-03-07 03:49:49');
/*!40000 ALTER TABLE `product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int(10) unsigned NOT NULL,
  `type` enum('single','variable','modifier','combo') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_id` int(10) unsigned DEFAULT NULL,
  `sub_unit_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(10) unsigned DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `sub_category_id` int(10) unsigned DEFAULT NULL,
  `tax` int(10) unsigned DEFAULT NULL,
  `tax_type` enum('inclusive','exclusive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_stock` tinyint(1) NOT NULL DEFAULT 0,
  `is_accessories` tinyint(1) NOT NULL DEFAULT 0,
  `alert_quantity` decimal(22,2) DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_type` enum('C39','C128','EAN13','EAN8','UPCA','UPCE') COLLATE utf8mb4_unicode_ci DEFAULT 'C128',
  `expiry_period` decimal(4,2) DEFAULT NULL,
  `expiry_period_type` enum('days','months') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_sr_no` tinyint(1) NOT NULL DEFAULT 0,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `warranty_id` int(11) DEFAULT NULL,
  `is_inactive` tinyint(1) NOT NULL DEFAULT 0,
  `not_for_selling` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `products_brand_id_foreign` (`brand_id`) USING BTREE,
  KEY `products_category_id_foreign` (`category_id`) USING BTREE,
  KEY `products_sub_category_id_foreign` (`sub_category_id`) USING BTREE,
  KEY `products_tax_foreign` (`tax`) USING BTREE,
  KEY `products_name_index` (`name`) USING BTREE,
  KEY `products_business_id_index` (`business_id`) USING BTREE,
  KEY `products_unit_id_index` (`unit_id`) USING BTREE,
  KEY `products_created_by_index` (`created_by`) USING BTREE,
  KEY `products_warranty_id_index` (`warranty_id`) USING BTREE,
  KEY `products_type_index` (`type`) USING BTREE,
  KEY `products_tax_type_index` (`tax_type`) USING BTREE,
  KEY `products_barcode_type_index` (`barcode_type`) USING BTREE,
  CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_tax_foreign` FOREIGN KEY (`tax`) REFERENCES `tax_rates` (`id`),
  CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `business_id`, `type`, `unit_id`, `sub_unit_ids`, `brand_id`, `category_id`, `sub_category_id`, `tax`, `tax_type`, `enable_stock`, `is_accessories`, `alert_quantity`, `sku`, `barcode_type`, `expiry_period`, `expiry_period_type`, `enable_sr_no`, `weight`, `product_custom_field1`, `product_custom_field2`, `product_custom_field3`, `product_custom_field4`, `image`, `product_description`, `created_by`, `warranty_id`, `is_inactive`, `not_for_selling`, `created_at`, `updated_at`) VALUES (27,'Samsung Note 9',1,'variable',1,NULL,1,1,NULL,NULL,'exclusive',1,0,NULL,'0001','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'<p>ok</p>',1,NULL,0,0,'2022-02-24 06:18:14','2022-02-24 06:18:14'),(28,'Realme 9 Pro',1,'variable',1,NULL,2,1,NULL,NULL,'exclusive',1,0,NULL,'0002','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0,'2022-02-24 06:19:10','2022-02-24 06:19:39'),(29,'Iphone 13 pro',1,'single',1,NULL,3,1,NULL,NULL,'exclusive',1,0,3.00,'0003','C128',NULL,NULL,1,NULL,'Symphony L33Symphony L33',NULL,NULL,NULL,NULL,NULL,1,1,0,0,'2022-02-24 17:39:59','2022-02-25 05:51:59'),(30,'Symphony L33',1,'single',1,NULL,4,1,NULL,NULL,'exclusive',1,0,1.00,'0004','C128',NULL,NULL,1,NULL,'Symphony L33Symphony L33',NULL,NULL,NULL,NULL,'<h1 class=\"aps-main-title\">Symphony L33</h1>\r\n<h1 class=\"aps-main-title\">Symphony L33</h1>\r\n<h1 class=\"aps-main-title\">Symphony L33</h1>\r\n<h1 class=\"aps-main-title\">Symphony L33</h1>\r\n<h1 class=\"aps-main-title\">Symphony L33</h1>',1,1,0,0,'2022-02-25 04:14:37','2022-02-25 04:19:07'),(31,'Glorious Phone',1,'single',1,NULL,1,1,NULL,NULL,'exclusive',1,0,1.00,'0005','C128',NULL,NULL,1,NULL,'Symphony L33Symphony L33',NULL,NULL,NULL,NULL,'<p>Vivo Y21T comes with 6.51 inches HD+ IPS LCD screen. It has a Full-View waterdrop notch design. The back camera is of triple 13+2+2 MP with PDAF, depth sensor, dedicated macro camera, LED flash etc. and Full HD video recording. The front camera is of 8 MP. Vivo Y21T comes with 5000 mAh battery with 18W fast charging. It has 4 GB RAM, up to 1.8 GHz octa-core CPU and Adreno 610 GPU. It is powered by a Qualcomm Snapdragon 460 (11 nm)&nbsp;chipset. The device comes with 64 GB internal storage and dedicated MicroSD slot. There is a side-mounted fingerprint sensor in this phone.</p>',1,1,0,0,'2022-02-28 06:24:34','2022-02-28 06:24:34'),(32,'Cover',1,'single',1,NULL,3,1,NULL,NULL,'exclusive',1,1,NULL,'0006','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0,'2022-02-28 06:45:18','2022-02-28 06:45:18'),(33,'Walton',1,'single',1,NULL,NULL,NULL,NULL,NULL,'exclusive',1,1,NULL,'0007','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0,'2022-02-28 06:54:24','2022-02-28 07:07:24'),(34,'realme 8 new',1,'single',1,NULL,3,1,NULL,NULL,'exclusive',1,0,1.00,'0034','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,'2022-02-28 07:28:30','2022-02-28 07:28:30'),(35,'my New Phone',1,'single',1,NULL,3,1,NULL,NULL,'exclusive',1,0,NULL,'0035','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0,'2022-02-28 07:30:35','2022-02-28 07:30:35'),(37,'again Test',1,'variable',1,NULL,1,1,NULL,NULL,'exclusive',1,0,NULL,'0036','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'<p>again Test</p>',1,NULL,0,0,'2022-02-28 20:58:01','2022-02-28 20:59:06'),(38,'vivo y 21',1,'single',1,NULL,2,1,NULL,NULL,'exclusive',1,0,1.00,'0037','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,'2022-03-01 01:22:09','2022-03-01 01:22:09'),(39,'vivo y 20',1,'single',1,NULL,2,NULL,NULL,NULL,'exclusive',1,1,NULL,'0038','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0,'2022-03-01 01:42:59','2022-03-01 01:42:59'),(40,'Mobile POS TEST',1,'single',1,NULL,2,1,NULL,NULL,'exclusive',1,0,NULL,'0039','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'<p>Mobile POS TEST</p>',1,NULL,0,0,'2022-03-01 04:25:40','2022-03-01 04:25:40'),(42,'DEV Phone',1,'single',1,NULL,14,1,NULL,NULL,'exclusive',1,0,4.00,'0040','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,'2022-03-02 12:18:41','2022-03-02 12:18:41'),(43,'Demo Product 1',1,'single',1,NULL,3,NULL,NULL,NULL,'exclusive',1,0,NULL,'0041','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0,'2022-03-02 12:24:56','2022-03-02 12:24:56'),(44,'COVWE',1,'single',1,NULL,14,1,NULL,NULL,'exclusive',1,1,NULL,'0042','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'<p>DFHDFGJFGFG</p>',1,NULL,0,0,'2022-03-02 13:21:14','2022-03-02 13:21:14'),(45,'test',1,'single',1,NULL,14,1,NULL,NULL,'exclusive',1,0,NULL,'0043','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0,'2022-03-02 13:24:22','2022-03-02 13:24:22'),(46,'samsung j7',1,'single',1,NULL,1,1,NULL,NULL,'exclusive',1,1,4.00,'0044','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"9\" scope=\"row\">COMMS</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=wi-fi\">WLAN</a></td>\r\n<td class=\"nfo\" data-spec=\"wlan\">Wi-Fi 802.11 b/g/n, Wi-Fi Direct, hotspot</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=bluetooth\">Bluetooth</a></td>\r\n<td class=\"nfo\" data-spec=\"bluetooth\">4.1, A2DP</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gps\">GPS</a></td>\r\n<td class=\"nfo\" data-spec=\"gps\">Yes, with A-GPS, GLONASS</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=nfc\">NFC</a></td>\r\n<td class=\"nfo\" data-spec=\"nfc\">Yes (Snapdragon model only)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=fm-radio\">Radio</a></td>\r\n<td class=\"nfo\" data-spec=\"radio\">FM radio, RDS, recording</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=usb\">USB</a></td>\r\n<td class=\"nfo\" data-spec=\"usb\">microUSB 2.0</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"9\" scope=\"row\">FEATURES</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sensors\">Sensors</a></td>\r\n<td class=\"nfo\" data-spec=\"sensors\">Accelerometer, proximity</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"featuresother\">ANT+</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"7\" scope=\"row\">BATTERY</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"batdescription1\">Li-Ion 3000 mAh, removable</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=talk-time\">Talk time</a></td>\r\n<td class=\"nfo\" data-spec=\"battalktime1\">Up to 18 h (3G)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=music-playback-time\">Music play</a></td>\r\n<td class=\"nfo\" data-spec=\"batmusicplayback1\">Up to 76 h</td>\r\n</tr>\r\n</tbody>\r\n</table>',1,1,0,0,'2022-03-02 15:11:41','2022-03-02 15:22:32'),(47,'samsung j8',1,'single',1,NULL,3,1,NULL,NULL,'exclusive',1,0,1.00,'0045','C128',NULL,NULL,1,'50',NULL,NULL,NULL,NULL,NULL,'<p>dffgvdzgd</p>',1,1,0,0,'2022-03-02 15:27:46','2022-03-02 15:33:40'),(48,'samsung j 9',1,'single',1,NULL,3,1,NULL,NULL,'exclusive',1,0,1.00,'0046','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,'2022-03-02 15:51:43','2022-03-02 15:55:01'),(49,'VIVO Y21',2,'single',2,NULL,12,2,NULL,NULL,'exclusive',1,0,NULL,'0001','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-02 16:12:35','2022-03-02 16:12:35'),(50,'vivo y 20',2,'single',2,NULL,12,2,NULL,NULL,'exclusive',1,0,NULL,'0002','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-02 16:33:56','2022-03-02 16:33:56'),(52,'VIVO Y1S',2,'single',2,NULL,12,2,NULL,NULL,'exclusive',1,0,NULL,'0004','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-02 16:38:55','2022-03-02 16:38:55'),(53,'VIVO Y 15S',2,'single',2,NULL,12,NULL,NULL,NULL,'exclusive',1,0,NULL,'0005','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-02 16:46:05','2022-03-02 16:46:05'),(54,'VIVO Y20G',2,'single',2,NULL,12,NULL,NULL,NULL,'exclusive',1,0,NULL,'0006','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-02 16:52:23','2022-03-02 16:52:23'),(55,'VIVO Y21T',2,'single',2,NULL,12,NULL,NULL,NULL,'exclusive',1,0,NULL,'0007','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-02 16:54:53','2022-03-02 16:54:53'),(56,'vivo  v 21e',2,'single',2,NULL,12,NULL,NULL,NULL,'exclusive',1,0,NULL,'0008','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-02 16:57:04','2022-03-02 16:57:04'),(57,'VIVO V 23 E',2,'single',2,NULL,12,2,NULL,NULL,'exclusive',1,0,NULL,'0009','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-02 16:59:11','2022-03-02 16:59:11'),(59,'REALME 9I',2,'single',2,NULL,6,2,NULL,NULL,'exclusive',1,0,NULL,'0010','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-02 18:10:56','2022-03-02 18:10:56'),(60,'OPPO A95',2,'single',2,NULL,7,2,NULL,NULL,'exclusive',1,0,NULL,'0011','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-03 00:08:50','2022-03-03 00:08:50'),(61,'oppo A16',2,'single',2,NULL,7,2,NULL,NULL,'exclusive',1,0,NULL,'0012','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-03 00:14:25','2022-03-03 00:14:25'),(62,'oppo f 19 pro',2,'single',2,NULL,7,2,NULL,NULL,'exclusive',1,0,NULL,'0013','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-03 00:16:23','2022-03-03 00:16:23'),(63,'OPPO A 54',2,'single',2,NULL,7,2,NULL,NULL,'exclusive',1,0,NULL,'0014','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-03 00:19:08','2022-03-03 00:19:08'),(64,'samsung m 12',2,'single',2,NULL,12,2,NULL,NULL,'exclusive',1,0,NULL,'0015','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-03 00:41:25','2022-03-03 00:41:25'),(65,'SAMSUNG M32',2,'single',2,NULL,5,2,NULL,NULL,'exclusive',1,0,NULL,'0016','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-03 00:43:24','2022-03-03 00:43:24'),(66,'Samsung a12 4/128',2,'single',2,NULL,5,2,NULL,NULL,'exclusive',1,0,NULL,'0017','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-03 00:46:57','2022-03-03 00:46:57'),(67,'Samsung a12 4/128',2,'single',2,NULL,5,2,NULL,NULL,'exclusive',1,0,NULL,'0018','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-03 00:48:25','2022-03-03 00:48:25'),(68,'SAMSUNG A03S',2,'single',2,NULL,5,2,NULL,NULL,'exclusive',1,0,NULL,'0019','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-03 00:50:28','2022-03-03 00:50:28'),(69,'SAMSUNG A52',2,'single',2,NULL,5,2,NULL,NULL,'exclusive',1,0,NULL,'0020','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-03 00:52:38','2022-03-03 00:52:38'),(70,'SAMSUNG A22',2,'single',2,NULL,5,2,NULL,NULL,'exclusive',1,0,NULL,'0021','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-03 00:56:15','2022-03-03 00:56:15'),(71,'SAMSUNG F22',2,'single',2,NULL,5,2,NULL,NULL,'exclusive',1,0,NULL,'0022','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-03 00:58:38','2022-03-03 00:58:38'),(72,'samsung m02(2/32)',2,'single',2,NULL,5,2,NULL,NULL,'exclusive',1,0,NULL,'0023','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-03 00:59:49','2022-03-03 00:59:49'),(73,'SANSUMG A03CORE',2,'single',2,NULL,5,2,NULL,NULL,'exclusive',1,0,NULL,'0024','C128',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,3,0,0,'2022-03-03 01:01:47','2022-03-03 01:01:47'),(75,'mu phone',1,'variable',1,NULL,3,1,NULL,NULL,'exclusive',1,0,NULL,'0047','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0,'2022-03-03 05:05:34','2022-03-03 05:05:34'),(76,'nai Phone',1,'single',1,NULL,3,1,NULL,NULL,'exclusive',1,0,NULL,'0048','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0,'2022-03-03 05:10:28','2022-03-03 05:13:02'),(77,'display',1,'single',1,NULL,2,1,NULL,NULL,'exclusive',1,1,6.00,'0049','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'<p>90u90ujpojpo</p>',1,NULL,0,0,'2022-03-04 06:53:25','2022-03-04 06:57:22'),(80,'Test Phone',1,'single',1,NULL,NULL,NULL,NULL,NULL,'exclusive',1,1,0.00,'0050','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0,'2022-03-04 21:08:08','2022-03-04 21:09:36'),(81,'T shart',1,'variable',1,NULL,1,1,NULL,NULL,'exclusive',1,1,NULL,'0051','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,'2022-03-05 23:19:26','2022-03-05 23:22:02'),(82,'T shart',1,'variable',1,NULL,NULL,NULL,NULL,NULL,'exclusive',1,1,NULL,'0052','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0,'2022-03-07 02:17:55','2022-03-07 02:17:55'),(83,'T shart',1,'variable',1,NULL,3,1,NULL,NULL,'exclusive',1,1,NULL,'0053','C128',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,'2022-03-07 03:49:49','2022-03-07 03:49:49');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_lines`
--

DROP TABLE IF EXISTS `purchase_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_lines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `variation_id` int(10) unsigned NOT NULL,
  `quantity` decimal(22,2) NOT NULL DEFAULT 0.00,
  `pp_without_discount` decimal(22,2) NOT NULL DEFAULT 0.00 COMMENT 'Purchase price before inline discounts',
  `discount_percent` decimal(5,2) NOT NULL DEFAULT 0.00 COMMENT 'Inline discount percentage',
  `purchase_price` decimal(22,2) NOT NULL,
  `purchase_price_inc_tax` decimal(22,2) NOT NULL DEFAULT 0.00,
  `item_tax` decimal(22,2) NOT NULL COMMENT 'Tax for one quantity',
  `tax_id` int(10) unsigned DEFAULT NULL,
  `purchase_order_line_id` int(11) DEFAULT NULL,
  `quantity_sold` decimal(22,2) NOT NULL DEFAULT 0.00 COMMENT 'Quanity sold from this purchase line',
  `quantity_adjusted` decimal(22,2) NOT NULL DEFAULT 0.00 COMMENT 'Quanity adjusted in stock adjustment from this purchase line',
  `quantity_returned` decimal(22,2) NOT NULL DEFAULT 0.00,
  `po_quantity_purchased` decimal(22,2) NOT NULL DEFAULT 0.00,
  `mfg_quantity_used` decimal(22,2) NOT NULL DEFAULT 0.00,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `lot_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_unit_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `purchase_lines_transaction_id_foreign` (`transaction_id`) USING BTREE,
  KEY `purchase_lines_product_id_foreign` (`product_id`) USING BTREE,
  KEY `purchase_lines_variation_id_foreign` (`variation_id`) USING BTREE,
  KEY `purchase_lines_tax_id_foreign` (`tax_id`) USING BTREE,
  KEY `purchase_lines_sub_unit_id_index` (`sub_unit_id`) USING BTREE,
  KEY `purchase_lines_lot_number_index` (`lot_number`) USING BTREE,
  CONSTRAINT `purchase_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `purchase_lines_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `purchase_lines_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `purchase_lines_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_lines`
--

LOCK TABLES `purchase_lines` WRITE;
/*!40000 ALTER TABLE `purchase_lines` DISABLE KEYS */;
INSERT INTO `purchase_lines` (`id`, `transaction_id`, `product_id`, `variation_id`, `quantity`, `pp_without_discount`, `discount_percent`, `purchase_price`, `purchase_price_inc_tax`, `item_tax`, `tax_id`, `purchase_order_line_id`, `quantity_sold`, `quantity_adjusted`, `quantity_returned`, `po_quantity_purchased`, `mfg_quantity_used`, `mfg_date`, `exp_date`, `lot_number`, `sub_unit_id`, `created_at`, `updated_at`) VALUES (1,57,27,34,2.00,65000.00,0.00,65000.00,65000.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-02-24 06:31:15','2022-02-24 06:31:15'),(2,57,27,35,2.00,65000.00,0.00,65000.00,65000.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-02-24 06:31:15','2022-02-24 06:31:15'),(3,57,28,36,2.00,40000.00,0.00,40000.00,40000.00,0.00,NULL,NULL,2.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-02-24 06:31:15','2022-02-24 07:44:01'),(4,57,28,37,2.00,40000.00,0.00,40000.00,40000.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-02-24 06:31:15','2022-03-04 21:14:43'),(5,58,28,36,1.00,40000.00,0.00,40000.00,40000.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-02-24 06:44:40','2022-02-24 06:44:40'),(6,61,29,38,4.00,100.00,0.00,100.00,100.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-02-24 17:47:23','2022-02-24 17:51:43'),(10,66,30,39,5.00,500.00,0.00,500.00,500.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-02-25 05:53:33','2022-02-25 06:00:05'),(11,68,31,40,4.00,1000.00,0.00,1000.00,1000.00,0.00,NULL,NULL,3.00,0.00,1.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-02-28 06:26:48','2022-03-04 21:16:46'),(12,70,32,41,5.00,10.00,0.00,10.00,10.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-02-28 06:48:14','2022-03-04 21:14:43'),(20,76,35,44,7.00,1050.00,0.00,1050.00,1050.00,0.00,NULL,NULL,2.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-02-28 07:41:26','2022-03-04 06:42:54'),(21,77,32,41,1.00,10.00,0.00,10.00,10.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-02-28 07:48:10','2022-02-28 07:48:10'),(22,77,35,44,1.00,1050.00,0.00,1050.00,1050.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-02-28 07:48:10','2022-02-28 07:48:10'),(31,83,37,47,1.00,15000.00,0.00,15000.00,15000.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-02-28 21:00:05','2022-03-04 06:33:02'),(32,83,37,48,1.00,15000.00,0.00,15000.00,15000.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-02-28 21:00:05','2022-03-04 20:28:35'),(33,84,38,49,10.00,7540.00,0.00,7540.00,7540.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-01 01:27:53','2022-03-01 01:27:53'),(34,85,40,51,2.00,8000.00,0.00,8000.00,8000.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-01 04:26:59','2022-03-01 04:26:59'),(37,89,42,53,1.00,10.00,0.00,10.00,10.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 12:28:18','2022-03-02 13:12:52'),(38,90,42,53,4.00,10.00,0.00,10.00,10.00,0.00,NULL,NULL,2.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 12:29:39','2022-03-02 13:17:27'),(39,93,42,53,1.00,10.00,0.00,10.00,10.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 13:16:38','2022-03-02 13:16:38'),(40,95,44,55,100.00,1050.00,0.00,1050.00,1050.00,0.00,NULL,NULL,10.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 13:22:43','2022-03-02 13:23:07'),(41,97,45,56,1.00,500.00,0.00,500.00,500.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 13:25:42','2022-03-02 13:25:42'),(42,98,45,56,1.00,500.00,0.00,500.00,500.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 13:29:37','2022-03-02 13:29:37'),(45,101,46,57,2.00,10.00,0.00,10.00,10.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 15:20:24','2022-03-02 15:20:24'),(46,102,46,57,50.00,10.00,0.00,10.00,10.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 15:23:03','2022-03-02 15:23:03'),(47,103,47,58,3.00,40.00,0.00,40.00,40.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 15:30:11','2022-03-02 15:41:55'),(48,105,47,58,1.00,40.00,0.00,40.00,40.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 15:34:24','2022-03-02 15:34:24'),(49,107,48,59,2.00,500.00,0.00,500.00,500.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 15:52:34','2022-03-02 15:52:34'),(50,108,48,59,1.00,400.00,0.00,400.00,400.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 15:56:29','2022-03-02 15:56:29'),(51,109,49,60,5.00,14010.00,0.00,14010.00,14010.00,0.00,NULL,NULL,3.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 16:17:30','2022-03-03 03:11:01'),(52,110,50,61,2.00,13140.00,0.00,13140.00,13140.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 16:36:15','2022-03-02 16:36:15'),(54,112,52,63,4.00,9470.00,0.00,9470.00,9470.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 16:40:35','2022-03-02 16:40:35'),(55,113,53,64,4.00,11270.00,0.00,11270.00,11270.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 16:48:51','2022-03-02 16:48:51'),(56,114,56,67,1.00,24970.00,0.00,24970.00,24970.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 17:00:32','2022-03-02 17:00:32'),(57,115,57,68,1.00,25990.00,0.00,25990.00,25990.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 17:02:15','2022-03-02 17:02:15'),(58,116,55,66,1.00,16640.00,0.00,16640.00,16640.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 17:03:37','2022-03-03 03:10:11'),(60,118,54,65,1.00,9780.00,0.00,9780.00,9780.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 17:05:57','2022-03-03 03:06:57'),(62,123,59,70,1.00,16340.00,0.00,16340.00,16340.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 18:13:06','2022-03-02 18:14:00'),(63,125,49,60,3.00,14010.00,0.00,14010.00,14010.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-02 23:57:58','2022-03-02 23:57:58'),(64,126,60,71,1.00,21270.00,0.00,21270.00,21270.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 00:22:46','2022-03-03 00:22:46'),(65,127,62,73,1.00,23350.00,0.00,23350.00,23350.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 00:23:30','2022-03-03 00:23:30'),(66,128,63,74,1.00,16640.00,0.00,16640.00,16640.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 00:24:58','2022-03-05 00:47:09'),(67,129,61,72,2.00,14010.00,0.00,14010.00,14010.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 00:27:10','2022-03-03 00:27:10'),(68,130,73,84,1.00,9150.00,0.00,9150.00,9150.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 01:03:29','2022-03-03 01:03:29'),(69,131,72,83,1.00,8120.00,0.00,8120.00,8120.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 01:05:00','2022-03-03 01:05:00'),(70,132,68,79,2.00,12730.00,0.00,12730.00,12730.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 01:07:08','2022-03-03 01:07:08'),(71,133,69,80,1.00,33020.00,0.00,33020.00,33020.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 01:08:03','2022-03-03 01:08:03'),(72,134,71,82,1.00,18870.00,0.00,18870.00,18870.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 01:09:40','2022-03-03 01:09:40'),(73,135,70,81,1.00,21230.00,0.00,21230.00,21230.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 01:10:55','2022-03-03 01:10:55'),(74,136,66,77,2.00,15090.00,0.00,15090.00,15090.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 01:12:14','2022-03-03 01:12:14'),(75,137,65,76,1.00,22640.00,0.00,22640.00,22640.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 01:12:55','2022-03-03 01:12:55'),(76,138,64,75,1.00,17920.00,0.00,17920.00,17920.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 01:14:42','2022-03-03 01:14:42'),(78,148,75,86,2.00,10.00,0.00,10.00,10.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 05:09:16','2022-03-04 06:48:07'),(79,148,75,87,2.00,10.00,0.00,10.00,10.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 05:09:16','2022-03-04 19:03:02'),(80,149,76,88,2.00,10.00,0.00,10.00,10.00,0.00,NULL,NULL,2.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-03 05:53:53','2022-03-03 05:54:55'),(81,157,77,89,100.00,50.00,0.00,50.00,50.00,0.00,NULL,NULL,10.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-04 06:55:31','2022-03-04 21:14:43'),(83,166,81,93,1.00,100.00,0.00,100.00,100.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-05 23:22:42','2022-03-07 02:19:16'),(84,166,81,94,1.00,100.00,0.00,100.00,100.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-05 23:22:42','2022-03-05 23:22:42'),(85,166,81,95,1.00,150.00,0.00,150.00,150.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-05 23:22:42','2022-03-05 23:24:14'),(86,166,81,96,1.00,150.00,0.00,150.00,150.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-05 23:22:42','2022-03-05 23:25:02'),(87,166,81,97,1.00,150.00,0.00,150.00,150.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-05 23:22:42','2022-03-07 02:20:17'),(88,168,81,95,1.00,0.00,0.00,150.00,150.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-05 23:24:14','2022-03-05 23:24:41'),(89,171,81,93,1.00,100.00,0.00,100.00,100.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-07 02:18:52','2022-03-07 02:18:52'),(90,171,81,94,1.00,100.00,0.00,100.00,100.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-07 02:18:52','2022-03-07 02:18:52'),(91,171,81,95,1.00,150.00,0.00,150.00,150.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-07 02:18:52','2022-03-07 02:18:52'),(92,171,81,96,1.00,150.00,0.00,150.00,150.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-07 02:18:52','2022-03-07 02:18:52'),(93,171,81,97,1.00,150.00,0.00,150.00,150.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-07 02:18:52','2022-03-07 02:18:52'),(94,174,81,97,1.00,0.00,0.00,150.00,150.00,0.00,NULL,NULL,1.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-07 02:20:17','2022-03-07 02:20:43'),(95,176,81,93,10.00,100.00,0.00,100.00,100.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-07 03:52:57','2022-03-07 03:52:57'),(96,176,81,94,1.00,100.00,0.00,100.00,100.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-07 03:52:57','2022-03-07 03:52:57'),(97,176,81,95,1.00,150.00,0.00,150.00,150.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-07 03:52:57','2022-03-07 03:52:57'),(98,176,81,96,1.00,150.00,0.00,150.00,150.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-07 03:52:57','2022-03-07 03:52:57'),(99,176,81,97,1.00,150.00,0.00,150.00,150.00,0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'2022-03-07 03:52:57','2022-03-07 03:52:57');
/*!40000 ALTER TABLE `purchase_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_counts`
--

DROP TABLE IF EXISTS `reference_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ref_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_count` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `reference_counts_business_id_index` (`business_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_counts`
--

LOCK TABLES `reference_counts` WRITE;
/*!40000 ALTER TABLE `reference_counts` DISABLE KEYS */;
INSERT INTO `reference_counts` (`id`, `ref_type`, `ref_count`, `business_id`, `created_at`, `updated_at`) VALUES (1,'contacts',12,1,'2021-12-13 15:57:03','2022-03-03 05:09:12'),(2,'business_location',2,1,'2021-12-13 15:57:03','2022-02-15 05:03:43'),(4,'purchase',30,1,'2021-12-31 16:04:26','2022-03-07 03:52:57'),(7,'purchase_payment',11,1,'2022-01-01 01:50:17','2022-03-04 06:55:31'),(8,'sell_payment',27,1,'2022-01-01 02:10:16','2022-03-07 02:20:43'),(9,'draft',1,1,'2022-02-18 07:19:14','2022-02-25 06:00:05'),(10,'sell_return',1,1,'2022-02-28 07:09:58','2022-02-28 07:09:58'),(11,'purchase_return',2,1,'2022-02-28 07:50:11','2022-03-02 15:41:55'),(12,'contacts',8,2,'2022-03-01 06:27:04','2022-03-03 01:02:32'),(13,'business_location',1,2,'2022-03-01 06:27:04','2022-03-01 06:27:04'),(14,'purchase',30,2,'2022-03-01 13:21:09','2022-03-04 19:20:36'),(15,'purchase_payment',25,2,'2022-03-01 13:21:09','2022-03-03 03:09:27'),(16,'sell_payment',15,2,'2022-03-01 13:24:36','2022-03-05 00:47:09'),(17,'draft',2,2,'2022-03-02 17:26:27','2022-03-02 17:27:51'),(18,'sell_return',1,2,'2022-03-03 04:39:02','2022-03-03 04:39:02'),(19,'stock_transfer',2,1,'2022-03-05 23:24:14','2022-03-07 02:20:17');
/*!40000 ALTER TABLE `reference_counts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_product_modifier_sets`
--

DROP TABLE IF EXISTS `res_product_modifier_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `res_product_modifier_sets` (
  `modifier_set_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL COMMENT 'Table use to store the modifier sets applicable for a product',
  KEY `res_product_modifier_sets_modifier_set_id_foreign` (`modifier_set_id`) USING BTREE,
  CONSTRAINT `res_product_modifier_sets_modifier_set_id_foreign` FOREIGN KEY (`modifier_set_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_product_modifier_sets`
--

LOCK TABLES `res_product_modifier_sets` WRITE;
/*!40000 ALTER TABLE `res_product_modifier_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `res_product_modifier_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_tables`
--

DROP TABLE IF EXISTS `res_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `res_tables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `res_tables_business_id_foreign` (`business_id`) USING BTREE,
  CONSTRAINT `res_tables_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_tables`
--

LOCK TABLES `res_tables` WRITE;
/*!40000 ALTER TABLE `res_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `res_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (25,2),(25,4),(26,2),(26,4),(48,2),(48,4),(49,2),(49,4),(50,2),(50,4),(51,2),(51,4),(80,2),(80,4);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int(10) unsigned NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_service_staff` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `roles_business_id_foreign` (`business_id`) USING BTREE,
  CONSTRAINT `roles_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `business_id`, `is_default`, `is_service_staff`, `created_at`, `updated_at`) VALUES (1,'Admin#1','web',1,1,0,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(2,'Cashier#1','web',1,0,0,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(3,'Admin#2','web',2,1,0,'2022-03-01 06:27:03','2022-03-01 06:27:03'),(4,'Cashier#2','web',2,0,0,'2022-03-01 06:27:03','2022-03-01 06:27:03');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sell_line_warranties`
--

DROP TABLE IF EXISTS `sell_line_warranties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sell_line_warranties` (
  `sell_line_id` int(11) NOT NULL,
  `warranty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sell_line_warranties`
--

LOCK TABLES `sell_line_warranties` WRITE;
/*!40000 ALTER TABLE `sell_line_warranties` DISABLE KEYS */;
INSERT INTO `sell_line_warranties` (`sell_line_id`, `warranty_id`) VALUES (41,1),(42,1),(43,1),(44,3),(45,1),(46,1),(47,1),(49,1),(53,3),(54,3),(55,3),(56,3),(57,3),(58,3),(59,3),(60,3),(63,1),(69,1),(74,1),(77,1),(78,3),(80,1),(81,1),(82,1),(84,1);
/*!40000 ALTER TABLE `sell_line_warranties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selling_price_groups`
--

DROP TABLE IF EXISTS `selling_price_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selling_price_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` int(10) unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `selling_price_groups_business_id_foreign` (`business_id`) USING BTREE,
  CONSTRAINT `selling_price_groups_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selling_price_groups`
--

LOCK TABLES `selling_price_groups` WRITE;
/*!40000 ALTER TABLE `selling_price_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `selling_price_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_adjustment_lines`
--

DROP TABLE IF EXISTS `stock_adjustment_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_adjustment_lines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `variation_id` int(10) unsigned NOT NULL,
  `quantity` decimal(22,4) NOT NULL,
  `unit_price` decimal(22,4) DEFAULT NULL COMMENT 'Last purchase unit price',
  `removed_purchase_line` int(11) DEFAULT NULL,
  `lot_no_line_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `stock_adjustment_lines_product_id_foreign` (`product_id`) USING BTREE,
  KEY `stock_adjustment_lines_variation_id_foreign` (`variation_id`) USING BTREE,
  KEY `stock_adjustment_lines_transaction_id_index` (`transaction_id`) USING BTREE,
  KEY `stock_adjustment_lines_lot_no_line_id_index` (`lot_no_line_id`) USING BTREE,
  CONSTRAINT `stock_adjustment_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `stock_adjustment_lines_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `stock_adjustment_lines_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_adjustment_lines`
--

LOCK TABLES `stock_adjustment_lines` WRITE;
/*!40000 ALTER TABLE `stock_adjustment_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_adjustment_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_adjustments_temp`
--

DROP TABLE IF EXISTS `stock_adjustments_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_adjustments_temp` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_adjustments_temp`
--

LOCK TABLES `stock_adjustments_temp` WRITE;
/*!40000 ALTER TABLE `stock_adjustments_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_adjustments_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system`
--

DROP TABLE IF EXISTS `system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system`
--

LOCK TABLES `system` WRITE;
/*!40000 ALTER TABLE `system` DISABLE KEYS */;
INSERT INTO `system` (`id`, `key`, `value`) VALUES (1,'db_version','4.2'),(2,'default_business_active_status','1');
/*!40000 ALTER TABLE `system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rates`
--

DROP TABLE IF EXISTS `tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_rates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(22,4) NOT NULL,
  `is_tax_group` tinyint(1) NOT NULL DEFAULT 0,
  `for_tax_group` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tax_rates_business_id_foreign` (`business_id`) USING BTREE,
  KEY `tax_rates_created_by_foreign` (`created_by`) USING BTREE,
  CONSTRAINT `tax_rates_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tax_rates_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rates`
--

LOCK TABLES `tax_rates` WRITE;
/*!40000 ALTER TABLE `tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_payments`
--

DROP TABLE IF EXISTS `transaction_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` int(10) unsigned DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `is_return` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Used during sales to return the change',
  `amount` decimal(22,2) NOT NULL DEFAULT 0.00,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_transaction_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_security` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_on` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_advance` tinyint(1) NOT NULL DEFAULT 0,
  `payment_for` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_ref_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `transaction_payments_transaction_id_foreign` (`transaction_id`) USING BTREE,
  KEY `transaction_payments_created_by_index` (`created_by`) USING BTREE,
  KEY `transaction_payments_parent_id_index` (`parent_id`) USING BTREE,
  CONSTRAINT `transaction_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_payments`
--

LOCK TABLES `transaction_payments` WRITE;
/*!40000 ALTER TABLE `transaction_payments` DISABLE KEYS */;
INSERT INTO `transaction_payments` (`id`, `transaction_id`, `business_id`, `is_return`, `amount`, `method`, `transaction_no`, `card_transaction_number`, `card_number`, `card_type`, `card_holder_name`, `card_month`, `card_year`, `card_security`, `cheque_number`, `bank_account_number`, `paid_on`, `created_by`, `is_advance`, `payment_for`, `parent_id`, `note`, `document`, `payment_ref_no`, `account_id`, `created_at`, `updated_at`) VALUES (33,57,1,0,420000.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-24 01:38:00',1,0,2,NULL,'ok',NULL,'PP2022/0001',NULL,'2022-02-24 06:39:07','2022-02-24 06:39:07'),(34,58,1,0,40000.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-24 01:39:00',1,0,2,NULL,'ok',NULL,'PP2022/0002',NULL,'2022-02-24 06:44:40','2022-02-24 06:44:40'),(35,59,1,0,50000.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-24 02:12:55',1,0,1,NULL,NULL,NULL,'SP2022/0001',NULL,'2022-02-24 07:12:55','2022-02-24 07:12:55'),(36,60,1,0,50000.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-24 02:17:00',1,0,1,NULL,'ok',NULL,'SP2022/0002',NULL,'2022-02-24 07:44:01','2022-02-24 07:44:01'),(37,61,1,0,200.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-24 12:44:00',1,0,5,NULL,NULL,NULL,'PP2022/0003',NULL,'2022-02-24 17:47:23','2022-02-24 17:47:23'),(38,62,1,0,200.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-24 12:51:43',1,0,6,NULL,NULL,NULL,'SP2022/0003',NULL,'2022-02-24 17:51:43','2022-02-24 17:51:43'),(39,62,1,1,75.00,'cash',NULL,'','','','','',NULL,'','','','2022-02-24 12:51:43',1,0,6,NULL,'',NULL,'SP2022/0004',NULL,'2022-02-24 17:51:43','2022-02-24 17:51:43'),(42,66,1,0,500.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-25 00:52:00',1,0,7,NULL,NULL,NULL,'PP2022/0004',NULL,'2022-02-25 05:53:33','2022-02-25 05:53:33'),(43,68,1,0,2000.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 01:25:00',1,0,5,NULL,NULL,NULL,'PP2022/0005',NULL,'2022-02-28 06:26:48','2022-02-28 06:26:48'),(44,69,1,0,950.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 01:29:18',1,0,1,NULL,NULL,NULL,'SP2022/0005',NULL,'2022-02-28 06:29:18','2022-02-28 06:29:18'),(45,70,1,0,50.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 01:47:00',1,0,5,NULL,NULL,NULL,'PP2022/0006',NULL,'2022-02-28 06:48:14','2022-02-28 06:48:14'),(49,83,1,0,30000.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 15:59:00',1,0,2,NULL,NULL,NULL,'PP2022/0008',NULL,'2022-02-28 21:00:05','2022-02-28 21:00:05'),(50,84,1,0,50100.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 20:23:00',1,0,5,NULL,NULL,NULL,'PP2022/0009',NULL,'2022-03-01 01:27:53','2022-03-01 01:27:53'),(51,85,1,0,16000.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 23:25:00',1,0,2,NULL,'ok',NULL,'PP2022/0010',NULL,'2022-03-01 04:26:59','2022-03-01 04:26:59'),(55,91,1,0,20.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 08:12:52',1,0,1,NULL,NULL,NULL,'SP2022/0006',NULL,'2022-03-02 13:12:52','2022-03-02 13:12:52'),(56,92,1,0,20.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 08:15:47',1,0,1,NULL,NULL,NULL,'SP2022/0007',NULL,'2022-03-02 13:15:47','2022-03-02 13:15:47'),(57,94,1,0,20.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 08:17:27',1,0,1,NULL,NULL,NULL,'SP2022/0008',NULL,'2022-03-02 13:17:27','2022-03-02 13:17:27'),(58,96,1,0,13125.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 08:23:07',1,0,1,NULL,NULL,NULL,'SP2022/0009',NULL,'2022-03-02 13:23:07','2022-03-02 13:23:07'),(59,104,1,0,50.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 10:33:01',1,0,1,NULL,NULL,NULL,'SP2022/0010',NULL,'2022-03-02 15:33:01','2022-03-02 15:33:01'),(60,109,2,0,70050.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 11:12:00',2,0,14,NULL,NULL,NULL,'PP2022/0002',NULL,'2022-03-02 16:17:30','2022-03-02 16:17:30'),(61,110,2,0,26280.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 11:34:00',2,0,14,NULL,NULL,NULL,'PP2022/0003',NULL,'2022-03-02 16:36:15','2022-03-02 16:36:15'),(62,112,2,0,37880.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 11:39:00',2,0,14,NULL,NULL,NULL,'PP2022/0004',NULL,'2022-03-02 16:40:35','2022-03-02 16:40:35'),(63,113,2,0,45080.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 11:46:00',2,0,14,NULL,NULL,NULL,'PP2022/0005',NULL,'2022-03-02 16:48:51','2022-03-02 16:48:51'),(64,114,2,0,24970.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 11:59:00',2,0,14,NULL,NULL,NULL,'PP2022/0006',NULL,'2022-03-02 17:00:32','2022-03-02 17:00:32'),(65,115,2,0,25990.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 12:00:00',2,0,14,NULL,NULL,NULL,'PP2022/0007',NULL,'2022-03-02 17:02:15','2022-03-02 17:02:15'),(66,116,2,0,16640.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 12:02:00',2,0,14,NULL,NULL,NULL,'PP2022/0008',NULL,'2022-03-02 17:03:37','2022-03-02 17:03:37'),(67,118,2,0,9780.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 12:05:00',2,0,14,NULL,NULL,NULL,'PP2022/0009',NULL,'2022-03-02 17:05:57','2022-03-02 17:05:57'),(68,123,2,0,16340.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 13:11:00',2,0,16,NULL,NULL,NULL,'PP2022/0010',NULL,'2022-03-02 18:13:06','2022-03-02 18:13:06'),(69,124,2,0,17500.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 13:14:00',2,0,17,NULL,NULL,NULL,'SP2022/0003',1,'2022-03-02 18:14:00','2022-03-02 18:14:00'),(70,125,2,0,42030.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 18:56:00',2,0,14,NULL,NULL,NULL,'PP2022/0011',NULL,'2022-03-02 23:57:58','2022-03-02 23:57:58'),(71,126,2,0,21270.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 19:20:00',2,0,18,NULL,NULL,NULL,'PP2022/0012',NULL,'2022-03-03 00:22:46','2022-03-03 00:22:46'),(72,127,2,0,23350.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 19:22:00',2,0,18,NULL,NULL,NULL,'PP2022/0013',NULL,'2022-03-03 00:23:30','2022-03-03 00:23:30'),(73,128,2,0,16640.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 19:23:00',2,0,18,NULL,NULL,NULL,'PP2022/0014',NULL,'2022-03-03 00:24:58','2022-03-03 00:24:58'),(74,129,2,0,28020.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 19:25:00',2,0,18,NULL,NULL,NULL,'PP2022/0015',NULL,'2022-03-03 00:27:10','2022-03-03 00:27:10'),(75,130,2,0,9150.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 20:01:00',2,0,19,NULL,NULL,NULL,'PP2022/0016',NULL,'2022-03-03 01:03:29','2022-03-03 01:03:29'),(76,131,2,0,8120.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 20:04:00',2,0,19,NULL,NULL,NULL,'PP2022/0017',NULL,'2022-03-03 01:05:00','2022-03-03 01:05:00'),(77,132,2,0,25460.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 20:05:00',2,0,19,NULL,NULL,NULL,'PP2022/0018',NULL,'2022-03-03 01:07:08','2022-03-03 01:07:08'),(78,133,2,0,33020.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 20:07:00',2,0,19,NULL,NULL,NULL,'PP2022/0019',NULL,'2022-03-03 01:08:03','2022-03-03 01:08:03'),(79,134,2,0,18870.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 20:08:00',2,0,19,NULL,NULL,NULL,'PP2022/0020',NULL,'2022-03-03 01:09:40','2022-03-03 01:09:40'),(80,135,2,0,21230.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 20:09:00',2,0,19,NULL,NULL,NULL,'PP2022/0021',NULL,'2022-03-03 01:10:55','2022-03-03 01:10:55'),(81,136,2,0,30180.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 20:10:00',2,0,19,NULL,NULL,NULL,'PP2022/0022',NULL,'2022-03-03 01:12:14','2022-03-03 01:12:14'),(82,137,2,0,22640.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 20:12:00',2,0,19,NULL,NULL,NULL,'PP2022/0023',NULL,'2022-03-03 01:12:55','2022-03-03 01:12:55'),(83,138,2,0,17920.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 20:12:00',2,0,19,NULL,NULL,NULL,'PP2022/0024',NULL,'2022-03-03 01:14:42','2022-03-03 01:14:42'),(84,139,2,0,17990.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 22:06:57',2,0,10,NULL,NULL,NULL,'SP2022/0004',1,'2022-03-03 03:06:57','2022-03-03 03:06:57'),(85,140,2,0,14990.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 22:07:49',2,0,10,NULL,NULL,NULL,'SP2022/0005',1,'2022-03-03 03:07:49','2022-03-03 03:07:49'),(86,141,2,0,14990.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 22:09:00',2,0,10,NULL,NULL,NULL,'SP2022/0006',1,'2022-03-03 03:09:00','2022-03-03 03:09:00'),(88,143,2,0,17990.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 22:10:11',2,0,10,NULL,NULL,NULL,'SP2022/0007',1,'2022-03-03 03:10:11','2022-03-03 03:10:11'),(89,144,2,0,14990.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 22:11:01',2,0,10,NULL,NULL,NULL,'SP2022/0008',1,'2022-03-03 03:11:01','2022-03-03 03:11:01'),(95,150,1,0,12.50,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 00:54:44',1,0,1,NULL,NULL,NULL,'SP2022/0011',NULL,'2022-03-03 05:54:44','2022-03-03 05:54:44'),(96,151,1,0,12.50,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 00:54:55',1,0,1,NULL,NULL,NULL,'SP2022/0012',NULL,'2022-03-03 05:54:55','2022-03-03 05:54:55'),(97,152,1,0,1050.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 01:01:13',1,0,1,NULL,NULL,NULL,'SP2022/0013',NULL,'2022-03-03 06:01:13','2022-03-03 06:01:13'),(98,153,1,0,18750.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-04 01:33:02',1,0,1,NULL,NULL,NULL,'SP2022/0014',NULL,'2022-03-04 06:33:02','2022-03-04 06:33:02'),(99,154,1,0,1312.50,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-04 01:41:23',1,0,1,NULL,NULL,NULL,'SP2022/0015',NULL,'2022-03-04 06:41:23','2022-03-04 06:41:23'),(100,155,1,0,1312.50,'card',NULL,NULL,NULL,'visa',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-04 01:42:54',1,0,1,NULL,NULL,NULL,'SP2022/0016',NULL,'2022-03-04 06:42:54','2022-03-04 06:42:54'),(101,156,1,0,12.50,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-04 01:48:07',1,0,1,NULL,NULL,NULL,'SP2022/0017',NULL,'2022-03-04 06:48:07','2022-03-04 06:48:07'),(102,157,1,0,5000.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-04 01:53:00',1,0,5,NULL,NULL,NULL,'PP2022/0011',NULL,'2022-03-04 06:55:32','2022-03-04 06:55:32'),(103,158,1,0,355.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-04 01:58:06',1,0,1,NULL,NULL,NULL,'SP2022/0018',NULL,'2022-03-04 06:58:06','2022-03-04 06:59:14'),(104,159,1,0,2000.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-04 14:03:02',1,0,3,NULL,NULL,NULL,'SP2022/0019',NULL,'2022-03-04 19:03:02','2022-03-04 19:03:02'),(105,159,1,1,937.50,'cash',NULL,'','','','','',NULL,'','','','2022-03-04 14:03:02',1,0,3,NULL,'',NULL,'SP2022/0020',NULL,'2022-03-04 19:03:02','2022-03-04 19:03:02'),(107,162,1,0,18750.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-04 15:28:35',1,0,1,NULL,NULL,NULL,'SP2022/0021',NULL,'2022-03-04 20:28:35','2022-03-04 20:28:35'),(108,163,1,0,50265.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-04 16:14:43',1,0,1,NULL,NULL,NULL,'SP2022/0022',NULL,'2022-03-04 21:14:43','2022-03-04 21:14:43'),(109,164,1,0,1050.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-04 16:16:46',1,0,1,NULL,NULL,NULL,'SP2022/0023',NULL,'2022-03-04 21:16:46','2022-03-04 21:16:46'),(110,165,2,0,17990.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-04 19:47:09',2,0,10,NULL,NULL,NULL,'SP2022/0015',1,'2022-03-05 00:47:09','2022-03-05 00:47:09'),(111,169,1,0,187.50,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-05 18:24:40',1,0,1,NULL,NULL,NULL,'SP2022/0024',NULL,'2022-03-05 23:24:40','2022-03-05 23:24:40'),(112,170,1,0,187.50,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-05 18:25:02',1,0,1,NULL,NULL,NULL,'SP2022/0025',NULL,'2022-03-05 23:25:02','2022-03-05 23:25:02'),(113,172,1,0,125.00,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-06 21:19:16',1,0,1,NULL,NULL,NULL,'SP2022/0026',NULL,'2022-03-07 02:19:16','2022-03-07 02:19:16'),(114,175,1,0,187.50,'cash',NULL,NULL,NULL,'credit',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-06 21:20:43',1,0,1,NULL,NULL,NULL,'SP2022/0027',NULL,'2022-03-07 02:20:43','2022-03-07 02:20:43');
/*!40000 ALTER TABLE `transaction_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_sell_lines`
--

DROP TABLE IF EXISTS `transaction_sell_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_sell_lines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `variation_id` int(10) unsigned NOT NULL,
  `imei_id` int(11) DEFAULT NULL,
  `quantity` decimal(22,2) NOT NULL DEFAULT 0.00,
  `quantity_returned` decimal(20,2) NOT NULL DEFAULT 0.00,
  `unit_price_before_discount` decimal(22,2) NOT NULL DEFAULT 0.00,
  `unit_price` decimal(22,2) DEFAULT NULL COMMENT 'Sell price excluding tax',
  `line_discount_type` enum('fixed','percentage') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_discount_amount` decimal(22,2) NOT NULL DEFAULT 0.00,
  `unit_price_inc_tax` decimal(22,2) DEFAULT NULL COMMENT 'Sell price including tax',
  `item_tax` decimal(22,2) NOT NULL COMMENT 'Tax for one quantity',
  `tax_id` int(10) unsigned DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `lot_no_line_id` int(11) DEFAULT NULL,
  `sell_line_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_line_id` int(11) DEFAULT NULL,
  `so_quantity_invoiced` decimal(22,2) NOT NULL DEFAULT 0.00,
  `res_service_staff_id` int(11) DEFAULT NULL,
  `res_line_order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_sell_line_id` int(11) DEFAULT NULL,
  `children_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Type of children for the parent, like modifier or combo',
  `sub_unit_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `transaction_sell_lines_transaction_id_foreign` (`transaction_id`) USING BTREE,
  KEY `transaction_sell_lines_product_id_foreign` (`product_id`) USING BTREE,
  KEY `transaction_sell_lines_variation_id_foreign` (`variation_id`) USING BTREE,
  KEY `transaction_sell_lines_tax_id_foreign` (`tax_id`) USING BTREE,
  KEY `transaction_sell_lines_children_type_index` (`children_type`) USING BTREE,
  KEY `transaction_sell_lines_parent_sell_line_id_index` (`parent_sell_line_id`) USING BTREE,
  KEY `transaction_sell_lines_line_discount_type_index` (`line_discount_type`) USING BTREE,
  KEY `transaction_sell_lines_discount_id_index` (`discount_id`) USING BTREE,
  KEY `transaction_sell_lines_lot_no_line_id_index` (`lot_no_line_id`) USING BTREE,
  KEY `transaction_sell_lines_sub_unit_id_index` (`sub_unit_id`) USING BTREE,
  CONSTRAINT `transaction_sell_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transaction_sell_lines_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transaction_sell_lines_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transaction_sell_lines_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_sell_lines`
--

LOCK TABLES `transaction_sell_lines` WRITE;
/*!40000 ALTER TABLE `transaction_sell_lines` DISABLE KEYS */;
INSERT INTO `transaction_sell_lines` (`id`, `transaction_id`, `product_id`, `variation_id`, `imei_id`, `quantity`, `quantity_returned`, `unit_price_before_discount`, `unit_price`, `line_discount_type`, `line_discount_amount`, `unit_price_inc_tax`, `item_tax`, `tax_id`, `discount_id`, `lot_no_line_id`, `sell_line_note`, `so_line_id`, `so_quantity_invoiced`, `res_service_staff_id`, `res_line_order_status`, `parent_sell_line_id`, `children_type`, `sub_unit_id`, `created_at`, `updated_at`) VALUES (39,59,28,36,9,1.00,0.00,50000.00,50000.00,'fixed',0.00,50000.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-02-24 06:46:28','2022-02-24 07:12:55'),(40,60,28,36,5,1.00,0.00,50000.00,50000.00,'fixed',0.00,50000.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-02-24 07:44:00','2022-02-24 07:44:00'),(41,62,29,38,10,1.00,0.00,125.00,125.00,'fixed',0.00,125.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-02-24 17:51:43','2022-02-24 17:51:43'),(43,69,31,40,20,1.00,1.00,1050.00,1050.00,'percentage',0.00,1050.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-02-28 06:29:18','2022-02-28 07:09:58'),(45,91,42,53,57,1.00,0.00,20.00,20.00,'fixed',0.00,20.00,0.00,NULL,NULL,NULL,'5646541651463zsd',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-02 13:12:52','2022-03-02 13:12:52'),(46,92,42,53,54,1.00,0.00,20.00,20.00,'fixed',0.00,20.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-02 13:15:47','2022-03-02 13:15:47'),(47,94,42,53,58,1.00,0.00,20.00,20.00,'fixed',0.00,20.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-02 13:17:27','2022-03-02 13:17:27'),(48,96,44,55,NULL,10.00,0.00,1312.50,1312.50,'fixed',0.00,1312.50,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-02 13:23:07','2022-03-02 13:23:07'),(49,104,47,58,64,1.00,0.00,50.00,50.00,'fixed',0.00,50.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-02 15:33:01','2022-03-02 15:33:01'),(53,124,59,70,96,1.00,0.00,17500.00,17500.00,'fixed',0.00,17500.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-02 18:14:00','2022-03-02 18:14:00'),(54,139,54,65,91,1.00,0.00,17990.00,17990.00,'fixed',0.00,17990.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-03 03:06:57','2022-03-03 03:06:57'),(55,140,49,60,75,1.00,0.00,14990.00,14990.00,'fixed',0.00,14990.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-03 03:07:49','2022-03-03 03:07:49'),(56,141,49,60,73,1.00,0.00,14990.00,14990.00,'fixed',0.00,14990.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-03 03:09:00','2022-03-03 03:09:00'),(57,143,55,66,89,1.00,0.00,17990.00,17990.00,'fixed',0.00,17990.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-03 03:10:11','2022-03-03 03:10:11'),(58,144,49,60,71,1.00,0.00,14990.00,14990.00,'fixed',0.00,14990.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-03 03:11:01','2022-03-03 03:11:01'),(61,150,76,88,130,1.00,0.00,12.50,12.50,'fixed',0.00,12.50,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-03 05:54:44','2022-03-03 05:54:44'),(62,151,76,88,129,1.00,0.00,12.50,12.50,'fixed',0.00,12.50,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-03 05:54:55','2022-03-03 05:54:55'),(63,152,31,40,20,1.00,0.00,1050.00,1050.00,'fixed',0.00,1050.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-03 06:01:13','2022-03-03 06:01:13'),(64,153,37,47,35,1.00,0.00,18750.00,18750.00,'fixed',0.00,18750.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-04 06:33:02','2022-03-04 06:33:02'),(65,154,35,44,28,1.00,0.00,1312.50,1312.50,'fixed',0.00,1312.50,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-04 06:41:23','2022-03-04 06:41:23'),(66,155,35,44,30,1.00,0.00,1312.50,1312.50,'fixed',0.00,1312.50,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-04 06:42:54','2022-03-04 06:42:54'),(67,156,75,86,126,1.00,0.00,12.50,12.50,'fixed',0.00,12.50,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-04 06:48:07','2022-03-04 06:48:07'),(68,158,77,89,NULL,6.00,0.00,62.50,62.50,'fixed',0.00,62.50,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-04 06:58:06','2022-03-04 06:59:14'),(69,159,31,40,22,1.00,0.00,1050.00,1050.00,'fixed',0.00,1050.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-04 19:03:02','2022-03-04 19:03:02'),(70,159,75,87,127,1.00,0.00,12.50,12.50,'fixed',0.00,12.50,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-04 19:03:02','2022-03-04 19:03:02'),(73,162,37,48,36,1.00,0.00,18750.00,18750.00,'fixed',0.00,18750.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-04 20:28:35','2022-03-04 20:28:35'),(74,163,32,41,NULL,1.00,0.00,15.00,15.00,'fixed',0.00,15.00,0.00,NULL,NULL,NULL,'ewrjaqkpeowarkpo,lap[lr,dp[l',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-04 21:14:43','2022-03-04 21:14:43'),(75,163,77,89,NULL,4.00,0.00,62.50,62.50,'fixed',0.00,62.50,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-04 21:14:43','2022-03-04 21:14:43'),(76,163,28,37,7,1.00,0.00,50000.00,50000.00,'fixed',0.00,50000.00,0.00,NULL,NULL,NULL,'wfewaessasdvv',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-04 21:14:43','2022-03-04 21:14:43'),(77,164,31,40,21,1.00,0.00,1050.00,1050.00,'fixed',0.00,1050.00,0.00,NULL,NULL,NULL,'vjvbj,b,kj',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-04 21:16:46','2022-03-04 21:16:46'),(78,165,63,74,102,1.00,0.00,17990.00,17990.00,'fixed',0.00,17990.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-05 00:47:09','2022-03-05 00:47:09'),(79,167,81,95,NULL,1.00,0.00,150.00,150.00,NULL,0.00,150.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-05 23:24:14','2022-03-05 23:24:14'),(80,169,81,95,NULL,1.00,0.00,187.50,187.50,'fixed',0.00,187.50,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-05 23:24:40','2022-03-05 23:24:40'),(81,170,81,96,NULL,1.00,0.00,187.50,187.50,'fixed',0.00,187.50,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-05 23:25:02','2022-03-05 23:25:02'),(82,172,81,93,NULL,1.00,0.00,125.00,125.00,'fixed',0.00,125.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-07 02:19:16','2022-03-07 02:19:16'),(83,173,81,97,NULL,1.00,0.00,150.00,150.00,NULL,0.00,150.00,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-07 02:20:17','2022-03-07 02:20:17'),(84,175,81,97,NULL,1.00,0.00,187.50,187.50,'fixed',0.00,187.50,0.00,NULL,NULL,NULL,'',NULL,0.00,NULL,NULL,NULL,'',NULL,'2022-03-07 02:20:43','2022-03-07 02:20:43');
/*!40000 ALTER TABLE `transaction_sell_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_sell_lines_purchase_lines`
--

DROP TABLE IF EXISTS `transaction_sell_lines_purchase_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_sell_lines_purchase_lines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sell_line_id` int(10) unsigned DEFAULT NULL COMMENT 'id from transaction_sell_lines',
  `stock_adjustment_line_id` int(10) unsigned DEFAULT NULL COMMENT 'id from stock_adjustment_lines',
  `purchase_line_id` int(10) unsigned NOT NULL COMMENT 'id from purchase_lines',
  `quantity` decimal(22,2) NOT NULL,
  `qty_returned` decimal(22,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sell_line_id` (`sell_line_id`) USING BTREE,
  KEY `stock_adjustment_line_id` (`stock_adjustment_line_id`) USING BTREE,
  KEY `purchase_line_id` (`purchase_line_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_sell_lines_purchase_lines`
--

LOCK TABLES `transaction_sell_lines_purchase_lines` WRITE;
/*!40000 ALTER TABLE `transaction_sell_lines_purchase_lines` DISABLE KEYS */;
INSERT INTO `transaction_sell_lines_purchase_lines` (`id`, `sell_line_id`, `stock_adjustment_line_id`, `purchase_line_id`, `quantity`, `qty_returned`, `created_at`, `updated_at`) VALUES (25,39,NULL,3,1.00,0.00,'2022-02-24 06:46:28','2022-02-24 06:46:28'),(26,40,NULL,3,1.00,0.00,'2022-02-24 07:44:01','2022-02-24 07:44:01'),(27,41,NULL,6,1.00,0.00,'2022-02-24 17:51:43','2022-02-24 17:51:43'),(29,43,NULL,11,1.00,1.00,'2022-02-28 06:29:18','2022-02-28 07:09:58'),(31,45,NULL,37,1.00,0.00,'2022-03-02 13:12:52','2022-03-02 13:12:52'),(32,46,NULL,38,1.00,0.00,'2022-03-02 13:15:47','2022-03-02 13:15:47'),(33,47,NULL,38,1.00,0.00,'2022-03-02 13:17:27','2022-03-02 13:17:27'),(34,48,NULL,40,10.00,0.00,'2022-03-02 13:23:07','2022-03-02 13:23:07'),(35,49,NULL,47,1.00,0.00,'2022-03-02 15:33:01','2022-03-02 15:33:01'),(37,53,NULL,62,1.00,0.00,'2022-03-02 18:14:00','2022-03-02 18:14:00'),(38,54,NULL,60,1.00,0.00,'2022-03-03 03:06:57','2022-03-03 03:06:57'),(39,55,NULL,51,1.00,0.00,'2022-03-03 03:07:49','2022-03-03 03:07:49'),(40,56,NULL,51,1.00,0.00,'2022-03-03 03:09:00','2022-03-03 03:09:00'),(41,57,NULL,58,1.00,0.00,'2022-03-03 03:10:11','2022-03-03 03:10:11'),(42,58,NULL,51,1.00,0.00,'2022-03-03 03:11:01','2022-03-03 03:11:01'),(46,61,NULL,80,1.00,0.00,'2022-03-03 05:54:44','2022-03-03 05:54:44'),(47,62,NULL,80,1.00,0.00,'2022-03-03 05:54:55','2022-03-03 05:54:55'),(48,63,NULL,11,1.00,0.00,'2022-03-03 06:01:13','2022-03-03 06:01:13'),(49,64,NULL,31,1.00,0.00,'2022-03-04 06:33:02','2022-03-04 06:33:02'),(50,65,NULL,20,1.00,0.00,'2022-03-04 06:41:23','2022-03-04 06:41:23'),(51,66,NULL,20,1.00,0.00,'2022-03-04 06:42:54','2022-03-04 06:42:54'),(52,67,NULL,78,1.00,0.00,'2022-03-04 06:48:07','2022-03-04 06:48:07'),(53,68,NULL,81,5.00,0.00,'2022-03-04 06:58:06','2022-03-04 06:58:06'),(54,68,NULL,81,1.00,0.00,'2022-03-04 06:59:14','2022-03-04 06:59:14'),(55,69,NULL,11,1.00,0.00,'2022-03-04 19:03:02','2022-03-04 19:03:02'),(56,70,NULL,79,1.00,0.00,'2022-03-04 19:03:02','2022-03-04 19:03:02'),(59,73,NULL,32,1.00,0.00,'2022-03-04 20:28:35','2022-03-04 20:28:35'),(60,74,NULL,12,1.00,0.00,'2022-03-04 21:14:43','2022-03-04 21:14:43'),(61,75,NULL,81,4.00,0.00,'2022-03-04 21:14:43','2022-03-04 21:14:43'),(62,76,NULL,4,1.00,0.00,'2022-03-04 21:14:43','2022-03-04 21:14:43'),(63,77,NULL,11,1.00,0.00,'2022-03-04 21:16:46','2022-03-04 21:16:46'),(64,78,NULL,66,1.00,0.00,'2022-03-05 00:47:09','2022-03-05 00:47:09'),(65,79,NULL,85,1.00,0.00,'2022-03-05 23:24:14','2022-03-05 23:24:14'),(66,80,NULL,88,1.00,0.00,'2022-03-05 23:24:41','2022-03-05 23:24:41'),(67,81,NULL,86,1.00,0.00,'2022-03-05 23:25:02','2022-03-05 23:25:02'),(68,82,NULL,83,1.00,0.00,'2022-03-07 02:19:16','2022-03-07 02:19:16'),(69,83,NULL,87,1.00,0.00,'2022-03-07 02:20:17','2022-03-07 02:20:17'),(70,84,NULL,94,1.00,0.00,'2022-03-07 02:20:43','2022-03-07 02:20:43');
/*!40000 ALTER TABLE `transaction_sell_lines_purchase_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned DEFAULT NULL,
  `res_table_id` int(10) unsigned DEFAULT NULL COMMENT 'fields to restaurant module',
  `res_waiter_id` int(10) unsigned DEFAULT NULL COMMENT 'fields to restaurant module',
  `res_order_status` enum('received','cooked','served') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_quotation` tinyint(1) NOT NULL DEFAULT 0,
  `payment_status` enum('paid','due','partial') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_type` enum('normal','abnormal') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` int(10) unsigned DEFAULT NULL,
  `customer_group_id` int(11) DEFAULT NULL COMMENT 'used to add customer group while selling',
  `invoice_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_repeat_on` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_date` datetime NOT NULL,
  `total_before_tax` decimal(22,2) NOT NULL DEFAULT 0.00 COMMENT 'Total before the purchase/invoice tax, this includeds the indivisual product tax',
  `tax_id` int(10) unsigned DEFAULT NULL,
  `tax_amount` decimal(22,2) NOT NULL DEFAULT 0.00,
  `discount_type` enum('fixed','percentage') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(22,2) DEFAULT 0.00,
  `rp_redeemed` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `rp_redeemed_amount` decimal(22,2) NOT NULL DEFAULT 0.00 COMMENT 'rp is the short form of reward points',
  `shipping_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charges` decimal(22,2) NOT NULL DEFAULT 0.00,
  `shipping_custom_field_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_custom_field_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_custom_field_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_custom_field_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_custom_field_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_export` tinyint(1) NOT NULL DEFAULT 0,
  `export_custom_fields_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `round_off_amount` decimal(22,2) NOT NULL DEFAULT 0.00 COMMENT 'Difference of rounded total and actual total',
  `final_total` decimal(22,2) NOT NULL DEFAULT 0.00,
  `expense_category_id` int(10) unsigned DEFAULT NULL,
  `expense_for` int(10) unsigned DEFAULT NULL,
  `commission_agent` int(11) DEFAULT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_direct_sale` tinyint(1) NOT NULL DEFAULT 0,
  `is_suspend` tinyint(1) NOT NULL DEFAULT 0,
  `exchange_rate` decimal(20,3) NOT NULL DEFAULT 1.000,
  `total_amount_recovered` decimal(22,2) DEFAULT NULL COMMENT 'Used for stock adjustment.',
  `transfer_parent_id` int(11) DEFAULT NULL,
  `return_parent_id` int(11) DEFAULT NULL,
  `opening_stock_product_id` int(11) DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `prefer_payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefer_payment_account` int(11) DEFAULT NULL,
  `sales_order_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_order_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_batch` int(11) DEFAULT NULL,
  `import_time` datetime DEFAULT NULL,
  `types_of_service_id` int(11) DEFAULT NULL,
  `packing_charge` decimal(22,2) DEFAULT NULL,
  `packing_charge_type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_custom_field_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_custom_field_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_custom_field_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_custom_field_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_custom_field_5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_custom_field_6` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_created_from_api` tinyint(1) NOT NULL DEFAULT 0,
  `rp_earned` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `order_addresses` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_recurring` tinyint(1) NOT NULL DEFAULT 0,
  `recur_interval` double(22,2) DEFAULT NULL,
  `recur_interval_type` enum('days','months','years') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recur_repetitions` int(11) DEFAULT NULL,
  `recur_stopped_on` datetime DEFAULT NULL,
  `recur_parent_id` int(11) DEFAULT NULL,
  `invoice_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_term_number` int(11) DEFAULT NULL,
  `pay_term_type` enum('days','months') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price_group_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `transactions_tax_id_foreign` (`tax_id`) USING BTREE,
  KEY `transactions_business_id_index` (`business_id`) USING BTREE,
  KEY `transactions_type_index` (`type`) USING BTREE,
  KEY `transactions_contact_id_index` (`contact_id`) USING BTREE,
  KEY `transactions_transaction_date_index` (`transaction_date`) USING BTREE,
  KEY `transactions_created_by_index` (`created_by`) USING BTREE,
  KEY `transactions_location_id_index` (`location_id`) USING BTREE,
  KEY `transactions_expense_for_foreign` (`expense_for`) USING BTREE,
  KEY `transactions_expense_category_id_index` (`expense_category_id`) USING BTREE,
  KEY `transactions_sub_type_index` (`sub_type`) USING BTREE,
  KEY `transactions_return_parent_id_index` (`return_parent_id`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `transactions_status_index` (`status`) USING BTREE,
  KEY `transactions_sub_status_index` (`sub_status`) USING BTREE,
  KEY `transactions_res_table_id_index` (`res_table_id`) USING BTREE,
  KEY `transactions_res_waiter_id_index` (`res_waiter_id`) USING BTREE,
  KEY `transactions_res_order_status_index` (`res_order_status`) USING BTREE,
  KEY `transactions_payment_status_index` (`payment_status`) USING BTREE,
  KEY `transactions_discount_type_index` (`discount_type`) USING BTREE,
  KEY `transactions_commission_agent_index` (`commission_agent`) USING BTREE,
  KEY `transactions_transfer_parent_id_index` (`transfer_parent_id`) USING BTREE,
  KEY `transactions_types_of_service_id_index` (`types_of_service_id`) USING BTREE,
  KEY `transactions_packing_charge_type_index` (`packing_charge_type`) USING BTREE,
  KEY `transactions_recur_parent_id_index` (`recur_parent_id`) USING BTREE,
  KEY `transactions_selling_price_group_id_index` (`selling_price_group_id`) USING BTREE,
  CONSTRAINT `transactions_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transactions_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transactions_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transactions_expense_for_foreign` FOREIGN KEY (`expense_for`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transactions_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `business_locations` (`id`),
  CONSTRAINT `transactions_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` (`id`, `business_id`, `location_id`, `res_table_id`, `res_waiter_id`, `res_order_status`, `type`, `sub_type`, `status`, `sub_status`, `is_quotation`, `payment_status`, `adjustment_type`, `contact_id`, `customer_group_id`, `invoice_no`, `ref_no`, `subscription_no`, `subscription_repeat_on`, `transaction_date`, `total_before_tax`, `tax_id`, `tax_amount`, `discount_type`, `discount_amount`, `rp_redeemed`, `rp_redeemed_amount`, `shipping_details`, `shipping_address`, `shipping_status`, `delivered_to`, `shipping_charges`, `shipping_custom_field_1`, `shipping_custom_field_2`, `shipping_custom_field_3`, `shipping_custom_field_4`, `shipping_custom_field_5`, `additional_notes`, `staff_note`, `is_export`, `export_custom_fields_info`, `round_off_amount`, `final_total`, `expense_category_id`, `expense_for`, `commission_agent`, `document`, `is_direct_sale`, `is_suspend`, `exchange_rate`, `total_amount_recovered`, `transfer_parent_id`, `return_parent_id`, `opening_stock_product_id`, `created_by`, `prefer_payment_method`, `prefer_payment_account`, `sales_order_ids`, `purchase_order_ids`, `custom_field_1`, `custom_field_2`, `custom_field_3`, `custom_field_4`, `import_batch`, `import_time`, `types_of_service_id`, `packing_charge`, `packing_charge_type`, `service_custom_field_1`, `service_custom_field_2`, `service_custom_field_3`, `service_custom_field_4`, `service_custom_field_5`, `service_custom_field_6`, `is_created_from_api`, `rp_earned`, `order_addresses`, `is_recurring`, `recur_interval`, `recur_interval_type`, `recur_repetitions`, `recur_stopped_on`, `recur_parent_id`, `invoice_token`, `pay_term_number`, `pay_term_type`, `selling_price_group_id`, `created_at`, `updated_at`) VALUES (57,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,2,NULL,NULL,'PO2022/0001',NULL,NULL,'2022-02-24 01:19:00',420000.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'ok',NULL,0,NULL,0.00,420000.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-24 06:31:15','2022-02-24 06:39:07'),(58,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,2,NULL,NULL,'PO2022/0002',NULL,NULL,'2022-02-24 01:39:00',40000.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'ok',NULL,0,NULL,0.00,40000.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-24 06:44:39','2022-02-24 06:44:40'),(59,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0017','',NULL,NULL,'2022-02-24 01:46:28',50000.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'ok',NULL,0,NULL,0.00,50000.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-24 06:46:28','2022-02-24 07:12:55'),(60,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0018','',NULL,NULL,'2022-02-24 02:17:00',50000.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,50000.00,NULL,NULL,NULL,NULL,1,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-24 07:44:00','2022-02-24 07:44:01'),(61,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'partial',NULL,5,NULL,NULL,'PO2022/0003',NULL,NULL,'2022-02-24 12:44:00',400.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,400.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-24 17:47:23','2022-02-24 17:47:23'),(62,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,6,NULL,'0019','',NULL,NULL,'2022-02-24 12:51:43',125.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,125.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-02-24 17:51:43','2022-02-24 17:51:43'),(66,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'partial',NULL,7,NULL,NULL,'PO2022/0004',NULL,NULL,'2022-02-25 00:52:00',2500.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,2500.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-25 05:53:33','2022-02-25 05:53:33'),(68,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'partial',NULL,5,NULL,NULL,'PO2022/0005',NULL,NULL,'2022-02-28 01:25:00',4000.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,4000.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 06:26:48','2022-02-28 06:26:48'),(69,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0021','',NULL,NULL,'2022-02-28 01:29:18',1050.00,NULL,0.00,'fixed',100.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,950.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-02-28 06:29:18','2022-02-28 06:29:18'),(70,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,5,NULL,NULL,'PO2022/0006',NULL,NULL,'2022-02-28 01:47:00',50.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,50.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 06:48:14','2022-02-28 06:48:14'),(73,1,1,NULL,NULL,NULL,'sell_return',NULL,'final',NULL,0,'due',NULL,1,NULL,'CN2022/0001',NULL,NULL,NULL,'2022-02-28 02:09:00',1050.00,NULL,0.00,'fixed',100.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,950.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,69,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 07:09:58','2022-02-28 07:09:58'),(76,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,9,NULL,NULL,'PO2022/0007',NULL,NULL,'2022-02-28 02:40:00',7350.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,7350.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 07:41:26','2022-02-28 07:41:26'),(77,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,8,NULL,NULL,'PO2022/0008',NULL,NULL,'2022-02-28 02:47:00',1060.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,1060.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 07:48:10','2022-02-28 07:48:10'),(78,1,1,NULL,NULL,NULL,'purchase_return',NULL,'final',NULL,0,'due',NULL,5,NULL,NULL,'2022/0001',NULL,NULL,'2022-02-28 02:50:11',1000.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,1000.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,68,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 07:50:11','2022-02-28 07:50:11'),(82,1,1,NULL,NULL,NULL,'opening_stock',NULL,'received',NULL,0,'paid',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-01 15:58:12',0.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,0.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,37,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 20:58:12','2022-02-28 20:59:14'),(83,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,2,NULL,NULL,'PO2022/0010',NULL,NULL,'2022-02-28 15:59:00',30000.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,30000.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 21:00:05','2022-02-28 21:00:05'),(84,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'partial',NULL,5,NULL,NULL,'PO2022/0011',NULL,NULL,'2022-02-28 20:23:00',75400.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,75400.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-01 01:27:53','2022-03-01 01:27:53'),(85,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,2,NULL,NULL,'PO2022/0012',NULL,NULL,'2022-02-28 23:25:00',16000.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,16000.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-01 04:26:59','2022-03-01 04:26:59'),(89,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,13,NULL,NULL,'PO2022/0013',NULL,NULL,'2022-03-02 07:27:00',10.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,10.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 12:28:18','2022-03-02 12:28:18'),(90,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,13,NULL,NULL,'PO2022/0014',NULL,NULL,'2022-03-02 07:28:00',40.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,40.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 12:29:39','2022-03-02 12:29:39'),(91,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0022','',NULL,NULL,'2022-03-02 08:12:52',20.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,20.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-02 13:12:52','2022-03-02 13:12:52'),(92,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0023','',NULL,NULL,'2022-03-02 08:15:47',20.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,20.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-02 13:15:47','2022-03-02 13:15:47'),(93,1,2,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,5,NULL,NULL,'PO2022/0015',NULL,NULL,'2022-03-02 08:16:00',10.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,10.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 13:16:38','2022-03-02 13:16:38'),(94,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0024','',NULL,NULL,'2022-03-02 08:17:27',20.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,20.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-02 13:17:27','2022-03-02 13:17:27'),(95,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,13,NULL,NULL,'PO2022/0016',NULL,NULL,'2022-03-02 08:22:00',105000.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,105000.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 13:22:43','2022-03-02 13:22:43'),(96,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0025','',NULL,NULL,'2022-03-02 08:23:07',13125.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,13125.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-02 13:23:07','2022-03-02 13:23:07'),(97,1,2,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,7,NULL,NULL,'PO2022/0017',NULL,NULL,'2022-03-02 08:25:00',500.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,500.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 13:25:42','2022-03-02 13:25:42'),(98,1,2,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,5,NULL,NULL,'PO2022/0018',NULL,NULL,'2022-03-02 08:27:00',500.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,500.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 13:29:37','2022-03-02 13:29:37'),(101,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,5,NULL,NULL,'PO2022/0019',NULL,NULL,'2022-03-02 10:19:00',20.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,20.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 15:20:24','2022-03-02 15:20:24'),(102,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,5,NULL,NULL,'PO2022/0020',NULL,NULL,'2022-03-02 10:22:00',500.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,500.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 15:23:03','2022-03-02 15:23:03'),(103,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,5,NULL,NULL,'PO2022/0021',NULL,NULL,'2022-03-02 10:29:00',120.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,120.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 15:30:11','2022-03-02 15:30:11'),(104,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0026','',NULL,NULL,'2022-03-02 10:33:01',50.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,50.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-02 15:33:01','2022-03-02 15:33:01'),(105,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,5,NULL,NULL,'PO2022/0022',NULL,NULL,'2022-03-02 10:34:00',40.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,40.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 15:34:24','2022-03-02 15:34:24'),(106,1,1,NULL,NULL,NULL,'purchase_return',NULL,'final',NULL,0,'paid',NULL,5,NULL,NULL,'2022/0002',NULL,NULL,'2022-03-02 10:41:55',0.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,0.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,103,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 15:41:55','2022-03-02 15:41:55'),(107,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,13,NULL,NULL,'PO2022/0023',NULL,NULL,'2022-03-02 10:51:00',1000.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,1000.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 15:52:34','2022-03-02 15:52:34'),(108,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,5,NULL,NULL,'PO2022/0024',NULL,NULL,'2022-03-02 10:55:00',400.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,400.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 15:56:29','2022-03-02 15:56:29'),(109,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,14,NULL,NULL,'PO2022/0003',NULL,NULL,'2022-03-02 11:12:00',70050.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,70050.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 16:17:30','2022-03-02 16:17:30'),(110,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,14,NULL,NULL,'PO2022/0004',NULL,NULL,'2022-03-02 11:34:00',26280.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,26280.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 16:36:15','2022-03-02 16:36:15'),(112,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,14,NULL,NULL,'PO2022/0006',NULL,NULL,'2022-03-02 11:39:00',37880.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,37880.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 16:40:35','2022-03-02 16:40:35'),(113,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,14,NULL,NULL,'PO2022/0007',NULL,NULL,'2022-03-02 11:46:00',45080.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,45080.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 16:48:51','2022-03-02 16:48:51'),(114,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,14,NULL,NULL,'PO2022/0008',NULL,NULL,'2022-03-02 11:59:00',24970.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,24970.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 17:00:32','2022-03-02 17:00:32'),(115,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,14,NULL,NULL,'PO2022/0009',NULL,NULL,'2022-03-02 12:00:00',25990.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,25990.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 17:02:15','2022-03-02 17:02:15'),(116,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,14,NULL,NULL,'PO2022/0010',NULL,NULL,'2022-03-02 12:02:00',16640.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,16640.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 17:03:37','2022-03-02 17:03:37'),(118,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,14,NULL,NULL,'PO2022/0012',NULL,NULL,'2022-03-02 12:05:00',9780.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,9780.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 17:05:57','2022-03-02 17:05:57'),(121,2,3,NULL,NULL,NULL,'sell',NULL,'draft','quotation',1,NULL,NULL,10,NULL,'2022/0002','',NULL,NULL,'2022-03-02 12:27:51',1.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,1.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-02 17:27:51','2022-03-02 17:27:51'),(123,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,16,NULL,NULL,'PO2022/0014',NULL,NULL,'2022-03-02 13:11:00',16340.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,16340.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 18:13:06','2022-03-02 18:13:06'),(124,2,3,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,17,NULL,'0003','',NULL,NULL,'2022-03-02 13:14:00',17500.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,17500.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,'92324e6ddbb6b06688fbb501e613c9b3',NULL,NULL,0,'2022-03-02 18:14:00','2022-03-06 20:27:37'),(125,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,14,NULL,NULL,'PO2022/0015',NULL,NULL,'2022-03-02 18:56:00',42030.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,42030.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-02 23:57:58','2022-03-02 23:57:58'),(126,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,18,NULL,NULL,'PO2022/0016',NULL,NULL,'2022-03-02 19:20:00',21270.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,21270.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 00:22:46','2022-03-03 00:22:46'),(127,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,18,NULL,NULL,'PO2022/0017',NULL,NULL,'2022-03-02 19:22:00',23350.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,23350.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 00:23:30','2022-03-03 00:23:30'),(128,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,18,NULL,NULL,'PO2022/0018',NULL,NULL,'2022-03-02 19:23:00',16640.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,16640.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 00:24:58','2022-03-03 00:24:58'),(129,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,18,NULL,NULL,'PO2022/0019',NULL,NULL,'2022-03-02 19:25:00',28020.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,28020.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 00:27:10','2022-03-03 00:27:10'),(130,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,19,NULL,NULL,'PO2022/0020',NULL,NULL,'2022-03-02 20:01:00',9150.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,9150.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 01:03:29','2022-03-03 01:03:29'),(131,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,19,NULL,NULL,'PO2022/0021',NULL,NULL,'2022-03-02 20:04:00',8120.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,8120.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 01:05:00','2022-03-03 01:05:00'),(132,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,19,NULL,NULL,'PO2022/0022',NULL,NULL,'2022-03-02 20:05:00',25460.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,25460.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 01:07:08','2022-03-03 01:07:08'),(133,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,19,NULL,NULL,'PO2022/0023',NULL,NULL,'2022-03-02 20:07:00',33020.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,33020.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 01:08:03','2022-03-03 01:08:03'),(134,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,19,NULL,NULL,'PO2022/0024',NULL,NULL,'2022-03-02 20:08:00',18870.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,18870.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 01:09:40','2022-03-03 01:09:40'),(135,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,19,NULL,NULL,'PO2022/0025',NULL,NULL,'2022-03-02 20:09:00',21230.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,21230.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 01:10:55','2022-03-03 01:10:55'),(136,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,19,NULL,NULL,'PO2022/0026',NULL,NULL,'2022-03-02 20:10:00',30180.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,30180.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 01:12:14','2022-03-03 01:12:14'),(137,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,19,NULL,NULL,'PO2022/0027',NULL,NULL,'2022-03-02 20:12:00',22640.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,22640.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 01:12:55','2022-03-03 01:12:55'),(138,2,3,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,19,NULL,NULL,'PO2022/0028',NULL,NULL,'2022-03-02 20:12:00',17920.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,17920.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 01:14:42','2022-03-03 01:14:42'),(139,2,3,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,10,NULL,'0004','',NULL,NULL,'2022-03-02 22:06:57',17990.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,17990.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-03 03:06:57','2022-03-03 03:06:57'),(140,2,3,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,10,NULL,'0005','',NULL,NULL,'2022-03-02 22:07:49',14990.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,14990.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-03 03:07:49','2022-03-03 03:07:49'),(141,2,3,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,10,NULL,'0006','',NULL,NULL,'2022-03-02 22:09:00',14990.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,14990.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-03 03:09:00','2022-03-03 03:09:00'),(143,2,3,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,10,NULL,'0007','',NULL,NULL,'2022-03-02 22:10:11',17990.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,17990.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-03 03:10:11','2022-03-03 03:10:11'),(144,2,3,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,10,NULL,'0008','',NULL,NULL,'2022-03-02 22:11:00',14990.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,14990.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-03 03:11:01','2022-03-03 03:11:01'),(148,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,20,NULL,NULL,'PO2022/0025',NULL,NULL,'2022-03-03 00:08:00',40.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,40.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 05:09:16','2022-03-03 05:09:16'),(149,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,5,NULL,NULL,'PO2022/0026',NULL,NULL,'2022-03-03 00:53:00',20.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,20.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03 05:53:53','2022-03-03 05:53:53'),(150,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0027','',NULL,NULL,'2022-03-03 00:54:44',12.50,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,12.50,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-03 05:54:44','2022-03-03 05:54:44'),(151,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0028','',NULL,NULL,'2022-03-03 00:54:55',12.50,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,12.50,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-03 05:54:55','2022-03-03 05:54:55'),(152,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0029','',NULL,NULL,'2022-03-03 01:01:13',1050.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,1050.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-03 06:01:13','2022-03-03 06:01:13'),(153,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0030','',NULL,NULL,'2022-03-04 01:33:02',18750.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,18750.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-04 06:33:02','2022-03-04 06:33:02'),(154,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0031','',NULL,NULL,'2022-03-04 01:41:23',1312.50,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,1312.50,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-04 06:41:23','2022-03-04 06:41:23'),(155,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0032','',NULL,NULL,'2022-03-04 01:42:54',1312.50,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,1312.50,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-04 06:42:54','2022-03-04 06:42:54'),(156,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0033','',NULL,NULL,'2022-03-04 01:48:07',12.50,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,12.50,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-04 06:48:07','2022-03-04 06:48:07'),(157,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'paid',NULL,5,NULL,NULL,'PO2022/0027',NULL,NULL,'2022-03-04 01:53:00',5000.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,5000.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-04 06:55:31','2022-03-04 06:55:32'),(158,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0034','',NULL,NULL,'2022-03-04 01:58:06',375.00,NULL,0.00,'fixed',20.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,355.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-04 06:58:06','2022-03-04 06:59:14'),(159,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,3,NULL,'0035','',NULL,NULL,'2022-03-04 14:03:02',1062.50,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,1062.50,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-04 19:03:02','2022-03-04 19:03:02'),(162,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0036','',NULL,NULL,'2022-03-04 15:28:35',18750.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,18750.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-04 20:28:35','2022-03-04 20:28:35'),(163,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0037','',NULL,NULL,'2022-03-04 16:14:43',50265.00,NULL,0.00,NULL,100.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,50265.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-04 21:14:43','2022-03-04 21:14:43'),(164,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0038','',NULL,NULL,'2022-03-04 16:16:46',1050.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,1050.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-04 21:16:46','2022-03-04 21:16:46'),(165,2,3,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,10,NULL,'0012','',NULL,NULL,'2022-03-04 19:47:09',17990.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,17990.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-05 00:47:09','2022-03-05 00:47:09'),(166,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,5,NULL,NULL,'PO2022/0028',NULL,NULL,'2022-03-05 18:22:00',650.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,650.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-05 23:22:42','2022-03-05 23:22:42'),(167,1,1,NULL,NULL,NULL,'sell_transfer',NULL,'final',NULL,0,'paid',NULL,NULL,NULL,NULL,'ST2022/0001',NULL,NULL,'2022-03-05 18:23:00',150.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,150.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-05 23:24:14','2022-03-05 23:24:14'),(168,1,2,NULL,NULL,NULL,'purchase_transfer',NULL,'received',NULL,0,'paid',NULL,NULL,NULL,NULL,'ST2022/0001',NULL,NULL,'2022-03-05 18:23:00',150.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,150.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,167,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-05 23:24:14','2022-03-05 23:24:14'),(169,1,2,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0039','',NULL,NULL,'2022-03-05 18:24:40',187.50,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,187.50,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-05 23:24:40','2022-03-05 23:24:41'),(170,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0040','',NULL,NULL,'2022-03-05 18:25:02',187.50,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,187.50,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-05 23:25:02','2022-03-05 23:25:02'),(171,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,5,NULL,NULL,'PO2022/0029',NULL,NULL,'2022-03-06 21:18:00',650.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,650.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-07 02:18:52','2022-03-07 02:18:52'),(172,1,1,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0041','',NULL,NULL,'2022-03-06 21:19:16',125.00,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,125.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-07 02:19:16','2022-03-07 02:19:16'),(173,1,1,NULL,NULL,NULL,'sell_transfer',NULL,'final',NULL,0,'paid',NULL,NULL,NULL,NULL,'ST2022/0002',NULL,NULL,'2022-03-06 21:19:00',150.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,150.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-07 02:20:17','2022-03-07 02:20:17'),(174,1,2,NULL,NULL,NULL,'purchase_transfer',NULL,'received',NULL,0,'paid',NULL,NULL,NULL,NULL,'ST2022/0002',NULL,NULL,'2022-03-06 21:19:00',150.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,150.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,173,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-07 02:20:17','2022-03-07 02:20:17'),(175,1,2,NULL,NULL,NULL,'sell',NULL,'final',NULL,0,'paid',NULL,1,NULL,'0042','',NULL,NULL,'2022-03-06 21:20:43',187.50,NULL,0.00,'percentage',0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,187.50,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,1.00,'days',0,NULL,NULL,NULL,NULL,NULL,0,'2022-03-07 02:20:43','2022-03-07 02:20:43'),(176,1,1,NULL,NULL,NULL,'purchase',NULL,'received',NULL,0,'due',NULL,5,NULL,NULL,'PO2022/0030',NULL,NULL,'2022-03-06 22:49:00',1550.00,NULL,0.00,NULL,0.00,0,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0.00,1550.00,NULL,NULL,NULL,NULL,0,0,1.000,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-07 03:52:57','2022-03-07 03:52:57');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types_of_services`
--

DROP TABLE IF EXISTS `types_of_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types_of_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` int(11) NOT NULL,
  `location_price_group` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packing_charge` decimal(22,4) DEFAULT NULL,
  `packing_charge_type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_custom_fields` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `types_of_services_business_id_index` (`business_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types_of_services`
--

LOCK TABLES `types_of_services` WRITE;
/*!40000 ALTER TABLE `types_of_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `types_of_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(10) unsigned NOT NULL,
  `actual_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allow_decimal` tinyint(1) NOT NULL,
  `base_unit_id` int(11) DEFAULT NULL,
  `base_unit_multiplier` decimal(20,4) DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `units_business_id_foreign` (`business_id`) USING BTREE,
  KEY `units_created_by_foreign` (`created_by`) USING BTREE,
  KEY `units_base_unit_id_index` (`base_unit_id`) USING BTREE,
  CONSTRAINT `units_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  CONSTRAINT `units_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` (`id`, `business_id`, `actual_name`, `short_name`, `allow_decimal`, `base_unit_id`, `base_unit_multiplier`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES (1,1,'Pieces','Pc(s)',0,NULL,NULL,1,NULL,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(2,2,'Pieces','Pc(s)',0,NULL,NULL,2,NULL,'2022-03-01 06:27:04','2022-03-01 06:27:04');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_contact_access`
--

DROP TABLE IF EXISTS `user_contact_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_contact_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_contact_access_user_id_index` (`user_id`) USING BTREE,
  KEY `user_contact_access_contact_id_index` (`contact_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_contact_access`
--

LOCK TABLES `user_contact_access` WRITE;
/*!40000 ALTER TABLE `user_contact_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contact_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `surname` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `contact_no` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` int(10) unsigned DEFAULT NULL,
  `max_sales_discount_percent` decimal(5,2) DEFAULT NULL,
  `allow_login` tinyint(1) NOT NULL DEFAULT 1,
  `status` enum('active','inactive','terminated') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `is_cmmsn_agnt` tinyint(1) NOT NULL DEFAULT 0,
  `cmmsn_percent` decimal(4,2) NOT NULL DEFAULT 0.00,
  `selected_contacts` tinyint(1) NOT NULL DEFAULT 0,
  `dob` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` enum('married','unmarried','divorced') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_media_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_media_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_proof_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_proof_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_username_unique` (`username`) USING BTREE,
  KEY `users_business_id_foreign` (`business_id`) USING BTREE,
  KEY `users_user_type_index` (`user_type`) USING BTREE,
  CONSTRAINT `users_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `user_type`, `surname`, `first_name`, `last_name`, `username`, `email`, `password`, `language`, `contact_no`, `address`, `remember_token`, `business_id`, `max_sales_discount_percent`, `allow_login`, `status`, `is_cmmsn_agnt`, `cmmsn_percent`, `selected_contacts`, `dob`, `gender`, `marital_status`, `blood_group`, `contact_number`, `alt_number`, `family_number`, `fb_link`, `twitter_link`, `social_media_1`, `social_media_2`, `permanent_address`, `current_address`, `guardian_name`, `custom_field_1`, `custom_field_2`, `custom_field_3`, `custom_field_4`, `bank_details`, `id_proof_name`, `id_proof_number`, `deleted_at`, `created_at`, `updated_at`) VALUES (1,'user','Mr','Glorious','IT','admin','sumondutta247@gmail.com','$2y$10$6LdLpORmRUP.A9.bPOwJc.JreQIWKhsfX3X1x1CJApeOB8wL4b/G2','en',NULL,NULL,'o7QAKXN12ogFeTgZ6axj6gYc6sdiJtzCcxjDTpiapBaoLZIAcIvlJpVxXQfB',1,NULL,1,'active',0,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-12-13 15:57:03','2021-12-13 15:57:03'),(2,'user','Deb','Jyoti','Kundu','mobilebazardeb','debkundu125@gmail.com','$2y$10$AHAFPbc/S21MGMUpAHMkDOAUeZW0Hoj9GMftuRkUoBeeLuxEo.qnO','en',NULL,NULL,'rRTPpkj6DVoYRlyvxFY7k4OIwPuAlz4VwRaBI2vDb6c2uujGI0UpyLcFvUVx',2,NULL,1,'active',0,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-01 06:27:03','2022-03-01 06:27:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variation_group_prices`
--

DROP TABLE IF EXISTS `variation_group_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variation_group_prices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `variation_id` int(10) unsigned NOT NULL,
  `price_group_id` int(10) unsigned NOT NULL,
  `price_inc_tax` decimal(22,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `variation_group_prices_variation_id_foreign` (`variation_id`) USING BTREE,
  KEY `variation_group_prices_price_group_id_foreign` (`price_group_id`) USING BTREE,
  CONSTRAINT `variation_group_prices_price_group_id_foreign` FOREIGN KEY (`price_group_id`) REFERENCES `selling_price_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `variation_group_prices_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation_group_prices`
--

LOCK TABLES `variation_group_prices` WRITE;
/*!40000 ALTER TABLE `variation_group_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `variation_group_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variation_location_details`
--

DROP TABLE IF EXISTS `variation_location_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variation_location_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `product_variation_id` int(10) unsigned NOT NULL COMMENT 'id from product_variations table',
  `variation_id` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `qty_available` decimal(22,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `variation_location_details_location_id_foreign` (`location_id`) USING BTREE,
  KEY `variation_location_details_product_id_index` (`product_id`) USING BTREE,
  KEY `variation_location_details_product_variation_id_index` (`product_variation_id`) USING BTREE,
  KEY `variation_location_details_variation_id_index` (`variation_id`) USING BTREE,
  CONSTRAINT `variation_location_details_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `business_locations` (`id`),
  CONSTRAINT `variation_location_details_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation_location_details`
--

LOCK TABLES `variation_location_details` WRITE;
/*!40000 ALTER TABLE `variation_location_details` DISABLE KEYS */;
INSERT INTO `variation_location_details` (`id`, `product_id`, `product_variation_id`, `variation_id`, `location_id`, `qty_available`, `created_at`, `updated_at`) VALUES (27,27,27,34,1,2.00,'2022-02-24 06:31:15','2022-02-24 06:31:15'),(28,27,27,35,1,2.00,'2022-02-24 06:31:15','2022-02-24 06:31:15'),(29,28,28,36,1,1.00,'2022-02-24 06:31:15','2022-02-24 07:44:01'),(30,28,28,37,1,1.00,'2022-02-24 06:31:15','2022-03-04 21:14:43'),(31,29,29,38,1,3.00,'2022-02-24 17:47:23','2022-02-24 17:51:43'),(35,30,30,39,1,5.00,'2022-02-25 05:53:33','2022-02-25 06:00:05'),(36,31,31,40,1,0.00,'2022-02-28 06:26:48','2022-03-04 21:16:46'),(37,32,32,41,1,5.00,'2022-02-28 06:48:14','2022-03-04 21:14:43'),(43,35,35,44,1,6.00,'2022-02-28 07:41:26','2022-03-04 06:42:54'),(46,37,37,47,1,0.00,'2022-02-28 20:58:12','2022-03-04 06:33:02'),(47,37,37,48,1,0.00,'2022-02-28 20:58:12','2022-03-04 20:28:35'),(48,38,38,49,1,10.00,'2022-03-01 01:27:53','2022-03-01 01:27:53'),(49,40,40,51,1,2.00,'2022-03-01 04:26:59','2022-03-01 04:26:59'),(51,42,42,53,1,2.00,'2022-03-02 12:28:18','2022-03-02 13:17:27'),(52,42,42,53,2,1.00,'2022-03-02 13:16:38','2022-03-02 13:16:38'),(53,44,44,55,1,90.00,'2022-03-02 13:22:43','2022-03-02 13:23:07'),(54,45,45,56,2,2.00,'2022-03-02 13:25:42','2022-03-02 13:29:37'),(57,46,46,57,1,52.00,'2022-03-02 15:20:24','2022-03-02 15:23:03'),(58,47,47,58,1,3.00,'2022-03-02 15:30:11','2022-03-02 15:34:24'),(59,48,48,59,1,3.00,'2022-03-02 15:52:34','2022-03-02 15:56:29'),(60,49,49,60,3,5.00,'2022-03-02 16:17:30','2022-03-03 03:11:01'),(61,50,50,61,3,2.00,'2022-03-02 16:36:15','2022-03-02 16:36:15'),(63,52,52,63,3,4.00,'2022-03-02 16:40:35','2022-03-02 16:40:35'),(64,53,53,64,3,4.00,'2022-03-02 16:48:51','2022-03-02 16:48:51'),(65,56,56,67,3,1.00,'2022-03-02 17:00:32','2022-03-02 17:00:32'),(66,57,57,68,3,1.00,'2022-03-02 17:02:15','2022-03-02 17:02:15'),(67,55,55,66,3,0.00,'2022-03-02 17:03:37','2022-03-03 03:10:11'),(69,54,54,65,3,0.00,'2022-03-02 17:05:57','2022-03-03 03:06:57'),(70,59,59,70,3,0.00,'2022-03-02 18:13:06','2022-03-02 18:14:00'),(71,60,60,71,3,1.00,'2022-03-03 00:22:46','2022-03-03 00:22:46'),(72,62,62,73,3,1.00,'2022-03-03 00:23:30','2022-03-03 00:23:30'),(73,63,63,74,3,0.00,'2022-03-03 00:24:58','2022-03-05 00:47:09'),(74,61,61,72,3,2.00,'2022-03-03 00:27:10','2022-03-03 00:27:10'),(75,73,73,84,3,1.00,'2022-03-03 01:03:29','2022-03-03 01:03:29'),(76,72,72,83,3,1.00,'2022-03-03 01:05:00','2022-03-03 01:05:00'),(77,68,68,79,3,2.00,'2022-03-03 01:07:08','2022-03-03 01:07:08'),(78,69,69,80,3,1.00,'2022-03-03 01:08:03','2022-03-03 01:08:03'),(79,71,71,82,3,1.00,'2022-03-03 01:09:40','2022-03-03 01:09:40'),(80,70,70,81,3,1.00,'2022-03-03 01:10:55','2022-03-03 01:10:55'),(81,66,66,77,3,2.00,'2022-03-03 01:12:14','2022-03-03 01:12:14'),(82,65,65,76,3,1.00,'2022-03-03 01:12:55','2022-03-03 01:12:55'),(83,64,64,75,3,1.00,'2022-03-03 01:14:42','2022-03-03 01:14:42'),(85,75,75,86,1,1.00,'2022-03-03 05:09:16','2022-03-04 06:48:07'),(86,75,75,87,1,1.00,'2022-03-03 05:09:16','2022-03-04 19:03:02'),(87,76,76,88,1,0.00,'2022-03-03 05:53:53','2022-03-03 05:54:55'),(88,77,77,89,1,90.00,'2022-03-04 06:55:31','2022-03-04 21:14:43'),(90,81,81,93,1,11.00,'2022-03-05 23:22:42','2022-03-07 03:52:57'),(91,81,81,94,1,3.00,'2022-03-05 23:22:42','2022-03-07 03:52:57'),(92,81,82,95,1,2.00,'2022-03-05 23:22:42','2022-03-07 03:52:57'),(93,81,82,96,1,2.00,'2022-03-05 23:22:42','2022-03-07 03:52:57'),(94,81,82,97,1,2.00,'2022-03-05 23:22:42','2022-03-07 03:52:57'),(95,81,82,95,2,0.00,'2022-03-05 23:24:14','2022-03-05 23:24:40'),(96,81,82,97,2,0.00,'2022-03-07 02:20:17','2022-03-07 02:20:43');
/*!40000 ALTER TABLE `variation_location_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variation_property_mapping`
--

DROP TABLE IF EXISTS `variation_property_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variation_property_mapping` (
  `variation_id` int(11) NOT NULL,
  `variation_template_id` int(11) DEFAULT NULL,
  `variation_template_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`variation_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation_property_mapping`
--

LOCK TABLES `variation_property_mapping` WRITE;
/*!40000 ALTER TABLE `variation_property_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `variation_property_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variation_templates`
--

DROP TABLE IF EXISTS `variation_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variation_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `variation_templates_business_id_foreign` (`business_id`) USING BTREE,
  CONSTRAINT `variation_templates_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation_templates`
--

LOCK TABLES `variation_templates` WRITE;
/*!40000 ALTER TABLE `variation_templates` DISABLE KEYS */;
INSERT INTO `variation_templates` (`id`, `name`, `business_id`, `created_at`, `updated_at`) VALUES (6,'Color',1,'2022-02-24 06:17:09','2022-02-24 06:17:09'),(7,'Size',1,'2022-03-05 23:02:19','2022-03-05 23:02:19');
/*!40000 ALTER TABLE `variation_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variation_value_templates`
--

DROP TABLE IF EXISTS `variation_value_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variation_value_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variation_template_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `variation_value_templates_name_index` (`name`) USING BTREE,
  KEY `variation_value_templates_variation_template_id_index` (`variation_template_id`) USING BTREE,
  CONSTRAINT `variation_value_templates_variation_template_id_foreign` FOREIGN KEY (`variation_template_id`) REFERENCES `variation_templates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation_value_templates`
--

LOCK TABLES `variation_value_templates` WRITE;
/*!40000 ALTER TABLE `variation_value_templates` DISABLE KEYS */;
INSERT INTO `variation_value_templates` (`id`, `name`, `variation_template_id`, `created_at`, `updated_at`) VALUES (10,'Black',6,'2022-02-24 06:17:09','2022-02-24 06:17:09'),(11,'Gray',6,'2022-02-24 06:17:09','2022-02-24 06:17:09'),(12,'X',7,'2022-03-05 23:02:19','2022-03-05 23:02:19'),(13,'M',7,'2022-03-05 23:02:19','2022-03-05 23:02:19'),(14,'Xl',7,'2022-03-05 23:02:19','2022-03-05 23:02:19');
/*!40000 ALTER TABLE `variation_value_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variations`
--

DROP TABLE IF EXISTS `variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `sub_sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_variation_id` int(10) unsigned NOT NULL,
  `variation_value_id` int(11) DEFAULT NULL,
  `default_purchase_price` decimal(22,2) DEFAULT NULL,
  `dpp_inc_tax` decimal(22,2) NOT NULL DEFAULT 0.00,
  `profit_percent` decimal(22,2) NOT NULL DEFAULT 0.00,
  `default_sell_price` decimal(22,2) DEFAULT NULL,
  `sell_price_inc_tax` decimal(22,2) DEFAULT NULL COMMENT 'Sell price including tax',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `combo_variations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Contains the combo variation details',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `variations_product_id_foreign` (`product_id`) USING BTREE,
  KEY `variations_product_variation_id_foreign` (`product_variation_id`) USING BTREE,
  KEY `variations_name_index` (`name`) USING BTREE,
  KEY `variations_sub_sku_index` (`sub_sku`) USING BTREE,
  KEY `variations_variation_value_id_index` (`variation_value_id`) USING BTREE,
  CONSTRAINT `variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `variations_product_variation_id_foreign` FOREIGN KEY (`product_variation_id`) REFERENCES `product_variations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variations`
--

LOCK TABLES `variations` WRITE;
/*!40000 ALTER TABLE `variations` DISABLE KEYS */;
INSERT INTO `variations` (`id`, `name`, `product_id`, `sub_sku`, `product_variation_id`, `variation_value_id`, `default_purchase_price`, `dpp_inc_tax`, `profit_percent`, `default_sell_price`, `sell_price_inc_tax`, `created_at`, `updated_at`, `deleted_at`, `combo_variations`) VALUES (34,'Black',27,'0001-1',27,10,65000.00,65000.00,25.00,81250.00,81250.00,'2022-02-24 06:18:15','2022-02-24 06:18:15',NULL,NULL),(35,'Gray',27,'0001-2',27,11,65000.00,65000.00,25.00,81250.00,81250.00,'2022-02-24 06:18:15','2022-02-24 06:18:15',NULL,NULL),(36,'Black',28,'0002-1',28,10,40000.00,40000.00,25.00,50000.00,50000.00,'2022-02-24 06:19:10','2022-02-24 06:19:40',NULL,NULL),(37,'Gray',28,'0002-2',28,11,40000.00,40000.00,25.00,50000.00,50000.00,'2022-02-24 06:19:10','2022-02-24 06:19:40',NULL,NULL),(38,'DUMMY',29,'0003',29,NULL,100.00,100.00,25.00,125.00,125.00,'2022-02-24 17:39:59','2022-02-25 05:51:59',NULL,'[]'),(39,'DUMMY',30,'0004',30,NULL,500.00,500.00,25.00,625.00,625.00,'2022-02-25 04:14:37','2022-02-25 04:19:07',NULL,'[]'),(40,'DUMMY',31,'0005',31,NULL,1000.00,1000.00,5.00,1050.00,1050.00,'2022-02-28 06:24:34','2022-02-28 06:24:34',NULL,'[]'),(41,'DUMMY',32,'0006',32,NULL,10.00,10.00,50.00,15.00,15.00,'2022-02-28 06:45:18','2022-02-28 06:45:18',NULL,'[]'),(42,'DUMMY',33,'0007',33,NULL,30.00,30.00,25.00,37.50,37.50,'2022-02-28 06:54:24','2022-02-28 07:07:24',NULL,'[]'),(43,'DUMMY',34,'0034',34,NULL,100.00,100.00,25.00,125.00,125.00,'2022-02-28 07:28:30','2022-02-28 07:28:30',NULL,'[]'),(44,'DUMMY',35,'0035',35,NULL,1050.00,1050.00,25.00,1312.50,1312.50,'2022-02-28 07:30:35','2022-02-28 07:30:35',NULL,'[]'),(47,'Black',37,'0036-1',37,10,15000.00,15000.00,25.00,18750.00,18750.00,'2022-02-28 20:58:01','2022-02-28 20:59:06',NULL,NULL),(48,'Gray',37,'0036-2',37,11,15000.00,15000.00,25.00,18750.00,18750.00,'2022-02-28 20:58:01','2022-02-28 20:59:06',NULL,NULL),(49,'DUMMY',38,'0037',38,NULL,7540.00,7540.00,25.00,9425.00,9425.00,'2022-03-01 01:22:09','2022-03-01 01:22:09',NULL,'[]'),(50,'DUMMY',39,'0038',39,NULL,940.00,940.00,25.00,1175.00,1175.00,'2022-03-01 01:42:59','2022-03-01 01:42:59',NULL,'[]'),(51,'DUMMY',40,'0039',40,NULL,8000.00,8000.00,25.00,10000.00,10000.00,'2022-03-01 04:25:40','2022-03-01 04:25:40',NULL,'[]'),(53,'DUMMY',42,'0040',42,NULL,10.00,10.00,100.00,20.00,20.00,'2022-03-02 12:18:41','2022-03-02 12:18:41',NULL,'[]'),(54,'DUMMY',43,'0041',43,NULL,10.00,10.00,100.00,20.00,20.00,'2022-03-02 12:24:56','2022-03-02 12:24:56',NULL,'[]'),(55,'DUMMY',44,'0042',44,NULL,1050.00,1050.00,25.00,1312.50,1312.50,'2022-03-02 13:21:14','2022-03-02 13:21:14',NULL,'[]'),(56,'DUMMY',45,'0043',45,NULL,500.00,500.00,25.00,625.00,625.00,'2022-03-02 13:24:22','2022-03-02 13:24:22',NULL,'[]'),(57,'DUMMY',46,'0044',46,NULL,10.00,10.00,400.00,50.00,50.00,'2022-03-02 15:11:41','2022-03-02 15:22:32',NULL,'[]'),(58,'DUMMY',47,'0045',47,NULL,40.00,40.00,12.50,45.00,45.00,'2022-03-02 15:27:46','2022-03-02 15:33:40',NULL,'[]'),(59,'DUMMY',48,'0046',48,NULL,400.00,400.00,25.00,500.00,500.00,'2022-03-02 15:51:43','2022-03-02 15:55:01',NULL,'[]'),(60,'DUMMY',49,'0001',49,NULL,14010.00,14010.00,7.00,14990.00,14990.00,'2022-03-02 16:12:35','2022-03-02 16:12:35',NULL,'[]'),(61,'DUMMY',50,'0002',50,NULL,13140.00,13140.00,6.54,14000.00,14000.00,'2022-03-02 16:33:56','2022-03-02 16:33:56',NULL,'[]'),(63,'DUMMY',52,'0004',52,NULL,9470.00,9470.00,5.49,9990.00,9990.00,'2022-03-02 16:38:55','2022-03-02 16:38:55',NULL,'[]'),(64,'DUMMY',53,'0005',53,NULL,11270.00,11270.00,6.39,11990.00,11990.00,'2022-03-02 16:46:05','2022-03-02 16:46:05',NULL,'[]'),(65,'DUMMY',54,'0006',54,NULL,9780.00,9780.00,83.95,17990.00,17990.00,'2022-03-02 16:52:23','2022-03-02 16:52:23',NULL,'[]'),(66,'DUMMY',55,'0007',55,NULL,16640.00,16640.00,8.11,17990.00,17990.00,'2022-03-02 16:54:53','2022-03-02 16:54:53',NULL,'[]'),(67,'DUMMY',56,'0008',56,NULL,24970.00,24970.00,8.09,26990.00,26990.00,'2022-03-02 16:57:04','2022-03-02 16:57:04',NULL,'[]'),(68,'DUMMY',57,'0009',57,NULL,25990.00,25990.00,7.70,27990.00,27990.00,'2022-03-02 16:59:11','2022-03-02 16:59:11',NULL,'[]'),(70,'DUMMY',59,'0010',59,NULL,16340.00,16340.00,7.10,17500.00,17500.00,'2022-03-02 18:10:56','2022-03-02 18:10:56',NULL,'[]'),(71,'DUMMY',60,'0011',60,NULL,21270.00,21270.00,8.09,22990.00,22990.00,'2022-03-03 00:08:50','2022-03-03 00:08:50',NULL,'[]'),(72,'DUMMY',61,'0012',61,NULL,14010.00,14010.00,7.00,14990.00,14990.00,'2022-03-03 00:14:25','2022-03-03 00:14:25',NULL,'[]'),(73,'DUMMY',62,'0013',62,NULL,23350.00,23350.00,7.07,25000.00,25000.00,'2022-03-03 00:16:23','2022-03-03 00:16:23',NULL,'[]'),(74,'DUMMY',63,'0014',63,NULL,16640.00,16640.00,8.11,17990.00,17990.00,'2022-03-03 00:19:08','2022-03-03 00:19:08',NULL,'[]'),(75,'DUMMY',64,'0015',64,NULL,17920.00,17920.00,3.23,18499.00,18499.00,'2022-03-03 00:41:25','2022-03-03 00:41:25',NULL,'[]'),(76,'DUMMY',65,'0016',65,NULL,22640.00,22640.00,6.00,23999.00,23999.00,'2022-03-03 00:43:24','2022-03-03 00:43:24',NULL,'[]'),(77,'DUMMY',66,'0017',66,NULL,15090.00,15090.00,6.02,15999.00,15999.00,'2022-03-03 00:46:57','2022-03-03 00:46:57',NULL,'[]'),(78,'DUMMY',67,'0018',67,NULL,15090.00,15090.00,6.02,15999.00,15999.00,'2022-03-03 00:48:25','2022-03-03 00:48:25',NULL,'[]'),(79,'DUMMY',68,'0019',68,NULL,12730.00,12730.00,6.05,13500.00,13500.00,'2022-03-03 00:50:28','2022-03-03 00:50:28',NULL,'[]'),(80,'DUMMY',69,'0020',69,NULL,33020.00,33020.00,6.00,35000.00,35000.00,'2022-03-03 00:52:38','2022-03-03 00:52:38',NULL,'[]'),(81,'DUMMY',70,'0021',70,NULL,21230.00,21230.00,5.98,22499.00,22499.00,'2022-03-03 00:56:15','2022-03-03 00:56:15',NULL,'[]'),(82,'DUMMY',71,'0022',71,NULL,18870.00,18870.00,5.98,19999.00,19999.00,'2022-03-03 00:58:38','2022-03-03 00:58:38',NULL,'[]'),(83,'DUMMY',72,'0023',72,NULL,8120.00,8120.00,5.91,8600.00,8600.00,'2022-03-03 00:59:49','2022-03-03 00:59:49',NULL,'[]'),(84,'DUMMY',73,'0024',73,NULL,9150.00,9150.00,6.99,9790.00,9790.00,'2022-03-03 01:01:47','2022-03-03 01:01:47',NULL,'[]'),(86,'Black',75,'0047-1',75,10,10.00,10.00,25.00,12.50,12.50,'2022-03-03 05:05:34','2022-03-03 05:05:34',NULL,NULL),(87,'Gray',75,'0047-2',75,11,10.00,10.00,25.00,12.50,12.50,'2022-03-03 05:05:34','2022-03-03 05:05:34',NULL,NULL),(88,'DUMMY',76,'0048',76,NULL,10.00,10.00,25.00,12.50,12.50,'2022-03-03 05:10:28','2022-03-03 05:13:02',NULL,'[]'),(89,'DUMMY',77,'0049',77,NULL,50.00,50.00,25.00,62.50,62.50,'2022-03-04 06:53:25','2022-03-04 06:57:22',NULL,'[]'),(92,'DUMMY',80,'0050',80,NULL,50.00,50.00,25.00,62.50,62.50,'2022-03-04 21:08:08','2022-03-04 21:09:36',NULL,'[]'),(93,'Black',81,'0051-1',81,10,100.00,100.00,25.00,125.00,125.00,'2022-03-05 23:19:26','2022-03-05 23:22:02',NULL,NULL),(94,'Gray',81,'0051-2',81,11,100.00,100.00,25.00,125.00,125.00,'2022-03-05 23:19:26','2022-03-05 23:22:02',NULL,NULL),(95,'X',81,'0051-3',82,12,150.00,150.00,25.00,187.50,187.50,'2022-03-05 23:19:26','2022-03-05 23:22:02',NULL,NULL),(96,'M',81,'0051-4',82,13,150.00,150.00,25.00,187.50,187.50,'2022-03-05 23:19:26','2022-03-05 23:22:02',NULL,NULL),(97,'Xl',81,'0051-5',82,14,150.00,150.00,25.00,187.50,187.50,'2022-03-05 23:19:26','2022-03-05 23:22:02',NULL,NULL),(98,'Black',82,'0052-1',83,10,10.00,10.00,25.00,12.50,12.50,'2022-03-07 02:17:55','2022-03-07 02:17:55',NULL,NULL),(99,'Gray',82,'0052-2',83,11,10.00,10.00,25.00,12.50,12.50,'2022-03-07 02:17:55','2022-03-07 02:17:55',NULL,NULL),(100,'Black',83,'0053-1',84,10,100.00,100.00,25.00,125.00,125.00,'2022-03-07 03:49:49','2022-03-07 03:49:49',NULL,NULL),(101,'Gray',83,'0053-2',84,11,100.00,100.00,25.00,125.00,125.00,'2022-03-07 03:49:49','2022-03-07 03:49:49',NULL,NULL),(102,'X',83,'0053-3',85,12,200.00,200.00,25.00,250.00,250.00,'2022-03-07 03:49:49','2022-03-07 03:49:49',NULL,NULL),(103,'M',83,'0053-4',85,13,200.00,200.00,25.00,250.00,250.00,'2022-03-07 03:49:49','2022-03-07 03:49:49',NULL,NULL),(104,'Xl',83,'0053-5',85,14,200.00,200.00,25.00,250.00,250.00,'2022-03-07 03:49:49','2022-03-07 03:49:49',NULL,NULL);
/*!40000 ALTER TABLE `variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warranties`
--

DROP TABLE IF EXISTS `warranties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warranties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `duration_type` enum('days','months','years') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `warranties_business_id_index` (`business_id`) USING BTREE,
  KEY `warranties_duration_type_index` (`duration_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warranties`
--

LOCK TABLES `warranties` WRITE;
/*!40000 ALTER TABLE `warranties` DISABLE KEYS */;
INSERT INTO `warranties` (`id`, `name`, `business_id`, `description`, `duration`, `duration_type`, `created_at`, `updated_at`) VALUES (1,'1 Years',1,'365 Days',1,'years','2022-01-01 04:33:27','2022-01-01 04:34:09'),(2,'6 Months',1,'180 Days',6,'months','2022-01-01 04:36:22','2022-01-01 04:36:32'),(3,'1 Years Warranty',2,'1 Years',1,'years','2022-03-01 13:04:40','2022-03-01 13:04:40'),(4,'6 Month Warranty',2,NULL,6,'months','2022-03-01 13:04:54','2022-03-01 13:04:54');
/*!40000 ALTER TABLE `warranties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gbrekdxn_pos_mobile_updated'
--

--
-- Dumping routines for database 'gbrekdxn_pos_mobile_updated'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-07  9:30:00

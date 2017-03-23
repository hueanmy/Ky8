-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: us-cdbr-iron-east-03.cleardb.net    Database: heroku_9c4270a07788ca0
-- ------------------------------------------------------
-- Server version	5.5.45-log

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
-- Table structure for table `assign_interns`
--

DROP TABLE IF EXISTS `assign_interns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assign_interns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `period` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(10) unsigned DEFAULT NULL,
  `student_id` int(10) unsigned NOT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `topic_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assign_interns_student_id_foreign` (`student_id`),
  KEY `assign_interns_teacher_id_foreign` (`teacher_id`),
  KEY `assign_interns_employee_id_foreign` (`employee_id`),
  KEY `assign_interns_topic_id_foreign` (`topic_id`),
  CONSTRAINT `assign_interns_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assign_interns_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assign_interns_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assign_interns_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assign_interns`
--

LOCK TABLES `assign_interns` WRITE;
/*!40000 ALTER TABLE `assign_interns` DISABLE KEYS */;
INSERT INTO `assign_interns` VALUES (1,'20161',112,92,132,1,'2017-03-22 00:00:00','2017-03-22 00:00:00');
/*!40000 ALTER TABLE `assign_interns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_students` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classes_teacher_id_foreign` (`teacher_id`),
  CONSTRAINT `classes_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'LTU12A','21',112,'2017-03-22 00:00:00','2017-03-22 00:00:00');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `place` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,92,'điểm thực tập cuối kỳ có sai sót',0,'2017-03-22 00:00:00','2017-03-22 00:00:00');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foundedyear` date NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accept` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_accept` smallint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'VIETTEL','viettel','0000-00-00','Tòa nhà công nghệ cao Láng Hòa Lạc',48928272,'viettel@gmail.com',0,'2017-03-22 00:00:00','2017-03-22 00:00:00',0);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_rates`
--

DROP TABLE IF EXISTS `company_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_rates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `student_id` int(10) unsigned NOT NULL,
  `topic_id` int(10) unsigned NOT NULL,
  `point` int(11) NOT NULL,
  `rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `period` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_rates_student_id_foreign` (`student_id`),
  KEY `company_rates_employee_id_foreign` (`employee_id`),
  KEY `company_rates_topic_id_foreign` (`topic_id`),
  CONSTRAINT `company_rates_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `company_rates_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `company_rates_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_rates`
--

LOCK TABLES `company_rates` WRITE;
/*!40000 ALTER TABLE `company_rates` DISABLE KEYS */;
INSERT INTO `company_rates` VALUES (1,132,92,1,10,'tốt','20161','2017-03-22 00:00:00','2017-03-22 00:00:00');
/*!40000 ALTER TABLE `company_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controllers`
--

DROP TABLE IF EXISTS `controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controllers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controllers`
--

LOCK TABLES `controllers` WRITE;
/*!40000 ALTER TABLE `controllers` DISABLE KEYS */;
INSERT INTO `controllers` VALUES (1,'UserController','Quản lý user','2017-03-15 13:50:59','2017-03-15 13:50:59'),(2,'AssigneeIntern','Quản lý phân công thực tập ','2017-03-15 13:50:59','2017-03-15 13:50:59'),(3,'CompanyController','Quản lý công ty','2017-03-15 13:50:59','2017-03-15 13:50:59'),(4,'CompanyRateController','Quản lý đánh giá sinh viên thực tập ','2017-03-15 13:50:59','2017-03-15 13:50:59'),(5,'EmployeeController','Quản lý nhân viên công ty','2017-03-15 13:50:59','2017-03-15 13:50:59'),(6,'GroupController','Quản lý group','2017-03-15 13:54:24','2017-03-15 13:54:24'),(7,'InterController','Quản lý thực tập ','2017-03-15 13:54:24','2017-03-15 13:54:24'),(8,'PermissionController','Quản lý phân quyền ','2017-03-15 13:54:24','2017-03-15 13:54:24'),(9,'RateController','Quản lý đánh giá thực tập của giáo viên','2017-03-15 13:54:24','2017-03-15 13:54:24'),(10,'StudentController','Quản lý sinh viên','2017-03-15 13:54:24','2017-03-15 13:54:24'),(11,'TeacherController','Quản lý giảng viên','2017-03-15 13:54:24','2017-03-15 13:54:24'),(12,'TopicController','Quản lý đề tài','2017-03-15 13:54:24','2017-03-15 13:54:24'),(13,'SchoolController','Quản lý lớp học và văn phòng','2017-03-15 13:54:24','2017-03-15 13:54:24');
/*!40000 ALTER TABLE `controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dead_lines`
--

DROP TABLE IF EXISTS `dead_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dead_lines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_register_topic` date DEFAULT NULL,
  `student_register_topic` date DEFAULT NULL,
  `company_rate` date DEFAULT NULL,
  `mark` date DEFAULT NULL,
  `company_report` date DEFAULT NULL,
  `student_report` date DEFAULT NULL,
  `period` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dead_lines`
--

LOCK TABLES `dead_lines` WRITE;
/*!40000 ALTER TABLE `dead_lines` DISABLE KEYS */;
INSERT INTO `dead_lines` VALUES (1,'2016-12-25','2016-12-28','2017-04-07','2017-05-01','2016-01-05','2017-04-03','20161','2017-03-22 00:00:00','2017-03-22 00:00:00');
/*!40000 ALTER TABLE `dead_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_teachers` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'SOICT','21','Tầng 5,6,7 nhà B1',49273737,'2017-03-22 00:00:00','2017-03-22 00:00:00');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL,
  `employee_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dept` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `employees_employee_id_unique` (`employee_id`),
  KEY `employees_company_id_foreign` (`company_id`),
  CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (122,'1','Đại diện doanh nghiệp','Mạng máy tính',1,'2017-03-22 00:00:00','2017-03-22 00:00:00'),(132,'2','Hướng dẫn tại doanh nghiệp','Mạng máy tính',1,'2017-03-22 00:00:00','2017-03-22 00:00:00');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'admin','quản lý hệ thống','2017-03-15 13:36:59','2017-03-15 13:36:59'),(2,'teacher_instructions','giáo viên hướng dẫn thực tập','2017-03-15 13:39:13','2017-03-15 13:39:13'),(3,'teacher_managers','giáo viên phụ trách thực tập','2017-03-15 13:39:13','2017-03-15 13:39:13'),(4,'company\'s agents','đại diện doanh nghiệp','2017-03-15 13:39:13','2017-03-15 13:39:13'),(5,'company\'s instructors','người hướng dẫn tại doanh nghiệp','2017-03-15 13:39:13','2017-03-15 13:39:13'),(6,'students','sinh viên đăng ký thực tập','2017-03-15 13:39:13','2017-03-15 13:39:13');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intern_statuses`
--

DROP TABLE IF EXISTS `intern_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intern_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned NOT NULL,
  `period` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `link_report` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `intern_statuses_student_id_foreign` (`student_id`),
  CONSTRAINT `intern_statuses_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intern_statuses`
--

LOCK TABLES `intern_statuses` WRITE;
/*!40000 ALTER TABLE `intern_statuses` DISABLE KEYS */;
INSERT INTO `intern_statuses` VALUES (1,92,'20161',0,'','2017-03-22 00:00:00','2017-03-22 00:00:00');
/*!40000 ALTER TABLE `intern_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `group_id` int(10) unsigned NOT NULL,
  `controller_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_group_id_foreign` (`group_id`),
  KEY `permissions_controller_id_foreign` (`controller_id`),
  CONSTRAINT `permissions_controller_id_foreign` FOREIGN KEY (`controller_id`) REFERENCES `controllers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,1,1,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(2,1,2,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(3,1,3,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(4,1,4,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(5,1,5,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(6,1,6,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(7,1,7,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(8,1,8,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(9,1,9,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(10,1,10,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(11,1,11,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(12,1,12,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(13,1,13,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(14,2,4,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(15,2,9,'2017-03-15 13:57:07','2017-03-15 13:57:07'),(16,2,11,'2017-03-15 13:59:30','2017-03-15 13:59:30'),(17,3,2,'2017-03-15 13:59:30','2017-03-15 13:59:30'),(18,3,7,'2017-03-15 13:59:30','2017-03-15 13:59:30'),(19,3,12,'2017-03-15 13:59:30','2017-03-15 13:59:30'),(20,4,5,'2017-03-15 13:59:30','2017-03-15 13:59:30'),(22,4,10,'2017-03-15 13:59:30','2017-03-15 13:59:30'),(23,4,12,'2017-03-15 13:59:30','2017-03-15 13:59:30'),(24,5,4,'2017-03-15 13:59:30','2017-03-15 13:59:30'),(25,5,9,'2017-03-15 13:59:30','2017-03-15 13:59:30'),(26,6,10,'2017-03-15 13:59:30','2017-03-15 13:59:30');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned NOT NULL,
  `teacher_id` int(10) unsigned NOT NULL,
  `mid_point` int(11) NOT NULL,
  `final_point` int(11) NOT NULL,
  `rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `period` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `editable` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rates_student_id_foreign` (`student_id`),
  KEY `rates_teacher_id_foreign` (`teacher_id`),
  CONSTRAINT `rates_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `rates_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,92,112,9,10,'tốt','20161',0,'2017-03-22 00:00:00','2017-03-22 00:00:00');
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_cvs`
--

DROP TABLE IF EXISTS `student_cvs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_cvs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skill` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hobby` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year_start` date NOT NULL,
  `year_stop` date NOT NULL,
  `grade` smallint(6) NOT NULL,
  `school` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `major` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cpa` double(8,2) NOT NULL,
  `majorskill` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `otherskill` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_cvs_email_unique` (`email`),
  KEY `student_cvs_student_id_foreign` (`student_id`),
  CONSTRAINT `student_cvs_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_cvs`
--

LOCK TABLES `student_cvs` WRITE;
/*!40000 ALTER TABLE `student_cvs` DISABLE KEYS */;
INSERT INTO `student_cvs` VALUES (1,92,'Mai_CV','','intern ruby','1993-09-09',0,1692630370,'ltmai93@gmail.com','Thanh Hóa','','','','','0000-00-00','0000-00-00',4,'Đại học bách khoa hà nội','Công nghệ thông tin',3.05,'java','c','2017-03-22 00:00:00','2017-03-22 00:00:00');
/*!40000 ALTER TABLE `student_cvs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_interns`
--

DROP TABLE IF EXISTS `student_interns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_interns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `topic_1` int(10) unsigned DEFAULT NULL,
  `topic_2` int(10) unsigned DEFAULT NULL,
  `topic_3` int(10) unsigned DEFAULT NULL,
  `topic_expect` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_interns_topic_1_foreign` (`topic_1`),
  KEY `student_interns_topic_2_foreign` (`topic_2`),
  KEY `student_interns_topic_3_foreign` (`topic_3`),
  KEY `student_interns_topic_expect_foreign` (`topic_expect`),
  CONSTRAINT `student_interns_topic_expect_foreign` FOREIGN KEY (`topic_expect`) REFERENCES `topics` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_interns_topic_1_foreign` FOREIGN KEY (`topic_1`) REFERENCES `topics` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_interns_topic_2_foreign` FOREIGN KEY (`topic_2`) REFERENCES `topics` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_interns_topic_3_foreign` FOREIGN KEY (`topic_3`) REFERENCES `topics` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_interns`
--

LOCK TABLES `student_interns` WRITE;
/*!40000 ALTER TABLE `student_interns` DISABLE KEYS */;
INSERT INTO `student_interns` VALUES (1,92,1,NULL,NULL,1,'2017-03-22 00:00:00','2017-03-22 00:00:00');
/*!40000 ALTER TABLE `student_interns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(10) unsigned NOT NULL,
  `student_id` int(11) NOT NULL,
  `school_year` int(11) NOT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `grade` int(11) NOT NULL,
  `from_year` int(11) NOT NULL,
  `to_year` int(11) NOT NULL,
  `mayjor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `students_student_id_unique` (`student_id`),
  KEY `students_id_foreign` (`id`),
  KEY `students_class_id_foreign` (`class_id`),
  CONSTRAINT `students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `students_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (92,1,0,1,4,2013,2018,'công nghệ thông tin','2017-03-22 00:00:00','2017-03-22 00:00:00');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `id` int(10) unsigned NOT NULL,
  `dept_id` int(10) unsigned NOT NULL,
  `start` date NOT NULL,
  `teacher_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `degree` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `teachers_teacher_id_unique` (`teacher_id`),
  KEY `teachers_id_foreign` (`id`),
  KEY `teachers_dept_id_foreign` (`dept_id`),
  CONSTRAINT `teachers_dept_id_foreign` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `teachers_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (102,1,'0000-00-00','1','quản lý thực tập','tiến sĩ','2017-03-22 00:00:00','2017-03-22 00:00:00'),(112,1,'0000-00-00','2','hướng dẫn thực tập','thạc sĩ','2017-03-22 00:00:00','2017-03-22 00:00:00');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_checking_managers`
--

DROP TABLE IF EXISTS `time_checking_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_checking_managers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `student_id` int(10) unsigned NOT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `time_checking_managers_student_id_foreign` (`student_id`),
  KEY `time_checking_managers_employee_id_foreign` (`employee_id`),
  CONSTRAINT `time_checking_managers_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `time_checking_managers_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_checking_managers`
--

LOCK TABLES `time_checking_managers` WRITE;
/*!40000 ALTER TABLE `time_checking_managers` DISABLE KEYS */;
INSERT INTO `time_checking_managers` VALUES (1,'2017-02-01',1,92,132,'2017-03-22 00:00:00','2017-03-22 00:00:00');
/*!40000 ALTER TABLE `time_checking_managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desciption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_interns` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timelimit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `stop` date NOT NULL,
  `link_topic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_accept` smallint(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `topics_employee_id_foreign` (`employee_id`),
  CONSTRAINT `topics_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'Phát hiện tấn công website','Security','Tìm hiểu về các hình thức tấn công website, các lỗ hổng website. Xây dựng chương trình phát hiện tấn công website bằng thuật toán Naive Bayes','3','','3months','0','2017-01-03','2017-04-03','',122,'2017-03-22 00:00:00','2017-03-22 00:00:00',1);
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `phonenumber` int(11) NOT NULL,
  `dateofbirth` date NOT NULL,
  `lock` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_group_id_foreign` (`group_id`),
  CONSTRAINT `users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (82,'admin','$2y$10$wh3aNnwLi8.hGubGwXRmheNjL0wGu4jVX2VOnI6c.Npbjgh7YveUK','ltu','admin','ltu@gmail.com',1,123456789,'0000-00-00',0,1,NULL,'2017-03-23 10:32:59','2017-03-23 10:32:59',NULL),(92,'lemai','$2y$10$0hHqvNEfGuua69XE3jaPsOv24rP8AB0X57e.Z9upb/CIRWyNkmhD.','Lê Thị','Mai','20118994@gmail.com',6,123456789,'0000-00-00',0,1,NULL,'2017-03-23 10:43:43','2017-03-23 10:43:43',NULL),(102,'huonggiang','$2y$10$DPrh4MOhuj5Y06kFc1h9G.gFMYe0b9YdgC6ZIDi99ji/x0mw7kWEm','Vũ Thị','Hương Giang','vthg@gmail.com',3,123456789,'0000-00-00',0,1,NULL,'2017-03-23 10:44:28','2017-03-23 10:44:28',NULL),(112,'banhmai','$2y$10$wo0wvXrVzLFFTu1Jo3mZCeuoYtguQK85ehFYJFQcnEbIHEh/x3ySW','Bành Thị','Quỳnh Mai','btqm@gmail.com',2,123456789,'0000-00-00',0,1,NULL,'2017-03-23 10:44:53','2017-03-23 10:44:53',NULL),(122,'leha','$2y$10$qNmHW80SWJg5/b.kYsRKyu/oHnQRuLMupRQjFX/msPN3HDjietof6','Trần Lê','Hà','halt@gmail.com',4,123456789,'0000-00-00',0,1,NULL,'2017-03-23 10:45:36','2017-03-23 10:45:36',NULL),(132,'phuongthao','$2y$10$nQfqVbs4MorRQ5IKll2eYedsQeCMzD.aBnvVG.vaFsCY97W3ZAh6.','Phạm Thị','Phương Thảo','thaopt@gmail.com',5,123456789,'0000-00-00',0,1,NULL,'2017-03-23 10:46:09','2017-03-23 10:46:09',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-23 17:36:35

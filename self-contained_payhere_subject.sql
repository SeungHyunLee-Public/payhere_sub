-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: payhere_subject
-- ------------------------------------------------------
-- Server version	5.7.40-log

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
-- Table structure for table `account_book`
--

DROP TABLE IF EXISTS `account_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_book` (
  `title` varchar(45) COLLATE utf8_bin NOT NULL,
  `reg_user` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `reg_date` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `mod_date` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `used_money` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `memo` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `categorie` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ident` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_book`
--

LOCK TABLES `account_book` WRITE;
/*!40000 ALTER TABLE `account_book` DISABLE KEYS */;
INSERT INTO `account_book` VALUES ('제목1',NULL,'2023-01-13','2023-01-13','11','메모1','kitchen',2),('제목3','test001','2023-01-12','2023-01-12','300','메모3','주방',3);
/*!40000 ALTER TABLE `account_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add account book',7,'add_accountbook'),(26,'Can change account book',7,'change_accountbook'),(27,'Can delete account book',7,'delete_accountbook'),(28,'Can view account book',7,'view_accountbook'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add auth group',9,'add_authgroup'),(34,'Can change auth group',9,'change_authgroup'),(35,'Can delete auth group',9,'delete_authgroup'),(36,'Can view auth group',9,'view_authgroup'),(37,'Can add auth group permissions',10,'add_authgrouppermissions'),(38,'Can change auth group permissions',10,'change_authgrouppermissions'),(39,'Can delete auth group permissions',10,'delete_authgrouppermissions'),(40,'Can view auth group permissions',10,'view_authgrouppermissions'),(41,'Can add auth permission',11,'add_authpermission'),(42,'Can change auth permission',11,'change_authpermission'),(43,'Can delete auth permission',11,'delete_authpermission'),(44,'Can view auth permission',11,'view_authpermission'),(45,'Can add auth user',12,'add_authuser'),(46,'Can change auth user',12,'change_authuser'),(47,'Can delete auth user',12,'delete_authuser'),(48,'Can view auth user',12,'view_authuser'),(49,'Can add auth user groups',13,'add_authusergroups'),(50,'Can change auth user groups',13,'change_authusergroups'),(51,'Can delete auth user groups',13,'delete_authusergroups'),(52,'Can view auth user groups',13,'view_authusergroups'),(53,'Can add auth user user permissions',14,'add_authuseruserpermissions'),(54,'Can change auth user user permissions',14,'change_authuseruserpermissions'),(55,'Can delete auth user user permissions',14,'delete_authuseruserpermissions'),(56,'Can view auth user user permissions',14,'view_authuseruserpermissions'),(57,'Can add django admin log',15,'add_djangoadminlog'),(58,'Can change django admin log',15,'change_djangoadminlog'),(59,'Can delete django admin log',15,'delete_djangoadminlog'),(60,'Can view django admin log',15,'view_djangoadminlog'),(61,'Can add django content type',16,'add_djangocontenttype'),(62,'Can change django content type',16,'change_djangocontenttype'),(63,'Can delete django content type',16,'delete_djangocontenttype'),(64,'Can view django content type',16,'view_djangocontenttype'),(65,'Can add django migrations',17,'add_djangomigrations'),(66,'Can change django migrations',17,'change_djangomigrations'),(67,'Can delete django migrations',17,'delete_djangomigrations'),(68,'Can view django migrations',17,'view_djangomigrations'),(69,'Can add django session',18,'add_djangosession'),(70,'Can change django session',18,'change_djangosession'),(71,'Can delete django session',18,'delete_djangosession'),(72,'Can view django session',18,'view_djangosession');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `date_joined` datetime(6) DEFAULT NULL,
  `is_superuser` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `first_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `is_staff` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `is_active` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$23DDLJhEteLZqBiqTNT27o$Z2lvVVf2Ih9KNkDJBS03py0ZJ/KA5UY6lshdN9+9Fhg=','test001','test@gmail.com','2023-01-07 11:36:07.266517',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','accountbook'),(9,'app','authgroup'),(10,'app','authgrouppermissions'),(11,'app','authpermission'),(12,'app','authuser'),(13,'app','authusergroups'),(14,'app','authuseruserpermissions'),(15,'app','djangoadminlog'),(16,'app','djangocontenttype'),(17,'app','djangomigrations'),(18,'app','djangosession'),(8,'app','user'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-01-07 09:19:36.437799'),(2,'auth','0001_initial','2023-01-07 09:19:36.877312'),(3,'admin','0001_initial','2023-01-07 09:19:37.039281'),(4,'admin','0002_logentry_remove_auto_add','2023-01-07 09:19:37.055952'),(5,'admin','0003_logentry_add_action_flag_choices','2023-01-07 09:19:37.062698'),(6,'app','0001_initial','2023-01-07 09:19:37.067738'),(7,'contenttypes','0002_remove_content_type_name','2023-01-07 09:19:37.146076'),(8,'auth','0002_alter_permission_name_max_length','2023-01-07 09:19:37.186350'),(9,'auth','0003_alter_user_email_max_length','2023-01-07 09:19:37.225617'),(10,'auth','0004_alter_user_username_opts','2023-01-07 09:19:37.231597'),(11,'auth','0005_alter_user_last_login_null','2023-01-07 09:19:37.272113'),(12,'auth','0006_require_contenttypes_0002','2023-01-07 09:19:37.274107'),(13,'auth','0007_alter_validators_add_error_messages','2023-01-07 09:19:37.281087'),(14,'auth','0008_alter_user_username_max_length','2023-01-07 09:19:37.318370'),(15,'auth','0009_alter_user_last_name_max_length','2023-01-07 09:19:37.355898'),(16,'auth','0010_alter_group_name_max_length','2023-01-07 09:19:37.398309'),(17,'auth','0011_update_proxy_permissions','2023-01-07 09:19:37.404288'),(18,'auth','0012_alter_user_first_name_max_length','2023-01-07 09:19:37.447345'),(19,'sessions','0001_initial','2023-01-07 09:19:37.482028'),(20,'app','0002_authgroup_authgrouppermissions_authpermission_and_more','2023-01-07 09:46:58.953861');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7cij8d339n4k6fkk1z88k9lqrhpz5b89','.eJxVjDsOwjAQBe_iGln-Zb2hpOcM1vqzOIAcKU4qxN0hUgpo38y8lwi0rTVsvSxhyuIstDj9bpHSo7Qd5Du12yzT3NZlinJX5EG7vM65PC-H-3dQqddvjYpIg4EBrQFLHFNiPQK5rDGyB0AHyrAaIXkyljEWmxyjVt5b8oN4fwDQeDdI:1pE7Ud:Wl_xHsaLoDvAWDwXpHQZStD1k5Tl6VNdpMawgmQKEgY','2023-01-21 11:36:07.269260');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-08 16:17:22

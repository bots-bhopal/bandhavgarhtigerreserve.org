-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: blueolz8_btr
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Test','test@gmail.com','0123456789','Test message.','2022-04-12 09:02:41','2022-04-12 09:02:41');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` bigint NOT NULL,
  `file_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documents_slug_unique` (`slug`),
  KEY `documents_user_id_foreign` (`user_id`),
  CONSTRAINT `documents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `original_filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` bigint NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_foreign` (`user_id`),
  CONSTRAINT `galleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,2,'btr_image71','2c37e7ac6751e915970b082bd95f9e6224de21fe.jpg','jpg',203628,0,'2022-02-08 08:32:27','2022-02-08 08:32:27'),(2,2,'btr_image72','6750097e0b2a4ce9a9a50d24129d364e3eeeb3ff.jpg','jpg',193005,0,'2022-02-08 08:32:27','2022-02-08 08:32:27'),(3,2,'btr_image66','2e502687a863e2cfdd06173800c945604b95ddfb.jpg','jpg',199200,0,'2022-02-08 08:32:37','2022-02-08 08:32:37'),(4,2,'btr_image67','9a2931a55131c7af55afa875418ae2a337005743.jpg','jpg',195720,0,'2022-02-08 08:32:37','2022-02-08 08:32:37'),(5,2,'btr_image68','39c00394ec6fcf432a68a1fb16a69f0e7a31f1bf.jpg','jpg',205190,0,'2022-02-08 08:32:38','2022-02-08 08:32:38'),(6,2,'btr_image69','4816ce313050a12374d2c936898954962125fe4a.jpg','jpg',196472,0,'2022-02-08 08:32:38','2022-02-08 08:32:38'),(7,2,'btr_image70','bd6a41d6dcbb8b949d0ae5bd9d6cf901f13a4107.jpg','jpg',186980,0,'2022-02-08 08:32:39','2022-02-08 08:32:39'),(8,2,'btr_image61','69b9a28f75a1fe968e8fe5775900db76dc723814.jpg','jpg',107393,0,'2022-02-08 08:32:50','2022-02-08 08:32:50'),(9,2,'btr_image62','b16eba643f33761415718790b1958ff5bcd38add.jpg','jpg',165758,0,'2022-02-08 08:32:50','2022-02-08 08:32:50'),(10,2,'btr_image63','27ad5a6761e13415bf0c068cd78b997fdd8faf0a.jpg','jpg',203244,0,'2022-02-08 08:32:51','2022-02-08 08:32:51'),(11,2,'btr_image64','40f085ea6736b60026ca446d796a9571717377ee.jpg','jpg',191925,0,'2022-02-08 08:32:51','2022-02-08 08:32:51'),(12,2,'btr_image65','346640a7995ee424bc5c55bbb4fd44dfef4ee936.jpg','jpg',202145,0,'2022-02-08 08:32:51','2022-02-08 08:32:51'),(13,2,'btr_image56','919bcda73b9e6a7c779529e1f5e2702c5d6bb673.jpg','jpg',185604,0,'2022-02-08 08:33:17','2022-02-08 08:33:17'),(14,2,'btr_image59','b486b8038017f3932a4e78454c89756bc22f4dc8.jpg','jpg',107587,0,'2022-02-08 08:33:17','2022-02-08 08:33:17'),(15,2,'btr_image60','0a1b1dfc96ebe21bfd0942f312091ed9e1d59aad.jpg','jpg',175518,0,'2022-02-08 08:33:18','2022-02-08 08:33:18'),(16,2,'btr_image46','294dffe445993ded73faef4d52f292c5a433d006.jpg','jpg',202653,0,'2022-02-08 08:34:24','2022-02-08 08:34:24'),(17,2,'btr_image47','32b712881f755998f84f294ef81889186163e39a.jpg','jpg',177095,0,'2022-02-08 08:34:24','2022-02-08 08:34:24'),(18,2,'btr_image48','c8514e96bd926ed39335ecdf487b8f1e8e7428ca.jpg','jpg',144243,0,'2022-02-08 08:34:24','2022-02-08 08:34:24'),(19,2,'btr_image49','b1ef438cd63aefde007303f67d3d5b822c13b199.jpg','jpg',204921,0,'2022-02-08 08:34:24','2022-02-08 08:34:24'),(20,2,'btr_image50','d58a31c45062937e13d341493d7bb86226695b5f.jpg','jpg',57745,0,'2022-02-08 08:34:25','2022-02-08 08:34:25'),(21,2,'btr_image51','7d9ac2135fa055c3d482c07ebeb185255e66605e.jpg','jpg',195519,0,'2022-02-08 08:34:25','2022-02-08 08:34:25'),(22,2,'btr_image54','9fac77e8f465c1fecc01ff4807565c6ff032fdf6.jpg','jpg',176518,0,'2022-02-08 08:34:26','2022-02-08 08:34:26'),(23,2,'btr_image31','2b2183f35d92e304853ff9a7aea3daf0a70d0e48.jpg','jpg',200472,0,'2022-02-08 08:35:20','2022-02-08 08:35:20'),(24,2,'btr_image32','635f17af8e984a886ec54614518de958ff40895e.jpg','jpg',193989,0,'2022-02-08 08:35:20','2022-02-08 08:35:20'),(25,2,'btr_image33','3daa73dbc0e8540e5241f0f0eba81be1eea91424.jpg','jpg',64887,0,'2022-02-08 08:35:21','2022-02-08 08:35:21'),(26,2,'btr_image34','f21e3cb164488868ffc6ef59c0c947ef01363e3c.jpg','jpg',178462,0,'2022-02-08 08:35:21','2022-02-08 08:35:21'),(27,2,'btr_image35','702a8ed33b7e3c2b2525b85994300eeee05b5daf.jpg','jpg',205711,0,'2022-02-08 08:35:21','2022-02-08 08:35:21'),(28,2,'btr_image36','5e1b39d28b4b1bd0ed787b6a8880d762c615c9d8.jpg','jpg',201874,0,'2022-02-08 08:35:21','2022-02-08 08:35:21'),(29,2,'btr_image37','58e0235fadbd4b81507443b6f1f6e2e5af4936fe.jpg','jpg',151463,0,'2022-02-08 08:35:22','2022-02-08 08:35:22'),(30,2,'btr_image38','4d47183324de2cb7da40e2500e4dd7454442263a.jpg','jpg',195680,0,'2022-02-08 08:35:22','2022-02-08 08:35:22'),(31,2,'btr_image39','8069c70f7188342a2bf87d51c9591906311829f2.jpg','jpg',185151,0,'2022-02-08 08:35:22','2022-02-08 08:35:22'),(32,2,'btr_image40','03b9299eb5da9966c26bf3867602b7e2a9844b32.jpg','jpg',185558,0,'2022-02-08 08:35:22','2022-02-08 08:35:22'),(33,2,'btr_image45','247fff882a904535f71682ccf3e90c0a211a5e5a.jpg','jpg',96567,0,'2022-02-08 08:35:23','2022-02-08 08:35:23'),(34,2,'btr_image17','c1f24384d6bd83874a15cc3230288783aceb4ac9.jpg','jpg',194189,0,'2022-02-08 08:36:15','2022-02-08 08:36:15'),(35,2,'btr_image18','aff42236ea29826a5fbde20aa8bb83d0a9339c4b.jpg','jpg',188250,0,'2022-02-08 08:36:15','2022-02-08 08:36:15'),(36,2,'btr_image19','8e2a4a131e71e9baf519a4e9240df9201aea889f.jpg','jpg',135587,0,'2022-02-08 08:36:15','2022-02-08 08:36:15'),(37,2,'btr_image20','cc61497cd2d799167a02ae4a765640e2ad1662bb.jpg','jpg',196315,0,'2022-02-08 08:36:15','2022-02-08 08:36:15'),(38,2,'btr_image22','01571f8a64e716c2b3b95a0ffb708db3d40d388e.jpg','jpg',195333,0,'2022-02-08 08:36:16','2022-02-08 08:36:16'),(39,2,'btr_image23','106fed5088dc56d0960a0a8cd623e5bf54f97ff2.jpg','jpg',187969,0,'2022-02-08 08:36:16','2022-02-08 08:36:16'),(40,2,'btr_image24','c99b790b465d260338f9174fc9579b63f3dc3285.jpg','jpg',194101,0,'2022-02-08 08:36:17','2022-02-08 08:36:17'),(41,2,'btr_image25','0f76213be63c7b6bcefeaadcf21f075380e09293.jpg','jpg',197378,0,'2022-02-08 08:36:17','2022-02-08 08:36:17'),(42,2,'btr_image26','0d728347a19c305a6c4f4b0f85781c87ca3cd885.jpg','jpg',198692,0,'2022-02-08 08:36:17','2022-02-08 08:36:17'),(43,2,'btr_image28','34b7915831b23704dd969d6183c0faa59f6d0717.jpg','jpg',197251,0,'2022-02-08 08:36:17','2022-02-08 08:36:17'),(44,2,'btr_image29','496a92791b547fafec2636cca0de93d55e17ea5d.jpg','jpg',182186,0,'2022-02-08 08:36:18','2022-02-08 08:36:18'),(45,2,'btr_image30','df2d0cd1917e8f2967598d48a0bfd7079034efff.jpg','jpg',127687,0,'2022-02-08 08:36:18','2022-02-08 08:36:18'),(46,2,'btr_image1','48702d29fa64c845a4f25ed6d85829c368016e60.jpg','jpg',205093,0,'2022-02-08 08:37:12','2022-02-08 08:37:12'),(47,2,'btr_image4','f74b06f57ba0c245773b6dbfdac8dfce4c89951b.jpg','jpg',205484,0,'2022-02-08 08:37:12','2022-02-08 08:37:12'),(48,2,'btr_image5','ad4b0bdece76af32bd07338aaed2059eef0a43ff.jpg','jpg',205684,0,'2022-02-08 08:37:13','2022-02-08 08:37:13'),(49,2,'btr_image6','a895f1b2020a8a8fe472083eb2a3a2ebce914a84.jpg','jpg',79740,0,'2022-02-08 08:37:13','2022-02-08 08:37:13'),(50,2,'btr_image8','dd7c6902c107ec726daa2ce85ec7d4b7a7dfb550.jpg','jpg',117146,0,'2022-02-08 08:37:13','2022-02-08 08:37:13'),(51,2,'btr_image9','1479d32d619c8d8fdbe07b4232537bf7e3f03e90.jpg','jpg',85990,0,'2022-02-08 08:37:13','2022-02-08 08:37:13'),(52,2,'btr_image10','1c4935e494b54038a00850c05e4cbb2bb54ae36a.jpg','jpg',107034,0,'2022-02-08 08:37:14','2022-02-08 08:37:14'),(53,2,'btr_image11','c16eac724f8cf050b9a325c4167f90ce1c919f04.jpg','jpg',190931,0,'2022-02-08 08:37:14','2022-02-08 08:37:14'),(54,2,'btr_image12','ed12d2abf6124fa362eeaeddaa467f2f6936aafe.jpg','jpg',202198,0,'2022-02-08 08:37:14','2022-02-08 08:37:14'),(55,2,'btr_image14','6e4c450e47907e03e7714be1c335ba88556eaba7.jpg','jpg',203403,0,'2022-02-08 08:37:14','2022-02-08 08:37:14'),(56,2,'btr_image52','b316e34622c687ffa8e2bab31629ce6ee73d577b.jpg','jpg',198702,0,'2022-02-08 08:38:05','2022-02-08 08:38:05'),(57,2,'btr_image53','897c230cc388f8ff09e16718166a466b33284968.jpg','jpg',105250,0,'2022-02-08 08:38:05','2022-02-08 08:38:05'),(58,2,'btr_image55','e97ace47f5bdab437a7fdaa33f902b3b867284f8.jpg','jpg',198956,0,'2022-02-08 08:38:05','2022-02-08 08:38:05'),(59,2,'btr_image57','89b5516482500563c211fab41e0c55ea3d040c4d.jpg','jpg',105611,0,'2022-02-08 08:38:05','2022-02-08 08:38:05'),(60,2,'btr_image58','656fba27c38de980497a06d121a70d3df3be0785.jpg','jpg',183436,0,'2022-02-08 08:38:06','2022-02-08 08:38:06'),(61,2,'btr_image41','e75b49a614ad5cbb61cc9e080d4274d0f0038413.jpg','jpg',197789,0,'2022-02-08 08:38:23','2022-02-08 08:38:23'),(62,2,'btr_image42','4d64e81b4bf839a6dd1d887d7cc6faa951935007.jpg','jpg',197009,0,'2022-02-08 08:38:23','2022-02-08 08:38:23'),(63,2,'btr_image43','6b23dbbf53fcc7ff0ea37dc38f40289ab6f7c3a7.jpg','jpg',184358,0,'2022-02-08 08:38:23','2022-02-08 08:38:23'),(64,2,'btr_image44','adcc889a50e9a54e43f417f3f25d071004fd7dde.jpg','jpg',203968,0,'2022-02-08 08:38:24','2022-02-08 08:38:24'),(65,2,'btr_image13','8c135d2c26def4e8eda9de0791d030bbf23a9fca.jpg','jpg',150068,0,'2022-02-08 08:38:45','2022-02-08 08:38:45'),(66,2,'btr_image16','bb380bd7ae890ff9c37a14a907214a1ee5965932.jpg','jpg',137931,0,'2022-02-08 08:38:45','2022-02-08 08:38:45'),(67,2,'btr_image21','be75a269016d33775b6b442b10e73cbe543b09e3.jpg','jpg',190341,0,'2022-02-08 08:38:45','2022-02-08 08:38:45'),(68,2,'btr_image27','b93c94e3ff3bbcb5369285894227d2e27e0a2022.jpg','jpg',173124,0,'2022-02-08 08:38:45','2022-02-08 11:02:00'),(69,2,'btr_image2','279646059399eaba1015ba0275a5690b507b65f2.jpg','jpg',207647,0,'2022-02-08 08:39:09','2022-02-08 08:39:09'),(70,2,'btr_image3','fd12f9eb116e2dab9e5dcdc0dac018e9af8ef83d.jpg','jpg',208460,0,'2022-02-08 08:39:09','2022-02-08 11:01:53'),(71,2,'btr_image7','4b18dd77fedec8fa7534763a1d447f30e8e2cdf9.jpg','jpg',206911,0,'2022-02-08 08:39:09','2022-02-08 11:01:52'),(72,2,'btr_image15','09bf9ec02fffc63682b86f8cb3140162cf6fefe6.jpg','jpg',203065,0,'2022-02-08 08:39:09','2022-02-08 11:01:51');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_03_20_060813_create_galleries_table',1),(5,'2021_07_15_054832_create_tenders_table',1),(6,'2021_07_29_063621_create_trackers_table',1),(7,'2021_07_30_153218_create_documents_table',1),(8,'2021_10_09_152334_create_news_table',1),(9,'2021_10_09_161629_create_news_images_table',1),(10,'2022_01_20_094518_create_roles_table',1),(11,'2022_02_17_095845_create_contacts_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `news_slug_unique` (`slug`),
  KEY `news_user_id_foreign` (`user_id`),
  CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,3,'India For Tigers – A Rally On Wheel , Began From Bandhavgarh','india-for-tigers-a-rally-on-wheel-began-from-bandhavgarh','2021-10-11','<p style=\"text-align:justify\">To commemorate the 75 years of Independence of on 15th August 2021; Govt. of India. is conducting a 75 week long country wide campaign<strong>&nbsp;&ldquo;Azadi ka Amrut Mahotsav&rdquo;&nbsp;</strong>with focus on participation from common citizens of the country. To celebrate the monumental occasion under &ldquo;Azadi ka Amrut Mahotsav&rdquo;, The National Tiger Conservation Authority (NTCA), is conducting a pan India activity called&nbsp;<strong>&ldquo;India for Tigers &ndash; A Rally on Wheel&rdquo;&nbsp;</strong>with the objective of celebrating the occasion and spreading the message of biodiversity conservation under the ambit of Project Tiger and Integrated Development of Wildlife Habitats.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>&quot;India for Tigers &ndash; A Rally of Wheels&rdquo; , event began today at Bandhavgarh National Park Tiger Reserve and it will be culminating at Kanha Tiger Reserve on 7th of October. Catch few of the Glimpses.&quot;</strong></p>','1643109269Azadi-ka-Amrut-Mahotsav.jpeg',0,'2022-01-25 11:14:29','2022-02-09 06:43:51'),(2,2,'Test News','test-news','2022-02-09','<p>This is our first news.</p>','16444044691.jpg',1,'2022-02-09 11:01:10','2022-02-09 12:12:26');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_images`
--

DROP TABLE IF EXISTS `news_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `news_id` bigint unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_images_news_id_foreign` (`news_id`),
  CONSTRAINT `news_images_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_images`
--

LOCK TABLES `news_images` WRITE;
/*!40000 ALTER TABLE `news_images` DISABLE KEYS */;
INSERT INTO `news_images` VALUES (1,2,'16444044701.jpg','2022-02-09 11:01:10','2022-02-09 11:01:10'),(2,2,'16444044702.jpg','2022-02-09 11:01:10','2022-02-09 11:01:10'),(3,2,'16444044703.jpg','2022-02-09 11:01:10','2022-02-09 11:01:10');
/*!40000 ALTER TABLE `news_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Server Admin','server','2022-01-25 10:07:35','2022-01-25 10:07:35'),(2,'Super Admin','super','2022-01-25 10:07:35','2022-01-25 10:07:35'),(3,'Admin','admin','2022-01-25 10:07:35','2022-01-25 10:07:35');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenders`
--

DROP TABLE IF EXISTS `tenders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_date` datetime NOT NULL,
  `original_filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` bigint NOT NULL,
  `file_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tenders_slug_unique` (`slug`),
  KEY `tenders_user_id_foreign` (`user_id`),
  CONSTRAINT `tenders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenders`
--

LOCK TABLES `tenders` WRITE;
/*!40000 ALTER TABLE `tenders` DISABLE KEYS */;
INSERT INTO `tenders` VALUES (1,2,'Test Tender','test-tender-2','<p>Test Tender</p>','2022-03-02 23:57:00','Rishika-Work-Status.xlsx','8c8e4cdbead3488331873db8bb6346971211d911.xlsx',5334,'xlsx',1,'2022-03-02 12:22:00','2022-03-02 12:25:27');
/*!40000 ALTER TABLE `tenders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackers`
--

DROP TABLE IF EXISTS `trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trackers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `hits` int NOT NULL,
  `visit_date` date NOT NULL,
  `visit_time` time NOT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackers`
--

LOCK TABLES `trackers` WRITE;
/*!40000 ALTER TABLE `trackers` DISABLE KEYS */;
INSERT INTO `trackers` VALUES (1,'::1','2022-04-01',51,'2022-04-01','15:11:45','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36','2022-04-01 07:36:11','2022-04-01 09:41:45'),(2,'127.0.0.1','2022-04-01',3,'2022-04-01','15:16:31','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0','2022-04-01 07:47:17','2022-04-01 09:46:31'),(5,'192.168.1.39','2022-04-01',10,'2022-04-01','13:29:29','Mozilla/5.0 (Linux; Android 12; RMX3360) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.58 Mobile Safari/537.36','2022-04-01 07:56:51','2022-04-01 07:59:29'),(6,'::1','2022-04-02',52,'2022-04-02','11:59:34','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36','2022-04-02 05:26:05','2022-04-02 06:29:34'),(7,'::1','2022-04-05',57,'2022-04-05','12:00:11','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36','2022-04-05 12:04:43','2022-04-05 06:30:11'),(8,'::1','2022-04-05',2,'2022-04-05','18:00:50','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36 Edg/100.0.1185.29','2022-04-05 12:30:40','2022-04-05 12:30:50'),(9,'::1','2022-04-06',462,'2022-04-06','18:38:13','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36','2022-04-06 05:16:44','2022-04-06 13:08:13'),(11,'::1','2022-04-06',9,'2022-04-06','18:25:04','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36 Edg/100.0.1185.29','2022-04-06 06:51:17','2022-04-06 12:55:04'),(13,'192.168.1.38','2022-04-06',1,'2022-04-06','12:36:07','Mozilla/5.0 (Linux; Android 12; RMX3360) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.79 Mobile Safari/537.36','2022-04-06 07:06:07','2022-04-06 07:06:07'),(14,'::1','2022-04-07',346,'2022-04-07','18:23:05','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36','2022-04-07 07:30:58','2022-04-07 12:53:05'),(15,'::1','2022-04-07',2,'2022-04-07','12:02:18','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Mobile Safari/537.36','2022-04-07 06:19:14','2022-04-07 06:32:18'),(16,'192.168.1.38','2022-04-07',2,'2022-04-07','16:16:58','Mozilla/5.0 (Linux; Android 12; RMX3360) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.79 Mobile Safari/537.36','2022-04-07 10:46:43','2022-04-07 10:46:58'),(17,'::1','2022-04-12',192,'2022-04-12','14:44:02','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36','2022-04-12 05:18:03','2022-04-12 09:14:02'),(18,'192.168.1.38','2022-04-12',6,'2022-04-12','14:33:27','Mozilla/5.0 (Linux; Android 12; RMX3360) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.79 Mobile Safari/537.36','2022-04-12 08:32:18','2022-04-12 09:03:27'),(19,'::1','2022-04-12',7,'2022-04-12','14:17:52','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Mobile Safari/537.36','2022-04-12 08:42:52','2022-04-12 08:47:52');
/*!40000 ALTER TABLE `trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL DEFAULT '3',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Server Admin','botadmin@btr.org',NULL,'$2y$10$ztg9sYINJ1WQjULIty0KLeCfFfpKFBm60OVt3ML2SCBm1GZvscckq',0,NULL,'2022-01-25 10:07:50','2022-01-25 10:07:50'),(2,2,'Super Admin','super@btr.org',NULL,'$2y$10$uoUqZzbede0ZUVTkRkgJ8errxrysoBKJSiRUoO0s8mlpMw4ULC8ri',0,NULL,'2022-01-25 10:07:51','2022-02-09 10:59:43'),(3,3,'Admin BTR','admin@btr.org',NULL,'$2y$10$YtQ13/nKmCQC8qxxm/1aIuzlqONOR9y6iH895IO3KWsXpgIBmOxMi',0,NULL,'2022-01-25 10:07:51','2022-01-28 08:43:46'),(4,2,'Super Admin','superadmin@btr.org',NULL,'$2y$10$s53qVPONwKnCZwWI2.xDIO4AAPrlFRs/rk5WJNjISYg53OxqRawUu',0,NULL,'2022-01-28 08:40:43','2022-01-28 08:43:17');
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

-- Dump completed on 2022-04-12 14:57:54

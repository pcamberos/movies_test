-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ibm_movies
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Action','2020-10-02 09:15:12','2020-10-02 09:15:12'),(2,'Comedy','2020-10-02 09:15:12','2020-10-02 09:15:12'),(3,'Thriller','2020-10-02 09:15:13','2020-10-02 09:15:13'),(4,'Adventure','2020-10-02 09:15:14','2020-10-02 09:15:14'),(5,'Fantassy','2020-10-02 09:15:15','2020-10-02 09:15:15'),(6,'Drama','2020-10-02 09:15:16','2020-10-02 09:15:16'),(7,'Romance','2020-10-02 09:15:16','2020-10-02 09:15:16'),(8,'Musical','2020-10-02 09:15:17','2020-10-02 09:15:17'),(9,'Science Fiction','2020-10-02 09:15:18','2020-10-02 09:15:18'),(10,'Superheroes','2020-10-02 09:15:18','2020-10-02 09:15:18'),(11,'Crimen','2020-10-02 09:15:18','2020-10-02 09:15:18'),(12,'Horror','2020-10-02 09:15:19','2020-10-02 09:15:19'),(13,'Suspense','2020-10-02 09:15:19','2020-10-02 09:15:19'),(14,'Black Humor','2020-10-02 09:15:19','2020-10-02 09:15:19'),(15,'Novel','2020-10-02 09:15:19','2020-10-02 09:15:19'),(16,'Mistery','2020-10-02 09:15:19','2020-10-02 09:15:19'),(17,'Animation','2020-10-02 09:15:19','2020-10-02 09:15:19');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_screenings`
--

DROP TABLE IF EXISTS `categories_screenings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_screenings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `screening_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_screenings_category_id_foreign` (`category_id`),
  KEY `categories_screenings_screening_id_foreign` (`screening_id`),
  CONSTRAINT `categories_screenings_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `categories_screenings_screening_id_foreign` FOREIGN KEY (`screening_id`) REFERENCES `screenings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_screenings`
--

LOCK TABLES `categories_screenings` WRITE;
/*!40000 ALTER TABLE `categories_screenings` DISABLE KEYS */;
INSERT INTO `categories_screenings` VALUES (1,7,1,NULL,NULL),(2,6,1,NULL,NULL),(3,8,2,NULL,NULL),(4,6,2,NULL,NULL),(5,1,3,NULL,NULL),(6,4,3,NULL,NULL),(7,9,3,NULL,NULL),(8,10,3,NULL,NULL),(9,1,4,NULL,NULL),(10,11,4,NULL,NULL),(11,1,5,NULL,NULL),(12,2,5,NULL,NULL),(13,12,5,NULL,NULL),(14,2,6,NULL,NULL),(15,5,6,NULL,NULL),(16,6,7,NULL,NULL),(17,13,7,NULL,NULL),(18,14,7,NULL,NULL),(19,2,8,NULL,NULL),(20,1,9,NULL,NULL),(21,3,9,NULL,NULL),(22,15,9,NULL,NULL),(23,16,9,NULL,NULL),(24,1,10,NULL,NULL),(25,2,10,NULL,NULL),(26,9,10,NULL,NULL),(27,10,10,NULL,NULL),(28,4,11,NULL,NULL),(29,5,11,NULL,NULL),(30,17,11,NULL,NULL),(31,2,12,NULL,NULL),(32,6,12,NULL,NULL);
/*!40000 ALTER TABLE `categories_screenings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (180,'2014_10_12_000000_create_users_table',1),(181,'2014_10_12_100000_create_password_resets_table',1),(182,'2019_08_19_000000_create_failed_jobs_table',1),(183,'2020_10_01_211440_create_screenings_table',1),(184,'2020_10_02_010502_create_categories_table',1),(185,'2020_10_02_013310_create_categories_screenings_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `screenings`
--

DROP TABLE IF EXISTS `screenings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `screenings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `movie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screenings`
--

LOCK TABLES `screenings` WRITE;
/*!40000 ALTER TABLE `screenings` DISABLE KEYS */;
INSERT INTO `screenings` VALUES (1,'2020-10-02 09:15:19','2020-10-02 09:15:19','The Theory Of Everything','A12','2020-10-10 16:40:00','English','United Kingdom',7.70),(2,'2020-10-02 09:15:19','2020-10-02 09:15:19','Sing Street','A7','2020-10-20 20:10:00','English','Ireland',7.20),(3,'2020-10-02 09:15:20','2020-10-02 09:15:20','Spider-Man: Into the Spider-Verse','P3','2020-10-22 14:45:00','English','United States',8.40),(4,'2020-10-02 09:15:20','2020-10-02 09:15:20','Kingsman: The Secret Service','B12','2020-10-08 21:20:00','English','United Kingdom',6.80),(5,'2020-10-02 09:15:20','2020-10-02 09:15:20','Zombieland','C2','2020-11-21 22:25:00','English','United States',7.60),(6,'2020-10-02 09:15:20','2020-10-02 09:15:20','Scott Pilgrim vs. the World','A10','2020-10-22 20:08:00','English','United States',7.50),(7,'2020-10-02 09:15:20','2020-10-02 09:15:20','Parasites','D21','2020-12-21 22:20:00','Korean','South Korea',8.60),(8,'2020-10-02 09:15:20','2020-10-02 09:15:20','Me, Myself & Irene','A3','2020-11-21 14:20:00','English','United States',6.60),(9,'2020-10-02 09:15:20','2020-10-02 09:15:20','Harry Potter and the Deathly Hallows – Part 1','A2','2020-10-22 20:10:00','English','United Kingdom',7.70),(10,'2020-10-02 09:15:20','2020-10-02 09:15:20','Deadpool','D7','2020-10-08 22:45:00','English','United States',8.00),(11,'2020-10-02 09:15:20','2020-10-02 09:15:20','How to train your dragon 3','D7','2020-11-08 22:45:00','English','United States',7.60),(12,'2020-10-02 09:15:20','2020-10-02 09:15:20','The Internship','D7','2020-10-08 21:15:00','English','United States',6.30);
/*!40000 ALTER TABLE `screenings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2020-10-01 23:25:37

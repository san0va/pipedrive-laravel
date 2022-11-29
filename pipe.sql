-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: pipedriveapp
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_03_12_120914_create_pipedrive_tokens_table',1),(4,'2022_11_23_124810_create_profiles_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
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
-- Table structure for table `pipedrive_tokens`
--

DROP TABLE IF EXISTS `pipedrive_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pipedrive_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pipedrive_tokens`
--

LOCK TABLES `pipedrive_tokens` WRITE;
/*!40000 ALTER TABLE `pipedrive_tokens` DISABLE KEYS */;
INSERT INTO `pipedrive_tokens` VALUES (1,1,'O:30:\"Devio\\Pipedrive\\PipedriveToken\":3:{s:14:\"\0*\0accessToken\";s:476:\"nMA3g/OaSXi5eWXFv9zPz85gSFJM9LLZtpdka6tgdMg12Y7w+tLT8nNB8yZsHipzoUiuLEVYROlVaPY4bk8he/bVve2M1L4EE2/FLI0GO1Kas/BTHd+lfDI00kPZWHmkFjtVEk2w2rRtqbTro1uHo9cBAj3FgXQUzUKKg3XxrHSVPfINclgXzrhSOIPw4WTnL5Wi0tWN5MlSivvAiF65sGC8E7JAdt67kyO2XR1x+rib+z8FUA+QSZsyuPmRTuhGyZvdk4+f0pNODSsaWrzpP9MxvbswFJ8VOTfS/ofFm1htDyPleAQ6i+LcQjAI/uLsvkx2GZ8Q2uPtlO0tsAHsHTis6wHSoMgoG0xmPk+k/eyV2eoSdo4CIdhWraSjrXOyDiAfYQ3DjyQllYVOBbmHfZpLkIpYpm5monBhGLf3iTvL7BcG7d8LkM2Nnt+zH3c7a4GAe/MwdKi3DZ4rrGhxdcPDjTI=\";s:12:\"\0*\0expiresAt\";s:10:\"1669430482\";s:15:\"\0*\0refreshToken\";s:58:\"12442705:16896558:9783c93e6854dab6f79442317738a7c8e8456a29\";}','2022-11-23 11:33:12','2022-11-26 09:41:23'),(2,2,'O:30:\"Devio\\Pipedrive\\PipedriveToken\":3:{s:14:\"\0*\0accessToken\";s:476:\"xXt4CHezSpMg7C7ZF7JjNK8l1drwOxos7Hrkp/9PwCcBGJAN3vVF9d4xBl4g8g4jOrdCxrXRUQIGqQTT7PgVvaWuv07rYom0EeNwnF1mkk2tZv8M0n6PLrCq+M/itsTkxhJCps5M0yaE1WNqdeb5WEWNpEkgn1qWWsD43EnMGs0c7qJ6y1xtsTsBnnkxBgqhTDifBlzKUEExjBdF19EKINN0tk+fEss5WFGo9NBqE42XIYtWvFtgdJ7CxRe2/8mAKkS09q4OJmvceDxdgHgymm7g7y8lmW/dtVaO8xJ+/lLoXDMsYymF80kGFXMQHfMm9dbeHURxY3iw5f1tkjIzpV7aMXUlFB4RsGvBiqs4MjW8GtwvZvXxvloGcaujRO+U7v+KkoQT+8xjLb0fBG7EOt33RpXv8fIwh5WJhtrcBk7SsXYMY2lbvcKdwaHkSsMAdfqMV76CKm9n3V0fDbwKZ3DNAvo=\";s:12:\"\0*\0expiresAt\";s:10:\"1669223643\";s:15:\"\0*\0refreshToken\";s:58:\"12442705:16934431:e03011c3f1ae6856b3294ac5541dcc4e7bb6a37d\";}','2022-11-23 21:56:03','2022-11-24 00:14:04');
/*!40000 ALTER TABLE `pipedrive_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `persons` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,'Cool Title','Description',NULL,NULL,'2022-11-23 21:23:29','2022-11-23 21:34:04'),(2,2,'second title',NULL,NULL,NULL,'2022-11-23 22:09:57','2022-11-23 22:09:57');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pipedrive_user_id` int NOT NULL,
  `pipedrive_company_id` int NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'DeVaughn','devaughn@ndmscorp.com',NULL,16896558,12442705,'F7dPCzyLM76qXm4KFXdXn2PmAiCx3ywmT2nJHJMCEENl6MsY1xcv6VtJs1HB','2022-11-23 11:33:12','2022-11-23 11:33:12'),(2,'PaidYET User','devaughn@paidyet.com',NULL,16934431,12442705,'sZhrHwOn19xRq84NgjDTQss8QkZVlPCE5woKxIYJtbRabwMqfCMyXS8mpaQD','2022-11-23 21:56:03','2022-11-23 21:56:03');
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

-- Dump completed on 2022-11-28 21:03:38

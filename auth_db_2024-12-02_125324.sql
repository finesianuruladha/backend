-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: auth_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'b3dbca77-f352-4e63-a727-f72b4291ca83','Product 2',222,4,'2024-11-25 05:04:51','2024-11-25 05:04:51'),(3,'9b52c244-ca00-4515-a36d-e9cf844025c4','Product 3',230,4,'2024-11-25 05:05:02','2024-11-25 05:05:02'),(4,'ccf4d01a-e847-4316-a0be-acd636295243','Product 4',458,3,'2024-11-25 05:06:00','2024-11-25 05:06:00'),(5,'21f52ee3-e262-4ff9-b9f1-b451f3707563','Product 5',478,3,'2024-11-25 05:06:11','2024-11-25 05:06:11'),(6,'7e0125a2-7dc8-4179-934f-b1e231b1111e','Product 6',500,3,'2024-11-25 05:06:19','2024-11-25 05:06:19'),(7,'a7b234c2-0c89-4a5a-8d00-ad8fbaf23eab','product 7',356,3,'2024-11-25 10:53:09','2024-11-25 10:53:09'),(8,'40097ae8-8899-4c6e-a729-873bf5da3fea','Product Sale',199,4,'2024-11-25 11:29:28','2024-11-25 11:29:28'),(9,'a6f8a4fb-0060-4de5-851c-ddee2130b889','Kucing Akmal',999,5,'2024-11-25 11:37:22','2024-11-25 11:37:22');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('-QgbC34hXm91y2SqlAARG6lJcFloGjOJ','2024-11-26 11:29:28','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 11:29:28','2024-11-25 11:29:28'),('2yJLXa6o_iCgj5v8YRyF6ccPbQnSTVMA','2024-11-26 10:50:57','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 10:50:57','2024-11-25 10:50:57'),('33Rhrs_dnwK4YlE29R9cPZHEQHXlJL4i','2024-12-03 03:56:53','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"f07da0a6-b3df-44fb-90c4-4069c0493a18\"}','2024-12-02 03:55:52','2024-12-02 03:56:53'),('4H7wttWem93QSXLxFFFkKHXQTkUmTpvG','2024-11-26 10:53:09','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 10:53:09','2024-11-25 10:53:09'),('6ltrF4WDVAXUKVxylBacuuk4otv0flpb','2024-11-26 10:51:18','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 10:51:18','2024-11-25 10:51:18'),('8hOA4S1ucIWAhztjP0co6lHjyHyUgskh','2024-12-03 03:54:45','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"f07da0a6-b3df-44fb-90c4-4069c0493a18\"}','2024-11-25 08:35:44','2024-12-02 03:54:45'),('cB1DxEVfq6rR1ZhplxCxyqk1v-f1Wx9k','2024-12-03 00:38:22','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-12-02 00:38:22','2024-12-02 00:38:22'),('G1Ko4J-8p0OuVoOUWf0sSGcsfGXdEMRB','2024-11-26 10:52:05','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 10:52:05','2024-11-25 10:52:05'),('HEnUWrOy0tnIvcctW_f8UeMg6HOSfIXx','2024-11-26 11:37:40','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 11:37:40','2024-11-25 11:37:40'),('ja-Q3x-iK-1Wrjs-aZ30UwUpvhyKXwLW','2024-11-26 11:36:42','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 11:36:42','2024-11-25 11:36:42'),('JvLINOOtqE9grCHaYfYO861qgb4VQUnx','2024-11-26 11:00:09','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 11:00:09','2024-11-25 11:00:09'),('jyOsKYgr6ypaKWSlBE1hj4MFjzwtAItm','2024-11-26 11:37:02','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 11:37:02','2024-11-25 11:37:02'),('ksX4eQVlIhKklQBLpMcEpXiAugNooS-g','2024-11-26 10:51:28','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 10:51:28','2024-11-25 10:51:28'),('L6yIPv22QKl0cXYB4R33MlTyJ6t-Tlqn','2024-11-26 11:36:51','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 11:36:51','2024-11-25 11:36:51'),('lj5KM5NeHOHmF-QjZ5cPFXg2ZMAEAONM','2024-11-26 10:58:29','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"f07da0a6-b3df-44fb-90c4-4069c0493a18\"}','2024-11-25 10:52:05','2024-11-25 10:58:29'),('LX6ALxdEfiytht8quQ2L0WvG6C7Qe-po','2024-11-26 11:37:22','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 11:37:22','2024-11-25 11:37:22'),('Ms1lQivZZUbDNDt9mNJQSu6AVw7NKa7E','2024-11-26 11:37:47','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"f07da0a6-b3df-44fb-90c4-4069c0493a18\"}','2024-11-25 11:37:40','2024-11-25 11:37:47'),('mtpvZ5VtYdbQOpaZr_KXUheFFTzGkJ2T','2024-11-26 10:52:23','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 10:52:23','2024-11-25 10:52:23'),('mUTG8Mqladvu_omBFmIpUN_BKO2xL4pS','2024-11-26 11:37:28','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 11:37:28','2024-11-25 11:37:28'),('PuKfjSxfynjldo8Qb9eN4S2b5jc5SD6W','2024-11-26 11:29:34','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 11:29:34','2024-11-25 11:29:34'),('rqVAyrsvzDeLrreapPKF-F1VdXpjPmdt','2024-11-26 10:51:39','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 10:51:39','2024-11-25 10:51:39'),('sTT2sM27kqygFyADEcV6FBFKQ5SIj0Rq','2024-12-03 03:55:51','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-12-02 03:55:51','2024-12-02 03:55:51'),('txnZAQ05QAlicMu9erYsztMCqlgBmtH-','2024-12-03 00:38:22','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-12-02 00:38:22','2024-12-02 00:38:22'),('u7D6Y-b2p7_JIvRQCV0NOfABa5Kf188f','2024-11-26 11:29:00','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 11:29:00','2024-11-25 11:29:00'),('vA9JTiEuMTm1i6DuXMLFAx9EwGMcMokK','2024-11-26 11:28:47','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 11:28:47','2024-11-25 11:28:47'),('x86hKkEVvn893acWV6cWZip1lXnsP7YM','2024-11-26 10:56:55','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 10:56:55','2024-11-25 10:56:55'),('xxz_-ktZco7kDknNd2eRhSsi-fNRs1F-','2024-11-26 11:29:47','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-11-25 11:29:47','2024-11-25 11:29:47');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'f07da0a6-b3df-44fb-90c4-4069c0493a18','Lingga Diva','admin@gmail.com','$argon2id$v=19$m=65536,t=3,p=4$AaxG1QETsemqgjdnpeRodA$we0g2JhiE4UBCbw7v9rqkbKElEVcr7hBwTPJeGf4D9U','admin','2024-11-25 02:31:14','2024-11-25 02:31:14'),(4,'d4f5731d-dca6-4671-ad9a-a37ea3545417','John Doe','john@gmail.com','$argon2id$v=19$m=65536,t=3,p=4$wu1DbdeLxznlLOMMygI2ug$kbiRw4E8gGK/hA7KXPT/aNDXvXSTGLrKt99k4ZIXeFY','user','2024-11-25 04:28:08','2024-11-25 04:28:08'),(5,'7c8df49c-6700-4022-804e-3cbdd98d3d46','Yuyun','yuyun@gmail.com','$argon2id$v=19$m=65536,t=3,p=4$91iXauuR7gUlOzUd4MfCdQ$5bHqJhwkVD5iAqu1f6+D5TX5+qu86ye4nKTDM20MEkQ','user','2024-11-25 11:36:43','2024-11-25 11:36:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Dumping routines for database 'auth_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-02 12:53:41

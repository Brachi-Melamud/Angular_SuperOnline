CREATE DATABASE  IF NOT EXISTS `shopping` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shopping`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopping
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `cart_details`
--

DROP TABLE IF EXISTS `cart_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `total_price` int NOT NULL DEFAULT '0',
  `cart_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id_cart_idx` (`product_id`),
  KEY `cart_id_key_idx` (`cart_id`),
  CONSTRAINT `cart_id_key` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
<<<<<<< HEAD
  CONSTRAINT `product_id_cart` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
=======
  CONSTRAINT `product_id_cart` FOREIGN KEY (`product_id`) REFERENCES `products_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
>>>>>>> parent of 3cf9cdc... update_compose
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_details`
--

LOCK TABLES `cart_details` WRITE;
/*!40000 ALTER TABLE `cart_details` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `cart_details` VALUES (1,1,2,10,3),(2,2,1,2,3),(3,3,1,3,3),(43,5,1,16,4),(44,8,1,3,4),(45,7,1,32,4),(46,2,1,2,5),(47,1,1,5,5),(48,6,3,87,6),(49,4,4,8,7),(50,1,5,25,8),(51,1,4,20,9),(52,6,2,58,10),(53,5,2,32,11),(54,7,2,64,11),(55,2,5,10,12),(56,4,5,10,13),(57,2,5,10,14),(58,1,3,15,15),(59,3,4,12,16),(60,4,5,10,16),(61,6,3,87,17),(62,5,2,32,18),(63,10,2,60,19),(64,7,1,32,20),(65,6,1,29,21),(66,5,1,16,21),(67,4,3,6,22),(68,1,1,5,23),(74,1,4,20,29),(77,4,1,2,29),(78,5,1,16,29),(79,6,1,29,29),(80,7,1,32,29),(85,3,1,3,32),(86,7,1,32,32),(88,11,1,3,30),(89,11,1,3,34),(90,12,1,5,34),(91,3,1,3,35),(92,5,1,15,36);
=======
INSERT INTO `cart_details` VALUES (1,1,2,10,3),(2,2,1,2,3),(3,3,1,3,3);
>>>>>>> parent of 3cf9cdc... update_compose
/*!40000 ALTER TABLE `cart_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id_cart_idx` (`user_id`),
  CONSTRAINT `user_id_cart` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (3,244134678,'2022-08-27 05:35:17',0),(4,244134678,'2022-08-27 06:03:23',0),(5,244134678,'2022-09-14 14:57:24',0),(6,244134678,'2022-09-14 15:09:40',0),(7,244134678,'2022-09-14 15:10:02',0),(8,244134678,'2022-09-14 16:12:43',0),(9,244134678,'2022-09-14 16:14:30',0),(10,244134678,'2022-09-14 16:16:28',0),(11,244134678,'2022-09-14 16:17:55',0),(12,244134678,'2022-09-14 16:20:10',0),(13,244134678,'2022-09-14 16:22:35',0),(14,244134678,'2022-09-14 16:30:16',0),(15,244134678,'2022-09-14 16:37:37',0),(16,244134678,'2022-09-14 16:39:14',0),(17,244134678,'2022-09-14 16:40:06',0),(18,244134678,'2022-09-14 16:41:18',0),(19,244134678,'2022-09-14 16:42:37',0),(20,244134678,'2022-09-14 16:43:22',0),(21,244134678,'2022-09-14 16:44:22',0),(22,244134678,'2022-09-14 16:45:23',0),(23,244134678,'2022-09-14 16:58:14',0),(29,244134678,'2022-09-14 17:15:04',0),(30,244134678,'2022-09-26 10:20:22',0),(31,211455673,'2022-09-26 10:38:34',1),(32,123123123,'2022-09-26 11:31:51',0),(33,123123123,'2022-09-26 11:34:27',1),(34,244134678,'2022-09-26 13:33:44',0),(35,244134678,'2022-09-26 13:34:01',0),(36,244134678,'2022-09-26 13:34:20',1);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `cart_id` int NOT NULL,
  `total_price` int NOT NULL DEFAULT '0',
  `city` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `order_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `credit_card` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_user_id_idx` (`user_id`),
  KEY `order_cart_id_idx` (`cart_id`),
  CONSTRAINT `order_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  CONSTRAINT `order_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,244134678,3,15,'Rishon LeZion','harav kapah 5','2022-08-28','2022-08-27 06:23:33','3038'),(2,244134678,4,51,'Tel Aviv','zhavi 5','2022-09-16','2022-09-14 14:54:53','2323'),(3,244134678,5,7,'Jerusalem','zahava 5','2022-09-16','2022-09-14 15:09:30','2323'),(4,244134678,6,87,'Givattaim','doron avner 5','2022-09-16','2022-09-14 15:09:59','4545'),(5,244134678,7,8,'Beer Sheva','doron 22 ','2022-09-17','2022-09-14 16:09:28','3345'),(6,244134678,8,25,'Rishon LeZion','Kapah 5','2022-09-22','2022-09-14 16:13:13','2323'),(7,244134678,9,20,'Tel Aviv','shlomo ben josef 2','2022-09-22','2022-09-14 16:15:20','2328'),(8,244134678,10,58,'Jerusalem','nviim 2','2022-09-20','2022-09-14 16:17:30','2233'),(9,244134678,11,96,'Haifa','ein barim','2022-09-18','2022-09-14 16:19:43','1114'),(10,244134678,12,10,'Tel Aviv','shlomo ben jose 22','2022-09-16','2022-09-14 16:20:45','3323'),(11,244134678,13,10,'Beer Sheva','darom adom 2','2022-09-16','2022-09-14 16:22:52','2323'),(12,244134678,14,10,'Haifa','no football 5','2022-09-16','2022-09-14 16:35:44','3322'),(13,244134678,15,15,'Haifa','shlomo josef 2','2022-09-16','2022-09-14 16:37:59','5463'),(14,244134678,16,22,'Yahod','geva 65','2022-09-16','2022-09-14 16:39:32','2323'),(15,244134678,17,87,'Yahod','dvira 44','2022-09-16','2022-09-14 16:40:38','1145'),(16,244134678,18,32,'Rishon LeZion','harav kapah 2','2022-09-16','2022-09-14 16:42:04','1120'),(17,244134678,19,60,'Rishon LeZion','kalisher 5','2022-09-16','2022-09-14 16:42:50','2256'),(18,244134678,20,32,'Rishon LeZion','kapah 23','2022-09-16','2022-09-14 16:43:38','2467'),(19,244134678,21,45,'Rishon LeZion','dvira','2022-09-16','2022-09-14 16:44:34','2323'),(20,244134678,22,6,'Rishon LeZion','goren 55','2022-09-16','2022-09-14 16:46:37','2456'),(21,244134678,23,5,'Tel Aviv','kitzis 22','2022-09-16','2022-09-14 16:58:30','2323'),(27,244134678,29,99,'this.currentBuyer.city','harav kapah 5','2022-10-04','2022-09-26 10:19:24','3232'),(28,123123123,32,35,'this.currentBuyer.city','gmaliim 3','2022-09-29','2022-09-26 11:34:17','3231'),(29,244134678,30,3,'this.currentBuyer.city','harav kapah 5','2022-10-22','2022-09-26 13:33:42','7777'),(30,244134678,34,8,'this.currentBuyer.city','harav kapah 5','2022-10-22','2022-09-26 13:33:58','6767'),(31,244134678,35,3,'this.currentBuyer.city','harav kapah 5','2022-10-22','2022-09-26 13:34:14','9898');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `category_id` int NOT NULL,
  `price` int NOT NULL,
  `picture` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id_name_idx` (`category_id`),
  CONSTRAINT `category_id_name` FOREIGN KEY (`category_id`) REFERENCES `products_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'eggs L size',1,5,'https://www.ovotherm.com/images/images/products/showcase_vision_1x18-vorschau.png'),(2,'milk ',1,2,'https://www.dutchlady.com.my/wp-content/uploads/2020/09/fresh-milk-pasteurised-1l-1.jpg'),(3,'cucumber',2,3,'https://bustlingnest.com/wp-content/uploads/early-spring-cucumber.jpg'),(4,'tomato',2,2,'https://upload.wikimedia.org/wikipedia/commons/8/89/Tomato_je.jpg'),(5,'chicken breast',3,15,'https://storage.googleapis.com/images-sof-prd-9fa6b8b.sof.prd.v8.commerce.mi9cloud.com/product-images/detail/00276588000002.jpg'),(6,'beef steak',3,29,'https://storage.googleapis.com/images-sof-prd-9fa6b8b.sof.prd.v8.commerce.mi9cloud.com/product-images/detail/00251026000004.jpg'),(7,'moulin white wine',4,32,'https://produits.bienmanger.com/39439-0w470h470_Moulin_Gassac_100_Chardonnay_White_Wine_Igp_Pays.jpg'),(8,'coke 1.5L',4,3,'https://d2j6dbq0eux0bg.cloudfront.net/images/22439182/2089898603.jpg'),(9,'sprite 1.5L',4,2,'https://www.kipostisedem.com/wp-content/uploads/2021/12/sprite-1.5l.jpg'),(10,'shiraz red wine',4,30,'https://produits.bienmanger.com/28387-0w600h600_Red_Wine_Shiraz_Bin_Kalimna_Penfolds.jpg'),(11,'soy milk',1,3,'http://cdn.shopify.com/s/files/1/0602/9302/1934/products/soy-milk.jpg?v=1643995358'),(12,'rice milk',1,5,'https://www.klilhateva.co.il/GoopSitesFiles/83719/User/catalog_619377-l.jpg?637637510596200000'),(13,'YARRA red wine',4,26,'https://cdn.shopify.com/s/files/1/1038/0212/products/YY_3222x.png?v=1654139348'),(14,'red pepper',2,2,'https://images.immediate.co.uk/production/volatile/sites/30/2020/02/Red-peppers-afa27f8.jpg'),(15,'fanta 1.5L',4,3,'http://cdn.shopify.com/s/files/1/0634/8780/3634/products/fanta1.5L.jpg?v=1660752400'),(16,'fuzetea 1.5L',4,2,'https://dancle.co.uk/pub/media/catalog/product/cache/ebc196c792097a681c0ee88b14f7e2e4/1/0/1053.jpg'),(17,'peach',2,2,'https://litufruits.com/admin/upload/images/4788-2022-04-18.jpg'),(18,'watermelon',2,6,'https://www.verodav-shop.com/wp-content/uploads/2022/01/whole-and-slices-watermelon.jpg'),(19,'cheddar cheese',1,8,'https://assets.woolworths.com.au/images/2010/33532.jpg?impolicy=wowcdxwbjbx&w=900&h=900'),(20,'smoked salmon',3,13,'https://divcomplatform.s3.amazonaws.com/www.seafoodsource.com/images/f22be6534bdd476eae3a1dc26e4c04d5.jpeg'),(21,'T-Bone steak',3,46,'https://www.coltrades.com/41817-large_default/beef-choice-angus-t-bone-steak-family-pack-2-4-3-16-lb.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_categories`
--

DROP TABLE IF EXISTS `products_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_categories`
--

LOCK TABLES `products_categories` WRITE;
/*!40000 ALTER TABLE `products_categories` DISABLE KEYS */;
INSERT INTO `products_categories` VALUES (1,'milk & eggs'),(2,'vegetables & fruits'),(3,'meat & fish'),(4,'wine & drinks');
/*!40000 ALTER TABLE `products_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL DEFAULT 'viewer',
  `city` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (123123123,'rotem','doten','rotem@gmail.com','123456','viewer','Beer Sheva','gmaliim 3'),(244134678,'or','doron','or@dor.com','123456','viewer','Rishon LeZion','harav kapah 5');
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

<<<<<<< HEAD
-- Dump completed on 2022-09-26 18:31:22
=======
-- Dump completed on 2022-08-27 10:14:36
>>>>>>> parent of 3cf9cdc... update_compose

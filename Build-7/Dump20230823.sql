-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: booktopia
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `isbn_no` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `FK8el3ddb59ciucupyc17vu7835` (`category_id`),
  CONSTRAINT `FK8el3ddb59ciucupyc17vu7835` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Harper Lee','To Kill a Mocking Bird','A gripping novel on social injustice','d6d6f521-f9b1-47b7-832e-a62dc3894385.jpg','978-7652659','English',450,1,4),(2,'George Orwell','1984','A dystopian masterpiece','d3de4493-7823-4912-a9f4-af77e5e1e6a6.jpeg','978-9876543210','English',380,0,2),(4,'Charlotte BrontÃ«','Jane Eyre','A gothic romance novel','5398af5b-b698-4960-8b55-9ce902aa3ebe.jpeg','978-6789012345','English',370,1,4),(5,'J.R.R. Tolkien','The Hobbit','A fantasy adventure','8e2e11cb-13d3-49e0-b12b-8a68f6edf154.jpg','978-3456789012','English',650,1,5),(6,'Ray Bradbury','Fahrenheit 451','A tale of censorship and knowledge','7f8a275a-40aa-4d3b-b43a-4e8376b0407a.jpeg','978-5678901234','English',340,0,6),(7,'Aldous Huxley','Brave New World','Exploring a dystopian society','719eada7-1794-41ed-a1af-0a9bcd1eb205.jpeg','978-6789012345','English',240,0,6),(8,'Herman Melville','Moby-Dick','A classic adventure on the sea','15a5f7a4-3ee5-4180-920e-bc43ef7a5a14.jpeg','978-7890123456','English',150,0,7),(9,'J.D. Salinger','The Catcher in the Rye','A coming-of-age novel','ac72d0f8-82d7-438a-9006-8ec47e771f19.jpeg','978-8901234567','English',360,1,1),(10,'J.R.R. Tolkien','Lord of the Rings: The Fellowship of the Ring','An epic fantasy quest','10dfdbc9-139a-407b-97f6-890e79cf3b92.jpeg','978-1234567890','English',900,NULL,5),(11,'George Orwell','Animal Farm','A political allegory','4d577cd8-c59f-49d5-b238-6b5476c5c1ef.jpeg','978-9876543210','English',200,NULL,8),(12,'Homer','The Odyssey','An ancient epic poem','75befc51-b12e-405f-9c17-3a483745d281.jpeg','978-4567890123','English',700,NULL,9),(13,'Mary Shelley','Frankenstein','A classic Gothic novel','4be9a56f-b3e7-45a9-a695-537899395333.jpeg','978-6789012345','English',660,NULL,1),(14,'Charles Dickens','A Tale of Two Cities','A historical novel','a66ab5da-1421-48a4-bda5-45dafccc8844.jpeg','978-3456789012','English',420,NULL,10),(15,'Paulo Coelho','The Alchemist','A philosophical novel','a4536287-a48a-476b-a206-9c0ef6543ee4.jpeg','978-5678901234','English',750,NULL,11),(16,'Oscar Wilde','The Picture of Dorian Gray','A novel of moral decadence','80f9dc3c-1061-4608-bcd5-f13260c8acd1.jpeg','978-6789012345','English',450,NULL,1),(17,'C.S. Lewis','The Chronicles of Narnia: The Lion, the Witch and the Wardrobe','A children\'s fantasy','54fa0ad1-5376-4f16-8cb2-52133f76d6f1.jpeg','978-7890123456','English',550,NULL,12),(18,'Gabriel GarcÃ­a MÃ¡rquez','One Hundred Years of Solitude','A magical realist novel','b0985cbf-60ca-4a7f-a44f-a2a36da054cb.jpeg','978-8901234567','English',400,NULL,13),(19,'Leo Tolstoy','War and Peace','A historical novel','c3bd2081-6fdb-4e89-9ed9-1a3c3d0155ea.jpeg','978-1234567890','English',350,NULL,10),(20,'John Steinbeck','The Grapes of Wrath','A novel on the Great Depression','92374976-bb0b-404d-9f86-35cabad354c7.jpeg','978-9876543210','English',200,NULL,10),(21,'Alexandre Dumas','The Count of Monte Cristo','An adventure novel','e9092625-ab68-4deb-9136-5c6718b8da51.jpeg','978-4567890123','English',350,NULL,7),(35,'Napoleon Hill','Think Rich , Grow Rich','Nikal ja bsdk','71cc94b4-27bc-483f-85f6-bf5a6452c828.jpg','978-6365756756','English',220,NULL,11),(36,'Napoleon Hill','Psychology of Money','Philosophical','WhatsApp Image 2023-05-02 at 5.51.31 PM.jpeg','978-6365760340','English',340,0,10);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `FK1ykovbj90wkvqwa6m6463h21p` (`book_id`),
  KEY `FKg5uhi8vpsuy0lgloxk2h4w5o6` (`user_id`),
  CONSTRAINT `FK1ykovbj90wkvqwa6m6463h21p` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  CONSTRAINT `FKg5uhi8vpsuy0lgloxk2h4w5o6` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Fiction','Books of imaginative storytelling'),(2,'Science Fiction','Speculative fiction based on scientific principles'),(3,'Classic','Timeless literary works'),(4,'Romance','Books centered around love and relationships'),(5,'Fantasy','Books featuring magical or fantastical elements'),(6,'Political','Books dealing with politics and power'),(7,'Adventure','Books focused on exciting journeys and challenges'),(8,'Historical','Books set in historical contexts'),(9,'Epic','Long narrative poems or novels'),(10,'Gothic','Books with dark, mysterious, and supernatural themes'),(11,'Philosophical','Books exploring deep philosophical concepts'),(12,'Children\'s','Books for young readers'),(13,'Magical Realism','Books blending reality with magical elements'),(18,'string','string'),(19,'Abdul','Prachi');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `book_book_id` int DEFAULT NULL,
  `user_user_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK7jh8e6kdqmchvxtmykslk6sex` (`book_book_id`),
  KEY `FK38709695otpk064vi3y92u08s` (`user_user_id`),
  CONSTRAINT `FK38709695otpk064vi3y92u08s` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FK7jh8e6kdqmchvxtmykslk6sex` FOREIGN KEY (`book_book_id`) REFERENCES `books` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2023-08-18','ORD-593','cash',21.98,2,'Order Packed',1,2),(2,'2023-08-18','ORD-950','cash',21.98,2,'Order Recieved',1,2),(3,'2023-08-18','ORD-890','cash',21.98,2,'Order Processing',1,2),(4,'2023-08-18','ORD-633','cash',32.97,3,'Order Processing',1,2),(5,'2023-08-18','ORD-229','cash',54.95,5,'delivered',1,2),(6,'2023-08-22','ORD-519','COD',10.67,1,'Order Processing',1,2),(7,'2023-08-22','ORD-791','Card Payment',61.25,7,'Order Processing',2,2),(8,'2023-08-22','ORD-31','COD',13.25,1,'Order Processing',8,2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_details`
--

DROP TABLE IF EXISTS `payment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_details` (
  `id` binary(255) NOT NULL,
  `amount` double DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `order_order_id` int DEFAULT NULL,
  `user_user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa5yaof2o1ieeuyqvk2pnfnhyr` (`order_order_id`),
  KEY `FKan03q7i0ra3wbmwnf8wiu4fdw` (`user_user_id`),
  CONSTRAINT `FKa5yaof2o1ieeuyqvk2pnfnhyr` FOREIGN KEY (`order_order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `FKan03q7i0ra3wbmwnf8wiu4fdw` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_details`
--

LOCK TABLES `payment_details` WRITE;
/*!40000 ALTER TABLE `payment_details` DISABLE KEYS */;
INSERT INTO `payment_details` VALUES (_binary 'Gr`	\Ã/Og†ö8ˆ}S\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,NULL,NULL,NULL,NULL),(_binary 'b•ò˜€mJ¬’W/5o\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',12,'SUCCESS','CASH',1,1),(_binary '\í{»6;ûHÔœ\Þ\"IY\"C\å\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',12,'SUCCESS','CASH',NULL,1);
/*!40000 ALTER TABLE `payment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `cust_id` int DEFAULT NULL,
  `cust_name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `rating` int DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,'Excellent read, thoroughly enjoyed it!',1001,'Alice Johnson','2023-08-01',5),(2,1,'This book was a bit disappointing.',1002,'Bob Smith','2023-07-29',2),(3,1,'Couldn\'t put it down, a real page-turner.',1003,'Claire Brown','2023-08-05',4),(4,1,'Beautifully written, highly recommend.',1004,'David Wilson','2023-08-10',5),(5,1,'Not my genre, but I gave it a try.',1005,'Emily Davis','2023-08-03',3),(6,1,'Intriguing plot, but the ending was abrupt.',1006,'Fiona Anderson','2023-07-31',3),(7,1,'A solid book overall, kept me engaged.',1007,'George Lee','2023-08-08',4),(8,2,'string',6,'string','2020-08-18',4),(9,5,'HPPP',1001,'Alice Johnasan','2023-08-08',3);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mob_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'string','string','hemkanttt@gmail.com','99222','Hemkant','$2a$10$WQ6fKeRVLdJKIpVk9NSGhuqmbin0FiWEMVXJ/1zH4uk.nNW6362PS','string','ROLE_ADMIN','string'),(2,'HP PRACHI','stringaddres','string@gmail.com','9222151','string','$2a$10$WQ6fKeRVLdJKIpVk9NSGhuqmbin0FiWEMVXJ/1zH4uk.nNW6362PS','411057','ROLE_CUSTOMER','stringaddres'),(3,NULL,NULL,'spring@gmail.com',NULL,NULL,'$2a$10$CkaJZ6BjaCRa3Da.fJuxmO6IXWK2M3WYENaMLD26b4v6K7uQcKlQK',NULL,NULL,NULL),(4,NULL,NULL,'sspring@gmail.com',NULL,NULL,'$2a$10$UafxRKReH4QCUPYQqjjnaOwY5NOf.XHp.O67IWZEWUjU86umIu3T2',NULL,NULL,NULL),(5,NULL,NULL,'aa@gmail.com',NULL,NULL,'$2a$10$qTylHReqaSKNcBFAFKKz4OiLW9AZtZ5Jj2OVtKjjStEmkkMUUFSfO',NULL,'ROLE_CUSTOMER',NULL),(6,NULL,NULL,'aaa@gmail.com',NULL,'dfsfs','$2a$10$./mjZZ3Jlo1k8yYnG9oRG.0ijlDH.AfQekMAGaf2aX2MW.36e6F7C',NULL,'ROLE_CUSTOMER',NULL),(7,'string','string','nilesh@gmail.com','string','Nilesh','$2a$10$/s00nWp.4hrt0ap8uKCMNef7AA8r88qr3g4GbQ91ukwjegCmUCqky','string','ROLE_CUSTOMER','string'),(8,'hinjewado','pune','abdul@gmail.com','9922278456','Abdul Morve ','$2a$10$WQ6fKeRVLdJKIpVk9NSGhuqmbin0FiWEMVXJ/1zH4uk.nNW6362PS','411057','ROLE_ADMIN','maharashtra'),(9,'das,dhgfkhuadsjhgflijadsgh','hinjwadi','shreyash@gmail.com','6544548754','Shreyash DHanawade','$2a$10$Mab1MrHoGdYqlccUx.QB.uMk45/NFB/N5pJY1PQwFEopuwOSGsOvW','411057','ROLE_CUSTOMER','maharashtra'),(10,'Pune','Pune','morve@gmail.com','8805548986','abdul','$2a$10$MI6tM8GrePPr59W6wN89yOMX35F546gJRQMfA21ot00TZZbDjevC.','413502','ROLE_CUSTOMER','Maharashtra');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_book_id` int DEFAULT NULL,
  `user_user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa08qxyv88bbev574egmp52g6f` (`book_book_id`),
  KEY `FKfc49ajagfq0s3ghen9mc3tv7w` (`user_user_id`),
  CONSTRAINT `FKa08qxyv88bbev574egmp52g6f` FOREIGN KEY (`book_book_id`) REFERENCES `books` (`book_id`),
  CONSTRAINT `FKfc49ajagfq0s3ghen9mc3tv7w` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-23 20:24:37

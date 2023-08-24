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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Harper Lee','To Kill a Mocking Bird','A gripping novel on social injustice','d6d6f521-f9b1-47b7-832e-a62dc3894385.jpg','978-7652659','English',450,1,4),(2,'George Orwell','1984','A dystopian masterpiece','d3de4493-7823-4912-a9f4-af77e5e1e6a6.jpeg','978-9876543210','English',380,0,2),(4,'Charlotte Bront√´','Jane Eyre','A gothic romance novel','5398af5b-b698-4960-8b55-9ce902aa3ebe.jpeg','978-6789012345','English',370,1,4),(5,'J.R.R. Tolkien','The Hobbit','A fantasy adventure','8e2e11cb-13d3-49e0-b12b-8a68f6edf154.jpg','978-3456789012','English',650,1,5),(6,'Ray Bradbury','Fahrenheit 451','A tale of censorship and knowledge','7f8a275a-40aa-4d3b-b43a-4e8376b0407a.jpeg','978-5678901234','English',340,0,6),(7,'Aldous Huxley','Brave New World','Exploring a dystopian society','719eada7-1794-41ed-a1af-0a9bcd1eb205.jpeg','978-6789012345','English',240,0,6),(8,'Herman Melville','Moby-Dick','A classic adventure on the sea','15a5f7a4-3ee5-4180-920e-bc43ef7a5a14.jpeg','978-7890123456','English',150,0,7),(9,'J.D. Salinger','The Catcher in the Rye','A coming-of-age novel','ac72d0f8-82d7-438a-9006-8ec47e771f19.jpeg','978-8901234567','English',360,1,1),(10,'J.R.R. Tolkien','Lord of the Rings: The Fellowship of the Ring','An epic fantasy quest','10dfdbc9-139a-407b-97f6-890e79cf3b92.jpeg','978-1234567890','English',900,1,5),(11,'George Orwell','Animal Farm','A political allegory','4d577cd8-c59f-49d5-b238-6b5476c5c1ef.jpeg','978-9876543210','English',200,1,8),(12,'Homer','The Odyssey','An ancient epic poem','75befc51-b12e-405f-9c17-3a483745d281.jpeg','978-4567890123','English',700,1,9),(13,'Mary Shelley','Frankenstein','A classic Gothic novel','4be9a56f-b3e7-45a9-a695-537899395333.jpeg','978-6789012345','English',660,1,1),(14,'Charles Dickens','A Tale of Two Cities','A historical novel','a66ab5da-1421-48a4-bda5-45dafccc8844.jpeg','978-3456789012','English',420,1,10),(15,'Paulo Coelho','The Alchemist','A philosophical novel','a4536287-a48a-476b-a206-9c0ef6543ee4.jpeg','978-5678901234','English',750,1,11),(16,'Oscar Wilde','The Picture of Dorian Gray','A novel of moral decadence','80f9dc3c-1061-4608-bcd5-f13260c8acd1.jpeg','978-6789012345','English',450,1,1),(17,'C.S. Lewis','The Chronicles of Narnia: The Lion, the Witch and the Wardrobe','A children\'s fantasy','54fa0ad1-5376-4f16-8cb2-52133f76d6f1.jpeg','978-7890123456','English',550,1,12),(18,'Gabriel Garc√≠a M√°rquez','One Hundred Years of Solitude','A magical realist novel','b0985cbf-60ca-4a7f-a44f-a2a36da054cb.jpeg','978-8901234567','English',400,1,11),(19,'Leo Tolstoy','War and Peace','A historical novel','c3bd2081-6fdb-4e89-9ed9-1a3c3d0155ea.jpeg','978-1234567890','English',350,1,10),(20,'John Steinbeck','The Grapes of Wrath','A novel on the Great Depression','92374976-bb0b-404d-9f86-35cabad354c7.jpeg','978-9876543210','English',200,1,10),(21,'Alexandre Dumas','The Count of Monte Cristo','An adventure novel','e9092625-ab68-4deb-9136-5c6718b8da51.jpeg','978-4567890123','English',350,1,7),(35,'Napoleon Hill','Think Rich , Grow Rich','Nikal ja bsdk','71cc94b4-27bc-483f-85f6-bf5a6452c828.jpg','978-6365756756','English',220,1,11),(36,'Napoleon Hill','Psychology of Money','Philosophical','WhatsApp Image 2023-05-02 at 5.51.31 PM.jpeg','978-6365760340','English',340,0,10),(37,'Frank Herbert','Dune','Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides, heir to a noble family tasked with ruling an inhospitable world.','99d56325-4fa2-4ab0-99e7-51eab9e18d31.jpg','978-0-441-56956-2','English',730,1,2),(38,'William Gibson','Neuromancer','Neuromancer is a 1984 science fiction novel by American-Canadian writer William Gibson. Considered one of the earliest and best-known works in the cyberpunk .','932fa4c9-0246-494c-9a31-fb354bf04e72.jpg','978-0-441-56956-2','English',730,1,2),(39,'Orson Scott Card','Ender\'s Game','Ender\'s Game is a 2013 American military science-fiction action film based on Orson Scott Card\'s 1985 novel of the same name.','','978-0-8125-5070-2','English',480,1,2),(40,'Andy Weir','The Martian','The Martian is a 2011 science fiction debut novel written by Andy Weir. The book was originally self-published on Weir\'s blog, in a serialized format.','51820a73-88b3-42a1-b43a-9cbd63d06950.jpeg','978-0-553-41802-6','English',730,1,2),(41,'Aldous Huxley','Brave New World','Brave New World is a dystopian novel by English author Aldous Huxley, written in 1931 and published in 1932.','8c2520da-64f6-436a-89ab-543e36da7269.jpg','978-0-06-085052-4','English',730,1,2),(42,'Isaac Asimov','Foundation','Foundation is a science fiction novel by American writer Isaac Asimov. It is the first published in his Foundation Trilogy Foundation.','20b8070d-2d02-49b3-a89c-4bb7043de458.jpeg','978-0-553-29335-7','English',730,1,2),(43,'Gillian Flynn','Gone Girl','Gone Girl is a 2012 crime thriller novel by American writer Gillian Flynn. It was published by Crown Publishing Group in June 2012. The novel was popular and made the New York Times Best Seller list.','2d8c36a5-d8b3-4ad2-9bbc-0508d01887e8.jpg','978-0-307-58836-2','English',730,1,18),(44,'Stieg Larsson','The Girl with the Dragon Tattoo','The Girl with the Dragon Tattoo is a psychological thriller novel by Swedish author and journalist Stieg Larsson (1954‚Äì2004).','b72ca107-40f3-4866-8afd-c645a884c9c0.jpg','978-0-307-45474-6','English',730,1,18),(45,'Dan Brown','The Da Vinci Code','The Da Vinci Code is a 2003 mystery thriller novel by Dan Brown. It is Brown\'s second novel to include the character Robert Langdon: the first was his 2000.','814359fb-8971-4fc2-ac8b-76befedba9f6.jpg','978-0-307-27794-7','English',730,1,18),(46,'Arthur Conan Doyle','Sherlock Holmes: The Complete Novels and Stories','This comprehensive collection features all four novels, showcasing the brilliant deductions and captivating adventures of the iconic detective Sherlock Holmes','03cc4362-0686-4f6c-b3ba-137a7f66c85d.jpg','978-0-553-21241-4','English',975,1,18),(47,'Thomas Harris','he Silence of the Lambs','His intimate understanding of the killer and of Clarice herself form the core of Thomas Harris\' The Silence of the Lambs--an unforgettable classic of suspense.','17e089f8-79cd-48c4-8d59-fe8ec927d021.jpeg','978-0-312-12322-4','English',730,1,18),(48,'Michael Connelly','The Reversal','Longtime defense attorney Mickey Haller finds himself recruited to change stripes and prosecute the high-profile retrial of a brutal child murder.','6a100389-c659-4443-94aa-d01f13406255.jpeg','978-0-316-07090-3','English',730,1,18),(49,'Walter Isaacson','Steve Jobs','Walter Isaacson\'s ‚Äúenthralling‚Äù (The New Yorker) worldwide bestselling biography of Apple cofounder Steve Jobs.','8d05ed3f-1e88-47ff-a583-b3e41f3de37d.jpg','978-1-4516-4853-9','English',1300,1,19),(50,'Anne Frank','The Diary of a Young Girl','The Diary of a Young Girl, often referred to as The Diary of Anne Frank, is a book of the writings from the Dutch-language diary kept by Anne Frank.','64bac388-6434-4697-a801-bbd6a7328f18.jpeg','978-0-385-74357-9','English',450,1,19),(51,'Jeannette Walls','The Glass Castle','A story of one woman\'s perseverance against setbacks of all kinds. A story that makes \"you think it just might be possible to get a handle on this old world','bc2a591e-60fa-4769-b9dd-e0f5bf67393a.jpeg','978-0-7432-4759-2','English',915,1,19),(52,'Manning Marable','Malcolm X: A Life of Reinvention','Provocative book by an excellent black intellectual. The frankness in TRULY portraying the fullness of Malcolm\'s life does not lessen my picture of Malcolm.','a7b5ee0e-e268-475e-9c91-71a085e0bdf4.jpeg','978-0-670-02220-5','English',1460,1,19),(53,'Laura Hillenbrand','Unbroken: A World War II Story of Survival, Resilience, and Redemption','This book is the story of POWs in Japan and about Louis Zamperani, an Olympic athlete and hero of World War II. Louis Zamperini was born to Albert and Louise.','e7281d97-aefb-4685-b23b-9b410413f5f8.jpeg','978-0-8129-7280-3','English',730,1,19),(54,'Rebecca Skloot','The Immortal Life of Henrietta Lacks','Rebecca Skloot has written a fascinating book that clearly outlines why Henrietta\'s cells were so important, why she went unrecognized for decades, the pain.','89eb547f-4aaf-4722-a70d-fee9bccc8ef0.jpeg','978-1-4000-5218-9','English',730,1,19),(55,'Charles Duhigg','The Power of Habit','Award-winning New York Times reporter Charles Duhigg takes us to the edge of scientific discoveries that explain why habits exist & how they can be changed.','0f7f3f76-373d-4ef6-93cb-6660619e87b9.png','978-0-8129-8160-7','English',975,1,11),(56,'Jane Austen','Pride and Prejudice','Pride and Prejudice is an 1813 novel of manners by Jane Austen. The novel follows the character development of Elizabeth Bennet, the protagonist of the book.','def37f58-df79-4e7d-bd6a-f0a59510d5b2.jpeg','978-0-486-27847-1','English',365,1,4),(57,'Nicholas Sparks','The Notebook','The Notebook is the debut novel by American novelist Nicholas Sparks. Released in 1996, the romance novel was later adapted into a popular 2004.','779685a9-8763-4521-bd84-c4328184b270.jpg','978-0-446-52080-5','English',375,1,4),(58,'Diana Gabaldon','Outlander','Outlander (published in the United Kingdom as Cross Stitch) is a historical fantasy novel by American writer Diana Gabaldon, first published in 1991.','c56552f7-0ddc-45dd-8535-6215caf255df.jpeg','978-0-440-24367-1','English',450,1,4),(59,'Graeme Simsion','The Rosie Project',' An international sensation, this hilarious, feel-good novel is narrated by an oddly charming and socially challenged genetics professor.','e62b7fca-f665-4907-b4fd-86c3f51f8222.jpg','978-1-4767-2850-6','English',550,1,4),(60,'Jojo Moyes','Me Before You','Me Before You is a romance novel written by Jojo Moyes. The book was first published on 5 January 2012 in the United Kingdom.','028b4dae-6735-4f99-a8d0-bd3e313d9239.jpeg','978-0-14-312454-2','English',550,1,4),(61,'Sally Thorne','The Hating Game','The Hating Game tells the story of Lucy and Josh, both are executive assistants to co-CEOs and we could say that they are complete opposites.','d4f5ba70-22d6-4eaf-832e-38101fe2f5f4.png','978-0-06-243960-4','English',600,1,4),(62,'J.K. Rowling','Harry Potter and the Philosopher\'s Stone','The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage.','de3f987e-ce66-47e9-a80b-e25a3c83a6cf.jpeg','978-0-7475-3269-6','English',450,1,5),(63,'George R.R. Martin','A Game of Thrones (first book in the \"A Song of Ice and Fire\" series)','Full of drama and adventure, rage and lust, mystery and romance, George R.R. Martin\'s \'Game of Thrones: Song of Fire and Ice.','8cc52df3-021e-4675-8443-7395ff89fb7c.jpeg','978-0-553-57340-4','English',500,1,5),(64,'Patrick Rothfuss','The Name of the Wind',' The Name of the Wind is the first of three novels in The Kingkiller Chronicle series by American author Patrick Rothfuss.','c78bcaf5-e269-46c0-ae3a-9786b68a27bf.jpeg','978-0-7564-0473-4','English',640,1,5),(65,'Brandon Sanderson','Mistborn: The Final Empire\" (first book in the \"Mistborn\" series)','Mistborn: The Final Empire, also known simply as Mistborn or The Final Empire, is a fantasy novel written by American author Brandon Sanderson.','ced97b39-ea39-4d7c-9b9b-fd77619a01a9.jpeg','978-0-7653-1768-2','English',590,1,5),(66,'Mark Twain','The Adventures of Huckleberry Finn','The Adventures of Huckleberry Finn (1885) called the first great American novel by some, is a story of a boy\'s adventures in the Mississippi Valley.','3a3b4be5-79ce-489f-9e98-4a54fe7fdc2b.jpeg','978-0-486-31961-4','English',360,1,7),(67,'Michael Crichton','Jurassic Park','An astonishing technique for recovering and cloning dinosaur DNA has been discovered. Now humankind\'s most thrilling fantasies have come true.','8206b356-0eb3-4ce6-a4e4-cc7ed9321c4e.jpeg','978-0-345-37077-8','English',500,1,7),(68,'Robert Louis Stevenson','Treasure Island','Frightened of the pirates, Jim runs off alone. From a hiding place, he witnesses Silver\'s murder of a sailor who refuses to join the mutiny.','8eb0b307-bac5-421d-a805-a0825e452057.jpeg','978-0-553-21138-4','English',270,1,7),(69,'Jack London','The Call of the Wild','The Call of the Wild is one of Jack London\'s most popular novels. The story follows a dog named Buck, a 140 pound Saint Bernard and Scotch Shepherd mix.','40b7c312-faac-432c-b2e9-bc99ff49ff34.jpeg','978-0-486-29573-9','English',260,1,7),(70,'David Grann','The Lost City of Z','The Lost City of Z, by New Yorker writer David Grann, recounts Fawcett\'s expeditions with all the pace of a white-knuckle adventure story.','11a70868-4f17-457e-bc6e-74e220ed70f2.jpeg','978-0-385-51353-1','English',470,1,7),(71,'Lewis Carroll','Alice\'s Adventures in Wonderland','On an ordinary summer\'s afternoon, Alice tumbles down a hole and an extraordinary adventure begins.','7ee79531-861c-41d3-b72e-a9f2ab8be17f.jpeg','978-1-907360-32-7','English',230,1,12),(72,'E.B. White','Charlotte\'s Web','Tells the story of a little girl named Fern who loved a little pig named Wilbur and of Wilbur\'s dear friend, Charlotte A Cavatica, a beautiful large grey spider.','dba267de-c656-421a-89a8-922710258706.jpeg','978-0-06-112495-2','English',340,1,12),(73,'Eric Carle','The Very Hungry Caterpillar','n this short story, a tiny caterpillar emerges from an egg and begins to eat more and more with each passing day until it falls ill. After six days of eating.','a68ba86d-8872-43e2-ae40-1b2a1bd34d40.jpeg','978-0-241-32534-4','English',180,1,12),(74,'Homer','The Iliad','The Iliad is one of two major ancient Greek epic poems attributed to Homer. It is one of the oldest extant works of literature still widely read.','311c8c7b-9971-4943-9caf-09567a4228b2.jpeg','978-0-14-044444-5','English',350,1,9),(75,'Virgil','The Aeneid','The man in question is Aeneas, who is fleeing the ruins of his native city, Troy, which has been ravaged in a war with Achilles and the Greeks. ','9cf0190f-b978-4e5e-bb35-e18c34638a1b.jpeg','978-0-14-044932-7','English',390,1,9),(76,'Anonymous','The Epic of Gilgamesh','A timeless tale of morality, tragedy and pure adventure, The Epic of Gilgamesh is a landmark literary exploration of man\'s search for immortality.','d681e3eb-e095-4f3a-a8ab-e7ee4837344f.jpeg','978-0-14-044919-8','English',420,1,9),(77,'John Milton','Paradise Lost','Paradise Lost, epic poem in blank verse, of the late works by John Milton, originally issued in 10 books in 1667.','5a3726e1-2d02-4706-be15-9254364972dd.jpeg','978-0-14-042439-3','English',400,1,9),(78,'Bram Stoker','Dracula','Dracula is a novel by Bram Stoker, published in 1897. An epistolary novel, the narrative is related through letters, diary entries, and newspaper articles.','45551c74-5eb5-4792-b68f-48fe333c7fa6.jpeg','978-0-553-21079-3','English',360,1,10),(79,'Emily Bront√´','Wuthering Heights','Wuthering Heights is an 1847 novel by Emily Bront√´, initially published under her pen name \"Ellis Bell\".','43a00aed-83e7-4341-834d-04c18c37a62b.jpeg','978-0-14-143955-6','English',370,1,10),(80,'Daphne du Maurier','Rebecca','Rebecca is a 1938 Gothic novel written by English author Daphne du Maurier. The novel depicts an unnamed young woman who impetuously marries a wealthy widower.','27c13c71-3134-4a22-b1d8-2d9351e265ad.jpeg','978-0-06-231500-7','English',390,1,10),(81,'John Mearsheimer','The Tragedy of Great Power Politics','The Tragedy of Great Power Politics is a book by the American scholar John Mearsheimer on the subject of international relations theory.','72ddd0c4-eb86-4537-b887-4d19e0f25466.jpeg','978-0-393-34341-5','English',730,1,6),(82,'Samuel P. Huntington','The Clash of Civilizations and the Remaking of World Order','The Clash of Civilizations and the Remaking of. World Order is an insightful and powerful analysis of the forces driving global politics today.','1ad08875-e0a4-4499-9bd3-17910cd348d9.jpeg','978-1-4391-5919-7','English',550,1,6),(83,'Fareed Zakaria','The Post-American World','America\'s dominance on the world stage is fading, says commentator and CNN host Fareed Zakaria.','78f09d7a-f106-46d4-85f6-c1d8b88cd28d.jpeg','978-0-393-33480-7','English',490,1,6),(84,'Daniel W. Drezner','Theories of International Politics and Zombies','What would happen to international politics if the dead rose from the grave and started to eat the living? Daniel Drezner\'s groundbreaking book answers the question that other international relations scholars have been too scared to ask. ','f71594f2-fdee-4531-9f93-f5eee6260e50.jpeg','978-0-691-15574-1','English',530,1,6),(85,'Francis Fukuyama','The Origins of Political Order: From Prehuman Times to the French Revolution','This book examines the paths that different societies have taken to reach their current forms of political order.','dc703d10-ba58-41ee-bfce-3a3d5c81d7b4.jpeg','978-0-374-28822-3','English',670,1,6),(86,'F. Scott Fitzgerald','The Great Gatsby','The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald. Set in the Jazz Age on Long Island, near New York City,','45ef547f-99eb-4582-902f-dc1c1a55e177.jpeg','978-0-7432-7356-5','English',730,1,1),(87,'Stephen King','The Shining','The Shining is a 1977 horror novel by American author Stephen King. It is King\'s third published novel and first hardback bestseller.','bcdcbf0f-d78c-493b-bb17-d428b4f3f392.jpeg','978-0-307-35044-7','English',650,1,1),(88,'Suzanne Collins','The Hunger Games','The first novel in the worldwide bestselling series by Suzanne Collins! Winning means fame and fortune. Losing means certain death.','24231411-e080-4382-992e-8b820a782c36.jpeg','978-0-439-02349-8','English',670,1,1),(89,'Virginia Woolf','To the Lighthouse','To the Lighthouse, novel by Virginia Woolf, published in 1927. The work is one of her most successful and accessible experiments in the stream-of-consciousness style.','05074a9f-6dee-4f5c-b7c1-70520decce51.jpeg','978-0-15-690739-2','English',430,1,1),(90,'Plato','The Republic','The Republic is a philosophical dialogue about the nature of justice and the order and character of the just city-state and the just individual.','4bfa57da-c819-4b59-af9c-bc2de0e4ccd1.jpeg','978-0-14-044914-3','English',170,1,3),(91,'Dante Alighieri','The Divine Comedy','The Divine Comedy is an Italian narrative poem by Dante Alighieri, begun c. 1308 and completed around 1321, shortly before the author\'s death.','97a50279-4f42-4428-bbb9-8591b12696a4.jpeg','978-0-14-243722-3','English',420,1,3),(92,'Thomas √† Kempis','The Imitation of Christ','The Imitation of Christ, by Thomas √† Kempis, is a Christian devotional book first composed in Medieval Latin as De Imitatione Christi ( c. 1418‚Äì1427).','19bae45a-3a2f-461c-b20e-1d40a4683091.jpg','978-0-14-044027-0','English',250,1,3),(93,'Charles Dickens','Great Expectations','Great Expectations is the thirteenth novel by Charles Dickens and his penultimate completed novel.','6673291d-dba2-4d33-afd5-12c88917a46c.jpeg','978-0-441-56466-6','English',340,1,3),(94,'Howard Zinn','A People\'s History of the United States','The book provides great insight into the making of the United States, after the landing of Saint Columbus, and covering a very long period-till the presidency.','1a622e9c-c1b5-4a20-a926-8fc3a6552bc5.jpeg','978-0-06-083865-2','English',470,1,8),(95,'Yuval Noah Harari','Sapiens: A Brief History of Humankind','Sapiens: A Brief History of Humankind\' (2014) looked deep into our past, \'Homo Deus: A Brief History of Tomorrow\' (2016) considered far-future scenarios.','cfa391e7-987a-47d6-ab5c-76b660933df5.jpeg','978-0-06-231609-7','English',560,1,8),(96,'Barbara W. Tuchman','The Guns of August','The Guns of August by Barbara Tuchman is a Pulitzer Prize winning piece about the events going on behind the scenes all culminating to the outbreak of the First.','859b5e47-85c0-42f2-a9a2-432d86e00340.jpeg','978-0-345-38623-6','English',440,1,8),(97,'David McCullough','The Wright Brothers','Wright Brothers is an easy to read biography of Wilbur and Orville Wright written by David McCullough. It brings the characters to life.','63b90af6-45bb-4d59-98d1-1ddf7fa1c094.jpeg','978-1-4767-4668-5','English',560,1,8);
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
INSERT INTO `category` VALUES (1,'Fiction','Books of imaginative storytelling'),(2,'Science Fiction','Speculative fiction based on scientific principles'),(3,'Classic','Timeless literary works'),(4,'Romance','Books centered around love and relationships'),(5,'Fantasy','Books featuring magical or fantastical elements'),(6,'Political','Books dealing with politics and power'),(7,'Adventure','Books focused on exciting journeys and challenges'),(8,'Historical','Books set in historical contexts'),(9,'Epic','Long narrative poems or novels'),(10,'Gothic','Books with dark, mysterious, and supernatural themes'),(11,'Philosophical','Books exploring deep philosophical concepts'),(12,'Children\'s','Books for young readers'),(18,'Mystery','Mystery books'),(19,'Biography','Biographies of some well-known people.');
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
INSERT INTO `payment_details` VALUES (_binary 'Gr`	\√/OgÜˆ8à}S\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,NULL,NULL,NULL,NULL),(_binary 'bïÚòÄmJ¨íW/5o\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',12,'SUCCESS','CASH',1,1),(_binary '\Ì{ª6;˚H‘ú\ﬁ\"IY\"C\Â\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',12,'SUCCESS','CASH',NULL,1);
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

-- Dump completed on 2023-08-24 15:12:58

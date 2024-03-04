-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: recettes
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `quantite` decimal(10,2) NOT NULL,
  `unite` varchar(50) DEFAULT NULL,
  `recette_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `recette_id` (`recette_id`),
  CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`recette_id`) REFERENCES `recettes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (30,' farine',250.00,'g',31,'2024-03-04 21:54:06','2024-03-04 21:54:06'),(32,'viande hachée',500.00,'g',33,'2024-03-04 21:57:35','2024-03-04 21:57:35'),(33,'viande d\'agneau',250.00,'g',34,'2024-03-04 22:01:34','2024-03-04 22:01:34');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recettes`
--

DROP TABLE IF EXISTS `recettes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recettes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recettes`
--

LOCK TABLES `recettes` WRITE;
/*!40000 ALTER TABLE `recettes` DISABLE KEYS */;
INSERT INTO `recettes` VALUES (31,'PIZZA',' farine 1 sachet de levure de boulanger 1 cuillère à café de sucre 1/2 cuillère à café de sel 150 ml d\'eau tiède 1 cuillère à soupe d\'huile d\'olive','https://firebasestorage.googleapis.com/v0/b/projet-992ff.appspot.com/o/t%C3%A9l%C3%A9chargement%20(1).jpg?alt=media&token=d6dc90b7-a0ec-4e0c-ad3b-593d920cc949','2024-03-04 21:54:06','2024-03-04 21:54:06'),(33,'burger',' Pour les steaks :  500 g de viande hachée (bœuf, porc, poulet, dinde, ou mélange) 1 œuf 1/4 de tasse de chapelure 1 cuillère à café de sel 1/2 cuillère à café de poivre 1 cuillère à café de moutarde (facultatif)','https://firebasestorage.googleapis.com/v0/b/projet-992ff.appspot.com/o/telechargement.jpg?alt=media&token=6727f782-0a16-42b7-a2e7-6a0f3fdc0b9d','2024-03-04 21:57:35','2024-03-04 21:57:35'),(34,'soupe(harira)','250 g de viande d\'agneau (coupée en petits morceaux) ou du poulet 1 oignon (haché) 2 branches de céleri (hachées) 1 poignée de coriandre fraîche (hachée) 1 poignée de persil frais (haché) 1/2 tasse de lentilles (trempées la veille) 1/2 tasse de pois chiches (trempés la veille) 1/2 tasse de vermicelles ou de cheveux d\'ange 2 tomates pelées et concassées (ou 1 boîte de tomates concassées) 2 cuillères à soupe de concentré de tomate 2 cuillères à soupe de farine 1 œuf (facultatif) 1 cuillère à soupe de smen (beurre clarifié) ou d\'huile d\'olive 1 cuillère à café de gingembre moulu 1 cuillère à café de curcuma 1 cuillère à café de poivre noir 1/2 cuillère à café de cannelle Sel et poivre, selon le goût 1,5 litre d\'eau','https://firebasestorage.googleapis.com/v0/b/projet-992ff.appspot.com/o/t%C3%A9l%C3%A9chargement%20(2).jpg?alt=media&token=a036496a-324d-43d4-9439-7811a8e46f32','2024-03-04 22:01:33','2024-03-04 22:01:33');
/*!40000 ALTER TABLE `recettes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-04 23:11:36

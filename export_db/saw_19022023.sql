-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: saw
-- ------------------------------------------------------
-- Server version	5.7.39

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
-- Table structure for table `prodotti`
--

DROP TABLE IF EXISTS `prodotti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodotti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(45) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `sesso` varchar(10) DEFAULT NULL,
  `tipologia` varchar(30) DEFAULT NULL,
  `prezzo` int(11) DEFAULT NULL,
  `quantità` int(4) DEFAULT NULL,
  `data_modifica` datetime DEFAULT NULL,
  `data_aggiunta` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotti`
--

LOCK TABLES `prodotti` WRITE;
/*!40000 ALTER TABLE `prodotti` DISABLE KEYS */;
INSERT INTO `prodotti` VALUES (7,'polo','nordica','uomo','abbigliamento',20,NULL,NULL,NULL),(8,'polo','kalengi','donna','abbigliamento',22,NULL,NULL,NULL),(9,'pantaloni','levis','uomo','abbigliamento',35,NULL,NULL,NULL),(10,'maglietta','rams','uomo','abbigliamento',30,NULL,NULL,NULL),(11,'sci','nordica','donna','attrezzatura',150,NULL,NULL,NULL);
/*!40000 ALTER TABLE `prodotti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` char(25) NOT NULL,
  `lastname` char(25) NOT NULL,
  `email` char(40) NOT NULL,
  `pass` char(100) NOT NULL,
  `sesso` varchar(5) DEFAULT NULL,
  `DataDiNascita` date DEFAULT NULL,
  `Telefono` bigint(1) DEFAULT NULL,
  `Stato` varchar(15) DEFAULT NULL,
  `Provincia` varchar(20) DEFAULT NULL,
  `Citta` varchar(20) DEFAULT NULL,
  `Indirizzo` varchar(40) DEFAULT NULL,
  `Cap` int(5) DEFAULT NULL,
  `Newsletter` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Francesco','Filippone','fran.filippone@gmail.com','$2y$10$9AKURihClcqjcqZXXwyn4u2FxaUSstV2ZgT0kJfDH5aBPT/5ScBAS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2023-02-19  0:03:58

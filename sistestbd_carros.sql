-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: sistestbd
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `carros`
--

DROP TABLE IF EXISTS `carros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carros` (
  `idCarros` int NOT NULL,
  `placa` varchar(10) NOT NULL,
  `marca_modelo` varchar(300) NOT NULL,
  `cor` varchar(50) NOT NULL,
  `fk_ideusuario` int NOT NULL,
  PRIMARY KEY (`idCarros`),
  KEY `fk_carros_Usuarios_idx` (`fk_ideusuario`),
  CONSTRAINT `fk_carros_Usuarios` FOREIGN KEY (`fk_ideusuario`) REFERENCES `usuarios` (`ideusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carros`
--

LOCK TABLES `carros` WRITE;
/*!40000 ALTER TABLE `carros` DISABLE KEYS */;
INSERT INTO `carros` VALUES (1,'ABC1D23','Toyota Corolla','Prata',1),(2,'DEF2E34','Honda Civic','Preto',2),(3,'GHI3F45','Ford Fiesta','Branco',3),(4,'JKL4G56','Chevrolet Onix','Vermelho',4),(5,'MNO5H67','Volkswagen Gol','Azul',5),(6,'PQR6I78','Hyundai HB20','Cinza',6),(7,'STU7J89','Fiat Argo','Preto',7),(8,'VWX8K90','Renault Sandero','Branco',8),(9,'YZA9L01','Nissan Kicks','Prata',9),(10,'BCD0M12','Jeep Compass','Vermelho',10),(11,'EFG1N23','Ford Ka','Azul',1),(12,'HIJ2O34','Chevrolet Tracker','Preto',2),(13,'KLM3P45','Volkswagen Polo','Cinza',3),(14,'NOP4Q56','Toyota Hilux','Branco',4),(15,'QRS5R67','Honda HR-V','Prata',5),(16,'TUV6S78','Fiat Toro','Vermelho',6),(17,'WXY7T89','Peugeot 208','Azul',7),(18,'ZAB8U90','Citroen C4','Cinza',8),(19,'CDE9V01','Mitsubishi ASX','Preto',9),(20,'FGH0W12','Hyundai Creta','Branco',10);
/*!40000 ALTER TABLE `carros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-08 16:13:10

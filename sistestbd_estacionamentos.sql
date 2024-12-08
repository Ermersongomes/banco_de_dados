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
-- Table structure for table `estacionamentos`
--

DROP TABLE IF EXISTS `estacionamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estacionamentos` (
  `idEstacionamentos` int NOT NULL,
  `nomeEstacionamento` varchar(300) NOT NULL,
  `data_entrada` date NOT NULL,
  `hora_entrada` time NOT NULL,
  `data_saida` date DEFAULT NULL,
  `hora_saida` time DEFAULT NULL,
  `fk_idCarros` int NOT NULL,
  PRIMARY KEY (`idEstacionamentos`),
  KEY `fk_Estacionamentos_carros1_idx` (`fk_idCarros`),
  CONSTRAINT `fk_Estacionamentos_carros1` FOREIGN KEY (`fk_idCarros`) REFERENCES `carros` (`idCarros`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estacionamentos`
--

LOCK TABLES `estacionamentos` WRITE;
/*!40000 ALTER TABLE `estacionamentos` DISABLE KEYS */;
INSERT INTO `estacionamentos` VALUES (1,'São Pedro estecionamentos','2024-12-04','13:14:14','2024-12-04','14:52:20',1),(2,'Estacionamento Central Park','2024-12-05','08:15:00','2024-12-05','10:30:00',2),(3,'Estacione Fácil','2024-12-06','09:45:30','2024-12-06','11:20:15',3),(4,'Park & Go','2024-12-07','14:00:00','2024-12-07','16:10:45',4),(5,'Estaciona Rápido','2024-12-08','07:30:25','2024-12-08','09:00:00',5),(6,'Garagem 24 Horas','2024-12-09','11:00:00','2024-12-09','13:45:30',6),(7,'ParkZone','2024-12-10','10:10:10','2024-12-10','12:50:00',7),(8,'Estacionamento Azul','2024-12-11','08:40:00','2024-12-11','11:00:00',8),(9,'Alpha Parking','2024-12-12','09:15:45','2024-12-12','10:45:30',9),(10,'Beta Park','2024-12-13','07:50:00','2024-12-13','09:40:00',10),(11,'Omega Estacionamentos','2024-12-14','11:25:30','2024-12-14','13:00:00',11),(12,'Estacionamento Flex','2024-12-15','08:00:00','2024-12-15','10:30:00',12),(13,'Ponto Park','2024-12-16','14:30:00','2024-12-16','17:15:45',13),(14,'EasyPark Brasil','2024-12-17','09:10:30','2024-12-17','11:20:00',14),(15,'Safe Park','2024-12-18','10:00:00','2024-12-18','12:45:30',15),(16,'MaxiPark','2024-12-19','08:20:15','2024-12-19','09:50:00',16),(17,'Estacionamento Rotativo','2024-12-20','13:10:00','2024-12-20','15:30:00',17),(18,'Garagem São José','2024-12-21','07:45:00','2024-12-21','09:15:30',18),(19,'Estacionamento Luz','2024-12-22','09:30:00','2024-12-22','11:40:00',19),(20,'VIP Park','2024-12-23','10:10:00','2024-12-23','12:00:00',20),(21,'São Pedro Estacionamentos','2024-12-24','08:45:00','2024-12-24','10:15:00',1),(22,'Estacionamento Central Park','2024-12-25','11:20:00','2024-12-25','13:40:00',2),(23,'Estacione Fácil','2024-12-26','09:30:00','2024-12-26','11:45:00',3),(24,'Park & Go','2024-12-27','07:50:00','2024-12-27','09:30:00',4),(25,'Estaciona Rápido','2024-12-28','10:00:00','2024-12-28','12:30:00',5),(26,'Garagem 24 Horas','2024-12-29','08:00:00','2024-12-29','10:20:00',6),(27,'ParkZone','2024-12-30','09:15:00','2024-12-30','11:50:00',7),(28,'Estacionamento Azul','2024-12-31','10:30:00','2024-12-31','12:15:00',8),(29,'Alpha Parking','2025-01-01','11:45:00','2025-01-01','13:00:00',9),(30,'Beta Park','2025-01-02','08:15:00','2025-01-02','10:40:00',10);
/*!40000 ALTER TABLE `estacionamentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-08 16:13:11

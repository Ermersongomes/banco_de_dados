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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `ideusuario` int NOT NULL,
  `nome` varchar(300) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `num_cnh` varchar(15) DEFAULT NULL,
  `validade_cnh` date DEFAULT NULL,
  `telefone` varchar(15) NOT NULL,
  `emai` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`ideusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Ana Pereira','45678901234','45678901233','2024-12-01','94567-8901',' ana.pereira@email.com'),(2,'Ana Pereira','45678901234','45678901233','2024-12-01','94567-8901','ana.pereira@email.com'),(3,'Carlos Souza','34567890123','34567890122','2025-03-12','93456-7890','carlos.souza@email.com'),(4,'Fernanda Lima','56789012345','56789012344','2026-08-25','95678-9012','fernanda.lima@email.com'),(5,'João Silva','12345678901','12345678900','2026-05-15','91234-5678','joao.silva@email.com'),(6,'Juliana Costa','78901234567','78901234566','2025-06-18','97890-1234','juliana.costa@email.com'),(7,'Lucas Mendes','89012345678','89012345677','2024-07-05','98901-2345','lucas.mendes@email.com'),(8,'Maria Oliveira','23456789012','23456789011','2027-09-20','92345-6789','maria.oliveira@email.com'),(9,'Paula Ferreira','90123456789','90123456788','2026-01-22','99012-3456','paula.ferreira@email.com'),(10,'Pedro Santos','67890123456','67890123455','2027-11-30','96789-0123','pedro.santos@email.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
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

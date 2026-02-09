-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: optica
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `id_recomendador` int DEFAULT NULL,
  `id_graduacion` int DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `idc_cliente_UNIQUE` (`id_cliente`),
  KEY `id_recomendador_idx` (`id_recomendador`),
  KEY `id_graduacion_idx` (`id_graduacion`),
  CONSTRAINT `id_graduacion` FOREIGN KEY (`id_graduacion`) REFERENCES `graduacion` (`id_graduacion`),
  CONSTRAINT `id_recomendador` FOREIGN KEY (`id_recomendador`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Laura Fernández','C/ Mayor 45, Madrid','678234567','laura.fernandez@gmail.com','2023-04-15',NULL,1),(2,'David González','Av. del Puerto 12, Valencia','612987345','david.gon@gmail.com','2023-06-03',1,2),(3,'Marta Pérez','C/ Sol 8, Sevilla','699543210','marta.pz@hotmail.com','2024-01-21',1,3),(4,'Javier Ruiz','C/ Camino Real 22, Granada','635223678','javi.ruiz@outlook.es','2024-08-11',2,4),(5,'Ana López','Av. Andalucía 7, Málaga','648908765','ana.lp@gmail.com','2025-02-03',3,5),(6,'Raúl Torres','C/ Palma 16, Palma de Mallorca','677908765','raul.t@gmail.com','2025-03-10',4,6),(7,'Lucía Díaz','Av. Galicia 15, Vigo','645908222','lucia.diaz@icloud.com','2025-04-25',5,7),(8,'Pablo Martín','C/ Castellana 99, Madrid','632878900','pablo.mrt@gmail.com','2025-05-19',1,8),(9,'Elena Soto','C/ Valencia 23, Barcelona','667998765','elena.soto@gmail.com','2025-06-09',2,9),(10,'Adrián Romero','Av. Constitución 101, Sevilla','634112233','adrian.romero@hotmail.com','2025-07-20',3,10);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `id_empleado_UNIQUE` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Sofía','Navarro'),(2,'Carlos','Vega'),(3,'Elena','Prieto'),(4,'Manuel','Santos'),(5,'Isabel','Reyes');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gafas`
--

DROP TABLE IF EXISTS `gafas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gafas` (
  `id_gafas` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) DEFAULT NULL,
  `color_montura` varchar(45) DEFAULT NULL,
  `color_vidrio_izquierdo` varchar(45) DEFAULT NULL,
  `color_vidrio_derecho` varchar(45) DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `montura_typo` enum('pasta','flotante','metalica') NOT NULL,
  PRIMARY KEY (`id_gafas`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gafas`
--

LOCK TABLES `gafas` WRITE;
/*!40000 ALTER TABLE `gafas` DISABLE KEYS */;
INSERT INTO `gafas` VALUES (1,'Ray-Ban','Negro','Transparente','Transparente',129.99,'pasta'),(2,'Hawkers','Azul Marino','Gris','Gris',69.50,'pasta'),(3,'Oakley','Plata','Verde','Verde',159.95,'pasta'),(4,'Police','Marrón','Marrón Claro','Marrón Claro',112.40,'pasta'),(5,'Carolina Herrera','Rojo Burdeos','Rosa','Rosa',142.75,'pasta'),(6,'Gucci','Dorado','Verde','Verde',199.99,'pasta'),(7,'Mango','Transparente','Azul Claro','Azul Claro',84.60,'pasta'),(8,'Tommy Hilfiger','Negro Mate','Gris Oscuro','Gris Oscuro',173.20,'pasta'),(9,'Vogue Eyewear','Rosa Pastel','Transparente','Transparente',120.00,'pasta'),(10,'Carrera','Azul Metálico','Verde Claro','Verde Claro',155.80,'pasta');
/*!40000 ALTER TABLE `gafas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graduacion`
--

DROP TABLE IF EXISTS `graduacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `graduacion` (
  `id_graduacion` int NOT NULL AUTO_INCREMENT,
  `graduacion_izquierdo` float DEFAULT NULL,
  `graduacion_derecho` float DEFAULT NULL,
  PRIMARY KEY (`id_graduacion`),
  UNIQUE KEY `id_graduacion_UNIQUE` (`id_graduacion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graduacion`
--

LOCK TABLES `graduacion` WRITE;
/*!40000 ALTER TABLE `graduacion` DISABLE KEYS */;
INSERT INTO `graduacion` VALUES (1,-1.25,-1.5),(2,0,-0.75),(3,-2,-1.75),(4,-0.5,0),(5,-3.25,-3),(6,-1,-1),(7,-2.25,-2.5),(8,0.5,0.25),(9,-0.75,-1.25),(10,-4,-3.75);
/*!40000 ALTER TABLE `graduacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `id_marcas` int NOT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `id_proveedor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_marcas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `direccion_calle` varchar(45) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `piso` int DEFAULT NULL,
  `puerta` int DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `codigo_postal` int DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `fax` int DEFAULT NULL,
  `NIF` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`),
  UNIQUE KEY `id_proveedor_UNIQUE` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'OptiVision S.L.','C/ Gran Vía',34,2,3,'Madrid',28013,'España',914562345,914562346,'B12345678'),(2,'Lentes del Sur','Av. República Argentina',120,1,1,'Sevilla',41011,'España',955324567,955324568,'B87654321'),(3,'CristalÓptica','C/ Alfonso XII',45,3,4,'Valencia',46002,'España',963123876,963123877,'B11223344'),(4,'VisiónTotal','Av. Galicia',98,5,2,'Vigo',36204,'España',986234765,986234766,'B22334455'),(5,'Ojos Claros','C/ Rambla Catalunya',20,4,3,'Barcelona',8007,'España',934567890,934567891,'B33445566');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_gafas` int DEFAULT NULL,
  `id_empleado` int DEFAULT NULL,
  `fecha_venta` date NOT NULL,
  PRIMARY KEY (`id_venta`),
  UNIQUE KEY `id_venta_UNIQUE` (`id_venta`),
  KEY `id_cliente_idx` (`id_cliente`),
  KEY `id_gafas_idx` (`id_gafas`),
  KEY `id_empleado_idx` (`id_empleado`),
  CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `id_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `id_gafas` FOREIGN KEY (`id_gafas`) REFERENCES `gafas` (`id_gafas`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,1,1,1,'2024-05-10'),(2,2,3,2,'2024-07-12'),(3,3,4,3,'2024-09-05'),(4,4,2,4,'2024-11-23'),(5,5,5,1,'2025-01-17'),(6,6,6,2,'2025-03-28'),(7,7,7,3,'2025-04-14'),(8,8,8,4,'2025-05-22'),(9,9,9,5,'2025-06-30'),(10,10,10,2,'2025-07-15');
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-09 12:41:41

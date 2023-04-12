-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: coopertativa_jfk
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `codeudor`
--

DROP TABLE IF EXISTS `codeudor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codeudor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cedula` int NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `telefono` varchar(14) DEFAULT NULL,
  `direccion` varchar(45) NOT NULL,
  `posible_cliente` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeudor`
--

LOCK TABLES `codeudor` WRITE;
/*!40000 ALTER TABLE `codeudor` DISABLE KEYS */;
INSERT INTO `codeudor` VALUES (1,12345678,'Juan','Perez','Madrid','+34 123456789','Calle Mayor 1',1),(2,23456789,'Maria','Gomez','Barcelona','+34 234567890','Plaza España 2',0),(3,34567890,'Pedro','Rodriguez','Valencia','+34 345678901','Avenida Libertad 3',1),(4,45678901,'Laura','Fernandez','Sevilla','+34 456789012','Calle San Miguel 4',0),(5,56789012,'Carlos','Hernandez','Madrid','+34 567890123','Plaza Mayor 5',1),(6,67890123,'Ana','Garcia','Barcelona','+34 678901234','Calle Real 6',0),(7,78901234,'Javier','Martinez','Valencia','+34 789012345','Avenida Europa 7',1),(8,89012345,'Sofia','Lopez','Sevilla','+34 890123456','Calle Mayor 8',0),(9,90123456,'Pablo','Sanchez','Madrid','+34 901234567','Plaza España 9',1),(10,12345678,'Lucia','Jimenez','Barcelona','+34 012345678','Avenida Libertad 10',0);
/*!40000 ALTER TABLE `codeudor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dni` varchar(10) NOT NULL,
  `persona_contacto` varchar(60) NOT NULL,
  `num_empleados_totales` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'12345678A','Juan Perez',5),(2,'23456789B','Maria Gomez',10),(3,'34567890C','Pedro Rodriguez',7),(4,'45678901D','Laura Fernandez',3),(5,'56789012E','Carlos Hernandez',12),(6,'67890123F','Ana Garcia',8),(7,'78901234G','Javier Martinez',6),(8,'89012345H','Sofia Lopez',4),(9,'90123456I','Pablo Sanchez',9),(10,'01234567J','Lucia Jimenez',11);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidad`
--

DROP TABLE IF EXISTS `modalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modalidad` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ptiempo_estipulado` int NOT NULL,
  `tasa_interes` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidad`
--

LOCK TABLES `modalidad` WRITE;
/*!40000 ALTER TABLE `modalidad` DISABLE KEYS */;
INSERT INTO `modalidad` VALUES (1,12,1.2),(2,18,1.5),(3,24,1.8),(4,30,2),(5,36,2.5),(6,48,3),(7,60,3.5),(8,72,4),(9,84,4.5),(10,96,5);
/*!40000 ALTER TABLE `modalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `modalidad_id` int NOT NULL,
  `socios_id` int NOT NULL,
  `fecha_inicio` date NOT NULL,
  `valor_prestamo` double NOT NULL,
  `cuota_mensual` int NOT NULL,
  `plazo_meses` int NOT NULL,
  `codeudor_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_prestamo_modalidad_idx` (`modalidad_id`),
  KEY `fk_prestamo_socios1_idx` (`socios_id`),
  KEY `fk_prestamo_codeudor1_idx` (`codeudor_id`),
  CONSTRAINT `fk_prestamo_codeudor1` FOREIGN KEY (`codeudor_id`) REFERENCES `codeudor` (`id`),
  CONSTRAINT `fk_prestamo_modalidad` FOREIGN KEY (`modalidad_id`) REFERENCES `modalidad` (`id`),
  CONSTRAINT `fk_prestamo_socios1` FOREIGN KEY (`socios_id`) REFERENCES `socios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
INSERT INTO `prestamo` VALUES (1,1,1,'2022-01-01',10000,900,12,1),(2,2,2,'2022-02-01',15000,1000,18,2),(3,3,3,'2022-03-01',20000,1200,24,3),(4,4,4,'2022-04-01',25000,1500,30,4),(5,5,5,'2022-05-01',30000,1800,36,5),(6,6,6,'2022-06-01',35000,2100,48,6),(7,7,7,'2022-07-01',40000,2400,60,7),(8,8,8,'2022-08-01',45000,2700,72,8),(9,9,9,'2022-09-01',50000,3000,84,9),(10,10,10,'2022-10-01',55000,3300,96,10);
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socios`
--

DROP TABLE IF EXISTS `socios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `cedula` int NOT NULL,
  `telefono` varchar(14) DEFAULT NULL,
  `direccion` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `salarioMensual` double NOT NULL,
  `empresa_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_socios_empresa1_idx` (`empresa_id`),
  CONSTRAINT `fk_socios_empresa1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socios`
--

LOCK TABLES `socios` WRITE;
/*!40000 ALTER TABLE `socios` DISABLE KEYS */;
INSERT INTO `socios` VALUES (1,'Juan Perez',12345678,'+34 123456789','Calle Mayor 1','juan.perez@gmail.com',2000.5,1),(2,'Maria Gomez',23456789,'+34 234567890','Plaza España 2','maria.gomez@hotmail.com',1800.25,2),(3,'Pedro Rodriguez',34567890,'+34 345678901','Avenida Libertad 3','pedro.rodriguez@yahoo.es',2200.75,4),(4,'Laura Fernandez',45678901,'+34 456789012','Calle San Miguel 4','laura.fernandez@gmail.com',1950.8,3),(5,'Carlos Hernandez',56789012,'+34 567890123','Plaza Mayor 5','carlos.hernandez@hotmail.com',2500,5),(6,'Ana Garcia',67890123,'+34 678901234','Calle Real 6','ana.garcia@yahoo.es',2100.3,7),(7,'Javier Martinez',78901234,'+34 789012345','Avenida Europa 7','javier.martinez@gmail.com',2400.6,6),(8,'Sofia Lopez',89012345,'+34 890123456','Calle Mayor 8','sofia.lopez@hotmail.com',1900.7,9),(9,'Pablo Sanchez',90123456,'+34 901234567','Plaza España 9','pablo.sanchez@yahoo.es',2300.4,8),(10,'Lucia Jimenez',12345678,'+34 012345678','Avenida Libertad 10','lucia.jimenez@gmail.com',2050.35,10);
/*!40000 ALTER TABLE `socios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-11 22:27:21

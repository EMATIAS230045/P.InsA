CREATE DATABASE  IF NOT EXISTS `bd_insa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_insa`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_insa
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `asistencias`
--

DROP TABLE IF EXISTS `asistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencias` (
  `id_asistencias` int NOT NULL AUTO_INCREMENT,
  `estado` enum('presente','ausente') DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `matricula` varchar(45) DEFAULT NULL,
  `num_equipop` int DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `hora` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_asistencias`),
  KEY `ae_asistencia_equipo` (`num_equipop`),
  CONSTRAINT `ae_asistencia_equipo` FOREIGN KEY (`num_equipop`) REFERENCES `equipos` (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencias`
--

LOCK TABLES `asistencias` WRITE;
/*!40000 ALTER TABLE `asistencias` DISABLE KEYS */;
INSERT INTO `asistencias` VALUES (1,'presente','2024-07-28','Nombre_1823','M_1512',1,'Área_59','08:54'),(2,'ausente','2024-08-02','Nombre_5370','M_2569',3,'Área_59','23:02'),(3,'presente','2024-08-09','Nombre_6093','M_1791',1,'Área_80','19:37'),(4,'ausente','2024-07-28','Nombre_8501','M_4999',4,'Área_24','09:09'),(5,'ausente','2024-07-25','Nombre_7237','M_1960',4,'Área_45','20:54'),(6,'presente','2024-07-19','Nombre_9246','M_1038',3,'Área_41','20:57'),(7,'ausente','2024-08-09','Nombre_7940','M_3849',3,'Área_55','04:09'),(8,'presente','2024-08-08','Nombre_2394','M_1090',4,'Área_80','13:21'),(9,'presente','2024-08-02','Nombre_7215','M_2424',1,'Área_51','09:31'),(10,'presente','2024-08-06','Nombre_8449','M_23',2,'Área_37','10:09'),(11,'ausente','2024-08-05','Nombre_6193','M_3917',1,'Área_32','08:43'),(12,'ausente','2024-07-31','Nombre_9835','M_6799',2,'Área_20','16:47'),(13,'presente','2024-08-13','Nombre_5938','M_7354',4,'Área_27','16:33'),(14,'presente','2024-07-26','Nombre_3091','M_1978',1,'Área_71','09:48'),(15,'ausente','2024-07-23','Nombre_9456','M_12',1,'Área_84','17:01'),(16,'ausente','2024-07-20','Nombre_7728','M_6801',1,'Área_37','14:54'),(17,'presente','2024-08-09','Nombre_4300','M_7638',3,'Área_35','04:50'),(18,'ausente','2024-07-29','Nombre_9357','M_3279',4,'Área_17','09:25'),(19,'presente','2024-07-20','Nombre_4477','M_8677',4,'Área_37','21:17'),(20,'presente','2024-07-24','Nombre_7650','M_772',1,'Área_22','20:32'),(21,'presente','2024-07-20','Nombre_1642','M_2246',4,'Área_47','11:03'),(22,'ausente','2024-07-24','Nombre_663','M_6175',5,'Área_59','06:40'),(23,'ausente','2024-08-02','Nombre_4786','M_5493',2,'Área_90','14:16'),(24,'presente','2024-07-31','Nombre_5171','M_4423',4,'Área_97','21:32'),(25,'presente','2024-08-17','Nombre_2703','M_9608',5,'Área_8','10:55'),(26,'presente','2024-08-13','Nombre_1545','M_8103',6,'Área_50','18:23'),(27,'ausente','2024-07-30','Nombre_4476','M_6795',1,'Área_23','00:22'),(28,'ausente','2024-07-24','Nombre_2017','M_2341',6,'Área_12','22:15'),(29,'ausente','2024-08-02','Nombre_3777','M_5417',6,'Área_25','12:54'),(30,'ausente','2024-07-20','Nombre_1379','M_7082',2,'Área_51','04:20'),(31,'ausente','2024-08-12','Nombre_8643','M_6772',8,'Área_93','07:39'),(32,'presente','2024-08-04','Nombre_7463','M_892',3,'Área_76','05:47'),(33,'presente','2024-08-09','Nombre_5557','M_5221',10,'Área_14','22:08'),(34,'presente','2024-07-19','Nombre_1622','M_5675',4,'Área_5','04:53'),(35,'presente','2024-07-25','Nombre_2870','M_4266',3,'Área_8','14:41'),(36,'ausente','2024-08-02','Nombre_3460','M_9836',1,'Área_44','14:39'),(37,'ausente','2024-08-11','Nombre_2926','M_1022',1,'Área_86','09:25'),(38,'presente','2024-08-08','Nombre_666','M_1056',1,'Área_32','15:13'),(39,'presente','2024-08-12','Nombre_6256','M_4333',1,'Área_14','20:55'),(40,'ausente','2024-07-21','Nombre_8312','M_5779',5,'Área_24','01:29'),(41,'presente','2024-08-08','Nombre_3188','M_4603',5,'Área_34','16:23'),(42,'presente','2024-07-22','Nombre_9084','M_5801',3,'Área_13','03:23'),(43,'presente','2024-08-03','Nombre_5590','M_2066',5,'Área_16','17:11'),(44,'presente','2024-07-25','Nombre_2659','M_3595',12,'Área_91','14:13'),(45,'presente','2024-08-07','Nombre_5219','M_2425',8,'Área_50','14:27'),(46,'presente','2024-08-02','Nombre_5487','M_745',9,'Área_40','20:04'),(47,'ausente','2024-07-24','Nombre_5669','M_4441',7,'Área_26','18:06'),(48,'presente','2024-08-13','Nombre_9710','M_3883',1,'Área_97','19:05'),(49,'presente','2024-08-15','Nombre_766','M_2104',10,'Área_48','22:14'),(50,'presente','2024-08-07','Nombre_5014','M_1510',4,'Área_80','06:51'),(51,'presente','2024-08-02','Nombre_7561','M_5773',8,'Área_36','22:39'),(52,'presente','2024-08-07','Nombre_1052','M_5675',1,'Área_90','23:09'),(53,'ausente','2024-08-05','Nombre_8573','M_7796',1,'Área_29','11:30'),(54,'ausente','2024-08-14','Nombre_5655','M_8205',1,'Área_56','14:24');
/*!40000 ALTER TABLE `asistencias` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ActualizarRegistrosDespuésDeInsertarAsistencias` AFTER INSERT ON `asistencias` FOR EACH ROW BEGIN
    -- Inserta un registro en la tabla de registros
    INSERT INTO registros (accion, tabla_afectada, registro_id, fecha)
    VALUES ('INSERTAR', 'asistencias', NEW.id_asistencias, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `Bitacora_id` int NOT NULL AUTO_INCREMENT,
  `matricula_equipo` int NOT NULL,
  `agua` tinyint(1) NOT NULL DEFAULT '0',
  `papel` tinyint(1) NOT NULL DEFAULT '0',
  `plastico` tinyint(1) NOT NULL DEFAULT '0',
  `id_edificiop` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`Bitacora_id`),
  KEY `be_bitacora_edificios` (`id_edificiop`),
  KEY `be_bitacora_equipos` (`matricula_equipo`),
  KEY `bu_bitacora_usuarios` (`id_usuario`),
  CONSTRAINT `be_bitacora_edificios` FOREIGN KEY (`id_edificiop`) REFERENCES `edificios` (`id_edificio`),
  CONSTRAINT `be_bitacora_equipos` FOREIGN KEY (`matricula_equipo`) REFERENCES `equipos` (`id_equipo`),
  CONSTRAINT `bu_bitacora_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (2,1,1,0,0,3,'2024-07-22',4),(3,2,1,1,0,3,'2024-08-05',2),(4,1,1,1,0,3,'2024-08-14',3),(5,2,1,1,1,4,'2024-07-31',1),(6,4,1,0,1,2,'2024-07-23',4),(7,4,0,1,1,4,'2024-07-28',4),(8,1,0,1,1,4,'2024-08-06',1),(9,2,1,1,0,1,'2024-07-26',1),(10,3,1,0,0,3,'2024-08-09',4),(11,2,0,1,1,2,'2024-08-04',1),(12,3,0,1,0,3,'2024-07-25',1),(13,3,0,1,1,2,'2024-08-17',2),(14,1,1,1,0,4,'2024-08-04',2),(15,1,0,0,1,2,'2024-08-09',1),(16,2,1,1,0,1,'2024-07-21',1),(17,1,1,1,1,1,'2024-07-27',1),(18,2,1,0,0,1,'2024-07-28',3),(19,1,1,0,1,3,'2024-08-12',3),(20,4,0,0,1,4,'2024-08-16',1),(21,1,0,1,1,1,'2024-07-29',4),(22,2,1,1,1,5,'2024-08-07',1),(23,7,0,1,1,1,'2024-08-17',10),(24,9,0,1,1,8,'2024-08-07',6),(25,6,1,0,1,3,'2024-08-04',7),(26,9,1,0,1,10,'2024-08-16',2),(27,9,1,0,1,6,'2024-07-31',4),(28,9,1,1,1,8,'2024-08-06',7),(29,10,1,0,1,10,'2024-08-02',7),(30,7,1,1,1,9,'2024-08-11',6),(31,10,1,0,1,2,'2024-08-14',1),(32,10,0,1,1,1,'2024-07-28',2),(33,1,1,1,0,1,'2024-07-21',1),(34,1,1,1,1,1,'2024-07-23',1),(35,2,1,0,1,2,'2024-08-17',1),(36,1,0,1,1,1,'2024-08-07',2),(37,6,1,0,0,3,'2024-08-09',10),(38,3,1,0,0,4,'2024-08-03',9),(39,11,1,0,1,12,'2024-08-12',2),(40,3,1,1,1,2,'2024-08-13',6),(41,12,1,1,1,1,'2024-07-23',2),(42,2,1,1,0,8,'2024-07-26',11),(43,4,1,0,1,7,'2024-07-21',12),(44,12,1,1,1,4,'2024-08-12',1),(45,9,1,0,1,9,'2024-07-21',7),(46,2,1,1,1,2,'2024-08-11',9),(47,12,0,0,1,12,'2024-08-11',3),(48,3,1,0,1,9,'2024-07-30',1),(49,1,0,0,0,1,'2024-07-26',1),(50,1,1,1,0,1,'2024-08-10',1),(51,1,0,1,1,1,'2024-08-16',1);
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ActualizarRegistrosDespuésDeInsertarBitacora` AFTER INSERT ON `bitacora` FOR EACH ROW BEGIN
    -- Inserta un registro en la tabla de registros
    INSERT INTO registros (accion, tabla_afectada, registro_id, fecha)
    VALUES ('INSERTAR', 'bitacora', NEW.Bitacora_id, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `edificios`
--

DROP TABLE IF EXISTS `edificios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edificios` (
  `id_edificio` int NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_edificio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edificios`
--

LOCK TABLES `edificios` WRITE;
/*!40000 ALTER TABLE `edificios` DISABLE KEYS */;
INSERT INTO `edificios` VALUES (1,'Edificio_4129'),(2,'Edificio_2377'),(3,'Edificio_8403'),(4,'Edificio_4881'),(5,'Edificio_6089'),(6,'Edificio_9874'),(7,'Edificio_4352'),(8,'Edificio_2138'),(9,'Edificio_7637'),(10,'Edificio_1770'),(11,'Edificio_259'),(12,'Edificio_8493');
/*!40000 ALTER TABLE `edificios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ActualizarRegistrosDespuésDeInsertarEdificios` AFTER INSERT ON `edificios` FOR EACH ROW BEGIN
    -- Inserta un registro en la tabla de registros
    INSERT INTO registros (accion, tabla_afectada, registro_id, fecha)
    VALUES ('INSERTAR', 'edificios', NEW.id_edificio, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos` (
  `id_equipo` int NOT NULL,
  `nombre_de_equipo` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'Equipo_7539'),(2,'Equipo_767'),(3,'Equipo_8743'),(4,'Equipo_1418'),(5,'Equipo_5860'),(6,'Equipo_4448'),(7,'Equipo_3719'),(8,'Equipo_5253'),(9,'Equipo_5110'),(10,'Equipo_9788'),(11,'Equipo_9219'),(12,'Equipo_1277');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ActualizarRegistrosDespuésDeInsertarEquipos` AFTER INSERT ON `equipos` FOR EACH ROW BEGIN
    -- Inserta un registro en la tabla de registros
    INSERT INTO registros (accion, tabla_afectada, registro_id, fecha)
    VALUES ('INSERTAR', 'equipos', NEW.id_equipo, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horarios` (
  `id_horarios` int NOT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `hora` varchar(45) DEFAULT NULL,
  `num_equipo` int NOT NULL,
  PRIMARY KEY (`id_horarios`),
  KEY `he_horarios_equipo` (`num_equipo`),
  CONSTRAINT `he_horarios_equipo` FOREIGN KEY (`num_equipo`) REFERENCES `equipos` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (1,'2024-07-28','18:27',1),(2,'2024-08-05','08:32',3),(3,'2024-07-31','01:26',1),(4,'2024-08-13','11:56',2),(5,'2024-08-04','15:54',3),(6,'2024-07-19','06:19',9),(7,'2024-08-11','13:13',5),(8,'2024-08-06','15:11',10),(9,'2024-08-14','20:49',7),(10,'2024-08-01','23:11',1),(11,'2024-08-16','13:36',5),(12,'2024-07-22','09:23',9);
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ActualizarRegistrosDespuésDeInsertarHorarios` AFTER INSERT ON `horarios` FOR EACH ROW BEGIN
    -- Inserta un registro en la tabla de registros
    INSERT INTO registros (accion, tabla_afectada, registro_id, fecha)
    VALUES ('INSERTAR', 'horarios', NEW.id_horarios, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `registros`
--

DROP TABLE IF EXISTS `registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accion` varchar(45) DEFAULT NULL,
  `tabla_afectada` varchar(45) DEFAULT NULL,
  `registro_id` int DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros`
--

LOCK TABLES `registros` WRITE;
/*!40000 ALTER TABLE `registros` DISABLE KEYS */;
INSERT INTO `registros` VALUES (1,'INSERTAR','usuarios',101,'2024-08-17 18:48:38'),(2,'INSERTAR','usuarios',11,'2024-08-17 18:58:11'),(3,'INSERTAR','usuarios',12,'2024-08-17 18:58:11');
/*!40000 ALTER TABLE `registros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Rol` enum('lider','integrante','administrador') DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL,
  `id_horariosp` int DEFAULT NULL,
  `num_equipo` int DEFAULT NULL,
  `matricula` int DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `uh_usuarios_horarios` (`id_horariosp`),
  KEY `ue_usuarios_equipo` (`num_equipo`),
  CONSTRAINT `ue_usuarios_equipo` FOREIGN KEY (`num_equipo`) REFERENCES `equipos` (`id_equipo`),
  CONSTRAINT `uh_usuarios_horarios` FOREIGN KEY (`id_horariosp`) REFERENCES `horarios` (`id_horarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Usuario_5934','+34097587210','lider','usuario_5674@example.com','contraseña_5403',1,1,876),(2,'Usuario_1696','+34024053812','administrador','usuario_6570@example.com','contraseña_422',2,1,72),(3,'Usuario_6421','+34099380553','lider','usuario_2316@example.com','contraseña_302',3,2,191),(4,'Usuario_5879','+34036540045','lider','usuario_2194@example.com','contraseña_9079',4,4,683),(5,'Usuario_7544','+34074807604','lider','usuario_1404@example.com','contraseña_2713',5,5,506),(6,'Usuario_4525','+34098995364','integrante','usuario_9905@example.com','contraseña_1764',10,1,388),(7,'Usuario_8711','+34018962069','lider','usuario_1041@example.com','contraseña_5168',3,9,227),(8,'Usuario_7137','+34088474192','lider','usuario_7583@example.com','contraseña_9443',5,5,663),(9,'Usuario_1130','+34057616374','integrante','usuario_9800@example.com','contraseña_2753',5,4,467),(10,'Usuario_2730','+34096201731','integrante','usuario_681@example.com','contraseña_3681',7,1,476),(11,'Usuario_2015','+34042299804','integrante','usuario_2821@example.com','contraseña_8800',7,2,980),(12,'Usuario_5165','+34064214604','integrante','usuario_3783@example.com','contraseña_9089',5,4,379),(101,'Nuevo Usuario','+34000000000','integrante','nuevo@ejemplo.com','contraseña123',1,1,12345);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `bd_insa` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `VerificarDatosAntesDeInsertar` BEFORE INSERT ON `usuarios` FOR EACH ROW BEGIN
    -- Verifica si el num_equipo existe en la tabla equipos
    IF NOT EXISTS (SELECT 1 FROM equipos WHERE id_equipo = NEW.num_equipo) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El num_equipo referenciado no existe en la tabla equipos.';
    END IF;

    -- Verifica si el id_horariosp existe en la tabla horarios
    IF NOT EXISTS (SELECT 1 FROM horarios WHERE id_horarios = NEW.id_horariosp) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El id_horariosp referenciado no existe en la tabla horarios.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `bd_insa` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
ALTER DATABASE `bd_insa` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ActualizarRegistrosDespuésDeInsertar` AFTER INSERT ON `usuarios` FOR EACH ROW BEGIN
    -- Inserta un registro en la tabla de registros
    INSERT INTO registros (accion, tabla_afectada, registro_id, fecha)
    VALUES ('INSERTAR', 'usuarios', NEW.id_usuario, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `bd_insa` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;

--
-- Temporary view structure for view `vista_bitacora_resumen`
--

DROP TABLE IF EXISTS `vista_bitacora_resumen`;
/*!50001 DROP VIEW IF EXISTS `vista_bitacora_resumen`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_bitacora_resumen` AS SELECT 
 1 AS `Bitacora_id`,
 1 AS `matricula_equipo`,
 1 AS `nombre_equipo`,
 1 AS `cantidad_agua`,
 1 AS `cantidad_papel`,
 1 AS `cantidad_plastico`,
 1 AS `nombre_edificio`,
 1 AS `fecha_bitacora`,
 1 AS `nombre_usuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_usuarios_detalle`
--

DROP TABLE IF EXISTS `vista_usuarios_detalle`;
/*!50001 DROP VIEW IF EXISTS `vista_usuarios_detalle`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_usuarios_detalle` AS SELECT 
 1 AS `usuario_id`,
 1 AS `nombre_usuario`,
 1 AS `telefono_usuario`,
 1 AS `rol_usuario`,
 1 AS `correo_usuario`,
 1 AS `matricula_usuario`,
 1 AS `nombre_equipo`,
 1 AS `fecha_horario`,
 1 AS `hora_horario`,
 1 AS `fecha_registro`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'bd_insa'
--

--
-- Dumping routines for database 'bd_insa'
--
/*!50003 DROP FUNCTION IF EXISTS `GetTotalAsistenciasPorEquipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetTotalAsistenciasPorEquipo`(equipo_id INT) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE total_asistencias INT;

    -- Contar el número total de asistencias para el equipo dado
    SELECT COUNT(*) INTO total_asistencias
    FROM asistencias
    WHERE num_equipop = equipo_id;

    RETURN total_asistencias;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetTotalEquipos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetTotalEquipos`() RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE total INT;

    -- Contar el número total de equipos
    SELECT COUNT(*) INTO total FROM equipos;

    RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ObtenerRolUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `ObtenerRolUsuario`(usuario_nombre VARCHAR(255), usuario_contraseña VARCHAR(255)) RETURNS varchar(50) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
    NO SQL
    DETERMINISTIC
BEGIN
    DECLARE rol_usuario VARCHAR(50);
    
    -- Inicializamos la variable de rol como 'No encontrado'
    SET rol_usuario = 'No encontrado';
    
    -- Buscamos el rol del usuario en la tabla
    SELECT Rol INTO rol_usuario
    FROM usuarios
    WHERE Nombre = usuario_nombre
      AND contraseña = usuario_contraseña;
    
    RETURN rol_usuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarDatosAleatorios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarDatosAleatorios`(IN cantidad INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE fecha DATE;

    -- Inserta datos aleatorios en la tabla `equipos`
    WHILE i < cantidad DO
        INSERT IGNORE INTO equipos (id_equipo, nombre_de_equipo)
        VALUES (
            i + 1, -- id_equipo (debe ser único y secuencial)
            CONCAT('Equipo_', FLOOR(RAND() * 10000)) -- Nombre aleatorio
        );
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta datos aleatorios en la tabla `edificios`
    WHILE i < cantidad DO
        INSERT IGNORE INTO edificios (id_edificio, nombre)
        VALUES (
            i + 1, -- id_edificio (debe ser único y secuencial)
            CONCAT('Edificio_', FLOOR(RAND() * 10000)) -- Nombre aleatorio
        );
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta datos aleatorios en la tabla `horarios`
    WHILE i < cantidad DO
        INSERT IGNORE INTO horarios (id_horarios, fecha, hora, num_equipo)
        VALUES (
            i + 1, -- id_horarios (debe ser único y secuencial)
            CURDATE() - INTERVAL FLOOR(RAND() * 30) DAY, -- Fecha aleatoria dentro del último mes
            CONCAT(LPAD(FLOOR(RAND() * 24), 2, '0'), ':', LPAD(FLOOR(RAND() * 60), 2, '0')), -- Hora aleatoria en formato HH:MM
            FLOOR(RAND() * cantidad) + 1 -- num_equipo aleatorio (dentro del rango de equipos insertados)
        );
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta datos aleatorios en la tabla `usuarios`, excluyendo el rol `administrador`
    WHILE i < cantidad DO
        INSERT IGNORE INTO usuarios (id_usuario, Nombre, Telefono, Rol, correo, contraseña, id_horariosp, num_equipo, matricula)
        VALUES (
            i + 1, -- id_usuario (debe ser único y secuencial)
            CONCAT('Usuario_', FLOOR(RAND() * 10000)), -- Nombre aleatorio
            CONCAT('+34', LPAD(FLOOR(RAND() * 100000000), 9, '0')), -- Teléfono aleatorio
            CASE 
                WHEN RAND() < 0.5 THEN 'lider'
                ELSE 'integrante'
            END, -- Rol aleatorio, excluyendo 'administrador'
            CONCAT('usuario_', FLOOR(RAND() * 10000), '@example.com'), -- Correo electrónico aleatorio
            CONCAT('contraseña_', FLOOR(RAND() * 10000)), -- Contraseña aleatoria
            FLOOR(RAND() * cantidad) + 1, -- id_horariosp aleatorio (dentro del rango de horarios insertados)
            FLOOR(RAND() * cantidad) + 1, -- num_equipo aleatorio (dentro del rango de equipos insertados)
            FLOOR(RAND() * 1000) -- Matrícula aleatoria
        );
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta datos aleatorios en la tabla `asistencias`
    WHILE i < cantidad DO
        SET fecha = CURDATE() - INTERVAL FLOOR(RAND() * 30) DAY; -- Fecha aleatoria dentro del último mes
        
        INSERT IGNORE INTO asistencias (estado, fecha, nombres, matricula, num_equipop, area, hora)
        VALUES (
            CASE 
                WHEN RAND() < 0.5 THEN 'presente'
                ELSE 'ausente'
            END, -- Estado aleatorio
            fecha, -- Fecha aleatoria
            CONCAT('Nombre_', FLOOR(RAND() * 10000)), -- Nombre aleatorio
            CONCAT('M_', FLOOR(RAND() * 10000)), -- Matrícula aleatoria
            FLOOR(RAND() * cantidad) + 1, -- num_equipop aleatorio (dentro del rango de equipos insertados)
            CONCAT('Área_', FLOOR(RAND() * 100)), -- Área aleatoria
            CONCAT(LPAD(FLOOR(RAND() * 24), 2, '0'), ':', LPAD(FLOOR(RAND() * 60), 2, '0')) -- Hora aleatoria en formato HH:MM
        );
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta datos aleatorios en la tabla `bitacora`
    WHILE i < cantidad DO
        INSERT IGNORE INTO bitacora (matricula_equipo, agua, papel, plastico, id_edificiop, fecha, id_usuario)
        VALUES (
            FLOOR(RAND() * cantidad) + 1, -- matricula_equipo aleatorio (dentro del rango de equipos insertados)
            CASE 
                WHEN RAND() < 0.5 THEN 1
                ELSE 0
            END, -- Agua (0 o 1 aleatorio)
            CASE 
                WHEN RAND() < 0.5 THEN 1
                ELSE 0
            END, -- Papel (0 o 1 aleatorio)
            CASE 
                WHEN RAND() < 0.5 THEN 1
                ELSE 0
            END, -- Plástico (0 o 1 aleatorio)
            FLOOR(RAND() * cantidad) + 1, -- id_edificiop aleatorio (dentro del rango de edificios)
            CURDATE() - INTERVAL FLOOR(RAND() * 30) DAY, -- Fecha aleatoria
            FLOOR(RAND() * cantidad) + 1 -- id_usuario aleatorio (dentro del rango de usuarios insertados)
        );
        SET i = i + 1;
    END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarYActualizarDatosAleatorios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarYActualizarDatosAleatorios`(IN cantidad INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE fecha DATE;

    -- Verifica que `cantidad` sea positiva
    IF cantidad <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La cantidad debe ser mayor que cero.';
    END IF;

    -- Inserta o actualiza datos en la tabla `equipos`
    WHILE i < cantidad DO
        INSERT INTO equipos (id_equipo, nombre_de_equipo)
        VALUES (
            i + 1, -- id_equipo (debe ser único y secuencial)
            CONCAT('Equipo_', FLOOR(RAND() * 10000)) -- Nombre aleatorio
        )
        ON DUPLICATE KEY UPDATE
            nombre_de_equipo = VALUES(nombre_de_equipo);
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta o actualiza datos en la tabla `edificios`
    WHILE i < cantidad DO
        INSERT INTO edificios (id_edificio, nombre)
        VALUES (
            i + 1, -- id_edificio (debe ser único y secuencial)
            CONCAT('Edificio_', FLOOR(RAND() * 10000)) -- Nombre aleatorio
        )
        ON DUPLICATE KEY UPDATE
            nombre = VALUES(nombre);
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta o actualiza datos en la tabla `horarios`
    WHILE i < cantidad DO
        INSERT INTO horarios (id_horarios, fecha, hora, num_equipo)
        VALUES (
            i + 1, -- id_horarios (debe ser único y secuencial)
            CURDATE() - INTERVAL FLOOR(RAND() * 30) DAY, -- Fecha aleatoria dentro del último mes
            CONCAT(LPAD(FLOOR(RAND() * 24), 2, '0'), ':', LPAD(FLOOR(RAND() * 60), 2, '0')), -- Hora aleatoria en formato HH:MM
            FLOOR(RAND() * cantidad) + 1 -- num_equipo aleatorio (dentro del rango de equipos insertados)
        )
        ON DUPLICATE KEY UPDATE
            fecha = VALUES(fecha),
            hora = VALUES(hora),
            num_equipo = VALUES(num_equipo);
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta o actualiza datos en la tabla `usuarios`, excluyendo el rol `administrador`
    WHILE i < cantidad DO
        INSERT INTO usuarios (id_usuario, Nombre, Telefono, Rol, correo, contraseña, id_horariosp, num_equipo, matricula)
        VALUES (
            i + 1, -- id_usuario (debe ser único y secuencial)
            CONCAT('Usuario_', FLOOR(RAND() * 10000)), -- Nombre aleatorio
            CONCAT('+34', LPAD(FLOOR(RAND() * 100000000), 9, '0')), -- Teléfono aleatorio
            CASE 
                WHEN RAND() < 0.5 THEN 'lider'
                ELSE 'integrante'
            END, -- Rol aleatorio, excluyendo 'administrador'
            CONCAT('usuario_', FLOOR(RAND() * 10000), '@example.com'), -- Correo electrónico aleatorio
            CONCAT('contraseña_', FLOOR(RAND() * 10000)), -- Contraseña aleatoria
            FLOOR(RAND() * cantidad) + 1, -- id_horariosp aleatorio (dentro del rango de horarios insertados)
            FLOOR(RAND() * cantidad) + 1, -- num_equipo aleatorio (dentro del rango de equipos insertados)
            FLOOR(RAND() * 1000) -- Matrícula aleatoria
        )
        ON DUPLICATE KEY UPDATE
            Nombre = VALUES(Nombre),
            Telefono = VALUES(Telefono),
            Rol = VALUES(Rol),
            correo = VALUES(correo),
            contraseña = VALUES(contraseña),
            id_horariosp = VALUES(id_horariosp),
            num_equipo = VALUES(num_equipo),
            matricula = VALUES(matricula);
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta o actualiza datos en la tabla `asistencias`
    WHILE i < cantidad DO
        SET fecha = CURDATE() - INTERVAL FLOOR(RAND() * 30) DAY; -- Fecha aleatoria dentro del último mes
        
        INSERT INTO asistencias (estado, fecha, nombres, matricula, num_equipop, area, hora)
        VALUES (
            CASE 
                WHEN RAND() < 0.5 THEN 'presente'
                ELSE 'ausente'
            END, -- Estado aleatorio
            fecha, -- Fecha aleatoria
            CONCAT('Nombre_', FLOOR(RAND() * 10000)), -- Nombre aleatorio
            CONCAT('M_', FLOOR(RAND() * 10000)), -- Matrícula aleatoria
            FLOOR(RAND() * cantidad) + 1, -- num_equipop aleatorio (dentro del rango de equipos insertados)
            CONCAT('Área_', FLOOR(RAND() * 100)), -- Área aleatoria
            CONCAT(LPAD(FLOOR(RAND() * 24), 2, '0'), ':', LPAD(FLOOR(RAND() * 60), 2, '0')) -- Hora aleatoria en formato HH:MM
        )
        ON DUPLICATE KEY UPDATE
            estado = VALUES(estado),
            fecha = VALUES(fecha),
            nombres = VALUES(nombres),
            matricula = VALUES(matricula),
            num_equipop = VALUES(num_equipop),
            area = VALUES(area),
            hora = VALUES(hora);
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta o actualiza datos en la tabla `bitacora`
    WHILE i < cantidad DO
        INSERT INTO bitacora (matricula_equipo, agua, papel, plastico, id_edificiop, fecha, id_usuario)
        VALUES (
            FLOOR(RAND() * cantidad) + 1, -- matricula_equipo aleatorio (dentro del rango de equipos insertados)
            CASE 
                WHEN RAND() < 0.5 THEN 1
                ELSE 0
            END, -- Agua (0 o 1 aleatorio)
            CASE 
                WHEN RAND() < 0.5 THEN 1
                ELSE 0
            END, -- Papel (0 o 1 aleatorio)
            CASE 
                WHEN RAND() < 0.5 THEN 1
                ELSE 0
            END, -- Plástico (0 o 1 aleatorio)
            FLOOR(RAND() * cantidad) + 1, -- id_edificiop aleatorio (dentro del rango de edificios)
            CURDATE() - INTERVAL FLOOR(RAND() * 30) DAY, -- Fecha aleatoria
            FLOOR(RAND() * cantidad) + 1 -- id_usuario aleatorio (dentro del rango de usuarios insertados)
        )
        ON DUPLICATE KEY UPDATE
            agua = VALUES(agua),
            papel = VALUES(papel),
            plastico = VALUES(plastico),
            id_edificiop = VALUES(id_edificiop),
            fecha = VALUES(fecha),
            id_usuario = VALUES(id_usuario);
        SET i = i + 1;
    END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarYActualizarUsuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarYActualizarUsuarios`(IN cantidad INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE equipo_id INT;
    DECLARE horario_id INT;

    -- Verifica que `cantidad` sea positiva
    IF cantidad <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La cantidad debe ser mayor que cero.';
    END IF;

    -- Inserta o actualiza datos en `equipos` y `horarios`
    WHILE i < cantidad DO
        -- Genera un ID aleatorio para el equipo
        SET equipo_id = FLOOR(RAND() * cantidad) + 1;

        -- Verifica si el equipo ya existe, si no, lo crea
        INSERT IGNORE INTO equipos (id_equipo, nombre_de_equipo)
        VALUES (equipo_id, CONCAT('Equipo_', FLOOR(RAND() * 10000)));

        -- Genera un ID aleatorio para el horario
        SET horario_id = FLOOR(RAND() * cantidad) + 1;

        -- Verifica si el horario ya existe, si no, lo crea
        INSERT IGNORE INTO horarios (id_horarios, fecha, hora, num_equipo)
        VALUES (
            horario_id, 
            CURDATE() - INTERVAL FLOOR(RAND() * 30) DAY, -- Fecha aleatoria dentro del último mes
            CONCAT(LPAD(FLOOR(RAND() * 24), 2, '0'), ':', LPAD(FLOOR(RAND() * 60), 2, '0')), -- Hora aleatoria en formato HH:MM
            equipo_id -- num_equipo aleatorio
        );

        -- Inserta o actualiza usuarios
        INSERT INTO usuarios (id_usuario, Nombre, Telefono, Rol, correo, contraseña, id_horariosp, num_equipo, matricula)
        VALUES (
            i + 1, -- id_usuario (debe ser único y secuencial)
            CONCAT('Usuario_', FLOOR(RAND() * 10000)), -- Nombre aleatorio
            CONCAT('+34', LPAD(FLOOR(RAND() * 100000000), 9, '0')), -- Teléfono aleatorio
            CASE 
                WHEN RAND() < 0.5 THEN 'lider'
                ELSE 'integrante'
            END, -- Rol aleatorio, excluyendo 'administrador'
            CONCAT('usuario_', FLOOR(RAND() * 10000), '@example.com'), -- Correo electrónico aleatorio
            CONCAT('contraseña_', FLOOR(RAND() * 10000)), -- Contraseña aleatoria
            horario_id, -- id_horariosp aleatorio
            equipo_id, -- num_equipo aleatorio
            FLOOR(RAND() * 1000) -- Matrícula aleatoria
        )
        ON DUPLICATE KEY UPDATE
            Nombre = VALUES(Nombre),
            Telefono = VALUES(Telefono),
            Rol = VALUES(Rol),
            correo = VALUES(correo),
            contraseña = VALUES(contraseña),
            id_horariosp = VALUES(id_horariosp),
            num_equipo = VALUES(num_equipo),
            matricula = VALUES(matricula);

        SET i = i + 1;
    END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista_bitacora_resumen`
--

/*!50001 DROP VIEW IF EXISTS `vista_bitacora_resumen`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_bitacora_resumen` AS select `b`.`Bitacora_id` AS `Bitacora_id`,`b`.`matricula_equipo` AS `matricula_equipo`,`e`.`nombre_de_equipo` AS `nombre_equipo`,`b`.`agua` AS `cantidad_agua`,`b`.`papel` AS `cantidad_papel`,`b`.`plastico` AS `cantidad_plastico`,`d`.`nombre` AS `nombre_edificio`,`b`.`fecha` AS `fecha_bitacora`,`u`.`Nombre` AS `nombre_usuario` from (((`bitacora` `b` left join `equipos` `e` on((`b`.`matricula_equipo` = `e`.`id_equipo`))) left join `edificios` `d` on((`b`.`id_edificiop` = `d`.`id_edificio`))) left join `usuarios` `u` on((`b`.`id_usuario` = `u`.`id_usuario`))) order by `b`.`fecha` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_usuarios_detalle`
--

/*!50001 DROP VIEW IF EXISTS `vista_usuarios_detalle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_usuarios_detalle` AS select `u`.`id_usuario` AS `usuario_id`,`u`.`Nombre` AS `nombre_usuario`,`u`.`Telefono` AS `telefono_usuario`,`u`.`Rol` AS `rol_usuario`,`u`.`correo` AS `correo_usuario`,`u`.`matricula` AS `matricula_usuario`,`e`.`nombre_de_equipo` AS `nombre_equipo`,`h`.`fecha` AS `fecha_horario`,`h`.`hora` AS `hora_horario`,`r`.`fecha` AS `fecha_registro` from (((`usuarios` `u` left join `equipos` `e` on((`u`.`num_equipo` = `e`.`id_equipo`))) left join `horarios` `h` on((`u`.`id_horariosp` = `h`.`id_horarios`))) left join `registros` `r` on(((`u`.`id_usuario` = `r`.`registro_id`) and (`r`.`tabla_afectada` = 'usuarios')))) order by `u`.`id_usuario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-23  6:46:15

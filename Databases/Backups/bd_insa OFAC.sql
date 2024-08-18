-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_insa
-- ------------------------------------------------------
-- Server version	8.0.39

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencias`
--

LOCK TABLES `asistencias` WRITE;
/*!40000 ALTER TABLE `asistencias` DISABLE KEYS */;
INSERT INTO `asistencias` VALUES (1,'presente','2024-07-28','Nombre_1823','M_1512',1,'Área_59','08:54'),(2,'ausente','2024-08-02','Nombre_5370','M_2569',3,'Área_59','23:02'),(3,'presente','2024-08-09','Nombre_6093','M_1791',1,'Área_80','19:37'),(4,'ausente','2024-07-28','Nombre_8501','M_4999',4,'Área_24','09:09'),(5,'ausente','2024-07-25','Nombre_7237','M_1960',4,'Área_45','20:54'),(6,'presente','2024-07-19','Nombre_9246','M_1038',3,'Área_41','20:57'),(7,'ausente','2024-08-09','Nombre_7940','M_3849',3,'Área_55','04:09'),(8,'presente','2024-08-08','Nombre_2394','M_1090',4,'Área_80','13:21'),(9,'presente','2024-08-02','Nombre_7215','M_2424',1,'Área_51','09:31'),(10,'presente','2024-08-06','Nombre_8449','M_23',2,'Área_37','10:09'),(11,'ausente','2024-08-05','Nombre_6193','M_3917',1,'Área_32','08:43'),(12,'ausente','2024-07-31','Nombre_9835','M_6799',2,'Área_20','16:47'),(13,'presente','2024-08-13','Nombre_5938','M_7354',4,'Área_27','16:33'),(14,'presente','2024-07-26','Nombre_3091','M_1978',1,'Área_71','09:48'),(15,'ausente','2024-07-23','Nombre_9456','M_12',1,'Área_84','17:01'),(16,'ausente','2024-07-20','Nombre_7728','M_6801',1,'Área_37','14:54'),(17,'presente','2024-08-09','Nombre_4300','M_7638',3,'Área_35','04:50'),(18,'ausente','2024-07-29','Nombre_9357','M_3279',4,'Área_17','09:25'),(19,'presente','2024-07-20','Nombre_4477','M_8677',4,'Área_37','21:17'),(20,'presente','2024-07-24','Nombre_7650','M_772',1,'Área_22','20:32'),(21,'presente','2024-07-20','Nombre_1642','M_2246',4,'Área_47','11:03'),(22,'ausente','2024-07-24','Nombre_663','M_6175',5,'Área_59','06:40'),(23,'ausente','2024-08-02','Nombre_4786','M_5493',2,'Área_90','14:16'),(24,'presente','2024-07-31','Nombre_5171','M_4423',4,'Área_97','21:32'),(25,'presente','2024-08-17','Nombre_2703','M_9608',5,'Área_8','10:55'),(26,'presente','2024-08-13','Nombre_1545','M_8103',6,'Área_50','18:23'),(27,'ausente','2024-07-30','Nombre_4476','M_6795',1,'Área_23','00:22'),(28,'ausente','2024-07-24','Nombre_2017','M_2341',6,'Área_12','22:15'),(29,'ausente','2024-08-02','Nombre_3777','M_5417',6,'Área_25','12:54'),(30,'ausente','2024-07-20','Nombre_1379','M_7082',2,'Área_51','04:20'),(31,'ausente','2024-08-12','Nombre_8643','M_6772',8,'Área_93','07:39'),(32,'presente','2024-08-04','Nombre_7463','M_892',3,'Área_76','05:47'),(33,'presente','2024-08-09','Nombre_5557','M_5221',10,'Área_14','22:08'),(34,'presente','2024-07-19','Nombre_1622','M_5675',4,'Área_5','04:53'),(35,'presente','2024-07-25','Nombre_2870','M_4266',3,'Área_8','14:41');
/*!40000 ALTER TABLE `asistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `Bitacora_id` int NOT NULL AUTO_INCREMENT,
  `matricula_equipo` int NOT NULL,
  `agua` varchar(45) DEFAULT NULL,
  `papel` varchar(45) DEFAULT NULL,
  `plastico` varchar(45) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (2,1,'Agua_56','Papel_45','Plastico_57',3,'2024-07-22',4),(3,2,'Agua_23','Papel_23','Plastico_45',3,'2024-08-05',2),(4,1,'Agua_96','Papel_59','Plastico_9',3,'2024-08-14',3),(5,2,'Agua_10','Papel_47','Plastico_7',4,'2024-07-31',1),(6,4,'Agua_9','Papel_81','Plastico_77',2,'2024-07-23',4),(7,4,'Agua_28','Papel_41','Plastico_22',4,'2024-07-28',4),(8,1,'Agua_6','Papel_0','Plastico_79',4,'2024-08-06',1),(9,2,'Agua_62','Papel_93','Plastico_80',1,'2024-07-26',1),(10,3,'Agua_99','Papel_74','Plastico_75',3,'2024-08-09',4),(11,2,'Agua_78','Papel_50','Plastico_18',2,'2024-08-04',1),(12,3,'Agua_49','Papel_36','Plastico_32',3,'2024-07-25',1),(13,3,'Agua_8','Papel_20','Plastico_78',2,'2024-08-17',2),(14,1,'Agua_38','Papel_30','Plastico_36',4,'2024-08-04',2),(15,1,'Agua_92','Papel_42','Plastico_35',2,'2024-08-09',1),(16,2,'Agua_93','Papel_41','Plastico_28',1,'2024-07-21',1),(17,1,'Agua_21','Papel_61','Plastico_40',1,'2024-07-27',1),(18,2,'Agua_88','Papel_42','Plastico_45',1,'2024-07-28',3),(19,1,'Agua_55','Papel_21','Plastico_43',3,'2024-08-12',3),(20,4,'Agua_46','Papel_98','Plastico_53',4,'2024-08-16',1),(21,1,'Agua_34','Papel_42','Plastico_9',1,'2024-07-29',4),(22,2,'Agua_22','Papel_46','Plastico_65',5,'2024-08-07',1),(23,7,'Agua_39','Papel_90','Plastico_34',1,'2024-08-17',10),(24,9,'Agua_52','Papel_93','Plastico_10',8,'2024-08-07',6),(25,6,'Agua_0','Papel_51','Plastico_55',3,'2024-08-04',7),(26,9,'Agua_43','Papel_52','Plastico_31',10,'2024-08-16',2),(27,9,'Agua_58','Papel_41','Plastico_35',6,'2024-07-31',4),(28,9,'Agua_31','Papel_2','Plastico_17',8,'2024-08-06',7),(29,10,'Agua_71','Papel_85','Plastico_10',10,'2024-08-02',7),(30,7,'Agua_44','Papel_20','Plastico_69',9,'2024-08-11',6),(31,10,'Agua_97','Papel_17','Plastico_94',2,'2024-08-14',1),(32,10,'Agua_60','Papel_14','Plastico_90',1,'2024-07-28',2);
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edificios`
--

DROP TABLE IF EXISTS `edificios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edificios` (
  `id_edificio` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_edificio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edificios`
--

LOCK TABLES `edificios` WRITE;
/*!40000 ALTER TABLE `edificios` DISABLE KEYS */;
INSERT INTO `edificios` VALUES (1,'Edificio_1162'),(2,'Edificio_2377'),(3,'Edificio_8403'),(4,'Edificio_4881'),(5,'Edificio_6089'),(6,'Edificio_9874'),(7,'Edificio_4352'),(8,'Edificio_2138'),(9,'Edificio_7637'),(10,'Edificio_1770');
/*!40000 ALTER TABLE `edificios` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `equipos` VALUES (1,'Equipo_1697'),(2,'Equipo_767'),(3,'Equipo_8743'),(4,'Equipo_1418'),(5,'Equipo_5860'),(6,'Equipo_4448'),(7,'Equipo_3719'),(8,'Equipo_5253'),(9,'Equipo_5110'),(10,'Equipo_9788');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `horarios` VALUES (1,'2024-08-12','08:16',1),(2,'2024-08-05','08:32',3),(3,'2024-07-31','01:26',1),(4,'2024-08-13','11:56',2),(5,'2024-08-04','15:54',3),(6,'2024-07-19','06:19',9),(7,'2024-08-11','13:13',5),(8,'2024-08-06','15:11',10),(9,'2024-08-14','20:49',7),(10,'2024-08-01','23:11',1);
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
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
INSERT INTO `usuarios` VALUES (1,'Usuario_9196','+34013399058','integrante','usuario_310@example.com','contraseña_6970',1,2,869),(2,'Usuario_1696','+34024053812','administrador','usuario_6570@example.com','contraseña_422',2,1,72),(3,'Usuario_6421','+34099380553','lider','usuario_2316@example.com','contraseña_302',3,2,191),(4,'Usuario_5879','+34036540045','lider','usuario_2194@example.com','contraseña_9079',4,4,683),(5,'Usuario_7544','+34074807604','lider','usuario_1404@example.com','contraseña_2713',5,5,506),(6,'Usuario_4525','+34098995364','integrante','usuario_9905@example.com','contraseña_1764',10,1,388),(7,'Usuario_8711','+34018962069','lider','usuario_1041@example.com','contraseña_5168',3,9,227),(8,'Usuario_7137','+34088474192','lider','usuario_7583@example.com','contraseña_9443',5,5,663),(9,'Usuario_1130','+34057616374','integrante','usuario_9800@example.com','contraseña_2753',5,4,467),(10,'Usuario_2730','+34096201731','integrante','usuario_681@example.com','contraseña_3681',7,1,476);
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

-- Dump completed on 2024-08-17 18:01:05

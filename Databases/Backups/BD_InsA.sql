CREATE DATABASE  IF NOT EXISTS `insa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `insa`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: insa
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
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administradores` (
  `Administrador_id` int NOT NULL COMMENT 'Este campo es especialmente para las llaves primarias y no podemos agregarle un valor cualquiera ya que estas estaran enlazadas con otras tablas ',
  `Numero_Trabajador` int DEFAULT NULL COMMENT 'Aqui solo se permite el ingreso de un numero, no se puede ingresar letras oc caracteres especiales',
  `Nombre` varchar(200) DEFAULT NULL COMMENT 'Solo se permite el ingreso de datos personales tales como nombre y apellidos',
  `Correo_Electronico` varchar(250) DEFAULT NULL COMMENT 'Solo se permite el ingreso de un solo correo electronico ya que si agrega mas de uno sera sancionado',
  `Telefono` varchar(250) DEFAULT NULL COMMENT 'Solo se permite el ingreso de 10 digitos sin hacer uso de letras',
  `Lider_id` int DEFAULT NULL COMMENT 'Este campo va relacionado con la tabla de Lider de Equipo ya que comparten datos entre si',
  PRIMARY KEY (`Administrador_id`),
  KEY `administradores_ibfk_1` (`Lider_id`),
  CONSTRAINT `administradores_ibfk_1` FOREIGN KEY (`Lider_id`) REFERENCES `lider_equipo` (`Lider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

LOCK TABLES `administradores` WRITE;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
INSERT INTO `administradores` VALUES (1,1340,'Pablo','pablow@gmail.com','556-890-23-56',NULL),(2,1248,'Miguel','miguell@gmail.com','764-119-12-64',NULL),(3,1321,'Rosa','rosita@gmail.com','776-154-90-67',NULL),(4,1456,'Azul','azyk23@gmail.com','767-776-14-26',NULL),(5,1680,'Blanca','bncaml@gmail.com','555-123-45-67',NULL),(6,1002,'Maria','marianini@gmail.com','776-764-18-56',NULL),(7,2460,'Luis','luismessi@gmail.com','764-119-20-45',NULL),(8,1357,'Angel','1357angel@gmail.com','776-180-47-87',NULL),(9,2468,'Arturo','artur97@gmail.com','764-890-45-23',NULL),(10,9076,'Brisa','brisnita@gmail.com','776-123-79-90',NULL);
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencias`
--

DROP TABLE IF EXISTS `asistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencias` (
  `Asistencia_id` int NOT NULL AUTO_INCREMENT COMMENT 'Este campo es especialmente para las llaves primarias y no podemos agregarle un valor cualquiera ya que estas estaran enlazadas con otras tablas ',
  `Afirmacion` varchar(200) DEFAULT NULL COMMENT 'Solo se aceptara un si, cualquier otro dato sera anulado sin previo aviso',
  `Cancelar` varchar(200) DEFAULT NULL COMMENT 'Solo se aceptara un no, cualquier otro dato sera anulado sin previo aviso',
  `Bitacora_id` int DEFAULT NULL COMMENT 'Este campo va relacionado con la tabla de Bitacoras ya que comparten datos entre si',
  PRIMARY KEY (`Asistencia_id`),
  KEY `asistencias_ibfk_1` (`Bitacora_id`),
  CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`Bitacora_id`) REFERENCES `bitacoras` (`Bitacora_id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencias`
--

LOCK TABLES `asistencias` WRITE;
/*!40000 ALTER TABLE `asistencias` DISABLE KEYS */;
INSERT INTO `asistencias` VALUES (250,'sii','sin comentarios',NULL),(251,'si','sin comentarios',NULL),(252,'no','no asistio',NULL),(253,'no','justificado',NULL),(254,'si','sin comentarios',NULL),(255,'si','sin comentarios',NULL),(256,'si','sin comentarios',NULL),(257,'si','sin comentarios',NULL),(258,'no','reporte enviado',NULL),(259,'no','falta',NULL);
/*!40000 ALTER TABLE `asistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacoras`
--

DROP TABLE IF EXISTS `bitacoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacoras` (
  `Bitacora_id` int NOT NULL AUTO_INCREMENT COMMENT 'Este campo es especialmente para las llaves primarias y no podemos agregarle un valor cualquiera ya que estas estaran enlazadas con otras tablas ',
  `Fecha` date DEFAULT NULL COMMENT 'Solo se aceptara numeros , el ingreso de letras no sera valido y se tomara como falta',
  `Nombre_Departamento` varchar(250) DEFAULT NULL COMMENT 'Solo se permite el ingreso del nombre de la institucion, el ingreso de otro dato sera invalido y se tomara como falta',
  `Agua` varchar(50) DEFAULT NULL COMMENT 'Solo se aceptara un Si o un NO ya que el ingreso de otros datos sera votado y sera tomado como falta',
  `Luz` varchar(50) DEFAULT NULL COMMENT 'Solo se aceptara un Si o un NO ya que el ingreso de otros datos sera votado y sera tomado como falta',
  `Papel` varchar(50) DEFAULT NULL COMMENT 'Solo se aceptara un Si o un NO ya que el ingreso de otros datos sera votado y sera tomado como falta',
  `Plastico` varchar(50) DEFAULT NULL COMMENT 'Solo se aceptara un Si o un NO ya que el ingreso de otros datos sera votado y sera tomado como falta',
  `Otro` varchar(50) DEFAULT NULL COMMENT 'Solo se aceptara un Si o un NO ya que el ingreso de otros datos sera votado y sera tomado como falta',
  PRIMARY KEY (`Bitacora_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacoras`
--

LOCK TABLES `bitacoras` WRITE;
/*!40000 ALTER TABLE `bitacoras` DISABLE KEYS */;
INSERT INTO `bitacoras` VALUES (10,'2024-01-23','Docencia 1','si','si','si','si','no'),(11,'2024-01-23','Pesado 1','si','si','si','si','no'),(12,'2024-01-23','cafeteria','si','si','si','si','no'),(13,'2024-01-23','Docencia 2','si','si','si','si','no'),(14,'2024-01-23','docencia IV','si','si','si','no','si'),(15,'2024-01-23','pesado ll','no','si','si','no','si'),(16,'2024-01-23','servicios escolares','si','no','si','si','si'),(17,'2024-01-23','clinica terapia fisica','si','si','si','si','no'),(18,'2024-01-23','campo','si','no','si','si','si'),(19,'2024-01-23','entrada principal','si','no','si','si','s'),(20,'2024-01-23','pesado 1','si','no','si','no','si');
/*!40000 ALTER TABLE `bitacoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos` (
  `Equipo_id` int NOT NULL COMMENT 'Este campo es especialmente para las llaves primarias y no podemos agregarle un valor cualquiera ya que estas estaran enlazadas con otras tablas ',
  `Lider_id` int DEFAULT NULL COMMENT 'Este campo va relacionado con la tabla de Lider Equipo ya que comparten datos entre si',
  PRIMARY KEY (`Equipo_id`),
  KEY `equipos_ibfk_1` (`Lider_id`),
  CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`Lider_id`) REFERENCES `lider_equipo` (`Lider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,101),(2,102),(3,103),(4,104);
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lider_equipo`
--

DROP TABLE IF EXISTS `lider_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lider_equipo` (
  `Lider_id` int NOT NULL COMMENT 'Este campo es especialmente para las llaves primarias y no podemos agregarle un valor cualquiera ya que estas estaran enlazadas con otras tablas ',
  `Nombre` varchar(250) DEFAULT NULL COMMENT 'Solo se permite el ingreso de datos personales tales como nombre y apellidos',
  `Carrera` varchar(200) DEFAULT NULL,
  `Telefono` varchar(250) DEFAULT NULL COMMENT 'Solo se permite el ingreso de 10 digitos sin hacer uso de letras',
  `Grado` int DEFAULT NULL COMMENT 'Solo se permite el ingreso de un solo numero , el ingreso de dos numeros sera falta',
  `Grupo` varchar(20) DEFAULT NULL COMMENT 'Solo se permite el ingreso de una letra , el ingreso de dos letras sera anulado',
  `Correo_Electronico` varchar(250) DEFAULT NULL COMMENT 'Solo se permite el ingreso de un solo correo electronico ya que si agrega mas de uno sera sancionado',
  `Matricula` int DEFAULT NULL COMMENT 'Solo se puede ingresar numeros el ingreso de letras sera votado de esta base de datos',
  `Bitacora_id` int DEFAULT NULL COMMENT 'Este campo va relacionado con la tabla de Bitacoras ya que comparten datos entre si',
  PRIMARY KEY (`Lider_id`),
  KEY `lider_equipo_ibfk_1` (`Bitacora_id`),
  CONSTRAINT `lider_equipo_ibfk_1` FOREIGN KEY (`Bitacora_id`) REFERENCES `bitacoras` (`Bitacora_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lider_equipo`
--

LOCK TABLES `lider_equipo` WRITE;
/*!40000 ALTER TABLE `lider_equipo` DISABLE KEYS */;
INSERT INTO `lider_equipo` VALUES (101,'Yazmin gutierrez ','DSM','764-116-56-78',2,'C','2304447@utxicotepec.edu',230447,NULL),(102,'karen negrete hernandez','EVND','764-116-56-78',1,'A','2305447@utxicotepec.edu',230547,NULL),(103,'agustin perez rodriguez','DSM','764-116-56-78',3,'B','2305647@utxicotepec.edu',230647,NULL),(104,'daniel garcia pluma','Botecnologia','764-116-56-78',4,'D','2305647@utxicotepec.edu',230747,NULL),(106,'miguel padilla isllas','Terapia fisica','764-116-56-78',2,'E','2307647@utxicotepec.edu',230847,NULL),(107,'hector gomez perea','DSM','764-116-56-78',1,'A','2307847@utxicotepec.edu',230847,NULL),(108,'angel tellez baños','mecatronica','764-116-56-78',8,'B','2307947@utxicotepec.edu',230947,NULL),(109,'citlali perez dionisio','Agricultura','764-116-56-78',2,'A','2307907@utxicotepec.edu',230047,NULL),(110,'azul lopez martinez','Comercio Internacional','764-116-56-78',2,'B','231256@utxicotepec.edu',231256,NULL);
/*!40000 ALTER TABLE `lider_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportes`
--

DROP TABLE IF EXISTS `reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reportes` (
  `Reporte_id` int NOT NULL AUTO_INCREMENT COMMENT 'Este campo es especialmente para las llaves primarias y no podemos agregarle un valor cualquiera ya que estas estaran enlazadas con otras tablas ',
  `Matricula` int DEFAULT NULL COMMENT 'Solo se puede ingresar numeros el ingreso de letras sera votado de esta base de datos',
  `Fecha` date DEFAULT NULL COMMENT 'Solo se aceptara numeros , el ingreso de letras no sera valido y se tomara como falta',
  `Comentarios` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Reporte_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportes`
--

LOCK TABLES `reportes` WRITE;
/*!40000 ALTER TABLE `reportes` DISABLE KEYS */;
INSERT INTO `reportes` VALUES (101,230447,'2024-02-12','siin comentarios'),(102,230237,'2024-04-19','sin comentarios'),(103,230945,'2024-04-19','sin comentarios'),(104,245256,'2024-04-19','sin comentarios'),(105,221234,'2024-04-19','sin comentarios'),(106,219123,'2024-04-19','sin comentarios'),(107,230918,'2024-04-19','sin comentarios'),(108,230934,'2024-04-19','sin comentarios'),(109,221201,'2024-04-19','sin comentarios'),(110,230456,'2024-04-19','sin comentarios');
/*!40000 ALTER TABLE `reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `Usuiario_id` int NOT NULL COMMENT 'Este campo es especialmente para las llaves primarias y no podemos agregarle un valor cualquiera ya que estas estaran enlazadas con otras tablas ',
  `Matricula` int DEFAULT NULL,
  `Nombre` varchar(250) DEFAULT NULL COMMENT 'Aqui solo se permite el ingreso de un numero, no se puede ingresar letras oc caracteres especiales',
  `Carrera` varchar(200) DEFAULT NULL,
  `Grado` int DEFAULT NULL,
  `Grupo` varchar(20) DEFAULT NULL COMMENT 'Solo se permite el ingreso de una letra , el ingreso de dos letras sera anulado',
  `Telefono` varchar(250) DEFAULT NULL COMMENT 'Solo se permite el ingreso de 10 digitos sin hacer uso de letras',
  `Correo_Electronico` varchar(250) DEFAULT NULL COMMENT 'Solo se permite el ingreso de un solo correo electronico ya que si agrega mas de uno sera sancionado',
  `Lider_id` int DEFAULT NULL COMMENT 'Este campo va relacionado con la tabla de Lider Equipo ya que comparten datos entre si',
  `Reporte_id` int DEFAULT NULL COMMENT 'Este campo va relacionado con la tabla de Reporte ya que comparten datos entre si',
  PRIMARY KEY (`Usuiario_id`),
  KEY `usuarios_ibfk_1` (`Lider_id`),
  KEY `usuarios_ibfk_2` (`Reporte_id`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Lider_id`) REFERENCES `lider_equipo` (`Lider_id`),
  CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`Reporte_id`) REFERENCES `reportes` (`Reporte_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (201,230447,'Yazmin Gutierrez HernandeZ','DSM',2,'C','764-116-70-61','230447@utxicotepec.edu.mx',NULL,NULL),(202,230237,'Citalli Perez Dionicio','EVND',1,'A','764-767-04-46','230237@utxicotepec.edu.mx',NULL,NULL),(203,230570,'Karen Negrete Hernandez','TF',3,'E','764-116-70-61','230570@utxicotepec.edu.mx',NULL,NULL),(204,230142,'Obed Guzman Flores','Biotecnologia',4,'B','776-129-09-67','230142@utxicotepec.edu.mx',NULL,NULL),(205,230187,'Carlos Garcia Pluma','DSM',5,'D','764-116-70-61','230187@utxicotepec.edu.mx',NULL,NULL),(206,230365,'Jose Jimenez Castillo','Mantenimiento',6,'A','550-123-56-78','230365@utxicotepec.edu.mx',NULL,NULL),(207,230892,'Derek Sesni Carreño ','Comercio',4,'C','776-123-78-34','230892@utxicotepec.edu.mx',NULL,NULL),(208,230809,'Christian Rodriguez Perez','EVND',3,'A','241-407-78-06','230809@utxicotepec.edu.mx',NULL,NULL),(209,230362,'Brisa Garcia Gregorio','Mecatronica',5,'D','844-182-78-01','230362@utxicotepec.edu.mx',NULL,NULL),(210,230450,'Matias Granillo Mejia','Negocios ',6,'B','764-131-67-22','230450@utxicotepec.edu.mx',NULL,NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'insa'
--

--
-- Dumping routines for database 'insa'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-13  8:40:10

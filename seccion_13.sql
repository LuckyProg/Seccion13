-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: seccion13
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id_post` int(8) NOT NULL AUTO_INCREMENT,
  `texto` varchar(1000) DEFAULT NULL,
  `titulo` varchar(50) NOT NULL,
  `rutaImagen` varchar(100) DEFAULT NULL,
  `rutaDocumento` varchar(100) DEFAULT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_post`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Bienvenido.','Sección 13 |Rama Médica|','../IMG/chale2.jpg','C:UsersderdaDesktop/hola.txt','2017-03-31'),(2,'Lorem ipsum dolor sit amet consectetur adipiscing, elit tempus blandit sollicitudin varius, eleifend orci morbi volutpat penatibus. Himenaeos convallis at pretium penatibus fringilla tortor feugiat sapien faucibus, maecenas interdum porta pharetra gravida dignissim volutpat tellus rhoncus, hendrerit urna massa purus aliquet hac sociis vulputate.','Sección 13 |Rama Médica|',NULL,NULL,'2017-03-31'),(3,'Descarga el nuevo reglamento del 2017.','Reglamento 2017',NULL,'C:UsersderdaDesktop/hola.txt','2017-03-31');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apaterno` varchar(50) NOT NULL,
  `amaterno` varchar(50) NOT NULL,
  `instlabo` varchar(50) NOT NULL,
  `no_empleado` int(9) NOT NULL,
  `seccionsindi` int(2) NOT NULL,
  `unidad_ads` varchar(50) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `rol` int(1) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'chikarkas','chirkes','chirkon','instlabo1',1,13,'daniela','chikarkaslokas@gmail.com','123',0),(2,'David','De la Rocha','Ramirez','Mental',123,1,'BlaBlaBla','derdavid2010@gmail.com','123',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'seccion13'
--

--
-- Dumping routines for database 'seccion13'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-31  4:35:27

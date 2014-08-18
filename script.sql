CREATE DATABASE  IF NOT EXISTS `vtrdata` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vtrdata`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: vtrdata
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_cliente` varchar(20) NOT NULL,
  `rut` varchar(20) DEFAULT NULL,
  `clave` varchar(70) DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delete_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_cliente` (`numero_cliente`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'111-1','111-1','$2y$10$d91OdwfDpA/o.iHHr0EnyOk47O/bcnr3O5O73.zAeKJ0OV8oJiyji','SMmmPIUIJ1GWEhkKeyBDbrMnss8N2impjjvuIFcAARrNR4V4VbTiHZXJkmWe','cliente','0000-00-00 00:00:00','2014-08-06 18:13:32','0000-00-00 00:00:00'),(2,'222-2','222-2','$2y$10$Vz07kxHPgj9A8LHCfb5d1eQ.2V6dDEYnmqmResEbITM9X5R2G0SBm','VlCYg94tnTfU4D8QqWULd8ree4ZulyLD73YSmDajxD2hBvYVTpoDEJZhH8Vb','cliente','0000-00-00 00:00:00','2014-07-30 22:03:49','0000-00-00 00:00:00'),(3,'333-3','333-3','$2y$10$WppzLxIuuG7eLh5GECfuHeqPVV3pO5bcu89O95v91TafoeM54rdPS','27I2Op4RDpqkOitFy78mg6VNrk9EhEgqWwxXIlpeceQKn7ZuMWymsPkUhjnS','cliente','0000-00-00 00:00:00','2014-07-30 17:09:21','0000-00-00 00:00:00'),(4,'444-4','444-4','$2y$10$u.Isoz3Z6OW6bioynqFD0uKxegGAelNPA5iH6lDISV3JS7S5JP2pW','I7vIKSbVwzdF4cvmx1bq7UK4GR0HGJzSMrYOw7o03Xh5zC3Zn6Q0lzDg9sHx','cliente','0000-00-00 00:00:00','2014-08-01 17:29:46','0000-00-00 00:00:00'),(5,'555-5','555-5','$2y$10$/mNXbS9sQ.GnEeftc5hr1O9/S4bcnPMuJzYmeHzpRvdGZ2JF5XoZG',NULL,'cliente','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'666-6','666-6','$2y$10$osgMCARsLbClyBJ8UWYE7OuENtPYN66.tWjZ03ZKc3jCmXrXCjG7S',NULL,'cliente','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'11111-1','11111-1','$2y$10$OmK8HJZ71bK3TuF.wiRKxeSkoni6qgilvZG6JRCDqQm6ZbNSwiDRm','us8T6qzTfeyaUpRGBpn7pOlXdE9mzExxhNlDiq4ezMXAYlkL5rrQXvFMAQJb','empresa','0000-00-00 00:00:00','2014-08-07 21:50:33','0000-00-00 00:00:00'),(8,'22222-2','22222-2','$2y$10$l1QvygDcR.sf3sMmjQYReurRP7Q.kzo.qPT37VoinqKXu3yQOMOsW',NULL,'empresa','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_producto`
--

DROP TABLE IF EXISTS `cliente_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_mes` int(11) DEFAULT NULL,
  `monto` bigint(20) DEFAULT NULL,
  `numero_telefonico` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_producto` (`id_producto`),
  KEY `id_mes` (`id_mes`),
  CONSTRAINT `cliente_producto_fk1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `cliente_producto_fk2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`),
  CONSTRAINT `cliente_producto_fk3` FOREIGN KEY (`id_mes`) REFERENCES `mes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=latin1 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_producto`
--

LOCK TABLES `cliente_producto` WRITE;
/*!40000 ALTER TABLE `cliente_producto` DISABLE KEYS */;
INSERT INTO `cliente_producto` VALUES (265,1,2,7,10000,'12345678'),(266,1,1,7,10000,'12345679'),(267,2,2,7,20000,'12345680'),(268,2,1,7,30000,'12345681'),(269,3,2,7,40000,'12345682'),(270,3,1,7,50000,'12345683'),(271,3,2,7,60000,'12345684'),(272,3,1,7,70000,'12345685'),(273,4,2,7,10000,'12345686'),(274,4,1,7,20000,'12345687'),(275,4,2,7,30000,'12345688'),(276,4,1,7,40000,'12345689'),(277,4,2,7,50000,'12345690'),(278,5,1,7,60000,'12345691'),(279,5,2,7,70000,'12345692'),(280,5,1,7,10000,'12345693'),(281,5,2,7,20000,'12345694'),(282,6,1,7,30000,'12345695'),(283,6,2,7,40000,'12345696'),(284,6,1,7,50000,'12345697'),(285,6,2,7,60000,'12345698'),(286,6,1,7,70000,'12345699'),(287,1,2,6,9000,'12345678'),(288,1,1,6,9000,'12345679'),(289,2,2,6,19000,'12345680'),(290,2,1,6,29000,'12345681'),(291,3,2,6,39000,'12345682'),(292,3,1,6,49000,'12345683'),(293,3,2,6,59000,'12345684'),(294,3,1,6,69000,'12345685'),(295,4,2,6,9000,'12345686'),(296,4,1,6,19000,'12345687'),(297,4,2,6,29000,'12345688'),(298,4,1,6,39000,'12345689'),(299,4,2,6,49000,'12345690'),(300,5,1,6,59000,'12345691'),(301,5,2,6,69000,'12345692'),(302,5,1,6,9000,'12345693'),(303,5,2,6,19000,'12345694'),(304,6,1,6,29000,'12345695'),(305,6,2,6,39000,'12345696'),(306,6,1,6,49000,'12345697'),(307,6,2,6,59000,'12345698'),(308,6,1,6,69000,'12345699'),(309,1,2,5,8000,'12345678'),(310,1,1,5,8000,'12345679'),(311,2,2,5,18000,'12345680'),(312,2,1,5,28000,'12345681'),(313,3,2,5,38000,'12345682'),(314,3,1,5,48000,'12345683'),(315,3,2,5,58000,'12345684'),(316,3,1,5,68000,'12345685'),(317,4,2,5,8000,'12345686'),(318,4,1,5,18000,'12345687'),(319,4,2,5,28000,'12345688'),(320,4,1,5,38000,'12345689'),(321,4,2,5,48000,'12345690'),(322,5,1,5,58000,'12345691'),(323,5,2,5,68000,'12345692'),(324,5,1,5,8000,'12345693'),(325,5,2,5,18000,'12345694'),(326,6,1,5,28000,'12345695'),(327,6,2,5,38000,'12345696'),(328,6,1,5,48000,'12345697'),(329,6,2,5,58000,'12345698'),(330,6,1,5,68000,'12345699'),(331,1,2,4,7000,'12345678'),(332,1,1,4,7000,'12345679'),(333,2,2,4,17000,'12345680'),(334,2,1,4,27000,'12345681'),(335,3,2,4,37000,'12345682'),(336,3,1,4,47000,'12345683'),(337,3,2,4,57000,'12345684'),(338,3,1,4,67000,'12345685'),(339,4,2,4,7000,'12345686'),(340,4,1,4,17000,'12345687'),(341,4,2,4,27000,'12345688'),(342,4,1,4,37000,'12345689'),(343,4,2,4,47000,'12345690'),(344,5,1,4,57000,'12345691'),(345,5,2,4,67000,'12345692'),(346,5,1,4,7000,'12345693'),(347,5,2,4,17000,'12345694'),(348,6,1,4,27000,'12345695'),(349,6,2,4,37000,'12345696'),(350,6,1,4,47000,'12345697'),(351,6,2,4,57000,'12345698'),(352,6,1,4,67000,'12345699'),(353,1,2,3,6000,'12345678'),(354,1,1,3,6000,'12345679'),(355,2,2,3,16000,'12345680'),(356,2,1,3,26000,'12345681'),(357,3,2,3,36000,'12345682'),(358,3,1,3,46000,'12345683'),(359,3,2,3,56000,'12345684'),(360,3,1,3,66000,'12345685'),(361,4,2,3,6000,'12345686'),(362,4,1,3,16000,'12345687'),(363,4,2,3,26000,'12345688'),(364,4,1,3,36000,'12345689'),(365,4,2,3,46000,'12345690'),(366,5,1,3,56000,'12345691'),(367,5,2,3,66000,'12345692'),(368,5,1,3,6000,'12345693'),(369,5,2,3,16000,'12345694'),(370,6,1,3,26000,'12345695'),(371,6,2,3,36000,'12345696'),(372,6,1,3,46000,'12345697'),(373,6,2,3,56000,'12345698'),(374,6,1,3,66000,'12345699'),(375,1,2,2,5000,'12345678'),(376,1,1,2,5000,'12345679'),(377,2,2,2,15000,'12345680'),(378,2,1,2,25000,'12345681'),(379,3,2,2,35000,'12345682'),(380,3,1,2,45000,'12345683'),(381,3,2,2,55000,'12345684'),(382,3,1,2,65000,'12345685'),(383,4,2,2,5000,'12345686'),(384,4,1,2,15000,'12345687'),(385,4,2,2,25000,'12345688'),(386,4,1,2,35000,'12345689'),(387,4,2,2,45000,'12345690'),(388,5,1,2,55000,'12345691'),(389,5,2,2,65000,'12345692'),(390,5,1,2,5000,'12345693'),(391,5,2,2,15000,'12345694'),(392,6,1,2,25000,'12345695'),(393,6,2,2,35000,'12345696'),(394,6,1,2,45000,'12345697'),(395,6,2,2,55000,'12345698'),(396,6,1,2,65000,'12345699');
/*!40000 ALTER TABLE `cliente_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes`
--

DROP TABLE IF EXISTS `mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mes` varchar(30) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes`
--

LOCK TABLES `mes` WRITE;
/*!40000 ALTER TABLE `mes` DISABLE KEYS */;
INSERT INTO `mes` VALUES (1,'ENERO',2014),(2,'FEBRERO',2014),(3,'MARZO',2014),(4,'ABRIL',2014),(5,'MAYO',2014),(6,'JUNIO',2014),(7,'JULIO',2014),(8,'AGOSTO',2014),(9,'SEPTIEMBRE',2014),(10,'OCTUBRE',2014),(11,'NOVIEMBRE',2014),(12,'DICIEMBRE',2014);
/*!40000 ALTER TABLE `mes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_07_29_011005_create_users_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'BAM'),(2,'MOVIL');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Servicios contratados'),(2,'Servicios consumidos'),(3,'Servicios pcs no includos dentro del plan'),(4,'Servicios de terceros'),(5,'Cobros y descuentos');
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono`
--

DROP TABLE IF EXISTS `telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefono` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(20) DEFAULT NULL,
  `informacion_al` date DEFAULT NULL,
  `inicio_fac` date DEFAULT NULL,
  `fin_fac` date DEFAULT NULL,
  `id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono`
--

LOCK TABLES `telefono` WRITE;
/*!40000 ALTER TABLE `telefono` DISABLE KEYS */;
INSERT INTO `telefono` VALUES (1,'123456799','2014-06-02','2014-05-01','2014-05-31',7),(2,'123456800','2014-06-03','2014-05-02','2014-06-01',7),(3,'123456801','2014-06-04','2014-05-03','2014-06-02',7),(4,'123456802','2014-06-05','2014-05-04','2014-06-03',7),(5,'123456803','2014-06-06','2014-05-05','2014-06-04',7),(6,'123456804','2014-06-07','2014-05-06','2014-06-05',7),(7,'123456805','2014-06-08','2014-05-07','2014-06-06',7),(8,'123456806','2014-06-09','2014-05-08','2014-06-07',7),(9,'123456807','2014-06-10','2014-05-09','2014-06-08',7),(10,'123456808','2014-06-11','2014-05-10','2014-06-09',8),(11,'123456809','2014-06-12','2014-05-11','2014-06-10',8),(12,'123456810','2014-06-13','2014-05-12','2014-06-11',8),(13,'123456811','2014-06-14','2014-05-13','2014-06-12',8),(14,'123456812','2014-06-15','2014-05-14','2014-06-13',8),(15,'123456813','2014-06-16','2014-05-15','2014-06-14',8),(16,'123456814','2014-06-17','2014-05-16','2014-06-15',8),(17,'123456815','2014-06-18','2014-05-17','2014-06-16',8),(18,'123456816','2014-06-19','2014-05-18','2014-06-17',8),(19,'123456817','2014-06-20','2014-05-19','2014-06-18',8);
/*!40000 ALTER TABLE `telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos_servicios`
--

DROP TABLE IF EXISTS `telefonos_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefonos_servicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_telefono` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `precio_servicio` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_telefono` (`id_telefono`),
  KEY `id_servicio` (`id_servicio`),
  CONSTRAINT `telefonos_servicios_fk1` FOREIGN KEY (`id_telefono`) REFERENCES `telefono` (`id`),
  CONSTRAINT `telefonos_servicios_fk2` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=latin1 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos_servicios`
--

LOCK TABLES `telefonos_servicios` WRITE;
/*!40000 ALTER TABLE `telefonos_servicios` DISABLE KEYS */;
INSERT INTO `telefonos_servicios` VALUES (97,2,1,20000,'2014-05-02'),(98,3,1,30000,'2014-05-03'),(99,4,1,40000,'2014-05-04'),(100,5,1,50000,'2014-05-05'),(101,6,1,60000,'2014-05-06'),(102,7,1,70000,'2014-05-07'),(103,8,1,80000,'2014-05-08'),(104,9,1,90000,'2014-05-09'),(105,10,1,100000,'2014-05-10'),(106,11,1,110000,'2014-05-11'),(107,12,1,120000,'2014-05-12'),(108,13,1,130000,'2014-05-13'),(109,14,1,140000,'2014-05-14'),(110,15,1,150000,'2014-05-15'),(111,16,1,160000,'2014-05-16'),(112,17,1,170000,'2014-05-17'),(113,18,1,180000,'2014-05-18'),(114,19,1,190000,'2014-05-19'),(116,2,2,25000,'2014-05-02'),(117,3,2,35000,'2014-05-03'),(118,4,2,45000,'2014-05-04'),(119,5,2,55000,'2014-05-05'),(120,6,2,65000,'2014-05-06'),(121,7,2,75000,'2014-05-07'),(122,8,2,85000,'2014-05-08'),(123,9,2,95000,'2014-05-09'),(124,10,2,105000,'2014-05-10'),(125,11,2,115000,'2014-05-11'),(126,12,2,125000,'2014-05-12'),(127,13,2,135000,'2014-05-13'),(128,14,2,145000,'2014-05-14'),(129,15,2,155000,'2014-05-15'),(130,16,2,165000,'2014-05-16'),(131,17,2,175000,'2014-05-17'),(132,18,2,185000,'2014-05-18'),(133,19,2,195000,'2014-05-19'),(135,2,3,30000,'2014-05-02'),(136,3,3,40000,'2014-05-03'),(137,4,3,50000,'2014-05-04'),(138,5,3,60000,'2014-05-05'),(139,6,3,70000,'2014-05-06'),(140,7,3,80000,'2014-05-07'),(141,8,3,90000,'2014-05-08'),(142,9,3,100000,'2014-05-09'),(143,10,3,110000,'2014-05-10'),(144,11,3,120000,'2014-05-11'),(145,12,3,130000,'2014-05-12'),(146,13,3,140000,'2014-05-13'),(147,14,3,150000,'2014-05-14'),(148,15,3,160000,'2014-05-15'),(149,16,3,170000,'2014-05-16'),(150,17,3,180000,'2014-05-17'),(151,18,3,190000,'2014-05-18'),(152,19,3,200000,'2014-05-19'),(154,2,4,35000,'2014-05-02'),(155,3,4,45000,'2014-05-03'),(156,4,4,55000,'2014-05-04'),(157,5,4,65000,'2014-05-05'),(158,6,4,75000,'2014-05-06'),(159,7,4,85000,'2014-05-07'),(160,8,4,95000,'2014-05-08'),(161,9,4,105000,'2014-05-09'),(162,10,4,115000,'2014-05-10'),(163,11,4,125000,'2014-05-11'),(164,12,4,135000,'2014-05-12'),(165,13,4,145000,'2014-05-13'),(166,14,4,155000,'2014-05-14'),(167,15,4,165000,'2014-05-15'),(168,16,4,175000,'2014-05-16'),(169,17,4,185000,'2014-05-17'),(170,18,4,195000,'2014-05-18'),(171,19,4,205000,'2014-05-19'),(173,2,5,-6000,'2014-05-02'),(174,3,5,-7000,'2014-05-03'),(175,4,5,-8000,'2014-05-04'),(176,5,5,-9000,'2014-05-05'),(177,6,5,-10000,'2014-05-06'),(178,7,5,-11000,'2014-05-07'),(179,8,5,-12000,'2014-05-08'),(180,9,5,-13000,'2014-05-09'),(181,10,5,-14000,'2014-05-10'),(182,11,5,-15000,'2014-05-11'),(183,12,5,-16000,'2014-05-12'),(184,13,5,-17000,'2014-05-13'),(185,14,5,-18000,'2014-05-14'),(186,15,5,-19000,'2014-05-15'),(187,16,5,-20000,'2014-05-16'),(188,17,5,-21000,'2014-05-17'),(189,18,5,-22000,'2014-05-18'),(190,19,5,-23000,'2014-05-19'),(234,1,1,20000,'2014-05-01'),(235,1,2,15000,'2014-05-01'),(236,1,3,20000,'2014-05-01'),(237,1,4,25000,'2014-05-01'),(240,1,5,-5000,'2014-05-01'),(264,2,1,25000,'2014-06-02'),(265,3,1,35000,'2014-06-03'),(266,4,1,45000,'2014-06-04'),(267,5,1,55000,'2014-06-05'),(268,6,1,65000,'2014-06-06'),(269,7,1,75000,'2014-06-07'),(270,8,1,85000,'2014-06-08'),(271,9,1,95000,'2014-06-09'),(272,10,1,105000,'2014-06-10'),(273,11,1,115000,'2014-06-11'),(274,12,1,125000,'2014-06-12'),(275,13,1,135000,'2014-06-13'),(276,14,1,145000,'2014-06-14'),(277,15,1,155000,'2014-06-15'),(278,16,1,165000,'2014-06-16'),(279,17,1,175000,'2014-06-17'),(280,18,1,185000,'2014-06-18'),(281,19,1,195000,'2014-06-19'),(282,2,2,30000,'2014-06-02'),(283,3,2,40000,'2014-06-03'),(284,4,2,50000,'2014-06-04'),(285,5,2,60000,'2014-06-05'),(286,6,2,70000,'2014-06-06'),(287,7,2,80000,'2014-06-07'),(288,8,2,90000,'2014-06-08'),(289,9,2,100000,'2014-06-09'),(290,10,2,110000,'2014-06-10'),(291,11,2,120000,'2014-06-11'),(292,12,2,130000,'2014-06-12'),(293,13,2,140000,'2014-06-13'),(294,14,2,150000,'2014-06-14'),(295,15,2,160000,'2014-06-15'),(296,16,2,170000,'2014-06-16'),(297,17,2,180000,'2014-06-17'),(298,18,2,190000,'2014-06-18'),(299,19,2,200000,'2014-06-19'),(300,2,3,35000,'2014-06-02'),(301,3,3,45000,'2014-06-03'),(302,4,3,55000,'2014-06-04'),(303,5,3,65000,'2014-06-05'),(304,6,3,75000,'2014-06-06'),(305,7,3,85000,'2014-06-07'),(306,8,3,95000,'2014-06-08'),(307,9,3,105000,'2014-06-09'),(308,10,3,115000,'2014-06-10'),(309,11,3,125000,'2014-06-11'),(310,12,3,135000,'2014-06-12'),(311,13,3,145000,'2014-06-13'),(312,14,3,155000,'2014-06-14'),(313,15,3,165000,'2014-06-15'),(314,16,3,175000,'2014-06-16'),(315,17,3,185000,'2014-06-17'),(316,18,3,195000,'2014-06-18'),(317,19,3,205000,'2014-06-19'),(318,2,4,40000,'2014-06-02'),(319,3,4,50000,'2014-06-03'),(320,4,4,60000,'2014-06-04'),(321,5,4,70000,'2014-06-05'),(322,6,4,80000,'2014-06-06'),(323,7,4,90000,'2014-06-07'),(324,8,4,100000,'2014-06-08'),(325,9,4,110000,'2014-06-09'),(326,10,4,120000,'2014-06-10'),(327,11,4,130000,'2014-06-11'),(328,12,4,140000,'2014-06-12'),(329,13,4,150000,'2014-06-13'),(330,14,4,160000,'2014-06-14'),(331,15,4,170000,'2014-06-15'),(332,16,4,180000,'2014-06-16'),(333,17,4,190000,'2014-06-17'),(334,18,4,200000,'2014-06-18'),(335,19,4,210000,'2014-06-19'),(336,2,5,-11000,'2014-06-02'),(337,3,5,-12000,'2014-06-03'),(338,4,5,-13000,'2014-06-04'),(339,5,5,-14000,'2014-06-05'),(340,6,5,-15000,'2014-06-06'),(341,7,5,-16000,'2014-06-07'),(342,8,5,-17000,'2014-06-08'),(343,9,5,-18000,'2014-06-09'),(344,10,5,-19000,'2014-06-10'),(345,11,5,-20000,'2014-06-11'),(346,12,5,-21000,'2014-06-12'),(347,13,5,-22000,'2014-06-13'),(348,14,5,-23000,'2014-06-14'),(349,15,5,-24000,'2014-06-15'),(350,16,5,-25000,'2014-06-16'),(351,17,5,-26000,'2014-06-17'),(352,18,5,-27000,'2014-06-18'),(353,19,5,-28000,'2014-06-19'),(354,1,1,25000,'2014-06-01'),(355,1,2,20000,'2014-06-01'),(356,1,3,25000,'2014-06-01'),(357,1,4,30000,'2014-06-01'),(358,1,5,-10000,'2014-06-01'),(359,2,1,27000,'2014-07-02'),(360,3,1,37000,'2014-07-03'),(361,4,1,47000,'2014-07-04'),(362,5,1,57000,'2014-07-05'),(363,6,1,67000,'2014-07-06'),(364,7,1,77000,'2014-07-07'),(365,8,1,87000,'2014-07-08'),(366,9,1,97000,'2014-07-09'),(367,10,1,107000,'2014-07-10'),(368,11,1,117000,'2014-07-11'),(369,12,1,127000,'2014-07-12'),(370,13,1,137000,'2014-07-13'),(371,14,1,147000,'2014-07-14'),(372,15,1,157000,'2014-07-15'),(373,16,1,167000,'2014-07-16'),(374,17,1,177000,'2014-07-17'),(375,18,1,187000,'2014-07-18'),(376,19,1,197000,'2014-07-19'),(377,2,2,32000,'2014-07-02'),(378,3,2,42000,'2014-07-03'),(379,4,2,52000,'2014-07-04'),(380,5,2,62000,'2014-07-05'),(381,6,2,72000,'2014-07-06'),(382,7,2,82000,'2014-07-07'),(383,8,2,92000,'2014-07-08'),(384,9,2,102000,'2014-07-09'),(385,10,2,112000,'2014-07-10'),(386,11,2,122000,'2014-07-11'),(387,12,2,132000,'2014-07-12'),(388,13,2,142000,'2014-07-13'),(389,14,2,152000,'2014-07-14'),(390,15,2,162000,'2014-07-15'),(391,16,2,172000,'2014-07-16'),(392,17,2,182000,'2014-07-17'),(393,18,2,192000,'2014-07-18'),(394,19,2,202000,'2014-07-19'),(395,2,3,37000,'2014-07-02'),(396,3,3,47000,'2014-07-03'),(397,4,3,57000,'2014-07-04'),(398,5,3,67000,'2014-07-05'),(399,6,3,77000,'2014-07-06'),(400,7,3,87000,'2014-07-07'),(401,8,3,97000,'2014-07-08'),(402,9,3,107000,'2014-07-09'),(403,10,3,117000,'2014-07-10'),(404,11,3,127000,'2014-07-11'),(405,12,3,137000,'2014-07-12'),(406,13,3,147000,'2014-07-13'),(407,14,3,157000,'2014-07-14'),(408,15,3,167000,'2014-07-15'),(409,16,3,177000,'2014-07-16'),(410,17,3,187000,'2014-07-17'),(411,18,3,197000,'2014-07-18'),(412,19,3,207000,'2014-07-19'),(413,2,4,42000,'2014-07-02'),(414,3,4,52000,'2014-07-03'),(415,4,4,62000,'2014-07-04'),(416,5,4,72000,'2014-07-05'),(417,6,4,82000,'2014-07-06'),(418,7,4,92000,'2014-07-07'),(419,8,4,102000,'2014-07-08'),(420,9,4,112000,'2014-07-09'),(421,10,4,122000,'2014-07-10'),(422,11,4,132000,'2014-07-11'),(423,12,4,142000,'2014-07-12'),(424,13,4,152000,'2014-07-13'),(425,14,4,162000,'2014-07-14'),(426,15,4,172000,'2014-07-15'),(427,16,4,182000,'2014-07-16'),(428,17,4,192000,'2014-07-17'),(429,18,4,202000,'2014-07-18'),(430,19,4,212000,'2014-07-19'),(431,2,5,-13000,'2014-07-02'),(432,3,5,-14000,'2014-07-03'),(433,4,5,-15000,'2014-07-04'),(434,5,5,-16000,'2014-07-05'),(435,6,5,-17000,'2014-07-06'),(436,7,5,-18000,'2014-07-07'),(437,8,5,-19000,'2014-07-08'),(438,9,5,-20000,'2014-07-09'),(439,10,5,-21000,'2014-07-10'),(440,11,5,-22000,'2014-07-11'),(441,12,5,-23000,'2014-07-12'),(442,13,5,-24000,'2014-07-13'),(443,14,5,-25000,'2014-07-14'),(444,15,5,-26000,'2014-07-15'),(445,16,5,-27000,'2014-07-16'),(446,17,5,-28000,'2014-07-17'),(447,18,5,-29000,'2014-07-18'),(448,19,5,-30000,'2014-07-19'),(449,1,1,27000,'2014-07-01'),(450,1,2,22000,'2014-07-01'),(451,1,3,27000,'2014-07-01'),(452,1,4,32000,'2014-07-01'),(453,1,5,-12000,'2014-07-01'),(454,2,1,39000,'2014-08-02'),(455,3,1,49000,'2014-08-03'),(456,4,1,59000,'2014-08-04'),(457,5,1,69000,'2014-08-05'),(458,6,1,79000,'2014-08-06'),(459,7,1,89000,'2014-08-07'),(460,8,1,99000,'2014-08-08'),(461,9,1,109000,'2014-08-09'),(462,10,1,119000,'2014-08-10'),(463,11,1,129000,'2014-08-11'),(464,12,1,139000,'2014-08-12'),(465,13,1,149000,'2014-08-13'),(466,14,1,159000,'2014-08-14'),(467,15,1,169000,'2014-08-15'),(468,16,1,179000,'2014-08-16'),(469,17,1,189000,'2014-08-17'),(470,18,1,199000,'2014-08-18'),(471,19,1,209000,'2014-08-19'),(472,2,2,44000,'2014-08-02'),(473,3,2,54000,'2014-08-03'),(474,4,2,64000,'2014-08-04'),(475,5,2,74000,'2014-08-05'),(476,6,2,84000,'2014-08-06'),(477,7,2,94000,'2014-08-07'),(478,8,2,104000,'2014-08-08'),(479,9,2,114000,'2014-08-09'),(480,10,2,124000,'2014-08-10'),(481,11,2,134000,'2014-08-11'),(482,12,2,144000,'2014-08-12'),(483,13,2,154000,'2014-08-13'),(484,14,2,164000,'2014-08-14'),(485,15,2,174000,'2014-08-15'),(486,16,2,184000,'2014-08-16'),(487,17,2,194000,'2014-08-17'),(488,18,2,204000,'2014-08-18'),(489,19,2,214000,'2014-08-19'),(490,2,3,49000,'2014-08-02'),(491,3,3,59000,'2014-08-03'),(492,4,3,69000,'2014-08-04'),(493,5,3,79000,'2014-08-05'),(494,6,3,89000,'2014-08-06'),(495,7,3,99000,'2014-08-07'),(496,8,3,109000,'2014-08-08'),(497,9,3,119000,'2014-08-09'),(498,10,3,129000,'2014-08-10'),(499,11,3,139000,'2014-08-11'),(500,12,3,149000,'2014-08-12'),(501,13,3,159000,'2014-08-13'),(502,14,3,169000,'2014-08-14'),(503,15,3,179000,'2014-08-15'),(504,16,3,189000,'2014-08-16'),(505,17,3,199000,'2014-08-17'),(506,18,3,209000,'2014-08-18'),(507,19,3,219000,'2014-08-19'),(508,2,4,54000,'2014-08-02'),(509,3,4,64000,'2014-08-03'),(510,4,4,74000,'2014-08-04'),(511,5,4,84000,'2014-08-05'),(512,6,4,94000,'2014-08-06'),(513,7,4,104000,'2014-08-07'),(514,8,4,114000,'2014-08-08'),(515,9,4,124000,'2014-08-09'),(516,10,4,134000,'2014-08-10'),(517,11,4,144000,'2014-08-11'),(518,12,4,154000,'2014-08-12'),(519,13,4,164000,'2014-08-13'),(520,14,4,174000,'2014-08-14'),(521,15,4,184000,'2014-08-15'),(522,16,4,194000,'2014-08-16'),(523,17,4,204000,'2014-08-17'),(524,18,4,214000,'2014-08-18'),(525,19,4,224000,'2014-08-19'),(526,2,5,-25000,'2014-08-02'),(527,3,5,-26000,'2014-08-03'),(528,4,5,-27000,'2014-08-04'),(529,5,5,-28000,'2014-08-05'),(530,6,5,-29000,'2014-08-06'),(531,7,5,-30000,'2014-08-07'),(532,8,5,-31000,'2014-08-08'),(533,9,5,-32000,'2014-08-09'),(534,10,5,-33000,'2014-08-10'),(535,11,5,-34000,'2014-08-11'),(536,12,5,-35000,'2014-08-12'),(537,13,5,-36000,'2014-08-13'),(538,14,5,-37000,'2014-08-14'),(539,15,5,-38000,'2014-08-15'),(540,16,5,-39000,'2014-08-16'),(541,17,5,-40000,'2014-08-17'),(542,18,5,-41000,'2014-08-18'),(543,19,5,-42000,'2014-08-19'),(544,1,1,39000,'2014-08-01'),(545,1,2,34000,'2014-08-01'),(546,1,3,39000,'2014-08-01'),(547,1,4,44000,'2014-08-01'),(548,1,5,24000,'2014-08-01');
/*!40000 ALTER TABLE `telefonos_servicios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`test`@`%`*/ /*!50003 TRIGGER generaTotal AFTER INSERT ON telefonos_servicios
FOR EACH ROW 
BEGIN
 DECLARE sumaTotal INT DEFAULT 0;
 DECLARE monto INT;
 DECLARE done INT DEFAULT 0;
 DECLARE cur CURSOR FOR SELECT monto_total FROM total WHERE total.id_telefono = NEW.id_telefono AND month(total.fecha) = month(NEW.fecha) AND year(total.fecha) = year(NEW.fecha);
 DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
 OPEN cur;
 /*REPEAT*/
 FETCH cur INTO monto;
/* IF NEW.precio_servicio >= 0 THEN*/
 SET sumaTotal = NEW.precio_servicio+monto;
/* ELSE
 SET sumaTotal = NEW.precio_servicio - monto;
 END IF;*/
 /*UNTIL done END REPEAT;*/
 CLOSE cur;
 IF sumaTotal IS NULL THEN
 /*INSERT INTO temp (monto, fecha) VALUES (1, CURDATE());*/
 INSERT INTO total (id_telefono, fecha, monto_total) VALUE (NEW.id_telefono, NEW.fecha, NEW.precio_servicio); 
 ELSE
/* INSERT INTO temp (monto, fecha) VALUES (2, CURDATE());*/
 UPDATE total SET monto_total = sumaTotal WHERE id_telefono = NEW.id_telefono AND fecha = NEW.fecha; 
 END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monto` int(11) DEFAULT '0',
  `fecha` date DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` VALUES (5,1,'2014-08-07');
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total`
--

DROP TABLE IF EXISTS `total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `total` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_telefono` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `monto_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `total_fk1` (`id_telefono`),
  CONSTRAINT `total_fk1` FOREIGN KEY (`id_telefono`) REFERENCES `telefono` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=991 DEFAULT CHARSET=latin1 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total`
--

LOCK TABLES `total` WRITE;
/*!40000 ALTER TABLE `total` DISABLE KEYS */;
INSERT INTO `total` VALUES (684,1,'2014-04-01',100000),(685,1,'2014-03-01',105000),(686,1,'2014-02-01',110000),(687,1,'2014-01-01',115000),(688,1,'2013-12-01',120000),(689,1,'2013-11-01',125000),(690,1,'2013-10-01',130000),(691,1,'2013-09-01',135000),(692,1,'2013-08-01',140000),(693,1,'2013-07-01',145000),(694,1,'2013-06-01',150000),(695,1,'2013-05-01',155000),(696,2,'2014-04-02',110000),(697,2,'2014-03-02',115000),(698,2,'2014-02-02',120000),(699,2,'2014-01-02',125000),(700,2,'2013-12-02',130000),(701,2,'2013-11-02',135000),(702,2,'2013-10-02',140000),(703,2,'2013-09-02',145000),(704,2,'2013-08-02',150000),(705,2,'2013-07-02',155000),(706,2,'2013-06-02',160000),(707,2,'2013-05-02',165000),(708,3,'2014-04-03',120000),(709,3,'2014-03-03',125000),(710,3,'2014-02-03',130000),(711,3,'2014-01-03',135000),(712,3,'2013-12-03',140000),(713,3,'2013-11-03',145000),(714,3,'2013-10-03',150000),(715,3,'2013-09-03',155000),(716,3,'2013-08-03',160000),(717,3,'2013-07-03',165000),(718,3,'2013-06-03',170000),(719,3,'2013-05-03',175000),(720,4,'2014-04-04',130000),(721,4,'2014-03-04',135000),(722,4,'2014-02-04',140000),(723,4,'2014-01-04',145000),(724,4,'2013-12-04',150000),(725,4,'2013-11-04',155000),(726,4,'2013-10-04',160000),(727,4,'2013-09-04',165000),(728,4,'2013-08-04',170000),(729,4,'2013-07-04',175000),(730,4,'2013-06-04',180000),(731,4,'2013-05-04',185000),(732,5,'2014-04-05',140000),(733,5,'2014-03-05',145000),(734,5,'2014-02-05',150000),(735,5,'2014-01-05',155000),(736,5,'2013-12-05',160000),(737,5,'2013-11-05',165000),(738,5,'2013-10-05',170000),(739,5,'2013-09-05',175000),(740,5,'2013-08-05',180000),(741,5,'2013-07-05',185000),(742,5,'2013-06-05',190000),(743,5,'2013-05-05',195000),(744,6,'2014-04-06',150000),(745,6,'2014-03-06',155000),(746,6,'2014-02-06',160000),(747,6,'2014-01-06',165000),(748,6,'2013-12-06',170000),(749,6,'2013-11-06',175000),(750,6,'2013-10-06',180000),(751,6,'2013-09-06',185000),(752,6,'2013-08-06',190000),(753,6,'2013-07-06',195000),(754,6,'2013-06-06',200000),(755,6,'2013-05-06',205000),(756,7,'2014-04-07',160000),(757,7,'2014-03-07',165000),(758,7,'2014-02-07',170000),(759,7,'2014-01-07',175000),(760,7,'2013-12-07',180000),(761,7,'2013-11-07',185000),(762,7,'2013-10-07',190000),(763,7,'2013-09-07',195000),(764,7,'2013-08-07',200000),(765,7,'2013-07-07',205000),(766,7,'2013-06-07',210000),(767,7,'2013-05-07',215000),(768,8,'2014-04-08',170000),(769,8,'2014-03-08',175000),(770,8,'2014-02-08',180000),(771,8,'2014-01-08',185000),(772,8,'2013-12-08',190000),(773,8,'2013-11-08',195000),(774,8,'2013-10-08',200000),(775,8,'2013-09-08',205000),(776,8,'2013-08-08',210000),(777,8,'2013-07-08',215000),(778,8,'2013-06-08',220000),(779,8,'2013-05-08',225000),(780,9,'2014-04-09',180000),(781,9,'2014-03-09',185000),(782,9,'2014-02-09',190000),(783,9,'2014-01-09',195000),(784,9,'2013-12-09',200000),(785,9,'2013-11-09',205000),(786,9,'2013-10-09',210000),(787,9,'2013-09-09',215000),(788,9,'2013-08-09',220000),(789,9,'2013-07-09',225000),(790,9,'2013-06-09',230000),(791,9,'2013-05-09',235000),(792,10,'2014-04-10',190000),(793,10,'2014-03-10',195000),(794,10,'2014-02-10',200000),(795,10,'2014-01-10',205000),(796,10,'2013-12-10',210000),(797,10,'2013-11-10',215000),(798,10,'2013-10-10',220000),(799,10,'2013-09-10',225000),(800,10,'2013-08-10',230000),(801,10,'2013-07-10',235000),(802,10,'2013-06-10',240000),(803,10,'2013-05-10',245000),(804,11,'2014-04-11',200000),(805,11,'2014-03-11',205000),(806,11,'2014-02-11',210000),(807,11,'2014-01-11',215000),(808,11,'2013-12-11',220000),(809,11,'2013-11-11',225000),(810,11,'2013-10-11',230000),(811,11,'2013-09-11',235000),(812,11,'2013-08-11',240000),(813,11,'2013-07-11',245000),(814,11,'2013-06-11',250000),(815,11,'2013-05-11',255000),(816,12,'2014-04-12',210000),(817,12,'2014-03-12',215000),(818,12,'2014-02-12',220000),(819,12,'2014-01-12',225000),(820,12,'2013-12-12',230000),(821,12,'2013-11-12',235000),(822,12,'2013-10-12',240000),(823,12,'2013-09-12',245000),(824,12,'2013-08-12',250000),(825,12,'2013-07-12',255000),(826,12,'2013-06-12',260000),(827,12,'2013-05-12',265000),(828,13,'2014-04-13',220000),(829,13,'2014-03-13',225000),(830,13,'2014-02-13',230000),(831,13,'2014-01-13',235000),(832,13,'2013-12-13',240000),(833,13,'2013-11-13',245000),(834,13,'2013-10-13',250000),(835,13,'2013-09-13',255000),(836,13,'2013-08-13',260000),(837,13,'2013-07-13',265000),(838,13,'2013-06-13',270000),(839,13,'2013-05-13',275000),(840,14,'2014-04-14',230000),(841,14,'2014-03-14',235000),(842,14,'2014-02-14',240000),(843,14,'2014-01-14',245000),(844,14,'2013-12-14',250000),(845,14,'2013-11-14',255000),(846,14,'2013-10-14',260000),(847,14,'2013-09-14',265000),(848,14,'2013-08-14',270000),(849,14,'2013-07-14',275000),(850,14,'2013-06-14',280000),(851,14,'2013-05-14',285000),(852,15,'2014-04-15',240000),(853,15,'2014-03-15',245000),(854,15,'2014-02-15',250000),(855,15,'2014-01-15',255000),(856,15,'2013-12-15',260000),(857,15,'2013-11-15',265000),(858,15,'2013-10-15',270000),(859,15,'2013-09-15',275000),(860,15,'2013-08-15',280000),(861,15,'2013-07-15',285000),(862,15,'2013-06-15',290000),(863,15,'2013-05-15',295000),(864,16,'2014-04-16',250000),(865,16,'2014-03-16',255000),(866,16,'2014-02-16',260000),(867,16,'2014-01-16',265000),(868,16,'2013-12-16',270000),(869,16,'2013-11-16',275000),(870,16,'2013-10-16',280000),(871,16,'2013-09-16',285000),(872,16,'2013-08-16',290000),(873,16,'2013-07-16',295000),(874,16,'2013-06-16',300000),(875,16,'2013-05-16',305000),(876,17,'2014-04-17',260000),(877,17,'2014-03-17',265000),(878,17,'2014-02-17',270000),(879,17,'2014-01-17',275000),(880,17,'2013-12-17',280000),(881,17,'2013-11-17',285000),(882,17,'2013-10-17',290000),(883,17,'2013-09-17',295000),(884,17,'2013-08-17',300000),(885,17,'2013-07-17',305000),(886,17,'2013-06-17',310000),(887,17,'2013-05-17',315000),(888,18,'2014-04-18',270000),(889,18,'2014-03-18',275000),(890,18,'2014-02-18',280000),(891,18,'2014-01-18',285000),(892,18,'2013-12-18',290000),(893,18,'2013-11-18',295000),(894,18,'2013-10-18',300000),(895,18,'2013-09-18',305000),(896,18,'2013-08-18',310000),(897,18,'2013-07-18',315000),(898,18,'2013-06-18',320000),(899,18,'2013-05-18',325000),(900,19,'2014-04-19',280000),(901,19,'2014-03-19',285000),(902,19,'2014-02-19',290000),(903,19,'2014-01-19',295000),(904,19,'2013-12-19',300000),(905,19,'2013-11-19',305000),(906,19,'2013-10-19',310000),(907,19,'2013-09-19',315000),(908,19,'2013-08-19',320000),(909,19,'2013-07-19',325000),(910,19,'2013-06-19',330000),(911,19,'2013-05-19',335000),(913,2,'2014-05-01',104000),(914,3,'2014-05-01',143000),(915,4,'2014-05-01',182000),(916,5,'2014-05-01',221000),(917,6,'2014-05-01',260000),(918,7,'2014-05-01',299000),(919,8,'2014-05-01',338000),(920,9,'2014-05-01',377000),(930,1,'2014-05-01',75000),(934,2,'2014-06-02',119000),(935,3,'2014-06-03',158000),(936,4,'2014-06-04',197000),(937,5,'2014-06-05',236000),(938,6,'2014-06-06',275000),(939,7,'2014-06-07',314000),(940,8,'2014-06-08',353000),(941,9,'2014-06-09',392000),(942,10,'2014-06-10',431000),(943,11,'2014-06-11',470000),(944,12,'2014-06-12',509000),(945,13,'2014-06-13',548000),(946,14,'2014-06-14',587000),(947,15,'2014-06-15',626000),(948,16,'2014-06-16',665000),(949,17,'2014-06-17',704000),(950,18,'2014-06-18',743000),(951,19,'2014-06-19',782000),(952,1,'2014-06-01',90000),(953,2,'2014-07-02',125000),(954,3,'2014-07-03',164000),(955,4,'2014-07-04',203000),(956,5,'2014-07-05',242000),(957,6,'2014-07-06',281000),(958,7,'2014-07-07',320000),(959,8,'2014-07-08',359000),(960,9,'2014-07-09',398000),(961,10,'2014-07-10',437000),(962,11,'2014-07-11',476000),(963,12,'2014-07-12',515000),(964,13,'2014-07-13',554000),(965,14,'2014-07-14',593000),(966,15,'2014-07-15',632000),(967,16,'2014-07-16',671000),(968,17,'2014-07-17',710000),(969,18,'2014-07-18',749000),(970,19,'2014-07-19',788000),(971,1,'2014-07-01',96000),(972,2,'2014-08-02',161000),(973,3,'2014-08-03',200000),(974,4,'2014-08-04',239000),(975,5,'2014-08-05',278000),(976,6,'2014-08-06',317000),(977,7,'2014-08-07',356000),(978,8,'2014-08-08',395000),(979,9,'2014-08-09',434000),(980,10,'2014-08-10',473000),(981,11,'2014-08-11',512000),(982,12,'2014-08-12',551000),(983,13,'2014-08-13',590000),(984,14,'2014-08-14',629000),(985,15,'2014-08-15',668000),(986,16,'2014-08-16',707000),(987,17,'2014-08-17',746000),(988,18,'2014-08-18',785000),(989,19,'2014-08-19',824000),(990,1,'2014-08-01',132000);
/*!40000 ALTER TABLE `total` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-07 18:29:38
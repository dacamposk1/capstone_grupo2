-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: farmaciadb
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
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `nombreProducto` varchar(35) DEFAULT NULL,
  `codigoBarra` varchar(20) DEFAULT NULL,
  `principioActivo` varchar(30) DEFAULT NULL,
  `bioequivalente` tinyint(1) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `registroISP` varchar(20) DEFAULT NULL,
  `precioUnitario` int DEFAULT NULL,
  `precioEnvase` int DEFAULT NULL,
  `precioVenta` int NOT NULL,
  `stock` int NOT NULL,
  `idPresentacion` int DEFAULT NULL,
  `idCategoria` int DEFAULT NULL,
  `idMarca` int DEFAULT NULL,
  `idLaboratorio` int DEFAULT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `idPresentacion` (`idPresentacion`),
  KEY `idCategoria` (`idCategoria`),
  KEY `idMarca` (`idMarca`),
  KEY `idLaboratorio` (`idLaboratorio`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idPresentacion`) REFERENCES `presentacion` (`idPresentacion`) ON DELETE CASCADE,
  CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categoria_producto` (`idCategoria`) ON DELETE CASCADE,
  CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`idMarca`) REFERENCES `marca_comercial` (`idMarca`) ON DELETE CASCADE,
  CONSTRAINT `producto_ibfk_4` FOREIGN KEY (`idLaboratorio`) REFERENCES `laboratorio` (`idLaboratorio`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Paracetamol 500mg','7800063111483','Paracetamol',1,'Analgésico y antipirético','N° 123C-379',500,700,1000,9,1,5,4,1),(2,'Ibuprofeno 400mg','23456789012345678901','Ibuprofeno',1,'Antiinflamatorio no esteroideo','N° 1413240732/14',800,1000,1500,99,2,4,5,2),(3,'Amoxicilina 500mg','34567890123456789012','Amoxicilina',1,'Antibiótico de amplio espectro','F-7121',1500,1800,2000,28,1,4,3,3),(4,'Vitamina C 1000mg','45678901234567890123','Ácido ascórbico',0,'Suplemento para sistema inmunológico','ISP-2022',1200,1300,1500,75,2,2,2,1),(5,'Omeprazol 20mg','56789012345678901234','Omeprazol',1,'Inhibidor de la bomba de protones','RX-9034',1100,1400,1700,40,3,1,1,2),(97,'Aspirina 500mg','1234567890123','Ácido Acetilsalicílico',1,'Analgésico y antiinflamatorio','RX-1234',700,900,1200,80,1,5,2,1),(98,'Diclofenaco 50mg','2345678901234','Diclofenaco',1,'Antiinflamatorio no esteroideo','RX-5678',900,1100,1400,60,1,4,3,2),(99,'Metformina 850mg','3456789012345','Metformina',1,'Antidiabético oral','RX-9101',500,700,900,100,2,1,4,4),(100,'Loratadina 10mg','4567890123456','Loratadina',1,'Antihistamínico para alergias','RX-1122',600,800,1100,120,3,5,5,5),(101,'Amoxicilina 500mg','5678901234567','Amoxicilina',1,'Antibiótico de amplio espectro','RX-3344',1500,2000,2500,50,1,4,1,3),(102,'Azitromicina 500mg','6789012345678','Azitromicina',1,'Antibiótico macrólido','RX-5566',2000,2500,3000,40,2,4,2,4),(103,'Ibuprofeno 600mg','7890123456789','Ibuprofeno',1,'Antiinflamatorio y analgésico','RX-7788',800,1000,1500,75,1,4,5,1),(104,'Levotiroxina 100mcg','8901234567890','Levotiroxina',0,'Tratamiento para hipotiroidismo','RX-9900',1800,2200,2600,30,1,2,3,5),(105,'Clonazepam 2mg','9012345678901','Clonazepam',0,'Benzodiazepina para ansiedad','RX-2233',1200,1500,1800,45,2,5,4,2),(106,'Losartán 50mg','0123456789012','Losartán',1,'Antihipertensivo','RX-4455',900,1100,1300,90,1,5,1,4),(107,'Simvastatina 20mg','1123456789013','Simvastatina',1,'Reductor de colesterol','RX-6677',1000,1300,1600,50,2,1,2,3),(108,'Enalapril 10mg','2234567890123','Enalapril',1,'Antihipertensivo y vasodilatador','RX-8899',700,900,1200,65,2,5,5,5),(109,'Ketorolaco 10mg','3345678901234','Ketorolaco',1,'Analgésico potente','RX-3345',1500,1800,2100,40,3,4,4,2),(110,'Furosemida 40mg','4456789012345','Furosemida',1,'Diurético para edema','RX-5567',600,800,1000,55,1,3,2,1),(111,'Dexametasona 4mg','5567890123456','Dexametasona',0,'Corticoide antiinflamatorio','RX-7789',1800,2100,2500,35,2,4,3,4);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-16 11:33:53

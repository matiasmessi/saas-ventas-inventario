/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.3.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: saas_ventas_inventario
-- ------------------------------------------------------
-- Server version	12.3.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `actividad_logs`
--

DROP TABLE IF EXISTS `actividad_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividad_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `empresa_id` bigint(20) unsigned DEFAULT NULL,
  `accion` varchar(191) NOT NULL,
  `descripcion` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `actividad_logs_user_id_index` (`user_id`),
  KEY `actividad_logs_empresa_id_index` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad_logs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `actividad_logs` WRITE;
/*!40000 ALTER TABLE `actividad_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad_logs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned DEFAULT NULL,
  `nombre` varchar(191) NOT NULL,
  `descripcion` varchar(191) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categorias_empresa_id_index` (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES
(1,1,'Abarrotes',NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(2,1,'Bebidas',NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(3,1,'Limpieza',NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(4,1,'Snacks',NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(5,1,'Lácteos',NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(6,2,'Ropa',NULL,1,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(7,2,'Accesorios',NULL,1,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(8,1,'Cuidado Personal',NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(9,1,'Congelados',NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(10,1,'Panadería',NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(11,1,'Mascotas',NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(12,1,'Ferretería',NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(13,1,'Papelería',NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(14,1,'Frutas y Verduras',NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(15,1,'Carnes',NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(16,1,'Electrónica',NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(17,1,'Juguetería',NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned DEFAULT NULL,
  `nombre` varchar(191) NOT NULL,
  `tipo_documento` varchar(191) NOT NULL DEFAULT 'DNI',
  `numero_documento` varchar(191) DEFAULT NULL,
  `telefono` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `direccion` varchar(191) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientes_empresa_id_index` (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES
(1,1,'Juan Pérez','DNI','45678912',NULL,NULL,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(2,1,'María López','DNI','10293847',NULL,NULL,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(3,1,'Comercial Andina SAC','RUC','20456789123',NULL,NULL,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(4,1,'Carlos Ramírez','DNI','73829104',NULL,NULL,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(5,1,'Bodega Doña Rosa','RUC','20567891234',NULL,NULL,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(6,2,'Ana Torres','DNI','40506070',NULL,NULL,NULL,1,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(7,1,'Rosa Gutiérrez','DNI','41205060',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(8,1,'Luis Fernández','DNI','42305061',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(9,1,'Minimarket La Esquina SAC','RUC','20512345671',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(10,1,'Patricia Salas','DNI','43405062',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(11,1,'Bodega San José','RUC','20512345672',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(12,1,'Jorge Mendoza','DNI','44505063',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(13,1,'Comercial Los Pinos EIRL','RUC','20512345673',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(14,1,'Carmen Díaz','DNI','45605064',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(15,1,'Restaurante El Sabor','RUC','20512345674',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(16,1,'Miguel Castro','DNI','46705065',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `compra_detalles`
--

DROP TABLE IF EXISTS `compra_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_detalles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned DEFAULT NULL,
  `compra_id` bigint(20) unsigned NOT NULL,
  `producto_id` bigint(20) unsigned NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `compra_detalles_compra_id_foreign` (`compra_id`),
  KEY `compra_detalles_producto_id_foreign` (`producto_id`),
  KEY `compra_detalles_empresa_id_index` (`empresa_id`),
  CONSTRAINT `compra_detalles_compra_id_foreign` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`) ON DELETE CASCADE,
  CONSTRAINT `compra_detalles_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_detalles`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `compra_detalles` WRITE;
/*!40000 ALTER TABLE `compra_detalles` DISABLE KEYS */;
INSERT INTO `compra_detalles` VALUES
(1,1,1,12,34,1.00,34.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(2,1,1,24,28,3.50,98.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(3,1,1,25,18,2.80,50.40,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(4,1,2,3,38,3.10,117.80,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(5,1,2,7,39,6.00,234.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(6,1,3,10,28,1.20,33.60,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(7,1,3,19,12,9.50,114.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(8,1,3,20,21,4.20,88.20,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(9,1,3,27,21,8.50,178.50,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(10,1,4,9,13,3.20,41.60,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(11,1,4,10,26,1.20,31.20,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(12,1,4,19,10,9.50,95.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(13,1,5,11,24,3.00,72.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(14,1,5,24,19,3.50,66.50,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(15,1,5,25,14,2.80,39.20,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(16,1,6,5,38,0.90,34.20,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(17,1,6,14,23,4.50,103.50,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(18,1,7,2,39,7.20,280.80,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(19,1,7,25,38,2.80,106.40,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(20,1,8,14,37,4.50,166.50,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(21,1,8,22,29,12.00,348.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(22,1,9,4,17,1.80,30.60,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(23,1,9,22,11,12.00,132.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(24,1,10,6,19,3.50,66.50,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(25,1,10,10,19,1.20,22.80,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(26,1,10,23,31,15.00,465.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(27,1,10,24,26,3.50,91.00,'2026-08-17 03:05:25','2026-08-17 03:05:25');
/*!40000 ALTER TABLE `compra_detalles` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned DEFAULT NULL,
  `numero` varchar(191) NOT NULL,
  `proveedor_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `subtotal` decimal(12,2) NOT NULL DEFAULT 0.00,
  `impuesto` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `estado` varchar(191) NOT NULL DEFAULT 'RECIBIDA',
  `observacion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `compras_numero_unique` (`numero`),
  KEY `compras_proveedor_id_foreign` (`proveedor_id`),
  KEY `compras_user_id_foreign` (`user_id`),
  KEY `compras_empresa_id_index` (`empresa_id`),
  CONSTRAINT `compras_proveedor_id_foreign` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`),
  CONSTRAINT `compras_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES
(1,1,'C-D260816220525-0001',9,2,'2026-06-22',182.40,32.83,215.23,'RECIBIDA','Compra demo para dashboard','2026-06-22 16:00:00','2026-08-17 03:05:25'),
(2,1,'C-D260816220525-0002',10,2,'2026-06-29',351.80,63.32,415.12,'RECIBIDA','Compra demo para dashboard','2026-06-29 22:00:00','2026-08-17 03:05:25'),
(3,1,'C-D260816220525-0003',4,2,'2026-07-06',414.30,74.57,488.87,'RECIBIDA','Compra demo para dashboard','2026-07-06 14:00:00','2026-08-17 03:05:25'),
(4,1,'C-D260816220525-0004',8,2,'2026-07-13',167.80,30.20,198.00,'RECIBIDA','Compra demo para dashboard','2026-07-13 13:00:00','2026-08-17 03:05:25'),
(5,1,'C-D260816220525-0005',5,2,'2026-07-20',177.70,31.99,209.69,'RECIBIDA','Compra demo para dashboard','2026-07-20 14:00:00','2026-08-17 03:05:25'),
(6,1,'C-D260816220525-0006',8,2,'2026-07-27',137.70,24.79,162.49,'RECIBIDA','Compra demo para dashboard','2026-07-27 18:00:00','2026-08-17 03:05:25'),
(7,1,'C-D260816220525-0007',12,2,'2026-08-02',387.20,69.70,456.90,'RECIBIDA','Compra demo para dashboard','2026-08-02 16:00:00','2026-08-17 03:05:25'),
(8,1,'C-D260816220525-0008',7,2,'2026-08-07',514.50,92.61,607.11,'RECIBIDA','Compra demo para dashboard','2026-08-07 13:00:00','2026-08-17 03:05:25'),
(9,1,'C-D260816220525-0009',9,2,'2026-08-11',162.60,29.27,191.87,'RECIBIDA','Compra demo para dashboard','2026-08-11 22:00:00','2026-08-17 03:05:25'),
(10,1,'C-D260816220525-0010',8,2,'2026-08-14',645.30,116.15,761.45,'RECIBIDA','Compra demo para dashboard','2026-08-14 19:00:00','2026-08-17 03:05:25');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `plan_id` bigint(20) unsigned DEFAULT NULL,
  `estado_suscripcion` varchar(191) NOT NULL DEFAULT 'trial',
  `trial_termina_en` date DEFAULT NULL,
  `suscripcion_termina_en` date DEFAULT NULL,
  `nombre` varchar(191) NOT NULL DEFAULT 'Mi Empresa',
  `ruc` varchar(191) DEFAULT NULL,
  `direccion` varchar(191) DEFAULT NULL,
  `telefono` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `moneda` varchar(5) NOT NULL DEFAULT 'S/',
  `igv` decimal(5,2) NOT NULL DEFAULT 18.00,
  `logo` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresas_plan_id_index` (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES
(1,3,'activa',NULL,'2026-09-16','Mi Negocio Demo','20123456789','Av. Principal 123, Lima','01-4567890','ventas@minegocio.test','S/',18.00,NULL,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(2,2,'trial','2026-08-30',NULL,'Boutique Luna','20999888777','Jr. Comercio 456, Arequipa',NULL,NULL,'S/',18.00,NULL,'2026-08-17 03:05:18','2026-08-17 03:05:18');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `facturacion_configs`
--

DROP TABLE IF EXISTS `facturacion_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturacion_configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT 0,
  `emitir_automatico` tinyint(1) NOT NULL DEFAULT 1,
  `modo_boleta` varchar(15) NOT NULL DEFAULT 'individual',
  `driver` varchar(30) NOT NULL DEFAULT 'none',
  `entorno` varchar(20) NOT NULL DEFAULT 'beta',
  `pais` varchar(5) NOT NULL DEFAULT 'PE',
  `ruc` varchar(15) DEFAULT NULL,
  `razon_social` varchar(191) DEFAULT NULL,
  `nombre_comercial` varchar(191) DEFAULT NULL,
  `direccion_fiscal` varchar(191) DEFAULT NULL,
  `ubigeo` varchar(10) DEFAULT NULL,
  `departamento` varchar(191) DEFAULT NULL,
  `provincia` varchar(191) DEFAULT NULL,
  `distrito` varchar(191) DEFAULT NULL,
  `serie_boleta` varchar(8) NOT NULL DEFAULT 'B001',
  `serie_factura` varchar(8) NOT NULL DEFAULT 'F001',
  `serie_nota_credito` varchar(8) NOT NULL DEFAULT 'BC01',
  `serie_nc_factura` varchar(8) NOT NULL DEFAULT 'FC01',
  `sol_user` varchar(191) DEFAULT NULL,
  `sol_pass` text DEFAULT NULL,
  `certificado_ruta` varchar(191) DEFAULT NULL,
  `certificado_pass` text DEFAULT NULL,
  `probado_en` timestamp NULL DEFAULT NULL,
  `estado_conexion` varchar(30) DEFAULT NULL,
  `mensaje_conexion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facturacion_configs_empresa_id_unique` (`empresa_id`),
  CONSTRAINT `facturacion_configs_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturacion_configs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `facturacion_configs` WRITE;
/*!40000 ALTER TABLE `facturacion_configs` DISABLE KEYS */;
INSERT INTO `facturacion_configs` VALUES
(1,1,0,1,'individual','none','beta','PE','20123456789','Mi Negocio Demo','Mi Negocio Demo','Av. Principal 123, Lima',NULL,NULL,NULL,NULL,'B001','F001','BC01','FC01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-08-17 03:06:29','2026-08-17 03:06:29');
/*!40000 ALTER TABLE `facturacion_configs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `facturacion_resumenes`
--

DROP TABLE IF EXISTS `facturacion_resumenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturacion_resumenes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned NOT NULL,
  `fecha_referencia` date NOT NULL,
  `fecha_generacion` date NOT NULL,
  `identificador` varchar(30) NOT NULL,
  `cantidad` int(10) unsigned NOT NULL DEFAULT 0,
  `ticket` varchar(191) DEFAULT NULL,
  `estado` varchar(20) NOT NULL DEFAULT 'PENDIENTE',
  `mensaje` text DEFAULT NULL,
  `xml_ruta` varchar(191) DEFAULT NULL,
  `cdr_ruta` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facturacion_resumenes_empresa_id_fecha_referencia_index` (`empresa_id`,`fecha_referencia`),
  CONSTRAINT `facturacion_resumenes_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturacion_resumenes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `facturacion_resumenes` WRITE;
/*!40000 ALTER TABLE `facturacion_resumenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturacion_resumenes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned DEFAULT NULL,
  `nombre` varchar(191) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `marcas_empresa_id_index` (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES
(1,1,'Genérico',1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(2,1,'Gloria',1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(3,1,'Coca-Cola',1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(4,1,'Nestlé',1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(5,1,'Sapolio',1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(6,1,'Alicorp',1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(7,1,'P&G',1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(8,1,'Unilever',1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(9,1,'San Fernando',1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(10,1,'Laive',1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(11,1,'Backus',1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(12,1,'Molitalia',1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(13,1,'Colgate',1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(14,1,'Kimberly',1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(15,1,'Nescafé',1,'2026-08-17 03:05:25','2026-08-17 03:05:25');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'2026_01_01_000010_create_categorias_table',1),
(4,'2026_01_01_000011_create_marcas_table',1),
(5,'2026_01_01_000012_create_proveedores_table',1),
(6,'2026_01_01_000013_create_clientes_table',1),
(7,'2026_01_01_000014_create_productos_table',1),
(8,'2026_01_01_000015_create_ventas_table',1),
(9,'2026_01_01_000016_create_venta_detalles_table',1),
(10,'2026_01_01_000017_create_compras_table',1),
(11,'2026_01_01_000018_create_movimientos_inventario_table',1),
(12,'2026_01_01_000019_create_empresas_table',1),
(13,'2026_07_06_000001_add_empresa_id_to_tenant_tables',1),
(14,'2026_07_06_000002_create_planes_suscripciones',1),
(15,'2026_07_06_000003_add_is_super_to_users',1),
(16,'2026_07_06_000005_add_efectivo_to_ventas',1),
(17,'2026_07_06_000006_create_plataforma_configs',1),
(18,'2026_07_06_000007_create_actividad_logs',1),
(19,'2026_08_11_000001_create_facturacion_configs_table',1),
(20,'2026_08_11_000002_add_facturacion_electronica_to_ventas_table',1),
(21,'2026_08_11_000003_add_serie_nc_factura_to_facturacion_configs',1),
(22,'2026_08_11_000004_add_anulacion_facturacion_to_ventas_table',1),
(23,'2026_08_11_000005_add_email_resumen_to_ventas_table',1),
(24,'2026_08_11_000006_create_facturacion_resumenes_table',1),
(25,'2026_08_11_000007_add_modo_boleta_and_indexes',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `movimientos_inventario`
--

DROP TABLE IF EXISTS `movimientos_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos_inventario` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned DEFAULT NULL,
  `producto_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `tipo` varchar(191) NOT NULL,
  `motivo` varchar(191) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `stock_anterior` int(11) NOT NULL,
  `stock_nuevo` int(11) NOT NULL,
  `referencia_type` varchar(191) DEFAULT NULL,
  `referencia_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movimientos_inventario_producto_id_foreign` (`producto_id`),
  KEY `movimientos_inventario_user_id_foreign` (`user_id`),
  KEY `movimientos_inventario_referencia_type_referencia_id_index` (`referencia_type`,`referencia_id`),
  KEY `movimientos_inventario_empresa_id_index` (`empresa_id`),
  CONSTRAINT `movimientos_inventario_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `movimientos_inventario_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos_inventario`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `movimientos_inventario` WRITE;
/*!40000 ALTER TABLE `movimientos_inventario` DISABLE KEYS */;
INSERT INTO `movimientos_inventario` VALUES
(1,1,12,2,'ENTRADA','COMPRA',34,38,72,'App\\Models\\Compra',1,'2026-06-22 16:00:00','2026-06-22 16:00:00'),
(2,1,24,2,'ENTRADA','COMPRA',28,0,28,'App\\Models\\Compra',1,'2026-06-22 16:00:00','2026-06-22 16:00:00'),
(3,1,25,2,'ENTRADA','COMPRA',18,0,18,'App\\Models\\Compra',1,'2026-06-22 16:00:00','2026-06-22 16:00:00'),
(4,1,3,2,'ENTRADA','COMPRA',38,31,69,'App\\Models\\Compra',2,'2026-06-29 22:00:00','2026-06-29 22:00:00'),
(5,1,7,2,'ENTRADA','COMPRA',39,11,50,'App\\Models\\Compra',2,'2026-06-29 22:00:00','2026-06-29 22:00:00'),
(6,1,10,2,'ENTRADA','COMPRA',28,17,45,'App\\Models\\Compra',3,'2026-07-06 14:00:00','2026-07-06 14:00:00'),
(7,1,19,2,'ENTRADA','COMPRA',12,0,12,'App\\Models\\Compra',3,'2026-07-06 14:00:00','2026-07-06 14:00:00'),
(8,1,20,2,'ENTRADA','COMPRA',21,0,21,'App\\Models\\Compra',3,'2026-07-06 14:00:00','2026-07-06 14:00:00'),
(9,1,27,2,'ENTRADA','COMPRA',21,0,21,'App\\Models\\Compra',3,'2026-07-06 14:00:00','2026-07-06 14:00:00'),
(10,1,9,2,'ENTRADA','COMPRA',13,57,70,'App\\Models\\Compra',4,'2026-07-13 13:00:00','2026-07-13 13:00:00'),
(11,1,10,2,'ENTRADA','COMPRA',26,45,71,'App\\Models\\Compra',4,'2026-07-13 13:00:00','2026-07-13 13:00:00'),
(12,1,19,2,'ENTRADA','COMPRA',10,12,22,'App\\Models\\Compra',4,'2026-07-13 13:00:00','2026-07-13 13:00:00'),
(13,1,11,2,'ENTRADA','COMPRA',24,10,34,'App\\Models\\Compra',5,'2026-07-20 14:00:00','2026-07-20 14:00:00'),
(14,1,24,2,'ENTRADA','COMPRA',19,28,47,'App\\Models\\Compra',5,'2026-07-20 14:00:00','2026-07-20 14:00:00'),
(15,1,25,2,'ENTRADA','COMPRA',14,18,32,'App\\Models\\Compra',5,'2026-07-20 14:00:00','2026-07-20 14:00:00'),
(16,1,5,2,'ENTRADA','COMPRA',38,15,53,'App\\Models\\Compra',6,'2026-07-27 18:00:00','2026-07-27 18:00:00'),
(17,1,14,2,'ENTRADA','COMPRA',23,16,39,'App\\Models\\Compra',6,'2026-07-27 18:00:00','2026-07-27 18:00:00'),
(18,1,2,2,'ENTRADA','COMPRA',39,25,64,'App\\Models\\Compra',7,'2026-08-02 16:00:00','2026-08-02 16:00:00'),
(19,1,25,2,'ENTRADA','COMPRA',38,32,70,'App\\Models\\Compra',7,'2026-08-02 16:00:00','2026-08-02 16:00:00'),
(20,1,14,2,'ENTRADA','COMPRA',37,39,76,'App\\Models\\Compra',8,'2026-08-07 13:00:00','2026-08-07 13:00:00'),
(21,1,22,2,'ENTRADA','COMPRA',29,0,29,'App\\Models\\Compra',8,'2026-08-07 13:00:00','2026-08-07 13:00:00'),
(22,1,4,2,'ENTRADA','COMPRA',17,7,24,'App\\Models\\Compra',9,'2026-08-11 22:00:00','2026-08-11 22:00:00'),
(23,1,22,2,'ENTRADA','COMPRA',11,29,40,'App\\Models\\Compra',9,'2026-08-11 22:00:00','2026-08-11 22:00:00'),
(24,1,6,2,'ENTRADA','COMPRA',19,18,37,'App\\Models\\Compra',10,'2026-08-14 19:00:00','2026-08-14 19:00:00'),
(25,1,10,2,'ENTRADA','COMPRA',19,71,90,'App\\Models\\Compra',10,'2026-08-14 19:00:00','2026-08-14 19:00:00'),
(26,1,23,2,'ENTRADA','COMPRA',31,0,31,'App\\Models\\Compra',10,'2026-08-14 19:00:00','2026-08-14 19:00:00'),
(27,1,24,2,'ENTRADA','COMPRA',26,47,73,'App\\Models\\Compra',10,'2026-08-14 19:00:00','2026-08-14 19:00:00'),
(28,1,4,2,'SALIDA','VENTA',2,24,22,'App\\Models\\Venta',117,'2026-08-03 19:59:00','2026-08-03 19:59:00'),
(29,1,9,2,'SALIDA','VENTA',5,70,65,'App\\Models\\Venta',117,'2026-08-03 19:59:00','2026-08-03 19:59:00'),
(30,1,15,2,'SALIDA','VENTA',2,50,48,'App\\Models\\Venta',118,'2026-08-03 16:43:00','2026-08-03 16:43:00'),
(31,1,23,2,'SALIDA','VENTA',5,31,26,'App\\Models\\Venta',118,'2026-08-03 16:43:00','2026-08-03 16:43:00'),
(32,1,11,2,'SALIDA','VENTA',5,34,29,'App\\Models\\Venta',119,'2026-08-04 01:28:00','2026-08-04 01:28:00'),
(33,1,5,2,'SALIDA','VENTA',4,53,49,'App\\Models\\Venta',120,'2026-08-04 21:18:00','2026-08-04 21:18:00'),
(34,1,6,2,'SALIDA','VENTA',5,37,32,'App\\Models\\Venta',121,'2026-08-06 01:07:00','2026-08-06 01:07:00'),
(35,1,19,2,'SALIDA','VENTA',4,22,18,'App\\Models\\Venta',121,'2026-08-06 01:07:00','2026-08-06 01:07:00'),
(36,1,24,2,'SALIDA','VENTA',5,73,68,'App\\Models\\Venta',121,'2026-08-06 01:07:00','2026-08-06 01:07:00'),
(37,1,6,2,'SALIDA','VENTA',2,32,30,'App\\Models\\Venta',122,'2026-08-06 16:36:00','2026-08-06 16:36:00'),
(38,1,10,2,'SALIDA','VENTA',3,90,87,'App\\Models\\Venta',122,'2026-08-06 16:36:00','2026-08-06 16:36:00'),
(39,1,20,2,'SALIDA','VENTA',2,21,19,'App\\Models\\Venta',122,'2026-08-06 16:36:00','2026-08-06 16:36:00'),
(40,1,2,2,'SALIDA','VENTA',3,64,61,'App\\Models\\Venta',123,'2026-08-06 15:04:00','2026-08-06 15:04:00'),
(41,1,7,2,'SALIDA','VENTA',1,50,49,'App\\Models\\Venta',123,'2026-08-06 15:04:00','2026-08-06 15:04:00'),
(42,1,8,2,'SALIDA','VENTA',1,47,46,'App\\Models\\Venta',124,'2026-08-07 15:33:00','2026-08-07 15:33:00'),
(43,1,19,2,'SALIDA','VENTA',1,18,17,'App\\Models\\Venta',124,'2026-08-07 15:33:00','2026-08-07 15:33:00'),
(44,1,25,2,'SALIDA','VENTA',4,70,66,'App\\Models\\Venta',124,'2026-08-07 15:33:00','2026-08-07 15:33:00'),
(45,1,6,2,'SALIDA','VENTA',2,30,28,'App\\Models\\Venta',125,'2026-08-07 17:35:00','2026-08-07 17:35:00'),
(46,1,4,2,'SALIDA','VENTA',5,22,17,'App\\Models\\Venta',126,'2026-08-07 22:55:00','2026-08-07 22:55:00'),
(47,1,19,2,'SALIDA','VENTA',1,17,16,'App\\Models\\Venta',126,'2026-08-07 22:55:00','2026-08-07 22:55:00'),
(48,1,20,2,'SALIDA','VENTA',2,19,17,'App\\Models\\Venta',126,'2026-08-07 22:55:00','2026-08-07 22:55:00'),
(49,1,2,2,'SALIDA','VENTA',2,61,59,'App\\Models\\Venta',127,'2026-08-08 16:00:00','2026-08-08 16:00:00'),
(50,1,5,2,'SALIDA','VENTA',4,49,45,'App\\Models\\Venta',128,'2026-08-08 15:45:00','2026-08-08 15:45:00'),
(51,1,7,2,'SALIDA','VENTA',3,49,46,'App\\Models\\Venta',128,'2026-08-08 15:45:00','2026-08-08 15:45:00'),
(52,1,4,2,'SALIDA','VENTA',4,17,13,'App\\Models\\Venta',129,'2026-08-09 16:57:00','2026-08-09 16:57:00'),
(53,1,8,2,'SALIDA','VENTA',5,46,41,'App\\Models\\Venta',129,'2026-08-09 16:57:00','2026-08-09 16:57:00'),
(54,1,9,2,'SALIDA','VENTA',4,65,61,'App\\Models\\Venta',129,'2026-08-09 16:57:00','2026-08-09 16:57:00'),
(55,1,10,2,'SALIDA','VENTA',5,87,82,'App\\Models\\Venta',129,'2026-08-09 16:57:00','2026-08-09 16:57:00'),
(56,1,3,2,'SALIDA','VENTA',5,69,64,'App\\Models\\Venta',130,'2026-08-09 16:53:00','2026-08-09 16:53:00'),
(57,1,2,2,'SALIDA','VENTA',4,59,55,'App\\Models\\Venta',131,'2026-08-10 21:36:00','2026-08-10 21:36:00'),
(58,1,22,2,'SALIDA','VENTA',3,40,37,'App\\Models\\Venta',131,'2026-08-10 21:36:00','2026-08-10 21:36:00'),
(59,1,27,2,'SALIDA','VENTA',2,21,19,'App\\Models\\Venta',131,'2026-08-10 21:36:00','2026-08-10 21:36:00'),
(60,1,20,2,'SALIDA','VENTA',1,17,16,'App\\Models\\Venta',132,'2026-08-11 01:15:00','2026-08-11 01:15:00'),
(61,1,9,2,'SALIDA','VENTA',5,61,56,'App\\Models\\Venta',133,'2026-08-10 18:27:00','2026-08-10 18:27:00'),
(62,1,11,2,'SALIDA','VENTA',4,29,25,'App\\Models\\Venta',133,'2026-08-10 18:27:00','2026-08-10 18:27:00'),
(63,1,24,2,'SALIDA','VENTA',3,68,65,'App\\Models\\Venta',133,'2026-08-10 18:27:00','2026-08-10 18:27:00'),
(64,1,6,2,'SALIDA','VENTA',4,28,24,'App\\Models\\Venta',134,'2026-08-11 20:15:00','2026-08-11 20:15:00'),
(65,1,7,2,'SALIDA','VENTA',4,46,42,'App\\Models\\Venta',134,'2026-08-11 20:15:00','2026-08-11 20:15:00'),
(66,1,14,2,'SALIDA','VENTA',5,76,71,'App\\Models\\Venta',134,'2026-08-11 20:15:00','2026-08-11 20:15:00'),
(67,1,24,2,'SALIDA','VENTA',3,65,62,'App\\Models\\Venta',134,'2026-08-11 20:15:00','2026-08-11 20:15:00'),
(68,1,4,2,'SALIDA','VENTA',4,13,9,'App\\Models\\Venta',135,'2026-08-12 00:39:00','2026-08-12 00:39:00'),
(69,1,11,2,'SALIDA','VENTA',2,25,23,'App\\Models\\Venta',135,'2026-08-12 00:39:00','2026-08-12 00:39:00'),
(70,1,12,2,'SALIDA','VENTA',5,72,67,'App\\Models\\Venta',135,'2026-08-12 00:39:00','2026-08-12 00:39:00'),
(71,1,27,2,'SALIDA','VENTA',1,19,18,'App\\Models\\Venta',136,'2026-08-13 01:36:00','2026-08-13 01:36:00'),
(72,1,3,2,'SALIDA','VENTA',4,64,60,'App\\Models\\Venta',137,'2026-08-12 19:03:00','2026-08-12 19:03:00'),
(73,1,4,2,'SALIDA','VENTA',5,9,4,'App\\Models\\Venta',137,'2026-08-12 19:03:00','2026-08-12 19:03:00'),
(74,1,14,2,'SALIDA','VENTA',5,71,66,'App\\Models\\Venta',137,'2026-08-12 19:03:00','2026-08-12 19:03:00'),
(75,1,24,2,'SALIDA','VENTA',1,62,61,'App\\Models\\Venta',138,'2026-08-12 14:12:00','2026-08-12 14:12:00'),
(76,1,5,2,'SALIDA','VENTA',2,45,43,'App\\Models\\Venta',139,'2026-08-13 16:38:00','2026-08-13 16:38:00'),
(77,1,11,2,'SALIDA','VENTA',5,23,18,'App\\Models\\Venta',139,'2026-08-13 16:38:00','2026-08-13 16:38:00'),
(78,1,15,2,'SALIDA','VENTA',3,48,45,'App\\Models\\Venta',139,'2026-08-13 16:38:00','2026-08-13 16:38:00'),
(79,1,22,2,'SALIDA','VENTA',1,37,36,'App\\Models\\Venta',139,'2026-08-13 16:38:00','2026-08-13 16:38:00'),
(80,1,8,2,'SALIDA','VENTA',2,41,39,'App\\Models\\Venta',140,'2026-08-13 16:56:00','2026-08-13 16:56:00'),
(81,1,13,2,'SALIDA','VENTA',3,71,68,'App\\Models\\Venta',140,'2026-08-13 16:56:00','2026-08-13 16:56:00'),
(82,1,25,2,'SALIDA','VENTA',2,66,64,'App\\Models\\Venta',140,'2026-08-13 16:56:00','2026-08-13 16:56:00'),
(83,1,2,2,'SALIDA','VENTA',2,55,53,'App\\Models\\Venta',141,'2026-08-14 01:18:00','2026-08-14 01:18:00'),
(84,1,25,2,'SALIDA','VENTA',4,64,60,'App\\Models\\Venta',141,'2026-08-14 01:18:00','2026-08-14 01:18:00'),
(85,1,1,2,'SALIDA','VENTA',1,8,7,'App\\Models\\Venta',142,'2026-08-14 23:27:00','2026-08-14 23:27:00'),
(86,1,11,2,'SALIDA','VENTA',2,18,16,'App\\Models\\Venta',142,'2026-08-14 23:27:00','2026-08-14 23:27:00'),
(87,1,12,2,'SALIDA','VENTA',5,67,62,'App\\Models\\Venta',142,'2026-08-14 23:27:00','2026-08-14 23:27:00'),
(88,1,3,2,'SALIDA','VENTA',3,60,57,'App\\Models\\Venta',143,'2026-08-14 18:34:00','2026-08-14 18:34:00'),
(89,1,23,2,'SALIDA','VENTA',2,26,24,'App\\Models\\Venta',143,'2026-08-14 18:34:00','2026-08-14 18:34:00'),
(90,1,25,2,'SALIDA','VENTA',4,60,56,'App\\Models\\Venta',144,'2026-08-15 23:16:00','2026-08-15 23:16:00'),
(91,1,9,2,'SALIDA','VENTA',4,56,52,'App\\Models\\Venta',145,'2026-08-15 22:43:00','2026-08-15 22:43:00'),
(92,1,19,2,'SALIDA','VENTA',1,16,15,'App\\Models\\Venta',145,'2026-08-15 22:43:00','2026-08-15 22:43:00'),
(93,1,4,2,'SALIDA','VENTA',2,4,2,'App\\Models\\Venta',146,'2026-08-17 01:53:00','2026-08-17 01:53:00'),
(94,1,10,2,'SALIDA','VENTA',3,82,79,'App\\Models\\Venta',146,'2026-08-17 01:53:00','2026-08-17 01:53:00'),
(95,1,27,2,'SALIDA','VENTA',4,18,14,'App\\Models\\Venta',146,'2026-08-17 01:53:00','2026-08-17 01:53:00'),
(96,1,14,2,'SALIDA','VENTA',5,66,61,'App\\Models\\Venta',147,'2026-07-05 15:40:00','2026-07-05 15:40:00'),
(97,1,24,2,'SALIDA','VENTA',2,61,59,'App\\Models\\Venta',148,'2026-06-28 17:34:00','2026-06-28 17:34:00'),
(98,1,27,2,'SALIDA','VENTA',1,14,13,'App\\Models\\Venta',148,'2026-06-28 17:34:00','2026-06-28 17:34:00'),
(99,1,13,2,'SALIDA','VENTA',1,68,67,'App\\Models\\Venta',149,'2026-06-03 18:53:00','2026-06-03 18:53:00'),
(100,1,22,2,'SALIDA','VENTA',1,36,35,'App\\Models\\Venta',150,'2026-06-15 01:28:00','2026-06-15 01:28:00'),
(101,1,24,2,'SALIDA','VENTA',2,59,57,'App\\Models\\Venta',150,'2026-06-15 01:28:00','2026-06-15 01:28:00'),
(102,1,25,2,'SALIDA','VENTA',1,56,55,'App\\Models\\Venta',150,'2026-06-15 01:28:00','2026-06-15 01:28:00'),
(103,1,27,2,'SALIDA','VENTA',4,13,9,'App\\Models\\Venta',151,'2026-05-07 01:31:00','2026-05-07 01:31:00'),
(104,1,1,2,'SALIDA','VENTA',4,7,3,'App\\Models\\Venta',152,'2026-04-30 21:57:00','2026-04-30 21:57:00'),
(105,1,5,2,'SALIDA','VENTA',5,43,38,'App\\Models\\Venta',152,'2026-04-30 21:57:00','2026-04-30 21:57:00'),
(106,1,6,2,'SALIDA','VENTA',1,24,23,'App\\Models\\Venta',152,'2026-04-30 21:57:00','2026-04-30 21:57:00'),
(107,1,19,2,'SALIDA','VENTA',3,15,12,'App\\Models\\Venta',153,'2026-04-01 17:47:00','2026-04-01 17:47:00'),
(108,1,27,2,'SALIDA','VENTA',4,9,5,'App\\Models\\Venta',154,'2026-04-06 01:26:00','2026-04-06 01:26:00'),
(109,1,20,2,'SALIDA','VENTA',2,16,14,'App\\Models\\Venta',155,'2026-03-27 22:43:00','2026-03-27 22:43:00'),
(110,1,11,2,'SALIDA','VENTA',5,16,11,'App\\Models\\Venta',156,'2026-04-16 15:43:00','2026-04-16 15:43:00'),
(111,1,12,2,'SALIDA','VENTA',5,62,57,'App\\Models\\Venta',156,'2026-04-16 15:43:00','2026-04-16 15:43:00'),
(112,1,14,2,'SALIDA','VENTA',4,61,57,'App\\Models\\Venta',156,'2026-04-16 15:43:00','2026-04-16 15:43:00'),
(113,1,27,2,'SALIDA','VENTA',2,5,3,'App\\Models\\Venta',157,'2026-03-03 19:28:00','2026-03-03 19:28:00'),
(114,1,1,2,'SALIDA','VENTA',3,3,0,'App\\Models\\Venta',158,'2026-03-15 23:51:00','2026-03-15 23:51:00'),
(115,1,12,2,'SALIDA','VENTA',4,57,53,'App\\Models\\Venta',158,'2026-03-15 23:51:00','2026-03-15 23:51:00'),
(116,1,25,2,'SALIDA','VENTA',3,55,52,'App\\Models\\Venta',158,'2026-03-15 23:51:00','2026-03-15 23:51:00'),
(117,1,12,2,'SALIDA','VENTA',4,53,49,'App\\Models\\Venta',160,'2026-03-12 15:50:00','2026-03-12 15:50:00'),
(118,1,19,2,'SALIDA','VENTA',3,12,9,'App\\Models\\Venta',160,'2026-03-12 15:50:00','2026-03-12 15:50:00'),
(119,1,4,2,'AJUSTE','MERMA',2,2,0,NULL,NULL,'2026-07-25 13:00:00','2026-07-25 13:00:00'),
(120,1,8,2,'AJUSTE','AJUSTE_MANUAL',7,39,46,NULL,NULL,'2026-07-28 15:00:00','2026-07-28 15:00:00'),
(121,1,26,2,'AJUSTE','MERMA',3,0,3,NULL,NULL,'2026-08-04 18:00:00','2026-08-04 18:00:00'),
(122,1,14,2,'AJUSTE','AJUSTE_MANUAL',1,57,56,NULL,NULL,'2026-08-10 16:00:00','2026-08-10 16:00:00'),
(123,1,25,2,'AJUSTE','AJUSTE_MANUAL',5,52,57,NULL,NULL,'2026-08-14 13:00:00','2026-08-14 13:00:00'),
(124,1,2,2,'AJUSTE','AJUSTE_MANUAL',6,53,59,NULL,NULL,'2026-08-12 18:00:00','2026-08-12 18:00:00'),
(125,1,8,2,'AJUSTE','AJUSTE_MANUAL',1,46,45,NULL,NULL,'2026-08-07 22:00:00','2026-08-07 22:00:00'),
(126,1,25,2,'AJUSTE','AJUSTE_MANUAL',3,57,60,NULL,NULL,'2026-07-23 23:00:00','2026-07-23 23:00:00'),
(127,1,6,2,'AJUSTE','AJUSTE_MANUAL',1,23,24,NULL,NULL,'2026-08-12 14:00:00','2026-08-12 14:00:00'),
(128,1,1,2,'AJUSTE','MERMA',7,0,7,NULL,NULL,'2026-07-25 15:00:00','2026-07-25 15:00:00');
/*!40000 ALTER TABLE `movimientos_inventario` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `planes`
--

DROP TABLE IF EXISTS `planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `planes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `precio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `limite_productos` int(11) DEFAULT NULL,
  `limite_usuarios` int(11) DEFAULT NULL,
  `limite_ventas_mes` int(11) DEFAULT NULL,
  `descripcion` varchar(191) DEFAULT NULL,
  `orden` int(10) unsigned NOT NULL DEFAULT 0,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `planes_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `planes` WRITE;
/*!40000 ALTER TABLE `planes` DISABLE KEYS */;
INSERT INTO `planes` VALUES
(1,'Gratis','gratis',0.00,20,1,100,'Para empezar y probar el sistema.',1,1,'2026-08-17 03:05:15','2026-08-17 03:05:15'),
(2,'Emprendedor','emprendedor',49.00,500,5,3000,'Para negocios en crecimiento.',2,1,'2026-08-17 03:05:15','2026-08-17 03:05:15'),
(3,'Negocio','negocio',99.00,NULL,NULL,NULL,'Todo ilimitado para operaciones grandes.',3,1,'2026-08-17 03:05:15','2026-08-17 03:05:15');
/*!40000 ALTER TABLE `planes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `plataforma_configs`
--

DROP TABLE IF EXISTS `plataforma_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `plataforma_configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_saas` varchar(191) NOT NULL DEFAULT 'SaaS Ventas e Inventario',
  `logo` varchar(191) DEFAULT NULL,
  `dias_trial` int(10) unsigned NOT NULL DEFAULT 14,
  `correo_soporte` varchar(191) DEFAULT NULL,
  `moneda` varchar(5) NOT NULL DEFAULT 'S/',
  `mensaje_bienvenida` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plataforma_configs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `plataforma_configs` WRITE;
/*!40000 ALTER TABLE `plataforma_configs` DISABLE KEYS */;
INSERT INTO `plataforma_configs` VALUES
(1,'SaaS Ventas e Inventario',NULL,14,'soporte@saas.test','S/',NULL,'2026-08-17 03:05:15','2026-08-17 03:05:15');
/*!40000 ALTER TABLE `plataforma_configs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned DEFAULT NULL,
  `codigo` varchar(191) NOT NULL,
  `nombre` varchar(191) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `categoria_id` bigint(20) unsigned DEFAULT NULL,
  `marca_id` bigint(20) unsigned DEFAULT NULL,
  `unidad` varchar(191) NOT NULL DEFAULT 'UND',
  `precio_compra` decimal(12,2) NOT NULL DEFAULT 0.00,
  `precio_venta` decimal(12,2) NOT NULL DEFAULT 0.00,
  `stock` int(11) NOT NULL DEFAULT 0,
  `stock_minimo` int(11) NOT NULL DEFAULT 5,
  `imagen` varchar(191) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productos_empresa_codigo_unique` (`empresa_id`,`codigo`),
  KEY `productos_categoria_id_foreign` (`categoria_id`),
  KEY `productos_marca_id_foreign` (`marca_id`),
  KEY `productos_empresa_id_index` (`empresa_id`),
  CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE SET NULL,
  CONSTRAINT `productos_marca_id_foreign` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES
(1,1,'P0001','Arroz Costeño 5kg',NULL,1,2,'UND',18.50,22.00,7,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(2,1,'P0002','Aceite Primor 1L',NULL,1,2,'UND',7.20,9.50,59,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(3,1,'P0003','Azúcar Rubia 1kg',NULL,1,2,'UND',3.10,4.50,57,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(4,1,'P0004','Coca-Cola 500ml',NULL,2,1,'UND',1.80,3.00,0,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(5,1,'P0005','Agua San Luis 625ml',NULL,2,5,'UND',0.90,1.50,38,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(6,1,'P0006','Inca Kola 1.5L',NULL,2,3,'UND',3.50,5.50,24,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(7,1,'P0007','Detergente Sapolio 900g',NULL,3,5,'UND',6.00,8.90,42,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(8,1,'P0008','Lejía Clorox 1L',NULL,3,2,'UND',2.80,4.20,45,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(9,1,'P0009','Papel Higiénico x4',NULL,3,2,'UND',3.20,5.00,52,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(10,1,'P0010','Galletas Oreo',NULL,4,1,'UND',1.20,2.00,79,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(11,1,'P0011','Papitas Lays 145g',NULL,4,4,'UND',3.00,4.80,11,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(12,1,'P0012','Chocolate Sublime',NULL,4,4,'UND',1.00,1.80,49,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(13,1,'P0013','Leche Gloria Tarro',NULL,5,4,'UND',3.30,4.90,67,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(14,1,'P0014','Yogurt Gloria 1L',NULL,5,4,'UND',4.50,6.50,56,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(15,1,'P0015','Queso Fresco 500g',NULL,5,3,'UND',9.00,13.00,45,10,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:26'),
(16,2,'B0001','Blusa de lino',NULL,6,NULL,'UND',25.00,49.90,18,5,NULL,1,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(17,2,'B0002','Pantalón jean',NULL,6,NULL,'UND',40.00,89.90,12,5,NULL,1,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(18,2,'B0003','Cartera de cuero',NULL,6,NULL,'UND',60.00,129.90,11,5,NULL,1,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(19,1,'D26081622052501','Shampoo Head&Shoulders 400ml',NULL,8,9,'UND',9.50,14.90,9,10,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:26'),
(20,1,'D26081622052502','Jabón Dove x3',NULL,8,4,'UND',4.20,6.90,14,10,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:26'),
(21,1,'D26081622052503','Pan de molde Bimbo',NULL,10,15,'UND',3.80,5.50,0,10,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:26'),
(22,1,'D26081622052504','Nuggets de pollo 1kg',NULL,9,2,'UND',12.00,17.90,35,10,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:26'),
(23,1,'D26081622052505','Alimento para perro 2kg',NULL,11,6,'UND',15.00,22.50,24,10,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:26'),
(24,1,'D26081622052506','Foco LED 9W',NULL,12,9,'UND',3.50,6.00,57,10,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:26'),
(25,1,'D26081622052507','Cuaderno A4 100h',NULL,13,7,'UND',2.80,4.50,60,10,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:26'),
(26,1,'D26081622052508','Manzana roja (kg)',NULL,14,13,'UND',2.50,4.00,3,10,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:26'),
(27,1,'D26081622052509','Pechuga de pollo (kg)',NULL,15,10,'UND',8.50,12.90,3,10,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:26'),
(28,1,'D26081622052510','Audífonos USB',NULL,16,6,'UND',11.00,19.90,0,10,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:26');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned DEFAULT NULL,
  `nombre` varchar(191) NOT NULL,
  `ruc` varchar(191) DEFAULT NULL,
  `telefono` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `direccion` varchar(191) DEFAULT NULL,
  `contacto` varchar(191) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedores_empresa_id_index` (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES
(1,1,'Distribuidora Central SAC','20123456789','01-4567890',NULL,NULL,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(2,1,'Mayorista El Sol EIRL','20987654321','01-3216540',NULL,NULL,NULL,1,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(3,1,'Distribuidora Norteña SAC','20100200301','01-2001001',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(4,1,'Comercial El Águila EIRL','20100200302','01-2001002',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(5,1,'Importaciones Perú SA','20100200303','01-2001003',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(6,1,'Mayorista Los Andes','20100200304','01-2001004',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(7,1,'Abarrotes del Sur SAC','20100200305','01-2001005',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(8,1,'Grupo Comercial Lima','20100200306','01-2001006',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(9,1,'Distribuidora Pacífico','20100200307','01-2001007',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(10,1,'Almacenes Unidos EIRL','20100200308','01-2001008',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(11,1,'Corporación Andina SAC','20100200309','01-2001009',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(12,1,'Proveedora Central','20100200310','01-2001010',NULL,NULL,NULL,1,'2026-08-17 03:05:25','2026-08-17 03:05:25');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `suscripciones`
--

DROP TABLE IF EXISTS `suscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `suscripciones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned NOT NULL,
  `plan_id` bigint(20) unsigned DEFAULT NULL,
  `estado` varchar(191) NOT NULL DEFAULT 'trial',
  `monto` decimal(10,2) NOT NULL DEFAULT 0.00,
  `inicia_en` date DEFAULT NULL,
  `termina_en` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `suscripciones_empresa_id_index` (`empresa_id`),
  KEY `suscripciones_plan_id_index` (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suscripciones`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `suscripciones` WRITE;
/*!40000 ALTER TABLE `suscripciones` DISABLE KEYS */;
INSERT INTO `suscripciones` VALUES
(1,1,3,'activa',99.00,'2026-08-16','2026-09-16','2026-08-17 03:05:16','2026-08-17 03:05:16'),
(2,2,2,'trial',0.00,'2026-08-16','2026-08-30','2026-08-17 03:05:18','2026-08-17 03:05:18');
/*!40000 ALTER TABLE `suscripciones` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `rol` varchar(191) NOT NULL DEFAULT 'vendedor',
  `is_super` tinyint(1) NOT NULL DEFAULT 0,
  `telefono` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_empresa_id_index` (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,NULL,'Super Admin','super@saas.test',NULL,'$2y$12$yddVR8zH4WTUFqK3vR2BY.QJ7aPUpm2lQvx2qS7nGBqL0SjB3Pb6a','admin',1,NULL,NULL,1,NULL,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(2,1,'Administrador','admin@saas.test',NULL,'$2y$12$PykrmcyYpiYWBabyIyrJJ.m3TFmM6Khz.pSmgBm.OQm4ecxZ7AAPq','admin',0,NULL,NULL,1,'XgNM6YaIXgKbpHEHToVY4oy7MjhY0xspV8fVGAoVy0Vx1uz9EFbGRlGSjV4i','2026-08-17 03:05:16','2026-08-17 03:05:16'),
(3,1,'Vendedor Demo','vendedor@saas.test',NULL,'$2y$12$.jWosY6te1/KPfJHhup4xu5ttFxDEvJSNommPaJFBx8Y9t9If1Crq','vendedor',0,NULL,NULL,1,NULL,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(4,2,'Dueña Boutique','admin@boutique.test',NULL,'$2y$12$grB0oTsuSblULDM/Lgvm8.FE6sA/JQw/cwlgUBcROHTOhepc1tbtu','admin',0,NULL,NULL,1,NULL,'2026-08-17 03:05:18','2026-08-17 03:05:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `venta_detalles`
--

DROP TABLE IF EXISTS `venta_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_detalles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned DEFAULT NULL,
  `venta_id` bigint(20) unsigned NOT NULL,
  `producto_id` bigint(20) unsigned NOT NULL,
  `descripcion` varchar(191) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `venta_detalles_venta_id_foreign` (`venta_id`),
  KEY `venta_detalles_producto_id_foreign` (`producto_id`),
  KEY `venta_detalles_empresa_id_index` (`empresa_id`),
  CONSTRAINT `venta_detalles_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  CONSTRAINT `venta_detalles_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=377 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_detalles`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `venta_detalles` WRITE;
/*!40000 ALTER TABLE `venta_detalles` DISABLE KEYS */;
INSERT INTO `venta_detalles` VALUES
(1,1,1,7,'Detergente Sapolio 900g',4,8.90,35.60,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(2,1,1,11,'Papitas Lays 145g',1,4.80,4.80,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(3,1,1,12,'Chocolate Sublime',3,1.80,5.40,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(4,1,2,6,'Inca Kola 1.5L',5,5.50,27.50,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(5,1,2,9,'Papel Higiénico x4',2,5.00,10.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(6,1,2,12,'Chocolate Sublime',2,1.80,3.60,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(7,1,3,1,'Arroz Costeño 5kg',5,22.00,110.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(8,1,3,4,'Coca-Cola 500ml',2,3.00,6.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(9,1,3,6,'Inca Kola 1.5L',2,5.50,11.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(10,1,3,12,'Chocolate Sublime',3,1.80,5.40,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(11,1,4,3,'Azúcar Rubia 1kg',2,4.50,9.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(12,1,4,6,'Inca Kola 1.5L',1,5.50,5.50,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(13,1,4,11,'Papitas Lays 145g',3,4.80,14.40,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(14,1,4,15,'Queso Fresco 500g',3,13.00,39.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(15,1,5,1,'Arroz Costeño 5kg',2,22.00,44.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(16,1,5,11,'Papitas Lays 145g',1,4.80,4.80,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(17,1,6,1,'Arroz Costeño 5kg',4,22.00,88.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(18,1,6,4,'Coca-Cola 500ml',3,3.00,9.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(19,1,6,6,'Inca Kola 1.5L',1,5.50,5.50,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(20,1,7,5,'Agua San Luis 625ml',2,1.50,3.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(21,1,8,1,'Arroz Costeño 5kg',5,22.00,110.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(22,1,8,13,'Leche Gloria Tarro',5,4.90,24.50,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(23,1,9,5,'Agua San Luis 625ml',3,1.50,4.50,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(24,1,9,8,'Lejía Clorox 1L',1,4.20,4.20,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(25,1,9,9,'Papel Higiénico x4',3,5.00,15.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(26,1,9,10,'Galletas Oreo',3,2.00,6.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(27,1,10,9,'Papel Higiénico x4',3,5.00,15.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(28,1,11,10,'Galletas Oreo',4,2.00,8.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(29,1,11,11,'Papitas Lays 145g',2,4.80,9.60,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(30,1,11,12,'Chocolate Sublime',1,1.80,1.80,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(31,1,12,4,'Coca-Cola 500ml',4,3.00,12.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(32,1,12,7,'Detergente Sapolio 900g',1,8.90,8.90,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(33,1,13,2,'Aceite Primor 1L',1,9.50,9.50,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(34,1,13,6,'Inca Kola 1.5L',2,5.50,11.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(35,1,13,8,'Lejía Clorox 1L',4,4.20,16.80,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(36,1,13,13,'Leche Gloria Tarro',3,4.90,14.70,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(37,1,14,2,'Aceite Primor 1L',2,9.50,19.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(38,1,14,6,'Inca Kola 1.5L',4,5.50,22.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(39,1,14,9,'Papel Higiénico x4',4,5.00,20.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(40,1,14,13,'Leche Gloria Tarro',2,4.90,9.80,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(41,1,15,2,'Aceite Primor 1L',1,9.50,9.50,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(42,1,15,5,'Agua San Luis 625ml',2,1.50,3.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(43,1,15,11,'Papitas Lays 145g',2,4.80,9.60,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(44,1,15,15,'Queso Fresco 500g',5,13.00,65.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(45,1,16,8,'Lejía Clorox 1L',4,4.20,16.80,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(46,1,16,14,'Yogurt Gloria 1L',4,6.50,26.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(47,1,17,1,'Arroz Costeño 5kg',4,22.00,88.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(48,1,17,3,'Azúcar Rubia 1kg',3,4.50,13.50,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(49,1,17,11,'Papitas Lays 145g',2,4.80,9.60,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(50,1,18,1,'Arroz Costeño 5kg',5,22.00,110.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(51,1,18,7,'Detergente Sapolio 900g',3,8.90,26.70,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(52,1,19,2,'Aceite Primor 1L',4,9.50,38.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(53,1,19,3,'Azúcar Rubia 1kg',2,4.50,9.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(54,1,20,3,'Azúcar Rubia 1kg',2,4.50,9.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(55,1,20,7,'Detergente Sapolio 900g',4,8.90,35.60,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(56,1,20,15,'Queso Fresco 500g',3,13.00,39.00,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(57,1,21,7,'Detergente Sapolio 900g',2,8.90,17.80,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(58,1,21,8,'Lejía Clorox 1L',2,4.20,8.40,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(59,1,21,11,'Papitas Lays 145g',2,4.80,9.60,'2026-08-17 03:05:16','2026-08-17 03:05:16'),
(60,1,21,14,'Yogurt Gloria 1L',2,6.50,13.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(61,1,22,4,'Coca-Cola 500ml',4,3.00,12.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(62,1,22,9,'Papel Higiénico x4',3,5.00,15.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(63,1,22,12,'Chocolate Sublime',5,1.80,9.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(64,1,23,6,'Inca Kola 1.5L',5,5.50,27.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(65,1,24,2,'Aceite Primor 1L',3,9.50,28.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(66,1,24,11,'Papitas Lays 145g',4,4.80,19.20,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(67,1,24,12,'Chocolate Sublime',4,1.80,7.20,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(68,1,24,13,'Leche Gloria Tarro',1,4.90,4.90,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(69,1,25,1,'Arroz Costeño 5kg',4,22.00,88.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(70,1,26,1,'Arroz Costeño 5kg',2,22.00,44.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(71,1,26,3,'Azúcar Rubia 1kg',5,4.50,22.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(72,1,26,6,'Inca Kola 1.5L',4,5.50,22.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(73,1,26,9,'Papel Higiénico x4',2,5.00,10.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(74,1,27,5,'Agua San Luis 625ml',5,1.50,7.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(75,1,27,11,'Papitas Lays 145g',3,4.80,14.40,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(76,1,28,10,'Galletas Oreo',2,2.00,4.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(77,1,29,1,'Arroz Costeño 5kg',4,22.00,88.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(78,1,29,5,'Agua San Luis 625ml',5,1.50,7.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(79,1,29,7,'Detergente Sapolio 900g',1,8.90,8.90,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(80,1,30,10,'Galletas Oreo',4,2.00,8.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(81,1,30,12,'Chocolate Sublime',5,1.80,9.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(82,1,31,7,'Detergente Sapolio 900g',2,8.90,17.80,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(83,1,31,10,'Galletas Oreo',5,2.00,10.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(84,1,31,15,'Queso Fresco 500g',5,13.00,65.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(85,1,32,5,'Agua San Luis 625ml',1,1.50,1.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(86,1,32,12,'Chocolate Sublime',1,1.80,1.80,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(87,1,33,1,'Arroz Costeño 5kg',5,22.00,110.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(88,1,33,5,'Agua San Luis 625ml',3,1.50,4.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(89,1,34,7,'Detergente Sapolio 900g',3,8.90,26.70,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(90,1,34,9,'Papel Higiénico x4',3,5.00,15.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(91,1,34,14,'Yogurt Gloria 1L',2,6.50,13.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(92,1,34,15,'Queso Fresco 500g',1,13.00,13.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(93,1,35,12,'Chocolate Sublime',2,1.80,3.60,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(94,1,35,15,'Queso Fresco 500g',1,13.00,13.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(95,1,36,3,'Azúcar Rubia 1kg',5,4.50,22.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(96,1,37,9,'Papel Higiénico x4',4,5.00,20.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(97,1,37,15,'Queso Fresco 500g',2,13.00,26.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(98,1,38,4,'Coca-Cola 500ml',2,3.00,6.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(99,1,38,9,'Papel Higiénico x4',1,5.00,5.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(100,1,39,4,'Coca-Cola 500ml',3,3.00,9.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(101,1,39,9,'Papel Higiénico x4',4,5.00,20.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(102,1,39,12,'Chocolate Sublime',5,1.80,9.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(103,1,40,1,'Arroz Costeño 5kg',5,22.00,110.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(104,1,40,3,'Azúcar Rubia 1kg',1,4.50,4.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(105,1,40,4,'Coca-Cola 500ml',3,3.00,9.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(106,1,40,6,'Inca Kola 1.5L',4,5.50,22.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(107,1,41,1,'Arroz Costeño 5kg',1,22.00,22.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(108,1,41,9,'Papel Higiénico x4',5,5.00,25.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(109,1,41,14,'Yogurt Gloria 1L',4,6.50,26.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(110,1,42,3,'Azúcar Rubia 1kg',1,4.50,4.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(111,1,42,12,'Chocolate Sublime',5,1.80,9.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(112,1,43,5,'Agua San Luis 625ml',3,1.50,4.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(113,1,44,15,'Queso Fresco 500g',3,13.00,39.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(114,1,45,4,'Coca-Cola 500ml',3,3.00,9.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(115,1,46,1,'Arroz Costeño 5kg',3,22.00,66.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(116,1,46,2,'Aceite Primor 1L',3,9.50,28.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(117,1,46,15,'Queso Fresco 500g',4,13.00,52.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(118,1,47,2,'Aceite Primor 1L',5,9.50,47.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(119,1,48,4,'Coca-Cola 500ml',2,3.00,6.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(120,1,48,8,'Lejía Clorox 1L',2,4.20,8.40,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(121,1,49,1,'Arroz Costeño 5kg',2,22.00,44.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(122,1,49,11,'Papitas Lays 145g',3,4.80,14.40,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(123,1,50,1,'Arroz Costeño 5kg',1,22.00,22.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(124,1,50,7,'Detergente Sapolio 900g',3,8.90,26.70,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(125,1,51,2,'Aceite Primor 1L',3,9.50,28.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(126,1,51,7,'Detergente Sapolio 900g',2,8.90,17.80,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(127,1,51,11,'Papitas Lays 145g',1,4.80,4.80,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(128,1,52,2,'Aceite Primor 1L',5,9.50,47.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(129,1,52,5,'Agua San Luis 625ml',5,1.50,7.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(130,1,52,12,'Chocolate Sublime',1,1.80,1.80,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(131,1,53,1,'Arroz Costeño 5kg',4,22.00,88.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(132,1,53,9,'Papel Higiénico x4',4,5.00,20.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(133,1,53,12,'Chocolate Sublime',4,1.80,7.20,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(134,1,54,7,'Detergente Sapolio 900g',2,8.90,17.80,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(135,1,54,13,'Leche Gloria Tarro',2,4.90,9.80,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(136,1,55,1,'Arroz Costeño 5kg',4,22.00,88.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(137,1,55,13,'Leche Gloria Tarro',4,4.90,19.60,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(138,1,56,2,'Aceite Primor 1L',2,9.50,19.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(139,1,56,4,'Coca-Cola 500ml',5,3.00,15.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(140,1,56,5,'Agua San Luis 625ml',1,1.50,1.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(141,1,57,7,'Detergente Sapolio 900g',3,8.90,26.70,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(142,1,58,9,'Papel Higiénico x4',5,5.00,25.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(143,1,59,2,'Aceite Primor 1L',5,9.50,47.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(144,1,59,9,'Papel Higiénico x4',5,5.00,25.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(145,1,59,14,'Yogurt Gloria 1L',2,6.50,13.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(146,1,60,7,'Detergente Sapolio 900g',3,8.90,26.70,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(147,1,61,6,'Inca Kola 1.5L',5,5.50,27.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(148,1,61,11,'Papitas Lays 145g',3,4.80,14.40,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(149,1,61,13,'Leche Gloria Tarro',2,4.90,9.80,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(150,1,62,2,'Aceite Primor 1L',5,9.50,47.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(151,1,62,5,'Agua San Luis 625ml',4,1.50,6.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(152,1,62,13,'Leche Gloria Tarro',3,4.90,14.70,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(153,1,62,14,'Yogurt Gloria 1L',5,6.50,32.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(154,1,63,1,'Arroz Costeño 5kg',3,22.00,66.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(155,1,63,2,'Aceite Primor 1L',2,9.50,19.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(156,1,63,14,'Yogurt Gloria 1L',5,6.50,32.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(157,1,64,4,'Coca-Cola 500ml',1,3.00,3.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(158,1,64,7,'Detergente Sapolio 900g',3,8.90,26.70,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(159,1,64,12,'Chocolate Sublime',3,1.80,5.40,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(160,1,64,14,'Yogurt Gloria 1L',5,6.50,32.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(161,1,65,3,'Azúcar Rubia 1kg',1,4.50,4.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(162,1,66,1,'Arroz Costeño 5kg',4,22.00,88.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(163,1,66,2,'Aceite Primor 1L',2,9.50,19.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(164,1,67,7,'Detergente Sapolio 900g',5,8.90,44.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(165,1,68,2,'Aceite Primor 1L',3,9.50,28.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(166,1,68,4,'Coca-Cola 500ml',5,3.00,15.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(167,1,68,13,'Leche Gloria Tarro',2,4.90,9.80,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(168,1,68,14,'Yogurt Gloria 1L',5,6.50,32.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(169,1,69,8,'Lejía Clorox 1L',1,4.20,4.20,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(170,1,69,11,'Papitas Lays 145g',4,4.80,19.20,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(171,1,69,12,'Chocolate Sublime',1,1.80,1.80,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(172,1,69,14,'Yogurt Gloria 1L',5,6.50,32.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(173,1,70,6,'Inca Kola 1.5L',2,5.50,11.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(174,1,70,7,'Detergente Sapolio 900g',2,8.90,17.80,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(175,1,70,11,'Papitas Lays 145g',2,4.80,9.60,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(176,1,70,14,'Yogurt Gloria 1L',4,6.50,26.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(177,1,71,1,'Arroz Costeño 5kg',2,22.00,44.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(178,1,71,6,'Inca Kola 1.5L',3,5.50,16.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(179,1,71,15,'Queso Fresco 500g',5,13.00,65.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(180,1,72,1,'Arroz Costeño 5kg',2,22.00,44.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(181,1,73,2,'Aceite Primor 1L',2,9.50,19.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(182,1,73,11,'Papitas Lays 145g',3,4.80,14.40,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(183,1,74,1,'Arroz Costeño 5kg',1,22.00,22.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(184,1,75,6,'Inca Kola 1.5L',5,5.50,27.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(185,1,75,7,'Detergente Sapolio 900g',1,8.90,8.90,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(186,1,75,12,'Chocolate Sublime',3,1.80,5.40,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(187,1,76,10,'Galletas Oreo',2,2.00,4.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(188,1,77,6,'Inca Kola 1.5L',4,5.50,22.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(189,1,77,7,'Detergente Sapolio 900g',3,8.90,26.70,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(190,1,78,2,'Aceite Primor 1L',5,9.50,47.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(191,1,78,5,'Agua San Luis 625ml',3,1.50,4.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(192,1,79,15,'Queso Fresco 500g',4,13.00,52.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(193,1,80,2,'Aceite Primor 1L',3,9.50,28.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(194,1,80,7,'Detergente Sapolio 900g',1,8.90,8.90,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(195,1,81,10,'Galletas Oreo',2,2.00,4.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(196,1,81,14,'Yogurt Gloria 1L',2,6.50,13.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(197,1,82,6,'Inca Kola 1.5L',3,5.50,16.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(198,1,82,9,'Papel Higiénico x4',4,5.00,20.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(199,1,82,12,'Chocolate Sublime',2,1.80,3.60,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(200,1,83,2,'Aceite Primor 1L',5,9.50,47.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(201,1,83,7,'Detergente Sapolio 900g',5,8.90,44.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(202,1,83,9,'Papel Higiénico x4',3,5.00,15.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(203,1,83,15,'Queso Fresco 500g',2,13.00,26.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(204,1,84,4,'Coca-Cola 500ml',4,3.00,12.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(205,1,84,5,'Agua San Luis 625ml',5,1.50,7.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(206,1,84,11,'Papitas Lays 145g',2,4.80,9.60,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(207,1,84,13,'Leche Gloria Tarro',2,4.90,9.80,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(208,1,85,1,'Arroz Costeño 5kg',4,22.00,88.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(209,1,85,5,'Agua San Luis 625ml',1,1.50,1.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(210,1,86,9,'Papel Higiénico x4',4,5.00,20.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(211,1,86,10,'Galletas Oreo',1,2.00,2.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(212,1,86,11,'Papitas Lays 145g',1,4.80,4.80,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(213,1,86,12,'Chocolate Sublime',5,1.80,9.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(214,1,87,1,'Arroz Costeño 5kg',3,22.00,66.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(215,1,88,6,'Inca Kola 1.5L',1,5.50,5.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(216,1,88,11,'Papitas Lays 145g',3,4.80,14.40,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(217,1,89,1,'Arroz Costeño 5kg',5,22.00,110.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(218,1,89,2,'Aceite Primor 1L',4,9.50,38.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(219,1,89,4,'Coca-Cola 500ml',1,3.00,3.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(220,1,89,14,'Yogurt Gloria 1L',4,6.50,26.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(221,1,90,15,'Queso Fresco 500g',2,13.00,26.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(222,1,91,1,'Arroz Costeño 5kg',2,22.00,44.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(223,1,91,12,'Chocolate Sublime',5,1.80,9.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(224,1,92,2,'Aceite Primor 1L',1,9.50,9.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(225,1,92,10,'Galletas Oreo',4,2.00,8.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(226,1,92,12,'Chocolate Sublime',4,1.80,7.20,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(227,1,92,15,'Queso Fresco 500g',5,13.00,65.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(228,1,93,7,'Detergente Sapolio 900g',5,8.90,44.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(229,1,93,9,'Papel Higiénico x4',4,5.00,20.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(230,1,94,9,'Papel Higiénico x4',3,5.00,15.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(231,1,95,6,'Inca Kola 1.5L',2,5.50,11.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(232,1,96,5,'Agua San Luis 625ml',3,1.50,4.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(233,1,96,15,'Queso Fresco 500g',1,13.00,13.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(234,1,97,2,'Aceite Primor 1L',1,9.50,9.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(235,1,97,11,'Papitas Lays 145g',4,4.80,19.20,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(236,1,97,13,'Leche Gloria Tarro',4,4.90,19.60,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(237,1,97,14,'Yogurt Gloria 1L',2,6.50,13.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(238,1,98,12,'Chocolate Sublime',2,1.80,3.60,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(239,1,98,15,'Queso Fresco 500g',1,13.00,13.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(240,1,99,1,'Arroz Costeño 5kg',4,22.00,88.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(241,1,100,10,'Galletas Oreo',2,2.00,4.00,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(242,1,100,12,'Chocolate Sublime',1,1.80,1.80,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(243,1,100,14,'Yogurt Gloria 1L',5,6.50,32.50,'2026-08-17 03:05:17','2026-08-17 03:05:17'),
(244,1,101,9,'Papel Higiénico x4',4,5.00,20.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(245,1,101,12,'Chocolate Sublime',2,1.80,3.60,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(246,1,102,2,'Aceite Primor 1L',4,9.50,38.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(247,1,102,15,'Queso Fresco 500g',5,13.00,65.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(248,1,103,3,'Azúcar Rubia 1kg',5,4.50,22.50,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(249,1,103,7,'Detergente Sapolio 900g',2,8.90,17.80,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(250,1,103,8,'Lejía Clorox 1L',5,4.20,21.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(251,1,103,11,'Papitas Lays 145g',2,4.80,9.60,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(252,1,104,3,'Azúcar Rubia 1kg',1,4.50,4.50,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(253,1,104,5,'Agua San Luis 625ml',1,1.50,1.50,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(254,1,104,9,'Papel Higiénico x4',1,5.00,5.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(255,1,104,11,'Papitas Lays 145g',2,4.80,9.60,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(256,1,105,2,'Aceite Primor 1L',3,9.50,28.50,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(257,1,105,3,'Azúcar Rubia 1kg',3,4.50,13.50,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(258,1,106,4,'Coca-Cola 500ml',4,3.00,12.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(259,1,106,11,'Papitas Lays 145g',4,4.80,19.20,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(260,1,106,12,'Chocolate Sublime',4,1.80,7.20,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(261,1,106,15,'Queso Fresco 500g',4,13.00,52.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(262,1,107,10,'Galletas Oreo',4,2.00,8.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(263,1,107,14,'Yogurt Gloria 1L',4,6.50,26.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(264,1,108,1,'Arroz Costeño 5kg',2,22.00,44.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(265,1,108,4,'Coca-Cola 500ml',5,3.00,15.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(266,1,108,5,'Agua San Luis 625ml',4,1.50,6.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(267,1,108,7,'Detergente Sapolio 900g',5,8.90,44.50,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(268,1,109,7,'Detergente Sapolio 900g',2,8.90,17.80,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(269,1,109,9,'Papel Higiénico x4',3,5.00,15.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(270,1,110,15,'Queso Fresco 500g',2,13.00,26.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(271,1,111,4,'Coca-Cola 500ml',5,3.00,15.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(272,1,111,6,'Inca Kola 1.5L',3,5.50,16.50,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(273,1,111,7,'Detergente Sapolio 900g',3,8.90,26.70,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(274,1,111,13,'Leche Gloria Tarro',4,4.90,19.60,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(275,1,112,8,'Lejía Clorox 1L',3,4.20,12.60,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(276,1,112,15,'Queso Fresco 500g',3,13.00,39.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(277,1,113,6,'Inca Kola 1.5L',3,5.50,16.50,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(278,1,113,14,'Yogurt Gloria 1L',5,6.50,32.50,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(279,1,113,15,'Queso Fresco 500g',3,13.00,39.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(280,1,114,3,'Azúcar Rubia 1kg',2,4.50,9.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(281,1,114,15,'Queso Fresco 500g',2,13.00,26.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(282,1,115,9,'Papel Higiénico x4',2,5.00,10.00,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(283,1,116,5,'Agua San Luis 625ml',5,1.50,7.50,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(284,1,116,6,'Inca Kola 1.5L',1,5.50,5.50,'2026-08-17 03:05:18','2026-08-17 03:05:18'),
(285,1,117,4,'Coca-Cola 500ml',2,3.00,6.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(286,1,117,9,'Papel Higiénico x4',5,5.00,25.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(287,1,118,15,'Queso Fresco 500g',2,13.00,26.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(288,1,118,23,'Alimento para perro 2kg',5,22.50,112.50,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(289,1,119,11,'Papitas Lays 145g',5,4.80,24.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(290,1,120,5,'Agua San Luis 625ml',4,1.50,6.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(291,1,121,6,'Inca Kola 1.5L',5,5.50,27.50,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(292,1,121,19,'Shampoo Head&Shoulders 400ml',4,14.90,59.60,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(293,1,121,24,'Foco LED 9W',5,6.00,30.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(294,1,122,6,'Inca Kola 1.5L',2,5.50,11.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(295,1,122,10,'Galletas Oreo',3,2.00,6.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(296,1,122,20,'Jabón Dove x3',2,6.90,13.80,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(297,1,123,2,'Aceite Primor 1L',3,9.50,28.50,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(298,1,123,7,'Detergente Sapolio 900g',1,8.90,8.90,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(299,1,124,8,'Lejía Clorox 1L',1,4.20,4.20,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(300,1,124,19,'Shampoo Head&Shoulders 400ml',1,14.90,14.90,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(301,1,124,25,'Cuaderno A4 100h',4,4.50,18.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(302,1,125,6,'Inca Kola 1.5L',2,5.50,11.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(303,1,126,4,'Coca-Cola 500ml',5,3.00,15.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(304,1,126,19,'Shampoo Head&Shoulders 400ml',1,14.90,14.90,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(305,1,126,20,'Jabón Dove x3',2,6.90,13.80,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(306,1,127,2,'Aceite Primor 1L',2,9.50,19.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(307,1,128,5,'Agua San Luis 625ml',4,1.50,6.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(308,1,128,7,'Detergente Sapolio 900g',3,8.90,26.70,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(309,1,129,4,'Coca-Cola 500ml',4,3.00,12.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(310,1,129,8,'Lejía Clorox 1L',5,4.20,21.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(311,1,129,9,'Papel Higiénico x4',4,5.00,20.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(312,1,129,10,'Galletas Oreo',5,2.00,10.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(313,1,130,3,'Azúcar Rubia 1kg',5,4.50,22.50,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(314,1,131,2,'Aceite Primor 1L',4,9.50,38.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(315,1,131,22,'Nuggets de pollo 1kg',3,17.90,53.70,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(316,1,131,27,'Pechuga de pollo (kg)',2,12.90,25.80,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(317,1,132,20,'Jabón Dove x3',1,6.90,6.90,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(318,1,133,9,'Papel Higiénico x4',5,5.00,25.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(319,1,133,11,'Papitas Lays 145g',4,4.80,19.20,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(320,1,133,24,'Foco LED 9W',3,6.00,18.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(321,1,134,6,'Inca Kola 1.5L',4,5.50,22.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(322,1,134,7,'Detergente Sapolio 900g',4,8.90,35.60,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(323,1,134,14,'Yogurt Gloria 1L',5,6.50,32.50,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(324,1,134,24,'Foco LED 9W',3,6.00,18.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(325,1,135,4,'Coca-Cola 500ml',4,3.00,12.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(326,1,135,11,'Papitas Lays 145g',2,4.80,9.60,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(327,1,135,12,'Chocolate Sublime',5,1.80,9.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(328,1,136,27,'Pechuga de pollo (kg)',1,12.90,12.90,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(329,1,137,3,'Azúcar Rubia 1kg',4,4.50,18.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(330,1,137,4,'Coca-Cola 500ml',5,3.00,15.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(331,1,137,14,'Yogurt Gloria 1L',5,6.50,32.50,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(332,1,138,24,'Foco LED 9W',1,6.00,6.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(333,1,139,5,'Agua San Luis 625ml',2,1.50,3.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(334,1,139,11,'Papitas Lays 145g',5,4.80,24.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(335,1,139,15,'Queso Fresco 500g',3,13.00,39.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(336,1,139,22,'Nuggets de pollo 1kg',1,17.90,17.90,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(337,1,140,8,'Lejía Clorox 1L',2,4.20,8.40,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(338,1,140,13,'Leche Gloria Tarro',3,4.90,14.70,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(339,1,140,25,'Cuaderno A4 100h',2,4.50,9.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(340,1,141,2,'Aceite Primor 1L',2,9.50,19.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(341,1,141,25,'Cuaderno A4 100h',4,4.50,18.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(342,1,142,1,'Arroz Costeño 5kg',1,22.00,22.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(343,1,142,11,'Papitas Lays 145g',2,4.80,9.60,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(344,1,142,12,'Chocolate Sublime',5,1.80,9.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(345,1,143,3,'Azúcar Rubia 1kg',3,4.50,13.50,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(346,1,143,23,'Alimento para perro 2kg',2,22.50,45.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(347,1,144,25,'Cuaderno A4 100h',4,4.50,18.00,'2026-08-17 03:05:25','2026-08-17 03:05:25'),
(348,1,145,9,'Papel Higiénico x4',4,5.00,20.00,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(349,1,145,19,'Shampoo Head&Shoulders 400ml',1,14.90,14.90,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(350,1,146,4,'Coca-Cola 500ml',2,3.00,6.00,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(351,1,146,10,'Galletas Oreo',3,2.00,6.00,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(352,1,146,27,'Pechuga de pollo (kg)',4,12.90,51.60,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(353,1,147,14,'Yogurt Gloria 1L',5,6.50,32.50,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(354,1,148,24,'Foco LED 9W',2,6.00,12.00,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(355,1,148,27,'Pechuga de pollo (kg)',1,12.90,12.90,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(356,1,149,13,'Leche Gloria Tarro',1,4.90,4.90,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(357,1,150,22,'Nuggets de pollo 1kg',1,17.90,17.90,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(358,1,150,24,'Foco LED 9W',2,6.00,12.00,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(359,1,150,25,'Cuaderno A4 100h',1,4.50,4.50,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(360,1,151,27,'Pechuga de pollo (kg)',4,12.90,51.60,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(361,1,152,1,'Arroz Costeño 5kg',4,22.00,88.00,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(362,1,152,5,'Agua San Luis 625ml',5,1.50,7.50,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(363,1,152,6,'Inca Kola 1.5L',1,5.50,5.50,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(364,1,153,19,'Shampoo Head&Shoulders 400ml',3,14.90,44.70,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(365,1,154,27,'Pechuga de pollo (kg)',4,12.90,51.60,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(366,1,155,20,'Jabón Dove x3',2,6.90,13.80,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(367,1,156,11,'Papitas Lays 145g',5,4.80,24.00,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(368,1,156,12,'Chocolate Sublime',5,1.80,9.00,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(369,1,156,14,'Yogurt Gloria 1L',4,6.50,26.00,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(370,1,157,27,'Pechuga de pollo (kg)',2,12.90,25.80,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(371,1,158,1,'Arroz Costeño 5kg',3,22.00,66.00,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(372,1,158,12,'Chocolate Sublime',4,1.80,7.20,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(373,1,158,25,'Cuaderno A4 100h',3,4.50,13.50,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(374,1,159,24,'Foco LED 9W',1,6.00,6.00,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(375,1,160,12,'Chocolate Sublime',4,1.80,7.20,'2026-08-17 03:05:26','2026-08-17 03:05:26'),
(376,1,160,19,'Shampoo Head&Shoulders 400ml',3,14.90,44.70,'2026-08-17 03:05:26','2026-08-17 03:05:26');
/*!40000 ALTER TABLE `venta_detalles` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned DEFAULT NULL,
  `numero` varchar(191) NOT NULL,
  `cliente_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `tipo_comprobante` varchar(191) NOT NULL DEFAULT 'TICKET',
  `fe_serie` varchar(8) DEFAULT NULL,
  `fe_correlativo` bigint(20) unsigned DEFAULT NULL,
  `fe_estado` varchar(20) NOT NULL DEFAULT 'NO_APLICA',
  `fe_hash` varchar(191) DEFAULT NULL,
  `fe_ticket` varchar(191) DEFAULT NULL,
  `fe_observacion` text DEFAULT NULL,
  `fe_xml_ruta` varchar(191) DEFAULT NULL,
  `fe_cdr_ruta` varchar(191) DEFAULT NULL,
  `fe_enviado_en` timestamp NULL DEFAULT NULL,
  `fe_baja_ticket` varchar(191) DEFAULT NULL,
  `fe_baja_estado` varchar(20) DEFAULT NULL,
  `fe_baja_motivo` varchar(191) DEFAULT NULL,
  `fe_nc_serie` varchar(8) DEFAULT NULL,
  `fe_nc_correlativo` bigint(20) unsigned DEFAULT NULL,
  `fe_nc_estado` varchar(20) DEFAULT NULL,
  `fe_nc_hash` varchar(191) DEFAULT NULL,
  `fe_nc_motivo` varchar(191) DEFAULT NULL,
  `fe_nc_xml_ruta` varchar(191) DEFAULT NULL,
  `fe_nc_cdr_ruta` varchar(191) DEFAULT NULL,
  `fe_anulado_en` timestamp NULL DEFAULT NULL,
  `fe_email_enviado_en` timestamp NULL DEFAULT NULL,
  `fe_resumen_estado` varchar(20) DEFAULT NULL,
  `fe_resumen_id` bigint(20) unsigned DEFAULT NULL,
  `metodo_pago` varchar(191) NOT NULL DEFAULT 'EFECTIVO',
  `subtotal` decimal(12,2) NOT NULL DEFAULT 0.00,
  `impuesto` decimal(12,2) NOT NULL DEFAULT 0.00,
  `descuento` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `efectivo_recibido` decimal(12,2) DEFAULT NULL,
  `vuelto` decimal(12,2) DEFAULT NULL,
  `estado` varchar(191) NOT NULL DEFAULT 'COMPLETADA',
  `observacion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ventas_numero_unique` (`numero`),
  UNIQUE KEY `ventas_fe_correlativo_unique` (`empresa_id`,`fe_serie`,`fe_correlativo`),
  UNIQUE KEY `ventas_fe_nc_correlativo_unique` (`empresa_id`,`fe_nc_serie`,`fe_nc_correlativo`),
  KEY `ventas_cliente_id_foreign` (`cliente_id`),
  KEY `ventas_user_id_foreign` (`user_id`),
  KEY `ventas_empresa_id_index` (`empresa_id`),
  CONSTRAINT `ventas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE SET NULL,
  CONSTRAINT `ventas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES
(1,1,'V-000001',3,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',45.80,8.24,0.00,54.04,NULL,NULL,'COMPLETADA',NULL,'2026-07-19 00:23:00','2026-08-17 03:05:16'),
(2,1,'V-000002',2,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',41.10,7.40,0.00,48.50,NULL,NULL,'COMPLETADA',NULL,'2026-07-18 17:49:00','2026-08-17 03:05:16'),
(3,1,'V-000003',1,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',132.40,23.83,0.00,156.23,NULL,NULL,'COMPLETADA',NULL,'2026-07-18 18:36:00','2026-08-17 03:05:16'),
(4,1,'V-000004',2,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',67.90,12.22,0.00,80.12,NULL,NULL,'COMPLETADA',NULL,'2026-07-18 13:46:00','2026-08-17 03:05:16'),
(5,1,'V-000005',3,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',48.80,8.78,0.00,57.58,NULL,NULL,'COMPLETADA',NULL,'2026-07-19 14:53:00','2026-08-17 03:05:16'),
(6,1,'V-000006',2,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',102.50,18.45,0.00,120.95,NULL,NULL,'COMPLETADA',NULL,'2026-07-19 18:42:00','2026-08-17 03:05:16'),
(7,1,'V-000007',1,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',3.00,0.54,0.00,3.54,NULL,NULL,'COMPLETADA',NULL,'2026-07-19 22:06:00','2026-08-17 03:05:16'),
(8,1,'V-000008',4,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',134.50,24.21,0.00,158.71,NULL,NULL,'COMPLETADA',NULL,'2026-07-20 01:50:00','2026-08-17 03:05:16'),
(9,1,'V-000009',4,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',29.70,5.35,0.00,35.05,NULL,NULL,'COMPLETADA',NULL,'2026-07-20 01:53:00','2026-08-17 03:05:16'),
(10,1,'V-000010',5,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',15.00,2.70,0.00,17.70,NULL,NULL,'COMPLETADA',NULL,'2026-07-20 21:36:00','2026-08-17 03:05:16'),
(11,1,'V-000011',4,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',19.40,3.49,0.00,22.89,NULL,NULL,'COMPLETADA',NULL,'2026-07-20 21:46:00','2026-08-17 03:05:16'),
(12,1,'V-000012',1,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',20.90,3.76,0.00,24.66,NULL,NULL,'COMPLETADA',NULL,'2026-07-20 17:58:00','2026-08-17 03:05:16'),
(13,1,'V-000013',4,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',52.00,9.36,0.00,61.36,NULL,NULL,'COMPLETADA',NULL,'2026-07-20 20:33:00','2026-08-17 03:05:16'),
(14,1,'V-000014',1,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',70.80,12.74,0.00,83.54,NULL,NULL,'COMPLETADA',NULL,'2026-07-20 23:40:00','2026-08-17 03:05:16'),
(15,1,'V-000015',5,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',87.10,15.68,0.00,102.78,NULL,NULL,'COMPLETADA',NULL,'2026-07-20 19:50:00','2026-08-17 03:05:16'),
(16,1,'V-000016',1,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',42.80,7.70,0.00,50.50,NULL,NULL,'COMPLETADA',NULL,'2026-07-21 15:40:00','2026-08-17 03:05:16'),
(17,1,'V-000017',3,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',111.10,20.00,0.00,131.10,NULL,NULL,'COMPLETADA',NULL,'2026-07-22 01:10:00','2026-08-17 03:05:16'),
(18,1,'V-000018',3,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',136.70,24.61,0.00,161.31,NULL,NULL,'COMPLETADA',NULL,'2026-07-22 00:59:00','2026-08-17 03:05:16'),
(19,1,'V-000019',3,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',47.00,8.46,0.00,55.46,NULL,NULL,'COMPLETADA',NULL,'2026-07-21 14:51:00','2026-08-17 03:05:16'),
(20,1,'V-000020',2,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',83.60,15.05,0.00,98.65,NULL,NULL,'COMPLETADA',NULL,'2026-07-22 00:29:00','2026-08-17 03:05:16'),
(21,1,'V-000021',5,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',48.80,8.78,0.00,57.58,NULL,NULL,'COMPLETADA',NULL,'2026-07-21 20:40:00','2026-08-17 03:05:17'),
(22,1,'V-000022',3,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',36.00,6.48,0.00,42.48,NULL,NULL,'COMPLETADA',NULL,'2026-07-22 21:07:00','2026-08-17 03:05:17'),
(23,1,'V-000023',5,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',27.50,4.95,0.00,32.45,NULL,NULL,'COMPLETADA',NULL,'2026-07-22 18:03:00','2026-08-17 03:05:17'),
(24,1,'V-000024',1,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',59.80,10.76,0.00,70.56,NULL,NULL,'COMPLETADA',NULL,'2026-07-22 21:21:00','2026-08-17 03:05:17'),
(25,1,'V-000025',5,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',88.00,15.84,0.00,103.84,NULL,NULL,'COMPLETADA',NULL,'2026-07-23 00:16:00','2026-08-17 03:05:17'),
(26,1,'V-000026',1,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',98.50,17.73,0.00,116.23,NULL,NULL,'COMPLETADA',NULL,'2026-07-22 16:15:00','2026-08-17 03:05:17'),
(27,1,'V-000027',4,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',21.90,3.94,0.00,25.84,NULL,NULL,'COMPLETADA',NULL,'2026-07-23 13:14:00','2026-08-17 03:05:17'),
(28,1,'V-000028',2,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',4.00,0.72,0.00,4.72,NULL,NULL,'COMPLETADA',NULL,'2026-07-23 20:38:00','2026-08-17 03:05:17'),
(29,1,'V-000029',2,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',104.40,18.79,0.00,123.19,NULL,NULL,'COMPLETADA',NULL,'2026-07-23 22:33:00','2026-08-17 03:05:17'),
(30,1,'V-000030',5,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',17.00,3.06,0.00,20.06,NULL,NULL,'COMPLETADA',NULL,'2026-07-23 21:32:00','2026-08-17 03:05:17'),
(31,1,'V-000031',2,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',92.80,16.70,0.00,109.50,NULL,NULL,'COMPLETADA',NULL,'2026-07-23 15:14:00','2026-08-17 03:05:17'),
(32,1,'V-000032',4,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',3.30,0.59,0.00,3.89,NULL,NULL,'COMPLETADA',NULL,'2026-07-23 16:55:00','2026-08-17 03:05:17'),
(33,1,'V-000033',3,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',114.50,20.61,0.00,135.11,NULL,NULL,'COMPLETADA',NULL,'2026-07-24 16:51:00','2026-08-17 03:05:17'),
(34,1,'V-000034',3,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',67.70,12.19,0.00,79.89,NULL,NULL,'COMPLETADA',NULL,'2026-07-25 17:14:00','2026-08-17 03:05:17'),
(35,1,'V-000035',2,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',16.60,2.99,0.00,19.59,NULL,NULL,'COMPLETADA',NULL,'2026-07-25 19:02:00','2026-08-17 03:05:17'),
(36,1,'V-000036',3,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',22.50,4.05,0.00,26.55,NULL,NULL,'COMPLETADA',NULL,'2026-07-25 23:17:00','2026-08-17 03:05:17'),
(37,1,'V-000037',4,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',46.00,8.28,0.00,54.28,NULL,NULL,'COMPLETADA',NULL,'2026-07-25 16:31:00','2026-08-17 03:05:17'),
(38,1,'V-000038',1,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',11.00,1.98,0.00,12.98,NULL,NULL,'COMPLETADA',NULL,'2026-07-26 01:00:00','2026-08-17 03:05:17'),
(39,1,'V-000039',2,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',38.00,6.84,0.00,44.84,NULL,NULL,'COMPLETADA',NULL,'2026-07-25 20:03:00','2026-08-17 03:05:17'),
(40,1,'V-000040',4,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',145.50,26.19,0.00,171.69,NULL,NULL,'COMPLETADA',NULL,'2026-07-26 14:48:00','2026-08-17 03:05:17'),
(41,1,'V-000041',2,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',73.00,13.14,0.00,86.14,NULL,NULL,'COMPLETADA',NULL,'2026-07-27 19:31:00','2026-08-17 03:05:17'),
(42,1,'V-000042',1,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',13.50,2.43,0.00,15.93,NULL,NULL,'COMPLETADA',NULL,'2026-07-28 00:09:00','2026-08-17 03:05:17'),
(43,1,'V-000043',3,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',4.50,0.81,0.00,5.31,NULL,NULL,'COMPLETADA',NULL,'2026-07-28 01:40:00','2026-08-17 03:05:17'),
(44,1,'V-000044',1,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',39.00,7.02,0.00,46.02,NULL,NULL,'COMPLETADA',NULL,'2026-07-27 22:20:00','2026-08-17 03:05:17'),
(45,1,'V-000045',1,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',9.00,1.62,0.00,10.62,NULL,NULL,'COMPLETADA',NULL,'2026-07-29 00:33:00','2026-08-17 03:05:17'),
(46,1,'V-000046',3,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',146.50,26.37,0.00,172.87,NULL,NULL,'COMPLETADA',NULL,'2026-07-28 15:30:00','2026-08-17 03:05:17'),
(47,1,'V-000047',1,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',47.50,8.55,0.00,56.05,NULL,NULL,'COMPLETADA',NULL,'2026-07-29 14:39:00','2026-08-17 03:05:17'),
(48,1,'V-000048',4,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',14.40,2.59,0.00,16.99,NULL,NULL,'COMPLETADA',NULL,'2026-07-30 00:47:00','2026-08-17 03:05:17'),
(49,1,'V-000049',2,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',58.40,10.51,0.00,68.91,NULL,NULL,'COMPLETADA',NULL,'2026-07-29 19:39:00','2026-08-17 03:05:17'),
(50,1,'V-000050',2,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',48.70,8.77,0.00,57.47,NULL,NULL,'COMPLETADA',NULL,'2026-07-29 23:58:00','2026-08-17 03:05:17'),
(51,1,'V-000051',1,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',51.10,9.20,0.00,60.30,NULL,NULL,'COMPLETADA',NULL,'2026-07-30 01:20:00','2026-08-17 03:05:17'),
(52,1,'V-000052',4,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',56.80,10.22,0.00,67.02,NULL,NULL,'COMPLETADA',NULL,'2026-07-29 17:25:00','2026-08-17 03:05:17'),
(53,1,'V-000053',3,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',115.20,20.74,0.00,135.94,NULL,NULL,'COMPLETADA',NULL,'2026-07-30 13:23:00','2026-08-17 03:05:17'),
(54,1,'V-000054',4,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',27.60,4.97,0.00,32.57,NULL,NULL,'COMPLETADA',NULL,'2026-07-30 17:34:00','2026-08-17 03:05:17'),
(55,1,'V-000055',4,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',107.60,19.37,0.00,126.97,NULL,NULL,'COMPLETADA',NULL,'2026-07-30 19:56:00','2026-08-17 03:05:17'),
(56,1,'V-000056',3,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',35.50,6.39,0.00,41.89,NULL,NULL,'COMPLETADA',NULL,'2026-07-30 20:08:00','2026-08-17 03:05:17'),
(57,1,'V-000057',4,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',26.70,4.81,0.00,31.51,NULL,NULL,'COMPLETADA',NULL,'2026-07-30 13:51:00','2026-08-17 03:05:17'),
(58,1,'V-000058',3,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',25.00,4.50,0.00,29.50,NULL,NULL,'COMPLETADA',NULL,'2026-07-30 19:40:00','2026-08-17 03:05:17'),
(59,1,'V-000059',1,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',85.50,15.39,0.00,100.89,NULL,NULL,'COMPLETADA',NULL,'2026-07-31 17:33:00','2026-08-17 03:05:17'),
(60,1,'V-000060',4,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',26.70,4.81,0.00,31.51,NULL,NULL,'COMPLETADA',NULL,'2026-07-31 22:14:00','2026-08-17 03:05:17'),
(61,1,'V-000061',3,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',51.70,9.31,0.00,61.01,NULL,NULL,'COMPLETADA',NULL,'2026-08-01 00:46:00','2026-08-17 03:05:17'),
(62,1,'V-000062',3,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',100.70,18.13,0.00,118.83,NULL,NULL,'COMPLETADA',NULL,'2026-07-31 23:24:00','2026-08-17 03:05:17'),
(63,1,'V-000063',1,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',117.50,21.15,0.00,138.65,NULL,NULL,'COMPLETADA',NULL,'2026-08-01 01:45:00','2026-08-17 03:05:17'),
(64,1,'V-000064',2,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',67.60,12.17,0.00,79.77,NULL,NULL,'COMPLETADA',NULL,'2026-07-31 21:06:00','2026-08-17 03:05:17'),
(65,1,'V-000065',4,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',4.50,0.81,0.00,5.31,NULL,NULL,'COMPLETADA',NULL,'2026-08-01 13:35:00','2026-08-17 03:05:17'),
(66,1,'V-000066',4,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',107.00,19.26,0.00,126.26,NULL,NULL,'COMPLETADA',NULL,'2026-08-01 22:07:00','2026-08-17 03:05:17'),
(67,1,'V-000067',4,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',44.50,8.01,0.00,52.51,NULL,NULL,'COMPLETADA',NULL,'2026-08-01 15:07:00','2026-08-17 03:05:17'),
(68,1,'V-000068',5,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',85.80,15.44,0.00,101.24,NULL,NULL,'COMPLETADA',NULL,'2026-08-02 19:31:00','2026-08-17 03:05:17'),
(69,1,'V-000069',2,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',57.70,10.39,0.00,68.09,NULL,NULL,'COMPLETADA',NULL,'2026-08-03 00:29:00','2026-08-17 03:05:17'),
(70,1,'V-000070',5,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',64.40,11.59,0.00,75.99,NULL,NULL,'COMPLETADA',NULL,'2026-08-04 00:13:00','2026-08-17 03:05:17'),
(71,1,'V-000071',2,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',125.50,22.59,0.00,148.09,NULL,NULL,'COMPLETADA',NULL,'2026-08-03 16:18:00','2026-08-17 03:05:17'),
(72,1,'V-000072',1,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',44.00,7.92,0.00,51.92,NULL,NULL,'COMPLETADA',NULL,'2026-08-03 16:48:00','2026-08-17 03:05:17'),
(73,1,'V-000073',4,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',33.40,6.01,0.00,39.41,NULL,NULL,'COMPLETADA',NULL,'2026-08-03 13:12:00','2026-08-17 03:05:17'),
(74,1,'V-000074',4,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',22.00,3.96,0.00,25.96,NULL,NULL,'COMPLETADA',NULL,'2026-08-04 16:23:00','2026-08-17 03:05:17'),
(75,1,'V-000075',5,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',41.80,7.52,0.00,49.32,NULL,NULL,'COMPLETADA',NULL,'2026-08-04 22:19:00','2026-08-17 03:05:17'),
(76,1,'V-000076',4,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',4.00,0.72,0.00,4.72,NULL,NULL,'COMPLETADA',NULL,'2026-08-05 18:17:00','2026-08-17 03:05:17'),
(77,1,'V-000077',5,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',48.70,8.77,0.00,57.47,NULL,NULL,'COMPLETADA',NULL,'2026-08-05 21:27:00','2026-08-17 03:05:17'),
(78,1,'V-000078',1,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',52.00,9.36,0.00,61.36,NULL,NULL,'COMPLETADA',NULL,'2026-08-05 14:04:00','2026-08-17 03:05:17'),
(79,1,'V-000079',2,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',52.00,9.36,0.00,61.36,NULL,NULL,'COMPLETADA',NULL,'2026-08-05 22:50:00','2026-08-17 03:05:17'),
(80,1,'V-000080',5,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',37.40,6.73,0.00,44.13,NULL,NULL,'COMPLETADA',NULL,'2026-08-05 15:59:00','2026-08-17 03:05:17'),
(81,1,'V-000081',5,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',17.00,3.06,0.00,20.06,NULL,NULL,'COMPLETADA',NULL,'2026-08-06 01:12:00','2026-08-17 03:05:17'),
(82,1,'V-000082',2,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',40.10,7.22,0.00,47.32,NULL,NULL,'COMPLETADA',NULL,'2026-08-06 23:43:00','2026-08-17 03:05:17'),
(83,1,'V-000083',5,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',133.00,23.94,0.00,156.94,NULL,NULL,'COMPLETADA',NULL,'2026-08-06 22:39:00','2026-08-17 03:05:17'),
(84,1,'V-000084',1,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',38.90,7.00,0.00,45.90,NULL,NULL,'COMPLETADA',NULL,'2026-08-06 20:47:00','2026-08-17 03:05:17'),
(85,1,'V-000085',3,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',89.50,16.11,0.00,105.61,NULL,NULL,'COMPLETADA',NULL,'2026-08-06 16:12:00','2026-08-17 03:05:17'),
(86,1,'V-000086',3,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',35.80,6.44,0.00,42.24,NULL,NULL,'COMPLETADA',NULL,'2026-08-06 19:09:00','2026-08-17 03:05:17'),
(87,1,'V-000087',5,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',66.00,11.88,0.00,77.88,NULL,NULL,'COMPLETADA',NULL,'2026-08-06 19:02:00','2026-08-17 03:05:17'),
(88,1,'V-000088',1,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',19.90,3.58,0.00,23.48,NULL,NULL,'COMPLETADA',NULL,'2026-08-08 00:22:00','2026-08-17 03:05:17'),
(89,1,'V-000089',3,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',177.00,31.86,0.00,208.86,NULL,NULL,'COMPLETADA',NULL,'2026-08-08 01:43:00','2026-08-17 03:05:17'),
(90,1,'V-000090',5,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',26.00,4.68,0.00,30.68,NULL,NULL,'COMPLETADA',NULL,'2026-08-08 23:58:00','2026-08-17 03:05:17'),
(91,1,'V-000091',4,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',53.00,9.54,0.00,62.54,NULL,NULL,'COMPLETADA',NULL,'2026-08-08 16:13:00','2026-08-17 03:05:17'),
(92,1,'V-000092',3,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',89.70,16.15,0.00,105.85,NULL,NULL,'COMPLETADA',NULL,'2026-08-10 00:56:00','2026-08-17 03:05:17'),
(93,1,'V-000093',1,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',64.50,11.61,0.00,76.11,NULL,NULL,'COMPLETADA',NULL,'2026-08-09 19:18:00','2026-08-17 03:05:17'),
(94,1,'V-000094',5,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',15.00,2.70,0.00,17.70,NULL,NULL,'COMPLETADA',NULL,'2026-08-09 21:14:00','2026-08-17 03:05:17'),
(95,1,'V-000095',4,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',11.00,1.98,0.00,12.98,NULL,NULL,'COMPLETADA',NULL,'2026-08-10 16:23:00','2026-08-17 03:05:17'),
(96,1,'V-000096',3,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',17.50,3.15,0.00,20.65,NULL,NULL,'COMPLETADA',NULL,'2026-08-10 22:56:00','2026-08-17 03:05:17'),
(97,1,'V-000097',2,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',61.30,11.03,0.00,72.33,NULL,NULL,'COMPLETADA',NULL,'2026-08-11 00:42:00','2026-08-17 03:05:17'),
(98,1,'V-000098',5,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',16.60,2.99,0.00,19.59,NULL,NULL,'COMPLETADA',NULL,'2026-08-10 15:03:00','2026-08-17 03:05:17'),
(99,1,'V-000099',2,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',88.00,15.84,0.00,103.84,NULL,NULL,'COMPLETADA',NULL,'2026-08-10 21:20:00','2026-08-17 03:05:17'),
(100,1,'V-000100',1,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',38.30,6.89,0.00,45.19,NULL,NULL,'COMPLETADA',NULL,'2026-08-11 22:48:00','2026-08-17 03:05:17'),
(101,1,'V-000101',1,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',23.60,4.25,0.00,27.85,NULL,NULL,'COMPLETADA',NULL,'2026-08-12 01:56:00','2026-08-17 03:05:18'),
(102,1,'V-000102',5,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',103.00,18.54,0.00,121.54,NULL,NULL,'COMPLETADA',NULL,'2026-08-12 21:53:00','2026-08-17 03:05:18'),
(103,1,'V-000103',1,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',70.90,12.76,0.00,83.66,NULL,NULL,'COMPLETADA',NULL,'2026-08-13 15:11:00','2026-08-17 03:05:18'),
(104,1,'V-000104',4,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',20.60,3.71,0.00,24.31,NULL,NULL,'COMPLETADA',NULL,'2026-08-13 20:17:00','2026-08-17 03:05:18'),
(105,1,'V-000105',5,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',42.00,7.56,0.00,49.56,NULL,NULL,'COMPLETADA',NULL,'2026-08-14 00:40:00','2026-08-17 03:05:18'),
(106,1,'V-000106',3,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',90.40,16.27,0.00,106.67,NULL,NULL,'COMPLETADA',NULL,'2026-08-14 16:36:00','2026-08-17 03:05:18'),
(107,1,'V-000107',5,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',34.00,6.12,0.00,40.12,NULL,NULL,'COMPLETADA',NULL,'2026-08-14 23:25:00','2026-08-17 03:05:18'),
(108,1,'V-000108',4,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',109.50,19.71,0.00,129.21,NULL,NULL,'COMPLETADA',NULL,'2026-08-14 18:57:00','2026-08-17 03:05:18'),
(109,1,'V-000109',4,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',32.80,5.90,0.00,38.70,NULL,NULL,'COMPLETADA',NULL,'2026-08-14 20:15:00','2026-08-17 03:05:18'),
(110,1,'V-000110',3,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',26.00,4.68,0.00,30.68,NULL,NULL,'COMPLETADA',NULL,'2026-08-14 22:51:00','2026-08-17 03:05:18'),
(111,1,'V-000111',5,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',77.80,14.00,0.00,91.80,NULL,NULL,'COMPLETADA',NULL,'2026-08-14 17:54:00','2026-08-17 03:05:18'),
(112,1,'V-000112',4,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',51.60,9.29,0.00,60.89,NULL,NULL,'COMPLETADA',NULL,'2026-08-15 14:09:00','2026-08-17 03:05:18'),
(113,1,'V-000113',5,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',88.00,15.84,0.00,103.84,NULL,NULL,'COMPLETADA',NULL,'2026-08-15 15:44:00','2026-08-17 03:05:18'),
(114,1,'V-000114',4,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',35.00,6.30,0.00,41.30,NULL,NULL,'COMPLETADA',NULL,'2026-08-15 23:39:00','2026-08-17 03:05:18'),
(115,1,'V-000115',3,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',10.00,1.80,0.00,11.80,NULL,NULL,'COMPLETADA',NULL,'2026-08-17 01:41:00','2026-08-17 03:05:18'),
(116,1,'V-000116',5,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',13.00,2.34,0.00,15.34,NULL,NULL,'COMPLETADA',NULL,'2026-08-16 13:50:00','2026-08-17 03:05:18'),
(117,1,'V-D260816220525-0001',7,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',31.00,5.58,0.00,36.58,40.00,3.42,'COMPLETADA',NULL,'2026-08-03 19:59:00','2026-08-17 03:05:25'),
(118,1,'V-D260816220525-0002',9,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',138.50,24.93,0.00,163.43,NULL,NULL,'COMPLETADA',NULL,'2026-08-03 16:43:00','2026-08-17 03:05:25'),
(119,1,'V-D260816220525-0003',11,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',24.00,4.32,0.00,28.32,NULL,NULL,'COMPLETADA',NULL,'2026-08-04 01:28:00','2026-08-17 03:05:25'),
(120,1,'V-D260816220525-0004',8,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',6.00,1.08,0.00,7.08,NULL,NULL,'COMPLETADA',NULL,'2026-08-04 21:18:00','2026-08-17 03:05:25'),
(121,1,'V-D260816220525-0005',1,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',117.10,21.08,0.00,138.18,NULL,NULL,'COMPLETADA',NULL,'2026-08-06 01:07:00','2026-08-17 03:05:25'),
(122,1,'V-D260816220525-0006',8,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',30.80,5.54,0.00,36.34,NULL,NULL,'COMPLETADA',NULL,'2026-08-06 16:36:00','2026-08-17 03:05:25'),
(123,1,'V-D260816220525-0007',10,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',37.40,6.73,0.00,44.13,50.00,5.87,'COMPLETADA',NULL,'2026-08-06 15:04:00','2026-08-17 03:05:25'),
(124,1,'V-D260816220525-0008',2,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',37.10,6.68,0.00,43.78,NULL,NULL,'COMPLETADA',NULL,'2026-08-07 15:33:00','2026-08-17 03:05:25'),
(125,1,'V-D260816220525-0009',12,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',11.00,1.98,0.00,12.98,NULL,NULL,'COMPLETADA',NULL,'2026-08-07 17:35:00','2026-08-17 03:05:25'),
(126,1,'V-D260816220525-0010',14,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',43.70,7.87,0.00,51.57,NULL,NULL,'COMPLETADA',NULL,'2026-08-07 22:55:00','2026-08-17 03:05:25'),
(127,1,'V-D260816220525-0011',14,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',19.00,3.42,0.00,22.42,30.00,7.58,'COMPLETADA',NULL,'2026-08-08 16:00:00','2026-08-17 03:05:25'),
(128,1,'V-D260816220525-0012',11,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',32.70,5.89,0.00,38.59,NULL,NULL,'COMPLETADA',NULL,'2026-08-08 15:45:00','2026-08-17 03:05:25'),
(129,1,'V-D260816220525-0013',1,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',63.00,11.34,0.00,74.34,NULL,NULL,'COMPLETADA',NULL,'2026-08-09 16:57:00','2026-08-17 03:05:25'),
(130,1,'V-D260816220525-0014',1,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',22.50,4.05,0.00,26.55,NULL,NULL,'COMPLETADA',NULL,'2026-08-09 16:53:00','2026-08-17 03:05:25'),
(131,1,'V-D260816220525-0015',10,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',117.50,21.15,0.00,138.65,NULL,NULL,'COMPLETADA',NULL,'2026-08-10 21:36:00','2026-08-17 03:05:25'),
(132,1,'V-D260816220525-0016',9,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',6.90,1.24,0.00,8.14,10.00,1.86,'COMPLETADA',NULL,'2026-08-11 01:15:00','2026-08-17 03:05:25'),
(133,1,'V-D260816220525-0017',7,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',62.20,11.20,0.00,73.40,NULL,NULL,'COMPLETADA',NULL,'2026-08-10 18:27:00','2026-08-17 03:05:25'),
(134,1,'V-D260816220525-0018',7,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',108.10,19.46,0.00,127.56,NULL,NULL,'COMPLETADA',NULL,'2026-08-11 20:15:00','2026-08-17 03:05:25'),
(135,1,'V-D260816220525-0019',1,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',30.60,5.51,0.00,36.11,40.00,3.89,'COMPLETADA',NULL,'2026-08-12 00:39:00','2026-08-17 03:05:25'),
(136,1,'V-D260816220525-0020',5,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',12.90,2.32,0.00,15.22,NULL,NULL,'COMPLETADA',NULL,'2026-08-13 01:36:00','2026-08-17 03:05:25'),
(137,1,'V-D260816220525-0021',14,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',65.50,11.79,0.00,77.29,NULL,NULL,'COMPLETADA',NULL,'2026-08-12 19:03:00','2026-08-17 03:05:25'),
(138,1,'V-D260816220525-0022',3,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',6.00,1.08,0.00,7.08,NULL,NULL,'COMPLETADA',NULL,'2026-08-12 14:12:00','2026-08-17 03:05:25'),
(139,1,'V-D260816220525-0023',13,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',83.90,15.10,0.00,99.00,100.00,1.00,'COMPLETADA',NULL,'2026-08-13 16:38:00','2026-08-17 03:05:25'),
(140,1,'V-D260816220525-0024',16,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',32.10,5.78,0.00,37.88,40.00,2.12,'COMPLETADA',NULL,'2026-08-13 16:56:00','2026-08-17 03:05:25'),
(141,1,'V-D260816220525-0025',14,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',37.00,6.66,0.00,43.66,NULL,NULL,'COMPLETADA',NULL,'2026-08-14 01:18:00','2026-08-17 03:05:25'),
(142,1,'V-D260816220525-0026',7,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',40.60,7.31,0.00,47.91,NULL,NULL,'COMPLETADA',NULL,'2026-08-14 23:27:00','2026-08-17 03:05:25'),
(143,1,'V-D260816220525-0027',12,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',58.50,10.53,0.00,69.03,NULL,NULL,'COMPLETADA',NULL,'2026-08-14 18:34:00','2026-08-17 03:05:25'),
(144,1,'V-D260816220525-0028',7,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',18.00,3.24,0.00,21.24,NULL,NULL,'COMPLETADA',NULL,'2026-08-15 23:16:00','2026-08-17 03:05:26'),
(145,1,'V-D260816220525-0029',7,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',34.90,6.28,0.00,41.18,NULL,NULL,'COMPLETADA',NULL,'2026-08-15 22:43:00','2026-08-17 03:05:26'),
(146,1,'V-D260816220525-0030',2,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',63.60,11.45,0.00,75.05,NULL,NULL,'COMPLETADA',NULL,'2026-08-17 01:53:00','2026-08-17 03:05:26'),
(147,1,'V-D260816220525-0031',1,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',32.50,5.85,0.00,38.35,NULL,NULL,'COMPLETADA',NULL,'2026-07-05 15:40:00','2026-08-17 03:05:26'),
(148,1,'V-D260816220525-0032',15,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',24.90,4.48,0.00,29.38,NULL,NULL,'COMPLETADA',NULL,'2026-06-28 17:34:00','2026-08-17 03:05:26'),
(149,1,'V-D260816220525-0033',16,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',4.90,0.88,0.00,5.78,NULL,NULL,'COMPLETADA',NULL,'2026-06-03 18:53:00','2026-08-17 03:05:26'),
(150,1,'V-D260816220525-0034',14,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',34.40,6.19,0.00,40.59,NULL,NULL,'COMPLETADA',NULL,'2026-06-15 01:28:00','2026-08-17 03:05:26'),
(151,1,'V-D260816220525-0035',1,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',51.60,9.29,0.00,60.89,NULL,NULL,'COMPLETADA',NULL,'2026-05-07 01:31:00','2026-08-17 03:05:26'),
(152,1,'V-D260816220525-0036',13,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',101.00,18.18,0.00,119.18,NULL,NULL,'COMPLETADA',NULL,'2026-04-30 21:57:00','2026-08-17 03:05:26'),
(153,1,'V-D260816220525-0037',9,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EFECTIVO',44.70,8.05,0.00,52.75,60.00,7.25,'COMPLETADA',NULL,'2026-04-01 17:47:00','2026-08-17 03:05:26'),
(154,1,'V-D260816220525-0038',9,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',51.60,9.29,0.00,60.89,NULL,NULL,'COMPLETADA',NULL,'2026-04-06 01:26:00','2026-08-17 03:05:26'),
(155,1,'V-D260816220525-0039',9,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',13.80,2.48,0.00,16.28,NULL,NULL,'COMPLETADA',NULL,'2026-03-27 22:43:00','2026-08-17 03:05:26'),
(156,1,'V-D260816220525-0040',15,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'YAPE',59.00,10.62,0.00,69.62,NULL,NULL,'COMPLETADA',NULL,'2026-04-16 15:43:00','2026-08-17 03:05:26'),
(157,1,'V-D260816220525-0041',1,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',25.80,4.64,0.00,30.44,NULL,NULL,'COMPLETADA',NULL,'2026-03-03 19:28:00','2026-08-17 03:05:26'),
(158,1,'V-D260816220525-0042',16,2,'BOLETA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',86.70,15.61,0.00,102.31,NULL,NULL,'COMPLETADA',NULL,'2026-03-15 23:51:00','2026-08-17 03:05:26'),
(159,1,'V-D260816220525-0043',12,2,'FACTURA',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSFERENCIA',6.00,1.08,0.00,7.08,NULL,NULL,'COMPLETADA',NULL,'2026-03-12 15:26:00','2026-08-17 03:05:26'),
(160,1,'V-D260816220525-0044',9,2,'TICKET',NULL,NULL,'NO_APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TARJETA',51.90,9.34,0.00,61.24,NULL,NULL,'COMPLETADA',NULL,'2026-03-12 15:50:00','2026-08-17 03:05:26');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-08-16 22:18:45

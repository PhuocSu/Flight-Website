-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: flight
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `cb_lb`
--

DROP TABLE IF EXISTS `cb_lb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cb_lb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chuyenbay_id` int DEFAULT NULL,
  `lichbay_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chuyenbay_id` (`chuyenbay_id`),
  KEY `lichbay_id` (`lichbay_id`),
  CONSTRAINT `cb_lb_ibfk_1` FOREIGN KEY (`chuyenbay_id`) REFERENCES `chuyen_bay` (`MaCB`),
  CONSTRAINT `cb_lb_ibfk_2` FOREIGN KEY (`lichbay_id`) REFERENCES `lich_bay` (`MaLichBay`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_lb`
--

LOCK TABLES `cb_lb` WRITE;
/*!40000 ALTER TABLE `cb_lb` DISABLE KEYS */;
INSERT INTO `cb_lb` VALUES (1,1,1),(2,2,1),(3,1,2),(4,3,1),(5,3,2),(6,4,1),(7,2,2),(8,5,4),(9,3,4),(10,2,3),(11,6,2),(12,6,5);
/*!40000 ALTER TABLE `cb_lb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuyen_bay`
--

DROP TABLE IF EXISTS `chuyen_bay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chuyen_bay` (
  `MaCB` int NOT NULL AUTO_INCREMENT,
  `tenCB` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GaDi` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GaDen` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GiaVe` float NOT NULL,
  `SoLuongCho` int NOT NULL,
  PRIMARY KEY (`MaCB`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuyen_bay`
--

LOCK TABLES `chuyen_bay` WRITE;
/*!40000 ALTER TABLE `chuyen_bay` DISABLE KEYS */;
INSERT INTO `chuyen_bay` VALUES (1,'VN001','Hà Nội','Đà Nẵng',12000,120),(2,'VN002','Hà Nội','Đà Nẵng',120000,220),(3,'VN003','Thành phố Hồ Chí Minh','Đà Năng',23000,12),(4,'VN004','Thành phố Hồ Chí Minh','Hà Nội',88849,20),(5,'VN005','Hà Nội','Thành phố Hồ Chí Minh',239991,20),(6,'dkwlaklnaw','Đà Lạt','Hà Nội',12388,29);
/*!40000 ALTER TABLE `chuyen_bay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dai_ly`
--

DROP TABLE IF EXISTS `dai_ly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dai_ly` (
  `MaDaiLy` int NOT NULL AUTO_INCREMENT,
  `Ten` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`MaDaiLy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dai_ly`
--

LOCK TABLES `dai_ly` WRITE;
/*!40000 ALTER TABLE `dai_ly` DISABLE KEYS */;
INSERT INTO `dai_ly` VALUES (1,'Tuan');
/*!40000 ALTER TABLE `dai_ly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia_chi`
--

DROP TABLE IF EXISTS `dia_chi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dia_chi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kh` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kh` (`id_kh`),
  CONSTRAINT `dia_chi_ibfk_1` FOREIGN KEY (`id_kh`) REFERENCES `khach_hang` (`MaKH`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia_chi`
--

LOCK TABLES `dia_chi` WRITE;
/*!40000 ALTER TABLE `dia_chi` DISABLE KEYS */;
INSERT INTO `dia_chi` VALUES (1,'E2/25a123',1),(2,'E2/25a12',3),(3,'E2/25 chuong dinh',6),(4,'E2/25 chuong dinh',7);
/*!40000 ALTER TABLE `dia_chi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kh` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kh` (`id_kh`),
  CONSTRAINT `email_ibfk_1` FOREIGN KEY (`id_kh`) REFERENCES `khach_hang` (`MaKH`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (1,'tuanchaunguyen134@gmail.com',1),(4,'tuanchaunguyen13@gmail.com',7);
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khach_hang` (
  `MaKH` int NOT NULL AUTO_INCREMENT,
  `CCCD` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HoTen` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NgSinh` datetime DEFAULT NULL,
  PRIMARY KEY (`MaKH`),
  UNIQUE KEY `CCCD` (`CCCD`),
  UNIQUE KEY `SDT` (`SDT`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khach_hang`
--

LOCK TABLES `khach_hang` WRITE;
/*!40000 ALTER TABLE `khach_hang` DISABLE KEYS */;
INSERT INTO `khach_hang` VALUES (1,'0512030021','Nam','nguyen van an',NULL,NULL),(2,'131312','Nu','as',NULL,NULL),(3,'112','Nam','do gia huy',NULL,NULL),(4,'113','Nu',' nguyen vna a',NULL,NULL),(6,'039131','Nam','d a',NULL,NULL),(7,'112121','Nam','tu',NULL,NULL);
/*!40000 ALTER TABLE `khach_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lich_bay`
--

DROP TABLE IF EXISTS `lich_bay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lich_bay` (
  `MaLichBay` int NOT NULL AUTO_INCREMENT,
  `GioDi` datetime NOT NULL,
  `GioVe` datetime NOT NULL,
  PRIMARY KEY (`MaLichBay`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lich_bay`
--

LOCK TABLES `lich_bay` WRITE;
/*!40000 ALTER TABLE `lich_bay` DISABLE KEYS */;
INSERT INTO `lich_bay` VALUES (1,'2023-10-11 05:30:00','2023-10-11 07:30:00'),(2,'2023-11-12 13:00:00','2023-11-12 18:00:00'),(3,'2023-10-12 01:00:00','2023-10-12 02:00:00'),(4,'2023-10-13 13:00:00','2023-10-13 13:00:00'),(5,'2023-11-11 18:19:00','2023-11-09 18:19:00');
/*!40000 ALTER TABLE `lich_bay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_dat_cho`
--

DROP TABLE IF EXISTS `phieu_dat_cho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_dat_cho` (
  `MaPhieu` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LoaiVe` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgMua` datetime NOT NULL,
  `TrangThai` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daily_id` int DEFAULT NULL,
  PRIMARY KEY (`MaPhieu`),
  KEY `daily_id` (`daily_id`),
  CONSTRAINT `phieu_dat_cho_ibfk_1` FOREIGN KEY (`daily_id`) REFERENCES `dai_ly` (`MaDaiLy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_dat_cho`
--

LOCK TABLES `phieu_dat_cho` WRITE;
/*!40000 ALTER TABLE `phieu_dat_cho` DISABLE KEYS */;
INSERT INTO `phieu_dat_cho` VALUES ('clpkvn','Một Chiều','2023-11-26 21:10:34','đã xử lý',NULL),('kqlfts','Một Chiều','2023-11-26 21:37:23','đã xử lý',NULL),('qbkbnq','Một Chiều','2023-11-26 21:35:35','đã xử lý',NULL),('qerkby','Một Chiều','2023-11-26 21:31:48','đã xử lý',NULL);
/*!40000 ALTER TABLE `phieu_dat_cho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_thanh_toan`
--

DROP TABLE IF EXISTS `phieu_thanh_toan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_thanh_toan` (
  `MaThanhToan` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoLuongVeDat` int NOT NULL,
  `ThanhTien` float NOT NULL,
  `NgLapThanhToan` datetime NOT NULL,
  `NgHetHanThanhToan` datetime NOT NULL,
  PRIMARY KEY (`MaThanhToan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_thanh_toan`
--

LOCK TABLES `phieu_thanh_toan` WRITE;
/*!40000 ALTER TABLE `phieu_thanh_toan` DISABLE KEYS */;
INSERT INTO `phieu_thanh_toan` VALUES ('aggkut',1,712000,'2023-11-26 21:34:38','2029-11-23 00:00:00'),('esbvzw',1,712000,'2023-11-26 21:36:39','2029-11-23 00:00:00'),('jihatf',2,712000,'2023-11-26 21:29:32','2029-11-23 00:00:00'),('ottpmk',2,712000,'2023-11-26 21:07:52','2029-11-23 00:00:00');
/*!40000 ALTER TABLE `phieu_thanh_toan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_dien_thoai`
--

DROP TABLE IF EXISTS `so_dien_thoai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_dien_thoai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sdt` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_kh` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kh` (`id_kh`),
  CONSTRAINT `so_dien_thoai_ibfk_1` FOREIGN KEY (`id_kh`) REFERENCES `khach_hang` (`MaKH`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_dien_thoai`
--

LOCK TABLES `so_dien_thoai` WRITE;
/*!40000 ALTER TABLE `so_dien_thoai` DISABLE KEYS */;
INSERT INTO `so_dien_thoai` VALUES (1,'0903131',1),(2,'112',3),(3,'113',6),(4,'113',7);
/*!40000 ALTER TABLE `so_dien_thoai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tai_khoan_dai_ly`
--

DROP TABLE IF EXISTS `tai_khoan_dai_ly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tai_khoan_dai_ly` (
  `TK_DaiLy_ID` int NOT NULL AUTO_INCREMENT,
  `TenTK` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MatKhau` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daily_id` int NOT NULL,
  PRIMARY KEY (`TK_DaiLy_ID`),
  KEY `daily_id` (`daily_id`),
  CONSTRAINT `tai_khoan_dai_ly_ibfk_1` FOREIGN KEY (`daily_id`) REFERENCES `dai_ly` (`MaDaiLy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tai_khoan_dai_ly`
--

LOCK TABLES `tai_khoan_dai_ly` WRITE;
/*!40000 ALTER TABLE `tai_khoan_dai_ly` DISABLE KEYS */;
INSERT INTO `tai_khoan_dai_ly` VALUES (1,'tuan','123',1);
/*!40000 ALTER TABLE `tai_khoan_dai_ly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tai_khoan_thanh_toan`
--

DROP TABLE IF EXISTS `tai_khoan_thanh_toan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tai_khoan_thanh_toan` (
  `SoTK` int NOT NULL AUTO_INCREMENT,
  `TenNganHang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Loai` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `khachhang_id` int NOT NULL,
  PRIMARY KEY (`SoTK`),
  KEY `khachhang_id` (`khachhang_id`),
  CONSTRAINT `tai_khoan_thanh_toan_ibfk_1` FOREIGN KEY (`khachhang_id`) REFERENCES `khach_hang` (`MaKH`)
) ENGINE=InnoDB AUTO_INCREMENT=12345 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tai_khoan_thanh_toan`
--

LOCK TABLES `tai_khoan_thanh_toan` WRITE;
/*!40000 ALTER TABLE `tai_khoan_thanh_toan` DISABLE KEYS */;
INSERT INTO `tai_khoan_thanh_toan` VALUES (123,'VietComBank','Ngân hàng',1),(1234,'VietComBank','Ngân hàng',3),(12344,'VietComBank','Ngân hàng',6);
/*!40000 ALTER TABLE `tai_khoan_thanh_toan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role` enum('daily','admin') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'tuan','tuanit','123',NULL,'admin'),(2,'Admin','admin','e10adc3949ba59abbe56e057f20f883e','abcde','admin'),(5,'QuanTri','tuan','huv','https://res.cloudinary.com/dxxwcby8l/image/upload/v1688179242/hclq65mc6so7vdrbp7hz.jpg','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ve_may_bay`
--

DROP TABLE IF EXISTS `ve_may_bay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ve_may_bay` (
  `MaVe` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgDat` datetime NOT NULL,
  `SoGhe` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SoCua` int DEFAULT NULL,
  `TinhTrangVe` tinyint(1) DEFAULT NULL,
  `chuyenbay_id` int NOT NULL,
  `khachhang_id` int NOT NULL,
  `phieuthanhtoan_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maphieu` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`MaVe`),
  KEY `chuyenbay_id` (`chuyenbay_id`),
  KEY `khachhang_id` (`khachhang_id`),
  KEY `phieuthanhtoan_id` (`phieuthanhtoan_id`),
  KEY `maphieu` (`maphieu`),
  CONSTRAINT `ve_may_bay_ibfk_1` FOREIGN KEY (`chuyenbay_id`) REFERENCES `chuyen_bay` (`MaCB`),
  CONSTRAINT `ve_may_bay_ibfk_2` FOREIGN KEY (`khachhang_id`) REFERENCES `khach_hang` (`MaKH`),
  CONSTRAINT `ve_may_bay_ibfk_3` FOREIGN KEY (`phieuthanhtoan_id`) REFERENCES `phieu_thanh_toan` (`MaThanhToan`),
  CONSTRAINT `ve_may_bay_ibfk_4` FOREIGN KEY (`maphieu`) REFERENCES `phieu_dat_cho` (`MaPhieu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ve_may_bay`
--

LOCK TABLES `ve_may_bay` WRITE;
/*!40000 ALTER TABLE `ve_may_bay` DISABLE KEYS */;
INSERT INTO `ve_may_bay` VALUES ('ahvbdm','2023-11-26 21:07:52','B1',28,1,1,2,'ottpmk','clpkvn'),('etdnoz','2023-11-26 21:29:32',NULL,NULL,NULL,1,3,'jihatf','qerkby'),('hxiznf','2023-11-26 21:29:32',NULL,NULL,NULL,1,4,'jihatf','qerkby'),('joakwk','2023-11-26 21:34:38',NULL,NULL,NULL,1,6,'aggkut','qbkbnq'),('qdicgh','2023-11-26 21:07:52','C1',91,1,1,1,'ottpmk','clpkvn'),('slkqnw','2023-11-26 21:36:39','D1',29,1,1,7,'esbvzw','kqlfts');
/*!40000 ALTER TABLE `ve_may_bay` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-26 22:00:05

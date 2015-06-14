CREATE DATABASE  IF NOT EXISTS `db_ujianonline` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;
USE `db_ujianonline`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: db_ujianonline
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_admin` int(2) NOT NULL auto_increment,
  `nama_admin` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY  (`id_admin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Administrator Web','admin','21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabel_nilai`
--

DROP TABLE IF EXISTS `tabel_nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabel_nilai` (
  `id_nilai` int(4) NOT NULL auto_increment,
  `id_user` int(4) NOT NULL,
  `benar` int(4) NOT NULL,
  `salah` int(4) NOT NULL,
  `kosong` int(4) NOT NULL,
  `point` int(4) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY  (`id_nilai`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabel_nilai`
--

LOCK TABLES `tabel_nilai` WRITE;
/*!40000 ALTER TABLE `tabel_nilai` DISABLE KEYS */;
INSERT INTO `tabel_nilai` VALUES (1,7,1,3,1,5,'2011-02-13'),(2,7,1,3,1,5,'2011-02-13'),(3,7,5,0,0,25,'2011-02-13'),(4,6,4,1,0,20,'2011-02-13'),(5,6,4,1,0,20,'2011-02-13'),(6,6,0,4,1,0,'2011-02-24'),(7,12,5,0,0,25,'2011-11-20'),(8,5,2,3,0,10,'2011-11-21'),(9,5,2,1,2,10,'2011-11-26'),(10,13,1,4,0,5,'2011-12-27'),(11,13,5,1,0,25,'2011-12-27');
/*!40000 ALTER TABLE `tabel_nilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabel_soal`
--

DROP TABLE IF EXISTS `tabel_soal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabel_soal` (
  `id_soal` int(4) NOT NULL auto_increment,
  `pertanyaan` varchar(100) NOT NULL,
  `pilihan_a` varchar(100) NOT NULL,
  `pilihan_b` varchar(100) NOT NULL,
  `pilihan_c` varchar(100) NOT NULL,
  `pilihan_d` varchar(100) NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `publish` enum('yes','no') NOT NULL,
  `tipe` int(2) NOT NULL,
  PRIMARY KEY  (`id_soal`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabel_soal`
--

LOCK TABLES `tabel_soal` WRITE;
/*!40000 ALTER TABLE `tabel_soal` DISABLE KEYS */;
INSERT INTO `tabel_soal` VALUES (2,'Agus Ke Kampus Pakai Apa?','Mobil','Motor','Pesawat','Jalan Kaki','B','yes',1),(3,'Warna Kesukaan Kamu Apa?','Merah','Kuning','Biru','Orange','C','yes',1),(4,'Binatang Kesukaan Kamu Apa?','Kucing','Harimau','Kelinci','Kodok','A','yes',1),(5,'Makanan Kesukaan Kamu Apa?','Mie Ayam','Sate','Bakso','Nasi Goreng','D','yes',1),(6,'Olah Raga Kesukaan Kamu Apa?','Badminton','Bola','Voli','Jalan Kaki','A','yes',1),(8,'Siapa Nama Pacar Kamu?','Cinta Laura','Sandra Dewi','Adinda Larasati','Siera','C','no',1),(9,'Pertanyaan Anda?','Jawab A','Jawab B','Jawab C','Jawab D','C','yes',1),(10,'perbuatan tolonng menolong termasuk  akhlak','jelek','terpuji','baik','baik sekali','B','yes',1),(11,'apa kepanjangan dari RAM','RANDOM ACCES MEMORY','motor','pesawat','jalan kaki','A','yes',1),(12,'berapa umur danis','34','3','5','6','A','yes',1),(13,'manfaat utama televisi','sumber informasi','sumber cahaya','pajangan','accesories','A','yes',1),(14,'siang hari udara terasa','panas','dingin','sejuk','sumer','A','yes',1),(15,'kita bersyukur dengan cara','shalat','rekreasi','karaoke','pesta','A','yes',1),(16,'matahari terbit dari sebelah ','barat','timut','selatan','utara','B','yes',1),(17,'matahari tenggelam pada wantu','siang','malam','pagi','sore','D','yes',1),(18,'keluarga inti terdiri dari','ayah ibu anak','ibu dan anak','ayah ibu dan kakek','ayah ibu dan anak','A','yes',1),(19,'5+5x5+5','100','35','20','10','B','yes',1),(20,'100:5+1x10=','10','75','14','251','D','yes',1),(21,'apanegara indonesia','palembang','bandung','denpasar','jakarta','D','yes',1);
/*!40000 ALTER TABLE `tabel_soal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabel_user`
--

DROP TABLE IF EXISTS `tabel_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabel_user` (
  `id_user` int(4) NOT NULL auto_increment,
  `nama_user` varchar(20) collate latin1_general_ci NOT NULL,
  `gambar_user` varchar(50) collate latin1_general_ci NOT NULL,
  `username` varchar(20) collate latin1_general_ci NOT NULL,
  `password` varchar(50) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabel_user`
--

LOCK TABLES `tabel_user` WRITE;
/*!40000 ALTER TABLE `tabel_user` DISABLE KEYS */;
INSERT INTO `tabel_user` VALUES (6,'Adinda Larasati','./gambar/Dinda.jpg','dinda','594280c6ddc94399a392934cac9d80d5'),(5,'Agus Sumarna','./gambar/AgusSumarna.jpg','agus','fdf169558242ee051cca1479770ebac3'),(7,'Dedi Ruswandi','./gambar/termenung.jpg','dedi','c5897fbcc14ddcf30dca31b2735c3d7e'),(8,'Asep Ruspayadi','./gambar/Gray_Cat.jpg','asep','dc855efb0dc7476760afaa1b281665f1'),(9,'Sinta','./gambar/rizky.jpg','sinta','08ca451b5ef1a7c86763d31e7711a522'),(10,'Dede','./gambar/895-21-02-2011.JPG','dede','b4be1c568a6dc02dcaf2849852bdb13e'),(11,'Cumi','./gambar/timer-ujian-online.PNG','cumi','202cb962ac59075b964b07152d234b70'),(12,'Fitri','./gambar/dss-ri32.jpg','fitri','534a0b7aa872ad1340d0071cbfa38697'),(13,'Fitri Cantik','./gambar/14.JPG','fitri','202cb962ac59075b964b07152d234b70'),(14,'Ali','./gambar/32.PNG','ali','86318e52f5ed4801abe1d13d509443de');
/*!40000 ALTER TABLE `tabel_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_ujianonline'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-13 19:38:03

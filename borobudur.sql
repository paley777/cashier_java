-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.24-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk borobudur
CREATE DATABASE IF NOT EXISTS `borobudur` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `borobudur`;

-- membuang struktur untuk table borobudur.detail_transaksi
CREATE TABLE IF NOT EXISTS `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaksi` int(11) NOT NULL,
  `id_paket` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  PRIMARY KEY (`id_detail_transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel borobudur.detail_transaksi: ~8 rows (lebih kurang)
/*!40000 ALTER TABLE `detail_transaksi` DISABLE KEYS */;
INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_paket`, `harga`, `jumlah`, `total_harga`) VALUES
	(1, 1, 'P001', 35000, 2, 70000),
	(2, 1, 'P001', 35000, 3, 105000),
	(3, 2, 'B001', 1200000, 2, 2400000),
	(4, 3, 'B001', 1200000, 1, 1200000),
	(5, 4, 'B001', 1200000, 1, 1200000),
	(6, 5, 'B001', 1200000, 1, 1200000),
	(7, 6, 'B001', 1200000, 1, 1200000),
	(8, 7, 'B001', 1200000, 1, 1200000);
/*!40000 ALTER TABLE `detail_transaksi` ENABLE KEYS */;

-- membuang struktur untuk table borobudur.kasir
CREATE TABLE IF NOT EXISTS `kasir` (
  `id_kasir` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_kasir` varchar(100) NOT NULL,
  PRIMARY KEY (`id_kasir`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel borobudur.kasir: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `kasir` DISABLE KEYS */;
INSERT INTO `kasir` (`id_kasir`, `username`, `password`, `nama_kasir`) VALUES
	(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Achmad');
/*!40000 ALTER TABLE `kasir` ENABLE KEYS */;

-- membuang struktur untuk table borobudur.paket_makanan
CREATE TABLE IF NOT EXISTS `paket_makanan` (
  `id_paket` varchar(10) NOT NULL,
  `nama_paket` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_paket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel borobudur.paket_makanan: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `paket_makanan` DISABLE KEYS */;
INSERT INTO `paket_makanan` (`id_paket`, `nama_paket`, `keterangan`, `harga`) VALUES
	('B001', 'VIP', 'Free Lunch, Tour Guide, Free One Room 2 Night', 1200000),
	('B002', 'Economy', 'Free Lunch', 50000);
/*!40000 ALTER TABLE `paket_makanan` ENABLE KEYS */;

-- membuang struktur untuk table borobudur.transaksi
CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_kasir` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel borobudur.transaksi: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` (`id_transaksi`, `id_kasir`, `tanggal`) VALUES
	(1, 2, '2014-01-13'),
	(2, 2, '2023-01-20'),
	(3, 2, '2023-01-20'),
	(4, 2, '2023-01-20'),
	(5, 2, '2023-01-20'),
	(6, 2, '2023-01-20'),
	(7, 2, '2023-01-20');
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

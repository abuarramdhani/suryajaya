-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table suryajaya.master_ban
DROP TABLE IF EXISTS `master_ban`;
CREATE TABLE IF NOT EXISTS `master_ban` (
  `kode_ban` char(10) NOT NULL,
  `nama_ban` char(100) DEFAULT NULL,
  `jenis_ban` char(1) DEFAULT NULL,
  `merk_ban` char(100) DEFAULT NULL,
  `ukuran_ban` char(200) DEFAULT NULL,
  `stok_baru` decimal(10,2) DEFAULT '0.00',
  `stok_bekas` decimal(10,2) DEFAULT '0.00',
  `stok_vulkanisir` decimal(10,2) DEFAULT '0.00',
  `stok_afkir` decimal(10,2) DEFAULT '0.00',
  `stok_pasang` decimal(10,2) DEFAULT '0.00',
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`kode_ban`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.master_ban: ~3 rows (approximately)
/*!40000 ALTER TABLE `master_ban` DISABLE KEYS */;
INSERT INTO `master_ban` (`kode_ban`, `nama_ban`, `jenis_ban`, `merk_ban`, `ukuran_ban`, `stok_baru`, `stok_bekas`, `stok_vulkanisir`, `stok_afkir`, `stok_pasang`, `data_sts`) VALUES
	('BAN0001', 'Ban A', '1', 'Dunlop', '900-200', 1.00, 1.00, 0.00, 0.00, 2.00, '1'),
	('BAN0002', 'Ban B', '0', 'Federal', '900-250', 0.00, 0.00, 0.00, 0.00, 0.00, '1'),
	('BAN0003', 'Ban C', '2', 'IRC', '800-300', 0.00, 0.00, 0.00, 0.00, 0.00, '1');
/*!40000 ALTER TABLE `master_ban` ENABLE KEYS */;

-- Dumping structure for table suryajaya.master_barang
DROP TABLE IF EXISTS `master_barang`;
CREATE TABLE IF NOT EXISTS `master_barang` (
  `kode_barang` char(10) NOT NULL,
  `nama_barang` char(100) DEFAULT NULL,
  `part_number` char(100) DEFAULT NULL,
  `nama_satuan` char(20) DEFAULT NULL,
  `min_qty` decimal(10,2) DEFAULT NULL,
  `qty_perset` decimal(10,2) DEFAULT NULL,
  `no_rak` char(10) DEFAULT NULL,
  `stok_barang` decimal(10,2) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.master_barang: ~6 rows (approximately)
/*!40000 ALTER TABLE `master_barang` DISABLE KEYS */;
INSERT INTO `master_barang` (`kode_barang`, `nama_barang`, `part_number`, `nama_satuan`, `min_qty`, `qty_perset`, `no_rak`, `stok_barang`, `data_sts`, `updated_at`, `created_at`) VALUES
	('BRG0001', 'Barang A', '123456', 'Pcs', 1.00, 4.00, '1A', 4.00, '1', '2018-12-16 05:16:38', '2018-12-16 05:16:38'),
	('BRG0002', 'Barang B', '987652', 'Pcs', 1.00, 6.00, '1B', 15.00, '1', NULL, NULL),
	('BRG0003', 'Barang C', '987652', 'Pcs', 1.00, 6.00, '1B', 6.00, '1', NULL, NULL),
	('BRG0004', 'Barang D', '987652', 'Pcs', 1.00, 6.00, '1D', 0.00, '1', NULL, NULL),
	('BRG0005', 'Barang E', '456789', 'Pcs', 1.00, 4.00, '1E', 6.00, '1', NULL, NULL),
	('BRG0006', 'Barang Tes', '0987654', 'Pcs', 20.00, 40.00, '2D', NULL, '0', NULL, NULL);
/*!40000 ALTER TABLE `master_barang` ENABLE KEYS */;

-- Dumping structure for table suryajaya.master_biaya_driver
DROP TABLE IF EXISTS `master_biaya_driver`;
CREATE TABLE IF NOT EXISTS `master_biaya_driver` (
  `kode_biaya_driver` char(10) NOT NULL,
  `ket_biaya_driver` text,
  `nom_biaya_driver` decimal(10,2) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`kode_biaya_driver`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.master_biaya_driver: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_biaya_driver` DISABLE KEYS */;
INSERT INTO `master_biaya_driver` (`kode_biaya_driver`, `ket_biaya_driver`, `nom_biaya_driver`, `data_sts`) VALUES
	('BDR0001', 'Biaya Jkt -> Sby', 2000000.00, '1'),
	('BDR0002', 'Biaya Sby -> Jkt', 1000000.00, '1');
/*!40000 ALTER TABLE `master_biaya_driver` ENABLE KEYS */;

-- Dumping structure for table suryajaya.master_customer
DROP TABLE IF EXISTS `master_customer`;
CREATE TABLE IF NOT EXISTS `master_customer` (
  `kode_customer` char(10) NOT NULL,
  `nama_customer` char(100) DEFAULT NULL,
  `alamat_customer` varchar(1024) DEFAULT NULL,
  `kota_customer` char(100) DEFAULT NULL,
  `jenis_customer` char(10) DEFAULT NULL,
  `tlp_customer` char(20) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`kode_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.master_customer: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_customer` DISABLE KEYS */;
INSERT INTO `master_customer` (`kode_customer`, `nama_customer`, `alamat_customer`, `kota_customer`, `jenis_customer`, `tlp_customer`, `data_sts`) VALUES
	('CUST0001', 'Jono', 'Semampir Barat No.4', 'Surabaya', 'Customer', '081234234242', '1'),
	('CUST0002', 'Boni', 'Semolowaru Timur No.8', 'Surabaya', 'Customer', '085242242424', '1');
/*!40000 ALTER TABLE `master_customer` ENABLE KEYS */;

-- Dumping structure for table suryajaya.master_driver
DROP TABLE IF EXISTS `master_driver`;
CREATE TABLE IF NOT EXISTS `master_driver` (
  `kode_driver` char(10) NOT NULL,
  `nama_driver` char(100) DEFAULT NULL,
  `alamat_driver` varchar(1024) DEFAULT NULL,
  `kota_driver` char(100) DEFAULT NULL,
  `tlp_driver` char(20) DEFAULT NULL,
  `jenis_driver` char(1) DEFAULT NULL,
  `jml_bon` decimal(10,2) DEFAULT NULL,
  `cair_bon` decimal(10,2) DEFAULT NULL,
  `jml_klaim` decimal(10,2) DEFAULT NULL,
  `cair_klaim` decimal(10,2) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`kode_driver`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.master_driver: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_driver` DISABLE KEYS */;
INSERT INTO `master_driver` (`kode_driver`, `nama_driver`, `alamat_driver`, `kota_driver`, `tlp_driver`, `jenis_driver`, `jml_bon`, `cair_bon`, `jml_klaim`, `cair_klaim`, `data_sts`) VALUES
	('DRV0001', 'Sugeng', 'Putat Jaya No.88', 'Surabaya', '085235789172', '0', 0.00, NULL, 0.00, NULL, '1'),
	('DRV0002', 'Mulyadi', 'Lesti No.42', 'Surabaya', '088353678678', '1', 0.00, NULL, 0.00, NULL, '1');
/*!40000 ALTER TABLE `master_driver` ENABLE KEYS */;

-- Dumping structure for table suryajaya.master_karyawan
DROP TABLE IF EXISTS `master_karyawan`;
CREATE TABLE IF NOT EXISTS `master_karyawan` (
  `kode_karyawan` char(10) NOT NULL,
  `nama_karyawan` char(100) DEFAULT NULL,
  `alamat_karyawan` varchar(1024) DEFAULT NULL,
  `kota_karyawan` char(100) DEFAULT NULL,
  `tlp_karyawan` char(20) DEFAULT NULL,
  `upah_makan` decimal(10,2) DEFAULT NULL,
  `upah_harian` decimal(10,2) DEFAULT NULL,
  `upah_hari_besar` decimal(10,2) DEFAULT NULL,
  `upah_hari_minggu` decimal(10,2) DEFAULT NULL,
  `min_jam_lembur` decimal(10,2) DEFAULT NULL,
  `upah_lembur` decimal(10,2) DEFAULT NULL,
  `gaji_bulanan` decimal(10,2) DEFAULT NULL,
  `kerja_penuh_6x` decimal(10,2) DEFAULT NULL,
  `jml_bon` decimal(10,2) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`kode_karyawan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.master_karyawan: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_karyawan` DISABLE KEYS */;
INSERT INTO `master_karyawan` (`kode_karyawan`, `nama_karyawan`, `alamat_karyawan`, `kota_karyawan`, `tlp_karyawan`, `upah_makan`, `upah_harian`, `upah_hari_besar`, `upah_hari_minggu`, `min_jam_lembur`, `upah_lembur`, `gaji_bulanan`, `kerja_penuh_6x`, `jml_bon`, `data_sts`) VALUES
	('KRY00001', 'Hendro', 'Semolowaru Utara No.42, Sukolilo', 'Surabaya', '083335335627', 10000.00, 100000.00, 150000.00, 120000.00, 2.00, 50000.00, 3000000.00, 500000.00, 10000.00, '1');
/*!40000 ALTER TABLE `master_karyawan` ENABLE KEYS */;

-- Dumping structure for table suryajaya.master_kendaraan
DROP TABLE IF EXISTS `master_kendaraan`;
CREATE TABLE IF NOT EXISTS `master_kendaraan` (
  `kode_kendaraan` int(11) NOT NULL AUTO_INCREMENT,
  `nopol` char(10) NOT NULL,
  `sopir_kendaraan` char(10) DEFAULT NULL,
  `kernet_kendaraan` char(10) DEFAULT NULL,
  `no_mesin` char(100) DEFAULT NULL,
  `no_rangka` char(100) DEFAULT NULL,
  `tipe_kendaraan` char(100) DEFAULT NULL,
  `jenis_kendaraan` char(100) DEFAULT NULL,
  `nama_pemilik` char(100) DEFAULT NULL,
  `thn_pembuatan` char(10) DEFAULT NULL,
  `no_bpkb` char(100) DEFAULT NULL,
  `warna_kendaraan` char(50) DEFAULT NULL,
  `masa_stnk` char(100) DEFAULT NULL,
  `cc_kendaraan` char(100) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`kode_kendaraan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.master_kendaraan: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_kendaraan` DISABLE KEYS */;
INSERT INTO `master_kendaraan` (`kode_kendaraan`, `nopol`, `sopir_kendaraan`, `kernet_kendaraan`, `no_mesin`, `no_rangka`, `tipe_kendaraan`, `jenis_kendaraan`, `nama_pemilik`, `thn_pembuatan`, `no_bpkb`, `warna_kendaraan`, `masa_stnk`, `cc_kendaraan`, `data_sts`) VALUES
	(1, 'P3251ZS', 'DRV0001', 'DRV0002', '12831991', '10230301', 'Honda', 'Pick Up', 'Joko', '2000', '12023391', 'Hitam', '2020', '2500', '1'),
	(2, 'B2345XS', 'DRV0001', 'DRV0002', '01010291', '29304813', 'Dino', 'Dump Truck', 'Kuri', '2012', '4944505', 'Kuning', '2020', '5000', '1');
/*!40000 ALTER TABLE `master_kendaraan` ENABLE KEYS */;

-- Dumping structure for table suryajaya.master_rekening
DROP TABLE IF EXISTS `master_rekening`;
CREATE TABLE IF NOT EXISTS `master_rekening` (
  `kode_rekening` char(10) NOT NULL,
  `nama_bank` char(100) DEFAULT NULL,
  `no_rekening` char(50) DEFAULT NULL,
  `ket_rekening` varchar(1024) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`kode_rekening`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.master_rekening: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_rekening` DISABLE KEYS */;
INSERT INTO `master_rekening` (`kode_rekening`, `nama_bank`, `no_rekening`, `ket_rekening`, `data_sts`) VALUES
	('REK00001', 'BCA', '234567899', 'Tes rekening bca', '1'),
	('REK00002', 'BNI', '292929011', 'Tes rekening 2', '1');
/*!40000 ALTER TABLE `master_rekening` ENABLE KEYS */;

-- Dumping structure for table suryajaya.master_supplier
DROP TABLE IF EXISTS `master_supplier`;
CREATE TABLE IF NOT EXISTS `master_supplier` (
  `kode_supplier` char(10) NOT NULL,
  `nama_supplier` char(100) DEFAULT NULL,
  `alamat_supplier` varchar(1024) DEFAULT NULL,
  `kota_supplier` char(100) DEFAULT NULL,
  `tlp_supplier` char(20) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`kode_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.master_supplier: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_supplier` DISABLE KEYS */;
INSERT INTO `master_supplier` (`kode_supplier`, `nama_supplier`, `alamat_supplier`, `kota_supplier`, `tlp_supplier`, `data_sts`) VALUES
	('SUP0001', 'Sinar Sahabat', 'Mayjend Sungkono No.42', 'Surabaya', '085235252522', '1'),
	('SUP0002', 'Murni Motor', 'HR Muhammad No.4A-4C', 'Surabaya', '0319878899', '1');
/*!40000 ALTER TABLE `master_supplier` ENABLE KEYS */;

-- Dumping structure for table suryajaya.master_tujuan
DROP TABLE IF EXISTS `master_tujuan`;
CREATE TABLE IF NOT EXISTS `master_tujuan` (
  `kode_tujuan` char(10) NOT NULL,
  `ket_tujuan` text,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`kode_tujuan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.master_tujuan: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_tujuan` DISABLE KEYS */;
INSERT INTO `master_tujuan` (`kode_tujuan`, `ket_tujuan`, `data_sts`) VALUES
	('DST0001', 'SBY->JKT', '1'),
	('DST0002', 'JKT->SBY', '1');
/*!40000 ALTER TABLE `master_tujuan` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_bayar_bonklaim_sopir
DROP TABLE IF EXISTS `trx_bayar_bonklaim_sopir`;
CREATE TABLE IF NOT EXISTS `trx_bayar_bonklaim_sopir` (
  `no_bayar` char(20) NOT NULL,
  `kode_driver` char(10) DEFAULT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `nom_bon` decimal(10,2) DEFAULT NULL,
  `nom_klaim` decimal(10,2) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_bayar`),
  KEY `FK_trx_bayar_bonklaim_sopir_master_driver` (`kode_driver`),
  CONSTRAINT `FK_trx_bayar_bonklaim_sopir_master_driver` FOREIGN KEY (`kode_driver`) REFERENCES `master_driver` (`kode_driver`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_bayar_bonklaim_sopir: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_bayar_bonklaim_sopir` DISABLE KEYS */;
INSERT INTO `trx_bayar_bonklaim_sopir` (`no_bayar`, `kode_driver`, `tgl_bayar`, `nom_bon`, `nom_klaim`, `data_sts`) VALUES
	('BYR1901-000001', 'DRV0001', '2019-01-13', 10000.00, 10000.00, '1');
/*!40000 ALTER TABLE `trx_bayar_bonklaim_sopir` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_bayar_upah_karyawan
DROP TABLE IF EXISTS `trx_bayar_upah_karyawan`;
CREATE TABLE IF NOT EXISTS `trx_bayar_upah_karyawan` (
  `no_kuitansi` char(20) NOT NULL,
  `kode_karyawan` char(10) DEFAULT NULL,
  `tgl_upah` date DEFAULT NULL,
  `hari_kerja` decimal(10,2) DEFAULT NULL,
  `sub_harian` decimal(10,2) DEFAULT NULL,
  `bonus_harian` decimal(10,2) DEFAULT NULL,
  `sub_bonusharian` decimal(10,2) DEFAULT NULL,
  `uang_makan` decimal(10,2) DEFAULT NULL,
  `sub_makan` decimal(10,2) DEFAULT NULL,
  `uang_lembur` decimal(10,2) DEFAULT NULL,
  `sub_lembur` decimal(10,2) DEFAULT NULL,
  `uang_minggu` decimal(10,2) DEFAULT NULL,
  `sub_minggu` decimal(10,2) DEFAULT NULL,
  `uang_haribesar` decimal(10,2) DEFAULT NULL,
  `sub_haribesar` decimal(10,2) DEFAULT NULL,
  `uang_bulanan` decimal(10,2) DEFAULT NULL,
  `sub_bulanan` decimal(10,2) DEFAULT NULL,
  `bonus_bulanan` decimal(10,2) DEFAULT NULL,
  `sub_bonusbulanan` decimal(10,2) DEFAULT NULL,
  `uang_lain` decimal(10,2) DEFAULT NULL,
  `sub_lain` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `sub_bon` decimal(10,2) DEFAULT NULL,
  `grand_total` decimal(10,2) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_kuitansi`),
  KEY `FK_trx_bayar_upah_karyawan_master_karyawan` (`kode_karyawan`),
  CONSTRAINT `FK_trx_bayar_upah_karyawan_master_karyawan` FOREIGN KEY (`kode_karyawan`) REFERENCES `master_karyawan` (`kode_karyawan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_bayar_upah_karyawan: ~2 rows (approximately)
/*!40000 ALTER TABLE `trx_bayar_upah_karyawan` DISABLE KEYS */;
INSERT INTO `trx_bayar_upah_karyawan` (`no_kuitansi`, `kode_karyawan`, `tgl_upah`, `hari_kerja`, `sub_harian`, `bonus_harian`, `sub_bonusharian`, `uang_makan`, `sub_makan`, `uang_lembur`, `sub_lembur`, `uang_minggu`, `sub_minggu`, `uang_haribesar`, `sub_haribesar`, `uang_bulanan`, `sub_bulanan`, `bonus_bulanan`, `sub_bonusbulanan`, `uang_lain`, `sub_lain`, `sub_total`, `sub_bon`, `grand_total`, `data_sts`) VALUES
	('KUI1901-000001', NULL, '2019-01-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
	('KUI1901-000002', 'KRY00001', '2019-01-19', 21.00, 2100000.00, 0.00, 0.00, 20.00, 200000.00, 4.00, 200000.00, 4.00, 480000.00, 0.00, 0.00, 1.00, 3000000.00, 0.00, 0.00, 0.00, 0.00, 5980000.00, 0.00, 5980000.00, '1');
/*!40000 ALTER TABLE `trx_bayar_upah_karyawan` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_beli_ban
DROP TABLE IF EXISTS `trx_beli_ban`;
CREATE TABLE IF NOT EXISTS `trx_beli_ban` (
  `no_pembelian` char(20) NOT NULL,
  `kode_supplier` char(10) DEFAULT NULL,
  `nota_toko` char(50) DEFAULT NULL,
  `tgl_pembelian` date DEFAULT NULL,
  `grand_total` decimal(10,2) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_pembelian`),
  KEY `FK_trx_beli_ban_master_supplier` (`kode_supplier`),
  CONSTRAINT `FK_trx_beli_ban_master_supplier` FOREIGN KEY (`kode_supplier`) REFERENCES `master_supplier` (`kode_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_beli_ban: ~2 rows (approximately)
/*!40000 ALTER TABLE `trx_beli_ban` DISABLE KEYS */;
INSERT INTO `trx_beli_ban` (`no_pembelian`, `kode_supplier`, `nota_toko`, `tgl_pembelian`, `grand_total`, `data_sts`) VALUES
	('BL1901-000001', NULL, NULL, '2019-01-06', NULL, '0'),
	('BL1901-000002', 'SUP0001', 'SH12345', '2019-01-06', 2000000.00, '1');
/*!40000 ALTER TABLE `trx_beli_ban` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_beli_ban_det
DROP TABLE IF EXISTS `trx_beli_ban_det`;
CREATE TABLE IF NOT EXISTS `trx_beli_ban_det` (
  `det_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_pembelian` char(20) DEFAULT NULL,
  `kode_ban` char(10) DEFAULT NULL,
  `qty_beli` decimal(10,2) DEFAULT NULL,
  `harga_satuan` decimal(10,2) DEFAULT NULL,
  `jumlah` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`det_id`),
  KEY `FK_trx_beli_ban_det_trx_beli_ban` (`no_pembelian`),
  KEY `FK_trx_beli_ban_det_master_ban` (`kode_ban`),
  CONSTRAINT `FK_trx_beli_ban_det_master_ban` FOREIGN KEY (`kode_ban`) REFERENCES `master_ban` (`kode_ban`),
  CONSTRAINT `FK_trx_beli_ban_det_trx_beli_ban` FOREIGN KEY (`no_pembelian`) REFERENCES `trx_beli_ban` (`no_pembelian`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_beli_ban_det: ~2 rows (approximately)
/*!40000 ALTER TABLE `trx_beli_ban_det` DISABLE KEYS */;
INSERT INTO `trx_beli_ban_det` (`det_id`, `no_pembelian`, `kode_ban`, `qty_beli`, `harga_satuan`, `jumlah`) VALUES
	(2, 'BL1901-000002', 'BAN0001', 2.00, 1000000.00, 2000000.00),
	(3, NULL, NULL, NULL, NULL, 0.00);
/*!40000 ALTER TABLE `trx_beli_ban_det` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_beli_barang
DROP TABLE IF EXISTS `trx_beli_barang`;
CREATE TABLE IF NOT EXISTS `trx_beli_barang` (
  `no_nota` char(20) NOT NULL,
  `kode_supplier` char(10) DEFAULT NULL,
  `nota_toko` char(50) DEFAULT NULL,
  `tgl_nota` date DEFAULT NULL,
  `diskon` decimal(10,2) DEFAULT NULL,
  `nom_diskon` decimal(10,2) DEFAULT NULL,
  `grand_total` decimal(10,2) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_nota`),
  KEY `FK_trx_beli_barang_master_supplier` (`kode_supplier`),
  CONSTRAINT `FK_trx_beli_barang_master_supplier` FOREIGN KEY (`kode_supplier`) REFERENCES `master_supplier` (`kode_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_beli_barang: ~3 rows (approximately)
/*!40000 ALTER TABLE `trx_beli_barang` DISABLE KEYS */;
INSERT INTO `trx_beli_barang` (`no_nota`, `kode_supplier`, `nota_toko`, `tgl_nota`, `diskon`, `nom_diskon`, `grand_total`, `data_sts`) VALUES
	('SK1901-000001', NULL, NULL, '2019-01-04', NULL, NULL, NULL, '0'),
	('SK1901-000002', 'SUP0002', 'SJ12345', '2019-01-01', 0.00, 0.00, 520000.00, '1'),
	('SK1901-000003', NULL, NULL, '2019-01-05', NULL, NULL, NULL, '0');
/*!40000 ALTER TABLE `trx_beli_barang` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_beli_barang_det
DROP TABLE IF EXISTS `trx_beli_barang_det`;
CREATE TABLE IF NOT EXISTS `trx_beli_barang_det` (
  `det_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_nota` char(20) NOT NULL,
  `kode_barang` char(10) NOT NULL,
  `qty_beli` decimal(10,2) DEFAULT NULL,
  `harga_satuan` decimal(10,2) DEFAULT NULL,
  `jumlah` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`det_id`),
  KEY `FK_trx_beli_barang_det_trx_beli_barang` (`no_nota`),
  KEY `FK_trx_beli_barang_det_master_barang` (`kode_barang`),
  CONSTRAINT `FK_trx_beli_barang_det_master_barang` FOREIGN KEY (`kode_barang`) REFERENCES `master_barang` (`kode_barang`),
  CONSTRAINT `FK_trx_beli_barang_det_trx_beli_barang` FOREIGN KEY (`no_nota`) REFERENCES `trx_beli_barang` (`no_nota`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_beli_barang_det: ~5 rows (approximately)
/*!40000 ALTER TABLE `trx_beli_barang_det` DISABLE KEYS */;
INSERT INTO `trx_beli_barang_det` (`det_id`, `no_nota`, `kode_barang`, `qty_beli`, `harga_satuan`, `jumlah`) VALUES
	(1, 'SK1901-000001', 'BRG0001', 4.00, 200000.00, 800000.00),
	(2, 'SK1901-000002', 'BRG0002', 2.00, 200000.00, 400000.00),
	(3, 'SK1901-000002', 'BRG0002', 3.00, 20000.00, 60000.00),
	(4, 'SK1901-000002', 'BRG0003', 2.00, 20000.00, 40000.00),
	(5, 'SK1901-000002', 'BRG0005', 2.00, 10000.00, 20000.00);
/*!40000 ALTER TABLE `trx_beli_barang_det` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_biaya_kendaraan
DROP TABLE IF EXISTS `trx_biaya_kendaraan`;
CREATE TABLE IF NOT EXISTS `trx_biaya_kendaraan` (
  `no_biaya` char(20) NOT NULL,
  `kode_karyawan` char(10) DEFAULT NULL,
  `kode_kendaraan` int(11) DEFAULT NULL,
  `sopir_kendaraan` char(10) DEFAULT NULL,
  `kernet_kendaraan` char(10) DEFAULT NULL,
  `tgl_biaya` date DEFAULT NULL,
  `grand_total` decimal(10,2) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_biaya`),
  KEY `FK_trx_biaya_kendaraan_master_karyawan` (`kode_karyawan`),
  KEY `FK_trx_biaya_kendaraan_master_kendaraan` (`kode_kendaraan`),
  KEY `FK_trx_biaya_kendaraan_master_driver` (`sopir_kendaraan`),
  KEY `FK_trx_biaya_kendaraan_master_driver_2` (`kernet_kendaraan`),
  CONSTRAINT `FK_trx_biaya_kendaraan_master_driver` FOREIGN KEY (`sopir_kendaraan`) REFERENCES `master_driver` (`kode_driver`),
  CONSTRAINT `FK_trx_biaya_kendaraan_master_driver_2` FOREIGN KEY (`kernet_kendaraan`) REFERENCES `master_driver` (`kode_driver`),
  CONSTRAINT `FK_trx_biaya_kendaraan_master_karyawan` FOREIGN KEY (`kode_karyawan`) REFERENCES `master_karyawan` (`kode_karyawan`),
  CONSTRAINT `FK_trx_biaya_kendaraan_master_kendaraan` FOREIGN KEY (`kode_kendaraan`) REFERENCES `master_kendaraan` (`kode_kendaraan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_biaya_kendaraan: ~2 rows (approximately)
/*!40000 ALTER TABLE `trx_biaya_kendaraan` DISABLE KEYS */;
INSERT INTO `trx_biaya_kendaraan` (`no_biaya`, `kode_karyawan`, `kode_kendaraan`, `sopir_kendaraan`, `kernet_kendaraan`, `tgl_biaya`, `grand_total`, `data_sts`) VALUES
	('BY1901-000001', 'KRY00001', 1, 'DRV0001', 'DRV0002', '2019-01-08', 100000.00, '1'),
	('BY1901-000002', 'KRY00001', 1, 'DRV0001', 'DRV0002', '2019-01-08', 1000000.00, '0');
/*!40000 ALTER TABLE `trx_biaya_kendaraan` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_biaya_kendaraan_det
DROP TABLE IF EXISTS `trx_biaya_kendaraan_det`;
CREATE TABLE IF NOT EXISTS `trx_biaya_kendaraan_det` (
  `det_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_biaya` char(20) DEFAULT NULL,
  `keterangan` text,
  `jumlah` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`det_id`),
  KEY `FK_trx_biaya_kendaraan_det_trx_biaya_kendaraan` (`no_biaya`),
  CONSTRAINT `FK_trx_biaya_kendaraan_det_trx_biaya_kendaraan` FOREIGN KEY (`no_biaya`) REFERENCES `trx_biaya_kendaraan` (`no_biaya`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_biaya_kendaraan_det: ~2 rows (approximately)
/*!40000 ALTER TABLE `trx_biaya_kendaraan_det` DISABLE KEYS */;
INSERT INTO `trx_biaya_kendaraan_det` (`det_id`, `no_biaya`, `keterangan`, `jumlah`) VALUES
	(1, 'BY1901-000001', 'tes 1', 100000.00),
	(2, 'BY1901-000002', 'tes 2', 1000000.00);
/*!40000 ALTER TABLE `trx_biaya_kendaraan_det` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_input_bon_karyawan
DROP TABLE IF EXISTS `trx_input_bon_karyawan`;
CREATE TABLE IF NOT EXISTS `trx_input_bon_karyawan` (
  `no_bon` char(20) NOT NULL,
  `kode_karyawan` char(10) DEFAULT NULL,
  `tgl_bon` date DEFAULT NULL,
  `nom_bon` decimal(10,2) DEFAULT NULL,
  `ket_bon` text,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_bon`),
  KEY `FK_trx_input_bon_karyawan_master_karyawan` (`kode_karyawan`),
  CONSTRAINT `FK_trx_input_bon_karyawan_master_karyawan` FOREIGN KEY (`kode_karyawan`) REFERENCES `master_karyawan` (`kode_karyawan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_input_bon_karyawan: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_input_bon_karyawan` DISABLE KEYS */;
INSERT INTO `trx_input_bon_karyawan` (`no_bon`, `kode_karyawan`, `tgl_bon`, `nom_bon`, `ket_bon`, `data_sts`) VALUES
	('BON1901-000001', 'KRY00001', '2019-01-11', 10000.00, 'Tes Bon', '1');
/*!40000 ALTER TABLE `trx_input_bon_karyawan` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_input_bon_sopir
DROP TABLE IF EXISTS `trx_input_bon_sopir`;
CREATE TABLE IF NOT EXISTS `trx_input_bon_sopir` (
  `no_bon` char(20) NOT NULL,
  `kode_driver` char(10) DEFAULT NULL,
  `tgl_bon` date DEFAULT NULL,
  `ket_bon` text,
  `nom_bon` decimal(10,2) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_bon`),
  KEY `FK_trx_input_bon_sopir_master_driver` (`kode_driver`),
  CONSTRAINT `FK_trx_input_bon_sopir_master_driver` FOREIGN KEY (`kode_driver`) REFERENCES `master_driver` (`kode_driver`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_input_bon_sopir: ~2 rows (approximately)
/*!40000 ALTER TABLE `trx_input_bon_sopir` DISABLE KEYS */;
INSERT INTO `trx_input_bon_sopir` (`no_bon`, `kode_driver`, `tgl_bon`, `ket_bon`, `nom_bon`, `data_sts`) VALUES
	('BONS1901-000001', 'DRV0001', '2019-01-12', 'tes bon sopir', 10000.00, '1'),
	('BONS1901-000002', NULL, '2019-01-12', NULL, NULL, '0');
/*!40000 ALTER TABLE `trx_input_bon_sopir` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_input_kas
DROP TABLE IF EXISTS `trx_input_kas`;
CREATE TABLE IF NOT EXISTS `trx_input_kas` (
  `no_kas` char(20) NOT NULL,
  `tgl_kas` date DEFAULT NULL,
  `debet` decimal(10,2) DEFAULT NULL,
  `kredit` decimal(10,2) DEFAULT NULL,
  `ket_kas` text,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_kas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_input_kas: ~2 rows (approximately)
/*!40000 ALTER TABLE `trx_input_kas` DISABLE KEYS */;
INSERT INTO `trx_input_kas` (`no_kas`, `tgl_kas`, `debet`, `kredit`, `ket_kas`, `data_sts`) VALUES
	('KAS1901-000001', '2019-01-11', 100000.00, 0.00, 'tes debet', '1'),
	('KAS1901-000002', '2019-01-11', 0.00, 10000.00, 'tes kredit', '1');
/*!40000 ALTER TABLE `trx_input_kas` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_input_klaim_sopir
DROP TABLE IF EXISTS `trx_input_klaim_sopir`;
CREATE TABLE IF NOT EXISTS `trx_input_klaim_sopir` (
  `no_klaim` char(20) NOT NULL,
  `kode_driver` char(10) DEFAULT NULL,
  `tgl_klaim` date DEFAULT NULL,
  `ket_klaim` text,
  `nom_klaim` decimal(10,2) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_klaim`),
  KEY `FK_trx_input_klaim_sopir_master_driver` (`kode_driver`),
  CONSTRAINT `FK_trx_input_klaim_sopir_master_driver` FOREIGN KEY (`kode_driver`) REFERENCES `master_driver` (`kode_driver`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_input_klaim_sopir: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_input_klaim_sopir` DISABLE KEYS */;
INSERT INTO `trx_input_klaim_sopir` (`no_klaim`, `kode_driver`, `tgl_klaim`, `ket_klaim`, `nom_klaim`, `data_sts`) VALUES
	('KLM1901-000001', 'DRV0001', '2019-01-12', 'tes klaim', 10000.00, '1');
/*!40000 ALTER TABLE `trx_input_klaim_sopir` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_kas_bon_kantor
DROP TABLE IF EXISTS `trx_kas_bon_kantor`;
CREATE TABLE IF NOT EXISTS `trx_kas_bon_kantor` (
  `no_bon` char(20) NOT NULL,
  `tgl_bon` date DEFAULT NULL,
  `tgl_berangkat` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `kode_kendaraan` int(11) DEFAULT NULL,
  `kode_sopir` char(10) DEFAULT NULL,
  `kode_kernet` char(10) DEFAULT NULL,
  `tab_sopir` decimal(10,2) DEFAULT NULL,
  `berat_jenis` char(1) DEFAULT NULL,
  `ket_kasbon` text,
  `uang_saku_kota` decimal(10,2) DEFAULT NULL,
  `tgl_bon_kota` date DEFAULT NULL,
  `uang_saku_a` decimal(10,0) DEFAULT NULL,
  `tgl_bon_a` date DEFAULT NULL,
  `uang_saku_b` decimal(10,2) DEFAULT NULL,
  `tgl_bon_b` date DEFAULT NULL,
  `uang_saku_c` decimal(10,2) DEFAULT NULL,
  `tgl_bon_c` date DEFAULT NULL,
  `uang_saku_d` decimal(10,2) DEFAULT NULL,
  `tgl_bon_d` date DEFAULT NULL,
  `sub_uang_saku` decimal(10,2) DEFAULT NULL,
  `uang_solar` decimal(10,2) DEFAULT NULL,
  `tgl_solar` date DEFAULT NULL,
  `nama_pom` char(100) DEFAULT NULL,
  `sub_bonall` decimal(10,2) DEFAULT NULL,
  `tgl_muat` date DEFAULT NULL,
  `tgl_muat_b` date DEFAULT NULL,
  `tgl_bongkar` date DEFAULT NULL,
  `tgl_bongkar_b` date DEFAULT NULL,
  `uang_makan` decimal(10,2) DEFAULT NULL,
  `uang_makan_b` decimal(10,2) DEFAULT NULL,
  `kode_customer_a` char(10) DEFAULT NULL,
  `kode_customer_b` char(10) DEFAULT NULL,
  `kode_customer_c` char(10) DEFAULT NULL,
  `kode_customer_d` char(10) DEFAULT NULL,
  `kode_customer_e` char(10) DEFAULT NULL,
  `kode_customer_f` char(10) DEFAULT NULL,
  `kode_customer_g` char(10) DEFAULT NULL,
  `kode_customer_h` char(10) DEFAULT NULL,
  `jenis_muatan_a` char(100) DEFAULT NULL,
  `jenis_muatan_b` char(100) DEFAULT NULL,
  `jenis_muatan_c` char(100) DEFAULT NULL,
  `jenis_muatan_d` char(100) DEFAULT NULL,
  `berat_muatan_a` decimal(10,2) DEFAULT NULL,
  `berat_muatan_b` decimal(10,2) DEFAULT NULL,
  `berat_muatan_c` decimal(10,2) DEFAULT NULL,
  `berat_muatan_d` decimal(10,2) DEFAULT NULL,
  `ongkos_angkut` decimal(10,2) DEFAULT NULL,
  `ongkos_angkut_2` decimal(10,2) DEFAULT NULL,
  `ongkos_angkut_3` decimal(10,2) DEFAULT NULL,
  `ongkos_angkut_4` decimal(10,2) DEFAULT NULL,
  `ongkos_bruto` decimal(10,2) DEFAULT NULL,
  `ongkos_bruto_2` decimal(10,2) DEFAULT NULL,
  `ongkos_bruto_3` decimal(10,2) DEFAULT NULL,
  `ongkos_bruto_4` decimal(10,2) DEFAULT NULL,
  `sub_bruto` decimal(10,2) DEFAULT NULL,
  `sub_bruto_b` decimal(10,2) DEFAULT NULL,
  `borong_sopir` char(1) DEFAULT NULL,
  `borong_sopir_2` char(1) DEFAULT NULL,
  `borong_sopir_3` char(1) DEFAULT NULL,
  `borong_sopir_4` char(1) DEFAULT NULL,
  `tambah_borong_a` decimal(10,2) DEFAULT NULL,
  `tambah_borong_b` decimal(10,2) DEFAULT NULL,
  `tambah_borong_c` decimal(10,2) DEFAULT NULL,
  `tambah_borong_d` decimal(10,2) DEFAULT NULL,
  `surat_jalan_a` char(100) DEFAULT NULL,
  `surat_jalan_b` char(100) DEFAULT NULL,
  `surat_jalan_c` char(100) DEFAULT NULL,
  `surat_jalan_d` char(100) DEFAULT NULL,
  `sub_beratmuat` decimal(10,2) DEFAULT NULL,
  `sub_beratmuat_b` decimal(10,2) DEFAULT NULL,
  `solar_berangkat` decimal(10,2) DEFAULT NULL,
  `solar_kembali` decimal(10,2) DEFAULT NULL,
  `bantuan_a` decimal(10,2) DEFAULT NULL,
  `bantuan_b` decimal(10,2) DEFAULT NULL,
  `bantuan_c` decimal(10,2) DEFAULT NULL,
  `bantuan_d` decimal(10,2) DEFAULT NULL,
  `tambah_a` decimal(10,2) DEFAULT NULL,
  `tambah_b` decimal(10,2) DEFAULT NULL,
  `tambah_c` decimal(10,2) DEFAULT NULL,
  `tambah_d` decimal(10,2) DEFAULT NULL,
  `uang_sopir_a` decimal(10,2) DEFAULT NULL,
  `uang_sopir_b` decimal(10,2) DEFAULT NULL,
  `uang_sopir_c` decimal(10,2) DEFAULT NULL,
  `uang_sopir_d` decimal(10,2) DEFAULT NULL,
  `koreksi_sopir_a` decimal(10,2) DEFAULT NULL,
  `koreksi_sopir_b` decimal(10,2) DEFAULT NULL,
  `koreksi_sopir_c` decimal(10,2) DEFAULT NULL,
  `koreksi_sopir_d` decimal(10,2) DEFAULT NULL,
  `sub_uangsopir` decimal(10,2) DEFAULT NULL,
  `sub_koreksi` decimal(10,2) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_bon`),
  KEY `FK_trx_kas_bon_kantor_master_kendaraan` (`kode_kendaraan`),
  KEY `FK_trx_kas_bon_kantor_master_driver` (`kode_sopir`),
  KEY `FK_trx_kas_bon_kantor_master_driver_2` (`kode_kernet`),
  KEY `FK_trx_kas_bon_kantor_master_customer` (`kode_customer_a`),
  KEY `FK_trx_kas_bon_kantor_master_customer_2` (`kode_customer_b`),
  KEY `FK_trx_kas_bon_kantor_master_customer_3` (`kode_customer_c`),
  KEY `FK_trx_kas_bon_kantor_master_customer_4` (`kode_customer_d`),
  KEY `FK_trx_kas_bon_kantor_master_customer_5` (`kode_customer_e`),
  KEY `FK_trx_kas_bon_kantor_master_customer_6` (`kode_customer_f`),
  KEY `FK_trx_kas_bon_kantor_master_customer_7` (`kode_customer_g`),
  KEY `FK_trx_kas_bon_kantor_master_customer_8` (`kode_customer_h`),
  CONSTRAINT `FK_trx_kas_bon_kantor_master_customer` FOREIGN KEY (`kode_customer_a`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_kantor_master_customer_2` FOREIGN KEY (`kode_customer_b`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_kantor_master_customer_3` FOREIGN KEY (`kode_customer_c`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_kantor_master_customer_4` FOREIGN KEY (`kode_customer_d`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_kantor_master_customer_5` FOREIGN KEY (`kode_customer_e`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_kantor_master_customer_6` FOREIGN KEY (`kode_customer_f`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_kantor_master_customer_7` FOREIGN KEY (`kode_customer_g`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_kantor_master_customer_8` FOREIGN KEY (`kode_customer_h`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_kantor_master_driver` FOREIGN KEY (`kode_sopir`) REFERENCES `master_driver` (`kode_driver`),
  CONSTRAINT `FK_trx_kas_bon_kantor_master_driver_2` FOREIGN KEY (`kode_kernet`) REFERENCES `master_driver` (`kode_driver`),
  CONSTRAINT `FK_trx_kas_bon_kantor_master_kendaraan` FOREIGN KEY (`kode_kendaraan`) REFERENCES `master_kendaraan` (`kode_kendaraan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_kas_bon_kantor: ~2 rows (approximately)
/*!40000 ALTER TABLE `trx_kas_bon_kantor` DISABLE KEYS */;
INSERT INTO `trx_kas_bon_kantor` (`no_bon`, `tgl_bon`, `tgl_berangkat`, `tgl_kembali`, `kode_kendaraan`, `kode_sopir`, `kode_kernet`, `tab_sopir`, `berat_jenis`, `ket_kasbon`, `uang_saku_kota`, `tgl_bon_kota`, `uang_saku_a`, `tgl_bon_a`, `uang_saku_b`, `tgl_bon_b`, `uang_saku_c`, `tgl_bon_c`, `uang_saku_d`, `tgl_bon_d`, `sub_uang_saku`, `uang_solar`, `tgl_solar`, `nama_pom`, `sub_bonall`, `tgl_muat`, `tgl_muat_b`, `tgl_bongkar`, `tgl_bongkar_b`, `uang_makan`, `uang_makan_b`, `kode_customer_a`, `kode_customer_b`, `kode_customer_c`, `kode_customer_d`, `kode_customer_e`, `kode_customer_f`, `kode_customer_g`, `kode_customer_h`, `jenis_muatan_a`, `jenis_muatan_b`, `jenis_muatan_c`, `jenis_muatan_d`, `berat_muatan_a`, `berat_muatan_b`, `berat_muatan_c`, `berat_muatan_d`, `ongkos_angkut`, `ongkos_angkut_2`, `ongkos_angkut_3`, `ongkos_angkut_4`, `ongkos_bruto`, `ongkos_bruto_2`, `ongkos_bruto_3`, `ongkos_bruto_4`, `sub_bruto`, `sub_bruto_b`, `borong_sopir`, `borong_sopir_2`, `borong_sopir_3`, `borong_sopir_4`, `tambah_borong_a`, `tambah_borong_b`, `tambah_borong_c`, `tambah_borong_d`, `surat_jalan_a`, `surat_jalan_b`, `surat_jalan_c`, `surat_jalan_d`, `sub_beratmuat`, `sub_beratmuat_b`, `solar_berangkat`, `solar_kembali`, `bantuan_a`, `bantuan_b`, `bantuan_c`, `bantuan_d`, `tambah_a`, `tambah_b`, `tambah_c`, `tambah_d`, `uang_sopir_a`, `uang_sopir_b`, `uang_sopir_c`, `uang_sopir_d`, `koreksi_sopir_a`, `koreksi_sopir_b`, `koreksi_sopir_c`, `koreksi_sopir_d`, `sub_uangsopir`, `sub_koreksi`, `data_sts`) VALUES
	('AS1901-000001', '2019-01-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
	('AS1901-000002', '2019-01-18', '2019-01-28', '2019-01-31', 2, 'DRV0001', 'DRV0002', 1000000.00, '0', 'tes', 200000.00, NULL, 100000, '2019-01-29', 100000.00, '2019-01-30', 0.00, '2019-01-31', 0.00, '2019-01-31', 0.00, 10000.00, '2019-01-31', 'Pertamini', 0.00, '2019-01-28', '0000-00-00', '2019-01-31', '0000-00-00', 100000.00, 0.00, 'CUST0001', 'CUST0002', NULL, NULL, NULL, NULL, NULL, NULL, 'Keramik', '', '', '', 20.00, 0.00, 0.00, 0.00, 20.00, 0.00, 0.00, 0.00, 40000.00, 0.00, 0.00, 0.00, 40000.00, 0.00, '0', '', '', '', 0.00, 0.00, 0.00, 0.00, 'SJ00001', '', '', '', 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '1');
/*!40000 ALTER TABLE `trx_kas_bon_kantor` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_kas_bon_sopir
DROP TABLE IF EXISTS `trx_kas_bon_sopir`;
CREATE TABLE IF NOT EXISTS `trx_kas_bon_sopir` (
  `no_bon` char(20) NOT NULL,
  `tgl_bon` date DEFAULT NULL,
  `kode_kendaraan` int(11) DEFAULT NULL,
  `kode_sopir` char(10) DEFAULT NULL,
  `kode_kernet` char(10) DEFAULT NULL,
  `tab_sopir` char(10) DEFAULT NULL,
  `berat_jenis` char(1) DEFAULT NULL,
  `ket_kasbon` text,
  `uang_saku_kota` decimal(10,2) DEFAULT NULL,
  `tgl_bon_kota` date DEFAULT NULL,
  `uang_saku_a` decimal(10,2) DEFAULT NULL,
  `tgl_bon_a` date DEFAULT NULL,
  `uang_saku_b` decimal(10,2) DEFAULT NULL,
  `tgl_bon_b` date DEFAULT NULL,
  `uang_saku_c` decimal(10,2) DEFAULT NULL,
  `tgl_bon_c` date DEFAULT NULL,
  `uang_saku_d` decimal(10,2) DEFAULT NULL,
  `tgl_bon_d` date DEFAULT NULL,
  `sub_uang_saku` decimal(10,2) DEFAULT NULL,
  `uang_solar` decimal(10,2) DEFAULT NULL,
  `tgl_solar` date DEFAULT NULL,
  `nama_pom` char(100) DEFAULT NULL,
  `sub_bonall` decimal(10,2) DEFAULT NULL,
  `tgl_muat` date DEFAULT NULL,
  `tgl_muat_b` date DEFAULT NULL,
  `tgl_bongkar` date DEFAULT NULL,
  `tgl_bongkar_b` date DEFAULT NULL,
  `uang_makan` decimal(10,2) DEFAULT NULL,
  `uang_makan_b` decimal(10,2) DEFAULT NULL,
  `kode_customer_a` char(10) DEFAULT NULL,
  `kode_customer_b` char(10) DEFAULT NULL,
  `kode_customer_c` char(10) DEFAULT NULL,
  `kode_customer_d` char(10) DEFAULT NULL,
  `kode_customer_e` char(10) DEFAULT NULL,
  `kode_customer_f` char(10) DEFAULT NULL,
  `kode_customer_g` char(10) DEFAULT NULL,
  `kode_customer_h` char(10) DEFAULT NULL,
  `jenis_muatan_a` char(10) DEFAULT NULL,
  `jenis_muatan_b` char(10) DEFAULT NULL,
  `jenis_muatan_c` char(10) DEFAULT NULL,
  `jenis_muatan_d` char(10) DEFAULT NULL,
  `berat_muatan_a` decimal(10,2) DEFAULT NULL,
  `berat_muatan_b` decimal(10,2) DEFAULT NULL,
  `berat_muatan_c` decimal(10,2) DEFAULT NULL,
  `berat_muatan_d` decimal(10,2) DEFAULT NULL,
  `surat_jalan_a` char(100) DEFAULT NULL,
  `surat_jalan_b` char(100) DEFAULT NULL,
  `surat_jalan_c` char(100) DEFAULT NULL,
  `surat_jalan_d` char(100) DEFAULT NULL,
  `sub_beratmuat` decimal(10,2) DEFAULT NULL,
  `sub_beratmuat_b` decimal(10,2) DEFAULT NULL,
  `solar_berangkat` decimal(10,2) DEFAULT NULL,
  `solar_kembali` decimal(10,2) DEFAULT NULL,
  `bantuan_a` decimal(10,2) DEFAULT NULL,
  `bantuan_b` decimal(10,2) DEFAULT NULL,
  `bantuan_c` decimal(10,2) DEFAULT NULL,
  `bantuan_d` decimal(10,2) DEFAULT NULL,
  `tambah_a` decimal(10,2) DEFAULT NULL,
  `tambah_b` decimal(10,2) DEFAULT NULL,
  `tambah_c` decimal(10,2) DEFAULT NULL,
  `tambah_d` decimal(10,2) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_bon`),
  KEY `FK_trx_kas_bon_sopir_master_kendaraan` (`kode_kendaraan`),
  KEY `FK_trx_kas_bon_sopir_master_driver` (`kode_sopir`),
  KEY `FK_trx_kas_bon_sopir_master_driver_2` (`kode_kernet`),
  KEY `FK_trx_kas_bon_sopir_master_customer` (`kode_customer_a`),
  KEY `FK_trx_kas_bon_sopir_master_customer_2` (`kode_customer_b`),
  KEY `FK_trx_kas_bon_sopir_master_customer_3` (`kode_customer_c`),
  KEY `FK_trx_kas_bon_sopir_master_customer_4` (`kode_customer_d`),
  KEY `FK_trx_kas_bon_sopir_master_customer_5` (`kode_customer_e`),
  KEY `FK_trx_kas_bon_sopir_master_customer_6` (`kode_customer_f`),
  KEY `FK_trx_kas_bon_sopir_master_customer_7` (`kode_customer_g`),
  KEY `FK_trx_kas_bon_sopir_master_customer_8` (`kode_customer_h`),
  CONSTRAINT `FK_trx_kas_bon_sopir_master_customer` FOREIGN KEY (`kode_customer_a`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_sopir_master_customer_2` FOREIGN KEY (`kode_customer_b`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_sopir_master_customer_3` FOREIGN KEY (`kode_customer_c`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_sopir_master_customer_4` FOREIGN KEY (`kode_customer_d`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_sopir_master_customer_5` FOREIGN KEY (`kode_customer_e`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_sopir_master_customer_6` FOREIGN KEY (`kode_customer_f`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_sopir_master_customer_7` FOREIGN KEY (`kode_customer_g`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_sopir_master_customer_8` FOREIGN KEY (`kode_customer_h`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_kas_bon_sopir_master_driver` FOREIGN KEY (`kode_sopir`) REFERENCES `master_driver` (`kode_driver`),
  CONSTRAINT `FK_trx_kas_bon_sopir_master_driver_2` FOREIGN KEY (`kode_kernet`) REFERENCES `master_driver` (`kode_driver`),
  CONSTRAINT `FK_trx_kas_bon_sopir_master_kendaraan` FOREIGN KEY (`kode_kendaraan`) REFERENCES `master_kendaraan` (`kode_kendaraan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_kas_bon_sopir: ~2 rows (approximately)
/*!40000 ALTER TABLE `trx_kas_bon_sopir` DISABLE KEYS */;
INSERT INTO `trx_kas_bon_sopir` (`no_bon`, `tgl_bon`, `kode_kendaraan`, `kode_sopir`, `kode_kernet`, `tab_sopir`, `berat_jenis`, `ket_kasbon`, `uang_saku_kota`, `tgl_bon_kota`, `uang_saku_a`, `tgl_bon_a`, `uang_saku_b`, `tgl_bon_b`, `uang_saku_c`, `tgl_bon_c`, `uang_saku_d`, `tgl_bon_d`, `sub_uang_saku`, `uang_solar`, `tgl_solar`, `nama_pom`, `sub_bonall`, `tgl_muat`, `tgl_muat_b`, `tgl_bongkar`, `tgl_bongkar_b`, `uang_makan`, `uang_makan_b`, `kode_customer_a`, `kode_customer_b`, `kode_customer_c`, `kode_customer_d`, `kode_customer_e`, `kode_customer_f`, `kode_customer_g`, `kode_customer_h`, `jenis_muatan_a`, `jenis_muatan_b`, `jenis_muatan_c`, `jenis_muatan_d`, `berat_muatan_a`, `berat_muatan_b`, `berat_muatan_c`, `berat_muatan_d`, `surat_jalan_a`, `surat_jalan_b`, `surat_jalan_c`, `surat_jalan_d`, `sub_beratmuat`, `sub_beratmuat_b`, `solar_berangkat`, `solar_kembali`, `bantuan_a`, `bantuan_b`, `bantuan_c`, `bantuan_d`, `tambah_a`, `tambah_b`, `tambah_c`, `tambah_d`, `data_sts`) VALUES
	('SS1901-000001', '2019-02-16', 1, 'DRV0001', 'DRV0002', '100000', '0', 'tes kas bon sopir', 2.00, '2019-02-16', 2.00, '2019-02-17', 0.00, NULL, 0.00, NULL, 0.00, NULL, 400000.00, 2.00, '2019-02-16', '0', 600000.00, NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 0.00, 0.00, 0.00, 0.00, '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '1'),
	('SS1902-000001', '2019-02-17', 1, 'DRV0001', 'DRV0002', '100000', '0', 'tes kas bon sopir 2', 5.00, '2019-02-17', 0.00, NULL, 0.00, NULL, 0.00, NULL, 0.00, NULL, 500000.00, 2.00, '2019-02-17', '1', 700000.00, '2019-02-17', '2019-02-20', '2019-02-20', '2019-02-22', 20.00, 1.00, 'CUST0001', 'CUST0002', NULL, NULL, 'CUST0002', 'CUST0001', NULL, NULL, 'Keramik', '', 'Keramik', '', 20000.00, 0.00, 20000.00, 0.00, '', '', '', '', 20000.00, 20000.00, 10.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '1');
/*!40000 ALTER TABLE `trx_kas_bon_sopir` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_kuitansi
DROP TABLE IF EXISTS `trx_kuitansi`;
CREATE TABLE IF NOT EXISTS `trx_kuitansi` (
  `no_kuitansi` char(20) NOT NULL,
  `kode_rekening` char(10) DEFAULT NULL,
  `kode_customer` char(10) DEFAULT NULL,
  `tgl_kuitansi` date DEFAULT NULL,
  `ket_kuitansi` varchar(1024) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_kuitansi`),
  KEY `FK_rx_kuitansi_master_rekening` (`kode_rekening`),
  KEY `FK_rx_kuitansi_master_customer` (`kode_customer`),
  CONSTRAINT `FK_rx_kuitansi_master_customer` FOREIGN KEY (`kode_customer`) REFERENCES `master_customer` (`kode_customer`),
  CONSTRAINT `FK_rx_kuitansi_master_rekening` FOREIGN KEY (`kode_rekening`) REFERENCES `master_rekening` (`kode_rekening`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_kuitansi: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_kuitansi` DISABLE KEYS */;
INSERT INTO `trx_kuitansi` (`no_kuitansi`, `kode_rekening`, `kode_customer`, `tgl_kuitansi`, `ket_kuitansi`, `data_sts`) VALUES
	('SJTK1902-000001', 'REK00001', 'CUST0001', '2019-02-19', 'tes kuitansi', '1');
/*!40000 ALTER TABLE `trx_kuitansi` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_kuitansi_det
DROP TABLE IF EXISTS `trx_kuitansi_det`;
CREATE TABLE IF NOT EXISTS `trx_kuitansi_det` (
  `det_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_kuitansi` char(20) DEFAULT NULL,
  `ket_pembayaran` varchar(1024) DEFAULT NULL,
  `nom_pembayaran` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`det_id`),
  KEY `FK_trx_kuitansi_det_trx_kuitansi` (`no_kuitansi`),
  CONSTRAINT `FK_trx_kuitansi_det_trx_kuitansi` FOREIGN KEY (`no_kuitansi`) REFERENCES `trx_kuitansi` (`no_kuitansi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_kuitansi_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_kuitansi_det` DISABLE KEYS */;
INSERT INTO `trx_kuitansi_det` (`det_id`, `no_kuitansi`, `ket_pembayaran`, `nom_pembayaran`) VALUES
	(2, 'SJTK1902-000001', 'tes detail kuitansi', 100000.00);
/*!40000 ALTER TABLE `trx_kuitansi_det` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_lepas_ban
DROP TABLE IF EXISTS `trx_lepas_ban`;
CREATE TABLE IF NOT EXISTS `trx_lepas_ban` (
  `no_pelepasan` char(20) NOT NULL,
  `kode_kendaraan` int(11) DEFAULT NULL,
  `tgl_pelepasan` date DEFAULT NULL,
  `bengkel_pelepasan` varchar(1024) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_pelepasan`),
  KEY `FK_trx_lepas_ban_master_kendaraan` (`kode_kendaraan`),
  CONSTRAINT `FK_trx_lepas_ban_master_kendaraan` FOREIGN KEY (`kode_kendaraan`) REFERENCES `master_kendaraan` (`kode_kendaraan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_lepas_ban: ~4 rows (approximately)
/*!40000 ALTER TABLE `trx_lepas_ban` DISABLE KEYS */;
INSERT INTO `trx_lepas_ban` (`no_pelepasan`, `kode_kendaraan`, `tgl_pelepasan`, `bengkel_pelepasan`, `data_sts`) VALUES
	('LPS1901-000001', NULL, '2019-01-20', NULL, '0'),
	('LPS1901-000002', NULL, '2019-01-21', NULL, '0'),
	('LPS1901-000003', NULL, '2019-01-21', NULL, '0'),
	('LPS1902-000001', 2, '2019-02-10', 'Mitras', '1');
/*!40000 ALTER TABLE `trx_lepas_ban` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_lepas_ban_det
DROP TABLE IF EXISTS `trx_lepas_ban_det`;
CREATE TABLE IF NOT EXISTS `trx_lepas_ban_det` (
  `det_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_pelepasan` char(20) DEFAULT NULL,
  `kode_ban` char(10) DEFAULT NULL,
  `qty_lepas` char(20) DEFAULT NULL,
  `status_lepas` char(20) DEFAULT NULL,
  PRIMARY KEY (`det_id`),
  KEY `FK_trx_lepas_ban_det_trx_lepas_ban` (`no_pelepasan`),
  KEY `FK_trx_lepas_ban_det_master_ban` (`kode_ban`),
  CONSTRAINT `FK_trx_lepas_ban_det_master_ban` FOREIGN KEY (`kode_ban`) REFERENCES `master_ban` (`kode_ban`),
  CONSTRAINT `FK_trx_lepas_ban_det_trx_lepas_ban` FOREIGN KEY (`no_pelepasan`) REFERENCES `trx_lepas_ban` (`no_pelepasan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_lepas_ban_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_lepas_ban_det` DISABLE KEYS */;
INSERT INTO `trx_lepas_ban_det` (`det_id`, `no_pelepasan`, `kode_ban`, `qty_lepas`, `status_lepas`) VALUES
	(1, 'LPS1902-000001', 'BAN0001', '1', '0');
/*!40000 ALTER TABLE `trx_lepas_ban_det` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_pakai_barang
DROP TABLE IF EXISTS `trx_pakai_barang`;
CREATE TABLE IF NOT EXISTS `trx_pakai_barang` (
  `no_pakai_brg` char(20) NOT NULL,
  `kode_karyawan` char(10) DEFAULT NULL,
  `kode_kendaraan` int(11) DEFAULT NULL,
  `kode_sopir` char(10) DEFAULT NULL,
  `kode_kernet` char(10) DEFAULT NULL,
  `tgl_pakai_brg` date DEFAULT NULL,
  `ket_pakai_brg` text,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_pakai_brg`),
  KEY `FK_trx_pakai_barang_master_karyawan` (`kode_karyawan`),
  KEY `FK_trx_pakai_barang_master_kendaraan` (`kode_kendaraan`),
  KEY `FK_trx_pakai_barang_master_driver` (`kode_sopir`),
  KEY `FK_trx_pakai_barang_master_driver_2` (`kode_kernet`),
  CONSTRAINT `FK_trx_pakai_barang_master_driver` FOREIGN KEY (`kode_sopir`) REFERENCES `master_driver` (`kode_driver`),
  CONSTRAINT `FK_trx_pakai_barang_master_driver_2` FOREIGN KEY (`kode_kernet`) REFERENCES `master_driver` (`kode_driver`),
  CONSTRAINT `FK_trx_pakai_barang_master_karyawan` FOREIGN KEY (`kode_karyawan`) REFERENCES `master_karyawan` (`kode_karyawan`),
  CONSTRAINT `FK_trx_pakai_barang_master_kendaraan` FOREIGN KEY (`kode_kendaraan`) REFERENCES `master_kendaraan` (`kode_kendaraan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_pakai_barang: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_pakai_barang` DISABLE KEYS */;
INSERT INTO `trx_pakai_barang` (`no_pakai_brg`, `kode_karyawan`, `kode_kendaraan`, `kode_sopir`, `kode_kernet`, `tgl_pakai_brg`, `ket_pakai_brg`, `data_sts`) VALUES
	('JL1901-000001', 'KRY00001', 1, 'DRV0001', 'DRV0002', '2019-01-06', 'tes a', '1');
/*!40000 ALTER TABLE `trx_pakai_barang` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_pakai_barang_det
DROP TABLE IF EXISTS `trx_pakai_barang_det`;
CREATE TABLE IF NOT EXISTS `trx_pakai_barang_det` (
  `det_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_pakai_brg` char(20) DEFAULT NULL,
  `kode_barang` char(10) DEFAULT NULL,
  `qty_pakai` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`det_id`),
  KEY `FK_trx_pakai_barang_det_trx_pakai_barang` (`no_pakai_brg`),
  KEY `FK_trx_pakai_barang_det_master_barang` (`kode_barang`),
  CONSTRAINT `FK_trx_pakai_barang_det_master_barang` FOREIGN KEY (`kode_barang`) REFERENCES `master_barang` (`kode_barang`),
  CONSTRAINT `FK_trx_pakai_barang_det_trx_pakai_barang` FOREIGN KEY (`no_pakai_brg`) REFERENCES `trx_pakai_barang` (`no_pakai_brg`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_pakai_barang_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_pakai_barang_det` DISABLE KEYS */;
INSERT INTO `trx_pakai_barang_det` (`det_id`, `no_pakai_brg`, `kode_barang`, `qty_pakai`) VALUES
	(12, 'JL1901-000001', 'BRG0001', 4.00);
/*!40000 ALTER TABLE `trx_pakai_barang_det` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_pasang_ban
DROP TABLE IF EXISTS `trx_pasang_ban`;
CREATE TABLE IF NOT EXISTS `trx_pasang_ban` (
  `no_pemasangan` char(20) NOT NULL,
  `kode_kendaraan` int(10) DEFAULT NULL,
  `tgl_pemasangan` date DEFAULT NULL,
  `bengkel_pemasangan` varchar(1024) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_pemasangan`),
  KEY `FK_trx_pasang_ban_master_kendaraan` (`kode_kendaraan`),
  CONSTRAINT `FK_trx_pasang_ban_master_kendaraan` FOREIGN KEY (`kode_kendaraan`) REFERENCES `master_kendaraan` (`kode_kendaraan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_pasang_ban: ~3 rows (approximately)
/*!40000 ALTER TABLE `trx_pasang_ban` DISABLE KEYS */;
INSERT INTO `trx_pasang_ban` (`no_pemasangan`, `kode_kendaraan`, `tgl_pemasangan`, `bengkel_pemasangan`, `data_sts`) VALUES
	('PSG1901-000001', NULL, '2019-01-20', NULL, '0'),
	('PSG1901-000002', NULL, '2019-01-21', NULL, '0'),
	('PSG1902-000001', 1, '2019-02-09', 'Mitra', '1');
/*!40000 ALTER TABLE `trx_pasang_ban` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_pasang_ban_det
DROP TABLE IF EXISTS `trx_pasang_ban_det`;
CREATE TABLE IF NOT EXISTS `trx_pasang_ban_det` (
  `det_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_pemasangan` char(20) DEFAULT NULL,
  `kode_ban` char(10) DEFAULT NULL,
  `qty_pasang` decimal(10,2) DEFAULT NULL,
  `status_pasang` char(1) DEFAULT NULL,
  PRIMARY KEY (`det_id`),
  KEY `FK_trx_pasang_ban_det_trx_pasang_ban` (`no_pemasangan`),
  KEY `FK_trx_pasang_ban_det_master_ban` (`kode_ban`),
  CONSTRAINT `FK_trx_pasang_ban_det_master_ban` FOREIGN KEY (`kode_ban`) REFERENCES `master_ban` (`kode_ban`),
  CONSTRAINT `FK_trx_pasang_ban_det_trx_pasang_ban` FOREIGN KEY (`no_pemasangan`) REFERENCES `trx_pasang_ban` (`no_pemasangan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_pasang_ban_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_pasang_ban_det` DISABLE KEYS */;
INSERT INTO `trx_pasang_ban_det` (`det_id`, `no_pemasangan`, `kode_ban`, `qty_pasang`, `status_pasang`) VALUES
	(3, 'PSG1902-000001', 'BAN0001', 1.00, '0');
/*!40000 ALTER TABLE `trx_pasang_ban_det` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_pelunasan
DROP TABLE IF EXISTS `trx_pelunasan`;
CREATE TABLE IF NOT EXISTS `trx_pelunasan` (
  `no_lunas` char(20) NOT NULL,
  `kode_customer` char(10) DEFAULT NULL,
  `tgl_lunas` date DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_lunas`),
  KEY `FK_trx_pelunasan_master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_pelunasan_master_customer` FOREIGN KEY (`kode_customer`) REFERENCES `master_customer` (`kode_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_pelunasan: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_pelunasan` DISABLE KEYS */;
INSERT INTO `trx_pelunasan` (`no_lunas`, `kode_customer`, `tgl_lunas`, `data_sts`) VALUES
	('KWP1902-000001', 'CUST0001', '2019-02-20', '1');
/*!40000 ALTER TABLE `trx_pelunasan` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_pelunasan_det
DROP TABLE IF EXISTS `trx_pelunasan_det`;
CREATE TABLE IF NOT EXISTS `trx_pelunasan_det` (
  `det_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_lunas` char(20) DEFAULT '0',
  `det_tagihan` int(11) DEFAULT '0',
  `jumlah` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`det_id`),
  KEY `FK_trx_pelunasan_det_trx_pelunasan` (`no_lunas`),
  KEY `FK_trx_pelunasan_det_trx_tagihan_det` (`det_tagihan`),
  CONSTRAINT `FK_trx_pelunasan_det_trx_pelunasan` FOREIGN KEY (`no_lunas`) REFERENCES `trx_pelunasan` (`no_lunas`),
  CONSTRAINT `FK_trx_pelunasan_det_trx_tagihan_det` FOREIGN KEY (`det_tagihan`) REFERENCES `trx_tagihan_det` (`det_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_pelunasan_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_pelunasan_det` DISABLE KEYS */;
INSERT INTO `trx_pelunasan_det` (`det_id`, `no_lunas`, `det_tagihan`, `jumlah`) VALUES
	(1, 'KWP1902-000001', 3, 40000.00);
/*!40000 ALTER TABLE `trx_pelunasan_det` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_retur_beli_barang
DROP TABLE IF EXISTS `trx_retur_beli_barang`;
CREATE TABLE IF NOT EXISTS `trx_retur_beli_barang` (
  `no_retur` char(20) NOT NULL,
  `no_nota` char(20) DEFAULT NULL,
  `tgl_retur` date DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_retur`),
  KEY `FK_trx_retur_beli_barang_trx_beli_barang` (`no_nota`),
  CONSTRAINT `FK_trx_retur_beli_barang_trx_beli_barang` FOREIGN KEY (`no_nota`) REFERENCES `trx_beli_barang` (`no_nota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_retur_beli_barang: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_retur_beli_barang` DISABLE KEYS */;
INSERT INTO `trx_retur_beli_barang` (`no_retur`, `no_nota`, `tgl_retur`, `data_sts`) VALUES
	('RBL1901-000001', 'SK1901-000002', '2019-01-08', '1');
/*!40000 ALTER TABLE `trx_retur_beli_barang` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_retur_beli_barang_det
DROP TABLE IF EXISTS `trx_retur_beli_barang_det`;
CREATE TABLE IF NOT EXISTS `trx_retur_beli_barang_det` (
  `det_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_retur` char(20) DEFAULT NULL,
  `kode_barang` char(10) DEFAULT NULL,
  `qty_retur` decimal(10,2) DEFAULT NULL,
  `jumlah` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`det_id`),
  KEY `FK_trx_retur_beli_barang_det_trx_retur_beli_barang` (`no_retur`),
  KEY `FK_trx_retur_beli_barang_det_master_barang` (`kode_barang`),
  CONSTRAINT `FK_trx_retur_beli_barang_det_master_barang` FOREIGN KEY (`kode_barang`) REFERENCES `master_barang` (`kode_barang`),
  CONSTRAINT `FK_trx_retur_beli_barang_det_trx_retur_beli_barang` FOREIGN KEY (`no_retur`) REFERENCES `trx_retur_beli_barang` (`no_retur`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_retur_beli_barang_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_retur_beli_barang_det` DISABLE KEYS */;
INSERT INTO `trx_retur_beli_barang_det` (`det_id`, `no_retur`, `kode_barang`, `qty_retur`, `jumlah`) VALUES
	(2, 'RBL1901-000001', 'BRG0001', 2.00, 2.00);
/*!40000 ALTER TABLE `trx_retur_beli_barang_det` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_retur_pakai_barang
DROP TABLE IF EXISTS `trx_retur_pakai_barang`;
CREATE TABLE IF NOT EXISTS `trx_retur_pakai_barang` (
  `no_retur` char(20) NOT NULL,
  `no_pakai_brg` char(20) DEFAULT NULL,
  `tgl_retur` date DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_retur`),
  KEY `FK_trx_retur_pakai_barang_trx_pakai_barang` (`no_pakai_brg`),
  CONSTRAINT `FK_trx_retur_pakai_barang_trx_pakai_barang` FOREIGN KEY (`no_pakai_brg`) REFERENCES `trx_pakai_barang` (`no_pakai_brg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_retur_pakai_barang: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_retur_pakai_barang` DISABLE KEYS */;
INSERT INTO `trx_retur_pakai_barang` (`no_retur`, `no_pakai_brg`, `tgl_retur`, `data_sts`) VALUES
	('RJL1901-000001', 'JL1901-000001', '2019-01-08', '1');
/*!40000 ALTER TABLE `trx_retur_pakai_barang` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_retur_pakai_barang_det
DROP TABLE IF EXISTS `trx_retur_pakai_barang_det`;
CREATE TABLE IF NOT EXISTS `trx_retur_pakai_barang_det` (
  `det_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_retur` char(20) DEFAULT NULL,
  `kode_barang` char(10) DEFAULT NULL,
  `qty_retur` decimal(10,2) DEFAULT NULL,
  `jumlah` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`det_id`),
  KEY `FK_trx_retur_pakai_barang_det_trx_retur_pakai_barang` (`no_retur`),
  KEY `FK_trx_retur_pakai_barang_det_master_barang` (`kode_barang`),
  CONSTRAINT `FK_trx_retur_pakai_barang_det_master_barang` FOREIGN KEY (`kode_barang`) REFERENCES `master_barang` (`kode_barang`),
  CONSTRAINT `FK_trx_retur_pakai_barang_det_trx_retur_pakai_barang` FOREIGN KEY (`no_retur`) REFERENCES `trx_retur_pakai_barang` (`no_retur`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_retur_pakai_barang_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_retur_pakai_barang_det` DISABLE KEYS */;
INSERT INTO `trx_retur_pakai_barang_det` (`det_id`, `no_retur`, `kode_barang`, `qty_retur`, `jumlah`) VALUES
	(1, 'RJL1901-000001', 'BRG0001', 2.00, 2.00);
/*!40000 ALTER TABLE `trx_retur_pakai_barang_det` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_tagihan
DROP TABLE IF EXISTS `trx_tagihan`;
CREATE TABLE IF NOT EXISTS `trx_tagihan` (
  `no_tagihan` char(20) NOT NULL,
  `tgl_tagihan` date DEFAULT NULL,
  `kode_customer` char(10) DEFAULT NULL,
  `data_sts` char(1) DEFAULT NULL,
  PRIMARY KEY (`no_tagihan`),
  KEY `FK_trx_tagihan_master_customer` (`kode_customer`),
  CONSTRAINT `FK_trx_tagihan_master_customer` FOREIGN KEY (`kode_customer`) REFERENCES `master_customer` (`kode_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_tagihan: ~2 rows (approximately)
/*!40000 ALTER TABLE `trx_tagihan` DISABLE KEYS */;
INSERT INTO `trx_tagihan` (`no_tagihan`, `tgl_tagihan`, `kode_customer`, `data_sts`) VALUES
	('SJT1901-000001', '2019-01-29', NULL, '0'),
	('SJT1901-000002', '2019-01-29', 'CUST0001', '1');
/*!40000 ALTER TABLE `trx_tagihan` ENABLE KEYS */;

-- Dumping structure for table suryajaya.trx_tagihan_det
DROP TABLE IF EXISTS `trx_tagihan_det`;
CREATE TABLE IF NOT EXISTS `trx_tagihan_det` (
  `det_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_tagihan` char(20) DEFAULT NULL,
  `no_bon` char(20) DEFAULT NULL,
  `tgl_muat` date DEFAULT NULL,
  `tgl_bongkar` date DEFAULT NULL,
  `nopol` char(20) DEFAULT NULL,
  `surat_jalan` char(100) DEFAULT NULL,
  `jenis_muatan` char(100) DEFAULT NULL,
  `berat_muatan` decimal(10,2) DEFAULT NULL,
  `ongkos_bruto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`det_id`),
  KEY `FK_trx_tagihan_det_trx_kas_bon_kantor` (`no_bon`),
  KEY `FK_trx_tagihan_det_trx_tagihan` (`no_tagihan`),
  CONSTRAINT `FK_trx_tagihan_det_trx_kas_bon_kantor` FOREIGN KEY (`no_bon`) REFERENCES `trx_kas_bon_kantor` (`no_bon`),
  CONSTRAINT `FK_trx_tagihan_det_trx_tagihan` FOREIGN KEY (`no_tagihan`) REFERENCES `trx_tagihan` (`no_tagihan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table suryajaya.trx_tagihan_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_tagihan_det` DISABLE KEYS */;
INSERT INTO `trx_tagihan_det` (`det_id`, `no_tagihan`, `no_bon`, `tgl_muat`, `tgl_bongkar`, `nopol`, `surat_jalan`, `jenis_muatan`, `berat_muatan`, `ongkos_bruto`) VALUES
	(3, 'SJT1901-000002', 'AS1901-000002', '2019-01-28', '2019-01-31', 'B2345XS', 'SJ00001', 'Keramik', 20.00, 40000.00);
/*!40000 ALTER TABLE `trx_tagihan_det` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

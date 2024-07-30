-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2024 at 04:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jbm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(35) NOT NULL,
  `admin_pass` varchar(35) NOT NULL,
  `admin_nama` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_user`, `admin_pass`, `admin_nama`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'amin', 'amin123', 'Dilan'),
(4, 'adis', 'adis', 'adis');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(35) NOT NULL,
  `kategori_satuan` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`kategori_id`, `kategori_nama`, `kategori_satuan`) VALUES
(1, 'Matic', 'Unit'),
(2, 'Cub', 'Unit'),
(3, 'Sport', 'Unit');

-- --------------------------------------------------------

--
-- Table structure for table `tb_keuangan`
--

CREATE TABLE `tb_keuangan` (
  `id_keuangan` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `debit` int(11) NOT NULL,
  `kredit` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_user` varchar(35) NOT NULL,
  `pelanggan_pass` varchar(35) NOT NULL,
  `pelanggan_nama` varchar(35) NOT NULL,
  `pelanggan_jk` varchar(35) NOT NULL,
  `pelanggan_tgl_lahir` date NOT NULL,
  `pelanggan_alamat` text NOT NULL,
  `pelanggan_nohp` varchar(35) NOT NULL,
  `pelanggan_nik` varchar(30) NOT NULL,
  `pelanggan_pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`pelanggan_id`, `pelanggan_user`, `pelanggan_pass`, `pelanggan_nama`, `pelanggan_jk`, `pelanggan_tgl_lahir`, `pelanggan_alamat`, `pelanggan_nohp`, `pelanggan_nik`, `pelanggan_pekerjaan`) VALUES
(17, 'yuza72', 'yuza123', 'Yuza Ilzam', 'laki-laki', '1972-06-10', 'Perumahan Nuansa Indah 3 Blok H 6 RT 003 RW 009 Kelurahan Koto Panjang Ikua Koto, Kecamatan Koto Tangah', '087869987622', '1372021606720001', 'Karyawan Swasta'),
(18, 'rori22', 'rahmadayat', 'Rori Rahmadayat', 'laki-laki', '1991-02-06', 'Koto Berapak, RT 000 RW 000, Kelurahan Koto Berapak , Kecamatan Bayang', '08136389023891', '1301062606890002', 'Petani/Pekebun'),
(19, 'adisti', '060728', 'Mutiara Adisti', 'Perempuan', '2001-11-28', 'Perumahan Nuansa Indah 3 Blok H 6, RT 003 RW 009 Kelurahan Koto Panjang Ikua Koto', '082381942128', '13720226811010001', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembelian`
--

CREATE TABLE `tb_pembelian` (
  `pembelian_id` int(11) NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `pembelian_tgl` date NOT NULL,
  `pembelian_status` varchar(35) NOT NULL DEFAULT 'Belum di Konfirmasi',
  `pembelian_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pembelian`
--

INSERT INTO `tb_pembelian` (`pembelian_id`, `pelanggan_id`, `pembelian_tgl`, `pembelian_status`, `pembelian_total`) VALUES
(1047, 17, '2024-01-29', 'Belum Di Konfirmasi', 118000000),
(1049, 18, '2023-12-11', 'Belum di Konfirmasi', 87000000),
(1050, 19, '2024-02-14', 'Belum di Konfirmasi', 143000000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembelian_produk`
--

CREATE TABLE `tb_pembelian_produk` (
  `pembelian_produk_id` int(11) NOT NULL,
  `pembelian_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `pembelian_produk_jumlah` int(11) NOT NULL,
  `pembelian_produk_harga` int(11) NOT NULL,
  `pembelian_sub_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pembelian_produk`
--

INSERT INTO `tb_pembelian_produk` (`pembelian_produk_id`, `pembelian_id`, `produk_id`, `pembelian_produk_jumlah`, `pembelian_produk_harga`, `pembelian_sub_harga`) VALUES
(40, 1047, 59, 1, 118000000, 118000000),
(41, 1048, 54, 1, 104000000, 104000000),
(42, 1049, 49, 1, 87000000, 87000000),
(43, 1050, 51, 1, 143000000, 143000000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `produk_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `produk_nama` varchar(35) NOT NULL,
  `produk_harga` int(11) NOT NULL,
  `produk_stok` int(11) NOT NULL,
  `produk_deskripsi` varchar(1000) NOT NULL,
  `produk_foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`produk_id`, `kategori_id`, `produk_nama`, `produk_harga`, `produk_stok`, `produk_deskripsi`, `produk_foto`) VALUES
(50, 1, 'PCX 160', 32670000, 2, 'Tipe Mesin  :  4-Langkah,4-Valve,eSP+\r\nTipe Pendingin : Pendingin Cairan\r\nSistem Suplai Bahan Bakar : PGM-FI (Programmed Fuel Injection)\r\nVolume Langkah : 156,9 cc\r\nDiameter X Langkah : 60 x 55,5 mm\r\nPerbandingan Kompresi : 12:1\r\nDaya Maksimum : 11,8 kW (16 PS) / 8.500 rpm\r\nTorsi Maksimum : 14,7 Nm (1,5 kgf.m) / 6.500 rpm\r\nTipe Transmisi : Otomatis, V-Matic\r\nTipe Starter : Elektrik\r\nTipe Kopling : Otomatis, Sentrifugal, Tipe Kering\r\nKapasitas Minyak Pelumas : 0,8 liter (Penggantian Periodik)\r\n', 'pcx.png'),
(51, 1, 'Stylo 160', 27550000, 2, 'Tipe Mesin : 4 Langkah, 4 Katup, eSP+\r\nVolume Langkah : 156,9 cc\r\nSistem Pendingin : Pendingin Cairan\r\nSistem Supply Bahan Bakar : PGM-FI (Programmed Fuel Injection)\r\nDiameter x Langkah : 60 x 55,5 mm\r\nRasio Kompresi : 12:1\r\nDaya Maksimum : 11,3 kW (15,4 PS) / 8,500 rpm\r\nTorsi Maksimum : 13,8 Nm (1,5 kgf.m) / 7000 rpm\r\nTransmisi : Otomatis, V-Matic\r\nSistem Starter : Elektrik\r\nSistem Transmisi : Otomatis, Sentrifugal, Tipe Kering\r\nTipe Minyak Pelumas : Basah\r\nKapasitas Oli : 0,8 liter (Penggantian Periodik)', 'stylo.png'),
(52, 3, 'CB150X', 33910000, 3, 'Tipe Mesin : 4 Langkah, DOHC 4 Katup\r\nVolume Langkah : 149,16 cc\r\nSistem Suplai Bahan Bakar : PGM-FI (Programmed Fuel Injection)\r\nDiameter x Langkah : 57,3 x 57,843 mm\r\nTipe Transmisi : Manual, 6 Kecepatan\r\nPerbandingan Kompresi : 11,3 : 1\r\nDaya Maksimum : 11,5 kW (15,6 PS) / 9.000 rpm\r\nTorsi Maksimum : 13,8 Nm (1,41 kgf.m) / 7.000 rpm\r\nTipe Starter : Electric\r\nTipe Kopling : Multiple Wet Clutch with Coil Spring\r\nTipe Pendinginan : Liquid Cooled\r\nPola Pengoperan Gigi : 1 - N - 2 - 3 - 4 - 5 - 6\r\nTipe Minyak Pelumas :Wet', 'cb150.png'),
(53, 1, 'Genio ', 19110000, 2, 'Tipe Mesin : 4 – Langkah, SOHC, eSP\r\nSistem Suplai Bahan Bakar : PGM – FI ( Programmed Fuel Injection )\r\nDiameter X Langkah : 47,0 x 63,1 mm\r\nTipe Tranmisi : Automatic, V-Matic\r\nRasio Kompresi : 10,0 : 1\r\nDaya Maksimum : 6,6 kW ( 9,0 PS ) / 7.500 rpm\r\nTorsi Maksimum : 9,3 Nm ( 0,95 kgf.m ) / 5.500 rpm\r\nTipe Starter : Elektrik dan Kick Starter\r\nTipe Kopling : Automatic Centrifugal Clutch Dry Type', 'genio.png'),
(54, 3, 'CBR150R', 37783000, 1, 'Tipe Mesin : 4-Langkah, DOHC\r\nKapasitas Mesin : 149,16 cc\r\nSistem Suplai Bahan Bakar : PGM-FI (Programmed Fuel Injection)\r\nDiameter X Langkah : 57,3 x 57,8 mm\r\nTipe Tranmisi : Manual, 6 kecepatan\r\nRasio Kompresi : 11,3 : 1\r\nDaya Maksimum : 12,6 kW (17,1 PS / 9.000 rpm )\r\nTorsi Maksimum : 14,4 Nm (1.47 kgf.m / 7.000 rpm )\r\nTipe Starter : Elektrik\r\nTipe Kopling : Wet\r\nSistem Pendingin Mesin : Liquid Cooled with Auto Fan\r\nPola Perpindahan Gigi : 1-N-2-3-4-5-6', 'cbr150.png'),
(55, 3, 'CBR250RR', 63956000, 1, 'Tipe Mesin : 4-Stroke, 8-Valve, Parallel Twin Cylinder\r\nKapasitas Mesin : 249.7 cc\r\nSistem Suplai Bahan Bakar : PGM-FI\r\nDiameter X Langkah : 62,0 x 41,4 mm\r\nTipe Tranmisi : Manual, 6 Speed\r\nRasio Kompresi : 11,5 : 1 (STD), 12,5 : 1 (SP | SPQS)\r\nDaya Maksimum : 28,5 kW (38,7 PS) / 12.500 rpm (STD) 31 kW (42 PS)/13.000 rpm (SP | SP QS)\r\nTorsi Maksimum : 23,3 Nm (2,4kgf.m)/11.000 rpm (STD) 25 Nm (2,5 kgf.m)/11.000 rpm (SP | SP QS)\r\nTipe Starter : Electric\r\nTipe Kopling : Multiple Wet Clutch with Coil Spring\r\nSistem Pendingin Mesin : Liquid Cooled With Auto Electric Fan\r\nPola Perpindahan Gigi : 1-N-2-3-4-5-6\r\nJenis Pelumas : Wet (Pressing and Spray)\r\nKapasitas Oli : 1,9 L', 'cbr250.png'),
(56, 3, 'CRF250L', 79900000, 1, 'Engine Type : 4-Stroke DOHC 4-valve Single Cylinder\r\nCooling System : Liquid Cooled\r\nFuel Supply System : PGM-FI\r\nDisplacement : 249,67\r\nBore x Stroke : 76 x 55\r\nCompression Ratio : 10,7:1\r\nMaximum Power : 18,9 kW / 8.500 rpm\r\nMaximum Torque : 23,1 Nm / 6.500 rpm\r\nTransmission : 6-speed Manual\r\nGear Shift Pattern : 1-N-2-3-4-5-6', 'crf150.png'),
(57, 2, 'Supra X 125 FI', 19100000, 1, 'Tipe Mesin : 4-Langkah, SOHC, Silinder Tunggal\r\nKapasitas Mesin : 124,89 cc\r\nSistem Suplai Bahan Bakar : PGM-FI (Programmed Fuel Injection)\r\nDiameter X Langkah : 52,4 x 57,9 mm\r\nTipe Tranmisi : 4 Speed, Rotary\r\nRasio Kompresi : 9,3:1\r\nDaya Maksimum : 7,40 kW (10,1 PS) / 8.000 rpm\r\nTorsi Maksimum : 9,30 Nm (0,95 kgf.m) / 4.000 rpm\r\nTipe Starter : Starter Kaki dan Elektrik\r\nTipe Kopling : Multiplate Wet Clutch with Coil Spring\r\nSistem Pendingin Mesin : Pendingin Udara\r\nPola Perpindahan Gigi : N-1-2-3-4-N', 'supra x.png'),
(58, 1, 'Scoopy', 21975000, 3, 'Tipe Mesin : 4 - Langkah, SOHC dengan Pendingin Udara, eSP\r\nSistem Suplai Bahan Bakar : PGM-FI (Programmed Fuel Injection)\r\nDiameter X Langkah : 47 x 63,1 mm\r\nTipe Tranmisi : Otomatis, V-Matic\r\nRasio Kompresi : 10 : 1\r\nDaya Maksimum : 6,6 kW (9 PS) / 7.500 rpm\r\nTorsi Maksimum : 9,3 Nm (0,95 kgf.m) / 5.500 rpm\r\nTipe Starter : Elektrik & kick Starter / Elektrik (Tipe Smart Key)\r\nTipe Kopling : Otomatis, Sentrifugal, Tipe Kering', 'scopy.png'),
(59, 2, 'GTR 150', 25180000, 3, 'Tipe Mesin : 4-Langkah, DOHC, 4 Katup\r\nKapasitas Mesin : 149,16 cc\r\nSistem Suplai Bahan Bakar : PGM-FI\r\nDiameter X Langkah : 57,3 x 57,8 mm\r\nTipe Tranmisi : Manual, 6 Kecepatan\r\nRasio Kompresi : 11,3:1\r\nDaya Maksimum : 12,0 kW (16,3 PS) / 9.000 rpm\r\nTorsi Maksimum : 14,2 Nm (1,45 kgf.m) / 6.500 rpm\r\nTipe Starter : Elektric & Kick Starter\r\nTipe Kopling : Wet Multiplate with Coil Springs\r\nSistem Pendingin Mesin : Liquid Cooled with Auto Fan\r\nPola Perpindahan Gigi : 1-N-2-3-4-5-6', 'gtr.png'),
(60, 1, 'Beat', 18281000, 2, 'Tipe Mesin : 4 – Langkah, SOHC, eSP\r\nVolume Langkah : 109.5cc\r\nSistem Suplai Bahan Bakar : Injeksi (PGM-FI)\r\nDiameter X Langkah : 47.0 x 63.1 mm\r\nTipe Tranmisi : Otomatis, V-Matic\r\nRasio Kompresi : 10.0 : 1\r\nDaya Maksimum : 6.6 kW (9.0 PS)/7.500 rpm\r\nTorsi Maksimum : 9.3 N.m (0.95 kgf.m)/ 5.500 rpm\r\nTipe Starter : Elektrik dan Kick Starter\r\nTipe Kopling : Otomatis, Sentrifugal, Tipe Kering', 'beat.png'),
(61, 2, 'Revo', 16020000, 3, 'Tipe Mesin : SOHC, 4 Langkah, SOHC, Silinder Tunggal\r\nKapasitas Mesin : 109,17 cm3\r\nSistem Suplai Bahan Bakar : Injeksi/PGM-FI (Programmed Fuel Injection)\r\nDiameter X Langkah : 50 x 55,6 mm\r\nTipe Tranmisi : 4 Kecepatan\r\nRasio Kompresi : 9,3:1\r\nDaya Maksimum : 6,56kW (8,91 PS) / 7.500 rpm\r\nTorsi Maksimum : 8,76 Nm (0,86 kgf.m) / 6.000 rpm\r\nTipe Starter : Starter Kaki & Starter Elektrik\r\nTipe Kopling : Multiplate Wet Clutch with Diaphrgam Spring\r\nSistem Pendingin Mesin : Pendingin Udara\r\nPola Perpindahan Gigi : N-1-2-3-4-N', 'revo.png'),
(62, 1, 'Vario 162 eSP', 23427000, 3, 'Tipe Mesin : 4 Langkah, 4-Valve, eSP+\r\nSistem Pendingin : Pendingin Cairan\r\nSistem Pengapian : PGM-FI (Programmed Fuel Injection)\r\nVolume Langkah : 156,9 cc\r\nDiameter x Langkah : 60 x 55,5 mm\r\nPerbandingan Kompresi : 12 : 1\r\nDaya Maksimum : 11,3 kW (15,4 PS) / 8.500 rpm\r\nTorsi Maksimum : 13,8 Nm (1,4 kgf,m) / 7.000 rpm\r\nTipe Transmisi : Otomatis, V-Matic\r\nTipe Starter : Elektrik\r\nTipe Kopling : Otomatis, Sentrifugal, Tipe Kering\r\nTipe Minyak Pelumas : Basah\r\nKapasitas Minyak Pelumas : 0,8 liter (Penggantian Periodik)', 'vario.png'),
(63, 3, 'Sonic150R', 25701000, 2, 'Tipe Mesin : 4 Langkah, DOHC - 4 Katup\r\nKapasitas Mesin : 149.16 cc\r\nSistem Suplai Bahan Bakar : PGM-FI\r\nDiameter X Langkah : 57.3 x 57.8 mm\r\nTipe Tranmisi : Manual, 6 - Kecepatan\r\nRasio Kompresi : 11.3:1\r\nDaya Maksimum : 11.8 kW (16.0 PS) / 9,000 rpm\r\nTorsi Maksimum : 13.5 Nm (1.38 kgf.m) / 6,500 rpm\r\nTipe Starter : Pedal & Elektrik\r\nTipe Kopling : Multiple Wet Clutch Coil Spring\r\nSistem Pendingin Mesin : Liquid Cooled with Auto Fan\r\nPola Perpindahan Gigi : 1 - N - 2 - 3 - 4 - 5 - 6', 'sonic.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tb_keuangan`
--
ALTER TABLE `tb_keuangan`
  ADD PRIMARY KEY (`id_keuangan`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indexes for table `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  ADD PRIMARY KEY (`pembelian_id`);

--
-- Indexes for table `tb_pembelian_produk`
--
ALTER TABLE `tb_pembelian_produk`
  ADD PRIMARY KEY (`pembelian_produk_id`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_keuangan`
--
ALTER TABLE `tb_keuangan`
  MODIFY `id_keuangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  MODIFY `pembelian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1051;

--
-- AUTO_INCREMENT for table `tb_pembelian_produk`
--
ALTER TABLE `tb_pembelian_produk`
  MODIFY `pembelian_produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

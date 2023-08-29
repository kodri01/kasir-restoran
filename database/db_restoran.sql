-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2022 at 12:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `nama_level`) VALUES
(1, 'Administrator'),
(2, 'Waiter'),
(3, 'Kasir'),
(4, 'Owner'),
(5, 'Pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_masakan`
--

CREATE TABLE `tb_masakan` (
  `id_masakan` int(11) NOT NULL,
  `id_minuman` int(11) NOT NULL,
  `nama_masakan` varchar(150) NOT NULL,
  `harga` varchar(150) NOT NULL,
  `stok` int(11) NOT NULL,
  `status_masakan` varchar(150) NOT NULL,
  `gambar_masakan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_masakan`
--

INSERT INTO `tb_masakan` (`id_masakan`, `id_minuman`, `nama_masakan`, `harga`, `stok`, `status_masakan`, `gambar_masakan`) VALUES
(34, 0, 'Nasi Goreng Spesial', '15000', 9, 'tersedia', 'Nasi Goreng Spesial.jpg'),
(54, 0, 'Nuget', '12000', 16, 'tersedia', 'Nuget.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_minuman`
--

CREATE TABLE `tb_minuman` (
  `id_minuman` int(11) NOT NULL,
  `nama_minuman` varchar(150) NOT NULL,
  `harga` varchar(150) NOT NULL,
  `stok` int(11) NOT NULL,
  `status_minuman` varchar(150) NOT NULL,
  `gambar_minuman` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_minuman`
--

INSERT INTO `tb_minuman` (`id_minuman`, `nama_minuman`, `harga`, `stok`, `status_minuman`, `gambar_minuman`) VALUES
(45, 'Jus Jeruk', '8000', 18, 'tersedia', 'Jus Jeruk.jpg'),
(49, 'Kopi Panas', '8000', 13, 'tersedia', 'Kopi Panas.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `id_order` int(11) NOT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `id_pengunjung` int(11) NOT NULL,
  `waktu_pesan` datetime NOT NULL,
  `no_meja` int(11) NOT NULL,
  `total_harga` varchar(150) NOT NULL,
  `uang_bayar` varchar(150) DEFAULT NULL,
  `uang_kembali` varchar(150) DEFAULT NULL,
  `status_order` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `id_admin`, `id_pengunjung`, `waktu_pesan`, `no_meja`, `total_harga`, `uang_bayar`, `uang_kembali`, `status_order`) VALUES
(49, 1, 1, '2021-11-12 19:16:35', 2, '30000', '50000', '20000', 'sudah bayar'),
(50, 17, 19, '2021-11-13 14:23:39', 6, '52000', '70000', '18000', 'sudah bayar'),
(52, 17, 19, '2021-11-24 17:13:10', 6, '48000', '100000', '52000', 'sudah bayar'),
(53, 17, 19, '2021-12-14 23:18:21', 2, '22000', '50000', '28000', 'sudah bayar'),
(57, 1, 1, '2022-04-23 08:43:14', 1, '22000', '30000', '8000', 'sudah bayar'),
(59, 1, 1, '2022-05-20 19:13:54', 1, '14000', '90000', '76000', 'sudah bayar'),
(64, 1, 1, '2022-06-06 15:09:51', 1, '14000', '900000', '886000', 'sudah bayar'),
(66, 21, 19, '2022-06-21 11:00:05', 1, '58000', '60000', '2000', 'sudah bayar'),
(71, 0, 1, '2022-07-13 17:37:27', 2, '0', '', '', 'belum bayar');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `id_pesan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) DEFAULT NULL,
  `id_masakan` int(11) NOT NULL,
  `id_minuman` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `status_pesan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pesan`
--

INSERT INTO `tb_pesan` (`id_pesan`, `id_user`, `id_order`, `id_masakan`, `id_minuman`, `jumlah`, `status_pesan`) VALUES
(69, 1, 0, 1, 0, 0, 'sudah'),
(70, 1, 0, 1, 0, 0, 'sudah'),
(75, 1, 0, 1, 0, 0, 'sudah'),
(76, 1, 0, 1, 0, 0, 'sudah'),
(77, 1, 0, 2, 0, 0, 'sudah'),
(78, 1, 0, 2, 0, 0, 'sudah'),
(86, 1, 0, 24, 0, 0, 'sudah'),
(155, 1, 49, 34, 0, 2, 'sudah'),
(156, 19, 50, 51, 0, 1, 'sudah'),
(157, 19, 50, 36, 0, 1, 'sudah'),
(158, 19, 50, 34, 0, 1, 'sudah'),
(159, 19, 50, 46, 0, 1, 'sudah'),
(164, 19, 52, 48, 0, 1, 'sudah'),
(165, 19, 52, 49, 0, 1, 'sudah'),
(166, 19, 52, 39, 0, 2, 'sudah'),
(167, 19, 53, 46, 0, 1, 'sudah'),
(168, 19, 53, 37, 0, 1, 'sudah'),
(177, 1, 57, 49, 0, 1, 'sudah'),
(178, 1, 57, 46, 0, 2, 'sudah'),
(181, 1, 59, 46, 0, 2, 'sudah'),
(189, 1, 64, 46, 0, 2, 'sudah'),
(191, 19, 66, 49, 0, 1, 'sudah'),
(192, 19, 66, 54, 0, 1, 'sudah'),
(193, 19, 66, 45, 0, 1, 'sudah'),
(194, 19, 66, 36, 0, 1, 'sudah'),
(195, 19, 66, 34, 0, 1, 'sudah'),
(222, 1, 0, 54, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_stok`
--

CREATE TABLE `tb_stok` (
  `id_stok` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `jumlah_terjual` int(11) DEFAULT NULL,
  `status_cetak` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_stok`
--

INSERT INTO `tb_stok` (`id_stok`, `id_pesan`, `jumlah_terjual`, `status_cetak`) VALUES
(1, 46, 1, 'belum cetak'),
(2, 47, 2, 'belum cetak'),
(3, 48, 2, 'belum cetak'),
(4, 49, 1, 'belum cetak'),
(5, 50, 2, 'belum cetak'),
(6, 51, 0, 'belum cetak'),
(7, 52, 0, 'belum cetak'),
(8, 53, 0, 'belum cetak'),
(9, 54, 0, 'belum cetak'),
(10, 55, 0, 'belum cetak'),
(11, 56, 2, 'belum cetak'),
(12, 57, 1, 'belum cetak'),
(13, 58, 6, 'belum cetak'),
(14, 59, 1, 'belum cetak'),
(15, 60, 1, 'belum cetak'),
(16, 61, 0, 'belum cetak'),
(17, 62, 0, 'belum cetak'),
(18, 63, 0, 'belum cetak'),
(19, 64, 0, 'belum cetak'),
(20, 65, 0, 'belum cetak'),
(21, 66, 0, 'belum cetak'),
(22, 67, 0, 'belum cetak'),
(23, 68, 0, 'belum cetak'),
(24, 69, 0, 'belum cetak'),
(25, 70, 0, 'belum cetak'),
(26, 71, 0, 'belum cetak'),
(27, 72, 0, 'belum cetak'),
(28, 73, 0, 'belum cetak'),
(29, 74, 0, 'belum cetak'),
(30, 75, 0, 'belum cetak'),
(31, 76, 0, 'belum cetak'),
(32, 77, 0, 'belum cetak'),
(33, 78, 0, 'belum cetak'),
(34, 79, 0, 'belum cetak'),
(35, 80, 0, 'belum cetak'),
(36, 81, 0, 'belum cetak'),
(37, 82, 0, 'belum cetak'),
(38, 83, 0, 'belum cetak'),
(39, 84, 0, 'belum cetak'),
(40, 85, 0, 'belum cetak'),
(41, 86, 0, 'belum cetak'),
(42, 87, 3, 'belum cetak'),
(43, 88, 2, 'belum cetak'),
(44, 89, 3, 'belum cetak'),
(45, 90, 1, 'belum cetak'),
(46, 91, 2, 'belum cetak'),
(47, 92, 2, 'belum cetak'),
(48, 93, 1, 'belum cetak'),
(49, 94, 2, 'belum cetak'),
(50, 95, 2, 'belum cetak'),
(51, 96, 1, 'belum cetak'),
(52, 97, 1, 'belum cetak'),
(53, 98, 0, 'belum cetak'),
(54, 99, 0, 'belum cetak'),
(55, 100, 0, 'belum cetak'),
(56, 101, 0, 'belum cetak'),
(57, 102, 0, 'belum cetak'),
(58, 103, 0, 'belum cetak'),
(59, 104, 0, 'belum cetak'),
(60, 105, 0, 'belum cetak'),
(61, 106, 0, 'belum cetak'),
(62, 107, 0, 'belum cetak'),
(63, 108, 0, 'belum cetak'),
(64, 109, 0, 'belum cetak'),
(65, 101, 0, 'belum cetak'),
(66, 101, 0, 'belum cetak'),
(67, 101, 0, 'belum cetak'),
(68, 101, 0, 'belum cetak'),
(69, 101, 0, 'belum cetak'),
(70, 101, 0, 'belum cetak'),
(71, 101, 0, 'belum cetak'),
(72, 101, 0, 'belum cetak'),
(73, 101, 0, 'belum cetak'),
(74, 101, 0, 'belum cetak'),
(75, 101, 0, 'belum cetak'),
(76, 101, 0, 'belum cetak'),
(77, 101, 0, 'belum cetak'),
(78, 101, 0, 'belum cetak'),
(79, 101, 0, 'belum cetak'),
(80, 101, 0, 'belum cetak'),
(81, 101, 0, 'belum cetak'),
(82, 101, 0, 'belum cetak'),
(83, 101, 0, 'belum cetak'),
(84, 101, 0, 'belum cetak'),
(85, 101, 0, 'belum cetak'),
(86, 101, 0, 'belum cetak'),
(87, 101, 0, 'belum cetak'),
(88, 101, 0, 'belum cetak'),
(89, 101, 0, 'belum cetak'),
(90, 101, 0, 'belum cetak'),
(91, 110, 0, 'belum cetak'),
(92, 111, 0, 'belum cetak'),
(93, 112, 0, 'belum cetak'),
(94, 113, 0, 'belum cetak'),
(95, 114, 0, 'belum cetak'),
(96, 101, 0, 'belum cetak'),
(97, 101, 0, 'belum cetak'),
(98, 101, 0, 'belum cetak'),
(99, 101, 0, 'belum cetak'),
(100, 101, 0, 'belum cetak'),
(101, 101, 0, 'belum cetak'),
(102, 101, 0, 'belum cetak'),
(103, 101, 0, 'belum cetak'),
(104, 115, 0, 'belum cetak'),
(105, 116, 0, 'belum cetak'),
(106, 117, 0, 'belum cetak'),
(107, 118, 0, 'belum cetak'),
(108, 119, 0, 'belum cetak'),
(109, 120, 0, 'belum cetak'),
(110, 121, 0, 'belum cetak'),
(111, 122, 0, 'belum cetak'),
(112, 123, 0, 'belum cetak'),
(113, 124, 0, 'belum cetak'),
(114, 125, 0, 'belum cetak'),
(115, 126, 0, 'belum cetak'),
(116, 127, 0, 'belum cetak'),
(117, 128, 0, 'belum cetak'),
(118, 128, 0, 'belum cetak'),
(119, 128, 0, 'belum cetak'),
(120, 129, 0, 'belum cetak'),
(121, 130, 2, 'belum cetak'),
(122, 131, 1, 'belum cetak'),
(123, 132, 2, 'belum cetak'),
(124, 133, 2, 'belum cetak'),
(125, 134, 2, 'belum cetak'),
(126, 135, 1, 'belum cetak'),
(127, 136, 1, 'belum cetak'),
(128, 137, 1, 'belum cetak'),
(129, 138, 1, 'belum cetak'),
(130, 139, 0, 'belum cetak'),
(131, 140, 0, 'belum cetak'),
(132, 141, 0, 'belum cetak'),
(133, 142, 0, 'belum cetak'),
(134, 143, 0, 'belum cetak'),
(135, 144, 0, 'belum cetak'),
(136, 145, 0, 'belum cetak'),
(137, 146, 0, 'belum cetak'),
(138, 147, 0, 'belum cetak'),
(139, 148, 0, 'belum cetak'),
(140, 149, 0, 'belum cetak'),
(141, 150, 0, 'belum cetak'),
(142, 151, 1, 'belum cetak'),
(143, 152, 1, 'belum cetak'),
(144, 153, 0, 'belum cetak'),
(145, 154, 0, 'belum cetak'),
(146, 155, 2, 'belum cetak'),
(147, 156, 1, 'belum cetak'),
(148, 157, 1, 'belum cetak'),
(149, 158, 1, 'belum cetak'),
(150, 159, 1, 'belum cetak'),
(151, 160, 1, 'belum cetak'),
(152, 161, 1, 'belum cetak'),
(153, 162, 1, 'belum cetak'),
(154, 163, 1, 'belum cetak'),
(155, 164, 1, 'belum cetak'),
(156, 165, 1, 'belum cetak'),
(157, 166, 2, 'belum cetak'),
(158, 167, 1, 'belum cetak'),
(159, 168, 1, 'belum cetak'),
(160, 169, 2, 'belum cetak'),
(161, 170, 2, 'belum cetak'),
(162, 171, 2, 'belum cetak'),
(163, 172, 1, 'belum cetak'),
(164, 173, 1, 'belum cetak'),
(165, 174, 1, 'belum cetak'),
(166, 175, 1, 'belum cetak'),
(167, 176, 0, 'belum cetak'),
(168, 177, 1, 'belum cetak'),
(169, 178, 2, 'belum cetak'),
(170, 179, 2, 'belum cetak'),
(171, 180, 0, 'belum cetak'),
(172, 181, 2, 'belum cetak'),
(173, 182, 2, 'belum cetak'),
(174, 183, 1, 'belum cetak'),
(175, 184, 3, 'belum cetak'),
(176, 185, 3, 'belum cetak'),
(177, 186, 2, 'belum cetak'),
(178, 187, 2, 'belum cetak'),
(179, 188, 1, 'belum cetak'),
(180, 189, 2, 'belum cetak'),
(181, 190, 5, 'belum cetak'),
(182, 191, 1, 'belum cetak'),
(183, 192, 1, 'belum cetak'),
(184, 193, 1, 'belum cetak'),
(185, 194, 1, 'belum cetak'),
(186, 195, 1, 'belum cetak'),
(187, 196, 12, 'belum cetak'),
(188, 197, 0, 'belum cetak'),
(189, 198, 0, 'belum cetak'),
(190, 199, 0, 'belum cetak'),
(191, 200, 0, 'belum cetak'),
(192, 201, 0, 'belum cetak'),
(193, 202, 0, 'belum cetak'),
(194, 203, 0, 'belum cetak'),
(195, 204, 0, 'belum cetak'),
(196, 205, 0, 'belum cetak'),
(197, 206, 0, 'belum cetak'),
(198, 207, 0, 'belum cetak'),
(199, 208, 0, 'belum cetak'),
(200, 209, 0, 'belum cetak'),
(201, 210, 0, 'belum cetak'),
(202, 211, 0, 'belum cetak'),
(203, 212, 0, 'belum cetak'),
(204, 213, 0, 'belum cetak'),
(205, 214, 0, 'belum cetak'),
(206, 215, 2, 'belum cetak'),
(207, 216, 0, 'belum cetak'),
(208, 217, 0, 'belum cetak'),
(209, 218, 0, 'belum cetak'),
(210, 219, 0, 'belum cetak'),
(211, 220, 0, 'belum cetak'),
(212, 221, 0, 'belum cetak'),
(213, 222, 0, 'belum cetak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nama_user` varchar(150) NOT NULL,
  `id_level` int(11) NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nama_user`, `id_level`, `status`) VALUES
(1, 'admin', '123', 'Admin', 1, 'aktif'),
(18, 'owner', '123', 'mukhtar', 4, 'aktif'),
(19, 'pelanggan', '123', 'Siti Junet', 5, 'aktif'),
(21, 'kasir', '123', 'Fatimah', 3, 'aktif'),
(24, 'waiter', '123', 'genta', 2, 'aktif'),
(25, 'kasir1', '123', 'Jayanti', 3, 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `tb_masakan`
--
ALTER TABLE `tb_masakan`
  ADD PRIMARY KEY (`id_masakan`);

--
-- Indexes for table `tb_minuman`
--
ALTER TABLE `tb_minuman`
  ADD PRIMARY KEY (`id_minuman`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_pengunjung` (`id_pengunjung`);

--
-- Indexes for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `tb_stok`
--
ALTER TABLE `tb_stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_masakan`
--
ALTER TABLE `tb_masakan`
  MODIFY `id_masakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tb_minuman`
--
ALTER TABLE `tb_minuman`
  MODIFY `id_minuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `tb_stok`
--
ALTER TABLE `tb_stok`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

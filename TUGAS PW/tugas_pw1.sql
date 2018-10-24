-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2018 at 08:12 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas pw1`
--

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(1) NOT NULL,
  `id_mhsw` int(10) NOT NULL,
  `id_mk` int(10) NOT NULL,
  `semester` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `id_mhsw`, `id_mk`, `semester`) VALUES
(1, 1, 1, '7'),
(2, 2, 1, '7'),
(3, 3, 1, '7'),
(4, 4, 1, '7'),
(5, 5, 1, '7'),
(6, 6, 1, '7'),
(7, 7, 1, '7'),
(8, 8, 1, '7'),
(9, 9, 1, '7'),
(10, 10, 1, '7'),
(11, 11, 1, '7'),
(12, 12, 1, '7'),
(13, 13, 1, '7'),
(14, 14, 1, '7'),
(15, 15, 1, '7'),
(16, 16, 1, '7'),
(17, 17, 1, '7'),
(18, 18, 1, '7'),
(19, 19, 1, '7'),
(20, 1, 2, '7'),
(21, 2, 2, '7'),
(22, 3, 2, '7'),
(23, 4, 2, '7'),
(24, 5, 2, '7');

-- --------------------------------------------------------

--
-- Table structure for table `mhsw`
--

CREATE TABLE `mhsw` (
  `id_mhsw` int(10) NOT NULL,
  `nm_mhsw` varchar(50) NOT NULL,
  `tmpt_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jns_klmn` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mhsw`
--

INSERT INTO `mhsw` (`id_mhsw`, `nm_mhsw`, `tmpt_lahir`, `tgl_lahir`, `jns_klmn`) VALUES
(1, 'widia dwi putri', 'Hialu, Asera', '1999-01-01', 'P'),
(2, 'safarudin', 'Mataoleo', '1996-06-16', 'L'),
(3, 'andi kota', 'Wonua Kongga, Konsel', '1998-05-04', 'L'),
(4, 'arwan prianto mangidi', 'Lambangi', '1999-07-06', 'L'),
(5, 'alpin', 'kendari', '1996-06-07', 'L'),
(6, 'rani salvia', 'wanci', '1999-01-05', 'P'),
(7, 'karyono adi santoso', 'Sendang Mulya Sari', '1998-01-03', 'L'),
(8, 'Hasna Noprianti', 'Kendari', '1998-09-02', 'P'),
(9, 'indriani', 'Kendari', '1998-09-08', 'P'),
(10, 'indriani ningsih', 'Kendari', '1998-07-07', 'P'),
(11, 'Johan Latif', 'Kendari', '1998-09-05', 'L'),
(12, 'm. rivaldi', 'kendari', '1999-06-07', 'L'),
(13, 'andi kota', 'Wonua Kongga, Konsel', '1998-05-04', 'L'),
(14, 'muh. amin iradat', 'Kendari', '1998-04-06', 'L'),
(15, 'nurfitriani', 'Kendari', '1998-09-03', 'P'),
(16, 'Rika Asdianti', 'RAROWATU, KAB.BOMBANA', '1998-07-07', 'P'),
(17, 'ricky ahmad ruslan', 'mendati', '1999-09-19', 'L'),
(18, 'egi yuliana olivia', 'Kendari', '1998-09-05', 'P'),
(19, 'Mega Mustika', 'Konsel', '1998-06-11', 'P'),
(20, 'SIAPA', 'KENDARI', '1999-09-08', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `m_kuliah`
--

CREATE TABLE `m_kuliah` (
  `id_mk` int(10) NOT NULL,
  `nm_mk` varchar(50) NOT NULL,
  `kd_mk` varchar(20) NOT NULL,
  `sks` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_kuliah`
--

INSERT INTO `m_kuliah` (`id_mk`, `nm_mk`, `kd_mk`, `sks`) VALUES
(1, 'Metodologi Penelitian Dan Penulisan Karta Ilmiah', 'KOM67013', '3'),
(2, 'Perancangan dan Pemrograman Web', 'KOM65023', '3'),
(3, 'Teknologi Informasi', 'KOM12345', '2'),
(4, 'Data Mining', ' 	KOC67013', '3'),
(5, 'Perancangan Strategis SI', 'KOC65023', '3'),
(6, 'Sistem Operasi', 'KOC12345', '3'),
(7, 'Bahasa Inggris', ' 	KOM12345', '2'),
(8, 'Kewirausahaan', 'KOM234543', '2'),
(9, 'Teknologi Manajemen', 'KOM21212', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `id_mhsw` (`id_mhsw`),
  ADD KEY `id_mk` (`id_mk`);

--
-- Indexes for table `mhsw`
--
ALTER TABLE `mhsw`
  ADD PRIMARY KEY (`id_mhsw`),
  ADD KEY `id_mhsw` (`id_mhsw`);

--
-- Indexes for table `m_kuliah`
--
ALTER TABLE `m_kuliah`
  ADD PRIMARY KEY (`id_mk`),
  ADD KEY `id_mk` (`id_mk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `mhsw`
--
ALTER TABLE `mhsw`
  MODIFY `id_mhsw` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `m_kuliah`
--
ALTER TABLE `m_kuliah`
  MODIFY `id_mk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_mk`) REFERENCES `m_kuliah` (`id_mk`),
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_mhsw`) REFERENCES `mhsw` (`id_mhsw`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2018 at 08:28 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuliahilkom`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_krs`
--

CREATE TABLE `tbl_krs` (
  `id_krs` int(10) NOT NULL,
  `id_mhs` int(10) NOT NULL,
  `id_mk` int(10) NOT NULL,
  `semester` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_krs`
--

INSERT INTO `tbl_krs` (`id_krs`, `id_mhs`, `id_mk`, `semester`) VALUES
(101, 1, 11, '5'),
(102, 1, 22, '5'),
(103, 1, 33, '1'),
(104, 1, 44, '1'),
(105, 1, 55, '1'),
(106, 1, 66, '5'),
(107, 1, 77, '5'),
(108, 1, 88, '5'),
(109, 1, 99, '7'),
(1010, 2, 11, '5'),
(1011, 2, 22, '5'),
(1012, 2, 33, '1'),
(1013, 2, 44, '1'),
(1014, 2, 55, '1'),
(1015, 2, 66, '5'),
(1016, 2, 77, '5'),
(1017, 2, 88, '7'),
(1018, 2, 99, '5'),
(1019, 3, 11, '5'),
(1020, 3, 22, '5'),
(1021, 3, 33, '1'),
(1022, 3, 44, '1'),
(1023, 3, 55, '1'),
(1024, 3, 66, '5'),
(1025, 3, 77, '5'),
(1026, 3, 88, '7'),
(1027, 3, 99, '5'),
(1028, 4, 11, '5'),
(1029, 4, 22, '5'),
(1030, 4, 33, '1'),
(1031, 4, 44, '1'),
(1032, 4, 55, '1'),
(1033, 4, 66, '5'),
(1034, 4, 77, '5'),
(1035, 4, 88, '7'),
(1036, 4, 99, '5'),
(1037, 5, 11, '5'),
(1038, 5, 22, '5'),
(1039, 5, 33, '1'),
(1040, 5, 44, '1'),
(1041, 5, 55, '1'),
(1042, 5, 66, '5'),
(1043, 5, 77, '5'),
(1044, 5, 99, '5'),
(1045, 6, 11, '5'),
(1046, 7, 99, '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mhs`
--

CREATE TABLE `tbl_mhs` (
  `id_mhs` int(10) NOT NULL,
  `nm_mhs` varchar(50) NOT NULL,
  `nim` char(10) NOT NULL,
  `ips` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mhs`
--

INSERT INTO `tbl_mhs` (`id_mhs`, `nm_mhs`, `nim`, `ips`) VALUES
(1, 'AFIFA ANDRANI', 'F1A316001', '3.40'),
(2, 'AINUN FAJRIAWATI', 'F1A316002', '3.50'),
(3, 'ALATIF NITAHULAH', 'F1A316003', '3.40'),
(4, 'ALYA PUTRI BALGIS', 'F1A316004', '3.70'),
(5, 'ANDI KOTA', 'F1A316004', '3.50'),
(6, 'ARWAN PRIANTO MANGIDI', 'F1A316005', '3.50'),
(7, 'ASRA AYU LESTARI', 'F1A316006', '3.50'),
(8, 'ASTI', 'F1A316008', '3.00'),
(9, 'DESTRIANGRAINI', 'F1A316009', '3.56'),
(10, 'EGI YULIANA OLIVIA', 'F1A316012', '3.50'),
(11, 'ELA BIBIANAKOWI', 'F1A316013', '3.00'),
(12, 'VEBRIANI', 'F1A316014', '4.60'),
(13, 'VINCI ALVIONITA', 'F1A316015', '3.60'),
(14, 'FITRA', 'F1A316016', '3.50'),
(15, 'HASNA NOPRIANTI', 'F1A316018', '3.50'),
(16, 'HERLINA', 'F1A316019', '3.50'),
(17, 'HERNI DAMAYANTI', 'F1A316020', '3.60'),
(18, 'INDRIANI', 'F1A316022', '3.00'),
(19, 'INDRIANI NINGSI', 'F1A316023', '3.40'),
(20, 'IPO SITI AISHA', 'F1A316024', '3.50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mk`
--

CREATE TABLE `tbl_mk` (
  `id_mk` int(10) NOT NULL,
  `kode_mk` char(10) NOT NULL,
  `nm_mk` varchar(50) NOT NULL,
  `semester` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mk`
--

INSERT INTO `tbl_mk` (`id_mk`, `kode_mk`, `nm_mk`, `semester`) VALUES
(11, 'UHO6106', 'KEWIRAUSAHAAN', '5'),
(22, 'KOM6503', 'SISTEM OPERASI', '5'),
(33, 'MAT61013', 'KALKULUS1', '1'),
(44, 'UHO61032', 'BAHASA INGGRIS', '1'),
(55, 'UHO61052', 'TEKNOLOGI INFORMASI', '1'),
(66, 'KOB65013', 'SISTEM NIRKABEL', '5'),
(77, 'KOB65023', 'ANALISA PERFORMANSI', '5'),
(88, 'KOM67013', 'METODOLOGI PENELITIAN DAN PENULISAN KARYA ILMIAH', '7'),
(99, 'KOM650231', 'PERANCANGAN DAN PEMROGRAMAN WEB', '5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_krs`
--
ALTER TABLE `tbl_krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `id_mhs` (`id_mhs`),
  ADD KEY `id_mk` (`id_mk`);

--
-- Indexes for table `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indexes for table `tbl_mk`
--
ALTER TABLE `tbl_mk`
  ADD PRIMARY KEY (`id_mk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_krs`
--
ALTER TABLE `tbl_krs`
  MODIFY `id_krs` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1047;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_krs`
--
ALTER TABLE `tbl_krs`
  ADD CONSTRAINT `tbl_krs_ibfk_2` FOREIGN KEY (`id_mk`) REFERENCES `tbl_mk` (`id_mk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_krs_ibfk_3` FOREIGN KEY (`id_mhs`) REFERENCES `tbl_mhs` (`id_mhs`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

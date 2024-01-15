-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2024 at 10:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_kaasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_table`
--

CREATE TABLE `db_table` (
  `id` int(11) NOT NULL,
  `waktu_kedatangan` time DEFAULT NULL,
  `selisih_kedatangan` int(11) DEFAULT NULL,
  `waktu_awal_pelayanan` time DEFAULT NULL,
  `selisih_pelayanan_kasir` int(11) DEFAULT NULL,
  `waktu_selesai` time DEFAULT NULL,
  `selisih_keluar_antrian` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_tablee`
--

CREATE TABLE `db_tablee` (
  `id` int(11) NOT NULL,
  `waktu_kedatangan` time NOT NULL,
  `selisih_kedatangan` int(11) NOT NULL,
  `waktu_awal_pelayanan` time NOT NULL,
  `selisih_pelayanan_kasir` int(11) NOT NULL,
  `waktu_selesai` time NOT NULL,
  `selisih_keluar_antrian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_tablee`
--

INSERT INTO `db_tablee` (`id`, `waktu_kedatangan`, `selisih_kedatangan`, `waktu_awal_pelayanan`, `selisih_pelayanan_kasir`, `waktu_selesai`, `selisih_keluar_antrian`) VALUES
(1, '16:00:00', 1, '16:00:00', 3, '18:00:00', 4),
(2, '16:00:00', 1, '16:00:00', 3, '16:00:00', 12),
(3, '16:00:00', 1, '16:00:00', 3, '17:01:00', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_table`
--
ALTER TABLE `db_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_tablee`
--
ALTER TABLE `db_tablee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_tablee`
--
ALTER TABLE `db_tablee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

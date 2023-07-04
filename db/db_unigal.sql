-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 08:10 PM
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
-- Database: `db_unigal`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `created` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `age`, `designation`, `created`) VALUES
(1, 'Dudung', 'dudung@gmail.com', 22, 'sare', '2023-06-26 03:33:09'),
(3, 'Todd Martell', 'liliane_hirt@gmail.com', 36, 'Accountant', '2014-09-19 20:10:25'),
(4, 'Adela Marion', 'michael2004@yahoo.com', 42, 'Shipping Manager', '2015-04-10 21:11:12'),
(5, 'Matthew Popp', 'krystel_wol7@gmail.com', 48, 'Chief Sustainability Officer', '2016-01-03 22:20:30'),
(6, 'Alan Wallin', 'neva_gutman10@hotmail.com', 37, 'Chemical Technician', '2017-01-09 23:40:10'),
(7, 'Joyce Hinze', 'davonte.maye@yahoo.com', 44, 'Transportation Planner', '2017-05-01 19:20:30'),
(8, 'Donna Andrews', 'joesph.quitz@yahoo.com', 49, 'Wind Energy Engineer', '2018-01-03 22:15:35'),
(9, 'Andrew Best', 'jeramie_roh@hotmail.com', 51, 'Geneticist', '2019-01-01 19:20:30'),
(10, 'Joel Ogle', 'summer_shanah@hotmail.com', 45, 'Space Sciences Teacher', '2020-01-31 23:22:50'),
(11, 'John Doe', 'johndoe@gmail.com', 32, 'Data Scientist', '2012-05-31 19:12:30'),
(12, 'David Costa', 'sam.mraz1996@yahoo.com', 29, 'Apparel Patternmaker', '2013-03-02 18:20:10'),
(14, 'addin', 'addin@aladin.com', 20, 'bocan', '2023-06-29 22:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `established` date NOT NULL,
  `leader` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id`, `name`, `description`, `established`, `leader`, `email`, `phone`, `created`) VALUES
(1, 'Himpunan Mahasiswa Informatika', 'Himpunan Mahasiswa Program Studi Informatika', '2020-01-15', 'Andi', 'himaif@unigal.com', '+628123456789', '2023-07-04 17:00:00'),
(3, 'Unit Kegiatan Mahasiswa Olahraga', 'Unit Kegiatan Mahasiswa Bidang Olahraga', '2015-07-10', 'Citra', 'ukm_olahraga@unigal.com', '+628345678901', '2023-07-04 17:00:00'),
(4, 'Keluarga Mahasiswa Agama Islam', 'Organisasi Mahasiswa Islam di Kampus', '2008-09-02', 'Dewi', 'kmai@unigal.com', '+628456789012', '2023-07-04 17:00:00'),
(5, 'Korps Sukarela Mahasiswa', 'Organisasi Mahasiswa Bidang Kemanusiaan', '2012-06-18', 'Eko', 'korps@unigal.com', '+628567890123', '2023-07-04 17:00:00'),
(6, 'Unit Kegiatan Mahasiswa Seni', 'Unit Kegiatan Mahasiswa Bidang Seni', '2014-04-25', 'Fani', 'ukm_seni@unigal.com', '+628678901234', '2023-07-04 17:00:00'),
(7, 'Keluarga Mahasiswa Pecinta Alam', 'Organisasi Mahasiswa Bidang Lingkungan', '2009-11-30', 'Gita', 'kmpa@unigal.com', '+628789012345', '2023-07-04 17:00:00'),
(8, 'Unit Kegiatan Mahasiswa Jurnalistik', 'Unit Kegiatan Mahasiswa Bidang Jurnalistik', '2013-08-14', 'Hendra', 'ukm_jurnalistik@unigal.com', '+628890123456', '2023-07-04 17:00:00'),
(9, 'Keluarga Mahasiswa Budaya', 'Organisasi Mahasiswa Bidang Kebudayaan', '2007-12-05', 'Indra', 'kmb@unigal.com', '+628901234566', '2023-07-04 12:42:02'),
(10, 'Himpunan Mahasiswa Akuntansi', 'Himpunan Mahasiswa Program Studi Akuntansi', '2019-02-28', 'Joko', 'hma@unigal.com', '+628012345678', '2023-07-04 17:00:00'),
(11, 'Badan Perwakilan Mahasiswa', 'Organisasi Perwakilan Mahasiswa di Kampus', '2011-05-17', 'Kiki', 'bpwm@unigal.com', '+628123456789', '2023-07-04 17:00:00'),
(12, 'Unit Kegiatan Mahasiswa Teater', 'Unit Kegiatan Mahasiswa Bidang Teater', '2016-10-22', 'Lia', 'ukm_teater@unigal.com', '+628234567890', '2023-07-04 17:00:00'),
(13, 'Keluarga Mahasiswa Keperawatan', 'Organisasi Mahasiswa Program Studi Keperawatan', '2006-08-09', 'Mira', 'kmk@unigal.com', '+628345678901', '2023-07-04 17:00:00'),
(14, 'Unit Kegiatan Mahasiswa Musik', 'Unit Kegiatan Mahasiswa Bidang Musik', '2018-03-03', 'Nina', 'ukm_musik@unigal.com', '+628456789012', '2023-07-04 17:00:00'),
(15, 'Keluarga Mahasiswa Fisika', 'Organisasi Mahasiswa Program Studi Fisika', '2005-01-25', 'Oscar', 'kmf@unigal.com', '+628567890123', '2023-07-04 17:00:00'),
(16, 'Himpunan Mahasiswa Manajemen', 'Himpunan Mahasiswa Program Studi Manajemen', '2021-07-01', 'Putri', 'hmam@unigal.com', '+628678901234', '2023-07-04 17:00:00'),
(17, 'Badan Pengurus Mahasiswa', 'Organisasi Pengurus Mahasiswa di Kampus', '2014-11-10', 'Qodir', 'bpm@unigal.com', '+628789012345', '2023-07-04 17:00:00'),
(18, 'Unit Kegiatan Mahasiswa Tari', 'Unit Kegiatan Mahasiswa Bidang Tari', '2017-04-15', 'Rina', 'ukm_tari@unigal.com', '+628890123456', '2023-07-04 17:00:00'),
(19, 'Keluarga Mahasiswa Hukum', 'Organisasi Mahasiswa Program Studi Hukum', '2004-07-20', 'Santi', 'kmh@unigal.com', '+628901234567', '2023-07-04 17:00:00'),
(20, 'Himpunan Mahasiswa Teknik Sipil', 'Himpunan Mahasiswa Program Studi Teknik Sipil', '2019-10-05', 'Toni', 'hmats@unigal.com', '+628012345678', '2023-07-04 17:00:00'),
(21, 'Badan Eksekutif Mahasiswa Fakultas', 'Organisasi Eksekutif Tingkat Fakultas', '2013-01-12', 'Bima', 'bemf@unigal.com', '+62878901234512', '2023-07-04 13:07:03'),
(22, 'Unit Kegiatan Mahasiswa Fotografi', 'Unit Kegiatan Mahasiswa Bidang Fotografi', '2016-06-28', 'Vina', 'ukm_fotografi@unigal.com', '+628234567890', '2023-07-04 17:00:00'),
(23, 'Keluarga Mahasiswa Psikologi', 'Organisasi Mahasiswa Program Studi Psikologi', '2008-03-17', 'Wulan', 'kmps@unigal.com', '+628345678901', '2023-07-04 17:00:00'),
(24, 'Unit Kegiatan Mahasiswa Debat', 'Unit Kegiatan Mahasiswa Bidang Debat', '2015-09-23', 'Xavier', 'ukm_debat@unigal.com', '+628456789012', '2023-07-04 17:00:00'),
(25, 'Keluarga Mahasiswa Teknik Elektro', 'Organisasi Mahasiswa Program Studi Teknik Elektro', '2009-12-08', 'Yudi', 'kmte@unigal.com', '+628567890123', '2023-07-04 17:00:00'),
(26, 'Badan Eksekutif Mahasiswa Unigal', 'Kitu we', '1990-07-01', 'Agung', 'bem@unigal.com', '+6285642315474', '2023-07-04 13:08:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

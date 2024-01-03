-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jan 03, 2024 at 03:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proiect_p3`
--

-- --------------------------------------------------------

--
-- Table structure for table `medici`
--

CREATE TABLE `medici` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `specializare` varchar(191) NOT NULL,
  `orar` varchar(200) NOT NULL,
  `email` varchar(29) NOT NULL,
  `parola` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medici`
--

INSERT INTO `medici` (`id`, `name`, `specializare`, `orar`, `email`, `parola`) VALUES
(1, 'Ion Pop', 'cardiolog', 'Luni: 10-16\r\n  Miercuri: 15-20', 'ion@mail.com', '1234'),
(2, 'Mariana Maria', 'dermatolog', 'Luni: 12-20\r\n  Miercrui: 12-18\r\n  Vineri: 08-15', 'mariana@mail.com', '1234'),
(6, 'Mircea Vasile', 'gastroenterolog', 'Luni-Vineri: 12-20', 'vasile@mail.com', '1234'),
(7, 'Doctor nou', 'pediatru', 'Luni-Miercuri: 15-20  Vineri: 08-16', 'doctor@mail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `pacienti`
--

CREATE TABLE `pacienti` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `telefon` int(15) NOT NULL,
  `istoric` varchar(200) DEFAULT NULL,
  `data_nasterii` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `parola` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pacienti`
--

INSERT INTO `pacienti` (`id`, `name`, `telefon`, `istoric`, `data_nasterii`, `email`, `parola`) VALUES
(6, 'Andrei Maria', 7126359, 'Tuse seaca, durere in gat, anemie', '12-06-1998', '', ''),
(7, 'Vlad Ursu', 71496837, 'Pneumonie', '17-02-1999', 'vlad@mail.com', '1234'),
(8, 'Daria Dumitru', 79485632, 'Astm bronsic,penumonie,anemie', '20-12-2007', '', ''),
(12, 'Mihai Craciun', 7956325, 'Mana rupta, Covid, febra', '12-12-2002', 'craciunmihai@mail.com', '1234'),
(13, 'Paceint nou', 123456, 'pacientul nou nu are istoric', '19-06-1968', 'pacient@mail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `programari`
--

CREATE TABLE `programari` (
  `id` int(11) NOT NULL,
  `id_pacient` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_medic` int(11) NOT NULL,
  `data` varchar(20) NOT NULL,
  `ora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programari`
--

INSERT INTO `programari` (`id`, `id_pacient`, `name`, `id_medic`, `data`, `ora`) VALUES
(1, 7, 'vlad ursu', 1, '20-10-2023', 16),
(4, 12, 'Mihai Craciun', 1, '12-01-2023', 13),
(5, 12, 'Mihai Craciun', 2, '20-01-2024', 11),
(6, 7, 'Vlad Ursu', 6, '19-10-2024', 19),
(7, 13, 'Paceint nou', 7, '20-01-2024', 17),
(8, 13, 'Paceint nou', 7, '25-01-2024', 13),
(9, 13, 'Paceint nou', 1, '15-02-2024', 11),
(10, 13, 'Pacient Nou', 7, '12-08-2024', 16);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `utype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `utype`) VALUES
(1, 'ion pop', 'ion@mail.com', '1234', 'Doctor'),
(12, 'Mihai emil', 'mihai@mail.com', '1234', 'Doctor'),
(14, 'manager', 'manager@mail.com', '1234', 'Manager'),
(15, 'mihai craciun', 'craciunmihai@mail.com', '1234', 'Pacient'),
(16, 'Mariana Maria', 'mariana@mail.com', '1234', 'Doctor'),
(17, 'vlad ursu', 'vlad@mail.com', '1234', 'Pacient'),
(18, 'Mircea Vasile', 'vasile@mail.com', '1234', 'Doctor'),
(19, 'Paceint nou', 'pacient@mail.com', '1234', 'Pacient'),
(20, 'Doctor nou', 'doctor@mail.com', '1234', 'Doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medici`
--
ALTER TABLE `medici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pacienti`
--
ALTER TABLE `pacienti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programari`
--
ALTER TABLE `programari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medici`
--
ALTER TABLE `medici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pacienti`
--
ALTER TABLE `pacienti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `programari`
--
ALTER TABLE `programari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 06:21 AM
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
-- Database: `foreignkey`
--

-- --------------------------------------------------------

--
-- Table structure for table `for1`
--

CREATE TABLE `for1` (
  `id` int(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `city_id` int(100) NOT NULL,
  `pin` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `for1`
--

INSERT INTO `for1` (`id`, `city`, `city_id`, `pin`) VALUES
(1, 'bhavnagar', 1, 110011),
(2, 'amreli', 2, 220022),
(3, 'junagadh', 3, 330033),
(4, 'jamnagar', 4, 440044);

-- --------------------------------------------------------

--
-- Table structure for table `for2`
--

CREATE TABLE `for2` (
  `id` int(12) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `city_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `for2`
--

INSERT INTO `for2` (`id`, `fname`, `lname`, `email`, `city_id`) VALUES
(3, 'bhavin', 'godhani', 'bhavin@gmail.com', 1),
(4, 'hardik', 'kanani', 'hardik@gmail.com', 2),
(5, 'vaibhav', 'goyani', 'vaibhav@gmail.com', 1),
(6, 'ronit', 'dayani', 'ronit@gmail.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `for1`
--
ALTER TABLE `for1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `for2`
--
ALTER TABLE `for2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `for1`
--
ALTER TABLE `for1`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `for2`
--
ALTER TABLE `for2`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `for2`
--
ALTER TABLE `for2`
  ADD CONSTRAINT `for2_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `for1` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

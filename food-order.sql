-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 03:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Username`, `Password`) VALUES
('virat', 'virat18');

-- --------------------------------------------------------

--
-- Table structure for table `chicken`
--

CREATE TABLE `chicken` (
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `payment` text NOT NULL,
  `menu` varchar(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chicken`
--

INSERT INTO `chicken` (`name`, `email`, `phone`, `address`, `payment`, `menu`, `quantity`, `date`, `time`) VALUES
('virat', 'vira@gmail.com', 2147483647, 'shivajinagar dhamang', 'credit', 'sapgetti', 2, '2023-04-03', '22:30:00'),
('simran', 'vira@gmail.com', 2147483647, 'shivajinagar dhamang', 'credit', 'chicken,so', 2, '2023-04-06', '18:57:00'),
('supriya', 'vira@gmail.com', 2147483647, 'shivajinagar dhamang', 'credit', 'spagetii,c', 6, '2023-04-12', '10:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `hamburger`
--

CREATE TABLE `hamburger` (
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `payment` text NOT NULL,
  `menu` varchar(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hamburger`
--

INSERT INTO `hamburger` (`name`, `email`, `phone`, `address`, `payment`, `menu`, `quantity`, `date`, `time`) VALUES
('simran', 'phatangrepratibha18@gmail.com', 2147483647, '', 'credit', '', 3, '2023-04-03', '21:30:00'),
('simran', 'phatangrepratibha18@gmail.com', 2147483647, 'shivajinagar dhamang', 'credit', 'hamburger', 3, '2023-04-03', '21:30:00'),
('virat', 'vira@gmail.com', 2147483647, 'shivajinagar dhamang', 'credit', 'hamburger,', 5, '2023-04-03', '21:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Username` varchar(10) NOT NULL,
  `Email` longtext NOT NULL,
  `Password` varchar(8) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Address` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Username`, `Email`, `Password`, `Phone`, `Address`) VALUES
('simran', 'phatangrepratibha18@gmail.com', 'sim12345', 2147483647, 'shivajinagar dhamangav road ,akole'),
('supriya', 'supriyaphatangre7@gmail.com', 'sup12345', 2147483647, 'shivajinagar dhamangav road ,akole');

-- --------------------------------------------------------

--
-- Table structure for table `salmon`
--

CREATE TABLE `salmon` (
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `payment` text NOT NULL,
  `menu` varchar(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sandwich`
--

CREATE TABLE `sandwich` (
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `payment` text NOT NULL,
  `menu` varchar(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soup`
--

CREATE TABLE `soup` (
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `payment` text NOT NULL,
  `menu` varchar(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spagetti`
--

CREATE TABLE `spagetti` (
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `payment` text NOT NULL,
  `menu` varchar(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD UNIQUE KEY `Username` (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

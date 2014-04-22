-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2014 at 06:16 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `product_id` int(11) NOT NULL,
  `job_Description` int(11) NOT NULL,
  `company_Name` text NOT NULL,
  `share_Costs` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`product_id`, `job_Description`, `company_Name`, `share_Costs`) VALUES
(1, 0, 'Tillverkare AB', 60),
(1, 1, 'Transportör 1', 5),
(1, 1, 'Transportör 2', 7),
(1, 2, 'Fabrik', 28),
(2, 0, 'Tillverkare 2', 40),
(2, 1, 'Transport', 10),
(2, 2, 'Fabrik 1', 28.3),
(2, 2, 'Fabrik 2', 21.7);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL,
  `manufacturer` text NOT NULL,
  `name` text NOT NULL,
  `recommended_price` float NOT NULL,
  UNIQUE KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

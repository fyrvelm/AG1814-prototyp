-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 07, 2014 at 03:14 PM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `database`
--
CREATE DATABASE `database` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `product_id` int(11) NOT NULL,
  `job_Description` int(11) NOT NULL,
  `company_Name` text CHARACTER SET utf8 NOT NULL,
  `share_Costs` float NOT NULL,
  `service` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`product_id`, `job_Description`, `company_Name`, `share_Costs`, `service`) VALUES
(1, 0, 'Tillverkare AB', 60, ''),
(1, 1, 'Transportör 1', 5, ''),
(1, 1, 'Transportör 2', 7, ''),
(1, 2, 'Fabrik', 28, ''),
(2, 0, 'Tillverkare 2', 40, ''),
(2, 1, 'Transport', 10, ''),
(2, 2, 'Fabrik 1', 28.3, ''),
(2, 2, 'Fabrik 2', 21.7, ''),
(3, 0, 'Dell', 50, ''),
(3, 1, 'DHL', 5, ''),
(3, 2, 'Persondatorer AB', 5, 'PC-byggare'),
(3, 2, 'Intel', 40, 'click:15'),
(15, 0, 'Intel', 80, ''),
(15, 1, 'DHL', 5, ''),
(15, 1, 'miners', 15, 'Materiell');

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

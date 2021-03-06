-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2019 at 04:57 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dss`
--

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `plant` varchar(30) NOT NULL,
  `io` varchar(30) NOT NULL,
  `light exposure` varchar(30) NOT NULL,
  `water` varchar(30) NOT NULL,
  `fertilizer` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`plant`, `io`, `light exposure`, `water`, `fertilizer`) VALUES
('Chamaedorea elegans', 'Inside', 'Medium ', 'Medium ', 'Monthly'),
('Rose miniature roses', 'Inside', 'High ', 'Rare ', 'Monthly'),
('Opuntia microdasys', 'Inside', 'High ', 'Rare ', 'Monthly'),
('D.Cammilla ', 'Inside', 'Medium ', 'Always ', 'Yearly'),
('Crassula ovata ', 'Inside', 'High ', 'Medium ', 'Yearly'),
('Kalanchoe blossfeldiana ', 'Inside', 'Medium ', 'Always ', 'Monthly'),
('Schefflera arboriecola ', 'Inside', 'High ', 'Always ', 'Monthly'),
('Fittonia argyroneura ', 'Inside', 'Low ', 'Medium ', 'Weekly '),
('Monstera deliciosa ', 'Inside', 'Medium ', 'Always  ', 'Weekly '),
('Philodendron Scandens ', 'Inside', 'Low ', 'Always  ', 'Weekly '),
('Tipuana tipu', 'Outside', 'High ', 'Medium ', 'Yearly'),
('Thevetia peruviana', 'Outside', 'High ', 'Rare ', 'Weekly'),
('Celosia Cristata ', 'Outside', 'Low ', 'Medium ', 'Weekly'),
('Tecomaria Capensis ', 'Outside', 'Medium ', 'Always ', 'Yearly'),
('Jatropha integerrima ', 'Outside', 'Medium ', 'Medium ', 'Yearly'),
('Euphorbia milii ', 'Outside', 'Medium ', 'Always ', 'Yearly'),
('Antirrhinum majus ', 'Outside', 'High ', 'Medium ', 'Monthly '),
('Echinocactus grusonii ', 'Outside', 'High ', 'Rare  ', 'Monthly'),
('Washingtonia ', 'Outside', 'High', 'Rare  ', 'Yearly '),
('Coleus Blumei ', 'Outside', 'Low', 'Always  ', 'Weekly ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

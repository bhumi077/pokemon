-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 04, 2018 at 06:59 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokemon`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('babe0bee458f50e3c941fe49e795d23b', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0', 1528129975, 'a:3:{s:9:\"user_data\";s:0:\"\";s:9:\"logged_in\";a:5:{s:8:\"usercode\";s:1:\"4\";s:12:\"user_type_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"Admin\";s:9:\"last_name\";s:5:\"admin\";s:5:\"email\";s:0:\"\";}s:10:\"setting_in\";a:2:{s:17:\"account_year_code\";s:1:\"1\";s:5:\"yeanm\";s:9:\"2014-2015\";}}'),
('c3cc2dd29422df5f28a40c4e0123602f', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0', 1528137917, 'a:2:{s:9:\"user_data\";s:0:\"\";s:9:\"logged_in\";a:5:{s:8:\"usercode\";s:1:\"4\";s:12:\"user_type_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"Admin\";s:9:\"last_name\";s:5:\"admin\";s:5:\"email\";s:0:\"\";}}'),
('f02ab01363c4d2a54e1d9d550a08bc40', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0', 1528129501, 'a:3:{s:9:\"user_data\";s:0:\"\";s:9:\"logged_in\";a:5:{s:8:\"usercode\";s:1:\"4\";s:12:\"user_type_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"Admin\";s:9:\"last_name\";s:5:\"admin\";s:5:\"email\";s:0:\"\";}s:10:\"setting_in\";a:2:{s:17:\"account_year_code\";s:1:\"1\";s:5:\"yeanm\";s:9:\"2014-2015\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_master`
--

DROP TABLE IF EXISTS `pokemon_master`;
CREATE TABLE IF NOT EXISTS `pokemon_master` (
  `pokemon_code` int(11) NOT NULL AUTO_INCREMENT,
  `pokemon_name` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Species` varchar(255) NOT NULL,
  `Weight` varchar(255) NOT NULL,
  `img_path` varchar(255) NOT NULL,
  `status` enum('Active','Inactive','Delete') NOT NULL,
  PRIMARY KEY (`pokemon_code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pokemon_master`
--

INSERT INTO `pokemon_master` (`pokemon_code`, `pokemon_name`, `Type`, `Species`, `Weight`, `img_path`, `status`) VALUES
(8, 'xcc', 'ccc', 'cxx', '12', '2515783Hydrangeas.jpg', 'Active'),
(9, 'qqq', 'zzz', 'dd', '33', '3455691Jellyfish.jpg', 'Active'),
(10, 'c v', 'cxvx', 'cxvx', '11', '8557056Lighthouse.jpg', 'Active'),
(11, 'fbdg', 'gvdfgd', 'fgd', '34', '4801050Penguins.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
CREATE TABLE IF NOT EXISTS `user_master` (
  `usercode` int(11) NOT NULL AUTO_INCREMENT,
  `idcode` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gendar` enum('M','F') NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `endcode` int(11) NOT NULL,
  `status` enum('Active','Inactive','Delete') NOT NULL,
  PRIMARY KEY (`usercode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`usercode`, `idcode`, `first_name`, `last_name`, `email`, `gendar`, `mobile`, `username`, `password`, `user_type_id`, `endcode`, `status`) VALUES
(4, 1, 'Admin', 'admin', '', 'M', '', 'admin', 'admin', 1, 1, 'Active');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

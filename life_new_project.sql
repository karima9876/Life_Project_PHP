-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 02, 2020 at 02:48 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `life_new_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(31, 'html', 2),
(38, 'java', 0),
(39, 'JavaScript', 0),
(24, 'php', -1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(61, 'HTML', 'Create applications, complete web systems and advanced reports with Business Intelligence concepts using our database-based PHP code generator. Create applications, complete web systems and advanced reports with Business Intelligence concepts using our database-based PHP code generator. Create applications, complete web systems and advanced reports with Business Intelligence concepts using our database-based PHP code generator........', '31', '19 Oct, 2020', 4, '1603179501-WIN_20191223_11_09_49_Pro (4) - Copy.jpg'),
(63, 'hgh', 'gfdghhjj', '31', '03 Nov, 2020', 3, '1604433423-2018-04-10-23-51-57-661.jpg'),
(62, 'php', 'Create applications, complete web systems and advanced reports with Business Intelligence concepts using our database-based PHP code generator. Create applications, complete web systems and advanced reports with Business Intelligence concepts using our database-based PHP code generator. Create applications, complete web systems and advanced reports with Business Intelligence concepts using our database-based PHP code generator........', '24', '19 Oct, 2020', 4, '1603082131-download.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(4, 'Moon', 'jaman', 'karima', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(3, 'Rafiqul', 'Islam', 'Ratull', 'Ratull', 0),
(5, 'Byjid', 'Hossain', 'Jonip', '81b073de9370ea873f548e31b8adc081', 0),
(6, 'Bethi', 'Akter', 'Bipasa', '202cb962ac59075b964b07152d234b70', 0),
(8, 'Mahir', 'Turjo', 'Nirob', 'd81f9c1be2e08964bf9f24b15f0e4900', 0),
(11, 'moon', 'jaman', 'moon', '12345', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

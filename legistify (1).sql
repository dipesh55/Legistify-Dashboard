-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2016 at 02:46 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `legistify`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(1, 'Admin!', 'dipesh', 'dipesh','9868');

-- --------------------------------------------------------

--
-- Table structure for table `approved`
--

CREATE TABLE IF NOT EXISTS `approved` (
  `aid` int(11) NOT NULL,
  `purpose` longtext NOT NULL,
  `department` varchar(40) NOT NULL,
  `lawyer` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `vis_name` varchar(40) NOT NULL,
  `email_id` varchar(40) NOT NULL,
  `phone` bigint(10) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approved`
--

INSERT INTO `approved` (`aid`, `purpose`, `department`, `lawyer`, `date`, `time`, `vis_name`, `email_id`, `phone`) VALUES
(2, 'asdfsaf', 'department 1', 'Dipesh Bhatta', '2017-11-20', '00:00:00', 'asdf', 'dipeshbhatta4@gmail.com', 7682853029);

-- --------------------------------------------------------

--
-- Table structure for table `denied`
--

CREATE TABLE IF NOT EXISTS `denied` (
  `aid` int(11) NOT NULL,
  `purpose` longtext NOT NULL,
  `department` varchar(40) NOT NULL,
  `lawyer` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `vis_name` varchar(40) NOT NULL,
  `email_id` varchar(40) NOT NULL,
  `phone` bigint(10) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `denied`
--

INSERT INTO `denied` (`aid`, `purpose`, `department`, `lawyer`, `date`, `time`, `vis_name`, `email_id`, `phone`) VALUES
(0, 'meeting', 'department 1', 'dipesh Bhatta', '2016-02-26', '23:00:00', 'Rohit', 'sangeetsingh123@gmail.com', 7682852039),
(1, 'Work', 'department 1', 'dipesh batta', '2017-11-01', '00:00:00', 'Unique', 'unique@gmail.com', 7682852039),
(3, 'work', 'department 1', 'dipesh bhatta', '2017-11-26', '00:00:00', 'asdf', 'asdfsa@a.com', 7682852039);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `dept_name`) VALUES
(1, 'department 1'),
(2, 'department 2');

-- --------------------------------------------------------

--
-- Table structure for table `lawyers`
--

CREATE TABLE IF NOT EXISTS `lawyers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `department` varchar(40) NOT NULL,
  `email_id` varchar(40) NOT NULL,
  `fee` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lawyers`
--

INSERT INTO `lawyers` (`id`, `username`, `password`, `name`, `department`, `email_id`, `fee`) VALUES
(1, 'dipesh', 'password', 'Dipesh bhatta', 'department 1', 'dipeshbhatta4@gmail.com', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `pending`
--

CREATE TABLE IF NOT EXISTS `pending` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `purpose` longtext NOT NULL,
  `department` varchar(40) NOT NULL,
  `lawyer` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `vis_name` varchar(40) NOT NULL,
  `email_id` varchar(40) NOT NULL,
  `phone` bigint(10) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email_id` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email_id`) VALUES
(1, 'maverick.911', '123456', 'dipesh', 'dipeshbhatta4@gmail.com'),
(2, 'aviral', 'aviral', 'Aviral Lefty', 'aviral@gmail.com'),
(3,'saugat' ,'joshi' ,'joshi bhai','saugat@gmail.com');
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

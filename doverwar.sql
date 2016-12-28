-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2016 at 12:34 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doverwar`
--
CREATE DATABASE IF NOT EXISTS `doverwar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `doverwar`;

-- --------------------------------------------------------

--
-- Table structure for table `casualty`
--

DROP TABLE IF EXISTS `casualty`;
CREATE TABLE `casualty` (
  `id` int(11) NOT NULL,
  `given_name` text NOT NULL,
  `middle_names` text,
  `family_name` text NOT NULL,
  `commemoration_location` int(11) DEFAULT NULL,
  `war` int(11) DEFAULT NULL,
  `civilian` tinyint(1) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `final_resting_place` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  `commemoration_photo` text,
  `rank_at_death` int(11) DEFAULT NULL,
  `service_country` varchar(3) DEFAULT NULL,
  `place_of_birth` int(11) DEFAULT NULL,
  `last_known_address` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `casualty_relation`
--

DROP TABLE IF EXISTS `casualty_relation`;
CREATE TABLE `casualty_relation` (
  `casualty_id_senior` int(11) NOT NULL,
  `casualty_id_junior` int(11) NOT NULL,
  `relation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `commemoration_location`
--

DROP TABLE IF EXISTS `commemoration_location`;
CREATE TABLE `commemoration_location` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `narrative` text NOT NULL,
  `location` text,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used for both place and last known address';

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `regiment_service`
--

DROP TABLE IF EXISTS `regiment_service`;
CREATE TABLE `regiment_service` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `flag` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `regiment_service_casualty`
--

DROP TABLE IF EXISTS `regiment_service_casualty`;
CREATE TABLE `regiment_service_casualty` (
  `casualty_id` int(11) NOT NULL,
  `regiment_service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `relation`
--

DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_country`
--

DROP TABLE IF EXISTS `service_country`;
CREATE TABLE `service_country` (
  `id` varchar(3) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_country_flag`
--

DROP TABLE IF EXISTS `service_country_flag`;
CREATE TABLE `service_country_flag` (
  `id` int(11) NOT NULL,
  `flag` text NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `country_id` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_number`
--

DROP TABLE IF EXISTS `service_number`;
CREATE TABLE `service_number` (
  `casualty_id` int(11) NOT NULL,
  `service_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `war`
--

DROP TABLE IF EXISTS `war`;
CREATE TABLE `war` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casualty`
--
ALTER TABLE `casualty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casualty_relation`
--
ALTER TABLE `casualty_relation`
  ADD PRIMARY KEY (`casualty_id_senior`,`casualty_id_junior`,`relation_id`);

--
-- Indexes for table `commemoration_location`
--
ALTER TABLE `commemoration_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regiment_service`
--
ALTER TABLE `regiment_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regiment_service_casualty`
--
ALTER TABLE `regiment_service_casualty`
  ADD PRIMARY KEY (`casualty_id`,`regiment_service_id`);

--
-- Indexes for table `relation`
--
ALTER TABLE `relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_country`
--
ALTER TABLE `service_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_country_flag`
--
ALTER TABLE `service_country_flag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_number`
--
ALTER TABLE `service_number`
  ADD PRIMARY KEY (`casualty_id`,`service_number`);

--
-- Indexes for table `war`
--
ALTER TABLE `war`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casualty`
--
ALTER TABLE `casualty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `commemoration_location`
--
ALTER TABLE `commemoration_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `regiment_service`
--
ALTER TABLE `regiment_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `relation`
--
ALTER TABLE `relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service_country_flag`
--
ALTER TABLE `service_country_flag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `war`
--
ALTER TABLE `war`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

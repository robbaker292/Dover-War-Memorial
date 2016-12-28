-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2016 at 09:14 PM
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
  `narrative` text NOT NULL,
  `war` int(11) DEFAULT NULL,
  `civilian` tinyint(1) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `final_resting_place` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  `commemoration_photo` text,
  `rank_at_death` int(11) DEFAULT NULL,
  `service_country` varchar(2) DEFAULT NULL,
  `place_of_birth` int(11) DEFAULT NULL,
  `last_known_address` int(11) DEFAULT NULL,
  `last_known_address_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casualty`
--

INSERT INTO `casualty` (`id`, `given_name`, `middle_names`, `family_name`, `narrative`, `war`, `civilian`, `gender`, `final_resting_place`, `date_of_birth`, `date_of_death`, `commemoration_photo`, `rank_at_death`, `service_country`, `place_of_birth`, `last_known_address`, `last_known_address_year`) VALUES
(1, 'Frank', NULL, 'Smith', 'Frank did all sorts of things and other **interesting** narrative.', 2, 0, 'M', NULL, '1900-04-07', '1944-01-18', NULL, 1, 'GB', 1, NULL, NULL),
(2, 'Barry', 'John', 'Jones', 'He fought in the Great War.\r\n\r\nHe has a really long narrative. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in aliquet erat. Donec vel tristique ante. In lorem ante, facilisis quis sem nec, finibus eleifend nunc. Curabitur ut dapibus ex. Cras bibendum purus vel pretium feugiat. Ut faucibus consectetur dui nec tincidunt. Nullam ac mauris sed ex euismod euismod vitae sit amet arcu. Curabitur at tellus tincidunt metus consequat volutpat. Phasellus id sapien turpis. Donec tempor purus congue consequat dictum. Proin id eleifend urna. Curabitur dictum facilisis mauris vitae facilisis. Vestibulum ipsum enim, vestibulum ut posuere ut, feugiat ut orci. Phasellus massa nisl, finibus sed posuere eget, finibus non sapien. Donec vulputate nec sapien vitae tincidunt.', 1, 0, 'M', NULL, '1895-03-28', '1915-12-24', NULL, 2, 'GB', 1, NULL, NULL),
(3, 'Dave', 'Henry', 'Bloom', 'Bloomed like a _flower_', 2, 0, 'M', NULL, '1920-07-23', '1940-02-06', NULL, 1, 'GB', 1, 2, 1911);

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

--
-- Dumping data for table `commemoration_location`
--

INSERT INTO `commemoration_location` (`id`, `name`, `narrative`, `location`, `lat`, `lon`) VALUES
(1, 'Book of Rememberance', 'They were all casualties of World War II.', NULL, NULL, NULL),
(2, 'Dover War Memorial', 'The big one in Dover', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `commemoration_location_casualty`
--

DROP TABLE IF EXISTS `commemoration_location_casualty`;
CREATE TABLE `commemoration_location_casualty` (
  `casualty_id` int(11) NOT NULL,
  `commemoration_location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commemoration_location_casualty`
--

INSERT INTO `commemoration_location_casualty` (`casualty_id`, `commemoration_location_id`) VALUES
(1, 1),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` int(11) NOT NULL,
  `filename` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `picture_casualty`
--

DROP TABLE IF EXISTS `picture_casualty`;
CREATE TABLE `picture_casualty` (
  `picture_id` int(11) NOT NULL,
  `casualty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `picture_commemoration_location`
--

DROP TABLE IF EXISTS `picture_commemoration_location`;
CREATE TABLE `picture_commemoration_location` (
  `picture_id` int(11) NOT NULL,
  `commemoration_location` int(11) NOT NULL
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
  `lon` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used for both place and last known address';

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id`, `name`, `lat`, `lon`) VALUES
(1, 'Dover Hospital', NULL, NULL),
(2, '23 London Road', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `name`) VALUES
(1, 'Private'),
(2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `regiment_service`
--

DROP TABLE IF EXISTS `regiment_service`;
CREATE TABLE `regiment_service` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `flag` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regiment_service`
--

INSERT INTO `regiment_service` (`id`, `name`, `flag`) VALUES
(1, 'Royal Engineers', NULL),
(2, 'HMS Victory', NULL),
(3, 'Army', NULL),
(4, 'Royal Navy', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regiment_service_casualty`
--

DROP TABLE IF EXISTS `regiment_service_casualty`;
CREATE TABLE `regiment_service_casualty` (
  `casualty_id` int(11) NOT NULL,
  `regiment_service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regiment_service_casualty`
--

INSERT INTO `regiment_service_casualty` (`casualty_id`, `regiment_service_id`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 4),
(3, 1),
(3, 3);

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
  `id` varchar(2) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_country`
--

INSERT INTO `service_country` (`id`, `name`) VALUES
('GB', 'United Kingdom');

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
  `country_id` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_country_flag`
--

INSERT INTO `service_country_flag` (`id`, `flag`, `start`, `end`, `country_id`) VALUES
(1, 'flags-iso/flat/32/GB.png', '1707-01-01', NULL, 'GB');

-- --------------------------------------------------------

--
-- Table structure for table `service_number`
--

DROP TABLE IF EXISTS `service_number`;
CREATE TABLE `service_number` (
  `casualty_id` int(11) NOT NULL,
  `service_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_number`
--

INSERT INTO `service_number` (`casualty_id`, `service_number`) VALUES
(1, 'ABC123'),
(1, 'DEF456'),
(2, 'ZYX99'),
(3, '34FGB');

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
-- Dumping data for table `war`
--

INSERT INTO `war` (`id`, `name`) VALUES
(1, 'World War I'),
(2, 'World War II');

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
-- Indexes for table `commemoration_location_casualty`
--
ALTER TABLE `commemoration_location_casualty`
  ADD PRIMARY KEY (`casualty_id`,`commemoration_location_id`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `picture_casualty`
--
ALTER TABLE `picture_casualty`
  ADD PRIMARY KEY (`picture_id`,`casualty_id`);

--
-- Indexes for table `picture_commemoration_location`
--
ALTER TABLE `picture_commemoration_location`
  ADD PRIMARY KEY (`picture_id`,`commemoration_location`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `commemoration_location`
--
ALTER TABLE `commemoration_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `regiment_service`
--
ALTER TABLE `regiment_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `relation`
--
ALTER TABLE `relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service_country_flag`
--
ALTER TABLE `service_country_flag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `war`
--
ALTER TABLE `war`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

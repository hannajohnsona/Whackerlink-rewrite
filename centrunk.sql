-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 11, 2023 at 07:23 AM
-- Server version: 10.11.4-MariaDB-1~deb12u1
-- PHP Version: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `centrunk`
--

-- --------------------------------------------------------

--
-- Table structure for table `country_state_city`
--

CREATE TABLE `country_state_city` (
  `id` int(11) NOT NULL,
  `country` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `country_state_city`
--

INSERT INTO `country_state_city` (`id`, `country`, `state`, `city`) VALUES
(1, 'USA', 'New York', 'New York city'),
(2, 'USA', 'New York', 'Buffalo'),
(3, 'USA', 'New York', 'Albany'),
(4, 'USA', 'Alabama', 'Birmingham'),
(5, 'USA', 'Alabama', 'Montgomery'),
(6, 'USA', 'Alabama', 'Huntsville'),
(7, 'USA', 'California', 'Los Angeles'),
(8, 'USA', 'California', 'San Francisco'),
(9, 'USA', 'California', 'San Diego'),
(10, 'Canada', 'Ontario', 'Toronto'),
(11, 'Canada', 'Ontario', 'Ottawa'),
(12, 'Canada', 'British Columbia', 'Vancouver'),
(13, 'Canada', 'British Columbia', 'Victoria'),
(14, 'Australia', 'New South Wales', 'Sydney'),
(15, 'Australia', 'New South Wales', 'Newcastle'),
(16, 'Australia', 'Queensland', 'City of Brisbane'),
(17, 'Australia', 'Queensland', 'Gold Coast\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `rid_acl`
--

CREATE TABLE `rid_acl` (
  `id` int(10) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rid_acl`
--

INSERT INTO `rid_acl` (`id`, `enabled`) VALUES
(1001, 1),
(1002, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `networkName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `comments` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `phone`, `comments`, `status`) VALUES
(1, 'Amanda', 'Nunes', 'anunes@ufc.com', '012345 678910', '', 'active'),
(2, 'Alexander', 'Volkanovski', 'avolkanovski@ufc.com', '012345 678910', '', 'active'),
(3, 'Khabib', 'Nurmagomedov', 'knurmagomedov@ufc.com', '012345 678910', '', 'active'),
(4, 'Kamaru', 'Usman', 'kusman@ufc.com', '012345 678910', '', 'active'),
(5, 'Israel', 'Adesanya', 'iadesanya@ufc.com', '012345 678910', '', 'active'),
(6, 'Henry', 'Cejudo', 'hcejudo@ufc.com', '012345 678910', '', 'active'),
(7, 'Valentina', 'Shevchenko', 'vshevchenko@ufc.com', '012345 678910', '', 'active'),
(8, 'Tyron', 'Woodley', 'twoodley@ufc.com', '012345 678910', '', 'active'),
(9, 'Rose', 'Namajunas ', 'rnamajunas@ufc.com', '012345 678910', '', 'active'),
(10, 'Tony', 'Ferguson ', 'tferguson@ufc.com', '012345 678910', '', 'active'),
(11, 'Jorge', 'Masvidal ', 'jmasvidal@ufc.com', '012345 678910', '', 'active'),
(12, 'Nate', 'Diaz ', 'ndiaz@ufc.com', '012345 678910', '', 'active'),
(13, 'Conor', 'McGregor ', 'cmcGregor@ufc.com', '012345 678910', '', 'active'),
(14, 'Cris', 'Cyborg ', 'ccyborg@ufc.com', '012345 678910', '', 'active'),
(15, 'Tecia', 'Torres ', 'ttorres@ufc.com', '012345 678910', '', 'active'),
(16, 'Ronda', 'Rousey ', 'rrousey@ufc.com', '012345 678910', '', 'active'),
(17, 'Holly', 'Holm ', 'hholm@ufc.com', '012345 678910', '', 'active'),
(18, 'Joanna', 'Jedrzejczyk ', 'jjedrzejczyk@ufc.com', '012345 678910', '', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `name` varchar(255) NOT NULL,
  `mode` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `networkName` varchar(255) NOT NULL,
  `rid` int(7) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`name`, `mode`, `title`, `networkName`, `rid`, `enabled`) VALUES
('Ops', 'Digital', 'Zone1', '', NULL, NULL),
('Tac 1', 'digital', 'Zone 2', '', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_state_city`
--
ALTER TABLE `country_state_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country_state_city`
--
ALTER TABLE `country_state_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

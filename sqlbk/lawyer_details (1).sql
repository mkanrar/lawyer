-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 09:19 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawyer_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_details`
--

CREATE TABLE `lawyer_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `education` varchar(200) DEFAULT NULL,
  `year_of_experience` decimal(8,2) DEFAULT NULL,
  `office_address` varchar(200) DEFAULT NULL,
  `court_id` varchar(200) DEFAULT NULL,
  `primary_practice_id` varchar(255) NOT NULL,
  `profile_description` text NOT NULL,
  `expertise_id` varchar(255) NOT NULL,
  `enroll_number` varchar(50) DEFAULT NULL,
  `year_of_passing` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lawyer_details`
--

INSERT INTO `lawyer_details` (`id`, `user_id`, `education`, `year_of_experience`, `office_address`, `court_id`, `primary_practice_id`, `profile_description`, `expertise_id`, `enroll_number`, `year_of_passing`, `created_at`, `updated_at`) VALUES
(1, 13, NULL, NULL, NULL, NULL, '', '', '', NULL, '1988-03-03', '2020-07-18 12:37:36', '2020-07-18 12:37:36'),
(2, 15, 'LLB', '7.00', 'Kol', 'court name', '', '', '', '3456', '1988-03-03', '2020-07-18 12:42:38', '2020-07-18 12:42:38'),
(3, 17, 'LLB', '7.00', 'Kol', 'court name', '', '', '', '3456', '1988-03-03', '2020-07-18 12:43:47', '2020-07-18 12:43:47'),
(4, 18, 'LLB', '7.00', 'Kol', 'court name', '', '', '', '3456', '1988-03-03', '2020-07-18 12:43:50', '2020-07-18 12:43:50'),
(5, 22, 'LLB', '7.00', 'Kol', '1,2', '1,2', '', '1,2,3', '3456', '1988-03-03', '2020-07-18 12:43:52', '2020-07-18 12:43:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lawyer_details`
--
ALTER TABLE `lawyer_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lawyer_details`
--
ALTER TABLE `lawyer_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

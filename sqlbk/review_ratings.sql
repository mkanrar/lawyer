-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2021 at 11:01 AM
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
-- Table structure for table `review_ratings`
--

CREATE TABLE `review_ratings` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `given_by` int(11) NOT NULL,
  `rating` enum('1','2','3','4','5') NOT NULL DEFAULT '5',
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_ratings`
--

INSERT INTO `review_ratings` (`review_id`, `user_id`, `given_by`, `rating`, `description`, `created_at`) VALUES
(1, 22, 1, '5', 'TEst', '2021-01-26 09:58:35'),
(2, 22, 25, '4', 'Test', '2021-01-26 09:58:35'),
(3, 24, 25, '2', 'this is test', '2021-01-26 09:58:35'),
(4, 24, 1, '5', 'thhdhdf rrrb rtrtr', '2021-01-26 09:58:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `review_ratings`
--
ALTER TABLE `review_ratings`
  ADD PRIMARY KEY (`review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `review_ratings`
--
ALTER TABLE `review_ratings`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

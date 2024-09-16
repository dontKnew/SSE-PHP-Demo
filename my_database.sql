-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2024 at 08:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `name`, `created_at`) VALUES
(4, 'Sajid Ali', '2024-09-16 10:13:08'),
(5, 'hey  bro', '2024-09-16 13:34:39'),
(6, 'hey  bro', '2024-09-16 13:34:48'),
(7, 'hey  bro', '2024-09-16 13:34:48'),
(8, 'hey  bro', '2024-09-16 13:34:53'),
(9, 'hey  bro', '2024-09-16 13:35:06'),
(10, 'nice bro', '2024-09-16 17:44:22'),
(11, 'I love to wok here', '2024-09-16 17:44:32'),
(12, 'OK', '2024-09-16 17:45:46'),
(13, 'I love to work here :)', '2024-09-16 17:46:11'),
(14, 'nice', '2024-09-16 17:50:28'),
(15, 'not bad work bro', '2024-09-16 17:50:36'),
(16, 'i love to work here ', '2024-09-16 17:50:49'),
(17, 'no probme', '2024-09-16 17:50:58'),
(18, 'this is oonly for test', '2024-09-16 17:51:21'),
(19, 'yo yo honey singh', '2024-09-16 17:51:39'),
(20, 'yo yo honey singh', '2024-09-16 17:52:15'),
(21, 'yo yo honey singh', '2024-09-16 17:52:19'),
(22, 'yo yo honey singh', '2024-09-16 17:52:19'),
(23, 'yo yo honey singh', '2024-09-16 17:52:19'),
(24, 'yo yo honey singh', '2024-09-16 17:52:19'),
(25, 'hey bro', '2024-09-16 17:55:05'),
(26, 'its my tiie bro', '2024-09-16 17:55:19'),
(27, 'no problem , its ok bro', '2024-09-16 17:55:31'),
(28, 'ham tum ek kamre mei band ho', '2024-09-16 17:57:26'),
(29, 'aur chabi kho jaye :)', '2024-09-16 17:57:38'),
(30, 'no probme', '2024-09-16 17:58:41'),
(31, 'hey bro, its working ?', '2024-09-16 17:58:54'),
(32, 'hey bro, its working ?', '2024-09-16 17:59:03'),
(33, 'hey bro, its working ?', '2024-09-16 17:59:03'),
(34, 'hey bro, its working ?', '2024-09-16 17:59:03'),
(35, 'hey bro, its working ?', '2024-09-16 17:59:03'),
(36, 'hey bro, its working ?', '2024-09-16 17:59:03'),
(37, 'hey bro', '2024-09-16 18:00:31'),
(38, 'its working ?', '2024-09-16 18:00:43'),
(39, 'listen bro', '2024-09-16 18:01:12'),
(40, 'i love you bro :)', '2024-09-16 18:01:56'),
(41, 'now its my time', '2024-09-16 18:02:05'),
(42, 'ok ok no probmle', '2024-09-16 18:02:13'),
(43, 'HEY BRO ITS WORKIN G?', '2024-09-16 18:03:41'),
(44, 'ok ok no probme', '2024-09-16 18:03:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

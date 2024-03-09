-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 07:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weather_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather_history`
--

CREATE TABLE `weather_history` (
  `id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `temperature` float NOT NULL,
  `weather` varchar(255) NOT NULL,
  `time_searched` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weather_history`
--

INSERT INTO `weather_history` (`id`, `location`, `temperature`, `weather`, `time_searched`) VALUES
(1, 'badlapur', 26.89, 'broken clouds', '2024-02-22 00:24:28'),
(2, 'Mumbai', 26.99, 'haze', '2024-02-22 00:27:32'),
(3, 'badlapur', 26.89, 'broken clouds', '2024-02-22 00:37:15'),
(4, 'badlapur', 26.89, 'broken clouds', '2024-02-22 00:40:30'),
(5, 'badlapur', 26.89, 'broken clouds', '2024-02-22 00:41:45'),
(6, 'badlapur', 26.89, 'broken clouds', '2024-02-22 00:42:33'),
(7, 'badlapur', 26.89, 'broken clouds', '2024-02-22 00:43:09'),
(8, 'Mumbai', 26.99, 'haze', '2024-02-22 00:43:30'),
(9, 'badlapur', 26.89, 'broken clouds', '2024-02-22 00:43:39'),
(10, 'badlapur', 26.89, 'broken clouds', '2024-02-22 00:45:29'),
(11, 'badlapur', 26.89, 'broken clouds', '2024-02-22 00:46:23'),
(12, 'badlapur', 26.89, 'broken clouds', '2024-02-22 00:47:10'),
(13, 'badlapur', 26.89, 'broken clouds', '2024-02-22 00:48:54'),
(14, 'badlapur', 26.89, 'broken clouds', '2024-02-22 00:49:21'),
(15, 'badlapur', 26.89, 'broken clouds', '2024-02-22 00:53:33'),
(16, 'Mumbai', 26.99, 'haze', '2024-02-22 00:53:40'),
(17, 'Mumbai', 26.99, 'haze', '2024-02-22 00:55:28'),
(18, 'Mumbai', 26.99, 'haze', '2024-02-22 00:55:32'),
(19, 'badlapur', 26.89, 'broken clouds', '2024-02-22 00:55:40'),
(20, 'Mumbai', 26.99, 'haze', '2024-02-22 00:57:20'),
(21, 'badlapur', 26.89, 'broken clouds', '2024-02-22 01:01:33'),
(22, 'badlapur, india', 26.89, 'broken clouds', '2024-02-22 01:03:02'),
(23, 'badlapur, india', 26.89, 'broken clouds', '2024-02-22 01:03:10'),
(24, 'badlapur, india', 26.89, 'broken clouds', '2024-02-22 01:03:10'),
(25, 'badlapur', 26.89, 'broken clouds', '2024-02-22 01:04:49'),
(26, 'badlapur', 26.89, 'broken clouds', '2024-02-22 01:07:15'),
(27, 'badlapur', 26.89, 'broken clouds', '2024-02-22 01:08:15'),
(28, 'badlapur', 26.89, 'broken clouds', '2024-02-22 01:09:40'),
(29, 'badlapur', 26.89, 'broken clouds', '2024-02-22 01:10:22'),
(30, 'badlapur', 26.89, 'broken clouds', '2024-02-22 01:11:07'),
(31, 'badlapur', 26.89, 'broken clouds', '2024-02-22 01:11:27'),
(32, 'badlapur', 26.89, 'broken clouds', '2024-02-22 01:11:48'),
(33, 'badlapur', 26.89, 'broken clouds', '2024-02-22 01:12:02'),
(34, 'Mumbai', 26.99, 'haze', '2024-02-22 01:12:30'),
(35, 'badlapur', 26.89, 'broken clouds', '2024-02-22 01:13:10'),
(36, 'Mumbai', 26.99, 'haze', '2024-02-22 01:13:18'),
(37, 'Mumbai', 26.99, 'haze', '2024-02-22 01:13:19'),
(38, 'Mumbai', 26.99, 'haze', '2024-02-22 01:13:19'),
(39, 'Mumbai', 26.99, 'haze', '2024-02-22 01:13:19'),
(40, 'Mumbai', 26.99, 'haze', '2024-02-22 01:13:20'),
(41, 'Mumbai', 26.99, 'haze', '2024-02-22 01:13:20'),
(42, 'Mumbai', 26.99, 'haze', '2024-02-22 01:13:20'),
(43, 'Mumbai', 26.99, 'haze', '2024-02-22 01:13:21'),
(44, 'London', 9.54, 'broken clouds', '2024-02-22 01:14:54'),
(45, 'London', 9.54, 'broken clouds', '2024-02-22 01:15:00'),
(46, 'London', 9.54, 'broken clouds', '2024-02-22 01:15:01'),
(47, 'London', 9.54, 'broken clouds', '2024-02-22 01:15:01'),
(48, 'London', 9.54, 'broken clouds', '2024-02-22 01:15:02'),
(49, 'London', 9.54, 'broken clouds', '2024-02-22 01:15:02'),
(50, 'London', 9.54, 'broken clouds', '2024-02-22 01:15:02'),
(51, 'London', 9.54, 'broken clouds', '2024-02-22 01:15:02'),
(52, 'London', 9.54, 'broken clouds', '2024-02-22 01:15:03'),
(53, 'London', 9.54, 'broken clouds', '2024-02-22 01:15:03'),
(54, 'London', 9.54, 'broken clouds', '2024-02-22 01:15:03'),
(55, 'London', 9.54, 'broken clouds', '2024-02-22 01:15:03'),
(56, 'London', 9.54, 'broken clouds', '2024-02-22 01:15:04'),
(57, 'india', -2, 'overcast clouds', '2024-02-22 01:15:12'),
(58, 'Mumbai', 26.99, 'haze', '2024-02-22 01:16:01'),
(59, 'Mumbai', 26.99, 'haze', '2024-02-22 01:16:08'),
(60, 'india', -2, 'overcast clouds', '2024-02-22 01:17:41'),
(61, 'india', -2, 'overcast clouds', '2024-02-22 01:18:51'),
(62, 'india', -2, 'overcast clouds', '2024-02-22 01:18:57'),
(63, 'india', -2, 'overcast clouds', '2024-02-22 01:19:28'),
(64, 'mumbai', 28.99, 'haze', '2024-02-22 01:19:37'),
(65, 'badlapur', 28.89, 'broken clouds', '2024-02-22 01:19:42'),
(66, 'london', 9.54, 'broken clouds', '2024-02-22 01:20:03'),
(67, 'russia', -14.98, 'overcast clouds', '2024-02-22 01:20:16'),
(68, 'india', -2, 'overcast clouds', '2024-02-22 01:22:08'),
(69, 'india', -2, 'overcast clouds', '2024-02-22 01:23:08'),
(70, 'Mumbai', 28.99, 'haze', '2024-02-22 01:24:19'),
(71, 'Mumbai', 28.99, 'haze', '2024-02-22 01:26:50'),
(72, 'Mumbai', 28.99, 'haze', '2024-02-22 01:27:10'),
(73, 'Mumbai', 28.99, 'haze', '2024-02-22 01:27:50'),
(74, 'Mumbai', 28.99, 'haze', '2024-02-22 01:30:26'),
(75, 'amber', 22.9, 'haze', '2024-02-22 01:35:44'),
(76, 'Mumbai', 28.99, 'smoke', '2024-02-22 01:38:34'),
(77, 'Mumbai', 28.99, 'smoke', '2024-02-22 01:38:49'),
(78, 'Mumbai', 28.99, 'smoke', '2024-02-22 01:38:50'),
(79, 'Mumbai', 28.99, 'smoke', '2024-02-22 01:38:51'),
(80, 'Mumbai', 28.99, 'smoke', '2024-02-22 01:38:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weather_history`
--
ALTER TABLE `weather_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `weather_history`
--
ALTER TABLE `weather_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

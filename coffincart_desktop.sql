-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2026 at 07:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffincart_desktop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `username`, `password`, `address`, `created_at`) VALUES
(1, 'Rey Vincent Alviza', 'Customer1', 'pandalici0us15', 'Via, Daliao, Toril, Davao City', '2026-02-01 04:39:07'),
(2, 'Rey Vincent Alviza', 'Alviza', 'pandalici0us15', 'Via, Daliao, Davao City', '2026-02-08 11:17:05'),
(3, 'SADAS', 'aaa', 'aaa', 'via', '2026-03-03 21:51:57'),
(4, 'Reynante Alviza', 'rey', 'imthebest123', 'Via,daliao Toril', '2026-03-03 21:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `name`, `stock`, `price`) VALUES
(7, 'Ceremonial Torch', 911, 1500.00),
(8, 'Funeral Flower Set', 123, 3500.00),
(9, 'Funeral Wreath', 412, 4500.00),
(10, 'Keepsake Box', 623, 2000.00),
(11, 'Memorial Candle', 631, 800.00),
(12, 'Memorial Urn', 901, 3500.00),
(13, 'Premium Oak Coffin', 819, 25000.00),
(14, 'Urn', 213, 3000.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `product_id`, `customer_name`, `address`, `product_name`, `quantity`, `status`) VALUES
(1, NULL, NULL, 'Juan Dela Cruz', NULL, 'Standard Coffin', 1, 'Pending'),
(2, NULL, NULL, 'Maria Santos', NULL, 'Luxury Coffin', 2, 'Shipped'),
(3, 1, NULL, 'Test Customer', 'Manila', 'Premium Oak Coffin', 1, 'Shipped'),
(4, 1, NULL, 'Test Customer', 'Manila', 'Funeral Flower Set', 1, 'Pending'),
(5, 1, NULL, 'Test Customer', 'Manila', 'Premium Package', 1, 'Pending'),
(6, 2, NULL, 'Rey Vincent Alviza', 'Via, Daliao, Davao City', 'Ceremonial Torch', 1, 'Pending'),
(7, 2, NULL, 'Rey Vincent Alviza', 'Via, Daliao, Davao City', 'Premium Oak Coffin', 1, 'Pending'),
(8, 2, NULL, 'Rey Vincent Alviza', 'Via, Daliao, Davao City', 'Standard Package', 1, 'Pending'),
(9, 2, NULL, 'Rey Vincent Alviza', 'Via, Daliao, Davao City', 'Premium Oak Coffin', 1, 'Shipped'),
(10, 2, NULL, 'Rey Vincent Alviza', 'Via, Daliao, Davao City', 'Premium Package', 1, 'Pending'),
(11, 2, NULL, 'Rey Vincent Alviza', 'Via, Daliao, Davao City', 'Premium Oak Coffin', 1, 'Pending'),
(12, 2, NULL, 'Rey Vincent Alviza', 'Via, Daliao, Davao City', 'Standard Package', 1, 'Pending'),
(13, 0, NULL, NULL, NULL, 'Premium Oak Coffin', 1, 'Pending'),
(14, 0, 7, NULL, NULL, 'Ceremonial Torch', 1, 'Shipped'),
(26, 3, 13, 'SADAS', 'via', 'Premium Oak Coffin', 1, 'Pending'),
(27, 3, 13, 'SADAS', 'via', 'Premium Oak Coffin', 1, 'Pending'),
(28, 3, 8, 'SADAS', 'via', 'Funeral Flower Set', 1, 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

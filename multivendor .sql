-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2021 at 07:08 PM
-- Server version: 5.5.16
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multivendor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_management`
--

CREATE TABLE `admin_management` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) DEFAULT NULL,
  `admin_password` varchar(50) DEFAULT NULL,
  `admin_mobileNO` varchar(12) DEFAULT NULL,
  `admin_aadhar_card` int(11) DEFAULT NULL,
  `admin_pan_card` varchar(10) DEFAULT NULL,
  `admin_email` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_management`
--

INSERT INTO `admin_management` (`admin_id`, `admin_name`, `admin_password`, `admin_mobileNO`, `admin_aadhar_card`, `admin_pan_card`, `admin_email`, `status`) VALUES
(1, 'aruvishal', 'bigdog', '8824478087', 748574373, 'ITWPR0345A', 'aruv@gmail.com', 1),
(2, 'Abhishek saini', 'Abhi0637@', '950-9697-319', 355667300, 'MCH342299P', 'abhisheksaini16092001@gmail.com', 0),
(3, 'chirag khatik', 'Chir0637@', '882-4478-072', 355667310, 'MCH342219P', 'chiragkhatik333@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `logistic_management`
--

CREATE TABLE `logistic_management` (
  `logistic_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `aadhar_card` varchar(30) NOT NULL,
  `pan_card` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logistic_management`
--

INSERT INTO `logistic_management` (`logistic_id`, `name`, `mobile_no`, `email`, `password`, `aadhar_card`, `pan_card`, `address`, `registration_date`, `status`) VALUES
(12, 'chirag khatik', '882-4478-072', 'chiragkhatik333@gmail.com', 'chir0637@', '1234-5678-7281', 'MHDHKH0838', 'india', NULL, 0),
(14, 'abhishek saini', '950-9697-319', 'abhisheksaini16092001@gmail.com', 'Abhi0637@', '1244-6373-8321', 'MCH342599P', 'india', NULL, 0),
(15, 'Aru vishal patel', '727-5707-577', 'aruvishalpatel33@gmail.com', 'Aruv0637@', '1267-6372-4426', 'MSDh07388P', 'india', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_buy`
--

CREATE TABLE `product_buy` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `purchasing_date` date DEFAULT NULL,
  `order_status` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `product_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_warrenty` varchar(100) DEFAULT NULL,
  `product_prize` varchar(100) DEFAULT NULL,
  `product_qty` varchar(500) DEFAULT NULL,
  `product_cat` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `discription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`product_id`, `brand_id`, `seller_id`, `product_name`, `product_warrenty`, `product_prize`, `product_qty`, `product_cat`, `status`, `discription`) VALUES
(11, 1, 13, 'woodland', '12', '4000', '100', 'Shoes', 1, 'hello'),
(12, 1, 9, 'raymond', '12', '1000', '100', 'Garments', 1, 'hello'),
(13, 1, 14, 'redchef', '24', '5000', '100', 'Shoes', 1, 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `seller_management`
--

CREATE TABLE `seller_management` (
  `seller_id` int(11) NOT NULL,
  `seller_name` varchar(100) DEFAULT NULL,
  `seller_password` varchar(100) DEFAULT NULL,
  `seller_Email` varchar(100) DEFAULT NULL,
  `seller_pancard` varchar(11) DEFAULT NULL,
  `seller_AadharCard` varchar(50) DEFAULT NULL,
  `seller_GSTIN_No` varchar(25) DEFAULT NULL,
  `seller_Address` varchar(100) DEFAULT NULL,
  `seller_registrationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `seller_MobileNo` varchar(12) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `account_number` varchar(20) DEFAULT NULL,
  `ifsc_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seller_management`
--

INSERT INTO `seller_management` (`seller_id`, `seller_name`, `seller_password`, `seller_Email`, `seller_pancard`, `seller_AadharCard`, `seller_GSTIN_No`, `seller_Address`, `seller_registrationdate`, `seller_MobileNo`, `status`, `account_number`, `ifsc_code`) VALUES
(9, 'chirag khatik', 'Chir0637@', 'chiragkhatik333@gmail.com', 'MCHPS255P', '1234-5678-3456', 'ACA12345678', 'india', '2021-08-11 09:04:21', '882-4478-072', 1, '123456789', 'ACA12345678'),
(13, 'abhishek saini', 'Abhi0637@', 'abhisheksaini16092001@gmail.com', 'MSHD12344', '1234-5678-3457', 'gabck0763729', 'india', '2021-08-11 09:09:03', '950-9697-319', 1, '1234567877', 'gabck0763729'),
(14, 'Aru vishal patel', 'Aruv0637@', 'aruvishalpatel33@gmail.com', 'MSHU0738327', '1234-5678-3458', 'SYBWU27217823', 'india', '2021-08-11 09:10:24', '727-5707-577', 1, '62786142334324', 'SYBWU27217823');

-- --------------------------------------------------------

--
-- Table structure for table `user_management`
--

CREATE TABLE `user_management` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_MobileNo` varchar(12) DEFAULT NULL,
  `user_Email` varchar(100) DEFAULT NULL,
  `user_Password` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_pincode` int(11) DEFAULT NULL,
  `user_registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_management`
--

INSERT INTO `user_management` (`user_id`, `user_name`, `user_MobileNo`, `user_Email`, `user_Password`, `address`, `user_pincode`, `user_registration_date`, `status`) VALUES
(23, 'abhishek saini', '950-9697-319', 'abhisheksaini16092001@gmail.com', 'Abhi0637@', NULL, NULL, '2021-08-11 08:48:45', 0),
(24, 'chirag khatik', '882-4478-072', 'chiragkhatik333@gmail.com', 'chir0637@', NULL, NULL, '2021-08-11 08:50:05', 0),
(26, 'Aru vishal patel', '727-5707-577', 'aruvishalpatel33@gmail.com', 'Aruv0637@', NULL, NULL, '2021-08-11 08:52:40', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_management`
--
ALTER TABLE `admin_management`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_aadhar_card` (`admin_aadhar_card`),
  ADD UNIQUE KEY `admin_pan_card` (`admin_pan_card`),
  ADD UNIQUE KEY `admin_email` (`admin_email`);

--
-- Indexes for table `logistic_management`
--
ALTER TABLE `logistic_management`
  ADD PRIMARY KEY (`logistic_id`),
  ADD UNIQUE KEY `aadhar_card` (`aadhar_card`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `pan_card` (`pan_card`);

--
-- Indexes for table `product_buy`
--
ALTER TABLE `product_buy`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `seller_management`
--
ALTER TABLE `seller_management`
  ADD PRIMARY KEY (`seller_id`),
  ADD UNIQUE KEY `seller_Email` (`seller_Email`),
  ADD UNIQUE KEY `seller_pancard` (`seller_pancard`),
  ADD UNIQUE KEY `seller_AadharCard` (`seller_AadharCard`),
  ADD UNIQUE KEY `seller_GSTIN_No` (`seller_GSTIN_No`);

--
-- Indexes for table `user_management`
--
ALTER TABLE `user_management`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`user_Email`),
  ADD UNIQUE KEY `user_Email` (`user_Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_management`
--
ALTER TABLE `admin_management`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logistic_management`
--
ALTER TABLE `logistic_management`
  MODIFY `logistic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_buy`
--
ALTER TABLE `product_buy`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `seller_management`
--
ALTER TABLE `seller_management`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_management`
--
ALTER TABLE `user_management`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

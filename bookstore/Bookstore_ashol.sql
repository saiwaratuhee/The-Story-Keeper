-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 11:52 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookID` varchar(50) NOT NULL,
  `BookTitle` varchar(200) DEFAULT NULL,
  `Price` double(12,2) DEFAULT NULL,
  `Author` varchar(128) DEFAULT NULL,
  `Genre` varchar(255) DEFAULT NULL,
  `Image` varchar(128) DEFAULT NULL,
  `ISBN` varchar(255) DEFAULT NULL,
  `Bookstore` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookID`, `BookTitle`, `Price`, `Author`, `Genre`, `Image`, `ISBN`, `Bookstore`) VALUES
('B-001', 'Lonely Planet Australia (Travel Guide)', 136.00, 'Lonely Planet', 'Travel', 'image/travel.jpg', NULL, 'Narnia'),
('B-002', 'Crew Resource Management, Second Edition', 599.00, 'Barbara Kanki', 'Technical', 'image/technical.jpg', NULL, 'Narnia'),
('B-003', 'CCNA Routing and Switching 200-125 Official Cert Guide Library', 329.00, 'Cisco Press ', 'Technology', 'image/technology.jpg', NULL, 'Narnia'),
('B-004', 'Easy Vegetarian Slow Cooker Cookbook', 75.90, 'Rockridge Press', 'Food', 'image/food.jpg', NULL, 'Narnia'),
('B-005', 'Kafka On The Shore', 375.00, 'Haruki Murakami ', 'Fiction', 'image/KOTS.jpg', NULL, 'Hogwarts'),
('B-006', 'Pride and Prejudice', 375.00, 'Jane Austen', 'Classic', 'image/P&P.jpg', NULL, 'Narnia'),
('B-007', 'How To Kill A Mockingbird', 250.00, 'Harper Lee', 'Classic', 'image/HTKAMB.webp', NULL, 'Narnia'),
('B-008', 'Emma', 300.00, 'Jane Austen', 'Classic', 'image/emma.jpg', NULL, 'Hogwarts'),
('B-009', 'Six Of Crows', 280.00, 'Laigh Burdugo', 'Fiction', 'image/SOC.png', NULL, 'Hogwarts'),
('B-010', 'Crooked Kingdom', 300.00, 'Leigh Burdugo', 'Fiction', 'image/CK.jpg', NULL, 'Narnia'),
('B-011', 'The Silent Patient', 310.00, 'Alex Michaelides', 'Psychological Thriller', 'image/SP.jpg', NULL, 'Hogwarts'),
('B-012', 'The Maidens', 300.00, 'Alex Michaelides', 'Psychological Thriller', 'image/TM.jpg', NULL, 'Narnia'),
('B-013', 'Gone Girl', 350.00, 'Gyllian Flynn', 'Mystery', 'image/GG.jpg', NULL, 'Hogwarts'),
('B-014', 'Sharp Objects', 350.00, 'Gyllian Flynn', 'Thriller', 'image/SO.jpg', NULL, 'Hogwarts'),
('B-015', 'Dark Places', 280.00, 'Gyllian Flynn', 'Mystery', 'image/DP.jpg', NULL, 'Narnia');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CartID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `BookID` varchar(50) DEFAULT NULL,
  `Price` double(12,2) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `TotalPrice` double(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(128) DEFAULT NULL,
  `CustomerPhone` varchar(12) DEFAULT NULL,
  `CustomerIC` varchar(14) DEFAULT NULL,
  `CustomerEmail` varchar(200) DEFAULT NULL,
  `CustomerAddress` varchar(200) DEFAULT NULL,
  `CustomerGender` varchar(10) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `CustomerPhone`, `CustomerIC`, `CustomerEmail`, `CustomerAddress`, `CustomerGender`, `UserID`) VALUES
(1, 'tuhee', '123456789', 'xxxxxxxxxxxx', 'tuhee@gmail.com', 'eafdrhb', 'Female', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `BookID` varchar(50) DEFAULT NULL,
  `DatePurchase` datetime DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `TotalPrice` double(12,2) DEFAULT NULL,
  `Status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`OrderID`, `CustomerID`, `BookID`, `DatePurchase`, `Quantity`, `TotalPrice`, `Status`) VALUES
(1, 1, 'B-006', '2023-04-15 03:26:13', 1, 375.00, 'y'),
(2, 1, 'B-007', '2023-04-15 03:26:13', 1, 250.00, 'y'),
(3, 1, 'B-007', '2023-04-15 03:28:22', 1, 250.00, 'y'),
(4, 1, 'B-008', '2023-04-15 03:28:22', 1, 300.00, 'y'),
(5, 1, 'B-009', '2023-04-15 03:28:55', 1, 280.00, 'y'),
(6, 1, 'B-008', '2023-04-15 03:28:55', 1, 300.00, 'y'),
(7, 1, 'B-006', '2023-04-15 03:50:26', 1, 375.00, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(128) DEFAULT NULL,
  `Password` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `Password`) VALUES
(1, 'tuhee', 'tuhee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CartID`),
  ADD KEY `BookID` (`BookID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `BookID` (`BookID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `CartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

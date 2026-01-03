-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2025 at 12:36 PM
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
-- Database: bmi_db
--

-- --------------------------------------------------------

--
-- Table structure for table bmi_records
--

CREATE TABLE bmi_records (
  id int(11) NOT NULL,
  user_id int(11) NOT NULL,
  name varchar(100) NOT NULL,
  weight float NOT NULL,
  height float NOT NULL,
  bmi float NOT NULL,
  status varchar(50) NOT NULL,
  timestamp timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table bmi_records
--

INSERT INTO bmi_records (id, user_id, name, weight, height, bmi, status, timestamp) VALUES
(1, 2, 'baha', 64, 1.78, 20.1995, 'Normal weight', '2025-04-25 00:32:18'),
(2, 2, 'baha', 90, 1.54, 37.9491, 'Obesity', '2025-04-25 00:33:11'),
(3, 3, 'awab', 80, 1.7, 27.6817, 'Overweight', '2025-04-25 00:37:04'),
(4, 4, 'awab', 90, 174, 0.00297265, 'Underweight', '2025-04-25 01:40:46'),
(5, 4, 'awab', 90, 1.74, 29.7265, 'Overweight', '2025-04-25 01:41:12'),
(6, 5, 'benabdallah', 59, 1.62, 22.4813, 'Normal weight', '2025-04-30 10:27:44'),
(7, 5, 'benabdallah', 65, 1.69, 22.7583, 'Normal weight', '2025-04-30 10:30:54'),
(8, 5, 'aal', 43, 1.8, 13.2716, 'Underweight', '2025-04-30 10:33:20');

-- --------------------------------------------------------

--
-- Table structure for table users
--

CREATE TABLE users (
  id int(11) NOT NULL,
  username varchar(50) NOT NULL,
  password varchar(255) NOT NULL,
  role enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table users
--

INSERT INTO users (id, username, password, role) VALUES
(1, 'baha', '$2y$10$DE4t3LICIJ4DQS.uDkCEJOkM2/PjY7F1cIEcvV/ItRFnC13FsflTO', 'user'),
(2, 'baha1', '$2y$10$P4vyCeN5aJyLQlSM7AkgXeGUusO0d76EolRamB32ck6DVsgKGREg6', 'user'),
(3, 'awab', '$2y$10$RBQxSuDQtOInciZlToyvhOqTWUfOSJ2HoVIJaAcqga3j47WBWC2uK', 'user'),
(4, 'awab1', '$2y$10$s3hYs/urb1HfiV9QScMbQetG1IRSWsNVJc8yHV5g4rNxNQeqEHMHG', 'user'),
(5, 'benabdallah', '$2y$10$NJ/45dXWUB2VSu2hWLU9jOogOwmHfsElnJv/xMI4abzL4tUU3H5vO', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table bmi_records
--
ALTER TABLE bmi_records
  ADD PRIMARY KEY (id),
  ADD KEY user_id (user_id);

--
-- Indexes for table users
--
ALTER TABLE users
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY username (username);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table bmi_records
--
ALTER TABLE bmi_records
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table users
--
ALTER TABLE users
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table bmi_records
--
ALTER TABLE bmi_records
  ADD CONSTRAINT bmi_records_ibfk_1 FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

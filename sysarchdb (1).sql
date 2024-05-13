-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 06:11 PM
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
-- Database: `sysarchdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `announcement` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `created` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `announcement`, `details`, `created`) VALUES
(1, 'No Class Today', 'kay kapoy', '2024-05-14 00:00:07'),
(8, 'No Class Today', 'kay kapoy', '2024-05-14 00:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `feedback_content` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `lab_room` varchar(10) DEFAULT NULL,
  `time_in` timestamp NOT NULL DEFAULT current_timestamp(),
  `time_out` timestamp NULL DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `student_id`, `purpose`, `lab_room`, `time_in`, `time_out`, `full_name`) VALUES
(1, 21425319, 'PHP', '542', '2024-04-29 11:30:35', '2024-05-13 07:24:25', NULL),
(2, 21548177, 'HTML', '526', '2024-04-29 11:32:18', '2024-05-13 07:24:38', NULL),
(3, 21423066, 'Java', '524', '2024-04-29 11:32:40', '2024-05-13 07:24:40', NULL),
(4, 21513916, 'Python', '526', '2024-04-29 11:32:56', '2024-05-13 07:24:42', NULL),
(5, 21448006, 'Python', '517', '2024-04-29 11:33:09', '2024-05-13 07:24:42', NULL),
(6, 21475074, 'PHP', '526', '2024-04-29 11:33:20', '2024-05-13 07:24:43', NULL),
(7, 21464789, 'PHP', '526', '2024-04-29 11:33:35', '2024-05-13 07:24:43', NULL),
(8, 21509096, 'C', '544', '2024-04-29 11:33:48', '2024-05-13 07:24:44', NULL),
(9, 18723379, 'PHP', '528', '2024-04-29 11:34:00', '2024-05-13 07:24:45', NULL),
(10, 21446612, 'C++', '528', '2024-04-29 11:34:46', '2024-05-13 07:24:52', NULL),
(11, 23834765, 'C++', '542', '2024-04-29 11:35:02', '2024-05-13 07:24:53', NULL),
(12, 22711311, 'PHP', '528', '2024-04-29 11:35:13', '2024-05-13 07:24:55', NULL),
(13, 19881747, 'PHP', '528', '2024-04-29 11:35:25', '2024-05-13 07:24:51', NULL),
(14, 21423082, 'HTML', '524', '2024-04-29 11:35:38', '2024-05-13 07:24:54', NULL),
(15, 21417829, 'HTML', '542', '2024-04-29 11:35:50', '2024-05-13 07:24:50', NULL),
(16, 21442835, 'Python', '544', '2024-04-29 11:36:03', '2024-05-13 07:24:56', NULL),
(17, 21491378, 'C++', '542', '2024-04-29 11:36:16', '2024-05-13 07:24:56', NULL),
(18, 21419023, 'C++', '544', '2024-04-29 11:36:26', '2024-05-13 07:24:49', NULL),
(19, 21435680, 'HTML', '528', '2024-04-29 11:36:36', '2024-05-13 07:24:57', NULL),
(20, 21507777, 'HTML', '524', '2024-04-29 11:36:47', '2024-05-13 07:24:48', NULL),
(21, 21425319, 'PHP', '528', '2024-05-13 13:24:03', '2024-05-13 07:24:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `username`, `password`, `email`, `full_name`) VALUES
(1, 'admin1', 'admin1', 'admin1@uc.com', 'Admin One');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remaining_slot` int(11) NOT NULL DEFAULT 30
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `student_id`, `full_name`, `gender`, `email`, `username`, `password`, `remaining_slot`) VALUES
(1, 21425319, 'Jheny Lausa', 'Female', 'jheny@uc.com', 'jheny', 'jheny1', 30),
(2, 21548177, 'Melvin Sagnoy', 'Male', 'melvin@uc.com', 'melvin', 'melvin1', 29),
(3, 21423066, 'Kimberly Mae Alipin', 'Female', 'kimberly@uc.com', 'kimberly_mae', 'kim1', 30),
(4, 21513916, 'Irene Luga', 'Female', 'irene@uc.com', 'irene', 'irene1', 29),
(5, 21448006, 'Mary Anne Niones', 'Female', 'mary@uc.com', 'mary_anne', 'mary1', 29),
(6, 21475074, 'Trisha Mitch Bantecil', 'Female', 'trisha@uc.com', 'trisha_mitch', 'trisha1', 29),
(7, 21464789, 'Ronel Pantonial', 'Male', 'ronel@uc.com', 'ronel', 'ronel1', 29),
(8, 21509096, 'Aaron Gregg Binghay', 'Male', 'aaron@uc.com', 'aaron', 'aaron1', 29),
(9, 18723379, 'Luigie Gido', 'Male', 'luigie@uc.com', 'luigie', 'luigie1', 29),
(10, 21446612, 'Marcel June Villacura', 'Male', 'marcel@uc.com', 'marcel', 'marcel1', 29),
(11, 23834765, 'Kerr Harvey Cananua', 'Male', 'kerr@uc.com', 'kerr', 'kerr1', 29),
(12, 22711311, 'Carl Aldrich Pia', 'Male', 'carl@uc.com', 'carl', 'carl1', 29),
(13, 19881747, 'James Carmel Isok', 'Male', 'james@uc.com', 'james', 'james1', 29),
(14, 21423082, 'Niel Justin Paulin', 'Male', 'niel@uc.com', 'niel', 'niel1', 29),
(15, 21417829, 'Nichole Ann Dinauanao', 'Female', 'nichole@uc.com', 'nichole', 'nichole1', 29),
(16, 21442835, 'Shyra Galon', 'Female', 'shyra@uc.com', 'shyra', 'shyra1', 29),
(17, 21491378, 'Giliane Aze Durado', 'Female', 'giliane@uc.com', 'giliane', 'giliane1', 29),
(18, 21419023, 'Allan Villegas', 'Male', 'allan@uc.com', 'allan', 'allan1', 29),
(19, 21435680, 'John Melvin Burila', 'Male', 'john@uc.com', 'john', 'john1', 29),
(20, 21507777, 'David John Capoy', 'Male', 'david@uc.com', 'david', 'david1', 29),
(21, 21427307, 'Aldrich Batisla-on', 'Male', 'aldrich@uc.com', 'aldrich', 'aldrich1', 30),
(22, 21448196, 'Bernadeth Gallego', 'Female', 'bern@uc.com', 'bern', 'bern1', 30),
(23, 21489844, 'Beatrice Abigail Alindao', 'Female', 'bea@uc.com', 'bea', 'bea1', 30),
(24, 21479241, 'Cesar Ian Sacare', 'Male', 'cesar@uc.com', 'cesar', 'cesar1', 30),
(25, 21414479, 'Joshua Caranzo', 'Male', 'joshua@uc.com', 'joshua', 'joshua1', 30),
(26, 21485354, 'Jude Saagundo', 'Male', 'jude@uc.com', 'jude', 'jude1', 30),
(27, 22461066, 'Leo Osabel', 'Male', 'leo@uc.com', 'leo', 'leo1', 30),
(28, 21459805, 'Rhodney Dame Ponsica', 'Male', 'rd@uc.com', 'rd', 'rd1', 30),
(29, 21469895, 'Christan Jay Espanol', 'Male', 'christan@uc.com', 'christan', 'christan1', 30),
(30, 21448733, 'Miles Campomanes', 'Male', 'miles@uc.com', 'miles', 'miles1', 30),
(31, 21512942, 'Aaron Gabe Salumbides', 'Male', 'gabe@uc.com', 'gabe', 'gabe1', 30),
(32, 21490743, 'Kim Sanchez', 'Female', 'kim@uc.com', 'kim', 'kim1', 30),
(33, 15395601, 'Miguel Angel Dacayana', 'Male', 'miguel@uc.com', 'miguel', 'miguel1', 30),
(34, 19887769, 'John Rhiel Agac-ac', 'Male', 'rhiel@uc.com', 'rhiel', 'rhiel1', 30),
(35, 21551122, 'John Bert Ramos', 'Male', 'bert@uc.com', 'bert', 'bert1', 30),
(36, 19916766, 'Darelle Bohol', 'Male', 'darelle@uc.com', 'darelle', 'darelle1', 30),
(37, 21547831, 'Fhel Deguzman', 'Male', 'fhel@uc.com', 'fhel', 'fhel1', 30),
(38, 21498092, 'Kristine Canete', 'Female', 'kristine@uc.com', 'kristine', 'kristine1', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

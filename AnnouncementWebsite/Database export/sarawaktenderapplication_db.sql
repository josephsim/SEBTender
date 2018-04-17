-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2018 at 02:41 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sarawaktenderapplication_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `administratorID` int(10) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `administratorName` varchar(50) NOT NULL,
  `administratorEmail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`administratorID`, `username`, `password`, `administratorName`, `administratorEmail`) VALUES
(1, 'admintest123', '$2y$10$4kZSMW0o7A.1BK.zvIp6.eqchwz0nxjSb1q6Rob70ns6Q.Lc5Q46W', 'Upshur', 'upshur@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `announcementID` int(7) NOT NULL,
  `announcementTitle` varchar(50) NOT NULL,
  `announcementContent` text NOT NULL,
  `publishedDate` datetime NOT NULL,
  `editedDate` datetime DEFAULT NULL,
  `editedBy` varchar(15) DEFAULT NULL,
  `postedBy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`announcementID`, `announcementTitle`, `announcementContent`, `publishedDate`, `editedDate`, `editedBy`, `postedBy`) VALUES
(3183046, 'asdasdasdasdasdasd', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2018-04-12 14:27:27', NULL, NULL, 'admintest123'),
(6566261, 'asdasdasdasda', 'asdasdasdasd', '2018-04-12 12:30:05', NULL, NULL, 'admintest123');

-- --------------------------------------------------------

--
-- Table structure for table `tender_bookmark`
--

CREATE TABLE `tender_bookmark` (
  `bookmarkID` int(7) NOT NULL,
  `username` varchar(15) NOT NULL,
  `tenderReferenceNumber` text NOT NULL,
  `isAvailable` tinyint(1) NOT NULL,
  `bookmarkDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`administratorID`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`announcementID`);

--
-- Indexes for table `tender_bookmark`
--
ALTER TABLE `tender_bookmark`
  ADD PRIMARY KEY (`bookmarkID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `administratorID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

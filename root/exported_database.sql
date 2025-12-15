-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2025 at 08:55 AM
-- Server version: 8.0.44
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `deptcode` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `deptlocation` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptcode`, `deptlocation`) VALUES
('0C', '209 HOSPITAL DR SUITE 304'),
('0J', '66 N 6TH ST '),
('0K', '410 CHILDS STREET '),
('0X', '2521 STOCKTON BLVD '),
('0Y', '3550 W WATERS AVE SUITE 108'),
('1I', '92 HIGHLAND ST '),
('1R', '2677 FOREST HILL BLVD STE 109 '),
('2B', '915 HIGHLAND BLVD STE 2170 '),
('2G', '648 INDEPENDENCE PKWY SUITE 300'),
('2M', '110 S 17TH ST '),
('2O', '4701 BRYANT IRVIN RD N STE LL215'),
('2T', '77 WARREN ST PHCY DEPT'),
('3A', 'PO BOX 327 '),
('3V', '900 WASHINGTON RD ATTN MCUD-RMD-UBO'),
('4M', '1 HURLEY PLZ '),
('5A', 'FORT BELVOIR COMMUNITY HOSPITAL 9300 DEWITT LOOP'),
('5J', '1200 W 22ND ST '),
('5L', '38135 MARKET SQ '),
('5M', 'PO BOX 206 '),
('5V', '3550 TERRACE ST SCAIFE HALL, ROOM A711'),
('6E', '1000 S BECKHAM AVE '),
('6V', 'PO BOX 826594 '),
('6W', 'PO BOX 845347 '),
('7J', 'PO BOX 67000 DEPARTMENT 272801'),
('8J', '1800 TOWN CENTER DR SUITE 315B'),
('8Q', '10996 FOUR SEASONS PL STE 100A '),
('8W', '411 AIRPORT RD '),
('9J', '2500 MARYLAND RD STE 400 '),
('9U', '321 MULBERRY ST SW MEDICAL STAFF SERVICES'),
('9Z', '2110 HIGDON FERRY RD STE D ');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empno` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `deptcode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `job` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `salary` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empno`, `deptcode`, `name`, `job`, `hiredate`, `salary`) VALUES
('1002', '0Y', 'Rancell Bricksey', 'Systems Administrator III', '2021-01-28', 814467.39),
('1037', '3A', 'Emmie Sheaber', 'Operator', '2020-03-27', 882060.32),
('1068', '9J', 'Ashleigh Dalley', 'Assistant Professor', '2017-12-20', 526209.67),
('1072', '2T', 'Henryetta Thibodeaux', 'Legal Assistant', '2021-01-25', 292564.12),
('1111', '1I', 'Jeri Stockdale', 'Research Nurse', '2021-01-31', 256018.72),
('1120', '4M', 'Fionnula Andries', 'Recruiter', '2018-01-31', 704893.06),
('1154', '0J', 'See Lehrer', 'Health Coach I', '2018-04-07', 415191.00),
('1157', '3V', 'Giffie Reijmers', 'Human Resources Manager', '2019-12-09', 892109.14),
('1158', '3V', 'Alison mandera', 'Human Resources Manager', '2021-12-09', 655555.55),
('1303', '4M', 'William Bohills', 'Senior Editor', '2018-05-12', 557810.17),
('1317', '6E', 'Elisha Casale', 'Teacher', '2017-12-30', 655988.82),
('1319', '5L', 'Nanete Screaton', 'Social Worker', '2017-06-19', 532245.69),
('1370', '9J', 'Dalila Symons', 'Legal Assistant', '2018-03-17', 701948.35),
('1406', '0K', 'Lenette Morando', 'Engineer IV', '2020-10-26', 649506.50),
('1414', '6W', 'Cobby Tarplee', 'Staff Accountant IV', '2020-10-11', 353883.28),
('1491', '8W', 'Innis Bollum', 'Technical Writer', '2019-04-26', 970947.55),
('1504', '0C', 'Hugues Girardin', 'Geologist II', '2019-03-22', 518588.66),
('1586', '7J', 'Goober Pitsall', 'Assistant Media Planner', '2020-09-16', 135033.85),
('1587', '9Z', 'Linea Charker', 'VP Marketing', '2019-02-25', 145929.66),
('1641', '5A', 'Mahalia Zanotti', 'Marketing Assistant', '2018-06-17', 126798.05),
('1657', '9U', 'Marris Currom', 'Information Systems Manager', '2019-11-07', 336639.07),
('1703', '3V', 'Lyndel Neale', 'Associate Professor', '2020-01-20', 716833.94),
('1709', '2G', 'Eolanda Fruchon', 'Account Coordinator', '2020-02-25', 893254.70),
('1720', '6V', 'Barb O\Logan', 'Research Associate', '2019-08-14', 518534.12),
('1747', '0X', 'Lizzy Perello', 'Quality Control Specialist', '2019-12-06', 291083.90),
('1751', '2M', 'Teresina Francklin', 'Sales Associate', '2020-02-12', 243282.22),
('1768', '8Q', 'Doralyn Canto', 'Automation Specialist II', '2019-01-30', 262341.37),
('1822', '1R', 'Mureil Dudbridge', 'Teacher', '2017-07-08', 993730.21),
('1855', '5J', 'Tommy Sleath', 'Geologist III', '2020-01-27', 839540.88),
('1919', '2O', 'Rea McKeevers', 'Financial Analyst', '2019-05-02', 193883.20),
('1926', '2B', 'Lauren McAuslene', 'Research Assistant II', '2019-11-08', 432659.73);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`deptcode`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empno`),
  ADD KEY `department_constraint` (`deptcode`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `department_constraint` FOREIGN KEY (`deptcode`) REFERENCES `department` (`deptcode`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

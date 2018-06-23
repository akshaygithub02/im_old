-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2018 at 07:36 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventorymgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `companyName` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobileNo` varchar(30) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `responsiblePerson` varchar(30) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `companyName`, `address`, `mobileNo`, `contact`, `email`, `responsiblePerson`, `createdOn`) VALUES
(5, 'M.R.S STEELS3', 'bhandup', '9867676767', '9886868688', 'akash@gmail.com', 'Akash', '2017-01-23 13:36:13'),
(6, 'Akash', 'b', '9898899999', '9899999999', 'ak@mail.com', 'Tanmay', '2018-02-26 05:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `directsale`
--

CREATE TABLE `directsale` (
  `id` int(11) NOT NULL,
  `purchaseId` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `code` varchar(300) NOT NULL,
  `weight` int(11) NOT NULL,
  `partyId` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `soldOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `excess`
--

CREATE TABLE `excess` (
  `id` int(11) NOT NULL,
  `fyId` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `lotNo` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `heatNo` varchar(500) NOT NULL,
  `party` varchar(500) NOT NULL,
  `make` varchar(500) NOT NULL,
  `code` varchar(5000) NOT NULL,
  `grade` varchar(500) NOT NULL,
  `shape` varchar(500) NOT NULL,
  `size` varchar(500) NOT NULL,
  `actualWeight` double NOT NULL,
  `remainingWeight` int(11) NOT NULL,
  `surface` varchar(50) NOT NULL,
  `flag` int(11) NOT NULL,
  `transporterId` text,
  `lorryNo` varchar(200) DEFAULT NULL,
  `freightFixed` text,
  `cnfFobId` int(11) DEFAULT NULL,
  `remarks` text,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `proId` varchar(5000) NOT NULL,
  `billNo` varchar(100) NOT NULL,
  `codewt` double NOT NULL,
  `codeDate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `financialyear`
--

CREATE TABLE `financialyear` (
  `id` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `fy` varchar(100) NOT NULL,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financialyear`
--

INSERT INTO `financialyear` (`id`, `startDate`, `endDate`, `fy`, `status`) VALUES
(67, '2017-04-01', '2018-03-31', '2017-2018', 0),
(68, '2018-04-01', '2019-03-31', '2018-2019', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobworkmanagement`
--

CREATE TABLE `jobworkmanagement` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `mobNo` varchar(15) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobworkmanagement`
--

INSERT INTO `jobworkmanagement` (`id`, `name`, `address`, `email`, `contact`, `mobNo`, `createdOn`) VALUES
(2, 'sandy', '', '', '', '', '2017-03-15 05:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin'),
('akash', 'akash');

-- --------------------------------------------------------

--
-- Table structure for table `lotno`
--

CREATE TABLE `lotno` (
  `id` int(11) NOT NULL,
  `lotNo` varchar(500) NOT NULL,
  `fyId` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lotno`
--

INSERT INTO `lotno` (`id`, `lotNo`, `fyId`, `companyId`, `createdOn`) VALUES
(3, '106655', 67, 5, '2017-04-27 05:23:21'),
(4, 'RMGR', 68, 5, '2017-05-05 07:17:46'),
(5, 'RMGR (14-15)', 70, 5, '2017-05-05 07:35:58'),
(6, 'GR', 70, 5, '2017-05-05 07:40:04'),
(7, '1-870', 70, 5, '2017-05-05 07:42:57'),
(8, '4.015', 70, 5, '2017-05-05 07:56:55'),
(9, '0.763', 70, 5, '2017-05-05 07:58:56'),
(10, 'square', 70, 5, '2017-05-05 08:00:24'),
(11, 'A', 70, 5, '2017-05-05 08:29:38'),
(12, '23.540', 70, 5, '2017-05-05 08:31:21'),
(13, 'BP', 70, 5, '2017-05-05 08:36:10'),
(14, '1-266', 70, 5, '2017-05-05 08:39:54'),
(16, '16tektics', 70, 5, '2017-05-05 08:58:13'),
(17, '4-950', 70, 5, '2017-05-05 08:59:54'),
(18, '5.850', 70, 5, '2017-05-05 09:01:00'),
(19, '2-200', 70, 5, '2017-05-05 09:06:39'),
(20, '2030', 70, 5, '2017-05-05 09:14:30'),
(21, 'C', 70, 5, '2017-05-05 09:20:02'),
(22, 'GR 13-14', 70, 5, '2017-05-05 09:25:07'),
(23, 'B', 70, 5, '2017-05-05 09:28:25'),
(24, '7-060', 70, 5, '2017-05-05 09:32:05'),
(25, '79.711', 70, 5, '2017-05-05 09:38:42'),
(26, '9-240', 70, 5, '2017-05-05 09:55:59'),
(27, 'GR (14-15)', 70, 5, '2017-05-05 09:57:31'),
(28, '0-515', 70, 5, '2017-05-05 12:09:17'),
(29, '560', 70, 5, '2017-05-05 12:23:38'),
(30, '1.372', 70, 5, '2017-05-05 12:26:16'),
(31, 'RMGR', 70, 5, '2017-05-05 12:32:34'),
(32, '129.280', 70, 5, '2017-05-05 12:45:08'),
(33, '16.150', 70, 5, '2017-05-05 13:48:37'),
(34, 'FG', 70, 5, '2017-05-06 07:38:16'),
(35, 'RAW MAT.', 70, 5, '2017-05-06 09:50:17'),
(36, '3-210', 70, 5, '2017-05-06 10:02:28'),
(37, 'B TUBE (1960)', 70, 5, '2017-05-06 12:29:42'),
(39, '2.425', 70, 5, '2017-05-06 12:51:57'),
(40, '5.230', 70, 5, '2017-05-09 10:12:22'),
(41, '0.107', 70, 5, '2017-05-09 10:16:06'),
(42, 'Angle/Channel', 70, 5, '2017-05-09 10:56:07'),
(43, 'GR 13-14', 71, 5, '2017-05-09 11:37:27'),
(44, '79.711', 71, 5, '2017-05-09 11:41:36'),
(45, '10-700', 71, 5, '2017-05-09 11:43:34'),
(46, '129.280', 71, 5, '2017-05-09 11:45:08'),
(47, '2.425', 71, 5, '2017-05-09 11:46:11'),
(48, 'DPDS', 71, 5, '2017-05-09 11:51:37'),
(49, 'Wire Rod', 71, 5, '2017-05-09 11:57:38'),
(50, '10.210', 71, 5, '2017-05-09 12:36:04'),
(51, '1.990', 71, 5, '2017-05-09 12:40:12'),
(52, '1.400', 71, 5, '2017-05-09 12:42:08'),
(53, '1-160', 71, 5, '2017-05-10 07:16:56'),
(54, '1-070', 71, 5, '2017-05-10 07:20:25'),
(55, '11-920', 71, 5, '2017-05-10 07:21:36'),
(56, '202', 67, 5, '2017-10-24 10:48:44'),
(57, '16-17', 67, 5, '2017-11-17 06:53:48'),
(58, 'A', 67, 5, '2017-11-17 07:17:29'),
(59, '3-620', 67, 5, '2017-11-17 07:31:12'),
(60, '0-480', 67, 5, '2017-11-17 07:40:29'),
(61, 'B', 67, 5, '2017-11-17 08:27:19'),
(62, '0-750', 67, 5, '2017-11-17 08:36:48'),
(63, 'IMPORT', 67, 5, '2017-11-17 09:03:56'),
(64, '1-238', 67, 5, '2017-11-17 09:06:58'),
(65, '3-490', 67, 5, '2017-11-17 09:25:16'),
(66, '0-720', 67, 5, '2017-11-17 09:32:24'),
(67, '0-324', 67, 5, '2017-11-17 09:44:30'),
(68, 'KETAN', 67, 5, '2017-11-17 09:53:01'),
(69, 'RMGR ( 16-17 )', 67, 5, '2017-11-17 09:56:50'),
(70, '24.940', 67, 5, '2017-11-17 10:09:20'),
(71, '27.390', 67, 5, '2017-11-17 10:12:31'),
(72, '00493', 67, 5, '2017-11-17 10:14:14'),
(73, 'B.TUBE', 67, 5, '2017-11-17 10:57:24'),
(74, '1.076', 67, 5, '2017-11-18 06:40:59'),
(75, 'GR(16-17)', 67, 5, '2017-11-18 06:56:40'),
(76, 'RM', 67, 5, '2017-11-21 08:17:31'),
(77, 'NA1', 67, 5, '2017-11-22 06:36:09'),
(78, 'RLLot', 67, 5, '2017-11-22 07:55:38'),
(79, 'FG', 67, 5, '2017-11-23 06:35:14'),
(80, 'GR/BP', 67, 5, '2017-11-23 08:39:37'),
(81, '493', 67, 5, '2017-11-29 07:30:34'),
(82, '12222', 0, 0, '2018-02-23 06:41:40'),
(83, 'AT-123', 0, 0, '2018-03-05 07:13:55'),
(84, 'dfdgdfg', 0, 0, '2018-03-05 07:28:11'),
(85, 'dfdgdfg', 0, 0, '2018-03-05 07:28:45'),
(86, 'dfdgdfg', 0, 0, '2018-03-05 07:29:28'),
(87, 'dfsdf', 0, 0, '2018-03-05 07:30:21'),
(88, 'dssdfdsf', 0, 0, '2018-03-05 07:32:52'),
(89, 'dssdfdsf', 0, 0, '2018-03-05 07:34:20'),
(90, 'newlot', 0, 0, '2018-03-05 07:34:34'),
(91, '1000', 0, 0, '2018-03-06 05:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `m_cnforfob`
--

CREATE TABLE `m_cnforfob` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_cnforfob`
--

INSERT INTO `m_cnforfob` (`id`, `name`) VALUES
(1, 'CNF'),
(2, 'FOB');

-- --------------------------------------------------------

--
-- Table structure for table `m_code`
--

CREATE TABLE `m_code` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_code`
--

INSERT INTO `m_code` (`id`, `name`) VALUES
(13, 'MKT-'),
(14, 'MFG-1'),
(15, 'hhhh'),
(17, 'IMP-'),
(18, 'NA'),
(19, 'AKS'),
(20, '');

-- --------------------------------------------------------

--
-- Table structure for table `m_condition`
--

CREATE TABLE `m_condition` (
  `id` int(11) NOT NULL,
  `condition_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_condition`
--

INSERT INTO `m_condition` (`id`, `condition_text`, `created_at`) VALUES
(2, 'tekticks', '2017-10-23 10:17:45'),
(4, 'test2', '2017-10-24 10:36:17'),
(5, 'WIRE RODS', '2017-11-27 09:49:46'),
(6, 'LONG BARS', '2017-11-27 09:50:09'),
(9, 'ggd', '2018-02-01 10:14:40'),
(10, 'akash', '2018-02-23 08:32:39'),
(11, '', '2018-02-26 05:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `m_grade`
--

CREATE TABLE `m_grade` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_grade`
--

INSERT INTO `m_grade` (`id`, `name`) VALUES
(20, 'eefffddd'),
(21, 'EN23'),
(22, 'EN-67'),
(23, 'nnnn'),
(25, 'Enjajajj'),
(26, 'EN-8M'),
(28, 'SAE 52100'),
(34, '50CRMOV4'),
(35, 'EN-9'),
(37, 'SAE 8620'),
(38, 'H-11'),
(39, 'ST52/EN14B'),
(40, 'SUP 9'),
(44, 'SAE 1541'),
(47, 'SAE-9254'),
(48, 'CK-45'),
(49, 'C-35'),
(50, 'SAE-8630'),
(52, 'EN 1A (NL)'),
(53, 'SAE 9254'),
(54, 'CK 45'),
(55, 'EN 8D'),
(56, 'C 35'),
(59, 'H 11'),
(61, 'SAE 1018'),
(62, 'SAE 9254'),
(63, '40CR4'),
(64, '34CR4'),
(66, 'SAE 8630'),
(68, 'MS'),
(70, 'EN 19'),
(71, 'EN 15'),
(74, 'EN 1A (NL)'),
(75, 'EN 31'),
(76, 'Akash'),
(77, 'tanmai'),
(78, 'tanmai'),
(79, 'kkk'),
(80, 'sdfsd'),
(81, 'ddd'),
(82, 'sdsdsd'),
(83, 'sdsdsd'),
(84, 'sdsdsd'),
(85, 'sdsdsd'),
(86, 'sdsdsd'),
(87, 'sdsdsd'),
(88, 'sdsdsd'),
(89, 'sdsdsd'),
(90, 'sdsdsd'),
(91, 'sdsdsd'),
(92, 'sdsdsd'),
(93, 'sdsdsd'),
(94, 'sdsdsd'),
(95, 'sdsdsd'),
(96, 'sdsdsd'),
(97, 'sdsdsd'),
(98, 'sdsdsd'),
(99, 'asdad'),
(100, 'sdjhdgf'),
(101, 'dsfdsf'),
(102, 'hjkjhjkhjkhjkhjk');

-- --------------------------------------------------------

--
-- Table structure for table `m_process`
--

CREATE TABLE `m_process` (
  `id` int(11) NOT NULL,
  `processName` varchar(500) NOT NULL,
  `abbrevation` varchar(500) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_process`
--

INSERT INTO `m_process` (`id`, `processName`, `abbrevation`, `createdOn`) VALUES
(1, 'Draw', 'CD', '2017-05-10 10:15:31'),
(2, 'Draw', 'DB', '2017-05-10 10:15:41'),
(3, 'GRINDING', 'GRD', '2017-11-17 08:04:49'),
(4, 'BELT POLISH', 'BP', '2017-11-17 08:05:40'),
(6, 'draw', 'dr', '2018-02-23 07:11:44'),
(7, 'Akash', 'Ak', '2018-02-23 07:12:08'),
(8, 'Akash', 'ak', '2018-02-23 12:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `m_shape`
--

CREATE TABLE `m_shape` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_shape`
--

INSERT INTO `m_shape` (`id`, `name`) VALUES
(10, 'square'),
(13, 'tube'),
(15, 'Billet'),
(16, '16tektics'),
(18, 'Angle'),
(20, 'Wire Rod'),
(21, 'Hexagon'),
(22, 'Round'),
(23, 'Channel'),
(24, 'RCS'),
(25, 'Profile'),
(26, 'DIA'),
(27, 'ROUND1'),
(28, 'HEXAGON1'),
(29, 'WIRE ROD'),
(30, 'SQUARE'),
(31, 'FLAT'),
(32, 'TUBE'),
(33, 'PROFILE'),
(34, 'Akash'),
(35, 'abcd');

-- --------------------------------------------------------

--
-- Table structure for table `m_size`
--

CREATE TABLE `m_size` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_size`
--

INSERT INTO `m_size` (`id`, `name`) VALUES
(1, 'abcd');

-- --------------------------------------------------------

--
-- Table structure for table `m_surface`
--

CREATE TABLE `m_surface` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_surface`
--

INSERT INTO `m_surface` (`id`, `name`) VALUES
(7, 'Bright'),
(8, 'white'),
(9, 'GROUND'),
(10, 'cube'),
(11, 'BLACK'),
(12, 'Akash');

-- --------------------------------------------------------

--
-- Table structure for table `m_weight`
--

CREATE TABLE `m_weight` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_weight`
--

INSERT INTO `m_weight` (`id`, `name`) VALUES
(4, 'Kg'),
(5, 'gm'),
(6, 'ton');

-- --------------------------------------------------------

--
-- Table structure for table `newpurchase`
--

CREATE TABLE `newpurchase` (
  `purchaseId` int(11) NOT NULL,
  `fyId` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `lotNo` int(11) NOT NULL,
  `date` date NOT NULL,
  `billNo` varchar(500) NOT NULL,
  `party` varchar(500) NOT NULL,
  `make` varchar(500) NOT NULL,
  `code` varchar(5000) NOT NULL,
  `grade` int(11) NOT NULL,
  `shape` int(11) NOT NULL,
  `size` varchar(500) NOT NULL,
  `purchaseWeight` double NOT NULL,
  `actualWeight` double NOT NULL,
  `remainingWeight` double NOT NULL,
  `surface` int(11) NOT NULL,
  `flag` int(11) NOT NULL,
  `warehouseId` varchar(200) NOT NULL,
  `location` text,
  `transporterId` int(11) NOT NULL,
  `lorryNo` varchar(200) DEFAULT NULL,
  `freightFixed` text,
  `cnfFobId` varchar(200) DEFAULT NULL,
  `remarks` text,
  `heatNo` text NOT NULL,
  `short` double DEFAULT NULL,
  `excess` double DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dellock` int(11) NOT NULL,
  `dellockCarryforword` int(11) NOT NULL DEFAULT '0',
  `carryforword` int(11) NOT NULL,
  `conditn` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newpurchase`
--

INSERT INTO `newpurchase` (`purchaseId`, `fyId`, `companyId`, `lotNo`, `date`, `billNo`, `party`, `make`, `code`, `grade`, `shape`, `size`, `purchaseWeight`, `actualWeight`, `remainingWeight`, `surface`, `flag`, `warehouseId`, `location`, `transporterId`, `lorryNo`, `freightFixed`, `cnfFobId`, `remarks`, `heatNo`, `short`, `excess`, `createdOn`, `dellock`, `dellockCarryforword`, `carryforword`, `conditn`) VALUES
(443, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-1173', 0, 0, '12', 203, 203, 203, 0, 0, '1', NULL, 0, '', '', '', 'B. M. IND.', '', 0, 0, '2017-11-17 08:55:49', 0, 0, 0, 'BARS'),
(444, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-092', 0, 0, '13', 719, 719, 719, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-17 08:57:26', 0, 0, 0, 'BARS'),
(448, 67, 5, 3, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-1266', 0, 0, '9', 1370, 1370, 1370, 0, 0, '', NULL, 0, '', '', '', 'SUBRAO', '', 0, 0, '2017-11-17 09:20:03', 0, 0, 0, 'BARS'),
(455, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-956', 0, 0, '9', 172, 172, 172, 0, 0, '', NULL, 0, '', '', '', 'NIKHIL', '', 0, 0, '2017-11-17 09:38:06', 0, 0, 0, 'BARS'),
(456, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-956A', 0, 0, '9', 195, 195, 195, 0, 0, '', NULL, 0, '', '', '', 'NIKHIL', '', 0, 0, '2017-11-17 09:40:47', 0, 0, 0, 'BARS'),
(457, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-308', 0, 0, '11', 118, 118, 118, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-17 09:43:49', 0, 0, 0, 'BARS'),
(458, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-1199', 0, 0, '12', 325, 325, 325, 0, 0, '', NULL, 0, '', '', '', 'ISPAT IND.', '', 0, 0, '2017-11-17 09:45:33', 0, 0, 0, 'BARS'),
(459, 67, 5, 3, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-1210', 0, 0, '27', 650, 650, 650, 0, 0, '', NULL, 0, '', '', '', 'DHANESRI', '', 0, 0, '2017-11-17 09:47:01', 0, 0, 0, 'BARS'),
(460, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-311', 0, 0, '30', 329, 329, 329, 0, 0, '', NULL, 0, '', '', '', 'TAXTELO', '', 0, 0, '2017-11-17 09:48:44', 0, 0, 0, 'BARS'),
(461, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-529', 0, 0, '50', 657, 657, 657, 0, 0, '', NULL, 0, '', '', '', 'TAXTELO', '', 0, 0, '2017-11-17 09:50:38', 0, 0, 0, 'BARS'),
(462, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'IMP-204', 0, 0, '9', 782, 782, 782, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-17 09:52:17', 0, 0, 0, 'BARS'),
(463, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'NA.', 0, 0, '22', 900, 900, 900, 0, 0, '', NULL, 0, '', '', '', 'KETAN', '', 0, 0, '2017-11-17 09:54:14', 0, 0, 0, 'BARS'),
(464, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-1149', 0, 0, '22', 96, 96, 96, 0, 0, '', NULL, 0, '', '', '', 'MOHAN IND.', '', 0, 0, '2017-11-17 09:55:52', 0, 0, 0, 'BARS'),
(465, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-406.', 16, 0, '15', 610, 610, 610, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-17 10:01:15', 0, 0, 0, 'BARS'),
(466, 67, 5, 25, '2017-11-01', '-', 'OPENING BALANCE', '-', 'IMP--', 0, 0, '11', 1000, 1000, 1000, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-17 10:11:58', 0, 0, 0, 'BARS'),
(470, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-156', 50, 0, '50', 1598, 1598, 1598, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-17 10:29:07', 0, 0, 0, 'LONG BARS'),
(473, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-420', 0, 0, '46', 366, 366, 366, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-17 10:33:35', 0, 0, 0, 'LONG BARS'),
(474, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-144', 0, 0, '39', 1223, 1223, 1223, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-17 10:34:53', 0, 0, 0, 'LONG BARS'),
(479, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-131', 0, 0, '41', 2930, 2930, 2930, 0, 0, '', NULL, 0, '', '', '', '21.9\"', '', 0, 0, '2017-11-17 10:48:33', 0, 0, 0, 'LONG BARS'),
(480, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-141', 0, 0, '34', 1430, 1430, 1430, 0, 0, '', NULL, 0, '', '', '', '10.3\"', '', 0, 0, '2017-11-17 10:51:27', 0, 0, 0, 'LONG BARS'),
(481, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-135', 0, 0, '35', 972, 972, 972, 0, 0, '', NULL, 0, '', '', '', '7.8\"', '', 0, 0, '2017-11-17 10:53:51', 0, 0, 0, 'LONG BARS'),
(482, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-142', 0, 0, '40', 1560, 1560, 1560, 0, 0, '', NULL, 0, '', '', '', '14.11\"', '', 0, 0, '2017-11-17 10:55:09', 0, 0, 0, 'LONG BARS'),
(483, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-143', 0, 0, '45', 2904, 2904, 2904, 0, 0, '', NULL, 0, '', '', '', '19.5\"', '', 0, 0, '2017-11-17 10:56:26', 0, 0, 0, 'LONG BARS'),
(484, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'NANA', 0, 0, '0', 1655, 1655, 1655, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-17 11:05:16', 0, 0, 0, 'BARS'),
(485, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-313', 0, 0, '87', 99, 99, 99, 0, 0, '', NULL, 0, '', '', '', 'OPEANING BALANCE ( 86 * 76 )', '', 0, 0, '2017-11-18 06:04:07', 0, 0, 0, 'BARS'),
(486, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-310', 0, 0, '120', 336, 336, 336, 0, 0, '', NULL, 0, '', '', '', 'OPEANING BALANCE ( 120 * 3 )', '', 0, 0, '2017-11-18 06:08:32', 0, 0, 0, 'BARS'),
(487, 67, 5, 1, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-1200', 0, 0, '30', 166, 166, 166, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-18 06:43:36', 0, 0, 0, 'BARS'),
(488, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-101', 0, 0, '11', 47, 47, 47, 0, 0, '', NULL, 0, '', '', '', 'OPEANING BALANCE', '', 0, 0, '2017-11-18 06:48:14', 0, 0, 0, 'BARS'),
(489, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-1125H', 0, 0, '18', 31, 31, 31, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE ', '', 0, 0, '2017-11-18 06:57:56', 0, 0, 0, 'BARS'),
(490, 67, 5, 0, '2017-11-04', '1803', 'JENIL STEEL PVT LTD', 'JSW', 'MFG-1390A', 0, 0, '14', 1124, 1124, 0, 0, 1, '', NULL, 0, 'GJ.3.X.6867', 'FREE DLY', 'FOB', '', '', 0, 0, '2017-11-21 08:21:07', 1, 0, 0, 'W/R'),
(492, 67, 5, 0, '2017-11-04', '1803', 'JENIL STEEL PVT LTD', 'JSW', 'MFG-1391A', 0, 0, '20', 1416, 1416, 0, 0, 1, '', NULL, 0, 'GJ.3X.6867', 'FREE DLY', 'FOB', '', '', 0, 0, '2017-11-21 08:32:02', 1, 0, 0, 'W/R'),
(493, 67, 5, 0, '2017-11-04', '1803', 'JENIL STEEL PVT LTD', 'JSW', 'MFG-1390B', 0, 0, '14', 1143, 1143, 0, 0, 1, '', NULL, 0, 'GJ.3X.6867', 'FREE DLY', 'FOB', '', '', 0, 0, '2017-11-21 08:36:28', 1, 0, 0, 'W/R'),
(494, 67, 5, 0, '2017-11-04', '1803', 'JENIL STEEL PVT LTD', 'JSW', 'MFG-1390C', 0, 0, '14', 1146, 1146, 0, 0, 1, '', NULL, 0, 'GJ.3X.6867', 'FREE DLY', 'FOB', '', '', 0, 0, '2017-11-21 08:38:18', 1, 0, 0, 'W/R'),
(495, 67, 5, 0, '2017-11-04', '1803', 'JENIL STEEL PVT LTD', 'JSW', 'MFG-1391B', 0, 0, '20', 1470, 1470, 0, 0, 1, '', NULL, 0, 'GJ.3X.6867', 'FREE DLY', 'FOB', '', '', 0, 0, '2017-11-21 08:42:09', 1, 0, 0, 'W/R'),
(496, 67, 5, 0, '2017-11-05', '846', 'INDUSTRIAL METAL CORPORATION', '-', 'MFG-1392A', 0, 0, '10', 922, 915, 915, 0, 0, '', NULL, 0, 'MH.12.AQ.5595', '1300/-', 'CNF', '', '', 7, 0, '2017-11-21 09:05:06', 0, 0, 0, 'LONG BARS'),
(497, 67, 5, 0, '2017-11-05', '846', 'INDUSTRIAL METAL CORPORATION', '-', 'MFG-1392B', 0, 0, '10', 964, 958, 958, 0, 0, '', NULL, 0, 'MH.12.AQ.5595', '1300/-', 'CNF', '', '', 6, 0, '2017-11-21 09:09:22', 0, 0, 0, 'LONG BARS'),
(498, 67, 5, 0, '2017-11-05', '846', 'INDUSTRIAL METAL CORPORATION', '-', 'MFG-1392C', 0, 0, '10', 944, 938, 938, 0, 0, '', NULL, 0, 'MH.12.AQ.5595', '1300/-', 'CNF', '', '', 6, 0, '2017-11-21 09:17:37', 0, 0, 0, 'LONG BARS'),
(499, 67, 5, 0, '2017-11-05', '846', 'INDUSTRIAL METAL CORPORATION', '-', 'MFG-1393', 0, 0, '23', 653, 658, 658, 0, 0, '', NULL, 0, 'MH.12.AQ.5595', '1300/-', 'CNF', '', '', 0, 5, '2017-11-21 09:23:51', 0, 0, 0, 'LONG BARS'),
(501, 67, 5, 0, '2017-11-12', 'JW-31', 'RAJAT WIRES PVT. LTD.', '-', 'MKT-1394A-G', 0, 0, '20', 10070, 10110, 10110, 0, 0, '', NULL, 0, 'MH.04.BG.2104', '1500/-', 'CNF', '', '', 0, 40, '2017-11-21 09:38:54', 0, 0, 0, 'LONG BARS'),
(502, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1294', 0, 0, '18', 394, 394, 394, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:37:18', 0, 0, 0, 'WIRE RODS'),
(503, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1292', 0, 0, '13', 1687, 1687, 1687, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:38:32', 0, 0, 0, 'BARS'),
(504, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1312A', 0, 0, '21', 1428, 1428, 1428, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:40:00', 0, 0, 0, 'BARS'),
(505, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1310', 0, 0, '10', 1388, 1388, 1388, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:40:57', 0, 0, 0, 'BARS'),
(506, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1293B', 0, 0, '12', 648, 648, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:41:51', 1, 0, 0, 'BARS'),
(507, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1317', 0, 0, '25', 1085, 1085, 1085, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:43:46', 0, 0, 0, 'BARS'),
(508, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1324B', 16, 0, '30', 1279, 1279, 1279, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:44:38', 0, 0, 0, 'BARS'),
(509, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1324C', 16, 0, '30', 1218, 1218, 1218, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:45:44', 0, 0, 0, 'BARS'),
(510, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1329', 0, 0, '18', 2068, 2068, 2068, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:47:04', 0, 0, 0, 'BARS'),
(511, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1331', 0, 0, '20', 2467, 2467, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:48:12', 2, 0, 0, 'BARS'),
(512, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-696', 22, 0, '5.5', 27, 27, 27, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:50:03', 0, 0, 0, 'BARS'),
(513, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-696A', 0, 0, '6', 788, 788, 788, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:51:11', 0, 0, 0, 'BARS'),
(514, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-224A', 0, 0, '8', 2080, 2080, 2080, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:52:02', 0, 0, 0, 'BARS'),
(515, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1130', 0, 0, '24', 30, 30, 30, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:52:46', 0, 0, 0, 'BARS'),
(516, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1252A', 0, 0, '32', 1675, 1675, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:53:58', 1, 0, 0, 'BARS'),
(517, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1342B', 0, 0, '12', 1485, 1485, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:58:23', 1, 0, 0, 'BARS'),
(518, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1342C', 0, 0, '12', 521, 521, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:58:59', 1, 0, 0, 'BARS'),
(519, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1342D', 0, 0, '12', 1457, 1457, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 06:59:33', 1, 0, 0, 'BARS'),
(520, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1342H', 0, 0, '12', 524, 524, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:02:47', 1, 0, 0, 'BARS'),
(521, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1344A', 0, 0, '9', 1498, 1498, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:03:33', 1, 0, 0, 'BARS'),
(522, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1344B', 0, 0, '9', 486, 486, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:04:23', 1, 0, 0, 'BARS'),
(523, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1344G', 0, 0, '9', 1427, 1427, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:05:03', 1, 0, 0, 'BARS'),
(524, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1348A', 0, 0, '25', 2464, 2464, 1109, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:05:35', 1, 0, 0, 'BARS'),
(525, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1353A', 0, 0, '28', 2995, 2995, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:06:12', 2, 0, 0, 'BARS'),
(526, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1353B', 0, 0, '28', 372, 372, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:06:57', 1, 0, 0, 'BARS'),
(527, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1351A', 0, 0, '20', 1146, 1146, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:07:30', 1, 0, 0, 'BARS'),
(528, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1352', 0, 0, '28', 928, 928, 928, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:08:09', 0, 0, 0, 'BARS'),
(529, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1235', 40, 0, '31', 304, 304, 304, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:09:33', 0, 0, 0, 'BARS'),
(530, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1358C', 0, 0, '14', 1469, 1469, 1469, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:10:10', 0, 0, 0, 'BARS'),
(531, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1361A', 40, 0, '30', 2284, 2284, 1174, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:10:47', 1, 0, 0, 'BARS'),
(532, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1361B', 40, 0, '30', 2109, 2109, 2109, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:11:20', 0, 0, 0, 'BARS'),
(533, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1361C', 40, 0, '30', 1311, 1311, 1311, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:11:57', 0, 0, 0, 'BARS'),
(534, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1359A', 0, 0, '42', 698, 698, 698, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:12:32', 0, 0, 0, 'BARS'),
(535, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1359B', 0, 0, '42', 2960, 2960, 2960, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 07:13:07', 0, 0, 0, 'BARS'),
(536, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1372A', 16, 0, '17', 1159, 1166, 1166, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 07:17:53', 0, 0, 0, 'BARS'),
(537, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1372B', 16, 0, '17', 1512, 1520, 1520, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 8, '2017-11-22 07:18:38', 0, 0, 0, 'BARS'),
(538, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1372C', 16, 0, '17', 1404, 1411, 1411, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 07:19:15', 0, 0, 0, 'BARS'),
(539, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1372D', 16, 0, '17', 1507, 1514, 1514, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 07:19:53', 0, 0, 0, 'BARS'),
(540, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1372E', 16, 0, '17', 1488, 1495, 1495, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 07:20:58', 0, 0, 0, 'BARS'),
(541, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1346A', 0, 0, '17', 1213, 1210, 1210, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 3, 0, '2017-11-22 07:38:45', 0, 0, 0, 'BARS'),
(542, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1346B', 0, 0, '17', 1206, 1204, 1204, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 2, 0, '2017-11-22 07:39:24', 0, 0, 0, 'BARS'),
(543, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1346C', 0, 0, '17', 1224, 1222, 1222, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 2, 0, '2017-11-22 07:40:06', 0, 0, 0, 'BARS'),
(544, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1346D', 0, 0, '17', 1168, 1166, 1166, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 2, 0, '2017-11-22 07:40:40', 0, 0, 0, 'BARS'),
(545, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1346E', 0, 0, '17', 1249, 1247, 1247, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 2, 0, '2017-11-22 07:41:17', 0, 0, 0, 'BARS'),
(546, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1375A', 0, 0, '10', 1271, 1276, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 5, '2017-11-22 07:41:57', 1, 0, 0, 'BARS'),
(547, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1375B', 0, 0, '10', 1115, 1120, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 5, '2017-11-22 07:42:54', 1, 0, 0, 'BARS'),
(548, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1375C', 0, 0, '10', 1230, 1235, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 5, '2017-11-22 07:43:35', 1, 0, 0, 'BARS'),
(549, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1375D', 0, 0, '10', 1235, 1240, 1240, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 5, '2017-11-22 07:44:09', 0, 0, 0, 'BARS'),
(550, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1375E', 0, 0, '10', 1109, 1114, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 5, '2017-11-22 07:44:43', 1, 0, 0, 'BARS'),
(551, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1378A', 0, 0, '15', 1439, 1443, 1443, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 4, '2017-11-22 08:24:30', 0, 0, 0, 'BARS'),
(552, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1378B', 0, 0, '15', 1477, 1481, 1481, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 4, '2017-11-22 08:27:37', 0, 0, 0, 'BARS'),
(553, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1378C', 0, 0, '15', 1299, 1303, 1303, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 4, '2017-11-22 08:37:21', 0, 0, 0, 'BARS'),
(554, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1378D', 0, 0, '15', 1429, 1433, 1433, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 4, '2017-11-22 08:38:15', 0, 0, 0, 'BARS'),
(555, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1376A', 0, 0, '16', 1484, 1488, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 4, '2017-11-22 08:39:31', 1, 0, 0, 'BARS'),
(556, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1376B', 0, 0, '16', 1474, 1478, 1478, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 4, '2017-11-22 08:50:50', 0, 0, 0, 'BARS'),
(557, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1376C', 0, 0, '16', 1482, 1486, 1486, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 4, '2017-11-22 08:52:20', 0, 0, 0, 'BARS'),
(558, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1376D', 0, 0, '16', 1471, 1475, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 4, '2017-11-22 08:53:10', 1, 0, 0, 'BARS'),
(559, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1379A', 0, 0, '21', 1485, 1482, 1482, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 3, 0, '2017-11-22 08:54:33', 0, 0, 0, 'BARS'),
(560, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1379B', 0, 0, '21', 1307, 1303, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 4, 0, '2017-11-22 08:55:40', 1, 0, 0, 'BARS'),
(561, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1379C', 0, 0, '21', 1316, 1312, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 4, 0, '2017-11-22 08:57:24', 1, 0, 0, 'BARS'),
(562, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1379D', 0, 0, '21', 1482, 1478, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 4, 0, '2017-11-22 08:58:01', 1, 0, 0, 'BARS'),
(563, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1381A', 0, 0, '26', 1496, 1478, 1478, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 18, 0, '2017-11-22 08:59:06', 0, 0, 0, 'BARS'),
(564, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1381B', 0, 0, '26', 1443, 1425, 1425, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 18, 0, '2017-11-22 09:01:03', 0, 0, 0, 'BARS'),
(565, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1381C', 0, 0, '26', 1496, 1478, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANE', '', 18, 0, '2017-11-22 09:02:35', 1, 0, 0, 'BARS'),
(566, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1381D', 0, 0, '26', 1495, 1477, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 18, 0, '2017-11-22 09:03:43', 1, 0, 0, 'BARS'),
(567, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1380A', 0, 0, '21', 1465, 1476, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 11, '2017-11-22 09:04:33', 1, 0, 0, 'BARS'),
(568, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1380B', 0, 0, '21', 1452, 1463, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 11, '2017-11-22 09:05:24', 1, 0, 0, 'BARS'),
(569, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1380C', 0, 0, '21', 1451, 1461, 1461, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 10, '2017-11-22 09:06:01', 0, 0, 0, 'BARS'),
(570, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1380D', 0, 0, '21', 1466, 1476, 1476, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 10, '2017-11-22 09:06:42', 0, 0, 0, 'BARS'),
(571, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1380E', 0, 0, '21', 1463, 1473, 1473, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 10, '2017-11-22 09:07:31', 0, 0, 0, 'BARS'),
(572, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1380F', 0, 0, '21', 1468, 1478, 1478, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 10, '2017-11-22 09:08:07', 0, 0, 0, 'BARS'),
(573, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1380G', 0, 0, '21', 1475, 1485, 1485, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 10, '2017-11-22 09:08:49', 0, 0, 0, 'BARS'),
(574, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1382A', 0, 0, '25', 1477, 1484, 1484, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 09:09:31', 0, 0, 0, 'BARS'),
(575, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1382B', 0, 0, '25', 1484, 1491, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 09:10:18', 1, 0, 0, 'BARS'),
(576, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1382C', 0, 0, '25', 1469, 1476, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 09:10:56', 1, 0, 0, 'BARS'),
(577, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1382D', 0, 0, '25', 1472, 1479, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 09:11:39', 1, 0, 0, 'BARS'),
(578, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1382E', 0, 0, '25', 1449, 1456, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 09:12:47', 1, 0, 0, 'BARS'),
(579, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1382F', 0, 0, '25', 1471, 1478, 1478, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 09:13:35', 0, 0, 0, 'BARS'),
(580, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1382G', 0, 0, '25', 1471, 1478, 1478, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 09:14:19', 0, 0, 0, 'BARS'),
(581, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1382H', 0, 0, '25', 1465, 1471, 1471, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:14:52', 0, 0, 0, 'BARS'),
(582, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1382I', 0, 0, '25', 1475, 1481, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:15:46', 1, 0, 0, 'BARS'),
(583, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1382J', 0, 0, '25', 1467, 1473, 1473, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:17:13', 0, 0, 0, 'BARS'),
(584, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1382K', 0, 0, '25', 1474, 1480, 1480, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:18:34', 0, 0, 0, 'BARS'),
(585, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1382L', 0, 0, '25', 1416, 1422, 1422, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:19:08', 0, 0, 0, 'BARS'),
(586, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1382M', 0, 0, '25', 1477, 1483, 1483, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:19:46', 0, 0, 0, 'BARS'),
(587, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1382N', 0, 0, '25', 1423, 1429, 1429, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:20:19', 0, 0, 0, 'BARS'),
(588, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1383A', 0, 0, '26', 1300, 1295, 1295, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 5, 0, '2017-11-22 09:20:56', 0, 0, 0, 'BARS'),
(589, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1383B', 0, 0, '26', 1159, 1154, 1154, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 5, 0, '2017-11-22 09:21:45', 0, 0, 0, 'BARS'),
(590, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1383C', 0, 0, '26', 1217, 1212, 1212, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 5, 0, '2017-11-22 09:28:06', 0, 0, 0, 'BARS'),
(591, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1383D', 0, 0, '26', 1234, 1230, 1230, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 4, 0, '2017-11-22 09:28:57', 0, 0, 0, 'BARS'),
(592, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1384A', 0, 0, '25', 1472, 1470, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 2, 0, '2017-11-22 09:29:52', 1, 0, 0, 'BARS'),
(593, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1384B', 0, 0, '25', 1320, 1321, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 1, '2017-11-22 09:30:31', 1, 0, 0, 'BARS'),
(594, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1384C', 0, 0, '25', 1464, 1465, 1465, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 1, '2017-11-22 09:31:41', 0, 0, 0, 'BARS'),
(595, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1384D', 0, 0, '25', 1474, 1475, 1475, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 1, '2017-11-22 09:32:17', 0, 0, 0, 'BARS'),
(596, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1385A', 0, 0, '14', 1493, 1493, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENIGN BALANCE', '', 0, 0, '2017-11-22 09:33:32', 1, 0, 0, 'BARS'),
(597, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1385B', 0, 0, '14', 1489, 1489, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-22 09:34:11', 1, 0, 0, 'BARS'),
(598, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1385C', 0, 0, '14', 1502, 1503, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 1, '2017-11-22 09:34:52', 1, 0, 0, 'BARS'),
(599, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1385D', 0, 0, '14', 1490, 1491, 831, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 1, '2017-11-22 09:35:28', 1, 0, 0, 'BARS'),
(600, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1385E', 0, 0, '14', 1496, 1497, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 1, '2017-11-22 09:36:01', 1, 0, 0, 'BARS'),
(601, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1386A', 0, 0, '12', 1478, 1493, 37, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 15, '2017-11-22 09:36:36', 2, 0, 0, 'BARS'),
(602, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1386B', 0, 0, '12', 1465, 1480, 1480, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 15, '2017-11-22 09:37:12', 0, 0, 0, 'BARS'),
(603, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1386C', 0, 0, '12', 1458, 1473, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 15, '2017-11-22 09:37:48', 1, 0, 0, 'BARS'),
(604, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1386D', 0, 0, '12', 1476, 1491, 1491, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 15, '2017-11-22 09:38:21', 0, 0, 0, 'BARS'),
(605, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1386E', 0, 0, '12', 1433, 1448, 1448, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 15, '2017-11-22 09:38:51', 0, 0, 0, 'BARS'),
(606, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1387A', 0, 0, '13', 1145, 1152, 1152, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 09:39:28', 0, 0, 0, 'WIRE RODS'),
(607, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1387B', 0, 0, '13', 1521, 1528, 1528, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 09:40:04', 0, 0, 0, 'WIRE RODS'),
(608, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1387C', 0, 0, '13', 1518, 1525, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 09:40:57', 1, 0, 0, 'BARS'),
(609, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1387D', 0, 0, '13', 1515, 1522, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 7, '2017-11-22 09:41:50', 1, 0, 0, 'BARS'),
(610, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1387E', 0, 0, '13', 1269, 1275, 1275, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:42:33', 0, 0, 0, 'WIRE RODS'),
(611, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1387F', 0, 0, '13', 1313, 1319, 1319, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:43:09', 0, 0, 0, 'WIRE RODS'),
(612, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1387G', 0, 0, '13', 1520, 1526, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:43:46', 1, 0, 0, 'BARS'),
(613, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1387H', 0, 0, '13', 1516, 1522, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:44:22', 1, 0, 0, 'BARS'),
(614, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1387I', 0, 0, '13', 1469, 1475, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:44:55', 1, 0, 0, 'BARS'),
(615, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1387J', 0, 0, '13', 1462, 1468, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:45:27', 1, 0, 0, 'BARS'),
(616, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1387K', 0, 0, '13', 1511, 1517, 1517, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:46:05', 0, 0, 0, 'WIRE RODS'),
(617, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1387L', 0, 0, '13', 1521, 1527, 1527, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:46:40', 0, 0, 0, 'WIRE RODS'),
(618, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1387M', 0, 0, '13', 1514, 1520, 1520, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:47:21', 0, 0, 0, 'WIRE RODS'),
(619, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1387N', 0, 0, '13', 1516, 1522, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 6, '2017-11-22 09:47:55', 1, 0, 0, 'BARS'),
(620, 67, 5, 0, '2017-11-02', '1821', 'JENIL STEEL PVT LTD', 'JSW', 'MFG-JB1A', 0, 0, '17', 4220, 4220, 4220, 0, 0, '', NULL, 0, 'TN.52.H.9096', 'FREE DELIVERY', 'FOB', '', '', 0, 0, '2017-11-22 09:53:13', 0, 0, 0, 'W/R'),
(621, 67, 5, 0, '2017-11-02', '1821', 'JENIL STEEL PVT LTD', 'JSW', 'MFG-JB1B', 0, 0, '12', 7430, 7430, 7430, 0, 0, '', NULL, 0, 'TN.52.H.9096', 'FREE DELIVERY', 'FOB', '', '', 0, 0, '2017-11-22 09:56:49', 0, 0, 0, 'W/R'),
(622, 67, 5, 0, '2017-11-02', '1821', 'JENIL STEEL PVT LTD', 'JSW', 'MFG-JB1C', 0, 0, '11', 5960, 5960, 5960, 0, 0, '', NULL, 0, 'TN.52.H.9096', 'FREE DELIVERY', 'FOB', '', '', 0, 0, '2017-11-22 09:59:08', 0, 0, 0, 'W/R'),
(623, 67, 5, 0, '2017-11-02', '1821', 'JENIL STEEL PVT LTD', 'JSW', 'MFG-JB1D', 16, 0, '17', 7890, 7890, 7890, 0, 0, '', NULL, 0, 'TN.52.H.9096', 'FREE DELIVERY', 'FOB', '', '', 0, 0, '2017-11-22 10:00:04', 0, 0, 0, 'W/R'),
(624, 67, 5, 0, '2017-11-04', '1803', 'JENIL STEEL PVT LTD', 'JSW', 'MFG-JB2A', 0, 0, '14', 2507, 2507, 2507, 0, 0, '', NULL, 0, 'GJ.3X.6867', 'FREE DELIVERY', 'FOB', '', '', 0, 0, '2017-11-22 10:09:26', 0, 0, 0, 'W/R'),
(626, 67, 5, 0, '2017-11-04', '1803', 'JENIL STEEL PVT LTD', 'JSW', 'MFG-JB2C', 0, 0, '12', 2690, 2690, 2690, 0, 0, '', NULL, 0, 'GJ.3X.6867', 'FREE DELIVERY', 'FOB', '', '', 0, 0, '2017-11-22 10:11:57', 0, 0, 0, 'W/R'),
(627, 67, 5, 0, '2017-11-04', '1803', 'JENIL STEEL PVT LTD', 'JSW', 'MFG-JB2D', 0, 0, '14', 6170, 6170, 6170, 0, 0, '', NULL, 0, 'GJ.3X.6867', 'FREE DELIVERY', 'FOB', '', '', 0, 0, '2017-11-22 10:12:53', 0, 0, 0, 'W/R'),
(628, 67, 5, 0, '2017-11-05', '0892', 'SRI ENTERPRISES', '-', 'MFG-JB3', 0, 0, '75', 1010, 1010, 1010, 0, 0, '', NULL, 0, 'MH.04.EC.4426', '1.50/- ', 'CNF', '', '', 0, 0, '2017-11-22 10:16:30', 0, 0, 0, 'LONG BARS'),
(629, 67, 5, 0, '2017-11-05', '1049', 'CHAMPION DEALERS PVT LTD', '-', 'MFG-JB4', 0, 0, '95', 2080, 2080, 2080, 0, 0, '', NULL, 0, 'MH.04.EC.4426', '1.50/-', 'CNF', '', '', 0, 0, '2017-11-22 10:21:28', 0, 0, 0, 'LONG BARS'),
(630, 67, 5, 0, '2017-11-08', 'M 1099', 'SUPREME STEEL DISTRIBUTORS', '-', 'MFG-JB5', 0, 0, '23', 558, 558, 558, 0, 0, '', NULL, 0, '', '', '', '', '', 0, 0, '2017-11-22 10:24:31', 0, 0, 0, 'LONG BARS'),
(631, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1932', 0, 0, '19', 244, 244, 244, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 06:36:53', 0, 0, 0, 'BARS'),
(632, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1077', 0, 0, '27', 152, 152, 152, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 06:37:31', 0, 0, 0, 'BARS'),
(633, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-844', 0, 0, '14', 193, 193, 193, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 06:39:38', 0, 0, 0, 'BARS'),
(634, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1058A', 0, 0, '17', 1352, 1352, 1352, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 06:48:07', 0, 0, 0, 'BARS'),
(635, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1004', 0, 0, '23', 2277, 2277, 2277, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 06:48:56', 0, 0, 0, 'BARS'),
(636, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1005', 0, 0, '19', 447, 447, 447, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 06:49:47', 0, 0, 0, 'BARS'),
(637, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1156B', 34, 0, '31', 1126, 1126, 1126, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 07:06:24', 0, 0, 0, 'BARS'),
(638, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1032', 0, 0, '20', 58, 58, 58, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE (20 * 15)', '', 0, 0, '2017-11-23 07:10:12', 0, 0, 0, 'BARS'),
(639, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1162A', 0, 0, '32', 268, 268, 268, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 07:11:02', 0, 0, 0, 'BARS'),
(640, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1228A', 0, 0, '15', 183, 183, 183, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE (15.10 * 14.30)', '', 0, 0, '2017-11-23 07:12:15', 0, 0, 0, 'BARS'),
(641, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1264A', 0, 0, '13', 67, 67, 67, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 07:12:56', 0, 0, 0, 'BARS'),
(642, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1288', 0, 0, '6', 705, 705, 705, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE (6.420)', '', 0, 0, '2017-11-23 07:13:58', 0, 0, 0, 'BARS'),
(643, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1324A', 16, 0, '27', 60, 60, 60, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 07:20:45', 0, 0, 0, 'BARS'),
(644, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1329A', 0, 0, '7', 17, 17, 17, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 07:21:40', 0, 0, 0, 'BARS'),
(645, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1342E', 0, 0, '10', 459, 459, 459, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 07:22:22', 0, 0, 0, 'BARS'),
(646, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1316', 0, 0, '18', 55, 55, 55, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 07:23:28', 0, 0, 0, 'BARS'),
(647, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1348B', 0, 0, '25', 1159, 1159, 1159, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 07:24:18', 0, 0, 0, 'BARS'),
(648, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1367B', 0, 0, '20', 2482, 2482, 2482, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 07:29:07', 0, 0, 0, 'BARS'),
(651, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1367A', 0, 0, '20', 2376, 2376, 2376, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 07:35:08', 0, 0, 0, 'BARS'),
(652, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1371B', 0, 0, '13', 1318, 1318, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 07:35:52', 1, 0, 0, 'BARS'),
(653, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1371A', 0, 0, '13', 1352, 1352, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 07:36:35', 1, 0, 0, 'BARS'),
(654, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1295', 0, 0, '13', 1425, 1425, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 07:37:39', 1, 0, 0, 'BARS'),
(655, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1355B', 0, 0, '19', 11, 11, 11, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 07:38:26', 0, 0, 0, 'BARS'),
(656, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1355E', 0, 0, '23', 1425, 1425, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 08:34:13', 1, 0, 0, 'BARS'),
(657, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1355G', 0, 0, '23', 1201, 1201, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 08:35:17', 1, 0, 0, 'BARS'),
(658, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1377A', 0, 0, '15', 1330, 1330, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 08:36:24', 1, 0, 0, 'BARS'),
(659, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1388B', 0, 0, '15', 1436, 1436, 1436, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 08:37:06', 0, 0, 0, 'BARS'),
(660, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-1172', 0, 0, '25', 374, 374, 374, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 08:41:12', 0, 0, 0, 'BARS'),
(661, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'IMP-366', 0, 0, '9', 554, 554, 554, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 08:41:56', 0, 0, 0, 'BARS'),
(662, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-1001', 0, 0, '11', 1366, 1366, 1366, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 08:45:23', 0, 0, 0, 'BARS'),
(663, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1034', 0, 0, '55', 44, 44, 44, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 08:46:24', 0, 0, 0, 'BARS'),
(664, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-113', 0, 0, '8', 149, 149, 149, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 08:47:18', 0, 0, 0, 'BARS'),
(665, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-284', 0, 0, '6', 235, 235, 235, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 08:48:12', 0, 0, 0, 'BARS'),
(666, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-869', 0, 0, '22', 105, 105, 105, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 08:49:01', 0, 0, 0, 'BARS'),
(667, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1066A', 0, 0, '12', 48, 48, 48, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 08:51:47', 0, 0, 0, 'BARS'),
(668, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1348A/DB', 0, 0, '25', 1196, 1196, 1196, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 09:03:48', 0, 0, 0, 'BARS'),
(669, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1355B/DB', 0, 0, '23', 1689, 1689, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 09:08:05', 1, 0, 0, 'BARS'),
(670, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1348A/DB1', 0, 0, '19', 69, 69, 69, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 09:09:04', 0, 0, 0, 'BARS'),
(671, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-386/DB', 0, 0, '25', 405, 405, 405, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 09:10:32', 0, 0, 0, 'BARS'),
(672, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-386/DB1', 0, 0, '25', 853, 853, 853, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 09:11:21', 0, 0, 0, 'BARS'),
(673, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-1001/DB', 0, 0, '11', 848, 848, 848, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 09:12:03', 0, 0, 0, 'BARS'),
(674, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-092/DB', 0, 0, '13', 254, 254, 254, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 09:12:47', 0, 0, 0, 'BARS'),
(675, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1066A/DB', 0, 0, '12', 48, 48, 48, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 09:13:38', 0, 0, 0, 'BARS'),
(676, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1348B/DB', 0, 0, '25', 1023, 1023, 1023, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 09:24:06', 0, 0, 0, 'BARS'),
(677, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1377B', 0, 0, '15', 1436, 1436, 0, 0, 1, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-23 11:08:07', 1, 0, 0, 'BARS'),
(678, 67, 5, 0, '2017-11-20', '3137', 'BHAGWATI STEEL CORPORATION', '-', 'MFG-1394', 0, 0, '28', 2960, 2951, 2951, 0, 0, '', NULL, 0, 'MH.06.7198', '1500/-', 'CNF', '', '', 9, 0, '2017-11-27 07:31:36', 0, 0, 0, 'LONG BARS'),
(679, 67, 5, 0, '2017-11-20', '3137', 'BHAGWATI STEEL CORPORATION', '-', 'MFG-1395', 0, 0, '32', 2860, 2852, 2852, 0, 0, '', NULL, 0, 'MH.06.7198', '1500/-', 'CNF', '', '', 8, 0, '2017-11-27 07:32:59', 0, 0, 0, 'LONG BARS'),
(680, 67, 5, 0, '2017-11-20', '3137', 'BHAGWATI STEEL CORPORATION', '-', 'MFG-1396', 0, 0, '28', 2900, 2876, 2876, 0, 0, '', NULL, 0, 'MH.06.7198', '1500/-', 'CNF', '', '', 24, 0, '2017-11-27 07:34:27', 0, 0, 0, 'LONG BARS'),
(681, 67, 5, 0, '2017-11-20', '-', 'CHAMPION STEEL', '-', 'MFG-1397', 0, 0, '32', 1650, 1650, 1650, 0, 0, '', NULL, 0, 'MH.06.7198', '1500/- FIXED', 'CNF', '', '', 0, 0, '2017-11-27 08:20:52', 0, 0, 0, 'LONG BARS'),
(682, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-564', 0, 0, '33', 1250, 1250, 1250, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-29 05:45:10', 0, 0, 0, 'BARS'),
(683, 67, 5, 0, '2017-11-01', '1803', 'JENIL STEEL PVT LTD', '-', 'MFG-JB2B', 0, 0, '20', 2964, 2964, 2964, 0, 0, '', NULL, 0, 'GJ.3X.6867', 'FREE DELIVERY', 'FOB', '', '', 0, 0, '2017-11-29 05:54:27', 0, 0, 0, 'LONG BARS'),
(684, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-345', 0, 0, '24', 837, 837, 837, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-29 05:57:44', 0, 0, 0, 'BARS'),
(685, 67, 5, 1, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-1365', 0, 0, '13', 1238, 1238, 1238, 0, 0, '', NULL, 0, '', '', '', 'FREEFILD', '', 0, 0, '2017-11-29 06:08:58', 0, 0, 0, 'BARS'),
(686, 67, 5, 3, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-1208', 0, 0, '22', 800, 800, 800, 0, 0, '', NULL, 0, '', '', '', 'DHANESRI', '', 0, 0, '2017-11-29 06:25:46', 0, 0, 0, 'BARS'),
(687, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1121B', 0, 0, '51', 1740, 1740, 1740, 0, 0, '', NULL, 0, '', '', '', 'MM BROTHER', '', 0, 0, '2017-11-29 06:35:50', 0, 0, 0, 'BARS'),
(688, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-438', 0, 0, '40', 595, 595, 595, 0, 0, '', NULL, 0, '', '', '', 'BHANSHLI', '', 0, 0, '2017-11-29 07:03:46', 0, 0, 0, 'BARS'),
(689, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1123A', 0, 0, '51', 720, 720, 720, 0, 0, '', NULL, 0, '', '', '', 'BHANSHLI', '', 0, 0, '2017-11-29 07:19:33', 0, 0, 0, 'BARS'),
(690, 67, 5, 493, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1121A', 0, 0, '51', 493, 493, 493, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-29 07:33:42', 0, 0, 0, 'BARS'),
(691, 67, 5, 493, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1285A', 0, 0, '10', 67, 67, 67, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-29 08:36:48', 0, 0, 0, 'BARS'),
(692, 67, 5, 493, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MFG-1285 A', 0, 0, '10', 97, 97, 97, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-29 08:38:58', 0, 0, 0, 'BARS'),
(693, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-136', 0, 0, '38', 3100, 3100, 3100, 0, 0, '', NULL, 0, '', '', '', '18 FEET', '', 0, 0, '2017-11-29 08:49:43', 0, 0, 0, 'BARS'),
(694, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-137', 0, 0, '38', 1971, 1971, 1971, 0, 0, '', NULL, 0, '', '', '', '18 FEET', '', 0, 0, '2017-11-29 08:54:45', 0, 0, 0, 'BARS'),
(695, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-491', 0, 0, '47', 2420, 2420, 2420, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-29 09:00:13', 0, 0, 0, 'BARS'),
(696, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-492', 0, 0, '305', 170, 170, 170, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE ( 305 * 175 )', '', 0, 0, '2017-11-29 09:05:48', 0, 0, 0, 'LONG BARS'),
(697, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-139', 0, 0, '46', 2334, 2334, 2334, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-29 09:17:26', 0, 0, 0, 'BARS'),
(698, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'H-140', 0, 0, '46', 984, 984, 984, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-29 09:23:31', 0, 0, 0, 'BARS'),
(699, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'MKT-1171', 0, 0, '5', 870, 870, 870, 0, 0, '', NULL, 0, '', '', '', 'PIONEER', '', 0, 0, '2017-11-29 09:46:54', 0, 0, 0, 'BARS'),
(700, 67, 5, 0, '2017-11-01', '-', 'OPENING BALANCE', '-', 'IMP-002', 0, 0, '11', 694, 694, 694, 0, 0, '', NULL, 0, '', '', '', 'OPENING BALANCE', '', 0, 0, '2017-11-30 06:41:21', 0, 0, 0, 'BARS'),
(701, 67, 5, 0, '2017-11-23', 'JW-32', 'RAJAT WIRES PVT. LTD.', '-', 'MFG-1388', 0, 0, '20', 9110, 9085, 9085, 0, 0, '', NULL, 0, 'MH.04.CU.4541', '1200/- FIXED', 'CNF', '', '', 25, 0, '2017-12-20 05:12:24', 0, 0, 0, 'BARS'),
(702, 67, 5, 0, '2017-11-29', '2229', 'JENIL STEEL PVT LTD', '-', 'MFG-1398A', 0, 0, '16', 1510, 1512, 1512, 0, 0, '', NULL, 0, 'MH.04.EY.6626', '1800/- ', 'CNF', '', '', 0, 2, '2017-12-20 05:33:51', 0, 0, 0, 'LONG BARS'),
(703, 67, 5, 0, '2017-11-29', '2230', 'JENIL STEEL PVT LTD', '-', 'MFG-1398B', 0, 0, '16', 2100, 2083, 2083, 0, 0, '', NULL, 0, 'MH.04.EY.6626', '1800/-', 'CNF', '', '', 17, 0, '2017-12-20 05:35:32', 0, 0, 0, 'LONG BARS'),
(704, 67, 5, 0, '2017-12-02', '1002', 'INDUSTRIAL METAL CORPORATION', '-', 'MKT-1401A', 0, 0, '10', 950, 944, 944, 0, 0, '', NULL, 0, 'MH.04.EY.6626', '800/-', 'CNF', '', '', 6, 0, '2017-12-20 06:08:39', 0, 0, 0, 'LONG BARS'),
(705, 67, 5, 0, '2017-12-02', '1002', 'INDUSTRIAL METAL CORPORATION', '-', 'MKT-1401B', 0, 0, '10', 975, 965, 965, 0, 0, '', NULL, 0, 'MH.04.EY.6626', '800/-', 'CNF', '', '', 10, 0, '2017-12-20 06:09:40', 0, 0, 0, 'LONG BARS'),
(706, 67, 5, 0, '2017-12-02', '1002', 'INDUSTRIAL METAL CORPORATION', '-', 'MKT-1401C', 0, 0, '10', 957, 947, 947, 0, 0, '', NULL, 0, 'MH.04.EY.6626', '800/-', 'CNF', '', '', 10, 0, '2017-12-20 06:10:47', 0, 0, 0, 'LONG BARS'),
(707, 67, 5, 0, '2017-12-02', '1002', 'INDUSTRIAL METAL CORPORATION', '-', 'MKT-1401D', 0, 0, '10', 915, 900, 900, 0, 0, '', NULL, 0, 'MH.04.AY.6626', '800/-', 'CNF', '', '', 15, 0, '2017-12-20 06:11:54', 0, 0, 0, 'LONG BARS'),
(708, 67, 5, 0, '2017-12-02', '1002', 'INDUSTRIAL METAL CORPORATION', '-', 'MKT-1404E', 0, 0, '10', 963, 953, 953, 0, 0, '', NULL, 0, 'MH.04.EY.6626', '800/-', 'CNF', '', '', 10, 0, '2017-12-20 06:12:56', 0, 0, 0, 'LONG BARS'),
(709, 67, 5, 3, '2018-03-05', '12345', 'akash', '', 'MKT-', 25, 10, '1', 100, 300, 0, 7, 0, '2', 'thane', 10, '25', '34554', 'CNF', NULL, '100', 122, 123, '2018-03-05 10:29:59', 1, 0, 1, 'ghthfhth');

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `id` int(11) NOT NULL,
  `p_name` text NOT NULL,
  `contactPerson` varchar(100) DEFAULT NULL,
  `p_location` text NOT NULL,
  `contactNo` varchar(20) NOT NULL,
  `mobileNo` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `compId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`id`, `p_name`, `contactPerson`, `p_location`, `contactNo`, `mobileNo`, `email`, `createdOn`, `compId`) VALUES
(4, 'RISHI ISPAT PVT LTD', 'SHUBHAM', '', '', '', '', '2017-05-05 07:34:57', 5),
(6, 'SAIRAM BRIGHT INDUSTRIES PVT LTD', '', '', '', '', '', '2017-05-09 11:53:06', 5),
(7, 'JENIL STEEL PVT LTD', '', '', '', '', '', '2017-05-09 11:58:17', 5),
(8, 'ZENITH RNTERPRISES', '', '', '', '', '', '2017-05-09 12:16:33', 5),
(9, 'BHUSHAN POWER & STEEL LIMITED', '', '', '', '', '', '2017-05-09 12:20:21', 5),
(10, 'STEEL RESOURCES', '', '', '', '', '', '2017-05-09 12:31:33', 5),
(11, 'D. I. STEEL PVT. LTD.', '', '', '', '', '', '2017-05-09 12:37:09', 5),
(12, 'MEHTECH ENGINEERING', '', '', '', '', '', '2017-05-09 12:40:42', 5),
(13, 'RONAK STEEL', '', '', '', '', '', '2017-05-09 12:42:45', 5),
(14, 'BHAGWATI STEEL CORPORATION', '', '', '', '', '', '2017-05-09 12:45:18', 5),
(15, 'RASESH INDUSTRIES', '', '', '', '', '', '2017-05-10 07:09:00', 5),
(16, 'GUJARAT STEEL', '', '', '', '', '', '2017-05-10 07:17:28', 5),
(17, 'GAUTAM STEEL SYNDICATE', '', '', '', '', '', '2017-05-10 07:24:53', 5),
(18, 'SRI ENTERPRISES', '', '', '', '', '', '2017-05-10 07:43:43', 5),
(20, 'SMP MARKETING', '', '', '', '', '', '2017-05-10 08:10:34', 5),
(21, 'SRI SAI STEEL', '', '', '', '', '', '2017-05-10 09:30:01', 5),
(22, 'DHAMM STEEL', '', '', '', '', '', '2017-05-10 09:33:11', 5),
(23, 'GERDAU STEEL', '', '', '', '', '', '2017-05-10 10:00:48', 5),
(24, 'PRAMOD TRADING', '', '', '', '', '', '2017-05-12 12:24:32', 5),
(25, 'MIT INTERNATIONAL', '', '', '', '', '', '2017-05-12 12:26:35', 5),
(26, 'SUPREME STEEL DISTRIBUTORS', '', '', '', '', '', '2017-05-12 12:32:50', 5),
(27, 'INTERNATIONAL AUTOMATIC', '', '', '', '', '', '2017-05-12 12:36:05', 5),
(28, 'VINAY ENGINEERING CO.', '', '', '', '', '', '2017-05-13 08:00:13', 5),
(29, 'SYSTEMATIC INDUSTRIAL', '', '', '', '', '', '2017-05-13 08:04:35', 5),
(30, 'YASH EXPORT', '', '', '', '', '', '2017-05-13 08:07:06', 5),
(33, 'SONI STEEL  & APPLIANCES PVT. LTD.', '', '', '', '', '', '2017-05-13 08:25:32', 5),
(34, 'JOULETECH', '', '', '', '', '', '2017-05-13 08:29:33', 5),
(35, 'SSIPL CHENNAI', '', '', '', '', '', '2017-05-13 08:32:46', 5),
(36, 'AUTOMOTIVE INDUSTRIES', '', '', '', '', '', '2017-05-13 08:34:37', 5),
(37, 'ADORN ENGINEERING', '', '', '', '', '', '2017-05-13 08:36:09', 5),
(38, 'REKHA BRIGHT', '', '', '', '', '', '2017-05-13 08:41:37', 5),
(39, 'YASHIKA STEEL', '', '', '', '', '', '2017-05-13 08:42:09', 5),
(40, 'JAY LAXMI ENTERPRISES', '', '', '', '', '', '2017-05-13 08:45:41', 5),
(41, 'JAY ENTERPRISES', '', '', '', '', '', '2017-05-13 08:51:49', 5),
(43, 'INYPCO MACMOLD INDUSTRIES', '', '', '', '', '', '2017-05-13 09:02:05', 5),
(44, 'YADAV ENGINEERING', '', '', '', '', '', '2017-05-13 09:07:40', 5),
(45, 'SANJHA ENGINEERING WORKS', '', '', '', '', '', '2017-05-13 09:14:00', 5),
(46, 'PIONEER INDUSTRIES', '', '', '', '', '', '2017-05-13 09:17:15', 5),
(47, 'PRAGEET ENGINEERING', '', '', '', '', '', '2017-05-13 09:25:12', 5),
(48, 'SWASTIK FASTNERS', '', '', '', '', '', '2017-05-13 09:26:23', 5),
(50, 'PRACHI STEEL', '', '', '', '', '', '2017-05-13 09:36:13', 5),
(51, 'NAMINATH ENGINEERING', '', '', '', '', '', '2017-05-13 09:37:59', 5),
(52, 'RMP BEARING', '', '', '', '', '', '2017-05-13 09:41:15', 5),
(53, 'MICRONIX ENTERPRISES', '', '', '', '', '', '2017-05-13 09:44:05', 5),
(54, 'TALCO INDIA', '', '', '', '', '', '2017-05-13 09:46:40', 5),
(55, 'M.K. ENTERPRISES', '', '', '', '', '', '2017-05-13 09:51:46', 5),
(56, 'TECHNO MORE', '', '', '', '', '', '2017-05-13 09:53:34', 5),
(57, 'SUBRAO ENTERPRISES', '', '', '', '', '', '2017-05-13 09:55:05', 5),
(58, 'PRECISION STEEL', '', '', '', '', '', '2017-05-13 10:20:26', 5),
(59, 'A TO Z STEEL SLLOYS', '', '', '', '', '', '2017-05-13 11:34:48', 5),
(60, 'VANITA ENGINEERING', '', '', '', '', '', '2017-05-13 11:46:03', 5),
(61, 'GENERAL MACHINE TOOL', '', '', '', '', '', '2017-05-13 11:47:27', 5),
(62, 'H.KANTILAL', '', '', '', '', '', '2017-05-13 11:48:56', 5),
(63, 'SENTHIL ENGINEERING WORK', '', '', '', '', '', '2017-05-13 11:58:11', 5),
(64, 'MACKAN TECHNOLOGIES', '', '', '', '', '', '2017-05-15 07:01:39', 5),
(65, 'ASHA ENTERPRISES', '', '', '', '', '', '2017-05-15 07:12:15', 5),
(66, 'KAMAL PRODUCTS', '', '', '', '', '', '2017-05-15 07:18:35', 5),
(67, 'SAI STEEL HEATREATERS', '', '', '', '', '', '2017-05-15 07:21:53', 5),
(68, 'SAMEER AUTO PVT. LTD.', '', '', '', '', '', '2017-05-15 07:23:39', 5),
(69, 'ART FEB', '', '', '', '', '', '2017-05-15 07:31:27', 5),
(70, 'GANESH AUTO PARTS PVT. LTD.', '', '', '', '', '', '2017-05-15 07:35:38', 5),
(71, 'RITESH ENGINEERING', '', '', '', '', '', '2017-05-15 07:37:31', 5),
(72, 'NOZZEL AUTO ASSOCIATION PVT. LTD.', '', '', '', '', '', '2017-05-15 08:23:49', 5),
(73, 'KCI BEARING (I) PVT. LTD.', '', '', '', '', '', '2017-05-15 08:26:50', 5),
(74, 'SPG AUTO COMPONENT', '', '', '', '', '', '2017-05-15 08:45:19', 5),
(75, 'PRAVIN AUTO ENGINEERING PVT LTD', '', '', '', '', '', '2017-05-15 08:56:04', 5),
(76, 'OPENING BALANCE', '', '', '', '', '', '2017-11-17 06:51:14', 5),
(77, 'INDUSTRIAL METAL CORPORATION', '', '', '', '', '', '2017-11-21 08:45:56', 5),
(78, 'RAJAT WIRES PVT. LTD.', '', '', '', '', '', '2017-11-21 09:25:46', 5),
(79, 'CHAMPION DEALERS PVT LTD', '', '', '', '', '', '2017-11-22 10:20:17', 5),
(80, 'HUSIRAZ ENGINEERING PVT LTD', '', '', '', '', '', '2017-11-22 12:30:54', 5),
(81, 'MAHALAXMI BRIGHT BARS PVT LTD', '', '', '', '', '', '2017-11-22 12:31:34', 5),
(82, 'STARWAYS PRECISION PVT LTD', '', '', '', '', '', '2017-11-22 12:33:26', 5),
(83, 'JAI BHAWANI MATA INDUSTRIES', '', '', '', '', '', '2017-11-22 12:33:51', 5),
(84, 'ARAVALLI GEARS PVT LTD', '', '', '', '', '', '2017-11-22 12:34:12', 5),
(85, 'RACHANA INDUSTRIES', '', '', '', '', '', '2017-11-22 12:34:56', 5),
(86, 'NIKHIL INDUSTRIES', '', '', '', '', '', '2017-11-22 12:35:08', 5),
(87, 'STERLING ENTERPRISES', '', '', '', '', '', '2017-11-22 12:35:26', 5),
(88, 'PRECISION INDUSTRIAL CORPORATION', '', '', '', '', '', '2017-11-22 12:35:56', 5),
(89, 'SERVICE SYNDICATE', '', '', '', '', '', '2017-11-22 12:36:14', 5),
(90, 'V R PRECISION', '', '', '', '', '', '2017-11-22 12:36:26', 5),
(91, 'J K TOOLS & FASTENERS', '', '', '', '', '', '2017-11-22 12:36:45', 5),
(92, 'V S INDUSTRIES', '', '', '', '', '', '2017-11-22 12:37:24', 5),
(93, 'JOSHIRAO ENGINEERING', '', '', '', '', '', '2017-11-22 12:37:39', 5),
(94, 'PRIMUS BRIGHT STEEL', '', '', '', '', '', '2017-11-24 06:55:18', 5),
(95, 'SELWEL INC', '', '', '', '', '', '2017-11-24 07:03:20', 5),
(96, 'PREMIER BRASS INDUSTRIES', '', '', '', '', '', '2017-11-24 07:11:18', 5),
(97, 'CHAMPION STEEL', '', '', '', '', '', '2017-11-27 07:35:59', 5),
(98, 'akash', '', 'hasd', '9898988889', '9889889988', 'ak@mail.com', '2018-02-23 12:31:25', 0),
(99, 'akash', 'ak', 'ak', '9898989899', '9898989898', 'a@mail.com', '2018-03-05 08:17:57', 0),
(100, 'tanmai', 'adsd', 'sdfds', '9889898989', '9898989898', 'aa@mail.com', '2018-03-05 08:18:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `processtype`
--

CREATE TABLE `processtype` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `processtype`
--

INSERT INTO `processtype` (`id`, `type`) VALUES
(1, 'Purchase'),
(2, 'Production'),
(3, 'Job Work'),
(4, 'NewProcess'),
(5, 'tk');

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `previousCode` text NOT NULL,
  `carryforword` int(11) NOT NULL DEFAULT '0',
  `processMachine` text,
  `newCode` text NOT NULL,
  `lotNo` text NOT NULL,
  `make` text NOT NULL,
  `grade` text NOT NULL,
  `shape` text NOT NULL,
  `size` text NOT NULL,
  `rmsize` text NOT NULL,
  `heatNo` text NOT NULL,
  `actualWeight` double NOT NULL,
  `balanceWt` double NOT NULL,
  `openingbalwt` double NOT NULL,
  `inweight` double NOT NULL,
  `surface` text NOT NULL,
  `flag` int(11) NOT NULL,
  `fyId` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `recoverableLoss` double DEFAULT NULL,
  `nrLoss` double DEFAULT NULL,
  `percentgeLoss` double DEFAULT NULL,
  `jobWorkerId` int(11) DEFAULT NULL,
  `remark` text NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `checkCode` text NOT NULL,
  `dellock` int(11) NOT NULL DEFAULT '0',
  `dellockCarryforword` int(11) NOT NULL DEFAULT '0',
  `pur_fk_id` int(11) NOT NULL,
  `billNo` varchar(100) NOT NULL,
  `conditn` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `production`
--

INSERT INTO `production` (`id`, `date`, `previousCode`, `carryforword`, `processMachine`, `newCode`, `lotNo`, `make`, `grade`, `shape`, `size`, `rmsize`, `heatNo`, `actualWeight`, `balanceWt`, `openingbalwt`, `inweight`, `surface`, `flag`, `fyId`, `companyId`, `recoverableLoss`, `nrLoss`, `percentgeLoss`, `jobWorkerId`, `remark`, `createdOn`, `checkCode`, `dellock`, `dellockCarryforword`, `pur_fk_id`, `billNo`, `conditn`) VALUES
(494, '2017-08-03', 'MKT-414', 0, '-', 'MKT-414', '109', 'india', 'Bright1', 'Square', '40', '', 'M45', 2000, 2000, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-10-23 05:10:05', '', 0, 0, 0, 'BL', NULL),
(495, '2017-08-15', 'MKT-1111', 0, '-', 'MKT-1111', '109', 'india', 'Bright1', 'Square', '25', '', '111', 1111, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-10-23 07:29:53', '', 2, 0, 0, 'B111', NULL),
(512, '2017-11-01', 'MKT-406', 0, '-', 'MKT-406', '16-17', '-', 'Bright1', 'ROUND1', '15', '', '', 610, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, 'OPENING STOCK', '2017-11-17 06:59:06', '', 1, 0, 430, 'OPP', 'BARS'),
(513, '2017-11-01', 'MKT-512', 0, '-', 'MKT-512', 'A', '-', 'Bright1', 'ROUND1', '4.00', '', '', 226, 226, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 07:23:19', '', 0, 0, 431, '-', 'BARS'),
(515, '2017-11-01', 'MKT-1366', 0, '-', 'MKT-1366', '0-480', '-', 'Bright1', 'ROUND1', '10.05', '', '', 483, 483, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'PIONEER', '2017-11-17 07:41:42', '', 0, 0, 433, '-', 'BARS'),
(516, '2017-11-01', 'NA-', 0, '-', 'NA-', 'B', '-', 'Bright1', 'ROUND1', '16.00', '', '', 138, 0, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 08:34:13', '', 1, 0, 434, '-', 'BARS'),
(517, '2017-11-01', 'MKT-756', 0, '-', 'MKT-756', 'A', '-', 'Bright1', 'ROUND1', '33.30', '', '', 2105, 2105, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'YOGESH', '2017-11-17 08:36:18', '', 0, 0, 435, '-', 'BARS'),
(518, '2017-11-01', 'MKT-1350', 0, '-', 'MKT-1350', '0-750', '-', 'Bright1', 'HEXAGON', '36.00', '', '', 750, 750, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'DHANESRI', '2017-11-17 08:38:12', '', 0, 0, 436, '-', 'BARS'),
(520, '2017-11-01', 'MKT-421', 0, '-', 'MKT-421', 'A', '-', 'Bright1', 'ROUND1', '15.00', '', '', 1323, 1323, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BLANCE', '2017-11-17 08:43:37', '', 0, 0, 438, '-', 'BARS'),
(521, '2017-11-01', 'H-386', 0, '-', 'H-386', 'A', '-', 'Bright1', 'ROUND1', '25.40', '', '', 105, 105, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 08:44:56', '', 0, 0, 439, '-', 'BARS'),
(522, '2017-11-01', 'H-089', 0, '-', 'H-089', 'A', '-', 'Bright1', 'ROUND1', '10.00', '', '', 207, 207, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 08:46:59', '', 0, 0, 440, '-', 'BARS'),
(523, '2017-11-01', 'H-090', 0, '-', 'H-090', 'A', '-', 'Bright1', 'ROUND1', '10.00', '', '', 1665, 1665, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 08:49:44', '', 0, 0, 441, '-', 'BARS'),
(524, '2017-11-01', 'H-091', 0, '-', 'H-091', 'A', '-', 'Bright1', 'ROUND1', '12.00', '', '', 521, 521, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 08:51:06', '', 0, 0, 442, '-', 'BARS'),
(525, '2017-11-01', 'MKT-1173', 0, '-', 'MKT-1173', 'B', '-', 'Bright1', 'ROUND1', '12.30', '', '', 203, 203, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'B. M. IND.', '2017-11-17 08:55:50', '', 0, 0, 443, '-', 'BARS'),
(526, '2017-11-01', 'H-092', 0, '-', 'H-092', 'A', '-', 'Bright1', 'ROUND1', '13.00', '', '', 719, 719, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 08:57:26', '', 0, 0, 444, '-', 'BARS'),
(530, '2017-11-01', 'MKT-1266', 0, '-', 'MKT-1266', '3-620', '-', 'Bright1', 'ROUND1', '9.00', '', '', 1370, 1370, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'SUBRAO', '2017-11-17 09:20:03', '', 0, 0, 448, '-', 'BARS'),
(537, '2017-11-01', 'MKT-956', 0, '-', 'MKT-956', 'B', '-', 'Bright1', 'ROUND1', '9.00', '', '', 172, 172, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'NIKHIL', '2017-11-17 09:38:06', '', 0, 0, 455, '-', 'BARS'),
(538, '2017-11-01', 'MKT-956A', 0, '-', 'MKT-956A', 'B', '-', 'Bright1', 'ROUND1', '9.00', '', '', 195, 195, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'NIKHIL', '2017-11-17 09:40:47', '', 0, 0, 456, '-', 'BARS'),
(539, '2017-11-01', 'MFG-308', 0, '-', 'MFG-308', 'A', '-', 'Bright1', 'ROUND1', '11.00', '', '', 118, 118, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 09:43:49', '', 0, 0, 457, '-', 'BARS'),
(540, '2017-11-01', 'MKT-1199', 0, '-', 'MKT-1199', '0-324', '-', 'Bright1', 'ROUND1', '12.30', '', '', 325, 325, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'ISPAT IND.', '2017-11-17 09:45:33', '', 0, 0, 458, '-', 'BARS'),
(541, '2017-11-01', 'MKT-1210', 0, '-', 'MKT-1210', '3-490', '-', 'Bright1', 'ROUND1', '27.00', '', '', 650, 650, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'DHANESRI', '2017-11-17 09:47:01', '', 0, 0, 459, '-', 'BARS'),
(542, '2017-11-01', 'MKT-311', 0, '-', 'MKT-311', 'A', '-', 'Bright1', 'SQUARE', '30.00', '', '', 329, 329, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'TAXTELO', '2017-11-17 09:48:44', '', 0, 0, 460, '-', 'BARS'),
(543, '2017-11-01', 'MKT-529', 0, '-', 'MKT-529', 'A', '-', 'Bright1', 'HEXAGON', '50.00', '', '', 657, 657, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'TAXTELO', '2017-11-17 09:50:38', '', 0, 0, 461, '-', 'BARS'),
(544, '2017-11-01', 'IMP-204', 0, '-', 'IMP-204', 'B', '-', 'Bright1', 'ROUND1', '9.00', '', '', 782, 782, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 09:52:17', '', 0, 0, 462, '-', 'BARS'),
(545, '2017-11-01', 'NA.', 0, '-', 'NA.', 'KETAN', '-', 'Bright1', 'ROUND1', '21.60', '', '', 900, 900, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'KETAN', '2017-11-17 09:54:14', '', 0, 0, 463, '-', 'BARS'),
(546, '2017-11-01', 'MKT-1149', 0, '-', 'MKT-1149', 'B', '-', 'Bright1', 'ROUND1', '22.00', '', '', 96, 96, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'MOHAN IND.', '2017-11-17 09:55:52', '', 0, 0, 464, '-', 'BARS'),
(547, '2017-11-01', 'MKT-406.', 0, '-', 'MKT-406.', 'RMGR ( 16-17 )', '-', 'Bright1', 'ROUND1', '15.00', '', '', 610, 610, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 10:01:15', '', 0, 0, 465, '-', 'BARS'),
(548, '2017-11-01', 'IMP--', 0, '-', 'IMP--', '24.940', '-', 'Bright1', 'ROUND1', '11.30', '', '', 1000, 1000, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 10:11:59', '', 0, 0, 466, '-', 'BARS'),
(552, '2017-11-01', 'H-156', 0, '-', 'H-156', 'A', '-', '50CRMOV4', 'ROUND1', '50.00', '', '', 1598, 1598, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 10:29:07', '', 0, 0, 470, '-', 'LONG BARS'),
(555, '2017-11-01', 'MKT-420', 0, '-', 'MKT-420', 'A', '-', 'EN 15', 'ROUND1', '46.00', '', '', 366, 366, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 10:33:35', '', 0, 0, 473, '-', 'LONG BARS'),
(556, '2017-11-01', 'H-144', 0, '-', 'H-144', 'A', '-', 'EN 24', 'ROUND1', '38.80', '', '', 1223, 1223, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 10:34:53', '', 0, 0, 474, '-', 'LONG BARS'),
(561, '2017-11-01', 'H-131', 0, '-', 'H-131', 'A', '-', 'ST52/EN14B', 'ROUND1', '41.00', '', '', 2930, 2930, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '21.9\"', '2017-11-17 10:48:33', '', 0, 0, 479, '-', 'LONG BARS'),
(562, '2017-11-01', 'H-141', 0, '-', 'H-141', 'A', '-', 'SUP 9', 'ROUND1', '34.00', '', '', 1430, 1430, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '10.3\"', '2017-11-17 10:51:27', '', 0, 0, 480, '-', 'LONG BARS'),
(563, '2017-11-01', 'H-135', 0, '-', 'H-135', 'A', '-', 'SUP 9', 'ROUND1', '35.00', '', '', 972, 972, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '7.8\"', '2017-11-17 10:53:51', '', 0, 0, 481, '-', 'LONG BARS'),
(564, '2017-11-01', 'H-142', 0, '-', 'H-142', 'A', '-', 'SUP 9', 'ROUND1', '40.00', '', '', 1560, 1560, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '14.11\"', '2017-11-17 10:55:09', '', 0, 0, 482, '-', 'LONG BARS'),
(565, '2017-11-01', 'H-143', 0, '-', 'H-143', 'A', '-', 'SUP 9', 'ROUND1', '45.00', '', '', 2904, 2904, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '19.5\"', '2017-11-17 10:56:26', '', 0, 0, 483, '-', 'LONG BARS'),
(566, '2017-11-01', 'NANA', 0, '-', 'NANA', 'A', '-', 'Bright1', 'TUBE', '0', '', '', 1655, 1655, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-17 11:05:16', '', 0, 0, 484, '-', 'BARS'),
(567, '2017-11-01', 'MKT-313', 0, '-', 'MKT-313', 'A', '-', 'Bright1', 'ROUND1', '86.76', '', '', 99, 99, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPEANING BALANCE ( 86 * 76 )', '2017-11-18 06:04:07', '', 0, 0, 485, '-', 'BARS'),
(568, '2017-11-01', 'MKT-310', 0, '-', 'MKT-310', 'A', '-', 'Bright1', 'FLAT', '120.3', '', '', 336, 336, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPEANING BALANCE ( 120 * 3 )', '2017-11-18 06:08:32', '', 0, 0, 486, '-', 'BARS'),
(569, '2017-11-01', 'MKT-1200', 0, '-', 'MKT-1200', '1.076', '-', 'Bright1', 'ROUND1', '30.00', '', '', 166, 166, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-18 06:43:36', '', 0, 0, 487, '-', 'BARS'),
(570, '2017-11-01', 'MKT-101', 0, '-', 'MKT-101', 'B', '-', 'Bright1', 'ROUND1', '11.30', '', '', 47, 47, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPEANING BALANCE', '2017-11-18 06:48:14', '', 0, 0, 488, '-', 'BARS'),
(571, '2017-11-01', 'MKT-1125H', 0, '-', 'MKT-1125H', 'GR(16-17)', '-', 'Bright1', 'ROUND1', '18.30', '', '', 31, 31, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE ', '2017-11-18 06:57:56', '', 0, 0, 489, '-', 'BARS'),
(572, '2017-11-04', 'MFG-1390A', 0, '-', 'MFG-1390A', 'RM', 'JSW', 'EN 1A (NL)', 'ROUND1', '14.00', '', '', 1124, 0, 0, 0, 'BLACK', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-21 08:21:07', '', 1, 0, 490, '1803', NULL),
(574, '2017-11-04', 'MFG-1391A', 0, '-', 'MFG-1391A', 'RM', 'JSW', 'EN 1A (NL)', 'ROUND1', '20.00', '', '', 1416, 0, 0, 0, 'BLACK', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-21 08:32:03', '', 1, 0, 492, '1803', 'W/R'),
(575, '2017-11-04', 'MFG-1390B', 0, '-', 'MFG-1390B', 'RM', 'JSW', 'EN 1A (NL)', 'ROUND1', '14.00', '', '', 1143, 0, 0, 0, 'BLACK', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-21 08:36:28', '', 1, 0, 493, '1803', 'W/R'),
(576, '2017-11-04', 'MFG-1390C', 0, '-', 'MFG-1390C', 'RM', 'JSW', 'EN 1A (NL)', 'ROUND1', '14.00', '', '', 1146, 0, 0, 0, 'BLACK', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-21 08:38:19', '', 1, 0, 494, '1803', 'W/R'),
(577, '2017-11-04', 'MFG-1391B', 0, '-', 'MFG-1391B', 'RM', 'JSW', 'EN 1A (NL)', 'ROUND1', '20.00', '', '', 1470, 0, 0, 0, 'BLACK', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-21 08:42:09', '', 1, 0, 495, '1803', 'W/R'),
(578, '2017-11-05', 'MFG-1392A', 0, '-', 'MFG-1392A', 'RM', '-', 'EN 31', 'ROUND1', '10.30', '', '', 915, 915, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-21 09:05:06', '', 0, 0, 496, '846', 'LONG BARS'),
(579, '2017-11-05', 'MFG-1392B', 0, '-', 'MFG-1392B', 'RM', '-', 'EN 31', 'ROUND1', '10.30', '', '', 958, 958, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-21 09:09:22', '', 0, 0, 497, '846', 'LONG BARS'),
(580, '2017-11-05', 'MFG-1392C', 0, '-', 'MFG-1392C', 'RM', '-', 'EN 31', 'ROUND1', '10.30', '', '', 938, 938, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-21 09:17:37', '', 0, 0, 498, '846', 'LONG BARS'),
(581, '2017-11-05', 'MFG-1393', 0, '-', 'MFG-1393', 'RM', '-', 'EN 31', 'ROUND1', '22.60', '', '', 658, 658, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-21 09:23:51', '', 0, 0, 499, '846', 'LONG BARS'),
(583, '2017-11-12', 'MKT-1394A-G', 0, '-', 'MKT-1394A-G', 'RM', '-', 'Bright1', 'ROUND1', '19.85', '', '', 10110, 10110, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-21 09:38:54', '', 0, 0, 501, 'JW-31', 'LONG BARS'),
(584, '2017-11-01', 'MFG-1294', 0, '-', 'MFG-1294', 'NA1', '-', 'Bright1', 'ROUND1', '18.30', '', '', 394, 394, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 06:37:19', '', 0, 0, 502, '-', 'WIRE RODS'),
(585, '2017-11-01', 'MFG-1292', 0, '-', 'MFG-1292', 'NA1', '-', 'Bright1', 'ROUND1', '13.00', '', '', 1687, 1687, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:38:32', '', 0, 0, 503, '-', 'BARS'),
(586, '2017-11-01', 'MFG-1312A', 0, '-', 'MFG-1312A', 'NA1', '-', 'Bright1', 'ROUND1', '21.00', '', '', 1428, 1428, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:40:00', '', 0, 0, 504, '-', 'BARS'),
(587, '2017-11-01', 'MFG-1310', 0, '-', 'MFG-1310', 'NA1', '-', 'Bright1', 'ROUND1', '10.00', '', '', 1388, 1388, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:40:57', '', 0, 0, 505, '-', 'BARS'),
(588, '2017-11-01', 'MFG-1293B', 0, '-', 'MFG-1293B', 'NA1', '-', 'Bright1', 'ROUND1', '12.00', '', '', 648, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:41:51', '', 1, 0, 506, '-', 'BARS'),
(589, '2017-11-01', 'MFG-1317', 0, '-', 'MFG-1317', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1085, 1085, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:43:46', '', 0, 0, 507, '-', 'BARS'),
(590, '2017-11-01', 'MFG-1324B', 0, '-', 'MFG-1324B', 'NA1', '-', 'Bright1', 'ROUND1', '30.00', '', '', 1279, 1279, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:44:38', '', 0, 0, 508, '-', 'BARS'),
(591, '2017-11-01', 'MFG-1324C', 0, '-', 'MFG-1324C', 'NA1', '-', 'Bright1', 'ROUND1', '30.00', '', '', 1218, 1218, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:45:44', '', 0, 0, 509, '-', 'BARS'),
(592, '2017-11-01', 'MFG-1329', 0, '-', 'MFG-1329', 'NA1', '-', 'Bright1', 'ROUND1', '18.00', '', '', 2068, 2068, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:47:04', '', 0, 0, 510, '-', 'BARS'),
(593, '2017-11-01', 'MFG-1331', 0, '-', 'MFG-1331', 'NA1', '-', 'Bright1', 'ROUND1', '20.00', '', '', 2467, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:48:12', '', 2, 0, 511, '-', 'BARS'),
(594, '2017-11-01', 'MFG-696', 0, '-', 'MFG-696', 'NA1', '-', 'Bright1', 'ROUND1', '05.00', '', '', 27, 27, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:50:03', '', 0, 0, 512, '-', 'BARS'),
(595, '2017-11-01', 'MFG-696A', 0, '-', 'MFG-696A', 'NA1', '-', 'Bright1', 'ROUND1', '06.00', '', '', 788, 788, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:51:11', '', 0, 0, 513, '-', 'BARS'),
(596, '2017-11-01', 'MFG-224A', 0, '-', 'MFG-224A', 'NA1', '-', 'Bright1', 'ROUND1', '08.00', '', '', 2080, 2080, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:52:02', '', 0, 0, 514, '-', 'BARS'),
(597, '2017-11-01', 'MFG-1130', 0, '-', 'MFG-1130', 'NA1', '-', 'Bright1', 'ROUND1', '24.00', '', '', 30, 30, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:52:46', '', 0, 0, 515, '-', 'BARS'),
(598, '2017-11-01', 'MFG-1252A', 0, '-', 'MFG-1252A', 'NA1', '-', 'Bright1', 'ROUND1', '32.00', '', '', 1675, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:53:58', '', 1, 0, 516, '-', 'BARS'),
(599, '2017-11-01', 'MFG-1342B', 0, '-', 'MFG-1342B', 'NA1', '-', 'Bright1', 'ROUND1', '12.00', '', '', 1485, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:58:23', '', 1, 0, 517, '-', 'BARS'),
(600, '2017-11-01', 'MFG-1342C', 0, '-', 'MFG-1342C', 'NA1', '-', 'Bright1', 'ROUND1', '12.00', '', '', 521, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:58:59', '', 1, 0, 518, '-', 'BARS'),
(601, '2017-11-01', 'MFG-1342D', 0, '-', 'MFG-1342D', 'NA1', '-', 'Bright1', 'ROUND1', '12.00', '', '', 1457, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 06:59:33', '', 1, 0, 519, '-', 'BARS'),
(602, '2017-11-01', 'MFG-1342H', 0, '-', 'MFG-1342H', 'NA1', '-', 'Bright1', 'ROUND1', '12.00', '', '', 524, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:02:47', '', 1, 0, 520, '-', 'BARS'),
(603, '2017-11-01', 'MFG-1344A', 0, '-', 'MFG-1344A', 'NA1', '-', 'Bright1', 'ROUND1', '9.00', '', '', 1498, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:03:33', '', 1, 0, 521, '-', 'BARS'),
(604, '2017-11-01', 'MFG-1344B', 0, '-', 'MFG-1344B', 'NA1', '-', 'Bright1', 'ROUND1', '9.00', '', '', 486, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:04:23', '', 1, 0, 522, '-', 'BARS'),
(605, '2017-11-01', 'MFG-1344G', 0, '-', 'MFG-1344G', 'NA1', '-', 'Bright1', 'ROUND1', '9.00', '', '', 1427, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:05:03', '', 1, 0, 523, '-', 'BARS'),
(606, '2017-11-01', 'MFG-1348A', 0, '-', 'MFG-1348A', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 2464, 1109, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:05:35', '', 1, 0, 524, '-', 'BARS'),
(607, '2017-11-01', 'MFG-1353A', 0, '-', 'MFG-1353A', 'NA1', '-', 'Bright1', 'ROUND1', '28.00', '', '', 2995, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:06:12', '', 2, 0, 525, '-', 'BARS'),
(608, '2017-11-01', 'MFG-1353B', 0, '-', 'MFG-1353B', 'NA1', '-', 'Bright1', 'ROUND1', '28.00', '', '', 372, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:06:57', '', 1, 0, 526, '-', 'BARS'),
(609, '2017-11-01', 'MFG-1351A', 0, '-', 'MFG-1351A', 'NA1', '-', 'Bright1', 'ROUND1', '20.00', '', '', 1146, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:07:30', '', 1, 0, 527, '-', 'BARS'),
(610, '2017-11-01', 'MFG-1352', 0, '-', 'MFG-1352', 'NA1', '-', 'Bright1', 'ROUND1', '28.00', '', '', 928, 928, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:08:09', '', 0, 0, 528, '-', 'BARS'),
(611, '2017-11-01', 'MFG-1235', 0, '-', 'MFG-1235', 'NA1', '-', 'Bright1', 'ROUND1', '31.00', '', '', 304, 304, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:09:33', '', 0, 0, 529, '-', 'BARS'),
(612, '2017-11-01', 'MFG-1358C', 0, '-', 'MFG-1358C', 'NA1', '-', 'Bright1', 'ROUND1', '14.00', '', '', 1469, 1469, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:10:10', '', 0, 0, 530, '-', 'BARS'),
(613, '2017-11-01', 'MFG-1361A', 0, '-', 'MFG-1361A', 'NA1', '-', 'Bright1', 'ROUND1', '30.00', '', '', 2284, 1174, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:10:47', '', 1, 0, 531, '-', 'BARS'),
(614, '2017-11-01', 'MFG-1361B', 0, '-', 'MFG-1361B', 'NA1', '-', 'Bright1', 'ROUND1', '30.00', '', '', 2109, 2109, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:11:20', '', 0, 0, 532, '-', 'BARS'),
(615, '2017-11-01', 'MFG-1361C', 0, '-', 'MFG-1361C', 'NA1', '-', '40CR4', 'ROUND1', '30.00', '', '', 1311, 1311, 0, 0, 'Black', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 07:11:57', '', 0, 0, 533, '-', 'BARS'),
(616, '2017-11-01', 'MFG-1359A', 0, '-', 'MFG-1359A', 'NA1', '-', 'Bright1', 'ROUND1', '42.00', '', '', 698, 698, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:12:32', '', 0, 0, 534, '-', 'BARS'),
(617, '2017-11-01', 'MFG-1359B', 0, '-', 'MFG-1359B', 'NA1', '-', 'Bright1', 'ROUND1', '42.00', '', '', 2960, 2960, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:13:07', '', 0, 0, 535, '-', 'BARS'),
(618, '2017-11-01', 'MFG-1372A', 0, '-', 'MFG-1372A', 'NA1', '-', 'Bright1', 'ROUND1', '17.30', '', '', 1166, 1166, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 07:17:53', '', 0, 0, 536, '-', 'BARS'),
(619, '2017-11-01', 'MFG-1372B', 0, '-', 'MFG-1372B', 'NA1', '-', 'Bright1', 'ROUND1', '17.30', '', '', 1520, 1520, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 07:18:38', '', 0, 0, 537, '-', 'BARS'),
(620, '2017-11-01', 'MFG-1372C', 0, '-', 'MFG-1372C', 'NA1', '-', 'Bright1', 'ROUND1', '17.30', '', '', 1411, 1411, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 07:19:15', '', 0, 0, 538, '-', 'BARS'),
(621, '2017-11-01', 'MFG-1372D', 0, '-', 'MFG-1372D', 'NA1', '-', 'Bright1', 'ROUND1', '17.30', '', '', 1514, 1514, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 07:19:53', '', 0, 0, 539, '-', 'BARS'),
(622, '2017-11-01', 'MFG-1372E', 0, '-', 'MFG-1372E', 'NA1', '-', 'Bright1', 'ROUND1', '17.30', '', '', 1495, 1495, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 07:20:58', '', 0, 0, 540, '-', 'BARS'),
(623, '2017-11-01', 'MFG-1346A', 0, '-', 'MFG-1346A', 'NA1', '-', 'Bright1', 'ROUND1', '17.30', '', '', 1210, 1210, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:38:45', '', 0, 0, 541, '-', 'BARS'),
(624, '2017-11-01', 'MFG-1346B', 0, '-', 'MFG-1346B', 'NA1', '-', 'Bright1', 'ROUND1', '17.30', '', '', 1204, 1204, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:39:24', '', 0, 0, 542, '-', 'BARS'),
(625, '2017-11-01', 'MFG-1346C', 0, '-', 'MFG-1346C', 'NA1', '-', 'Bright1', 'ROUND1', '17.30', '', '', 1222, 1222, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:40:06', '', 0, 0, 543, '-', 'BARS'),
(626, '2017-11-01', 'MFG-1346D', 0, '-', 'MFG-1346D', 'NA1', '-', 'Bright1', 'ROUND1', '17.30', '', '', 1166, 1166, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:40:40', '', 0, 0, 544, '-', 'BARS'),
(627, '2017-11-01', 'MFG-1346E', 0, '-', 'MFG-1346E', 'NA1', '-', 'Bright1', 'ROUND1', '17.30', '', '', 1247, 1247, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:41:17', '', 0, 0, 545, '-', 'BARS'),
(628, '2017-11-01', 'MFG-1375A', 0, '-', 'MFG-1375A', 'NA1', '-', 'Bright1', 'ROUND1', '10.00', '', '', 1276, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:41:57', '', 1, 0, 546, '-', 'BARS'),
(629, '2017-11-01', 'MFG-1375B', 0, '-', 'MFG-1375B', 'NA1', '-', 'Bright1', 'ROUND1', '10.00', '', '', 1120, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:42:54', '', 1, 0, 547, '-', 'BARS'),
(630, '2017-11-01', 'MFG-1375C', 0, '-', 'MFG-1375C', 'NA1', '-', 'Bright1', 'ROUND1', '10.00', '', '', 1235, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:43:35', '', 1, 0, 548, '-', 'BARS'),
(631, '2017-11-01', 'MFG-1375D', 0, '-', 'MFG-1375D', 'NA1', '-', 'Bright1', 'ROUND1', '10.00', '', '', 1240, 1240, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:44:09', '', 0, 0, 549, '-', 'BARS'),
(632, '2017-11-01', 'MFG-1375E', 0, '-', 'MFG-1375E', 'NA1', '-', 'Bright1', 'ROUND1', '10.00', '', '', 1114, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 07:44:43', '', 1, 0, 550, '-', 'BARS'),
(634, '2017-11-01', 'RL', 0, NULL, 'RL', 'RLLot', '', 'Bdsg', '', '', '', '', 358, 358, 0, 0, '', 0, 67, 5, 0, 0, 0, 0, '', '2017-11-22 07:55:38', '', 0, 0, 0, '', ''),
(636, '2017-11-01', 'MFG-1378A', 0, '-', 'MFG-1378A', 'NA1', '-', 'Bright1', 'ROUND1', '15.00', '', '', 1443, 1443, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 08:24:30', '', 0, 0, 551, '-', 'BARS'),
(637, '2017-11-01', 'MFG-1378B', 0, '-', 'MFG-1378B', 'NA1', '-', 'Bright1', 'ROUND1', '15.00', '', '', 1481, 1481, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 08:27:37', '', 0, 0, 552, '-', 'BARS'),
(638, '2017-11-01', 'MFG-1378C', 0, '-', 'MFG-1378C', 'NA1', '-', 'Bright1', 'ROUND1', '15.00', '', '', 1303, 1303, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 08:37:21', '', 0, 0, 553, '-', 'BARS'),
(639, '2017-11-01', 'MFG-1378D', 0, '-', 'MFG-1378D', 'NA1', '-', 'Bright1', 'ROUND1', '15.00', '', '', 1433, 1433, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 08:38:15', '', 0, 0, 554, '-', 'BARS'),
(640, '2017-11-01', 'MFG-1376A', 0, '-', 'MFG-1376A', 'NA1', '-', 'Bright1', 'ROUND1', '16.00', '', '', 1488, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 08:39:31', '', 1, 0, 555, '-', 'BARS'),
(641, '2017-11-01', 'MFG-1376B', 0, '-', 'MFG-1376B', 'NA1', '-', 'Bright1', 'ROUND1', '16.00', '', '', 1478, 1478, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 08:50:50', '', 0, 0, 556, '-', 'BARS'),
(642, '2017-11-01', 'MFG-1376C', 0, '-', 'MFG-1376C', 'NA1', '-', 'Bright1', 'ROUND1', '16.00', '', '', 1486, 1486, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 08:52:20', '', 0, 0, 557, '-', 'BARS'),
(643, '2017-11-01', 'MFG-1376D', 0, '-', 'MFG-1376D', 'NA1', '-', 'Bright1', 'ROUND1', '16.00', '', '', 1475, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 08:53:10', '', 1, 0, 558, '-', 'BARS'),
(644, '2017-11-01', 'MFG-1379A', 0, '-', 'MFG-1379A', 'NA1', '-', 'Bright1', 'ROUND1', '21.00', '', '', 1482, 1482, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 08:54:33', '', 0, 0, 559, '-', 'BARS'),
(645, '2017-11-01', 'MFG-1379B', 0, '-', 'MFG-1379B', 'NA1', '-', 'Bright1', 'ROUND1', '21.00', '', '', 1303, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 08:55:40', '', 1, 0, 560, '-', 'BARS'),
(646, '2017-11-01', 'MFG-1379C', 0, '-', 'MFG-1379C', 'NA1', '-', 'Bright1', 'ROUND1', '21.00', '', '', 1312, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 08:57:24', '', 1, 0, 561, '-', 'BARS'),
(647, '2017-11-01', 'MFG-1379D', 0, '-', 'MFG-1379D', 'NA1', '-', 'Bright1', 'ROUND1', '21.00', '', '', 1478, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 08:58:02', '', 1, 0, 562, '-', 'BARS'),
(648, '2017-11-01', 'MFG-1381A', 0, '-', 'MFG-1381A', 'NA1', '-', 'Bright1', 'ROUND1', '26.00', '', '', 1478, 1478, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 08:59:06', '', 0, 0, 563, '-', 'BARS'),
(649, '2017-11-01', 'MFG-1381B', 0, '-', 'MFG-1381B', 'NA1', '-', 'Bright1', 'ROUND1', '26.00', '', '', 1425, 1425, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:01:03', '', 0, 0, 564, '-', 'BARS'),
(650, '2017-11-01', 'MFG-1381C', 0, '-', 'MFG-1381C', 'NA1', '-', 'Bright1', 'ROUND1', '26.00', '', '', 1478, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:02:35', '', 1, 0, 565, '-', 'BARS'),
(651, '2017-11-01', 'MFG-1381D', 0, '-', 'MFG-1381D', 'NA1', '-', 'Bright1', 'ROUND1', '26.00', '', '', 1477, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:03:44', '', 1, 0, 566, '-', 'BARS'),
(652, '2017-11-01', 'MFG-1380A', 0, '-', 'MFG-1380A', 'NA1', '-', 'Bright1', 'ROUND1', '21.00', '', '', 1476, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:04:33', '', 1, 0, 567, '-', 'BARS'),
(653, '2017-11-01', 'MFG-1380B', 0, '-', 'MFG-1380B', 'NA1', '-', 'Bright1', 'ROUND1', '21.00', '', '', 1463, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:05:24', '', 1, 0, 568, '-', 'BARS'),
(654, '2017-11-01', 'MFG-1380C', 0, '-', 'MFG-1380C', 'NA1', '-', 'Bright1', 'ROUND1', '21.00', '', '', 1461, 1461, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:06:01', '', 0, 0, 569, '-', 'BARS'),
(655, '2017-11-01', 'MFG-1380D', 0, '-', 'MFG-1380D', 'NA1', '-', 'Bright1', 'ROUND1', '21.00', '', '', 1476, 1476, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:06:42', '', 0, 0, 570, '-', 'BARS'),
(656, '2017-11-01', 'MFG-1380E', 0, '-', 'MFG-1380E', 'NA1', '-', 'Bright1', 'ROUND1', '21.00', '', '', 1473, 1473, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:07:31', '', 0, 0, 571, '-', 'BARS'),
(657, '2017-11-01', 'MFG-1380F', 0, '-', 'MFG-1380F', 'NA1', '-', 'Bright1', 'ROUND1', '21.00', '', '', 1478, 1478, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:08:07', '', 0, 0, 572, '-', 'BARS'),
(658, '2017-11-01', 'MFG-1380G', 0, '-', 'MFG-1380G', 'NA1', '-', 'Bright1', 'ROUND1', '21.00', '', '', 1485, 1485, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:08:49', '', 0, 0, 573, '-', 'BARS'),
(659, '2017-11-01', 'MFG-1382A', 0, '-', 'MFG-1382A', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1484, 1484, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:09:31', '', 0, 0, 574, '-', 'BARS'),
(660, '2017-11-01', 'MFG-1382B', 0, '-', 'MFG-1382B', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1491, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:10:18', '', 1, 0, 575, '-', 'BARS'),
(661, '2017-11-01', 'MFG-1382C', 0, '-', 'MFG-1382C', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1476, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:10:56', '', 1, 0, 576, '-', 'BARS'),
(662, '2017-11-01', 'MFG-1382D', 0, '-', 'MFG-1382D', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1479, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:11:39', '', 1, 0, 577, '-', 'BARS'),
(663, '2017-11-01', 'MFG-1382E', 0, '-', 'MFG-1382E', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1456, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:12:47', '', 1, 0, 578, '-', 'BARS'),
(664, '2017-11-01', 'MFG-1382F', 0, '-', 'MFG-1382F', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1478, 1478, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:13:35', '', 0, 0, 579, '-', 'BARS'),
(665, '2017-11-01', 'MFG-1382G', 0, '-', 'MFG-1382G', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1478, 1478, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:14:19', '', 0, 0, 580, '-', 'BARS'),
(666, '2017-11-01', 'MFG-1382H', 0, '-', 'MFG-1382H', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1471, 1471, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:14:52', '', 0, 0, 581, '-', 'BARS'),
(667, '2017-11-01', 'MFG-1382I', 0, '-', 'MFG-1382I', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1481, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:15:46', '', 1, 0, 582, '-', 'BARS'),
(668, '2017-11-01', 'MFG-1382J', 0, '-', 'MFG-1382J', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1473, 1473, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:17:13', '', 0, 0, 583, '-', 'BARS'),
(669, '2017-11-01', 'MFG-1382K', 0, '-', 'MFG-1382K', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1480, 1480, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:18:34', '', 0, 0, 584, '-', 'BARS'),
(670, '2017-11-01', 'MFG-1382L', 0, '-', 'MFG-1382L', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1422, 1422, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:19:08', '', 0, 0, 585, '-', 'BARS'),
(671, '2017-11-01', 'MFG-1382M', 0, '-', 'MFG-1382M', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1483, 1483, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:19:46', '', 0, 0, 586, '-', 'BARS'),
(672, '2017-11-01', 'MFG-1382N', 0, '-', 'MFG-1382N', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1429, 1429, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:20:19', '', 0, 0, 587, '-', 'BARS'),
(673, '2017-11-01', 'MFG-1383A', 0, '-', 'MFG-1383A', 'NA1', '-', 'Bright1', 'ROUND1', '26.00', '', '', 1295, 1295, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:20:56', '', 0, 0, 588, '-', 'BARS'),
(674, '2017-11-01', 'MFG-1383B', 0, '-', 'MFG-1383B', 'NA1', '-', 'Bright1', 'ROUND1', '26.00', '', '', 1154, 1154, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:21:45', '', 0, 0, 589, '-', 'BARS'),
(675, '2017-11-01', 'MFG-1383C', 0, '-', 'MFG-1383C', 'NA1', '-', 'Bright1', 'ROUND1', '26.00', '', '', 1212, 1212, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:28:06', '', 0, 0, 590, '-', 'BARS'),
(676, '2017-11-01', 'MFG-1383D', 0, '-', 'MFG-1383D', 'NA1', '-', 'Bright1', 'ROUND1', '26.00', '', '', 1230, 1230, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:28:57', '', 0, 0, 591, '-', 'BARS'),
(677, '2017-11-01', 'MFG-1384A', 0, '-', 'MFG-1384A', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1470, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:29:52', '', 1, 0, 592, '-', 'BARS'),
(678, '2017-11-01', 'MFG-1384B', 0, '-', 'MFG-1384B', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1321, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:30:31', '', 1, 0, 593, '-', 'BARS'),
(679, '2017-11-01', 'MFG-1384C', 0, '-', 'MFG-1384C', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1465, 1465, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:31:41', '', 0, 0, 594, '-', 'BARS'),
(680, '2017-11-01', 'MFG-1384D', 0, '-', 'MFG-1384D', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '', '', 1475, 1475, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:32:17', '', 0, 0, 595, '-', 'BARS'),
(681, '2017-11-01', 'MFG-1385A', 0, '-', 'MFG-1385A', 'NA1', '-', 'Bright1', 'ROUND1', '14.00', '', '', 1493, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:33:32', '', 1, 0, 596, '-', 'BARS'),
(682, '2017-11-01', 'MFG-1385B', 0, '-', 'MFG-1385B', 'NA1', '-', 'Bright1', 'ROUND1', '14.00', '', '', 1489, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:34:11', '', 1, 0, 597, '-', 'BARS'),
(683, '2017-11-01', 'MFG-1385C', 0, '-', 'MFG-1385C', 'NA1', '-', 'Bright1', 'ROUND1', '14.00', '', '', 1503, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:34:52', '', 1, 0, 598, '-', 'BARS'),
(684, '2017-11-01', 'MFG-1385D', 0, '-', 'MFG-1385D', 'NA1', '-', 'Bright1', 'ROUND1', '14.00', '', '', 1491, 831, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:35:28', '', 1, 0, 599, '-', 'BARS'),
(685, '2017-11-01', 'MFG-1385E', 0, '-', 'MFG-1385E', 'NA1', '-', 'Bright1', 'ROUND1', '14.00', '', '', 1497, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:36:01', '', 1, 0, 600, '-', 'BARS'),
(686, '2017-11-01', 'MFG-1386A', 0, '-', 'MFG-1386A', 'NA1', '-', 'Bright1', 'ROUND1', '12.00', '', '', 1493, 37, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:36:36', '', 2, 0, 601, '-', 'BARS'),
(687, '2017-11-01', 'MFG-1386B', 0, '-', 'MFG-1386B', 'NA1', '-', 'Bright1', 'ROUND1', '12.00', '', '', 1480, 1480, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:37:12', '', 0, 0, 602, '-', 'BARS'),
(688, '2017-11-01', 'MFG-1386C', 0, '-', 'MFG-1386C', 'NA1', '-', 'Bright1', 'ROUND1', '12.00', '', '', 1473, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:37:48', '', 1, 0, 603, '-', 'BARS'),
(689, '2017-11-01', 'MFG-1386D', 0, '-', 'MFG-1386D', 'NA1', '-', 'Bright1', 'ROUND1', '12.00', '', '', 1491, 1491, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:38:21', '', 0, 0, 604, '-', 'BARS'),
(690, '2017-11-01', 'MFG-1386E', 0, '-', 'MFG-1386E', 'NA1', '-', 'Bright1', 'ROUND1', '12.00', '', '', 1448, 1448, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:38:51', '', 0, 0, 605, '-', 'BARS'),
(691, '2017-11-01', 'MFG-1387A', 0, '-', 'MFG-1387A', 'NA1', '-', 'SAE 1541', 'ROUND1', '13.00', '', '', 1152, 1152, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 09:39:28', '', 0, 0, 606, '-', 'WIRE RODS'),
(692, '2017-11-01', 'MFG-1387B', 0, '-', 'MFG-1387B', 'NA1', '-', 'SAE 1541', 'ROUND1', '13.00', '', '', 1528, 1528, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 09:40:04', '', 0, 0, 607, '-', 'WIRE RODS'),
(693, '2017-11-01', 'MFG-1387C', 0, '-', 'MFG-1387C', 'NA1', '-', 'Bright1', 'ROUND1', '13.00', '', '', 1525, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:40:57', '', 1, 0, 608, '-', 'BARS'),
(694, '2017-11-01', 'MFG-1387D', 0, '-', 'MFG-1387D', 'NA1', '-', 'Bright1', 'ROUND1', '13.00', '', '', 1522, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:41:50', '', 1, 0, 609, '-', 'BARS'),
(695, '2017-11-01', 'MFG-1387E', 0, '-', 'MFG-1387E', 'NA1', '-', 'SAE 1541', 'ROUND1', '13.00', '', '', 1275, 1275, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 09:42:33', '', 0, 0, 610, '-', 'WIRE RODS'),
(696, '2017-11-01', 'MFG-1387F', 0, '-', 'MFG-1387F', 'NA1', '-', 'SAE 1541', 'ROUND1', '13.00', '', '', 1319, 1319, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 09:43:09', '', 0, 0, 611, '-', 'WIRE RODS'),
(697, '2017-11-01', 'MFG-1387G', 0, '-', 'MFG-1387G', 'NA1', '-', 'Bright1', 'ROUND1', '13.00', '', '', 1526, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:43:46', '', 1, 0, 612, '-', 'BARS'),
(698, '2017-11-01', 'MFG-1387H', 0, '-', 'MFG-1387H', 'NA1', '-', 'Bright1', 'ROUND1', '13.00', '', '', 1522, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:44:22', '', 1, 0, 613, '-', 'BARS'),
(699, '2017-11-01', 'MFG-1387I', 0, '-', 'MFG-1387I', 'NA1', '-', 'Bright1', 'ROUND1', '13.00', '', '', 1475, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:44:55', '', 1, 0, 614, '-', 'BARS'),
(700, '2017-11-01', 'MFG-1387J', 0, '-', 'MFG-1387J', 'NA1', '-', 'Bright1', 'ROUND1', '13.00', '', '', 1468, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:45:27', '', 1, 0, 615, '-', 'BARS'),
(701, '2017-11-01', 'MFG-1387K', 0, '-', 'MFG-1387K', 'NA1', '-', 'SAE 1541', 'ROUND1', '13.00', '', '', 1517, 1517, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 09:46:05', '', 0, 0, 616, '-', 'WIRE RODS'),
(702, '2017-11-01', 'MFG-1387L', 0, '-', 'MFG-1387L', 'NA1', '-', 'SAE 1541', 'ROUND1', '13.00', '', '', 1527, 1527, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 09:46:40', '', 0, 0, 617, '-', 'WIRE RODS'),
(703, '2017-11-01', 'MFG-1387M', 0, '-', 'MFG-1387M', 'NA1', '-', 'SAE 1541', 'ROUND1', '13.00', '', '', 1520, 1520, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-22 09:47:21', '', 0, 0, 618, '-', 'WIRE RODS'),
(704, '2017-11-01', 'MFG-1387N', 0, '-', 'MFG-1387N', 'NA1', '-', 'Bright1', 'ROUND1', '13.00', '', '', 1522, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:47:55', '', 1, 0, 619, '-', 'BARS'),
(705, '2017-11-02', 'MFG-JB1A', 0, '-', 'MFG-JB1A', 'RM', 'JSW', 'EN 1 A (L)', 'ROUND1', '17.30', '', '', 4220, 4220, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:53:13', '', 0, 0, 620, '1821', 'W/R'),
(706, '2017-11-02', 'MFG-JB1B', 0, '-', 'MFG-JB1B', 'RM', 'JSW', 'EN 1 A (L)', 'ROUND1', '12.00', '', '', 7430, 7430, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:56:49', '', 0, 0, 621, '1821', 'W/R'),
(707, '2017-11-02', 'MFG-JB1C', 0, '-', 'MFG-JB1C', 'RM', 'JSW', 'EN 1A (NL)', 'ROUND1', '11.00', '', '', 5960, 5960, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 09:59:08', '', 0, 0, 622, '1821', 'W/R'),
(708, '2017-11-02', 'MFG-JB1D', 0, '-', 'MFG-JB1D', 'RM', 'JSW', '16MNCR5', 'ROUND1', '17.30', '', '', 7890, 7890, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 10:00:04', '', 0, 0, 623, '1821', 'W/R'),
(709, '2017-11-04', 'MFG-JB2A', 0, '-', 'MFG-JB2A', 'RM', 'JSW', 'EN 1A (NL)', 'ROUND1', '14.00', '', '', 2507, 2507, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 10:09:26', '', 0, 0, 624, '1803', 'W/R'),
(711, '2017-11-04', 'MFG-JB2C', 0, '-', 'MFG-JB2C', 'RM', 'JSW', 'EN 1 A (L)', 'ROUND1', '12.00', '', '', 2690, 2690, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 10:11:57', '', 0, 0, 626, '1803', 'W/R'),
(712, '2017-11-04', 'MFG-JB2D', 0, '-', 'MFG-JB2D', 'RM', 'JSW', 'EN 1 A (L)', 'ROUND1', '14.00', '', '', 6170, 6170, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 10:12:53', '', 0, 0, 627, '1803', 'W/R'),
(713, '2017-11-05', 'MFG-JB3', 0, '-', 'MFG-JB3', 'RM', '-', 'MS', 'ROUND1', '75.00', '', '', 1010, 1010, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 10:16:30', '', 0, 0, 628, '0892', 'LONG BARS'),
(714, '2017-11-05', 'MFG-JB4', 0, '-', 'MFG-JB4', 'RM', '-', 'MS', 'ROUND1', '95.00', '', '', 2080, 2080, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 10:21:28', '', 0, 0, 629, '1049', 'LONG BARS'),
(715, '2017-11-08', 'MFG-JB5', 0, '-', 'MFG-JB5', 'RM', '-', 'EN 31', 'ROUND1', '22.60', '', '', 558, 558, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-22 10:24:31', '', 0, 0, 630, 'M 1099', 'LONG BARS'),
(716, '2017-11-04', 'MFG-1331', 0, 'DB', 'MFG-1331DB1', 'NA1', '-', 'Bright1', 'ROUND1', '19.20', '20.00', '', 1079, 0, 0, 1100, 'Bright1', 1, 67, 5, 0, 21, 1.90909090909091, NULL, '', '2017-11-22 10:37:27', 'MFG-1331DB1', 1, 0, 0, '', 'BARS'),
(717, '2017-11-01', 'MFG-1382C', 0, 'DB', 'MFG-1382CDB1', 'NA1', '-', 'Bright1', 'ROUND1', '24.00', '25.00', '', 1415, 0, 0, 1476, 'Bright1', 1, 67, 5, 33, 28, 45.9016393442623, NULL, '', '2017-11-22 10:47:53', 'MFG-1382CDB1', 1, 0, 0, '', 'BARS'),
(718, '2017-11-01', 'MFG-1382E', 0, 'DB', 'MFG-1382EDB1', 'NA1', '-', 'Bright1', 'ROUND1', '24.00', '25.00', '', 1433, 825, 0, 1456, 'Bright1', 0, 67, 5, 23, 0, 0, NULL, '', '2017-11-22 11:05:14', 'MFG-1382EDB1', 1, 0, 0, '', 'BARS'),
(719, '2017-11-05', 'MFG-1353A', 0, 'DB', 'MFG-1353ADB1', 'NA1', '-', 'Bright1', 'ROUND1', '25.00', '28.00', '', 843, 0, 0, 850, 'Bright1', 1, 67, 5, 7, 0, 0, NULL, '', '2017-11-22 11:06:45', 'MFG-1353ADB1', 1, 0, 0, '', 'BARS'),
(720, '2017-11-06', 'MFG-1353A', 0, 'DB', 'MFG-1353ADB2', 'NA1', '-', 'Bright1', 'ROUND1', '27.00', '28.00', '', 2081, 0, 0, 2145, 'Bright1', 1, 67, 5, 64, 0, 0, NULL, '', '2017-11-22 11:21:46', 'MFG-1353ADB2', 1, 0, 0, '', 'BARS'),
(721, '2017-11-06', 'MFG-1353B', 0, 'DB', 'MFG-1353BDB1', 'NA1', '-', 'Bright1', 'ROUND1', '27.00', '28.00', '', 364, 0, 0, 372, 'Bright1', 1, 67, 5, 8, 0, 0, NULL, '', '2017-11-22 11:23:43', 'MFG-1353BDB1', 1, 0, 0, '', 'BARS'),
(722, '2017-11-06', 'MFG-1252A', 0, 'DB', 'MFG-1252ADB1', 'NA1', '-', 'Bright1', 'ROUND1', '31.20', '32.00', '', 1613, 0, 0, 1675, 'Bright1', 1, 67, 5, 45, 17, 1.01492537313433, NULL, '', '2017-11-22 11:25:21', 'MFG-1252ADB1', 1, 0, 0, '', 'BARS'),
(723, '2017-11-06', 'MFG-1361A', 0, 'DB', 'MFG-1361ADB1', 'NA1', '-', 'Bright1', 'ROUND1', '28.00', '30.00', '', 1087, 0, 0, 1110, 'Bright1', 1, 67, 5, 20, 3, 0.27027027027027, NULL, '', '2017-11-22 11:28:28', 'MFG-1361ADB1', 1, 0, 0, '', 'BARS'),
(724, '2017-11-08', 'MFG-1380B', 0, 'DB', 'MFG-1380BDB1', 'NA1', '-', 'Bright1', 'HEXAGON', '17.00', '21.00', '', 1412, 0, 0, 1463, 'Bright1', 1, 67, 5, 11, 40, 2.73410799726589, NULL, '', '2017-11-22 11:31:50', 'MFG-1380BDB1', 1, 0, 0, '', 'BARS'),
(725, '2017-11-08', 'MFG-1380A', 0, 'DB', 'MFG-1380ADB1', 'NA1', '-', 'Bright1', 'HEXAGON', '17.00', '21.00', '', 1445, 0, 0, 1476, 'Bright1', 1, 67, 5, 11, 20, 1.3550135501355, NULL, '', '2017-11-22 11:32:37', 'MFG-1380ADB1', 1, 0, 0, '', 'BARS'),
(726, '2017-11-08', 'MFG-1375E', 0, 'CDM', 'MFG-1375ECDM1', 'NA1', '-', 'Bright1', 'ROUND1', '9.00', '10.00', '', 1114, 0, 0, 1114, 'Bright1', 1, 67, 5, 0, 0, 0, NULL, '', '2017-11-22 11:34:05', 'MFG-1375ECDM1', 1, 0, 0, '', 'BARS'),
(727, '2017-11-08', 'MFG-1375B', 0, 'CDM', 'MFG-1375BCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '9.00', '10.00', '', 1100, 0, 0, 1120, 'Bright1', 1, 67, 5, 0, 20, 1.78571428571429, NULL, '', '2017-11-22 11:35:07', 'MFG-1375BCDM1', 1, 0, 0, '', 'BARS'),
(728, '2017-11-09', 'MFG-1375C', 0, 'CDM', 'MFG-1375CCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '9.00', '10.00', '', 1165, 1165, 0, 1235, 'Bright1', 0, 67, 5, 0, 70, 5.66801619433198, NULL, '', '2017-11-22 11:35:32', 'MFG-1375CCDM1', 0, 0, 0, '', 'BARS'),
(729, '2017-11-09', 'MFG-1390C', 0, 'CDM', 'MFG-1390CCDM1', 'RM', 'JSW', 'EN 1A (NL)', 'ROUND1', '12.00', '14.00', '', 1110, 0, 0, 1146, 'BLACK', 1, 67, 5, 0, 36, 3.1413612565445, NULL, '', '2017-11-22 11:36:56', 'MFG-1390CCDM1', 1, 0, 0, '', 'BARS'),
(730, '2017-11-09', 'MFG-1390B', 0, 'CDM', 'MFG-1390BCDM1', 'RM', 'JSW', 'EN 1A (NL)', 'ROUND1', '12.00', '14.00', '', 1122, 0, 0, 1143, 'BLACK', 1, 67, 5, 0, 21, 100, NULL, '', '2017-11-22 11:37:26', 'MFG-1390BCDM1', 1, 0, 0, '', 'BARS'),
(731, '2017-11-09', 'MFG-1390A', 0, 'CDM', 'MFG-1390ACDM1', 'RM', 'JSW', 'EN 1A (NL)', 'ROUND1', '12.00', '14.00', '', 1124, 0, 0, 1124, 'BLACK', 1, 67, 5, 0, 0, 0, NULL, '\r\n', '2017-11-22 11:38:39', 'MFG-1390ACDM1', 1, 0, 0, '', 'BARS'),
(732, '2017-11-09', 'MFG-1381D', 0, 'DB', 'MFG-1381DDB1', 'NA1', '-', 'Bright1', 'ROUND1', '25.40', '26.00', '', 1444, 1444, 0, 1477, 'Bright1', 0, 67, 5, 11, 22, 1.4895057549086, NULL, '', '2017-11-22 11:48:26', 'MFG-1381DDB1', 0, 0, 0, '', 'BARS'),
(733, '2017-11-11', 'MFG-1381C', 0, 'DB', 'MFG-1381CDB1', 'NA1', '-', 'Bright1', 'ROUND1', '25.40', '26.00', '', 1443, 1443, 0, 1478, 'Bright1', 0, 67, 5, 12, 23, 1.55615696887686, NULL, '', '2017-11-22 11:49:09', 'MFG-1381CDB1', 0, 0, 0, '', 'BARS'),
(734, '2017-11-10', 'MFG-1385E', 0, 'CDM', 'MFG-1385ECDM1', 'NA1', '-', 'Bright1', 'ROUND1', '12.00', '14.00', '', 1476, 0, 0, 1497, 'Bright1', 1, 67, 5, 0, 21, 1.40280561122244, NULL, '', '2017-11-22 11:50:40', 'MFG-1385ECDM1', 1, 0, 0, '', 'BARS'),
(735, '2017-11-10', 'MFG-1385D', 0, 'CDM', 'MFG-1385DCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '12.00', '14.00', '', 655, 0, 0, 660, 'Bright1', 1, 67, 5, 0, 5, 0.757575757575758, NULL, '', '2017-11-22 11:51:45', 'MFG-1385DCDM1', 1, 0, 0, '', 'BARS'),
(736, '2017-11-11', 'MFG-1344G', 0, 'CDM', 'MFG-1344GCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '8.20', '9.00', '', 1425, 0, 0, 1427, 'Bright1', 1, 67, 5, 0, 2, 100, NULL, '', '2017-11-22 11:54:29', 'MFG-1344GCDM1', 1, 0, 0, '', 'BARS'),
(737, '2017-11-11', 'MFG-1344A', 0, 'CDM', 'MFG-1344ACDM1', 'NA1', '-', 'Bright1', 'ROUND1', '8.20', '9.00', '', 1496, 0, 0, 1498, 'Bright1', 1, 67, 5, 0, 2, 100, NULL, '', '2017-11-22 11:55:46', 'MFG-1344ACDM1', 1, 0, 0, '', 'BARS'),
(738, '2017-11-11', 'MFG-1344B', 0, 'CDM', 'MFG-1344BCDM1', 'NA1', '-', 'Bright1', 'Square', '8.20', '9.00', '', 483, 0, 0, 486, 'Bright1', 1, 67, 5, 0, 3, 100, NULL, '', '2017-11-22 11:56:23', 'MFG-1344BCDM1', 1, 0, 0, '', 'BARS'),
(739, '2017-11-12', 'MFG-1375A', 0, 'CDM', 'MFG-1375ACDM1', 'NA1', '-', 'Bright1', 'ROUND1', '8.90', '10.00', '', 1253, 0, 0, 1276, 'Bright1', 1, 67, 5, 0, 23, 1.8025078369906, NULL, '', '2017-11-22 12:01:49', 'MFG-1375ACDM1', 1, 0, 0, '', 'BARS'),
(740, '2017-11-12', 'MFG-1376A', 0, 'CDM', 'MFG-1376ACDM1', 'NA1', '-', 'Bright1', 'ROUND1', '14.00', '16.00', '', 1459, 1459, 0, 1488, 'Bright1', 0, 67, 5, 0, 29, 1.9489247311828, NULL, '', '2017-11-22 12:04:15', 'MFG-1376ACDM1', 0, 0, 0, '', 'BARS'),
(741, '2017-11-12', 'MFG-1376D', 0, 'CDM', 'MFG-1376DCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '14.00', '16.00', '', 1466, 1466, 0, 1475, 'Bright1', 0, 67, 5, 0, 9, 0.610169491525424, NULL, '', '2017-11-22 12:04:48', 'MFG-1376DCDM1', 0, 0, 0, '', 'BARS'),
(742, '2017-11-13', 'MFG-1293B', 0, 'CDM', 'MFG-1293BCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '10.00', '12.00', '', 640, 640, 0, 648, 'Bright1', 0, 67, 5, 0, 8, 1.23456790123457, NULL, '', '2017-11-22 12:05:11', 'MFG-1293BCDM1', 0, 0, 0, '', 'BARS'),
(743, '2017-11-13', 'MFG-1342D', 0, 'CDM', 'MFG-1342DCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '10.10', '12.00', '', 1425, 0, 0, 1457, 'Bright1', 1, 67, 5, 0, 32, 2.19629375428964, NULL, '', '2017-11-22 12:10:58', 'MFG-1342DCDM1', 1, 0, 0, '', 'BARS'),
(744, '2017-11-13', 'MFG-1342B', 0, 'CDM', 'MFG-1342BCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '10.10', '12.00', '', 1460, 0, 0, 1485, 'Bright1', 1, 67, 5, 0, 25, 1.68350168350168, NULL, '', '2017-11-22 12:11:19', 'MFG-1342BCDM1', 1, 0, 0, '', 'BARS'),
(745, '2017-11-14', 'MFG-1386C', 0, 'CDM', 'MFG-1386CCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '10.10', '12.00', '', 1454, 0, 0, 1473, 'Bright1', 1, 67, 5, 0, 19, 1.28988458927359, NULL, '', '2017-11-22 12:11:46', 'MFG-1386CCDM1', 1, 0, 0, '', 'BARS'),
(746, '2017-11-15', 'MFG-1342H', 0, 'CDM', 'MFG-1342HCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '10.10', '12.00', '', 502, 0, 0, 524, 'Bright1', 1, 67, 5, 0, 22, 4.19847328244275, NULL, '', '2017-11-22 12:12:11', 'MFG-1342HCDM1', 1, 0, 0, '', 'BARS'),
(747, '2017-11-15', 'MFG-1342C', 0, 'CDM', 'MFG-1342CCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '10.10', '12.00', '', 510, 0, 0, 521, 'Bright1', 1, 67, 5, 0, 11, 2.11132437619962, NULL, '', '2017-11-22 12:12:31', 'MFG-1342CCDM1', 1, 0, 0, '', 'BARS'),
(748, '2017-11-15', 'MFG-1386A', 0, 'CDM', 'MFG-1386ACDM1', 'NA1', '-', 'Bright1', 'ROUND1', '10.27', '12.00', '', 698, 0, 0, 728, 'Bright1', 1, 67, 5, 0, 30, 4.12087912087912, NULL, '', '2017-11-22 12:13:17', 'MFG-1386ACDM1', 1, 0, 0, '', 'BARS'),
(749, '2017-11-01', 'MFG-1932', 0, '-', 'MFG-1932', 'FG', '-', 'Bright1', 'HEXAGON', '19.00', '', '', 244, 244, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 06:36:53', '', 0, 0, 631, '-', 'BARS'),
(750, '2017-11-01', 'MFG-1077', 0, '-', 'MFG-1077', 'FG', '-', 'Bright1', 'HEXAGON', '27', '', '', 152, 152, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 06:37:31', '', 0, 0, 632, '-', 'BARS'),
(751, '2017-11-01', 'MFG-844', 0, '-', 'MFG-844', 'FG', '-', 'Bright1', 'ROUND1', '14.00', '', '', 193, 193, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 06:39:38', '', 0, 0, 633, '-', 'BARS'),
(752, '2017-11-01', 'MFG-1058A', 0, '-', 'MFG-1058A', 'FG', '-', 'Bright1', 'ROUND1', '17.00', '', '', 1352, 1352, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 06:48:07', '', 0, 0, 634, '-', 'BARS'),
(753, '2017-11-01', 'MFG-1004', 0, '-', 'MFG-1004', 'FG', '-', 'Bright1', 'ROUND1', '23.00', '', '', 2277, 2277, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 06:48:56', '', 0, 0, 635, '-', 'BARS');
INSERT INTO `production` (`id`, `date`, `previousCode`, `carryforword`, `processMachine`, `newCode`, `lotNo`, `make`, `grade`, `shape`, `size`, `rmsize`, `heatNo`, `actualWeight`, `balanceWt`, `openingbalwt`, `inweight`, `surface`, `flag`, `fyId`, `companyId`, `recoverableLoss`, `nrLoss`, `percentgeLoss`, `jobWorkerId`, `remark`, `createdOn`, `checkCode`, `dellock`, `dellockCarryforword`, `pur_fk_id`, `billNo`, `conditn`) VALUES
(754, '2017-11-01', 'MFG-1005', 0, '-', 'MFG-1005', 'FG', '-', 'Bright1', 'ROUND1', '19.00', '', '', 447, 447, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 06:49:47', '', 0, 0, 636, '-', 'BARS'),
(755, '2017-11-01', 'MFG-1156B', 0, '-', 'MFG-1156B', 'FG', '-', 'Bright1', 'ROUND1', '31.30', '', '', 1126, 1126, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:06:24', '', 0, 0, 637, '-', 'BARS'),
(756, '2017-11-01', 'MFG-1032', 0, '-', 'MFG-1032', 'FG', '-', 'Bright1', 'PROFILE', '20.15', '', '', 58, 58, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:10:12', '', 0, 0, 638, '-', 'BARS'),
(757, '2017-11-01', 'MFG-1162A', 0, '-', 'MFG-1162A', 'FG', '-', 'Bright1', 'ROUND1', '32.00', '', '', 268, 268, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:11:02', '', 0, 0, 639, '-', 'BARS'),
(758, '2017-11-01', 'MFG-1228A', 0, '-', 'MFG-1228A', 'FG', '-', 'Bright1', 'PROFILE', '15.10', '', '', 183, 183, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:12:15', '', 0, 0, 640, '-', 'BARS'),
(759, '2017-11-01', 'MFG-1264A', 0, '-', 'MFG-1264A', 'FG', '-', 'Bright1', 'ROUND1', '12.58', '', '', 67, 67, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:12:56', '', 0, 0, 641, '-', 'BARS'),
(760, '2017-11-01', 'MFG-1288', 0, '-', 'MFG-1288', 'FG', '-', 'Bright1', 'ROUND1', '6.42', '', '', 705, 705, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:13:58', '', 0, 0, 642, '-', 'BARS'),
(761, '2017-11-01', 'MFG-1324A', 0, '-', 'MFG-1324A', 'FG', '-', 'Bright1', 'ROUND1', '27.00', '', '', 60, 60, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:20:45', '', 0, 0, 643, '-', 'BARS'),
(762, '2017-11-01', 'MFG-1329A', 0, '-', 'MFG-1329A', 'FG', '-', 'Bright1', 'ROUND1', '7.10', '', '', 17, 17, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:21:40', '', 0, 0, 644, '-', 'BARS'),
(763, '2017-11-01', 'MFG-1342E', 0, '-', 'MFG-1342E', 'FG', '-', 'Bright1', 'ROUND1', '10.05', '', '', 459, 459, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:22:22', '', 0, 0, 645, '-', 'BARS'),
(764, '2017-11-01', 'MFG-1316', 0, '-', 'MFG-1316', 'FG', '-', 'Bright1', 'ROUND1', '18.00', '', '', 55, 55, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:23:28', '', 0, 0, 646, '-', 'BARS'),
(765, '2017-11-01', 'MFG-1348B', 0, '-', 'MFG-1348B', 'FG', '-', 'Bright1', 'ROUND1', '24.50', '', '', 1159, 1159, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:24:18', '', 0, 0, 647, '-', 'BARS'),
(766, '2017-11-01', 'MFG-1367B', 0, '-', 'MFG-1367B', 'FG', '-', 'Bright1', 'ROUND1', '19.80', '', '', 2482, 2482, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE', '2017-11-23 07:29:07', '', 0, 0, 648, '-', 'BARS'),
(769, '2017-11-01', 'MFG-1367A', 0, '-', 'MFG-1367A', 'FG', '-', 'Bright1', 'ROUND1', '20.30', '', '', 2376, 2376, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:35:08', '', 0, 0, 651, '-', 'BARS'),
(770, '2017-11-01', 'MFG-1371B', 0, '-', 'MFG-1371B', 'FG', '-', 'Bright1', 'ROUND1', '13.00', '', '', 1318, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:35:53', '', 1, 0, 652, '-', 'BARS'),
(771, '2017-11-01', 'MFG-1371A', 0, '-', 'MFG-1371A', 'FG', '-', 'Bright1', 'ROUND1', '13.00', '', '', 1352, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:36:35', '', 1, 0, 653, '-', 'BARS'),
(772, '2017-11-01', 'MFG-1295', 0, '-', 'MFG-1295', 'FG', '-', 'Bright1', 'ROUND1', '13.00', '', '', 1425, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:37:39', '', 1, 0, 654, '-', 'BARS'),
(773, '2017-11-01', 'MFG-1355B', 0, '-', 'MFG-1355B', 'FG', '-', 'Bright1', 'HEXAGON', '19', '', '', 11, 11, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 07:38:27', '', 0, 0, 655, '-', 'BARS'),
(774, '2017-11-01', 'MFG-1355E', 0, '-', 'MFG-1355E', 'FG', '-', 'Bright1', 'ROUND1', '23.00', '', '', 1425, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 08:34:13', '', 1, 0, 656, '-', 'BARS'),
(775, '2017-11-01', 'MFG-1355G', 0, '-', 'MFG-1355G', 'FG', '-', 'Bright1', 'ROUND1', '23.00', '', '', 1201, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 08:35:17', '', 1, 0, 657, '-', 'BARS'),
(776, '2017-11-01', 'MFG-1377A', 0, '-', 'MFG-1377A', 'FG', '-', 'Bright1', 'ROUND1', '15.00', '', '', 1330, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 08:36:24', '', 1, 0, 658, '-', 'BARS'),
(777, '2017-11-01', 'MFG-1388B', 0, '-', 'MFG-1388B', 'FG', '-', 'Bright1', 'ROUND1', '15.00', '', '', 1436, 1436, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 08:37:06', '', 0, 0, 659, '-', 'BARS'),
(778, '2017-11-01', 'MKT-1172', 0, '-', 'MKT-1172', 'GR/BP', '-', 'Bright1', 'ROUND1', '25.34', '', '', 374, 374, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 08:41:12', '', 0, 0, 660, '-', 'BARS'),
(779, '2017-11-01', 'IMP-366', 0, '-', 'IMP-366', 'GR/BP', '-', 'Bright1', 'ROUND1', '9.35', '', '', 554, 554, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 08:41:56', '', 0, 0, 661, '-', 'BARS'),
(780, '2017-11-01', 'MKT-1001', 0, '-', 'MKT-1001', 'GR/BP', '-', 'Bright1', 'ROUND1', '10.9', '', '', 1366, 1366, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 08:45:23', '', 0, 0, 662, '-', 'BARS'),
(781, '2017-11-01', 'MFG-1034', 0, '-', 'MFG-1034', 'GR/BP', '-', 'Bright1', 'ROUND1', '55.05', '', '', 44, 44, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 08:46:25', '', 0, 0, 663, '-', 'BARS'),
(782, '2017-11-01', 'H-113', 0, '-', 'H-113', 'GR/BP', '-', 'Bright1', 'ROUND1', '7.85', '', '', 149, 149, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 08:47:18', '', 0, 0, 664, '-', 'BARS'),
(783, '2017-11-01', 'H-284', 0, '-', 'H-284', 'GR/BP', '-', 'Bright1', 'ROUND1', '5.90', '', '', 235, 235, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 08:48:12', '', 0, 0, 665, '-', 'BARS'),
(784, '2017-11-01', 'MKT-869', 0, '-', 'MKT-869', 'GR/BP', '-', 'Bright1', 'ROUND1', '22.40', '', '', 105, 105, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 08:49:01', '', 0, 0, 666, '-', 'BARS'),
(785, '2017-11-01', 'MFG-1066A', 0, '-', 'MFG-1066A', 'GR/BP', '-', 'Bright1', 'ROUND1', '12.30', '', '', 48, 48, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 08:51:47', '', 0, 0, 667, '-', 'BARS'),
(786, '2017-11-01', 'MFG-1348A/DB', 0, '-', 'MFG-1348A/DB', 'FG', '-', 'Bright1', 'ROUND1', '24.50', '', '', 1196, 1196, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 09:03:48', '', 0, 0, 668, '-', 'BARS'),
(787, '2017-11-01', 'MFG-1355B/DB', 0, '-', 'MFG-1355B/DB', 'FG', '-', 'Bright1', 'ROUND1', '23.00', '', '', 1689, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 09:08:05', '', 1, 0, 669, '-', 'BARS'),
(788, '2017-11-01', 'MFG-1348A/DB1', 0, '-', 'MFG-1348A/DB1', 'FG', '-', 'Bright1', 'HEXAGON', '19.00', '', '', 69, 69, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 09:09:04', '', 0, 0, 670, '-', 'BARS'),
(789, '2017-11-01', 'H-386/DB', 0, '-', 'H-386/DB', 'GR/BP', '-', 'Bright1', 'ROUND1', '25.00', '', '', 405, 405, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 09:10:32', '', 0, 0, 671, '-', 'BARS'),
(790, '2017-11-01', 'H-386/DB1', 0, '-', 'H-386/DB1', 'GR/BP', '-', 'Bright1', 'ROUND1', '25.40', '', '', 853, 853, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 09:11:21', '', 0, 0, 672, '-', 'BARS'),
(791, '2017-11-01', 'MKT-1001/DB', 0, '-', 'MKT-1001/DB', 'GR/BP', '-', 'Bright1', 'ROUND1', '11.05', '', '', 848, 848, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 09:12:03', '', 0, 0, 673, '-', 'BARS'),
(792, '2017-11-01', 'H-092/DB', 0, '-', 'H-092/DB', 'GR/BP', '-', 'Bright1', 'ROUND1', '12.80', '', '', 254, 254, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 09:12:47', '', 0, 0, 674, '-', 'BARS'),
(793, '2017-11-01', 'MFG-1066A/DB', 0, '-', 'MFG-1066A/DB', 'GR/BP', '-', 'Bright1', 'ROUND1', '12.30', '', '', 48, 48, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 09:13:38', '', 0, 0, 675, '-', 'BARS'),
(794, '2017-11-01', 'MFG-1348B/DB', 0, '-', 'MFG-1348B/DB', 'FG', '-', 'Bright1', 'ROUND1', '24.50', '', '', 1023, 1023, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 09:24:06', '', 0, 0, 676, '-', 'BARS'),
(795, '2017-11-01', 'MFG-1377B', 0, '-', 'MFG-1377B', 'FG', '-', 'Bright1', 'ROUND1', '15.00', '', '', 1436, 0, 0, 0, 'Bright1', 1, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-23 11:08:07', '', 1, 0, 677, '-', 'BARS'),
(796, '2017-11-13', 'MFG-1331', 0, 'CDM', 'MFG-1331CDM1', 'NA1', '-', 'Bright1', 'ROUND1', '18.00', '20.00', '', 1280, 0, 0, 1367, 'Bright1', 1, 67, 5, 42, 45, 3.29188002926116, NULL, '', '2017-11-23 12:26:51', 'MFG-1331CDM1', 2, 0, 0, '', 'BARS'),
(797, '2017-11-13', 'MFG-1351A', 0, 'DB', 'MFG-1351ADB1', 'NA1', '-', 'Bright1', 'ROUND1', '18.00', '20.00', '', 1140, 0, 0, 1146, 'Bright1', 1, 67, 5, 0, 6, 0.523560209424084, NULL, '', '2017-11-23 12:29:44', 'MFG-1351ADB1', 1, 0, 0, '', 'BARS'),
(798, '2017-11-15', 'MFG-1386A', 0, 'CDM', 'MFG-1386ACDM2', 'NA1', '-', 'Bright1', 'ROUND1', '10.27', '12.00', '', 698, 698, 0, 728, 'Bright1', 0, 67, 5, 0, 30, 4.12087912087912, NULL, '', '2017-11-24 05:50:02', 'MFG-1386ACDM2', 0, 0, 0, '', 'BARS'),
(799, '2017-11-15', 'MFG-1348A', 0, 'DB', 'MFG-1348ADB1', 'NA1', '-', 'Bright1', 'ROUND1', '23.20', '25.00', '', 1325, 0, 0, 1355, 'Bright1', 1, 67, 5, 23, 7, 0.516605166051661, NULL, '', '2017-11-24 05:51:43', 'MFG-1348ADB1', 1, 0, 0, '', 'BARS'),
(801, '2017-11-16', 'MFG-1387I', 0, 'CDM', 'MFG-1387ICDM1', 'NA1', '-', 'Bright1', 'ROUND1', '11.87', '13.00', '', 1448, 0, 0, 1475, 'Bright1', 1, 67, 5, 0, 27, 1.83050847457627, NULL, '', '2017-11-24 05:54:26', 'MFG-1387ICDM1', 1, 0, 0, '', 'BARS'),
(802, '2017-11-16', 'MFG-1387J', 0, 'CDM', 'MFG-1387JCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '11.87', '13.00', '', 1444, 0, 0, 1468, 'Bright1', 1, 67, 5, 0, 24, 1.63487738419619, NULL, '', '2017-11-24 05:54:57', 'MFG-1387JCDM1', 1, 0, 0, '', 'BARS'),
(803, '2017-11-16', 'MFG-1387N', 0, 'CDM', 'MFG-1387NCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '11.87', '13.00', '', 1508, 0, 0, 1522, 'Bright1', 1, 67, 5, 0, 14, 100, NULL, '', '2017-11-24 05:55:31', 'MFG-1387NCDM1', 1, 0, 0, '', 'BARS'),
(804, '2017-11-17', 'MFG-1387G', 0, 'CDM', 'MFG-1387GCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '11.87', '13.00', '', 1518, 0, 0, 1526, 'Bright1', 1, 67, 5, 0, 8, 100, NULL, '', '2017-11-24 05:55:57', 'MFG-1387GCDM1', 1, 0, 0, '', 'BARS'),
(805, '2017-11-17', 'MFG-1387H', 0, 'CDM', 'MFG-1387HCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '11.87', '13.00', '', 1512, 0, 0, 1522, 'Bright1', 1, 67, 5, 0, 10, 100, NULL, '', '2017-11-24 05:56:42', 'MFG-1387HCDM1', 1, 0, 0, '', 'BARS'),
(806, '2017-11-17', 'MFG-1387D', 0, 'CDM', 'MFG-1387DCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '11.87', '13.00', '', 1505, 0, 0, 1522, 'Bright1', 1, 67, 5, 0, 17, 100, NULL, '', '2017-11-24 05:58:33', 'MFG-1387DCDM1', 1, 0, 0, '', 'BARS'),
(807, '2017-11-18', 'MFG-1387C', 0, 'CDM', 'MFG-1387CCDM1', 'NA1', '-', 'Bright1', 'ROUND1', '11.87', '13.00', '', 1520, 0, 0, 1525, 'Bright1', 1, 67, 5, 0, 5, 0.327868852459016, NULL, '', '2017-11-24 06:00:14', 'MFG-1387CCDM1', 1, 0, 0, '', 'BARS'),
(808, '2017-11-18', 'MFG-1382B', 0, 'DB', 'MFG-1382BDB1', 'NA1', '-', 'Bright1', 'ROUND1', '24.00', '25.00', '', 1461, 1461, 0, 1491, 'Bright1', 0, 67, 5, 0, 30, 2.01207243460765, NULL, '', '2017-11-24 06:03:42', 'MFG-1382BDB1', 0, 0, 0, '', 'BARS'),
(809, '2017-11-18', 'MFG-1382I', 0, 'DB', 'MFG-1382IDB1', 'NA1', '-', 'Bright1', 'ROUND1', '24.00', '25.00', '', 1450, 1450, 0, 1481, 'Bright1', 0, 67, 5, 0, 31, 2.09318028359217, NULL, '', '2017-11-24 06:04:07', 'MFG-1382IDB1', 0, 0, 0, '', 'BARS'),
(810, '2017-11-18', 'MFG-1382D', 0, 'DB', 'MFG-1382DDB1', 'NA1', '-', 'Bright1', 'ROUND1', '24.00', '25.00', '', 1444, 1444, 0, 1479, 'Bright1', 0, 67, 5, 0, 35, 2.36646382691007, NULL, '', '2017-11-24 06:04:33', 'MFG-1382DDB1', 0, 0, 0, '', 'BARS'),
(811, '2017-11-17', 'MFG-1384A', 0, 'DB', 'MFG-1384ADB1/24.10', 'NA1', '-', 'Bright1', 'ROUND1', '24.10', '25.00', '', 1433, 1433, 0, 1470, 'Bright1', 0, 67, 5, 10, 27, 1.83673469387755, NULL, '', '2017-11-24 06:05:34', 'MFG-1384ADB1', 0, 0, 0, '', 'BARS'),
(812, '2017-11-17', 'MFG-1384B', 0, 'DB', 'MFG-1384BDB1', 'NA1', '-', 'Bright1', 'ROUND1', '24.10', '25.00', '', 1291, 1291, 0, 1321, 'Bright1', 0, 67, 5, 10, 20, 1.51400454201363, NULL, '', '2017-11-24 06:05:55', 'MFG-1384BDB1', 0, 0, 0, '', 'BARS'),
(813, '2017-11-18', 'MFG-1385C', 0, 'CDM', 'MFG-1385CCDM1', 'NA1', '-', 'Bright1', 'HEXAGON', '11.00', '14.00', '', 1475, 0, 0, 1503, 'Bright1', 1, 67, 5, 0, 28, 1.86294078509647, NULL, '', '2017-11-24 06:07:35', 'MFG-1385CCDM1', 1, 0, 0, '', 'BARS'),
(814, '2017-11-19', 'MFG-1385A', 0, 'CDM', 'MFG-1385ACDM1', 'NA1', '-', 'Bright1', 'HEXAGON', '11.00', '14.00', '', 1482, 0, 0, 1493, 'Bright1', 1, 67, 5, 0, 11, 0.736771600803751, NULL, '', '2017-11-24 06:08:02', 'MFG-1385ACDM1', 1, 0, 0, '', 'BARS'),
(815, '2017-11-19', 'MFG-1385B', 0, 'CDM', 'MFG-1385BCDM1', 'NA1', '-', 'Bright1', 'SQUARE', '10.00', '14.00', '', 1469, 0, 0, 1489, 'Bright1', 1, 67, 5, 0, 20, 1.34318334452653, NULL, '', '2017-11-24 06:08:45', 'MFG-1385BCDM1', 1, 0, 0, '', 'BARS'),
(816, '2017-11-20', 'MFG-1394', 0, '-', 'MFG-1394', 'RM', '-', 'SAE 1018', 'ROUND1', '28.00', '', '', 2951, 2951, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-27 07:31:37', '', 0, 0, 678, '3137', 'LONG BARS'),
(817, '2017-11-20', 'MFG-1395', 0, '-', 'MFG-1395', 'RM', '-', 'SAE 1018', 'ROUND1', '32.00', '', '', 2852, 2852, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-27 07:32:59', '', 0, 0, 679, '3137', 'LONG BARS'),
(818, '2017-11-20', 'MFG-1396', 0, '-', 'MFG-1396', 'RM', '-', 'EN 8D', 'ROUND1', '28.00', '', '', 2876, 2876, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-27 07:34:27', '', 0, 0, 680, '3137', 'LONG BARS'),
(819, '2017-11-20', 'MFG-1397', 0, '-', 'MFG-1397', 'RM', '-', 'EN 8D', 'ROUND1', '32.00', '', '', 1650, 1650, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-27 08:20:52', '', 0, 0, 681, '-', 'LONG BARS'),
(820, '2017-11-01', 'MKT-564', 0, '-', 'MKT-564', 'A', '-', 'Bright1', 'ROUND1', '33.00', '', '', 1250, 1250, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 05:45:10', '', 0, 0, 682, '-', 'BARS'),
(821, '2017-11-01', 'MFG-JB2B', 0, '-', 'MFG-JB2B', 'RM', '-', 'EN 1A (NL)', 'ROUND1', '20.00', '', '', 2964, 2964, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 05:54:27', '', 0, 0, 683, '1803', 'LONG BARS'),
(822, '2017-11-01', 'H-345', 0, '-', 'H-345', 'A', '-', 'Bright1', 'HEXAGON', '24.00', '', '', 837, 837, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 05:57:44', '', 0, 0, 684, '-', 'BARS'),
(823, '2017-11-01', 'MKT-1365', 0, '-', 'MKT-1365', '1-238', '-', 'Bright1', 'ROUND1', '13.2', '', '', 1238, 1238, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, 'FREEFILD', '2017-11-29 06:08:58', '', 0, 0, 685, '-', 'BARS'),
(824, '2017-11-01', 'MKT-1208', 0, '-', 'MKT-1208', '3-490', '-', 'Bright1', 'ROUND1', '22.30', '', '', 800, 800, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 06:25:46', '', 0, 0, 686, '-', 'BARS'),
(825, '2017-11-01', 'MFG-1121B', 0, '-', 'MFG-1121B', 'B', '-', 'Bright1', 'ROUND1', '50.50', '', '', 1740, 1740, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 06:35:50', '', 0, 0, 687, '-', 'BARS'),
(826, '2017-11-01', 'MKT-438', 0, '-', 'MKT-438', 'B', '-', 'Bright1', 'ROUND1', '40.00', '', '', 595, 595, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 07:03:46', '', 0, 0, 688, '-', 'BARS'),
(827, '2017-11-01', 'MFG-1123A', 0, '-', 'MFG-1123A', '0-720', '-', 'Bright1', 'ROUND1', '50.50', '', '', 720, 720, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 07:19:33', '', 0, 0, 689, '-', 'BARS'),
(828, '2017-11-01', 'MFG-1121A', 0, '-', 'MFG-1121A', '493', '-', 'Bright1', 'ROUND1', '50.50', '', '', 493, 493, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 07:33:43', '', 0, 0, 690, '-', 'BARS'),
(829, '2017-11-01', 'MFG-1285A', 0, '-', 'MFG-1285A', '493', '-', 'Bright1', 'ROUND1', '10.15', '', '', 67, 67, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 08:36:48', '', 0, 0, 691, '-', 'BARS'),
(830, '2017-11-01', 'MFG-1285 A', 0, '-', 'MFG-1285 A', '493', '-', 'Bright1', 'ROUND1', '10.10', '', '', 97, 97, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 08:38:58', '', 0, 0, 692, '-', 'BARS'),
(831, '2017-11-01', 'H-136', 0, '-', 'H-136', 'A', '-', 'Bright1', 'ROUND1', '38.00', '', '', 3100, 3100, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 08:49:43', '', 0, 0, 693, '-', 'BARS'),
(832, '2017-11-01', 'H-137', 0, '-', 'H-137', 'A', '-', 'Bright1', 'ROUND1', '38.00', '', '', 1971, 1971, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 08:54:45', '', 0, 0, 694, '-', 'BARS'),
(833, '2017-11-01', 'MKT-491', 0, '-', 'MKT-491', 'A', '-', 'Bright1', 'ROUND1', '47.00', '', '', 2420, 2420, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 09:00:13', '', 0, 0, 695, '-', 'BARS'),
(834, '2017-11-01', 'MKT-492', 0, '-', 'MKT-492', 'A', '-', 'H 11', 'FLAT', '305.17', '', '', 170, 170, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, 'OPENING BALANCE ( 305 * 175 )', '2017-11-29 09:05:48', '', 0, 0, 696, '-', 'LONG BARS'),
(835, '2017-11-01', 'H-139', 0, '-', 'H-139', 'A', '-', 'SAE 8630', 'ROUND1', '46.00', '', '', 2334, 2334, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 09:17:26', '', 0, 0, 697, '-', 'BARS'),
(836, '2017-11-01', 'H-140', 0, '-', 'H-140', 'A', '-', 'SAE 8630', 'ROUND1', '46.00', '', '', 984, 984, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 09:23:31', '', 0, 0, 698, '-', 'BARS'),
(837, '2017-11-01', 'MKT-1171', 0, '-', 'MKT-1171', 'B', '-', 'Bright1', 'ROUND1', '05.00', '', '', 870, 870, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-29 09:46:54', '', 0, 0, 699, '-', 'BARS'),
(838, '2017-11-01', 'IMP-002', 0, '-', 'IMP-002', 'IMPORT', '-', 'Bright1', 'ROUND1', '11.30', '', '', 694, 694, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-11-30 06:41:21', '', 0, 0, 700, '-', 'BARS'),
(839, '2017-11-23', 'MFG-1388', 0, '-', 'MFG-1388', 'RM', '-', 'Bright1', 'ROUND1', '19.85', '', '', 9085, 9085, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-12-20 05:12:24', '', 0, 0, 701, 'JW-32', 'BARS'),
(840, '2017-11-29', 'MFG-1398A', 0, '-', 'MFG-1398A', 'RM', '-', 'EN 8D', 'ROUND1', '16.00', '', '', 1512, 1512, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-12-20 05:33:51', '', 0, 0, 702, '2229', 'LONG BARS'),
(841, '2017-11-29', 'MFG-1398B', 0, '-', 'MFG-1398B', 'RM', '-', 'Bright1', 'ROUND1', '16.00', '', '', 2083, 2083, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-12-20 05:35:32', '', 0, 0, 703, '2230', 'LONG BARS'),
(842, '2017-12-02', 'MKT-1401A', 0, '-', 'MKT-1401A', 'RM', '-', 'EN 31', 'ROUND1', '10.30', '', '', 944, 944, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-12-20 06:08:39', '', 0, 0, 704, '1002', 'LONG BARS'),
(843, '2017-12-02', 'MKT-1401B', 0, '-', 'MKT-1401B', 'RM', '-', 'EN 31', 'ROUND1', '10.30', '', '', 965, 965, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-12-20 06:09:40', '', 0, 0, 705, '1002', 'LONG BARS'),
(844, '2017-12-02', 'MKT-1401C', 0, '-', 'MKT-1401C', 'RM', '-', 'Bright1', 'ROUND1', '10.30', '', '', 947, 947, 0, 0, 'Bright1', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-12-20 06:10:47', '', 0, 0, 706, '1002', 'LONG BARS'),
(845, '2017-12-02', 'MKT-1401D', 0, '-', 'MKT-1401D', 'RM', '-', 'EN 31', 'ROUND1', '10.30', '', '', 900, 900, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-12-20 06:11:54', '', 0, 0, 707, '1002', 'LONG BARS'),
(846, '2017-12-02', 'MKT-1404E', 0, '-', 'MKT-1404E', 'RM', '-', 'EN 31', 'ROUND1', '10.30', '', '', 953, 953, 0, 0, 'BLACK', 0, 67, 5, NULL, NULL, NULL, NULL, '', '2017-12-20 06:12:56', '', 0, 0, 708, '1002', 'LONG BARS'),
(847, '2017-11-12', 'NA-', 0, NULL, 'NA--JW2', 'A', '-', 'EN-9', 'ROUND1', '1211', '', '', 100, 100, 0, 138, 'Bright1', 0, 67, 5, 3, 35, 25.3623188405797, 2, '', '2018-01-30 12:00:37', 'NA--JW2', 0, 0, 0, '', 'BARS'),
(848, '2017-10-01', 'MKT-1111', 0, 'CDM', 'MKT-1111CDM1', '109', 'india', 'Bright1', 'Square', '80', '25.10', '111', 10, 10, 0, 676, 'Bright1', 0, 67, 5, 5, 661, 97.7810650887574, NULL, '', '2018-02-01 04:38:20', 'MKT-1111CDM1', 0, 0, 0, '', 'sdfsdfdf'),
(849, '2017-12-02', 'MKT-406', 0, 'CDM', 'MKT-406CDM1/100', '16-17', '-', 'Bright1', 'ROUND1', '15.20', '15.20', '', 50, 50, 0, 610, 'Bright1', 0, 67, 5, 20, 540, 88.5245901639344, NULL, '', '2018-02-01 04:46:32', 'MKT-406CDM1', 0, 0, 0, '', 'test2');

-- --------------------------------------------------------

--
-- Table structure for table `productionin`
--

CREATE TABLE `productionin` (
  `id` int(11) NOT NULL,
  `processType` int(11) NOT NULL,
  `code` text NOT NULL,
  `productionCode` text NOT NULL,
  `purchasedWeight` int(11) NOT NULL,
  `sendFor` int(11) NOT NULL,
  `jobWorker` varchar(1000) DEFAULT NULL,
  `flag` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `fyId` int(11) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bilNo` varchar(1000) NOT NULL,
  `make` varchar(1000) NOT NULL,
  `grade` varchar(1000) NOT NULL,
  `shape` varchar(1000) NOT NULL,
  `surface` varchar(1000) NOT NULL,
  `lotNo` varchar(1000) NOT NULL,
  `size` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productionout`
--

CREATE TABLE `productionout` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `productionCode` text NOT NULL,
  `productWeight` int(11) NOT NULL,
  `newProdWeight` int(11) NOT NULL,
  `remainingWeight` int(11) NOT NULL,
  `outFrom` int(11) NOT NULL,
  `jobWorker` varchar(1000) DEFAULT NULL,
  `rLoss` double NOT NULL,
  `nrLoss` double NOT NULL,
  `percentageLoss` double NOT NULL,
  `flag` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `fyId` int(11) NOT NULL,
  `make` varchar(1000) NOT NULL,
  `grade` varchar(500) NOT NULL,
  `shape` varchar(500) NOT NULL,
  `surface` varchar(500) NOT NULL,
  `lotNo` varchar(1000) NOT NULL,
  `size` double NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchasedtrade`
--

CREATE TABLE `purchasedtrade` (
  `purchaseId` int(11) NOT NULL,
  `lotNo` varchar(50) NOT NULL,
  `date` text NOT NULL,
  `billNo` varchar(50) NOT NULL,
  `party` varchar(50) NOT NULL,
  `make` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `shape` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `invoiceWeight` varchar(50) NOT NULL,
  `outsideWeight` varchar(50) NOT NULL,
  `surface` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `inhouseWeight` int(50) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchasein`
--

CREATE TABLE `purchasein` (
  `id` int(11) NOT NULL,
  `lotNo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `short`
--

CREATE TABLE `short` (
  `id` int(11) NOT NULL,
  `fyId` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `lotNo` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `heatNo` varchar(500) NOT NULL,
  `party` varchar(500) NOT NULL,
  `make` varchar(500) NOT NULL,
  `code` varchar(5000) NOT NULL,
  `grade` varchar(500) NOT NULL,
  `shape` varchar(500) NOT NULL,
  `size` varchar(500) NOT NULL,
  `actualWeight` double NOT NULL,
  `remainingWeight` int(11) NOT NULL,
  `surface` varchar(50) NOT NULL,
  `flag` int(11) NOT NULL,
  `transporterId` text,
  `lorryNo` varchar(200) DEFAULT NULL,
  `freightFixed` text,
  `cnfFobId` int(11) DEFAULT NULL,
  `remarks` text,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `proId` varchar(5000) NOT NULL,
  `billNo` varchar(100) NOT NULL,
  `codewt` double NOT NULL,
  `codeDate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testcustomer`
--

CREATE TABLE `testcustomer` (
  `CustId` varchar(50) NOT NULL,
  `CutName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trade`
--

CREATE TABLE `trade` (
  `purchaseId` int(11) NOT NULL,
  `fyId` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `lotNo` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `heatNo` varchar(500) NOT NULL,
  `party` varchar(500) NOT NULL,
  `make` varchar(500) NOT NULL,
  `code` varchar(5000) NOT NULL,
  `grade` varchar(500) NOT NULL,
  `shape` varchar(500) NOT NULL,
  `size` varchar(500) NOT NULL,
  `actualWeight` double NOT NULL,
  `remainingWeight` int(11) NOT NULL,
  `surface` varchar(50) NOT NULL,
  `flag` int(11) NOT NULL,
  `transporterId` text,
  `lorryNo` varchar(200) DEFAULT NULL,
  `freightFixed` text,
  `cnfFobId` varchar(50) DEFAULT NULL,
  `remarks` text,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `proId` int(11) NOT NULL,
  `billNo` varchar(100) NOT NULL,
  `codewt` double NOT NULL,
  `codeDate` varchar(100) NOT NULL,
  `conditn` varchar(100) DEFAULT NULL,
  `invoiceWt` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trade`
--

INSERT INTO `trade` (`purchaseId`, `fyId`, `companyId`, `lotNo`, `date`, `heatNo`, `party`, `make`, `code`, `grade`, `shape`, `size`, `actualWeight`, `remainingWeight`, `surface`, `flag`, `transporterId`, `lorryNo`, `freightFixed`, `cnfFobId`, `remarks`, `createdOn`, `proId`, `billNo`, `codewt`, `codeDate`, `conditn`, `invoiceWt`) VALUES
(1, 67, 5, 'FG', '2017-11-04 00:00:00', '', 'HUSIRAZ ENGINEERING PVT LTD', '-', 'MFG-1371B', 'EN 1 A (L)', 'ROUND1', '13.00', 1318, 0, 'Bright1', 0, 'POONA MOTORS', 'MH.12.FZ.4547', '8000/-', 'CNF', '', '2017-11-23 09:30:43', 770, '0104', 1318, '01-November-2017', 'BARS', 1325),
(2, 67, 5, 'FG', '2017-11-04 00:00:00', '', 'HUSIRAZ ENGINEERING PVT LTD', '-', 'MFG-1377A', 'EN 1 A (L)', 'ROUND1', '15.00', 1330, 0, 'Bright1', 0, 'POONA MOTORS', 'MH.12.FZ.4547', '8000/-', 'CNF', '', '2017-11-23 09:35:09', 776, '0104', 1330, '01-November-2017', 'BARS', 1335),
(3, 67, 5, 'FG', '2017-11-09 00:00:00', '', 'NIKHIL INDUSTRIES', '-', 'MFG-1371A', 'EN 1 A (L)', 'ROUND1', '13.00', 1352, 0, 'Bright1', 0, 'SUKHI TRANSPORT', 'MH.16.AY.7147', '1.25/-', 'CNF', '', '2017-11-23 09:43:32', 771, '0111', 1352, '01-November-2017', 'BARS', 1353),
(4, 67, 5, 'FG', '2017-11-09 00:00:00', '', 'NIKHIL INDUSTRIES', '-', 'MFG-1295', 'EN 1 A (L)', 'ROUND1', '13.00', 1425, 0, 'Bright1', 0, 'SUKHI TRANSPORT', 'MH.16.AY.7147', '1.25/-', 'CNF', '', '2017-11-23 09:45:24', 772, '0111', 1425, '01-November-2017', 'BARS', 1427),
(5, 67, 5, 'NA1', '2017-11-09 00:00:00', '', 'NIKHIL INDUSTRIES', '-', 'MFG-1375ECDM1', 'EN 1 A (L)', 'ROUND1', '9.00', 1114, 0, 'Bright1', 0, 'SUKHI TRANSPORT', 'MH.12.AY.7147', '1.25/-', 'CNF', '', '2017-11-23 10:57:59', 726, '0111', 1114, '08-November-2017', 'BARS', 1114),
(6, 67, 5, 'NA1', '2017-11-09 00:00:00', '', 'NIKHIL INDUSTRIES', '-', 'MFG-1375BCDM1', 'EN 1 A (L)', 'ROUND1', '9.00', 1100, 0, 'Bright1', 0, 'SUKHI TRANSPORT', 'MH.16.AY.7147', '1.25/-', 'CNF', '', '2017-11-23 10:59:00', 727, '0111', 1100, '08-November-2017', 'BARS', 1106),
(7, 67, 5, 'FG', '2017-11-09 00:00:00', '', 'NIKHIL INDUSTRIES', '-', 'MFG-1377B', 'EN 1 A (L)', 'ROUND1', '15.00', 1436, 0, 'Bright1', 0, 'SUKHI TRANSPORT', 'MH.16.AY.7147', '1.25/-', 'CNF', '', '2017-11-23 11:09:30', 795, '0111', 1436, '01-November-2017', 'BARS', 1440),
(8, 67, 5, 'FG', '2017-11-08 00:00:00', '', 'ARAVALLI GEARS PVT LTD', '-', 'MFG-1355B/DB', 'EN 1A (NL)', 'ROUND1', '23.00', 1689, 0, 'Bright1', 0, 'Somnath Transport', 'MH.04.CP.2564', '800/-', 'CNF', '', '2017-11-23 11:12:08', 787, '0108', 1689, '01-November-2017', 'BARS', 1694),
(9, 67, 5, 'FG', '2017-11-08 00:00:00', '', 'ARAVALLI GEARS PVT LTD', '-', 'MFG-1355E', 'EN 1A (NL)', 'ROUND1', '23.00', 1425, 0, 'Bright1', 0, 'Somnath Transport', 'MH.04.CP.2564', '800/-', 'CNF', '', '2017-11-23 11:12:57', 774, '0108', 1425, '01-November-2017', 'BARS', 1430),
(10, 67, 5, 'FG', '2017-11-08 00:00:00', '', 'ARAVALLI GEARS PVT LTD', '-', 'MFG-1355G', 'EN 1A (NL)', 'ROUND1', '23.00', 1201, 0, 'Bright1', 0, 'Somnath Transport', 'MH.04.CP.2564', '800/-', 'CNF', '', '2017-11-23 11:13:46', 775, '0108', 1201, '01-November-2017', 'BARS', 1206),
(11, 67, 5, 'NA1', '2017-11-08 00:00:00', '', 'PRAVIN AUTO ENGINEERING PVT LTD', '-', 'MFG-1331DB1', 'SAE 1018', 'ROUND1', '19.20', 1079, 0, 'Bright1', 0, 'Somnath Transport', 'MH.04.CP.2564', '1/-', 'CNF', '', '2017-11-23 11:16:16', 716, '0109', 1079, '04-November-2017', 'BARS', 1085),
(12, 67, 5, 'NA1', '2017-11-04 00:00:00', '', 'STARWAYS PRECISION PVT LTD', '-', 'MFG-1382CDB1', 'EN 1A (NL)', 'ROUND1', '24.00', 1415, 0, 'Bright1', 0, 'POONA MOTORS', 'MH.12.FZ.4547', '8000/-', 'CNF', '', '2017-11-23 11:19:26', 717, '0103', 1415, '01-November-2017', 'BARS', 1420),
(13, 67, 5, 'NA1', '2017-11-04 00:00:00', '', 'STARWAYS PRECISION PVT LTD', '-', 'MFG-1382EDB1', 'EN 1A (NL)', 'ROUND1', '24.00', 608, 825, 'Bright1', 0, 'POONA MOTORS', 'MH.12.FZ.4547', '8000/-', 'CNF', '', '2017-11-23 11:23:44', 718, '0103', 1433, '01-November-2017', 'BARS', 610),
(14, 67, 5, 'NA1', '2017-11-08 00:00:00', '', 'PRAVIN AUTO ENGINEERING PVT LTD', '-', 'MFG-1353ADB1', 'SAE 1018', 'ROUND1', '25.00', 843, 0, 'Bright1', 0, 'Somnath Transport', 'MH.04.CP.2564', '1/-', 'CNF', '', '2017-11-23 11:25:47', 719, '0109', 843, '05-November-2017', 'BARS', 845),
(15, 67, 5, 'NA1', '2017-11-11 00:00:00', '', 'GANESH AUTO PARTS PVT. LTD.', '-', 'MFG-1353ADB2', 'SAE 1018', 'ROUND1', '27.00', 2081, 0, 'Bright1', 0, 'POONA MOTORS', 'MH.12.LT.5137', '950/-', 'CNF', '', '2017-11-23 11:33:10', 720, '0117', 2081, '06-November-2017', 'BARS', 2085),
(16, 67, 5, 'NA1', '2017-11-11 00:00:00', '', 'GANESH AUTO PARTS PVT. LTD.', '-', 'MFG-1353BDB1', 'SAE 1018', 'ROUND1', '27.00', 364, 0, 'Bright1', 0, 'POONA MOTORS', 'MH.12.LT.5137', '950/-', 'CNF', '', '2017-11-23 11:34:02', 721, '0117', 364, '06-November-2017', 'BARS', 365),
(17, 67, 5, 'NA1', '2017-11-10 00:00:00', '', 'PRECISION INDUSTRIAL CORPORATION', '-', 'MFG-1252ADB1', 'SAE 8620', 'ROUND1', '31.20', 1613, 0, 'Bright1', 0, 'Bechan Transport', 'MH.04.EY.6620', '6000/-', 'CNF', '', '2017-11-23 11:35:19', 722, '0113', 1613, '06-November-2017', 'BARS', 1620),
(18, 67, 5, 'NA1', '2017-11-11 00:00:00', '', 'GANESH AUTO PARTS PVT. LTD.', '-', 'MFG-1361ADB1', '40CR4', 'ROUND1', '28.00', 1087, 0, 'Bright1', 0, 'POONA MOTORS', 'MH.12.LT.5137', '950/-', 'CNF', '', '2017-11-23 11:41:38', 723, '0117', 1087, '06-November-2017', 'BARS', 1090),
(19, 67, 5, 'NA1', '2017-11-11 00:00:00', '', 'V S INDUSTRIES', '-', 'MFG-1380BDB1', 'EN 1 A (L)', 'HEXAGON1', '17.00', 1412, 0, 'Bright1', 0, 'POONA MOTORS', 'MH.12.LT.5137', '950/-', 'CNF', '', '2017-11-23 11:43:20', 724, '0118', 1412, '08-November-2017', 'BARS', 1413),
(20, 67, 5, 'NA1', '2017-11-11 00:00:00', '', 'V S INDUSTRIES', '-', 'MFG-1380ADB1', 'EN 1 A (L)', 'HEXAGON1', '17.00', 1445, 0, 'Bright1', 0, 'POONA MOTORS', 'MH.12.LT.5137', '950/-', 'CNF', '', '2017-11-23 11:44:25', 725, '0118', 1445, '08-November-2017', 'BARS', 1447),
(21, 67, 5, 'RM', '2017-11-11 00:00:00', '', 'SERVICE SYNDICATE', 'JSW', 'MFG-1390CCDM1', 'EN 1A (NL)', 'ROUND1', '12.00', 1110, 0, 'BLACK', 0, 'Somnath Transport', 'MH.04.CP.2564', '800/-', 'CNF', '', '2017-11-23 11:45:49', 729, '0114', 1110, '09-November-2017', 'BARS', 1118),
(22, 67, 5, 'RM', '2017-11-11 00:00:00', '', 'SERVICE SYNDICATE', 'JSW', 'MFG-1390BCDM1', 'EN 1A (NL)', 'ROUND1', '12.00', 1122, 0, 'BLACK', 0, 'Somnath Transport', 'MH.04.CP.2564', '800/-', 'CNF', '', '2017-11-23 11:46:56', 730, '0114', 1122, '09-November-2017', 'BARS', 1130),
(23, 67, 5, 'RM', '2017-11-11 00:00:00', '', 'SERVICE SYNDICATE', 'JSW', 'MFG-1390ACDM1', 'EN 1A (NL)', 'ROUND1', '12.00', 1124, 0, 'BLACK', 0, 'Somnath Transport', 'MH.04.CP.2564', '800/-', 'CNF', '', '2017-11-23 11:47:44', 731, '0114', 1124, '09-November-2017', 'BARS', 1132),
(24, 67, 5, 'NA1', '2017-11-11 00:00:00', '', 'J K TOOLS & FASTENERS', '-', 'MFG-1385ECDM1', 'EN 1 A (L)', 'ROUND1', '12.00', 1476, 0, 'Bright1', 0, 'POONA MOTORS', 'MH.12.FG.3742', '1.50/-', 'CNF', '', '2017-11-23 11:49:57', 734, '0116', 1476, '10-November-2017', 'BARS', 1480),
(25, 67, 5, 'NA1', '2017-11-11 00:00:00', '', 'J K TOOLS & FASTENERS', '-', 'MFG-1385DCDM1', 'EN 1 A (L)', 'ROUND1', '12.00', 655, 0, 'Bright1', 0, 'POONA MOTORS', 'MH.12.FG.3742', '1.50/-', 'CNF', '', '2017-11-23 11:51:32', 735, '0116', 655, '10-November-2017', 'BARS', 660),
(26, 67, 5, 'NA1', '2017-11-12 00:00:00', '', 'YASH EXPORT', '-', 'MFG-1344GCDM1', 'EN 8 M', 'ROUND1', '8.20', 1425, 0, 'Bright1', 0, 'BOMBAY GUJRAT ROADWAYS', 'TS.15.UA.7257', '3.50/-', 'CNF', '', '2017-11-23 11:53:17', 736, '0121', 1425, '11-November-2017', 'BARS', 1430),
(29, 67, 5, 'FG', '2017-11-12 00:00:00', '', 'YASH EXPORT', '-', 'MFG-1344ACDM1', 'EN 8 M', 'ROUND1', '8.20', 1496, 0, 'Bright1', 0, 'BOMBAY GUJRAT ROADWAYS', 'TS.15.UA.7257', '3.50/-', 'CNF', '', '2017-11-23 12:03:14', 737, '0121', 1496, '11-November-2017', 'BARS', 1500),
(30, 67, 5, 'NA1', '2017-11-12 00:00:00', '', 'YASH EXPORT', '-', 'MFG-1344BCDM1', 'EN 8 M', 'square', '8.20', 483, 0, 'Bright1', 0, 'BOMBAY GUJRAT ROADWAYS', 'TS.15.US.7257', '3.50/-', 'CNF', '', '2017-11-23 12:04:25', 738, '0121', 483, '11-November-2017', 'BARS', 490),
(31, 67, 5, 'NA1', '2017-11-15 00:00:00', '', 'PIONEER INDUSTRIES', '-', 'MFG-1375ACDM1', 'EN 1 A (L)', 'ROUND1', '8.90', 1253, 0, 'Bright1', 0, 'M.K. Roadline', 'MH.06.K.8746', '5000/-', 'CNF', '', '2017-11-23 12:06:00', 739, '0122', 1253, '12-November-2017', 'BARS', 1255),
(32, 67, 5, 'NA1', '2017-11-15 00:00:00', '', 'PIONEER INDUSTRIES', '-', 'MFG-1342DCDM1', 'EN 1 A (L)', 'ROUND1', '10.10', 1425, 0, 'Bright1', 0, 'M.K. Roadline', 'MH.06.K.8746', '5000/-', 'CNF', '', '2017-11-23 12:07:49', 743, '0122', 1425, '13-November-2017', 'BARS', 1425),
(33, 67, 5, 'NA1', '2017-11-15 00:00:00', '', 'PIONEER INDUSTRIES', '-', 'MFG-1342BCDM1', 'EN 1 A (L)', 'ROUND1', '10.10', 1460, 0, 'Bright1', 0, 'M.K. Roadline', 'MH.06.K.8746', '5000/-', 'CNF', '', '2017-11-23 12:10:01', 744, '0122', 1460, '13-November-2017', 'BARS', 1461),
(34, 67, 5, 'NA1', '2017-11-15 00:00:00', '', 'PIONEER INDUSTRIES', '-', 'MFG-1386CCDM1', 'EN 1 A (L)', 'ROUND1', '10.10', 1454, 0, 'Bright1', 0, 'M.K. Roadline', 'MH.06.K.8746', '5000/-', 'CNF', '', '2017-11-23 12:10:56', 745, '0122', 1454, '14-November-2017', 'BARS', 1455),
(35, 67, 5, 'NA1', '2017-11-15 00:00:00', '', 'PIONEER INDUSTRIES', '-', 'MFG-1342HCDM1', 'EN 1 A (L)', 'ROUND1', '10.10', 502, 0, 'Bright1', 0, 'M.K. Roadline', 'MH.06.K.8746', '5000/-', 'CNF', '', '2017-11-23 12:11:54', 746, '0122', 502, '15-November-2017', 'BARS', 503),
(36, 67, 5, 'NA1', '2017-11-15 00:00:00', '', 'PIONEER INDUSTRIES', '-', 'MFG-1342CCDM1', 'EN 1 A (L)', 'ROUND1', '10.10', 510, 0, 'Bright1', 0, 'M K ROADLINES', 'MH.06.K.8746', '5000/-', 'CNF', '', '2017-11-23 12:13:07', 747, '0122', 510, '15-November-2017', 'BARS', 511),
(37, 67, 5, 'NA1', '2017-11-17 00:00:00', '', 'TALCO INDIA', '-', 'MFG-1331CDM1', 'SAE 1018', 'ROUND1', '18.00', 1240, 40, 'Bright1', 0, 'Operator Transport', 'MH.04.DS.6396', '1.50/-', 'CNF', '', '2017-11-24 06:23:44', 796, '0123', 1280, '13-November-2017', 'BARS', 1240),
(38, 67, 5, 'NA1', '2017-11-20 00:00:00', '', 'JOSHIRAO ENGINEERING', '-', 'MFG-1351ADB1', 'SAE 1018', 'ROUND1', '18.00', 1140, 0, 'Bright1', 0, 'CHINTAMANI TRANSPORT', 'MH.04.DK.558', '2.00/-', 'CNF', '', '2017-11-24 06:30:22', 797, '0131', 1140, '13-November-2017', 'BARS', 1140),
(39, 67, 5, 'NA1', '2017-11-20 00:00:00', '', 'JOSHIRAO ENGINEERING', '-', 'MFG-1331CDM1', 'SAE 1018', 'ROUND1', '18.00', 40, 0, 'Bright1', 0, 'CHINTAMANI TRANSPORT', 'MH.04.DK.558', '2.00/-', 'CNF', '', '2017-11-24 06:31:19', 796, '0131', 40, '13-November-2017', 'BARS', 40),
(40, 67, 5, 'NA1', '2017-11-15 00:00:00', '', 'PIONEER INDUSTRIES', '-', 'MFG-1386ACDM1', 'EN 1 A (L)', 'ROUND1', '10.27', 698, 0, 'Bright1', 0, 'M K ROADLINES', 'MH.06.K.8746', '5000/-', 'CNF', '', '2017-11-24 06:33:15', 748, '0122', 698, '15-November-2017', 'BARS', 700),
(41, 67, 5, 'NA1', '2017-11-20 00:00:00', '', 'JOSHIRAO ENGINEERING', '-', 'MFG-1348ADB1', 'EN 8D', 'ROUND1', '23.20', 1325, 0, 'Bright1', 0, 'CHINTAMANI TRANSPORT', 'MH.04.DK.558', '2.00/-', 'CNF', '', '2017-11-24 06:36:27', 799, '0130', 1325, '15-November-2017', 'BARS', 1325),
(42, 67, 5, 'NA1', '2017-11-18 00:00:00', '', 'SAMEER AUTO PVT. LTD.', '-', 'MFG-1387ICDM1', 'SAE 1541', 'ROUND1', '11.87', 1448, 0, 'Bright1', 0, 'Operator Transport', 'MH.06.AC.0053', '7500/-', 'CNF', '', '2017-11-24 06:39:14', 801, '0127', 1448, '16-November-2017', 'BARS', 1453),
(43, 67, 5, 'NA1', '2017-11-18 00:00:00', '', 'SAMEER AUTO PVT. LTD.', '-', 'MFG-1387JCDM1', 'SAE 1541', 'ROUND1', '11.87', 1444, 0, 'Bright1', 0, 'Operator Transport', 'MH.06.AC.0053', '7500/-', 'CNF', '', '2017-11-24 06:42:54', 802, '0127', 1444, '16-November-2017', 'BARS', 1449),
(44, 67, 5, 'NA1', '2017-11-18 00:00:00', '', 'SAMEER AUTO PVT. LTD.', '-', 'MFG-1387NCDM1', 'SAE 1541', 'ROUND1', '11.87', 1508, 0, 'Bright1', 0, 'Operator Transport', 'MH.06.AC.0053', '7500/-', 'CNF', '', '2017-11-24 06:43:37', 803, '0127', 1508, '16-November-2017', 'BARS', 1513),
(45, 67, 5, 'NA1', '2017-11-18 00:00:00', '', 'SAMEER AUTO PVT. LTD.', '-', 'MFG-1387GCDM1', 'SAE 1541', 'ROUND1', '11.87', 1518, 0, 'Bright1', 0, 'Operator Transport', 'MH.06.AC.0053', '7500/-', 'CNF', '', '2017-11-24 06:44:19', 804, '0127', 1518, '17-November-2017', 'BARS', 1523),
(46, 67, 5, 'NA1', '2017-11-18 00:00:00', '', 'SAMEER AUTO PVT. LTD.', '-', 'MFG-1387HCDM1', 'SAE 1541', 'ROUND1', '11.87', 1512, 0, 'Bright1', 0, 'Operator Transport', 'MH.06.AC.0053', '7500/-', 'CNF', '', '2017-11-24 06:45:07', 805, '0127', 1512, '17-November-2017', 'BARS', 1517),
(47, 67, 5, 'NA1', '2017-11-18 00:00:00', '', 'SAMEER AUTO PVT. LTD.', '-', 'MFG-1387DCDM1', 'SAE 1541', 'ROUND1', '11.87', 1505, 0, 'Bright1', 0, 'Operator Transport', 'MH.06.AC.0053', '7500/-', 'CNF', '', '2017-11-24 06:45:45', 806, '0127', 1505, '17-November-2017', 'BARS', 1510),
(48, 67, 5, 'NA1', '2017-11-18 00:00:00', '', 'SAMEER AUTO PVT. LTD.', '-', 'MFG-1387CCDM1', 'SAE 1541', 'ROUND1', '11.87', 1520, 0, 'Bright1', 0, 'Operator Transport', 'MH.06.AC.0053', '7500/-', 'CNF', '', '2017-11-24 06:46:23', 807, '0127', 1520, '18-November-2017', 'BARS', 1525),
(52, 67, 5, 'NA1', '2017-11-19 00:00:00', '', 'SELWEL INC', '-', 'MFG-1385CCDM1', 'EN 1 A (L)', 'HEXAGON1', '11.00', 1475, 0, 'Bright1', 0, 'M K ROADLINES', 'MH.46.AF.3110', '800/-', 'CNF', '', '2017-11-24 07:09:07', 813, '0128', 1475, '18-November-2017', 'BARS', 1481),
(53, 67, 5, 'NA1', '2017-11-19 00:00:00', '', 'SELWEL INC', '-', 'MFG-1385ACDM1', 'EN 1 A (L)', 'HEXAGON1', '11.00', 1482, 0, 'Bright1', 0, 'M K ROADLINES', 'MH.46.AF.3110', '800/-', 'CNF', '', '2017-11-24 07:10:12', 814, '0128', 1482, '19-November-2017', 'BARS', 1489),
(54, 67, 5, 'NA1', '2017-11-20 00:00:00', '', 'PREMIER BRASS INDUSTRIES', '-', 'MFG-1385BCDM1', 'EN 1 A (L)', 'square', '10.00', 1469, 0, 'Bright1', 0, 'Somnath Transport', 'MH.04.CP.2564', '1.00/-', 'CNF', '', '2017-11-24 07:12:58', 815, '0132', 1469, '19-November-2017', 'BARS', 1480),
(55, 67, 5, 'RM', '2017-11-08 00:00:00', '', 'MAHALAXMI BRIGHT BARS PVT LTD', 'JSW', 'MFG-1391A', 'EN 1A (NL)', 'ROUND1', '20.00', 1416, 0, 'BLACK', 0, 'Satkartar Transport', 'MH.12.AQ.5595', '1500/-', 'CNF', '', '2017-11-24 07:20:24', 574, '0107', 1416, '04-November-2017', 'W/R', 1418),
(56, 67, 5, 'RM', '2017-11-08 00:00:00', '', 'MAHALAXMI BRIGHT BARS PVT LTD', 'JSW', 'MFG-1391B', 'EN 1A (NL)', 'ROUND1', '20.00', 1470, 0, 'BLACK', 0, 'Satkartar Transport', 'MH.12.AQ.5595', '1500/-', 'CNF', '', '2017-11-24 07:21:56', 577, '0107', 1470, '04-November-2017', 'W/R', 1472),
(57, 67, 5, 'NA1', '2017-11-17 00:00:00', '', 'PRIMUS BRIGHT STEEL', '-', 'MFG-1379B', 'EN 8 M', 'ROUND1', '21.00', 1303, 0, 'Bright1', 0, 'POONA MOTORS', 'MH.12.LT.3647', '10000/-', 'CNF', '', '2017-11-24 07:27:27', 645, '0125', 1303, '01-November-2017', 'BARS', 1303),
(58, 67, 5, 'NA1', '2017-11-17 00:00:00', '', 'PRIMUS BRIGHT STEEL', '-', 'MFG-1379C', 'EN 8 M', 'ROUND1', '21.00', 1312, 0, 'Bright1', 0, 'POONA MOTORS', 'MH.12.LT.3647', '10000/-', 'CNF', '', '2017-11-24 07:28:19', 646, '0125', 1312, '01-November-2017', 'BARS', 1312),
(59, 67, 5, 'NA1', '2017-11-17 00:00:00', '', 'PRIMUS BRIGHT STEEL', '-', 'MFG-1379D', 'EN 8 M', 'ROUND1', '21.00', 1478, 0, 'Bright1', 0, 'POONA MOTORS', 'MH.12.LT.3647', '10000/-', 'CNF', '', '2017-11-24 07:29:03', 647, '0125', 1478, '01-November-2017', 'BARS', 1477),
(60, 67, 5, 'GR/BP', '2017-11-02 00:00:00', '111', 'RISHI ISPAT PVT LTD', 'india', 'MKT-1111', 'Bright1', 'Square', '25.54', 435, 676, 'Bright1', 0, 'Bechan Transport', '23', '32', 'CNF', '', '2018-01-31 12:21:31', 495, '23', 1111, '15-August-2017', '', 33);

-- --------------------------------------------------------

--
-- Table structure for table `transporter`
--

CREATE TABLE `transporter` (
  `venorId` int(11) NOT NULL,
  `companyName` text NOT NULL,
  `address` text NOT NULL,
  `contact` varchar(15) NOT NULL,
  `mobileNo` varchar(15) NOT NULL,
  `email` text NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `compId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transporter`
--

INSERT INTO `transporter` (`venorId`, `companyName`, `address`, `contact`, `mobileNo`, `email`, `createdOn`, `compId`) VALUES
(10, 'Bechan Transport', '', '', '', '', '2017-05-09 11:59:12', 5),
(11, 'Mahavir Transport', '', '', '', '', '2017-05-09 12:18:37', 5),
(12, 'Satkartar Transport', '', '', '', '', '2017-05-09 12:25:13', 5),
(13, 'Bunty Transport', '', '', '', '', '2017-05-09 12:49:37', 5),
(14, 'Handcart', '', '', '', '', '2017-05-10 07:10:02', 5),
(15, 'Operator Transport', '', '', '', '', '2017-05-10 07:18:13', 5),
(16, 'Puna Motor', '', '', '', '', '2017-05-10 07:19:38', 5),
(17, 'S.B. Transport', '', '', '', '', '2017-05-10 07:26:36', 5),
(18, 'Avinash Carriers', '', '', '', '', '2017-05-10 07:29:13', 5),
(19, 'Sonu Tiwari Transport', '', '', '', '', '2017-05-10 07:40:45', 5),
(21, 'Jay Moite Transport', '', '', '', '', '2017-05-10 08:12:06', 5),
(22, 'Bhavana Road', '', '', '', '', '2017-05-10 09:30:43', 5),
(23, 'Humbe Transport', '', '', '', '', '2017-05-10 10:01:38', 5),
(24, 'Ahireshwar Transport', '', '', '', '', '2017-05-12 12:31:07', 5),
(25, 'Gol', '', '', '', '', '2017-05-12 12:34:34', 5),
(26, 'Golden Transport', '', '', '', '', '2017-05-12 12:34:41', 5),
(27, 'Balu Transport', '', '', '', '', '2017-05-12 12:50:34', 5),
(28, 'Andhra Transport', '', '', '', '', '2017-05-13 08:08:15', 5),
(29, 'Shree Nashik Goods', '', '', '', '', '2017-05-13 08:15:15', 5),
(30, 'Local Tempo', '', '', '', '', '2017-05-13 08:22:20', 5),
(31, 'Somnath Transport', '', '', '', '', '2017-05-13 08:27:15', 5),
(32, 'J.D. Transport', '', '', '', '', '2017-05-13 09:03:30', 5),
(33, 'Kaladhar Yadav', '', '', '', '', '2017-05-13 09:14:36', 5),
(34, 'Party Lorry', '', '', '', '', '2017-05-13 09:37:00', 5),
(36, 'Andhara Bombay', '', '', '', '', '2017-05-15 07:03:35', 5),
(37, 'M.K. Roadline', '', '', '', '', '2017-05-15 07:38:21', 5),
(38, 'Arihant Logistics', '', '', '', '', '2017-11-20 12:41:48', 5),
(39, 'SUPER SONIC TRANSPORT', '', '', '', '', '2017-11-21 08:17:52', 5),
(40, 'ECONOMIC TRANSPORT', '', '', '', '', '2017-11-22 09:50:11', 5),
(41, 'POONA MOTORS', '', '', '', '', '2017-11-22 12:39:44', 5),
(42, 'SUKHI TRANSPORT', '', '', '', '', '2017-11-23 09:37:20', 5),
(43, 'BOMBAY GUJRAT ROADWAYS', '', '', '', '', '2017-11-23 11:52:12', 5),
(44, 'M K ROADLINES', '', '', '', '', '2017-11-23 12:12:32', 5),
(45, 'CHINTAMANI TRANSPORT', '', '', '', '', '2017-11-24 06:24:32', 5),
(46, 'tanmay', 'thane', '9898989899', '9898989898', 'a@mail.com', '2018-03-05 09:25:55', 0),
(47, 'tanmay', 'thane', '9898989899', '9898989898', 'aa@mail.com', '2018-03-05 09:26:26', 0),
(48, 'akash', 'thane', '9898989899', '9898989898', 'a@mail.com', '2018-03-05 09:27:34', 0),
(49, 'akash', 'thane', '9898989899', '9898989898', 'a@mail.com', '2018-03-05 09:29:25', 0),
(50, 'akash', 'thane', '9898989899', '9898989898', 'a@mail.com', '2018-03-05 09:29:28', 0),
(51, 'akash', 'thane', '9898989899', '9898989898', 'a@mail.com', '2018-03-05 09:31:13', 0),
(52, 'tanmay', 'thane', '9889898989', '9898989898', 'a@mail.com', '2018-03-05 09:31:41', 0),
(53, 'tanmay', 'thane', '9889898989', '9898989898', 'a@mail.com', '2018-03-05 09:32:39', 0),
(54, 'tanmay', 'thane', '9889898989', '9898989898', 'a@mail.com', '2018-03-05 09:32:43', 0),
(55, 'tanmay', 'thane', '9889898989', '9898989898', 'a@mail.com', '2018-03-05 09:33:15', 0),
(56, 'akash', 'thane', '9898989899', '9898989898', 'a@mail.com', '2018-03-05 09:33:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vendormaster`
--

CREATE TABLE `vendormaster` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `mobileNo` text NOT NULL,
  `email` text NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warehousemanagement`
--

CREATE TABLE `warehousemanagement` (
  `warehouseId` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `responsiblePerson` text NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehousemanagement`
--

INSERT INTO `warehousemanagement` (`warehouseId`, `name`, `address`, `mobile`, `email`, `responsiblePerson`, `createdOn`) VALUES
(1, 'Kamla Mills', '', '', '', '', '2017-04-27 05:29:05'),
(2, '1690', '', '', '', '', '2017-11-17 10:24:28'),
(3, 'SCRAP YARD', '', '', '', '', '2017-11-17 10:57:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directsale`
--
ALTER TABLE `directsale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `excess`
--
ALTER TABLE `excess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fyId` (`fyId`),
  ADD KEY `companyId` (`companyId`),
  ADD KEY `cnfFobId` (`cnfFobId`),
  ADD KEY `fk_pro_id` (`proId`(767));

--
-- Indexes for table `financialyear`
--
ALTER TABLE `financialyear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobworkmanagement`
--
ALTER TABLE `jobworkmanagement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotno`
--
ALTER TABLE `lotno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_cnforfob`
--
ALTER TABLE `m_cnforfob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_code`
--
ALTER TABLE `m_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_condition`
--
ALTER TABLE `m_condition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_grade`
--
ALTER TABLE `m_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_process`
--
ALTER TABLE `m_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_shape`
--
ALTER TABLE `m_shape`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_size`
--
ALTER TABLE `m_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_surface`
--
ALTER TABLE `m_surface`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_weight`
--
ALTER TABLE `m_weight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newpurchase`
--
ALTER TABLE `newpurchase`
  ADD PRIMARY KEY (`purchaseId`),
  ADD KEY `fyId` (`fyId`),
  ADD KEY `companyId` (`companyId`),
  ADD KEY `warehouseId` (`warehouseId`),
  ADD KEY `cnfFobId` (`cnfFobId`),
  ADD KEY `grade` (`grade`),
  ADD KEY `shape` (`shape`),
  ADD KEY `transporterId` (`transporterId`),
  ADD KEY `surface` (`surface`),
  ADD KEY `lotNo` (`lotNo`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processtype`
--
ALTER TABLE `processtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productionin`
--
ALTER TABLE `productionin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productionout`
--
ALTER TABLE `productionout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchasedtrade`
--
ALTER TABLE `purchasedtrade`
  ADD PRIMARY KEY (`purchaseId`);

--
-- Indexes for table `purchasein`
--
ALTER TABLE `purchasein`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `short`
--
ALTER TABLE `short`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fyId` (`fyId`),
  ADD KEY `companyId` (`companyId`),
  ADD KEY `cnfFobId` (`cnfFobId`),
  ADD KEY `fk_pro_id` (`proId`(767));

--
-- Indexes for table `trade`
--
ALTER TABLE `trade`
  ADD PRIMARY KEY (`purchaseId`),
  ADD KEY `fyId` (`fyId`),
  ADD KEY `companyId` (`companyId`),
  ADD KEY `cnfFobId` (`cnfFobId`),
  ADD KEY `fk_pro_id` (`proId`);

--
-- Indexes for table `transporter`
--
ALTER TABLE `transporter`
  ADD PRIMARY KEY (`venorId`);

--
-- Indexes for table `vendormaster`
--
ALTER TABLE `vendormaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehousemanagement`
--
ALTER TABLE `warehousemanagement`
  ADD PRIMARY KEY (`warehouseId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `directsale`
--
ALTER TABLE `directsale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `excess`
--
ALTER TABLE `excess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financialyear`
--
ALTER TABLE `financialyear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `jobworkmanagement`
--
ALTER TABLE `jobworkmanagement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lotno`
--
ALTER TABLE `lotno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `m_cnforfob`
--
ALTER TABLE `m_cnforfob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_code`
--
ALTER TABLE `m_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `m_condition`
--
ALTER TABLE `m_condition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `m_grade`
--
ALTER TABLE `m_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `m_process`
--
ALTER TABLE `m_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `m_shape`
--
ALTER TABLE `m_shape`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `m_size`
--
ALTER TABLE `m_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_surface`
--
ALTER TABLE `m_surface`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `m_weight`
--
ALTER TABLE `m_weight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `newpurchase`
--
ALTER TABLE `newpurchase`
  MODIFY `purchaseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=710;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `processtype`
--
ALTER TABLE `processtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=850;

--
-- AUTO_INCREMENT for table `productionin`
--
ALTER TABLE `productionin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productionout`
--
ALTER TABLE `productionout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchasedtrade`
--
ALTER TABLE `purchasedtrade`
  MODIFY `purchaseId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchasein`
--
ALTER TABLE `purchasein`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `short`
--
ALTER TABLE `short`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trade`
--
ALTER TABLE `trade`
  MODIFY `purchaseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `transporter`
--
ALTER TABLE `transporter`
  MODIFY `venorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `vendormaster`
--
ALTER TABLE `vendormaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehousemanagement`
--
ALTER TABLE `warehousemanagement`
  MODIFY `warehouseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `excess`
--
ALTER TABLE `excess`
  ADD CONSTRAINT `excess_ibfk_2` FOREIGN KEY (`fyId`) REFERENCES `financialyear` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `excess_ibfk_3` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `newpurchase`
--
ALTER TABLE `newpurchase`
  ADD CONSTRAINT `newpurchase_ibfk_1` FOREIGN KEY (`fyId`) REFERENCES `financialyear` (`id`),
  ADD CONSTRAINT `newpurchase_ibfk_2` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`);

--
-- Constraints for table `short`
--
ALTER TABLE `short`
  ADD CONSTRAINT `trade_ibfk_11` FOREIGN KEY (`fyId`) REFERENCES `financialyear` (`id`),
  ADD CONSTRAINT `trade_ibfk_21` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`);

--
-- Constraints for table `trade`
--
ALTER TABLE `trade`
  ADD CONSTRAINT `fk_pro_id` FOREIGN KEY (`proId`) REFERENCES `production` (`id`),
  ADD CONSTRAINT `trade_ibfk_1` FOREIGN KEY (`fyId`) REFERENCES `financialyear` (`id`),
  ADD CONSTRAINT `trade_ibfk_2` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

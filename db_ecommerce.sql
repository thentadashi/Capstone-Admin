-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 04:06 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `SMSC` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagein`
--

INSERT INTO `messagein` (`Id`, `SendTime`, `ReceiveTime`, `MessageFrom`, `MessageTo`, `SMSC`, `MessageText`, `MessageType`, `MessageParts`, `MessagePDU`, `Gateway`, `UserId`) VALUES
(1, '2017-11-02 05:19:29', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0302,870906890101C651018715060350524F585932000187070603534D415254204D4D530001C65201872F060350524F5859325F3100018720060331302E3130322E36312E343600018721068501872206034E4150475052535F320001C6530187230603383038300001010101C600015501873606037734000187070603534D4152', NULL, NULL, NULL, NULL, NULL),
(2, '2017-11-02 05:19:34', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0303,54204D4D5300018739060350524F585932000187340603687474703A2F2F31302E3130322E36312E3233383A383030322F00010101', NULL, NULL, NULL, NULL, NULL),
(3, '2017-11-02 05:19:14', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FA0201,6C062F1F2DB69180923646443032463643313042394231363544354242413143304143413232424334343239453236423600030B6A00C54503312E310001C6560187070603534D41525420494E5445524E4554000101C65501871106034E4150475052535F330001871006AB0187070603534D41525420494E5445524E455400', NULL, NULL, NULL, NULL, NULL),
(4, '2017-11-02 05:19:19', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FA0202,0187140187080603696E7465726E65740001870906890101C600015501873606037732000187070603534D41525420494E5445524E45540001872206034E4150475052535F330001C65901873A0603687474703A2F2F6D2E736D6172742E636F6D2E7068000187070603484F4D450001871C01010101', NULL, NULL, NULL, NULL, NULL),
(5, '2017-11-02 05:19:24', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0301,6D062F1F2DB69180923432373832413042464145313131463335303137323744303141433530304134373930423843334500030B6A00C54503312E310001C6560187070603534D415254204D4D53000101C65501871106034E4150475052535F320001871006AB0187070603534D415254204D4D530001870806036D6D730001', NULL, NULL, NULL, NULL, NULL),
(6, '2017-11-02 05:19:29', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0302,870906890101C651018715060350524F585932000187070603534D415254204D4D530001C65201872F060350524F5859325F3100018720060331302E3130322E36312E343600018721068501872206034E4150475052535F320001C6530187230603383038300001010101C600015501873606037734000187070603534D4152', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagelog`
--

INSERT INTO `messagelog` (`Id`, `SendTime`, `ReceiveTime`, `StatusCode`, `StatusText`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageId`, `ErrorCode`, `ErrorText`, `Gateway`, `MessageParts`, `MessagePDU`, `Connector`, `UserId`, `UserInfo`) VALUES
(1, '2018-01-27 20:38:08', NULL, 300, NULL, '09305235027', 'Hello Poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2018-01-27 20:39:06', NULL, 300, NULL, '09305235027', 'Hello Poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2018-01-27 20:49:14', NULL, 300, NULL, '09305235027', 'hi poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2018-01-27 20:50:56', NULL, 300, NULL, '09508767867', 'hi poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2018-02-09 17:52:26', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2018-02-09 17:54:27', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2018-02-09 17:55:11', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2018-02-09 17:59:11', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2018-02-09 18:00:12', NULL, 200, NULL, '+639486457414', 'yes', NULL, NULL, '1:+639486457414:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2018-02-09 18:01:12', NULL, 200, NULL, '+639486457414', 'Test to send', NULL, NULL, '1:+639486457414:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2018-02-09 18:02:58', NULL, 200, NULL, '+639486457414', 'FROM JANNO : Confirmed', NULL, NULL, '1:+639486457414:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2018-02-09 18:05:22', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2018-02-09 18:08:14', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2018-02-09 18:21:41', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2018-04-01 22:17:34', NULL, 300, NULL, '09123586545', 'Your code is .6048', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2018-04-01 22:18:20', NULL, 300, NULL, '09123586545', 'Your code is .9305', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2018-04-01 22:20:15', NULL, 300, NULL, '09123586545', 'Your code is .2924', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2018-04-01 22:42:36', NULL, 300, NULL, '09123586545', 'Your code is .6938', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2018-04-02 00:40:53', NULL, 300, NULL, '9956112920', 'Your code is .7290', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2018-04-02 00:42:14', NULL, 300, NULL, '9956112920', 'Your code is .4506', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2018-04-02 00:43:46', NULL, 300, NULL, '9956112920', 'Your code is .4506', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2018-04-02 00:45:56', NULL, 300, NULL, '09956112920', 'Your code is .6988', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2018-04-02 00:47:17', NULL, 300, NULL, '09956112920', 'Your code is .4380', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2018-04-02 00:48:53', NULL, 200, NULL, '639956112920', 'Your code is .5936', NULL, NULL, '1:639956112920:129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2018-04-02 00:50:29', NULL, 200, NULL, '639956112920', 'Your code is .5349', NULL, NULL, '1:639956112920:130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2018-04-02 00:53:32', NULL, 200, NULL, '639956112920', 'Your code is', NULL, NULL, '1:639956112920:131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2018-04-02 00:54:43', NULL, 200, NULL, '639956112920', 'Your code is 3407', NULL, NULL, '1:639956112920:132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT 0,
  `IsRead` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messageout`
--

INSERT INTO `messageout` (`Id`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `Gateway`, `UserId`, `UserInfo`, `Priority`, `Scheduled`, `ValidityPeriod`, `IsSent`, `IsRead`) VALUES
(1, '09062064810', 'ITMAN', 'Your code is 7091', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(2, '09062064810', 'ITMAN', 'Your code is 1171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(3, '09062064810', 'ITMAN', 'Your code is 2500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(4, '09062064811', 'ITMAN', 'Your code is 7576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5, '09062064810', 'ITMAN', 'Your code is 2364', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(6, '0906206234', 'ITMAN', 'Your code is 4089', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(7, '09062064810', 'ITMAN', 'Your code is 8079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(8, '09062064810', 'ITMAN', 'Your code is 7656', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9, '09062064810', 'ITMAN', 'Your code is 2347', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10, '09273804540', 'ITMAN', 'Your code is 2097', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(11, '09062064810', 'ITMAN', 'Your code is 8290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `iders` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `rateIndex` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`iders`, `PROID`, `rateIndex`) VALUES
(23423, 201759, 5),
(201757, 201743, 3),
(234234, 201759, 4),
(324282, 201752, 3),
(324283, 201751, 4),
(324284, 201750, 4),
(324285, 201746, 4),
(324286, 201745, 5),
(324287, 201744, 3),
(324288, 201743, 5),
(324289, 201743, 4),
(324291, 201743, 4),
(324292, 201743, 5),
(324293, 201756, 5),
(324294, 201743, 5),
(324295, 201757, 5),
(324296, 201743, 3),
(324297, 201751, 4),
(324298, 201751, 5),
(324299, 201757, 4),
(324300, 201757, 5),
(324301, 201750, 5),
(324302, 201754, 3),
(324303, 201755, 5),
(324304, 201743, 4),
(324305, 201743, 4),
(324306, 201756, 3),
(324307, 201756, 3),
(324308, 201756, 4),
(324309, 201756, 4),
(324310, 201756, 4),
(324311, 201743, 1),
(324312, 201750, 5),
(324313, 201750, 1),
(324314, 201750, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `AUTOSTART` varchar(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOKEY` varchar(12) NOT NULL,
  `AUTONUM` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `AUTOSTART`, `AUTOINC`, `AUTOEND`, `AUTOKEY`, `AUTONUM`) VALUES
(1, '2017', 1, 60, 'PROID', 10),
(2, '0', 1, 127, 'ordernumber', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGID` int(11) NOT NULL,
  `CATEGORIES` varchar(255) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGID`, `CATEGORIES`, `USERID`) VALUES
(5, 'Graphics Card', 0),
(11, 'Laptop', 0),
(12, 'CPU Case', 0),
(13, 'CCTV', 0),
(14, 'Printer', 0),
(15, 'Computer Parts', 0),
(16, 'Accessories ', 0),
(17, 'Peripherals ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `CUSHOMENUM` varchar(90) NOT NULL,
  `STREETADD` text NOT NULL,
  `BRGYADD` text NOT NULL,
  `CITYADD` text NOT NULL,
  `PROVINCE` varchar(80) NOT NULL,
  `COUNTRY` varchar(30) NOT NULL,
  `DBIRTH` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `EMAILADD` varchar(40) NOT NULL,
  `ZIPCODE` int(6) NOT NULL,
  `CUSUNAME` varchar(255) NOT NULL,
  `CUSPASS` varchar(90) NOT NULL,
  `CUSPHOTO` varchar(255) NOT NULL,
  `TERMS` tinyint(4) NOT NULL,
  `code` mediumint(9) NOT NULL,
  `status` varchar(255) NOT NULL,
  `DATEJOIN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `MNAME`, `CUSHOMENUM`, `STREETADD`, `BRGYADD`, `CITYADD`, `PROVINCE`, `COUNTRY`, `DBIRTH`, `GENDER`, `PHONE`, `EMAILADD`, `ZIPCODE`, `CUSUNAME`, `CUSPASS`, `CUSPHOTO`, `TERMS`, `code`, `status`, `DATEJOIN`) VALUES
(10, ' Tosh', 'Dulos', '', '61', 'zone 2', 'Bactad East', 'Urdaneta City', 'Pangasinan', 'Philippines', '1950-07-12', 'Male', '09062064810', 'Thentadashi@gmail.com', 2428, 'Tosh', '5878bb382a3e6143e68e78fa77eb21c604c93fe9', 'customer_image/117907000_104630671368956_3026174549818450783_n.jpg', 1, 0, 'verified', '2021-12-02'),
(58, 'Jon jasm', 'Aragon', '', '34', 'Zone 5', 'San alejandro', 'Sta. Maria', '', '', '1954-02-03', 'Male', '09654815465', 'ajonjasm1502@gmail.com', 2440, 'Jon Jasm', '175592059f4472dac4e2f5fec798381160107aad', 'customer_image/avatar.png', 1, 0, 'verified', '2022-02-06'),
(64, 'Thenmarck', 'Dulos', '', '64', 'zone 7', 'Bactad East', 'Urdaneta City', '', '', '1954-02-04', 'Male', '0906206234', '19as0314_ms@psu.edu.ph', 2428, 'Thenmarck', '5878bb382a3e6143e68e78fa77eb21c604c93fe9', 'customer_image/avatar.png', 1, 0, 'verified', '2022-02-06'),
(76, 'Alliah Angel', 'Sequerra', '', '73', 'T. Bauzon St. , Zone 2', 'Poblacion West', 'Asingan', '', '', '2002-01-05', 'Female', '09567584985', 'alliah.angel0808@gmail.com', 2439, 'Alliah Angel', '32195a92d69e75e2d1f06c5ce1004c196919c072', 'customer_image/avatar.png', 1, 0, 'verified', '2022-02-13'),
(77, 'Mark Angelo', 'Nesperos', '', '23', 'Zone 1 B', 'San Vicente', 'Asingan', '', '', '1955-05-04', 'Male', '09273804540', 'kilongnesperos@gmail.com', 2440, 'kilong25zxc', '5878bb382a3e6143e68e78fa77eb21c604c93fe9', 'customer_image/avatar.png', 1, 0, 'verified', '2022-02-14'),
(78, 'Likhamor', 'Quezon', '', '64', 'zone 7', 'Poblacion West', 'Tayug', '', '', '1998-02-21', 'Male', '09067608642', 'likhamor.quezon@lorma.edu', 2445, 'Likha_25', 'c6613efc3d167d944074824f2f884eecb201df66', 'customer_image/avatar.png', 1, 0, 'verified', '2022-02-15'),
(79, 'Kay', 'Cruz', '', '64', 'T. Bauzon St. , Zone 2', 'Poblacion West', 'Pozorrubio', '', '', '1968-07-17', 'Female', '0906206234', 'erikareic@gmail.com', 2428, 'kayTosh_23', 'e6d6cd3c058537fad9d5a6999754e6c2ceb41b55', 'customer_image/avatar.png', 1, 0, 'verified', '2022-02-24');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ORDERID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `ORDEREDQTY` int(11) NOT NULL,
  `ORDEREDPRICE` double NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ORDERID`, `PROID`, `ORDEREDQTY`, `ORDEREDPRICE`, `ORDEREDNUM`, `USERID`) VALUES
(1, 201737, 4, 476, 93, 0),
(2, 201740, 3, 447, 93, 0),
(3, 201738, 1, 199, 94, 0),
(4, 201737, 1, 119, 95, 0),
(5, 201737, 1, 119, 96, 0),
(6, 201743, 1, 20000, 97, 0),
(7, 201749, 1, 1900, 98, 0),
(8, 201743, 1, 20000, 99, 0),
(9, 201744, 1, 6500, 100, 0),
(10, 201743, 1, 20000, 102, 0),
(11, 201743, 1, 20000, 104, 0),
(12, 201755, 1, 2500, 105, 0),
(13, 201756, 1, 5000, 105, 0),
(14, 201743, 1, 20000, 105, 0),
(15, 201743, 1, 20000, 106, 0),
(16, 201750, 1, 23000, 107, 0),
(17, 201750, 1, 23000, 108, 0),
(18, 201756, 1, 5000, 109, 0),
(19, 201743, 1, 20000, 110, 0),
(20, 201743, 1, 20000, 111, 0),
(21, 201743, 1, 20000, 112, 0),
(22, 201743, 1, 20000, 113, 0),
(23, 201743, 1, 20000, 114, 0),
(24, 201743, 1, 20000, 115, 0),
(25, 201743, 1, 20000, 116, 0),
(26, 201757, 1, 8500, 117, 0),
(27, 201754, 1, 7500, 118, 0),
(28, 201757, 1, 8500, 119, 0),
(29, 201744, 1, 6500, 120, 0),
(30, 201752, 1, 9500, 120, 0),
(31, 201752, 1, 9500, 121, 0),
(32, 201743, 1, 20000, 122, 0),
(33, 201750, 1, 23000, 122, 0),
(34, 201755, 1, 2500, 124, 0),
(35, 201759, 1, 8500, 125, 0),
(36, 201743, 1, 20000, 126, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `PROID` int(11) NOT NULL,
  `PRODESC` varchar(255) DEFAULT NULL,
  `INGREDIENTS` varchar(255) NOT NULL,
  `PROQTY` int(11) DEFAULT NULL,
  `ORIGINALPRICE` double NOT NULL,
  `PROPRICE` double DEFAULT NULL,
  `CATEGID` int(11) DEFAULT NULL,
  `IMAGES` varchar(255) DEFAULT NULL,
  `PROSTATS` varchar(30) DEFAULT NULL,
  `OWNERNAME` varchar(90) NOT NULL,
  `ratingCount` int(11) NOT NULL,
  `rateIndex` int(11) NOT NULL,
  `OWNERPHONE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`PROID`, `PRODESC`, `INGREDIENTS`, `PROQTY`, `ORIGINALPRICE`, `PROPRICE`, `CATEGID`, `IMAGES`, `PROSTATS`, `OWNERNAME`, `ratingCount`, `rateIndex`, `OWNERPHONE`) VALUES
(0, 'ROG strix x570 Gaming', '', 20, 6500, 6000, 0, 'uploaded_photos/mobo2.jpg', 'Available', 'Asus', 0, 0, '09273536801'),
(201743, 'ROG Strix GeForce RTX™ 3050 8GB GDDR6 buffed-up design with chart-topping thermal performance.            ', '', 35, 20000, 20000, 5, 'uploaded_photos/gpu-shop1.png', 'Available', 'ASUS - ROG Strix GeForce RTX™ 3080ti', 2, 4, '09567156250'),
(201744, 'AMD AM4 X570 ATX gaming motherboard with PCIe 4.0, dual M.2, 14 Dr. MOS power stages, HDMI, DP, SATA 6Gb/s, USB 3.2 Gen 2 and Aura Sync RGB lighting', '', 18, 7000, 6500, 15, 'uploaded_photos/mobo1.png', 'Available', 'ASUS TUF Gaming X570', 0, 0, '09567197085'),
(201745, 'ROG strix x570 Gaming', '', 20, 6500, 6000, 0, 'uploaded_photos/mobo2.jpg', 'Available', 'Asus', 0, 0, '09273536801'),
(201750, 'Windows 10 Pro/Home\nGeForce RTX™ 2060 GPU and Latest AMD Ryzen™ APU\n14” FHD 120Hz/WQHD 60Hz\nPantone® Validated Display\nDolby Atmos® Technology', '', 47, 23000, 23000, 11, 'uploaded_photos/laptop.png', 'Available', 'Asus - ROG Zephyrus G14 GA401', 0, 0, '09052659097'),
(201751, 'Intel® Z590 LGA 1200 ATX motherboard with PCIe® 4.0, 14+2 Teamed power stages, Two-Way AI Noise-Cancelation, AI Overclocking, AI Cooling, AI Networking, WiFi 6E (802.11ax), Dual Intel® 2.5 Gb Ethernet, Quad M.2 with heatsinks, USB 3.2 Gen 2, SATA and AURA', '', 50, 8500, 8500, 15, 'uploaded_photos/mobo6.png', 'Available', 'ROG STRIX Z590-E GAMING WIFI', 0, 0, '09062064810'),
(201752, 'AMD X470 ATX Gaming motherboard with M.2 heatsink, Aura Sync RGB LED, DDR4 3600MHz, dual M.2, SATA 6Gb/s, and USB 3.1 Gen 2 ', '', 48, 9500, 9500, 15, 'uploaded_photos/mobo5.jpg', 'Available', 'ROG CROSSHAIR VII HERO', 0, 0, '09062064810'),
(201755, 'Helios is made for showcase builds with three 4mm, smoked tempered-glass panels fitted in a refined brushed-aluminum frame. A stunning display of dynamic RGB lighting is integrated into the front panel to outshine the competition.', '', 48, 2500, 2500, 12, 'uploaded_photos/case3.png', 'Available', 'ASUS ROG Strix Helios GX601 RGB', 0, 0, '092064810'),
(201756, 'Hikvision DS-2CD2143G0-IU 4MP Built-in Mic EXIR30m H.265+ Dome IP Camera (DS-2CD2143G0-IU(2.8mm))', '', 48, 5000, 5000, 13, 'uploaded_photos/cctv-banner-1.png', 'Available', 'Hikvision DS-2CD2143G0-IU 4MP', 0, 0, '09062064810'),
(201757, 'AMD Ryzen 3 3100 & 3300X unlock new levels of performance, delivering twice the multitasking capabilities over previous generations1 with four cores and eight threads', '', 48, 8500, 8500, 15, 'uploaded_photos/amdcpu2.jpg', 'Available', 'AMD Ryzen 3 3300X', 0, 0, '09062064810'),
(201759, 'Intel®Z590 ATX gaming motherboard with 14+2 power stages, PCIe 4.0, Onboard WiFi 6E (802.11ax), Dual Intel® 2.5 Gb Ethernet, Quad M.2 with heatsinks and embedded backplates, Dual onboard Thunderbolt 4, USB 3.2 Gen 2x2 front-panel connector and Aura Sync R', '', 49, 8500, 8500, 15, 'uploaded_photos/mobo7.jpg', 'Available', 'ROG MAXIMUS XIII HERO', 0, 0, '09062064810');

-- --------------------------------------------------------

--
-- Table structure for table `tblpromopro`
--

CREATE TABLE `tblpromopro` (
  `PROMOID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `PRODISCOUNT` double NOT NULL,
  `PRODISPRICE` double NOT NULL,
  `PROBANNER` tinyint(4) NOT NULL,
  `PRONEW` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromopro`
--

INSERT INTO `tblpromopro` (`PROMOID`, `PROID`, `PRODISCOUNT`, `PRODISPRICE`, `PROBANNER`, `PRONEW`) VALUES
(3, 201739, 0, 289, 0, 0),
(4, 201740, 0, 149, 0, 0),
(5, 201741, 0, 89, 0, 0),
(7, 201743, 50, 10000, 1, 0),
(8, 201744, 0, 6500, 0, 0),
(9, 201745, 0, 6000, 0, 0),
(10, 201746, 0, 6000, 0, 0),
(14, 201750, 0, 23000, 0, 0),
(15, 201751, 0, 8500, 0, 0),
(16, 201752, 0, 9500, 0, 0),
(17, 201753, 0, 7500, 0, 0),
(19, 201755, 0, 2500, 0, 0),
(20, 201756, 0, 5000, 0, 0),
(21, 201757, 0, 8500, 0, 0),
(23, 201759, 0, 8500, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsetting`
--

CREATE TABLE `tblsetting` (
  `SETTINGID` int(11) NOT NULL,
  `PLACE` text NOT NULL,
  `BRGY` varchar(90) NOT NULL,
  `DELPRICE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsetting`
--

INSERT INTO `tblsetting` (`SETTINGID`, `PLACE`, `BRGY`, `DELPRICE`) VALUES
(3, 'Agno', '', 150),
(4, 'Aguilar', '', 50),
(5, 'Alcala', '', 50),
(6, 'Anda', '', 50),
(7, 'Asingan', '', 250),
(8, 'Balungao', '', 50),
(9, 'Basista', '', 50),
(10, 'Bautista', '', 50),
(11, 'Bayambang', '', 50),
(12, 'Binalonan', '', 50),
(13, 'Binmaley', '', 50),
(14, 'Bolinao', '', 50),
(15, 'Bugallon', '', 50),
(16, 'Burgos', '', 50),
(17, 'Calasiao', '', 50),
(18, 'Dagupan City', '', 50),
(19, 'Dasol', '', 50),
(20, 'Infanta', '', 50),
(21, 'Labrador', '', 50),
(22, 'Laoac', '', 50),
(23, 'Lingayen', '', 50),
(24, 'Mabini', '', 50),
(25, 'Malasiqui', '', 50),
(26, 'Manaoag', '', 50),
(27, 'Mangaldan', '', 50),
(28, 'Mapandan', '', 50),
(29, 'Natividad', '', 50),
(30, 'Mangatarem', '', 50),
(31, 'Mapandan', '', 50),
(32, 'Natividad', '', 50),
(33, 'Pozorrubio', '', 50),
(34, 'Rosales', '', 50),
(35, 'San Carlos City', '', 50),
(36, 'San Fabian', '', 50),
(37, 'San Jacinto', '', 50),
(38, 'San Manuel', '', 50),
(39, 'San Nicolas', '', 50),
(40, 'San Quintin', '', 50),
(41, 'Sison', '', 50),
(42, 'Sta. Barbara', '', 50),
(43, 'Sta. Maria', '', 50),
(44, 'Sto. Tomas', '', 50),
(45, 'Sual', '', 50),
(46, 'Tayug', '', 50),
(47, 'Umingan', '', 50),
(48, 'Urbiztondo', '', 50),
(49, 'Urdaneta City', '', 50),
(50, 'Villasis', '', 50);

-- --------------------------------------------------------

--
-- Table structure for table `tblstockin`
--

CREATE TABLE `tblstockin` (
  `STOCKINID` int(11) NOT NULL,
  `STOCKDATE` datetime DEFAULT NULL,
  `PROID` int(11) DEFAULT NULL,
  `STOCKQTY` int(11) DEFAULT NULL,
  `STOCKPRICE` double DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsummary`
--

CREATE TABLE `tblsummary` (
  `SUMMARYID` int(11) NOT NULL,
  `ORDEREDDATE` datetime NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `DELFEE` double NOT NULL,
  `PAYMENT` double NOT NULL,
  `PAYMENTMETHOD` varchar(30) NOT NULL,
  `ORDEREDSTATS` varchar(30) NOT NULL,
  `ORDEREDREMARKS` varchar(125) NOT NULL,
  `CLAIMEDADTE` datetime NOT NULL,
  `HVIEW` tinyint(4) NOT NULL,
  `USERID` int(11) NOT NULL,
  `emailCount` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsummary`
--

INSERT INTO `tblsummary` (`SUMMARYID`, `ORDEREDDATE`, `CUSTOMERID`, `ORDEREDNUM`, `DELFEE`, `PAYMENT`, `PAYMENTMETHOD`, `ORDEREDSTATS`, `ORDEREDREMARKS`, `CLAIMEDADTE`, `HVIEW`, `USERID`, `emailCount`) VALUES
(5, '2021-12-02 03:33:40', 10, 96, 50, 189, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 1, 0, 0),
(6, '2022-01-24 05:59:18', 10, 97, 50, 20050, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2022-01-24 00:00:00', 1, 0, 0),
(7, '2022-01-24 06:22:45', 10, 98, 50, 1900, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2022-01-24 00:00:00', 1, 0, 0),
(8, '2022-01-31 04:47:06', 10, 99, 0, 20000, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 1, 0, 0),
(9, '2022-01-31 07:10:31', 10, 100, 50, 6550, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2022-02-01 00:00:00', 1, 0, 0),
(10, '2022-02-01 07:26:36', 10, 102, 50, 20050, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2022-02-03 00:00:00', 1, 0, 0),
(11, '2022-02-03 01:18:15', 24, 104, 0, 20000, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2022-02-03 00:00:00', 0, 0, 0),
(12, '2022-02-04 08:55:30', 10, 105, 150, 27650, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2022-02-04 00:00:00', 1, 0, 0),
(15, '2022-02-06 08:20:14', 10, 106, 0, 20000, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2022-02-06 00:00:00', 1, 0, 0),
(16, '2022-02-06 08:36:15', 10, 107, 50, 23000, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 1, 0, 0),
(17, '2022-02-06 08:37:05', 10, 108, 50, 23050, 'Cash on Delivery', 'Confirmed', 'Processing', '2022-02-06 00:00:00', 1, 0, 0),
(18, '2022-02-06 09:22:46', 10, 109, 50, 5050, 'Cash on Delivery', 'Confirmed', 'Processing', '2022-02-06 00:00:00', 0, 0, 0),
(19, '2022-02-06 10:01:50', 64, 110, 50, 20050, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 0, 0, 0),
(20, '2022-02-07 08:07:18', 64, 111, 0, 20000, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 0, 0, 0),
(21, '2022-02-07 08:15:05', 64, 112, 0, 20000, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 0, 0, 0),
(22, '2022-02-07 08:25:14', 64, 113, 50, 20050, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 0, 0, 0),
(23, '2022-02-07 08:35:12', 64, 114, 0, 20000, 'Cash on Delivery', 'Cancelled', 'we need to verify your email first', '2022-02-07 00:00:00', 1, 0, 0),
(24, '2022-02-07 08:37:04', 64, 115, 0, 20000, 'Cash on Delivery', 'Cancelled', 'we need to verify your email first', '2022-02-07 00:00:00', 1, 0, 0),
(25, '2022-02-07 08:51:44', 64, 116, 50, 20000, 'Cash on Delivery', 'Confirmed', 'Processing', '2022-02-07 00:00:00', 0, 0, 0),
(26, '2022-02-07 06:46:47', 64, 117, 150, 8650, 'Cash on Delivery', 'Confirmed', 'Processing', '2022-02-07 00:00:00', 1, 0, 0),
(27, '2022-02-07 08:36:38', 66, 118, 50, 7550, 'Cash on Delivery', 'Shipped', 'your order is on the way by our trusted Couriers.', '0000-00-00 00:00:00', 0, 0, 0),
(28, '2022-02-07 08:54:35', 64, 119, 50, 8550, 'Cash on Delivery', 'Confirmed', 'Processing', '2022-02-07 00:00:00', 1, 0, 0),
(29, '2022-02-07 11:24:28', 64, 120, 50, 16050, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2022-02-07 00:00:00', 1, 0, 0),
(31, '2022-02-10 03:28:53', 10, 121, 0, 9500, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 0, 0, 0),
(32, '2022-02-15 10:17:17', 10, 122, 50, 43050, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 1, 0, 0),
(34, '2022-02-15 10:30:47', 78, 124, 50, 2550, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2022-02-15 00:00:00', 0, 0, 0),
(35, '2022-02-15 10:41:12', 78, 125, 50, 8500, 'Cash on Delivery', 'Confirmed', 'Processing', '2022-02-15 00:00:00', 0, 0, 0),
(36, '2022-02-24 02:01:26', 79, 126, 0, 20000, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `U_NAME` varchar(122) NOT NULL,
  `U_USERNAME` varchar(122) NOT NULL,
  `U_PASS` varchar(122) NOT NULL,
  `U_ROLE` varchar(30) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `U_NAME`, `U_USERNAME`, `U_PASS`, `U_ROLE`, `USERIMAGE`) VALUES
(232, 'Thentadashi', 'Thentadashi', '5878bb382a3e6143e68e78fa77eb21c604c93fe9', 'Administrator', 'photos/160604136_2780914408833637_1816399138170076073_n.jpg'),
(233, 'Jon Jasm', 'jasm', '53c315c4643e35384d9254d10786a20b8db8f7dc', 'Encoder', 'photos/272831002_4744462292302550_8559974911788336727_n.jpg'),
(234, 'Mark Angelo', 'Kilong', '5878bb382a3e6143e68e78fa77eb21c604c93fe9', 'Staff', 'photos/169358930_1137384236687552_2156146812921064449_n.jpg'),
(235, 'Aivan Glenn ', 'Glenn', '3e893e0cc394005d3147cb8c8327b66421519973', 'Staff', 'photos/72271701_2431057700547443_4620128115950092288_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblwishlist`
--

CREATE TABLE `tblwishlist` (
  `WISHLISTID` int(11) NOT NULL,
  `CUSID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `WISHDATE` date NOT NULL,
  `WISHSTATS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblwishlist`
--

INSERT INTO `tblwishlist` (`WISHLISTID`, `CUSID`, `PROID`, `WISHDATE`, `WISHSTATS`) VALUES
(2, 9, 201742, '2019-08-21', '0'),
(3, 10, 201752, '2022-02-10', '1'),
(4, 10, 201743, '2022-02-10', '1'),
(5, 76, 201743, '2022-02-13', '1'),
(6, 77, 201743, '2022-02-14', '1'),
(7, 77, 201751, '2022-02-14', '1'),
(8, 10, 201750, '2022-02-15', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`iders`);

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ORDERID`),
  ADD KEY `USERID` (`USERID`),
  ADD KEY `PROID` (`PROID`),
  ADD KEY `ORDEREDNUM` (`ORDEREDNUM`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`PROID`),
  ADD KEY `CATEGID` (`CATEGID`);

--
-- Indexes for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  ADD PRIMARY KEY (`PROMOID`),
  ADD UNIQUE KEY `PROID` (`PROID`);

--
-- Indexes for table `tblsetting`
--
ALTER TABLE `tblsetting`
  ADD PRIMARY KEY (`SETTINGID`);

--
-- Indexes for table `tblstockin`
--
ALTER TABLE `tblstockin`
  ADD PRIMARY KEY (`STOCKINID`),
  ADD KEY `PROID` (`PROID`,`USERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `ORDEREDNUM` (`ORDEREDNUM`),
  ADD KEY `CUSTOMERID` (`CUSTOMERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD PRIMARY KEY (`WISHLISTID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `iders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324315;

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblsetting`
--
ALTER TABLE `tblsetting`
  MODIFY `SETTINGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tblstockin`
--
ALTER TABLE `tblstockin`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `WISHLISTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

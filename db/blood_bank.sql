-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2019 at 02:02 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `AREA_ID` int(11) NOT NULL,
  `CITY_ID` int(11) NOT NULL,
  `STATE_ID` int(11) NOT NULL,
  `AREA_NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`AREA_ID`, `CITY_ID`, `STATE_ID`, `AREA_NAME`) VALUES
(3, 1, 1, 'Chan Mya Thazi'),
(4, 1, 1, 'Amarapura'),
(5, 1, 1, 'Patheingyi'),
(6, 3, 1, 'No 5');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `DONOR_ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `FATHER_NAME` varchar(150) NOT NULL,
  `GENDER` varchar(150) NOT NULL,
  `DOB` date NOT NULL,
  `BLOOD` varchar(150) NOT NULL,
  `BODY_WEIGHT` int(11) NOT NULL,
  `EMAIL` varchar(150) NOT NULL,
  `ADDRESS` text NOT NULL,
  `AREA` varchar(150) NOT NULL,
  `CITY` varchar(150) NOT NULL,
  `PINCODE` varchar(150) NOT NULL,
  `STATE` varchar(150) NOT NULL,
  `COUNTRY` varchar(150) NOT NULL,
  `CONTACT_1` varchar(150) NOT NULL,
  `CONTACT_2` varchar(150) NOT NULL,
  `VOLUNTARY` text NOT NULL,
  `VOLUNTARY_GROUP` text NOT NULL,
  `NEW_DONOR` varchar(150) NOT NULL,
  `LAST_D_DATE` date NOT NULL,
  `DONOR_PIC` varchar(150) NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_donor`
--

INSERT INTO `blood_donor` (`DONOR_ID`, `NAME`, `FATHER_NAME`, `GENDER`, `DOB`, `BLOOD`, `BODY_WEIGHT`, `EMAIL`, `ADDRESS`, `AREA`, `CITY`, `PINCODE`, `STATE`, `COUNTRY`, `CONTACT_1`, `CONTACT_2`, `VOLUNTARY`, `VOLUNTARY_GROUP`, `NEW_DONOR`, `LAST_D_DATE`, `DONOR_PIC`, `STATUS`) VALUES
(1, 'Aung Thiha', 'U Myint Khaing', 'Male', '2019-09-05', 'B+', 120, 'aungthiha787878@gmail.com', 'dhfbb', 'Malakarchan', 'Mandalay', '4325425', 'Mandalay', 'Myanmar', '09787617118', '0976576576', 'No', '', 'Yes', '0000-00-00', 'donor_image/no-image.jpg', 1),
(2, 'U Zin Min Htun', 'U Khin Maung Nyunt', 'Male', '1998-01-06', 'O+', 60, 'zinmintun@cs.com', 'test', 'Myo Thit', 'Mandalay', '123', 'Mandalay', 'Myanmar', '09R200D300', '0935335353', 'No', '', 'No', '0000-00-00', 'donor_image/18027678707799_8cc2651761_b.jpg', 1),
(3, 'U Phyo Than Zin', 'U Ohn Lwin', 'Male', '1997-10-02', 'O+', 50, 'phyothanzin@cs.com', 'test', 'Aung Myay Thar Zan', 'Mandalay', '123', 'Mandalay', 'Myanmar', '097474746646', '094747474747', 'No', '', 'Yes', '0000-00-00', 'donor_image/18027678707799_8cc2651761_b.jpg', 1),
(4, 'U Chan Nyein Tun', 'U Kyaw Soe', 'Male', '1998-05-04', 'AB+', 48, 'chanyeintun@gmail.com', 'test', 'No 5', 'Thazi', '456', 'Mandalay', 'Myanmar', '0947474747', '0984747474', 'No', '', 'Yes', '0000-00-00', 'donor_image/18027678707799_8cc2651761_b.jpg', 0),
(5, 'U Wai Yan', 'U Moe Kyaw', 'Male', '1997-09-13', 'A+', 45, 'waiyan@cs.com', 'test', 'Chan Mya Thazi', 'Mandalay', '123', 'Mandalay', 'Myanmar', '0946446464', '094637373', 'No', '', 'Yes', '0000-00-00', 'donor_image/22627678707799_8cc2651761_b.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `CITY_ID` int(11) NOT NULL,
  `STATE_ID` int(11) NOT NULL,
  `CITY_NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CITY_ID`, `STATE_ID`, `CITY_NAME`) VALUES
(1, 1, 'Mandalay'),
(2, 2, 'Yangon'),
(3, 1, 'Thazi'),
(4, 1, 'Meiktila'),
(5, 1, 'Naypyidaw'),
(6, 3, 'Sagaing'),
(7, 1, 'Pyin Oo Lwin'),
(8, 4, 'Kalaw');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `COUNTRY_ID` int(11) NOT NULL,
  `COUNTRY_NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`COUNTRY_ID`, `COUNTRY_NAME`) VALUES
(1, 'India'),
(2, 'Thailand'),
(4, 'Vietnam'),
(5, 'Laos'),
(6, 'Singapore'),
(7, 'Russia'),
(8, 'Philipines'),
(10, 'Cambodia'),
(11, 'China'),
(12, 'Malaysia'),
(13, 'Brunei'),
(14, 'Myanmar');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `CONTACT` text NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `MESSAGE` text NOT NULL,
  `STATUS` text NOT NULL,
  `LOGS` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`ID`, `NAME`, `CONTACT`, `EMAIL`, `MESSAGE`, `STATUS`, `LOGS`) VALUES
(1, 'U Ko Ko', '09474477', 'ukoko12@test.com', 'There is a vulnerability in searching users.', '0', '2019-09-11 11:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `request_blood`
--

CREATE TABLE `request_blood` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `GENDER` varchar(150) NOT NULL,
  `BLOOD` varchar(150) NOT NULL,
  `BUNIT` int(11) NOT NULL,
  `HOSP` text NOT NULL,
  `CITY` varchar(150) NOT NULL,
  `PIN` varchar(150) NOT NULL,
  `DOC` varchar(150) NOT NULL,
  `RDATE` date NOT NULL,
  `CNAME` varchar(150) NOT NULL,
  `CADDRESS` text NOT NULL,
  `EMAIL` varchar(150) NOT NULL,
  `CON1` varchar(150) NOT NULL,
  `CON2` varchar(150) NOT NULL,
  `REASON` text NOT NULL,
  `PIC` varchar(150) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CDATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_blood`
--

INSERT INTO `request_blood` (`ID`, `NAME`, `GENDER`, `BLOOD`, `BUNIT`, `HOSP`, `CITY`, `PIN`, `DOC`, `RDATE`, `CNAME`, `CADDRESS`, `EMAIL`, `CON1`, `CON2`, `REASON`, `PIC`, `STATUS`, `CDATE`) VALUES
(1, 'U Aung Ko Win ', 'Male', 'B+', 2, 'test', 'Mandalay', '678', 'U Zayar Aung', '2019-09-11', 'U Aung Aung', 'test', 'aungaung@medic.com', '0948447477', '0948474847', 'test', 'request_image/747Koala.jpg', 2, '2019-09-21'),
(2, 'Daw Mya Thwin', 'Female', 'A+', 3, 'test', 'Yangon', '698', 'Dr. Maung Maung', '2019-09-20', 'Daw Aye', 'test', 'ayeaye@medic.com', '0947473393', '0983343434', 'test', 'request_image/759Koala.jpg', 2, '2019-09-21'),
(3, 'U Ko Ko', 'Male', 'O+', 2, 'test', 'Meikhtila', '676', 'U Aung Zay Yar', '2019-09-10', 'Chan Nyein Tun', 'test', 'channyeintun@cs.com', '094848484848', '094839838383', 'test', 'request_image/41827678707799_8cc2651761_b.jpg', 2, '2019-09-11'),
(4, 'Daw Aye Mya', 'Female', 'AB+', 4, 'test', 'Pathein', '4543', 'Daw Mya Thwe', '2019-09-10', 'Chan Nyein Tun', 'test', 'channyeintun@cs.com', '09474746466', '09484474747', 'operation', 'request_image/54727678707799_8cc2651761_b.jpg', 2, '2019-09-11'),
(5, 'U Maung Maung Khin', 'Male', 'A+', 2, 'Chan Nyein Aung Hospital, Madalay.', 'Mandalay', '456', 'Dr. U Kyaw Kyaw', '2019-09-13', 'Daw Aye Aye', 'test', 'dawayeaye@cs.com', '09454434343', '09447464646', 'Operation.', 'request_image/180test.jpg', 2, '2019-09-16');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `STATE_ID` int(11) NOT NULL,
  `STATE_NAME` varchar(150) NOT NULL,
  `COUNTRY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`STATE_ID`, `STATE_NAME`, `COUNTRY_ID`) VALUES
(1, 'Mandalay', 14),
(2, 'Yangon', 14),
(3, 'Sagaing', 14),
(4, 'Shan', 14),
(5, 'Ayeyarwady', 14),
(6, 'Mon', 14),
(7, 'Pegu', 14),
(8, 'Chin', 14),
(9, 'Kachin', 14),
(10, 'Rakhine', 14),
(11, 'Tanintharyi', 14),
(12, 'Kayin', 14),
(13, 'Kayar', 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `password`) VALUES
(1, '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`AREA_ID`);

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`DONOR_ID`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`CITY_ID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`COUNTRY_ID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `request_blood`
--
ALTER TABLE `request_blood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`STATE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `AREA_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `DONOR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `CITY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `COUNTRY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `request_blood`
--
ALTER TABLE `request_blood`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `STATE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

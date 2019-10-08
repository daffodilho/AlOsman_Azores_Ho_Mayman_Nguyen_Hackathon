-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 08, 2019 at 06:33 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thermosecurity`
--

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`ID`, `Name`, `Address`, `Phone`, `Email`) VALUES
(1, 'Dominika Short', '3469 A Avenue, Edmonton, AB T5J 0K7, Canada', '780-401-6772', 'dshortie@gmail.com'),
(2, 'Autumn Mercer', '3439 Silver St, Cobalt, ON P0J 1C0, Canada', '705-679-9611', 'havemercy@gmail.com'),
(3, 'Demi-Leigh Redmond', '2285 rue des Églises Est, Chapeau QC J0X 1M0, Canada', '819-689-8096', 'redemileh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `ID` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Colours_ID` int(1) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`ID`, `Customer_ID`, `Colours_ID`, `Quantity`) VALUES
(1, 1, 2, 1),
(2, 2, 1, 1),
(3, 3, 1, 2),
(5, 3, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Product_colours`
--

CREATE TABLE `Product_colours` (
  `ID` int(11) NOT NULL,
  `Colour` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Product_colours`
--

INSERT INTO `Product_colours` (`ID`, `Colour`) VALUES
(1, 'Porcelain white'),
(2, 'Oak wood');

-- --------------------------------------------------------

--
-- Table structure for table `Product_features`
--

CREATE TABLE `Product_features` (
  `ID` int(11) NOT NULL,
  `Feature` varchar(200) NOT NULL,
  `Description` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Product_features`
--

INSERT INTO `Product_features` (`ID`, `Feature`, `Description`) VALUES
(1, 'Central System', 'Accessible and controllable from wall unit, product app, and parent website'),
(2, 'Home Security', 'Use phone to check house occupancy, smoke, CO levels, and unlocked doors'),
(3, 'Personalized Temperature', 'Change the temperature for individual rooms, and even set a schedule!'),
(4, 'Energy Saving', 'Save the planet by saving on bills!\r\nThe ThermoSecurityTM system is ENERGY STAR Certified, helps save energy and keeps you comfortable. The system\'s energy-saving features have saved people an average of 12% - 15% on heating bills and 20% on cooling bills. Based on typical Canadian energy costs, that’s an estimated average savings of $195 to $210 a year. Stay on top of your energy impact!'),
(5, 'Home Safety', 'Security for your home 24/7\r\nIt\'s time to expect more from your home security. The new ThermoSecurityTM system not only regulates your home temperature, it ensures your family\'s safety. The system monitors smoke, CO level, and whether doors are unlocked or windows are open. Know instantly if there\'s something unsafe going on in your home instantly through your phone!\r\n'),
(6, 'Advanced Technology', 'Advanced Thermostat Features.  The ThermoSecurityTM system has the latest technological innovations such as: SmartHome, Thermal Protect, AC Overcool to Dehumidify, Fan Dissipation, Free Cooling');

-- --------------------------------------------------------

--
-- Table structure for table `Rooms`
--

CREATE TABLE `Rooms` (
  `ID` int(11) NOT NULL,
  `Room` varchar(30) NOT NULL,
  `Status_ID` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Rooms`
--

INSERT INTO `Rooms` (`ID`, `Room`, `Status_ID`) VALUES
(1, 'Bedroom 1', 1),
(2, 'Bedroom 2', 1),
(3, 'Garage', 2),
(4, 'Basement', 1),
(5, 'Kitchen', 1),
(6, 'Living room', 1),
(7, 'Bath 1', 2),
(8, 'Bath 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Rooms_status`
--

CREATE TABLE `Rooms_status` (
  `ID` int(11) NOT NULL,
  `Status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Rooms_status`
--

INSERT INTO `Rooms_status` (`ID`, `Status`) VALUES
(1, 'Unlocked'),
(2, 'Locked');

-- --------------------------------------------------------

--
-- Table structure for table `Thermostat_mode`
--

CREATE TABLE `Thermostat_mode` (
  `ID` int(11) NOT NULL,
  `mode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Thermostat_mode`
--

INSERT INTO `Thermostat_mode` (`ID`, `mode`) VALUES
(1, 'Heat'),
(2, 'Cooling'),
(3, 'Fan'),
(4, 'Off'),
(5, 'Auto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Product_colours`
--
ALTER TABLE `Product_colours`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Product_features`
--
ALTER TABLE `Product_features`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Rooms`
--
ALTER TABLE `Rooms`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Rooms_status`
--
ALTER TABLE `Rooms_status`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Thermostat_mode`
--
ALTER TABLE `Thermostat_mode`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `Customer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Product_colours`
--
ALTER TABLE `Product_colours`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Product_features`
--
ALTER TABLE `Product_features`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Rooms`
--
ALTER TABLE `Rooms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Rooms_status`
--
ALTER TABLE `Rooms_status`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Thermostat_mode`
--
ALTER TABLE `Thermostat_mode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

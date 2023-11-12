-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2023 at 03:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

/* SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

 */
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--  
--  Database: `diagnosticsdb`
--  

DELIMITER $$
--  
--  Procedures
--  
CREATE PROCEDURE `addusers` (IN `par_name` VARCHAR(30), IN `par_nationality` VARCHAR(30), IN `par_gender` VARCHAR(30), IN `par_age` INT(30), IN `par_mobile_no` VARCHAR(30), IN `par_body_temp` INT(30), IN `par_diagnosed` VARCHAR(30), IN `par_encounter` VARCHAR(30), IN `par_vaccinated` VARCHAR(30))   BEGIN

  INSERT INTO 
      `MyGuests` (`fullname`, `nationality`, `gender`, `age`, `mobile_no`, `body_temp`, `diagnosed`, `encounter`, `vaccinated`)
  VALUES 
       (par_name, par_nationality, par_gender, par_age, par_mobile_no, par_body_temp, par_diagnosed, par_encounter, par_vaccinated);

END$$

CREATE PROCEDURE `fetch_guests` ()   BEGIN

SELECT * FROM `MyGuests`;

END$$

DELIMITER ;

-- --------------------------------------------------------

--  
--  Table structure for table `myguests`
--

CREATE TABLE `myguests` (
  `id` int(30) UNSIGNED NOT NULL,
  `fullname` varchar(30) DEFAULT NULL,
  `nationality` varchar(30) NOT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `age` varchar(30) NOT NULL,
  `mobile_no` int(30) NOT NULL,
  `body_temp` int(30) NOT NULL,
  `diagnosed` varchar(30) NOT NULL,
  `encounter` varchar(30) NOT NULL,
  `vaccinated` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myguests`
--

INSERT INTO `myguests` (`id`, `fullname`, `nationality`, `gender`, `age`, `mobile_no`, `body_temp`, `diagnosed`, `encounter`, `vaccinated`) VALUES
(1, 'Francis Nelson Cejas', 'Filipino', 'Male', '00010010', 1000101, 36, 'No', 'No', 'No'),
(2, 'Jevoel Orbilla', 'Filipino', 'Male', '00010010', 1000101, 36, 'No', 'No', 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `myguests`
--
ALTER TABLE `myguests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myguests`
--
ALTER TABLE `myguests` 
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

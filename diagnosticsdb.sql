-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2023 at 09:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diagnosticsdb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `addusers` (IN `par_name` VARCHAR(30), IN `par_nationality` VARCHAR(30), IN `par_gender` VARCHAR(50), IN `par_age` VARCHAR(30), IN `par_mobile_no` VARCHAR(30), IN `par_body_temp` INT(30), IN `par_diagnosed` VARCHAR(30), IN `par_encounter` VARCHAR(30), IN `par_vaccinated` VARCHAR(30))   BEGIN

  INSERT INTO 
      `MyGuests` (`fullname`, `nationality`, `gender`, `age`, `mobile_no`, `body_temp`, `diagnosed`, `encounter`, `vaccinated`)
  VALUES 
       (par_name, par_nationality, par_gender, par_age, par_mobile_no, par_body_temp, par_diagnosed, par_encounter, par_vaccinated);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `fetch_guests` ()   BEGIN

SELECT * FROM `MyGuests`;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `users_from_email` (IN `par_email_co` VARCHAR(50))   BEGIN
SELECT * FROM `MyGuests`
WHERE 
   `email` like concat('%', par_email_co);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `myguests`
--

CREATE TABLE `myguests` (
  `id` int(6) UNSIGNED NOT NULL,
  `fullname` varchar(30) DEFAULT NULL,
  `nationality` varchar(30) NOT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `age` varchar(30) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `body_temp` int(30) NOT NULL,
  `diagnosed` varchar(30) NOT NULL,
  `encounter` varchar(30) NOT NULL,
  `vaccinated` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myguests`
--

INSERT INTO `myguests` (`id`, `fullname`, `nationality`, `gender`, `age`, `mobile_no`, `body_temp`, `diagnosed`, `encounter`, `vaccinated`) VALUES
(1, 'Jevoel TERW', 'Filipino', 'Male', '2 - 12 yrs old', '+63-9759279655', 34, 'Yes', 'Yes', 'Yes'),
(2, 'Jevoel TERW', 'Filipino', 'Male', '2 - 12 yrs old', '+63-9759279655', 34, 'Yes', 'Yes', 'Yes'),
(3, 'Jevoel TERW', 'Filipino', 'Female', '0 - 1 yr old', '+63-9759279655', 77, 'Yes', 'Yes', 'Yes'),
(4, 'Jevoel TERW', 'Filipino', 'Female', '0 - 1 yr old', '+63-9759279655', 77, 'Yes', 'Yes', 'Yes');

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
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

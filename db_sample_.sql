-- create the database first, using the command below:
-- CREATE DATABASE fundb;
-- open the database first, before executing the following operations

CREATE TABLE MyGuests (
                 id INT(6) UNSIGNED AUTO_INCREMENT  PRIMARY KEY,
                 `fullname` VARCHAR(30),
                 `nationality` VARCHAR(30) NOT NULL,
                 `gender` VARCHAR(30),
                 `age` VARCHAR(30) NOT NULL,
                 `mobile_no` VARCHAR(30) NOT NULL,
                 `body_temp` INT(30) NOT NULL,
                 `diagnosed` VARCHAR(30) NOT NULL,
                 `encounter` VARCHAR(30) NOT NULL,
                 `vaccinated` VARCHAR(30) NOT NULL
);

-- SAMPLE INSERT Operation
-- Single Row
-- INSERT INTO `MyGuests` (`fullname`, `nationality`, `gender`, `age`, `mobile_no`, `body_temp`, `diagnosed`, `encounter`, `vaccinated`) VALUES ('Juan', 'Maya', 'juan.maya@email.com');

-- Multiple Rows
-- INSERT INTO `MyGuests` (`firstname`, `lastname`, `email`) VALUES ('Gerome', 'Callo', 'gerome.callo@email.com'),
-- ('Gerome', 'Callo', 'gerome.callo@mainit.com'),
-- ('Meshane', 'Dela Cruz', 'meshane.dcruz@mainit.com'),
-- ('Meshanelle', 'Dela Cruz', 'meshane.dcruz@mainit.com'),
-- ('Perlita', 'Bayabas', 'perlita.bayabas@mainit.com'),
-- ('Johnve', 'Lunas', 'johnveluna@email.com'),
-- ('Meshancy', 'Dela Cruz', 'meshane.dcruz@mainit.com');


-- Retrieve Rows
SELECT * from `MyGuests`;

-- SELECT `firstname`, `lastname` from `MyGuests`;

-- SELECT DISTINCT `firstname`, `lastname` from `MyGuests`;

-- SELECT `lastname`, count(*) FROM `MyGuests` GROUP BY `lastname`;


-- STORED PROCEDURE


DELIMITER $$
CREATE PROCEDURE `addusers` (in par_name varchar(30), in par_nationality varchar(30), in par_gender varchar(50), in par_age varchar(30), in par_mobile_no varchar(30), in par_body_temp int(30), in par_diagnosed varchar(30), in par_encounter varchar(30), in par_vaccinated varchar(30))
BEGIN

  INSERT INTO 
      `MyGuests` (`fullname`, `nationality`, `gender`, `age`, `mobile_no`, `body_temp`, `diagnosed`, `encounter`, `vaccinated`)
  VALUES 
       (par_name, par_nationality, par_gender, par_age, par_mobile_no, par_body_temp, par_diagnosed, par_encounter, par_vaccinated);

END;$$

DELIMITER ;

-- call addusers('FROM', 'STORED', 'from.stored@email.com');




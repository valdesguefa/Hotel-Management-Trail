-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema hotelprojetbd
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hotelprojetbd
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hotelprojetbd` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`receptionists`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`receptionists` (
  `receptionists_id` INT(11) NOT NULL AUTO_INCREMENT,
  `receptionists_firstName` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_lastName` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_email` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_password` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_sex` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_dateOfBirth` DATETIME NULL DEFAULT NULL,
  `receptionists_idCardNumber` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_address` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_securityQuestion` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_answer` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`receptionists_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`reservationagents`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`reservationagents` (
  `reservationAgents_id` INT(11) NOT NULL AUTO_INCREMENT,
  `reservationAgents_firstName` VARCHAR(45) NULL DEFAULT NULL,
  `reservationAgents_lastName` VARCHAR(45) NULL DEFAULT NULL,
  `reservationAgents_email` VARCHAR(45) NULL DEFAULT NULL,
  `reservationAgents_password` VARCHAR(45) NULL DEFAULT NULL,
  `reservationAgents_sex` VARCHAR(45) NULL DEFAULT NULL,
  `reservationAgents_idCardNumber` INT(11) NULL DEFAULT NULL,
  `reservationAgents_startWorkDate` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`reservationAgents_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`teacher`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`teacher` (
  `t_id` INT(11) NOT NULL,
  `t_name` VARCHAR(45) NULL DEFAULT NULL,
  `t_password` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`t_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`student` (
  `s_id` INT(11) NOT NULL,
  `s_name` VARCHAR(45) NULL DEFAULT NULL,
  `teacher_t_id` INT(11) NOT NULL,
  PRIMARY KEY (`s_id`),
  INDEX `fk_student_teacher_idx` (`teacher_t_id` ASC) VISIBLE,
  CONSTRAINT `fk_student_teacher`
    FOREIGN KEY (`teacher_t_id`)
    REFERENCES `mydb`.`teacher` (`t_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

USE `hotelprojetbd` ;

-- -----------------------------------------------------
-- Table `hotelprojetbd`.`admins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelprojetbd`.`admins` (
  `A_id` INT(11) NOT NULL AUTO_INCREMENT,
  `A_fName` VARCHAR(45) NULL DEFAULT NULL,
  `A_lName` VARCHAR(45) NULL DEFAULT NULL,
  `A_email` VARCHAR(45) NULL DEFAULT NULL,
  `A_password` VARCHAR(45) NULL DEFAULT NULL,
  `A_sex` VARCHAR(45) NULL DEFAULT NULL,
  `A_dateOfBirth` DATE NULL DEFAULT NULL,
  `A_idCardNo` VARCHAR(45) NULL DEFAULT NULL,
  `A_address` VARCHAR(45) NULL DEFAULT NULL,
  `A_securityQuess` VARCHAR(45) NULL DEFAULT NULL,
  `A_answer` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`A_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotelprojetbd`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelprojetbd`.`customers` (
  `customers_id` INT(11) NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `lastName` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `email` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `country` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `address` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `gender` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `phone` INT(11) NOT NULL,
  `status` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `customers_regisTime` DATE NULL DEFAULT curdate(),
  `number_of_day` INT(11) NOT NULL,
  PRIMARY KEY (`customers_id`),
  UNIQUE INDEX `customers_id_UNIQUE` (`customers_id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 50
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hotelprojetbd`.`receptionists`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelprojetbd`.`receptionists` (
  `receptionists_id` INT(11) NOT NULL AUTO_INCREMENT,
  `receptionists_firstName` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_lastName` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_email` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_password` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_sex` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_dateOfBirth` DATE NULL DEFAULT NULL,
  `receptionists_idCardNumber` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_address` VARCHAR(45) NULL DEFAULT NULL,
  `receptionists_securityQuestion` VARCHAR(100) NULL DEFAULT NULL,
  `receptionists_answer` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`receptionists_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotelprojetbd`.`rooms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelprojetbd`.`rooms` (
  `rooms_id` INT(11) NOT NULL AUTO_INCREMENT,
  `rooms_number` INT(11) NULL DEFAULT NULL,
  `rooms_type` VARCHAR(45) NULL DEFAULT NULL,
  `rooms_bedType` VARCHAR(45) NULL DEFAULT NULL,
  `rooms_pricePerNight` DOUBLE NULL DEFAULT NULL,
  `rooms_maxPersons` INT(11) NULL DEFAULT NULL,
  `rooms_status` VARCHAR(45) NULL DEFAULT NULL,
  `phone_rooms` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`rooms_id`),
  UNIQUE INDEX `rooms_number_UNIQUE` (`rooms_number` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 47
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotelprojetbd`.`bookings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelprojetbd`.`bookings` (
  `bookings_id` INT(11) NOT NULL AUTO_INCREMENT,
  `checkin` DATE NULL DEFAULT NULL,
  `checkout` DATE NULL DEFAULT NULL,
  `numberOfAdults` INT(11) NULL DEFAULT NULL,
  `numberOfChildren` INT(11) NULL DEFAULT NULL,
  `customers_id` INT(11) NOT NULL,
  `rooms_id` INT(11) NOT NULL,
  `receptionists_id` INT(11) NOT NULL,
  PRIMARY KEY (`bookings_id`),
  INDEX `fk_bookings_customers_idx` (`customers_id` ASC) VISIBLE,
  INDEX `fk_bookings_rooms1_idx` (`rooms_id` ASC) VISIBLE,
  INDEX `fk_bookings_receptionists2_idx` (`receptionists_id` ASC) VISIBLE,
  CONSTRAINT `fk_bookings_customers`
    FOREIGN KEY (`customers_id`)
    REFERENCES `hotelprojetbd`.`customers` (`customers_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_bookings_receptionists2`
    FOREIGN KEY (`receptionists_id`)
    REFERENCES `hotelprojetbd`.`receptionists` (`receptionists_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_bookings_rooms1`
    FOREIGN KEY (`rooms_id`)
    REFERENCES `hotelprojetbd`.`rooms` (`rooms_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 49
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotelprojetbd`.`payments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelprojetbd`.`payments` (
  `payments_id` INT(11) NOT NULL AUTO_INCREMENT,
  `totalAmount` INT(11) NULL DEFAULT NULL,
  `paid` INT(11) NULL DEFAULT NULL,
  `method` VARCHAR(45) NULL DEFAULT NULL,
  `customers_id` INT(11) NOT NULL,
  PRIMARY KEY (`payments_id`),
  UNIQUE INDEX `payments_id_UNIQUE` (`payments_id` ASC) VISIBLE,
  INDEX `fk_payments_customers1_idx` (`customers_id` ASC) VISIBLE,
  CONSTRAINT `fk_payments_customers1`
    FOREIGN KEY (`customers_id`)
    REFERENCES `hotelprojetbd`.`customers` (`customers_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 45
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotelprojetbd`.`plannings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelprojetbd`.`plannings` (
  `plannings_id` INT(11) NOT NULL AUTO_INCREMENT,
  `month` VARCHAR(45) NULL DEFAULT NULL,
  `start_day` INT(11) NULL DEFAULT NULL,
  `end_day` INT(11) NULL DEFAULT NULL,
  `start_hour` INT(11) NULL DEFAULT NULL,
  `end_hour` INT(11) NULL DEFAULT NULL,
  `receptionists_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`plannings_id`),
  INDEX `receptionists_id_idx` (`receptionists_id` ASC) VISIBLE,
  CONSTRAINT `receptionists_id`
    FOREIGN KEY (`receptionists_id`)
    REFERENCES `hotelprojetbd`.`receptionists` (`receptionists_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

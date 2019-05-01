-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema segr5300
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema segr5300
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `segr5300` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema segr5300
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema segr5300
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `segr5300` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `segr5300` ;

-- -----------------------------------------------------
-- Table `segr5300`.`country`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `segr5300`.`country` (
  `country_id` INT NOT NULL AUTO_INCREMENT,
  `country_name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`country_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `segr5300`.`city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `segr5300`.`city` (
  `city_id` INT NOT NULL AUTO_INCREMENT,
  `city_name` VARCHAR(50) NOT NULL,
  `country_id` INT NOT NULL,
  PRIMARY KEY (`city_id`),
  INDEX `country_id_idx` (`country_id` ASC) VISIBLE,
  CONSTRAINT `country_id`
    FOREIGN KEY (`country_id`)
    REFERENCES `segr5300`.`country` (`country_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `segr5300`.`company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `segr5300`.`company` (
  `company_id` INT NOT NULL AUTO_INCREMENT,
  `company_name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`company_id`))
ENGINE = InnoDB;

USE `segr5300` ;

-- -----------------------------------------------------
-- Table `segr5300`.`department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `segr5300`.`department` (
  `department_id` INT(6) NOT NULL,
  `department_name` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`department_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `segr5300`.`all_events`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `segr5300`.`all_events` (
  `all_events_id` INT(6) NOT NULL,
  `all_events_name` VARCHAR(50) NULL DEFAULT NULL,
  `all_events_start_time` DATETIME NULL DEFAULT NULL,
  `all_events_end_time` DATETIME NULL DEFAULT NULL,
  `all_events_address` VARCHAR(50) NULL DEFAULT NULL,
  `department_id` INT NOT NULL,
  `city_id` INT NOT NULL,
  PRIMARY KEY (`all_events_id`),
  INDEX `dept_id_idx` (`department_id` ASC) VISIBLE,
  INDEX `city_id_idx` (`city_id` ASC) VISIBLE,
  CONSTRAINT `dept_id`
    FOREIGN KEY (`department_id`)
    REFERENCES `segr5300`.`department` (`department_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `city_id`
    FOREIGN KEY (`city_id`)
    REFERENCES `segr5300`.`city` (`city_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `segr5300`.`alumni`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `segr5300`.`alumni` (
  `alumni_id` INT(6) NOT NULL,
  `alumni_student_id` INT(10) NULL DEFAULT NULL,
  `alumni_name` VARCHAR(50) NULL DEFAULT NULL,
  `alumni_emailID` VARCHAR(50) NULL DEFAULT NULL,
  `alumni_contact_no` VARCHAR(10) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `alumni_postal_street_address` VARCHAR(100) NULL DEFAULT NULL,
  `city_id` INT NOT NULL,
  `alumni_postal_zip` INT(6) NULL DEFAULT NULL,
  `company_id` INT NOT NULL,
  `alumni_designation` VARCHAR(50) NULL,
  PRIMARY KEY (`alumni_id`),
  INDEX `company_id_idx` (`company_id` ASC) VISIBLE,
  INDEX `city_id_idx` (`city_id` ASC) VISIBLE,
  CONSTRAINT `company_id`
    FOREIGN KEY (`company_id`)
    REFERENCES `segr5300`.`company` (`company_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `city_id`
    FOREIGN KEY (`city_id`)
    REFERENCES `segr5300`.`city` (`city_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `segr5300`.`alum_events`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `segr5300`.`alum_events` (
  `alum_events_id` INT(6) NOT NULL,
  `all_events_id` INT(6) NOT NULL,
  `alumni_id` INT(6) NOT NULL,
  `attended` TINYINT NULL DEFAULT 0,
  PRIMARY KEY (`alum_events_id`),
  INDEX `all_events_id` (`all_events_id` ASC) VISIBLE,
  INDEX `alumni_id` (`alumni_id` ASC) VISIBLE,
  CONSTRAINT `alum_events_ibfk_1`
    FOREIGN KEY (`all_events_id`)
    REFERENCES `segr5300`.`all_events` (`all_events_id`),
  CONSTRAINT `alum_events_ibfk_2`
    FOREIGN KEY (`alumni_id`)
    REFERENCES `segr5300`.`alumni` (`alumni_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `segr5300`.`program_categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `segr5300`.`program_categories` (
  `program_categories_id` INT(6) NOT NULL,
  `program_categories_name` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`program_categories_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `segr5300`.`program`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `segr5300`.`program` (
  `program_id` INT(6) NOT NULL,
  `program_name` VARCHAR(50) NULL DEFAULT NULL,
  `program_begin_date` DATE NULL DEFAULT NULL,
  `department_id` INT(6) NULL DEFAULT NULL,
  `program_categories_id` INT(6) NULL DEFAULT NULL,
  PRIMARY KEY (`program_id`),
  INDEX `department_id` (`department_id` ASC) VISIBLE,
  INDEX `program_categories_id` (`program_categories_id` ASC) VISIBLE,
  CONSTRAINT `program_ibfk_1`
    FOREIGN KEY (`department_id`)
    REFERENCES `segr5300`.`department` (`department_id`),
  CONSTRAINT `program_ibfk_2`
    FOREIGN KEY (`program_categories_id`)
    REFERENCES `segr5300`.`program_categories` (`program_categories_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `segr5300`.`alum_program`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `segr5300`.`alum_program` (
  `alum_program_id` INT(6) NOT NULL,
  `alumni_id` INT(6) NOT NULL,
  `program_id` INT(6) NOT NULL,
  `alum_program_grad_year` YEAR(4) NULL DEFAULT NULL,
  PRIMARY KEY (`alum_program_id`),
  INDEX `alumni_id` (`alumni_id` ASC) VISIBLE,
  INDEX `program_id` (`program_id` ASC) VISIBLE,
  CONSTRAINT `alum_program_ibfk_1`
    FOREIGN KEY (`alumni_id`)
    REFERENCES `segr5300`.`alumni` (`alumni_id`),
  CONSTRAINT `alum_program_ibfk_2`
    FOREIGN KEY (`program_id`)
    REFERENCES `segr5300`.`program` (`program_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `segr5300`.`alumni_donation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `segr5300`.`alumni_donation` (
  `alumni_donation_id` INT(6) NOT NULL,
  `alumni_donation_memo` VARCHAR(50) NULL DEFAULT NULL,
  `alumni_donation_amount` DECIMAL(13,2) NULL DEFAULT NULL,
  `alumni_id` INT(6) NOT NULL,
  PRIMARY KEY (`alumni_donation_id`),
  INDEX `alumni_id` (`alumni_id` ASC) VISIBLE,
  CONSTRAINT `alumni_donation_ibfk_1`
    FOREIGN KEY (`alumni_id`)
    REFERENCES `segr5300`.`alumni` (`alumni_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

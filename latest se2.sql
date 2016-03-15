-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema se2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema se2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `se2` DEFAULT CHARACTER SET utf8 ;
USE `se2` ;

-- -----------------------------------------------------
-- Table `se2`.`followers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `se2`.`followers` (
  `id1` INT(11) NOT NULL,
  `id2` INT(11) NOT NULL,
  PRIMARY KEY (`id1`, `id2`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `se2`.`places`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `se2`.`places` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(300) NOT NULL,
  `description` TEXT NOT NULL,
  `lat` DOUBLE NOT NULL,
  `long` DOUBLE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `se2`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `se2`.`users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(300) NOT NULL,
  `email` VARCHAR(500) NOT NULL,
  `password` VARCHAR(300) NOT NULL,
  `lat` DOUBLE NULL DEFAULT NULL,
  `long` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `last_place_id` (`lat` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

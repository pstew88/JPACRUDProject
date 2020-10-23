-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema guilddb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `guilddb` ;

-- -----------------------------------------------------
-- Schema guilddb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `guilddb` DEFAULT CHARACTER SET utf8 ;
USE `guilddb` ;

-- -----------------------------------------------------
-- Table `unity`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `unity` ;

CREATE TABLE IF NOT EXISTS `unity` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO guilduser@localhost;
 DROP USER guilduser@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'guilduser'@'localhost' IDENTIFIED BY 'guilduser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'guilduser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `unity`
-- -----------------------------------------------------
START TRANSACTION;
USE `guilddb`;
INSERT INTO `unity` (`id`, `name`) VALUES (1, 'Hilros');

COMMIT;

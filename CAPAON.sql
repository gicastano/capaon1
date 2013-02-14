SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

-- -----------------------------------------------------
-- Table `Users`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Users` (
  `correo` VARCHAR(30) NOT NULL ,
  `password` VARCHAR(20) NULL DEFAULT NULL ,
  `tipo` VARCHAR(10) NULL DEFAULT NULL ,
  PRIMARY KEY (`correo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cursos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `cursos` (
  `id_curso` INT NOT NULL AUTO_INCREMENT ,
  `fecha` DATE NULL DEFAULT NULL ,
  `nombre_curso` VARCHAR(45) NULL DEFAULT NULL ,
  `des_general` VARCHAR(300) NULL DEFAULT NULL ,
  `des_detallada` TEXT NULL DEFAULT NULL ,
  `estado` VARCHAR(45) NULL DEFAULT NULL ,
  `instructor_curso` VARCHAR(50) NULL DEFAULT NULL ,
  `lugar` VARCHAR(70) NULL DEFAULT NULL ,
  `hora` TIME NULL DEFAULT NULL ,
  `categoria` VARCHAR(20) NULL DEFAULT NULL ,
  `valor` INT NULL ,
  `cupo` INT(30) NULL ,
  `visible` INT NULL ,
  PRIMARY KEY (`id_curso`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `act_economica`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `act_economica` (
  `id` INT(11) NOT NULL ,
  `actividad` VARCHAR(25) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cliente`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `cliente` (
  `NIT` INT(15) NULL ,
  `cedula` INT(10) NULL ,
  `id_correo` VARCHAR(45) NULL ,
  `nombre` VARCHAR(45) NULL DEFAULT NULL ,
  `direccion` VARCHAR(30) NULL DEFAULT NULL ,
  `telefono` INT(10) NULL DEFAULT NULL ,
  `fax` INT(10) NULL DEFAULT NULL ,
  `act_economica` VARCHAR(20) NULL DEFAULT NULL ,
  `saldo` INT(8) NULL DEFAULT NULL ,
  `estado` VARCHAR(20) NULL ,
  PRIMARY KEY (`cedula`, `NIT`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mensajeria`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mensajeria` (
  `id` INT NULL AUTO_INCREMENT ,
  `correo` VARCHAR(45) NOT NULL ,
  `nombre` VARCHAR(45) NOT NULL ,
  `asunto` VARCHAR(100) NULL ,
  `mensaje` TEXT NULL ,
  `fecha` DATE NULL DEFAULT NULL ,
  `estado` VARCHAR(10) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inscrito_a_cursos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `inscrito_a_cursos` (
  `id` VARCHAR(4) NULL ,
  `id_cliente` VARCHAR(45) NULL ,
  `id_curso` INT(20) NULL ,
  `estado` VARCHAR(20) NULL ,
  `tiempo` DATETIME NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `info_empresa`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `info_empresa` (
  `id` INT(2) NULL ,
  `quienes_somos` TEXT NULL DEFAULT NULL ,
  `mision` TEXT NULL DEFAULT NULL ,
  `vision` TEXT NULL DEFAULT NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pines`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pines` (
  `id_curso` VARCHAR(4) NULL ,
  `pin` VARCHAR(8) NULL ,
  `venta` INT NULL )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- MySQL Script generated by MySQL Workbench
-- Sun Sep  2 12:48:09 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema TroyaGym
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema TroyaGym
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `TroyaGym` DEFAULT CHARACTER SET utf8 ;
USE `TroyaGym` ;

-- -----------------------------------------------------
-- Table `TroyaGym`.`Persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TroyaGym`.`Persona` (
  `id_per` INT NOT NULL,
  `ced_per` VARCHAR(45) NULL,
  `nom_per` VARCHAR(100) NULL,
  `ape_per` VARCHAR(100) NULL,
  `nroFono_per` VARCHAR(45) NULL,
  `edad_per` INT NULL,
  `fechaNac_per` DATE NULL,
  PRIMARY KEY (`id_per`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TroyaGym`.`Analisis`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TroyaGym`.`Analisis` (
  `id_ana` INT NOT NULL,
  `fecha_ana` DATE NULL,
  `exesoGrasa_ana` DECIMAL NULL,
  `exesoLiquido_ana` DECIMAL NULL,
  `exesoTotal_ana` DECIMAL NULL,
  `recomendacionPesas_ana` VARCHAR(500) NULL,
  `recomendacionCardio_ana` VARCHAR(500) NULL,
  `recomendacionFuncional_ana` VARCHAR(500) NULL,
  PRIMARY KEY (`id_ana`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TroyaGym`.`Medidas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TroyaGym`.`Medidas` (
  `id_med` INT NOT NULL,
  `fecha_med` DATE NULL,
  `peso_med` DECIMAL NULL,
  `estatura_med` DECIMAL NULL,
  `edad_med` INT NULL,
  `nroHijos_med` INT NULL,
  `pecho_med` DECIMAL NULL,
  `abdomenAlto_med` DECIMAL NULL,
  `cintura_med` DECIMAL NULL,
  `abdomenBajo_med` DECIMAL NULL,
  `cadera_med` DECIMAL NULL,
  `pierna_med` DECIMAL NULL,
  `pantorrilla_med` DECIMAL NULL,
  `brazo_med` DECIMAL NULL,
  `antebrazo_med` DECIMAL NULL,
  `cuello_med` DECIMAL NULL,
  `espalda_med` DECIMAL NULL,
  `porcentajeGrasa_med` DECIMAL NULL,
  `porcentajeklgs_med` DECIMAL NULL,
  PRIMARY KEY (`id_med`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TroyaGym`.`Ficha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TroyaGym`.`Ficha` (
  `id_ficha` INT NOT NULL,
  `fechaIni_ficha` DATE NULL,
  `fechaFin_ficha` DATE NULL,
  `valPago_ficha` DECIMAL NULL,
  `valPendiete_ficha` DECIMAL NULL,
  `Persona_id_per` INT NOT NULL,
  `Analisis_id_ana` INT NOT NULL,
  `Medidas_id_med` INT NOT NULL,
  PRIMARY KEY (`id_ficha`),
  INDEX `fk_Ficha_Persona_idx` (`Persona_id_per` ASC) VISIBLE,
  INDEX `fk_Ficha_Analisis1_idx` (`Analisis_id_ana` ASC) VISIBLE,
  INDEX `fk_Ficha_Medidas1_idx` (`Medidas_id_med` ASC) VISIBLE,
  CONSTRAINT `fk_Ficha_Persona`
    FOREIGN KEY (`Persona_id_per`)
    REFERENCES `TroyaGym`.`Persona` (`id_per`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ficha_Analisis1`
    FOREIGN KEY (`Analisis_id_ana`)
    REFERENCES `TroyaGym`.`Analisis` (`id_ana`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ficha_Medidas1`
    FOREIGN KEY (`Medidas_id_med`)
    REFERENCES `TroyaGym`.`Medidas` (`id_med`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TroyaGym`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TroyaGym`.`table1` (
)
ENGINE = InnoDB;

USE `TroyaGym` ;

-- -----------------------------------------------------
-- Placeholder table for view `TroyaGym`.`view1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TroyaGym`.`view1` (`id` INT);

-- -----------------------------------------------------
-- View `TroyaGym`.`view1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `TroyaGym`.`view1`;
USE `TroyaGym`;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
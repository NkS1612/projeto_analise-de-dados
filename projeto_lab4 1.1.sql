-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lab4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `lab4` ;

-- -----------------------------------------------------
-- Table `lab4`.`campeonato-brasileiro-estatisticas-full`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab4`.`campeonato-brasileiro-estatisticas-full` (
  `partida_id` INT NULL DEFAULT NULL,
  `rodata` INT NULL DEFAULT NULL,
  `clube` TEXT NULL DEFAULT NULL,
  `chutes` INT NULL DEFAULT NULL,
  `chutes_no_alvo` INT NULL DEFAULT NULL,
  `posse_de_bola` TEXT NULL DEFAULT NULL,
  `passes` INT NULL DEFAULT NULL,
  `precisao_passes` TEXT NULL DEFAULT NULL,
  `faltas` INT NULL DEFAULT NULL,
  `cartao_amarelo` INT NULL DEFAULT NULL,
  `cartao_vermelho` INT NULL DEFAULT NULL,
  `impedimentos` INT NULL DEFAULT NULL,
  `escanteios` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab4`.`campeonato-brasileiro-full`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab4`.`campeonato-brasileiro-full` (
  `ID` INT NULL DEFAULT NULL,
  `rodata` INT NULL DEFAULT NULL,
  `data` TEXT NULL DEFAULT NULL,
  `hora` TEXT NULL DEFAULT NULL,
  `mandante` TEXT NULL DEFAULT NULL,
  `visitante` TEXT NULL DEFAULT NULL,
  `formacao_mandante` TEXT NULL DEFAULT NULL,
  `formacao_visitante` TEXT NULL DEFAULT NULL,
  `tecnico_mandante` TEXT NULL DEFAULT NULL,
  `tecnico_visitante` TEXT NULL DEFAULT NULL,
  `vencedor` TEXT NULL DEFAULT NULL,
  `arena` TEXT NULL DEFAULT NULL,
  `mandante_Placar` INT NULL DEFAULT NULL,
  `visitante_Placar` INT NULL DEFAULT NULL,
  `mandante_Estado` TEXT NULL DEFAULT NULL,
  `visitante_Estado` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab4`.`campeonato-brasileiro-gols`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab4`.`campeonato-brasileiro-gols` (
  `partida_id` INT NULL DEFAULT NULL,
  `rodata` INT NULL DEFAULT NULL,
  `clube` TEXT NULL DEFAULT NULL,
  `atleta` TEXT NULL DEFAULT NULL,
  `minuto` INT NULL DEFAULT NULL,
  `tipo_de_gol` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

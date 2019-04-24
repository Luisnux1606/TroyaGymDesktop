/*
 Navicat MySQL Data Transfer

 Source Server         : troyagym
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : troyagym

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 02/09/2018 14:50:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for analisis
-- ----------------------------
DROP TABLE IF EXISTS `analisis`;
CREATE TABLE `analisis`  (
  `id_ana` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_ana` date NULL DEFAULT NULL,
  `exesoGrasa_ana` decimal(10, 0) NULL DEFAULT NULL,
  `exesoLiquido_ana` decimal(10, 0) NULL DEFAULT NULL,
  `exesoTotal_ana` decimal(10, 0) NULL DEFAULT NULL,
  `recomendacionPesas_ana` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recomendacionCardio_ana` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recomendacionFuncional_ana` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_ana`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ficha
-- ----------------------------
DROP TABLE IF EXISTS `ficha`;
CREATE TABLE `ficha`  (
  `id_ficha` int(11) NOT NULL AUTO_INCREMENT,
  `fechaIni_ficha` date NULL DEFAULT NULL,
  `fechaFin_ficha` date NULL DEFAULT NULL,
  `valPago_ficha` decimal(10, 0) NULL DEFAULT NULL,
  `valPendiete_ficha` decimal(10, 0) NULL DEFAULT NULL,
  `Persona_id_per` int(11) NOT NULL,
  `Analisis_id_ana` int(11) NOT NULL,
  `Medidas_id_med` int(11) NOT NULL,
  PRIMARY KEY (`id_ficha`) USING BTREE,
  INDEX `fk_Ficha_Persona_idx`(`Persona_id_per`) USING BTREE,
  INDEX `fk_Ficha_Analisis1_idx`(`Analisis_id_ana`) USING BTREE,
  INDEX `fk_Ficha_Medidas1_idx`(`Medidas_id_med`) USING BTREE,
  CONSTRAINT `fk_Ficha_Analisis1` FOREIGN KEY (`Analisis_id_ana`) REFERENCES `analisis` (`id_ana`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_Ficha_Medidas1` FOREIGN KEY (`Medidas_id_med`) REFERENCES `medidas` (`id_med`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_Ficha_Persona` FOREIGN KEY (`Persona_id_per`) REFERENCES `persona` (`id_per`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for medidas
-- ----------------------------
DROP TABLE IF EXISTS `medidas`;
CREATE TABLE `medidas`  (
  `id_med` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_med` date NULL DEFAULT NULL,
  `peso_med` decimal(10, 0) NULL DEFAULT NULL,
  `estatura_med` decimal(10, 0) NULL DEFAULT NULL,
  `edad_med` int(11) NULL DEFAULT NULL,
  `nroHijos_med` int(11) NULL DEFAULT NULL,
  `pecho_med` decimal(10, 0) NULL DEFAULT NULL,
  `abdomenAlto_med` decimal(10, 0) NULL DEFAULT NULL,
  `cintura_med` decimal(10, 0) NULL DEFAULT NULL,
  `abdomenBajo_med` decimal(10, 0) NULL DEFAULT NULL,
  `cadera_med` decimal(10, 0) NULL DEFAULT NULL,
  `pierna_med` decimal(10, 0) NULL DEFAULT NULL,
  `pantorrilla_med` decimal(10, 0) NULL DEFAULT NULL,
  `brazo_med` decimal(10, 0) NULL DEFAULT NULL,
  `antebrazo_med` decimal(10, 0) NULL DEFAULT NULL,
  `cuello_med` decimal(10, 0) NULL DEFAULT NULL,
  `espalda_med` decimal(10, 0) NULL DEFAULT NULL,
  `porcentajeGrasa_med` decimal(10, 0) NULL DEFAULT NULL,
  `porcentajeklgs_med` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_med`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona`  (
  `id_per` int(11) NOT NULL AUTO_INCREMENT,
  `ced_per` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nom_per` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ape_per` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nroFono_per` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `edad_per` int(11) NULL DEFAULT NULL,
  `fechaNac_per` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_per`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

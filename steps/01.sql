SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `test`;
CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test`;

DROP TABLE IF EXISTS `search`;
CREATE TABLE `search`
(
    `id` int NOT NULL AUTO_INCREMENT,
    `f1` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci,
    `f2` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci,
    `f3` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci,
    `f4` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci,
    `f5` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci,
    PRIMARY KEY (`id`),
    FULLTEXT KEY `f1_f2_f3_f4_f5` (`f1`,`f2`,`f3`,`f4`,`f5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
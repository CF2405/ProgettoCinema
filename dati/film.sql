-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              10.4.17-MariaDB - mariadb.org binary distribution
-- S.O. server:                  Win64
-- HeidiSQL Versione:            11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dump della struttura del database film
CREATE DATABASE IF NOT EXISTS `film` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `film`;

-- Dump della struttura di tabella film.attori
CREATE TABLE IF NOT EXISTS `attori` (
  `codattore` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `annonascita` year(4) DEFAULT NULL,
  `nazionalita` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codattore`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26790 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella film.attori: ~18 rows (circa)
DELETE FROM `attori`;
/*!40000 ALTER TABLE `attori` DISABLE KEYS */;
INSERT INTO `attori` (`codattore`, `nome`, `annonascita`, `nazionalita`) VALUES
	(26772, 'Carrie Fisher', '1956', 'statunitense'),
	(26773, 'Tom Hanks', '1956', 'statunitense'),
	(26774, 'Kirk Hamill', '1951', 'statunitense'),
	(26775, 'Daisy Ridley', '1992', 'britannica'),
	(26776, 'Sophia Loren', '1934', 'italiana'),
	(26777, 'Marcello Mastroianni', '1924', 'italiana'),
	(26778, 'Jean Reno', '1948', 'francese'),
	(26779, 'Natalie Portman', '1981', 'israeliana'),
	(26780, 'Jean Dujardin', '1972', 'francese'),
	(26781, 'Luis Garrel', '1983', 'francese'),
	(26782, 'Gary Oldman', '1958', 'britannico'),
	(26783, 'Keanu Reeves', '1964', 'canadese'),
	(26784, 'Carrie-Anne Moss', '1967', 'canadese'),
	(26785, 'Hugo Weaving', '1960', 'britannica'),
	(26786, 'Lambert Wilson', '1958', 'francese'),
	(26787, 'Monica Bellucci', '1964', 'italiana'),
	(26788, 'Gerard Depardieu', '1948', 'francese'),
	(26789, 'Joe Pantoliano', '1951', 'statunitense');
/*!40000 ALTER TABLE `attori` ENABLE KEYS */;

-- Dump della struttura di tabella film.film
CREATE TABLE IF NOT EXISTS `film` (
  `codfilm` int(11) NOT NULL AUTO_INCREMENT,
  `titolo` varchar(50) NOT NULL,
  `annoproduzione` year(4) DEFAULT NULL,
  `nazionalita` varchar(50) DEFAULT NULL,
  `regista` varchar(50) DEFAULT NULL,
  `genere` varchar(50) DEFAULT NULL,
  `durata` int(11) DEFAULT NULL,
  PRIMARY KEY (`codfilm`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella film.film: ~15 rows (circa)
DELETE FROM `film`;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` (`codfilm`, `titolo`, `annoproduzione`, `nazionalita`, `regista`, `genere`, `durata`) VALUES
	(1, 'La strada', '1954', 'italiana', 'F. Fellini', NULL, NULL),
	(2, 'Amarcord', '1973', 'italiana', 'F. Fellini', NULL, NULL),
	(3, 'Forrest Gump', '1994', 'statunitense', 'Robert Zemeckis', 'commedia', NULL),
	(4, 'MELANCHOLIA', '2011', 'francese', 'Lars Von Trier', 'fantascienza', 130),
	(5, 'Godzilla', '2014', 'giapponese', NULL, 'fantascienza', NULL),
	(6, 'KONG URAGANO SULLA METROPOLI', '1976', 'giapponese', 'Ishirô Honda', 'fantascienza', 80),
	(7, 'Star Wars: Episode IV – A New Hope', '1977', 'statunitense', 'George Lucas', NULL, NULL),
	(8, 'Star Wars: Episode VII – The Force Awakens', '2015', 'statunitense', 'J. J. Abrams', NULL, NULL),
	(9, 'Matrimonio all\'italiana', '1964', 'italiana', 'Vittorio De Sica', 'commedia', NULL),
	(10, 'La ciociara', '1960', 'italiana', 'Vittorio De Sica', 'commedia', NULL),
	(11, 'J\'accuse', '2019', 'francese', 'Roman Polanski', 'storico', NULL),
	(12, 'Leon', '1994', 'francese', 'Luc Besson', 'drammatico', 136),
	(13, 'The Matrix', '1999', 'statunitense', 'Andy e Larry Wachowski', 'fantascienza', 136),
	(14, 'The Matrix Reloaded', '2003', 'statunitense', 'Andy e Larry Wachowski', 'fantascienza', 138),
	(15, 'Star Wars: Episode V – The Empire Strikes Back', '1980', 'statunitense', 'Irvin Kershner', NULL, NULL),
	(16, 'Jurassic Park', '1993', 'statunitense', 'Steven Spielberg', 'fantascienza', 128),
	(17, 'The Post', '2017', 'statunitense', 'Steven Spielberg', 'drammatico', 117),
	(18, 'John Wick', '2014', 'statunitense', 'Chad Stahelski', 'Azione', 101);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;

-- Dump della struttura di tabella film.proiezioni
CREATE TABLE IF NOT EXISTS `proiezioni` (
  `codproiezione` int(11) NOT NULL AUTO_INCREMENT,
  `codfilm` int(11) NOT NULL,
  `codsala` int(11) NOT NULL,
  `incasso` int(11) NOT NULL,
  `dataproiezione` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`codproiezione`) USING BTREE,
  KEY `FK_proiezioni_film` (`codfilm`),
  KEY `FK_proiezioni_sale` (`codsala`),
  CONSTRAINT `FK_proiezioni_film` FOREIGN KEY (`codfilm`) REFERENCES `film` (`codfilm`) ON UPDATE CASCADE,
  CONSTRAINT `FK_proiezioni_sale` FOREIGN KEY (`codsala`) REFERENCES `sale` (`codsala`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella film.proiezioni: ~15 rows (circa)
DELETE FROM `proiezioni`;
/*!40000 ALTER TABLE `proiezioni` DISABLE KEYS */;
INSERT INTO `proiezioni` (`codproiezione`, `codfilm`, `codsala`, `incasso`, `dataproiezione`) VALUES
	(1, 3, 1, 5000, '0000-00-00'),
	(2, 5, 2, 7200, '0000-00-00'),
	(3, 2, 1, 0, '2021-03-15'),
	(4, 3, 4, 0, '2021-03-15'),
	(5, 3, 1, 10000, '1999-12-25'),
	(6, 7, 2, 1200, '1998-12-25'),
	(7, 3, 1, 0, '2004-12-25'),
	(8, 12, 3, 0, '2005-01-18'),
	(9, 9, 3, 500, '2005-01-12'),
	(10, 13, 1, 0, '2021-03-22'),
	(12, 14, 1, 200, '2021-03-22'),
	(13, 3, 2, 0, '2021-03-25'),
	(14, 16, 1, 1200, '2021-04-15'),
	(15, 16, 2, 1000, '2021-04-15'),
	(16, 17, 1, 1500, '2021-04-15');
/*!40000 ALTER TABLE `proiezioni` ENABLE KEYS */;

-- Dump della struttura di tabella film.recita
CREATE TABLE IF NOT EXISTS `recita` (
  `codfilm` int(11) NOT NULL,
  `codattore` int(11) NOT NULL,
  PRIMARY KEY (`codfilm`,`codattore`),
  KEY `FK_recita_attori` (`codattore`),
  CONSTRAINT `FK_recita_attori` FOREIGN KEY (`codattore`) REFERENCES `attori` (`codattore`) ON UPDATE CASCADE,
  CONSTRAINT `FK_recita_film` FOREIGN KEY (`codfilm`) REFERENCES `film` (`codfilm`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella film.recita: ~23 rows (circa)
DELETE FROM `recita`;
/*!40000 ALTER TABLE `recita` DISABLE KEYS */;
INSERT INTO `recita` (`codfilm`, `codattore`) VALUES
	(3, 26773),
	(7, 26772),
	(7, 26774),
	(8, 26775),
	(9, 26776),
	(9, 26777),
	(10, 26776),
	(11, 26780),
	(11, 26781),
	(12, 26778),
	(12, 26779),
	(12, 26782),
	(13, 26783),
	(13, 26784),
	(13, 26785),
	(13, 26789),
	(14, 26783),
	(14, 26784),
	(14, 26785),
	(14, 26786),
	(14, 26787),
	(15, 26772),
	(15, 26774),
	(18, 26783);
/*!40000 ALTER TABLE `recita` ENABLE KEYS */;

-- Dump della struttura di vista film.recita-view
-- Creazione di una tabella temporanea per risolvere gli errori di dipendenza della vista
CREATE TABLE `recita-view` (
	`nome` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`annonascita` YEAR NULL,
	`nazionalitaattore` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`codfilm` INT(11) NOT NULL,
	`titolo` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`annoproduzione` YEAR NULL,
	`nazionalitafilm` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`regista` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`genere` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`durata` INT(11) NULL
) ENGINE=MyISAM;

-- Dump della struttura di tabella film.sale
CREATE TABLE IF NOT EXISTS `sale` (
  `codsala` int(11) NOT NULL AUTO_INCREMENT,
  `posti` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `citta` varchar(50) NOT NULL,
  PRIMARY KEY (`codsala`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella film.sale: ~7 rows (circa)
DELETE FROM `sale`;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` (`codsala`, `posti`, `nome`, `citta`) VALUES
	(1, 300, 'sala milano 1', 'Milano'),
	(2, 200, 'sala pisa 1', 'Pisa'),
	(3, 100, 'sala pisa 2', 'Pisa'),
	(4, 250, 'sala roma 1', 'Roma'),
	(5, 50, 'sala pisa 3', 'Pisa'),
	(6, 200, 'sala milano 2', 'Milano'),
	(7, 250, 'sala pisa 4', 'Pisa');
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;

-- Dump della struttura di vista film.recita-view
-- Rimozione temporanea di tabella e creazione della struttura finale della vista
DROP TABLE IF EXISTS `recita-view`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `recita-view` AS select `attori`.`nome` AS `nome`,`attori`.`annonascita` AS `annonascita`,`attori`.`nazionalita` AS `nazionalitaattore`,`film`.`codfilm` AS `codfilm`,`film`.`titolo` AS `titolo`,`film`.`annoproduzione` AS `annoproduzione`,`film`.`nazionalita` AS `nazionalitafilm`,`film`.`regista` AS `regista`,`film`.`genere` AS `genere`,`film`.`durata` AS `durata` from ((`attori` join `recita` on(`attori`.`codattore` = `recita`.`codattore`)) join `film` on(`film`.`codfilm` = `recita`.`codfilm`)) WITH CASCADED CHECK OPTION;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

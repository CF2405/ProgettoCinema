-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              10.4.24-MariaDB - mariadb.org binary distribution
-- S.O. server:                  Win64
-- HeidiSQL Versione:            12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dump della struttura del database php_film_database
CREATE DATABASE IF NOT EXISTS `php_film_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `php_film_database`;

-- Dump della struttura di tabella php_film_database.attori
CREATE TABLE IF NOT EXISTS `attori` (
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `codice_matricola` varchar(50) NOT NULL,
  PRIMARY KEY (`codice_matricola`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella php_film_database.attori: ~26 rows (circa)
INSERT INTO `attori` (`nome`, `cognome`, `codice_matricola`) VALUES
	('Timothée', 'Chalamet', 'NC1'),
	('David', 'Dastmalchian', 'NC10'),
	('Chang', 'Chen', 'NC11'),
	('Sharon', 'Duncan-Brewster', 'NC12'),
	('Jason', 'Momoa', 'NC13'),
	('Javier', 'Bardem', 'NC14'),
	('Babs ', 'Olusanmokun', 'NC15'),
	('Souad ', ' Faress', 'NC16'),
	('Michael ', 'Fox', 'NC17'),
	('Christopher ', 'Lloyd', 'NC18'),
	('Lea', 'Thompson', 'NC19'),
	('Zendaya', NULL, 'NC2'),
	('Crispin', ' Glover', 'NC20'),
	('Thomas ', 'Wilson', 'NC21'),
	('Claudia ', 'Wells', 'NC22'),
	('Wendie', 'Sperber', 'NC23'),
	('Marc', 'McClure', 'NC24'),
	('James ', 'Tolkan', 'NC25'),
	('Donald ', 'Fullilove', 'NC26'),
	('Rebecca', 'Ferguson', 'NC3'),
	('Oscar', 'Isaac', 'NC4'),
	('Josh', 'Brolin', 'NC5'),
	('Stellan', ' Skarsgård', 'NC6'),
	('Charlotte ', 'Rampling', 'NC7'),
	('Dave', 'Bautista', 'NC8'),
	('Stephen', 'Henderson', 'NC9');

-- Dump della struttura di tabella php_film_database.cinema
CREATE TABLE IF NOT EXISTS `cinema` (
  `codice_cinema` varchar(50) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `indirzzo` varchar(50) DEFAULT NULL,
  `numero_civico` varchar(50) DEFAULT NULL,
  `comune` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codice_cinema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella php_film_database.cinema: ~2 rows (circa)
INSERT INTO `cinema` (`codice_cinema`, `nome`, `indirzzo`, `numero_civico`, `comune`) VALUES
	('CC1', 'GICAandCO', 'Via C. Battisti', '2', 'Milano'),
	('CC2', 'GICAandCO', 'Via Sauli Pallavicino', '39', 'Genova'),
	('CC3', 'GICAandCO', 'Via Garibaldi', '1', 'Roma');

-- Dump della struttura di tabella php_film_database.film
CREATE TABLE IF NOT EXISTS `film` (
  `codice_film` varchar(50) NOT NULL,
  `generi` varchar(50) DEFAULT NULL,
  `anno_produzione` year(4) DEFAULT NULL,
  `nazionalità_produzione` varchar(50) DEFAULT NULL,
  `stelle` decimal(20,6) DEFAULT NULL,
  `titolo` varchar(50) DEFAULT NULL,
  `codutente` varchar(50) DEFAULT NULL,
  `codattore` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codice_film`),
  KEY `FK_film_utente` (`codutente`),
  KEY `FK_film_attori` (`codattore`),
  KEY `FK_film_genere` (`generi`),
  CONSTRAINT `FK_film_attori` FOREIGN KEY (`codattore`) REFERENCES `attori` (`codice_matricola`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_film_genere` FOREIGN KEY (`generi`) REFERENCES `genere` (`generi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_film_utente` FOREIGN KEY (`codutente`) REFERENCES `utente` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella php_film_database.film: ~45 rows (circa)
INSERT INTO `film` (`codice_film`, `generi`, `anno_produzione`, `nazionalità_produzione`, `stelle`, `titolo`, `codutente`, `codattore`) VALUES
	('01', 'fantascenza', '2021', 'americana', 4.500000, 'dune', NULL, NULL),
	('02', 'fantascenza', '1985', 'americana', 5.000000, 'Ritorno al Futuro', NULL, NULL),
	('03', 'fantascenza', '2009', 'americana', 4.800000, 'Avatar', NULL, NULL),
	('04', 'fantascenza', '1977', 'inglese', 4.900000, 'Star Wars', NULL, NULL),
	('05', 'fantascenza', '1982', 'inglese', 3.400000, 'ET', NULL, NULL),
	('06', 'fantascenza', '1999', 'americana', 2.100000, 'Matrix', NULL, NULL),
	('07', 'fantascenza', '2017', 'americana', 1.000000, 'Blade Runner', NULL, NULL),
	('08', 'fantascenza', '2010', 'americana', 2.670000, 'Inception', NULL, NULL),
	('09', 'fantascenza', '2009', 'americana', 3.800000, 'The Terminator', NULL, NULL),
	('10', 'horror', '1999', 'americana', 2.400000, 'Audition', NULL, NULL),
	('11', 'horror', '1980', 'americana', 1.200000, 'The Shining', NULL, NULL),
	('12', 'horror', '1976', 'americana', 0.500000, 'The Omen', NULL, NULL),
	('13', 'horror', '2014', 'americana', 4.000000, 'Annabelle', NULL, NULL),
	('14', 'horror', '1996', 'americana', 4.200000, 'Scream', NULL, NULL),
	('15', 'horror', '1981', 'americana', 4.700000, 'The Conjuring', NULL, NULL),
	('16', 'horror', '2017', 'americana', 5.000000, 'IT', NULL, NULL),
	('17', 'horror', '2002', 'americana', 2.900000, 'The Ring', NULL, NULL),
	('18', 'horror', '2002', 'inglese', 3.100000, 'Sharper', NULL, NULL),
	('19', 'avventura', '2001', 'italiano ', 3.000000, 'Odissea nello spazio', NULL, NULL),
	('20', 'avventura', '1997', 'italiano ', 2.000000, 'fuga da New York', NULL, NULL),
	('21', 'avventura', '2021', 'americana', 5.000000, 'Jungle Cruise', NULL, NULL),
	('22', 'avventura', '2019', 'americana', 5.000000, 'Jumanjy the next level', NULL, NULL),
	('23', 'avventura', '2001', 'americana', 1.500000, 'Atlantis', NULL, NULL),
	('24', 'avventura', '2018', 'americana', 2.300000, 'Tomb Raider', NULL, NULL),
	('25', 'avventura', '2023', 'inglese', 4.000000, 'Avatar2', NULL, NULL),
	('26', 'avventura', '2019', 'inglese', 1.000000, 'Joker ', NULL, NULL),
	('27', 'avventura', '1978', 'americana', 5.000000, 'Indiana Jones', NULL, NULL),
	('28', 'romantico', '1965', 'italiano ', 4.200000, 'Tutti insieme appassionatamente', NULL, NULL),
	('29', 'romantico', '1971', 'americana', 3.000000, 'Harold e Maude', NULL, NULL),
	('30', 'romantico', '2013', 'italiano ', 5.000000, 'Lei', NULL, NULL),
	('31', 'romantico', '1990', 'americana', 5.000000, 'Pretty Woman', NULL, NULL),
	('32', 'romantico', '1991', 'americana', 5.000000, 'La Bella e la Bestia', NULL, NULL),
	('33', 'romantico', '1994', 'italiano ', 1.100000, 'il Postino', NULL, NULL),
	('34', 'romantico', '2004', 'italiano ', 4.000000, 'Se mi lasci ti cancello', NULL, NULL),
	('35', 'romantico', '0000', 'americana', 2.900000, 'Harry ti prensento Sally', NULL, NULL),
	('36', 'romantico', '1989', 'americana', 4.900000, 'Titanic', NULL, NULL),
	('37', 'commedia', '2001', 'americana', 5.000000, 'Legally Blonde', NULL, NULL),
	('38', 'commedia', '2003', 'italiano ', 1.800000, 'La fine del mondo', NULL, NULL),
	('39', 'commedia', '2002', 'americana', 3.600000, 'Jackass', NULL, NULL),
	('40', 'commedia', '2004', 'americana', 5.000000, 'Kung Fusion', NULL, NULL),
	('41', 'commedia', '2016', 'italiano ', 1.000000, 'Ave Cesare', NULL, NULL),
	('42', 'commedia', '2014', 'italiano ', 3.600000, 'Forza Maggiore', NULL, NULL),
	('43', 'commedia', '2016', 'italiano ', 4.300000, 'Amore e Inganni', NULL, NULL),
	('44', 'commedia', '2011', 'americana', 2.900000, 'The Trip', NULL, NULL),
	('45', 'commedia', '1974', 'italiano ', 5.000000, 'Arizona Junior', NULL, NULL);

-- Dump della struttura di tabella php_film_database.genere
CREATE TABLE IF NOT EXISTS `genere` (
  `generi` varchar(50) NOT NULL,
  PRIMARY KEY (`generi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella php_film_database.genere: ~4 rows (circa)
INSERT INTO `genere` (`generi`) VALUES
	('avventura'),
	('commedia'),
	('fantascenza'),
	('horror'),
	('romantico');

-- Dump della struttura di tabella php_film_database.produzione
CREATE TABLE IF NOT EXISTS `produzione` (
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `codice_film` varchar(50) NOT NULL,
  PRIMARY KEY (`nome`,`cognome`,`codice_film`),
  KEY `FK__film` (`codice_film`),
  CONSTRAINT `FK__film` FOREIGN KEY (`codice_film`) REFERENCES `film` (`codice_film`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__regista` FOREIGN KEY (`nome`, `cognome`) REFERENCES `regista` (`nome`, `cognome`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella php_film_database.produzione: ~2 rows (circa)
INSERT INTO `produzione` (`nome`, `cognome`, `codice_film`) VALUES
	('Denis', ' Villeneuve', '01'),
	('James', ' Cameron', '03');

-- Dump della struttura di tabella php_film_database.proiezione
CREATE TABLE IF NOT EXISTS `proiezione` (
  `codice_proiezione` varchar(50) NOT NULL,
  `data` date DEFAULT NULL,
  `codfilm` varchar(50) DEFAULT NULL,
  `codsala` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codice_proiezione`),
  KEY `FK_proiezione_sala` (`codsala`),
  KEY `FK_proiezione_film` (`codfilm`),
  CONSTRAINT `FK_proiezione_film` FOREIGN KEY (`codfilm`) REFERENCES `film` (`codice_film`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_proiezione_sala` FOREIGN KEY (`codsala`) REFERENCES `sala` (`codice_sala`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella php_film_database.proiezione: ~0 rows (circa)

-- Dump della struttura di tabella php_film_database.recita
CREATE TABLE IF NOT EXISTS `recita` (
  `codice_film` varchar(50) NOT NULL,
  `codice_matricola` varchar(50) NOT NULL,
  PRIMARY KEY (`codice_film`,`codice_matricola`),
  KEY `FK_recita_attori` (`codice_matricola`),
  CONSTRAINT `FK_recita_attori` FOREIGN KEY (`codice_matricola`) REFERENCES `attori` (`codice_matricola`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_recita_film` FOREIGN KEY (`codice_film`) REFERENCES `film` (`codice_film`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella php_film_database.recita: ~23 rows (circa)
INSERT INTO `recita` (`codice_film`, `codice_matricola`) VALUES
	('01', 'NC1'),
	('01', 'NC10'),
	('01', 'NC11'),
	('01', 'NC12'),
	('01', 'NC13'),
	('01', 'NC14'),
	('01', 'NC15'),
	('01', 'NC16'),
	('01', 'NC2'),
	('01', 'NC3'),
	('01', 'NC4'),
	('01', 'NC5'),
	('01', 'NC6'),
	('01', 'NC7'),
	('01', 'NC8'),
	('01', 'NC9'),
	('02', 'NC17'),
	('02', 'NC18'),
	('02', 'NC19'),
	('02', 'NC20'),
	('02', 'NC21'),
	('02', 'NC22'),
	('02', 'NC24'),
	('02', 'NC25'),
	('02', 'NC26');

-- Dump della struttura di tabella php_film_database.regista
CREATE TABLE IF NOT EXISTS `regista` (
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  PRIMARY KEY (`nome`,`cognome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella php_film_database.regista: ~3 rows (circa)
INSERT INTO `regista` (`nome`, `cognome`) VALUES
	('Denis', ' Villeneuve'),
	('James', ' Cameron'),
	('Robert ', 'Zemeckis');

-- Dump della struttura di tabella php_film_database.sala
CREATE TABLE IF NOT EXISTS `sala` (
  `numero` int(11) DEFAULT NULL,
  `codice_sala` varchar(50) NOT NULL,
  `riga` varchar(50) DEFAULT NULL,
  `fila` varchar(50) DEFAULT NULL,
  `codice_cinema` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codice_sala`),
  KEY `FK_sala_cinema` (`codice_cinema`),
  CONSTRAINT `FK_sala_cinema` FOREIGN KEY (`codice_cinema`) REFERENCES `cinema` (`codice_cinema`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella php_film_database.sala: ~2 rows (circa)
INSERT INTO `sala` (`numero`, `codice_sala`, `riga`, `fila`, `codice_cinema`) VALUES
	(2, 'PQS2', NULL, NULL, 'CC1'),
	(1, 'PRS1', NULL, NULL, 'CC1');

-- Dump della struttura di tabella php_film_database.utente
CREATE TABLE IF NOT EXISTS `utente` (
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `indirizzo` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `città` varchar(50) DEFAULT NULL,
  `numero_civico` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella php_film_database.utente: ~3 rows (circa)
INSERT INTO `utente` (`nome`, `cognome`, `data_nascita`, `telefono`, `indirizzo`, `email`, `città`, `numero_civico`, `username`, `password`) VALUES
	('Sara', 'Martinelli', '2005-08-23', 3389765433, 'Libertà', 'Saramood@yahoo.it', 'Monza', '1', 'amo_mood43', 'ciaosonosara'),
	('Cecilia', 'Fassita', '1997-12-23', 3214567986, 'Adda', 'CeciFassita@gmail.com', 'Cornate d\'Adda', '3', 'Ceci45632', 'ewoingoerinhgrenf1'),
	('Paolo', 'Villa', '2001-04-21', 3450223888, 'Mameli', 'paolovilla34@gmail.com', 'Milano', '8', 'villaPaoli65', 'cjiofurebfq34');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

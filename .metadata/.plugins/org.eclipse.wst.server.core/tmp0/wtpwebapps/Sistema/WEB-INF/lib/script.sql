-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.5.9-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para libreria_udemy
## CREATE DATABASE IF NOT EXISTS `libreria_udemy` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `library`;



-- Volcando estructura para tabla libreria_udemy.libros
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `copies` int(11) DEFAULT NULL,
  `novelty` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria_udemy.libros: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `book` (`id`, `title`, `genre`, `author`, `copies`, `novelty`) VALUES
	(1, 'Robinson Crusoe', 'Aventuras', 'Daniel Defoe', 4, 0),
	(2, 'Los miserables', 'Histórica', 'Victor Hugo', 4, 1),
	(3, 'Viaje al centro de la tierra', 'Aventuras', 'Julio Verne', 3, 0),
	(4, '1984', 'Ciencia Ficción', 'George Orwell', 2, 0),
	(5, 'Los pilares de la tierra', 'Histórica', 'Ken Follet', 10, 1),
	(6, 'Un mundo feliz', 'Ciencia Ficción', 'Aldous Huxley', 6, 0),
	(7, 'Cien años de soledad', 'Aventuras', 'Gabriel García Márquez', 10, 0),
	(8, 'Orgullo y prejuicio', 'Romántica', 'Jane Austen', 4, 0),
	(9, 'El Señor de los Anillos', 'Ciencia Ficción', 'J.R. Tolkien', 8, 1),
	(10, 'El sueño eterno', 'Policiaca', 'Raymond Chandler', 4, 1),
	(11, 'Pensar rápido, pensar despacio', 'Científica', 'Daniel Kahneman', 4, 1),
	(12, 'Asesinato en el Orient Express', 'Policiaca', 'Agatha Christie', 5, 0),
	(13, 'El resplandor', 'Terror', 'Stephen King', 8, 0),
	(14, 'Sapiens: de animales a dioses', 'Científica', 'Yuval Noah Harari', 6, 0),
	(15, 'El exorcista', 'Terror', 'William Peter Blatty', 3, 0),
	(16, 'Steve Jobs', 'Biografía', 'Walter Isaacson', 6, 0),
	(17, 'Elon Musk', 'Biografía', 'Ashlee Vance', 2, 1),
	(18, 'El silencio de los corderos', 'Terror', 'Thomas Harris', 3, 0),
	(19, 'El guardián entre el centeno', 'Romántica', 'J.D. Salinger', 4, 0),
	(20, 'El señor de las moscas', 'Aventuras', 'William Golding', 6, 0);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;

-- Volcando estructura para tabla libreria_udemy.usuarios
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `balance` double(22,2) DEFAULT NULL,
  `premium` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria_udemy.usuarios: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla libreria_udemy.alquiler
CREATE TABLE IF NOT EXISTS `rent` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `rentaldate` datetime NOT NULL,
  PRIMARY KEY (`id`,`username`,`rentaldate`) USING BTREE,
  KEY `FK__usuarios` (`username`),
  CONSTRAINT `FK__books` FOREIGN KEY (`id`) REFERENCES `books` (`id`),
  CONSTRAINT `FK__users` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=LATIN1;

-- Volcando datos para la tabla libreria_udemy.alquiler: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

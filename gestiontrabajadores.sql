-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-12-2024 a las 04:31:48
-- Versión del servidor: 8.0.40
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestiontrabajadores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

DROP TABLE IF EXISTS `trabajador`;
CREATE TABLE IF NOT EXISTS `trabajador` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `numero_documento` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `meses_trabajados` int DEFAULT '0',
  `tipo_seguro` enum('ESSALUD','EPS') NOT NULL,
  `sueldo` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_documento` (`numero_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`id`, `nombre`, `apellido_paterno`, `apellido_materno`, `numero_documento`, `fecha_nacimiento`, `direccion`, `meses_trabajados`, `tipo_seguro`, `sueldo`) VALUES
(1, 'Juan', 'Perez', 'Gomez', '12345678', '1990-05-15', 'Av. Principal 123', 24, 'ESSALUD', 1500.50),
(2, 'Maria', 'Lopez', 'Diaz', '87654321', '1985-08-20', 'Jr. Secundario 456', 36, 'EPS', 2000.75),
(3, 'Carlos', 'Martinez', 'Sanchez', '56789012', '1992-11-10', 'Calle Terciaria 789', 12, 'ESSALUD', 1800.00),
(4, 'Yordy', 'Castillo', 'Cueva', '12', '2024-07-12', 'hgthfgh', 12, 'EPS', 100.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

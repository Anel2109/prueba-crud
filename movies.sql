-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-04-2020 a las 01:39:49
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `movies`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`id`, `country`) VALUES
(1, 'ESTADOS UNIDOS'),
(2, 'ALEMANIA'),
(3, 'FRANCIA'),
(4, 'COLOMBIA'),
(5, 'ITALIA'),
(6, 'JAPON'),
(7, 'CHINA'),
(8, 'COREA DEL SUR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languaje_movie`
--

CREATE TABLE `languaje_movie` (
  `id` int(11) NOT NULL,
  `languaje` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `languaje_movie`
--

INSERT INTO `languaje_movie` (`id`, `languaje`) VALUES
(1, 'INGLES'),
(2, 'FRANCES'),
(3, 'ESPAÑOL'),
(4, 'CHINO'),
(5, 'ALEMAN'),
(6, 'PORTUGUES'),
(7, 'ITALIANO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `movie_name` varchar(45) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `languaje_id` int(11) DEFAULT NULL,
  `release_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movie`
--

INSERT INTO `movie` (`id`, `movie_name`, `type_id`, `country_id`, `languaje_id`, `release_date`) VALUES
(1, 'SCARY MOVIE', 2, 1, 1, 2004);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movie_type`
--

CREATE TABLE `movie_type` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movie_type`
--

INSERT INTO `movie_type` (`id`, `name`) VALUES
(1, 'TERROR'),
(2, 'COMEDIA'),
(3, 'DRAMA'),
(4, 'ACCION'),
(5, 'INFANTILES');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `languaje_movie`
--
ALTER TABLE `languaje_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movie_type`
--
ALTER TABLE `movie_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `languaje_movie`
--
ALTER TABLE `languaje_movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `movie_type`
--
ALTER TABLE `movie_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

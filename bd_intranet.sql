-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2015 a las 10:52:34
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_intranet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoinfo`
--

CREATE TABLE IF NOT EXISTS `estadoinfo` (
  `idEstado` int(255) NOT NULL,
  `nomEstado` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `estadoinfo`
--

INSERT INTO `estadoinfo` (`idEstado`, `nomEstado`) VALUES
(1, 'Disponible'),
(2, 'No disponible'),
(3, 'En reparacion'),
(4, 'Todos los estados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadouser`
--

CREATE TABLE IF NOT EXISTS `estadouser` (
  `iduserestado` int(11) DEFAULT NULL,
  `estado` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registers`
--

CREATE TABLE IF NOT EXISTS `registers` (
  `idRegister` int(255) NOT NULL,
  `data_ini` datetime NOT NULL,
  `data_fin` datetime DEFAULT NULL,
  `idResource` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `registers`
--

INSERT INTO `registers` (`idRegister`, `data_ini`, `data_fin`, `idResource`, `idUser`) VALUES
(1, '2015-11-04 08:37:32', '2015-11-06 12:22:30', 6, 1),
(7, '2015-11-06 12:20:01', '2015-11-06 12:21:13', 15, 3),
(8, '2015-11-06 12:20:53', '2015-11-06 12:21:21', 1, 3),
(9, '2015-11-06 12:23:30', '2015-11-06 12:23:52', 15, 3),
(10, '2015-11-06 12:24:04', NULL, 12, 3),
(11, '2015-11-06 12:24:10', '2015-11-17 08:19:31', 15, 3),
(12, '2015-11-06 12:25:08', NULL, 11, 3),
(13, '2015-11-16 10:49:19', NULL, 16, 2),
(14, '2015-11-16 12:23:01', NULL, 1, 2),
(15, '2015-11-16 12:23:13', NULL, 3, 2),
(16, '2015-11-17 08:28:17', NULL, 15, 5),
(17, '2015-11-18 09:40:04', NULL, 8, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resources`
--

CREATE TABLE IF NOT EXISTS `resources` (
  `idResource` int(255) NOT NULL,
  `nomR` varchar(50) COLLATE utf8_bin NOT NULL,
  `idEstado` int(11) NOT NULL,
  `idRType` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `resources`
--

INSERT INTO `resources` (`idResource`, `nomR`, `idEstado`, `idRType`) VALUES
(1, 'Aula de teoria 1', 2, 4),
(2, 'Aula de teoria 2', 1, 4),
(3, 'Aula de teoria 3', 2, 4),
(4, 'Aula de teoria 4', 1, 4),
(5, 'Aula de informatica 1', 1, 11),
(6, 'Aula de informatica 2', 1, 11),
(7, 'Despacho entrevistas 1', 1, 5),
(8, 'Despacho entrevistas 2', 2, 5),
(9, 'Sala de reuniones 1', 1, 8),
(10, 'Proyector 1', 1, 9),
(11, 'Carro portatiles 1', 2, 1),
(12, 'Portatil 1', 2, 10),
(13, 'Portatil 2', 1, 10),
(14, 'Portatil 3', 1, 10),
(15, 'Movil 1', 2, 2),
(16, 'Movil 2', 2, 2),
(18, 'Todos los recursos', 1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resourcestype`
--

CREATE TABLE IF NOT EXISTS `resourcestype` (
  `idRType` int(255) NOT NULL,
  `tipo` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `resourcestype`
--

INSERT INTO `resourcestype` (`idRType`, `tipo`) VALUES
(1, 'Accesorios'),
(2, 'Moviles'),
(4, 'Aulas de teoria'),
(5, 'Despachos entrevista'),
(8, 'Salas de reuniones'),
(9, 'Proyectores'),
(10, 'Portatiles'),
(11, 'Aulas de informatica'),
(12, 'Todos los tipos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `idUser` int(255) NOT NULL,
  `nomUser` varchar(50) COLLATE utf8_bin NOT NULL,
  `mail` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `telf` int(9) NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `privilegios` varchar(25) COLLATE utf8_bin NOT NULL,
  `estado` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`idUser`, `nomUser`, `mail`, `telf`, `password`, `privilegios`, `estado`) VALUES
(1, 'Carlos Pepe', 'carlos@gmail.com', 666554422, 'carsan', 'member', 1),
(2, 'Oscar Ortiz Fernandez', 'oscar@intranet.es', 999887733, 'oscort', 'admin', 1),
(3, 'Jose Luis Maseda', 'joseluis@intranet.es', 777332211, 'josmas', 'admin', 1),
(5, 'Alejandro Moreno', 'alejandro@intranet.es', 444553366, 'alemor', 'member', 1),
(10, 'Raul Perez', 'raulperez@intranet.es', 555555555, 'rauper', 'member', 1),
(13, 'Oriol Villorbina', 'oriolvillorbina@intranet.es', 618196080, 'orivil', 'member', 1),
(15, 'MartÃ­ Salvador', 'martisalvador@intranet.es', 164181541, 'marsal', 'member', 0),
(16, 'AdriÃ  Amela', 'adriamela@intranet.es', 658621658, 'adrame', 'member', 1),
(18, 'Andrea Dalmau', 'andreadalmau@intranet.es', 618661611, 'anddal', 'member', 1),
(19, 'Ingrid Chomara', 'ingridchomara@intranet.es', 615186516, 'infcho', 'member', 1),
(20, 'Marta BurgalÃ©s', 'martaburgales@intranet.es', 618668161, 'marbur', 'member', 1),
(21, 'Yannick Amigo', 'yannickamigo@intranet.es', 618818181, 'yanami', 'member', 1),
(22, 'Jorge Jaico', 'jorgejaico@intranet.es', 618891618, 'jorjai', 'member', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estadoinfo`
--
ALTER TABLE `estadoinfo`
  ADD PRIMARY KEY (`idEstado`);

--
-- Indices de la tabla `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`idRegister`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idResource` (`idResource`),
  ADD KEY `idRegister` (`idRegister`);

--
-- Indices de la tabla `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`idResource`),
  ADD KEY `idResource` (`idResource`),
  ADD KEY `idRType` (`idRType`),
  ADD KEY `idEstado` (`idEstado`);

--
-- Indices de la tabla `resourcestype`
--
ALTER TABLE `resourcestype`
  ADD PRIMARY KEY (`idRType`),
  ADD KEY `idRType` (`idRType`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idUser_2` (`idUser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estadoinfo`
--
ALTER TABLE `estadoinfo`
  MODIFY `idEstado` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `registers`
--
ALTER TABLE `registers`
  MODIFY `idRegister` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `resources`
--
ALTER TABLE `resources`
  MODIFY `idResource` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `resourcestype`
--
ALTER TABLE `resourcestype`
  MODIFY `idRType` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registers`
--
ALTER TABLE `registers`
  ADD CONSTRAINT `idResource` FOREIGN KEY (`idResource`) REFERENCES `resources` (`idResource`),
  ADD CONSTRAINT `idUser` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`);

--
-- Filtros para la tabla `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `idEstado` FOREIGN KEY (`idEstado`) REFERENCES `estadoinfo` (`idEstado`),
  ADD CONSTRAINT `idRType` FOREIGN KEY (`idRType`) REFERENCES `resourcestype` (`idRType`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

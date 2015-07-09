-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-07-2015 a las 22:41:45
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyectofinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`ID`, `Nombre`) VALUES
(1, 'Fuentes de poder'),
(2, 'Procesadores'),
(3, 'Monitores'),
(4, 'Teclados'),
(5, 'Tarjetas de video'),
(6, 'Gabinetes'),
(7, 'Apple'),
(8, 'Audio y Video'),
(9, 'Software');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `CategoriaID` int(11) NOT NULL,
  `CantExistente` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `Nombre`, `CategoriaID`, `CantExistente`, `created_at`, `updated_at`) VALUES
(1, 'Cooler master C60M', 1, 2, '2015-07-09 20:20:34', '2015-07-09 02:21:10'),
(2, 'Corsair CX300', 1, 9, '2015-07-09 20:20:50', '2015-07-09 02:34:04'),
(3, 'AMD Fx 8350 4.0 GHZ', 2, 15, '2015-07-09 03:26:13', '2015-07-09 03:26:13'),
(4, 'Intel I7', 2, 5, '2015-07-10 01:33:51', '2015-07-10 01:33:51'),
(5, 'Intel I5', 2, 15, '2015-07-10 02:16:00', '2015-07-10 02:16:00'),
(6, ' AOC AOC Monitor e22', 3, 20, '2015-07-10 02:25:08', '2015-07-10 02:25:08'),
(9, ' MICROSOFT Microsoft', 4, 10, '2015-07-10 02:28:18', '2015-07-10 02:28:18'),
(10, ' RAZER Razer BlackWi', 4, 13, '2015-07-10 02:28:43', '2015-07-10 02:28:43'),
(11, ' SAMSUNG Samsung Mon', 3, 12, '2015-07-10 02:30:06', '2015-07-10 02:30:06'),
(12, ' PNY Tarjeta de Vide', 5, 16, '2015-07-10 02:31:12', '2015-07-10 02:31:12'),
(13, ' GIGABYTE Tarjeta de', 5, 18, '2015-07-10 02:31:40', '2015-07-10 02:31:40'),
(14, ' THERMALTAKE Thermal', 6, 20, '2015-07-10 02:32:19', '2015-07-10 02:32:19'),
(15, ' COOLER MASTER Coole', 6, 25, '2015-07-10 02:32:34', '2015-07-10 02:32:34'),
(16, ' ACTECK Acteck Badem', 6, 26, '2015-07-10 02:32:52', '2015-07-10 02:32:52'),
(17, ' APPLE Apple iPad Mi', 7, 11, '2015-07-10 02:33:28', '2015-07-10 02:33:28'),
(18, ' APPLE Apple Mac Min', 7, 6, '2015-07-10 02:33:46', '2015-07-10 02:33:46'),
(19, ' ACTECK Acteck Siste', 8, 7, '2015-07-10 02:34:26', '2015-07-10 02:34:26'),
(20, ' PLANTRONICS Plantro', 8, 10, '2015-07-10 02:34:42', '2015-07-10 02:34:42'),
(21, ' STARTECH.COM StarTe', 8, 12, '2015-07-10 02:35:33', '2015-07-10 02:35:33'),
(22, ' SONY Sony Amplifica', 8, 17, '2015-07-10 02:35:49', '2015-07-10 02:35:49'),
(23, ' MICROSOFT Microsoft', 9, 25, '2015-07-10 02:36:26', '2015-07-10 02:36:26'),
(24, ' MICROSOFT Microsoft', 9, 27, '2015-07-10 02:36:49', '2015-07-10 02:36:49'),
(25, ' MCAFEE McAfee AntiV', 9, 17, '2015-07-10 02:37:07', '2015-07-10 02:37:07'),
(26, ' APPLE Apple Smart C', 7, 9, '2015-07-10 02:37:42', '2015-07-10 02:37:42'),
(27, ' GIGABYTE Tarjeta de', 5, 28, '2015-07-10 02:38:34', '2015-07-10 02:38:34'),
(28, ' GENIUS Genius Tecla', 4, 14, '2015-07-10 02:39:07', '2015-07-10 02:39:07'),
(29, ' SAMSUNG Samsung Mon', 3, 17, '2015-07-10 02:39:55', '2015-07-10 02:39:55'),
(30, ' COOLER MASTER Coole', 1, 18, '2015-07-10 02:40:45', '2015-07-10 02:40:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida`
--

CREATE TABLE IF NOT EXISTS `salida` (
  `Folio` int(11) NOT NULL,
  `Vendedor_ID` int(11) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida_producto`
--

CREATE TABLE IF NOT EXISTS `salida_producto` (
  `ID` int(11) NOT NULL,
  `Producto_ID` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Usuario_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellidos` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Nombre`, `Apellidos`) VALUES
(1, 'Alejandro', 'Zazueta'),
(2, 'Juampi', 'Zazueta'),
(3, 'Ale', 'Zazueta'),
(4, 'jandro', 'zueta'),
(5, 'andro', 'Zazua'),
(6, 'Alo', 'eta'),
(7, 'julio', 'Zipo'),
(8, 'felipe', 'ulio'),
(9, 'clemente', 'gerardo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`), ADD KEY `CategoriaID` (`CategoriaID`);

--
-- Indices de la tabla `salida_producto`
--
ALTER TABLE `salida_producto`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

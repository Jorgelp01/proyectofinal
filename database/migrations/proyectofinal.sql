-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2015 a las 22:48:41
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `Nombre`, `CategoriaID`, `CantExistente`, `created_at`, `updated_at`) VALUES
(1, 'Cooler master C60M', 1, 0, '2015-07-15 19:36:23', '2015-07-09 02:21:10'),
(2, 'Corsair CX300', 1, 7, '2015-07-17 07:42:09', '2015-07-09 02:34:04'),
(3, 'AMD Fx 8350 4.0 GHZ', 2, 1, '2015-07-17 06:11:45', '2015-07-09 03:26:13'),
(4, 'Intel I7', 2, 5, '2015-07-10 01:33:51', '2015-07-10 01:33:51'),
(5, 'Intel I5', 2, 9, '2015-07-17 07:30:58', '2015-07-10 02:16:00'),
(6, ' AOC AOC Monitor e22', 3, 0, '2015-07-17 20:10:30', '2015-07-10 02:25:08'),
(9, ' MICROSOFT Microsoft', 4, 1, '2015-07-17 06:05:06', '2015-07-10 02:28:18'),
(10, ' RAZER Razer BlackWi', 4, 13, '2015-07-10 02:28:43', '2015-07-10 02:28:43'),
(11, ' SAMSUNG Samsung Mon', 3, 8, '2015-07-17 20:00:50', '2015-07-10 02:30:06'),
(12, ' PNY Tarjeta de Vide', 5, 15, '2015-07-17 07:43:49', '2015-07-10 02:31:12'),
(13, ' GIGABYTE Tarjeta de', 5, 18, '2015-07-10 02:31:40', '2015-07-10 02:31:40'),
(14, ' THERMALTAKE Thermal', 6, 8, '2015-07-17 06:04:15', '2015-07-10 02:32:19'),
(15, ' COOLER MASTER Coole', 6, 25, '2015-07-10 02:32:34', '2015-07-10 02:32:34'),
(16, ' ACTECK Acteck Badem', 6, 26, '2015-07-10 02:32:52', '2015-07-10 02:32:52'),
(17, ' APPLE Apple iPad Mi', 7, 1, '2015-07-17 07:39:39', '2015-07-10 02:33:28'),
(18, ' APPLE Apple Mac Min', 7, 6, '2015-07-10 02:33:46', '2015-07-10 02:33:46'),
(19, ' ACTECK Acteck Siste', 8, 6, '2015-07-17 06:53:47', '2015-07-10 02:34:26'),
(20, ' PLANTRONICS Plantro', 8, 9, '2015-07-17 07:44:13', '2015-07-10 02:34:42'),
(21, ' STARTECH.COM StarTe', 8, 12, '2015-07-10 02:35:33', '2015-07-10 02:35:33'),
(22, ' SONY Sony Amplifica', 8, 17, '2015-07-10 02:35:49', '2015-07-10 02:35:49'),
(23, ' MICROSOFT Microsoft', 9, 19, '2015-07-17 19:26:12', '2015-07-10 02:36:26'),
(24, ' MICROSOFT Microsoft', 9, 27, '2015-07-10 02:36:49', '2015-07-10 02:36:49'),
(25, ' MCAFEE McAfee AntiV', 9, 17, '2015-07-10 02:37:07', '2015-07-10 02:37:07'),
(26, ' APPLE Apple Smart C', 7, 1, '2015-07-17 06:10:56', '2015-07-10 02:37:42'),
(27, ' GIGABYTE Tarjeta de', 5, 28, '2015-07-10 02:38:34', '2015-07-10 02:38:34'),
(28, ' GENIUS Genius Tecla', 4, 13, '2015-07-17 07:36:42', '2015-07-10 02:39:07'),
(29, ' SAMSUNG Samsung Mon', 3, 17, '2015-07-10 02:39:55', '2015-07-10 02:39:55'),
(30, ' COOLER MASTER Coole', 1, 0, '2015-07-15 19:51:10', '2015-07-10 02:40:45'),
(31, 'GayPorn', 9, 10, '2015-07-15 01:52:44', '2015-07-15 01:52:44'),
(32, 'Gay Porn', 9, 2, '2015-07-17 06:29:46', '2015-07-15 03:17:30'),
(33, 'dsfsdfs', 1, 0, '2015-07-18 01:40:56', '2015-07-18 01:40:56'),
(34, 'hdgsgd', 1, 134316354, '2015-07-18 01:48:13', '2015-07-18 01:48:13'),
(35, 'Producto 3', 3, 2, '2015-07-17 20:41:36', '2015-07-18 02:40:32');

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
  `Nombre_Producto` varchar(30) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Usuario_ID` int(11) NOT NULL,
  `Nombre_salida` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `salida_producto`
--

INSERT INTO `salida_producto` (`ID`, `Producto_ID`, `Nombre_Producto`, `Cantidad`, `Usuario_ID`, `Nombre_salida`, `created_at`, `updated_at`) VALUES
(7, 26, ' APPLE Apple Smart C', 1, 2, 'Juampi', '2015-07-17 12:09:56', '2015-07-17 12:09:56'),
(8, 26, ' APPLE Apple Smart C', 9, 3, 'Ale', '2015-07-17 12:10:16', '2015-07-17 12:10:16'),
(9, 6, ' AOC AOC Monitor e22', 1, 9, 'clemente', '2015-07-17 12:12:25', '2015-07-17 12:12:25'),
(10, 19, ' ACTECK Acteck Siste', 2, 1, 'Alejandro', '2015-07-17 12:22:50', '2015-07-17 12:22:50'),
(11, 19, ' ACTECK Acteck Siste', 2, 1, 'Alejandro', '2015-07-17 12:23:29', '2015-07-17 12:23:29'),
(12, 17, ' APPLE Apple iPad Mi', 4, 2, 'Juampi', '2015-07-17 12:26:19', '2015-07-17 12:26:19'),
(13, 17, ' APPLE Apple iPad Mi', 1, 1, 'Alejandro', '2015-07-17 12:29:08', '2015-07-17 12:29:08'),
(14, 32, 'Gay Porn', 3, 1, 'Alejandro', '2015-07-17 12:29:46', '2015-07-17 12:29:46'),
(15, 17, ' APPLE Apple iPad Mi', 1, 1, 'Alejandro', '2015-07-17 12:31:00', '2015-07-17 12:31:00'),
(16, 23, ' MICROSOFT Microsoft', 5, 2, 'Juampi', '2015-07-17 12:31:44', '2015-07-17 12:31:44'),
(17, 6, ' AOC AOC Monitor e22', 1, 1, 'Alejandro', '2015-07-17 12:33:39', '2015-07-17 12:33:39'),
(18, 17, ' APPLE Apple iPad Mi', 1, 1, 'Alejandro', '2015-07-17 12:47:44', '2015-07-17 12:47:44'),
(19, 19, ' ACTECK Acteck Siste', 1, 1, 'Alejandro', '2015-07-17 12:53:47', '2015-07-17 12:53:47'),
(20, 5, 'Intel I5', 1, 2, 'Juampi', '2015-07-17 13:30:58', '2015-07-17 13:30:58'),
(21, 28, ' GENIUS Genius Tecla', 1, 1, 'Alejandro', '2015-07-17 13:36:42', '2015-07-17 13:36:42'),
(22, 17, ' APPLE Apple iPad Mi', 1, 1, 'Alejandro', '2015-07-17 13:39:39', '2015-07-17 13:39:39'),
(23, 2, 'Corsair CX300', 1, 1, 'Alejandro', '2015-07-17 13:42:10', '2015-07-17 13:42:10'),
(24, 11, ' SAMSUNG Samsung Mon', 2, 1, 'Alejandro', '2015-07-17 13:43:20', '2015-07-17 13:43:20'),
(25, 12, ' PNY Tarjeta de Vide', 1, 1, 'Alejandro', '2015-07-17 13:43:49', '2015-07-17 13:43:49'),
(26, 20, ' PLANTRONICS Plantro', 1, 1, 'Alejandro', '2015-07-17 13:44:13', '2015-07-17 13:44:13'),
(27, 23, ' MICROSOFT Microsoft', 1, 1, 'Alejandro', '2015-07-18 01:26:12', '2015-07-18 01:26:12'),
(28, 11, ' SAMSUNG Samsung Mon', 1, 9, 'clemente', '2015-07-18 01:40:03', '2015-07-18 01:40:03'),
(29, 11, ' SAMSUNG Samsung Mon', 1, 3, 'Ale', '2015-07-18 02:00:50', '2015-07-18 02:00:50'),
(30, 6, ' AOC AOC Monitor e22', 1, 1, 'Alejandro', '2015-07-18 02:10:30', '2015-07-18 02:10:30'),
(31, 35, 'Producto 3', 3, 9, 'clemente', '2015-07-18 02:41:37', '2015-07-18 02:41:37');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `salida_producto`
--
ALTER TABLE `salida_producto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

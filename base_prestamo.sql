-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2019 a las 23:24:28
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_prestamo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `codigo_cliente` int(11) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`codigo_cliente`, `dni`, `nombre`, `apellidos`) VALUES
(27, '65412398', 'Persis', 'Orbegoso'),
(28, '65234212', 'Luis', 'Perez'),
(29, '56987632', 'Edwardo', 'Enriquez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_prestamo`
--

CREATE TABLE `detalle_prestamo` (
  `id` int(11) NOT NULL,
  `detallePrestamoId` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `fechaCuota` date NOT NULL,
  `saldo` float NOT NULL,
  `interes` float NOT NULL,
  `armotizacion` float NOT NULL,
  `cuota` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_prestamo`
--

INSERT INTO `detalle_prestamo` (`id`, `detallePrestamoId`, `periodo`, `fechaCuota`, `saldo`, `interes`, `armotizacion`, `cuota`) VALUES
(84, 11, 10, '2020-04-06', 0, 0.0000000000000693388, 1085.77, 1085.77),
(83, 11, 9, '2020-03-06', 0.00000000000454747, 16.3069, 1069.46, 1085.77),
(82, 11, 8, '2020-02-06', 1069.46, 32.3688, 1053.4, 1085.77),
(81, 11, 7, '2020-01-06', 2122.86, 48.1895, 1037.58, 1085.77),
(80, 11, 6, '2019-12-06', 3160.43, 63.7726, 1021.99, 1085.77),
(79, 11, 5, '2019-11-06', 4182.42, 79.1217, 1006.64, 1085.77),
(78, 11, 4, '2019-10-06', 5189.07, 94.2403, 991.525, 1085.77),
(77, 11, 3, '2019-09-06', 6180.59, 109.132, 976.634, 1085.77),
(76, 11, 2, '2019-08-06', 7157.23, 123.8, 961.966, 1085.77),
(75, 11, 1, '2019-07-06', 8119.19, 138.247, 947.518, 1085.77),
(74, 11, 0, '2019-06-06', 10000, 0, 0, 0),
(73, 10, 6, '2019-12-06', 0, -0.0000000000000139674, 1033.34, 1033.34),
(72, 10, 5, '2019-11-06', -0.00000000000147793, 9.67428, 1023.66, 1033.34),
(71, 10, 4, '2019-10-06', 1023.66, 19.258, 1014.08, 1033.34),
(70, 10, 3, '2019-09-06', 2037.74, 28.752, 1004.58, 1033.34),
(69, 10, 2, '2019-08-06', 3042.33, 38.1571, 995.18, 1033.34),
(68, 10, 1, '2019-07-06', 4037.5, 47.4741, 985.862, 1033.34),
(67, 10, 0, '2019-06-06', 6000, 0, 0, 0),
(66, 9, 5, '2019-11-06', 0, 0.0000000000000063204, 1023.95, 1023.95),
(65, 9, 4, '2019-10-06', 0.000000000000795808, 8.06827, 1015.88, 1023.95),
(64, 9, 3, '2019-09-06', 1015.88, 16.073, 1007.88, 1023.95),
(63, 9, 2, '2019-08-06', 2023.76, 24.0146, 999.937, 1023.95),
(62, 9, 1, '2019-07-06', 3023.7, 31.8936, 992.058, 1023.95),
(61, 9, 0, '2019-06-06', 5000, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `codigoPrestamo` int(11) NOT NULL,
  `estado` varchar(9) NOT NULL,
  `montoPrestado` float NOT NULL,
  `tea` float NOT NULL,
  `totalPeriodoPago` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `detallePrestamoId` int(11) NOT NULL,
  `clienteId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`codigoPrestamo`, `estado`, `montoPrestado`, `tea`, `totalPeriodoPago`, `fecha`, `detallePrestamoId`, `clienteId`) VALUES
(11, 'No pagado', 10000, 0.2, 10, '2019-06-06', 11, 29),
(10, 'No pagado', 6000, 0.12, 6, '2019-06-06', 10, 28),
(9, 'No pagado', 5000, 0.1, 5, '2019-06-06', 1, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `usuarios` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `usuarios`, `password`) VALUES
(1, 'Persis', 'porbegoso', '123456'),
(2, 'Luis', 'pluis', '654321'),
(3, 'Edwardo', 'enriquez', '635241'),
(4, 'Edwin', 'segundo', '415263');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codigo_cliente`);

--
-- Indices de la tabla `detalle_prestamo`
--
ALTER TABLE `detalle_prestamo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`codigoPrestamo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codigo_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `detalle_prestamo`
--
ALTER TABLE `detalle_prestamo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `codigoPrestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

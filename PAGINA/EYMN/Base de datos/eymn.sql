-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2022 a las 22:19:26
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eymn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `ZIP` int(8) NOT NULL,
  `Nombre` tinytext NOT NULL,
  `CP` int(10) DEFAULT NULL,
  `ID_P` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`ZIP`, `Nombre`, `CP`, `ID_P`) VALUES
(50001, 'Medellín', 57, 1),
(110111, 'Bogotá', 57, 2),
(110121, 'Bogotá', 57, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `ID_Rc` int(10) DEFAULT NULL,
  `ID_Pr` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprador`
--

CREATE TABLE `comprador` (
  `ID_Rc` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comprador`
--

INSERT INTO `comprador` (`ID_Rc`) VALUES
(2000),
(2001);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `ID_F` int(10) NOT NULL,
  `ID_MP` int(10) DEFAULT NULL,
  `ID_S` int(10) DEFAULT NULL,
  `ID_Pr` int(10) DEFAULT NULL,
  `Valor_compra` varchar(8) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Direccion` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo_pago`
--

CREATE TABLE `metodo_pago` (
  `ID_MP` int(10) NOT NULL,
  `ID_P` int(10) DEFAULT NULL,
  `Tipo` tinytext NOT NULL,
  `CCV` int(3) DEFAULT NULL,
  `Titular` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `metodo_pago`
--

INSERT INTO `metodo_pago` (`ID_MP`, `ID_P`, `Tipo`, `CCV`, `Titular`) VALUES
(1, 1, 'Tarjeta Debito', 130, 'Jonathan Beltrán'),
(2, 2, 'Nequi', 355, 'Luis Goméz'),
(3, 3, 'PSE', NULL, 'Kevin Beltran');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `CP` int(10) NOT NULL,
  `Nombre` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`CP`, `Nombre`) VALUES
(1, 'Estados Unidos'),
(51, 'Perú'),
(57, 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ID_P` int(10) NOT NULL,
  `Nombre_Real` tinytext NOT NULL,
  `Edad` date DEFAULT NULL,
  `Correo_electrónico` varchar(100) NOT NULL,
  `ID_Rv` int(10) DEFAULT NULL,
  `ID_Rp` int(10) DEFAULT NULL,
  `ID_Rc` int(10) DEFAULT NULL,
  `Telefono` varchar(14) NOT NULL,
  `Nombre_Usuario` varchar(60) NOT NULL,
  `Direccion` varchar(30) NOT NULL,
  `Clave` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ID_P`, `Nombre_Real`, `Edad`, `Correo_electrónico`, `ID_Rv`, `ID_Rp`, `ID_Rc`, `Telefono`, `Nombre_Usuario`, `Direccion`, `Clave`) VALUES
(1, 'Jonathan Manuel Beltrán Peñuela', '2002-08-23', '', 1000, 3000, 2000, '3224150249', 'JonasAdmin', 'Calle 52 sur # 97 c 20', 'eljonas2308'),
(2, 'Luis Miguel Gómez Viloria', '2004-04-21', '', 1001, NULL, 2001, '3015088537', 'LokusAdmin', 'Calle 52 sur # 5 c 30', 'lokus.2104'),
(3, 'Kevin David Beltran Flórez', '2004-07-11', '', NULL, 3001, NULL, '3016394788', 'KevinAdmin', 'Calle verbeler 23 manzana 8', 'kevin123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_Pr` int(10) NOT NULL,
  `Tipo` tinytext NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Marca` varchar(50) NOT NULL,
  `Precio` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_Pr`, `Tipo`, `Nombre`, `Marca`, `Precio`) VALUES
(1, 'Ropa', 'Suéter Negro', 'Cotton & Co', 0),
(2, 'Ropa', 'Jean Lizo', 'Cotton & Co', 0),
(3, 'Ropa', 'Vestido florado', 'Cotton & Co', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesional`
--

CREATE TABLE `profesional` (
  `ID_Rp` int(10) NOT NULL,
  `Titulo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesional`
--

INSERT INTO `profesional` (`ID_Rp`, `Titulo`) VALUES
(3000, 'Tecnólogo ADSI'),
(3001, 'Tecnólogo ADSI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps`
--

CREATE TABLE `ps` (
  `ID_P` int(10) DEFAULT NULL,
  `ID_S` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `ID_S` int(10) NOT NULL,
  `Nombre` tinytext NOT NULL,
  `Tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`ID_S`, `Nombre`, `Tipo`) VALUES
(1, 'Servicio carpinteria', 'Carpintero'),
(2, 'Servicio Automotriz ', 'Mecanico'),
(3, 'Servicio técnico ', 'Mantenimiento de maquinaria ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicita`
--

CREATE TABLE `solicita` (
  `ID_S` int(10) DEFAULT NULL,
  `ID_Rc` int(10) DEFAULT NULL,
  `Fecha_contrato` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `ID_Rv` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`ID_Rv`) VALUES
(1000),
(1001);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vp`
--

CREATE TABLE `vp` (
  `ID_Rv` int(10) DEFAULT NULL,
  `ID_Pr` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`ZIP`),
  ADD KEY `CP` (`CP`),
  ADD KEY `ID_P` (`ID_P`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD KEY `ID_Rc` (`ID_Rc`),
  ADD KEY `ID_Pr` (`ID_Pr`);

--
-- Indices de la tabla `comprador`
--
ALTER TABLE `comprador`
  ADD PRIMARY KEY (`ID_Rc`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID_F`),
  ADD KEY `ID_MP` (`ID_MP`),
  ADD KEY `ID_S` (`ID_S`),
  ADD KEY `ID_Pr` (`ID_Pr`);

--
-- Indices de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD PRIMARY KEY (`ID_MP`),
  ADD KEY `ID_P` (`ID_P`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`CP`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ID_P`),
  ADD UNIQUE KEY `ID_Rv` (`ID_Rv`),
  ADD UNIQUE KEY `ID_Rp` (`ID_Rp`),
  ADD UNIQUE KEY `ID_Rc` (`ID_Rc`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_Pr`);

--
-- Indices de la tabla `profesional`
--
ALTER TABLE `profesional`
  ADD PRIMARY KEY (`ID_Rp`);

--
-- Indices de la tabla `ps`
--
ALTER TABLE `ps`
  ADD KEY `ID_P` (`ID_P`),
  ADD KEY `ID_S` (`ID_S`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`ID_S`);

--
-- Indices de la tabla `solicita`
--
ALTER TABLE `solicita`
  ADD KEY `ID_PP` (`ID_S`),
  ADD KEY `ID_PC` (`ID_Rc`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`ID_Rv`);

--
-- Indices de la tabla `vp`
--
ALTER TABLE `vp`
  ADD KEY `ID_P` (`ID_Rv`),
  ADD KEY `ID_Pr` (`ID_Pr`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  MODIFY `ID_MP` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`CP`) REFERENCES `pais` (`CP`),
  ADD CONSTRAINT `ciudad_ibfk_10` FOREIGN KEY (`CP`) REFERENCES `pais` (`CP`),
  ADD CONSTRAINT `ciudad_ibfk_11` FOREIGN KEY (`ID_P`) REFERENCES `persona` (`ID_P`),
  ADD CONSTRAINT `ciudad_ibfk_2` FOREIGN KEY (`CP`) REFERENCES `pais` (`CP`),
  ADD CONSTRAINT `ciudad_ibfk_3` FOREIGN KEY (`CP`) REFERENCES `pais` (`CP`),
  ADD CONSTRAINT `ciudad_ibfk_4` FOREIGN KEY (`CP`) REFERENCES `pais` (`CP`),
  ADD CONSTRAINT `ciudad_ibfk_5` FOREIGN KEY (`CP`) REFERENCES `pais` (`CP`),
  ADD CONSTRAINT `ciudad_ibfk_6` FOREIGN KEY (`CP`) REFERENCES `pais` (`CP`),
  ADD CONSTRAINT `ciudad_ibfk_7` FOREIGN KEY (`CP`) REFERENCES `pais` (`CP`),
  ADD CONSTRAINT `ciudad_ibfk_8` FOREIGN KEY (`CP`) REFERENCES `pais` (`CP`),
  ADD CONSTRAINT `ciudad_ibfk_9` FOREIGN KEY (`CP`) REFERENCES `pais` (`CP`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`ID_Rc`) REFERENCES `comprador` (`ID_Rc`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`ID_Pr`) REFERENCES `productos` (`ID_Pr`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`ID_MP`) REFERENCES `metodo_pago` (`ID_MP`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`ID_S`) REFERENCES `servicios` (`ID_S`),
  ADD CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`ID_Pr`) REFERENCES `productos` (`ID_Pr`);

--
-- Filtros para la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD CONSTRAINT `metodo_pago_ibfk_1` FOREIGN KEY (`ID_P`) REFERENCES `persona` (`ID_P`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`ID_Rp`) REFERENCES `profesional` (`ID_Rp`),
  ADD CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`ID_Rc`) REFERENCES `comprador` (`ID_Rc`),
  ADD CONSTRAINT `persona_ibfk_3` FOREIGN KEY (`ID_Rv`) REFERENCES `vendedor` (`ID_Rv`);

--
-- Filtros para la tabla `ps`
--
ALTER TABLE `ps`
  ADD CONSTRAINT `ps_ibfk_1` FOREIGN KEY (`ID_P`) REFERENCES `profesional` (`ID_Rp`),
  ADD CONSTRAINT `ps_ibfk_10` FOREIGN KEY (`ID_S`) REFERENCES `servicios` (`ID_S`),
  ADD CONSTRAINT `ps_ibfk_2` FOREIGN KEY (`ID_S`) REFERENCES `servicios` (`ID_S`),
  ADD CONSTRAINT `ps_ibfk_3` FOREIGN KEY (`ID_P`) REFERENCES `profesional` (`ID_Rp`),
  ADD CONSTRAINT `ps_ibfk_4` FOREIGN KEY (`ID_S`) REFERENCES `servicios` (`ID_S`),
  ADD CONSTRAINT `ps_ibfk_5` FOREIGN KEY (`ID_P`) REFERENCES `profesional` (`ID_Rp`),
  ADD CONSTRAINT `ps_ibfk_6` FOREIGN KEY (`ID_S`) REFERENCES `servicios` (`ID_S`),
  ADD CONSTRAINT `ps_ibfk_7` FOREIGN KEY (`ID_P`) REFERENCES `profesional` (`ID_Rp`),
  ADD CONSTRAINT `ps_ibfk_8` FOREIGN KEY (`ID_S`) REFERENCES `servicios` (`ID_S`),
  ADD CONSTRAINT `ps_ibfk_9` FOREIGN KEY (`ID_P`) REFERENCES `profesional` (`ID_Rp`);

--
-- Filtros para la tabla `solicita`
--
ALTER TABLE `solicita`
  ADD CONSTRAINT `solicita_ibfk_1` FOREIGN KEY (`ID_S`) REFERENCES `profesional` (`ID_Rp`),
  ADD CONSTRAINT `solicita_ibfk_10` FOREIGN KEY (`ID_Rc`) REFERENCES `comprador` (`ID_Rc`),
  ADD CONSTRAINT `solicita_ibfk_11` FOREIGN KEY (`ID_S`) REFERENCES `servicios` (`ID_S`),
  ADD CONSTRAINT `solicita_ibfk_2` FOREIGN KEY (`ID_Rc`) REFERENCES `comprador` (`ID_Rc`),
  ADD CONSTRAINT `solicita_ibfk_3` FOREIGN KEY (`ID_S`) REFERENCES `profesional` (`ID_Rp`),
  ADD CONSTRAINT `solicita_ibfk_4` FOREIGN KEY (`ID_Rc`) REFERENCES `comprador` (`ID_Rc`),
  ADD CONSTRAINT `solicita_ibfk_5` FOREIGN KEY (`ID_S`) REFERENCES `profesional` (`ID_Rp`),
  ADD CONSTRAINT `solicita_ibfk_6` FOREIGN KEY (`ID_Rc`) REFERENCES `comprador` (`ID_Rc`),
  ADD CONSTRAINT `solicita_ibfk_7` FOREIGN KEY (`ID_S`) REFERENCES `profesional` (`ID_Rp`),
  ADD CONSTRAINT `solicita_ibfk_8` FOREIGN KEY (`ID_Rc`) REFERENCES `comprador` (`ID_Rc`),
  ADD CONSTRAINT `solicita_ibfk_9` FOREIGN KEY (`ID_S`) REFERENCES `profesional` (`ID_Rp`);

--
-- Filtros para la tabla `vp`
--
ALTER TABLE `vp`
  ADD CONSTRAINT `vp_ibfk_1` FOREIGN KEY (`ID_Rv`) REFERENCES `vendedor` (`ID_Rv`),
  ADD CONSTRAINT `vp_ibfk_10` FOREIGN KEY (`ID_Pr`) REFERENCES `productos` (`ID_Pr`),
  ADD CONSTRAINT `vp_ibfk_2` FOREIGN KEY (`ID_Pr`) REFERENCES `productos` (`ID_Pr`),
  ADD CONSTRAINT `vp_ibfk_3` FOREIGN KEY (`ID_Rv`) REFERENCES `vendedor` (`ID_Rv`),
  ADD CONSTRAINT `vp_ibfk_4` FOREIGN KEY (`ID_Pr`) REFERENCES `productos` (`ID_Pr`),
  ADD CONSTRAINT `vp_ibfk_5` FOREIGN KEY (`ID_Rv`) REFERENCES `vendedor` (`ID_Rv`),
  ADD CONSTRAINT `vp_ibfk_6` FOREIGN KEY (`ID_Pr`) REFERENCES `productos` (`ID_Pr`),
  ADD CONSTRAINT `vp_ibfk_7` FOREIGN KEY (`ID_Rv`) REFERENCES `vendedor` (`ID_Rv`),
  ADD CONSTRAINT `vp_ibfk_8` FOREIGN KEY (`ID_Pr`) REFERENCES `productos` (`ID_Pr`),
  ADD CONSTRAINT `vp_ibfk_9` FOREIGN KEY (`ID_Rv`) REFERENCES `vendedor` (`ID_Rv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

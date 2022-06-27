-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 08:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eymn`
--

-- --------------------------------------------------------

--
-- Table structure for table `ciudad`
--

CREATE TABLE `ciudad` (
  `ZIP` int(50) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `CP` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ciudad`
--

INSERT INTO `ciudad` (`ZIP`, `Nombre`, `CP`) VALUES
(1000, 'Lisboa', 351),
(1010, 'Caracas', 58),
(10001, 'New York', 1),
(28001, 'Madrid', 34),
(110111, 'Bogota', 57);

-- --------------------------------------------------------

--
-- Table structure for table `compra`
--

CREATE TABLE `compra` (
  `ID_Rc` int(50) NOT NULL,
  `ID_Pr` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comprador`
--

CREATE TABLE `comprador` (
  `ID_Rc` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `ID_F` int(50) NOT NULL,
  `ID_MP` int(50) NOT NULL,
  `ID_S` int(20) NOT NULL,
  `ID_Pr` int(50) NOT NULL,
  `Valor_compra` int(100) NOT NULL,
  `Fecha` date NOT NULL,
  `Direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `metodo_pago`
--

CREATE TABLE `metodo_pago` (
  `ID_MP` int(50) NOT NULL,
  `ID_P` int(50) NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `CCV` int(50) NOT NULL,
  `Titular` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metodo_pago`
--

INSERT INTO `metodo_pago` (`ID_MP`, `ID_P`, `Tipo`, `CCV`, `Titular`) VALUES
(1, 2, 'Tarjeta de credito', 442, 'Luis Miguel Gómez Viloria'),
(2, 3, 'Tarjeta de credito', 448, ' Miguel Rivera'),
(3, 4, 'Nequi', 492, 'Paula Marin'),
(4, 5, 'Nequi', 562, 'Jonathan Manuel Beltran'),
(5, 6, 'Tarjeta de credito', 543, 'Kevin Beltran');

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `CP` int(50) NOT NULL,
  `Nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`CP`, `Nombre`) VALUES
(1, 'Estados Unidos'),
(34, 'España'),
(57, 'Bogota'),
(58, 'Venezuela'),
(351, 'Portugal');

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `ID_P` int(50) NOT NULL,
  `Nombre_Real` varchar(100) NOT NULL,
  `Edad` int(30) NOT NULL,
  `Correo_electrónico` varchar(50) NOT NULL,
  `ID_Rv` int(50) DEFAULT NULL,
  `ID_Rp` int(50) DEFAULT NULL,
  `ID_Rc` int(50) DEFAULT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Nombre_Usuario` varchar(100) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`ID_P`, `Nombre_Real`, `Edad`, `Correo_electrónico`, `ID_Rv`, `ID_Rp`, `ID_Rc`, `Telefono`, `Nombre_Usuario`, `Direccion`, `Clave`) VALUES
(2, 'Luis Miguel Gómez Viloria', 2004, 'lokusadmin@eymn.com', NULL, NULL, NULL, '3015088537', 'Lokus_Admin', 'Cra100#50B45Sur', 'Lokus1x.4807641.'),
(3, 'Miguel Ángel Rivera Florez', 2004, 'miguel2204@eymn.com', NULL, NULL, NULL, '320 345539', 'migueladmin', 'Cra 96 #40B35 Sur', 'miguel1234567'),
(4, 'Maria Paula Marin Fajardo', 2004, 'paula1607@eymn.com', NULL, NULL, NULL, '310 327506', 'paulaadmin', 'Cra 69 #100 sur', 'paula12345678'),
(5, 'Jonathan Manuel Beltrán Peñuela', 2002, 'jonasadmin@eymn.com', NULL, NULL, NULL, '322 415024', 'Jonas_Admin', 'Cra 671 #40 sur', 'jonas12345'),
(6, 'Kevin David Beltran Florez', 2004, 'Kevindadmin@eymn.com', NULL, NULL, NULL, '301 639478', 'KevinDaAdmin', 'Craa 79 sur #4B ', 'kevin12345.'),
(7, 'Antonio Morales Pacatativa', 1999, 'antoniomtp@gmail.com', NULL, NULL, NULL, '301123456', 'antoniomp', 'Craa 54 sur #74B ', 'antonio2323'),
(8, 'Jiren Ricardo Suarez', 2000, 'jiricasu@gmail.com', NULL, NULL, NULL, '300 123456', 'jirendb', 'Craa 54 sur #74B ', 'jiren123456789');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `ID_Pr` int(50) NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Marca` varchar(100) NOT NULL,
  `Precio` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`ID_Pr`, `Tipo`, `Nombre`, `Marca`, `Precio`) VALUES
(1, 'Ropa', 'Camiseta Negra', 'Cotton & ico', 43000),
(2, 'Ropa', 'Chaqueta Jean Azul', 'Cotton & ico', 53000),
(3, 'Ropa', 'Sueter Negro', 'Cotton & ico', 8000),
(4, 'Ropa', 'Gaban Negro', 'Cotton & ico', 100000),
(5, 'Ropa', 'Enterizo Rojo', 'Cotton & ico', 120000);

-- --------------------------------------------------------

--
-- Table structure for table `profesional`
--

CREATE TABLE `profesional` (
  `ID_Rp` int(50) NOT NULL,
  `Titulo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps`
--

CREATE TABLE `ps` (
  `ID_P` int(50) NOT NULL,
  `ID_S` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `servicios`
--

CREATE TABLE `servicios` (
  `ID_S` int(50) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servicios`
--

INSERT INTO `servicios` (`ID_S`, `Nombre`, `Tipo`) VALUES
(1, 'Organizador de eventos', 'Logistica'),
(2, 'Programador web', 'Ingenieria de sistemas'),
(3, 'Actor de Doblaje', 'Actuación'),
(4, 'Diseño de publicidad', 'Diseño gráfico'),
(5, 'Servicios contables', 'Contador público');

-- --------------------------------------------------------

--
-- Table structure for table `solicita`
--

CREATE TABLE `solicita` (
  `ID_S` int(50) NOT NULL,
  `ID_Rc` int(50) NOT NULL,
  `Fecha_contrato` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendedor`
--

CREATE TABLE `vendedor` (
  `ID_Rv` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vp`
--

CREATE TABLE `vp` (
  `ID_Rv` int(50) NOT NULL,
  `ID_Pr` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`ZIP`),
  ADD KEY `CP` (`CP`);

--
-- Indexes for table `compra`
--
ALTER TABLE `compra`
  ADD KEY `ID_Rc` (`ID_Rc`),
  ADD KEY `ID_Pr` (`ID_Pr`);

--
-- Indexes for table `comprador`
--
ALTER TABLE `comprador`
  ADD PRIMARY KEY (`ID_Rc`);

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID_F`),
  ADD KEY `ID_MP` (`ID_MP`),
  ADD KEY `ID_S` (`ID_S`),
  ADD KEY `ID_Pr` (`ID_Pr`);

--
-- Indexes for table `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD PRIMARY KEY (`ID_MP`),
  ADD KEY `ID_P` (`ID_P`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`CP`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ID_P`),
  ADD KEY `ID_Rv` (`ID_Rv`),
  ADD KEY `ID_Rp` (`ID_Rp`),
  ADD KEY `ID_Rc` (`ID_Rc`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_Pr`);

--
-- Indexes for table `profesional`
--
ALTER TABLE `profesional`
  ADD PRIMARY KEY (`ID_Rp`);

--
-- Indexes for table `ps`
--
ALTER TABLE `ps`
  ADD KEY `ID_P` (`ID_P`),
  ADD KEY `ID_S` (`ID_S`);

--
-- Indexes for table `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`ID_S`);

--
-- Indexes for table `solicita`
--
ALTER TABLE `solicita`
  ADD KEY `ID_S` (`ID_S`),
  ADD KEY `ID_Rc` (`ID_Rc`);

--
-- Indexes for table `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`ID_Rv`);

--
-- Indexes for table `vp`
--
ALTER TABLE `vp`
  ADD KEY `ID_Rv` (`ID_Rv`),
  ADD KEY `ID_Pr` (`ID_Pr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `ZIP` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110112;

--
-- AUTO_INCREMENT for table `comprador`
--
ALTER TABLE `comprador`
  MODIFY `ID_Rc` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factura`
--
ALTER TABLE `factura`
  MODIFY `ID_F` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metodo_pago`
--
ALTER TABLE `metodo_pago`
  MODIFY `ID_MP` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `CP` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `ID_P` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_Pr` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profesional`
--
ALTER TABLE `profesional`
  MODIFY `ID_Rp` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servicios`
--
ALTER TABLE `servicios`
  MODIFY `ID_S` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `ID_Rv` int(50) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`CP`) REFERENCES `pais` (`CP`);

--
-- Constraints for table `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`ID_Rc`) REFERENCES `comprador` (`ID_Rc`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`ID_Pr`) REFERENCES `productos` (`ID_Pr`);

--
-- Constraints for table `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`ID_MP`) REFERENCES `metodo_pago` (`ID_MP`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`ID_S`) REFERENCES `servicios` (`ID_S`),
  ADD CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`ID_Pr`) REFERENCES `productos` (`ID_Pr`);

--
-- Constraints for table `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD CONSTRAINT `metodo_pago_ibfk_1` FOREIGN KEY (`ID_P`) REFERENCES `persona` (`ID_P`);

--
-- Constraints for table `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`ID_Rv`) REFERENCES `vendedor` (`ID_Rv`),
  ADD CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`ID_Rp`) REFERENCES `profesional` (`ID_Rp`),
  ADD CONSTRAINT `persona_ibfk_3` FOREIGN KEY (`ID_Rc`) REFERENCES `comprador` (`ID_Rc`);

--
-- Constraints for table `ps`
--
ALTER TABLE `ps`
  ADD CONSTRAINT `ps_ibfk_1` FOREIGN KEY (`ID_P`) REFERENCES `persona` (`ID_P`),
  ADD CONSTRAINT `ps_ibfk_2` FOREIGN KEY (`ID_S`) REFERENCES `servicios` (`ID_S`);

--
-- Constraints for table `solicita`
--
ALTER TABLE `solicita`
  ADD CONSTRAINT `solicita_ibfk_1` FOREIGN KEY (`ID_S`) REFERENCES `servicios` (`ID_S`),
  ADD CONSTRAINT `solicita_ibfk_2` FOREIGN KEY (`ID_Rc`) REFERENCES `comprador` (`ID_Rc`);

--
-- Constraints for table `vp`
--
ALTER TABLE `vp`
  ADD CONSTRAINT `vp_ibfk_1` FOREIGN KEY (`ID_Rv`) REFERENCES `vendedor` (`ID_Rv`),
  ADD CONSTRAINT `vp_ibfk_2` FOREIGN KEY (`ID_Pr`) REFERENCES `productos` (`ID_Pr`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

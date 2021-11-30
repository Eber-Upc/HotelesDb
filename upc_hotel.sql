-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2021 a las 01:44:48
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `upc_hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_administrador`
--

CREATE TABLE `tbl_administrador` (
  `ADMIN_ID` int(11) NOT NULL,
  `ADMIN_NAME` varchar(50) NOT NULL,
  `ADMIN_TELEPHONE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_administrador`
--

INSERT INTO `tbl_administrador` (`ADMIN_ID`, `ADMIN_NAME`, `ADMIN_TELEPHONE`) VALUES
(1, 'Julián Perez', '2930588'),
(2, 'José Lagos', '2930455'),
(3, 'Carlos Salcedo', '2930499');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `CLIENT_ID` int(11) NOT NULL,
  `CLIENT_NAMES` varchar(50) NOT NULL,
  `CLIENT_APEPAT` varchar(50) NOT NULL,
  `CLIENT_APEMAT` varchar(50) NOT NULL,
  `CLIENT_EMAIL` varchar(50) NOT NULL,
  `CLIENT_DOCUMENT` varchar(8) NOT NULL,
  `CLIENT_TELEPHONE` varchar(9) NOT NULL,
  `CLIENT_AGE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`CLIENT_ID`, `CLIENT_NAMES`, `CLIENT_APEPAT`, `CLIENT_APEMAT`, `CLIENT_EMAIL`, `CLIENT_DOCUMENT`, `CLIENT_TELEPHONE`, `CLIENT_AGE`) VALUES
(1, 'José Raúl', 'Perez', 'Torres', 'jr@correo.com', '70403889', '934105671', 25),
(2, 'Luis José', 'Castillo', 'Salazar', 'lj@correo.com', '70403881', '934105672', 19),
(3, 'Manuel Milton', 'Alvarado', 'Guerra', 'mm@correo.com', '70403882', '934105673', 33),
(4, 'Lucas Ángel', 'Ramirez', 'Paz', 'la@correo.com', '70403883', '934105674', 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_habitacion`
--

CREATE TABLE `tbl_habitacion` (
  `ROOM_ID` int(11) NOT NULL,
  `ROOM_NUMBER` int(11) NOT NULL,
  `ROOM_INFO1` varchar(200) NOT NULL,
  `ROOM_INFO2` varchar(200) NOT NULL,
  `ROOM_INFO3` varchar(200) NOT NULL,
  `BEDS_NUMBER` int(11) NOT NULL,
  `START_AVAILABILITY` date NOT NULL,
  `END_AVAILABILITY` date NOT NULL,
  `ROOM_PRICE` double NOT NULL,
  `ROOM_LEVEL` int(11) NOT NULL,
  `ROOM_TYPE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_habitacion`
--

INSERT INTO `tbl_habitacion` (`ROOM_ID`, `ROOM_NUMBER`, `ROOM_INFO1`, `ROOM_INFO2`, `ROOM_INFO3`, `BEDS_NUMBER`, `START_AVAILABILITY`, `END_AVAILABILITY`, `ROOM_PRICE`, `ROOM_LEVEL`, `ROOM_TYPE`) VALUES
(1, 101, 'Habitación muy cómoda', 'Siéntase como en casa', 'Satisfacción garantizada', 1, '2021-11-08', '2021-11-12', 25.5, 1, 1),
(2, 201, 'Habitación muy espaciosa', 'Siéntase como en casa', 'Exclusiva', 2, '2021-11-07', '2021-11-15', 65.5, 2, 2),
(3, 301, 'Habitación muy especial', 'Siéntase como en casa', 'Lo mejor de lo mejor', 3, '2021-11-03', '2021-11-11', 95.5, 3, 3),
(4, 401, 'Habitación lujosa', 'Siéntase como en casa', 'Lo mejor de lo mejor', 4, '2021-10-06', '2021-10-11', 75.5, 4, 4),
(5, 102, 'Habitación muy cómoda', 'Siéntase como en casa', 'Lo mejor de lo mejor', 1, '2021-11-01', '2021-11-11', 95.5, 1, 1),
(6, 202, 'Habitación muy espaciosa', 'Siéntase como en casa', 'Lo mejor de lo mejor', 2, '2021-11-02', '2021-11-18', 76.5, 2, 2),
(7, 302, 'Habitación muy especial', 'Siéntase como en casa', 'Satisfacción garantizada', 3, '2021-11-02', '2021-11-05', 95.5, 3, 3),
(8, 402, 'Habitación lujosa', 'Siéntase como en casa', 'Lo mejor de lo mejor', 4, '2021-11-06', '2021-11-18', 85.5, 4, 4),
(9, 103, 'Habitación muy cómoda', 'Siéntase como en casa', 'Satisfacción garantizada', 1, '2021-11-02', '2021-11-11', 105.5, 1, 1),
(10, 203, 'Habitación muy espaciosa', 'Siéntase como en casa', 'Lo mejor de lo mejor', 2, '2021-11-03', '2021-11-17', 65.5, 2, 2),
(11, 303, 'Habitación muy especial', 'Siéntase como en casa', 'Satisfacción garantizada', 3, '2021-11-06', '2021-11-11', 78.5, 3, 3),
(12, 403, 'Habitación lujosa', 'Siéntase como en casa', 'Lo mejor de lo mejor', 4, '2021-11-05', '2021-11-15', 102.5, 4, 4),
(13, 104, 'Habitación muy cómoda', 'Siéntase como en casa', 'Satisfacción garantizada', 1, '2021-11-06', '2021-11-11', 77.5, 1, 1),
(14, 204, 'Habitación muy espaciosa', 'Siéntase como en casa', 'Lo mejor de lo mejor', 2, '2021-11-07', '2021-11-14', 66.5, 2, 2),
(15, 304, 'Habitación muy especial', 'Siéntase como en casa', 'Satisfacción garantizada', 3, '2021-11-06', '2021-11-11', 94.5, 3, 3),
(16, 404, 'Habitación lujosa', 'Siéntase como en casa', 'Lo mejor de lo mejor', 4, '2021-11-06', '2021-11-12', 95.5, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reserva`
--

CREATE TABLE `tbl_reserva` (
  `DETAIL_ID` int(11) NOT NULL,
  `TOTAL_PRICE` double NOT NULL,
  `ENTRY_DATE` date NOT NULL,
  `DEPARTURE_DATE` date NOT NULL,
  `DETAIL_COMMENT` varchar(200) NOT NULL,
  `HUESPEDES` int(11) NOT NULL,
  `ADMIN_ID` int(11) DEFAULT NULL,
  `CLIENT_ID` int(11) DEFAULT NULL,
  `ROOM_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `DATE_RESERVA` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_reserva`
--

INSERT INTO `tbl_reserva` (`DETAIL_ID`, `TOTAL_PRICE`, `ENTRY_DATE`, `DEPARTURE_DATE`, `DETAIL_COMMENT`, `HUESPEDES`, `ADMIN_ID`, `CLIENT_ID`, `ROOM_ID`, `USER_ID`, `DATE_RESERVA`) VALUES
(15, 136.5, '2021-11-29', '2021-12-03', 'Ninguno', 2, 1, 1, 1, 7, '2021-11-29'),
(16, 136.5, '2021-11-29', '2021-12-03', 'Ninguno', 2, 1, 1, 1, 7, '2021-11-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rol`
--

CREATE TABLE `tbl_rol` (
  `ROL_ID` int(11) NOT NULL,
  `ROL_NAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_rol`
--

INSERT INTO `tbl_rol` (`ROL_ID`, `ROL_NAME`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_habitacion`
--

CREATE TABLE `tbl_tipo_habitacion` (
  `TYPE_ID` int(11) NOT NULL,
  `TYPE_NAME` varchar(50) NOT NULL,
  `NUMBER_PEOPLE` int(11) NOT NULL,
  `SERVICE_PRICE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_tipo_habitacion`
--

INSERT INTO `tbl_tipo_habitacion` (`TYPE_ID`, `TYPE_NAME`, `NUMBER_PEOPLE`, `SERVICE_PRICE`) VALUES
(1, 'Matrimonial', 2, 34.5),
(2, 'Suite', 4, 37.5),
(3, 'Deluxe', 2, 40.5),
(4, 'Presidencial', 4, 84.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_user`
--

CREATE TABLE `tbl_user` (
  `USER_ID` int(11) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `USER_PASSWORD` varchar(50) NOT NULL,
  `USER_NAMES` varchar(50) NOT NULL,
  `USER_APEPAT` varchar(20) NOT NULL,
  `USER_APEMAT` varchar(20) NOT NULL,
  `USER_TPODOC` varchar(10) NOT NULL,
  `USER_NUMDOC` varchar(20) NOT NULL,
  `USER_DIRECCION` varchar(100) NOT NULL,
  `USER_DISTRITO` varchar(100) NOT NULL,
  `USER_PROVINCIA` varchar(100) NOT NULL,
  `USER_TELEF` varchar(30) NOT NULL,
  `USER_MAIL` varchar(200) NOT NULL,
  `ROL_TYPE` int(11) NOT NULL,
  `USER_TOKEN` varchar(28) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_user`
--

INSERT INTO `tbl_user` (`USER_ID`, `USER_NAME`, `USER_PASSWORD`, `USER_NAMES`, `USER_APEPAT`, `USER_APEMAT`, `USER_TPODOC`, `USER_NUMDOC`, `USER_DIRECCION`, `USER_DISTRITO`, `USER_PROVINCIA`, `USER_TELEF`, `USER_MAIL`, `ROL_TYPE`, `USER_TOKEN`) VALUES
(7, 'EE2F5A4D86ED6A795BC9AF9EB9D56717', '202CB962AC59075B964B07152D234B70', 'Eber', 'Begazo', 'Baldarrago', 'Dni', '43744482', 'Jiron Junin 455', 'Magdalena', 'Lima', 'Eber', 'ebrych@gmail.com', 2, '8NgqFojwrHcJohsIr0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_vista_habitacion`
--

CREATE TABLE `tbl_vista_habitacion` (
  `VIEW_ID` int(11) NOT NULL,
  `ROOM_TYPE` varchar(50) NOT NULL,
  `ROOM_IMAGE` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_vista_habitacion`
--

INSERT INTO `tbl_vista_habitacion` (`VIEW_ID`, `ROOM_TYPE`, `ROOM_IMAGE`) VALUES
(1, '1', 'https://i.ytimg.com/vi/WuqdDRyMwrQ/maxresdefault.jpg'),
(2, '1', 'https://muruhotel.com/media/93/XXnVRes9A1YYnPwylPa5Jqoa7VIqFzcklJwXgaDA.jpeg'),
(3, '1', 'https://www.presidenthotel.pe/images/habitaciones/habitacion-doble-matrimonial-01.jpg'),
(4, '1', 'https://comoorganizarlacasa.com/wp-content/uploads/2017/06/ideas-decorar-habitacion-matrimonial-27.jpg'),
(5, '2', 'https://upload.wikimedia.org/wikipedia/commons/5/56/2008-1227-EncoreLV-002-Pan.JPG'),
(6, '2', 'https://mundodehoteles.com/wp-content/uploads/2015/04/diferencia-entre-habitacion-y-suite.jpg'),
(7, '2', 'https://hotelbarcelosevillaevents.com/wp-content/uploads/2015/12/suite-1.jpg'),
(8, '2', 'https://static1.abc.es/media/summum/2018/11/23/suite-corinthia-kbvB--1200x630@abc.jpg'),
(9, '3', 'https://photos.mandarinoriental.com/is/image/MandarinOriental/paris-2016-room-deluxe-02?wid=4000&fmt=jpeg,rgb&qlt=63,0&op_sharpen=0&resMode=sharp2&op_usm=0,0,0,0&icc=sRGB%20IEC61966-2.1&iccEmbed=1&printRes=72&fit=wrap&qlt=45,0'),
(10, '3', 'https://www.riu.com/blog/wp-content/uploads/2016/04/Habitaci%C3%B3n-Deluxe-dos-camas-dobles_1280x854.jpg'),
(11, '3', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT58nmL3rGf_N2uLCvJvX0uj95YPvnqDMjEgQ&usqp=CAU'),
(12, '3', 'https://q-xx.bstatic.com/xdata/images/hotel/max500/296644165.jpg?k=31cd249ea2ece4511817eb57bc519462420601770676983beb8e0ab42cdc6b77&o='),
(13, '4', 'https://www.swissotel.com/assets/0/92/2119/2178/2217/2219/6442451722/83eb355a-2f1c-49d8-ad51-1ccce3b52b33.jpg'),
(14, '4', 'https://www.swissotel.com/assets/0/92/2119/2178/2217/2219/6442451722/ac42191d-97e2-4ecd-8478-f953a90ef6dd.jpg'),
(15, '4', 'https://res.cloudinary.com/sonesta/image/fetch/c_limit,w_1920,q_auto:good,f_auto,fl_force_strip.lossy.progressive/https%3A%2F%2Flive-sonesta-8.pantheonsite.io%2Fsites%2Fdefault%2Ffiles%2Ffield_room_images%2Fpano_xl%2FTT-Habsonosrno01.jpg'),
(16, '4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLwX8BLEC_OtmyZbKgdgqSX5ovOfcq4Wzi0A&usqp=CAU');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_administrador`
--
ALTER TABLE `tbl_administrador`
  ADD PRIMARY KEY (`ADMIN_ID`);

--
-- Indices de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`CLIENT_ID`);

--
-- Indices de la tabla `tbl_habitacion`
--
ALTER TABLE `tbl_habitacion`
  ADD PRIMARY KEY (`ROOM_ID`),
  ADD KEY `ROOM_TYPE` (`ROOM_TYPE`);

--
-- Indices de la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
  ADD PRIMARY KEY (`DETAIL_ID`),
  ADD KEY `ADMIN_ID` (`ADMIN_ID`),
  ADD KEY `CLIENT_ID` (`CLIENT_ID`),
  ADD KEY `ROOM_ID` (`ROOM_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indices de la tabla `tbl_rol`
--
ALTER TABLE `tbl_rol`
  ADD PRIMARY KEY (`ROL_ID`);

--
-- Indices de la tabla `tbl_tipo_habitacion`
--
ALTER TABLE `tbl_tipo_habitacion`
  ADD PRIMARY KEY (`TYPE_ID`);

--
-- Indices de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`USER_ID`),
  ADD KEY `ROL_TYPE` (`ROL_TYPE`);

--
-- Indices de la tabla `tbl_vista_habitacion`
--
ALTER TABLE `tbl_vista_habitacion`
  ADD PRIMARY KEY (`VIEW_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
  MODIFY `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_habitacion`
--
ALTER TABLE `tbl_habitacion`
  ADD CONSTRAINT `tbl_habitacion_ibfk_1` FOREIGN KEY (`ROOM_TYPE`) REFERENCES `tbl_tipo_habitacion` (`TYPE_ID`);

--
-- Filtros para la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
  ADD CONSTRAINT `tbl_reserva_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `tbl_administrador` (`ADMIN_ID`),
  ADD CONSTRAINT `tbl_reserva_ibfk_2` FOREIGN KEY (`CLIENT_ID`) REFERENCES `tbl_cliente` (`CLIENT_ID`),
  ADD CONSTRAINT `tbl_reserva_ibfk_3` FOREIGN KEY (`ROOM_ID`) REFERENCES `tbl_habitacion` (`ROOM_ID`),
  ADD CONSTRAINT `tbl_reserva_ibfk_4` FOREIGN KEY (`USER_ID`) REFERENCES `tbl_user` (`USER_ID`);

--
-- Filtros para la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`ROL_TYPE`) REFERENCES `tbl_rol` (`ROL_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

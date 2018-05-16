-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2018 a las 03:21:21
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sisoe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `idDireccion` int(10) UNSIGNED ZEROFILL NOT NULL,
  `Calle` varchar(45) NOT NULL,
  `NumeroExt` varchar(6) DEFAULT NULL,
  `NumeroInt` varchar(6) DEFAULT NULL,
  `Colonia` varchar(45) NOT NULL,
  `Municipio` varchar(45) NOT NULL,
  `Estado` varchar(45) NOT NULL,
  `Pais` varchar(45) NOT NULL,
  `CodigoPostal` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`idDireccion`, `Calle`, `NumeroExt`, `NumeroInt`, `Colonia`, `Municipio`, `Estado`, `Pais`, `CodigoPostal`) VALUES
(0000000001, 'Alcachofa', '256', '', 'El Pitirancho', 'Puerto Vallarta', 'Jalisco', 'Mexico', 48290),
(0000000002, 'Gladiola', '234', '', 'La Floresta', 'Puerto Vallarta', 'Jalisco', 'Mexico', 34567),
(0000000003, 'Tulipan', '1270', '', 'La Floresta', 'Puerto Vallarta', 'Jalisco', 'Mexico', 48290),
(0000000004, 'Azucena', '456', '', 'La Floresta', 'Puerto Vallarta', 'Jalisco', 'Mexico', 48290),
(0000000005, 'Hidalgo', '23', 'A', 'Educacion', 'Puerto Vallarta', 'Jalisco', 'Mexico', 48831);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `idEvento` int(11) NOT NULL,
  `Nombre` varchar(120) DEFAULT NULL,
  `Tipo` varchar(45) DEFAULT NULL,
  `Cronograma` longtext,
  `FechaInicio` datetime DEFAULT NULL,
  `FechaFin` datetime DEFAULT NULL,
  `Asistentes` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`idEvento`, `Nombre`, `Tipo`, `Cronograma`, `FechaInicio`, `FechaFin`, `Asistentes`) VALUES
(1, 'Boda de Juan y Claudia', 'Boda', '<p style=\"text-align: center;\"><strong>Programa de la Boda</strong></p>\r\n<p style=\"text-align: left;\">18:00 Misa en la catedral</p>\r\n<p style=\"text-align: left;\">19:30 Sesion de fotografia</p>\r\n<p style=\"text-align: left;\">20:30 Ingreso al salon y Brindis con los Padrinos</p>\r\n<p style=\"text-align: left;\">21:00 Cena</p>\r\n<p style=\"text-align: left;\">22:00 Apertura del baile</p>\r\n<p style=\"text-align: left;\">01:30 despedida.</p>', '2018-05-16 18:00:00', '2018-05-17 02:00:00', 'Jose Luis Gutierrez Padilla - Padrino\r\nJose Perez Duran - Invitado familiar de la novia\r\nAlberto suarez Rodriguez - Invitado familiar del novio\r\nCristina Acevedo Juarez - Invitada amante del novio\r\nSusana Cervantes - Invitada familiar de la novia'),
(2, 'Seminario sobre IngenierÃ­a de Software', 'Taller', '<p><strong>Programa de actividades</strong></p>\r\n<p>&nbsp;</p>\r\n<p><em>DIAS MARTES Y JUEVES:</em></p>\r\n<p>15:00 a 16:00 clases teoricas</p>\r\n<p>16:00 a 17:00 practicas de taller</p>\r\n<p>&nbsp;</p>\r\n<p>ULTIMA SEMANA ENTREGA DE PROYECTOS</p>', '2018-01-15 15:00:00', '2018-05-22 15:00:00', 'Participantes:\r\nIng. Sofia Alcazar VÃ©lez - Empresa: Soft-Inc. - telefono de contacto: 3221996588\r\nIng. Sofia Alcazar VÃ©lez - Empresa: Soft-Inc. - telefono de contacto: 3221996588\r\nIng. Sofia Alcazar VÃ©lez - Empresa: Soft-Inc. - telefono de contacto: 3221996588\r\nIng. Sofia Alcazar VÃ©lez - Empresa: Soft-Inc. - telefono de contacto: 3221996588\r\nIng. Sofia Alcazar VÃ©lez - Empresa: Soft-Inc. - telefono de contacto: 3221996588\r\nIng. Sofia Alcazar VÃ©lez - Empresa: Soft-Inc. - telefono de contacto: 3221996588\r\nIng. Sofia Alcazar VÃ©lez - Empresa: Soft-Inc. - telefono de contacto: 3221996588\r\nIng. Sofia Alcazar VÃ©lez - Empresa: Soft-Inc. - telefono de contacto: 3221996588'),
(3, 'Uso del Algebra Lineal en la ProgramaciÃ³n', 'Curso', '<p><strong>Programa</strong></p>\r\n<p>15:00 - Inicio del Curso y Presentaci&oacute;n.</p>\r\n<p>16:00 - Explicaci&oacute;n del tema.</p>\r\n<p>17:00 - Preguntas y Respuestas.</p>\r\n<p>17:30 - Examen de conocimientos.</p>\r\n<p>18:00 - Fin de Curso y Despedida.</p>', '2018-05-13 15:00:00', '2018-05-15 18:00:00', 'Estudiantes:\r\nAlberto Lopez Suazo\r\nCornelio Rodriguez Lepe\r\nAlejandra Dorantes Loza\r\nHeriberto Machado Duran\r\nGeorgina Lopez Lopez\r\nMiguel Cervantes Duarte\r\nCristian Olvera Prado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_has_salones`
--

CREATE TABLE `eventos_has_salones` (
  `Eventos_idEvento` int(11) NOT NULL,
  `Salones_idSalon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventos_has_salones`
--

INSERT INTO `eventos_has_salones` (`Eventos_idEvento`, `Salones_idSalon`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `idPersona` int(11) NOT NULL,
  `Nombres` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Apellidos` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Contrasena` varchar(72) NOT NULL,
  `Empresa` varchar(255) DEFAULT NULL,
  `Direccion_idDireccion` int(10) UNSIGNED ZEROFILL NOT NULL,
  `Telefono` int(15) DEFAULT NULL,
  `RFC` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Tipo` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`idPersona`, `Nombres`, `Apellidos`, `Correo`, `Contrasena`, `Empresa`, `Direccion_idDireccion`, `Telefono`, `RFC`, `Tipo`) VALUES
(1, 'Admin', 'System', 'adminsys@gmail.com', '$2y$10$VWR7ncgAsCX6ae6zWtoOe.FG6OSM655xLQyKCDmg8YFWdnZi6TH4.', 'NidiaSoft', 0000000001, 322115450, '1234567890-EXS', 0),
(2, 'Jose Luis', 'Gutierrez', 'jose_luis@gmail.com', '$2y$10$z6udqWhxEPICEJ7Xzf0S9ekekCW8/uPbMQST2RrGYJox/dn2bUCnW', 'Universidad del Llano', 0000000004, 322115450, 'GUPL750118-DUO', 1),
(3, 'Ernesto Alejandro', 'Zapata Suarez', 'plcom@info.com', '$2y$10$0UPxIipjKooNcvcKeG4yjuJ9xaMFx7Jqokkpj7zxKpVROTF1f/17C', 'Plasticos y Complementos S.A.', 0000000005, 2147483647, 'PLCM920612-MN', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_has_eventos`
--

CREATE TABLE `personas_has_eventos` (
  `Personas_idPersona` int(11) NOT NULL,
  `Eventos_idEvento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas_has_eventos`
--

INSERT INTO `personas_has_eventos` (`Personas_idPersona`, `Eventos_idEvento`) VALUES
(2, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedor` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Tipo` varchar(45) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Descripcion` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `Nombre`, `Tipo`, `Correo`, `Telefono`, `Descripcion`) VALUES
(1, 'Mobiliario para eventos S.A de C.V', 'Renta de sillas y mesas', 'renta.mob@info.com', '3221417369', 'Renta de todo tipo de mesas y sillas para sus eventos, para presupuestos, contactenos.'),
(2, 'Decoraciones y blancos Fest', 'Servicio', 'fest@info.net', '3221996588', 'Servicio de decoración de salones para eventos y renta de mantelería'),
(4, 'Todo para su evento', 'Consumibles', 'events@gmail.com', '3221115456', 'Venta de articulos consumibles para sus eventos, como servilletas, cubiertos y otros.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salones`
--

CREATE TABLE `salones` (
  `idSalon` int(11) NOT NULL,
  `Nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `Descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Capacidad` smallint(3) DEFAULT NULL,
  `Tipo` varchar(20) DEFAULT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `salones`
--

INSERT INTO `salones` (`idSalon`, `Nombre`, `Descripcion`, `Capacidad`, `Tipo`, `imagen`) VALUES
(1, 'RubÃ­', 'Salon para eventos recreativos y sociales: aniversarios, bodas, cumpleaÃ±os, XV aÃ±os, bautismos, comuniones, conmemoraciones, graduaciones, reuniones empresariales y universitarias, shows y animaciones.', 140, 'Tipo de Salon', '{local}/assets/imagenes/rubi.jpg'),
(2, 'Esmeralda', 'Salon para debates, paneles, mesas redondas, talleres y seminarios entre otros.', 80, 'Multiproposito', '{local}/assets/imagenes/esmeralda2.jpg'),
(3, 'Aguamarina', 'Salon audiovisual para conferencias, simposios, congresos, convenciones, foros y cursos entre otros.', 100, 'Audiovisual', '{local}/assets/imagenes/aguamarina4.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`idDireccion`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`idEvento`);

--
-- Indices de la tabla `eventos_has_salones`
--
ALTER TABLE `eventos_has_salones`
  ADD PRIMARY KEY (`Eventos_idEvento`,`Salones_idSalon`),
  ADD KEY `fk_Eventos_has_Salones_Salones1_idx` (`Salones_idSalon`),
  ADD KEY `fk_Eventos_has_Salones_Eventos1_idx` (`Eventos_idEvento`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`idPersona`,`Correo`,`Direccion_idDireccion`),
  ADD KEY `fk_Personas_Direccion1_idx` (`Direccion_idDireccion`);

--
-- Indices de la tabla `personas_has_eventos`
--
ALTER TABLE `personas_has_eventos`
  ADD KEY `Personas_idPersona` (`Personas_idPersona`),
  ADD KEY `Eventos_idEvento` (`Eventos_idEvento`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `salones`
--
ALTER TABLE `salones`
  ADD PRIMARY KEY (`idSalon`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `idDireccion` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `idEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `salones`
--
ALTER TABLE `salones`
  MODIFY `idSalon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos_has_salones`
--
ALTER TABLE `eventos_has_salones`
  ADD CONSTRAINT `fk_Eventos_has_Salones_Eventos1` FOREIGN KEY (`Eventos_idEvento`) REFERENCES `eventos` (`idEvento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Eventos_has_Salones_Salones1` FOREIGN KEY (`Salones_idSalon`) REFERENCES `salones` (`idSalon`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `fk_Personas_Direccion1` FOREIGN KEY (`Direccion_idDireccion`) REFERENCES `direccion` (`idDireccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `personas_has_eventos`
--
ALTER TABLE `personas_has_eventos`
  ADD CONSTRAINT `fk_Personas_has_Eventos_Eventos1` FOREIGN KEY (`Eventos_idEvento`) REFERENCES `eventos` (`idEvento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Personas_has_Eventos_Personas1` FOREIGN KEY (`Personas_idPersona`) REFERENCES `personas` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

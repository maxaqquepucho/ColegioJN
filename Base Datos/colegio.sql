-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2018 a las 09:08:35
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `idPersona` int(11) NOT NULL,
  `idGrupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`idPersona`, `idGrupo`) VALUES
(10, 1),
(11, 2),
(12, 3),
(13, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistente`
--

CREATE TABLE `asistente` (
  `idPersona` int(11) NOT NULL,
  `areaAsignada` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

CREATE TABLE `director` (
  `idPersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `Persona_idPersona` int(11) NOT NULL,
  `salario_idsalario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`Persona_idPersona`, `salario_idsalario`) VALUES
(5, 1),
(9, 1),
(4, 2),
(3, 3),
(6, 3),
(8, 3),
(1, 4),
(7, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `idGrupo` int(11) NOT NULL,
  `limitesAlumno` int(11) NOT NULL,
  `idSalon` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`idGrupo`, `limitesAlumno`, `idSalon`, `descripcion`) VALUES
(1, 20, 1, '1er Grado'),
(2, 20, 2, '2do Grado'),
(3, 20, 3, '3er Grado'),
(4, 20, 4, '4to Grado'),
(5, 20, 5, '5to Grado'),
(6, 20, 6, '6to Grado'),
(7, 30, 7, 'Circulo Estudiantil'),
(8, 20, 8, 'computacion'),
(10, 20, 10, 'computacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL,
  `idTipo` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `DNI` varchar(45) NOT NULL,
  `idUBIGEO` int(11) DEFAULT NULL,
  `Direccion` varchar(45) NOT NULL,
  `fecNac` date NOT NULL,
  `Sexo` varchar(45) NOT NULL,
  `NumeroCelular` varchar(45) DEFAULT NULL,
  `NumeroTelefono` varchar(45) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `idTipo`, `Nombre`, `Apellido`, `DNI`, `idUBIGEO`, `Direccion`, `fecNac`, `Sexo`, `NumeroCelular`, `NumeroTelefono`, `idUsuario`) VALUES
(1, 2, 'Percy', 'Avalos Urcia', '70334345', NULL, 'Av. Los alamos 452', '1996-07-15', 'M', '996007268', '7940481', 1),
(3, 2, 'Oscar', 'Bravo Carbajal', '73260012', NULL, 'Jr. Los andes 187', '1999-02-25', 'M', '956727151', '7894561', 3),
(4, 2, 'Diego', 'Marcelo Castro', '46924971', NULL, 'Residencias heroes', '1990-02-25', 'M', '991049184', '7894561', 4),
(5, 2, 'Stacey', 'Camino Ingroca', '77675721', NULL, 'Residencias heroes', '1998-07-16', 'F', '940451864', '7894561', 5),
(6, 2, 'Nilton', 'Pizarro Espinoza', '72215079', NULL, 'Avenida 225', '1998-08-20', 'M', '991990982', '7894561', 6),
(7, 2, 'Max', 'Aqquepucho', '70342040', NULL, 'Av. parihuanca 422', '1998-04-29', 'M', '931130960', '7894561', 7),
(8, 2, 'Rafael', 'Lopez Cordova', '76958728', NULL, 'Calle Santo toribio 224', '1999-12-30', 'M', '987654321', '7894561', 8),
(9, 2, 'Marlon', 'Acuña Benites', '78945612', NULL, 'UCVmasnah', '1983-12-30', 'M', '965960660', '5555555', 9),
(10, 1, 'Junior', 'Acosta Quispe', '47752505', NULL, 'Av Bertello 872', '1993-04-12', 'M', '982454754', '7987956', 10),
(11, 1, 'omayra', 'avalos urcia', '70334346', NULL, 'Av. Los alamos 452', '2010-06-05', 'F', '987654321', '78945631', 11),
(12, 1, 'alumnotest', 'test tester', '7012313', NULL, '123123 sjaa sas ', '2018-06-22', 'M', '12312', '21312', 12),
(13, 1, 'sergio', 'mugurusa', '70567833', NULL, 'av nolo C ', '2007-05-15', 'M', '98765421', '7654321', 13),
(14, 1, 'thomas', 'avalos urcia', '123123', NULL, 'null', '2018-06-06', '1', '123', '123', 14),
(15, 4, 'Vilma', 'bravo huamash', '76543219', NULL, 'Jr. Los andes 187', '1984-06-06', 'F', '987654321', '7654321', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `idPersona` int(11) NOT NULL,
  `idGrupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`idPersona`, `idGrupo`) VALUES
(1, 1),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salario`
--

CREATE TABLE `salario` (
  `idsalario` int(11) NOT NULL,
  `sueldoBruto` double NOT NULL,
  `descuento` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `salario`
--

INSERT INTO `salario` (`idsalario`, `sueldoBruto`, `descuento`) VALUES
(1, 1900, 100),
(2, 2000, 200),
(3, 2200, 300),
(4, 3000, 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salon`
--

CREATE TABLE `salon` (
  `idSalon` int(11) NOT NULL,
  `aforo` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `salon`
--

INSERT INTO `salon` (`idSalon`, `aforo`, `descripcion`) VALUES
(1, 25, 'Cursos Generales'),
(2, 25, 'Cursos Generales'),
(3, 25, 'Cursos Generales'),
(4, 25, 'Cursos Generales'),
(5, 25, 'Cursos Generales'),
(6, 25, 'Cursos Generales'),
(7, 30, 'Computacion'),
(8, 30, 'Computacion'),
(9, 30, 'Computacion'),
(10, 25, 'Cursos Generales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `idTipo` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`idTipo`, `descripcion`) VALUES
(1, 'Alumno'),
(2, 'Profesor'),
(3, 'Asistente'),
(4, 'Director');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubigeo`
--

CREATE TABLE `ubigeo` (
  `idUBIGEO` int(11) NOT NULL,
  `codDepartamento` varchar(45) NOT NULL,
  `codProvincia` varchar(45) NOT NULL,
  `codDistrito` varchar(45) NOT NULL,
  `descDepartamento` varchar(45) NOT NULL,
  `descProvincia` varchar(45) NOT NULL,
  `desDistrito` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `contrasenia` varchar(45) NOT NULL,
  `imagen` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `mail`, `usuario`, `contrasenia`, `imagen`) VALUES
(1, 'percy961216@gmail.com', 'percyavaur', '1234', 'https://i.imgur.com/hurXYXU.jpg'),
(3, 'oscarmbravoc@gmail.com', 'oscarBC', '1234', 'https://i.imgur.com/6daQkA1.jpg'),
(4, 'marcelowork24@gmail.com', 'diegoMC', '1234', 'https://i.imgur.com/Pbn3AAj.jpg'),
(5, 'staceyci16.98@gmail.com', 'staceyCI', '1234', 'https://i.imgur.com/r1eoZ9h.jpg'),
(6, 'cris2008981234@gmail.com', 'cristianPE', '1234', 'https://i.imgur.com/ab7vIuD.jpg'),
(7, 'max.light.night@gmail.com', 'maxAH', '1234', 'https://i.imgur.com/rpfZfvx.jpg'),
(8, 'rafaelukf@gmail.com', 'rafaelLC', '1234', 'https://i.imgur.com/gf4bo9u.jpg'),
(9, 'marlonac@gmail.com', 'macunabe', '1234', 'https://i.imgur.com/dZnokVZ.jpg'),
(10, 'juniorandree123@gmail.com', 'juniorAQ', '1234', 'https://i.imgur.com/kx5abwD.jpg?1'),
(11, 'omayravaur@hotmail.com', 'omayraavaur', '1234', 'por actualizar'),
(12, 'tester@hotmail.com', 'sadaas', '1234', 'por actualizar'),
(13, 'sergiomug@gmail.com', 'mugurusa', '1234', 'por actualizar'),
(14, 'asdasd@hotmail.com', '123', '1234', '123'),
(15, 'vilmaBH@gmail.com', 'vilmaBH', '1234', 'https://i.imgur.com/7dGvVRD.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`idPersona`),
  ADD KEY `fk_Alumno_Persona1_idx` (`idPersona`),
  ADD KEY `fk_Alumno_Grupo1_idx` (`idGrupo`);

--
-- Indices de la tabla `asistente`
--
ALTER TABLE `asistente`
  ADD PRIMARY KEY (`idPersona`),
  ADD KEY `fk_Asistente_Empleado1_idx` (`idPersona`);

--
-- Indices de la tabla `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`idPersona`),
  ADD KEY `fk_director_Empleado1_idx` (`idPersona`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`Persona_idPersona`),
  ADD KEY `fk_Empleado_Persona1_idx` (`Persona_idPersona`),
  ADD KEY `fk_Empleado_salario1_idx` (`salario_idsalario`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`idGrupo`),
  ADD KEY `fk_Grupo_Salon1_idx` (`idSalon`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idPersona`),
  ADD KEY `fk_Persona_UBIGEO1_idx` (`idUBIGEO`),
  ADD KEY `fk_Persona_Tipo1_idx` (`idTipo`),
  ADD KEY `fk_Persona_Usuario1_idx` (`idUsuario`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`idPersona`),
  ADD KEY `fk_Profesor_Grupo1_idx` (`idGrupo`),
  ADD KEY `fk_Profesor_Empleado1_idx` (`idPersona`);

--
-- Indices de la tabla `salario`
--
ALTER TABLE `salario`
  ADD PRIMARY KEY (`idsalario`);

--
-- Indices de la tabla `salon`
--
ALTER TABLE `salon`
  ADD PRIMARY KEY (`idSalon`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idTipo`);

--
-- Indices de la tabla `ubigeo`
--
ALTER TABLE `ubigeo`
  ADD PRIMARY KEY (`idUBIGEO`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `idGrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `salon`
--
ALTER TABLE `salon`
  MODIFY `idSalon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `fk_Alumno_Grupo1` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`idGrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Alumno_Persona1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asistente`
--
ALTER TABLE `asistente`
  ADD CONSTRAINT `fk_Asistente_Empleado1` FOREIGN KEY (`idPersona`) REFERENCES `empleado` (`Persona_idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `director`
--
ALTER TABLE `director`
  ADD CONSTRAINT `fk_director_Empleado1` FOREIGN KEY (`idPersona`) REFERENCES `empleado` (`Persona_idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `fk_Empleado_Persona1` FOREIGN KEY (`Persona_idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Empleado_salario1` FOREIGN KEY (`salario_idsalario`) REFERENCES `salario` (`idsalario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `fk_Grupo_Salon1` FOREIGN KEY (`idSalon`) REFERENCES `salon` (`idSalon`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_Persona_Tipo1` FOREIGN KEY (`idTipo`) REFERENCES `tipo` (`idTipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Persona_UBIGEO1` FOREIGN KEY (`idUBIGEO`) REFERENCES `ubigeo` (`idUBIGEO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_idUsusario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `fk_Profesor_Empleado1` FOREIGN KEY (`idPersona`) REFERENCES `empleado` (`Persona_idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Profesor_Grupo1` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`idGrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

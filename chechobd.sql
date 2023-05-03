-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2023 a las 23:27:09
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chechobd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id_asistencia` int(11) NOT NULL,
  `nombre_estudiante` varchar(40) DEFAULT NULL,
  `fecha_inasistencia` date DEFAULT NULL,
  `hora_inasistencia` time DEFAULT NULL,
  `nombre_materia` varchar(40) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`id_asistencia`, `nombre_estudiante`, `fecha_inasistencia`, `hora_inasistencia`, `nombre_materia`, `id_materia`) VALUES
(1, 'Mario', '2023-12-11', '18:59:00', 'Filosofia', 1),
(2, 'Camilo', '2023-08-09', '10:27:00', 'Literatura', 3),
(3, 'Sofia', '2023-10-17', '16:29:00', 'Trigonometria', 6),
(4, 'Estiven', '2023-07-20', '13:38:00', 'Quimica', 4),
(5, 'Jaider', '2023-08-14', '20:47:00', 'Calculo', 5),
(6, 'Paola', '2023-01-24', '22:40:00', 'Trigonometria', 6),
(7, 'Andrey', '2023-10-12', '14:41:00', 'Religion', 7),
(8, 'Jimmy', '2023-12-01', '12:30:00', 'Artes', 8),
(9, 'Sneider', '2023-02-10', '16:10:00', 'Sociales', 9),
(10, 'Carlos', '2023-03-08', '15:00:00', 'Fisica', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `Nota` int(11) DEFAULT NULL,
  `nombre_materia` varchar(40) DEFAULT NULL,
  `curso_estudiante` int(11) DEFAULT NULL,
  `nombre_profesor` varchar(40) DEFAULT NULL,
  `id_estudiante` int(11) NOT NULL,
  `notafinal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`Nota`, `nombre_materia`, `curso_estudiante`, `nombre_profesor`, `id_estudiante`, `notafinal`) VALUES
(5, 'Filosofia', 11, 'Miguel', 1, 3),
(5, 'Algebra', 8, 'Roberto', 2, 5),
(4, 'Literatura', 9, 'Martha', 3, 4),
(1, 'Quimica', 10, 'Paola', 4, 1),
(4, 'Calculo', 7, 'Francy', 5, 5),
(4, 'Trigonometria', 5, 'Estafany', 6, 2),
(5, 'Religion', 6, 'Paulo', 7, 1),
(3, 'Artes', 11, 'Nicolas', 8, 5),
(1, 'Sociales', 10, 'Oscar', 9, 4),
(3, 'Fisica', 8, 'Fabian', 10, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id_estudiante` int(11) NOT NULL,
  `nombre_estudiante` varchar(30) NOT NULL,
  `curso_estudiante` varchar(32) NOT NULL,
  `asistencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id_estudiante`, `nombre_estudiante`, `curso_estudiante`, `asistencia`) VALUES
(1, 'Mario', '11', 4),
(2, 'Camilo', '9', 6),
(3, 'Sofia', '10', 1),
(4, 'Estiven', '5', 3),
(5, 'Jaider', '11', 4),
(6, 'Paola', '11', 2),
(7, 'Andrey', '9', 7),
(8, 'Jimmy', '10', 8),
(9, 'Sneider', '5', 9),
(10, 'Carlos', '11', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nombre_materia` varchar(30) NOT NULL,
  `nombre_profesor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `nombre_materia`, `nombre_profesor`) VALUES
(1, 'Filosofia', 'Miguel'),
(2, 'Algebra', 'Roberto'),
(3, 'Literatura', 'Martha'),
(4, 'Quimica', 'Paola'),
(5, 'Calculo', 'Francy'),
(6, 'Trigonometria', 'Estafany'),
(7, 'Religion', 'Paulo'),
(8, 'Artes', 'Nicolas'),
(9, 'Sociales', 'Oscar'),
(10, 'Fisica', 'Fabian');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notafinal`
--

CREATE TABLE `notafinal` (
  `id_nota` int(11) NOT NULL,
  `nombre_materia` varchar(40) DEFAULT NULL,
  `nombre_maestro` varchar(40) DEFAULT NULL,
  `nombre_estudiante` varchar(40) DEFAULT NULL,
  `curso_estudiante` int(11) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notafinal`
--

INSERT INTO `notafinal` (`id_nota`, `nombre_materia`, `nombre_maestro`, `nombre_estudiante`, `curso_estudiante`, `id_materia`) VALUES
(1, 'Filosofia', 'Miguel', 'Mario', 11, 1),
(2, 'Algebra', 'Roberto', 'Camilo', 9, 9),
(3, 'Literatura', 'Martha', 'Sofia', 10, 3),
(4, 'Quimica', 'Paola', 'Estiven', 5, 4),
(5, 'Calculo', 'Francy', 'Jaider', 11, 5),
(6, 'Trigonometria', 'Estafany', 'Paola', 11, 4),
(7, 'Religion', 'Paulo', 'Andrey', 9, 1),
(8, 'Artes', 'Nicolas', 'Jimmy', 10, 2),
(9, 'Sociales', 'Oscar', 'Sneider', 5, 3),
(10, 'Fisica', 'Fabian', 'Carlos', 11, 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id_asistencia`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `notafinal` (`notafinal`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `asistencia` (`asistencia`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`);

--
-- Indices de la tabla `notafinal`
--
ALTER TABLE `notafinal`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `id_materia` (`id_materia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id_asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `notafinal`
--
ALTER TABLE `notafinal`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`);

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `calificacion_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`),
  ADD CONSTRAINT `calificacion_ibfk_2` FOREIGN KEY (`notafinal`) REFERENCES `notafinal` (`id_nota`);

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`asistencia`) REFERENCES `asistencia` (`id_asistencia`);

--
-- Filtros para la tabla `notafinal`
--
ALTER TABLE `notafinal`
  ADD CONSTRAINT `notafinal_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

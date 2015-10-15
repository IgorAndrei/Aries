-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2015 a las 18:26:27
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sga`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE IF NOT EXISTS `carrera` (
  `id` int(11) NOT NULL,
  `nombre_carrera` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id`, `nombre_carrera`, `descripcion`) VALUES
(1, 'Ingeniería Civil en Informática ', 'La carrera de Ingeniería Civil en Informática forma profesionales con una sólida base en las Ciencias de la Ingeniería y un conjunto de competencias que habilitan para desempeñarse en las áreas de Desarrollo de Software y de Tecnologías de Información. En su formación también se ha intencionado el desarrollo de competencias como trabajo en equipo y creatividad e innovación, las cuales permiten potenciar, junto al sello identitario institucional, un perfil académico-profesional muy atractivo para para el campo laboral.'),
(2, 'Nutricion y Dietetica', 'salud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera_competencia`
--

CREATE TABLE IF NOT EXISTS `carrera_competencia` (
  `id_carrera` int(11) NOT NULL,
  `id_competencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `carrera_competencia`
--

INSERT INTO `carrera_competencia` (`id_carrera`, `id_competencia`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera_plan`
--

CREATE TABLE IF NOT EXISTS `carrera_plan` (
  `id_carrera` int(11) NOT NULL,
  `id_plan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrera_plan`
--

INSERT INTO `carrera_plan` (`id_carrera`, `id_plan`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competencias`
--

CREATE TABLE IF NOT EXISTS `competencias` (
  `Id` int(11) NOT NULL,
  `nombre_competencia` varchar(50) CHARACTER SET latin1 NOT NULL,
  `nivel` int(11) NOT NULL,
  `descrip` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `competencias`
--

INSERT INTO `competencias` (`Id`, `nombre_competencia`, `nivel`, `descrip`) VALUES
(1, 'Actuación Etica', 1, 'Identifica dilemas éticos en la vida\r\ncotidiana personal y social, describiendo sus causas y consecuencias así como los\r\nvalores éticos en juego.'),
(2, 'Actuacion Etica', 2, 'Juzga dilemas éticos de los ámbitos\r\npersonal, social y profesional, utilizando\r\nprincipios éticos universales que tienen como base la justicia, el bien común y\r\nla dignidad de la persona'),
(3, 'Actuacion Etica', 3, 'Actúa frente a dilemas éticos complejos de su propia realidad personal y profesional,\r\nponiendo en práctica valores socialmente\r\ncompartidos,demostrando un espíritu de\r\nservicio social en su desempeño profesional'),
(4, 'Orientación a la Calidad', 1, 'Reconoce los resultados potenciales que\r\nlas prácticas excelentes acarrean en los\r\námbitos personal y social.'),
(5, 'Orientación a la Calidad', 2, 'Evalúa las prácticas de gestión, en el\r\ncontexto del ejercicio profesional,\r\nutilizando como referente el concepto de\r\nexcelencia'),
(6, 'Orientación a la Calidad', 3, 'Obtiene resultados de calidad a partir\r\nde procesos de planificación, seguimiento y\r\nevaluación de las gestiones que emprende\r\nen su quehacer profesional.'),
(7, 'Valoración y Respeto hacia la Diversidad', 1, 'Reconoce en sí mismo elementos de la\r\ndiversidad individual y cultural\r\nvalorándose como persona en la interacción\r\ncotidiana con otros diferentes.'),
(8, 'Valoración y Respeto hacia la Diversidad', 2, 'Comprende y valora la riqueza de las\r\ndiferencias sociales, culturales y de\r\ncapacidades, participando en la vida social sin incurrir en prácticas discriminatorias.'),
(9, 'Valoración y Respeto hacia la Diversidad', 3, 'Promueve prácticas de convivencia e\r\ninclusión social en su ámbito de desempeño\r\nprofesional y su relación con el medio.'),
(10, 'Creatividad e Innovación', 1, 'Identifica respuestas novedosas para\r\nresolver mejor las demandas del entorno\r\ncotidiano.'),
(11, 'Creatividad e Innovación', 2, 'Identifica problemas complejos en diferentes contextos, generando\r\nsoluciones creativas.'),
(12, 'Creatividad e Innovación', 3, 'Propone múltiples soluciones, ejecutando la\r\nmejor de ellas, para resolver problemas del\r\nentorno sociocultural, profesional,laboral o científico.'),
(13, 'Trabajo en Equipo', 1, 'Reconoce en sí mismo y los demás \r\nintegrantes de su equipo de trabajo,\r\nlas fortalezas y debilidades que\r\nles permitirán desarrollar una\r\ntarea de forma exitosa, comprometiéndose\r\nindividualmente en acciones vinculadas al\r\nlogro de los objetivos planteados.'),
(14, 'Trabajo en Equipo', 2, 'Participa activamente en equipos de\r\ntrabajo favoreciendo la confianza y\r\ncontribuyendo al desarrollo y consecución de las tareas encomendadas mediante un\r\ntrabajo eficaz, en contextos\r\ndel ámbito profesional.'),
(15, 'Trabajo en Equipo', 3, 'Dirige equipos  de trabajo de composición\r\ndiversa asegurando la integración de\r\nlos miembros y su orientación a un\r\nrendimiento elevado.'),
(16, 'Gestión del Conocimiento', 1, 'Reconoce las habilidades y/o procesos\r\ncognitivos con los cuales puede identificar, seleccionar, relacionar e\r\ninterpretar información básica relacionada con su profesión futura.'),
(17, 'Gestión del Conocimiento', 2, 'Aplica los procesos de análisis, síntesis,\r\nabstracción,inferencias, a nuevos\r\nconocimientos del ámbito sociocultural y\r\nde su profesión.'),
(18, 'Gestión del Conocimiento', 3, 'Emplea la información y el conocimiento\r\npara actuar de manera atingente a las\r\ndemandas de contextos complejos, que\r\npermitan solucionar problemas de la realidad sociocultural y profesional.'),
(19, 'Comunicación Oral y Escrita', 1, 'Expresa eficaz y correctamente sus ideas,\r\nsentimientos, opiniones, en situaciones\r\nformales e informales, tanto en forma\r\noral como escrita, de manera de\r\nprovocar una comunicación efectiva.'),
(20, 'Comunicación Oral y Escrita', 2, 'Utiliza los  elementos del proceso de\r\ncomunicación en diversas situaciones\r\ncomunicativas haciendo las distinciones\r\npropias de los contextos, los sujetos y el nivel de lenguaje.'),
(21, 'Comunicación Oral y Escrita', 3, 'Comunica puntos de vista, propuestas y\r\nopiniones bien fundamentadas, con argumentos sólidos, coherentes y cohesionados, en situaciones de comunicación compleja, en ambientes\r\nsociales y profesionales.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan`
--

CREATE TABLE IF NOT EXISTS `plan` (
  `id` int(11) NOT NULL,
  `nombre_plan` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plan`
--

INSERT INTO `plan` (`id`, `nombre_plan`, `descripcion`) VALUES
(2, 'Plan Dos', 'esta plan es luego del 2011'),
(3, 'Plan Uno', 'plan 2010 <=');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcalendario`
--

CREATE TABLE IF NOT EXISTS `tcalendario` (
  `id` int(255) NOT NULL,
  `fecha` date NOT NULL,
  `evento` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7585 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tcalendario`
--

INSERT INTO `tcalendario` (`id`, `fecha`, `evento`) VALUES
(7583, '0000-00-00', 'perro'),
(7584, '2015-10-08', 'gato');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `id` int(11) NOT NULL,
  `nombre_tipo_usuario` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `nombre_tipo_usuario`) VALUES
(1, 'Administrador'),
(2, 'Docente'),
(3, 'Estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `password` varchar(25) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `ul_inicio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nombres` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `tipo_usuario` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `usuario`, `password`, `correo`, `ul_inicio`, `nombres`, `apellidos`, `id_carrera`, `id_plan`, `tipo_usuario`) VALUES
(3, 17248536, '1234', 'igor.riquelme@gmail.com', '2015-10-15 15:31:33', 'Igor Andrei', 'Riquelme Jimenez', 1, 2, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `competencias`
--
ALTER TABLE `competencias`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tcalendario`
--
ALTER TABLE `tcalendario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tcalendario`
--
ALTER TABLE `tcalendario`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7585;
--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

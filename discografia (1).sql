-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2016 a las 21:21:06
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `discografia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `Titulo` varchar(50) COLLATE utf8_bin NOT NULL,
  `Fecha_Publicacion` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `album`
--

INSERT INTO `album` (`id`, `Titulo`, `Fecha_Publicacion`) VALUES
(1, 'Holi', 1996);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion`
--

CREATE TABLE `cancion` (
  `id` int(11) NOT NULL,
  `Titulo` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Duracion` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `Letras` text COLLATE utf8_bin,
  `Album` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cancion`
--

INSERT INTO `cancion` (`id`, `Titulo`, `Duracion`, `Letras`, `Album`) VALUES
(1, 'Yemen', '4:24', 'Me da pánico mi propio ego, ciego de mí mismo llego\r\nhasta el mismísimo Olimpo y le pego fuego al puto monte,\r\nhogar de ridículos dioses, mi nombre \r\nse eleva entre humo y cenizas, reluce en el horizonte,\r\nlas manos arriba y nadie se mueve,\r\nes un MC gastando saliva, normal que me deshueve,\r\nnormal que cuando llegue el jeque se desmelenen,\r\nincluso travestidos e hipócritas\r\nme odian pero me temen,\r\ncuando sucede mi semen, \r\ndel ritmo brotan plantas exóticas,\r\nvistosa aves nórdicas deciden\r\nque anidan en este vergel,\r\nedén que emerge del Yemen,\r\n¿Tienes sed de mis crónicas? Pues bebe de este té\r\nde palabras aromáticas que recolecté,\r\nsi mi cuaderno fuera un postre sería un hojaldre\r\nde higos, nueces y miel, una crepe de hiel para ti, infiel,\r\nme negaste tres veces como Pedro a Jesús,\r\nahora vuelves al maestro y aunque no me mereces,\r\nme arrodillo y te lavo los pies,\r\nte ofrezco pan con aceite,\r\ntodo para tu dolorosonoro deleite, co.\r\nTe duele, te, te, te duele.\r\nTe duele pero, te, te duele tan bien.\r\n\r\n\r\n¿Qué tal unas cometas de frambuesa?\r\nY tú dijiste: "Sí, pero en vez de hilo, regaliz".\r\nYo soy el nuevo Willy Wonka,\r\nvenid niños a mí, mas con mi estilo no busquéis bronca.\r\nYo soy el sol que alumbra calles cuando el cielo es gris,\r\nyo leo el futuro de MCs en la espuma de mi pis.\r\nFin de la mediocridad, vuelve el loco astrónomo,\r\nalquimista soy yo, transformo el plomo en oro,\r\ncomo un sangriento cascabel, a media noche\r\nme despierta un pensamiento del que salen miles,\r\ny de estos miles quedan cien, diez, dos, \r\nun solo verso gana esta lucha atroz,\r\nmis visiones llenaron expedientes en la NASA,\r\ncientíficos chinos se plantaron en mi casa,\r\npreguntan por el domador de OVNIs,\r\n¿cómo lo haces? Mediante astrolenguaje es mi extraño bagaje,\r\nno te pasa que al oír la mierda auténtica,\r\nsientes lo tuyo artificial y simple métrica,\r\ndudaste de mis fuerzas y te llevaste un buen zas,\r\nahora, ¿qué tal te ves comiendo mierda?\r\nMientras sueltas esas rimas flojas, ¿de qué te quejas?\r\n¿Te has parado a revisar tus hojas? ¿Lo qué reflejas?\r\nLo que pienso yo es que estás perdido, estás jodido,\r\nno has medido en qué te has metido, en tremendo lío.\r\nEsto del rap, co, mejor escucha a Kase.O,\r\ncon Lírico y con Hate hace tremendo trío,\r\nen Zaragoza no hace fresco, hace más bien frío,\r\ncomo la poza de un río en estío mi estilo es tío,\r\naspiro al papado, os pido pues que me llaméis Pío,\r\n¿pero qué cojones digo? Si yo con brío\r\nme cago en ese puto obispo de Lucifer siervo sombrío,\r\nhijo de puta, ya podrás con críos.\r\nDesvaríos varios, no escatimo escarnios,\r\n¿con qué derecho hablan de Diós estos demonios?\r\nTambién hay curas buenos, también hay seres plenos,\r\nlos menos gozan de poca promo ascetas,\r\nen este planeta de memos.\r\nSoy poeta y viajo más que tus astronautas,\r\nsoy poeta y yo jamás respeté tus pautas,\r\n¿cuántas noches me pasé yo delante del papel\r\ndiseñando llaves para tus jaulas?\r\nY si el placer fuera solo ausencia de dolor,\r\ny si el dolor se borrará como las manchas,\r\nsi hubiera tintes para el corazón,\r\nno habría una razón para rimar hasta las tantas.', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Album` (`Album`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD CONSTRAINT `cancion_ibfk_1` FOREIGN KEY (`Album`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

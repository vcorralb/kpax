-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-05-2014 a las 01:25:52
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `kpax`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ability`
--

CREATE TABLE IF NOT EXISTS `ability` (
  `idAbility` int(11) NOT NULL AUTO_INCREMENT,
  `nameAbility` varchar(20) NOT NULL,
  PRIMARY KEY (`idAbility`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `ability`
--

INSERT INTO `ability` (`idAbility`, `nameAbility`) VALUES
(1, 'Generics'),
(2, 'Siences'),
(3, 'History'),
(4, 'Humanities'),
(5, 'Languages');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abilityproficiency`
--

CREATE TABLE IF NOT EXISTS `abilityproficiency` (
  `idAbilityProficiency` int(11) NOT NULL AUTO_INCREMENT,
  `idAbility` int(11) NOT NULL,
  `idProficiency` int(11) NOT NULL,
  PRIMARY KEY (`idAbilityProficiency`),
  KEY `Ability` (`idAbility`),
  KEY `Proficiency` (`idProficiency`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `abilityproficiency`
--

INSERT INTO `abilityproficiency` (`idAbilityProficiency`, `idAbility`, `idProficiency`) VALUES
(1, 1, 21),
(2, 1, 22),
(3, 1, 23),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 2, 4),
(8, 3, 16),
(9, 3, 17),
(10, 3, 18),
(11, 3, 19),
(12, 3, 20),
(13, 4, 12),
(14, 4, 13),
(15, 4, 14),
(16, 4, 15),
(17, 5, 5),
(18, 5, 6),
(19, 5, 7),
(20, 5, 8),
(21, 5, 9),
(22, 5, 10),
(23, 5, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `award`
--

CREATE TABLE IF NOT EXISTS `award` (
  `idAward` int(11) NOT NULL AUTO_INCREMENT,
  `idProficiency` int(11) NOT NULL,
  `maxLevel` tinyint(1) NOT NULL,
  `idGame` int(11) NOT NULL,
  `descripAward` varchar(50) NOT NULL,
  PRIMARY KEY (`idAward`),
  KEY `Proficiency` (`idProficiency`),
  KEY `Game` (`idGame`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Volcado de datos para la tabla `award`
--

INSERT INTO `award` (`idAward`, `idProficiency`, `maxLevel`, `idGame`, `descripAward`) VALUES
(1, 1, 4, 67, 'Award 1'),
(2, 2, 3, 67, 'Award 2'),
(3, 3, 3, 67, 'Award 3'),
(4, 4, 4, 67, 'Award 4'),
(5, 5, 3, 68, 'Award 5'),
(6, 6, 3, 68, 'Award 6'),
(7, 7, 4, 68, 'Award 7'),
(8, 8, 3, 68, 'Award 8'),
(9, 9, 4, 68, 'Award 9'),
(10, 10, 4, 69, 'Award 10'),
(11, 11, 3, 69, 'Award 11'),
(12, 12, 3, 69, 'Award 12'),
(13, 13, 4, 69, 'Award 13'),
(14, 14, 3, 87, 'Award 14'),
(15, 15, 4, 87, 'Award 15'),
(16, 16, 3, 87, 'Award 16'),
(17, 17, 3, 87, 'Award 17'),
(18, 18, 4, 87, 'Award 18'),
(19, 19, 4, 88, 'Award 19'),
(20, 20, 3, 88, 'Award 20'),
(21, 21, 3, 88, 'Award 21'),
(22, 22, 3, 88, 'Award 22'),
(23, 23, 4, 89, 'Award 23'),
(24, 1, 4, 89, 'Award 24'),
(25, 2, 4, 89, 'Award 25'),
(26, 3, 3, 89, 'Award 26'),
(27, 4, 4, 89, 'Award 27'),
(28, 5, 3, 90, 'Award 28'),
(29, 6, 4, 90, 'Award 29'),
(30, 7, 3, 90, 'Award 30'),
(31, 8, 3, 90, 'Award 31'),
(32, 9, 4, 91, 'Award 32'),
(33, 10, 4, 91, 'Award 33'),
(34, 11, 3, 91, 'Award 34'),
(35, 12, 3, 91, 'Award 35'),
(36, 13, 3, 91, 'Award 36'),
(37, 14, 4, 92, 'Award 37'),
(38, 15, 4, 92, 'Award 38'),
(39, 16, 3, 92, 'Award 39'),
(40, 17, 3, 92, 'Award 40'),
(41, 18, 4, 93, 'Award 41'),
(42, 19, 3, 93, 'Award 42'),
(43, 20, 4, 93, 'Award 43'),
(44, 21, 3, 93, 'Award 44'),
(45, 22, 3, 93, 'Award 45'),
(46, 23, 4, 93, 'Award 46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `awardimage`
--

CREATE TABLE IF NOT EXISTS `awardimage` (
  `idAwardImage` int(11) NOT NULL AUTO_INCREMENT,
  `idAward` int(11) NOT NULL,
  `levelAward` tinyint(1) NOT NULL,
  `imageAward` varchar(10) NOT NULL,
  PRIMARY KEY (`idAwardImage`),
  KEY `Award` (`idAward`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=160 ;

--
-- Volcado de datos para la tabla `awardimage`
--

INSERT INTO `awardimage` (`idAwardImage`, `idAward`, `levelAward`, `imageAward`) VALUES
(1, 1, 1, 'A01L1.GIF'),
(2, 1, 2, 'A01L2.GIF'),
(3, 1, 3, 'A01L3.GIF'),
(4, 1, 4, 'A01L4.GIF'),
(5, 2, 1, 'A02L1.GIF'),
(6, 2, 2, 'A02L2.GIF'),
(7, 2, 3, 'A02L3.GIF'),
(8, 3, 1, 'A03L1.GIF'),
(9, 3, 2, 'A03L2.GIF'),
(10, 3, 3, 'A03L3.GIF'),
(11, 4, 1, 'A04L1.GIF'),
(12, 4, 2, 'A04L2.GIF'),
(13, 4, 3, 'A04L3.GIF'),
(14, 4, 4, 'A04L4.GIF'),
(15, 5, 1, 'A05L1.GIF'),
(16, 5, 2, 'A05L2.GIF'),
(17, 5, 3, 'A05L3.GIF'),
(18, 6, 1, 'A06L1.GIF'),
(19, 6, 2, 'A06L2.GIF'),
(20, 6, 3, 'A06L3.GIF'),
(21, 7, 1, 'A07L1.GIF'),
(22, 7, 2, 'A07L2.GIF'),
(23, 7, 3, 'A07L3.GIF'),
(24, 7, 4, 'A07L4.GIF'),
(25, 8, 1, 'A08L1.GIF'),
(26, 8, 2, 'A08L2.GIF'),
(27, 8, 3, 'A08L3.GIF'),
(28, 9, 1, 'A09L1.GIF'),
(29, 9, 2, 'A09L2.GIF'),
(30, 9, 3, 'A09L3.GIF'),
(31, 9, 4, 'A09L4.GIF'),
(32, 10, 1, 'A10L1.GIF'),
(33, 10, 2, 'A10L2.GIF'),
(34, 10, 3, 'A10L3.GIF'),
(35, 10, 4, 'A10L4.GIF'),
(36, 11, 1, 'A11L1.GIF'),
(37, 11, 2, 'A11L2.GIF'),
(38, 11, 3, 'A11L3.GIF'),
(39, 12, 1, 'A12L1.GIF'),
(40, 12, 2, 'A12L2.GIF'),
(41, 12, 3, 'A12L3.GIF'),
(42, 13, 1, 'A13L1.GIF'),
(43, 13, 2, 'A13L2.GIF'),
(44, 13, 3, 'A13L3.GIF'),
(45, 13, 4, 'A13L4.GIF'),
(46, 14, 1, 'A14L1.GIF'),
(47, 14, 2, 'A14L2.GIF'),
(48, 14, 3, 'A14L3.GIF'),
(49, 15, 1, 'A15L1.GIF'),
(50, 15, 2, 'A15L2.GIF'),
(51, 15, 3, 'A15L3.GIF'),
(52, 15, 4, 'A15L4.GIF'),
(53, 16, 1, 'A16L1.GIF'),
(54, 16, 2, 'A16L2.GIF'),
(55, 16, 3, 'A16L3.GIF'),
(56, 17, 1, 'A17L1.GIF'),
(57, 17, 2, 'A17L2.GIF'),
(58, 17, 3, 'A17L3.GIF'),
(59, 18, 1, 'A18L1.GIF'),
(60, 18, 2, 'A18L2.GIF'),
(61, 18, 3, 'A18L3.GIF'),
(62, 18, 4, 'A18L4.GIF'),
(63, 19, 1, 'A19L1.GIF'),
(64, 19, 2, 'A19L2.GIF'),
(65, 19, 3, 'A19L3.GIF'),
(66, 19, 4, 'A19L4.GIF'),
(67, 20, 1, 'A20L1.GIF'),
(68, 20, 2, 'A20L2.GIF'),
(69, 20, 3, 'A20L3.GIF'),
(70, 21, 1, 'A21L1.GIF'),
(71, 21, 2, 'A21L2.GIF'),
(72, 21, 3, 'A21L3.GIF'),
(73, 22, 1, 'A22L1.GIF'),
(74, 22, 2, 'A22L2.GIF'),
(75, 22, 3, 'A22L3.GIF'),
(76, 23, 1, 'A23L1.GIF'),
(77, 23, 2, 'A23L2.GIF'),
(78, 23, 3, 'A23L3.GIF'),
(79, 23, 4, 'A23L4.GIF'),
(80, 24, 1, 'A24L1.GIF'),
(81, 24, 2, 'A24L2.GIF'),
(82, 24, 3, 'A24L3.GIF'),
(83, 24, 4, 'A24L4.GIF'),
(84, 25, 1, 'A25L1.GIF'),
(85, 25, 2, 'A25L2.GIF'),
(86, 25, 3, 'A25L3.GIF'),
(87, 25, 4, 'A25L4.GIF'),
(88, 26, 1, 'A26L1.GIF'),
(89, 26, 2, 'A26L2.GIF'),
(90, 26, 3, 'A26L3.GIF'),
(91, 27, 1, 'A27L1.GIF'),
(92, 27, 2, 'A27L2.GIF'),
(93, 27, 3, 'A27L3.GIF'),
(94, 27, 4, 'A27L4.GIF'),
(95, 28, 1, 'A28L1.GIF'),
(96, 28, 2, 'A28L2.GIF'),
(97, 28, 3, 'A28L3.GIF'),
(98, 29, 1, 'A29L1.GIF'),
(99, 29, 2, 'A29L2.GIF'),
(100, 29, 3, 'A29L3.GIF'),
(101, 29, 4, 'A29L4.GIF'),
(102, 30, 1, 'A30L1.GIF'),
(103, 30, 2, 'A30L2.GIF'),
(104, 30, 3, 'A30L3.GIF'),
(105, 31, 1, 'A31L1.GIF'),
(106, 31, 2, 'A31L2.GIF'),
(107, 31, 3, 'A31L3.GIF'),
(108, 32, 1, 'A32L1.GIF'),
(109, 32, 2, 'A32L2.GIF'),
(110, 32, 3, 'A32L3.GIF'),
(111, 32, 4, 'A32L4.GIF'),
(112, 33, 1, 'A33L1.GIF'),
(113, 33, 2, 'A33L2.GIF'),
(114, 33, 3, 'A33L3.GIF'),
(115, 33, 4, 'A33L4.GIF'),
(116, 34, 1, 'A34L1.GIF'),
(117, 34, 2, 'A34L2.GIF'),
(118, 34, 3, 'A34L3.GIF'),
(119, 35, 1, 'A35L1.GIF'),
(120, 35, 2, 'A35L2.GIF'),
(121, 35, 3, 'A35L3.GIF'),
(122, 36, 1, 'A36L1.GIF'),
(123, 36, 2, 'A36L2.GIF'),
(124, 36, 3, 'A36L3.GIF'),
(125, 37, 1, 'A37L1.GIF'),
(126, 37, 2, 'A37L2.GIF'),
(127, 37, 3, 'A37L3.GIF'),
(128, 37, 4, 'A37L4.GIF'),
(129, 38, 1, 'A38L1.GIF'),
(130, 38, 2, 'A38L2.GIF'),
(131, 38, 3, 'A38L3.GIF'),
(132, 38, 4, 'A38L4.GIF'),
(133, 39, 1, 'A39L1.GIF'),
(134, 39, 2, 'A39L2.GIF'),
(135, 39, 3, 'A39L3.GIF'),
(136, 40, 1, 'A40L1.GIF'),
(137, 40, 2, 'A40L2.GIF'),
(138, 40, 3, 'A40L3.GIF'),
(139, 41, 1, 'A41L1.GIF'),
(140, 41, 2, 'A41L2.GIF'),
(141, 41, 3, 'A41L3.GIF'),
(142, 41, 4, 'A41L4.GIF'),
(143, 42, 1, 'A42L1.GIF'),
(144, 42, 2, 'A42L2.GIF'),
(145, 42, 3, 'A42L3.GIF'),
(146, 43, 1, 'A43L1.GIF'),
(147, 43, 2, 'A43L2.GIF'),
(148, 43, 3, 'A43L3.GIF'),
(149, 43, 4, 'A43L4.GIF'),
(150, 44, 1, 'A44L1.GIF'),
(151, 44, 2, 'A44L2.GIF'),
(152, 44, 3, 'A44L3.GIF'),
(153, 45, 1, 'A45L1.GIF'),
(154, 45, 2, 'A45L2.GIF'),
(155, 45, 3, 'A45L3.GIF'),
(156, 46, 1, 'A46L1.GIF'),
(157, 46, 2, 'A46L2.GIF'),
(158, 46, 3, 'A46L3.GIF'),
(159, 46, 4, 'A46L4.GIF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `badge`
--

CREATE TABLE IF NOT EXISTS `badge` (
  `idBadge` int(11) NOT NULL AUTO_INCREMENT,
  `nameBadge` varchar(40) NOT NULL,
  `descripBadge` varchar(100) NOT NULL,
  `imageBadge` varchar(12) NOT NULL,
  PRIMARY KEY (`idBadge`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `badge`
--

INSERT INTO `badge` (`idBadge`, `nameBadge`, `descripBadge`, `imageBadge`) VALUES
(1, 'PREMI A LA DEDICACIÓ', 'És un premi al jugador que ha fet més de 200 partides en una setmana', 'BADGE01.GIF'),
(2, 'PREMI A LA VARIETAT', 'És un premi al jugador que ha participat en 20 jocs en una setmana', 'BADGE02.GIF'),
(3, 'PREMI A LA CONSTÀNCIA EN UN JOC', 'És un premi al jugador que ha jugat 50 partides del mateix joc en un mateix dia', 'BADGE03.GIF'),
(4, 'PREMI A LA PERSISTÈNCIA', 'És un premi al jugador que ha fet més de 100 partides en un dia', 'BADGE04.GIF'),
(5, 'PREMI A LA GRAN VARIETAT', 'És un premi al jugador que ha participat en 20 jocs en un sol dia', 'BADGE05.GIF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `idCategory` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`idCategory`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`idCategory`, `name`) VALUES
(3, 'Category 1'),
(4, 'Category 2'),
(5, 'Category 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `idComment` int(11) NOT NULL AUTO_INCREMENT,
  `idGame` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idComment`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `game`
--

CREATE TABLE IF NOT EXISTS `game` (
  `idGame` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `grantPublicAccess` tinyint(1) DEFAULT '1',
  `secretGame` varchar(150) DEFAULT NULL,
  `privateKey` text,
  `idDeveloper` int(11) DEFAULT NULL,
  `dateCreation` date DEFAULT NULL,
  `descripGame` varchar(255) DEFAULT NULL,
  `idPlatform` int(11) DEFAULT '0',
  `idSkill` int(11) DEFAULT '0',
  `idCategory` int(11) DEFAULT '0',
  PRIMARY KEY (`idGame`),
  KEY `User` (`idDeveloper`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=94 ;

--
-- Volcado de datos para la tabla `game`
--

INSERT INTO `game` (`idGame`, `name`, `grantPublicAccess`, `secretGame`, `privateKey`, `idDeveloper`, `dateCreation`, `descripGame`, `idPlatform`, `idSkill`, `idCategory`) VALUES
(67, 'Aquest sí que és el primer del Josep', 1, 'GAME.45505f20ce800925b7cfb5fde1137d9f89d4c676', '8272d7a78f51059207794deefa6e6712a409c1af', NULL, NULL, NULL, 3, 4, 3),
(68, 'Primer joc del Joan', 1, 'GAME.d1d0deec2a5a80e6432c028e287943bb77999cdd', 'c4862fd236381fe32db7f1f21c44f6b0bf2d4c8b', NULL, NULL, NULL, 3, 3, 4),
(69, 'Segon joc del Joan', 1, 'GAME.e5223512791180057bf0459abfb02288e95cf9e1', '8e5b48430cc05d234e8b7d192673272f1d37ee92', NULL, NULL, NULL, 0, 3, 3),
(87, 'Segon joc del Josep', 1, 'GAME.3d0ef5678f94c4ec5a15d0d9d8a520e826a7936a', '3935f2801b7e03d280a72ed9b180c70b5f4f36a6', NULL, NULL, NULL, 5, 0, 0),
(88, 'Tercer joc del Josep', 1, 'GAME.6f7e07c2a216ab6ab2d1c5c46d5a451caf287885', 'eb7cc87beb55b40fdde153c9ef49992c2d554ef5', NULL, NULL, NULL, 0, 5, 5),
(89, 'Primer joc del Toni', 1, 'GAME.3166cbcf0b5d58acdb137ec7995482b9ee8e5935', '8250043a4e1ea5b1a30f84410c6cc7714ccd3cb0', NULL, NULL, NULL, 5, 0, 4),
(90, 'Segon joc del Toni', 1, 'GAME.f1bef218ae0388e24e0f06c3dd3381135e08e272', '1319274397ad5e04e86c26b303381aaa09d2c9e9', NULL, NULL, NULL, 0, 0, 5),
(91, 'Tercer joc del Toni', 1, 'GAME.a5997b65a3e4257c14c46bb884cd9d5e96d6d7a8', 'b1486569c77ee6e47c62e0adbbe9b2f1aac082e7', NULL, NULL, NULL, 0, 5, 0),
(92, 'Primer joc de l''Elggu', 1, 'GAME.811ca89e9052aed2197962bd852a81e5d23b0d62', '9a4ee7ffe39bc1fd5a452099572ba7b636739da8', NULL, NULL, NULL, 4, 0, 0),
(93, 'Segon joc de l''Elggu', 1, 'GAME.e81ee677de591c26bd7c16f2ff290f01bae06d85', 'ea1458f347f3ec2c47c96d5fb29b366fad3afa04', NULL, NULL, NULL, 4, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gameaccess`
--

CREATE TABLE IF NOT EXISTS `gameaccess` (
  `idGroup` int(11) NOT NULL,
  `idGame` int(11) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'allow',
  `recursive` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idGroup`,`idGame`),
  KEY `GameAccess_Group` (`idGroup`),
  KEY `GameAccess_Game` (`idGame`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gameinstance`
--

CREATE TABLE IF NOT EXISTS `gameinstance` (
  `idGameInstance` int(11) NOT NULL AUTO_INCREMENT,
  `idGame` int(11) NOT NULL,
  `state` longtext,
  PRIMARY KEY (`idGameInstance`),
  KEY `GameInstance_Game` (`idGame`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gamelike`
--

CREATE TABLE IF NOT EXISTS `gamelike` (
  `likeId` int(11) NOT NULL AUTO_INCREMENT,
  `gameId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `containerId` int(11) NOT NULL,
  PRIMARY KEY (`likeId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gamescore`
--

CREATE TABLE IF NOT EXISTS `gamescore` (
  `idScore` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `idGame` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  PRIMARY KEY (`idScore`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `gamesimilitudeview`
--
CREATE TABLE IF NOT EXISTS `gamesimilitudeview` (
`idGame` int(11)
,`similarToIdGame` int(11)
,`similitude` varchar(255)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `gameview`
--
CREATE TABLE IF NOT EXISTS `gameview` (
`idGame` int(11)
,`name` varchar(255)
,`grantPublicAccess` tinyint(1)
,`secretGame` varchar(150)
,`privateKey` text
,`idCategory` int(11)
,`dateCreation` date
,`timesCommented` bigint(21)
,`popularity` bigint(21)
,`timesPlayed` bigint(21)
,`activity` bigint(21)
);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `idGroup` int(11) NOT NULL,
  `description` longtext,
  `idGroupParent` int(11) DEFAULT NULL,
  PRIMARY KEY (`idGroup`),
  KEY `GROUP_GROUP` (`idGroupParent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfomance`
--

CREATE TABLE IF NOT EXISTS `perfomance` (
  `idUser` int(11) NOT NULL,
  `idGame` int(11) NOT NULL,
  `maxPoints` int(11) NOT NULL,
  `dateAchiev` date NOT NULL,
  PRIMARY KEY (`idUser`,`idGame`),
  KEY `User` (`idUser`),
  KEY `Game` (`idGame`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platform`
--

CREATE TABLE IF NOT EXISTS `platform` (
  `idPlatform` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`idPlatform`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `platform`
--

INSERT INTO `platform` (`idPlatform`, `name`) VALUES
(3, 'Platform 1'),
(4, 'Platform 2'),
(5, 'Platform 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proficiency`
--

CREATE TABLE IF NOT EXISTS `proficiency` (
  `idProficiency` int(11) NOT NULL AUTO_INCREMENT,
  `nameProficiency` varchar(20) NOT NULL,
  PRIMARY KEY (`idProficiency`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `proficiency`
--

INSERT INTO `proficiency` (`idProficiency`, `nameProficiency`) VALUES
(1, 'Mathematics'),
(2, 'Biology'),
(3, 'Physics'),
(4, 'Geology'),
(5, 'Catalan lang.'),
(6, 'Spanish lang.'),
(7, 'English lang.'),
(8, 'French lang.'),
(9, 'German lang.'),
(10, 'European lang.'),
(11, 'Other lang.'),
(12, 'Laws'),
(13, 'Economics'),
(14, 'Literature'),
(15, 'Social sciences'),
(16, 'Prehistory'),
(17, 'Ancient hist.'),
(18, 'Postclassical hist.'),
(19, 'Modern hist.'),
(20, 'Contemporany hist.'),
(21, 'Spatial vision'),
(22, 'Reflexes'),
(23, 'Memory');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `realm`
--

CREATE TABLE IF NOT EXISTS `realm` (
  `idRealm` int(11) NOT NULL AUTO_INCREMENT,
  `alias` char(15) NOT NULL,
  PRIMARY KEY (`idRealm`),
  UNIQUE KEY `alias_UNIQUE` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `realm`
--

INSERT INTO `realm` (`idRealm`, `alias`) VALUES
(1, 'ELGG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `idSession` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `startTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `campusSession` varchar(250) NOT NULL,
  PRIMARY KEY (`idSession`),
  KEY `Session_User` (`idUser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `session`
--

INSERT INTO `session` (`idSession`, `idUser`, `startTime`, `campusSession`) VALUES
(1, 1, '2013-11-10 11:54:01', 'a08c0690979523710d969cb84c1e0ed9fc78e25b'),
(2, 2, '2013-11-11 15:00:42', '06e677a2161dac3f0c169d3b1e1828f63909f94f'),
(3, 3, '2013-11-12 20:58:50', '5abbfd95970b07eb150de0acd1848a2b7337e299'),
(4, 4, '2013-11-28 16:57:26', '7e44a895714748ccac66a941e51ab0188f04668e'),
(5, 5, '2014-05-05 18:21:51', '5b133dd9a39630e1387c92d9d9f080bb12011bf0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill`
--

CREATE TABLE IF NOT EXISTS `skill` (
  `idSkill` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`idSkill`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `skill`
--

INSERT INTO `skill` (`idSkill`, `name`) VALUES
(3, 'Skill 1'),
(4, 'Skill 2'),
(5, 'Skill 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `idTag` int(11) NOT NULL AUTO_INCREMENT,
  `idGame` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  PRIMARY KEY (`idTag`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `totalgamesimilitudeview`
--
CREATE TABLE IF NOT EXISTS `totalgamesimilitudeview` (
`idGame` int(11)
,`similarToIdGame` int(11)
,`totalSimilitude` bigint(21)
);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `secret` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`idUser`, `login`, `password`, `secret`) VALUES
(1, 'elggu', '', 'USER.e1076baedbc2a7370076af7e8d097addf3baca04'),
(2, 'joan', '', 'USER.ef6b59282533016cfd60e1377b1cd8f3925c390d'),
(3, 'josep', '', 'USER.3f7e19793565e507cec05d863aa43baf540218bb'),
(4, 'toni', '', 'USER.2358fa8d4f214fcb53eceda9dac5be81cf9a2e99'),
(5, 'admin', '', 'USER.d354305d01659da6c74e9bb0d90870cb8c2ee028');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userability`
--

CREATE TABLE IF NOT EXISTS `userability` (
  `idUserAbility` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `idAbility` int(11) NOT NULL,
  `levelAbility` tinyint(4) NOT NULL,
  PRIMARY KEY (`idUserAbility`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `userability`
--

INSERT INTO `userability` (`idUserAbility`, `idUser`, `idAbility`, `levelAbility`) VALUES
(1, 1, 1, 4),
(2, 1, 2, 3),
(3, 1, 3, 3),
(4, 1, 4, 2),
(5, 1, 5, 3),
(6, 2, 1, 3),
(7, 2, 2, 3),
(8, 2, 5, 4),
(9, 3, 1, 4),
(10, 3, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `useraward`
--

CREATE TABLE IF NOT EXISTS `useraward` (
  `idUser` int(11) NOT NULL,
  `idAward` int(11) NOT NULL,
  `levelAward` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idUser`,`idAward`),
  KEY `User` (`idUser`),
  KEY `Award` (`idAward`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `useraward`
--

INSERT INTO `useraward` (`idUser`, `idAward`, `levelAward`) VALUES
(1, 2, 2),
(1, 5, 3),
(1, 16, 3),
(1, 20, 3),
(1, 21, 3),
(1, 23, 4),
(1, 26, 3),
(1, 35, 2),
(2, 9, 4),
(2, 22, 3),
(2, 26, 3),
(2, 30, 3),
(2, 44, 3),
(3, 12, 3),
(3, 14, 3),
(3, 22, 3),
(3, 46, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userbadge`
--

CREATE TABLE IF NOT EXISTS `userbadge` (
  `idUserBadge` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `idBadge` int(11) NOT NULL,
  `dateAchiev` date NOT NULL,
  PRIMARY KEY (`idUserBadge`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `userbadge`
--

INSERT INTO `userbadge` (`idUserBadge`, `idUser`, `idBadge`, `dateAchiev`) VALUES
(1, 1, 1, '2013-09-08'),
(2, 1, 2, '2013-09-10'),
(3, 1, 3, '2013-07-20'),
(4, 1, 4, '2013-08-28'),
(5, 1, 5, '2013-08-28'),
(6, 2, 1, '2013-07-01'),
(7, 2, 2, '2013-07-15'),
(8, 2, 3, '2013-08-25'),
(9, 3, 1, '2013-07-20'),
(10, 3, 3, '2013-07-24'),
(11, 3, 4, '2013-08-14'),
(12, 3, 5, '2013-08-28'),
(13, 4, 5, '2013-07-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usergameinstance`
--

CREATE TABLE IF NOT EXISTS `usergameinstance` (
  `idUser` int(11) NOT NULL,
  `idGameInstance` int(11) NOT NULL,
  PRIMARY KEY (`idUser`,`idGameInstance`),
  KEY `UserGameInstance_User` (`idUser`),
  KEY `UserGameInstance_GameInstance` (`idGameInstance`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usergroup`
--

CREATE TABLE IF NOT EXISTS `usergroup` (
  `idUser` int(11) NOT NULL,
  `idGroup` int(11) NOT NULL,
  PRIMARY KEY (`idUser`,`idGroup`),
  KEY `UserGroup_User` (`idUser`),
  KEY `UserGroup_Group` (`idGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userrealm`
--

CREATE TABLE IF NOT EXISTS `userrealm` (
  `idUser` int(11) NOT NULL,
  `idRealm` int(11) NOT NULL,
  PRIMARY KEY (`idUser`,`idRealm`),
  KEY `UserRealm_User` (`idUser`),
  KEY `UserRealm_Realm` (`idRealm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userrealm`
--

INSERT INTO `userrealm` (`idUser`, `idRealm`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Estructura para la vista `gamesimilitudeview`
--
DROP TABLE IF EXISTS `gamesimilitudeview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gamesimilitudeview` AS select `tag1`.`idGame` AS `idGame`,`tag2`.`idGame` AS `similarToIdGame`,`tag1`.`tag` AS `similitude` from (`tag` `tag1` join `tag` `tag2` on(((`tag1`.`tag` = `tag2`.`tag`) and (`tag1`.`idGame` <> `tag2`.`idGame`)))) union select `game1`.`idGame` AS `idGame`,`game2`.`idGame` AS `similarToIdGame`,`category`.`name` AS `similitude` from ((`game` `game1` join `game` `game2` on(((`game1`.`idCategory` = `game2`.`idCategory`) and (`game1`.`idGame` <> `game2`.`idGame`)))) join `category` on((`game1`.`idCategory` = `category`.`idCategory`))) order by `idGame`,`similarToIdGame`;

-- --------------------------------------------------------

--
-- Estructura para la vista `gameview`
--
DROP TABLE IF EXISTS `gameview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gameview` AS select `game`.`idGame` AS `idGame`,`game`.`name` AS `name`,`game`.`grantPublicAccess` AS `grantPublicAccess`,`game`.`secretGame` AS `secretGame`,`game`.`privateKey` AS `privateKey`,`game`.`idCategory` AS `idCategory`,`game`.`dateCreation` AS `dateCreation`,(select count(`comment`.`idComment`) from `comment` where (`comment`.`idGame` = `game`.`idGame`)) AS `timesCommented`,(select count(`gamelike`.`likeId`) from `gamelike` where (`gamelike`.`gameId` = `game`.`idGame`)) AS `popularity`,(select count(`gamescore`.`idScore`) from `gamescore` where (`gamescore`.`idGame` = `game`.`idGame`)) AS `timesPlayed`,(select count(`gameinstance`.`idGameInstance`) from `gameinstance` where ((`gameinstance`.`idGame` = `game`.`idGame`) and (`gameinstance`.`state` = 'INIT'))) AS `activity` from `game`;

-- --------------------------------------------------------

--
-- Estructura para la vista `totalgamesimilitudeview`
--
DROP TABLE IF EXISTS `totalgamesimilitudeview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `totalgamesimilitudeview` AS select `gamesimilitudeview`.`idGame` AS `idGame`,`gamesimilitudeview`.`similarToIdGame` AS `similarToIdGame`,count(0) AS `totalSimilitude` from `gamesimilitudeview` group by `gamesimilitudeview`.`idGame`,`gamesimilitudeview`.`similarToIdGame`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

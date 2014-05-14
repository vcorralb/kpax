-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-05-2014 a las 16:36:41
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `urlImage` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idGame`),
  KEY `User` (`idDeveloper`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=94 ;

--
-- Volcado de datos para la tabla `game`
--

INSERT INTO `game` (`idGame`, `name`, `grantPublicAccess`, `secretGame`, `privateKey`, `idDeveloper`, `dateCreation`, `descripGame`, `idPlatform`, `idSkill`, `idCategory`, `urlImage`) VALUES
(67, 'Aquest sí que és el primer del Josep', 1, 'GAME.45505f20ce800925b7cfb5fde1137d9f89d4c676', '8272d7a78f51059207794deefa6e6712a409c1af', NULL, NULL, 'descrip primer joc Josep', 3, 4, 3, 'http://localhost/prova'),
(68, 'Primer joc del Joan', 1, 'GAME.d1d0deec2a5a80e6432c028e287943bb77999cdd', 'c4862fd236381fe32db7f1f21c44f6b0bf2d4c8b', NULL, NULL, NULL, 3, 3, 4, 'http://localhost/prova2'),
(69, 'Segon joc del Joan', 1, 'GAME.e5223512791180057bf0459abfb02288e95cf9e1', '8e5b48430cc05d234e8b7d192673272f1d37ee92', NULL, NULL, NULL, 0, 3, 3, NULL),
(87, 'Segon joc del Josep', 1, 'GAME.3d0ef5678f94c4ec5a15d0d9d8a520e826a7936a', '3935f2801b7e03d280a72ed9b180c70b5f4f36a6', NULL, NULL, NULL, 5, 0, 0, NULL),
(88, 'Tercer joc del Josep', 1, 'GAME.6f7e07c2a216ab6ab2d1c5c46d5a451caf287885', 'eb7cc87beb55b40fdde153c9ef49992c2d554ef5', NULL, NULL, NULL, 0, 5, 5, NULL),
(89, 'Primer joc del Toni', 1, 'GAME.3166cbcf0b5d58acdb137ec7995482b9ee8e5935', '8250043a4e1ea5b1a30f84410c6cc7714ccd3cb0', NULL, NULL, NULL, 5, 0, 4, NULL),
(90, 'Segon joc del Toni', 1, 'GAME.f1bef218ae0388e24e0f06c3dd3381135e08e272', '1319274397ad5e04e86c26b303381aaa09d2c9e9', NULL, NULL, 'Segon joc toni descrip', 0, 0, 5, NULL),
(91, 'Tercer joc del Toni', 1, 'GAME.a5997b65a3e4257c14c46bb884cd9d5e96d6d7a8', 'b1486569c77ee6e47c62e0adbbe9b2f1aac082e7', NULL, NULL, NULL, 0, 5, 0, NULL),
(92, 'Primer joc de l''Elggu', 1, 'GAME.811ca89e9052aed2197962bd852a81e5d23b0d62', '9a4ee7ffe39bc1fd5a452099572ba7b636739da8', NULL, NULL, NULL, 4, 0, 0, NULL),
(93, 'Segon joc de l''Elggu', 1, 'GAME.e81ee677de591c26bd7c16f2ff290f01bae06d85', 'ea1458f347f3ec2c47c96d5fb29b366fad3afa04', NULL, NULL, NULL, 4, 4, 0, NULL);

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
,`idSkill` int(11)
,`idPlatform` int(11)
,`descripGame` varchar(255)
,`urlImage` varchar(500)
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
-- Estructura de tabla para la tabla `metadata`
--

CREATE TABLE IF NOT EXISTS `metadata` (
  `idMetadata` int(11) NOT NULL AUTO_INCREMENT,
  `idGame` int(11) NOT NULL,
  `keyMeta` varchar(255) NOT NULL,
  `valueMeta` varchar(255) NOT NULL,
  PRIMARY KEY (`idMetadata`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `metadata`
--

INSERT INTO `metadata` (`idMetadata`, `idGame`, `keyMeta`, `valueMeta`) VALUES
(1, 67, 'key1', 'value1'),
(2, 67, 'key2', 'value2'),
(3, 67, 'key1', 'value2'),
(4, 67, 'key2', 'value3'),
(5, 68, 'key2', 'value3'),
(6, 68, 'key2', 'value4');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `session`
--

INSERT INTO `session` (`idSession`, `idUser`, `startTime`, `campusSession`) VALUES
(6, 5, '2014-05-06 16:31:43', '2bba328408534caa18a1cc5738fabdd79b1437fe'),
(7, 6, '2014-05-06 16:32:10', '35475d2a793d3d64b4f7524f67ae0c8e35ab6c11');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `tag`
--

INSERT INTO `tag` (`idTag`, `idGame`, `tag`) VALUES
(1, 67, 'tàg1'),
(2, 68, 'tàg1'),
(3, 67, 'tag2'),
(4, 68, 'tag2'),
(5, 67, 'tag4'),
(6, 69, 'tag4'),
(7, 67, 'tag5'),
(8, 69, 'tag4');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`idUser`, `login`, `password`, `secret`) VALUES
(6, 'admin', '', 'USER.bf74f70f60e7894ec18de5388026bed5b1fa5e09');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
(6, 1);

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gameview` AS select `game`.`idGame` AS `idGame`,`game`.`name` AS `name`,`game`.`grantPublicAccess` AS `grantPublicAccess`,`game`.`secretGame` AS `secretGame`,`game`.`privateKey` AS `privateKey`,`game`.`idCategory` AS `idCategory`,`game`.`dateCreation` AS `dateCreation`,`game`.`idSkill` AS `idSkill`,`game`.`idPlatform` AS `idPlatform`,`game`.`descripGame` AS `descripGame`,`game`.`urlImage` AS `urlImage`,(select count(`comment`.`idComment`) from `comment` where (`comment`.`idGame` = `game`.`idGame`)) AS `timesCommented`,(select count(`gamelike`.`likeId`) from `gamelike` where (`gamelike`.`gameId` = `game`.`idGame`)) AS `popularity`,(select count(`gamescore`.`idScore`) from `gamescore` where (`gamescore`.`idGame` = `game`.`idGame`)) AS `timesPlayed`,(select count(`gameinstance`.`idGameInstance`) from `gameinstance` where ((`gameinstance`.`idGame` = `game`.`idGame`) and (`gameinstance`.`state` = 'INIT'))) AS `activity` from `game`;

-- --------------------------------------------------------

--
-- Estructura para la vista `totalgamesimilitudeview`
--
DROP TABLE IF EXISTS `totalgamesimilitudeview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `totalgamesimilitudeview` AS select `gamesimilitudeview`.`idGame` AS `idGame`,`gamesimilitudeview`.`similarToIdGame` AS `similarToIdGame`,count(0) AS `totalSimilitude` from `gamesimilitudeview` group by `gamesimilitudeview`.`idGame`,`gamesimilitudeview`.`similarToIdGame`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

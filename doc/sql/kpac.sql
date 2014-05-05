-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-05-2014 a las 17:06:05
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
(5, 'Category 3'),
(1, 'mathematics'),
(2, 'physics');

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
  `idCategory` int(11) DEFAULT '0',
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idPlatform` int(11) DEFAULT '0',
  `minimumAge` int(11) DEFAULT '0',
  `idSkill` int(11) DEFAULT '0',
  PRIMARY KEY (`idGame`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Volcado de datos para la tabla `game`
--

INSERT INTO `game` (`idGame`, `name`, `grantPublicAccess`, `secretGame`, `privateKey`, `idCategory`, `creationDate`, `idPlatform`, `minimumAge`, `idSkill`) VALUES
(46, 'Game name', 1, 'GAME.eb364b5dd15625467ad8f1ebe7ff0dc5973c9936', 'bdbd85352d747d2d1a875d229b951254e53ae911', 1, '2014-04-30 16:49:59', 0, 0, 0),
(47, 'Prova2', 1, 'GAME.2e30722588d61d061e0a33cc98c90b64472d3bcf', '9a9198172a074a08d790bfaf5038df3d2e1f1c46', 1, '2014-05-05 13:55:09', 0, 0, 0),
(48, 'Prova5', 1, 'GAME.b7e3a14af9e62bd97dd8b782b433a933a91b7ecf', '929deb0e7a8098b499dacdbe09ff52af84f3d030', 1, '2014-05-05 13:55:38', 0, 0, 0),
(49, 'Prova103', 1, 'GAME.7073d6af6447b2fd6a3d20e8768e3fd2b08b280e', 'd94caba4d0908b795193e7986b058e92c4d62aef', 1, '2014-05-05 13:55:54', 0, 0, 0),
(50, 'Prova131', 1, 'GAME.022e65c88696588c365ead117038c56cf621f7c0', 'd962676244fd7ccae7592bb35b6cee18d2133c3c', 1, '2014-05-05 13:56:06', 0, 0, 0),
(51, 'Prova5223', 1, 'GAME.9560a570e96d61f509cd0f6956fbfeb76a9ff6e6', 'ebc4dbdeef2b9a71e77366079f232ffa2442a1d0', 1, '2014-05-05 13:56:27', 0, 0, 0),
(60, 'Mario Kart', 1, 'GAME.14d7d29d7e316c985ec7a7584a636ecc2973e90b', '495dcbc8573166d6691637aeb38da920530f1ae7', 1, '2013-04-04 15:01:07', 0, 0, 0),
(67, 'Prova3', 1, 'GAME.6675889bfde05cf2b78927c93c08bc1dc1755d5f', '02cb697c67aa6934808d5a90ee1d56f8415c9654', 2, '2013-04-04 15:42:30', 0, 0, 0),
(87, 'test', 1, 'GAME.4c56af47863823b4490a706d558764beb5e7c801', 'a66a3bb2c25325a76d2ee4869ae49a20064383b1', 0, '2013-04-10 07:56:39', 0, 0, 0),
(88, 'Castlevania II', 1, 'GAME.0a3139b55e8b3ee8fc38358735fc4bc750fadd8b', 'f014fb52c092fa8c91bbd0b250af67f6811f0b36', 2, '2013-04-11 11:50:01', 0, 0, 0),
(89, 'Tetris', 1, 'GAME.ccd00db9d102afb821f894bdfa4e54d15a7ef403', '8ae2201dd7e784d4a3b1ce1aa2fd8a397e80c923', 1, '2013-04-11 14:05:34', 0, 0, 0),
(90, 'Link to the past', 1, 'GAME.ada27d2f201f263d613cfe7809310d19bb691711', 'b1b6c0d379a1cfd349a7d8de3f0eb8a5613faaea', 2, '2013-04-12 08:35:38', 0, 0, 0);

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
,`creationDate` timestamp
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `session`
--

INSERT INTO `session` (`idSession`, `idUser`, `startTime`, `campusSession`) VALUES
(1, 1, '2013-04-04 14:45:34', '7fc2fc4c330b69e3a579a10c279a2d3a14973054'),
(2, 2, '2013-04-04 15:33:05', 'b002da990eb7a058d2e9e18b86ea43fbbb367964');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tag`
--

INSERT INTO `tag` (`idTag`, `idGame`, `tag`) VALUES
(1, 88, 'minning'),
(2, 88, 'funny'),
(3, 88, 'fast'),
(4, 89, 'mathematics'),
(5, 90, 'bla'),
(6, 90, 'mathematics'),
(7, 90, 'terror');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`idUser`, `login`, `password`, `secret`) VALUES
(1, 'elggadmin', '', 'USER.efca5868c7fb361c21d2a528f835d9e59cc35464'),
(2, 'admin', '', 'USER.11a503eac0063cd7ed1fd2aed1f41fbd273d4024');

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
(2, 1);

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gameview` AS select `game`.`idGame` AS `idGame`,`game`.`name` AS `name`,`game`.`grantPublicAccess` AS `grantPublicAccess`,`game`.`secretGame` AS `secretGame`,`game`.`privateKey` AS `privateKey`,`game`.`idCategory` AS `idCategory`,`game`.`creationDate` AS `creationDate`,(select count(`comment`.`idComment`) from `comment` where (`comment`.`idGame` = `game`.`idGame`)) AS `timesCommented`,(select count(`gamelike`.`likeId`) from `gamelike` where (`gamelike`.`gameId` = `game`.`idGame`)) AS `popularity`,(select count(`gamescore`.`idScore`) from `gamescore` where (`gamescore`.`idGame` = `game`.`idGame`)) AS `timesPlayed`,(select count(`gameinstance`.`idGameInstance`) from `gameinstance` where ((`gameinstance`.`idGame` = `game`.`idGame`) and (`gameinstance`.`state` = 'INIT'))) AS `activity` from `game`;

-- --------------------------------------------------------

--
-- Estructura para la vista `totalgamesimilitudeview`
--
DROP TABLE IF EXISTS `totalgamesimilitudeview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `totalgamesimilitudeview` AS select `gamesimilitudeview`.`idGame` AS `idGame`,`gamesimilitudeview`.`similarToIdGame` AS `similarToIdGame`,count(0) AS `totalSimilitude` from `gamesimilitudeview` group by `gamesimilitudeview`.`idGame`,`gamesimilitudeview`.`similarToIdGame`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

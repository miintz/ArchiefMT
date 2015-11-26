-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 26 nov 2015 om 15:56
-- Serverversie: 5.6.24
-- PHP-versie: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mtarchive`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `people` int(11) NOT NULL,
  `crdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tstamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='table for course information';

--
-- Gegevens worden geëxporteerd voor tabel `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `people`, `crdate`, `tstamp`) VALUES
(0, 'New Media New Technology', 'Description about the course', 0, '2015-11-26 00:00:00', '2015-11-26 00:00:00'),
(1, 'Human Computer Interaction', 'Description about hci', 1, '2015-11-26 00:00:00', '2015-11-26 00:00:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL,
  `oid` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `crdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `tstamp` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table for projectmedia';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `tstamp` datetime DEFAULT NULL,
  `crdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='table for some info about people';

--
-- Gegevens worden geëxporteerd voor tabel `people`
--

INSERT INTO `people` (`id`, `title`, `description`, `tstamp`, `crdate`) VALUES
(0, 'Peter vd Putten', 'Lecturer for NMNT', '2015-11-26 00:00:00', '2015-11-26 00:00:00'),
(1, 'Fons Verbeek', 'Lecturer for HCI', '2015-11-26 00:00:00', '2015-11-26 00:00:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `uid` int(10) unsigned NOT NULL,
  `tstamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `crdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `media` varchar(45) DEFAULT NULL,
  `people` varchar(45) DEFAULT NULL,
  `course` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='Table for project entries, contains links to courses, media and people(?)';

--
-- Gegevens worden geëxporteerd voor tabel `projects`
--

INSERT INTO `projects` (`uid`, `tstamp`, `crdate`, `title`, `description`, `media`, `people`, `course`) VALUES
(1, '2015-11-26 00:00:00', '2015-11-26 00:00:00', 'Nostalgia Machine', 'A machine for nostalgic feelings', '', '0', 1),
(2, '2015-11-26 00:00:00', '2015-11-26 00:00:00', 'Touch Table for traffic', 'Traffic system', '', '0', 1),
(3, '2015-11-26 00:00:00', '2015-11-26 00:00:00', 'Tender', 'Analog for dating sites', '', '0', 1),
(4, '2015-11-26 00:00:00', '2015-11-26 00:00:00', 'Project', 'Analog for dating sites', '', '0', 1);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `id_UNIQUE` (`uid`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

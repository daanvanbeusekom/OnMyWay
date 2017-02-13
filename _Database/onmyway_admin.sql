-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 13 feb 2017 om 20:07
-- Serverversie: 10.1.16-MariaDB
-- PHP-versie: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onmyway_admin`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_name` varchar(127) NOT NULL,
  `cat_icon_class` varchar(127) NOT NULL,
  `cat_timeline_class` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_icon_class`, `cat_timeline_class`) VALUES
(1, 'Feestje', 'ion ion-beer text-green', 'ion ion-beer bg-gray'),
(2, 'Account', 'fa fa-gears text-grey', 'fa fa-gears bg-gray'),
(3, 'Nieuwe Gebruiker', 'fa fa-child text-aqua', 'fa fa-child bg-gray');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories_admin`
--

CREATE TABLE `categories_admin` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `categories_admin`
--

INSERT INTO `categories_admin` (`category_id`, `category_name`) VALUES
(1, 'Home'),
(2, 'Chat'),
(3, 'Bijdragen'),
(4, 'Verbetering'),
(5, 'Hulp'),
(6, 'Over');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `chat_admin`
--

CREATE TABLE `chat_admin` (
  `chat_id` int(11) NOT NULL,
  `category_id` int(1) NOT NULL,
  `chat_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chat_content` text COLLATE utf8_unicode_ci NOT NULL,
  `post_by` int(11) NOT NULL,
  `chat_date` date NOT NULL,
  `chat_visible` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `chat_admin`
--

INSERT INTO `chat_admin` (`chat_id`, `category_id`, `chat_title`, `chat_content`, `post_by`, `chat_date`, `chat_visible`) VALUES
(18, 0, 'Test', '', 1, '2017-02-13', 1),
(16, 0, 'Test', '', 1, '2017-02-13', 1),
(17, 0, 'test', '', 1, '2017-02-13', 1),
(14, 2, 'Heey', 'heey', 1, '2017-02-09', 1),
(15, 1, 'heey', '', 1, '2017-02-13', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `notifications`
--

CREATE TABLE `notifications` (
  `noti_id` int(11) NOT NULL,
  `noti_user` int(3) NOT NULL,
  `noti_cat` int(11) NOT NULL,
  `noti_title` varchar(255) NOT NULL,
  `noti_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `notifications`
--

INSERT INTO `notifications` (`noti_id`, `noti_user`, `noti_cat`, `noti_title`, `noti_link`) VALUES
(24, 1, 2, 'Profiel foto gewijzigd', 'profile.php'),
(25, 5, 2, 'Profiel foto gewijzigd', 'profile.php'),
(26, 5, 2, 'Omslag foto gewijzigd', 'profile.php'),
(27, 5, 2, 'Omslag foto gewijzigd', 'profile.php'),
(28, 5, 2, 'Omslag foto gewijzigd', 'profile.php'),
(29, 5, 2, 'Omslag foto gewijzigd', 'profile.php'),
(30, 6, 2, 'Omslag foto gewijzigd', 'profile.php'),
(31, 6, 2, 'Profiel foto gewijzigd', 'profile.php');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `recent`
--

CREATE TABLE `recent` (
  `recent_id` int(11) NOT NULL,
  `recent_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `recent`
--

INSERT INTO `recent` (`recent_id`, `recent_name`) VALUES
(6, 'Admin account aangemaakt'),
(5, 'Aantal pagina geconfigureerd'),
(4, 'Tijd geconfigureerd'),
(3, 'Database aangemaakt'),
(2, 'Website online'),
(1, 'Website geconfigureerd'),
(10, 'Berichten geconfigureerd'),
(13, 'Nieuwe gebruiker'),
(14, 'Nieuwe Gebruiker'),
(15, 'Nieuwe gebruiker'),
(16, 'Gebruiker verwijderd'),
(17, 'Nieuwe gebruiker'),
(18, 'Gebruiker verwijderd'),
(19, 'Gebruiker verwijderd');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `timeline_items_admin`
--

CREATE TABLE `timeline_items_admin` (
  `item_id` int(3) NOT NULL,
  `item_title` text NOT NULL,
  `item_cat` int(3) NOT NULL,
  `item_date` date NOT NULL,
  `item_user` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='All items used on timelines';

--
-- Gegevens worden geëxporteerd voor tabel `timeline_items_admin`
--

INSERT INTO `timeline_items_admin` (`item_id`, `item_title`, `item_cat`, `item_date`, `item_user`) VALUES
(1, '<a href="profile.php?user=Admin">Admin</a> is lid geworden', 3, '2016-09-11', 5);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexen voor tabel `categories_admin`
--
ALTER TABLE `categories_admin`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexen voor tabel `chat_admin`
--
ALTER TABLE `chat_admin`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexen voor tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`noti_id`),
  ADD UNIQUE KEY `noti_id` (`noti_id`);

--
-- Indexen voor tabel `recent`
--
ALTER TABLE `recent`
  ADD PRIMARY KEY (`recent_id`);

--
-- Indexen voor tabel `timeline_items_admin`
--
ALTER TABLE `timeline_items_admin`
  ADD PRIMARY KEY (`item_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categories_admin`
--
ALTER TABLE `categories_admin`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT voor een tabel `chat_admin`
--
ALTER TABLE `chat_admin`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT voor een tabel `notifications`
--
ALTER TABLE `notifications`
  MODIFY `noti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT voor een tabel `recent`
--
ALTER TABLE `recent`
  MODIFY `recent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT voor een tabel `timeline_items_admin`
--
ALTER TABLE `timeline_items_admin`
  MODIFY `item_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

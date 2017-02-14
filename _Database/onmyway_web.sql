-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 14 feb 2017 om 17:03
-- Serverversie: 10.1.16-MariaDB
-- PHP-versie: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onmyway_web`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Home'),
(2, 'Ons Idee'),
(3, 'Technologie'),
(4, 'Nieuws'),
(5, 'Contact');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `category_id` int(1) NOT NULL,
  `news_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8_unicode_ci NOT NULL,
  `news_by` int(11) NOT NULL,
  `news_date` date NOT NULL,
  `news_visible` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `news`
--

INSERT INTO `news` (`news_id`, `category_id`, `news_title`, `news_content`, `news_by`, `news_date`, `news_visible`) VALUES
(12, 4, 'Test', '<p>Curabitur at ligula id est sagittis aliquam. Duis eu nisl nec augue imperdiet mollis sed sed magna. Quisque vestibulum semper nibh ac facilisis. Curabitur congue vestibulum libero, eu pharetra nulla auctor nec. Proin aliquam ipsum id rutrum vehicula. Proin ut efficitur odio. In turpis sapien, consequat et tellus eu, laoreet dignissim risus. Aliquam semper sagittis mauris et euismod. Phasellus eget sodales purus, vel ornare odio. Donec finibus feugiat blandit. Praesent faucibus enim porta nisl iaculis, in auctor est pretium, test 4</p>', 1, '2017-02-14', 1),
(14, 4, 'Welkom', '<p>Curabitur at ligula id est sagittis aliquam. Duis eu nisl nec augue imperdiet mollis sed sed magna. Quisque vestibulum semper nibh ac facilisis. Curabitur congue vestibulum libero, eu pharetra nulla auctor nec. Proin aliquam ipsum id rutrum vehicula. Proin ut efficitur odio. In turpis sapien, consequat et tellus eu, laoreet dignissim risus. Aliquam semper sagittis mauris et euismod. Phasellus eget sodales purus, vel ornare odio. Donec finibus feugiat blandit. Praesent faucibus enim porta nisl iaculis, in auctor est pretium, test heey</p>', 1, '2017-02-14', 1),
(17, 1, 'Test', '<p>test</p>', 2, '2017-02-14', 1),
(19, 1, 'Hoi', '<p>&nbsp;<img src="https://www.planwallpaper.com/static/images/general-night-golden-gate-bridge-hd-wallpapers-golden-gate-bridge-wallpaper.jpg" alt="Afbeeldingsresultaat voor wallpaper" width="657" height="380" />&nbsp; &nbsp;</p>\r\n<p>Een mooie afbeelding</p>', 24, '2017-02-14', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `txt`
--

CREATE TABLE `txt` (
  `txt_id` int(11) NOT NULL,
  `category_id` int(1) NOT NULL,
  `txt_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `txt_content` text COLLATE utf8_unicode_ci NOT NULL,
  `post_by` int(11) NOT NULL,
  `txt_date` date NOT NULL,
  `txt_visible` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `txt`
--

INSERT INTO `txt` (`txt_id`, `category_id`, `txt_title`, `txt_content`, `post_by`, `txt_date`, `txt_visible`) VALUES
(1, 1, 'Home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam euismod congue erat, vitae porta ligula elementum vel. Sed tempor lacus id tempus varius. Vestibulum gravida pretium dictum. Aliquam dapibus massa sit amet felis pharetra lacinia. Integer rhoncus sem a est gravida tempus. Pellentesque dapibus mauris sit amet bibendum maximus. Morbi non libero massa. Ut luctus vehicula nibh, ac lacinia sapien vehicula viverra. Cras nec neque magna. Donec non odio nunc. Suspendisse eros tellus, bibendum quis tempor in, feugiat sed metus. Duis consectetur non lorem tincidunt rutrum. Etiam vitae posuere mauris. Curabitur erat diam, ullamcorper at vestibulum in, tempor quis lorem. Integer nec lectus justo. Fusce placerat magna at nisi fermentum molestie. Ut nunc enim, tristique et volutpat vel, auctor sit amet arcu. Vivamus rutrum tempus diam sed commodo. Maecenas sed justo non diam pharetra dignissim vel a enim. Curabitur finibus ante at sapien tincidunt, nec efficitur eros luctus. Cras sagittis pellentesque turpis, at cursus justo scelerisque vel. Mauris laoreet lacus ac interdum blandit. Aenean in massa semper, fringilla elit tempor, mattis urna. Mauris hendrerit pretium neque, at placerat metus facilisis sed. Nulla ornare eu sapien eu dignissim. Morbi maximus ut mi id varius. Vestibulum nec pellentesque mi, sit amet maximus nisl. Suspendisse ante purus, ornare et nisl ut, luctus cursus turpis. Pellentesque non facilisis metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec sagittis elit dui, consectetur egestas odio ullamcorper at. Curabitur blandit, libero eu eleifend congue, neque quam posuere erat, eget bibendum arcu est vitae arcu. Aliquam tincidunt justo eu sapien finibus faucibus. Aenean scelerisque augue lorem, vel feugiat nulla feugiat ut. Integer consequat odio at lectus fermentum efficitur. Phasellus dictum diam nisl, eget ornare lacus molestie id. Nullam eget viverra nisl. Ut vestibulum tempor scelerisque. Phasellus quis rhoncus ligula. In hac habitasse platea dictumst.</p>', 0, '2017-02-02', 1),
(2, 2, 'Ons Idee', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam euismod congue erat, vitae porta ligula elementum vel. Sed tempor lacus id tempus varius. Vestibulum gravida pretium dictum. Aliquam dapibus massa sit amet felis pharetra lacinia. Integer rhoncus sem a est gravida tempus. Pellentesque dapibus mauris sit amet bibendum maximus. Morbi non libero massa. Ut luctus vehicula nibh, ac lacinia sapien vehicula viverra. Cras nec neque magna. Donec non odio nunc. Suspendisse eros tellus, bibendum quis tempor in, feugiat sed metus. Duis consectetur non lorem tincidunt rutrum. Etiam vitae posuere mauris. Curabitur erat diam, ullamcorper at vestibulum in, tempor quis lorem. Integer nec lectus justo. Fusce placerat magna at nisi fermentum molestie. Ut nunc enim, tristique et volutpat vel, auctor sit amet arcu. Vivamus rutrum tempus diam sed commodo. Maecenas sed justo non diam pharetra dignissim vel a enim. Curabitur finibus ante at sapien tincidunt, nec efficitur eros luctus. Cras sagittis pellentesque turpis, at cursus justo scelerisque vel. Mauris laoreet lacus ac interdum blandit. Aenean in massa semper, fringilla elit tempor, mattis urna. Mauris hendrerit pretium neque, at placerat metus facilisis sed. Nulla ornare eu sapien eu dignissim. Morbi maximus ut mi id varius. Vestibulum nec pellentesque mi, sit amet maximus nisl. Suspendisse ante purus, ornare et nisl ut, luctus cursus turpis. Pellentesque non facilisis metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec sagittis elit dui, consectetur egestas odio ullamcorper at. Curabitur blandit, libero eu eleifend congue, neque quam posuere erat, eget bibendum arcu est vitae arcu. Aliquam tincidunt justo eu sapien finibus faucibus. Aenean scelerisque augue lorem, vel feugiat nulla feugiat ut. Integer consequat odio at lectus fermentum efficitur. Phasellus dictum diam nisl, eget ornare lacus molestie id. Nullam eget viverra nisl. Ut vestibulum tempor scelerisque. Phasellus quis rhoncus ligula. In hac habitasse platea dictumst.</p>', 0, '2017-02-02', 1),
(3, 3, 'Technologie', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam euismod congue erat, vitae porta ligula elementum vel. Sed tempor lacus id tempus varius. Vestibulum gravida pretium dictum. Aliquam dapibus massa sit amet felis pharetra lacinia. Integer rhoncus sem a est gravida tempus. Pellentesque dapibus mauris sit amet bibendum maximus. Morbi non libero massa. Ut luctus vehicula nibh, ac lacinia sapien vehicula viverra. Cras nec neque magna. Donec non odio nunc. Suspendisse eros tellus, bibendum quis tempor in, feugiat sed metus. Duis consectetur non lorem tincidunt rutrum. Etiam vitae posuere mauris. Curabitur erat diam, ullamcorper at vestibulum in, tempor quis lorem. Integer nec lectus justo. Fusce placerat magna at nisi fermentum molestie. Ut nunc enim, tristique et volutpat vel, auctor sit amet arcu. Vivamus rutrum tempus diam sed commodo. Maecenas sed justo non diam pharetra dignissim vel a enim. Curabitur finibus ante at sapien tincidunt, nec efficitur eros luctus. Cras sagittis pellentesque turpis, at cursus justo scelerisque vel. Mauris laoreet lacus ac interdum blandit. Aenean in massa semper, fringilla elit tempor, mattis urna. Mauris hendrerit pretium neque, at placerat metus facilisis sed. Nulla ornare eu sapien eu dignissim. Morbi maximus ut mi id varius. Vestibulum nec pellentesque mi, sit amet maximus nisl. Suspendisse ante purus, ornare et nisl ut, luctus cursus turpis. Pellentesque non facilisis metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec sagittis elit dui, consectetur egestas odio ullamcorper at. Curabitur blandit, libero eu eleifend congue, neque quam posuere erat, eget bibendum arcu est vitae arcu. Aliquam tincidunt justo eu sapien finibus faucibus. Aenean scelerisque augue lorem, vel feugiat nulla feugiat ut. Integer consequat odio at lectus fermentum efficitur. Phasellus dictum diam nisl, eget ornare lacus molestie id. Nullam eget viverra nisl. Ut vestibulum tempor scelerisque. Phasellus quis rhoncus ligula. In hac habitasse platea dictumst.</p>\r\n<p><iframe src="https://www.youtube.com/embed/fbWeKhAPMig" width="320" height="240" frameborder="0" allowfullscreen=""></iframe></p>', 0, '2017-02-02', 1),
(4, 5, 'Contact', '<p>Adres: Tolstraat 11, Alphen aan den rijn<br />Telefoon:<br />Mobiel:<br />Email:<br /><br />Makers:<br />Jesse Bartels<br />Daan van Beusekom<br />Matthijs van Duin<br />Thijs van der Heijden</p>', 0, '2017-02-02', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_age` date NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_level` int(1) NOT NULL,
  `user_theme` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_img` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`, `user_email`, `user_age`, `user_date`, `user_level`, `user_theme`, `user_img`) VALUES
(1, 'Admin', '195749967027ab3f6f8ba9a3b64aa82a5a1efc4f', 'daanvanbeusekom@outlook.com', '2001-03-22', '2016-07-03 17:27:07', 1, 'normal', 'PROFILE/05-12-2016/14523241_976324602512753_6934141922702877959_n.jpg'),
(2, 'Daan', '195749967027ab3f6f8ba9a3b64aa82a5a1efc4f', 'daan---10@live.nl', '2001-03-23', '2016-07-03 17:32:52', 1, 'normal', 'PROFILE/25-11-2016/14523241_976324602512753_6934141922702877959_n.jpg'),
(23, 'Thijs', '04cc5d4a4dbd522a6e6a99de9b1ebd0db0a32a74', 'thijsvdh12@gmail.com', '2002-03-04', '2017-02-09 08:37:02', 1, 'normal', 'PROFILE/13-02-2017/Twitter_Logo_White_On_Blue.png'),
(24, 'Jesse', '5338ecace12c3069abee86a1bec2b80ec86d985b', '35557@youscope.nl', '2002-01-09', '2017-02-13 08:23:14', 1, 'normal', 'IMG/basic_profile_photo.png'),
(26, 'Matthijs', '53b2734499be135837aa5266737a2d685f5ea1ef', '35788@youscope.nl', '2002-07-28', '2017-02-13 08:34:15', 1, 'normal', 'IMG/basic_profile_photo.png');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexen voor tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexen voor tabel `txt`
--
ALTER TABLE `txt`
  ADD PRIMARY KEY (`txt_id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`user_email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT voor een tabel `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT voor een tabel `txt`
--
ALTER TABLE `txt`
  MODIFY `txt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

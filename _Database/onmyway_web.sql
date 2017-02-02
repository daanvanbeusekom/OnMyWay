-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 02 feb 2017 om 12:14
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
(1, 1, 'Home', 'Duis vestibulum felis at est ultrices ultricies. Vivamus faucibus fringilla tristique. Sed consectetur vehicula odio, eget gravida erat pretium ac. Maecenas nisi ligula, tincidunt ac porta quis, dapibus vel nunc. Phasellus fringilla consequat odio, nec facilisis tellus efficitur eu. Vestibulum iaculis sem eget mi ullamcorper, porta molestie leo viverra. Integer non dui euismod nulla varius semper. Nunc vel nulla sit amet odio pretium sollicitudin. Morbi in elit sit amet sapien vulputate condimentum ut vitae massa. Cras congue luctus ipsum et eleifend. Vivamus rhoncus, orci sed eleifend accumsan, felis justo aliquet nisi, id ultricies diam augue sed mauris. Etiam fermentum elit sit amet nunc pharetra, eget interdum magna ultricies. Fusce non lorem quis nisl molestie imperdiet ac ut magna. Ut posuere eleifend aliquam. Aliquam ut ligula ac elit facilisis pulvinar vel eu dolor. Aliquam cursus magna vel urna suscipit, sed posuere ligula laoreet.\n\nSuspendisse a vulputate nisl. Phasellus mattis augue risus, dictum consectetur massa molestie vitae. Nam tempus bibendum sem porttitor imperdiet. Aliquam erat volutpat. Maecenas ultricies massa et ante luctus, eleifend porttitor enim convallis. Duis in sem elementum, porttitor arcu vel, faucibus lorem. Curabitur imperdiet mauris eget gravida tristique. Aliquam mauris ex, viverra nec velit in, lacinia faucibus lorem. Duis metus ante, sollicitudin vel ornare vel, fringilla ultricies quam. Nulla facilisi.\n\nIn sed quam imperdiet, vehicula quam quis, finibus risus. Aenean vitae faucibus dui. Fusce consectetur nibh sed dui aliquet, in aliquet augue semper. Nulla bibendum quis felis sit amet maximus. Nam eget urna maximus, porta libero vitae, sagittis sem. Nunc quis condimentum dui. Duis finibus, nulla ut condimentum tristique, justo leo facilisis odio, quis euismod libero odio sed leo. Quisque in nunc ligula. Pellentesque cursus eros in libero placerat, ac tempus dolor molestie. Nunc dictum nulla congue congue posuere. Maecenas dapibus dictum tincidunt. Quisque imperdiet non elit sed hendrerit.\n\nIn maximus ante nulla, sit amet vulputate sapien sollicitudin vitae. Mauris euismod eros in quam blandit, gravida gravida nulla rutrum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec vitae ex cursus, feugiat enim vitae, volutpat purus. Aenean urna augue, viverra id enim sit amet, suscipit accumsan lectus. Vivamus rhoncus lacus in est tincidunt pharetra. Mauris tristique a libero eget vehicula. Ut hendrerit, mi et dapibus ultrices, metus eros eleifend neque, in imperdiet mauris lorem vitae risus. Proin iaculis est non elit facilisis, nec lobortis nisi maximus. Etiam sit amet ipsum sed lectus aliquet fermentum eget nec dui.\n\nNulla ultrices porta elit sed cursus. Integer facilisis laoreet elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed sed commodo lacus. Maecenas at eros eget mauris rutrum luctus in ut mi. Nulla imperdiet sed enim ut sodales. Morbi dapibus, sapien ut tristique viverra, ligula sapien luctus quam, vel ultricies nisi mi laoreet diam. Duis quis imperdiet quam, nec interdum sapien. Duis venenatis varius ex, ut efficitur tellus molestie ut. Phasellus sed imperdiet lacus, eget lacinia sem. Sed viverra nunc nisl, sit amet elementum lacus eleifend nec. Integer molestie id orci eget tempus. Proin pharetra sodales nisi, quis fringilla orci fringilla eu. Morbi elementum efficitur libero non suscipit.', 0, '2017-02-02', 1),
(2, 2, 'Onze App', 'Lorem', 0, '2017-02-02', 1),
(3, 2, 'Technologie', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam euismod congue erat, vitae porta ligula elementum vel. Sed tempor lacus id tempus varius. Vestibulum gravida pretium dictum. Aliquam dapibus massa sit amet felis pharetra lacinia. Integer rhoncus sem a est gravida tempus. Pellentesque dapibus mauris sit amet bibendum maximus. Morbi non libero massa. Ut luctus vehicula nibh, ac lacinia sapien vehicula viverra. \r\nCras nec neque magna. Donec non odio nunc. Suspendisse eros tellus, bibendum quis tempor in, feugiat sed metus. Duis consectetur non lorem tincidunt rutrum. Etiam vitae posuere mauris. Curabitur erat diam, ullamcorper at vestibulum in, tempor quis lorem. Integer nec lectus justo. Fusce placerat magna at nisi fermentum molestie. Ut nunc enim, tristique et volutpat vel, auctor sit amet arcu. Vivamus rutrum tempus diam sed commodo. Maecenas sed justo non diam pharetra dignissim vel a enim. Curabitur finibus ante at sapien tincidunt, nec efficitur eros luctus. \r\nCras sagittis pellentesque turpis, at cursus justo scelerisque vel. Mauris laoreet lacus ac interdum blandit. Aenean in massa semper, fringilla elit tempor, mattis urna. Mauris hendrerit pretium neque, at placerat metus facilisis sed. Nulla ornare eu sapien eu dignissim. Morbi maximus ut mi id varius. Vestibulum nec pellentesque mi, sit amet maximus nisl. Suspendisse ante purus, ornare et nisl ut, luctus cursus turpis. Pellentesque non facilisis metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec sagittis elit dui, consectetur egestas odio ullamcorper at. Curabitur blandit, libero eu eleifend congue, neque quam posuere erat, eget bibendum arcu est vitae arcu. \r\nAliquam tincidunt justo eu sapien finibus faucibus. Aenean scelerisque augue lorem, vel feugiat nulla feugiat ut. Integer consequat odio at lectus fermentum efficitur. Phasellus dictum diam nisl, eget ornare lacus molestie id. Nullam eget viverra nisl. Ut vestibulum tempor scelerisque. Phasellus quis rhoncus ligula. In hac habitasse platea dictumst. </p>\r\n				<iframe width="320" height="240" src="https://www.youtube.com/embed/fbWeKhAPMig" frameborder="0" allowfullscreen></iframe>', 0, '2017-02-02', 1);

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
(2, 'Daan', '195749967027ab3f6f8ba9a3b64aa82a5a1efc4f', 'daan---10@live.nl', '2001-03-23', '2016-07-03 17:32:52', 1, 'normal', 'PROFILE/25-11-2016/14523241_976324602512753_6934141922702877959_n.jpg');

--
-- Indexen voor geëxporteerde tabellen
--

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
-- AUTO_INCREMENT voor een tabel `txt`
--
ALTER TABLE `txt`
  MODIFY `txt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

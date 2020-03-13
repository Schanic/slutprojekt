-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 13 mars 2020 kl 09:26
-- Serverversion: 10.4.8-MariaDB
-- PHP-version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `datalagring`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `description` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`) VALUES
(1, 'kyckling'),
(6, 'köttbullar'),
(2, 'pangkakor'),
(5, 'pasta');

-- --------------------------------------------------------

--
-- Tabellstruktur `instructions_steps`
--

CREATE TABLE `instructions_steps` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `step_number` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `instructions_steps`
--

INSERT INTO `instructions_steps` (`id`, `description`, `step_number`, `recipe_id`) VALUES
(1, 'wdadwdadadw', 1, 1),
(2, 'wdawdawdwda', 2, 1),
(3, 'Hajjå', 1, 2),
(4, 'Hajjå', 2, 2),
(7, 'wdadwdadadw', 1, 13),
(8, 'wdadwdadadw', 1, 14),
(9, 'wdadwdadadw', 1, 15),
(10, 'wdadwdadadw', 1, 16),
(11, 'wdadwdadadw', 1, 17),
(12, 'wdadwdadadw', 1, 18),
(13, 'wdadwdadadw', 1, 19),
(14, 'wdadwdadadw', 1, 22),
(15, 'wdadwdadadw', 1, 27),
(16, 'wdadwdadadw', 1, 28),
(17, 'wdawdawdwda', 2, 28),
(18, 'wdadwdadadw', 1, 29),
(19, 'wdawdawdwda', 2, 29),
(20, 'wdadwdadadw', 1, 30),
(21, 'wdawdawdwda', 2, 30),
(22, 'wdadwdadadw', 1, 31),
(23, 'wdawdawdwda', 2, 31),
(24, 'wdadwdadadw', 1, 32),
(25, 'wdawdawdwda', 2, 32),
(26, 'wdadwdadadw', 1, 33),
(27, 'wdawdawdwda', 2, 33),
(28, 'wdadwdadadw', 1, 34),
(29, 'wdawdawdwda', 2, 34),
(32, 'wdadwdadadw', 1, 37),
(33, 'wdawdawdwda', 2, 37),
(34, 'wdadwdadadw', 1, 38),
(35, 'wdawdawdwda', 2, 38);

-- --------------------------------------------------------

--
-- Tabellstruktur `recipe`
--

CREATE TABLE `recipe` (
  `id` int(11) NOT NULL,
  `recipe_descrip` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `recipe`
--

INSERT INTO `recipe` (`id`, `recipe_descrip`, `name`, `user_id`) VALUES
(1, 'Goda pangkakor', 'PANGkaka', 2),
(2, 'dawdadadada', 'Goa fiskgryta', 3),
(13, 'Johan är god', 'MatJohan', 2),
(14, 'Johan är god', 'MatJohan', 2),
(15, 'Johan är god', 'MatJohan', 2),
(16, 'Johan är god', 'MatJohan', 2),
(17, 'Johan är god', 'MatJohan', 2),
(18, 'Johan är god', 'MatJohan', 2),
(19, 'Johan är god', 'MatJohan', 2),
(20, 'Johan är god', 'MatJohan', 2),
(21, 'Johan är god', 'MatJohan', 2),
(22, 'Johan är god', 'MatJohan', 2),
(23, 'Johan är god', 'MatJohan', 2),
(24, 'Johan är god', 'MatJohan', 2),
(25, 'Johan är god', 'MatJohan', 2),
(26, 'Johan är god', 'MatJohan', 2),
(27, 'Johan är god', 'MatJohan', 2),
(28, 'Johan är god', 'MatJohan', 2),
(29, 'Johan är god', 'MatJohan', 2),
(30, 'Johan är god', 'MatJohan', 2),
(31, 'Johan är god', 'MatJohan', 2),
(32, 'Johan är god', 'MatJohan', 2),
(33, 'Johan är god', 'MatJohan', 2),
(34, 'Johan är god', 'MatJohan', 2),
(35, 'Johan är god', 'MatJohan', 2),
(36, 'Johan är god', 'MatJohan', 2),
(37, 'Johan är god', 'MatJohan', 2),
(38, 'Johan är god', 'MatJohan', 2);

-- --------------------------------------------------------

--
-- Tabellstruktur `recipe_ingredients`
--

CREATE TABLE `recipe_ingredients` (
  `recipe_id` int(11) NOT NULL,
  `ingredients_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `unit` varchar(255) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `recipe_ingredients`
--

INSERT INTO `recipe_ingredients` (`recipe_id`, `ingredients_id`, `amount`, `unit`) VALUES
(2, 6, 10, 'kg'),
(2, 5, 5, 'dl'),
(1, 2, 20, 'kg'),
(1, 1, 1, 'kg'),
(2, 2, 20, 'kg'),
(2, 2, 20, 'kg'),
(13, 2, 20, 'kg'),
(14, 2, 20, 'kg'),
(15, 2, 20, 'kg'),
(16, 2, 20, 'kg'),
(17, 2, 20, 'kg'),
(18, 2, 20, 'kg'),
(19, 2, 20, 'kg'),
(22, 2, 20, 'kg'),
(27, 2, 20, 'kg'),
(28, 2, 20, 'kg'),
(29, 2, 20, 'kg'),
(29, 1, 1, 'kg'),
(30, 2, 20, 'kg'),
(30, 1, 1, 'kg'),
(31, 2, 20, 'kg'),
(31, 1, 1, 'kg'),
(32, 2, 20, 'kg'),
(32, 1, 1, 'kg'),
(33, 2, 20, 'kg'),
(33, 1, 1, 'kg'),
(34, 2, 20, 'kg'),
(34, 1, 1, 'kg'),
(37, 2, 20, 'kg'),
(37, 1, 1, 'kg'),
(38, 2, 20, 'kg'),
(38, 1, 1, 'kg');

-- --------------------------------------------------------

--
-- Tabellstruktur `recipe_tags`
--

CREATE TABLE `recipe_tags` (
  `recipe_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `recipe_tags`
--

INSERT INTO `recipe_tags` (`recipe_id`, `tags_id`) VALUES
(1, 1),
(1, 4),
(1, 3),
(1, 2),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(22, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(37, 1),
(38, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'kyckling'),
(4, 'pasta'),
(3, 'ris'),
(2, 'vegetarisk');

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `admin_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `admin_level`) VALUES
(2, 'Nisse', '456+', 1),
(3, 'Daniel', '123', 1);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Index för tabell `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index för tabell `instructions_steps`
--
ALTER TABLE `instructions_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Index för tabell `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index för tabell `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `ingredients_id` (`ingredients_id`);

--
-- Index för tabell `recipe_tags`
--
ALTER TABLE `recipe_tags`
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `tags_id` (`tags_id`);

--
-- Index för tabell `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index för tabell `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT för tabell `instructions_steps`
--
ALTER TABLE `instructions_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT för tabell `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT för tabell `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT för tabell `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`);

--
-- Restriktioner för tabell `instructions_steps`
--
ALTER TABLE `instructions_steps`
  ADD CONSTRAINT `instructions_steps_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`);

--
-- Restriktioner för tabell `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Restriktioner för tabell `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  ADD CONSTRAINT `recipe_ingredients_ibfk_1` FOREIGN KEY (`ingredients_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recipe_ingredients_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restriktioner för tabell `recipe_tags`
--
ALTER TABLE `recipe_tags`
  ADD CONSTRAINT `recipe_tags_ibfk_1` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`),
  ADD CONSTRAINT `recipe_tags_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

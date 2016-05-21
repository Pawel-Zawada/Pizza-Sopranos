-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Gegenereerd op: 21 mei 2016 om 16:07
-- Serverversie: 5.5.46-0ubuntu0.14.04.2
-- PHP-versie: 5.6.14-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scotchbox`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestelling`
--

CREATE TABLE `bestelling` (
  `bestelid` int(255) NOT NULL,
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `bestelling`
--

INSERT INTO `bestelling` (`bestelid`, `id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `drinks`
--

CREATE TABLE `drinks` (
  `productId` int(11) NOT NULL,
  `productNaam` varchar(20) NOT NULL,
  `productPrijs` decimal(4,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `drinks`
--

INSERT INTO `drinks` (`productId`, `productNaam`, `productPrijs`, `image`) VALUES
(8, 'Pepsi Cola', '2.00', 'img/2059-Pepsi-330ml-Can.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pizzas`
--

CREATE TABLE `pizzas` (
  `productId` int(11) NOT NULL,
  `productNaam` varchar(20) DEFAULT NULL,
  `productPrijs` decimal(4,2) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `pizzas`
--

INSERT INTO `pizzas` (`productId`, `productNaam`, `productPrijs`, `image`) VALUES
(1, 'Pepperoni', '6.00', 'img/ristorante-pizza-pepperoni-salame.png'),
(2, 'Quattro Formaggi', '6.00', 'img/ristorante-pizza-quattro-formaggi-pizza-und-snacks.png'),
(3, 'Mozzarella', '5.50', 'img/pizza-ristorante.jpg'),
(4, 'Funghi', '6.00', 'img/ristorante.png'),
(5, 'Margherita', '4.00', 'img/IDShot_540x540.jpg'),
(6, 'Prosciutto', '6.00', 'img/231633.png'),
(7, 'Calzone', '7.00', 'img/ristorante-calzone-2png.png');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `bestelling`
--
ALTER TABLE `bestelling`
  ADD PRIMARY KEY (`bestelid`);

--
-- Indexen voor tabel `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`productId`);

--
-- Indexen voor tabel `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `bestelling`
--
ALTER TABLE `bestelling`
  MODIFY `bestelid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `drinks`
--
ALTER TABLE `drinks`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT voor een tabel `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

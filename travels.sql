-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 14, 2024 at 10:42 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travels`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `fileName` text DEFAULT NULL,
  `signature` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `fileName`, `signature`) VALUES
(1, '1.jpg', 'London'),
(2, '2.jpg', 'Venice'),
(3, '3.jpg', 'Berlin'),
(4, '4.jpg', 'Warsaw'),
(5, '5.jpg', 'Budapest'),
(6, '6.jpg', 'Paris'),
(7, '7.jpg', 'New York'),
(8, '8.jpg', 'Barcelona'),
(9, '9.jpg', 'Moskow');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tours`
--

CREATE TABLE `tours` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `departureDate` date DEFAULT NULL,
  `target` text DEFAULT NULL,
  `price` double DEFAULT NULL,
  `availability` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `photo_id`, `departureDate`, `target`, `price`, `availability`) VALUES
(1, 2, '2019-09-08', 'Italy, Venice', 1200, 1),
(2, 2, '2019-09-14', 'Italy, Venice', 1200, 1),
(3, 4, '2019-08-14', 'Poland, Warsaw', 640, 1),
(4, 6, '2019-08-14', 'France, Paris', 1300, 1),
(5, 6, '2019-07-14', 'France, Paris', 1350, 0),
(6, 6, '2019-09-14', 'France, Paris', 1200, 1),
(7, 8, '2019-07-14', 'Spain, Barcelona', 1500, 0),
(8, 8, '2019-08-14', 'Spain, Barcelona', 1500, 0),
(9, 8, '2019-09-14', 'Spain, Barcelona', 1400, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Sty 2016, 18:35
-- Wersja serwera: 10.1.8-MariaDB
-- Wersja PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `spoldzielnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `blok`
--

CREATE TABLE `blok` (
  `id_bloku` int(10) NOT NULL,
  `ulica` varchar(255) NOT NULL,
  `ulica_nr` varchar(10) NOT NULL,
  `miejscowosc` varchar(255) NOT NULL,
  `nazwa_spoldzielni` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `blok`
--

INSERT INTO `blok` (`id_bloku`, `ulica`, `ulica_nr`, `miejscowosc`, `nazwa_spoldzielni`) VALUES
(1, 'Chmieleniec', '1', 'Krakow', 'Stonka'),
(2, 'Pilsudskiego', '18', 'Skawina', 'Stonka'),
(3, 'Sloneczna', '3', 'Krakow', 'Stonka'),
(5, 'Kawasaki', '22', 'Kraków', 'Stonka'),
(6, 'Ninja', '12', 'Kraków', 'Stonka'),
(7, 'Wawa', '2', 'Kraków', 'Stonka'),
(8, 'Delikatne', '112', 'Kraków', 'Stonka'),
(9, 'Acer', '69', 'Kraków', 'Stonka'),
(10, 'PepsiMax', '5', 'Skawina', 'Stonka'),
(11, 'Cisowianka', '22', 'Gazowana', 'Stonka'),
(12, 'HP', '4', 'Kraków', 'Stonka'),
(13, 'Queen', '6', 'Kraków', 'Stonka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mieszkanie`
--

CREATE TABLE `mieszkanie` (
  `id_mieszkania` int(10) NOT NULL,
  `id_bloku` int(10) NOT NULL,
  `nr_mieszkania` int(3) NOT NULL,
  `pietro` int(3) NOT NULL,
  `powierzchnia` float NOT NULL,
  `ilosc_pokoi` int(2) NOT NULL,
  `piwnica_powierzchnia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `mieszkanie`
--

INSERT INTO `mieszkanie` (`id_mieszkania`, `id_bloku`, `nr_mieszkania`, `pietro`, `powierzchnia`, `ilosc_pokoi`, `piwnica_powierzchnia`) VALUES
(10, 1, 1, 1, 42, 2, 12),
(12, 1, 3, 2, 52, 3, 12),
(13, 1, 4, 2, 52, 3, 12),
(14, 1, 5, 3, 62, 3, 12),
(15, 1, 6, 3, 44, 3, 12),
(16, 2, 1, 1, 42, 2, 14),
(20, 2, 5, 3, 62, 3, 14),
(21, 2, 6, 3, 44, 3, 14),
(22, 3, 1, 1, 42, 2, 16),
(27, 5, 1, 1, 33, 1, 6),
(28, 5, 1, 1, 33, 1, 6),
(29, 5, 2, 1, 33, 1, 6),
(30, 5, 3, 2, 33, 1, 6),
(31, 5, 4, 2, 33, 1, 6),
(32, 5, 5, 3, 33, 1, 6),
(33, 5, 6, 3, 33, 1, 6),
(34, 6, 1, 1, 33, 1, 6),
(35, 6, 2, 1, 33, 1, 6),
(36, 6, 3, 2, 33, 1, 6),
(37, 6, 4, 2, 33, 1, 6),
(38, 6, 5, 3, 33, 1, 6),
(39, 6, 6, 3, 33, 1, 6),
(40, 7, 1, 1, 33, 1, 6),
(41, 7, 2, 1, 33, 1, 6),
(42, 7, 3, 2, 33, 1, 6),
(43, 7, 4, 2, 33, 1, 6),
(44, 7, 5, 3, 33, 1, 6),
(45, 7, 6, 3, 33, 1, 6),
(46, 8, 1, 1, 33, 1, 6),
(47, 8, 2, 1, 33, 1, 6),
(48, 8, 3, 2, 33, 1, 6),
(49, 8, 4, 2, 33, 1, 6),
(50, 8, 5, 3, 33, 1, 6),
(51, 8, 6, 3, 33, 1, 6),
(52, 9, 1, 1, 33, 1, 6),
(53, 9, 2, 1, 33, 1, 6),
(54, 9, 3, 2, 33, 1, 6),
(55, 9, 4, 2, 33, 1, 6),
(56, 9, 5, 3, 33, 1, 6),
(57, 9, 6, 3, 33, 1, 6),
(58, 10, 1, 1, 33, 1, 6),
(59, 10, 2, 1, 33, 1, 6),
(60, 10, 3, 2, 33, 1, 6),
(61, 10, 4, 2, 33, 1, 6),
(62, 10, 5, 3, 33, 1, 6),
(63, 10, 6, 3, 33, 1, 6),
(64, 11, 1, 1, 33, 1, 6),
(65, 11, 2, 1, 33, 1, 6),
(66, 11, 3, 2, 33, 1, 6),
(67, 11, 4, 2, 33, 1, 6),
(68, 11, 5, 3, 33, 1, 6),
(69, 11, 6, 3, 33, 1, 6),
(70, 12, 1, 1, 33, 1, 6),
(71, 12, 2, 1, 33, 1, 6),
(72, 12, 3, 2, 33, 1, 6),
(73, 12, 4, 2, 33, 1, 6),
(74, 12, 5, 3, 33, 1, 6),
(75, 12, 6, 3, 33, 1, 6),
(76, 13, 1, 1, 33, 1, 6),
(77, 13, 2, 1, 33, 1, 6),
(78, 13, 3, 2, 33, 1, 6),
(79, 13, 4, 2, 33, 1, 6),
(80, 13, 5, 3, 33, 1, 6),
(81, 13, 6, 3, 33, 1, 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oplaty`
--

CREATE TABLE `oplaty` (
  `id_oplat` int(10) NOT NULL,
  `id_mieszkania` int(10) NOT NULL,
  `czynsz` float NOT NULL,
  `prad` float NOT NULL,
  `woda` float NOT NULL,
  `gaz` float NOT NULL,
  `ramontowe` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `oplaty`
--

INSERT INTO `oplaty` (`id_oplat`, `id_mieszkania`, `czynsz`, `prad`, `woda`, `gaz`, `ramontowe`) VALUES
(3, 10, 500, 122, 88, 52, 23),
(5, 12, 500, 122, 88, 52, 23),
(6, 13, 500, 122, 88, 52, 23),
(7, 14, 500, 122, 88, 52, 23),
(8, 15, 500, 122, 88, 52, 23),
(9, 16, 500, 122, 88, 52, 23),
(13, 20, 500, 122, 88, 52, 23),
(14, 21, 500, 122, 88, 52, 23),
(15, 22, 500, 122, 88, 52, 23);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownik`
--

CREATE TABLE `pracownik` (
  `id` int(10) NOT NULL,
  `imie` varchar(25) NOT NULL,
  `nazwisko` varchar(25) NOT NULL,
  `pesel` bigint(11) NOT NULL,
  `ulica` varchar(255) NOT NULL,
  `miejscowosc` varchar(25) NOT NULL,
  `stanowisko` varchar(255) NOT NULL,
  `nr_konta` bigint(26) NOT NULL,
  `nr_telefonu` bigint(13) NOT NULL,
  `nazwa_spoldzielni_fk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `pracownik`
--

INSERT INTO `pracownik` (`id`, `imie`, `nazwisko`, `pesel`, `ulica`, `miejscowosc`, `stanowisko`, `nr_konta`, `nr_telefonu`, `nazwa_spoldzielni_fk`) VALUES
(1, 'Krzysztof', 'Pezi', 93103336358, 'Chmieleniec 1', 'Krakow', 'Prezes', 0, 666777888, 'Stonka'),
(6, 'Katarzyna', 'Grzyb', 89141236258, 'Morska 11', 'Krakow', 'Sekretarka', 9223372036854775807, 996789123, 'Stonka'),
(7, 'Dominika', 'Kowalska', 92011236258, 'Komorowskiego 21', 'Krakow', 'Maanager', 12000034000060022, 147258369, 'Stonka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `remont`
--

CREATE TABLE `remont` (
  `id_remont` int(10) NOT NULL,
  `opis` varchar(255) NOT NULL,
  `kwota` float NOT NULL,
  `id_bloku` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `spoldzielnia_mieszkaniowa`
--

CREATE TABLE `spoldzielnia_mieszkaniowa` (
  `nazwa_spoldzielni` varchar(255) NOT NULL,
  `adres_spoldzielni` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `spoldzielnia_mieszkaniowa`
--

INSERT INTO `spoldzielnia_mieszkaniowa` (`nazwa_spoldzielni`, `adres_spoldzielni`) VALUES
('Stonka', 'ul. Pilsudskiego 1, Krakow 30-000');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wlasciciel`
--

CREATE TABLE `wlasciciel` (
  `pesel` bigint(11) NOT NULL,
  `id` int(10) NOT NULL,
  `imie` varchar(25) NOT NULL,
  `nazwisko` varchar(25) NOT NULL,
  `ulica` varchar(25) NOT NULL,
  `miejscowosc` varchar(25) NOT NULL,
  `nr_telefonu` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `wlasciciel`
--

INSERT INTO `wlasciciel` (`pesel`, `id`, `imie`, `nazwisko`, `ulica`, `miejscowosc`, `nr_telefonu`) VALUES
(93100104147, 1, 'mateusz', 'Skocz', 'Pilsudskiego 18', 'Skawina', 654789123),
(89551415963, 3, 'Alicja', 'Zlopek', 'Straszna 1', 'Krakow', 458729963),
(92889415963, 7, 'Alibaba', 'Rozbujnik', 'Dzina 1', 'Krakow', 969789963),
(89, 8, 'Lukasz', 'BLABLA', 'jkl', 'iop', 123),
(89, 9, 'Lukasz', 'BLABLA', 'jkl', 'iop', 123),
(891, 10, 'JKO', 'BLABLA', 'PIlsu', 'iop', 123),
(892, 11, 'Pepsi', 'BLABLA', 'RYNEK 1', 'iop', 123),
(893, 12, 'Cola', 'zero', 'jkl', 'iop', 123),
(894, 13, 'I', 'PHONE', 'PIlsu', 'iop', 123),
(895, 14, 'Apple', 'PIG', 'RYNEK 12', 'iop', 123),
(896, 15, 'Lukasyyz', 'BLABLA', 'RYNEK 13', 'iop', 123);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wlasciciel_mieszkanie`
--

CREATE TABLE `wlasciciel_mieszkanie` (
  `wlasciciel_id` int(10) DEFAULT NULL,
  `mieszkanie_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `wlasciciel_mieszkanie`
--

INSERT INTO `wlasciciel_mieszkanie` (`wlasciciel_id`, `mieszkanie_id`) VALUES
(7, 15),
(3, 10),
(7, 30),
(8, 31),
(9, 32),
(10, 33),
(11, 34),
(12, 35),
(13, 36),
(14, 37),
(15, 38);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `blok`
--
ALTER TABLE `blok`
  ADD PRIMARY KEY (`id_bloku`),
  ADD UNIQUE KEY `id_bloku` (`id_bloku`),
  ADD KEY `nazwa_spoldzielni` (`nazwa_spoldzielni`),
  ADD KEY `nazwa_spoldzielni_2` (`nazwa_spoldzielni`);

--
-- Indexes for table `mieszkanie`
--
ALTER TABLE `mieszkanie`
  ADD PRIMARY KEY (`id_mieszkania`),
  ADD KEY `id_bloku` (`id_bloku`);

--
-- Indexes for table `oplaty`
--
ALTER TABLE `oplaty`
  ADD PRIMARY KEY (`id_oplat`),
  ADD KEY `id_mieszkania` (`id_mieszkania`),
  ADD KEY `id_mieszkania_2` (`id_mieszkania`);

--
-- Indexes for table `pracownik`
--
ALTER TABLE `pracownik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `pesel` (`pesel`),
  ADD KEY `nazwa_spoldzielni_fk` (`nazwa_spoldzielni_fk`),
  ADD KEY `pesel_2` (`pesel`);

--
-- Indexes for table `remont`
--
ALTER TABLE `remont`
  ADD PRIMARY KEY (`id_remont`),
  ADD KEY `id_bloku` (`id_bloku`);

--
-- Indexes for table `spoldzielnia_mieszkaniowa`
--
ALTER TABLE `spoldzielnia_mieszkaniowa`
  ADD PRIMARY KEY (`nazwa_spoldzielni`),
  ADD UNIQUE KEY `nazwa_spoldzielni` (`nazwa_spoldzielni`),
  ADD KEY `nazwa_spoldzielni_2` (`nazwa_spoldzielni`);

--
-- Indexes for table `wlasciciel`
--
ALTER TABLE `wlasciciel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wlasciciel_mieszkanie`
--
ALTER TABLE `wlasciciel_mieszkanie`
  ADD KEY `wlasciciel_id` (`wlasciciel_id`),
  ADD KEY `mieszkanie_id` (`mieszkanie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `blok`
--
ALTER TABLE `blok`
  MODIFY `id_bloku` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT dla tabeli `mieszkanie`
--
ALTER TABLE `mieszkanie`
  MODIFY `id_mieszkania` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT dla tabeli `oplaty`
--
ALTER TABLE `oplaty`
  MODIFY `id_oplat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `remont`
--
ALTER TABLE `remont`
  MODIFY `id_remont` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `wlasciciel`
--
ALTER TABLE `wlasciciel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `blok`
--
ALTER TABLE `blok`
  ADD CONSTRAINT `blok_spoldzielnia_fk` FOREIGN KEY (`nazwa_spoldzielni`) REFERENCES `spoldzielnia_mieszkaniowa` (`nazwa_spoldzielni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `mieszkanie`
--
ALTER TABLE `mieszkanie`
  ADD CONSTRAINT `mieszkanie_ibfk_2` FOREIGN KEY (`id_bloku`) REFERENCES `blok` (`id_bloku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `oplaty`
--
ALTER TABLE `oplaty`
  ADD CONSTRAINT `oplaty_ibfk_1` FOREIGN KEY (`id_mieszkania`) REFERENCES `mieszkanie` (`id_mieszkania`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  ADD CONSTRAINT `pracownik_spoldzielnia_fk` FOREIGN KEY (`nazwa_spoldzielni_fk`) REFERENCES `spoldzielnia_mieszkaniowa` (`nazwa_spoldzielni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `remont`
--
ALTER TABLE `remont`
  ADD CONSTRAINT `remont_blok_fk` FOREIGN KEY (`id_bloku`) REFERENCES `blok` (`id_bloku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `wlasciciel_mieszkanie`
--
ALTER TABLE `wlasciciel_mieszkanie`
  ADD CONSTRAINT `wl-m_m-fk` FOREIGN KEY (`mieszkanie_id`) REFERENCES `mieszkanie` (`id_mieszkania`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wlasciciel_mieszkanie_ibfk_1` FOREIGN KEY (`wlasciciel_id`) REFERENCES `wlasciciel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

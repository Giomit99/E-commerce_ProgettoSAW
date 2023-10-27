-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Ott 27, 2023 alle 12:46
-- Versione del server: 10.4.25-MariaDB
-- Versione PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `startsaw`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `acquisti`
--

CREATE TABLE `acquisti` (
  `id_user` int(11) NOT NULL,
  `id_prodotto` int(11) NOT NULL,
  `quantita` int(11) NOT NULL,
  `prezzo` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `acquisti`
--

INSERT INTO `acquisti` (`id_user`, `id_prodotto`, `quantita`, `prezzo`, `data`) VALUES
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 8, 1, 22, '2023-10-27'),
(2, 9, 1, 35, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 8, 1, 22, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 8, 1, 22, '2023-10-27'),
(2, 8, 1, 22, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27'),
(2, 7, 1, 20, '2023-10-27');

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti`
--

CREATE TABLE `prodotti` (
  `id` int(11) NOT NULL,
  `descrizione` varchar(45) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `sesso` varchar(10) DEFAULT NULL,
  `tipologia` varchar(30) DEFAULT NULL,
  `prezzo` int(11) DEFAULT NULL,
  `quantità` int(4) DEFAULT NULL,
  `data_modifica` datetime DEFAULT NULL,
  `data_aggiunta` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `prodotti`
--

INSERT INTO `prodotti` (`id`, `descrizione`, `marca`, `sesso`, `tipologia`, `prezzo`, `quantità`, `data_modifica`, `data_aggiunta`) VALUES
(7, 'polo', 'nordica', 'uomo', 'abbigliamento', 20, NULL, NULL, NULL),
(8, 'polo', 'kalengi', 'donna', 'abbigliamento', 22, NULL, NULL, NULL),
(9, 'pantaloni', 'levis', 'uomo', 'abbigliamento', 35, NULL, NULL, NULL),
(10, 'maglietta', 'rams', 'uomo', 'abbigliamento', 30, NULL, NULL, NULL),
(11, 'sci', 'nordica', 'donna', 'attrezzatura', 150, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `iduser` int(11) NOT NULL,
  `firstname` char(25) NOT NULL,
  `lastname` char(25) NOT NULL,
  `email` char(40) NOT NULL,
  `pass` char(100) NOT NULL,
  `sesso` varchar(5) DEFAULT NULL,
  `DataDiNascita` date DEFAULT NULL,
  `Telefono` bigint(1) DEFAULT NULL,
  `Stato` varchar(15) DEFAULT NULL,
  `Provincia` varchar(20) DEFAULT NULL,
  `Citta` varchar(20) DEFAULT NULL,
  `Indirizzo` varchar(40) DEFAULT NULL,
  `Cap` int(5) DEFAULT NULL,
  `Newsletter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`iduser`, `firstname`, `lastname`, `email`, `pass`, `sesso`, `DataDiNascita`, `Telefono`, `Stato`, `Provincia`, `Citta`, `Indirizzo`, `Cap`, `Newsletter`) VALUES
(1, 'Francesco', 'Filippone', 'fran.filippone@gmail.com', '$2y$10$9AKURihClcqjcqZXXwyn4u2FxaUSstV2ZgT0kJfDH5aBPT/5ScBAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Sports', 'Unlimited', 'sportsunlimitedsaw@gmail.com', '$2y$10$ocNRXXEkLUDG4qLomDVcveoNobDTtqNkJRMNlb8QWi4fbcyaA3m/q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `prodotti`
--
ALTER TABLE `prodotti`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `prodotti`
--
ALTER TABLE `prodotti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

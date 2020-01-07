SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Datenbank: `allgold`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `products`
--
CREATE TABLE `seller` (
  `sellerID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Daten für Tabelle `products`
--
INSERT INTO `seller` (`sellerID`, `name`, `role`) VALUES
(1, 'Marvin', 'Geschäftsführer'),
(2, 'Peter', 'Lieferant'),
(3, 'Linda', 'Verkäufer'),
(4, 'C3PO', 'Automat'),
(5, 'Luggi', 'Verkäufer');


--
-- Indizes für die Tabelle `products`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`sellerID`);


--
-- AUTO_INCREMENT für Tabelle `products`
--
ALTER TABLE `seller`
  MODIFY `sellerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


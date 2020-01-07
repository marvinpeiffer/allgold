SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Datenbank: `allgold`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `products`
--

INSERT INTO `products` (`productID`, `name`, `price`) VALUES 
(1, 'Milch', '1.00'),
(2, 'Emmentaler', '3.95'),
(3, 'Gauda', '3.10'),
(4, 'Joghurt Natur 100g', '0.50'),
(5, 'Quark', '0.90'),
(6, 'Joghurt 500g', '2.00'),
(7, 'Streichkaese', '1.50'),
(8, 'Bergkaese', '5.00'),
(9, 'Joghurt Edelweiß 100g', '4.00'),
(10, 'Joghurt Erdbeere 100g', '4.20'),
(11, 'Joghurt Heimische Beeren 100g', '4.20'),
(12, 'Joghurt Loewenzahn 100g', '5.50'),
(13, 'Joghurt Kirsche 100g', '4.00'),
(14, 'Joghurt Zwetschge 100g', '4.10'),
(15, 'Allgaeuer Bergkaese', '2.50'),
(16, 'Emmentaler', '2.80'),
(17, 'Kraeuterkaese', '3.20'),
(18, 'Rosenkaese', '2.90'),
(19, 'Enziankaese', '2.50'),
(20, 'Frischkaese 20', '2.00');


--
-- Indizes für die Tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);


--
-- AUTO_INCREMENT für Tabelle `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;


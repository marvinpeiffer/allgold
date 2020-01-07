SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Datenbank: `allgold`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `inventory`
--
CREATE TABLE `inventory` (
  `inventoryID` int(11) NOT NULL,
  `stationID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `currentAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Daten für Tabelle `inventory`
--
INSERT INTO `inventory` (`inventoryID`, `stationID`, `productID`, `currentAmount`) VALUES
(1, 1, 1, 5),
(2, 1, 2, 5),
(3, 1, 3, 5),
(4, 1, 4, 5),
(5, 1, 5, 5),
(6, 1, 6, 5),
(7, 1, 7, 5),
(8, 1, 8, 5),
(9, 1, 9, 5),
(10, 1, 10, 5),
(11, 1, 11, 5),
(12, 1, 12, 5),
(13, 1, 13, 5),
(14, 1, 14, 5),
(15, 1, 15, 5),
(16, 1, 16, 5),
(17, 1, 17, 5),
(18, 1, 18, 5),
(19, 1, 19, 5),
(20, 1, 20, 5),
(21, 2, 1, 5),
(22, 2, 2, 5),
(23, 2, 3, 5),
(24, 2, 4, 5),
(25, 2, 5, 5),
(26, 2, 6, 5),
(27, 2, 7, 5),
(28, 2, 8, 5),
(29, 2, 9, 5),
(30, 2, 10, 5),
(31, 2, 11, 5),
(32, 2, 12, 5),
(33, 2, 13, 5),
(34, 2, 14, 5),
(35, 2, 15, 5),
(36, 2, 16, 5),
(37, 2, 17, 5),
(38, 2, 18, 5),
(39, 2, 19, 5),
(40, 2, 20, 5),
(41, 3, 1, 5),
(42, 3, 2, 5),
(43, 3, 3, 5),
(44, 3, 4, 5),
(45, 3, 5, 5),
(46, 3, 6, 5),
(47, 3, 7, 5),
(48, 3, 8, 5),
(49, 3, 9, 5),
(50, 3, 10, 5),
(51, 3, 11, 5),
(52, 3, 12, 5),
(53, 3, 13, 5),
(54, 3, 14, 5),
(55, 3, 15, 5),
(56, 3, 16, 5),
(57, 3, 17, 5),
(58, 3, 18, 5),
(59, 3, 19, 5),
(60, 3, 20, 5),
(61, 4, 1, 5),
(62, 4, 2, 5),
(63, 4, 3, 5),
(64, 4, 4, 5),
(65, 4, 5, 5),
(66, 4, 6, 5),
(67, 4, 7, 5),
(68, 4, 8, 5),
(69, 4, 9, 5),
(70, 4, 10, 5),
(71, 4, 11, 5),
(72, 4, 12, 5),
(73, 4, 13, 5),
(74, 4, 14, 5),
(75, 4, 15, 5),
(76, 4, 16, 5),
(77, 4, 17, 5),
(78, 4, 18, 5),
(79, 4, 19, 5),
(80, 4, 20, 5),
(81, 5, 1, 5),
(82, 5, 2, 5),
(83, 5, 3, 5),
(84, 5, 4, 5),
(85, 5, 5, 5),
(86, 5, 6, 5),
(87, 5, 7, 5),
(88, 5, 8, 5),
(89, 5, 9, 5),
(90, 5, 10, 5),
(91, 5, 11, 5),
(92, 5, 12, 5),
(93, 5, 13, 5),
(94, 5, 14, 5),
(95, 5, 15, 5),
(96, 5, 16, 5),
(97, 5, 17, 5),
(98, 5, 18, 5),
(99, 5, 19, 5),
(100, 5, 20, 5),
(101, 6, 1, 5),
(102, 6, 2, 5),
(103, 6, 3, 5),
(104, 6, 4, 5),
(105, 6, 5, 5),
(106, 6, 6, 5),
(107, 6, 7, 5),
(108, 6, 8, 5),
(109, 6, 9, 5),
(110, 6, 10, 5),
(111, 6, 11, 5),
(112, 6, 12, 5),
(113, 6, 13, 5),
(114, 6, 14, 5),
(115, 6, 15, 5),
(116, 6, 16, 5),
(117, 6, 17, 5),
(118, 6, 18, 5),
(119, 6, 19, 5),
(120, 6, 20, 5),
(121, 7, 1, 5),
(122, 7, 2, 5),
(123, 7, 3, 5),
(124, 7, 4, 5),
(125, 7, 5, 5),
(126, 7, 6, 5),
(127, 7, 7, 5),
(128, 7, 8, 5),
(129, 7, 9, 5),
(130, 7, 10, 5),
(131, 7, 11, 5),
(132, 7, 12, 5),
(133, 7, 13, 5),
(134, 7, 14, 5),
(135, 7, 15, 5),
(136, 7, 16, 5),
(137, 7, 17, 5),
(138, 7, 18, 5),
(139, 7, 19, 5),
(140, 7, 20, 5),
(141, 8, 1, 5),
(142, 8, 2, 5),
(143, 8, 3, 5),
(144, 8, 4, 5),
(145, 8, 5, 5),
(146, 8, 6, 5),
(147, 8, 7, 5),
(148, 8, 8, 5),
(149, 8, 9, 5),
(150, 8, 10, 5),
(151, 8, 11, 5),
(152, 8, 12, 5),
(153, 8, 13, 5),
(154, 8, 14, 5),
(155, 8, 15, 5),
(156, 8, 16, 5),
(157, 8, 17, 5),
(158, 8, 18, 5),
(159, 8, 19, 5),
(160, 8, 20, 5),
(161, 9, 1, 5),
(162, 9, 2, 5),
(163, 9, 3, 5),
(164, 9, 4, 5),
(165, 9, 5, 5),
(166, 9, 6, 5),
(167, 9, 7, 5),
(168, 9, 8, 5),
(169, 9, 9, 5),
(170, 9, 10, 5),
(171, 9, 11, 5),
(172, 9, 12, 5),
(173, 9, 13, 5),
(174, 9, 14, 5),
(175, 9, 15, 5),
(176, 9, 16, 5),
(177, 9, 17, 5),
(178, 9, 18, 5),
(179, 9, 19, 5),
(180, 9, 20, 5),
(181, 10, 1, 5),
(182, 10, 2, 5),
(183, 10, 3, 5),
(184, 10, 4, 5),
(185, 10, 5, 5),
(186, 10, 6, 5),
(187, 10, 7, 5),
(188, 10, 8, 5),
(189, 10, 9, 5),
(190, 10, 10, 5),
(191, 10, 11, 5),
(192, 10, 12, 5),
(193, 10, 13, 5),
(194, 10, 14, 5),
(195, 10, 15, 5),
(196, 10, 16, 5),
(197, 10, 17, 5),
(198, 10, 18, 5),
(199, 10, 19, 5),
(200, 10, 20, 5),
(201, 11, 1, 5),
(202, 11, 2, 5),
(203, 11, 3, 5),
(204, 11, 4, 5),
(205, 11, 5, 5),
(206, 11, 6, 5),
(207, 11, 7, 5),
(208, 11, 8, 5),
(209, 11, 9, 5),
(210, 11, 10, 5),
(211, 11, 11, 5),
(212, 11, 12, 5),
(213, 11, 13, 5),
(214, 11, 14, 5),
(215, 11, 15, 5),
(216, 11, 16, 5),
(217, 11, 17, 5),
(218, 11, 18, 5),
(219, 11, 19, 5),
(220, 11, 20, 5),
(221, 12, 1, 5),
(222, 12, 2, 5),
(223, 12, 3, 5),
(224, 12, 4, 5),
(225, 12, 5, 5),
(226, 12, 6, 5),
(227, 12, 7, 5),
(228, 12, 8, 5),
(229, 12, 9, 5),
(230, 12, 10, 5),
(231, 12, 11, 5),
(232, 12, 12, 5),
(233, 12, 13, 5),
(234, 12, 14, 5),
(235, 12, 15, 5),
(236, 12, 16, 5),
(237, 12, 17, 5),
(238, 12, 18, 5),
(239, 12, 19, 5),
(240, 12, 20, 5);

--
-- Indizes für die Tabelle `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventoryID`);


--
-- AUTO_INCREMENT für Tabelle `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 241;

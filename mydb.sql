-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2022 at 04:57 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `igra`
--

CREATE TABLE `igra` (
  `datum` date NOT NULL,
  `vreme` time NOT NULL,
  `Pozorište_id_pozorišta` int(11) NOT NULL,
  `Predstava_id_predstave` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `igra`
--

INSERT INTO `igra` (`datum`, `vreme`, `Pozorište_id_pozorišta`, `Predstava_id_predstave`) VALUES
('2021-09-20', '12:00:00', 1, 5),
('2021-08-21', '19:30:00', 2, 1),
('2021-10-04', '11:30:00', 3, 4),
('2020-01-15', '15:00:00', 4, 4),
('2021-09-09', '10:30:00', 5, 2),
('2021-04-09', '09:00:00', 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `karta`
--

CREATE TABLE `karta` (
  `id_karte` int(11) NOT NULL,
  `vreme` time NOT NULL,
  `cena` int(11) NOT NULL,
  `datum` date NOT NULL,
  `naziv_predstave` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karta`
--

INSERT INTO `karta` (`id_karte`, `vreme`, `cena`, `datum`, `naziv_predstave`) VALUES
(0, '19:00:00', 1500, '2021-01-01', 'Jugojugoslavija'),
(2, '14:00:00', 700, '2020-01-01', 'Hotel 88'),
(3, '13:00:00', 250, '2021-06-05', 'Tiho teče Misisipi');

-- --------------------------------------------------------

--
-- Table structure for table `kupuje`
--

CREATE TABLE `kupuje` (
  `id_karte` int(11) NOT NULL,
  `id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kupuje`
--

INSERT INTO `kupuje` (`id_karte`, `id`) VALUES
(3, '11111111111');

-- --------------------------------------------------------

--
-- Table structure for table `posetilac`
--

CREATE TABLE `posetilac` (
  `JMBG` varchar(100) NOT NULL,
  `ime` varchar(45) NOT NULL,
  `prezime` varchar(45) NOT NULL,
  `broj_telefona` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posetilac`
--

INSERT INTO `posetilac` (`JMBG`, `ime`, `prezime`, `broj_telefona`) VALUES
('1111111111111', 'Ljiljana', 'Matic', '0645643452'),
('1234567', 'Milica', 'Matić', '657894765'),
('2222222222222', 'Aleksandar', 'Matic', '0643235678'),
('2345671', 'Lana', 'Ilić', '656546678'),
('2345678', 'Milena', 'Erić', '656667778'),
('3333333333333', 'Bojana', 'Ivovic', '0698786342'),
('4444444444444', 'Katarina', 'Vuletic', '0656245678'),
('5555555555555', 'Milica', 'Lukic', '0699998765'),
('8976521', 'Aca', 'Lekić', '615556667'),
('987654', 'Miodrag', 'Pešić', '609876564');

-- --------------------------------------------------------

--
-- Table structure for table `pozorište`
--

CREATE TABLE `pozorište` (
  `id_pozorišta` int(11) NOT NULL,
  `naziv` varchar(45) NOT NULL,
  `grad` varchar(45) DEFAULT NULL,
  `ulica` varchar(45) DEFAULT NULL,
  `broj` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pozorište`
--

INSERT INTO `pozorište` (`id_pozorišta`, `naziv`, `grad`, `ulica`, `broj`) VALUES
(0, 'Srpsko narodno pozorište', 'Novi Sad', 'Pozorišni trg', 1),
(1, 'Jugoslovensko dramsko pozorište', 'Beograd', 'Kralja Milana', 50),
(2, 'Pozorište na Terazijama', 'Beograd', 'Terazije', 29),
(3, 'Narodno pozorište Leskovac', 'Leskovac', 'Koste Stamenkovića', 22),
(4, 'Šabačko pozorište', 'Šabac', 'Karađorđeva', 22),
(5, 'Kruševačko pozorište', 'Kruševac', 'Vidovdanska', 26);

-- --------------------------------------------------------

--
-- Table structure for table `predstava`
--

CREATE TABLE `predstava` (
  `id_predstave` int(11) NOT NULL,
  `Naziv` varchar(45) NOT NULL,
  `Režija` varchar(45) NOT NULL,
  `Scenario` varchar(30) NOT NULL,
  `Trajanje` int(11) NOT NULL,
  `Godina` year(4) NOT NULL,
  `Ocena` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `predstava`
--

INSERT INTO `predstava` (`id_predstave`, `Naziv`, `Režija`, `Scenario`, `Trajanje`, `Godina`, `Ocena`) VALUES
(0, 'Let iznad kukavičjeg gnezda', 'Dejl Vaserman', 'Žanko Tomić', 2, 2005, '9'),
(1, 'BAAL', 'Bertolt Breht', 'Dijego de Breja', 1, 2021, '7'),
(2, 'Divlje meso', 'Jagoš Marković', 'Goran Stefanovski', 1, 2018, '8'),
(3, 'Hotel 88', 'Staša Koprivica', 'Noel Kauard', 3, 2020, '5'),
(4, 'Tiho teče Misisipi', 'Ivica Buljan', 'Vladimir Tabašević', 2, 1997, '10'),
(5, 'Jugojugoslavija', 'Bon Park', 'Bon Park', 4, 2021, '9');

-- --------------------------------------------------------

--
-- Table structure for table `projection`
--

CREATE TABLE `projection` (
  `id_karte` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `cena` int(11) NOT NULL,
  `datum` date NOT NULL,
  `vreme` time NOT NULL,
  `prostor` int(11) NOT NULL,
  `ulaz` int(11) NOT NULL,
  `red` int(11) NOT NULL,
  `sediste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projection`
--

INSERT INTO `projection` (`id_karte`, `naziv`, `cena`, `datum`, `vreme`, `prostor`, `ulaz`, `red`, `sediste`) VALUES
(1, 'BAAL', 500, '2022-01-12', '19:00:00', 2, 1, 9, 10),
(4, 'Hotel 88', 600, '2022-02-01', '18:00:00', 1, 4, 5, 19),
(5, 'Jugojugoslavija\r\n', 300, '2022-01-12', '20:00:00', 1, 1, 0, 10),
(6, 'Let iznad kukavičjeg gnezda\r\n', 300, '2022-01-05', '20:00:00', 2, 1, 5, 5),
(8, 'Tiho teče Misisipi', 200, '2022-01-05', '18:00:00', 2, 6, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `prostor`
--

CREATE TABLE `prostor` (
  `id_prostora` varchar(45) NOT NULL,
  `kapacitet` int(11) NOT NULL,
  `Pozorište_id_pozorišta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prostor`
--

INSERT INTO `prostor` (`id_prostora`, `kapacitet`, `Pozorište_id_pozorišta`) VALUES
('0', 200, 0),
('1', 80, 0),
('2', 500, 2),
('3', 450, 3),
('4', 220, 1),
('5', 180, 4),
('6', 60, 5);

-- --------------------------------------------------------

--
-- Table structure for table `radnik`
--

CREATE TABLE `radnik` (
  `JMBG` int(11) NOT NULL,
  `ime` varchar(45) DEFAULT NULL,
  `prezime` varchar(45) DEFAULT NULL,
  `posao` varchar(45) DEFAULT NULL,
  `plata` varchar(45) DEFAULT NULL,
  `datum_zapošljavanja` varchar(45) DEFAULT NULL,
  `Pozorište_id_pozorišta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `radnik`
--

INSERT INTO `radnik` (`JMBG`, `ime`, `prezime`, `posao`, `plata`, `datum_zapošljavanja`, `Pozorište_id_pozorišta`) VALUES
(2147483647, 'Nikola', 'Nikolić', 'glumac', '50000', '2012:08:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sedište`
--

CREATE TABLE `sedište` (
  `br_sedišta` int(11) NOT NULL,
  `red` int(11) NOT NULL,
  `Prostor_id_prostora` varchar(45) NOT NULL,
  `Prostor_Pozorište_id_pozorišta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sedište`
--

INSERT INTO `sedište` (`br_sedišta`, `red`, `Prostor_id_prostora`, `Prostor_Pozorište_id_pozorišta`) VALUES
(0, 1, '0', 0),
(1, 1, '0', 0),
(2, 1, '0', 0),
(3, 1, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ulaz`
--

CREATE TABLE `ulaz` (
  `id_ulaza` int(11) NOT NULL,
  `kapacitet` int(11) NOT NULL,
  `Prostor_id_prostora` varchar(45) NOT NULL,
  `Prostor_Pozorište_id_pozorišta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ulaz`
--

INSERT INTO `ulaz` (`id_ulaza`, `kapacitet`, `Prostor_id_prostora`, `Prostor_Pozorište_id_pozorišta`) VALUES
(0, 20, '0', 0),
(1, 50, '0', 0),
(2, 70, '1', 0),
(3, 90, '2', 2),
(4, 75, '5', 4),
(5, 80, '6', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ulazi`
--

CREATE TABLE `ulazi` (
  `vreme` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Ulaz_id_ulaza` int(11) NOT NULL,
  `Ulaz_Prostor_id_prostora` varchar(45) NOT NULL,
  `Ulaz_Prostor_Pozorište_id_pozorišta` int(11) NOT NULL,
  `Posetilac_JMBG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ulazi`
--

INSERT INTO `ulazi` (`vreme`, `Ulaz_id_ulaza`, `Ulaz_Prostor_id_prostora`, `Ulaz_Prostor_Pozorište_id_pozorišta`, `Posetilac_JMBG`) VALUES
('0000-00-00 00:00:00', 0, '0', 0, 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `igra`
--
ALTER TABLE `igra`
  ADD PRIMARY KEY (`Pozorište_id_pozorišta`,`Predstava_id_predstave`),
  ADD KEY `fk_Igra_Predstava1_idx` (`Predstava_id_predstave`);

--
-- Indexes for table `karta`
--
ALTER TABLE `karta`
  ADD PRIMARY KEY (`id_karte`);

--
-- Indexes for table `posetilac`
--
ALTER TABLE `posetilac`
  ADD PRIMARY KEY (`JMBG`);

--
-- Indexes for table `pozorište`
--
ALTER TABLE `pozorište`
  ADD PRIMARY KEY (`id_pozorišta`);

--
-- Indexes for table `predstava`
--
ALTER TABLE `predstava`
  ADD PRIMARY KEY (`id_predstave`);

--
-- Indexes for table `projection`
--
ALTER TABLE `projection`
  ADD PRIMARY KEY (`id_karte`);

--
-- Indexes for table `prostor`
--
ALTER TABLE `prostor`
  ADD PRIMARY KEY (`id_prostora`,`Pozorište_id_pozorišta`),
  ADD KEY `fk_Prostor_Pozorište1_idx` (`Pozorište_id_pozorišta`);

--
-- Indexes for table `radnik`
--
ALTER TABLE `radnik`
  ADD PRIMARY KEY (`JMBG`),
  ADD KEY `fk_Radnik_Pozorište1_idx` (`Pozorište_id_pozorišta`);

--
-- Indexes for table `sedište`
--
ALTER TABLE `sedište`
  ADD PRIMARY KEY (`br_sedišta`,`red`,`Prostor_id_prostora`,`Prostor_Pozorište_id_pozorišta`),
  ADD KEY `fk_Sedište_Prostor1_idx` (`Prostor_id_prostora`,`Prostor_Pozorište_id_pozorišta`);

--
-- Indexes for table `ulaz`
--
ALTER TABLE `ulaz`
  ADD PRIMARY KEY (`id_ulaza`,`Prostor_id_prostora`,`Prostor_Pozorište_id_pozorišta`),
  ADD KEY `fk_Ulaz_Prostor1_idx` (`Prostor_id_prostora`,`Prostor_Pozorište_id_pozorišta`);

--
-- Indexes for table `ulazi`
--
ALTER TABLE `ulazi`
  ADD PRIMARY KEY (`Ulaz_id_ulaza`,`Ulaz_Prostor_id_prostora`,`Ulaz_Prostor_Pozorište_id_pozorišta`,`Posetilac_JMBG`),
  ADD KEY `fk_Ulazi_Ulaz1_idx` (`Ulaz_id_ulaza`,`Ulaz_Prostor_id_prostora`,`Ulaz_Prostor_Pozorište_id_pozorišta`),
  ADD KEY `fk_Ulazi_Posetilac1_idx` (`Posetilac_JMBG`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projection`
--
ALTER TABLE `projection`
  MODIFY `id_karte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `igra`
--
ALTER TABLE `igra`
  ADD CONSTRAINT `fk_Igra_Pozorište1` FOREIGN KEY (`Pozorište_id_pozorišta`) REFERENCES `pozorište` (`id_pozorišta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Igra_Predstava1` FOREIGN KEY (`Predstava_id_predstave`) REFERENCES `predstava` (`id_predstave`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `prostor`
--
ALTER TABLE `prostor`
  ADD CONSTRAINT `fk_Prostor_Pozorište1` FOREIGN KEY (`Pozorište_id_pozorišta`) REFERENCES `pozorište` (`id_pozorišta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `radnik`
--
ALTER TABLE `radnik`
  ADD CONSTRAINT `fk_Radnik_Pozorište1` FOREIGN KEY (`Pozorište_id_pozorišta`) REFERENCES `pozorište` (`id_pozorišta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sedište`
--
ALTER TABLE `sedište`
  ADD CONSTRAINT `fk_Sedište_Prostor1` FOREIGN KEY (`Prostor_id_prostora`,`Prostor_Pozorište_id_pozorišta`) REFERENCES `prostor` (`id_prostora`, `Pozorište_id_pozorišta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ulaz`
--
ALTER TABLE `ulaz`
  ADD CONSTRAINT `fk_Ulaz_Prostor1` FOREIGN KEY (`Prostor_id_prostora`,`Prostor_Pozorište_id_pozorišta`) REFERENCES `prostor` (`id_prostora`, `Pozorište_id_pozorišta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ulazi`
--
ALTER TABLE `ulazi`
  ADD CONSTRAINT `fk_Ulazi_Ulaz1` FOREIGN KEY (`Ulaz_id_ulaza`,`Ulaz_Prostor_id_prostora`,`Ulaz_Prostor_Pozorište_id_pozorišta`) REFERENCES `ulaz` (`id_ulaza`, `Prostor_id_prostora`, `Prostor_Pozorište_id_pozorišta`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 10 dec 2015 om 15:58
-- Serverversie: 5.5.20
-- PHP-Versie: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myreddit`
--
CREATE DATABASE `myreddit` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `myreddit`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Url` varchar(255) NOT NULL,
  `Summary` varchar(1024) NOT NULL,
  `Author` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Gegevens worden uitgevoerd voor tabel `artikel`
--

INSERT INTO `artikel` (`Id`, `Title`, `Created`, `Url`, `Summary`, `Author`) VALUES
(1, '''Hoverboard'' ook in Nederland verboden op de weg ', '2015-12-03 13:09:58', 'http://www.nu.nl/gadgets/4176150/hoverboard-in-nederland-verboden-weg.html', 'Zelfbalancerende scooters, van merken als Airboard of Oxboard, mogen in Nederland niet de weg op. Ook op de stoep is het niet toegestaan om op een ''hoverboard'' te rijden. Dat bevestigt het ministerie van Infrastructuur en Milieu donderdag na berichtgeving van de NOS.  De scooters zijn een soort Segways, maar zonder stuur dat de gebruiker vasthoudt. De apparaten, die meestal tussen de 500 en 800 euro kosten, worden aangedreven door een elektromotor en kunnen rond de twintig kilometer per uur.  Volgens het ministerie gaat het om een "gemotoriseerde tweewieler", die moet zijn gekeurd als bromfiets. "Dat betekent dat ze een Europese typegoedkeuring moet hebben om op de openbare weg te mogen rijden. Dat kan alleen niet omdat de airboard geen zitplaats heeft."  Bijzondere bromfiets De Segway, die ook geen zitplaats heeft, valt onder de categorie ''bijzondere bromfiets''. Producenten van een vervoersmiddel kunnen een aanvraag doen om zo''n speciale toewijzing te krijgen.  Het ministerie zegt voor deze speciale keuring ', 'NU.nl'),
(3, '''Kindertablet van Vtech kwetsbaar voor datadiefstal''', '2015-12-03 13:36:06', 'http://www.nu.nl/gadgets/4176049/kindertablet-van-vtech-kwetsbaar-datadiefstal.html', 'De kindertablet Innotab Max van Vtech bevat een oude kwetsbaarheid, die het makkelijk maakt om er data vanaf te halen.  Dat stelt beveiligingsonderzoeker Ken Munro van Pen Test Partners. De ontdekking volgt op een grootschalige hack bij Vtech, waarbij ook gegevens van 124.730 Nederlandse kinderen werden gestolen.  De tablet gebruikt een oude Rockchip-processor die het makkelijk maakt om data af te lezen. Hierdoor is alle gebruikersdata onbeveiligd te bekijken door het apparaat in herstelmodus te zetten. Bij andere chips in Android-tablets is de data niet te lezen  Een datadief kan een usb-kabel aansluiten, de linkercursor ingedrukt houden en vervolgens de stroomknop drie seconden indrukken. De herstelmodus wordt dan geactiveerd en de data doorgestuurd.   Volgens Munro zit er ook een verwijderbare SD-kaart op het moederbord van de tablet bevestigd, die kan worden verwijderd om snel alle data mee te nemen. Tot slot is een speciale debugmodus binnen Android standaard op de tablets geactiveerd, waardoor een aanva', 'NU.nl'),
(4, '''Smartwatch HTC verschijnt in februari'' ', '2015-12-03 13:36:19', 'http://www.nu.nl/gadgets/4176137/smartwatch-htc-verschijnt-in-februari.html', 'De eerste smartwatch van HTC, waar al lange tijd over wordt gespeculeerd, verschijnt in februari. Dat stelt althans de bekende Twitter-gebruiker Evleaks, die regelmatig correcte informatie over onaangekondigde smartphones en andere elektronica naar buiten brengt.  De smartwatch werd eigenlijk al in 2014 verwacht, maar HTC stelde de komst van het horloge toen uit. Volgens het bedrijf was er nog geen goede reden om het apparaat de hele dag te dragen. Er gingen nog geruchten over een verschijning in 2015, maar daar kwam niets van terecht.  In maart onthulde HTC nog wel een eigen fitnessarmband, de Grip. Dat apparaat is echter nog niet op de markt gekomen en moet nu in 2016 verschijnen, samen met een hele reeks aan producten die worden ontwikkeld in samenwerking met kledingmerk Under Armour.  Over de smartwatch is nog bijna niets bekend. Volgens een recent gerucht werkt HTC aan een ronde smartwatch met het besturingssysteem Android Wear. Er zijn nog geen afbeeldingen van het horloge verschenen. In februari kondig', 'NU.nl'),
(6, 'henk', '2015-12-09 10:18:10', 'https://www.google.nl', 'Gave read use way make spot how nor. In daughter goodness an likewise oh consider at procured wandered. Songs words wrong by me hills heard timed. Happy eat may doors songs. Be ignorant so of suitable dissuade weddings together. Least whole timed we is. An smallness deficient discourse do newspaper be an eagerness continued. Mr my ready guest ye after short at. ', 'henk'),
(8, 'sakulkh@gmail.com', '2015-12-09 10:19:25', 'https://www.youtube.com/watch?v=Qg1qZq5yjps', 'Gave read use way make spot how nor. In daughter goodness an likewise oh consider at procured wandered. Songs words wrong by me hills heard timed. Happy eat may doors songs. Be ignorant so of suitable dissuade weddings together. Least whole timed we is. An smallness deficient discourse do newspaper be an eagerness continued. Mr my ready guest ye after short at. ', 'Lukas Klein Haneveld'),
(50, 'Test', '2015-12-09 11:15:31', 'https://www.google.nl', 'Als t goed is is deze post nu op de homepage geplaatst :D', 'Zathoxic'),
(59, 'esg', '2015-12-10 14:58:06', 'arhd', 'adh', 'EWGS');
--
-- Database: `test`
--
CREATE DATABASE `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

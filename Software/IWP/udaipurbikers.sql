-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 27, 2017 at 09:50 PM
-- Server version: 5.1.37
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `udaipurbikers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(16) NOT NULL,
  `role` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `role`) VALUES
(5, 'Himani', 'admin', 'admin', 'Superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `image`) VALUES
(1, 'Beauty Of Udaipur', 'beautiful udp.jpg'),
(2, 'Romantic Rides', 'couple.jpg'),
(3, 'Romantic Rides', 'couple2.jpg'),
(4, 'Explore the City', 'customer bike.jpg'),
(5, 'Travel Fun', 'images.jpg'),
(6, 'Explore with your group', 'mass cycles.jpg'),
(7, 'Desi Swag', 'uncle.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `maincategory`
--

CREATE TABLE IF NOT EXISTS `maincategory` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `maincategory` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `maincategory`
--

INSERT INTO `maincategory` (`id`, `maincategory`) VALUES
(3, 'Bikes'),
(1, 'Cars'),
(2, 'Scootys'),
(4, 'Cycles');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `maincategory` varchar(200) NOT NULL,
  `subcategory` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `details` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `maincategory`, `subcategory`, `price`, `details`, `image`) VALUES
(22, 'La Ferrari aperta', '1', '9', 'Rs. 13,000', 'A maximum speed over >350 km/h <7 sec From 0 To 200km/h Total maximum power of 963 cv', 'laferrari-aperta-lineup.jpg'),
(21, '488 Spider', '1', '9', 'Rs. 15,000', 'Retractable hard-top  A Maximum torque 760 Nm at 3000 rpm', '488-spider-lineup.jpg'),
(20, '812 Superfast', '1', '9', 'Rs. 10,000', 'Max. power output 588 kW (800 cv) at 8,500 rpm Dry weight/power 1.9 kg 0-200 km/h 7.9 sec', 'ferrari-812-superfast.jpg'),
(23, 'A3', '1', '8', 'Rs. 6,000', 'Convertible,Sedan | Petrol,Diesel | Automatic', 'audi-a3.jpg'),
(24, 'A4', '1', '8', 'Rs. 8,000', 'Sedan | Diesel,Petrol | Automatic', 'audi-a4.png'),
(25, 'A6', '1', '8', 'Rs. 10,000', 'Sedan | Diesel,Petrol | Automatic', 'audi-a6.png'),
(26, 'Bentley Bentayga', '1', '7', 'Rs. 15,000', 'SUV , Automatic , 8.5 Kmpl , Petrol', 'bentley-bentayga.jpg'),
(27, 'Bentley Flying Spur', '1', '7', 'Rs. 10,000', 'Sedan , Automatic , 8.5  - 10.2 Kmpl , Petrol', 'bentley-flying-spur.jpg'),
(28, 'Bentley Mulsanne', '1', '7', 'Rs. 20,000', 'Sedan , Automatic , 7.7 Kmpl , Petrol', 'bentley-mulsanne.jpg'),
(29, 'BMW 6 Series', '1', '6', 'Rs. 6,000', 'Coupe , Diesel , Automatic', 'bmw-6-series.png'),
(30, 'BMW 7 Series', '1', '6', 'Rs. 7,000', 'Sedan , Diesel / Petrol , Automatic', 'bmw-7-series.png'),
(31, 'BMW i8', '1', '6', 'Rs. 9000', 'Coupe , Petrol , Automatic', 'bmw-i8.png'),
(32, 'Jaguar XF', '1', '10', 'RS. 3,000', '5000 cc , 8.6 Kmpl , Diesel / Petrol', 'jaguar_xf.jpg'),
(33, 'Jaguar F-Pace', '1', '10', 'Rs. 5,000', '2993 cc , 17.85 Kmpl , Diesel', 'fpace.jpg'),
(34, 'Jaguar XE', '1', '10', 'Rs. 7,000', '1999 cc , 13.5 Kmpl , Diesel / Petrol', 'jaguar_xe.jpg'),
(35, 'Honda Aviatore', '2', '11', 'Rs. 500', '60 Kmpl , 109.19 cc', 'v_honda-aviator-disc.jpg'),
(36, 'Honda Activa i', '2', '11', 'Rs. 700', '66 Kmpl , 109.19 cc', 'v_activa-i-std.jpg'),
(37, 'Honda CLIQ', '2', '11', 'Rs. 600', '60 Kmpl , 109.19 cc', 'v_cliq-std.png'),
(38, 'Vespa 125', '2', '12', 'Rs. 1000', '60 Kmpl , 125 cc', 'vespa-125.jpg'),
(39, 'Vespa VXL 125', '2', '12', 'Rs. 1,200', '45 Kmpl , 125 cc', 'vespa-vxl-125.png'),
(40, 'Vespa Elegante 150', '2', '12', 'Rs. 1,500', '45 Kmpl , 150 cc', 'v_elegante.png'),
(41, 'Yamaha Fascino', '2', '13', 'Rs. 900', '66 Kmpl , 113 cc', 'yamaha fascino.png'),
(42, 'Yamaha Ray ZR', '2', '13', 'Rs. 900', '66 Kmpl , 113 cc', 'yamaha ray-zr.jpg'),
(43, 'Yamaha Alpha', '2', '13', 'Rs. 900', '66 Kmpl , 113 cc', 'yamaha alpha.jpg'),
(44, 'Aprilia SR 150', '2', '14', 'Rs. 1,500', '37.8 Kmpl , 154.8 cc', 'aprilia-sr-150-std.png'),
(45, 'Aprilia SRV 850', '2', '14', 'Rs. 3,000', '14 Kmpl , 839.3 cc', 'v_abs.jpg'),
(46, 'Aprilia SR 150 Race', '2', '14', 'Rs. 1,500', '37.8 Kmpl , 154.8 cc', 'v_sr-150-race-edition.png'),
(47, 'Palatino Sunshine', '2', '15', 'Rs. 500', 'Easy to ride', 'v_palatino-sunshine-std.jpg'),
(48, 'Palatino Angel', '2', '15', 'Rs. 500', 'Easy to ride', 'v_palatino-angel-std.jpg'),
(49, 'Palatino Princess', '2', '15', 'Rs. 500', 'Easy to ride', 'v_palatino-princess-std.jpg'),
(50, 'Yamaha Vmax', '3', '5', 'Rs 3000', '11 Kmpl , 1679 cc', 'Yamaha vmax-std.jpg'),
(51, 'Yamaha MT 09', '3', '5', '19 Kmpl , 847 cc', 'Rs. 1,500', 'yamaha mt-09-std.jpg'),
(52, 'Yamaha FZ-FI', '2', '13', 'Rs. 900', '45 Kmpl , 149 cc', 'yamaha fz-fi-v2.jpg'),
(53, 'BMW S1000 RR', '3', '3', 'Rs. 2000', '12 Kmpl , 999 cc', 'v_bmw-s-1000-rr.jpg'),
(54, 'BMW R nineT', '3', '3', 'Rs. 2000', '16 Kmpl , 1170 cc', 'v_bmw-r-ninet-roadster.jpg'),
(55, 'BMW K 1600', '3', '3', 'Rs. 2000', '13 Kmpl , 1649 cc', 'v_bmw-k-1600-gt.jpg'),
(56, 'Ducati Diavel', '3', '2', 'Rs. 1,500', '10 Kmpl , 1198.4 cc', 'v_ducati-diavel-standard.jpg'),
(57, 'Ducati Scrambler', '3', '2', 'Rs. 1,500', '20 Kmpl , 803 cc', 'v_ducati-scrambler-icon.jpg'),
(58, 'Honda CBR 1000RR', '3', '5', 'Rs. 1000', '18 Kmpl , 999 cc', 'honda cbr-1000-rr-fireblade.png'),
(59, 'Honda Dream Yuga', '3', '4', 'Rs. 500', '72 Kmpl , 109.19 cc', 'honda dream-yuga-drum.jpg'),
(60, 'Honda Goldwing', '3', '4', 'Rs. 1500', '18.42 Kmpl , 1832 cc', 'honda gold-wing-standard.jpg'),
(61, 'Bajaj Dominar 400', '3', '1', 'Rs. 700', '35 Kmpl , 373.3 cc', 'bajaj dominar-400-std.jpg'),
(62, 'Bajaj Pulsar RS200', '3', '1', 'Rs. 700', '35 Kmpl , 199.5 cc', 'bajaj pulsar-rs-200-std.png'),
(63, 'Bajaj V', '3', '1', 'Rs. 500', '57 Kmpl , 125 cc', 'bajaj v-15.jpg'),
(64, 'Hero Super Star', '4', '16', 'Rs. 200', '26 T 18 Speed Dwirm Glsy - Black & Orange', 'Hero super star.jpg'),
(65, 'Hero Octane', '4', '16', 'Rs. 200', '26 T Endevour 21 Speed Adult Cycle - White (18" Frame)', 'Hero Octane.jpg'),
(66, 'Cyclux A1', '4', '17', 'Rs. 200', '43cm (17â€³) Steel, Mig Welded', 'Cyclux-A-1.jpg'),
(67, 'Cyclux GT Plus', '4', '17', 'Rs. 200', '45cm (18â€³) Steel, Tig Welded, Suspension Frame', 'GTX-Cycle-598x600.jpg'),
(68, 'Cyclux ORB', '4', '17', 'Rs. 200', '46cm (18â€³) Steel, Tig Welded', 'Cyclux-ORB.jpg'),
(69, 'Skye WSD 29ER', '4', '18', 'Rs. 300', ' SR Suntour M-3030, coil spring, preload, 75mm travel', 'skye 29 esdr.jpg'),
(70, 'Skye WSD', '4', '18', 'Rs. 400', 'SR Suntour M-3030, WSD Rider Right coil spring, preload, 75mm travel', 'skye wsd.jpg'),
(71, '4300 D', '4', '18', 'Rs. 500', 'SR Suntour XCM w/30mm stanchions, coil spring, preload adjustment, 100mm travel', '4300d.jpg'),
(72, 'Atlas Torpedo', '4', '19', 'Rs. 200', 'Double Disks 26 Inchs Bicycle', 'atlas torpedo.jpg'),
(73, 'Atlas Astro', '4', '19', 'Rs. 200', 'IBC 26T Single Speed ATAST26SRDBK Mountain Cycle', 'atlas astro.jpg'),
(74, 'Atlas Cooper', '4', '19', 'Rs. 200', 'IBC DS26T Single Speed CODSBR26 Mountain Cycle', 'Atlas cooper.jpeg'),
(75, 'Deluxe', '4', '20', 'Rs. 100', 'Centre & side pull braking system', 'Deluxe.png'),
(76, 'Super Deluxe', '4', '20', 'Rs. 100', 'Centre & side pull braking system', 'Super_Deluxe.png'),
(77, 'Supreme', '4', '20', 'Rs. 100', 'Centre & side pull braking system', 'Supreme_Gents.png');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Username` (`username`,`password`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `username`, `password`) VALUES
(14, 'Esha Sarupria', 'eshasarupria@yahoo.com', 'Esha', 'eshasarupriya'),
(12, 'Dilisha Jain', 'dilishajain@orkut.com', 'dilisha', 'dilishajain'),
(10, 'Charvi Nahar', 'charvinahar@gmail.com', 'charvi', 'charvinahar'),
(8, 'Bob John', 'bobjohn@hotmail.com', 'Bob', 'bob'),
(15, 'Sai', 'vfvv', 'ffv', 'fvvf'),
(16, 'Fenny Thangachan', 'fennythangachan@yahoo.com', 'Fenny', 'fennythangachan');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subcategory` varchar(200) NOT NULL,
  `maincategoryid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `subcategory`, `maincategoryid`) VALUES
(9, 'Ferrari', 1),
(8, 'Audi', 1),
(7, 'Bentley', 1),
(5, 'Yamaha', 3),
(3, 'BMW', 3),
(2, 'Ducati', 3),
(6, 'BMW', 1),
(4, 'Honda', 3),
(1, 'Bajaj', 3),
(10, 'Jaguar', 1),
(11, 'Honda', 2),
(12, 'Vespa', 2),
(13, 'Yamaha', 2),
(14, 'Aprilia', 2),
(15, 'Palatino', 2),
(16, 'Hero', 4),
(17, 'Avon', 4),
(18, 'Firefox', 4),
(19, 'Atlas', 4),
(20, 'BSA', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

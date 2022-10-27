-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 08:14 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `housing-co`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `cardrent`
-- (See below for the actual view)
--
CREATE TABLE `cardrent` (
`flat_id` int(11)
,`location` varchar(100)
,`city` varchar(100)
,`rent_amount` int(11)
,`image` varchar(500)
,`time` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cardsale`
-- (See below for the actual view)
--
CREATE TABLE `cardsale` (
`flat_id` int(11)
,`location` varchar(100)
,`city` varchar(100)
,`totalcost` double
,`image` varchar(500)
,`time` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `feedbackbuilder`
--

CREATE TABLE `feedbackbuilder` (
  `val` int(50) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedbackuser`
--

CREATE TABLE `feedbackuser` (
  `val` int(50) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbackuser`
--

INSERT INTO `feedbackuser` (`val`, `name`, `email`, `question`) VALUES
(2, 'Jaydeep', 'jv@gmail.com', 'hkajhfkjsdf');

-- --------------------------------------------------------

--
-- Table structure for table `flat`
--

CREATE TABLE `flat` (
  `flat_id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `location` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `amenities` varchar(500) NOT NULL,
  `area` double NOT NULL,
  `image` varchar(500) NOT NULL,
  `image1` varchar(500) NOT NULL,
  `image2` varchar(500) NOT NULL,
  `image3` varchar(500) NOT NULL,
  `time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flat`
--

INSERT INTO `flat` (`flat_id`, `uid`, `bid`, `location`, `address`, `city`, `description`, `amenities`, `area`, `image`, `image1`, `image2`, `image3`, `time`) VALUES
(34, NULL, 1, 'Boarding house', 'Evangelista St. Barangay 23, Batangas City.', 'Barangay 23', 'ROOM FLOOR PRICE GOOD FOR TWO (02) &quot;ADULT&quot; LADIES OR COUPLES. A boarding house near the batangas municipal market that has INCLUSIVE WATER &amp; ELECTRICITY. NO FLOOD.', '6 Rooms (4person), 2 Bathrooms, 240 sqm', 4, 'img3.jpg', 'img1.jpg', 'img2.jpg', 'img4.jpg', '2021-04-05 11:41:05'),
(35, NULL, 2, 'Apartment', 'Sitio Calumpang, Alangilan, Batangas, 4200', 'Alangilan', 'Combination Door Lock for Security -Laundry Area Available &amp; FREE  -Well Maintained and Spacious Rooms -CCTV Monitored  -Toilet &amp; Bathroom in every room (w/ shower)  Strong Water Supply  -Cabin Type Double Deck Beds for Privacy are available  -Mattress provided (Pillows &amp; Linens c/o Tenants)  -Individual Cabinets with lock -Individual Electric Fan provided (One per occupant) -Receiving Area for visitors  -Dining Area &amp; Kitchen available for free with Privilege use of Gas Stove (L', '2 Bedroom (4 person per bedroom), 2 Bathroom', 6, 'img5.jpg', 'img6.jpg', 'img7.jpg', 'img8.jpg', '2021-04-05 11:44:04'),
(36, NULL, 3, 'Apartment', 'Padre Buan Road, Sitio Calumpang, Alangilan, Batangas City', 'Alangilan', 'Each room can be occupied as solo for only 3K or couple for only 4K  inclusive of water, electricity and gas stove shared use of tv, ref and 2 cr , no flood', '2 Bedrooms (2 to 4 persons), 2 Bathrooms, 1 kitchen', 8, 'img12.jpg', 'img11.jpg', 'img10.jpg', 'img9.jpg', '2021-04-05 11:48:11'),
(37, NULL, 3, 'Apartment', 'Mars St., Golden Country Homes, Alangilan, Batangas City.', 'Alangilan', 'Accepting Male and Female boarders. An ideal dorm for students with online class and online workers.', 'Soft and comfortable single bed with proper ventilation.  Spacious kitchen and dining area. Provided work area for studying and online class or work.  24 hrs. Cctv security. 24 hrs. Hot and cold drinking water available. Food/meals are available. Cold and chilled drinks available. Grocery store in premise. Fiber optic high speed internet connection.', 4, 'img13.jpg', 'img14.jpg', 'img15.jpg', 'img16.jpg', '2021-04-05 11:51:01'),
(38, NULL, 3, 'Dormitory', 'De joya Compound, Kumintang Ilaya, Batangas City. Near Jollibee Kumintang', 'Kumintang', 'Spacious 40 sqm that is ideal for families and big groups.', '2 bedrooms with toilet and bath. Dining kitchen and another common cr. Wide and spacious living room perfect for a little gathering and group studying.', 5, 'img23.jpg', 'img22.jpg', 'img24.jpg', 'img21.jpg', '2021-04-05 11:53:54'),
(39, NULL, 1, 'Boarding house', 'Sterling Tramo, Alangilan, Batangas City. Near Alangilan Barangay Hall.', 'Alangilan', 'Male and female bedspaces available. Quiet location, peaceful setting. 10 mins ride to BatStateU Alangilan, Westmead International School, Alangilan Central Elementary School, Marian Learning Center and Science High School Inc., and Bambino. 15 mins. ride to SM Hypermarket.', 'Furnished with Uratex bedding and storage cabinets. Laundry facilities available. Community cafeteria with free wifi, complementary mineral water. Tricycles readily available.', 4, 'img18.jpg', 'img17.jpg', 'img19.jpg', 'img20.jpg', '2021-04-05 11:55:38'),
(40, NULL, 1, 'Apartment', 'Sampaguita street, Brgy. 19, Poblacion, Batangas City', 'Barangay 19', '2 storey type Apartment Guaranteed to relax freely and study freely, about 5minutes walk to BSU Main 1, near Batangas Coliseum.', 'High Speed Internet Access Wi-Fi, Air Conditioning, Ceiling Fans, Smoke Free, Kitchen, Furnished', 4, 'img25.jpg', 'img26.jpg', 'img27.jpg', 'img28.jpg', '2021-04-05 11:58:36'),
(41, NULL, 2, 'Apartment', 'P.Gomez Street, Barangay 18, Poblacion, Batangas City', 'Barangay 18', 'Near St. Bridget College, Minor Basilica of the immaculate conception,Batangas National HS, 7/11, Plaza Mabini, BSU Main 1,Batangas Municipal Market, Batangas City Hall. total of 5 Unit bedroom Flexible options to fit your needs Each of our carefully curated private units are equipped with a  dedicated living area, kitchen, and bathroom.', 'High Speed Internet Access Wi-Fi, Smoke Free, Kitchen, Wood Floors, Elevated House, Furnished', 4, 'img29.jpg', 'img30.jpg', 'img31.jpg', 'img32.jpg', '2021-04-05 12:02:29'),
(42, NULL, 2, 'Dormitory', 'Universe 1 Street, Golden Country Homes Subdivision, Alangilan, Batangas City', 'Alangilan', 'Total of 6 Units bedroom Located on a quiet stretch of Universe 1 Street,Combine this with expansive common grounds including linens, towels, sundries, glassware and silverware. Cleaning including in your Rental fee.', 'High Speed Internet Access Wi-Fi, Fans, Smoke Free, Kitchen, Tile Floors, Furnished', 6, 'img36.jpg', 'img33.jpg', 'img34.jpg', 'img35.jpg', '2021-04-05 12:07:39'),
(43, NULL, 4, 'Boarding house', 'Ma. Cristina Subdivision, Kumintang Ibaba 4200 Batangas City, Philippines', 'Kumintang', 'Newly constructed ladies boarding house for students and professionals. walking distance to Lyceum of the Philippines University, City Engineers Office and TESDA Batangas Regional Hospital', 'With two bedrooms, one storage room and one toilet, up and down townhouse, with small terrace and wash area, with abundant supply 24/7 of water (water district), water and electricity bills to be shared by boarders / tenants', 6, 'img40.jpg', 'img39.jpg', 'img38.jpg', 'img37.jpg', '2021-04-05 12:16:04'),
(44, NULL, 5, 'Boarding house', 'Pinagpala Road (Babao Road) near the Basketball Court of Libjo Central, Libjo, Batangas City', 'Libjo', 'Bedspace Available for Boarding House near SM Batangas City. with two bedrooms, one storage room and one toilet, up and down townhouse. good for family, working bachelors and students. Walking distance to SM-Batangas City, only 10 minutes walking through the shortcut access pathway', 'with abundant supply 24/7 of water (water district), water and electricity bills to be shared by boarders / tenants, with small terrace and wash area', 6, 'img41.jpg', 'img42.jpg', 'img43.jpg', 'img44.jpg', '2021-04-06 05:33:31'),
(45, NULL, 6, 'Boarding house', 'Galaxy St. Golden Country Homes Alangilan Batangas City', 'Alangilan', 'Brand New Boarding House for male and female bedspacers', 'With Electricity &amp; strong water supply (minimum payment to be paid by owner), with cabinets in every room and with electric fan, electric stove, water heater, and electric kettle, with laundry area and clean CR, with safe and secure environment', 6, 'img47.jpg', 'img48.jpg', 'img46.jpg', 'img45.jpg', '2021-04-06 05:43:24'),
(46, NULL, 7, 'Apartment', '72 Rizal Ave, Barangay 21, Batangas city 4200 Batangas', 'Barangay 21', 'Newly constructed ladies Aparment for students and. walking distance to Batangas State University Main Campus, Baymall, and lumang Palengke', 'Included: water, electricity, Internet (25mbps pldt homefbr), 2 Bedroom,  2 Bathrooms ,  45 sqm', 7, 'img51.jpg', 'img49.jpg', 'img52.jpg', 'img50.jpg', '2021-04-06 06:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `UID` int(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`UID`, `username`, `password`, `name`, `surname`, `email`, `phone`) VALUES
(1, 'manassinkar', 'manas12345', 'Manas', 'Sinkar', 'manas.sinkar@gmail.com', '9022942188'),
(2, 'jaydeep', 'jaydeep12345', 'Jaydeep', 'Vaghasiya', 'jaydeep@gmail.com', '9854545452'),
(3, 'parththosani', 'parth12345', 'Parth', 'Thosani', 'parth@gmail.com', '9854512541'),
(4, 'freshten10', 'asdasdasdasd', 'Freshten', 'Rosales', 'LacsonRosales@gmail.com', '9294736825'),
(5, 'Mauii', 'asdasdasdasd', 'Maurine', 'Lopez', 'maurinejoy.lopez@gmail.com', '9294731111'),
(6, 'knbuh', 'asdasdasdasd', 'Virchito', 'Ibasan', 'virchito.ibasan@gmail.com', '9294732222'),
(7, 'azure', 'asdasdasdasd', 'Von', 'Borja', 'von.christian.borja@gmail.com', '9294733333');

-- --------------------------------------------------------

--
-- Table structure for table `login_builder`
--

CREATE TABLE `login_builder` (
  `BID` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `lno` int(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `phoneno` decimal(10,0) NOT NULL,
  `nameorg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_builder`
--

INSERT INTO `login_builder` (`BID`, `username`, `lno`, `password`, `emailid`, `phoneno`, `nameorg`) VALUES
(1, 'manasbuilder', 12345, 'manas12345', 'manas@gmail.com', '9022942188', 'Manas Delos Reyes'),
(2, 'jaydeepbuilder', 56789, 'jaydeep12345', 'jaydeep@gmail.com', '9565112574', 'Jaydeep Tejoso'),
(3, 'parthbuilder', 13579, 'parth12345', 'parth@gmail.com', '9885846564', 'Parth Fernandez'),
(4, 'ownerbuilder', 2147483647, 'asdasdasdasd', 'LacsonRosales@gmail.com', '9294736825', 'Bats Org'),
(5, 'genesisresidence', 2147483647, 'genesis12345', 'genesis@gmail.com', '9294731122', 'Genesis Gan'),
(6, 'cherbuilder', 2147483647, 'chercher12', 'chercher@gmail.com', '9394979532', 'Cher Mineses'),
(7, 'nlardero', 2147483647, 'nlardero12345', 'nlardero@gmail.com', '9293733823', 'Nino Lardero');

-- --------------------------------------------------------

--
-- Table structure for table `packers_movers`
--

CREATE TABLE `packers_movers` (
  `pid` int(11) NOT NULL,
  `name_org` varchar(50) NOT NULL,
  `contact_no` decimal(11,0) NOT NULL,
  `email_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packers_movers`
--

INSERT INTO `packers_movers` (`pid`, `name_org`, `contact_no`, `email_id`) VALUES
(1, 'abcd', '9022942188', 'manas.sinkar@gmail.com'),
(2, 'pqrs', '7977261097', 'manas.sinkar@spit.ac.in'),
(3, 'Manas ', '6846565465', 'manas@gmail.com'),
(4, 'parth', '7208201778', 'thosaniparth@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `UID` int(100) NOT NULL,
  `buyer` varchar(100) NOT NULL,
  `Bank_name` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `Loan_details` varchar(10000) NOT NULL,
  `cheque_number` int(100) NOT NULL,
  `payment_opt` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `flat_id` int(11) NOT NULL,
  `rent_amount` int(11) NOT NULL,
  `deposit_amount` int(11) NOT NULL,
  `time_period` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`flat_id`, `rent_amount`, `deposit_amount`, `time_period`) VALUES
(3, 15000, 50000, 5),
(4, 20000, 60000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `flat_id` int(11) NOT NULL,
  `totalcost` double NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`flat_id`, `totalcost`, `rate`) VALUES
(1, 3600000, 8000),
(2, 4500000, 9000),
(6, 11000000, 20000),
(7, 123, 1),
(8, 1231, 1),
(9, 1, 1),
(11, 4, 2),
(14, 16, 4),
(15, 1, 1),
(16, 1, 1),
(17, 4, 2),
(18, 9, 3),
(19, 1, 1),
(20, 1, 1),
(22, 1, 1),
(23, 4, 2),
(24, 9, 3),
(25, 16, 4),
(26, 4000, 1000),
(27, 4800, 1200),
(28, 5200, 1300),
(29, 5200, 1300),
(30, 6000, 1500),
(31, 3000, 1500),
(32, 7800, 1300),
(33, 16, 4),
(34, 4800, 1200),
(35, 7200, 1200),
(36, 8800, 1100),
(37, 6000, 1500),
(38, 5000, 1000),
(39, 6000, 1500),
(40, 6000, 1500),
(41, 5600, 1400),
(42, 6600, 1100),
(43, 7800, 1300),
(44, 6000, 1000),
(45, 7200, 1200),
(46, 8400, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_projects`
--

CREATE TABLE `upcoming_projects` (
  `upid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `comp_time` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `cardrent`
--
DROP TABLE IF EXISTS `cardrent`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cardrent`  AS SELECT `flat`.`flat_id` AS `flat_id`, `flat`.`location` AS `location`, `flat`.`city` AS `city`, `rent`.`rent_amount` AS `rent_amount`, `flat`.`image` AS `image`, `flat`.`time` AS `time` FROM (`flat` join `rent` on(`flat`.`flat_id` = `rent`.`flat_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `cardsale`
--
DROP TABLE IF EXISTS `cardsale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cardsale`  AS SELECT `flat`.`flat_id` AS `flat_id`, `flat`.`location` AS `location`, `flat`.`city` AS `city`, `sale`.`totalcost` AS `totalcost`, `flat`.`image` AS `image`, `flat`.`time` AS `time` FROM (`flat` join `sale` on(`flat`.`flat_id` = `sale`.`flat_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flat`
--
ALTER TABLE `flat`
  ADD PRIMARY KEY (`flat_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`UID`);

--
-- Indexes for table `login_builder`
--
ALTER TABLE `login_builder`
  ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `packers_movers`
--
ALTER TABLE `packers_movers`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`flat_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`flat_id`);

--
-- Indexes for table `upcoming_projects`
--
ALTER TABLE `upcoming_projects`
  ADD PRIMARY KEY (`upid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flat`
--
ALTER TABLE `flat`
  MODIFY `flat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `UID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login_builder`
--
ALTER TABLE `login_builder`
  MODIFY `BID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `packers_movers`
--
ALTER TABLE `packers_movers`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `upcoming_projects`
--
ALTER TABLE `upcoming_projects`
  MODIFY `upid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

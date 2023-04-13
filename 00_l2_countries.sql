-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2023 at 05:40 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `00_l2_countries`
--

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `Animal_ID` int(11) NOT NULL,
  `Animal_Name` varchar(50) NOT NULL,
  `Mythical` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`Animal_ID`, `Animal_Name`, `Mythical`) VALUES
(1, 'Andean condor', 0),
(2, 'Antelope', 0),
(3, 'Bat', 0),
(4, 'Bear', 0),
(5, 'Beaver', 0),
(6, 'Bee-eater', 0),
(7, 'Bison', 0),
(8, 'Black panther', 0),
(9, 'Black-crested antshrike', 0),
(10, 'Blue rock thrush', 0),
(11, 'Brown bear', 0),
(12, 'Brunei Crested Fireback', 0),
(13, 'Bull', 0),
(14, 'Camel', 0),
(15, 'Cattle', 0),
(16, 'Chamois', 0),
(17, 'Chollima (mythical horse)', 1),
(18, 'Cow', 0),
(19, 'Crane', 0),
(20, 'Crocodile', 0),
(21, 'Deer', 0),
(22, 'Dodo', 0),
(23, 'Dolphin', 0),
(24, 'Double Tailed Lion', 1),
(25, 'Dove', 0),
(26, 'Eagle', 0),
(27, 'Elephant', 0),
(28, 'Flamingo', 0),
(29, 'Fox', 0),
(30, 'Frog', 0),
(31, 'Fruit Dove', 0),
(32, 'Gazelle', 0),
(33, 'Giant Panda', 0),
(34, 'Gilbert\'s Whistler', 0),
(35, 'Giraffe', 0),
(36, 'Goat', 0),
(37, 'Gorilla', 0),
(38, 'Green pheasant', 0),
(39, 'Gyrfalcon', 0),
(40, 'Horse', 0),
(41, 'Hyena', 0),
(42, 'Iguana', 0),
(43, 'Jaguar', 0),
(44, 'Kagu', 0),
(45, 'Kangaroo', 0),
(46, 'Kiwi', 0),
(47, 'Komodo dragon', 0),
(48, 'Lemur', 0),
(49, 'Leopard', 0),
(50, 'Leopard', 0),
(51, 'Lesser Kiskadee', 0),
(52, 'Lion', 0),
(53, 'Lynx', 0),
(54, 'Mariana Fruit Dove', 0),
(55, 'Mongoose', 0),
(56, 'Moose', 0),
(57, 'Motmot', 0),
(58, 'Niue Blue Nacaduba niueensis', 0),
(59, 'Okapi', 0),
(60, 'Oryx', 0),
(61, 'Owl', 0),
(62, 'Ox', 0),
(63, 'Pacific fruit bat', 0),
(64, 'Palmchat', 0),
(66, 'Parrot', 0),
(67, 'Peacock', 0),
(68, 'Peccary', 0),
(69, 'Pelican', 0),
(70, 'Pigeon', 0),
(71, 'Raggiana bird-of-paradise', 0),
(72, 'Red-billed streamertail', 0),
(73, 'Red-billed tropicbird', 0),
(74, 'Resplendent quetzal', 0),
(75, 'Rooster', 0),
(76, 'Rufous hornero', 0),
(77, 'Scarlet ibis', 0),
(78, 'Sea turtle', 0),
(79, 'Shark', 0),
(80, 'Sheep', 0),
(81, 'Springbok', 0),
(82, 'Swan', 0),
(83, 'Tapir', 0),
(84, 'Tiger', 0),
(85, 'Tooth-billed pigeon (Manumea)', 0),
(86, 'Torogoz', 0),
(87, 'Tortoise', 0),
(88, 'Trogon', 0),
(89, 'Turtle', 0),
(90, 'Turul', 1),
(91, 'Vanuatu megapode', 0),
(92, 'Venezuelan troupial', 0),
(93, 'Vicuna', 0),
(94, 'Wagtail', 0),
(95, 'Water Buffalo', 0),
(96, 'Wild dog', 0),
(97, 'Wildebeest', 0),
(98, 'Wolf', 0),
(99, 'Zebra', 0);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `ID` int(11) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Region_ID` int(11) NOT NULL,
  `SubRegion_ID` int(11) NOT NULL,
  `SubRegion2_ID` int(11) NOT NULL,
  `Official_Name` varchar(100) NOT NULL,
  `Animal_ID` int(11) NOT NULL,
  `Quality` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`ID`, `Country`, `Region_ID`, `SubRegion_ID`, `SubRegion2_ID`, `Official_Name`, `Animal_ID`, `Quality`) VALUES
(1, 'Afghanistan', 1, 17, 20, 'Islamic Emirate of Afghanistan', 49, 35),
(2, 'Albania', 2, 21, 27, 'Republic of Albania', 26, 55),
(3, 'Algeria', 3, 12, 27, 'People\'s Democratic Republic of Algeria', 29, 52),
(4, 'American Samoa', 4, 15, 27, 'American Samoa', 85, 0),
(5, 'Andorra', 2, 21, 27, 'Principality of Andorra', 15, 0),
(6, 'Angola', 3, 11, 22, 'Republic of Angola', 9, 36),
(7, 'Argentina', 6, 16, 8, 'Argentine Republic', 76, 56),
(8, 'Australia', 4, 1, 27, 'Commonwealth of Australia', 45, 76),
(9, 'Austria', 2, 26, 27, 'Republic of Austria', 26, 69),
(10, 'Azerbaijan', 1, 25, 27, 'Republic of Azerbaijan', 40, 46),
(11, 'Bahamas', 5, 2, 27, 'Commonwealth of the Bahamas', 28, 0),
(12, 'Bahrain', 1, 25, 23, 'Kingdom of Bahrain', 60, 59),
(13, 'Bangladesh', 1, 20, 17, 'People\'s Republic of Bangladesh', 84, 45),
(14, 'Barbados', 5, 2, 27, 'Barbados', 69, 0),
(15, 'Belarus', 2, 7, 27, 'Republic of Belarus', 7, 44),
(16, 'Belgium', 2, 26, 27, 'Kingdom of Belgium', 52, 63),
(17, 'Belize', 5, 3, 8, 'Belize', 83, 0),
(18, 'Benin', 3, 24, 22, 'Republic of Benin', 52, 0),
(19, 'Bermuda', 5, 13, 27, 'Bermuda (alt: the Bermudas; Somers Isles)', 85, 71),
(20, 'Bhutan', 1, 20, 17, 'Kingdom of Bhutan', 36, 0),
(21, 'Bolivia', 6, 16, 8, 'Plurinational State of Bolivia', 1, 51),
(22, 'Bosnia and Herzegovina', 2, 21, 27, 'Bosnia and Herzegovina', 4, 54),
(23, 'Botswana', 3, 19, 22, 'Republic of Botswana', 99, 0),
(24, 'Brazil', 6, 16, 8, 'Federative Republic of Brazil', 43, 50),
(25, 'Brunei', 1, 18, 27, 'Brunei Darussalam', 12, 0),
(26, 'Bulgaria', 2, 7, 27, 'Republic of Bulgaria', 52, 62),
(27, 'Burkina Faso', 3, 24, 22, 'Burkina Faso', 40, 0),
(28, 'Burundi', 3, 5, 22, 'Republic of Burundi', 49, 41),
(29, 'Cambodia', 1, 18, 27, 'Kingdom of Cambodia', 49, 44),
(30, 'Cameroon', 3, 11, 22, 'Republic of Cameroon', 52, 34),
(31, 'Canada', 5, 13, 27, 'Dominion of Canada', 5, 69),
(32, 'Cape Verde', 3, 24, 22, 'Republic of Cabo Verde', 5, 0),
(33, 'Chad', 3, 11, 22, 'Republic of Chad', 52, 32),
(34, 'China', 1, 6, 27, 'People\'s Republic of China', 33, 57),
(35, 'Colombia', 6, 16, 8, 'Republic of Colombia', 1, 48),
(36, 'Comoros', 3, 5, 22, 'Union of the Comoros', 3, 0),
(37, 'Cook Islands', 4, 15, 27, 'Cook Islands', 63, 0),
(38, 'Costa Rica', 5, 3, 8, 'Republic of Costa Rica', 21, 58),
(39, 'Croatia', 2, 21, 27, 'Republic of Croatia', 6, 65),
(40, 'Cuba', 5, 2, 27, 'Republic of Cuba', 88, 0),
(41, 'Cyprus', 2, 7, 23, 'Republic of Cyprus', 80, 69),
(42, 'Czech Republic', 2, 7, 27, 'Czech Republic', 0, 0),
(43, 'Denmark', 2, 14, 27, 'Kingdom of Denmark', 82, 67),
(44, 'Djibouti', 3, 5, 22, 'Republic of Djibouti', 8, 0),
(45, 'Dominica', 5, 2, 27, 'Commonwealth of Dominica', 66, 0),
(46, 'Dominican Republic', 5, 2, 27, 'Dominican Republic', 64, 50),
(47, 'DR Congo', 3, 11, 22, 'Democratic Republic of the Congo', 59, 29),
(48, 'Ecuador', 6, 16, 8, 'Republic of Ecuador', 1, 54),
(49, 'Egypt', 3, 12, 23, 'Arab Republic of Egypt', 26, 50),
(50, 'El Salvador', 5, 3, 8, 'Republic of El Salvador', 86, 45),
(51, 'Equatorial Guinea', 3, 11, 22, 'Republic of Equatorial Guinea', 66, 0),
(52, 'Eritrea', 3, 5, 22, 'State of Eritrea', 14, 0),
(53, 'Estonia', 2, 14, 27, 'Republic of Estonia', 4, 63),
(54, 'Eswatini', 3, 19, 22, 'Kingdom of Eswatini', 52, 0),
(55, 'Faroe Islands', 2, 14, 27, 'Faroe Islands', 11, 0),
(56, 'Fiji', 4, 9, 27, 'Republic of Fiji', 42, 0),
(57, 'Finland', 2, 14, 27, 'Republic of Finland', 4, 68),
(58, 'French Polynesia', 4, 15, 27, 'French Polynesia', 78, 0),
(59, 'Gabon', 3, 11, 22, 'Gabonese Republic', 8, 43),
(60, 'Gambia', 3, 24, 22, 'Republic of the Gambia', 41, 46),
(61, 'Georgia', 1, 25, 27, 'Republic of Georgia', 49, 57),
(62, 'Germany', 2, 26, 27, 'Federal Republic of Germany', 26, 69),
(63, 'Ghana', 3, 24, 22, 'Republic of Ghana', 26, 49),
(64, 'Greece', 2, 21, 27, 'Hellenic Republic', 23, 65),
(65, 'Grenada', 5, 2, 27, 'Grenada', 25, 0),
(66, 'Guam', 4, 10, 27, 'Guam', 31, 0),
(67, 'Guatemala', 5, 3, 8, 'Republic of Guatemala', 74, 46),
(68, 'Guinea', 3, 24, 22, 'Republic of Guinea', 52, 0),
(69, 'Guyana', 6, 16, 8, 'Co-operative Republic of Guyana', 43, 0),
(70, 'Haiti', 5, 2, 27, 'Republic of Haiti', 88, 0),
(71, 'Honduras', 5, 3, 8, 'Republic of Honduras', 21, 46),
(72, 'Hong Kong', 1, 6, 27, 'Hong Kong Special Administrative Region of the People\'s Republic of China', 33, 74),
(73, 'Hungary', 2, 7, 27, 'Hungary', 15, 63),
(74, 'India', 1, 20, 17, 'Republic of India', 84, 52),
(75, 'Indonesia', 1, 18, 27, 'Republic of Indonesia', 47, 51),
(76, 'Iran', 1, 20, 23, 'Islamic Republic of Iran', 52, 42),
(77, 'Iraq', 1, 25, 23, 'Republic of Iraq', 26, 34),
(78, 'Ireland', 2, 14, 27, 'Republic of Ireland', 21, 62),
(79, 'Italy', 2, 21, 27, 'Italian Republic/Republic of Italy', 98, 64),
(80, 'Ivory Coast', 3, 24, 22, 'Ivory Coast', 27, 42),
(81, 'Jamaica', 5, 2, 27, 'Jamaica', 72, 50),
(82, 'Japan', 1, 6, 27, 'Japan', 38, 70),
(83, 'Jordan', 1, 25, 23, 'Hashemite Kingdom of Jordan', 60, 54),
(84, 'Kazakhstan', 1, 4, 27, 'Republic of Kazakhstan', 49, 52),
(85, 'Kiribati', 4, 10, 27, 'Republic of Kiribati', 34, 0),
(86, 'Kuwait', 1, 25, 23, 'State of Kuwait', 60, 57),
(87, 'Kyrgyzstan', 1, 4, 17, 'Kyrgyz Republic', 49, 46),
(88, 'Laos', 1, 18, 27, 'Lao People\'s Democratic Republic', 27, 48),
(89, 'Latvia', 2, 14, 27, 'Republic of Latvia', 94, 60),
(90, 'Lesotho', 3, 19, 22, 'Kingdom of Lesotho', 97, 43),
(91, 'Liberia', 3, 24, 22, 'Republic of Liberia', 55, 0),
(92, 'Libya', 3, 12, 27, 'State of Libya', 52, 0),
(93, 'Lithuania', 2, 14, 27, 'Republic of Lithuania', 4, 60),
(94, 'Luxembourg', 2, 26, 27, 'Grand Duchy of Luxembourg', 52, 71),
(95, 'Macau', 1, 6, 27, 'Macao Special Administrative Region of the People\'s Republic of China', 33, 0),
(96, 'Madagascar', 3, 5, 22, 'Republic of Madagascar', 48, 50),
(97, 'Malawi', 3, 5, 22, 'Republic of Malawi', 49, 49),
(98, 'Malaysia', 1, 18, 27, 'Federation of Malaysia', 84, 58),
(99, 'Maldives', 1, 20, 17, 'Republic of Maldives', 89, 57),
(100, 'Mali', 3, 24, 22, 'Republic of Mali', 52, 0),
(101, 'Malta', 2, 21, 27, 'Republic of Malta', 10, 72),
(102, 'Marshall Islands', 4, 10, 27, 'Republic of the Marshall Islands', 79, 0),
(103, 'Mauritania', 3, 24, 22, 'Islamic Republic of Mauritania', 26, 0),
(104, 'Mauritius', 3, 5, 22, 'Republic of Mauritius', 22, 0),
(105, 'Mexico', 5, 3, 8, 'United Mexican States', 26, 52),
(106, 'Micronesia', 4, 10, 27, 'Federated States of Micronesia', 3, 0),
(107, 'Moldova', 2, 7, 27, 'Republic of Moldova', 62, 51),
(108, 'Monaco', 2, 26, 27, 'Principality of Monaco', 26, 0),
(109, 'Mongolia', 1, 6, 27, 'Mongolia', 40, 54),
(110, 'Montenegro', 2, 21, 27, 'People\'s Republic of Montenegro', 26, 56),
(111, 'Morocco', 3, 12, 27, 'Kingdom of Morocco', 52, 56),
(112, 'Mozambique', 3, 5, 22, 'Republic of Mozambique', 27, 36),
(113, 'Myanmar', 1, 18, 27, 'Republic of the Union of Myanmar', 67, 0),
(114, 'Namibia', 3, 19, 22, 'Republic of Namibia', 41, 0),
(115, 'Nauru', 4, 10, 27, 'Republic of Nauru', 61, 0),
(116, 'Nepal', 1, 20, 17, 'Federal Democratic Republic of Nepal', 18, 49),
(117, 'Netherlands', 2, 26, 27, 'Kingdom of the Netherlands', 52, 67),
(118, 'New Caledonia', 4, 9, 27, 'New Caledonia', 44, 0),
(119, 'New Zealand', 4, 1, 27, 'New Zealand', 46, 68),
(120, 'Nicaragua', 5, 3, 8, 'Republic of Nicaragua', 57, 42),
(121, 'Niger', 3, 24, 22, 'Republic of the Niger', 35, 0),
(122, 'Nigeria', 3, 24, 22, 'Federal Republic of Nigeria', 26, 32),
(123, 'Niue', 4, 15, 27, 'Niue', 58, 0),
(124, 'North Korea', 1, 6, 27, 'Democratic People\'s Republic of Korea', 17, 0),
(125, 'Northern Mariana Islands', 4, 10, 27, 'Commonwealth of the Northern Mariana Islands', 54, 0),
(126, 'Norway', 2, 14, 27, 'Kingdom of Norway', 56, 69),
(127, 'Oman', 1, 25, 23, 'Sultanate of Oman', 60, 59),
(128, 'Pakistan', 1, 20, 17, 'Islamic Republic of Pakistan', 36, 47),
(129, 'Palau', 4, 10, 27, 'Republic of Palau', 3, 0),
(130, 'Panama', 5, 3, 8, 'Republic of Panama', 26, 0),
(131, 'Papua New Guinea', 4, 9, 27, 'Independent State of Papua New Guinea', 71, 0),
(132, 'Paraguay', 6, 16, 8, 'Republic of Paraguay', 68, 56),
(133, 'Peru', 6, 16, 8, 'Republic of Peru', 0, 55),
(134, 'Philippines', 1, 18, 27, 'Republic of the Philippines', 95, 47),
(135, 'Poland', 2, 7, 27, 'Republic of Poland', 26, 64),
(136, 'Portugal', 2, 21, 27, 'Portuguese Republic', 98, 69),
(137, 'Qatar', 1, 25, 23, 'State of Qatar', 60, 66),
(138, 'Republic of the Congo', 3, 11, 22, 'Republic of the Congo', 37, 0),
(139, 'Russia', 2, 7, 27, 'Russian Federation', 4, 49),
(140, 'Saint Lucia', 5, 2, 27, 'Saint Lucia', 66, 0),
(141, 'Saint Vincent and the Grenadines', 5, 2, 27, 'Saint Vincent and the Grenadines', 66, 0),
(142, 'Samoa', 4, 15, 27, 'Independent State of Samoa', 70, 57),
(143, 'San Marino', 2, 21, 27, 'Republic of San Marino', 40, 74),
(144, 'Sao Tome and Principe', 3, 11, 22, 'Democratic Republic of Sao Tome and Principe', 30, 0),
(145, 'Saudi Arabia', 1, 25, 23, 'Kingdom of Saudi Arabia', 40, 60),
(146, 'Senegal', 3, 24, 22, 'Republic of Senegal', 52, 53),
(147, 'Serbia', 2, 21, 27, 'Republic of Serbia', 26, 53),
(148, 'Seychelles', 3, 5, 22, 'Republic of Seychelles', 87, 0),
(149, 'Sierra Leone', 3, 24, 22, 'Republic of Sierra Leone', 52, 41),
(150, 'Singapore', 1, 18, 27, 'Republic of Singapore', 52, 71),
(151, 'Slovenia', 2, 21, 27, 'Republic of Slovenia', 53, 66),
(152, 'Solomon Islands', 4, 9, 27, 'Solomon Islands', 66, 0),
(153, 'Somalia', 3, 5, 22, 'Federal Republic of Somalia', 49, 0),
(154, 'South Africa', 3, 19, 22, 'Republic of South Africa', 81, 52),
(155, 'South Korea', 1, 6, 27, 'Republic of Korea', 84, 69),
(156, 'South Sudan', 3, 11, 22, 'Republic of South Sudan', 26, 0),
(157, 'Spain', 2, 21, 27, 'Kingdom of Spain', 13, 71),
(158, 'Sri Lanka', 1, 20, 17, 'Democratic Socialist Republic of Sri Lanka', 27, 55),
(159, 'Sudan', 3, 12, 27, 'Republic of the Sudan', 35, 30),
(160, 'Suriname', 6, 16, 8, 'Republic of Suriname', 51, 48),
(161, 'Sweden', 2, 14, 27, 'Kingdom of Sweden', 56, 68),
(162, 'Switzerland', 2, 26, 27, 'Swiss Confederation', 18, 74),
(163, 'Syria', 1, 25, 23, 'Syrian Arab Republic', 4, 0),
(164, 'Taiwan', 1, 6, 27, 'Republic of China', 4, 0),
(165, 'Tajikistan', 1, 4, 17, 'Republic of Tajikistan', 49, 42),
(166, 'Tanzania', 3, 5, 22, 'United Republic of Tanzania', 49, 49),
(167, 'Thailand', 1, 18, 27, 'Kingdom of Thailand', 27, 58),
(168, 'Timor-Leste', 1, 18, 27, 'Democratic Republic of Timor-Leste', 20, 51),
(169, 'Togo', 3, 24, 22, 'Togolese Republic', 52, 42),
(170, 'Tonga', 4, 15, 27, 'Kingdom of Tonga', 73, 0),
(171, 'Trinidad and Tobago', 5, 2, 27, 'Republic of Trinidad and Tobago', 77, 51),
(172, 'Tunisia', 3, 12, 27, 'Republic of Tunisia', 52, 55),
(173, 'Turkey', 1, 25, 23, 'Republic of Turkey', 98, 54),
(174, 'Turkmenistan', 1, 4, 17, 'Turkmenistan', 40, 0),
(175, 'Tuvalu', 4, 15, 27, 'Tuvalu', 25, 0),
(176, 'Uganda', 3, 5, 22, 'Republic of Uganda', 19, 44),
(177, 'Ukraine', 2, 7, 27, 'Ukraine', 98, 50),
(178, 'United Arab Emirates', 1, 25, 23, 'United Arab Emirates', 60, 67),
(179, 'United Kingdom', 2, 14, 27, 'United Kingdom of Great Britain and Northern Ireland', 52, 61),
(180, 'United States', 5, 13, 27, 'United States of America', 26, 67),
(181, 'Uruguay', 6, 16, 8, 'Eastern Republic of Uruguay / Oriental Republic of Uruguay', 82, 67),
(182, 'Uzbekistan', 1, 4, 17, 'Republic of Uzbekistan', 49, 0),
(183, 'Vanuatu', 4, 9, 27, 'Republic of Vanuatu', 91, 0),
(184, 'Vatican City', 2, 21, 27, 'Vatican City State', 25, 0),
(185, 'Venezuela', 6, 16, 8, 'Bolivarian Republic of Venezuela', 92, 0),
(186, 'Vietnam', 1, 18, 27, 'Socialist Republic of Viet Nam', 95, 52),
(187, 'Zambia', 3, 5, 22, 'Republic of Zambia', 26, 44),
(188, 'Zimbabwe', 3, 5, 22, 'Republic of Zimbabwe', 2, 39);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `Region_ID` int(11) NOT NULL,
  `Region` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`Region_ID`, `Region`) VALUES
(1, 'Asia'),
(2, 'Europe'),
(3, 'Africa'),
(4, 'Oceania'),
(5, 'North America'),
(6, 'South America');

-- --------------------------------------------------------

--
-- Table structure for table `sub_region`
--

CREATE TABLE `sub_region` (
  `Sub_Region_ID` int(11) NOT NULL,
  `Sub_Region` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_region`
--

INSERT INTO `sub_region` (`Sub_Region_ID`, `Sub_Region`) VALUES
(1, 'Australia and New Zealand'),
(2, 'Caribbean'),
(3, 'Central America'),
(4, 'Central Asia'),
(5, 'Eastern Africa'),
(6, 'Eastern Asia'),
(7, 'Eastern Europe'),
(8, 'Latin America'),
(9, 'Melanesia'),
(10, 'Micronesia'),
(11, 'Middle Africa'),
(12, 'Northern Africa'),
(13, 'Northern America'),
(14, 'Northern Europe'),
(15, 'Polynesia'),
(16, 'South America'),
(17, 'South Central Asia'),
(18, 'South-Eastern Asia'),
(19, 'Southern Africa'),
(20, 'Southern Asia'),
(21, 'Southern Europe'),
(22, 'Sub-Saharan Africa'),
(23, 'The Middle East'),
(24, 'Western Africa'),
(25, 'Western Asia'),
(26, 'Western Europe'),
(27, 'None');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`Animal_ID`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`Region_ID`);

--
-- Indexes for table `sub_region`
--
ALTER TABLE `sub_region`
  ADD PRIMARY KEY (`Sub_Region_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `Animal_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `Region_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_region`
--
ALTER TABLE `sub_region`
  MODIFY `Sub_Region_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

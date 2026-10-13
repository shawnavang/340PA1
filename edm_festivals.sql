-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: student-databases.cvode4s4cwrc.us-west-2.rds.amazonaws.com
-- Generation Time: May 05, 2026 at 07:04 PM
-- Server version: 8.0.42
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SHAWNAVANG`
--

-- --------------------------------------------------------

--
-- Table structure for table `edm_festivals`
--

CREATE TABLE `edm_festivals` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `date_of_event` varchar(255) NOT NULL,
  `cost_of_event` int DEFAULT NULL,
  `indoor` tinyint NOT NULL,
  `outdoor` tinyint(1) NOT NULL,
  `camping` tinyint(1) NOT NULL,
  `vip` tinyint(1) NOT NULL,
  `genres` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `edm_festivals`
--

INSERT INTO `edm_festivals` (`id`, `name`, `location`, `date_of_event`, `cost_of_event`, `indoor`, `outdoor`, `camping`, `vip`, `genres`) VALUES
(1, 'Sacred Acre Festival', 'Ninilchik, Alaska', 'September 11-13', 204, 0, 1, 1, 1, 'Dubstep, Other'),
(2, 'Breakaway Arizona', 'Phoenix, Arizona', 'April 24-25', 169, 0, 1, 0, 1, 'Dubstep, House, Techno, Drum and Bass, Other'),
(3, 'Core Festival', 'Los Angeles, California', 'May 2-3', 159, 0, 1, 0, 1, 'House, Techno'),
(4, 'The Untz Festival', 'Browns Valley, California', 'May 8-10', 402, 0, 1, 1, 1, 'Dubstep, Drum and Bass, House, Other'),
(5, 'Lightning In A Bottle', 'Kern County, California', 'May 20-24', 395, 0, 1, 1, 1, 'Dubstep, House, Techno, Other'),
(6, 'Zombie Apocalypse', 'Long Beach, California', 'June 19-20', 179, 0, 1, 0, 1, 'Dupstep, Drum and Bass, Other'),
(7, 'Into The Horizon', 'San Diego, California', 'June 27-28', 190, 0, 1, 0, 1, 'House, Drum and Bass'),
(8, 'Day Trip Festival', 'Long Beach, California', 'June 27-28', 297, 1, 0, 0, 1, 'House'),
(9, 'Lost In Dreams Festival', 'Los Angeles, California', 'July 11-12', 169, 0, 1, 0, 1, 'House, Dubstep, Trap, Other'),
(10, 'Dirty Bird Campout X Northern Nights ', 'Piercy, California', 'July 17-19', 374, 0, 1, 1, 1, 'Dubstep, Drum and Bass, House, Other'),
(11, 'Hard Summer Fest ', 'Los Angeles, California', 'August 1-2', 282, 0, 1, 0, 1, 'House, Drum and Bass, Trap, Other'),
(12, 'Wasteland Weekend ', 'San Bernardino, California', 'September 30-October 4', 139, 1, 0, 0, 1, 'House, Techno, Hardstyle'),
(13, 'Nocturnal Wonderland', 'San Bernardino, California', 'September 19-20', 189, 0, 1, 1, 1, 'Dubstep, Drum and Bass, House, Techno, Other'),
(14, 'Niteharts Festival', 'San Diego, California', 'October 9-11', 384, 1, 0, 0, 1, 'Dubstep, Trap, House'),
(15, 'Dreamstate SoCal', 'Long Beach, California', 'November 20-21', 179, 0, 1, 0, 1, 'Techno, Other'),
(16, 'Escape Halloween', 'San Bernardino, California', 'October 30-31', 239, 1, 0, 0, 1, 'Dubstep, Drum and Bass, House, Techno, Hardstyle, Other'),
(17, 'Cloud City Music Festival ', 'Greenwood Village, Colorado', 'April 17-18', 180, 0, 1, 0, 1, 'House, Other'),
(18, 'Excision\'s Mile High', 'Greenwood Village, Colorado', 'July 31-August 1', 179, 0, 1, 0, 1, 'Dubstep'),
(19, 'EDC Orlando', 'Orlando, Florida', 'November 6-8', 269, 0, 1, 0, 1, 'Dubstep, House, Techno, Drum and Bass, Other'),
(20, 'Cyclops Cove ', 'Boca Raton, Florida', 'December 4-6', 270, 0, 1, 0, 1, 'Dubstep, Trap, Drum and Bass'),
(21, 'Ultra Music Festival', 'Miami, Florida', 'March 26-28', 359, 0, 1, 0, 1, 'Dubstep, House, Drum and Bass, Techno, Other'),
(22, 'EDSea', 'Miami, Florida', 'January 26-31', 2259, 1, 1, 1, 1, 'Dubstep, House, Techno, Drum and Bass, Other'),
(23, 'Resonate Suwannee', 'Live Oak, Florida', 'April 16-18', 335, 0, 1, 1, 1, 'Other'),
(24, 'Breakaway Tampa', 'Tampa, Florida', 'April 17-18', 175, 0, 1, 0, 1, 'Dubstep, Trap, House, Techno'),
(25, 'Forbidden Kingdom', 'Orlando, Florida', 'April 25-26', 299, 0, 1, 0, 1, 'Dubstep, Trap, Drum and Bass, Other'),
(26, 'Terp Float Festival', 'Tahlequah, Oklahoma', 'July 30-August 2', 99, 0, 1, 1, 1, 'Dubstep, Other'),
(27, 'Big Dub Festival', 'Artemas, Pennsylvania', 'July 21-25', 361, 0, 1, 1, 1, 'Dubstep, Other'),
(28, 'Elements Music and Arts Festival', 'Long Pond, Pennsylvania', 'August 7-9', 399, 0, 1, 1, 1, 'Dubstep, Trap, House, Drum and Bass, Techno'),
(29, 'Breakaway Philadelphia', 'Chester, Philadephia', 'September 11-12', 149, 0, 1, 0, 1, 'Dubstep, House, Drum and Bass'),
(30, 'High Tide Festival', 'Charleston, South Carolina', 'June 5-6', 169, 0, 1, 0, 1, 'House, Other'),
(31, 'Ubbi Dubbi Festival', 'Fort Worth, Texas', 'April 24-25', 199, 0, 1, 0, 1, 'Dubstep, House, Trap, Drum and Bass'),
(32, 'Illfest', 'Austin, Texas', 'May 29-31', 259, 0, 1, 0, 1, 'Dubstep, House, Trap, Drum and Bass'),
(33, 'Das Energi Festival', 'Magna, Utah', 'August 7-9', 375, 1, 0, 0, 1, 'Dubstep, House, Other'),
(34, 'Griztronics Gorge', 'George, Washington', 'May 23-24', 199, 0, 1, 0, 1, 'Dubstep, Other'),
(35, 'Beyond Wonderland At The Gorge', 'George, Washington', 'June 27-28', 193, 0, 1, 1, 1, 'Dubstep, Drum and Bass, House'),
(36, 'Bass Canyon', 'George, Washington', 'August 14-16', 310, 0, 1, 1, 1, 'Dubstep, Trap'),
(37, 'Force Fields', 'Cadott, Wisconsin', 'June 5-6', 102, 0, 1, 1, 1, 'Dubstep, House, Trap'),
(38, 'Submersion Festival', 'Hammonton, New Jersey', 'October 1-3', 208, 0, 1, 1, 1, 'Dubstep, Drum and Bass, House, Other'),
(39, 'Palm Tree Music Festival', 'Southampton, New York', 'June 27', 300, 0, 1, 0, 1, 'House'),
(40, 'Experts Only Festival', 'New York, New York', 'September 19-20', 229, 0, 1, 0, 1, 'Dubstep, House, Techno'),
(41, 'Carolina Open Air', 'Charlotte, North Carolina', 'April 24-25', 150, 0, 1, 0, 1, 'Dubstep'),
(42, 'Breakaway Carolina', 'Charlotte, North Carolina', 'September 25-26', 169, 0, 1, 0, 1, 'Dubstep, House, Trap, Other'),
(43, 'Breakaway Ohio', 'Columbus, Ohio', 'May 29-30', 150, 0, 1, 0, 1, 'Dubstep, House, Techno, Trap'),
(44, 'Lost Lands', 'Thornville, Ohio', 'September 18-20', 415, 0, 1, 1, 1, 'Dubstep, Drum and Bass, Other'),
(45, 'Breakaway Atlanta', 'Atlanta, Georgia', 'May 15-16', 189, 0, 1, 0, 1, 'Dubstep, Trap, House'),
(46, 'Beyond Wonderland Chicago', 'Chicago, Illinois ', 'June 6-7', 229, 0, 1, 0, 1, 'Dubstep, House, Drum and Bass, Techno, Trap, Other,'),
(47, 'Arc Music Festival', 'Chicago, Illinois', 'September 4-7 ', 499, 0, 1, 0, 1, 'House, Techno, Other'),
(48, 'North Coast Music Festival', 'Bridgeview, Illinois', 'September 4-6', 314, 0, 1, 0, 1, 'Dubstep, House, Drum and Bass, Trap, Other'),
(49, 'Indy 500 Snake Pit', 'Indianapolis, Indiana ', 'May 24', 135, 0, 1, 0, 1, 'Dubstep'),
(50, 'Symmetry Music and Arts Festival', 'Fairvfield, Iowa', 'October 2-3', 200, 0, 1, 1, 1, 'Dubstep, Trap, Drum and Bass, Other'),
(51, 'Dancefestopia', 'La Cygne, Kansas', 'September 7-13', 289, 0, 1, 1, 1, 'Dubstep, Trap, Drum and Bass '),
(52, 'Breakaway Mass', 'Worcester, Massachusetts ', 'August 21-22', 179, 0, 1, 0, 1, 'Dubstep, Trap'),
(53, 'Grid Life Midwest', 'South Haven, Michigan', 'June 12-14', 149, 0, 1, 1, 1, 'Dubstep'),
(54, 'Electric Forest', 'Rothbury, Michigan', 'June 25-28', 600, 0, 1, 1, 1, 'Dubstep, House, Drum and Bass, Other'),
(55, 'Breakaway Michigan', 'Grand Rapids, Michigan', 'August 14-15', 155, 0, 1, 0, 1, 'Dubstep, House, Trap '),
(56, 'Breakaway Minnesota', 'Saint Paul, Minnesota', 'June 26-27', 185, 0, 1, 0, 1, 'Dubstep, House, Drum and Bass'),
(57, 'Cosmic Kinection', 'French Village, Missouri ', 'June 2-7', 285, 0, 1, 1, 1, 'Other'),
(58, 'Excision\'s High Roller', 'Las Vegas, Nevada', 'April 24-25', 137, 1, 0, 0, 1, 'Dubstep'),
(59, 'EDC Las Vegas', 'Las Vegas, Nevada', 'May 15-17', 489, 0, 1, 1, 1, 'Dubstep, House, Techno, Drum and Bass, Other'),
(60, 'Starbase', 'Lake Perris, California', 'April 25-26', 199, 0, 1, 1, 1, 'Dubstep, Drum and Bass, Techno'),
(61, 'Freaky Deaky', 'Austin, Texas', 'October 30-31', 159, 1, 0, 0, 1, 'Dubstep, House, Drum and Bass'),
(62, 'Seven Stars Music Festival', 'Arlington, Virginia ', 'October 9-11', 422, 0, 1, 1, 1, 'Dubstep, Drum and Bass, Other'),
(63, 'Hidden City Music Festival', 'Cayce, South Carolina', 'April 17-18', 359, 0, 1, 1, 1, 'Dubstep, House, Trap, Other'),
(64, 'Get Lucky Festival', 'Salt Lake City, Utah', 'March 13-14', 199, 1, 0, 0, 1, 'Dubstep, House, Drum and Bass, Trap'),
(65, 'Groove Cruise', 'Miami, Florida', 'January 21-15', 1199, 1, 1, 0, 1, 'Techno, House'),
(66, 'Skyline Festival', 'Los Angeles, California', 'February 28 - March 1', 197, 0, 1, 0, 1, 'Techno, House'),
(67, 'Thunderdome', 'Tacoma, Washington', 'February 7-8', 239, 1, 0, 0, 1, 'Dubstep'),
(68, 'Friendship Cruise', 'Miami, Florida ', 'January 18-22', 1700, 1, 1, 0, 1, 'House, Other'),
(69, 'Decadence Arizona', 'Phoenix, Arizona', 'December 31-January 1', 260, 1, 0, 0, 1, 'Dubstep, House, Drum and Bass'),
(70, 'Decadence Colorado', 'Denver, Colorado', 'December 30-December 31', 199, 1, 0, 0, 1, 'Dubstep, Drum and Bass, Other'),
(71, 'Eternal NYE', '', 'December 30-December 31', 179, 1, 0, 0, 1, 'Dubstep, Other'),
(72, 'Nocturnal Valley', 'French Village, Missouri', 'September 24-26', 198, 0, 1, 1, 0, 'Dubstep, Other'),
(73, 'Head Trip Festival', 'Indio, California', 'October 10-11', 399, 0, 1, 1, 1, 'House'),
(74, 'Wobbleland ', 'San Jose, California', 'August 21-22', 99, 1, 0, 0, 1, 'Dubstep'),
(75, 'Secret Dreams Festival', 'Marengo, Ohio', 'September 4-6', 322, 0, 1, 1, 1, 'Other'),
(76, 'Zedd in the Park', 'New York City, New York', 'August 14-15', 160, 0, 1, 0, 1, 'Other'),
(77, 'High Vibe Fest', 'Big Bear, California', 'June 18-21', 322, 0, 1, 1, 1, 'Other'),
(78, 'Coconino Campout ', 'Flagstaff, Arizona', 'June 26-27', 168, 0, 1, 1, 1, 'Dubstep, Other'),
(79, 'Project Glow', 'Capitol Heights, Maryland', 'May 30-31', 169, 0, 1, 1, 1, 'Dubstep, House, Techno, Drum and Bass'),
(80, 'Movement Music Festival', 'Detroit, Michigan', 'May 23-25', 329, 0, 1, 0, 1, 'House, Techno'),
(81, 'Sound Haven Festival', 'Whitwell, Tennessee ', 'July 30-August 2', 281, 0, 1, 1, 1, 'Other'),
(82, 'Bass Camp Fest', 'Reno, Nevada', 'July 27-28', 299, 0, 1, 0, 1, 'Dubstep, House, Trap, Other'),
(83, 'Deep Tropics Festival', 'Nashville, Tennessee', 'September 4-6', 250, 0, 1, 1, 1, 'Dubstep, House'),
(84, 'Wakaan Festival', 'Ozark, Arkansas', 'October 1-3', 139, 0, 1, 1, 1, 'Dubstep, Other'),
(85, 'Stay in Bloom Festival', 'Stanford, California', 'May 1-2', 189, 0, 1, 0, 1, 'Dubstep, Trap'),
(86, 'Stay in Bloom NYC', 'Brooklyn, New York', 'May 30', 154, 0, 1, 0, 1, 'Dubstep'),
(87, 'Summer Camp Music Festival', 'Chillicothe, Illinois', 'May 21-24', 379, 0, 1, 1, 1, 'Other'),
(88, 'CRSSD Festival', 'San Diego, California', 'September 26-27', 299, 0, 1, 0, 1, 'House, Techno'),
(89, 'Lights All Night', 'Dallas, Texas', 'December 30-31', 150, 1, 0, 0, 1, 'Dubstep, House, Drum and Bass'),
(90, 'Infrasound Music Festival', 'Clarks Grove, Minnesota', 'May 14-17', 319, 0, 1, 1, 1, 'Other'),
(91, 'Countdown New Year\'s Eve', 'San Bernardino, California', 'December 31-January 1', 179, 1, 0, 0, 1, 'Dubstep, House, Techno, Drum and Bass'),
(92, 'Hijinx Festival', 'Philadelphia, Pennsylvania', 'December 27-28', 269, 1, 0, 0, 1, 'Dubstep, Drum and Bass, Trap'),
(93, 'Q Forest Festival', 'Lake George, Colorado', 'July 10-11', 120, 0, 1, 1, 1, 'Dubstep, Other'),
(94, 'Global Dance Festival', 'Denver, Colorado', 'September 11-12', 229, 0, 1, 0, 1, 'Dubstep, Other'),
(95, 'Freakquency Festival', 'Dallas, Texas', 'October 30-31', 199, 1, 0, 0, 1, 'House, Techno'),
(96, 'Sonic Roots Music and Camping Festival', 'Bevington, Iowa', 'July 17-18', 95, 0, 1, 1, 1, 'Dubstep, Other'),
(97, 'Give Thanks Festival', 'San Jose, California', 'November 28-29', 190, 1, 0, 0, 1, 'Dubstep'),
(98, 'Wire Festival', 'New York, New York', 'May 14-17', 171, 0, 1, 0, 0, 'Techno'),
(99, 'June Jam ', 'Flagstaff, Arizona', 'June 12-15', 244, 0, 1, 1, 1, 'Other'),
(100, 'Splash House ', 'Palm Springs, California', 'August 7-9', 230, 0, 1, 0, 1, 'House, Techno');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `edm_festivals`
--
ALTER TABLE `edm_festivals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `edm_festivals`
--
ALTER TABLE `edm_festivals`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

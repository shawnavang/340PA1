-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: student-databases.cvode4s4cwrc.us-west-2.rds.amazonaws.com
-- Generation Time: Apr 24, 2026 at 10:50 PM
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
-- Table structure for table `edm_genres`
--

CREATE TABLE `edm_genres` (
  `id` int NOT NULL,
  `genre` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `edm_genres`
--

INSERT INTO `edm_genres` (`id`, `genre`, `description`) VALUES
(1, 'Dubstep', 'Dubstep is a bass-heavy electronic music genre defined by deep wobbling low-end, syncopated rhythms, and dramatic drops that hit like a sonic punch.'),
(2, 'House', 'House music is a steady, groove-driven electronic genre built on a four-on-the-floor beat, soulful or hypnotic loops, and a vibe that keeps people dancing for hours.'),
(3, 'Techno', 'Techno is a driving electronic genre built on repetitive, mechanical beats, minimal melodies, and a hypnotic energy designed for deep, immersive dancing.'),
(4, 'Trap', 'Trap is a hard-hitting genre blending booming 808 bass, rapid hi-hat patterns, and dark, atmospheric energy rooted in hip-hop and evolved into festival-ready electronic sound.'),
(5, 'Drum and Bass', 'Drum and bass is a fast-paced electronic genre driven by rapid breakbeats, heavy sub-bass, and high-energy rhythms that hit at around 160–180 BPM.'),
(6, 'Hardstyle', 'Hardstyle is an intense electronic music genre defined by distorted kicks, powerful synth melodies, and high-energy drops built for peak festival moments.'),
(7, 'Other', 'Other styles may include progressive house, trance, future bass, big room, break beat, UK garage, riddim, complextro, acid, jungle, melodic bass, ambient, jersey club, synthwave');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `edm_genres`
--
ALTER TABLE `edm_genres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `edm_genres`
--
ALTER TABLE `edm_genres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

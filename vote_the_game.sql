-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Feb 24, 2016 at 11:17 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `vote_the_game`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `a_id` int(255) NOT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `q_id` int(255) NOT NULL,
  `correct` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
`district_id` int(11) NOT NULL,
  `district` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`district_id`, `district`) VALUES
(1, 'Miami Beach'),
(2, 'Little Haiti'),
(3, 'Coconut Grove'),
(4, 'Hialeah'),
(5, 'Little Havana');

-- --------------------------------------------------------

--
-- Table structure for table `facts`
--

CREATE TABLE `facts` (
  `district_id` int(11) NOT NULL,
  `facts_text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `magic`
--

CREATE TABLE `magic` (
`magic_id` int(11) NOT NULL,
  `magic_text` text COLLATE utf8_unicode_ci NOT NULL,
  `magic_result` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `magic`
--

INSERT INTO `magic` (`magic_id`, `magic_text`, `magic_result`) VALUES
(1, 'This is magic card number one, a good one! Yay!', 2),
(2, 'This is a magic card, a bad one, boo!', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `q_id` int(255) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `question`, `district_id`) VALUES
(1, 'What is the name of the lagoon that separates Miami from Miami Beach?', 1),
(2, 'What U.S. president has a street named after him in Little Havana?', 5),
(3, 'Miami''s famed Coconut Grove Neighborhood is the site of all but which of the following events?', 3),
(4, 'A section of town once known as Lemon City is now called what?', 2),
(5, 'Who is the Commissioner for District 12?', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
`tweet_id` int(255) NOT NULL,
  `tweet_handle` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tweet_text` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fact_text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`tweet_id`, `tweet_handle`, `tweet_text`, `fact_text`) VALUES
(1, '@nataliacbs4', 'Action: Don''t drive too fast! Slow down and stay where you are\r\nRT Miami-Dade County had nearly triple the amount of deadly hit-and-runs as any other Florida county I''ll have more on @CBSMiami at 530', 'Miami-Dade County has a workforce of more than one million multi-lingual, multi-skilled men and women'),
(2, '@VISITFLORIDA', 'Action: Enjoy the beautiful weather! Take an extra action next round.\r\nRT Purple Sky Over Miami Beach #LoveFL http://ift.tt/1Ph41JB ', 'It has snowed exactly once in Miami''s official meteorological history. Flurries were recorded on January 19, 1977. The chances of a white Christmas in Miami? "Less than one percent," according to a meteorologist with the National Weather Service.'),
(3, '@MiamiBeachNews', 'Action: Skip the next round \r\nRT: #Traffic Extremely heavy traffic congestion in Miami is causing back up''s on causeways and through Miami Beach', 'It officially became a city in 1896 after local businesswoman Julia Tuttle encouraged one railroad mogul to expand into the area—making Miami the only major U.S. city to be founded by a woman.'),
(4, '@JohnMoralesNBC6', 'Action: Advance to Everglades\r\nRT: Sorry, it got better. #Everglades #sunset @nbc6', 'Miami has more than 800 parks in total and is the only U.S. city surrounded by two national ones: Biscayne National Park and Everglades National Park.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
 ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
 ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `magic`
--
ALTER TABLE `magic`
 ADD PRIMARY KEY (`magic_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
 ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
 ADD PRIMARY KEY (`tweet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `magic`
--
ALTER TABLE `magic`
MODIFY `magic_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
MODIFY `tweet_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
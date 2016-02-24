-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Feb 10, 2016 at 04:11 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `vote-the-game`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `magic`
--

CREATE TABLE `magic` (
`magic_id` int(11) NOT NULL,
  `magic_text` text COLLATE utf8_unicode_ci NOT NULL,
  `magic_result` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
`q_id` int(255) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
`tweet_id` int(255) NOT NULL,
  `tweet_handle` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tweet_text` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
MODIFY `q_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `magic`
--
ALTER TABLE `magic`
MODIFY `magic_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
MODIFY `q_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
MODIFY `tweet_id` int(255) NOT NULL AUTO_INCREMENT;
-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Mar 20, 2024 at 08:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learnhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` int(10) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `dashboard_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `password`, `email`, `type`, `dashboard_url`) VALUES
(2, 1510158441, 'Joe Biden', '78675cc176081372c43abab3ea9fb70c74381eb02dc6e93fb6d44d161da6eeb3', 'biden@gmail.com', 'employee', 'professor_videos.php'),
(5, 1101483647, 'Donald Trump', '4138cfbc5d36f31e8ae09ef4044bb88c0c9c6f289a6a1c27b335a99d1d8dc86f', 'trump@gmail.com', 'student', 'student_videos.php');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `uploader` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `video`, `description`, `uploader`, `timestamp`, `is_deleted`) VALUES
(1, 'God-Tier Developer Roadmap', 'https://www.youtube.com/watch?v=pEfrdAtAmqk', 'The programming iceberg is complete roadmap to the loved, hated, historical, and weird programming languages that you should now about. It starts with easy-to-learn coding tools, then descends into the most difficult low-level and esoteric languages.', 'Joe Biden', '2024-03-04 02:28:23', 0),
(2, '100+ Web Development Things you Should Know', 'https://www.youtube.com/watch?v=erEgovG9WBs', 'WebDev 101 is a complete introduction into the world of web development. Learn the basic concepts and skills required to build fullstack web apps with HTML, CSS, and JavaScript. ', 'Joe Biden', '2024-03-04 02:29:29', 0),
(3, '100+ Computer Science Concepts Explained', 'https://www.youtube.com/watch?v=-uleG_Vecis', 'Learn the fundamentals of Computer Science with a quick breakdown of jargon that every software engineer should know. Over 100 technical concepts from the CS curriculum are explained to provide a foundation for programmers.', 'Joe Biden', '2024-03-20 07:14:32', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

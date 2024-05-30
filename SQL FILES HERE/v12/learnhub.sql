-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2024 at 08:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `video`, `description`, `uploader`, `timestamp`, `is_deleted`) VALUES
(1, 'God-Tier Developer Roadmap', 'https://www.youtube.com/watch?v=pEfrdAtAmqk', 'The programming iceberg is complete roadmap to the loved, hated, historical, and weird programming languages that you should now about. It starts with easy-to-learn coding tools, then descends into the most difficult low-level and esoteric languages.', 'Joe Biden', '2024-03-04 02:28:23', 0),
(2, '100+ Web Development Things you Should Know', 'https://www.youtube.com/watch?v=erEgovG9WBs', 'WebDev 101 is a complete introduction into the world of web development. Learn the basic concepts and skills required to build fullstack web apps with HTML, CSS, and JavaScript. ', 'Joe Biden', '2024-03-04 02:29:29', 0),
(3, '100+ Computer Science Concepts Explained', 'https://www.youtube.com/watch?v=-uleG_Vecis', 'Learn the fundamentals of Computer Science with a quick breakdown of jargon that every software engineer should know. Over 100 technical concepts from the CS curriculum are explained to provide a foundation for programmers.', 'Joe Biden', '2024-03-20 07:14:32', 0),
(25, 'Front End Web Development Full Course', 'https://www.youtube.com/watch?v=gjdBWv0zGb8', 'This video Front End Web Development Full Course 2023by Simplilearn with help you learn frontend development in 12 hours. In this video, all the important aspects of Front end web development like HTML, CSS, JavaScript, Angular, and React JS are covered in one go. This video will clear all your concepts and make you interview-ready by providing relatable and useful content. Below are the topics covered in this Front end web development full course 2023.', 'Joe Biden', '2024-04-01 08:17:53', 0),
(26, 'Basics of Cybersecurity For Beginners', 'https://www.youtube.com/watch?v=njPY7pQTRWg', 'Learn the Cybersecurity Fundamentals', 'Joe Biden', '2024-04-01 08:20:12', 0),
(27, 'Advanced Cybersecurity Course', 'https://www.youtube.com/watch?v=Dsl-ILWzUHM', 'Take your cybersecurity skills to the next level with our comprehensive Advanced Cyber Security Course. Designed for aspiring professionals and experienced IT experts, this course covers advanced topics such as network security, secure coding, penetration testing, and incident response. Our expert instructors provide hands-on training, guiding you through practical exercises, simulated cyber-attacks, and interactive discussions. By the end of the course, you\'ll have the expertise and confidence to defend against sophisticated cyber threats. Enroll now and become a certified cybersecurity expert, equipped to safeguard sensitive information and be the first line of defense in the digital world. Subscribe to our channel for more cybersecurity insights and tutorials.', 'Joe Biden', '2024-04-01 08:21:02', 0),
(28, 'User Testing: Why & How (Jakob Nielsen)', 'https://www.youtube.com/watch?v=v8JJrDvQDF4&t=14s', 'There is no excuse for not performing usability studies. They’re fast and cheap, and very convincing. Test with representative customers using realistic task, then be amazed by what you observe.', 'Joe Biden', '2024-04-05 06:14:11', 0),
(29, 'The Immutable Rules of UX (Jakob Nielsen)', 'https://www.youtube.com/watch?v=OtBeg5eyEHU', 'Jakob Nielsen\'s keynote at the Las Vegas UX Conference discussed the foundational principles of user experience that are stable decade after decade.', 'Joe Biden', '2024-04-05 06:15:05', 0),
(30, 'Less is More (Jakob Nielsen)', 'https://www.youtube.com/watch?v=dntokZAGr_c', 'Jakob Nielsen talks about why having a feature-rich interface can make navigation difficult to learn and overly complex.', 'Joe Biden', '2024-04-05 06:16:28', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

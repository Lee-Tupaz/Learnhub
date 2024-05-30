-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 05:07 AM
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
  `courses` varchar(255) NOT NULL,
  `uploader` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `video`, `description`, `courses`, `uploader`, `timestamp`, `is_deleted`) VALUES
(1, 'God-Tier Developer Roadmap', 'https://www.youtube.com/watch?v=pEfrdAtAmqk', 'The programming iceberg is complete roadmap to the loved, hated, historical, and weird programming languages that you should now about. It starts with easy-to-learn coding tools, then descends into the most difficult low-level and esoteric languages.', 'Cloud Computing, Data Science, Game Development, Software Engineering, Web Development', 'Joe Biden', '2024-03-04 02:28:23', 0),
(2, '100+ Web Development Things you Should Know', 'https://www.youtube.com/watch?v=erEgovG9WBs', 'WebDev 101 is a complete introduction into the world of web development. Learn the basic concepts and skills required to build fullstack web apps with HTML, CSS, and JavaScript.', 'Software Engineering, Web Development', 'Joe Biden', '2024-03-04 02:29:29', 0),
(3, '100+ Computer Science Concepts Explained', 'https://www.youtube.com/watch?v=-uleG_Vecis', 'Learn the fundamentals of Computer Science with a quick breakdown of jargon that every software engineer should know. Over 100 technical concepts from the CS curriculum are explained to provide a foundation for programmers.', 'Cloud Computing, Data Science, Game Development, Software Engineering, Web Development', 'Joe Biden', '2024-03-20 07:14:32', 0),
(25, 'Front End Web Development Full Course', 'https://www.youtube.com/watch?v=gjdBWv0zGb8', 'This video Front End Web Development Full Course 2023by Simplilearn with help you learn frontend development in 12 hours. In this video, all the important aspects of Front end web development like HTML, CSS, JavaScript, Angular, and React JS are covered in one go. This video will clear all your concepts and make you interview-ready by providing relatable and useful content. Below are the topics covered in this Front end web development full course 2023.', 'Web Development', 'Joe Biden', '2024-04-01 08:17:53', 0),
(26, 'Basics of Cybersecurity For Beginners', 'https://www.youtube.com/watch?v=njPY7pQTRWg', 'Learn the Cybersecurity Fundamentals', 'Cloud Computing, Data Science, Software Engineering, Web Development', 'Joe Biden', '2024-04-01 08:20:12', 0),
(27, 'Advanced Cybersecurity Course', 'https://www.youtube.com/watch?v=Dsl-ILWzUHM', 'Take your cybersecurity skills to the next level with our comprehensive Advanced Cyber Security Course. Designed for aspiring professionals and experienced IT experts, this course covers advanced topics such as network security, secure coding, penetration testing, and incident response. Our expert instructors provide hands-on training, guiding you through practical exercises, simulated cyber-attacks, and interactive discussions. By the end of the course, you\'ll have the expertise and confidence to defend against sophisticated cyber threats. Enroll now and become a certified cybersecurity expert, equipped to safeguard sensitive information and be the first line of defense in the digital world. Subscribe to our channel for more cybersecurity insights and tutorials.', 'Cloud Computing, Data Science, Software Engineering, Web Development', 'Joe Biden', '2024-04-01 08:21:02', 0),
(28, 'User Testing: Why & How (Jakob Nielsen)', 'https://www.youtube.com/watch?v=v8JJrDvQDF4&t=14s', 'There is no excuse for not performing usability studies. They’re fast and cheap, and very convincing. Test with representative customers using realistic task, then be amazed by what you observe.', 'Cloud Computing, Data Science, Software Engineering, Web Development', 'Joe Biden', '2024-04-05 06:14:11', 0),
(29, 'The Immutable Rules of UX (Jakob Nielsen)', 'https://www.youtube.com/watch?v=OtBeg5eyEHU', 'Jakob Nielsen\'s keynote at the Las Vegas UX Conference discussed the foundational principles of user experience that are stable decade after decade.', 'Software Engineering, Web Development', 'Joe Biden', '2024-04-05 06:15:05', 0),
(30, 'Less is More (Jakob Nielsen)', 'https://www.youtube.com/watch?v=dntokZAGr_c', 'Jakob Nielsen talks about why having a feature-rich interface can make navigation difficult to learn and overly complex.', 'Software Engineering, Web Development', 'Joe Biden', '2024-04-05 06:16:28', 0),
(31, 'Java Programming for Beginner', 'https://www.youtube.com/watch?v=A74TOX803D0', 'Learn the Java programming language in this complete beginner\'s course. You will learn all the main features of Java (version 17) and how to use Java for your own projects.', 'Cloud Computing, Data Science, Game Development, Software Engineering, Web Development', 'Joe Biden', '2024-05-09 02:30:11', 0),
(32, 'Building Web Applications in Java using Spring Boot 3', 'https://www.youtube.com/watch?v=31KTdfRH6nY', 'Learn how to build web applications in Java with Spring Boot 3. You\'ll learn about Spring\'s fundamentals by creating a REST API that communicates with a database and is supported by a comprehensive suite of tests. By the end of this course you will have learned what you need to start building your own web applications with Spring Boot 3.', 'Software Engineering, Web Development', 'Joe Biden', '2024-05-09 02:44:28', 0),
(33, 'Object-Oriented Programming in 7 Minutes | Programming with Mosh', 'https://www.youtube.com/watch?v=pTB0EiLXUC8', '4 pillars of object-oriented programming: encapsulation, abstraction, inheritance and polymorphism.', 'Cloud Computing, Data Science, Game Development, Software Engineering, Web Development', 'Joe Biden', '2024-05-21 07:58:59', 0),
(34, 'Figure Drawing Fundamentals Lesson #1 The Process', 'https://www.youtube.com/watch?v=gpH8T2CRlLI', 'In this first session we\'ll look at the core ideas of an approach to figure drawing which we will build upon in future sessions, starting with a front pose.', 'Game Development, Animation, Fashion Design and Technology, Multimedia Arts and Design', 'Joe Biden', '2024-05-22 08:57:17', 0),
(35, 'Understanding Light and Shadow | How to Shade Digital Art in Procreate', 'https://www.youtube.com/watch?v=c0l5OcDLlU4', 'Understanding light and shading is an easy practice - shading is math! Once you learn how it works, you can apply it to anything. Draw along with me as I go over the basics of rendering and shading. This works for digital art, traditional art, and anything else you can think of. All work in this video was done in Procreate.', 'Game Development, Animation, Fashion Design and Technology, Multimedia Arts and Design', 'Joe Biden', '2024-05-22 08:59:10', 0),
(36, 'Sound Design and Synth Fundamentals', 'https://www.youtube.com/watch?v=NJLIS2MkFe4', 'In this video, I show you the fundamental basics of sound design and synthesis so that you can start creating sounds with confidence. I cover a wide variety of topics ranging from the basic starting blocks of sound to more complex sound design techniques and share some tips and tricks in the video too.', 'Music Production and Sound Design', 'Joe Biden', '2024-05-22 09:01:54', 0),
(37, 'Advanced Sound Design and Synths Tutorial', 'https://www.youtube.com/watch?v=tlygYWeOzTg', 'In this video I show you some more advanced sound design concepts and synthesis so that you can start creating sounds with confidence. Hopefully, this will give you more topics and ideas for future study.', 'Music Production and Sound Design', 'Joe Biden', '2024-05-22 09:02:53', 0),
(38, 'What is Accounting?', 'https://www.youtube.com/watch?v=ABjCVTBnO_U', 'What is Accounting? Why do we need it? And what types of accounting are there? \r\n\r\nAccounting is one of the most important skills for people pursuing a career in Finance. It helps you understand whether a business is profitable. It gives you an idea of a company’s size. It helps you use the past in order to take action in the present and change the future.', 'Accountancy', 'Joe Biden', '2024-05-22 09:04:36', 0),
(39, 'How Businesses Manage Money | Cashflow Explained', 'https://www.youtube.com/watch?v=9kKlZQGEOto', 'The amount of money that comes to a business or an individual does not determine how financially strong they are. The cashflow determines the actual financial strength of an establishment. In this video, you will learn about cash flow and how you can handle it both in business and in your personal finances.', 'Accountancy, E-Management, Marketing Management, Real Estate Management', 'Joe Biden', '2024-05-22 09:06:01', 0),
(40, 'Psychological Disorders: Crash Course Psychology', 'https://www.youtube.com/watch?v=wuhJ-GkRRQc', 'In this episode of Crash Course Psychology, Hank takes a look at how the treatment for psychological disorders has changed over the last hundred years and who is responsible for getting us on the path to getting us here.', 'Psychology', 'Joe Biden', '2024-05-22 09:07:06', 0),
(41, 'Emotion, Stress, and Health: Crash Course Psychology', 'https://www.youtube.com/watch?v=4KbSRXP0wik', 'So, it turns out we have an easy time reading emotions in facial expressions, but emotions can straight up kill us! In this episode of Crash Course Psychology, Hank discusses stress, emotions, and their overall impact on our health.', 'Psychology', 'Joe Biden', '2024-05-22 09:07:37', 0),
(42, 'ACCOUNTING BASICS: a Guide to (Almost) Everything', 'https://www.youtube.com/watch?v=yYX4bvQSqbo', 'If you\'re an Accounting Beginner, then I recommend watching this all the way through to the end - at least once - to get a complete picture of how Accounting works. Afterwards, you can jump into my Accounting Basics Playlist (see below) and explore every topic in more detail.', 'Accountancy', 'Joe Biden', '2024-05-22 09:09:21', 0),
(43, 'Who Even Is An Entrepreneur?: Crash Course Business', 'https://www.youtube.com/watch?v=aozlwC3XwfY', 'You\'ve probably heard the word \"Entrepreneur\" thrown around a lot in business. It conjures images of Elon Musk, Bill Gates, or Oprah Winfrey. But, it goes way beyond that. In this episode of Crash Course Business: Entrepreneurship, Anna helps us to figure out who Entrepreneurs are, and what that title actually means.', 'Accountancy, E-Management, Marketing Management, Real Estate Management', 'Joe Biden', '2024-05-22 09:10:43', 0),
(44, 'How to Develop a Business Idea: Crash Course Business', 'https://www.youtube.com/watch?v=iywvlUk2Wfg', 'So, where do ideas come from? And what do you do with them once you have them? In this episode of Crash Course Entrepreneurship, Anna helps to answer these questions (and more) as we figure out what we need to do to launch our business.', 'Accountancy, E-Management, Marketing Management, Real Estate Management', 'Joe Biden', '2024-05-22 09:25:37', 0),
(45, 'What is Marketing management? | Objectives | Process', 'https://www.youtube.com/watch?v=ZaKbhKN93Yw', 'In this video, you will learn \" What is marketing management?\"\r\nThe chapters I have discussed are, \r\n1. Define marketing management.\r\n2. Objectives of marketing management.\r\n3. Marketing management process.', 'Marketing Management', 'Joe Biden', '2024-05-22 09:30:59', 0),
(46, 'Special Effects: Crash Course Film Production with Lily Gladstone', 'https://www.youtube.com/watch?v=UFkVWnk26rA', 'Chances are, when you hear the phrase \"Special Effects,\" you may have images pop into your mind. The Hulk smashing a city, a lightsaber fight, or maybe an alien world. But effects can be much more subtle and have been around really since the beginning of filmmaking. In this episode of Crash Course Film Production, Lily Gladstone talks about the basics of special effects.', 'Film and Visual Effects, Multimedia Arts and Design', 'Joe Biden', '2024-05-22 09:34:18', 0),
(47, 'Intro to Storyboarding', 'https://www.youtube.com/watch?v=RQsvhq28sOI', 'Storyboarding is all about clear communication of your vision. Storyboards can help you construct your film, plan your shots and your edit, and visually communicate what you want to the rest of your team.', 'Animation, Film and Visual Effects', 'Joe Biden', '2024-05-22 09:36:53', 0),
(48, 'Thom Browne’s Entire Design Process, From Sketch to Dress | Vogue', 'https://www.youtube.com/watch?v=VVbD2dXS4gw', 'Vogue had the pleasure of following Thom Browne as he built his fall 2020 collection. See how Thom works, from conception to execution, with a rare inside look at the designer\'s process.', 'Fashion Design and Technology', 'Joe Biden', '2024-05-22 09:37:48', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

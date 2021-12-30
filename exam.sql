-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 08:47 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `description`, `title`) VALUES
(7, 'quiz', 'Java'),
(10, 'Technical', 'Angular');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(22),
(22),
(22),
(22),
(22);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `ques_id` bigint(20) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `quiz_q_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`ques_id`, `answer`, `content`, `image`, `option1`, `option2`, `option3`, `option4`, `quiz_q_id`) VALUES
(12, 'a.Bytecode is executed by JVM', '<p>1. Which of the following option leads to the portability and security of Java?</p>', NULL, 'a.Bytecode is executed by JVM', 'b.The applet makes the Java code secure and portable', 'c.Use of exception handling', 'd.Dynamic binding between objects.', 11),
(13, 'c.Use of pointers', '<p>2.Which of the following is not a Java features?</p>', NULL, 'a.Dynamic', 'b.Architecture Neutral', 'c.Use of pointers', 'd.Object-oriented', 11),
(14, 'd.JDB', '<p>3. _____ is used to find and fix bugs in the Java programs.</p>', NULL, 'a.JVM', 'b.JRE', 'c.JDK', 'd.JDB', 11),
(15, 'b.int', '<p>4.What is the return type of the hashCode() method in the Object class?</p>', NULL, 'a.Object', 'b.int', 'c.long', 'd.void', 11),
(16, 'c.Infinity', '<p>5.What does the expression float a = 35 / 0 return?</p>', NULL, 'a.0', 'b.Not a Number', 'c.Infinity', 'd.Run time exception', 11),
(17, 'c.getName()', '<p>6.Which method of the Class.class is used to determine the name of a class represented by the class object as a String?</p>', NULL, 'a.getClass()', 'b.intern()', 'c.getName()', 'd.toString()', 11),
(18, 'd.Multi-threading', '<p>7. In which process, a local variable has the same name as one of the instance variables?</p>', NULL, 'a.Serialization', 'b.Variable Shadowing', 'c.Abstraction', 'd.Multi-threading', 11),
(19, 'd.It has no class name', '<p>8.Which of the following is true about the anonymous inner class?</p>', NULL, 'a.It has only methods', 'b.Objects can\'t be created', 'c.It has a fixed class name', 'd.It has no class name', 11),
(20, 'a.java.util package', '<p>9.Which package contains the Random class?</p>', NULL, 'a.java.util package', 'b.java.lang package', 'c.java.awt package', 'd.java.io package', 11),
(21, 'b.import', '<p>10.Which keyword is used for accessing the features of a package?</p>', NULL, 'a.package', 'b.import', 'c.extends', 'd.export', 11);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `q_id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `max_marks` varchar(255) DEFAULT NULL,
  `number_of_questions` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_cid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`q_id`, `active`, `description`, `max_marks`, `number_of_questions`, `title`, `category_cid`) VALUES
(11, b'1', 'Programming', '20', '10', 'Java', 7);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(44, 'ADMIN'),
(45, 'NORMAL');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `enabled`, `first_name`, `last_name`, `password`, `phone`, `profile`, `username`) VALUES
(1, 'abc@gmail.com', b'1', 'Durgesh', 'Tiwari', '$2a$10$AOUfpkjbyEoSpJJ4YIitiukyz8JvppSvb7xZe3bSX8WswdaeVzyAi', NULL, 'default.png', 'durgesh8896'),
(3, 'sankarshana.mujumdar@gmail.com', b'1', 'sanku', 'M', '$2a$10$E/OpYatyZqqDv55OvFNA5uP8VP8Dd6FZRv8taMaq1QozrO1dW/ZwC', '8050579626', 'default.png', 'sankarsahana'),
(5, 'ss@gmail.com', b'1', 'sk', 'm', '$2a$10$2z4l/Jr1pWmVLR3nAHjYKegL5MzMiRf7rnYcVn.CL5pD6q9xGh4ji', '9448830003', 'default.png', 'sk'),
(8, 'abc@gmail.com', b'1', 'Sankarshana', 'Mujumdar', '$2a$10$PoTE5CF4jdSGAG7dL8469ewM/YRmJu2SXNn4VIN2cTf92JTvMpXre', NULL, 'default.png', 'Sanku');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_role_id` bigint(20) NOT NULL,
  `role_role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_role_id`, `role_role_id`, `user_id`) VALUES
(2, 44, 1),
(4, 45, 3),
(6, 45, 5),
(9, 44, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ques_id`),
  ADD KEY `FKq1xd7v9iuws36j2pb22my632e` (`quiz_q_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `FKesqyvgxnab2ul8osr3a1dtulc` (`category_cid`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_role_id`),
  ADD KEY `FK7u21823ktfhu9bmx2350x6n8s` (`role_role_id`),
  ADD KEY `FKj345gk1bovqvfame88rcx7yyx` (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FKq1xd7v9iuws36j2pb22my632e` FOREIGN KEY (`quiz_q_id`) REFERENCES `quiz` (`q_id`);

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `FKesqyvgxnab2ul8osr3a1dtulc` FOREIGN KEY (`category_cid`) REFERENCES `category` (`cid`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK7u21823ktfhu9bmx2350x6n8s` FOREIGN KEY (`role_role_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `FKj345gk1bovqvfame88rcx7yyx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

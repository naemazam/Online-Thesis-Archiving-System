-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2021 at 07:51 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otas_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive_list`
--

CREATE TABLE `archive_list` (
  `id` int(30) NOT NULL,
  `archive_code` varchar(100) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `year` year(4) NOT NULL,
  `title` text NOT NULL,
  `abstract` text NOT NULL,
  `members` text NOT NULL,
  `banner_path` text NOT NULL,
  `document_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `student_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive_list`
--

INSERT INTO `archive_list` (`id`, `archive_code`, `curriculum_id`, `year`, `title`, `abstract`, `members`, `banner_path`, `document_path`, `status`, `student_id`, `date_created`, `date_updated`) VALUES
(1, '2021120001', 1, 2021, 'Sample Project 101', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas blandit at ipsum vitae malesuada. Fusce vitae bibendum diam. Praesent non eros purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et semper velit, pharetra efficitur eros. Aenean vel dignissim eros, sit amet pellentesque dolor. Quisque tincidunt ultricies velit sit amet fringilla. Nunc id lobortis diam, nec finibus neque. Curabitur faucibus feugiat placerat. Nunc at auctor nisi. Nunc maximus cursus mi a lacinia. Fusce eget maximus metus. Duis a tincidunt turpis. Integer dictum suscipit fringilla. Nam a eros arcu.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;b&gt;Project Manager&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-John D Smith&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Members:&nbsp;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-James Miller&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-Mike Williams&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-George Wilson&lt;/b&gt;&lt;/p&gt;', 'uploads/banners/archive-1.png?v=1639208103', 'uploads/pdf/archive-1.pdf?v=1639208103', 1, 1, '2021-12-11 14:57:22', '2021-12-11 16:07:44'),
(2, '2021120002', 1, 2020, 'Sample 102', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;In hac habitasse platea dictumst. Curabitur commodo nunc ac diam laoreet tempor. Donec sollicitudin lorem ullamcorper pretium ultrices. In varius risus in erat bibendum commodo. Ut volutpat est a mi volutpat molestie. In blandit, leo ut gravida vulputate, metus enim rutrum nunc, id mollis felis libero eu enim. Aenean placerat quis sapien sit amet blandit. Sed nec lorem efficitur, congue lorem vitae, egestas justo. Cras pulvinar, sapien vitae maximus porta, nibh libero porta risus, lobortis porta ante sapien eu massa.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Aliquam laoreet condimentum felis eu tristique. Sed a massa nulla. Donec aliquet id ante vel porta. Vestibulum maximus dictum aliquam. Sed molestie lobortis ultrices. Nunc commodo dui nunc, a tincidunt lacus molestie eget. Nullam metus enim, accumsan ac iaculis et, sollicitudin vitae erat. Praesent molestie imperdiet libero, vel congue velit fringilla quis. Suspendisse sollicitudin aliquet enim nec elementum. Morbi nec aliquet mauris. Donec eleifend metus ex.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;In sollicitudin elementum ante, ut elementum tortor porttitor sit amet. Vestibulum vehicula scelerisque porta. Maecenas vestibulum purus orci, in imperdiet velit congue fermentum. Nulla aliquam ante ut erat sagittis, et porta arcu condimentum. Praesent scelerisque nunc vel felis malesuada venenatis. Donec blandit mauris eros, eget placerat nunc convallis a. Etiam ac elementum arcu. In varius fringilla massa, at volutpat nisi blandit vel. In hac habitasse platea dictumst. Nunc blandit venenatis felis, a mattis nunc. Vestibulum a tempus mi. In interdum semper laoreet. Ut vitae urna arcu. Suspendisse ac arcu quam.&lt;/p&gt;', '&lt;ul&gt;&lt;li&gt;Sample 101&lt;/li&gt;&lt;li&gt;Sample 102&lt;/li&gt;&lt;li&gt;Sample 103&lt;/li&gt;&lt;li&gt;Sample 104&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;', 'uploads/banners/archive-3.png?v=1639212829', 'uploads/pdf/archive-3.pdf?v=1639212829', 1, 1, '2021-12-11 16:53:48', '2021-12-13 14:21:11'),
(3, '2021120003', 1, 2020, 'Online Point of Sale System for XYZ Corp.', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Curabitur a lorem vitae arcu tincidunt suscipit. Vivamus posuere sodales diam, iaculis tempus sem rhoncus ac. Aenean elementum dolor sed augue gravida, vel ultrices mi sollicitudin. Sed semper sapien non tellus gravida imperdiet. Ut condimentum libero elementum ligula congue, rhoncus euismod orci ultricies. Suspendisse potenti. Vivamus rhoncus iaculis justo, non ultricies odio iaculis malesuada. Vivamus vitae odio nec est consectetur elementum. Nam et tellus pellentesque, efficitur nibh nec, sodales nulla. Phasellus vel nunc orci. Vestibulum vitae libero felis.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Fusce tellus odio, pellentesque id justo at, euismod eleifend nulla. Sed at dui non dolor porta tempus vel at justo. Curabitur condimentum, ipsum eu vehicula eleifend, lectus libero rhoncus risus, mollis porta nulla tortor vitae felis. Cras molestie lectus diam, fermentum posuere tellus facilisis ac. Nulla eu ante venenatis orci egestas tempor. Sed sed ante nisl. Nulla vitae risus quam. Donec eu neque eget urna pellentesque maximus. Mauris et lacus elit. Vivamus ligula leo, rutrum vitae semper id, gravida in dui. Maecenas augue arcu, egestas non dolor ut, fermentum rutrum sem. Duis a augue et mauris efficitur finibus nec nec neque. Nulla pulvinar, lorem sed efficitur pulvinar, nunc ex pellentesque eros, ac volutpat mauris felis sed nunc. Phasellus porta quam a nulla bibendum, a volutpat nisi tincidunt. Fusce sed semper ante, ullamcorper varius eros. In feugiat est sit amet mi accumsan, vel tempus eros pulvinar.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Aenean rhoncus massa vel convallis suscipit. Etiam pharetra, tortor vitae ornare tincidunt, ipsum purus blandit elit, a interdum libero felis id lectus. Curabitur eleifend pulvinar eros non mollis. Phasellus porttitor sollicitudin metus quis congue. Maecenas sollicitudin fermentum ullamcorper. Aenean blandit vehicula diam, a porta nisl auctor sed. Phasellus dignissim tristique mi et faucibus.&lt;/p&gt;', '&lt;p&gt;&lt;b&gt;Project Manager&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Claire Blake&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;QA&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Samantha Lou&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Programmers&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;James Dein&lt;/li&gt;&lt;li&gt;Michael Bennet&lt;/li&gt;&lt;li&gt;Jenny Cooper&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Researchers&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Ana Mae Clayton&lt;/li&gt;&lt;li&gt;Cynthia Anthony&lt;/li&gt;&lt;/ul&gt;', 'uploads/banners/archive-3.png?v=1639377036', 'uploads/pdf/archive-3.pdf?v=1639377036', 1, 3, '2021-12-13 14:30:35', '2021-12-13 14:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_list`
--

CREATE TABLE `curriculum_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curriculum_list`
--

INSERT INTO `curriculum_list` (`id`, `department_id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 5, 'BSIS', 'Bachelor of Science in Information Systems', 1, '2021-12-07 10:10:20', '2021-12-07 10:12:20'),
(2, 5, 'BSIT', 'Bachelor of Science in Information Technology', 1, '2021-12-07 10:10:56', NULL),
(3, 2, 'BEEd', 'Bachelor of Elementary Education', 1, '2021-12-07 10:12:50', NULL),
(4, 2, 'BSEd', 'Bachelor of Secondary Education', 1, '2021-12-07 10:13:10', NULL),
(5, 2, 'BSNEd', 'Bachelor in Special Needs Education', 1, '2021-12-07 10:14:05', NULL),
(6, 6, 'BSCE', 'Bachelor of Science in Civil Engineering', 1, '2021-12-07 10:14:26', NULL),
(7, 6, 'BS Computer Engineering', 'Bachelor of Science in Computer Engineering', 1, '2021-12-07 10:15:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 'College of Industrial Technology', 'Develop world-class industrial workers and middle-level managers equipped with scientific knowledge, technological skills, and ethical work values to achieve a desirable quality of life.', 1, '2021-12-07 09:28:16', '2021-12-07 09:36:07'),
(2, 'College of Education', 'Implement Teacher Education Programs for the elementary and secondary levels and endeavor to achieve quality and excellence, relevance and responsiveness, equity and access, and efficiency and effectiveness in instruction, research, extension, and production.', 1, '2021-12-07 09:28:33', '2021-12-07 09:46:57'),
(3, 'College of Arts and Sciences', 'Develop and implement programs in Liberal Arts and Sciences to achieve academic excellence and competencies geared towards the total development of the learners in their specialized fields.', 1, '2021-12-07 09:34:11', NULL),
(4, 'College of Business Management and Accountancy', 'College of Business Management and Accountancy', 1, '2021-12-07 09:34:55', NULL),
(5, 'College of Computer Studies', 'Develop creative innovators with the confidence and courage to seize and transform opportunities for the benefit of the society.', 1, '2021-12-07 09:35:19', '2021-12-07 09:36:35'),
(6, 'College of Engineering', 'To develop scientific and technical knowledge anchored on sustainable fisheries productivity and promote linkages and networking in the implementation of fisheries programs and projects.', 1, '2021-12-07 09:37:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `firstname`, `middlename`, `lastname`, `department_id`, `curriculum_id`, `email`, `password`, `gender`, `status`, `avatar`, `date_created`, `date_updated`) VALUES
(1, 'John', 'D', 'Smith', 5, 1, 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 'Male', 1, 'uploads/student-1.png?v=1639202693', '2021-12-11 12:50:03', '2021-12-11 14:04:53'),
(3, 'Claire', 'C', 'Blake', 5, 1, 'cblake@sample.com', '4744ddea876b11dcb1d169fadf494418', 'Female', 1, 'uploads/student-3.png?v=1639377518', '2021-12-13 10:42:51', '2021-12-13 14:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Thesis Archiving System - PHP'),
(6, 'short_name', 'OTAS - PHP'),
(11, 'logo', 'uploads/logo-1638840281.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1638840281.png'),
(15, 'content', 'Array'),
(16, 'email', 'info@university101.com'),
(17, 'contact', '09854698789 / 78945632'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'Under the Tree, Here Street, There City, Anywhere 1014');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/student-1.png?v=1639202560', NULL, 1, 1, '2021-01-20 14:02:37', '2021-12-11 14:02:40'),
(2, 'Claire', NULL, 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', 'uploads/avatar-2.png?v=1639377482', NULL, 2, 1, '2021-12-13 14:38:02', '2021-12-13 14:38:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curriculum_id` (`curriculum_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH,
  ADD KEY `department_id` (`department_id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive_list`
--
ALTER TABLE `archive_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD CONSTRAINT `archive_list_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD CONSTRAINT `curriculum_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_list`
--
ALTER TABLE `student_list`
  ADD CONSTRAINT `student_list_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_list_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

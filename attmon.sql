-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2016 at 04:11 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attmon`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `classname` varchar(15) NOT NULL DEFAULT 'CSE1',
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=141112205 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `classname`, `username`, `password`) VALUES
(141112099, 'Manohar', 'Lakkoju', 'CSE1', 'starlord', 'thanos'),
(141112101, 'Goutham', 'Chunduru', 'CSE1', 'goutham', 'user'),
(141112055, 'Venkat ', 'Sai', 'CSE2', 'venkat', 'user'),
(141112003, 'Krishna', 'Chandan', 'CSE1', 'chandan', 'user'),
(141112107, 'Vipin', 'Singh', 'CSE1', 'vipin', 'user'),
(141112096, 'Akhil', 'Amarneni', 'CSE1', 'akhil', 'user'),
(141112026, 'Akhil', 'Bharthavarapu', 'akhil', 'akhil', 'user'),
(141112001, 'Shubam', 'Dalmia', 'CSE', 'shubam', 'user'),
(141112204, 'P', 'S', 'ps', 'ps', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT 'JAVA',
  `gender` enum('Male','Female') NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `address` text NOT NULL,
  `dob` date NOT NULL,
  `hire_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `dept`, `subject`, `gender`, `email`, `phone`, `address`, `dob`, `hire_date`) VALUES
(1, 'nilaykhare', 'admin', 'Nilay', 'Khare', 'CSE', 'Theory of Computation', 'Male', 'nilaykhare@gmail.com', 2147483647, 'Bhopal,Madhya Pradesh', '1970-07-10', '2008-07-10'),
(2, 'narasimhanaik', 'admin', 'Narasimha ', 'Naik', 'CSE', 'Software Engineering', 'Male', 'narasimhanaik@gmail.com', 2147483647, 'MANIT, Bhopal', '1985-12-10', '2013-10-10'),
(3, 'rizwan', 'javaphp', 'Rizwan', 'Rehman', 'CSE', 'JAVA', 'Male', 'rizwanrehman@gmail.com', 2147483647, 'MANIT', '1994-08-08', '2013-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_time`, `logout_time`) VALUES
(138, 'starlord', '2016-04-05 04:09:03', '2016-04-07 06:49:30'),
(139, 'goutham', '2016-04-05 04:37:30', '2016-04-08 08:42:01'),
(140, 'vipin', '2016-04-05 04:43:57', '2016-04-05 04:44:14'),
(141, 'starlord', '2016-04-05 06:28:30', '2016-04-07 06:49:30'),
(142, 'starlord', '2016-04-07 06:27:37', '2016-04-07 06:49:30'),
(143, 'starlord', '2016-04-07 06:49:15', '2016-04-07 06:49:30'),
(144, 'goutham', '2016-04-07 08:47:03', '2016-04-08 08:42:01'),
(145, 'goutham', '2016-04-07 08:54:00', '2016-04-08 08:42:01'),
(146, 'venkat', '2016-04-07 08:54:34', '0000-00-00 00:00:00'),
(147, 'goutham', '2016-04-08 07:51:47', '2016-04-08 08:42:01'),
(148, 'goutham', '2016-04-08 09:35:46', '0000-00-00 00:00:00'),
(149, 'goutham', '2016-04-08 09:36:44', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=141112205;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=150;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

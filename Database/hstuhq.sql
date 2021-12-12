-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2021 at 06:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hstuhq`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_password`) VALUES
('moshiur', '1602022'),
('shabbir', '1602044'),
('sumon', '1702054');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL,
  `year_var` int(11) NOT NULL,
  `level_var` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `course_title` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `year_var`, `level_var`, `semester`, `degree`, `department`, `course_code`, `course_title`, `link`) VALUES
(10001, 2019, 3, 2, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 353', 'Operating System', 'files/2019 CSE_353 Operating_System.pdf'),
(10002, 2019, 3, 2, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 355', 'Web Engineering', 'files/2019 CSE_355 Web_Engineering.pdf'),
(10003, 2019, 3, 2, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 359', 'Compiler Design', 'files/2019 CSE_359 Compiler_Design.pdf'),
(10004, 2019, 3, 2, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 361', 'Mathematics for Computer Science', 'files/2019 CSE_361 Mathematical_Analysis_for_Computer_Science.pdf'),
(10005, 2019, 3, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 303', 'Database', 'files/2019 CSE_303 Database.pdf'),
(10006, 2019, 3, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 305', 'Software Engineering', 'files/2019 CSE_305 Software_Engineering.pdf'),
(10007, 2016, 3, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 303', 'Data Communication', 'files/2016 CSE_303 Data_Communication.pdf'),
(10008, 2016, 3, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 309', 'Computer Architecture (Theoretical)', 'files/2016 CSE_309 Computer_Architecture_Theoretocal.pdf'),
(10009, 2016, 3, 1, 'B. Sc. in Electronics and Communication Engineering', 'Computer Science and Engineering', 'CSE 317', 'Microprocessor and Embedded System Design', 'files/2016 CSE_317 Microprocessor_and_Embedded_System_Design.pdf'),
(10010, 2017, 3, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 301', 'Software Engineering', 'files/2017 CSE_301 Software_Engineering.pdf'),
(10013, 2017, 3, 1, 'B. Sc. in Electronics and Communication Engineering', 'Computer Science and Engineering', 'CSE 315', 'Database Management System (Theoretical)', 'files/2017 CSE_315 Database_Management_System_Theoretical.pdf'),
(10015, 2017, 3, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'ECN 303', 'Economics', 'files/2017 ECN_303 Economics.pdf'),
(10016, 2018, 3, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 301', 'Software Engineering', 'files/2018 CSE_301 Software_Engineering.pdf'),
(10017, 2018, 3, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 305', 'Database', 'files/2018 CSE_305 Database.pdf'),
(10019, 2018, 3, 1, 'B. Sc. in Electronics and Communication Engineering', 'Computer Science and Engineering', 'CSE 315', 'Database Management System', 'files/2018 CSE_315 Database_Management_System.pdf'),
(10020, 2018, 3, 1, 'B. Sc. in Electronics and Communication Engineering', 'Computer Science and Engineering', 'CSE 317', 'Microprocessor and Embedded System Design', 'files/2018 CSE_317 Microprocessor_and_Embedded_System_Design.pdf'),
(10021, 2018, 3, 1, 'B. Sc. in Mathematics', 'Computer Science and Engineering', 'CSE 329', 'Programming Language', 'files/2018 CSE_329 Programming_Language.pdf'),
(10022, 2016, 4, 2, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 451', 'Basic Multimedia System', 'files/2016 CSE_451 Basic_Multimedia_System.pdf'),
(10023, 2016, 4, 2, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 453', 'Computer Graphics Theoretical', 'files/2016 CSE_453 Computer_Graphics_Theoretical.pdf'),
(10024, 2016, 4, 2, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 455', 'Pattern Recognition', 'files/2016 CSE_455 Pattern_Recognition.pdf'),
(10025, 2016, 4, 2, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 457', 'VLSI Design', 'files/2016 CSE_457 VLSI_Design.pdf'),
(10026, 2016, 4, 2, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 461', 'Communication Engineering', 'files/2016 CSE_461 Communication_Engineering.pdf'),
(10027, 2017, 4, 2, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 451', 'Basic Multimedia System', 'files/2017 CSE_451 Basic_Multimedia_System.pdf'),
(10028, 2017, 4, 2, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 453', 'Computer Graphics', 'files/2017 CSE_453 Computer_Graphics.pdf'),
(10029, 2017, 4, 2, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 455', 'Pattern Recognition', 'files/2017 CSE_455 Pattern_Recognition.pdf'),
(10031, 2017, 4, 2, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 459', 'Graph Theory', 'files/2017 CSE_459 Graph_Theory.pdf'),
(10032, 2018, 4, 2, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 455', 'Pattern Recognition Repeat', 'files/2018 CSE_455 Pattern_Recognition_Repeat.pdf'),
(10033, 2018, 2, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'STT 227', 'Introduction to Basic Statistics and Probability', 'files/2018 STT_227 Introduction_to_Basic_Statistics_and_Probability.pdf'),
(10034, 2014, 4, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CEN 401', 'Computer Interfacing', 'files/2014 CEN_401 Computer_Interfacing.pdf'),
(10035, 2014, 4, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CEN 403', 'Digital System Design', 'files/2014 CEN_403 Digital_System_Design.pdf'),
(10036, 2014, 4, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Information Technology', 'CIT 403', 'Machine Learning (Theoretical)', 'files/2014 CIT_403 Machine_Learning_Theoretical.pdf'),
(10037, 2014, 4, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Information Technology', 'CIT 405', 'System Analysis and Design Theoretical', 'files/2014 CIT_405 System_Analysis_and_Design_Theoretical.pdf'),
(10039, 2018, 4, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 403', 'Machine Learning', 'files/2018 CSE_403 Machine_Learning.pdf'),
(10040, 2018, 4, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 405', 'Computer Interfacing', 'files/2018 CSE_405 Computer_Interfacing.pdf'),
(10041, 2018, 4, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'MGT 405', 'Industrial Management (Repeat)', 'files/2018 CSE_405 Industrial_Management_Repeat.pdf'),
(10042, 2018, 4, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 409', 'System Analysis and Design', 'files/2018 CSE_409 System_Analysis_and_Design.pdf'),
(10043, 2014, 3, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CIT 303', 'Data Communication', 'files/2014 CIT_303 Data_Communication.pdf'),
(10044, 2017, 3, 1, 'B.Sc. in Computer Science and Engineering', 'Computer Science and Engineering', 'CSE 309', 'Computer Architecture', 'files/2017 CSE_309 Computer_Architecture.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_contact` varchar(100) DEFAULT NULL,
  `faculty` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `course_code` varchar(100) DEFAULT NULL,
  `course_title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `student_id`, `student_contact`, `faculty`, `degree`, `department`, `course_code`, `course_title`) VALUES
(20001, 1602022, 'rahmanmoshiur623@gmail.com', 'CSE', 'CSE', 'CSE', 'CSE 407', 'Computer Graphics');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`upload_id`, `student_id`, `link`) VALUES
(30001, 1602022, 'uploads/01. Deep Learning.pdf'),
(30004, 1602044, 'uploads/1-web.pdf'),
(30005, 1702054, 'uploads/397_the_role_of_ict.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10046;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20004;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30007;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2020 at 11:24 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usis`
--

-- --------------------------------------------------------

--
-- Table structure for table `advised_course`
--

CREATE TABLE `advised_course` (
  `advised_course_code` varchar(6) NOT NULL,
  `advised_section` int(11) NOT NULL,
  `advised_faculty_initial` varchar(3) NOT NULL,
  `advised_std_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_code` varchar(6) NOT NULL,
  `course_name` varchar(60) NOT NULL,
  `course_prereq` varchar(6) DEFAULT NULL,
  `course_no_section` int(11) NOT NULL,
  `course_department_name` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_code`, `course_name`, `course_prereq`, `course_no_section`, `course_department_name`) VALUES
('CSE110', 'Programming Language', 'NONE', 2, 'CSE'),
('CSE111', 'Programming Language-2', 'CSE110', 2, 'CSE'),
('CSE220', 'Data Structures', 'CSE111', 2, 'CSE'),
('ECO101', 'Introduction to Microeconomics', 'NONE', 2, 'ESS'),
('EEE453', 'WAN Routing', 'NONE', 1, 'EEE'),
('ENG101', 'FUNDAMENTALS OF ENGLISH', 'NONE', 1, 'ENH'),
('PHY111', 'Fundamental of Physics 1', 'NONE', 2, 'MNS'),
('PHY112', 'Fundamental of Physics 2', 'PHY111', 2, 'MNS'),
('STA201', 'Elements of Statistics and Probability ', 'NONE', 1, 'MNS');

-- --------------------------------------------------------

--
-- Table structure for table `courses_taken`
--

CREATE TABLE `courses_taken` (
  `serial_no` int(11) NOT NULL,
  `std_id` varchar(6) NOT NULL,
  `course_taken` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_taken`
--

INSERT INTO `courses_taken` (`serial_no`, `std_id`, `course_taken`) VALUES
(1, '654321', 'CSE110'),
(2, '654322', 'CSE110'),
(3, '654323', 'CSE111'),
(4, '654324', 'PHY111'),
(5, '654325', 'CSE111'),
(6, '654326', 'PHY111'),
(7, '654327', 'CSE110'),
(8, '654328', 'PHY111'),
(9, '654329', 'CSE111');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_name` varchar(3) NOT NULL,
  `department_location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_name`, `department_location`) VALUES
('CSE', 'Building 8'),
('EEE', 'Building 5'),
('ENH', 'Building 1'),
('ESS', 'Building 4'),
('MNS', 'Building 2');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_name` varchar(30) NOT NULL,
  `faculty_initial` varchar(3) NOT NULL,
  `faculty_contact_no` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_name`, `faculty_initial`, `faculty_contact_no`) VALUES
('Annajiat Alim Rasel', 'AAR', '01811387754'),
('Ahanaf Hassan Rodoshi', 'AHR', '01948463875'),
('Arif Shakil', 'ARF', '01943780904'),
('Ashraful Alam', 'ASA', '01890876543'),
('Mehedi Hasan', 'HSN', '01943780905'),
('Maliha Rehnaz', 'MAZ', '01947365278'),
('Mohsi Masnad', 'MND', '01847635245'),
('Mosaddidur Rahman', 'MSR', '01811383333'),
('Rafiqul Islam ', 'RFI', '01943780907'),
('Sadia Hamid Kazi', 'SKZ', '01822383344'),
('Tajnim Emami', 'TJE', '01552765139');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_no` int(11) NOT NULL,
  `section_total_seat` int(11) DEFAULT NULL,
  `section_available_seat` int(11) NOT NULL,
  `section_faculty_initial` varchar(3) NOT NULL,
  `section_course_code` varchar(6) NOT NULL,
  `section_timing` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_no`, `section_total_seat`, `section_available_seat`, `section_faculty_initial`, `section_course_code`, `section_timing`) VALUES
(1, 10, 10, 'AHR', 'CSE220', 'Sunday(8:00-9:20)'),
(2, 10, 10, 'AHR', 'CSE220', 'Sunday(9:30-10:50)'),
(1, 10, 10, 'AAR', 'CSE110', 'Monday(2:00-3:20)'),
(2, 10, 10, 'AAR', 'CSE110', 'Monday(3:30-4:50)'),
(1, 10, 10, 'MND', 'CSE111', 'Sunday(5:00-6:20)'),
(2, 10, 10, 'ASA', 'CSE111', 'Tuesday(3:30-4:50)'),
(1, 10, 10, 'MAZ', 'ECO101', 'Saturday(9:30-10:50)'),
(2, 10, 10, 'MAZ', 'ECO101', 'Saturday(2:00-03:20)'),
(1, 10, 10, 'SKZ', 'EEE453', 'Monday(2:00-3:20)'),
(1, 10, 10, 'TJE', 'ENG101', 'Sunday(11:00-12:20)'),
(1, 10, 10, 'HSN', 'PHY111', 'Sunday(9:30-10:50)'),
(1, 10, 10, 'MSR', 'PHY112', 'Wednesday(2:00-03:20)'),
(2, 10, 10, 'MSR', 'PHY112', 'Wednesday(03:30-04:50)'),
(1, 10, 10, 'RFI', 'STA201', 'Sunday(9:30-10:50)');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `std_name` varchar(30) NOT NULL,
  `std_id` varchar(6) NOT NULL,
  `std_contact_no` varchar(11) NOT NULL,
  `std_email_address` text NOT NULL,
  `std_department_name` varchar(3) NOT NULL,
  `std_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_name`, `std_id`, `std_contact_no`, `std_email_address`, `std_department_name`, `std_password`) VALUES
('Dipto', '654321', '01861770460', 'dipto@gmail.com', 'CSE', 'root'),
('Priata', '654322', '01939764363', 'priata@gmail.com', 'CSE', 'root'),
('Galib', '654323', '01313723639', 'galib@gmail.com', 'CSE', 'root'),
('Fahim', '654324', '01797778084', 'fahim@gmail.com', 'CSE', 'root'),
('Debo', '654325', '01875314728', 'debo.lsd@gmail.com', 'CSE', 'root'),
('Samiha', '654326', '01797778012', 'apa@gmail.com', 'ENH', 'root'),
('Fatin', '654327', '01681108518', 'fatin@gmail.com', 'ESS', 'root'),
('Tanvir', '654328', '01717569442', 'tanvir@gmail.com', 'MNS', 'root'),
('Raisa', '654329', '01678442013', 'raisa@gmail.com', 'EEE', 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `courses_taken`
--
ALTER TABLE `courses_taken`
  ADD PRIMARY KEY (`serial_no`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_name`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_initial`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`std_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses_taken`
--
ALTER TABLE `courses_taken`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

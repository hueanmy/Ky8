-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 15, 2017 at 02:11 PM
-- Server version: 5.7.17-0ubuntu0.16.10.1
-- PHP Version: 7.0.15-0ubuntu0.16.10.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Project2.15.3`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_interns`
--

CREATE TABLE `assign_interns` (
  `id` int(11) NOT NULL,
  `period` varchar(45) DEFAULT NULL,
  `studentsid` int(11) NOT NULL,
  `teachersid` int(11) NOT NULL,
  `emplyeesid` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `no_students` varchar(45) DEFAULT NULL,
  `teachersid` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `no_students`, `teachersid`, `updated_at`, `created_at`) VALUES
(1, 'LTU12A', '21', 3, '2017-03-15 07:03:57', '2017-03-15 07:03:57');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` longtext,
  `foundedyear` int(4) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `description`, `foundedyear`, `address`, `phone`, `email`, `updated_at`, `created_at`) VALUES
(1, 'Viettel', 'Công ty viettel', 2000, 'Khu công nghệ cao Hòa Lạc', '048298338', 'viettel@gmail.com', '2017-03-15 07:04:47', '2017-03-15 07:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `company_rates`
--

CREATE TABLE `company_rates` (
  `id` int(11) NOT NULL,
  `point` varchar(45) DEFAULT NULL,
  `period` varchar(45) DEFAULT NULL,
  `rate` varchar(45) DEFAULT NULL,
  `studentsid` int(11) NOT NULL,
  `emplyeesid` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `controllers`
--

CREATE TABLE `controllers` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` longtext,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `controllers`
--

INSERT INTO `controllers` (`id`, `name`, `description`, `updated_at`, `created_at`) VALUES
(1, 'UserController', 'Quản lý user', '2017-03-15 06:50:59', '2017-03-15 06:50:59'),
(2, 'AssigneeIntern', 'Quản lý phân công thực tập ', '2017-03-15 06:50:59', '2017-03-15 06:50:59'),
(3, 'CompanyController', 'Quản lý công ty', '2017-03-15 06:50:59', '2017-03-15 06:50:59'),
(4, 'CompanyRateController', 'Quản lý đánh giá sinh viên thực tập ', '2017-03-15 06:50:59', '2017-03-15 06:50:59'),
(5, 'EmployeeController', 'Quản lý nhân viên công ty', '2017-03-15 06:50:59', '2017-03-15 06:50:59'),
(6, 'GroupController', 'Quản lý group', '2017-03-15 06:54:24', '2017-03-15 06:54:24'),
(7, 'InterController', 'Quản lý thực tập ', '2017-03-15 06:54:24', '2017-03-15 06:54:24'),
(8, 'PermissionController', 'Quản lý phân quyền ', '2017-03-15 06:54:24', '2017-03-15 06:54:24'),
(9, 'RateController', 'Quản lý đánh giá thực tập của giáo viên', '2017-03-15 06:54:24', '2017-03-15 06:54:24'),
(10, 'StudentController', 'Quản lý sinh viên', '2017-03-15 06:54:24', '2017-03-15 06:54:24'),
(11, 'TeacherController', 'Quản lý giảng viên', '2017-03-15 06:54:24', '2017-03-15 06:54:24'),
(12, 'TopicController', 'Quản lý đề tài', '2017-03-15 06:54:24', '2017-03-15 06:54:24'),
(13, 'SchoolController', 'Quản lý lớp học và văn phòng', '2017-03-15 06:54:24', '2017-03-15 06:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  `no_teachers` int(3) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `phone`, `no_teachers`, `address`, `updated_at`, `created_at`) VALUES
(1, 'SOICT', 47282822, 20, 'B1', '2017-03-15 07:02:58', '2017-03-15 07:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `emplyees`
--

CREATE TABLE `emplyees` (
  `id` int(11) NOT NULL,
  `employeeid` int(11) NOT NULL,
  `dept` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `companiesid` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emplyees`
--

INSERT INTO `emplyees` (`id`, `employeeid`, `dept`, `position`, `companiesid`, `updated_at`, `created_at`) VALUES
(4, 4, 'mạng máy tính', 'hướng dẫn tại công ty', 1, '2017-03-15 07:05:55', '2017-03-15 07:05:55'),
(5, 5, 'mạng máy tính', 'đại diện doanh nghiệp', 1, '2017-03-15 07:05:55', '2017-03-15 07:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `updated_at`, `created_at`) VALUES
(1, 'admin', 'quản lý hệ thống', '2017-03-15 06:36:59', '2017-03-15 06:36:59'),
(2, 'teacher_instructions', 'giáo viên hướng dẫn thực tập', '2017-03-15 06:39:13', '2017-03-15 06:39:13'),
(3, 'teacher_managers', 'giáo viên phụ trách thực tập', '2017-03-15 06:39:13', '2017-03-15 06:39:13'),
(4, 'company\'s agents', 'đại diện doanh nghiệp', '2017-03-15 06:39:13', '2017-03-15 06:39:13'),
(5, 'company\'s instructors', 'người hướng dẫn tại doanh nghiệp', '2017-03-15 06:39:13', '2017-03-15 06:39:13'),
(6, 'students', 'sinh viên đăng ký thực tập', '2017-03-15 06:39:13', '2017-03-15 06:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `intern_statuses`
--

CREATE TABLE `intern_statuses` (
  `id` int(11) NOT NULL,
  `period` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `studentsid` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `intern_statuses`
--

INSERT INTO `intern_statuses` (`id`, `period`, `status`, `studentsid`, `updated_at`, `created_at`) VALUES
(1, '20161', 'đã hoàn thành thực tập', 1, '2017-03-15 07:08:13', '2017-03-15 07:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `controllerid` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `groupid`, `controllerid`, `updated_at`, `created_at`) VALUES
(1, 1, 1, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(2, 1, 2, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(3, 1, 3, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(4, 1, 4, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(5, 1, 5, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(6, 1, 6, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(7, 1, 7, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(8, 1, 8, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(9, 1, 9, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(10, 1, 10, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(11, 1, 11, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(12, 1, 12, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(13, 1, 13, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(14, 2, 4, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(15, 2, 9, '2017-03-15 06:57:07', '2017-03-15 06:57:07'),
(16, 2, 11, '2017-03-15 06:59:30', '2017-03-15 06:59:30'),
(17, 3, 2, '2017-03-15 06:59:30', '2017-03-15 06:59:30'),
(18, 3, 7, '2017-03-15 06:59:30', '2017-03-15 06:59:30'),
(19, 3, 12, '2017-03-15 06:59:30', '2017-03-15 06:59:30'),
(20, 4, 5, '2017-03-15 06:59:30', '2017-03-15 06:59:30'),
(22, 4, 10, '2017-03-15 06:59:30', '2017-03-15 06:59:30'),
(23, 4, 12, '2017-03-15 06:59:30', '2017-03-15 06:59:30'),
(24, 5, 4, '2017-03-15 06:59:30', '2017-03-15 06:59:30'),
(25, 5, 9, '2017-03-15 06:59:30', '2017-03-15 06:59:30'),
(26, 6, 10, '2017-03-15 06:59:30', '2017-03-15 06:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(11) NOT NULL,
  `point` varchar(45) DEFAULT NULL,
  `period` varchar(45) DEFAULT NULL,
  `rate` varchar(45) DEFAULT NULL,
  `teachersid` int(11) NOT NULL,
  `studentsid` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `point`, `period`, `rate`, `teachersid`, `studentsid`, `updated_at`, `created_at`) VALUES
(1, '9', '20161', 'hoàn thành tốt', 3, 1, '2017-03-15 07:08:41', '2017-03-15 07:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `schoolyear` varchar(5) DEFAULT NULL,
  `grade` tinyint(2) DEFAULT NULL,
  `fromyear` int(4) DEFAULT NULL,
  `toyear` int(4) DEFAULT NULL,
  `major` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `studentid`, `schoolyear`, `grade`, `fromyear`, `toyear`, `major`, `updated_at`, `created_at`) VALUES
(1, 20118994, 'k58', 4, 2013, 2018, 'công nghệ thông tin', '2017-03-15 07:07:40', '2017-03-15 07:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `student_cvs`
--

CREATE TABLE `student_cvs` (
  `id` int(50) NOT NULL,
  `studentsid` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cvid` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_cvs`
--

INSERT INTO `student_cvs` (`id`, `studentsid`, `updated_at`, `created_at`, `cvid`) VALUES
(1, 1, '2017-03-15 07:09:05', '2017-03-15 07:09:05', '1');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `teacherid` varchar(15) NOT NULL,
  `start` int(5) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `degree` varchar(45) DEFAULT NULL,
  `departementsid` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `teacherid`, `start`, `position`, `degree`, `departementsid`, `updated_at`, `created_at`) VALUES
(2, '02', 2004, 'quản lý thực tập', 'Tiến sĩ', 1, '2017-03-15 07:03:34', '2017-03-15 07:03:34'),
(3, '03', 2004, 'Hướng dẫn thực tập', 'Thạc sĩ', 1, '2017-03-15 07:03:34', '2017-03-15 07:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `categories` varchar(45) DEFAULT NULL,
  `description` longtext,
  `no_interns` int(2) DEFAULT NULL,
  `timelimit` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `stop` date DEFAULT NULL,
  `emplyeesid` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `categories`, `description`, `no_interns`, `timelimit`, `status`, `start`, `stop`, `emplyeesid`, `updated_at`, `created_at`) VALUES
(1, 'Security', 'Security', 'Phân tích phát hiện lỗ hổng tấn công website', 4, '3months', 0, '2017-02-02', '2017-05-15', 5, '2017-03-15 07:10:37', '2017-03-15 07:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phonenumber` int(15) DEFAULT NULL,
  `dateofbirth` varchar(45) DEFAULT NULL,
  `lock` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `groupid` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `phonenumber`, `dateofbirth`, `lock`, `status`, `groupid`, `updated_at`, `created_at`) VALUES
(1, 'lemai', 'mai', 'Lê Thị', 'Mai', '20118994@student.hust.edu.vn2011', 1692630370, '09/09/1993', 0, 1, 6, '2017-03-15 06:40:48', '2017-03-15 06:40:48'),
(2, 'huonggiang', 'giang', 'Vũ Thị ', 'Hương Giang', 'vthg@soict.hust.edu.vn', 1234759950, '01/02/1984', 0, 1, 3, '2017-03-15 06:42:06', '2017-03-15 06:42:06'),
(3, 'banhmai', 'bmai', 'Bành Thị', 'Quỳnh Mai', 'btqm@soict.hust.edu.vn', 987363079, '01/03/1984', 0, 1, 2, '2017-03-15 06:44:20', '2017-03-15 06:44:20'),
(4, 'phuongthao', 'thao', 'Phạm Thị', 'Phương Thảo', 'thaopt@viettel.com', 167939393, '09/08/1989', 0, 1, 5, '2017-03-15 06:44:20', '2017-03-15 06:44:20'),
(5, 'leha', 'ha', 'Trần Lê', 'Hà', 'halt@viettel.com', 1254848474, '07/06/1980', 0, 1, 4, '2017-03-15 06:46:31', '2017-03-15 06:46:31'),
(6, 'honghai', 'hai', 'Lê Hồng', 'Hải', 'haihl@hust.edu.vn', 1627737337, '09/03/1979', 0, 1, 1, '2017-03-15 06:46:31', '2017-03-15 06:46:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_interns`
--
ALTER TABLE `assign_interns`
  ADD PRIMARY KEY (`id`,`studentsid`,`teachersid`,`emplyeesid`),
  ADD KEY `fk_assign_interns_students1_idx` (`studentsid`),
  ADD KEY `fk_assign_interns_teachers1_idx` (`teachersid`),
  ADD KEY `fk_assign_interns_emplyees1_idx` (`emplyeesid`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`,`teachersid`),
  ADD KEY `fk_classes_teachers1_idx` (`teachersid`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_rates`
--
ALTER TABLE `company_rates`
  ADD PRIMARY KEY (`id`,`studentsid`,`emplyeesid`),
  ADD KEY `fk_company_rates_students1_idx` (`studentsid`),
  ADD KEY `fk_company_rates_emplyees1_idx` (`emplyeesid`);

--
-- Indexes for table `controllers`
--
ALTER TABLE `controllers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emplyees`
--
ALTER TABLE `emplyees`
  ADD PRIMARY KEY (`id`,`employeeid`,`companiesid`),
  ADD KEY `fk_emplyees_companies1_idx` (`companiesid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intern_statuses`
--
ALTER TABLE `intern_statuses`
  ADD PRIMARY KEY (`id`,`studentsid`),
  ADD KEY `fk_intern_statuses_students1_idx` (`studentsid`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`,`groupid`,`controllerid`),
  ADD KEY `fk_permissions_groups1_idx` (`groupid`),
  ADD KEY `fk_permissions_controllers1_idx` (`controllerid`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`,`teachersid`,`studentsid`),
  ADD KEY `fk_rate_teachers1_idx` (`teachersid`),
  ADD KEY `fk_rate_students1_idx` (`studentsid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`,`studentid`);

--
-- Indexes for table `student_cvs`
--
ALTER TABLE `student_cvs`
  ADD PRIMARY KEY (`id`,`studentsid`),
  ADD KEY `fk_student_cvs_students1_idx` (`studentsid`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`,`teacherid`,`departementsid`),
  ADD KEY `fk_Teachers_departements1_idx` (`departementsid`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`,`emplyeesid`),
  ADD KEY `fk_topics_emplyees1_idx` (`emplyeesid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`groupid`),
  ADD KEY `fk_users_group1_idx` (`groupid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_interns`
--
ALTER TABLE `assign_interns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `company_rates`
--
ALTER TABLE `company_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `controllers`
--
ALTER TABLE `controllers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `intern_statuses`
--
ALTER TABLE `intern_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student_cvs`
--
ALTER TABLE `student_cvs`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assign_interns`
--
ALTER TABLE `assign_interns`
  ADD CONSTRAINT `fk_assign_interns_emplyees1` FOREIGN KEY (`emplyeesid`) REFERENCES `emplyees` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_assign_interns_students1` FOREIGN KEY (`studentsid`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_assign_interns_teachers1` FOREIGN KEY (`teachersid`) REFERENCES `teachers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `fk_classes_teachers1` FOREIGN KEY (`teachersid`) REFERENCES `teachers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `company_rates`
--
ALTER TABLE `company_rates`
  ADD CONSTRAINT `fk_company_rates_emplyees1` FOREIGN KEY (`emplyeesid`) REFERENCES `emplyees` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_company_rates_students1` FOREIGN KEY (`studentsid`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `emplyees`
--
ALTER TABLE `emplyees`
  ADD CONSTRAINT `fk_emplyees_companies1` FOREIGN KEY (`companiesid`) REFERENCES `companies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_emplyees_users1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `intern_statuses`
--
ALTER TABLE `intern_statuses`
  ADD CONSTRAINT `fk_intern_statuses_students1` FOREIGN KEY (`studentsid`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `fk_permissions_controllers1` FOREIGN KEY (`controllerid`) REFERENCES `controllers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_permissions_groups1` FOREIGN KEY (`groupid`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rates`
--
ALTER TABLE `rates`
  ADD CONSTRAINT `fk_rate_students1` FOREIGN KEY (`studentsid`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rate_teachers1` FOREIGN KEY (`teachersid`) REFERENCES `teachers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk_Students_Users1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student_cvs`
--
ALTER TABLE `student_cvs`
  ADD CONSTRAINT `fk_student_cvs_students1` FOREIGN KEY (`studentsid`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `fk_Teachers_Users` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Teachers_departements1` FOREIGN KEY (`departementsid`) REFERENCES `departments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `fk_topics_emplyees1` FOREIGN KEY (`emplyeesid`) REFERENCES `emplyees` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_group1` FOREIGN KEY (`groupid`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

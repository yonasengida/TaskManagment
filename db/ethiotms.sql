-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2018 at 11:27 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ethiotms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `dept_id` int(11) NOT NULL,
  `dept_name` text COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `groups` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`dept_id`, `dept_name`, `parent`, `groups`) VALUES
(1, 'CEO', 0, 'Corporate'),
(2, 'CEO / ISD', 1, 'Corporate'),
(3, 'ITSD', 2, 'Corporate'),
(4, 'SD', 3, 'Corporate');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pass` text COLLATE utf8_unicode_ci NOT NULL,
  `emp_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `emp_dept` int(11) NOT NULL,
  `emp_group` text COLLATE utf8_unicode_ci NOT NULL,
  `emp_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `role` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'user',
  `ecreated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `email`, `pass`, `emp_id`, `full_name`, `emp_dept`, `emp_group`, `emp_status`, `role`, `ecreated_at`) VALUES
(1, 'yonas.engida', 'ba97b1cf397425a852d1316d10787b1d97b5bc85', '8940', 'Yonas Engida', 3, 'corporate', 'active', 'admin', '2018-09-02 00:00:00'),
(2, 'samuel.dadi', 'ba97b1cf397425a852d1316d10787b1d97b5bc85', '8732', 'Samuel Dadi', 2, 'corporate', 'active', 'user', '2018-09-27 00:00:00'),
(3, 'hassen.mohamed', 'ba97b1cf397425a852d1316d10787b1d97b5bc85', '1', 'Hassen Mohammed Ali ', 1, 'corporate', 'active', 'user', '2018-10-04 00:00:00'),
(4, 'Biniyam.Teklu', 'ba97b1cf397425a852d1316d10787b1d97b5bc85', '1', 'Biniyam Teklu', 1, 'corporate', 'active', 'user', '2018-10-04 00:00:00'),
(5, 'tsehaye.gebrehiwot', 'ba97b1cf397425a852d1316d10787b1d97b5bc85', '1', 'Tsehaye Gebrehiwot', 1, 'corporate', 'active', 'user', '2018-10-04 00:00:00'),
(7, 'endale.asrat', 'ba97b1cf397425a852d1316d10787b1d97b5bc85', '7896', 'Endale Asirat', 1, 'Corporate', 'active', 'user', '2018-10-07 09:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblhistory`
--

CREATE TABLE `tblhistory` (
  `hist_id` int(11) NOT NULL,
  `htask_id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `remark` text COLLATE utf8_unicode_ci NOT NULL,
  `hcreated_by` int(11) NOT NULL,
  `hcreated_at` date NOT NULL,
  `hupdated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblhistory`
--

INSERT INTO `tblhistory` (`hist_id`, `htask_id`, `owner`, `status`, `remark`, `hcreated_by`, `hcreated_at`, `hupdated_at`) VALUES
(1, 2, 1, 'Open', '', 1, '2018-09-30', '2018-09-03 00:00:00'),
(2, 3, 1, 'Open', '', 1, '2018-09-30', NULL),
(3, 2, 1, 'OnProgress', 'Progress Update', 0, '0000-00-00', NULL),
(4, 2, 1, 'OnProgress', 'Progress Update 2', 0, '0000-00-00', NULL),
(6, 2, 1, 'Closed', 'closed Task', 0, '0000-00-00', NULL),
(7, 4, 1, 'Open', '', 1, '2018-09-30', NULL),
(8, 4, 1, 'Closed', 'skdskfskf', 0, '0000-00-00', NULL),
(9, 5, 2, 'Open', '', 1, '2018-09-30', NULL),
(10, 5, 2, 'Closed', 'This task is cloide by Sami', 0, '0000-00-00', NULL),
(11, 3, 1, 'Closed', 'dkfjdkf', 0, '0000-00-00', NULL),
(12, 6, 1, 'Open', '', 1, '2018-09-30', NULL),
(13, 6, 1, 'OnProgress', 'dsks', 0, '0000-00-00', NULL),
(14, 6, 1, 'OnProgress', 'dsks', 0, '0000-00-00', NULL),
(15, 6, 1, 'OnProgress', 'prksjdskfjskfjf', 0, '0000-00-00', NULL),
(16, 6, 1, 'OnProgress', 'smdnsmnsmsf', 0, '0000-00-00', NULL),
(17, 6, 1, 'OnProgress', 'skdsnkd', 0, '0000-00-00', '2018-09-30 11:53:36'),
(18, 6, 1, 'OnProgress', 'sksksfsf', 0, '0000-00-00', '2018-09-30 11:53:53'),
(19, 6, 1, 'Closed', 'Final Update', 0, '0000-00-00', '2018-09-30 11:54:15'),
(20, 7, 1, 'Open', '', 2, '2018-09-30', NULL),
(21, 7, 1, 'OnProgress', 'sdsjdsjs', 0, '0000-00-00', '2018-09-30 12:55:43'),
(22, 7, 1, 'OnProgress', 'ksdjksd', 0, '0000-00-00', '2018-09-30 12:57:07'),
(23, 7, 1, 'Closed', 'this is Yonas', 0, '0000-00-00', '2018-09-30 13:53:50'),
(24, 8, 2, 'Open', '', 1, '2018-09-30', NULL),
(25, 9, 2, 'Open', '', 1, '2018-09-30', NULL),
(26, 10, 1, 'Open', '', 1, '2018-09-30', NULL),
(27, 10, 1, 'Closed', 'skajaskjas', 0, '0000-00-00', '2018-09-30 14:04:19'),
(28, 7, 1, 'OnProgress', 'test with tame', 0, '0000-00-00', '2018-09-30 16:23:00'),
(29, 7, 1, 'Closed', 'Close R', 0, '0000-00-00', '2018-09-30 16:25:45'),
(30, 11, 2, 'Open', '', 2, '2018-09-30', NULL),
(31, 9, 2, 'Closed', 'Close', 0, '0000-00-00', '2018-09-30 18:42:46'),
(32, 8, 2, 'Closed', 'Close final', 0, '0000-00-00', '2018-09-30 18:43:14'),
(33, 7, 1, 'Closed', 'close', 0, '0000-00-00', '2018-10-01 10:52:42'),
(34, 11, 1, 'OnProgress', 'sdsjfsf', 0, '0000-00-00', '2018-10-01 11:01:43'),
(35, 12, 1, 'Open', '', 1, '2018-10-01', NULL),
(36, 13, 2, 'Open', '', 1, '2018-10-01', NULL),
(37, 11, 1, 'OnProgress', 'slfslsl', 0, '0000-00-00', '2018-10-01 13:42:29'),
(38, 12, 1, 'OnProgress', 'ajhsjash', 0, '0000-00-00', '2018-10-01 13:48:40'),
(39, 11, 1, 'OnProgress', 'bini update', 0, '0000-00-00', '2018-10-01 13:48:58'),
(40, 14, 1, 'Open', '', 1, '2018-10-01', NULL),
(41, 11, 1, 'Closed', 'SKDS', 0, '0000-00-00', '2018-10-02 10:40:35'),
(42, 15, 1, 'Open', '', 1, '2018-10-02', NULL),
(43, 12, 1, 'OnProgress', 'dofdof', 0, '0000-00-00', '2018-10-02 16:42:05'),
(44, 12, 1, 'OnProgress', 'kdfjkfjsdksdkfdhfkjdfh', 0, '0000-00-00', '2018-10-02 16:42:16'),
(45, 12, 1, 'Closed', 'skddk=', 0, '0000-00-00', '2018-10-02 16:42:26'),
(46, 16, 1, 'Open', '', 1, '2018-10-04', NULL),
(47, 14, 1, 'OnProgress', 'ksfksf', 0, '0000-00-00', '2018-10-04 13:44:05'),
(48, 14, 1, 'OnProgress', 'Reamrk with Sami', 0, '0000-00-00', '2018-10-04 13:44:15'),
(49, 17, 4, 'Open', '', 4, '2018-10-04', NULL),
(50, 18, 1, 'Open', '', 2, '2018-10-05', NULL),
(51, 13, 2, 'Closed', 'closed', 0, '0000-00-00', '2018-10-05 07:23:25'),
(52, 19, 2, 'Open', '', 3, '2018-10-05', NULL),
(53, 20, 3, 'Open', '', 3, '2018-10-05', NULL),
(54, 20, 3, 'OnProgress', 'Started', 0, '0000-00-00', '2018-10-05 08:19:48'),
(55, 20, 3, 'OnProgress', 'Pended', 0, '0000-00-00', '2018-10-05 08:20:42'),
(56, 18, 1, 'Cancel', 'sjfdshd', 0, '0000-00-00', '2018-10-05 08:43:39'),
(57, 16, 1, 'OnProgress', 'xcdcxcxcxc', 0, '0000-00-00', '2018-10-06 08:23:11'),
(58, 18, 1, 'OnProgress', 'test Progress', 0, '0000-00-00', '2018-10-06 08:23:51'),
(59, 16, 1, 'OnProgress', 'yytyyt', 0, '0000-00-00', '2018-10-06 19:13:45'),
(60, 21, 1, 'Open', '', 1, '2018-10-07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltasks`
--

CREATE TABLE `tbltasks` (
  `task_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `est_time` int(11) DEFAULT NULL,
  `progress` int(11) DEFAULT NULL,
  `deadline` date NOT NULL,
  `tdept_id` int(11) NOT NULL,
  `task_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Open',
  `tcreated_by` int(11) NOT NULL,
  `assignedto` int(11) NOT NULL,
  `creator` text COLLATE utf8_unicode_ci NOT NULL,
  `approved` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tcreated_at` date NOT NULL,
  `tupdated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbltasks`
--

INSERT INTO `tbltasks` (`task_id`, `title`, `description`, `est_time`, `progress`, `deadline`, `tdept_id`, `task_status`, `tcreated_by`, `assignedto`, `creator`, `approved`, `tcreated_at`, `tupdated_at`) VALUES
(2, 'Title2', 'Summaray12', 12, 10, '2018-09-13', 2, 'Closed', 1, 1, 'Yonas', 'false', '2018-09-30', '2018-09-30'),
(3, 'Title123', 'My TASK', 12, 20, '2018-09-28', 1, 'Closed', 1, 1, 'Yonas', 'false', '2018-09-30', '2018-09-30'),
(4, 'Title123', 'ssjfhjsfsfj', 123, 45, '2018-09-21', 1, 'Closed', 1, 1, '', 'false', '2018-09-30', '2018-09-30'),
(5, 'TAsk for Sami', 'fskfjk', 34, 78, '2018-10-05', 1, 'Closed', 1, 2, '', 'false', '2018-09-30', '2018-09-30'),
(6, 'min1', 'sdsjds', 65, 54, '2018-09-26', 1, 'Closed', 1, 1, '', 'false', '2018-09-30', '2018-09-30'),
(7, 'task from sami to yonas', 'This Is task for Yonas', 10, 888, '2018-09-29', 1, 'Closed', 2, 1, 'Sami ', 'false', '2018-09-30', '2018-10-01'),
(8, 'Title2', 'This is Yonas', 10, NULL, '2018-09-27', 1, 'Closed', 1, 2, '', 'false', '2018-09-30', '2018-09-30'),
(9, 'Title334', 'kkdfdkjk', 12, 78, '2018-09-22', 3, 'Closed', 1, 2, '', 'false', '2018-09-30', '2018-09-30'),
(10, 'Title1', 'jHDDHDK', 15, 89, '2018-09-30', 1, 'Closed', 1, 1, '', 'false', '2018-09-30', '2018-09-30'),
(11, 'Task One', 'Summaray1233', 1, 78, '2018-09-27', 1, 'Closed', 2, 1, 'Samuel Dadi', 'false', '2018-09-30', '2018-10-02'),
(12, 'YONAS TEST', 'YONAS ', NULL, 25, '0000-00-00', 1, 'Closed', 1, 1, 'Yonas Engida', 'false', '2018-10-01', '2018-10-02'),
(13, 'sjfhajshaj', 'sjdshsfjasf', NULL, 82, '2018-10-31', 2, 'Closed', 1, 2, 'Yonas Engida', 'false', '2018-10-01', '2018-10-05'),
(14, 'ksajkjaskf', 'ksfksf', NULL, 85, '2018-10-31', 2, 'OnProgress', 1, 1, 'Yonas Engida', 'false', '2018-10-01', '2018-10-04'),
(15, 'dfdkf', 'dkjkgdkgj', 45, 12, '2018-10-23', 2, 'Open', 1, 1, 'Yonas Engida', 'false', '2018-10-02', NULL),
(16, 'skfsjfkf', 'skfskfks', NULL, 10, '2018-10-31', 1, 'OnProgress', 1, 1, 'Yonas Engida', 'false', '2018-10-04', '2018-10-06'),
(17, 'Security Project Engineer', 'Security Project Engineer', NULL, NULL, '2018-10-31', 1, 'Open', 4, 1, 'Biniyam Teklu', 'false', '2018-10-04', NULL),
(18, 'Please test and complete the current assignment ASAP!', 'It is requirement is from TOP management and needs immediate action', NULL, 25, '2018-10-10', 4, 'OnProgress', 2, 1, 'Samuel Dadi', 'false', '2018-10-05', '2018-10-06'),
(19, 'Preparing Development Environmnet', 'You have to prepare development environment within three weeks from today.', NULL, NULL, '2018-10-05', 1, 'Open', 3, 2, 'Hassen Mohammed Ali ', 'false', '2018-10-05', NULL),
(20, 'Finalize Staffing for the Software Development Team', '', NULL, NULL, '2018-10-19', 1, 'OnProgress', 3, 3, 'Hassen Mohammed Ali ', 'false', '2018-10-05', '2018-10-05'),
(21, 'Title', 'fdkfjdkfj', NULL, NULL, '2018-10-29', 1, 'Open', 1, 1, 'Yonas Engida', 'false', '2018-10-07', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewtaskhistory`
-- (See below for the actual view)
--
CREATE TABLE `viewtaskhistory` (
`hist_id` int(11)
,`htask_id` int(11)
,`owner` int(11)
,`status` varchar(50)
,`remark` text
,`hcreated_by` int(11)
,`hcreated_at` date
,`hupdated_at` datetime
,`id` int(11)
,`email` varchar(100)
,`pass` text
,`emp_id` varchar(100)
,`full_name` varchar(100)
,`emp_dept` int(11)
,`emp_group` text
,`emp_status` varchar(100)
,`ecreated_at` datetime
,`dept_id` int(11)
,`dept_name` text
,`parent` int(11)
,`groups` text
,`task_id` int(11)
,`title` text
,`description` text
,`est_time` int(11)
,`deadline` date
,`tdept_id` int(11)
,`task_status` varchar(50)
,`tcreated_by` int(11)
,`assignedto` int(11)
,`creator` text
,`approved` varchar(10)
,`tcreated_at` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewtasks`
-- (See below for the actual view)
--
CREATE TABLE `viewtasks` (
`task_id` int(11)
,`title` text
,`description` text
,`est_time` int(11)
,`progress` int(11)
,`deadline` date
,`tdept_id` int(11)
,`task_status` varchar(50)
,`tcreated_by` int(11)
,`assignedto` int(11)
,`creator` text
,`approved` varchar(10)
,`tcreated_at` date
,`dept_id` int(11)
,`dept_name` text
,`parent` int(11)
,`groups` text
,`id` int(11)
,`email` varchar(100)
,`pass` text
,`emp_id` varchar(100)
,`full_name` varchar(100)
,`emp_dept` int(11)
,`emp_group` text
,`emp_status` varchar(100)
,`ecreated_at` datetime
);

-- --------------------------------------------------------

--
-- Structure for view `viewtaskhistory`
--
DROP TABLE IF EXISTS `viewtaskhistory`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewtaskhistory`  AS  select `tblhistory`.`hist_id` AS `hist_id`,`tblhistory`.`htask_id` AS `htask_id`,`tblhistory`.`owner` AS `owner`,`tblhistory`.`status` AS `status`,`tblhistory`.`remark` AS `remark`,`tblhistory`.`hcreated_by` AS `hcreated_by`,`tblhistory`.`hcreated_at` AS `hcreated_at`,`tblhistory`.`hupdated_at` AS `hupdated_at`,`tblemployees`.`id` AS `id`,`tblemployees`.`email` AS `email`,`tblemployees`.`pass` AS `pass`,`tblemployees`.`emp_id` AS `emp_id`,`tblemployees`.`full_name` AS `full_name`,`tblemployees`.`emp_dept` AS `emp_dept`,`tblemployees`.`emp_group` AS `emp_group`,`tblemployees`.`emp_status` AS `emp_status`,`tblemployees`.`ecreated_at` AS `ecreated_at`,`tbldepartments`.`dept_id` AS `dept_id`,`tbldepartments`.`dept_name` AS `dept_name`,`tbldepartments`.`parent` AS `parent`,`tbldepartments`.`groups` AS `groups`,`tbltasks`.`task_id` AS `task_id`,`tbltasks`.`title` AS `title`,`tbltasks`.`description` AS `description`,`tbltasks`.`est_time` AS `est_time`,`tbltasks`.`deadline` AS `deadline`,`tbltasks`.`tdept_id` AS `tdept_id`,`tbltasks`.`task_status` AS `task_status`,`tbltasks`.`tcreated_by` AS `tcreated_by`,`tbltasks`.`assignedto` AS `assignedto`,`tbltasks`.`creator` AS `creator`,`tbltasks`.`approved` AS `approved`,`tbltasks`.`tcreated_at` AS `tcreated_at` from (((`tblhistory` join `tblemployees`) join `tbldepartments`) join `tbltasks`) where ((`tblhistory`.`htask_id` = `tbltasks`.`task_id`) and (`tblhistory`.`owner` = `tblemployees`.`id`) and (`tbltasks`.`tdept_id` = `tbldepartments`.`dept_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `viewtasks`
--
DROP TABLE IF EXISTS `viewtasks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewtasks`  AS  select `tbltasks`.`task_id` AS `task_id`,`tbltasks`.`title` AS `title`,`tbltasks`.`description` AS `description`,`tbltasks`.`est_time` AS `est_time`,`tbltasks`.`progress` AS `progress`,`tbltasks`.`deadline` AS `deadline`,`tbltasks`.`tdept_id` AS `tdept_id`,`tbltasks`.`task_status` AS `task_status`,`tbltasks`.`tcreated_by` AS `tcreated_by`,`tbltasks`.`assignedto` AS `assignedto`,`tbltasks`.`creator` AS `creator`,`tbltasks`.`approved` AS `approved`,`tbltasks`.`tcreated_at` AS `tcreated_at`,`tbldepartments`.`dept_id` AS `dept_id`,`tbldepartments`.`dept_name` AS `dept_name`,`tbldepartments`.`parent` AS `parent`,`tbldepartments`.`groups` AS `groups`,`tblemployees`.`id` AS `id`,`tblemployees`.`email` AS `email`,`tblemployees`.`pass` AS `pass`,`tblemployees`.`emp_id` AS `emp_id`,`tblemployees`.`full_name` AS `full_name`,`tblemployees`.`emp_dept` AS `emp_dept`,`tblemployees`.`emp_group` AS `emp_group`,`tblemployees`.`emp_status` AS `emp_status`,`tblemployees`.`ecreated_at` AS `ecreated_at` from ((`tbltasks` join `tbldepartments`) join `tblemployees`) where ((`tbltasks`.`tdept_id` = `tbldepartments`.`dept_id`) and (`tbltasks`.`assignedto` = `tblemployees`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhistory`
--
ALTER TABLE `tblhistory`
  ADD PRIMARY KEY (`hist_id`,`htask_id`,`owner`,`hcreated_by`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `tbltasks`
--
ALTER TABLE `tbltasks`
  ADD PRIMARY KEY (`task_id`,`tdept_id`,`tcreated_by`,`assignedto`),
  ADD KEY `tbltasks_ibfk_1` (`tdept_id`),
  ADD KEY `assignedto` (`assignedto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblhistory`
--
ALTER TABLE `tblhistory`
  MODIFY `hist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbltasks`
--
ALTER TABLE `tbltasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblhistory`
--
ALTER TABLE `tblhistory`
  ADD CONSTRAINT `tblhistory_ibfk_1` FOREIGN KEY (`owner`) REFERENCES `tblemployees` (`id`);

--
-- Constraints for table `tbltasks`
--
ALTER TABLE `tbltasks`
  ADD CONSTRAINT `tbltasks_ibfk_1` FOREIGN KEY (`tdept_id`) REFERENCES `tbldepartments` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbltasks_ibfk_2` FOREIGN KEY (`assignedto`) REFERENCES `tblemployees` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

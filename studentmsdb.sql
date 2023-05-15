-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 03:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'admin', 'admin', 1858726512, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-04-03 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassName`, `Section`, `CreationDate`) VALUES
(12, 'Software Engineerng', 'A', '2023-05-13 14:20:29'),
(13, 'Android Development', 'A', '2023-05-13 14:21:36'),
(14, 'Software Engineerng', 'B', '2023-05-13 14:21:42'),
(15, 'Android Development', 'B', '2023-05-13 14:21:49'),
(16, 'Big Data &AI', 'A', '2023-05-13 14:22:19'),
(17, 'Big Data &AI', 'B', '2023-05-13 14:22:26'),
(18, 'operating system (OS)', 'A', '2023-05-13 14:23:14'),
(19, 'Mathematics ', 'B', '2023-05-13 14:23:46'),
(20, 'Java', 'A', '2023-05-13 14:24:10'),
(21, 'Advanced Java', 'A', '2023-05-13 14:24:26'),
(22, 'Database', 'B', '2023-05-13 14:24:40'),
(23, 'Database', 'B', '2023-05-13 14:24:52'),
(24, 'Python', 'B', '2023-05-13 14:25:35'),
(25, 'Software Development', 'A', '2023-05-13 14:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` mediumtext DEFAULT NULL,
  `ClassId` int(10) DEFAULT NULL,
  `NoticeMsg` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`ID`, `NoticeTitle`, `ClassId`, `NoticeMsg`, `CreationDate`) VALUES
(2, 'Marks of Unit Test.', 3, 'Meet your class teacher for seeing copies of unit test', '2022-01-19 06:35:58'),
(3, 'Marks of Unit Test.', 2, 'Meet your class teacher for seeing copies of unit test', '2022-01-19 06:35:58'),
(4, 'Test', 3, 'This is for testing.', '2022-02-02 18:17:03'),
(5, 'Test Notice', 8, 'This is for Testing.', '2022-02-02 19:03:43'),
(6, 'Off Day', 13, 'The class will be off in Next Monday ', '2023-05-13 14:47:53'),
(7, 'Mid Exam', 15, 'Exam will be held on 5 May', '2023-05-13 14:54:04'),
(8, 'Class Start time', 12, 'Class will be start at 9 am on next  Saturday', '2023-05-13 14:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'ABOUT YNJGY', '<div style=\"text-align: start;\"><span times=\"\" new=\"\" letter-spacing:=\"\" font-size:=\"\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: Arial; font-size: 15px; text-indent: 28px;\">Yunnan University of Business Management, approved by the Chinese Ministry of Education, is a full-time practical-oriented undergraduate university with the quali</span><span times=\"\" new=\"\" letter-spacing:=\"\" font-size:=\"\" style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: Arial; font-size: 15px; text-indent: 28px;\">?cation of issuing diplomas and degrees independently.&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 15px; text-indent: 28px; font-weight: initial;\">The university has two campuses, Haiyuan and Anning, covering an area of 87 hectares. As of 2019, the university has 36,234 full-time students registered in 6 secondary colleges, including College of Finance&nbsp;and Accounting, College of International Business, College of&nbsp;Art and Media, College of Education, College of Engineering,&nbsp;and College of Medicine.&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: \" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 19px;=\"\" font-weight:=\"\" initial;\"=\"\">&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: \" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 19px;=\"\" font-weight:=\"\" initial;\"=\"\">Yunnan University of Business Management&nbsp;was founded in 1992. It was approved by the People\'s Government of Yunnan Province to be a higher vocational college in 2004. Later, the University was titled as a Provincial Demonstration Vocational College in Yunnan Province in 2011. In 2014, it was promoted to an undergraduate university under the approval of Ministry of Education. In 2017,&nbsp;it was awarded as the ?rst batch of model colleges and universities for applied talents training in Yunnan Province.&nbsp;</span><br></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', '296,Haitun Road,Wuhua District,Kunming City,Yunnan Province,PRCAnning Campus: No. 17, Qilin Road, Vocational Education Park, Anning City, Yunnan Province', 'ynjgy@gmail.com', 871, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(4, 'School will re-open ', 'Consult your class teacher.', '2023-05-13 15:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblquery`
--

CREATE TABLE `tblquery` (
  `id` int(11) NOT NULL,
  `teacherId` int(11) DEFAULT NULL,
  `fName` varchar(200) DEFAULT NULL,
  `emailId` varchar(200) DEFAULT NULL,
  `mobileNumber` bigint(10) DEFAULT NULL,
  `Query` mediumtext DEFAULT NULL,
  `queryDate` timestamp NULL DEFAULT current_timestamp(),
  `teacherNote` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext DEFAULT NULL,
  `MotherName` mediumtext DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(3, 'Anshul', 'anshul@gmali.com', '2', 'Female', '1986-01-05', 'uii-990', 'Kailesg', 'jakinnm', 4646546546, 6546598798, 'jlkjkljoiujiouoil', 'anshul1986', '202cb962ac59075b964b07152d234b70', '4f0691cfe48c8f74fe413c7b92391ff41642605892.jpg', '2022-01-19 15:24:52'),
(4, 'John Doe', 'john@gmail.com', '1', 'Female', '2002-02-10', '10806121', 'Anuj Kumar', 'Garima Singh', 1234698741, 1234567890, 'New Delhi', 'john12', 'f925916e2754e5e03f75dd58a5733251', 'ebcd036a0db50db993ae98ce380f64191643825985.png', '2022-02-02 18:19:45'),
(5, 'Anuj kumar Singh', 'akkr@gmail.com', '8', 'Male', '2001-05-30', '1080623', 'Bijendra Singh', 'Kamlesh Devi', 1472589630, 1236987450, 'New Delhi', 'anujk3', 'f925916e2754e5e03f75dd58a5733251', '2f413c4becfa2db4bc4fc2ccead84f651643828242.png', '2022-02-02 18:57:22'),
(6, 'a', 'a@gmail.com', '1', 'Female', '2023-05-02', '1', 'aa', 'aaa', 1, 1, '1', 'a', 'c4ca4238a0b923820dcc509a6f75849b', '5fd39e887695552da5d9e0737fc1a9a51683948459.png', '2023-05-13 03:27:39'),
(7, 'shang xue', 'xue@gmail.com', '12', 'Female', '2000-02-10', '1001', 'Mr', 'Mis', 1318787854, 1318787854, 'China', 'xue', '698d51a19d8a121ce581499d7b701668', 'a97b1296e5d2ef87896590c6e35b087d1683988707.jpg', '2023-05-13 14:38:27'),
(8, 'fangyu', 'yu@gmail.com', '13', 'Female', '2022-01-13', '1002', 'Mr', 'Mis', 185876554, 185876554, 'China', 'yu', 'bcbe3365e6ac95ea2c0343a2395834dd', '7186105e50ae26eda7e7ea86ee8b5c431683988840.jpg', '2023-05-13 14:40:40'),
(9, 'tiantian', 'tian@gmail.com', '15', 'Male', '1999-04-13', '1003', 'Mr', 'Mis', 1859652552, 1859652552, 'kunming', 'tian', '310dcbbf4cce62f762a2aaa148d556bd', 'b4aacfc98f6b1bae2990efa67af4d6761683988958.jpg', '2023-05-13 14:42:38'),
(10, 'tianming', 'ming@gmail.com', '16', 'Male', '2022-11-04', '1004', 'Mr a', 'Mis a', 13585656, 13585656, 'china', 'ming', '550a141f12de6341fba65b0ad0433500', '07cf923a5e9c09343c94e71ef225ab0a1683989096.jpg', '2023-05-13 14:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `ID` int(10) NOT NULL,
  `Subject` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`ID`, `Subject`, `CreationDate`) VALUES
(15, 'Software Engineering', '2023-05-13 23:27:15'),
(16, 'Android Development', '2023-05-13 23:36:52'),
(17, 'Big Data &AI', '2023-05-13 23:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE `tblteacher` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Picture` varchar(200) NOT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `Qualifications` varchar(120) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `TeacherSub` varchar(120) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `teachingExp` varchar(10) DEFAULT NULL,
  `JoiningDate` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `isPublic` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblteacher`
--

INSERT INTO `tblteacher` (`ID`, `Name`, `Picture`, `Email`, `MobileNumber`, `password`, `Qualifications`, `Address`, `TeacherSub`, `description`, `teachingExp`, `JoiningDate`, `RegDate`, `isPublic`) VALUES
(5, 'Yang ye', '24afd6c429384f352b82247530a0a89a1684021290.jpg', 'yangye@gmail.com', 8565232265, NULL, 'Masters', 'kunming, yunnan, china', 'Software Engineering', 'Chinese and English Major Teacher', '5', '2019-01-01', '2023-05-13 23:41:30', NULL),
(6, 'LiHongyu', '24afd6c429384f352b82247530a0a89a1684021416.jpg', 'li@gmail.com', 546526262, NULL, 'Masters', 'knming ,China', 'Android Development', 'English and Chinese major teacher', '5', '2018-01-01', '2023-05-13 23:43:36', NULL),
(7, 'zhang', '24afd6c429384f352b82247530a0a89a1684021933.jpg', 'zhang@gmail.com', 6534635363, NULL, 'Masters', 'china', 'Big Data &AI', 'Chinese nd  teacher', '4', '2020-01-01', '2023-05-13 23:52:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblquery`
--
ALTER TABLE `tblquery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tid` (`teacherId`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Subject` (`Subject`);

--
-- Indexes for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `subname` (`TeacherSub`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblquery`
--
ALTER TABLE `tblquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblteacher`
--
ALTER TABLE `tblteacher`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblquery`
--
ALTER TABLE `tblquery`
  ADD CONSTRAINT `tid` FOREIGN KEY (`teacherId`) REFERENCES `tblteacher` (`ID`);

--
-- Constraints for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD CONSTRAINT `subname` FOREIGN KEY (`TeacherSub`) REFERENCES `tblsubjects` (`Subject`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

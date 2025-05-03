-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2024 at 10:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studysquare_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Manvendra Fauzdar', 'manvendrafauzdar007@gmail.com', 'admin'),
(2, 'Manvendra', 'manvendrafauzdar007@gmail.com', '#Man12345'),
(3, 'Manvendra', 'manvendrafauzdar007@gmail.com', '#Man12345');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `course_desc` text NOT NULL,
  `course_author` varchar(255) NOT NULL,
  `course_img` text NOT NULL,
  `course_duration` text NOT NULL,
  `course_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`) VALUES
(8, 'Quantitative Aptitude course.', 'This course is one step solution to ace the concepts of quantitative aptitude.', 'Harshal Aggarwal', '../image/courseimg/Guitar.jpg', '3 Hours', 1655),
(9, 'Reasoning Course.', 'This course is one step solution to ace the topics of reasoning.', 'Yashraj Singh Chauhan', '../image/courseimg/php.jpg', '1 Year', 700),
(10, 'Current Affairs course.\r\n', 'This course will help you grow in banking awarenss and current affairs.', 'Ashish Sharma', '../image/courseimg/Python.jpg', '4 Months', 800);

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `respmsg` text NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `order_date`) VALUES
(3, 'ORDS98956453', 'ant@example.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-12'),
(7, 'ORDS57717951', 'jay@ischool.com', 14, 'TXN_SUCCESS', 'Txn Success', 400, '2019-09-13'),
(8, 'ORDS22968322', 'mario@ischool.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-13'),
(9, 'ORDS78666589', 'ignou@ischool.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-19'),
(10, 'ORDS59885531', 'sonam@gmail.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2020-07-04'),
(11, 'ORDS88764666', 'manvendrafauzdar007@gmail.com', 8, 'Success', 'Done', 1655, '2009-08-24'),
(12, 'ORDS76413192', 'manvendrafauzdar007@gmail.com', 8, 'Success', 'Done', 1655, '2010-08-24'),
(13, 'ORDS32087829', 'manvendrafauzdar007@gmail.com', 8, 'Success', 'Done', 1655, '2010-08-24'),
(14, 'ORDS48944739', 'manvendrafauzdar007@gmail.com', 8, 'Success', 'Done', 1655, '2010-08-24'),
(15, 'ORDS4799560', 'manvendrafauzdar007@gmail.com', 9, 'Success', 'Done', 700, '2010-08-24'),
(16, 'ORDS34279276', 'manvendrafauzdar007@gmail.com', 8, 'Success', 'Done', 1655, '2010-08-24'),
(17, 'ORDS27238030', 'manvendrafauzdar007@gmail.com', 8, 'Success', 'Done', 1655, '2010-08-24'),
(18, 'ORDS95055162', 'manvendrafauzdar007@gmail.com', 9, 'Success', 'Done', 9, '2010-08-24'),
(19, 'ORDS31432443', 'manvendrafauzdar007@gmail.com', 8, 'Success', 'Done', 8, '2010-08-24'),
(20, 'ORDS37803327', 'manvendrafauzdar007@gmail.com', 8, 'Success', 'Done', 8, '2010-08-24'),
(21, 'ORDS98772899', 'manvendrafauzdar007@gmail.com', 10, 'Success', 'Done', 10, '2010-08-24'),
(22, 'ORDS19574489', 'manvendrafauzdar007@gmail.com', 10, 'Success', 'Done', 10, '2010-08-24'),
(23, 'ORDS69165591', 'manvendrafauzdar007@gmail.com', 9, 'Success', 'Done', 700, '2010-08-24'),
(24, 'ORDS80565953', 'manvendrafauzdar007@gmail.com', 10, 'Success', 'Done', 800, '2010-08-24'),
(25, 'ORDS46704559', 'manvendrafauzdar007@gmail.com', 9, 'Success', 'Done', 700, '2010-08-24'),
(26, 'ORDS98548537', 'ashishsharma@gmail.com', 8, 'Success', 'Done', 1655, '2010-08-24'),
(27, 'ORDS44449961', 'ashishsharma@gmail.com', 10, 'Success', 'Done', 800, '2011-08-24'),
(28, 'ORDS52790022', 'ashishsharma@gmail.com', 10, 'Success', 'Done', 800, '2011-08-24'),
(29, 'ORDS92239099', 'ashishsharma@gmail.com', 10, 'Success', 'Done', 800, '2011-08-24'),
(30, 'ORDS98016142', 'ashishsharma@gmail.com', 10, 'Success', 'Done', 800, '2011-08-24'),
(31, 'ORDS89790708', 'madhavsaraswat@gmail.com', 8, 'Success', 'Done', 1655, '2011-08-24'),
(32, 'ORDS13693568', 'nagendrapratap@gmail.com', 10, 'Success', 'Done', 800, '2011-08-24'),
(33, 'ORDS35200797', 'rohitlochav@gmail.com', 9, 'Success', 'Done', 700, '2011-08-24'),
(34, 'ORDS68545704', 'ashishsharma@gmail.com', 10, 'Success', 'Done', 800, '2011-08-24'),
(35, 'ORDS67038936', 'madhavsaraswat@gmail.com', 9, 'Success', 'Done', 700, '2011-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(3, 'My life at iSchool made me stronger and took me a step ahead for being an independent women. I am thankful to all the teachers who supported us and corrected us throughout our career. I am very grateful to the iSchool for providing us the best of placement opportunities and finally I got placed in DC Marvel.', 171),
(8, 'I am grateful to iSchool - both the faculty and the Training & Placement Department. They have made efforts ensuring maximum number of placed students. Due to the efforts made by the faculty and placement cell. I was able to bag a job in the second company.', 172),
(9, 'iSchool is a place of learning, fun, culture, lore, literature and many such life preaching activities. Studying at the iSchool brought an added value to my life.', 173),
(10, 'Think Magical, that is one thing that iSchool urges in and to far extent succeed in teaching to its students which invariably helps to achieve what you need.', 174),
(12, 'Knowledge is power. Information is liberating. Education is the premise of progress, in every society, in every family.', 180),
(13, 'This is Awesome GeekySHows Jindabaad', 182),
(14, 'hi', 183),
(15, 'I have been preparing for ssc cgl since 2022, this couse is to the point to crack exam. Thanks Kaushik Mohanty sir.', 184),
(16, 'This course is good. ', 185),
(17, 'Current Affairs and Banking Awareness course is very good, sir has covered all the important topics of banking awarness useful for the exam point of view.', 186),
(18, 'Reasoning course is very good.', 187);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text NOT NULL,
  `lesson_desc` text NOT NULL,
  `lesson_link` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(35, 'Current Affairs and Banking Awareness', 'Current affairs course', '../lessonvid/video1.mp4', 33, 'Study BA'),
(36, 'Syllogism', 'Introduction to reasoning', '../lessonvid/video4.mp4', 9, 'Complete reasoning'),
(37, 'Alphanumeric Series', 'Alphanumeric series concepts', '../lessonvid/video5.mp4', 9, 'Alphanumeric series'),
(38, 'Inequality', 'Inequality concepts', '../lessonvid/video6.mp4', 9, 'Inequality'),
(39, '1. Introduction - Time speed and distance.', 'Introduction', '../lessonvid/video7.mp4', 8, 'TSD Concepts'),
(40, '2. Boat and stream', 'All concepts of boat and streams.', '../lessonvid/video8.mp4', 8, 'Boat and stream'),
(42, 'How it works', 'How it works descccccc', '../lessonvid/video11.mp4', 11, 'Hands-on Artificial Intelligence'),
(43, 'Inro Learn Vue JS', 'Inro Learn Vue JS desc', '../lessonvid/video12.mp4', 12, 'Learn Vue JS'),
(48, 'Intro to Python Complete', 'This is lesson number 1', '../lessonvid/video11.mp4', 16, 'Python Complete'),
(49, 'Introduction to React Native', 'This intro video of React native', '../lessonvid/video11.mp4', 17, 'Learn React Native'),
(51, '3. Partnership', 'Partnership Concepts', '../lessonvid/video14.mp4', 8, 'Quantitative Aptitude course.'),
(52, '4. Mixture and alligation.', 'Concepts of mixture and alligation.', '../lessonvid/video15.mp4', 8, 'Quantitative Aptitude course.'),
(53, '5. Train problems.', 'All concepts on train.', '../lessonvid/video16.mp4', 8, 'Quantitative Aptitude course.'),
(55, 'Blood relation', 'Blood Relation concepts', '../lessonvid/video17.mp4', 9, 'Blood relation'),
(56, 'Coding-decoding', 'Coding decoding concepts', '../lessonvid/video18.mp4', 9, 'Coding-decoding'),
(101, 'current Affairs and Banking Awareness Part 1', 'BA', '../lessonvid/video2.mp4', 10, 'Banking awareness'),
(102, 'current Affairs and Banking Awareness Part 2', 'current affairs', '../lessonvid/video3.mp4', 10, 'Banking awareness'),
(103, 'current Affairs and Banking Awareness Part 3', 'Current Affairs', '../lessonvid/video9.mp4', 10, 'Banking awareness'),
(104, 'current Affairs and Banking Awareness Part 4', 'Current Affairs', '../lessonvid/video1.mp4', 10, 'BA'),
(105, 'current Affairs and Banking Awareness Part 5', 'current Affairs', '../lessonvid/video10.mp4', 10, 'BA');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_pass` varchar(255) NOT NULL,
  `stu_occ` varchar(255) NOT NULL,
  `stu_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(184, '  Ashish Sharma', 'ashishsharma@gmail.com', '#Ashish123', '  ', '../image/stu/istockphoto-1473711199-612x612.jpg'),
(185, ' Madhav Saraswat', 'madhavsaraswat@gmail.com', '12345', ' ', '../image/stu/360_F_212775224_igtaH98peQG0bZFU9hhxT75Qr2KygMgF.jpg'),
(186, 'Nagendra Pratap', 'nagendrapratap@gmail.com', '12345', '', ''),
(187, 'Rohit Lochav', 'rohitlochav@gmail.com', '12345', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

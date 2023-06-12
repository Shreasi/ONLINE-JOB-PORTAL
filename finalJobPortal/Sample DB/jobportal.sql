-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 14, 2023 at 10:09 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Shreasi Mukherjee', 'admin@jobs.com', '112233');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
CREATE TABLE IF NOT EXISTS `employer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`id`, `name`, `email`, `password`) VALUES
(4, 'Wipro Technologies ', 'admin@wipro.com', '112233'),
(10, 'Mahindra', 'admin@mahindra.com', '112233'),
(11, 'Ins It Services', 'admin@ins.com', '112233'),
(14, 'infosys', 'admin@infosys.com', '112233'),
(15, 'Paladion Networks', 'admin@paladion.com', '112233'),
(16, 'Accenture', 'admin@accenture.com', '112233'),
(26, 'Microsoft', 'admin@microsoft.com', '112233'),
(27, 'Spark Foundation', 'admin@sf.com', '112233'),
(28, 'Facebook', 'admin@facebook.com', '112233'),
(29, 'Intel', 'admin@intel.com', '112233'),
(30, 'LTI Mindtree', 'admin@lti.com', '112233');

-- --------------------------------------------------------

--
-- Table structure for table `jobsapplied`
--

DROP TABLE IF EXISTS `jobsapplied`;
CREATE TABLE IF NOT EXISTS `jobsapplied` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `pid` int NOT NULL,
  `sid` int NOT NULL,
  `status` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobapplied_seekerFK` (`sid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobsapplied`
--

INSERT INTO `jobsapplied` (`id`, `date`, `pid`, `sid`, `status`) VALUES
(26, '2022-01-26', 5, 35, 'Applied'),
(27, '2022-01-26', 4, 35, 'Rejected'),
(28, '2022-01-26', 8, 35, 'Accepted'),
(29, '2022-01-27', 39, 34, 'Applied'),
(35, '2022-01-31', 4, 34, 'Applied'),
(36, '2023-04-15', 40, 36, 'Accepted'),
(37, '2023-04-15', 40, 35, 'Applied'),
(38, '2023-04-15', 43, 36, 'Applied');

-- --------------------------------------------------------

--
-- Table structure for table `logpost`
--

DROP TABLE IF EXISTS `logpost`;
CREATE TABLE IF NOT EXISTS `logpost` (
  `lpid` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `eid` int NOT NULL,
  `name` varchar(500) NOT NULL,
  `category` varchar(500) NOT NULL,
  `industry` varchar(500) NOT NULL,
  `role` varchar(100) NOT NULL,
  `employmentType` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `action` varchar(500) NOT NULL,
  `cdate` datetime NOT NULL,
  PRIMARY KEY (`lpid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `logpost`
--

INSERT INTO `logpost` (`lpid`, `pid`, `eid`, `name`, `category`, `industry`, `role`, `employmentType`, `status`, `action`, `cdate`) VALUES
(7, 40, 4, 'Product Manager', 'Business Intelligence Jobs', 'IT-Software , Software Services', 'Lead', 'Permanent', 'Open', 'INSERTED', '2022-02-02 10:46:59'),
(8, 41, 29, 'Graphic Designer', 'Graphic Designer Jobs', 'Animation , Gaming', 'Intern', 'Permanent', 'Open', 'INSERTED', '2022-02-02 10:53:40'),
(9, 42, 28, 'Python Developer', 'IT Jobs', 'IT-Software , Software Services', 'Asst. Python Developer ', 'Permanent', 'Open', 'INSERTED', '2022-02-02 11:03:24'),
(10, 6, 14, 'Team Lead (Technical)', 'IT Jobs', 'IT-Software , Software Services', 'Team Lead', 'Permanent', 'open', 'UPDATED', '2022-02-02 11:07:48'),
(11, 8, 16, 'Accounts Manager', 'Accounting Jobs', 'Accounting , Finance', 'Accounts Manager', 'Permanent', 'open', 'UPDATED', '2022-02-02 11:09:58'),
(12, 43, 30, 'Software Engineer', 'IT Jobs', 'IT-Software , Software Services', 'Backend Engg', 'Permanent', 'Open', 'INSERTED', '2023-04-15 03:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `eid` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `category` varchar(500) NOT NULL,
  `minexp` varchar(100) NOT NULL,
  `desc` varchar(5000) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `industry` varchar(500) NOT NULL,
  `role` varchar(500) NOT NULL,
  `employmentType` varchar(500) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`),
  KEY `employer_postFK` (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `date`, `eid`, `name`, `category`, `minexp`, `desc`, `salary`, `industry`, `role`, `employmentType`, `status`) VALUES
(6, '2018-10-04 18:30:00', 14, 'Team Lead (Technical)', 'IT Jobs', '8', 'Aid a group of programmers.', '100000-150000', 'IT-Software , Software Services', 'Team Lead', 'Permanent', 'open'),
(8, '2018-10-04 18:30:00', 16, 'Accounts Manager', 'Accounting Jobs', '6', 'Experience with accounting software. General Math skills.', '70000-80000', 'Accounting , Finance', 'Accounts Manager', 'Permanent', 'open'),
(40, '2022-02-01 18:30:00', 4, 'Product Manager', 'Business Intelligence Jobs', '3', 'Communication Skills, Technical Knowledge', '40000-60000', 'IT-Software , Software Services', 'Lead', 'Permanent', 'Open'),
(41, '2022-02-01 18:30:00', 29, 'Graphic Designer', 'Graphic Designer Jobs', '3', '3D Animation, Adobe products.', '30000-50000', 'Animation , Gaming', 'Intern', 'Permanent', 'Open'),
(42, '2022-02-01 18:30:00', 28, 'Python Developer', 'IT Jobs', '2', 'Proficiency in Python, Test software components', '40000-60000', 'IT-Software , Software Services', 'Asst. Python Developer ', 'Permanent', 'Open'),
(43, '2023-04-14 18:30:00', 30, 'Software Engineer', 'IT Jobs', '3 years', 'B.Tech', '20000', 'IT-Software , Software Services', 'Backend Engg', 'Permanent', 'Open');

--
-- Triggers `post`
--
DROP TRIGGER IF EXISTS `Existing Row Deleted`;
DELIMITER $$
CREATE TRIGGER `Existing Row Deleted` AFTER DELETE ON `post` FOR EACH ROW INSERT INTO logpost VALUES(null, OLD.id, OLD.eid, OLD.name, OLD.category, OLD.industry, OLD.role, OLD.employmentType, OLD.status, 'DELETED', NOW())
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `Existing Row Updated`;
DELIMITER $$
CREATE TRIGGER `Existing Row Updated` AFTER UPDATE ON `post` FOR EACH ROW INSERT INTO logpost VALUES(null, NEW.id, NEW.eid, NEW.name, NEW.category, NEW.industry, NEW.role, NEW.employmentType, NEW.status, 'UPDATED', NOW())
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `New Row Inserted`;
DELIMITER $$
CREATE TRIGGER `New Row Inserted` AFTER INSERT ON `post` FOR EACH ROW INSERT INTO logpost VALUES(null, NEW.id, NEW.eid, NEW.name, NEW.category, NEW.industry, NEW.role, NEW.employmentType, NEW.status, 'INSERTED', NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `seeker`
--

DROP TABLE IF EXISTS `seeker`;
CREATE TABLE IF NOT EXISTS `seeker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `qualification` varchar(500) NOT NULL,
  `dob` date NOT NULL,
  `skills` varchar(2000) NOT NULL,
  `resume` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seeker`
--

INSERT INTO `seeker` (`id`, `name`, `email`, `password`, `qualification`, `dob`, `skills`, `resume`) VALUES
(34, 'Rakshith Acharya', 'rakshith.19cs121@sode-edu.in', '112233', 'BE', '2001-09-06', 'HTML, CSS, PHP, Web Development', ''),
(35, 'Raksha B Kottari', 'raksha.19cs073@sode-edu.in', '112233', 'BE', '2001-10-17', 'Database Designer, Back-end, Marketing, Accounting', ''),
(36, 'Shreya', 'shreya@gmail.com', '112233', 'BE', '2001-06-21', 'C++', ''),
(37, 'Sumanth Shettigar', 'sumanth@gmail.com', '112233', 'BE', '2001-07-04', 'html', ''),
(38, 'Sudarshan', 'sudarshan@gmail.com', '112233', 'MBBS', '2001-09-05', 'Bone specialist', ''),
(39, 'Rithesh Kumar', 'rithesh@gmail.com', '112233', 'BE', '2001-06-02', 'Circuit Design', ''),
(40, 'Ramesha', 'ramesha@gmail.com', '112233', 'BA', '1995-07-19', 'history, sociology', ''),
(41, 'Venkat', 'venkat@gmail.com', '112233', 'B.Sc.', '1995-11-23', 'Physiotherapy', ''),
(42, 'Paul Walker', 'paul@gmail.com', '112233', 'BBA', '1991-08-12', 'International Business', ''),
(43, 'Dom', 'dom@gmail.com', '112233', 'Bachelor of Engg./Tech', '1998-03-07', 'Computer Applications', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `totalactiveusers`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `totalactiveusers`;
CREATE TABLE IF NOT EXISTS `totalactiveusers` (
`TotalActiveUsers` decimal(42,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `totalposts`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `totalposts`;
CREATE TABLE IF NOT EXISTS `totalposts` (
`AllPosts` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `users`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
`SeekersAndEmployers` bigint
);

-- --------------------------------------------------------

--
-- Structure for view `totalactiveusers`
--
DROP TABLE IF EXISTS `totalactiveusers`;

DROP VIEW IF EXISTS `totalactiveusers`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `totalactiveusers`  AS SELECT sum(`users`.`SeekersAndEmployers`) AS `TotalActiveUsers` FROM `users``users`  ;

-- --------------------------------------------------------

--
-- Structure for view `totalposts`
--
DROP TABLE IF EXISTS `totalposts`;

DROP VIEW IF EXISTS `totalposts`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `totalposts`  AS SELECT count(`post`.`id`) AS `AllPosts` FROM `post``post`  ;

-- --------------------------------------------------------

--
-- Structure for view `users`
--
DROP TABLE IF EXISTS `users`;

DROP VIEW IF EXISTS `users`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `users`  AS SELECT count(`seeker`.`id`) AS `SeekersAndEmployers` FROM `seeker``seeker`  ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobsapplied`
--
ALTER TABLE `jobsapplied`
  ADD CONSTRAINT `jobapplied_seekerFK` FOREIGN KEY (`sid`) REFERENCES `seeker` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `employer_postFK` FOREIGN KEY (`eid`) REFERENCES `employer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

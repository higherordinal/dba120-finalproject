-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 10:24 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hv_dba120_finalproj`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `department_id` int(3) UNSIGNED ZEROFILL DEFAULT NULL,
  `instructor_id` int(3) UNSIGNED ZEROFILL DEFAULT NULL,
  `duration` enum('3 hours','4 hours') NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `department_id`, `instructor_id`, `duration`, `course_name`) VALUES
(00300, 001, 045, '3 hours', 'Renaissance Painting'),
(00301, 007, 049, '4 hours', 'Calculus I'),
(00302, 007, 039, '4 hours', 'Calculus II'),
(00303, 004, 047, '3 hours', 'Data Structures'),
(00304, 005, 051, '3 hours', 'Romantic Literature'),
(00305, 002, 036, '4 hours', 'Microbiology'),
(00306, 002, 046, '4 hours', 'Ecology'),
(00307, 009, 050, '3 hours', 'Existentialism'),
(00308, 009, 040, '3 hours', 'Ancient Philosophy'),
(00309, 003, 048, '4 hours', 'Organic Chemistry'),
(00310, 003, 038, '4 hours', 'Physical Chemistry'),
(00311, 006, 052, '3 hours', 'Ancient World'),
(00312, 010, 053, '3 hours', 'Research Methods'),
(00313, 010, 043, '3 hours', 'Abnormal Psychology'),
(00314, 008, 054, '4 hours', 'Classic Piano'),
(00315, 008, 044, '4 hours', 'Voice');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `building` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `building`) VALUES
(001, 'Art', 'Museum Building'),
(002, 'Biology', 'Clark Building'),
(003, 'Chemistry', 'Science Hall'),
(004, 'Computer Science', 'Smith Hall'),
(005, 'English', 'Wilson Hall'),
(006, 'History', 'Library Building'),
(007, 'Mathematics', 'Jones Building'),
(008, 'Music', 'Performing Arts Center'),
(009, 'Philosophy', 'Philosophy Hall'),
(010, 'Psychology', 'Hall Building');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `instructor_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `department_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `supervisor_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`instructor_id`, `department_id`, `supervisor_id`, `first_name`, `last_name`) VALUES
(036, 002, 002, 'Michael', 'Johnson'),
(037, 004, 004, 'Samantha', 'Lee'),
(038, 003, 003, 'David', 'Nguyen'),
(039, 007, 007, 'Emily', 'Chen'),
(040, 009, 009, 'Christopher', 'Garcia'),
(041, 005, 005, 'Jennifer', 'Wilson'),
(042, 006, 006, 'William', 'Miller'),
(043, 010, 010, 'Stephanie', 'Harris'),
(044, 008, 008, 'Anthony', 'Davis'),
(045, 001, 001, 'Avery', 'Clark'),
(046, 002, 002, 'Oliver', 'Reed'),
(047, 004, 004, 'Caroline', 'Lopez'),
(048, 003, 003, 'Nathan', 'Wong'),
(049, 007, 007, 'Sophia', 'Kim'),
(050, 009, 009, 'Daniel', 'Rivera'),
(051, 005, 005, 'Mia', 'Hall'),
(052, 006, 006, 'Ethan', 'Sanchez'),
(053, 010, 010, 'Isabella', 'Nguyen'),
(054, 008, 008, 'Christian', 'Gonzalez'),
(055, 001, 001, 'Victoria', 'Perez');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `course_id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `course_id`, `first_name`, `last_name`, `phone_number`) VALUES
(0000000001, 00300, 'John', 'Doe', '555-5555'),
(0000000002, 00300, 'Jane', 'Doe', '555-5556'),
(0000000003, 00300, 'Bob', 'Smith', '555-5557'),
(0000000004, 00300, 'Alice', 'Johnson', '555-5558'),
(0000000005, 00300, 'Mark', 'Davis', '555-5559'),
(0000000006, 00300, 'Linda', 'Garcia', '555-5560'),
(0000000007, 00300, 'David', 'Rodriguez', '555-5561'),
(0000000008, 00300, 'Emily', 'Martinez', '555-5562'),
(0000000009, 00300, 'Brandon', 'Jackson', '555-5563'),
(0000000010, 00300, 'Rachel', 'Lee', '555-5564'),
(0000000011, 00301, 'Mike', 'Kim', '555-5565'),
(0000000012, 00301, 'Avery', 'Nguyen', '555-5566'),
(0000000013, 00301, 'Samantha', 'Taylor', '555-5567'),
(0000000014, 00301, 'Jason', 'Brown', '555-5568'),
(0000000015, 00301, 'Olivia', 'Wang', '555-5569'),
(0000000016, 00301, 'Brian', 'Lee', '555-5570'),
(0000000017, 00301, 'Cindy', 'Chen', '555-5571'),
(0000000018, 00301, 'Chris', 'Liu', '555-5572'),
(0000000019, 00301, 'Melissa', 'Park', '555-5573'),
(0000000020, 00301, 'Eric', 'Gonzalez', '555-5574'),
(0000000021, 00302, 'Alice', 'Anderson', '555-1000'),
(0000000022, 00302, 'Brad', 'Baker', '555-2000'),
(0000000023, 00302, 'Cameron', 'Coleman', '555-3000'),
(0000000024, 00302, 'Diana', 'Duncan', '555-4000'),
(0000000025, 00302, 'Evelyn', 'Ellis', '555-5000'),
(0000000026, 00302, 'Frank', 'Foster', '555-6000'),
(0000000027, 00302, 'Gina', 'Gray', '555-7000'),
(0000000028, 00302, 'Haley', 'Hunt', '555-8000'),
(0000000029, 00302, 'Isabella', 'Irwin', '555-9000'),
(0000000030, 00302, 'James', 'Jordan', '555-1001'),
(0000000031, 00303, 'Kelly', 'King', '555-2001'),
(0000000032, 00303, 'Liam', 'Lopez', '555-3001'),
(0000000033, 00303, 'Maggie', 'Miller', '555-4001'),
(0000000034, 00303, 'Nathan', 'Nelson', '555-5001'),
(0000000035, 00303, 'Oliver', 'Owen', '555-6001'),
(0000000036, 00303, 'Piper', 'Parker', '555-7001'),
(0000000037, 00303, 'Quinn', 'Quinn', '555-8001'),
(0000000038, 00303, 'Ryan', 'Ramirez', '555-9001'),
(0000000039, 00303, 'Sophie', 'Smith', '555-1002'),
(0000000040, 00303, 'Trevor', 'Thomas', '555-2002'),
(0000000041, 00304, 'Victoria', 'Vargas', '555-1003'),
(0000000042, 00304, 'William', 'Wong', '555-2003'),
(0000000043, 00304, 'Xander', 'Xu', '555-3003'),
(0000000044, 00304, 'Yara', 'Young', '555-4003'),
(0000000045, 00304, 'Zachary', 'Zhang', '555-5003'),
(0000000046, 00304, 'Arianna', 'Allen', '555-6003'),
(0000000047, 00304, 'Benjamin', 'Bryant', '555-7003'),
(0000000048, 00304, 'Caroline', 'Chavez', '555-8003'),
(0000000049, 00304, 'Daniel', 'Delgado', '555-9003'),
(0000000050, 00304, 'Eleanor', 'Evans', '555-1004'),
(0000000051, 00304, 'Finn', 'Fletcher', '555-2004'),
(0000000052, 00305, 'Gwen', 'Gibson', '555-3004'),
(0000000053, 00305, 'Hayden', 'Harris', '555-4004'),
(0000000054, 00305, 'Isaac', 'Ingram', '555-5004'),
(0000000055, 00305, 'Jasmine', 'Jones', '555-6004'),
(0000000056, 00305, 'Kaitlyn', 'Khan', '555-7004'),
(0000000057, 00305, 'Landon', 'Lowe', '555-8004'),
(0000000058, 00305, 'Madeline', 'Morrison', '555-9004'),
(0000000059, 00305, 'Nadia', 'Nunez', '555-1005'),
(0000000060, 00305, 'Olivia', 'Odom', '555-2005'),
(0000000061, 00305, 'Peyton', 'Patterson', '555-3005'),
(0000000062, 00306, 'Quincy', 'Quintero', '555-4005'),
(0000000063, 00306, 'Reagan', 'Rivera', '555-5005'),
(0000000064, 00306, 'Sofia', 'Santos', '555-6005'),
(0000000065, 00306, 'Travis', 'Tucker', '555-7005'),
(0000000066, 00306, 'Uriel', 'Uribe', '555-8005'),
(0000000067, 00306, 'Valerie', 'Velez', '555-9005'),
(0000000068, 00306, 'Wesley', 'Wright', '555-1006'),
(0000000069, 00306, 'Ximena', 'Xiong', '555-2006'),
(0000000070, 00306, 'Yahir', 'Yoder', '555-3006'),
(0000000071, 00306, 'Zara', 'Zamora', '555-4006'),
(0000000072, 00307, 'Avery', 'Anderson', '555-5006'),
(0000000073, 00307, 'Bailey', 'Barnes', '555-6006'),
(0000000074, 00307, 'Carter', 'Campbell', '555-7006'),
(0000000075, 00307, 'Dylan', 'Davis', '555-8006'),
(0000000076, 00307, 'Eliana', 'Edwards', '555-9006'),
(0000000077, 00307, 'Freya', 'Franklin', '555-1007'),
(0000000078, 00307, 'Gavin', 'Gonzales', '555-2007'),
(0000000079, 00307, 'Harper', 'Hernandez', '555-3007'),
(0000000080, 00307, 'Isabelle', 'Ibarra', '555-4007'),
(0000000081, 00307, 'Jaden', 'Johnson', '555-5007'),
(0000000082, 00308, 'Kaleb', 'Kennedy', '555-6007'),
(0000000083, 00308, 'Lila', 'Luna', '555-7007'),
(0000000084, 00308, 'Miles', 'Martinez', '555-8007'),
(0000000085, 00308, 'Natalie', 'Nguyen', '555-9007'),
(0000000086, 00308, 'Oscar', 'Ortiz', '555-1008'),
(0000000087, 00308, 'Paige', 'Perez', '555-2008'),
(0000000088, 00308, 'Quinn', 'Quinn', '555-3008'),
(0000000089, 00308, 'Ryder', 'Rodriguez', '555-4008'),
(0000000090, 00308, 'Sophia', 'Sandoval', '555-5008'),
(0000000091, 00309, 'Tanner', 'Taylor', '555-6008'),
(0000000092, 00309, 'Uriah', 'Underwood', '555-7008'),
(0000000093, 00309, 'Victoria', 'Vargas', '555-8008'),
(0000000094, 00309, 'Winston', 'Wagner', '555-9008'),
(0000000095, 00309, 'Xander', 'Xu', '555-1009'),
(0000000096, 00309, 'Yara', 'Young', '555-2009'),
(0000000097, 00309, 'Zion', 'Zimmerman', '555-3009'),
(0000000098, 00309, 'Abigail', 'Adams', '555-4009'),
(0000000099, 00309, 'Brady', 'Brown', '555-5009'),
(0000000100, 00309, 'Cora', 'Clark', '555-6009'),
(0000000101, 00310, 'Derek', 'Diaz', '555-7009'),
(0000000102, 00310, 'Elena', 'Elliot', '555-8009'),
(0000000103, 00310, 'Frankie', 'Flores', '555-9009'),
(0000000104, 00310, 'Gabrielle', 'Garcia', '555-1010'),
(0000000105, 00310, 'Hayden', 'Harrison', '555-2010'),
(0000000106, 00310, 'Ivy', 'Ingram', '555-3010'),
(0000000107, 00310, 'Jackson', 'Jackson', '555-4010'),
(0000000108, 00310, 'Kelsey', 'Kramer', '555-5010'),
(0000000109, 00310, 'Levi', 'Lee', '555-6010'),
(0000000110, 00310, 'Mila', 'Mendez', '555-7010'),
(0000000111, 00311, 'Nolan', 'Nguyen', '555-8010'),
(0000000112, 00311, 'Olivia', 'Ortega', '555-9010'),
(0000000113, 00311, 'Parker', 'Perry', '555-1011'),
(0000000114, 00311, 'Quentin', 'Quinn', '555-2011'),
(0000000115, 00311, 'Riley', 'Roberts', '555-3011'),
(0000000116, 00311, 'Sophie', 'Silva', '555-4011'),
(0000000117, 00311, 'Tristan', 'Thomas', '555-5011'),
(0000000118, 00311, 'Ulysses', 'Underwood', '555-6011'),
(0000000119, 00311, 'Violet', 'Vargas', '555-7011'),
(0000000120, 00311, 'Wyatt', 'Wood', '555-8011'),
(0000000121, 00312, 'Xavier', 'Xiong', '555-9011'),
(0000000122, 00312, 'Samantha', 'Smith', '555-1111'),
(0000000123, 00314, 'Cameron', 'Williams', '555-2222'),
(0000000124, 00312, 'Jordan', 'Brown', '555-3333'),
(0000000125, 00312, 'Taylor', 'Jones', '555-4444'),
(0000000126, 00312, 'Morgan', 'Davis', '555-5555'),
(0000000127, 00312, 'Avery', 'Miller', '555-6666'),
(0000000128, 00314, 'Hayden', 'Garcia', '555-7777'),
(0000000129, 00314, 'Riley', 'Martinez', '555-8888'),
(0000000130, 00312, 'Alexis', 'Jackson', '555-9999'),
(0000000131, 00313, 'Parker', 'Lee', '555-1212'),
(0000000132, 00313, 'Dakota', 'Gonzalez', '555-2323'),
(0000000133, 00313, 'Phoenix', 'Taylor', '555-3434'),
(0000000134, 00313, 'Sage', 'Moore', '555-4545'),
(0000000135, 00313, 'Justice', 'Allen', '555-5656'),
(0000000136, 00313, 'Ashton', 'Perez', '555-6767'),
(0000000137, 00313, 'Devon', 'Wright', '555-7878'),
(0000000138, 00313, 'Hunter', 'Robinson', '555-8989'),
(0000000139, 00313, 'Sawyer', 'King', '555-0101'),
(0000000140, 00313, 'Emily', 'Lee', '123-4567'),
(0000000141, 00314, 'Daniel', 'Kim', '234-5678'),
(0000000142, 00314, 'Grace', 'Choi', '345-6789'),
(0000000143, 00314, 'Kevin', 'Park', '456-7890'),
(0000000144, 00315, 'Julia', 'Cho', '567-8901'),
(0000000145, 00315, 'Ryan', 'Kim', '678-9012'),
(0000000146, 00315, 'Hannah', 'Kim', '789-0123'),
(0000000147, 00315, 'David', 'Lee', '890-1234'),
(0000000148, 00315, 'Megan', 'Park', '901-2345'),
(0000000149, 00315, 'Jason', 'Choi', '012-3456');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `supervisor_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `department_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`supervisor_id`, `department_id`, `first_name`, `last_name`) VALUES
(001, 001, 'Alice', 'Smith'),
(002, 002, 'Bob', 'Johnson'),
(003, 003, 'Charlie', 'Brown'),
(004, 004, 'David', 'Lee'),
(005, 005, 'Emily', 'Chen'),
(006, 006, 'Frank', 'Nguyen'),
(007, 007, 'Grace', 'Wang'),
(008, 008, 'Henry', 'Liu'),
(009, 009, 'Isabella', 'Zhang'),
(010, 010, 'Jack', 'Kumar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `fk_course_department` (`department_id`),
  ADD KEY `fk_course_instructor` (`instructor_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`instructor_id`),
  ADD KEY `fk_instructor_department` (`department_id`),
  ADD KEY `fk_instructor_supervisor` (`supervisor_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `fk_student_course` (`course_id`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`supervisor_id`),
  ADD KEY `fk_supervisor_department` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `instructor_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `supervisor_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fk_course_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `fk_course_instructor` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`);

--
-- Constraints for table `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `fk_instructor_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `fk_instructor_supervisor` FOREIGN KEY (`supervisor_id`) REFERENCES `supervisor` (`supervisor_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD CONSTRAINT `fk_supervisor_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

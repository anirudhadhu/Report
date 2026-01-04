-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2022 at 05:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thedhunganacinemas`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_tickets`
--

CREATE TABLE `booking_tickets` (
  `Ticket_Number` int(20) NOT NULL,
  `Movie_name` varchar(20) DEFAULT NULL,
  `Venue` varchar(20) DEFAULT NULL,
  `Payment_type` varchar(20) DEFAULT NULL,
  `Price` int(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_tickets`
--

INSERT INTO `booking_tickets` (`Ticket_Number`, `Movie_name`, `Venue`, `Payment_type`, `Price`) VALUES
(904, 'KGF', 'ithari', 'Fonepay QR', 500),
(606, 'DDLJ', 'Gaushala', 'Esewa', 475),
(547, 'Pushpa: The rise', 'Bhaktapur', 'khalti', 300),
(4819, 'Kabhi Khusi Kabi Gam', 'Biratnagar', 'ime pay', 350),
(2647, 'Xaka Panja', 'Budhanilkantha', 'Namaste pay', 350),
(1006, 'RRR', 'Kathmandu', 'Connectips', 500),
(214, 'Tadap', 'Lalitpur', 'pravupay', 450);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(20) NOT NULL,
  `Customer_name` varchar(30) DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Customer_name`, `Sex`, `Address`) VALUES
(284, 'Ribesh Nepal', 'Male', 'Kapan'),
(546, 'Bishal Timalsina', 'Male', 'Kapan'),
(756, 'Manish Adhikari', 'Male', 'Bhaktapur'),
(210, 'Arush Khatiwada', 'Male', 'ithari'),
(987, 'Arushi Khatiwada', 'Female', 'inaruwa'),
(236, 'Gita Dhungana', 'female', 'kathmandu'),
(889, 'Saru Humagain', 'female', 'germany');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_ID` int(20) DEFAULT NULL,
  `Employee_name` varchar(30) DEFAULT NULL,
  `Salary` float DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Contact_number` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_ID`, `Employee_name`, `Salary`, `Address`, `Contact_number`) VALUES
(904, 'Shira Khatiwada', 30000, 'ithari', 2147483647),
(606, 'Kritika Pokhrel', 25000, 'Gaushala', 2147483647),
(547, 'Manila Adhikari', 20000, 'Bhaktapur', 2147483647),
(4819, 'Rahul Shah', 25000, 'Biratnagar', 2147483647),
(2647, 'Ujjuwal Bhattrai', 20000, 'Budhanilkantha', 2147483647),
(1006, 'Aarush Dhungana', 50000, 'Kathmandu', 2147483647),
(610, 'Aarushi Dhungana', 60000, 'Lalitpur', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `membership_card`
--

CREATE TABLE `membership_card` (
  `Card_number` int(20) DEFAULT NULL,
  `Card_holders_name` varchar(30) DEFAULT NULL,
  `Typeofcard` varchar(30) DEFAULT NULL,
  `Email_Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membership_card`
--

INSERT INTO `membership_card` (`Card_number`, `Card_holders_name`, `Typeofcard`, `Email_Address`) VALUES
(5554568, 'Ghanshyam Niraula', 'Basic Card', 'g.shyam@gmail.com'),
(5483214, 'Dasrath Chaulagain', 'Gold Card', 'd.ch@gmail.com'),
(9980135, 'Ram Timalsina', 'Basic Card', 'ram.sina1@gmail.com'),
(2579614, 'Jiwan Nepali', 'Silver Card', 'nepali11@gmail.com'),
(322475, 'Pratap Singh', 'Platinum Crad', 'pratap.singh69@gmail.com'),
(214766, 'Alex Modi', 'Silver Card', 'modi.al98@gmail.com'),
(27449, 'Gaynendra Shah', 'BGold Card', 'hhyz.098@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `movie_shows`
--

CREATE TABLE `movie_shows` (
  `Movie_name` varchar(20) DEFAULT NULL,
  `GENRE` varchar(20) DEFAULT NULL,
  `HALL_NUMBER` int(11) DEFAULT NULL,
  `TIMING` varchar(20) DEFAULT NULL,
  `MOVIE_TYPE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_shows`
--

INSERT INTO `movie_shows` (`Movie_name`, `GENRE`, `HALL_NUMBER`, `TIMING`, `MOVIE_TYPE`) VALUES
('KGF', 'Action', 4, '10 AM', 'Tollywood'),
('DDLJ', 'Romantic', 7, '8 AM', 'Bollywood'),
('Pushpa: The rise', 'Action', 4, '2 PM', 'Tollywood'),
('Xaka Panja', 'Drama', 1, '11 AM', 'Kollywood'),
('RRR', 'Action', 6, '10 PM', 'Tollywood'),
('Tadap', 'Action-Romantic', 2, '12 PM', 'Bollywood'),
('Kabhi Khusi Kabi Gam', 'Family drama', 7, '11 PM', 'Bollywood');

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE `others` (
  `provision_ID` varchar(100) DEFAULT NULL,
  `Reservation` varchar(100) DEFAULT NULL,
  `Emmergency` int(20) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Media_partner` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `others`
--

INSERT INTO `others` (`provision_ID`, `Reservation`, `Emmergency`, `Address`, `Media_partner`) VALUES
('555', 'Sick', 14424890, 'ithari', 'Himalayan TV'),
('951', 'Engagement', 14457190, 'Bhaktapur', 'RONB'),
('5145', 'Medical Illness', 2147483647, 'Mustang', 'Trending Nepal'),
('489', 'Physicially ill', 2147483647, 'Simara', 'ABC TV'),
('4526', 'Movie Promotion', 2147483647, 'Kathmandu', 'Secret_life2306'),
('5710', 'Movie Promotion', 2147483647, 'Dhangadi', 'Kantipur TV'),
('0297', 'Conference', 17532149, 'Kavre', 'Nice Television');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seat_number` int(10) DEFAULT NULL,
  `Seat_row` char(10) DEFAULT NULL,
  `Hall_number` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`seat_number`, `Seat_row`, `Hall_number`) VALUES
(904, 'A', 5),
(1056, 'X', 5),
(879, 'D', 5),
(441, 'Q', 5),
(126, 'Z', 5),
(246, 'M', 5),
(477, 'L', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

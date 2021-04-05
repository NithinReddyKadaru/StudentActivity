-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2019 at 11:13 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmarkevents`
--

CREATE TABLE `bookmarkevents` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookmarkevents`
--

INSERT INTO `bookmarkevents` (`id`, `eventid`, `userid`) VALUES
(6, 5, 1),
(7, 1, 1),
(8, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `bustickets`
--

CREATE TABLE `bustickets` (
  `id` varchar(11) NOT NULL,
  `details` varchar(255) NOT NULL,
  `timings` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bustickets`
--

INSERT INTO `bustickets` (`id`, `details`, `timings`, `price`) VALUES
('A', 'LBJ Center to Holland', 'Mon - Fri 7:00 A.M. - 10:30 P.M.', '2'),
('B', 'Univeristy Drive to Aqua Springs', 'Mon - Fri 7:00 A.M. - 10:30 P.M.', '4'),
('C', 'Univeristy Drive to Outlets', 'Mon - Sat 7:00 A.M. - 10:30 P.M.', '6'),
('MBP', 'One Card Anywhere, Anytime\r\nTravel in any zone with this card\r\nCovers all three zones : A, B, C', 'Timings: Mon - Sat 8:00 a.m. - 10:30 p.m.', '40');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(100) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `userid` int(11) NOT NULL,
  `isPurchased` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_name`, `product_price`, `product_image`, `qty`, `total_price`, `product_code`, `type`, `userid`, `isPurchased`) VALUES
(150, 'Month Plan', '600', '', 1, '600', 'MP001', 'meal', 3, 1),
(151, 'Zone B Ticket', '4', '', 1, '4', 'Zone B', 'Ticket', 3, 0),
(152, 'Algorithms', '50', 'http://books.google.com/books/content?id=idUdqdDXqnAC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 1, '50', '1', 'book', 3, 1),
(153, 'Randomized Algorithms', '50', 'http://books.google.com/books/content?id=QKVY4mDivBEC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 1, '50', '2', 'book', 3, 1),
(156, 'Introduction to Algorithms', '50', 'http://books.google.com/books/content?id=i-bUBQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 1, '50', '2', 'book', 3, 1),
(157, 'PHP and MySQL Web Development', '50', 'http://books.google.com/books/content?id=G4dTRyvpfhoC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 1, '50', '2', 'book', 3, 1),
(158, 'Half Girlfriend', '50', 'http://books.google.com/books/content?id=l9b7oQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 1, '50', '0', 'book', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `category` varchar(20) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `startdatetime` datetime NOT NULL,
  `enddatetime` datetime NOT NULL,
  `artist` varchar(50) DEFAULT NULL,
  `details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `category`, `venue`, `startdatetime`, `enddatetime`, `artist`, `details`) VALUES
(1, '11.14 ILLENIUM', 'music', '120 East San Antonio Street, San Marcos, Texas, 78', '2019-11-14 19:00:00', '2019-11-15 02:00:00', 'The Marc', 'Illenium throwback set after presenst\r\n****All Sales are final***'),
(2, '1st Annual Harvest Festival ', 'music', '535 S Loop 4, Buda, Texa 78610', '2019-11-16 12:00:00', '0000-00-00 00:00:00', 'Two Wheel Brewing Company', ''),
(5, 'Akon Concert', 'Music', 'San Marcos', '2019-11-13 00:00:00', '2019-11-14 00:00:00', 'Akon', 'Get High'),
(6, 'The Goat gets lit!', 'Festival', '959 Indian Ridge, New Braunfels, Tx 78132', '2019-11-29 00:00:00', '2019-11-30 00:00:00', 'Crazy Goat', 'Lights ON! Join the Goat as we light up our house for the 2019 Christmas Season!'),
(7, 'Hot Spot Clean Up', 'Community', 'The Parks and Recreation 401 E Hopkins', '2019-12-07 09:00:00', '2019-12-07 11:00:00', NULL, 'Keep San Marcos Beautiful and the Habitat Conservation Plan host a monthly Hot Spot Clean Up on the 1st Saturday of every month');

-- --------------------------------------------------------

--
-- Table structure for table `mealplan`
--

CREATE TABLE `mealplan` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(50) NOT NULL,
  `pcode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mealplan`
--

INSERT INTO `mealplan` (`id`, `name`, `price`, `pcode`) VALUES
(1, 'Month Plan', 600, 'MP001'),
(2, 'Semester Plan', 3000, 'MP002');

-- --------------------------------------------------------

--
-- Table structure for table `orderhistory`
--

CREATE TABLE `orderhistory` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `paymethod` varchar(20) NOT NULL,
  `orderdetail` varchar(255) NOT NULL,
  `orderdate` datetime NOT NULL,
  `total` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderhistory`
--

INSERT INTO `orderhistory` (`id`, `name`, `address`, `email`, `paymethod`, `orderdetail`, `orderdate`, `total`, `userid`, `type`) VALUES
(28, 'rohit lode', '1-9-202/E/1/B/1/1 ramnagar', 'lrohitgoud@gmail.com', 'Credit Card', 'Algorithms(1),Randomized Algorithms(1),Introduction to Algorithms(1),PHP and MySQL Web Development(1)', '2019-12-03 01:37:13', 200, 3, 'book'),
(29, 'rohit lode', '1-9-202/E/1/B/1/1 ramnagar', 'lrohitgoud@gmail.com', 'Credit Card', 'Month Plan(1)', '2019-12-03 01:42:39', 600, 3, 'meal');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `department` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `isFaculty` int(2) NOT NULL,
  `isStudent` int(2) NOT NULL,
  `isAdmin` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `firstname`, `lastname`, `department`, `phone`, `email`, `isFaculty`, `isStudent`, `isAdmin`) VALUES
(1, 'rohit', 'lode', 'Computer Science', '5182657899', 'lrohitgoud@gmail.com', 0, 1, 1),
(2, 'Anudeep', 'Suresh', 'computer science', '5689897895', 'anudeeps@txstate.edu', 0, 1, 0),
(3, 'Vinay', 'Lokesh', 'Computer Science', '4159863254', 'vinayl@txstate.edu', 0, 1, 0),
(4, 'Mohit', 'Patel', 'computer science', '6458975869', 'mohitp@txstate.edu', 0, 1, 0),
(5, 'George', 'Madison', 'Electrical', '54684631568', 'gm@txstate.edu', 1, 0, 0),
(6, 'Jerry', 'Brown', 'Industrial', '1646465166', 'jb@txstate.edu', 1, 0, 0),
(7, 'Kayne', 'West', 'Mathematics', '6546465165', 'kw@txstate.edu', 0, 1, 0),
(8, 'Larrison', 'Kerry', 'computer science', '46464616516', 'lk@txstate.edu', 0, 1, 0),
(9, 'Christian', 'Brown', 'computer science', '46465131668', 'cb@txstate.edu', 1, 0, 0),
(10, 'Sabastian', 'Green', 'Civil', '6498465154', 'cg@txstate.edu', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `poll_contestants`
--

CREATE TABLE `poll_contestants` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `age` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll_contestants`
--

INSERT INTO `poll_contestants` (`id`, `name`, `department`, `age`) VALUES
(1, 'Rohit Lode', 'Computer Science', 23),
(2, 'Sri Aakash Mandavilli', 'Computer Sciene', 23),
(3, 'Anudeep Thota', 'Computer Science', 26),
(4, 'Sarath Reddy', 'Computer Science', 22);

-- --------------------------------------------------------

--
-- Table structure for table `poll_results`
--

CREATE TABLE `poll_results` (
  `id` int(11) NOT NULL,
  `votescount` int(10) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll_results`
--

INSERT INTO `poll_results` (`id`, `votescount`, `name`) VALUES
(1, 4, 'Rohit Lode'),
(2, 5, 'Sri Aakash Mandavilli'),
(3, 12, 'Anudeep Thota'),
(4, 12, 'Sarath Reddy');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_image`, `product_code`) VALUES
(1, 'Ray Ban Glasses', '3900', 'images/glasses1.jpg\r\n', '101'),
(2, 'Tommy Hilfiger Jeans', '4999', 'images/jeans-1.jpg', '102'),
(3, 'Levis Shirt', '2899', 'images/shirt1.jpg', '103'),
(4, 'Nike Shoes', '5999', 'images/shoe1.jpg', '104'),
(5, 'Armani Trouser', '4899', 'images/trouser1.jpg', '105'),
(6, 'Superman T-Shirt', '1599', 'images/tshirt1.jpg', '106');

-- --------------------------------------------------------

--
-- Table structure for table `roommate`
--

CREATE TABLE `roommate` (
  `roomtype` varchar(20) NOT NULL,
  `gendertype` varchar(6) NOT NULL,
  `city` varchar(20) NOT NULL,
  `month` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `movein_date` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roommate`
--

INSERT INTO `roommate` (`roomtype`, `gendertype`, `city`, `month`, `price`, `address`, `contact`, `movein_date`, `id`) VALUES
('2 Bedroom', 'Male', 'San Marcos', 6, 550, 'Tree House Apartment', 1234567890, '2019-11-21', 1),
('1 BHK', 'female', 'San Marcos', 16, 1099, 'Tree House Apartments', 8662626266, '2020-01-01', 4),
('2 BHK', 'MALE', 'SAN MARCOS', 12, 1199, 'Hill Country Apartments', 1234567896, '2019-12-18', 5);

-- --------------------------------------------------------

--
-- Table structure for table `textbook`
--

CREATE TABLE `textbook` (
  `id` int(11) NOT NULL,
  `title` int(255) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `author` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `location` varchar(50) NOT NULL,
  `isAvailable` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userdetail`
--

CREATE TABLE `userdetail` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetail`
--

INSERT INTO `userdetail` (`id`, `firstname`, `lastname`, `address`, `phone`, `email`, `password`, `department`) VALUES
(1, 'rohit goud', 'lode', '1-9-202/E/1/B/1/1 ramnagar', 7799665856, 'lrohitgoud@gmail.com', '1234', 'Computer Science'),
(3, 'Anudeep', 'Thota', '800 N LBJ DR 215 TX 78666', 4698347396, 'info2anudeepthota@gmail.com', '6sTSCPQK4H', 'Computer Science');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmarkevents`
--
ALTER TABLE `bookmarkevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mealplan`
--
ALTER TABLE `mealplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderhistory`
--
ALTER TABLE `orderhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_contestants`
--
ALTER TABLE `poll_contestants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_results`
--
ALTER TABLE `poll_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roommate`
--
ALTER TABLE `roommate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `textbook`
--
ALTER TABLE `textbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetail`
--
ALTER TABLE `userdetail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmarkevents`
--
ALTER TABLE `bookmarkevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mealplan`
--
ALTER TABLE `mealplan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orderhistory`
--
ALTER TABLE `orderhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `poll_contestants`
--
ALTER TABLE `poll_contestants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roommate`
--
ALTER TABLE `roommate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `textbook`
--
ALTER TABLE `textbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userdetail`
--
ALTER TABLE `userdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

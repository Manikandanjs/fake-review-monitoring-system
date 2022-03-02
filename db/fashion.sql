-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2019 at 07:35 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ac_id` int(11) NOT NULL,
  `ac_no` varchar(20) NOT NULL,
  `amount1` varchar(50) NOT NULL,
  `user_id` int(5) NOT NULL,
  `card` varchar(20) NOT NULL,
  `bank` varchar(20) NOT NULL,
  `card_no` varchar(20) NOT NULL,
  `holdername` varchar(50) NOT NULL,
  `exp_date` varchar(20) NOT NULL,
  `cvv` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ac_id`, `ac_no`, `amount1`, `user_id`, `card`, `bank`, `card_no`, `holdername`, `exp_date`, `cvv`) VALUES
(1, '896', '3650', 1, 'debit', 'sbi', '123', 'ardra', '2019-08-22', '123');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `b_id` int(11) NOT NULL,
  `cart_id` int(5) NOT NULL,
  `price` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(5) NOT NULL,
  `pdt_id` int(5) NOT NULL,
  `cart_qty` varchar(50) NOT NULL,
  `c_price` varchar(50) NOT NULL,
  `c_date` varchar(20) NOT NULL,
  `c_status` varchar(30) NOT NULL,
  `c_size` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `pdt_id`, `cart_qty`, `c_price`, `c_date`, `c_status`, `c_size`) VALUES
(13, 1, 1, '2', '2000', '2019-09-21', 'delivered', 'M'),
(14, 1, 2, '2', '1000', '2019-09-21', 'payed', 'S'),
(15, 1, 1, '5', '5000', '2019-09-21', 'payed', 'L'),
(16, 1, 3, '1', '350', '2019-09-28', 'delivered', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `cat_id` int(11) NOT NULL,
  `cat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`cat_id`, `cat`) VALUES
(1, 'women');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `cid` int(11) NOT NULL,
  `c_title` varchar(20) NOT NULL,
  `c_msg` varchar(100) NOT NULL,
  `cstatus` varchar(100) NOT NULL,
  `creplay` varchar(100) NOT NULL,
  `u_id` int(5) NOT NULL,
  `c_role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`cid`, `c_title`, `c_msg`, `cstatus`, `creplay`, `u_id`, `c_role`) VALUES
(1, 'rfdxgd', 'rgver', '1', 'fgcfgxd', 1, 'user'),
(2, 'weer', 'dfxg', '0', 'null', 2, 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `log_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`log_id`, `username`, `password`, `role`) VALUES
(8, 'df', 'df', 'user'),
(9, 'admin', '123', 'admin'),
(11, 'dess', 'dess', 'staff'),
(12, 'qw', 'qw', 'user'),
(13, 'qwas', 'qwas', 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `pdeta` varchar(100) NOT NULL,
  `pfea` varchar(200) NOT NULL,
  `cat_id` int(5) NOT NULL,
  `sub_id` int(5) NOT NULL,
  `image` mediumtext NOT NULL,
  `pstatus` varchar(20) NOT NULL,
  `p_price` varchar(20) NOT NULL,
  `s_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `pname`, `pdeta`, `pfea`, `cat_id`, `sub_id`, `image`, `pstatus`, `p_price`, `s_id`) VALUES
(1, 'p1', 'tr', 'try', 1, 1, '1-corner-wall-shelves-for-bedroom.jpg', '1', '1000', 0),
(2, 'ppp', 'jkj', 'jkl', 1, 1, 'simple-mirror-work-blouse-designs.jpg', '1', '500', 0),
(3, 'vc', 'vcv', 'cv', 1, 1, 'anticorruptionteamindia-2-728.jpg', '1', '350', 13);

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `u_id` int(11) NOT NULL,
  `log_id` int(5) NOT NULL,
  `u_name` varchar(20) NOT NULL,
  `u_lname` varchar(20) NOT NULL,
  `u_photo` mediumtext NOT NULL,
  `u_dob` varchar(20) NOT NULL,
  `u_add` varchar(50) NOT NULL,
  `u_ph` varchar(20) NOT NULL,
  `u_em` varchar(50) NOT NULL,
  `u_stat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`u_id`, `log_id`, `u_name`, `u_lname`, `u_photo`, `u_dob`, `u_add`, `u_ph`, `u_em`, `u_stat`) VALUES
(1, 8, 'tg', 't67', 'corner-wall-shelves-for-bedroom-shelf-designs-square-bookshelf-within-size-wood-plans-cabinet-black-glass-plastic-shower-caddy-bathroom-shelfing-shelving-units-floating-kitchen.jpg', '2019-08-07', 'fgbvhgc', '9856320147', 'archa5@gmail.com', 'Approved'),
(2, 12, 'jhk', 'gh', 'pr2.png', '2019-09-17', 'gh', '1234567890', 'aa@gmail.com', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `r_id` int(11) NOT NULL,
  `pdt_id` int(15) NOT NULL,
  `re_rate` varchar(25) NOT NULL,
  `login_id` int(5) NOT NULL,
  `des` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`r_id`, `pdt_id`, `re_rate`, `login_id`, `des`) VALUES
(8, 1, '4', 8, 'vbvg bv'),
(9, 1, '2', 12, 'ujikhj'),
(10, 2, '3', 8, 'cvg'),
(11, 3, '5', 12, 'mk');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `name` varchar(20) NOT NULL,
  `add` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `no` varchar(20) NOT NULL,
  `sid` int(11) NOT NULL,
  `log_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`name`, `add`, `date`, `email`, `no`, `sid`, `log_id`) VALUES
('dess', 'fgd', '2019-08-20', 'archa@gmail.com', '1234567890', 2, 11),
(' vbin', 'hgj', '2019-09-28', 'aa@gmail.com', '1234567890', 3, 13);

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `sub_id` int(11) NOT NULL,
  `cat_id` int(5) NOT NULL,
  `sub_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`sub_id`, `cat_id`, `sub_name`) VALUES
(1, 1, 'saree');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ac_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`sub_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

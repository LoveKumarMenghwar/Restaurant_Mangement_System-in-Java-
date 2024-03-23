-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 04:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restauant_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `fmenu`
--

CREATE TABLE `fmenu` (
  `fid` int(11) NOT NULL,
  `fname` varchar(90) NOT NULL,
  `fprice` int(11) NOT NULL,
  `ftype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fmenu`
--

INSERT INTO `fmenu` (`fid`, `fname`, `fprice`, `ftype`) VALUES
(1, 'Bun Kebab', 150, 'Fast'),
(2, 'Samosa Chaat', 200, 'fast'),
(3, 'Chapli Kebab Roll', 250, 'Fast'),
(4, 'Aloo Tikki Chaat', 150, 'Fast'),
(5, 'Nihari Roll', 300, 'Fast'),
(6, 'Pakoras', 100, 'Normal'),
(7, 'Jalebi', 150, 'Normal'),
(8, 'Chicken Biryani', 250, 'Fast'),
(9, 'Chana Chaat', 150, 'Normal'),
(10, 'Biryani Bombs', 200, 'Fast'),
(11, 'Dahi Puri', 150, 'Normal'),
(12, 'Halwa Puri', 100, 'Normal'),
(13, 'Chicken Shawarma', 300, 'Fast');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `F_Name` varchar(30) NOT NULL,
  `F_Price` int(30) NOT NULL,
  `F_Quantity` int(20) NOT NULL,
  `F_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`F_Name`, `F_Price`, `F_Quantity`, `F_ID`) VALUES
('Samosa', 30, 90, 0),
('Samosa', 30, 90, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderfood`
--

CREATE TABLE `orderfood` (
  `fid1` int(40) NOT NULL,
  `fname1` varchar(40) NOT NULL,
  `fprice1` int(40) NOT NULL,
  `ftype1` varchar(40) NOT NULL,
  `fquantity` int(20) NOT NULL,
  `ftotalprice` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderfood`
--

INSERT INTO `orderfood` (`fid1`, `fname1`, `fprice1`, `ftype1`, `fquantity`, `ftotalprice`) VALUES
(4, 'gd', 5, 'jur', 2, 10),
(34, 'fst', 54, 'dfsa', 4, 216),
(34, 'fst', 54, 'dfsa', 3, 216),
(5, 'love', 20, 'fdblb', 5, 250),
(1, 'gffk', 45, 'fjrsd', 1, 45),
(5, 'love', 20, 'fdblb', 1, 20),
(7, 'Jalebi', 150, 'Normal', 2, 300),
(5, 'Nihari Roll', 300, 'Fast', 2, 600);

-- --------------------------------------------------------

--
-- Table structure for table `q_add`
--

CREATE TABLE `q_add` (
  `Q_id` varchar(17) NOT NULL,
  `Q` varchar(500) NOT NULL,
  `Op_1` varchar(500) NOT NULL,
  `Op_2` varchar(500) NOT NULL,
  `Op_3` varchar(500) NOT NULL,
  `Op_4` varchar(500) NOT NULL,
  `A_Q1` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `q_add`
--

INSERT INTO `q_add` (`Q_id`, `Q`, `Op_1`, `Op_2`, `Op_3`, `Op_4`, `A_Q1`) VALUES
('1', 'Which Environment Variable Is Used  to set the path ', 'MAVEN_PATH', 'JavaPATH', 'JAVA', 'JAVA_HOME', 'd'),
('2', 'which of the following is not an opps concept', 'ploymorphism', 'inheritance ', 'compilation', 'encapsulation', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `reservationt`
--

CREATE TABLE `reservationt` (
  `RName` varchar(40) NOT NULL,
  `RContact` int(12) NOT NULL,
  `REmail` varchar(40) NOT NULL,
  `RCnic` varchar(16) NOT NULL,
  `RTableno` varchar(20) NOT NULL,
  `RTime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservationt`
--

INSERT INTO `reservationt` (`RName`, `RContact`, `REmail`, `RCnic`, `RTableno`, `RTime`) VALUES
('pershotam', 4473733, 'pershotam@gmail.com', '4430122', '3', '1:00pm');

-- --------------------------------------------------------

--
-- Table structure for table `staffa`
--

CREATE TABLE `staffa` (
  `s_id` int(30) NOT NULL,
  `S_Name` varchar(90) NOT NULL,
  `S_Position` varchar(90) NOT NULL,
  `S_salary` int(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffa`
--

INSERT INTO `staffa` (`s_id`, `S_Name`, `S_Position`, `S_salary`) VALUES
(1, 'Pershotam', 'Manager', 45000),
(2, 'Paras', 'Cashier', 35000),
(3, 'Meraj', 'Delivery Driver', 30000),
(4, 'Munesh', 'Cheif', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `s_signup`
--

CREATE TABLE `s_signup` (
  `name` varchar(40) NOT NULL,
  `phone` bigint(13) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_signup`
--

INSERT INTO `s_signup` (`name`, `phone`, `email`) VALUES
('peshotam', 97897, 'prqjpijererr'),
('pershotm', 233333333, 'pershotamkumar634@gmail.com'),
('persh', 34434, 'mperhso@gmail.com'),
('perhsotam', 343434, 'mpershoram@gmail,com'),
('', 343434, ''),
('perxo', 23323, 'mpersjot@gmail.com'),
('persho', 2333, 'mpershotam@gmak'),
('pershotam', 3434, 'mpershtoam@gmail.com'),
('pere', 3344, 'mpersho@gmail.com'),
('perhso', 2323, 'mpershotam@gmail.com'),
('pere', 3344, 'mper@gmail.com'),
('pershotam', 23456, 'mper@gmail.com'),
('per', 3456, 'mper@gmil.com'),
('pershitam', 23, 'mpersjo@gmail.com'),
('gewde', 23, 'mperhtosm'),
('gftyfty', 354, 'khhk'),
('pershtoam', 2333, 'mpershsotam@gmail.com'),
('miraj ', 34343, 'miraj@gmail.com'),
('pershotsm', 233, 'mperhtoamgmail@.com'),
('ggr', 344, 'pesrsho@hao'),
('per', 334, 'mpersj@gmail.com'),
('pershotam', 3434343, ' per@gmail.com'),
('pershotam', 343832647, 'mpershotam@gmail.com'),
('pershotam', 343832647, 'mpershotam@gmail.com'),
('trty', 34, 'kjkj'),
('dfg', 34, 'fgh'),
('yu', 68, 'y77'),
('fe', 23, 'me'),
('fe', 34, 'fg'),
('lo', 5678, 'bkhgff'),
('er', 34, 'fe'),
('wer', 3444, 'mper@'),
('ert', 234, 'mper'),
('123', 234, 'kfme'),
('err', 34, 'mpers'),
('2344er', 345, 'melf'),
('efe', 34, 'dd'),
('erty', 34, 'mpt'),
('sf', 234, 'sdf'),
('pershtoam', 2332324, 'mpershotam@ku'),
('ert', 234, 'mj'),
('h', 456, 'kj'),
('ert', 345, 'cv'),
('er', 34, 'efr'),
('df', 34, 'pdf');

-- --------------------------------------------------------

--
-- Table structure for table `usersu`
--

CREATE TABLE `usersu` (
  `Cid` int(90) NOT NULL,
  `CName` text NOT NULL,
  `CEmail` varchar(40) NOT NULL,
  `CContact` bigint(30) NOT NULL,
  `CPassword` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usersu`
--

INSERT INTO `usersu` (`Cid`, `CName`, `CEmail`, `CContact`, `CPassword`) VALUES
(2, 'mer', 'me@', 34, 'erer'),
(1, 'cch', 'sdauo', 394, 'cxbac'),
(2, 'sdfli', 'fwehiof', 428235, 'sdfuos'),
(2, 'saad', 'saad', 29074, '1234'),
(4, 'Love Kumar', 'love@gmail.com', 345599, 'LoveK90'),
(67, 'daios', 'eFJEIF', 348896, 'DOUIG'),
(4, 'love', 'eawgi', 2347, '12345'),
(3, 'df', 'dfdf', 23, 'fd'),
(1, 'love', 'sdfhhf', 345, '123'),
(3, 'per', 'sdfaklh', 5678, '1234'),
(4, 'love', 'sdlhhds', 6798, '123'),
(4, 'per', 'das', 14387, '1234'),
(1, 'pershotam', 'adgo', 1357, '1234'),
(3, 'Love', 'Love@gmail.com', 34566, '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

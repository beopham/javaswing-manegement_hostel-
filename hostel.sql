-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 06:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `gianhanvien`
--

CREATE TABLE `gianhanvien` (
  `sodienthoai` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gianhanvien`
--

INSERT INTO `gianhanvien` (`sodienthoai`, `thang`, `soluong`) VALUES
('123', 'Dec-2022', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `giasinhvien`
--

CREATE TABLE `giasinhvien` (
  `sodienthoai` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thang` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soluong` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giasinhvien`
--

INSERT INTO `giasinhvien` (`sodienthoai`, `thang`, `soluong`) VALUES
('123458', 'Dec-2022', '6000'),
('0352145687', '', ''),
('0352145687', 'Dec-2022', '6000');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `sodienthoai` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manv` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nghenghiep` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`sodienthoai`, `ten`, `email`, `diachi`, `manv`, `nghenghiep`, `trangthai`) VALUES
('123', 'nam', '1', '2', 'nv09', 'Thợ Điện', 'Nghĩ Làm'),
('4', '22', '3', '1', '52', 'Nấu Ăn', 'Đang Làm Việc');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `activity` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roomstatus` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`number`, `activity`, `roomstatus`) VALUES
('001', 'Yes', 'Đã Đặt'),
('0010', 'Yes', 'Đã Đặt'),
('0011', 'Yes', 'Đã Đặt'),
('002', 'No', 'Đã Đặt'),
('003', 'No', 'Đã Đặt'),
('004', 'Yes', 'Đã Đặt'),
('005', 'Yes', 'Đã Đặt'),
('006', 'Yes', 'Đã Đặt'),
('007', 'Yes', 'Đã Đặt'),
('008', 'Không Đặt', 'Đã Đặt'),
('009', 'Không Đặt', 'Đã Đặt');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sodienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tencha` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenme` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `truongdaihoc` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `masv` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sophong` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sodienthoai`, `ten`, `tencha`, `tenme`, `email`, `diachi`, `truongdaihoc`, `masv`, `sophong`, `trangthai`) VALUES
('0321456369', 'nguyễn linh', 'peter ', 'sofia', '123@gmail.com', 'quảng nam', 'dut', '21ad020', '0011', 'Đã Sống'),
('0352145687', 'Nguyễn Mỹ Linh', 'Nguyễn Lành', 'Lê Loan', '123@gmail.com', 'Quảng Tri', 'DUE', '21DM090', '0010', 'Đã Sống'),
('123458', 'NAM', 'ĐỨC', 'VÂN', 'BEO@123', 'ĐÀ NẴNG', 'VKU', '21IT89', '008', 'Đã Trả Phòng');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`sodienthoai`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sodienthoai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

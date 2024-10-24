-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 19, 2024 at 08:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lionking8_v8`
--

-- --------------------------------------------------------

--
-- Table structure for table `am_group`
--

CREATE TABLE `am_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `permission` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `am_group`
--

INSERT INTO `am_group` (`id`, `name`, `permission`, `status`) VALUES
(10, 'กลุ่มพันธมิตร', '[\"affmarketingv\"]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_admin`
--

CREATE TABLE `page_admin` (
  `id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `page_name_th` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `page_admin`
--

INSERT INTO `page_admin` (`id`, `page_name`, `page_name_th`, `status`) VALUES
(1, 'dashboard', 'แดชบอร์ด', 1),
(2, 'general', 'ทั่วไป', 1),
(3, 'brand', 'แบรนด์', 1),
(4, 'manageagent', 'เอเจนท์', 1),
(5, 'codefree', 'โค้ดฟรี', 1),
(6, 'line', 'โทเคนไลน์', 1),
(7, 'bank', 'ธนาคาร', 1),
(8, 'truemoney', 'ทรูมันนี่', 1),
(9, 'reg_member', 'สมัครสมาชิก', 1),
(10, 'check_member', 'เช็คข้อมูลสมาชิก', 1),
(11, 'staff', 'พนักงาน', 1),
(12, 'staff_permission', 'สิทธิ์พนักงาน', 1),
(13, 'promotion', 'โปรโมชั่น', 1),
(14, 'promotionpopup', 'โปรชั่นป๊อพอัพ', 1),
(15, 'deposit_member', 'เติมเงินยูเซอร์', 1),
(16, 'depositreport', 'รายงานฝาก', 1),
(17, 'withdrawreport', 'รายงานถอน', 1),
(18, 'withdraw', 'จัดการถอนเงิน', 1),
(19, 'deposit_error', 'ฝากผิดพลาด', 1),
(20, 'affiliate', 'แนะนำเพื่อน', 1),
(21, 'refund', 'คืนเงิน', 1),
(22, 'game', 'เกม', 1),
(23, 'reported', 'รายงาน', 1),
(24, 'userreport', 'รายงานยูเซอร์', 1),
(25, 'reportPromotion', 'รายงานโปรโมชั่น', 1),
(26, 'reportAffiliate', 'รายงานแนะนำเพื่อน', 1),
(27, 'logsgame', 'รายงานเกม', 1),
(28, 'codefree_user', 'ตั้งค่า Code ติด User', 1),
(29, 'staff_report', 'รายงานฝากถอน staff', 1),
(30, 'reported_total', 'รายงานสรุปฝากรวม', 1),
(31, 'sms', 'SMS LOG', 1),
(32, 'affmarketing', 'affmarketing', 1),
(33, 'affmarketingv', 'affmarketingv', 1);


--
-- Indexes for table `am_group`
--
ALTER TABLE `am_group`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `page_admin`
--
ALTER TABLE `page_admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for table `am_group`
--
ALTER TABLE `am_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `page_admin`
--
ALTER TABLE `page_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

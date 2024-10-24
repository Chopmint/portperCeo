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
-- Table structure for table `admin_bank`
--

CREATE TABLE `admin_bank` (
  `id` int(11) NOT NULL,
  `meta_data` text COLLATE utf8_unicode_ci NOT NULL,
  `login_status` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admin_bank`
--

INSERT INTO `admin_bank` (`id`, `meta_data`, `login_status`, `status`) VALUES
(25, '{\"id\":\"25\",\"login_status\":\"0\",\"status\":\"1\",\"key_valid\":\"ok\",\"bank_type\":\"BOTH\",\"bank_id\":\"5\",\"bank_acc_name\":\"ชยางกูร ชุมภู\",\"bank_acc_number\":\"9382681932\",\"username\":\"\",\"password\":\"\",\"work_type\":\"NODE\",\"show_type\":\"ALL\",\"change_acc\":\"false\",\"before_update_time\":\"true\",\"deposit_decimal\":\"false\",\"bank_break_enable\":\"false\",\"bank_break_id\":\"\",\"bank_break_credit_check\":\"\",\"bank_break_credit\":\"\",\"deviceid\":\"a3D/YF/jZ/y0LpOjlfrJ3JR13TOg0TYpHIq7ouogxghBUQVKY9Vyeg==\",\"pin\":\"\",\"api_refresh\":\"otXYxklv3Qo=\",\"ktb_api_refresh\":\"\",\"ktb_device_id\":\"\",\"ktb_bearer\":\"\",\"kbank_secret_key\":\"\",\"kbank_link_node\":\"\",\"kbank_asset_user\":\"\",\"bank_name\":\"ไทยพาณิชย์\",\"update_time\":\"2024-01-17 20:56:51\",\"failed_attempt\":0,\"bank_ico\":\"scb.jpg\",\"bank_color\":\"#4e2e7f\",\"scb_app_token\":\"SUMz/QEGBuEKoWVCxFWsWWFEvIfnXUKMVb3lGS4yFq0h6SNcsbO7qA==\",\"balance\":41.83}', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_processor`
--

CREATE TABLE `admin_processor` (
  `id` int(11) NOT NULL,
  `process` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admin_processor`
--

INSERT INTO `admin_processor` (`id`, `process`, `status`) VALUES
(1, 'deposit', 1),
(2, 'withdraw', 1),
(3, 'withdraw_bank', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_truewallet`
--

CREATE TABLE `admin_truewallet` (
  `id` int(11) NOT NULL,
  `meta_data` text COLLATE utf8_unicode_ci NOT NULL,
  `login_status` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `agent_account`
--

CREATE TABLE `agent_account` (
  `id` int(11) NOT NULL,
  `provider` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `meta_data` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `agent_account`
--

INSERT INTO `agent_account` (`id`, `provider`, `meta_data`, `status`) VALUES
(6, 'betflix', '{\"key_valid\":\"ok\",\"provider\":\"betflix\",\"username\":\"bdacbg99\",\"password\":\"Lk889889\",\"prefix\":\"\",\"agent\":\"bdacbg99\",\"client\":\"\",\"api_key\":\"351cbbea566096e6c1dda8a8ceedba27\",\"hash\":\"PxM8shUcuT46WAkn\",\"end_point_api\":\"https:\\/\\/api.bfx.fail\\/v4\\/\",\"end_point_game\":\"https:\\/\\/www.083513.com\\/\"}', 1);

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
-- Table structure for table `am_login`
--

CREATE TABLE `am_login` (
  `id` int(11) NOT NULL,
  `am_username` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `ci_sessions` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `am_login`
--

INSERT INTO `am_login` (`id`, `am_username`, `ip`, `note`, `date`, `ci_sessions`) VALUES
(1, 'pae', '175.100.33.184', 'เข้าสู่ระบบ', '2024-01-18 02:40:50', '7645tcdjhsdhkn1ftrmthgq15ghtgn6f'),
(2, 'pae', '49.228.41.110', 'เข้าสู่ระบบ', '2024-01-18 21:14:11', 'udm4ero9fl99iftn4iaeql8bnekd7hm7'),
(3, 'pae', '175.100.33.93', 'เข้าสู่ระบบ', '2024-01-18 21:17:27', '174ml1l19s1hummis9evhgq1lqf08783'),
(4, 'pae', '49.228.41.110', 'เข้าสู่ระบบ', '2024-01-18 21:17:32', 'udm4ero9fl99iftn4iaeql8bnekd7hm7'),
(5, 'pae', '175.100.33.93', 'เข้าสู่ระบบ', '2024-01-18 21:17:42', '174ml1l19s1hummis9evhgq1lqf08783'),
(6, 'pae', '49.228.41.110', 'เข้าสู่ระบบ', '2024-01-18 21:19:12', 'udm4ero9fl99iftn4iaeql8bnekd7hm7'),
(7, 'pae', '175.100.33.93', 'เข้าสู่ระบบ', '2024-01-18 21:43:08', 'oq9jcuo8ockq1gg4qko0becs2cakdcd4'),
(8, 'pae', '49.228.41.110', 'ออกจากระบบ', '2024-01-18 21:43:10', ''),
(9, 'ton', '49.228.41.110', 'เข้าสู่ระบบ', '2024-01-18 21:44:20', 'po9nnulrf1jm28f6e92dc6e2a88ribk6'),
(10, 'aek', '49.228.41.110', 'เข้าสู่ระบบ', '2024-01-18 21:55:48', 'dt02781htnapgiihi2gecaeh8idh27ff'),
(11, 'ton', '49.228.41.110', 'เข้าสู่ระบบ', '2024-01-19 03:36:56', 'op1rgk1ci8g9q4qrn9qd9rjlftrsipnt'),
(12, 'pae', '2405:9800:bc90:973f:712f:cf1f:3d7a:7222', 'เข้าสู่ระบบ', '2024-01-19 11:51:20', 'h88nlr4hv8b77f7pgbd6ar9jjo1fi0um'),
(13, 'pae', '2405:9800:bc90:973f:712f:cf1f:3d7a:7222', 'ออกจากระบบ', '2024-01-19 11:59:23', ''),
(14, 'aek', '49.228.41.110', 'เข้าสู่ระบบ', '2024-01-19 18:38:24', 'ee55t7b33obprsssjel5trsaqjjp4mqv');

-- --------------------------------------------------------

--
-- Table structure for table `am_users`
--

CREATE TABLE `am_users` (
  `id` int(11) NOT NULL,
  `am_username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `am_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `am_fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `am_mobile` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `am_rank` int(11) NOT NULL,
  `am_group` int(11) DEFAULT NULL,
  `am_status` int(11) NOT NULL,
  `login_token` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `am_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `am_perc` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `am_users`
--

INSERT INTO `am_users` (`id`, `am_username`, `am_password`, `am_fullname`, `am_mobile`, `am_rank`, `am_group`, `am_status`, `login_token`, `am_code`, `am_perc`) VALUES
(49, 'sup', '$2y$10$9MG5xkI0Ax7fVdtAilZZOOFhl.kUW3Q/3ivmvDmjR/odxcMGOPqh.', 'sup', '', 4, 0, 1, 'q7lo47jbhv62m2722eoomc78c883t77l', '-', ''),
(57, 'pae', '$2y$10$srHcyiQX7/5crvPC7nZ/SeX0WfWIzgOVw3bUbeStHVqZXMBAAa9SS', 'pae', '', 4, 0, 1, 'h88nlr4hv8b77f7pgbd6ar9jjo1fi0um', '', ''),
(58, 'ton', '$2y$10$UowlylsXY.B.a/SAgJ80g.Efz9xSTbO9voB75Lm9Rs8fhGmpF/YYi', 'ton', '', 4, 0, 1, 'op1rgk1ci8g9q4qrn9qd9rjlftrsipnt', '', ''),
(59, 'aek', '$2y$10$hX0NBmniZRUC5lCc7.I5lOb9HrXJJuOS8NB2dm8YUyZHuJ2TE62qW', 'chayangkul', '', 4, 0, 1, 'ee55t7b33obprsssjel5trsaqjjp4mqv', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

CREATE TABLE `bank_info` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_ico` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `bank_color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `kbank_id` int(11) NOT NULL,
  `scb_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `kma_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ktb_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MGBankId` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bank_info`
--

INSERT INTO `bank_info` (`bank_id`, `bank_name`, `bank_ico`, `bank_color`, `kbank_id`, `scb_id`, `kma_id`, `ktb_id`, `MGBankId`) VALUES
(1, 'กสิกรไทย', 'kbank.jpg', '#138f2d', 1, '004', '004', '4', 'KBANK'),
(2, 'กรุงเทพ', 'bbl.jpg', '#1e4598', 3, '002', '002', '2', 'BBL'),
(3, 'กรุงไทย', 'ktb.jpg', '#1ba5e1', 4, '006', '006', '0', 'KTB'),
(4, 'กรุงศรีอยุธยา', 'bay.jpg', '#fec43b', 17, '025', '0', '25', 'BAY'),
(5, 'ไทยพาณิชย์', 'scb.jpg', '#4e2e7f', 10, '014', '014', '14', 'SCB'),
(6, 'เกียรตินาคิน', 'kk.jpg', '#199cc5', 23, '069', '069', '69', 'KKP'),
(7, 'เจพีมอร์แกน เชส สาขากรุงเทพฯ', 'jpm.jpg', '#321c10', 6, '', '', '8', ''),
(8, 'ซิตี้แบ้งค์', 'citi.jpg', '#1583c7', 24, '017', '017', '17', ''),
(9, 'ซีไอเอ็มบี ไทย', 'cimb.jpg', '#7e2f36', 18, '022', '022', '22', 'CIMBT'),
(10, 'ซูมิโตโม มิตซุย แบงกิ้ง', 'smbc.jpg', '#a0d235', 123, '018', '018', '18', ''),
(11, 'ดอยซ์แบงก็', 'db.jpg', '#0522a5', 26, '032', '032', '32', ''),
(12, 'ทหารไทย', 'tmb.jpg', '#1279be', 8, '011', '011', '11', 'TMB'),
(13, 'ทิสโก้', 'tisco.jpg', '#12549f', 29, '067', '067', '67', 'Tisco'),
(14, 'ธนชาต', 'tbank.jpg', '#fc4f1f', 106, '065', '065', '65', 'TBANK'),
(15, 'บีเอ็นพี พารีบาส์ สาขากรุงเทพฯ', 'bnp.jpg', '#14925e', 117, '', '', '45', ''),
(16, 'เพื่อการเกษตรและสหกรณ์การเกษตร', 'baac.jpg', '#4b9b1d', 26, '034', '034', '34', 'BAAC'),
(17, 'มิซูโฮ คอร์ปอเรต สาขากรุงเทพฯ', 'mb.jpg', '#150b78', 27, '039', '039', '39', 'MHCB'),
(18, 'เมกะ สากลพาณิชย์', 'mega.jpg', '#815e3b', 20, '', '', '26', ''),
(19, 'ยูโอบี', 'uob.jpg', '#0b3979', 16, '024', '024', '24', 'UOBT'),
(20, 'แลนด์ แอนด์ เฮ้าส', 'lhb.jpg', '#6d6e71', 20, '073', '073', '73', ''),
(21, 'สแตนดาร์ดชาร์เตอร์ด (ไทย)', 'sc.jpg', '#0f6ea1', 13, '020', '020', '20', ''),
(22, 'แห่งประเทศจีน (ไทย)', 'icbc.jpg', '#c50f1c', 121, '070', '070', '52', ''),
(23, 'แห่งอเมริกาฯ', 'boa.jpg', '#e11e3c', 21, '', '', '27', ''),
(24, 'ออมสิน', 'gsb.jpg', '#eb198d', 22, '030', '030', '30', 'GSB'),
(25, 'อาคารสงเคราะห์', 'ghb.jpg', '#f57d23', 25, '033', '033', '33', 'GHBA'),
(26, 'อิสลามแห่งประเทศไทย', 'ibank.jpg', '#184615', 28, '066', '066', '66', 'IBANK'),
(27, 'ไอซีบีซี (ไทย)', 'icbc.jpg', '#c50f1c', 30, '070', '070', '70', 'ICBC'),
(28, 'ฮ่องกงและเซี่ยงไฮ้', 'hsbc.jpg', '#fd0d1b', 25, '031', '031', '31', ''),
(29, 'True Wallet', 'twl.jpg', 'orange', 0, '111', '111', '4', 'TW'),
(30, 'ทีทีบี', 'ttb.jpg', 'blue', 7, '011', '', '', 'TTB');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `url_link` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `img` varchar(500) NOT NULL,
  `content_blog` text NOT NULL,
  `head_bar` varchar(100) NOT NULL,
  `published` datetime NOT NULL,
  `edit` datetime DEFAULT NULL,
  `post_by` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0jpu4at5qkgqiedhc0tg8942kb841ppj', '49.228.41.110', 1705626276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353631333136303b61646d696e7c613a373a7b733a393a226c6f676765645f696e223b623a313b733a323a226964223b733a323a223539223b733a383a22757365726e616d65223b733a333a2261656b223b733a383a2269735f61646d696e223b733a313a2234223b733a343a226e616d65223b733a31303a2263686179616e676b756c223b733a343a226e6f7465223b4e3b733a31313a226c6f67696e5f746f6b656e223b733a33323a226474303237383168746e61706769696869326765636165683869646832376666223b7d),
('0sn9rn6i32mr75sf4ic136smta0o3tpv', '123.60.68.42', 1705647261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353634373236313b),
('37lnqvn2n65gs5h4t7t3mifkgqdte341', '66.249.66.161', 1705671511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353637313530373b),
('3net5e430lvb7tg0rhm3q07j6n94vor8', '63.250.58.63', 1705622655, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353632323635313b),
('41h8lv01rrll5kgal6n4mgpl50ogpert', '208.91.189.153', 1705663844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353636333834343b),
('4ik1s6b4c61s3me1bt28ktfm1foi4ob4', '66.249.66.160', 1705637177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353633373137373b),
('6vkv7eoa686vj82ke62idfd56mac7lbk', '43.128.68.127', 1705639035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353633393033353b),
('70573nl0hdm89c6nbdeqe9a66r0qaolh', '35.87.181.18', 1705669268, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353636393235343b),
('74sbm1btlgj0dvc1n3hmjmg8jdli94uj', '156.146.56.136', 1705660448, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353636303434383b),
('apbk93ni0i6olhr19p3pm891tdvh4svj', '205.210.31.207', 1705664464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353636343436343b),
('cqkrbnooo01pk3aelb1ersq8stfppujq', '66.249.66.162', 1705647977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353634373937373b),
('db9p5oirgdqcm1be0st3ho4fj5pqjv6n', '43.128.68.127', 1705619157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353631393135373b),
('dlcl8nrver6388h6c2idq7bchojdlo39', '180.110.203.108', 1705659940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353635393934303b),
('e6199up6ae0oh0nhrh0hcjoo4clr64rh', '103.123.84.3', 1705625075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353632353037353b),
('ee55t7b33obprsssjel5trsaqjjp4mqv', '49.228.41.110', 1705671511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353636343238373b61646d696e7c613a373a7b733a393a226c6f676765645f696e223b623a313b733a323a226964223b733a323a223539223b733a383a22757365726e616d65223b733a333a2261656b223b733a383a2269735f61646d696e223b733a313a2234223b733a343a226e616d65223b733a31303a2263686179616e676b756c223b733a343a226e6f7465223b4e3b733a31313a226c6f67696e5f746f6b656e223b733a33323a226565353574376233336f6270727373736a656c3574727361716a6a70346d7176223b7d),
('ei5f19ap58cajjlsk68j2tchfstmp3sl', '52.81.25.202', 1705626116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353632363131363b),
('ga45h4podt7of8nm4i1fiu3qsco3jkkq', '66.249.66.167', 1705637181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353633373138313b),
('gb6r98qgheb7ps0o94513old2v1iishi', '67.220.86.160', 1705616713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353631363731333b),
('h88nlr4hv8b77f7pgbd6ar9jjo1fi0um', '2405:9800:bc90:973f:712f:cf1f:3d7a:7222', 1705640363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353634303336333b61646d696e7c613a373a7b733a393a226c6f676765645f696e223b623a313b733a323a226964223b733a323a223537223b733a383a22757365726e616d65223b733a333a22706165223b733a383a2269735f61646d696e223b733a313a2234223b733a343a226e616d65223b733a333a22706165223b733a343a226e6f7465223b4e3b733a31313a226c6f67696e5f746f6b656e223b733a33323a226838386e6c7234687638623737663770676264366172396a6a6f31666930756d223b7d),
('iu218tf59b9rb9jns4q1prokou68331u', '43.128.68.127', 1705659037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353635393033373b),
('iumqaln63cm5c13dfi19us7pfo798bat', '43.155.152.154', 1705630334, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353633303333343b),
('jdp8so1opjeit0v18s0a78qina39k9hi', '175.100.33.93', 1705667518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353636373034323b),
('ki7e3b4ejqgssrnkq8lhueq7k76ajmuk', '2405:9800:bc90:973f:712f:cf1f:3d7a:7222', 1705640363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353634303336333b),
('kr3rdjoi1kah312osaaqgmkv89m5eu7o', '2a12:5940:5433::2', 1705663190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353636333139303b),
('l3bbntg62r7u9amkrqgnd5le9ho58kd9', '18.236.154.106', 1705669251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353636393235313b),
('ldus2fhfl5eldcabh1cei0m563vamk31', '167.71.154.251', 1705625074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353632353037343b),
('m2c9334ddm9qh06d3vff2l01167lq7c1', '52.81.87.90', 1705626130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353632363133303b),
('ojbqjg6o5frh1pgu3df44kvucrehjo5i', '43.130.32.224', 1705623588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353632333538383b),
('puisptg59bsiq3lodcu6hcqqlpfogrhh', '66.249.66.168', 1705637180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353633373138303b),
('q4kgr3s4j7gmqppinuq2bnhgb7bijq72', '138.199.22.235', 1705646406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353634363430343b),
('t2q942t5umbcbb23an3e2pthuor07749', '66.249.66.167', 1705637180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353633373138303b),
('uoovi6omvi1fu6b0096hhshi0l275i0h', '205.210.31.241', 1705631998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353633313939383b),
('v5sklvo3h3uopbrnaoc6gcr3rqh762md', '66.249.66.160', 1705671511, ''),
('v80jpd43ar62ef3pdv07vjuai23ubnb2', '52.81.87.90', 1705626146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353632363134363b),
('vbapaltug796k86g4ntjup19018e2tbd', '54.234.76.128', 1705660499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353636303439393b);

-- --------------------------------------------------------

--
-- Table structure for table `code_free`
--

CREATE TABLE `code_free` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `turn` decimal(10,2) NOT NULL,
  `max_withdraw` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `code_free_used`
--

CREATE TABLE `code_free_used` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `note` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `generate_decimal`
--

CREATE TABLE `generate_decimal` (
  `id` int(11) NOT NULL,
  `username` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `isset_credit` decimal(10,2) NOT NULL,
  `decimal_credit` decimal(10,2) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `last_login_ip`
--

CREATE TABLE `last_login_ip` (
  `id` int(11) NOT NULL,
  `u_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `ci_sessions` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `last_login_ip`
--

INSERT INTO `last_login_ip` (`id`, `u_id`, `ip`, `date`, `ci_sessions`) VALUES
(1, '1', '49.228.41.110', '2024-01-18 21:39:11', 'r961nap9bqf57ge1h3mhanv7jlve68vt');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `log_text` text NOT NULL,
  `admin` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `log_text`, `admin`, `datetime`) VALUES
(1, 'เพิ่ม โปรโมชั่น ', 'sup', '2024-01-18 02:38:08'),
(2, 'เพิ่ม โปรโมชั่น ', 'sup', '2024-01-18 02:38:16'),
(3, 'เพิ่ม โปรโมชั่น ', 'sup', '2024-01-18 02:38:28'),
(4, 'เพิ่มพนักงานpae', 'sup', '2024-01-18 02:39:58'),
(5, 'ลบ โปรโมชั่น ', 'pae', '2024-01-18 02:48:35'),
(6, 'ลบ โปรโมชั่น ', 'pae', '2024-01-18 02:49:05'),
(7, 'ลบ โปรโมชั่น ', 'pae', '2024-01-18 02:50:33'),
(8, 'ลบ โปรโมชั่น ', 'pae', '2024-01-18 02:51:39'),
(9, 'ลบ โปรโมชั่น ', 'pae', '2024-01-18 02:53:08'),
(10, 'ลบ โปรโมชั่น ', 'pae', '2024-01-18 02:53:40'),
(11, 'ลบ โปรโมชั่น ', 'pae', '2024-01-18 02:54:29'),
(12, 'ลบ โปรโมชั่น ', 'pae', '2024-01-18 02:54:44'),
(13, 'ลบ โปรโมชั่น ', 'pae', '2024-01-18 02:55:16'),
(14, 'ลบ โปรโมชั่น ', 'pae', '2024-01-18 02:56:30'),
(15, 'เพิ่ม meta agent', 'pae', '2024-01-18 21:18:49'),
(16, 'เพิ่มพนักงานton', 'pae', '2024-01-18 21:43:51'),
(17, 'เพิ่มพนักงานaek', 'ton', '2024-01-18 21:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `main_wallet_withdraw`
--

CREATE TABLE `main_wallet_withdraw` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `credit_before` decimal(10,2) NOT NULL,
  `credit_after` decimal(10,2) NOT NULL,
  `withdraw_amount` decimal(10,2) NOT NULL,
  `u_bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_bank_acc` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `withdraw_time` datetime NOT NULL,
  `status` int(11) DEFAULT NULL,
  `notice` int(11) NOT NULL,
  `approve_date` datetime DEFAULT NULL,
  `approve_admin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `meta_promotion`
--

CREATE TABLE `meta_promotion` (
  `id` int(11) NOT NULL,
  `u_mobile` varchar(15) NOT NULL,
  `value` text NOT NULL,
  `Type` varchar(80) NOT NULL,
  `status` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `meta_promotion_page`
--

CREATE TABLE `meta_promotion_page` (
  `id` int(11) NOT NULL,
  `promotion_img` text NOT NULL,
  `promotion_name` text NOT NULL,
  `promotion_desc` text NOT NULL,
  `promotion_note` text NOT NULL,
  `promotion_cond` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `meta_promotion_popup`
--

CREATE TABLE `meta_promotion_popup` (
  `id` int(11) NOT NULL,
  `promotion_img` text NOT NULL,
  `promotion_page` text NOT NULL,
  `promotion_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `meta_promotion_setting`
--

CREATE TABLE `meta_promotion_setting` (
  `id` int(11) NOT NULL,
  `meta` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `meta_promotion_setting`
--

INSERT INTO `meta_promotion_setting` (`id`, `meta`) VALUES
(1, '{\"key_valid\":\"ok\",\"status\":\"1\",\"Banner\":\"https:\\/\\/img2.pic.in.th\\/pic\\/promo-2.png\",\"Title\":\"โปร 20%\",\"Type\":\"Normal\",\"From\":\"\",\"To\":\"\",\"Deposit\":\"\",\"DepositType\":\"Min\",\"Rec\":\"\",\"Rec_type\":\"percent\",\"Limit\":\"\",\"LimitType\":\"DepositWithBonus\",\"TurnOver\":\"\",\"TurnType\":\"percent\",\"TurnCal\":\"credit\",\"MaxWithdraw\":\"\",\"game_type\":\"slot\",\"note_pro\":\"\"}'),
(2, '{\"key_valid\":\"ok\",\"status\":\"1\",\"Banner\":\"https:\\/\\/img2.pic.in.th\\/pic\\/promo-4.png\",\"Title\":\"คืนยอดเสีย 10%\",\"Type\":\"Normal\",\"From\":\"\",\"To\":\"\",\"Deposit\":\"\",\"DepositType\":\"Min\",\"Rec\":\"\",\"Rec_type\":\"percent\",\"Limit\":\"\",\"LimitType\":\"DepositWithBonus\",\"TurnOver\":\"\",\"TurnType\":\"percent\",\"TurnCal\":\"credit\",\"MaxWithdraw\":\"\",\"game_type\":\"slot\",\"note_pro\":\"\"}'),
(3, '{\"key_valid\":\"ok\",\"status\":\"1\",\"Banner\":\"https:\\/\\/img2.pic.in.th\\/pic\\/promo-3.png\",\"Title\":\"ชวนเพื่อน 20%\",\"Type\":\"Normal\",\"From\":\"\",\"To\":\"\",\"Deposit\":\"\",\"DepositType\":\"Min\",\"Rec\":\"\",\"Rec_type\":\"percent\",\"Limit\":\"\",\"LimitType\":\"DepositWithBonus\",\"TurnOver\":\"\",\"TurnType\":\"percent\",\"TurnCal\":\"credit\",\"MaxWithdraw\":\"\",\"game_type\":\"slot\",\"note_pro\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `meta_setting`
--

CREATE TABLE `meta_setting` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `meta_setting`
--

INSERT INTO `meta_setting` (`id`, `value`) VALUES
('affiliate', '{\"key_valid\":\"ok\",\"MinDeposit\":\"150\",\"Credit\":\"15\",\"TypeCredit\":\"percent\",\"MaxCredit\":\"15\",\"MinTransfer\":\"500\",\"enable\":\"1\"}'),
('affiliate_bet', '{\"key_valid\":\"ok\",\"Credit\":\"1\",\"TypeCredit\":\"percent\",\"enable\":\"1\"}'),
('amb_game_setting', '{\"key_valid\":\"ok\",\"sport\":\"1\",\"keno\":\"1\",\"atom\":\"1\",\"number\":\"1\",\"rng\":\"1\",\"hotgraph\":\"1\",\"lotto\":\"1\",\"tfgaming\":\"1\",\"sexy\":\"1\",\"sa\":\"1\",\"dg\":\"1\",\"pt\":\"1\",\"ag\":\"1\",\"ebet\":\"1\",\"bg\":\"1\",\"betgame\":\"1\",\"greendragon\":\"1\",\"pragmatic\":\"1\",\"live22\":\"1\",\"ameba\":\"1\",\"spg\":\"1\",\"ganapati\":\"1\",\"pg\":\"1\",\"slotxo\":\"1\",\"askmebetslot\":\"1\",\"evoplay\":\"1\",\"kagaming\":\"1\",\"allwayspin\":\"1\",\"booongo\":\"1\",\"iconicgaming\":\"1\",\"wazdandirect\":\"1\",\"funtagaming\":\"1\",\"funkygame\":\"1\",\"mannaplay\":\"1\",\"pragmaticslot\":\"1\",\"ambslot\":\"1\",\"jili\":\"1\",\"simpleplay\":\"1\",\"microgame\":\"1\",\"ambgame\":\"1\"}'),
('brand_setting', '{\"key_valid\":\"ok\",\"Title\":\"LIONKING889 สล็อต ยิงปลา คาสิโน  เว็ปตรงอันดับ1 มาแรงที่สุดตอนนี้\",\"Description\":\" เว็บการเงินมั่นคงอันดับ 1 ของเบทฟิก LIONKING889 สล็อต ยิงปลา คาสิโน ครบในที่เดียว\",\"Keywords\":\"LIONKING889 สล็อต, BETFLIX\",\"Author\":\"LIONKING889\",\"Canonical\":\"LIONKING889\",\"og-title\":\"LIONKING889 เว็บคาสิโน สล็อต ออนไลน์  ระบบออโต้ \",\"og-description\":\"LIONKING889 เว็บรวมสล็อตออนไลน์และเกมคาสิโนออนไลน์จากบริษัทตรง 51 แบรนด์ เพราะ BETFLIK เราเป็นพาร์ทเนอร์กับค่ายเกมทั่วโลก เปิดให้เล่นผ่านเว็บไซต์ตรง\",\"og-sitename\":\"LIONKING889\",\"og-image\":\"LIONKING889\",\"twitter-title\":\"LIONKING889\",\"twitter-description\":\"LIONKING889\",\"twitter-image\":\"LIONKING889\",\"title-seo\":\"สมัครเล่น LIONKING889 เว็บตรงมั่นคง ปลอดภัย ขึ้นชื่ออันดับ 1 ที่คนเล่นเยอะที่สุด\",\"h2-seo\":\"ขั้นตอนการ สมัครเล่นLIONKING889 รวมครบจบในเว็บไซต์เดียวเปิดให้บริการตลอด 24 ชั่วโมง\",\"h3-seo\":\"เว็บตรง LIONKING889 ลิขสิทธิ์แท้ 100% เข้าเล่นง่ายได้เงิน จริงฝากถอนออโต้ รวดเร็วทันใจ \",\"text\":\"<p><span style=\\\"font-size:11px\\\">&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<\\/span><a href=\\\"https:\\/\\/www.betflikgold.online\\/wp-content\\/uploads\\/2022\\/10\\/gif-jackpot.gif\\\"><img alt=\\\"เเจ็กพอต\\\" src=\\\"https:\\/\\/www.betflikgold.online\\/wp-content\\/uploads\\/2022\\/10\\/gif-jackpot.gif\\\" \\/><\\/a><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h1><strong>สมัครเล่น <\\/strong>LIONKING889<strong>&nbsp;เว็บตรงมั่นคง ปลอดภัย ขึ้นชื่ออันดับ 1 ที่คนเล่นเยอะที่สุด<\\/strong><\\/h1>\\r\\n\\r\\n<p>LIONKING889 ผู้ให้บริการพนันออนไลน์อันดับ 1 ที่พร้อมให้นักพนันทุกท่าน สามารถที่จะทำการเข้าร่วมวางเดิมพันเกมพนันออนไลน์ที่หลากหลายประเภทได้เป็นอย่างดี เพียงแค่ทำการ <strong>สมัครเล่น <\\/strong>LIONKING889&nbsp;ท่านก็สามารถที่จะเลือกวางเดิมพันได้เลยในทันทีไม่ต้องรอนานพร้อมสนุกสุดมันไปกับเกมทำเงิน&nbsp; เพราะทางเรานั้นได้รวมเกมทำเงินที่ดีที่สุด มาให้ทุกท่านได้ทำการลุ้นรับผลตอบแทนได้อย่างต่อเนื่อง แถมยังฝากถอนได้ครบจบในเว็บไซต์เดียว และยังเปิดให้บริการเกมทำเงินได้จริงที่คนเล่นเยอะที่สุด ให้ทุกท่านได้สัมผัสกับประสบการณ์การวางเดิมพันที่ดีมีความทันสมัย ตอบโจทย์และตอบสนองความต้องการของนักพนันทุกท่านได้เป็นอย่างดีการันตีความปลอดภัยกับเว็บตรงให้บริการเกมอย่างหลากหลายกับค่ายเกมชั้นนำโดยตรงลิขสิทธิ์แท้ ไม่ว่าจะเป็นค่ายเกม&nbsp; SA Gaming&nbsp; , AE Gaming&nbsp; Dragon Tiger&nbsp; หรือ&nbsp; MW Casino ท่านก็สามารถที่จะทำการเลือกวางเดิมพันได้เป็นอย่างดีไม่มีจำกัด ผ่านทางเข้าเล่นที่ดีมีความทันสมัย เข้าเล่นง่ายเล่นได้ไม่มีขั้นต่ำ แม้ท่านจะมีทุนในการร่วมวางเดิมพันไม่มากก็สามารถที่จะทำการสร้างเงินสร้างรายได้ให้กับคนอื่นได้เป็นอย่างดี เริ่มต้นความสนุกลุ้นเงินรางวัลครบจบในที่เดียว โดยที่ไม่ต้องสลับปรับเปลี่ยน User หรือ ID ให้เสียเวลาอีกต่อไป แต่ท่านก็สามารถที่จะสร้างรายได้และกำไรให้กับตนเองได้อย่างต่อเนื่องตลอด 24 ชั่วโมงกันเลยทีเดียว การันตีได้เลยว่าหากท่านจะทำการสมัครสมาชิก เข้าร่วมวางเดิมพันกับทางเว็บของเรานั้น สุดคุ้มค่าอย่างแน่นอน เพราะเงินลงทุนทุกบาททุกสตางค์ เราได้จ่ายเติมทุกยอดการลงทุนไม่มีจำกัด และไม่ว่าท่านจะอยู่ที่ไหนทำอะไร ก็สามารถที่จะทำการเลือกวางเดิมพันพนันออนไลน์ได้จริง&nbsp;<\\/p>\\r\\n\\r\\n<p><br \\/>\\r\\n<br \\/>\\r\\n&nbsp; &nbsp;&nbsp;<br \\/>\\r\\n<span style=\\\"font-size:11px\\\">&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;​​​​​​<\\/span><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h1>&nbsp;<\\/h1>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h1>&nbsp;<\\/h1>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\",\"text2\":\"<h2><strong>ขั้นตอนการ สมัครเล่น <\\/strong>LIONKING889<strong>&nbsp;รวมครบจบในเว็บไซต์เดียวเปิดให้บริการตลอด 24 ชั่วโมง<\\/strong><\\/h2>\\r\\n\\r\\n<p>สุดยอดผู้ให้บริการความสนุก ครบทุกเกมเดิมพัน ขึ้นชื่ออันดับ 1 เรื่องให้บริการที่สนุกสนาน กับเกมออนไลน์ที่ครบวงจร ที่ส่งตรงความสนุกให้กับผู้เล่นได้อย่างแท้จริง เพียงแค่ทำการสมัครสมาชิก ท่านก็สามารถที่จะทำการเข้าร่วมลงทุน พบกับสุดยอดเกมออนไลน์ที่มีท่านทำการวางเดิมพันอย่างหลากหลาย รวบรวมมาให้ทุกท่านได้ทำการเลือกวางเดิมพันอย่างเต็มที่ และสำหรับท่านใดที่ต้องการอยากจะสมัครเล่นกับทางเราก็สามารถที่จะทำการสมัครได้เลยในทันที ผ่านระบบอัตโนมัติ ที่สามารถดำเนินรายการได้ด้วยตนเอง ด้วยขั้นตอนง่าย ๆ ด้วยกัน ดังนี้&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;1.กดปุ่ม &ldquo;สมัครสมาชิก&rdquo; ที่อยู่บนหน้าเว็บไซต์ LIONKING889&nbsp;ของเรา&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;2.ให้ท่านทำการกรอกข้อมูล เพื่อที่จะทำการกรอเบอร์โทร ทำการตั้ง&nbsp;password ให้เรียบร้อยกดยืนยัน<\\/p>\\r\\n\\r\\n<p>&nbsp;3.กรอกข้อมูลธนาคาร และ ชื่อ-สกุล ให้ตรงกับข้อมูล&nbsp;เสร็จสิ้นขั้นตอนการสมัครสมาชิก<\\/p>\\r\\n\\r\\n<p>&nbsp; &nbsp; สำหรับนักพนันท่านใดที่ไม่สะดวกในการลงทะเบียนผ่านระบบอัตโนมัติ ที่หน้า <strong>เว็บตรง <\\/strong>LIONKING889&nbsp;ของเรา ทางเรายังมีบริการในช่องทางอื่นหลากหลายช่องทาง ให้ท่านได้เลือกใช้บริการได้อย่างง่าย ซึ่งนั่นก็คือ ระบบสมัครสมาชิก ผ่านทาง Line ID ที่มีผู้เชี่ยวชาญ คอยให้ความช่วยเหลือ และดูแลการสมัครของท่านตลอด จนจบการทำรายการเลยทีเดียวนั่นเอง รับโบนัสและโปรโมชั่นไม่มีเงื่อนไข มอบสิทธิพิเศษ ให้กับสมาชิกจากเราได้อย่างดี การันตีความคุ้มค่าในทุกครั้งที่ทำการวางเดิมพันอย่างแน่นอนนั่นเอง&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>&nbsp;เว็บตรง <\\/strong>LIONKING889<strong> ลิขสิทธิ์แท้ 100% เข้าเล่นง่ายได้เงิน จริงฝากถอนออโต้ รวดเร็วทันใจ&nbsp;<\\/strong><\\/h2>\\r\\n\\r\\n<p>&nbsp; &nbsp; &nbsp;เว็บตรงรวมเกมพนัน LIONKING889&nbsp;แหล่งรวมความสนุกที่ไม่ต้องผ่านเอเย่นต์ ลิขสิทธิ์แท้ 100% ที่สามารถเลือกเล่นเกมได้แบบไม่ซ้ำใคร ไม่ว่าท่านจะทำการวางเดิมพันเกมไหน เช่น บาคาร่า รูเล็ต ไฮโล สล็อต ก็สามารถที่จะเข้าใช้งานได้ในทันที เพราะทาง <strong>เว็บตรง <\\/strong>LIONKING889&nbsp;นั้นได้รวบรวมเกมทำเงินกับเกมพนันออนไลน์หลากหลายรูปแบบ ให้ท่านสามารถเข้าเล่นง่ายๆ ผ่านหน้าเว็บโดยตรงของแท้ ไม่ผ่านเอเย่นต์ บนโทรศัพท์มือถือ คอมพิวเตอร์ แท็บเล็ต iPhone iPad หรือสมาร์ทโฟนรุ่นอื่นๆ ท่านก็สามารถที่จะทำการเข้าร่วมวางเดิมพันได้เป็นอย่างดี มาพร้อมสิทธิประโยชน์มากมาย ที่ท่านสามารถเลือกเล่นได้เองอย่างตามใจชอบ ไม่ว่าจะเป็น เครดิตฟรี กิจกรรมโปรโมชั่นสุดพิเศษ ที่ทางเราได้จัดเตรียมคอยมอบไว้ให้กับทุกท่าน ก็สามารถที่จะทำการกดรับได้อย่างจุใจ รวดเร็วทันใจ ผ่านระบบออโต้ที่ท่านสามารถที่จะทำรายการฝากถอนเงินได้ด้วยตนเอง โดยที่ไม่ต้องแจ้งทีมงาน หรือทาง Admin ใดๆทั้งสิ้น เพราะทางร้านนั้นได้ให้บริการด้วยระบบออโต้ หรือ ระบบอัตโนมัติ หรือ ท่านจะทำรายการฝากถอนเงินด้วยระบบ True wallet ก็สามารถที่จะทำได้เช่นเดียวกัน เนื่องจากว่าทางเรานั้นได้ออกแบบระบบ ให้มีการรองรับหลากหลายช่องทาง เพื่อที่จะตอบสนองความต้องการของนักพนันทุกท่านได้อย่างตรงจุด ซึ่งแน่นอนเลยว่าทางเว็บของเรานั้นเป็นผู้ให้บริการที่ดีและยอดเยี่ยมที่ สมัครเล่นเว็บตรง 59sbs168&nbsp;รวมเกมออนไลน์กำไรสูง ลงทุนน้อยเครดิตจ่ายหนักจัดเต็มทุกเกมเดิมพัน แถมยังฝากถอนได้ไม่มีขั้นต่ำ ไม่มีอั้น และมีจำกัดวงเงินใดๆทั้งสิ้น มอบความสะดวกสบายในการเข้าใช้งานให้กับผู้เล่นได้อย่างแท้จริง<\\/p>\\r\\n\",\"tag1\":\"slot\",\"tag1_l\":\"#\",\"tag2\":\"slot online\",\"tag2_l\":\"#\",\"tag3\":\"LIONKING889\",\"tag3_l\":\"#LIONKING889\",\"tag4\":\"game slot\",\"tag4_l\":\"#\",\"tag5\":\"สล็อต\",\"tag5_l\":\"#\",\"tag6\":\"สล็อตออนไลน์\",\"tag6_l\":\"#\",\"tag7\":\"เกมสล็อต\",\"tag7_l\":\"#\",\"tag8\":\"ยิงปลา\",\"tag8_l\":\"#\",\"tag9\":\"เกมยิงปลา\",\"tag9_l\":\"#\",\"tag10\":\"live22\",\"tag10_l\":\"#\",\"tag11\":\"evoplay\",\"tag11_l\":\"#\",\"tag12\":\"simpleplay\",\"tag12_l\":\"#\",\"tag13\":\"pgslot\",\"tag13_l\":\"#\",\"tag14\":\"สล็อตเครดิตฟรี\",\"tag14_l\":\"#\",\"tag15\":\"sa gaming\",\"tag15_l\":\"#\",\"tag16\":\"sagame\",\"tag16_l\":\"#\",\"tag17\":\"sexygaming\",\"tag17_l\":\"#\",\"tag18\":\"สูตรสล็อต\",\"tag18_l\":\"#\",\"tag19\":\"พนันออนไลน์\",\"tag19_l\":\"#\",\"tag20\":\"คาสิโนสด\",\"tag20_l\":\"#\",\"marquee_text_footer\":\"ยินดีต้อนรับเข้าสู่ LIONKING889 การันตีความมั่นคง เว็บสล็อตออนไลน์อันดับ 1 ฝาก-ถอน ด้วยระบบออโต้ ทำรายการสะดวกได้ด้วยตัวเอง แอดมินบริการตลอด 24 ชั่วโมง\",\"lineadd_deposit\":\"@-\",\"lineadd_fix\":\"@-\",\"line_contact\":\"https:\\/\\/sv1.picz.in.th\\/images\\/2023\\/11\\/29\\/d0ZzDFg.png\",\"background_image\":\"https:\\/\\/sv1.picz.in.th\\/images\\/2023\\/12\\/11\\/d0D3lUg.jpeg\",\"Logopc\":\"https:\\/\\/sv1.picz.in.th\\/images\\/2024\\/01\\/11\\/d7NF5PV.png\",\"LogoFavicon\":\"https:\\/\\/sv1.picz.in.th\\/images\\/2024\\/01\\/11\\/d7NF5PV.png\",\"LogoFaviconICO\":\"https:\\/\\/sv1.picz.in.th\\/images\\/2024\\/01\\/11\\/d7NF5PV.png\",\"Schema1\":\"https:\\/\\/sv1.picz.in.th\\/images\\/2024\\/01\\/11\\/d7NF5PV.png\",\"Schema2\":\"https:\\/\\/sv1.picz.in.th\\/images\\/2024\\/01\\/11\\/d7NF5PV.png\",\"Schema3\":\"https:\\/\\/sv1.picz.in.th\\/images\\/2024\\/01\\/11\\/d7NF5PV.png\"}'),
('card', '{\"key_valid\":\"ok\",\"card\":[\"5เครดิต\",\"10 เครดิต\",\"20 เครดิต\",\"25 เครดิต\",\"30 เครดิต\",\"ไม่ได้รับรางวัล\"],\"card_credit\":[\"5\",\"10\",\"20\",\"25\",\"30\",\"0\"],\"card_percent\":[\"90\",\"5\",\"1\",\"1\",\"1\",\"45\"]}'),
('card_setting', '{\"key_valid\":\"ok\",\"enable\":\"1\",\"credit_collect\":\"200\"}'),
('codefree_user', '{\"key_valid\":\"ok\",\"qty\":\"100\",\"credit\":\"50\",\"turn\":\"5\",\"max_withdraw\":\"500\",\"status\":\"on\"}'),
('deposit_ingame', '{\"key_valid\":\"ok\",\"enable\":\"0\"}'),
('deposit_setting', '{\"key_valid\":\"ok\",\"MinDeposit\":\"1\",\"enable\":\"1\"}'),
('game_setting', '{\"key_valid\":\"ok\",\"enable\":\"1\"}'),
('getname_auto', '{\"key_valid\":\"ok\",\"enable\":\"0\"}'),
('line_flex_enable', '{\"key_valid\":\"ok\",\"enable\":\"0\"}'),
('line_token', '{\"key_valid\":\"ok\",\"Register\":\"\",\"Deposit\":\"\",\"Withdraw\":\"\",\"Login\":\"\",\"Cron_day\":\"\",\"Cron_month\":\"\",\"SysError\":\"\"}'),
('menu_setting', '{\"key_valid\":\"ok\",\"affliliate\":\"1\",\"line\":\"1\",\"reward\":\"1\",\"info\":\"1\",\"bonus\":\"1\",\"history\":\"1\",\"wheel\":\"1\",\"card\":\"1\",\"refund\":\"1\"}'),
('notice_backend', '{\"key_valid\":\"ok\",\"enable\":\"1\"}'),
('otp_register', '{\"key_valid\":\"ok\",\"enable\":\"0\",\"otp_key\":\"1711719534464826\",\"otp_secret\":\"58d36be343102ee9631849c28acd5c9a\"}'),
('refund', '{\"key_valid\":\"ok\",\"Percent\":\"1\",\"enable\":\"0\"}'),
('user_rank_setting', '{\"key_valid\":\"ok\",\"rank_name\":[\"ลูกค้าเล่นน้อย\",\"ลูกค้าปกติ\",\"ลูกค้าวีไอพี\",\"ลูกค้าวีไอพี\",\"ลูกค้าวีไอพี\",\"ลูกค้าวีไอพี\",\"ลูกค้าวีไอพี\",\"ลูกค้าวีไอพี\"],\"rank_collect\":[\"3001\",\"10001\",\"999999999\",\"999999999\",\"999999999\",\"999999999\",\"999999999\",\"999999999\"]}'),
('website_online_setting', '{\"key_valid\":\"ok\",\"enable\":\"1\"}'),
('wheel', '{\"key_valid\":\"ok\",\"wheel_name_1\":\"5 เครดิต\",\"wheel_credit_1\":\"5\",\"wheel_percent_1\":\"50\",\"wheel_name_2\":\"10 เครดิต\",\"wheel_credit_2\":\"10\",\"wheel_percent_2\":\"5\",\"wheel_name_3\":\"50 เครดิต\",\"wheel_credit_3\":\"50\",\"wheel_percent_3\":\"3\",\"wheel_name_4\":\"60\",\"wheel_credit_4\":\"60\",\"wheel_percent_4\":\"1\",\"wheel_name_5\":\"jackpot 2000\",\"wheel_credit_5\":\"2000\",\"wheel_percent_5\":\"0\",\"wheel_name_0\":\"ไม่ได้รับรางวัล\",\"wheel_credit_0\":\"0\",\"wheel_percent_0\":\"45\"}'),
('wheel_setting', '{\"key_valid\":\"ok\",\"enable\":\"1\",\"credit_collect\":\"200\"}'),
('withdraw_setting', '{\"key_valid\":\"ok\",\"MinWithdraw\":\"1\",\"withdraw_type\":\"turnover\",\"MinAutoWithdraw\":\"0\",\"enable_auto\":\"1\",\"enable\":\"1\"}'),
('style_type', '{\"key_valid\":\"ok\",\"type\":\"1\"}'),
('theme', '{\"key_valid\":\"ok\",\"theme\":\"wg-black-gold\"}'),
('betflix_game_setting', '{\"key_valid\":\"ok\",\"dg\":\"1\",\"we\":\"1\",\"eg\":\"1\",\"xg\":\"1\",\"swg\":\"1\",\"cq9\":\"1\",\"r88\":\"1\",\"jl\":\"1\",\"km\":\"1\",\"sexy\":\"1\",\"bg\":\"1\",\"amb\":\"1\",\"wm\":\"1\",\"ag\":\"1\",\"sa\":\"1\",\"mg\":\"1\",\"gd88\":\"1\",\"gamatron\":\"1\",\"gdg\":\"1\",\"pp\":\"1\",\"aws\":\"1\",\"kg\":\"1\",\"fc\":\"1\",\"funky\":\"1\",\"ps\":\"1\",\"sp\":\"1\",\"ep\":\"1\",\"netent\":\"1\",\"ttg\":\"1\",\"pg\":\"1\",\"joker\":\"1\",\"waz\":\"1\",\"1x2\":\"1\",\"hak\":\"1\",\"fng\":\"1\",\"nge\":\"1\",\"pug\":\"1\",\"ga\":\"1\",\"png\":\"1\",\"nlc\":\"1\",\"tk\":\"1\",\"ygg\":\"1\",\"qs\":\"1\",\"hab\":\"1\",\"rlx\":\"1\",\"ds\":\"1\",\"red\":\"1\",\"bng\":\"1\",\"ids\":\"1\",\"kgl\":\"1\",\"bpg\":\"1\",\"mav\":\"1\",\"savewhell2\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `meta_slide_banner`
--

CREATE TABLE `meta_slide_banner` (
  `id` int(11) NOT NULL,
  `slide_img` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `notice_admin`
--

CREATE TABLE `notice_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_data` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notice_admin`
--

INSERT INTO `notice_admin` (`id`, `username`, `icon`, `title`, `text`, `meta_data`, `date`, `status`) VALUES
(1, '0951427348', 'success', '', 'สมัครสมาชิกเรียบร้อยแล้ว', '', '2024-01-18 21:39:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notice_user`
--

CREATE TABLE `notice_user` (
  `id` int(11) NOT NULL,
  `username` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_data` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

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

-- --------------------------------------------------------

--
-- Table structure for table `pin`
--

CREATE TABLE `pin` (
  `id` int(11) NOT NULL,
  `pin_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pin`
--

INSERT INTO `pin` (`id`, `pin_key`) VALUES
(1, '191919');

-- --------------------------------------------------------

--
-- Table structure for table `refund_new`
--

CREATE TABLE `refund_new` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `memberWinLose` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `refund_tmp_deposit`
--

CREATE TABLE `refund_tmp_deposit` (
  `id` int(11) NOT NULL,
  `ref_id` varchar(80) NOT NULL,
  `username` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `report_aff`
--

CREATE TABLE `report_aff` (
  `id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `username` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username_aff` varchar(255) NOT NULL,
  `mobile_no_aff` varchar(255) NOT NULL,
  `fullname_aff` varchar(255) NOT NULL,
  `winlose` decimal(10,2) NOT NULL,
  `turnover` decimal(10,2) NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `note` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `report_refund`
--

CREATE TABLE `report_refund` (
  `id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `turnover` decimal(10,2) NOT NULL,
  `winlose` decimal(10,2) NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `report_ticket_card`
--

CREATE TABLE `report_ticket_card` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` int(11) NOT NULL,
  `credit_collect` int(11) NOT NULL,
  `ticket_total` int(11) NOT NULL,
  `ticket_bef` int(11) NOT NULL,
  `ticket_aft` int(11) NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_ticket_wheel`
--

CREATE TABLE `report_ticket_wheel` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` int(11) NOT NULL,
  `credit_collect` int(11) NOT NULL,
  `ticket_total` int(11) NOT NULL,
  `ticket_bef` int(11) NOT NULL,
  `ticket_aft` int(11) NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_transaction`
--

CREATE TABLE `report_transaction` (
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin_bank` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `credit_bonus` decimal(10,2) NOT NULL,
  `credit_before` decimal(10,2) NOT NULL,
  `credit_after` decimal(10,2) NOT NULL,
  `transaction_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bank_acc_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_time` datetime DEFAULT NULL,
  `bank_desc` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `promotion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approve` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` decimal(10,2) NOT NULL,
  `date` datetime NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `reward_history`
--

CREATE TABLE `reward_history` (
  `id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `reward_description` text COLLATE utf8_unicode_ci NOT NULL,
  `reward_type` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `date` datetime NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sl_users`
--

CREATE TABLE `sl_users` (
  `id` bigint(20) NOT NULL,
  `amb_id` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `betflix_id` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_no` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lineid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `turn` decimal(10,2) NOT NULL,
  `turn_date` datetime DEFAULT NULL,
  `bet` decimal(10,2) NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `credit_free` decimal(10,2) NOT NULL,
  `credit_free_check` date DEFAULT NULL,
  `credit_aff` decimal(10,2) NOT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_acc_no` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `bank_id` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_bank_id` int(11) NOT NULL,
  `custom_admin_bank` int(11) NOT NULL,
  `accept_promotion` int(11) NOT NULL,
  `aff` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_check_aff` date NOT NULL,
  `create_at` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket_wheel` int(11) NOT NULL,
  `ticket_wheel_used` int(11) NOT NULL,
  `ticket_card` int(11) NOT NULL,
  `ticket_card_used` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `rank_note` text COLLATE utf8_unicode_ci NOT NULL,
  `knowus` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_edit` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_edit_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `game_login` int(11) DEFAULT NULL,
  `codefree` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `user_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `a` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `b` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tmn_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sl_users`
--

INSERT INTO `sl_users` (`id`, `amb_id`, `betflix_id`, `uid`, `mobile_no`, `lineid`, `password`, `fullname`, `turn`, `turn_date`, `bet`, `credit`, `credit_free`, `credit_free_check`, `credit_aff`, `bank_name`, `bank_acc_no`, `bank_id`, `admin_bank_id`, `custom_admin_bank`, `accept_promotion`, `aff`, `last_check_aff`, `create_at`, `last_login`, `note`, `ticket_wheel`, `ticket_wheel_used`, `ticket_card`, `ticket_card_used`, `rank`, `rank_note`, `knowus`, `last_edit`, `last_edit_note`, `game_login`, `codefree`, `status`, `user_status`, `a`, `b`, `tmn_id`) VALUES
(1, '', 'bdacbg99g6yte', '', '0951427348', '', 'aa123456', 'จิรชาติ พันธุ์ปัญญาเทพ', '0.00', NULL, '0.00', '0.00', '0.00', NULL, '0.00', 'กรุงศรีอยุธยา', '6331131591', '4', 0, 0, 0, NULL, '2024-01-18', '2024-01-18 21:39:11', '2024-01-18 21:39:11', '', 0, 0, 0, 0, 1, 'ลูกค้าเล่นน้อย', '', '', '', NULL, 'BWWYOR-0951427348', 1, 'เป็นสมาชิกแล้ว', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sms_log`
--

CREATE TABLE `sms_log` (
  `id` int(11) NOT NULL,
  `from_` varchar(255) DEFAULT NULL,
  `sms` text NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `style_data`
--

CREATE TABLE `style_data` (
  `id` int(11) NOT NULL,
  `ele_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ele_value` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `style_data`
--

INSERT INTO `style_data` (`id`, `ele_name`, `ele_value`) VALUES
(1, 'top_nav', 'linear-gradient(137.32deg, #00ec76 0%, #5f82fc 100%)'),
(2, 'left_nav', 'linear-gradient(137.32deg, #00ff80 0%, #5f69f1 99%)'),
(3, 'buttom_nav', 'linear-gradient(180deg, #00ff80 0%, #8178eb 100%)'),
(4, 'buttom_nav_hover', 'linear-gradient(180deg, #00ff80 0%, #6262e8 99%)'),
(5, 'scrollbar_track', 'linear-gradient(180deg, #00ff80 0%, #6472ec 99%)'),
(6, 'scrollbar_thumb', 'linear-gradient(180deg, #00ff80 0%, #6973e9 99%)'),
(7, 'feed_slide', 'linear-gradient(180deg, #00ff80 0%, #7670eb 99%)'),
(8, 'top_pro', 'linear-gradient(180deg, #00ff80 0%, #7182fb 100%)'),
(9, 'top_pro_hover', 'linear-gradient(180deg, #00ff80 0%, #797cf2 99%)'),
(10, 'scrollbar_thumb', 'linear-gradient(180deg, #00ff80 0%, #6973e9 99%)');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_error`
--

CREATE TABLE `transfer_error` (
  `id` int(11) NOT NULL,
  `username` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credit` decimal(10,2) NOT NULL,
  `admin_bank` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `user_list` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_ref`
--

CREATE TABLE `transfer_ref` (
  `id` int(11) NOT NULL,
  `tr_bank` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bank_app` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `acc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credit` decimal(10,2) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tw_ref`
--

CREATE TABLE `tw_ref` (
  `id` int(11) NOT NULL,
  `report_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_bank`
--
ALTER TABLE `admin_bank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `admin_processor`
--
ALTER TABLE `admin_processor`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `admin_truewallet`
--
ALTER TABLE `admin_truewallet`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `agent_account`
--
ALTER TABLE `agent_account`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `am_group`
--
ALTER TABLE `am_group`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `am_login`
--
ALTER TABLE `am_login`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `am_users`
--
ALTER TABLE `am_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `am_username` (`am_username`) USING BTREE;

--
-- Indexes for table `bank_info`
--
ALTER TABLE `bank_info`
  ADD PRIMARY KEY (`bank_id`) USING BTREE;

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `url_link` (`url_link`) USING BTREE;

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Indexes for table `code_free`
--
ALTER TABLE `code_free`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `code_free_used`
--
ALTER TABLE `code_free_used`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `generate_decimal`
--
ALTER TABLE `generate_decimal`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `last_login_ip`
--
ALTER TABLE `last_login_ip`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `main_wallet_withdraw`
--
ALTER TABLE `main_wallet_withdraw`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `meta_promotion`
--
ALTER TABLE `meta_promotion`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `meta_promotion_page`
--
ALTER TABLE `meta_promotion_page`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `meta_promotion_popup`
--
ALTER TABLE `meta_promotion_popup`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `meta_promotion_setting`
--
ALTER TABLE `meta_promotion_setting`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `meta_slide_banner`
--
ALTER TABLE `meta_slide_banner`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `notice_admin`
--
ALTER TABLE `notice_admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `notice_user`
--
ALTER TABLE `notice_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `page_admin`
--
ALTER TABLE `page_admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pin`
--
ALTER TABLE `pin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `refund_new`
--
ALTER TABLE `refund_new`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `refund_tmp_deposit`
--
ALTER TABLE `refund_tmp_deposit`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `report_aff`
--
ALTER TABLE `report_aff`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `report_refund`
--
ALTER TABLE `report_refund`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `report_ticket_card`
--
ALTER TABLE `report_ticket_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_ticket_wheel`
--
ALTER TABLE `report_ticket_wheel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_transaction`
--
ALTER TABLE `report_transaction`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `reward_history`
--
ALTER TABLE `reward_history`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sl_users`
--
ALTER TABLE `sl_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `mobile_no` (`mobile_no`) USING BTREE,
  ADD UNIQUE KEY `bank_acc_no` (`bank_acc_no`) USING BTREE;

--
-- Indexes for table `sms_log`
--
ALTER TABLE `sms_log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `style_data`
--
ALTER TABLE `style_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_error`
--
ALTER TABLE `transfer_error`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `transfer_ref`
--
ALTER TABLE `transfer_ref`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tw_ref`
--
ALTER TABLE `tw_ref`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_bank`
--
ALTER TABLE `admin_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `admin_processor`
--
ALTER TABLE `admin_processor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_truewallet`
--
ALTER TABLE `admin_truewallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `agent_account`
--
ALTER TABLE `agent_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `am_group`
--
ALTER TABLE `am_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `am_login`
--
ALTER TABLE `am_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `am_users`
--
ALTER TABLE `am_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `code_free`
--
ALTER TABLE `code_free`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `code_free_used`
--
ALTER TABLE `code_free_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generate_decimal`
--
ALTER TABLE `generate_decimal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `last_login_ip`
--
ALTER TABLE `last_login_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `meta_promotion`
--
ALTER TABLE `meta_promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meta_promotion_page`
--
ALTER TABLE `meta_promotion_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meta_promotion_popup`
--
ALTER TABLE `meta_promotion_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meta_promotion_setting`
--
ALTER TABLE `meta_promotion_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meta_slide_banner`
--
ALTER TABLE `meta_slide_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_admin`
--
ALTER TABLE `notice_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notice_user`
--
ALTER TABLE `notice_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_admin`
--
ALTER TABLE `page_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pin`
--
ALTER TABLE `pin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `refund_new`
--
ALTER TABLE `refund_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_tmp_deposit`
--
ALTER TABLE `refund_tmp_deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_aff`
--
ALTER TABLE `report_aff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_refund`
--
ALTER TABLE `report_refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_ticket_card`
--
ALTER TABLE `report_ticket_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_ticket_wheel`
--
ALTER TABLE `report_ticket_wheel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sl_users`
--
ALTER TABLE `sl_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_log`
--
ALTER TABLE `sms_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `style_data`
--
ALTER TABLE `style_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transfer_error`
--
ALTER TABLE `transfer_error`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_ref`
--
ALTER TABLE `transfer_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tw_ref`
--
ALTER TABLE `tw_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

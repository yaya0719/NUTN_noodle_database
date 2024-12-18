-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-12-18 09:39:42
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `noodledata`
--

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `name` varchar(50) NOT NULL,
  `phonenumber` int(11) DEFAULT NULL,
  `customerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `customer`
--

INSERT INTO `customer` (`name`, `phonenumber`, `customerid`) VALUES
('James', 2147483647, 1),
('Emily', 2147483647, 2),
('Michael', 2025550759, 3),
('Sarah', 2125550934, 4),
('William', 2147483647, 5),
('genshin', 114514, 6),
('mortis', 4444444, 7),
('steve', 1234445, 8),
('alex', 1145444, 9),
('sss', 4445978, 14),
('胡桃', 7777777, 15),
('花火', 4555777, 16),
('456', 7777, 18),
('hello', 9999, 19);

-- --------------------------------------------------------

--
-- 資料表結構 `employee`
--

CREATE TABLE `employee` (
  `name` varchar(15) NOT NULL,
  `Bdate` date DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `employee`
--

INSERT INTO `employee` (`name`, `Bdate`, `Sex`, `Salary`, `sid`) VALUES
('lan', '0000-00-00', 'M', 28000.00, 11122233),
('Emma', '0000-00-00', 'F', 31000.00, 12312312),
('John', '0000-00-00', 'M', 30000.00, 12345678),
('Molly', '0000-00-00', 'F', 32000.00, 22233344),
('Aria', '0000-00-00', 'F', 32500.00, 32112345),
('Jason', '0000-00-00', 'M', 33000.00, 34556778),
('Lydia', '0000-00-00', 'F', 29000.00, 44556677);

-- --------------------------------------------------------

--
-- 資料表結構 `orderinform`
--

CREATE TABLE `orderinform` (
  `ordeinfoid` int(11) NOT NULL,
  `ordish` text NOT NULL,
  `phonenumber` int(11) DEFAULT NULL,
  `orderprice` int(11) DEFAULT NULL,
  `oid` int(11) NOT NULL,
  `spicy` text DEFAULT NULL,
  `coriander` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orderinform`
--

INSERT INTO `orderinform` (`ordeinfoid`, `ordish`, `phonenumber`, `orderprice`, `oid`, `spicy`, `coriander`, `quantity`, `size`) VALUES
(1, '7', 2147483647, 35, 1, NULL, NULL, NULL, NULL),
(2, '3', 2147483647, 70, 2, NULL, NULL, NULL, NULL),
(3, '4', 2025550789, 35, 3, NULL, NULL, NULL, NULL),
(4, '15', 2125550934, 80, 4, NULL, NULL, NULL, NULL),
(5, '6', 2147483647, 70, 5, NULL, NULL, NULL, NULL),
(6, '10', 2147483647, 35, 1, NULL, NULL, NULL, NULL),
(7, '21', 2147483647, 10, 1, NULL, NULL, NULL, NULL),
(8, '29', 2147483647, 10, 1, NULL, NULL, NULL, NULL),
(9, '1', 1234567890, 35, 15, NULL, NULL, NULL, NULL),
(10, '1', 1234567890, 45, 15, NULL, NULL, NULL, NULL),
(11, '0', 1234567890, 35, 16, NULL, NULL, NULL, NULL),
(12, '0', 1234567890, 10, 16, NULL, NULL, NULL, NULL),
(13, '0', 1234567890, 35, 17, NULL, NULL, NULL, NULL),
(14, '0', 1234567890, 30, 17, NULL, NULL, NULL, NULL),
(15, '0', 1234567890, 35, 18, NULL, NULL, NULL, NULL),
(16, '0', 1234567890, 15, 18, NULL, NULL, NULL, NULL),
(17, '10', 1234567890, 35, 19, NULL, NULL, NULL, NULL),
(18, '0', 1234567890, 10, 19, NULL, NULL, NULL, NULL),
(19, '10', 1234567890, 35, 20, NULL, NULL, NULL, NULL),
(20, '0', 1234567890, 30, 20, NULL, NULL, NULL, NULL),
(21, '0', 1234567890, 35, 21, NULL, NULL, NULL, NULL),
(22, '31', 1234567890, 15, 21, NULL, NULL, NULL, NULL),
(23, '10', 1234567890, 35, 22, NULL, NULL, NULL, NULL),
(24, '31', 1234567890, 15, 22, NULL, NULL, NULL, NULL),
(25, '4', 1234567890, 70, 23, '', '', 2, NULL),
(26, '16', 1234567890, 130, 26, '是', '是', 2, NULL),
(27, '13', 1234567890, 45, 27, '否', '否', 1, NULL),
(28, '4', 1234567890, 70, 28, '否', '是', 2, NULL),
(29, '17', 1234567890, 225, 28, '是', '否', 3, NULL),
(30, '31', 1234567890, 30, 32, '否', '否', 2, NULL),
(31, '板條', 1234567890, 70, 38, '否', '是', 2, NULL),
(32, '滷蛋', 1234567890, 30, 38, '否', '否', 2, NULL),
(33, '板條', 1234567890, 70, 39, '否', '是', 2, '小'),
(34, '滷蛋', 1234567890, 45, 39, '是', '是', 3, ''),
(35, '板條', 1234567890, 90, 40, '否', '是', 2, '中'),
(36, '切仔麵', 1234567890, 70, 41, '否', '是', 2, '小'),
(37, '板條', 1234567890, 70, 42, '否', '否', 2, '小'),
(38, '板條', 1234567890, 70, 43, '否', '是', 2, '小'),
(39, '板條', 1234567890, 70, 44, '否', '否', 2, '小'),
(40, '米粉', 1234567890, 45, 45, '否', '是', 1, '中'),
(41, '米粉', 1234567890, 35, 46, '否', '否', 1, '小'),
(42, '板條', 1234567890, 35, 47, '否', '否', 1, '小'),
(43, '凸皮麵', 1234567890, 45, 48, '否', '否', 1, '小'),
(44, '滷蛋', 1234567890, 45, 49, '否', '否', 3, ''),
(45, '米粉', 1234567890, 70, 50, '否', '是', 1, '大'),
(46, '肉類', 1234567890, 30, 51, '否', '否', 1, '小'),
(47, '肉湯', 1234567890, 20, 51, '否', '是', 2, ''),
(48, '滷蛋', 1234567890, 15, 51, '是', '否', 1, ''),
(49, '粉腸湯', 1234567890, 30, 52, '否', '否', 1, ''),
(50, '米苔目', 1234567890, 45, 52, '否', '是', 1, '中'),
(51, '燙青菜', 1234567890, 120, 52, '是', '否', 4, ''),
(52, '凸皮麵', 114514, 45, 6, '否', '否', 1, '小'),
(53, '粄條', 114514, 35, 6, '否', '否', 1, '小'),
(54, '粄條', 4444444, 35, 7, '否', '否', 1, '小'),
(55, '油豆腐', 4444444, 100, 7, '否', '是', 10, ''),
(56, '米苔目', 1234445, 35, 55, '否', '否', 1, '小'),
(57, '滷豆腐', 1234445, 0, 55, '否', '是', 20, ''),
(58, '切仔麵', 1234445, 35, 55, '否', '是', 1, '小'),
(59, '油豆腐', 1234445, 100, 55, '否', '否', 10, ''),
(60, '米苔目', 1145444, 35, 56, '否', '否', 1, '小'),
(61, '油豆腐', 1145444, 10, 56, '否', '否', 1, ''),
(66, '凸皮麵', 4445978, 45, 61, '否', '否', 1, '小'),
(67, '粉腸湯', 7777777, 30, 62, '否', '否', 1, ''),
(68, '凸皮麵', 4555777, 45, 63, '否', '否', 1, '小'),
(69, '蚵仔麵', 7777, 195, 65, '是', '是', 3, '小'),
(70, '粉腸湯', 7777, 60, 65, '否', '是', 2, ''),
(71, '滷豆腐', 7777, 100, 65, '是', '否', 10, ''),
(72, '粄條', 7777, 135, 65, '是', '是', 3, '中'),
(73, '貢丸湯', 7777, 40, 65, '是', '否', 2, ''),
(74, '滷蛋', 7777, 150, 65, '是', '是', 10, ''),
(75, '米粉', 9999, 105, 66, '是', '是', 3, '小'),
(76, '貢丸湯', 9999, 40, 66, '是', '否', 2, ''),
(77, '滷蛋', 9999, 150, 66, '是', '是', 10, '');

-- --------------------------------------------------------

--
-- 資料表結構 `orderr`
--

CREATE TABLE `orderr` (
  `customerid` int(11) DEFAULT NULL,
  `ordtime` datetime DEFAULT NULL,
  `totalprice` int(11) DEFAULT NULL,
  `orderid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orderr`
--

INSERT INTO `orderr` (`customerid`, `ordtime`, `totalprice`, `orderid`) VALUES
(1, '2024-12-01 12:15:00', 90, 1),
(2, '2024-12-01 12:17:00', 70, 2),
(3, '2024-12-01 12:20:00', 35, 3),
(4, '2024-12-01 12:25:00', 80, 4),
(5, '2024-12-01 12:31:00', 70, 5),
(5, '2024-11-12 07:55:32', 0, 6),
(5, '2024-11-12 08:03:23', 0, 7),
(5, '2024-11-12 08:33:00', 70, 8),
(5, '2024-11-12 10:10:43', 45, 9),
(5, '2024-11-12 10:13:03', 35, 10),
(5, '2024-11-12 10:14:04', 0, 11),
(5, '2024-11-12 10:14:10', 35, 12),
(5, '2024-11-12 10:22:34', 80, 13),
(5, '2024-11-12 10:24:27', 80, 14),
(5, '2024-11-12 10:28:44', 80, 15),
(5, '2024-11-12 10:34:21', 45, 16),
(5, '2024-11-12 10:36:01', 65, 17),
(5, '2024-11-12 10:37:15', 50, 18),
(5, '2024-11-12 10:40:06', 45, 19),
(5, '2024-11-12 10:42:56', 65, 20),
(5, '2024-11-12 10:44:48', 50, 21),
(5, '2024-11-12 10:46:19', 50, 22),
(5, '0000-00-00 00:00:00', 70, 23),
(5, '0000-00-00 00:00:00', 70, 24),
(5, '0000-00-00 00:00:00', 105, 25),
(5, '0000-00-00 00:00:00', 130, 26),
(5, '0000-00-00 00:00:00', 75, 27),
(5, '0000-00-00 00:00:00', 295, 28),
(5, '0000-00-00 00:00:00', 55, 29),
(5, '0000-00-00 00:00:00', 0, 30),
(5, '0000-00-00 00:00:00', 85, 31),
(5, '0000-00-00 00:00:00', 100, 32),
(5, '0000-00-00 00:00:00', 120, 33),
(5, '0000-00-00 00:00:00', 120, 34),
(5, '0000-00-00 00:00:00', 100, 35),
(5, '0000-00-00 00:00:00', 220, 36),
(5, '0000-00-00 00:00:00', 115, 37),
(5, '0000-00-00 00:00:00', 100, 38),
(5, '0000-00-00 00:00:00', 115, 39),
(5, '0000-00-00 00:00:00', 90, 40),
(5, '0000-00-00 00:00:00', 70, 41),
(5, '0000-00-00 00:00:00', 70, 42),
(5, '0000-00-00 00:00:00', 70, 43),
(5, '0000-00-00 00:00:00', 70, 44),
(5, '0000-00-00 00:00:00', 45, 45),
(5, '0000-00-00 00:00:00', 35, 46),
(5, '2024-12-17 07:36:14', 35, 47),
(5, '2024-12-17 07:36:52', 45, 48),
(5, '2024-12-17 07:37:29', 45, 49),
(5, '2024-12-17 08:56:27', 70, 50),
(5, '2024-12-17 09:04:15', 65, 51),
(5, '2024-12-17 11:42:48', 195, 52),
(5, '2024-12-18 12:21:30', 80, 53),
(5, '2024-12-18 12:24:04', 135, 54),
(5, '2024-12-18 12:27:06', 170, 55),
(9, '2024-12-18 12:38:18', 45, 56),
(14, '2024-12-18 12:53:33', 45, 61),
(15, '2024-12-18 12:55:16', 30, 62),
(16, '2024-12-18 12:59:05', 45, 63),
(18, '2024-12-18 01:08:28', 680, 65),
(19, '2024-12-18 01:09:16', 295, 66);

-- --------------------------------------------------------

--
-- 資料表結構 `菜單`
--

CREATE TABLE `菜單` (
  `name` varchar(50) NOT NULL,
  `Size` varchar(15) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `mid` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `菜單`
--

INSERT INTO `菜單` (`name`, `Size`, `price`, `mid`, `type`) VALUES
('切仔麵', '小', 35, 1, 'maindish'),
('切仔麵', '中', 45, 2, 'maindish'),
('切仔麵', '大', 70, 3, 'maindish'),
('米粉', '小', 35, 4, 'maindish'),
('米粉', '中', 45, 5, 'maindish'),
('米粉', '大', 70, 6, 'maindish'),
('粄條', '小', 35, 7, 'maindish'),
('粄條', '中', 45, 8, 'maindish'),
('粄條', '大', 70, 9, 'maindish'),
('米苔目', '小', 35, 10, 'maindish'),
('米苔目', '中', 45, 11, 'maindish'),
('米苔目', '大', 70, 12, 'maindish'),
('凸皮麵', '小', 45, 13, 'maindish'),
('凸皮麵', '中', 55, 14, 'maindish'),
('凸皮麵', '大', 80, 15, 'maindish'),
('蚵仔麵', '小', 65, 16, 'maindish'),
('蚵仔麵', '中', 75, 17, 'maindish'),
('蚵仔麵', '大', 100, 18, 'maindish'),
('肉燥飯', '小', 35, 19, 'maindish'),
('肉燥飯', '大', 45, 20, 'maindish'),
('豆腐湯', '不分', 10, 21, 'soups'),
('凸皮湯', '不分', 10, 22, 'soups'),
('貢丸湯', '不分', 20, 23, 'soups'),
('粉腸湯', '不分', 30, 24, 'soups'),
('肉湯', '不分', 10, 25, 'soups'),
('蚵仔湯', '不分', 50, 26, 'soups'),
('肉類', '小', 30, 27, 'seidDishes'),
('肉類', '大', 50, 28, 'seidDishes'),
('滷豆腐', '不分', 10, 29, 'seidDishes'),
('油豆腐', '不分', 5, 30, 'seidDishes'),
('滷蛋', '不分', 15, 31, 'seidDishes'),
('燙青菜', '不分', 30, 32, 'seidDishes');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- 資料表索引 `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `orderinform`
--
ALTER TABLE `orderinform`
  ADD PRIMARY KEY (`ordeinfoid`),
  ADD KEY `oid` (`oid`);

--
-- 資料表索引 `orderr`
--
ALTER TABLE `orderr`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `customerid` (`customerid`);

--
-- 資料表索引 `菜單`
--
ALTER TABLE `菜單`
  ADD PRIMARY KEY (`mid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orderinform`
--
ALTER TABLE `orderinform`
  MODIFY `ordeinfoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orderr`
--
ALTER TABLE `orderr`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `orderinform`
--
ALTER TABLE `orderinform`
  ADD CONSTRAINT `orderinform_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `orderr` (`orderid`);

--
-- 資料表的限制式 `orderr`
--
ALTER TABLE `orderr`
  ADD CONSTRAINT `orderr_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

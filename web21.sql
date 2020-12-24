-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2020 at 04:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web21`
--

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE `authentication` (
  `authenID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `authenRole` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authentication`
--

INSERT INTO `authentication` (`authenID`, `authenRole`) VALUES
('0', 'Admin'),
('1', 'Sale'),
('2', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `billID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `billPurchaser` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `billDate` datetime NOT NULL,
  `billDelivery` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `billTotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brandID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `brandName` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brandID`, `brandName`) VALUES
('001', 'Razer'),
('002', 'Asus'),
('003', 'Logitech'),
('004', 'Cosair'),
('005', 'Steelseries'),
('006', 'Nike'),
('007', 'Adidas'),
('008', 'Rick Owens'),
('009', 'Max n Co'),
('010', 'Annas');

-- --------------------------------------------------------

--
-- Table structure for table `cetorgry`
--

CREATE TABLE `cetorgry` (
  `cetorgryID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cetorgryName` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cetorgry`
--

INSERT INTO `cetorgry` (`cetorgryID`, `cetorgryName`) VALUES
('001', 'Giày nam'),
('002', 'Giày nữ'),
('003', 'Sneaker');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `userID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`userID`, `firstName`, `lastName`, `email`) VALUES
('001', 'Lưu', 'Bảo Minh', 'minhminion2015@gmail.com'),
('0010', 'Ngoc', 'Nguyen', 'ngoc@gmail.com'),
('0011', 'Nguyễn Văn', 'Tèo', 'nvt@gmail.com'),
('0012', 'Nguyễn Quốc', 'Thuật', 'nva123@gmail.com'),
('0013', 'Nguyễn Quốc ', 'Đại', 'nqd123@gmail.com'),
('0014', 'Nguyen', 'Ngoc', 'admin1@gmail.com'),
('0015', 'Đỗ Anh', 'Quốc', 'daq123@gmail.com'),
('0016', 'Nguyễn Quốc', 'anh', 'nva1123@gmail.com'),
('002', 'Nguyễn Văn', 'Thỏ', 'thanos1234@gmail.com'),
('003', 'Nguyễn Văn ', 'Tho', 'minhdatsg2000@gmail.com'),
('004', 'Em ', 'Tôi', 'emtoi@yahoo.com.vn'),
('005', 'Nguyễn Văn ', 'ABC', 'sale123@gmail.com'),
('006', 'Nguyễn', 'Thị Mộng', 'mong@gmail.com'),
('007', 'Em ', 'Yêu', 'emyeudau@gmail.com'),
('008', 'Mai', 'Tram', 'maitram@gmail.com'),
('009', 'Trương', 'Tam Phong', '3wind@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productDescription` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productAmount` int(11) NOT NULL,
  `productCetorgry` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `productBrand` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `IMG` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productName`, `productDescription`, `productPrice`, `productAmount`, `productCetorgry`, `productBrand`, `IMG`, `state`) VALUES
('001', 'Air Jordan 1 ', 'Annas N001 ', 890000, 50, '003', '006', '001.png', 1),
('002', 'Max n Co 002', 'ANB%acas', 4490000, 50, '002', '009', '002.jpg', 1),
('003', 'Max n Co 003', 'ANB%acas', 4390000, 50, '002', '009', '003.jpg', 1),
('004', 'Max n Co 004', 'ANB%acas', 4390000, 50, '002', '009', '004.jpg', 1),
('005', 'Max n Co N005', 'ANB%acas', 3800000, 50, '002', '009', '005.jpg', 1),
('006', 'Max n Co N006', 'ANB%acas', 2590000, 50, '002', '009', '006.jpg', 1),
('007', 'Max n Co N007', 'ANB%acas', 4050000, 50, '002', '009', '007.jpg', 1),
('008', 'Max n Co N009', '', 3150000, 50, '002', '009', '008.jpg', 1),
('009', 'Rick Ownes', '', 5189997, 50, '003', '008', '009.png', 1),
('010', 'Annas N011', '', 1990000, 50, '002', '010', '010.jpg', 1),
('011', 'Annas N012', '', 3000000, 50, '002', '010', '011.jpg', 1),
('012', 'Max n Co N012', '', 2500000, 50, '002', '009', '012.jpg', 1),
('013', 'Annas N013', '', 3390000, 50, '002', '010', '013.jpg', 1),
('014', 'Max n Co N014', '', 2000000, 50, '002', '009', '014.jpg', 1),
('015', 'Max n Co N015', '', 2090000, 50, '002', '009', '015.jpg', 1),
('016', 'Annas N016', '', 1950000, 50, '002', '010', '016.jpg', 1),
('017', 'Max n Co 017', '', 4490000, 50, '002', '009', '017.jpg', 1),
('018', 'Jordan 11', '', 6890000, 50, '003', '006', '018.png', 1),
('019', 'Annas 042', '', 3890000, 50, '001', '010', '019.jpg', 1),
('020', 'Jordan 3s', '', 8390000, 50, '003', '006', '020.png', 1),
('021', 'Annas 021', '', 5500000, 50, '001', '010', '021.jpg', 1),
('022', 'Annas 022', '', 4990000, 50, '001', '010', '022.jpg', 1),
('023', 'Annas N023', '', 3390000, 50, '002', '010', '023.jpg', 1),
('024', 'Nike AF1', '', 2390000, 50, '003', '006', '024.png', 1),
('025', 'Annas N052', '', 1790000, 50, '002', '010', '025.jpg', 1),
('026', 'Annas N026', '', 1990000, 50, '002', '010', '026.jpg', 1),
('027', 'Nike Air Force 1 ', '', 3880000, 50, '003', '006', '027.png', 1),
('028', 'Jordan 4s Cactus Jack', '', 8590000, 50, '003', '006', '028.png', 1),
('029', 'Adidas Yeezy', '', 11990000, 50, '003', '007', '029.png', 1),
('030', 'Rick Owens 030', '', 8950000, 50, '003', '008', '030.png', 1),
('031', 'Annas N031', '', 1450000, 50, '001', '010', '031.jpg', 1),
('032', 'Air Jordan 1s', '', 4390000, 50, '003', '006', '032.png', 1),
('033', 'Annas SN019', '', 2390000, 50, '001', '010', '033.jpg', 1),
('034', 'Rick Owens High', '', 13790000, 50, '003', '008', '034.png', 1),
('035', 'Jordan Son of Mars', '', 11000000, 50, '003', '006', '035.png', 1),
('036', 'Special ', '', 22000000, 50, '003', '008', '036.png', 1),
('037', 'Yeezy', '', 12350000, 50, '003', '007', '037.png', 1),
('038', 'Jordan 5s', '', 5589997, 50, '003', '006', '038.png', 1),
('039', 'Nike LeBron 11 EXT SUEDE', '', 4790000, 50, '003', '006', '039.png', 1),
('040', 'Annas N040', '', 1680000, 50, '001', '010', '040.jpg', 1),
('041', 'Annas N041', '', 2990000, 50, '001', '010', '041.jpg', 1),
('042', 'Annas N042', '', 1590000, 50, '001', '010', '042.jpg', 1),
('043', 'Max n Co 043', '', 3150000, 50, '002', '009', '043.jpg', 1),
('044', 'Annas 044', '', 6000000, 50, '001', '010', '044.jpg', 1),
('045', 'Annas 045', '', 2500000, 50, '001', '010', '045.jpg', 1),
('046', 'Annas Sn046', '', 2690000, 50, '001', '010', '046.jpg', 1),
('047', 'Annas Sn047', '', 1990000, 50, '001', '010', '047.jpg', 1),
('048', 'Annas Sn048', '', 3290000, 50, '001', '010', '048.jpg', 1),
('049', 'Annas SN049', '', 2789999, 50, '001', '010', '049.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `receiptID` int(11) NOT NULL,
  `userName` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `receiptTotal` int(11) NOT NULL,
  `receiptDate` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`receiptID`, `userName`, `firstName`, `lastName`, `country`, `address`, `phone`, `email`, `description`, `receiptTotal`, `receiptDate`, `status`) VALUES
(1, 'minhminion', 'Lưu', 'Bảo Minh', 'TP.Hồ Chí Minh', 'dasdas', '0934837765', 'minhminion2015@gmail.com', 'asdsa', 13455500, '2019-05-11 04:27:44', 1),
(2, 'minhminion', 'Lưu', 'Bảo Minh', 'TP.Hồ Chí Minh', 'dwad', '0934837765', 'minhminion2015@gmail.com', 'adsdsa', 13455500, '2019-04-11 04:29:07', 1),
(3, 'minhminion', 'Lưu', 'Bảo Minh', 'TP.Hồ Chí Minh', 'dasdas', '0934837765', 'minhminion2015@gmail.com', 'dwad', 7548000, '2019-05-11 06:27:58', 1),
(4, 'minhminion', 'Lưu', 'Bảo Minh', 'TP.Hồ Chí Minh', 'dasda', '00000000000', 'minhminion2015@gmail.com', '', 13455500, '2018-06-12 04:04:49', 1),
(5, 'minhminion', 'Lưu', 'Bảo Minh', 'TP.Hồ Chí Minh', '282 Nguyễn Tri Phương', '0934837765', 'minhminion2015@gmail.com', 'Em đặt cho vui ', 14637000, '2019-12-14 05:53:49', 1),
(6, 'emtoi', 'Em ', 'Tôi', 'TP.Hồ Chí Minh', 'dasdas', '0934837765', 'emtoi@yahoo.com.vn', 'Em đặt cho vui thôi ạ', 13455500, '2019-05-14 13:50:01', 1),
(7, 'minhminion', 'Lưu', 'Bị', 'TP.Hồ Chí Minh', '001 Nguyễn Trãi ', '0934837765', 'minhminion2015@gmail.com', 'Em lại đặt cho vui', 38233000, '2019-05-15 11:01:44', 1),
(8, 'Saler', 'Nguyễn Văn', 'ABC', 'TP.Hồ Chí Minh', 'dasdas', '0934837765', 'sale123@gmail.com', 'asdsad', 8984500, '2019-05-15 15:10:21', 1),
(9, 'Saler', 'Nguyễn Văn', 'ABC', 'TP.Hồ Chí Minh', 'dasds', '1231', 'sale123@gmail.com', '', 3697500, '2019-05-15 15:11:47', 1),
(10, '3wind', 'Trương', 'Tam Phong', 'TP.Hồ Chí Minh', 'dasdas', '0934837765', '3wind@gmail.com', 'asdsda', 16107500, '2019-05-15 15:18:56', 1);

--
-- Triggers `receipt`
--
DELIMITER $$
CREATE TRIGGER `DeleteReceipt` BEFORE DELETE ON `receipt` FOR EACH ROW DELETE FROM receiptdetail WHERE receiptdetail.receiptID = OLD.receiptID
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `receiptdetail`
--

CREATE TABLE `receiptdetail` (
  `receiptID` int(11) NOT NULL,
  `productID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `quality` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `receiptdetail`
--

INSERT INTO `receiptdetail` (`receiptID`, `productID`, `productName`, `quality`, `price`, `total`) VALUES
(1, '002', 'Asus ROG Claymore', 1, 4490000, 4490000),
(1, '003', 'Asus ROG Strix Flare COD', 1, 4390000, 4390000),
(1, '005', 'Asus ROG Claymore Core', 1, 3800000, 3800000),
(1, '008', 'Corsair K65 LUX RGB', 1, 3150000, 3150000),
(2, '002', 'Asus ROG Claymore', 1, 4490000, 4490000),
(2, '003', 'Asus ROG Strix Flare COD', 1, 4390000, 4390000),
(2, '005', 'Asus ROG Claymore Core', 1, 3800000, 3800000),
(2, '008', 'Corsair K65 LUX RGB', 1, 3150000, 3150000),
(3, '003', 'Asus ROG Strix Flare COD', 1, 4390000, 4390000),
(4, '002', 'Asus ROG Claymore', 1, 4490000, 4490000),
(4, '003', 'Asus ROG Strix Flare COD', 1, 4390000, 4390000),
(4, '005', 'Asus ROG Claymore Core', 1, 3800000, 3800000),
(4, '008', 'Corsair K65 LUX RGB', 1, 3150000, 3150000),
(5, '002', 'Asus ROG Claymore', 1, 4490000, 4490000),
(5, '003', 'Asus ROG Strix Flare COD', 1, 4390000, 4390000),
(5, '004', 'Asus ROG Keypad Claymore Bond', 1, 1390000, 1390000),
(5, '005', 'Asus ROG Claymore Core', 1, 3800000, 3800000),
(5, '008', 'Corsair K65 LUX RGB', 1, 3150000, 3150000),
(6, '002', 'Asus ROG Claymore', 1, 4490000, 4490000),
(6, '003', 'Asus ROG Strix Flare COD', 1, 4390000, 4390000),
(6, '005', 'Asus ROG Claymore Core', 1, 3800000, 3800000),
(6, '008', 'Corsair K65 LUX RGB', 1, 3150000, 3150000),
(7, '002', 'Asus ROG Claymore', 1, 4490000, 4490000),
(7, '003', 'Asus ROG Strix Flare COD', 1, 4390000, 4390000),
(7, '009', 'Corsair K95 RGB Platinum Gunmetal', 1, 5190000, 5190000),
(7, '018', 'Razer BlackWidow X Chroma Mercury Edition', 2, 3890000, 7780000),
(7, '041', 'Asus ROG Strix Fusion 300', 1, 2990000, 2990000),
(7, '044', 'Logitech G933', 1, 4000000, 4000000),
(7, '046', 'Razer Kraken Tournament Green', 6, 2690000, 16140000),
(8, '013', 'Razer Blackwidow Tournament Quartz Pink Edition', 1, 3390000, 3390000),
(8, '017', 'Razer Blackwidow Elite', 1, 4490000, 4490000),
(8, '046', 'Razer Kraken Tournament Green', 1, 2690000, 2690000),
(9, '036', 'Razer Lancehead Tournament Edition', 1, 2000000, 2000000),
(9, '037', 'Razer Mamba Elite', 1, 2350000, 2350000),
(10, '009', 'Corsair K95 RGB Platinum Gunmetal', 1, 5190000, 5190000),
(10, '017', 'Razer Blackwidow Elite', 1, 4490000, 4490000),
(10, '034', 'Logitech G903 Lightspeed Wireless', 1, 3790000, 3790000),
(10, '039', 'SteelSeries Rival 650', 1, 2790000, 2790000),
(10, '046', 'Razer Kraken Tournament Green', 1, 2690000, 2690000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `userName` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `userPass` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `userAuthentication` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `userName`, `userPass`, `userAuthentication`, `state`) VALUES
('009', '3wind', '$2y$10$ziLl0.mIuvg/2TCWizL54.i9eu6vAkZ2PVqbyS37ydfRt3Hzg.age', '2', 1),
('0010', 'admin', 'c8882690ad2492a1078bacbe6a60dc1d', '0', 1),
('0014', 'admin1', '$2y$10$rq0mgCGiWv7zfEAbst6EAelq2ZekAq8/8pn7jEoCT28XGUiT/tMse', '0', 1),
('0016', 'admin123', '$2y$10$xRdaaKFKMDcAdKW1ddMRqOLS50m.kNw.KLT3rVWNL3PobHKCzN2x6', '2', 1),
('0015', 'daq123', '$2y$10$vKEt0Z2dmULO7rujeektc.83Rs2DCC/96dg5y0KIwYNtsQ0egGv96', '2', 1),
('004', 'emtoi', '$2y$10$lsuE8ygqk6MaofLqdVzXwO71Ti.NZlDW/iBdg/OFrkwkbmBjSLZBi', '2', 1),
('007', 'emyeudau', '$2y$10$DxouoqYKDW2YMEgqnFE5IO4QrZo/y6fgKiZ8gSfsUb1q.Z56SFg3K', '2', 1),
('008', 'maitram', '$2y$10$d3tdkpL.Mosoy4NXlb3RiuyPidMrIZtrNaJAKyOFjfU5L4yu05LmG', '2', 1),
('001', 'minhminion', '$2y$10$x2vtcz9pLVTYZfQL/zSTuePwlm9F0LC/BZPJu67CV4BjpSoGxrgH.', '0', 1),
('006', 'Mongg', '$2y$10$MIW.ipx6J1OYWxFdip1sc.DGkzLRVR2Uir34r8CpmY73so0v0ES/.', '2', 1),
('0011', 'Nguyenvant', '$2y$10$Z4KB5udqgOU8B9BSoC6Due4sr3/T40mhq8bVva9VWajYu095ytC9K', '2', 1),
('0013', 'nqd123', '$2y$10$CVG31zsju7fIHIxnrKumBuDSy6aarVTufovU9uE4b1VZdykAOjErW', '0', 1),
('0012', 'nva123', '$2y$10$tm8/Ncz5XUc13uW6pQnXeOnslbubO24AW7Aq.7xS22wY2SnfyeKJS', '2', 1),
('005', 'Saler', '$2y$10$lHg0ItOfCeGXzcfnxkKTZuAvBV0o1/js3m.E8XtlglPfA7rSkJYza', '1', 1),
('002', 'thanos', '$2y$10$4bXZG2f826LiZ8JZHbpolucNwWx558vBockiOnuaygvKL8C4rSGxS', '1', 1),
('003', 'thor123', '$2y$10$qe2nznYrdti6zsLjTXNSWO5T8ZJiNJvxdCZoP8yKWrhmCuKSXG3B.', '2', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authentication`
--
ALTER TABLE `authentication`
  ADD PRIMARY KEY (`authenID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`billID`),
  ADD KEY `billPurchaser` (`billPurchaser`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandID`);

--
-- Indexes for table `cetorgry`
--
ALTER TABLE `cetorgry`
  ADD PRIMARY KEY (`cetorgryID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `FK_Brand` (`productBrand`) USING BTREE,
  ADD KEY `FK_Cetogry` (`productCetorgry`) USING BTREE;

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`receiptID`),
  ADD KEY `userName` (`userName`),
  ADD KEY `userName_2` (`userName`),
  ADD KEY `receiptDate` (`receiptDate`);

--
-- Indexes for table `receiptdetail`
--
ALTER TABLE `receiptdetail`
  ADD PRIMARY KEY (`receiptID`,`productID`) USING BTREE,
  ADD KEY `receiptID` (`receiptID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userName`) USING BTREE,
  ADD KEY `userAuthentication` (`userAuthentication`),
  ADD KEY `userID` (`userID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`productBrand`) REFERENCES `brand` (`brandID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`productCetorgry`) REFERENCES `cetorgry` (`cetorgryID`);

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `user` (`userName`);

--
-- Constraints for table `receiptdetail`
--
ALTER TABLE `receiptdetail`
  ADD CONSTRAINT `receiptdetail_ibfk_1` FOREIGN KEY (`receiptID`) REFERENCES `receipt` (`receiptID`),
  ADD CONSTRAINT `receiptdetail_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`userAuthentication`) REFERENCES `authentication` (`authenID`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `customer` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2015 at 05:28 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `flower`
--

-- --------------------------------------------------------

--
-- Table structure for table `adm`
--

CREATE TABLE IF NOT EXISTS `adm` (
`ma_adm` int(11) NOT NULL,
  `ten_dn` varchar(30) NOT NULL,
  `level` int(10) NOT NULL,
  `mat_khau` varchar(30) NOT NULL,
  `ho` varchar(30) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adm`
--

INSERT INTO `adm` (`ma_adm`, `ten_dn`, `level`, `mat_khau`, `ho`, `ten`, `gioi_tinh`) VALUES
(1, 'admin', 1, 'admin', 'Hoàng Thành ', 'Trung', 2),
(7, 'tungit', 2, '123456', 'hoang van', 'tung', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ct_dondathang`
--

CREATE TABLE IF NOT EXISTS `ct_dondathang` (
  `ma_dh` int(10) NOT NULL,
  `ma_hoa` varchar(10) NOT NULL,
  `gia_ban` float NOT NULL,
  `sl_dat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ct_dondathang`
--

INSERT INTO `ct_dondathang` (`ma_dh`, `ma_hoa`, `gia_ban`, `sl_dat`) VALUES
(40, '40', 25000, 10),
(40, '41', 120000, 1),
(40, '21', 50000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE IF NOT EXISTS `dondathang` (
`ma_dh` int(10) NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `ngay_dh` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ngay_gh` varchar(10) NOT NULL,
  `noi_giao` varchar(300) NOT NULL,
  `hien_trang` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`ma_dh`, `ma_kh`, `ngay_dh`, `ngay_gh`, `noi_giao`, `hien_trang`) VALUES
(40, 46, '2015-06-09 08:32:01', '09/06/2015', 'Đống Đa-Hà Nội ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE IF NOT EXISTS `khach_hang` (
`ma_kh` int(11) NOT NULL,
  `ho_kh` varchar(30) NOT NULL,
  `ten_kh` varchar(30) NOT NULL,
  `sdt` int(11) NOT NULL,
  `dia_chi` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gioi_tinh` int(11) NOT NULL DEFAULT '0',
  `ten_dn` varchar(15) NOT NULL,
  `mat_khau` varchar(15) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `ho_kh`, `ten_kh`, `sdt`, `dia_chi`, `email`, `gioi_tinh`, `ten_dn`, `mat_khau`) VALUES
(47, 'hoang', 'trung', 1325454365, 'ưerwerwre ', 'trangdoantyck57@gmail.com', 2, 'tungit', '123456'),
(46, 'hoàng Văn', 'Quyền', 129864247, 'Khâm Thiên- Đống Đa', 'quyen123@gmail.com', 2, '123456', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `lien_he`
--

CREATE TABLE IF NOT EXISTS `lien_he` (
`ma_lh` int(11) NOT NULL,
  `ten_nguoi_lh` varchar(40) NOT NULL,
  `sdt_nguoi_lh` varchar(12) NOT NULL,
  `email_nguoi_lh` varchar(50) NOT NULL,
  `gioi_nguoi_lh` int(11) NOT NULL,
  `diachi_nguoi_lh` varchar(200) NOT NULL,
  `noi_dung` varchar(1000) NOT NULL,
  `ngay_lh` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lien_he`
--

INSERT INTO `lien_he` (`ma_lh`, `ten_nguoi_lh`, `sdt_nguoi_lh`, `email_nguoi_lh`, `gioi_nguoi_lh`, `diachi_nguoi_lh`, `noi_dung`, `ngay_lh`) VALUES
(16, 'Hoàng Thành Trung', '0964967129', 'hoangtrungk55@gmail.com', 2, 'Khâm Thiên-Hà Nội', 'Trang web nên bố trí và thiết kế đẹp hơn, giao diện người dùng thân thiện hơn,....', '2015-06-10 17:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `loai_hoa`
--

CREATE TABLE IF NOT EXISTS `loai_hoa` (
`ma_loai` int(11) NOT NULL,
  `ten_loai` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loai_hoa`
--

INSERT INTO `loai_hoa` (`ma_loai`, `ten_loai`) VALUES
(1, 'Quả Miền Bắc'),
(2, 'Quả Miền Trung'),
(3, 'Quả Miền Nam'),
(4, 'Quả Đặc Sản Hưng Yên'),
(5, 'Quả Nhập Khẩu');

-- --------------------------------------------------------

--
-- Table structure for table `hoa`
--

CREATE TABLE IF NOT EXISTS `hoa` (
`ma_hoa` int(11) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `ten_hoa` varchar(30) NOT NULL,
  `gia` float NOT NULL,
  `hinh_anh` varchar(100) NOT NULL,
  `mo_ta` varchar(300) NOT NULL,
  `ngay_d` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `trang_thai` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoa`
--

INSERT INTO `hoa` (`ma_hoa`, `ma_loai`, `ten_hoa`, `gia`, `hinh_anh`, `mo_ta`, `ngay_d`, `trang_thai`) VALUES
(40, 4, 'Ổi Đài Loan', 25000, 'oidailoan.jpg', 'Ổi Đài Loan quả to, đẹp, ăn vừa giòn,vừa ngọt', '2015-06-07 08:41:26', 0),
(24, 4, 'Táo Giống Mới', 50000, 'taogiongmoi.jpg', 'Táo giống mới được lai ghép và trồng nhiều ở khu vực Văn Giang-Hưng Yên', '2015-06-07 14:42:30', 0),
(23, 4, 'Nhãn Lồng', 80000, 'nhanlonghungyen.jpg', 'Nhãn Lồng Hưng Yên, một loại sản vật cực kỳ thơm ngon vào dịp hè về.', '2015-06-07 14:54:48', 1),
(22, 1, 'Vải Thiều', 15000, 'Vải Thiều.jpg', 'Vải Thiều một loại sản vật ở vùng đất Hải Dương.', '2015-06-07 15:02:05', 1),
(21, 3, 'Bưởi Năm Roi', 50000, 'buoinamroi.jpg', 'Bưởi Năm Roi được nhập từ khu vực Vĩnh Long', '2015-06-07 15:17:59', 0),
(41, 5, 'Bơ Sáp Hà Lan', 120000, 'Bơ Sáp.jpg', 'Loại bơ sáp này được xuất sứ từ đất nước Hà Lan', '2015-06-09 04:43:09', 0),
(42, 2, 'Măng Cụt', 50000, 'Măng cụt 1.JPG', 'Măng cụt là loại trái cây cực kỳ thơm ngon và bổ dưỡng.', '2015-06-09 04:51:54', 1);

-- --------------------------------------------------------

--
-- Indexes for table `adm`
--
ALTER TABLE `adm`
 ADD PRIMARY KEY (`ma_adm`), ADD UNIQUE KEY `ten_dn` (`ten_dn`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
 ADD PRIMARY KEY (`ma_dh`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
 ADD PRIMARY KEY (`ma_kh`), ADD UNIQUE KEY `ten_dn` (`ten_dn`);

--
-- Indexes for table `lien_he`
--
ALTER TABLE `lien_he`
 ADD PRIMARY KEY (`ma_lh`);

--
-- Indexes for table `loai_hoa`
--
ALTER TABLE `loai_hoa`
 ADD PRIMARY KEY (`ma_loai`);

--
-- Indexes for table `hoa`
--
ALTER TABLE `hoa`
 ADD PRIMARY KEY (`ma_hoa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adm`
--
ALTER TABLE `adm`
MODIFY `ma_adm` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `dondathang`
--
ALTER TABLE `dondathang`
MODIFY `ma_dh` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
MODIFY `ma_kh` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `lien_he`
--
ALTER TABLE `lien_he`
MODIFY `ma_lh` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `loai_hoa`
--
ALTER TABLE `loai_hoa`
MODIFY `ma_hoa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `qua`
--
ALTER TABLE `hoa`
MODIFY `ma_hoa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

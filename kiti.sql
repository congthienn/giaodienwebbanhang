-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 30, 2021 lúc 06:01 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `kiti`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_sanpham`
--

CREATE TABLE `chitiet_sanpham` (
  `sp_id` int(11) NOT NULL,
  `man_hinh` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `he_dieu_hanh` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `camera_sau` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `camera_truoc` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `chip` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `bo_nho_trong` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sim` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_sac` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_file` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_sanpham`
--

INSERT INTO `chitiet_sanpham` (`sp_id`, `man_hinh`, `he_dieu_hanh`, `camera_sau`, `camera_truoc`, `chip`, `ram`, `bo_nho_trong`, `sim`, `pin_sac`, `ten_file`) VALUES
(3, 'OLED 6.1', 'iOS 14', '2 camera 12 MP', '12 MP', 'Apple A14 Bionic', '4 GB', '64 GB', '1 Nano SIM & 1 eSIM Hỗ trợ 5G', '2815 mAh20 W', 'iphone-12-note.jpg'),
(4, 'IPS LCD 6.1', 'iOS 14', '2 camera 12 MP', '12 MP', 'Apple A13 Bionic', '4 GB', '128 GB', '1 Nano SIM & 1 eSIM Hỗ trợ 5G', '3110 mAh18 W', 'iphone-11-128gb-note.jpg'),
(5, 'IPS LCD 6.1', 'iOS 14', '2 camera 12 MP', '12 MP', 'Apple A13 Bionic', '4 GB', '256 GB', '1 Nano SIM & 1 eSIM Hỗ trợ 5G', '3110 mAh18 W', 'iphone-11-256gb-note.jpg'),
(8, 'OLED 5.4', 'iOS 14', '2 camera 12 MP', '12 MP', 'Apple A14 Bionic', '4 GB', '64 GB', '1 Nano SIM & 1 eSIM Hỗ trợ 5G', '2227 mAh ,20 W', 'iphone-12-mini-note-2.jpg'),
(9, 'IPS LCD 6.1', 'iOS 14', '12 MP', '7 MP', 'Apple A12 Bionic', '4 GB', '64 GB', '1 Nano SIM & 1 eSIM Hỗ trợ 5G', '2942 mAh 15 W', 'iphone-xr-note.jpg'),
(10, 'Dynamic AMOLED 2X 6.2', 'Android 11', 'Chính 12 MP & Phụ 64 MP, 12 MP', '10 MP', 'Exynos 2100', '8 GB', '128 GB', '2 Nano SIM hoặc 1 Nano SIM + 1 eSIM Hỗ trợ 5G', '4000 mAh , 25 W', 'samsung-galaxy-s21-note.jpg'),
(14, 'IPS LCD 4.7', 'iOS 14', '12 MP', '7 MP', 'Apple A13 Bionic', '4 GB', '128 GB', '1 Nano SIM & 1 eSIM,Hỗ trợ 4G', '1821 mAh 18 W', 'iphone-se-2020-note.jpg'),
(15, 'Super AMOLED 6.4', 'Android 11', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '13 MP', 'MediaTek MT6769V', '6 GB', '128 GB', '2 Nano SIM Hỗ trợ 4G', '5000 mAh, 15 W', 'samsung-galaxy-a22-4g-note.jpg'),
(16, 'OLED 6.7\" Super Retina XDR', 'iOS 14', '3 camera 12 MP', '12 MP', 'Apple A14 Bionic', '6 GB', '128 GB', '1 Nano SIM & 1 eSIM Hỗ trợ 5G', '3687 mAh 20 W', 'iphone-12-pro-max-512gb-note-2.jpg'),
(17, 'OLED 6.1\" Super Retina XDR', 'iOS 14', '3 camera 12 MP', '12 MP', 'Apple A14 Bionic', '6 GB', '128 GB', '1 Nano SIM & 1 eSIM Hỗ trợ 5G', '2815 mAh 20 W', 'iphone-12-pro-n.jpg'),
(18, 'Dynamic AMOLED 2X 6.8\" Quad HD+ (2K+)', 'Android 11', 'Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP', '40 MP', 'Exynos 2100', '12 GB', '128 GB', '2 Nano SIM hoặc 1 Nano SIM + 1 eSIM Hỗ trợ 5G', '5000 mAh 25 W', 'samsung-galaxy-s21-ultra-note-2.jpg'),
(19, 'Dynamic AMOLED 2X 6.7\" Full HD+', 'Android 11', 'Chính 12 MP & Phụ 64 MP, 12 MP', '10 MP', 'Exynos 2100', '8 GB', '256 GB', '2 Nano SIM hoặc 1 Nano SIM + 1 eSIM Hỗ trợ 5G', '4800 mAh 25 W', 'samsung-galaxy-s21-plus-256gb-note-1.jpg'),
(21, 'Super AMOLED Plus 6.7', 'Android 10', 'Chính 12 MP & Phụ 64 MP, 12 MP', '10 MP', 'Exynos 990', '8 GB', '256 GB', '2 Nano SIM hoặc 1 Nano SIM + 1 eSIM Hỗ trợ 4G', '4300 mAh 25 W', 'samsung-galaxy-note-20-note.jpg'),
(23, 'Super AMOLED 6.5', 'Android 11', 'Chính 12 MP & Phụ 12 MP, 8 MP', '32 MP', 'Snapdragon 865', '8 GB', '256 GB', '2 Nano SIM (SIM 2 chung khe thẻ nhớ) Hỗ trợ 4G', '4500 mA h25 W', 'samsung-galaxy-s20-fan-edition-note.jpg'),
(25, 'Super AMOLED 6.7\" Full HD+', 'Android 11', 'Chính 64 MP & Phụ 12 MP, 8 MP, 5 MP', '32 MP', 'Snapdragon 720G', '8 GB', '256 GB', '2 Nano SIM Hỗ trợ 4G', '5000 mAh 25 W', 'samsung-galaxy-a72-note.jpg'),
(26, 'Super AMOLED 6.5\" Full HD+', 'Android 11', 'Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP', '32 MP', 'Snapdragon 750G 5G', '8 GB', '128 GB', '2 Nano SIM Hỗ trợ 5G', '4500 mAh 25 W', 'samsung-galaxy-a52-5g-note.jpg'),
(27, 'Super AMOLED Plus 6.7', 'Android 10', 'Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP', '32 MP', 'Snapdragon 730', '8 GB', '128 GB', '2 Nano SIM Hỗ trợ 4G', '7000 mAh 25 W', 'samsung-galaxy-m51-note.jpg'),
(28, 'Super AMOLED 6.5\" Full HD+', 'Android 10', 'Chính 48 MP & Phụ 12 MP, 5 MP, 5 MP', '32 MP', 'Exynos 9611', '6 GB', '128 GB', '2 Nano SIM Hỗ trợ 4G', '4000 mAh 15 W', 'samsung-galaxy-a51-note.jpg'),
(29, 'Super AMOLED 6.4\" Full HD+', 'Android 11', 'Chính 64 MP & Phụ 8 MP, 5MP, 5MP', '20 MP', 'MediaTek Helio G80', '6 GB', '128 GB', '2 Nano SIM Hỗ trợ 4G', '5000 mAh 15 W', 'samsung-galaxy-a32-4g-note.jpg'),
(30, 'AMOLED 6.43', 'Android 11', 'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP', '44 MP', 'Snapdragon 720G', '8 GB', '128 GB', '2 Nano SIM Hỗ trợ 4G', '4310 mAh 50 W', 'oppo-reno5-note-2.jpg'),
(31, 'AMOLED 6.7', 'Android 11', 'Chính 50 MP & Phụ 50 MP, 13 MP, 3 MP', '32 MP', 'Snapdragon 888', '12 GB', '256 GB', '2 Nano SIM Hỗ trợ 5G', '4500 mAh 65 W', 'oppo-find-x3-pro-note.jpg'),
(32, 'AMOLED 6.43\" Full HD+', 'Android 11', 'Chính 48 MP & Phụ 2 MP, 2 MP', '16 MP', 'Snapdragon 662', '8 GB', '128 GB', '2 Nano SIM Hỗ trợ 4G', '5000 mAh 33 W', 'oppo-a74-note-2.jpg'),
(33, 'AMOLED 6.5\" Full HD+', 'Android 10', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '32 MP', 'Snapdragon 720G', '8 GB', '256 GB', '2 Nano SIM Hỗ trợ 4G', '4000 mAh 65 W', 'oppo-reno4-pro-note.jpg'),
(34, 'AMOLED 6.43\" Full HD+', 'Android 11', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '32 MP', 'MediaTek Helio P95', '8 GB', '128 GB', '2 Nano SIM Hỗ trợ 4G', '4310 mAh 30 W', 'oppo-a94-note.jpg'),
(35, 'AMOLED 6.43\" Full HD+', 'Android 10', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', 'Chính 16 MP & Phụ 2 MP', 'MediaTek Helio P95', '8 GB', '128 GB', '2 Nano SIM Hỗ trợ 4G', '4000 mAh 18 W', 'oppo-a93-note.jpg'),
(36, 'IPS LCD 6.5', 'Android 10', 'Chính 13 MP & Phụ 2 MP, 2 MP', '16 MP', 'MediaTek Helio P35', '4 GB', '128 GB', '2 Nano SIM Hỗ trợ 4G', '5000 mAh 18 W', 'oppo-a54-note.jpg'),
(37, 'LCD 6.52\" HD+', 'Android 10', 'Chính 13 MP & Phụ 2 MP, 2 MP', '8 MP', 'MediaTek Helio P35', '4 GB', '64 GB', '2 Nano SIM Hỗ trợ 4G', '4230 mAh 10 W', 'oppo-a15s-note.jpg'),
(38, 'IPS LCD 6.5', 'Android 11', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '16 MP', 'Snapdragon 480 8 nhân 5G', '6 GB', '128 GB', '2 Nano SIM Hỗ trợ 5G', '5000 mAh 18 W', 'oppo-a74-5g-note.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chude_gopy`
--

CREATE TABLE `chude_gopy` (
  `cd_id` int(11) NOT NULL,
  `cd_ten` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chude_gopy`
--

INSERT INTO `chude_gopy` (`cd_id`, `cd_ten`) VALUES
(1, 'Thái độ phục vụ của nhân viên'),
(2, 'Đóng gói - Giao hàng'),
(3, 'Chất lượng sản phẩm'),
(4, 'Chất lượng dịch vụ tại cửa hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia_sanpham`
--

CREATE TABLE `danhgia_sanpham` (
  `sp_id` int(11) DEFAULT NULL,
  `danh_gia` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sao` int(11) DEFAULT NULL,
  `kh_hoten` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_sdt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_email` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia_sanpham`
--

INSERT INTO `danhgia_sanpham` (`sp_id`, `danh_gia`, `sao`, `kh_hoten`, `kh_sdt`, `kh_email`) VALUES
(9, 'Tôi rất hài lòng về sản phẩm này', 5, 'Quách Ngọc Ngân Khánh', '0964450859', 'ngankhanh2511@gmail.com'),
(9, 'Sản phẩm rất tốt, khi mua về chưa bị hư hỏng gì. Tôi rất hài lòng :)))', 4, 'Nguyen Cong Thien', '0911440609', 'congthienn1601@gmail.com'),
(9, 'Sản phẩm xài rất tốn pin, khi mua về xài được 1 tuần thì bắt đầu bị giật lag. Sạc pin rất lâu mới đầy mặc dù sản phẩm giá thành rất cao', 1, 'Bùi Châu Gia Bảo', '0964450859', 'buichaugiabao@gmail.com'),
(9, 'Chất lượng sản phẩm tốt , đóng gói rất cẩn thận. Khi mở hộp sản phẩm không có hư hỏng gì...', 3, 'Lê Ngọc Bội ', '0332353493', 'boile@gmail.com'),
(9, 'bắt wifi tệ chưa từng đang xài muốn ngắt là ngắt đem đi cửa hàng cho kỹ thuật về nhà cũng i z, mua hàng ở thế giới nhiều lần rồi chỉ có lần này là thấy khó chịu nhất', 2, 'Nguyễn Công Thiện', '0911440609', 'congthienn1601@gmail.com'),
(9, 'Mình mua trả góp gói 30% của FE lãi suất 0%. Mua thẳng thì 20tr5 còn trả góp thì 22tr9 tính ra 12 tháng chênh 2tr5 với trả thẳng - mức giá này chấp nhận được. Màu xanh mint rất đẹp, cầm nhẹ tay ', 5, 'Thái Minh Chí', '0975423138', 'minhchi@gmail.com'),
(3, 'màn hình mượt nhé lướt mượt kh có gì phải chê nhưng con chip v tải tốc chip cũng chả đc chậm chạp :) nếu gthieu cho bb chắc gthieu tụi nó 11 hay 11 pro max hay 12 pro max , 12 pro thoi sai lầm khi mua sớm :) chưa tìm hiểu kĩ nv tư vấn cứ nghĩ ăn khách là ăn khách thoi chớ biết gì tv khi mua nó như nào chán thiệt', 3, 'Nguyễn Thị Thanh Vân', '0332353493', 'thanhvannguyenkg2005@gmail.com'),
(4, 'Sản phẩm có chất lượng rất tốt....', 5, 'Nguyễn Công Thiện', '0911440609', 'congthienn1601@gmail.com'),
(3, 'Sản phẩm rất tốt. Tôi rất thích', 5, 'Bùi Châu Gia Bảo', '0975423138', 'buichaugiabao@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvi_giaohang`
--

CREATE TABLE `donvi_giaohang` (
  `dvgh_id` int(11) NOT NULL,
  `dvgh_ten` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dvgh_sdt` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dvgh_diachi` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donvi_giaohang`
--

INSERT INTO `donvi_giaohang` (`dvgh_id`, `dvgh_ten`, `dvgh_sdt`, `dvgh_diachi`) VALUES
(1, 'Viettel Post', '02926250033', '112 ,đường 3/2, phường Xuân Khánh , quận Ninh Kiều , TP. Cần Thơ'),
(2, 'Việt Nam Spot', '02923827585', 'Lô 26, Lô 26, Khu dân cư Hưng Phú 1, Phường Hưng Phú'),
(3, 'Giao hàng nhanh', '0968014201', '124 Võ Văn Kiệt, An Thới, Ninh Kiều, Cần Thơ'),
(4, 'Giao hàng tiết kiệm', '02922233977', 'E55 Đường Sô 2, Hưng Phú, Cái Răng, Cần Thơ'),
(8, 'Kerry Express', '02923898218', '51 Mậu Thân, An Hoà, Ninh Kiều, Cần Thơ'),
(10, 'Citiship Cần Thơ', '0332353493', 'Số 152K3/16 kv1 hẻm liên tổ 12-20, Nguyễn Văn Cừ nối dài, An Bình, Ninh Kiều, Cần Thơ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `dh_id` int(11) NOT NULL,
  `dh_ma` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dh_ngaynhap` datetime DEFAULT NULL,
  `dh_ngaygiao` date DEFAULT NULL,
  `dh_noigiao` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dh_trangthai_thanhtoan` int(11) DEFAULT NULL,
  `httt_id` int(11) DEFAULT NULL,
  `kh_id` int(11) DEFAULT NULL,
  `dh_giao` int(11) DEFAULT NULL,
  `dvgh_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`dh_id`, `dh_ma`, `dh_ngaynhap`, `dh_ngaygiao`, `dh_noigiao`, `dh_trangthai_thanhtoan`, `httt_id`, `kh_id`, `dh_giao`, `dvgh_id`) VALUES
(90, 'FF5NZEGPTZ', '2021-08-16 08:36:28', '2021-08-21', 'Mong Thọ - Châu Thành - Kiên Giang', 0, 1, 2, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gop_y`
--

CREATE TABLE `gop_y` (
  `gy_id` int(11) NOT NULL,
  `gy_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gy_sdt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gy_noidung` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gy_ngay_gy` date DEFAULT NULL,
  `gy_sao` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cd_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gop_y`
--

INSERT INTO `gop_y` (`gy_id`, `gy_email`, `gy_sdt`, `gy_noidung`, `gy_ngay_gy`, `gy_sao`, `cd_id`) VALUES
(1, 'ngankhanh2511@gmail.com', '0911440609', 'Chất lượng sản phẩm khá tốt, hàng đóng gói cẩn thận', '2021-07-14', '5', 3),
(2, 'congthien1601@gmil.com', '0964450859', 'Hàng đóng gói khá cẩn thận, hàng giao nhanh và không bị hư hại. Sau khi sử dụng thì thấy chất lượng sản phẩm khá tốt', '2021-07-15', '5', 2),
(3, 'ngankhanh2511@gmail.com', '0975423138', 'Chất lượng phục vụ khá tốt, chất lượng sản phẩm cũng vậy', '2021-07-15', '4', 3),
(4, 'buichaugiabao@gmail.com', '0831234568', 'Thái độ phục vụ của nhân viên không tốt ', '2021-07-15', '1', 1),
(5, 'boile2000@gmail.com', '0911440609', 'Chất lượng sản phẩm kém, hàng gói lỏng lẻo. Giao hàng khá lâu', '2021-07-15', '2', 3),
(6, 'thanhvannguyenkg2005@gmail.com', '0975423138', 'Chất lượng dịch vụ bình thường không có gì nổi bật lắm', '2021-07-15', '3', 4),
(7, 'congthienprovip@gmail.com', '0911440609', 'Chất lượng sản phẩm tốt, hàng đóng gói cẩn thận và giao hàng nhanh', '2021-07-25', '5', 3),
(8, 'congthienn1601@gmail.com', '0975423138', 'Chất lượng sản phẩm không tốt, thái độ phục vụ kém', '2021-07-25', '1', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `httt`
--

CREATE TABLE `httt` (
  `httt_id` int(11) NOT NULL,
  `httt_ten` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `httt_stk` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `httt_chitiet` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `httt`
--

INSERT INTO `httt` (`httt_id`, `httt_ten`, `httt_stk`, `httt_chitiet`) VALUES
(1, 'Thanh toán bằng thẻ tín dụng', '0047100008400008', 'Ngân hàng Phương Đông (OCB) - NGUYENCONGTHIEN'),
(2, 'Thanh toán sau khi nhận hàng', '', 'Khách hàng nhận hàng và kiểm tra sản phẩm sau đó thanh toán bằng tiền mặt cho nhân viên giao hàng'),
(3, 'Thanh toán qua Zalo pay', '0911440609', 'Chủ tài khoản : Nguyễn Công Thiện'),
(14, 'Thanh toán thanh qua ví Momo', '0911440609', 'Chủ tài khoản : Nguyễn Công Thiện'),
(15, 'Thanh toán bằng tiền mặt', '', 'Khách hàng mua hàng trực tiếp tại cửa hàng và thanh toán bằng tiền mặt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `kh_id` int(11) NOT NULL,
  `kh_hoten` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_sdt` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_quyen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_maso` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`kh_id`, `kh_hoten`, `kh_email`, `kh_sdt`, `kh_password`, `kh_quyen`, `kh_maso`) VALUES
(1, 'Nguyễn Công Thiện', 'congthienn1601@gmail.com', '0911440609', '1ca59b8e2f3bb7e3a63bed32de98ea4a', 'ad', 'DTRUDJFHSI'),
(2, 'Quách Ngọc Ngân Khánh', 'ngankhanh2511@gmail.com', '0964450859', '566a0c7cb13f5ff1fafc3bc11480f858', 'kh', 'ABF678FJAK'),
(3, 'Bùi Châu Gia Bảo', 'buichaugiabao@gmail.com', '0975423138', '566a0c7cb13f5ff1fafc3bc11480f858', 'kh', 'FHSSIFISUS'),
(4, 'Nguyễn Thị Thanh Vân', 'thanhvannguyenkg2005@gmail.com', '0332353493', '566a0c7cb13f5ff1fafc3bc11480f858', 'kh', 'RYOWFNA89D'),
(5, 'Lê Ngọc Bội', 'boile2000@gmail.com', '0839361789', '566a0c7cb13f5ff1fafc3bc11480f858', 'kh', '7YTRHMFKG8'),
(6, 'Nguyễn Văn Minh', 'minhnguyen@gmail.com', '0975423139', '566a0c7cb13f5ff1fafc3bc11480f858', 'kh', '89YKGHSNFH'),
(7, 'Diệp Thanh Huy', 'huydiep@gmail.com', '0911440608', '566a0c7cb13f5ff1fafc3bc11480f858', 'kh', 'YHFAKFIBSG'),
(8, 'Nguyễn Thị Kim Liên', 'kienlien@gmail.com', '0399380818', '566a0c7cb13f5ff1fafc3bc11480f858', 'kh', '2E48CHVARD'),
(9, 'Nguyễn Văn Quyền', 'vanquyen@gmail.com', '0399380848', '566a0c7cb13f5ff1fafc3bc11480f858', 'kh', '0X7YGNF4JD'),
(10, 'Nguyễn Văn A', 'congthiennn1601@gmail.com', '0839361780', '91bcd8a82735ef230c0b9fce8db0b5db', 'kh', 'GMZD3QAC8W');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyen_mai`
--

CREATE TABLE `khuyen_mai` (
  `km_id` int(11) NOT NULL,
  `km_ten` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `km_ma` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `km_chitiet` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `km_ngay_ap_dung` date DEFAULT NULL,
  `km_ngay_het_han` date DEFAULT NULL,
  `km_open` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyen_mai`
--

INSERT INTO `khuyen_mai` (`km_id`, `km_ten`, `km_ma`, `km_chitiet`, `km_ngay_ap_dung`, `km_ngay_het_han`, `km_open`) VALUES
(1, 'Chào mừng ngày giải phóng miền Nam thống nhất đất nước 30-4 và 1-5', 'TC3NT8KVHL', 'Giảm giá các sản phẩm từ 10% đến 50% nhân dịp ngày giải phóng miền Nam thống nhất đất nước 30-4 và 1-5', '2021-04-30', '2021-05-02', 2),
(3, 'Thương lắm Sài Gòn ơi', '3SO68F5O0R', 'Giảm giá sản phẩm cho khách hàng có hộ khẩu tại Thành phố Hồ Chí Minh', '2021-07-13', '2021-08-13', 1),
(4, 'Mừng sinh nhật giảm giá 100% các sản phẩm smartphone', 'RRN3O249ZL', 'Giảm giá 100% các sản phẩm smartphone nhân dịp sinh nhật của cửa hàng', '2021-07-15', '2021-07-16', 2),
(10, 'Mua hàng thả ga không lo hết tiền', 'BG3PFUIQNY', 'Giảm giá các sản phẩm lên đến 50% duy nhất ngày 20-7-2021', '2021-07-20', '2021-07-21', 2),
(11, 'Mừng khai trương mua hàng không không cần lo hết tiền', 'O3J4GH5APN', 'Mừng khai trương chi nhánh thứ 2 tại Cần Thơ, khi quý khách đến mua hàng tại chi nhánh số 2: 16 - 3/2 - Xuân Khánh - Ninh Kiều - Cần Thơ vào ngày 21-7-2021 sẽ được giảm giá tất cả các sản phẩm', '2021-07-21', '2021-07-22', 2),
(12, 'Chào mừng tết nguyên đán Tân Sửu, mua hàng thả ga không lo hết tiền', 'HIV2I7P855', 'Cùng chào mừng tết nguyên đán Tân Sửu, cửa hàng điện thoại di động Công Thiện sẽ giảm giá lên đến 30% cho tất cả các sản phẩm khi khách hàng mua hàng online trên website của cửa hàng', '2021-07-19', '2021-08-01', 2),
(13, 'Hãy cũng nhau ở nhà để phòng chống dịch bệnh', 'W1WBK3FFRR', 'Khi khách hàng mua hàng trực tuyến trên website của cửa hàng , sẽ được giảm giá tất cả sản phẩm. Hãy cùng ở nhà để bảo vệ sức khỏe của bản thân , gia đình và xã hội bạn nhé !', '2021-07-01', '2021-08-01', 2),
(18, 'Siêu sale ngày 7-7', 'FHR1VKV8PD', 'Giảm giá sản phẩm duy nhất trong ngày 7-7-2021, với nhiều voucher hấp dẫn lên đến 50%', '2021-07-07', '2021-07-08', 2),
(20, 'Siêu sale ngày 8-8', '4L67ADYOIH', 'Nhiều mã giảm giá hấp dẫn duy nhất trong ngày 8-8-2021', '2021-08-08', '2021-08-09', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_san_pham`
--

CREATE TABLE `loai_san_pham` (
  `lsp_id` int(11) NOT NULL,
  `lsp_ten` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_san_pham`
--

INSERT INTO `loai_san_pham` (`lsp_id`, `lsp_ten`) VALUES
(1, 'Điện thoại di động');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_san_xuat`
--

CREATE TABLE `nha_san_xuat` (
  `nsx_id` int(11) NOT NULL,
  `nsx_ten` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_file` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nha_san_xuat`
--

INSERT INTO `nha_san_xuat` (`nsx_id`, `nsx_ten`, `ten_file`) VALUES
(1, 'Samsung', 'Samsung42-b_25.jpg'),
(2, 'iPhone', 'logo-iphone-220x48.png'),
(8, 'Oppo', 'OPPO42-b_5.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_donhang`
--

CREATE TABLE `sanpham_donhang` (
  `sp_id` int(11) NOT NULL,
  `dh_id` int(11) NOT NULL,
  `sp_mau` int(11) DEFAULT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham_donhang`
--

INSERT INTO `sanpham_donhang` (`sp_id`, `dh_id`, `sp_mau`, `soluong`) VALUES
(3, 90, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_hinh`
--

CREATE TABLE `sanpham_hinh` (
  `sp_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `id_hinh` int(11) DEFAULT NULL,
  `ten_file` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham_hinh`
--

INSERT INTO `sanpham_hinh` (`sp_id`, `id`, `id_hinh`, `ten_file`) VALUES
(3, 1, 2, 'iphone-12-den-1-1-org.jpg'),
(3, 1, 3, 'iphone-12-den-2-org.jpg'),
(3, 1, 4, 'iphone-12-den-3-org.jpg'),
(3, 1, 5, 'iphone-12-den-4-org.jpg'),
(3, 1, 6, 'iphone-12-den-5-1-org.jpg'),
(3, 1, 7, 'iphone-12-den-6-org.jpg'),
(3, 1, 8, 'iphone-12-den-7-org.jpg'),
(3, 1, 9, 'iphone-12-den-8-org.jpg'),
(3, 1, 10, 'iphone-12-den-9-org.jpg'),
(3, 1, 11, 'iphone-12-den-10-org.jpg'),
(3, 1, 12, 'iphone-12-den-11-org.jpg'),
(3, 2, 1, 'iphone-12-trang-1-1-org.jpg'),
(3, 2, 2, 'iphone-12-trang-2-org.jpg'),
(3, 2, 3, 'iphone-12-trang-3-org.jpg'),
(3, 2, 4, 'iphone-12-trang-4-org.jpg'),
(3, 2, 5, 'iphone-12-trang-5-1-org.jpg'),
(3, 2, 6, 'iphone-12-trang-6-org.jpg'),
(3, 2, 7, 'iphone-12-trang-7-org.jpg'),
(3, 2, 8, 'iphone-12-trang-8-org.jpg'),
(3, 2, 9, 'iphone-12-trang-9-org.jpg'),
(3, 2, 10, 'iphone-12-trang-10-org.jpg'),
(3, 2, 11, 'iphone-12-trang-11-org.jpg'),
(3, 3, 1, 'iphone-12-do-1-1-org.jpg'),
(3, 3, 2, 'iphone-12-do-2-org.jpg'),
(3, 3, 3, 'iphone-12-do-3-org.jpg'),
(3, 3, 4, 'iphone-12-do-4-org.jpg'),
(3, 3, 5, 'iphone-12-do-5-1-org.jpg'),
(3, 3, 6, 'iphone-12-do-6-org.jpg'),
(3, 3, 7, 'iphone-12-do-7-org.jpg'),
(3, 3, 8, 'iphone-12-do-8-org.jpg'),
(3, 3, 9, 'iphone-12-do-9-org.jpg'),
(3, 3, 10, 'iphone-12-do-10-org.jpg'),
(3, 3, 11, 'iphone-12-do-11-org.jpg'),
(3, 3, 12, 'iphone-12-do-12-org.jpg'),
(4, 1, 1, 'iphone-11-den-1-1-org.jpg'),
(4, 1, 2, 'iphone-11-den-2-org.jpg'),
(4, 1, 3, 'iphone-11-den-3-org.jpg'),
(4, 1, 4, 'iphone-11-den-4-org.jpg'),
(4, 1, 5, 'iphone-11-den-5-1-org.jpg'),
(4, 1, 6, 'iphone-11-den-6-org.jpg'),
(4, 1, 7, 'iphone-11-den-7-org.jpg'),
(4, 1, 8, 'iphone-11-den-8-org.jpg'),
(4, 1, 9, 'iphone-11-den-9-org.jpg'),
(4, 1, 10, 'iphone-11-den-10-org.jpg'),
(4, 1, 11, 'iphone-11-den-11-org.jpg'),
(4, 1, 12, 'iphone-11-den-12-org.jpg'),
(4, 2, 1, 'iphone-11-vang-1-org.jpg'),
(4, 2, 2, 'iphone-11-128gb-vang-2-1-org.jpg'),
(4, 2, 3, 'iphone-11-128gb-vang-3-1-org.jpg'),
(4, 2, 4, 'iphone-11-128gb-vang-4-1-org.jpg'),
(4, 2, 5, 'iphone-11-128gb-vang-6-org.jpg'),
(4, 2, 6, 'iphone-11-128gb-vang-7-org.jpg'),
(4, 2, 7, 'iphone-11-128gb-vang-8-org.jpg'),
(4, 2, 8, 'iphone-11-128gb-vang-9-org.jpg'),
(4, 2, 9, 'iphone-11-128gb-vang-10-org.jpg'),
(4, 2, 10, 'iphone-11-128gb-vang-11-org.jpg'),
(4, 2, 11, 'iphone-11-128gb-vang-12-org.jpg'),
(4, 2, 12, 'iphone-11-vang-5-org.jpg'),
(4, 3, 1, 'iphone-11-trang-1-org.jpg'),
(4, 3, 2, 'iphone-11-128gb-trang-2-1-org.jpg'),
(4, 3, 3, 'iphone-11-128gb-trang-3-1-org.jpg'),
(4, 3, 4, 'iphone-11-128gb-trang-4-1-org.jpg'),
(4, 3, 5, 'iphone-11-trang-5-org.jpg'),
(4, 3, 6, 'iphone-11-128gb-trang-6-org.jpg'),
(4, 3, 7, 'iphone-11-128gb-trang-7-org.jpg'),
(4, 3, 8, 'iphone-11-128gb-trang-8-org.jpg'),
(4, 3, 9, 'iphone-11-128gb-trang-9-org.jpg'),
(4, 3, 10, 'iphone-11-128gb-trang-10-org.jpg'),
(4, 3, 11, 'iphone-11-128gb-trang-11-org.jpg'),
(4, 3, 12, 'iphone-11-128gb-trang-12-org.jpg'),
(5, 1, 1, 'iphone-11-256gb-den-1-1-org.jpg'),
(5, 1, 2, 'iphone-11-256gb-den-2-org.jpg'),
(5, 1, 3, 'iphone-11-256gb-den-3-org.jpg'),
(5, 1, 4, 'iphone-11-256gb-den-4-org.jpg'),
(5, 1, 5, 'iphone-11-den-5-org.jpg'),
(5, 1, 6, 'iphone-11-256gb-den-6-org.jpg'),
(5, 1, 7, 'iphone-11-256gb-den-7-org.jpg'),
(5, 1, 8, 'iphone-11-256gb-den-8-org.jpg'),
(5, 1, 9, 'iphone-11-256gb-den-9-org.jpg'),
(5, 1, 10, 'iphone-11-256gb-den-10-org.jpg'),
(5, 1, 11, 'iphone-11-256gb-den-11-org.jpg'),
(5, 2, 1, 'iphone-11-xanh-la-1-org.jpg'),
(5, 2, 2, 'iphone-11-256gb-xanh-la-2-org.jpg'),
(5, 2, 3, 'iphone-11-256gb-xanh-la-3-org.jpg'),
(5, 2, 4, 'iphone-11-256gb-xanh-la-4-org.jpg'),
(5, 2, 5, 'iphone-11-xanh-la-5-org.jpg'),
(5, 2, 6, 'iphone-11-256gb-xanh-la-6-org.jpg'),
(5, 2, 7, 'iphone-11-256gb-xanh-la-7-org.jpg'),
(5, 2, 8, 'iphone-11-256gb-xanh-la-8-org.jpg'),
(5, 2, 9, 'iphone-11-256gb-xanh-la-9-org.jpg'),
(5, 2, 10, 'iphone-11-256gb-xanh-la-10-org.jpg'),
(5, 2, 11, 'iphone-11-256gb-xanh-la-11-org.jpg'),
(5, 2, 12, 'iphone-11-256gb-xanh-la-12-org.jpg'),
(5, 3, 1, 'iphone-11-256gb-trang-1-org.jpg'),
(5, 3, 2, 'iphone-11-256gb-trang-2-org.jpg'),
(5, 3, 3, 'iphone-11-256gb-trang-3-org.jpg'),
(5, 3, 4, 'iphone-11-256gb-trang-4-org.jpg'),
(5, 3, 5, 'iphone-11-256gb-trang-5-org.jpg'),
(5, 3, 7, 'iphone-11-256gb-trang-7-org.jpg'),
(5, 3, 8, 'iphone-11-256gb-trang-8-org.jpg'),
(5, 3, 9, 'iphone-11-256gb-trang-9-org.jpg'),
(5, 3, 10, 'iphone-11-256gb-trang-10-org.jpg'),
(5, 3, 11, 'iphone-11-256gb-trang-11-org.jpg'),
(5, 3, 12, 'iphone-11-256gb-trang-12-org.jpg'),
(5, 1, 12, 'iphone-11-256gb-den-12-org.jpg'),
(8, 1, 2, 'iphone-12-mini-xanh-la-1-1-org.jpg'),
(8, 1, 3, 'iphone-12-mini-xanh-la-2-org.jpg'),
(8, 1, 4, 'iphone-12-mini-xanh-la-3-org.jpg'),
(8, 1, 5, 'iphone-12-mini-xanh-la-4-org.jpg'),
(8, 1, 6, 'iphone-12-mini-xanh-la-5-1-org.jpg'),
(8, 1, 7, 'iphone-12-mini-xanh-la-6-org.jpg'),
(8, 1, 8, 'iphone-12-mini-xanh-la-7-org.jpg'),
(8, 1, 9, 'iphone-12-mini-xanh-la-8-org.jpg'),
(8, 1, 10, 'iphone-12-mini-xanh-la-9-org.jpg'),
(8, 1, 11, 'iphone-12-mini-xanh-la-10-org.jpg'),
(8, 1, 12, 'iphone-12-mini-xanh-la-11-org.jpg'),
(8, 2, 1, 'iphone-12-mini-den-1-1-org.jpg'),
(8, 2, 2, 'iphone-12-mini-den-2-org.jpg'),
(8, 2, 3, 'iphone-12-mini-den-3-org.jpg'),
(8, 2, 4, 'iphone-12-mini-den-4-org.jpg'),
(8, 2, 5, 'iphone-12-mini-den-5-1-org.jpg'),
(8, 2, 6, 'iphone-12-mini-den-6-org.jpg'),
(8, 2, 7, 'iphone-12-mini-den-7-org.jpg'),
(8, 2, 8, 'iphone-12-mini-den-8-org.jpg'),
(8, 2, 9, 'iphone-12-mini-den-9-org.jpg'),
(8, 2, 10, 'iphone-12-mini-den-10-org.jpg'),
(8, 2, 11, 'iphone-12-mini-den-11-org.jpg'),
(8, 2, 12, 'iphone-12-mini-den-12-org.jpg'),
(8, 3, 1, 'iphone-12-mini-trang-1-1-org.jpg'),
(8, 3, 2, 'iphone-12-mini-trang-2-org.jpg'),
(8, 3, 3, 'iphone-12-mini-trang-3-org.jpg'),
(8, 3, 4, 'iphone-12-mini-trang-4-org.jpg'),
(8, 3, 5, 'iphone-12-mini-trang-5-1-org.jpg'),
(8, 3, 6, 'iphone-12-mini-trang-6-org.jpg'),
(8, 3, 7, 'iphone-12-mini-trang-7-org.jpg'),
(8, 3, 8, 'iphone-12-mini-trang-8-org.jpg'),
(8, 3, 9, 'iphone-12-mini-trang-9-org.jpg'),
(8, 3, 10, 'iphone-12-mini-trang-10-org.jpg'),
(8, 3, 11, 'iphone-12-mini-trang-11-org.jpg'),
(8, 3, 12, 'iphone-12-mini-trang-12-org.jpg'),
(8, 4, 1, 'iphone-12-mini-1-1-org.jpg'),
(8, 4, 2, 'iphone-12-mini-2-org.jpg'),
(8, 4, 3, 'iphone-12-mini-3-org.jpg'),
(8, 4, 4, 'iphone-12-mini-4-org.jpg'),
(8, 4, 5, 'iphone-12-mini-5-1-org.jpg'),
(8, 4, 6, 'iphone-12-mini-6-org.jpg'),
(8, 4, 7, 'iphone-12-mini-7-org.jpg'),
(8, 4, 8, 'iphone-12-mini-8-org.jpg'),
(8, 4, 9, 'iphone-12-mini-9-org.jpg'),
(8, 4, 10, 'iphone-12-mini-10-org.jpg'),
(8, 4, 11, 'iphone-12-mini-11-org.jpg'),
(8, 4, 12, 'iphone-12-mini-12-org.jpg'),
(10, 1, 1, 'samsung-galaxy-s21-xam-1-org.jpg'),
(10, 1, 2, 'samsung-galaxy-s21-xam-2-org.jpg'),
(10, 1, 3, 'samsung-galaxy-s21-xam-3-org.jpg'),
(10, 1, 4, 'samsung-galaxy-s21-xam-4-org.jpg'),
(10, 1, 5, 'samsung-galaxy-s21-xam-5-org.jpg'),
(10, 1, 6, 'samsung-galaxy-s21-xam-6-org.jpg'),
(10, 1, 7, 'samsung-galaxy-s21-xam-7-org.jpg'),
(10, 1, 8, 'samsung-galaxy-s21-xam-8-org.jpg'),
(10, 1, 9, 'samsung-galaxy-s21-xam-9-org.jpg'),
(10, 1, 10, 'samsung-galaxy-s21-xam-10-org.jpg'),
(10, 1, 11, 'samsung-galaxy-s21-xam-11-org.jpg'),
(10, 1, 12, 'samsung-galaxy-s21-xam-12-org.jpg'),
(10, 2, 1, 'samsung-galaxy-s21-trang-1-org.jpg'),
(10, 2, 2, 'samsung-galaxy-s21-trang-2-org.jpg'),
(10, 2, 3, 'samsung-galaxy-s21-trang-3-org.jpg'),
(10, 2, 4, 'samsung-galaxy-s21-trang-4-org.jpg'),
(10, 2, 5, 'samsung-galaxy-s21-trang-5-org.jpg'),
(10, 2, 6, 'samsung-galaxy-s21-trang-6-org.jpg'),
(10, 2, 7, 'samsung-galaxy-s21-trang-7-org.jpg'),
(10, 2, 8, 'samsung-galaxy-s21-trang-8-org.jpg'),
(10, 2, 9, 'samsung-galaxy-s21-trang-9-org.jpg'),
(10, 2, 10, 'samsung-galaxy-s21-trang-10-org.jpg'),
(10, 2, 11, 'samsung-galaxy-s21-trang-11-org.jpg'),
(10, 2, 12, 'samsung-galaxy-s21-trang-12-org.jpg'),
(9, 1, 1, 'iphone-xr-den-1-1-org.jpg'),
(9, 1, 2, 'iphone-xr-den-2-org.jpg'),
(9, 1, 3, 'iphone-xr-den-3-org.jpg'),
(9, 1, 4, 'iphone-xr-den-4-org.jpg'),
(9, 1, 5, 'iphone-xr-den-5-org.jpg'),
(9, 1, 6, 'iphone-xr-den-6-org.jpg'),
(9, 1, 7, 'iphone-xr-den-7-org.jpg'),
(9, 1, 8, 'iphone-xr-den-8-org.jpg'),
(9, 1, 9, 'iphone-xr-den-9-org.jpg'),
(9, 1, 10, 'iphone-xr-den-11-org.jpg'),
(9, 1, 11, 'iphone-xr-den-10-org.jpg'),
(9, 3, 1, 'iphone-xr-do-1-1-org.jpg'),
(9, 3, 2, 'iphone-xr-do-2-org.jpg'),
(9, 3, 3, 'iphone-xr-do-3-org.jpg'),
(9, 3, 4, 'iphone-xr-do-4-org.jpg'),
(9, 3, 5, 'iphone-xr-do-5-org.jpg'),
(9, 3, 6, 'iphone-xr-do-6-org.jpg'),
(9, 3, 7, 'iphone-xr-do-7-org.jpg'),
(9, 3, 8, 'iphone-xr-do-8-org.jpg'),
(9, 3, 9, 'iphone-xr-do-9-org.jpg'),
(9, 3, 10, 'iphone-xr-do-10-org.jpg'),
(9, 2, 1, 'iphone-xr-mau-trang-10-org.jpg'),
(9, 2, 2, 'iphone-xr-mau-trang-11-org.jpg'),
(9, 2, 3, 'iphone-xr-mau-trang-12-org.jpg'),
(9, 2, 4, 'iphone-xr-mau-trang-5-org.jpg'),
(9, 2, 5, 'iphone-xr-mau-trang-9-org.jpg'),
(9, 2, 6, 'iphone-xr-mau-trang-1-org.jpg'),
(9, 2, 7, 'iphone-xr-mau-trang-2-org.jpg'),
(9, 2, 8, 'iphone-xr-mau-trang-3-org.jpg'),
(9, 2, 9, 'iphone-xr-mau-trang-4-org.jpg'),
(9, 2, 10, 'iphone-xr-mau-trang-6-org.jpg'),
(9, 2, 11, 'iphone-xr-mau-trang-7-org.jpg'),
(9, 2, 12, 'iphone-xr-mau-trang-8-org.jpg'),
(8, 1, 13, 'iphone-12-mini-xanh-la-12-org.jpg'),
(14, 1, 1, 'iphone-se-2020-note.jpg'),
(14, 1, 2, 'iphone-se-2020-trang-2-org.jpg'),
(14, 1, 3, 'iphone-se-2020-trang-3-org.jpg'),
(14, 1, 4, 'iphone-se-2020-trang-4-org.jpg'),
(14, 1, 5, 'iphone-se-2020-trang-5-1-org.jpg'),
(14, 1, 6, 'iphone-se-2020-trang-6-org.jpg'),
(14, 1, 7, 'iphone-se-2020-trang-7-org.jpg'),
(14, 1, 8, 'iphone-se-2020-trang-8-org.jpg'),
(14, 1, 9, 'iphone-se-2020-trang-9-org.jpg'),
(14, 1, 10, 'iphone-se-2020-trang-10-org.jpg'),
(14, 1, 11, 'iphone-se-2020-trang-11-org.jpg'),
(14, 1, 12, 'iphone-se-2020-trang-12-org.jpg'),
(14, 1, 13, 'iphone-se-2020-trang-13-org.jpg'),
(14, 2, 1, 'iphone-se-2020-do-1-1-org.jpg'),
(14, 2, 2, 'iphone-se-2020-do-2-org.jpg'),
(14, 2, 3, 'iphone-se-2020-do-3-org.jpg'),
(14, 2, 4, 'iphone-se-2020-do-4-org.jpg'),
(14, 2, 5, 'iphone-se-2020-do-5-1-org.jpg'),
(14, 2, 6, 'iphone-se-2020-do-6-org.jpg'),
(14, 2, 7, 'iphone-se-2020-do-7-org.jpg'),
(14, 2, 8, 'iphone-se-2020-do-8-org.jpg'),
(14, 2, 9, 'iphone-se-2020-do-9-org.jpg'),
(14, 2, 10, 'iphone-se-2020-do-10-org.jpg'),
(14, 2, 11, 'iphone-se-2020-do-11-org.jpg'),
(14, 2, 12, 'iphone-se-2020-do-12-org.jpg'),
(14, 2, 13, 'iphone-se-2020-do-13-org.jpg'),
(15, 1, 1, 'samsung-galaxy-a22-4g-den-1-org.jpg'),
(15, 1, 2, 'samsung-galaxy-a22-4g-den-2-org.jpg'),
(15, 1, 3, 'samsung-galaxy-a22-4g-den-3-org.jpg'),
(15, 1, 4, 'samsung-galaxy-a22-4g-den-4-org.jpg'),
(15, 1, 5, 'samsung-galaxy-a22-4g-den-5-org.jpg'),
(15, 1, 6, 'samsung-galaxy-a22-4g-den-6-org.jpg'),
(15, 1, 7, 'samsung-galaxy-a22-4g-den-7-org.jpg'),
(15, 1, 8, 'samsung-galaxy-a22-4g-den-8-org.jpg'),
(15, 1, 9, 'samsung-galaxy-a22-4g-den-9-org.jpg'),
(15, 1, 10, 'samsung-galaxy-a22-4g-den-10-org.jpg'),
(15, 1, 11, 'samsung-galaxy-a22-4g-den-11-org.jpg'),
(15, 1, 12, 'samsung-galaxy-a22-4g-den-12-org.jpg'),
(3, 1, 13, 'iphone-12-den-12-org.jpg'),
(16, 1, 1, 'iphone-12-pro-max-512gb-xam-1-org.jpg'),
(16, 1, 2, 'iphone-12-pro-max-512gb-xam-2-org.jpg'),
(16, 1, 3, 'iphone-12-pro-max-512gb-xam-3-org.jpg'),
(16, 1, 4, 'iphone-12-pro-max-512gb-xam-4-org.jpg'),
(16, 1, 5, 'iphone-12-pro-max-512gb-xam-5-org.jpg'),
(16, 1, 6, 'iphone-12-pro-max-512gb-xam-6-org.jpg'),
(16, 1, 7, 'iphone-12-pro-max-512gb-xam-7-org.jpg'),
(16, 1, 8, 'iphone-12-pro-max-512gb-xam-8-org.jpg'),
(16, 1, 9, 'iphone-12-pro-max-512gb-xam-9-org.jpg'),
(16, 1, 10, 'iphone-12-pro-max-512gb-xam-10-org.jpg'),
(16, 1, 11, 'iphone-12-pro-max-512gb-xam-11-org.jpg'),
(16, 1, 12, 'iphone-12-pro-max-512gb-xam-12-org.jpg'),
(16, 2, 1, 'iphone-12-pro-max-512gb-bac-1-org.jpg'),
(16, 2, 2, 'iphone-12-pro-max-512gb-bac-2-org.jpg'),
(16, 2, 3, 'iphone-12-pro-max-512gb-bac-3-org.jpg'),
(16, 2, 4, 'iphone-12-pro-max-512gb-bac-4-org.jpg'),
(16, 2, 5, 'iphone-12-pro-max-512gb-bac-5-org.jpg'),
(16, 2, 6, 'iphone-12-pro-max-512gb-bac-6-org.jpg'),
(16, 2, 7, 'iphone-12-pro-max-512gb-bac-7-org.jpg'),
(16, 2, 8, 'iphone-12-pro-max-512gb-bac-8-org.jpg'),
(16, 2, 9, 'iphone-12-pro-max-512gb-bac-9-org.jpg'),
(16, 2, 10, 'iphone-12-pro-max-512gb-bac-10-org.jpg'),
(16, 2, 11, 'iphone-12-pro-max-512gb-bac-11-org.jpg'),
(16, 2, 12, 'iphone-12-pro-max-512gb-bac-12-org.jpg'),
(17, 1, 1, 'iphone-12-pro-xam-1-org.jpg'),
(17, 1, 2, 'iphone-12-pro-xam-2-org.jpg'),
(17, 1, 3, 'iphone-12-pro-xam-3-org.jpg'),
(17, 1, 4, 'iphone-12-pro-xam-4-org.jpg'),
(17, 1, 5, 'iphone-12-pro-xam-5-org.jpg'),
(17, 1, 6, 'iphone-12-pro-xam-6-org.jpg'),
(17, 1, 7, 'iphone-12-pro-xam-7-org.jpg'),
(17, 1, 8, 'iphone-12-pro-xam-8-org.jpg'),
(17, 1, 9, 'iphone-12-pro-xam-9-org.jpg'),
(17, 1, 10, 'iphone-12-pro-xam-10-org.jpg'),
(17, 1, 11, 'iphone-12-pro-xam-11-org.jpg'),
(17, 1, 12, 'iphone-12-pro-xam-12-org.jpg'),
(17, 2, 1, 'iphone-12-pro-bac-1-org.jpg'),
(17, 2, 2, 'iphone-12-pro-bac-2-org.jpg'),
(17, 2, 3, 'iphone-12-pro-bac-3-org.jpg'),
(17, 2, 4, 'iphone-12-pro-bac-4-org.jpg'),
(17, 2, 5, 'iphone-12-pro-bac-5-org.jpg'),
(17, 2, 6, 'iphone-12-pro-bac-6-org.jpg'),
(17, 2, 7, 'iphone-12-pro-bac-7-org.jpg'),
(17, 2, 8, 'iphone-12-pro-bac-8-org.jpg'),
(17, 2, 9, 'iphone-12-pro-bac-9-org.jpg'),
(17, 2, 10, 'iphone-12-pro-bac-10-org.jpg'),
(17, 2, 11, 'iphone-12-pro-bac-11-org.jpg'),
(17, 2, 12, 'iphone-12-pro-bac-12-org.jpg'),
(18, 1, 1, 'samsung-galaxy-s21-ultra-bac-1-org.jpg'),
(18, 1, 2, 'samsung-galaxy-s21-ultra-bac-2-org.jpg'),
(18, 1, 3, 'samsung-galaxy-s21-ultra-bac-3-org.jpg'),
(18, 1, 4, 'samsung-galaxy-s21-ultra-bac-4-org.jpg'),
(18, 1, 5, 'samsung-galaxy-s21-ultra-bac-5-org.jpg'),
(18, 1, 6, 'samsung-galaxy-s21-ultra-bac-6-org (1).jpg'),
(18, 1, 7, 'samsung-galaxy-s21-ultra-bac-6-org.jpg'),
(18, 1, 8, 'samsung-galaxy-s21-ultra-bac-7-org.jpg'),
(18, 1, 9, 'samsung-galaxy-s21-ultra-bac-8-org.jpg'),
(18, 1, 10, 'samsung-galaxy-s21-ultra-bac-9-org.jpg'),
(18, 1, 11, 'samsung-galaxy-s21-ultra-bac-10-org.jpg'),
(18, 1, 12, 'samsung-galaxy-s21-ultra-bac-11-org.jpg'),
(18, 1, 13, 'samsung-galaxy-s21-ultra-bac-12-org.jpg'),
(18, 2, 1, 'samsung-galaxy-s21-ultra-den-1-org.jpg'),
(18, 2, 2, 'samsung-galaxy-s21-ultra-den-2-org.jpg'),
(18, 2, 3, 'samsung-galaxy-s21-ultra-den-3-org.jpg'),
(18, 2, 4, 'samsung-galaxy-s21-ultra-den-4-org.jpg'),
(18, 2, 5, 'samsung-galaxy-s21-ultra-den-5-org.jpg'),
(18, 2, 6, 'samsung-galaxy-s21-ultra-den-6-org.jpg'),
(18, 2, 7, 'samsung-galaxy-s21-ultra-den-7-org.jpg'),
(18, 2, 8, 'samsung-galaxy-s21-ultra-den-8-org.jpg'),
(18, 2, 9, 'samsung-galaxy-s21-ultra-den-9-org.jpg'),
(18, 2, 10, 'samsung-galaxy-s21-ultra-den-10-org.jpg'),
(18, 2, 11, 'samsung-galaxy-s21-ultra-den-11-org.jpg'),
(18, 2, 12, 'samsung-galaxy-s21-ultra-den-12-org.jpg'),
(19, 1, 1, 'samsung-galaxy-s21-plus-256gb-bac-1-org.jpg'),
(19, 1, 2, 'samsung-galaxy-s21-plus-256gb-bac-2-org.jpg'),
(19, 1, 3, 'samsung-galaxy-s21-plus-256gb-bac-3-org.jpg'),
(19, 1, 4, 'samsung-galaxy-s21-plus-256gb-bac-4-org.jpg'),
(19, 1, 5, 'samsung-galaxy-s21-plus-256gb-bac-5-org.jpg'),
(19, 1, 6, 'samsung-galaxy-s21-plus-256gb-bac-6-org.jpg'),
(19, 1, 7, 'samsung-galaxy-s21-plus-256gb-bac-7-org.jpg'),
(19, 1, 8, 'samsung-galaxy-s21-plus-256gb-bac-8-org.jpg'),
(19, 1, 9, 'samsung-galaxy-s21-plus-256gb-bac-9-org.jpg'),
(19, 1, 10, 'samsung-galaxy-s21-plus-256gb-bac-10-org.jpg'),
(19, 1, 11, 'samsung-galaxy-s21-plus-256gb-bac-11-org.jpg'),
(19, 1, 12, 'samsung-galaxy-s21-plus-256gb-bac-12-org.jpg'),
(19, 2, 1, 'samsung-galaxy-s21-plus-256gb-den-1-org.jpg'),
(19, 2, 2, 'samsung-galaxy-s21-plus-256gb-den-2-org.jpg'),
(19, 2, 3, 'samsung-galaxy-s21-plus-256gb-den-3-org.jpg'),
(19, 2, 4, 'samsung-galaxy-s21-plus-256gb-den-4-org.jpg'),
(19, 2, 5, 'samsung-galaxy-s21-plus-256gb-den-5-org.jpg'),
(19, 2, 6, 'samsung-galaxy-s21-plus-256gb-den-6-org.jpg'),
(19, 2, 7, 'samsung-galaxy-s21-plus-256gb-den-7-org.jpg'),
(19, 2, 8, 'samsung-galaxy-s21-plus-256gb-den-8-org.jpg'),
(19, 2, 9, 'samsung-galaxy-s21-plus-256gb-den-9-org.jpg'),
(19, 2, 10, 'samsung-galaxy-s21-plus-256gb-den-10-org.jpg'),
(19, 2, 11, 'samsung-galaxy-s21-plus-256gb-den-11-org.jpg'),
(19, 2, 12, 'samsung-galaxy-s21-plus-256gb-den-12-org.jpg'),
(21, 1, 1, 'samsung-galaxy-note-20-xam-1-org.jpg'),
(21, 1, 2, 'samsung-galaxy-note-20-xam-2-org.jpg'),
(21, 1, 3, 'samsung-galaxy-note-20-xam-3-org.jpg'),
(21, 1, 4, 'samsung-galaxy-note-20-xam-4-org.jpg'),
(21, 1, 5, 'samsung-galaxy-note-20-xam-5-org.jpg'),
(21, 1, 6, 'samsung-galaxy-note-20-xam-6-org.jpg'),
(21, 1, 7, 'samsung-galaxy-note-20-xam-7-org.jpg'),
(21, 1, 8, 'samsung-galaxy-note-20-xam-8-org.jpg'),
(21, 1, 9, 'samsung-galaxy-note-20-xam-9-org.jpg'),
(21, 1, 10, 'samsung-galaxy-note-20-xam-10-org.jpg'),
(21, 1, 11, 'samsung-galaxy-note-20-xam-11-org.jpg'),
(21, 1, 12, 'samsung-galaxy-note-20-xam-12-org.jpg'),
(21, 1, 13, 'samsung-galaxy-note-20-xam-13-org.jpg'),
(21, 1, 14, 'samsung-galaxy-note-20-xam-14-org.jpg'),
(21, 1, 15, 'samsung-galaxy-note-20-xam-15-org.jpg'),
(21, 2, 1, 'samsung-galaxy-note-20-xanh-la-1-org.jpg'),
(21, 2, 2, 'samsung-galaxy-note-20-xanh-la-2-org.jpg'),
(21, 2, 3, 'samsung-galaxy-note-20-xanh-la-3-org.jpg'),
(21, 2, 4, 'samsung-galaxy-note-20-xanh-la-4-org.jpg'),
(21, 2, 5, 'samsung-galaxy-note-20-xanh-la-5-org.jpg'),
(21, 2, 6, 'samsung-galaxy-note-20-xanh-la-6-org.jpg'),
(21, 2, 7, 'samsung-galaxy-note-20-xanh-la-7-org.jpg'),
(21, 2, 8, 'samsung-galaxy-note-20-xanh-la-8-org.jpg'),
(21, 2, 9, 'samsung-galaxy-note-20-xanh-la-9-org.jpg'),
(21, 2, 10, 'samsung-galaxy-note-20-xanh-la-10-org.jpg'),
(21, 2, 11, 'samsung-galaxy-note-20-xanh-la-11-org.jpg'),
(21, 2, 12, 'samsung-galaxy-note-20-xanh-la-12-org.jpg'),
(21, 2, 13, 'samsung-galaxy-note-20-xanh-la-13-org.jpg'),
(21, 2, 14, 'samsung-galaxy-note-20-xanh-la-14-org.jpg'),
(21, 3, 1, 'samsung-galaxy-note-20-vang-dong-1-org.jpg'),
(21, 3, 2, 'samsung-galaxy-note-20-vang-dong-2-org.jpg'),
(21, 3, 3, 'samsung-galaxy-note-20-vang-dong-3-org.jpg'),
(21, 3, 4, 'samsung-galaxy-note-20-vang-dong-4-org.jpg'),
(21, 3, 5, 'samsung-galaxy-note-20-vang-dong-5-org.jpg'),
(21, 3, 6, 'samsung-galaxy-note-20-vang-dong-6-org.jpg'),
(21, 3, 7, 'samsung-galaxy-note-20-vang-dong-7-org.jpg'),
(21, 3, 8, 'samsung-galaxy-note-20-vang-dong-8-org.jpg'),
(21, 3, 9, 'samsung-galaxy-note-20-vang-dong-9-org.jpg'),
(21, 3, 10, 'samsung-galaxy-note-20-vang-dong-10-org.jpg'),
(21, 3, 11, 'samsung-galaxy-note-20-vang-dong-11-org.jpg'),
(21, 3, 12, 'samsung-galaxy-note-20-vang-dong-12-org.jpg'),
(21, 3, 13, 'samsung-galaxy-note-20-vang-dong-13-org.jpg'),
(21, 3, 14, 'samsung-galaxy-note-20-vang-dong-14-org.jpg'),
(23, 1, 1, 'samsung-galaxy-s20-fan-edition-xanh-duong-1-org.jpg'),
(23, 1, 2, 'samsung-galaxy-s20-fan-edition-xanh-duong-2-org.jpg'),
(23, 1, 3, 'samsung-galaxy-s20-fan-edition-xanh-duong-3-org.jpg'),
(23, 1, 4, 'samsung-galaxy-s20-fan-edition-xanh-duong-4-org.jpg'),
(23, 1, 5, 'samsung-galaxy-s20-fan-edition-xanh-duong-5-org.jpg'),
(23, 1, 6, 'samsung-galaxy-s20-fan-edition-xanh-duong-6-org.jpg'),
(23, 1, 7, 'samsung-galaxy-s20-fan-edition-xanh-duong-7-org.jpg'),
(23, 1, 8, 'samsung-galaxy-s20-fan-edition-xanh-duong-8-org.jpg'),
(23, 1, 9, 'samsung-galaxy-s20-fan-edition-xanh-duong-9-org.jpg'),
(23, 1, 10, 'samsung-galaxy-s20-fan-edition-xanh-duong-10-org.jpg'),
(23, 2, 1, 'samsung-galaxy-s20-fan-edition-xanh-la-1-org.jpg'),
(23, 2, 2, 'samsung-galaxy-s20-fan-edition-xanh-la-2-org.jpg'),
(23, 2, 3, 'samsung-galaxy-s20-fan-edition-xanh-la-3-org.jpg'),
(23, 2, 4, 'samsung-galaxy-s20-fan-edition-xanh-la-4-org.jpg'),
(23, 2, 5, 'samsung-galaxy-s20-fan-edition-xanh-la-5-org.jpg'),
(23, 2, 6, 'samsung-galaxy-s20-fan-edition-xanh-la-6-org.jpg'),
(23, 2, 7, 'samsung-galaxy-s20-fan-edition-xanh-la-7-org.jpg'),
(23, 2, 8, 'samsung-galaxy-s20-fan-edition-xanh-la-8-org.jpg'),
(23, 2, 9, 'samsung-galaxy-s20-fan-edition-xanh-la-9-org.jpg'),
(23, 2, 10, 'samsung-galaxy-s20-fan-edition-xanh-la-10-org.jpg'),
(23, 2, 11, 'samsung-galaxy-s20-fan-edition-xanh-la-11-org.jpg'),
(23, 2, 12, 'samsung-galaxy-s20-fan-edition-xanh-la-12-org.jpg'),
(25, 1, 1, 'samsung-galaxy-a72-trang-1-org.jpg'),
(25, 1, 2, 'samsung-galaxy-a72-trang-2-org.jpg'),
(25, 1, 3, 'samsung-galaxy-a72-trang-3-org.jpg'),
(25, 1, 4, 'samsung-galaxy-a72-trang-4-org.jpg'),
(25, 1, 5, 'samsung-galaxy-a72-trang-5-org.jpg'),
(25, 1, 6, 'samsung-galaxy-a72-trang-6-org.jpg'),
(25, 1, 7, 'samsung-galaxy-a72-trang-7-org.jpg'),
(25, 1, 8, 'samsung-galaxy-a72-trang-8-org.jpg'),
(25, 1, 9, 'samsung-galaxy-a72-trang-9-org.jpg'),
(25, 1, 10, 'samsung-galaxy-a72-trang-10-org.jpg'),
(25, 1, 11, 'samsung-galaxy-a72-trang-11-org.jpg'),
(25, 1, 12, 'samsung-galaxy-a72-trang-12-org.jpg'),
(25, 3, 1, 'samsung-galaxy-a72-1-org.jpg'),
(25, 3, 2, 'samsung-galaxy-a72-2-org.jpg'),
(25, 3, 3, 'samsung-galaxy-a72-3-org.jpg'),
(25, 3, 4, 'samsung-galaxy-a72-4-org.jpg'),
(25, 3, 5, 'samsung-galaxy-a72-5-org.jpg'),
(25, 3, 6, 'samsung-galaxy-a72-6-org.jpg'),
(25, 3, 7, 'samsung-galaxy-a72-7-org.jpg'),
(25, 3, 8, 'samsung-galaxy-a72-8-org.jpg'),
(25, 3, 9, 'samsung-galaxy-a72-9-org.jpg'),
(25, 3, 10, 'samsung-galaxy-a72-10-org.jpg'),
(25, 3, 11, 'samsung-galaxy-a72-11-org.jpg'),
(25, 3, 12, 'samsung-galaxy-a72-12-org.jpg'),
(25, 4, 1, 'samsung-galaxy-a72-1-1-org.jpg'),
(25, 4, 2, 'samsung-galaxy-a72-2-1-org.jpg'),
(25, 4, 3, 'samsung-galaxy-a72-3-1-org.jpg'),
(25, 4, 4, 'samsung-galaxy-a72-4-1-org.jpg'),
(25, 4, 5, 'samsung-galaxy-a72-5-1-org.jpg'),
(25, 4, 6, 'samsung-galaxy-a72-6-1-org.jpg'),
(25, 4, 7, 'samsung-galaxy-a72-7-1-org.jpg'),
(25, 4, 8, 'samsung-galaxy-a72-8-1-org.jpg'),
(25, 4, 9, 'samsung-galaxy-a72-9-1-org.jpg'),
(25, 4, 10, 'samsung-galaxy-a72-10-1-org.jpg'),
(25, 4, 11, 'samsung-galaxy-a72-11-1-org.jpg'),
(25, 4, 12, 'samsung-galaxy-a72-12-1-org.jpg'),
(26, 1, 1, 'samsung-galaxy-a52-5g-den-1-org.jpg'),
(26, 1, 2, 'samsung-galaxy-a52-5g-den-2-org.jpg'),
(26, 1, 3, 'samsung-galaxy-a52-5g-den-3-org.jpg'),
(26, 1, 4, 'samsung-galaxy-a52-5g-den-4-org.jpg'),
(26, 1, 5, 'samsung-galaxy-a52-5g-den-5-org.jpg'),
(26, 1, 6, 'samsung-galaxy-a52-5g-den-6-org.jpg'),
(26, 1, 7, 'samsung-galaxy-a52-5g-den-7-org.jpg'),
(26, 1, 8, 'samsung-galaxy-a52-5g-den-8-org.jpg'),
(26, 1, 9, 'samsung-galaxy-a52-5g-den-9-org.jpg'),
(26, 1, 10, 'samsung-galaxy-a52-5g-den-10-org.jpg'),
(26, 1, 11, 'samsung-galaxy-a52-5g-den-11-org.jpg'),
(26, 1, 12, 'samsung-galaxy-a52-5g-den-12-org.jpg'),
(26, 2, 1, 'samsung-galaxy-a52-5g-xanh-duong-1-org.jpg'),
(26, 2, 2, 'samsung-galaxy-a52-5g-xanh-duong-2-org.jpg'),
(26, 2, 3, 'samsung-galaxy-a52-5g-xanh-duong-3-org.jpg'),
(26, 2, 4, 'samsung-galaxy-a52-5g-xanh-duong-4-org.jpg'),
(26, 2, 5, 'samsung-galaxy-a52-5g-xanh-duong-5-org.jpg'),
(26, 2, 6, 'samsung-galaxy-a52-5g-xanh-duong-6-org.jpg'),
(26, 2, 7, 'samsung-galaxy-a52-5g-xanh-duong-7-org.jpg'),
(26, 2, 8, 'samsung-galaxy-a52-5g-xanh-duong-8-org.jpg'),
(26, 2, 9, 'samsung-galaxy-a52-5g-xanh-duong-9-org.jpg'),
(26, 2, 10, 'samsung-galaxy-a52-5g-xanh-duong-10-org.jpg'),
(26, 2, 11, 'samsung-galaxy-a52-5g-xanh-duong-11-org.jpg'),
(26, 2, 12, 'samsung-galaxy-a52-5g-xanh-duong-12-org.jpg'),
(27, 1, 1, 'galaxym51-white-1020x680-org.jpg'),
(27, 1, 2, 'samsung-galaxy-m51-trang-2-org.jpg'),
(27, 1, 3, 'samsung-galaxy-m51-trang-3-org.jpg'),
(27, 1, 4, 'samsung-galaxy-m51-trang-4-org.jpg'),
(27, 1, 5, 'samsung-galaxy-m51-trang-5-org.jpg'),
(27, 1, 6, 'samsung-galaxy-m51-trang-6-org.jpg'),
(27, 1, 7, 'samsung-galaxy-m51-trang-7-org.jpg'),
(27, 1, 8, 'samsung-galaxy-m51-trang-8-org.jpg'),
(27, 1, 9, 'samsung-galaxy-m51-trang-9-org.jpg'),
(27, 1, 10, 'samsung-galaxy-m51-trang-10-org.jpg'),
(27, 1, 11, 'samsung-galaxy-m51-trang-11-org.jpg'),
(27, 1, 12, 'samsung-galaxy-m51-trang-12-org.jpg'),
(27, 2, 1, 'galaxym51-black-1020x680-org.jpg'),
(27, 2, 2, 'samsung-galaxy-m51-den-2-org.jpg'),
(27, 2, 3, 'samsung-galaxy-m51-den-3-org.jpg'),
(27, 2, 4, 'samsung-galaxy-m51-den-4-org.jpg'),
(27, 2, 5, 'samsung-galaxy-m51-den-5-org.jpg'),
(27, 2, 6, 'samsung-galaxy-m51-den-6-org.jpg'),
(27, 2, 7, 'samsung-galaxy-m51-den-7-org.jpg'),
(27, 2, 8, 'samsung-galaxy-m51-den-8-org.jpg'),
(27, 2, 9, 'samsung-galaxy-m51-den-9-org.jpg'),
(27, 2, 10, 'samsung-galaxy-m51-den-10-org.jpg'),
(27, 2, 11, 'samsung-galaxy-m51-den-11-org.jpg'),
(27, 2, 12, 'samsung-galaxy-m51-den-12-org.jpg'),
(28, 1, 1, 'samsung-galaxy-a51-xanh-ngoc-1-org.jpg'),
(28, 1, 2, 'samsung-galaxy-a51-xanh-ngoc-2-org.jpg'),
(28, 1, 3, 'samsung-galaxy-a51-xanh-ngoc-3-org.jpg'),
(28, 1, 4, 'samsung-galaxy-a51-xanh-ngoc-4-org.jpg'),
(28, 1, 5, 'samsung-galaxy-a51-xanh-ngoc-5-org.jpg'),
(28, 1, 6, 'samsung-galaxy-a51-xanh-ngoc-6-org.jpg'),
(28, 1, 7, 'samsung-galaxy-a51-xanh-ngoc-7-org.jpg'),
(28, 1, 8, 'samsung-galaxy-a51-xanh-ngoc-8-org.jpg'),
(28, 1, 9, 'samsung-galaxy-a51-xanh-ngoc-9-org.jpg'),
(28, 1, 10, 'samsung-galaxy-a51-xanh-ngoc-10-org.jpg'),
(28, 1, 11, 'samsung-galaxy-a51-xanh-ngoc-11-org.jpg'),
(28, 1, 12, 'samsung-galaxy-a51-xanh-ngoc-12-org.jpg'),
(28, 2, 1, 'samsung-galaxy-a51-bac-inox-1-org.jpg'),
(28, 2, 2, 'samsung-galaxy-a51-bac-inox-2-org.jpg'),
(28, 2, 3, 'samsung-galaxy-a51-bac-inox-3-org.jpg'),
(28, 2, 4, 'samsung-galaxy-a51-bac-inox-4-org.jpg'),
(28, 2, 5, 'samsung-galaxy-a51-bac-inox-5-org.jpg'),
(28, 2, 6, 'samsung-galaxy-a51-bac-inox-6-org.jpg'),
(28, 2, 7, 'samsung-galaxy-a51-bac-inox-7-org.jpg'),
(28, 2, 8, 'samsung-galaxy-a51-bac-inox-8-org.jpg'),
(28, 2, 9, 'samsung-galaxy-a51-bac-inox-9-org.jpg'),
(28, 2, 10, 'samsung-galaxy-a51-bac-inox-10-org.jpg'),
(28, 2, 11, 'samsung-galaxy-a51-bac-inox-11-org.jpg'),
(28, 2, 12, 'samsung-galaxy-a51-bac-inox-12-org.jpg'),
(28, 3, 1, 'samsung-galaxy-a51-den-1-org.jpg'),
(28, 3, 2, 'samsung-galaxy-a51-den-2-org.jpg'),
(28, 3, 3, 'samsung-galaxy-a51-den-3-org.jpg'),
(28, 3, 4, 'samsung-galaxy-a51-den-4-org.jpg'),
(28, 3, 5, 'samsung-galaxy-a51-den-5-org.jpg'),
(28, 3, 6, 'samsung-galaxy-a51-den-6-org.jpg'),
(28, 3, 7, 'samsung-galaxy-a51-den-7-org.jpg'),
(28, 3, 8, 'samsung-galaxy-a51-den-8-1-org.jpg'),
(28, 3, 9, 'samsung-galaxy-a51-den-9-org.jpg'),
(28, 3, 10, 'samsung-galaxy-a51-den-10-org.jpg'),
(28, 3, 11, 'samsung-galaxy-a51-den-11-org.jpg'),
(28, 3, 12, 'samsung-galaxy-a51-den-12-org.jpg'),
(28, 4, 1, 'samsung-galaxy-a51-trang-1-org.jpg'),
(28, 4, 2, 'samsung-galaxy-a51-trang-2-org.jpg'),
(28, 4, 3, 'samsung-galaxy-a51-trang-3-org.jpg'),
(28, 4, 4, 'samsung-galaxy-a51-trang-4-org.jpg'),
(28, 4, 5, 'samsung-galaxy-a51-trang-5-org.jpg'),
(28, 4, 6, 'samsung-galaxy-a51-trang-6-org.jpg'),
(28, 4, 7, 'samsung-galaxy-a51-trang-7-org.jpg'),
(28, 4, 8, 'samsung-galaxy-a51-trang-8-org.jpg'),
(28, 4, 9, 'samsung-galaxy-a51-trang-9-org.jpg'),
(28, 4, 10, 'samsung-galaxy-a51-trang-10-org.jpg'),
(28, 4, 11, 'samsung-galaxy-a51-trang-11-org.jpg'),
(28, 4, 12, 'samsung-galaxy-a51-trang-12-org.jpg'),
(29, 1, 1, 'samsung-galaxy-a32-4g-den-1-org.jpg'),
(29, 1, 2, 'samsung-galaxy-a32-4g-den-2-org.jpg'),
(29, 1, 3, 'samsung-galaxy-a32-4g-den-3-org.jpg'),
(29, 1, 4, 'samsung-galaxy-a32-4g-den-4-org.jpg'),
(29, 1, 5, 'samsung-galaxy-a32-4g-den-5-org.jpg'),
(29, 1, 6, 'samsung-galaxy-a32-4g-den-6-org.jpg'),
(29, 1, 7, 'samsung-galaxy-a32-4g-den-7-org.jpg'),
(29, 1, 8, 'samsung-galaxy-a32-4g-den-8-org.jpg'),
(29, 1, 9, 'samsung-galaxy-a32-4g-den-9-org.jpg'),
(29, 1, 10, 'samsung-galaxy-a32-4g-den-10-org.jpg'),
(29, 1, 11, 'samsung-galaxy-a32-4g-den-11-1-org.jpg'),
(29, 1, 12, 'samsung-galaxy-a32-4g-den-12-org.jpg'),
(29, 2, 1, 'samsung-galaxy-a32-4g-trang-1-org.jpg'),
(29, 2, 2, 'samsung-galaxy-a32-4g-trang-2-org.jpg'),
(29, 2, 3, 'samsung-galaxy-a32-4g-trang-3-org.jpg'),
(29, 2, 4, 'samsung-galaxy-a32-4g-trang-4-org.jpg'),
(29, 2, 5, 'samsung-galaxy-a32-4g-trang-5-org.jpg'),
(29, 2, 6, 'samsung-galaxy-a32-4g-trang-6-org.jpg'),
(29, 2, 7, 'samsung-galaxy-a32-4g-trang-7-org.jpg'),
(29, 2, 8, 'samsung-galaxy-a32-4g-trang-8-org.jpg'),
(29, 2, 9, 'samsung-galaxy-a32-4g-trang-9-org.jpg'),
(29, 2, 10, 'samsung-galaxy-a32-4g-trang-10-org.jpg'),
(29, 2, 11, 'samsung-galaxy-a32-4g-trang-11-org.jpg'),
(29, 2, 12, 'samsung-galaxy-a32-4g-trang-12-org.jpg'),
(29, 3, 1, 'samsung-galaxy-a32-4g-tim-1-org.jpg'),
(29, 3, 2, 'samsung-galaxy-a32-4g-tim-2-org.jpg'),
(29, 3, 3, 'samsung-galaxy-a32-4g-tim-3-org.jpg'),
(29, 3, 4, 'samsung-galaxy-a32-4g-tim-4-org.jpg'),
(29, 3, 5, 'samsung-galaxy-a32-4g-tim-5-org.jpg'),
(29, 3, 6, 'samsung-galaxy-a32-4g-tim-6-org.jpg'),
(29, 3, 7, 'samsung-galaxy-a32-4g-tim-7-org.jpg'),
(29, 3, 8, 'samsung-galaxy-a32-4g-tim-8-org.jpg'),
(29, 3, 9, 'samsung-galaxy-a32-4g-tim-9-org.jpg'),
(29, 3, 10, 'samsung-galaxy-a32-4g-tim-10-org.jpg'),
(29, 3, 11, 'samsung-galaxy-a32-4g-tim-11-org.jpg'),
(29, 3, 12, 'samsung-galaxy-a32-4g-tim-12-org.jpg'),
(30, 1, 1, 'oppo-reno5-bac-1-org.jpg'),
(30, 1, 2, 'oppo-reno5-bac-2-org.jpg'),
(30, 1, 3, 'oppo-reno5-bac-3-org.jpg'),
(30, 1, 4, 'oppo-reno5-bac-4-org.jpg'),
(30, 1, 5, 'oppo-reno5-bac-5-org.jpg'),
(30, 1, 6, 'oppo-reno5-bac-6-org.jpg'),
(30, 1, 7, 'oppo-reno5-bac-7-org.jpg'),
(30, 1, 8, 'oppo-reno5-bac-8-org.jpg'),
(30, 1, 9, 'oppo-reno5-bac-9-org.jpg'),
(30, 1, 10, 'oppo-reno5-bac-10-org.jpg'),
(30, 1, 11, 'oppo-reno5-bac-11-org.jpg'),
(30, 1, 12, 'oppo-reno5-bac-12-org.jpg'),
(30, 1, 13, 'oppo-reno5-bac-13-org.jpg'),
(30, 2, 1, 'oppo-reno5-den-1-org.jpg'),
(30, 2, 2, 'oppo-reno5-den-2-org.jpg'),
(30, 2, 3, 'oppo-reno5-den-3-org.jpg'),
(30, 2, 4, 'oppo-reno5-den-4-org.jpg'),
(30, 2, 5, 'oppo-reno5-den-5-org.jpg'),
(30, 2, 6, 'oppo-reno5-den-6-org.jpg'),
(30, 2, 7, 'oppo-reno5-den-7-org.jpg'),
(30, 2, 8, 'oppo-reno5-den-8-org.jpg'),
(30, 2, 9, 'oppo-reno5-den-9-org.jpg'),
(30, 2, 10, 'oppo-reno5-den-10-org.jpg'),
(30, 2, 11, 'oppo-reno5-den-11-org.jpg'),
(30, 2, 12, 'oppo-reno5-den-12-org.jpg'),
(30, 2, 13, 'oppo-reno5-den-13-org.jpg'),
(31, 1, 1, 'oppo-find-x3-pro-den-1-org.jpg'),
(31, 1, 2, 'oppo-find-x3-pro-den-2-org.jpg'),
(31, 1, 3, 'oppo-find-x3-pro-den-3-org.jpg'),
(31, 1, 4, 'oppo-find-x3-pro-den-4-org.jpg'),
(31, 1, 5, 'oppo-find-x3-pro-den-5-org.jpg'),
(31, 1, 6, 'oppo-find-x3-pro-den-6-org.jpg'),
(31, 1, 7, 'oppo-find-x3-pro-den-7-org.jpg'),
(31, 1, 8, 'oppo-find-x3-pro-den-8-org.jpg'),
(31, 1, 9, 'oppo-find-x3-pro-den-9-org.jpg'),
(31, 1, 10, 'oppo-find-x3-pro-den-10-org.jpg'),
(31, 1, 11, 'oppo-find-x3-pro-den-11-org.jpg'),
(31, 1, 12, 'oppo-find-x3-pro-den-12-org.jpg'),
(31, 1, 13, 'oppo-find-x3-pro-den-13-org.jpg'),
(31, 2, 2, 'oppo-find-x3-pro-xanh-1-org.jpg'),
(31, 2, 3, 'oppo-find-x3-pro-xanh-2-org.jpg'),
(31, 2, 4, 'oppo-find-x3-pro-xanh-3-org.jpg'),
(31, 2, 5, 'oppo-find-x3-pro-xanh-4-org.jpg'),
(31, 2, 6, 'oppo-find-x3-pro-xanh-5-org.jpg'),
(31, 2, 7, 'oppo-find-x3-pro-xanh-6-org.jpg'),
(31, 2, 8, 'oppo-find-x3-pro-xanh-7-org.jpg'),
(31, 2, 9, 'oppo-find-x3-pro-xanh-8-org.jpg'),
(31, 2, 10, 'oppo-find-x3-pro-xanh-9-org.jpg'),
(31, 2, 11, 'oppo-find-x3-pro-xanh-10-org.jpg'),
(31, 2, 12, 'oppo-find-x3-pro-xanh-11-org.jpg'),
(31, 2, 13, 'oppo-find-x3-pro-xanh-12-org.jpg'),
(31, 2, 14, 'oppo-find-x3-pro-xanh-13-org.jpg'),
(32, 1, 1, 'oppo-a74-den-1-org.jpg'),
(32, 1, 2, 'oppo-a74-den-2-org.jpg'),
(32, 1, 3, 'oppo-a74-den-3-org.jpg'),
(32, 1, 4, 'oppo-a74-den-4-org.jpg'),
(32, 1, 5, 'oppo-a74-den-5-org.jpg'),
(32, 1, 6, 'oppo-a74-den-6-org.jpg'),
(32, 1, 7, 'oppo-a74-den-7-org.jpg'),
(32, 1, 8, 'oppo-a74-den-8-org.jpg'),
(32, 1, 9, 'oppo-a74-den-9-org.jpg'),
(32, 1, 10, 'oppo-a74-den-10-org.jpg'),
(32, 1, 11, 'oppo-a74-den-11-org.jpg'),
(32, 1, 12, 'oppo-a74-den-12-org.jpg'),
(32, 1, 13, 'oppo-a74-den-13-org.jpg'),
(32, 2, 1, 'oppo-a74-xanh-duong-1-org.jpg'),
(32, 2, 2, 'oppo-a74-xanh-duong-2-org.jpg'),
(32, 2, 3, 'oppo-a74-xanh-duong-3-org.jpg'),
(32, 2, 4, 'oppo-a74-xanh-duong-4-1-org.jpg'),
(32, 2, 5, 'oppo-a74-xanh-duong-5-org.jpg'),
(32, 2, 6, 'oppo-a74-xanh-duong-6-org.jpg'),
(32, 2, 7, 'oppo-a74-xanh-duong-7-org.jpg'),
(32, 2, 8, 'oppo-a74-xanh-duong-8-org.jpg'),
(32, 2, 9, 'oppo-a74-xanh-duong-9-org.jpg'),
(32, 2, 10, 'oppo-a74-xanh-duong-10-org.jpg'),
(32, 2, 11, 'oppo-a74-xanh-duong-11-org.jpg'),
(32, 2, 12, 'oppo-a74-xanh-duong-12-org.jpg'),
(32, 2, 13, 'oppo-a74-xanh-duong-13-org.jpg'),
(33, 1, 1, 'oppo-reno4-pro-trang-1-org.jpg'),
(33, 1, 2, 'oppo-reno4-pro-trang-2-org.jpg'),
(33, 1, 3, 'oppo-reno4-pro-trang-3-org.jpg'),
(33, 1, 4, 'oppo-reno4-pro-trang-4-org.jpg'),
(33, 1, 5, 'oppo-reno4-pro-trang-5-org.jpg'),
(33, 1, 6, 'oppo-reno4-pro-trang-6-org.jpg'),
(33, 1, 7, 'oppo-reno4-pro-trang-7-org.jpg'),
(33, 1, 8, 'oppo-reno4-pro-trang-8-org.jpg'),
(33, 1, 9, 'oppo-reno4-pro-trang-9-org.jpg'),
(33, 1, 10, 'oppo-reno4-pro-trang-10-org.jpg'),
(33, 1, 11, 'oppo-reno4-pro-trang-11-org.jpg'),
(33, 1, 12, 'oppo-reno4-pro-trang-12-org.jpg'),
(33, 1, 13, 'oppo-reno4-pro-trang-13-org.jpg'),
(33, 2, 1, 'oppo-reno4-pro-den-1-org.jpg'),
(33, 2, 2, 'oppo-reno4-pro-den-2-org.jpg'),
(33, 2, 3, 'oppo-reno4-pro-den-3-org.jpg'),
(33, 2, 4, 'oppo-reno4-pro-den-4-org.jpg'),
(33, 2, 5, 'oppo-reno4-pro-den-5-org.jpg'),
(33, 2, 6, 'oppo-reno4-pro-den-6-org.jpg'),
(33, 2, 7, 'oppo-reno4-pro-den-7-org.jpg'),
(33, 2, 8, 'oppo-reno4-pro-den-8-org.jpg'),
(33, 2, 9, 'oppo-reno4-pro-den-9-org.jpg'),
(33, 2, 10, 'oppo-reno4-pro-den-10-org.jpg'),
(33, 2, 11, 'oppo-reno4-pro-den-11-org.jpg'),
(33, 2, 12, 'oppo-reno4-pro-den-12-org.jpg'),
(33, 2, 13, 'oppo-reno4-pro-den-13-org.jpg'),
(34, 1, 1, 'oppo-a94-den-1-org.jpg'),
(34, 1, 2, 'oppo-a94-den-2-org.jpg'),
(34, 1, 3, 'oppo-a94-den-3-org.jpg'),
(34, 1, 4, 'oppo-a94-den-4-org.jpg'),
(34, 1, 5, 'oppo-a94-den-5-org.jpg'),
(34, 1, 6, 'oppo-a94-den-6-org.jpg'),
(34, 1, 7, 'oppo-a94-den-7-org.jpg'),
(34, 1, 8, 'oppo-a94-den-8-org.jpg'),
(34, 1, 9, 'oppo-a94-den-9-org.jpg'),
(34, 1, 10, 'oppo-a94-den-10-org.jpg'),
(34, 1, 11, 'oppo-a94-den-11-org.jpg'),
(34, 1, 12, 'oppo-a94-den-12-org.jpg'),
(34, 1, 13, 'oppo-a94-den-13-org.jpg'),
(34, 2, 1, 'oppo-a94-tim-1-org.jpg'),
(34, 2, 2, 'oppo-a94-tim-2-org.jpg'),
(34, 2, 3, 'oppo-a94-tim-3-org.jpg'),
(34, 2, 4, 'oppo-a94-tim-4-org.jpg'),
(34, 2, 5, 'oppo-a94-tim-5-org.jpg'),
(34, 2, 6, 'oppo-a94-tim-6-org.jpg'),
(34, 2, 7, 'oppo-a94-tim-7-org.jpg'),
(34, 2, 8, 'oppo-a94-tim-8-org.jpg'),
(34, 2, 9, 'oppo-a94-tim-9-org.jpg'),
(34, 2, 10, 'oppo-a94-tim-10-org.jpg'),
(34, 2, 11, 'oppo-a94-tim-11-org.jpg'),
(34, 2, 12, 'oppo-a94-tim-12-org.jpg'),
(34, 2, 13, 'oppo-a94-tim-13-org.jpg'),
(35, 1, 1, 'oppo-a93-den-1-org.jpg'),
(35, 1, 2, 'oppo-a93-den-2-org.jpg'),
(35, 1, 3, 'oppo-a93-den-3-org.jpg'),
(35, 1, 4, 'oppo-a93-den-4-org.jpg'),
(35, 1, 5, 'oppo-a93-den-5-org.jpg'),
(35, 1, 6, 'oppo-a93-den-6-org.jpg'),
(35, 1, 7, 'oppo-a93-den-7-org.jpg'),
(35, 1, 8, 'oppo-a93-den-8-org.jpg'),
(35, 1, 9, 'oppo-a93-den-9-org.jpg'),
(35, 1, 10, 'oppo-a93-den-10-org.jpg'),
(35, 1, 11, 'oppo-a93-den-11-org.jpg'),
(35, 1, 12, 'oppo-a93-den-12-org.jpg'),
(35, 1, 13, 'oppo-a93-den-13-org.jpg'),
(35, 2, 1, 'oppo-a93-trang-1-org.jpg'),
(35, 2, 2, 'oppo-a93-trang-2-org.jpg'),
(35, 2, 3, 'oppo-a93-trang-3-org.jpg'),
(35, 2, 4, 'oppo-a93-trang-4-org.jpg'),
(35, 2, 5, 'oppo-a93-trang-5-org.jpg'),
(35, 2, 6, 'oppo-a93-trang-6-org.jpg'),
(35, 2, 7, 'oppo-a93-trang-7-org.jpg'),
(35, 2, 8, 'oppo-a93-trang-8-org.jpg'),
(35, 2, 9, 'oppo-a93-trang-9-org.jpg'),
(35, 2, 10, 'oppo-a93-trang-10-org.jpg'),
(35, 2, 11, 'oppo-a93-trang-11-org.jpg'),
(35, 2, 12, 'oppo-a93-trang-12-org.jpg'),
(35, 2, 13, 'oppo-a93-trang-13-org.jpg'),
(36, 1, 1, 'oppo-a54-xanh-duong-1-org.jpg'),
(36, 1, 2, 'oppo-a54-xanh-duong-2-org.jpg'),
(36, 1, 3, 'oppo-a54-xanh-duong-3-org.jpg'),
(36, 1, 4, 'oppo-a54-xanh-duong-4-org.jpg'),
(36, 1, 5, 'oppo-a54-xanh-duong-5-org.jpg'),
(36, 1, 6, 'oppo-a54-xanh-duong-6-org.jpg'),
(36, 1, 7, 'oppo-a54-xanh-duong-7-org.jpg'),
(36, 1, 8, 'oppo-a54-xanh-duong-8-org.jpg'),
(36, 1, 9, 'oppo-a54-xanh-duong-9-org.jpg'),
(36, 1, 10, 'oppo-a54-xanh-duong-10-org.jpg'),
(36, 1, 11, 'oppo-a54-xanh-duong-11-org.jpg'),
(36, 1, 12, 'oppo-a54-xanh-duong-12-org.jpg'),
(36, 1, 13, 'oppo-a54-xanh-duong-13-org.jpg'),
(36, 2, 1, 'oppo-a54-den-1-org.jpg'),
(36, 2, 2, 'oppo-a54-den-2-org.jpg'),
(36, 2, 3, 'oppo-a54-den-3-org.jpg'),
(36, 2, 4, 'oppo-a54-den-4-org.jpg'),
(36, 2, 5, 'oppo-a54-den-5-org.jpg'),
(36, 2, 6, 'oppo-a54-den-6-org.jpg'),
(36, 2, 7, 'oppo-a54-den-7-org.jpg'),
(36, 2, 8, 'oppo-a54-den-8-org.jpg'),
(36, 2, 9, 'oppo-a54-den-9-org.jpg'),
(36, 2, 10, 'oppo-a54-den-10-org.jpg'),
(36, 2, 11, 'oppo-a54-den-11-org.jpg'),
(36, 2, 12, 'oppo-a54-den-12-org.jpg'),
(36, 2, 13, 'oppo-a54-den-13-org.jpg'),
(37, 1, 1, 'oppo-a15s-den-1-org.jpg'),
(37, 1, 2, 'oppo-a15s-den-2-org.jpg'),
(37, 1, 3, 'oppo-a15s-den-3-org.jpg'),
(37, 1, 4, 'oppo-a15s-den-4-org.jpg'),
(37, 1, 5, 'oppo-a15s-den-5-org.jpg'),
(37, 1, 6, 'oppo-a15s-den-6-org.jpg'),
(37, 1, 7, 'oppo-a15s-den-7-org.jpg'),
(37, 1, 8, 'oppo-a15s-den-8-org.jpg'),
(37, 1, 9, 'oppo-a15s-den-9-org.jpg'),
(37, 1, 10, 'oppo-a15s-den-10-org.jpg'),
(37, 1, 11, 'oppo-a15s-den-11-org.jpg'),
(37, 1, 12, 'oppo-a15s-den-12-org.jpg'),
(37, 2, 1, 'oppo-a15s-xanh-1-org.jpg'),
(37, 2, 2, 'oppo-a15s-xanh-2-org.jpg'),
(37, 2, 3, 'oppo-a15s-xanh-3-org.jpg'),
(37, 2, 4, 'oppo-a15s-xanh-4-org.jpg'),
(37, 2, 5, 'oppo-a15s-xanh-5-org.jpg'),
(37, 2, 6, 'oppo-a15s-xanh-6-org.jpg'),
(37, 2, 7, 'oppo-a15s-xanh-7-org.jpg'),
(37, 2, 8, 'oppo-a15s-xanh-8-org.jpg'),
(37, 2, 9, 'oppo-a15s-xanh-9-org.jpg'),
(37, 2, 10, 'oppo-a15s-xanh-10-org.jpg'),
(37, 2, 11, 'oppo-a15s-xanh-11-org.jpg'),
(37, 2, 12, 'oppo-a15s-xanh-12-org.jpg'),
(38, 1, 1, 'oppo-a74-5g-bac-1-org.jpg'),
(38, 1, 2, 'oppo-a74-5g-bac-2-org.jpg'),
(38, 1, 3, 'oppo-a74-5g-bac-3-org.jpg'),
(38, 1, 4, 'oppo-a74-5g-bac-4-org.jpg'),
(38, 1, 5, 'oppo-a74-5g-bac-5-org.jpg'),
(38, 1, 6, 'oppo-a74-5g-bac-6-org.jpg'),
(38, 1, 7, 'oppo-a74-5g-bac-7-org.jpg'),
(38, 1, 8, 'oppo-a74-5g-bac-8-org.jpg'),
(38, 1, 9, 'oppo-a74-5g-bac-9-org.jpg'),
(38, 1, 10, 'oppo-a74-5g-bac-10-org.jpg'),
(38, 1, 11, 'oppo-a74-5g-bac-11-org.jpg'),
(38, 1, 12, 'oppo-a74-5g-bac-12-org.jpg'),
(38, 1, 13, 'oppo-a74-5g-bac-13-org.jpg'),
(38, 2, 1, 'oppo-a74-5g-den-1-org.jpg'),
(38, 2, 2, 'oppo-a74-5g-den-2-org.jpg'),
(38, 2, 3, 'oppo-a74-5g-den-3-org.jpg'),
(38, 2, 4, 'oppo-a74-5g-den-4-org.jpg'),
(38, 2, 5, 'oppo-a74-5g-den-5-org.jpg'),
(38, 2, 6, 'oppo-a74-5g-den-6-org.jpg'),
(38, 2, 7, 'oppo-a74-5g-den-7-org.jpg'),
(38, 2, 8, 'oppo-a74-5g-den-8-org.jpg'),
(38, 2, 9, 'oppo-a74-5g-den-9-org.jpg'),
(38, 2, 10, 'oppo-a74-5g-den-10-org.jpg'),
(38, 2, 11, 'oppo-a74-5g-den-11-org.jpg'),
(38, 2, 12, 'oppo-a74-5g-den-12-org.jpg'),
(38, 2, 13, 'oppo-a74-5g-den-13-org.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_soluong`
--

CREATE TABLE `sanpham_soluong` (
  `sp_id` int(11) NOT NULL,
  `sp_mau` int(11) NOT NULL,
  `so_luong_tong` int(11) DEFAULT NULL,
  `so_luong_daban` int(11) DEFAULT NULL,
  `so_luong_tonkho` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham_soluong`
--

INSERT INTO `sanpham_soluong` (`sp_id`, `sp_mau`, `so_luong_tong`, `so_luong_daban`, `so_luong_tonkho`) VALUES
(3, 1, 20, 2, 18),
(3, 2, 20, 0, 20),
(3, 3, 20, 0, 20),
(4, 1, 20, 0, 20),
(4, 2, 20, 0, 20),
(4, 3, 20, 0, 20),
(5, 1, 20, 0, 20),
(5, 2, 20, 0, 20),
(5, 3, 20, 0, 20),
(8, 1, 20, 0, 20),
(8, 2, 20, 0, 20),
(8, 3, 20, 0, 20),
(8, 4, 20, 0, 20),
(9, 1, 20, 0, 20),
(9, 2, 20, 0, 20),
(9, 3, 20, 0, 20),
(10, 1, 20, 0, 20),
(10, 2, 20, 0, 20),
(14, 1, 20, 0, 20),
(14, 2, 20, 0, 20),
(15, 1, 20, 0, 20),
(16, 1, 20, 0, 20),
(16, 2, 20, 0, 20),
(17, 1, 20, 0, 20),
(17, 2, 20, 0, 20),
(18, 1, 20, 0, 20),
(18, 2, 20, 0, 20),
(19, 1, 20, 0, 20),
(19, 2, 20, 0, 20),
(21, 1, 20, 0, 20),
(21, 2, 20, 0, 20),
(21, 3, 20, 0, 20),
(23, 1, 20, 0, 20),
(23, 2, 20, 0, 20),
(25, 1, 20, 0, 20),
(25, 3, 20, 0, 20),
(25, 4, 20, 0, 20),
(26, 1, 20, 0, 20),
(26, 2, 20, 0, 20),
(27, 1, 20, 0, 20),
(27, 2, 20, 0, 20),
(28, 1, 20, 0, 20),
(28, 2, 20, 0, 20),
(28, 3, 20, 0, 20),
(28, 4, 20, 0, 20),
(29, 1, 20, 0, 20),
(29, 2, 20, 0, 20),
(29, 3, 20, 0, 20),
(30, 1, 20, 0, 20),
(30, 2, 20, 0, 20),
(31, 1, 20, 0, 20),
(31, 2, 20, 0, 20),
(32, 1, 20, 0, 20),
(32, 2, 20, 0, 20),
(33, 1, 20, 0, 20),
(33, 2, 20, 0, 20),
(34, 1, 20, 0, 20),
(34, 2, 20, 0, 20),
(35, 1, 20, 0, 20),
(35, 2, 20, 0, 15),
(36, 1, 20, 0, 20),
(36, 2, 20, 0, 20),
(37, 1, 20, 0, 20),
(37, 2, 20, 0, 20),
(38, 1, 20, 0, 20),
(38, 2, 20, 0, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `sp_id` int(11) NOT NULL,
  `sp_ten` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_anh` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sp_gioithieu` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sp_gia` int(11) DEFAULT NULL,
  `sp_gia_cu` int(11) DEFAULT NULL,
  `sp_ngay_cap_nhat` datetime DEFAULT NULL,
  `nsx_id` int(11) DEFAULT NULL,
  `lsp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`sp_id`, `sp_ten`, `file_anh`, `sp_gioithieu`, `sp_gia`, `sp_gia_cu`, `sp_ngay_cap_nhat`, `nsx_id`, `lsp_id`) VALUES
(3, 'iPhone 12 64GB', 'iphone-12-den-200x200.jpg', 'Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB.\r\nHiệu năng vượt xa mọi giới hạn\r\nApple đã trang bị con chip mới nhất của hãng (tính đến 11/2020) cho iPhone 12 đó là A14 Bionic, được sản xuất trên tiến trình 5 nm với hiệu suất ổn định hơn so với chip A13 được trang bị trên phiên bản tiền nhiệm iPhone 11.', 20690000, 22990000, '2021-07-27 11:27:04', 2, 1),
(4, 'iPhone 11 128GB', 'iphone-11-den-200x200.jpg', 'Được xem là một trong những phiên bản iPhone \"giá rẻ\" của bộ 3 iPhone 11 series nhưng iPhone 11 128GB vẫn sở hữu cho mình rất nhiều ưu điểm mà hiếm có một chiếc smartphone nào khác sở hữu.\r\nNâng cấp mạnh mẽ về cụm camera\r\nNăm nay với iPhone 11 thì Apple đã nâng cấp khá nhiều về camera nếu so sánh với chiếc iPhone Xr 128GB năm ngoái.', 16990000, 19990000, '2021-07-26 14:09:48', 2, 1),
(5, 'iPhone 11 256GB', 'iphone-11-do-200x200.jpg', 'iPhone 11 256GB là chiếc máy có mức giá khá dễ chịu đến từ Apple. Nếu bạn không muốn bỏ ra số tiền quá lớn mà vẫn có được những nâng cấp về camera hay một hiệu năng đầy mạnh mẽ thì đây thực sự là một lựa chọn hàng đầu dành cho bạn.\r\nHiệu năng vẫn tương đương phiên bản Pro Max\r\nMặc dù có mức giá rẻ hơn nhưng không vì vậy mà iPhone 11 bị cắt giảm đi về mặt cấu hình.', 19390000, 20990000, '2021-07-17 16:31:12', 2, 1),
(8, 'iPhone 12 mini 64GB', 'iphone-12-mini-xanh-la-15-200x200.jpg', 'iPhone 12 mini 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao.\r\nThiết kế sang trọng, cao cấp\r\nĐiểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính.', 17190000, 18990000, '2021-07-18 09:54:35', 2, 1),
(9, 'iPhone XR 64GB', 'iphone-xr-hopmoi-den-600x600-2-200x200.jpg', 'Là chiếc điện thoại iPhone có mức giá dễ chịu, phù hợp với nhiều khách hàng hơn, iPhone Xr vẫn được ưu ái trang bị chip Apple A12 mạnh mẽ, màn hình tai thỏ cùng khả năng kháng nước kháng bụi.\r\nMàn hình tai thỏ tràn viền công nghệ LCD', 12590000, 14490000, '2021-07-17 16:31:43', 2, 1),
(10, 'Samsung Galaxy S21 5G', 'samsung-galaxy-s21-xam-200x200.jpg', 'Galaxy S21 5G nằm trong series S21 đến từ Samsung nổi bật với thiết kế tràn viền, cụm camera ấn tượng cho đến hiệu năng mạnh mẽ hàng đầu.\r\n“Bộ cánh” mới nổi bật và sang trọng', 14990000, 20990000, '2021-08-03 14:59:29', 1, 1),
(14, 'iPhone SE 128GB', 'iphone-se-128gb-2020-trang-200x200.jpg', 'iPhone SE 2020 khi được cho ra mắt đã làm thỏa mãn triệu tín đồ Táo khuyết. Máy sở hữu thiết kế siêu nhỏ gọn như iPhone 8, chip A13 Bionic cho hiệu năng khủng như iPhone 11, nhưng iPhone SE 2020 lại có một mức giá tốt đến bất ngờ.\r\nThiết kế nhỏ gọn trong lòng bàn tay.', 11990000, 13990000, '2021-07-29 16:10:46', 2, 1),
(15, 'Samsung Galaxy A22', 'samsung-galaxy-a22-4g-black-600x600.jpg', 'Samsung chào đón mùa hè 2021 bằng sự ra mắt của bộ đôi Galaxy A22 và Galaxy A22 5G với nhiều thông số ấn tượng. Trong đó, Galaxy A22 sở hữu viên pin đầy năng suất, hiệu năng gaming mạnh mẽ và màn hình lớn có khả năng hiển thị tốt.\r\nNâng cao trải nghiệm người dùng', 5890000, 5890000, '2021-08-03 15:56:16', 1, 1),
(16, 'iPhone 12 Pro Max 128GB', 'iphone-12-pro-max-xam-new-600x600-200x200.jpg', 'iPhone 12 Pro Max 128 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.\r\nThay đổi thiết kế mới sau 6 năm', 30990000, 33990000, '2021-07-27 14:59:57', 2, 1),
(17, 'iPhone 12 Pro 128GB', 'iphone-12-pro-bac-new-600x600-200x200.jpg', 'iPhone 12 Pro - \"Siêu phẩm công nghệ\" với nhiều nâng cấp mạnh mẽ về thiết kế, cấu hình và hiệu năng, khẳng định đẳng cấp thời thượng trên thị trường smartphone cao cấp.\r\nMàn hình giải trí OLED ấn tượng', 27990000, 30990000, '2021-07-27 15:14:17', 2, 1),
(18, 'Samsung Galaxy S21 Ultra 5G 128GB', 'samsung-galaxy-s21-ultra-bac-600x600-1-200x200.jpg', 'Sự đẳng cấp được Samsung gửi gắm thông qua chiếc smartphone Galaxy S21 Ultra 5G với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong, hứa hẹn đáp ứng trọn vẹn nhu cầu ngày càng cao của người dùng.\r\nĐột phá trong thiết kế thời thượng', 23990000, 30990000, '2021-07-27 15:31:46', 1, 1),
(19, 'Samsung Galaxy S21 5G 256GB', 'samsung-galaxy-s21-plus-256gb-bac-600x600-200x200.jpg', 'Đắm chìm trong vẻ đẹp tuyệt tác đến từ Samsung Galaxy S21+ 5G 256 GB, làm chủ cuộc chơi với hiệu năng hàng đầu, cụm camera chuyên nghiệp cùng tốc độ 5G bức phá mọi giới hạn, mẫu điện thoại cho bạn thỏa sức khám phá cuộc sống, thể hiện cá tính theo cách riêng của mình.\r\nThiết kế đẳng cấp lôi cuốn đến từng chi tiết', 21990000, 28990000, '2021-07-27 15:58:31', 1, 1),
(21, 'Samsung Galaxy Note 20', 'samsung-galaxy-note-20-062220-122200-fix-600x600.jpg', 'Tháng 8/2020, Galaxy Note 20 chính thức được lên kệ, với thiết kế camera trước nốt ruồi quen thuộc, cụm camera hình chữ nhật mới lạ cùng với vi xử lý Exynos 990 cao cấp của chính Samsung chắc hẳn sẽ mang lại một trải nghiệm thú vị cùng hiệu năng mạnh mẽ.\r\nCamera cụm hình chữ nhật độc đáo cùng thiết kế mạnh mẽ', 14990000, 23990000, '2021-08-03 15:57:11', 1, 1),
(23, 'Samsung Galaxy S20 FE 256GB', 'samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.\r\nNhiếp ảnh chuyên nghiệp với cụm camera đẳng cấp', 13990000, 15490000, '2021-08-03 15:58:40', 1, 1),
(25, 'Samsung Galaxy A72', 'samsung-galaxy-a72-thumb-white-600x600-200x200.jpg', 'Sau sự thành công của Galaxy S21 series, Samsung tiếp tục tấn công phân khúc tầm trung với Galaxy A72 thuộc Galaxy A series, sở hữu nhiều màu sắc trẻ trung, hệ thống camera nhiều tính năng cũng như nâng cấp hiệu năng vô cùng lớn mang đến những trải nghiệm hoàn toàn mới.\r\nThiết kế trẻ trung, thời thượng', 11020000, 11490000, '2021-07-27 17:25:49', 1, 1),
(26, 'Samsung Galaxy A52 5G', 'samsung-galaxy-a52-5g-thumb-black-600x600-200x200.jpg', 'Samsung Galaxy A52 5G ra mắt được trang bị con chip Snapdragon 750G có hỗ trợ 5G tốc độ cao, trải nghiệm đã mắt với màn hình Super AMOLED đi cùng với dung lượng pin lớn và thuộc phân khúc tầm trung rất dễ tiếp cận với mọi người dùng.\r\nThiết kế hiện đại, mở đầu xu hướng', 10990000, 11990000, '2021-07-29 16:25:48', 1, 1),
(27, 'Samsung Galaxy M51', 'samsung-galaxy-m51-trang-new-600x600-600x600.jpg', 'Galaxy M51 thuộc thế hệ Galaxy M đến từ Samsung và được nằm trong phân khúc giá tầm trung. Máy được nâng cấp và cải tiến với camera góc siêu rộng, dung lượng pin siêu khủng cùng vẻ ngoài sang trọng và thời thượng.\r\nThiết kế hiện đại và đẳng cấp.', 7490000, 9490000, '2021-08-03 15:59:26', 1, 1),
(28, 'Samsung Galaxy A51', 'samsung-galaxy-a51-blue-200x200.jpg', 'Theo Strategy Analytics, Galaxy A51 là Smartphone Android Bán Chạy Nhất Thế Giới Quý 1/2020, máy sở hữu cụm 4 camera, bao gồm camera macro chụp cận cảnh lần đầu xuất hiện trên smartphone Samsung, màn hình tràn viền vô cực cùng mặt lưng họa tiết kim cương nổi bật.\r\nThiết kế thời thượng, bật cá tính', 7490000, 7990000, '2021-07-29 16:59:39', 1, 1),
(29, 'Samsung Galaxy A32', 'samsung-galaxy-a32-4g-thumb-den-600x600-200x200.jpg', 'Samsung Galaxy A32 4G là chiếc điện thoại thuộc phân khúc tầm trung nhưng sở hữu nhiều ưu điểm vượt trội về màn hình lớn sắc nét, bộ bốn camera 64 MP cùng vi xử lý hiệu năng cao và được bán ra với mức giá vô cùng tốt.\r\nThiết kế thời thượng cùng màu sắc bắt mắt', 6290000, 6690000, '2021-07-31 14:40:03', 1, 1),
(30, 'OPPO Reno5', 'oppo-reno5-trang-600x600-1-600x600.jpg', 'OPPO Reno5 là sự kết hợp đầy ấn tượng giữa hiệu năng và thiết kế, mang đến cho người dùng một chiếc điện thoại tích hợp nhiều công nghệ camera, sạc pin hàng đầu của OPPO trong một mức giá tầm trung.\r\nThiết kế đẹp đậm chất OPPO Reno Series', 8250000, 8690000, '2021-08-03 16:01:09', 8, 1),
(31, 'OPPO Find X3 Pro 5G', 'oppo-find-x3-pro-black-001-1-600x600.jpg', 'OPPO đã làm khuynh đảo thị trường smartphone khi cho ra đời chiếc điện thoại OPPO Find X3 Pro 5G. Đây là một sản phẩm có thiết kế độc đáo, sở hữu cụm camera khủng, cấu hình thuộc top đầu trong thế giới Android.\r\nKết quả của sự sáng tạo không ngừng', 26990000, 29990000, '2021-08-03 16:01:45', 8, 1),
(32, 'OPPO A74', 'oppo-a74-black-10-200x200.jpg', 'OPPO luôn đa dạng hoá các sản phẩm của mình từ giá rẻ cho đến cao cấp. Trong đó, điện thoại OPPO A74 4G được nằm trong phân khúc tầm trung rất đáng chú ý với nhiều tính năng và smartphone cũng chính là bản nâng cấp của OPPO A73 ra mắt trước đó.\r\nThiết kế quen thuộc, màu sắc tối giản', 6390000, 6690000, '2021-08-01 13:20:07', 8, 1),
(33, 'OPPO Reno4 Pro', 'oppo-reno4-pro-trang-200x200.jpg', 'OPPO chính thức trình làng chiếc smartphone có tên OPPO Reno4 Pro. Máy trang bị cấu hình vô cùng cao cấp với vi xử lý chip Snapdragon 720G, bộ 4 camera đến 48 MP ấn tượng, cùng công nghệ sạc siêu nhanh 65 W nhưng được bán với mức giá vô ưu đãi, dễ tiếp cận.\r\nThiết kế tràn viền siêu ấn tượng', 9960000, 10490000, '2021-08-01 13:32:37', 8, 1),
(34, 'OPPO A94', 'oppo-a94-black-thumb-600x600-1-200x200.jpg', 'Mẫu smartphone tầm trung của OPPO - OPPO A94 đã được giới thiệu đến người dùng với nhiều cải tiến nổi trội về thiết kế, pin và camera cũng như kế thừa những điểm mạnh của OPPO A93.\r\nThiết kế cao cấp với mặt lưng bóng bẩy', 7390000, 7690000, '2021-08-01 13:45:26', 8, 1),
(35, 'OPPO A93', 'oppo-a93-den-14-200x200.jpg', 'OPPO đã tung ra OPPO A93 dòng sản phẩm thuộc phân khúc điện thoại tầm trung được xem là tiếp nối từ OPPO A92 với nhiều điểm được nâng cấp như hiệu năng, hệ thống camera cùng khả năng sạc nhanh 18 W.\r\nHiệu năng vượt trội cùng với Helio P95', 6490000, 7000000, '2021-08-01 13:58:39', 8, 1),
(36, 'OPPO A54', 'oppo-a54-4g-black-600x600.jpg', 'OPPO tung ra mẫu điện thoại OPPO A54, được kế thừa thành công của OPPO A53, sở hữu bộ 3 camera AI thông minh, chấm camera selfie tinh tế nằm gọn trong màn hình tràn viền siêu rộng, vận hành mượt mà với hiệu năng ổn định và trở nên khác biệt so với các đối thủ trong tầm giá.\r\nThiết kế tinh xảo với mặt lưng bóng bẩy', 4690000, 5000000, '2021-08-03 16:02:47', 8, 1),
(37, 'OPPO A15s', 'oppo-a15s-den-600x600-4-200x200.jpg', 'Chiếc điện thoại OPPO A15s là một phiên bản nâng cấp của OPPO A15, có cấu hình ấn tượng trong tầm giá đủ để người dùng thỏa sức làm việc và giải trí khi cần thiết.\r\nThiết kế hiện đại, vẻ ngoài cá tính', 3990000, 4500000, '2021-08-01 14:24:05', 8, 1),
(38, 'OPPO A74 5G', 'oppo-a74-5g-silver-01-600x600.jpg', 'OPPO A74 5G mẫu điện thoại có kết nối 5G với mức giá tốt của OPPO. Máy có thiết kế tinh tế, màn hình 90 Hz mượt mà và cụm camera làm đẹp AI sẽ là những điểm nhấn “đáng tiền” trên mẫu điện thoại này.\r\nThiết kế đơn giản, thời trang', 7690000, 7990000, '2021-08-03 16:03:32', 8, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_bo_nho`
--

CREATE TABLE `sp_bo_nho` (
  `sp_id` int(11) NOT NULL,
  `ram` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `bo_nho_trong` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `bo_nho_con_lai` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `the_nho` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `danh_ba` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_bo_nho`
--

INSERT INTO `sp_bo_nho` (`sp_id`, `ram`, `bo_nho_trong`, `bo_nho_con_lai`, `the_nho`, `danh_ba`) VALUES
(3, '4 GB', '64 GB', '49 GB', 'SSD', 'Không giới hạn'),
(4, '4 GB', '128 GB', '123 GB', 'SSD', 'Không giới hạn'),
(5, '4 GB', '256 GB', '251 GB', 'SSD', 'Không giới hạn'),
(8, '4 GB', '64 GB', '49 GB', 'SSD', 'Không giới hạn'),
(9, '4 GB', '64 GB', '57 GB', 'SSD', 'Không giới hạn'),
(10, '8 GB', '128 GB', '115 GB', 'SSD', 'Không giới hạn'),
(14, '4 GB', '128 GB', '113 GB', 'SSD', 'Không giới hạn'),
(15, '6 GB', '128 GB', '103 GB', 'MicroSD, hỗ trợ tối đa 1 TB', 'Không giới hạn'),
(16, '6 GB', '128 GB', '113 GB', 'SSD', 'Không giới hạn'),
(17, '6 GB', '128 GB', '113 GB', 'SSD', 'Không giới hạn'),
(18, '12 GB', '128 GB', '115 GB', 'SSD', 'Không giới hạn'),
(19, '8 GB', '256 GB', '240 GB', 'SSD', 'Không giới hạn'),
(21, '8 GB', '256 GB', '223 GB', 'MicroSD, hỗ trợ tối đa 1 TB', 'Không giới hạn'),
(23, '8 GB', '256 GB', '221 GB', 'MicroSD, hỗ trợ tối đa 1 TB', 'Không giới hạn'),
(25, '8 GB', '256 GB', '241 GB', 'MicroSD, hỗ trợ tối đa 1 TB', 'Không giới hạn'),
(26, '8 GB', '128 GB', '115 GB', 'MicroSD, hỗ trợ tối đa 1 TB', 'Không giới hạn'),
(27, '8 GB', '128 GB', '103 GB', 'MicroSD, hỗ trợ tối đa 512 GB', 'Không giới hạn'),
(28, '6 GB', '128 GB', '107 GB', 'MicroSD, hỗ trợ tối đa 512 GB', 'Không giới hạn'),
(29, '6 GB', '128 GB', 'Khoảng 115 GB', 'MicroSD, hỗ trợ tối đa 1 TB', 'Không giới hạn'),
(30, '8 GB', '128 GB', '115 GB', 'MicroSD, hỗ trợ tối đa 256 GB', 'Không giới hạn'),
(31, '12 GB', '256 GB', '243 GB', 'MicroSD, hỗ trợ tối đa 5 TB', 'Không giới hạn'),
(32, '8 GB', '128 GB', '115 GB', 'MicroSD, hỗ trợ tối đa 256 GB', 'Không giới hạn'),
(33, '8 GB', '256 GB', '235 GB', 'MicroSD, hỗ trợ tối đa 256 GB', 'Không giới hạn'),
(34, '8 GB', '128 GB', '115 GB', 'MicroSD, hỗ trợ tối đa 256 GB', 'Không giới hạn'),
(35, '8 GB', '128 GB', '100 GB', 'MicroSD, hỗ trợ tối đa 256 GB', 'Không giới hạn'),
(36, '4 GB', '128 GB', 'Khoảng 115 GB', 'MicroSD, hỗ trợ tối đa 256 GB', 'Không giới hạn'),
(37, '4 GB', '64 GB', '55 GB', 'MicroSD, hỗ trợ tối đa 256 GB', 'Không giới hạn'),
(38, '6 GB', '128 GB', '115 GB', 'MicroSD, hỗ trợ tối đa 256 GB', 'Không giới hạn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_camera_sau`
--

CREATE TABLE `sp_camera_sau` (
  `sp_id` int(11) NOT NULL,
  `do_phan_giai` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `quay_phim` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `den_flash` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tinh_nang` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_camera_sau`
--

INSERT INTO `sp_camera_sau` (`sp_id`, `do_phan_giai`, `quay_phim`, `den_flash`, `tinh_nang`) VALUES
(3, '2 camera 12 MP', '4K 2160p@24fps\r\n</br>\r\n4K 2160p@30fps\r\n</br>\r\n4K 2160p@60fps\r\n</br>\r\nFullHD 1080p@120fps\r\n</br>\r\nFullHD 1080p@240fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nFullHD 1080p@60fps\r\n</br>\r\nHD 720p@30fps', 'Đèn LED kép', 'Ban đêm (Night Mode)\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)\r\n</br>\r\nHDR\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom kỹ thuật số'),
(4, '2 camera 12 MP', '4K 2160p@24fps\r\n</br>\r\n4K 2160p@30fps\r\n</br>\r\n4K 2160p@60fps\r\n</br>\r\nFullHD 1080p@120fps\r\n</br>\r\nFullHD 1080p@240fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nFullHD 1080p@60fps\r\n</br>\r\nHD 720p@30fps', '4 đèn LED 2 tông màu', 'Ban đêm (Night Mode)\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)\r\n</br>\r\nHDR\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom quang học'),
(5, '2 camera 12 MP', '4K 2160p@24fps\r\n</br>\r\n4K 2160p@30fps\r\n</br>\r\n4K 2160p@60fps\r\n</br>\r\nFullHD 1080p@120fps\r\n</br>\r\nFullHD 1080p@240fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nFullHD 1080p@60fps\r\n</br>\r\nHD 720p@30fps', '4 đèn LED 2 tông màu', 'Ban đêm (Night Mode)\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)\r\n</br>\r\nHDR\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom quang học'),
(8, '2 camera 12 MP', '4K 2160p@30fps\r\n</br>\r\n4K 2160p@60fps\r\n</br>\r\nFullHD 1080p@240fps\r\n</br>\r\nHD 720p@30fps\r\n</br>\r\nFullHD 1080p@120fps\r\n</br>\r\n4K 2160p@24fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nFullHD 1080p@60fps', 'Đèn LED kép', 'Ban đêm (Night Mode)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom quang học\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nHDR\r\n</br>\r\nZoom kỹ thuật số\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)'),
(9, '12 MP', '4K 2160p@24fps\r\n</br>\r\n4K 2160p@30fps\r\n</br>\r\n4K 2160p@60fps\r\n</br>\r\nFullHD 1080p@120fps\r\n</br>\r\nFullHD 1080p@240fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nFullHD 1080p@60fps', '4 đèn LED 2 tông màu', 'AI Camera\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nChống rung quang học (OIS)\r\n</br>\r\nHDR\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông\r\n</br>\r\nĐiều chỉnh khẩu độ'),
(10, 'Chính 12 MP & Phụ 64 MP, 12 MP', '4K 2160p@30fps\r\n</br>\r\n4K 2160p@60fps\r\n</br>\r\n8K 4320p@24fps\r\n</br>\r\nFullHD 1080p@240fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nFullHD 1080p@60fps\r\n</br>\r\nHD 720p@960fps', 'Có', 'AI Camera\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nChuyên nghiệp (Pro)\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nChống rung quang học (OIS)\r\n</br>\r\nChống rung điện tử kỹ thuật số (EIS)\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp (Beautify)\r\n</br>\r\nLấy nét theo pha (PDAF)\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay Siêu chậm (Super Slow Motion)\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom kỹ thuật số\r\n</br>\r\nZoom quang học'),
(14, '12 MP', '4K 2160p@24fps\r\n</br>\r\n4K 2160p@30fps\r\n</br>\r\n4K 2160p@60fps\r\n</br>\r\nFullHD 1080p@120fps\r\n</br>\r\nFullHD 1080p@240fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nFullHD 1080p@60fps\r\n</br>\r\nHD 720p@30fps', '4 đèn LED 2 tông màu', 'Chạm lấy nét\r\n</br>\r\nChống rung quang học (OIS)\r\n</br>\r\nHDR\r\n</br>\r\nLấy nét theo pha (PDAF)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom kỹ thuật số'),
(15, 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', 'FullHD 1080p@30fps', 'Có', 'Lấy nét theo pha (PDAF)\r\n</br>\r\nAI Camera\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nXóa phông\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nChống rung quang học (OIS)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nHDR\r\n</br>\r\nChuyên nghiệp (Pro)\r\n</br>\r\nLàm đẹp\r\n</br>\r\nSiêu cận (Macro)\r\n</br>\r\nGóc siêu rộng (Ultrawide)'),
(16, '3 camera 12 MP', '4K 2160p@30fps\r\n</br>\r\n4K 2160p@60fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nHD 720p@30fps\r\n</br>\r\nFullHD 1080p@60fps\r\n</br>\r\n4K 2160p@24fps', 'Đèn LED kép', 'Ban đêm (Night Mode)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom quang học\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nChống rung quang học (OIS)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nHDR\r\n</br>\r\nẢnh Raw\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)'),
(17, '3 camera 12 MP', '4K 2160p@30fps\r\n</br>\r\n4K 2160p@60fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nHD 720p@30fps\r\n</br>\r\nFullHD 1080p@60fps\r\n</br>\r\n4K 2160p@24fps', 'Đèn LED kép', 'Ban đêm (Night Mode)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom quang học\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nChống rung quang học (OIS)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nHDR\r\n</br>\r\nẢnh Raw\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)'),
(18, 'Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP', '4K 2160p@30fps\r\n</br>\r\n4K 2160p@60fps\r\n</br>\r\n8K 4320p@24fps\r\n</br>\r\nFullHD 1080p@240fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nFullHD 1080p@60fps\r\n</br>\r\nHD 720p@960fps', 'Có', 'AI Camera\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nChuyên nghiệp (Pro)\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nChống rung quang học (OIS)\r\n</br>\r\nChống rung điện tử kỹ thuật số (EIS)\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp (Beautify)\r\n</br>\r\nLấy nét bằng laser\r\n</br>\r\nLấy nét theo pha (PDAF)\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay Siêu chậm (Super Slow Motion)\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom kỹ thuật số\r\n</br>\r\nZoom quang học'),
(19, 'Chính 12 MP & Phụ 64 MP, 12 MP', '4K 2160p@30fps\r\n</br>\r\n4K 2160p@60fps\r\n</br>\r\n8K 4320p@24fps\r\n</br>\r\nFullHD 1080p@240fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nFullHD 1080p@60fps\r\n</br>\r\nHD 720p@960fps', 'Có', 'AI Camera\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nChuyên nghiệp (Pro)\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nChống rung quang học (OIS)\r\n</br>\r\nChống rung điện tử kỹ thuật số (EIS)\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp (Beautify)\r\n</br>\r\nLấy nét theo pha (PDAF)\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay Siêu chậm (Super Slow Motion)\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom kỹ thuật số\r\n</br>\r\nZoom quang học'),
(21, 'Chính 12 MP & Phụ 64 MP, 12 MP', '8K 4320p@24fps', 'Có', 'Quay Siêu chậm (Super Slow Motion)\r\n</br>\r\nAI Camera\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom quang học\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nChống rung quang học (OIS)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nHDR\r\n</br>\r\nChuyên nghiệp (Pro)\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nLàm đẹp\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)'),
(23, 'Chính 12 MP & Phụ 12 MP, 8 MP', '4K 2160p@60fps\r\n</br>\r\n4K 2160p@30fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nFullHD 1080p@60fps', 'Có', 'AI Camera\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom quang học\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nChống rung quang học (OIS)\r\n</br>\r\nLàm đẹp (Beautify)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp\r\n</br>\r\nZoom kỹ thuật số\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)'),
(25, 'Chính 64 MP & Phụ 12 MP, 8 MP, 5 MP', '4K 2160p@30fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nHD 720p@240fps', 'Có', 'Chạm lấy nét\r\n</br>\r\nChống rung quang học (OIS)\r\n</br>\r\nGóc siêu rộng (Ultrawide)\r\n</br>\r\nLàm đẹp\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nSiêu cận (Macro)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom kỹ thuật số\r\n</br>\r\nZoom quang học'),
(26, 'Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP', '4K 2160p@30fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nFullHD 1080p@60fps\r\n</br>\r\nHD 720p@240fps', 'Có', 'Ban đêm (Night Mode)\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom quang học\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nLàm đẹp\r\n</br>\r\nSiêu cận (Macro)\r\n</br>\r\nGóc siêu rộng (Ultrawide)'),
(27, 'Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP', '4K 2160p@30fps </br>\r\nFullHD 1080p@30fps', 'Có', 'Chạm lấy nét\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp (Beautify)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nSiêu cận (Macro)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(28, 'Chính 48 MP & Phụ 12 MP, 5 MP, 5 MP', 'HD 720p@240fps\r\n</br>\r\nHD 720p@30fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\n4K 2160p@30fps', 'Có', 'Quay Siêu chậm (Super Slow Motion)\r\n</br>\r\nLấy nét theo pha (PDAF)\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nXóa phông\r\n</br>\r\nChụp bằng cử chỉ\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nLàm đẹp (Beautify)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nHDR\r\n</br>\r\nChuyên nghiệp (Pro)\r\n</br>\r\nSiêu cận (Macro)\r\n</br>\r\nGóc siêu rộng (Ultrawide)'),
(29, 'Chính 64 MP & Phụ 8 MP, 5MP, 5MP', 'FullHD 1080p@120fps </br>\r\nFullHD 1080p@30fps', 'Có', 'Góc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)\r\n</br>\r\nHDR\r\n</br>\r\nLấy nét theo pha (PDAF)\r\n</br>\r\nSiêu cận (Macro)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nXóa phông'),
(30, 'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP', '4K 2160p@30fps\r\n</br>\r\nFullHD 1080p@120fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nFullHD 1080p@60fps\r\n</br>\r\nHD 720p@240fps\r\n</br>\r\nHD 720p@30fps\r\n</br>\r\nHD 720p@60fps\r\n</br>\r\nHD 720p@960fps', 'Có', 'AI Camera\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nChuyên nghiệp (Pro)\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp (Beautify)\r\n</br>\r\nLấy nét theo pha (PDAF)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay Siêu chậm (Super Slow Motion)\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(31, 'Chính 50 MP & Phụ 50 MP, 13 MP, 3 MP', '4K 2160p@30fps\r\n</br>\r\n4K 2160p@60fps\r\n</br>\r\nFullHD 1080p@240fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nFullHD 1080p@60fps\r\n</br>\r\nHD 720p@30fps\r\n</br>\r\nHD 720p@60fps', 'Có', 'AI Camera\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nChuyên nghiệp (Pro)\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nChống rung quang học (OIS)\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp\r\n</br>\r\nLấy nét theo pha (PDAF)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nSiêu cận (Macro)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông\r\n</br>\r\nZoom kỹ thuật số'),
(32, 'Chính 48 MP & Phụ 2 MP, 2 MP', 'FullHD 1080p@30fps </br>HD 720p@30fps', 'Có', 'AI Camera\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nLàm đẹp\r\n</br>\r\nSiêu cận (Macro)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(33, 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '4K 2160p@30fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nFullHD 1080p@60fps\r\n</br>\r\nHD 720p@30fps\r\n</br>\r\nHD 720p@60fps\r\n</br>\r\nHD 720p@960fps', 'Có', 'AI Camera\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nChống rung điện tử kỹ thuật số (EIS)\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay Siêu chậm (Super Slow Motion)\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(34, 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '4K 2160p@30fps\r\n</br>\r\nFullHD 1080p@120fps\r\n</br>\r\nFullHD 1080p@30fps\r\n</br>\r\nHD 720p@240fps\r\n</br>\r\nHD 720p@24fps', 'Có', 'AI Camera\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nChuyên nghiệp (Pro)\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nGóc siêu rộng (Ultrawide)\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nSiêu cận (Macro)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(35, 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '4K 2160p@30fps\r\n</br>\r\nFullHD 1080p@120fps\r\n</br>\r\nFullHD 1080p@30fps', 'Có', 'AI Camera\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nLàm đẹp\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(36, 'Chính 13 MP & Phụ 2 MP, 2 MP', 'FullHD 1080p@30fps </br>\r\nHD 720p@30fps', 'Có', 'AI Camera\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nChuyên nghiệp (Pro)\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp\r\n</br>\r\nLấy nét theo pha (PDAF)\r\n</br>\r\nSiêu cận (Macro)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(37, 'Chính 13 MP & Phụ 2 MP, 2 MP', 'FullHD 1080p@30fps', 'Có', 'Ban đêm (Night Mode)\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nSiêu cận (Macro)\r\n</br>\r\nToàn cảnh (Panorama)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(38, 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', 'FullHD 1080p@30fps </br>\r\nHD 720p@30fps', 'Có', 'AI Camera\r\n</br>\r\nBan đêm (Night Mode)\r\n</br>\r\nChạm lấy nét\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nLàm đẹp\r\n</br>\r\nLấy nét theo pha (PDAF)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nSiêu cận (Macro)\r\n</br>\r\nTrôi nhanh thời gian (Time Lapse)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông\r\n</br>\r\nĐơn sắc trắng đen (Black White)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_camera_truoc`
--

CREATE TABLE `sp_camera_truoc` (
  `sp_id` int(11) NOT NULL,
  `do_phan_giai` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tinh_nang` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_camera_truoc`
--

INSERT INTO `sp_camera_truoc` (`sp_id`, `do_phan_giai`, `tinh_nang`) VALUES
(3, '12 MP', 'HDR\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nQuay video 4K\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nQuay video HD\r\n</br>\r\nRetina Flash\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(4, '12 MP', 'HDR\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nQuay video 4K\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nQuay video HD\r\n</br>\r\nRetina Flash\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(5, '12 MP', 'HDR\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay chậm (Slow Motion)\r\n</br>\r\nQuay video 4K\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nQuay video HD\r\n</br>\r\nRetina Flash\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(8, '12 MP', 'Xóa phông\r\n</br>\r\nQuay video 4K\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nRetina Flash\r\n</br>\r\nQuay video HD\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nHDR\r\n</br>\r\nQuay chậm (Slow Motion)'),
(9, '12 MP', 'Góc rộng (Wide)\r\n</br>\r\nHDR\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video Full HD'),
(10, '10 MP', 'A.I Camera\r\n</br>\r\nFlash màn hình\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video 4K\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(14, '12 MP', 'Chống rung điện tử kỹ thuật số (EIS)\r\n</br>\r\nHDR\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(15, '12 MP', 'Xóa phông\r\n</br>\r\nFlash màn hình\r\n</br>\r\nQuay video HD\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nLàm đẹp\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nTự động lấy nét (AF)'),
(16, '12 MP', 'Xóa phông\r\n</br>\r\nQuay video 4K\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nRetina Flash\r\n</br>\r\nQuay video HD\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nHDR'),
(17, '12 MP', 'Xóa phông\r\n</br>\r\nQuay video 4K\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nRetina Flash\r\n</br>\r\nQuay video HD\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay  video Full HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nHDR'),
(18, '40 MP', 'A.I Camera\r\n</br>\r\nFlash màn hình\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video 4K\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(19, '10 MP', 'A.I Camera\r\n</br>\r\nFlash màn hình\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video 4K\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(21, '10 MP', 'Xóa phông\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nFlash màn hình\r\n</br>\r\nQuay video HD\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nLàm đẹp\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nHDR</br>\r\n\r\nA.I Camera'),
(23, '32 MP', 'Xóa phông\r\n</br>\r\nFlash màn hình\r\n</br>\r\nQuay video HD\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nLàm đẹp\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nTự động lấy nét (AF)'),
(25, '32 MP', 'Làm đẹp\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nQuay video HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(26, '32 MP', 'Xóa phông\r\n</br>\r\nQuay video HD\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nLàm đẹp\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nTự động lấy nét (AF)'),
(27, '32 MP', 'HDR\r\n</br>\r\nLàm đẹp\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nQuay video HD\r\n</br>\r\nTự động lấy nét (AF)'),
(28, '32 MP', 'Xóa phông\r\n</br>\r\nQuay video 4K\r\n</br>\r\nFlash màn hình\r\n</br>\r\nQuay video HD\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nLàm đẹp\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nGóc rộng (Wide)\r\n</br>\r\nA.I Camera'),
(29, '20 MP', 'HDR</br> Quay video</br> Full HD'),
(30, '44 MP', 'A.I Camera\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp A.I\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nQuay video HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(31, '32 MP', 'Làm đẹp\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nQuay video HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(32, '16 MP', 'A.I Camera\r\n</br>\r\nFlash màn hình\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nQuay video HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(33, '32 MP', 'Flash màn hình\r\n</br>\r\nLàm đẹp\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nQuay video HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(34, '32 MP', 'A.I Camera\r\n</br>\r\nLàm đẹp\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nQuay video HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(35, '32 MP', 'A.I Camera\r\n</br>\r\nLàm đẹp A.I\r\n</br>\r\nNhãn dán (AR Stickers)\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(36, '16 MP', 'A.I Camera\r\n</br>\r\nLàm đẹp\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nQuay video HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông'),
(37, '8 MP', 'Làm đẹp\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video Full HD'),
(38, '16 MP', 'A.I Camera\r\n</br>\r\nFlash màn hình\r\n</br>\r\nHDR\r\n</br>\r\nLàm đẹp\r\n</br>\r\nNhận diện khuôn mặt\r\n</br>\r\nQuay video Full HD\r\n</br>\r\nQuay video HD\r\n</br>\r\nTự động lấy nét (AF)\r\n</br>\r\nXóa phông');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_hdh`
--

CREATE TABLE `sp_hdh` (
  `sp_id` int(11) NOT NULL,
  `hdh` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `chip_xu_ly` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `toc_do_cpu` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `chip_do_hoa` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_hdh`
--

INSERT INTO `sp_hdh` (`sp_id`, `hdh`, `chip_xu_ly`, `toc_do_cpu`, `chip_do_hoa`) VALUES
(3, 'iOS 14', 'Apple A14 Bionic 6 nhân', '2 nhân 3.1 GHz & 4 nhân 1.8 GHz', 'Apple GPU 4 nhân'),
(4, 'iOS 14', 'Apple A13 Bionic 6 nhân', '2 nhân 2.65 GHz & 4 nhân 1.8 GHz', 'Apple GPU 4 nhân'),
(5, 'iOS 14', 'Apple A13 Bionic 6 nhân', '2 nhân 2.65 GHz & 4 nhân 1.8 GHz', 'Apple GPU 4 nhân'),
(8, 'iOS 14', 'Apple A14 Bionic 6 nhân', 'Apple GPU 4 nhân', '2 nhân 3.1 GHz & 4 nhân 1.8 GHz'),
(9, 'iOS 14', 'Apple A12 Bionic 6 nhân', '2 nhân 2.5 GHz & 4 nhân 1.6 GHz', 'Apple GPU 4 nhân'),
(10, 'Android 11', 'Exynos 2100 8 nhân', '1 nhân 2.9 GHz, 3 nhân 2.8 GHz & 4 nhân 2.2 GHz', 'Mali-G78 MP14'),
(14, 'iOS 14', 'Apple A13 Bionic 6 nhân', '2 nhân 2.65 GHz & 4 nhân 1.8 GHz', 'Apple GPU 4 nhân'),
(15, 'Android 11', 'MediaTek MT6769V 8 nhân', '4 nhân 2.0 GHz & 4 nhân 1.8 GHz', 'Mali-G52'),
(16, 'iOS 14', 'Apple A14 Bionic 6 nhân', '2 nhân 3.1 GHz & 4 nhân 1.8 GHz', 'Apple GPU 4 nhân'),
(17, 'iOS 14', 'Apple A14 Bionic 6 nhân', '2 nhân 3.1 GHz & 4 nhân 1.8 GHz', 'Apple GPU 4 nhân'),
(18, 'Android 11', 'Exynos 2100 8 nhân', '1 nhân 2.9 GHz, 3 nhân 2.8 GHz & 4 nhân 2.2 GHz', 'Mali-G78 MP14'),
(19, 'Android 11', 'Exynos 2100 8 nhân', '1 nhân 2.9 GHz, 3 nhân 2.8 GHz & 4 nhân 2.2 GHz', 'Mali-G78 MP14'),
(21, 'Android 10', 'Exynos 990 8 nhân', '2 nhân 2.73 GHz, 2 nhân 2.5 GHz & 4 nhân 2.0 Ghz', 'Mali-G77 MP11'),
(23, 'Android 11', 'Snapdragon 865 8 nhân', '1 nhân 2.84 GHz, 3 nhân 2.42 GHz & 4 nhân 1.8 GHz', 'Adreno 650'),
(25, 'Android 11', 'Snapdragon 720G 8 nhân', '2 nhân 2.3 Ghz & 6 nhân 1.8 Ghz', 'Adreno 618'),
(26, 'Android 11', 'Snapdragon 750G 5G 8 nhân', '2 nhân 2.2 GHz & 6 nhân 1.8 GHz', 'Adreno 619'),
(27, 'Android 10', 'Snapdragon 730 8 nhân', '2 nhân 2.2 GHz & 6 nhân 1.8 GHz', 'Adreno 618'),
(28, 'Android 10', 'Exynos 9611 8 nhân', '4 nhân 2.3 Ghz & 4 nhân 1.7 GHz', 'Mali-G72'),
(29, 'Android 11', 'MediaTek Helio G80 8 nhân', '2 nhân 2.0 GHz & 6 nhân 1.8 GHz', 'Mali-G52 MC2'),
(30, 'Android 11', 'Snapdragon 720G 8 nhân', '2 nhân 2.3 Ghz & 6 nhân 1.8 Ghz', 'Adreno 618'),
(31, 'Android 11', 'Snapdragon 888 8 nhân', '1 nhân 2.84 GHz, 3 nhân 2.42 GHz & 4 nhân 1.8 GHz', 'Adreno 660'),
(32, 'Android 11', 'Snapdragon 662 8 nhân', '4 nhân 2.0 GHz & 4 nhân 1.8 GHz', 'Adreno 610'),
(33, 'Android 10', 'Snapdragon 720G 8 nhân', '2 nhân 2.3 Ghz & 6 nhân 1.8 Ghz', 'Adreno 618'),
(34, 'Android 11', 'MediaTek Helio P95 8 nhân', '2 nhân 2.2 GHz & 6 nhân 2.0 GHz', 'IMG PowerVR GM9446'),
(35, 'Android 10', 'MediaTek Helio P95 8 nhân', '2 nhân 2.2 GHz & 6 nhân 2.0 GHz', 'IMG PowerVR GM9446'),
(36, 'Android 10', 'MediaTek Helio P35 8 nhân', '4 nhân 2.35 GHz & 4 nhân 1.8 GHz', 'IMG PowerVR GE8320'),
(37, 'Android 10', 'MediaTek Helio P35 8 nhân', '4 nhân 2.3 GHz & 4 nhân 1.8 GHz', 'IMG PowerVR GE8320'),
(38, 'Android 11', 'Snapdragon 480 8 nhân 5G', '2 nhân 2.0 GHz & 6 nhân 1.8 GHz', 'Adreno 619');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_hinh_tongquan`
--

CREATE TABLE `sp_hinh_tongquan` (
  `id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `ten_file` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_hinh_tongquan`
--

INSERT INTO `sp_hinh_tongquan` (`id`, `sp_id`, `ten_file`) VALUES
(44, 3, 'vi-vn-iphone-12-1.jpg'),
(45, 3, '-iphone-12-02.jpg'),
(46, 3, '-iphone-12-03.jpg'),
(47, 3, 'vi-vn-iphone-12-3-(2).jpg'),
(48, 3, 'ư1-780x433.jpg'),
(49, 3, 'vi-vn-iphone-12-4.jpg'),
(50, 3, 'vi-vn-iphone-12-5.jpg'),
(51, 3, '-iphone-12-014.jpg'),
(52, 3, 'vi-vn-iphone-12-8.jpg'),
(53, 3, 'vi-vn-iphone-12-7.jpg'),
(54, 3, 'vi-vn-iphone-12-9.jpg'),
(55, 3, 'vi-vn-iphone-12-10.jpg'),
(56, 3, 'vi-vn-iphone-12-11.jpg'),
(57, 4, '-iphone-11-128gb-thietke.jpg'),
(58, 4, 'vi-vn-iphone-11-128gb-camerakep.jpg'),
(59, 4, 'vi-vn-iphone-11-128gb-mausac.jpg'),
(60, 4, 'vi-vn-iphone-11-128gb-cautao-camera.jpg'),
(61, 4, 'vi-vn-iphone-11-128gb-sacnhanh.jpg'),
(62, 4, 'vi-vn-iphone-11-128gb-chinhvideo.jpg'),
(63, 4, 'vi-vn-iphone-11-128gb-chongnuoc.jpg'),
(64, 4, 'vi-vn-iphone-11-128gb-chip.jpg'),
(65, 4, 'vi-vn-iphone-11-128gb-chandung.jpg'),
(66, 4, 'vi-vn-iphone-11-128gb-chuyenvideo.gif'),
(67, 4, 'vi-vn-iphone-11-128gb-gocsieurong.jpg'),
(68, 4, 'vi-vn-iphone-11-128gb-manhinh.jpg'),
(69, 4, 'vi-vn-iphone-11-128gb-night-mode.jpg'),
(70, 4, 'vi-vn-iphone-11-128gb-slofie.jpg'),
(71, 4, 'vi-vn-iphone-11-128gb-smarthdr.jpg'),
(72, 4, 'vi-vn-iphone-11-128gb-tinhnang.jpg'),
(73, 5, '-iphone-11-128gb-thietke.jpg'),
(74, 5, 'vi-vn-iphone-11-128gb-tinhnang.jpg'),
(75, 5, 'vi-vn-iphone-11-128gb-mausac.jpg'),
(76, 5, 'vi-vn-iphone-11-128gb-camerakep.jpg'),
(77, 5, 'vi-vn-iphone-11-128gb-cautao-camera.jpg'),
(78, 5, 'vi-vn-iphone-11-128gb-chandung.jpg'),
(79, 5, 'vi-vn-iphone-11-128gb-chinhvideo.jpg'),
(80, 5, 'vi-vn-iphone-11-128gb-chip.jpg'),
(81, 5, 'vi-vn-iphone-11-128gb-chongnuoc.jpg'),
(82, 5, 'vi-vn-iphone-11-128gb-chuyenvideo.gif'),
(83, 5, 'vi-vn-iphone-11-128gb-gocsieurong.jpg'),
(84, 5, 'vi-vn-iphone-11-128gb-manhinh.jpg'),
(85, 5, 'vi-vn-iphone-11-128gb-night-mode.jpg'),
(86, 5, 'vi-vn-iphone-11-128gb-sacnhanh.jpg'),
(87, 5, 'vi-vn-iphone-11-128gb-slofie.jpg'),
(88, 5, 'vi-vn-iphone-11-128gb-smarthdr.jpg'),
(89, 8, 'vi-vn-iphone-12-mini-1.jpg'),
(90, 8, 'vi-vn-iphone-12-mini-2.jpg'),
(91, 8, 'vi-vn-iphone-12-mini-3.jpg'),
(92, 8, 'vi-vn-fix-slider-iphone-12-mini.jpg'),
(93, 8, 'iphone-12-mini-071220-0942290.jpg'),
(94, 8, 'vi-vn-iphone-12-mini-6.jpg'),
(95, 8, 'vi-vn-iphone-12-mini-5.jpg'),
(96, 8, 'vi-vn-iphone-12-mini-4.jpg'),
(97, 8, 'vi-vn-iphone-12-mini-8.jpg'),
(98, 8, 'vi-vn-iphone-12-mini-9.jpg'),
(99, 8, 'vi-vn-iphone-12-mini-10.jpg'),
(100, 8, 'vi-vn-iphone-12-mini-11.jpg'),
(101, 8, 'vi-vn-iphone-12-mini-12.jpg'),
(102, 8, 'vi-vn-iphone-12-mini-13.jpg'),
(103, 8, 'vi-vn-iphone-12-mini-14.jpg'),
(105, 8, 'vi-vn-iphone-12-mini-15.jpg'),
(106, 9, '-iphone-xr-thietke-2.jpg'),
(107, 9, '-iphone-xr-manhinh-2.jpg'),
(108, 9, 'vi-vn-iphone-xr-camera.jpg'),
(109, 9, '-iphone-xr-hieunang.jpg'),
(110, 9, '-iphone-xr-loa.jpg'),
(137, 10, 'vi-vn-samsung-galaxy-s21-5g-camera-slider-copy.jpg'),
(138, 10, 'samsung-galaxy-s21-tong-quan-780x433.jpg'),
(139, 10, 'vi-vn-samsung-galaxy-s21-5g-manhinh-slider-1.jpg'),
(140, 10, 'vi-vn-samsung-galaxy-s21-5g-choigame-slider-copy.jpg'),
(141, 10, 'vi-vn-samsung-galaxy-s21-5g-chongrungai-slider-copy.jpg'),
(142, 10, 'vi-vn-samsung-galaxy-s21-5g-chupdem-slider-copy.jpg'),
(143, 10, 'vi-vn-samsung-galaxy-s21-5g-khangnuoc-slider-copy.jpg'),
(144, 10, 'vi-vn-samsung-galaxy-s21-5g-laynetdong-slider-copy.jpg'),
(145, 10, 'vi-vn-samsung-galaxy-s21-5g-luutru-slider-3.jpg'),
(146, 10, 'vi-vn-samsung-galaxy-s21-5g-pin-slider-copy.jpg'),
(147, 10, 'vi-vn-samsung-galaxy-s21-5g-quay8k-slider-copy.jpg'),
(148, 10, 'vi-vn-samsung-galaxy-s21-5g-sac-slider-copy.jpg'),
(149, 10, 'vi-vn-samsung-galaxy-s21-5g-thietke-slider-copy.jpg'),
(150, 10, 'vi-vn-samsung-galaxy-s21-5g-zoom-slider-copy.jpg'),
(153, 14, 'iphone-se-128gb-2020-260520-0413050.jpg'),
(154, 14, 'iphone-se-128gb-2020-260520-0413061.jpg'),
(155, 14, 'iphone-se-128gb-2020-260520-0413082.jpg'),
(156, 14, 'iphone-se-128gb-2020-260520-0413103.jpg'),
(157, 14, 'iphone-se-128gb-2020-260520-0413145.jpg'),
(158, 14, 'iphone-se-128gb-2020-260520-0413124.jpg'),
(159, 14, 'iphone-se-128gb-2020-260520-0413177.jpg'),
(160, 14, 'iphone-se-128gb-2020-260520-0413188.jpg'),
(161, 14, 'iphone-se-128gb-2020-260520-0413209.jpg'),
(162, 14, 'iphone-se-128gb-2020-260520-04132110.jpg'),
(163, 14, 'iphone-se-128gb-2020-260520-04132311.jpg'),
(164, 14, 'iphone-se-2020-iOS-14-780x433.jpg'),
(165, 15, 'samsung-galaxy-A22-tong-quan-780x433.jpg'),
(166, 15, 'samsung-galaxy-a22-4g-240621-0432036.jpg'),
(167, 15, 'samsung-galaxy-a22-4g-240621-0432038.jpg'),
(168, 15, 'samsung-galaxy-a22-4g-240621-0432020.jpg'),
(169, 15, 'samsung-galaxy-a22-4g-240621-0432022.jpg'),
(170, 15, 'samsung-galaxy-a22-4g-240621-0432021.jpg'),
(171, 15, 'samsung-galaxy-a22-4g-240621-0432023.jpg'),
(172, 15, 'samsung-galaxy-a22-4g-240621-0432034.jpg'),
(173, 15, 'samsung-galaxy-a22-4g-240621-0432035.jpg'),
(175, 3, 'vi-vn-iphone-12-12.jpg'),
(176, 3, 'vi-vn-iphone-12-14.jpg'),
(177, 3, 'vi-vn-iphone-12-sacnhanh.jpg'),
(178, 16, 'vi-vn-iphone-12-pro-max-1.jpg'),
(179, 16, 'vi-vn-iphone-12-pro-max-2.jpg'),
(180, 16, 'vi-vn-iphone-12-pro-max-4.jpg'),
(181, 16, '-iphone-12-pro-max-kichthuoc.jpg'),
(182, 16, 'vi-vn-iphone-12-pro-max-9.jpg'),
(183, 16, 'vi-vn-iphone-12-pro-max-8.jpg'),
(184, 16, 'vi-vn-iphone-12-pro-max-7.jpg'),
(185, 16, 'vi-vn-iphone-12-pro-max-6.jpg'),
(186, 16, 'vi-vn-iphone-12-pro-max-5.jpg'),
(187, 16, 'iphone-12-pro-max-071220-0947190.jpg'),
(188, 16, 'vi-vn-iphone-12-pro-max-14.jpg'),
(189, 16, 'vi-vn-iphone-12-pro-max-13.jpg'),
(190, 16, 'vi-vn-iphone-12-pro-max-12.jpg'),
(191, 16, 'vi-vn-iphone-12-pro-max-11.jpg'),
(192, 16, 'vi-vn-iphone-12-pro-max-10.jpg'),
(193, 16, 'vi-vn-iphone-12-pro-max-15.jpg'),
(194, 16, 'vi-vn-iphone-12-pro-max-16.jpg'),
(195, 16, 'vi-vn-iphone-12-pro-max-17.jpg'),
(196, 16, 'vi-vn-iphone-12-pro-max-18.jpg'),
(197, 17, 'vi-vn-iphone-12-pro-max-1.jpg'),
(198, 17, 'vi-vn-iphone-12-pro-max-2.jpg'),
(199, 17, 'vi-vn-iphone-12-pro-max-4.jpg'),
(200, 17, '-iphone-12-pro-max-kichthuoc.jpg'),
(201, 17, 'iphone-12-pro-max-071220-0947190.jpg'),
(202, 17, 'vi-vn-iphone-12-pro-max-9.jpg'),
(203, 17, 'vi-vn-iphone-12-pro-max-8.jpg'),
(204, 17, 'vi-vn-iphone-12-pro-max-7.jpg'),
(205, 17, 'vi-vn-iphone-12-pro-max-6.jpg'),
(206, 17, 'vi-vn-iphone-12-pro-max-5.jpg'),
(207, 17, 'vi-vn-iphone-12-pro-max-14.jpg'),
(208, 17, 'vi-vn-iphone-12-pro-max-13.jpg'),
(209, 17, 'vi-vn-iphone-12-pro-max-12.jpg'),
(210, 17, 'vi-vn-iphone-12-pro-max-11.jpg'),
(211, 17, 'vi-vn-iphone-12-pro-max-10.jpg'),
(212, 17, 'vi-vn-iphone-12-pro-max-15.jpg'),
(213, 17, 'vi-vn-iphone-12-pro-max-16.jpg'),
(214, 17, 'vi-vn-iphone-12-pro-max-17.jpg'),
(215, 17, 'vi-vn-iphone-12-pro-max-18.jpg'),
(216, 18, 'samsung-galaxy-s21-ultra-5G-slider-780x433.jpg'),
(217, 18, 'vi-vn-samsung-galaxy-s21-ultra-5g-thietke-slider.jpg'),
(218, 18, 'vi-vn-samsung-galaxy-s21-ultra-5g-khangnuoc-slider.jpg'),
(219, 18, 'vi-vn-samsung-galaxy-s21-ultra-5g-5g-slider.jpg'),
(220, 18, 'vi-vn-samsung-galaxy-s21-ultra-5g-camera-slider.jpg'),
(221, 18, 'vi-vn-samsung-galaxy-s21-ultra-5g-choigame-slider.jpg'),
(222, 18, 'vi-vn-samsung-galaxy-s21-ultra-5g-chongrung-slider.jpg'),
(223, 18, 'vi-vn-samsung-galaxy-s21-ultra-5g-chupdem-slider.jpg'),
(224, 18, 'vi-vn-samsung-galaxy-s21-ultra-5g-lienketwindows10-slider.jpg'),
(225, 18, 'vi-vn-samsung-galaxy-s21-ultra-5g-luutru-slider.jpg'),
(226, 18, 'vi-vn-samsung-galaxy-s21-ultra-5g-manhinh-slider.jpg'),
(227, 18, 'vi-vn-samsung-galaxy-s21-ultra-5g-pin-slider.jpg'),
(228, 18, 'vi-vn-samsung-galaxy-s21-ultra-5g-quay8k-slider.jpg'),
(229, 18, 'vi-vn-samsung-galaxy-s21-ultra-5g-s-pen-slider.jpg'),
(230, 19, 'vi-vn-samsung-galaxy-s21-plus-256gb.jpg'),
(231, 19, 'samsung-galaxy-s21-plus-256gb-120321-0519085.jpg'),
(232, 19, 'samsung-galaxy-s21-plus-256gb-120321-0519052.jpg'),
(233, 19, 'samsung-galaxy-s21-plus-256gb-120321-05191713.jpg'),
(234, 19, 'vi-vn-samsung-galaxy-s21-plus-256gb-5g-luu-tru.jpg'),
(235, 19, 'samsung-galaxy-s21-plus-256gb-120321-05191612.jpg'),
(236, 19, 'samsung-galaxy-s21-plus-256gb-120321-05191511.jpg'),
(237, 19, 'samsung-galaxy-s21-plus-256gb-120321-05191310.jpg'),
(238, 19, 'samsung-galaxy-s21-plus-256gb-120321-0519129.jpg'),
(239, 19, 'samsung-galaxy-s21-plus-256gb-120321-0519118.jpg'),
(240, 19, 'samsung-galaxy-s21-plus-256gb-120321-0519107.jpg'),
(241, 19, 'samsung-galaxy-s21-plus-256gb-120321-0519074.jpg'),
(242, 19, 'samsung-galaxy-s21-plus-256gb-120321-0519096.jpg'),
(243, 19, 'samsung-galaxy-s21-plus-256gb-120321-0519063.jpg'),
(263, 21, '-samsung-galaxy-note-20-tinh-nang-noi-bat.jpg'),
(264, 21, 'vi-vn-samsung-galaxy-note-20-manhinh.jpg'),
(265, 21, 'vi-vn-samsung-galaxy-note-20-thietke.jpg'),
(266, 21, 'vi-vn-samsung-galaxy-note-20-spen.jpg'),
(267, 21, 'vi-vn-samsung-galaxy-note-20-camera.jpg'),
(268, 21, 'vi-vn-samsung-galaxy-note-20-choigame.jpg'),
(269, 21, 'vi-vn-samsung-galaxy-note-20-chupdem.jpg'),
(270, 21, 'vi-vn-samsung-galaxy-note-20-ghichu.jpg'),
(271, 21, 'vi-vn-samsung-galaxy-note-20-laynetdong.jpg'),
(272, 21, 'vi-vn-samsung-galaxy-note-20-pin.jpg'),
(273, 21, 'vi-vn-samsung-galaxy-note-20-quay-8k.jpg'),
(274, 21, 'vi-vn-samsung-galaxy-note-20-sac.jpg'),
(275, 21, 'vi-vn-samsung-galaxy-note-20-samsung-dex.jpg'),
(276, 21, 'vi-vn-samsung-galaxy-note-20-samsung-notes.jpg'),
(277, 21, 'vi-vn-samsung-galaxy-note-20-super-steady.jpg'),
(278, 21, 'vi-vn-samsung-galaxy-note-20-zoom.jpg'),
(279, 21, 'vi-vn-samsung-galaxy-note-20-khangnuoc.jpg'),
(280, 23, 'samsung-galaxy-s20-fan-edition-tongquan-780x433.jpg'),
(281, 23, 'samsung-galaxy-s20-fan-edition-cauhinh-780x433.jpg'),
(282, 23, 'vi-vn-samsung-galaxy-s20-fan-edition-camera.jpg'),
(283, 23, 'samsung-galaxy-s20-fan-edition-rom-780x433.jpg'),
(284, 23, 'vi-vn-samsung-galaxy-s20-fan-edition-chupdem.jpg'),
(285, 23, 'vi-vn-samsung-galaxy-s20-fan-edition-manhinh.jpg'),
(286, 23, 'vi-vn-samsung-galaxy-s20-fan-edition-pin.jpg'),
(287, 23, 'vi-vn-samsung-galaxy-s20-fan-edition-selfie.jpg'),
(288, 23, 'vi-vn-samsung-galaxy-s20-fan-edition-wifi.jpg'),
(289, 23, 'vi-vn-samsung-galaxy-s20-fan-edition-zoom.jpg'),
(290, 23, 'vi-vn-samsung-galaxy-s20-fan-edition-ip68.jpg'),
(291, 25, 'vi-vn-samsung-galaxy-a72-tongquan.jpg'),
(292, 25, 'vi-vn-samsung-galaxy-a72-camera.jpg'),
(293, 25, 'vi-vn-samsung-galaxy-a72-manhinh.jpg'),
(294, 25, 'vi-vn-samsung-galaxy-a72-amthanh.jpg'),
(295, 25, 'vi-vn-samsung-galaxy-a72-baomat.jpg'),
(296, 25, 'vi-vn-samsung-galaxy-a72-thietke.jpg'),
(297, 25, 'vi-vn-samsung-galaxy-a72-cauhinh.jpg'),
(298, 25, 'vi-vn-samsung-galaxy-a72-choigame.jpg'),
(299, 25, 'vi-vn-samsung-galaxy-a72-chongrung.jpg'),
(300, 25, 'vi-vn-samsung-galaxy-a72-pin-sac.jpg'),
(301, 25, 'vi-vn-samsung-galaxy-a72-super-steady.jpg'),
(302, 25, 'vi-vn-samsung-galaxy-a72-ip67.jpg'),
(303, 26, 'vi-vn-samsung-galaxy-a52-5g-tongquan1.jpg'),
(304, 26, 'vi-vn-samsung-galaxy-a52-5g-thiet-ke2.jpg'),
(305, 26, 'vi-vn-samsung-galaxy-a52-5g-camera4.jpg'),
(306, 26, 'vi-vn-samsung-galaxy-a52-5g-pin-sac.jpg'),
(307, 26, 'vi-vn-samsung-galaxy-a52-5g-manhinh3.jpg'),
(308, 26, 'vi-vn-samsung-galaxy-a52-5g-chong-rung.jpg'),
(309, 26, 'vi-vn-samsung-galaxy-a52-5g-choi-game.jpg'),
(310, 26, 'vi-vn-samsung-galaxy-a52-5g-cau-hinh5.jpg'),
(311, 26, 'vi-vn-samsung-galaxy-a52-5g.jpg'),
(312, 26, 'vi-vn-samsung-galaxy-a52-5g-am-thanh.jpg'),
(313, 26, 'vi-vn-samsung-galaxy-a52-5g-super-steady.jpg'),
(314, 26, 'vi-vn-samsung-galaxy-a52-5g-baomat.jpg'),
(315, 26, 'vi-vn-samsung-galaxy-a52-5g-khang-nuoc.jpg'),
(316, 27, 'samsung-galaxy-m51-tong-quan-780x433.jpg'),
(317, 27, 'vi-vn-samsung-galaxy-m51-thietke.jpg'),
(318, 27, 'vi-vn-samsung-galaxy-m51-camera.jpg'),
(319, 27, 'vi-vn-samsung-galaxy-m51-cauhinh.jpg'),
(320, 27, 'vi-vn-samsung-galaxy-m51-chupkhac.jpg'),
(321, 27, 'vi-vn-samsung-galaxy-m51-giaodien.jpg'),
(322, 27, 'vi-vn-samsung-galaxy-m51-manhinh.jpg'),
(323, 27, 'vi-vn-samsung-galaxy-m51-sacnhanh.jpg'),
(324, 27, 'vi-vn-samsung-galaxy-m51-selfie.jpg'),
(325, 27, 'vi-vn-samsung-galaxy-m51-sieurong.jpg'),
(326, 27, 'vi-vn-samsung-galaxy-m51-vienpin.jpg'),
(327, 28, 'samsung-galaxy-a51-tong-quan-780x433.jpg'),
(328, 28, 'samsung-galaxy-a5100008.jpg'),
(329, 28, '-samsung-galaxy-a51-slider-camera.jpg'),
(330, 28, 'samsung-galaxy-a5100001.jpg'),
(331, 28, 'chip.jpg'),
(332, 28, 'công-nghệ.jpg'),
(333, 28, 'mànghinhtoois.jpg'),
(334, 28, 'samsung-galaxy-a5100002.jpg'),
(335, 28, 'samsung-galaxy-a5100004.jpg'),
(336, 28, '-samsung-galaxy-a5100006-copy.jpg'),
(337, 28, 'samsung-galaxy-a5100009.jpg'),
(338, 29, 'vi-vn-samsung-galaxy-a32-4g-tongquan.jpg'),
(339, 29, 'vi-vn-samsung-galaxy-a32-4g-thietke.jpg'),
(340, 29, 'vi-vn-samsung-galaxy-a32-4g-camera.jpg'),
(341, 29, 'vi-vn-samsung-galaxy-a32-4g-cauhinh.jpg'),
(342, 29, 'vi-vn-samsung-galaxy-a32-4g-choigame.jpg'),
(343, 29, 'vi-vn-samsung-galaxy-a32-4g-manhinh.jpg'),
(344, 29, 'vi-vn-samsung-galaxy-a32-4g-pin.jpg'),
(345, 29, 'vi-vn-samsung-galaxy-a32-4g-selfie.jpg'),
(346, 29, 'vi-vn-samsung-galaxy-a32-4g-sieurong.jpg'),
(347, 30, 'oppo-reno5-slider-tongquan1-780x433.jpg'),
(348, 30, 'oppo-reno5-slidercopy-780x433.jpg'),
(349, 30, 'vi-vn-oppo-reno5-videokep-8-f-780x433.jpg'),
(350, 30, 'vi-vn-oppo-reno5-ai.jpg'),
(351, 30, 'vi-vn-oppo-reno5-slider-fix-15.jpg'),
(352, 30, 'vi-vn-oppo-reno5-cauhinh.jpg'),
(353, 30, 'vi-vn-oppo-reno5-manhinh.jpg'),
(354, 30, 'vi-vn-oppo-reno5-phoisangkep.jpg'),
(355, 30, 'vi-vn-oppo-reno5-quaydem.jpg'),
(356, 30, 'vi-vn-oppo-reno5-lammat.jpg'),
(357, 30, 'vi-vn-oppo-reno5-sacnhanh.jpg'),
(358, 30, 'vi-vn-oppo-reno5-soloop.jpg'),
(359, 31, 'vi-vn-oppo-find-x3-pro-5g-tongquan.jpg'),
(360, 31, 'vi-vn-oppo-find-x3-pro-5g-thietke.jpg'),
(361, 31, 'vi-vn-oppo-find-x3-pro-5g-manhinh.jpg'),
(362, 31, 'vi-vn-oppo-find-x3-pro-5g-camerasau.jpg'),
(363, 31, 'vi-vn-oppo-find-x3-pro-5g-chupgocrong.jpg'),
(364, 31, 'vi-vn-oppo-find-x3-pro-5g-hieunang.jpg'),
(365, 31, 'vi-vn-oppo-find-x3-pro-5g-luutru.jpg'),
(366, 31, 'vi-vn-oppo-find-x3-pro-5g-pin.jpg'),
(367, 31, 'vi-vn-oppo-find-x3-pro-5g-selfie.jpg'),
(368, 32, 'vi-vn-oppo-a74-4g-tinhnang-slider.jpg'),
(369, 32, 'vi-vn-oppo-a74-4g-thietke-slider.jpg'),
(370, 32, 'vi-vn-oppo-a74-4g-camera-slider.jpg'),
(371, 32, 'vi-vn-oppo-a74-4g-boloc-slider.jpg'),
(372, 32, 'vi-vn-oppo-a74-4g-cauhinh-slider.jpg'),
(373, 32, 'vi-vn-oppo-a74-4g-manhin-slider.jpg'),
(374, 32, 'vi-vn-oppo-a74-4g-pinsac-slider.jpg'),
(375, 32, 'oppo-A74-4G-gamefocus-slider-780x433.jpg'),
(376, 33, 'vi-vn-oppo-reno4-pro-tinhnang.jpg'),
(377, 33, 'vi-vn-oppo-reno4-pro-thietke.jpg'),
(378, 33, 'vi-vn-oppo-reno4-pro-camerasau.jpg'),
(379, 33, 'vi-vn-oppo-reno4-pro-matlung.jpg'),
(380, 33, 'vi-vn-oppo-reno4-pro-vantay.jpg'),
(381, 33, 'vi-vn-oppo-reno4-pro-tansoquet.jpg'),
(382, 33, 'vi-vn-oppo-reno4-pro-soloop.jpg'),
(383, 33, 'vi-vn-oppo-reno4-pro-selfie.jpg'),
(384, 33, 'vi-vn-oppo-reno4-pro-sac.jpg'),
(385, 33, 'vi-vn-oppo-reno4-pro-lammat.jpg'),
(386, 33, 'vi-vn-oppo-reno4-pro-giaodien.jpg'),
(387, 33, 'vi-vn-oppo-reno4-pro-donsac.jpg'),
(388, 33, 'vi-vn-oppo-reno4-pro-cauhinh.jpg'),
(389, 33, 'vi-vn-oppo-reno4-pro-baovemat.jpg'),
(390, 34, 'vi-vn-oppo-a94-tongquan.jpg'),
(391, 34, 'vi-vn-oppo-a94-camera.jpg'),
(392, 34, 'vi-vn-oppo-a94-manhinh.jpg'),
(393, 34, 'vi-vn-oppo-a94-cauhinh.jpg'),
(394, 34, 'vi-vn-oppo-a94-donsac.jpg'),
(395, 34, 'vi-vn-oppo-a94-hieu-ung.jpg'),
(396, 34, 'vi-vn-oppo-a94-sac-nhanh.jpg'),
(397, 34, 'vi-vn-oppo-a94-toi-uu.jpg'),
(398, 34, 'vi-vn-oppo-a94-video-kep.jpg'),
(399, 35, '-oppo-a93-tong-quan.jpg'),
(400, 35, 'vi-vn-oppo-a93-thietke.jpg'),
(401, 35, 'vi-vn-oppo-a93-camerasau.jpg'),
(402, 35, 'vi-vn-oppo-a93-manhinh.jpg'),
(403, 35, 'vi-vn-oppo-a93-selfie.jpg'),
(404, 35, 'vi-vn-oppo-a93-domong.jpg'),
(405, 35, 'vi-vn-oppo-a93-chongtre.jpg'),
(406, 35, 'vi-vn-oppo-a93-cauhinh.jpg'),
(407, 35, 'oppo-a93-sac-nhanh-128w-780x433.jpg'),
(408, 36, 'oppo-a54-tongquan-slider-780x433-1.jpg'),
(409, 36, 'vi-vn-oppo-a54-camera-slider.jpg'),
(410, 36, 'vi-vn-oppo-a54-cauhinh-slider.jpg'),
(411, 36, 'vi-vn-oppo-a54-manhinh-slider.jpg'),
(412, 36, 'vi-vn-oppo-a54-pinsac-slider.jpg'),
(413, 36, 'vi-vn-oppo-a54-thietke-slider.jpg'),
(414, 36, 'vi-vn-oppo-a54-boloc-slider.jpg'),
(415, 37, 'vi-vn-oppo-a15s-tongquan-slider.jpg'),
(416, 37, 'vi-vn-oppo-a15s-thietke-slider.jpg'),
(417, 37, 'vi-vn-oppo-a15s-pin-slider.jpg'),
(418, 37, 'vi-vn-oppo-a15s-giaodien-slider.jpg'),
(419, 37, 'vi-vn-oppo-a15s-camerasau-slider.jpg'),
(420, 37, 'vi-vn-oppo-a15s-matlung-slider.jpg'),
(421, 37, 'vi-vn-oppo-a15s-cauhinh-slider.jpg'),
(422, 37, 'vi-vn-oppo-a15s-baomat-slider.jpg'),
(423, 37, 'vi-vn-oppo-a15s-cameratruoc-slider.jpg'),
(424, 37, 'vi-vn-oppo-a15s-manhinh-slider.jpg'),
(425, 38, 'vi-vn-oppo-a74-5g-tongquan.jpg'),
(426, 38, 'vi-vn-oppo-a74-5g-manhinh.jpg'),
(427, 38, 'oppo-a74-5g-thietke-780x433.jpg'),
(428, 38, 'vi-vn-oppo-a74-5g-sacnhanh.jpg'),
(429, 38, 'vi-vn-oppo-a74-5g-tansoquet.jpg'),
(430, 38, 'vi-vn-oppo-a74-5g-camera-sau.jpg'),
(431, 38, 'vi-vn-oppo-a74-5g-android.jpg'),
(432, 38, 'vi-vn-oppo-a74-5g-boloc.jpg'),
(433, 38, 'vi-vn-oppo-a74-5g-cauhinh.jpg'),
(434, 38, 'vi-vn-oppo-a74-5g-pin.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_ket_noi`
--

CREATE TABLE `sp_ket_noi` (
  `sp_id` int(11) NOT NULL,
  `mang_di_dong` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sim` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `wifi` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gps` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `bluetooth` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_ket_noi`
--

INSERT INTO `sp_ket_noi` (`sp_id`, `mang_di_dong`, `sim`, `wifi`, `gps`, `bluetooth`) VALUES
(3, 'Hỗ trợ 5G', '1 Nano SIM & 1 eSIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n</br>\r\nWi-Fi MIMO\r\n</br>\r\nWi-Fi hotspot', 'A-GPS  </br>BDS</br>  GALILEO </br> GLONASS </br> QZSS </br> iBeacon', 'A2DP </br>v5.0'),
(4, 'Hỗ trợ 4G', '1 Nano SIM & 1 eSIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n</br>\r\nWi-Fi hotspot', 'A-GPS</br>  BDS </br> GLONASS', 'A2DP</br> v5.0'),
(5, 'Hỗ trợ 4G', '1 Nano SIM & 1 eSIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n</br>\r\nWi-Fi hotspot', 'A-GPS </br> BDS </br> GLONASS', 'LE </br>v5.0'),
(8, 'Hỗ trợ 5G', '1 Nano SIM & 1 eSIM', 'Wi-Fi 802.11 a/b/g/n/ac/ax\r\n</br>\r\nWi-Fi MIMO\r\n</br>\r\nDual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi hotspot', 'QZSS </br> iBeacon  </br>A-GPS </br> BDS </br> GALILEO</br>  GLONASS', 'v5.0</br> A2DP'),
(9, 'Hỗ trợ 4G', '1 Nano SIM & 1 eSIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac\r\n</br>\r\nWi-Fi hotspot', 'A-GPS </br>GLONASS', 'A2DP </br> LE </br> v5.0'),
(10, 'Hỗ trợ 5G', '2 Nano SIM hoặc 1 Nano SIM + 1 eSIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n</br>\r\nWi-Fi Direct\r\n\r\nWi-Fi hotspot', 'A-GPS </br> BDS </br> GALILEO </br> GLONASS', 'A2DP </br> apt-X </br> v5.0'),
(14, 'Hỗ trợ 4G', '1 Nano SIM & 1 eSIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n</br>\r\nWi-Fi hotspot', 'A-GPS </br>GLONASS', 'A2DP </br> LE </br> v5.0'),
(15, 'Hỗ trợ 4G', '2 Nano SIM', 'Wi-Fi hotspot\r\n</br>\r\nDual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi Direct\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac', 'BDS  </br>A-GPS </br> GLONASS', 'A2DP  </br>v5.0</br>  LE'),
(16, 'Hỗ trợ 5G', '1 Nano SIM & 1 eSIM', 'Wi-Fi 802.11 a/b/g/n/ac/ax\r\n</br>\r\nWi-Fi hotspot\r\n</br>\r\nDual-band (2.4 GHz/5 GHz)', 'BDS </br> GLONASS </br> A-GPS', 'A2DP </br>v5.0'),
(17, 'Hỗ trợ 5G', '1 Nano SIM & 1 eSIM', 'Wi-Fi 802.11 a/b/g/n/ac/ax\r\n</br>\r\nWi-Fi hotspot\r\n</br>\r\nDual-band (2.4 GHz/5 GHz)', 'A-GPS </br> BDS </br> GLONASS', 'A2DP </br>v5.0'),
(18, 'Hỗ trợ 5G', '2 Nano SIM hoặc 1 Nano SIM + 1 eSIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n</br>\r\nWi-Fi Direct\r\n</br>\r\nWi-Fi hotspot', 'A-GPS</br>  BDS  </br>GALILEO </br> GLONASS', 'A2DP  </br>apt-X  </br>v5.0'),
(19, 'Hỗ trợ 5G', '2 Nano SIM hoặc 1 Nano SIM + 1 eSIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n</br>\r\nWi-Fi Direct\r\n</br>\r\nWi-Fi hotspot', 'A-GPS  </br>BDS </br> GALILEO</br>  GLONASS', 'A2DP  </br>apt-X </br> v5.0'),
(21, 'Hỗ trợ 4G', '2 Nano SIM hoặc 1 Nano SIM + 1 eSIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n</br>\r\nWi-Fi hotspot\r\n</br>\r\nWi-Fi Direct', 'GLONASS</br>  BDS </br> A-GPS', 'A2DP  </br>LE </br> v5.0'),
(23, 'Hỗ trợ 4G', '2 Nano SIM (SIM 2 chung khe thẻ nhớ)', 'Wi-Fi 802.11 a/b/g/n/ac/ax\r\n</br>\r\nWi-Fi MIMO\r\n</br>\r\nWi-Fi hotspot\r\n</br>\r\nDual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi Direct', 'A-GPS </br> BDS </br> GALILEO</br>  GLONASS', 'LE  </br>A2DP  </br>v5.0'),
(25, 'Hỗ trợ 4G', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac\r\n</br>\r\nWi-Fi Direct\r\n</br>\r\nWi-Fi hotspot', 'A-GPS </br> BDS  </br>GALILEO  </br>GLONASS', 'A2DP  </br>LE </br> v5.0'),
(26, 'Hỗ trợ 5G', '2 Nano SIM', 'Wi-Fi hotspot\r\n</br>\r\nDual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi Direct\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac', 'GALILEO </br> A-GPS</br>  GLONASS</br>  BDS', 'v5.0'),
(27, 'Hỗ trợ 4G', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac\r\n</br>\r\nWi-Fi Direct\r\n</br>\r\nWi-Fi hotspot', 'A-GPS</br>  BDS </br> GALILEO  </br>GLONASS', 'A2DP </br> LE </br> v5.0'),
(28, 'Hỗ trợ 4G', '2 Nano SIM', 'Wi-Fi hotspot\r\n</br>\r\nDual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi Direct\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac', 'A-GPS  </br>GLONASS</br>  BDS', 'A2DP </br>LE'),
(29, 'Hỗ trợ 4G', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac\r\n</br>\r\nWi-Fi Direct\r\n</br>\r\nWi-Fi hotspot', 'A-GPS </br>GLONASS', 'A2DP</br>  LE </br> v5.0'),
(30, 'Hỗ trợ 4G', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac\r\n</br>\r\nWi-Fi Direct\r\n</br>\r\nWi-Fi hotspot', 'A-GPS </br> BDS </br> GLONASS', 'A2DP </br> LE</br>  v5.1'),
(31, 'Hỗ trợ 5G', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n</br>\r\nWi-Fi Direct\r\n</br>\r\nWi-Fi hotspot', 'A-GPS</br>  BDS  </br>GALILEO  </br>GLONASS', 'A2DP </br> LE </br> v5.2'),
(32, 'Hỗ trợ 4G', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac\r\n</br>\r\nWi-Fi Direct\r\n</br>\r\nWi-Fi hotspot', 'A-GPS </br> BDS </br> GALILEO </br> GLONASS', 'A2DP  </br>LE  </br>v5.0'),
(33, 'Hỗ trợ 4G', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac\r\n</br>\r\nWi-Fi Direct\r\n</br>\r\nWi-Fi hotspot', 'A-GPS', 'A2DP </br> LE </br> v5.1'),
(34, 'Hỗ trợ 4G', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac\r\n</br>\r\nWi-Fi hotspot', 'A-GPS  </br>BDS </br> GALILEO </br> GLONASS', 'A2DP  </br>LE </br> apt-X </br> v5.1'),
(35, 'Hỗ trợ 4G', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz) </br>\r\nWi-Fi 802.11 a/b/g/n/ac', 'A-GPS', 'v5.1'),
(36, 'Hỗ trợ 4G', '2 Nano SIM', 'Wi-Fi hotspot\r\n</br>\r\nDual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi Direct\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac', 'GALILEO </br> A-GPS </br> BDS  </br>GLONASS', 'A2DP  </br>LE  </br>v5.2'),
(37, 'Hỗ trợ 4G', '2 Nano SIM', 'Wi-Fi 802.11 a/b/g/n\r\n\r\n</br>Wi-Fi Direct\r\n</br>\r\nWi-Fi hotspot', 'A-GPS', 'v5.0'),
(38, 'Hỗ trợ 5G', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz)\r\n</br>\r\nWi-Fi 802.11 a/b/g/n/ac\r\n</br>\r\nWi-Fi Direct\r\n</br>\r\nWi-Fi hotspot', 'A-GPS </br> BDS </br> GALILEO </br> GLONASS', 'A2DP</br>  LE </br> v5.1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_manhinh`
--

CREATE TABLE `sp_manhinh` (
  `sp_id` int(11) NOT NULL,
  `cong_nghe` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `do_phan_giai` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `man_hinh_rong` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `do_sang` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_kinh` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_manhinh`
--

INSERT INTO `sp_manhinh` (`sp_id`, `cong_nghe`, `do_phan_giai`, `man_hinh_rong`, `do_sang`, `mat_kinh`) VALUES
(3, 'OLED', '1170 x 2532 Pixels', '6.1', '1200 nits', 'Kính cường lực Ceramic Shield'),
(4, 'IPS LCD', 'IPS LCD', '6.1', '625 nits', 'Kính cường lực Oleophobic (ion cường lực)'),
(5, 'IPS LCD', '828 x 1792 Pixels', '6.1', '625 nits', 'Kính cường lực Oleophobic (ion cường lực)'),
(8, 'OLED', 'Full HD+ (1080 x 2340 Pixels)', '5.4', '1203 nits', 'Kính cường lực Ceramic Shield'),
(9, 'IPS LCD', '828 x 1792 Pixels', '6.1', '625 nits', 'Kính cường lực Oleophobic (ion cường lực)'),
(10, 'Dynamic AMOLED 2X', 'Full HD+ (1080 x 2400 Pixels)', '6.2', '1300 nits', 'Kính cường lực Corning Gorilla Glass Victus'),
(14, 'IPS LCD', 'HD (750 x 1334 Pixels)', '4.7', '625 nits', 'Kính cường lực Oleophobic (ion cường lực)'),
(15, 'Super AMOLED', 'HD+ (720 x 1600 Pixels)', '6.4', '600 nits', 'Kính cường lực Corning Gorilla Glass 5'),
(16, 'OLED', '1284 x 2778 Pixels', '6.7\" - Tần số quét 60 Hz', '1200 nits', 'Kính cường lực Ceramic Shield'),
(17, 'OLED', '1170 x 2532 Pixels', '6.1\" - Tần số quét 60 Hz', '1200 nits', 'Kính cường lực Ceramic Shield'),
(18, 'Dynamic AMOLED 2X', '2K+ (1440 x 3200 Pixels)', '6.8\" - Tần số quét 120 Hz', '1500 nits', 'Kính cường lực Corning Gorilla Glass Victus'),
(19, 'Dynamic AMOLED 2X', 'Full HD+ (1080 x 2400 Pixels)', '6.7\" - Tần số quét 120 Hz', '1300 nits', 'Kính cường lực Corning Gorilla Glass Victus'),
(21, 'Super AMOLED Plus', 'Full HD+ (1080 x 2400 Pixels)', '6.7', '1050 nits', 'Kính cường lực Corning Gorilla Glass 5'),
(23, 'Super AMOLED', 'Full HD+ (1080 x 2400 Pixels)', '6.5', '1200 nits', 'Mặt kính cong 2.5D'),
(25, 'Super AMOLED', 'Full HD+ (1080 x 2400 Pixels)', '6.7\" - Tần số quét 90 Hz', '800 nits', 'Kính cường lực'),
(26, 'Super AMOLED', 'Full HD+ (1080 x 2400 Pixels)', '6.5\" - Tần số quét 120 Hz', '800 nits', 'Kính cường lực'),
(27, 'Super AMOLED Plus', 'Full HD+ (1080 x 2400 Pixels)', '6.7', '420 nits', 'Mặt kính cong 2.5D'),
(28, 'Super AMOLED', 'Full HD+ (1080 x 2400 Pixels)', '6.5\" - Tần số quét 60 Hz', '1200 nits', 'Kính cường lực Corning Gorilla Glass 3'),
(29, 'Super AMOLED', 'Full HD+ (1080 x 2400 Pixels)', '6.4\" - Tần số quét 90 Hz', '800 nits', 'Kính cường lực Corning Gorilla Glass 5'),
(30, 'AMOLED', 'Full HD+ (1080 x 2400 Pixels)', '6.43', '600 nits', 'Kính cường lực Corning Gorilla Glass 3+'),
(31, 'AMOLED', 'Full HD+ (1080 x 2400 Pixels)', '6.7', '800 nits', 'Kính cường lực Corning Gorilla Glass 5'),
(32, 'AMOLED', 'Full HD+ (1080 x 2400 Pixels)', '6.43\" - Tần số quét 60 Hz', '800 nits', 'Kính cường lực Schott Xensation UP'),
(33, 'AMOLED', 'Full HD+ (1080 x 2400 Pixels)', '6.5\" - Tần số quét 90 Hz', '500 nits', 'Kính cường lực Corning Gorilla Glass 5'),
(34, 'AMOLED', 'Full HD+ (1080 x 2400 Pixels)', '6.43\" - Tần số quét 60 Hz', '800 nits', 'Mặt kính cong 2.5D'),
(35, 'AMOLED', 'Full HD+ (1080 x 2400 Pixels)', '6.43\" - Tần số quét 60 Hz', '430 nits', 'Kính cường lực Corning Gorilla Glass 3+'),
(36, 'IPS LCD', 'HD+ (720 x 1600 Pixels)', '6.5', '800 nits', 'Kính thường'),
(37, 'LCD', 'HD+ (720 x 1600 Pixels)', '6.52\" - Tần số quét 60 Hz', '480 nits', 'Kính cường lực Corning Gorilla Glass 3'),
(38, 'IPS LCD', 'Full HD+ (1080 x 2400 Pixels)', '6.5', '480 nits', 'Kính cường lực Panda');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_mau_sac`
--

CREATE TABLE `sp_mau_sac` (
  `id_all` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `sp_ten_mau` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinh_anh` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_mau_sac`
--

INSERT INTO `sp_mau_sac` (`id_all`, `sp_id`, `id`, `sp_ten_mau`, `hinh_anh`) VALUES
(9, 3, 1, 'Đen', 'iphone-12-den-200x200.jpg'),
(10, 3, 2, 'Trắng', 'iphone-12-trang-200x200.jpg'),
(11, 3, 3, 'Đỏ', 'iphone-12-do-200x200.jpg'),
(12, 4, 1, 'Đen', 'iphone-11-den-200x200.jpg'),
(13, 4, 2, 'Vàng', 'iphone-11-vang-200x200.jpg'),
(14, 4, 3, 'Trắng', 'iphone-11-trang-200x200.jpg'),
(15, 5, 1, 'Đen', 'iphone-11-den-200x200.jpg'),
(16, 5, 2, 'Xanh ngọc', 'iphone-11-xanhla-200x200.jpg'),
(17, 5, 3, 'Trắng', 'iphone-11-trang-200x200.jpg'),
(18, 8, 1, 'Xanh lá', 'iphone-12-mini-xanh-la-15-200x200.jpg'),
(19, 8, 2, 'Đen', 'iphone-12-mini-den-15-200x200.jpg'),
(20, 8, 3, 'Trắng', 'iphone-12-mini-trang-15-200x200.jpg'),
(21, 8, 4, 'Đỏ', 'iphone-12-mini-do-4-200x200.jpg'),
(22, 9, 1, 'Đen', 'iphone-xr-hopmoi-den-600x600-2-200x200.jpg'),
(23, 9, 2, 'Trắng', 'iphone-xr-trang-600-1-200x200.jpg'),
(24, 9, 3, 'Đỏ', 'iphone-xr-do-600-1-200x200.jpg'),
(25, 10, 1, 'Xám', 'samsung-galaxy-s21-xam-200x200.jpg'),
(26, 10, 2, 'Trắng', 'samsung-galaxy-s21-trang-200x200.jpg'),
(30, 14, 1, 'Trắng', 'iphone-se-128gb-2020-trang-200x200.jpg'),
(31, 14, 2, 'Đỏ', 'iphone-se-128gb-2020-do-200x200.jpg'),
(32, 15, 1, 'Đen', 'samsung-galaxy-a22-4g-black-600x600.jpg'),
(58, 16, 1, 'Xám', 'iphone-12-pro-max-xam-new-600x600-200x200.jpg'),
(59, 16, 2, 'Bạc', 'iphone-12-pro-max-trang-bac-600x600-200x200.jpg'),
(62, 17, 1, 'Xám', 'iphone-12-pro-xam-new-600x600-200x200.jpg'),
(63, 17, 2, 'Bạc', 'iphone-12-pro-bac-new-600x600-200x200.jpg'),
(66, 18, 1, 'Bạc', 'samsung-galaxy-s21-ultra-bac-600x600-1-200x200.jpg'),
(67, 18, 2, 'Đen', 'samsung-galaxy-s21-ultra-den-600x600-1-200x200.jpg'),
(68, 19, 1, 'Bạc', 'samsung-galaxy-s21-plus-256gb-bac-600x600-200x200.jpg'),
(69, 19, 2, 'Đen', 'samsung-galaxy-s21-plus-256gb-den-600x600-200x200.jpg'),
(72, 21, 1, 'Xám', '200-note-20-1-org.png'),
(73, 21, 2, 'Xanh lá', '200-note-20-3-org.png'),
(74, 21, 3, 'Vàng đồng', '200-note-20-2-org.png'),
(75, 23, 1, 'Xanh dương', 'samsung-galaxy-s20-fe-xanhduong-200x200-org.png'),
(76, 23, 2, 'Xanh lá', 'samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg'),
(78, 25, 1, 'Trắng', 'samsung-galaxy-a72-thumb-white-600x600-200x200.jpg'),
(80, 25, 3, 'Xanh dương', 'samsung-galaxy-a72-thumb-blue-600x600-200x200.jpg'),
(81, 25, 4, 'Tím', 'samsung-galaxy-a72-thumb-violet-600x600-200x200.jpg'),
(89, 26, 1, 'Đen', 'samsung-galaxy-a52-5g-thumb-black-600x600-200x200.jpg'),
(90, 26, 2, 'Xanh dương', 'samsung-galaxy-a52-5g-thumb-blue-600x600-200x200.jpg'),
(91, 27, 1, 'Trắng', 'samsung-galaxy-m51-trang-new-600x600-600x600.jpg'),
(92, 27, 2, 'Đen', 'samsung-galaxy-m51-den-new-600x600-200x200.jpg'),
(93, 28, 1, 'Xanh ngọc', 'samsung-galaxy-a51-blue-200x200.jpg'),
(94, 28, 2, 'Bạc Inox', 'samsung-galaxy-a51-silver-200x200.jpg'),
(95, 28, 3, 'Đen', 'samsung-galaxy-a51-black-200x200.jpg'),
(96, 28, 4, 'Trắng', 'samsung-galaxy-a51-white-2-200x200.jpg'),
(97, 29, 1, 'Đen', 'samsung-galaxy-a32-4g-thumb-den-600x600-200x200.jpg'),
(100, 29, 2, 'Trắng', 'samsung-galaxy-a32-4g-thumb-trang-600x600-200x200.jpg'),
(101, 29, 3, 'Tím', 'samsung-galaxy-a32-4g-thumb-tim-600x600-200x200.jpg'),
(102, 30, 1, 'Bạc', 'oppo-reno5-trang-600x600-1-600x600.jpg'),
(103, 30, 2, 'Đen', 'oppo-reno5-den-600x600-1-200x200.jpg'),
(104, 31, 1, 'Đen', 'oppo-find-x3-pro-black-001-1-600x600.jpg'),
(105, 31, 2, 'Xanh đen', 'oppo-find-x3-pro-blue-001-200x200.jpg'),
(106, 32, 1, 'Đen', 'oppo-a74-black-10-200x200.jpg'),
(107, 32, 2, 'Xanh dương', 'oppo-a74-blue-9-200x200.jpg'),
(108, 33, 1, 'Trắng', 'oppo-reno4-pro-trang-200x200.jpg'),
(109, 33, 2, 'Đen', 'oppo-reno4-pro-den-200x200.jpg'),
(110, 34, 1, 'Đen', 'oppo-a94-black-thumb-600x600-1-200x200.jpg'),
(111, 34, 2, 'Tím', 'oppo-a94-black-thumb-purple-600x600-200x200.jpg'),
(112, 35, 1, 'Đen', 'oppo-a93-den-14-200x200.jpg'),
(113, 35, 2, 'Trắng', 'oppo-a93-trang-14-200x200.jpg'),
(114, 36, 1, 'Xanh dương', 'oppo-a54-4g-blue-200x200.jpg'),
(115, 36, 2, 'Đen', 'oppo-a54-4g-black-600x600.jpg'),
(116, 37, 1, 'Đen', 'oppo-a15s-den-600x600-4-200x200.jpg'),
(117, 37, 2, 'Xanh dương', 'oppo-a15s-xanh-600x600-3-200x200.jpg'),
(118, 38, 1, 'Bạc', 'oppo-a74-5g-silver-01-600x600.jpg'),
(119, 38, 2, 'Đen', 'oppo-a74-5g-black-01-200x200.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_pin`
--

CREATE TABLE `sp_pin` (
  `sp_id` int(11) NOT NULL,
  `dung_luong` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `loai` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cong_nghe_pin` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_pin`
--

INSERT INTO `sp_pin` (`sp_id`, `dung_luong`, `loai`, `cong_nghe_pin`) VALUES
(3, '2815 mAh', 'Li-Ion', 'Sạc không dây\r\n</br>\r\nSạc không dây MagSafe\r\n</br>\r\nSạc pin nhanh\r\n</br>\r\nTiết kiệm pin'),
(4, '3110 mAh', 'Li-Ion', 'Sạc không dây\r\n</br>\r\nSạc pin nhanh\r\n</br>\r\nTiết kiệm pin'),
(5, '3110 mAh', 'Li-Ion', 'Sạc không dây\r\n</br>\r\nSạc pin nhanh\r\n</br>\r\nTiết kiệm pin'),
(8, '2227 mAh', 'Li-Ion', 'Sạc pin nhanh\r\n</br>\r\nTiết kiệm pin\r\n</br>\r\nSạc không dây MagSafe\r\n</br>\r\nSạc không dây'),
(9, '2942 mAh', 'Li-Ion', 'Sạc không dây\r\n</br>\r\nSạc pin nhanh\r\n</br>\r\nTiết kiệm pin'),
(10, '4000 mAh', 'Li-Ion', 'Sạc pin nhanh\r\n</br>\r\nSiêu tiết kiệm pin\r\n</br>\r\nSạc không dây\r\n</br>\r\nSạc ngược không dây\r\n</br>\r\nTiết kiệm pin'),
(14, '1821 mAh', 'Li-Ion', 'Sạc không dây\r\n</br>\r\nSạc pin nhanh\r\n</br>\r\nTiết kiệm pin'),
(15, '5000 mAh', 'Li-Po', 'Sạc pin nhanh </br>Tiết kiệm pin'),
(16, '3687 mAh', 'Li-Ion', 'Sạc không dây\r\n</br>\r\nTiết kiệm pin\r\n</br>\r\nSạc không dây MagSafe\r\n</br>\r\nSạc pin nhanh'),
(17, '2815 mAh', 'Li-Ion', 'Sạc không dây\r\n</br>\r\nTiết kiệm pin\r\n</br>\r\nSạc không dây MagSafe\r\n</br>\r\nSạc pin nhanh'),
(18, '5000 mAh', 'Li-Ion', 'Sạc pin nhanh\r\n</br>\r\nSiêu tiết kiệm pin\r\n</br>\r\nSạc không dây\r\n</br>\r\nSạc ngược không dây\r\n</br>\r\nTiết kiệm pin'),
(19, '4800 mAh', 'Li-Ion', 'Siêu tiết kiệm pin\r\n</br>\r\nSạc không dây\r\n</br>\r\nSạc ngược không dây\r\n</br>\r\nSạc pin nhanh\r\n</br>\r\nTiết kiệm pin'),
(21, '4300 mAh', 'Li-Ion', 'Sạc pin nhanh\r\n</br>\r\nSạc không dây\r\n</br>\r\nSiêu tiết kiệm pin\r\n</br>\r\nTiết kiệm pin\r\n</br>\r\nSạc ngược không dây'),
(23, '4500 mAh', 'Li-Ion', 'Sạc pin nhanh\r\n</br>\r\nSạc ngược không dây\r\n</br>\r\nSạc không dây'),
(25, '5000 mAh', 'Li-Ion', 'Sạc pin nhanh'),
(26, '4500 mAh', 'Li-Ion', 'Sạc pin nhanh'),
(27, '7000 mAh', 'Li-Ion', 'Sạc pin nhanh\r\n</br>\r\nSiêu tiết kiệm pin\r\n</br>\r\nTiết kiệm pin'),
(28, '4000 mAh', 'Li-Po', 'Sạc pin nhanh\r\n</br>\r\nSiêu tiết kiệm pin\r\n</br>\r\nTiết kiệm pin'),
(29, '5000 mAh', 'Li-Ion', 'Sạc pin nhanh'),
(30, '4310 mAh', 'Li-Po', 'Sạc pin nhanh </br>Tiết kiệm pin'),
(31, '4500 mAh', 'Li-Po', 'Sạc không dây\r\n</br>\r\nSạc siêu nhanh SuperVOOC\r\n</br>\r\nTiết kiệm pin'),
(32, '5000 mAh', 'Li-Ion', 'Sạc pin nhanh'),
(33, '4000 mAh', 'Li-Ion', 'Sạc siêu nhanh SuperVOOC  </br>Tiết kiệm pin'),
(34, '4310 mAh', 'Li-Ion', 'Sạc nhanh VOOC</br> Tiết kiệm pin'),
(35, '4000 mAh', 'Li-Ion', 'Sạc pin nhanh'),
(36, '5000 mAh', 'Li-Ion', 'Sạc pin nhanh'),
(37, '4230 mAh', 'Li-Ion', 'Tiết kiệm pin'),
(38, '5000 mAh', 'Li-Ion', 'Sạc pin nhanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_thongtinchung`
--

CREATE TABLE `sp_thongtinchung` (
  `sp_id` int(11) NOT NULL,
  `thiet_ke` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `chat_lieu` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `kt_kl` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `thoi_diem_ra_mat` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_thongtinchung`
--

INSERT INTO `sp_thongtinchung` (`sp_id`, `thiet_ke`, `chat_lieu`, `kt_kl`, `thoi_diem_ra_mat`) VALUES
(3, 'Nguyên khối', 'Khung nhôm & Mặt lưng kính cường lực', 'Dài 146.7 mm - Ngang 71.5 mm - Dày 7.4 mm - Nặng 164 g', '10/2020'),
(4, 'Nguyên khối', 'Khung nhôm & Mặt lưng kính cường lực', 'Dài 150.9 mm - Ngang 75.7 mm - Dày 8.3 mm - Nặng 194 g', '11/2019'),
(5, 'Nguyên khối', 'Khung nhôm & Mặt lưng kính cường lực', 'Dài 150.9 mm - Ngang 75.7 mm - Dày 8.3 mm - Nặng 194 g', '11/2019'),
(8, 'Nguyên khối', 'Khung nhôm & Mặt lưng kính cường lực', 'Dài 131.5 mm - Ngang 64.2 mm - Dày 7.4 mm - Nặng 135 g', '10/2020'),
(9, 'Nguyên khối', 'Khung nhôm & Mặt lưng kính cường lực', 'Dài 150.9 mm - Ngang 75.7 mm - Dày 8.3 mm - Nặng 194 g', '11/2018'),
(10, 'Nguyên khối', 'Khung hợp kim nhôm & Mặt lưng nhựa', 'Dài 151.7 mm - Ngang 71.2 mm - Dày 7.9 mm - Nặng 170 g', '01/2021'),
(14, 'Nguyên khối', 'Khung kim loại & Mặt lưng kính', 'Dài 138.4 mm - Ngang 67.3 mm - Dày 7.3 mm - Nặng 148 g', '06/2020'),
(15, 'Nguyên khối', 'Khung & Mặt lưng nhựa', 'Dài 159.3 mm - Ngang 73.6 mm - Dày 8.4 mm - Nặng 186 g', '06/2021'),
(16, 'Nguyên khối', 'Khung thép không gỉ & Mặt lưng kính cường lực', 'Dài 160.8 mm - Ngang 78.1 mm - Dày 7.4 mm - Nặng 228 g', '10/2020'),
(17, 'Nguyên khối', 'Khung thép không gỉ & Mặt lưng kính cường lực', 'Dài 146.7 mm - Ngang 71.5 mm - Dày 7.4 mm - Nặng 189 g', '10/2020'),
(18, 'Nguyên khối', 'Khung nhôm & Mặt lưng kính cường lực', 'Dài 165.1 mm - Ngang 75.6 mm - Dày 8.9 mm - Nặng 228 g', '01/2021'),
(19, 'Nguyên khối', 'Khung nhôm & Mặt lưng kính cường lực', 'Dài 161.5 mm - Ngang 75.6 mm - Dày 7.8 mm - Nặng 201 g', '01/2021'),
(21, 'Nguyên khối', 'Khung kim loại & Mặt lưng nhựa', 'Dài 161.6 mm - Ngang 72.5 mm - Dày 8.3 mm - Nặng 192 g', '08/2020'),
(23, 'Nguyên khối', 'Khung nhôm & Mặt lưng nhựa', 'Dài 159.8 mm - Ngang 74.5 mm - Dày 8.4 mm - Nặng 190 g', '05/2021'),
(25, 'Nguyên khối', 'Khung & Mặt lưng nhựa', 'Dài 165 mm - Ngang 77.4 mm - Dày 8.4 mm - Nặng 203 g', '03/2021'),
(26, 'Nguyên khối', 'Khung & Mặt lưng nhựa', 'Dài 159.9 mm - Ngang 75.1 mm - Dày 8.4 mm - Nặng 189 g', '03/2021'),
(27, 'Nguyên khối', 'Khung & Mặt lưng nhựa', 'Dài 163.9 mm - Ngang 76.3 mm - Dày 9.5 mm - Nặng 213 g', '10/2020'),
(28, 'Nguyên khối', 'Khung & Mặt lưng nhựa', 'Dài 158.4 mm - Ngang 73.7 mm - Dày 7.9 mm - Nặng 172 g', '12/2019'),
(29, 'Nguyên khối', 'Khung & Mặt lưng nhựa', 'Dài 158.9 mm - Ngang 73.6 mm - Dày 8.4 mm - Nặng 184 g', '03/2021'),
(30, 'Nguyên khối', 'Khung nhựa phủ sơn kim loại & Mặt lưng thuỷ tinh hữu cơ', 'Dài 159.1 mm - Ngang 73.4 mm - Dày 7.7 mm - Nặng 171 g', '12/2020'),
(31, 'Nguyên khối', 'Khung kim loại & Mặt lưng kính cường lực Gorilla Glass 5', 'Dài 163.6 mm - Ngang 74 mm - Dày 8.3 mm - Nặng 193 g', '05/2021'),
(32, 'Nguyên khối', 'Khung & Mặt lưng nhựa', 'Dài 160.3 mm - Ngang 73.8 mm - Dày 7.95 mm - Nặng 175 g', '04/2021'),
(33, 'Nguyên khối', 'Khung hợp kim phủ nhựa & Mặt lưng thuỷ tinh hữu cơ', 'Dài 160.3 mm - Ngang 73.9 mm - Dày 7.7 mm - Nặng 161 g', '07/2020'),
(34, 'Nguyên khối', 'Khung nhựa & Mặt lưng thuỷ tinh hữu cơ', 'Dài 160.1 mm - Ngang 73.2 mm - Dày 7.8 mm - Nặng 172 g', '03/2021'),
(35, 'Nguyên khối', 'Khung hợp kim phủ nhựa & Mặt lưng thuỷ tinh hữu cơ', 'Dài 160.1 mm - Ngang 73.77 mm - Dày 7.48 mm - Nặng 164 g', '09/2020'),
(36, 'Nguyên khối', 'Khung nhựa & Mặt lưng thuỷ tinh hữu cơ', 'Dài 163.6 mm - Ngang 75.7 mm - Dày 8.4 mm - Nặng 192 g', '04/2021'),
(37, 'Nguyên khối', 'Khung & Mặt lưng nhựa', 'Dài 164 mm - Ngang 75.4 mm - Dày 7.9 mm - Nặng 175 g', '01/2021'),
(38, 'Nguyên khối', 'Khung & Mặt lưng nhựa', 'Dài 162.9 mm - Ngang 74.7 mm - Dày 8.4 mm - Nặng 190 g', '04/2021');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_tienich`
--

CREATE TABLE `sp_tienich` (
  `sp_id` int(11) NOT NULL,
  `bao_mat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tinh_nang_db` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_tienich`
--

INSERT INTO `sp_tienich` (`sp_id`, `bao_mat`, `tinh_nang_db`) VALUES
(3, 'Mở khoá khuôn mặt Face ID', 'Kháng nước, bụi: IP68 </br>\r\n\r\nCó (microphone chuyên dụng chống ồn)'),
(4, 'Mở khoá khuôn mặt Face ID', 'Apple Pay </br>Âm thanh Dolby Audio'),
(5, 'Mở khoá khuôn mặt Face ID', 'Apple PayÂm thanh Dolby Audio </br>\r\nKháng nước, bụi: IP68 '),
(8, 'Mở khoá khuôn mặt Face ID', 'Ghi âm: Có (microphone chuyên dụng chống ồn) </br>\r\nKháng nước, bụi: IP68'),
(9, 'Mở khoá khuôn mặt Face ID', 'Apple Pay\r\nKháng nước, bụi: IP67'),
(10, 'Mở khoá khuôn mặt  </br>\r\n Mở khoá vân tay dưới màn hình', 'Thu nhỏ màn hình sử dụng một tay\r\n</br>\r\nTrợ lý ảo Samsung Bixby\r\n</br>\r\nChặn cuộc gọi\r\n</br>\r\nÂm thanh AKG\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)\r\n</br>\r\nGhi âm cuộc gọi\r\n</br>\r\nSamsung DeX (Kết nối màn hình sử dụng giao diện tương tự PC)\r\n</br>\r\nSamsung Pay\r\n</br>\r\nMàn hình luôn hiển thị AOD\r\n</br>\r\nChạm 2 lần sáng màn hình\r\n</br>\r\nÂm thanh Dolby Audio\r\n</br>\r\nChặn tin nhắn\r\n</br>\r\nTối ưu game (Game Booster)\r\n</br>\r\nChế độ trẻ em (Samsung Kids)\r\n</br>\r\nỨng dụng kép (Dual Messenger)\r\n</br>\r\nKhông gian thứ hai (Thư mục bảo mật)'),
(14, 'Mở khóa bằng vân tay', 'Kháng nước, bụi: IP67'),
(15, 'Mở khoá khuôn mặt </br>Mở khoá vân tay cạnh viền', 'Ghi âm cuộc gọi\r\n</br>\r\nÂm thanh Dolby Audio\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)'),
(16, 'Mở khoá khuôn mặt Face ID', 'Kháng nước, bụi: IP68</br>\r\nGhi âm: Có (microphone chuyên dụng chống ồn)'),
(17, 'Mở khoá khuôn mặt Face ID', 'Kháng nước, bụi: IP68 </br>\r\nGhi âm: Có (microphone chuyên dụng chống ồn)'),
(18, 'Mở khoá khuôn mặt</br>Mở khoá vân tay dưới màn hình', 'Samsung DeX (Kết nối màn hình sử dụng giao diện tương tự PC)\r\n</br>\r\nChặn cuộc gọi\r\n</br>\r\nÂm thanh AKG\r\n</br>\r\nTrợ lý ảo Samsung Bixby\r\n</br>\r\nChặn tin nhắn\r\n</br>\r\nSamsung Pay\r\n</br>\r\nChạm 2 lần sáng màn hình\r\n</br>\r\nThu nhỏ màn hình sử dụng một tay\r\n</br>\r\nMàn hình luôn hiển thị AOD\r\n</br>\r\nGhi âm cuộc gọi\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)\r\n</br>\r\nÂm thanh Dolby Audio\r\n</br>\r\nTối ưu game (Game Booster)\r\n</br>\r\nChế độ trẻ em (Samsung Kids)\r\n</br>\r\nỨng dụng kép (Dual Messenger)\r\n</br>\r\nKhông gian thứ hai (Thư mục bảo mật)'),
(19, 'Mở khoá khuôn mặt</br>Mở khoá vân tay dưới màn hình', 'Chạm 2 lần sáng màn hình\r\n</br>\r\nChặn cuộc gọi\r\n</br>\r\nChặn tin nhắn\r\n</br>\r\nGhi âm cuộc gọi\r\n</br>\r\nMàn hình luôn hiển thị AOD\r\n</br>\r\nSamsung DeX (Kết nối màn hình sử dụng giao diện tương tự PC)\r\n</br>\r\nSamsung Pay\r\n</br>\r\nThu nhỏ màn hình sử dụng một tay\r\n</br>\r\nTrợ lý ảo Samsung Bixby\r\n</br>\r\nÂm thanh AKG\r\n</br>\r\nÂm thanh Dolby Audio\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)'),
(21, 'Mở khoá khuôn mặt</br>Mở khoá vân tay dưới màn hình', 'Âm thanh AKG\r\n</br>\r\nChế độ trẻ em (Samsung Kids)\r\n</br>\r\nÂm thanh Dolby Audio\r\n</br>\r\nKhông gian thứ hai (Thư mục bảo mật)\r\n</br>\r\nSamsung DeX (Kết nối màn hình sử dụng giao diện tương tự PC)\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)\r\n</br>\r\nSamsung Pay\r\n</br>\r\nTrợ lý ảo Samsung Bixby\r\n</br>\r\nMàn hình luôn hiển thị AOD\r\n</br>\r\nChặn tin nhắn\r\n</br>\r\nChặn cuộc gọi\r\n</br>\r\nTối ưu game (Game Booster)'),
(23, 'Mở khoá khuôn mặt</br>Mở khoá vân tay dưới màn hình', 'Không gian thứ hai (Thư mục bảo mật)\r\n</br>\r\nChế độ trẻ em (Samsung Kids)\r\n</br>\r\nTối ưu game (Game Booster)\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)'),
(25, 'Mở khoá khuôn mặt</br>Mở khoá vân tay dưới màn hình', 'Ứng dụng kép (Nhân bản ứng dụng)'),
(26, 'Mở khoá khuôn mặt </br>Mở khoá vân tay dưới màn hình', 'Âm thanh Dolby Audio'),
(27, 'Mở khoá khuôn mặt </br>Mở khoá vân tay cạnh viền', 'Chặn cuộc gọi\r\n</br>\r\nChặn tin nhắn\r\n</br>\r\nTối ưu game (Game Booster)\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)'),
(28, 'Mở khoá vân tay dưới màn hình </br>Mở khoá khuôn mặt', 'Không gian thứ hai (Thư mục bảo mật)\r\n</br>\r\nChế độ trẻ em (Kids Home)\r\n</br>\r\nChặn cuộc gọi\r\n</br>\r\nChạm 2 lần sáng màn hình\r\n</br>\r\nTối ưu game (Game Booster)\r\n</br>\r\nGhi âm cuộc gọi\r\n</br>\r\nChặn tin nhắn\r\n</br>\r\nMàn hình luôn hiển thị AOD\r\n</br>\r\nTối ưu game (Không gian trò chơi)\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)\r\n</br>\r\nThu nhỏ màn hình sử dụng một tay\r\n</br>\r\nTrợ lý ảo Samsung Bixby'),
(29, 'Mở khoá khuôn mặt </br>\r\nMở khoá vân tay dưới màn hình', 'Chặn cuộc gọi </br>\r\nChặn tin nhắn'),
(30, 'Mở khoá khuôn mặt</br> Mở khoá vân tay dưới màn hình', 'Chặn cuộc gọi\r\n</br>\r\nChặn tin nhắn\r\n</br>\r\nChế độ trẻ em (Không gian trẻ em)\r\n</br>\r\nGhi âm cuộc gọi\r\n</br>\r\nKhông gian thứ hai (Chế độ khách)\r\n</br>\r\nMàn hình luôn hiển thị AOD\r\n</br>\r\nTối ưu game (Không gian trò chơi)\r\n</br>\r\nĐa cửa sổ (chia đôi màn hình)\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)'),
(31, 'Mở khoá khuôn mặt </br>Mở khoá vân tay dưới màn hình', 'Ghi âm cuộc gọi  </br>Ứng dụng kép (Nhân bản ứng dụng)'),
(32, 'Mở khoá khuôn mặt</br>\r\nMở khoá vân tay dưới màn hình', 'Chặn cuộc gọi\r\n</br>\r\nChặn tin nhắn\r\n</br>\r\nGhi âm cuộc gọi\r\n</br>\r\nMàn hình luôn hiển thị AOD\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)'),
(33, 'Mở khoá khuôn mặt </br>\r\nMở khoá vân tay dưới màn hình', 'Chặn cuộc gọi\r\n</br>\r\nChặn tin nhắn\r\n</br>\r\nChế độ trẻ em (Không gian trẻ em)\r\n</br>\r\nKhông gian thứ hai (Chế độ khách)\r\n</br>\r\nTối ưu game (Không gian trò chơi)\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)'),
(34, 'Mở khoá khuôn mặt</br> Mở khoá vân tay dưới màn hình', 'Chặn cuộc gọi\r\n</br>\r\nChặn tin nhắn\r\n</br>\r\nGhi âm cuộc gọi\r\n</br>\r\nMàn hình luôn hiển thị AOD\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)'),
(35, 'Mở khoá khuôn mặt </br>\r\nMở khoá vân tay dưới màn hình', 'Ứng dụng kép (Nhân bản ứng dụng)\r\n</br>\r\nTối ưu game (Không gian trò chơi)\r\n</br>\r\nĐa cửa sổ (chia đôi màn hình)\r\n</br>\r\nChế độ trẻ em (Không gian trẻ em)\r\n</br>\r\nỨng dụng kép (Dual Messenger)\r\n</br>\r\nKhông gian thứ hai (Chế độ khách)'),
(36, 'Mở khoá vân tay cạnh viền', 'Chặn cuộc gọi\r\n</br>\r\nChặn tin nhắn\r\n</br>\r\nGhi âm cuộc gọi\r\n</br>\r\nMàn hình luôn hiển thị AOD\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)'),
(37, 'Mở khoá khuôn mặt </br>\r\nMở khóa bằng vân tay', 'Chặn cuộc gọi\r\n</br>\r\nGhi âm cuộc gọi\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)'),
(38, 'Mở khoá khuôn mặt </br>\r\nMở khoá vân tay cạnh viền', 'Chặn cuộc gọi\r\n</br>\r\nChặn tin nhắn\r\n</br>\r\nGhi âm cuộc gọi\r\n</br>\r\nỨng dụng kép (Nhân bản ứng dụng)');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiet_sanpham`
--
ALTER TABLE `chitiet_sanpham`
  ADD PRIMARY KEY (`sp_id`);

--
-- Chỉ mục cho bảng `chude_gopy`
--
ALTER TABLE `chude_gopy`
  ADD PRIMARY KEY (`cd_id`),
  ADD UNIQUE KEY `cd_ten` (`cd_ten`) USING HASH;

--
-- Chỉ mục cho bảng `danhgia_sanpham`
--
ALTER TABLE `danhgia_sanpham`
  ADD KEY `FK__san_pham` (`sp_id`);

--
-- Chỉ mục cho bảng `donvi_giaohang`
--
ALTER TABLE `donvi_giaohang`
  ADD PRIMARY KEY (`dvgh_id`),
  ADD UNIQUE KEY `dvgh_ten` (`dvgh_ten`) USING HASH;

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`dh_id`),
  ADD UNIQUE KEY `dh_ma` (`dh_ma`),
  ADD KEY `FK_don_hang_httt` (`httt_id`),
  ADD KEY `FK_don_hang_khach_hang` (`kh_id`),
  ADD KEY `FK_don_hang_donvi_giaohang` (`dvgh_id`);

--
-- Chỉ mục cho bảng `gop_y`
--
ALTER TABLE `gop_y`
  ADD PRIMARY KEY (`gy_id`),
  ADD KEY `FK_gop_y_chude_gopy` (`cd_id`);

--
-- Chỉ mục cho bảng `httt`
--
ALTER TABLE `httt`
  ADD PRIMARY KEY (`httt_id`),
  ADD UNIQUE KEY `httt_ten` (`httt_ten`) USING HASH;

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`kh_id`),
  ADD UNIQUE KEY `kh_maso` (`kh_maso`);

--
-- Chỉ mục cho bảng `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  ADD PRIMARY KEY (`km_id`),
  ADD UNIQUE KEY `km_ten` (`km_ten`) USING HASH;

--
-- Chỉ mục cho bảng `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  ADD PRIMARY KEY (`lsp_id`),
  ADD UNIQUE KEY `lsp_ten` (`lsp_ten`) USING HASH;

--
-- Chỉ mục cho bảng `nha_san_xuat`
--
ALTER TABLE `nha_san_xuat`
  ADD PRIMARY KEY (`nsx_id`),
  ADD UNIQUE KEY `nsx_ten` (`nsx_ten`) USING HASH;

--
-- Chỉ mục cho bảng `sanpham_donhang`
--
ALTER TABLE `sanpham_donhang`
  ADD KEY `FK_sanpham_donhang_don_hang` (`dh_id`),
  ADD KEY `FK_sanpham_donhang_sp_mau_sac` (`sp_id`,`sp_mau`);

--
-- Chỉ mục cho bảng `sanpham_hinh`
--
ALTER TABLE `sanpham_hinh`
  ADD KEY `FK__sp_mau_sac` (`sp_id`,`id`);

--
-- Chỉ mục cho bảng `sanpham_soluong`
--
ALTER TABLE `sanpham_soluong`
  ADD KEY `FK_sanpham_soluong_sp_mau_sac` (`sp_id`,`sp_mau`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`sp_id`),
  ADD KEY `FK_san_pham_nha_san_xuat` (`nsx_id`),
  ADD KEY `FK_san_pham_loai_san_pham` (`lsp_id`);

--
-- Chỉ mục cho bảng `sp_bo_nho`
--
ALTER TABLE `sp_bo_nho`
  ADD PRIMARY KEY (`sp_id`);

--
-- Chỉ mục cho bảng `sp_camera_sau`
--
ALTER TABLE `sp_camera_sau`
  ADD PRIMARY KEY (`sp_id`);

--
-- Chỉ mục cho bảng `sp_camera_truoc`
--
ALTER TABLE `sp_camera_truoc`
  ADD PRIMARY KEY (`sp_id`);

--
-- Chỉ mục cho bảng `sp_hdh`
--
ALTER TABLE `sp_hdh`
  ADD PRIMARY KEY (`sp_id`);

--
-- Chỉ mục cho bảng `sp_hinh_tongquan`
--
ALTER TABLE `sp_hinh_tongquan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sp_ket_noi`
--
ALTER TABLE `sp_ket_noi`
  ADD PRIMARY KEY (`sp_id`);

--
-- Chỉ mục cho bảng `sp_manhinh`
--
ALTER TABLE `sp_manhinh`
  ADD PRIMARY KEY (`sp_id`);

--
-- Chỉ mục cho bảng `sp_mau_sac`
--
ALTER TABLE `sp_mau_sac`
  ADD PRIMARY KEY (`sp_id`,`id`),
  ADD KEY `id_all` (`id_all`);

--
-- Chỉ mục cho bảng `sp_pin`
--
ALTER TABLE `sp_pin`
  ADD PRIMARY KEY (`sp_id`);

--
-- Chỉ mục cho bảng `sp_thongtinchung`
--
ALTER TABLE `sp_thongtinchung`
  ADD PRIMARY KEY (`sp_id`);

--
-- Chỉ mục cho bảng `sp_tienich`
--
ALTER TABLE `sp_tienich`
  ADD PRIMARY KEY (`sp_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chude_gopy`
--
ALTER TABLE `chude_gopy`
  MODIFY `cd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `donvi_giaohang`
--
ALTER TABLE `donvi_giaohang`
  MODIFY `dvgh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4444452;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `dh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `gop_y`
--
ALTER TABLE `gop_y`
  MODIFY `gy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `httt`
--
ALTER TABLE `httt`
  MODIFY `httt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `kh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  MODIFY `km_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  MODIFY `lsp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `sp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `sp_hinh_tongquan`
--
ALTER TABLE `sp_hinh_tongquan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=592;

--
-- AUTO_INCREMENT cho bảng `sp_mau_sac`
--
ALTER TABLE `sp_mau_sac`
  MODIFY `id_all` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiet_sanpham`
--
ALTER TABLE `chitiet_sanpham`
  ADD CONSTRAINT `FK_chitiet_sanpham_san_pham` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);

--
-- Các ràng buộc cho bảng `danhgia_sanpham`
--
ALTER TABLE `danhgia_sanpham`
  ADD CONSTRAINT `FK__san_pham` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);

--
-- Các ràng buộc cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `FK_don_hang_donvi_giaohang` FOREIGN KEY (`dvgh_id`) REFERENCES `donvi_giaohang` (`dvgh_id`),
  ADD CONSTRAINT `FK_don_hang_httt` FOREIGN KEY (`httt_id`) REFERENCES `httt` (`httt_id`),
  ADD CONSTRAINT `FK_don_hang_khach_hang` FOREIGN KEY (`kh_id`) REFERENCES `khach_hang` (`kh_id`);

--
-- Các ràng buộc cho bảng `gop_y`
--
ALTER TABLE `gop_y`
  ADD CONSTRAINT `FK_gop_y_chude_gopy` FOREIGN KEY (`cd_id`) REFERENCES `chude_gopy` (`cd_id`);

--
-- Các ràng buộc cho bảng `sanpham_donhang`
--
ALTER TABLE `sanpham_donhang`
  ADD CONSTRAINT `FK_sanpham_donhang_don_hang` FOREIGN KEY (`dh_id`) REFERENCES `don_hang` (`dh_id`),
  ADD CONSTRAINT `FK_sanpham_donhang_san_pham` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`),
  ADD CONSTRAINT `FK_sanpham_donhang_sp_mau_sac` FOREIGN KEY (`sp_id`,`sp_mau`) REFERENCES `sp_mau_sac` (`sp_id`, `id`);

--
-- Các ràng buộc cho bảng `sanpham_hinh`
--
ALTER TABLE `sanpham_hinh`
  ADD CONSTRAINT `FK__sp_mau_sac` FOREIGN KEY (`sp_id`,`id`) REFERENCES `sp_mau_sac` (`sp_id`, `id`);

--
-- Các ràng buộc cho bảng `sanpham_soluong`
--
ALTER TABLE `sanpham_soluong`
  ADD CONSTRAINT `FK_sanpham_soluong_san_pham` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`),
  ADD CONSTRAINT `FK_sanpham_soluong_sp_mau_sac` FOREIGN KEY (`sp_id`,`sp_mau`) REFERENCES `sp_mau_sac` (`sp_id`, `id`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `FK_san_pham_loai_san_pham` FOREIGN KEY (`lsp_id`) REFERENCES `loai_san_pham` (`lsp_id`),
  ADD CONSTRAINT `FK_san_pham_nha_san_xuat` FOREIGN KEY (`nsx_id`) REFERENCES `nha_san_xuat` (`nsx_id`);

--
-- Các ràng buộc cho bảng `sp_bo_nho`
--
ALTER TABLE `sp_bo_nho`
  ADD CONSTRAINT `FK_sp_bo_nho_san_pham` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);

--
-- Các ràng buộc cho bảng `sp_camera_sau`
--
ALTER TABLE `sp_camera_sau`
  ADD CONSTRAINT `FK_sp_camera_sau_san_pham` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);

--
-- Các ràng buộc cho bảng `sp_camera_truoc`
--
ALTER TABLE `sp_camera_truoc`
  ADD CONSTRAINT `FK_sp_camera_truoc_san_pham` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);

--
-- Các ràng buộc cho bảng `sp_hdh`
--
ALTER TABLE `sp_hdh`
  ADD CONSTRAINT `FK_sp_hdh_san_pham` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);

--
-- Các ràng buộc cho bảng `sp_ket_noi`
--
ALTER TABLE `sp_ket_noi`
  ADD CONSTRAINT `FK_sp_ket_noi_san_pham` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);

--
-- Các ràng buộc cho bảng `sp_manhinh`
--
ALTER TABLE `sp_manhinh`
  ADD CONSTRAINT `FK_sp_manhinh_san_pham` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);

--
-- Các ràng buộc cho bảng `sp_mau_sac`
--
ALTER TABLE `sp_mau_sac`
  ADD CONSTRAINT `FK_sp_mau_sac_san_pham` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);

--
-- Các ràng buộc cho bảng `sp_pin`
--
ALTER TABLE `sp_pin`
  ADD CONSTRAINT `FK_sp_pin_san_pham` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);

--
-- Các ràng buộc cho bảng `sp_thongtinchung`
--
ALTER TABLE `sp_thongtinchung`
  ADD CONSTRAINT `FK_sp_thongtinchung_san_pham` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);

--
-- Các ràng buộc cho bảng `sp_tienich`
--
ALTER TABLE `sp_tienich`
  ADD CONSTRAINT `FK_sp_tienich_san_pham` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

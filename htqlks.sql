-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2024 lúc 10:24 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `htqlks`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accumulated_points`
--

CREATE TABLE `accumulated_points` (
  `id_dtl` int(11) NOT NULL,
  `dtl` int(11) NOT NULL,
  `khach_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id_hd` int(11) NOT NULL,
  `khach_hang` int(11) NOT NULL,
  `don_dat_phong` int(11) NOT NULL,
  `phi_dv` int(11) NOT NULL,
  `tre_han` int(11) NOT NULL,
  `phi_them` int(11) NOT NULL,
  `tong_tien` int(11) NOT NULL,
  `phuong_thuc_tt` varchar(20) DEFAULT NULL,
  `tien_kh_gui` int(11) NOT NULL,
  `tien_thua` int(11) NOT NULL,
  `trang_thai_hd` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id_hd`, `khach_hang`, `don_dat_phong`, `phi_dv`, `tre_han`, `phi_them`, `tong_tien`, `phuong_thuc_tt`, `tien_kh_gui`, `tien_thua`, `trang_thai_hd`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 2960000, 0, 0, 4560000, 'Tiền mặt', 4600000, 40000, 'Đã thanh toán', 1, '2024-11-10 13:04:10', '2024-11-10 13:04:10'),
(2, 3, 2, 600000, 0, 0, 2200000, 'Chuyển Khoản', 0, 0, 'Đã thanh toán', 1, '2024-11-10 13:04:15', '2024-11-10 13:04:15'),
(3, 3, 3, 3120000, 0, 0, 8520000, 'Chuyển Khoản', 0, 0, 'Đã thanh toán', 1, '2024-09-09 13:08:32', '2024-09-09 13:08:32'),
(4, 3, 4, 320000, 0, 0, 1920000, 'Tiền mặt', 2000000, 80000, 'Đã thanh toán', 1, '2024-10-12 13:20:18', '2024-10-12 13:20:18'),
(5, 5, 5, 480000, 0, 0, 2880000, 'Chuyển Khoản', 0, 0, 'Đã thanh toán', 1, '2024-11-20 13:33:31', '2024-11-20 13:33:31'),
(6, 4, 7, 1200000, 0, 0, 4200000, 'Chuyển Khoản', 0, 0, 'Đã thanh toán', 1, '2024-09-06 13:52:17', '2024-09-06 13:52:17'),
(7, 4, 8, 0, 0, 0, 3000000, 'Tiền mặt', 3000000, 0, 'Đã thanh toán', 1, '2024-09-09 13:52:44', '2024-09-09 13:52:44'),
(8, 4, 9, 800000, 0, 0, 1300000, 'Chuyển Khoản', 0, 0, 'Đã thanh toán', 1, '2024-10-27 17:00:00', '2024-10-28 17:00:00'),
(9, 4, 10, 800000, 0, 0, 1300000, 'Tiền mặt', 1300000, 0, 'Đã thanh toán', 1, '2024-10-28 14:03:31', '2024-10-29 14:03:31'),
(10, 6, 11, 2160000, 0, 0, 2960000, 'Tiền mặt', 2200000, 4000, 'Đã thanh toán', 1, '2024-11-10 14:14:05', '2024-11-10 14:14:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking_form`
--

CREATE TABLE `booking_form` (
  `id_don` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL,
  `id_loai_phong` int(11) NOT NULL,
  `id_phong` int(11) DEFAULT NULL,
  `ngay_nhan_phong` date NOT NULL,
  `ngay_tra_phong` date NOT NULL,
  `so_ngay_o` int(11) NOT NULL,
  `tinh_trang` varchar(30) NOT NULL,
  `ghi_chu` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `gn` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking_form`
--

INSERT INTO `booking_form` (`id_don`, `id_kh`, `id_loai_phong`, `id_phong`, `ngay_nhan_phong`, `ngay_tra_phong`, `so_ngay_o`, `tinh_trang`, `ghi_chu`, `status`, `gn`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 6, '2024-11-11', '2024-11-13', 2, 'Đã xác nhận', NULL, 1, 0, '2024-11-10 20:03:38', '2024-11-10 20:03:38'),
(2, 3, 3, 7, '2024-11-11', '2024-11-13', 2, 'Đã xác nhận', NULL, 1, 0, '2024-11-10 20:03:38', '2024-11-10 20:03:38'),
(3, 3, 15, 14, '2024-09-09', '2024-09-13', 4, 'Đã xác nhận', NULL, 1, 0, '2024-09-08 20:07:09', '2024-09-08 20:07:09'),
(4, 3, 3, 6, '2024-10-12', '2024-10-14', 2, 'Đã xác nhận', NULL, 1, 0, '2024-10-11 20:17:12', '2024-10-11 20:17:12'),
(5, 5, 3, 6, '2024-11-17', '2024-11-20', 3, 'Đã xác nhận', NULL, 1, 0, '2024-11-10 20:28:33', '2024-11-10 20:28:33'),
(7, 4, 8, 10, '2024-09-06', '2024-09-09', 3, 'Đã xác nhận', NULL, 1, 0, '2024-09-05 20:52:05', '2024-09-05 20:52:05'),
(8, 4, 8, 11, '2024-09-06', '2024-09-09', 3, 'Đã xác nhận', NULL, 1, 0, '2024-09-05 20:52:05', '2024-09-05 20:52:05'),
(9, 4, 1, 2, '2024-10-28', '2024-10-29', 1, 'Đã xác nhận', NULL, 1, 0, '2024-10-27 21:02:59', '2024-10-27 21:02:59'),
(10, 4, 1, 3, '2024-10-28', '2024-10-29', 1, 'Đã xác nhận', NULL, 1, 0, '2024-10-27 21:02:59', '2024-10-27 21:02:59'),
(11, 6, 7, 8, '2024-11-20', '2024-11-21', 1, 'Đã xác nhận', NULL, 1, 0, '2024-11-10 21:13:17', '2024-11-10 21:13:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(3) NOT NULL,
  `ho_ten` varchar(30) NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL,
  `dia_chi` varchar(50) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `noi_dung_ll` varchar(300) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `ho_ten`, `gioi_tinh`, `dia_chi`, `sdt`, `email`, `noi_dung_ll`, `status`, `created_at`, `updated_at`) VALUES
(13, 'Võ Ngọc Huyền', 1, 'ddd', '0942311006', '367bbsn@dnnn', 'dđ', 0, '2024-11-08 06:05:45', '2024-11-08 06:05:45'),
(14, 'Mẫn Nhi', 1, 'Cần Thơ', '0967355255', 'huyenb2110013@student.ctu.edu.vn', 'Tôi muốn liên hệ bên mình', 0, '2024-11-08 19:47:29', '2024-11-08 19:47:29'),
(15, 'Hồ Thuận', 0, 'An Giang', '0955422367', 'hothuan@gmai.com', 'Hãy liên lạc với tôi', 0, '2024-11-08 20:38:08', '2024-11-08 20:38:08'),
(16, 'Hồ văn an', 0, 'Phường B TPHCM', '0942311006', 'hva221@gmail.com', 'tôi cần hỗ trợ', 0, '2024-11-08 20:40:59', '2024-11-08 20:40:59'),
(17, 'Nguyễn Văn B', 1, 'Hậu Giang', '0942311006', 'huyenb2110013@student.ctu.edu.vn', 'tôi muốn liên hệ', 0, '2024-11-08 22:00:15', '2024-11-08 22:00:15'),
(30, 'Trần Hà Anh', 1, 'TPHCM', '0942311006', 'huyen88@gmail.com', 'hãy liên lạc với tôi', 1, '2024-11-10 13:38:09', '2024-11-10 13:38:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `evaluate`
--

CREATE TABLE `evaluate` (
  `id_danh_gia` int(11) NOT NULL,
  `noi_dung` text NOT NULL,
  `diem` int(11) NOT NULL,
  `khach_hang` int(11) NOT NULL,
  `don` int(11) NOT NULL,
  `loai_phong` int(11) NOT NULL,
  `so_lan_sua` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `evaluate`
--

INSERT INTO `evaluate` (`id_danh_gia`, `noi_dung`, `diem`, `khach_hang`, `don`, `loai_phong`, `so_lan_sua`, `status`, `created_at`, `updated_at`) VALUES
(14, 'ok sạch sẽ', 5, 3, 3, 15, 1, 1, '2024-11-10 20:10:54', '2024-11-10 13:11:06'),
(15, 'cũng tạm được', 4, 3, 2, 3, 0, 1, '2024-11-10 20:14:48', '2024-11-10 20:14:48'),
(16, 'nhân viên nên xem lại thái độ vs khách hàng', 2, 5, 5, 3, 0, 1, '2024-11-10 20:34:18', '2024-11-10 20:34:18'),
(17, 'rất là ok luôn', 5, 4, 8, 8, 0, 1, '2024-11-10 20:53:07', '2024-11-10 20:53:07'),
(18, 'tạm ổn , cần cải thiện', 3, 4, 10, 1, 0, 1, '2024-11-10 21:03:55', '2024-11-10 21:03:55'),
(24, 'tạm được', 3, 3, 4, 3, 0, 1, '2024-11-13 16:04:05', '2024-11-13 16:04:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `form_service_details`
--

CREATE TABLE `form_service_details` (
  `id_ct` int(11) NOT NULL,
  `id_ddp` int(11) NOT NULL,
  `id_dv` int(11) NOT NULL,
  `ngay_su_dung` date NOT NULL,
  `so_luong_ct` int(11) NOT NULL,
  `ghi_chu_ct` varchar(200) DEFAULT NULL,
  `tinh_trang_ct` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `gn` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `form_service_details`
--

INSERT INTO `form_service_details` (`id_ct`, `id_ddp`, `id_dv`, `ngay_su_dung`, `so_luong_ct`, `ghi_chu_ct`, `tinh_trang_ct`, `status`, `gn`, `created_at`, `updated_at`) VALUES
(62, 1, 3, '2024-11-12', 2, NULL, 'Đã xác nhận', 1, 0, '2024-11-10 20:05:15', '2024-11-10 20:05:15'),
(63, 1, 4, '2024-11-12', 1, NULL, 'Đã xác nhận', 1, 0, '2024-11-10 20:05:15', '2024-11-10 20:05:15'),
(64, 2, 1, '2024-11-13', 6, NULL, 'Đã xác nhận', 1, 0, '2024-11-10 20:06:07', '2024-11-10 20:06:07'),
(65, 3, 3, '2024-09-09', 1, 'Gym && Yoga: đến tập 16h. spa: gói 2', 'Đã xác nhận', 1, 0, '2024-09-09 20:10:30', '2024-09-09 20:10:30'),
(66, 3, 4, '2024-09-09', 2, 'Gym && Yoga: đến tập 16h. spa: gói 2', 'Đã xác nhận', 1, 0, '2024-09-09 20:10:30', '2024-09-09 20:10:30'),
(67, 3, 2, '2024-10-12', 2, '(2) , (NU2)  : nóng', 'Đã xác nhận', 1, 0, '2024-10-11 20:19:31', '2024-10-11 20:19:31'),
(68, 4, 2, '2024-10-12', 2, '(2) ,(NU4)', 'Đã xác nhận', 1, 0, '2024-10-12 20:24:55', '2024-10-12 20:24:55'),
(69, 5, 2, '2024-11-17', 3, NULL, 'Đã xác nhận', 1, 0, '2024-11-17 20:34:56', '2024-11-17 20:34:56'),
(70, 7, 3, '2024-09-09', 1, NULL, 'Đã xác nhận', 1, 0, '2024-09-06 20:54:03', '2024-09-06 20:54:03'),
(71, 9, 4, '2024-10-28', 1, NULL, 'Đã xác nhận', 1, 0, '2024-11-10 21:07:40', '2024-11-10 21:07:40'),
(72, 10, 4, '2024-10-29', 1, NULL, 'Đã xác nhận', 1, 0, '2024-11-10 21:08:22', '2024-11-10 21:08:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room`
--

CREATE TABLE `room` (
  `id_phong` int(3) NOT NULL,
  `so_phong` int(11) NOT NULL,
  `loai_phong` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `room`
--

INSERT INTO `room` (`id_phong`, `so_phong`, `loai_phong`, `status`, `created_at`, `updated_at`) VALUES
(1, 101, 1, 1, '2024-09-05 16:10:09', '2024-09-05 16:10:09'),
(2, 102, 1, 1, '2024-09-12 06:16:34', '2024-09-12 06:16:34'),
(3, 103, 1, 1, '2024-09-12 07:15:33', '2024-09-12 07:15:33'),
(4, 104, 1, 1, '2024-09-12 07:15:39', '2024-09-12 07:15:39'),
(5, 105, 1, 1, '2024-09-12 07:15:45', '2024-09-12 07:15:45'),
(6, 201, 3, 1, '2024-09-17 18:33:18', '2024-09-17 18:33:18'),
(7, 202, 3, 1, '2024-09-19 17:46:43', '2024-09-19 17:46:43'),
(8, 301, 7, 1, '2024-10-22 07:10:17', '2024-10-22 07:10:17'),
(9, 302, 7, 1, '2024-10-22 07:10:43', '2024-10-22 07:10:43'),
(10, 401, 8, 1, '2024-11-06 18:08:44', '2024-11-06 18:08:44'),
(11, 402, 8, 1, '2024-11-06 18:08:56', '2024-11-06 18:08:56'),
(12, 501, 9, 1, '2024-11-06 18:09:07', '2024-11-06 18:09:07'),
(13, 502, 9, 1, '2024-11-06 18:09:15', '2024-11-06 18:09:15'),
(14, 601, 15, 1, '2024-11-06 18:09:25', '2024-11-06 18:09:25'),
(15, 602, 15, 1, '2024-11-06 18:09:34', '2024-11-06 18:09:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_type`
--

CREATE TABLE `room_type` (
  `id_lp` int(11) NOT NULL,
  `ten_lp` varchar(100) NOT NULL,
  `mo_ta` varchar(300) NOT NULL,
  `tien_nghi` varchar(100) NOT NULL,
  `gia_lp` int(11) DEFAULT NULL,
  `suc_chua` int(1) NOT NULL,
  `dien_tich` varchar(10) NOT NULL,
  `phan_hang` int(11) NOT NULL,
  `search_count` int(11) NOT NULL,
  `search_booking` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `room_type`
--

INSERT INTO `room_type` (`id_lp`, `ten_lp`, `mo_ta`, `tien_nghi`, `gia_lp`, `suc_chua`, `dien_tich`, `phan_hang`, `search_count`, `search_booking`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Single', 'Đây là loại phòng chỉ có 1 giường đơn, dành cho 1 khách lưu trú.', 'Giường đơn : 1m2 x 1m9', 500000, 1, '21m²', 3, 20, 1, 1, '2024-09-07 08:35:43', '2024-11-10 18:02:44'),
(3, 'Twin', 'Loại phòng có 2 giường đơn, dành cho 2 khách lưu trú.', '2 giường đơn : 1m2 x 2m', 800000, 2, '40m²', 3, 32, 30, 1, '2024-09-05 15:31:48', '2024-11-13 21:32:06'),
(7, 'Double', 'Đây là loại phòng có 1 giường đôi vừa, thoải mái cho cả 2 người nằm , có thể 2 người lớn + 1 trẻ', 'Giường đôi : 1.6m x 2m', 800000, 3, '40m²', 3, 2, 2, 1, '2024-09-07 12:39:16', '2024-11-10 15:00:20'),
(8, 'Triple', 'Đây là loại phòng có 1 giường đơn + 1 giường đôi vừa· , thích hợp cho 3 khách ( ngoài ra có thể kèm 1 trẻ nhỏ )', 'Giường đơn : 1m2 x 1m9 , Giường đôi : 1m6 x 2m', 1000000, 3, '50m²', 2, 8, 4, 1, '2024-09-08 00:46:22', '2024-11-10 13:52:05'),
(9, 'Family Suite', 'Phòng Family có diện tích 80m² bao gồm 2 phòng ngủ riêng biệt, tiện lợi cho khách hàng gia đình (hoặc nhóm bạn thân 4 người + 1 trẻ nhỏ). Trong đó có 1 phòng dành cho bố mẹ thiết kế với 1 giường đôi, phòng vệ sinh riêng. Phòng còn lại thiết kế với 2 giường đơn. Phòng có ban công thoáng mát.', '2 Giường đơn : 1m2 x 2m , Giường đôi : 1m8 x 2m', 1550000, 4, '80m²', 1, 13, 6, 1, '2024-09-08 01:00:06', '2024-11-13 21:03:00'),
(15, 'Junior Suite', 'Được thiết kế 1 ngủ và 1 phòng khách riêng biệt , 2 giường đôi vừa được đặt tại 2 phòng thích hợp cho gia đình nhỏ hoặc cặp đôi mới cưới.', '2 giường đôi vừa : 1m6 x 2m', 1350000, 4, '60m²', 2, 3, 2, 1, '2024-09-08 09:31:32', '2024-11-10 13:51:02'),
(25, 'ghhh', 'fgghhhh', 'dđ', 1333, 32, 'dvcc', 44, 0, 0, 0, '2024-11-13 21:28:34', '2024-11-13 21:28:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `search_history`
--

CREATE TABLE `search_history` (
  `id_ls` int(11) NOT NULL,
  `id_lp` int(11) NOT NULL,
  `id_kh` int(3) NOT NULL,
  `keywords` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `search_history`
--

INSERT INTO `search_history` (`id_ls`, `id_lp`, `id_kh`, `keywords`, `created_at`, `updated_at`) VALUES
(5, 15, 3, 'Junior Suite', '2024-11-08 17:22:35', '2024-11-08 17:22:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `id_dv` int(11) NOT NULL,
  `ten_dv` varchar(30) NOT NULL,
  `loai_dv` int(11) NOT NULL,
  `don_gia_dv` int(11) NOT NULL,
  `mo_ta_dv` varchar(200) NOT NULL,
  `menu` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`id_dv`, `ten_dv`, `loai_dv`, `don_gia_dv`, `mo_ta_dv`, `menu`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DVA1 - Bữa ăn 1 buổi', 1, 100000, 'Đây là dịch vụ áp dụng 1 buổi ăn trong ngày. Khách hàng sẽ được chọn thức ăn và nước uống bất kỳ trên menu dành riêng cho gói dịch vụ này. ', 'Món ăn :.\r\n (1) Súp cua.\r\n (2) Mỳ ý.\r\n (3) Gỏi mực Thái Lan.\r\n (4) Bò sốt vang Marzano + bánh mì.\r\n (5) Salad rau củ quả.\r\nNước uống :.\r\n (NU1) Nước Ép Orange.\r\n (NU2) Coffee ( nóng / lạnh ).\r\n (NU3) Bạc sỉu (nóng / lạnh ).\r\n (NU4) Trà xanh hoa nhài Dilmah.\r\n (NU5) Nước ngọt ( pepsi, 7up ).', 1, '2024-09-19 11:12:44', '2024-09-19 11:12:44'),
(2, 'DVA2 - Bửa ăn cả ngày', 1, 160000, 'Đây là dịch vụ áp dung 1 bửa ăn trong ngày (2 buổi). Khách hàng sẽ được chọn thức ăn và nước uống bất kỳ trên menu dành riêng cho gói dịch vụ này.', 'Vui lòng tham khảo menu từ bửa ăn 1 buổi.', 1, '2024-09-19 11:21:59', '2024-09-19 11:21:59'),
(3, 'SPA1', 2, 1200000, 'Khách hàng được chọn 1 gói tùy ý được để xuất.', 'Gói 1: Gội đầu + face massage + bấm huyệt. \r\nGói 2: Full body + face massage.          \r\nGói 3: Xông hơi 30\' + gội đầu.', 1, '2024-09-19 11:33:13', '2024-09-19 11:33:13'),
(4, 'Gym && Yoga', 2, 800000, 'Khách hàng được lựa chọn tùy ý khung giờ từ 9:00 AM - 19:00 PM.\r\n ', 'Khách hàng được lựa chọn tùy ý khung giờ từ 9:00 AM - 19:00 PM.\r\n ', 1, '2024-09-19 11:35:25', '2024-09-19 11:35:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_incentives`
--

CREATE TABLE `service_incentives` (
  `id_uddv` int(11) NOT NULL,
  `id_ud` int(11) NOT NULL,
  `id_dv` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `service_incentives`
--

INSERT INTO `service_incentives` (`id_uddv`, `id_ud`, `id_dv`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2024-10-14 16:37:06', '2024-10-14 16:37:06'),
(6, 2, 1, '2024-11-09 09:11:49', '2024-11-09 09:11:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_type`
--

CREATE TABLE `service_type` (
  `id_ldv` int(11) NOT NULL,
  `ten_ldv` varchar(50) NOT NULL,
  `mo_ta_ldv` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `service_type`
--

INSERT INTO `service_type` (`id_ldv`, `ten_ldv`, `mo_ta_ldv`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dịch vụ ăn uống', 'Dịch vụ ăn uống tại khách sạn HazBin mang đến cho quý khách một trải nghiệm ẩm thực đáng nhớ với nhiều lựa chọn, từ ẩm thực truyền thống đến quốc tế. Chúng tôi phục vụ bữa ăn đa dạng và nguyên liệu tươi ngon mỗi ngày. Bữa ăn sáng , trưa nhẹ nhàng hay bữa tối sang trọng , quý khách có thể tùy ý chọn món . HazBin cam kết mang đến những trải nghiệm ẩm thực hoàn hảo, kết hợp giữa hương vị tuyệt vời và dịch vụ chuyên nghiệp.', 1, '2024-09-19 10:47:50', '2024-10-14 09:31:30'),
(2, 'Dịch vụ spa & chăm sóc sức khỏe', 'Dịch vụ spa & Chăm sóc sức khỏe tại khách sạn HazBin sẽ mang đến cho quý khách trải nghiệm toàn diện với các liệu trình chăm sóc sắc đẹp,thư giãn kết hợp cùng những hoạt động thể chất giúp bạn đạt được sự cân bằng cả về thể lực và tinh thần. Chúng tôi tự hào cung cấp dịch vụ Gym và Yoga với không gian thoáng đãng, trang thiết bị hiện đại, và đội ngũ huấn luyện viên chuyên nghiệp.', 1, '2024-09-19 10:47:54', '2024-09-19 10:47:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `special_offers`
--

CREATE TABLE `special_offers` (
  `id_ud` int(11) NOT NULL,
  `ten_ud` varchar(50) NOT NULL,
  `giam` int(11) NOT NULL,
  `sl_ap_dung` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `tg_ap_dung` date NOT NULL,
  `tg_ket_thuc` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `special_offers`
--

INSERT INTO `special_offers` (`id_ud`, `ten_ud`, `giam`, `sl_ap_dung`, `status`, `tg_ap_dung`, `tg_ket_thuc`, `created_at`, `updated_at`) VALUES
(1, 'Giảm 10% áp dụng 2 gói dịch vụ SPA', 10, 2, 1, '2024-09-24', '2024-11-24', '2024-10-14 16:38:32', '2024-11-08 10:57:47'),
(2, 'Tặng 1 buổi ăn áp dụng khi đặt từ 3 phần', 0, 3, 1, '2024-09-01', '2024-11-30', '2024-10-14 16:38:32', '2024-11-13 21:31:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(50) NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi` varchar(250) NOT NULL,
  `DTL` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `role` tinyint(1) NOT NULL,
  `token` varchar(300) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ho_ten`, `gioi_tinh`, `sdt`, `email`, `dia_chi`, `DTL`, `status`, `password`, `role`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn A', 0, '0967355277', 'nva@gmail.com', 'Cần Thơ', NULL, 1, '$2y$12$2bGrsJsQGEdvuqe.USOqt.3jwXoVCxC24nxcHSkSmN2BhYxEAKyCC', 0, NULL, '2024-08-31 12:00:21', '2024-08-31 12:00:21'),
(2, 'Võ Ngọc Huyền', 1, '0942311006', 'vnhuyen221@gmail.com', 'An Giang', NULL, 1, '$2y$12$EFQvZWcHDRsJyF3l43p1QucmKjPLkXlWHfmYSWrX2UfSvRujAtRgm', 1, 'PKIU5DY7OI', '2024-11-06 11:05:56', '2024-11-13 21:43:26'),
(3, 'Mẫn Nhi', 1, '0967355255', 'huyenb2110013@student.ctu.edu.vn', 'Cần Thơ', NULL, 1, '$2y$12$TX6yyFgUY33t.fPGDx6oLOXFMpdTFmO.MNS5MNE5iTXSKtmZ1Wi96', 1, 'xTbjiNPuk3SmayXx941thN4DDgJqMcw5WwUqNMeD', '2024-11-08 14:21:53', '2024-11-08 14:21:53'),
(4, 'Trần Hà Anh', 1, '0942311006', 'huyen88@gmail.com', 'TPHCM', NULL, 1, '$2y$12$bE8nsG/uXGbjBS9Nk/WbJu.DdiV.AFsEUCC/qyESHgIpeSuzZswUC', 1, 'RtOfpjaG3I1qSqZNBt2zsv0epLXiZUjgsre82wFy', '2024-11-09 02:59:29', '2024-11-09 02:59:29'),
(5, 'Hồ Thuận', 0, '0955422367', 'hothuan@gmai.com', 'An Giang', NULL, 1, '$2y$12$u3dIIBO.SH/dOgsw2u3qoOW7AGC.3Orhoc0Zz6fwdLteJkV5sU4NW', 1, 'RtOfpjaG3I1qSqZNBt2zsv0epLXiZUjgsre82wFy', '2024-11-09 03:24:02', '2024-11-09 03:24:02'),
(6, 'Hà Nam', 0, '0967355299', 'hanam@gmail.com', 'Vĩnh Long', NULL, 1, '$2y$12$.QlGYubuNsio56RaihhaJ.f5NfhGtvw..rJxwg91QTtHx.HPuvJE6', 1, 'sLRVzFGExXxZuKfj028PjRLHwKQhAMWpStye2Uli', '2024-11-09 19:04:51', '2024-11-09 19:04:51');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accumulated_points`
--
ALTER TABLE `accumulated_points`
  ADD PRIMARY KEY (`id_dtl`),
  ADD KEY `fk_dtl_kh` (`khach_hang`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_hd`),
  ADD KEY `fk_bill_user` (`khach_hang`),
  ADD KEY `fk_bill_bk` (`don_dat_phong`);

--
-- Chỉ mục cho bảng `booking_form`
--
ALTER TABLE `booking_form`
  ADD PRIMARY KEY (`id_don`),
  ADD KEY `fk_bf_rt` (`id_loai_phong`),
  ADD KEY `fk_bkf_room` (`id_phong`),
  ADD KEY `fk_bkf_ctm` (`id_kh`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  ADD PRIMARY KEY (`id_danh_gia`),
  ADD KEY `fk_evaluate_user` (`khach_hang`),
  ADD KEY `fk_ev_bf` (`don`),
  ADD KEY `fk_ev_rt` (`loai_phong`);

--
-- Chỉ mục cho bảng `form_service_details`
--
ALTER TABLE `form_service_details`
  ADD PRIMARY KEY (`id_ct`),
  ADD KEY `fk_fsd_bf` (`id_ddp`),
  ADD KEY `fk_fsd_sv` (`id_dv`);

--
-- Chỉ mục cho bảng `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id_phong`),
  ADD KEY `fk_room_roomtype` (`loai_phong`);

--
-- Chỉ mục cho bảng `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id_lp`);

--
-- Chỉ mục cho bảng `search_history`
--
ALTER TABLE `search_history`
  ADD PRIMARY KEY (`id_ls`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_dv`),
  ADD KEY `fk_dv_ldv` (`loai_dv`);

--
-- Chỉ mục cho bảng `service_incentives`
--
ALTER TABLE `service_incentives`
  ADD PRIMARY KEY (`id_uddv`),
  ADD KEY `fk_si_so` (`id_ud`),
  ADD KEY `fk_si_sv` (`id_dv`);

--
-- Chỉ mục cho bảng `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`id_ldv`);

--
-- Chỉ mục cho bảng `special_offers`
--
ALTER TABLE `special_offers`
  ADD PRIMARY KEY (`id_ud`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accumulated_points`
--
ALTER TABLE `accumulated_points`
  MODIFY `id_dtl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id_hd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `booking_form`
--
ALTER TABLE `booking_form`
  MODIFY `id_don` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  MODIFY `id_danh_gia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `form_service_details`
--
ALTER TABLE `form_service_details`
  MODIFY `id_ct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `room`
--
ALTER TABLE `room`
  MODIFY `id_phong` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id_lp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `search_history`
--
ALTER TABLE `search_history`
  MODIFY `id_ls` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `id_dv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `service_incentives`
--
ALTER TABLE `service_incentives`
  MODIFY `id_uddv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `service_type`
--
ALTER TABLE `service_type`
  MODIFY `id_ldv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `special_offers`
--
ALTER TABLE `special_offers`
  MODIFY `id_ud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accumulated_points`
--
ALTER TABLE `accumulated_points`
  ADD CONSTRAINT `fk_dtl_kh` FOREIGN KEY (`khach_hang`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_bill_bk` FOREIGN KEY (`don_dat_phong`) REFERENCES `booking_form` (`id_don`),
  ADD CONSTRAINT `fk_bill_user` FOREIGN KEY (`khach_hang`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `booking_form`
--
ALTER TABLE `booking_form`
  ADD CONSTRAINT `fk_bf_rt` FOREIGN KEY (`id_loai_phong`) REFERENCES `room_type` (`id_lp`),
  ADD CONSTRAINT `fk_bkf_ctm` FOREIGN KEY (`id_kh`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_bkf_room` FOREIGN KEY (`id_phong`) REFERENCES `room` (`id_phong`);

--
-- Các ràng buộc cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  ADD CONSTRAINT `fk_ev_bf` FOREIGN KEY (`don`) REFERENCES `booking_form` (`id_don`),
  ADD CONSTRAINT `fk_ev_rt` FOREIGN KEY (`loai_phong`) REFERENCES `room_type` (`id_lp`),
  ADD CONSTRAINT `fk_evaluate_user` FOREIGN KEY (`khach_hang`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `form_service_details`
--
ALTER TABLE `form_service_details`
  ADD CONSTRAINT `fk_fsd_bf` FOREIGN KEY (`id_ddp`) REFERENCES `booking_form` (`id_don`),
  ADD CONSTRAINT `fk_fsd_sv` FOREIGN KEY (`id_dv`) REFERENCES `service` (`id_dv`);

--
-- Các ràng buộc cho bảng `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `fk_room_roomtype` FOREIGN KEY (`loai_phong`) REFERENCES `room_type` (`id_lp`);

--
-- Các ràng buộc cho bảng `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `fk_dv_ldv` FOREIGN KEY (`loai_dv`) REFERENCES `service_type` (`id_ldv`);

--
-- Các ràng buộc cho bảng `service_incentives`
--
ALTER TABLE `service_incentives`
  ADD CONSTRAINT `fk_si_so` FOREIGN KEY (`id_ud`) REFERENCES `special_offers` (`id_ud`),
  ADD CONSTRAINT `fk_si_sv` FOREIGN KEY (`id_dv`) REFERENCES `service` (`id_dv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2024 lúc 10:21 AM
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
-- Cơ sở dữ liệu: `ct252`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `mscb` varchar(10) NOT NULL,
  `hoten_cb` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `gioi_tinh` tinyint(1) DEFAULT NULL,
  `chuc_vu` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `area_management`
--

CREATE TABLE `area_management` (
  `ma_khu` varchar(10) NOT NULL,
  `ten_khu` varchar(30) NOT NULL,
  `mscb` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `area_management`
--

INSERT INTO `area_management` (`ma_khu`, `ten_khu`, `mscb`) VALUES
('AA', 'D', ''),
('BB', 'B', ''),
('CC', 'Hòa An', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `buildings`
--

CREATE TABLE `buildings` (
  `ma_day` varchar(10) NOT NULL,
  `ten_day` varchar(10) NOT NULL,
  `ma_khu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `buildings`
--

INSERT INTO `buildings` (`ma_day`, `ten_day`, `ma_khu`) VALUES
('B1', 'B1', 'BB'),
('B2', 'B2', 'BB'),
('B3', 'B3', 'BB'),
('B4', 'B4', 'BB'),
('B5', 'B5', 'BB'),
('B6', 'B6', 'BB'),
('B7', 'B7', 'BB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_17_111343_create_area_management', 1),
(6, '2024_02_19_161156_ql_khu', 2),
(7, '2024_02_19_165803_create_ql_khus_table', 3),
(8, '2024_02_24_151208_create_area_management_table', 4),
(9, '2024_02_24_151810_create_area_management_table', 5),
(10, '2024_03_08_063956_create_room_management', 6),
(11, '2024_03_08_072528_create_room_management', 7),
(12, '2024_03_08_120221_create_room_type', 8),
(13, '2024_03_08_123958_create_student', 9),
(14, '2024_03_08_125143_create_student__k_t_x', 10),
(15, '2024_03_08_132209_create_buildings', 11),
(16, '2024_03_08_153144_create_admin', 12),
(17, '2024_03_08_154658_create_student', 12),
(18, '2024_03_11_124904_create_admin', 13),
(19, '2024_03_11_125005_create_room_management', 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_management`
--

CREATE TABLE `room_management` (
  `ma_phong` varchar(10) NOT NULL,
  `ten_phong` varchar(10) DEFAULT NULL,
  `ma_loai` varchar(10) DEFAULT NULL,
  `ma_day` varchar(10) DEFAULT NULL,
  `phong_nam_nu` varchar(5) DEFAULT NULL,
  `so_cho` int(11) DEFAULT NULL,
  `da_o` int(11) DEFAULT NULL,
  `con_trong` int(11) DEFAULT NULL,
  `trang_thai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `room_management`
--

INSERT INTO `room_management` (`ma_phong`, `ten_phong`, `ma_loai`, `ma_day`, `phong_nam_nu`, `so_cho`, `da_o`, `con_trong`, `trang_thai`) VALUES
('B1101', '103', 'NAL5', 'B2', 'Nữ', 4, 0, 4, 'Chưa sử dụng'),
('B1102', '199', 'NAL4', 'B4', 'nu', 5, 4, 1, 'Đang sử dụng'),
('B1105', '105', 'NAL6', 'B3', 'Nữ', 6, 5, 1, 'Đang sử dụng'),
('B1107', '107', 'NAL6', 'B1', 'Nam', 7, 7, 0, 'Chưa sử dụng'),
('B1109', '109', 'NAL5', 'B1', 'Nam', 5, 5, 0, 'Đang sử dụng'),
('B1203', '311', 'NAL8', 'B4', 'Nữ', 6, 3, 3, 'Đang sử dụng'),
('B2100', '100', 'NAL4', 'B2', 'Nam', 4, 2, 2, 'Đang sử dụng'),
('B2101', '401', 'NAL5', 'B4', 'nu', 5, 3, 2, 'Đang sử dụng'),
('B2107', '107', 'NAL5', 'B2', 'Nam', 5, 5, 0, 'Chưa sử dụng'),
('B2209', '209', 'NAL8', 'B2', 'Nam', 8, 6, 2, 'Đang sử dụng'),
('B4102', '105', 'NAL4', 'B4', 'Nam', 4, 0, 4, 'Đang sử dụng'),
('B4309`', '309', 'NAL8', 'B4', 'Nữ', 8, 2, 6, 'Đang sử dụng'),
('B5203', '203', 'NAL6', 'B5', 'Nam', 6, 6, 0, 'Chưa sử dụng'),
('B7108', '108', 'NAL6', 'B7', 'Nam', 6, 6, 0, 'Đang sử dụng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_type`
--

CREATE TABLE `room_type` (
  `ma_loai_phong` varchar(10) NOT NULL,
  `ten_loai_phong` varchar(100) DEFAULT NULL,
  `suc_chua` int(11) DEFAULT NULL,
  `don_gia` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `room_type`
--

INSERT INTO `room_type` (`ma_loai_phong`, `ten_loai_phong`, `suc_chua`, `don_gia`) VALUES
('AL3', 'Phòng được phép nấu ăn', 3, 455000),
('AL4', 'Phòng được phép nấu ăn ', 4, 410000),
('AL5', 'Phòng được phép nấu ăn', 5, 355000),
('AL6', 'Phòng được phép nấu ăn', 6, 355000),
('AL8', 'Phòng được phép nấu ăn', 8, 245000),
('NAL4', 'Phòng không được phép nấu ăn', 4, 390000),
('NAL5', 'Phòng không được phép nấu ăn', 5, 310000),
('NAL6', 'Phòng không được phép nấu ăn', 6, 280000),
('NAL7', 'Phòng không được phép nấu ăn', 7, 210000),
('NAL8', 'Phòng không được phép nấu ăn', 8, 190000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `mssv` varchar(10) NOT NULL,
  `ho_tenSV` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `nganh_hoc` varchar(100) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `gioi_tinh` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_ktx`
--

CREATE TABLE `student_ktx` (
  `mssv` varchar(10) NOT NULL,
  `ho_tenSV` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `nganh_hoc` varchar(100) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `gioi_tinh` tinyint(1) DEFAULT NULL,
  `ma_phong` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`mscb`);

--
-- Chỉ mục cho bảng `area_management`
--
ALTER TABLE `area_management`
  ADD PRIMARY KEY (`ma_khu`);

--
-- Chỉ mục cho bảng `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`ma_day`),
  ADD KEY `ma_khu` (`ma_khu`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `room_management`
--
ALTER TABLE `room_management`
  ADD PRIMARY KEY (`ma_phong`),
  ADD KEY `ma_loai` (`ma_loai`),
  ADD KEY `ma_day` (`ma_day`);

--
-- Chỉ mục cho bảng `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`ma_loai_phong`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`mssv`);

--
-- Chỉ mục cho bảng `student_ktx`
--
ALTER TABLE `student_ktx`
  ADD PRIMARY KEY (`mssv`),
  ADD KEY `ma_phong` (`ma_phong`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `buildings`
--
ALTER TABLE `buildings`
  ADD CONSTRAINT `buildings_ibfk_1` FOREIGN KEY (`ma_khu`) REFERENCES `area_management` (`ma_khu`);

--
-- Các ràng buộc cho bảng `room_management`
--
ALTER TABLE `room_management`
  ADD CONSTRAINT `room_management_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `room_type` (`ma_loai_phong`),
  ADD CONSTRAINT `room_management_ibfk_2` FOREIGN KEY (`ma_day`) REFERENCES `buildings` (`ma_day`);

--
-- Các ràng buộc cho bảng `student_ktx`
--
ALTER TABLE `student_ktx`
  ADD CONSTRAINT `student_ktx_ibfk_1` FOREIGN KEY (`ma_phong`) REFERENCES `room_management` (`ma_phong`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

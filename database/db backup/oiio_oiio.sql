-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 04, 2023 lúc 03:11 AM
-- Phiên bản máy phục vụ: 5.7.42
-- Phiên bản PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `oiio_oiio`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `username`, `fullname`, `email`, `phone`, `birthday`, `gender`, `avatar`, `address`, `email_verified_at`, `password`, `remember_token`, `roles`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nvZlYsJbLzZV77I/aPER2OdbX3c6e6fZn7LMm3u8uRQUz91kMit8a', 'QNtEtF3nLyoCnqMBlclyopGclCgfnZhX06CguNJ9AdjVv6AtgF2LgvLd4BzC', 1, NULL, '2023-06-14 10:25:52'),
(2, NULL, 'Quản Trị', 'quantri@gmail.com', '0999999994', NULL, NULL, NULL, NULL, NULL, '$2y$10$V.yJG9iybskPtT4jIh.XR.NFbIZMdvRrnd9K60Xp7wrEjE2JmkEl.', NULL, 2, '2023-06-14 10:25:09', '2023-06-14 10:25:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(4) NOT NULL DEFAULT '0',
  `desc` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `type`, `name`, `slug`, `position`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Chọn sàn', 'chon-san', 1, NULL, 1, '2023-06-05 00:20:27', '2023-06-07 07:45:12'),
(2, 1, 'Hình thức giao nhận', 'hinh-thuc-giao-nhan', 2, NULL, 1, '2023-06-05 03:36:15', '2023-06-07 07:45:06'),
(3, 1, 'Thanh toán', 'thanh-toan', 3, NULL, 1, '2023-06-07 07:31:30', '2023-06-07 07:31:30'),
(4, 1, 'Hình thức đánh giá', 'hinh-thuc-danh-gia', 4, NULL, 1, '2023-06-07 07:36:33', '2023-06-07 07:36:33'),
(5, 2, 'Yêu cầu tài khoản đặt', 'yeu-cau-tai-khoan-dat', 5, NULL, 1, '2023-06-07 07:39:57', '2023-06-07 07:39:57'),
(6, 1, 'Áp mã', 'ap-ma', 6, NULL, 1, '2023-06-07 07:45:48', '2023-06-07 07:45:48'),
(7, 2, 'Vận chuyển', 'van-chuyen', 2, NULL, 1, '2023-06-07 07:49:10', '2023-06-07 07:49:31'),
(8, 1, 'Khu vực lên đơn', 'khu-vuc-len-don', 7, NULL, 1, '2023-06-07 07:51:18', '2023-06-07 07:51:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `position` tinyint(4) NOT NULL DEFAULT '0',
  `meta` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `slug`, `price`, `position`, `meta`, `note`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Đơn Shopee', 'don-shopee', 3000, 1, '{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}', NULL, NULL, 1, '2023-06-05 00:20:45', '2023-06-07 07:26:40'),
(2, 1, 'Đơn Tiki', 'don-tiki', 2000, 4, '{\"bg_color\":\"#1ba8ff\",\"text_color\":\"#ffffff\"}', NULL, NULL, 1, '2023-06-05 03:02:14', '2023-06-07 07:27:53'),
(3, 2, 'Không nhận hàng', 'khong-nhan-hang', 2000, 1, NULL, 'Người đặt không cần phải nhận hàng', NULL, 1, '2023-06-05 03:37:12', '2023-06-07 07:29:57'),
(4, 1, 'Đơn Lazada', 'don-lazada', 2500, 3, '{\"bg_color\":\"#0e146a\",\"text_color\":\"#ffffff\"}', NULL, NULL, 1, '2023-06-07 07:27:42', '2023-06-07 07:27:42'),
(5, 1, 'Đơn Tiktok', 'don-tiktok', 3000, 2, '{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}', NULL, NULL, 1, '2023-06-07 07:29:05', '2023-06-07 07:29:05'),
(6, 2, 'Nhận hàng', 'nhan-hang', 6000, 2, NULL, 'Người đặt nhận đơn hàng ảo shop gửi về địa chỉ thật của người đặt', NULL, 1, '2023-06-07 07:30:50', '2023-06-07 07:30:50'),
(7, 3, 'Shop thanh toán', 'shop-thanh-toan', 1000, 1, NULL, 'Người đặt không cần thanh toán cho đơn này', NULL, 1, '2023-06-07 07:32:35', '2023-06-07 07:32:35'),
(10, 4, 'Shop gửi đánh giá', 'shop-gui-danh-gia', 2000, 1, NULL, 'Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng', NULL, 1, '2023-06-07 07:37:51', '2023-06-07 08:06:00'),
(11, 4, 'Tự đánh giá', 'tu-danh-gia', 500, 2, NULL, 'Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá', NULL, 1, '2023-06-07 07:38:38', '2023-06-07 07:38:38'),
(12, 4, 'Chỉ đánh giá 5 sao', 'chi-danh-gia-5-sao', 100, 3, NULL, 'Người đặt chỉ cần nhấn 5 sao cho đơn hàng này', NULL, 1, '2023-06-07 07:39:23', '2023-06-07 07:39:23'),
(13, 5, 'Tài khoản thường', 'tai-khoan-thuong', 500, 1, '{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}', 'Bạn cần tài khoản có avatar và có đơn thành công', NULL, 1, '2023-06-07 07:41:11', '2023-06-07 07:41:11'),
(14, 5, 'Tài khoản bạc', 'tai-khoan-bac', 800, 2, '{\"bg_color\":\"#b0b0b0\",\"text_color\":\"#ffffff\"}', 'Đối với shopee, các nền tảng khác chỉ cần có avatar và tên người dùng thật', NULL, 1, '2023-06-07 07:42:40', '2023-06-14 12:44:54'),
(15, 5, 'Tài khoản vàng', 'tai-khoan-vang', 1000, 3, '{\"bg_color\":\"#e2e600\",\"text_color\":\"#000000\"}', 'Yêu cầu tài khoản đặt là tài khoản hạng vàng đối với shopee, đối với các nền tảng khác chỉ cần có avatar và tên người dùng thật', NULL, 1, '2023-06-07 07:43:56', '2023-06-07 07:43:56'),
(16, 5, 'Tài khoản kim cương', 'tai-khoan-kim-cuong', 1500, 4, '{\"bg_color\":\"#ffffff\",\"text_color\":\"#ff0000\"}', 'Yêu cầu tài khoản đặt là tài khoản hạng kim cương đối với shopee, đối với các nền tảng khác chỉ cần có avatar và tên người dùng thật', NULL, 1, '2023-06-07 07:44:51', '2023-06-07 07:44:51'),
(17, 6, 'Không áp mã', 'khong-ap-ma', 0, 1, NULL, NULL, NULL, 1, '2023-06-07 07:46:14', '2023-06-07 07:46:14'),
(18, 6, 'Áp mã freeship', 'ap-ma-freeship', 5000, 2, NULL, 'Yêu cầu áp mã freeship', NULL, 1, '2023-06-07 07:46:52', '2023-06-07 07:46:52'),
(19, 6, 'Áp mã sàn', 'ap-ma-san', 8000, 3, NULL, 'Yêu cầu áp được mã sàn', NULL, 1, '2023-06-07 07:47:28', '2023-06-15 11:54:26'),
(20, 6, 'Áp mã shop', 'ap-ma-shop', 1000, 4, NULL, 'Mã shop trong phạm vi an toàn, nếu mã shop quá ảo hãy báo với admin để xử lý!', NULL, 1, '2023-06-07 07:48:44', '2023-06-07 07:48:44'),
(21, 7, 'Đơn giao nhanh', 'don-giao-nhanh', 2000, 1, '{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}', NULL, NULL, 1, '2023-06-07 07:50:08', '2023-06-07 07:50:08'),
(22, 7, 'Hoả tốc', 'hoa-toc', 1000, 2, '{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}', NULL, NULL, 1, '2023-06-07 07:50:39', '2023-06-07 07:50:48'),
(23, 8, 'Tỉnh lẻ', 'tinh-le', 200, 0, NULL, NULL, NULL, 1, '2023-06-07 07:51:49', '2023-06-07 07:51:49'),
(24, 8, 'Hà Nội', 'ha-noi', 1000, 2, NULL, 'Địa chỉ lên đơn là Hà Nội', NULL, 1, '2023-06-07 07:52:21', '2023-06-07 07:52:21'),
(25, 8, 'Hồ Chí Minh', 'ho-chi-minh', 1000, 3, NULL, 'Địa chỉ lên đơn thuộc HCM', NULL, 1, '2023-06-07 07:52:49', '2023-06-07 07:52:49'),
(26, 8, 'Đà Nẵng', 'da-nang', 600, 4, NULL, 'Địa chỉ lên đơn thuộc Đà Nẵng', NULL, 1, '2023-06-07 07:53:16', '2023-06-07 07:53:16'),
(27, 3, 'Shopeepay', 'shopeepay', 2000, 2, NULL, 'Người đặt cần thanh toán sau đó hãy yêu cầu tiền cọc trên đơn hàng này', NULL, 1, '2023-06-07 23:24:59', '2023-06-07 23:24:59'),
(28, 3, 'Người đặt hộ thanh toán', 'nguoi-dat-ho-thanh-toan', 2000, 3, NULL, 'Người đặt sẽ thanh toán đơn hàng sau khi yêu cầu cọc tiền từ shop thành công trên đơn hàng này', NULL, 1, '2023-06-07 23:25:56', '2023-06-07 23:25:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_vnpay` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_code` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `code`, `code_vnpay`, `bank_code`, `time`, `bank`, `amount`, `fee`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Txn3C00A9AEF690F', 'OIIO nạp', 'OIIO', NULL, 'OIIO', 500000, 0, 1, '2023-06-14 11:06:36', '2023-06-14 11:06:36'),
(2, 1, 'Txn39F51A71DE96D', NULL, 'VNPAYQR', NULL, NULL, 50000, 0, 0, '2023-06-14 12:46:36', '2023-06-14 12:46:36'),
(3, 7, 'Txn66169CA1FD3B2', NULL, 'VNPAYQR', NULL, NULL, 100000, 0, 0, '2023-06-14 13:49:39', '2023-06-14 13:49:39'),
(4, 7, 'TxnB72AA941849F2', '0', 'VNBANK', '20230614205208', 'VNPAY', 100000, 0, 2, '2023-06-14 13:51:40', '2023-06-14 13:52:05'),
(5, 1, 'Txn30790DE414D8F', 'OIIO nạp', 'OIIO', NULL, 'OIIO', 5000000, 0, 1, '2023-06-15 04:23:39', '2023-06-15 04:23:39'),
(6, 15, 'TxnD0B2002A077C9', '14039930', 'VNBANK', '20230615172459', 'NCB', 123123, 0, 1, '2023-06-15 10:24:39', '2023-06-15 10:25:00'),
(7, 9, 'Txn1EA5A1AD5A522', NULL, 'VNBANK', NULL, NULL, 100000, 0, 0, '2023-06-15 11:09:23', '2023-06-15 11:09:23'),
(8, 1, 'TxnE5A898C90110C', '0', 'VNPAYQR', '20230615213316', 'VNPAY', 50000, 0, 2, '2023-06-15 14:15:39', '2023-06-15 14:33:11'),
(9, 5, 'Txn47D85E331F4C0', NULL, 'VNPAYQR', NULL, NULL, 100000, 0, 0, '2023-06-16 02:38:31', '2023-06-16 02:38:31'),
(10, 15, 'Txn4222C3969B470', NULL, 'VNBANK', NULL, NULL, 100000000, 0, 0, '2023-06-16 02:48:40', '2023-06-16 02:48:40'),
(11, 15, 'Txn431C819B763FB', '14040336', 'VNBANK', '20230616094944', 'NCB', 9999999, 0, 2, '2023-06-16 02:49:36', '2023-06-16 03:04:45'),
(12, 15, 'TxnC951D8263CF24', NULL, 'VNPAYQR', NULL, NULL, 1111111111, 0, 0, '2023-06-16 02:51:03', '2023-06-16 02:51:03'),
(13, 15, 'TxnE285EA624C693', '14040338', 'VNBANK', '20230616095135', 'NCB', 1111111, 0, 2, '2023-06-16 02:51:10', '2023-06-16 03:06:13'),
(14, 15, 'TxnE9B71DFD14B07', NULL, 'VNBANK', NULL, NULL, 100000000, 0, 0, '2023-06-16 03:37:58', '2023-06-16 03:37:58'),
(15, 15, 'TxnAD7BCB6E33240', '14040445', 'VNBANK', '20230616111931', 'NCB', 11111111, 0, 2, '2023-06-16 04:19:12', '2023-06-16 04:36:09'),
(16, 1, 'Txn0EAC50415C477', '0', 'VNPAYQR', '20230617093543', 'VNPAY', 50000, 0, 2, '2023-06-17 02:20:38', '2023-06-17 02:35:35'),
(17, 31, 'TxnF3DC4D217625B', NULL, 'VNPAYQR', NULL, NULL, 91500, 0, 0, '2023-06-17 12:18:33', '2023-06-17 12:18:33'),
(18, 40, 'Txn1EC7771D54900', NULL, 'VNBANK', NULL, NULL, 50000, 0, 0, '2023-06-18 04:29:07', '2023-06-18 04:29:07'),
(19, 40, 'Txn8905AF25BA408', NULL, 'VNPAYQR', NULL, NULL, 50000, 0, 0, '2023-06-18 04:29:47', '2023-06-18 04:29:47'),
(20, 5, 'Txn948D7A8988047', 'OIIO nạp', 'OIIO', NULL, 'OIIO', 52500, 0, 1, '2023-06-18 13:31:28', '2023-06-18 13:31:28'),
(21, 40, 'TxnF87123B738873', NULL, 'VNBANK', NULL, NULL, 170000, 0, 0, '2023-06-18 13:40:59', '2023-06-18 13:40:59'),
(22, 40, 'Txn0FDDF3EE3B60B', '0', 'VNPAYQR', '20230618205424', 'VNPAY', 170000, 0, 2, '2023-06-18 13:41:14', '2023-06-18 13:54:12'),
(23, 5, 'Txn7594FB9212DD3', 'OIIO nạp', 'OIIO', NULL, 'OIIO', 136500, 0, 1, '2023-06-18 14:24:22', '2023-06-18 14:24:22'),
(24, 50, 'Txn96187BB5FC900', '0', 'VNBANK', '20230618215751', 'VNPAY', 100000, 0, 2, '2023-06-18 14:54:51', '2023-06-18 14:57:39'),
(25, 15, 'Txn14462518FC243', NULL, 'VNBANK', NULL, NULL, 100000000, 0, 0, '2023-06-20 09:42:01', '2023-06-20 09:42:01'),
(26, 15, 'TxnC750D14785B57', NULL, 'VNBANK', NULL, NULL, 100000000, 0, 2, '2023-06-20 09:42:08', '2023-06-20 09:45:36'),
(27, 15, 'TxnE6FA988CF370E', NULL, 'VNBANK', NULL, NULL, 2000000, 0, 2, '2023-06-20 09:43:30', '2023-06-20 09:50:50'),
(28, 15, 'Txn956E9967CDDDA', NULL, 'VNBANK', NULL, NULL, 999999999, 0, 0, '2023-06-20 09:44:05', '2023-06-20 09:44:05'),
(29, 15, 'Txn4EDBD45EBA86D', NULL, 'VNBANK', NULL, NULL, 99999999, 0, 1, '2023-06-20 09:44:41', '2023-06-20 09:45:35'),
(30, 15, 'TxnF9760B2EF8539', NULL, 'VNPAYQR', NULL, NULL, 100000000, 0, 0, '2023-06-20 09:50:10', '2023-06-20 09:50:10'),
(31, 15, 'Txn5ECA092543383', '14043624', 'VNBANK', '20230620165039', 'NCB', 2000000, 0, 2, '2023-06-20 09:50:19', '2023-06-20 10:08:11'),
(32, 1, 'Txn1C92FD2AE27ED', NULL, 'VNPAYQR', NULL, NULL, 50000, 0, 0, '2023-06-20 10:01:46', '2023-06-20 10:01:46'),
(33, 15, 'Txn43BA6E25A9816', '14044755', 'VNBANK', '20230621120514', 'NCB', 100000000, 0, 1, '2023-06-21 05:04:14', '2023-06-21 05:05:18'),
(34, 15, 'Txn2F7A3E2F980EA', NULL, 'VNBANK', NULL, NULL, 1000000, 0, 2, '2023-06-21 06:12:51', '2023-06-21 06:17:06'),
(35, 15, 'Txn4DFBAB54ED74A', NULL, 'VNBANK', NULL, NULL, 11111111, 0, 0, '2023-06-21 06:14:23', '2023-06-21 06:14:23'),
(36, 15, 'TxnAB732408C4924', '14044853', 'VNBANK', '20230621131549', 'NCB', 222222, 0, 2, '2023-06-21 06:15:00', '2023-06-21 06:33:02'),
(37, 15, 'Txn1859E85A2BB58', NULL, 'VNPAYQR', NULL, NULL, 2000000, 0, 0, '2023-06-21 08:03:11', '2023-06-21 08:03:11'),
(38, 15, 'Txn2FB28130095B4', NULL, 'VNPAYQR', NULL, NULL, 2000000, 0, 0, '2023-06-21 08:03:22', '2023-06-21 08:03:22'),
(39, 15, 'Txn12653F527A3D9', NULL, 'VNPAYQR', NULL, NULL, 2000000, 0, 0, '2023-06-21 08:03:39', '2023-06-21 08:03:39'),
(40, 15, 'Txn3F33FBDCF7B68', '0', 'VNBANK', '20230621152159', 'VNPAY', 2000000, 0, 2, '2023-06-21 08:04:28', '2023-06-21 08:22:00'),
(41, 15, 'Txn990BAE88605F4', NULL, 'VNPAYQR', NULL, NULL, 100000000, 0, 0, '2023-06-22 08:10:13', '2023-06-22 08:10:13'),
(42, 15, 'TxnDFBFC8B25D815', NULL, 'VNBANK', NULL, NULL, 100000000, 0, 0, '2023-06-22 08:10:21', '2023-06-22 08:10:21'),
(43, 15, 'TxnF715E9D8A6DB9', NULL, 'VNBANK', NULL, NULL, 2000000, 0, 2, '2023-06-22 08:10:42', '2023-06-22 08:34:19'),
(44, 15, 'TxnA4CAF8D7EFBD2', '14046412', 'VNBANK', '20230622153219', 'NCB', 2000000, 0, 2, '2023-06-22 08:30:46', '2023-06-22 08:47:55'),
(45, 40, 'Txn10A562FC1368F', NULL, 'VNPAYQR', NULL, NULL, 100000, 0, 0, '2023-06-24 01:57:03', '2023-06-24 01:57:03'),
(46, 40, 'TxnC301A24B021E4', NULL, 'VNPAYQR', NULL, NULL, 100000, 0, 0, '2023-06-24 02:01:11', '2023-06-24 02:01:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_code` int(10) UNSIGNED NOT NULL,
  `code` int(11) NOT NULL,
  `name` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codename` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` double NOT NULL,
  `money_product` double NOT NULL DEFAULT '0',
  `money_product_addition` double NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL,
  `is_virtual` tinyint(4) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `receive_at` timestamp NULL DEFAULT NULL,
  `step_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jobs`
--

INSERT INTO `jobs` (`id`, `shop_id`, `worker_id`, `code`, `name`, `slug`, `money`, `money_product`, `money_product_addition`, `status`, `is_virtual`, `note`, `desc`, `receive_at`, `step_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'J4B4E916DE3EDD', NULL, '04649a5c-5b2a-4a73-b8df-474a8db36f0e', 10500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-14 11:07:48', '2023-06-14 11:24:11'),
(2, 1, 4, 'J8D939EBDACBCB', NULL, '246cf1ef-0004-4239-becf-c9e9090b68eb', 10500, 0, 0, 6, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-14 11:31:54', '2023-06-14 11:31:54', '2023-06-14 11:08:42', '2023-06-14 12:49:45'),
(3, 1, 3, 'J94CB09C993BEB', NULL, 'd535964a-5f1f-41da-a337-a543da64c898', 10500, 0, 0, 6, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-14 11:28:22', '2023-06-14 11:28:22', '2023-06-14 11:13:39', '2023-06-14 12:36:36'),
(4, 1, 3, 'J3C9751689230A', NULL, '73df6a48-968b-4c0c-b561-43169227b78b', 10500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-14 11:26:37', '2023-06-14 11:28:14'),
(5, 1, NULL, 'J9D5BD5CB87BFE', NULL, '8a28052f-5988-445a-b879-6eb26b60fa40', 9000, 0, 0, 7, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-14 11:45:21', '2023-06-14 12:12:30'),
(6, 1, 5, 'J4C0393D873892', NULL, '9128bb48-9369-40c9-a137-606d5ebd3194', 16500, 0, 0, 7, 0, '<p>- Người đặt nhận đơn hàng ảo shop gửi về địa chỉ thật của người đặt</p><p>- Người đặt sẽ thanh toán đơn hàng sau khi yêu cầu cọc tiền từ shop thành công trên đơn hàng này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-14 12:14:54', '2023-06-14 12:14:54', '2023-06-14 12:13:13', '2023-06-16 01:03:11'),
(7, 6, 1, 'JF0AE4CFAD25A0', NULL, '7f940540-ee02-4b43-ba88-c6ee8cf712b1', 9600, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt chỉ cần nhấn 5 sao cho đơn hàng này</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-14 13:14:27', '2023-06-14 13:14:53'),
(8, 6, 1, 'J091B98EAC9ADE', NULL, 'af129f7c-fe09-4e83-a540-4c9916578960', 9600, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt chỉ cần nhấn 5 sao cho đơn hàng này</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-14 13:15:14', '2023-06-14 13:16:33'),
(10, 1, 2, 'J8117C595885C1', NULL, 'a81796ec-ea86-4c37-aa58-6e726a84334f', 21800, 0, 0, 1, 1, '<p>- Người đặt nhận đơn hàng ảo shop gửi về địa chỉ thật của người đặt</p><p>- Người đặt cần thanh toán sau đó hãy yêu cầu tiền cọc trên đơn hàng này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Đối với shopee, các nền tảng khác chỉ cần có avatar và tên người dùng thật</p><p>- Yêu cầu áp mã freeship</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-14 13:22:10', '2023-06-14 14:53:19'),
(11, 6, 1, 'JB4053FFEA609C', NULL, '0baddf83-5c3f-4b29-876f-638e80e286a7', 17500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt sẽ thanh toán đơn hàng sau khi yêu cầu cọc tiền từ shop thành công trên đơn hàng này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp mã freeship</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-14 13:46:51', '2023-06-14 13:49:50'),
(13, 1, 2, 'J47D008CB39B00', NULL, '5e400b9b-5005-4155-b233-ab2b5714ca6b', 16000, 0, 0, 1, 1, '<p>- Người đặt nhận đơn hàng ảo shop gửi về địa chỉ thật của người đặt</p><p>- Người đặt sẽ thanh toán đơn hàng sau khi yêu cầu cọc tiền từ shop thành công trên đơn hàng này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-14 14:40:59', '2023-06-14 14:44:38'),
(14, 1, 2, 'J280E92619D6AB', NULL, '609f8812-f567-4a5c-8055-c33ac2abe6c1', 12000, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Yêu cầu tài khoản đặt là tài khoản hạng vàng đối với shopee, đối với các nền tảng khác chỉ cần có avatar và tên người dùng thật</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-14 22:53:25', '2023-06-14 22:54:21'),
(15, 2, 1, 'J1611DCCA67CE1', NULL, '7d1c49a3-e93a-4cc9-b49f-e7337b980fad', 10800, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Đối với shopee, các nền tảng khác chỉ cần có avatar và tên người dùng thật</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 02:33:21', '2023-06-15 02:36:44'),
(16, 2, 1, 'J7EA4CF9312D86', NULL, '2c1e3603-2668-4355-8d18-47a5710e993d', 11000, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Yêu cầu tài khoản đặt là tài khoản hạng vàng đối với shopee, đối với các nền tảng khác chỉ cần có avatar và tên người dùng thật</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 04:21:54', '2023-06-15 04:22:38'),
(17, 2, 1, 'JC3025AE14AFD6', NULL, 'c1ff3cad-a889-4f58-bb34-f9539e064ca5', 11000, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Yêu cầu tài khoản đặt là tài khoản hạng vàng đối với shopee, đối với các nền tảng khác chỉ cần có avatar và tên người dùng thật</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 04:21:58', '2023-06-15 04:22:22'),
(18, 2, 1, 'JD987CE9CA9AB4', NULL, 'ea6a0b18-2770-4791-8b6a-bdd5e26e2817', 11000, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Yêu cầu tài khoản đặt là tài khoản hạng vàng đối với shopee, đối với các nền tảng khác chỉ cần có avatar và tên người dùng thật</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 04:22:01', '2023-06-15 04:22:17'),
(19, 2, 1, 'J24C6695CD78D7', NULL, 'a06b2056-7f83-4d79-b960-bb328ef746a6', 11000, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Yêu cầu tài khoản đặt là tài khoản hạng vàng đối với shopee, đối với các nền tảng khác chỉ cần có avatar và tên người dùng thật</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 04:22:04', '2023-06-15 04:22:12'),
(20, 1, 2, 'J853DD47D1F36F', NULL, 'b5657033-4115-47d3-92dc-957d3efee82a', 10500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 06:25:00', '2023-06-15 06:25:32'),
(21, 1, 2, 'J15E415EEE236B', NULL, '6abfec8b-98f7-4ec6-a247-75fafac52c0d', 10500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 06:25:09', '2023-06-15 06:25:38'),
(22, 1, 2, 'J37FEF5FD14E4B', NULL, 'eb91f0cb-2fbf-492c-b75f-e82747482d6f', 10500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 06:25:12', '2023-06-15 06:25:47'),
(23, 1, 2, 'J9648870534A30', NULL, 'e5454d06-84be-4f44-8b96-ac57f4a3eb73', 10500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 06:25:18', '2023-06-15 07:10:45'),
(24, 1, 14, 'J997BDCA620FB8', NULL, '292f6659-614f-4b83-868a-85248bb8fcca', 12000, 0, 96000, 6, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt sẽ thanh toán đơn hàng sau khi yêu cầu cọc tiền từ shop thành công trên đơn hàng này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Yêu cầu tài khoản đặt là tài khoản hạng vàng đối với shopee, đối với các nền tảng khác chỉ cần có avatar và tên người dùng thật</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-15 07:33:30', '2023-06-15 07:33:30', '2023-06-15 07:32:27', '2023-06-15 07:38:08'),
(25, 14, 1, 'J3CBDD6CAD440A', NULL, '6ee84901-c031-484c-b2ce-418dc36153a0', 19500, 0, 0, 6, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp được mã sàn</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-15 07:49:13', '2023-06-15 07:49:13', '2023-06-15 07:49:08', '2023-06-15 07:50:18'),
(26, 14, 2, 'JF4D30A3F50DAB', NULL, 'f20b1c3b-e688-4ff8-a8fd-cee246a130ff', 19500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp được mã sàn</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 07:58:30', '2023-06-15 09:06:49'),
(27, 1, 12, 'J28D510EE5AFA7', NULL, 'b9d82c0f-f29a-428f-8dd3-6a86f87ffac4', 10400, 0, 0, 7, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt chỉ cần nhấn 5 sao cho đơn hàng này</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp được mã sàn</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-15 08:54:44', '2023-06-15 09:02:18', '2023-06-15 08:36:40', '2023-06-15 09:02:18'),
(28, 14, 2, 'J995C12A00EE8D', NULL, '7264c0ad-b4e5-40ca-8794-2973b3cb755e', 19500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp được mã sàn</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 09:05:52', '2023-06-15 09:06:31'),
(29, 1, 17, 'J880514D722531', NULL, '47be9445-34bd-4144-9004-db9019d36c10', 9000, 0, 0, 6, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-15 13:56:11', '2023-06-15 13:56:11', '2023-06-15 13:38:56', '2023-06-26 17:01:01'),
(30, 1, 6, 'JE21C0AC3B97A9', NULL, 'e88e6ea2-ee9a-4d4d-9c93-dcd473317c21', 10500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 23:14:10', '2023-06-15 23:14:51'),
(31, 1, 6, 'J7DB8F249EAD51', NULL, '6c055098-e6b5-4a0f-a034-95865895fc6f', 10500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 23:14:14', '2023-06-15 23:14:44'),
(32, 1, 6, 'J7DDBCB4BF5AF6', NULL, '629378a4-9aa4-45b6-a7ae-272d28a637fb', 10500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 23:14:16', '2023-06-15 23:14:39'),
(33, 1, 6, 'J53E08D21F1F8D', NULL, '9ea5f62b-7fd8-4223-bdd6-b0fa72743c0b', 10500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-15 23:14:19', '2023-06-15 23:14:33'),
(34, 1, 5, 'JC8E9F8BC9B463', NULL, '15a1ce61-5f20-455c-bc8b-56bebf27e7ad', 10500, 0, 0, 6, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-16 01:05:12', '2023-06-16 01:05:12', '2023-06-16 01:04:27', '2023-06-16 01:08:38'),
(35, 2, 1, 'J16E1F2B0FA2EB', NULL, 'b8eca2cc-7c9b-4ceb-8618-d49fcab70f8c', 11500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-16 07:05:06', '2023-06-16 07:05:53'),
(36, 2, 1, 'J695C7E9A8C577', NULL, '05dab86f-c303-4de4-b3a0-ebb5e5fca17c', 11500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-16 07:05:11', '2023-06-16 07:05:40'),
(37, 2, 1, 'J7AC89509363DC', NULL, 'd37e893d-602b-4792-b230-251c628aaf7a', 11500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-16 07:05:15', '2023-06-16 07:05:44'),
(38, 2, 1, 'JE4D40D9EA1F86', NULL, 'b2515232-1d1e-40f4-8cc8-998a666918c3', 11500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-16 07:05:19', '2023-06-16 07:05:35'),
(39, 6, 1, 'JCA3580B4FC9F4', NULL, '9f026fc6-8f55-4bae-95e8-3227e81723a3', 16500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp mã freeship</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-16 12:44:11', '2023-06-16 12:44:44'),
(40, 6, 1, 'J215951BAFB944', NULL, '7d046281-9f27-4f67-8c0f-70ea6d3f84dc', 16500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp mã freeship</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-16 12:44:15', '2023-06-16 12:44:37'),
(41, 6, 1, 'J27F25B51C3185', NULL, 'dd4e0fa9-764a-45a6-9c77-c285e44cd775', 16500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp mã freeship</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-16 12:44:20', '2023-06-16 12:44:33'),
(42, 2, 1, 'J9748CF616B8E6', NULL, '04c078eb-f961-4c00-8705-1a3221d5e454', 10500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-17 02:20:03', '2023-06-17 02:36:19'),
(43, 1, 33, 'J187E44951C0DA', NULL, '90f8d2e6-ec0e-4679-a436-935f08a4d05e', 10500, 0, 0, 2, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-17 14:03:03', '2023-06-17 14:03:03', '2023-06-17 10:14:49', '2023-06-17 14:03:03'),
(44, 1, 31, 'JEDCBB8738B385', NULL, '2c603641-842b-425b-982c-a8708ce719ad', 10500, 0, 0, 5, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-17 12:19:09', '2023-06-17 12:19:09', '2023-06-17 10:14:52', '2023-06-21 14:51:33'),
(45, 1, 28, 'J9DB2628059F79', NULL, '01bb61ab-18fd-4def-958b-cd315ade2e02', 10500, 0, 0, 6, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-17 11:19:14', '2023-06-17 11:19:14', '2023-06-17 10:14:56', '2023-06-18 13:26:37'),
(46, 1, 27, 'J2319316D90B9C', NULL, '8eb0d78d-914f-4edb-aff2-db7366a0830e', 10500, 0, 0, 2, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-17 11:06:41', '2023-06-17 11:06:41', '2023-06-17 10:15:08', '2023-06-17 11:06:41'),
(47, 1, 19, 'J29F0DB3CF1F0F', NULL, 'a39de118-73ee-427c-be6d-b1293c022e0e', 10500, 0, 0, 2, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-17 10:38:32', '2023-06-17 10:38:32', '2023-06-17 10:15:10', '2023-06-17 10:38:32'),
(48, 1, 40, 'J97460F44055D8', NULL, '5313718d-4555-4fb1-a6ce-d4e8e0ebfaf3', 10500, 0, 0, 6, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-18 00:44:26', '2023-06-18 00:44:26', '2023-06-17 22:47:11', '2023-06-18 13:32:55'),
(49, 1, 42, 'J63D36FC037362', NULL, '15133207-c2bd-4e34-93b6-bab8e086ded7', 10500, 0, 0, 6, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-18 01:34:14', '2023-06-18 01:34:14', '2023-06-17 22:47:14', '2023-06-18 13:40:57'),
(50, 1, 41, 'J3E3CB2DD10C2E', NULL, '9ed40758-76d2-4cd7-a30d-f6cf2ce39066', 10500, 0, 0, 3, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-18 01:27:53', '2023-06-18 01:27:53', '2023-06-17 22:47:18', '2023-06-18 02:51:17'),
(51, 1, 39, 'JA48DCE8D45123', NULL, 'eaa74639-f3d7-4cc6-95f6-b69aaa13eba9', 10500, 0, 0, 6, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-18 00:18:56', '2023-06-18 00:18:56', '2023-06-17 22:47:21', '2023-06-18 14:58:36'),
(52, 1, 38, 'JFFD0645A5D16F', NULL, 'b5d3fe6e-7e88-4324-aa75-efdae4ef3300', 10500, 0, 0, 6, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-17 23:22:00', '2023-06-17 23:22:00', '2023-06-17 22:47:24', '2023-06-18 14:12:29'),
(53, 2, 41, 'J62670D1733D51', NULL, 'a6a61564-6ffe-4a69-9ff4-6b2eab8e36d0', 22000, 0, 0, 1, 1, '<p>- Người đặt nhận đơn hàng ảo shop gửi về địa chỉ thật của người đặt</p><p>- Người đặt cần thanh toán sau đó hãy yêu cầu tiền cọc trên đơn hàng này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Yêu cầu tài khoản đặt là tài khoản hạng vàng đối với shopee, đối với các nền tảng khác chỉ cần có avatar và tên người dùng thật</p><p>- Yêu cầu áp mã freeship</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-18 01:13:17', '2023-06-18 01:27:12'),
(54, 1, 43, 'J356DC131CAD0B', NULL, 'd1c2dfc9-acda-4383-9cca-d0d49320d73b', 10500, 0, 0, 6, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-18 08:01:53', '2023-06-18 08:01:53', '2023-06-18 07:50:55', '2023-06-18 13:19:09'),
(55, 5, 56, 'J77F79BCB0BD8B', NULL, 'afe6d701-bbe1-412e-af75-94ad0bf89f16', 10500, 0, 0, 7, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-18 13:51:46', '2023-06-18 13:51:46', '2023-06-18 13:46:26', '2023-06-20 11:59:47'),
(56, 5, 53, 'J77EAA9DE27CA5', NULL, '7db85544-64f3-4f66-b13c-425260713dbf', 10500, 0, 0, 4, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-18 13:49:17', '2023-06-18 13:49:17', '2023-06-18 13:47:50', '2023-06-18 15:20:24'),
(57, 5, 58, 'J99135A127B656', NULL, 'ec99bb0b-7fb3-4c3d-93fb-6adf97ecd13e', 10500, 0, 0, 6, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-18 13:53:08', '2023-06-18 13:53:08', '2023-06-18 13:49:39', '2023-06-20 20:46:14'),
(58, 5, 57, 'J2DBDAC40E4992', NULL, 'f1baca85-a422-4f31-bb4d-9c0ee86b648e', 10500, 0, 0, 7, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-18 13:55:14', '2023-06-18 13:55:14', '2023-06-18 13:54:11', '2023-06-20 11:57:59'),
(59, 5, 54, 'J4D1F270FEF243', NULL, 'b0c8f3ff-9a80-4944-b89c-ccfee53822da', 10500, 0, 0, 7, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-18 14:04:04', '2023-06-18 14:04:04', '2023-06-18 13:55:18', '2023-06-20 11:57:29'),
(60, 5, 60, 'JA287064F63B74', NULL, '8c5d9cd1-4458-4253-946e-a913e6932688', 10500, 0, 0, 7, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-18 14:41:39', '2023-06-18 14:41:39', '2023-06-18 14:29:31', '2023-06-20 11:56:57'),
(61, 5, 59, 'J5E88D7B57E038', NULL, 'c9b37c5e-e653-4d3e-826d-4f1895f76ecc', 10500, 0, 0, 6, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-18 14:33:28', '2023-06-18 14:33:28', '2023-06-18 14:32:44', '2023-06-21 07:56:30'),
(62, 2, 1, 'J1B20E7811FA7D', NULL, '689a8edc-2ed7-45af-99c4-117bdcd5f097', 16500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp mã freeship</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-18 15:21:37', '2023-06-18 15:22:06'),
(63, 2, 1, 'JC91855B8B4FDD', NULL, 'c84a738a-d9ef-49bd-8338-588a273be374', 16500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp mã freeship</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-18 15:21:47', '2023-06-18 15:22:01'),
(64, 2, 38, 'J22D1AD2149B50', NULL, 'cc4b6db2-0ad6-4c72-bddc-31e610ae712e', 16500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp mã freeship</p><p>- Địa chỉ lên đơn là Hà Nội</p>', NULL, NULL, NULL, '2023-06-18 15:21:50', '2023-06-18 15:23:49'),
(65, 1, 20, 'JAAB2B3830D418', NULL, '5ce67f22-268c-42cc-88c7-6d79d8caf3e1', 9000, 0, 0, 4, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-18 23:59:46', '2023-06-18 23:59:46', '2023-06-18 23:25:02', '2023-06-19 00:56:04'),
(66, 1, 66, 'JD5C0E712608B9', NULL, '95065d1a-96f6-4343-8da7-5aa2a61d51de', 9000, 0, 0, 2, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-19 03:10:07', '2023-06-19 03:10:07', '2023-06-18 23:25:08', '2023-06-19 03:10:07'),
(67, 1, 57, 'JD1138519CF5EB', NULL, 'a4409806-1048-42de-a898-38741a965b2c', 9000, 0, 0, 3, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-19 02:04:47', '2023-06-19 02:04:47', '2023-06-18 23:25:16', '2023-06-19 05:42:28'),
(68, 1, 62, 'JCAD824092951D', NULL, '1e7118be-dcf8-4a6b-827e-37ccd181987e', 9000, 0, 0, 5, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-19 00:49:53', '2023-06-19 00:49:53', '2023-06-18 23:25:20', '2023-06-22 01:21:06'),
(69, 6, 1, 'J2DC1972EDF586', NULL, '6574877f-0235-475a-9971-ecc3171e2cd8', 15200, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp mã freeship</p>', NULL, NULL, NULL, '2023-06-18 23:47:33', '2023-06-18 23:48:02'),
(70, 6, 39, 'JE8E39B6395FDA', NULL, '0c26fd22-3321-42dd-85de-cab610b6c7e8', 15200, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp mã freeship</p>', NULL, NULL, NULL, '2023-06-19 01:18:09', '2023-06-19 01:21:42'),
(71, 1, 23, 'J3193FABB8536B', NULL, '558138ed-214d-4432-9b4f-97258bf057ce', 15000, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp mã freeship</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-20 14:03:48', '2023-06-20 14:28:59'),
(72, 1, 23, 'JD1E31A82A33CB', NULL, '8d984b70-39de-4a41-b586-2f9a47bc37fc', 15000, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp mã freeship</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-20 14:03:52', '2023-06-20 14:28:40'),
(73, 1, 59, 'JF4E6A5CEB5005', NULL, 'baed714e-2746-4b63-bf45-441aaedd4609', 20500, 0, 0, 1, 1, '<p>- Người đặt nhận đơn hàng ảo shop gửi về địa chỉ thật của người đặt</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp mã freeship</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-21 06:45:26', '2023-06-21 07:54:09'),
(74, 1, 59, 'J46509708BBF2D', NULL, 'f2b92f7f-9d2a-4298-9560-62ee22591105', 20500, 0, 0, 1, 1, '<p>- Người đặt nhận đơn hàng ảo shop gửi về địa chỉ thật của người đặt</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp mã freeship</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-21 06:45:31', '2023-06-21 07:57:51'),
(75, 1, 59, 'JB8CF36AFB3A85', NULL, '133fdb5b-a7d1-4dd6-8b48-ec7922d99a42', 20500, 0, 0, 1, 1, '<p>- Người đặt nhận đơn hàng ảo shop gửi về địa chỉ thật của người đặt</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Yêu cầu áp mã freeship</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-21 06:45:33', '2023-06-21 07:53:59'),
(76, 6, 1, 'J309AC6345FEB2', NULL, 'bec6eeb4-d063-4c24-a8e6-b66be4d7a9ae', 10500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-22 05:23:58', '2023-06-22 05:24:20'),
(77, 6, 1, 'JEA2E10298D3EA', NULL, '2fc50257-f629-42e7-b5e5-ce14a3a58da0', 10500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-22 05:24:03', '2023-06-22 05:24:16'),
(78, 1, 2, 'J802FBA38D519A', NULL, 'f0694c02-e99b-4b69-a469-5d0122e396b2', 10800, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Đối với shopee, các nền tảng khác chỉ cần có avatar và tên người dùng thật</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-23 08:51:41', '2023-06-23 08:52:13'),
(79, 5, 31, 'J85E5834F34B86', NULL, 'ba49f4d5-8525-4769-961e-53b62e733af7', 11500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-24 03:08:33', '2023-06-24 04:01:06'),
(80, 5, 2, 'JC03239A872420', NULL, '896d996f-8583-4bf3-8ffd-e8bcb282f743', 11500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-24 03:08:37', '2023-06-24 03:08:45'),
(81, 1, 87, 'J3DF42BF3C3FF9', NULL, '6e5f08c2-c0b5-4d46-a822-f6caf78d0d76', 10000, 0, 0, 5, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-26 09:39:44', '2023-06-26 09:39:44', '2023-06-26 07:52:54', '2023-06-27 10:22:35'),
(82, 1, NULL, 'JD515F350A9D8B', NULL, '578715ab-3fbc-4475-868a-0b32928fcd0f', 10000, 0, 0, 7, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-26 07:53:01', '2023-06-26 10:22:15'),
(83, 1, NULL, 'JAC7089651C590', NULL, '5e512340-bcae-4235-af14-ef32e2af79f2', 10000, 0, 0, 7, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-26 07:53:04', '2023-06-26 10:21:20'),
(84, 1, NULL, 'J643A625AE663B', NULL, 'd565da2c-7bb5-4969-937a-38c58ad8cfcc', 10000, 0, 0, 7, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-26 07:53:07', '2023-06-26 10:21:07'),
(85, 1, 89, 'JC8F48B2421FFE', NULL, '9e82f519-2e02-42e4-a5c4-ddc9f09d0b60', 10000, 0, 0, 7, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-26 09:57:00', '2023-06-26 09:57:00', '2023-06-26 07:53:10', '2023-06-26 10:23:49'),
(86, 1, 26, 'J0B47C69BB7CF6', NULL, '7f6ab058-6ce5-48dc-b1dc-b6755739a78a', 10000, 0, 0, 7, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-26 09:38:00', '2023-06-26 09:38:00', '2023-06-26 07:53:12', '2023-06-26 10:22:48'),
(87, 1, 44, 'JC0E8475801441', NULL, '89c143c6-2146-457b-961c-8fb1e341c4e9', 10000, 0, 0, 2, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-26 09:43:38', '2023-06-26 09:43:38', '2023-06-26 07:55:31', '2023-06-26 09:43:38'),
(88, 1, 86, 'JC420D2D0D0436', NULL, '5e786a5e-7552-494b-a427-e3d544b798c5', 10000, 0, 0, 5, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-26 08:46:02', '2023-06-26 08:46:02', '2023-06-26 07:55:34', '2023-06-29 12:49:27'),
(89, 1, 84, 'J23A79B4380909', NULL, '18f8e6c1-4da8-4db4-89eb-15f767cda095', 10000, 0, 0, 5, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-26 08:16:41', '2023-06-26 08:16:41', '2023-06-26 07:55:37', '2023-06-29 11:07:49'),
(90, 1, 60, 'J6A111C469148E', NULL, '37f69ba9-4afc-4c90-b862-c08c7365fadc', 10000, 0, 0, 5, 0, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Người đặt tự viết đánh giá có tâm cho đơn hàng, không yêu cầu về ảnh và video đánh giá</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, '2023-06-26 08:08:41', '2023-06-26 08:08:41', '2023-06-26 07:55:40', '2023-06-28 06:52:45'),
(91, 1, 2, 'J3204AA3498659', NULL, '6d32fc84-e5be-4dca-aec2-2c1a81646408', 11500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-29 08:26:54', '2023-06-29 08:27:55'),
(92, 1, 2, 'J9776059AAF7C8', NULL, 'dfad4048-01e9-457f-bdbd-db1d6327e8bd', 11500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-29 08:26:58', '2023-06-29 08:27:50'),
(93, 1, 2, 'JABFE4C3970871', NULL, 'e1cf2e71-145f-4970-9d77-e3b3a9f42af6', 11500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-29 08:27:01', '2023-06-29 08:27:44'),
(94, 1, 2, 'J26139A570D656', NULL, '7e9e672c-6502-4581-9eb3-389e4f273384', 11500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-29 08:27:04', '2023-06-29 08:27:39'),
(95, 1, 2, 'J6904778C29536', NULL, '9148416b-9839-4c1c-85cf-3ce347cefd56', 11500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-29 08:27:07', '2023-06-29 08:27:35'),
(96, 1, 2, 'J0459FEE1ADCB5', NULL, 'de087f73-42df-4902-ba04-124aeaac504c', 11500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-29 08:27:09', '2023-06-29 08:27:30'),
(97, 1, 2, 'JD02819C651D3B', NULL, 'f75aea3e-9149-4a76-9722-1e369801a132', 11500, 0, 0, 1, 1, '<p>- Người đặt không cần phải nhận hàng</p><p>- Người đặt không cần thanh toán cho đơn này</p><p>- Shop sẽ gửi ảnh, video sản phẩm và hướng dẫn đánh giá cho đơn hàng</p><p>- Bạn cần tài khoản có avatar và có đơn thành công</p><p>- Địa chỉ lên đơn thuộc HCM</p>', NULL, NULL, NULL, '2023-06-29 08:27:11', '2023-06-29 08:27:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_attribute_options`
--

CREATE TABLE `job_attribute_options` (
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_option_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_details`
--

CREATE TABLE `job_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `name_attribute` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_attribute_option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` double NOT NULL DEFAULT '0',
  `meta` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `job_details`
--

INSERT INTO `job_details` (`id`, `job_id`, `name_attribute`, `name_attribute_option`, `unit_price`, `meta`, `created_at`, `updated_at`) VALUES
(1, 1, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(2, 1, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(3, 1, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(4, 1, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(5, 1, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(6, 1, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(7, 1, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(8, 1, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(9, 2, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(10, 2, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(11, 2, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(12, 2, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(13, 2, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(14, 2, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(15, 2, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(16, 2, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(17, 3, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-14 11:13:39', '2023-06-14 11:13:39'),
(18, 3, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-14 11:13:39', '2023-06-14 11:13:39'),
(19, 3, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-14 11:13:39', '2023-06-14 11:13:39'),
(20, 3, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-14 11:13:39', '2023-06-14 11:13:39'),
(21, 3, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-14 11:13:39', '2023-06-14 11:13:39'),
(22, 3, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-14 11:13:39', '2023-06-14 11:13:39'),
(23, 3, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-14 11:13:39', '2023-06-14 11:13:39'),
(24, 3, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-14 11:13:39', '2023-06-14 11:13:39'),
(25, 4, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-14 11:26:37', '2023-06-14 11:26:37'),
(26, 4, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-14 11:26:37', '2023-06-14 11:26:37'),
(27, 4, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-14 11:26:37', '2023-06-14 11:26:37'),
(28, 4, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-14 11:26:37', '2023-06-14 11:26:37'),
(29, 4, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-14 11:26:37', '2023-06-14 11:26:37'),
(30, 4, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-14 11:26:37', '2023-06-14 11:26:37'),
(31, 4, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-14 11:26:37', '2023-06-14 11:26:37'),
(32, 4, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-14 11:26:37', '2023-06-14 11:26:37'),
(33, 5, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(34, 5, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(35, 5, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(36, 5, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(37, 5, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, NULL, NULL),
(38, 5, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(39, 5, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(40, 5, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(41, 6, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(42, 6, 'Hình thức giao nhận', 'Nhận hàng', 6000, NULL, NULL, NULL),
(43, 6, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(44, 6, 'Thanh toán', 'Người đặt hộ thanh toán', 2000, NULL, NULL, NULL),
(45, 6, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(46, 6, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(47, 6, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(48, 6, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(49, 7, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(50, 7, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(51, 7, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(52, 7, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(53, 7, 'Hình thức đánh giá', 'Chỉ đánh giá 5 sao', 100, NULL, NULL, NULL),
(54, 7, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(55, 7, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(56, 7, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, NULL, NULL),
(57, 8, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-14 13:15:14', '2023-06-14 13:15:14'),
(58, 8, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-14 13:15:14', '2023-06-14 13:15:14'),
(59, 8, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-14 13:15:14', '2023-06-14 13:15:14'),
(60, 8, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-14 13:15:14', '2023-06-14 13:15:14'),
(61, 8, 'Hình thức đánh giá', 'Chỉ đánh giá 5 sao', 100, NULL, '2023-06-14 13:15:14', '2023-06-14 13:15:14'),
(62, 8, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-14 13:15:14', '2023-06-14 13:15:14'),
(63, 8, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-14 13:15:14', '2023-06-14 13:15:14'),
(64, 8, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, '2023-06-14 13:15:14', '2023-06-14 13:15:14'),
(73, 10, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(74, 10, 'Hình thức giao nhận', 'Nhận hàng', 6000, NULL, NULL, NULL),
(75, 10, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(76, 10, 'Thanh toán', 'Shopeepay', 2000, NULL, NULL, NULL),
(77, 10, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(78, 10, 'Yêu cầu tài khoản đặt', 'Tài khoản bạc', 800, '{\"attribute_type_button\":{\"bg_color\":\"#b0b0b0\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(79, 10, 'Áp mã', 'Áp mã freeship', 5000, NULL, NULL, NULL),
(80, 10, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(81, 11, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(82, 11, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(83, 11, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(84, 11, 'Thanh toán', 'Người đặt hộ thanh toán', 2000, NULL, NULL, NULL),
(85, 11, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(86, 11, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(87, 11, 'Áp mã', 'Áp mã freeship', 5000, NULL, NULL, NULL),
(88, 11, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, NULL, NULL),
(97, 13, 'Chọn sàn', 'Đơn Lazada', 2500, '{\"attribute_type_button\":{\"bg_color\":\"#0e146a\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(98, 13, 'Hình thức giao nhận', 'Nhận hàng', 6000, NULL, NULL, NULL),
(99, 13, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(100, 13, 'Thanh toán', 'Người đặt hộ thanh toán', 2000, NULL, NULL, NULL),
(101, 13, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(102, 13, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(103, 13, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(104, 13, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, NULL, NULL),
(105, 14, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(106, 14, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(107, 14, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(108, 14, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(109, 14, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(110, 14, 'Yêu cầu tài khoản đặt', 'Tài khoản vàng', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#e2e600\",\"text_color\":\"#000000\"}}', NULL, NULL),
(111, 14, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(112, 14, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(113, 15, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(114, 15, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(115, 15, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(116, 15, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(117, 15, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(118, 15, 'Yêu cầu tài khoản đặt', 'Tài khoản bạc', 800, '{\"attribute_type_button\":{\"bg_color\":\"#b0b0b0\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(119, 15, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(120, 15, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(121, 16, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(122, 16, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(123, 16, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(124, 16, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(125, 16, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(126, 16, 'Yêu cầu tài khoản đặt', 'Tài khoản vàng', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#e2e600\",\"text_color\":\"#000000\"}}', NULL, NULL),
(127, 16, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(128, 16, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(129, 17, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-15 04:21:58', '2023-06-15 04:21:58'),
(130, 17, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-15 04:21:58', '2023-06-15 04:21:58'),
(131, 17, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-15 04:21:58', '2023-06-15 04:21:58'),
(132, 17, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-15 04:21:58', '2023-06-15 04:21:58'),
(133, 17, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-15 04:21:58', '2023-06-15 04:21:58'),
(134, 17, 'Yêu cầu tài khoản đặt', 'Tài khoản vàng', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#e2e600\",\"text_color\":\"#000000\"}}', '2023-06-15 04:21:58', '2023-06-15 04:21:58'),
(135, 17, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-15 04:21:58', '2023-06-15 04:21:58'),
(136, 17, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-15 04:21:58', '2023-06-15 04:21:58'),
(137, 18, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-15 04:22:01', '2023-06-15 04:22:01'),
(138, 18, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-15 04:22:01', '2023-06-15 04:22:01'),
(139, 18, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-15 04:22:01', '2023-06-15 04:22:01'),
(140, 18, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-15 04:22:01', '2023-06-15 04:22:01'),
(141, 18, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-15 04:22:01', '2023-06-15 04:22:01'),
(142, 18, 'Yêu cầu tài khoản đặt', 'Tài khoản vàng', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#e2e600\",\"text_color\":\"#000000\"}}', '2023-06-15 04:22:01', '2023-06-15 04:22:01'),
(143, 18, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-15 04:22:01', '2023-06-15 04:22:01'),
(144, 18, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-15 04:22:01', '2023-06-15 04:22:01'),
(145, 19, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-15 04:22:04', '2023-06-15 04:22:04'),
(146, 19, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-15 04:22:04', '2023-06-15 04:22:04'),
(147, 19, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-15 04:22:04', '2023-06-15 04:22:04'),
(148, 19, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-15 04:22:04', '2023-06-15 04:22:04'),
(149, 19, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-15 04:22:04', '2023-06-15 04:22:04'),
(150, 19, 'Yêu cầu tài khoản đặt', 'Tài khoản vàng', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#e2e600\",\"text_color\":\"#000000\"}}', '2023-06-15 04:22:04', '2023-06-15 04:22:04'),
(151, 19, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-15 04:22:04', '2023-06-15 04:22:04'),
(152, 19, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-15 04:22:04', '2023-06-15 04:22:04'),
(153, 20, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(154, 20, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(155, 20, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(156, 20, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(157, 20, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(158, 20, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(159, 20, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(160, 20, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(161, 21, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-15 06:25:09', '2023-06-15 06:25:09'),
(162, 21, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-15 06:25:09', '2023-06-15 06:25:09'),
(163, 21, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-15 06:25:09', '2023-06-15 06:25:09'),
(164, 21, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-15 06:25:09', '2023-06-15 06:25:09'),
(165, 21, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-15 06:25:09', '2023-06-15 06:25:09'),
(166, 21, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-15 06:25:09', '2023-06-15 06:25:09'),
(167, 21, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-15 06:25:09', '2023-06-15 06:25:09'),
(168, 21, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-15 06:25:09', '2023-06-15 06:25:09'),
(169, 22, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-15 06:25:12', '2023-06-15 06:25:12'),
(170, 22, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-15 06:25:12', '2023-06-15 06:25:12'),
(171, 22, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-15 06:25:12', '2023-06-15 06:25:12'),
(172, 22, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-15 06:25:12', '2023-06-15 06:25:12'),
(173, 22, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-15 06:25:12', '2023-06-15 06:25:12'),
(174, 22, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-15 06:25:12', '2023-06-15 06:25:12'),
(175, 22, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-15 06:25:12', '2023-06-15 06:25:12'),
(176, 22, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-15 06:25:12', '2023-06-15 06:25:12'),
(177, 23, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-15 06:25:18', '2023-06-15 06:25:18'),
(178, 23, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-15 06:25:18', '2023-06-15 06:25:18'),
(179, 23, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-15 06:25:18', '2023-06-15 06:25:18'),
(180, 23, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-15 06:25:18', '2023-06-15 06:25:18'),
(181, 23, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-15 06:25:18', '2023-06-15 06:25:18'),
(182, 23, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-15 06:25:18', '2023-06-15 06:25:18'),
(183, 23, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-15 06:25:18', '2023-06-15 06:25:18'),
(184, 23, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-15 06:25:18', '2023-06-15 06:25:18'),
(185, 24, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(186, 24, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(187, 24, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(188, 24, 'Thanh toán', 'Người đặt hộ thanh toán', 2000, NULL, NULL, NULL),
(189, 24, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(190, 24, 'Yêu cầu tài khoản đặt', 'Tài khoản vàng', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#e2e600\",\"text_color\":\"#000000\"}}', NULL, NULL),
(191, 24, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(192, 24, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(193, 25, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(194, 25, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(195, 25, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(196, 25, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(197, 25, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(198, 25, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(199, 25, 'Áp mã', 'Áp mã sàn', 8000, NULL, NULL, NULL),
(200, 25, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(201, 26, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(202, 26, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(203, 26, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(204, 26, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(205, 26, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(206, 26, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(207, 26, 'Áp mã', 'Áp mã sàn', 8000, NULL, NULL, NULL),
(208, 26, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(209, 27, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(210, 27, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(211, 27, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(212, 27, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(213, 27, 'Hình thức đánh giá', 'Chỉ đánh giá 5 sao', 100, NULL, NULL, NULL),
(214, 27, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(215, 27, 'Áp mã', 'Áp mã sàn', 800, NULL, NULL, NULL),
(216, 27, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(217, 28, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-15 09:05:52', '2023-06-15 09:05:52'),
(218, 28, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-15 09:05:52', '2023-06-15 09:05:52'),
(219, 28, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-15 09:05:52', '2023-06-15 09:05:52'),
(220, 28, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-15 09:05:52', '2023-06-15 09:05:52'),
(221, 28, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-15 09:05:52', '2023-06-15 09:05:52'),
(222, 28, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-15 09:05:52', '2023-06-15 09:05:52'),
(223, 28, 'Áp mã', 'Áp mã sàn', 8000, NULL, '2023-06-15 09:05:52', '2023-06-15 09:05:52'),
(224, 28, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-15 09:05:52', '2023-06-15 09:05:52'),
(225, 29, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(226, 29, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(227, 29, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(228, 29, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(229, 29, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, NULL, NULL),
(230, 29, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(231, 29, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(232, 29, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(233, 30, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-15 23:14:10', '2023-06-15 23:14:10'),
(234, 30, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-15 23:14:10', '2023-06-15 23:14:10'),
(235, 30, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-15 23:14:10', '2023-06-15 23:14:10'),
(236, 30, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-15 23:14:10', '2023-06-15 23:14:10'),
(237, 30, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-15 23:14:10', '2023-06-15 23:14:10'),
(238, 30, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-15 23:14:10', '2023-06-15 23:14:10'),
(239, 30, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-15 23:14:10', '2023-06-15 23:14:10'),
(240, 30, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-15 23:14:10', '2023-06-15 23:14:10'),
(241, 31, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-15 23:14:14', '2023-06-15 23:14:14'),
(242, 31, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-15 23:14:14', '2023-06-15 23:14:14'),
(243, 31, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-15 23:14:14', '2023-06-15 23:14:14'),
(244, 31, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-15 23:14:14', '2023-06-15 23:14:14'),
(245, 31, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-15 23:14:14', '2023-06-15 23:14:14'),
(246, 31, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-15 23:14:14', '2023-06-15 23:14:14'),
(247, 31, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-15 23:14:14', '2023-06-15 23:14:14'),
(248, 31, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-15 23:14:14', '2023-06-15 23:14:14'),
(249, 32, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-15 23:14:16', '2023-06-15 23:14:16'),
(250, 32, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-15 23:14:16', '2023-06-15 23:14:16'),
(251, 32, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-15 23:14:16', '2023-06-15 23:14:16'),
(252, 32, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-15 23:14:16', '2023-06-15 23:14:16'),
(253, 32, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-15 23:14:16', '2023-06-15 23:14:16'),
(254, 32, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-15 23:14:16', '2023-06-15 23:14:16'),
(255, 32, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-15 23:14:16', '2023-06-15 23:14:16'),
(256, 32, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-15 23:14:16', '2023-06-15 23:14:16'),
(257, 33, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-15 23:14:19', '2023-06-15 23:14:19'),
(258, 33, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-15 23:14:19', '2023-06-15 23:14:19'),
(259, 33, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-15 23:14:19', '2023-06-15 23:14:19'),
(260, 33, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-15 23:14:19', '2023-06-15 23:14:19'),
(261, 33, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-15 23:14:19', '2023-06-15 23:14:19'),
(262, 33, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-15 23:14:19', '2023-06-15 23:14:19'),
(263, 33, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-15 23:14:19', '2023-06-15 23:14:19'),
(264, 33, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-15 23:14:19', '2023-06-15 23:14:19'),
(265, 34, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(266, 34, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(267, 34, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(268, 34, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(269, 34, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(270, 34, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(271, 34, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(272, 34, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(273, 35, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(274, 35, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(275, 35, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(276, 35, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(277, 35, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(278, 35, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(279, 35, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(280, 35, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, NULL, NULL),
(281, 36, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-16 07:05:11', '2023-06-16 07:05:11'),
(282, 36, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-16 07:05:11', '2023-06-16 07:05:11'),
(283, 36, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-16 07:05:11', '2023-06-16 07:05:11'),
(284, 36, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-16 07:05:11', '2023-06-16 07:05:11'),
(285, 36, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-16 07:05:11', '2023-06-16 07:05:11'),
(286, 36, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-16 07:05:11', '2023-06-16 07:05:11'),
(287, 36, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-16 07:05:11', '2023-06-16 07:05:11'),
(288, 36, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, '2023-06-16 07:05:11', '2023-06-16 07:05:11'),
(289, 37, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-16 07:05:15', '2023-06-16 07:05:15'),
(290, 37, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-16 07:05:15', '2023-06-16 07:05:15'),
(291, 37, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-16 07:05:15', '2023-06-16 07:05:15'),
(292, 37, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-16 07:05:15', '2023-06-16 07:05:15'),
(293, 37, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-16 07:05:15', '2023-06-16 07:05:15'),
(294, 37, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-16 07:05:15', '2023-06-16 07:05:15'),
(295, 37, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-16 07:05:15', '2023-06-16 07:05:15'),
(296, 37, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, '2023-06-16 07:05:15', '2023-06-16 07:05:15'),
(297, 38, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-16 07:05:19', '2023-06-16 07:05:19'),
(298, 38, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-16 07:05:19', '2023-06-16 07:05:19'),
(299, 38, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-16 07:05:19', '2023-06-16 07:05:19'),
(300, 38, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-16 07:05:19', '2023-06-16 07:05:19'),
(301, 38, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-16 07:05:19', '2023-06-16 07:05:19'),
(302, 38, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-16 07:05:19', '2023-06-16 07:05:19'),
(303, 38, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-16 07:05:19', '2023-06-16 07:05:19'),
(304, 38, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, '2023-06-16 07:05:19', '2023-06-16 07:05:19'),
(305, 39, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(306, 39, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(307, 39, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(308, 39, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(309, 39, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(310, 39, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(311, 39, 'Áp mã', 'Áp mã freeship', 5000, NULL, NULL, NULL),
(312, 39, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, NULL, NULL),
(313, 40, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-16 12:44:15', '2023-06-16 12:44:15'),
(314, 40, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-16 12:44:15', '2023-06-16 12:44:15'),
(315, 40, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-16 12:44:15', '2023-06-16 12:44:15'),
(316, 40, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-16 12:44:15', '2023-06-16 12:44:15'),
(317, 40, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-16 12:44:15', '2023-06-16 12:44:15'),
(318, 40, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-16 12:44:15', '2023-06-16 12:44:15'),
(319, 40, 'Áp mã', 'Áp mã freeship', 5000, NULL, '2023-06-16 12:44:15', '2023-06-16 12:44:15'),
(320, 40, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, '2023-06-16 12:44:15', '2023-06-16 12:44:15'),
(321, 41, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-16 12:44:20', '2023-06-16 12:44:20'),
(322, 41, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-16 12:44:20', '2023-06-16 12:44:20'),
(323, 41, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-16 12:44:20', '2023-06-16 12:44:20'),
(324, 41, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-16 12:44:20', '2023-06-16 12:44:20'),
(325, 41, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-16 12:44:20', '2023-06-16 12:44:20'),
(326, 41, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-16 12:44:20', '2023-06-16 12:44:20'),
(327, 41, 'Áp mã', 'Áp mã freeship', 5000, NULL, '2023-06-16 12:44:20', '2023-06-16 12:44:20'),
(328, 41, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, '2023-06-16 12:44:20', '2023-06-16 12:44:20'),
(329, 42, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(330, 42, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(331, 42, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(332, 42, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(333, 42, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(334, 42, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(335, 42, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(336, 42, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, NULL, NULL),
(337, 43, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(338, 43, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(339, 43, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(340, 43, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(341, 43, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(342, 43, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(343, 43, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(344, 43, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(345, 44, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-17 10:14:52', '2023-06-17 10:14:52'),
(346, 44, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-17 10:14:52', '2023-06-17 10:14:52'),
(347, 44, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-17 10:14:52', '2023-06-17 10:14:52'),
(348, 44, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-17 10:14:52', '2023-06-17 10:14:52'),
(349, 44, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-17 10:14:52', '2023-06-17 10:14:52'),
(350, 44, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-17 10:14:52', '2023-06-17 10:14:52'),
(351, 44, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-17 10:14:52', '2023-06-17 10:14:52'),
(352, 44, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-17 10:14:52', '2023-06-17 10:14:52'),
(353, 45, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-17 10:14:56', '2023-06-17 10:14:56'),
(354, 45, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-17 10:14:56', '2023-06-17 10:14:56'),
(355, 45, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-17 10:14:56', '2023-06-17 10:14:56'),
(356, 45, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-17 10:14:56', '2023-06-17 10:14:56'),
(357, 45, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-17 10:14:56', '2023-06-17 10:14:56'),
(358, 45, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-17 10:14:56', '2023-06-17 10:14:56'),
(359, 45, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-17 10:14:56', '2023-06-17 10:14:56'),
(360, 45, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-17 10:14:56', '2023-06-17 10:14:56'),
(361, 46, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-17 10:15:08', '2023-06-17 10:15:08'),
(362, 46, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-17 10:15:08', '2023-06-17 10:15:08'),
(363, 46, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-17 10:15:08', '2023-06-17 10:15:08'),
(364, 46, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-17 10:15:08', '2023-06-17 10:15:08'),
(365, 46, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-17 10:15:08', '2023-06-17 10:15:08'),
(366, 46, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-17 10:15:08', '2023-06-17 10:15:08'),
(367, 46, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-17 10:15:08', '2023-06-17 10:15:08'),
(368, 46, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-17 10:15:08', '2023-06-17 10:15:08'),
(369, 47, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-17 10:15:10', '2023-06-17 10:15:10'),
(370, 47, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-17 10:15:10', '2023-06-17 10:15:10'),
(371, 47, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-17 10:15:10', '2023-06-17 10:15:10'),
(372, 47, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-17 10:15:10', '2023-06-17 10:15:10'),
(373, 47, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-17 10:15:10', '2023-06-17 10:15:10'),
(374, 47, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-17 10:15:10', '2023-06-17 10:15:10'),
(375, 47, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-17 10:15:10', '2023-06-17 10:15:10'),
(376, 47, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-17 10:15:10', '2023-06-17 10:15:10'),
(377, 48, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-17 22:47:11', '2023-06-17 22:47:11'),
(378, 48, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-17 22:47:11', '2023-06-17 22:47:11'),
(379, 48, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-17 22:47:11', '2023-06-17 22:47:11'),
(380, 48, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-17 22:47:11', '2023-06-17 22:47:11'),
(381, 48, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-17 22:47:11', '2023-06-17 22:47:11'),
(382, 48, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-17 22:47:11', '2023-06-17 22:47:11'),
(383, 48, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-17 22:47:11', '2023-06-17 22:47:11'),
(384, 48, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-17 22:47:11', '2023-06-17 22:47:11'),
(385, 49, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-17 22:47:14', '2023-06-17 22:47:14'),
(386, 49, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-17 22:47:14', '2023-06-17 22:47:14'),
(387, 49, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-17 22:47:14', '2023-06-17 22:47:14'),
(388, 49, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-17 22:47:14', '2023-06-17 22:47:14'),
(389, 49, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-17 22:47:14', '2023-06-17 22:47:14'),
(390, 49, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-17 22:47:14', '2023-06-17 22:47:14'),
(391, 49, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-17 22:47:14', '2023-06-17 22:47:14'),
(392, 49, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-17 22:47:14', '2023-06-17 22:47:14'),
(393, 50, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-17 22:47:18', '2023-06-17 22:47:18'),
(394, 50, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-17 22:47:18', '2023-06-17 22:47:18'),
(395, 50, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-17 22:47:18', '2023-06-17 22:47:18'),
(396, 50, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-17 22:47:18', '2023-06-17 22:47:18'),
(397, 50, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-17 22:47:18', '2023-06-17 22:47:18'),
(398, 50, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-17 22:47:18', '2023-06-17 22:47:18'),
(399, 50, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-17 22:47:18', '2023-06-17 22:47:18'),
(400, 50, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-17 22:47:18', '2023-06-17 22:47:18'),
(401, 51, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-17 22:47:21', '2023-06-17 22:47:21'),
(402, 51, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-17 22:47:21', '2023-06-17 22:47:21'),
(403, 51, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-17 22:47:21', '2023-06-17 22:47:21'),
(404, 51, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-17 22:47:21', '2023-06-17 22:47:21'),
(405, 51, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-17 22:47:21', '2023-06-17 22:47:21'),
(406, 51, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-17 22:47:21', '2023-06-17 22:47:21'),
(407, 51, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-17 22:47:21', '2023-06-17 22:47:21'),
(408, 51, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-17 22:47:21', '2023-06-17 22:47:21'),
(409, 52, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-17 22:47:24', '2023-06-17 22:47:24'),
(410, 52, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-17 22:47:24', '2023-06-17 22:47:24'),
(411, 52, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-17 22:47:24', '2023-06-17 22:47:24'),
(412, 52, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-17 22:47:24', '2023-06-17 22:47:24'),
(413, 52, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-17 22:47:24', '2023-06-17 22:47:24'),
(414, 52, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-17 22:47:24', '2023-06-17 22:47:24'),
(415, 52, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-17 22:47:24', '2023-06-17 22:47:24'),
(416, 52, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-17 22:47:24', '2023-06-17 22:47:24'),
(417, 53, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(418, 53, 'Hình thức giao nhận', 'Nhận hàng', 6000, NULL, NULL, NULL),
(419, 53, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(420, 53, 'Thanh toán', 'Shopeepay', 2000, NULL, NULL, NULL),
(421, 53, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(422, 53, 'Yêu cầu tài khoản đặt', 'Tài khoản vàng', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#e2e600\",\"text_color\":\"#000000\"}}', NULL, NULL),
(423, 53, 'Áp mã', 'Áp mã freeship', 5000, NULL, NULL, NULL),
(424, 53, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(425, 54, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-18 07:50:55', '2023-06-18 07:50:55'),
(426, 54, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-18 07:50:55', '2023-06-18 07:50:55'),
(427, 54, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-18 07:50:55', '2023-06-18 07:50:55'),
(428, 54, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-18 07:50:55', '2023-06-18 07:50:55'),
(429, 54, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-18 07:50:55', '2023-06-18 07:50:55'),
(430, 54, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-18 07:50:55', '2023-06-18 07:50:55'),
(431, 54, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-18 07:50:55', '2023-06-18 07:50:55'),
(432, 54, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-18 07:50:55', '2023-06-18 07:50:55'),
(433, 55, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(434, 55, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(435, 55, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(436, 55, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(437, 55, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(438, 55, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(439, 55, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(440, 55, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(441, 56, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(442, 56, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(443, 56, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(444, 56, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(445, 56, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(446, 56, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(447, 56, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(448, 56, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(449, 57, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(450, 57, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(451, 57, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(452, 57, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(453, 57, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL);
INSERT INTO `job_details` (`id`, `job_id`, `name_attribute`, `name_attribute_option`, `unit_price`, `meta`, `created_at`, `updated_at`) VALUES
(454, 57, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(455, 57, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(456, 57, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(457, 58, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(458, 58, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(459, 58, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(460, 58, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(461, 58, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(462, 58, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(463, 58, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(464, 58, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(465, 59, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(466, 59, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(467, 59, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(468, 59, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(469, 59, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(470, 59, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(471, 59, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(472, 59, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(473, 60, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(474, 60, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(475, 60, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(476, 60, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(477, 60, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(478, 60, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(479, 60, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(480, 60, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(481, 61, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(482, 61, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(483, 61, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(484, 61, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(485, 61, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(486, 61, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(487, 61, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(488, 61, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(489, 62, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(490, 62, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(491, 62, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(492, 62, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(493, 62, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(494, 62, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(495, 62, 'Áp mã', 'Áp mã freeship', 5000, NULL, NULL, NULL),
(496, 62, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, NULL, NULL),
(497, 63, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-18 15:21:47', '2023-06-18 15:21:47'),
(498, 63, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-18 15:21:47', '2023-06-18 15:21:47'),
(499, 63, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-18 15:21:47', '2023-06-18 15:21:47'),
(500, 63, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-18 15:21:47', '2023-06-18 15:21:47'),
(501, 63, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-18 15:21:47', '2023-06-18 15:21:47'),
(502, 63, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-18 15:21:47', '2023-06-18 15:21:47'),
(503, 63, 'Áp mã', 'Áp mã freeship', 5000, NULL, '2023-06-18 15:21:47', '2023-06-18 15:21:47'),
(504, 63, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, '2023-06-18 15:21:47', '2023-06-18 15:21:47'),
(505, 64, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-18 15:21:50', '2023-06-18 15:21:50'),
(506, 64, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-18 15:21:50', '2023-06-18 15:21:50'),
(507, 64, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-18 15:21:50', '2023-06-18 15:21:50'),
(508, 64, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-18 15:21:50', '2023-06-18 15:21:50'),
(509, 64, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-18 15:21:50', '2023-06-18 15:21:50'),
(510, 64, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-18 15:21:50', '2023-06-18 15:21:50'),
(511, 64, 'Áp mã', 'Áp mã freeship', 5000, NULL, '2023-06-18 15:21:50', '2023-06-18 15:21:50'),
(512, 64, 'Khu vực lên đơn', 'Hà Nội', 1000, NULL, '2023-06-18 15:21:50', '2023-06-18 15:21:50'),
(513, 65, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(514, 65, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(515, 65, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(516, 65, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(517, 65, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, NULL, NULL),
(518, 65, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(519, 65, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(520, 65, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(521, 66, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-18 23:25:08', '2023-06-18 23:25:08'),
(522, 66, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-18 23:25:08', '2023-06-18 23:25:08'),
(523, 66, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-18 23:25:08', '2023-06-18 23:25:08'),
(524, 66, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-18 23:25:08', '2023-06-18 23:25:08'),
(525, 66, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, '2023-06-18 23:25:08', '2023-06-18 23:25:08'),
(526, 66, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-18 23:25:08', '2023-06-18 23:25:08'),
(527, 66, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-18 23:25:08', '2023-06-18 23:25:08'),
(528, 66, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-18 23:25:08', '2023-06-18 23:25:08'),
(529, 67, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-18 23:25:16', '2023-06-18 23:25:16'),
(530, 67, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-18 23:25:16', '2023-06-18 23:25:16'),
(531, 67, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-18 23:25:16', '2023-06-18 23:25:16'),
(532, 67, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-18 23:25:16', '2023-06-18 23:25:16'),
(533, 67, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, '2023-06-18 23:25:16', '2023-06-18 23:25:16'),
(534, 67, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-18 23:25:16', '2023-06-18 23:25:16'),
(535, 67, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-18 23:25:16', '2023-06-18 23:25:16'),
(536, 67, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-18 23:25:16', '2023-06-18 23:25:16'),
(537, 68, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-18 23:25:20', '2023-06-18 23:25:20'),
(538, 68, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-18 23:25:20', '2023-06-18 23:25:20'),
(539, 68, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-18 23:25:20', '2023-06-18 23:25:20'),
(540, 68, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-18 23:25:20', '2023-06-18 23:25:20'),
(541, 68, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, '2023-06-18 23:25:20', '2023-06-18 23:25:20'),
(542, 68, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-18 23:25:20', '2023-06-18 23:25:20'),
(543, 68, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-18 23:25:20', '2023-06-18 23:25:20'),
(544, 68, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-18 23:25:20', '2023-06-18 23:25:20'),
(545, 69, 'Chọn sàn', 'Đơn Lazada', 2500, '{\"attribute_type_button\":{\"bg_color\":\"#0e146a\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(546, 69, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(547, 69, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(548, 69, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(549, 69, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(550, 69, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(551, 69, 'Áp mã', 'Áp mã freeship', 5000, NULL, NULL, NULL),
(552, 69, 'Khu vực lên đơn', 'Tỉnh lẻ', 200, NULL, NULL, NULL),
(553, 70, 'Chọn sàn', 'Đơn Lazada', 2500, '{\"attribute_type_button\":{\"bg_color\":\"#0e146a\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(554, 70, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(555, 70, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(556, 70, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(557, 70, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(558, 70, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(559, 70, 'Áp mã', 'Áp mã freeship', 5000, NULL, NULL, NULL),
(560, 70, 'Khu vực lên đơn', 'Tỉnh lẻ', 200, NULL, NULL, NULL),
(561, 71, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(562, 71, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(563, 71, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(564, 71, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(565, 71, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, NULL, NULL),
(566, 71, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(567, 71, 'Áp mã', 'Áp mã freeship', 5000, NULL, NULL, NULL),
(568, 71, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(569, 72, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-20 14:03:52', '2023-06-20 14:03:52'),
(570, 72, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-20 14:03:52', '2023-06-20 14:03:52'),
(571, 72, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-20 14:03:52', '2023-06-20 14:03:52'),
(572, 72, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-20 14:03:52', '2023-06-20 14:03:52'),
(573, 72, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, '2023-06-20 14:03:52', '2023-06-20 14:03:52'),
(574, 72, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-20 14:03:52', '2023-06-20 14:03:52'),
(575, 72, 'Áp mã', 'Áp mã freeship', 5000, NULL, '2023-06-20 14:03:52', '2023-06-20 14:03:52'),
(576, 72, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-20 14:03:52', '2023-06-20 14:03:52'),
(577, 73, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(578, 73, 'Hình thức giao nhận', 'Nhận hàng', 6000, NULL, NULL, NULL),
(579, 73, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(580, 73, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(581, 73, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(582, 73, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(583, 73, 'Áp mã', 'Áp mã freeship', 5000, NULL, NULL, NULL),
(584, 73, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(585, 74, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-21 06:45:31', '2023-06-21 06:45:31'),
(586, 74, 'Hình thức giao nhận', 'Nhận hàng', 6000, NULL, '2023-06-21 06:45:31', '2023-06-21 06:45:31'),
(587, 74, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-21 06:45:31', '2023-06-21 06:45:31'),
(588, 74, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-21 06:45:31', '2023-06-21 06:45:31'),
(589, 74, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-21 06:45:31', '2023-06-21 06:45:31'),
(590, 74, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-21 06:45:31', '2023-06-21 06:45:31'),
(591, 74, 'Áp mã', 'Áp mã freeship', 5000, NULL, '2023-06-21 06:45:31', '2023-06-21 06:45:31'),
(592, 74, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-21 06:45:31', '2023-06-21 06:45:31'),
(593, 75, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-21 06:45:33', '2023-06-21 06:45:33'),
(594, 75, 'Hình thức giao nhận', 'Nhận hàng', 6000, NULL, '2023-06-21 06:45:33', '2023-06-21 06:45:33'),
(595, 75, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-21 06:45:33', '2023-06-21 06:45:33'),
(596, 75, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-21 06:45:33', '2023-06-21 06:45:33'),
(597, 75, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-21 06:45:33', '2023-06-21 06:45:33'),
(598, 75, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-21 06:45:33', '2023-06-21 06:45:33'),
(599, 75, 'Áp mã', 'Áp mã freeship', 5000, NULL, '2023-06-21 06:45:33', '2023-06-21 06:45:33'),
(600, 75, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-21 06:45:33', '2023-06-21 06:45:33'),
(601, 76, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(602, 76, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(603, 76, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(604, 76, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(605, 76, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(606, 76, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(607, 76, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(608, 76, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(609, 77, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-22 05:24:03', '2023-06-22 05:24:03'),
(610, 77, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-22 05:24:03', '2023-06-22 05:24:03'),
(611, 77, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', '2023-06-22 05:24:03', '2023-06-22 05:24:03'),
(612, 77, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-22 05:24:03', '2023-06-22 05:24:03'),
(613, 77, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-22 05:24:03', '2023-06-22 05:24:03'),
(614, 77, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-22 05:24:03', '2023-06-22 05:24:03'),
(615, 77, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-22 05:24:03', '2023-06-22 05:24:03'),
(616, 77, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-22 05:24:03', '2023-06-22 05:24:03'),
(617, 78, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(618, 78, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(619, 78, 'Vận chuyển', 'Hoả tốc', 1000, '{\"attribute_type_button\":{\"bg_color\":\"#f95858\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(620, 78, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(621, 78, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(622, 78, 'Yêu cầu tài khoản đặt', 'Tài khoản bạc', 800, '{\"attribute_type_button\":{\"bg_color\":\"#b0b0b0\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(623, 78, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(624, 78, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(625, 79, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(626, 79, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(627, 79, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(628, 79, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(629, 79, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(630, 79, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(631, 79, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(632, 79, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(633, 80, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-24 03:08:37', '2023-06-24 03:08:37'),
(634, 80, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-24 03:08:37', '2023-06-24 03:08:37'),
(635, 80, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-24 03:08:37', '2023-06-24 03:08:37'),
(636, 80, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-24 03:08:37', '2023-06-24 03:08:37'),
(637, 80, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-24 03:08:37', '2023-06-24 03:08:37'),
(638, 80, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-24 03:08:37', '2023-06-24 03:08:37'),
(639, 80, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-24 03:08:37', '2023-06-24 03:08:37'),
(640, 80, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-24 03:08:37', '2023-06-24 03:08:37'),
(641, 81, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(642, 81, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(643, 81, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(644, 81, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(645, 81, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, NULL, NULL),
(646, 81, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(647, 81, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(648, 81, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(649, 82, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-26 07:53:01', '2023-06-26 07:53:01'),
(650, 82, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-26 07:53:01', '2023-06-26 07:53:01'),
(651, 82, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-26 07:53:01', '2023-06-26 07:53:01'),
(652, 82, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-26 07:53:01', '2023-06-26 07:53:01'),
(653, 82, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, '2023-06-26 07:53:01', '2023-06-26 07:53:01'),
(654, 82, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-26 07:53:01', '2023-06-26 07:53:01'),
(655, 82, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-26 07:53:01', '2023-06-26 07:53:01'),
(656, 82, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-26 07:53:01', '2023-06-26 07:53:01'),
(657, 83, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-26 07:53:04', '2023-06-26 07:53:04'),
(658, 83, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-26 07:53:04', '2023-06-26 07:53:04'),
(659, 83, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-26 07:53:04', '2023-06-26 07:53:04'),
(660, 83, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-26 07:53:04', '2023-06-26 07:53:04'),
(661, 83, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, '2023-06-26 07:53:04', '2023-06-26 07:53:04'),
(662, 83, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-26 07:53:04', '2023-06-26 07:53:04'),
(663, 83, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-26 07:53:04', '2023-06-26 07:53:04'),
(664, 83, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-26 07:53:04', '2023-06-26 07:53:04'),
(665, 84, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-26 07:53:07', '2023-06-26 07:53:07'),
(666, 84, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-26 07:53:07', '2023-06-26 07:53:07'),
(667, 84, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-26 07:53:07', '2023-06-26 07:53:07'),
(668, 84, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-26 07:53:07', '2023-06-26 07:53:07'),
(669, 84, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, '2023-06-26 07:53:07', '2023-06-26 07:53:07'),
(670, 84, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-26 07:53:07', '2023-06-26 07:53:07'),
(671, 84, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-26 07:53:07', '2023-06-26 07:53:07'),
(672, 84, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-26 07:53:07', '2023-06-26 07:53:07'),
(673, 85, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-26 07:53:10', '2023-06-26 07:53:10'),
(674, 85, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-26 07:53:10', '2023-06-26 07:53:10'),
(675, 85, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-26 07:53:10', '2023-06-26 07:53:10'),
(676, 85, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-26 07:53:10', '2023-06-26 07:53:10'),
(677, 85, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, '2023-06-26 07:53:10', '2023-06-26 07:53:10'),
(678, 85, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-26 07:53:10', '2023-06-26 07:53:10'),
(679, 85, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-26 07:53:10', '2023-06-26 07:53:10'),
(680, 85, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-26 07:53:10', '2023-06-26 07:53:10'),
(681, 86, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-26 07:53:12', '2023-06-26 07:53:12'),
(682, 86, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-26 07:53:12', '2023-06-26 07:53:12'),
(683, 86, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-26 07:53:12', '2023-06-26 07:53:12'),
(684, 86, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-26 07:53:12', '2023-06-26 07:53:12'),
(685, 86, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, '2023-06-26 07:53:12', '2023-06-26 07:53:12'),
(686, 86, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-26 07:53:12', '2023-06-26 07:53:12'),
(687, 86, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-26 07:53:12', '2023-06-26 07:53:12'),
(688, 86, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-26 07:53:12', '2023-06-26 07:53:12'),
(689, 87, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(690, 87, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(691, 87, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(692, 87, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(693, 87, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, NULL, NULL),
(694, 87, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(695, 87, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(696, 87, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(697, 88, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-26 07:55:34', '2023-06-26 07:55:34'),
(698, 88, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-26 07:55:34', '2023-06-26 07:55:34'),
(699, 88, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-26 07:55:34', '2023-06-26 07:55:34'),
(700, 88, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-26 07:55:34', '2023-06-26 07:55:34'),
(701, 88, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, '2023-06-26 07:55:34', '2023-06-26 07:55:34'),
(702, 88, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-26 07:55:34', '2023-06-26 07:55:34'),
(703, 88, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-26 07:55:34', '2023-06-26 07:55:34'),
(704, 88, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-26 07:55:34', '2023-06-26 07:55:34'),
(705, 89, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-26 07:55:37', '2023-06-26 07:55:37'),
(706, 89, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-26 07:55:37', '2023-06-26 07:55:37'),
(707, 89, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-26 07:55:37', '2023-06-26 07:55:37'),
(708, 89, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-26 07:55:37', '2023-06-26 07:55:37'),
(709, 89, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, '2023-06-26 07:55:37', '2023-06-26 07:55:37'),
(710, 89, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-26 07:55:37', '2023-06-26 07:55:37'),
(711, 89, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-26 07:55:37', '2023-06-26 07:55:37'),
(712, 89, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-26 07:55:37', '2023-06-26 07:55:37'),
(713, 90, 'Chọn sàn', 'Đơn Tiktok', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#000000\",\"text_color\":\"#ffffff\"}}', '2023-06-26 07:55:40', '2023-06-26 07:55:40'),
(714, 90, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-26 07:55:40', '2023-06-26 07:55:40'),
(715, 90, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-26 07:55:40', '2023-06-26 07:55:40'),
(716, 90, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-26 07:55:40', '2023-06-26 07:55:40'),
(717, 90, 'Hình thức đánh giá', 'Tự đánh giá', 500, NULL, '2023-06-26 07:55:40', '2023-06-26 07:55:40'),
(718, 90, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-26 07:55:40', '2023-06-26 07:55:40'),
(719, 90, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-26 07:55:40', '2023-06-26 07:55:40'),
(720, 90, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-26 07:55:40', '2023-06-26 07:55:40'),
(721, 91, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', NULL, NULL),
(722, 91, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, NULL, NULL),
(723, 91, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', NULL, NULL),
(724, 91, 'Thanh toán', 'Shop thanh toán', 1000, NULL, NULL, NULL),
(725, 91, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, NULL, NULL),
(726, 91, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', NULL, NULL),
(727, 91, 'Áp mã', 'Không áp mã', 0, NULL, NULL, NULL),
(728, 91, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, NULL, NULL),
(729, 92, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-29 08:26:58', '2023-06-29 08:26:58'),
(730, 92, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-29 08:26:58', '2023-06-29 08:26:58'),
(731, 92, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-29 08:26:58', '2023-06-29 08:26:58'),
(732, 92, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-29 08:26:58', '2023-06-29 08:26:58'),
(733, 92, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-29 08:26:58', '2023-06-29 08:26:58'),
(734, 92, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-29 08:26:58', '2023-06-29 08:26:58'),
(735, 92, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-29 08:26:58', '2023-06-29 08:26:58'),
(736, 92, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-29 08:26:58', '2023-06-29 08:26:58'),
(737, 93, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-29 08:27:01', '2023-06-29 08:27:01'),
(738, 93, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-29 08:27:01', '2023-06-29 08:27:01'),
(739, 93, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-29 08:27:01', '2023-06-29 08:27:01'),
(740, 93, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-29 08:27:01', '2023-06-29 08:27:01'),
(741, 93, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-29 08:27:01', '2023-06-29 08:27:01'),
(742, 93, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-29 08:27:01', '2023-06-29 08:27:01'),
(743, 93, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-29 08:27:01', '2023-06-29 08:27:01'),
(744, 93, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-29 08:27:01', '2023-06-29 08:27:01'),
(745, 94, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-29 08:27:04', '2023-06-29 08:27:04'),
(746, 94, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-29 08:27:04', '2023-06-29 08:27:04'),
(747, 94, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-29 08:27:04', '2023-06-29 08:27:04'),
(748, 94, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-29 08:27:04', '2023-06-29 08:27:04'),
(749, 94, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-29 08:27:04', '2023-06-29 08:27:04'),
(750, 94, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-29 08:27:04', '2023-06-29 08:27:04'),
(751, 94, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-29 08:27:04', '2023-06-29 08:27:04'),
(752, 94, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-29 08:27:04', '2023-06-29 08:27:04'),
(753, 95, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-29 08:27:07', '2023-06-29 08:27:07'),
(754, 95, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-29 08:27:07', '2023-06-29 08:27:07'),
(755, 95, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-29 08:27:07', '2023-06-29 08:27:07'),
(756, 95, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-29 08:27:07', '2023-06-29 08:27:07'),
(757, 95, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-29 08:27:07', '2023-06-29 08:27:07'),
(758, 95, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-29 08:27:07', '2023-06-29 08:27:07'),
(759, 95, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-29 08:27:07', '2023-06-29 08:27:07'),
(760, 95, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-29 08:27:07', '2023-06-29 08:27:07'),
(761, 96, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-29 08:27:09', '2023-06-29 08:27:09'),
(762, 96, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-29 08:27:09', '2023-06-29 08:27:09'),
(763, 96, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-29 08:27:09', '2023-06-29 08:27:09'),
(764, 96, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-29 08:27:09', '2023-06-29 08:27:09'),
(765, 96, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-29 08:27:09', '2023-06-29 08:27:09'),
(766, 96, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-29 08:27:09', '2023-06-29 08:27:09'),
(767, 96, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-29 08:27:09', '2023-06-29 08:27:09'),
(768, 96, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-29 08:27:09', '2023-06-29 08:27:09'),
(769, 97, 'Chọn sàn', 'Đơn Shopee', 3000, '{\"attribute_type_button\":{\"bg_color\":\"#fe5621\",\"text_color\":\"#ffffff\"}}', '2023-06-29 08:27:11', '2023-06-29 08:27:11'),
(770, 97, 'Hình thức giao nhận', 'Không nhận hàng', 2000, NULL, '2023-06-29 08:27:11', '2023-06-29 08:27:11'),
(771, 97, 'Vận chuyển', 'Đơn giao nhanh', 2000, '{\"attribute_type_button\":{\"bg_color\":\"#45d3bc\",\"text_color\":\"#000000\"}}', '2023-06-29 08:27:11', '2023-06-29 08:27:11'),
(772, 97, 'Thanh toán', 'Shop thanh toán', 1000, NULL, '2023-06-29 08:27:11', '2023-06-29 08:27:11'),
(773, 97, 'Hình thức đánh giá', 'Shop gửi đánh giá', 2000, NULL, '2023-06-29 08:27:11', '2023-06-29 08:27:11'),
(774, 97, 'Yêu cầu tài khoản đặt', 'Tài khoản thường', 500, '{\"attribute_type_button\":{\"bg_color\":\"#ffffff\",\"text_color\":\"#1c1c1c\"}}', '2023-06-29 08:27:11', '2023-06-29 08:27:11'),
(775, 97, 'Áp mã', 'Không áp mã', 0, NULL, '2023-06-29 08:27:11', '2023-06-29 08:27:11'),
(776, 97, 'Khu vực lên đơn', 'Hồ Chí Minh', 1000, NULL, '2023-06-29 08:27:11', '2023-06-29 08:27:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_histories`
--

CREATE TABLE `job_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `job_histories`
--

INSERT INTO `job_histories` (`id`, `job_id`, `status`, `detail`, `desc`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '{\"shop_id\":\"1\",\"is_virtual\":true,\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"J4B4E916DE3EDD\",\"slug\":\"04649a5c-5b2a-4a73-b8df-474a8db36f0e\",\"status\":1,\"updated_at\":\"2023-06-14T11:07:48.000000Z\",\"created_at\":\"2023-06-14T11:07:48.000000Z\",\"id\":1}', NULL, '2023-06-14 11:07:48', '2023-06-14 11:07:48'),
(2, 2, 1, '{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"J8D939EBDACBCB\",\"slug\":\"246cf1ef-0004-4239-becf-c9e9090b68eb\",\"status\":1,\"updated_at\":\"2023-06-14T11:08:42.000000Z\",\"created_at\":\"2023-06-14T11:08:42.000000Z\",\"id\":2}', NULL, '2023-06-14 11:08:42', '2023-06-14 11:08:42'),
(3, 3, 1, '{\"shop_id\":1,\"code\":\"J94CB09C993BEB\",\"name\":null,\"slug\":\"d535964a-5f1f-41da-a337-a543da64c898\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-14T11:13:39.000000Z\",\"created_at\":\"2023-06-14T11:13:39.000000Z\",\"id\":3}', NULL, '2023-06-14 11:13:39', '2023-06-14 11:13:39'),
(4, 4, 1, '{\"shop_id\":1,\"code\":\"J3C9751689230A\",\"name\":null,\"slug\":\"73df6a48-968b-4c0c-b561-43169227b78b\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-14T11:26:37.000000Z\",\"created_at\":\"2023-06-14T11:26:37.000000Z\",\"id\":4}', NULL, '2023-06-14 11:26:37', '2023-06-14 11:26:37'),
(5, 3, 2, '{\"id\":3,\"shop_id\":1,\"worker_id\":3,\"code\":\"J94CB09C993BEB\",\"name\":null,\"slug\":\"d535964a-5f1f-41da-a337-a543da64c898\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14T11:28:22.336756Z\",\"step_at\":\"2023-06-14T11:28:22.337166Z\",\"created_at\":\"2023-06-14T11:13:39.000000Z\",\"updated_at\":\"2023-06-14T11:28:22.000000Z\"}', NULL, '2023-06-14 11:28:22', '2023-06-14 11:28:22'),
(6, 2, 2, '{\"id\":2,\"shop_id\":1,\"worker_id\":4,\"code\":\"J8D939EBDACBCB\",\"name\":null,\"slug\":\"246cf1ef-0004-4239-becf-c9e9090b68eb\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14T11:31:54.846219Z\",\"step_at\":\"2023-06-14T11:31:54.846561Z\",\"created_at\":\"2023-06-14T11:08:42.000000Z\",\"updated_at\":\"2023-06-14T11:31:54.000000Z\"}', NULL, '2023-06-14 11:31:54', '2023-06-14 11:31:54'),
(7, 2, 3, '{\"id\":2,\"shop_id\":1,\"worker_id\":4,\"code\":\"J8D939EBDACBCB\",\"name\":null,\"slug\":\"246cf1ef-0004-4239-becf-c9e9090b68eb\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14 18:31:54\",\"step_at\":\"2023-06-14 18:31:54\",\"created_at\":\"2023-06-14T11:08:42.000000Z\",\"updated_at\":\"2023-06-14T11:36:06.000000Z\"}', '0', '2023-06-14 11:36:06', '2023-06-14 11:36:06'),
(8, 3, 3, '{\"id\":3,\"shop_id\":1,\"worker_id\":3,\"code\":\"J94CB09C993BEB\",\"name\":null,\"slug\":\"d535964a-5f1f-41da-a337-a543da64c898\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14 18:28:22\",\"step_at\":\"2023-06-14 18:28:22\",\"created_at\":\"2023-06-14T11:13:39.000000Z\",\"updated_at\":\"2023-06-14T11:42:09.000000Z\"}', '230614CS9D7H4G', '2023-06-14 11:42:09', '2023-06-14 11:42:09'),
(9, 5, 1, '{\"shop_id\":\"1\",\"money_product\":0,\"money\":9000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"J9D5BD5CB87BFE\",\"slug\":\"8a28052f-5988-445a-b879-6eb26b60fa40\",\"status\":1,\"updated_at\":\"2023-06-14T11:45:21.000000Z\",\"created_at\":\"2023-06-14T11:45:21.000000Z\",\"id\":5}', NULL, '2023-06-14 11:45:21', '2023-06-14 11:45:21'),
(10, 3, 4, '{\"id\":3,\"shop_id\":1,\"worker_id\":3,\"code\":\"J94CB09C993BEB\",\"name\":null,\"slug\":\"d535964a-5f1f-41da-a337-a543da64c898\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14 18:28:22\",\"step_at\":\"2023-06-14 18:28:22\",\"created_at\":\"2023-06-14T11:13:39.000000Z\",\"updated_at\":\"2023-06-14T11:46:34.000000Z\"}', 'oke', '2023-06-14 11:46:34', '2023-06-14 11:46:34'),
(11, 5, 7, '{\"id\":5,\"shop_id\":1,\"worker_id\":null,\"code\":\"J9D5BD5CB87BFE\",\"name\":null,\"slug\":\"8a28052f-5988-445a-b879-6eb26b60fa40\",\"money\":9000,\"money_product\":0,\"money_product_addition\":0,\"status\":7,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"created_at\":\"2023-06-14T11:45:21.000000Z\",\"updated_at\":\"2023-06-14T12:12:30.000000Z\"}', 'Thay lại giao nhanh', '2023-06-14 12:12:30', '2023-06-14 12:12:30'),
(12, 6, 1, '{\"money_product\":0,\"money\":16500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng \\u1ea3o shop g\\u1eedi v\\u1ec1 \\u0111\\u1ecba ch\\u1ec9 th\\u1eadt c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1eb7t<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"J4C0393D873892\",\"slug\":\"9128bb48-9369-40c9-a137-606d5ebd3194\",\"status\":1,\"updated_at\":\"2023-06-14T12:13:13.000000Z\",\"created_at\":\"2023-06-14T12:13:13.000000Z\",\"id\":6}', NULL, '2023-06-14 12:13:13', '2023-06-14 12:13:13'),
(13, 6, 2, '{\"id\":6,\"shop_id\":1,\"worker_id\":5,\"code\":\"J4C0393D873892\",\"name\":null,\"slug\":\"9128bb48-9369-40c9-a137-606d5ebd3194\",\"money\":16500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng \\u1ea3o shop g\\u1eedi v\\u1ec1 \\u0111\\u1ecba ch\\u1ec9 th\\u1eadt c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1eb7t<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14T12:14:54.162338Z\",\"step_at\":\"2023-06-14T12:14:54.162679Z\",\"created_at\":\"2023-06-14T12:13:13.000000Z\",\"updated_at\":\"2023-06-14T12:14:54.000000Z\"}', NULL, '2023-06-14 12:14:54', '2023-06-14 12:14:54'),
(14, 2, 4, '{\"id\":2,\"shop_id\":1,\"worker_id\":4,\"code\":\"J8D939EBDACBCB\",\"name\":null,\"slug\":\"246cf1ef-0004-4239-becf-c9e9090b68eb\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14 18:31:54\",\"step_at\":\"2023-06-14 18:31:54\",\"created_at\":\"2023-06-14T11:08:42.000000Z\",\"updated_at\":\"2023-06-14T12:32:08.000000Z\"}', 'Đã đặt', '2023-06-14 12:32:08', '2023-06-14 12:32:08'),
(15, 3, 5, '{\"id\":3,\"shop_id\":1,\"worker_id\":3,\"code\":\"J94CB09C993BEB\",\"name\":null,\"slug\":\"d535964a-5f1f-41da-a337-a543da64c898\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14 18:28:22\",\"step_at\":\"2023-06-14 18:28:22\",\"created_at\":\"2023-06-14T11:13:39.000000Z\",\"updated_at\":\"2023-06-14T12:34:51.000000Z\"}', NULL, '2023-06-14 12:34:52', '2023-06-14 12:34:52'),
(16, 3, 6, '{\"id\":3,\"shop_id\":1,\"worker_id\":3,\"code\":\"J94CB09C993BEB\",\"name\":null,\"slug\":\"d535964a-5f1f-41da-a337-a543da64c898\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14 18:28:22\",\"step_at\":\"2023-06-14 18:28:22\",\"created_at\":\"2023-06-14T11:13:39.000000Z\",\"updated_at\":\"2023-06-14T12:36:36.000000Z\"}', 'Oke ! Bạn này đặt rất nhanh và hiểu về cách đặt', '2023-06-14 12:36:36', '2023-06-14 12:36:36'),
(17, 2, 5, '{\"id\":2,\"shop_id\":1,\"worker_id\":4,\"code\":\"J8D939EBDACBCB\",\"name\":null,\"slug\":\"246cf1ef-0004-4239-becf-c9e9090b68eb\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14 18:31:54\",\"step_at\":\"2023-06-14 18:31:54\",\"created_at\":\"2023-06-14T11:08:42.000000Z\",\"updated_at\":\"2023-06-14T12:48:37.000000Z\"}', NULL, '2023-06-14 12:48:37', '2023-06-14 12:48:37'),
(18, 2, 6, '{\"id\":2,\"shop_id\":1,\"worker_id\":4,\"code\":\"J8D939EBDACBCB\",\"name\":null,\"slug\":\"246cf1ef-0004-4239-becf-c9e9090b68eb\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14 18:31:54\",\"step_at\":\"2023-06-14 18:31:54\",\"created_at\":\"2023-06-14T11:08:42.000000Z\",\"updated_at\":\"2023-06-14T12:49:45.000000Z\"}', 'đã đánh giá', '2023-06-14 12:49:45', '2023-06-14 12:49:45'),
(19, 7, 1, '{\"shop_id\":\"6\",\"is_virtual\":true,\"money_product\":0,\"money\":9600,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t ch\\u1ec9 c\\u1ea7n nh\\u1ea5n 5 sao cho \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"code\":\"JF0AE4CFAD25A0\",\"slug\":\"7f940540-ee02-4b43-ba88-c6ee8cf712b1\",\"status\":1,\"updated_at\":\"2023-06-14T13:14:27.000000Z\",\"created_at\":\"2023-06-14T13:14:27.000000Z\",\"id\":7}', NULL, '2023-06-14 13:14:27', '2023-06-14 13:14:27'),
(20, 8, 1, '{\"shop_id\":6,\"code\":\"J091B98EAC9ADE\",\"name\":null,\"slug\":\"af129f7c-fe09-4e83-a540-4c9916578960\",\"money\":9600,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t ch\\u1ec9 c\\u1ea7n nh\\u1ea5n 5 sao cho \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-14T13:15:14.000000Z\",\"created_at\":\"2023-06-14T13:15:14.000000Z\",\"id\":8}', NULL, '2023-06-14 13:15:14', '2023-06-14 13:15:14'),
(22, 10, 1, '{\"shop_id\":\"1\",\"is_virtual\":true,\"money_product\":0,\"money\":21800,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng \\u1ea3o shop g\\u1eedi v\\u1ec1 \\u0111\\u1ecba ch\\u1ec9 th\\u1eadt c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1eb7t<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t c\\u1ea7n thanh to\\u00e1n sau \\u0111\\u00f3 h\\u00e3y y\\u00eau c\\u1ea7u ti\\u1ec1n c\\u1ecdc tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- \\u0110\\u1ed1i v\\u1edbi shopee, c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"J8117C595885C1\",\"slug\":\"a81796ec-ea86-4c37-aa58-6e726a84334f\",\"status\":1,\"updated_at\":\"2023-06-14T13:22:10.000000Z\",\"created_at\":\"2023-06-14T13:22:10.000000Z\",\"id\":10}', NULL, '2023-06-14 13:22:10', '2023-06-14 13:22:10'),
(23, 11, 1, '{\"shop_id\":\"6\",\"is_virtual\":true,\"money_product\":0,\"money\":17500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"code\":\"JB4053FFEA609C\",\"slug\":\"0baddf83-5c3f-4b29-876f-638e80e286a7\",\"status\":1,\"updated_at\":\"2023-06-14T13:46:51.000000Z\",\"created_at\":\"2023-06-14T13:46:51.000000Z\",\"id\":11}', NULL, '2023-06-14 13:46:51', '2023-06-14 13:46:51'),
(25, 13, 1, '{\"shop_id\":\"1\",\"is_virtual\":true,\"money_product\":0,\"money\":16000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng \\u1ea3o shop g\\u1eedi v\\u1ec1 \\u0111\\u1ecba ch\\u1ec9 th\\u1eadt c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1eb7t<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"code\":\"J47D008CB39B00\",\"slug\":\"5e400b9b-5005-4155-b233-ab2b5714ca6b\",\"status\":1,\"updated_at\":\"2023-06-14T14:40:59.000000Z\",\"created_at\":\"2023-06-14T14:40:59.000000Z\",\"id\":13}', NULL, '2023-06-14 14:40:59', '2023-06-14 14:40:59'),
(26, 14, 1, '{\"shop_id\":\"1\",\"is_virtual\":true,\"money_product\":0,\"money\":12000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"J280E92619D6AB\",\"slug\":\"609f8812-f567-4a5c-8055-c33ac2abe6c1\",\"status\":1,\"updated_at\":\"2023-06-14T22:53:25.000000Z\",\"created_at\":\"2023-06-14T22:53:25.000000Z\",\"id\":14}', NULL, '2023-06-14 22:53:25', '2023-06-14 22:53:25'),
(27, 15, 1, '{\"shop_id\":\"2\",\"is_virtual\":true,\"money_product\":0,\"money\":10800,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- \\u0110\\u1ed1i v\\u1edbi shopee, c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"J1611DCCA67CE1\",\"slug\":\"7d1c49a3-e93a-4cc9-b49f-e7337b980fad\",\"status\":1,\"updated_at\":\"2023-06-15T02:33:21.000000Z\",\"created_at\":\"2023-06-15T02:33:21.000000Z\",\"id\":15}', NULL, '2023-06-15 02:33:21', '2023-06-15 02:33:21'),
(28, 16, 1, '{\"shop_id\":\"2\",\"is_virtual\":true,\"money_product\":0,\"money\":11000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"J7EA4CF9312D86\",\"slug\":\"2c1e3603-2668-4355-8d18-47a5710e993d\",\"status\":1,\"updated_at\":\"2023-06-15T04:21:54.000000Z\",\"created_at\":\"2023-06-15T04:21:54.000000Z\",\"id\":16}', NULL, '2023-06-15 04:21:54', '2023-06-15 04:21:54'),
(29, 17, 1, '{\"shop_id\":2,\"code\":\"JC3025AE14AFD6\",\"name\":null,\"slug\":\"c1ff3cad-a889-4f58-bb34-f9539e064ca5\",\"money\":11000,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-15T04:21:58.000000Z\",\"created_at\":\"2023-06-15T04:21:58.000000Z\",\"id\":17}', NULL, '2023-06-15 04:21:58', '2023-06-15 04:21:58'),
(30, 18, 1, '{\"shop_id\":2,\"code\":\"JD987CE9CA9AB4\",\"name\":null,\"slug\":\"ea6a0b18-2770-4791-8b6a-bdd5e26e2817\",\"money\":11000,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-15T04:22:01.000000Z\",\"created_at\":\"2023-06-15T04:22:01.000000Z\",\"id\":18}', NULL, '2023-06-15 04:22:01', '2023-06-15 04:22:01'),
(31, 19, 1, '{\"shop_id\":2,\"code\":\"J24C6695CD78D7\",\"name\":null,\"slug\":\"a06b2056-7f83-4d79-b960-bb328ef746a6\",\"money\":11000,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-15T04:22:04.000000Z\",\"created_at\":\"2023-06-15T04:22:04.000000Z\",\"id\":19}', NULL, '2023-06-15 04:22:04', '2023-06-15 04:22:04'),
(32, 20, 1, '{\"shop_id\":\"1\",\"is_virtual\":true,\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"J853DD47D1F36F\",\"slug\":\"b5657033-4115-47d3-92dc-957d3efee82a\",\"status\":1,\"updated_at\":\"2023-06-15T06:25:00.000000Z\",\"created_at\":\"2023-06-15T06:25:00.000000Z\",\"id\":20}', NULL, '2023-06-15 06:25:00', '2023-06-15 06:25:00'),
(33, 21, 1, '{\"shop_id\":1,\"code\":\"J15E415EEE236B\",\"name\":null,\"slug\":\"6abfec8b-98f7-4ec6-a247-75fafac52c0d\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-15T06:25:09.000000Z\",\"created_at\":\"2023-06-15T06:25:09.000000Z\",\"id\":21}', NULL, '2023-06-15 06:25:09', '2023-06-15 06:25:09'),
(34, 22, 1, '{\"shop_id\":1,\"code\":\"J37FEF5FD14E4B\",\"name\":null,\"slug\":\"eb91f0cb-2fbf-492c-b75f-e82747482d6f\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-15T06:25:12.000000Z\",\"created_at\":\"2023-06-15T06:25:12.000000Z\",\"id\":22}', NULL, '2023-06-15 06:25:12', '2023-06-15 06:25:12'),
(35, 23, 1, '{\"shop_id\":1,\"code\":\"J9648870534A30\",\"name\":null,\"slug\":\"e5454d06-84be-4f44-8b96-ac57f4a3eb73\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-15T06:25:18.000000Z\",\"created_at\":\"2023-06-15T06:25:18.000000Z\",\"id\":23}', NULL, '2023-06-15 06:25:18', '2023-06-15 06:25:18'),
(36, 24, 1, '{\"money_product\":0,\"money\":12000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"J997BDCA620FB8\",\"slug\":\"292f6659-614f-4b83-868a-85248bb8fcca\",\"status\":1,\"updated_at\":\"2023-06-15T07:32:27.000000Z\",\"created_at\":\"2023-06-15T07:32:27.000000Z\",\"id\":24}', NULL, '2023-06-15 07:32:27', '2023-06-15 07:32:27'),
(37, 24, 2, '{\"id\":24,\"shop_id\":1,\"worker_id\":14,\"code\":\"J997BDCA620FB8\",\"name\":null,\"slug\":\"292f6659-614f-4b83-868a-85248bb8fcca\",\"money\":12000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15T07:33:30.415681Z\",\"step_at\":\"2023-06-15T07:33:30.416035Z\",\"created_at\":\"2023-06-15T07:32:27.000000Z\",\"updated_at\":\"2023-06-15T07:33:30.000000Z\"}', NULL, '2023-06-15 07:33:30', '2023-06-15 07:33:30'),
(38, 24, 3, '{\"id\":24,\"shop_id\":1,\"worker_id\":14,\"code\":\"J997BDCA620FB8\",\"name\":null,\"slug\":\"292f6659-614f-4b83-868a-85248bb8fcca\",\"money\":12000,\"money_product\":0,\"money_product_addition\":\"96000\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15 14:33:30\",\"step_at\":\"2023-06-15 14:33:30\",\"created_at\":\"2023-06-15T07:32:27.000000Z\",\"updated_at\":\"2023-06-15T07:33:52.000000Z\"}', 'Đã đặt xong ạ', '2023-06-15 07:33:52', '2023-06-15 07:33:52'),
(39, 24, 4, '{\"id\":24,\"shop_id\":1,\"worker_id\":14,\"code\":\"J997BDCA620FB8\",\"name\":null,\"slug\":\"292f6659-614f-4b83-868a-85248bb8fcca\",\"money\":12000,\"money_product\":0,\"money_product_addition\":96000,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15 14:33:30\",\"step_at\":\"2023-06-15 14:33:30\",\"created_at\":\"2023-06-15T07:32:27.000000Z\",\"updated_at\":\"2023-06-15T07:34:35.000000Z\"}', 'Oke', '2023-06-15 07:34:35', '2023-06-15 07:34:35'),
(40, 24, 5, '{\"id\":24,\"shop_id\":1,\"worker_id\":14,\"code\":\"J997BDCA620FB8\",\"name\":null,\"slug\":\"292f6659-614f-4b83-868a-85248bb8fcca\",\"money\":12000,\"money_product\":0,\"money_product_addition\":96000,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15 14:33:30\",\"step_at\":\"2023-06-15 14:33:30\",\"created_at\":\"2023-06-15T07:32:27.000000Z\",\"updated_at\":\"2023-06-15T07:37:36.000000Z\"}', 'đã đánh giá', '2023-06-15 07:37:36', '2023-06-15 07:37:36'),
(41, 24, 6, '{\"id\":24,\"shop_id\":1,\"worker_id\":14,\"code\":\"J997BDCA620FB8\",\"name\":null,\"slug\":\"292f6659-614f-4b83-868a-85248bb8fcca\",\"money\":12000,\"money_product\":0,\"money_product_addition\":96000,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15 14:33:30\",\"step_at\":\"2023-06-15 14:33:30\",\"created_at\":\"2023-06-15T07:32:27.000000Z\",\"updated_at\":\"2023-06-15T07:38:08.000000Z\"}', 'Oke. Đặt nhanh hiểu quy trình', '2023-06-15 07:38:08', '2023-06-15 07:38:08'),
(42, 25, 1, '{\"money_product\":0,\"money\":19500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p \\u0111\\u01b0\\u1ee3c m\\u00e3 s\\u00e0n<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":14,\"code\":\"J3CBDD6CAD440A\",\"slug\":\"6ee84901-c031-484c-b2ce-418dc36153a0\",\"status\":1,\"updated_at\":\"2023-06-15T07:49:08.000000Z\",\"created_at\":\"2023-06-15T07:49:08.000000Z\",\"id\":25}', NULL, '2023-06-15 07:49:08', '2023-06-15 07:49:08'),
(43, 25, 2, '{\"id\":25,\"shop_id\":14,\"worker_id\":1,\"code\":\"J3CBDD6CAD440A\",\"name\":null,\"slug\":\"6ee84901-c031-484c-b2ce-418dc36153a0\",\"money\":19500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p \\u0111\\u01b0\\u1ee3c m\\u00e3 s\\u00e0n<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15T07:49:13.755554Z\",\"step_at\":\"2023-06-15T07:49:13.755905Z\",\"created_at\":\"2023-06-15T07:49:08.000000Z\",\"updated_at\":\"2023-06-15T07:49:13.000000Z\"}', NULL, '2023-06-15 07:49:13', '2023-06-15 07:49:13'),
(44, 25, 3, '{\"id\":25,\"shop_id\":14,\"worker_id\":1,\"code\":\"J3CBDD6CAD440A\",\"name\":null,\"slug\":\"6ee84901-c031-484c-b2ce-418dc36153a0\",\"money\":19500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p \\u0111\\u01b0\\u1ee3c m\\u00e3 s\\u00e0n<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15 14:49:13\",\"step_at\":\"2023-06-15 14:49:13\",\"created_at\":\"2023-06-15T07:49:08.000000Z\",\"updated_at\":\"2023-06-15T07:49:21.000000Z\"}', 'Oke', '2023-06-15 07:49:21', '2023-06-15 07:49:21'),
(45, 25, 4, '{\"id\":25,\"shop_id\":14,\"worker_id\":1,\"code\":\"J3CBDD6CAD440A\",\"name\":null,\"slug\":\"6ee84901-c031-484c-b2ce-418dc36153a0\",\"money\":19500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p \\u0111\\u01b0\\u1ee3c m\\u00e3 s\\u00e0n<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15 14:49:13\",\"step_at\":\"2023-06-15 14:49:13\",\"created_at\":\"2023-06-15T07:49:08.000000Z\",\"updated_at\":\"2023-06-15T07:49:48.000000Z\"}', 'ĐÃ ĐẶT', '2023-06-15 07:49:48', '2023-06-15 07:49:48'),
(46, 25, 5, '{\"id\":25,\"shop_id\":14,\"worker_id\":1,\"code\":\"J3CBDD6CAD440A\",\"name\":null,\"slug\":\"6ee84901-c031-484c-b2ce-418dc36153a0\",\"money\":19500,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p \\u0111\\u01b0\\u1ee3c m\\u00e3 s\\u00e0n<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15 14:49:13\",\"step_at\":\"2023-06-15 14:49:13\",\"created_at\":\"2023-06-15T07:49:08.000000Z\",\"updated_at\":\"2023-06-15T07:49:57.000000Z\"}', 'Đã đánh giá', '2023-06-15 07:49:57', '2023-06-15 07:49:57');
INSERT INTO `job_histories` (`id`, `job_id`, `status`, `detail`, `desc`, `created_at`, `updated_at`) VALUES
(47, 25, 6, '{\"id\":25,\"shop_id\":14,\"worker_id\":1,\"code\":\"J3CBDD6CAD440A\",\"name\":null,\"slug\":\"6ee84901-c031-484c-b2ce-418dc36153a0\",\"money\":19500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p \\u0111\\u01b0\\u1ee3c m\\u00e3 s\\u00e0n<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15 14:49:13\",\"step_at\":\"2023-06-15 14:49:13\",\"created_at\":\"2023-06-15T07:49:08.000000Z\",\"updated_at\":\"2023-06-15T07:50:18.000000Z\"}', 'OK', '2023-06-15 07:50:18', '2023-06-15 07:50:18'),
(48, 26, 1, '{\"shop_id\":\"14\",\"is_virtual\":true,\"money_product\":0,\"money\":19500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p \\u0111\\u01b0\\u1ee3c m\\u00e3 s\\u00e0n<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"JF4D30A3F50DAB\",\"slug\":\"f20b1c3b-e688-4ff8-a8fd-cee246a130ff\",\"status\":1,\"updated_at\":\"2023-06-15T07:58:30.000000Z\",\"created_at\":\"2023-06-15T07:58:30.000000Z\",\"id\":26}', NULL, '2023-06-15 07:58:30', '2023-06-15 07:58:30'),
(49, 27, 1, '{\"money_product\":0,\"money\":10400,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t ch\\u1ec9 c\\u1ea7n nh\\u1ea5n 5 sao cho \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p \\u0111\\u01b0\\u1ee3c m\\u00e3 s\\u00e0n<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"J28D510EE5AFA7\",\"slug\":\"b9d82c0f-f29a-428f-8dd3-6a86f87ffac4\",\"status\":1,\"updated_at\":\"2023-06-15T08:36:40.000000Z\",\"created_at\":\"2023-06-15T08:36:40.000000Z\",\"id\":27}', NULL, '2023-06-15 08:36:40', '2023-06-15 08:36:40'),
(50, 27, 2, '{\"id\":27,\"shop_id\":1,\"worker_id\":12,\"code\":\"J28D510EE5AFA7\",\"name\":null,\"slug\":\"b9d82c0f-f29a-428f-8dd3-6a86f87ffac4\",\"money\":10400,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t ch\\u1ec9 c\\u1ea7n nh\\u1ea5n 5 sao cho \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p \\u0111\\u01b0\\u1ee3c m\\u00e3 s\\u00e0n<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15T08:54:44.983068Z\",\"step_at\":\"2023-06-15T08:54:44.983540Z\",\"created_at\":\"2023-06-15T08:36:40.000000Z\",\"updated_at\":\"2023-06-15T08:54:44.000000Z\"}', NULL, '2023-06-15 08:54:44', '2023-06-15 08:54:44'),
(51, 27, 7, '{\"id\":27,\"shop_id\":1,\"worker_id\":12,\"code\":\"J28D510EE5AFA7\",\"name\":null,\"slug\":\"b9d82c0f-f29a-428f-8dd3-6a86f87ffac4\",\"money\":10400,\"money_product\":0,\"money_product_addition\":0,\"status\":7,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t ch\\u1ec9 c\\u1ea7n nh\\u1ea5n 5 sao cho \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p \\u0111\\u01b0\\u1ee3c m\\u00e3 s\\u00e0n<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15 15:54:44\",\"step_at\":\"2023-06-15T09:02:18.243576Z\",\"created_at\":\"2023-06-15T08:36:40.000000Z\",\"updated_at\":\"2023-06-15T09:02:18.000000Z\"}', NULL, '2023-06-15 09:02:18', '2023-06-15 09:02:18'),
(52, 28, 1, '{\"shop_id\":14,\"code\":\"J995C12A00EE8D\",\"name\":null,\"slug\":\"7264c0ad-b4e5-40ca-8794-2973b3cb755e\",\"money\":19500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p \\u0111\\u01b0\\u1ee3c m\\u00e3 s\\u00e0n<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-15T09:05:52.000000Z\",\"created_at\":\"2023-06-15T09:05:52.000000Z\",\"id\":28}', NULL, '2023-06-15 09:05:52', '2023-06-15 09:05:52'),
(53, 29, 1, '{\"money_product\":0,\"money\":9000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"J880514D722531\",\"slug\":\"47be9445-34bd-4144-9004-db9019d36c10\",\"status\":1,\"updated_at\":\"2023-06-15T13:38:56.000000Z\",\"created_at\":\"2023-06-15T13:38:56.000000Z\",\"id\":29}', NULL, '2023-06-15 13:38:56', '2023-06-15 13:38:56'),
(54, 29, 2, '{\"id\":29,\"shop_id\":1,\"worker_id\":17,\"code\":\"J880514D722531\",\"name\":null,\"slug\":\"47be9445-34bd-4144-9004-db9019d36c10\",\"money\":9000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15T13:56:11.232531Z\",\"step_at\":\"2023-06-15T13:56:11.232884Z\",\"created_at\":\"2023-06-15T13:38:56.000000Z\",\"updated_at\":\"2023-06-15T13:56:11.000000Z\"}', NULL, '2023-06-15 13:56:11', '2023-06-15 13:56:11'),
(55, 30, 1, '{\"shop_id\":1,\"code\":\"JE21C0AC3B97A9\",\"name\":null,\"slug\":\"e88e6ea2-ee9a-4d4d-9c93-dcd473317c21\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-15T23:14:10.000000Z\",\"created_at\":\"2023-06-15T23:14:10.000000Z\",\"id\":30}', NULL, '2023-06-15 23:14:10', '2023-06-15 23:14:10'),
(56, 31, 1, '{\"shop_id\":1,\"code\":\"J7DB8F249EAD51\",\"name\":null,\"slug\":\"6c055098-e6b5-4a0f-a034-95865895fc6f\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-15T23:14:14.000000Z\",\"created_at\":\"2023-06-15T23:14:14.000000Z\",\"id\":31}', NULL, '2023-06-15 23:14:14', '2023-06-15 23:14:14'),
(57, 32, 1, '{\"shop_id\":1,\"code\":\"J7DDBCB4BF5AF6\",\"name\":null,\"slug\":\"629378a4-9aa4-45b6-a7ae-272d28a637fb\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-15T23:14:16.000000Z\",\"created_at\":\"2023-06-15T23:14:16.000000Z\",\"id\":32}', NULL, '2023-06-15 23:14:16', '2023-06-15 23:14:16'),
(58, 33, 1, '{\"shop_id\":1,\"code\":\"J53E08D21F1F8D\",\"name\":null,\"slug\":\"9ea5f62b-7fd8-4223-bdd6-b0fa72743c0b\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-15T23:14:19.000000Z\",\"created_at\":\"2023-06-15T23:14:19.000000Z\",\"id\":33}', NULL, '2023-06-15 23:14:19', '2023-06-15 23:14:19'),
(59, 6, 7, '{\"id\":6,\"shop_id\":1,\"worker_id\":5,\"code\":\"J4C0393D873892\",\"name\":null,\"slug\":\"9128bb48-9369-40c9-a137-606d5ebd3194\",\"money\":16500,\"money_product\":0,\"money_product_addition\":0,\"status\":7,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng \\u1ea3o shop g\\u1eedi v\\u1ec1 \\u0111\\u1ecba ch\\u1ec9 th\\u1eadt c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1eb7t<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14 19:14:54\",\"step_at\":\"2023-06-14 19:14:54\",\"created_at\":\"2023-06-14T12:13:13.000000Z\",\"updated_at\":\"2023-06-16T01:03:11.000000Z\"}', 'Huỷ', '2023-06-16 01:03:11', '2023-06-16 01:03:11'),
(60, 34, 1, '{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"JC8E9F8BC9B463\",\"slug\":\"15a1ce61-5f20-455c-bc8b-56bebf27e7ad\",\"status\":1,\"updated_at\":\"2023-06-16T01:04:27.000000Z\",\"created_at\":\"2023-06-16T01:04:27.000000Z\",\"id\":34}', NULL, '2023-06-16 01:04:27', '2023-06-16 01:04:27'),
(61, 34, 2, '{\"id\":34,\"shop_id\":1,\"worker_id\":5,\"code\":\"JC8E9F8BC9B463\",\"name\":null,\"slug\":\"15a1ce61-5f20-455c-bc8b-56bebf27e7ad\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-16T01:05:12.488114Z\",\"step_at\":\"2023-06-16T01:05:12.488484Z\",\"created_at\":\"2023-06-16T01:04:27.000000Z\",\"updated_at\":\"2023-06-16T01:05:12.000000Z\"}', NULL, '2023-06-16 01:05:12', '2023-06-16 01:05:12'),
(62, 34, 3, '{\"id\":34,\"shop_id\":1,\"worker_id\":5,\"code\":\"JC8E9F8BC9B463\",\"name\":null,\"slug\":\"15a1ce61-5f20-455c-bc8b-56bebf27e7ad\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-16 08:05:12\",\"step_at\":\"2023-06-16 08:05:12\",\"created_at\":\"2023-06-16T01:04:27.000000Z\",\"updated_at\":\"2023-06-16T01:07:07.000000Z\"}', 'nhggguy', '2023-06-16 01:07:07', '2023-06-16 01:07:07'),
(63, 34, 4, '{\"id\":34,\"shop_id\":1,\"worker_id\":5,\"code\":\"JC8E9F8BC9B463\",\"name\":null,\"slug\":\"15a1ce61-5f20-455c-bc8b-56bebf27e7ad\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-16 08:05:12\",\"step_at\":\"2023-06-16 08:05:12\",\"created_at\":\"2023-06-16T01:04:27.000000Z\",\"updated_at\":\"2023-06-16T01:07:29.000000Z\"}', 'Đã đặt', '2023-06-16 01:07:29', '2023-06-16 01:07:29'),
(64, 34, 5, '{\"id\":34,\"shop_id\":1,\"worker_id\":5,\"code\":\"JC8E9F8BC9B463\",\"name\":null,\"slug\":\"15a1ce61-5f20-455c-bc8b-56bebf27e7ad\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-16 08:05:12\",\"step_at\":\"2023-06-16 08:05:12\",\"created_at\":\"2023-06-16T01:04:27.000000Z\",\"updated_at\":\"2023-06-16T01:08:27.000000Z\"}', 'đã đánh giá', '2023-06-16 01:08:27', '2023-06-16 01:08:27'),
(65, 34, 6, '{\"id\":34,\"shop_id\":1,\"worker_id\":5,\"code\":\"JC8E9F8BC9B463\",\"name\":null,\"slug\":\"15a1ce61-5f20-455c-bc8b-56bebf27e7ad\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-16 08:05:12\",\"step_at\":\"2023-06-16 08:05:12\",\"created_at\":\"2023-06-16T01:04:27.000000Z\",\"updated_at\":\"2023-06-16T01:08:38.000000Z\"}', 'Oke', '2023-06-16 01:08:38', '2023-06-16 01:08:38'),
(66, 35, 1, '{\"shop_id\":\"2\",\"is_virtual\":true,\"money_product\":0,\"money\":11500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"code\":\"J16E1F2B0FA2EB\",\"slug\":\"b8eca2cc-7c9b-4ceb-8618-d49fcab70f8c\",\"status\":1,\"updated_at\":\"2023-06-16T07:05:06.000000Z\",\"created_at\":\"2023-06-16T07:05:06.000000Z\",\"id\":35}', NULL, '2023-06-16 07:05:06', '2023-06-16 07:05:06'),
(67, 36, 1, '{\"shop_id\":2,\"code\":\"J695C7E9A8C577\",\"name\":null,\"slug\":\"05dab86f-c303-4de4-b3a0-ebb5e5fca17c\",\"money\":11500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-16T07:05:11.000000Z\",\"created_at\":\"2023-06-16T07:05:11.000000Z\",\"id\":36}', NULL, '2023-06-16 07:05:11', '2023-06-16 07:05:11'),
(68, 37, 1, '{\"shop_id\":2,\"code\":\"J7AC89509363DC\",\"name\":null,\"slug\":\"d37e893d-602b-4792-b230-251c628aaf7a\",\"money\":11500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-16T07:05:15.000000Z\",\"created_at\":\"2023-06-16T07:05:15.000000Z\",\"id\":37}', NULL, '2023-06-16 07:05:15', '2023-06-16 07:05:15'),
(69, 38, 1, '{\"shop_id\":2,\"code\":\"JE4D40D9EA1F86\",\"name\":null,\"slug\":\"b2515232-1d1e-40f4-8cc8-998a666918c3\",\"money\":11500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-16T07:05:19.000000Z\",\"created_at\":\"2023-06-16T07:05:19.000000Z\",\"id\":38}', NULL, '2023-06-16 07:05:19', '2023-06-16 07:05:19'),
(70, 29, 3, '{\"id\":29,\"shop_id\":1,\"worker_id\":17,\"code\":\"J880514D722531\",\"name\":null,\"slug\":\"47be9445-34bd-4144-9004-db9019d36c10\",\"money\":9000,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15 20:56:11\",\"step_at\":\"2023-06-15 20:56:11\",\"created_at\":\"2023-06-15T13:38:56.000000Z\",\"updated_at\":\"2023-06-16T08:04:39.000000Z\"}', '230616HFSX6AAK', '2023-06-16 08:04:39', '2023-06-16 08:04:39'),
(71, 39, 1, '{\"shop_id\":\"6\",\"is_virtual\":true,\"money_product\":0,\"money\":16500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"code\":\"JCA3580B4FC9F4\",\"slug\":\"9f026fc6-8f55-4bae-95e8-3227e81723a3\",\"status\":1,\"updated_at\":\"2023-06-16T12:44:11.000000Z\",\"created_at\":\"2023-06-16T12:44:11.000000Z\",\"id\":39}', NULL, '2023-06-16 12:44:11', '2023-06-16 12:44:11'),
(72, 40, 1, '{\"shop_id\":6,\"code\":\"J215951BAFB944\",\"name\":null,\"slug\":\"7d046281-9f27-4f67-8c0f-70ea6d3f84dc\",\"money\":16500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-16T12:44:15.000000Z\",\"created_at\":\"2023-06-16T12:44:15.000000Z\",\"id\":40}', NULL, '2023-06-16 12:44:15', '2023-06-16 12:44:15'),
(73, 41, 1, '{\"shop_id\":6,\"code\":\"J27F25B51C3185\",\"name\":null,\"slug\":\"dd4e0fa9-764a-45a6-9c77-c285e44cd775\",\"money\":16500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-16T12:44:20.000000Z\",\"created_at\":\"2023-06-16T12:44:20.000000Z\",\"id\":41}', NULL, '2023-06-16 12:44:20', '2023-06-16 12:44:20'),
(74, 42, 1, '{\"shop_id\":\"2\",\"is_virtual\":true,\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"code\":\"J9748CF616B8E6\",\"slug\":\"04c078eb-f961-4c00-8705-1a3221d5e454\",\"status\":1,\"updated_at\":\"2023-06-17T02:20:03.000000Z\",\"created_at\":\"2023-06-17T02:20:03.000000Z\",\"id\":42}', NULL, '2023-06-17 02:20:03', '2023-06-17 02:20:03'),
(75, 43, 1, '{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"J187E44951C0DA\",\"slug\":\"90f8d2e6-ec0e-4679-a436-935f08a4d05e\",\"status\":1,\"updated_at\":\"2023-06-17T10:14:49.000000Z\",\"created_at\":\"2023-06-17T10:14:49.000000Z\",\"id\":43}', NULL, '2023-06-17 10:14:49', '2023-06-17 10:14:49'),
(76, 44, 1, '{\"shop_id\":1,\"code\":\"JEDCBB8738B385\",\"name\":null,\"slug\":\"2c603641-842b-425b-982c-a8708ce719ad\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-17T10:14:52.000000Z\",\"created_at\":\"2023-06-17T10:14:52.000000Z\",\"id\":44}', NULL, '2023-06-17 10:14:52', '2023-06-17 10:14:52'),
(77, 45, 1, '{\"shop_id\":1,\"code\":\"J9DB2628059F79\",\"name\":null,\"slug\":\"01bb61ab-18fd-4def-958b-cd315ade2e02\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-17T10:14:56.000000Z\",\"created_at\":\"2023-06-17T10:14:56.000000Z\",\"id\":45}', NULL, '2023-06-17 10:14:56', '2023-06-17 10:14:56'),
(78, 46, 1, '{\"shop_id\":1,\"code\":\"J2319316D90B9C\",\"name\":null,\"slug\":\"8eb0d78d-914f-4edb-aff2-db7366a0830e\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-17T10:15:08.000000Z\",\"created_at\":\"2023-06-17T10:15:08.000000Z\",\"id\":46}', NULL, '2023-06-17 10:15:08', '2023-06-17 10:15:08'),
(79, 47, 1, '{\"shop_id\":1,\"code\":\"J29F0DB3CF1F0F\",\"name\":null,\"slug\":\"a39de118-73ee-427c-be6d-b1293c022e0e\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-17T10:15:10.000000Z\",\"created_at\":\"2023-06-17T10:15:10.000000Z\",\"id\":47}', NULL, '2023-06-17 10:15:10', '2023-06-17 10:15:10'),
(80, 47, 2, '{\"id\":47,\"shop_id\":1,\"worker_id\":19,\"code\":\"J29F0DB3CF1F0F\",\"name\":null,\"slug\":\"a39de118-73ee-427c-be6d-b1293c022e0e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17T10:38:32.673449Z\",\"step_at\":\"2023-06-17T10:38:32.673851Z\",\"created_at\":\"2023-06-17T10:15:10.000000Z\",\"updated_at\":\"2023-06-17T10:38:32.000000Z\"}', NULL, '2023-06-17 10:38:32', '2023-06-17 10:38:32'),
(81, 46, 2, '{\"id\":46,\"shop_id\":1,\"worker_id\":27,\"code\":\"J2319316D90B9C\",\"name\":null,\"slug\":\"8eb0d78d-914f-4edb-aff2-db7366a0830e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17T11:06:41.837824Z\",\"step_at\":\"2023-06-17T11:06:41.838176Z\",\"created_at\":\"2023-06-17T10:15:08.000000Z\",\"updated_at\":\"2023-06-17T11:06:41.000000Z\"}', NULL, '2023-06-17 11:06:41', '2023-06-17 11:06:41'),
(82, 45, 2, '{\"id\":45,\"shop_id\":1,\"worker_id\":28,\"code\":\"J9DB2628059F79\",\"name\":null,\"slug\":\"01bb61ab-18fd-4def-958b-cd315ade2e02\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17T11:19:14.168598Z\",\"step_at\":\"2023-06-17T11:19:14.169012Z\",\"created_at\":\"2023-06-17T10:14:56.000000Z\",\"updated_at\":\"2023-06-17T11:19:14.000000Z\"}', NULL, '2023-06-17 11:19:14', '2023-06-17 11:19:14'),
(83, 45, 3, '{\"id\":45,\"shop_id\":1,\"worker_id\":28,\"code\":\"J9DB2628059F79\",\"name\":null,\"slug\":\"01bb61ab-18fd-4def-958b-cd315ade2e02\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 18:19:14\",\"step_at\":\"2023-06-17 18:19:14\",\"created_at\":\"2023-06-17T10:14:56.000000Z\",\"updated_at\":\"2023-06-17T12:09:42.000000Z\"}', '230617MEN2C3QS', '2023-06-17 12:09:42', '2023-06-17 12:09:42'),
(84, 45, 4, '{\"id\":45,\"shop_id\":1,\"worker_id\":28,\"code\":\"J9DB2628059F79\",\"name\":null,\"slug\":\"01bb61ab-18fd-4def-958b-cd315ade2e02\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 18:19:14\",\"step_at\":\"2023-06-17 18:19:14\",\"created_at\":\"2023-06-17T10:14:56.000000Z\",\"updated_at\":\"2023-06-17T12:10:53.000000Z\"}', 'oke ạ', '2023-06-17 12:10:53', '2023-06-17 12:10:53'),
(85, 44, 2, '{\"id\":44,\"shop_id\":1,\"worker_id\":31,\"code\":\"JEDCBB8738B385\",\"name\":null,\"slug\":\"2c603641-842b-425b-982c-a8708ce719ad\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17T12:19:09.904103Z\",\"step_at\":\"2023-06-17T12:19:09.904446Z\",\"created_at\":\"2023-06-17T10:14:52.000000Z\",\"updated_at\":\"2023-06-17T12:19:09.000000Z\"}', NULL, '2023-06-17 12:19:09', '2023-06-17 12:19:09'),
(86, 44, 3, '{\"id\":44,\"shop_id\":1,\"worker_id\":31,\"code\":\"JEDCBB8738B385\",\"name\":null,\"slug\":\"2c603641-842b-425b-982c-a8708ce719ad\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 19:19:09\",\"step_at\":\"2023-06-17 19:19:09\",\"created_at\":\"2023-06-17T10:14:52.000000Z\",\"updated_at\":\"2023-06-17T12:34:16.000000Z\"}', 'MÃ ĐƠN HÀNG. 230617MMVUT6QV', '2023-06-17 12:19:52', '2023-06-17 14:00:55'),
(87, 43, 2, '{\"id\":43,\"shop_id\":1,\"worker_id\":33,\"code\":\"J187E44951C0DA\",\"name\":null,\"slug\":\"90f8d2e6-ec0e-4679-a436-935f08a4d05e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17T14:03:03.414742Z\",\"step_at\":\"2023-06-17T14:03:03.415116Z\",\"created_at\":\"2023-06-17T10:14:49.000000Z\",\"updated_at\":\"2023-06-17T14:03:03.000000Z\"}', NULL, '2023-06-17 14:03:03', '2023-06-17 14:03:03'),
(88, 48, 1, '{\"shop_id\":1,\"code\":\"J97460F44055D8\",\"name\":null,\"slug\":\"5313718d-4555-4fb1-a6ce-d4e8e0ebfaf3\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 17:38:32\",\"step_at\":\"2023-06-17 17:38:32\",\"updated_at\":\"2023-06-17T22:47:11.000000Z\",\"created_at\":\"2023-06-17T22:47:11.000000Z\",\"id\":48}', NULL, '2023-06-17 22:47:11', '2023-06-17 22:47:11'),
(89, 49, 1, '{\"shop_id\":1,\"code\":\"J63D36FC037362\",\"name\":null,\"slug\":\"15133207-c2bd-4e34-93b6-bab8e086ded7\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 17:38:32\",\"step_at\":\"2023-06-17 17:38:32\",\"updated_at\":\"2023-06-17T22:47:14.000000Z\",\"created_at\":\"2023-06-17T22:47:14.000000Z\",\"id\":49}', NULL, '2023-06-17 22:47:14', '2023-06-17 22:47:14'),
(90, 50, 1, '{\"shop_id\":1,\"code\":\"J3E3CB2DD10C2E\",\"name\":null,\"slug\":\"9ed40758-76d2-4cd7-a30d-f6cf2ce39066\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 17:38:32\",\"step_at\":\"2023-06-17 17:38:32\",\"updated_at\":\"2023-06-17T22:47:18.000000Z\",\"created_at\":\"2023-06-17T22:47:18.000000Z\",\"id\":50}', NULL, '2023-06-17 22:47:18', '2023-06-17 22:47:18'),
(91, 51, 1, '{\"shop_id\":1,\"code\":\"JA48DCE8D45123\",\"name\":null,\"slug\":\"eaa74639-f3d7-4cc6-95f6-b69aaa13eba9\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 17:38:32\",\"step_at\":\"2023-06-17 17:38:32\",\"updated_at\":\"2023-06-17T22:47:21.000000Z\",\"created_at\":\"2023-06-17T22:47:21.000000Z\",\"id\":51}', NULL, '2023-06-17 22:47:21', '2023-06-17 22:47:21'),
(92, 52, 1, '{\"shop_id\":1,\"code\":\"JFFD0645A5D16F\",\"name\":null,\"slug\":\"b5d3fe6e-7e88-4324-aa75-efdae4ef3300\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 17:38:32\",\"step_at\":\"2023-06-17 17:38:32\",\"updated_at\":\"2023-06-17T22:47:24.000000Z\",\"created_at\":\"2023-06-17T22:47:24.000000Z\",\"id\":52}', NULL, '2023-06-17 22:47:24', '2023-06-17 22:47:24'),
(93, 52, 2, '{\"id\":52,\"shop_id\":1,\"worker_id\":38,\"code\":\"JFFD0645A5D16F\",\"name\":null,\"slug\":\"b5d3fe6e-7e88-4324-aa75-efdae4ef3300\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17T23:22:00.598820Z\",\"step_at\":\"2023-06-17T23:22:00.599266Z\",\"created_at\":\"2023-06-17T22:47:24.000000Z\",\"updated_at\":\"2023-06-17T23:22:00.000000Z\"}', NULL, '2023-06-17 23:22:00', '2023-06-17 23:22:00');
INSERT INTO `job_histories` (`id`, `job_id`, `status`, `detail`, `desc`, `created_at`, `updated_at`) VALUES
(94, 52, 3, '{\"id\":52,\"shop_id\":1,\"worker_id\":38,\"code\":\"JFFD0645A5D16F\",\"name\":null,\"slug\":\"b5d3fe6e-7e88-4324-aa75-efdae4ef3300\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 06:22:00\",\"step_at\":\"2023-06-18 06:22:00\",\"created_at\":\"2023-06-17T22:47:24.000000Z\",\"updated_at\":\"2023-06-17T23:22:19.000000Z\"}', '230618NQ1VPN0T', '2023-06-17 23:22:19', '2023-06-18 00:12:20'),
(95, 51, 2, '{\"id\":51,\"shop_id\":1,\"worker_id\":39,\"code\":\"JA48DCE8D45123\",\"name\":null,\"slug\":\"eaa74639-f3d7-4cc6-95f6-b69aaa13eba9\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18T00:18:56.237209Z\",\"step_at\":\"2023-06-18T00:18:56.237552Z\",\"created_at\":\"2023-06-17T22:47:21.000000Z\",\"updated_at\":\"2023-06-18T00:18:56.000000Z\"}', NULL, '2023-06-18 00:18:56', '2023-06-18 00:18:56'),
(96, 48, 2, '{\"id\":48,\"shop_id\":1,\"worker_id\":40,\"code\":\"J97460F44055D8\",\"name\":null,\"slug\":\"5313718d-4555-4fb1-a6ce-d4e8e0ebfaf3\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18T00:44:26.833322Z\",\"step_at\":\"2023-06-18T00:44:26.833762Z\",\"created_at\":\"2023-06-17T22:47:11.000000Z\",\"updated_at\":\"2023-06-18T00:44:26.000000Z\"}', NULL, '2023-06-18 00:44:26', '2023-06-18 00:44:26'),
(97, 53, 1, '{\"shop_id\":\"2\",\"is_virtual\":true,\"money_product\":0,\"money\":22000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng \\u1ea3o shop g\\u1eedi v\\u1ec1 \\u0111\\u1ecba ch\\u1ec9 th\\u1eadt c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1eb7t<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t c\\u1ea7n thanh to\\u00e1n sau \\u0111\\u00f3 h\\u00e3y y\\u00eau c\\u1ea7u ti\\u1ec1n c\\u1ecdc tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"J62670D1733D51\",\"slug\":\"a6a61564-6ffe-4a69-9ff4-6b2eab8e36d0\",\"status\":1,\"updated_at\":\"2023-06-18T01:13:17.000000Z\",\"created_at\":\"2023-06-18T01:13:17.000000Z\",\"id\":53}', NULL, '2023-06-18 01:13:17', '2023-06-18 01:13:17'),
(98, 44, 4, '{\"id\":44,\"shop_id\":1,\"worker_id\":31,\"code\":\"JEDCBB8738B385\",\"name\":null,\"slug\":\"2c603641-842b-425b-982c-a8708ce719ad\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 19:19:09\",\"step_at\":\"2023-06-17 19:19:09\",\"created_at\":\"2023-06-17T10:14:52.000000Z\",\"updated_at\":\"2023-06-18T01:16:15.000000Z\"}', 'Oke đã đặt', '2023-06-18 01:16:15', '2023-06-18 01:16:15'),
(99, 52, 4, '{\"id\":52,\"shop_id\":1,\"worker_id\":38,\"code\":\"JFFD0645A5D16F\",\"name\":null,\"slug\":\"b5d3fe6e-7e88-4324-aa75-efdae4ef3300\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 06:22:00\",\"step_at\":\"2023-06-18 06:22:00\",\"created_at\":\"2023-06-17T22:47:24.000000Z\",\"updated_at\":\"2023-06-18T01:16:30.000000Z\"}', 'Oke', '2023-06-18 01:16:30', '2023-06-18 01:16:30'),
(100, 50, 2, '{\"id\":50,\"shop_id\":1,\"worker_id\":41,\"code\":\"J3E3CB2DD10C2E\",\"name\":null,\"slug\":\"9ed40758-76d2-4cd7-a30d-f6cf2ce39066\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18T01:27:53.863460Z\",\"step_at\":\"2023-06-18T01:27:53.863801Z\",\"created_at\":\"2023-06-17T22:47:18.000000Z\",\"updated_at\":\"2023-06-18T01:27:53.000000Z\"}', NULL, '2023-06-18 01:27:53', '2023-06-18 01:27:53'),
(101, 49, 2, '{\"id\":49,\"shop_id\":1,\"worker_id\":42,\"code\":\"J63D36FC037362\",\"name\":null,\"slug\":\"15133207-c2bd-4e34-93b6-bab8e086ded7\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18T01:34:14.912760Z\",\"step_at\":\"2023-06-18T01:34:14.913265Z\",\"created_at\":\"2023-06-17T22:47:14.000000Z\",\"updated_at\":\"2023-06-18T01:34:14.000000Z\"}', NULL, '2023-06-18 01:34:14', '2023-06-18 01:34:14'),
(102, 51, 3, '{\"id\":51,\"shop_id\":1,\"worker_id\":39,\"code\":\"JA48DCE8D45123\",\"name\":null,\"slug\":\"eaa74639-f3d7-4cc6-95f6-b69aaa13eba9\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 07:18:56\",\"step_at\":\"2023-06-18 07:18:56\",\"created_at\":\"2023-06-17T22:47:21.000000Z\",\"updated_at\":\"2023-06-18T01:58:05.000000Z\"}', '230618NVX279U5', '2023-06-18 01:58:05', '2023-06-18 01:58:05'),
(103, 50, 3, '{\"id\":50,\"shop_id\":1,\"worker_id\":41,\"code\":\"J3E3CB2DD10C2E\",\"name\":null,\"slug\":\"9ed40758-76d2-4cd7-a30d-f6cf2ce39066\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 08:27:53\",\"step_at\":\"2023-06-18 08:27:53\",\"created_at\":\"2023-06-17T22:47:18.000000Z\",\"updated_at\":\"2023-06-18T02:51:17.000000Z\"}', '230618NYW96GT5', '2023-06-18 02:51:17', '2023-06-18 02:51:17'),
(104, 48, 3, '{\"id\":48,\"shop_id\":1,\"worker_id\":40,\"code\":\"J97460F44055D8\",\"name\":null,\"slug\":\"5313718d-4555-4fb1-a6ce-d4e8e0ebfaf3\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 07:44:26\",\"step_at\":\"2023-06-18 07:44:26\",\"created_at\":\"2023-06-17T22:47:11.000000Z\",\"updated_at\":\"2023-06-18T04:23:22.000000Z\"}', '230618P51W9ETY', '2023-06-18 04:23:22', '2023-06-18 04:23:22'),
(105, 49, 3, '{\"id\":49,\"shop_id\":1,\"worker_id\":42,\"code\":\"J63D36FC037362\",\"name\":null,\"slug\":\"15133207-c2bd-4e34-93b6-bab8e086ded7\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 08:34:14\",\"step_at\":\"2023-06-18 08:34:14\",\"created_at\":\"2023-06-17T22:47:14.000000Z\",\"updated_at\":\"2023-06-18T06:11:32.000000Z\"}', '230618P14FA5QM', '2023-06-18 06:11:32', '2023-06-18 06:11:32'),
(106, 54, 1, '{\"shop_id\":1,\"code\":\"J356DC131CAD0B\",\"name\":null,\"slug\":\"d1c2dfc9-acda-4383-9cca-d0d49320d73b\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 18:06:41\",\"step_at\":\"2023-06-17 18:06:41\",\"updated_at\":\"2023-06-18T07:50:55.000000Z\",\"created_at\":\"2023-06-18T07:50:55.000000Z\",\"id\":54}', NULL, '2023-06-18 07:50:55', '2023-06-18 07:50:55'),
(107, 54, 2, '{\"id\":54,\"shop_id\":1,\"worker_id\":43,\"code\":\"J356DC131CAD0B\",\"name\":null,\"slug\":\"d1c2dfc9-acda-4383-9cca-d0d49320d73b\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18T08:01:53.274681Z\",\"step_at\":\"2023-06-18T08:01:53.275099Z\",\"created_at\":\"2023-06-18T07:50:55.000000Z\",\"updated_at\":\"2023-06-18T08:01:53.000000Z\"}', NULL, '2023-06-18 08:01:53', '2023-06-18 08:01:53'),
(108, 54, 3, '{\"id\":54,\"shop_id\":1,\"worker_id\":43,\"code\":\"J356DC131CAD0B\",\"name\":null,\"slug\":\"d1c2dfc9-acda-4383-9cca-d0d49320d73b\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 15:01:53\",\"step_at\":\"2023-06-18 15:01:53\",\"created_at\":\"2023-06-18T07:50:55.000000Z\",\"updated_at\":\"2023-06-18T08:08:41.000000Z\"}', '230618PHNA7YJA', '2023-06-18 08:08:41', '2023-06-18 08:08:41'),
(109, 54, 4, '{\"id\":54,\"shop_id\":1,\"worker_id\":43,\"code\":\"J356DC131CAD0B\",\"name\":null,\"slug\":\"d1c2dfc9-acda-4383-9cca-d0d49320d73b\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 15:01:53\",\"step_at\":\"2023-06-18 15:01:53\",\"created_at\":\"2023-06-18T07:50:55.000000Z\",\"updated_at\":\"2023-06-18T13:00:07.000000Z\"}', 'Oke', '2023-06-18 13:00:07', '2023-06-18 13:00:07'),
(110, 51, 4, '{\"id\":51,\"shop_id\":1,\"worker_id\":39,\"code\":\"JA48DCE8D45123\",\"name\":null,\"slug\":\"eaa74639-f3d7-4cc6-95f6-b69aaa13eba9\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 07:18:56\",\"step_at\":\"2023-06-18 07:18:56\",\"created_at\":\"2023-06-17T22:47:21.000000Z\",\"updated_at\":\"2023-06-18T13:10:16.000000Z\"}', 'oke', '2023-06-18 13:10:16', '2023-06-18 13:10:16'),
(111, 49, 4, '{\"id\":49,\"shop_id\":1,\"worker_id\":42,\"code\":\"J63D36FC037362\",\"name\":null,\"slug\":\"15133207-c2bd-4e34-93b6-bab8e086ded7\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 08:34:14\",\"step_at\":\"2023-06-18 08:34:14\",\"created_at\":\"2023-06-17T22:47:14.000000Z\",\"updated_at\":\"2023-06-18T13:11:54.000000Z\"}', 'oke', '2023-06-18 13:11:54', '2023-06-18 13:11:54'),
(112, 54, 5, '{\"id\":54,\"shop_id\":1,\"worker_id\":43,\"code\":\"J356DC131CAD0B\",\"name\":null,\"slug\":\"d1c2dfc9-acda-4383-9cca-d0d49320d73b\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 15:01:53\",\"step_at\":\"2023-06-18 15:01:53\",\"created_at\":\"2023-06-18T07:50:55.000000Z\",\"updated_at\":\"2023-06-18T13:16:39.000000Z\"}', 'Đã đánh giá', '2023-06-18 13:16:39', '2023-06-18 13:16:39'),
(113, 54, 6, '{\"id\":54,\"shop_id\":1,\"worker_id\":43,\"code\":\"J356DC131CAD0B\",\"name\":null,\"slug\":\"d1c2dfc9-acda-4383-9cca-d0d49320d73b\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 15:01:53\",\"step_at\":\"2023-06-18 15:01:53\",\"created_at\":\"2023-06-18T07:50:55.000000Z\",\"updated_at\":\"2023-06-18T13:19:09.000000Z\"}', 'đã hoàn thành', '2023-06-18 13:19:09', '2023-06-18 13:19:09'),
(114, 48, 4, '{\"id\":48,\"shop_id\":1,\"worker_id\":40,\"code\":\"J97460F44055D8\",\"name\":null,\"slug\":\"5313718d-4555-4fb1-a6ce-d4e8e0ebfaf3\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 07:44:26\",\"step_at\":\"2023-06-18 07:44:26\",\"created_at\":\"2023-06-17T22:47:11.000000Z\",\"updated_at\":\"2023-06-18T13:20:23.000000Z\"}', 'oke nek', '2023-06-18 13:20:23', '2023-06-18 13:20:23'),
(115, 45, 5, '{\"id\":45,\"shop_id\":1,\"worker_id\":28,\"code\":\"J9DB2628059F79\",\"name\":null,\"slug\":\"01bb61ab-18fd-4def-958b-cd315ade2e02\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 18:19:14\",\"step_at\":\"2023-06-17 18:19:14\",\"created_at\":\"2023-06-17T10:14:56.000000Z\",\"updated_at\":\"2023-06-18T13:22:38.000000Z\"}', 'Đã  đánh giá', '2023-06-18 13:22:38', '2023-06-18 13:22:38'),
(116, 45, 6, '{\"id\":45,\"shop_id\":1,\"worker_id\":28,\"code\":\"J9DB2628059F79\",\"name\":null,\"slug\":\"01bb61ab-18fd-4def-958b-cd315ade2e02\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 18:19:14\",\"step_at\":\"2023-06-17 18:19:14\",\"created_at\":\"2023-06-17T10:14:56.000000Z\",\"updated_at\":\"2023-06-18T13:26:37.000000Z\"}', 'bạn biết cách đặt trên oiio. nhanh nhẹn', '2023-06-18 13:26:37', '2023-06-18 13:26:37'),
(117, 48, 5, '{\"id\":48,\"shop_id\":1,\"worker_id\":40,\"code\":\"J97460F44055D8\",\"name\":null,\"slug\":\"5313718d-4555-4fb1-a6ce-d4e8e0ebfaf3\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 07:44:26\",\"step_at\":\"2023-06-18 07:44:26\",\"created_at\":\"2023-06-17T22:47:11.000000Z\",\"updated_at\":\"2023-06-18T13:28:34.000000Z\"}', 'Đã đánh giá', '2023-06-18 13:28:34', '2023-06-18 13:28:34'),
(118, 48, 6, '{\"id\":48,\"shop_id\":1,\"worker_id\":40,\"code\":\"J97460F44055D8\",\"name\":null,\"slug\":\"5313718d-4555-4fb1-a6ce-d4e8e0ebfaf3\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 07:44:26\",\"step_at\":\"2023-06-18 07:44:26\",\"created_at\":\"2023-06-17T22:47:11.000000Z\",\"updated_at\":\"2023-06-18T13:32:55.000000Z\"}', 'bạn này đặt nhanh và hiểu về web', '2023-06-18 13:32:55', '2023-06-18 13:32:55'),
(119, 49, 5, '{\"id\":49,\"shop_id\":1,\"worker_id\":42,\"code\":\"J63D36FC037362\",\"name\":null,\"slug\":\"15133207-c2bd-4e34-93b6-bab8e086ded7\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 08:34:14\",\"step_at\":\"2023-06-18 08:34:14\",\"created_at\":\"2023-06-17T22:47:14.000000Z\",\"updated_at\":\"2023-06-18T13:40:00.000000Z\"}', 'Đã đánh giá', '2023-06-18 13:40:00', '2023-06-18 13:40:00'),
(120, 52, 5, '{\"id\":52,\"shop_id\":1,\"worker_id\":38,\"code\":\"JFFD0645A5D16F\",\"name\":null,\"slug\":\"b5d3fe6e-7e88-4324-aa75-efdae4ef3300\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 06:22:00\",\"step_at\":\"2023-06-18 06:22:00\",\"created_at\":\"2023-06-17T22:47:24.000000Z\",\"updated_at\":\"2023-06-18T13:40:38.000000Z\"}', 'Đã đánh giá', '2023-06-18 13:40:38', '2023-06-18 13:40:38'),
(121, 49, 6, '{\"id\":49,\"shop_id\":1,\"worker_id\":42,\"code\":\"J63D36FC037362\",\"name\":null,\"slug\":\"15133207-c2bd-4e34-93b6-bab8e086ded7\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 08:34:14\",\"step_at\":\"2023-06-18 08:34:14\",\"created_at\":\"2023-06-17T22:47:14.000000Z\",\"updated_at\":\"2023-06-18T13:40:57.000000Z\"}', 'bạn này biết cách đặt trên oiio', '2023-06-18 13:40:57', '2023-06-18 13:40:57'),
(122, 55, 1, '{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":5,\"code\":\"J77F79BCB0BD8B\",\"slug\":\"afe6d701-bbe1-412e-af75-94ad0bf89f16\",\"status\":1,\"updated_at\":\"2023-06-18T13:46:26.000000Z\",\"created_at\":\"2023-06-18T13:46:26.000000Z\",\"id\":55}', NULL, '2023-06-18 13:46:26', '2023-06-18 13:46:26'),
(123, 56, 1, '{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":5,\"code\":\"J77EAA9DE27CA5\",\"slug\":\"7db85544-64f3-4f66-b13c-425260713dbf\",\"status\":1,\"updated_at\":\"2023-06-18T13:47:50.000000Z\",\"created_at\":\"2023-06-18T13:47:50.000000Z\",\"id\":56}', NULL, '2023-06-18 13:47:50', '2023-06-18 13:47:50'),
(124, 56, 2, '{\"id\":56,\"shop_id\":5,\"worker_id\":53,\"code\":\"J77EAA9DE27CA5\",\"name\":null,\"slug\":\"7db85544-64f3-4f66-b13c-425260713dbf\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18T13:49:17.712466Z\",\"step_at\":\"2023-06-18T13:49:17.712819Z\",\"created_at\":\"2023-06-18T13:47:50.000000Z\",\"updated_at\":\"2023-06-18T13:49:17.000000Z\"}', NULL, '2023-06-18 13:49:17', '2023-06-18 13:49:17'),
(125, 57, 1, '{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":5,\"code\":\"J99135A127B656\",\"slug\":\"ec99bb0b-7fb3-4c3d-93fb-6adf97ecd13e\",\"status\":1,\"updated_at\":\"2023-06-18T13:49:39.000000Z\",\"created_at\":\"2023-06-18T13:49:39.000000Z\",\"id\":57}', NULL, '2023-06-18 13:49:39', '2023-06-18 13:49:39'),
(126, 55, 2, '{\"id\":55,\"shop_id\":5,\"worker_id\":56,\"code\":\"J77F79BCB0BD8B\",\"name\":null,\"slug\":\"afe6d701-bbe1-412e-af75-94ad0bf89f16\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18T13:51:46.739235Z\",\"step_at\":\"2023-06-18T13:51:46.739635Z\",\"created_at\":\"2023-06-18T13:46:26.000000Z\",\"updated_at\":\"2023-06-18T13:51:46.000000Z\"}', NULL, '2023-06-18 13:51:46', '2023-06-18 13:51:46'),
(127, 57, 2, '{\"id\":57,\"shop_id\":5,\"worker_id\":58,\"code\":\"J99135A127B656\",\"name\":null,\"slug\":\"ec99bb0b-7fb3-4c3d-93fb-6adf97ecd13e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18T13:53:08.405731Z\",\"step_at\":\"2023-06-18T13:53:08.406092Z\",\"created_at\":\"2023-06-18T13:49:39.000000Z\",\"updated_at\":\"2023-06-18T13:53:08.000000Z\"}', NULL, '2023-06-18 13:53:08', '2023-06-18 13:53:08'),
(128, 58, 1, '{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":5,\"code\":\"J2DBDAC40E4992\",\"slug\":\"f1baca85-a422-4f31-bb4d-9c0ee86b648e\",\"status\":1,\"updated_at\":\"2023-06-18T13:54:11.000000Z\",\"created_at\":\"2023-06-18T13:54:11.000000Z\",\"id\":58}', NULL, '2023-06-18 13:54:11', '2023-06-18 13:54:11'),
(129, 58, 2, '{\"id\":58,\"shop_id\":5,\"worker_id\":57,\"code\":\"J2DBDAC40E4992\",\"name\":null,\"slug\":\"f1baca85-a422-4f31-bb4d-9c0ee86b648e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18T13:55:14.461998Z\",\"step_at\":\"2023-06-18T13:55:14.462339Z\",\"created_at\":\"2023-06-18T13:54:11.000000Z\",\"updated_at\":\"2023-06-18T13:55:14.000000Z\"}', NULL, '2023-06-18 13:55:14', '2023-06-18 13:55:14'),
(130, 59, 1, '{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":5,\"code\":\"J4D1F270FEF243\",\"slug\":\"b0c8f3ff-9a80-4944-b89c-ccfee53822da\",\"status\":1,\"updated_at\":\"2023-06-18T13:55:18.000000Z\",\"created_at\":\"2023-06-18T13:55:18.000000Z\",\"id\":59}', NULL, '2023-06-18 13:55:18', '2023-06-18 13:55:18'),
(131, 59, 2, '{\"id\":59,\"shop_id\":5,\"worker_id\":54,\"code\":\"J4D1F270FEF243\",\"name\":null,\"slug\":\"b0c8f3ff-9a80-4944-b89c-ccfee53822da\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18T14:04:04.040819Z\",\"step_at\":\"2023-06-18T14:04:04.041167Z\",\"created_at\":\"2023-06-18T13:55:18.000000Z\",\"updated_at\":\"2023-06-18T14:04:04.000000Z\"}', NULL, '2023-06-18 14:04:04', '2023-06-18 14:04:04'),
(132, 57, 3, '{\"id\":57,\"shop_id\":5,\"worker_id\":58,\"code\":\"J99135A127B656\",\"name\":null,\"slug\":\"ec99bb0b-7fb3-4c3d-93fb-6adf97ecd13e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:53:08\",\"step_at\":\"2023-06-18 20:53:08\",\"created_at\":\"2023-06-18T13:49:39.000000Z\",\"updated_at\":\"2023-06-18T14:04:06.000000Z\"}', '230618Q5FR1V2W', '2023-06-18 14:04:06', '2023-06-18 14:04:06'),
(133, 56, 3, '{\"id\":56,\"shop_id\":5,\"worker_id\":53,\"code\":\"J77EAA9DE27CA5\",\"name\":null,\"slug\":\"7db85544-64f3-4f66-b13c-425260713dbf\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:49:17\",\"step_at\":\"2023-06-18 20:49:17\",\"created_at\":\"2023-06-18T13:47:50.000000Z\",\"updated_at\":\"2023-06-18T14:08:00.000000Z\"}', '230618Q5Q3JU4H', '2023-06-18 14:08:00', '2023-06-18 14:08:00'),
(134, 52, 6, '{\"id\":52,\"shop_id\":1,\"worker_id\":38,\"code\":\"JFFD0645A5D16F\",\"name\":null,\"slug\":\"b5d3fe6e-7e88-4324-aa75-efdae4ef3300\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 06:22:00\",\"step_at\":\"2023-06-18 06:22:00\",\"created_at\":\"2023-06-17T22:47:24.000000Z\",\"updated_at\":\"2023-06-18T14:12:29.000000Z\"}', 'Oke xong', '2023-06-18 14:12:29', '2023-06-18 14:12:29'),
(135, 59, 3, '{\"id\":59,\"shop_id\":5,\"worker_id\":54,\"code\":\"J4D1F270FEF243\",\"name\":null,\"slug\":\"b0c8f3ff-9a80-4944-b89c-ccfee53822da\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:04:04\",\"step_at\":\"2023-06-18 21:04:04\",\"created_at\":\"2023-06-18T13:55:18.000000Z\",\"updated_at\":\"2023-06-18T14:21:15.000000Z\"}', '230618Q69SJUU6', '2023-06-18 14:21:15', '2023-06-18 14:21:15'),
(136, 60, 1, '{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":5,\"code\":\"JA287064F63B74\",\"slug\":\"8c5d9cd1-4458-4253-946e-a913e6932688\",\"status\":1,\"updated_at\":\"2023-06-18T14:29:31.000000Z\",\"created_at\":\"2023-06-18T14:29:31.000000Z\",\"id\":60}', NULL, '2023-06-18 14:29:31', '2023-06-18 14:29:31'),
(137, 58, 3, '{\"id\":58,\"shop_id\":5,\"worker_id\":57,\"code\":\"J2DBDAC40E4992\",\"name\":null,\"slug\":\"f1baca85-a422-4f31-bb4d-9c0ee86b648e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:55:14\",\"step_at\":\"2023-06-18 20:55:14\",\"created_at\":\"2023-06-18T13:54:11.000000Z\",\"updated_at\":\"2023-06-18T14:32:16.000000Z\"}', '230618Q5RHEB0R', '2023-06-18 14:32:16', '2023-06-18 14:32:16'),
(138, 61, 1, '{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":5,\"code\":\"J5E88D7B57E038\",\"slug\":\"c9b37c5e-e653-4d3e-826d-4f1895f76ecc\",\"status\":1,\"updated_at\":\"2023-06-18T14:32:44.000000Z\",\"created_at\":\"2023-06-18T14:32:44.000000Z\",\"id\":61}', NULL, '2023-06-18 14:32:44', '2023-06-18 14:32:44'),
(139, 61, 2, '{\"id\":61,\"shop_id\":5,\"worker_id\":59,\"code\":\"J5E88D7B57E038\",\"name\":null,\"slug\":\"c9b37c5e-e653-4d3e-826d-4f1895f76ecc\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18T14:33:28.753588Z\",\"step_at\":\"2023-06-18T14:33:28.753977Z\",\"created_at\":\"2023-06-18T14:32:44.000000Z\",\"updated_at\":\"2023-06-18T14:33:28.000000Z\"}', NULL, '2023-06-18 14:33:28', '2023-06-18 14:33:28');
INSERT INTO `job_histories` (`id`, `job_id`, `status`, `detail`, `desc`, `created_at`, `updated_at`) VALUES
(140, 60, 2, '{\"id\":60,\"shop_id\":5,\"worker_id\":60,\"code\":\"JA287064F63B74\",\"name\":null,\"slug\":\"8c5d9cd1-4458-4253-946e-a913e6932688\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18T14:41:39.618715Z\",\"step_at\":\"2023-06-18T14:41:39.619062Z\",\"created_at\":\"2023-06-18T14:29:31.000000Z\",\"updated_at\":\"2023-06-18T14:41:39.000000Z\"}', NULL, '2023-06-18 14:41:39', '2023-06-18 14:41:39'),
(141, 60, 3, '{\"id\":60,\"shop_id\":5,\"worker_id\":60,\"code\":\"JA287064F63B74\",\"name\":null,\"slug\":\"8c5d9cd1-4458-4253-946e-a913e6932688\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:41:39\",\"step_at\":\"2023-06-18 21:41:39\",\"created_at\":\"2023-06-18T14:29:31.000000Z\",\"updated_at\":\"2023-06-18T14:49:24.000000Z\"}', '230618Q7YBAUYR', '2023-06-18 14:49:24', '2023-06-18 14:49:24'),
(142, 61, 3, '{\"id\":61,\"shop_id\":5,\"worker_id\":59,\"code\":\"J5E88D7B57E038\",\"name\":null,\"slug\":\"c9b37c5e-e653-4d3e-826d-4f1895f76ecc\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:33:28\",\"step_at\":\"2023-06-18 21:33:28\",\"created_at\":\"2023-06-18T14:32:44.000000Z\",\"updated_at\":\"2023-06-18T14:49:54.000000Z\"}', '230618Q7MPTFCX', '2023-06-18 14:49:54', '2023-06-18 14:49:54'),
(143, 51, 5, '{\"id\":51,\"shop_id\":1,\"worker_id\":39,\"code\":\"JA48DCE8D45123\",\"name\":null,\"slug\":\"eaa74639-f3d7-4cc6-95f6-b69aaa13eba9\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 07:18:56\",\"step_at\":\"2023-06-18 07:18:56\",\"created_at\":\"2023-06-17T22:47:21.000000Z\",\"updated_at\":\"2023-06-18T14:51:34.000000Z\"}', 'Đã đánh giá', '2023-06-18 14:51:34', '2023-06-18 14:51:34'),
(144, 55, 3, '{\"id\":55,\"shop_id\":5,\"worker_id\":56,\"code\":\"J77F79BCB0BD8B\",\"name\":null,\"slug\":\"afe6d701-bbe1-412e-af75-94ad0bf89f16\",\"money\":10500,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:51:46\",\"step_at\":\"2023-06-18 20:51:46\",\"created_at\":\"2023-06-18T13:46:26.000000Z\",\"updated_at\":\"2023-06-18T14:54:20.000000Z\"}', '230618Q59T8A0B', '2023-06-18 14:54:20', '2023-06-18 14:54:20'),
(145, 51, 6, '{\"id\":51,\"shop_id\":1,\"worker_id\":39,\"code\":\"JA48DCE8D45123\",\"name\":null,\"slug\":\"eaa74639-f3d7-4cc6-95f6-b69aaa13eba9\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 07:18:56\",\"step_at\":\"2023-06-18 07:18:56\",\"created_at\":\"2023-06-17T22:47:21.000000Z\",\"updated_at\":\"2023-06-18T14:58:36.000000Z\"}', 'ok ạ', '2023-06-18 14:58:36', '2023-06-18 14:58:36'),
(146, 61, 4, '{\"id\":61,\"shop_id\":5,\"worker_id\":59,\"code\":\"J5E88D7B57E038\",\"name\":null,\"slug\":\"c9b37c5e-e653-4d3e-826d-4f1895f76ecc\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:33:28\",\"step_at\":\"2023-06-18 21:33:28\",\"created_at\":\"2023-06-18T14:32:44.000000Z\",\"updated_at\":\"2023-06-18T15:18:33.000000Z\"}', 'đã đặt', '2023-06-18 15:18:33', '2023-06-18 15:18:33'),
(147, 60, 4, '{\"id\":60,\"shop_id\":5,\"worker_id\":60,\"code\":\"JA287064F63B74\",\"name\":null,\"slug\":\"8c5d9cd1-4458-4253-946e-a913e6932688\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:41:39\",\"step_at\":\"2023-06-18 21:41:39\",\"created_at\":\"2023-06-18T14:29:31.000000Z\",\"updated_at\":\"2023-06-18T15:19:06.000000Z\"}', 'đã đặt', '2023-06-18 15:19:06', '2023-06-18 15:19:06'),
(148, 55, 4, '{\"id\":55,\"shop_id\":5,\"worker_id\":56,\"code\":\"J77F79BCB0BD8B\",\"name\":null,\"slug\":\"afe6d701-bbe1-412e-af75-94ad0bf89f16\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:51:46\",\"step_at\":\"2023-06-18 20:51:46\",\"created_at\":\"2023-06-18T13:46:26.000000Z\",\"updated_at\":\"2023-06-18T15:19:22.000000Z\"}', 'đã đặt', '2023-06-18 15:19:22', '2023-06-18 15:19:22'),
(149, 59, 4, '{\"id\":59,\"shop_id\":5,\"worker_id\":54,\"code\":\"J4D1F270FEF243\",\"name\":null,\"slug\":\"b0c8f3ff-9a80-4944-b89c-ccfee53822da\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:04:04\",\"step_at\":\"2023-06-18 21:04:04\",\"created_at\":\"2023-06-18T13:55:18.000000Z\",\"updated_at\":\"2023-06-18T15:19:41.000000Z\"}', 'đã đặt', '2023-06-18 15:19:41', '2023-06-18 15:19:41'),
(150, 58, 4, '{\"id\":58,\"shop_id\":5,\"worker_id\":57,\"code\":\"J2DBDAC40E4992\",\"name\":null,\"slug\":\"f1baca85-a422-4f31-bb4d-9c0ee86b648e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:55:14\",\"step_at\":\"2023-06-18 20:55:14\",\"created_at\":\"2023-06-18T13:54:11.000000Z\",\"updated_at\":\"2023-06-18T15:19:55.000000Z\"}', 'đã đặt', '2023-06-18 15:19:55', '2023-06-18 15:19:55'),
(151, 56, 4, '{\"id\":56,\"shop_id\":5,\"worker_id\":53,\"code\":\"J77EAA9DE27CA5\",\"name\":null,\"slug\":\"7db85544-64f3-4f66-b13c-425260713dbf\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:49:17\",\"step_at\":\"2023-06-18 20:49:17\",\"created_at\":\"2023-06-18T13:47:50.000000Z\",\"updated_at\":\"2023-06-18T15:20:24.000000Z\"}', 'đã đặt', '2023-06-18 15:20:24', '2023-06-18 15:20:24'),
(152, 57, 4, '{\"id\":57,\"shop_id\":5,\"worker_id\":58,\"code\":\"J99135A127B656\",\"name\":null,\"slug\":\"ec99bb0b-7fb3-4c3d-93fb-6adf97ecd13e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:53:08\",\"step_at\":\"2023-06-18 20:53:08\",\"created_at\":\"2023-06-18T13:49:39.000000Z\",\"updated_at\":\"2023-06-18T15:20:38.000000Z\"}', 'đã đặt', '2023-06-18 15:20:38', '2023-06-18 15:20:38'),
(153, 62, 1, '{\"shop_id\":\"2\",\"is_virtual\":true,\"money_product\":0,\"money\":16500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"code\":\"J1B20E7811FA7D\",\"slug\":\"689a8edc-2ed7-45af-99c4-117bdcd5f097\",\"status\":1,\"updated_at\":\"2023-06-18T15:21:37.000000Z\",\"created_at\":\"2023-06-18T15:21:37.000000Z\",\"id\":62}', NULL, '2023-06-18 15:21:37', '2023-06-18 15:21:37'),
(154, 63, 1, '{\"shop_id\":2,\"code\":\"JC91855B8B4FDD\",\"name\":null,\"slug\":\"c84a738a-d9ef-49bd-8338-588a273be374\",\"money\":16500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-18T15:21:47.000000Z\",\"created_at\":\"2023-06-18T15:21:47.000000Z\",\"id\":63}', NULL, '2023-06-18 15:21:47', '2023-06-18 15:21:47'),
(155, 64, 1, '{\"shop_id\":2,\"code\":\"J22D1AD2149B50\",\"name\":null,\"slug\":\"cc4b6db2-0ad6-4c72-bddc-31e610ae712e\",\"money\":16500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n l\\u00e0 H\\u00e0 N\\u1ed9i<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-18T15:21:50.000000Z\",\"created_at\":\"2023-06-18T15:21:50.000000Z\",\"id\":64}', NULL, '2023-06-18 15:21:50', '2023-06-18 15:21:50'),
(156, 65, 1, '{\"shop_id\":\"1\",\"money_product\":0,\"money\":9000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"JAAB2B3830D418\",\"slug\":\"5ce67f22-268c-42cc-88c7-6d79d8caf3e1\",\"status\":1,\"updated_at\":\"2023-06-18T23:25:02.000000Z\",\"created_at\":\"2023-06-18T23:25:02.000000Z\",\"id\":65}', NULL, '2023-06-18 23:25:02', '2023-06-18 23:25:02'),
(157, 66, 1, '{\"shop_id\":1,\"code\":\"JD5C0E712608B9\",\"name\":null,\"slug\":\"95065d1a-96f6-4343-8da7-5aa2a61d51de\",\"money\":9000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-18T23:25:08.000000Z\",\"created_at\":\"2023-06-18T23:25:08.000000Z\",\"id\":66}', NULL, '2023-06-18 23:25:08', '2023-06-18 23:25:08'),
(158, 67, 1, '{\"shop_id\":1,\"code\":\"JD1138519CF5EB\",\"name\":null,\"slug\":\"a4409806-1048-42de-a898-38741a965b2c\",\"money\":9000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-18T23:25:16.000000Z\",\"created_at\":\"2023-06-18T23:25:16.000000Z\",\"id\":67}', NULL, '2023-06-18 23:25:16', '2023-06-18 23:25:16'),
(159, 68, 1, '{\"shop_id\":1,\"code\":\"JCAD824092951D\",\"name\":null,\"slug\":\"1e7118be-dcf8-4a6b-827e-37ccd181987e\",\"money\":9000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-18T23:25:20.000000Z\",\"created_at\":\"2023-06-18T23:25:20.000000Z\",\"id\":68}', NULL, '2023-06-18 23:25:20', '2023-06-18 23:25:20'),
(160, 69, 1, '{\"shop_id\":\"6\",\"is_virtual\":true,\"money_product\":0,\"money\":15200,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p>\",\"code\":\"J2DC1972EDF586\",\"slug\":\"6574877f-0235-475a-9971-ecc3171e2cd8\",\"status\":1,\"updated_at\":\"2023-06-18T23:47:33.000000Z\",\"created_at\":\"2023-06-18T23:47:33.000000Z\",\"id\":69}', NULL, '2023-06-18 23:47:33', '2023-06-18 23:47:33'),
(161, 65, 2, '{\"id\":65,\"shop_id\":1,\"worker_id\":20,\"code\":\"JAAB2B3830D418\",\"name\":null,\"slug\":\"5ce67f22-268c-42cc-88c7-6d79d8caf3e1\",\"money\":9000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18T23:59:46.844821Z\",\"step_at\":\"2023-06-18T23:59:46.845180Z\",\"created_at\":\"2023-06-18T23:25:02.000000Z\",\"updated_at\":\"2023-06-18T23:59:46.000000Z\"}', NULL, '2023-06-18 23:59:46', '2023-06-18 23:59:46'),
(162, 65, 3, '{\"id\":65,\"shop_id\":1,\"worker_id\":20,\"code\":\"JAAB2B3830D418\",\"name\":null,\"slug\":\"5ce67f22-268c-42cc-88c7-6d79d8caf3e1\",\"money\":9000,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-19 06:59:46\",\"step_at\":\"2023-06-19 06:59:46\",\"created_at\":\"2023-06-18T23:25:02.000000Z\",\"updated_at\":\"2023-06-19T00:44:42.000000Z\"}', '230619R9A26R67', '2023-06-19 00:44:42', '2023-06-19 00:44:42'),
(163, 68, 2, '{\"id\":68,\"shop_id\":1,\"worker_id\":62,\"code\":\"JCAD824092951D\",\"name\":null,\"slug\":\"1e7118be-dcf8-4a6b-827e-37ccd181987e\",\"money\":9000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-19T00:49:53.755801Z\",\"step_at\":\"2023-06-19T00:49:53.756151Z\",\"created_at\":\"2023-06-18T23:25:20.000000Z\",\"updated_at\":\"2023-06-19T00:49:53.000000Z\"}', NULL, '2023-06-19 00:49:53', '2023-06-19 00:49:53'),
(164, 65, 4, '{\"id\":65,\"shop_id\":1,\"worker_id\":20,\"code\":\"JAAB2B3830D418\",\"name\":null,\"slug\":\"5ce67f22-268c-42cc-88c7-6d79d8caf3e1\",\"money\":9000,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-19 06:59:46\",\"step_at\":\"2023-06-19 06:59:46\",\"created_at\":\"2023-06-18T23:25:02.000000Z\",\"updated_at\":\"2023-06-19T00:56:04.000000Z\"}', 'Đã đặt', '2023-06-19 00:56:04', '2023-06-19 00:56:04'),
(165, 68, 3, '{\"id\":68,\"shop_id\":1,\"worker_id\":62,\"code\":\"JCAD824092951D\",\"name\":null,\"slug\":\"1e7118be-dcf8-4a6b-827e-37ccd181987e\",\"money\":9000,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-19 07:49:53\",\"step_at\":\"2023-06-19 07:49:53\",\"created_at\":\"2023-06-18T23:25:20.000000Z\",\"updated_at\":\"2023-06-19T01:12:56.000000Z\"}', '230619RAVB17YT', '2023-06-19 01:12:56', '2023-06-19 01:12:56'),
(166, 68, 4, '{\"id\":68,\"shop_id\":1,\"worker_id\":62,\"code\":\"JCAD824092951D\",\"name\":null,\"slug\":\"1e7118be-dcf8-4a6b-827e-37ccd181987e\",\"money\":9000,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-19 07:49:53\",\"step_at\":\"2023-06-19 07:49:53\",\"created_at\":\"2023-06-18T23:25:20.000000Z\",\"updated_at\":\"2023-06-19T01:13:37.000000Z\"}', 'Ok', '2023-06-19 01:13:37', '2023-06-19 01:13:37'),
(167, 70, 1, '{\"shop_id\":\"6\",\"is_virtual\":true,\"money_product\":0,\"money\":15200,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p>\",\"code\":\"JE8E39B6395FDA\",\"slug\":\"0c26fd22-3321-42dd-85de-cab610b6c7e8\",\"status\":1,\"updated_at\":\"2023-06-19T01:18:09.000000Z\",\"created_at\":\"2023-06-19T01:18:09.000000Z\",\"id\":70}', NULL, '2023-06-19 01:18:09', '2023-06-19 01:18:09'),
(168, 67, 2, '{\"id\":67,\"shop_id\":1,\"worker_id\":57,\"code\":\"JD1138519CF5EB\",\"name\":null,\"slug\":\"a4409806-1048-42de-a898-38741a965b2c\",\"money\":9000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-19T02:04:47.787523Z\",\"step_at\":\"2023-06-19T02:04:47.787909Z\",\"created_at\":\"2023-06-18T23:25:16.000000Z\",\"updated_at\":\"2023-06-19T02:04:47.000000Z\"}', NULL, '2023-06-19 02:04:47', '2023-06-19 02:04:47'),
(169, 66, 2, '{\"id\":66,\"shop_id\":1,\"worker_id\":66,\"code\":\"JD5C0E712608B9\",\"name\":null,\"slug\":\"95065d1a-96f6-4343-8da7-5aa2a61d51de\",\"money\":9000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-19T03:10:07.904684Z\",\"step_at\":\"2023-06-19T03:10:07.905042Z\",\"created_at\":\"2023-06-18T23:25:08.000000Z\",\"updated_at\":\"2023-06-19T03:10:07.000000Z\"}', NULL, '2023-06-19 03:10:07', '2023-06-19 03:10:07'),
(170, 67, 3, '{\"id\":67,\"shop_id\":1,\"worker_id\":57,\"code\":\"JD1138519CF5EB\",\"name\":null,\"slug\":\"a4409806-1048-42de-a898-38741a965b2c\",\"money\":9000,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-19 09:04:47\",\"step_at\":\"2023-06-19 09:04:47\",\"created_at\":\"2023-06-18T23:25:16.000000Z\",\"updated_at\":\"2023-06-19T05:42:28.000000Z\"}', '230619RSREYTJS', '2023-06-19 05:42:28', '2023-06-19 05:42:28'),
(171, 60, 7, '{\"id\":60,\"shop_id\":5,\"worker_id\":60,\"code\":\"JA287064F63B74\",\"name\":null,\"slug\":\"8c5d9cd1-4458-4253-946e-a913e6932688\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":7,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:41:39\",\"step_at\":\"2023-06-18 21:41:39\",\"created_at\":\"2023-06-18T14:29:31.000000Z\",\"updated_at\":\"2023-06-20T11:56:57.000000Z\"}', 'Đã thanh toán ngoài', '2023-06-20 11:56:57', '2023-06-20 11:56:57'),
(172, 59, 7, '{\"id\":59,\"shop_id\":5,\"worker_id\":54,\"code\":\"J4D1F270FEF243\",\"name\":null,\"slug\":\"b0c8f3ff-9a80-4944-b89c-ccfee53822da\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":7,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:04:04\",\"step_at\":\"2023-06-18 21:04:04\",\"created_at\":\"2023-06-18T13:55:18.000000Z\",\"updated_at\":\"2023-06-20T11:57:29.000000Z\"}', 'Đã thanh toán ngoài', '2023-06-20 11:57:29', '2023-06-20 11:57:29'),
(173, 58, 7, '{\"id\":58,\"shop_id\":5,\"worker_id\":57,\"code\":\"J2DBDAC40E4992\",\"name\":null,\"slug\":\"f1baca85-a422-4f31-bb4d-9c0ee86b648e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":7,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:55:14\",\"step_at\":\"2023-06-18 20:55:14\",\"created_at\":\"2023-06-18T13:54:11.000000Z\",\"updated_at\":\"2023-06-20T11:57:59.000000Z\"}', 'Đã tt ngoài', '2023-06-20 11:57:59', '2023-06-20 11:57:59'),
(174, 55, 7, '{\"id\":55,\"shop_id\":5,\"worker_id\":56,\"code\":\"J77F79BCB0BD8B\",\"name\":null,\"slug\":\"afe6d701-bbe1-412e-af75-94ad0bf89f16\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":7,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:51:46\",\"step_at\":\"2023-06-18 20:51:46\",\"created_at\":\"2023-06-18T13:46:26.000000Z\",\"updated_at\":\"2023-06-20T11:59:47.000000Z\"}', 'Đã tt ngoài', '2023-06-20 11:59:47', '2023-06-20 11:59:47'),
(175, 57, 5, '{\"id\":57,\"shop_id\":5,\"worker_id\":58,\"code\":\"J99135A127B656\",\"name\":null,\"slug\":\"ec99bb0b-7fb3-4c3d-93fb-6adf97ecd13e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:53:08\",\"step_at\":\"2023-06-18 20:53:08\",\"created_at\":\"2023-06-18T13:49:39.000000Z\",\"updated_at\":\"2023-06-20T12:08:18.000000Z\"}', NULL, '2023-06-20 12:08:18', '2023-06-20 12:08:18'),
(176, 71, 1, '{\"shop_id\":\"1\",\"is_virtual\":true,\"money_product\":0,\"money\":15000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"J3193FABB8536B\",\"slug\":\"558138ed-214d-4432-9b4f-97258bf057ce\",\"status\":1,\"updated_at\":\"2023-06-20T14:03:48.000000Z\",\"created_at\":\"2023-06-20T14:03:48.000000Z\",\"id\":71}', NULL, '2023-06-20 14:03:48', '2023-06-20 14:03:48'),
(177, 72, 1, '{\"shop_id\":1,\"code\":\"JD1E31A82A33CB\",\"name\":null,\"slug\":\"8d984b70-39de-4a41-b586-2f9a47bc37fc\",\"money\":15000,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-20T14:03:52.000000Z\",\"created_at\":\"2023-06-20T14:03:52.000000Z\",\"id\":72}', NULL, '2023-06-20 14:03:52', '2023-06-20 14:03:52'),
(179, 57, 6, '{\"id\":57,\"shop_id\":5,\"worker_id\":58,\"code\":\"J99135A127B656\",\"name\":null,\"slug\":\"ec99bb0b-7fb3-4c3d-93fb-6adf97ecd13e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:53:08\",\"step_at\":\"2023-06-18 20:53:08\",\"created_at\":\"2023-06-18T13:49:39.000000Z\",\"updated_at\":\"2023-06-20T20:46:14.000000Z\"}', 'đã đánh giá', '2023-06-20 20:46:14', '2023-06-20 20:46:14'),
(180, 73, 1, '{\"shop_id\":\"1\",\"is_virtual\":true,\"money_product\":0,\"money\":20500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng \\u1ea3o shop g\\u1eedi v\\u1ec1 \\u0111\\u1ecba ch\\u1ec9 th\\u1eadt c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1eb7t<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"JF4E6A5CEB5005\",\"slug\":\"baed714e-2746-4b63-bf45-441aaedd4609\",\"status\":1,\"updated_at\":\"2023-06-21T06:45:26.000000Z\",\"created_at\":\"2023-06-21T06:45:26.000000Z\",\"id\":73}', NULL, '2023-06-21 06:45:26', '2023-06-21 06:45:26'),
(181, 74, 1, '{\"shop_id\":1,\"code\":\"J46509708BBF2D\",\"name\":null,\"slug\":\"f2b92f7f-9d2a-4298-9560-62ee22591105\",\"money\":20500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng \\u1ea3o shop g\\u1eedi v\\u1ec1 \\u0111\\u1ecba ch\\u1ec9 th\\u1eadt c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1eb7t<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-21T06:45:31.000000Z\",\"created_at\":\"2023-06-21T06:45:31.000000Z\",\"id\":74}', NULL, '2023-06-21 06:45:31', '2023-06-21 06:45:31'),
(182, 75, 1, '{\"shop_id\":1,\"code\":\"JB8CF36AFB3A85\",\"name\":null,\"slug\":\"133fdb5b-a7d1-4dd6-8b48-ec7922d99a42\",\"money\":20500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng \\u1ea3o shop g\\u1eedi v\\u1ec1 \\u0111\\u1ecba ch\\u1ec9 th\\u1eadt c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1eb7t<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p m\\u00e3 freeship<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-21T06:45:33.000000Z\",\"created_at\":\"2023-06-21T06:45:33.000000Z\",\"id\":75}', NULL, '2023-06-21 06:45:33', '2023-06-21 06:45:33'),
(183, 61, 5, '{\"id\":61,\"shop_id\":5,\"worker_id\":59,\"code\":\"J5E88D7B57E038\",\"name\":null,\"slug\":\"c9b37c5e-e653-4d3e-826d-4f1895f76ecc\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:33:28\",\"step_at\":\"2023-06-18 21:33:28\",\"created_at\":\"2023-06-18T14:32:44.000000Z\",\"updated_at\":\"2023-06-21T07:55:38.000000Z\"}', NULL, '2023-06-21 07:55:38', '2023-06-21 07:55:38'),
(184, 61, 6, '{\"id\":61,\"shop_id\":5,\"worker_id\":59,\"code\":\"J5E88D7B57E038\",\"name\":null,\"slug\":\"c9b37c5e-e653-4d3e-826d-4f1895f76ecc\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:33:28\",\"step_at\":\"2023-06-18 21:33:28\",\"created_at\":\"2023-06-18T14:32:44.000000Z\",\"updated_at\":\"2023-06-21T07:56:30.000000Z\"}', 'ddax hoanf thanhf', '2023-06-21 07:56:30', '2023-06-21 07:56:30'),
(185, 44, 5, '{\"id\":44,\"shop_id\":1,\"worker_id\":31,\"code\":\"JEDCBB8738B385\",\"name\":null,\"slug\":\"2c603641-842b-425b-982c-a8708ce719ad\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 19:19:09\",\"step_at\":\"2023-06-17 19:19:09\",\"created_at\":\"2023-06-17T10:14:52.000000Z\",\"updated_at\":\"2023-06-21T14:51:33.000000Z\"}', 'uk', '2023-06-21 14:51:33', '2023-06-21 14:51:33');
INSERT INTO `job_histories` (`id`, `job_id`, `status`, `detail`, `desc`, `created_at`, `updated_at`) VALUES
(187, 68, 5, '{\"id\":68,\"shop_id\":1,\"worker_id\":62,\"code\":\"JCAD824092951D\",\"name\":null,\"slug\":\"1e7118be-dcf8-4a6b-827e-37ccd181987e\",\"money\":9000,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-19 07:49:53\",\"step_at\":\"2023-06-19 07:49:53\",\"created_at\":\"2023-06-18T23:25:20.000000Z\",\"updated_at\":\"2023-06-22T01:21:06.000000Z\"}', NULL, '2023-06-22 01:21:06', '2023-06-22 01:21:06'),
(188, 76, 1, '{\"shop_id\":\"6\",\"is_virtual\":true,\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"J309AC6345FEB2\",\"slug\":\"bec6eeb4-d063-4c24-a8e6-b66be4d7a9ae\",\"status\":1,\"updated_at\":\"2023-06-22T05:23:58.000000Z\",\"created_at\":\"2023-06-22T05:23:58.000000Z\",\"id\":76}', NULL, '2023-06-22 05:23:58', '2023-06-22 05:23:58'),
(189, 77, 1, '{\"shop_id\":6,\"code\":\"JEA2E10298D3EA\",\"name\":null,\"slug\":\"2fc50257-f629-42e7-b5e5-ce14a3a58da0\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-22T05:24:03.000000Z\",\"created_at\":\"2023-06-22T05:24:03.000000Z\",\"id\":77}', NULL, '2023-06-22 05:24:03', '2023-06-22 05:24:03'),
(191, 78, 1, '{\"shop_id\":\"1\",\"is_virtual\":true,\"money_product\":0,\"money\":10800,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- \\u0110\\u1ed1i v\\u1edbi shopee, c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"J802FBA38D519A\",\"slug\":\"f0694c02-e99b-4b69-a469-5d0122e396b2\",\"status\":1,\"updated_at\":\"2023-06-23T08:51:41.000000Z\",\"created_at\":\"2023-06-23T08:51:41.000000Z\",\"id\":78}', NULL, '2023-06-23 08:51:41', '2023-06-23 08:51:41'),
(193, 79, 1, '{\"shop_id\":\"5\",\"is_virtual\":true,\"money_product\":0,\"money\":11500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"J85E5834F34B86\",\"slug\":\"ba49f4d5-8525-4769-961e-53b62e733af7\",\"status\":1,\"updated_at\":\"2023-06-24T03:08:33.000000Z\",\"created_at\":\"2023-06-24T03:08:33.000000Z\",\"id\":79}', NULL, '2023-06-24 03:08:33', '2023-06-24 03:08:33'),
(194, 80, 1, '{\"shop_id\":5,\"code\":\"JC03239A872420\",\"name\":null,\"slug\":\"896d996f-8583-4bf3-8ffd-e8bcb282f743\",\"money\":11500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-24T03:08:37.000000Z\",\"created_at\":\"2023-06-24T03:08:37.000000Z\",\"id\":80}', NULL, '2023-06-24 03:08:37', '2023-06-24 03:08:37'),
(197, 81, 1, '{\"money_product\":0,\"money\":10000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"J3DF42BF3C3FF9\",\"slug\":\"6e5f08c2-c0b5-4d46-a822-f6caf78d0d76\",\"status\":1,\"updated_at\":\"2023-06-26T07:52:54.000000Z\",\"created_at\":\"2023-06-26T07:52:54.000000Z\",\"id\":81}', NULL, '2023-06-26 07:52:54', '2023-06-26 07:52:54'),
(198, 82, 1, '{\"shop_id\":1,\"code\":\"JD515F350A9D8B\",\"name\":null,\"slug\":\"578715ab-3fbc-4475-868a-0b32928fcd0f\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:53:01.000000Z\",\"created_at\":\"2023-06-26T07:53:01.000000Z\",\"id\":82}', NULL, '2023-06-26 07:53:01', '2023-06-26 07:53:01'),
(199, 83, 1, '{\"shop_id\":1,\"code\":\"JAC7089651C590\",\"name\":null,\"slug\":\"5e512340-bcae-4235-af14-ef32e2af79f2\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:53:04.000000Z\",\"created_at\":\"2023-06-26T07:53:04.000000Z\",\"id\":83}', NULL, '2023-06-26 07:53:04', '2023-06-26 07:53:04'),
(200, 84, 1, '{\"shop_id\":1,\"code\":\"J643A625AE663B\",\"name\":null,\"slug\":\"d565da2c-7bb5-4969-937a-38c58ad8cfcc\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:53:07.000000Z\",\"created_at\":\"2023-06-26T07:53:07.000000Z\",\"id\":84}', NULL, '2023-06-26 07:53:07', '2023-06-26 07:53:07'),
(201, 85, 1, '{\"shop_id\":1,\"code\":\"JC8F48B2421FFE\",\"name\":null,\"slug\":\"9e82f519-2e02-42e4-a5c4-ddc9f09d0b60\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:53:10.000000Z\",\"created_at\":\"2023-06-26T07:53:10.000000Z\",\"id\":85}', NULL, '2023-06-26 07:53:10', '2023-06-26 07:53:10'),
(202, 86, 1, '{\"shop_id\":1,\"code\":\"J0B47C69BB7CF6\",\"name\":null,\"slug\":\"7f6ab058-6ce5-48dc-b1dc-b6755739a78a\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:53:12.000000Z\",\"created_at\":\"2023-06-26T07:53:12.000000Z\",\"id\":86}', NULL, '2023-06-26 07:53:12', '2023-06-26 07:53:12'),
(203, 87, 1, '{\"money_product\":0,\"money\":10000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"JC0E8475801441\",\"slug\":\"89c143c6-2146-457b-961c-8fb1e341c4e9\",\"status\":1,\"updated_at\":\"2023-06-26T07:55:31.000000Z\",\"created_at\":\"2023-06-26T07:55:31.000000Z\",\"id\":87}', NULL, '2023-06-26 07:55:31', '2023-06-26 07:55:31'),
(204, 88, 1, '{\"shop_id\":1,\"code\":\"JC420D2D0D0436\",\"name\":null,\"slug\":\"5e786a5e-7552-494b-a427-e3d544b798c5\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:55:34.000000Z\",\"created_at\":\"2023-06-26T07:55:34.000000Z\",\"id\":88}', NULL, '2023-06-26 07:55:34', '2023-06-26 07:55:34'),
(205, 89, 1, '{\"shop_id\":1,\"code\":\"J23A79B4380909\",\"name\":null,\"slug\":\"18f8e6c1-4da8-4db4-89eb-15f767cda095\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:55:37.000000Z\",\"created_at\":\"2023-06-26T07:55:37.000000Z\",\"id\":89}', NULL, '2023-06-26 07:55:37', '2023-06-26 07:55:37'),
(206, 90, 1, '{\"shop_id\":1,\"code\":\"J6A111C469148E\",\"name\":null,\"slug\":\"37f69ba9-4afc-4c90-b862-c08c7365fadc\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:55:40.000000Z\",\"created_at\":\"2023-06-26T07:55:40.000000Z\",\"id\":90}', NULL, '2023-06-26 07:55:40', '2023-06-26 07:55:40'),
(207, 90, 2, '{\"id\":90,\"shop_id\":1,\"worker_id\":60,\"code\":\"J6A111C469148E\",\"name\":null,\"slug\":\"37f69ba9-4afc-4c90-b862-c08c7365fadc\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26T08:08:41.981554Z\",\"step_at\":\"2023-06-26T08:08:41.981823Z\",\"created_at\":\"2023-06-26T07:55:40.000000Z\",\"updated_at\":\"2023-06-26T08:08:41.000000Z\"}', NULL, '2023-06-26 08:08:41', '2023-06-26 08:08:41'),
(208, 89, 2, '{\"id\":89,\"shop_id\":1,\"worker_id\":84,\"code\":\"J23A79B4380909\",\"name\":null,\"slug\":\"18f8e6c1-4da8-4db4-89eb-15f767cda095\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26T08:16:41.012334Z\",\"step_at\":\"2023-06-26T08:16:41.012602Z\",\"created_at\":\"2023-06-26T07:55:37.000000Z\",\"updated_at\":\"2023-06-26T08:16:41.000000Z\"}', NULL, '2023-06-26 08:16:41', '2023-06-26 08:16:41'),
(209, 90, 3, '{\"id\":90,\"shop_id\":1,\"worker_id\":60,\"code\":\"J6A111C469148E\",\"name\":null,\"slug\":\"37f69ba9-4afc-4c90-b862-c08c7365fadc\",\"money\":10000,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 15:08:41\",\"step_at\":\"2023-06-26 15:08:41\",\"created_at\":\"2023-06-26T07:55:40.000000Z\",\"updated_at\":\"2023-06-26T08:35:19.000000Z\"}', '577490869525580672', '2023-06-26 08:35:19', '2023-06-26 08:35:19'),
(210, 89, 3, '{\"id\":89,\"shop_id\":1,\"worker_id\":84,\"code\":\"J23A79B4380909\",\"name\":null,\"slug\":\"18f8e6c1-4da8-4db4-89eb-15f767cda095\",\"money\":10000,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 15:16:41\",\"step_at\":\"2023-06-26 15:16:41\",\"created_at\":\"2023-06-26T07:55:37.000000Z\",\"updated_at\":\"2023-06-26T08:36:44.000000Z\"}', '577490877540829252', '2023-06-26 08:36:44', '2023-06-26 08:36:44'),
(211, 90, 4, '{\"id\":90,\"shop_id\":1,\"worker_id\":60,\"code\":\"J6A111C469148E\",\"name\":null,\"slug\":\"37f69ba9-4afc-4c90-b862-c08c7365fadc\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 15:08:41\",\"step_at\":\"2023-06-26 15:08:41\",\"created_at\":\"2023-06-26T07:55:40.000000Z\",\"updated_at\":\"2023-06-26T08:40:29.000000Z\"}', 'Đã đặt xong đợi đánh giá', '2023-06-26 08:40:29', '2023-06-26 08:40:29'),
(212, 89, 4, '{\"id\":89,\"shop_id\":1,\"worker_id\":84,\"code\":\"J23A79B4380909\",\"name\":null,\"slug\":\"18f8e6c1-4da8-4db4-89eb-15f767cda095\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 15:16:41\",\"step_at\":\"2023-06-26 15:16:41\",\"created_at\":\"2023-06-26T07:55:37.000000Z\",\"updated_at\":\"2023-06-26T08:40:47.000000Z\"}', 'Đã đặt xong đợi đánh giá', '2023-06-26 08:40:47', '2023-06-26 08:40:47'),
(213, 88, 2, '{\"id\":88,\"shop_id\":1,\"worker_id\":86,\"code\":\"JC420D2D0D0436\",\"name\":null,\"slug\":\"5e786a5e-7552-494b-a427-e3d544b798c5\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26T08:46:02.226454Z\",\"step_at\":\"2023-06-26T08:46:02.226694Z\",\"created_at\":\"2023-06-26T07:55:34.000000Z\",\"updated_at\":\"2023-06-26T08:46:02.000000Z\"}', NULL, '2023-06-26 08:46:02', '2023-06-26 08:46:02'),
(214, 88, 3, '{\"id\":88,\"shop_id\":1,\"worker_id\":86,\"code\":\"JC420D2D0D0436\",\"name\":null,\"slug\":\"5e786a5e-7552-494b-a427-e3d544b798c5\",\"money\":10000,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 15:46:02\",\"step_at\":\"2023-06-26 15:46:02\",\"created_at\":\"2023-06-26T07:55:34.000000Z\",\"updated_at\":\"2023-06-26T08:53:15.000000Z\"}', '577490939934575295', '2023-06-26 08:53:15', '2023-06-26 08:53:15'),
(215, 88, 4, '{\"id\":88,\"shop_id\":1,\"worker_id\":86,\"code\":\"JC420D2D0D0436\",\"name\":null,\"slug\":\"5e786a5e-7552-494b-a427-e3d544b798c5\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 15:46:02\",\"step_at\":\"2023-06-26 15:46:02\",\"created_at\":\"2023-06-26T07:55:34.000000Z\",\"updated_at\":\"2023-06-26T09:02:30.000000Z\"}', 'đợi đánh giá', '2023-06-26 09:02:30', '2023-06-26 09:02:30'),
(216, 86, 2, '{\"id\":86,\"shop_id\":1,\"worker_id\":26,\"code\":\"J0B47C69BB7CF6\",\"name\":null,\"slug\":\"7f6ab058-6ce5-48dc-b1dc-b6755739a78a\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26T09:38:00.107071Z\",\"step_at\":\"2023-06-26T09:38:00.107649Z\",\"created_at\":\"2023-06-26T07:53:12.000000Z\",\"updated_at\":\"2023-06-26T09:38:00.000000Z\"}', NULL, '2023-06-26 09:38:00', '2023-06-26 09:38:00'),
(217, 81, 2, '{\"id\":81,\"shop_id\":1,\"worker_id\":87,\"code\":\"J3DF42BF3C3FF9\",\"name\":null,\"slug\":\"6e5f08c2-c0b5-4d46-a822-f6caf78d0d76\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26T09:39:44.254598Z\",\"step_at\":\"2023-06-26T09:39:44.254911Z\",\"created_at\":\"2023-06-26T07:52:54.000000Z\",\"updated_at\":\"2023-06-26T09:39:44.000000Z\"}', NULL, '2023-06-26 09:39:44', '2023-06-26 09:39:44'),
(218, 87, 2, '{\"id\":87,\"shop_id\":1,\"worker_id\":44,\"code\":\"JC0E8475801441\",\"name\":null,\"slug\":\"89c143c6-2146-457b-961c-8fb1e341c4e9\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26T09:43:38.837518Z\",\"step_at\":\"2023-06-26T09:43:38.837740Z\",\"created_at\":\"2023-06-26T07:55:31.000000Z\",\"updated_at\":\"2023-06-26T09:43:38.000000Z\"}', NULL, '2023-06-26 09:43:38', '2023-06-26 09:43:38'),
(219, 81, 3, '{\"id\":81,\"shop_id\":1,\"worker_id\":87,\"code\":\"J3DF42BF3C3FF9\",\"name\":null,\"slug\":\"6e5f08c2-c0b5-4d46-a822-f6caf78d0d76\",\"money\":10000,\"money_product\":0,\"money_product_addition\":\"0\",\"status\":3,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 16:39:44\",\"step_at\":\"2023-06-26 16:39:44\",\"created_at\":\"2023-06-26T07:52:54.000000Z\",\"updated_at\":\"2023-06-26T09:55:59.000000Z\"}', '577491178013231627', '2023-06-26 09:55:59', '2023-06-26 09:55:59'),
(220, 85, 2, '{\"id\":85,\"shop_id\":1,\"worker_id\":89,\"code\":\"JC8F48B2421FFE\",\"name\":null,\"slug\":\"9e82f519-2e02-42e4-a5c4-ddc9f09d0b60\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26T09:57:00.744315Z\",\"step_at\":\"2023-06-26T09:57:00.744577Z\",\"created_at\":\"2023-06-26T07:53:10.000000Z\",\"updated_at\":\"2023-06-26T09:57:00.000000Z\"}', NULL, '2023-06-26 09:57:00', '2023-06-26 09:57:00'),
(221, 81, 4, '{\"id\":81,\"shop_id\":1,\"worker_id\":87,\"code\":\"J3DF42BF3C3FF9\",\"name\":null,\"slug\":\"6e5f08c2-c0b5-4d46-a822-f6caf78d0d76\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 16:39:44\",\"step_at\":\"2023-06-26 16:39:44\",\"created_at\":\"2023-06-26T07:52:54.000000Z\",\"updated_at\":\"2023-06-26T10:03:11.000000Z\"}', 'OKE ĐỢI ĐÁNH GIÁ VIẾT CHỮ', '2023-06-26 10:03:11', '2023-06-26 10:03:11'),
(222, 84, 7, '{\"id\":84,\"shop_id\":1,\"worker_id\":null,\"code\":\"J643A625AE663B\",\"name\":null,\"slug\":\"d565da2c-7bb5-4969-937a-38c58ad8cfcc\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":7,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"created_at\":\"2023-06-26T07:53:07.000000Z\",\"updated_at\":\"2023-06-26T10:21:07.000000Z\"}', NULL, '2023-06-26 10:21:07', '2023-06-26 10:21:07'),
(223, 83, 7, '{\"id\":83,\"shop_id\":1,\"worker_id\":null,\"code\":\"JAC7089651C590\",\"name\":null,\"slug\":\"5e512340-bcae-4235-af14-ef32e2af79f2\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":7,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"created_at\":\"2023-06-26T07:53:04.000000Z\",\"updated_at\":\"2023-06-26T10:21:20.000000Z\"}', NULL, '2023-06-26 10:21:20', '2023-06-26 10:21:20'),
(224, 82, 7, '{\"id\":82,\"shop_id\":1,\"worker_id\":null,\"code\":\"JD515F350A9D8B\",\"name\":null,\"slug\":\"578715ab-3fbc-4475-868a-0b32928fcd0f\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":7,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"created_at\":\"2023-06-26T07:53:01.000000Z\",\"updated_at\":\"2023-06-26T10:22:15.000000Z\"}', NULL, '2023-06-26 10:22:15', '2023-06-26 10:22:15'),
(225, 86, 7, '{\"id\":86,\"shop_id\":1,\"worker_id\":26,\"code\":\"J0B47C69BB7CF6\",\"name\":null,\"slug\":\"7f6ab058-6ce5-48dc-b1dc-b6755739a78a\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":7,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 16:38:00\",\"step_at\":\"2023-06-26 16:38:00\",\"created_at\":\"2023-06-26T07:53:12.000000Z\",\"updated_at\":\"2023-06-26T10:22:48.000000Z\"}', 'rep chậm', '2023-06-26 10:22:48', '2023-06-26 10:22:48'),
(226, 85, 7, '{\"id\":85,\"shop_id\":1,\"worker_id\":89,\"code\":\"JC8F48B2421FFE\",\"name\":null,\"slug\":\"9e82f519-2e02-42e4-a5c4-ddc9f09d0b60\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":7,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 16:57:00\",\"step_at\":\"2023-06-26 16:57:00\",\"created_at\":\"2023-06-26T07:53:10.000000Z\",\"updated_at\":\"2023-06-26T10:23:49.000000Z\"}', 'Nhận đơn nhưng k nhắn shop. nên shop huỷ', '2023-06-26 10:23:49', '2023-06-26 10:23:49'),
(227, 29, 6, '{\"id\":29,\"shop_id\":1,\"worker_id\":17,\"status\":6,\"step_at\":\"2023-06-15 20:56:11\",\"updated_at\":\"2023-06-26T17:01:01.000000Z\"}', 'Tự động hoàn thành công việc do quá thời gian quy định.', '2023-06-26 17:01:01', '2023-06-26 17:01:01'),
(228, 81, 5, '{\"id\":81,\"shop_id\":1,\"worker_id\":87,\"code\":\"J3DF42BF3C3FF9\",\"name\":null,\"slug\":\"6e5f08c2-c0b5-4d46-a822-f6caf78d0d76\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 16:39:44\",\"step_at\":\"2023-06-26 16:39:44\",\"created_at\":\"2023-06-26T07:52:54.000000Z\",\"updated_at\":\"2023-06-27T10:22:35.000000Z\"}', 'Sản phẩm chất lượng giao hàng nhanh chóng shop phục vụ thân thiện mọi 10/10', '2023-06-27 10:22:35', '2023-06-27 10:22:35'),
(230, 90, 5, '{\"id\":90,\"shop_id\":1,\"worker_id\":60,\"code\":\"J6A111C469148E\",\"name\":null,\"slug\":\"37f69ba9-4afc-4c90-b862-c08c7365fadc\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 15:08:41\",\"step_at\":\"2023-06-26 15:08:41\",\"created_at\":\"2023-06-26T07:55:40.000000Z\",\"updated_at\":\"2023-06-28T06:52:45.000000Z\"}', '577490869525580672', '2023-06-28 06:52:45', '2023-06-28 06:52:45'),
(232, 91, 1, '{\"shop_id\":\"1\",\"is_virtual\":true,\"money_product\":0,\"money\":11500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"J3204AA3498659\",\"slug\":\"6d32fc84-e5be-4dca-aec2-2c1a81646408\",\"status\":1,\"updated_at\":\"2023-06-29T08:26:54.000000Z\",\"created_at\":\"2023-06-29T08:26:54.000000Z\",\"id\":91}', NULL, '2023-06-29 08:26:54', '2023-06-29 08:26:54'),
(233, 92, 1, '{\"shop_id\":1,\"code\":\"J9776059AAF7C8\",\"name\":null,\"slug\":\"dfad4048-01e9-457f-bdbd-db1d6327e8bd\",\"money\":11500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-29T08:26:58.000000Z\",\"created_at\":\"2023-06-29T08:26:58.000000Z\",\"id\":92}', NULL, '2023-06-29 08:26:58', '2023-06-29 08:26:58'),
(234, 93, 1, '{\"shop_id\":1,\"code\":\"JABFE4C3970871\",\"name\":null,\"slug\":\"e1cf2e71-145f-4970-9d77-e3b3a9f42af6\",\"money\":11500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-29T08:27:01.000000Z\",\"created_at\":\"2023-06-29T08:27:01.000000Z\",\"id\":93}', NULL, '2023-06-29 08:27:01', '2023-06-29 08:27:01'),
(235, 94, 1, '{\"shop_id\":1,\"code\":\"J26139A570D656\",\"name\":null,\"slug\":\"7e9e672c-6502-4581-9eb3-389e4f273384\",\"money\":11500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-29T08:27:04.000000Z\",\"created_at\":\"2023-06-29T08:27:04.000000Z\",\"id\":94}', NULL, '2023-06-29 08:27:04', '2023-06-29 08:27:04'),
(236, 95, 1, '{\"shop_id\":1,\"code\":\"J6904778C29536\",\"name\":null,\"slug\":\"9148416b-9839-4c1c-85cf-3ce347cefd56\",\"money\":11500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-29T08:27:07.000000Z\",\"created_at\":\"2023-06-29T08:27:07.000000Z\",\"id\":95}', NULL, '2023-06-29 08:27:07', '2023-06-29 08:27:07'),
(237, 96, 1, '{\"shop_id\":1,\"code\":\"J0459FEE1ADCB5\",\"name\":null,\"slug\":\"de087f73-42df-4902-ba04-124aeaac504c\",\"money\":11500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-29T08:27:09.000000Z\",\"created_at\":\"2023-06-29T08:27:09.000000Z\",\"id\":96}', NULL, '2023-06-29 08:27:09', '2023-06-29 08:27:09'),
(238, 97, 1, '{\"shop_id\":1,\"code\":\"JD02819C651D3B\",\"name\":null,\"slug\":\"f75aea3e-9149-4a76-9722-1e369801a132\",\"money\":11500,\"money_product\":0,\"status\":1,\"is_virtual\":true,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-29T08:27:11.000000Z\",\"created_at\":\"2023-06-29T08:27:11.000000Z\",\"id\":97}', NULL, '2023-06-29 08:27:11', '2023-06-29 08:27:11');
INSERT INTO `job_histories` (`id`, `job_id`, `status`, `detail`, `desc`, `created_at`, `updated_at`) VALUES
(239, 89, 5, '{\"id\":89,\"shop_id\":1,\"worker_id\":84,\"code\":\"J23A79B4380909\",\"name\":null,\"slug\":\"18f8e6c1-4da8-4db4-89eb-15f767cda095\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 15:16:41\",\"step_at\":\"2023-06-26 15:16:41\",\"created_at\":\"2023-06-26T07:55:37.000000Z\",\"updated_at\":\"2023-06-29T11:07:49.000000Z\"}', 'đã đánh giá rồi ạ', '2023-06-29 11:07:49', '2023-06-29 11:07:49'),
(240, 88, 5, '{\"id\":88,\"shop_id\":1,\"worker_id\":86,\"code\":\"JC420D2D0D0436\",\"name\":null,\"slug\":\"5e786a5e-7552-494b-a427-e3d544b798c5\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":5,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 15:46:02\",\"step_at\":\"2023-06-26 15:46:02\",\"created_at\":\"2023-06-26T07:55:34.000000Z\",\"updated_at\":\"2023-06-29T12:49:27.000000Z\"}', NULL, '2023-06-29 12:49:27', '2023-06-29 12:49:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_status_new`
--

CREATE TABLE `job_status_new` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `job_status_new`
--

INSERT INTO `job_status_new` (`id`, `user_id`, `type`, `status`, `number`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 0, '2023-06-14 10:35:15', '2023-06-26 10:21:26'),
(2, 1, 1, 2, 0, '2023-06-14 10:35:15', '2023-06-18 13:51:51'),
(3, 1, 2, 2, 0, '2023-06-14 10:35:15', '2023-06-26 10:22:24'),
(4, 1, 1, 3, 0, '2023-06-14 10:35:15', '2023-06-18 13:51:52'),
(5, 1, 2, 3, 1, '2023-06-14 10:35:15', '2023-06-26 09:55:59'),
(6, 1, 1, 4, 0, '2023-06-14 10:35:15', '2023-06-18 13:51:46'),
(7, 1, 2, 4, 0, '2023-06-14 10:35:15', '2023-06-26 09:02:42'),
(8, 1, 1, 5, 0, '2023-06-14 10:35:15', '2023-06-18 13:51:50'),
(9, 1, 2, 5, 4, '2023-06-14 10:35:15', '2023-06-29 12:49:27'),
(10, 1, 1, 6, 0, '2023-06-14 10:35:15', '2023-06-18 13:51:48'),
(11, 1, 2, 6, 0, '2023-06-14 10:35:15', '2023-06-18 13:21:35'),
(12, 1, 1, 7, 0, '2023-06-14 10:35:15', '2023-06-15 05:09:02'),
(13, 1, 2, 7, 0, '2023-06-14 10:35:15', '2023-06-14 10:35:15'),
(14, 2, 2, 1, 0, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(15, 2, 1, 2, 0, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(16, 2, 2, 2, 0, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(17, 2, 1, 3, 0, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(18, 2, 2, 3, 0, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(19, 2, 1, 4, 0, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(20, 2, 2, 4, 0, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(21, 2, 1, 5, 0, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(22, 2, 2, 5, 0, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(23, 2, 1, 6, 0, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(24, 2, 2, 6, 0, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(25, 2, 1, 7, 0, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(26, 2, 2, 7, 0, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(27, 3, 2, 1, 0, '2023-06-14 11:27:48', '2023-06-14 11:27:48'),
(28, 3, 1, 2, 0, '2023-06-14 11:27:48', '2023-06-14 12:35:16'),
(29, 3, 2, 2, 0, '2023-06-14 11:27:48', '2023-06-14 11:27:48'),
(30, 3, 1, 3, 0, '2023-06-14 11:27:48', '2023-06-14 12:35:19'),
(31, 3, 2, 3, 0, '2023-06-14 11:27:48', '2023-06-14 11:27:48'),
(32, 3, 1, 4, 0, '2023-06-14 11:27:48', '2023-06-14 12:35:21'),
(33, 3, 2, 4, 0, '2023-06-14 11:27:48', '2023-06-14 11:27:48'),
(34, 3, 1, 5, 0, '2023-06-14 11:27:48', '2023-06-14 12:35:30'),
(35, 3, 2, 5, 0, '2023-06-14 11:27:48', '2023-06-14 11:27:48'),
(36, 3, 1, 6, 0, '2023-06-14 11:27:48', '2023-06-14 12:39:42'),
(37, 3, 2, 6, 0, '2023-06-14 11:27:48', '2023-06-14 11:27:48'),
(38, 3, 1, 7, 0, '2023-06-14 11:27:48', '2023-06-14 11:27:48'),
(39, 3, 2, 7, 0, '2023-06-14 11:27:48', '2023-06-14 11:27:48'),
(40, 4, 2, 1, 0, '2023-06-14 11:31:17', '2023-06-14 11:31:17'),
(41, 4, 1, 2, 0, '2023-06-14 11:31:17', '2023-06-14 11:54:34'),
(42, 4, 2, 2, 0, '2023-06-14 11:31:17', '2023-06-14 11:31:17'),
(43, 4, 1, 3, 0, '2023-06-14 11:31:17', '2023-06-14 12:48:22'),
(44, 4, 2, 3, 0, '2023-06-14 11:31:17', '2023-06-14 11:31:17'),
(45, 4, 1, 4, 0, '2023-06-14 11:31:17', '2023-06-14 12:49:06'),
(46, 4, 2, 4, 0, '2023-06-14 11:31:17', '2023-06-14 11:31:17'),
(47, 4, 1, 5, 0, '2023-06-14 11:31:17', '2023-06-14 12:49:17'),
(48, 4, 2, 5, 0, '2023-06-14 11:31:17', '2023-06-14 11:31:17'),
(49, 4, 1, 6, 0, '2023-06-14 11:31:17', '2023-06-14 12:49:55'),
(50, 4, 2, 6, 0, '2023-06-14 11:31:17', '2023-06-14 11:31:17'),
(51, 4, 1, 7, 0, '2023-06-14 11:31:17', '2023-06-14 11:31:17'),
(52, 4, 2, 7, 0, '2023-06-14 11:31:17', '2023-06-14 11:31:17'),
(53, 5, 2, 1, 0, '2023-06-14 12:13:59', '2023-06-18 14:43:49'),
(54, 5, 1, 2, 0, '2023-06-14 12:13:59', '2023-06-18 15:12:28'),
(55, 5, 2, 2, 0, '2023-06-14 12:13:59', '2023-06-20 09:57:34'),
(56, 5, 1, 3, 0, '2023-06-14 12:13:59', '2023-06-18 15:20:05'),
(57, 5, 2, 3, 0, '2023-06-14 12:13:59', '2023-06-20 09:57:37'),
(58, 5, 1, 4, 0, '2023-06-14 12:14:00', '2023-06-22 02:57:33'),
(59, 5, 2, 4, 0, '2023-06-14 12:14:00', '2023-06-22 02:57:41'),
(60, 5, 1, 5, 0, '2023-06-14 12:14:00', '2023-06-20 11:55:10'),
(61, 5, 2, 5, 0, '2023-06-14 12:14:00', '2023-06-22 14:14:13'),
(62, 5, 1, 6, 0, '2023-06-14 12:14:00', '2023-06-16 01:20:54'),
(63, 5, 2, 6, 0, '2023-06-14 12:14:00', '2023-06-22 14:14:22'),
(64, 5, 1, 7, 0, '2023-06-14 12:14:00', '2023-06-16 01:21:01'),
(65, 5, 2, 7, 0, '2023-06-14 12:14:00', '2023-06-21 05:19:55'),
(66, 6, 2, 1, 0, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(67, 6, 1, 2, 0, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(68, 6, 2, 2, 0, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(69, 6, 1, 3, 0, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(70, 6, 2, 3, 0, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(71, 6, 1, 4, 0, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(72, 6, 2, 4, 0, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(73, 6, 1, 5, 0, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(74, 6, 2, 5, 0, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(75, 6, 1, 6, 0, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(76, 6, 2, 6, 0, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(77, 6, 1, 7, 0, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(78, 6, 2, 7, 0, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(79, 7, 2, 1, 0, '2023-06-14 13:48:20', '2023-06-14 13:48:20'),
(80, 7, 1, 2, 0, '2023-06-14 13:48:20', '2023-06-14 13:48:20'),
(81, 7, 2, 2, 0, '2023-06-14 13:48:20', '2023-06-14 13:48:20'),
(82, 7, 1, 3, 0, '2023-06-14 13:48:20', '2023-06-14 13:48:20'),
(83, 7, 2, 3, 0, '2023-06-14 13:48:20', '2023-06-14 13:48:20'),
(84, 7, 1, 4, 0, '2023-06-14 13:48:20', '2023-06-14 13:48:20'),
(85, 7, 2, 4, 0, '2023-06-14 13:48:20', '2023-06-14 13:48:20'),
(86, 7, 1, 5, 0, '2023-06-14 13:48:20', '2023-06-14 13:48:20'),
(87, 7, 2, 5, 0, '2023-06-14 13:48:20', '2023-06-14 13:48:20'),
(88, 7, 1, 6, 0, '2023-06-14 13:48:20', '2023-06-14 13:48:20'),
(89, 7, 2, 6, 0, '2023-06-14 13:48:20', '2023-06-14 13:48:20'),
(90, 7, 1, 7, 0, '2023-06-14 13:48:20', '2023-06-14 13:48:20'),
(91, 7, 2, 7, 0, '2023-06-14 13:48:20', '2023-06-14 13:48:20'),
(92, 8, 2, 1, 0, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(93, 8, 1, 2, 0, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(94, 8, 2, 2, 0, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(95, 8, 1, 3, 0, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(96, 8, 2, 3, 0, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(97, 8, 1, 4, 0, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(98, 8, 2, 4, 0, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(99, 8, 1, 5, 0, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(100, 8, 2, 5, 0, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(101, 8, 1, 6, 0, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(102, 8, 2, 6, 0, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(103, 8, 1, 7, 0, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(104, 8, 2, 7, 0, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(105, 9, 2, 1, 0, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(106, 9, 1, 2, 0, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(107, 9, 2, 2, 0, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(108, 9, 1, 3, 0, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(109, 9, 2, 3, 0, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(110, 9, 1, 4, 0, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(111, 9, 2, 4, 0, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(112, 9, 1, 5, 0, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(113, 9, 2, 5, 0, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(114, 9, 1, 6, 0, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(115, 9, 2, 6, 0, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(116, 9, 1, 7, 0, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(117, 9, 2, 7, 0, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(118, 10, 2, 1, 0, '2023-06-14 15:03:55', '2023-06-14 15:03:55'),
(119, 10, 1, 2, 0, '2023-06-14 15:03:55', '2023-06-14 15:06:23'),
(120, 10, 2, 2, 0, '2023-06-14 15:03:55', '2023-06-14 15:03:55'),
(121, 10, 1, 3, 0, '2023-06-14 15:03:55', '2023-06-14 15:06:26'),
(122, 10, 2, 3, 0, '2023-06-14 15:03:55', '2023-06-14 15:03:55'),
(123, 10, 1, 4, 0, '2023-06-14 15:03:55', '2023-06-14 15:03:55'),
(124, 10, 2, 4, 0, '2023-06-14 15:03:55', '2023-06-14 15:03:55'),
(125, 10, 1, 5, 0, '2023-06-14 15:03:55', '2023-06-14 15:03:55'),
(126, 10, 2, 5, 0, '2023-06-14 15:03:55', '2023-06-14 15:03:55'),
(127, 10, 1, 6, 0, '2023-06-14 15:03:55', '2023-06-14 15:03:55'),
(128, 10, 2, 6, 0, '2023-06-14 15:03:55', '2023-06-14 15:03:55'),
(129, 10, 1, 7, 0, '2023-06-14 15:03:55', '2023-06-14 15:03:55'),
(130, 10, 2, 7, 0, '2023-06-14 15:03:55', '2023-06-14 15:03:55'),
(131, 11, 2, 1, 0, '2023-06-14 15:38:19', '2023-06-14 15:38:19'),
(132, 11, 1, 2, 0, '2023-06-14 15:38:19', '2023-06-30 15:23:43'),
(133, 11, 2, 2, 0, '2023-06-14 15:38:19', '2023-06-14 15:38:19'),
(134, 11, 1, 3, 0, '2023-06-14 15:38:19', '2023-06-30 15:23:45'),
(135, 11, 2, 3, 0, '2023-06-14 15:38:19', '2023-06-14 15:38:19'),
(136, 11, 1, 4, 0, '2023-06-14 15:38:19', '2023-06-30 15:23:46'),
(137, 11, 2, 4, 0, '2023-06-14 15:38:19', '2023-06-14 15:38:19'),
(138, 11, 1, 5, 0, '2023-06-14 15:38:19', '2023-06-30 15:23:47'),
(139, 11, 2, 5, 0, '2023-06-14 15:38:19', '2023-06-14 15:38:19'),
(140, 11, 1, 6, 0, '2023-06-14 15:38:19', '2023-06-30 15:23:48'),
(141, 11, 2, 6, 0, '2023-06-14 15:38:19', '2023-06-14 15:38:19'),
(142, 11, 1, 7, 0, '2023-06-14 15:38:19', '2023-06-30 15:23:49'),
(143, 11, 2, 7, 0, '2023-06-14 15:38:19', '2023-06-14 15:38:19'),
(144, 12, 2, 1, 0, '2023-06-15 02:36:55', '2023-06-15 02:36:55'),
(145, 12, 1, 2, 0, '2023-06-15 02:36:55', '2023-06-15 03:14:30'),
(146, 12, 2, 2, 0, '2023-06-15 02:36:55', '2023-06-15 02:36:55'),
(147, 12, 1, 3, 0, '2023-06-15 02:36:55', '2023-06-15 02:53:08'),
(148, 12, 2, 3, 0, '2023-06-15 02:36:55', '2023-06-15 02:36:55'),
(149, 12, 1, 4, 0, '2023-06-15 02:36:55', '2023-06-15 02:53:10'),
(150, 12, 2, 4, 0, '2023-06-15 02:36:55', '2023-06-15 02:36:55'),
(151, 12, 1, 5, 0, '2023-06-15 02:36:55', '2023-06-15 02:36:55'),
(152, 12, 2, 5, 0, '2023-06-15 02:36:55', '2023-06-15 02:36:55'),
(153, 12, 1, 6, 0, '2023-06-15 02:36:55', '2023-06-15 02:36:55'),
(154, 12, 2, 6, 0, '2023-06-15 02:36:55', '2023-06-15 02:36:55'),
(155, 12, 1, 7, 0, '2023-06-15 02:36:55', '2023-06-15 02:36:55'),
(156, 12, 2, 7, 0, '2023-06-15 02:36:55', '2023-06-15 02:36:55'),
(157, 13, 2, 1, 0, '2023-06-15 05:40:26', '2023-06-15 05:40:26'),
(158, 13, 1, 2, 0, '2023-06-15 05:40:26', '2023-06-15 05:40:26'),
(159, 13, 2, 2, 0, '2023-06-15 05:40:26', '2023-06-15 05:40:26'),
(160, 13, 1, 3, 0, '2023-06-15 05:40:26', '2023-06-15 08:24:53'),
(161, 13, 2, 3, 0, '2023-06-15 05:40:26', '2023-06-15 05:40:26'),
(162, 13, 1, 4, 0, '2023-06-15 05:40:26', '2023-06-15 05:40:26'),
(163, 13, 2, 4, 0, '2023-06-15 05:40:26', '2023-06-15 05:40:26'),
(164, 13, 1, 5, 0, '2023-06-15 05:40:26', '2023-06-15 05:40:26'),
(165, 13, 2, 5, 0, '2023-06-15 05:40:26', '2023-06-15 05:40:26'),
(166, 13, 1, 6, 0, '2023-06-15 05:40:26', '2023-06-15 05:40:26'),
(167, 13, 2, 6, 0, '2023-06-15 05:40:26', '2023-06-15 05:40:26'),
(168, 13, 1, 7, 0, '2023-06-15 05:40:26', '2023-06-15 05:40:26'),
(169, 13, 2, 7, 0, '2023-06-15 05:40:26', '2023-06-15 05:40:26'),
(170, 14, 2, 1, 0, '2023-06-15 07:28:39', '2023-06-15 07:49:37'),
(171, 14, 1, 2, 0, '2023-06-15 07:28:39', '2023-06-15 07:28:39'),
(172, 14, 2, 2, 0, '2023-06-15 07:28:39', '2023-06-15 07:49:38'),
(173, 14, 1, 3, 0, '2023-06-15 07:28:39', '2023-06-15 07:28:39'),
(174, 14, 2, 3, 0, '2023-06-15 07:28:39', '2023-06-15 07:50:11'),
(175, 14, 1, 4, 0, '2023-06-15 07:28:39', '2023-06-15 07:37:16'),
(176, 14, 2, 4, 0, '2023-06-15 07:28:39', '2023-06-15 07:28:39'),
(177, 14, 1, 5, 0, '2023-06-15 07:28:39', '2023-06-15 07:28:39'),
(178, 14, 2, 5, 0, '2023-06-15 07:28:39', '2023-06-15 07:50:13'),
(179, 14, 1, 6, 0, '2023-06-15 07:28:39', '2023-06-15 07:39:15'),
(180, 14, 2, 6, 0, '2023-06-15 07:28:39', '2023-06-15 07:50:09'),
(181, 14, 1, 7, 0, '2023-06-15 07:28:39', '2023-06-15 07:28:39'),
(182, 14, 2, 7, 0, '2023-06-15 07:28:39', '2023-06-15 07:28:39'),
(183, 15, 2, 1, 0, '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(184, 15, 1, 2, 0, '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(185, 15, 2, 2, 0, '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(186, 15, 1, 3, 0, '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(187, 15, 2, 3, 0, '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(188, 15, 1, 4, 0, '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(189, 15, 2, 4, 0, '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(190, 15, 1, 5, 0, '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(191, 15, 2, 5, 0, '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(192, 15, 1, 6, 0, '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(193, 15, 2, 6, 0, '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(194, 15, 1, 7, 0, '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(195, 15, 2, 7, 0, '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(196, 16, 2, 1, 0, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(197, 16, 1, 2, 0, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(198, 16, 2, 2, 0, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(199, 16, 1, 3, 0, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(200, 16, 2, 3, 0, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(201, 16, 1, 4, 0, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(202, 16, 2, 4, 0, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(203, 16, 1, 5, 0, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(204, 16, 2, 5, 0, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(205, 16, 1, 6, 0, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(206, 16, 2, 6, 0, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(207, 16, 1, 7, 0, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(208, 16, 2, 7, 0, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(209, 17, 2, 1, 0, '2023-06-15 13:53:59', '2023-06-15 13:53:59'),
(210, 17, 1, 2, 0, '2023-06-15 13:53:59', '2023-06-15 14:00:12'),
(211, 17, 2, 2, 0, '2023-06-15 13:53:59', '2023-06-15 13:53:59'),
(212, 17, 1, 3, 0, '2023-06-15 13:53:59', '2023-06-15 13:59:09'),
(213, 17, 2, 3, 0, '2023-06-15 13:53:59', '2023-06-15 13:53:59'),
(214, 17, 1, 4, 0, '2023-06-15 13:53:59', '2023-06-15 13:53:59'),
(215, 17, 2, 4, 0, '2023-06-15 13:53:59', '2023-06-15 13:53:59'),
(216, 17, 1, 5, 0, '2023-06-15 13:53:59', '2023-06-15 13:54:49'),
(217, 17, 2, 5, 0, '2023-06-15 13:53:59', '2023-06-15 13:53:59'),
(218, 17, 1, 6, 0, '2023-06-15 13:53:59', '2023-06-15 14:01:45'),
(219, 17, 2, 6, 0, '2023-06-15 13:53:59', '2023-06-15 13:53:59'),
(220, 17, 1, 7, 0, '2023-06-15 13:53:59', '2023-06-15 13:53:59'),
(221, 17, 2, 7, 0, '2023-06-15 13:53:59', '2023-06-15 13:53:59'),
(222, 18, 2, 1, 0, '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(223, 18, 1, 2, 0, '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(224, 18, 2, 2, 0, '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(225, 18, 1, 3, 0, '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(226, 18, 2, 3, 0, '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(227, 18, 1, 4, 0, '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(228, 18, 2, 4, 0, '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(229, 18, 1, 5, 0, '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(230, 18, 2, 5, 0, '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(231, 18, 1, 6, 0, '2023-06-15 15:03:13', '2023-06-15 15:03:45'),
(232, 18, 2, 6, 0, '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(233, 18, 1, 7, 0, '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(234, 18, 2, 7, 0, '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(235, 19, 2, 1, 0, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(236, 19, 1, 2, 0, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(237, 19, 2, 2, 0, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(238, 19, 1, 3, 0, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(239, 19, 2, 3, 0, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(240, 19, 1, 4, 0, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(241, 19, 2, 4, 0, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(242, 19, 1, 5, 0, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(243, 19, 2, 5, 0, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(244, 19, 1, 6, 0, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(245, 19, 2, 6, 0, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(246, 19, 1, 7, 0, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(247, 19, 2, 7, 0, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(248, 20, 2, 1, 0, '2023-06-15 21:00:47', '2023-06-15 21:00:47'),
(249, 20, 1, 2, 0, '2023-06-15 21:00:47', '2023-06-19 00:09:41'),
(250, 20, 2, 2, 0, '2023-06-15 21:00:47', '2023-06-15 21:00:47'),
(251, 20, 1, 3, 0, '2023-06-15 21:00:47', '2023-06-19 07:11:42'),
(252, 20, 2, 3, 0, '2023-06-15 21:00:47', '2023-06-15 21:00:47'),
(253, 20, 1, 4, 0, '2023-06-15 21:00:47', '2023-06-19 07:11:44'),
(254, 20, 2, 4, 0, '2023-06-15 21:00:47', '2023-06-15 21:00:47'),
(255, 20, 1, 5, 0, '2023-06-15 21:00:47', '2023-06-15 21:00:47'),
(256, 20, 2, 5, 0, '2023-06-15 21:00:47', '2023-06-15 21:00:47'),
(257, 20, 1, 6, 0, '2023-06-15 21:00:47', '2023-06-15 21:00:47'),
(258, 20, 2, 6, 0, '2023-06-15 21:00:47', '2023-06-15 21:00:47'),
(259, 20, 1, 7, 0, '2023-06-15 21:00:47', '2023-06-15 21:03:54'),
(260, 20, 2, 7, 0, '2023-06-15 21:00:47', '2023-06-15 21:00:47'),
(261, 21, 2, 1, 0, '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(262, 21, 1, 2, 0, '2023-06-15 22:57:52', '2023-06-15 23:02:51'),
(263, 21, 2, 2, 0, '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(264, 21, 1, 3, 0, '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(265, 21, 2, 3, 0, '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(266, 21, 1, 4, 0, '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(267, 21, 2, 4, 0, '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(268, 21, 1, 5, 0, '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(269, 21, 2, 5, 0, '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(270, 21, 1, 6, 0, '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(271, 21, 2, 6, 0, '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(272, 21, 1, 7, 0, '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(273, 21, 2, 7, 0, '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(274, 22, 2, 1, 0, '2023-06-16 06:31:55', '2023-06-18 02:09:56'),
(275, 22, 1, 2, 0, '2023-06-16 06:31:55', '2023-06-18 02:10:05'),
(276, 22, 2, 2, 0, '2023-06-16 06:31:55', '2023-06-18 02:10:07'),
(277, 22, 1, 3, 0, '2023-06-16 06:31:55', '2023-06-16 06:33:02'),
(278, 22, 2, 3, 0, '2023-06-16 06:31:55', '2023-06-18 02:10:09'),
(279, 22, 1, 4, 0, '2023-06-16 06:31:55', '2023-06-16 06:33:05'),
(280, 22, 2, 4, 0, '2023-06-16 06:31:55', '2023-06-18 02:10:10'),
(281, 22, 1, 5, 0, '2023-06-16 06:31:55', '2023-06-16 06:33:06'),
(282, 22, 2, 5, 0, '2023-06-16 06:31:55', '2023-06-16 06:31:55'),
(283, 22, 1, 6, 0, '2023-06-16 06:31:55', '2023-06-16 06:31:55'),
(284, 22, 2, 6, 0, '2023-06-16 06:31:55', '2023-06-16 06:31:55'),
(285, 22, 1, 7, 0, '2023-06-16 06:31:55', '2023-06-16 06:31:55'),
(286, 22, 2, 7, 0, '2023-06-16 06:31:55', '2023-06-16 06:31:55'),
(287, 23, 2, 1, 0, '2023-06-16 15:22:20', '2023-06-16 15:22:20'),
(288, 23, 1, 2, 0, '2023-06-16 15:22:20', '2023-06-20 14:28:51'),
(289, 23, 2, 2, 0, '2023-06-16 15:22:20', '2023-06-16 15:22:20'),
(290, 23, 1, 3, 0, '2023-06-16 15:22:20', '2023-06-20 14:28:53'),
(291, 23, 2, 3, 0, '2023-06-16 15:22:20', '2023-06-16 15:22:20'),
(292, 23, 1, 4, 0, '2023-06-16 15:22:20', '2023-06-20 14:28:53'),
(293, 23, 2, 4, 0, '2023-06-16 15:22:20', '2023-06-16 15:22:20'),
(294, 23, 1, 5, 0, '2023-06-16 15:22:20', '2023-06-16 15:22:20'),
(295, 23, 2, 5, 0, '2023-06-16 15:22:20', '2023-06-16 15:22:20'),
(296, 23, 1, 6, 0, '2023-06-16 15:22:20', '2023-06-16 15:22:20'),
(297, 23, 2, 6, 0, '2023-06-16 15:22:20', '2023-06-16 15:22:20'),
(298, 23, 1, 7, 0, '2023-06-16 15:22:20', '2023-06-16 15:22:20'),
(299, 23, 2, 7, 0, '2023-06-16 15:22:20', '2023-06-16 15:22:20'),
(300, 24, 2, 1, 0, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(301, 24, 1, 2, 0, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(302, 24, 2, 2, 0, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(303, 24, 1, 3, 0, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(304, 24, 2, 3, 0, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(305, 24, 1, 4, 0, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(306, 24, 2, 4, 0, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(307, 24, 1, 5, 0, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(308, 24, 2, 5, 0, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(309, 24, 1, 6, 0, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(310, 24, 2, 6, 0, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(311, 24, 1, 7, 0, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(312, 24, 2, 7, 0, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(313, 25, 2, 1, 0, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(314, 25, 1, 2, 0, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(315, 25, 2, 2, 0, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(316, 25, 1, 3, 0, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(317, 25, 2, 3, 0, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(318, 25, 1, 4, 0, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(319, 25, 2, 4, 0, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(320, 25, 1, 5, 0, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(321, 25, 2, 5, 0, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(322, 25, 1, 6, 0, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(323, 25, 2, 6, 0, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(324, 25, 1, 7, 0, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(325, 25, 2, 7, 0, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(326, 26, 2, 1, 0, '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(327, 26, 1, 2, 0, '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(328, 26, 2, 2, 0, '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(329, 26, 1, 3, 0, '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(330, 26, 2, 3, 0, '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(331, 26, 1, 4, 0, '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(332, 26, 2, 4, 0, '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(333, 26, 1, 5, 0, '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(334, 26, 2, 5, 0, '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(335, 26, 1, 6, 0, '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(336, 26, 2, 6, 0, '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(337, 26, 1, 7, 1, '2023-06-17 10:34:46', '2023-06-26 10:22:48'),
(338, 26, 2, 7, 0, '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(339, 27, 2, 1, 0, '2023-06-17 11:06:28', '2023-06-17 11:06:28'),
(340, 27, 1, 2, 0, '2023-06-17 11:06:28', '2023-06-17 11:06:28'),
(341, 27, 2, 2, 0, '2023-06-17 11:06:28', '2023-06-17 11:06:28'),
(342, 27, 1, 3, 0, '2023-06-17 11:06:28', '2023-06-17 11:06:28'),
(343, 27, 2, 3, 0, '2023-06-17 11:06:28', '2023-06-17 11:06:28'),
(344, 27, 1, 4, 0, '2023-06-17 11:06:28', '2023-06-17 11:06:28'),
(345, 27, 2, 4, 0, '2023-06-17 11:06:28', '2023-06-17 11:06:28'),
(346, 27, 1, 5, 0, '2023-06-17 11:06:28', '2023-06-17 11:06:28'),
(347, 27, 2, 5, 0, '2023-06-17 11:06:28', '2023-06-17 11:06:28'),
(348, 27, 1, 6, 0, '2023-06-17 11:06:28', '2023-06-17 11:06:28'),
(349, 27, 2, 6, 0, '2023-06-17 11:06:28', '2023-06-17 11:06:28'),
(350, 27, 1, 7, 0, '2023-06-17 11:06:28', '2023-06-17 11:06:28'),
(351, 27, 2, 7, 0, '2023-06-17 11:06:28', '2023-06-17 11:06:28'),
(352, 28, 2, 1, 0, '2023-06-17 11:16:55', '2023-06-17 11:16:55'),
(353, 28, 1, 2, 0, '2023-06-17 11:16:55', '2023-06-18 13:27:06'),
(354, 28, 2, 2, 0, '2023-06-17 11:16:55', '2023-06-17 11:16:55'),
(355, 28, 1, 3, 0, '2023-06-17 11:16:55', '2023-06-18 13:26:51'),
(356, 28, 2, 3, 0, '2023-06-17 11:16:55', '2023-06-17 11:16:55'),
(357, 28, 1, 4, 0, '2023-06-17 11:16:55', '2023-06-18 13:27:07'),
(358, 28, 2, 4, 0, '2023-06-17 11:16:55', '2023-06-17 11:16:55'),
(359, 28, 1, 5, 0, '2023-06-17 11:16:55', '2023-06-18 02:25:43'),
(360, 28, 2, 5, 0, '2023-06-17 11:16:55', '2023-06-17 11:16:55'),
(361, 28, 1, 6, 0, '2023-06-17 11:16:55', '2023-06-18 14:28:41'),
(362, 28, 2, 6, 0, '2023-06-17 11:16:55', '2023-06-17 11:16:55'),
(363, 28, 1, 7, 0, '2023-06-17 11:16:55', '2023-06-17 11:16:55'),
(364, 28, 2, 7, 0, '2023-06-17 11:16:55', '2023-06-17 11:16:55'),
(365, 29, 2, 1, 0, '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(366, 29, 1, 2, 0, '2023-06-17 11:53:13', '2023-06-17 11:54:01'),
(367, 29, 2, 2, 0, '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(368, 29, 1, 3, 0, '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(369, 29, 2, 3, 0, '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(370, 29, 1, 4, 0, '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(371, 29, 2, 4, 0, '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(372, 29, 1, 5, 0, '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(373, 29, 2, 5, 0, '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(374, 29, 1, 6, 0, '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(375, 29, 2, 6, 0, '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(376, 29, 1, 7, 0, '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(377, 29, 2, 7, 0, '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(378, 30, 2, 1, 0, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(379, 30, 1, 2, 0, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(380, 30, 2, 2, 0, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(381, 30, 1, 3, 0, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(382, 30, 2, 3, 0, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(383, 30, 1, 4, 0, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(384, 30, 2, 4, 0, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(385, 30, 1, 5, 0, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(386, 30, 2, 5, 0, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(387, 30, 1, 6, 0, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(388, 30, 2, 6, 0, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(389, 30, 1, 7, 0, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(390, 30, 2, 7, 0, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(391, 31, 2, 1, 0, '2023-06-17 12:17:54', '2023-06-17 12:17:54'),
(392, 31, 1, 2, 0, '2023-06-17 12:17:54', '2023-06-24 04:01:26'),
(393, 31, 2, 2, 0, '2023-06-17 12:17:54', '2023-06-17 12:17:54'),
(394, 31, 1, 3, 0, '2023-06-17 12:17:54', '2023-06-24 04:01:24'),
(395, 31, 2, 3, 0, '2023-06-17 12:17:54', '2023-06-17 12:17:54'),
(396, 31, 1, 4, 0, '2023-06-17 12:17:54', '2023-06-24 04:01:28'),
(397, 31, 2, 4, 0, '2023-06-17 12:17:54', '2023-06-17 12:17:54'),
(398, 31, 1, 5, 0, '2023-06-17 12:17:54', '2023-06-24 04:01:28'),
(399, 31, 2, 5, 0, '2023-06-17 12:17:54', '2023-06-17 12:17:54'),
(400, 31, 1, 6, 0, '2023-06-17 12:17:54', '2023-06-22 10:23:25'),
(401, 31, 2, 6, 0, '2023-06-17 12:17:54', '2023-06-17 12:17:54'),
(402, 31, 1, 7, 0, '2023-06-17 12:17:54', '2023-06-17 12:17:54'),
(403, 31, 2, 7, 0, '2023-06-17 12:17:54', '2023-06-17 12:17:54'),
(404, 32, 2, 1, 0, '2023-06-17 13:01:46', '2023-06-17 13:01:46'),
(405, 32, 1, 2, 0, '2023-06-17 13:01:46', '2023-06-17 13:02:45'),
(406, 32, 2, 2, 0, '2023-06-17 13:01:46', '2023-06-17 13:01:46'),
(407, 32, 1, 3, 0, '2023-06-17 13:01:46', '2023-06-17 13:01:46'),
(408, 32, 2, 3, 0, '2023-06-17 13:01:46', '2023-06-17 13:01:46'),
(409, 32, 1, 4, 0, '2023-06-17 13:01:46', '2023-06-17 13:01:46'),
(410, 32, 2, 4, 0, '2023-06-17 13:01:46', '2023-06-17 13:01:46'),
(411, 32, 1, 5, 0, '2023-06-17 13:01:46', '2023-06-17 13:01:46'),
(412, 32, 2, 5, 0, '2023-06-17 13:01:46', '2023-06-17 13:01:46'),
(413, 32, 1, 6, 0, '2023-06-17 13:01:46', '2023-06-17 13:01:46'),
(414, 32, 2, 6, 0, '2023-06-17 13:01:46', '2023-06-17 13:01:46'),
(415, 32, 1, 7, 0, '2023-06-17 13:01:46', '2023-06-17 13:01:46'),
(416, 32, 2, 7, 0, '2023-06-17 13:01:46', '2023-06-17 13:01:46'),
(417, 33, 2, 1, 0, '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(418, 33, 1, 2, 0, '2023-06-17 14:02:39', '2023-06-17 14:07:43'),
(419, 33, 2, 2, 0, '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(420, 33, 1, 3, 0, '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(421, 33, 2, 3, 0, '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(422, 33, 1, 4, 0, '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(423, 33, 2, 4, 0, '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(424, 33, 1, 5, 0, '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(425, 33, 2, 5, 0, '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(426, 33, 1, 6, 0, '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(427, 33, 2, 6, 0, '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(428, 33, 1, 7, 0, '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(429, 33, 2, 7, 0, '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(430, 34, 2, 1, 0, '2023-06-17 14:10:46', '2023-06-17 14:10:46'),
(431, 34, 1, 2, 0, '2023-06-17 14:10:46', '2023-06-17 14:11:29'),
(432, 34, 2, 2, 0, '2023-06-17 14:10:46', '2023-06-17 14:10:46'),
(433, 34, 1, 3, 0, '2023-06-17 14:10:46', '2023-06-17 14:11:27'),
(434, 34, 2, 3, 0, '2023-06-17 14:10:46', '2023-06-17 14:10:46'),
(435, 34, 1, 4, 0, '2023-06-17 14:10:46', '2023-06-17 14:12:12'),
(436, 34, 2, 4, 0, '2023-06-17 14:10:46', '2023-06-17 14:10:46'),
(437, 34, 1, 5, 0, '2023-06-17 14:10:46', '2023-06-17 14:10:46'),
(438, 34, 2, 5, 0, '2023-06-17 14:10:46', '2023-06-17 14:10:46'),
(439, 34, 1, 6, 0, '2023-06-17 14:10:46', '2023-06-17 14:10:46'),
(440, 34, 2, 6, 0, '2023-06-17 14:10:46', '2023-06-17 14:10:46'),
(441, 34, 1, 7, 0, '2023-06-17 14:10:46', '2023-06-17 14:10:46'),
(442, 34, 2, 7, 0, '2023-06-17 14:10:46', '2023-06-17 14:10:46'),
(443, 35, 2, 1, 0, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(444, 35, 1, 2, 0, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(445, 35, 2, 2, 0, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(446, 35, 1, 3, 0, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(447, 35, 2, 3, 0, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(448, 35, 1, 4, 0, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(449, 35, 2, 4, 0, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(450, 35, 1, 5, 0, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(451, 35, 2, 5, 0, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(452, 35, 1, 6, 0, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(453, 35, 2, 6, 0, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(454, 35, 1, 7, 0, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(455, 35, 2, 7, 0, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(456, 36, 2, 1, 0, '2023-06-17 16:49:21', '2023-06-17 16:49:21'),
(457, 36, 1, 2, 0, '2023-06-17 16:49:21', '2023-06-17 16:49:21'),
(458, 36, 2, 2, 0, '2023-06-17 16:49:21', '2023-06-17 16:49:21'),
(459, 36, 1, 3, 0, '2023-06-17 16:49:21', '2023-06-17 16:49:21'),
(460, 36, 2, 3, 0, '2023-06-17 16:49:21', '2023-06-17 16:49:21'),
(461, 36, 1, 4, 0, '2023-06-17 16:49:21', '2023-06-17 16:49:21'),
(462, 36, 2, 4, 0, '2023-06-17 16:49:21', '2023-06-17 16:49:21'),
(463, 36, 1, 5, 0, '2023-06-17 16:49:21', '2023-06-17 16:49:21'),
(464, 36, 2, 5, 0, '2023-06-17 16:49:21', '2023-06-17 16:49:21'),
(465, 36, 1, 6, 0, '2023-06-17 16:49:21', '2023-06-17 16:49:21'),
(466, 36, 2, 6, 0, '2023-06-17 16:49:21', '2023-06-17 16:49:21'),
(467, 36, 1, 7, 0, '2023-06-17 16:49:21', '2023-06-17 16:49:21'),
(468, 36, 2, 7, 0, '2023-06-17 16:49:21', '2023-06-17 16:49:21'),
(469, 37, 2, 1, 0, '2023-06-17 16:58:20', '2023-06-17 16:58:20'),
(470, 37, 1, 2, 0, '2023-06-17 16:58:20', '2023-06-17 16:59:32'),
(471, 37, 2, 2, 0, '2023-06-17 16:58:20', '2023-06-17 16:58:20'),
(472, 37, 1, 3, 0, '2023-06-17 16:58:20', '2023-06-17 16:59:34'),
(473, 37, 2, 3, 0, '2023-06-17 16:58:20', '2023-06-17 16:58:20'),
(474, 37, 1, 4, 0, '2023-06-17 16:58:20', '2023-06-17 16:59:35'),
(475, 37, 2, 4, 0, '2023-06-17 16:58:20', '2023-06-17 16:58:20'),
(476, 37, 1, 5, 0, '2023-06-17 16:58:20', '2023-06-17 16:58:20'),
(477, 37, 2, 5, 0, '2023-06-17 16:58:20', '2023-06-17 16:58:20'),
(478, 37, 1, 6, 0, '2023-06-17 16:58:20', '2023-06-17 16:58:20'),
(479, 37, 2, 6, 0, '2023-06-17 16:58:20', '2023-06-17 16:58:20'),
(480, 37, 1, 7, 0, '2023-06-17 16:58:20', '2023-06-17 16:58:20'),
(481, 37, 2, 7, 0, '2023-06-17 16:58:20', '2023-06-17 16:58:20'),
(482, 38, 2, 1, 0, '2023-06-17 23:21:33', '2023-06-18 15:28:33'),
(483, 38, 1, 2, 0, '2023-06-17 23:21:33', '2023-06-18 15:44:02'),
(484, 38, 2, 2, 0, '2023-06-17 23:21:33', '2023-06-18 15:28:34'),
(485, 38, 1, 3, 0, '2023-06-17 23:21:33', '2023-06-18 15:44:03'),
(486, 38, 2, 3, 0, '2023-06-17 23:21:33', '2023-06-18 15:28:35'),
(487, 38, 1, 4, 0, '2023-06-17 23:21:33', '2023-06-18 15:44:05'),
(488, 38, 2, 4, 0, '2023-06-17 23:21:33', '2023-06-18 15:28:36'),
(489, 38, 1, 5, 0, '2023-06-17 23:21:33', '2023-06-18 15:44:06'),
(490, 38, 2, 5, 0, '2023-06-17 23:21:33', '2023-06-18 15:28:38'),
(491, 38, 1, 6, 0, '2023-06-17 23:21:33', '2023-06-18 15:44:08'),
(492, 38, 2, 6, 0, '2023-06-17 23:21:33', '2023-06-18 15:28:40'),
(493, 38, 1, 7, 0, '2023-06-17 23:21:33', '2023-06-18 15:44:14'),
(494, 38, 2, 7, 0, '2023-06-17 23:21:33', '2023-06-18 13:40:04'),
(495, 39, 2, 1, 0, '2023-06-18 00:17:38', '2023-06-18 00:17:38'),
(496, 39, 1, 2, 0, '2023-06-18 00:17:38', '2023-06-19 07:36:09'),
(497, 39, 2, 2, 0, '2023-06-18 00:17:38', '2023-06-18 00:17:38'),
(498, 39, 1, 3, 0, '2023-06-18 00:17:38', '2023-06-19 01:27:18'),
(499, 39, 2, 3, 0, '2023-06-18 00:17:38', '2023-06-18 00:17:38'),
(500, 39, 1, 4, 0, '2023-06-18 00:17:38', '2023-06-19 01:27:20'),
(501, 39, 2, 4, 0, '2023-06-18 00:17:38', '2023-06-18 00:17:38'),
(502, 39, 1, 5, 0, '2023-06-18 00:17:38', '2023-06-19 01:27:22'),
(503, 39, 2, 5, 0, '2023-06-18 00:17:38', '2023-06-18 00:17:38'),
(504, 39, 1, 6, 0, '2023-06-18 00:17:38', '2023-06-19 01:27:28'),
(505, 39, 2, 6, 0, '2023-06-18 00:17:38', '2023-06-18 00:17:38'),
(506, 39, 1, 7, 0, '2023-06-18 00:17:38', '2023-06-19 01:27:26'),
(507, 39, 2, 7, 0, '2023-06-18 00:17:38', '2023-06-18 00:17:38'),
(508, 40, 2, 1, 0, '2023-06-18 00:42:11', '2023-06-18 00:42:11'),
(509, 40, 1, 2, 0, '2023-06-18 00:42:11', '2023-06-21 07:48:31'),
(510, 40, 2, 2, 0, '2023-06-18 00:42:11', '2023-06-18 00:42:11'),
(511, 40, 1, 3, 0, '2023-06-18 00:42:11', '2023-06-18 13:30:03'),
(512, 40, 2, 3, 0, '2023-06-18 00:42:11', '2023-06-18 00:42:11'),
(513, 40, 1, 4, 0, '2023-06-18 00:42:11', '2023-06-18 13:30:05'),
(514, 40, 2, 4, 0, '2023-06-18 00:42:11', '2023-06-18 00:42:11'),
(515, 40, 1, 5, 0, '2023-06-18 00:42:11', '2023-06-18 13:30:08'),
(516, 40, 2, 5, 0, '2023-06-18 00:42:11', '2023-06-18 00:42:11'),
(517, 40, 1, 6, 0, '2023-06-18 00:42:11', '2023-06-18 13:39:33'),
(518, 40, 2, 6, 0, '2023-06-18 00:42:11', '2023-06-18 00:42:11'),
(519, 40, 1, 7, 0, '2023-06-18 00:42:11', '2023-06-18 04:39:35'),
(520, 40, 2, 7, 0, '2023-06-18 00:42:11', '2023-06-18 00:42:11'),
(521, 41, 2, 1, 0, '2023-06-18 01:26:52', '2023-06-18 01:26:52'),
(522, 41, 1, 2, 0, '2023-06-18 01:26:52', '2023-06-18 02:59:30'),
(523, 41, 2, 2, 0, '2023-06-18 01:26:52', '2023-06-18 01:26:52'),
(524, 41, 1, 3, 0, '2023-06-18 01:26:52', '2023-06-18 02:59:31'),
(525, 41, 2, 3, 0, '2023-06-18 01:26:52', '2023-06-18 01:26:52'),
(526, 41, 1, 4, 0, '2023-06-18 01:26:52', '2023-06-18 01:28:29'),
(527, 41, 2, 4, 0, '2023-06-18 01:26:52', '2023-06-18 01:26:52'),
(528, 41, 1, 5, 0, '2023-06-18 01:26:52', '2023-06-18 01:27:41'),
(529, 41, 2, 5, 0, '2023-06-18 01:26:52', '2023-06-18 01:26:52'),
(530, 41, 1, 6, 0, '2023-06-18 01:26:52', '2023-06-18 01:26:52'),
(531, 41, 2, 6, 0, '2023-06-18 01:26:52', '2023-06-18 01:26:52'),
(532, 41, 1, 7, 0, '2023-06-18 01:26:52', '2023-06-18 01:26:52'),
(533, 41, 2, 7, 0, '2023-06-18 01:26:52', '2023-06-18 01:26:52'),
(534, 42, 2, 1, 0, '2023-06-18 01:33:48', '2023-06-18 01:33:48'),
(535, 42, 1, 2, 0, '2023-06-18 01:33:48', '2023-06-19 08:01:06'),
(536, 42, 2, 2, 0, '2023-06-18 01:33:48', '2023-06-18 01:33:48'),
(537, 42, 1, 3, 0, '2023-06-18 01:33:48', '2023-06-19 05:03:48'),
(538, 42, 2, 3, 0, '2023-06-18 01:33:48', '2023-06-18 01:33:48'),
(539, 42, 1, 4, 0, '2023-06-18 01:33:48', '2023-06-19 05:03:45'),
(540, 42, 2, 4, 0, '2023-06-18 01:33:48', '2023-06-18 01:33:48'),
(541, 42, 1, 5, 0, '2023-06-18 01:33:48', '2023-06-18 01:33:48'),
(542, 42, 2, 5, 0, '2023-06-18 01:33:48', '2023-06-18 01:33:48'),
(543, 42, 1, 6, 0, '2023-06-18 01:33:48', '2023-06-19 02:44:51'),
(544, 42, 2, 6, 0, '2023-06-18 01:33:48', '2023-06-18 01:33:48'),
(545, 42, 1, 7, 0, '2023-06-18 01:33:48', '2023-06-18 01:33:48'),
(546, 42, 2, 7, 0, '2023-06-18 01:33:48', '2023-06-18 01:33:48'),
(547, 43, 2, 1, 0, '2023-06-18 01:56:55', '2023-06-18 01:56:55'),
(548, 43, 1, 2, 0, '2023-06-18 01:56:55', '2023-06-18 01:56:55'),
(549, 43, 2, 2, 0, '2023-06-18 01:56:55', '2023-06-18 01:56:55'),
(550, 43, 1, 3, 0, '2023-06-18 01:56:55', '2023-06-18 08:14:35'),
(551, 43, 2, 3, 0, '2023-06-18 01:56:55', '2023-06-18 01:56:55'),
(552, 43, 1, 4, 0, '2023-06-18 01:56:55', '2023-06-18 13:14:15'),
(553, 43, 2, 4, 0, '2023-06-18 01:56:55', '2023-06-18 01:56:55'),
(554, 43, 1, 5, 0, '2023-06-18 01:56:55', '2023-06-18 13:14:14'),
(555, 43, 2, 5, 0, '2023-06-18 01:56:55', '2023-06-18 01:56:55'),
(556, 43, 1, 6, 0, '2023-06-18 01:56:55', '2023-06-19 02:12:55'),
(557, 43, 2, 6, 0, '2023-06-18 01:56:55', '2023-06-18 01:56:55'),
(558, 43, 1, 7, 0, '2023-06-18 01:56:55', '2023-06-18 01:56:55'),
(559, 43, 2, 7, 0, '2023-06-18 01:56:55', '2023-06-18 01:56:55'),
(560, 44, 2, 1, 0, '2023-06-18 02:43:44', '2023-06-18 02:43:44'),
(561, 44, 1, 2, 0, '2023-06-18 02:43:44', '2023-06-26 09:44:21'),
(562, 44, 2, 2, 0, '2023-06-18 02:43:44', '2023-06-18 02:43:44'),
(563, 44, 1, 3, 0, '2023-06-18 02:43:44', '2023-06-26 09:43:22'),
(564, 44, 2, 3, 0, '2023-06-18 02:43:44', '2023-06-18 02:43:44'),
(565, 44, 1, 4, 0, '2023-06-18 02:43:44', '2023-06-26 09:43:23'),
(566, 44, 2, 4, 0, '2023-06-18 02:43:44', '2023-06-18 02:43:44'),
(567, 44, 1, 5, 0, '2023-06-18 02:43:44', '2023-06-18 02:43:44'),
(568, 44, 2, 5, 0, '2023-06-18 02:43:44', '2023-06-18 02:43:44'),
(569, 44, 1, 6, 0, '2023-06-18 02:43:44', '2023-06-18 02:43:44'),
(570, 44, 2, 6, 0, '2023-06-18 02:43:44', '2023-06-18 02:43:44'),
(571, 44, 1, 7, 0, '2023-06-18 02:43:44', '2023-06-18 02:43:44'),
(572, 44, 2, 7, 0, '2023-06-18 02:43:44', '2023-06-18 02:43:44'),
(573, 45, 2, 1, 0, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(574, 45, 1, 2, 0, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(575, 45, 2, 2, 0, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(576, 45, 1, 3, 0, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(577, 45, 2, 3, 0, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(578, 45, 1, 4, 0, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(579, 45, 2, 4, 0, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(580, 45, 1, 5, 0, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(581, 45, 2, 5, 0, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(582, 45, 1, 6, 0, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(583, 45, 2, 6, 0, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(584, 45, 1, 7, 0, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(585, 45, 2, 7, 0, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(586, 46, 2, 1, 0, '2023-06-18 05:35:51', '2023-06-18 05:35:51'),
(587, 46, 1, 2, 0, '2023-06-18 05:35:51', '2023-06-18 05:40:03'),
(588, 46, 2, 2, 0, '2023-06-18 05:35:51', '2023-06-18 05:35:51'),
(589, 46, 1, 3, 0, '2023-06-18 05:35:51', '2023-06-18 05:40:01'),
(590, 46, 2, 3, 0, '2023-06-18 05:35:51', '2023-06-18 05:35:51'),
(591, 46, 1, 4, 0, '2023-06-18 05:35:51', '2023-06-18 05:35:51'),
(592, 46, 2, 4, 0, '2023-06-18 05:35:51', '2023-06-18 05:35:51'),
(593, 46, 1, 5, 0, '2023-06-18 05:35:51', '2023-06-18 05:35:51'),
(594, 46, 2, 5, 0, '2023-06-18 05:35:51', '2023-06-18 05:35:51'),
(595, 46, 1, 6, 0, '2023-06-18 05:35:51', '2023-06-18 05:35:51'),
(596, 46, 2, 6, 0, '2023-06-18 05:35:51', '2023-06-18 05:35:51'),
(597, 46, 1, 7, 0, '2023-06-18 05:35:51', '2023-06-18 05:35:51'),
(598, 46, 2, 7, 0, '2023-06-18 05:35:51', '2023-06-18 05:35:51'),
(599, 47, 2, 1, 0, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(600, 47, 1, 2, 0, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(601, 47, 2, 2, 0, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(602, 47, 1, 3, 0, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(603, 47, 2, 3, 0, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(604, 47, 1, 4, 0, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(605, 47, 2, 4, 0, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(606, 47, 1, 5, 0, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(607, 47, 2, 5, 0, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(608, 47, 1, 6, 0, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(609, 47, 2, 6, 0, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(610, 47, 1, 7, 0, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(611, 47, 2, 7, 0, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(612, 48, 2, 1, 0, '2023-06-18 06:11:54', '2023-06-18 06:11:54'),
(613, 48, 1, 2, 0, '2023-06-18 06:11:54', '2023-06-18 06:14:29'),
(614, 48, 2, 2, 0, '2023-06-18 06:11:54', '2023-06-18 06:11:54'),
(615, 48, 1, 3, 0, '2023-06-18 06:11:54', '2023-06-18 06:11:54'),
(616, 48, 2, 3, 0, '2023-06-18 06:11:54', '2023-06-18 06:11:54'),
(617, 48, 1, 4, 0, '2023-06-18 06:11:54', '2023-06-18 06:11:54'),
(618, 48, 2, 4, 0, '2023-06-18 06:11:54', '2023-06-18 06:11:54'),
(619, 48, 1, 5, 0, '2023-06-18 06:11:54', '2023-06-18 06:11:54'),
(620, 48, 2, 5, 0, '2023-06-18 06:11:54', '2023-06-18 06:11:54'),
(621, 48, 1, 6, 0, '2023-06-18 06:11:54', '2023-06-18 06:11:54'),
(622, 48, 2, 6, 0, '2023-06-18 06:11:54', '2023-06-18 06:11:54'),
(623, 48, 1, 7, 0, '2023-06-18 06:11:54', '2023-06-18 06:11:54'),
(624, 48, 2, 7, 0, '2023-06-18 06:11:54', '2023-06-18 06:11:54'),
(625, 49, 2, 1, 0, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(626, 49, 1, 2, 0, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(627, 49, 2, 2, 0, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(628, 49, 1, 3, 0, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(629, 49, 2, 3, 0, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(630, 49, 1, 4, 0, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(631, 49, 2, 4, 0, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(632, 49, 1, 5, 0, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(633, 49, 2, 5, 0, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(634, 49, 1, 6, 0, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(635, 49, 2, 6, 0, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(636, 49, 1, 7, 0, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(637, 49, 2, 7, 0, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(638, 50, 2, 1, 0, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(639, 50, 1, 2, 0, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(640, 50, 2, 2, 0, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(641, 50, 1, 3, 0, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(642, 50, 2, 3, 0, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(643, 50, 1, 4, 0, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(644, 50, 2, 4, 0, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(645, 50, 1, 5, 0, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(646, 50, 2, 5, 0, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(647, 50, 1, 6, 0, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(648, 50, 2, 6, 0, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(649, 50, 1, 7, 0, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(650, 50, 2, 7, 0, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(651, 51, 2, 1, 0, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(652, 51, 1, 2, 0, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(653, 51, 2, 2, 0, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(654, 51, 1, 3, 0, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(655, 51, 2, 3, 0, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(656, 51, 1, 4, 0, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(657, 51, 2, 4, 0, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(658, 51, 1, 5, 0, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(659, 51, 2, 5, 0, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(660, 51, 1, 6, 0, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(661, 51, 2, 6, 0, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(662, 51, 1, 7, 0, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(663, 51, 2, 7, 0, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(664, 52, 2, 1, 0, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(665, 52, 1, 2, 0, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(666, 52, 2, 2, 0, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(667, 52, 1, 3, 0, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(668, 52, 2, 3, 0, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(669, 52, 1, 4, 0, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(670, 52, 2, 4, 0, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(671, 52, 1, 5, 0, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(672, 52, 2, 5, 0, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(673, 52, 1, 6, 0, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(674, 52, 2, 6, 0, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(675, 52, 1, 7, 0, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(676, 52, 2, 7, 0, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(677, 53, 2, 1, 0, '2023-06-18 12:52:20', '2023-06-18 12:52:20'),
(678, 53, 1, 2, 0, '2023-06-18 12:52:20', '2023-06-20 06:59:45'),
(679, 53, 2, 2, 0, '2023-06-18 12:52:20', '2023-06-18 12:52:20'),
(680, 53, 1, 3, 0, '2023-06-18 12:52:20', '2023-06-18 14:07:00'),
(681, 53, 2, 3, 0, '2023-06-18 12:52:20', '2023-06-18 12:52:20'),
(682, 53, 1, 4, 0, '2023-06-18 12:52:20', '2023-06-19 00:17:40'),
(683, 53, 2, 4, 0, '2023-06-18 12:52:20', '2023-06-18 12:52:20'),
(684, 53, 1, 5, 0, '2023-06-18 12:52:20', '2023-06-18 12:52:20'),
(685, 53, 2, 5, 0, '2023-06-18 12:52:20', '2023-06-18 12:52:20'),
(686, 53, 1, 6, 0, '2023-06-18 12:52:20', '2023-06-18 12:52:20'),
(687, 53, 2, 6, 0, '2023-06-18 12:52:20', '2023-06-18 12:52:20'),
(688, 53, 1, 7, 0, '2023-06-18 12:52:20', '2023-06-18 12:52:20'),
(689, 53, 2, 7, 0, '2023-06-18 12:52:20', '2023-06-18 12:52:20'),
(690, 54, 2, 1, 0, '2023-06-18 13:05:50', '2023-06-18 13:05:50'),
(691, 54, 1, 2, 0, '2023-06-18 13:05:50', '2023-06-18 14:20:56'),
(692, 54, 2, 2, 0, '2023-06-18 13:05:50', '2023-06-18 13:05:50'),
(693, 54, 1, 3, 0, '2023-06-18 13:05:50', '2023-06-18 14:20:51'),
(694, 54, 2, 3, 0, '2023-06-18 13:05:50', '2023-06-18 13:05:50'),
(695, 54, 1, 4, 0, '2023-06-18 13:05:50', '2023-06-19 00:07:13'),
(696, 54, 2, 4, 0, '2023-06-18 13:05:50', '2023-06-18 13:05:50'),
(697, 54, 1, 5, 0, '2023-06-18 13:05:50', '2023-06-18 13:05:50'),
(698, 54, 2, 5, 0, '2023-06-18 13:05:50', '2023-06-18 13:05:50'),
(699, 54, 1, 6, 0, '2023-06-18 13:05:50', '2023-06-18 13:05:50'),
(700, 54, 2, 6, 0, '2023-06-18 13:05:50', '2023-06-18 13:05:50'),
(701, 54, 1, 7, 1, '2023-06-18 13:05:50', '2023-06-20 11:57:29'),
(702, 54, 2, 7, 0, '2023-06-18 13:05:50', '2023-06-18 13:05:50'),
(703, 55, 2, 1, 0, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(704, 55, 1, 2, 0, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(705, 55, 2, 2, 0, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(706, 55, 1, 3, 0, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(707, 55, 2, 3, 0, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(708, 55, 1, 4, 0, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(709, 55, 2, 4, 0, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(710, 55, 1, 5, 0, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(711, 55, 2, 5, 0, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(712, 55, 1, 6, 0, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(713, 55, 2, 6, 0, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(714, 55, 1, 7, 0, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(715, 55, 2, 7, 0, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(716, 56, 2, 1, 0, '2023-06-18 13:37:18', '2023-06-18 13:37:18'),
(717, 56, 1, 2, 0, '2023-06-18 13:37:18', '2023-06-18 14:52:34'),
(718, 56, 2, 2, 0, '2023-06-18 13:37:18', '2023-06-18 13:37:18'),
(719, 56, 1, 3, 0, '2023-06-18 13:37:18', '2023-06-18 14:52:30'),
(720, 56, 2, 3, 0, '2023-06-18 13:37:18', '2023-06-18 13:37:18'),
(721, 56, 1, 4, 1, '2023-06-18 13:37:18', '2023-06-18 15:19:22'),
(722, 56, 2, 4, 0, '2023-06-18 13:37:18', '2023-06-18 13:37:18'),
(723, 56, 1, 5, 0, '2023-06-18 13:37:18', '2023-06-18 13:37:18'),
(724, 56, 2, 5, 0, '2023-06-18 13:37:18', '2023-06-18 13:37:18'),
(725, 56, 1, 6, 0, '2023-06-18 13:37:18', '2023-06-18 14:26:00'),
(726, 56, 2, 6, 0, '2023-06-18 13:37:18', '2023-06-18 13:37:18'),
(727, 56, 1, 7, 1, '2023-06-18 13:37:18', '2023-06-20 11:59:47'),
(728, 56, 2, 7, 0, '2023-06-18 13:37:18', '2023-06-18 13:37:18'),
(729, 57, 2, 1, 0, '2023-06-18 13:45:28', '2023-06-18 13:45:28'),
(730, 57, 1, 2, 0, '2023-06-18 13:45:28', '2023-06-19 05:42:19'),
(731, 57, 2, 2, 0, '2023-06-18 13:45:28', '2023-06-18 13:45:28'),
(732, 57, 1, 3, 0, '2023-06-18 13:45:28', '2023-06-19 05:42:18'),
(733, 57, 2, 3, 0, '2023-06-18 13:45:28', '2023-06-18 13:45:28'),
(734, 57, 1, 4, 0, '2023-06-18 13:45:28', '2023-06-19 02:05:48'),
(735, 57, 2, 4, 0, '2023-06-18 13:45:28', '2023-06-18 13:45:28'),
(736, 57, 1, 5, 0, '2023-06-18 13:45:28', '2023-06-18 13:45:28'),
(737, 57, 2, 5, 0, '2023-06-18 13:45:28', '2023-06-18 13:45:28'),
(738, 57, 1, 6, 0, '2023-06-18 13:45:28', '2023-06-18 13:45:28'),
(739, 57, 2, 6, 0, '2023-06-18 13:45:28', '2023-06-18 13:45:28'),
(740, 57, 1, 7, 1, '2023-06-18 13:45:28', '2023-06-20 11:57:59'),
(741, 57, 2, 7, 0, '2023-06-18 13:45:28', '2023-06-18 13:45:28'),
(742, 58, 2, 1, 0, '2023-06-18 13:52:40', '2023-06-18 13:52:40'),
(743, 58, 1, 2, 0, '2023-06-18 13:52:40', '2023-06-18 13:52:40'),
(744, 58, 2, 2, 0, '2023-06-18 13:52:40', '2023-06-18 13:52:40'),
(745, 58, 1, 3, 0, '2023-06-18 13:52:40', '2023-06-18 13:52:40'),
(746, 58, 2, 3, 0, '2023-06-18 13:52:40', '2023-06-18 13:52:40'),
(747, 58, 1, 4, 1, '2023-06-18 13:52:40', '2023-06-18 15:20:38'),
(748, 58, 2, 4, 0, '2023-06-18 13:52:40', '2023-06-18 13:52:40'),
(749, 58, 1, 5, 0, '2023-06-18 13:52:40', '2023-06-18 13:52:40'),
(750, 58, 2, 5, 0, '2023-06-18 13:52:40', '2023-06-18 13:52:40'),
(751, 58, 1, 6, 1, '2023-06-18 13:52:40', '2023-06-20 20:46:14'),
(752, 58, 2, 6, 0, '2023-06-18 13:52:40', '2023-06-18 13:52:40'),
(753, 58, 1, 7, 0, '2023-06-18 13:52:40', '2023-06-18 13:52:40'),
(754, 58, 2, 7, 0, '2023-06-18 13:52:40', '2023-06-18 13:52:40'),
(755, 59, 2, 1, 0, '2023-06-18 14:10:50', '2023-06-18 14:10:50'),
(756, 59, 1, 2, 0, '2023-06-18 14:10:50', '2023-06-21 07:57:04'),
(757, 59, 2, 2, 0, '2023-06-18 14:10:50', '2023-06-18 14:10:50'),
(758, 59, 1, 3, 0, '2023-06-18 14:10:50', '2023-06-21 07:56:42'),
(759, 59, 2, 3, 0, '2023-06-18 14:10:50', '2023-06-18 14:10:50'),
(760, 59, 1, 4, 0, '2023-06-18 14:10:50', '2023-06-21 07:56:43'),
(761, 59, 2, 4, 0, '2023-06-18 14:10:50', '2023-06-18 14:10:50'),
(762, 59, 1, 5, 0, '2023-06-18 14:10:50', '2023-06-21 07:56:47'),
(763, 59, 2, 5, 0, '2023-06-18 14:10:50', '2023-06-18 14:10:50'),
(764, 59, 1, 6, 0, '2023-06-18 14:10:50', '2023-06-21 07:56:48'),
(765, 59, 2, 6, 0, '2023-06-18 14:10:50', '2023-06-18 14:10:50'),
(766, 59, 1, 7, 0, '2023-06-18 14:10:50', '2023-06-18 14:10:50'),
(767, 59, 2, 7, 0, '2023-06-18 14:10:50', '2023-06-18 14:10:50'),
(768, 60, 2, 1, 0, '2023-06-18 14:15:51', '2023-06-18 14:15:51'),
(769, 60, 1, 2, 0, '2023-06-18 14:15:51', '2023-06-28 06:04:57'),
(770, 60, 2, 2, 0, '2023-06-18 14:15:51', '2023-06-18 14:15:51'),
(771, 60, 1, 3, 0, '2023-06-18 14:15:51', '2023-06-28 06:04:42'),
(772, 60, 2, 3, 0, '2023-06-18 14:15:51', '2023-06-18 14:15:51'),
(773, 60, 1, 4, 0, '2023-06-18 14:15:51', '2023-06-28 06:03:51'),
(774, 60, 2, 4, 0, '2023-06-18 14:15:51', '2023-06-18 14:15:51'),
(775, 60, 1, 5, 0, '2023-06-18 14:15:51', '2023-06-18 14:15:51'),
(776, 60, 2, 5, 0, '2023-06-18 14:15:51', '2023-06-18 14:15:51'),
(777, 60, 1, 6, 0, '2023-06-18 14:15:51', '2023-06-18 14:15:51'),
(778, 60, 2, 6, 0, '2023-06-18 14:15:51', '2023-06-18 14:15:51'),
(779, 60, 1, 7, 0, '2023-06-18 14:15:51', '2023-06-28 06:04:09'),
(780, 60, 2, 7, 0, '2023-06-18 14:15:51', '2023-06-18 14:15:51'),
(781, 61, 2, 1, 0, '2023-06-18 22:43:40', '2023-06-18 22:43:40'),
(782, 61, 1, 2, 0, '2023-06-18 22:43:40', '2023-06-18 22:46:11'),
(783, 61, 2, 2, 0, '2023-06-18 22:43:40', '2023-06-18 22:43:40');
INSERT INTO `job_status_new` (`id`, `user_id`, `type`, `status`, `number`, `created_at`, `updated_at`) VALUES
(784, 61, 1, 3, 0, '2023-06-18 22:43:40', '2023-06-18 22:43:40'),
(785, 61, 2, 3, 0, '2023-06-18 22:43:40', '2023-06-18 22:43:40'),
(786, 61, 1, 4, 0, '2023-06-18 22:43:40', '2023-06-18 22:43:40'),
(787, 61, 2, 4, 0, '2023-06-18 22:43:40', '2023-06-18 22:43:40'),
(788, 61, 1, 5, 0, '2023-06-18 22:43:40', '2023-06-18 22:43:40'),
(789, 61, 2, 5, 0, '2023-06-18 22:43:40', '2023-06-18 22:43:40'),
(790, 61, 1, 6, 0, '2023-06-18 22:43:40', '2023-06-18 22:43:40'),
(791, 61, 2, 6, 0, '2023-06-18 22:43:40', '2023-06-18 22:43:40'),
(792, 61, 1, 7, 0, '2023-06-18 22:43:40', '2023-06-18 22:43:40'),
(793, 61, 2, 7, 0, '2023-06-18 22:43:40', '2023-06-18 22:43:40'),
(794, 62, 2, 1, 0, '2023-06-19 00:49:33', '2023-06-19 00:49:33'),
(795, 62, 1, 2, 0, '2023-06-19 00:49:33', '2023-06-22 01:20:06'),
(796, 62, 2, 2, 0, '2023-06-19 00:49:33', '2023-06-19 00:49:33'),
(797, 62, 1, 3, 0, '2023-06-19 00:49:33', '2023-06-22 01:20:09'),
(798, 62, 2, 3, 0, '2023-06-19 00:49:33', '2023-06-19 00:49:33'),
(799, 62, 1, 4, 0, '2023-06-19 00:49:33', '2023-06-22 01:20:24'),
(800, 62, 2, 4, 0, '2023-06-19 00:49:33', '2023-06-19 00:49:33'),
(801, 62, 1, 5, 0, '2023-06-19 00:49:33', '2023-06-22 01:20:18'),
(802, 62, 2, 5, 0, '2023-06-19 00:49:33', '2023-06-19 00:49:33'),
(803, 62, 1, 6, 0, '2023-06-19 00:49:33', '2023-06-22 01:20:20'),
(804, 62, 2, 6, 0, '2023-06-19 00:49:33', '2023-06-19 00:49:33'),
(805, 62, 1, 7, 0, '2023-06-19 00:49:33', '2023-06-22 01:20:22'),
(806, 62, 2, 7, 0, '2023-06-19 00:49:33', '2023-06-19 00:49:33'),
(807, 63, 2, 1, 0, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(808, 63, 1, 2, 0, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(809, 63, 2, 2, 0, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(810, 63, 1, 3, 0, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(811, 63, 2, 3, 0, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(812, 63, 1, 4, 0, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(813, 63, 2, 4, 0, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(814, 63, 1, 5, 0, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(815, 63, 2, 5, 0, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(816, 63, 1, 6, 0, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(817, 63, 2, 6, 0, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(818, 63, 1, 7, 0, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(819, 63, 2, 7, 0, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(820, 64, 2, 1, 0, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(821, 64, 1, 2, 0, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(822, 64, 2, 2, 0, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(823, 64, 1, 3, 0, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(824, 64, 2, 3, 0, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(825, 64, 1, 4, 0, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(826, 64, 2, 4, 0, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(827, 64, 1, 5, 0, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(828, 64, 2, 5, 0, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(829, 64, 1, 6, 0, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(830, 64, 2, 6, 0, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(831, 64, 1, 7, 0, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(832, 64, 2, 7, 0, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(833, 65, 2, 1, 0, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(834, 65, 1, 2, 0, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(835, 65, 2, 2, 0, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(836, 65, 1, 3, 0, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(837, 65, 2, 3, 0, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(838, 65, 1, 4, 0, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(839, 65, 2, 4, 0, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(840, 65, 1, 5, 0, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(841, 65, 2, 5, 0, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(842, 65, 1, 6, 0, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(843, 65, 2, 6, 0, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(844, 65, 1, 7, 0, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(845, 65, 2, 7, 0, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(846, 66, 2, 1, 0, '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(847, 66, 1, 2, 0, '2023-06-19 03:08:03', '2023-06-19 07:38:02'),
(848, 66, 2, 2, 0, '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(849, 66, 1, 3, 0, '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(850, 66, 2, 3, 0, '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(851, 66, 1, 4, 0, '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(852, 66, 2, 4, 0, '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(853, 66, 1, 5, 0, '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(854, 66, 2, 5, 0, '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(855, 66, 1, 6, 0, '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(856, 66, 2, 6, 0, '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(857, 66, 1, 7, 0, '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(858, 66, 2, 7, 0, '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(859, 67, 2, 1, 0, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(860, 67, 1, 2, 0, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(861, 67, 2, 2, 0, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(862, 67, 1, 3, 0, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(863, 67, 2, 3, 0, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(864, 67, 1, 4, 0, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(865, 67, 2, 4, 0, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(866, 67, 1, 5, 0, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(867, 67, 2, 5, 0, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(868, 67, 1, 6, 0, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(869, 67, 2, 6, 0, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(870, 67, 1, 7, 0, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(871, 67, 2, 7, 0, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(872, 68, 2, 1, 0, '2023-06-19 07:39:20', '2023-06-19 07:39:20'),
(873, 68, 1, 2, 0, '2023-06-19 07:39:20', '2023-06-19 07:40:59'),
(874, 68, 2, 2, 0, '2023-06-19 07:39:20', '2023-06-19 07:39:20'),
(875, 68, 1, 3, 0, '2023-06-19 07:39:20', '2023-06-19 07:41:02'),
(876, 68, 2, 3, 0, '2023-06-19 07:39:20', '2023-06-19 07:39:20'),
(877, 68, 1, 4, 0, '2023-06-19 07:39:20', '2023-06-19 07:39:20'),
(878, 68, 2, 4, 0, '2023-06-19 07:39:20', '2023-06-19 07:39:20'),
(879, 68, 1, 5, 0, '2023-06-19 07:39:20', '2023-06-19 07:39:20'),
(880, 68, 2, 5, 0, '2023-06-19 07:39:20', '2023-06-19 07:39:20'),
(881, 68, 1, 6, 0, '2023-06-19 07:39:20', '2023-06-19 07:39:20'),
(882, 68, 2, 6, 0, '2023-06-19 07:39:20', '2023-06-19 07:39:20'),
(883, 68, 1, 7, 0, '2023-06-19 07:39:20', '2023-06-19 07:41:13'),
(884, 68, 2, 7, 0, '2023-06-19 07:39:20', '2023-06-19 07:39:20'),
(885, 69, 2, 1, 0, '2023-06-20 04:58:45', '2023-06-20 04:58:45'),
(886, 69, 1, 2, 0, '2023-06-20 04:58:45', '2023-06-20 05:04:17'),
(887, 69, 2, 2, 0, '2023-06-20 04:58:45', '2023-06-20 04:58:45'),
(888, 69, 1, 3, 0, '2023-06-20 04:58:45', '2023-06-20 05:05:52'),
(889, 69, 2, 3, 0, '2023-06-20 04:58:45', '2023-06-20 04:58:45'),
(890, 69, 1, 4, 0, '2023-06-20 04:58:45', '2023-06-20 04:58:45'),
(891, 69, 2, 4, 0, '2023-06-20 04:58:45', '2023-06-20 04:58:45'),
(892, 69, 1, 5, 0, '2023-06-20 04:58:45', '2023-06-20 04:58:45'),
(893, 69, 2, 5, 0, '2023-06-20 04:58:45', '2023-06-20 04:58:45'),
(894, 69, 1, 6, 0, '2023-06-20 04:58:45', '2023-06-20 04:58:45'),
(895, 69, 2, 6, 0, '2023-06-20 04:58:45', '2023-06-20 04:58:45'),
(896, 69, 1, 7, 0, '2023-06-20 04:58:45', '2023-06-20 04:58:45'),
(897, 69, 2, 7, 0, '2023-06-20 04:58:45', '2023-06-20 04:58:45'),
(898, 70, 2, 1, 0, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(899, 70, 1, 2, 0, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(900, 70, 2, 2, 0, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(901, 70, 1, 3, 0, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(902, 70, 2, 3, 0, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(903, 70, 1, 4, 0, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(904, 70, 2, 4, 0, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(905, 70, 1, 5, 0, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(906, 70, 2, 5, 0, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(907, 70, 1, 6, 0, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(908, 70, 2, 6, 0, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(909, 70, 1, 7, 0, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(910, 70, 2, 7, 0, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(911, 71, 2, 1, 0, '2023-06-20 06:03:28', '2023-06-20 06:03:28'),
(912, 71, 1, 2, 0, '2023-06-20 06:03:28', '2023-06-20 07:10:52'),
(913, 71, 2, 2, 0, '2023-06-20 06:03:28', '2023-06-20 06:03:28'),
(914, 71, 1, 3, 0, '2023-06-20 06:03:28', '2023-06-20 07:10:41'),
(915, 71, 2, 3, 0, '2023-06-20 06:03:28', '2023-06-20 06:03:28'),
(916, 71, 1, 4, 0, '2023-06-20 06:03:28', '2023-06-20 06:28:41'),
(917, 71, 2, 4, 0, '2023-06-20 06:03:28', '2023-06-20 06:03:28'),
(918, 71, 1, 5, 0, '2023-06-20 06:03:28', '2023-06-20 06:03:28'),
(919, 71, 2, 5, 0, '2023-06-20 06:03:28', '2023-06-20 06:03:28'),
(920, 71, 1, 6, 0, '2023-06-20 06:03:28', '2023-06-20 06:03:28'),
(921, 71, 2, 6, 0, '2023-06-20 06:03:28', '2023-06-20 06:03:28'),
(922, 71, 1, 7, 0, '2023-06-20 06:03:28', '2023-06-20 06:03:28'),
(923, 71, 2, 7, 0, '2023-06-20 06:03:28', '2023-06-20 06:03:28'),
(924, 72, 2, 1, 0, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(925, 72, 1, 2, 0, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(926, 72, 2, 2, 0, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(927, 72, 1, 3, 0, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(928, 72, 2, 3, 0, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(929, 72, 1, 4, 0, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(930, 72, 2, 4, 0, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(931, 72, 1, 5, 0, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(932, 72, 2, 5, 0, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(933, 72, 1, 6, 0, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(934, 72, 2, 6, 0, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(935, 72, 1, 7, 0, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(936, 72, 2, 7, 0, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(937, 73, 2, 1, 0, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(938, 73, 1, 2, 0, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(939, 73, 2, 2, 0, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(940, 73, 1, 3, 0, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(941, 73, 2, 3, 0, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(942, 73, 1, 4, 0, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(943, 73, 2, 4, 0, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(944, 73, 1, 5, 0, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(945, 73, 2, 5, 0, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(946, 73, 1, 6, 0, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(947, 73, 2, 6, 0, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(948, 73, 1, 7, 0, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(949, 73, 2, 7, 0, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(950, 74, 2, 1, 0, '2023-06-20 11:49:03', '2023-06-20 11:49:03'),
(951, 74, 1, 2, 0, '2023-06-20 11:49:03', '2023-06-20 11:49:53'),
(952, 74, 2, 2, 0, '2023-06-20 11:49:03', '2023-06-20 11:49:03'),
(953, 74, 1, 3, 0, '2023-06-20 11:49:03', '2023-06-20 11:49:03'),
(954, 74, 2, 3, 0, '2023-06-20 11:49:03', '2023-06-20 11:49:03'),
(955, 74, 1, 4, 0, '2023-06-20 11:49:03', '2023-06-20 11:49:03'),
(956, 74, 2, 4, 0, '2023-06-20 11:49:03', '2023-06-20 11:49:03'),
(957, 74, 1, 5, 0, '2023-06-20 11:49:03', '2023-06-20 11:49:03'),
(958, 74, 2, 5, 0, '2023-06-20 11:49:03', '2023-06-20 11:49:03'),
(959, 74, 1, 6, 0, '2023-06-20 11:49:03', '2023-06-20 11:49:03'),
(960, 74, 2, 6, 0, '2023-06-20 11:49:03', '2023-06-20 11:49:03'),
(961, 74, 1, 7, 0, '2023-06-20 11:49:03', '2023-06-20 11:49:03'),
(962, 74, 2, 7, 0, '2023-06-20 11:49:03', '2023-06-20 11:49:03'),
(963, 75, 2, 1, 0, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(964, 75, 1, 2, 0, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(965, 75, 2, 2, 0, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(966, 75, 1, 3, 0, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(967, 75, 2, 3, 0, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(968, 75, 1, 4, 0, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(969, 75, 2, 4, 0, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(970, 75, 1, 5, 0, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(971, 75, 2, 5, 0, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(972, 75, 1, 6, 0, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(973, 75, 2, 6, 0, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(974, 75, 1, 7, 0, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(975, 75, 2, 7, 0, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(976, 76, 2, 1, 0, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(977, 76, 1, 2, 0, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(978, 76, 2, 2, 0, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(979, 76, 1, 3, 0, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(980, 76, 2, 3, 0, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(981, 76, 1, 4, 0, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(982, 76, 2, 4, 0, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(983, 76, 1, 5, 0, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(984, 76, 2, 5, 0, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(985, 76, 1, 6, 0, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(986, 76, 2, 6, 0, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(987, 76, 1, 7, 0, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(988, 76, 2, 7, 0, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(989, 77, 2, 1, 0, '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(990, 77, 1, 2, 0, '2023-06-22 06:38:41', '2023-06-22 06:39:36'),
(991, 77, 2, 2, 0, '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(992, 77, 1, 3, 0, '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(993, 77, 2, 3, 0, '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(994, 77, 1, 4, 0, '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(995, 77, 2, 4, 0, '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(996, 77, 1, 5, 0, '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(997, 77, 2, 5, 0, '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(998, 77, 1, 6, 0, '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(999, 77, 2, 6, 0, '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(1000, 77, 1, 7, 0, '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(1001, 77, 2, 7, 0, '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(1002, 78, 2, 1, 0, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(1003, 78, 1, 2, 0, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(1004, 78, 2, 2, 0, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(1005, 78, 1, 3, 0, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(1006, 78, 2, 3, 0, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(1007, 78, 1, 4, 0, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(1008, 78, 2, 4, 0, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(1009, 78, 1, 5, 0, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(1010, 78, 2, 5, 0, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(1011, 78, 1, 6, 0, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(1012, 78, 2, 6, 0, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(1013, 78, 1, 7, 0, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(1014, 78, 2, 7, 0, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(1015, 79, 2, 1, 0, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(1016, 79, 1, 2, 0, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(1017, 79, 2, 2, 0, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(1018, 79, 1, 3, 0, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(1019, 79, 2, 3, 0, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(1020, 79, 1, 4, 0, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(1021, 79, 2, 4, 0, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(1022, 79, 1, 5, 0, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(1023, 79, 2, 5, 0, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(1024, 79, 1, 6, 0, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(1025, 79, 2, 6, 0, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(1026, 79, 1, 7, 0, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(1027, 79, 2, 7, 0, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(1028, 80, 2, 1, 0, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(1029, 80, 1, 2, 0, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(1030, 80, 2, 2, 0, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(1031, 80, 1, 3, 0, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(1032, 80, 2, 3, 0, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(1033, 80, 1, 4, 0, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(1034, 80, 2, 4, 0, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(1035, 80, 1, 5, 0, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(1036, 80, 2, 5, 0, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(1037, 80, 1, 6, 0, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(1038, 80, 2, 6, 0, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(1039, 80, 1, 7, 0, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(1040, 80, 2, 7, 0, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(1041, 81, 2, 1, 0, '2023-06-24 13:18:13', '2023-06-24 13:18:13'),
(1042, 81, 1, 2, 0, '2023-06-24 13:18:13', '2023-06-24 13:20:19'),
(1043, 81, 2, 2, 0, '2023-06-24 13:18:13', '2023-06-24 13:18:13'),
(1044, 81, 1, 3, 0, '2023-06-24 13:18:13', '2023-06-24 13:20:21'),
(1045, 81, 2, 3, 0, '2023-06-24 13:18:13', '2023-06-24 13:18:13'),
(1046, 81, 1, 4, 0, '2023-06-24 13:18:13', '2023-06-24 13:20:21'),
(1047, 81, 2, 4, 0, '2023-06-24 13:18:13', '2023-06-24 13:18:13'),
(1048, 81, 1, 5, 0, '2023-06-24 13:18:13', '2023-06-24 13:18:13'),
(1049, 81, 2, 5, 0, '2023-06-24 13:18:13', '2023-06-24 13:18:13'),
(1050, 81, 1, 6, 0, '2023-06-24 13:18:13', '2023-06-24 13:18:13'),
(1051, 81, 2, 6, 0, '2023-06-24 13:18:13', '2023-06-24 13:18:13'),
(1052, 81, 1, 7, 0, '2023-06-24 13:18:13', '2023-06-24 13:18:13'),
(1053, 81, 2, 7, 0, '2023-06-24 13:18:13', '2023-06-24 13:18:13'),
(1054, 82, 2, 1, 0, '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(1055, 82, 1, 2, 0, '2023-06-24 13:21:26', '2023-06-24 13:21:58'),
(1056, 82, 2, 2, 0, '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(1057, 82, 1, 3, 0, '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(1058, 82, 2, 3, 0, '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(1059, 82, 1, 4, 0, '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(1060, 82, 2, 4, 0, '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(1061, 82, 1, 5, 0, '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(1062, 82, 2, 5, 0, '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(1063, 82, 1, 6, 0, '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(1064, 82, 2, 6, 0, '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(1065, 82, 1, 7, 0, '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(1066, 82, 2, 7, 0, '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(1067, 83, 2, 1, 0, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(1068, 83, 1, 2, 0, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(1069, 83, 2, 2, 0, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(1070, 83, 1, 3, 0, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(1071, 83, 2, 3, 0, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(1072, 83, 1, 4, 0, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(1073, 83, 2, 4, 0, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(1074, 83, 1, 5, 0, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(1075, 83, 2, 5, 0, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(1076, 83, 1, 6, 0, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(1077, 83, 2, 6, 0, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(1078, 83, 1, 7, 0, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(1079, 83, 2, 7, 0, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(1080, 84, 2, 1, 0, '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(1081, 84, 1, 2, 0, '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(1082, 84, 2, 2, 0, '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(1083, 84, 1, 3, 0, '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(1084, 84, 2, 3, 0, '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(1085, 84, 1, 4, 0, '2023-06-26 08:16:17', '2023-06-29 11:05:22'),
(1086, 84, 2, 4, 0, '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(1087, 84, 1, 5, 0, '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(1088, 84, 2, 5, 0, '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(1089, 84, 1, 6, 0, '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(1090, 84, 2, 6, 0, '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(1091, 84, 1, 7, 0, '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(1092, 84, 2, 7, 0, '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(1093, 85, 2, 1, 0, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(1094, 85, 1, 2, 0, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(1095, 85, 2, 2, 0, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(1096, 85, 1, 3, 0, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(1097, 85, 2, 3, 0, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(1098, 85, 1, 4, 0, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(1099, 85, 2, 4, 0, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(1100, 85, 1, 5, 0, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(1101, 85, 2, 5, 0, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(1102, 85, 1, 6, 0, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(1103, 85, 2, 6, 0, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(1104, 85, 1, 7, 0, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(1105, 85, 2, 7, 0, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(1106, 86, 2, 1, 0, '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(1107, 86, 1, 2, 0, '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(1108, 86, 2, 2, 0, '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(1109, 86, 1, 3, 0, '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(1110, 86, 2, 3, 0, '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(1111, 86, 1, 4, 0, '2023-06-26 08:45:39', '2023-06-29 12:49:09'),
(1112, 86, 2, 4, 0, '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(1113, 86, 1, 5, 0, '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(1114, 86, 2, 5, 0, '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(1115, 86, 1, 6, 0, '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(1116, 86, 2, 6, 0, '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(1117, 86, 1, 7, 0, '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(1118, 86, 2, 7, 0, '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(1119, 87, 2, 1, 0, '2023-06-26 09:38:41', '2023-06-26 09:38:41'),
(1120, 87, 1, 2, 0, '2023-06-26 09:38:41', '2023-06-27 10:23:33'),
(1121, 87, 2, 2, 0, '2023-06-26 09:38:41', '2023-06-26 09:38:41'),
(1122, 87, 1, 3, 0, '2023-06-26 09:38:41', '2023-06-27 10:23:35'),
(1123, 87, 2, 3, 0, '2023-06-26 09:38:41', '2023-06-26 09:38:41'),
(1124, 87, 1, 4, 0, '2023-06-26 09:38:41', '2023-06-27 10:27:02'),
(1125, 87, 2, 4, 0, '2023-06-26 09:38:41', '2023-06-26 09:38:41'),
(1126, 87, 1, 5, 0, '2023-06-26 09:38:41', '2023-06-28 04:10:07'),
(1127, 87, 2, 5, 0, '2023-06-26 09:38:41', '2023-06-26 09:38:41'),
(1128, 87, 1, 6, 0, '2023-06-26 09:38:41', '2023-06-27 10:23:39'),
(1129, 87, 2, 6, 0, '2023-06-26 09:38:41', '2023-06-26 09:38:41'),
(1130, 87, 1, 7, 0, '2023-06-26 09:38:41', '2023-06-27 10:23:40'),
(1131, 87, 2, 7, 0, '2023-06-26 09:38:41', '2023-06-26 09:38:41'),
(1132, 88, 2, 1, 0, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(1133, 88, 1, 2, 0, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(1134, 88, 2, 2, 0, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(1135, 88, 1, 3, 0, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(1136, 88, 2, 3, 0, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(1137, 88, 1, 4, 0, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(1138, 88, 2, 4, 0, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(1139, 88, 1, 5, 0, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(1140, 88, 2, 5, 0, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(1141, 88, 1, 6, 0, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(1142, 88, 2, 6, 0, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(1143, 88, 1, 7, 0, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(1144, 88, 2, 7, 0, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(1145, 89, 2, 1, 0, '2023-06-26 09:56:35', '2023-06-26 09:56:35'),
(1146, 89, 1, 2, 0, '2023-06-26 09:56:35', '2023-06-26 09:56:35'),
(1147, 89, 2, 2, 0, '2023-06-26 09:56:35', '2023-06-26 09:56:35'),
(1148, 89, 1, 3, 0, '2023-06-26 09:56:35', '2023-06-26 09:56:35'),
(1149, 89, 2, 3, 0, '2023-06-26 09:56:35', '2023-06-26 09:56:35'),
(1150, 89, 1, 4, 0, '2023-06-26 09:56:35', '2023-06-26 09:56:35'),
(1151, 89, 2, 4, 0, '2023-06-26 09:56:35', '2023-06-26 09:56:35'),
(1152, 89, 1, 5, 0, '2023-06-26 09:56:35', '2023-06-26 09:56:35'),
(1153, 89, 2, 5, 0, '2023-06-26 09:56:35', '2023-06-26 09:56:35'),
(1154, 89, 1, 6, 0, '2023-06-26 09:56:35', '2023-06-26 09:56:35'),
(1155, 89, 2, 6, 0, '2023-06-26 09:56:35', '2023-06-26 09:56:35'),
(1156, 89, 1, 7, 1, '2023-06-26 09:56:35', '2023-06-26 10:23:49'),
(1157, 89, 2, 7, 0, '2023-06-26 09:56:35', '2023-06-26 09:56:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log_vnpay`
--

CREATE TABLE `log_vnpay` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `data_ipn` text COLLATE utf8mb4_unicode_ci,
  `data_result` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `log_vnpay`
--

INSERT INTO `log_vnpay` (`id`, `ip`, `url`, `data_ipn`, `data_result`, `created_at`, `updated_at`) VALUES
(1, '113.160.92.202', 'https://oiio.vn/giao-dich/nap-tien/ipn?vnp_Amount=200000000&vnp_BankCode=NCB&vnp_CardType=ATM&vnp_OrderInfo=Thanh%20toan%20GD%3ATxnA4CAF8D7EFBD2&vnp_PayDate=20230622153047&vnp_ResponseCode=00&vnp_SecureHash=bd3f40f5b76781db8b1636755ce7431336058dc55df56714e62b9795e854ace94b7db45455f4486a3e6e7c93994dc4f55dc4593121a935a94ccb01cda86dbb4e&vnp_TmnCode=OIIOWEB1&vnp_TransactionNo=14046412&vnp_TransactionStatus=00&vnp_TxnRef=TxnA4CAF8D7EFBD2', '{\"vnp_Amount\":\"200000000\",\"vnp_BankCode\":\"NCB\",\"vnp_CardType\":\"ATM\",\"vnp_OrderInfo\":\"Thanh toan GD:TxnA4CAF8D7EFBD2\",\"vnp_PayDate\":\"20230622153047\",\"vnp_ResponseCode\":\"00\",\"vnp_SecureHash\":\"bd3f40f5b76781db8b1636755ce7431336058dc55df56714e62b9795e854ace94b7db45455f4486a3e6e7c93994dc4f55dc4593121a935a94ccb01cda86dbb4e\",\"vnp_TmnCode\":\"OIIOWEB1\",\"vnp_TransactionNo\":\"14046412\",\"vnp_TransactionStatus\":\"00\",\"vnp_TxnRef\":\"TxnA4CAF8D7EFBD2\"}', '{\"RspCode\":\"00\",\"Message\":\"Confirm Success\"}', '2023-06-22 08:34:19', '2023-06-22 08:34:19'),
(2, '113.160.92.202', 'https://oiio.vn/giao-dich/nap-tien/ipn?vnp_Amount=200000000&vnp_BankCode=NCB&vnp_CardType=ATM&vnp_OrderInfo=Thanh%20toan%20GD%3ATxnF715E9D8A6DB9&vnp_PayDate=20230622151042&vnp_ResponseCode=99&vnp_SecureHash=28d8247b1792014cb064d60bcbc12283a5a4115d920ceaf0ef71681e07c160d63dfd5ad1bfa9de533d38c1c52336c86da11b1d6320620739a8fe428b17ca3532&vnp_TmnCode=OIIOWEB1&vnp_TransactionNo=14046367&vnp_TransactionStatus=99&vnp_TxnRef=TxnF715E9D8A6DB9', '{\"vnp_Amount\":\"200000000\",\"vnp_BankCode\":\"NCB\",\"vnp_CardType\":\"ATM\",\"vnp_OrderInfo\":\"Thanh toan GD:TxnF715E9D8A6DB9\",\"vnp_PayDate\":\"20230622151042\",\"vnp_ResponseCode\":\"99\",\"vnp_SecureHash\":\"28d8247b1792014cb064d60bcbc12283a5a4115d920ceaf0ef71681e07c160d63dfd5ad1bfa9de533d38c1c52336c86da11b1d6320620739a8fe428b17ca3532\",\"vnp_TmnCode\":\"OIIOWEB1\",\"vnp_TransactionNo\":\"14046367\",\"vnp_TransactionStatus\":\"99\",\"vnp_TxnRef\":\"TxnF715E9D8A6DB9\"}', '{\"RspCode\":\"00\",\"Message\":\"Confirm Success\"}', '2023-06-22 08:34:19', '2023-06-22 08:34:19'),
(3, '113.160.92.202', 'https://oiio.vn/giao-dich/nap-tien/ipn?vnp_Amount=200000000&vnp_BankCode=NCB&vnp_CardType=ATM&vnp_OrderInfo=Thanh%20toan%20GD%3ATxnA4CAF8D7EFBD2&vnp_PayDate=20230622153047&vnp_ResponseCode=00&vnp_SecureHash=dad0c537517f0e844121098b81a568cd75f3288fdfda57163543c7bd7bba6cd0c48a2731a1da00612b7adacc7eed6895cbdf1fad9f285ed79ce1b4763c364cd8&vnp_TmnCode=OIIOWEB1&vnp_TransactionNo=14046412&vnp_TransactionStatus=00&vnp_TxnRef=22TxnA4CAF8D7EFBD288', '{\"vnp_Amount\":\"200000000\",\"vnp_BankCode\":\"NCB\",\"vnp_CardType\":\"ATM\",\"vnp_OrderInfo\":\"Thanh toan GD:TxnA4CAF8D7EFBD2\",\"vnp_PayDate\":\"20230622153047\",\"vnp_ResponseCode\":\"00\",\"vnp_SecureHash\":\"dad0c537517f0e844121098b81a568cd75f3288fdfda57163543c7bd7bba6cd0c48a2731a1da00612b7adacc7eed6895cbdf1fad9f285ed79ce1b4763c364cd8\",\"vnp_TmnCode\":\"OIIOWEB1\",\"vnp_TransactionNo\":\"14046412\",\"vnp_TransactionStatus\":\"00\",\"vnp_TxnRef\":\"22TxnA4CAF8D7EFBD288\"}', '{\"RspCode\":\"01\",\"Message\":\"Order not found\"}', '2023-06-22 08:34:20', '2023-06-22 08:34:20'),
(4, '113.160.92.202', 'https://oiio.vn/giao-dich/nap-tien/ipn?vnp_Amount=200000000&vnp_BankCode=NCB&vnp_CardType=ATM&vnp_OrderInfo=Thanh%20toan%20GD%3ATxnA4CAF8D7EFBD2&vnp_PayDate=20230622153047&vnp_ResponseCode=00&vnp_SecureHash=bd3f40f5b76781db8b1636755ce7431336058dc55df56714e62b9795e854ace94b7db45455f4486a3e6e7c93994dc4f55dc4593121a935a94ccb01cda86dbb4e&vnp_TmnCode=OIIOWEB1&vnp_TransactionNo=14046412&vnp_TransactionStatus=00&vnp_TxnRef=TxnA4CAF8D7EFBD2', '{\"vnp_Amount\":\"200000000\",\"vnp_BankCode\":\"NCB\",\"vnp_CardType\":\"ATM\",\"vnp_OrderInfo\":\"Thanh toan GD:TxnA4CAF8D7EFBD2\",\"vnp_PayDate\":\"20230622153047\",\"vnp_ResponseCode\":\"00\",\"vnp_SecureHash\":\"bd3f40f5b76781db8b1636755ce7431336058dc55df56714e62b9795e854ace94b7db45455f4486a3e6e7c93994dc4f55dc4593121a935a94ccb01cda86dbb4e\",\"vnp_TmnCode\":\"OIIOWEB1\",\"vnp_TransactionNo\":\"14046412\",\"vnp_TransactionStatus\":\"00\",\"vnp_TxnRef\":\"TxnA4CAF8D7EFBD2\"}', '{\"RspCode\":\"02\",\"Message\":\"Order already confirmed\"}', '2023-06-22 08:34:20', '2023-06-22 08:34:20'),
(5, '113.160.92.202', 'https://oiio.vn/giao-dich/nap-tien/ipn?vnp_Amount=200000100&vnp_BankCode=NCB&vnp_CardType=ATM&vnp_OrderInfo=Thanh%20toan%20GD%3ATxnA4CAF8D7EFBD2&vnp_PayDate=20230622153047&vnp_ResponseCode=00&vnp_SecureHash=da7a97cb3b189ca75364ee0b60030602d19bfd3d341088b7a00337596c827d716154278840ea6affd818215a79d9ba949efd0ce30cb4f51b77a3462129d3b918&vnp_TmnCode=OIIOWEB1&vnp_TransactionNo=14046412&vnp_TransactionStatus=00&vnp_TxnRef=TxnA4CAF8D7EFBD2', '{\"vnp_Amount\":\"200000100\",\"vnp_BankCode\":\"NCB\",\"vnp_CardType\":\"ATM\",\"vnp_OrderInfo\":\"Thanh toan GD:TxnA4CAF8D7EFBD2\",\"vnp_PayDate\":\"20230622153047\",\"vnp_ResponseCode\":\"00\",\"vnp_SecureHash\":\"da7a97cb3b189ca75364ee0b60030602d19bfd3d341088b7a00337596c827d716154278840ea6affd818215a79d9ba949efd0ce30cb4f51b77a3462129d3b918\",\"vnp_TmnCode\":\"OIIOWEB1\",\"vnp_TransactionNo\":\"14046412\",\"vnp_TransactionStatus\":\"00\",\"vnp_TxnRef\":\"TxnA4CAF8D7EFBD2\"}', '{\"RspCode\":\"04\",\"Message\":\"invalid amount\"}', '2023-06-22 08:34:20', '2023-06-22 08:34:20'),
(6, '113.160.92.202', 'https://oiio.vn/giao-dich/nap-tien/ipn?vnp_Amount=200000000&vnp_BankCode=NCB&vnp_CardType=ATM&vnp_OrderInfo=Thanh%20toan%20GD%3ATxnA4CAF8D7EFBD2&vnp_PayDate=20230622153047&vnp_ResponseCode=00&vnp_SecureHash=bd3f40f5b76781db8b1636755ce7431336058dc55df56714e62b9795e854ace94b7db45455f4486a3e6e7c93994dc4f55dc4593121a935a94ccb01cda86dbb4ea&vnp_TmnCode=OIIOWEB1&vnp_TransactionNo=14046412&vnp_TransactionStatus=00&vnp_TxnRef=TxnA4CAF8D7EFBD2', '{\"vnp_Amount\":\"200000000\",\"vnp_BankCode\":\"NCB\",\"vnp_CardType\":\"ATM\",\"vnp_OrderInfo\":\"Thanh toan GD:TxnA4CAF8D7EFBD2\",\"vnp_PayDate\":\"20230622153047\",\"vnp_ResponseCode\":\"00\",\"vnp_SecureHash\":\"bd3f40f5b76781db8b1636755ce7431336058dc55df56714e62b9795e854ace94b7db45455f4486a3e6e7c93994dc4f55dc4593121a935a94ccb01cda86dbb4ea\",\"vnp_TmnCode\":\"OIIOWEB1\",\"vnp_TransactionNo\":\"14046412\",\"vnp_TransactionStatus\":\"00\",\"vnp_TxnRef\":\"TxnA4CAF8D7EFBD2\"}', '{\"RspCode\":\"97\",\"Message\":\"Invalid signature\"}', '2023-06-22 08:34:20', '2023-06-22 08:34:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_03_13_150644_create_admins_table', 1),
(5, '2023_04_26_134540_create_user_contacts_table', 1),
(6, '2023_04_26_134923_create_user_bank_accounts_table', 1),
(7, '2023_04_26_140019_create_wallets_table', 1),
(8, '2023_04_26_140257_create_reviews_table', 1),
(9, '2023_04_26_143124_create_deposits_table', 1),
(10, '2023_04_26_143722_create_withdraws_table', 1),
(11, '2023_04_26_144042_create_transactions_table', 1),
(12, '2023_04_26_151237_create_attributes_table', 1),
(13, '2023_04_26_153401_create_attribute_options_table', 1),
(14, '2023_04_26_155101_create_jobs_table', 1),
(15, '2023_04_26_160139_create_job_attribute_options_table', 1),
(16, '2023_04_26_160554_create_job_histories_table', 1),
(17, '2023_04_26_160834_create_settings_table', 1),
(18, '2023_04_26_170451_create_user_blacklist_jobs_table', 1),
(19, '2023_04_27_100516_create_queue_jobs_table', 1),
(20, '2023_04_27_110528_create_queue_failed_jobs_table', 1),
(21, '2023_05_05_093015_create_job_details_table', 1),
(22, '2023_05_24_092507_create_report_jobs_table', 1),
(23, '2023_05_30_100937_create_provinces_table', 1),
(24, '2023_05_30_101320_create_districts_table', 1),
(25, '2023_05_30_101514_create_wards_table', 1),
(26, '2023_05_31_132638_create_job_status_new_table', 1),
(27, '2023_05_31_140128_create_news_table', 1),
(28, '2023_06_02_091033_create_statistics_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `admin_id`, `title`, `slug`, `avatar`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Những lợi ích khi các shop tạo đơn SETDING trên hệ thống oiio.vn', 'nhung-loi-ich-khi-cac-shop-tao-don-setding-tren-he-thong-oiiovn', '/public/uploads/images/Tin%20t%E1%BB%A9c/seeding-shopee.jpg', '<h2 style=\"text-align:center\"><span style=\"color:#3498db\"><strong>Những lợi &iacute;ch khi c&aacute;c shop tạo đơn SETDING tr&ecirc;n hệ thống <span class=\"marker\">oiio.vn</span></strong></span></h2>\r\n\r\n<h3><strong>Dưới đ&acirc;y l&agrave; những lợi &iacute;ch của shop tr&ecirc;n oiio.vn</strong></h3>\r\n\r\n<div>&nbsp;&nbsp; <strong>1. Tạo đơn với c&aacute;c y&ecirc;u cầu tuỳ biến</strong><br />\r\n&nbsp;&nbsp; <strong>2. Nhanh ch&oacute;ng kết nối được với những người đặt đơn c&oacute; uy t&iacute;n cao</strong><br />\r\n- L&agrave;m việc nhanh ch&oacute;ng, theo quy tr&igrave;nh<br />\r\n- T&agrave;i khoản đặt c&oacute; hạng cao, hoặc c&oacute; đơn h&agrave;ng th&agrave;nh c&ocirc;ng<br />\r\n- C&oacute; th&ocirc;ng tin của người đặt nhiều hơn</div>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;<strong>3. Tr&aacute;nh scam trong quy tr&igrave;nh thu&ecirc; đơn ảo</strong><br />\r\n- Kh&ocirc;ng cần phải chuyển khoản cho shipper<br />\r\n- Kh&ocirc;ng cần chuyển khoản cho người đặt th&ocirc;ng qua ng&acirc;n h&agrave;ng</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;<strong>4. Tạo được nhiều loại đơn như :</strong><br />\r\n- &Aacute;p được m&atilde; ship, m&atilde; s&agrave;n v&agrave; m&atilde; shop<br />\r\n- Tạo được đơn giao h&agrave;ng nhanh v&agrave; cộng t&aacute;c vi&ecirc;n l&agrave; người nhận h&agrave;ng cho shop,<br />\r\n- Tạo được đơn m&agrave; người đặt hộ thanh to&aacute;n shopeepay hoặc nhận h&agrave;ng thanh to&aacute;n cho đơn h&agrave;ng.<br />\r\n- Tạo được đa s&agrave;n như shopee, tiktok, lazada v&agrave; tiki</p>\r\n\r\n<p><br />\r\n<strong>5. Quản l&yacute; đơn n&agrave;o với người n&agrave;o thuận tiện<br />\r\n6. Giảm được nhiều chi ph&iacute; đặt đơn l&ecirc;n đến 45%<br />\r\n7. Giảm thiểu tin nhắn chờ, kh&acirc;u quản l&yacute; đặt đơn.</strong></p>\r\n\r\n<p><br />\r\n<strong>8. Nhận được c&aacute;c ưu đ&atilde;i ri&ecirc;ng d&agrave;nh cho c&aacute;c shop setding số lượng lớn.</strong><br />\r\n- Mở th&ocirc;ng tin shop gi&aacute; rẻ cho th&agrave;nh vi&ecirc;n oiio.vn<br />\r\n- Lển shop mall gi&aacute; thấp hơn cho th&agrave;nh vi&ecirc;n<br />\r\n- Mở lại F02 cho c&aacute;c shop gi&aacute; tốt (tỉ lệ đậu 40%)<br />\r\n- Hỗ trợ c&aacute;c dịch vụ tiktok shop<br />\r\n- Ưu ti&ecirc;n trải nghiệm t&iacute;nh năng afflate của web.<br />\r\n<br />\r\n--&gt; Khi d&ugrave;ng web bạn trải nghiệm được quy t&igrave;nh nghi&ecirc;m chỉnh cho đến khi đơn ảo được đ&aacute;nh gi&aacute; một c&aacute;ch tốt nhất ( Cam kết CTV kh&ocirc;ng thể scam shop tr&ecirc;n web được)<br />\r\n- Giảm chi ph&iacute; khi tự thu&ecirc; tr&ecirc;n c&aacute;c group zalo...l&ecirc;n đến 45%.</p>\r\n\r\n<p style=\"text-align:right\"><em>Ng&agrave;u 15/6/2023</em></p>\r\n\r\n<p style=\"text-align:right\">C&ocirc;ng ty TNHH oiio</p>', '2023-06-15 04:52:19', '2023-06-15 04:54:46', NULL),
(2, 1, 'Chính sách phạt khi nhận đơn nhưng không tiến hành hoàn thành đơn hàng', 'chinh-sach-phat-khi-nhan-don-nhung-khong-tien-hanh-hoan-thanh-don-hang', '/public/uploads/images/Tin%20t%E1%BB%A9c/dung-sai.jpg', '<p>Ch&iacute;nh s&aacute;ch sử dụng nền tảng oiio.vn như sau:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Đồng &yacute; điều khoản sử dụng: Khi người d&ugrave;ng nhấn n&uacute;t &quot;Nhận đơn&quot; tr&ecirc;n trang web, họ cần đồng &yacute; với c&aacute;c điều khoản v&agrave; điều kiện sử dụng của oiio.vn. Điều n&agrave;y đảm bảo rằng người d&ugrave;ng đ&atilde; đọc v&agrave; hiểu quy định trước khi tiếp tục thực hiện đơn h&agrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hủy đơn h&agrave;ng tự động: Trường hợp người d&ugrave;ng đ&atilde; nhận đơn h&agrave;ng nhưng kh&ocirc;ng tiếp tục đặt đơn cho shop, v&agrave; kh&ocirc;ng phản hồi về việc ho&agrave;n th&agrave;nh đơn h&agrave;ng, đơn h&agrave;ng đ&oacute; sẽ tự động bị huỷ. Điều n&agrave;y nhằm đảm bảo t&iacute;nh ch&iacute;nh x&aacute;c v&agrave; hiệu quả trong quản l&yacute; đơn h&agrave;ng tr&ecirc;n nền tảng oiio.vn.</p>\r\n	</li>\r\n	<li>\r\n	<p>Phạt huỷ đơn h&agrave;ng: Sau khi đơn h&agrave;ng bị tự động huỷ, t&agrave;i khoản người đặt sẽ bị trừ 2.000 đồng phạt huỷ đơn h&agrave;ng. Điều n&agrave;y nhằm tạo ra một cơ chế đ&aacute;nh gi&aacute; v&agrave; đảm bảo t&iacute;nh tr&aacute;ch nhiệm của người d&ugrave;ng đối với việc đặt đơn h&agrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Cấm sử dụng t&agrave;i khoản: Trong trường hợp t&agrave;i khoản tiếp tục t&aacute;i diễn h&agrave;nh vi thiếu tr&aacute;ch nhiệm với đơn h&agrave;ng nhiều lần, t&agrave;i khoản đ&oacute; sẽ bị cấm sử dụng tr&ecirc;n nền tảng oiio.vn. Biện ph&aacute;p n&agrave;y nhằm đảm bảo rằng chỉ những người d&ugrave;ng c&oacute; h&agrave;nh vi đ&aacute;ng tin cậy v&agrave; tr&aacute;ch nhiệm mới c&oacute; quyền sử dụng nền tảng để đặt h&agrave;ng.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>T&oacute;m lại, ch&iacute;nh s&aacute;ch n&agrave;y nhằm th&uacute;c đẩy t&iacute;nh ch&iacute;nh x&aacute;c, hiệu quả v&agrave; tr&aacute;ch nhiệm trong quản l&yacute; v&agrave; thực hiện đơn h&agrave;ng tr&ecirc;n oiio.vn, bảo vệ quyền lợi của cả người d&ugrave;ng v&agrave; c&aacute;c shop tr&ecirc;n nền tảng n&agrave;y.</p>', '2023-06-18 03:16:37', '2023-06-18 03:16:37', NULL),
(3, 1, 'Chính sách Sử dụng Số dư trên nền tảng oiio.vn', 'chinh-sach-su-dung-so-du-tren-nen-tang-oiiovn', '/public/uploads/files/Earn%20oney.png', '<p style=\"text-align:center\"><span style=\"color:#1abc9c\"><span style=\"font-size:18px\">Ch&iacute;nh s&aacute;ch Sử dụng Số dư tr&ecirc;n nền tảng oiio.vn</span></span></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Số dư t&agrave;i khoản:</p>\r\n\r\n	<ul>\r\n		<li>Mỗi t&agrave;i khoản tr&ecirc;n nền tảng oiio.vn sẽ c&oacute; số dư d&ugrave;ng để tạo đơn h&agrave;ng.</li>\r\n		<li>Số dư được nạp tiền th&ocirc;ng qua cổng Vnpay với mức ph&iacute; l&agrave; 0%.</li>\r\n		<li>Số dư tối thiểu để r&uacute;t l&agrave; <span style=\"color:#e74c3c\">50.000₫</span> tr&ecirc;n mỗi lần r&uacute;t.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>R&uacute;t tiền:</p>\r\n\r\n	<ul>\r\n		<li>Số tiền r&uacute;t tối thiểu trong lần đầu ti&ecirc;n l&agrave; <span style=\"color:#e74c3c\">50.000₫</span>.</li>\r\n		<li>Ph&iacute; giao dịch cho mỗi lần r&uacute;t l&agrave; <span style=\"color:#e74c3c\">2.200₫</span>.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Tiền cọc:</p>\r\n\r\n	<ul>\r\n		<li>Tiền cọc l&agrave; số tiền m&agrave; Shop sẽ đặt cọc cho cộng t&aacute;c vi&ecirc;n tr&ecirc;n đơn h&agrave;ng.</li>\r\n		<li>Ph&iacute; tiền cọc l&agrave; 1,1% của số tiền cọc. (ph&iacute; n&agrave;y shop thanh to&aacute;n)</li>\r\n		<li>Shop sẽ thanh to&aacute;n ph&iacute; dịch vụ l&agrave; 1,1% cho số tiền cọc.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Ng&agrave;y &aacute;p dụng ch&iacute;nh s&aacute;ch:</p>\r\n\r\n	<ul>\r\n		<li>Ch&iacute;nh s&aacute;ch n&agrave;y &aacute;p dụng kể từ ng&agrave;y m&ugrave;ng 1 th&aacute;ng 7 năm 2023.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>Vui l&ograve;ng lưu &yacute; rằng ch&iacute;nh s&aacute;ch tr&ecirc;n chỉ &aacute;p dụng cho nền tảng oiio.vn v&agrave; c&oacute; thể thay đổi theo quyết định của c&ocirc;ng ty trong tương lai.</p>\r\n\r\n<p>Xem th&ecirc;m <a href=\"https://oiio.vn/tin-tuc/chinh-sach-phat-khi-nhan-don-nhung-khong-tien-hanh-hoan-thanh-don-hang\"><span style=\"color:#3498db\">Ch&iacute;nh s&aacute;ch phạt huỷ đơn tr&ecirc;n oiio.vn</span></a></p>', '2023-06-18 14:00:55', '2023-06-18 14:00:55', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(1, 'huynhyennhi2403@gmail.com', '3wk4YnHhk6FYzLlXOp56yd2zCwhg7hlhgelj5BmxRCUNhQjdeWNFeuFHnPjwfCbS', '2023-06-17 11:17:44'),
(2, 'caoquechi.ulis@gmail.com', 'VUCAEG6N1vmtoULbY7BUti7GuykdqTzzm262TfUciRshmmnUxtlTGQyNkQ0QafDK', '2023-06-17 11:55:02'),
(3, 'caoquechi.ulis@gmail.com', 'lIoqTsxG3JPEFENX6lu4h7dzGglh3wOD5a487kLIMn1NusTDbnya6v8JBalpBym0', '2023-06-17 11:55:03'),
(4, 'tranthianhtho123r@gmail.com', 'Pvm2PpA7cVsx0DOb1MPKq49DfouuGLxLIK8kqhWG7Gql8503jd5gNZ5X8jofHIWr', '2023-06-18 12:51:40'),
(5, 'nguyentra22052002@gmail.com', 'n0i4zF1yAmwQjhjhaG0xxEeDhfpA0liqV0YZgbkviIjAFRFJQmi8BAI5rfxMiNET', '2023-06-18 13:15:23'),
(6, 'nguyentra22052002@gmail.com', '1K8GGvOai1EanyJx6r1nWRCIQNMbBchyYCcpdWtvAw8qcmDJyfwryPQx4CefX0fE', '2023-06-18 13:19:43'),
(7, 'Nguyentra22052002@gmail.com', '5AuZU07d4RLeTMEF4KDDvo39k3vwz7ZZNXpz3ySzkfSr162O8TNfSLcIG3hkGbGW', '2023-06-18 13:24:25'),
(8, 'nguyentra22052002@gmail.com', 'MeEaK1XkKcWxqVHBAZU52GPKIz7nP7D441uOHKhZT0jLH82IU3RO3w0nAlcd71BH', '2023-06-18 13:45:10'),
(9, 'nhiv50914@gmail.com', 'HEzZYdqaq6X24fwwtt2thnx6KoDvg9JL38BwMUbblcVGjBshh3GXrAHMGHfXXgse', '2023-06-20 06:04:36'),
(10, 'ngocanh6277@gmail.com', 'tni8OUL5eP9Ho43jZkxYMSX5drix8we2Tj5ObHpLhgocaOkLY8LxzySVyxgN2iF6', '2023-06-28 03:15:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` int(11) NOT NULL,
  `name` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codename` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `queue_failed_jobs`
--

CREATE TABLE `queue_failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `queue_failed_jobs`
--

INSERT INTO `queue_failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(13, '954b4880-4db7-4ef6-97c5-370147dcd659', 'database', 'default', '{\"uuid\":\"954b4880-4db7-4ef6-97c5-370147dcd659\",\"displayName\":\"App\\\\Jobs\\\\Jobs\\\\AutoResolveJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\Jobs\\\\AutoResolveJob\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\Jobs\\\\AutoResolveJob\\\":4:{s:13:\\\"repositoryJob\\\";O:34:\\\"App\\\\Repositories\\\\Job\\\\JobRepository\\\":4:{s:8:\\\"\\u0000*\\u0000model\\\";O:14:\\\"App\\\\Models\\\\Job\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";N;s:8:\\\"\\u0000*\\u0000table\\\";s:4:\\\"jobs\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000original\\\";a:0:{}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:6:\\\"status\\\";s:23:\\\"App\\\\Enums\\\\Job\\\\JobStatus\\\";s:10:\\\"is_virtual\\\";s:7:\\\"boolean\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000select\\\";a:0:{}s:11:\\\"\\u0000*\\u0000instance\\\";N;s:20:\\\"\\u0000*\\u0000repositorySetting\\\";O:42:\\\"App\\\\Repositories\\\\Setting\\\\SettingRepository\\\":3:{s:8:\\\"\\u0000*\\u0000model\\\";O:18:\\\"App\\\\Models\\\\Setting\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";N;s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"settings\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000original\\\";a:0:{}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:10:\\\"type_input\\\";s:34:\\\"App\\\\Enums\\\\Setting\\\\SettingTypeInput\\\";s:5:\\\"group\\\";s:30:\\\"App\\\\Enums\\\\Setting\\\\SettingGroup\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000select\\\";a:0:{}s:11:\\\"\\u0000*\\u0000instance\\\";N;}}s:17:\\\"repositorySetting\\\";O:42:\\\"App\\\\Repositories\\\\Setting\\\\SettingRepository\\\":3:{s:8:\\\"\\u0000*\\u0000model\\\";O:18:\\\"App\\\\Models\\\\Setting\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";N;s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"settings\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000original\\\";a:0:{}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:10:\\\"type_input\\\";s:34:\\\"App\\\\Enums\\\\Setting\\\\SettingTypeInput\\\";s:5:\\\"group\\\";s:30:\\\"App\\\\Enums\\\\Setting\\\\SettingGroup\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000select\\\";a:0:{}s:11:\\\"\\u0000*\\u0000instance\\\";N;}s:16:\\\"repositoryWallet\\\";O:40:\\\"App\\\\Repositories\\\\Wallet\\\\WalletRepository\\\":5:{s:8:\\\"\\u0000*\\u0000model\\\";O:17:\\\"App\\\\Models\\\\Wallet\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";N;s:8:\\\"\\u0000*\\u0000table\\\";s:7:\\\"wallets\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000original\\\";a:0:{}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000select\\\";a:0:{}s:11:\\\"\\u0000*\\u0000instance\\\";N;s:20:\\\"\\u0000*\\u0000repositorySetting\\\";r:74;s:6:\\\"\\u0000*\\u0000fee\\\";i:5;}s:10:\\\"serviceJob\\\";O:27:\\\"App\\\\Services\\\\Job\\\\JobService\\\":10:{s:7:\\\"\\u0000*\\u0000data\\\";N;s:13:\\\"\\u0000*\\u0000dataDetail\\\";a:0:{}s:13:\\\"\\u0000*\\u0000repository\\\";O:40:\\\"App\\\\Admin\\\\Repositories\\\\Job\\\\JobRepository\\\":3:{s:8:\\\"\\u0000*\\u0000model\\\";O:14:\\\"App\\\\Models\\\\Job\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";N;s:8:\\\"\\u0000*\\u0000table\\\";s:4:\\\"jobs\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000original\\\";a:0:{}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:6:\\\"status\\\";s:23:\\\"App\\\\Enums\\\\Job\\\\JobStatus\\\";s:10:\\\"is_virtual\\\";s:7:\\\"boolean\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000select\\\";a:0:{}s:11:\\\"\\u0000*\\u0000instance\\\";N;}s:22:\\\"\\u0000*\\u0000repositoryJobDetail\\\";O:46:\\\"App\\\\Admin\\\\Repositories\\\\Job\\\\JobDetailRepository\\\":3:{s:8:\\\"\\u0000*\\u0000model\\\";O:20:\\\"App\\\\Models\\\\JobDetail\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";N;s:8:\\\"\\u0000*\\u0000table\\\";s:11:\\\"job_details\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000original\\\";a:0:{}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:1:{s:4:\\\"meta\\\";s:48:\\\"Illuminate\\\\Database\\\\Eloquent\\\\Casts\\\\AsArrayObject\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000select\\\";a:0:{}s:11:\\\"\\u0000*\\u0000instance\\\";N;}s:22:\\\"\\u0000*\\u0000repositoryAttribute\\\";O:52:\\\"App\\\\Admin\\\\Repositories\\\\Attribute\\\\AttributeRepository\\\":3:{s:8:\\\"\\u0000*\\u0000model\\\";O:20:\\\"App\\\\Models\\\\Attribute\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";N;s:8:\\\"\\u0000*\\u0000table\\\";s:10:\\\"attributes\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000original\\\";a:0:{}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:6:\\\"status\\\";s:16:\\\"App\\\\Enums\\\\Status\\\";s:4:\\\"type\\\";s:33:\\\"App\\\\Enums\\\\Attribute\\\\AttributeType\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000select\\\";a:0:{}s:11:\\\"\\u0000*\\u0000instance\\\";N;}s:20:\\\"\\u0000*\\u0000repositorySetting\\\";r:74;s:19:\\\"\\u0000*\\u0000repositoryWallet\\\";O:46:\\\"App\\\\Admin\\\\Repositories\\\\Wallet\\\\WalletRepository\\\":5:{s:8:\\\"\\u0000*\\u0000model\\\";O:17:\\\"App\\\\Models\\\\Wallet\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";N;s:8:\\\"\\u0000*\\u0000table\\\";s:7:\\\"wallets\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000original\\\";a:0:{}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000select\\\";a:0:{}s:11:\\\"\\u0000*\\u0000instance\\\";N;s:20:\\\"\\u0000*\\u0000repositorySetting\\\";r:74;s:6:\\\"\\u0000*\\u0000fee\\\";i:5;}s:24:\\\"\\u0000*\\u0000repositoryTransaction\\\";O:56:\\\"App\\\\Admin\\\\Repositories\\\\Transaction\\\\TransactionRepository\\\":3:{s:8:\\\"\\u0000*\\u0000model\\\";O:22:\\\"App\\\\Models\\\\Transaction\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";N;s:8:\\\"\\u0000*\\u0000table\\\";s:12:\\\"transactions\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000original\\\";a:0:{}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:3:{s:4:\\\"type\\\";s:37:\\\"App\\\\Enums\\\\Transaction\\\\TransactionType\\\";s:6:\\\"detail\\\";s:48:\\\"Illuminate\\\\Database\\\\Eloquent\\\\Casts\\\\AsArrayObject\\\";s:6:\\\"status\\\";s:39:\\\"App\\\\Enums\\\\Transaction\\\\TransactionStatus\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000select\\\";a:0:{}s:11:\\\"\\u0000*\\u0000instance\\\";N;}s:16:\\\"\\u0000*\\u0000repositoryJob\\\";r:2;s:20:\\\"\\u0000*\\u0000modelJobStatusNew\\\";O:23:\\\"App\\\\Models\\\\JobStatusNew\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";N;s:8:\\\"\\u0000*\\u0000table\\\";s:14:\\\"job_status_new\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000original\\\";a:0:{}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:3:{s:4:\\\"type\\\";s:24:\\\"App\\\\Enums\\\\User\\\\UserRoles\\\";s:6:\\\"status\\\";s:23:\\\"App\\\\Enums\\\\Job\\\\JobStatus\\\";s:6:\\\"number\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}}}\"}}', 'Exception: Property [status] does not exist on this collection instance. in /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Collections/Traits/EnumeratesValues.php:939\nStack trace:\n#0 /home/oiio/public_html/app/Repositories/Job/JobRepository.php(60): Illuminate\\Support\\Collection->__get(\'status\')\n#1 /home/oiio/public_html/app/Jobs/Jobs/AutoResolveJob.php(49): App\\Repositories\\Job\\JobRepository->cancel(Object(App\\Models\\Job), \'T\\xE1\\xBB\\xB1 \\xC4\\x91\\xE1\\xBB\\x99ng h\\xE1...\', true)\n#2 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\Jobs\\AutoResolveJob->handle()\n#3 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#8 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\Jobs\\AutoResolveJob))\n#9 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Jobs\\AutoResolveJob))\n#10 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\Jobs\\AutoResolveJob), false)\n#12 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\Jobs\\AutoResolveJob))\n#13 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Jobs\\AutoResolveJob))\n#14 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\Jobs\\AutoResolveJob))\n#16 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(183): Illuminate\\Container\\Container->call(Array)\n#28 /home/oiio/public_html/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(153): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 /home/oiio/public_html/vendor/symfony/console/Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 /home/oiio/public_html/vendor/symfony/console/Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 /home/oiio/public_html/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 /home/oiio/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 /home/oiio/public_html/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 {main}', '2023-07-03 17:00:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `queue_jobs`
--

CREATE TABLE `queue_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `report_jobs`
--

CREATE TABLE `report_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `rating` double(8,2) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `author_id`, `rating`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 5.00, 'Bạn này là người đặt đơn có tài khoản shopee! Đặt rất nhanh và hiểu quy trình trên web oiio.vn! Nhiệt tình', NULL, 1, '2023-06-14 12:37:29', '2023-06-14 12:37:29'),
(2, 1, 4, 5.00, 'Uy tín lắm ạ', NULL, 2, '2023-06-14 12:50:21', '2023-06-14 12:50:21'),
(3, 4, 1, 5.00, 'Người đặt này biết cách đặt shopee, có tài khoản shop rỏ ràng. Biết cách liên hệ shop và hiểu về web', NULL, 1, '2023-06-14 12:50:58', '2023-06-14 12:50:58'),
(4, 14, 1, 5.00, 'Bạn đặt nhanh và thân thiện', NULL, 1, '2023-06-15 07:38:23', '2023-06-15 07:38:23'),
(5, 1, 14, 5.00, 'Shop uy tín ạ. Giao nhanh', NULL, 2, '2023-06-15 07:38:45', '2023-06-15 07:38:45'),
(6, 1, 14, 5.00, 'oke ạ', NULL, 2, '2023-06-15 07:38:57', '2023-06-15 07:38:57'),
(7, 1, 14, 5.00, 'Shop giao nhanh', NULL, 2, '2023-06-15 07:39:38', '2023-06-15 07:39:38'),
(8, 1, 14, 5.00, 'ok', NULL, 2, '2023-06-15 07:39:47', '2023-06-15 07:39:47'),
(9, 5, 1, 5.00, 'Chưa hiểu quy trình lắm! Tốt', NULL, 1, '2023-06-16 01:09:27', '2023-06-16 01:09:27'),
(10, 1, 5, 5.00, 'uy tín', NULL, 2, '2023-06-16 01:09:57', '2023-06-16 01:09:57'),
(11, 27, 1, 3.00, 'Đặt chậm m, rep tin nhắn quá lâu', NULL, 1, '2023-06-17 12:51:48', '2023-06-17 12:51:48'),
(12, 33, 1, 1.00, 'Nhận đơn nhưng không có trách nhiệm đặt đơn!', NULL, 1, '2023-06-18 05:17:18', '2023-06-18 05:17:18'),
(13, 17, 1, 3.00, 'Đặt đơn nhưng nick đi đặt bị khoá và k thể đánh giá', NULL, 1, '2023-06-18 05:18:20', '2023-06-18 05:18:20'),
(14, 43, 1, 5.00, 'Người đặt biết cách đặt và có tìm hiểu quy trình. người đặt này rất tinh tế', NULL, 1, '2023-06-18 13:19:43', '2023-06-18 13:19:43'),
(15, 28, 1, 5.00, 'Bạn này đặt rất nhanh nhé các shop. 5 sao cho bạn', NULL, 1, '2023-06-18 13:27:05', '2023-06-18 13:27:05'),
(16, 40, 1, 5.00, 'Bạn này đặt rất nhanh, hiểu về web đặt đơn. các shop yên tâm nhé', NULL, 1, '2023-06-18 13:33:19', '2023-06-18 13:33:19'),
(17, 42, 1, 5.00, 'bạn này biết cách đặt trên oiio. các shop yên tâm là bạn đặt nhanh ạ', NULL, 1, '2023-06-18 13:41:22', '2023-06-18 13:41:22'),
(18, 38, 1, 5.00, 'Đặt nhanh, thân thiện', NULL, 1, '2023-06-18 14:12:47', '2023-06-18 14:12:47'),
(19, 39, 1, 5.00, 'đặt nhanh nhẹn, thân thiện', NULL, 1, '2023-06-18 14:58:50', '2023-06-18 14:58:50'),
(20, 20, 1, 2.00, 'Người đặt đi đặt các shop ảo khác bị khoá nên k thể hoàn thành!', NULL, 1, '2023-06-19 05:16:35', '2023-06-19 05:16:35'),
(21, 26, 1, 4.00, 'Nhận đơn nhưng rep chậm và k có đặt được đơn', NULL, 1, '2023-06-26 10:23:10', '2023-06-26 10:23:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plain_value` longtext COLLATE utf8mb4_unicode_ci,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `type_input` tinyint(4) DEFAULT NULL,
  `type_data` tinyint(4) DEFAULT NULL,
  `group` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_name`, `plain_value`, `desc`, `type_input`, `type_data`, `group`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Tên site', 'Web đặt đơn', 'Tên của website, shop, app', 1, NULL, 1, NULL, NULL),
(2, 'site_logo', 'Logo', '/public/assets/images/logo.png', 'Logo thương hiệu', 7, NULL, 1, NULL, NULL),
(3, 'site_banner', 'Banner', '/public/assets/images/default/banner.jpeg', 'Banner trang chủ', 7, NULL, 1, NULL, NULL),
(4, 'email', 'Email', 'mevivu@gmail.com', 'Email liên hệ', 3, NULL, 1, NULL, NULL),
(5, 'hotline', 'Số điện thoại', '0934584939', 'Số điện thoại liên lạc.', 4, NULL, 1, NULL, NULL),
(6, 'zalo', 'Số zalo', '0999999999', 'Số zalo.', 1, NULL, 1, NULL, NULL),
(7, 'address', 'Địa chỉ', '998/42/15 Quang Trung, GV', 'Địa chỉ liên lạc.', 1, NULL, 1, NULL, NULL),
(8, 'group_facebook', 'Địa chỉ group fb', 'https://www.facebook.com/groups/shopee.tittok.facebcok', 'Địa chỉ group facebook.', 1, NULL, 1, NULL, NULL),
(9, 'admin_facebook_name', 'Tên Facebook Admin', 'Group Zalo Hỗ Trợ Shop', 'Địa chỉ admin facebook.', 1, NULL, 1, NULL, NULL),
(10, 'admin_facebook_link', 'Link Facebook Admin', 'https://zalo.me/g/dmrmts607', 'Địa chỉ admin facebook.', 1, NULL, 1, NULL, NULL),
(11, 'job_fee_service', 'Phí sàn (%)', '25', 'Phần trăm phí sàn khi 1 đơn hoàn tất.', 2, NULL, 2, NULL, NULL),
(12, 'job_fines_price', 'Tiền phạt khi vi phạm', '2000', 'Tiền phạt khi vi phạm chính sách về việc đăng và nhận đơn.', 2, NULL, 2, NULL, NULL),
(13, 'job_auto_complete_and_cancel', 'Tự động hoàn thành (Ngày)', '2', 'Trong khoản thời gian nếu shop không phản hồi thì đơn tự động duyệt hoàn thành. Đối với CTV nếu không phản hồi thì cv sẽ bị hủy.', 2, NULL, 2, NULL, NULL),
(14, 'job_time_blacklist_expired', 'Hết hạn blacklist (Ngày)', '5', 'Thời gian ctv có thể nhận tiếp đơn của 1 shop, trong khi đơn trước đó vẫn chưa hoàn thành.', 2, NULL, 2, NULL, NULL),
(15, 'transaction_deposit_fee', 'Phí nạp tiền(đ)', '0', 'Cài đặt phí nạp tiền', 2, NULL, 2, NULL, NULL),
(16, 'transaction_withdrawn_fee', 'Phí rút tiền(đ)', '2000', 'Cài đặt phí rút tiền', 2, NULL, 2, NULL, NULL),
(17, 'statistic_virtual_user_shop', 'Số shop ảo', '14', 'Số lượng shop sẽ được cộng vào thống kê ngoài trang chủ.', 2, NULL, 4, NULL, NULL),
(18, 'statistic_virtual_user_member', 'Số thành viên ảo', '55', 'Số lượng hành viên sẽ được cộng vào thống kê ngoài trang chủ.', 2, NULL, 4, NULL, NULL),
(19, 'statistic_virtual_job_complete', 'Số đơn hoàn thành ảo', '33', 'Số lượng đơn hoàn thành được cộng vào thống kê ngoài trang chủ.', 2, NULL, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statistics`
--

CREATE TABLE `statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `statistic_key` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statistic_number` double NOT NULL,
  `statistic_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statistics`
--

INSERT INTO `statistics` (`id`, `statistic_key`, `statistic_number`, `statistic_date`, `created_at`, `updated_at`) VALUES
(1, 'revenue', 21000, '2023-06-14', '2023-06-14 12:36:36', '2023-06-14 12:49:45'),
(2, 'profit', 5250, '2023-06-14', '2023-06-14 12:36:36', '2023-06-14 12:49:45'),
(3, 'revenue', 127500, '2023-06-15', '2023-06-15 07:38:08', '2023-06-15 07:50:18'),
(4, 'profit', 7875, '2023-06-15', '2023-06-15 07:38:08', '2023-06-15 07:50:18'),
(5, 'profit', 4625, '2023-06-16', '2023-06-16 01:03:11', '2023-06-16 01:08:38'),
(6, 'revenue', 10500, '2023-06-16', '2023-06-16 01:08:38', '2023-06-16 01:08:38'),
(7, 'revenue', 63000, '2023-06-18', '2023-06-18 13:19:09', '2023-06-18 14:58:36'),
(8, 'profit', 15750, '2023-06-18', '2023-06-18 13:19:09', '2023-06-18 14:58:36'),
(9, 'profit', 8000, '2023-06-20', '2023-06-20 11:56:57', '2023-06-20 11:59:47'),
(10, 'revenue', 21000, '2023-06-21', '2023-06-20 17:00:02', '2023-06-21 07:56:30'),
(11, 'profit', 5250, '2023-06-21', '2023-06-20 17:00:02', '2023-06-21 07:56:30'),
(12, 'revenue', 0, '2023-06-22', '2023-06-21 17:01:02', '2023-06-21 17:01:02'),
(13, 'profit', 0, '2023-06-22', '2023-06-21 17:01:02', '2023-06-21 17:01:02'),
(14, 'revenue', 0, '2023-06-23', '2023-06-22 17:00:01', '2023-06-22 17:00:01'),
(15, 'profit', 0, '2023-06-23', '2023-06-22 17:00:01', '2023-06-22 17:00:01'),
(16, 'revenue', 0, '2023-06-24', '2023-06-23 17:01:01', '2023-06-23 17:01:01'),
(17, 'profit', 0, '2023-06-24', '2023-06-23 17:01:01', '2023-06-23 17:01:01'),
(18, 'revenue', 0, '2023-06-25', '2023-06-24 17:01:01', '2023-06-24 17:01:01'),
(19, 'profit', 0, '2023-06-25', '2023-06-24 17:01:01', '2023-06-24 17:01:01'),
(20, 'revenue', 0, '2023-06-26', '2023-06-25 17:01:02', '2023-06-25 17:01:02'),
(21, 'profit', 4000, '2023-06-26', '2023-06-25 17:01:02', '2023-06-26 10:23:49'),
(22, 'revenue', 0, '2023-06-27', '2023-06-26 17:01:01', '2023-06-26 17:01:01'),
(23, 'profit', 0, '2023-06-27', '2023-06-26 17:01:01', '2023-06-26 17:01:01'),
(24, 'revenue', 0, '2023-06-28', '2023-06-27 17:01:02', '2023-06-27 17:01:02'),
(25, 'profit', 0, '2023-06-28', '2023-06-27 17:01:02', '2023-06-27 17:01:02'),
(26, 'revenue', 0, '2023-06-29', '2023-06-28 17:00:02', '2023-06-28 17:00:02'),
(27, 'profit', 0, '2023-06-29', '2023-06-28 17:00:02', '2023-06-28 17:00:02'),
(28, 'revenue', 0, '2023-06-30', '2023-06-29 17:01:01', '2023-06-29 17:01:01'),
(29, 'profit', 0, '2023-06-30', '2023-06-29 17:01:01', '2023-06-29 17:01:01'),
(30, 'revenue', 0, '2023-07-01', '2023-06-30 17:00:02', '2023-06-30 17:00:02'),
(31, 'profit', 0, '2023-07-01', '2023-06-30 17:00:02', '2023-06-30 17:00:02'),
(32, 'revenue', 0, '2023-07-02', '2023-07-01 17:00:02', '2023-07-01 17:00:02'),
(33, 'profit', 0, '2023-07-02', '2023-07-01 17:00:02', '2023-07-01 17:00:02'),
(34, 'revenue', 0, '2023-07-03', '2023-07-02 17:01:02', '2023-07-02 17:01:02'),
(35, 'profit', 0, '2023-07-03', '2023-07-02 17:01:02', '2023-07-02 17:01:02'),
(36, 'revenue', 0, '2023-07-04', '2023-07-03 17:00:02', '2023-07-03 17:00:02'),
(37, 'profit', 0, '2023-07-04', '2023-07-03 17:00:02', '2023-07-03 17:00:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL,
  `code` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `fee` double NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `type_id`, `type`, `code`, `amount`, `fee`, `status`, `note`, `detail`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'T000D7F51BE6A9', 500000, 0, 2, NULL, '\"{\\\"user_id\\\":\\\"1\\\",\\\"amount\\\":500000,\\\"fee\\\":0,\\\"code_vnpay\\\":\\\"OIIO n\\\\u1ea1p\\\",\\\"bank_code\\\":\\\"OIIO\\\",\\\"bank\\\":\\\"OIIO\\\",\\\"status\\\":1,\\\"code\\\":\\\"Txn3C00A9AEF690F\\\",\\\"updated_at\\\":\\\"2023-06-14T11:06:36.000000Z\\\",\\\"created_at\\\":\\\"2023-06-14T11:06:36.000000Z\\\",\\\"id\\\":1}\"', '2023-06-14 11:06:36', '2023-06-14 11:06:36'),
(2, 1, 2, 3, 'T90A47AF4E172B', -10500, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":489500,\"created_at\":\"2023-06-14T03:35:15.000000Z\",\"updated_at\":\"2023-06-14T11:08:42.000000Z\"},\"job\":{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"J8D939EBDACBCB\",\"slug\":\"246cf1ef-0004-4239-becf-c9e9090b68eb\",\"status\":1,\"updated_at\":\"2023-06-14T11:08:42.000000Z\",\"created_at\":\"2023-06-14T11:08:42.000000Z\",\"id\":2}}', '2023-06-14 11:08:42', '2023-06-14 11:08:42'),
(3, 1, 3, 3, 'TC937DCE9485BA', -10500, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":479000,\"created_at\":\"2023-06-14T03:35:15.000000Z\",\"updated_at\":\"2023-06-14T11:13:39.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"J94CB09C993BEB\",\"name\":null,\"slug\":\"d535964a-5f1f-41da-a337-a543da64c898\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-14T11:13:39.000000Z\",\"created_at\":\"2023-06-14T11:13:39.000000Z\",\"id\":3}}', '2023-06-14 11:13:39', '2023-06-14 11:13:39'),
(4, 1, 5, 3, 'TF9F437CA889BA', -9000, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":470000,\"created_at\":\"2023-06-14T03:35:15.000000Z\",\"updated_at\":\"2023-06-14T11:45:21.000000Z\"},\"job\":{\"shop_id\":\"1\",\"money_product\":0,\"money\":9000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"J9D5BD5CB87BFE\",\"slug\":\"8a28052f-5988-445a-b879-6eb26b60fa40\",\"status\":1,\"updated_at\":\"2023-06-14T11:45:21.000000Z\",\"created_at\":\"2023-06-14T11:45:21.000000Z\",\"id\":5}}', '2023-06-14 11:45:21', '2023-06-14 11:45:21'),
(5, 1, 5, 3, 'T3BF336004B11D', 9000, 0, 2, 'Hoàn tiền từ hủy công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":479000,\"created_at\":\"2023-06-14T03:35:15.000000Z\",\"updated_at\":\"2023-06-14T12:12:30.000000Z\"},\"job\":{\"id\":5,\"shop_id\":1,\"worker_id\":null,\"code\":\"J9D5BD5CB87BFE\",\"name\":null,\"slug\":\"8a28052f-5988-445a-b879-6eb26b60fa40\",\"money\":9000,\"money_product\":0,\"money_product_addition\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"created_at\":\"2023-06-14T11:45:21.000000Z\",\"updated_at\":\"2023-06-14T11:45:21.000000Z\"}}', '2023-06-14 12:12:30', '2023-06-14 12:12:30'),
(6, 1, 6, 3, 'T53AA2080867E8', -16500, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":462500,\"created_at\":\"2023-06-14T03:35:15.000000Z\",\"updated_at\":\"2023-06-14T12:13:13.000000Z\"},\"job\":{\"money_product\":0,\"money\":16500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng \\u1ea3o shop g\\u1eedi v\\u1ec1 \\u0111\\u1ecba ch\\u1ec9 th\\u1eadt c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1eb7t<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"J4C0393D873892\",\"slug\":\"9128bb48-9369-40c9-a137-606d5ebd3194\",\"status\":1,\"updated_at\":\"2023-06-14T12:13:13.000000Z\",\"created_at\":\"2023-06-14T12:13:13.000000Z\",\"id\":6}}', '2023-06-14 12:13:13', '2023-06-14 12:13:13'),
(7, 3, 3, 3, 'T65BB4C495B4F7', 7875, -2625, 2, 'Cộng tiền từ hoàn thành công việc.', '{\"wallet\":{\"id\":3,\"user_id\":3,\"amount\":7875,\"created_at\":\"2023-06-14T11:27:48.000000Z\",\"updated_at\":\"2023-06-14T12:36:36.000000Z\"},\"job\":{\"id\":3,\"shop_id\":1,\"worker_id\":3,\"code\":\"J94CB09C993BEB\",\"name\":null,\"slug\":\"d535964a-5f1f-41da-a337-a543da64c898\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14 18:28:22\",\"step_at\":\"2023-06-14 18:28:22\",\"created_at\":\"2023-06-14T11:13:39.000000Z\",\"updated_at\":\"2023-06-14T12:36:36.000000Z\"}}', '2023-06-14 12:36:36', '2023-06-14 12:36:36'),
(8, 4, 2, 3, 'T72FAAAB9F23BE', 7875, -2625, 2, 'Cộng tiền từ hoàn thành công việc.', '{\"wallet\":{\"id\":4,\"user_id\":4,\"amount\":7875,\"created_at\":\"2023-06-14T11:31:17.000000Z\",\"updated_at\":\"2023-06-14T12:49:45.000000Z\"},\"job\":{\"id\":2,\"shop_id\":1,\"worker_id\":4,\"code\":\"J8D939EBDACBCB\",\"name\":null,\"slug\":\"246cf1ef-0004-4239-becf-c9e9090b68eb\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14 18:31:54\",\"step_at\":\"2023-06-14 18:31:54\",\"created_at\":\"2023-06-14T11:08:42.000000Z\",\"updated_at\":\"2023-06-14T12:49:45.000000Z\"}}', '2023-06-14 12:49:45', '2023-06-14 12:49:45'),
(9, 1, 5, 1, 'T73A6DD56308DD', 5000000, 0, 2, NULL, '\"{\\\"user_id\\\":\\\"1\\\",\\\"amount\\\":5000000,\\\"fee\\\":0,\\\"code_vnpay\\\":\\\"OIIO n\\\\u1ea1p\\\",\\\"bank_code\\\":\\\"OIIO\\\",\\\"bank\\\":\\\"OIIO\\\",\\\"status\\\":1,\\\"code\\\":\\\"Txn30790DE414D8F\\\",\\\"updated_at\\\":\\\"2023-06-15T04:23:39.000000Z\\\",\\\"created_at\\\":\\\"2023-06-15T04:23:39.000000Z\\\",\\\"id\\\":5}\"', '2023-06-15 04:23:39', '2023-06-15 04:23:39'),
(10, 1, 24, 3, 'T22F86394EC41E', -12000, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5450500,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-15T07:32:27.000000Z\"},\"job\":{\"money_product\":0,\"money\":12000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"J997BDCA620FB8\",\"slug\":\"292f6659-614f-4b83-868a-85248bb8fcca\",\"status\":1,\"updated_at\":\"2023-06-15T07:32:27.000000Z\",\"created_at\":\"2023-06-15T07:32:27.000000Z\",\"id\":24}}', '2023-06-15 07:32:27', '2023-06-15 07:32:27'),
(11, 1, 24, 3, 'T04826A776C184', -96000, 0, 2, 'Trừ tiền từ tiền phát sinh của công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5354500,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-15T07:34:35.000000Z\"},\"job\":{\"id\":24,\"shop_id\":1,\"worker_id\":14,\"code\":\"J997BDCA620FB8\",\"name\":null,\"slug\":\"292f6659-614f-4b83-868a-85248bb8fcca\",\"money\":12000,\"money_product\":0,\"money_product_addition\":96000,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15 14:33:30\",\"step_at\":\"2023-06-15 14:33:30\",\"created_at\":\"2023-06-15T07:32:27.000000Z\",\"updated_at\":\"2023-06-15T07:34:35.000000Z\"}}', '2023-06-15 07:34:35', '2023-06-15 07:34:35'),
(12, 14, 24, 3, 'T029F39315ED98', 105000, -3000, 2, 'Cộng tiền từ hoàn thành công việc.', '{\"wallet\":{\"id\":14,\"user_id\":14,\"amount\":105000,\"created_at\":\"2023-06-15T07:28:39.000000Z\",\"updated_at\":\"2023-06-15T07:38:08.000000Z\"},\"job\":{\"id\":24,\"shop_id\":1,\"worker_id\":14,\"code\":\"J997BDCA620FB8\",\"name\":null,\"slug\":\"292f6659-614f-4b83-868a-85248bb8fcca\",\"money\":12000,\"money_product\":0,\"money_product_addition\":96000,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- Y\\u00eau c\\u1ea7u t\\u00e0i kho\\u1ea3n \\u0111\\u1eb7t l\\u00e0 t\\u00e0i kho\\u1ea3n h\\u1ea1ng v\\u00e0ng \\u0111\\u1ed1i v\\u1edbi shopee, \\u0111\\u1ed1i v\\u1edbi c\\u00e1c n\\u1ec1n t\\u1ea3ng kh\\u00e1c ch\\u1ec9 c\\u1ea7n c\\u00f3 avatar v\\u00e0 t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng th\\u1eadt<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15 14:33:30\",\"step_at\":\"2023-06-15 14:33:30\",\"created_at\":\"2023-06-15T07:32:27.000000Z\",\"updated_at\":\"2023-06-15T07:38:08.000000Z\"}}', '2023-06-15 07:38:08', '2023-06-15 07:38:08'),
(13, 14, 25, 3, 'TB443A20DCAA2A', -19500, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":14,\"user_id\":14,\"amount\":85500,\"created_at\":\"2023-06-15T07:28:39.000000Z\",\"updated_at\":\"2023-06-15T07:49:08.000000Z\"},\"job\":{\"money_product\":0,\"money\":19500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p \\u0111\\u01b0\\u1ee3c m\\u00e3 s\\u00e0n<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":14,\"code\":\"J3CBDD6CAD440A\",\"slug\":\"6ee84901-c031-484c-b2ce-418dc36153a0\",\"status\":1,\"updated_at\":\"2023-06-15T07:49:08.000000Z\",\"created_at\":\"2023-06-15T07:49:08.000000Z\",\"id\":25}}', '2023-06-15 07:49:08', '2023-06-15 07:49:08'),
(14, 1, 25, 3, 'T0642EEDBC3EF1', 14625, -4875, 2, 'Cộng tiền từ hoàn thành công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5369125,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-15T07:50:18.000000Z\"},\"job\":{\"id\":25,\"shop_id\":14,\"worker_id\":1,\"code\":\"J3CBDD6CAD440A\",\"name\":null,\"slug\":\"6ee84901-c031-484c-b2ce-418dc36153a0\",\"money\":19500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p \\u0111\\u01b0\\u1ee3c m\\u00e3 s\\u00e0n<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-15 14:49:13\",\"step_at\":\"2023-06-15 14:49:13\",\"created_at\":\"2023-06-15T07:49:08.000000Z\",\"updated_at\":\"2023-06-15T07:50:18.000000Z\"}}', '2023-06-15 07:50:18', '2023-06-15 07:50:18'),
(15, 1, 27, 3, 'T209B3A954098A', -10400, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5358725,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-15T08:36:40.000000Z\"},\"job\":{\"money_product\":0,\"money\":10400,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t ch\\u1ec9 c\\u1ea7n nh\\u1ea5n 5 sao cho \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- Y\\u00eau c\\u1ea7u \\u00e1p \\u0111\\u01b0\\u1ee3c m\\u00e3 s\\u00e0n<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"J28D510EE5AFA7\",\"slug\":\"b9d82c0f-f29a-428f-8dd3-6a86f87ffac4\",\"status\":1,\"updated_at\":\"2023-06-15T08:36:40.000000Z\",\"created_at\":\"2023-06-15T08:36:40.000000Z\",\"id\":27}}', '2023-06-15 08:36:40', '2023-06-15 08:36:40'),
(16, 1, 29, 3, 'T46E85213A540B', -9000, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5349725,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-15T13:38:56.000000Z\"},\"job\":{\"money_product\":0,\"money\":9000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"J880514D722531\",\"slug\":\"47be9445-34bd-4144-9004-db9019d36c10\",\"status\":1,\"updated_at\":\"2023-06-15T13:38:56.000000Z\",\"created_at\":\"2023-06-15T13:38:56.000000Z\",\"id\":29}}', '2023-06-15 13:38:56', '2023-06-15 13:38:56'),
(19, 1, 6, 3, 'TFE8395D4DEFA4', 16500, 0, 2, 'Hoàn tiền từ hủy công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5366225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-16T01:03:11.000000Z\"},\"job\":{\"id\":6,\"shop_id\":1,\"worker_id\":5,\"code\":\"J4C0393D873892\",\"name\":null,\"slug\":\"9128bb48-9369-40c9-a137-606d5ebd3194\",\"money\":16500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng \\u1ea3o shop g\\u1eedi v\\u1ec1 \\u0111\\u1ecba ch\\u1ec9 th\\u1eadt c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1eb7t<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14 19:14:54\",\"step_at\":\"2023-06-14 19:14:54\",\"created_at\":\"2023-06-14T12:13:13.000000Z\",\"updated_at\":\"2023-06-14T12:14:54.000000Z\"}}', '2023-06-16 01:03:11', '2023-06-16 01:03:11'),
(20, 1, 6, 3, 'TFEF881383996B', -2000, 0, 2, 'Trừ tiền từ hủy công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5364225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-16T01:03:11.000000Z\"},\"job\":{\"id\":6,\"shop_id\":1,\"worker_id\":5,\"code\":\"J4C0393D873892\",\"name\":null,\"slug\":\"9128bb48-9369-40c9-a137-606d5ebd3194\",\"money\":16500,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng \\u1ea3o shop g\\u1eedi v\\u1ec1 \\u0111\\u1ecba ch\\u1ec9 th\\u1eadt c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1eb7t<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t s\\u1ebd thanh to\\u00e1n \\u0111\\u01a1n h\\u00e0ng sau khi y\\u00eau c\\u1ea7u c\\u1ecdc ti\\u1ec1n t\\u1eeb shop th\\u00e0nh c\\u00f4ng tr\\u00ean \\u0111\\u01a1n h\\u00e0ng n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-14 19:14:54\",\"step_at\":\"2023-06-14 19:14:54\",\"created_at\":\"2023-06-14T12:13:13.000000Z\",\"updated_at\":\"2023-06-14T12:14:54.000000Z\"}}', '2023-06-16 01:03:11', '2023-06-16 01:03:11'),
(21, 1, 34, 3, 'T483DBEFB4CE96', -10500, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5353725,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-16T01:04:27.000000Z\"},\"job\":{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"JC8E9F8BC9B463\",\"slug\":\"15a1ce61-5f20-455c-bc8b-56bebf27e7ad\",\"status\":1,\"updated_at\":\"2023-06-16T01:04:27.000000Z\",\"created_at\":\"2023-06-16T01:04:27.000000Z\",\"id\":34}}', '2023-06-16 01:04:27', '2023-06-16 01:04:27'),
(22, 5, 34, 3, 'TEAF0A756F92D3', 7875, -2625, 2, 'Cộng tiền từ hoàn thành công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":7875,\"created_at\":\"2023-06-14T12:13:59.000000Z\",\"updated_at\":\"2023-06-16T01:08:38.000000Z\"},\"job\":{\"id\":34,\"shop_id\":1,\"worker_id\":5,\"code\":\"JC8E9F8BC9B463\",\"name\":null,\"slug\":\"15a1ce61-5f20-455c-bc8b-56bebf27e7ad\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-16 08:05:12\",\"step_at\":\"2023-06-16 08:05:12\",\"created_at\":\"2023-06-16T01:04:27.000000Z\",\"updated_at\":\"2023-06-16T01:08:38.000000Z\"}}', '2023-06-16 01:08:38', '2023-06-16 01:08:38'),
(23, 15, 15, 1, 'TD500E5F1CA0C0', 11111111, 0, 2, NULL, '\"{\\\"id\\\":15,\\\"user_id\\\":15,\\\"code\\\":\\\"TxnAD7BCB6E33240\\\",\\\"code_vnpay\\\":\\\"14040445\\\",\\\"bank_code\\\":\\\"VNBANK\\\",\\\"time\\\":\\\"20230616111919\\\",\\\"bank\\\":\\\"NCB\\\",\\\"amount\\\":11111111,\\\"fee\\\":0,\\\"status\\\":1,\\\"created_at\\\":\\\"2023-06-16T04:19:12.000000Z\\\",\\\"updated_at\\\":\\\"2023-06-16T04:20:46.000000Z\\\",\\\"user\\\":{\\\"id\\\":15,\\\"code\\\":\\\"U87E441686824666\\\",\\\"slug\\\":\\\"aef92030-f0c5-49fc-8d57-f8a8b634506f-1686824666\\\",\\\"username\\\":\\\"kirabboy\\\",\\\"fullname\\\":\\\"Nguy\\\\u1ec5n Ch\\\\u00ednh H\\\\u01b0ng\\\",\\\"email\\\":\\\"nc.hung0806@gmail.com\\\",\\\"phone\\\":\\\"0338927456\\\",\\\"birthday\\\":null,\\\"gender\\\":1,\\\"avatar\\\":null,\\\"cover_photo\\\":null,\\\"email_verified_at\\\":null,\\\"token_get_password\\\":null,\\\"status\\\":1,\\\"roles\\\":1,\\\"name_shop\\\":null,\\\"is_reputable\\\":0,\\\"created_at\\\":\\\"2023-06-15T10:24:26.000000Z\\\",\\\"updated_at\\\":\\\"2023-06-15T10:24:26.000000Z\\\"}}\"', '2023-06-16 04:20:53', '2023-06-16 04:20:53'),
(24, 1, 43, 3, 'T999D347D856FB', -10500, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5343225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-17T10:14:49.000000Z\"},\"job\":{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"J187E44951C0DA\",\"slug\":\"90f8d2e6-ec0e-4679-a436-935f08a4d05e\",\"status\":1,\"updated_at\":\"2023-06-17T10:14:49.000000Z\",\"created_at\":\"2023-06-17T10:14:49.000000Z\",\"id\":43}}', '2023-06-17 10:14:49', '2023-06-17 10:14:49'),
(25, 1, 44, 3, 'TA075A4E3902A0', -10500, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5332725,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-17T10:14:52.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"JEDCBB8738B385\",\"name\":null,\"slug\":\"2c603641-842b-425b-982c-a8708ce719ad\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-17T10:14:52.000000Z\",\"created_at\":\"2023-06-17T10:14:52.000000Z\",\"id\":44}}', '2023-06-17 10:14:52', '2023-06-17 10:14:52'),
(26, 1, 45, 3, 'T66EEE09129DDC', -10500, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5322225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-17T10:14:56.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"J9DB2628059F79\",\"name\":null,\"slug\":\"01bb61ab-18fd-4def-958b-cd315ade2e02\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-17T10:14:56.000000Z\",\"created_at\":\"2023-06-17T10:14:56.000000Z\",\"id\":45}}', '2023-06-17 10:14:56', '2023-06-17 10:14:56'),
(27, 1, 46, 3, 'T5801D1CA83198', -10500, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5311725,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-17T10:15:08.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"J2319316D90B9C\",\"name\":null,\"slug\":\"8eb0d78d-914f-4edb-aff2-db7366a0830e\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-17T10:15:08.000000Z\",\"created_at\":\"2023-06-17T10:15:08.000000Z\",\"id\":46}}', '2023-06-17 10:15:08', '2023-06-17 10:15:08'),
(28, 1, 47, 3, 'TB296AAF2F0D1D', -10500, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5301225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-17T10:15:10.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"J29F0DB3CF1F0F\",\"name\":null,\"slug\":\"a39de118-73ee-427c-be6d-b1293c022e0e\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-17T10:15:10.000000Z\",\"created_at\":\"2023-06-17T10:15:10.000000Z\",\"id\":47}}', '2023-06-17 10:15:10', '2023-06-17 10:15:10'),
(33, 1, 48, 3, 'T15E88ACE6409E', -10500, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5290725,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-17T22:47:11.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"J97460F44055D8\",\"name\":null,\"slug\":\"5313718d-4555-4fb1-a6ce-d4e8e0ebfaf3\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 17:38:32\",\"step_at\":\"2023-06-17 17:38:32\",\"updated_at\":\"2023-06-17T22:47:11.000000Z\",\"created_at\":\"2023-06-17T22:47:11.000000Z\",\"id\":48}}', '2023-06-17 22:47:11', '2023-06-17 22:47:11'),
(34, 1, 49, 3, 'TEBFD359794D48', -10500, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5280225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-17T22:47:14.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"J63D36FC037362\",\"name\":null,\"slug\":\"15133207-c2bd-4e34-93b6-bab8e086ded7\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 17:38:32\",\"step_at\":\"2023-06-17 17:38:32\",\"updated_at\":\"2023-06-17T22:47:14.000000Z\",\"created_at\":\"2023-06-17T22:47:14.000000Z\",\"id\":49}}', '2023-06-17 22:47:14', '2023-06-17 22:47:14'),
(35, 1, 50, 3, 'T6B541E1343FF0', -10500, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5269725,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-17T22:47:18.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"J3E3CB2DD10C2E\",\"name\":null,\"slug\":\"9ed40758-76d2-4cd7-a30d-f6cf2ce39066\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 17:38:32\",\"step_at\":\"2023-06-17 17:38:32\",\"updated_at\":\"2023-06-17T22:47:18.000000Z\",\"created_at\":\"2023-06-17T22:47:18.000000Z\",\"id\":50}}', '2023-06-17 22:47:18', '2023-06-17 22:47:18'),
(36, 1, 51, 3, 'T3C848D64D2950', -10500, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5259225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-17T22:47:21.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"JA48DCE8D45123\",\"name\":null,\"slug\":\"eaa74639-f3d7-4cc6-95f6-b69aaa13eba9\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 17:38:32\",\"step_at\":\"2023-06-17 17:38:32\",\"updated_at\":\"2023-06-17T22:47:21.000000Z\",\"created_at\":\"2023-06-17T22:47:21.000000Z\",\"id\":51}}', '2023-06-17 22:47:21', '2023-06-17 22:47:21'),
(37, 1, 52, 3, 'TC183D81907F20', -10500, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5248725,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-17T22:47:24.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"JFFD0645A5D16F\",\"name\":null,\"slug\":\"b5d3fe6e-7e88-4324-aa75-efdae4ef3300\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 17:38:32\",\"step_at\":\"2023-06-17 17:38:32\",\"updated_at\":\"2023-06-17T22:47:24.000000Z\",\"created_at\":\"2023-06-17T22:47:24.000000Z\",\"id\":52}}', '2023-06-17 22:47:24', '2023-06-17 22:47:24'),
(38, 1, 54, 3, 'T5BC15B38146ED', -10500, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5238225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-18T07:50:55.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"J356DC131CAD0B\",\"name\":null,\"slug\":\"d1c2dfc9-acda-4383-9cca-d0d49320d73b\",\"money\":10500,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 18:06:41\",\"step_at\":\"2023-06-17 18:06:41\",\"updated_at\":\"2023-06-18T07:50:55.000000Z\",\"created_at\":\"2023-06-18T07:50:55.000000Z\",\"id\":54}}', '2023-06-18 07:50:55', '2023-06-18 07:50:55'),
(40, 43, 54, 3, 'T69A5B7596813A', 7875, -2625, 2, 'Cộng tiền từ hoàn thành công việc.', '{\"wallet\":{\"id\":43,\"user_id\":43,\"amount\":7875,\"created_at\":\"2023-06-18T01:56:55.000000Z\",\"updated_at\":\"2023-06-18T13:19:09.000000Z\"},\"job\":{\"id\":54,\"shop_id\":1,\"worker_id\":43,\"code\":\"J356DC131CAD0B\",\"name\":null,\"slug\":\"d1c2dfc9-acda-4383-9cca-d0d49320d73b\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 15:01:53\",\"step_at\":\"2023-06-18 15:01:53\",\"created_at\":\"2023-06-18T07:50:55.000000Z\",\"updated_at\":\"2023-06-18T13:19:09.000000Z\"}}', '2023-06-18 13:19:09', '2023-06-18 13:19:09'),
(41, 28, 45, 3, 'T7A8ABBC3028C2', 7875, -2625, 2, 'Cộng tiền từ hoàn thành công việc.', '{\"wallet\":{\"id\":28,\"user_id\":28,\"amount\":7875,\"created_at\":\"2023-06-17T11:16:55.000000Z\",\"updated_at\":\"2023-06-18T13:26:37.000000Z\"},\"job\":{\"id\":45,\"shop_id\":1,\"worker_id\":28,\"code\":\"J9DB2628059F79\",\"name\":null,\"slug\":\"01bb61ab-18fd-4def-958b-cd315ade2e02\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-17 18:19:14\",\"step_at\":\"2023-06-17 18:19:14\",\"created_at\":\"2023-06-17T10:14:56.000000Z\",\"updated_at\":\"2023-06-18T13:26:37.000000Z\"}}', '2023-06-18 13:26:37', '2023-06-18 13:26:37'),
(42, 5, 20, 1, 'TC5BE04EF838FC', 52500, 0, 2, NULL, '\"{\\\"user_id\\\":\\\"5\\\",\\\"amount\\\":52500,\\\"fee\\\":0,\\\"code_vnpay\\\":\\\"OIIO n\\\\u1ea1p\\\",\\\"bank_code\\\":\\\"OIIO\\\",\\\"bank\\\":\\\"OIIO\\\",\\\"status\\\":1,\\\"code\\\":\\\"Txn948D7A8988047\\\",\\\"updated_at\\\":\\\"2023-06-18T13:31:28.000000Z\\\",\\\"created_at\\\":\\\"2023-06-18T13:31:28.000000Z\\\",\\\"id\\\":20}\"', '2023-06-18 13:31:28', '2023-06-18 13:31:28'),
(43, 40, 48, 3, 'TE32DAA8593837', 7875, -2625, 2, 'Cộng tiền từ hoàn thành công việc.', '{\"wallet\":{\"id\":40,\"user_id\":40,\"amount\":7875,\"created_at\":\"2023-06-18T00:42:11.000000Z\",\"updated_at\":\"2023-06-18T13:32:55.000000Z\"},\"job\":{\"id\":48,\"shop_id\":1,\"worker_id\":40,\"code\":\"J97460F44055D8\",\"name\":null,\"slug\":\"5313718d-4555-4fb1-a6ce-d4e8e0ebfaf3\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 07:44:26\",\"step_at\":\"2023-06-18 07:44:26\",\"created_at\":\"2023-06-17T22:47:11.000000Z\",\"updated_at\":\"2023-06-18T13:32:55.000000Z\"}}', '2023-06-18 13:32:55', '2023-06-18 13:32:55'),
(44, 42, 49, 3, 'TCA6D38C353BC1', 7875, -2625, 2, 'Cộng tiền từ hoàn thành công việc.', '{\"wallet\":{\"id\":42,\"user_id\":42,\"amount\":7875,\"created_at\":\"2023-06-18T01:33:48.000000Z\",\"updated_at\":\"2023-06-18T13:40:57.000000Z\"},\"job\":{\"id\":49,\"shop_id\":1,\"worker_id\":42,\"code\":\"J63D36FC037362\",\"name\":null,\"slug\":\"15133207-c2bd-4e34-93b6-bab8e086ded7\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 08:34:14\",\"step_at\":\"2023-06-18 08:34:14\",\"created_at\":\"2023-06-17T22:47:14.000000Z\",\"updated_at\":\"2023-06-18T13:40:57.000000Z\"}}', '2023-06-18 13:40:57', '2023-06-18 13:40:57'),
(45, 5, 55, 3, 'T95A23F7AB1333', -10500, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":49875,\"created_at\":\"2023-06-14T05:13:59.000000Z\",\"updated_at\":\"2023-06-18T13:46:26.000000Z\"},\"job\":{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":5,\"code\":\"J77F79BCB0BD8B\",\"slug\":\"afe6d701-bbe1-412e-af75-94ad0bf89f16\",\"status\":1,\"updated_at\":\"2023-06-18T13:46:26.000000Z\",\"created_at\":\"2023-06-18T13:46:26.000000Z\",\"id\":55}}', '2023-06-18 13:46:26', '2023-06-18 13:46:26'),
(46, 5, 56, 3, 'TFAAE99A040E3C', -10500, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":39375,\"created_at\":\"2023-06-14T05:13:59.000000Z\",\"updated_at\":\"2023-06-18T13:47:50.000000Z\"},\"job\":{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":5,\"code\":\"J77EAA9DE27CA5\",\"slug\":\"7db85544-64f3-4f66-b13c-425260713dbf\",\"status\":1,\"updated_at\":\"2023-06-18T13:47:50.000000Z\",\"created_at\":\"2023-06-18T13:47:50.000000Z\",\"id\":56}}', '2023-06-18 13:47:50', '2023-06-18 13:47:50'),
(47, 5, 57, 3, 'T1E404D75D0748', -10500, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":28875,\"created_at\":\"2023-06-14T05:13:59.000000Z\",\"updated_at\":\"2023-06-18T13:49:39.000000Z\"},\"job\":{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":5,\"code\":\"J99135A127B656\",\"slug\":\"ec99bb0b-7fb3-4c3d-93fb-6adf97ecd13e\",\"status\":1,\"updated_at\":\"2023-06-18T13:49:39.000000Z\",\"created_at\":\"2023-06-18T13:49:39.000000Z\",\"id\":57}}', '2023-06-18 13:49:39', '2023-06-18 13:49:39'),
(48, 5, 58, 3, 'T5AF748A59A120', -10500, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":18375,\"created_at\":\"2023-06-14T05:13:59.000000Z\",\"updated_at\":\"2023-06-18T13:54:11.000000Z\"},\"job\":{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":5,\"code\":\"J2DBDAC40E4992\",\"slug\":\"f1baca85-a422-4f31-bb4d-9c0ee86b648e\",\"status\":1,\"updated_at\":\"2023-06-18T13:54:11.000000Z\",\"created_at\":\"2023-06-18T13:54:11.000000Z\",\"id\":58}}', '2023-06-18 13:54:11', '2023-06-18 13:54:11');
INSERT INTO `transactions` (`id`, `user_id`, `type_id`, `type`, `code`, `amount`, `fee`, `status`, `note`, `detail`, `created_at`, `updated_at`) VALUES
(49, 5, 59, 3, 'T992A46DF394A3', -10500, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":7875,\"created_at\":\"2023-06-14T05:13:59.000000Z\",\"updated_at\":\"2023-06-18T13:55:18.000000Z\"},\"job\":{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":5,\"code\":\"J4D1F270FEF243\",\"slug\":\"b0c8f3ff-9a80-4944-b89c-ccfee53822da\",\"status\":1,\"updated_at\":\"2023-06-18T13:55:18.000000Z\",\"created_at\":\"2023-06-18T13:55:18.000000Z\",\"id\":59}}', '2023-06-18 13:55:18', '2023-06-18 13:55:18'),
(50, 38, 52, 3, 'TB60F2CD7D8315', 7875, -2625, 2, 'Cộng tiền từ hoàn thành công việc.', '{\"wallet\":{\"id\":38,\"user_id\":38,\"amount\":7875,\"created_at\":\"2023-06-17T23:21:33.000000Z\",\"updated_at\":\"2023-06-18T14:12:29.000000Z\"},\"job\":{\"id\":52,\"shop_id\":1,\"worker_id\":38,\"code\":\"JFFD0645A5D16F\",\"name\":null,\"slug\":\"b5d3fe6e-7e88-4324-aa75-efdae4ef3300\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 06:22:00\",\"step_at\":\"2023-06-18 06:22:00\",\"created_at\":\"2023-06-17T22:47:24.000000Z\",\"updated_at\":\"2023-06-18T14:12:29.000000Z\"}}', '2023-06-18 14:12:29', '2023-06-18 14:12:29'),
(51, 5, 23, 1, 'T3C1970CBA6889', 136500, 0, 2, NULL, '\"{\\\"user_id\\\":\\\"5\\\",\\\"amount\\\":136500,\\\"fee\\\":0,\\\"code_vnpay\\\":\\\"OIIO n\\\\u1ea1p\\\",\\\"bank_code\\\":\\\"OIIO\\\",\\\"bank\\\":\\\"OIIO\\\",\\\"status\\\":1,\\\"code\\\":\\\"Txn7594FB9212DD3\\\",\\\"updated_at\\\":\\\"2023-06-18T14:24:22.000000Z\\\",\\\"created_at\\\":\\\"2023-06-18T14:24:22.000000Z\\\",\\\"id\\\":23}\"', '2023-06-18 14:24:22', '2023-06-18 14:24:22'),
(52, 5, 60, 3, 'T56D13D5C5159A', -10500, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":133875,\"created_at\":\"2023-06-13T22:13:59.000000Z\",\"updated_at\":\"2023-06-18T14:29:31.000000Z\"},\"job\":{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":5,\"code\":\"JA287064F63B74\",\"slug\":\"8c5d9cd1-4458-4253-946e-a913e6932688\",\"status\":1,\"updated_at\":\"2023-06-18T14:29:31.000000Z\",\"created_at\":\"2023-06-18T14:29:31.000000Z\",\"id\":60}}', '2023-06-18 14:29:31', '2023-06-18 14:29:31'),
(53, 5, 61, 3, 'TC1D361DDBFCB5', -10500, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":123375,\"created_at\":\"2023-06-13T22:13:59.000000Z\",\"updated_at\":\"2023-06-18T14:32:44.000000Z\"},\"job\":{\"money_product\":0,\"money\":10500,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":5,\"code\":\"J5E88D7B57E038\",\"slug\":\"c9b37c5e-e653-4d3e-826d-4f1895f76ecc\",\"status\":1,\"updated_at\":\"2023-06-18T14:32:44.000000Z\",\"created_at\":\"2023-06-18T14:32:44.000000Z\",\"id\":61}}', '2023-06-18 14:32:44', '2023-06-18 14:32:44'),
(54, 39, 51, 3, 'TB53F896FFDB4B', 7875, -2625, 2, 'Cộng tiền từ hoàn thành công việc.', '{\"wallet\":{\"id\":39,\"user_id\":39,\"amount\":7875,\"created_at\":\"2023-06-18T00:17:38.000000Z\",\"updated_at\":\"2023-06-18T14:58:36.000000Z\"},\"job\":{\"id\":51,\"shop_id\":1,\"worker_id\":39,\"code\":\"JA48DCE8D45123\",\"name\":null,\"slug\":\"eaa74639-f3d7-4cc6-95f6-b69aaa13eba9\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 07:18:56\",\"step_at\":\"2023-06-18 07:18:56\",\"created_at\":\"2023-06-17T22:47:21.000000Z\",\"updated_at\":\"2023-06-18T14:58:36.000000Z\"}}', '2023-06-18 14:58:36', '2023-06-18 14:58:36'),
(55, 1, 65, 3, 'TF8C82820E3C1C', -9000, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5229225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-18T23:25:02.000000Z\"},\"job\":{\"shop_id\":\"1\",\"money_product\":0,\"money\":9000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"code\":\"JAAB2B3830D418\",\"slug\":\"5ce67f22-268c-42cc-88c7-6d79d8caf3e1\",\"status\":1,\"updated_at\":\"2023-06-18T23:25:02.000000Z\",\"created_at\":\"2023-06-18T23:25:02.000000Z\",\"id\":65}}', '2023-06-18 23:25:02', '2023-06-18 23:25:02'),
(56, 1, 66, 3, 'T444A547EE4CD2', -9000, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5220225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-18T23:25:08.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"JD5C0E712608B9\",\"name\":null,\"slug\":\"95065d1a-96f6-4343-8da7-5aa2a61d51de\",\"money\":9000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-18T23:25:08.000000Z\",\"created_at\":\"2023-06-18T23:25:08.000000Z\",\"id\":66}}', '2023-06-18 23:25:08', '2023-06-18 23:25:08'),
(57, 1, 67, 3, 'T768E83C0EB03B', -9000, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5211225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-18T23:25:16.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"JD1138519CF5EB\",\"name\":null,\"slug\":\"a4409806-1048-42de-a898-38741a965b2c\",\"money\":9000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-18T23:25:16.000000Z\",\"created_at\":\"2023-06-18T23:25:16.000000Z\",\"id\":67}}', '2023-06-18 23:25:16', '2023-06-18 23:25:16'),
(58, 1, 68, 3, 'TE4BEE48F579FD', -9000, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5202225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-18T23:25:20.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"JCAD824092951D\",\"name\":null,\"slug\":\"1e7118be-dcf8-4a6b-827e-37ccd181987e\",\"money\":9000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-18T23:25:20.000000Z\",\"created_at\":\"2023-06-18T23:25:20.000000Z\",\"id\":68}}', '2023-06-18 23:25:20', '2023-06-18 23:25:20'),
(59, 5, 60, 3, 'TFDBF41E3F70B5', 10500, 0, 2, 'Hoàn tiền từ hủy công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":133875,\"created_at\":\"2023-06-13T22:13:59.000000Z\",\"updated_at\":\"2023-06-20T11:56:57.000000Z\"},\"job\":{\"id\":60,\"shop_id\":5,\"worker_id\":60,\"code\":\"JA287064F63B74\",\"name\":null,\"slug\":\"8c5d9cd1-4458-4253-946e-a913e6932688\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:41:39\",\"step_at\":\"2023-06-18 21:41:39\",\"created_at\":\"2023-06-18T14:29:31.000000Z\",\"updated_at\":\"2023-06-18T15:19:06.000000Z\"}}', '2023-06-20 11:56:57', '2023-06-20 11:56:57'),
(60, 5, 60, 3, 'T2B118887F835B', -2000, 0, 2, 'Trừ tiền từ hủy công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":131875,\"created_at\":\"2023-06-13T22:13:59.000000Z\",\"updated_at\":\"2023-06-20T11:56:57.000000Z\"},\"job\":{\"id\":60,\"shop_id\":5,\"worker_id\":60,\"code\":\"JA287064F63B74\",\"name\":null,\"slug\":\"8c5d9cd1-4458-4253-946e-a913e6932688\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:41:39\",\"step_at\":\"2023-06-18 21:41:39\",\"created_at\":\"2023-06-18T14:29:31.000000Z\",\"updated_at\":\"2023-06-18T15:19:06.000000Z\"}}', '2023-06-20 11:56:57', '2023-06-20 11:56:57'),
(61, 5, 59, 3, 'TFA1C944BC8E20', 10500, 0, 2, 'Hoàn tiền từ hủy công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":142375,\"created_at\":\"2023-06-13T22:13:59.000000Z\",\"updated_at\":\"2023-06-20T11:57:29.000000Z\"},\"job\":{\"id\":59,\"shop_id\":5,\"worker_id\":54,\"code\":\"J4D1F270FEF243\",\"name\":null,\"slug\":\"b0c8f3ff-9a80-4944-b89c-ccfee53822da\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:04:04\",\"step_at\":\"2023-06-18 21:04:04\",\"created_at\":\"2023-06-18T13:55:18.000000Z\",\"updated_at\":\"2023-06-18T15:19:41.000000Z\"}}', '2023-06-20 11:57:29', '2023-06-20 11:57:29'),
(62, 5, 59, 3, 'T48A5974F04C51', -2000, 0, 2, 'Trừ tiền từ hủy công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":140375,\"created_at\":\"2023-06-13T22:13:59.000000Z\",\"updated_at\":\"2023-06-20T11:57:29.000000Z\"},\"job\":{\"id\":59,\"shop_id\":5,\"worker_id\":54,\"code\":\"J4D1F270FEF243\",\"name\":null,\"slug\":\"b0c8f3ff-9a80-4944-b89c-ccfee53822da\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:04:04\",\"step_at\":\"2023-06-18 21:04:04\",\"created_at\":\"2023-06-18T13:55:18.000000Z\",\"updated_at\":\"2023-06-18T15:19:41.000000Z\"}}', '2023-06-20 11:57:29', '2023-06-20 11:57:29'),
(63, 5, 58, 3, 'T7A88DDC5B119B', 10500, 0, 2, 'Hoàn tiền từ hủy công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":150875,\"created_at\":\"2023-06-13T22:13:59.000000Z\",\"updated_at\":\"2023-06-20T11:57:59.000000Z\"},\"job\":{\"id\":58,\"shop_id\":5,\"worker_id\":57,\"code\":\"J2DBDAC40E4992\",\"name\":null,\"slug\":\"f1baca85-a422-4f31-bb4d-9c0ee86b648e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:55:14\",\"step_at\":\"2023-06-18 20:55:14\",\"created_at\":\"2023-06-18T13:54:11.000000Z\",\"updated_at\":\"2023-06-18T15:19:55.000000Z\"}}', '2023-06-20 11:57:59', '2023-06-20 11:57:59'),
(64, 5, 58, 3, 'T1C6C5B145E301', -2000, 0, 2, 'Trừ tiền từ hủy công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":148875,\"created_at\":\"2023-06-13T22:13:59.000000Z\",\"updated_at\":\"2023-06-20T11:57:59.000000Z\"},\"job\":{\"id\":58,\"shop_id\":5,\"worker_id\":57,\"code\":\"J2DBDAC40E4992\",\"name\":null,\"slug\":\"f1baca85-a422-4f31-bb4d-9c0ee86b648e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:55:14\",\"step_at\":\"2023-06-18 20:55:14\",\"created_at\":\"2023-06-18T13:54:11.000000Z\",\"updated_at\":\"2023-06-18T15:19:55.000000Z\"}}', '2023-06-20 11:57:59', '2023-06-20 11:57:59'),
(65, 5, 55, 3, 'T9D07224FD33F6', 10500, 0, 2, 'Hoàn tiền từ hủy công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":159375,\"created_at\":\"2023-06-13T22:13:59.000000Z\",\"updated_at\":\"2023-06-20T11:59:47.000000Z\"},\"job\":{\"id\":55,\"shop_id\":5,\"worker_id\":56,\"code\":\"J77F79BCB0BD8B\",\"name\":null,\"slug\":\"afe6d701-bbe1-412e-af75-94ad0bf89f16\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:51:46\",\"step_at\":\"2023-06-18 20:51:46\",\"created_at\":\"2023-06-18T13:46:26.000000Z\",\"updated_at\":\"2023-06-18T15:19:22.000000Z\"}}', '2023-06-20 11:59:47', '2023-06-20 11:59:47'),
(66, 5, 55, 3, 'TF4B9F39D85CD7', -2000, 0, 2, 'Trừ tiền từ hủy công việc.', '{\"wallet\":{\"id\":5,\"user_id\":5,\"amount\":157375,\"created_at\":\"2023-06-13T22:13:59.000000Z\",\"updated_at\":\"2023-06-20T11:59:47.000000Z\"},\"job\":{\"id\":55,\"shop_id\":5,\"worker_id\":56,\"code\":\"J77F79BCB0BD8B\",\"name\":null,\"slug\":\"afe6d701-bbe1-412e-af75-94ad0bf89f16\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":4,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:51:46\",\"step_at\":\"2023-06-18 20:51:46\",\"created_at\":\"2023-06-18T13:46:26.000000Z\",\"updated_at\":\"2023-06-18T15:19:22.000000Z\"}}', '2023-06-20 11:59:47', '2023-06-20 11:59:47'),
(67, 58, 57, 3, 'T66D5CBCC79A41', 7875, -2625, 2, 'Cộng tiền từ hoàn thành công việc.', '{\"wallet\":{\"id\":58,\"user_id\":58,\"amount\":7875,\"created_at\":\"2023-06-18T13:52:40.000000Z\",\"updated_at\":\"2023-06-20T20:46:14.000000Z\"},\"job\":{\"id\":57,\"shop_id\":5,\"worker_id\":58,\"code\":\"J99135A127B656\",\"name\":null,\"slug\":\"ec99bb0b-7fb3-4c3d-93fb-6adf97ecd13e\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 20:53:08\",\"step_at\":\"2023-06-18 20:53:08\",\"created_at\":\"2023-06-18T13:49:39.000000Z\",\"updated_at\":\"2023-06-20T20:46:14.000000Z\"}}', '2023-06-20 20:46:14', '2023-06-20 20:46:14'),
(68, 15, 33, 1, 'T7EA75D09366CE', 100000000, 0, 2, NULL, '\"{\\\"id\\\":33,\\\"user_id\\\":15,\\\"code\\\":\\\"Txn43BA6E25A9816\\\",\\\"code_vnpay\\\":null,\\\"bank_code\\\":\\\"VNBANK\\\",\\\"time\\\":null,\\\"bank\\\":null,\\\"amount\\\":100000000,\\\"fee\\\":0,\\\"status\\\":1,\\\"created_at\\\":\\\"2023-06-21T05:04:14.000000Z\\\",\\\"updated_at\\\":\\\"2023-06-21T05:05:17.000000Z\\\",\\\"user\\\":{\\\"id\\\":15,\\\"code\\\":\\\"U87E441686824666\\\",\\\"slug\\\":\\\"aef92030-f0c5-49fc-8d57-f8a8b634506f-1686824666\\\",\\\"username\\\":\\\"kirabboy\\\",\\\"fullname\\\":\\\"Nguy\\\\u1ec5n Ch\\\\u00ednh H\\\\u01b0ng\\\",\\\"email\\\":\\\"nc.hung0806@gmail.com\\\",\\\"phone\\\":\\\"0338927456\\\",\\\"birthday\\\":null,\\\"gender\\\":1,\\\"avatar\\\":null,\\\"cover_photo\\\":null,\\\"email_verified_at\\\":null,\\\"token_get_password\\\":null,\\\"status\\\":1,\\\"roles\\\":1,\\\"name_shop\\\":null,\\\"is_reputable\\\":0,\\\"created_at\\\":\\\"2023-06-15T10:24:26.000000Z\\\",\\\"updated_at\\\":\\\"2023-06-15T10:24:26.000000Z\\\"}}\"', '2023-06-21 05:05:18', '2023-06-21 05:05:18'),
(69, 59, 61, 3, 'T59901EFCB9A12', 7875, -2625, 2, 'Cộng tiền từ hoàn thành công việc.', '{\"wallet\":{\"id\":59,\"user_id\":59,\"amount\":7875,\"created_at\":\"2023-06-18T14:10:50.000000Z\",\"updated_at\":\"2023-06-21T07:56:30.000000Z\"},\"job\":{\"id\":61,\"shop_id\":5,\"worker_id\":59,\"code\":\"J5E88D7B57E038\",\"name\":null,\"slug\":\"c9b37c5e-e653-4d3e-826d-4f1895f76ecc\",\"money\":10500,\"money_product\":0,\"money_product_addition\":0,\"status\":6,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Shop s\\u1ebd g\\u1eedi \\u1ea3nh, video s\\u1ea3n ph\\u1ea9m v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn \\u0111\\u00e1nh gi\\u00e1 cho \\u0111\\u01a1n h\\u00e0ng<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-18 21:33:28\",\"step_at\":\"2023-06-18 21:33:28\",\"created_at\":\"2023-06-18T14:32:44.000000Z\",\"updated_at\":\"2023-06-21T07:56:30.000000Z\"}}', '2023-06-21 07:56:30', '2023-06-21 07:56:30'),
(71, 5, 1, 2, 'TAA4134C9D074F', 157375, 2000, 2, NULL, '\"{\\\"user_id\\\":\\\"5\\\",\\\"amount\\\":157375,\\\"bank_id\\\":\\\"9\\\",\\\"fee\\\":\\\"2000\\\",\\\"code\\\":\\\"Txn79245CE770EC4\\\",\\\"updated_at\\\":\\\"2023-06-23T04:46:06.000000Z\\\",\\\"created_at\\\":\\\"2023-06-23T04:46:06.000000Z\\\",\\\"id\\\":1}\"', '2023-06-23 04:46:06', '2023-06-23 04:46:06'),
(72, 1, 81, 3, 'T2831156BAE0B2', -10000, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5192225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T07:52:54.000000Z\"},\"job\":{\"money_product\":0,\"money\":10000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"J3DF42BF3C3FF9\",\"slug\":\"6e5f08c2-c0b5-4d46-a822-f6caf78d0d76\",\"status\":1,\"updated_at\":\"2023-06-26T07:52:54.000000Z\",\"created_at\":\"2023-06-26T07:52:54.000000Z\",\"id\":81}}', '2023-06-26 07:52:54', '2023-06-26 07:52:54'),
(73, 1, 82, 3, 'T18AAC175DB336', -10000, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5182225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T07:53:01.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"JD515F350A9D8B\",\"name\":null,\"slug\":\"578715ab-3fbc-4475-868a-0b32928fcd0f\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:53:01.000000Z\",\"created_at\":\"2023-06-26T07:53:01.000000Z\",\"id\":82}}', '2023-06-26 07:53:01', '2023-06-26 07:53:01'),
(74, 1, 83, 3, 'T8E1949172CEA6', -10000, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5172225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T07:53:04.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"JAC7089651C590\",\"name\":null,\"slug\":\"5e512340-bcae-4235-af14-ef32e2af79f2\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:53:04.000000Z\",\"created_at\":\"2023-06-26T07:53:04.000000Z\",\"id\":83}}', '2023-06-26 07:53:04', '2023-06-26 07:53:04'),
(75, 1, 84, 3, 'T50A82F1FD46C9', -10000, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5162225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T07:53:07.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"J643A625AE663B\",\"name\":null,\"slug\":\"d565da2c-7bb5-4969-937a-38c58ad8cfcc\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:53:07.000000Z\",\"created_at\":\"2023-06-26T07:53:07.000000Z\",\"id\":84}}', '2023-06-26 07:53:07', '2023-06-26 07:53:07'),
(76, 1, 85, 3, 'TD7B6371DA1FCF', -10000, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5152225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T07:53:10.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"JC8F48B2421FFE\",\"name\":null,\"slug\":\"9e82f519-2e02-42e4-a5c4-ddc9f09d0b60\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:53:10.000000Z\",\"created_at\":\"2023-06-26T07:53:10.000000Z\",\"id\":85}}', '2023-06-26 07:53:10', '2023-06-26 07:53:10'),
(77, 1, 86, 3, 'T46718FE88668D', -10000, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5142225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T07:53:12.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"J0B47C69BB7CF6\",\"name\":null,\"slug\":\"7f6ab058-6ce5-48dc-b1dc-b6755739a78a\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:53:12.000000Z\",\"created_at\":\"2023-06-26T07:53:12.000000Z\",\"id\":86}}', '2023-06-26 07:53:12', '2023-06-26 07:53:12'),
(78, 1, 87, 3, 'T200C588601A63', -10000, 0, 2, 'Trừ tiền từ tạo công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5132225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T07:55:31.000000Z\"},\"job\":{\"money_product\":0,\"money\":10000,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"shop_id\":1,\"code\":\"JC0E8475801441\",\"slug\":\"89c143c6-2146-457b-961c-8fb1e341c4e9\",\"status\":1,\"updated_at\":\"2023-06-26T07:55:31.000000Z\",\"created_at\":\"2023-06-26T07:55:31.000000Z\",\"id\":87}}', '2023-06-26 07:55:31', '2023-06-26 07:55:31'),
(79, 1, 88, 3, 'T8778AFA05477F', -10000, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5122225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T07:55:34.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"JC420D2D0D0436\",\"name\":null,\"slug\":\"5e786a5e-7552-494b-a427-e3d544b798c5\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:55:34.000000Z\",\"created_at\":\"2023-06-26T07:55:34.000000Z\",\"id\":88}}', '2023-06-26 07:55:34', '2023-06-26 07:55:34'),
(80, 1, 89, 3, 'T758016BC9A9D3', -10000, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5112225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T07:55:37.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"J23A79B4380909\",\"name\":null,\"slug\":\"18f8e6c1-4da8-4db4-89eb-15f767cda095\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:55:37.000000Z\",\"created_at\":\"2023-06-26T07:55:37.000000Z\",\"id\":89}}', '2023-06-26 07:55:37', '2023-06-26 07:55:37'),
(81, 1, 90, 3, 'T02C2080255237', -10000, 0, 2, 'Trừ tiền từ Sao chép công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5102225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T07:55:40.000000Z\"},\"job\":{\"shop_id\":1,\"code\":\"J6A111C469148E\",\"name\":null,\"slug\":\"37f69ba9-4afc-4c90-b862-c08c7365fadc\",\"money\":10000,\"money_product\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"updated_at\":\"2023-06-26T07:55:40.000000Z\",\"created_at\":\"2023-06-26T07:55:40.000000Z\",\"id\":90}}', '2023-06-26 07:55:40', '2023-06-26 07:55:40'),
(84, 1, 84, 3, 'TAAF2E2F7A21DC', 10000, 0, 2, 'Hoàn tiền từ hủy công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5112225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T10:21:07.000000Z\"},\"job\":{\"id\":84,\"shop_id\":1,\"worker_id\":null,\"code\":\"J643A625AE663B\",\"name\":null,\"slug\":\"d565da2c-7bb5-4969-937a-38c58ad8cfcc\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"created_at\":\"2023-06-26T07:53:07.000000Z\",\"updated_at\":\"2023-06-26T07:53:07.000000Z\"}}', '2023-06-26 10:21:07', '2023-06-26 10:21:07'),
(85, 1, 83, 3, 'T0537EFD96E35E', 10000, 0, 2, 'Hoàn tiền từ hủy công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5122225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T10:21:20.000000Z\"},\"job\":{\"id\":83,\"shop_id\":1,\"worker_id\":null,\"code\":\"JAC7089651C590\",\"name\":null,\"slug\":\"5e512340-bcae-4235-af14-ef32e2af79f2\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"created_at\":\"2023-06-26T07:53:04.000000Z\",\"updated_at\":\"2023-06-26T07:53:04.000000Z\"}}', '2023-06-26 10:21:20', '2023-06-26 10:21:20'),
(86, 1, 82, 3, 'T8FA507C2BE0A4', 10000, 0, 2, 'Hoàn tiền từ hủy công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5132225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T10:22:15.000000Z\"},\"job\":{\"id\":82,\"shop_id\":1,\"worker_id\":null,\"code\":\"JD515F350A9D8B\",\"name\":null,\"slug\":\"578715ab-3fbc-4475-868a-0b32928fcd0f\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":1,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":null,\"step_at\":null,\"created_at\":\"2023-06-26T07:53:01.000000Z\",\"updated_at\":\"2023-06-26T07:53:01.000000Z\"}}', '2023-06-26 10:22:15', '2023-06-26 10:22:15'),
(87, 1, 86, 3, 'T07AE1DAF602A4', 10000, 0, 2, 'Hoàn tiền từ hủy công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5142225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T10:22:48.000000Z\"},\"job\":{\"id\":86,\"shop_id\":1,\"worker_id\":26,\"code\":\"J0B47C69BB7CF6\",\"name\":null,\"slug\":\"7f6ab058-6ce5-48dc-b1dc-b6755739a78a\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 16:38:00\",\"step_at\":\"2023-06-26 16:38:00\",\"created_at\":\"2023-06-26T07:53:12.000000Z\",\"updated_at\":\"2023-06-26T09:38:00.000000Z\"}}', '2023-06-26 10:22:48', '2023-06-26 10:22:48'),
(88, 1, 86, 3, 'T1707B68E690FF', -2000, 0, 2, 'Trừ tiền từ hủy công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5140225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T10:22:48.000000Z\"},\"job\":{\"id\":86,\"shop_id\":1,\"worker_id\":26,\"code\":\"J0B47C69BB7CF6\",\"name\":null,\"slug\":\"7f6ab058-6ce5-48dc-b1dc-b6755739a78a\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 16:38:00\",\"step_at\":\"2023-06-26 16:38:00\",\"created_at\":\"2023-06-26T07:53:12.000000Z\",\"updated_at\":\"2023-06-26T09:38:00.000000Z\"}}', '2023-06-26 10:22:48', '2023-06-26 10:22:48'),
(89, 1, 85, 3, 'TB2C0C1E914BF1', 10000, 0, 2, 'Hoàn tiền từ hủy công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5150225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T10:23:49.000000Z\"},\"job\":{\"id\":85,\"shop_id\":1,\"worker_id\":89,\"code\":\"JC8F48B2421FFE\",\"name\":null,\"slug\":\"9e82f519-2e02-42e4-a5c4-ddc9f09d0b60\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 16:57:00\",\"step_at\":\"2023-06-26 16:57:00\",\"created_at\":\"2023-06-26T07:53:10.000000Z\",\"updated_at\":\"2023-06-26T09:57:00.000000Z\"}}', '2023-06-26 10:23:49', '2023-06-26 10:23:49'),
(90, 1, 85, 3, 'T6568B179F01D8', -2000, 0, 2, 'Trừ tiền từ hủy công việc.', '{\"wallet\":{\"id\":1,\"user_id\":1,\"amount\":5148225,\"created_at\":\"2023-06-13T20:35:15.000000Z\",\"updated_at\":\"2023-06-26T10:23:49.000000Z\"},\"job\":{\"id\":85,\"shop_id\":1,\"worker_id\":89,\"code\":\"JC8F48B2421FFE\",\"name\":null,\"slug\":\"9e82f519-2e02-42e4-a5c4-ddc9f09d0b60\",\"money\":10000,\"money_product\":0,\"money_product_addition\":0,\"status\":2,\"is_virtual\":false,\"note\":\"<p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n ph\\u1ea3i nh\\u1eadn h\\u00e0ng<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t kh\\u00f4ng c\\u1ea7n thanh to\\u00e1n cho \\u0111\\u01a1n n\\u00e0y<\\/p><p>- Ng\\u01b0\\u1eddi \\u0111\\u1eb7t t\\u1ef1 vi\\u1ebft \\u0111\\u00e1nh gi\\u00e1 c\\u00f3 t\\u00e2m cho \\u0111\\u01a1n h\\u00e0ng, kh\\u00f4ng y\\u00eau c\\u1ea7u v\\u1ec1 \\u1ea3nh v\\u00e0 video \\u0111\\u00e1nh gi\\u00e1<\\/p><p>- B\\u1ea1n c\\u1ea7n t\\u00e0i kho\\u1ea3n c\\u00f3 avatar v\\u00e0 c\\u00f3 \\u0111\\u01a1n th\\u00e0nh c\\u00f4ng<\\/p><p>- \\u0110\\u1ecba ch\\u1ec9 l\\u00ean \\u0111\\u01a1n thu\\u1ed9c HCM<\\/p>\",\"desc\":null,\"receive_at\":\"2023-06-26 16:57:00\",\"step_at\":\"2023-06-26 16:57:00\",\"created_at\":\"2023-06-26T07:53:10.000000Z\",\"updated_at\":\"2023-06-26T09:57:00.000000Z\"}}', '2023-06-26 10:23:49', '2023-06-26 10:23:49'),
(91, 17, 29, 3, 'T71600603E7E35', 0, 0, 2, 'Cộng tiền từ hoàn thành công việc.', '{\"wallet\":{\"id\":17,\"user_id\":17,\"amount\":0,\"created_at\":\"2023-06-15T13:53:59.000000Z\",\"updated_at\":\"2023-06-15T13:53:59.000000Z\"},\"job\":{\"id\":29,\"shop_id\":1,\"worker_id\":17,\"status\":6,\"step_at\":\"2023-06-15 20:56:11\",\"updated_at\":\"2023-06-26T17:01:01.000000Z\"}}', '2023-06-26 17:01:01', '2023-06-26 17:01:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '1',
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `cover_photo` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `token_get_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `roles` tinyint(4) NOT NULL DEFAULT '2',
  `name_shop` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_reputable` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `code`, `slug`, `username`, `fullname`, `email`, `phone`, `birthday`, `gender`, `avatar`, `cover_photo`, `email_verified_at`, `token_get_password`, `password`, `status`, `roles`, `name_shop`, `is_reputable`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'UBD0DC1686738915', '18e99882-0893-4d48-ae01-32032a8d9a23-1686738915', 'admin', 'Korina', 'vubui.7592@gmail.com', '0934584939', NULL, 1, 'public/uploads/users/1/user//dCtL3MQOeeDIpxyTzglEddZFVlw0RaGcxSLoP5pl.png', 'public/uploads/users/1/user//nfQF0DkHpiwfNSER047XEGckQTCXEHwlOJ9AbywO.png', NULL, NULL, '$2y$10$y8Uj4i7sCwzhL3WDk35J6O8t7i11zLaWP97kb2NqZkV8i1KDZ2xky', 1, 2, 'Korina', 1, 'lk7qtzYwlhHF1GzXgc2nCDiM1p46kTj8Jih775q0ghobLOXKW2PA39ddCLky', '2023-06-14 10:35:15', '2023-06-20 10:16:30'),
(2, 'U0A2C71686741841', '57f725fb-9a17-4568-9d4d-868c7ae6b2bb-1686741841', 'linh', 'Hồ Thị Linh', 'linh@gmail.com', '035763673', NULL, 1, 'public/uploads/users/2/user//rV7XTUhI4Y9JPw29TIW47k36XK3LFMlt2FOt2mdX.jpg', 'public/uploads/users/2/user//IDvvPIuuvjsnGZ7tPzCuAcvR67SdI7XeSKcv7lsw.jpg', NULL, NULL, '$2y$10$U2RAIarPhpCjt4e8pkrZXugE8CkiKYvTqSX5a0o9NXaf9k3ucTIXG', 1, 2, 'Kubota shop', 0, 'HkZpNaF72e3829uAj9WazwfZ538jyRTz0g7OqIqimVOu1NzqnuNL9d5eugBF', '2023-06-14 11:24:01', '2023-06-18 23:09:59'),
(3, 'UBBCBE1686742068', '403e21df-7b8f-46a9-9fd7-92475651872d-1686742068', 'nguyenkhackhanhvu', 'Nguyễn Khắc Khánh Vũ', 'nguyenkhacnhu97@gmail.com', '0878888765', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$bPiLX2K4Z8PGurVG/29T8O4iVvjMdrvRu6F8hbsEzGBsizFDL9W6O', 1, 2, 'N2 Store', 0, '9iiDxDa3Ic5kRQf6AXo929MtElXLfAhr1XOeZH0UfxlYFlqd7osz9WfRhCCK', '2023-06-14 11:27:48', '2023-06-15 13:37:56'),
(4, 'U7F7F51686742277', '081be9ed-d5a0-4a9a-b9bd-992e0a738046-1686742277', 'anhtuan612', 'Trần tuấn anh', 'anhtuan061298@gmail.com', '0988485279', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$ce.rvcmR4PgTHra581vkl.3uBX8z36Clvt.ylxNmZQVvyLc892x42', 1, 1, NULL, 0, 'XB3TM1jAuODvYjqWFOFjFtvJbEmmh5UmL5hplgdJWaeLby6JLkUgBU9PLoue', '2023-06-14 11:31:17', '2023-06-14 11:31:17'),
(5, 'U9373B1686744839', '0eb34fcd-b67d-43f7-8d60-6e3940fec496-1686744839', 'nganphacbien', 'Shop 107', 'nganphacbien@gmail.com', '0794892055', NULL, 1, 'public/uploads/users/5/user//aqj6k3QR8isK1NkyxlJgS3vRVYdyN4qXRm5FkpKA.jpg', NULL, NULL, NULL, '$2y$10$NuMPP7OCSbBHRwTROEHqxupn4hI6PN6vm4UGluTx0UqAnAJG3YCii', 1, 2, 'Shop 107', 0, 'NdScN8bK0K9NXsMChEaAZRNd693Iu83kqWMKl8nJkY3pCxYyVmIfqFoEWMFM', '2023-06-14 12:13:59', '2023-06-18 11:02:43'),
(6, 'U5E2761686748264', '5b93103a-dccf-42b5-8dbe-d0c0d3245371-1686748264', 'thanhtran', 'Thanh Trần', 'thanhtran533@gmail.com', '0908836533', NULL, 1, 'public/uploads/users/6/user//TEFnw2aQGt3D6qifCpQgwbi7wZRANBP6i1qS09XW.jpg', 'public/uploads/users/6/user//UqTiJWO9yAi8HpYsY0RolKJNRX8d39NlatkREJLX.jpg', NULL, NULL, '$2y$10$u8igbnCahzQ/dOP.4UuXXe4el45k8MN5TIcZxLCdSNrij602kkXby', 1, 2, 'Lamo Store', 0, '1Y1GbmH4IwU7huY03XfUknKkNZpTK228YsG8O52xOln0avaEWDDtbWfufrR3', '2023-06-14 13:11:04', '2023-06-20 11:45:31'),
(7, 'UC20821686750499', 'd031a58a-2c0f-4f7d-9f98-1b66dfe11520-1686750500', 'kenynguyen99@gmail.com', 'Nguyễn Tiền', 'kenynguyen99@gmail.com', '0362707879', NULL, 1, 'public/uploads/users/7/user//TD3VRqgXgv6WL2M88R58BowYWReeJnLeeK5SGqFX.png', NULL, NULL, NULL, '$2y$10$uBIRVYAC6gAzOkm65Rwrcu/3doHkpAglfUqODGFxZT9yuZcGp4U4m', 1, 2, 'Baine.vn', 1, 'Iy2h5NcQhHcVpSApmX9dvl4O6n5kVdoVMinVYG1At9g06ogr1YOI02wlR14U', '2023-06-14 13:48:20', '2023-06-14 13:55:29'),
(8, 'UD35CF1686750876', 'af552994-24f3-489b-bded-2f2b5fbc8893-1686750876', 'TLinh993', 'TRẦN THỊ LINH', 'tranthilinh9903@gmail.com', '0865880803', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$T/luy.WIy3WEGrnGNdkwSeXDK8QX2EPzdMzYPGv1upD9oPJ2H3cCa', 1, 1, NULL, 0, '1Dm6LV3VU7EvNDKF7qIfHhINuYDLzawGqQnPQP3BS3AaQTeZ7elir3N1a6vD', '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(9, 'UC26591686753221', 'dd72c88b-3c14-48a8-8236-9bffa31efd85-1686753221', 'linhxinh', 'Nguyễn Thị Thùy Linh', 'thuylinhtmn@gmail.com', '0372137663', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$jrXHvNN7..sqRHvQk33MT.wKYl.kelVWjo9uFBCoerqfBVZjdpw4W', 1, 1, NULL, 0, 'zH3nO9sHwu2ZlNZjU47tydMU0Lz3StIcKkxYbvXGz4IdEt1ewWCfabxX1l0c', '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(10, 'U96E7B1686755034', 'beb3b521-cfdb-4e85-899b-9a299e8ad57f-1686755034', 'Truclun123', 'Trần thanh Trúc', 'nanana041103@gmail.com', '0767605911', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$y0VS.sL3hbyzwdls7NoYCu/t4/gAnGdXzIc8BMFfi2AOHmoML.2m6', 1, 1, NULL, 0, 'K4jGlCiOyQP63gcpxUbdqoPIUtU17HcQZFksbsrvosPillIhczTY32mvrwHU', '2023-06-14 15:03:54', '2023-06-14 15:03:54'),
(11, 'UA42AF1686757099', 'be77b129-8dd2-4610-ae06-df97b5216e05-1686757099', 'Tracy', 'Huỳnh Ngọc Minh Thư', 'minhthuu2312@gmail.com', '0764570458', NULL, 2, NULL, NULL, NULL, NULL, '$2y$10$z7gTG/2NFgq4.cxXMMKPbOC7/GJBMSAgNDaUeydy7lF19QXX68/WW', 1, 1, NULL, 0, 'd0Z1rZxf7TsNayxu9ZrfAKaP7FgL1K0ypKjL5yAZXeQ9Xq5fHWLIbVo2ihoD', '2023-06-14 15:38:19', '2023-06-21 09:18:31'),
(12, 'UD21331686796615', 'c92a853a-037d-4384-9d9b-7cdf950fc0c8-1686796615', 'meomeomoa', 'Thuc Anh', 'thucanh1212004@gmail.com', '0982430005', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$eiaa6wdRIAlFBlastZGZf.JwlGfhZNElHPBTu2FMq7F1y5A2a3PW6', 1, 1, NULL, 0, 'TnBSCBHft3eTjdVBDGEFGfUyIYjO0HmNFAAyaHWpyrR7jD1G4bk2aPCrwDt2', '2023-06-15 02:36:55', '2023-06-15 02:36:55'),
(13, 'U4DAD21686807626', '0cf572ff-a899-4d30-b748-7e14c6f07de8-1686807626', 'Nhuwnhuw', 'Nguyễn Tâm Như', 'taamnhuw2002@gmail.com', '0889966843', NULL, 2, NULL, NULL, NULL, NULL, '$2y$10$MykQzh8VVsemxNxQ5wK5Tevz6I3v/Ymz2TNXyZA0PZCZVdnOIyjOK', 1, 2, 'NhuwNhuw', 0, 'LPHlttACPRpsgUy8Ek5EZ8fCfkrByRqns7BIbW8mst2075g6zdBcIhOmMjGH', '2023-06-15 05:40:26', '2023-06-15 07:48:03'),
(14, 'U28AA61686814119', '5e278f77-3cf5-43c2-979e-8ad654d69fba-1686814119', 'thong6554', 'Hoàng Nhất Thống', 'thong554@gmail.com', '035567554', NULL, 1, 'public/uploads/users/14/user//MrCEtLsbqyJ4xlwHBkyjXHITSEVBlkCu3B2WRdma.png', 'public/uploads/users/14/user//mBplX4UrgeIwqfi7ByaR3ItIRBWb4pCzsciWmPmp.png', NULL, NULL, '$2y$10$VJSxNEram.GK1.WJRJ6j3uYobGITndKiQlvqkZSbV6mXpV5gxZSi.', 1, 2, 'hoangnhatthongmobile', 0, 'bsHL0KUc0QdmT63pDL4LR8AUMzI0bisC4nuQo5rg67HbdfAzFu0aPEC9yqil', '2023-06-15 07:28:39', '2023-06-15 07:48:10'),
(15, 'U87E441686824666', 'aef92030-f0c5-49fc-8d57-f8a8b634506f-1686824666', 'kirabboy', 'Nguyễn Chính Hưng', 'nc.hung0806@gmail.com', '0338927456', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$99X6Tg25gZOzdaMKvYrwq.zaBZHzNclPOlbHAiQhRCMz8bxMp/CSe', 1, 1, NULL, 0, 'qFAPQGQpPLuNGRQEt4NKzizBQcupuIfLJnMVP58VEZA7ZABSfdzrMwbBOKD1', '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(16, 'U0CF901686828989', '9f9edc8f-7289-4cc6-b7a9-ce00a20e953f-1686828989', 'Boycoy98', 'Lưu thành luân', 'boycoy1598@gmail.con', '0356804888', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$lymZ7mPgMo086W6D.ULbLeEsZ3wroYq5f5O2TflkBffw8csB1okiS', 1, 1, NULL, 0, 'gsyMMd4x8imuOqOEfv4WNjUn7JLSXvM00bKyNwYfi0GmT9Cm2qchadTGLWpk', '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(17, 'UBFD1A1686837238', '4e23ab3d-3407-4c34-944a-1203c8021a00-1686837239', 'Vuthithu', 'Vũ Thị Thu', 'vuthu2944@gmail.com', '0337832106', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$wSFJQJYecKwvwNyGwv4ObOoEj0Pz4TbDq0Qt13auh/.Bt6usmRVuS', 1, 1, NULL, 0, 'wFfgAYNa5q0eIieuhH4cnhktWyQoWv19ZLWKxqi0kPMjmP8FvUGnxQONUFaQ', '2023-06-15 13:53:59', '2023-06-15 13:53:59'),
(18, 'U493E21686841393', '006924fd-f56d-4ad1-8352-95456be9c4a7-1686841393', 'tuancon005', 'Tạ Văn Tuấn', 'gltuan001@gmail.com', '0367709381', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$QlTsajkQa4CgNiKdQacufOmMQ/UKS8VfC0M2V85haKeUblMwfoDMa', 1, 1, NULL, 0, '4ON9CkNFlTjgMfKbf2JBr1PeHqVZ9c6WYKHszMWIDJpXCUE2A62UCQ58O9Nw', '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(19, 'UF52851686857255', '668875c2-057a-40e9-a7ce-b6642c050a55-1686857255', 'maixuandai', 'Mai Xuân Đai', 'maixuandaiat1@gmail.com', '0782235152', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$pkWwFFKFxQhmKXywT.V1yeyjVIHrnRqoYjfDYofYqvQ8HmKWKuLaa', 1, 1, NULL, 0, 'FxNME4Cx8rZlW5k8L5LIsT1lyH0rRfYSHeSkdV43gsiC94UFVchdfNty5U0H', '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(20, 'UB0E411686862846', '4d7470d4-f512-4a99-a6bb-a00e5cb06d78-1686862847', 'haitri', 'Nguyễn Văn Hải Trí', 'nguyenvanhaitritlbl@gmail.com', '0329149182', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$z7rXUgF0c699mizD54qLJeNalSC0lF3W13jZjc28YHzNlg3PC7WNu', 1, 1, NULL, 0, '2lNdZXhwJEShC5uZVEzPPNhNQWiB0PS2PS0RKbverBveT9t3ka4rZwZxclKh', '2023-06-15 21:00:47', '2023-06-15 21:00:47'),
(21, 'U813A81686869872', '5feb67b1-e805-4569-aa70-7f962e214ecc-1686869872', 'Tamtam97', 'Nguyễn Thị tâm', 'nguyentam02101997@gmail.com', '0966382407', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$hDL8RO75ToRQwHdktWf3jO2D78qtFQ78j2/62rg//QC1yspTvH0Jq', 1, 1, NULL, 0, 'tjM1QOwASnv96teh6IKuOYNlvXeeTuzmfq68yEIJhJQKKUK9FSp6plVvbSoS', '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(22, 'U748041686897114', '0f218ffb-7e26-4fd5-a7f3-00894ee37123-1686897115', 'nqvuong112', 'Nguyễn Quý Vương', 'nqvuong112@gmail.com', '0977375579', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$YH1K1cJVXO59rbkd2XFZ6eKr3ed.glbIfs3zYsQPkwLA4HPjM4jhu', 1, 2, 'Masterstore', 0, 'uwlLfo1Qqtbnf2OwOG59PUw9vYj55SXMixwfsSbogfr3JpUWBpTFlXYoe4hn', '2023-06-16 06:31:55', '2023-06-16 07:06:22'),
(23, 'U5471E1686928940', '96962cbc-412d-483c-a1eb-b44b9042d55c-1686928940', 'nguyenkhanh0213', 'Nguyen khanh', 'khanhdien3102@gmail.com', '0852543736', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$WWzfSFvcNI3nl5QfpCn33.5HZtxMc2zV/o8Hyx3L0hPc4k58uljS2', 1, 1, NULL, 0, '2ksSFonk2ThFOzW3OFaTpdIQORWLctbuvg639WCNyGqYwCqFnhceWgSTTXzN', '2023-06-16 15:22:20', '2023-06-16 15:22:20'),
(24, 'UEDCF41686988141', 'e7c42c00-3abc-40f2-ab47-508ca93cc3b5-1686988141', 'ThTien', 'Ngô Thành Tiến', 'nottien04@gmail.com', '0945729206', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$MZRkv9xvJzaS.TNiGHjoAOolYr8iBygNs.07Zvd.7QDVUJ0fny2YS', 1, 1, NULL, 0, '18FQG2TUZi37smCympwPTlotM1zmBcrEN6U4H1HEohURvFdG6tKirvg3AoFs', '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(25, 'UE5F7D1686997864', '26efe8f1-1907-48e7-b286-992ff2220035-1686997864', 'Letutin', 'Lê Tự tin', 'letutin1608@gmail.com', '0356369717', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$avesZJA7FwwZknh.NJ4hiu4fwc7L35FW838sOqZDeECq5deipA2Ui', 1, 1, NULL, 0, 'M7FEf9xCrzRkqzZraGXCJXNVj2VFdGxO6UYMuaKQril3lrou3xtTtLl4nQAS', '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(26, 'U7FECB1686998086', '35722583-4806-4b04-ba81-366fc8b3fb7b-1686998086', 'ngocqien', 'Ngọc Quyên', 'ngocchonghien@gmail.com', '0705931941', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$FNFnDeOdNCHgE5YjKCVl7uXaHP7FqIZ1Fwy7kVNLdALdu.77YmBoO', 1, 1, NULL, 0, 'EoreDo3qBRZdZchZl2uxDkKsEF2peTrMWr1LesB3WOqhIVkj2E4XJO78gPfJ', '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(27, 'U67CF81686999987', '399d9e06-ffa3-4343-90e4-2c980c749db5-1686999987', 'anhmaig1', 'Hoàng Minh Nghĩa', 'hoangminhnghia2k4@gmail.com', '0911975321', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$UAsODtNo/t3Xr8GG.5aeaODvQD9Y88K7ORuij8JDjxPRaY/4OmTja', 1, 1, NULL, 0, 'l4umDaOr2Wopg75jmU3UFy3j5eG02XxNO8pColH3VeN2nDwwttBoEC7f6rqG', '2023-06-17 11:06:27', '2023-06-17 11:06:27'),
(28, 'UD525C1687000615', 'e4e81e6b-164f-4593-bbdc-c7aa0fa91506-1687000615', 'YenNhiLtd', 'Huỳnh Yến Nhi', 'huynhyennhi2403@gmail.com', '0849094121', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$P7T0UlXP3YNI74.1CUqxdOztLQs00/bmoRT8UED69iIyev5zqKGum', 1, 1, NULL, 0, 'ko1DbziCVcpGRW2y3Nhi5dhdxyuWZzdHUFnL7pr59aUOlCDfDj1Rq3B6dgIY', '2023-06-17 11:16:55', '2023-06-17 11:16:55'),
(29, 'U3504C1687002792', '38e19852-3b01-4e0c-aa68-25e3e9e03f79-1687002793', '0938257594', 'Trương Liễu Hiền', 'lieuhien1717@gmail.com', '0938257594', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$QmyrN1Ah7j.1ijYMIcEd.OKYgF1WnrOz1.FxeWGF9uATbH.Ou.9PW', 1, 1, NULL, 0, 'ZJKWZLUpbZDB3O0u09u5TKDNFvla2XUS81o7DWv6A9sfRx01buhpbKdsVr4C', '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(30, 'U9C1551687002830', '43564680-9170-4c6b-baf1-2a820f33562b-1687002830', 'Chian123', 'Chi Cao', 'caoquechi.ulis@gmail.com', '0393497994', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$p.t1zFauVR8HMvZOvGPjueyJCdzki0E4IhKyVRMOM7VN6YdN1Bqo2', 1, 1, NULL, 0, NULL, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(31, 'U775AF1687004273', '24baec3d-526b-49e4-b738-ad941d718ebf-1687004274', 'phandoandat', 'Phan Doãn Đạt', 'datcony10@gmail.com', '0866094723', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$7PDPq7wgYb5XjVUG21n0e.p.xGV7eAX9JsEnOrNPv.hVdN5JK/KkG', 1, 1, NULL, 0, 'gtyzQnKugdQwRHGkAFBnVpRAkGu32o6CyXPS5Mkwj2kuSpJ3snFWXQsKvL7N', '2023-06-17 12:17:54', '2023-06-17 12:17:54'),
(32, 'U8693D1687006906', '44056472-c5b3-48da-aa27-7af2919d5326-1687006906', 'reallllongdrgn', 'Hoàng Văn Long', 'hoangvanlong19052000@gmail.com', '0972427454', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$ED4XQZgnMf.MsfUELiHAIOqoE4vPhhF.dBDQGfGuyeMcsul9V8YIC', 1, 2, 'Rena Abera', 0, 'rP5srzhFiWP78oNIhF0F176ySGZqKT8jRYptKImdftRTZnV2DoE6ybe7ycKM', '2023-06-17 13:01:46', '2023-06-18 07:52:21'),
(33, 'U7F82F1687010559', '7ad96f9b-80f4-4310-a470-c3c21af87830-1687010559', 'toikco78910', 'Hùng nguyễn', 'hahaianhcuteshopee@gmail.com', '0974101159', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$.RwyebyDK3kdRzBqkCFmD.hDXANW0cct2fYXhXVEBl3WTBavXyN9u', 1, 1, NULL, 0, 'KjyCGM8JpqSG7aj0prHoqZ9KpmBxbTNCoUgXCguO6PukfDGMRyqL24exGz1z', '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(34, 'UA83F51687011046', '2ec60cb2-f251-4a65-a20c-f30a206d800e-1687011046', 'Dieulinh98', 'Phạm linh', 'udux401@gmail.com', '0396347296', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$ygmCBsE5XHhdpZ/lmmIRe.Yl./Twsf9Y9fvSBOYeRHY3hHeQX8wgy', 1, 1, NULL, 0, 'KE2j85YmSgHKcRYhILC5arxus1ayJOKlrOAhgI68RBDNOEsa1pxss5cFftwx', '2023-06-17 14:10:46', '2023-06-17 14:10:46'),
(35, 'UF885C1687016585', '8b5ee166-1c26-4507-b3c6-e78322cfde0a-1687016586', 'duongdzvl', 'Dương Đặng', 'Tucaothu23@gmail.com', '0365684902', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$LEYUg9i4AorJch5s3gFYwuJ/wMxsOy0Mu73M6IimfGzIbfjPl8xD2', 1, 1, NULL, 0, 'PZUthPppARlqFYwwryzKTOUgstiGgONk02Cp8hveR5S8jkdxQJDWKnV6hz5t', '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(36, 'UA0BD21687020561', '14d367f2-cd6f-4fc1-a0b9-27d8149ec954-1687020561', 'Trang', 'Mai Thuỳ Trang', 'maithithuytrang001@gmail.com', '0382282931', NULL, 2, NULL, NULL, NULL, NULL, '$2y$10$aR4FpeHlRra5X7eC5OcAM.64DHicajYBYmpySAw5WnSzncAIeqUqe', 1, 1, NULL, 0, '36TCdHqwZewlptSCoy7pbE6qq3WbkDbPuvset5JGpdIXRoOeac7JUH97Gcyf', '2023-06-17 16:49:21', '2023-06-17 16:49:55'),
(37, 'UB48FE1687021100', 'd740d3e6-15fa-4f7c-8306-777633f3dbf0-1687021100', 'quangphuc93', 'Nguyễn Quang Phúc', 'phucnqsb01389@gmail.com', '0943985839', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$FpxCSH7PubfAVjfhXipd/OkOha1j.RvSKQOKzUvNMS/yiC98mSTYq', 1, 2, 'Ez computer', 0, '5N4Sxo2g7n55yCqCcx4Gne3338FmG782nw9meTCqSEQLlPTr7CVCQMCGAM2g', '2023-06-17 16:58:20', '2023-06-17 23:49:27'),
(38, 'UAC26C1687044092', 'c5fede4a-be70-4be9-9ec2-143d08cf8e86-1687044093', 'AndyKiet8386', 'Quách Trần Tuấn Kiệt', 'andykiet8386@gmail.com', '0396968564', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$V0TLEHXTcqZUx0cz81uEOOShfDSoTQ4X8129QOsbSqjr1V2KMnGMe', 1, 2, 'Tiệm Trà Mộc', 0, 'so2ge1n7WbpyhUz9Fb4euKTvdVbLnOPQETnPUyTVKKNmc6vTCMEtjZ3uMxxY', '2023-06-17 23:21:33', '2023-06-18 07:52:41'),
(39, 'UE34801687047458', '34de315c-6885-4fee-9fb3-6bbad76cd6a9-1687047458', 'kimthoa1996', 'Kim Thoa', 'hoilamgi0238@gmail.com', '0985538007', NULL, 2, NULL, NULL, NULL, NULL, '$2y$10$q7CJGZPUOTvwiSBRFppvW.OtbA8ijm7WR4XMQtZolcUGh49fAVAbe', 1, 1, NULL, 0, 'saAcQA7fEkSBkHdt5DsL8JPk8uTjAEtqXfoyzraLkJjaysQfCxuMCdpPRGVN', '2023-06-18 00:17:38', '2023-06-18 02:02:18'),
(40, 'U35B961687048931', '8f9d6f5b-dad4-484d-890f-30d9e9239e35-1687048931', 'Langtumientay', 'Le van biel', 'Levanbiel@gmail.com', '0377049312', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$uLTq/3xXLSkS91veJd92QuUVbvbzRyvo2rGAeweAjRtlx9pgL7pqK', 1, 1, NULL, 0, 'BLhWyEk4UFFPMh8Y9aQv5AMLEZfVvIW04pByHnddOPPiRfHPfri3nVckr9ib', '2023-06-18 00:42:11', '2023-06-18 00:42:11'),
(41, 'UCC8191687051612', '5255d8d3-28a6-4242-9288-25f1943c4052-1687051612', 'Manhjjjj', 'Dnjdj', 'nhokafk2039@gmail.com', '0338581711', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$EiOAE1cr.yArRAkdFtNrXOoC2ssfVBb5lB/uRMvmkAtqSu3cHay2y', 1, 1, NULL, 0, 'Cb3Wsf95Nwx9jVVBJyQDkyHISFR8QM7EsuxsarHFAbBIrxQTqW1mxOcW79BC', '2023-06-18 01:26:52', '2023-06-18 01:26:52'),
(42, 'U9E1471687052027', '0f9e371b-e127-4d0b-a7e6-bb263c82860a-1687052028', 'Phuong1998', 'Phương phương', 'kulkun548@gmail.com', '0354259548', NULL, 2, 'public/uploads/users/42/user//kqcfZW1o9AJVI5M3H0bgMCUCQcr6DRAZ8MYylzmQ.jpg', 'public/uploads/users/42/user//VUCG8P2RRJuPocyNdSMkfGvlqOAH4DZWjGWXRzvb.jpg', NULL, NULL, '$2y$10$63andUoG43MlM0pLwgY.TOeBtXtZea43oQSD0hVmpiwL6E9s2Dg/K', 1, 1, NULL, 0, 'Qe1OoVHOgHmYyosamoscviPLWijWDxiYZUSekQuYXv02VLvrvxwaBfIP353R', '2023-06-18 01:33:48', '2023-06-18 13:47:27'),
(43, 'U348E01687053415', '7a027dc3-ebc0-430e-a0e3-b0689e9b267b-1687053415', 'Nguyenly67', 'Nguyễn kim', 'yosty1909@gmail.com', '0589546911', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$3eJDyeAocaxuQ2vqXiRVleZDw0sgWL.T4ra4Tpxa12CNYzf8qlyEq', 1, 1, NULL, 0, 'lKimlGB3V6TA94HBNM7VqdxXw6M0M2qYj9mBPQ1NF5D51zO5yADDKTb5rBkR', '2023-06-18 01:56:55', '2023-06-18 01:56:55'),
(44, 'U827CE1687056223', '99b53b2f-732c-4d7b-8ad0-ec8ab9ff22bf-1687056224', 'condt52', 'Dương Thượng Côn', 'condt521992@gmail.com', '0971413726', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$BPDOocbWxJlvslIaXMhZ3e3mT0wgW6qp0PKPrfeADGxTcU3VFKB4S', 1, 1, NULL, 0, 'Tbzpa3rYpk6PAe43guwUKmjEresHX58zAVsUUhJgv8xv4dq4zb3N7Go8a4lG', '2023-06-18 02:43:44', '2023-06-18 02:43:44'),
(45, 'UCF7251687062451', 'f70196e2-bbb7-471f-b63b-5556632568c8-1687062452', 'phguyen', 'Phương Uyên', 'daophuonguyen207@gmail.com', '0705826950', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$/ghMUqNoKrQZUgG0ZyUdBebCGXxs6WxHg48JTV1h3E3LdG.tt0zbq', 1, 1, NULL, 0, 'ETEyhdWIxZbQG9ult7jykE4JzP0FG63dv5rNof3OFTctfNnbqbqADsMnzivR', '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(46, 'U34CAF1687066551', 'f29e8b4f-59eb-4ddc-8515-eb9bfc47982d-1687066551', 'Kun duong', 'Dương thị huyền', 'kunduong93@gmail.com', '0969686493', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$CA72FwWKXOdK/PYX0b2b2uZEXRcqEUhrYGjWKDAGUS8.aafVQxvnO', 1, 1, NULL, 0, 'g8PYyYl8llwC2u0nEm6ndapukVVtWqqibumKdWtrwM7SYEowo3SCS4sytojo', '2023-06-18 05:35:51', '2023-06-18 05:35:51'),
(47, 'U6DBED1687067609', '89bed6a2-c5e2-4386-bd4f-9fc5de665095-1687067609', 'Thoura', 'Nguyễn Thị Thảo', 'nguyenthithao28082007@gmail.com', '0354331893', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$AYVX5NCfib6WmwsG/FhrveVDIqMfpiIvB4Ann8rqehrF7GMATJU02', 1, 1, NULL, 0, 'S7aOfH7g6PvcJ99uRi6uCQPGGfbslADRpghNFCahpcTb5mWqlt5aeoAwK3tJ', '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(48, 'U4B4801687068714', '4d17d747-5874-4ee7-88ea-204b4ad2091a-1687068714', 'maiii147', 'Nguyễn Hoàng Mai', 'maihoang1472006@gmail.com', '0816401286', NULL, 2, NULL, NULL, NULL, NULL, '$2y$10$76.IW3mb0.taH5q/yIYNO.uqkbnGObhyom7CwEVyhDJVdnyVJh4zm', 1, 1, NULL, 0, 'CHLU2XSBQxTR09vGFy6Jeut1vy13EVWott79qA1j5dBQLocF4Ma1GuUnkeie', '2023-06-18 06:11:54', '2023-06-18 06:13:01'),
(49, 'U023121687073111', '77c3a464-26cb-4881-b309-85b17fdae17d-1687073111', 'bonawinwin', 'LU ANH THU', 'nguyennguyen6827@gmail.com', '0365042553', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$9U/eiT3meyZlom5ENW61IeYlKXPwRbAzEyayPEul4vCv2V0ocI0J6', 1, 1, NULL, 0, 'YiS8u00moCvNZOoOK2bWmrrCgl8EjR9B1fMx3Ivq9pRIm6hmOMa9kv2KHpPH', '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(50, 'UDC7981687075842', '06a7a56d-df32-4343-a545-b6a4a9cfaf9a-1687075842', 'choumeomeo', 'choumeomeo', 'kieuthanhthao@gmail.com', '0935587061', NULL, 2, NULL, NULL, NULL, NULL, '$2y$10$RIsZeFTKyESh01GF8UTJSuuhWOO/YTeTonSkU1jX3yG1Vcj8eH74i', 1, 2, 'Choumeomeo', 0, '9Nnhp7Pg7up3dRteqCz5E1wrGKnDnEe6Fo56brafexK62DNoUXsvxIivDrjb', '2023-06-18 08:10:42', '2023-06-18 11:02:55'),
(51, 'U906701687081166', '25abc4e1-1c48-4139-897a-90e0b3105bf1-1687081166', 'nhanle221998', 'Lê Trọng Nhân', 'nhanletrongnhan1998@gmail.com', '0934470723', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$YQsNBKxcW/VoTXGTzaXWzuDII2h9skAebHQx5P2Z5hhcA3uZgRIPK', 1, 1, NULL, 0, 'XKJ0TErg0w2GVrEWXuIMt78QBmpfbtEgk6vsDWPr920SVg3zJdufIeEHaXHo', '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(52, 'UAC1801687092505', 'b58abea2-e291-4242-9b63-27df760fab3f-1687092505', 'tereerghe', 'Trần Thị Ánh Thơ', 'tranthianhtho123r@gmail.com', '0349852208', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$Pmg3YSty.A3NB/mI6aUJmutH6q4FeBpjScZF0hARJAJvwzV0TTWBG', 1, 1, NULL, 0, NULL, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(53, 'U1EC9E1687092739', 'e1acccbf-8fae-458a-8a65-77f3e19829c3-1687092740', 'tereergherr', 'Trần Thị Ánh Thơ', 'giatoctranvan@gmail.com', '0377367973', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$lMNcQulke9LN5F.5a.ByJ.ub3wmaHr4Tbz4kK6SB5eUYTu75iyE5a', 1, 1, NULL, 0, 'cxXN0qi6Fz5G0vprqXykXXJOG2X8NmM43CQ6HhlcaPopfZPHwj8bYyLHlRXM', '2023-06-18 12:52:20', '2023-06-18 12:52:20'),
(54, 'U56F171687093550', '374ab9ab-8fe6-4aee-a0b9-060fd46515a5-1687093550', 'Nguyentra', 'Nguyễn trà', 'nguyentra22052002@gmail.com', '0982460876', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$QxCOwoQuy8vax7S4psayquJm4kO2BFkOaay0KQELMWps1N/JhQG1.', 1, 1, NULL, 0, 'HKoXBZ9p8uCdQbWGwQWcLpEKxthegQhG0D9lNcxqI9cOmJQEYlX0wVHFoSxe', '2023-06-18 13:05:50', '2023-06-18 13:50:25'),
(55, 'U458B21687094885', 'd4459b2e-e02a-4192-a7bd-4f147a250311-1687094885', 'Nguyenthithutra', 'Nguyễn thu trà', 'trantuyet0179@gmail.com', '0379784435', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$BILoe6pvdyuK4r43S46Uo.sV8Qgu6DHwzFtbYjnGTo3OShBn65CCq', 1, 1, NULL, 0, NULL, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(56, 'UF3C791687095438', '92824961-f9e7-49cd-8e44-b3ebb04b0dfc-1687095438', 'Changdziyup', 'Trang Đài', 'trangdai16102006@gmail.com', '0937567962', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$VSuD.J8gMtZ9fqvjaGwNxerJ9oGTagNlngwI7Kjaf4V0.H9aRWNfq', 1, 1, NULL, 0, 'vCOLCJ3CpfhTspdm8v92joYIChmCKa3PfluWzSea0ZYqMYIbNcrpUbPdqhuV', '2023-06-18 13:37:18', '2023-06-18 13:37:18'),
(57, 'UB7B071687095928', '5199de1b-7894-43cf-8a54-70ee2b7ed6bf-1687095928', 'phuongchi', 'Nguyễn Huỳnh Phương Chi', 'khongbathanh@gmail.com', '0913934754', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$RMlKHXDpLauZ.eqAutgy7.MHSkJ.fK2mmX7pEl6otWFjJFMQ1lfhO', 1, 1, NULL, 0, 'yPMKQCoOHgMQjxIEfe50DwQ3iN2v36kUFeICAOuIIYEnKhpGgCqgsgdTO0eu', '2023-06-18 13:45:28', '2023-06-18 13:45:28'),
(58, 'U80DBA1687096360', '4be1a33c-e5cf-4a8b-8fcb-659b1a80e1a0-1687096360', 'm09_yym', 'Minh Anh', 'manhyym09@gmail.com', '0987741411', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$wisb4A.2.KpNr7pofOhRc.8ZLhTvycnA7eDr.N2BbKJBt2B10EquC', 1, 1, NULL, 0, 'DeBSfa4HjKOBpmV3TsvqBDVr4kVZWiNm2zqtE4Fig3tyOcauBSJFttjdZDq2', '2023-06-18 13:52:40', '2023-06-18 13:52:40'),
(59, 'UE573D1687097450', '8bc6bf06-deb9-4dd9-8766-a58d45ff0b24-1687097450', 'thanhhang', 'thanh hằng', 'thanhhang150525@gmail.com', '0337722078', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$fT/Eaw5QWNpvjO.brJZqIeo2GazDGintyHM4bpE1EHKAFJGDH3cjK', 1, 1, NULL, 0, 'v3miG5lbplGatrLeC6cg9r7iH14HtHyqidVxRVnQsGFu4CEK8Guc8famnDVy', '2023-06-18 14:10:50', '2023-06-18 14:10:50'),
(60, 'UFF6441687097751', '0015261d-07c0-4932-beb5-182ab6061066-1687097751', 'yunyuyu', 'nguyễn hồng vân', 'camcumcotiphi@gmail.com', '0348867772', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$sNDwOFsKmrgOro0IwWLrZO7yecKwAs9pzFAISh/oAkFHgQ3oh83Sq', 1, 1, NULL, 0, 'hiCiTk3pyjYEpEPB9iVE3Tb8hc3OzQe5IGwTk80cZG2N6ULcAweOdIMaTDZU', '2023-06-18 14:15:51', '2023-06-18 14:15:51'),
(61, 'UC6CA51687128220', 'b10f9c65-56ee-41ef-bd28-f128187a37e9-1687128220', 'Phuong1722', 'Nguyễn thu phương', 'phuongg1722@gmail.com', '0866767030', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$OJ9szhagP7Zl78sU9d.7uu0YnievPDW67MTyf3i8yCXYmlZa3i3Oi', 1, 1, NULL, 0, '9m16t2ZoBfJObf1lEnJzgP4av2AO4ildd4WkOKDNnqNewa1M3RT1wuBD1cw3', '2023-06-18 22:43:40', '2023-06-18 22:43:40'),
(62, 'U5BDB81687135772', '7a1a6ef6-74ee-47c6-9881-17e55bee265b-1687135773', 'Dao98', 'Đào Nguyễn', 'daonguyen081198@gmail.com', '0349517070', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$omLom8CkuAaKMDAvvk7na.s1pCkl8cueoj9s8n7Bu2jUJlhYPa9wW', 1, 1, NULL, 0, '7y4GS506DXKaMkkZpTvlvtQid21DTfhcXLuvfy4G49yZBZFc6SAQLS9xuv1R', '2023-06-19 00:49:33', '2023-06-19 00:49:33'),
(63, 'U631291687139237', '975ac142-19f1-4c21-9680-f7a681f84c3a-1687139237', 'Khoa', 'Khoa Phạm', 'bdkhoa31@gmail.com', '0349326948', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$g4ZaGD9eVp6QvgvrNQQP6eGxo3M25EAJp7iX9T2ngHxid1AOWVbae', 1, 1, NULL, 0, 'f5xrnSVkV0yzXtJzi1LVy51apMbWEZTCBggFahvVLMSd8sRLkYZj6EWGw3Or', '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(64, 'UD61031687139999', '8b530c65-e23b-498f-99f1-f0dcc0cfdc9b-1687140000', 'Rose Lara', 'Đại Lê', 'levandai1998h@gmail.com', '0398636464', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$/qebl8QoWQnN5Afo/bYSnuJKe.7kgMWoEW9O.TwKgaenxOr/y17iq', 1, 1, 'SandBox', 0, 'GC2wOGESQwmkpMmOd5mi0b7fJpBZoSdOVVPsbIeyG3DYTrOclAVWjjTRvftm', '2023-06-19 02:00:00', '2023-06-19 02:01:20'),
(65, 'UC481B1687143825', '1bc7fef0-bc81-42b9-9bc8-457e28e54547-1687143825', 'manh0801', 'Minh Anh', 'manh33958@gmail.com', '0917835980', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$yHzOxKEOLp0zCpbZ7w01Hem1qZi1laH/Roeqe.k4MuROP7ULkjiNG', 1, 1, NULL, 0, 'kktAg6tdimdlxnfCERdRPF0gpSNV1xSReDmdX719IcLWQcjs6qDQw6Bb79kY', '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(66, 'U00D001687144082', '91d24a28-9c29-4542-ac47-9dcc549109b4-1687144083', 'thuynguyen03102007', 'thùy nguyễn', 'tn1417644@gmail.com', '0399882159', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$7bHvJFGM2BPwXbBwb3PIi.p4bQG9OrTp6ub/pc2PNj3jtcTFTviaq', 1, 1, NULL, 0, '7q8EC4mnzfhINN0XGOHAkfO10JjSTqT6T73KIos5KcOmGvFllctew9LG90PX', '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(67, 'U8AA9D1687145112', '5e21d006-e8a9-41ee-a071-c1ff70b9bc3b-1687145112', 'NGHIEP', 'Trần văn nghiệp', 'vannghiep2606@gmail.com', '0377895207', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$17FjYoZHVKXuwsziFGTFnOX7m/z2SCNuRmfhw1RtTUTWXKW6W3GIq', 1, 1, NULL, 0, 'hmyx0IANf2huWPh8M1lJPzQ0db5sfFTjTrVDAI59Y74bkEsmOfGNZ4qtpj32', '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(68, 'UABE3B1687160360', 'e7cc351f-91cf-4eb7-a29b-4fbb287a24c4-1687160360', 'Long3326', 'Nguyễn Duy Long', 'vuthinh1801cc@gmail.com', '0367920994', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$Fsz1ZzYGEy49/p3kx0ig0eBawHaxOn2SW4kybDAOwCTLBTitFIc5G', 1, 1, NULL, 0, 'EHqOzvFs71AoUaBVSsHD8LfSwoXiDGmFsyuVStJFmrkuqofxG9P8RVcVmjnt', '2023-06-19 07:39:20', '2023-06-19 07:39:20'),
(69, 'UA0C381687237125', '2c5a08cc-ba22-47d3-980a-b42a193dfb5c-1687237125', 'buihung290399', 'Bùi Đình Hùng', 'hung290399@gmail.com', '0762345836', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$oS5hbmvxMb8DAQIE60vvketuxGmFnEQAbH1HbACiyw1QW0WUd2J6q', 1, 1, 'musens', 0, '2SMni2c4I7LTWLJyW9HYsSUXqpiik6QxmLBrn5i0Y8TPRavnPTBNTEkQjLAR', '2023-06-20 04:58:45', '2023-06-20 05:03:37'),
(70, 'UC950A1687239081', '43021f84-e8da-4bab-96be-e99c22867d15-1687239081', '0866480063', 'Dương c', 'tieuduong280720022002@gmail.com', '0866480063', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$jY7HeGlXzRE8CJOq1BWPyuj6lr1w4qiYnowiWuK7fQxCzvAZTXMAK', 1, 1, NULL, 0, 'UuSjGs2zqkufp5BlRs52tE1jrd7f1RsT5uiS2JihvmsdG77ENvHKNs7SuX1h', '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(71, 'U3C6CA1687241008', '429ed491-7dcc-4166-b2ca-30ceed6014db-1687241008', 'Yenvy0975', 'Huỳnh Thanh Kiệt', 'nhiv50914@gmail.com', '0359980382', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$NmlrrSZCS/diGS85vlrjGuBwTJQSxk/kDCpTLTQO8j4M9C31wkBWm', 1, 1, 'Uy tín chất lượng', 0, 'EkefkWowpxJ2Oouo5H6YsE12ZXg21Zh4CtPeSUj6mTijnSb6sJAYqObtFPse', '2023-06-20 06:03:28', '2023-06-20 06:14:32'),
(72, 'U8B65C1687246884', '28a4492a-c7e6-4a28-bc3c-806b80b34be6-1687246884', 'hondnghu', 'VU THI TIN', 'duongthutrang20v@gmail.com', '0344491590', NULL, 2, NULL, NULL, NULL, NULL, '$2y$10$43ekSVu/B7dvyGBQFm5tO.TS5R4/nPooqrkWPgeLK888ftCqmUrnm', 1, 1, NULL, 0, 'WDSt9IziDhU13W4sxJt4TjemTNNyc0aLE7R6clOvLhnGDvDZI9AI656HswFF', '2023-06-20 07:41:24', '2023-06-20 07:45:54'),
(73, 'UCA2941687254267', 'eca4ba1f-fa76-4411-b46a-945867960e6e-1687254267', 'truong', 'truong', 'truong@gmail.com', '0999999991', NULL, 1, 'public/uploads/users/73/user//tQKFpcJOFiMjmBM3Aa17KSfxIwTxz1ThDdDjgU47.jpg', NULL, NULL, NULL, '$2y$10$yI5yyxA8xrBbZblRT/Oot.TrFRfVd3jTlNzeEwYXHNc5OtTf7abYW', 1, 1, NULL, 0, '3z7g7XSfawm1VxPpfvGadS97s1xzkKmLayJsPTsWYRdyYsxLPTZARH9Mn1YB', '2023-06-20 09:44:27', '2023-06-20 10:15:10'),
(74, 'U77EA61687261743', '3754ef8c-8c17-483e-82e8-d6cdf7fe16a8-1687261743', 'heokeo134', 'Heo Kẹo', 'dungnt1304@gmail.com', '0906074144', NULL, 2, NULL, NULL, NULL, NULL, '$2y$10$7WQ6n3BekXMWYT15mBvgL.STq8WyUkEnrZaErzbB1VV/F9BguKXeu', 1, 1, 'Cosmetics Zuzu', 0, '9BYJ4eiImaVThTxTbzpyoiBdxHIjXoknJ5peBhyYDoMicKFLgBobfETe5lAn', '2023-06-20 11:49:03', '2023-06-20 11:50:56'),
(75, 'U891941687314893', '471a64c0-3f3b-422c-b2ef-3a41d6b2bed2-1687314893', 'liem6789', 'Liem Phan', 'fondacouchman971@gmail.com', '09661338866', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$DaTchHws3BLIYv3rrCr6J.V0eyTEzg.ZQ.ce9LW7/eO.Q3x5fdI9m', 1, 1, 'shop 113', 0, 'HQnuYrkUumHdfzZxxLQdrqO1gljDhWgruUymz42u7dFsqnjrMxgjoTqyTuRs', '2023-06-21 02:34:53', '2023-06-21 02:36:09'),
(76, 'UD5DAC1687349949', 'b000265d-e899-422b-a564-ab12d1ce8817-1687349949', 'VanAnhNg', 'Vân Anh', 'vanhoz1q@gmail.com', '0559891723', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$Vhv.oKlHyCRZRtIpa3Non.c6pOpWacUTCFOJqCBRM6yFVGdYwDpGW', 1, 1, NULL, 0, 'dqgA4xqHbM7OfktcHtS3xIMXT1KBp5EADB9XKw6FGITCNaZfUdg20zmqcCoc', '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(77, 'U578901687415921', '05d2f436-6be2-40fe-9aef-fc063cef3c32-1687415921', 'miinbox', 'Nguyễn Thị Bích Ngọc', 'miinbox.info@gmail.com', '0394920779', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$M36yYdAE08e115R8.XsPj.ygiKT/JzTwUT2LGa2wf5.vPTOsw7X/S', 1, 1, NULL, 0, '2ZdzHMYYPi6TEmIyu7L0ff9Nqc2vkH8Ao16C4vBHwtIQCbYljdXSuknjcDrU', '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(78, 'UE16571687512668', 'fd805d86-8ccc-4c34-916c-c40169015c0d-1687512668', 'thao', 'nguyễn thị thanh thảo', 'hothithithithi@gmail.com', '0907224256', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$/ipIGJ8FHGzR2qs524lbp.VDJgcLzQpEfJ3bMxsb3DKZkGe34jvLC', 1, 1, NULL, 0, '6EjUjySX7Ki1A4QRbCMXOTVpQBokdHJ1QtEmtgbUWb9FqLzMTx5ROKqKd9Eh', '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(79, 'U6DD251687516756', 'de34e68d-d00d-4de3-93c7-71eb2a524919-1687516756', 'chieclaub', 'cuong', 'tom.nuxi@gmail.com', '0977267777', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$yXEegRT0RliNv6Q6W4/7CemCMSDuQK13C6C3v6td6VFWLlfIRxyRa', 1, 1, NULL, 0, 'ZCJTQ4DhSeeauR5wmQh4W8hGfIbMZuJmnE6DoXmi7omm0aFf4DO2E5NebbrR', '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(80, 'U311181687612356', '229fb1e9-fbda-425b-9e7e-5126939b3977-1687612356', 'bgocanh08', 'Lê Thị Ngọc Ánh', 'ngocanh6277@gmail.vom', '0977752870', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$Pp2k2XOg7AJLAqvqh7McZuxcfd2DybgISoIDtgEn61UoeB3GwPQ92', 1, 1, NULL, 0, NULL, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(81, 'UEDBDF1687612693', 'e691dfd8-1609-429f-9ed6-33c03fb9cd4d-1687612693', 'ngocanh', 'Lê Thị Ngọc Ánh', 'ngocanh6277@gmail.com', '0977753870', NULL, 2, 'public/uploads/users/81/user//i9TYSoDTo9n80U8Bm2TaaBxd8yhmOi8oq3UZwXgP.jpg', NULL, NULL, NULL, '$2y$10$2bNTQo2WFoL02m4yDTC8rebAaZ/rLkfMCz5XPP7gTEEgH0eZyYJ9u', 1, 1, NULL, 0, 'FpVe17jnEkdrYWHGcxmVm1znts0nPc1RZ4aA4rY5x8IGQhd99gKnv4YG2jaU', '2023-06-24 13:18:13', '2023-06-25 05:29:47'),
(82, 'U6D8BA1687612886', '4a4f9862-2a9c-41f4-8a73-51181053a3b0-1687612886', 'Vphuong113', 'Viet phuong', 'nvietphuong1305@gmail.com', '0973136318', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$dPJW8T1cyRDI7KQ5hFYBZuuRN9Y0/mXgOMdDk3g.oGhzsXGWWshQC', 1, 1, NULL, 0, 'e9KjfZ8tGfk4U9B9kr8xDPWtokAJ9WIUmIlAHM5isEg0PL84ZPkj3mZEBqFZ', '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(83, 'U1E0601687767013', 'fafdf028-16e3-4e2d-a5ba-8e02d27fb9e5-1687767014', 'hongnhungne', 'Phùng Thị Hồng Nhung', 'phungthihongnhung16@gmail.con', '0855875093', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$N4bIk.LhYGq.4zg/d8W61eY1wpkYv8kDDLp9C8yIDd3pUhUteOuie', 1, 1, NULL, 0, NULL, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(84, 'U6F72C1687767377', '712fc67d-1fe7-4f79-b1df-812a8b224877-1687767377', 'hongnhungday', 'Phùng Thị Hồng Nhung', 'phungthihongnhung16@gmail.com', '0378591931', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$Ts8pb3uaJxIvtB9RnTF5juti1.xbluXao/.ZdpR0kqXVfswU2XkTa', 1, 1, NULL, 0, 'KcA7PxVnhiLh0ufNoBan9QsMhNADmSDNKIHTK8XI0HVXBGt0GywKiaJkkiGl', '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(85, 'UE6D411687769046', 'b97fba15-d8ac-43ca-b903-c4030302da3b-1687769046', 'hongday', 'Phùng Thị Hồng', 'phungthihong1708204@gmail.com', '0848749186', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$A55t4FrFgKSiYuH31v/8kO/CxJIHhDWgXB.s5R9cVnslSL7l4eAb.', 1, 1, NULL, 0, NULL, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(86, 'U1FAFC1687769139', 'ae6b9186-87c8-4d9e-bef4-4b85ac4a8924-1687769139', 'phunghong', 'Phùng Thị Hồng', 'phungthihong17082004@gmail.com', '0855196988', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$IL9NoOSHHe/pMeNVHbCVfO.Ka0CuZa9T8wj8UChFCfkvwsN1.9fZe', 1, 1, NULL, 0, 'IIhsu6ULB4hLzbF1NesJ8rH8g6f5eO9y0Dc2GpjeGa3F9SBVHQ2HjfSTmAyX', '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(87, 'U3184B1687772321', '2b40a4b6-541d-438f-991f-1c044e5b9610-1687772321', 'nhut2007', 'Lê Nhựt', 'lehoangnhut0944031306@gmail.com', '0944031306', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$mXoHnNBNjzaWIPTQxFmqsO7M1SDtlzSucyWxFlq0ZzFvQcQxP8MUG', 1, 1, NULL, 0, 'bnlSC9lhs3qKbV9FXibjDhD8WMAtKlyXhgTcH4XPSZymSkt2B6C8JBC6sP94', '2023-06-26 09:38:41', '2023-06-26 09:38:41'),
(88, 'U235391687773144', '69715310-a4d7-4b6d-9671-90a65972dcd7-1687773144', 'Datlbt', 'Lê Bá Tuấn Đạt', 'lebatuandatk9@gmail.com', '0977858536', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$Hl3lIs6PrQMvTgjCXIJIaOxypzH/DiGnCorOEMtNyTEPRAy3kp0xy', 1, 1, NULL, 0, 'ExnRtwkHzZFamotaiKGdTxqjUfuXjcVb80cDHd2ik9tqmEtfPpPxtY0VMswO', '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(89, 'U81C0B1687773395', 'b1ed20f8-eeff-4b6f-a31b-b2365da0712d-1687773395', 'Quynhnga', 'Tnga', 'tnga1812@gmail.com', '0925800613', NULL, 1, NULL, NULL, NULL, NULL, '$2y$10$8W.JhKZ2R69yoHNrtKUfHueROQswxcfDV.bnSvfWWxlNNtBQELDr2', 1, 1, NULL, 0, 'F2r6Gd4z2NfAV2GN8jgpRSE92x19pF2SnjBxWw0QDUdoPQO9STKd7FGcAs0H', '2023-06-26 09:56:35', '2023-06-26 09:56:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_bank_accounts`
--

CREATE TABLE `user_bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_bank_accounts`
--

INSERT INTO `user_bank_accounts` (`id`, `user_id`, `bank_name`, `account_name`, `account_number`, `created_at`, `updated_at`) VALUES
(1, 4, 'vietinbank', 'trần tuấn anh', '105871717269', '2023-06-14 11:57:13', '2023-06-14 11:57:13'),
(2, 10, 'Mb bank', 'Trần thanh trúc', '0026148599999', '2023-06-15 05:41:09', '2023-06-15 05:41:09'),
(3, 17, 'Mb bank', 'Vũ Thị Thu', '2601122007', '2023-06-15 13:55:26', '2023-06-15 13:55:26'),
(4, 23, 'MB Bank', 'NGUYEN NGOC KHANH', '000031039999', '2023-06-17 03:59:29', '2023-06-17 03:59:29'),
(5, 42, 'Viettinbank', 'DOAN HA PHUONG', '102868935320', '2023-06-18 13:43:11', '2023-06-18 13:43:11'),
(6, 67, 'MSB', 'TRAN VAN NGHIEP', '37201013952667', '2023-06-19 03:47:03', '2023-06-19 03:47:03'),
(7, 71, 'Mb bank', 'Huỳnh Thanh Kiệt', '0359980382', '2023-06-20 06:09:10', '2023-06-20 06:09:10'),
(8, 72, 'MBBANK', 'VU THI TIN', '0344491590', '2023-06-20 07:45:34', '2023-06-20 07:45:34'),
(9, 5, 'Agribank', 'NGUYEN THI TUYET NGAN', '6110205327920', '2023-06-23 04:45:30', '2023-06-23 04:45:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_blacklist_jobs`
--

CREATE TABLE `user_blacklist_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `expired_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_blacklist_jobs`
--

INSERT INTO `user_blacklist_jobs` (`id`, `shop_id`, `worker_id`, `job_id`, `expired_at`, `created_at`, `updated_at`) VALUES
(9, 1, 19, 47, NULL, '2023-06-17 10:38:32', '2023-06-17 10:38:32'),
(10, 1, 27, 46, NULL, '2023-06-17 11:06:41', '2023-06-17 11:06:41'),
(12, 1, 31, 44, NULL, '2023-06-17 12:19:09', '2023-06-17 12:19:09'),
(13, 1, 33, 43, NULL, '2023-06-17 14:03:03', '2023-06-17 14:03:03'),
(17, 1, 41, 50, NULL, '2023-06-18 01:27:53', '2023-06-18 01:27:53'),
(20, 5, 53, 56, NULL, '2023-06-18 13:49:17', '2023-06-18 13:49:17'),
(27, 1, 20, 65, NULL, '2023-06-18 23:59:46', '2023-06-18 23:59:46'),
(28, 1, 62, 68, NULL, '2023-06-19 00:49:53', '2023-06-19 00:49:53'),
(29, 1, 57, 67, NULL, '2023-06-19 02:04:47', '2023-06-19 02:04:47'),
(30, 1, 66, 66, NULL, '2023-06-19 03:10:07', '2023-06-19 03:10:07'),
(31, 1, 60, 90, NULL, '2023-06-26 08:08:41', '2023-06-26 08:08:41'),
(32, 1, 84, 89, NULL, '2023-06-26 08:16:41', '2023-06-26 08:16:41'),
(33, 1, 86, 88, NULL, '2023-06-26 08:46:02', '2023-06-26 08:46:02'),
(35, 1, 87, 81, NULL, '2023-06-26 09:39:44', '2023-06-26 09:39:44'),
(36, 1, 44, 87, NULL, '2023-06-26 09:43:38', '2023-06-26 09:43:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `facebook` text COLLATE utf8mb4_unicode_ci,
  `zalo` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_contacts`
--

INSERT INTO `user_contacts` (`id`, `user_id`, `address`, `facebook`, `zalo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Gò Vấp , Hồ Chí Minh', NULL, NULL, '2023-06-14 10:35:15', '2023-06-14 13:59:39'),
(2, 2, NULL, NULL, NULL, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(3, 3, NULL, NULL, NULL, '2023-06-14 11:27:48', '2023-06-14 11:27:48'),
(4, 4, 'nam dương nam trực nam định', 'https://www.facebook.com/profile.php?id=100009883412739', '0988485279', '2023-06-14 11:31:17', '2023-06-14 11:56:02'),
(5, 5, NULL, NULL, NULL, '2023-06-14 12:13:59', '2023-06-14 12:13:59'),
(6, 6, NULL, NULL, NULL, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(7, 7, '41 Dương Đức Hiền F. Tây Thạnh Q. Tân Phú HCM', 'fb.com/nguyenvantien.net', '0362707879', '2023-06-14 13:48:20', '2023-06-14 13:54:55'),
(8, 8, NULL, NULL, NULL, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(9, 9, NULL, NULL, NULL, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(10, 10, 'Ấp 5 xã đức hoà đông đức hoà long an', 'https://www.facebook.com/profile.php?id=100090177999024&mibextid=LQQJ4d', '0964992832', '2023-06-14 15:03:55', '2023-06-15 05:40:37'),
(11, 11, NULL, NULL, NULL, '2023-06-14 15:38:19', '2023-06-14 15:38:19'),
(12, 12, NULL, NULL, '0982430005', '2023-06-15 02:36:55', '2023-06-15 03:22:40'),
(13, 13, 'Khóm 2 thị trấn Cái Nước huyện Cái Nước tỉnh Cà Mau', NULL, '0889966843', '2023-06-15 05:40:26', '2023-06-15 05:41:49'),
(14, 14, NULL, NULL, NULL, '2023-06-15 07:28:39', '2023-06-15 07:28:39'),
(15, 15, NULL, NULL, NULL, '2023-06-15 10:24:26', '2023-06-15 10:24:26'),
(16, 16, NULL, NULL, NULL, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(17, 17, NULL, NULL, NULL, '2023-06-15 13:53:59', '2023-06-15 13:53:59'),
(18, 18, NULL, NULL, NULL, '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(19, 19, NULL, NULL, NULL, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(20, 20, NULL, NULL, NULL, '2023-06-15 21:00:47', '2023-06-15 21:00:47'),
(21, 21, NULL, NULL, NULL, '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(22, 22, NULL, NULL, NULL, '2023-06-16 06:31:55', '2023-06-16 06:31:55'),
(23, 23, NULL, NULL, NULL, '2023-06-16 15:22:20', '2023-06-16 15:22:20'),
(24, 24, NULL, NULL, NULL, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(25, 25, NULL, NULL, NULL, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(26, 26, NULL, NULL, NULL, '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(27, 27, NULL, NULL, NULL, '2023-06-17 11:06:27', '2023-06-17 11:06:27'),
(28, 28, NULL, NULL, NULL, '2023-06-17 11:16:55', '2023-06-17 11:16:55'),
(29, 29, NULL, NULL, NULL, '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(30, 30, NULL, NULL, NULL, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(31, 31, NULL, NULL, NULL, '2023-06-17 12:17:54', '2023-06-17 12:17:54'),
(32, 32, NULL, NULL, NULL, '2023-06-17 13:01:46', '2023-06-17 13:01:46'),
(33, 33, NULL, NULL, NULL, '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(34, 34, NULL, NULL, NULL, '2023-06-17 14:10:46', '2023-06-17 14:10:46'),
(35, 35, NULL, NULL, NULL, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(36, 36, NULL, NULL, '0382282931', '2023-06-17 16:49:21', '2023-06-17 16:50:09'),
(37, 37, NULL, NULL, NULL, '2023-06-17 16:58:20', '2023-06-17 16:58:20'),
(38, 38, 'Thủ Đức', NULL, '0382204457', '2023-06-17 23:21:33', '2023-06-20 08:43:27'),
(39, 39, NULL, NULL, NULL, '2023-06-18 00:17:38', '2023-06-18 00:17:38'),
(40, 40, NULL, NULL, NULL, '2023-06-18 00:42:11', '2023-06-18 00:42:11'),
(41, 41, NULL, NULL, NULL, '2023-06-18 01:26:52', '2023-06-18 01:26:52'),
(42, 42, NULL, NULL, '0354259448', '2023-06-18 01:33:48', '2023-06-18 13:47:40'),
(43, 43, NULL, NULL, NULL, '2023-06-18 01:56:55', '2023-06-18 01:56:55'),
(44, 44, NULL, NULL, NULL, '2023-06-18 02:43:44', '2023-06-18 02:43:44'),
(45, 45, NULL, NULL, NULL, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(46, 46, NULL, NULL, NULL, '2023-06-18 05:35:51', '2023-06-18 05:35:51'),
(47, 47, NULL, NULL, NULL, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(48, 48, NULL, NULL, '0816401286', '2023-06-18 06:11:54', '2023-06-18 06:13:12'),
(49, 49, NULL, NULL, NULL, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(50, 50, NULL, NULL, NULL, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(51, 51, NULL, NULL, NULL, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(52, 52, NULL, NULL, NULL, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(53, 53, '43/2P, Pham Van Chieu, Phường 14, Gò Vấp, Thành phố Hồ Chí Minh', NULL, NULL, '2023-06-18 12:52:20', '2023-06-18 13:45:41'),
(54, 54, NULL, NULL, NULL, '2023-06-18 13:05:50', '2023-06-18 13:05:50'),
(55, 55, NULL, NULL, NULL, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(56, 56, NULL, NULL, NULL, '2023-06-18 13:37:18', '2023-06-18 13:37:18'),
(57, 57, NULL, NULL, NULL, '2023-06-18 13:45:28', '2023-06-18 13:45:28'),
(58, 58, NULL, NULL, NULL, '2023-06-18 13:52:40', '2023-06-18 13:52:40'),
(59, 59, NULL, NULL, NULL, '2023-06-18 14:10:50', '2023-06-18 14:10:50'),
(60, 60, NULL, NULL, NULL, '2023-06-18 14:15:51', '2023-06-18 14:15:51'),
(61, 61, NULL, NULL, NULL, '2023-06-18 22:43:40', '2023-06-18 22:43:40'),
(62, 62, NULL, NULL, NULL, '2023-06-19 00:49:33', '2023-06-19 00:49:33'),
(63, 63, NULL, NULL, NULL, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(64, 64, NULL, NULL, NULL, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(65, 65, NULL, NULL, NULL, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(66, 66, NULL, NULL, NULL, '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(67, 67, NULL, NULL, NULL, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(68, 68, NULL, NULL, NULL, '2023-06-19 07:39:20', '2023-06-19 07:39:20'),
(69, 69, 's2.07 Vinhomes ocean park, đa tốn, gia lâm, hà nội', 'www.facebook.com/bui.hung2903', '0329660495', '2023-06-20 04:58:45', '2023-06-20 05:03:23'),
(70, 70, NULL, NULL, NULL, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(71, 71, NULL, NULL, NULL, '2023-06-20 06:03:28', '2023-06-20 06:03:28'),
(72, 72, NULL, NULL, NULL, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(73, 73, NULL, NULL, NULL, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(74, 74, NULL, NULL, NULL, '2023-06-20 11:49:03', '2023-06-20 11:49:03'),
(75, 75, NULL, NULL, NULL, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(76, 76, NULL, NULL, NULL, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(77, 77, NULL, NULL, NULL, '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(78, 78, NULL, NULL, NULL, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(79, 79, NULL, NULL, NULL, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(80, 80, NULL, NULL, NULL, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(81, 81, 'Hồ Chí Minh', 'https://www.facebook.com/muoibeo.m?mibextid=LQQJ4d', '0977752870', '2023-06-24 13:18:13', '2023-06-24 13:29:49'),
(82, 82, NULL, NULL, NULL, '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(83, 83, NULL, NULL, NULL, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(84, 84, NULL, NULL, NULL, '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(85, 85, NULL, NULL, NULL, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(86, 86, NULL, NULL, NULL, '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(87, 87, NULL, NULL, NULL, '2023-06-26 09:38:41', '2023-06-26 09:38:41'),
(88, 88, NULL, NULL, NULL, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(89, 89, NULL, NULL, NULL, '2023-06-26 09:56:35', '2023-06-26 09:56:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 5148225, '2023-06-13 20:35:15', '2023-06-26 10:23:49'),
(2, 2, 0, '2023-06-14 11:24:01', '2023-06-14 11:24:01'),
(3, 3, 7875, '2023-06-14 11:27:48', '2023-06-14 12:36:36'),
(4, 4, 7875, '2023-06-14 11:31:17', '2023-06-14 12:49:45'),
(5, 5, 0, '2023-06-13 22:13:59', '2023-06-23 04:46:06'),
(6, 6, 0, '2023-06-14 13:11:04', '2023-06-14 13:11:04'),
(7, 7, 0, '2023-06-14 13:48:20', '2023-06-14 13:48:20'),
(8, 8, 0, '2023-06-14 13:54:36', '2023-06-14 13:54:36'),
(9, 9, 0, '2023-06-14 14:33:41', '2023-06-14 14:33:41'),
(10, 10, 0, '2023-06-14 15:03:55', '2023-06-14 15:03:55'),
(11, 11, 0, '2023-06-14 15:38:19', '2023-06-14 15:38:19'),
(12, 12, 0, '2023-06-15 02:36:55', '2023-06-15 02:36:55'),
(13, 13, 0, '2023-06-15 05:40:26', '2023-06-15 05:40:26'),
(14, 14, 85500, '2023-06-15 07:28:39', '2023-06-15 07:49:08'),
(15, 15, 319222220, '2023-06-12 12:24:26', '2023-06-12 12:24:26'),
(16, 16, 0, '2023-06-15 11:36:29', '2023-06-15 11:36:29'),
(17, 17, 0, '2023-06-15 13:53:59', '2023-06-15 13:53:59'),
(18, 18, 0, '2023-06-15 15:03:13', '2023-06-15 15:03:13'),
(19, 19, 0, '2023-06-15 19:27:35', '2023-06-15 19:27:35'),
(20, 20, 0, '2023-06-15 21:00:47', '2023-06-15 21:00:47'),
(21, 21, 0, '2023-06-15 22:57:52', '2023-06-15 22:57:52'),
(22, 22, 0, '2023-06-16 06:31:55', '2023-06-16 06:31:55'),
(23, 23, 0, '2023-06-16 15:22:20', '2023-06-16 15:22:20'),
(24, 24, 0, '2023-06-17 07:49:01', '2023-06-17 07:49:01'),
(25, 25, 0, '2023-06-17 10:31:04', '2023-06-17 10:31:04'),
(26, 26, 0, '2023-06-17 10:34:46', '2023-06-17 10:34:46'),
(27, 27, 0, '2023-06-17 11:06:28', '2023-06-17 11:06:28'),
(28, 28, 7875, '2023-06-17 11:16:55', '2023-06-18 13:26:37'),
(29, 29, 0, '2023-06-17 11:53:13', '2023-06-17 11:53:13'),
(30, 30, 0, '2023-06-17 11:53:50', '2023-06-17 11:53:50'),
(31, 31, 0, '2023-06-17 12:17:54', '2023-06-17 12:17:54'),
(32, 32, 0, '2023-06-17 13:01:46', '2023-06-17 13:01:46'),
(33, 33, 0, '2023-06-17 14:02:39', '2023-06-17 14:02:39'),
(34, 34, 0, '2023-06-17 14:10:46', '2023-06-17 14:10:46'),
(35, 35, 0, '2023-06-17 15:43:06', '2023-06-17 15:43:06'),
(36, 36, 0, '2023-06-17 16:49:21', '2023-06-17 16:49:21'),
(37, 37, 0, '2023-06-17 16:58:20', '2023-06-17 16:58:20'),
(38, 38, 7875, '2023-06-17 23:21:33', '2023-06-18 14:12:29'),
(39, 39, 7875, '2023-06-18 00:17:38', '2023-06-18 14:58:36'),
(40, 40, 7875, '2023-06-18 00:42:11', '2023-06-18 13:32:55'),
(41, 41, 0, '2023-06-18 01:26:52', '2023-06-18 01:26:52'),
(42, 42, 7875, '2023-06-18 01:33:48', '2023-06-18 13:40:57'),
(43, 43, 7875, '2023-06-18 01:56:55', '2023-06-18 13:19:09'),
(44, 44, 0, '2023-06-18 02:43:44', '2023-06-18 02:43:44'),
(45, 45, 0, '2023-06-18 04:27:32', '2023-06-18 04:27:32'),
(46, 46, 0, '2023-06-18 05:35:51', '2023-06-18 05:35:51'),
(47, 47, 0, '2023-06-18 05:53:29', '2023-06-18 05:53:29'),
(48, 48, 0, '2023-06-18 06:11:54', '2023-06-18 06:11:54'),
(49, 49, 0, '2023-06-18 07:25:11', '2023-06-18 07:25:11'),
(50, 50, 0, '2023-06-18 08:10:42', '2023-06-18 08:10:42'),
(51, 51, 0, '2023-06-18 09:39:26', '2023-06-18 09:39:26'),
(52, 52, 0, '2023-06-18 12:48:25', '2023-06-18 12:48:25'),
(53, 53, 0, '2023-06-18 12:52:20', '2023-06-18 12:52:20'),
(54, 54, 0, '2023-06-18 13:05:50', '2023-06-18 13:05:50'),
(55, 55, 0, '2023-06-18 13:28:05', '2023-06-18 13:28:05'),
(56, 56, 0, '2023-06-18 13:37:18', '2023-06-18 13:37:18'),
(57, 57, 0, '2023-06-18 13:45:28', '2023-06-18 13:45:28'),
(58, 58, 7875, '2023-06-18 13:52:40', '2023-06-20 20:46:14'),
(59, 59, 7875, '2023-06-18 14:10:50', '2023-06-21 07:56:30'),
(60, 60, 0, '2023-06-18 14:15:51', '2023-06-18 14:15:51'),
(61, 61, 0, '2023-06-18 22:43:40', '2023-06-18 22:43:40'),
(62, 62, 0, '2023-06-19 00:49:33', '2023-06-19 00:49:33'),
(63, 63, 0, '2023-06-19 01:47:17', '2023-06-19 01:47:17'),
(64, 64, 0, '2023-06-19 02:00:00', '2023-06-19 02:00:00'),
(65, 65, 0, '2023-06-19 03:03:45', '2023-06-19 03:03:45'),
(66, 66, 0, '2023-06-19 03:08:03', '2023-06-19 03:08:03'),
(67, 67, 0, '2023-06-19 03:25:12', '2023-06-19 03:25:12'),
(68, 68, 0, '2023-06-19 07:39:20', '2023-06-19 07:39:20'),
(69, 69, 0, '2023-06-20 04:58:45', '2023-06-20 04:58:45'),
(70, 70, 0, '2023-06-20 05:31:21', '2023-06-20 05:31:21'),
(71, 71, 0, '2023-06-20 06:03:28', '2023-06-20 06:03:28'),
(72, 72, 0, '2023-06-20 07:41:24', '2023-06-20 07:41:24'),
(73, 73, 0, '2023-06-20 09:44:27', '2023-06-20 09:44:27'),
(74, 74, 0, '2023-06-20 11:49:03', '2023-06-20 11:49:03'),
(75, 75, 0, '2023-06-21 02:34:53', '2023-06-21 02:34:53'),
(76, 76, 0, '2023-06-21 12:19:09', '2023-06-21 12:19:09'),
(77, 77, 0, '2023-06-22 06:38:41', '2023-06-22 06:38:41'),
(78, 78, 0, '2023-06-23 09:31:08', '2023-06-23 09:31:08'),
(79, 79, 0, '2023-06-23 10:39:16', '2023-06-23 10:39:16'),
(80, 80, 0, '2023-06-24 13:12:36', '2023-06-24 13:12:36'),
(81, 81, 0, '2023-06-24 13:18:13', '2023-06-24 13:18:13'),
(82, 82, 0, '2023-06-24 13:21:26', '2023-06-24 13:21:26'),
(83, 83, 0, '2023-06-26 08:10:14', '2023-06-26 08:10:14'),
(84, 84, 0, '2023-06-26 08:16:17', '2023-06-26 08:16:17'),
(85, 85, 0, '2023-06-26 08:44:06', '2023-06-26 08:44:06'),
(86, 86, 0, '2023-06-26 08:45:39', '2023-06-26 08:45:39'),
(87, 87, 0, '2023-06-26 09:38:41', '2023-06-26 09:38:41'),
(88, 88, 0, '2023-06-26 09:52:24', '2023-06-26 09:52:24'),
(89, 89, 0, '2023-06-26 09:56:35', '2023-06-26 09:56:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wards`
--

CREATE TABLE `wards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_code` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `name` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codename` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `withdrawns`
--

CREATE TABLE `withdrawns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `fee` int(11) DEFAULT NULL,
  `license` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `withdrawns`
--

INSERT INTO `withdrawns` (`id`, `user_id`, `admin_id`, `bank_id`, `code`, `amount`, `fee`, `license`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, 9, 'Txn79245CE770EC4', 157375, 2000, NULL, 0, NULL, '2023-06-23 04:46:06', '2023-06-23 04:46:06');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_options_slug_unique` (`slug`),
  ADD KEY `attribute_options_attribute_id_foreign` (`attribute_id`);

--
-- Chỉ mục cho bảng `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deposits_code_unique` (`code`),
  ADD KEY `deposits_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `districts_code_unique` (`code`),
  ADD KEY `districts_province_code_index` (`province_code`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jobs_code_unique` (`code`),
  ADD UNIQUE KEY `jobs_slug_unique` (`slug`),
  ADD KEY `jobs_shop_id_foreign` (`shop_id`);

--
-- Chỉ mục cho bảng `job_attribute_options`
--
ALTER TABLE `job_attribute_options`
  ADD PRIMARY KEY (`job_id`,`attribute_option_id`),
  ADD KEY `job_attribute_options_attribute_option_id_foreign` (`attribute_option_id`);

--
-- Chỉ mục cho bảng `job_details`
--
ALTER TABLE `job_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_details_job_id_foreign` (`job_id`);

--
-- Chỉ mục cho bảng `job_histories`
--
ALTER TABLE `job_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_histories_job_id_foreign` (`job_id`);

--
-- Chỉ mục cho bảng `job_status_new`
--
ALTER TABLE `job_status_new`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_status_new_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `log_vnpay`
--
ALTER TABLE `log_vnpay`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `provinces_code_unique` (`code`);

--
-- Chỉ mục cho bảng `queue_failed_jobs`
--
ALTER TABLE `queue_failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `queue_failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `queue_jobs`
--
ALTER TABLE `queue_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue_jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `report_jobs`
--
ALTER TABLE `report_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_jobs_user_id_foreign` (`user_id`),
  ADD KEY `report_jobs_job_id_foreign` (`job_id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_author_id_foreign` (`author_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_setting_key_unique` (`setting_key`);

--
-- Chỉ mục cho bảng `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_code_unique` (`code`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_slug_unique` (`slug`),
  ADD UNIQUE KEY `users_name_shop_unique` (`name_shop`);

--
-- Chỉ mục cho bảng `user_bank_accounts`
--
ALTER TABLE `user_bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_bank_accounts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `user_blacklist_jobs`
--
ALTER TABLE `user_blacklist_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_blacklist_jobs_shop_id_foreign` (`shop_id`),
  ADD KEY `user_blacklist_jobs_worker_id_foreign` (`worker_id`),
  ADD KEY `user_blacklist_jobs_job_id_foreign` (`job_id`);

--
-- Chỉ mục cho bảng `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_contacts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wards_code_unique` (`code`),
  ADD KEY `wards_district_code_index` (`district_code`);

--
-- Chỉ mục cho bảng `withdrawns`
--
ALTER TABLE `withdrawns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `withdrawns_code_unique` (`code`),
  ADD KEY `withdrawns_user_id_foreign` (`user_id`),
  ADD KEY `withdrawns_admin_id_foreign` (`admin_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `job_details`
--
ALTER TABLE `job_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=777;

--
-- AUTO_INCREMENT cho bảng `job_histories`
--
ALTER TABLE `job_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT cho bảng `job_status_new`
--
ALTER TABLE `job_status_new`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1158;

--
-- AUTO_INCREMENT cho bảng `log_vnpay`
--
ALTER TABLE `log_vnpay`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `queue_failed_jobs`
--
ALTER TABLE `queue_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `queue_jobs`
--
ALTER TABLE `queue_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `report_jobs`
--
ALTER TABLE `report_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `user_bank_accounts`
--
ALTER TABLE `user_bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user_blacklist_jobs`
--
ALTER TABLE `user_blacklist_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `wards`
--
ALTER TABLE `wards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `withdrawns`
--
ALTER TABLE `withdrawns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `job_attribute_options`
--
ALTER TABLE `job_attribute_options`
  ADD CONSTRAINT `job_attribute_options_attribute_option_id_foreign` FOREIGN KEY (`attribute_option_id`) REFERENCES `attribute_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_attribute_options_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `job_details`
--
ALTER TABLE `job_details`
  ADD CONSTRAINT `job_details_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `job_histories`
--
ALTER TABLE `job_histories`
  ADD CONSTRAINT `job_histories_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `job_status_new`
--
ALTER TABLE `job_status_new`
  ADD CONSTRAINT `job_status_new_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `report_jobs`
--
ALTER TABLE `report_jobs`
  ADD CONSTRAINT `report_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `report_jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `user_bank_accounts`
--
ALTER TABLE `user_bank_accounts`
  ADD CONSTRAINT `user_bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `user_blacklist_jobs`
--
ALTER TABLE `user_blacklist_jobs`
  ADD CONSTRAINT `user_blacklist_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_blacklist_jobs_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_blacklist_jobs_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD CONSTRAINT `user_contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `withdrawns`
--
ALTER TABLE `withdrawns`
  ADD CONSTRAINT `withdrawns_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `withdrawns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

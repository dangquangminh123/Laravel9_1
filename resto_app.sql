-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2022 lúc 06:24 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `resto_app`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(19, 'Bò Bít Tết', 'Các Món Bò Bít Tết Trong Nhà Hàng', 'public/categories/rBkmDBy527.jpg', '2022-10-09 05:00:30', '2022-10-29 04:27:12'),
(20, 'Ca Ri', 'Các loại cari hiện có trong nhà hàng', 'public/categories/4TdiMBdFzB.jpg', '2022-10-09 05:00:52', '2022-10-29 04:26:20'),
(21, 'Lẩu', 'Các Loại Lẩu Trong Nhà', 'public/categories/dmDymm113N.jpg', '2022-10-09 05:01:12', '2022-10-29 04:34:56'),
(22, 'Súp', 'Các Loại Súp Hiện Có Trong Nhà Hàng', 'public/categories/NYBSEXojZN.jpg', '2022-10-09 05:01:46', '2022-10-29 04:35:04'),
(24, 'Món Tráng Miệng', 'Các Loại Tráng Miệng Hiện có trong nhà hàng', 'public/categories/4ztXuvoKLd.jpg', '2022-10-09 05:02:39', '2022-10-29 04:35:11'),
(25, 'Thức Uống', 'Các loại thức uống tốt cho sức khỏe trong nhà hàng', 'public/categories/sjbqjlgun9.jpg', '2022-10-09 05:25:07', '2022-10-29 04:35:21'),
(26, 'Món Nướng', 'Các Loại ẩm thực nướng', 'public/categories/uz7HNt0yHW.jpg', '2022-10-09 06:10:43', '2022-10-29 04:51:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(23, 'Bánh kem socola', 'Bánh Kem Socola Tráng Miệng với vị kem hòa trộn sôcla', 'public/menus/IiO6o6SFA7153VT1RhytFMJPtCrGnRBYCGnBMEkj.jpg', '38.00', 24, NULL, NULL, NULL),
(24, 'Bánh mềm pudding', 'Bánh mềm pudding còn được gọi là xúc xích nhỏ . Một số loại pudding phổ biến là: pudding sữa, pudding trứng, pudding xoài, pudding trà xanh, pudding sữa dâu…', 'public/menus/RzQiqjc7x312zGJouFfySXhLGeoZbpA1SyF24FFX.jpg', '35.00', 24, NULL, NULL, NULL),
(25, 'Cheesecake – Bánh phô mai', 'Cheesecake là một món bánh tráng miệng xuất xứ từ Hy Lạp. Đặc trưng của loại bánh này là lớp nhân phô mai mềm và tươi mát.', 'public/menus/16mJ2OTC7odJpCZy7aNrjFIXCWRYm5GX8ldW55ec.jpg', '36.00', 24, NULL, NULL, NULL),
(26, 'Trà đào cam sành', 'Trà ĐàoCam Sành thơm mát', 'public/menus/lkuH7q1GvRV0Y8rnDZcICKTnYE2IkUkwXemMe4Kh.png', '25.00', 25, NULL, NULL, NULL),
(27, 'Kem Soda dâu tay', 'Kem sô đa vị dâu tay nhẹ nhàng thanh mát', 'public/menus/2gMXiaBqpTVKlHB2CPzOAzlZ5dCvYkRWUMEvBAdT.jpg', '37.00', 25, NULL, NULL, NULL),
(28, 'Mijoto dâu tay', 'Thức uống Mijoto vị dâu tay', 'public/menus/cWKsYSTLSqHC26Zh3P2eQPlVfUfrt0OMl7TmNl5I.jpg', '39.00', 25, NULL, NULL, NULL),
(29, 'Bánh Kem Phô Mai', 'Bánh Kem Kèm vị phô mai', 'public/menus/AbbZVdJ781jNSoOD8dmEO3YHge9up0FhFXTq5gES.jpg', '22.00', 24, NULL, NULL, NULL),
(30, 'mojito Soda nho dâu', 'Mojito so da vị dâu tây', 'public/menus/Acep0Gkijy3d6qy0gETD18DtseoHWTgJObkGHmPs.jpg', '37.00', 25, NULL, NULL, NULL),
(31, 'Soda Ý', 'Soda Ý', 'public/menus/UytrllZq8K3malcNJ4kwIEuEX3q03qjwRNQK27KL.jpg', '38.00', 25, NULL, NULL, NULL),
(32, 'soda trà cam', 'soda trà cam', 'public/menus/uAemGYRMSU1brOzK533IWaX5UjPskAVg4psGCzoN.jpg', '32.00', 25, NULL, NULL, NULL),
(33, 'Trà Sữa Dâu Tây', 'Trà Sữa Vị Dâu Tây', 'public/menus/m0xNPq5FkMBlzcbXuxEgHYkVhOVuewymLiASGN5w.jpg', '34.00', 25, NULL, NULL, NULL),
(34, 'Bánh Flan sữa tươi', 'Bánh Flan kết hợp với vị sữa tươi', 'public/menus/L4ZmFUs9iwFU2sVCJGbuxCL18GeAkaXnzkHuEyOz.jpg', '27.00', 24, NULL, NULL, NULL),
(35, 'Bánh Kem Sầu Riêng', 'Bánh Kem Vị Sầu Riêng', 'public/menus/xZNgVSnsXoQuynkRdR0TOaHfjfUsaYj46uJ7vtE8.jpg', '37.00', 24, NULL, NULL, NULL),
(36, 'beef_steak Mỹ', 'Beef steak kiểu mỹ', 'public/menus/ZEx9NlQQIgXl1sPjGkP6NhCzLwhhk119gk1WkGKC.jpg', '45.00', 19, NULL, NULL, NULL),
(38, 'beef sunday roast Anh', 'Sunday Roast được xem là một trong những món ăn truyền thống và kinh điển của người Anh.', 'public/menus/q80FBk96BLolO4nQXeOay2IaL9nZWnenVCLo04z3.jpg', '43.00', 19, NULL, NULL, NULL),
(39, 'Carbonnade Flamande Bỉ', 'Đơn giản trong cách chế biến nhưng lại độc đáo ở hương vị chua và đắng lạ miệng', 'public/menus/oDNfmZU1Ep8fmHiV0BNl23uWIaJHcQBaJxARkukh.jpg', '38.00', 19, NULL, NULL, NULL),
(40, 'Wiener Schnitzrl beef Áo', 'Two Slices of Veal Wiener Schnitzel, served with Potato Salad, Sauerkraut, Rotkraut, Green Salad', 'public/menus/Ze4tuHUrd661NLzS4g6yohatOICsaXMSmPZEepca.jpg', '20.00', 19, NULL, NULL, NULL),
(41, 'Cá Nướng', 'Cá nướng hòa trộn xã hành', 'public/menus/VCTx8uj2H5TvrqDYZFoARXezpYAsnbm9nllyUlv0.jpg', '40.00', 26, NULL, NULL, NULL),
(42, 'bò nằm nướng', 'Bò Nằm Nướng', 'public/menus/GKTqpfJ34ZV6tk5tQTaiTbRrsvXnJBFYgOCQyqmr.jpg', '52.00', 26, NULL, NULL, NULL),
(43, 'Gà Nướng', 'Gà nướng nguyên con với muối ớt', 'public/menus/3ED4BQUPwyX59QUPYOkbWAhiQk4GcBaAKaJotcsN.jpg', '58.00', 26, NULL, NULL, NULL),
(44, 'Hàu Nướng', 'Hầu Nướng', 'public/menus/oRe8r2Ktnd3pXIGTgk5ByYaq3PPG2OOwSNMM93rH.jpg', '25.00', 26, NULL, NULL, NULL),
(45, 'Mực Nướng Cay', 'Mực nướng cay với ớt', 'public/menus/HA1LCmcJRBZC5ej06aW3fzgYbnbbc8YfDWyTXSnQ.jpg', '45.00', 26, NULL, NULL, NULL),
(46, 'Sườn Nướng BBQ', 'Sườn Nướng BBQ thịt dai ngon', 'public/menus/vXfJQRpuF1lAA02juqMRJxyNB8WlGYiFgGuw72OK.jpg', '53.00', 26, NULL, NULL, NULL),
(47, 'Thịt Xiên Nướng YAKIROTO nhật bản', 'Thịt xiên nướng yakiroto nhật bản', 'public/menus/d7iPhhTJaaOXgi6iJfzR0l82LWGv1jjYNrvlEZvh.jpg', '47.00', 26, NULL, NULL, NULL),
(48, 'Tôm Nướng muối ớt', 'Tôm Nướng Muối Ớt', 'public/menus/Kf0lYppoPtEbFbiDhL1M0ohs7YYQ73rVAzFpQE6W.jpg', '38.00', 26, NULL, NULL, NULL),
(49, 'cari yaki', 'cari yaki', 'public/menus/4ytYeiNhoh25kQj8GGIUu8uA1rpQ9G7BNXtP8Bdh.jpg', '21.00', 20, NULL, NULL, NULL),
(50, 'cari gà KARI AYAM', 'cari gà KARI AYAM', 'public/menus/TmHeFDIIKVL7ybufAy5V6e1vDFFa7ehXv7onf6Kq.jpg', '43.00', 20, NULL, NULL, NULL),
(51, 'ca ri mít non ambul polos', 'ca ri mít non ambul polos', 'public/menus/GyhvPom3dRvD2edYTTUCy9CO0BqM2fO084mcdLBa.jpg', '45.00', 20, NULL, NULL, NULL),
(52, 'ca ri chay', 'ca ri chay', 'public/menus/lTbSAKWsAjZgoOHKRjobNXMsCN9Rojnwu2qkXMJG.jpg', '39.00', 20, NULL, NULL, NULL),
(53, 'Cơm cari nhật', 'cơm cari nhật', 'public/menus/VJ01fJoLEpKdoymNJiC8PCnrwDG10mGN7ztQMs1k.jpg', '40.00', 20, NULL, NULL, NULL),
(54, 'súp cua', 'Súp cua', 'public/menus/MxtBVpFeta42URpG35JceRBS5v55nqXWvWg9NKd4.jpg', '28.00', 22, NULL, NULL, NULL),
(55, 'súp sơn hào hải vị', 'Súp sơn hào hải vị', 'public/menus/j4Cn22M0osmPBJrxbXVAb6WkovdE9skfJl83wnIn.jpg', '49.00', 22, NULL, NULL, NULL),
(56, 'lẩu Hotpot', 'Lẩu Hotpot', 'public/menus/nHj0dBtgGGSkxeRVEihs5h4abLkzlrrWugXVP1nJ.webp', '56.00', 21, NULL, NULL, NULL),
(57, 'lẫu ManWah', 'Lẩu ManWah', 'public/menus/vjJZxevJfcyLLVwVBxkDUtI6z31ys7XgjPdqiIip.webp', '58.00', 21, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_01_031615_create_categories_table', 1),
(6, '2022_10_01_031718_create_menus_table', 1),
(7, '2022_10_01_031742_create_tables_table', 1),
(8, '2022_10_01_031816_create_reservations_table', 1),
(9, '2022_10_03_083514_create_category_menu_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `res_date` datetime NOT NULL,
  `table_id` bigint(20) UNSIGNED NOT NULL,
  `guest_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reservations`
--

INSERT INTO `reservations` (`id`, `first_name`, `last_name`, `email`, `tel_number`, `res_date`, `table_id`, `guest_number`, `created_at`, `updated_at`) VALUES
(1, 'Trần Anh', 'Vũ', 'rainflower@gmail.com', '2352124512', '2022-10-06 10:45:00', 2, 3, '2022-10-05 20:50:54', '2022-10-05 20:50:54'),
(2, 'Nguyễn', 'Quốc Thái', 'thai@gmail.com', '3246276931', '2022-09-29 18:18:00', 2, 3, '2022-10-06 00:18:10', '2022-10-06 00:18:10'),
(3, 'Đặng', 'Minh', 'dangquangminhdn86@gmail.com', '0898479840', '2022-10-10 18:05:00', 3, 2, '2022-10-09 18:36:36', '2022-10-09 18:36:36'),
(4, 'new12', 'dangtam', 'dangquangtamdn46@yahoo.com.vn', '07754187927', '2022-10-11 18:39:00', 3, 2, '2022-10-09 18:39:44', '2022-10-09 18:39:44'),
(5, 'Đặng Quang', 'Minh', 'minh@gmail.com', '0893718480', '2022-10-19 19:55:00', 6, 5, '2022-10-19 01:53:08', '2022-10-19 01:53:08'),
(6, 'PACIFICSKY DAN', 'QUANGTAM', 'dangquangminhdn86@gmail.com', '9717136031', '2022-10-29 18:59:00', 6, 5, '2022-10-29 08:00:24', '2022-10-29 08:00:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guest_number` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avaliable',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tables`
--

INSERT INTO `tables` (`id`, `name`, `guest_number`, `status`, `location`, `created_at`, `updated_at`) VALUES
(3, 'Ban 5 nguoi', 3, 'avaliable', 'inside', '2022-10-09 18:29:04', '2022-10-09 18:29:04'),
(5, 'Bàn 4 người', 4, 'avaliable', 'inside', '2022-10-19 01:46:22', '2022-10-19 01:46:22'),
(6, 'Bàn 7 người', 8, 'avaliable', 'outside', '2022-10-19 01:46:36', '2022-10-19 01:46:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` int(191) NOT NULL,
  `address2` int(191) NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$kX6uBlN9OFt9Q3ExX2kMP.URvHaN6frOd24OVoXeNaRno/yE8IDwa', '', '', 0, 0, '', '', '', '', 1, NULL, '2022-10-05 04:33:51', '2022-10-05 04:33:51');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

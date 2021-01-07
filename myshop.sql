-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 09, 2017 lúc 10:20 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Cơ sở dữ liệu: `myshop`
--
-- --------------------------------------------------------
--
-- Cấu trúc bảng cho bảng `admin_users`
--
CREATE TABLE `admin_users` (
`id` int(10) UNSIGNED NOT NULL,
`name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Đang đổ dữ liệu cho bảng `admin_users`
--
INSERT INTO `admin_users` (`id`, `name`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SupperAdmin', 'scodeweb2016@gmail.com', '$2y$10$q3UFgqoa.mt5Yx1dVEBT.ee6CZkLk7p7U4Y.kbYQh6PLJ/mxgenJm', '100', 'LqqsfGhinUkm3Rh5DLiP7EqVKU61F6l0JMU0DhOodMsHeWNfGQ3i4KoGw2zi', '2016-12-05 00:38:38', '2016-12-05 02:46:22');
-- --------------------------------------------------------
--
-- Cấu trúc bảng cho bảng `banners`
--
CREATE TABLE `banners` (
`id` int(10) UNSIGNED NOT NULL,
`name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`url` text COLLATE utf8_unicode_ci NOT NULL,
`url_banner` text COLLATE utf8_unicode_ci NOT NULL,
`pos` int(11) NOT NULL,
`status` int(11) NOT NULL,
`user_id` int(10) UNSIGNED NOT NULL,
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Cấu trúc bảng cho bảng `category`
--
CREATE TABLE `category` (
`id` int(10) UNSIGNED NOT NULL,
`name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`parent_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Đang đổ dữ liệu cho bảng `category`
--
INSERT INTO `category` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Mobile - Điện thoại', 'mobile-dien-thoai', '0', '2016-11-23 20:01:57', '2016-11-26 03:03:56'),
(2, 'LAPTOP - Máy tính xách tay', 'laptop-may-tinh-xach-tay', '0', '2016-11-23 20:10:10', '2016-11-26 03:04:07'),
(3, 'Asus - ZenFones', 'asus-zenfones', '1', '2016-11-23 20:17:01', '2016-11-23 20:42:30'),
(4, 'Samsung', 'samsung', '1', '2016-11-23 20:17:39', '2016-11-23 20:17:39'),
(9, 'DELL', 'dell', '2', '2016-11-24 01:36:10', '2016-11-24 01:36:10'),
(10, 'ASUS', 'asus', '2', '2016-11-24 01:36:21', '2016-11-24 01:36:21'),
(11, 'HP', 'hp', '2', '2016-11-24 01:36:31', '2016-11-24 01:36:31'),
(13, 'TIN TỨC - KHUYỄN MẠI', 'tin-tuc-khuyen-mai', '0', '2016-11-24 01:38:46', '2016-11-24 01:38:46'),
(14, 'QUẢNG CÁO - BANNER', 'quang-cao-banner', '0', '2016-11-24 01:38:57', '2016-11-24 01:38:57'),
(15, 'Apple (Iphone)', 'apple-iphone', '1', '2016-11-24 01:56:05', '2016-11-24 01:56:05'),
(16, 'OPPO', 'oppo', '1', '2016-11-25 02:00:27', '2016-11-25 02:00:27'),
(17, 'Sony', 'sony', '1', '2016-11-25 02:00:41', '2016-11-25 02:00:41'),
(18, 'LENOVO', 'lenovo', '2', '2016-11-25 02:00:52', '2016-11-25 02:00:52'),
(19, 'PC - Máy bộ', 'pc-may-bo', '0', '2016-11-26 00:36:11', '2016-11-26 00:36:11'),
(20, 'Máy bộ DELL', 'may-bo-dell', '19', '2016-11-26 00:36:27', '2016-11-26 00:36:27'),
(21, 'Máy bộ Asus - Gamming', 'may-bo-asus-gamming', '19', '2016-11-26 00:36:48', '2016-11-26 00:36:48'),
(22, 'Tin Công Nghệ', 'tin-cong-nghe', '13', '2016-11-28 18:40:09', '2016-11-28 18:40:09'),
(23, 'Tin khuyễn mại', 'tin-khuyen-mai', '13', '2016-11-28 18:40:31', '2016-11-28 18:40:31');
-- --------------------------------------------------------
--
-- Cấu trúc bảng cho bảng `detail_img`
--
CREATE TABLE `detail_img` (
`id` int(10) UNSIGNED NOT NULL,
`images_url` text COLLATE utf8_unicode_ci NOT NULL,
`pro_id` int(10) UNSIGNED NOT NULL,
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Đang đổ dữ liệu cho bảng `detail_img`
--
INSERT INTO `detail_img` (`id`, `images_url`, `pro_id`, `created_at`, `updated_at`) VALUES
(9, '1480005553_635918156584359185_s7-g1.jpg', 22, '2016-11-24 09:39:13', '2016-11-24 09:39:13'),
(10, '1480005553_635918157344579185_s7-g5.jpg', 22, '2016-11-24 09:39:13', '2016-11-24 09:39:13'),
(11, '1480005553_635918157122729185_s7-g4.jpg', 22, '2016-11-24 09:39:13', '2016-11-24 09:39:13'),
(12, '1480005553_635918157121589185_s7-g3.jpg', 22, '2016-11-24 09:39:13', '2016-11-24 09:39:13'),
(13, '1480005553_635918156798139185_s7-g2.jpg', 22, '2016-11-24 09:39:13', '2016-11-24 09:39:13'),
(14, '1480005554_635918156584359185_s7-g1.jpg', 22, '2016-11-24 09:39:14', '2016-11-24 09:39:14'),
(15, '1480005568_635918156584359185_s7-g1.jpg', 23, '2016-11-24 09:39:28', '2016-11-24 09:39:28'),
(16, '1480005568_635918157344579185_s7-g5.jpg', 23, '2016-11-24 09:39:28', '2016-11-24 09:39:28'),
(17, '1480005568_635918157122729185_s7-g4.jpg', 23, '2016-11-24 09:39:28', '2016-11-24 09:39:28'),
(18, '1480005568_635918157121589185_s7-g3.jpg', 23, '2016-11-24 09:39:28', '2016-11-24 09:39:28'),
(19, '1480005568_635918156798139185_s7-g2.jpg', 23, '2016-11-24 09:39:28', '2016-11-24 09:39:28'),
(20, '1480005568_635918156584359185_s7-g1.jpg', 23, '2016-11-24 09:39:28', '2016-11-24 09:39:28'),
(22, '1480038526_636089592275907954_7-plus-chi-tiet.jpg', 25, '2016-11-24 18:48:46', '2016-11-24 18:48:46'),
(23, '1480142647_samsunggalaxys7edge.jpg', 26, '2016-11-25 23:44:07', '2016-11-25 23:44:07'),
(24, '1480142651_samsunggalaxys7edge.jpg', 27, '2016-11-25 23:44:11', '2016-11-25 23:44:11'),
(25, '1480142655_samsunggalaxys7edge.jpg', 28, '2016-11-25 23:44:15', '2016-11-25 23:44:15'),
(31, '1480142704_samsunggalaxys7edge.jpg', 34, '2016-11-25 23:45:04', '2016-11-25 23:45:04'),
(32, '1480142708_samsunggalaxys7edge.jpg', 35, '2016-11-25 23:45:08', '2016-11-25 23:45:08'),
(33, '1480146220_dell-inspiron-3552-n3050-2gb-500gb-win10-400-1-400x313.png', 36, '2016-11-26 00:43:40', '2016-11-26 00:43:40'),
(34, '1480146227_dell-inspiron-3552-n3050-2gb-500gb-win10-400-1-400x313.png', 37, '2016-11-26 00:43:47', '2016-11-26 00:43:47'),
(35, '1480146231_dell-inspiron-3552-n3050-2gb-500gb-win10-400-1-400x313.png', 38, '2016-11-26 00:43:51', '2016-11-26 00:43:51'),
(36, '1480146235_dell-inspiron-3552-n3050-2gb-500gb-win10-400-1-400x313.png', 39, '2016-11-26 00:43:55', '2016-11-26 00:43:55'),
(37, '1480146238_dell-inspiron-3552-n3050-2gb-500gb-win10-400-1-400x313.png', 40, '2016-11-26 00:43:58', '2016-11-26 00:43:58'),
(38, '1480146242_dell-inspiron-3552-n3050-2gb-500gb-win10-400-1-400x313.png', 41, '2016-11-26 00:44:02', '2016-11-26 00:44:02'),
(39, '1480151599_930_dell 980 2.png', 42, '2016-11-26 02:13:19', '2016-11-26 02:13:19'),
(40, '1480151604_930_dell 980 2.png', 43, '2016-11-26 02:13:24', '2016-11-26 02:13:24'),
(41, '1480151607_930_dell 980 2.png', 44, '2016-11-26 02:13:27', '2016-11-26 02:13:27'),
(42, '1480151611_930_dell 980 2.png', 45, '2016-11-26 02:13:31', '2016-11-26 02:13:31'),
(43, '1480151615_930_dell 980 2.png', 46, '2016-11-26 02:13:35', '2016-11-26 02:13:35'),
(44, '1480151633_930_dell 980 2.png', 47, '2016-11-26 02:13:53', '2016-11-26 02:13:53'),
(45, '1480151635_930_dell 980 2.png', 48, '2016-11-26 02:13:55', '2016-11-26 02:13:55'),
(46, '1480151640_930_dell 980 2.png', 49, '2016-11-26 02:14:00', '2016-11-26 02:14:00'),
(47, '1480151643_930_dell 980 2.png', 50, '2016-11-26 02:14:03', '2016-11-26 02:14:03'),
(48, '1480151884_rog.png', 51, '2016-11-26 02:18:04', '2016-11-26 02:18:04'),
(49, '1480151888_rog.png', 52, '2016-11-26 02:18:08', '2016-11-26 02:18:08'),
(50, '1480151891_rog.png', 53, '2016-11-26 02:18:11', '2016-11-26 02:18:11'),
(51, '1480151894_rog.png', 54, '2016-11-26 02:18:14', '2016-11-26 02:18:14'),
(52, '1480151897_rog.png', 55, '2016-11-26 02:18:17', '2016-11-26 02:18:17'),
(53, '1480151914_rog.png', 56, '2016-11-26 02:18:34', '2016-11-26 02:18:34'),
(54, '1480151952_hp.png', 57, '2016-11-26 02:19:12', '2016-11-26 02:19:12'),
(55, '1480151956_hp.png', 58, '2016-11-26 02:19:16', '2016-11-26 02:19:16'),
(56, '1480151959_hp.png', 59, '2016-11-26 02:19:19', '2016-11-26 02:19:19'),
(57, '1480152026_leno.png', 60, '2016-11-26 02:20:26', '2016-11-26 02:20:26'),
(58, '1480152032_leno.png', 61, '2016-11-26 02:20:32', '2016-11-26 02:20:32'),
(59, '1480152035_leno.png', 62, '2016-11-26 02:20:35', '2016-11-26 02:20:35'),
(60, '1480152038_leno.png', 63, '2016-11-26 02:20:38', '2016-11-26 02:20:38'),
(61, '1480382502_may-tinh-de-ban-dell-optiplex-3046sff-70086073-core-i3--3.jpg', 69, '2016-11-28 18:21:42', '2016-11-28 18:21:42'),
(62, '1480382502_may-tinh-de-ban-dell-optiplex-3046sff-70086073-core-i3-2.jpg', 69, '2016-11-28 18:21:42', '2016-11-28 18:21:42'),
(63, '1480382502_may-tinh-de-ban-dell-optiplex-3040sff-06.jpg', 69, '2016-11-28 18:21:42', '2016-11-28 18:21:42'),
(64, '1480382502_may-tinh-de-ban-dell-optiplex-3046sff-70086073-core-i3--3.jpg', 69, '2016-11-28 18:21:42', '2016-11-28 18:21:42'),
(65, '1480650741_oppo-f1s-hero-400x460-400x460.png', 24, '2016-12-01 20:52:21', '2016-12-01 20:52:21');
-- --------------------------------------------------------
--
-- Cấu trúc bảng cho bảng `migrations`
--
CREATE TABLE `migrations` (
`migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Đang đổ dữ liệu cho bảng `migrations`
--
INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_11_13_131139_create_admin_users_table', 1),
('2016_11_24_011241_create_categor_table', 1),
('2016_11_24_011515_create_products_table', 1),
('2016_11_24_012823_create_pro_details_table', 1),
('2016_11_24_013636_create_detal_img_table', 1),
('2016_11_24_014238_create_news_table', 1),
('2016_11_24_014742_create_banners_table', 1),
('2016_12_01_161126_create_oders_table', 2),
('2016_12_02_015703_create_oders_detail_table', 3),
('2016_12_02_023327_create_oders_table', 4),
('2016_12_02_023343_create_oders_detail_table', 4);
-- --------------------------------------------------------
--
-- Cấu trúc bảng cho bảng `news`
--
CREATE TABLE `news` (
`id` int(10) UNSIGNED NOT NULL,
`title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`full` text COLLATE utf8_unicode_ci NOT NULL,
`images` text COLLATE utf8_unicode_ci NOT NULL,
`tag` text COLLATE utf8_unicode_ci NOT NULL,
`status` int(11) NOT NULL,
`source` text COLLATE utf8_unicode_ci NOT NULL,
`cat_id` int(10) UNSIGNED NOT NULL,
`user_id` int(10) UNSIGNED NOT NULL,
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Đang đổ dữ liệu cho bảng `news`
--
INSERT INTO `news` (`id`, `title`, `slug`, `author`, `intro`, `full`, `images`, `tag`, `status`, `source`, `cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone 6s còn dưới 7 triệu đồng', 'iphone-se-doi-tra-thiet-ke-thanh-lich-manh-nhu-iphone-6s-con-duoi-7-trieu-dong', 'admin', '
<p>Kh&ocirc;ng chỉ iPhone SE h&agrave;ng mới m&agrave; h&agrave;ng đổi trả cũng được giảm gi&aacute; mạnh mẽ. Trước đ&acirc;y mức gi&aacute; l&agrave; hơn 7 triệu b&acirc;y giờ chỉ c&ograve;n dưới 7 triệu đồng, thậm ch&iacute; về gần mức 6 triệu đồng</p>
\r', '
<p>iPhone SE kế thừa từ nhiều mẫu iPhone hiện nay, n&oacute; l&agrave; tổng h&ograve;a của vẻ đẹp thanh lịch, gọn g&agrave;ng của&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-5s-16gb\" target=\"_blank\" title=\" iPhone 5s\" type=\" iPhone 5s\">iPhone 5s</a>&nbsp;với sức mạnh cấu h&igrave;nh của iPhone 6s. Ch&iacute;nh v&igrave; vậy, iPhone SE vẫn l&agrave; mong ước của nhiều t&iacute;n đồ nh&agrave; T&aacute;o.</p>
\r\n\r\n
<p><img alt=\"iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone 6s còn dưới 7 triệu đồng\" src=\"https://cdn1.tgdd.vn/Files/2016/11/28/919237/iphone-se-2_1204x535.jpg\" title=\"iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone 6s còn dưới 7 triệu đồng\" /></p>
\r\n\r\n
<p>Về gi&aacute; b&aacute;n, hiện tại iPhone SE h&agrave;ng đổi trả chỉ c&ograve;n dưới 7 triệu, ở mức trung b&igrave;nh l&agrave; 6.8 triệu đồng, thậm ch&iacute; c&oacute; chiếc chỉ 6.3 triệu đồng, t&ugrave;y thời gian bảo h&agrave;nh. Đ&acirc;y ch&iacute;nh l&agrave; lựa chọn tốt cho nhiều bạn trẻ mong muốn c&oacute; một iPhone &ldquo;nhỏ nhưng c&oacute; v&otilde;&rdquo;, gọn g&agrave;ng nhưng cực kỳ mạnh mẽ.</p>
\r\n\r\n
<p>iPhone SE hiện l&agrave; mẫu smartphone nhỏ gọn c&oacute; hiệu suất cao nhất hiện nay bởi n&oacute; trang bị cấu h&igrave;nh như iPhone 6s, đ&oacute; l&agrave; vi xử l&yacute; Apple A9, RAM 2 GB, c&ugrave;ng camera 12 MP sắc n&eacute;t. So với iPhone 5s th&igrave; iPhone SE c&ograve;n sở hữu thỏi pin dung lượng lớn hơn (1.642 mAh so với 1.560 mAh).</p>
\r\n', '1480392187_bannernew4-_1920x1080.jpg', 'iphone 7, iphone 7 plus', 1, 'the gioi di dong', 22, 1, '2016-11-28 21:03:07', '2016-11-28 21:03:07'),
(2, 'Điểm tin HOT 23/11: Mẫu iPhone SE 2017 đẹp nao lòng, đoạn video 5 giây biến iPhone thành cục gạch', 'diem-tin-hot-2311-mau-iphone-se-2017-dep-nao-long-doan-video-5-giay-bien-iphone-thanh-cuc-gach', 'admin', '
<p>Mới đ&acirc;y, 1 nh&agrave; thiết kể trẻ tuổi sinh năm 1998 tại Việt Nam đ&atilde; tạo ra 1 bản concept iPhone SE 2017 đẹp đến nao l&ograve;ng, sợ kiểu n&agrave;y th&igrave; iPhone 7 sẽ ế h&agrave;ng mất.</p>
\r\n', '
<h2>Mới đ&acirc;y, 1 nh&agrave; thiết kể trẻ tuổi sinh năm 1998 tại Việt Nam đ&atilde; tạo ra 1 bản concept iPhone SE 2017 đẹp đến nao l&ograve;ng, sợ kiểu n&agrave;y th&igrave; iPhone 7 sẽ ế h&agrave;ng mất. Ngo&agrave;i ra, cư d&acirc;n mạng đang truyền tay nhau 1 clip 5 gi&acirc;y khiến nhiều chiếc iPhone trở th&agrave;nh cục gạch 1 c&aacute;ch nhẹ nh&agrave;ng.</h2>
\r\n\r\n
<h3><strong>1.&nbsp;Nếu iPhone SE 2017 đẹp thế n&agrave;y th&igrave; iPhone 7 cũng sẽ ế h&agrave;ng cho coi</strong></h3>
\r\n\r\n
<p>Mới đ&acirc;y, nh&agrave; thiết kế nhỏ tuổi Đạt Nobita tiếp tục đến với mẫu thiết kế iPhone SE 2017 m&agrave; theo m&igrave;nh l&agrave; &ldquo;đẹp kh&ocirc;ng tỳ vết&rdquo;. iPhone SE 2017 trong mẫu thiết kế n&agrave;y c&oacute; khung viền phẳng, rất mạnh mẽ trong khi mặt trước v&agrave; sau được phủ k&iacute;nh cường lực. C&oacute; vẻ như những th&ocirc;ng tin cho rằng năm sau iPhone sẽ sử dụng lại kiểu thiết kế tr&ecirc;n iPhone 4/4s đ&atilde; ảnh hưởng tới mẫu concept n&agrave;y.</p>
\r\n\r\n
<p><img alt=\"Nếu iPhone SE 2017 đẹp thế này thì iPhone 7 cũng sẽ ế hàng cho coi\" src=\"https://cdn3.tgdd.vn/Files/2016/11/22/917054/se1_1280x720.jpg\" title=\"Nếu iPhone SE 2017 đẹp thế này thì iPhone 7 cũng sẽ ế hàng cho coi\" /></p>
\r\n\r\n
<p>Chưa hết, concept iPhone SE 2017 c&ograve;n ấn tượng bởi viền cạnh m&agrave;n h&igrave;nh si&ecirc;u mỏng, cạnh tr&ecirc;n cũng rất hẹp, t&iacute;ch hợp camera trước gọn nhỏ, tinh tế. Lần n&agrave;y, m&aacute;y kh&ocirc;ng c&oacute; n&uacute;t nguồn cạnh tr&ecirc;n m&agrave; l&agrave; ở cạnh phải để tiện lợi cho người d&ugrave;ng bởi m&agrave;n h&igrave;nh của m&aacute;y đ&atilde; lớn hơn.</p>
\r\n\r\n
<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/neu-iphone-se-2017-dep-the-nay-thi-iphone-7-cung-se-e-hang-917054\" target=\"_blank\" title=\"Nếu iPhone SE 2017 đẹp thế này thì iPhone 7 cũng sẽ ế hàng cho coi\">Nếu iPhone SE 2017 đẹp thế n&agrave;y th&igrave; iPhone 7 cũng sẽ ế h&agrave;ng cho coi</a></p>
\r\n\r\n
<h3><strong>2.&nbsp;Cảnh b&aacute;o: Đoạn video 5 gi&acirc;y khiến m&aacute;y iPhone trở th&agrave;nh &quot;cục gạch&quot;</strong></h3>
\r\n\r\n
<p><img alt=\"\" src=\"https://www.thegioididong.com/tin-tuc/mau-iphone-se-2017-dep-nao-long-doan-video-5-giay-917408\" /></p>
\r\n\r\n
<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/canh-bao-doan-video-5-giay-khien-may-iphone-tro-thanh-cuc-gach-917063\" target=\"_blank\" title=\"Cảnh báo: Đoạn video 5 giây khiến máy iPhone trở thành cục gạch\">Cảnh b&aacute;o: Đoạn video 5 gi&acirc;y khiến m&aacute;y iPhone trở th&agrave;nh &quot;cục gạch&quot;</a></p>
\r\n\r\n
<h3><strong>3.&nbsp;Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp c&oacute; &ldquo;người anh em&rdquo;</strong></h3>
\r\n\r\n
<p>Trang c&ocirc;ng nghệ th&acirc;n cận với Samsung &ndash;&nbsp;<a href=\"http://www.sammobile.com/2016/11/23/first-images-of-the-glossy-black-galaxy-s7-edge-surface-online/\" rel=\"nofollow\" target=\"_blank\" title=\"Galaxy S7 Edge\" type=\"Galaxy S7 Edge\">Sammobile</a>&nbsp;l&agrave; nguồn tin mang đến cho ch&uacute;ng ta những h&igrave;nh ảnh n&agrave;y. Trong bộ ảnh dưới đ&acirc;y, c&aacute;c bạn c&oacute; thể thấy rằng Galaxy S7 Edge xuất hiện với m&agrave;u đen b&oacute;ng bẩy hơn so với m&agrave;u Black Onyx trước đ&oacute;.</p>
\r\n\r\n
<p><img alt=\"Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp có “người anh em”\" src=\"https://cdn.tgdd.vn/Files/2016/11/23/917387/s7-edge-glossy-black-7_690x690.jpg\" title=\"Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp có “người anh em”\" /></p>
\r\n\r\n
<p>Đặc biệt, bộ ảnh n&agrave;y cũng rất sắc n&eacute;t v&agrave; chi tiết, kh&ocirc;ng c&oacute; vẻ g&igrave; l&agrave; đang chụp l&eacute;n cả, v&igrave; vậy c&oacute; thể n&oacute;i rằng Samsung đ&atilde; sẵn s&agrave;ng để tung phi&ecirc;n bản m&agrave;u sắc mới n&agrave;y cho dịp cuối năm để những ai th&iacute;ch m&agrave;u đen b&oacute;ng c&oacute; th&ecirc;m lựa chọn hấp dẫn.</p>
\r\n\r\n
<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/galaxy-s7-edge-glossy-black-bong-dung-xuat-hien-917387\" target=\"_blank\" title=\"Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp có người anh em\">Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp c&oacute; &ldquo;người anh em&rdquo;</a></p>
\r\n\r\n
<h3><strong>4.&nbsp;3 smartphone c&oacute; gi&aacute; giảm l&agrave;m nao l&ograve;ng người d&ugrave;ng Việt (11/2016)</strong></h3>
\r\n\r\n
<p><img alt=\"Apple iPhone SE\" src=\"https://cdn3.tgdd.vn/Files/2016/11/22/917091/iphone-se_800x450.jpg\" title=\"Apple iPhone SE\" /></p>
\r\n\r\n
<p>Bắt đầu rồi đ&oacute; c&aacute;c bạn ạ, m&ugrave;a mua sắm cuối năm đang nhộn nhịp hẳn l&ecirc;n. Thị trường di động kh&ocirc;ng chỉ xuất hiện c&aacute;c mẫu&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Đặt mua smartphone tại Thegioididong.com\" type=\"Đặt mua smartphone tại Thegioididong.com\">smartphone</a>&nbsp;mới thời thượng, m&agrave; b&ecirc;n cạnh đ&oacute;, những mẫu m&aacute;y được b&aacute;n ra trước đ&oacute; cũng ồ ạt giảm gi&aacute; để h&uacute;t kh&aacute;ch.</p>
\r\n\r\n
<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/top-3-smartphone-co-gia-giam-lam-nao-long-nguoi-viet-11-2016-917091\" target=\"_blank\" title=\"3 smartphone có giá giảm làm nao lòng người dùng Việt (11/2016)\">3 smartphone c&oacute; gi&aacute; giảm l&agrave;m nao l&ograve;ng người d&ugrave;ng Việt (11/2016)</a></p>
\r\n\r\n
<h3><strong>5.&nbsp;7 t&iacute;nh năng tuyệt vời gi&uacute;p bạn sử dụng Android như chuy&ecirc;n gia</strong></h3>
\r\n\r\n
<p><img alt=\"Android\" src=\"https://cdn1.tgdd.vn/Files/2016/11/23/917202/android_800x450.jpg\" title=\"Android\" /></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-kiem?key=android\" target=\"_blank\" title=\"Android\" type=\"Android\">Android</a>&nbsp;l&agrave; một hệ điều hảnh phổ biến nhất hiện nay với rất nhiều tuỳ chỉnh th&uacute; vị. V&igrave; vậy, h&ocirc;m nay m&igrave;nh xin giới thiệu với c&aacute;c bạn c&aacute;c cử chỉ rất hữu &iacute;ch gi&uacute;p bạn sử dụng thiết bị như một chuy&ecirc;n gia. Mời c&aacute;c bạn c&ugrave;ng theo d&otilde;i b&agrave;i viết nh&eacute;.</p>
\r\n', '1480385929_bannernew4-_1920x1080.jpg', 'Điểm tin HOT 23/11: Mẫu iPhone SE 2017 ', 1, 'thegoididong.com', 22, 1, '2016-11-28 19:18:49', '2016-11-28 19:18:49'),
(3, 'Điểm tin HOT 23/11: Mẫu iPhone SE 2017 ', 'diem-tin-hot-2311-mau-iphone-se-2017', 'admin', '
<p>Mới đ&acirc;y, 1 nh&agrave; thiết kể trẻ tuổi sinh năm 1998 tại Việt Nam đ&atilde; tạo ra 1 bản concept iPhone SE 2017 đẹp đến nao l&ograve;ng, sợ kiểu n&agrave;y th&igrave; iPhone 7 sẽ ế h&agrave;ng mất.</p>
\r\n', '
<h2>Mới đ&acirc;y, 1 nh&agrave; thiết kể trẻ tuổi sinh năm 1998 tại Việt Nam đ&atilde; tạo ra 1 bản concept iPhone SE 2017 đẹp đến nao l&ograve;ng, sợ kiểu n&agrave;y th&igrave; iPhone 7 sẽ ế h&agrave;ng mất. Ngo&agrave;i ra, cư d&acirc;n mạng đang truyền tay nhau 1 clip 5 gi&acirc;y khiến nhiều chiếc iPhone trở th&agrave;nh cục gạch 1 c&aacute;ch nhẹ nh&agrave;ng.</h2>
\r\n\r\n
<h3><strong>1.&nbsp;Nếu iPhone SE 2017 đẹp thế n&agrave;y th&igrave; iPhone 7 cũng sẽ ế h&agrave;ng cho coi</strong></h3>
\r\n\r\n
<p>Mới đ&acirc;y, nh&agrave; thiết kế nhỏ tuổi Đạt Nobita tiếp tục đến với mẫu thiết kế iPhone SE 2017 m&agrave; theo m&igrave;nh l&agrave; &ldquo;đẹp kh&ocirc;ng tỳ vết&rdquo;. iPhone SE 2017 trong mẫu thiết kế n&agrave;y c&oacute; khung viền phẳng, rất mạnh mẽ trong khi mặt trước v&agrave; sau được phủ k&iacute;nh cường lực. C&oacute; vẻ như những th&ocirc;ng tin cho rằng năm sau iPhone sẽ sử dụng lại kiểu thiết kế tr&ecirc;n iPhone 4/4s đ&atilde; ảnh hưởng tới mẫu concept n&agrave;y.</p>
\r\n\r\n
<p><img alt=\"Nếu iPhone SE 2017 đẹp thế này thì iPhone 7 cũng sẽ ế hàng cho coi\" src=\"https://cdn3.tgdd.vn/Files/2016/11/22/917054/se1_1280x720.jpg\" title=\"Nếu iPhone SE 2017 đẹp thế này thì iPhone 7 cũng sẽ ế hàng cho coi\" /></p>
\r\n\r\n
<p>Chưa hết, concept iPhone SE 2017 c&ograve;n ấn tượng bởi viền cạnh m&agrave;n h&igrave;nh si&ecirc;u mỏng, cạnh tr&ecirc;n cũng rất hẹp, t&iacute;ch hợp camera trước gọn nhỏ, tinh tế. Lần n&agrave;y, m&aacute;y kh&ocirc;ng c&oacute; n&uacute;t nguồn cạnh tr&ecirc;n m&agrave; l&agrave; ở cạnh phải để tiện lợi cho người d&ugrave;ng bởi m&agrave;n h&igrave;nh của m&aacute;y đ&atilde; lớn hơn.</p>
\r\n\r\n
<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/neu-iphone-se-2017-dep-the-nay-thi-iphone-7-cung-se-e-hang-917054\" target=\"_blank\" title=\"Nếu iPhone SE 2017 đẹp thế này thì iPhone 7 cũng sẽ ế hàng cho coi\">Nếu iPhone SE 2017 đẹp thế n&agrave;y th&igrave; iPhone 7 cũng sẽ ế h&agrave;ng cho coi</a></p>
\r\n\r\n
<h3><strong>2.&nbsp;Cảnh b&aacute;o: Đoạn video 5 gi&acirc;y khiến m&aacute;y iPhone trở th&agrave;nh &quot;cục gạch&quot;</strong></h3>
\r\n\r\n
<p><img alt=\"\" src=\"https://www.thegioididong.com/tin-tuc/mau-iphone-se-2017-dep-nao-long-doan-video-5-giay-917408\" /></p>
\r\n\r\n
<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/canh-bao-doan-video-5-giay-khien-may-iphone-tro-thanh-cuc-gach-917063\" target=\"_blank\" title=\"Cảnh báo: Đoạn video 5 giây khiến máy iPhone trở thành cục gạch\">Cảnh b&aacute;o: Đoạn video 5 gi&acirc;y khiến m&aacute;y iPhone trở th&agrave;nh &quot;cục gạch&quot;</a></p>
\r\n\r\n
<h3><strong>3.&nbsp;Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp c&oacute; &ldquo;người anh em&rdquo;</strong></h3>
\r\n\r\n
<p>Trang c&ocirc;ng nghệ th&acirc;n cận với Samsung &ndash;&nbsp;<a href=\"http://www.sammobile.com/2016/11/23/first-images-of-the-glossy-black-galaxy-s7-edge-surface-online/\" rel=\"nofollow\" target=\"_blank\" title=\"Galaxy S7 Edge\" type=\"Galaxy S7 Edge\">Sammobile</a>&nbsp;l&agrave; nguồn tin mang đến cho ch&uacute;ng ta những h&igrave;nh ảnh n&agrave;y. Trong bộ ảnh dưới đ&acirc;y, c&aacute;c bạn c&oacute; thể thấy rằng Galaxy S7 Edge xuất hiện với m&agrave;u đen b&oacute;ng bẩy hơn so với m&agrave;u Black Onyx trước đ&oacute;.</p>
\r\n\r\n
<p><img alt=\"Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp có “người anh em”\" src=\"https://cdn.tgdd.vn/Files/2016/11/23/917387/s7-edge-glossy-black-7_690x690.jpg\" title=\"Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp có “người anh em”\" /></p>
\r\n\r\n
<p>Đặc biệt, bộ ảnh n&agrave;y cũng rất sắc n&eacute;t v&agrave; chi tiết, kh&ocirc;ng c&oacute; vẻ g&igrave; l&agrave; đang chụp l&eacute;n cả, v&igrave; vậy c&oacute; thể n&oacute;i rằng Samsung đ&atilde; sẵn s&agrave;ng để tung phi&ecirc;n bản m&agrave;u sắc mới n&agrave;y cho dịp cuối năm để những ai th&iacute;ch m&agrave;u đen b&oacute;ng c&oacute; th&ecirc;m lựa chọn hấp dẫn.</p>
\r\n\r\n
<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/galaxy-s7-edge-glossy-black-bong-dung-xuat-hien-917387\" target=\"_blank\" title=\"Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp có người anh em\">Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp c&oacute; &ldquo;người anh em&rdquo;</a></p>
\r\n\r\n
<h3><strong>4.&nbsp;3 smartphone c&oacute; gi&aacute; giảm l&agrave;m nao l&ograve;ng người d&ugrave;ng Việt (11/2016)</strong></h3>
\r\n\r\n
<p><img alt=\"Apple iPhone SE\" src=\"https://cdn3.tgdd.vn/Files/2016/11/22/917091/iphone-se_800x450.jpg\" title=\"Apple iPhone SE\" /></p>
\r\n\r\n
<p>Bắt đầu rồi đ&oacute; c&aacute;c bạn ạ, m&ugrave;a mua sắm cuối năm đang nhộn nhịp hẳn l&ecirc;n. Thị trường di động kh&ocirc;ng chỉ xuất hiện c&aacute;c mẫu&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Đặt mua smartphone tại Thegioididong.com\" type=\"Đặt mua smartphone tại Thegioididong.com\">smartphone</a>&nbsp;mới thời thượng, m&agrave; b&ecirc;n cạnh đ&oacute;, những mẫu m&aacute;y được b&aacute;n ra trước đ&oacute; cũng ồ ạt giảm gi&aacute; để h&uacute;t kh&aacute;ch.</p>
\r\n\r\n
<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/top-3-smartphone-co-gia-giam-lam-nao-long-nguoi-viet-11-2016-917091\" target=\"_blank\" title=\"3 smartphone có giá giảm làm nao lòng người dùng Việt (11/2016)\">3 smartphone c&oacute; gi&aacute; giảm l&agrave;m nao l&ograve;ng người d&ugrave;ng Việt (11/2016)</a></p>
\r\n\r\n
<h3><strong>5.&nbsp;7 t&iacute;nh năng tuyệt vời gi&uacute;p bạn sử dụng Android như chuy&ecirc;n gia</strong></h3>
\r\n\r\n
<p><img alt=\"Android\" src=\"https://cdn1.tgdd.vn/Files/2016/11/23/917202/android_800x450.jpg\" title=\"Android\" /></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-kiem?key=android\" target=\"_blank\" title=\"Android\" type=\"Android\">Android</a>&nbsp;l&agrave; một hệ điều hảnh phổ biến nhất hiện nay với rất nhiều tuỳ chỉnh th&uacute; vị. V&igrave; vậy, h&ocirc;m nay m&igrave;nh xin giới thiệu với c&aacute;c bạn c&aacute;c cử chỉ rất hữu &iacute;ch gi&uacute;p bạn sử dụng thiết bị như một chuy&ecirc;n gia. Mời c&aacute;c bạn c&ugrave;ng theo d&otilde;i b&agrave;i viết nh&eacute;.</p>
\r\n', '1480385945_bannernew4-_1920x1080.jpg', 'Điểm tin HOT 23/11: Mẫu iPhone SE 2017 ', 1, 'thegoididong.com', 22, 1, '2016-11-28 19:19:05', '2016-11-28 19:19:05'),
(4, 'iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone 6s còn dưới 7 triệu ', 'iphone-se-doi-tra-thiet-ke-thanh-lich-manh-nhu-iphone-6s-con-duoi-7-trieu', 'admin', '
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column.&nbsp;</p>
\r\n', '
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n\r\n
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n\r\n
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n', '1480390877_iphone-se-1_1240x698.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 22, 1, '2016-11-28 20:41:17', '2016-11-28 20:41:17'),
(5, 'iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone 6s còn dưới 7 ', 'iphone-se-doi-tra-thiet-ke-thanh-lich-manh-nhu-iphone-6s-con-duoi-7', 'admin', '
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column.&nbsp;</p>
\r\n', '
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n\r\n
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n\r\n
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n', '1480390903_bannernew4-_1920x1080.jpg', 'bla ble', 1, 'Google Product Forum​', 22, 1, '2016-11-28 20:41:43', '2016-11-28 20:41:43'),
(6, 'iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone', 'iphone-se-doi-tra-thiet-ke-thanh-lich-manh-nhu-iphone', 'admin', '
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column.&nbsp;</p>
\r\n', '
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n\r\n
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n\r\n
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n', '1480390918_bannernew4-_1920x1080.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 22, 1, '2016-11-28 20:41:58', '2016-11-28 20:41:58'),
(7, 'iPhone SE đổi trả thiết kế thanh lịch, mạnh ', 'iphone-se-doi-tra-thiet-ke-thanh-lich-manh', 'admin', '
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column.&nbsp;</p>
\r\n', '
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n\r\n
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n\r\n
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n', '1480390929_bannernew4-_1920x1080.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 22, 1, '2016-11-28 20:42:09', '2016-11-28 20:42:09'),
(8, 'iPhone SE đổi trả thiết kế thanh lịch', 'iphone-se-doi-tra-thiet-ke-thanh-lich', 'admin', '
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column.&nbsp;</p>
\r\n', '
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n\r\n
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n\r\n
<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>
\r\n', '1480390936_bannernew4-_1920x1080.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 22, 1, '2016-11-28 20:42:16', '2016-11-28 20:42:16'),
(9, 'iOS 10.1.1 đang gặp vấn đề nghiêm trọng về pin?', 'ios-1011-dang-gap-van-de-nghiem-trong-ve-pin', 'Hoang Viet', '
<p>Đầu th&aacute;ng 11 n&agrave;y Apple đ&atilde; ch&iacute;nh thức ph&aacute;t h&agrave;nh bản cập nhật iOS 10.1.1, tuy nhi&ecirc;n bản n&acirc;ng cấp n&agrave;y đ&atilde; nhận phản hồi kh&ocirc;ng tốt từ người d&ugrave;ng.</p>
\r\n', '
<h2>Đầu th&aacute;ng 11 n&agrave;y Apple đ&atilde; ch&iacute;nh thức ph&aacute;t h&agrave;nh bản cập nhật&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tim-kiem?key=iOS+10.1.1\" target=\"_blank\" title=\"iOS 10.1.1\" type=\"iOS 10.1.1\">iOS 10.1.1</a>, tuy nhi&ecirc;n bản n&acirc;ng cấp n&agrave;y đ&atilde; nhận phản hồi kh&ocirc;ng tốt từ người d&ugrave;ng.</h2>
\r\n\r\n
<p>Cụ thể ng&agrave;y c&agrave;ng c&oacute; nhiều c&aacute;c b&aacute;o c&aacute;o về vấn đề iOS 10.1.1 ngốn pin nhanh hơn so với c&aacute;c phi&ecirc;n bản trước. Một số thiết bị khi c&ograve;n khoảng 30% pin sẽ đột ngột tắt nguồn, sau khi cắm bộ sạc v&agrave;o v&agrave;i gi&acirc;y th&igrave; m&agrave;n h&igrave;nh sẽ hiển thị lại dung lượng pin 30% trước đ&oacute;, th&ocirc;ng tin được&nbsp;<a href=\"http://www.phonearena.com/news/iOS-10.1.1-reported-to-drain-users-batteries_id88354\" rel=\"nofollow\" target=\"_blank\" title=\"phonearena\" type=\"phonearena\">phonearena</a>&nbsp;đăng tải.</p>
\r\n\r\n
<p>Người d&ugrave;ng kh&aacute;c c&ograve;n gặp vấn đề nghi&ecirc;m trọng hơn, khi iPhone của họ bị giảm hơn 80% pin trong một đ&ecirc;m, v&agrave; ho&agrave;n to&agrave;n tắt nguồn v&agrave;o s&aacute;ng h&ocirc;m sau, khi cắm sạc v&agrave;o th&igrave; lại hiển thị ở mức 30% pin.</p>
\r\n\r\n
<p>Hiện lỗi n&agrave;y chỉ xuất hiện ở một số người d&ugrave;ng nhất định, v&igrave; vậy Apple vẫn chưa thừa nhận đ&acirc;y l&agrave; vấn đề g&acirc;y ra bởi iOS 10.1.1. Hy vọng nh&agrave; t&aacute;o sẽ t&igrave;m ra nguy&ecirc;n nh&acirc;n vấn đề v&agrave; sớm khắc phục.</p>
\r\n\r\n
<p>Cũng nhắc lại đ&ocirc;i ch&uacute;t về iOS 10.1.1, trong bản n&acirc;ng cấp n&agrave;y Apple tập trung cải thiện t&iacute;nh năng chăm s&oacute;c sức khỏe v&agrave; sửa lỗi c&aacute;c ứng dụng kh&ocirc;ng thể tiếp cận dữ liệu từ điện thoại để thống k&ecirc; cho người d&ugrave;ng. Ngo&agrave;i ra, kh&ocirc;ng c&oacute; bất kỳ t&iacute;nh năng mới n&agrave;o được th&ecirc;m v&agrave;o.</p>
\r\n', '1480399611_sac-pin-iphone77-636137797940677630_800x450.jpg', 'iOS 10.1.1 , Pin', 1, 'thegoididong.com', 22, 1, '2016-11-28 23:09:06', '2016-11-28 23:09:06'),
(10, 'iOS 10.1.1 mới ra mắt', 'ios-1011-moi-ra-mat', 'Hoang Viet', '
<p>Đầu th&aacute;ng 11 n&agrave;y Apple đ&atilde; ch&iacute;nh thức ph&aacute;t h&agrave;nh bản cập nhật iOS 10.1.1, tuy nhi&ecirc;n bản n&acirc;ng cấp n&agrave;y đ&atilde; nhận phản hồi kh&ocirc;ng tốt từ người d&ugrave;ng.</p>
\r\n', '
<h2>Đầu th&aacute;ng 11 n&agrave;y Apple đ&atilde; ch&iacute;nh thức ph&aacute;t h&agrave;nh bản cập nhật&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tim-kiem?key=iOS+10.1.1\" target=\"_blank\" title=\"iOS 10.1.1\" type=\"iOS 10.1.1\">iOS 10.1.1</a>, tuy nhi&ecirc;n bản n&acirc;ng cấp n&agrave;y đ&atilde; nhận phản hồi kh&ocirc;ng tốt từ người d&ugrave;ng.</h2>
\r\n\r\n
<p>Cụ thể ng&agrave;y c&agrave;ng c&oacute; nhiều c&aacute;c b&aacute;o c&aacute;o về vấn đề iOS 10.1.1 ngốn pin nhanh hơn so với c&aacute;c phi&ecirc;n bản trước. Một số thiết bị khi c&ograve;n khoảng 30% pin sẽ đột ngột tắt nguồn, sau khi cắm bộ sạc v&agrave;o v&agrave;i gi&acirc;y th&igrave; m&agrave;n h&igrave;nh sẽ hiển thị lại dung lượng pin 30% trước đ&oacute;, th&ocirc;ng tin được&nbsp;<a href=\"http://www.phonearena.com/news/iOS-10.1.1-reported-to-drain-users-batteries_id88354\" rel=\"nofollow\" target=\"_blank\" title=\"phonearena\" type=\"phonearena\">phonearena</a>&nbsp;đăng tải.</p>
\r\n\r\n
<p>Người d&ugrave;ng kh&aacute;c c&ograve;n gặp vấn đề nghi&ecirc;m trọng hơn, khi iPhone của họ bị giảm hơn 80% pin trong một đ&ecirc;m, v&agrave; ho&agrave;n to&agrave;n tắt nguồn v&agrave;o s&aacute;ng h&ocirc;m sau, khi cắm sạc v&agrave;o th&igrave; lại hiển thị ở mức 30% pin.</p>
\r\n\r\n
<p>Hiện lỗi n&agrave;y chỉ xuất hiện ở một số người d&ugrave;ng nhất định, v&igrave; vậy Apple vẫn chưa thừa nhận đ&acirc;y l&agrave; vấn đề g&acirc;y ra bởi iOS 10.1.1. Hy vọng nh&agrave; t&aacute;o sẽ t&igrave;m ra nguy&ecirc;n nh&acirc;n vấn đề v&agrave; sớm khắc phục.</p>
\r\n\r\n
<p>Cũng nhắc lại đ&ocirc;i ch&uacute;t về iOS 10.1.1, trong bản n&acirc;ng cấp n&agrave;y Apple tập trung cải thiện t&iacute;nh năng chăm s&oacute;c sức khỏe v&agrave; sửa lỗi c&aacute;c ứng dụng kh&ocirc;ng thể tiếp cận dữ liệu từ điện thoại để thống k&ecirc; cho người d&ugrave;ng. Ngo&agrave;i ra, kh&ocirc;ng c&oacute; bất kỳ t&iacute;nh năng mới n&agrave;o được th&ecirc;m v&agrave;o.</p>
\r\n', '1480399632_sac-pin-iphone77-636137797940677630_800x450.jpg', 'iOS 10.1.1 , Pin', 1, 'thegoididong.com', 22, 1, '2016-11-28 23:09:34', '2016-11-28 23:09:34'),
(11, 'Google phải khâm phục Samsung về khả năng tối ưu hóa Android 7.0', 'google-phai-kham-phuc-samsung-ve-kha-nang-toi-uu-hoa-android-70', 'Hoang Viet', '
<p>Google đ&atilde; tham gia v&agrave;o cuộc dua smartphone với Google Pixel được ra mắt v&agrave;o v&agrave;i th&aacute;ng trước. Mới đ&acirc;y, một Youtuber đ&atilde; c&oacute; cuộc thử nghiệm tốc độ giữa Google Pixel XL v&agrave; Galaxy S7. Để xem kết<', '
<p>Một Youtuber c&oacute; t&ecirc;n XEETECHCARE đ&atilde; c&oacute; 1 cuộc thử nghiệm nhỏ nhằm so s&aacute;nh tốc độ của 2 chiếc smartphone Android cao cấp nhất hiện tại đ&oacute; l&agrave; Google Pixel XL v&agrave; Galaxy S7 tr&ecirc;n nền tảng Android 7.0 Nougat. Cuộc thử nghiệm n&agrave;y bao gồm c&aacute;c phần test về tốc độ mở của c&aacute;c ứng dụng cũng như tr&ograve; chơi. T&ograve; m&ograve; kết quả ra sao qu&aacute; nhỉ.</p>
\r\n\r\n
<p><img alt=\"\" src=\"https://www.thegioididong.com/tin-tuc/google-phai-kham-phuc-samsung-ve-kha-nang-toi-uu-hoa-919330\" /></p>
\r\n\r\n
<p>Như đ&atilde; thấy, 2 chiếc điện thoại n&agrave;y kh&aacute; c&acirc;n t&agrave;i c&acirc;n sức. Google Pixel XL hơn Galaxy S7 ở 1 số dụng v&agrave; ngược lại. Tuy nhi&ecirc;n, nh&igrave;n chung th&igrave; Galaxy S7 vẫn vượt trội hơn so với ch&iacute;nh đứa con của Google. D&ugrave; c&oacute; lợi thế được sử dụng hệ sinh th&aacute;i Android gốc v&agrave; chip Snapdragon 821 nhưng về độ mượt tr&ecirc;n Android 7.0 th&igrave; c&oacute; lẽ Google phải thua Samsung về 1 bậc.</p>
\r\n', '1480399703_ggpixels7_800x450.jpg', 'iOS 10.1.1 , Pin', 1, 'thegoididong.com', 22, 1, '2016-11-28 23:09:49', '2016-11-28 23:09:49'),
(12, 'khuyễn mại mùa mua sắm cuối năm 2017', 'khuyen-mai-mua-mua-sam-cuoi-nam-2017', 'admin', '
<p>H&agrave;ng ng&agrave;n sản phẩm Đồ gia dụng Điện, Đồ d&ugrave;ng Nh&agrave; bếp đang được GIẢM GI&Aacute; SỐC trong ng&agrave;y Online Friday tại Megaplaza. Nhanh tay, cơ hội Mua sắm GI&Aacute; SI&Ecirc;U RẺ cuối c&ugrave;ng trong năm 2016. Si&ecirc;u', '
<p>H&agrave;ng ng&agrave;n sản phẩm Đồ gia dụng Điện, Đồ d&ugrave;ng Nh&agrave; bếp đang được GIẢM GI&Aacute; SỐC trong ng&agrave;y Online Friday tại Megaplaza. Nhanh tay, cơ hội Mua sắm GI&Aacute; SI&Ecirc;U RẺ cuối c&ugrave;ng trong năm 2016. Si&ecirc;u thị Megaplaza | Vui vẻ Mua sắm - Tiết kiệm chi ti&ecirc;u.</p>
\r\n', '1480404640_iphone-se-1_1240x698.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 23, 1, '2016-11-29 00:30:40', '2016-11-29 00:30:40'),
(13, 'khuyễn mại mùa mua sắm cuối năm 2017 1', 'khuyen-mai-mua-mua-sam-cuoi-nam-2017-1', 'admin', '
<p>H&agrave;ng ng&agrave;n sản phẩm Đồ gia dụng Điện, Đồ d&ugrave;ng Nh&agrave; bếp đang được GIẢM GI&Aacute; SỐC trong ng&agrave;y Online Friday tại Megaplaza. Nhanh tay, cơ hội Mua sắm GI&Aacute; SI&Ecirc;U RẺ cuối c&ugrave;ng trong năm 2016. Si&ecirc;u', '
<p>H&agrave;ng ng&agrave;n sản phẩm Đồ gia dụng Điện, Đồ d&ugrave;ng Nh&agrave; bếp đang được GIẢM GI&Aacute; SỐC trong ng&agrave;y Online Friday tại Megaplaza. Nhanh tay, cơ hội Mua sắm GI&Aacute; SI&Ecirc;U RẺ cuối c&ugrave;ng trong năm 2016. Si&ecirc;u thị Megaplaza | Vui vẻ Mua sắm - Tiết kiệm chi ti&ecirc;u.</p>
\r\n', '1480404648_iphone-se-1_1240x698.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 23, 1, '2016-11-29 00:30:48', '2016-11-29 00:30:48'),
(14, 'khuyễn mại mùa mua sắm cuối năm 12/2017 ', 'khuyen-mai-mua-mua-sam-cuoi-nam-122017', 'admin', '
<p>H&agrave;ng ng&agrave;n sản phẩm Đồ gia dụng Điện, Đồ d&ugrave;ng Nh&agrave; bếp đang được GIẢM GI&Aacute; SỐC trong ng&agrave;y Online Friday tại Megaplaza. Nhanh tay, cơ hội Mua sắm GI&Aacute; SI&Ecirc;U RẺ cuối c&ugrave;ng trong năm 2016. Si&ecirc;u', '
<p>H&agrave;ng ng&agrave;n sản phẩm Đồ gia dụng Điện, Đồ d&ugrave;ng Nh&agrave; bếp đang được GIẢM GI&Aacute; SỐC trong ng&agrave;y Online Friday tại Megaplaza. Nhanh tay, cơ hội Mua sắm GI&Aacute; SI&Ecirc;U RẺ cuối c&ugrave;ng trong năm 2016. Si&ecirc;u thị Megaplaza | Vui vẻ Mua sắm - Tiết kiệm chi ti&ecirc;u.</p>
\r\n', '1480404656_iphone-se-1_1240x698.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 23, 1, '2016-11-29 00:30:56', '2016-11-29 00:30:56');
-- --------------------------------------------------------
--
-- Cấu trúc bảng cho bảng `oders`
--
CREATE TABLE `oders` (
`id` int(10) UNSIGNED NOT NULL,
`c_id` int(10) UNSIGNED NOT NULL,
`qty` int(11) NOT NULL,
`sub_total` float NOT NULL,
`total` float NOT NULL,
`status` int(11) NOT NULL,
`type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
`note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Đang đổ dữ liệu cho bảng `oders`
--
INSERT INTO `oders` (`id`, `c_id`, `qty`, `sub_total`, `total`, `status`, `type`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 24980000, 24980000, 1, 'cod', 'ok giao hang nhanh nhat co the', '2016-12-01 19:52:14', '2016-12-05 01:53:57'),
(2, 1, 2, 24980000, 24980000, 1, 'cod', 'sad', '2016-12-01 19:55:27', '2016-12-25 21:51:13'),
(6, 1, 2, 24980000, 24980000, 1, 'cod', 'ok be le', '2016-12-01 20:32:39', '2016-12-05 01:54:07'),
(7, 1, 1, 15890000, 15890000, 1, 'cod', 'asd', '2016-12-06 02:39:35', '2016-12-25 21:51:24'),
(8, 1, 2, 31780000, 31780000, 1, 'cod', 'nhan hang nhanh', '2016-12-17 03:52:18', '2016-12-25 21:51:28'),
(9, 1, 1, 15890000, 15890000, 1, 'paypal', 'PAY-39X56047VY8578917LBKSMVA', '2016-12-17 04:50:08', '2016-12-17 04:50:08'),
(10, 1, 2, 34380000, 34380000, 1, 'cod', 'ghi chu', '2016-12-17 04:53:28', '2016-12-25 21:51:35'),
(11, 1, 1, 15890000, 15890000, 1, 'cod', '                    \r\n                  ', '2016-12-17 04:54:11', '2016-12-25 21:51:42'),
(12, 1, 2, 24480000, 24480000, 1, 'paypal', 'PAY-5DH63736F1042400PLBKUBIY', '2016-12-17 06:42:29', '2016-12-17 06:42:29'),
(13, 2, 1, 15890000, 15890000, 1, 'cod', '                    \r\n                  viet@test.com', '2016-12-25 21:47:13', '2016-12-25 21:51:18'),
(14, 2, 1, 15890000, 15890000, 1, 'cod', '                    \r\n                  ', '2016-12-25 21:50:44', '2016-12-25 21:51:56');
-- --------------------------------------------------------
--
-- Cấu trúc bảng cho bảng `oders_detail`
--
CREATE TABLE `oders_detail` (
`id` int(10) UNSIGNED NOT NULL,
`pro_id` int(10) UNSIGNED NOT NULL,
`qty` int(11) NOT NULL,
`o_id` int(10) UNSIGNED NOT NULL,
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Đang đổ dữ liệu cho bảng `oders_detail`
--
INSERT INTO `oders_detail` (`id`, `pro_id`, `qty`, `o_id`, `created_at`, `updated_at`) VALUES
(1, 26, 1, 1, '2016-12-01 19:52:14', '2016-12-01 19:52:14'),
(2, 24, 1, 1, '2016-12-01 19:52:14', '2016-12-01 19:52:14'),
(3, 26, 1, 2, '2016-12-01 19:55:27', '2016-12-01 19:55:27'),
(4, 24, 1, 2, '2016-12-01 19:55:27', '2016-12-01 19:55:27'),
(10, 35, 1, 6, '2016-12-01 20:32:39', '2016-12-01 20:32:39'),
(11, 36, 1, 6, '2016-12-01 20:32:39', '2016-12-01 20:32:39'),
(12, 23, 1, 7, '2016-12-06 02:39:35', '2016-12-06 02:39:35'),
(13, 22, 2, 8, '2016-12-17 03:52:19', '2016-12-17 03:52:19'),
(14, 23, 1, 9, '2016-12-17 04:50:09', '2016-12-17 04:50:09'),
(15, 23, 1, 10, '2016-12-17 04:53:28', '2016-12-17 04:53:28'),
(16, 35, 1, 10, '2016-12-17 04:53:28', '2016-12-17 04:53:28'),
(17, 23, 1, 11, '2016-12-17 04:54:11', '2016-12-17 04:54:11'),
(18, 35, 1, 12, '2016-12-17 06:42:29', '2016-12-17 06:42:29'),
(19, 24, 1, 12, '2016-12-17 06:42:29', '2016-12-17 06:42:29'),
(20, 23, 1, 13, '2016-12-25 21:47:13', '2016-12-25 21:47:13'),
(21, 23, 1, 14, '2016-12-25 21:50:44', '2016-12-25 21:50:44');
-- --------------------------------------------------------
--
-- Cấu trúc bảng cho bảng `password_resets`
--
CREATE TABLE `password_resets` (
`email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Đang đổ dữ liệu cho bảng `password_resets`
--
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sp@gmail.com', '4ef83492c9675a69bf1f1660f0965653a0864f47a3b6d161fecba7cb12c131b4', '2016-12-06 03:47:29');
-- --------------------------------------------------------
--
-- Cấu trúc bảng cho bảng `products`
--
CREATE TABLE `products` (
`id` int(10) UNSIGNED NOT NULL,
`name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`promo1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`promo2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`promo3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`packet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`images` text COLLATE utf8_unicode_ci NOT NULL,
`r_intro` text COLLATE utf8_unicode_ci NOT NULL,
`review` text COLLATE utf8_unicode_ci NOT NULL,
`tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`price` float NOT NULL,
`status` int(11) NOT NULL,
`cat_id` int(10) UNSIGNED NOT NULL,
`user_id` int(10) UNSIGNED NOT NULL,
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Đang đổ dữ liệu cho bảng `products`
--
INSERT INTO `products` (`id`, `name`, `slug`, `intro`, `promo1`, `promo2`, `promo3`, `packet`, `images`, `r_intro`, `review`, `tag`, `price`, `status`, `cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(22, 'Galaxy S7 EDGE', 'galaxy-s7-edge', 'Exynos 8890, 5.1 inch (1440 x 2560 pixels), Android 6.0 (Marshmallow)', 'Trả góp 0%', 'Hoặc Tặng Vali Lock & Lock ', 'Hoặc Tặng Combo Quà (Bao da S-View + Tai nghe Level Active)', ' Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim ', '1480005553_635918156798139185_s7-g2.jpg', '
<p>Ch&iacute;nh thức ra mắt tại sự kiện MWC 2016 tổ chức tại Barcelona (T&acirc;y Ban Nha), smartphone Samsung Galaxy S7 sở hữu nhiều sự thay đổi nổi bật ở cả thiết kế, cấu h&igrave;nh v&agrave; những t&iacute;nh năng đi k&egrave;m. Chiếc điện thoại n&agrave;y hứa hẹn sẽ tạo n&ecirc;n sự b&ugrave;ng nổ trong ph&acirc;n kh&uacute;c cao cấp v&agrave; mang lại những th&agrave;nh c&ocirc;ng tiếp theo cho h&atilde;ng điện thoại H&agrave;n Quốc.</p>
\r\n', '
<p>Ch&iacute;nh thức ra mắt tại sự kiện MWC 2016 tổ chức tại Barcelona (T&acirc;y Ban Nha), smartphone&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-s7\" target=\"_blank\"><strong>Samsung Galaxy S7</strong></a>&nbsp;sở hữu nhiều sự thay đổi nổi bật ở cả thiết kế, cấu h&igrave;nh v&agrave; những t&iacute;nh năng đi k&egrave;m.&nbsp;Chiếc điện thoại n&agrave;y hứa hẹn sẽ tạo n&ecirc;n sự b&ugrave;ng nổ trong ph&acirc;n kh&uacute;c cao cấp v&agrave; mang lại những th&agrave;nh c&ocirc;ng tiếp theo cho h&atilde;ng điện thoại H&agrave;n Quốc.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"Samsung Galaxy S7\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/DH/samsung/galaxy-s7/samsung-galaxy-s7-a.jpg\" /></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>Ng&ocirc;n ngữ thiết kế quen thuộc, bổ sung khả năng chống nước hiệu quả</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><img alt=\"Samsung Galaxy S7 chống nước hiệu quả\" longdesc=\"http://fptshop.com.vn/dien-thoai/Samsung%20Galaxy%20S7\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/DH/samsung/galaxy-s7/galaxy-s7-1.jpg\" title=\"Samsung Galaxy S7\" /></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>Sở hữu vẻ ngo&agrave;i mang nhiều n&eacute;t ti&ecirc;u biểu của người tiền nhiệm S6 nhưng&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-s7\" target=\"_blank\"><strong>Galaxy S7</strong></a>&nbsp;cũng c&oacute; những điểm nhấn mới mẻ của ri&ecirc;ng m&igrave;nh, c&oacute; thể&nbsp;kể đến như mặt lưng được bo cong hơn gi&uacute;p người d&ugrave;ng cầm giữ dễ d&agrave;ng hệ thống camera được l&agrave;m gọn v&agrave; bớt lồi hơn. Đặc biệt, khả năng chống nước v&agrave; bụi đạt ti&ecirc;u chuẩn IP68 sẽ mang đến sự y&ecirc;n t&acirc;m khi sử dụng m&aacute;y trong điều kiện ẩm ướt v&agrave; gi&uacute;p người d&ugrave;ng vệ sinh cho m&aacute;y dễ d&agrave;ng hơn.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>M&agrave;n h&igrave;nh Super AMOLED độ ph&acirc;n giải 2K sắc n&eacute;t</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><img alt=\"Màn hình Samsung Galaxy S7 Super AMOLED\" longdesc=\"http://fptshop.com.vn/dien-thoai/Samsung%20Galaxy%20S7\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/DH/samsung/galaxy-s7/galaxy-s7-2.jpg\" title=\"Samsung Galaxy S7\" /></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>M&agrave;n h&igrave;nh của Galaxy S7 sẽ c&oacute; k&iacute;ch thước 5,1 inch với độ ph&acirc;n giải 2K (2560 x 1440 pixel), cho mật độ điểm ảnh l&ecirc;n đến 576 ppi, gi&uacute;p t&aacute;i hiện h&igrave;nh ảnh với độ sắc n&eacute;t cực cao ngay trước mắt người d&ugrave;ng. C&ugrave;ng với đ&oacute;, c&ocirc;ng nghệ m&agrave;n h&igrave;nh Super AMOLED sẽ mang đến những khung h&igrave;nh với m&agrave;u sắc tươi tắn, sống động, c&ugrave;ng khả năng tiết kiệm điện năng ấn tượng. Nhờ đ&oacute;, Samsung đ&atilde; thiết kế th&ecirc;m&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/chuc-nang-always-on-se-chi-danh-rieng-cho-galaxy-s7-37568\" target=\"_blank\">t&iacute;nh năng Always On cho Galaxy S7</a>&nbsp;gi&uacute;p người d&ugrave;ng đọc được c&aacute;c th&ocirc;ng b&aacute;o m&agrave; kh&ocirc;ng phải qua thao t&aacute;c mở s&aacute;ng m&agrave;n h&igrave;nh.</p>
\r\n\r\n
<h3>&nbsp;</h3>
\r\n\r\n
<h3><strong>Vi xử l&yacute; mới, sức mạnh mới</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><img alt=\"Vi xử lý Samsung Galaxy S7\" longdesc=\"http://fptshop.com.vn/dien-thoai/Samsung%20Galaxy%20S7\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/DH/samsung/galaxy-s7/galaxy-s7-3.jpg\" title=\"Samsung Galaxy S7\" /></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-s7\" target=\"_blank\"><strong>Điện thoại Galaxy S7</strong></a>&nbsp;sẽ c&oacute; 2 phi&ecirc;n bản sử dụng 2 vi xử l&yacute; kh&aacute;c nhau l&agrave; Qualcomm Snapdragon 820 v&agrave; Exynos 8890 &ndash; cả hai đều l&agrave; những con chip cao cấp thế hệ mới sở hữu hiệu suất vượt trội, gi&uacute;p m&aacute;y xử l&yacute; ho&agrave;n hảo mọi y&ecirc;u cầu t&aacute;c vụ d&ugrave; &ldquo;nặng nề&rdquo; nhất. Th&ecirc;m nữa, dung lượng RAM được n&acirc;ng cấp l&ecirc;n mức 4GB sẽ gi&uacute;p x&oacute;a đi nỗi băn khoăn về hiệu quả thực thi đa nhiệm. Một điểm tuyệt vời kh&aacute;c l&agrave; việc&nbsp;<strong>Galaxy S7</strong>&nbsp;sẽ hỗ trợ thẻ nhớ ngo&agrave;i để người d&ugrave;ng mở rộng kh&ocirc;ng gian lưu trữ.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>Samsung S7 được trang bị camera chụp h&igrave;nh ấn tượng hơn</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><img alt=\"Camera Samsung Galaxy S7\" longdesc=\"http://fptshop.com.vn/dien-thoai/Samsung%20Galaxy%20S7\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/DH/samsung/galaxy-s7/galaxy-s7-4.jpg\" title=\"Samsung Galaxy S7\" /></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>Camera của Galaxy S7 cũng sẽ c&oacute; những n&acirc;ng cấp đ&aacute;ng kể. D&ugrave; độ ph&acirc;n giải được giảm xuống 12MP (so với 16MP tr&ecirc;n Galaxy S6), tuy nhi&ecirc;n camera n&agrave;y sẽ c&oacute; khẩu độ f/1.7 cho khả năng thu s&aacute;ng tuyệt vời hơn bao giờ hết. Ngo&agrave;i ra, t&iacute;nh năng chống rung quang học OIS gi&uacute;p m&aacute;y ảnh chụp nhanh hơn, &iacute;t nh&ograve;e h&igrave;nh hơn trong điều kiện thiếu s&aacute;ng. Chưa hết, Samsung c&ograve;n sử dụng một cảm biến ảnh mới tự động lấy n&eacute;t điểm ảnh k&eacute;p (Dual Pixel) tương tự cảm biến của c&aacute;c m&aacute;y DSLR của Canon, do vậy h&igrave;nh ảnh sẽ bớt nhiễu, m&agrave;u sắc rực rỡ hơn.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong>Nền tảng điều h&agrave;nh mới cho thời lượng pin tốt hơn</strong></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><img alt=\"Dung lượng pin Samsung Galaxy S7\" longdesc=\"http://fptshop.com.vn/dien-thoai/Samsung%20Galaxy%20S7\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/DH/samsung/galaxy-s7/galaxy-s7-5.jpg\" title=\"Samsung Galaxy S7\" /></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>Hệ điều h&agrave;nh Android 6.0 Marshmallow mới nhất hiện nay kết hợp với c&ocirc;ng nghệ m&agrave;n h&igrave;nh Super AMOLED v&agrave; vi xử l&yacute; tiết kiệm điện năng c&ograve;n gi&uacute;p m&aacute;y c&oacute; được thời lượng pin l&acirc;u hơn, c&oacute; thể l&ecirc;n đến 2 ng&agrave;y ở điều kiện sử dụng th&ocirc;ng thường. C&ocirc;ng nghệ sạc nhanh sẽ gi&uacute;p r&uacute;t ngắn đ&aacute;ng kể thời gian chờ đợi của người d&ugrave;ng, ngo&agrave;i ra Galaxy S7 c&ograve;n được trang bị t&iacute;nh năng sạc kh&ocirc;ng d&acirc;y v&agrave; đặc biệt l&agrave; tản nhiệt bằng chất lỏng.</p>
\r\n', 'Galaxy S7, Galaxy S7,Galaxy S7', 15890000, 1, 4, 1, '2016-11-24 09:39:13', '2016-11-28 18:02:19'),
(23, 'Galaxy NOTE 7', 'galaxy-note-7', 'Exynos 8890, 5.1 inch (1440 x 2560 pixels), Android 6.0 (Marshmallow)', 'Trả góp 0%', 'Hoặc Tặng Vali Lock & Lock ', 'Hoặc Tặng Combo Quà (Bao da S-View + Tai nghe Level Active)', ' Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim ', '1480005568_635918156798139185_s7-g2.jpg', '
<p>Ch&iacute;nh thức ra mắt tại sự kiện MWC 2016 tổ chức tại Barcelona (T&acirc;y Ban Nha), smartphone Samsung Galaxy S7 sở hữu nhiều sự thay đổi nổi bật ở cả thiết kế, cấu h&igrave;nh v&agrave; những t&iacute;nh năng đi k&egrave;m. Chiếc điện thoại n&agrave;y hứa hẹn sẽ tạo n&ecirc;n sự b&ugrave;ng nổ trong ph&acirc;n kh&uacute;c cao cấp v&agrave; mang lại những th&agrave;nh c&ocirc;ng tiếp theo cho h&atilde;ng điện thoại H&agrave;n Quốc.</p>
\r\n', '
<p>Ch&iacute;nh thức ra mắt tại sự kiện MWC 2016 tổ chức tại Barcelona (T&acirc;y Ban Nha), smartphone&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-s7\" target=\"_blank\"><strong>Samsung Galaxy S7</strong></a>&nbsp;sở hữu nhiều sự thay đổi nổi bật ở cả thiết kế, cấu h&igrave;nh v&agrave; những t&iacute;nh năng đi k&egrave;m.&nbsp;Chiếc điện thoại n&agrave;y hứa hẹn sẽ tạo n&ecirc;n sự b&ugrave;ng nổ trong ph&acirc;n kh&uacute;c cao cấp v&agrave; mang lại những th&agrave;nh c&ocirc;ng tiếp theo cho h&atilde;ng điện thoại H&agrave;n Quốc.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"Samsung Galaxy S7\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/DH/samsung/galaxy-s7/samsung-galaxy-s7-a.jpg\" /></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>Ng&ocirc;n ngữ thiết kế quen thuộc, bổ sung khả năng chống nước hiệu quả</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><img alt=\"Samsung Galaxy S7 chống nước hiệu quả\" longdesc=\"http://fptshop.com.vn/dien-thoai/Samsung%20Galaxy%20S7\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/DH/samsung/galaxy-s7/galaxy-s7-1.jpg\" title=\"Samsung Galaxy S7\" /></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>Sở hữu vẻ ngo&agrave;i mang nhiều n&eacute;t ti&ecirc;u biểu của người tiền nhiệm S6 nhưng&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-s7\" target=\"_blank\"><strong>Galaxy S7</strong></a>&nbsp;cũng c&oacute; những điểm nhấn mới mẻ của ri&ecirc;ng m&igrave;nh, c&oacute; thể&nbsp;kể đến như mặt lưng được bo cong hơn gi&uacute;p người d&ugrave;ng cầm giữ dễ d&agrave;ng hệ thống camera được l&agrave;m gọn v&agrave; bớt lồi hơn. Đặc biệt, khả năng chống nước v&agrave; bụi đạt ti&ecirc;u chuẩn IP68 sẽ mang đến sự y&ecirc;n t&acirc;m khi sử dụng m&aacute;y trong điều kiện ẩm ướt v&agrave; gi&uacute;p người d&ugrave;ng vệ sinh cho m&aacute;y dễ d&agrave;ng hơn.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>M&agrave;n h&igrave;nh Super AMOLED độ ph&acirc;n giải 2K sắc n&eacute;t</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><img alt=\"Màn hình Samsung Galaxy S7 Super AMOLED\" longdesc=\"http://fptshop.com.vn/dien-thoai/Samsung%20Galaxy%20S7\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/DH/samsung/galaxy-s7/galaxy-s7-2.jpg\" title=\"Samsung Galaxy S7\" /></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>M&agrave;n h&igrave;nh của Galaxy S7 sẽ c&oacute; k&iacute;ch thước 5,1 inch với độ ph&acirc;n giải 2K (2560 x 1440 pixel), cho mật độ điểm ảnh l&ecirc;n đến 576 ppi, gi&uacute;p t&aacute;i hiện h&igrave;nh ảnh với độ sắc n&eacute;t cực cao ngay trước mắt người d&ugrave;ng. C&ugrave;ng với đ&oacute;, c&ocirc;ng nghệ m&agrave;n h&igrave;nh Super AMOLED sẽ mang đến những khung h&igrave;nh với m&agrave;u sắc tươi tắn, sống động, c&ugrave;ng khả năng tiết kiệm điện năng ấn tượng. Nhờ đ&oacute;, Samsung đ&atilde; thiết kế th&ecirc;m&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/chuc-nang-always-on-se-chi-danh-rieng-cho-galaxy-s7-37568\" target=\"_blank\">t&iacute;nh năng Always On cho Galaxy S7</a>&nbsp;gi&uacute;p người d&ugrave;ng đọc được c&aacute;c th&ocirc;ng b&aacute;o m&agrave; kh&ocirc;ng phải qua thao t&aacute;c mở s&aacute;ng m&agrave;n h&igrave;nh.</p>
\r\n\r\n
<h3>&nbsp;</h3>
\r\n\r\n
<h3><strong>Vi xử l&yacute; mới, sức mạnh mới</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><img alt=\"Vi xử lý Samsung Galaxy S7\" longdesc=\"http://fptshop.com.vn/dien-thoai/Samsung%20Galaxy%20S7\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/DH/samsung/galaxy-s7/galaxy-s7-3.jpg\" title=\"Samsung Galaxy S7\" /></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-s7\" target=\"_blank\"><strong>Điện thoại Galaxy S7</strong></a>&nbsp;sẽ c&oacute; 2 phi&ecirc;n bản sử dụng 2 vi xử l&yacute; kh&aacute;c nhau l&agrave; Qualcomm Snapdragon 820 v&agrave; Exynos 8890 &ndash; cả hai đều l&agrave; những con chip cao cấp thế hệ mới sở hữu hiệu suất vượt trội, gi&uacute;p m&aacute;y xử l&yacute; ho&agrave;n hảo mọi y&ecirc;u cầu t&aacute;c vụ d&ugrave; &ldquo;nặng nề&rdquo; nhất. Th&ecirc;m nữa, dung lượng RAM được n&acirc;ng cấp l&ecirc;n mức 4GB sẽ gi&uacute;p x&oacute;a đi nỗi băn khoăn về hiệu quả thực thi đa nhiệm. Một điểm tuyệt vời kh&aacute;c l&agrave; việc&nbsp;<strong>Galaxy S7</strong>&nbsp;sẽ hỗ trợ thẻ nhớ ngo&agrave;i để người d&ugrave;ng mở rộng kh&ocirc;ng gian lưu trữ.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>Samsung S7 được trang bị camera chụp h&igrave;nh ấn tượng hơn</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><img alt=\"Camera Samsung Galaxy S7\" longdesc=\"http://fptshop.com.vn/dien-thoai/Samsung%20Galaxy%20S7\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/DH/samsung/galaxy-s7/galaxy-s7-4.jpg\" title=\"Samsung Galaxy S7\" /></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>Camera của Galaxy S7 cũng sẽ c&oacute; những n&acirc;ng cấp đ&aacute;ng kể. D&ugrave; độ ph&acirc;n giải được giảm xuống 12MP (so với 16MP tr&ecirc;n Galaxy S6), tuy nhi&ecirc;n camera n&agrave;y sẽ c&oacute; khẩu độ f/1.7 cho khả năng thu s&aacute;ng tuyệt vời hơn bao giờ hết. Ngo&agrave;i ra, t&iacute;nh năng chống rung quang học OIS gi&uacute;p m&aacute;y ảnh chụp nhanh hơn, &iacute;t nh&ograve;e h&igrave;nh hơn trong điều kiện thiếu s&aacute;ng. Chưa hết, Samsung c&ograve;n sử dụng một cảm biến ảnh mới tự động lấy n&eacute;t điểm ảnh k&eacute;p (Dual Pixel) tương tự cảm biến của c&aacute;c m&aacute;y DSLR của Canon, do vậy h&igrave;nh ảnh sẽ bớt nhiễu, m&agrave;u sắc rực rỡ hơn.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong>Nền tảng điều h&agrave;nh mới cho thời lượng pin tốt hơn</strong></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><img alt=\"Dung lượng pin Samsung Galaxy S7\" longdesc=\"http://fptshop.com.vn/dien-thoai/Samsung%20Galaxy%20S7\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/DH/samsung/galaxy-s7/galaxy-s7-5.jpg\" title=\"Samsung Galaxy S7\" /></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>Hệ điều h&agrave;nh Android 6.0 Marshmallow mới nhất hiện nay kết hợp với c&ocirc;ng nghệ m&agrave;n h&igrave;nh Super AMOLED v&agrave; vi xử l&yacute; tiết kiệm điện năng c&ograve;n gi&uacute;p m&aacute;y c&oacute; được thời lượng pin l&acirc;u hơn, c&oacute; thể l&ecirc;n đến 2 ng&agrave;y ở điều kiện sử dụng th&ocirc;ng thường. C&ocirc;ng nghệ sạc nhanh sẽ gi&uacute;p r&uacute;t ngắn đ&aacute;ng kể thời gian chờ đợi của người d&ugrave;ng, ngo&agrave;i ra Galaxy S7 c&ograve;n được trang bị t&iacute;nh năng sạc kh&ocirc;ng d&acirc;y v&agrave; đặc biệt l&agrave; tản nhiệt bằng chất lỏng.</p>
\r\n', 'Galaxy S7, Galaxy S7,Galaxy S7', 15890000, 1, 4, 1, '2016-11-24 09:39:28', '2016-11-24 09:39:28'),
(24, 'OPPO F1S', 'oppo-f1s', 'Apple A10 mới, 2 cammera sau,Ram 3g, 5.5 inch (1920 x 1080 pixels)', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Trả góp 0% (Chỉ áp dụng cho thẻ tín dụng) ', 'Tặng Voucher 500.000đ mua Apple Watch', '', '1480650741_oppo-f1s-hero-400x460-400x460.png', '
<p>Với những t&iacute;nh năng vượt trội về camera, iPhone 7 Plus l&agrave; sản phẩm nổi bật c&ograve;n hơn cả iPhone khi c&ugrave;ng ra mắt, khả năng chụp ảnh zoom 10x với camera k&eacute;p v&agrave; chụp ch&acirc;n dung xo&aacute; ph&ocirc;ng đ&atilde; thuyết phục người d&ugrave;ng một c&aacute;ch ngọt ng&agrave;o nhất. Kh&ocirc;ng chỉ vậy, n&acirc;ng cấp về cấu h&igrave;nh, &acirc;m thanh, thiết kế tinh tế hơn v&agrave; phi&ecirc;n bản bộ nhớ l&ecirc;n đến 128 GB cũng khiến đ&acirc;y l&agrave; sản phẩm đ&aacute;ng mua nhất trong lần ra mắt loạt phi&ecirc;n bản mới của Apple</p>
\r\n', '
<h3><strong>Thiết kế ho&agrave;n thiện hơn</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"iphone-7-plus-128gb\" longdesc=\"http://fptshop.com.vn/dien-thoai/iphone-7-plus-128gb\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/iphone-7-plus-128gb/iphone-7-plus-128gb/iphone-7-plus-128gb-3.jpg\" title=\"iphone-7-plus-128gb\" /></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>Về thiết kế, vẫn l&agrave; nh&ocirc;m nguy&ecirc;n khối liền lạc nhưng iPhone 7 Plus đ&atilde; c&oacute; những n&eacute;t thay đổi tinh tế khi đưa hai dải ăng-ten l&ecirc;n s&aacute;t hai cạnh tr&ecirc;n dưới, đồng thời bỏ đi jack cắm tai nghe 3.5 mm. Điểm nhấn ấn tượng nhất về ngoại h&igrave;nh của iPhone 7 Plus l&agrave; việc Apple bỏ đi m&agrave;u x&aacute;m kh&ocirc;ng gian từng rất được ưa chuộng tr&ecirc;n c&aacute;c model cũ để bổ sung th&ecirc;m t&ugrave;y chọn m&agrave;u đen mờ v&agrave; đen b&oacute;ng Jet Black (chỉ c&oacute; tr&ecirc;n iPhone 7 Plus bản 128/256 GB).</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>M&agrave;n h&igrave;nh rộng 5.5 inch, s&aacute;ng hơn, nhiều m&agrave;u sắc hơn</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"iphone-7-plus-128gb\" longdesc=\"http://fptshop.com.vn/dien-thoai/iphone-7-plus-128gb\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/iphone-7-plus-128gb/iphone-7-plus-128gb/iphone-7-plus-128gb-9.jpg\" title=\"iphone-7-plus-128gb\" /></p>
\r\n\r\n
<p>iPhone 7 Plus cũng c&oacute; m&agrave;n h&igrave;nh 5.5 inch độ ph&acirc;n giải 1080x1920 pixels tương tự iPhone 6s Plus, như vậy về k&iacute;ch thước tổng thể ch&uacute;ng ta kh&ocirc;ng c&oacute; g&igrave; thay đổi. Tuy nhi&ecirc;n, tấm nền m&agrave;n h&igrave;nh mới đ&atilde; được bổ sung th&ecirc;m 25% độ s&aacute;ng, đạt mức cao nhất 625 nits c&ugrave;ng khả năng t&aacute;i tạo m&agrave;u sắc, gam m&agrave;u rộng hơn v&agrave; hỗ trợ 3D Touch.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>N&uacute;t Home ho&agrave;n to&agrave;n mới</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"iphone-7-plus-128gb\" longdesc=\"http://fptshop.com.vn/dien-thoai/iphone-7-plus-128gb\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/iphone-7-plus-128gb/iphone-7-plus-128gb/iphone-7-plus-128gb-6.jpg\" title=\"iphone-7-plus-128gb\" /></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>Với chiếc điện thoại thế hệ mới, Apple đ&atilde; &quot;xo&aacute; sổ&quot; ho&agrave;n to&agrave;n n&uacute;t bấm vật l&yacute; tr&ecirc;n m&agrave;n h&igrave;nh iPhone. Giờ đ&acirc;y n&uacute;t Home ở vị tr&iacute; cũ đ&atilde; trở th&agrave;nh cảm ứng, khi bạn nhấn xuống n&oacute; vẫn cảm nhận được lực nhấn v&agrave; sẽ rung nhẹ để bạn biết rằng bạn đ&atilde; tương t&aacute;c. Apple đ&atilde; sử dụng Taptic Engine tr&ecirc;n Force Touch của Macbook cho chiếc iPhone mới n&agrave;y. Mặc d&ugrave; vậy ph&iacute;m Home vẫn c&oacute; cảm biến v&acirc;n tay Touch ID v&agrave; t&iacute;ch hợp nhiều t&iacute;nh năng bảo mật.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>Camera chất lượng đột ph&aacute; như m&aacute;y ảnh chuy&ecirc;n nghiệp</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"iphone-7-plus-128gb\" longdesc=\"http://fptshop.com.vn/dien-thoai/iphone-7-plus-128gb\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/iphone-7-plus-128gb/iphone-7-plus-128gb/iphone-7-plus-128gb-5.jpg\" title=\"iphone-7-plus-128gb\" /></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>iPhone 7 Plus đi k&egrave;m với một camera k&eacute;p độ ph&acirc;n giải đồng thời 12 MP, trong số đ&oacute; c&oacute; một ống k&iacute;nh g&oacute;c rộng khẩu độ l&ecirc;n đến f/1.8 v&agrave; một ống k&iacute;nh zoom (tele) l&ecirc;n đến 10x, c&ugrave;ng t&iacute;nh năng ổn định h&igrave;nh ảnh quang học tự động.&nbsp;N&oacute; cũng bao gồm một đ&egrave;n flash 2 t&ocirc;ng m&agrave;u v&agrave; đ&egrave;n flash quad-LED. Camera hỗ trợ quay film 4K 60fps, chụp x&oacute;a ph&ocirc;ng, chụp trước lấy n&eacute;t sau như một m&aacute;y ảnh chuy&ecirc;n nghiệp. Camera trước độ ph&acirc;n giải 7 MP, chụp selfie tốt hơn v&agrave; tự động chống rung. B&ecirc;n cạnh đ&oacute;, iOS 10 cũng cho ph&eacute;p người d&ugrave;ng iPhone 7 Plus chỉnh sửa, chọn lựa ảnh từ Live Photos, lưu ảnh ở định dạng RAW.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>T&iacute;nh năng chống nước tiện lợi</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"iphone-7-plus-128gb\" longdesc=\"http://fptshop.com.vn/dien-thoai/iphone-7-plus-128gb\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/iphone-7-plus-128gb/iphone-7-plus-128gb/iphone-7-plus-128gb-8.jpg\" title=\"iphone-7-plus-128gb\" /></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>C&oacute; thể n&oacute;i t&iacute;nh năng chống nước l&agrave; điều l&agrave;m h&agrave;i l&ograve;ng nhất c&aacute;c t&iacute;n đồ nh&agrave; T&aacute;o. Với ti&ecirc;u chuẩn chống nước IP67 sẽ gi&uacute;p iPhone mới c&oacute; thể sống ở độ s&acirc;u 1 m&eacute;t nước trong 30 ph&uacute;t, vậy l&agrave; từ nay bạn sẽ qu&ecirc;n đi nỗi lo về thấm nước tr&ecirc;n iPhone 7 Plus khi đi trong trời mưa hay lỡ tay rớt nước.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>Hiệu năng vượt trội, lưu trữ thoải m&aacute;i</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"iphone-7-plus-128gb\" longdesc=\"http://fptshop.com.vn/dien-thoai/iphone-7-plus-128gb\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/iphone-7-plus-128gb/iphone-7-plus-128gb/iphone-7-plus-128gb-1.jpg\" title=\"iphone-7-plus-128gb\" /></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>iPhone 7 Plus sử dụng chip A10 Fusion 4 l&otilde;i, 64-bit với tốc độ cực nhanh. Apple c&ocirc;ng bố con chip n&agrave;y c&oacute; hiệu năng xử l&yacute; cao hơn 40% so với chip A9 v&agrave; gấp 2 lần so với chip A8. Đặc biệt l&agrave; n&oacute; c&ograve;n cao gấp 120 lần so với iPhone đời đầu. Đi c&ugrave;ng đ&oacute; l&agrave; sự n&acirc;ng cấp về bộ nhớ trong, phi&ecirc;n bản 16 GB trước đ&acirc;y đ&atilde; bị loại bỏ, thay v&agrave;o đ&oacute; ch&uacute;ng ta sẽ c&oacute; bộ nhớ trong 128 GB ở phi&ecirc;n bản n&agrave;y để thoải m&aacute;i lưu trữ.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>&Acirc;m thanh sống động c&ugrave;ng loa stereo</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"iphone-7-plus-128gb\" longdesc=\"http://fptshop.com.vn/dien-thoai/iphone-7-plus-128gb\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/iphone-7-plus-128gb/iphone-7-plus-128gb/iphone-7-plus-128gb-7.jpg\" title=\"iphone-7-plus-128gb\" /></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>Loa ngo&agrave;i tr&ecirc;n iPhone 7 Plus bất ngờ được n&acirc;ng cấp khi từ dạng đơn l&ecirc;n loa k&eacute;p Stereo, với một loa nằm ở cạnh đ&aacute;y v&agrave; một nằm ở cạnh tr&ecirc;n, cho &acirc;m lượng sống động gấp hai lần tr&ecirc;n iPhone 6s Plus.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong>Tăng thời lượng sử dụng pin</strong></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>Theo c&ocirc;ng bố từ Apple, iPhone 7 Plus c&oacute; khả năng sử dụng li&ecirc;n tục trong thời gian hơn 1 ng&agrave;y, với 60 giờ lướt web kh&ocirc;ng d&acirc;y v&agrave; 13 giờ sử dụng mạng LTE. Tăng hơn so với iPhone 6s Plus v&agrave; đảm bảo sử dụng cho cả ng&agrave;y d&agrave;i.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><em>Lưu &yacute;: B&agrave;i viết v&agrave; h&igrave;nh ảnh chỉ c&oacute; t&iacute;nh chất tham khảo v&igrave; cấu h&igrave;nh v&agrave; đặc t&iacute;nh sản phẩm c&oacute; thể thay đổi theo thị trường v&agrave; từng phi&ecirc;n bản. Vui l&ograve;ng gọi tổng đ&agrave;i miễn ph&iacute; 18006601 hoặc đến cửa h&agrave;ng FPT Shop để nhận th&ocirc;ng tin ch&iacute;nh x&aacute;c nhất về sản phẩm.</em></p>
\r\n', 'Ipple', 5990000, 1, 16, 1, '2016-11-24 18:48:39', '2016-12-01 20:52:21'),
(25, 'iPhone 7 Plus 128GB', 'iphone-7-plus-128gb', 'Apple A10 mới, 2 cammera sau,Ram 3g, 5.5 inch (1920 x 1080 pixels)', 'Đặt Online hoặc Gọi 18006601', 'Trả góp 0% (Chỉ áp dụng cho thẻ tín dụng)', 'Tặng Voucher 500.000đ mua Apple Watch', '', '1480038525_636089592275907954_7-plus-chi-tiet.jpg', '
<p>Với những t&iacute;nh năng vượt trội về camera, iPhone 7 Plus l&agrave; sản phẩm nổi bật c&ograve;n hơn cả iPhone khi c&ugrave;ng ra mắt, khả năng chụp ảnh zoom 10x với camera k&eacute;p v&agrave; chụp ch&acirc;n dung xo&aacute; ph&ocirc;ng đ&atilde; thuyết phục người d&ugrave;ng một c&aacute;ch ngọt ng&agrave;o nhất. Kh&ocirc;ng chỉ vậy, n&acirc;ng cấp về cấu h&igrave;nh, &acirc;m thanh, thiết kế tinh tế hơn v&agrave; phi&ecirc;n bản bộ nhớ l&ecirc;n đến 128 GB cũng khiến đ&acirc;y l&agrave; sản phẩm đ&aacute;ng mua nhất trong lần ra mắt loạt phi&ecirc;n bản mới của Apple</p>
\r\n', '
<h3><strong>Thiết kế ho&agrave;n thiện hơn</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"iphone-7-plus-128gb\" longdesc=\"http://fptshop.com.vn/dien-thoai/iphone-7-plus-128gb\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/iphone-7-plus-128gb/iphone-7-plus-128gb/iphone-7-plus-128gb-3.jpg\" title=\"iphone-7-plus-128gb\" /></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>Về thiết kế, vẫn l&agrave; nh&ocirc;m nguy&ecirc;n khối liền lạc nhưng iPhone 7 Plus đ&atilde; c&oacute; những n&eacute;t thay đổi tinh tế khi đưa hai dải ăng-ten l&ecirc;n s&aacute;t hai cạnh tr&ecirc;n dưới, đồng thời bỏ đi jack cắm tai nghe 3.5 mm. Điểm nhấn ấn tượng nhất về ngoại h&igrave;nh của iPhone 7 Plus l&agrave; việc Apple bỏ đi m&agrave;u x&aacute;m kh&ocirc;ng gian từng rất được ưa chuộng tr&ecirc;n c&aacute;c model cũ để bổ sung th&ecirc;m t&ugrave;y chọn m&agrave;u đen mờ v&agrave; đen b&oacute;ng Jet Black (chỉ c&oacute; tr&ecirc;n iPhone 7 Plus bản 128/256 GB).</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>M&agrave;n h&igrave;nh rộng 5.5 inch, s&aacute;ng hơn, nhiều m&agrave;u sắc hơn</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"iphone-7-plus-128gb\" longdesc=\"http://fptshop.com.vn/dien-thoai/iphone-7-plus-128gb\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/iphone-7-plus-128gb/iphone-7-plus-128gb/iphone-7-plus-128gb-9.jpg\" title=\"iphone-7-plus-128gb\" /></p>
\r\n\r\n
<p>iPhone 7 Plus cũng c&oacute; m&agrave;n h&igrave;nh 5.5 inch độ ph&acirc;n giải 1080x1920 pixels tương tự iPhone 6s Plus, như vậy về k&iacute;ch thước tổng thể ch&uacute;ng ta kh&ocirc;ng c&oacute; g&igrave; thay đổi. Tuy nhi&ecirc;n, tấm nền m&agrave;n h&igrave;nh mới đ&atilde; được bổ sung th&ecirc;m 25% độ s&aacute;ng, đạt mức cao nhất 625 nits c&ugrave;ng khả năng t&aacute;i tạo m&agrave;u sắc, gam m&agrave;u rộng hơn v&agrave; hỗ trợ 3D Touch.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>N&uacute;t Home ho&agrave;n to&agrave;n mới</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"iphone-7-plus-128gb\" longdesc=\"http://fptshop.com.vn/dien-thoai/iphone-7-plus-128gb\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/iphone-7-plus-128gb/iphone-7-plus-128gb/iphone-7-plus-128gb-6.jpg\" title=\"iphone-7-plus-128gb\" /></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>Với chiếc điện thoại thế hệ mới, Apple đ&atilde; &quot;xo&aacute; sổ&quot; ho&agrave;n to&agrave;n n&uacute;t bấm vật l&yacute; tr&ecirc;n m&agrave;n h&igrave;nh iPhone. Giờ đ&acirc;y n&uacute;t Home ở vị tr&iacute; cũ đ&atilde; trở th&agrave;nh cảm ứng, khi bạn nhấn xuống n&oacute; vẫn cảm nhận được lực nhấn v&agrave; sẽ rung nhẹ để bạn biết rằng bạn đ&atilde; tương t&aacute;c. Apple đ&atilde; sử dụng Taptic Engine tr&ecirc;n Force Touch của Macbook cho chiếc iPhone mới n&agrave;y. Mặc d&ugrave; vậy ph&iacute;m Home vẫn c&oacute; cảm biến v&acirc;n tay Touch ID v&agrave; t&iacute;ch hợp nhiều t&iacute;nh năng bảo mật.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>Camera chất lượng đột ph&aacute; như m&aacute;y ảnh chuy&ecirc;n nghiệp</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"iphone-7-plus-128gb\" longdesc=\"http://fptshop.com.vn/dien-thoai/iphone-7-plus-128gb\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/iphone-7-plus-128gb/iphone-7-plus-128gb/iphone-7-plus-128gb-5.jpg\" title=\"iphone-7-plus-128gb\" /></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>iPhone 7 Plus đi k&egrave;m với một camera k&eacute;p độ ph&acirc;n giải đồng thời 12 MP, trong số đ&oacute; c&oacute; một ống k&iacute;nh g&oacute;c rộng khẩu độ l&ecirc;n đến f/1.8 v&agrave; một ống k&iacute;nh zoom (tele) l&ecirc;n đến 10x, c&ugrave;ng t&iacute;nh năng ổn định h&igrave;nh ảnh quang học tự động.&nbsp;N&oacute; cũng bao gồm một đ&egrave;n flash 2 t&ocirc;ng m&agrave;u v&agrave; đ&egrave;n flash quad-LED. Camera hỗ trợ quay film 4K 60fps, chụp x&oacute;a ph&ocirc;ng, chụp trước lấy n&eacute;t sau như một m&aacute;y ảnh chuy&ecirc;n nghiệp. Camera trước độ ph&acirc;n giải 7 MP, chụp selfie tốt hơn v&agrave; tự động chống rung. B&ecirc;n cạnh đ&oacute;, iOS 10 cũng cho ph&eacute;p người d&ugrave;ng iPhone 7 Plus chỉnh sửa, chọn lựa ảnh từ Live Photos, lưu ảnh ở định dạng RAW.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>T&iacute;nh năng chống nước tiện lợi</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"iphone-7-plus-128gb\" longdesc=\"http://fptshop.com.vn/dien-thoai/iphone-7-plus-128gb\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/iphone-7-plus-128gb/iphone-7-plus-128gb/iphone-7-plus-128gb-8.jpg\" title=\"iphone-7-plus-128gb\" /></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>C&oacute; thể n&oacute;i t&iacute;nh năng chống nước l&agrave; điều l&agrave;m h&agrave;i l&ograve;ng nhất c&aacute;c t&iacute;n đồ nh&agrave; T&aacute;o. Với ti&ecirc;u chuẩn chống nước IP67 sẽ gi&uacute;p iPhone mới c&oacute; thể sống ở độ s&acirc;u 1 m&eacute;t nước trong 30 ph&uacute;t, vậy l&agrave; từ nay bạn sẽ qu&ecirc;n đi nỗi lo về thấm nước tr&ecirc;n iPhone 7 Plus khi đi trong trời mưa hay lỡ tay rớt nước.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>Hiệu năng vượt trội, lưu trữ thoải m&aacute;i</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"iphone-7-plus-128gb\" longdesc=\"http://fptshop.com.vn/dien-thoai/iphone-7-plus-128gb\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/iphone-7-plus-128gb/iphone-7-plus-128gb/iphone-7-plus-128gb-1.jpg\" title=\"iphone-7-plus-128gb\" /></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>iPhone 7 Plus sử dụng chip A10 Fusion 4 l&otilde;i, 64-bit với tốc độ cực nhanh. Apple c&ocirc;ng bố con chip n&agrave;y c&oacute; hiệu năng xử l&yacute; cao hơn 40% so với chip A9 v&agrave; gấp 2 lần so với chip A8. Đặc biệt l&agrave; n&oacute; c&ograve;n cao gấp 120 lần so với iPhone đời đầu. Đi c&ugrave;ng đ&oacute; l&agrave; sự n&acirc;ng cấp về bộ nhớ trong, phi&ecirc;n bản 16 GB trước đ&acirc;y đ&atilde; bị loại bỏ, thay v&agrave;o đ&oacute; ch&uacute;ng ta sẽ c&oacute; bộ nhớ trong 128 GB ở phi&ecirc;n bản n&agrave;y để thoải m&aacute;i lưu trữ.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<h3><strong>&Acirc;m thanh sống động c&ugrave;ng loa stereo</strong></h3>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><img alt=\"iphone-7-plus-128gb\" longdesc=\"http://fptshop.com.vn/dien-thoai/iphone-7-plus-128gb\" src=\"http://fptshop.com.vn/Uploads/images/2015/San-pham/iphone-7-plus-128gb/iphone-7-plus-128gb/iphone-7-plus-128gb-7.jpg\" title=\"iphone-7-plus-128gb\" /></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>Loa ngo&agrave;i tr&ecirc;n iPhone 7 Plus bất ngờ được n&acirc;ng cấp khi từ dạng đơn l&ecirc;n loa k&eacute;p Stereo, với một loa nằm ở cạnh đ&aacute;y v&agrave; một nằm ở cạnh tr&ecirc;n, cho &acirc;m lượng sống động gấp hai lần tr&ecirc;n iPhone 6s Plus.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong>Tăng thời lượng sử dụng pin</strong></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>Theo c&ocirc;ng bố từ Apple, iPhone 7 Plus c&oacute; khả năng sử dụng li&ecirc;n tục trong thời gian hơn 1 ng&agrave;y, với 60 giờ lướt web kh&ocirc;ng d&acirc;y v&agrave; 13 giờ sử dụng mạng LTE. Tăng hơn so với iPhone 6s Plus v&agrave; đảm bảo sử dụng cho cả ng&agrave;y d&agrave;i.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><em>Lưu &yacute;: B&agrave;i viết v&agrave; h&igrave;nh ảnh chỉ c&oacute; t&iacute;nh chất tham khảo v&igrave; cấu h&igrave;nh v&agrave; đặc t&iacute;nh sản phẩm c&oacute; thể thay đổi theo thị trường v&agrave; từng phi&ecirc;n bản. Vui l&ograve;ng gọi tổng đ&agrave;i miễn ph&iacute; 18006601 hoặc đến cửa h&agrave;ng FPT Shop để nhận th&ocirc;ng tin ch&iacute;nh x&aacute;c nhất về sản phẩm.</em></p>
\r\n', 'Ipple', 25190000, 1, 15, 1, '2016-11-24 18:48:45', '2016-12-01 20:53:36'),
(26, 'Galaxy S7 EDGE', 'galaxy-s7-edge', 'sắp ra mắt', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', 'Tặng Voucher 500.000đ mua Apple Watch', ' Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim ', '1480399297_s7 edge.png', '
<p>sắp ra mắt</p>
\r\n', '
<p>sản phẩm sắp được ra mắt</p>
\r\n', 'Galaxy S8, Galaxy S8,Galaxy S8', 18490000, 1, 4, 1, '2016-11-25 23:44:07', '2016-11-28 23:01:37'),
(27, 'Galaxy S8', 'galaxy-s8', 'sắp ra mắt', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', 'Tặng Voucher 500.000đ mua Apple Watch', ' Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim ', '1480399312_s7 edge.png', '
<p>sắp ra mắt</p>
\r\n', '
<p>sản phẩm sắp được ra mắt</p>
\r\n', 'Galaxy S8, Galaxy S8,Galaxy S8', 18490000, 1, 4, 1, '2016-11-25 23:44:11', '2016-11-28 23:01:52'),
(28, 'Galaxy S8', 'galaxy-s8', 'sắp ra mắt', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', 'Tặng Voucher 500.000đ mua Apple Watch', ' Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim ', '1480399324_s7 edge.png', '
<p>sắp ra mắt</p>
\r\n', '
<p>sản phẩm sắp được ra mắt</p>
\r\n', 'Galaxy S8, Galaxy S8,Galaxy S8', 18490000, 1, 4, 1, '2016-11-25 23:44:15', '2016-11-28 23:02:04'),
(34, 'ZENFONE 3 MAX', 'zenfone-3-max', 'sắp ra mắt', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', 'Tặng Voucher 500.000đ mua Apple Watch', ' Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim ', '1480399412_asus-zenfone-3-max-400-400x460.png', '
<p>sắp ra mắt</p>
\r\n', '
<p>sản phẩm sắp được ra mắt</p>
\r\n', 'Galaxy S8, Galaxy S8,Galaxy S8', 18490000, 1, 3, 1, '2016-11-25 23:45:03', '2016-11-28 23:03:32'),
(35, 'Zenfone 2 Laser', 'zenfone-2-laser', 'sắp ra mắt', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', 'Tặng Voucher 500.000đ mua Apple Watch', ' Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim ', '1480399445_asus-zenfone-2-laser-1-400x460.png', '
<p>sắp ra mắt</p>
\r\n', '
<p>sản phẩm sắp được ra mắt</p>
\r\n', 'Galaxy S8, Galaxy S8,Galaxy S8', 18490000, 1, 3, 1, '2016-11-25 23:45:08', '2016-11-28 23:04:05'),
(36, ' Dell Inspiron 3552', 'dell-inspiron-3552', 'N3050/2GB/500GB/Win10', 'Tặng Balo Dell Xem hình (đến 30/11)', 'Cơ hội trúng xe Honda Wave Anpha Xem chi tiết (đến 30/11)', 'Tặng Cáp kết nối Xem hình (đến 30/11)', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480146220_dell-inspiron-3552-n3050-2gb-500gb-win10-400-1-400x313.png', '
<h2>Dell Inspiron 3552 N3050 thuộc d&ograve;ng m&aacute;y gi&aacute; rẻ nhưng được trang bị m&agrave;n h&igrave;nh lớn, b&agrave;n ph&iacute;m đầy đủ cụm số tiện &iacute;ch.</h2>
\r\n\r\n
<h3><strong>M&agrave;n h&igrave;nh lớn</strong></h3>
\r\n\r\n
<p>M&aacute;y được trang bị m&agrave;n h&igrave;nh lớn 15.6 inch, c&ugrave;ng với đ&oacute; l&agrave; c&ocirc;ng nghệ hiển thị&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cac-chuan-man-hinh-su-dung-tren-laptop-747028#truelife\" target=\"_blank\" title=\"Tìm hiểu công nghệ hiển thị laptop\">HD WLED TrueLife</a>&nbsp;c&oacute; độ tương phản cao.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-5-2.jpg\" onclick=\"return false;\"><img alt=\"Giải trí thích hơn với màn hình lớn\" src=\"https://cdn1.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-5-2.jpg\" title=\"Giải trí thích hơn với màn hình lớn\" /></a></p>
\r\n', '
<h3><strong>Thuận tiện với cụm ph&iacute;m số number pad</strong></h3>
\r\n\r\n
<p>Với c&aacute;c m&aacute;y c&oacute; m&agrave;n h&igrave;nh lớn th&igrave; b&agrave;n ph&iacute;m số lu&ocirc;n được trang bị.&nbsp;Đối với c&aacute;c bạn sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n kế to&aacute;n hay nhập liệu nhiều th&igrave; đ&acirc;y sẽ l&agrave; một tiện &iacute;ch lớn.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-1-2.jpg\" onclick=\"return false;\"><img alt=\"Thuận tiện với cụm phím số Number pad\" src=\"https://cdn3.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-1-2.jpg\" title=\"Thuận tiện với cụm phím số Number pad\" /></a></p>
\r\n\r\n
<h3><strong>Cấu h&igrave;nh cho ứng dụng nhẹ nh&agrave;ng</strong></h3>
\r\n\r\n
<p>M&aacute;y sử dụng chip xử l&yacute; Intel&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-vi-xu-ly-may-tinh-cpu-intel-596066#intelceleron\" target=\"_blank\" title=\"Tìm hiểu chip Celeron\">Celeron</a>&nbsp;N3050 tốc độ 1.60 GHz, RAM sẵn 2 GB v&agrave; c&oacute; thể n&acirc;ng l&ecirc;n 8 GB,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/o-cung-la-gi-co-may-loai--590183#hdd\" target=\"_blank\" title=\"Tìm hiểu ổ cứng HDD\">ổ cứng lưu dữ liệu HDD</a>&nbsp;500 GB.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-4-2.jpg\" onclick=\"return false;\"><img alt=\"Cấu hình cho ứng dụng nhẹ nhàng\" src=\"https://cdn.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-4-2.jpg\" title=\"Cấu hình cho ứng dụng nhẹ nhàng\" /></a></p>
\r\n\r\n
<h3><strong>Touchpad điều khiển th&ocirc;ng minh</strong></h3>
\r\n\r\n
<p>Bạn c&oacute; thể lướt touchpad nhẹ nh&agrave;ng để đọc tin tức d&agrave;i trang, xoay h&igrave;nh, ph&oacute;ng to/thu nhỏ... kh&aacute; thuận tiện.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-3-2.jpg\" onclick=\"return false;\"><img alt=\"Touchpad điều khiển thông minh\" src=\"https://cdn2.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-3-2.jpg\" title=\"Touchpad điều khiển thông minh`\" /></a></p>
\r\n\r\n
<h3><strong>C&aacute;c cổng kết nối cần thiết</strong></h3>
\r\n\r\n
<p>M&aacute;y kh&ocirc;ng c&oacute; cổng cắm mạng d&acirc;y LAN, tuy nhi&ecirc;n bạn c&oacute; thể mua cổng chuyển đổi mạng LAN để sử dụng khi cần thiết.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-9.jpg\" onclick=\"return false;\"><img alt=\"Các cổng kết nối cần thiết\" src=\"https://cdn4.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-9.jpg\" title=\"Các cổng kết nối cần thiết\" /></a></p>
\r\n\r\n
<h3><strong>Thiết kế của m&aacute;y</strong></h3>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-6-2.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế truyền thống không thay đổi nhiều của hãng Dell\" src=\"https://cdn1.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-6-2.jpg\" title=\"Thiết kế truyền thống không thay đổi nhiều của hãng Dell\" /></a></p>
\r\n\r\n
<p><em>Thiết kế truyền thống kh&ocirc;ng thay đổi nhiều của&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell\" target=\"_blank\" title=\"Laptop hãng Dell\">h&atilde;ng Dell</a></em></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-7-1.jpg\" onclick=\"return false;\"><img alt=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" src=\"https://cdn3.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-7-1.jpg\" title=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" /></a></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-8-1.jpg\" onclick=\"return false;\"><img alt=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" src=\"https://cdn.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-8-1.jpg\" title=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" /></a></p>
\r\n\r\n
<p><em>Do bỏ bớt một số cổng kết nối n&ecirc;n 2 cạnh b&ecirc;n của m&aacute;y kh&aacute; tho&aacute;ng</em></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-2-2.jpg\" onclick=\"return false;\"><img alt=\"Khe tản nhiệt của máy nằm ở cạnh trái, mặt dưới có khá nhiều khe nhỏ giúp máy không bị quá nóng khi sử dụng\" src=\"https://cdn2.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-2-2.jpg\" title=\"Khe tản nhiệt của máy nằm ở cạnh trái, mặt dưới có khá nhiều khe nhỏ giúp máy không bị quá nóng khi sử dụng\" /></a></p>
\r\n\r\n
<p><em>Khe tản nhiệt của m&aacute;y nằm ở cạnh tr&aacute;i, mặt dưới c&oacute; kh&aacute; nhiều khe nhỏ gi&uacute;p m&aacute;y kh&ocirc;ng bị qu&aacute; n&oacute;ng khi sử dụng</em></p>
\r\n\r\n
<p>Pin 4 cell gi&uacute;p m&aacute;y k&eacute;o d&agrave;i thời gian sử dụng.</p>
\r\n', ' Dell Inspiron 3552, Dell Inspiron 3552, Dell Inspiron 3552', 6490000, 1, 9, 1, '2016-11-26 00:43:40', '2016-11-26 00:43:40'),
(37, ' Dell Inspiron 3552', 'dell-inspiron-3552', 'N3050/2GB/500GB/Win10', 'Tặng Balo Dell Xem hình (đến 30/11)', 'Cơ hội trúng xe Honda Wave Anpha Xem chi tiết (đến 30/11)', 'Tặng Cáp kết nối Xem hình (đến 30/11)', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480146227_dell-inspiron-3552-n3050-2gb-500gb-win10-400-1-400x313.png', '
<h2>Dell Inspiron 3552 N3050 thuộc d&ograve;ng m&aacute;y gi&aacute; rẻ nhưng được trang bị m&agrave;n h&igrave;nh lớn, b&agrave;n ph&iacute;m đầy đủ cụm số tiện &iacute;ch.</h2>
\r\n\r\n
<h3><strong>M&agrave;n h&igrave;nh lớn</strong></h3>
\r\n\r\n
<p>M&aacute;y được trang bị m&agrave;n h&igrave;nh lớn 15.6 inch, c&ugrave;ng với đ&oacute; l&agrave; c&ocirc;ng nghệ hiển thị&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cac-chuan-man-hinh-su-dung-tren-laptop-747028#truelife\" target=\"_blank\" title=\"Tìm hiểu công nghệ hiển thị laptop\">HD WLED TrueLife</a>&nbsp;c&oacute; độ tương phản cao.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-5-2.jpg\" onclick=\"return false;\"><img alt=\"Giải trí thích hơn với màn hình lớn\" src=\"https://cdn1.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-5-2.jpg\" title=\"Giải trí thích hơn với màn hình lớn\" /></a></p>
\r\n', '
<h3><strong>Thuận tiện với cụm ph&iacute;m số number pad</strong></h3>
\r\n\r\n
<p>Với c&aacute;c m&aacute;y c&oacute; m&agrave;n h&igrave;nh lớn th&igrave; b&agrave;n ph&iacute;m số lu&ocirc;n được trang bị.&nbsp;Đối với c&aacute;c bạn sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n kế to&aacute;n hay nhập liệu nhiều th&igrave; đ&acirc;y sẽ l&agrave; một tiện &iacute;ch lớn.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-1-2.jpg\" onclick=\"return false;\"><img alt=\"Thuận tiện với cụm phím số Number pad\" src=\"https://cdn3.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-1-2.jpg\" title=\"Thuận tiện với cụm phím số Number pad\" /></a></p>
\r\n\r\n
<h3><strong>Cấu h&igrave;nh cho ứng dụng nhẹ nh&agrave;ng</strong></h3>
\r\n\r\n
<p>M&aacute;y sử dụng chip xử l&yacute; Intel&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-vi-xu-ly-may-tinh-cpu-intel-596066#intelceleron\" target=\"_blank\" title=\"Tìm hiểu chip Celeron\">Celeron</a>&nbsp;N3050 tốc độ 1.60 GHz, RAM sẵn 2 GB v&agrave; c&oacute; thể n&acirc;ng l&ecirc;n 8 GB,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/o-cung-la-gi-co-may-loai--590183#hdd\" target=\"_blank\" title=\"Tìm hiểu ổ cứng HDD\">ổ cứng lưu dữ liệu HDD</a>&nbsp;500 GB.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-4-2.jpg\" onclick=\"return false;\"><img alt=\"Cấu hình cho ứng dụng nhẹ nhàng\" src=\"https://cdn.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-4-2.jpg\" title=\"Cấu hình cho ứng dụng nhẹ nhàng\" /></a></p>
\r\n\r\n
<h3><strong>Touchpad điều khiển th&ocirc;ng minh</strong></h3>
\r\n\r\n
<p>Bạn c&oacute; thể lướt touchpad nhẹ nh&agrave;ng để đọc tin tức d&agrave;i trang, xoay h&igrave;nh, ph&oacute;ng to/thu nhỏ... kh&aacute; thuận tiện.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-3-2.jpg\" onclick=\"return false;\"><img alt=\"Touchpad điều khiển thông minh\" src=\"https://cdn2.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-3-2.jpg\" title=\"Touchpad điều khiển thông minh`\" /></a></p>
\r\n\r\n
<h3><strong>C&aacute;c cổng kết nối cần thiết</strong></h3>
\r\n\r\n
<p>M&aacute;y kh&ocirc;ng c&oacute; cổng cắm mạng d&acirc;y LAN, tuy nhi&ecirc;n bạn c&oacute; thể mua cổng chuyển đổi mạng LAN để sử dụng khi cần thiết.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-9.jpg\" onclick=\"return false;\"><img alt=\"Các cổng kết nối cần thiết\" src=\"https://cdn4.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-9.jpg\" title=\"Các cổng kết nối cần thiết\" /></a></p>
\r\n\r\n
<h3><strong>Thiết kế của m&aacute;y</strong></h3>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-6-2.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế truyền thống không thay đổi nhiều của hãng Dell\" src=\"https://cdn1.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-6-2.jpg\" title=\"Thiết kế truyền thống không thay đổi nhiều của hãng Dell\" /></a></p>
\r\n\r\n
<p><em>Thiết kế truyền thống kh&ocirc;ng thay đổi nhiều của&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell\" target=\"_blank\" title=\"Laptop hãng Dell\">h&atilde;ng Dell</a></em></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-7-1.jpg\" onclick=\"return false;\"><img alt=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" src=\"https://cdn3.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-7-1.jpg\" title=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" /></a></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-8-1.jpg\" onclick=\"return false;\"><img alt=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" src=\"https://cdn.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-8-1.jpg\" title=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" /></a></p>
\r\n\r\n
<p><em>Do bỏ bớt một số cổng kết nối n&ecirc;n 2 cạnh b&ecirc;n của m&aacute;y kh&aacute; tho&aacute;ng</em></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-2-2.jpg\" onclick=\"return false;\"><img alt=\"Khe tản nhiệt của máy nằm ở cạnh trái, mặt dưới có khá nhiều khe nhỏ giúp máy không bị quá nóng khi sử dụng\" src=\"https://cdn2.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-2-2.jpg\" title=\"Khe tản nhiệt của máy nằm ở cạnh trái, mặt dưới có khá nhiều khe nhỏ giúp máy không bị quá nóng khi sử dụng\" /></a></p>
\r\n\r\n
<p><em>Khe tản nhiệt của m&aacute;y nằm ở cạnh tr&aacute;i, mặt dưới c&oacute; kh&aacute; nhiều khe nhỏ gi&uacute;p m&aacute;y kh&ocirc;ng bị qu&aacute; n&oacute;ng khi sử dụng</em></p>
\r\n\r\n
<p>Pin 4 cell gi&uacute;p m&aacute;y k&eacute;o d&agrave;i thời gian sử dụng.</p>
\r\n', ' Dell Inspiron 3552, Dell Inspiron 3552, Dell Inspiron 3552', 6490000, 1, 9, 1, '2016-11-26 00:43:47', '2016-11-26 00:43:47');
INSERT INTO `products` (`id`, `name`, `slug`, `intro`, `promo1`, `promo2`, `promo3`, `packet`, `images`, `r_intro`, `review`, `tag`, `price`, `status`, `cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(38, ' Dell Inspiron 3552', 'dell-inspiron-3552', 'N3050/2GB/500GB/Win10', 'Tặng Balo Dell Xem hình (đến 30/11)', 'Cơ hội trúng xe Honda Wave Anpha Xem chi tiết (đến 30/11)', 'Tặng Cáp kết nối Xem hình (đến 30/11)', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480146231_dell-inspiron-3552-n3050-2gb-500gb-win10-400-1-400x313.png', '
<h2>Dell Inspiron 3552 N3050 thuộc d&ograve;ng m&aacute;y gi&aacute; rẻ nhưng được trang bị m&agrave;n h&igrave;nh lớn, b&agrave;n ph&iacute;m đầy đủ cụm số tiện &iacute;ch.</h2>
\r\n\r\n
<h3><strong>M&agrave;n h&igrave;nh lớn</strong></h3>
\r\n\r\n
<p>M&aacute;y được trang bị m&agrave;n h&igrave;nh lớn 15.6 inch, c&ugrave;ng với đ&oacute; l&agrave; c&ocirc;ng nghệ hiển thị&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cac-chuan-man-hinh-su-dung-tren-laptop-747028#truelife\" target=\"_blank\" title=\"Tìm hiểu công nghệ hiển thị laptop\">HD WLED TrueLife</a>&nbsp;c&oacute; độ tương phản cao.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-5-2.jpg\" onclick=\"return false;\"><img alt=\"Giải trí thích hơn với màn hình lớn\" src=\"https://cdn1.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-5-2.jpg\" title=\"Giải trí thích hơn với màn hình lớn\" /></a></p>
\r\n', '
<h3><strong>Thuận tiện với cụm ph&iacute;m số number pad</strong></h3>
\r\n\r\n
<p>Với c&aacute;c m&aacute;y c&oacute; m&agrave;n h&igrave;nh lớn th&igrave; b&agrave;n ph&iacute;m số lu&ocirc;n được trang bị.&nbsp;Đối với c&aacute;c bạn sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n kế to&aacute;n hay nhập liệu nhiều th&igrave; đ&acirc;y sẽ l&agrave; một tiện &iacute;ch lớn.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-1-2.jpg\" onclick=\"return false;\"><img alt=\"Thuận tiện với cụm phím số Number pad\" src=\"https://cdn3.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-1-2.jpg\" title=\"Thuận tiện với cụm phím số Number pad\" /></a></p>
\r\n\r\n
<h3><strong>Cấu h&igrave;nh cho ứng dụng nhẹ nh&agrave;ng</strong></h3>
\r\n\r\n
<p>M&aacute;y sử dụng chip xử l&yacute; Intel&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-vi-xu-ly-may-tinh-cpu-intel-596066#intelceleron\" target=\"_blank\" title=\"Tìm hiểu chip Celeron\">Celeron</a>&nbsp;N3050 tốc độ 1.60 GHz, RAM sẵn 2 GB v&agrave; c&oacute; thể n&acirc;ng l&ecirc;n 8 GB,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/o-cung-la-gi-co-may-loai--590183#hdd\" target=\"_blank\" title=\"Tìm hiểu ổ cứng HDD\">ổ cứng lưu dữ liệu HDD</a>&nbsp;500 GB.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-4-2.jpg\" onclick=\"return false;\"><img alt=\"Cấu hình cho ứng dụng nhẹ nhàng\" src=\"https://cdn.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-4-2.jpg\" title=\"Cấu hình cho ứng dụng nhẹ nhàng\" /></a></p>
\r\n\r\n
<h3><strong>Touchpad điều khiển th&ocirc;ng minh</strong></h3>
\r\n\r\n
<p>Bạn c&oacute; thể lướt touchpad nhẹ nh&agrave;ng để đọc tin tức d&agrave;i trang, xoay h&igrave;nh, ph&oacute;ng to/thu nhỏ... kh&aacute; thuận tiện.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-3-2.jpg\" onclick=\"return false;\"><img alt=\"Touchpad điều khiển thông minh\" src=\"https://cdn2.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-3-2.jpg\" title=\"Touchpad điều khiển thông minh`\" /></a></p>
\r\n\r\n
<h3><strong>C&aacute;c cổng kết nối cần thiết</strong></h3>
\r\n\r\n
<p>M&aacute;y kh&ocirc;ng c&oacute; cổng cắm mạng d&acirc;y LAN, tuy nhi&ecirc;n bạn c&oacute; thể mua cổng chuyển đổi mạng LAN để sử dụng khi cần thiết.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-9.jpg\" onclick=\"return false;\"><img alt=\"Các cổng kết nối cần thiết\" src=\"https://cdn4.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-9.jpg\" title=\"Các cổng kết nối cần thiết\" /></a></p>
\r\n\r\n
<h3><strong>Thiết kế của m&aacute;y</strong></h3>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-6-2.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế truyền thống không thay đổi nhiều của hãng Dell\" src=\"https://cdn1.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-6-2.jpg\" title=\"Thiết kế truyền thống không thay đổi nhiều của hãng Dell\" /></a></p>
\r\n\r\n
<p><em>Thiết kế truyền thống kh&ocirc;ng thay đổi nhiều của&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell\" target=\"_blank\" title=\"Laptop hãng Dell\">h&atilde;ng Dell</a></em></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-7-1.jpg\" onclick=\"return false;\"><img alt=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" src=\"https://cdn3.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-7-1.jpg\" title=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" /></a></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-8-1.jpg\" onclick=\"return false;\"><img alt=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" src=\"https://cdn.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-8-1.jpg\" title=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" /></a></p>
\r\n\r\n
<p><em>Do bỏ bớt một số cổng kết nối n&ecirc;n 2 cạnh b&ecirc;n của m&aacute;y kh&aacute; tho&aacute;ng</em></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-2-2.jpg\" onclick=\"return false;\"><img alt=\"Khe tản nhiệt của máy nằm ở cạnh trái, mặt dưới có khá nhiều khe nhỏ giúp máy không bị quá nóng khi sử dụng\" src=\"https://cdn2.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-2-2.jpg\" title=\"Khe tản nhiệt của máy nằm ở cạnh trái, mặt dưới có khá nhiều khe nhỏ giúp máy không bị quá nóng khi sử dụng\" /></a></p>
\r\n\r\n
<p><em>Khe tản nhiệt của m&aacute;y nằm ở cạnh tr&aacute;i, mặt dưới c&oacute; kh&aacute; nhiều khe nhỏ gi&uacute;p m&aacute;y kh&ocirc;ng bị qu&aacute; n&oacute;ng khi sử dụng</em></p>
\r\n\r\n
<p>Pin 4 cell gi&uacute;p m&aacute;y k&eacute;o d&agrave;i thời gian sử dụng.</p>
\r\n', ' Dell Inspiron 3552, Dell Inspiron 3552, Dell Inspiron 3552', 6490000, 1, 9, 1, '2016-11-26 00:43:51', '2016-11-26 00:43:51'),
(39, ' Dell Inspiron 3552', 'dell-inspiron-3552', 'N3050/2GB/500GB/Win10', 'Tặng Balo Dell Xem hình (đến 30/11)', 'Cơ hội trúng xe Honda Wave Anpha Xem chi tiết (đến 30/11)', 'Tặng Cáp kết nối Xem hình (đến 30/11)', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480146235_dell-inspiron-3552-n3050-2gb-500gb-win10-400-1-400x313.png', '
<h2>Dell Inspiron 3552 N3050 thuộc d&ograve;ng m&aacute;y gi&aacute; rẻ nhưng được trang bị m&agrave;n h&igrave;nh lớn, b&agrave;n ph&iacute;m đầy đủ cụm số tiện &iacute;ch.</h2>
\r\n\r\n
<h3><strong>M&agrave;n h&igrave;nh lớn</strong></h3>
\r\n\r\n
<p>M&aacute;y được trang bị m&agrave;n h&igrave;nh lớn 15.6 inch, c&ugrave;ng với đ&oacute; l&agrave; c&ocirc;ng nghệ hiển thị&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cac-chuan-man-hinh-su-dung-tren-laptop-747028#truelife\" target=\"_blank\" title=\"Tìm hiểu công nghệ hiển thị laptop\">HD WLED TrueLife</a>&nbsp;c&oacute; độ tương phản cao.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-5-2.jpg\" onclick=\"return false;\"><img alt=\"Giải trí thích hơn với màn hình lớn\" src=\"https://cdn1.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-5-2.jpg\" title=\"Giải trí thích hơn với màn hình lớn\" /></a></p>
\r\n', '
<h3><strong>Thuận tiện với cụm ph&iacute;m số number pad</strong></h3>
\r\n\r\n
<p>Với c&aacute;c m&aacute;y c&oacute; m&agrave;n h&igrave;nh lớn th&igrave; b&agrave;n ph&iacute;m số lu&ocirc;n được trang bị.&nbsp;Đối với c&aacute;c bạn sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n kế to&aacute;n hay nhập liệu nhiều th&igrave; đ&acirc;y sẽ l&agrave; một tiện &iacute;ch lớn.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-1-2.jpg\" onclick=\"return false;\"><img alt=\"Thuận tiện với cụm phím số Number pad\" src=\"https://cdn3.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-1-2.jpg\" title=\"Thuận tiện với cụm phím số Number pad\" /></a></p>
\r\n\r\n
<h3><strong>Cấu h&igrave;nh cho ứng dụng nhẹ nh&agrave;ng</strong></h3>
\r\n\r\n
<p>M&aacute;y sử dụng chip xử l&yacute; Intel&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-vi-xu-ly-may-tinh-cpu-intel-596066#intelceleron\" target=\"_blank\" title=\"Tìm hiểu chip Celeron\">Celeron</a>&nbsp;N3050 tốc độ 1.60 GHz, RAM sẵn 2 GB v&agrave; c&oacute; thể n&acirc;ng l&ecirc;n 8 GB,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/o-cung-la-gi-co-may-loai--590183#hdd\" target=\"_blank\" title=\"Tìm hiểu ổ cứng HDD\">ổ cứng lưu dữ liệu HDD</a>&nbsp;500 GB.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-4-2.jpg\" onclick=\"return false;\"><img alt=\"Cấu hình cho ứng dụng nhẹ nhàng\" src=\"https://cdn.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-4-2.jpg\" title=\"Cấu hình cho ứng dụng nhẹ nhàng\" /></a></p>
\r\n\r\n
<h3><strong>Touchpad điều khiển th&ocirc;ng minh</strong></h3>
\r\n\r\n
<p>Bạn c&oacute; thể lướt touchpad nhẹ nh&agrave;ng để đọc tin tức d&agrave;i trang, xoay h&igrave;nh, ph&oacute;ng to/thu nhỏ... kh&aacute; thuận tiện.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-3-2.jpg\" onclick=\"return false;\"><img alt=\"Touchpad điều khiển thông minh\" src=\"https://cdn2.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-3-2.jpg\" title=\"Touchpad điều khiển thông minh`\" /></a></p>
\r\n\r\n
<h3><strong>C&aacute;c cổng kết nối cần thiết</strong></h3>
\r\n\r\n
<p>M&aacute;y kh&ocirc;ng c&oacute; cổng cắm mạng d&acirc;y LAN, tuy nhi&ecirc;n bạn c&oacute; thể mua cổng chuyển đổi mạng LAN để sử dụng khi cần thiết.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-9.jpg\" onclick=\"return false;\"><img alt=\"Các cổng kết nối cần thiết\" src=\"https://cdn4.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-9.jpg\" title=\"Các cổng kết nối cần thiết\" /></a></p>
\r\n\r\n
<h3><strong>Thiết kế của m&aacute;y</strong></h3>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-6-2.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế truyền thống không thay đổi nhiều của hãng Dell\" src=\"https://cdn1.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-6-2.jpg\" title=\"Thiết kế truyền thống không thay đổi nhiều của hãng Dell\" /></a></p>
\r\n\r\n
<p><em>Thiết kế truyền thống kh&ocirc;ng thay đổi nhiều của&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell\" target=\"_blank\" title=\"Laptop hãng Dell\">h&atilde;ng Dell</a></em></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-7-1.jpg\" onclick=\"return false;\"><img alt=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" src=\"https://cdn3.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-7-1.jpg\" title=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" /></a></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-8-1.jpg\" onclick=\"return false;\"><img alt=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" src=\"https://cdn.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-8-1.jpg\" title=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" /></a></p>
\r\n\r\n
<p><em>Do bỏ bớt một số cổng kết nối n&ecirc;n 2 cạnh b&ecirc;n của m&aacute;y kh&aacute; tho&aacute;ng</em></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-2-2.jpg\" onclick=\"return false;\"><img alt=\"Khe tản nhiệt của máy nằm ở cạnh trái, mặt dưới có khá nhiều khe nhỏ giúp máy không bị quá nóng khi sử dụng\" src=\"https://cdn2.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-2-2.jpg\" title=\"Khe tản nhiệt của máy nằm ở cạnh trái, mặt dưới có khá nhiều khe nhỏ giúp máy không bị quá nóng khi sử dụng\" /></a></p>
\r\n\r\n
<p><em>Khe tản nhiệt của m&aacute;y nằm ở cạnh tr&aacute;i, mặt dưới c&oacute; kh&aacute; nhiều khe nhỏ gi&uacute;p m&aacute;y kh&ocirc;ng bị qu&aacute; n&oacute;ng khi sử dụng</em></p>
\r\n\r\n
<p>Pin 4 cell gi&uacute;p m&aacute;y k&eacute;o d&agrave;i thời gian sử dụng.</p>
\r\n', ' Dell Inspiron 3552, Dell Inspiron 3552, Dell Inspiron 3552', 6490000, 1, 9, 1, '2016-11-26 00:43:55', '2016-11-26 00:43:55'),
(40, ' Dell Inspiron 3552', 'dell-inspiron-3552', 'N3050/2GB/500GB/Win10', 'Tặng Balo Dell Xem hình (đến 30/11)', 'Cơ hội trúng xe Honda Wave Anpha Xem chi tiết (đến 30/11)', 'Tặng Cáp kết nối Xem hình (đến 30/11)', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480146238_dell-inspiron-3552-n3050-2gb-500gb-win10-400-1-400x313.png', '
<h2>Dell Inspiron 3552 N3050 thuộc d&ograve;ng m&aacute;y gi&aacute; rẻ nhưng được trang bị m&agrave;n h&igrave;nh lớn, b&agrave;n ph&iacute;m đầy đủ cụm số tiện &iacute;ch.</h2>
\r\n\r\n
<h3><strong>M&agrave;n h&igrave;nh lớn</strong></h3>
\r\n\r\n
<p>M&aacute;y được trang bị m&agrave;n h&igrave;nh lớn 15.6 inch, c&ugrave;ng với đ&oacute; l&agrave; c&ocirc;ng nghệ hiển thị&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cac-chuan-man-hinh-su-dung-tren-laptop-747028#truelife\" target=\"_blank\" title=\"Tìm hiểu công nghệ hiển thị laptop\">HD WLED TrueLife</a>&nbsp;c&oacute; độ tương phản cao.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-5-2.jpg\" onclick=\"return false;\"><img alt=\"Giải trí thích hơn với màn hình lớn\" src=\"https://cdn1.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-5-2.jpg\" title=\"Giải trí thích hơn với màn hình lớn\" /></a></p>
\r\n', '
<h3><strong>Thuận tiện với cụm ph&iacute;m số number pad</strong></h3>
\r\n\r\n
<p>Với c&aacute;c m&aacute;y c&oacute; m&agrave;n h&igrave;nh lớn th&igrave; b&agrave;n ph&iacute;m số lu&ocirc;n được trang bị.&nbsp;Đối với c&aacute;c bạn sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n kế to&aacute;n hay nhập liệu nhiều th&igrave; đ&acirc;y sẽ l&agrave; một tiện &iacute;ch lớn.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-1-2.jpg\" onclick=\"return false;\"><img alt=\"Thuận tiện với cụm phím số Number pad\" src=\"https://cdn3.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-1-2.jpg\" title=\"Thuận tiện với cụm phím số Number pad\" /></a></p>
\r\n\r\n
<h3><strong>Cấu h&igrave;nh cho ứng dụng nhẹ nh&agrave;ng</strong></h3>
\r\n\r\n
<p>M&aacute;y sử dụng chip xử l&yacute; Intel&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-vi-xu-ly-may-tinh-cpu-intel-596066#intelceleron\" target=\"_blank\" title=\"Tìm hiểu chip Celeron\">Celeron</a>&nbsp;N3050 tốc độ 1.60 GHz, RAM sẵn 2 GB v&agrave; c&oacute; thể n&acirc;ng l&ecirc;n 8 GB,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/o-cung-la-gi-co-may-loai--590183#hdd\" target=\"_blank\" title=\"Tìm hiểu ổ cứng HDD\">ổ cứng lưu dữ liệu HDD</a>&nbsp;500 GB.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-4-2.jpg\" onclick=\"return false;\"><img alt=\"Cấu hình cho ứng dụng nhẹ nhàng\" src=\"https://cdn.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-4-2.jpg\" title=\"Cấu hình cho ứng dụng nhẹ nhàng\" /></a></p>
\r\n\r\n
<h3><strong>Touchpad điều khiển th&ocirc;ng minh</strong></h3>
\r\n\r\n
<p>Bạn c&oacute; thể lướt touchpad nhẹ nh&agrave;ng để đọc tin tức d&agrave;i trang, xoay h&igrave;nh, ph&oacute;ng to/thu nhỏ... kh&aacute; thuận tiện.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-3-2.jpg\" onclick=\"return false;\"><img alt=\"Touchpad điều khiển thông minh\" src=\"https://cdn2.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-3-2.jpg\" title=\"Touchpad điều khiển thông minh`\" /></a></p>
\r\n\r\n
<h3><strong>C&aacute;c cổng kết nối cần thiết</strong></h3>
\r\n\r\n
<p>M&aacute;y kh&ocirc;ng c&oacute; cổng cắm mạng d&acirc;y LAN, tuy nhi&ecirc;n bạn c&oacute; thể mua cổng chuyển đổi mạng LAN để sử dụng khi cần thiết.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-9.jpg\" onclick=\"return false;\"><img alt=\"Các cổng kết nối cần thiết\" src=\"https://cdn4.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-9.jpg\" title=\"Các cổng kết nối cần thiết\" /></a></p>
\r\n\r\n
<h3><strong>Thiết kế của m&aacute;y</strong></h3>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-6-2.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế truyền thống không thay đổi nhiều của hãng Dell\" src=\"https://cdn1.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-6-2.jpg\" title=\"Thiết kế truyền thống không thay đổi nhiều của hãng Dell\" /></a></p>
\r\n\r\n
<p><em>Thiết kế truyền thống kh&ocirc;ng thay đổi nhiều của&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell\" target=\"_blank\" title=\"Laptop hãng Dell\">h&atilde;ng Dell</a></em></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-7-1.jpg\" onclick=\"return false;\"><img alt=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" src=\"https://cdn3.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-7-1.jpg\" title=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" /></a></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-8-1.jpg\" onclick=\"return false;\"><img alt=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" src=\"https://cdn.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-8-1.jpg\" title=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" /></a></p>
\r\n\r\n
<p><em>Do bỏ bớt một số cổng kết nối n&ecirc;n 2 cạnh b&ecirc;n của m&aacute;y kh&aacute; tho&aacute;ng</em></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-2-2.jpg\" onclick=\"return false;\"><img alt=\"Khe tản nhiệt của máy nằm ở cạnh trái, mặt dưới có khá nhiều khe nhỏ giúp máy không bị quá nóng khi sử dụng\" src=\"https://cdn2.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-2-2.jpg\" title=\"Khe tản nhiệt của máy nằm ở cạnh trái, mặt dưới có khá nhiều khe nhỏ giúp máy không bị quá nóng khi sử dụng\" /></a></p>
\r\n\r\n
<p><em>Khe tản nhiệt của m&aacute;y nằm ở cạnh tr&aacute;i, mặt dưới c&oacute; kh&aacute; nhiều khe nhỏ gi&uacute;p m&aacute;y kh&ocirc;ng bị qu&aacute; n&oacute;ng khi sử dụng</em></p>
\r\n\r\n
<p>Pin 4 cell gi&uacute;p m&aacute;y k&eacute;o d&agrave;i thời gian sử dụng.</p>
\r\n', ' Dell Inspiron 3552, Dell Inspiron 3552, Dell Inspiron 3552', 6490000, 1, 9, 1, '2016-11-26 00:43:58', '2016-11-26 00:43:58'),
(41, ' Dell Inspiron 3552', 'dell-inspiron-3552', 'N3050/2GB/500GB/Win10', 'Tặng Balo Dell Xem hình (đến 30/11)', 'Cơ hội trúng xe Honda Wave Anpha Xem chi tiết (đến 30/11)', 'Tặng Cáp kết nối Xem hình (đến 30/11)', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480146242_dell-inspiron-3552-n3050-2gb-500gb-win10-400-1-400x313.png', '
<h2>Dell Inspiron 3552 N3050 thuộc d&ograve;ng m&aacute;y gi&aacute; rẻ nhưng được trang bị m&agrave;n h&igrave;nh lớn, b&agrave;n ph&iacute;m đầy đủ cụm số tiện &iacute;ch.</h2>
\r\n\r\n
<h3><strong>M&agrave;n h&igrave;nh lớn</strong></h3>
\r\n\r\n
<p>M&aacute;y được trang bị m&agrave;n h&igrave;nh lớn 15.6 inch, c&ugrave;ng với đ&oacute; l&agrave; c&ocirc;ng nghệ hiển thị&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cac-chuan-man-hinh-su-dung-tren-laptop-747028#truelife\" target=\"_blank\" title=\"Tìm hiểu công nghệ hiển thị laptop\">HD WLED TrueLife</a>&nbsp;c&oacute; độ tương phản cao.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-5-2.jpg\" onclick=\"return false;\"><img alt=\"Giải trí thích hơn với màn hình lớn\" src=\"https://cdn1.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-5-2.jpg\" title=\"Giải trí thích hơn với màn hình lớn\" /></a></p>
\r\n', '
<h3><strong>Thuận tiện với cụm ph&iacute;m số number pad</strong></h3>
\r\n\r\n
<p>Với c&aacute;c m&aacute;y c&oacute; m&agrave;n h&igrave;nh lớn th&igrave; b&agrave;n ph&iacute;m số lu&ocirc;n được trang bị.&nbsp;Đối với c&aacute;c bạn sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n kế to&aacute;n hay nhập liệu nhiều th&igrave; đ&acirc;y sẽ l&agrave; một tiện &iacute;ch lớn.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-1-2.jpg\" onclick=\"return false;\"><img alt=\"Thuận tiện với cụm phím số Number pad\" src=\"https://cdn3.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-1-2.jpg\" title=\"Thuận tiện với cụm phím số Number pad\" /></a></p>
\r\n\r\n
<h3><strong>Cấu h&igrave;nh cho ứng dụng nhẹ nh&agrave;ng</strong></h3>
\r\n\r\n
<p>M&aacute;y sử dụng chip xử l&yacute; Intel&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-vi-xu-ly-may-tinh-cpu-intel-596066#intelceleron\" target=\"_blank\" title=\"Tìm hiểu chip Celeron\">Celeron</a>&nbsp;N3050 tốc độ 1.60 GHz, RAM sẵn 2 GB v&agrave; c&oacute; thể n&acirc;ng l&ecirc;n 8 GB,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/o-cung-la-gi-co-may-loai--590183#hdd\" target=\"_blank\" title=\"Tìm hiểu ổ cứng HDD\">ổ cứng lưu dữ liệu HDD</a>&nbsp;500 GB.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-4-2.jpg\" onclick=\"return false;\"><img alt=\"Cấu hình cho ứng dụng nhẹ nhàng\" src=\"https://cdn.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-4-2.jpg\" title=\"Cấu hình cho ứng dụng nhẹ nhàng\" /></a></p>
\r\n\r\n
<h3><strong>Touchpad điều khiển th&ocirc;ng minh</strong></h3>
\r\n\r\n
<p>Bạn c&oacute; thể lướt touchpad nhẹ nh&agrave;ng để đọc tin tức d&agrave;i trang, xoay h&igrave;nh, ph&oacute;ng to/thu nhỏ... kh&aacute; thuận tiện.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-3-2.jpg\" onclick=\"return false;\"><img alt=\"Touchpad điều khiển thông minh\" src=\"https://cdn2.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-3-2.jpg\" title=\"Touchpad điều khiển thông minh`\" /></a></p>
\r\n\r\n
<h3><strong>C&aacute;c cổng kết nối cần thiết</strong></h3>
\r\n\r\n
<p>M&aacute;y kh&ocirc;ng c&oacute; cổng cắm mạng d&acirc;y LAN, tuy nhi&ecirc;n bạn c&oacute; thể mua cổng chuyển đổi mạng LAN để sử dụng khi cần thiết.</p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-9.jpg\" onclick=\"return false;\"><img alt=\"Các cổng kết nối cần thiết\" src=\"https://cdn4.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-9.jpg\" title=\"Các cổng kết nối cần thiết\" /></a></p>
\r\n\r\n
<h3><strong>Thiết kế của m&aacute;y</strong></h3>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-6-2.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế truyền thống không thay đổi nhiều của hãng Dell\" src=\"https://cdn1.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-6-2.jpg\" title=\"Thiết kế truyền thống không thay đổi nhiều của hãng Dell\" /></a></p>
\r\n\r\n
<p><em>Thiết kế truyền thống kh&ocirc;ng thay đổi nhiều của&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell\" target=\"_blank\" title=\"Laptop hãng Dell\">h&atilde;ng Dell</a></em></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-7-1.jpg\" onclick=\"return false;\"><img alt=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" src=\"https://cdn3.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-7-1.jpg\" title=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" /></a></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-8-1.jpg\" onclick=\"return false;\"><img alt=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" src=\"https://cdn.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-8-1.jpg\" title=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" /></a></p>
\r\n\r\n
<p><em>Do bỏ bớt một số cổng kết nối n&ecirc;n 2 cạnh b&ecirc;n của m&aacute;y kh&aacute; tho&aacute;ng</em></p>
\r\n\r\n
<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-2-2.jpg\" onclick=\"return false;\"><img alt=\"Khe tản nhiệt của máy nằm ở cạnh trái, mặt dưới có khá nhiều khe nhỏ giúp máy không bị quá nóng khi sử dụng\" src=\"https://cdn2.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-2-2.jpg\" title=\"Khe tản nhiệt của máy nằm ở cạnh trái, mặt dưới có khá nhiều khe nhỏ giúp máy không bị quá nóng khi sử dụng\" /></a></p>
\r\n\r\n
<p><em>Khe tản nhiệt của m&aacute;y nằm ở cạnh tr&aacute;i, mặt dưới c&oacute; kh&aacute; nhiều khe nhỏ gi&uacute;p m&aacute;y kh&ocirc;ng bị qu&aacute; n&oacute;ng khi sử dụng</em></p>
\r\n\r\n
<p>Pin 4 cell gi&uacute;p m&aacute;y k&eacute;o d&agrave;i thời gian sử dụng.</p>
\r\n', ' Dell Inspiron 3552, Dell Inspiron 3552, Dell Inspiron 3552', 6490000, 1, 9, 1, '2016-11-26 00:44:02', '2016-11-26 00:44:02'),
(42, 'Dell Optiplex 980 SFF Case Size Mini', 'dell-optiplex-980-sff-case-size-mini', 'Core I3, I5 (Hàng Likenew, thùng hộp) Dell Optiplex 980', 'Giao hàng tận nơi trong nội thành', '', '', 'Thùng máy, day cab kết nối', '1480151599_930_dell 980 2.png', '
<p><strong>AM KẾT B&Aacute;N H&Agrave;NG CH&Iacute;NH H&Atilde;NG, LINH KIỆN NGUY&Ecirc;N ZIN</strong></p>
\r\n\r\n
<p><strong>CHẾ ĐỘ BẢO H&Agrave;NH 1 ĐỔI 1</strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;</p>
\r\n\r\n
<p>* Th&ugrave;ng m&aacute;y đ&atilde; được c&agrave;i đặt sẵn Windows, Antivirus, Office, PDF Reader, IE 8, Firefox, Chrome, Vietkey, Fonts, Codec Media... Hỗ trợ c&agrave;i đặt miễn ph&iacute; th&ecirc;m c&aacute;c phần mềm do Qu&yacute; Kh&aacute;ch y&ecirc;u cầu.</p>
\r\n', '
<p>* D&ograve;ng&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham/325/dell-optiplex-980-case-size-mini.html\">Dell Optiplex 980 SFF</a></strong>&nbsp;<strong>hổ trợ CPU Core I3, I5, I7 Clarkdale</strong>đời đầu. Được thiết kế với vỏ&nbsp;<strong>Case size mini nhỏ gọn</strong>, kiểu d&aacute;ng sang trọng<strong>.</strong>Th&iacute;ch hợp x&agrave;i gia đ&igrave;nh, văn ph&ograve;ng, HTPC tr&igrave;nh chiếu phim HD.&nbsp;<strong>Card đồ họa t&iacute;ch hợp&nbsp;</strong><strong>Intel&reg; HD Graphics</strong><strong>&nbsp;</strong>gi&uacute;p xem phim HD v&agrave; Game cho h&igrave;nh ảnh sắc n&eacute;t, mượt m&agrave;.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><em>* Ngo&agrave;i ra D&ograve;ng Dell Optiplex 980 SFF c&oacute; thể gắn th&ecirc;m Card Wifi, Card VGA. T&iacute;ch hợp sẵn tr&ecirc;n mainboard c&oacute; cổng COM, Display Port<strong>&nbsp;</strong>(chức năng tương đương HDMI)</em></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>* Với cấu h&igrave;nh dưới đ&acirc;y, sẽ đ&aacute;p ứng đầy đủ nhu cầu l&agrave;m c&ocirc;ng việc Văn Ph&ograve;ng, Vẽ AUTOCAD, 3D MAX, Game Web, xem Phim HD, nghe Nhạc...</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong><em>Cấu h&igrave;nh c&oacute; thể thay đổi theo y&ecirc;u cầu của Qu&yacute; Kh&aacute;ch</em></strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;&nbsp;</p>
\r\n\r\n
<p>Cấu h&igrave;nh 01:&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham-xem/929/dell-optiplex-980-core-i.html\">Dell&nbsp;Optiplex 980 SFF</a>&nbsp;</strong>Case Size Mini</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong>H&agrave;ng Likenew, th&ugrave;ng hộp Dell</strong></p>
\r\n\r\n
<p><strong>&nbsp;<strong>(Gi&aacute; tr&ecirc;n chưa bao gồm Ph&iacute;m + Chuột)</strong>&nbsp;</strong></p>
\r\n', '', 3500000, 1, 20, 1, '2016-11-26 02:13:19', '2016-11-26 02:13:19'),
(43, 'Dell Optiplex 980 SFF Case Size Mini', 'dell-optiplex-980-sff-case-size-mini', 'Core I3, I5 (Hàng Likenew, thùng hộp) Dell Optiplex 980', 'Giao hàng tận nơi trong nội thành', '', '', 'Thùng máy, day cab kết nối', '1480151604_930_dell 980 2.png', '
<p><strong>AM KẾT B&Aacute;N H&Agrave;NG CH&Iacute;NH H&Atilde;NG, LINH KIỆN NGUY&Ecirc;N ZIN</strong></p>
\r\n\r\n
<p><strong>CHẾ ĐỘ BẢO H&Agrave;NH 1 ĐỔI 1</strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;</p>
\r\n\r\n
<p>* Th&ugrave;ng m&aacute;y đ&atilde; được c&agrave;i đặt sẵn Windows, Antivirus, Office, PDF Reader, IE 8, Firefox, Chrome, Vietkey, Fonts, Codec Media... Hỗ trợ c&agrave;i đặt miễn ph&iacute; th&ecirc;m c&aacute;c phần mềm do Qu&yacute; Kh&aacute;ch y&ecirc;u cầu.</p>
\r\n', '
<p>* D&ograve;ng&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham/325/dell-optiplex-980-case-size-mini.html\">Dell Optiplex 980 SFF</a></strong>&nbsp;<strong>hổ trợ CPU Core I3, I5, I7 Clarkdale</strong>đời đầu. Được thiết kế với vỏ&nbsp;<strong>Case size mini nhỏ gọn</strong>, kiểu d&aacute;ng sang trọng<strong>.</strong>Th&iacute;ch hợp x&agrave;i gia đ&igrave;nh, văn ph&ograve;ng, HTPC tr&igrave;nh chiếu phim HD.&nbsp;<strong>Card đồ họa t&iacute;ch hợp&nbsp;</strong><strong>Intel&reg; HD Graphics</strong><strong>&nbsp;</strong>gi&uacute;p xem phim HD v&agrave; Game cho h&igrave;nh ảnh sắc n&eacute;t, mượt m&agrave;.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><em>* Ngo&agrave;i ra D&ograve;ng Dell Optiplex 980 SFF c&oacute; thể gắn th&ecirc;m Card Wifi, Card VGA. T&iacute;ch hợp sẵn tr&ecirc;n mainboard c&oacute; cổng COM, Display Port<strong>&nbsp;</strong>(chức năng tương đương HDMI)</em></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>* Với cấu h&igrave;nh dưới đ&acirc;y, sẽ đ&aacute;p ứng đầy đủ nhu cầu l&agrave;m c&ocirc;ng việc Văn Ph&ograve;ng, Vẽ AUTOCAD, 3D MAX, Game Web, xem Phim HD, nghe Nhạc...</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong><em>Cấu h&igrave;nh c&oacute; thể thay đổi theo y&ecirc;u cầu của Qu&yacute; Kh&aacute;ch</em></strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;&nbsp;</p>
\r\n\r\n
<p>Cấu h&igrave;nh 01:&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham-xem/929/dell-optiplex-980-core-i.html\">Dell&nbsp;Optiplex 980 SFF</a>&nbsp;</strong>Case Size Mini</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong>H&agrave;ng Likenew, th&ugrave;ng hộp Dell</strong></p>
\r\n\r\n
<p><strong>&nbsp;<strong>(Gi&aacute; tr&ecirc;n chưa bao gồm Ph&iacute;m + Chuột)</strong>&nbsp;</strong></p>
\r\n', '', 3500000, 1, 20, 1, '2016-11-26 02:13:24', '2016-11-26 02:13:24'),
(44, 'Dell Optiplex 980 SFF Case Size Mini', 'dell-optiplex-980-sff-case-size-mini', 'Core I3, I5 (Hàng Likenew, thùng hộp) Dell Optiplex 980', 'Giao hàng tận nơi trong nội thành', '', '', 'Thùng máy, day cab kết nối', '1480151607_930_dell 980 2.png', '
<p><strong>AM KẾT B&Aacute;N H&Agrave;NG CH&Iacute;NH H&Atilde;NG, LINH KIỆN NGUY&Ecirc;N ZIN</strong></p>
\r\n\r\n
<p><strong>CHẾ ĐỘ BẢO H&Agrave;NH 1 ĐỔI 1</strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;</p>
\r\n\r\n
<p>* Th&ugrave;ng m&aacute;y đ&atilde; được c&agrave;i đặt sẵn Windows, Antivirus, Office, PDF Reader, IE 8, Firefox, Chrome, Vietkey, Fonts, Codec Media... Hỗ trợ c&agrave;i đặt miễn ph&iacute; th&ecirc;m c&aacute;c phần mềm do Qu&yacute; Kh&aacute;ch y&ecirc;u cầu.</p>
\r\n', '
<p>* D&ograve;ng&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham/325/dell-optiplex-980-case-size-mini.html\">Dell Optiplex 980 SFF</a></strong>&nbsp;<strong>hổ trợ CPU Core I3, I5, I7 Clarkdale</strong>đời đầu. Được thiết kế với vỏ&nbsp;<strong>Case size mini nhỏ gọn</strong>, kiểu d&aacute;ng sang trọng<strong>.</strong>Th&iacute;ch hợp x&agrave;i gia đ&igrave;nh, văn ph&ograve;ng, HTPC tr&igrave;nh chiếu phim HD.&nbsp;<strong>Card đồ họa t&iacute;ch hợp&nbsp;</strong><strong>Intel&reg; HD Graphics</strong><strong>&nbsp;</strong>gi&uacute;p xem phim HD v&agrave; Game cho h&igrave;nh ảnh sắc n&eacute;t, mượt m&agrave;.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><em>* Ngo&agrave;i ra D&ograve;ng Dell Optiplex 980 SFF c&oacute; thể gắn th&ecirc;m Card Wifi, Card VGA. T&iacute;ch hợp sẵn tr&ecirc;n mainboard c&oacute; cổng COM, Display Port<strong>&nbsp;</strong>(chức năng tương đương HDMI)</em></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>* Với cấu h&igrave;nh dưới đ&acirc;y, sẽ đ&aacute;p ứng đầy đủ nhu cầu l&agrave;m c&ocirc;ng việc Văn Ph&ograve;ng, Vẽ AUTOCAD, 3D MAX, Game Web, xem Phim HD, nghe Nhạc...</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong><em>Cấu h&igrave;nh c&oacute; thể thay đổi theo y&ecirc;u cầu của Qu&yacute; Kh&aacute;ch</em></strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;&nbsp;</p>
\r\n\r\n
<p>Cấu h&igrave;nh 01:&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham-xem/929/dell-optiplex-980-core-i.html\">Dell&nbsp;Optiplex 980 SFF</a>&nbsp;</strong>Case Size Mini</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong>H&agrave;ng Likenew, th&ugrave;ng hộp Dell</strong></p>
\r\n\r\n
<p><strong>&nbsp;<strong>(Gi&aacute; tr&ecirc;n chưa bao gồm Ph&iacute;m + Chuột)</strong>&nbsp;</strong></p>
\r\n', '', 3500000, 1, 20, 1, '2016-11-26 02:13:27', '2016-11-26 02:13:27'),
(45, 'Dell Optiplex 980 SFF Case Size Mini', 'dell-optiplex-980-sff-case-size-mini', 'Core I3, I5 (Hàng Likenew, thùng hộp) Dell Optiplex 980', 'Giao hàng tận nơi trong nội thành', '', '', 'Thùng máy, day cab kết nối', '1480151611_930_dell 980 2.png', '
<p><strong>AM KẾT B&Aacute;N H&Agrave;NG CH&Iacute;NH H&Atilde;NG, LINH KIỆN NGUY&Ecirc;N ZIN</strong></p>
\r\n\r\n
<p><strong>CHẾ ĐỘ BẢO H&Agrave;NH 1 ĐỔI 1</strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;</p>
\r\n\r\n
<p>* Th&ugrave;ng m&aacute;y đ&atilde; được c&agrave;i đặt sẵn Windows, Antivirus, Office, PDF Reader, IE 8, Firefox, Chrome, Vietkey, Fonts, Codec Media... Hỗ trợ c&agrave;i đặt miễn ph&iacute; th&ecirc;m c&aacute;c phần mềm do Qu&yacute; Kh&aacute;ch y&ecirc;u cầu.</p>
\r\n', '
<p>* D&ograve;ng&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham/325/dell-optiplex-980-case-size-mini.html\">Dell Optiplex 980 SFF</a></strong>&nbsp;<strong>hổ trợ CPU Core I3, I5, I7 Clarkdale</strong>đời đầu. Được thiết kế với vỏ&nbsp;<strong>Case size mini nhỏ gọn</strong>, kiểu d&aacute;ng sang trọng<strong>.</strong>Th&iacute;ch hợp x&agrave;i gia đ&igrave;nh, văn ph&ograve;ng, HTPC tr&igrave;nh chiếu phim HD.&nbsp;<strong>Card đồ họa t&iacute;ch hợp&nbsp;</strong><strong>Intel&reg; HD Graphics</strong><strong>&nbsp;</strong>gi&uacute;p xem phim HD v&agrave; Game cho h&igrave;nh ảnh sắc n&eacute;t, mượt m&agrave;.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><em>* Ngo&agrave;i ra D&ograve;ng Dell Optiplex 980 SFF c&oacute; thể gắn th&ecirc;m Card Wifi, Card VGA. T&iacute;ch hợp sẵn tr&ecirc;n mainboard c&oacute; cổng COM, Display Port<strong>&nbsp;</strong>(chức năng tương đương HDMI)</em></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>* Với cấu h&igrave;nh dưới đ&acirc;y, sẽ đ&aacute;p ứng đầy đủ nhu cầu l&agrave;m c&ocirc;ng việc Văn Ph&ograve;ng, Vẽ AUTOCAD, 3D MAX, Game Web, xem Phim HD, nghe Nhạc...</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong><em>Cấu h&igrave;nh c&oacute; thể thay đổi theo y&ecirc;u cầu của Qu&yacute; Kh&aacute;ch</em></strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;&nbsp;</p>
\r\n\r\n
<p>Cấu h&igrave;nh 01:&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham-xem/929/dell-optiplex-980-core-i.html\">Dell&nbsp;Optiplex 980 SFF</a>&nbsp;</strong>Case Size Mini</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong>H&agrave;ng Likenew, th&ugrave;ng hộp Dell</strong></p>
\r\n\r\n
<p><strong>&nbsp;<strong>(Gi&aacute; tr&ecirc;n chưa bao gồm Ph&iacute;m + Chuột)</strong>&nbsp;</strong></p>
\r\n', '', 3500000, 1, 20, 1, '2016-11-26 02:13:31', '2016-11-26 02:13:31'),
(46, 'Dell Optiplex 980 SFF Case Size Mini', 'dell-optiplex-980-sff-case-size-mini', 'Core I3, I5 (Hàng Likenew, thùng hộp) Dell Optiplex 980', 'Giao hàng tận nơi trong nội thành', '', '', 'Thùng máy, day cab kết nối', '1480151615_930_dell 980 2.png', '
<p><strong>AM KẾT B&Aacute;N H&Agrave;NG CH&Iacute;NH H&Atilde;NG, LINH KIỆN NGUY&Ecirc;N ZIN</strong></p>
\r\n\r\n
<p><strong>CHẾ ĐỘ BẢO H&Agrave;NH 1 ĐỔI 1</strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;</p>
\r\n\r\n
<p>* Th&ugrave;ng m&aacute;y đ&atilde; được c&agrave;i đặt sẵn Windows, Antivirus, Office, PDF Reader, IE 8, Firefox, Chrome, Vietkey, Fonts, Codec Media... Hỗ trợ c&agrave;i đặt miễn ph&iacute; th&ecirc;m c&aacute;c phần mềm do Qu&yacute; Kh&aacute;ch y&ecirc;u cầu.</p>
\r\n', '
<p>* D&ograve;ng&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham/325/dell-optiplex-980-case-size-mini.html\">Dell Optiplex 980 SFF</a></strong>&nbsp;<strong>hổ trợ CPU Core I3, I5, I7 Clarkdale</strong>đời đầu. Được thiết kế với vỏ&nbsp;<strong>Case size mini nhỏ gọn</strong>, kiểu d&aacute;ng sang trọng<strong>.</strong>Th&iacute;ch hợp x&agrave;i gia đ&igrave;nh, văn ph&ograve;ng, HTPC tr&igrave;nh chiếu phim HD.&nbsp;<strong>Card đồ họa t&iacute;ch hợp&nbsp;</strong><strong>Intel&reg; HD Graphics</strong><strong>&nbsp;</strong>gi&uacute;p xem phim HD v&agrave; Game cho h&igrave;nh ảnh sắc n&eacute;t, mượt m&agrave;.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><em>* Ngo&agrave;i ra D&ograve;ng Dell Optiplex 980 SFF c&oacute; thể gắn th&ecirc;m Card Wifi, Card VGA. T&iacute;ch hợp sẵn tr&ecirc;n mainboard c&oacute; cổng COM, Display Port<strong>&nbsp;</strong>(chức năng tương đương HDMI)</em></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>* Với cấu h&igrave;nh dưới đ&acirc;y, sẽ đ&aacute;p ứng đầy đủ nhu cầu l&agrave;m c&ocirc;ng việc Văn Ph&ograve;ng, Vẽ AUTOCAD, 3D MAX, Game Web, xem Phim HD, nghe Nhạc...</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong><em>Cấu h&igrave;nh c&oacute; thể thay đổi theo y&ecirc;u cầu của Qu&yacute; Kh&aacute;ch</em></strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;&nbsp;</p>
\r\n\r\n
<p>Cấu h&igrave;nh 01:&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham-xem/929/dell-optiplex-980-core-i.html\">Dell&nbsp;Optiplex 980 SFF</a>&nbsp;</strong>Case Size Mini</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong>H&agrave;ng Likenew, th&ugrave;ng hộp Dell</strong></p>
\r\n\r\n
<p><strong>&nbsp;<strong>(Gi&aacute; tr&ecirc;n chưa bao gồm Ph&iacute;m + Chuột)</strong>&nbsp;</strong></p>
\r\n', '', 3500000, 1, 20, 1, '2016-11-26 02:13:35', '2016-11-26 02:13:35'),
(47, 'asus Gimming 980 SFF Case Size Mini', 'asus-gimming-980-sff-case-size-mini', 'Core I3, I5 (Hàng Likenew, thùng hộp) Dell Optiplex 980', 'Giao hàng tận nơi trong nội thành', '', '', 'Thùng máy, day cab kết nối', '1480151633_930_dell 980 2.png', '
<p><strong>AM KẾT B&Aacute;N H&Agrave;NG CH&Iacute;NH H&Atilde;NG, LINH KIỆN NGUY&Ecirc;N ZIN</strong></p>
\r\n\r\n
<p><strong>CHẾ ĐỘ BẢO H&Agrave;NH 1 ĐỔI 1</strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;</p>
\r\n\r\n
<p>* Th&ugrave;ng m&aacute;y đ&atilde; được c&agrave;i đặt sẵn Windows, Antivirus, Office, PDF Reader, IE 8, Firefox, Chrome, Vietkey, Fonts, Codec Media... Hỗ trợ c&agrave;i đặt miễn ph&iacute; th&ecirc;m c&aacute;c phần mềm do Qu&yacute; Kh&aacute;ch y&ecirc;u cầu.</p>
\r\n', '
<p>* D&ograve;ng&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham/325/dell-optiplex-980-case-size-mini.html\">Dell Optiplex 980 SFF</a></strong>&nbsp;<strong>hổ trợ CPU Core I3, I5, I7 Clarkdale</strong>đời đầu. Được thiết kế với vỏ&nbsp;<strong>Case size mini nhỏ gọn</strong>, kiểu d&aacute;ng sang trọng<strong>.</strong>Th&iacute;ch hợp x&agrave;i gia đ&igrave;nh, văn ph&ograve;ng, HTPC tr&igrave;nh chiếu phim HD.&nbsp;<strong>Card đồ họa t&iacute;ch hợp&nbsp;</strong><strong>Intel&reg; HD Graphics</strong><strong>&nbsp;</strong>gi&uacute;p xem phim HD v&agrave; Game cho h&igrave;nh ảnh sắc n&eacute;t, mượt m&agrave;.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><em>* Ngo&agrave;i ra D&ograve;ng Dell Optiplex 980 SFF c&oacute; thể gắn th&ecirc;m Card Wifi, Card VGA. T&iacute;ch hợp sẵn tr&ecirc;n mainboard c&oacute; cổng COM, Display Port<strong>&nbsp;</strong>(chức năng tương đương HDMI)</em></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>* Với cấu h&igrave;nh dưới đ&acirc;y, sẽ đ&aacute;p ứng đầy đủ nhu cầu l&agrave;m c&ocirc;ng việc Văn Ph&ograve;ng, Vẽ AUTOCAD, 3D MAX, Game Web, xem Phim HD, nghe Nhạc...</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong><em>Cấu h&igrave;nh c&oacute; thể thay đổi theo y&ecirc;u cầu của Qu&yacute; Kh&aacute;ch</em></strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;&nbsp;</p>
\r\n\r\n
<p>Cấu h&igrave;nh 01:&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham-xem/929/dell-optiplex-980-core-i.html\">Dell&nbsp;Optiplex 980 SFF</a>&nbsp;</strong>Case Size Mini</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong>H&agrave;ng Likenew, th&ugrave;ng hộp Dell</strong></p>
\r\n\r\n
<p><strong>&nbsp;<strong>(Gi&aacute; tr&ecirc;n chưa bao gồm Ph&iacute;m + Chuột)</strong>&nbsp;</strong></p>
\r\n', '', 3500000, 1, 21, 1, '2016-11-26 02:13:53', '2016-11-26 02:13:53'),
(48, 'asus Gimming 980 SFF Case Size Mini', 'asus-gimming-980-sff-case-size-mini', 'Core I3, I5 (Hàng Likenew, thùng hộp) Dell Optiplex 980', 'Giao hàng tận nơi trong nội thành', '', '', 'Thùng máy, day cab kết nối', '1480151635_930_dell 980 2.png', '
<p><strong>AM KẾT B&Aacute;N H&Agrave;NG CH&Iacute;NH H&Atilde;NG, LINH KIỆN NGUY&Ecirc;N ZIN</strong></p>
\r\n\r\n
<p><strong>CHẾ ĐỘ BẢO H&Agrave;NH 1 ĐỔI 1</strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;</p>
\r\n\r\n
<p>* Th&ugrave;ng m&aacute;y đ&atilde; được c&agrave;i đặt sẵn Windows, Antivirus, Office, PDF Reader, IE 8, Firefox, Chrome, Vietkey, Fonts, Codec Media... Hỗ trợ c&agrave;i đặt miễn ph&iacute; th&ecirc;m c&aacute;c phần mềm do Qu&yacute; Kh&aacute;ch y&ecirc;u cầu.</p>
\r\n', '
<p>* D&ograve;ng&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham/325/dell-optiplex-980-case-size-mini.html\">Dell Optiplex 980 SFF</a></strong>&nbsp;<strong>hổ trợ CPU Core I3, I5, I7 Clarkdale</strong>đời đầu. Được thiết kế với vỏ&nbsp;<strong>Case size mini nhỏ gọn</strong>, kiểu d&aacute;ng sang trọng<strong>.</strong>Th&iacute;ch hợp x&agrave;i gia đ&igrave;nh, văn ph&ograve;ng, HTPC tr&igrave;nh chiếu phim HD.&nbsp;<strong>Card đồ họa t&iacute;ch hợp&nbsp;</strong><strong>Intel&reg; HD Graphics</strong><strong>&nbsp;</strong>gi&uacute;p xem phim HD v&agrave; Game cho h&igrave;nh ảnh sắc n&eacute;t, mượt m&agrave;.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><em>* Ngo&agrave;i ra D&ograve;ng Dell Optiplex 980 SFF c&oacute; thể gắn th&ecirc;m Card Wifi, Card VGA. T&iacute;ch hợp sẵn tr&ecirc;n mainboard c&oacute; cổng COM, Display Port<strong>&nbsp;</strong>(chức năng tương đương HDMI)</em></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>* Với cấu h&igrave;nh dưới đ&acirc;y, sẽ đ&aacute;p ứng đầy đủ nhu cầu l&agrave;m c&ocirc;ng việc Văn Ph&ograve;ng, Vẽ AUTOCAD, 3D MAX, Game Web, xem Phim HD, nghe Nhạc...</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong><em>Cấu h&igrave;nh c&oacute; thể thay đổi theo y&ecirc;u cầu của Qu&yacute; Kh&aacute;ch</em></strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;&nbsp;</p>
\r\n\r\n
<p>Cấu h&igrave;nh 01:&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham-xem/929/dell-optiplex-980-core-i.html\">Dell&nbsp;Optiplex 980 SFF</a>&nbsp;</strong>Case Size Mini</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong>H&agrave;ng Likenew, th&ugrave;ng hộp Dell</strong></p>
\r\n\r\n
<p><strong>&nbsp;<strong>(Gi&aacute; tr&ecirc;n chưa bao gồm Ph&iacute;m + Chuột)</strong>&nbsp;</strong></p>
\r\n', '', 3500000, 1, 21, 1, '2016-11-26 02:13:55', '2016-11-26 02:13:55'),
(49, 'asus Gimming 980 SFF Case Size Mini', 'asus-gimming-980-sff-case-size-mini', 'Core I3, I5 (Hàng Likenew, thùng hộp) Dell Optiplex 980', 'Giao hàng tận nơi trong nội thành', '', '', 'Thùng máy, day cab kết nối', '1480151639_930_dell 980 2.png', '
<p><strong>AM KẾT B&Aacute;N H&Agrave;NG CH&Iacute;NH H&Atilde;NG, LINH KIỆN NGUY&Ecirc;N ZIN</strong></p>
\r\n\r\n
<p><strong>CHẾ ĐỘ BẢO H&Agrave;NH 1 ĐỔI 1</strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;</p>
\r\n\r\n
<p>* Th&ugrave;ng m&aacute;y đ&atilde; được c&agrave;i đặt sẵn Windows, Antivirus, Office, PDF Reader, IE 8, Firefox, Chrome, Vietkey, Fonts, Codec Media... Hỗ trợ c&agrave;i đặt miễn ph&iacute; th&ecirc;m c&aacute;c phần mềm do Qu&yacute; Kh&aacute;ch y&ecirc;u cầu.</p>
\r\n', '
<p>* D&ograve;ng&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham/325/dell-optiplex-980-case-size-mini.html\">Dell Optiplex 980 SFF</a></strong>&nbsp;<strong>hổ trợ CPU Core I3, I5, I7 Clarkdale</strong>đời đầu. Được thiết kế với vỏ&nbsp;<strong>Case size mini nhỏ gọn</strong>, kiểu d&aacute;ng sang trọng<strong>.</strong>Th&iacute;ch hợp x&agrave;i gia đ&igrave;nh, văn ph&ograve;ng, HTPC tr&igrave;nh chiếu phim HD.&nbsp;<strong>Card đồ họa t&iacute;ch hợp&nbsp;</strong><strong>Intel&reg; HD Graphics</strong><strong>&nbsp;</strong>gi&uacute;p xem phim HD v&agrave; Game cho h&igrave;nh ảnh sắc n&eacute;t, mượt m&agrave;.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><em>* Ngo&agrave;i ra D&ograve;ng Dell Optiplex 980 SFF c&oacute; thể gắn th&ecirc;m Card Wifi, Card VGA. T&iacute;ch hợp sẵn tr&ecirc;n mainboard c&oacute; cổng COM, Display Port<strong>&nbsp;</strong>(chức năng tương đương HDMI)</em></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>* Với cấu h&igrave;nh dưới đ&acirc;y, sẽ đ&aacute;p ứng đầy đủ nhu cầu l&agrave;m c&ocirc;ng việc Văn Ph&ograve;ng, Vẽ AUTOCAD, 3D MAX, Game Web, xem Phim HD, nghe Nhạc...</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong><em>Cấu h&igrave;nh c&oacute; thể thay đổi theo y&ecirc;u cầu của Qu&yacute; Kh&aacute;ch</em></strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;&nbsp;</p>
\r\n\r\n
<p>Cấu h&igrave;nh 01:&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham-xem/929/dell-optiplex-980-core-i.html\">Dell&nbsp;Optiplex 980 SFF</a>&nbsp;</strong>Case Size Mini</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong>H&agrave;ng Likenew, th&ugrave;ng hộp Dell</strong></p>
\r\n\r\n
<p><strong>&nbsp;<strong>(Gi&aacute; tr&ecirc;n chưa bao gồm Ph&iacute;m + Chuột)</strong>&nbsp;</strong></p>
\r\n', '', 3500000, 1, 21, 1, '2016-11-26 02:13:59', '2016-11-26 02:13:59'),
(50, 'asus Gimming 980 SFF Case Size Mini', 'asus-gimming-980-sff-case-size-mini', 'Core I3, I5 (Hàng Likenew, thùng hộp) Dell Optiplex 980', 'Giao hàng tận nơi trong nội thành', '', '', 'Thùng máy, day cab kết nối', '1480151643_930_dell 980 2.png', '
<p><strong>AM KẾT B&Aacute;N H&Agrave;NG CH&Iacute;NH H&Atilde;NG, LINH KIỆN NGUY&Ecirc;N ZIN</strong></p>
\r\n\r\n
<p><strong>CHẾ ĐỘ BẢO H&Agrave;NH 1 ĐỔI 1</strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;</p>
\r\n\r\n
<p>* Th&ugrave;ng m&aacute;y đ&atilde; được c&agrave;i đặt sẵn Windows, Antivirus, Office, PDF Reader, IE 8, Firefox, Chrome, Vietkey, Fonts, Codec Media... Hỗ trợ c&agrave;i đặt miễn ph&iacute; th&ecirc;m c&aacute;c phần mềm do Qu&yacute; Kh&aacute;ch y&ecirc;u cầu.</p>
\r\n', '
<p>* D&ograve;ng&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham/325/dell-optiplex-980-case-size-mini.html\">Dell Optiplex 980 SFF</a></strong>&nbsp;<strong>hổ trợ CPU Core I3, I5, I7 Clarkdale</strong>đời đầu. Được thiết kế với vỏ&nbsp;<strong>Case size mini nhỏ gọn</strong>, kiểu d&aacute;ng sang trọng<strong>.</strong>Th&iacute;ch hợp x&agrave;i gia đ&igrave;nh, văn ph&ograve;ng, HTPC tr&igrave;nh chiếu phim HD.&nbsp;<strong>Card đồ họa t&iacute;ch hợp&nbsp;</strong><strong>Intel&reg; HD Graphics</strong><strong>&nbsp;</strong>gi&uacute;p xem phim HD v&agrave; Game cho h&igrave;nh ảnh sắc n&eacute;t, mượt m&agrave;.</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><em>* Ngo&agrave;i ra D&ograve;ng Dell Optiplex 980 SFF c&oacute; thể gắn th&ecirc;m Card Wifi, Card VGA. T&iacute;ch hợp sẵn tr&ecirc;n mainboard c&oacute; cổng COM, Display Port<strong>&nbsp;</strong>(chức năng tương đương HDMI)</em></p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p>* Với cấu h&igrave;nh dưới đ&acirc;y, sẽ đ&aacute;p ứng đầy đủ nhu cầu l&agrave;m c&ocirc;ng việc Văn Ph&ograve;ng, Vẽ AUTOCAD, 3D MAX, Game Web, xem Phim HD, nghe Nhạc...</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong><em>Cấu h&igrave;nh c&oacute; thể thay đổi theo y&ecirc;u cầu của Qu&yacute; Kh&aacute;ch</em></strong></p>
\r\n\r\n
<p>&nbsp;&nbsp;&nbsp;</p>
\r\n\r\n
<p>Cấu h&igrave;nh 01:&nbsp;<strong><a href=\"http://cungcapmaytinh.vn/san-pham-xem/929/dell-optiplex-980-core-i.html\">Dell&nbsp;Optiplex 980 SFF</a>&nbsp;</strong>Case Size Mini</p>
\r\n\r\n
<p>&nbsp;</p>
\r\n\r\n
<p><strong>H&agrave;ng Likenew, th&ugrave;ng hộp Dell</strong></p>
\r\n\r\n
<p><strong>&nbsp;<strong>(Gi&aacute; tr&ecirc;n chưa bao gồm Ph&iacute;m + Chuột)</strong>&nbsp;</strong></p>
\r\n', '', 3500000, 1, 21, 1, '2016-11-26 02:14:03', '2016-11-26 02:14:03');
INSERT INTO `products` (`id`, `name`, `slug`, `intro`, `promo1`, `promo2`, `promo3`, `packet`, `images`, `r_intro`, `review`, `tag`, `price`, `status`, `cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(51, 'ASus ROG GL 552 VX', 'asus-rog-gl-552-vx', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', '', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480151883_rog.png', '
<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>
\r\n', '
<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>
\r\n\r\n
<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>
\r\n\r\n
<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>
\r\n\r\n
<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>
\r\n', 'rog, gamming', 19850000, 1, 10, 1, '2016-11-26 02:18:03', '2016-11-26 02:18:03'),
(52, 'ASus ROG GL 552 VX', 'asus-rog-gl-552-vx', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', '', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480151888_rog.png', '
<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>
\r\n', '
<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>
\r\n\r\n
<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>
\r\n\r\n
<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>
\r\n\r\n
<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>
\r\n', 'rog, gamming', 19850000, 1, 10, 1, '2016-11-26 02:18:08', '2016-11-26 02:18:08'),
(53, 'ASus ROG GL 552 VX', 'asus-rog-gl-552-vx', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', '', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480151891_rog.png', '
<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>
\r\n', '
<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>
\r\n\r\n
<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>
\r\n\r\n
<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>
\r\n\r\n
<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>
\r\n', 'rog, gamming', 19850000, 1, 10, 1, '2016-11-26 02:18:11', '2016-11-26 02:18:11'),
(54, 'ASus ROG GL 552 VX', 'asus-rog-gl-552-vx', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', '', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480151894_rog.png', '
<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>
\r\n', '
<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>
\r\n\r\n
<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>
\r\n\r\n
<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>
\r\n\r\n
<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>
\r\n', 'rog, gamming', 19850000, 1, 10, 1, '2016-11-26 02:18:14', '2016-11-26 02:18:14'),
(55, 'ASus ROG GL 552 VX', 'asus-rog-gl-552-vx', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', '', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480151897_rog.png', '
<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>
\r\n', '
<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>
\r\n\r\n
<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>
\r\n\r\n
<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>
\r\n\r\n
<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>
\r\n', 'rog, gamming', 19850000, 1, 10, 1, '2016-11-26 02:18:17', '2016-11-26 02:18:17'),
(56, 'HP TEST I5', 'hp-test-i5', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', '', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480151914_rog.png', '
<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>
\r\n', '
<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>
\r\n\r\n
<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>
\r\n\r\n
<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>
\r\n\r\n
<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>
\r\n', 'rog, gamming', 19850000, 1, 11, 1, '2016-11-26 02:18:34', '2016-11-26 02:18:34'),
(57, 'HP TEST I5', 'hp-test-i5', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', '', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480151952_hp-envy-15z-laptop-amd-radeon-590.png', '
<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>
\r\n', '
<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>
\r\n\r\n
<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>
\r\n\r\n
<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>
\r\n\r\n
<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>
\r\n', 'rog, gamming', 19850000, 1, 11, 1, '2016-11-26 02:19:12', '2016-11-26 02:19:12');
INSERT INTO `products` (`id`, `name`, `slug`, `intro`, `promo1`, `promo2`, `promo3`, `packet`, `images`, `r_intro`, `review`, `tag`, `price`, `status`, `cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(58, 'HP TEST I5', 'hp-test-i5', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', '', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480151956_hp-envy-15z-laptop-amd-radeon-590.png', '
<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>
\r\n', '
<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>
\r\n\r\n
<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>
\r\n\r\n
<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>
\r\n\r\n
<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>
\r\n', 'rog, gamming', 19850000, 1, 11, 1, '2016-11-26 02:19:16', '2016-11-26 02:19:16'),
(59, 'HP TEST I5', 'hp-test-i5', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', '', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480151959_hp-envy-15z-laptop-amd-radeon-590.png', '
<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>
\r\n', '
<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>
\r\n\r\n
<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>
\r\n\r\n
<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>
\r\n\r\n
<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>
\r\n', 'rog, gamming', 19850000, 1, 11, 1, '2016-11-26 02:19:19', '2016-11-26 02:19:19'),
(60, 'LENOVO 12434 I5', 'lenovo-12434-i5', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', '', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480152026_le.png', '
<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>
\r\n', '
<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>
\r\n\r\n
<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>
\r\n\r\n
<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>
\r\n\r\n
<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>
\r\n', 'rog, gamming', 19850000, 1, 18, 1, '2016-11-26 02:20:26', '2016-11-26 02:20:26'),
(61, 'LENOVO 12434 I5', 'lenovo-12434-i5', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', '', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480152032_le.png', '
<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>
\r\n', '
<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>
\r\n\r\n
<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>
\r\n\r\n
<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>
\r\n\r\n
<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>
\r\n', 'rog, gamming', 19850000, 1, 18, 1, '2016-11-26 02:20:32', '2016-11-26 02:20:32'),
(62, 'LENOVO 12434 I5', 'lenovo-12434-i5', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', '', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480152035_le.png', '
<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>
\r\n', '
<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>
\r\n\r\n
<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>
\r\n\r\n
<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>
\r\n\r\n
<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>
\r\n', 'rog, gamming', 19850000, 1, 18, 1, '2016-11-26 02:20:35', '2016-11-26 02:20:35'),
(63, 'LENOVO 12434 I5', 'lenovo-12434-i5', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', '', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480152038_le.png', '
<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>
\r\n', '
<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>
\r\n\r\n
<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>
\r\n\r\n
<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>
\r\n\r\n
<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>
\r\n', 'rog, gamming', 19850000, 1, 18, 1, '2016-11-26 02:20:38', '2016-11-26 02:20:38'),
(69, 'OPTIPLEX 3046SFF 70086073', 'optiplex-3046sff-70086073', 'Intel Core i3 6100,8G DDR3, intel HD ', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', 'Hoặc Tặng Combo Quà (Bao da S-View + Tai nghe Level Active)', 'Dây nguồn, Ốc', '1480382502_may-tinh-de-ban-dell-optiplex-3040sff-06.jpg', '
<h2>M&Aacute;Y T&Iacute;NH B&Agrave;N DELL OPTIPLEX 3046SFF 70086073 - THIẾT KẾ ẤN TƯỢNG</h2>
\r\n\r\n
<p>Bạn đang t&igrave;m một chiếc m&aacute;y t&iacute;nh để b&agrave;n chất lượng? H&atilde;y tham khảo chiếc m&aacute;y&nbsp;t&iacute;nh b&agrave;n Dell Optiplex 3046SFF 70086073 n&agrave;y nh&eacute;. Bề ngo&agrave;i của&nbsp;<a href=\"http://www.nguyenkim.com/may-tinh-de-ban-dell/\">m&aacute;y t&iacute;nh b&agrave;n Dell</a>&nbsp;n&agrave;y kh&aacute; ấn tượng, đầy chuy&ecirc;n nghiệp. Kh&ocirc;ng những thế, đ&acirc;y c&ograve;n l&agrave; một chiếc m&aacute;y chạy đồ họa cực mượt. Đ&acirc;y hứa hẹn sẽ l&agrave; một thiết kế mạnh, t&ocirc; điểm cho g&oacute;c l&agrave;m việc của bạn.&nbsp;M&aacute;y&nbsp;t&iacute;nh b&agrave;n Dell Optiplex 3046SFF 70086073 sẽ kh&ocirc;ng l&agrave;m bạn thất vọng khi sử dụng đ&acirc;u</p>
\r\n', '
<h2>CHI TIẾT T&Iacute;NH NĂNG</h2>
\r\n\r\n
<h3>Thiết kế cứng c&aacute;p</h3>
\r\n\r\n
<p>M&aacute;y&nbsp;t&iacute;nh b&agrave;n Dell Optiplex 3046SFF 70086073&nbsp;mang trong m&igrave;nh t&ocirc;ng m&agrave;u đen bắt mắt, rất th&iacute;ch hợp với nhiều kh&ocirc;ng gian l&agrave;m việc. B&ecirc;n cạnh đ&oacute;, thiết kế cứng c&aacute;p c&ugrave;ng với bộ tản nhiệt được lắp đặt rất hợp l&yacute; sẽ tăng độ bền cho m&aacute;y t&iacute;nh.</p>
\r\n\r\n
<p><img alt=\"Máy tính bàn Dell Optiplex 3046SFF 70086073 thiết kế cứng cáp, độ bền cao\" src=\"http://static.nguyenkimmall.com/images/companies/_1/Content/tin-hoc/may-tinh-de-ban/dell/may-tinh-de-ban-dell-optiplex-3046sff-70086073-core-i3-2.jpg\" /></p>
\r\n\r\n
<p>M&aacute;y&nbsp;t&iacute;nh b&agrave;n Dell Optiplex 3046SFF 70086073&nbsp;c&oacute;&nbsp;thiết kế cứng c&aacute;p</p>
\r\n\r\n
<h3>Hiệu năng hoạt động</h3>
\r\n\r\n
<p>Chip Intel Core-i3 6100 tốc độ cao 3.7GHz được trang bị tr&ecirc;n m&aacute;y&nbsp;t&iacute;nh b&agrave;n Dell Optiplex 3046SFF 70086073 c&oacute; hiệu suất hoạt động rất hiệu quả, m&aacute;y t&iacute;nh c&oacute; thể xử l&yacute; hiệu năng đa nhiệm nhanh ch&oacute;ng m&agrave; kh&ocirc;ng bị xảy ra hiện tượng giật.</p>
\r\n\r\n
<p><img alt=\"Máy tính bàn Dell Optiplex 3046SFF 70086073 trang bị chip Intel Core-i3 6100\" src=\"http://static.nguyenkimmall.com/images/companies/_1/Content/tin-hoc/may-tinh-de-ban/dell/may-tinh-de-ban-dell-optiplex-3046sff-70086073-core-i3--3.jpg\" /></p>
\r\n\r\n
<p>Xử l&yacute; t&aacute;c vụ nhanh với&nbsp;Intel Core-i3 6100 tr&ecirc;n m&aacute;y&nbsp;t&iacute;nh b&agrave;n Dell Optiplex 3046SFF 70086073</p>
\r\n\r\n
<h3>Ổ đĩa cứng&nbsp;500 GB</h3>
\r\n\r\n
<p><a href=\"http://www.nguyenkim.com/may-tinh-de-ban/\">M&aacute;y t&iacute;nh b&agrave;n&nbsp;</a>n&agrave;y trang bị ổ đĩa cứng với dung lượng l&ecirc;n đến 500GB, đem đến khả năng lưu trữ dữ liệu lớn, gi&uacute;p bạn c&oacute; thể c&agrave;i đặt ứng dụng, phần mềm m&agrave; kh&ocirc;ng phải lo về t&igrave;nh trạng hết bộ nhớ trống.</p>
\r\n\r\n
<p><img alt=\"Máy tính bàn Dell Optiplex 3046SFF 70086073 trang bị ổ HDD 500 GB\" src=\"http://static.nguyenkimmall.com/images/companies/_1/Content/tin-hoc/may-tinh-de-ban/asus/may-tinh-de-ban-asus-k31ad-vn028d-core-i3-4.jpg\" /></p>
\r\n\r\n
<p>M&aacute;y&nbsp;t&iacute;nh b&agrave;n Dell Optiplex 3046SFF 70086073&nbsp;lưu trữ dữ liệu lớn</p>
\r\n\r\n
<h3>Ổ đĩa quang DVD</h3>
\r\n\r\n
<p>Bạn cũng c&oacute; thể khai th&aacute;c được sự tiện lợi của đĩa DVD với ổ đĩa quang c&oacute; khả năng đọc v&agrave; ghi t&iacute;ch hợp tr&ecirc;n m&aacute;y&nbsp;t&iacute;nh b&agrave;n Dell Optiplex 3046SFF 70086073, hỗ trợ bạn rất nhiều trong qu&aacute; tr&igrave;nh sử dụng.</p>
\r\n\r\n
<p><img alt=\"Máy tính bàn Dell Optiplex 3046SFF 70086073 tích hợp ổ đĩa quang tiện lợi\" src=\"http://static.nguyenkimmall.com/images/companies/_1/Content/tin-hoc/may-tinh-de-ban/dell/may-tinh-de-ban-dell-optiplex-3046sff-70086073-core-i3-5.jpg\" /></p>
\r\n\r\n
<p>Ổ đĩa quang DVD t&iacute;ch hợp tr&ecirc;n m&aacute;y&nbsp;t&iacute;nh b&agrave;n Dell Optiplex 3046SFF 70086073</p>
\r\n\r\n
<h3>L&yacute; do mua h&agrave;ng</h3>
\r\n\r\n
<ul>
    \r\n	
    <li>
        \r\n	
        <p>C&oacute; thể dễ d&agrave;ng n&acirc;ng cấp phần cứng để ph&ugrave; hợp với nhu cầu sử dụng của m&igrave;nh.</p>
        \r\n	
    </li>
    \r\n	
    <li>
        \r\n	
        <p>Chip Intel Core-i3 6100 tốc&nbsp;độ cao c&ugrave;ng RAM 4 GB, gi&uacute;p xử l&yacute; c&aacute;c t&aacute;c vụ nhanh ch&oacute;ng.&nbsp;</p>
        \r\n	
    </li>
    \r\n	
    <li>
        \r\n	
        <p>T&iacute;ch hợp ổ đĩa quang DVD cho ph&eacute;p ghi v&agrave; đọc.</p>
        \r\n	
    </li>
    \r\n
</ul>
\r\n\r\n
<h3>Ưu đ&atilde;i mua h&agrave;ng</h3>
\r\n\r\n
<ul>
    \r\n	
    <li>
        \r\n	
        <p>Để đặt mua&nbsp;m&aacute;y t&iacute;nh b&agrave;n của Dell, bạn c&oacute; thể gọi ngay đến tổng đ&agrave;i&nbsp;<em>1900 1267</em>&nbsp;bấm ph&iacute;m số 1.</p>
        \r\n	
    </li>
    \r\n	
    <li>
        \r\n	
        <p>Bạn cũng c&oacute; thể y&ecirc;u cầu nh&acirc;n vi&ecirc;n Nguyễn Kim gọi lại để tiết kiệm chi ph&iacute; điện thoại.</p>
        \r\n	
    </li>
    \r\n	
    <li>
        \r\n	
        <p>Dịch vụ giao h&agrave;ng tận nơi nhanh ch&oacute;ng, tiện lợi.</p>
        \r\n	
    </li>
    \r\n
</ul>
\r\n\r\n
<h3>TH&Ocirc;NG SỐ KỸ THUẬT</h3>
\r\n\r\n
<h2>Th&ocirc;ng tin chung</h2>
\r\n\r\n
<p>Model:</p>
\r\n\r\n
<p>OPTIPLEX 3046SFF 70086073</p>
\r\n\r\n
<p>M&agrave;u sắc:</p>
\r\n\r\n
<p>Đen</p>
\r\n\r\n
<p>Nh&agrave; sản xuất:</p>
\r\n\r\n
<p>Dell</p>
\r\n\r\n
<p>Xuất xứ:</p>
\r\n\r\n
<p>Trung Quốc</p>
\r\n\r\n
<p>Thời gian bảo h&agrave;nh:</p>
\r\n\r\n
<p>12 th&aacute;ng</p>
\r\n\r\n
<p>Địa điểm bảo h&agrave;nh:</p>
\r\n\r\n
<p>Nguyễn Kim</p>
\r\n\r\n
<h2>Bộ vi xử l&yacute; m&aacute;y t&iacute;nh để b&agrave;n</h2>
\r\n\r\n
<p>CPU:</p>
\r\n\r\n
<p>Intel Core-i3</p>
\r\n\r\n
<p>Loại CPU:</p>
\r\n\r\n
<p>6100</p>
\r\n\r\n
<p>Tốc độ CPU:</p>
\r\n\r\n
<p>3.70 GHz</p>
\r\n\r\n
<p>Bộ nhớ đệm:</p>
\r\n\r\n
<p>3 MB Cache</p>
\r\n\r\n
<p>Tốc độ CPU tối đa:</p>
\r\n\r\n
<p>Kh&ocirc;ng</p>
\r\n\r\n
<h2>Bộ nhớ m&aacute;y t&iacute;nh để b&agrave;n</h2>
\r\n\r\n
<p>Loại RAM:</p>
\r\n\r\n
<p>SDRAM DDR3</p>
\r\n\r\n
<p>Dung lượng RAM:</p>
\r\n\r\n
<p>4 GB</p>
\r\n\r\n
<p>Tốc độ Bus:</p>
\r\n\r\n
<p>1600 MHz</p>
\r\n\r\n
<h2>Đĩa cứng m&aacute;y t&iacute;nh để b&agrave;n</h2>
\r\n\r\n
<p>Loại ổ đĩa cứng:</p>
\r\n\r\n
<p>SATA</p>
\r\n\r\n
<p>Dung lượng đĩa cứng:</p>
\r\n\r\n
<p>500 GB</p>
\r\n\r\n
<h2>Đĩa quang m&aacute;y t&iacute;nh để b&agrave;n</h2>
\r\n\r\n
<p>T&iacute;ch hợp ổ đĩa quang:</p>
\r\n\r\n
<p>C&oacute;</p>
\r\n\r\n
<p>Loại đĩa quang:</p>
\r\n\r\n
<p>SuperMulti DVD</p>
\r\n\r\n
<h2>Đồ họa m&aacute;y t&iacute;nh để b&agrave;n</h2>
\r\n\r\n
<p>Bộ xử l&yacute; đồ họa:</p>
\r\n\r\n
<p>Integrated Intel HD Graphics</p>
\r\n\r\n
<p>Chipset card đồ họa:</p>
\r\n\r\n
<p>Intel HD</p>
\r\n\r\n
<p>Dung lượng card đồ họa:</p>
\r\n\r\n
<p>Share</p>
\r\n\r\n
<h2>&Acirc;m thanh m&aacute;y t&iacute;nh để b&agrave;n</h2>
\r\n\r\n
<p>C&ocirc;ng nghệ &acirc;m thanh:</p>
\r\n\r\n
<p>High Definition</p>
\r\n\r\n
<p>Chuẩn &acirc;m thanh:</p>
\r\n\r\n
<p>High Definition Audio</p>
\r\n\r\n
<h2>Kết nối m&aacute;y t&iacute;nh để b&agrave;n</h2>
\r\n\r\n
<p>Cổng kết nối m&agrave;n h&igrave;nh:</p>
\r\n\r\n
<p>VGA</p>
\r\n\r\n
<p>Chuẩn WiFi:</p>
\r\n\r\n
<p>Kh&ocirc;ng</p>
\r\n\r\n
<p>Chuẩn LAN:</p>
\r\n\r\n
<p>10 / 100 Mbps</p>
\r\n\r\n
<p>Bluetooth:</p>
\r\n\r\n
<p>Kh&ocirc;ng</p>
\r\n\r\n
<p>Cổng USB:</p>
\r\n\r\n
<p>C&oacute;</p>
\r\n\r\n
<p>Cổng HDMI:</p>
\r\n\r\n
<p>Đang cập nhật</p>
\r\n\r\n
<p>Khe đọc thẻ nhớ:</p>
\r\n\r\n
<p>Đang cập nhật</p>
\r\n\r\n
<p>Kết nối kh&aacute;c:</p>
\r\n\r\n
<p>Kh&ocirc;ng</p>
\r\n\r\n
<h2>Hệ điều h&agrave;nh m&aacute;y t&iacute;nh để b&agrave;n</h2>
\r\n\r\n
<p>HĐH k&egrave;m theo m&aacute;y:</p>
\r\n\r\n
<p>Ubuntu</p>
\r\n\r\n
<h2>K&iacute;ch thước &amp; Khối lượng th&ugrave;ng</h2>
\r\n\r\n
<p>K&iacute;ch thước th&ugrave;ng:</p>
\r\n\r\n
<p>290x92x292 mm</p>
\r\n\r\n
<p>Khối lượng th&ugrave;ng (kg):</p>
\r\n\r\n
<p>6.1 kg</p>
\r\n', 'OPTIPLEX 3046SFF 70086073', 21890000, 1, 20, 1, '2016-11-28 18:10:44', '2016-11-28 18:21:42');
-- --------------------------------------------------------
--
-- Cấu trúc bảng cho bảng `pro_details`
--
CREATE TABLE `pro_details` (
`id` int(10) UNSIGNED NOT NULL,
`cpu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`ram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`screen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`vga` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`storage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`exten_memmory` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
`cam1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`cam2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`sim` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`connect` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`pin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`os` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`note` text COLLATE utf8_unicode_ci NOT NULL,
`pro_id` int(10) UNSIGNED NOT NULL,
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Đang đổ dữ liệu cho bảng `pro_details`
--
INSERT INTO `pro_details` (`id`, `cpu`, `ram`, `screen`, `vga`, `storage`, `exten_memmory`, `cam1`, `cam2`, `sim`, `connect`, `pin`, `os`, `note`, `pro_id`, `created_at`, `updated_at`) VALUES
(9, 'Exynos 8890, 8 Nhân', '4G', '5.1 inch (1440 x 2560 pixels)', 'Mali-T880 MP12', '32 GB', 'MicroSD (T-Flash)', '12MP', '5 MP', '1 Sim Micro', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '3000mAh', 'Andoid 6.0', '', 22, '2016-11-24 09:39:13', '2016-11-28 18:02:19'),
(10, 'Exynos 8890, 8 Nhân', '4G', '5.1 inch (1440 x 2560 pixels)', 'Mali-T880 MP12', '32 GB', 'MicroSD (T-Flash)', '12MP', '5 MP', '1 Sim Micro', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '3000mAh', 'Andoid 6.0', '', 23, '2016-11-24 09:39:28', '2016-11-24 09:39:28'),
(11, 'Apple A10', '3G', '5.5 inch (1920 x 1080 pixels)', 'chip apple 6 nhân', '256 G', 'không', 'dual 12 MP', '7MP', '1 Sim Nano', 'Wi-Fi 802.11 a/b/g/n/ac, Linning', '2890mAh', 'IOS 10.0', '', 24, '2016-11-24 18:48:39', '2016-12-01 20:52:21'),
(12, 'Apple A10', '3G', '5.5 inch (1920 x 1080 pixels)', 'chip apple 6 nhân', '128 G', 'không', 'dual 12 MP', '7MP', '1 Sim Nano', 'Wi-Fi 802.11 a/b/g/n/ac, Linning', '2890mAh', 'IOS 10.0', '', 25, '2016-11-24 18:48:46', '2016-12-01 20:53:36'),
(13, 'snapdragon 821 2.5 Ghz', '6G', '5.1 inch (1440 x 2560 pixels)', 'adreno900', '128 G', 'không', 'dual 12 MP', '7MP', '1 Sim Micro', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '3500mAh', 'Andoid 7.0', '', 26, '2016-11-25 23:44:07', '2016-11-28 23:01:37'),
(14, 'snapdragon 821 2.5 Ghz', '6G', '5.1 inch (1440 x 2560 pixels)', 'adreno900', '128 G', 'không', 'dual 12 MP', '7MP', '1 Sim Micro', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '3500mAh', 'Andoid 7.0', '', 27, '2016-11-25 23:44:11', '2016-11-28 23:01:52'),
(15, 'snapdragon 821 2.5 Ghz', '6G', '5.1 inch (1440 x 2560 pixels)', 'adreno900', '128 G', 'không', 'dual 12 MP', '7MP', '1 Sim Micro', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '3500mAh', 'Andoid 7.0', '', 28, '2016-11-25 23:44:15', '2016-11-28 23:02:04'),
(21, 'snapdragon 821 2.5 Ghz', '6G', '5.1 inch (1440 x 2560 pixels)', 'adreno900', '128 G', 'không', 'dual 12 MP', '7MP', '1 Sim Micro', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '3500mAh', 'Andoid 7.0', '', 34, '2016-11-25 23:45:03', '2016-11-28 23:03:32'),
(22, 'snapdragon 821 2.5 Ghz', '6G', '5.1 inch (1440 x 2560 pixels)', 'adreno900', '128 G', 'không', 'dual 12 MP', '7MP', '1 Sim Micro', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '3500mAh', 'Andoid 7.0', '', 35, '2016-11-25 23:45:08', '2016-11-28 23:04:05'),
(23, 'Intel, Celeron, N3050, 1.60 GHz', '	DDR3L (1 khe RAM), 2 GB, 1600 MHz', '15.6 inch, HD (1366 x 768 pixels)', 'Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)', 'HDD, 500 GB', 'có', '0.9 MP(16:9)', '', 'không', '802.11b/g/n, Bluetooth v4.0', 'Li-Ion 4 cell', 'Windows 10 bản dùng thử', '', 36, '2016-11-26 00:43:40', '2016-11-26 00:43:40'),
(24, 'Intel, Celeron, N3050, 1.60 GHz', '	DDR3L (1 khe RAM), 2 GB, 1600 MHz', '15.6 inch, HD (1366 x 768 pixels)', 'Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)', 'HDD, 500 GB', 'có', '0.9 MP(16:9)', '', 'không', '802.11b/g/n, Bluetooth v4.0', 'Li-Ion 4 cell', 'Windows 10 bản dùng thử', '', 37, '2016-11-26 00:43:47', '2016-11-26 00:43:47'),
(25, 'Intel, Celeron, N3050, 1.60 GHz', '	DDR3L (1 khe RAM), 2 GB, 1600 MHz', '15.6 inch, HD (1366 x 768 pixels)', 'Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)', 'HDD, 500 GB', 'có', '0.9 MP(16:9)', '', 'không', '802.11b/g/n, Bluetooth v4.0', 'Li-Ion 4 cell', 'Windows 10 bản dùng thử', '', 38, '2016-11-26 00:43:51', '2016-11-26 00:43:51'),
(26, 'Intel, Celeron, N3050, 1.60 GHz', '	DDR3L (1 khe RAM), 2 GB, 1600 MHz', '15.6 inch, HD (1366 x 768 pixels)', 'Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)', 'HDD, 500 GB', 'có', '0.9 MP(16:9)', '', 'không', '802.11b/g/n, Bluetooth v4.0', 'Li-Ion 4 cell', 'Windows 10 bản dùng thử', '', 39, '2016-11-26 00:43:55', '2016-11-26 00:43:55'),
(27, 'Intel, Celeron, N3050, 1.60 GHz', '	DDR3L (1 khe RAM), 2 GB, 1600 MHz', '15.6 inch, HD (1366 x 768 pixels)', 'Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)', 'HDD, 500 GB', 'có', '0.9 MP(16:9)', '', 'không', '802.11b/g/n, Bluetooth v4.0', 'Li-Ion 4 cell', 'Windows 10 bản dùng thử', '', 40, '2016-11-26 00:43:58', '2016-11-26 00:43:58'),
(28, 'Intel, Celeron, N3050, 1.60 GHz', '	DDR3L (1 khe RAM), 2 GB, 1600 MHz', '15.6 inch, HD (1366 x 768 pixels)', 'Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)', 'HDD, 500 GB', 'có', '0.9 MP(16:9)', '', 'không', '802.11b/g/n, Bluetooth v4.0', 'Li-Ion 4 cell', 'Windows 10 bản dùng thử', '', 41, '2016-11-26 00:44:02', '2016-11-26 00:44:02'),
(29, 'Core i5 650 3.2 Ghz/ Cache 4M/ 2.5 GT/s ', 'DDRam3 Dual Channel 4GB bus 1333 (2GB x 2)', 'Gigabyte H81-DS2', 'Intel® HD Graphics', '250GB SATA 7200 rpm ', 'không', 'Intel FAN Chuẩn', 'CTS 350W', '', 'USB, VGA, COM, Display Port ', '', 'Cài sẵn Windows 7 bản quyền', 'Dây nguồn, Ốc ..', 42, '2016-11-26 02:13:19', '2016-11-26 02:13:19'),
(30, 'Core i5 650 3.2 Ghz/ Cache 4M/ 2.5 GT/s ', 'DDRam3 Dual Channel 4GB bus 1333 (2GB x 2)', 'Gigabyte H81-DS2', 'Intel® HD Graphics', '250GB SATA 7200 rpm ', 'không', 'Intel FAN Chuẩn', 'CTS 350W', '', 'USB, VGA, COM, Display Port ', '', 'Cài sẵn Windows 7 bản quyền', 'Dây nguồn, Ốc ..', 43, '2016-11-26 02:13:24', '2016-11-26 02:13:24'),
(31, 'Core i5 650 3.2 Ghz/ Cache 4M/ 2.5 GT/s ', 'DDRam3 Dual Channel 4GB bus 1333 (2GB x 2)', 'Gigabyte H81-DS2', 'Intel® HD Graphics', '250GB SATA 7200 rpm ', 'Case thường', 'Intel FAN Chuẩn', 'CTS 350W', '', 'USB, VGA, COM, Display Port ', '', 'Cài sẵn Windows 7 bản quyền', 'Dây nguồn, Ốc ..', 44, '2016-11-26 02:13:27', '2016-11-26 02:13:27'),
(32, 'Core i5 650 3.2 Ghz/ Cache 4M/ 2.5 GT/s ', 'DDRam3 Dual Channel 4GB bus 1333 (2GB x 2)', 'Gigabyte H81-DS2', 'Intel® HD Graphics', '250GB SATA 7200 rpm ', 'không', 'Intel FAN Chuẩn', 'CTS 350W', '', 'USB, VGA, COM, Display Port ', '', 'Cài sẵn Windows 7 bản quyền', 'Dây nguồn, Ốc ..', 45, '2016-11-26 02:13:31', '2016-11-26 02:13:31'),
(33, 'Core i5 650 3.2 Ghz/ Cache 4M/ 2.5 GT/s ', 'DDRam3 Dual Channel 4GB bus 1333 (2GB x 2)', 'Gigabyte H81-DS2', 'Intel® HD Graphics', '250GB SATA 7200 rpm ', 'không', 'Intel FAN Chuẩn', 'CTS 350W', '', 'USB, VGA, COM, Display Port ', '', 'Cài sẵn Windows 7 bản quyền', 'Dây nguồn, Ốc ..', 46, '2016-11-26 02:13:35', '2016-11-26 02:13:35'),
(34, 'Core i5 650 3.2 Ghz/ Cache 4M/ 2.5 GT/s ', 'DDRam3 Dual Channel 4GB bus 1333 (2GB x 2)', 'Gigabyte H81-DS2', 'Intel® HD Graphics', '250GB SATA 7200 rpm ', 'không', 'Intel FAN Chuẩn', 'CTS 350W', '', 'USB, VGA, COM, Display Port ', '', 'Cài sẵn Windows 7 bản quyền', 'Dây nguồn, Ốc ..', 47, '2016-11-26 02:13:53', '2016-11-26 02:13:53'),
(35, 'Core i5 650 3.2 Ghz/ Cache 4M/ 2.5 GT/s ', 'DDRam3 Dual Channel 4GB bus 1333 (2GB x 2)', 'Gigabyte H81-DS2', 'Intel® HD Graphics', '250GB SATA 7200 rpm ', 'không', 'Intel FAN Chuẩn', 'CTS 350W', '', 'USB, VGA, COM, Display Port ', '', 'Cài sẵn Windows 7 bản quyền', 'Dây nguồn, Ốc ..', 48, '2016-11-26 02:13:55', '2016-11-26 02:13:55'),
(36, 'Core i5 650 3.2 Ghz/ Cache 4M/ 2.5 GT/s ', 'DDRam3 Dual Channel 4GB bus 1333 (2GB x 2)', 'Gigabyte H81-DS2', 'Intel® HD Graphics', '250GB SATA 7200 rpm ', 'không', 'Intel FAN Chuẩn', 'CTS 350W', '', 'USB, VGA, COM, Display Port ', '', 'Cài sẵn Windows 7 bản quyền', 'Dây nguồn, Ốc ..', 49, '2016-11-26 02:14:00', '2016-11-26 02:14:00'),
(37, 'Core i5 650 3.2 Ghz/ Cache 4M/ 2.5 GT/s ', 'DDRam3 Dual Channel 4GB bus 1333 (2GB x 2)', 'Gigabyte H81-DS2', 'Intel® HD Graphics', '250GB SATA 7200 rpm ', 'không', 'Intel FAN Chuẩn', 'CTS 350W', '', 'USB, VGA, COM, Display Port ', '', 'Cài sẵn Windows 7 bản quyền', 'Dây nguồn, Ốc ..', 50, '2016-11-26 02:14:03', '2016-11-26 02:14:03'),
(38, 'Intel cỏe I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', '', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 51, '2016-11-26 02:18:03', '2016-11-26 02:18:03'),
(39, 'Intel cỏe I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', '', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 52, '2016-11-26 02:18:08', '2016-11-26 02:18:08'),
(40, 'Intel cỏe I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', '', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 53, '2016-11-26 02:18:11', '2016-11-26 02:18:11'),
(41, 'Intel cỏe I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', '', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 54, '2016-11-26 02:18:14', '2016-11-26 02:18:14'),
(42, 'Intel cỏe I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', '', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 55, '2016-11-26 02:18:17', '2016-11-26 02:18:17'),
(43, 'Intel cỏe I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', '', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 56, '2016-11-26 02:18:34', '2016-11-26 02:18:34'),
(44, 'Intel cỏe I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', '', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 57, '2016-11-26 02:19:12', '2016-11-26 02:19:12'),
(45, 'Intel cỏe I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', '', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 58, '2016-11-26 02:19:16', '2016-11-26 02:19:16'),
(46, 'Intel cỏe I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', '', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 59, '2016-11-26 02:19:19', '2016-11-26 02:19:19'),
(47, 'Intel cỏe I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', '', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 60, '2016-11-26 02:20:26', '2016-11-26 02:20:26'),
(48, 'Intel cỏe I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', '', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 61, '2016-11-26 02:20:32', '2016-11-26 02:20:32'),
(49, 'Intel cỏe I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', '', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 62, '2016-11-26 02:20:35', '2016-11-26 02:20:35'),
(50, 'Intel cỏe I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', '', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 63, '2016-11-26 02:20:38', '2016-11-26 02:20:38'),
(52, 'Intel Core i3 2100', '4G DDR3', 'ASUS H61-DS2', 'Intel hd ', '256 G HDD', 'thường', 'INTEL FAN', '350W CTS', 'Không có', 'Wi-Fi 802.11 a/b/g/n/, LAN 1G', 'Không có', 'WIN 7', 'Không có', 69, '2016-11-28 18:10:45', '2016-11-28 18:21:42');
-- --------------------------------------------------------
--
-- Cấu trúc bảng cho bảng `users`
--
CREATE TABLE `users` (
`id` int(10) UNSIGNED NOT NULL,
`name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
`status` int(11) NOT NULL,
`remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Đang đổ dữ liệu cho bảng `users`
--
INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lhson', 'scodeweb2016@gmail.com', '$2y$10$TEY9mtHYRJ4G9oW.6n9D9.5.eHfae7I1po7iNVE8cNMsEORxtzv0m', '0868896944', 'Ho chi minh', 1, 'jFFpU4F9xl8TLtjS6DPBiI8qWugcLLXQWMtRSWx9UtBoB3TrjGpx66X8xMMh', '2016-11-23 20:44:11', '2016-12-17 02:55:05'),
(2, 'viet', 'viet@test.com', '$2y$10$l1kbe4s6eABtFVZqe5UpIese0vCemAMafuRjEPBanY8VIhZJgMUU2', '0868896944', 'dl', 1, NULL, '2016-12-25 21:45:02', '2016-12-25 21:45:02');
--
-- Chỉ mục cho các bảng đã đổ
--
--
-- Chỉ mục cho bảng `admin_users`
--
ALTER TABLE `admin_users`
ADD PRIMARY KEY (`id`),
ADD UNIQUE KEY `admin_users_email_unique` (`email`);
--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
ADD PRIMARY KEY (`id`),
ADD KEY `banners_user_id_foreign` (`user_id`);
--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
ADD PRIMARY KEY (`id`);
--
-- Chỉ mục cho bảng `detail_img`
--
ALTER TABLE `detail_img`
ADD PRIMARY KEY (`id`),
ADD KEY `detail_img_pro_id_foreign` (`pro_id`);
--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
ADD PRIMARY KEY (`id`),
ADD KEY `news_cat_id_foreign` (`cat_id`),
ADD KEY `news_user_id_foreign` (`user_id`);
--
-- Chỉ mục cho bảng `oders`
--
ALTER TABLE `oders`
ADD PRIMARY KEY (`id`),
ADD KEY `oders_c_id_foreign` (`c_id`);
--
-- Chỉ mục cho bảng `oders_detail`
--
ALTER TABLE `oders_detail`
ADD PRIMARY KEY (`id`),
ADD KEY `oders_detail_pro_id_foreign` (`pro_id`),
ADD KEY `oders_detail_o_id_foreign` (`o_id`);
--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
ADD KEY `password_resets_email_index` (`email`),
ADD KEY `password_resets_token_index` (`token`);
--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
ADD PRIMARY KEY (`id`),
ADD KEY `products_cat_id_foreign` (`cat_id`),
ADD KEY `products_user_id_foreign` (`user_id`);
--
-- Chỉ mục cho bảng `pro_details`
--
ALTER TABLE `pro_details`
ADD PRIMARY KEY (`id`),
ADD KEY `pro_details_pro_id_foreign` (`pro_id`);
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
-- AUTO_INCREMENT cho bảng `admin_users`
--
ALTER TABLE `admin_users`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT cho bảng `detail_img`
--
ALTER TABLE `detail_img`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `oders`
--
ALTER TABLE `oders`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `oders_detail`
--
ALTER TABLE `oders_detail`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT cho bảng `pro_details`
--
ALTER TABLE `pro_details`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Các ràng buộc cho các bảng đã đổ
--
--
-- Các ràng buộc cho bảng `banners`
--
ALTER TABLE `banners`
ADD CONSTRAINT `banners_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Các ràng buộc cho bảng `detail_img`
--
ALTER TABLE `detail_img`
ADD CONSTRAINT `detail_img_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
ADD CONSTRAINT `news_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Các ràng buộc cho bảng `oders`
--
ALTER TABLE `oders`
ADD CONSTRAINT `oders_c_id_foreign` FOREIGN KEY (`c_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Các ràng buộc cho bảng `oders_detail`
--
ALTER TABLE `oders_detail`
ADD CONSTRAINT `oders_detail_o_id_foreign` FOREIGN KEY (`o_id`) REFERENCES `oders` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `oders_detail_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Các ràng buộc cho bảng `pro_details`
--
ALTER TABLE `pro_details`
ADD CONSTRAINT `pro_details_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
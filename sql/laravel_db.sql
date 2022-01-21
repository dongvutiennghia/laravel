-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2022 at 07:24 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `image`, `description`, `content`, `created_at`, `updated_at`) VALUES
(20, 'Giới thiệu - MacBook', 'laptop-tot-nhat-ben-nhat-4-800x450.jpg', 'MacBook là sản phẩm laptop đến từ Apple. Máy có thiết kế nhỏ gọn, mỏng và trọng lượng không lớn cùng thiết kế sang trọng với cấu hình hiện đại mang đến hiệu năng mượt mà. Ngoài ra, hệ thống bảo mật của MacBook rất cao khiến người dùng khá tin tưởng.', '<p>hello</p>', NULL, NULL),
(21, 'Giới thiệu - ASUS', 'top-5-thuong-hieu-laptop-tot-nhat-2020-theo-digital-trends-21-800x537.jpg', 'Là hãng laptop có độ sang trọng chỉ xếp sau MacBook, ASUS có thiết kế bắt mắt và sang trọng, bền bỉ cho từng phân khúc. Nhìn chung, ở phân khúc bình dân ASUS cũng đang dần chiếm lĩnh thị trường, top 3 nhà cung cấp máy tính xách tay trên thế giới.', '<p>hi</p>', NULL, NULL),
(22, 'Gioi thiệu - HP', 'nhat-2020-theo-digital-trends-22-800x537.jpg', 'HP (viết tắt của Hewlett-Packard) là thương hiệu máy tính nổi tiếng được ra đời tại Hoa Kỳ từ năm 1939. Trong những năm gần đây, laptop HP liên tục cho ra đời những sản phẩm có thiết kế đẹp, bắt mắt.', '<p>hola</p>', NULL, NULL),
(23, 'Giới thiệu - Lenovo', 'lenovo.jpg', 'Lenovo là thương hiệu của tập đoàn đa quốc gia Lenovo Group Ltd được thành lập vào năm 1984 ở Bắc Kinh. laptop Lenovo được sản xuất với công nghệ hiện đại, chất lượng tốt, giá thành phải chăng.', '<p>test</p>', NULL, NULL),
(24, 'Giới thiệu - Acer', 'aser.jpg', 'Đối với các bạn học sinh, sinh viên, nhân viên văn phòng, hãng laptop Acer vẫn luôn là một trợ thủ đắc lực trong mọi hoạt động học tập, giải trí, kết nối của bạn trong cuộc sống. Bằng thiết kế đẹp mắt, gọn nhẹ laptop Acer giúp cho việc di chuyển dễ dàng hơn.', '<p>content</p>', NULL, NULL),
(25, 'Giới thiệu - Dell', 'dell.jpg', 'Nhắc đến Dell là nhắc đến độ bền, kiểu dáng đẹp, bắt mắt, linh kiện tốt và khả năng hoạt động cực kỳ bền bỉ. Dell thuộc dòng sản phẩm laptop chất lượng cao và có lịch sử lâu đời nên giá thành cũng hơi nhỉnh hơn so với mặt bằng chung.', '<p>content</p>', NULL, NULL),
(26, 'Giới thiệu - MSI', 'msi.jpg', 'Nếu bạn đang tìm laptop dành cho game thủ, laptop MSI là thương hiệu mà bạn chắc chắn không thể nào bỏ qua. Đây là thương hiệu của một công ty công nghệ có trụ sở tại Đài Loan và đã xuất hiện tại 120 quốc gia trên toàn châu lục.', '<p>content</p>', NULL, NULL),
(27, 'Giới thiệu - Gigabyte', 'gigabyte.jpg', 'Gigabyte là thương hiệu được thành lập năm 1986 tại Đài Loan. Với câu slogan “Nâng cấp cuộc sống của bạn\", laptop Gigabyte mang một thiết kế tinh tế, hiện đại, tạo trải nghiệm đa nhiệm cho giới trẻ.', '<p>content</p>', NULL, NULL),
(28, '- Laptop Dell Inspiron 15 3511 (P112F001CBL)', 'iconx.png', 'Dell Inspiron 15 (P112F001CBL) sở hữu thiết kế sang trọng, thanh lịch, với cấu hình ổn thoải mái đáp ứng các tác vụ học tập, văn phòng và giải trí cơ bản.', '<p>lap top sieu chat luong</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'DELL', NULL, NULL),
(2, 'Apple', NULL, NULL),
(4, 'Lenovo', NULL, NULL),
(5, 'HP', NULL, NULL),
(6, 'Nuong Anh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `id_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `image`, `name`, `price`, `qty`, `id_product`, `created_at`, `updated_at`) VALUES
(57, 'http://localhost/blog/public/upload/product/gram17-21-white-1.jpg', 'dell 5415', 10000, 120, '1', '2022-01-05 22:19:31', '2022-01-17 19:00:33'),
(58, 'http://localhost/blog/public/upload/product/dellgr.jpg', 'laptop...', 10000, 42, '2', '2022-01-05 22:21:59', '2022-01-07 11:24:31'),
(59, 'http://localhost/blog/public/upload/product/hpg7.jpg', '123', 123, 9, '3', '2022-01-06 08:24:51', '2022-01-12 01:07:08'),
(60, 'http://localhost/blog/public/upload/product/t470s.jpg', 'Tai nghe LS', 10000, 3, '4', '2022-01-06 08:36:59', '2022-01-11 22:50:39'),
(61, 'http://localhost/blog/public/upload/product/dell-inspiron-14-5415-4.png', 'dell-inspiron-14-5415', 10000, 2, '8', '2022-01-14 21:42:47', '2022-01-14 21:57:12'),
(62, 'http://localhost/blog/public/upload/product/dell-g7-7591.jpg', 'dell-g7-7591', 10000, 7, '7', '2022-01-14 21:47:34', '2022-01-15 12:25:02'),
(63, 'dell-latitude-e7270.jpg', 'Lap top moi', 1000, 1, '22', '2022-01-17 02:09:32', '2022-01-17 02:09:32'),
(64, 'http://localhost/blog/public/upload/product/dell-latitude-5480.jpg', 'dell-latitude-5480', 250, 1, '12', '2022-01-17 19:03:12', '2022-01-17 19:03:12'),
(65, '1642485978--dell-inspiron-3501.jpg', 'aaa', 123, 5, '28', '2022-01-17 23:07:15', '2022-01-20 21:39:46'),
(66, 'http://localhost/blog/public/upload/product/1642485552--dell-g7-7591.jpg', 'asd', 100, 17, '27', '2022-01-17 23:13:16', '2022-01-20 11:14:17'),
(67, '1642487273--1z3118954025165_3ccc8b97b8bc9500b6fba3f5a1447974.jpg', 'Khô Bò', 32, 3, '29', '2022-01-17 23:33:06', '2022-01-19 03:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', NULL, NULL),
(2, 'Tablet', NULL, NULL),
(5, 'Iphone', NULL, NULL),
(7, 'Meat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `blog_id`, `user_id`, `content`, `avatar`, `name`, `level`, `created_at`, `updated_at`) VALUES
(52, 21, 90, 'lap top nay gia bao nhieu a', 'hpg7.jpg', 'bao cao 16/1', 0, NULL, NULL),
(53, 21, 90, 'giá 2000$ ạ', 'hpg7.jpg', 'bao cao 16/1', 52, NULL, NULL),
(54, 20, 90, 'lap top dep qua', 'hpg7.jpg', 'bao cao 16/1', 0, NULL, NULL),
(55, 20, 90, 'Xin giá ạ', 'hpg7.jpg', 'bao cao 16/1', 0, NULL, NULL),
(58, 20, 109, 'dsa', 'dell-g7-7591.jpg', 'zzzzz', 0, NULL, NULL),
(59, 20, 109, 'dsa', 'dell-g7-7591.jpg', 'zzzzz', 0, NULL, NULL),
(60, 20, 109, 'haha', 'dell-g7-7591.jpg', 'zzzzz', 55, NULL, NULL),
(61, 20, 109, 'sfsdf', 'dell-g7-7591.jpg', 'zzzzz', 0, NULL, NULL),
(62, 20, 109, 'dêdede', 'dell-g7-7591.jpg', 'zzzzz', 61, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES
(6, 'London', NULL, NULL),
(7, 'India', NULL, NULL),
(8, 'Usa', NULL, NULL),
(9, 'Canada', NULL, NULL),
(10, 'VietNam', NULL, NULL),
(14, 'Lao', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'nghia', 'nghia@gmail.com', 'asdasd123', NULL, NULL),
(3, 'demo sql', 'demo_update@gmail.com', 'asd123', NULL, NULL),
(5, 'demo sql', 'demo_insert@gmail.com', 'asdasd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `email`, `phone`, `name`, `id_user`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(19, 'nghia123@gmail.com', NULL, 'nghiatien86@gmail.com', '80', 60000, 6, '2022-01-14 21:56:00', '2022-01-14 21:56:00'),
(20, 'nghia123@gmail.com', '090551123123', 'nghiatien86@gmail.com', '80', 50000, 5, '2022-01-14 21:57:46', '2022-01-14 21:57:46'),
(21, 'nghiatien869@gmail.com', '0905123456', 'Bao cao do an', '81', 30466, 3, '2022-01-15 04:14:12', '2022-01-15 04:14:12'),
(22, 'nghiatien869@gmail.com', '0905123456', 'Tien Nghia121', '82', 20533, 4, '2022-01-15 04:19:32', '2022-01-15 04:19:32'),
(23, 'nghiatien869@gmail.com', '0905123456', 'Tien Nghia121', '82', 73795, 23, '2022-01-15 06:49:54', '2022-01-15 06:49:54'),
(24, 'nghiatien869@gmail.com', '0905123123', 'bao cao 16/1', '83', 61631, 13, '2022-01-15 10:53:46', '2022-01-15 10:53:46'),
(25, 'nghiatien869@gmail.com', '0905123123', 'bao cao 16/1', '83', 10833, 4, '2022-01-15 10:58:45', '2022-01-15 10:58:45'),
(26, 'ad@gmail.com', NULL, 'bao cao 16/1', '88', 20466, 4, '2022-01-15 11:13:27', '2022-01-15 11:13:27'),
(27, 'admin@gmail.com', '123123123', 'bao cao 16/1', '89', 10233, 2, '2022-01-15 11:56:47', '2022-01-15 11:56:47'),
(28, 'admin@gmail.com', '123123123', 'bao cao 16/1', '89', 20233, 3, '2022-01-15 12:17:35', '2022-01-15 12:17:35'),
(29, 'admin@gmail.com', '123123123', 'bao cao 16/1', '89', 31398, 9, '2022-01-15 12:20:38', '2022-01-15 12:20:38'),
(30, 'addd@gmail.com', '2121212', 'bao cao 16/1', '90', 11600, 6, '2022-01-15 12:31:00', '2022-01-15 12:31:00'),
(31, 'addd@gmail.com', '2121212', 'bao cao 16/1', '90', 60000, 6, '2022-01-15 12:34:07', '2022-01-15 12:34:07'),
(32, 'test@gmail.com', '0905100200', 'test1111', '93', 3603, 15, '2022-01-15 18:31:02', '2022-01-15 18:31:02'),
(33, 'nghiatien84469@gmail.com', '0905123123', 'bao cao 16/1', '94', 20233, 3, '2022-01-15 18:32:32', '2022-01-15 18:32:32'),
(34, 'nghiatien869@gmail.com', '0905123123', 'hi', '96', 20000, 2, '2022-01-15 21:17:31', '2022-01-15 21:17:31'),
(35, 'asdaa@gmail.com', NULL, 'hello1', '97', 30233, 4, '2022-01-15 21:54:52', '2022-01-15 21:54:52'),
(36, 'nghiatien869@gmail.com', '0905123123', 'oooo', '100', 20233, 3, '2022-01-17 02:35:24', '2022-01-17 02:35:24'),
(37, 'asda@gmail.com', '0905123123', 'asda@gmail.com', '99', 21233, 4, '2022-01-17 03:09:02', '2022-01-17 03:09:02'),
(38, 'lnak8101@gmail.com', NULL, 'lnak8101', '101', 30699, 6, '2022-01-17 19:01:00', '2022-01-17 19:01:00'),
(39, 'lnak8101@gmail.com', NULL, 'lnak8101', '101', 750, 3, '2022-01-17 19:03:35', '2022-01-17 19:03:35'),
(40, 'lnak8101@gmail.com', NULL, 'lnak8101', '101', 892, 8, '2022-01-17 23:18:25', '2022-01-17 23:18:25'),
(41, 'baoquy1410@gmail.com', NULL, 'Quy Tra Tien', '102', 546, 5, '2022-01-17 23:21:44', '2022-01-17 23:21:44'),
(42, 'addda@gmail.com', '123', 'asas@gmail.com', '106', 255, 3, '2022-01-18 10:06:08', '2022-01-18 10:06:08'),
(43, 'zzz@gmail.com', NULL, 'zzz', '108', 100, 1, '2022-01-20 11:11:37', '2022-01-20 11:11:37'),
(44, 'zzzzz@gmail.com', NULL, 'zzzzz', '109', 155, 2, '2022-01-20 21:40:01', '2022-01-20 21:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_12_03_012722_laravel_db', 1),
(5, '2021_12_03_014033_create_demo_table', 2),
(6, '2021_12_04_113604_update_demo_table', 3),
(7, '2021_12_05_181658_create_players_table', 4),
(8, '2021_12_10_004409_update_uers_table', 5),
(9, '2021_12_12_093958_create_country_table', 6),
(10, '2021_12_12_094359_create_country_table', 7),
(11, '2021_12_13_141832_create_blog_table', 8),
(12, '2021_12_16_133008_update_user_table', 9),
(13, '2021_12_20_185536_create_rate_table', 10),
(14, '2021_12_22_081721_create_comment_table', 11),
(15, '2021_12_23_124441_create_comment_table', 12),
(16, '2021_12_29_104142_create_product_table', 13),
(17, '2021_12_29_112757_create_category_table', 13),
(18, '2021_12_29_112824_create_brand_table', 13),
(19, '2022_01_01_145908_create_test_file', 13),
(20, '2022_01_05_054746_create_cart_table', 14),
(21, '2022_01_05_132149_create_sessions_table', 15),
(22, '2022_01_09_162421_create_history_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('laravel@gmail.com', '$2y$10$C4nbgROLPh/CfyELhNBczOPUNhkYHTke2.TGsd0MVclzyMCxGU/cm', '2021-12-12 02:40:49'),
('asd@gmail.com', '$2y$10$nzvJlfokgLYSlR.TW4SmXOIhDMCsW5J2cuefG8s/LJV9dHg19zyVe', '2022-01-18 08:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `national` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `age`, `national`, `position`, `salary`, `created_at`, `updated_at`) VALUES
(1, 'nghia edit 123', 20, 'VN', 'GK', '1000', NULL, NULL),
(2, 'nghia', 20, 'VN', 'GK', '1000', NULL, NULL),
(15, 'laravel', 7, 'asd', 'asd', '20001', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `id_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_user`, `name`, `price`, `id_category`, `id_brand`, `status`, `sale`, `company`, `image`, `detail`, `created_at`, `updated_at`) VALUES
(27, '101', 'asd', 100, '1', '1', '0', '0', 'CSS', '[\"1642485552--dell-g7-7591.jpg\",\"1642485552--dell-g7-7591-1-100x100.jpg\",\"1642485552--dell-g7-7591-6-100x100.jpg\"]', 'detail', NULL, NULL),
(28, '101', 'aaa', 123, '1', '1', '0', '0', 'HT', '[\"1642485978--dell-inspiron-3501.jpg\",\"1642485978--dell-inspiron-3501-1-100x100.jpg\",\"1642485978--dell-inspiron-3501-8-100x100.jpg\"]', 'dsadsa', NULL, NULL),
(29, '102', 'Khô Bò', 32, '7', '6', '0', '0', 'Anh Nuong Family', '[\"1642487273--1z3118954025165_3ccc8b97b8bc9500b6fba3f5a1447974.jpg\",\"1642487273--2z3118954021569_de10a09d383eb6ee0efee45d99c76bfa.jpg\",\"1642487273--3z3118954022016_bf4e22020e64b6cbee64d9ccb27dbdb5.jpg\"]', 'Sản phẩm nhà làm ngon như nhà làm.', NULL, NULL),
(30, '108', 'hello', 120, '1', '1', '1', '13', 'CCS', '[\"1642766001--dell-g7-7591.jpg\",\"1642766001--dell-g7-7591-1-100x100.jpg\",\"1642766001--dell-g7-7591-6-100x100.jpg\"]', 'detail', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `blog_id`, `qty`, `created_at`, `updated_at`) VALUES
(176, 21, 5, NULL, NULL),
(177, 21, 1, NULL, NULL),
(178, 21, 5, NULL, NULL),
(179, 21, 5, NULL, NULL),
(180, 21, 4, NULL, NULL),
(181, 21, 3, NULL, NULL),
(182, 21, 3, NULL, NULL),
(183, 21, 3, NULL, NULL),
(184, 21, 1, NULL, NULL),
(185, 21, 1, NULL, NULL),
(186, 21, 5, NULL, NULL),
(187, 21, 5, NULL, NULL),
(188, 21, 5, NULL, NULL),
(189, 20, 5, NULL, NULL),
(190, 20, 5, NULL, NULL),
(191, 20, 5, NULL, NULL),
(192, 20, 5, NULL, NULL),
(193, 20, 5, NULL, NULL),
(194, 21, 5, NULL, NULL),
(195, 21, 1, NULL, NULL),
(196, 21, 1, NULL, NULL),
(197, 21, 1, NULL, NULL),
(198, 21, 5, NULL, NULL),
(199, 21, 5, NULL, NULL),
(200, 21, 5, NULL, NULL),
(201, 21, 5, NULL, NULL),
(202, 21, 5, NULL, NULL),
(203, 21, 5, NULL, NULL),
(204, 21, 5, NULL, NULL),
(205, 21, 5, NULL, NULL),
(206, 21, 5, NULL, NULL),
(207, 20, 5, NULL, NULL),
(208, 20, 1, NULL, NULL),
(209, 20, 5, NULL, NULL),
(210, 20, 5, NULL, NULL),
(211, 20, 1, NULL, NULL),
(212, 20, 1, NULL, NULL),
(213, 20, 1, NULL, NULL),
(214, 20, 1, NULL, NULL),
(215, 20, 1, NULL, NULL),
(216, 20, 1, NULL, NULL),
(217, 20, 5, NULL, NULL),
(218, 20, 4, NULL, NULL),
(219, 20, 5, NULL, NULL),
(220, 26, 5, NULL, NULL),
(221, 26, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1:admin 0:member',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `address`, `country`, `avatar`, `remember_token`, `level`, `created_at`, `updated_at`) VALUES
(4, 'laravel', 'laravel7@gmail.com', NULL, '$2y$10$AC7n2w6mRDHzgASYB9zMwOTLFb5.ocXiqi4ve7Ry9mIcATgJkw4R.', NULL, NULL, 7, NULL, NULL, 0, '2021-12-13 06:32:12', '2021-12-13 06:54:33'),
(6, 'hello', 'hello@gmail.com', NULL, '$2y$10$0UmIN2g5F9UcSMYtS8CX.OowSD4UVOF/0T/cceJsfl1aOYXqZzAKu', NULL, NULL, 9, '1634201500-168-thumbnail-width640height480.jpg', NULL, 0, '2021-12-16 07:57:00', '2021-12-16 07:57:00'),
(7, 'test2', 'test2@gmail.com', NULL, '$2y$10$GzpimRuU42a1kyGkrpTvv.R1PRC0QSFo31G9SRdEivWoIsTZ1nNt2', NULL, NULL, 9, '1634376313-892-thumbnail-width640height480.jpg', NULL, 0, '2021-12-16 08:02:47', '2021-12-16 08:02:47'),
(9, 'asd', 'asd@gmail.com', NULL, '$2y$10$JzOwfU2Z9CoHSKhmIyKu8.AURkclOVycbKzoAZZjiwBAXT0VJt9IC', NULL, NULL, 9, '1634273411-60-thumbnail-width640height480.jpg', NULL, 0, '2021-12-16 08:03:29', '2021-12-16 08:03:29'),
(10, 'asdasd', 'nghiatien89@gmail.com', NULL, '$2y$10$M.J6g20bH2STpoguj5q/PeAnL6hcyra0nYnO7wMqCSqgjQTNb1lMS', NULL, NULL, 6, '8-640-1634396279-967-width640height480.jpg', NULL, 0, '2021-12-16 18:34:06', '2021-12-16 18:34:06'),
(12, 'hello', 'hello1@gmail.com', NULL, '$2y$10$Q78MYc9c3kacw/dHyje.o.kko/4TSmDxSLwi74FPEeILvx7/PV7ym', NULL, NULL, 7, '1634397683-183-thumbnail-width640height480.jpg', NULL, 1, '2021-12-24 07:06:28', '2021-12-24 07:06:28'),
(13, 'hello2', 'hello2@gmail.com', NULL, '$2y$10$Dw90sU8OoXjFhUveuH6SMehPekbODzhwfOAcsOhQmb1h4.Xz6ZZ8a', NULL, NULL, 10, '1634397683-183-thumbnail-width640height480.jpg', NULL, 0, '2021-12-24 07:09:40', '2021-12-24 07:09:40'),
(14, 'update test', 'hello3@gmail.com', NULL, '$2y$10$51x4reh/xiIqEDs4BcY.eeBQBuLgLSyvP9H2PK/cvvjvbUTeHZWC.', NULL, NULL, 8, 'ava-1634354231-152-width640height480.jpg', NULL, 0, '2021-12-24 09:18:48', '2021-12-27 06:14:05'),
(15, 'hello4@gmail.com', 'hello4@gmail.com', NULL, '$2y$10$dinokZZ7t6gJJKSaoCCfNOIfSvgcEzoV1D/O5nAhBkAzvTRsmbeYe', NULL, NULL, 9, '1634376313-892-thumbnail-width640height480.jpg', NULL, 1, '2021-12-27 10:38:32', '2021-12-27 10:42:47'),
(16, 'hello', 'test12@gmail.com', NULL, '$2y$10$myzbZY2d2mQpaU3WxhyuZud/q8pFqEuzJYdP72hDcTR3fe.MPh4wS', NULL, NULL, 6, NULL, NULL, 1, '2022-01-09 09:39:36', '2022-01-09 09:39:36'),
(25, 'asdasd@gmail.com', 'asdasdasd@gmail.com', NULL, '$2y$10$cQhfXK8v6l6hXKbJ2GkmDOUHsemUj3bJSTC9nmsrJ10UC.7w5bx1i', NULL, NULL, 6, NULL, NULL, 1, '2022-01-09 10:39:09', '2022-01-09 10:39:09'),
(26, 'asdasd@gmail.com', 'da@gmail.com', NULL, '$2y$10$5KpixCdEOlXYROUkcSfMiu/sFlZH/M4h2HGvfXypMHswnwJjUdWVq', NULL, NULL, 6, NULL, NULL, 1, '2022-01-09 10:53:37', '2022-01-09 10:53:37'),
(32, 'asdasd@gmail.com', 'asddsa@gmail.com', NULL, '$2y$10$TujxKnbkkIY0G64IGxIvp.izRR3SFEuHnfVtZJvG0jjTNhbZXvpOi', NULL, NULL, 6, NULL, NULL, 1, '2022-01-10 03:57:54', '2022-01-10 03:57:54'),
(42, 'asdasd@gmail.com', 'aaa@gmail.com', NULL, '$2y$10$5wLbhzhGw5DhIftOI1kR3OtQyqkjgqqqrlJZ5KoiQvV2cNtJanlDC', NULL, NULL, 6, NULL, NULL, 1, '2022-01-11 23:42:34', '2022-01-11 23:42:34'),
(72, 'nghiatien869@gmail.com', 'nghiatien6@gmail.com', NULL, '$2y$10$Kw42pvaZV8opNHBgMzzbBu5yXjf.h69kZkwfChsMj7z79GtVYjcSG', NULL, NULL, 6, NULL, NULL, 1, '2022-01-12 01:33:54', '2022-01-12 01:33:54'),
(74, 'Nghia Tien', 'nghiatien@gmail.com2', NULL, '$2y$10$FA18pDKQD7hTCg2OPuQ.Vuq4aq05MiTsGy0dVIlrE2CHNbBJfSU6a', NULL, NULL, 6, NULL, NULL, 1, '2022-01-12 02:02:34', '2022-01-12 02:02:34'),
(86, 'bao cao 16/1', 'aa@gmail.com', NULL, '$2y$10$hh8XMF20mzjsov6Yu6VcEeEf2inEnakrpgbAaTKoJQoJn3XjRM14u', NULL, NULL, 6, 'profile.png', NULL, 1, '2022-01-15 11:08:34', '2022-01-15 11:08:34'),
(87, 'bao cao 16/1', 'ngh@gmail.com', NULL, '$2y$10$U7WaYE1CRjvNsiOJC39Eu.4bxyAgbKeAZ0aooxJc.JTw2GLLJSGlu', NULL, NULL, 10, 'profile.png', NULL, 1, '2022-01-15 11:09:23', '2022-01-15 11:09:23'),
(88, 'bao cao 16/1', 'ad@gmail.com', NULL, '$2y$10$BHXC.47/lfzNpIyRX.taeuURyFfjYVR.TGPxQOrl4DiO8/DKssb0m', NULL, NULL, 6, 'iconx.png', NULL, 1, '2022-01-15 11:09:54', '2022-01-15 11:09:54'),
(89, 'bao cao 16/1', 'admin@gmail.com', NULL, '$2y$10$l2ZOokKyp9vVAhSmwKsul.44O43xJcYFWgJ2sRdlybZjNqHDzC/wy', '123123123', NULL, 6, 'iconx.png', NULL, 1, '2022-01-15 11:39:37', '2022-01-15 11:39:37'),
(90, 'bao cao 16/1', 'addd@gmail.com', NULL, '$2y$10$3qhreXZj3ITBEGMyB2u/Pe0ZluP/3ecGSuQWVMO2pQfeN9HR46o8a', '2121212', NULL, 6, 'hpg7.jpg', NULL, 1, '2022-01-15 12:26:54', '2022-01-15 12:26:54'),
(91, 'Báo cáo đồ án', 'doan@gmail.com', NULL, '$2y$10$GOjTXYo7kymywHy.XtdQbudJEZxqiLxd3SVlD1jl7eQ/6Gr2W/LbS', NULL, NULL, 10, 'profile.png', NULL, 1, '2022-01-15 18:03:31', '2022-01-15 18:03:31'),
(96, 'hi', 'nghiatie3n869@gmail.com', NULL, '$2y$10$R8mm077fTYRc4Buq/eiu0u0L2s.TP3pOipg8IIs/cLl7O0Ndh/LZi', '0905123123', NULL, 10, 'okeicon.png', NULL, 1, '2022-01-15 21:17:26', '2022-01-15 21:17:26'),
(97, 'hello1', 'asdaa@gmail.com', NULL, '$2y$10$O1KkQbIjRSmDhW01f/FFqe7M0277.gj5biXvaoAHS325vr49rgZs6', NULL, NULL, 8, 'gram17-21-white-1.jpg', NULL, 1, '2022-01-15 21:38:51', '2022-01-15 21:39:50'),
(98, 'asdaa@gmail.com', 'ddda@gmail.com', NULL, '$2y$10$FYJARmVIZiNEkEeuRbPT.OzgvIllr56Ri8SkPRJpOq/a6lKJgNm3G', NULL, NULL, 6, 'iconx.png', NULL, 1, '2022-01-16 03:07:53', '2022-01-16 03:07:53'),
(99, 'asda@gmail.com', 'asda@gmail.com', NULL, '$2y$10$pe8L53pJ3ENuXbkFvbqgvONNvObIo6v81Zv6Ju9qoHns6TKcpjXm2', '0905123123', NULL, 6, 'dell-inspiron-14-5415-5-100x100.jpg', NULL, 1, '2022-01-17 02:11:27', '2022-01-17 02:11:27'),
(100, 'oooo', 'nghiatien869@gmail.com', NULL, '$2y$10$y7Ng7/CwFLPabAwHPsf58exjptZt2.G8dqb05paswOfGzglCSf53a', '0905123123', NULL, 10, 'dell-inspiron-14-5415-100x100.jpg', NULL, 1, '2022-01-17 02:31:35', '2022-01-17 02:31:35'),
(101, 'lnak8101', 'lnak8101@gmail.com', NULL, '$2y$10$ZvzZ9ZweVVA/ApwCAqXnkeQW53gF9eGmyRB4FDpsSEsmKcganS30.', NULL, NULL, 10, 'dell-g7-7591.jpg', NULL, 1, '2022-01-17 19:00:15', '2022-01-17 19:00:15'),
(103, 'aa', 'asas@gmail.com', NULL, '$2y$10$TjTaeCPe6zVlCSABvSNG1ueziODyPC1qLdr4gKxQvW2yFrEIymwBa', NULL, NULL, 7, 'dell-g7-7591.jpg', NULL, 0, '2022-01-18 00:57:05', '2022-01-18 00:57:05'),
(104, 'admin', 'admina@gmail.com', NULL, '$2y$10$VpyXEw.W69jgFXhQgO/CEuXX0exlTqk.AXitOTRmGadMmtLpZEEnK', NULL, NULL, NULL, NULL, NULL, 1, '2022-01-18 01:44:04', '2022-01-18 01:44:04'),
(106, 'asas@gmail.com', 'addda@gmail.com', NULL, '$2y$10$jI34BBIr71qY5O5/suO4Hu2yaoooAuduJ/D.Z.WAsCTwJLvrNb0va', '123', NULL, 6, 'dell-g7-7591.jpg', NULL, 0, '2022-01-18 10:06:03', '2022-01-18 10:06:03'),
(107, 'asas@gmail.com', 'ffa@gmail.com', NULL, '$2y$10$Mjy6Nkfcag/n0R6ZoUxi9esnrJukoI.kgyxEg0rpPV4Sgr1dRMSyu', NULL, NULL, 6, 'dell-g7-7591.jpg', NULL, 1, '2022-01-18 10:07:06', '2022-01-18 10:07:06'),
(108, 'zzz', 'zzz@gmail.com', NULL, '$2y$10$x/9aB/4cP9WPZbLJuXN3Su5mT7HFJozXQu95OW.Z2nYsFv4GkPJYC', NULL, NULL, 10, 'dell-g7-7591.jpg', 'xIYAz1LKjuUV8k7ejkmIqOt7G3AXS35gEvKDoCBMous1Qj3rarTa1EVMIPEh', 1, '2022-01-20 11:05:58', '2022-01-20 11:05:58'),
(109, 'zzzzz', 'zzzzz@gmail.com', NULL, '$2y$10$I3Vxwf4yV.Ub3NRd9zcxpOq0BXyk7XwnrrzXi2UDnj0eCgGhVVulO', NULL, NULL, 10, 'dell-g7-7591.jpg', NULL, 0, '2022-01-20 11:08:48', '2022-01-20 11:08:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_blog_id_foreign` (`blog_id`),
  ADD KEY `comment_user_id_foreign` (`user_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `demo_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rate_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `country` (`country`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`),
  ADD CONSTRAINT `comment_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 12:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `selera_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `products_id`, `users_id`, `created_at`, `updated_at`) VALUES
(6, 3, 3, '2023-08-28 17:52:13', '2023-08-28 17:52:13'),
(13, 2, 1, '2023-10-09 20:39:16', '2023-10-09 20:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `photo`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tas', 'assets/category/xbDioZjhVycYQ0yUJy3m7pDw33hUukxNEF1UWvyI.png', 'tas', NULL, '2023-08-26 06:04:52', '2023-08-26 06:04:52'),
(2, 'Sepatu', 'assets/category/RXHk38yqAOpDJ0w4Q4tQiSdAcYg4ebe5tG0ccRaV.png', 'sepatu', NULL, '2023-08-26 06:05:44', '2023-08-26 06:05:44'),
(3, 'Perhiasan', 'assets/category/cnhQNItoOt4XmJs77aulnESdGO3j18UTjEAtf1rz.png', 'perhiasan', NULL, '2023-08-26 06:06:00', '2023-08-26 06:06:00'),
(4, 'Gelang', 'assets/category/NxXTjFajHTRFOFLBELJrSN4nhlu40TDoNeofBt7s.png', 'gelang', NULL, '2023-08-26 06:06:09', '2023-08-26 06:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `province_id`, `type`, `name`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kabupaten', 'Kabupaten Badung', '80351', '2023-08-26 05:54:27', '2023-08-26 05:54:27'),
(2, 1, 'Kabupaten', 'Kabupaten Bangli', '80619', '2023-08-26 05:54:27', '2023-08-26 05:54:27'),
(3, 1, 'Kabupaten', 'Kabupaten Buleleng', '81111', '2023-08-26 05:54:27', '2023-08-26 05:54:27'),
(4, 1, 'Kota', 'Kota Denpasar', '80227', '2023-08-26 05:54:27', '2023-08-26 05:54:27'),
(5, 1, 'Kabupaten', 'Kabupaten Gianyar', '80519', '2023-08-26 05:54:27', '2023-08-26 05:54:27'),
(6, 1, 'Kabupaten', 'Kabupaten Jembrana', '82251', '2023-08-26 05:54:27', '2023-08-26 05:54:27'),
(7, 1, 'Kabupaten', 'Kabupaten Karangasem', '80819', '2023-08-26 05:54:27', '2023-08-26 05:54:27'),
(8, 1, 'Kabupaten', 'Kabupaten Klungkung', '80719', '2023-08-26 05:54:27', '2023-08-26 05:54:27'),
(9, 1, 'Kabupaten', 'Kabupaten Tabanan', '82119', '2023-08-26 05:54:27', '2023-08-26 05:54:27'),
(10, 2, 'Kabupaten', 'Kabupaten Bangka', '33212', '2023-08-26 05:54:29', '2023-08-26 05:54:29'),
(11, 2, 'Kabupaten', 'Kabupaten Bangka Barat', '33315', '2023-08-26 05:54:29', '2023-08-26 05:54:29'),
(12, 2, 'Kabupaten', 'Kabupaten Bangka Selatan', '33719', '2023-08-26 05:54:29', '2023-08-26 05:54:29'),
(13, 2, 'Kabupaten', 'Kabupaten Bangka Tengah', '33613', '2023-08-26 05:54:29', '2023-08-26 05:54:29'),
(14, 2, 'Kabupaten', 'Kabupaten Belitung', '33419', '2023-08-26 05:54:29', '2023-08-26 05:54:29'),
(15, 2, 'Kabupaten', 'Kabupaten Belitung Timur', '33519', '2023-08-26 05:54:29', '2023-08-26 05:54:29'),
(16, 2, 'Kota', 'Kota Pangkal Pinang', '33115', '2023-08-26 05:54:29', '2023-08-26 05:54:29'),
(17, 3, 'Kota', 'Kota Cilegon', '42417', '2023-08-26 05:54:30', '2023-08-26 05:54:30'),
(18, 3, 'Kabupaten', 'Kabupaten Lebak', '42319', '2023-08-26 05:54:30', '2023-08-26 05:54:30'),
(19, 3, 'Kabupaten', 'Kabupaten Pandeglang', '42212', '2023-08-26 05:54:30', '2023-08-26 05:54:30'),
(20, 3, 'Kabupaten', 'Kabupaten Serang', '42182', '2023-08-26 05:54:30', '2023-08-26 05:54:30'),
(21, 3, 'Kota', 'Kota Serang', '42111', '2023-08-26 05:54:30', '2023-08-26 05:54:30'),
(22, 3, 'Kabupaten', 'Kabupaten Tangerang', '15914', '2023-08-26 05:54:30', '2023-08-26 05:54:30'),
(23, 3, 'Kota', 'Kota Tangerang', '15111', '2023-08-26 05:54:30', '2023-08-26 05:54:30'),
(24, 3, 'Kota', 'Kota Tangerang Selatan', '15435', '2023-08-26 05:54:30', '2023-08-26 05:54:30'),
(25, 4, 'Kota', 'Kota Bengkulu', '38229', '2023-08-26 05:54:32', '2023-08-26 05:54:32'),
(26, 4, 'Kabupaten', 'Kabupaten Bengkulu Selatan', '38519', '2023-08-26 05:54:32', '2023-08-26 05:54:32'),
(27, 4, 'Kabupaten', 'Kabupaten Bengkulu Tengah', '38319', '2023-08-26 05:54:32', '2023-08-26 05:54:32'),
(28, 4, 'Kabupaten', 'Kabupaten Bengkulu Utara', '38619', '2023-08-26 05:54:32', '2023-08-26 05:54:32'),
(29, 4, 'Kabupaten', 'Kabupaten Kaur', '38911', '2023-08-26 05:54:32', '2023-08-26 05:54:32'),
(30, 4, 'Kabupaten', 'Kabupaten Kepahiang', '39319', '2023-08-26 05:54:32', '2023-08-26 05:54:32'),
(31, 4, 'Kabupaten', 'Kabupaten Lebong', '39264', '2023-08-26 05:54:32', '2023-08-26 05:54:32'),
(32, 4, 'Kabupaten', 'Kabupaten Muko Muko', '38715', '2023-08-26 05:54:32', '2023-08-26 05:54:32'),
(33, 4, 'Kabupaten', 'Kabupaten Rejang Lebong', '39112', '2023-08-26 05:54:32', '2023-08-26 05:54:32'),
(34, 4, 'Kabupaten', 'Kabupaten Seluma', '38811', '2023-08-26 05:54:32', '2023-08-26 05:54:32'),
(35, 5, 'Kabupaten', 'Kabupaten Bantul', '55715', '2023-08-26 05:54:33', '2023-08-26 05:54:33'),
(36, 5, 'Kabupaten', 'Kabupaten Gunung Kidul', '55812', '2023-08-26 05:54:33', '2023-08-26 05:54:33'),
(37, 5, 'Kabupaten', 'Kabupaten Kulon Progo', '55611', '2023-08-26 05:54:33', '2023-08-26 05:54:33'),
(38, 5, 'Kabupaten', 'Kabupaten Sleman', '55513', '2023-08-26 05:54:33', '2023-08-26 05:54:33'),
(39, 5, 'Kota', 'Kota Yogyakarta', '55111', '2023-08-26 05:54:33', '2023-08-26 05:54:33'),
(40, 6, 'Kota', 'Kota Jakarta Barat', '11220', '2023-08-26 05:54:34', '2023-08-26 05:54:34'),
(41, 6, 'Kota', 'Kota Jakarta Pusat', '10540', '2023-08-26 05:54:34', '2023-08-26 05:54:34'),
(42, 6, 'Kota', 'Kota Jakarta Selatan', '12230', '2023-08-26 05:54:34', '2023-08-26 05:54:34'),
(43, 6, 'Kota', 'Kota Jakarta Timur', '13330', '2023-08-26 05:54:34', '2023-08-26 05:54:34'),
(44, 6, 'Kota', 'Kota Jakarta Utara', '14140', '2023-08-26 05:54:34', '2023-08-26 05:54:34'),
(45, 6, 'Kabupaten', 'Kabupaten Kepulauan Seribu', '14550', '2023-08-26 05:54:34', '2023-08-26 05:54:34'),
(46, 7, 'Kabupaten', 'Kabupaten Boalemo', '96319', '2023-08-26 05:54:36', '2023-08-26 05:54:36'),
(47, 7, 'Kabupaten', 'Kabupaten Bone Bolango', '96511', '2023-08-26 05:54:36', '2023-08-26 05:54:36'),
(48, 7, 'Kabupaten', 'Kabupaten Gorontalo', '96218', '2023-08-26 05:54:36', '2023-08-26 05:54:36'),
(49, 7, 'Kota', 'Kota Gorontalo', '96115', '2023-08-26 05:54:36', '2023-08-26 05:54:36'),
(50, 7, 'Kabupaten', 'Kabupaten Gorontalo Utara', '96611', '2023-08-26 05:54:36', '2023-08-26 05:54:36'),
(51, 7, 'Kabupaten', 'Kabupaten Pohuwato', '96419', '2023-08-26 05:54:36', '2023-08-26 05:54:36'),
(52, 8, 'Kabupaten', 'Kabupaten Batang Hari', '36613', '2023-08-26 05:54:37', '2023-08-26 05:54:37'),
(53, 8, 'Kabupaten', 'Kabupaten Bungo', '37216', '2023-08-26 05:54:37', '2023-08-26 05:54:37'),
(54, 8, 'Kota', 'Kota Jambi', '36111', '2023-08-26 05:54:37', '2023-08-26 05:54:37'),
(55, 8, 'Kabupaten', 'Kabupaten Kerinci', '37167', '2023-08-26 05:54:37', '2023-08-26 05:54:37'),
(56, 8, 'Kabupaten', 'Kabupaten Merangin', '37319', '2023-08-26 05:54:37', '2023-08-26 05:54:37'),
(57, 8, 'Kabupaten', 'Kabupaten Muaro Jambi', '36311', '2023-08-26 05:54:37', '2023-08-26 05:54:37'),
(58, 8, 'Kabupaten', 'Kabupaten Sarolangun', '37419', '2023-08-26 05:54:37', '2023-08-26 05:54:37'),
(59, 8, 'Kota', 'Kota Sungaipenuh', '37113', '2023-08-26 05:54:37', '2023-08-26 05:54:37'),
(60, 8, 'Kabupaten', 'Kabupaten Tanjung Jabung Barat', '36513', '2023-08-26 05:54:37', '2023-08-26 05:54:37'),
(61, 8, 'Kabupaten', 'Kabupaten Tanjung Jabung Timur', '36719', '2023-08-26 05:54:37', '2023-08-26 05:54:37'),
(62, 8, 'Kabupaten', 'Kabupaten Tebo', '37519', '2023-08-26 05:54:37', '2023-08-26 05:54:37'),
(63, 9, 'Kabupaten', 'Kabupaten Bandung', '40311', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(64, 9, 'Kota', 'Kota Bandung', '40111', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(65, 9, 'Kabupaten', 'Kabupaten Bandung Barat', '40721', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(66, 9, 'Kota', 'Kota Banjar', '46311', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(67, 9, 'Kabupaten', 'Kabupaten Bekasi', '17837', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(68, 9, 'Kota', 'Kota Bekasi', '17121', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(69, 9, 'Kabupaten', 'Kabupaten Bogor', '16911', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(70, 9, 'Kota', 'Kota Bogor', '16119', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(71, 9, 'Kabupaten', 'Kabupaten Ciamis', '46211', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(72, 9, 'Kabupaten', 'Kabupaten Cianjur', '43217', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(73, 9, 'Kota', 'Kota Cimahi', '40512', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(74, 9, 'Kabupaten', 'Kabupaten Cirebon', '45611', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(75, 9, 'Kota', 'Kota Cirebon', '45116', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(76, 9, 'Kota', 'Kota Depok', '16416', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(77, 9, 'Kabupaten', 'Kabupaten Garut', '44126', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(78, 9, 'Kabupaten', 'Kabupaten Indramayu', '45214', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(79, 9, 'Kabupaten', 'Kabupaten Karawang', '41311', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(80, 9, 'Kabupaten', 'Kabupaten Kuningan', '45511', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(81, 9, 'Kabupaten', 'Kabupaten Majalengka', '45412', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(82, 9, 'Kabupaten', 'Kabupaten Pangandaran', '46511', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(83, 9, 'Kabupaten', 'Kabupaten Purwakarta', '41119', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(84, 9, 'Kabupaten', 'Kabupaten Subang', '41215', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(85, 9, 'Kabupaten', 'Kabupaten Sukabumi', '43311', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(86, 9, 'Kota', 'Kota Sukabumi', '43114', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(87, 9, 'Kabupaten', 'Kabupaten Sumedang', '45326', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(88, 9, 'Kabupaten', 'Kabupaten Tasikmalaya', '46411', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(89, 9, 'Kota', 'Kota Tasikmalaya', '46116', '2023-08-26 05:54:38', '2023-08-26 05:54:38'),
(90, 10, 'Kabupaten', 'Kabupaten Banjarnegara', '53419', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(91, 10, 'Kabupaten', 'Kabupaten Banyumas', '53114', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(92, 10, 'Kabupaten', 'Kabupaten Batang', '51211', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(93, 10, 'Kabupaten', 'Kabupaten Blora', '58219', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(94, 10, 'Kabupaten', 'Kabupaten Boyolali', '57312', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(95, 10, 'Kabupaten', 'Kabupaten Brebes', '52212', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(96, 10, 'Kabupaten', 'Kabupaten Cilacap', '53211', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(97, 10, 'Kabupaten', 'Kabupaten Demak', '59519', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(98, 10, 'Kabupaten', 'Kabupaten Grobogan', '58111', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(99, 10, 'Kabupaten', 'Kabupaten Jepara', '59419', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(100, 10, 'Kabupaten', 'Kabupaten Karanganyar', '57718', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(101, 10, 'Kabupaten', 'Kabupaten Kebumen', '54319', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(102, 10, 'Kabupaten', 'Kabupaten Kendal', '51314', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(103, 10, 'Kabupaten', 'Kabupaten Klaten', '57411', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(104, 10, 'Kabupaten', 'Kabupaten Kudus', '59311', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(105, 10, 'Kabupaten', 'Kabupaten Magelang', '56519', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(106, 10, 'Kota', 'Kota Magelang', '56133', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(107, 10, 'Kabupaten', 'Kabupaten Pati', '59114', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(108, 10, 'Kabupaten', 'Kabupaten Pekalongan', '51161', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(109, 10, 'Kota', 'Kota Pekalongan', '51122', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(110, 10, 'Kabupaten', 'Kabupaten Pemalang', '52319', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(111, 10, 'Kabupaten', 'Kabupaten Purbalingga', '53312', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(112, 10, 'Kabupaten', 'Kabupaten Purworejo', '54111', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(113, 10, 'Kabupaten', 'Kabupaten Rembang', '59219', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(114, 10, 'Kota', 'Kota Salatiga', '50711', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(115, 10, 'Kabupaten', 'Kabupaten Semarang', '50511', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(116, 10, 'Kota', 'Kota Semarang', '50135', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(117, 10, 'Kabupaten', 'Kabupaten Sragen', '57211', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(118, 10, 'Kabupaten', 'Kabupaten Sukoharjo', '57514', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(119, 10, 'Kota', 'Kota Surakarta (Solo)', '57113', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(120, 10, 'Kabupaten', 'Kabupaten Tegal', '52419', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(121, 10, 'Kota', 'Kota Tegal', '52114', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(122, 10, 'Kabupaten', 'Kabupaten Temanggung', '56212', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(123, 10, 'Kabupaten', 'Kabupaten Wonogiri', '57619', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(124, 10, 'Kabupaten', 'Kabupaten Wonosobo', '56311', '2023-08-26 05:54:40', '2023-08-26 05:54:40'),
(125, 11, 'Kabupaten', 'Kabupaten Bangkalan', '69118', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(126, 11, 'Kabupaten', 'Kabupaten Banyuwangi', '68416', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(127, 11, 'Kota', 'Kota Batu', '65311', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(128, 11, 'Kabupaten', 'Kabupaten Blitar', '66171', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(129, 11, 'Kota', 'Kota Blitar', '66124', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(130, 11, 'Kabupaten', 'Kabupaten Bojonegoro', '62119', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(131, 11, 'Kabupaten', 'Kabupaten Bondowoso', '68219', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(132, 11, 'Kabupaten', 'Kabupaten Gresik', '61115', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(133, 11, 'Kabupaten', 'Kabupaten Jember', '68113', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(134, 11, 'Kabupaten', 'Kabupaten Jombang', '61415', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(135, 11, 'Kabupaten', 'Kabupaten Kediri', '64184', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(136, 11, 'Kota', 'Kota Kediri', '64125', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(137, 11, 'Kabupaten', 'Kabupaten Lamongan', '64125', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(138, 11, 'Kabupaten', 'Kabupaten Lumajang', '67319', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(139, 11, 'Kabupaten', 'Kabupaten Madiun', '63153', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(140, 11, 'Kota', 'Kota Madiun', '63122', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(141, 11, 'Kabupaten', 'Kabupaten Magetan', '63314', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(142, 11, 'Kabupaten', 'Kabupaten Malang', '65163', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(143, 11, 'Kota', 'Kota Malang', '65112', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(144, 11, 'Kabupaten', 'Kabupaten Mojokerto', '61382', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(145, 11, 'Kota', 'Kota Mojokerto', '61316', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(146, 11, 'Kabupaten', 'Kabupaten Nganjuk', '64414', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(147, 11, 'Kabupaten', 'Kabupaten Ngawi', '63219', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(148, 11, 'Kabupaten', 'Kabupaten Pacitan', '63512', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(149, 11, 'Kabupaten', 'Kabupaten Pamekasan', '69319', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(150, 11, 'Kabupaten', 'Kabupaten Pasuruan', '67153', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(151, 11, 'Kota', 'Kota Pasuruan', '67118', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(152, 11, 'Kabupaten', 'Kabupaten Ponorogo', '63411', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(153, 11, 'Kabupaten', 'Kabupaten Probolinggo', '67282', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(154, 11, 'Kota', 'Kota Probolinggo', '67215', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(155, 11, 'Kabupaten', 'Kabupaten Sampang', '69219', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(156, 11, 'Kabupaten', 'Kabupaten Sidoarjo', '61219', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(157, 11, 'Kabupaten', 'Kabupaten Situbondo', '68316', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(158, 11, 'Kabupaten', 'Kabupaten Sumenep', '69413', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(159, 11, 'Kota', 'Kota Surabaya', '60119', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(160, 11, 'Kabupaten', 'Kabupaten Trenggalek', '66312', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(161, 11, 'Kabupaten', 'Kabupaten Tuban', '62319', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(162, 11, 'Kabupaten', 'Kabupaten Tulungagung', '66212', '2023-08-26 05:54:41', '2023-08-26 05:54:41'),
(163, 12, 'Kabupaten', 'Kabupaten Bengkayang', '79213', '2023-08-26 05:54:43', '2023-08-26 05:54:43'),
(164, 12, 'Kabupaten', 'Kabupaten Kapuas Hulu', '78719', '2023-08-26 05:54:43', '2023-08-26 05:54:43'),
(165, 12, 'Kabupaten', 'Kabupaten Kayong Utara', '78852', '2023-08-26 05:54:43', '2023-08-26 05:54:43'),
(166, 12, 'Kabupaten', 'Kabupaten Ketapang', '78874', '2023-08-26 05:54:43', '2023-08-26 05:54:43'),
(167, 12, 'Kabupaten', 'Kabupaten Kubu Raya', '78311', '2023-08-26 05:54:43', '2023-08-26 05:54:43'),
(168, 12, 'Kabupaten', 'Kabupaten Landak', '78319', '2023-08-26 05:54:43', '2023-08-26 05:54:43'),
(169, 12, 'Kabupaten', 'Kabupaten Melawi', '78619', '2023-08-26 05:54:43', '2023-08-26 05:54:43'),
(170, 12, 'Kabupaten', 'Kabupaten Pontianak', '78971', '2023-08-26 05:54:43', '2023-08-26 05:54:43'),
(171, 12, 'Kota', 'Kota Pontianak', '78112', '2023-08-26 05:54:43', '2023-08-26 05:54:43'),
(172, 12, 'Kabupaten', 'Kabupaten Sambas', '79453', '2023-08-26 05:54:43', '2023-08-26 05:54:43'),
(173, 12, 'Kabupaten', 'Kabupaten Sanggau', '78557', '2023-08-26 05:54:43', '2023-08-26 05:54:43'),
(174, 12, 'Kabupaten', 'Kabupaten Sekadau', '79583', '2023-08-26 05:54:43', '2023-08-26 05:54:43'),
(175, 12, 'Kota', 'Kota Singkawang', '79117', '2023-08-26 05:54:43', '2023-08-26 05:54:43'),
(176, 12, 'Kabupaten', 'Kabupaten Sintang', '78619', '2023-08-26 05:54:43', '2023-08-26 05:54:43'),
(177, 13, 'Kabupaten', 'Kabupaten Balangan', '71611', '2023-08-26 05:54:44', '2023-08-26 05:54:44'),
(178, 13, 'Kabupaten', 'Kabupaten Banjar', '70619', '2023-08-26 05:54:44', '2023-08-26 05:54:44'),
(179, 13, 'Kota', 'Kota Banjarbaru', '70712', '2023-08-26 05:54:44', '2023-08-26 05:54:44'),
(180, 13, 'Kota', 'Kota Banjarmasin', '70117', '2023-08-26 05:54:44', '2023-08-26 05:54:44'),
(181, 13, 'Kabupaten', 'Kabupaten Barito Kuala', '70511', '2023-08-26 05:54:44', '2023-08-26 05:54:44'),
(182, 13, 'Kabupaten', 'Kabupaten Hulu Sungai Selatan', '71212', '2023-08-26 05:54:44', '2023-08-26 05:54:44'),
(183, 13, 'Kabupaten', 'Kabupaten Hulu Sungai Tengah', '71313', '2023-08-26 05:54:44', '2023-08-26 05:54:44'),
(184, 13, 'Kabupaten', 'Kabupaten Hulu Sungai Utara', '71419', '2023-08-26 05:54:44', '2023-08-26 05:54:44'),
(185, 13, 'Kabupaten', 'Kabupaten Kotabaru', '72119', '2023-08-26 05:54:44', '2023-08-26 05:54:44'),
(186, 13, 'Kabupaten', 'Kabupaten Tabalong', '71513', '2023-08-26 05:54:44', '2023-08-26 05:54:44'),
(187, 13, 'Kabupaten', 'Kabupaten Tanah Bumbu', '72211', '2023-08-26 05:54:44', '2023-08-26 05:54:44'),
(188, 13, 'Kabupaten', 'Kabupaten Tanah Laut', '70811', '2023-08-26 05:54:44', '2023-08-26 05:54:44'),
(189, 13, 'Kabupaten', 'Kabupaten Tapin', '71119', '2023-08-26 05:54:44', '2023-08-26 05:54:44'),
(190, 14, 'Kabupaten', 'Kabupaten Barito Selatan', '73711', '2023-08-26 05:54:46', '2023-08-26 05:54:46'),
(191, 14, 'Kabupaten', 'Kabupaten Barito Timur', '73671', '2023-08-26 05:54:46', '2023-08-26 05:54:46'),
(192, 14, 'Kabupaten', 'Kabupaten Barito Utara', '73881', '2023-08-26 05:54:46', '2023-08-26 05:54:46'),
(193, 14, 'Kabupaten', 'Kabupaten Gunung Mas', '74511', '2023-08-26 05:54:46', '2023-08-26 05:54:46'),
(194, 14, 'Kabupaten', 'Kabupaten Kapuas', '73583', '2023-08-26 05:54:46', '2023-08-26 05:54:46'),
(195, 14, 'Kabupaten', 'Kabupaten Katingan', '74411', '2023-08-26 05:54:46', '2023-08-26 05:54:46'),
(196, 14, 'Kabupaten', 'Kabupaten Kotawaringin Barat', '74119', '2023-08-26 05:54:46', '2023-08-26 05:54:46'),
(197, 14, 'Kabupaten', 'Kabupaten Kotawaringin Timur', '74364', '2023-08-26 05:54:46', '2023-08-26 05:54:46'),
(198, 14, 'Kabupaten', 'Kabupaten Lamandau', '74611', '2023-08-26 05:54:46', '2023-08-26 05:54:46'),
(199, 14, 'Kabupaten', 'Kabupaten Murung Raya', '73911', '2023-08-26 05:54:46', '2023-08-26 05:54:46'),
(200, 14, 'Kota', 'Kota Palangka Raya', '73112', '2023-08-26 05:54:46', '2023-08-26 05:54:46'),
(201, 14, 'Kabupaten', 'Kabupaten Pulang Pisau', '74811', '2023-08-26 05:54:46', '2023-08-26 05:54:46'),
(202, 14, 'Kabupaten', 'Kabupaten Seruyan', '74211', '2023-08-26 05:54:46', '2023-08-26 05:54:46'),
(203, 14, 'Kabupaten', 'Kabupaten Sukamara', '74712', '2023-08-26 05:54:46', '2023-08-26 05:54:46'),
(204, 15, 'Kota', 'Kota Balikpapan', '76111', '2023-08-26 05:54:47', '2023-08-26 05:54:47'),
(205, 15, 'Kabupaten', 'Kabupaten Berau', '77311', '2023-08-26 05:54:47', '2023-08-26 05:54:47'),
(206, 15, 'Kota', 'Kota Bontang', '75313', '2023-08-26 05:54:47', '2023-08-26 05:54:47'),
(207, 15, 'Kabupaten', 'Kabupaten Kutai Barat', '75711', '2023-08-26 05:54:47', '2023-08-26 05:54:47'),
(208, 15, 'Kabupaten', 'Kabupaten Kutai Kartanegara', '75511', '2023-08-26 05:54:47', '2023-08-26 05:54:47'),
(209, 15, 'Kabupaten', 'Kabupaten Kutai Timur', '75611', '2023-08-26 05:54:47', '2023-08-26 05:54:47'),
(210, 15, 'Kabupaten', 'Kabupaten Paser', '76211', '2023-08-26 05:54:47', '2023-08-26 05:54:47'),
(211, 15, 'Kabupaten', 'Kabupaten Penajam Paser Utara', '76311', '2023-08-26 05:54:47', '2023-08-26 05:54:47'),
(212, 15, 'Kota', 'Kota Samarinda', '75133', '2023-08-26 05:54:47', '2023-08-26 05:54:47'),
(213, 16, 'Kabupaten', 'Kabupaten Bulungan (Bulongan)', '77211', '2023-08-26 05:54:48', '2023-08-26 05:54:48'),
(214, 16, 'Kabupaten', 'Kabupaten Malinau', '77511', '2023-08-26 05:54:48', '2023-08-26 05:54:48'),
(215, 16, 'Kabupaten', 'Kabupaten Nunukan', '77421', '2023-08-26 05:54:48', '2023-08-26 05:54:48'),
(216, 16, 'Kabupaten', 'Kabupaten Tana Tidung', '77611', '2023-08-26 05:54:48', '2023-08-26 05:54:48'),
(217, 16, 'Kota', 'Kota Tarakan', '77114', '2023-08-26 05:54:48', '2023-08-26 05:54:48'),
(218, 17, 'Kota', 'Kota Batam', '29413', '2023-08-26 05:54:50', '2023-08-26 05:54:50'),
(219, 17, 'Kabupaten', 'Kabupaten Bintan', '29135', '2023-08-26 05:54:50', '2023-08-26 05:54:50'),
(220, 17, 'Kabupaten', 'Kabupaten Karimun', '29611', '2023-08-26 05:54:50', '2023-08-26 05:54:50'),
(221, 17, 'Kabupaten', 'Kabupaten Kepulauan Anambas', '29991', '2023-08-26 05:54:50', '2023-08-26 05:54:50'),
(222, 17, 'Kabupaten', 'Kabupaten Lingga', '29811', '2023-08-26 05:54:50', '2023-08-26 05:54:50'),
(223, 17, 'Kabupaten', 'Kabupaten Natuna', '29711', '2023-08-26 05:54:50', '2023-08-26 05:54:50'),
(224, 17, 'Kota', 'Kota Tanjung Pinang', '29111', '2023-08-26 05:54:50', '2023-08-26 05:54:50'),
(225, 18, 'Kota', 'Kota Bandar Lampung', '35139', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(226, 18, 'Kabupaten', 'Kabupaten Lampung Barat', '34814', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(227, 18, 'Kabupaten', 'Kabupaten Lampung Selatan', '35511', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(228, 18, 'Kabupaten', 'Kabupaten Lampung Tengah', '34212', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(229, 18, 'Kabupaten', 'Kabupaten Lampung Timur', '34319', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(230, 18, 'Kabupaten', 'Kabupaten Lampung Utara', '34516', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(231, 18, 'Kabupaten', 'Kabupaten Mesuji', '34911', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(232, 18, 'Kota', 'Kota Metro', '34111', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(233, 18, 'Kabupaten', 'Kabupaten Pesawaran', '35312', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(234, 18, 'Kabupaten', 'Kabupaten Pesisir Barat', '35974', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(235, 18, 'Kabupaten', 'Kabupaten Pringsewu', '35719', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(236, 18, 'Kabupaten', 'Kabupaten Tanggamus', '35619', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(237, 18, 'Kabupaten', 'Kabupaten Tulang Bawang', '34613', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(238, 18, 'Kabupaten', 'Kabupaten Tulang Bawang Barat', '34419', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(239, 18, 'Kabupaten', 'Kabupaten Way Kanan', '34711', '2023-08-26 05:54:51', '2023-08-26 05:54:51'),
(240, 19, 'Kota', 'Kota Ambon', '97222', '2023-08-26 05:54:53', '2023-08-26 05:54:53'),
(241, 19, 'Kabupaten', 'Kabupaten Buru', '97371', '2023-08-26 05:54:53', '2023-08-26 05:54:53'),
(242, 19, 'Kabupaten', 'Kabupaten Buru Selatan', '97351', '2023-08-26 05:54:53', '2023-08-26 05:54:53'),
(243, 19, 'Kabupaten', 'Kabupaten Kepulauan Aru', '97681', '2023-08-26 05:54:53', '2023-08-26 05:54:53'),
(244, 19, 'Kabupaten', 'Kabupaten Maluku Barat Daya', '97451', '2023-08-26 05:54:53', '2023-08-26 05:54:53'),
(245, 19, 'Kabupaten', 'Kabupaten Maluku Tengah', '97513', '2023-08-26 05:54:53', '2023-08-26 05:54:53'),
(246, 19, 'Kabupaten', 'Kabupaten Maluku Tenggara', '97651', '2023-08-26 05:54:53', '2023-08-26 05:54:53'),
(247, 19, 'Kabupaten', 'Kabupaten Maluku Tenggara Barat', '97465', '2023-08-26 05:54:53', '2023-08-26 05:54:53'),
(248, 19, 'Kabupaten', 'Kabupaten Seram Bagian Barat', '97561', '2023-08-26 05:54:53', '2023-08-26 05:54:53'),
(249, 19, 'Kabupaten', 'Kabupaten Seram Bagian Timur', '97581', '2023-08-26 05:54:53', '2023-08-26 05:54:53'),
(250, 19, 'Kota', 'Kota Tual', '97612', '2023-08-26 05:54:53', '2023-08-26 05:54:53'),
(251, 20, 'Kabupaten', 'Kabupaten Halmahera Barat', '97757', '2023-08-26 05:54:54', '2023-08-26 05:54:54'),
(252, 20, 'Kabupaten', 'Kabupaten Halmahera Selatan', '97911', '2023-08-26 05:54:54', '2023-08-26 05:54:54'),
(253, 20, 'Kabupaten', 'Kabupaten Halmahera Tengah', '97853', '2023-08-26 05:54:54', '2023-08-26 05:54:54'),
(254, 20, 'Kabupaten', 'Kabupaten Halmahera Timur', '97862', '2023-08-26 05:54:54', '2023-08-26 05:54:54'),
(255, 20, 'Kabupaten', 'Kabupaten Halmahera Utara', '97762', '2023-08-26 05:54:54', '2023-08-26 05:54:54'),
(256, 20, 'Kabupaten', 'Kabupaten Kepulauan Sula', '97995', '2023-08-26 05:54:54', '2023-08-26 05:54:54'),
(257, 20, 'Kabupaten', 'Kabupaten Pulau Morotai', '97771', '2023-08-26 05:54:54', '2023-08-26 05:54:54'),
(258, 20, 'Kota', 'Kota Ternate', '97714', '2023-08-26 05:54:54', '2023-08-26 05:54:54'),
(259, 20, 'Kota', 'Kota Tidore Kepulauan', '97815', '2023-08-26 05:54:54', '2023-08-26 05:54:54'),
(260, 21, 'Kabupaten', 'Kabupaten Aceh Barat', '23681', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(261, 21, 'Kabupaten', 'Kabupaten Aceh Barat Daya', '23764', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(262, 21, 'Kabupaten', 'Kabupaten Aceh Besar', '23951', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(263, 21, 'Kabupaten', 'Kabupaten Aceh Jaya', '23654', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(264, 21, 'Kabupaten', 'Kabupaten Aceh Selatan', '23719', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(265, 21, 'Kabupaten', 'Kabupaten Aceh Singkil', '24785', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(266, 21, 'Kabupaten', 'Kabupaten Aceh Tamiang', '24476', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(267, 21, 'Kabupaten', 'Kabupaten Aceh Tengah', '24511', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(268, 21, 'Kabupaten', 'Kabupaten Aceh Tenggara', '24611', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(269, 21, 'Kabupaten', 'Kabupaten Aceh Timur', '24454', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(270, 21, 'Kabupaten', 'Kabupaten Aceh Utara', '24382', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(271, 21, 'Kota', 'Kota Banda Aceh', '23238', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(272, 21, 'Kabupaten', 'Kabupaten Bener Meriah', '24581', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(273, 21, 'Kabupaten', 'Kabupaten Bireuen', '24219', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(274, 21, 'Kabupaten', 'Kabupaten Gayo Lues', '24653', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(275, 21, 'Kota', 'Kota Langsa', '24412', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(276, 21, 'Kota', 'Kota Lhokseumawe', '24352', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(277, 21, 'Kabupaten', 'Kabupaten Nagan Raya', '23674', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(278, 21, 'Kabupaten', 'Kabupaten Pidie', '24116', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(279, 21, 'Kabupaten', 'Kabupaten Pidie Jaya', '24186', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(280, 21, 'Kota', 'Kota Sabang', '23512', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(281, 21, 'Kabupaten', 'Kabupaten Simeulue', '23891', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(282, 21, 'Kota', 'Kota Subulussalam', '24882', '2023-08-26 05:54:55', '2023-08-26 05:54:55'),
(283, 22, 'Kabupaten', 'Kabupaten Bima', '84171', '2023-08-26 05:54:57', '2023-08-26 05:54:57'),
(284, 22, 'Kota', 'Kota Bima', '84139', '2023-08-26 05:54:57', '2023-08-26 05:54:57'),
(285, 22, 'Kabupaten', 'Kabupaten Dompu', '84217', '2023-08-26 05:54:57', '2023-08-26 05:54:57'),
(286, 22, 'Kabupaten', 'Kabupaten Lombok Barat', '83311', '2023-08-26 05:54:57', '2023-08-26 05:54:57'),
(287, 22, 'Kabupaten', 'Kabupaten Lombok Tengah', '83511', '2023-08-26 05:54:57', '2023-08-26 05:54:57'),
(288, 22, 'Kabupaten', 'Kabupaten Lombok Timur', '83612', '2023-08-26 05:54:57', '2023-08-26 05:54:57'),
(289, 22, 'Kabupaten', 'Kabupaten Lombok Utara', '83711', '2023-08-26 05:54:57', '2023-08-26 05:54:57'),
(290, 22, 'Kota', 'Kota Mataram', '83131', '2023-08-26 05:54:57', '2023-08-26 05:54:57'),
(291, 22, 'Kabupaten', 'Kabupaten Sumbawa', '84315', '2023-08-26 05:54:57', '2023-08-26 05:54:57'),
(292, 22, 'Kabupaten', 'Kabupaten Sumbawa Barat', '84419', '2023-08-26 05:54:57', '2023-08-26 05:54:57'),
(293, 23, 'Kabupaten', 'Kabupaten Alor', '85811', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(294, 23, 'Kabupaten', 'Kabupaten Belu', '85711', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(295, 23, 'Kabupaten', 'Kabupaten Ende', '86351', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(296, 23, 'Kabupaten', 'Kabupaten Flores Timur', '86213', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(297, 23, 'Kabupaten', 'Kabupaten Kupang', '85362', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(298, 23, 'Kota', 'Kota Kupang', '85119', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(299, 23, 'Kabupaten', 'Kabupaten Lembata', '86611', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(300, 23, 'Kabupaten', 'Kabupaten Manggarai', '86551', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(301, 23, 'Kabupaten', 'Kabupaten Manggarai Barat', '86711', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(302, 23, 'Kabupaten', 'Kabupaten Manggarai Timur', '86811', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(303, 23, 'Kabupaten', 'Kabupaten Nagekeo', '86911', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(304, 23, 'Kabupaten', 'Kabupaten Ngada', '86413', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(305, 23, 'Kabupaten', 'Kabupaten Rote Ndao', '85982', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(306, 23, 'Kabupaten', 'Kabupaten Sabu Raijua', '85391', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(307, 23, 'Kabupaten', 'Kabupaten Sikka', '86121', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(308, 23, 'Kabupaten', 'Kabupaten Sumba Barat', '87219', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(309, 23, 'Kabupaten', 'Kabupaten Sumba Barat Daya', '87453', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(310, 23, 'Kabupaten', 'Kabupaten Sumba Tengah', '87358', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(311, 23, 'Kabupaten', 'Kabupaten Sumba Timur', '87112', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(312, 23, 'Kabupaten', 'Kabupaten Timor Tengah Selatan', '85562', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(313, 23, 'Kabupaten', 'Kabupaten Timor Tengah Utara', '85612', '2023-08-26 05:54:58', '2023-08-26 05:54:58'),
(314, 24, 'Kabupaten', 'Kabupaten Asmat', '99777', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(315, 24, 'Kabupaten', 'Kabupaten Biak Numfor', '98119', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(316, 24, 'Kabupaten', 'Kabupaten Boven Digoel', '99662', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(317, 24, 'Kabupaten', 'Kabupaten Deiyai (Deliyai)', '98784', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(318, 24, 'Kabupaten', 'Kabupaten Dogiyai', '98866', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(319, 24, 'Kabupaten', 'Kabupaten Intan Jaya', '98771', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(320, 24, 'Kabupaten', 'Kabupaten Jayapura', '99352', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(321, 24, 'Kota', 'Kota Jayapura', '99114', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(322, 24, 'Kabupaten', 'Kabupaten Jayawijaya', '99511', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(323, 24, 'Kabupaten', 'Kabupaten Keerom', '99461', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(324, 24, 'Kabupaten', 'Kabupaten Kepulauan Yapen (Yapen Waropen)', '98211', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(325, 24, 'Kabupaten', 'Kabupaten Lanny Jaya', '99531', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(326, 24, 'Kabupaten', 'Kabupaten Mamberamo Raya', '99381', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(327, 24, 'Kabupaten', 'Kabupaten Mamberamo Tengah', '99553', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(328, 24, 'Kabupaten', 'Kabupaten Mappi', '99853', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(329, 24, 'Kabupaten', 'Kabupaten Merauke', '99613', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(330, 24, 'Kabupaten', 'Kabupaten Mimika', '99962', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(331, 24, 'Kabupaten', 'Kabupaten Nabire', '98816', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(332, 24, 'Kabupaten', 'Kabupaten Nduga', '99541', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(333, 24, 'Kabupaten', 'Kabupaten Paniai', '98765', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(334, 24, 'Kabupaten', 'Kabupaten Pegunungan Bintang', '99573', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(335, 24, 'Kabupaten', 'Kabupaten Puncak', '98981', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(336, 24, 'Kabupaten', 'Kabupaten Puncak Jaya', '98979', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(337, 24, 'Kabupaten', 'Kabupaten Sarmi', '99373', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(338, 24, 'Kabupaten', 'Kabupaten Supiori', '98164', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(339, 24, 'Kabupaten', 'Kabupaten Tolikara', '99411', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(340, 24, 'Kabupaten', 'Kabupaten Waropen', '98269', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(341, 24, 'Kabupaten', 'Kabupaten Yahukimo', '99041', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(342, 24, 'Kabupaten', 'Kabupaten Yalimo', '99481', '2023-08-26 05:55:00', '2023-08-26 05:55:00'),
(343, 25, 'Kabupaten', 'Kabupaten Fakfak', '98651', '2023-08-26 05:55:02', '2023-08-26 05:55:02'),
(344, 25, 'Kabupaten', 'Kabupaten Kaimana', '98671', '2023-08-26 05:55:02', '2023-08-26 05:55:02'),
(345, 25, 'Kabupaten', 'Kabupaten Manokwari', '98311', '2023-08-26 05:55:02', '2023-08-26 05:55:02'),
(346, 25, 'Kabupaten', 'Kabupaten Manokwari Selatan', '98355', '2023-08-26 05:55:02', '2023-08-26 05:55:02'),
(347, 25, 'Kabupaten', 'Kabupaten Maybrat', '98051', '2023-08-26 05:55:02', '2023-08-26 05:55:02'),
(348, 25, 'Kabupaten', 'Kabupaten Pegunungan Arfak', '98354', '2023-08-26 05:55:02', '2023-08-26 05:55:02'),
(349, 25, 'Kabupaten', 'Kabupaten Raja Ampat', '98489', '2023-08-26 05:55:02', '2023-08-26 05:55:02'),
(350, 25, 'Kabupaten', 'Kabupaten Sorong', '98431', '2023-08-26 05:55:02', '2023-08-26 05:55:02'),
(351, 25, 'Kota', 'Kota Sorong', '98411', '2023-08-26 05:55:02', '2023-08-26 05:55:02'),
(352, 25, 'Kabupaten', 'Kabupaten Sorong Selatan', '98454', '2023-08-26 05:55:02', '2023-08-26 05:55:02'),
(353, 25, 'Kabupaten', 'Kabupaten Tambrauw', '98475', '2023-08-26 05:55:02', '2023-08-26 05:55:02'),
(354, 25, 'Kabupaten', 'Kabupaten Teluk Bintuni', '98551', '2023-08-26 05:55:02', '2023-08-26 05:55:02'),
(355, 25, 'Kabupaten', 'Kabupaten Teluk Wondama', '98591', '2023-08-26 05:55:02', '2023-08-26 05:55:02'),
(356, 26, 'Kabupaten', 'Kabupaten Bengkalis', '28719', '2023-08-26 05:55:03', '2023-08-26 05:55:03'),
(357, 26, 'Kota', 'Kota Dumai', '28811', '2023-08-26 05:55:03', '2023-08-26 05:55:03'),
(358, 26, 'Kabupaten', 'Kabupaten Indragiri Hilir', '29212', '2023-08-26 05:55:03', '2023-08-26 05:55:03'),
(359, 26, 'Kabupaten', 'Kabupaten Indragiri Hulu', '29319', '2023-08-26 05:55:03', '2023-08-26 05:55:03'),
(360, 26, 'Kabupaten', 'Kabupaten Kampar', '28411', '2023-08-26 05:55:03', '2023-08-26 05:55:03'),
(361, 26, 'Kabupaten', 'Kabupaten Kepulauan Meranti', '28791', '2023-08-26 05:55:03', '2023-08-26 05:55:03'),
(362, 26, 'Kabupaten', 'Kabupaten Kuantan Singingi', '29519', '2023-08-26 05:55:03', '2023-08-26 05:55:03'),
(363, 26, 'Kota', 'Kota Pekanbaru', '28112', '2023-08-26 05:55:03', '2023-08-26 05:55:03'),
(364, 26, 'Kabupaten', 'Kabupaten Pelalawan', '28311', '2023-08-26 05:55:03', '2023-08-26 05:55:03'),
(365, 26, 'Kabupaten', 'Kabupaten Rokan Hilir', '28992', '2023-08-26 05:55:03', '2023-08-26 05:55:03'),
(366, 26, 'Kabupaten', 'Kabupaten Rokan Hulu', '28511', '2023-08-26 05:55:03', '2023-08-26 05:55:03'),
(367, 26, 'Kabupaten', 'Kabupaten Siak', '28623', '2023-08-26 05:55:03', '2023-08-26 05:55:03'),
(368, 27, 'Kabupaten', 'Kabupaten Majene', '91411', '2023-08-26 05:55:05', '2023-08-26 05:55:05'),
(369, 27, 'Kabupaten', 'Kabupaten Mamasa', '91362', '2023-08-26 05:55:05', '2023-08-26 05:55:05'),
(370, 27, 'Kabupaten', 'Kabupaten Mamuju', '91519', '2023-08-26 05:55:05', '2023-08-26 05:55:05'),
(371, 27, 'Kabupaten', 'Kabupaten Mamuju Utara', '91571', '2023-08-26 05:55:05', '2023-08-26 05:55:05'),
(372, 27, 'Kabupaten', 'Kabupaten Polewali Mandar', '91311', '2023-08-26 05:55:05', '2023-08-26 05:55:05'),
(373, 28, 'Kabupaten', 'Kabupaten Bantaeng', '92411', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(374, 28, 'Kabupaten', 'Kabupaten Barru', '90719', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(375, 28, 'Kabupaten', 'Kabupaten Bone', '92713', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(376, 28, 'Kabupaten', 'Kabupaten Bulukumba', '92511', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(377, 28, 'Kabupaten', 'Kabupaten Enrekang', '91719', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(378, 28, 'Kabupaten', 'Kabupaten Gowa', '92111', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(379, 28, 'Kabupaten', 'Kabupaten Jeneponto', '92319', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(380, 28, 'Kabupaten', 'Kabupaten Luwu', '91994', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(381, 28, 'Kabupaten', 'Kabupaten Luwu Timur', '92981', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(382, 28, 'Kabupaten', 'Kabupaten Luwu Utara', '92911', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(383, 28, 'Kota', 'Kota Makassar', '90111', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(384, 28, 'Kabupaten', 'Kabupaten Maros', '90511', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(385, 28, 'Kota', 'Kota Palopo', '91911', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(386, 28, 'Kabupaten', 'Kabupaten Pangkajene Kepulauan', '90611', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(387, 28, 'Kota', 'Kota Parepare', '91123', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(388, 28, 'Kabupaten', 'Kabupaten Pinrang', '91251', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(389, 28, 'Kabupaten', 'Kabupaten Selayar (Kepulauan Selayar)', '92812', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(390, 28, 'Kabupaten', 'Kabupaten Sidenreng Rappang/Rapang', '91613', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(391, 28, 'Kabupaten', 'Kabupaten Sinjai', '92615', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(392, 28, 'Kabupaten', 'Kabupaten Soppeng', '90812', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(393, 28, 'Kabupaten', 'Kabupaten Takalar', '92212', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(394, 28, 'Kabupaten', 'Kabupaten Tana Toraja', '91819', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(395, 28, 'Kabupaten', 'Kabupaten Toraja Utara', '91831', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(396, 28, 'Kabupaten', 'Kabupaten Wajo', '90911', '2023-08-26 05:55:06', '2023-08-26 05:55:06'),
(397, 29, 'Kabupaten', 'Kabupaten Banggai', '94711', '2023-08-26 05:55:07', '2023-08-26 05:55:07'),
(398, 29, 'Kabupaten', 'Kabupaten Banggai Kepulauan', '94881', '2023-08-26 05:55:07', '2023-08-26 05:55:07'),
(399, 29, 'Kabupaten', 'Kabupaten Buol', '94564', '2023-08-26 05:55:07', '2023-08-26 05:55:07'),
(400, 29, 'Kabupaten', 'Kabupaten Donggala', '94341', '2023-08-26 05:55:07', '2023-08-26 05:55:07'),
(401, 29, 'Kabupaten', 'Kabupaten Morowali', '94911', '2023-08-26 05:55:07', '2023-08-26 05:55:07'),
(402, 29, 'Kota', 'Kota Palu', '94111', '2023-08-26 05:55:07', '2023-08-26 05:55:07'),
(403, 29, 'Kabupaten', 'Kabupaten Parigi Moutong', '94411', '2023-08-26 05:55:07', '2023-08-26 05:55:07'),
(404, 29, 'Kabupaten', 'Kabupaten Poso', '94615', '2023-08-26 05:55:07', '2023-08-26 05:55:07'),
(405, 29, 'Kabupaten', 'Kabupaten Sigi', '94364', '2023-08-26 05:55:07', '2023-08-26 05:55:07'),
(406, 29, 'Kabupaten', 'Kabupaten Tojo Una-Una', '94683', '2023-08-26 05:55:07', '2023-08-26 05:55:07'),
(407, 29, 'Kabupaten', 'Kabupaten Toli-Toli', '94542', '2023-08-26 05:55:07', '2023-08-26 05:55:07'),
(408, 30, 'Kota', 'Kota Bau-Bau', '93719', '2023-08-26 05:55:09', '2023-08-26 05:55:09'),
(409, 30, 'Kabupaten', 'Kabupaten Bombana', '93771', '2023-08-26 05:55:09', '2023-08-26 05:55:09'),
(410, 30, 'Kabupaten', 'Kabupaten Buton', '93754', '2023-08-26 05:55:09', '2023-08-26 05:55:09'),
(411, 30, 'Kabupaten', 'Kabupaten Buton Utara', '93745', '2023-08-26 05:55:09', '2023-08-26 05:55:09'),
(412, 30, 'Kota', 'Kota Kendari', '93126', '2023-08-26 05:55:09', '2023-08-26 05:55:09'),
(413, 30, 'Kabupaten', 'Kabupaten Kolaka', '93511', '2023-08-26 05:55:09', '2023-08-26 05:55:09'),
(414, 30, 'Kabupaten', 'Kabupaten Kolaka Utara', '93911', '2023-08-26 05:55:09', '2023-08-26 05:55:09'),
(415, 30, 'Kabupaten', 'Kabupaten Konawe', '93411', '2023-08-26 05:55:09', '2023-08-26 05:55:09'),
(416, 30, 'Kabupaten', 'Kabupaten Konawe Selatan', '93811', '2023-08-26 05:55:09', '2023-08-26 05:55:09'),
(417, 30, 'Kabupaten', 'Kabupaten Konawe Utara', '93311', '2023-08-26 05:55:09', '2023-08-26 05:55:09'),
(418, 30, 'Kabupaten', 'Kabupaten Muna', '93611', '2023-08-26 05:55:09', '2023-08-26 05:55:09'),
(419, 30, 'Kabupaten', 'Kabupaten Wakatobi', '93791', '2023-08-26 05:55:09', '2023-08-26 05:55:09'),
(420, 31, 'Kota', 'Kota Bitung', '95512', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(421, 31, 'Kabupaten', 'Kabupaten Bolaang Mongondow (Bolmong)', '95755', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(422, 31, 'Kabupaten', 'Kabupaten Bolaang Mongondow Selatan', '95774', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(423, 31, 'Kabupaten', 'Kabupaten Bolaang Mongondow Timur', '95783', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(424, 31, 'Kabupaten', 'Kabupaten Bolaang Mongondow Utara', '95765', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(425, 31, 'Kabupaten', 'Kabupaten Kepulauan Sangihe', '95819', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(426, 31, 'Kabupaten', 'Kabupaten Kepulauan Siau Tagulandang Biaro (Sitaro)', '95862', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(427, 31, 'Kabupaten', 'Kabupaten Kepulauan Talaud', '95885', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(428, 31, 'Kota', 'Kota Kotamobagu', '95711', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(429, 31, 'Kota', 'Kota Manado', '95247', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(430, 31, 'Kabupaten', 'Kabupaten Minahasa', '95614', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(431, 31, 'Kabupaten', 'Kabupaten Minahasa Selatan', '95914', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(432, 31, 'Kabupaten', 'Kabupaten Minahasa Tenggara', '95995', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(433, 31, 'Kabupaten', 'Kabupaten Minahasa Utara', '95316', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(434, 31, 'Kota', 'Kota Tomohon', '95416', '2023-08-26 05:55:10', '2023-08-26 05:55:10'),
(435, 32, 'Kabupaten', 'Kabupaten Agam', '26411', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(436, 32, 'Kota', 'Kota Bukittinggi', '26115', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(437, 32, 'Kabupaten', 'Kabupaten Dharmasraya', '27612', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(438, 32, 'Kabupaten', 'Kabupaten Kepulauan Mentawai', '25771', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(439, 32, 'Kabupaten', 'Kabupaten Lima Puluh Koto/Kota', '26671', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(440, 32, 'Kota', 'Kota Padang', '25112', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(441, 32, 'Kota', 'Kota Padang Panjang', '27122', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(442, 32, 'Kabupaten', 'Kabupaten Padang Pariaman', '25583', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(443, 32, 'Kota', 'Kota Pariaman', '25511', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(444, 32, 'Kabupaten', 'Kabupaten Pasaman', '26318', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(445, 32, 'Kabupaten', 'Kabupaten Pasaman Barat', '26511', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(446, 32, 'Kota', 'Kota Payakumbuh', '26213', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(447, 32, 'Kabupaten', 'Kabupaten Pesisir Selatan', '25611', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(448, 32, 'Kota', 'Kota Sawah Lunto', '27416', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(449, 32, 'Kabupaten', 'Kabupaten Sijunjung (Sawah Lunto Sijunjung)', '27511', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(450, 32, 'Kabupaten', 'Kabupaten Solok', '27365', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(451, 32, 'Kota', 'Kota Solok', '27315', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(452, 32, 'Kabupaten', 'Kabupaten Solok Selatan', '27779', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(453, 32, 'Kabupaten', 'Kabupaten Tanah Datar', '27211', '2023-08-26 05:55:11', '2023-08-26 05:55:11'),
(454, 33, 'Kabupaten', 'Kabupaten Banyuasin', '30911', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(455, 33, 'Kabupaten', 'Kabupaten Empat Lawang', '31811', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(456, 33, 'Kabupaten', 'Kabupaten Lahat', '31419', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(457, 33, 'Kota', 'Kota Lubuk Linggau', '31614', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(458, 33, 'Kabupaten', 'Kabupaten Muara Enim', '31315', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(459, 33, 'Kabupaten', 'Kabupaten Musi Banyuasin', '30719', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(460, 33, 'Kabupaten', 'Kabupaten Musi Rawas', '31661', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(461, 33, 'Kabupaten', 'Kabupaten Ogan Ilir', '30811', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(462, 33, 'Kabupaten', 'Kabupaten Ogan Komering Ilir', '30618', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(463, 33, 'Kabupaten', 'Kabupaten Ogan Komering Ulu', '32112', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(464, 33, 'Kabupaten', 'Kabupaten Ogan Komering Ulu Selatan', '32211', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(465, 33, 'Kabupaten', 'Kabupaten Ogan Komering Ulu Timur', '32312', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(466, 33, 'Kota', 'Kota Pagar Alam', '31512', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(467, 33, 'Kota', 'Kota Palembang', '30111', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(468, 33, 'Kota', 'Kota Prabumulih', '31121', '2023-08-26 05:55:13', '2023-08-26 05:55:13'),
(469, 34, 'Kabupaten', 'Kabupaten Asahan', '21214', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(470, 34, 'Kabupaten', 'Kabupaten Batu Bara', '21655', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(471, 34, 'Kota', 'Kota Binjai', '20712', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(472, 34, 'Kabupaten', 'Kabupaten Dairi', '22211', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(473, 34, 'Kabupaten', 'Kabupaten Deli Serdang', '20511', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(474, 34, 'Kota', 'Kota Gunungsitoli', '22813', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(475, 34, 'Kabupaten', 'Kabupaten Humbang Hasundutan', '22457', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(476, 34, 'Kabupaten', 'Kabupaten Karo', '22119', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(477, 34, 'Kabupaten', 'Kabupaten Labuhan Batu', '21412', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(478, 34, 'Kabupaten', 'Kabupaten Labuhan Batu Selatan', '21511', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(479, 34, 'Kabupaten', 'Kabupaten Labuhan Batu Utara', '21711', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(480, 34, 'Kabupaten', 'Kabupaten Langkat', '20811', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(481, 34, 'Kabupaten', 'Kabupaten Mandailing Natal', '22916', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(482, 34, 'Kota', 'Kota Medan', '20228', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(483, 34, 'Kabupaten', 'Kabupaten Nias', '22876', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(484, 34, 'Kabupaten', 'Kabupaten Nias Barat', '22895', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(485, 34, 'Kabupaten', 'Kabupaten Nias Selatan', '22865', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(486, 34, 'Kabupaten', 'Kabupaten Nias Utara', '22856', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(487, 34, 'Kabupaten', 'Kabupaten Padang Lawas', '22763', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(488, 34, 'Kabupaten', 'Kabupaten Padang Lawas Utara', '22753', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(489, 34, 'Kota', 'Kota Padang Sidempuan', '22727', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(490, 34, 'Kabupaten', 'Kabupaten Pakpak Bharat', '22272', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(491, 34, 'Kota', 'Kota Pematang Siantar', '21126', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(492, 34, 'Kabupaten', 'Kabupaten Samosir', '22392', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(493, 34, 'Kabupaten', 'Kabupaten Serdang Bedagai', '20915', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(494, 34, 'Kota', 'Kota Sibolga', '22522', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(495, 34, 'Kabupaten', 'Kabupaten Simalungun', '21162', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(496, 34, 'Kota', 'Kota Tanjung Balai', '21321', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(497, 34, 'Kabupaten', 'Kabupaten Tapanuli Selatan', '22742', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(498, 34, 'Kabupaten', 'Kabupaten Tapanuli Tengah', '22611', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(499, 34, 'Kabupaten', 'Kabupaten Tapanuli Utara', '22414', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(500, 34, 'Kota', 'Kota Tebing Tinggi', '20632', '2023-08-26 05:55:14', '2023-08-26 05:55:14'),
(501, 34, 'Kabupaten', 'Kabupaten Toba Samosir', '22316', '2023-08-26 05:55:14', '2023-08-26 05:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indoregion_districts`
--

CREATE TABLE `indoregion_districts` (
  `id` char(7) NOT NULL,
  `regency_id` char(4) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indoregion_villages`
--

CREATE TABLE `indoregion_villages` (
  `id` char(10) NOT NULL,
  `district_id` char(7) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_02_140432_create_provinces_tables', 1),
(4, '2017_05_02_140444_create_regencies_tables', 1),
(5, '2017_05_02_140454_create_villages_tables', 1),
(6, '2017_05_02_142019_create_districts_tables', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_06_16_063015_create_categories_table', 1),
(9, '2020_06_16_063622_create_products_table', 1),
(10, '2020_06_16_064045_create_product_galleries_table', 1),
(11, '2020_06_16_064403_create_carts_table', 1),
(12, '2020_06_16_065305_create_transactions_table', 1),
(13, '2020_06_16_065324_create_transaction_details_table', 1),
(14, '2020_06_30_093721_delete_resi_field_at_transactions_table', 1),
(15, '2020_06_30_094658_add_resi_and_shipping_status_to_transaction_details_table', 1),
(16, '2020_06_30_181003_add_code_to_transactions_table', 1),
(17, '2020_06_30_181055_add_code_to_transaction_details_table', 1),
(18, '2020_06_30_181504_add_slug_to_products_table', 1),
(19, '2020_06_30_182106_add_roles_field_to_users_table', 1),
(20, '2020_07_13_083337_change_nullable_field_at_users_table', 1),
(21, '2023_07_12_165144_add_photo_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `users_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `users_id`, `categories_id`, `price`, `description`, `deleted_at`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'tas brand', 1, 1, 150000, '<p>tas yang berkualitas tinggi</p>', NULL, '2023-08-26 06:10:52', '2023-10-09 19:44:42', 'tas-brand'),
(2, 'tas anak', 1, 1, 200000, '<p>tas untuk sekolah</p>', NULL, '2023-08-26 06:12:47', '2023-08-26 06:12:47', 'tas-anak'),
(3, 'gelas ukir', 1, 3, 400000, '<p>gelas ukir UMKM</p>', NULL, '2023-08-26 06:14:05', '2023-08-26 06:16:46', 'gelas-ukir'),
(4, 'Kapal Hias', 1, 3, 350000, '<p>Kapal kerajinan tangan</p>', NULL, '2023-08-26 06:16:37', '2023-08-26 06:16:37', 'kapal-hias'),
(5, 'gelang emas', 1, 4, 700000, '<p>gelang emas 7 gram</p>', NULL, '2023-08-26 06:17:50', '2023-08-26 06:17:50', 'gelang-emas'),
(6, 'gelang diamond', 1, 4, 250000, '<p>gelang diamond emas</p>', NULL, '2023-08-26 06:18:26', '2023-08-26 06:18:37', 'gelang-diamond'),
(7, 'coba', 1, 1, 1212, '<p>as</p>', NULL, '2023-08-30 06:48:52', '2023-08-30 06:58:21', 'coba'),
(8, 'asas', 1, 1, 231, '<p>asas</p>', NULL, '2023-08-30 07:03:35', '2023-10-09 19:50:53', 'asas');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photos` varchar(255) NOT NULL,
  `products_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `photos`, `products_id`, `created_at`, `updated_at`) VALUES
(1, 'assets/product/0jauWnNGUbWXw3JTsEOxSYt9DAIWAsecHDpfvhhU.jpeg', 1, '2023-08-26 06:10:52', '2023-08-26 06:10:52'),
(2, 'assets/product/fMJkX1GkyuiVFPcej6wYtUwaSWUgGEf3Eom7p1lM.jpeg', 2, '2023-08-26 06:12:47', '2023-08-26 06:12:47'),
(3, 'assets/product/qYRMEi4hO2eFN29bm7WXLsuU6n8FrKhBaBIg0609.webp', 3, '2023-08-26 06:14:05', '2023-08-26 06:14:05'),
(4, 'assets/product/Tm6AR9ngDmFdRlGNsATNUrjGOk0J36gnGcqlwrei.jpeg', 4, '2023-08-26 06:16:37', '2023-08-26 06:16:37'),
(5, 'assets/product/dlOUWk7LU8LUbGJuBkhKof9PITUqTwx9nR0bgKy9.jpeg', 5, '2023-08-26 06:17:50', '2023-08-26 06:17:50'),
(6, 'assets/product/tlGshwC1ds0H6RQozIFswxExYucb9bH0BJoe6fLN.jpeg', 6, '2023-08-26 06:18:26', '2023-08-26 06:18:26'),
(9, 'assets/product/sWwPYz10khNNzcgHPvuumbyixAKOsQReF1HgBdzs.jpeg', 7, '2023-10-10 18:03:56', '2023-10-10 18:03:56'),
(10, 'assets/product/OH1e45eeYPUEqvhsxX49By0yCTRtWTXVGkZwsO5A.jpeg', 8, '2023-10-10 18:04:13', '2023-10-10 18:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bali', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(2, 'Bangka Belitung', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(3, 'Banten', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(4, 'Bengkulu', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(5, 'DI Yogyakarta', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(6, 'DKI Jakarta', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(7, 'Gorontalo', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(8, 'Jambi', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(9, 'Jawa Barat', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(10, 'Jawa Tengah', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(11, 'Jawa Timur', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(12, 'Kalimantan Barat', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(13, 'Kalimantan Selatan', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(14, 'Kalimantan Tengah', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(15, 'Kalimantan Timur', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(16, 'Kalimantan Utara', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(17, 'Kepulauan Riau', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(18, 'Lampung', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(19, 'Maluku', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(20, 'Maluku Utara', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(21, 'Nanggroe Aceh Darussalam (NAD)', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(22, 'Nusa Tenggara Barat (NTB)', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(23, 'Nusa Tenggara Timur (NTT)', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(24, 'Papua', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(25, 'Papua Barat', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(26, 'Riau', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(27, 'Sulawesi Barat', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(28, 'Sulawesi Selatan', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(29, 'Sulawesi Tengah', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(30, 'Sulawesi Tenggara', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(31, 'Sulawesi Utara', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(32, 'Sumatera Barat', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(33, 'Sumatera Selatan', '2023-08-26 05:54:26', '2023-08-26 05:54:26'),
(34, 'Sumatera Utara', '2023-08-26 05:54:26', '2023-08-26 05:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `inscurance_price` int(11) NOT NULL,
  `shipping_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `users_id`, `inscurance_price`, `shipping_price`, `total_price`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`, `code`) VALUES
(1, 2, 0, 0, 1487000, 'SUCCESS', NULL, '2023-08-26 06:36:20', '2023-08-28 17:46:51', 'STORE-9734'),
(2, 2, 0, 0, 464000, 'SUCCESS', NULL, '2023-08-26 17:18:29', '2023-08-28 18:15:33', 'STORE-2362'),
(3, 2, 0, 0, 464000, 'PENDING', NULL, '2023-08-26 17:18:53', '2023-08-26 17:18:53', 'STORE-9324'),
(4, 2, 0, 0, 464000, 'PENDING', NULL, '2023-08-26 17:19:04', '2023-08-26 17:19:04', 'STORE-9515'),
(5, 2, 0, 0, 464000, 'PENDING', NULL, '2023-08-26 17:20:19', '2023-08-26 17:20:19', 'STORE-5298'),
(6, 2, 0, 0, 464000, 'PENDING', NULL, '2023-08-26 17:20:30', '2023-08-26 17:20:30', 'STORE-5685'),
(7, 2, 0, 0, 214000, 'PENDING', NULL, '2023-08-28 17:43:46', '2023-08-28 17:43:46', 'STORE-9264'),
(8, 1, 0, 0, 382000, 'PENDING', NULL, '2023-08-30 07:29:03', '2023-08-30 07:29:03', 'STORE-9674'),
(9, 2, 0, 0, 205000, 'PENDING', NULL, '2023-08-30 07:53:50', '2023-08-30 07:53:50', 'STORE-1295'),
(10, 1, 0, 0, 70231, 'PENDING', NULL, '2023-10-09 20:25:36', '2023-10-09 20:25:36', 'STORE-8892'),
(11, 1, 0, 0, 70231, 'PENDING', NULL, '2023-10-09 20:27:53', '2023-10-09 20:27:53', 'STORE-5159'),
(12, 1, 0, 0, 70231, 'PENDING', NULL, '2023-10-09 20:28:30', '2023-10-09 20:28:30', 'STORE-2690'),
(13, 1, 0, 0, 70231, 'PENDING', NULL, '2023-10-09 20:29:25', '2023-10-09 20:29:25', 'STORE-3240'),
(14, 1, 0, 0, 70231, 'PENDING', NULL, '2023-10-09 20:29:56', '2023-10-09 20:29:56', 'STORE-9013'),
(15, 1, 0, 0, 70231, 'PENDING', NULL, '2023-10-09 20:30:48', '2023-10-09 20:30:48', 'STORE-5052');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_status` varchar(255) NOT NULL,
  `resi` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `products_id`, `price`, `created_at`, `updated_at`, `shipping_status`, `resi`, `code`) VALUES
(1, 1, 5, 700000, '2023-08-26 06:36:20', '2023-08-28 18:17:56', 'SHIPPING', 'iuaw', 'TRX-79'),
(2, 1, 3, 400000, '2023-08-26 06:36:20', '2023-08-26 06:36:20', 'PENDING', '', 'TRX-6050'),
(3, 1, 4, 350000, '2023-08-26 06:36:20', '2023-08-26 06:36:20', 'PENDING', '', 'TRX-1906'),
(4, 2, 3, 400000, '2023-08-26 17:18:29', '2023-08-26 17:18:29', 'PENDING', '', 'TRX-2120'),
(5, 7, 1, 150000, '2023-08-28 17:43:46', '2023-08-28 17:43:46', 'PENDING', '', 'TRX-3821'),
(6, 8, 1, 150000, '2023-08-30 07:29:03', '2023-08-30 07:29:03', 'PENDING', '', 'TRX-3724'),
(7, 8, 2, 200000, '2023-08-30 07:29:03', '2023-08-30 07:29:03', 'PENDING', '', 'TRX-8733'),
(8, 9, 1, 150000, '2023-08-30 07:53:50', '2023-08-30 07:53:50', 'PENDING', '', 'TRX-44'),
(9, 10, 8, 231, '2023-10-09 20:25:36', '2023-10-09 20:25:36', 'PENDING', '', 'TRX-8976');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address_one` longtext DEFAULT NULL,
  `address_two` longtext DEFAULT NULL,
  `provinces_id` int(11) DEFAULT NULL,
  `regencies_id` int(11) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `store_status` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) NOT NULL DEFAULT 'USER',
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address_one`, `address_two`, `provinces_id`, `regencies_id`, `zip_code`, `country`, `phone_number`, `store_name`, `categories_id`, `store_status`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `roles`, `photo`) VALUES
(1, 'admin', 'admin@mail.com', NULL, '$2y$10$iUqK.bS.3l5uI/QkGDT.WOy98sf6B6qpmTs4B4afst77hfjTHn/OO', NULL, NULL, 12, 167, NULL, NULL, NULL, 'Selera Indonesia', NULL, 1, NULL, NULL, '2023-08-26 06:00:35', '2023-08-26 06:00:35', 'ADMIN', 'assets/user/jIzfaK3VvhhwNvhf6Dp9eJq6H1i6ZBwRDwoLj984.png'),
(2, 'rizky ikhsan', 'ic@mail.com', NULL, '$2y$10$dLt9VtyzmziujvKH2/CWu.q0MPdWy8cll4xZ7iRkcKnqOUJHpEyoO', 'Jl. Serdam Komp. Bhayangkara Permai Blok F No.11', 'Jl. Serdam Komp. Bhayangkara Permai Blok F No.11', 12, 167, 0, 'Indonesia', '9898', 'coba', NULL, 1, NULL, NULL, '2023-08-26 06:21:06', '2023-08-26 17:18:29', 'USER', 'assets/user/9NbCIlW9OpQfNK3zpSxzOlyYVRuomh6Fg1xyeAdg.jpeg'),
(3, 'safika', 's@mail.com', NULL, '$2y$10$yltoyFiIaKojO5TVzMh.a.oejvTJVXCypGAddJFKC2I9YTb7a.n6W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 's', NULL, 1, NULL, NULL, '2023-08-28 17:51:57', '2023-08-28 17:51:57', 'USER', 'assets/user/BQX2OwBqx37nV5knfftIrbo1c79fTomEP5HvC6Ux.jpeg'),
(4, 'as', 'ittt@mail.com', NULL, '$2y$10$S9koUvTDWrFOlxrd34qnUe8rMgkzv1r5l81r9VrZrO0eJbs1k/Kn6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, '2023-08-28 18:35:59', '2023-08-28 18:35:59', 'USER', 'assets/user/jsEQVzDLA2y86iew02aS6PnLFpUM1vJzE7ayM9t9.png'),
(5, 'ii', 'iii@mail.com', NULL, '$2y$10$bVvopOlWbQMGHg08qXUr4.VNWqJ4QpxI77R8KI4ZyFrLLI.dQ/WQy', NULL, NULL, 12, 167, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, '2023-08-30 06:25:02', '2023-08-30 06:25:02', 'USER', 'assets/user/5GxVgtxG7Np7rc2buGZSlNRiceL63mL41L7WE7g8.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indoregion_districts`
--
ALTER TABLE `indoregion_districts`
  ADD KEY `indoregion_districts_id_index` (`id`);

--
-- Indexes for table `indoregion_villages`
--
ALTER TABLE `indoregion_villages`
  ADD KEY `indoregion_villages_id_index` (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

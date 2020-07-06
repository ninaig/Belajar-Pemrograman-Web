-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 04, 2020 at 08:35 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `telpon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Fariz', '08512345678', 'Bekasi', '2020-06-22 11:23:32', '0000-00-00 00:00:00'),
(2, 'Yani', '08998765432', 'Semarang', '2020-06-22 11:23:32', '0000-00-00 00:00:00'),
(3, 'Elisabeth', '08976426743', 'Bandung', '2020-06-22 11:27:06', '0000-00-00 00:00:00'),
(4, 'Slamet', '08612359714', 'Solo', '2020-06-22 11:27:06', '0000-00-00 00:00:00'),
(6, 'Mumpuni', '08562920275', 'Jogja', '2020-06-22 11:27:49', '0000-00-00 00:00:00'),
(8, 'Suroso', '08262888228', 'Demak', '2020-06-22 11:28:36', '0000-00-00 00:00:00'),
(9, 'Budi', '08627922211', 'Semarang', '2020-06-22 11:29:15', '0000-00-00 00:00:00'),
(10, 'Eko', '08925272248', 'Blora', '2020-06-22 11:29:15', '0000-00-00 00:00:00'),
(11, 'Maria', '08253784643', 'Surabaya', '2020-06-22 11:29:55', '0000-00-00 00:00:00'),
(12, 'Edgar', '08364863738', 'Bali', '2020-06-22 11:29:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `kode` varchar(191) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `kode`, `nama`, `semester`, `guru_id`, `created_at`, `updated_at`) VALUES
(1, 'M-001', 'Matematika Dasar', 'ganjil', 1, '2020-06-21 09:27:57', '0000-00-00 00:00:00'),
(2, 'B-001', 'Bahasa Indonesia', 'ganjil', 2, '2020-06-21 09:27:57', '0000-00-00 00:00:00'),
(3, 'B-002', 'Bahasa Inggris', 'ganjil', 3, '2020-06-21 09:29:08', '0000-00-00 00:00:00'),
(4, 'B-003', 'Bahasa Jawa', 'ganjil', 4, '2020-06-21 09:29:08', '0000-00-00 00:00:00'),
(5, 'F-001', 'Fisika', 'ganjil', 6, '2020-06-21 09:29:59', '0000-00-00 00:00:00'),
(6, 'K-001', 'Kimia', 'ganjil', 6, '2020-06-21 09:29:59', '0000-00-00 00:00:00'),
(7, 'B-101', 'Biologi', 'ganjil', 6, '2020-06-21 09:30:51', '0000-00-00 00:00:00'),
(8, 'P-001', 'PKN', 'ganjil', 8, '2020-06-21 09:30:51', '0000-00-00 00:00:00'),
(9, 'AI-001', 'Agama Islam', 'ganjil', 9, '2020-06-22 04:35:42', '0000-00-00 00:00:00'),
(14, 'OL-001', 'Penjaskes', 'ganjil', 10, '2020-06-22 07:59:56', '0000-00-00 00:00:00'),
(15, 'AK-002', 'Agama Kristen', 'ganjil', 11, '2020-06-22 09:38:41', '0000-00-00 00:00:00'),
(16, 'AH-003', 'Agama Hindu', 'ganjil', 12, '2020-06-22 09:38:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mapel_siswa`
--

CREATE TABLE `mapel_siswa` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel_siswa`
--

INSERT INTO `mapel_siswa` (`id`, `siswa_id`, `mapel_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 87, '2020-06-21 10:12:52', '0000-00-00 00:00:00'),
(2, 2, 2, 80, '2020-06-21 10:12:52', '0000-00-00 00:00:00'),
(3, 2, 3, 78, '2020-06-21 10:18:36', '2020-06-24 05:49:06'),
(4, 2, 4, 78, '2020-06-21 10:18:36', '0000-00-00 00:00:00'),
(5, 2, 5, 90, '2020-06-21 10:19:24', '0000-00-00 00:00:00'),
(6, 2, 6, 79, '2020-06-21 10:19:24', '2020-06-24 05:49:35'),
(7, 2, 7, 77, '2020-06-21 10:19:49', '0000-00-00 00:00:00'),
(8, 2, 8, 80, '2020-06-21 10:19:49', '0000-00-00 00:00:00'),
(9, 13, 1, 95, '2020-06-21 10:20:20', '0000-00-00 00:00:00'),
(12, 13, 4, 90, '2020-06-21 10:20:43', '0000-00-00 00:00:00'),
(13, 13, 5, 100, '2020-06-21 10:21:02', '0000-00-00 00:00:00'),
(14, 13, 6, 89, '2020-06-21 10:21:02', '2020-06-24 03:17:42'),
(15, 13, 7, 96, '2020-06-21 10:21:26', '2020-06-24 05:30:05'),
(16, 13, 8, 86, '2020-06-21 10:21:26', '0000-00-00 00:00:00'),
(17, 14, 1, 79, '2020-06-21 10:21:58', '0000-00-00 00:00:00'),
(18, 14, 2, 76, '2020-06-21 10:21:58', '0000-00-00 00:00:00'),
(19, 14, 3, 65, '2020-06-21 10:22:22', '0000-00-00 00:00:00'),
(20, 14, 4, 89, '2020-06-21 10:22:22', '0000-00-00 00:00:00'),
(21, 14, 5, 77, '2020-06-21 10:22:57', '0000-00-00 00:00:00'),
(22, 14, 6, 84, '2020-06-21 10:22:57', '0000-00-00 00:00:00'),
(23, 14, 8, 80, '2020-06-21 20:52:04', '2020-06-22 03:52:04'),
(24, 16, 1, 50, '2020-06-21 20:52:40', '2020-06-22 08:55:42'),
(25, 16, 2, 80, '2020-06-21 20:52:53', '2020-06-22 03:52:53'),
(26, 18, 1, 83, '2020-06-21 20:59:53', '2020-06-22 03:59:53'),
(27, 14, 7, 70, '2020-06-21 21:29:24', '2020-06-22 04:29:24'),
(28, 16, 3, 77, '2020-06-21 21:29:49', '2020-06-22 04:29:49'),
(29, 16, 4, 60, '2020-06-21 21:30:04', '2020-06-22 04:30:04'),
(30, 16, 5, 78, '2020-06-21 21:30:14', '2020-06-22 04:30:14'),
(31, 16, 6, 66, '2020-06-21 21:30:23', '2020-06-22 04:30:23'),
(32, 16, 7, 74, '2020-06-21 21:30:44', '2020-06-22 04:30:44'),
(33, 16, 8, 82, '2020-06-21 21:30:55', '2020-06-22 04:30:55'),
(34, 2, 9, 89, '2020-06-21 21:36:56', '2020-06-22 04:36:56'),
(35, 13, 9, 90, '2020-06-21 21:37:15', '2020-06-22 04:37:15'),
(36, 14, 9, 88, '2020-06-21 21:37:30', '2020-06-22 04:37:30'),
(38, 17, 1, 89, '2020-06-21 21:38:11', '2020-06-22 04:38:11'),
(39, 17, 2, 80, '2020-06-21 21:38:21', '2020-06-22 04:38:21'),
(40, 17, 3, 70, '2020-06-21 21:38:29', '2020-06-22 04:38:29'),
(41, 17, 4, 67, '2020-06-21 21:38:37', '2020-06-22 04:38:37'),
(42, 17, 5, 75, '2020-06-21 21:38:46', '2020-06-22 04:38:46'),
(43, 17, 6, 76, '2020-06-21 21:38:56', '2020-06-22 04:38:56'),
(44, 17, 7, 90, '2020-06-21 21:39:06', '2020-06-22 04:39:06'),
(45, 17, 8, 93, '2020-06-21 21:39:16', '2020-06-22 04:39:16'),
(46, 17, 9, 81, '2020-06-21 21:39:26', '2020-06-22 04:39:26'),
(47, 18, 2, 80, '2020-06-21 21:40:05', '2020-06-22 04:40:05'),
(48, 18, 3, 73, '2020-06-21 21:40:16', '2020-06-22 04:40:16'),
(49, 18, 4, 50, '2020-06-21 21:40:40', '2020-06-22 04:40:40'),
(50, 18, 5, 73, '2020-06-21 21:40:50', '2020-06-22 04:40:50'),
(51, 18, 6, 66, '2020-06-21 21:40:58', '2020-06-22 04:40:58'),
(52, 18, 7, 49, '2020-06-21 21:41:08', '2020-06-22 04:41:08'),
(53, 18, 8, 87, '2020-06-21 21:41:18', '2020-06-22 04:41:18'),
(55, 21, 1, 90, '2020-06-21 21:41:44', '2020-06-22 04:41:44'),
(56, 21, 2, 78, '2020-06-21 21:41:52', '2020-06-22 04:41:52'),
(57, 21, 3, 60, '2020-06-21 21:44:17', '2020-06-22 04:44:17'),
(58, 21, 4, 89, '2020-06-21 21:44:34', '2020-06-22 04:44:34'),
(59, 21, 5, 74, '2020-06-21 21:44:44', '2020-06-22 04:44:44'),
(60, 21, 6, 88, '2020-06-21 21:44:52', '2020-06-22 04:44:52'),
(61, 21, 7, 69, '2020-06-21 21:45:14', '2020-06-22 04:45:14'),
(62, 21, 8, 79, '2020-06-21 21:45:23', '2020-06-22 04:45:23'),
(63, 21, 9, 94, '2020-06-21 21:45:32', '2020-06-22 04:45:32'),
(64, 22, 1, 88, '2020-06-21 21:45:49', '2020-06-22 04:45:49'),
(65, 22, 2, 72, '2020-06-21 21:45:57', '2020-06-22 04:45:57'),
(66, 22, 3, 81, '2020-06-21 21:46:10', '2020-06-22 04:46:10'),
(67, 22, 4, 50, '2020-06-21 21:46:19', '2020-06-22 04:46:19'),
(68, 22, 5, 75, '2020-06-21 21:46:26', '2020-06-22 04:46:26'),
(69, 22, 6, 66, '2020-06-21 21:46:35', '2020-06-22 04:46:35'),
(70, 22, 7, 74, '2020-06-21 21:46:48', '2020-06-22 04:46:48'),
(71, 22, 8, 90, '2020-06-21 21:46:58', '2020-06-22 04:46:58'),
(73, 23, 1, 90, '2020-06-21 21:47:19', '2020-06-22 04:47:19'),
(74, 23, 2, 77, '2020-06-21 21:47:26', '2020-06-22 04:47:26'),
(75, 23, 3, 73, '2020-06-21 21:47:34', '2020-06-22 04:47:34'),
(76, 23, 4, 71, '2020-06-21 21:47:44', '2020-06-22 04:47:44'),
(77, 23, 5, 83, '2020-06-21 21:47:53', '2020-06-22 04:47:53'),
(78, 23, 6, 88, '2020-06-21 21:48:02', '2020-06-22 04:48:02'),
(79, 23, 7, 79, '2020-06-21 21:48:11', '2020-06-22 04:48:11'),
(80, 23, 8, 70, '2020-06-21 21:48:20', '2020-06-22 04:48:20'),
(82, 24, 1, 89, '2020-06-21 21:48:42', '2020-06-24 05:48:33'),
(83, 24, 2, 90, '2020-06-21 21:48:51', '2020-06-22 04:48:51'),
(84, 24, 3, 88, '2020-06-21 21:49:00', '2020-06-22 04:49:00'),
(85, 24, 4, 74, '2020-06-21 21:49:10', '2020-06-22 04:49:10'),
(86, 24, 5, 83, '2020-06-21 21:49:23', '2020-06-22 04:49:23'),
(87, 24, 6, 90, '2020-06-21 21:49:37', '2020-06-22 04:49:37'),
(88, 24, 7, 84, '2020-06-21 21:49:46', '2020-06-24 05:48:41'),
(89, 24, 8, 94, '2020-06-21 21:49:56', '2020-06-22 04:49:56'),
(90, 24, 9, 95, '2020-06-21 21:50:05', '2020-06-22 04:50:05'),
(110, 13, 14, 90, '2020-06-22 08:08:21', '0000-00-00 00:00:00'),
(111, 13, 2, 87, '2020-06-22 08:09:11', '0000-00-00 00:00:00'),
(112, 13, 3, 84, '2020-06-22 08:09:11', '0000-00-00 00:00:00'),
(114, 14, 14, 87, '2020-06-22 08:18:56', '0000-00-00 00:00:00'),
(116, 17, 14, 79, '2020-06-22 08:19:21', '0000-00-00 00:00:00'),
(117, 21, 14, 86, '2020-06-22 08:19:49', '0000-00-00 00:00:00'),
(118, 24, 14, 84, '2020-06-22 08:19:49', '0000-00-00 00:00:00'),
(119, 16, 14, 77, '2020-06-22 02:37:21', '2020-06-22 09:37:21'),
(120, 26, 1, 70, '2020-06-22 02:40:15', '2020-06-22 09:40:15'),
(121, 26, 2, 88, '2020-06-22 02:40:26', '2020-06-22 09:40:26'),
(122, 26, 3, 50, '2020-06-22 02:40:35', '2020-06-22 09:40:35'),
(123, 26, 4, 66, '2020-06-22 02:40:44', '2020-06-22 09:40:44'),
(124, 26, 5, 71, '2020-06-22 02:40:53', '2020-06-22 09:40:53'),
(125, 26, 6, 82, '2020-06-22 02:41:05', '2020-06-22 09:41:05'),
(126, 26, 7, 79, '2020-06-22 02:41:15', '2020-06-22 09:41:15'),
(127, 26, 8, 72, '2020-06-22 02:41:27', '2020-06-22 09:41:27'),
(128, 26, 16, 90, '2020-06-22 02:41:37', '2020-06-22 09:41:37'),
(129, 26, 14, 86, '2020-06-22 02:41:49', '2020-06-22 09:41:49'),
(130, 27, 1, 50, '2020-06-22 02:43:47', '2020-06-22 09:43:47'),
(131, 27, 2, 66, '2020-06-22 02:43:55', '2020-06-22 09:43:55'),
(132, 27, 3, 95, '2020-06-22 02:44:03', '2020-06-22 09:44:03'),
(133, 27, 4, 60, '2020-06-22 02:44:11', '2020-06-22 09:44:11'),
(134, 27, 5, 77, '2020-06-22 02:44:25', '2020-06-22 09:44:25'),
(135, 27, 6, 80, '2020-06-22 02:44:36', '2020-06-22 09:44:36'),
(136, 27, 7, 74, '2020-06-22 02:44:45', '2020-06-22 09:44:45'),
(137, 27, 8, 86, '2020-06-22 02:44:55', '2020-06-22 09:44:55'),
(138, 27, 14, 83, '2020-06-22 02:45:07', '2020-06-22 09:45:07'),
(139, 27, 15, 83, '2020-06-22 02:45:17', '2020-06-22 09:45:17'),
(140, 28, 1, 30, '2020-06-22 02:46:22', '2020-06-22 09:46:22'),
(141, 28, 2, 70, '2020-06-22 02:46:29', '2020-06-22 09:46:29'),
(142, 28, 3, 98, '2020-06-22 02:46:39', '2020-06-22 09:46:39'),
(143, 28, 4, 48, '2020-06-22 02:46:47', '2020-06-22 09:46:47'),
(144, 28, 5, 58, '2020-06-22 02:46:58', '2020-06-22 09:46:58'),
(145, 28, 6, 87, '2020-06-22 02:47:06', '2020-06-22 09:47:06'),
(146, 28, 7, 73, '2020-06-22 02:47:15', '2020-06-22 09:47:15'),
(147, 28, 8, 82, '2020-06-22 02:47:24', '2020-06-22 09:47:24'),
(148, 28, 14, 77, '2020-06-22 02:47:34', '2020-06-22 09:47:34'),
(149, 28, 15, 69, '2020-06-22 02:47:48', '2020-06-22 09:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_06_18_022157_create_siswa_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_depan` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `nama_belakang` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `agama` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `agama`, `alamat`, `avatar`, `created_at`, `updated_at`) VALUES
(2, 0, 'Irzan', 'Faiq', 'L', 'Islam', 'Bekasi', NULL, NULL, NULL),
(13, 0, 'Nina Indah', 'Gusmiarti', 'P', 'Islam', 'Semarang', 'ninaig.jpg', '2020-06-18 04:41:30', '2020-06-20 04:41:47'),
(14, 0, 'Andra', 'Nova', 'L', 'Islam', 'Bogor', NULL, '2020-06-18 04:41:43', '2020-06-18 04:41:43'),
(16, 0, 'Rania', 'Aulia', 'P', 'Islam', 'Semarang', NULL, '2020-06-18 04:51:18', '2020-06-18 04:51:18'),
(17, 0, 'Naufal', 'Faris', 'L', 'Islam', 'Semarang', NULL, '2020-06-18 04:51:40', '2020-06-18 04:51:40'),
(21, 0, 'Muhammad', 'Faiz', 'L', 'Islam', 'Semarang', NULL, '2020-06-19 07:02:56', '2020-06-19 07:02:56'),
(24, 3, 'Kenzi', 'Hamizan', 'L', 'Islam', 'Bekasi', NULL, '2020-06-21 01:04:48', '2020-06-21 01:04:48'),
(26, 6, 'Putuu', 'Dandi', 'L', 'Hindu', 'Bali', NULL, '2020-06-22 02:40:06', '2020-06-22 02:40:06'),
(27, 7, 'Hans Kenzo', 'Lubis', 'L', 'Kristen', 'Bandung', NULL, '2020-06-22 02:43:30', '2020-06-24 01:54:49'),
(28, 8, 'Millenia', 'Gress', 'P', 'Kristen', 'Solo', NULL, '2020-06-22 02:46:12', '2020-06-22 02:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Nina', 'ninaig@gmail.com', '$2y$10$AVcvj0OJG/YZT4yf0jQfaebspXG4vOB5Vj4srzMQc5wGnl2fJiMxK', 'nyJuE86nA0eg5MOKFU3RCatncfdjhaM3FZJ0Qqiu49rvlzxjz3Hz1qPB9wXe', '2020-06-20 00:54:20', '2020-06-20 00:54:20'),
(3, 'siswa', 'Kenzi', 'kenzi@gmail.com', '$2y$10$gTsJkvC5ZRX5n2dcnzHO9OfC5zSONnllo0LSgZmQoSMyiSCkqg72q', 'ohgkpdhj3PAmWe8EvD3NalLLPrISsetffZ4xcSBYVroLMTUkgnhIGf0NtVmY', '2020-06-21 01:04:47', '2020-06-21 01:04:47'),
(6, 'siswa', 'Putuu', 'putu@gmail.com', '$2y$10$hNPUn.bBtV1PV7zXT.gpb.bLSxCec0mFDhQqRGOvlE4Mjnz1CfGfu', 'Xl9evIRrrr1ZexjstBHkPXqC4GJKFgjTcO2ceW99n8xTKgIzmOboHZwkHrlK', '2020-06-22 02:40:06', '2020-06-22 02:40:06'),
(7, 'siswa', 'Kenzo', 'kenlubs@gmail.com', '$2y$10$uNKVSe9fYdCscFUnRWZSOue7hweQKzCoWNxm7SkCBSdvrteAGtHhy', 'CQWFr1cdzOEaN63tEMVAhdwDot7Spl0vlyDiNMEO3HGwaEBBbxxwFJTGSed4', '2020-06-22 02:43:30', '2020-06-22 02:43:30'),
(8, 'siswa', 'Millenia', 'mill@gmail.com', '$2y$10$4SRlZT8j/l546bltrOv8ZevJpwoJd8yL/SMZs10nG5ls56S8XiUry', 'Gcj4uDLNjeCJdHJdlMmgbwS1KWagAW7JWlkz11MwXzEuJ484oyMB94es8exP', '2020-06-22 02:46:12', '2020-06-22 02:46:12'),
(9, 'siswa', 'Hendra', 'hendra@gmail.com', '$2y$10$aIXqOLZrZGqV6xk2p.k7PuybbaZzXQGcDXAMTg7zsU/EImhLqSVZ2', 'ZiZo01q5kI3KkUC098YTxe1r58lUkdWcHJeJud4Sr1wSyO1Fbj4e3rsr2qKn', '2020-06-23 20:33:03', '2020-06-23 20:33:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
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
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
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
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

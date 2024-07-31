-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 08:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `admin` varchar(255) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_configs`
--

CREATE TABLE `admin_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `config` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_configs`
--

INSERT INTO `admin_configs` (`id`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 'group_name', 'نب لاین', NULL, NULL),
(2, 'mosabeghe_name', 'مسابقه غدیر', NULL, NULL),
(3, 'welcome_text_off', 'در حال حاضر برنامه فعال نمی باشد.', NULL, NULL),
(4, 'welcome_text', 'در حال حاضر برنامه فعال نمی باشد.', NULL, NULL),
(5, 'welcome_btn', 'ورود به برنامه', NULL, NULL),
(6, 'off_start_text', 'منتظر بمانید تا سوالات فعال شوند!', NULL, NULL),
(7, 'enable_start_title', 'مسابقه غدیر', NULL, NULL),
(8, 'enable_start_text', 'آماده شروع مسابقه و پاسخ گویی به سوالات هستید؟', NULL, NULL),
(9, 'start_btn', 'شروع مسابقه', NULL, NULL),
(10, 'admin_register', '1', NULL, NULL),
(11, 'dor', '3', NULL, NULL),
(12, 'current_dor', '0', NULL, NULL),
(13, 'on_off', '0', NULL, NULL),
(14, 'app', '0', NULL, NULL),
(15, 'v', 'beta 1.0.0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `hquestions`
--

CREATE TABLE `hquestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `g1` varchar(255) NOT NULL,
  `g2` varchar(255) NOT NULL,
  `g3` varchar(255) NOT NULL,
  `g4` varchar(255) NOT NULL,
  `true` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_19_184805_questions', 1),
(5, '2024_06_01_145449_h_questions', 1),
(6, '2024_06_01_152406_admin_configs', 1),
(7, '2024_06_02_182544_admins', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `g1` varchar(255) NOT NULL,
  `g2` varchar(255) NOT NULL,
  `g3` varchar(255) NOT NULL,
  `g4` varchar(255) NOT NULL,
  `true` varchar(255) NOT NULL,
  `n_true` varchar(255) NOT NULL DEFAULT '0',
  `n_false` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `number`, `text`, `g1`, `g2`, `g3`, `g4`, `true`, `n_true`, `n_false`, `created_at`, `updated_at`) VALUES
(1, 1, 'سوال شماره 1', 'گزینه اول سوال1 ', 'گزینه دوم سوال1 ', 'گزینه سوم سوال1 ', 'گزینه چهارم سوال1 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(2, 2, 'سوال شماره 2', 'گزینه اول سوال2 ', 'گزینه دوم سوال2 ', 'گزینه سوم سوال2 ', 'گزینه چهارم سوال2 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(3, 3, 'سوال شماره 3', 'گزینه اول سوال3 ', 'گزینه دوم سوال3 ', 'گزینه سوم سوال3 ', 'گزینه چهارم سوال3 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(4, 4, 'سوال شماره 4', 'گزینه اول سوال4 ', 'گزینه دوم سوال4 ', 'گزینه سوم سوال4 ', 'گزینه چهارم سوال4 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(5, 5, 'سوال شماره 5', 'گزینه اول سوال5 ', 'گزینه دوم سوال5 ', 'گزینه سوم سوال5 ', 'گزینه چهارم سوال5 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(6, 6, 'سوال شماره 6', 'گزینه اول سوال6 ', 'گزینه دوم سوال6 ', 'گزینه سوم سوال6 ', 'گزینه چهارم سوال6 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(7, 7, 'سوال شماره 7', 'گزینه اول سوال7 ', 'گزینه دوم سوال7 ', 'گزینه سوم سوال7 ', 'گزینه چهارم سوال7 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(8, 8, 'سوال شماره 8', 'گزینه اول سوال8 ', 'گزینه دوم سوال8 ', 'گزینه سوم سوال8 ', 'گزینه چهارم سوال8 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(9, 9, 'سوال شماره 9', 'گزینه اول سوال9 ', 'گزینه دوم سوال9 ', 'گزینه سوم سوال9 ', 'گزینه چهارم سوال9 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(10, 10, 'سوال شماره 10', 'گزینه اول سوال10 ', 'گزینه دوم سوال10 ', 'گزینه سوم سوال10 ', 'گزینه چهارم سوال10 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(11, 11, 'سوال شماره 11', 'گزینه اول سوال11 ', 'گزینه دوم سوال11 ', 'گزینه سوم سوال11 ', 'گزینه چهارم سوال11 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(12, 12, 'سوال شماره 12', 'گزینه اول سوال12 ', 'گزینه دوم سوال12 ', 'گزینه سوم سوال12 ', 'گزینه چهارم سوال12 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(13, 13, 'سوال شماره 13', 'گزینه اول سوال13 ', 'گزینه دوم سوال13 ', 'گزینه سوم سوال13 ', 'گزینه چهارم سوال13 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(14, 14, 'سوال شماره 14', 'گزینه اول سوال14 ', 'گزینه دوم سوال14 ', 'گزینه سوم سوال14 ', 'گزینه چهارم سوال14 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(15, 15, 'سوال شماره 15', 'گزینه اول سوال15 ', 'گزینه دوم سوال15 ', 'گزینه سوم سوال15 ', 'گزینه چهارم سوال15 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(16, 16, 'سوال شماره 16', 'گزینه اول سوال16 ', 'گزینه دوم سوال16 ', 'گزینه سوم سوال16 ', 'گزینه چهارم سوال16 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(17, 17, 'سوال شماره 17', 'گزینه اول سوال17 ', 'گزینه دوم سوال17 ', 'گزینه سوم سوال17 ', 'گزینه چهارم سوال17 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(18, 18, 'سوال شماره 18', 'گزینه اول سوال18 ', 'گزینه دوم سوال18 ', 'گزینه سوم سوال18 ', 'گزینه چهارم سوال18 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(19, 19, 'سوال شماره 19', 'گزینه اول سوال19 ', 'گزینه دوم سوال19 ', 'گزینه سوم سوال19 ', 'گزینه چهارم سوال19 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(20, 20, 'سوال شماره 20', 'گزینه اول سوال20 ', 'گزینه دوم سوال20 ', 'گزینه سوم سوال20 ', 'گزینه چهارم سوال20 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(21, 21, 'سوال شماره 21', 'گزینه اول سوال21 ', 'گزینه دوم سوال21 ', 'گزینه سوم سوال21 ', 'گزینه چهارم سوال21 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(22, 22, 'سوال شماره 22', 'گزینه اول سوال22 ', 'گزینه دوم سوال22 ', 'گزینه سوم سوال22 ', 'گزینه چهارم سوال22 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(23, 23, 'سوال شماره 23', 'گزینه اول سوال23 ', 'گزینه دوم سوال23 ', 'گزینه سوم سوال23 ', 'گزینه چهارم سوال23 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(24, 24, 'سوال شماره 24', 'گزینه اول سوال24 ', 'گزینه دوم سوال24 ', 'گزینه سوم سوال24 ', 'گزینه چهارم سوال24 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(25, 25, 'سوال شماره 25', 'گزینه اول سوال25 ', 'گزینه دوم سوال25 ', 'گزینه سوم سوال25 ', 'گزینه چهارم سوال25 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(26, 26, 'سوال شماره 26', 'گزینه اول سوال26 ', 'گزینه دوم سوال26 ', 'گزینه سوم سوال26 ', 'گزینه چهارم سوال26 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(27, 27, 'سوال شماره 27', 'گزینه اول سوال27 ', 'گزینه دوم سوال27 ', 'گزینه سوم سوال27 ', 'گزینه چهارم سوال27 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(28, 28, 'سوال شماره 28', 'گزینه اول سوال28 ', 'گزینه دوم سوال28 ', 'گزینه سوم سوال28 ', 'گزینه چهارم سوال28 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(29, 29, 'سوال شماره 29', 'گزینه اول سوال29 ', 'گزینه دوم سوال29 ', 'گزینه سوم سوال29 ', 'گزینه چهارم سوال29 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(30, 30, 'سوال شماره 30', 'گزینه اول سوال30 ', 'گزینه دوم سوال30 ', 'گزینه سوم سوال30 ', 'گزینه چهارم سوال30 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(31, 31, 'سوال شماره 31', 'گزینه اول سوال31 ', 'گزینه دوم سوال31 ', 'گزینه سوم سوال31 ', 'گزینه چهارم سوال31 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(32, 32, 'سوال شماره 32', 'گزینه اول سوال32 ', 'گزینه دوم سوال32 ', 'گزینه سوم سوال32 ', 'گزینه چهارم سوال32 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(33, 33, 'سوال شماره 33', 'گزینه اول سوال33 ', 'گزینه دوم سوال33 ', 'گزینه سوم سوال33 ', 'گزینه چهارم سوال33 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(34, 34, 'سوال شماره 34', 'گزینه اول سوال34 ', 'گزینه دوم سوال34 ', 'گزینه سوم سوال34 ', 'گزینه چهارم سوال34 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(35, 35, 'سوال شماره 35', 'گزینه اول سوال35 ', 'گزینه دوم سوال35 ', 'گزینه سوم سوال35 ', 'گزینه چهارم سوال35 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(36, 36, 'سوال شماره 36', 'گزینه اول سوال36 ', 'گزینه دوم سوال36 ', 'گزینه سوم سوال36 ', 'گزینه چهارم سوال36 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(37, 37, 'سوال شماره 37', 'گزینه اول سوال37 ', 'گزینه دوم سوال37 ', 'گزینه سوم سوال37 ', 'گزینه چهارم سوال37 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(38, 38, 'سوال شماره 38', 'گزینه اول سوال38 ', 'گزینه دوم سوال38 ', 'گزینه سوم سوال38 ', 'گزینه چهارم سوال38 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(39, 39, 'سوال شماره 39', 'گزینه اول سوال39 ', 'گزینه دوم سوال39 ', 'گزینه سوم سوال39 ', 'گزینه چهارم سوال39 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12'),
(40, 40, 'سوال شماره 40', 'گزینه اول سوال40 ', 'گزینه دوم سوال40 ', 'گزینه سوم سوال40 ', 'گزینه چهارم سوال40 ', '3', '0', '0', '2024-06-16 13:28:12', '2024-06-16 13:28:12');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('mRaq5eXGCts4mHQO2AZKlSipBkLvGSx1q9PrrH82', 1, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibmVRZ1RJcG1DbGJyY09lN0hPbDV0R0pORDJOUXdZM3Y3S09Bc3VGayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1718560328);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `n_true` int(11) NOT NULL DEFAULT 0,
  `n_false` int(11) NOT NULL DEFAULT 0,
  `random` varchar(255) NOT NULL DEFAULT '0',
  `admin` varchar(255) NOT NULL DEFAULT '0',
  `full_admin` varchar(255) NOT NULL DEFAULT '0',
  `checker` varchar(255) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT 0,
  `dor` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `number`, `password`, `n_true`, `n_false`, `random`, `admin`, `full_admin`, `checker`, `score`, `dor`, `count`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'مدیر 1', 'admin', '$2y$12$Njcwc.TapY/j0A.ttmAYHecliTiafzW7PoR63hJ3FPEIRhYLI3gWS', 0, 0, '0', '1', '1', '0', 0, 0, 0, NULL, '2024-06-16 13:31:47', '2024-06-16 13:31:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `admin_configs`
--
ALTER TABLE `admin_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hquestions`
--
ALTER TABLE `hquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_number_unique` (`number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_configs`
--
ALTER TABLE `admin_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hquestions`
--
ALTER TABLE `hquestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

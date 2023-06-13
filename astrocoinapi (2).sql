-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 15, 2022 at 11:28 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `astrocoinapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2013_04_07_000000_create_stacks_table', 1),
(2, '2014_10_12_000001_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_04_07_062201_create_wallets_table', 1),
(7, '2022_04_07_062217_create_transactions_table', 1),
(9, '2022_04_11_114758_create_rankings_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 2, 'Ulugbek-token', '511c23ddc85d88381e81f64748f7c2c415051734a1518ce8c24e91d58ab34472', '[\"*\"]', NULL, '2022-04-07 07:39:45', '2022-04-07 07:39:45'),
(5, 'App\\Models\\User', 1, 'Ulugbek-token', 'a2caf1aa009405fd885524e806c0193d3d894985eeaa246a7d0a3412cca9759b', '[\"*\"]', '2022-04-08 02:42:06', '2022-04-08 01:05:41', '2022-04-08 02:42:06'),
(6, 'App\\Models\\User', 1, 'Ulugbek-token', 'cd011a3131f8ee5122d1545c4608a051530eb4c874becb92b8551c7f37ad1f9b', '[\"*\"]', NULL, '2022-04-08 02:36:47', '2022-04-08 02:36:47'),
(7, 'App\\Models\\User', 1, 'Ulugbek-token', '83d58f29667ee2e082e1b204c31310866941dd9293ba0caddf92716f6983b9a8', '[\"*\"]', NULL, '2022-04-08 02:36:51', '2022-04-08 02:36:51'),
(8, 'App\\Models\\User', 1, 'Ulugbek-token', '75e8df0e058f3c83e96ec32f67e5060260ef8727baff09470aa9dd90bb52a613', '[\"*\"]', NULL, '2022-04-08 02:36:52', '2022-04-08 02:36:52'),
(9, 'App\\Models\\User', 1, 'Ulugbek-token', '092eea56a34a0d40ed824a7f16ee3c030bd14a36bd73b6e47a6b82c3f69eda0d', '[\"*\"]', NULL, '2022-04-08 02:36:53', '2022-04-08 02:36:53'),
(10, 'App\\Models\\User', 1, 'Ulugbek-token', 'e2faa109435dd1b4879d7e399ce8c09b0ce8523a104c29a7f86cf57dbb4ac5fd', '[\"*\"]', NULL, '2022-04-08 02:36:53', '2022-04-08 02:36:53'),
(11, 'App\\Models\\User', 1, 'Ulugbek-token', '1e01eda4901bb3d379297e3fe016d20430f58c0967c51a913478708d8146b9f3', '[\"*\"]', NULL, '2022-04-08 02:36:55', '2022-04-08 02:36:55'),
(12, 'App\\Models\\User', 1, 'Ulugbek-token', 'f0643dfc0b77328fa70463f7b52074af5c36bad6af8d92822632da276999fb8b', '[\"*\"]', '2022-04-15 06:18:26', '2022-04-08 04:49:25', '2022-04-15 06:18:26'),
(13, 'App\\Models\\User', 3, 'Ulugbek-token', 'd542c5ec49826b181a2b28f45bc2811f790a29d279f6ead95981f1c3fd9fb631', '[\"*\"]', NULL, '2022-04-08 06:05:03', '2022-04-08 06:05:03'),
(14, 'App\\Models\\User', 4, 'Ulugbek-token', 'ac30d36c6002f009e42d759ebdf2e11f2fe148cad7fd70f059c8cc9cf508572b', '[\"*\"]', NULL, '2022-04-08 06:05:32', '2022-04-08 06:05:32'),
(15, 'App\\Models\\User', 5, 'Shaxzod-token', '6412636ed7ec97eb7675b886ab231145276ef5272f594b74630d462c6a21c47a', '[\"*\"]', NULL, '2022-04-15 00:00:39', '2022-04-15 00:00:39'),
(16, 'App\\Models\\User', 6, 'profile-token', '7d3940d8a00e4341ebc52b98ad993a563eebdbb0bad805812109e931f391f28b', '[\"*\"]', NULL, '2022-04-15 00:02:30', '2022-04-15 00:02:30'),
(17, 'App\\Models\\User', 7, 'Shaxzod-token', '320e4be4f1faced85311a157588c92f3c43accf472ca3f49f02641b71f2aa290', '[\"*\"]', NULL, '2022-04-15 00:03:31', '2022-04-15 00:03:31'),
(18, 'App\\Models\\User', 8, 'Shaxzod-token', 'a27daddd35530bd1c1b7a3536c7b6850c2180fdd919163aecc19ecf3d5be24fe', '[\"*\"]', NULL, '2022-04-15 00:05:29', '2022-04-15 00:05:29'),
(19, 'App\\Models\\User', 9, 'Shaxzod-token', '2090531517b3c07f4dddaa57e3c3f4ff061b041a1dc8ef5e4e0558c77cb7f433', '[\"*\"]', NULL, '2022-04-15 00:06:09', '2022-04-15 00:06:09'),
(20, 'App\\Models\\User', 10, 'Shaxzod-token', 'ec4cf4595de76628f3f5059f902ea7f1a548fb9f7829403ea3bae5bb2535b25a', '[\"*\"]', NULL, '2022-04-15 00:07:42', '2022-04-15 00:07:42'),
(21, 'App\\Models\\User', 11, 'Shaxzod-token', '3a8a3999707f017ddf1f4ba4c17b923bd8665e1e0c708a677aa95e865424a088', '[\"*\"]', NULL, '2022-04-15 00:09:04', '2022-04-15 00:09:04'),
(22, 'App\\Models\\User', 5, 'Shaxzod-token', 'd6c3b4dd1909859aa8e0b4ae2f1079adeed38b604a4e619ec50423989bcbc975', '[\"*\"]', NULL, '2022-04-15 00:12:11', '2022-04-15 00:12:11'),
(23, 'App\\Models\\User', 5, 'Shaxzod-token', '149c2b6e61793bdf567a24501169d2e5639d08067ec6deceb8d602a507eda495', '[\"*\"]', '2022-04-15 00:14:20', '2022-04-15 00:14:19', '2022-04-15 00:14:20'),
(24, 'App\\Models\\User', 5, 'Shaxzod-token', 'c69886c5f9cfc5acd01ef9a832c5e935c699dcf9e2a525b68dee725d1b9a7d73', '[\"*\"]', '2022-04-15 01:07:59', '2022-04-15 00:17:35', '2022-04-15 01:07:59'),
(25, 'App\\Models\\User', 5, 'Shaxzod-token', '2ebe1cec20e2fa51cf52abb1623844ffaa879513ead30040283f90e79ed5a1bb', '[\"*\"]', '2022-04-15 00:27:36', '2022-04-15 00:21:58', '2022-04-15 00:27:36'),
(26, 'App\\Models\\User', 5, 'Shaxzod-token', '995227d8d0f848345298355b5a9359e9c9e27cd7cbc0b7631ae8a322449f462b', '[\"*\"]', '2022-04-15 00:28:56', '2022-04-15 00:28:36', '2022-04-15 00:28:56'),
(27, 'App\\Models\\User', 5, 'Shaxzod-token', '766bb15788f6b8d7d2bd62a54667dfaee444636223579fc8bec06c382dc541ce', '[\"*\"]', '2022-04-15 05:17:09', '2022-04-15 02:31:15', '2022-04-15 05:17:09'),
(28, 'App\\Models\\User', 5, 'Shaxzod-token', '66b173f965c281266654037fbd4e019be0e8ee47f543a3d2c2a5183f1933dc87', '[\"*\"]', NULL, '2022-04-15 03:04:57', '2022-04-15 03:04:57'),
(29, 'App\\Models\\User', 5, 'Shaxzod-token', '0e5deb446cd4231ec56dff1d2dabb74e1db9fff37d994057e5337f3dd548de96', '[\"*\"]', NULL, '2022-04-15 03:05:10', '2022-04-15 03:05:10'),
(30, 'App\\Models\\User', 5, 'Shaxzod-token', 'f93895e884d4494a1e711332793adf7d7a5cc2a37e0a890dd5cd2ec8c38a9f77', '[\"*\"]', NULL, '2022-04-15 03:05:18', '2022-04-15 03:05:18'),
(31, 'App\\Models\\User', 5, 'Shaxzod-token', '5502da9ee9c5680cc5764ac1b15a3cdb09ecf2e7963dd1581d97168f6f4e9950', '[\"*\"]', '2022-04-15 06:28:25', '2022-04-15 03:58:09', '2022-04-15 06:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `rankings`
--

CREATE TABLE `rankings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `implementor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rankings`
--

INSERT INTO `rankings` (`id`, `title`, `implementor`, `users`, `created_at`, `updated_at`) VALUES
(1, 'Алигарх', 'richest', '[5, 2, 3, 4, 6, 7, 8, 9, 10, 11]', NULL, '2022-04-15 02:39:18'),
(2, 'Банкир', 'mostActive', '[5, 3, 2]', NULL, '2022-04-15 02:39:18'),
(3, 'Жмот', 'moneySaver', '[2]', NULL, '2022-04-15 02:52:32'),
(4, 'Мажор', 'mostSpender', '[]', NULL, NULL),
(5, 'БОМЖ', 'noMoney', '[]', NULL, NULL),
(6, 'Любимчик Админа', 'adminsFavorite', '[]', NULL, NULL),
(7, 'Филантроп', 'filantrop', '[]', NULL, NULL),
(8, 'Шопоголик', 'shopperStuff', '[]', NULL, NULL),
(9, 'Ботан', 'shopperKnowladge', '[]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stacks`
--

CREATE TABLE `stacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stacks`
--

INSERT INTO `stacks` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Fullstack', NULL, NULL),
(2, 'SoftwareEngineering', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wallet_from_id` bigint(20) UNSIGNED NOT NULL,
  `wallet_to_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'created',
  `errors` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `wallet_from_id`, `wallet_to_id`, `title`, `type`, `amount`, `comment`, `status`, `errors`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, '', 100, NULL, 'success', NULL, '2022-04-07 07:40:11', '2022-04-07 07:40:11'),
(2, 1, 2, NULL, '', 100, NULL, 'success', NULL, '2022-04-07 07:40:36', '2022-04-07 07:40:36'),
(3, 1, 2, NULL, '', 100, NULL, 'success', NULL, '2022-04-07 07:40:54', '2022-04-07 07:40:54'),
(4, 1, 2, NULL, '', 100, NULL, 'success', NULL, '2022-04-07 07:44:25', '2022-04-07 07:44:25'),
(5, 1, 2, NULL, '', 100, NULL, 'success', NULL, '2022-04-07 07:44:26', '2022-04-07 07:44:26'),
(6, 1, 2, NULL, '', 100, NULL, 'created', NULL, '2022-04-07 07:59:36', '2022-04-07 07:59:36'),
(7, 1, 2, NULL, '', 100, NULL, 'created', NULL, '2022-04-07 07:59:37', '2022-04-07 07:59:37'),
(8, 1, 2, NULL, '', 100, NULL, 'created', NULL, '2022-04-07 08:00:24', '2022-04-07 08:00:24'),
(9, 1, 2, NULL, '', 100, NULL, 'success', NULL, '2022-04-07 08:00:35', '2022-04-07 08:00:35'),
(10, 1, 2, NULL, '', 100, NULL, 'created', NULL, '2022-04-07 08:00:37', '2022-04-07 08:00:37'),
(11, 1, 2, NULL, '', 100, NULL, 'created', NULL, '2022-04-07 08:00:40', '2022-04-07 08:00:40'),
(12, 1, 2, NULL, '', 100, NULL, 'created', NULL, '2022-04-07 08:00:40', '2022-04-07 08:00:40'),
(13, 1, 2, NULL, '', 100, NULL, 'failed', NULL, '2022-04-07 08:01:28', '2022-04-07 08:01:28'),
(14, 1, 2, NULL, '', 100, NULL, 'failed', NULL, '2022-04-07 08:01:28', '2022-04-07 08:01:28'),
(15, 1, 2, NULL, '', 100, NULL, 'failed', 'Not enough balance', '2022-04-07 08:02:01', '2022-04-07 08:02:01'),
(16, 3, 2, NULL, '', 100, NULL, 'failed', 'Not enough balance', '2022-04-07 08:02:01', '2022-04-07 08:02:01'),
(17, 3, 4, NULL, '', 10, NULL, 'success', NULL, NULL, NULL),
(18, 2, 1, NULL, '', 101, NULL, 'success', NULL, NULL, NULL),
(19, 5, 2, NULL, '', 1212, 'dsfsdf', 'failed', 'Not enough balance', '2022-04-15 00:55:55', '2022-04-15 00:55:55'),
(20, 5, 2, NULL, '', 100, 'hello world', 'success', NULL, '2022-04-15 00:57:18', '2022-04-15 00:57:18'),
(21, 1, 2, NULL, '', 100, 'Tester', 'failed', 'Not enough balance', '2022-04-15 00:58:28', '2022-04-15 00:58:28'),
(22, 1, 2, NULL, '', 100, 'Tester', 'success', NULL, '2022-04-15 00:58:39', '2022-04-15 00:58:39'),
(23, 5, 2, NULL, '', 100, 'hello world', 'success', NULL, '2022-04-15 00:59:21', '2022-04-15 00:59:21'),
(24, 5, 2, NULL, '', 100, 'hello', 'success', NULL, '2022-04-15 00:59:44', '2022-04-15 00:59:44'),
(25, 5, 2, NULL, '', 100, 'asdasd', 'success', NULL, '2022-04-15 01:00:26', '2022-04-15 01:00:26'),
(26, 5, 2, NULL, '', 500, 'Hello', 'success', NULL, '2022-04-15 01:04:06', '2022-04-15 01:04:06'),
(27, 5, 2, NULL, '', 50, 'asdasd', 'success', NULL, '2022-04-15 01:04:44', '2022-04-15 01:04:44'),
(28, 5, 2, NULL, '', 50, 'sdfsd', 'success', NULL, '2022-04-15 01:06:22', '2022-04-15 01:06:22'),
(29, 1, 2, 'Transfer', 'transfer', 100, 'Tester', 'success', NULL, '2022-04-15 06:18:26', '2022-04-15 06:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stack_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qwasar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unverified',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `stack_id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `number`, `qwasar`, `photo`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'App Test', 'Testerov', 'uubeks2@gmail.com', NULL, '$2y$10$dFXv8kfweXVvGNduy8NasOVsJF12uKIMzpyT5zvloFgcCGsRhvlpO', '+998 (90) 123-45-67', 'ddddd', 'photos/1/bs1j181RGnSnmO9r8728EkQCD3SgJPYZk2HUV55G.jpg', 'admin', 'unverified', NULL, '2022-04-07 07:39:42', '2022-04-13 03:53:45'),
(2, 1, 'Ulugbek', 'Tursuknulov', 'uubeks2@gmail.coma', NULL, '$2y$10$9TXAdjBiJDX1RVDQVR62ceOiVtUdgIP69ZgF/4S6iY0Fq3zCHYVaO', '936136130', 'tursunku_u', NULL, 'user', 'unverified', NULL, '2022-04-07 07:39:45', '2022-04-07 07:39:45'),
(3, 1, 'Ulugbek', 'Tursuknulov', 'uubeks2@gmail.coms', NULL, '$2y$10$9sFn2Lru8wwmdj7U0P4SGu8ubn3gmTLSgoP//RmGbVmxZ32H2i8LS', '936136130', 'tursunku_u', NULL, 'user', 'unverified', NULL, '2022-04-08 06:05:03', '2022-04-08 06:05:03'),
(4, 1, 'Ulugbek', 'Tursuknulov', 'uubeks2@gmail.comw', NULL, '$2y$10$qffKDf5QiWlihUmz1wOZ/egkRDMN2EEN2zoa3PQcgpkY2BGbRCbfK', '936136130', 'tursunku_u', NULL, 'user', 'unverified', NULL, '2022-04-08 06:05:32', '2022-04-08 06:05:32'),
(5, 1, 'Shaxzod', 'Safarov', 'shaxzodzor007@gmail.com', NULL, '$2y$10$Ad70Y/IWCInggjt/iAZwFe5xL9fBaUNyhTZ9RyBaBGOt/ZKBwjmCK', '998977061443', 'safarov_s', NULL, 'user', 'unverified', NULL, '2022-04-15 00:00:39', '2022-04-15 00:00:39'),
(6, 1, 'profile', '12345', 'profile@mail.com', NULL, '$2y$10$umvO2aZMZDIot646uaz/Ce0Ejhyi5.rsxZ7UJjc4rc5unIJAK9nd6', '99887545454', 'qwerty', NULL, 'user', 'unverified', NULL, '2022-04-15 00:02:30', '2022-04-15 00:02:30'),
(7, 1, 'Shaxzod', 'Safarov', 'shaxzod123@gmail.com', NULL, '$2y$10$6SOcCNpEeVTSMjcyCo1TWuw5tqnE/OR1ZX1vL6pga.CrjRORbNoaa', '37437462', 'asdfasdf', NULL, 'user', 'unverified', NULL, '2022-04-15 00:03:31', '2022-04-15 00:03:31'),
(8, 1, 'Shaxzod', 'Safarov', '12345678@gmail.com', NULL, '$2y$10$nJN9INa8MKbZWUTHHjP2k.pv/doBjVlhOqxaFZTp/WtGhZmfqNQai', '55555555', 'qwertyui', NULL, 'user', 'unverified', NULL, '2022-04-15 00:05:29', '2022-04-15 00:05:29'),
(9, 1, 'Shaxzod', 'Safarov', '12345@gmail.com', NULL, '$2y$10$UIINiP2mWQHWc4ScD.CH0OBguWIsRqgrhMdLLzTYAHAR/5YRiREf.', '5545454545', 'asdfasdfasdf', NULL, 'user', 'unverified', NULL, '2022-04-15 00:06:09', '2022-04-15 00:06:09'),
(10, 1, 'Shaxzod', 'Safarov', 'asdfasdfadsf@gmail.com', NULL, '$2y$10$eef2bsfu0j5F0fFjaoDcF.3VLOEMYIyGOlANzYuU9RYnECe5PNJP2', '34523625256', 'sdfgsdfgsdfg', NULL, 'user', 'unverified', NULL, '2022-04-15 00:07:42', '2022-04-15 00:07:42'),
(11, 1, 'Shaxzod', 'Safarov', 'dfghfghghkj@gmail.com', NULL, '$2y$10$n5B4Xgf1UKuJX2oBEEQecudCRI90W0rzZjaCCK8CrBNnwNfR9E1s6', '346347567856', 'yuy[,hgjlffff', NULL, 'user', 'unverified', NULL, '2022-04-15 00:09:04', '2022-04-15 00:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `balance`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 800, '77585d7a91fe00f62d774360dff316a2', '2022-04-07 07:39:42', '2022-04-07 07:39:42'),
(2, 2, 1800, '2f12d88b5dd65522d10f5771710c26f1', '2022-04-07 07:39:45', '2022-04-07 07:39:45'),
(3, 3, 100, 'b3b7d7c25170c5d38e81f11b00fb57de', '2022-04-08 06:05:03', '2022-04-08 06:05:03'),
(4, 4, 10, '051fe447bef932b7c3d084260df9086c', '2022-04-08 06:05:32', '2022-04-08 06:05:32'),
(5, 5, 9000, '4923f7baded65cbdeac5de6036187fc9', '2022-04-15 00:00:39', '2022-04-15 00:00:39'),
(6, 6, 0, 'c958111853dcb43558f219bf364244a6', '2022-04-15 00:02:30', '2022-04-15 00:02:30'),
(7, 7, 0, '1f0619d6d5f1257db75ee1d14ff5d0b5', '2022-04-15 00:03:31', '2022-04-15 00:03:31'),
(8, 8, 0, 'c466646100fcaeef93190bd128f6c41f', '2022-04-15 00:05:29', '2022-04-15 00:05:29'),
(9, 9, 0, '513b7eb9a2685cee97c074098542d1c9', '2022-04-15 00:06:09', '2022-04-15 00:06:09'),
(10, 10, 0, '9363cd28550e2a59e856c85a56cda04e', '2022-04-15 00:07:42', '2022-04-15 00:07:42'),
(11, 11, 0, '6a87629102c739238c00b1e9c2af77ac', '2022-04-15 00:09:04', '2022-04-15 00:09:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rankings`
--
ALTER TABLE `rankings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stacks`
--
ALTER TABLE `stacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_wallet_from_id_foreign` (`wallet_from_id`),
  ADD KEY `transactions_wallet_to_id_foreign` (`wallet_to_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stack_id_foreign` (`stack_id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallets_address_unique` (`address`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `rankings`
--
ALTER TABLE `rankings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stacks`
--
ALTER TABLE `stacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_wallet_from_id_foreign` FOREIGN KEY (`wallet_from_id`) REFERENCES `wallets` (`id`),
  ADD CONSTRAINT `transactions_wallet_to_id_foreign` FOREIGN KEY (`wallet_to_id`) REFERENCES `wallets` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_stack_id_foreign` FOREIGN KEY (`stack_id`) REFERENCES `stacks` (`id`);

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

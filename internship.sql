-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: May 27, 2020 at 04:58 PM
-- Server version: 5.7.28
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internship`
--

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
(10, '2013_05_12_082355_create_roles_table', 1),
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(15, '2016_06_01_000004_create_oauth_clients_table', 1),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2020_05_12_043848_create_overtimes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('09dbfb2cba79626412486207a96a086c949535b9c3159dd93449fd594fc25f4714bb228228a4dc92', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-27 13:35:31', '2020-05-27 13:35:31', '2021-05-27 13:35:31'),
('14e20e32d48670064be0a7e2323c54346b2a2ce43bca55038d271ff594ba546af083112594585ac9', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-27 09:45:06', '2020-05-27 09:45:06', '2021-05-27 09:45:06'),
('227fe2c954ad4484686223c6735007d65bb194a4a46d5b1cb96f206ae8f54f0e8272a64f81b91ef2', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-27 10:26:50', '2020-05-27 10:26:50', '2021-05-27 10:26:50'),
('24e0648d89e0bf6d0378bb6f056dc9d93f6fe8d195ca72000d492b22c607dafa017b8d235de89d96', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-27 11:16:16', '2020-05-27 11:16:16', '2021-05-27 11:16:16'),
('2596661db2ed3f1dd3e999b65dbe79ed86f4cf269aa70a319893ee3e3ffe262362e7822dc1be102f', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\"]', 0, '2020-05-26 10:19:13', '2020-05-26 10:19:13', '2021-05-26 10:19:13'),
('27df69b244388bc100bb47e8c2077d14ed3912772b82e6954c505fe5c934e610c0814fbbdac6d611', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-27 06:45:38', '2020-05-27 06:45:38', '2021-05-27 06:45:38'),
('322c17c2281a06ef3266b9d4f6a8c5065eb3c6d2ac98900e1024840ae27097747d9658db1c93c460', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-27 16:16:40', '2020-05-27 16:16:40', '2021-05-27 16:16:40'),
('3fdacbd7ba8f7f47e0cbbe6254d1977cffb1d2a992a2263cdd294d78f08d77c59ac3cb5da35518ec', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\"]', 0, '2020-05-26 10:50:05', '2020-05-26 10:50:05', '2021-05-26 10:50:05'),
('49989f047c460ef0cf2df7ca316e8ff3c8b155595c70c2999fe3c54639b7c50eb8012faea59ea134', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-26 10:52:14', '2020-05-26 10:52:14', '2021-05-26 10:52:14'),
('4eb79ba7ce6d987c98921953493fde50d687bf9386d4dc85a8b9beed0d0aaa5ad1c2d53e8bd54948', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-27 15:35:11', '2020-05-27 15:35:11', '2021-05-27 15:35:11'),
('604b1eccfd873c422657502bb2c8fe8bec41a49973662141502606d364b3f29fe867eb7e776f10d9', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-26 10:01:54', '2020-05-26 10:01:54', '2021-05-26 10:01:54'),
('61df636ce60c1bc6e2955d92bc67ce903bec58f9d9a62a8f41e84f8bf847ec281300083de4a84510', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-27 15:09:52', '2020-05-27 15:09:52', '2021-05-27 15:09:52'),
('63fdcda9060b12997c544d99596b89ba03da2963f85eac7971a85ff1e8ca2689db0b611f9a90021e', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\"]', 0, '2020-05-26 10:50:22', '2020-05-26 10:50:22', '2021-05-26 10:50:22'),
('733da56680d5f655cd69dac562240bfa8ab3961b46382a77e4918b357d699f535440d9c2f4204a56', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\"]', 0, '2020-05-26 10:50:39', '2020-05-26 10:50:39', '2021-05-26 10:50:39'),
('8ad5c3f71a24c015039bf98ebd8760138bee96b27a429fdf189c601b145164b41135cf2a60d71d4f', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\"]', 0, '2020-05-26 10:50:42', '2020-05-26 10:50:42', '2021-05-26 10:50:42'),
('9154099d5e0d901d970ce51c7cf38203171423362a41d2f907e1848baffcfd7d23a0fcb43bc01152', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-27 10:48:38', '2020-05-27 10:48:38', '2021-05-27 10:48:38'),
('9322a79ff53e8c4ff05a748b68316b67d424fa85982c23abd2a52424f868737feb07051d452e07eb', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-27 09:43:36', '2020-05-27 09:43:36', '2021-05-27 09:43:36'),
('989f1340e12fbbf6587370d811052f306396346a538fe7454a5ad330aeb85c0db9c6946ba30da2d2', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\"]', 0, '2020-05-26 10:50:43', '2020-05-26 10:50:43', '2021-05-26 10:50:43'),
('a7ea60f316510576c748ba1c2609ca6bf7f32f5ccc85572e55ecf36d04d2649e69314f34a289a9c6', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\"]', 0, '2020-05-26 10:51:03', '2020-05-26 10:51:03', '2021-05-26 10:51:03'),
('afefd7fb63827b68a942f094945e7335818e0ff5e7ba7967cdd2f7c8e6f984071eb490effaf3ed61', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\"]', 0, '2020-05-26 10:50:23', '2020-05-26 10:50:23', '2021-05-26 10:50:23'),
('b57e23f6214e0cc00ff9593cf44599d096743ed72f643ce22630b0800fd6e4a386cb501e96706a7b', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\"]', 0, '2020-05-26 10:50:43', '2020-05-26 10:50:43', '2021-05-26 10:50:43'),
('b7396daf78f4520f5d49c657af7f78fe94294bf8a39dc851a53c112b50303121000fb5f021c7a12e', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-27 06:34:10', '2020-05-27 06:34:10', '2021-05-27 06:34:10'),
('be298d4b70f1b967820504b094f66812b78f0ba0271a69931847c81f7cee340ed1c3f33888b2f2e8', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\"]', 0, '2020-05-26 10:50:23', '2020-05-26 10:50:23', '2021-05-26 10:50:23'),
('d03e8e911323a13ea365edd200aa605bb23c0aea21bb44a5ef233047f81ba514ac03d64206e59068', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-26 10:05:29', '2020-05-26 10:05:29', '2021-05-26 10:05:29'),
('d2a6f1ec6595013ebfe2f5aae645ef207756e1ab38b79c7b513a19a5079db478055c8f91943a4a57', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\"]', 0, '2020-05-26 10:50:38', '2020-05-26 10:50:38', '2021-05-26 10:50:38'),
('dd9966d74d304ac371d6c5d9e63361be73500d23340be6a5cc8e013dba22d3faf386667da02a8fa8', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\"]', 0, '2020-05-26 10:50:19', '2020-05-26 10:50:19', '2021-05-26 10:50:19'),
('e14b0b56aa4e5c4f2808ea9f45139c9d653a5844cdc9b117b7cf10e78c7a8c21822b39b8470908fb', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\"]', 0, '2020-05-26 10:50:23', '2020-05-26 10:50:23', '2021-05-26 10:50:23'),
('f6a2170b80f8cef4845c178e83a52e0bb23687d36ac2270b3dd935b6a93d852a428a7157a914e144', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 1, 'User Access Token', '[\"create\",\"approve\",\"admin\"]', 0, '2020-05-27 16:27:35', '2020-05-27 16:27:35', '2021-05-27 16:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '4N22lIEWvNOrU3MDm1JgcMzU10IzGb2F1JE0E0GZ', NULL, 'http://localhost', 1, 0, 0, '2020-05-26 10:01:50', '2020-05-26 10:01:50'),
(2, NULL, 'Laravel Password Grant Client', 'TMSZ0Gbe3GZwkH6n6yItzRyZQ4rD8C2PPkD7RJ9L', 'users', 'http://localhost', 0, 1, 0, '2020-05-26 10:01:50', '2020-05-26 10:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-05-26 10:01:50', '2020-05-26 10:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `overtimes`
--

CREATE TABLE `overtimes` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  `approver_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 - pending, 1 - accepted, 2 - denied',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `overtimes`
--

INSERT INTO `overtimes` (`id`, `creator_id`, `member_ids`, `from`, `to`, `approver_id`, `reason`, `status`, `created_at`, `updated_at`) VALUES
('01d01550-a005-11ea-bc1d-a5f608d63d2b', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', '[\"ffb4e010-959b-11ea-9d7a-5f18ea966b45\",\"ffb4dfc0-959b-11ea-873f-17410ec2c621\",\"ffb4e060-959b-11ea-988e-794550fbf121\"]', '2020-05-15 17:31:53', '2020-05-13 21:31:53', 'ffb4dfc0-959b-11ea-873f-17410ec2c621', 'OT', 2, '2020-05-27 10:29:55', '2020-05-27 10:29:55'),
('38153b70-a005-11ea-9b5a-3173fca36643', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', '{\"0\":\"ffb4e010-959b-11ea-9d7a-5f18ea966b45\",\"1\":\"ffb4dfc0-959b-11ea-873f-17410ec2c621\",\"2\":\"ffb4e060-959b-11ea-988e-794550fbf121\",\"4\":\"ffb4df00-959b-11ea-b3c0-1d3e15540186\"}', '2020-05-19 17:31:53', '2020-05-19 19:00:53', 'ffb4df00-959b-11ea-b3c0-1d3e15540186', 'OT on Thusday', 0, '2020-05-27 10:31:26', '2020-05-27 10:31:26'),
('4ebd82e0-a005-11ea-be99-49fb661e9912', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', '{\"1\":\"ffb4dfc0-959b-11ea-873f-17410ec2c621\",\"2\":\"ffb4e060-959b-11ea-988e-794550fbf121\",\"4\":\"ffb4df00-959b-11ea-b3c0-1d3e15540186\"}', '2020-05-21 17:31:53', '2020-05-21 19:00:53', 'ffb4df00-959b-11ea-b3c0-1d3e15540186', 'OT on Saturday', 0, '2020-05-27 10:32:04', '2020-05-27 10:32:04'),
('6eb9b080-a005-11ea-92f0-cb12d6c06207', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', '{\"0\":\"ffb4e010-959b-11ea-9d7a-5f18ea966b45\",\"1\":\"ffb4dfc0-959b-11ea-873f-17410ec2c621\",\"4\":\"ffb4df00-959b-11ea-b3c0-1d3e15540186\"}', '2020-05-10 18:31:53', '2020-05-10 19:00:53', 'ffb4df00-959b-11ea-b3c0-1d3e15540186', 'OverTImes', 1, '2020-05-27 10:32:58', '2020-05-27 10:32:58'),
('8015aca0-a005-11ea-acab-554741c63e97', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', '{\"0\":\"ffb4e010-959b-11ea-9d7a-5f18ea966b45\",\"1\":\"ffb4dfc0-959b-11ea-873f-17410ec2c621\",\"4\":\"ffb4df00-959b-11ea-b3c0-1d3e15540186\"}', '2020-05-09 18:31:53', '2020-05-09 20:00:53', 'ffb4df00-959b-11ea-b3c0-1d3e15540186', 'OverTImes', 1, '2020-05-27 10:33:27', '2020-05-27 10:33:27'),
('883b3ec0-a005-11ea-8358-19b14bf02dfb', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', '{\"0\":\"ffb4e010-959b-11ea-9d7a-5f18ea966b45\",\"1\":\"ffb4dfc0-959b-11ea-873f-17410ec2c621\",\"2\":\"ffb4e060-959b-11ea-988e-794550fbf121\",\"4\":\"ffb4df00-959b-11ea-b3c0-1d3e15540186\"}', '2020-05-01 18:31:53', '2020-05-01 20:00:53', 'ffb4df00-959b-11ea-b3c0-1d3e15540186', 'OverTImes', 2, '2020-05-27 10:33:40', '2020-05-27 10:33:40'),
('96f26070-a005-11ea-a9f5-ff1bccff0c4a', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', '{\"0\":\"ffb4e010-959b-11ea-9d7a-5f18ea966b45\",\"1\":\"ffb4dfc0-959b-11ea-873f-17410ec2c621\",\"2\":\"ffb4e060-959b-11ea-988e-794550fbf121\",\"4\":\"ffb4df00-959b-11ea-b3c0-1d3e15540186\"}', '2020-05-04 18:31:53', '2020-05-04 23:00:53', 'ffb4df00-959b-11ea-b3c0-1d3e15540186', 'OverTImes', 0, '2020-05-27 10:34:05', '2020-05-27 10:34:05'),
('b2bbaf20-a004-11ea-9a01-4d4b8632235f', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', '[\"ffb4e010-959b-11ea-9d7a-5f18ea966b45\",\"ffb4dfc0-959b-11ea-873f-17410ec2c621\"]', '2020-05-13 18:31:53', '2020-05-13 20:31:53', 'ffb4dfc0-959b-11ea-873f-17410ec2c621', 'Why not?', 0, '2020-05-27 10:27:42', '2020-05-27 10:27:42'),
('f29b3390-959d-11ea-82d2-95a6c5fa4d4a', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', '[\"ffb4df00-959b-11ea-b3c0-1d3e15540186\",\"ffb4dfc0-959b-11ea-873f-17410ec2c621\",\"ffb4e010-959b-11ea-9d7a-5f18ea966b45\"]', '2020-05-26 17:01:19', '2020-05-26 19:01:19', 'ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 'Because we all like Nghia.', 2, NULL, '2020-05-27 13:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `scopes`) VALUES
(1, 'admin', '[\"create\",\"approve\",\"admin\"]'),
(2, 'approver', '[\"create\",\"approve\"]'),
(3, 'user', '[\"create\"]');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT '3',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `password`, `active`, `created_at`, `updated_at`) VALUES
('ffb4bc90-959b-11ea-8bf4-af7bd9a4141e', 'Hoang Pham', 'intern@dienhoa1080.com', 1, '$2y$10$CrEDtG3EXvr2GPzrcSG1MOrwf5OXx3CkgsCt74omjiRAW0UhUzo5e', 1, NULL, NULL),
('ffb4df00-959b-11ea-b3c0-1d3e15540186', 'Tran Nhat Thien', 'thien@gmail.com', 2, NULL, 1, NULL, NULL),
('ffb4dfc0-959b-11ea-873f-17410ec2c621', 'Ákos Szabó-Gali', 'szabogaliakos@gmail.com', 2, NULL, 1, NULL, NULL),
('ffb4e010-959b-11ea-9d7a-5f18ea966b45', 'Aoi Kurokawa', 'aoi@gmail.com', 3, NULL, 1, NULL, NULL),
('ffb4e060-959b-11ea-988e-794550fbf121', 'Nguyen Thi May', 'may@gmail.com', 3, NULL, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtimes`
--
ALTER TABLE `overtimes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `overtimes_creator_id_foreign` (`creator_id`),
  ADD KEY `overtimes_approver_id_foreign` (`approver_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `overtimes`
--
ALTER TABLE `overtimes`
  ADD CONSTRAINT `overtimes_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `overtimes_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

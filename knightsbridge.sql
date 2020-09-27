-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2020 at 12:57 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knightsbridge`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_below` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `category_name`, `show_below`, `is_active`, `created_at`, `updated_at`) VALUES
('CAT0001', 'Mobiles & Tablets', '0', 1, NULL, NULL),
('CAT0002', 'Laptops', '', 1, NULL, NULL),
('CAT0003', 'Mobiles', 'CAT0001', 1, NULL, NULL),
('CAT0004', 'Tablets', 'CAT0001', 1, NULL, NULL),
('CAT0005', 'Apple iPhone', 'CAT0003', 1, NULL, NULL),
('CAT0006', 'Samsung Smart Phone', 'CAT0003', 1, NULL, NULL),
('CAT0007', 'Samsung Tablets ', 'CAT0004', 1, NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_09_24_152556_create_products_table', 1),
(10, '2020_09_24_173527_create_categories_table', 1),
(11, '2020_09_24_173609_create_products_for_categories_table', 1),
(12, '2020_09_24_173648_create_products_for_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
('0ad42cb05f49da68aaf55a6b88c1b966300de47f07f0f700f10668c9fa8ef2f6364bb8fbceb94158', 'USR0001', 1, 'MyApp', '[]', 0, '2020-09-26 05:18:37', '2020-09-26 05:18:37', '2021-09-26 10:48:37'),
('50c4f63b9a5d8cbce6ec6b05e9203add4c941bb52608506a7c4279a6e4ee1da0829b50fc0c3eca8b', 'USR0001', 1, 'MyApp', '[]', 0, '2020-09-24 22:11:18', '2020-09-24 22:11:18', '2021-09-25 03:41:18'),
('d68187b3941bcbaf3d40376f1ff8f3b8b5c8d349fc8988093298313d0a5740ebc9097bb9fdf00e32', 'USR0001', 1, 'MyApp', '[]', 0, '2020-09-24 22:14:59', '2020-09-24 22:14:59', '2021-09-25 03:44:59'),
('e69b694d0b80ec63380a5757be172f6d6951b1279ca9e050d322dff1d7949953a176908f93a889b8', 'USR0002', 1, 'MyApp', '[]', 0, '2020-09-24 23:42:07', '2020-09-24 23:42:07', '2021-09-25 05:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
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
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'OHt2m0TMp8NzXDuHKrIpu97FgBlObGcNBhlqJtsZ', NULL, 'http://localhost', 1, 0, 0, '2020-09-24 04:09:23', '2020-09-24 04:09:23'),
(2, NULL, 'Laravel Password Grant Client', 'efzsgSj8L7AVjiF32ItKaIDYiErkTZc7s3ct0KtD', 'users', 'http://localhost', 0, 1, 0, '2020-09-24 04:09:23', '2020-09-24 04:09:23');

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
(1, 1, '2020-09-24 04:09:23', '2020-09-24 04:09:23');

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_id` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_id`, `name`, `price`, `image`, `stock`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
('PRO0001', 'iPhone SE 2', '37900.00', 'products/PRO0001.jpg', 4, 'Prominent Apple analyst, Ming Chi Kuo, suggested that the iPhone SE 2 Plus will be released in the first half of 2021. This is far from certain but Kuo has a good track record when it comes to predicting Apple\'s releases and product updates.', 1, '2020-09-24 22:48:27', '2020-09-24 22:48:27'),
('PRO0002', 'Samsung Galaxy M51', '24999.00', 'products/PRO0002.jpg', 8, 'The Galaxy M51 makes the right choices on paper with a big 6.7-inch AMOLED display, Qualcomm’s reasonably capable Snapdragon 730G system-on-chip, a 64MP Sony IMX682 primary camera sensor, and the 7,000mAh battery with 25W fast charging support.', 1, '2020-09-24 22:53:51', '2020-09-24 22:53:51'),
('PRO0003', 'Samsung Galaxy Tab S6 Lite', '73900.00', 'products/PRO0003.jpg', 2, 'Samsung Galaxy Tab S6 Lite isn\'t the perfect mid-range slate, but there\'s still a lot here to like, and if the features on offer here, like the S Pen, good screen and low price, appeal to you, then it\'s certainly worth considering as an alternative to the entry-level iPad.', 1, '2020-09-24 23:54:20', '2020-09-24 23:54:20');

-- --------------------------------------------------------

--
-- Table structure for table `products_for_categories`
--

CREATE TABLE `products_for_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_for_categories`
--

INSERT INTO `products_for_categories` (`id`, `pro_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(1, 'PRO0001', 'CAT0005', NULL, NULL),
(2, 'PRO0002', 'CAT0006', NULL, NULL),
(3, 'PRO0003', 'CAT0007', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_for_users`
--

CREATE TABLE `products_for_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_id` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `seller_stock` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_for_users`
--

INSERT INTO `products_for_users` (`id`, `uid`, `pro_id`, `product_price`, `seller_stock`, `created_at`, `updated_at`) VALUES
(1, 'USR0001', 'PRO0001', '40900.00', 2, NULL, NULL),
(2, 'USR0001', 'PRO0002', '27000.00', 1, NULL, NULL),
(3, 'USR0002', 'PRO0002', '27500.00', 2, NULL, NULL),
(4, 'USR0002', 'PRO0003', '73900.00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('USR0001', 'ABC', 'abc@gmail.com', NULL, '$2y$10$630hyDAZUqHq8k1MJZSM/uCvUPHdZ9x0u1yXsfjErm11Gx6hVbwDu', NULL, '2020-09-24 22:11:18', '2020-09-24 22:11:18'),
('USR0002', 'DEF', 'def@gmail.com', NULL, '$2y$10$07IzAvmyCGTJCoUh4Q.ygOXzj6iEMUQIY4zH3hBdmwtHXcRD65u9G', NULL, '2020-09-24 23:42:04', '2020-09-24 23:42:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `products_for_categories`
--
ALTER TABLE `products_for_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_for_categories_pro_id_foreign` (`pro_id`),
  ADD KEY `products_for_categories_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `products_for_users`
--
ALTER TABLE `products_for_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_for_users_pro_id_foreign` (`pro_id`),
  ADD KEY `products_for_users_uid_foreign` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
-- AUTO_INCREMENT for table `products_for_categories`
--
ALTER TABLE `products_for_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products_for_users`
--
ALTER TABLE `products_for_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products_for_categories`
--
ALTER TABLE `products_for_categories`
  ADD CONSTRAINT `products_for_categories_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`),
  ADD CONSTRAINT `products_for_categories_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`pro_id`);

--
-- Constraints for table `products_for_users`
--
ALTER TABLE `products_for_users`
  ADD CONSTRAINT `products_for_users_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`pro_id`),
  ADD CONSTRAINT `products_for_users_uid_foreign` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

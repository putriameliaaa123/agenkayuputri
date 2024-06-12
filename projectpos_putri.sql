-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2024 at 05:20 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectpos_putri`
--

-- --------------------------------------------------------

--
-- Table structure for table `detiltransaksis`
--

CREATE TABLE `detiltransaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `kayu_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `kayus`
--

CREATE TABLE `kayus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kayus`
--

INSERT INTO `kayus` (`id`, `nama`, `harga`, `deskripsi`, `created_at`, `updated_at`, `stock`) VALUES
(3, 'merbo', 200, 'fsd', '2024-06-05 09:11:26', '2024-06-05 09:11:26', '2'),
(4, 'jati', 500, 'jfj', '2024-06-05 17:59:01', '2024-06-05 17:59:01', '3');

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
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_05_13_032923_create_users_table', 1),
(5, '2024_05_13_033452_create_pembelis_table', 1),
(6, '2024_05_13_054710_create_transaksis_table', 1),
(7, '2024_05_13_055153_create_detiltransaksis_table', 1),
(8, '2024_05_16_034445_create_kayus_table', 1),
(9, '2024_05_16_034812_relasi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelis`
--

CREATE TABLE `pembelis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `hp` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelis`
--

INSERT INTO `pembelis` (`id`, `nama`, `hp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'indah', '085254157029', 'kb', '2024-05-18 12:57:46', '2024-05-18 12:57:46'),
(2, 'amy', '083246589012', 'hb', '2024-06-04 13:55:02', '2024-06-04 13:55:02'),
(3, 'alid', '082365487940', 'tkg', '2024-06-05 17:59:47', '2024-06-05 17:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `pembeli_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `invoice`, `pembeli_id`, `user_id`, `total`, `created_at`, `updated_at`) VALUES
(1, 'INV-1', 1, 2, 0, '2024-06-04 08:15:16', '2024-06-04 08:15:16'),
(2, 'INV-2', 1, 2, 0, '2024-06-04 10:59:08', '2024-06-04 10:59:08'),
(3, 'INV-3', 1, 2, 0, '2024-06-04 11:09:59', '2024-06-04 11:09:59'),
(4, 'INV-4', 2, 2, 0, '2024-06-04 13:55:33', '2024-06-04 13:55:33'),
(5, 'INV-5', 2, 2, 0, '2024-06-04 13:55:50', '2024-06-04 13:55:50'),
(6, 'INV-6', 2, 2, 0, '2024-06-05 08:17:44', '2024-06-05 08:17:44'),
(7, 'INV-7', 2, 2, 0, '2024-06-05 08:20:26', '2024-06-05 08:20:26'),
(8, 'INV-8', 2, 2, 0, '2024-06-05 08:31:41', '2024-06-05 08:31:41'),
(9, 'INV-9', 1, 2, 0, '2024-06-05 09:11:52', '2024-06-05 09:11:52'),
(10, 'INV-10', 2, 2, 0, '2024-06-05 11:13:40', '2024-06-05 11:13:40'),
(11, 'INV-11', 3, 2, 0, '2024-06-05 18:02:05', '2024-06-05 18:02:05'),
(12, 'INV-12', 3, 2, 0, '2024-06-06 10:37:55', '2024-06-06 10:37:55'),
(13, 'INV-13', 3, 2, 0, '2024-06-06 10:42:08', '2024-06-06 10:42:08'),
(14, 'INV-14', 3, 2, 0, '2024-06-06 11:49:54', '2024-06-06 11:49:54'),
(15, 'INV-15', 3, 2, 0, '2024-06-07 09:50:02', '2024-06-07 09:50:02'),
(16, 'INV-16', 1, 2, 0, '2024-06-07 09:59:34', '2024-06-07 09:59:34');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'putri amelia', 'putri979564@gmail.com', NULL, '$2y$12$yBdplyGA5d67u6PWZZ1vj.U1Jm.mZSCEE9eKOgv0sXyZe4HnQU/b2', NULL, '2024-05-18 12:36:29', '2024-05-18 12:36:29'),
(2, 'siapa', 'siapa@gmail.com', NULL, '$2y$12$HhAHrxEzXe2NHhGFYSz8VeCTSq20RDAro3D0TB2aGj6VPqSyp1F2y', NULL, '2024-05-18 12:56:21', '2024-05-18 12:56:21'),
(7, 'amy', 'putri9@gmail.com', NULL, '$2y$12$x.r/EWsg1YV0yLKqZrwgTu5S.6hHWLLGXFPqAfhxtyOre33eWn98K', NULL, '2024-06-04 13:52:22', '2024-06-04 13:52:22'),
(8, 'khalid', 'putri94@gmail.com', NULL, '$2y$12$95OIEvWdArASPDNOHtciBOOX0C/baAda4l1zO7xS06Xm9YyKmF1HK', NULL, '2024-06-05 18:01:16', '2024-06-05 18:01:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detiltransaksis_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `detiltransaksis_kayu_id_foreign` (`kayu_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kayus`
--
ALTER TABLE `kayus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pembelis`
--
ALTER TABLE `pembelis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksis_invoice_unique` (`invoice`),
  ADD KEY `transaksis_pembeli_id_foreign` (`pembeli_id`),
  ADD KEY `transaksis_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kayus`
--
ALTER TABLE `kayus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pembelis`
--
ALTER TABLE `pembelis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  ADD CONSTRAINT `detiltransaksis_kayu_id_foreign` FOREIGN KEY (`kayu_id`) REFERENCES `kayus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detiltransaksis_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_pembeli_id_foreign` FOREIGN KEY (`pembeli_id`) REFERENCES `pembelis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

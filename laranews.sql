-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2021 at 06:07 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laranews`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(4, 'NEWS', 0, '2021-02-10 12:47:43', '2021-02-10 12:09:00'),
(5, 'MOBILE', 1, '2021-02-10 12:47:43', '2021-02-10 12:47:43'),
(6, 'TABLETS', 1, '2021-02-10 12:47:43', '2021-02-10 12:47:43'),
(7, 'GADGETS', 1, '2021-02-10 12:47:43', '2021-02-10 12:47:43'),
(8, 'CAMERA', 1, '2021-02-10 12:47:43', '2021-02-10 12:47:43'),
(9, 'DESIGN', 1, '2021-02-10 12:47:43', '2021-02-10 12:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `post_id`, `status`, `created_at`, `updated_at`) VALUES
(4, 'zozo', 'awesome', 4, 1, '2021-02-10 15:12:59', '2021-02-10 15:12:59'),
(5, 'nur', 'nice', 9, 0, '2021-02-10 22:46:13', '2021-02-10 22:46:13');

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
(3, '2021_02_07_133840_entrust_setup_tables', 2),
(4, '2021_02_09_045049_create_categories_table', 3),
(5, '2021_02_09_072945_create_posts_table', 4),
(6, '2021_02_10_080337_create_comments_table', 5),
(7, '2021_02_10_094357_create_settings_table', 6);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(8, 'permission add', 'permission add', 'permission add', '2021-02-08 08:04:30', '2021-02-08 08:04:30'),
(9, 'permission list', 'permission list', 'permission list', '2021-02-08 08:05:26', '2021-02-08 08:05:26'),
(10, 'permission update', 'permission update', 'permission update', '2021-02-08 08:06:02', '2021-02-08 08:06:02'),
(11, 'permission delete', 'permission delete', 'permission delete', '2021-02-08 08:06:29', '2021-02-08 08:06:29'),
(12, 'role add', 'role add', 'role add', '2021-02-08 08:08:23', '2021-02-08 08:08:23'),
(13, 'role list', 'role list', 'role list', '2021-02-08 14:11:07', '2021-02-08 14:11:07'),
(14, 'role update', 'role update', 'role update', '2021-02-08 14:11:07', '2021-02-08 14:11:07'),
(15, 'role delete', 'role delete', 'role delete', '2021-02-08 14:11:07', '2021-02-08 14:11:07'),
(16, 'category add', 'category add', 'category add', '2021-02-08 14:13:12', '2021-02-08 14:13:12'),
(17, 'category list', 'category list', 'category list', '2021-02-08 14:13:12', '2021-02-08 14:13:12'),
(18, 'category update', 'category update', 'category update', '2021-02-08 14:13:12', '2021-02-08 14:13:12'),
(19, 'category delete', 'category delete', 'category delete', '2021-02-08 14:13:12', '2021-02-08 14:13:12'),
(20, 'author add', 'author add', 'author add', '2021-02-08 14:17:47', '2021-02-08 14:17:47'),
(21, 'author list', 'author list', 'author list', '2021-02-08 14:17:47', '2021-02-08 14:17:47'),
(22, 'author update', 'author update', 'author update', '2021-02-08 14:17:47', '2021-02-08 14:17:47'),
(23, 'author delete', 'author delete', 'author delete', '2021-02-08 14:17:47', '2021-02-08 14:17:47'),
(24, 'post add', 'post add', 'post add', '2021-02-08 14:21:54', '2021-02-08 14:21:54'),
(25, 'post list', 'post list', 'post list', '2021-02-08 14:21:54', '2021-02-08 14:21:54'),
(26, 'post update', 'post update', 'post update', '2021-02-08 14:21:54', '2021-02-08 14:21:54'),
(27, 'post delete', 'post delete', 'post delete', '2021-02-08 14:21:54', '2021-02-08 14:21:54'),
(28, 'comment view', 'comment view', 'comment view', '2021-02-08 14:24:59', '2021-02-08 14:24:59'),
(29, 'comment reply', 'comment reply', 'comment reply', '2021-02-08 14:24:59', '2021-02-08 14:24:59'),
(30, 'comment approval', 'comment approval', 'comment approval', '2021-02-08 14:24:59', '2021-02-08 14:24:59'),
(31, 'system settings', 'system settings', 'system settings', '2021-02-08 14:24:59', '2021-02-08 14:24:59'),
(32, 'all', 'all', 'all', '2021-02-08 14:24:59', '2021-02-08 14:24:59'),
(33, 'Permission', 'Permission', 'Permission', '2021-02-08 11:33:21', '2021-02-08 12:10:46');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(24, 18),
(24, 19),
(25, 18),
(25, 19),
(26, 18),
(26, 19),
(27, 19),
(28, 18),
(28, 19),
(29, 18),
(29, 19),
(30, 19),
(32, 17),
(33, 18),
(33, 19);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL,
  `hot_news` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `short_description`, `description`, `slug`, `category_id`, `created_by`, `main_image`, `thumb_image`, `list_image`, `view_count`, `hot_news`, `status`, `created_at`, `updated_at`) VALUES
(4, 'A good news for gadget users Ds tech comming soon', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users afterCollaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users afterCollaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users afterCollaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after', 'a-good-news-for-gadget-users-ds-tech-comming-soon', 7, 1, 'post_main_4.jpg', 'post_thumb_4.jpg', 'post_list_4.jpg', 12, 1, 1, '2021-02-10 07:51:24', '2021-02-10 07:51:26'),
(5, 'Yasaki camera launches new generic hi-speed', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate.', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate. Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate. Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate.Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate.Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate.', 'yasaki-camera-launches-new-generic-hi-speed', 8, 1, 'post_main_5.jpg', 'post_thumb_5.jpg', 'post_list_5.jpg', 5, 1, 1, '2021-02-10 07:53:03', '2021-02-10 07:53:04'),
(6, 'DSLR is the most old camera at this time', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate.', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate. Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate. Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate.', 'dslr-is-the-most-old-camera-at-this-time', 8, 1, 'post_main_6.jpg', 'post_thumb_6.jpg', 'post_list_6.jpg', 6, 0, 1, '2021-02-10 07:54:15', '2021-02-10 07:54:16'),
(7, 'Sony launce a new Android tablets for new generation', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after.', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after. Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after. Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after.', 'sony-launce-a-new-android-tablets-for-new-generation', 6, 1, 'post_main_7.jpg', 'post_thumb_7.jpg', 'post_list_7.jpg', 8, 0, 1, '2021-02-10 07:56:13', '2021-02-10 07:56:13'),
(8, 'Technology market see the new Android tablets', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after.', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after.Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after.Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after.Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after.', 'technology-market-see-the-new-android-tablets', 6, 1, 'post_main_8.jpg', 'post_thumb_8.jpg', 'post_list_8.jpg', 1, 0, 1, '2021-02-10 07:58:16', '2021-02-10 12:00:29'),
(9, 'Mobile Iphone 6 launches white & Grey colors handset', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after.', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after.Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after.Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after.Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after.', 'mobile-iphone-6-launches-white-grey-colors-handset', 5, 1, 'post_main_9.jpg', 'post_thumb_9.jpg', 'post_list_9.jpg', 3, 0, 1, '2021-02-10 08:00:23', '2021-02-10 22:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(17, 'master admin', 'master admin', 'master admin', '2021-02-08 08:27:05', '2021-02-08 08:27:05'),
(18, 'blogger', 'blogger', 'blogger', '2021-02-08 08:29:46', '2021-02-08 08:29:46'),
(19, 'editor', 'editor', 'editor', '2021-02-08 08:31:20', '2021-02-08 08:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 17),
(1, 19),
(5, 18),
(6, 19);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'system_name', 'Newsportal', '2021-02-10 09:54:07', '2021-02-10 04:34:29'),
(2, 'favicion', 'favicon.png', '2021-02-10 09:53:23', '2021-02-10 04:34:29'),
(3, 'admin_logo', 'front_logo.png', '2021-02-10 09:53:23', '2021-02-10 09:53:23'),
(4, 'front_logo', 'admin_logo.png', '2021-02-10 09:53:23', '2021-02-10 09:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Habiba', 'admin@gmail.com', '$2y$10$4CH73YIPdxhbWNqB5372EeVSVir2AdsxvYV0i4QH73A9KCMgwXPkm', 1, '8ydywRCzThgWYiY1aHvvQBAa3NqoyAFRwmz7wFKPRzlsqPUP4ImOLArqNgvj', '2021-02-07 01:00:49', '2021-02-07 01:00:49'),
(5, 'Habiba', 'habiba@gmail.com', '$2y$10$jaDJnykejMxFan5SGQe.ueQArtXH5uee.F1PJ7XUsF57nkTdQSpCG', 2, 'H5tB8egYHsTZ9jrf3oy4DHdmHcyCgrJtk5YSahVjGBK71fUcMh7KtR0qxxMG', '2021-02-08 08:34:57', '2021-02-08 08:34:57'),
(6, 'Ayan', 'ayan@gmail.com', '$2y$10$IulWFWJQ1Nn3jtCjsyAQQ.8WHPz5.A2PGNz86D1DlyUiRzsk6/FiG', 2, 'gD92gVdB7irfFT6LLWTNAvn6O0bljpFsocjkVLakX62jMJ7G50IUiG4EIvpJ', '2021-02-08 11:38:34', '2021-02-08 11:38:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

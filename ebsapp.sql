-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 01, 2021 at 11:57 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebsapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `eventName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventDate` date NOT NULL,
  `eventVenue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventOwner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `created_at`, `updated_at`, `eventName`, `eventDate`, `eventVenue`, `eventOwner`) VALUES
(1, 1, '2021-04-01 08:31:33', '2021-04-01 08:31:33', 'Online Coding Meetup', '2021-04-30', 'Live on Zoom', 'Douglas'),
(2, 1, '2021-04-01 08:32:11', '2021-04-01 08:32:11', 'Graduation Ceremony', '2021-06-22', 'Graduation Square, MMUST', 'Douglas'),
(3, 2, '2021-04-01 08:33:29', '2021-04-01 08:33:29', 'Coding Challenge', '2021-08-01', 'Codepen Online Editor', 'Code Engineers'),
(4, 2, '2021-04-01 08:34:30', '2021-04-01 08:34:30', 'Programming Task Handling Competition', '2021-06-30', 'Codepen Online Editor', 'Code Engineers'),
(5, 3, '2021-04-01 08:37:56', '2021-04-01 08:37:56', 'County Gov\'t Tendering', '2021-05-01', 'FLC Church Ground', 'Okello'),
(6, 3, '2021-04-01 08:39:03', '2021-04-01 08:39:03', 'Android Dev\'s Meetup', '2021-04-14', 'LBB 011 Computer Lab', 'Okello'),
(7, 4, '2021-04-01 08:42:12', '2021-04-01 08:42:12', 'Free Training for Developers', '2021-06-30', 'FreeCodeCamp Online Meet', 'FreeCodeCamp'),
(8, 4, '2021-04-01 08:43:46', '2021-04-01 08:43:46', 'Online Discussion', '2021-04-02', 'WhatsApp Programmers group', 'FreeCodeCamp'),
(9, 4, '2021-04-01 08:45:00', '2021-04-01 08:45:00', 'Free Courses Examination', '2021-04-28', 'FreeCodeCamp Official Site', 'FreeCodeCamp'),
(10, 5, '2021-04-01 08:47:31', '2021-04-01 08:47:31', 'Computing Students Training', '2021-04-15', 'MMUST Computer Labs', 'MMUST SCI'),
(11, 6, '2021-04-01 08:51:36', '2021-04-01 08:51:36', 'Blog Writers Recruitment', '2021-04-10', 'WhatsApp group', 'Mr. Anold'),
(12, 6, '2021-04-01 08:52:15', '2021-04-01 08:52:15', 'Build API Collaboration', '2021-04-22', 'MMUST Computer Labs', 'Mr. Anold');

-- --------------------------------------------------------

--
-- Table structure for table `event_user`
--

DROP TABLE IF EXISTS `event_user`;
CREATE TABLE IF NOT EXISTS `event_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_user`
--

INSERT INTO `event_user` (`id`, `user_id`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 5, 5, NULL, NULL),
(2, 6, 7, NULL, NULL),
(3, 6, 4, NULL, NULL),
(4, 1, 12, NULL, NULL),
(5, 1, 10, NULL, NULL),
(6, 1, 7, NULL, NULL),
(7, 1, 4, NULL, NULL),
(8, 3, 12, NULL, NULL),
(9, 3, 8, NULL, NULL),
(10, 3, 4, NULL, NULL),
(11, 3, 1, NULL, NULL),
(12, 7, 11, NULL, NULL),
(13, 7, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_03_31_103632_create_events_table', 2),
(6, '2021_03_31_144628_create_event_user_pivot_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ocp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `ocp`, `password`, `created_at`, `updated_at`, `remember_token`, `email_verified_at`) VALUES
(1, 'Douglas', 'dk@gmail.com', 'Junior Developer', '$2y$10$ZRTrAoFOLj6krU11lY4t3ebyBpYPH2PO15ko2.O90Ia0T/aYVZr/C', '2021-04-01 08:30:34', '2021-04-01 08:30:34', NULL, NULL),
(2, 'Code Engineers', 'codeengineers@gmail.org', 'Developers Community', '$2y$10$5/gNf1K46g9AF232jWVB/OBK6QlBs29r0sOPi5OslnA6AELYidzxe', '2021-04-01 08:32:51', '2021-04-01 08:32:51', NULL, NULL),
(3, 'Okello', 'okello@gmail.com', 'Android Developer', '$2y$10$R7dI5CefvsQ5SWlpQaFouuIbqLK0eVP/stFsGxItr.rQsinMqojt2', '2021-04-01 08:35:42', '2021-04-01 08:35:42', NULL, NULL),
(4, 'FreeCodeCamp', 'freecodecamp@gmail.org', 'Developers Community', '$2y$10$Jn0THtQQ4m1k/iGdk4cUr.d72sxAVDJJKDb5XTOODdYSAy7HPeFpK', '2021-04-01 08:40:12', '2021-04-01 08:40:12', NULL, NULL),
(5, 'MMUST SCI', 'mmust@ac.ke', 'University/College', '$2y$10$YOVFwZG19/gwybQ6leg3feG/G1HiAXthxOucamvzIcpL9GPPt8Dru', '2021-04-01 08:46:31', '2021-04-01 08:46:31', NULL, NULL),
(6, 'Mr. Anold', 'anold@gmail.com', 'Web-Development  Instructor', '$2y$10$D9sxm65mMM86nCcFQs5lMeld9yr91VtTjHbOC.Mj.vTneFvTdZXea', '2021-04-01 08:50:54', '2021-04-01 08:50:54', NULL, NULL),
(7, 'testuser', 'testuser@gmail.com', 'STUDENT', '$2y$10$wNlmD1A1LkBwp5cm1jOXCOxhX.sBF4Q8D0Zz1HLH1QOxg9KycuaeS', '2021-04-01 08:55:59', '2021-04-01 08:55:59', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

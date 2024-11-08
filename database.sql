-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 08, 2024 at 07:19 PM
-- Server version: 10.6.20-MariaDB
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ghadiria_sub`
--

-- --------------------------------------------------------

--
-- Table structure for table `audience_types`
--

CREATE TABLE `audience_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `base_cities`
--

CREATE TABLE `base_cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_fa` varchar(50) DEFAULT NULL COMMENT 'نام',
  `name_en` varchar(50) DEFAULT NULL COMMENT 'نام',
  `name_ar` varchar(50) DEFAULT NULL COMMENT 'نام',
  `province_id` int(11) DEFAULT NULL COMMENT 'شناسه استان',
  `icon` varchar(50) DEFAULT NULL COMMENT 'آیکون',
  `description_fa` text DEFAULT NULL COMMENT 'توضیحات',
  `description_en` text DEFAULT NULL COMMENT 'توضیحات',
  `description_ar` text DEFAULT NULL COMMENT 'توضیحات',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `base_cities`
--

INSERT INTO `base_cities` (`id`, `name_fa`, `name_en`, `name_ar`, `province_id`, `icon`, `description_fa`, `description_en`, `description_ar`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'شهرستان قم', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, 'شهرستان تهران', NULL, NULL, 2, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(3, 'شهر ری', NULL, NULL, 2, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_genders`
--

CREATE TABLE `base_genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_fa` varchar(100) DEFAULT NULL,
  `title_en` varchar(100) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `base_genders`
--

INSERT INTO `base_genders` (`id`, `title_fa`, `title_en`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'آقا', 'male', 1, '2024-07-06 16:52:35', '2024-07-06 16:52:35', NULL),
(2, 'خانم', 'femail', 1, '2024-07-06 16:52:35', '2024-07-06 16:52:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_languages`
--

CREATE TABLE `base_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(10) DEFAULT NULL COMMENT 'عنوان',
  `symbol` varchar(5) DEFAULT NULL COMMENT 'عنوان اختصاری',
  `dir` varchar(3) NOT NULL DEFAULT 'rtl' COMMENT 'چینش',
  `icon` varchar(50) DEFAULT NULL COMMENT 'آیکون',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `base_languages`
--

INSERT INTO `base_languages` (`id`, `title`, `symbol`, `dir`, `icon`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'فارسی', 'fa', 'rtl', 'fa.png', 1, NULL, '2024-07-06 16:52:35', '2024-07-06 16:52:35'),
(2, 'English', 'en', 'ltr', 'en.png', 0, NULL, '2024-07-06 16:52:35', '2024-07-06 16:52:35'),
(3, 'عربی', 'ar', 'rtl', 'ar.png', 0, NULL, '2024-07-06 16:52:35', '2024-07-06 16:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `base_provinces`
--

CREATE TABLE `base_provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_fa` varchar(50) DEFAULT NULL COMMENT 'نام',
  `name_en` varchar(50) DEFAULT NULL COMMENT 'نام',
  `name_ar` varchar(50) DEFAULT NULL COMMENT 'نام',
  `country_id` int(11) DEFAULT NULL COMMENT 'شناسه کشور',
  `icon` varchar(50) DEFAULT NULL COMMENT 'آیکون',
  `description_fa` text DEFAULT NULL COMMENT 'توضیحات',
  `description_en` text DEFAULT NULL COMMENT 'توضیحات',
  `description_ar` text DEFAULT NULL COMMENT 'توضیحات',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `base_provinces`
--

INSERT INTO `base_provinces` (`id`, `name_fa`, `name_en`, `name_ar`, `country_id`, `icon`, `description_fa`, `description_en`, `description_ar`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'قم', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, 'تهران', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_statuses`
--

CREATE TABLE `base_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_fa` varchar(200) DEFAULT NULL COMMENT 'عنوان به زبان فارسی',
  `title_en` varchar(200) DEFAULT NULL COMMENT 'عنوان به زبان عربی',
  `group_id` int(11) DEFAULT NULL COMMENT 'شناسه گروه وضعیت',
  `code` varchar(3) DEFAULT NULL COMMENT 'کد وضعیت',
  `color` varchar(20) DEFAULT NULL COMMENT 'رنگ',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `base_statuses`
--

INSERT INTO `base_statuses` (`id`, `title_fa`, `title_en`, `group_id`, `code`, `color`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'وضعیت فعالیت', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, 'فعال', NULL, 1, '1', NULL, 1, NULL, NULL, NULL),
(3, 'نیمه فعال', NULL, 1, '2', NULL, 1, NULL, NULL, NULL),
(4, 'غیرفعال', NULL, 1, '0', NULL, 1, NULL, NULL, NULL),
(5, 'تعهد ستاد', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(6, 'دارد', NULL, 5, '1', NULL, 1, NULL, NULL, NULL),
(7, 'ندارد', NULL, 5, '0', NULL, 1, NULL, NULL, NULL),
(8, 'وضعیت گزارش دهی', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(9, 'باز', NULL, 8, '1', NULL, 1, NULL, NULL, NULL),
(10, 'بسته', NULL, 8, '0', NULL, 1, NULL, NULL, NULL),
(11, 'وضعیت ثبت نام', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(12, 'باز', NULL, 11, '1', NULL, 1, NULL, NULL, NULL),
(13, 'بسته', NULL, 11, '0', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_villages`
--

CREATE TABLE `base_villages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_fa` varchar(50) DEFAULT NULL COMMENT 'نام',
  `name_en` varchar(50) DEFAULT NULL COMMENT 'نام',
  `name_ar` varchar(50) DEFAULT NULL COMMENT 'نام',
  `city_id` int(11) DEFAULT NULL COMMENT 'شناسه کشور',
  `icon` varchar(50) DEFAULT NULL COMMENT 'آیکون',
  `description_fa` text DEFAULT NULL COMMENT 'توضیحات',
  `description_en` text DEFAULT NULL COMMENT 'توضیحات',
  `description_ar` text DEFAULT NULL COMMENT 'توضیحات',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cultural_users`
--

CREATE TABLE `cultural_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promoter_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `family` varchar(255) DEFAULT NULL,
  `job_position` varchar(255) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cultural_users`
--

INSERT INTO `cultural_users` (`id`, `promoter_id`, `name`, `family`, `job_position`, `gender_id`, `phone`, `comments`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(12, 4, 'زهرا', 'محمدی', 'دانشجو', 2, '091934524', 'سلام توضیحات', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `title`, `description`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'لیسانس', '', 1, NULL, NULL, NULL),
(2, 'فوق لیسانس', '', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status_id` int(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `title`, `description`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', '', 1, NULL, NULL, NULL),
(2, '2', '', 1, NULL, NULL, NULL),
(3, '3', '', 1, NULL, NULL, NULL),
(4, '4', '', 1, NULL, NULL, NULL),
(5, '5', '', 1, NULL, NULL, NULL);

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
(1, '2024_11_03_220824_create_users_table', 1),
(2, '2024_11_03_220825_create_user_promotions_table', 1),
(3, '2024_11_03_220826_create_promotion_positions_table', 1),
(4, '2024_11_03_220827_create_supports_table', 1),
(5, '2024_11_03_220828_create_cultural_users_table', 1),
(6, '2024_11_03_220829_create_promotion_notices_table', 1),
(7, '2024_11_03_220830_create_levels_table', 1),
(8, '2024_11_03_220831_create_genders_table', 1),
(9, '2024_11_03_220832_create_notes_table', 1),
(10, '2024_11_03_220833_create_cities_table', 1),
(11, '2024_11_03_220834_create_provinces_table', 1),
(12, '2024_11_03_220835_create_roles_table', 1),
(13, '2024_11_03_220836_create_blogs_table', 1),
(14, '2024_11_03_220837_create_support_types_table', 1),
(15, '2024_11_03_220838_create_tickets_table', 1),
(16, '2024_11_03_220839_create_ticket_subjects_table', 1),
(17, '2024_11_03_220840_create_rituals_table', 1),
(18, '2024_11_03_220841_create_promotion_reports_table', 1),
(19, '2024_11_03_220842_create_ritual_reports_table', 1),
(20, '2024_11_03_220843_create_tribunes_table', 1),
(21, '2024_11_03_220844_create_courses_table', 1),
(22, '2024_11_03_220845_create_educational_bases_table', 1),
(23, '2024_11_03_220846_create_audience_types_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `commitments` text DEFAULT NULL,
  `register_status` tinyint(1) DEFAULT 1,
  `report_status` tinyint(1) DEFAULT 1,
  `has_course` tinyint(1) DEFAULT 0,
  `has_tribune` tinyint(1) DEFAULT 0,
  `status_id` int(1) DEFAULT 1,
  `creator_id` int(11) DEFAULT NULL,
  `editor_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `year`, `photo`, `comments`, `commitments`, `register_status`, `report_status`, `has_course`, `has_tribune`, `status_id`, `creator_id`, `editor_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'efwe', 45, NULL, 'erer', 'werw', 1, 1, 0, 0, 1, NULL, NULL, '2024-11-05 18:01:53', '2024-11-05 17:21:35', '2024-11-05 18:01:53'),
(2, 'efwe', 45, '', 'erer', 'werw', 1, 1, 0, 0, 1, 1, NULL, NULL, '2024-11-05 17:22:20', '2024-11-05 17:22:20'),
(3, 'جدید ت', 1345, 'image25041730836833.gif', 'promotion promotion promotion', NULL, 1, 1, 0, 0, 1, 1, NULL, '2024-11-05 17:31:07', '2024-11-05 17:30:48', '2024-11-05 17:31:07'),
(4, 'سلام', 1234, 'image23701730838448.jpg', 'CheckBoxGroup', 'ddfgfg', 1, 1, 1, 1, 1, 1, 1, NULL, '2024-11-05 17:57:32', '2024-11-05 18:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_positions`
--

CREATE TABLE `promotion_positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_reports`
--

CREATE TABLE `promotion_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promotion_id` int(11) NOT NULL,
  `report` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rituals`
--

CREATE TABLE `rituals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rituals`
--

INSERT INTO `rituals` (`id`, `title`, `description`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'موکب خیابانی', NULL, 1, NULL, NULL, NULL),
(2, 'موکب خانگی', NULL, 1, NULL, NULL, NULL),
(3, 'کاروان شادی', NULL, 1, NULL, NULL, NULL),
(4, 'اطعام', NULL, 1, NULL, NULL, NULL),
(5, 'دسته عزاداری', NULL, 1, NULL, NULL, NULL),
(6, 'تزیین خیابان و محله', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ritual_reports`
--

CREATE TABLE `ritual_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ritual_id` int(11) NOT NULL,
  `promotion_report_id` int(11) NOT NULL,
  `report` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pack_items` varchar(255) DEFAULT NULL COMMENT 'اقلام بسته / اگر بسته باشد',
  `amount` varchar(255) DEFAULT NULL COMMENT 'مبلغ / اگر مالی باشد',
  `type_id` int(11) DEFAULT NULL COMMENT 'نوع حمایت',
  `promotion_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `editor_id` int(11) DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `pack_items`, `amount`, `type_id`, `promotion_id`, `description`, `creator_id`, `editor_id`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, '12333', 2, 4, 'این بسته رسید', NULL, NULL, 1, NULL, '2024-11-08 12:51:15', '2024-11-08 12:51:15'),
(2, 'شامل کتاب و خرید', NULL, 1, 2, 'شامل کتاب و خرید', NULL, NULL, 1, NULL, '2024-11-08 12:52:10', '2024-11-08 12:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `support_types`
--

CREATE TABLE `support_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `status_id` int(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_types`
--

INSERT INTO `support_types` (`id`, `title`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'بسته فرهنگی', 1, NULL, NULL, NULL),
(2, 'حمایت مالی', 1, NULL, NULL, NULL),
(3, 'سایر', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `support_users`
--

CREATE TABLE `support_users` (
  `id` int(11) NOT NULL,
  `promoter_id` int(11) DEFAULT NULL,
  `support_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `support_users`
--

INSERT INTO `support_users` (`id`, `promoter_id`, `support_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 15, 4, NULL, NULL, NULL),
(4, 1, 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_subjects`
--

CREATE TABLE `ticket_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tribunes`
--

CREATE TABLE `tribunes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `is_not_citizen` int(1) DEFAULT 0,
  `codemeli` varchar(255) DEFAULT NULL,
  `khadamat_code` varchar(255) DEFAULT NULL,
  `tablighat_office_code` varchar(255) DEFAULT NULL,
  `tablighat_organization_code` varchar(255) DEFAULT NULL,
  `ovghaf_code` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL COMMENT 'شهرستان',
  `city` varchar(255) DEFAULT NULL COMMENT 'شهر',
  `village` varchar(255) DEFAULT NULL COMMENT 'روستا',
  `address` text DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1,
  `education_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `editor_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `mobile`, `password`, `firstname`, `lastname`, `role_id`, `gender_id`, `is_not_citizen`, `codemeli`, `khadamat_code`, `tablighat_office_code`, `tablighat_organization_code`, `ovghaf_code`, `bank_account_number`, `city_id`, `city`, `village`, `address`, `postal_code`, `photo`, `status_id`, `education_id`, `level_id`, `last_login`, `creator_id`, `editor_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '09191964745', '$2y$12$onogYslcq05.1lR6PICdH.0V526DqEd11807W0KzgMZBSDPVhqD.a', 'مهدی', 'وثوقی', 1, 1, 0, '09191964745', '', '', '', '', '', 0, '', '', '', '', '', 1, NULL, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, '2024-11-04 12:42:08'),
(2, NULL, NULL, NULL, NULL, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-11-05 16:04:43', '2024-11-05 14:44:35', '2024-11-05 16:04:43'),
(3, NULL, NULL, 'sdfdfg', 'dfgdfg', 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, 1, 1, NULL, 1, 1, '2024-11-05 16:04:38', '2024-11-05 14:45:47', '2024-11-05 16:04:38'),
(4, '09191519138', NULL, 'رویا', 'روشن', 2, 2, 1, NULL, '435354', '345345', '345345', '453535', '1234', 2, 'my city', 'روستا', 'قفثقفثقفERtertert', 'ثقفثقف', 'image41221730829326.png', 1, 1, 1, NULL, 1, 1, NULL, '2024-11-05 15:25:35', '2024-11-08 11:26:49'),
(5, '09192510347', NULL, 'dgdfg', 'dfgdg', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image45271730833021.jpg', 1, NULL, NULL, NULL, 1, NULL, '2024-11-05 16:27:24', '2024-11-05 16:27:11', '2024-11-05 16:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_promotions`
--

CREATE TABLE `user_promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `village` varchar(255) NOT NULL,
  `place_name` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `description`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'مدیریت', '', 1, NULL, NULL, NULL),
(2, 'مبلغ', '', 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audience_types`
--
ALTER TABLE `audience_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_cities`
--
ALTER TABLE `base_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_genders`
--
ALTER TABLE `base_genders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `base_languages`
--
ALTER TABLE `base_languages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `base_provinces`
--
ALTER TABLE `base_provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_statuses`
--
ALTER TABLE `base_statuses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `base_villages`
--
ALTER TABLE `base_villages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`) USING BTREE;

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`) USING BTREE;

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cultural_users`
--
ALTER TABLE `cultural_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_positions`
--
ALTER TABLE `promotion_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_reports`
--
ALTER TABLE `promotion_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rituals`
--
ALTER TABLE `rituals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ritual_reports`
--
ALTER TABLE `ritual_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_types`
--
ALTER TABLE `support_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_users`
--
ALTER TABLE `support_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tribunes`
--
ALTER TABLE `tribunes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_promotions`
--
ALTER TABLE `user_promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audience_types`
--
ALTER TABLE `audience_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_cities`
--
ALTER TABLE `base_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_genders`
--
ALTER TABLE `base_genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `base_languages`
--
ALTER TABLE `base_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_provinces`
--
ALTER TABLE `base_provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `base_statuses`
--
ALTER TABLE `base_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `base_villages`
--
ALTER TABLE `base_villages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cultural_users`
--
ALTER TABLE `cultural_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotion_positions`
--
ALTER TABLE `promotion_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotion_reports`
--
ALTER TABLE `promotion_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rituals`
--
ALTER TABLE `rituals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ritual_reports`
--
ALTER TABLE `ritual_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `support_types`
--
ALTER TABLE `support_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_users`
--
ALTER TABLE `support_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tribunes`
--
ALTER TABLE `tribunes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_promotions`
--
ALTER TABLE `user_promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2024 at 11:23 PM
-- Server version: 10.6.20-MariaDB
-- PHP Version: 8.3.14

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
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `audience_types`
--

INSERT INTO `audience_types` (`id`, `title`, `description`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'نوجوانان', '', 1, NULL, NULL, NULL),
(2, 'جوانان', '', 1, NULL, NULL, NULL),
(3, 'خانم ها', '', 1, NULL, NULL, NULL),
(4, 'آقایان', '', 1, NULL, NULL, NULL);

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
(1, 'تبریز', 'Tabriz', 'تبریز', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(2, 'ارومیه', 'Urmia', 'أورمیة', 2, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(3, 'اردبیل', 'Ardabil', 'أردبیل', 3, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(4, 'اصفهان', 'Isfahan', 'أصفهان', 4, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(5, 'کرج', 'Karaj', 'کرج', 5, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(6, 'ایلام', 'Ilam', 'إیلام', 6, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(7, 'بوشهر', 'Bushehr', 'بوشهر', 7, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(8, 'تهران', 'Tehran', 'طهران', 8, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(9, 'شهرکرد', 'Shahrekord', 'شهرکرد', 9, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(10, 'بیرجند', 'Birjand', 'بیرجند', 10, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(11, 'مشهد', 'Mashhad', 'مشهد', 11, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(12, 'بجنورد', 'Bojnord', 'بجنورد', 12, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(13, 'اهواز', 'Ahvaz', 'الأهواز', 13, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(14, 'زنجان', 'Zanjan', 'زنجان', 14, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(15, 'سمنان', 'Semnan', 'سمنان', 15, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(16, 'زاهدان', 'Zahedan', 'زاهدان', 16, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(17, 'شیراز', 'Shiraz', 'شیراز', 17, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(18, 'قزوین', 'Qazvin', 'قزوین', 18, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(19, 'قم', 'Qom', 'قم', 19, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(20, 'سنندج', 'Sanandaj', 'سنندج', 20, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(21, 'کرمان', 'Kerman', 'کرمان', 21, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(22, 'کرمانشاه', 'Kermanshah', 'کرمانشاه', 22, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(23, 'یاسوج', 'Yasuj', 'یاسوج', 23, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(24, 'گرگان', 'Gorgan', 'گرگان', 24, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(25, 'رشت', 'Rasht', 'رشت', 25, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(26, 'خرم‌آباد', 'Khorramabad', 'خرم‌آباد', 26, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(27, 'ساری', 'Sari', 'ساری', 27, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(28, 'اراک', 'Arak', 'أراک', 28, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(29, 'بندرعباس', 'Bandar Abbas', 'بندرعباس', 29, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(30, 'همدان', 'Hamadan', 'همدان', 30, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(31, 'یزد', 'Yazd', 'یزد', 31, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:39:12', '2024-11-26 09:39:12'),
(32, 'جعفریه', 'Jafariyeh', 'جعفریه', 19, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:47:16', '2024-11-26 09:47:16'),
(33, 'دستجرد', 'Dastjerd', 'دستجرد', 19, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:47:16', '2024-11-26 09:47:16'),
(34, 'سلفچگان', 'Salafchegan', 'سلفچگان', 19, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:47:16', '2024-11-26 09:47:16'),
(35, 'لواسان', 'Lavasan', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:47:16', '2024-11-26 09:47:16'),
(36, 'قدس', 'Qods', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:47:16', '2024-11-26 09:47:16'),
(37, 'وحیدیه', 'Vahidieh', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:47:16', '2024-11-26 09:47:16');

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
(1, 'آقا', 'male', 1, '2024-07-06 10:22:35', '2024-07-06 10:22:35', NULL),
(2, 'خانم', 'femail', 1, '2024-07-06 10:22:35', '2024-07-06 10:22:35', NULL);

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
(1, 'فارسی', 'fa', 'rtl', 'fa.png', 1, NULL, '2024-07-06 10:22:35', '2024-07-06 10:22:35'),
(2, 'English', 'en', 'ltr', 'en.png', 0, NULL, '2024-07-06 10:22:35', '2024-07-06 10:22:35'),
(3, 'عربی', 'ar', 'rtl', 'ar.png', 0, NULL, '2024-07-06 10:22:35', '2024-07-06 10:22:35');

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
(1, 'آذربایجان شرقی', 'East Azerbaijan', 'آذربیجان الشرقیة', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(2, 'آذربایجان غربی', 'West Azerbaijan', 'آذربیجان الغربیة', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(3, 'اردبیل', 'Ardabil', 'أردبیل', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(4, 'اصفهان', 'Isfahan', 'أصفهان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(5, 'البرز', 'Alborz', 'ألبرز', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(6, 'ایلام', 'Ilam', 'إیلام', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(7, 'بوشهر', 'Bushehr', 'بوشهر', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(8, 'تهران', 'Tehran', 'طهران', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(9, 'چهارمحال و بختیاری', 'Chaharmahal and Bakhtiari', 'چهارمحال وبختیاری', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(10, 'خراسان جنوبی', 'South Khorasan', 'خراسان الجنوبیة', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(11, 'خراسان رضوی', 'Razavi Khorasan', 'خراسان الرضویة', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(12, 'خراسان شمالی', 'North Khorasan', 'خراسان الشمالیة', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(13, 'خوزستان', 'Khuzestan', 'خوزستان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(14, 'زنجان', 'Zanjan', 'زنجان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(15, 'سمنان', 'Semnan', 'سمنان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(16, 'سیستان و بلوچستان', 'Sistan and Baluchestan', 'سیستان وبلوشستان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(17, 'فارس', 'Fars', 'فارس', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(18, 'قزوین', 'Qazvin', 'قزوین', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(19, 'قم', 'Qom', 'قم', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(20, 'کردستان', 'Kurdistan', 'کردستان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(21, 'کرمان', 'Kerman', 'کرمان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(22, 'کرمانشاه', 'Kermanshah', 'کرمانشاه', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(23, 'کهگیلویه و بویراحمد', 'Kohgiluyeh and Boyer-Ahmad', 'کهکیلویه وبویر أحمد', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(24, 'گلستان', 'Golestan', 'گلستان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(25, 'گیلان', 'Gilan', 'گیلان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(26, 'لرستان', 'Lorestan', 'لرستان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(27, 'مازندران', 'Mazandaran', 'مازندران', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(28, 'مرکزی', 'Markazi', 'المركزیة', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(29, 'هرمزگان', 'Hormozgan', 'هرمزجان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(30, 'همدان', 'Hamadan', 'همدان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03'),
(31, 'یزد', 'Yazd', 'یزد', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 09:36:03', '2024-11-26 09:36:03');

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
(1, 'وضعیت فعالیت', NULL, NULL, NULL, '', 1, NULL, NULL, NULL),
(2, 'فعال', NULL, 1, '1', 'theme-10', 1, NULL, NULL, NULL),
(3, 'نیمه فعال', NULL, 1, '2', 'theme-22', 1, NULL, NULL, NULL),
(4, 'غیرفعال', NULL, 1, '0', 'theme-24', 1, NULL, NULL, NULL),
(5, 'تعهد ستاد', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(6, 'دارد', NULL, 5, '1', NULL, 1, NULL, NULL, NULL),
(7, 'ندارد', NULL, 5, '0', NULL, 1, NULL, NULL, NULL),
(8, 'وضعیت گزارش دهی', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(9, 'باز', NULL, 8, '1', 'theme-10', 1, NULL, NULL, NULL),
(10, 'بسته', NULL, 8, '0', 'theme-24', 1, NULL, NULL, NULL),
(11, 'وضعیت ثبت نام', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(12, 'باز', NULL, 11, '1', 'theme-10', 1, NULL, NULL, NULL),
(13, 'بسته', NULL, 11, '0', 'theme-24', 1, NULL, NULL, NULL),
(14, 'وضعیت تایید', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(15, 'ثبت شد', NULL, 14, '2', 'theme-22', 1, NULL, NULL, NULL),
(16, 'تایید', NULL, 14, '1', 'theme-10', 1, NULL, NULL, NULL),
(17, 'عدم تایید', NULL, 14, '0', 'theme-24', 1, NULL, NULL, NULL),
(18, 'حذف', NULL, 14, '-1', 'theme-22', 1, NULL, NULL, NULL),
(19, 'وضعیت پاسخ تیکت', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(20, 'در انتظار پاسخ', NULL, 19, '0', 'theme-23', 1, NULL, NULL, NULL),
(21, 'در حال بررسی', NULL, 19, '1', 'theme-200', 1, NULL, NULL, NULL),
(22, 'پاسخ داده شد', NULL, 19, '2', 'theme-10', 1, NULL, NULL, NULL),
(23, 'بسته شد', NULL, 19, '3', 'theme-24', 1, NULL, NULL, NULL),
(24, 'وضعیت اولویت پاسخ به تیکت', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(25, 'کم', NULL, 24, '1', 'theme-200', 1, NULL, NULL, NULL),
(26, 'متوسط', NULL, 24, '2', 'theme-10', 1, NULL, NULL, NULL),
(27, 'زیاد', NULL, 24, '3', 'theme-24', 1, NULL, NULL, NULL),
(28, 'وضغیت گزارشی که مبلغ ارسال کرده', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(29, 'تایید', NULL, 28, '1', 'theme-10', 1, NULL, NULL, NULL),
(30, 'عدم تایید', NULL, 28, '0', 'theme-24', 1, NULL, NULL, NULL),
(31, 'حذف', NULL, 28, '-1', 'theme-22', 1, NULL, NULL, NULL);

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
  `title` varchar(255) DEFAULT NULL COMMENT 'عنوان',
  `subject_id` int(11) DEFAULT NULL COMMENT 'شناسه موضوع محتوا',
  `creator_id` int(11) DEFAULT NULL COMMENT 'شناسه کاربر ثبت کننده',
  `editor_id` int(11) DEFAULT NULL COMMENT 'شناسه کاربر ویرایش کننده',
  `thumb` varchar(255) DEFAULT NULL COMMENT 'بند انگشتی',
  `img` varchar(255) DEFAULT NULL COMMENT 'چندین عمس',
  `video` varchar(255) DEFAULT NULL COMMENT 'چندین ویدئو',
  `document` varchar(255) DEFAULT NULL COMMENT 'چندین فایل داکیومنت',
  `summary` text DEFAULT NULL COMMENT 'متن خلاصه',
  `text` text DEFAULT NULL COMMENT 'متن توضیحات',
  `count_comment` int(11) NOT NULL DEFAULT 0 COMMENT 'تعداد پیام',
  `count_comment_waiting` int(11) NOT NULL DEFAULT 0 COMMENT 'تعداد پیام نیاز به بررسی',
  `count_comment_confirmed` int(11) NOT NULL DEFAULT 0 COMMENT 'تعداد پیام تأیید شده',
  `count_comment_rejected` int(11) NOT NULL DEFAULT 0 COMMENT 'تعداد پیام رد شده',
  `count_view` int(11) NOT NULL DEFAULT 0 COMMENT 'تعداد بازدید',
  `lang` varchar(2) NOT NULL DEFAULT 'fa' COMMENT 'زبان',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `subject_id`, `creator_id`, `editor_id`, `thumb`, `img`, `video`, `document`, `summary`, `text`, `count_comment`, `count_comment_waiting`, `count_comment_confirmed`, `count_comment_rejected`, `count_view`, `lang`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'مقدمات و سیر غدیر', NULL, 1, NULL, 'image74221732958564.jpg', 'image90461732958815.jpg###image9361732958824.jpg###', 'video91831732958810.mp4###', 'application69991732958890.docx###', NULL, '<p><span style=\"background-color:hsl(120, 75%, 60%);\">پرداختن به مفهوم ولایت، ناب ترین مفهومی است که می تواند ضمن تحکیم مبانی حکومت دینی و </span><a href=\"https://civilica.com/search/paper/k-%D9%81%D9%84%D8%B3%D9%81%D9%87%20%D8%B3%DB%8C%D8%A7%D8%B3%DB%8C%20%D8%A7%D8%B3%D9%84%D8%A7%D9%85/\"><span style=\"background-color:hsl(120, 75%, 60%);\">فلسفه سیاسی اسلام</span></a><span style=\"background-color:hsl(120, 75%, 60%);\"> و یز اثبات بطلان سفسطه جدایی دین از سیاست،</span> چراغی فراروی جامعه اسلامی باشد. <a href=\"https://civilica.com/search/paper/k-%D8%AD%D8%B6%D8%B1%D8%AA%20%D8%B9%D9%84%DB%8C%20(%D8%B9)/\">حضرت علی (ع)</a> همچون ستاره ای درخشان در آسمان بود که نماد قرآن مجسم و همه کمالاتی که بشریت همواره در آرزوی آن بود، محسوب می شود. انقلابیبودن و داشتن بصیرت دینی را از دو ویژگی مهم امام زمانی بودن است اگر هرکدام را نداشته باشیم و یا یکی قوی و دیگری ضعیف باشد قطعا راه را به انحراف خواهیم رفت. در روز عید غدیر تمام مسلمین به حضرت علی(ع)بیعت نمودند طوری که مردان با حضرت دست می دادند و زنان دست خود را در تشت پر از آب می کردند و به این طریق بیعت می نمودند. بعد از حادثه غدیر پیامبر همیشه علی را امیرالمومنین خطاب میکردند در حالیکه قبلا به نام ابوالحسن صدایش می کرد. طبق روایت از <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85/\">امامان معصوم</a> لقب امیرالمومنین خاص برای علی (ع) است.در سال دهم هجرت 70 هزار حاجی از مدینه منوره و تعدادی زیادی هم از یمن و دیگر مناطق که تعداد مجموعی شان بیشتر از 120 هزار نفر می رسید، برای ادای فریضه الهی حج در مکه حضور یافتند که در برگشت از خانه خداوند در <a href=\"https://civilica.com/search/paper/k-%D9%85%D9%86%D8%B7%D9%82%D9%87%20%D8%BA%D8%AF%DB%8C%D8%B1%20%D8%AE%D9%85/\">منطقه غدیر خم</a> پیامبر حضرت علی ابن ابی طالب را به عنوان وصی و جانشین خود به مسلمین معرفی نمود. غربی ها از زنان استفاده ابزاری می کنند و آنچه را که اسلام برای زنان داده است دیگر ادیان نداده است و حرکت <a href=\"https://civilica.com/search/paper/k-%D8%B2%D9%86%D8%A7%D9%86%20%D8%AF%D8%B1%20%D8%A7%D8%B3%D9%84%D8%A7%D9%85/\">زنان در اسلام</a> تاثیر گذار بوده است. ما هرچه داریم از زنان تاریخ ساز اسلام داریم و مانند زنان صدر اسلام در هیچ جای دنیا هیچ زنی نتوانسته است که اثر گذار باشد.</p>', 2, 0, 2, 0, 16, 'fa', 1, NULL, '2024-11-30 06:58:13', '2024-12-01 16:13:49'),
(2, 'مباحث تخصصی', NULL, 1, 1, 'image30611732958911.webp', 'image30191732958932.jpg###image36231732958935.jpg###', 'video80811732958925.mp4###', 'application99741732958928.docx###', NULL, '<p>قاله ی حاضر با نگاهی به آموزه های فرهنگی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> از منظر امامان معصوم(ع)، با تبیین مفهوم مدیریت فرهنگی در غدیر، ابعاد و ویژگی های واقعه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> و ضرورت ترویج سبک زندگی اسلامی بر اساس روایات اهل بیت(ع)، برآنیم تا قدمی برای معرفی ابعاد گوناگون واقعه ی فرهنگی و اجتماعی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> برداریم. بی تردید نقش گسترده ی <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> در حوزه ی تبیین دین و فرهنگ، غیرقابل انکار است؛ بدین رو اهل بیت(ع) اهمیت ویژه ای به واقعه ی تمدن ساز <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> مبذول می داشتند و در هر فرصتی برای نهادینه کردن فرهنگ ولایت و رهبری بر اساس واقعه ی غدیر، ضرورت تبیین جایگاه <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> در اسلام را بازگو می کردند. این پژوهش به دنبال بررسی این مساله است که آیا حادثه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> می تواند به عنوان الگوی فرهنگ ساز در راستای تمدن اسلامی مطرح شود! و اهل بیت(ع) با توجه به اهمیت غدیر، در برابر این واقعه ی مهم و عظیم، چگونه موضع گیری کردند! بدین رو هدف از این مقاله، بررسی و تبیین آموزه های فرهنگی واقعه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> از منظر <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> است؛ هدف این است که با بررسی روایات اهل بیت(ع)، کارکرد فرهنگی و اجتماعی آموزه های <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> را استخراج نموده، تا در جهت الگوسازی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> برای تمدنسازی اسلامی در عصر حاضر، گامی برداریم. در این مقاله، با بهره گیری از روش توصیف و تحلیل و بر اساس منابع کتابخانه ای، تلاش شده است، الگوی تمدن ساز <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> در روایات <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> را استخراج کنیم. یکی از نتایج و دستاوردهای این پژوهش، تبیین معیارها و ملاک های فرهنگی نهفته در آموزه های اهل بیت(ع) در مورد واقعه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> است. بررسی و تبیین آموزه های فرهنگ ساز <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> از منظر <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> در ابعاد اخلاق فردی، اجتماعی، الاهی و سیاسی، در قالبی جدید از جنبه های نوآوری این مقاله شمرده می شود.</p>', 1, 0, 1, 0, 7, 'fa', 0, NULL, '2024-11-30 06:59:13', '2024-11-30 07:34:26'),
(3, 'اهمیت بیعت در غدیر', NULL, 1, 1, 'image59041732962705.jpg', 'image99441732962748.webp###image13741732962751.jpg###image27701732962757.jpg###', NULL, 'application25031732962754.docx###', NULL, '<p>بعد از حادثه غدیر پیامبر همیشه علی را امیرالمومنین خطاب میکردند در حالیکه قبلا به نام ابوالحسن صدایش می کرد. طبق روایت از <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85/\">امامان معصوم</a> لقب امیرالمومنین خاص برای علی (ع) است.در سال دهم هجرت 70 هزار حاجی از مدینه منوره و تعدادی زیادی هم از یمن و دیگر مناطق که تعداد مجموعی شان بیشتر از 120 هزار نفر می رسید، برای ادای فریضه الهی حج در مکه حضور یافتند که در برگشت از خانه خداوند در <a href=\"https://civilica.com/search/paper/k-%D9%85%D9%86%D8%B7%D9%82%D9%87%20%D8%BA%D8%AF%DB%8C%D8%B1%20%D8%AE%D9%85/\">منطقه غدیر خم</a> پیامبر حضرت علی ابن ابی طالب را به عنوان وصی و جانشین خود به مسلمین معرفی نمود. غربی ها از زنان استفاده ابزاری می کنند و آنچه را که اسلام برای زنان داده است دیگر ادیان نداده است و حرکت <a href=\"https://civilica.com/search/paper/k-%D8%B2%D9%86%D8%A7%D9%86%20%D8%AF%D8%B1%20%D8%A7%D8%B3%D9%84%D8%A7%D9%85/\">زنان در اسلام</a> تاثیر گذار بوده است. ما هرچه داریم از زنان تاریخ ساز اسلام داریم و مانند زنان صدر اسلام در هیچ جای دنیا هیچ زنی نتوانسته است که اثر گذار باشد.</p>', 0, 0, 0, 0, 2, 'fa', 1, NULL, '2024-11-30 08:04:09', '2024-11-30 08:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` int(11) DEFAULT NULL COMMENT 'شناسه کاربر ثبت کننده(فرستنده پیام)',
  `editor_id` int(11) DEFAULT NULL COMMENT 'شناسه کاربر ویرایش کننده',
  `blog_id` int(11) DEFAULT NULL COMMENT 'شناسه محتوا',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'شناسه پیام اصلی',
  `comment` text DEFAULT NULL COMMENT 'اظهار نظر',
  `confirm_user_id` int(11) DEFAULT NULL COMMENT 'شناسه پرسنل برای تأیید یا رد',
  `confirm_id` int(11) NOT NULL DEFAULT 2 COMMENT 'شناسه وضعیت تأیید، از جدول وضعیت ها',
  `lang` varchar(2) NOT NULL DEFAULT 'fa' COMMENT 'زبان',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `creator_id`, `editor_id`, `blog_id`, `parent_id`, `comment`, `confirm_user_id`, `confirm_id`, `lang`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 2, 0, 'بسیار مقاله درست و ب عنوان برترین مطلب می تواند باشد', 1, 1, 'fa', 1, NULL, '2024-11-30 07:00:48', '2024-11-30 07:00:48'),
(2, 2, 1, 1, 0, 'چقدر مورد تحسین است این مقاله .', 1, 1, 'fa', 1, NULL, '2024-11-30 07:32:51', '2024-11-30 07:33:52'),
(3, 19, NULL, 1, 0, 'متن خوبی بود مرسی', 1, 1, 'fa', 1, NULL, '2024-12-01 16:11:47', '2024-12-01 16:12:43'),
(4, 19, NULL, 1, 2, 'اره واقعا', NULL, 2, 'fa', 1, '2024-12-01 16:13:24', '2024-12-01 16:12:01', '2024-12-01 16:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `blog_keyword`
--

CREATE TABLE `blog_keyword` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) DEFAULT NULL COMMENT 'شناسه مقاله',
  `keyword_id` int(11) DEFAULT NULL COMMENT 'شناسه کلمه کلیدی',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_subjects`
--

CREATE TABLE `blog_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_fa` varchar(50) DEFAULT NULL COMMENT 'عنوان',
  `order` int(11) DEFAULT 1 COMMENT 'ترتیب',
  `count_blog` int(11) NOT NULL DEFAULT 0 COMMENT 'تعداد محتوا',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('|23.227.140.174', 'i:1;', 1733078772),
('|23.227.140.174:timer', 'i:1733078772;', 1733078772),
('|5.239.172.31', 'i:1;', 1733077197),
('|5.239.172.31:timer', 'i:1733077197;', 1733077197);

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
  `promotion_id` int(11) DEFAULT NULL,
  `promoter_id` int(11) DEFAULT NULL,
  `promotion_report_id` int(11) DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `duration` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audiencetype_id` int(11) DEFAULT NULL,
  `people_count` int(11) DEFAULT NULL,
  `place_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `village` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `promotion_id`, `promoter_id`, `promotion_report_id`, `subject`, `year`, `duration`, `audiencetype_id`, `people_count`, `place_name`, `city_id`, `province_id`, `city`, `village`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 3, 2, 1, 'دوره معرفی غدیر', '1403', '40', 2, 80, 'مدرسه اهل بیت', 19, 19, 'شهر ری', 'روستای خانی آباد', 1, NULL, '2024-11-26 12:09:18', '2024-11-26 12:09:18'),
(3, 6, 6, 3, 'برگزاری مراسم و حمایت از برنامه‌های مذهبی', '1403', '100', 4, 100, NULL, 19, 19, 'اردبیل', NULL, 1, NULL, '2024-11-26 12:09:18', '2024-11-26 12:09:18'),
(4, 9, 6, 4, 'شرکت در برنامه‌های فرهنگی و تبلیغی', '1402', '40', 4, 120, 'مدرسه اهل بیت', 19, 19, 'شیراز', NULL, 1, NULL, '2024-11-26 12:09:27', '2024-11-26 12:09:27'),
(5, 12, 15, 5, 'حمایت از برنامه‌های مذهبی و فرهنگی', '1400', '70', 4, 90, NULL, 19, 19, NULL, NULL, 1, NULL, '2024-11-26 12:09:26', '2024-11-26 12:09:26'),
(6, 13, 13, 6, 'شرکت در مراسم‌های عمومی و فرهنگی', '1401', '120', 2, 70, 'مدرسه', 19, 19, 'قم', NULL, 1, NULL, '2024-11-26 12:09:25', '2024-11-26 12:09:25'),
(7, 13, 19, 7, 'دوره میلاد', '1401', '100', 3, 120, 'مسجد حضرت زهرا', 36, 8, NULL, NULL, 1, NULL, NULL, NULL),
(8, 13, NULL, 7, 'دوره میلاد', '1401', '100', 3, 120, 'مسجد حضرت زهرا', 36, 8, NULL, NULL, 1, NULL, NULL, NULL),
(9, 13, NULL, 7, 'دوره میلاد', '1401', '100', 3, 120, 'مسجد حضرت زهرا', 36, 8, NULL, NULL, 1, NULL, NULL, NULL),
(10, 13, NULL, 7, 'دوره میلاد', '1401', '100', 3, 120, 'مسجد حضرت زهرا', 36, 8, NULL, NULL, 1, NULL, NULL, NULL);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cultural_users`
--

INSERT INTO `cultural_users` (`id`, `promoter_id`, `name`, `family`, `job_position`, `gender_id`, `phone`, `comments`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'فاطمه', 'محمدی', 'همکاری فرهنگی', 2, '094354534', 'خانم فاطمه محمدی افرادی که با شما در امور فرهنگی همکاری سازنده دارند یا در محل تبلیغ شما تاثیر گزارند', NULL, NULL, NULL, NULL),
(4, 4, 'رضا', 'پرهیزگار', 'مدرس', NULL, '091912335', 'دهه کرامت یعنی چه ؟ ولادت باسعادت کریمه اهل بیت حضرت فاطمه معصومه سلام الله علیهاو برادر گرامیشان و آغاز دهه مبارک و میمون کرامت بر همگان مبارک باد. دهه کرامت،دهه اول ماه ذی‌العقده است و آغازش با ولادت حضرت معصومه(علیهالسلام) و پایانش با ولادت حضرت ابوالحسن علی بن موسی‌الرضا(علیه السلام) می‌باشد.', NULL, NULL, NULL, NULL),
(5, 6, 'خانم', 'مرادی', 'مدیریت', 2, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 19, 'خانم همکار', 'فرهنگی', 'معلم', NULL, '435345', 'خیلی فعال هستند', NULL, NULL, NULL, NULL);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `title`, `description`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'دیپلم', '', 1, NULL, NULL, NULL),
(2, 'لیسانس', '', 1, NULL, NULL, NULL),
(3, 'فوق لیسانس', '', 1, NULL, NULL, NULL),
(4, 'تحصیلات حوزوی', '', 1, NULL, NULL, NULL);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(13, '2024_11_03_220836_create_blogs1_table', 1),
(14, '2024_11_03_220837_create_support_types_table', 1),
(15, '2024_11_03_220838_create_tickets1_table', 1),
(16, '2024_11_03_220839_create_ticket_subjects1_table', 1),
(17, '2024_11_03_220840_create_rituals_table', 1),
(18, '2024_11_03_220841_create_promotion_reports_table', 1),
(19, '2024_11_03_220842_create_ritual_reports_table', 1),
(20, '2024_11_03_220843_create_tribunes_table', 1),
(21, '2024_11_03_220844_create_courses_table', 1),
(22, '2024_11_03_220845_create_educational_bases_table', 1),
(23, '2024_11_03_220846_create_audience_types_table', 1),
(24, '2024_11_03_220830_create_blog_comments_table', 2),
(25, '2024_11_03_220830_create_blog_keyword_table', 2),
(26, '2024_11_03_220830_create_blog_subjects_table', 2),
(27, '2024_11_03_220830_create_blogs_table', 2),
(28, '2024_11_03_220838_create_ticket_items_table', 2),
(29, '2024_11_03_220838_create_tickets_table', 2),
(30, '2024_11_03_220839_create_ticket_subjects_table', 2);

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
  `user_count` int(11) DEFAULT 0 COMMENT 'تعداد کل مشارکتهای مبلغین',
  `report_count` int(11) DEFAULT 0 COMMENT 'تعداد گزارش های ثبت شده',
  `sum_support` int(11) DEFAULT 0 COMMENT 'تعداد کل حمایتها',
  `course_count` int(11) DEFAULT NULL,
  `tribun_count` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `editor_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `year`, `photo`, `comments`, `commitments`, `register_status`, `report_status`, `has_course`, `has_tribune`, `status_id`, `user_count`, `report_count`, `sum_support`, `course_count`, `tribun_count`, `creator_id`, `editor_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'دهه ی فاطمیه', 1403, 'image59661731845420.jpg', 'در فرهنگ عامه، به دهه دوم جمادی‌الاول، از دهم تا بیستم آن ماه که بر اساس روایت ۷۵ روز درگذشت فاطمه در میان آن روزها واقع شده‌است، «دهه اول فاطمیه» و به دهه اول جمادی‌الثانی، از اول تا دهم جمادی‌الثانی که بنا به روایت ۹۵ روز، درگذشت فاطمه در میان این روزها اتفاق افتاده «دهه دوم فاطمیه» می‌گویند.', 'تعهدات ستاد دارای این مواردمیباشد.در فرهنگ عامه، به دهه دوم جمادی‌الاول، از دهم تا بیستم آن ماه که بر اساس روایت ۷۵ روز درگذشت فاطمه در میان آن روزها واقع شده‌است، «دهه اول فاطمیه» و به دهه اول جمادی‌الثانی، از اول تا دهم جمادی‌الثانی که بنا به روایت ۹۵ روز، درگذشت فاطمه در میان این روزها اتفاق افتاده «دهه دوم فاطمیه» می‌گویند.', 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, NULL, '2024-11-17 03:10:38', '2024-11-20 17:16:42'),
(2, 'نیمه شعبان', 1401, 'image41621731845468.jpg', 'نیمهٔ شعبان (۱۵ شعبان در گاهشماری هجری قمری) یکی از جشن‌های مسلمانان شیعه است که هم‌زمان با زادروز امام دوازدهم شیعیان، حجت بن حسن است. دعاهای زیادی مانند دعای کمیل در این شب خوانده می‌شود. اهل سنت شب نیمه شعبان را «شب برات» نامیده و آن را به عنوان روز انزال قرآن به شب زنده‌داری و دعا می‌پردازند.', NULL, 1, 1, 0, 1, 1, 0, 0, 2, 1, 2, 1, 1, NULL, '2024-11-17 03:11:18', '2024-11-24 23:29:26'),
(3, 'عید غدیر', 1403, 'image3991731845572.jpg', 'واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.', 'واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.', 1, 0, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, NULL, '2024-11-17 03:13:02', '2024-11-20 17:22:43'),
(4, 'دهه کرامت', 1403, 'image9321732305869.jpg', 'دهه کرامت یعنی چه ؟ ولادت باسعادت کریمه اهل بیت حضرت فاطمه معصومه سلام الله علیهاو برادر گرامیشان و آغاز دهه مبارک و میمون کرامت بر همگان مبارک باد. دهه کرامت،دهه اول ماه ذی‌العقده است و آغازش با ولادت حضرت معصومه(علیهالسلام) و پایانش با ولادت حضرت ابوالحسن علی بن موسی‌الرضا(علیه السلام) می‌باشد.', 'تعهدات پیامرسان غدیر.', 1, 1, 0, 1, 1, 1, 1, 2, 1, 1, 1, 1, NULL, '2024-11-22 09:04:00', '2024-11-24 23:58:40'),
(5, 'مدیریت فرهنگی', 1402, 'image60611732530484.jpg', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 'بسیار متعهد', 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, NULL, NULL, '2024-11-24 23:28:18', '2024-11-25 00:05:44'),
(6, 'هفته وحدت', 1403, '1.jpg', 'جشن‌ها و برنامه‌های مرتبط با وحدت اسلامی', 'شرکت در مراسم‌های عمومی و فرهنگی', 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, NULL, NULL, '2024-11-26 09:52:31', '2024-11-26 07:52:36'),
(7, 'ماه محرم و عزاداری حسینی', 1402, '2.jpg', 'اطلاعیه برگزاری مراسم عزاداری محرم', 'برگزاری مراسم و حمایت از برنامه‌های مذهبی', 1, 1, 1, 1, 1, 2, 0, 0, 1, 1, 2, NULL, NULL, '2024-11-26 09:52:31', '2024-11-26 08:18:22'),
(8, 'روز غدیر خم', 1403, '3.jpg', 'اطلاعیه جشن‌های بزرگ غدیر', 'برگزاری جشن‌های غدیر و پخش غذا', 1, 1, 1, 0, 1, 2, 0, 0, 1, 1, 3, NULL, NULL, '2024-11-26 09:52:31', '2024-11-26 08:18:59'),
(9, 'روز مبعث پیامبر اکرم (ص)', 1402, '4.jpg', 'برگزاری مراسم جشن و سخنرانی‌های مذهبی', 'شرکت در برنامه‌های فرهنگی و تبلیغی', 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 4, NULL, NULL, '2024-11-26 09:52:31', '2024-11-26 07:54:46'),
(10, 'شب قدر', 1401, '5.jpg', 'برگزاری مراسم احیا و دعا در شب‌های قدر', 'تشویق مردم به شرکت در مراسم و کمک‌های مردمی', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 5, NULL, NULL, '2024-11-26 09:52:31', '2024-11-26 09:52:31'),
(11, 'اربعین حسینی', 1401, '6.jpg', 'اطلاعیه پیاده‌روی و مراسم اربعین حسینی', 'حمایت از زائران و برنامه‌های مذهبی', 1, 1, 1, 1, 1, 1, 0, 0, NULL, NULL, 6, NULL, NULL, '2024-11-26 09:52:31', '2024-11-26 07:49:03'),
(12, 'هفته دفاع مقدس', 1400, '7.jpg', 'برگزاری نمایشگاه‌ها و مراسم گرامیداشت دفاع مقدس', 'ترویج فرهنگ ایثار و شهادت', 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL, 7, 1, NULL, '2024-11-26 09:52:31', '2024-12-01 15:58:12'),
(13, 'میلاد امام علی (ع)', 1401, '4.jpg', 'برگزاری جشن و مراسم میلاد امام علی (ع)', 'تشویق مردم به شرکت در برنامه‌ها', 1, 1, 1, 0, 1, 1, 2, 0, NULL, NULL, 8, NULL, NULL, '2024-11-26 09:52:31', '2024-12-01 16:05:16'),
(14, 'روز نیمه شعبان', 1403, '5.jpg', 'اطلاعیه جشن بزرگ نیمه شعبان', 'حمایت از برنامه‌های مذهبی و فرهنگی', 1, 1, 1, 1, 1, 2, 0, 0, NULL, NULL, 9, NULL, NULL, '2024-11-26 09:52:31', '2024-11-26 07:56:22'),
(15, 'روز عرفه', 1402, '7.jpg', 'برگزاری دعا و مراسم مذهبی روز عرفه', 'تشویق مردم به دعا و نیایش', 1, 1, 0, 0, 1, 0, 0, 0, NULL, NULL, 10, NULL, NULL, '2024-11-26 09:52:31', '2024-11-26 09:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_agree`
--

CREATE TABLE `promotion_agree` (
  `id` int(11) NOT NULL,
  `promoter_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `has_course` int(1) DEFAULT 0,
  `has_tribune` int(1) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `promotion_agree`
--

INSERT INTO `promotion_agree` (`id`, `promoter_id`, `promotion_id`, `has_course`, `has_tribune`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 1, 1, NULL, '2024-11-20 20:49:33', '2024-11-20 17:19:33'),
(2, 4, 4, NULL, 0, NULL, '2024-11-22 13:16:03', '2024-11-22 09:46:03'),
(3, 2, 5, NULL, NULL, NULL, '2024-11-25 03:35:44', '2024-11-25 00:05:44'),
(4, 6, 14, 1, 1, NULL, '2024-11-26 11:18:52', '2024-11-26 07:48:52'),
(5, 6, 11, 1, 1, NULL, '2024-11-26 11:19:03', '2024-11-26 07:49:03'),
(6, 6, 6, 1, NULL, NULL, '2024-11-26 11:19:22', '2024-11-26 07:49:22'),
(7, 15, 14, 1, 1, NULL, '2024-11-26 11:26:22', '2024-11-26 07:56:22'),
(8, 15, 8, 1, NULL, NULL, '2024-11-26 11:26:35', '2024-11-26 07:56:35'),
(9, 15, 7, 1, 1, NULL, '2024-11-26 11:26:48', '2024-11-26 07:56:48'),
(10, 13, 7, 1, 1, NULL, '2024-11-26 11:48:22', '2024-11-26 08:18:22'),
(11, 13, 13, 1, NULL, NULL, '2024-11-26 11:48:43', '2024-11-26 08:18:43'),
(12, 13, 8, 1, NULL, NULL, '2024-11-26 11:48:59', '2024-11-26 08:18:59'),
(13, 19, 12, 1, 1, NULL, '2024-12-01 19:28:12', '2024-12-01 15:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_agree_item`
--

CREATE TABLE `promotion_agree_item` (
  `id` int(11) NOT NULL,
  `agree_id` int(11) DEFAULT NULL,
  `ritual_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `promoter_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `promotion_agree_item`
--

INSERT INTO `promotion_agree_item` (`id`, `agree_id`, `ritual_id`, `promotion_id`, `promoter_id`) VALUES
(1, 1, 3, 3, 2),
(2, 1, 4, 3, 2),
(3, 2, 3, 4, 4),
(4, 2, 1, 4, 4),
(5, 3, 1, 5, 2),
(6, 13, 2, 12, 19),
(7, 13, 3, 12, 19),
(8, 13, 4, 12, 19);

-- --------------------------------------------------------

--
-- Table structure for table `promotion_positions`
--

CREATE TABLE `promotion_positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `status_id` int(11) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotion_positions`
--

INSERT INTO `promotion_positions` (`id`, `title`, `comments`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'امام جمعه', NULL, 1, NULL, NULL, NULL),
(2, 'امام جماعت', NULL, 1, NULL, NULL, NULL),
(3, 'طرح هجرت', NULL, 1, NULL, NULL, NULL),
(4, 'مبلغ مدارس', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotion_reports`
--

CREATE TABLE `promotion_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `promoter_id` int(11) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `status_id` int(1) DEFAULT 0,
  `confirm_id` int(1) DEFAULT 0,
  `level_id` int(1) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotion_reports`
--

INSERT INTO `promotion_reports` (`id`, `promotion_id`, `promoter_id`, `photo`, `status_id`, `confirm_id`, `level_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'image63541732159360.jpg', NULL, 0, 0, NULL, '2024-11-20 23:22:14', '2024-11-20 23:22:43'),
(2, 4, 4, 'image70381732308440.jpg', NULL, -1, 2, NULL, '2024-11-22 15:48:22', '2024-11-22 15:48:22'),
(3, 6, 6, '', NULL, 1, 1, NULL, '2024-11-26 07:52:36', '2024-11-26 07:52:36'),
(4, 9, 6, 'image35561732647210.jpg', NULL, 1, 3, NULL, '2024-11-26 07:54:46', '2024-11-26 07:54:46'),
(5, 12, 15, 'image39031732647433.jpg', NULL, 1, 4, NULL, '2024-11-26 07:58:43', '2024-11-26 07:58:43'),
(6, 13, 13, '', NULL, 1, 1, NULL, '2024-11-26 08:02:11', '2024-11-26 08:02:11'),
(7, 13, 19, '', 0, 1, 20, NULL, '2024-12-01 16:01:00', '2024-12-01 16:05:16');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_ritual`
--

CREATE TABLE `promotion_ritual` (
  `id` int(11) NOT NULL,
  `ritual_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `promotion_ritual`
--

INSERT INTO `promotion_ritual` (`id`, `ritual_id`, `promotion_id`) VALUES
(1, 1, 3),
(2, 2, 3),
(3, 3, 3),
(4, 4, 3),
(5, 6, 3),
(6, 4, 1),
(7, 5, 1),
(8, 1, 2),
(9, 2, 2),
(10, 3, 2),
(11, 4, 2),
(12, 1, 4),
(13, 2, 4),
(14, 3, 4),
(15, 6, 4),
(16, 1, 5),
(17, 1, 12),
(18, 2, 12),
(19, 3, 12),
(20, 4, 12),
(21, 6, 12);

-- --------------------------------------------------------

--
-- Table structure for table `rituals`
--

CREATE TABLE `rituals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rituals`
--

INSERT INTO `rituals` (`id`, `title`, `color`, `description`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'موکب خیابانی', '#FF6347', NULL, 1, NULL, NULL, NULL),
(2, 'موکب خانگی', '#8A2BE2', NULL, 1, NULL, NULL, NULL),
(3, 'کاروان شادی', '#00CED1', NULL, 1, NULL, NULL, NULL),
(4, 'اطعام', '#FF4500', NULL, 1, NULL, NULL, NULL),
(5, 'دسته عزاداری', '#32CD32', NULL, 1, NULL, NULL, NULL),
(6, 'تزیین خیابان و محله', '#FFD700', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ritual_reports`
--

CREATE TABLE `ritual_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ritual_id` int(11) DEFAULT NULL,
  `year` varchar(6) DEFAULT NULL COMMENT 'سال',
  `promotion_report_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `promoter_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `place_name` varchar(255) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `village` varchar(255) DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ritual_reports`
--

INSERT INTO `ritual_reports` (`id`, `ritual_id`, `year`, `promotion_report_id`, `promotion_id`, `promoter_id`, `description`, `city_id`, `place_name`, `province_id`, `city`, `village`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 4, NULL, 1, 3, 2, 'توضیحات شعائر که مبلغ ثبت میکند را می توانیم در این قسمت ثبت کنیم و قابل مشاهده میباشد .', 3, 'مسجد امام زمان', 1, 'کهک', NULL, 1, NULL, NULL, NULL),
(3, 3, NULL, 2, 4, 4, 'دهه کرامت یعنی چه ؟ ولادت باسعادت کریمه اهل بیت حضرت فاطمه معصومه سلام الله علیهاو برادر گرامیشان و آغاز دهه مبارک و میمون کرامت بر همگان مبارک باد. دهه کرامت،دهه اول ماه ذی‌العقده است و آغازش با ولادت حضرت معصومه(علیهالسلام) و پایانش با ولادت حضرت ابوالحسن علی بن موسی‌الرضا(علیه السلام) می‌باشد.', 3, 'مسجد امام حسین', 2, 'شهر ری', 'باقر اباد', 1, NULL, NULL, NULL),
(4, NULL, NULL, 3, 6, 6, 'برگزاری مراسم و حمایت از برنامه‌های مذهبی', 4, NULL, 4, 'اصفهان', NULL, 1, NULL, NULL, NULL),
(5, 4, NULL, 4, 9, 6, '\'شرکت در برنامه‌های فرهنگی و تبلیغی\'', 15, 'اطعام مسجد', 15, 'سمنان', NULL, 1, NULL, NULL, NULL),
(6, 6, NULL, 5, 12, 15, 'حمایت از برنامه‌های مذهبی و فرهنگی', 5, NULL, 5, 'کرج', NULL, 1, NULL, NULL, NULL),
(7, 4, NULL, 6, 13, 13, 'شرکت در مراسم‌های عمومی و فرهنگی', 19, 'مسجد المهدی', 19, 'قم', 'کهک', 1, NULL, NULL, NULL),
(8, 4, '1401', 7, 13, 19, 'سلفچگان مدرسه', 34, 'سلفچگان مدرسه', 19, 'سلفچگان', 'سلفچگان', 1, NULL, NULL, NULL),
(9, 4, '1401', 7, 13, NULL, 'سلفچگان مدرسه', 34, 'سلفچگان مدرسه', 19, 'سلفچگان', 'سلفچگان', 1, NULL, NULL, NULL),
(10, 6, '1401', 7, 13, NULL, 'سلفچگان محله', 32, NULL, 19, NULL, NULL, 1, NULL, NULL, NULL),
(11, 4, '1401', 7, 13, NULL, 'سلفچگان مدرسه', 34, 'سلفچگان مدرسه', 19, 'سلفچگان', 'سلفچگان', 1, NULL, NULL, NULL),
(12, 4, '1401', 7, 13, NULL, 'سلفچگان مدرسه', 34, 'سلفچگان مدرسه', 19, 'سلفچگان', 'سلفچگان', 1, NULL, NULL, NULL),
(13, 6, '1401', 7, 13, NULL, 'سلفچگان محله', 32, NULL, 19, NULL, NULL, 1, NULL, NULL, NULL);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `pack_items`, `amount`, `type_id`, `promotion_id`, `description`, `creator_id`, `editor_id`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'کتاب\nبروشور\nپرچم', NULL, 1, 3, 'واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.', NULL, NULL, 1, NULL, '2024-11-17 03:22:10', '2024-11-19 08:17:26'),
(2, NULL, '500000', 2, 2, 'واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.', NULL, NULL, 1, NULL, '2024-11-17 03:22:31', '2024-11-17 03:22:31'),
(3, 'بن خرید', NULL, 3, 1, 'واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.', NULL, NULL, 1, NULL, '2024-11-17 03:23:32', '2024-11-17 03:23:32'),
(4, NULL, '1000000', 2, 4, 'دهه کرامت یعنی چه ؟ ولادت باسعادت کریمه اهل بیت حضرت فاطمه معصومه سلام الله علیهاو برادر گرامیشان و آغاز دهه مبارک و میمون کرامت بر همگان مبارک باد. دهه کرامت،دهه اول ماه ذی‌العقده است و آغازش با ولادت حضرت معصومه(علیهالسلام) و پایانش با ولادت حضرت ابوالحسن علی بن موسی‌الرضا(علیه السلام) می‌باشد.', NULL, NULL, 1, NULL, '2024-11-22 09:05:51', '2024-11-22 09:05:51'),
(6, 'ملزومات', '150000', 3, 2, 'در همین حد\nلورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', NULL, NULL, 1, NULL, '2024-11-24 23:29:26', '2024-11-24 23:29:26'),
(7, 'ldm\nosonvs\nns', NULL, NULL, 4, '/.saxasmlm', NULL, NULL, 1, NULL, '2024-11-24 23:58:40', '2024-11-24 23:58:40'),
(8, 'برنج، روغن، قند', NULL, 1, 1, 'حمایت بسته غذایی برای خانواده‌های نیازمند.', 1, NULL, 1, NULL, '2024-11-26 10:08:34', '2024-11-26 10:08:34'),
(9, 'لباس زمستانی', NULL, 1, 2, 'حمایت از کودکان مناطق محروم با تهیه لباس زمستانی.', 2, NULL, 1, NULL, '2024-11-26 10:08:34', '2024-11-26 10:08:34'),
(10, 'کتاب‌های مذهبی', NULL, 1, 3, 'ارسال کتاب‌های آموزشی برای مدارس مناطق دورافتاده.', 3, NULL, 1, NULL, '2024-11-26 10:08:34', '2024-11-26 10:08:34'),
(11, NULL, '5000000', 2, 4, 'حمایت مالی برای بازسازی مسجد.', 1, NULL, 1, NULL, '2024-11-26 10:08:34', '2024-11-26 10:08:34'),
(12, NULL, '3000000', 2, 5, 'کمک به تهیه جهیزیه.', 4, NULL, 1, NULL, '2024-11-26 10:08:34', '2024-11-26 10:08:34'),
(13, NULL, '1000000', 2, 6, 'حمایت مالی برای جشن‌های مذهبی.', 5, NULL, 1, NULL, '2024-11-26 10:08:34', '2024-11-26 10:08:34'),
(14, 'بسته لوازم‌التحریر', NULL, 3, 7, 'تهیه لوازم‌التحریر برای دانش‌آموزان.', 1, NULL, 1, NULL, '2024-11-26 10:08:34', '2024-11-26 10:08:34'),
(15, 'کارت هدیه', NULL, 3, 8, 'توزیع کارت هدیه برای نیازمندان.', 6, NULL, 1, NULL, '2024-11-26 10:08:34', '2024-11-26 10:08:34'),
(16, 'بسته بهداشتی', NULL, 3, 9, 'ارسال بسته‌های بهداشتی برای خانواده‌ها.', 7, NULL, 1, NULL, '2024-11-26 10:08:34', '2024-11-26 10:08:34'),
(17, 'اقلام خوراکی و بهداشتی', NULL, 1, 10, 'تهیه بسته حمایتی برای مناطق سیل‌زده.', 8, NULL, 1, NULL, '2024-11-26 10:08:34', '2024-11-26 10:08:34');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `support_users`
--

INSERT INTO `support_users` (`id`, `promoter_id`, `support_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL, NULL),
(2, 3, 2, NULL, NULL, NULL),
(3, 2, 3, NULL, NULL, NULL),
(4, 3, 3, NULL, NULL, NULL),
(5, 2, 4, NULL, NULL, NULL),
(6, 3, 4, NULL, NULL, NULL),
(7, 6, 6, NULL, NULL, NULL),
(8, 3, 7, NULL, NULL, NULL),
(9, 4, 7, NULL, NULL, NULL),
(10, 6, 7, NULL, NULL, NULL),
(11, 19, 12, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT 'عنوان',
  `user_id` int(11) DEFAULT NULL COMMENT 'شناسه کاربر ارسال کننده',
  `subject_id` int(11) DEFAULT NULL COMMENT 'شناسه موضوع',
  `priority_status_id` int(11) NOT NULL DEFAULT 0 COMMENT 'شناسه وضعیت اولویت بررسی تیکت، از جدول وضعیت ها',
  `reply_status_id` int(11) NOT NULL DEFAULT 0 COMMENT 'شناسه وضعیت پاسخ تیکت، از جدول وضعیت ها',
  `score` int(11) DEFAULT NULL COMMENT 'امتیاز کاربر در مرود پاسخ به تیکت',
  `lang` varchar(2) NOT NULL DEFAULT 'fa' COMMENT 'زبان',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `title`, `user_id`, `subject_id`, `priority_status_id`, `reply_status_id`, `score`, `lang`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'فعالیت فرهنگی', 2, 2, 3, 3, 5, 'fa', 1, NULL, '2024-11-30 07:37:24', '2024-11-30 07:57:04'),
(2, 'مشکل سامانه', 19, 1, 2, 3, 5, 'fa', 1, NULL, '2024-12-01 16:07:19', '2024-12-01 16:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_items`
--

CREATE TABLE `ticket_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'شناسه کاربر ارسال کننده',
  `ticket_id` int(11) DEFAULT NULL COMMENT 'شناسه تیکت',
  `text` text DEFAULT NULL COMMENT 'متن تیکت',
  `media` varchar(255) DEFAULT NULL COMMENT 'فایل های مدیا',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_items`
--

INSERT INTO `ticket_items` (`id`, `user_id`, `ticket_id`, `text`, `media`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'عرض سلام و خدا قوت\nدرباره روند کار و موضوع فرهنگی', 'image13501732961242.jpg###', 1, NULL, '2024-11-30 07:37:24', '2024-11-30 07:37:24'),
(2, 1, 1, 'مورد بررسی میشود ب زودی', NULL, 1, NULL, '2024-11-30 07:41:11', '2024-11-30 07:41:11'),
(3, 19, 2, 'سلام من ویرایش گزارش زدم مشکل داشت', 'image58351733081831.jpg###', 1, NULL, '2024-12-01 16:07:19', '2024-12-01 16:07:19'),
(4, 1, 2, 'سلام کدوم قسمت مشکل دارید ؟ \nلینک بهم بدید', NULL, 1, NULL, '2024-12-01 16:08:38', '2024-12-01 16:08:38'),
(5, 19, 2, 'دوباره چک کردم درست بود', NULL, 1, NULL, '2024-12-01 16:09:18', '2024-12-01 16:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_subjects`
--

CREATE TABLE `ticket_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_fa` varchar(200) DEFAULT NULL COMMENT 'عنوان',
  `creator_id` int(11) DEFAULT NULL COMMENT 'شناسه کاربر ثبت کننده',
  `editor_id` int(11) DEFAULT NULL COMMENT 'شناسه کاربر ویرایش کننده',
  `count_ticket` int(11) NOT NULL DEFAULT 0 COMMENT 'تعداد تیکت ها',
  `count_ticket_awaiting` int(11) NOT NULL DEFAULT 0 COMMENT 'تعداد تیکت هایی که وضعیت درانتظار پاسخ دارند',
  `count_ticket_checking` int(11) NOT NULL DEFAULT 0 COMMENT 'تعداد تیکت هایی که وضعیت درحال بررسی دارند',
  `count_ticket_answered` int(11) NOT NULL DEFAULT 0 COMMENT 'تعداد تیکت هایی که وضعیت پاسخ داده شده دارند',
  `count_ticket_closed` int(11) NOT NULL DEFAULT 0 COMMENT 'تعداد تیکت هایی که وضعیت بسته شده دارند',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_subjects`
--

INSERT INTO `ticket_subjects` (`id`, `title_fa`, `creator_id`, `editor_id`, `count_ticket`, `count_ticket_awaiting`, `count_ticket_checking`, `count_ticket_answered`, `count_ticket_closed`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'پشتیبانی فنی', 1, NULL, 1, 1, 0, 0, 0, 1, NULL, '2024-11-30 07:34:55', '2024-11-30 07:34:55'),
(2, 'پشتیبانی و آماد فرهنگی', 1, NULL, 1, 0, 0, 0, 1, 1, NULL, '2024-11-30 07:35:12', '2024-11-30 07:35:12'),
(3, 'پشتیبانی مهارتی', 1, NULL, 0, 0, 0, 0, 0, 0, NULL, '2024-11-30 07:35:27', '2024-11-30 07:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `tribunes`
--

CREATE TABLE `tribunes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `promotion_report_id` int(11) DEFAULT NULL,
  `promoter_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `audiencetype_id` int(11) DEFAULT NULL,
  `people_count` int(11) DEFAULT NULL,
  `place_name` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `village` varchar(255) DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tribunes`
--

INSERT INTO `tribunes` (`id`, `subject`, `promotion_report_id`, `promoter_id`, `promotion_id`, `year`, `duration`, `audiencetype_id`, `people_count`, `place_name`, `city_id`, `province_id`, `city`, `village`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'اشنایی با غدیر', 1, 2, 3, '1403', '30', 3, 100, 'مسجد امام زمان', 19, 19, 'کهک', NULL, 1, NULL, '2024-11-26 12:09:45', '2024-11-26 12:09:45'),
(3, 'برگزاری مراسم و حمایت از برنامه‌های مذهبی', 3, 6, 6, '1403', '40', 3, 50, NULL, 19, 19, 'ارومیه', NULL, 1, NULL, '2024-11-26 12:09:43', '2024-11-26 12:09:43'),
(4, 'شرکت در مراسم‌های عمومی و فرهنگی', 6, 13, 13, '1401', '45', 2, 100, 'مدرسه شریفی', 19, 19, 'قم', 'کهک', 1, NULL, '2024-11-26 11:57:54', '2024-11-26 11:57:54'),
(5, 'سخنرانی من', 7, 19, 13, '1401', '20', 1, 50, 'مدرسه جوانان', 34, 19, 'سلفچگان', 'سلفچگان', 1, NULL, NULL, NULL),
(6, 'سخنرانی من', 7, NULL, 13, '1401', '20', 1, 50, 'مدرسه جوانان', 34, 19, 'سلفچگان', 'سلفچگان', 1, NULL, NULL, NULL),
(7, 'سخنرانی من', 7, NULL, 13, '1401', '20', 1, 50, 'مدرسه جوانان', 34, 19, 'سلفچگان', 'سلفچگان', 1, NULL, NULL, NULL),
(8, 'سخنرانی من', 7, NULL, 13, '1401', '20', 1, 50, 'مدرسه جوانان', 34, 19, 'سلفچگان', 'سلفچگان', 1, NULL, NULL, NULL),
(9, 'ثقفثقف', 7, NULL, 13, '1401', 'ثفثقفث', 3, 456, 'قلیل', 36, 8, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT 2,
  `gender_id` int(11) DEFAULT 1,
  `is_not_citizen` int(1) DEFAULT 0,
  `codemeli` varchar(255) DEFAULT NULL,
  `khadamat_code` varchar(255) DEFAULT NULL,
  `tablighat_office_code` varchar(255) DEFAULT NULL,
  `tablighat_organization_code` varchar(255) DEFAULT NULL,
  `ovghaf_code` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL COMMENT 'شهرستان',
  `province_id` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL COMMENT 'شهر',
  `village` varchar(255) DEFAULT NULL COMMENT 'روستا',
  `address` text DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT 'avatar.png',
  `education_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT 0,
  `level_id` varchar(5) DEFAULT NULL,
  `confirm_code` varchar(100) DEFAULT NULL,
  `confirm_time` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `editor_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `mobile`, `firstname`, `lastname`, `role_id`, `gender_id`, `is_not_citizen`, `codemeli`, `khadamat_code`, `tablighat_office_code`, `tablighat_organization_code`, `ovghaf_code`, `bank_account_number`, `city_id`, `province_id`, `city`, `village`, `address`, `postal_code`, `photo`, `education_id`, `status_id`, `level_id`, `confirm_code`, `confirm_time`, `password`, `last_login`, `creator_id`, `remember_token`, `editor_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '09191964745', 'پرسنل', 'غدیر', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'image88381731844742.png', NULL, 1, NULL, '9732', '1732513440', '$2y$12$tEr5zN7Fx/GnPu/6rrc1gucC9PqYm9EQvrD2PHmk2qRNBK/6GlKT2', '2024-12-01 14:37:25', NULL, 'nygW3HmobzlHmjlacAFkSAAViMgAOGc9nqtFX1KgBHegVdvZSDhks3U1GFYZ', 1, NULL, '2024-12-01 18:07:25', '2024-12-01 14:37:25'),
(2, '09198526839', 'مریم', 'عبادی', 2, 2, 0, '1234567', '122324', '44444', '33333', '222222222', '43535355-34534535', 1, 0, 'قم', NULL, 'قم میدان رسالت', '23424234-343', 'image8961731845105.png', 1, 1, '5', '8611', '1733041239', '$2y$12$5ov2vBu7ueo7Th6MK.0kCusu32bIkvkdHSZlkX..RJDmDL7tnctdC', '2024-12-01 05:38:04', 1, 'He1BtBgUXer4eAmpGGpsmSqJLi9KcEgZOtJAjjEOTQsu2o0ZTtpfxZINl79W', 1, NULL, '2024-12-01 09:08:08', '2024-12-01 09:08:08'),
(3, '09191519138', 'الیاس', 'مصباح', 2, 1, 1, NULL, NULL, NULL, '345345', '3534534', '345345345345', 3, 0, 'تهران', NULL, NULL, '345345', 'image63481731845052.png', 2, 1, '4', '6501', '1733039117', '$2y$12$B6BHbJy1JHx/P7u2vPDIVuiO4b6B1qB7n1HiQ0Pz9GcYk9jOgdV86', '2024-11-24 23:20:56', 1, '4UILc3vUbNHSZkFyFYsWyoxqo5xIs4Nl5Jw9O8RKA7qSxznZQeJEd9FNEfaD', 1, NULL, '2024-12-01 07:43:12', '2024-12-01 04:13:12'),
(4, '09191519132', 'امیرعلی', 'حسینی', 2, 1, 1, NULL, '1230945', '456734', '76465476', NULL, '2342305345', 3, 0, 'شهر ری', 'باقرآباد', 'شهر ری روستای باقرآباد ک 32 پلاک 67', '32434235', 'image24831732306151.jpg', 4, 1, '5', NULL, NULL, '$2y$12$o.dzMP9pjS/ooLmxGEXBPuoi5h81mMH633O5vFSY8kDrpMomCZzb6', '2024-11-22 09:42:24', 1, NULL, 4, NULL, '2024-11-22 13:19:30', '2024-11-22 09:49:30'),
(5, '09198526834', 'زهرا', 'محمدی', 2, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2.png', NULL, 1, NULL, '1917', '1732433496', '$2y$12$es0TupRGKcOQndwLnHrwiueaC80EY36HrMiiObWOPkl6ElOtZkyvm', NULL, NULL, NULL, NULL, NULL, '2024-11-26 10:17:29', '2024-11-26 10:17:29'),
(6, '09361111111', 'احمد', 'احمدی', 2, 1, 0, '037', '1223', NULL, NULL, NULL, '034777', 3, 0, NULL, NULL, NULL, NULL, 'image75381732530372.png', 2, 1, '1', NULL, NULL, '$2y$12$p6EsGdo6eSQEpuqdbPXl7O99w0GTXZkkDs.u7u19UCiNp6gs8K.OW', '2024-11-26 07:45:42', 1, NULL, 1, NULL, '2024-11-26 11:15:42', '2024-11-26 07:45:42'),
(7, '09121234567', 'علی', 'احمدی', 2, 1, 0, '1234567890', NULL, NULL, NULL, NULL, NULL, 1, 0, 'تهران', NULL, 'تهران، خیابان آزادی', '1234567891', '1.png', NULL, 1, NULL, NULL, NULL, '$2y$10$KwjQHOEJgPBLjtH9JbxR0OkYsN8MX.GyDj5k82x5t8Kvrs5WDFu9i', NULL, NULL, NULL, NULL, NULL, '2024-11-26 10:17:48', '2024-11-26 10:17:48'),
(8, '09122223344', 'مریم', 'رضایی', 2, 2, 0, '0987654321', NULL, NULL, NULL, NULL, NULL, 2, 0, 'اصفهان', NULL, 'اصفهان، خیابان کاوه', '1234567892', '2.png', NULL, 1, NULL, NULL, NULL, '$2y$10$1jLkO8G9XlXgj6OGTcWSeuuH98.k2C9jU38h0bVz5Z7fS.oO/mDG.', NULL, NULL, NULL, NULL, NULL, '2024-11-26 10:17:32', '2024-11-26 10:17:32'),
(9, '09123334455', 'حسن', 'کریمی', 2, 1, 0, '1122334455', NULL, NULL, NULL, NULL, NULL, 3, 0, 'شیراز', NULL, 'شیراز، خیابان زند', '1234567893', '1.png', NULL, 1, NULL, NULL, NULL, '$2y$12$EbyIGAhmEt27wMRqclGHE.iInlLxZmNs1r9AVgUiPQCYCBvQyzere', NULL, NULL, NULL, 1, NULL, '2024-11-26 11:15:19', '2024-11-26 07:45:19'),
(10, '09124445566', 'فاطمه', 'محمدی', 2, 2, 0, '2233445566', NULL, NULL, NULL, NULL, NULL, 4, 0, 'مشهد', NULL, 'مشهد، خیابان امام رضا', '1234567894', '2.png', NULL, 1, NULL, NULL, NULL, '$2y$10$QZokjkH3yVkw.GZhgWZ/q.ujm7MQypjN2HFt.L6QGf4xV64hhrWJK', NULL, NULL, NULL, NULL, NULL, '2024-11-26 10:17:34', '2024-11-26 10:17:34'),
(11, '09125556677', 'سعید', 'عباسی', 2, 1, 0, '3344556677', NULL, NULL, NULL, NULL, NULL, 5, 0, 'تبریز', NULL, 'تبریز، میدان ساعت', '1234567895', '1.png', NULL, 1, NULL, NULL, NULL, '$2y$10$yWu1iRcgyOQYlBzSC9FOCOZ/xZTnpRKHniVTA4vsGsmmlkcImU8fq', NULL, NULL, NULL, NULL, NULL, '2024-11-26 10:17:46', '2024-11-26 10:17:46'),
(12, '09126667788', 'زهرا', 'اکبری', 2, 2, 0, '4455667788', NULL, NULL, NULL, NULL, NULL, 6, 0, 'اهواز', NULL, 'اهواز، خیابان نادری', '1234567896', '2.png', NULL, 1, NULL, NULL, NULL, '$2y$10$4fJbE9LdkBW3UWePZ9z06OPD4Zh7BdOZub1Drnm92FnIo/SJHaa9u', NULL, NULL, NULL, NULL, NULL, '2024-11-26 10:17:35', '2024-11-26 10:17:35'),
(13, '09127778899', 'رضا', 'حسینی', 2, 1, 0, '5566778899', NULL, NULL, NULL, NULL, NULL, 7, 0, 'کرمانشاه', NULL, 'کرمانشاه، میدان آزادی', '1234567897', '1.png', NULL, 1, NULL, NULL, NULL, '$2y$12$EknAzwYLGCHtK.nAABve7O0gPtALirR/ZOKk1jcvsOFHWeuXTU1Wu', '2024-11-26 08:00:03', NULL, NULL, 1, NULL, '2024-11-26 11:30:03', '2024-11-26 08:00:03'),
(14, '09128889900', 'نرگس', 'امیری', 2, 2, 0, '6677889900', NULL, NULL, NULL, NULL, NULL, 8, 0, 'زاهدان', NULL, 'زاهدان، خیابان دانشگاه', '1234567898', '2.png', NULL, 1, NULL, NULL, NULL, '$2y$10$FtCDaX/jqJ.oXtfBy7RSHuvD/UP5rwUfsM9R82r6pCTqEs3dPHUgO', NULL, NULL, NULL, NULL, NULL, '2024-11-26 10:17:36', '2024-11-26 10:17:36'),
(15, '09129990011', 'محمد', 'نوری', 2, 1, 0, '7788990011', NULL, NULL, NULL, NULL, NULL, 9, 0, 'کرمان', NULL, 'کرمان، خیابان شهید بهشتی', '1234567899', '1.png', NULL, 1, NULL, NULL, NULL, '$2y$12$LG2qM61g/MSkKTkv1VyA/.b8sWIuDGUaQ2IXeGyufHVClXoz4cBAS', '2024-11-26 07:55:22', NULL, NULL, 1, NULL, '2024-11-26 11:25:22', '2024-11-26 07:55:22'),
(16, '09130001122', 'سارا', 'عسگری', 2, 2, 0, '8899001122', NULL, NULL, NULL, NULL, NULL, 10, 0, 'ارومیه', NULL, 'ارومیه، میدان گولزار', '1234567800', '2.png', NULL, 1, NULL, NULL, NULL, '$2y$10$1MG94zBxhZzvs.2Wi.kZYeBLYbSGIf2P2j1hhqTKBIc3TY77KrU4W', NULL, NULL, NULL, NULL, NULL, '2024-11-26 10:17:36', '2024-11-26 10:17:36'),
(17, '0919852683911', 'm', 'e', 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '9044', '1732707671', '$2y$12$gHRyrf0Km55WNb27wdVosun56QeIQmX1QUeFc4Wf3TlprbCo45U2q', NULL, NULL, NULL, NULL, NULL, '2024-11-27 14:00:46', '2024-11-27 14:00:46'),
(18, '09198111102', 'صادق', 'شیری', 2, 1, 0, '4032228035', NULL, NULL, NULL, NULL, '32242424', NULL, 0, NULL, NULL, NULL, NULL, 'image36341732784026.jpg', 2, 1, NULL, '8804', '1733077179', NULL, NULL, 1, NULL, 1, NULL, '2024-12-01 18:17:34', '2024-12-01 14:47:34'),
(19, '09192510347', 'رویا', 'روشن', 2, 2, 0, '12345678', '45646-45646', '345346-3535-3566', '4564-45646', '456456456', '123-45646', 35, 8, 'لواسان', NULL, 'لواسان خ روحانی ک 34 پلاک 23', '3454', 'image86861733076665.jpg', 4, 1, '0', NULL, NULL, '$2y$12$3cjulqbjneUXiAqxuygmcuWhO7GWk0fp/26lRJwyuKEmmB8M94QYG', '2024-12-01 15:16:23', 1, NULL, 19, NULL, '2024-12-01 19:52:31', '2024-12-01 16:22:31'),
(20, '09191419424', 'علیرضا', 'احمدی', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image14241733082345.jpg', NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2024-12-01 19:47:28', '2024-12-01 16:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_notes`
--

CREATE TABLE `user_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promoter_id` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_notes`
--

INSERT INTO `user_notes` (`id`, `promoter_id`, `creator_id`, `content`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(14, 3, 1, 'مبلغ دارای 4 ستاره میباشد', 1, NULL, '2024-11-20 09:58:17', '2024-11-20 09:58:17'),
(18, 2, 1, 'این مبلغ 5 ستاره دارد', NULL, NULL, NULL, NULL),
(17, 2, 1, 'خانم عبادی در زمینه فعالیت های فرهنگی و بسیج فعالیت دارند', NULL, NULL, NULL, NULL),
(22, 4, 1, 'یک مبلغ حوزه ضمن اشاره به حدیثی از امام کاظم(ع) در رابطه با امر به معروف تصریح کرد: ایشان می‌فرمایند: «امر به معروف کنید، از منکر بازدارید که اگر این کار را انجام ندهید اشرار بر شما حاکم خواهند شد و آنگاه خوبان شما هر چقدر هم که دعا کنند، دعاهای آنان مستجاب نمی‌­شود.»', NULL, NULL, '2024-11-22 09:23:11', NULL),
(21, 4, 1, 'دهه کرامت یعنی چه ؟ ولادت باسعادت کریمه اهل بیت حضرت فاطمه معصومه سلام الله علیهاو برادر گرامیشان و آغاز دهه مبارک و میمون کرامت بر همگان مبارک باد. دهه کرامت،دهه اول ماه ذی‌العقده است و آغازش با ولادت حضرت معصومه(علیهالسلام) و پایانش با ولادت حضرت ابوالحسن علی بن موسی‌الرضا(علیه السلام) می‌باشد.', NULL, NULL, '2024-11-22 09:23:11', NULL),
(23, 6, 1, 'در صورت همکاری بیش از آنچه بتوان را در اختیار همکاران برای فرهنگی قرار میدهیم', NULL, NULL, '2024-11-24 23:26:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_notif`
--

CREATE TABLE `user_notif` (
  `id` int(11) NOT NULL,
  `promoter_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `display` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `user_notif`
--

INSERT INTO `user_notif` (`id`, `promoter_id`, `creator_id`, `content`, `status_id`, `display`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 19, 1, 'سلام خیلی خوش  آمدید همکار محترم !!!', 1, 0, NULL, '2024-12-01 19:51:46', '2024-12-01 16:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_promotions`
--

CREATE TABLE `user_promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promoter_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `village` varchar(255) DEFAULT NULL,
  `place_name` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_promotions`
--

INSERT INTO `user_promotions` (`id`, `promoter_id`, `position_id`, `city_id`, `province_id`, `city`, `village`, `place_name`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 2, 2, 'تهران', NULL, 'مسجد الزهرا', NULL, NULL, NULL, NULL),
(6, 4, 4, 2, NULL, 'ورامین', NULL, 'مدرسه شرافت', NULL, NULL, NULL, NULL),
(7, 4, 2, 3, NULL, 'شهرری', 'باقر آباد', 'مسجد امام حسین', NULL, NULL, NULL, NULL),
(8, 6, 4, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, 3, NULL, 19, NULL, NULL, 'دانشگاه کهک', NULL, NULL, NULL, NULL),
(18, 19, 4, NULL, 19, 'دستجرد', 'دستجرد', 'مدرسه مهدویت', NULL, NULL, NULL, NULL);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_keyword`
--
ALTER TABLE `blog_keyword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_subjects`
--
ALTER TABLE `blog_subjects`
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
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_agree`
--
ALTER TABLE `promotion_agree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_agree_item`
--
ALTER TABLE `promotion_agree_item`
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
-- Indexes for table `promotion_ritual`
--
ALTER TABLE `promotion_ritual`
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
-- Indexes for table `ticket_items`
--
ALTER TABLE `ticket_items`
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
-- Indexes for table `user_notes`
--
ALTER TABLE `user_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notif`
--
ALTER TABLE `user_notif`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `base_cities`
--
ALTER TABLE `base_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `base_statuses`
--
ALTER TABLE `base_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `base_villages`
--
ALTER TABLE `base_villages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_keyword`
--
ALTER TABLE `blog_keyword`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_subjects`
--
ALTER TABLE `blog_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cultural_users`
--
ALTER TABLE `cultural_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `promotion_agree`
--
ALTER TABLE `promotion_agree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `promotion_agree_item`
--
ALTER TABLE `promotion_agree_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `promotion_positions`
--
ALTER TABLE `promotion_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotion_reports`
--
ALTER TABLE `promotion_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `promotion_ritual`
--
ALTER TABLE `promotion_ritual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rituals`
--
ALTER TABLE `rituals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ritual_reports`
--
ALTER TABLE `ritual_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `support_types`
--
ALTER TABLE `support_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_users`
--
ALTER TABLE `support_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_items`
--
ALTER TABLE `ticket_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tribunes`
--
ALTER TABLE `tribunes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_notes`
--
ALTER TABLE `user_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_notif`
--
ALTER TABLE `user_notif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_promotions`
--
ALTER TABLE `user_promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

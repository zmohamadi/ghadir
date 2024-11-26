-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 26, 2024 at 11:20 AM
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
(1, 'آقا', 'male', 1, '2024-07-06 17:52:35', '2024-07-06 17:52:35', NULL),
(2, 'خانم', 'femail', 1, '2024-07-06 17:52:35', '2024-07-06 17:52:35', NULL);

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
(1, 'فارسی', 'fa', 'rtl', 'fa.png', 1, NULL, '2024-07-06 17:52:35', '2024-07-06 17:52:35'),
(2, 'English', 'en', 'ltr', 'en.png', 0, NULL, '2024-07-06 17:52:35', '2024-07-06 17:52:35'),
(3, 'عربی', 'ar', 'rtl', 'ar.png', 0, NULL, '2024-07-06 17:52:35', '2024-07-06 17:52:35');

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
(2, 'فعال', NULL, 1, '1', 'theme-10', 1, NULL, NULL, NULL),
(3, 'نیمه فعال', NULL, 1, '2', 'theme-24', 1, NULL, NULL, NULL),
(4, 'غیرفعال', NULL, 1, '0', NULL, 1, NULL, NULL, NULL),
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
(15, 'ثبت شد', NULL, 14, '2', 'theme-200', 1, NULL, NULL, NULL),
(16, 'تایید', NULL, 14, '1', 'theme-10', 1, NULL, NULL, NULL),
(17, 'رد', NULL, 14, '0', 'theme-24', 1, NULL, NULL, NULL),
(18, 'حذف', NULL, 14, '-1', 'theme-24', 1, NULL, NULL, NULL),
(19, 'وضعیت پاسخ تیکت', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(20, 'در انتظار پاسخ', NULL, 19, '0', 'theme-23', 1, NULL, NULL, NULL),
(21, 'در حال بررسی', NULL, 19, '1', 'theme-200', 1, NULL, NULL, NULL),
(22, 'پاسخ داده شد', NULL, 19, '2', 'theme-10', 1, NULL, NULL, NULL),
(23, 'بسته شد', NULL, 19, '3', 'theme-24', 1, NULL, NULL, NULL),
(24, 'وضعیت اولویت پاسخ به تیکت', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(25, 'کم', NULL, 24, '1', 'theme-200', 1, NULL, NULL, NULL),
(26, 'متوسط', NULL, 24, '2', 'theme-10', 1, NULL, NULL, NULL),
(27, 'زیاد', NULL, 24, '3', 'theme-1theme-24', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_statuses1`
--

CREATE TABLE `base_statuses1` (
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
-- Dumping data for table `base_statuses1`
--

INSERT INTO `base_statuses1` (`id`, `title_fa`, `title_en`, `group_id`, `code`, `color`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'وضعیت فعالیت', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, 'فعال', NULL, 1, '1', 'theme-10', 1, NULL, NULL, NULL),
(3, 'نیمه فعال', NULL, 1, '2', 'theme-24', 1, NULL, NULL, NULL),
(4, 'غیرفعال', NULL, 1, '0', NULL, 1, NULL, NULL, NULL),
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
(15, 'تایید', NULL, 14, '1', 'theme-10', 1, NULL, NULL, NULL),
(16, 'رد', NULL, 14, '0', 'theme-24', 1, NULL, NULL, NULL),
(17, 'حذف', NULL, 14, '-1', 'theme-24', 1, NULL, NULL, NULL),
(18, 'وضعیت تیکت', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(19, 'پاسخ داده شد', NULL, 18, '1', 'theme-10', 1, NULL, NULL, NULL),
(20, 'در انتظار پاسخ', NULL, 18, '0', 'theme-24', 1, NULL, NULL, NULL),
(21, 'وضعیت پاسخ تیکت', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(22, 'باز', NULL, 21, '1', 'theme-10', 1, NULL, NULL, NULL),
(23, 'بسته', NULL, 21, '0', 'theme-10', 1, NULL, NULL, NULL);

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
(1, 'معارف و فرهنگ', NULL, 1, NULL, 'image53541732530719.jpg', 'image76981732530740.jpg###', NULL, NULL, NULL, '<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>', 0, 0, 0, 0, 0, 'fa', 1, NULL, '2024-11-25 07:03:53', '2024-11-25 07:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `blogs1`
--

CREATE TABLE `blogs1` (
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
  `count_comment` int(11) DEFAULT 0 COMMENT 'تعداد پیام',
  `count_comment_not_check` int(11) DEFAULT 0 COMMENT 'تعداد پیام بررسی نشده',
  `count_view` int(11) DEFAULT 0 COMMENT 'تعداد بازدید',
  `lang` varchar(2) DEFAULT 'fa' COMMENT 'زبان',
  `status_id` int(11) DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs1`
--

INSERT INTO `blogs1` (`id`, `title`, `subject_id`, `creator_id`, `editor_id`, `thumb`, `img`, `video`, `document`, `summary`, `text`, `count_comment`, `count_comment_not_check`, `count_view`, `lang`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ایام فاطمیه', NULL, 1, 1, 'image70231732224268.jpg', 'image39041732224446.jpg###', 'video93481732224412.mp4###', NULL, NULL, '<p><span lang=\"fa\" dir=\"rtl\">ایّام فاطمیّه، <strong>ایام</strong> عزاداری شیعیان برای درگذشت فاطمه زهرا (۱۳ جمادی‌الاول – ۳ جمادی‌الثانی) است. از آنجایی که در روایات شیعه، دو تاریخ برای درگذشت فاطمه زهرا وجود دارد، به فاصلهٔ بین این دو تاریخ یعنی ۱۳ جمادی‌الاول تا ۳ جمادی‌الثانی، <strong>ایام فاطمیه</strong> گفته می‌شود.ایّام فاطمیّه، <strong>ایام</strong> عزاداری شیعیان برای درگذشت فاطمه زهرا (۱۳ جمادی‌الاول – ۳ جمادی‌الثانی) است. از آنجایی که در روایات شیعه، دو تاریخ برای درگذشت فاطمه زهرا وجود دارد، به فاصلهٔ بین این دو تاریخ یعنی ۱۳ جمادی‌الاول تا ۳ جمادی‌الثانی، <strong>ایام فاطمیه</strong> گفته می‌شود.ایّام فاطمیّه، <strong>ایام</strong> عزاداری شیعیان برای درگذشت فاطمه زهرا (۱۳ جمادی‌الاول – ۳ جمادی‌الثانی) است. از آنجایی که در روایات شیعه، دو تاریخ برای درگذشت فاطمه زهرا وجود دارد، به فاصلهٔ بین این دو تاریخ یعنی ۱۳ جمادی‌الاول تا ۳ جمادی‌الثانی، <strong>ایام فاطمیه</strong> گفته می‌شود.ایّام فاطمیّه، <strong>ایام</strong> عزاداری شیعیان برای درگذشت فاطمه زهرا (۱۳ جمادی‌الاول – ۳ جمادی‌الثانی) است. از آنجایی که در روایات شیعه، دو تاریخ برای درگذشت فاطمه زهرا وجود دارد، به فاصلهٔ بین این دو تاریخ یعنی ۱۳ جمادی‌الاول تا ۳ جمادی‌الثانی، <strong>ایام فاطمیه</strong> گفته می‌شود.</span></p>', 0, 0, 0, 'fa', 1, NULL, '2024-11-21 18:54:31', '2024-11-21 18:57:31');

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
(1, 1, NULL, 1, 0, 'بهترین مقاله و درک از مبحث فرهنگی', 1, 1, 'fa', 1, NULL, '2024-11-25 07:04:18', '2024-11-25 07:04:18'),
(2, 1, NULL, 1, 1, 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 1, 1, 'fa', 1, NULL, '2024-11-25 07:04:27', '2024-11-25 07:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments1`
--

CREATE TABLE `blog_comments1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` int(11) DEFAULT NULL COMMENT 'شناسه کاربر ثبت کننده(فرستنده پیام)',
  `editor_id` int(11) DEFAULT NULL COMMENT 'شناسه کاربر ویرایش کننده',
  `blog_id` int(11) DEFAULT NULL COMMENT 'شناسه محتوا',
  `parent_id` int(11) DEFAULT 0 COMMENT 'شناسه پیام اصلی',
  `comment` text DEFAULT NULL COMMENT 'اظهار نظر',
  `reply` text DEFAULT NULL COMMENT 'پاسخ',
  `confirmer_id` int(11) DEFAULT 1 COMMENT 'شناسه پرسنل برای تأیید',
  `confirm_id` int(11) DEFAULT 2 COMMENT 'شناسه وضعیت تأیید، از جدول وضعیت ها',
  `lang` varchar(2) DEFAULT 'fa' COMMENT 'زبان',
  `status_id` int(11) DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments1`
--

INSERT INTO `blog_comments1` (`id`, `creator_id`, `editor_id`, `blog_id`, `parent_id`, `comment`, `reply`, `confirmer_id`, `confirm_id`, `lang`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 0, 'مبلغین گرامی نظر خود را بفرمایید', NULL, 1, 1, 'fa', 1, NULL, '2024-11-21 18:55:06', '2024-11-21 18:55:06'),
(2, 2, NULL, 1, 0, 'با سلام متن مفید و خوبی بود . با تشکر', NULL, NULL, 2, 'fa', 1, NULL, '2024-11-21 19:04:08', '2024-11-21 19:04:08'),
(3, 4, NULL, 1, 1, 'تشکر', NULL, NULL, 2, 'fa', 1, NULL, '2024-11-22 17:24:46', '2024-11-22 17:24:46');

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
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `promotion_report_id` int(11) DEFAULT NULL,
  `promoter_id` int(11) DEFAULT NULL,
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

INSERT INTO `courses` (`id`, `subject`, `promotion_id`, `promotion_report_id`, `promoter_id`, `duration`, `audiencetype_id`, `people_count`, `place_name`, `city_id`, `province_id`, `city`, `village`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'دوره معرفی غدیر', 3, 1, 2, '40', 2, 200, 'مدرسه اهل بیت', 3, 2, 'شهر ری', 'روستای خانی آباد', 1, NULL, NULL, NULL);

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
(5, 6, 'خانم', 'مرادی', 'مدیریت', 2, NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Table structure for table `migrations1`
--

CREATE TABLE `migrations1` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations1`
--

INSERT INTO `migrations1` (`id`, `migration`, `batch`) VALUES
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
(15, '2024_11_03_220838_create_tickets_table', 1),
(16, '2024_11_03_220839_create_ticket_subjects_table', 1),
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
(27, '2024_11_03_220830_create_blogs_table', 2);

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
  `creator_id` int(11) DEFAULT NULL,
  `editor_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `year`, `photo`, `comments`, `commitments`, `register_status`, `report_status`, `has_course`, `has_tribune`, `status_id`, `user_count`, `report_count`, `sum_support`, `creator_id`, `editor_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'دهه ی فاطمیه', 1403, 'image59661731845420.jpg', 'در فرهنگ عامه، به دهه دوم جمادی‌الاول، از دهم تا بیستم آن ماه که بر اساس روایت ۷۵ روز درگذشت فاطمه در میان آن روزها واقع شده‌است، «دهه اول فاطمیه» و به دهه اول جمادی‌الثانی، از اول تا دهم جمادی‌الثانی که بنا به روایت ۹۵ روز، درگذشت فاطمه در میان این روزها اتفاق افتاده «دهه دوم فاطمیه» می‌گویند.', 'تعهدات ستاد دارای این مواردمیباشد.در فرهنگ عامه، به دهه دوم جمادی‌الاول، از دهم تا بیستم آن ماه که بر اساس روایت ۷۵ روز درگذشت فاطمه در میان آن روزها واقع شده‌است، «دهه اول فاطمیه» و به دهه اول جمادی‌الثانی، از اول تا دهم جمادی‌الثانی که بنا به روایت ۹۵ روز، درگذشت فاطمه در میان این روزها اتفاق افتاده «دهه دوم فاطمیه» می‌گویند.', 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, NULL, '2024-11-17 10:40:38', '2024-11-21 00:46:42'),
(2, 'نیمه شعبان', 1404, 'image41621731845468.jpg', 'نیمهٔ شعبان (۱۵ شعبان در گاهشماری هجری قمری) یکی از جشن‌های مسلمانان شیعه است که هم‌زمان با زادروز امام دوازدهم شیعیان، حجت بن حسن است. دعاهای زیادی مانند دعای کمیل در این شب خوانده می‌شود. اهل سنت شب نیمه شعبان را «شب برات» نامیده و آن را به عنوان روز انزال قرآن به شب زنده‌داری و دعا می‌پردازند.', NULL, 1, 1, 0, 1, 1, 0, 0, 2, 1, 1, NULL, '2024-11-17 10:41:18', '2024-11-25 06:59:26'),
(3, 'عید غدیر', 1403, 'image3991731845572.jpg', 'واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.', 'واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2024-11-17 10:43:02', '2024-11-21 00:52:43'),
(4, 'دهه کرامت', 1403, 'image9321732305869.jpg', 'دهه کرامت یعنی چه ؟ ولادت باسعادت کریمه اهل بیت حضرت فاطمه معصومه سلام الله علیهاو برادر گرامیشان و آغاز دهه مبارک و میمون کرامت بر همگان مبارک باد. دهه کرامت،دهه اول ماه ذی‌العقده است و آغازش با ولادت حضرت معصومه(علیهالسلام) و پایانش با ولادت حضرت ابوالحسن علی بن موسی‌الرضا(علیه السلام) می‌باشد.', 'تعهدات پیامرسان غدیر.', 1, 1, 0, 1, 1, 1, 1, 2, 1, 1, NULL, '2024-11-22 16:34:00', '2024-11-25 07:28:40'),
(5, 'مدیریت فرهنگی', 1355, 'image60611732530484.jpg', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 'بسیار متعهد', 1, 0, 0, 0, 1, 1, 0, 0, 1, NULL, NULL, '2024-11-25 06:58:18', '2024-11-25 07:35:44');

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
(1, 2, 3, 1, 1, NULL, '2024-11-21 04:19:33', '2024-11-21 00:49:33'),
(2, 4, 4, NULL, 0, NULL, '2024-11-22 20:46:03', '2024-11-22 17:16:03'),
(3, 2, 5, NULL, NULL, NULL, '2024-11-25 11:05:44', '2024-11-25 07:35:44');

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
(5, 3, 1, 5, 2);

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
  `status_id` int(11) DEFAULT NULL,
  `confirm_id` int(1) DEFAULT 1,
  `level_id` int(1) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotion_reports`
--

INSERT INTO `promotion_reports` (`id`, `promotion_id`, `promoter_id`, `photo`, `status_id`, `confirm_id`, `level_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'image63541732159360.jpg', NULL, 1, 0, NULL, '2024-11-21 00:52:14', '2024-11-21 00:52:43'),
(2, 4, 4, 'image70381732308440.jpg', NULL, 1, 0, NULL, '2024-11-22 17:18:22', '2024-11-22 17:18:22');

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
(16, 1, 5);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `ritual_id` int(11) DEFAULT NULL,
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

INSERT INTO `ritual_reports` (`id`, `ritual_id`, `promotion_report_id`, `promotion_id`, `promoter_id`, `description`, `city_id`, `place_name`, `province_id`, `city`, `village`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 4, 1, 3, 2, 'توضیحات شعائر که مبلغ ثبت میکند را می توانیم در این قسمت ثبت کنیم و قابل مشاهده میباشد .', 3, 'مسجد امام زمان', 1, 'کهک', NULL, 1, NULL, NULL, NULL),
(3, 3, 2, 4, 4, 'دهه کرامت یعنی چه ؟ ولادت باسعادت کریمه اهل بیت حضرت فاطمه معصومه سلام الله علیهاو برادر گرامیشان و آغاز دهه مبارک و میمون کرامت بر همگان مبارک باد. دهه کرامت،دهه اول ماه ذی‌العقده است و آغازش با ولادت حضرت معصومه(علیهالسلام) و پایانش با ولادت حضرت ابوالحسن علی بن موسی‌الرضا(علیه السلام) می‌باشد.', 3, 'مسجد امام حسین', 2, 'شهر ری', 'باقر اباد', 1, NULL, NULL, NULL);

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
(1, 'کتاب\nبروشور\nپرچم', NULL, 1, 3, 'واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.', NULL, NULL, 1, NULL, '2024-11-17 10:52:10', '2024-11-19 15:47:26'),
(2, NULL, '500000', 2, 2, 'واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.', NULL, NULL, 1, NULL, '2024-11-17 10:52:31', '2024-11-17 10:52:31'),
(3, 'بن خرید', NULL, 3, 1, 'واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.', NULL, NULL, 1, NULL, '2024-11-17 10:53:32', '2024-11-17 10:53:32'),
(4, NULL, '1000000', 2, 4, 'دهه کرامت یعنی چه ؟ ولادت باسعادت کریمه اهل بیت حضرت فاطمه معصومه سلام الله علیهاو برادر گرامیشان و آغاز دهه مبارک و میمون کرامت بر همگان مبارک باد. دهه کرامت،دهه اول ماه ذی‌العقده است و آغازش با ولادت حضرت معصومه(علیهالسلام) و پایانش با ولادت حضرت ابوالحسن علی بن موسی‌الرضا(علیه السلام) می‌باشد.', NULL, NULL, 1, NULL, '2024-11-22 16:35:51', '2024-11-22 16:35:51'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-25 06:58:44', '2024-11-25 06:58:44'),
(6, 'ملزومات', '150000', 3, 2, 'در همین حد\nلورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', NULL, NULL, 1, NULL, '2024-11-25 06:59:26', '2024-11-25 06:59:26'),
(7, 'ldm\nosonvs\nns', NULL, NULL, 4, '/.saxasmlm', NULL, NULL, 1, NULL, '2024-11-25 07:28:40', '2024-11-25 07:28:40');

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
(10, 6, 7, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `tickets` (`id`, `user_id`, `subject_id`, `priority_status_id`, `reply_status_id`, `score`, `lang`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 2, 0, NULL, 'fa', 1, NULL, '2024-11-25 08:06:16', '2024-11-25 08:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `tickets1`
--

CREATE TABLE `tickets1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promoter_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `reply_creator` int(11) DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `status_reply` int(1) DEFAULT 0,
  `status_ticket` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets1`
--

INSERT INTO `tickets1` (`id`, `promoter_id`, `subject_id`, `title`, `content`, `photo`, `reply`, `reply_creator`, `status_id`, `status_reply`, `status_ticket`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'درخواست همکاری', 'سلام وقت بخیر من در خواست همکاری در ستاد غدیر را دارم.', 'image35271732223226.jpg', 'سلام با شما تماس میگیریم .', 1, 1, 1, 1, NULL, '2024-11-21 22:22:38', '2024-11-21 22:22:38');

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
(1, 2, 1, 'پاسخ شما', NULL, 1, NULL, '2024-11-25 08:06:16', '2024-11-25 08:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_subjects`
--

CREATE TABLE `ticket_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_fa` varchar(200) DEFAULT NULL COMMENT 'عنوان',
  `creator_id` int(11) DEFAULT NULL COMMENT 'شناسه کاربر ثبت کننده',
  `editor_id` int(11) DEFAULT NULL COMMENT 'شناسه کاربر ویرایش کننده',
  `count_parent` int(11) NOT NULL DEFAULT 0 COMMENT 'تعداد تیکت های والد (شروع تیکت)',
  `count_parent_awaiting` int(11) NOT NULL DEFAULT 0 COMMENT 'تعداد تیکت های والد که وضعیت درانتظار پاسخ دارند (شروع تیکت)',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_subjects`
--

INSERT INTO `ticket_subjects` (`id`, `title_fa`, `creator_id`, `editor_id`, `count_parent`, `count_parent_awaiting`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'پشتیبانی', 1, NULL, 0, 0, 1, NULL, '2024-11-25 07:13:19', '2024-11-25 07:13:19'),
(2, 'پاسخ گویی فوری', 1, NULL, 0, 0, 1, NULL, '2024-11-25 07:13:19', '2024-11-25 07:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_subjects1`
--

CREATE TABLE `ticket_subjects1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `status_id` int(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_subjects1`
--

INSERT INTO `ticket_subjects1` (`id`, `title`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ثبت نام', 1, NULL, NULL, NULL),
(2, 'گزارش', 1, NULL, NULL, NULL),
(3, 'همکاری', 1, NULL, NULL, NULL);

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

INSERT INTO `tribunes` (`id`, `subject`, `promotion_report_id`, `promoter_id`, `promotion_id`, `duration`, `audiencetype_id`, `people_count`, `place_name`, `city_id`, `province_id`, `city`, `village`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'اشنایی با غدیر', 1, 2, 3, '30', 3, 100, 'مسجد امام زمان', 1, 1, 'کهک', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
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
  `education_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1,
  `level_id` int(11) DEFAULT NULL,
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

INSERT INTO `users` (`id`, `mobile`, `firstname`, `lastname`, `role_id`, `gender_id`, `is_not_citizen`, `codemeli`, `khadamat_code`, `tablighat_office_code`, `tablighat_organization_code`, `ovghaf_code`, `bank_account_number`, `city_id`, `city`, `village`, `address`, `postal_code`, `photo`, `education_id`, `status_id`, `level_id`, `confirm_code`, `confirm_time`, `password`, `last_login`, `creator_id`, `remember_token`, `editor_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '09191964745', 'پرسنل', 'غدیر', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image88381731844742.png', NULL, 1, NULL, '9732', '1732513440', '$2y$12$tEr5zN7Fx/GnPu/6rrc1gucC9PqYm9EQvrD2PHmk2qRNBK/6GlKT2', '2024-11-25 07:39:13', NULL, 'rFAQkziZmSPvegHoouznFNdbryBhtUclJ3XDTfaiGsR6K0Xr4zIK7jIFJqNy', 1, NULL, '2024-11-25 11:33:56', '2024-11-25 11:33:56'),
(2, '09198526839', 'مریم', 'عبادی', 2, 2, 0, '1234567', '122324', '44444', '33333', '222222222', '43535355-34534535', 1, 'قم', NULL, 'قم میدان رسالت', '23424234-343', 'image8961731845105.png', 1, 1, 5, NULL, NULL, '$2y$12$5ov2vBu7ueo7Th6MK.0kCusu32bIkvkdHSZlkX..RJDmDL7tnctdC', '2024-11-25 08:04:05', 1, '83zW5x9DZQjGiF67fU1RoAOHY2NGVmMqknQQVUQUpAF1CB8PoyGRWR2RAGKd', 1, NULL, '2024-11-25 11:34:05', '2024-11-25 08:04:05'),
(3, '09191519138', 'الیاس', 'مصباح', 2, 1, 1, NULL, NULL, NULL, '345345', '3534534', '345345345345', 3, 'تهران', NULL, NULL, '345345', 'image63481731845052.png', 2, 1, 4, '8705', '1732117465', '$2y$12$B6BHbJy1JHx/P7u2vPDIVuiO4b6B1qB7n1HiQ0Pz9GcYk9jOgdV86', '2024-11-25 06:50:56', 1, '4UILc3vUbNHSZkFyFYsWyoxqo5xIs4Nl5Jw9O8RKA7qSxznZQeJEd9FNEfaD', 1, NULL, '2024-11-25 10:21:41', '2024-11-25 10:21:41'),
(4, '09191519132', 'امیرعلی', 'حسینی', 2, 1, 1, NULL, '1230945', '456734', '76465476', NULL, '2342305345', 3, 'شهر ری', 'باقرآباد', 'شهر ری روستای باقرآباد ک 32 پلاک 67', '32434235', 'image24831732306151.jpg', 4, 1, 5, NULL, NULL, '$2y$12$o.dzMP9pjS/ooLmxGEXBPuoi5h81mMH633O5vFSY8kDrpMomCZzb6', '2024-11-22 17:12:24', 1, NULL, 4, NULL, '2024-11-22 20:49:30', '2024-11-22 17:19:30'),
(5, '09198526834', '09198526834', '09198526834', 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '1917', '1732433496', '$2y$12$es0TupRGKcOQndwLnHrwiueaC80EY36HrMiiObWOPkl6ElOtZkyvm', NULL, NULL, NULL, NULL, NULL, '2024-11-25 10:20:34', '2024-11-25 10:20:34'),
(6, '09361111111', 'احمد', 'احمدی', 2, 1, 0, '037', '1223', NULL, NULL, NULL, '034777', 3, NULL, NULL, NULL, NULL, 'image75381732530372.png', 2, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2024-11-25 10:26:21', '2024-11-25 06:56:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_notes`
--

CREATE TABLE `user_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promoter_id` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_notes`
--

INSERT INTO `user_notes` (`id`, `promoter_id`, `creator_id`, `content`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(14, 3, 1, 'مبلغ دارای 4 ستاره میباشد', 1, NULL, '2024-11-20 17:28:17', '2024-11-20 17:28:17'),
(18, 2, 1, 'این مبلغ 5 ستاره دارد', NULL, NULL, NULL, NULL),
(17, 2, 1, 'خانم عبادی در زمینه فعالیت های فرهنگی و بسیج فعالیت دارند', NULL, NULL, NULL, NULL),
(22, 4, 1, 'یک مبلغ حوزه ضمن اشاره به حدیثی از امام کاظم(ع) در رابطه با امر به معروف تصریح کرد: ایشان می‌فرمایند: «امر به معروف کنید، از منکر بازدارید که اگر این کار را انجام ندهید اشرار بر شما حاکم خواهند شد و آنگاه خوبان شما هر چقدر هم که دعا کنند، دعاهای آنان مستجاب نمی‌­شود.»', NULL, NULL, '2024-11-22 16:53:11', NULL),
(21, 4, 1, 'دهه کرامت یعنی چه ؟ ولادت باسعادت کریمه اهل بیت حضرت فاطمه معصومه سلام الله علیهاو برادر گرامیشان و آغاز دهه مبارک و میمون کرامت بر همگان مبارک باد. دهه کرامت،دهه اول ماه ذی‌العقده است و آغازش با ولادت حضرت معصومه(علیهالسلام) و پایانش با ولادت حضرت ابوالحسن علی بن موسی‌الرضا(علیه السلام) می‌باشد.', NULL, NULL, '2024-11-22 16:53:11', NULL),
(23, 6, 1, 'در صورت همکاری بیش از آنچه بتوان را در اختیار همکاران برای فرهنگی قرار میدهیم', NULL, NULL, '2024-11-25 06:56:21', NULL);

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
(8, 6, 4, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Indexes for table `base_statuses1`
--
ALTER TABLE `base_statuses1`
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
-- Indexes for table `blogs1`
--
ALTER TABLE `blogs1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments1`
--
ALTER TABLE `blog_comments1`
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
-- Indexes for table `migrations1`
--
ALTER TABLE `migrations1`
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
-- Indexes for table `tickets1`
--
ALTER TABLE `tickets1`
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
-- Indexes for table `ticket_subjects1`
--
ALTER TABLE `ticket_subjects1`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `base_statuses1`
--
ALTER TABLE `base_statuses1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `base_villages`
--
ALTER TABLE `base_villages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs1`
--
ALTER TABLE `blogs1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_comments1`
--
ALTER TABLE `blog_comments1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cultural_users`
--
ALTER TABLE `cultural_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `migrations1`
--
ALTER TABLE `migrations1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `promotion_agree`
--
ALTER TABLE `promotion_agree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `promotion_agree_item`
--
ALTER TABLE `promotion_agree_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `promotion_positions`
--
ALTER TABLE `promotion_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotion_reports`
--
ALTER TABLE `promotion_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promotion_ritual`
--
ALTER TABLE `promotion_ritual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rituals`
--
ALTER TABLE `rituals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ritual_reports`
--
ALTER TABLE `ritual_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `support_types`
--
ALTER TABLE `support_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_users`
--
ALTER TABLE `support_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets1`
--
ALTER TABLE `tickets1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_items`
--
ALTER TABLE `ticket_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_subjects1`
--
ALTER TABLE `ticket_subjects1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tribunes`
--
ALTER TABLE `tribunes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_notes`
--
ALTER TABLE `user_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_promotions`
--
ALTER TABLE `user_promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

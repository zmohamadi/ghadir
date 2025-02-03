-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 03, 2025 at 10:20 PM
-- Server version: 10.6.20-MariaDB
-- PHP Version: 8.3.15

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
(1, 'عمومی', '', 1, NULL, NULL, NULL),
(2, 'آقایان', '', 1, NULL, NULL, NULL),
(3, 'بانوان', '', 1, NULL, NULL, NULL),
(4, 'نوجوانان', '', 1, NULL, NULL, NULL),
(5, 'جوانان', '', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_cities`
--

CREATE TABLE `base_cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_fa` varchar(50) DEFAULT NULL COMMENT 'نام',
  `province_id` int(11) DEFAULT NULL COMMENT 'شناسه استان',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `base_cities`
--

INSERT INTO `base_cities` (`id`, `name_fa`, `province_id`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'آبادان', 13, 1, NULL, NULL, NULL),
(2, 'آباده', 17, 1, NULL, NULL, NULL),
(3, 'آبدانان', 6, 1, NULL, NULL, NULL),
(4, 'آبیک', 18, 1, NULL, NULL, NULL),
(5, 'آذرشهر', 1, 1, NULL, NULL, NULL),
(6, 'آرادان', 15, 1, NULL, NULL, NULL),
(7, 'آران وبیدگل', 4, 1, NULL, NULL, NULL),
(8, 'آزادشهر', 24, 1, NULL, NULL, NULL),
(9, 'آستارا', 25, 1, NULL, NULL, NULL),
(10, 'آستانه اشرفیه', 25, 1, NULL, NULL, NULL),
(11, 'آشتیان', 28, 1, NULL, NULL, NULL),
(12, 'آغاجاری', 13, 1, NULL, NULL, NULL),
(13, 'آق قلا', 24, 1, NULL, NULL, NULL),
(14, 'آمل', 27, 1, NULL, NULL, NULL),
(15, 'آوج', 18, 1, NULL, NULL, NULL),
(16, 'ابرکوه', 31, 1, NULL, NULL, NULL),
(17, 'ابوموسی', 29, 1, NULL, NULL, NULL),
(18, 'ابهر', 14, 1, NULL, NULL, NULL),
(19, 'اراک', 28, 1, NULL, NULL, NULL),
(20, 'اردبیل', 3, 1, NULL, NULL, NULL),
(21, 'اردستان', 4, 1, NULL, NULL, NULL),
(22, 'اردکان', 31, 1, NULL, NULL, NULL),
(23, 'اردل', 9, 1, NULL, NULL, NULL),
(24, 'ارزوییه', 21, 1, NULL, NULL, NULL),
(25, 'ارسنجان', 17, 1, NULL, NULL, NULL),
(26, 'ارومیه', 2, 1, NULL, NULL, NULL),
(27, 'ازنا', 26, 1, NULL, NULL, NULL),
(28, 'استهبان', 17, 1, NULL, NULL, NULL),
(29, 'اسدآباد', 30, 1, NULL, NULL, NULL),
(30, 'اسفراین', 12, 1, NULL, NULL, NULL),
(31, 'اسکو', 1, 1, NULL, NULL, NULL),
(32, 'اسلام آبادغرب', 22, 1, NULL, NULL, NULL),
(33, 'اسلامشهر', 8, 1, NULL, NULL, NULL),
(34, 'اشتهارد', 5, 1, NULL, NULL, NULL),
(35, 'اشکذر', 31, 1, NULL, NULL, NULL),
(36, 'اشنویه', 2, 1, NULL, NULL, NULL),
(37, 'اصفهان', 4, 1, NULL, NULL, NULL),
(38, 'اصلاندوز', 3, 1, NULL, NULL, NULL),
(39, 'اقلید', 17, 1, NULL, NULL, NULL),
(40, 'البرز', 18, 1, NULL, NULL, NULL),
(41, 'الیگودرز', 26, 1, NULL, NULL, NULL),
(42, 'املش', 25, 1, NULL, NULL, NULL),
(43, 'امیدیه', 13, 1, NULL, NULL, NULL),
(44, 'انار', 21, 1, NULL, NULL, NULL),
(45, 'اندیکا', 13, 1, NULL, NULL, NULL),
(46, 'اندیمشک', 13, 1, NULL, NULL, NULL),
(47, 'اوز', 17, 1, NULL, NULL, NULL),
(48, 'اهر', 1, 1, NULL, NULL, NULL),
(49, 'اهواز', 13, 1, NULL, NULL, NULL),
(50, 'ایجرود', 14, 1, NULL, NULL, NULL),
(51, 'ایذه', 13, 1, NULL, NULL, NULL),
(52, 'ایرانشهر', 16, 1, NULL, NULL, NULL),
(53, 'ایلام', 6, 1, NULL, NULL, NULL),
(54, 'ایوان', 6, 1, NULL, NULL, NULL),
(55, 'بابل', 27, 1, NULL, NULL, NULL),
(56, 'بابلسر', 27, 1, NULL, NULL, NULL),
(57, 'باخرز', 11, 1, NULL, NULL, NULL),
(58, 'باشت', 23, 1, NULL, NULL, NULL),
(59, 'باغ ملک', 13, 1, NULL, NULL, NULL),
(60, 'بافت', 21, 1, NULL, NULL, NULL),
(61, 'بافق', 31, 1, NULL, NULL, NULL),
(62, 'بانه', 20, 1, NULL, NULL, NULL),
(63, 'باوی', 13, 1, NULL, NULL, NULL),
(64, 'بجستان', 11, 1, NULL, NULL, NULL),
(65, 'بجنورد', 12, 1, NULL, NULL, NULL),
(66, 'بختگان', 17, 1, NULL, NULL, NULL),
(67, 'بدره', 6, 1, NULL, NULL, NULL),
(68, 'برخوار', 4, 1, NULL, NULL, NULL),
(69, 'بردسکن', 11, 1, NULL, NULL, NULL),
(70, 'بردسیر', 21, 1, NULL, NULL, NULL),
(71, 'بروجرد', 26, 1, NULL, NULL, NULL),
(72, 'بروجن', 9, 1, NULL, NULL, NULL),
(73, 'بستان آباد', 1, 1, NULL, NULL, NULL),
(74, 'بستک', 29, 1, NULL, NULL, NULL),
(75, 'بشاگرد', 29, 1, NULL, NULL, NULL),
(76, 'بشرویه', 10, 1, NULL, NULL, NULL),
(77, 'بم', 21, 1, NULL, NULL, NULL),
(78, 'بمپور', 16, 1, NULL, NULL, NULL),
(79, 'بن', 9, 1, NULL, NULL, NULL),
(80, 'بناب', 1, 1, NULL, NULL, NULL),
(81, 'بندرانزلی', 25, 1, NULL, NULL, NULL),
(82, 'بندرعباس', 29, 1, NULL, NULL, NULL),
(83, 'بندرگز', 24, 1, NULL, NULL, NULL),
(84, 'بندرلنگه', 29, 1, NULL, NULL, NULL),
(85, 'بندرماهشهر', 13, 1, NULL, NULL, NULL),
(86, 'بو یین و میاندشت', 4, 1, NULL, NULL, NULL),
(87, 'بوانات', 17, 1, NULL, NULL, NULL),
(88, 'بوشهر', 7, 1, NULL, NULL, NULL),
(89, 'بوکان', 2, 1, NULL, NULL, NULL),
(90, 'بویراحمد', 23, 1, NULL, NULL, NULL),
(91, 'بویین زهرا', 18, 1, NULL, NULL, NULL),
(92, 'بهاباد', 31, 1, NULL, NULL, NULL),
(93, 'بهار', 30, 1, NULL, NULL, NULL),
(94, 'بهارستان', 8, 1, NULL, NULL, NULL),
(95, 'بهبهان', 13, 1, NULL, NULL, NULL),
(96, 'بهشهر', 27, 1, NULL, NULL, NULL),
(97, 'بهمیی', 23, 1, NULL, NULL, NULL),
(98, 'بیجار', 20, 1, NULL, NULL, NULL),
(99, 'بیرجند', 10, 1, NULL, NULL, NULL),
(100, 'بیضا', 17, 1, NULL, NULL, NULL),
(101, 'بیله سوار', 3, 1, NULL, NULL, NULL),
(102, 'بینالود', 11, 1, NULL, NULL, NULL),
(103, 'پارس آباد', 3, 1, NULL, NULL, NULL),
(104, 'پارسیان', 29, 1, NULL, NULL, NULL),
(105, 'پاسارگاد', 17, 1, NULL, NULL, NULL),
(106, 'پاکدشت', 8, 1, NULL, NULL, NULL),
(107, 'پاوه', 22, 1, NULL, NULL, NULL),
(108, 'پردیس', 8, 1, NULL, NULL, NULL),
(109, 'پلدختر', 26, 1, NULL, NULL, NULL),
(110, 'پلدشت', 2, 1, NULL, NULL, NULL),
(111, 'پیرانشهر', 2, 1, NULL, NULL, NULL),
(112, 'پیشوا', 8, 1, NULL, NULL, NULL),
(113, 'تاکستان', 18, 1, NULL, NULL, NULL),
(114, 'تایباد', 11, 1, NULL, NULL, NULL),
(115, 'تبریز', 1, 1, NULL, NULL, NULL),
(116, 'تربت جام', 11, 1, NULL, NULL, NULL),
(117, 'تربت حیدریه', 11, 1, NULL, NULL, NULL),
(118, 'ترکمن', 24, 1, NULL, NULL, NULL),
(119, 'تفت', 31, 1, NULL, NULL, NULL),
(120, 'تفتان', 16, 1, NULL, NULL, NULL),
(121, 'تفرش', 28, 1, NULL, NULL, NULL),
(122, 'تکاب', 2, 1, NULL, NULL, NULL),
(123, 'تنکابن', 27, 1, NULL, NULL, NULL),
(124, 'تنگستان', 7, 1, NULL, NULL, NULL),
(125, 'تویسرکان', 30, 1, NULL, NULL, NULL),
(126, 'تهران', 8, 1, NULL, NULL, NULL),
(127, 'تیران وکرون', 4, 1, NULL, NULL, NULL),
(128, 'ثلاث باباجانی', 22, 1, NULL, NULL, NULL),
(129, 'جاجرم', 12, 1, NULL, NULL, NULL),
(130, 'جاسک', 29, 1, NULL, NULL, NULL),
(131, 'جغتای', 11, 1, NULL, NULL, NULL),
(132, 'جلفا', 1, 1, NULL, NULL, NULL),
(133, 'جم', 7, 1, NULL, NULL, NULL),
(134, 'جوانرود', 22, 1, NULL, NULL, NULL),
(135, 'جویبار', 27, 1, NULL, NULL, NULL),
(136, 'جوین', 11, 1, NULL, NULL, NULL),
(137, 'جهرم', 17, 1, NULL, NULL, NULL),
(138, 'جیرفت', 21, 1, NULL, NULL, NULL),
(139, 'چادگان', 4, 1, NULL, NULL, NULL),
(140, 'چاراویماق', 1, 1, NULL, NULL, NULL),
(141, 'چالدران', 2, 1, NULL, NULL, NULL),
(142, 'چالوس', 27, 1, NULL, NULL, NULL),
(143, 'چاه بهار', 16, 1, NULL, NULL, NULL),
(144, 'چایپاره', 2, 1, NULL, NULL, NULL),
(145, 'چرام', 23, 1, NULL, NULL, NULL),
(146, 'چرداول', 6, 1, NULL, NULL, NULL),
(147, 'چگنی', 26, 1, NULL, NULL, NULL),
(148, 'چناران', 11, 1, NULL, NULL, NULL),
(149, 'حاجی اباد', 29, 1, NULL, NULL, NULL),
(150, 'حمیدیه', 13, 1, NULL, NULL, NULL),
(151, 'خاتم', 31, 1, NULL, NULL, NULL),
(152, 'خاش', 16, 1, NULL, NULL, NULL),
(153, 'خانمیرزا', 9, 1, NULL, NULL, NULL),
(154, 'خداآفرین', 1, 1, NULL, NULL, NULL),
(155, 'خدابنده', 14, 1, NULL, NULL, NULL),
(156, 'خرامه', 17, 1, NULL, NULL, NULL),
(157, 'خرم آباد', 26, 1, NULL, NULL, NULL),
(158, 'خرم بید', 17, 1, NULL, NULL, NULL),
(159, 'خرمدره', 14, 1, NULL, NULL, NULL),
(160, 'خرمشهر', 13, 1, NULL, NULL, NULL),
(161, 'خفر', 17, 1, NULL, NULL, NULL),
(162, 'خلخال', 3, 1, NULL, NULL, NULL),
(163, 'خلیل آباد', 11, 1, NULL, NULL, NULL),
(164, 'خمیر', 29, 1, NULL, NULL, NULL),
(165, 'خمین', 28, 1, NULL, NULL, NULL),
(166, 'خمینی شهر', 4, 1, NULL, NULL, NULL),
(167, 'خنج', 17, 1, NULL, NULL, NULL),
(168, 'خنداب', 28, 1, NULL, NULL, NULL),
(169, 'خواف', 11, 1, NULL, NULL, NULL),
(170, 'خوانسار', 4, 1, NULL, NULL, NULL),
(171, 'خور و بیابانک', 4, 1, NULL, NULL, NULL),
(172, 'خوسف', 10, 1, NULL, NULL, NULL),
(173, 'خوشاب', 11, 1, NULL, NULL, NULL),
(174, 'خوی', 2, 1, NULL, NULL, NULL),
(175, 'داراب', 17, 1, NULL, NULL, NULL),
(176, 'دالاهو', 22, 1, NULL, NULL, NULL),
(177, 'دامغان', 15, 1, NULL, NULL, NULL),
(178, 'داورزن', 11, 1, NULL, NULL, NULL),
(179, 'درگز', 11, 1, NULL, NULL, NULL),
(180, 'درگزین', 30, 1, NULL, NULL, NULL),
(181, 'درمیان', 10, 1, NULL, NULL, NULL),
(182, 'دره شهر', 6, 1, NULL, NULL, NULL),
(183, 'دزفول', 13, 1, NULL, NULL, NULL),
(184, 'دشت آزادگان', 13, 1, NULL, NULL, NULL),
(185, 'دشتستان', 7, 1, NULL, NULL, NULL),
(186, 'دشتی', 7, 1, NULL, NULL, NULL),
(187, 'دشتیاری', 16, 1, NULL, NULL, NULL),
(188, 'دلفان', 26, 1, NULL, NULL, NULL),
(189, 'دلگان', 16, 1, NULL, NULL, NULL),
(190, 'دلیجان', 28, 1, NULL, NULL, NULL),
(191, 'دماوند', 8, 1, NULL, NULL, NULL),
(192, 'دنا', 23, 1, NULL, NULL, NULL),
(193, 'دورود', 26, 1, NULL, NULL, NULL),
(194, 'دهاقان', 4, 1, NULL, NULL, NULL),
(195, 'دهگلان', 20, 1, NULL, NULL, NULL),
(196, 'دهلران', 6, 1, NULL, NULL, NULL),
(197, 'دیر', 7, 1, NULL, NULL, NULL),
(198, 'دیلم', 7, 1, NULL, NULL, NULL),
(199, 'دیواندره', 20, 1, NULL, NULL, NULL),
(200, 'رابر', 21, 1, NULL, NULL, NULL),
(201, 'راز و جرگلان', 12, 1, NULL, NULL, NULL),
(202, 'راسک', 16, 1, NULL, NULL, NULL),
(203, 'رامسر', 27, 1, NULL, NULL, NULL),
(204, 'رامشیر', 13, 1, NULL, NULL, NULL),
(205, 'رامهرمز', 13, 1, NULL, NULL, NULL),
(206, 'رامیان', 24, 1, NULL, NULL, NULL),
(207, 'راور', 21, 1, NULL, NULL, NULL),
(208, 'رباط کریم', 8, 1, NULL, NULL, NULL),
(209, 'رزن', 30, 1, NULL, NULL, NULL),
(210, 'رستم', 17, 1, NULL, NULL, NULL),
(211, 'رشت', 25, 1, NULL, NULL, NULL),
(212, 'رشتخوار', 11, 1, NULL, NULL, NULL),
(213, 'رضوانشهر', 25, 1, NULL, NULL, NULL),
(214, 'رفسنجان', 21, 1, NULL, NULL, NULL),
(215, 'روانسر', 22, 1, NULL, NULL, NULL),
(216, 'رودان', 29, 1, NULL, NULL, NULL),
(217, 'رودبار', 25, 1, NULL, NULL, NULL),
(218, 'رودبارجنوب', 21, 1, NULL, NULL, NULL),
(219, 'رودسر', 25, 1, NULL, NULL, NULL),
(220, 'رومشکان', 26, 1, NULL, NULL, NULL),
(221, 'ری', 8, 1, NULL, NULL, NULL),
(222, 'ریگان', 21, 1, NULL, NULL, NULL),
(223, 'زابل', 16, 1, NULL, NULL, NULL),
(224, 'زاوه', 11, 1, NULL, NULL, NULL),
(225, 'زاهدان', 16, 1, NULL, NULL, NULL),
(226, 'زرقان', 17, 1, NULL, NULL, NULL),
(227, 'زرند', 21, 1, NULL, NULL, NULL),
(228, 'زرندیه', 28, 1, NULL, NULL, NULL),
(229, 'زرین دشت', 17, 1, NULL, NULL, NULL),
(230, 'زنجان', 14, 1, NULL, NULL, NULL),
(231, 'زهک', 16, 1, NULL, NULL, NULL),
(232, 'زیرکوه', 10, 1, NULL, NULL, NULL),
(233, 'ساری', 27, 1, NULL, NULL, NULL),
(234, 'سامان', 9, 1, NULL, NULL, NULL),
(235, 'ساوجبلاغ', 5, 1, NULL, NULL, NULL),
(236, 'ساوه', 28, 1, NULL, NULL, NULL),
(237, 'سبزوار', 11, 1, NULL, NULL, NULL),
(238, 'سپیدان', 17, 1, NULL, NULL, NULL),
(239, 'سراب', 1, 1, NULL, NULL, NULL),
(240, 'سراوان', 16, 1, NULL, NULL, NULL),
(241, 'سرایان', 10, 1, NULL, NULL, NULL),
(242, 'سرباز', 16, 1, NULL, NULL, NULL),
(243, 'سربیشه', 10, 1, NULL, NULL, NULL),
(244, 'سرپل ذهاب', 22, 1, NULL, NULL, NULL),
(245, 'سرچهان', 17, 1, NULL, NULL, NULL),
(246, 'سرخس', 11, 1, NULL, NULL, NULL),
(247, 'سرخه', 15, 1, NULL, NULL, NULL),
(248, 'سردشت', 2, 1, NULL, NULL, NULL),
(249, 'سرعین', 3, 1, NULL, NULL, NULL),
(250, 'سروآباد', 20, 1, NULL, NULL, NULL),
(251, 'سروستان', 17, 1, NULL, NULL, NULL),
(252, 'سقز', 20, 1, NULL, NULL, NULL),
(253, 'سلسله', 26, 1, NULL, NULL, NULL),
(254, 'سلطانیه', 14, 1, NULL, NULL, NULL),
(255, 'سلماس', 2, 1, NULL, NULL, NULL),
(256, 'سمنان', 15, 1, NULL, NULL, NULL),
(257, 'سمیرم', 4, 1, NULL, NULL, NULL),
(258, 'سنقر', 22, 1, NULL, NULL, NULL),
(259, 'سنندج', 20, 1, NULL, NULL, NULL),
(260, 'سوادکوه', 27, 1, NULL, NULL, NULL),
(261, 'سوادکوه شمالی', 27, 1, NULL, NULL, NULL),
(262, 'سیاهکل', 25, 1, NULL, NULL, NULL),
(263, 'سیب و سوران', 16, 1, NULL, NULL, NULL),
(264, 'سیرجان', 21, 1, NULL, NULL, NULL),
(265, 'سیروان', 6, 1, NULL, NULL, NULL),
(266, 'سیریک', 29, 1, NULL, NULL, NULL),
(267, 'سیمرغ', 27, 1, NULL, NULL, NULL),
(268, 'شادگان', 13, 1, NULL, NULL, NULL),
(269, 'شازند', 28, 1, NULL, NULL, NULL),
(270, 'شاهرود', 15, 1, NULL, NULL, NULL),
(271, 'شاهین دژ', 2, 1, NULL, NULL, NULL),
(272, 'شاهین شهرومیمه', 4, 1, NULL, NULL, NULL),
(273, 'شبستر', 1, 1, NULL, NULL, NULL),
(274, 'شفت', 25, 1, NULL, NULL, NULL),
(275, 'شمیرانات', 8, 1, NULL, NULL, NULL),
(276, 'شوش', 13, 1, NULL, NULL, NULL),
(277, 'شوشتر', 13, 1, NULL, NULL, NULL),
(278, 'شوط', 2, 1, NULL, NULL, NULL),
(279, 'شهربابک', 21, 1, NULL, NULL, NULL),
(280, 'شهرضا', 4, 1, NULL, NULL, NULL),
(281, 'شهرکرد', 9, 1, NULL, NULL, NULL),
(282, 'شهریار', 8, 1, NULL, NULL, NULL),
(283, 'شیراز', 17, 1, NULL, NULL, NULL),
(284, 'شیروان', 12, 1, NULL, NULL, NULL),
(285, 'صالح آباد', 11, 1, NULL, NULL, NULL),
(286, 'صحنه', 22, 1, NULL, NULL, NULL),
(287, 'صومعه سرا', 25, 1, NULL, NULL, NULL),
(288, 'طارم', 14, 1, NULL, NULL, NULL),
(289, 'طالقان', 5, 1, NULL, NULL, NULL),
(290, 'طبس', 10, 1, NULL, NULL, NULL),
(291, 'طوالش', 25, 1, NULL, NULL, NULL),
(292, 'عباس آباد', 27, 1, NULL, NULL, NULL),
(293, 'عجب شیر', 1, 1, NULL, NULL, NULL),
(294, 'عسلویه', 7, 1, NULL, NULL, NULL),
(295, 'علی آباد کتول', 24, 1, NULL, NULL, NULL),
(296, 'عنبرآباد', 21, 1, NULL, NULL, NULL),
(297, 'فارسان', 9, 1, NULL, NULL, NULL),
(298, 'فاروج', 12, 1, NULL, NULL, NULL),
(299, 'فاریاب', 21, 1, NULL, NULL, NULL),
(300, 'فامنین', 30, 1, NULL, NULL, NULL),
(301, 'فراشبند', 17, 1, NULL, NULL, NULL),
(302, 'فراهان', 28, 1, NULL, NULL, NULL),
(303, 'فردوس', 10, 1, NULL, NULL, NULL),
(304, 'فردیس', 5, 1, NULL, NULL, NULL),
(305, 'فریدن', 4, 1, NULL, NULL, NULL),
(306, 'فریدونشهر', 4, 1, NULL, NULL, NULL),
(307, 'فریدونکنار', 27, 1, NULL, NULL, NULL),
(308, 'فریمان', 11, 1, NULL, NULL, NULL),
(309, 'فسا', 17, 1, NULL, NULL, NULL),
(310, 'فلاورجان', 4, 1, NULL, NULL, NULL),
(311, 'فنوج', 16, 1, NULL, NULL, NULL),
(312, 'فومن', 25, 1, NULL, NULL, NULL),
(313, 'فهرج', 21, 1, NULL, NULL, NULL),
(314, 'فیروزآباد', 17, 1, NULL, NULL, NULL),
(315, 'فیروزکوه', 8, 1, NULL, NULL, NULL),
(316, 'فیروزه', 11, 1, NULL, NULL, NULL),
(317, 'قایم شهر', 27, 1, NULL, NULL, NULL),
(318, 'قاینات', 10, 1, NULL, NULL, NULL),
(319, 'قدس', 8, 1, NULL, NULL, NULL),
(320, 'قرچک', 8, 1, NULL, NULL, NULL),
(321, 'قروه', 20, 1, NULL, NULL, NULL),
(322, 'قزوین', 18, 1, NULL, NULL, NULL),
(323, 'قشم', 29, 1, NULL, NULL, NULL),
(324, 'قصرشیرین', 22, 1, NULL, NULL, NULL),
(325, 'قصرقند', 16, 1, NULL, NULL, NULL),
(326, 'قلعه گنج', 21, 1, NULL, NULL, NULL),
(327, 'قم', 19, 1, NULL, NULL, NULL),
(328, 'قوچان', 11, 1, NULL, NULL, NULL),
(329, 'قیروکارزین', 17, 1, NULL, NULL, NULL),
(330, 'کارون', 13, 1, NULL, NULL, NULL),
(331, 'کازرون', 17, 1, NULL, NULL, NULL),
(332, 'کاشان', 4, 1, NULL, NULL, NULL),
(333, 'کاشمر', 11, 1, NULL, NULL, NULL),
(334, 'کامیاران', 20, 1, NULL, NULL, NULL),
(335, 'کبودرآهنگ', 30, 1, NULL, NULL, NULL),
(336, 'کرج', 5, 1, NULL, NULL, NULL),
(337, 'کردکوی', 24, 1, NULL, NULL, NULL),
(338, 'کرمان', 21, 1, NULL, NULL, NULL),
(339, 'کرمانشاه', 22, 1, NULL, NULL, NULL),
(340, 'کلات', 11, 1, NULL, NULL, NULL),
(341, 'کلاردشت', 27, 1, NULL, NULL, NULL),
(342, 'کلاله', 24, 1, NULL, NULL, NULL),
(343, 'کلیبر', 1, 1, NULL, NULL, NULL),
(344, 'کمیجان', 28, 1, NULL, NULL, NULL),
(345, 'کنارک', 16, 1, NULL, NULL, NULL),
(346, 'کنگان', 7, 1, NULL, NULL, NULL),
(347, 'کنگاور', 22, 1, NULL, NULL, NULL),
(348, 'کوار', 17, 1, NULL, NULL, NULL),
(349, 'کوثر', 3, 1, NULL, NULL, NULL),
(350, 'کوه چنار', 17, 1, NULL, NULL, NULL),
(351, 'کوهبنان', 21, 1, NULL, NULL, NULL),
(352, 'کوهدشت', 26, 1, NULL, NULL, NULL),
(353, 'کوهرنگ', 9, 1, NULL, NULL, NULL),
(354, 'کوهسرخ', 11, 1, NULL, NULL, NULL),
(355, 'کهگیلویه', 23, 1, NULL, NULL, NULL),
(356, 'کهنوج', 21, 1, NULL, NULL, NULL),
(357, 'کیار', 9, 1, NULL, NULL, NULL),
(358, 'گالیکش', 24, 1, NULL, NULL, NULL),
(359, 'گتوند', 13, 1, NULL, NULL, NULL),
(360, 'گچساران', 23, 1, NULL, NULL, NULL),
(361, 'گراش', 17, 1, NULL, NULL, NULL),
(362, 'گرگان', 24, 1, NULL, NULL, NULL),
(363, 'گرمسار', 15, 1, NULL, NULL, NULL),
(364, 'گرمه', 12, 1, NULL, NULL, NULL),
(365, 'گرمی', 3, 1, NULL, NULL, NULL),
(366, 'گلپایگان', 4, 1, NULL, NULL, NULL),
(367, 'گلوگاه', 27, 1, NULL, NULL, NULL),
(368, 'گمیشان', 24, 1, NULL, NULL, NULL),
(369, 'گناباد', 11, 1, NULL, NULL, NULL),
(370, 'گناوه', 7, 1, NULL, NULL, NULL),
(371, 'گنبدکاووس', 24, 1, NULL, NULL, NULL),
(372, 'گیلانغرب', 22, 1, NULL, NULL, NULL),
(373, 'لارستان', 17, 1, NULL, NULL, NULL),
(374, 'لالی', 13, 1, NULL, NULL, NULL),
(375, 'لامرد', 17, 1, NULL, NULL, NULL),
(376, 'لاهیجان', 25, 1, NULL, NULL, NULL),
(377, 'لردگان', 9, 1, NULL, NULL, NULL),
(378, 'لنجان', 4, 1, NULL, NULL, NULL),
(379, 'لنده', 23, 1, NULL, NULL, NULL),
(380, 'لنگرود', 25, 1, NULL, NULL, NULL),
(381, 'مارگون', 23, 1, NULL, NULL, NULL),
(382, 'ماسال', 25, 1, NULL, NULL, NULL),
(383, 'ماکو', 2, 1, NULL, NULL, NULL),
(384, 'مانه وسملقان', 12, 1, NULL, NULL, NULL),
(385, 'ماهنشان', 14, 1, NULL, NULL, NULL),
(386, 'مبارکه', 4, 1, NULL, NULL, NULL),
(387, 'محلات', 28, 1, NULL, NULL, NULL),
(388, 'محمودآباد', 27, 1, NULL, NULL, NULL),
(389, 'مراغه', 1, 1, NULL, NULL, NULL),
(390, 'مراوه تپه', 24, 1, NULL, NULL, NULL),
(391, 'مرند', 1, 1, NULL, NULL, NULL),
(392, 'مرودشت', 17, 1, NULL, NULL, NULL),
(393, 'مریوان', 20, 1, NULL, NULL, NULL),
(394, 'مسجدسلیمان', 13, 1, NULL, NULL, NULL),
(395, 'مشگین شهر', 3, 1, NULL, NULL, NULL),
(396, 'مشهد', 11, 1, NULL, NULL, NULL),
(397, 'ملارد', 8, 1, NULL, NULL, NULL),
(398, 'ملایر', 30, 1, NULL, NULL, NULL),
(399, 'ملکان', 1, 1, NULL, NULL, NULL),
(400, 'ملکشاهی', 6, 1, NULL, NULL, NULL),
(401, 'ممسنی', 17, 1, NULL, NULL, NULL),
(402, 'منوجان', 21, 1, NULL, NULL, NULL),
(403, 'مه ولات', 11, 1, NULL, NULL, NULL),
(404, 'مهاباد', 2, 1, NULL, NULL, NULL),
(405, 'مهدی شهر', 15, 1, NULL, NULL, NULL),
(406, 'مهر', 17, 1, NULL, NULL, NULL),
(407, 'مهران', 6, 1, NULL, NULL, NULL),
(408, 'مهرستان', 16, 1, NULL, NULL, NULL),
(409, 'مهریز', 31, 1, NULL, NULL, NULL),
(410, 'میامی', 15, 1, NULL, NULL, NULL),
(411, 'میاندوآب', 2, 1, NULL, NULL, NULL),
(412, 'میاندورود', 27, 1, NULL, NULL, NULL),
(413, 'میانه', 1, 1, NULL, NULL, NULL),
(414, 'میبد', 31, 1, NULL, NULL, NULL),
(415, 'میرجاوه', 16, 1, NULL, NULL, NULL),
(416, 'میناب', 29, 1, NULL, NULL, NULL),
(417, 'مینودشت', 24, 1, NULL, NULL, NULL),
(418, 'نایین', 4, 1, NULL, NULL, NULL),
(419, 'نجف آباد', 4, 1, NULL, NULL, NULL),
(420, 'نرماشیر', 21, 1, NULL, NULL, NULL),
(421, 'نطنز', 4, 1, NULL, NULL, NULL),
(422, 'نظرآباد', 5, 1, NULL, NULL, NULL),
(423, 'نقده', 2, 1, NULL, NULL, NULL),
(424, 'نکا', 27, 1, NULL, NULL, NULL),
(425, 'نمین', 3, 1, NULL, NULL, NULL),
(426, 'نور', 27, 1, NULL, NULL, NULL),
(427, 'نوشهر', 27, 1, NULL, NULL, NULL),
(428, 'نهاوند', 30, 1, NULL, NULL, NULL),
(429, 'نهبندان', 10, 1, NULL, NULL, NULL),
(430, 'نی ریز', 17, 1, NULL, NULL, NULL),
(431, 'نیر', 3, 1, NULL, NULL, NULL),
(432, 'نیشابور', 11, 1, NULL, NULL, NULL),
(433, 'نیک شهر', 16, 1, NULL, NULL, NULL),
(434, 'نیمروز', 16, 1, NULL, NULL, NULL),
(435, 'ورامین', 8, 1, NULL, NULL, NULL),
(436, 'ورزقان', 1, 1, NULL, NULL, NULL),
(437, 'هامون', 16, 1, NULL, NULL, NULL),
(438, 'هرسین', 22, 1, NULL, NULL, NULL),
(439, 'هریس', 1, 1, NULL, NULL, NULL),
(440, 'هشترود', 1, 1, NULL, NULL, NULL),
(441, 'هفتکل', 13, 1, NULL, NULL, NULL),
(442, 'هلیلان', 6, 1, NULL, NULL, NULL),
(443, 'همدان', 30, 1, NULL, NULL, NULL),
(444, 'هندیجان', 13, 1, NULL, NULL, NULL),
(445, 'هوراند', 1, 1, NULL, NULL, NULL),
(446, 'هویزه', 13, 1, NULL, NULL, NULL),
(447, 'هیرمند', 16, 1, NULL, NULL, NULL),
(448, 'یزد', 31, 1, NULL, NULL, NULL);

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
(1, 'آقا', 'male', 1, '2024-07-06 14:22:35', '2024-07-06 14:22:35', NULL),
(2, 'خانم', 'femail', 1, '2024-07-06 14:22:35', '2024-07-06 14:22:35', NULL);

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
(1, 'فارسی', 'fa', 'rtl', 'fa.png', 1, NULL, '2024-07-06 14:22:35', '2024-07-06 14:22:35'),
(2, 'English', 'en', 'ltr', 'en.png', 0, NULL, '2024-07-06 14:22:35', '2024-07-06 14:22:35'),
(3, 'عربی', 'ar', 'rtl', 'ar.png', 0, NULL, '2024-07-06 14:22:35', '2024-07-06 14:22:35');

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
(1, 'آذربایجان شرقی', 'East Azerbaijan', 'آذربیجان الشرقیة', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(2, 'آذربایجان غربی', 'West Azerbaijan', 'آذربیجان الغربیة', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(3, 'اردبیل', 'Ardabil', 'أردبیل', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(4, 'اصفهان', 'Isfahan', 'أصفهان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(5, 'البرز', 'Alborz', 'ألبرز', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(6, 'ایلام', 'Ilam', 'إیلام', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(7, 'بوشهر', 'Bushehr', 'بوشهر', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(8, 'تهران', 'Tehran', 'طهران', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(9, 'چهارمحال و بختیاری', 'Chaharmahal and Bakhtiari', 'چهارمحال وبختیاری', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(10, 'خراسان جنوبی', 'South Khorasan', 'خراسان الجنوبیة', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(11, 'خراسان رضوی', 'Razavi Khorasan', 'خراسان الرضویة', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(12, 'خراسان شمالی', 'North Khorasan', 'خراسان الشمالیة', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(13, 'خوزستان', 'Khuzestan', 'خوزستان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(14, 'زنجان', 'Zanjan', 'زنجان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(15, 'سمنان', 'Semnan', 'سمنان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(16, 'سیستان و بلوچستان', 'Sistan and Baluchestan', 'سیستان وبلوشستان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(17, 'فارس', 'Fars', 'فارس', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(18, 'قزوین', 'Qazvin', 'قزوین', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(19, 'قم', 'Qom', 'قم', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(20, 'کردستان', 'Kurdistan', 'کردستان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(21, 'کرمان', 'Kerman', 'کرمان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(22, 'کرمانشاه', 'Kermanshah', 'کرمانشاه', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(23, 'کهگیلویه و بویراحمد', 'Kohgiluyeh and Boyer-Ahmad', 'کهکیلویه وبویر أحمد', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(24, 'گلستان', 'Golestan', 'گلستان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(25, 'گیلان', 'Gilan', 'گیلان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(26, 'لرستان', 'Lorestan', 'لرستان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(27, 'مازندران', 'Mazandaran', 'مازندران', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(28, 'مرکزی', 'Markazi', 'المركزیة', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(29, 'هرمزگان', 'Hormozgan', 'هرمزجان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(30, 'همدان', 'Hamadan', 'همدان', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03'),
(31, 'یزد', 'Yazd', 'یزد', 1, NULL, NULL, NULL, NULL, 1, NULL, '2024-11-26 13:36:03', '2024-11-26 13:36:03');

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
(3, 'بررسی نشده', NULL, 1, '-1', 'theme-22', 1, NULL, NULL, NULL),
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
(15, 'نیاز به بررسی', NULL, 14, '2', 'theme-22', 1, NULL, NULL, NULL),
(16, 'تایید', NULL, 14, '1', 'theme-10', 1, NULL, NULL, NULL),
(17, 'عدم تایید', NULL, 14, '0', 'theme-24', 1, NULL, NULL, NULL),
(18, 'حذف', NULL, 14, '-1', 'theme-22', 1, NULL, NULL, NULL),
(19, 'وضعیت پاسخ تیکت', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(20, 'در انتظار پاسخ', NULL, 19, '0', 'theme-23', 1, NULL, NULL, NULL),
(21, 'در حال بررسی', NULL, 19, '1', 'theme-14', 1, NULL, NULL, NULL),
(22, 'پاسخ داده شد', NULL, 19, '2', 'theme-10', 1, NULL, NULL, NULL),
(23, 'بسته شد', NULL, 19, '3', 'theme-24', 1, NULL, NULL, NULL),
(24, 'وضعیت اولویت پاسخ به تیکت', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(25, 'کم', NULL, 24, '1', 'theme-200', 1, NULL, NULL, NULL),
(26, 'متوسط', NULL, 24, '2', 'theme-10', 1, NULL, NULL, NULL),
(27, 'زیاد', NULL, 24, '3', 'theme-24', 1, NULL, NULL, NULL),
(28, 'وضغیت گزارشی که مبلغ ارسال کرده', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(29, 'درانتظار بررسی', NULL, 28, '-1', 'theme-22', 1, NULL, NULL, NULL),
(30, 'تایید', NULL, 28, '1', 'theme-10', 1, NULL, NULL, NULL),
(31, 'عدم تایید', NULL, 28, '0', 'theme-24', 1, NULL, NULL, NULL),
(33, 'وضعیت فعالیت فرهنگی مبلغ', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(34, 'فعال', NULL, 33, '1', 'theme-10', 1, NULL, NULL, NULL),
(35, 'غیرفعال', NULL, 33, '0', 'theme-22', 1, NULL, NULL, NULL),
(36, 'نیمه فعال', NULL, 33, '2', 'theme-22', 1, NULL, NULL, NULL);

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
(1, 'مقدمات و سیر غدیر', NULL, 1, 11, 'image74221732958564.jpg', 'image90461732958815.jpg###', NULL, NULL, NULL, '<p>السلام علیک یا امیرالمؤمنین&nbsp;</p>', 0, 0, 0, 0, 21, 'fa', 1, '2024-12-22 00:00:34', '2024-11-30 10:58:13', '2024-12-22 00:00:34'),
(2, 'مباحث تخصصی', NULL, 1, 2, 'image30611732958911.webp', 'image30191732958932.jpg###image36231732958935.jpg###', 'video80811732958925.mp4###', 'application99741732958928.docx###', NULL, '<p>قاله ی حاضر با نگاهی به آموزه های فرهنگی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> از منظر امامان معصوم(ع)، با تبیین مفهوم مدیریت فرهنگی در غدیر، ابعاد و ویژگی های واقعه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> و ضرورت ترویج سبک زندگی اسلامی بر اساس روایات اهل بیت(ع)، برآنیم تا قدمی برای معرفی ابعاد گوناگون واقعه ی فرهنگی و اجتماعی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> برداریم. بی تردید نقش گسترده ی <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> در حوزه ی تبیین دین و فرهنگ، غیرقابل انکار است؛ بدین رو اهل بیت(ع) اهمیت ویژه ای به واقعه ی تمدن ساز <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> مبذول می داشتند و در هر فرصتی برای نهادینه کردن فرهنگ ولایت و رهبری بر اساس واقعه ی غدیر، ضرورت تبیین جایگاه <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> در اسلام را بازگو می کردند. این پژوهش به دنبال بررسی این مساله است که آیا حادثه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> می تواند به عنوان الگوی فرهنگ ساز در راستای تمدن اسلامی مطرح شود! و اهل بیت(ع) با توجه به اهمیت غدیر، در برابر این واقعه ی مهم و عظیم، چگونه موضع گیری کردند! بدین رو هدف از این مقاله، بررسی و تبیین آموزه های فرهنگی واقعه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> از منظر <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> است؛ هدف این است که با بررسی روایات اهل بیت(ع)، کارکرد فرهنگی و اجتماعی آموزه های <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> را استخراج نموده، تا در جهت الگوسازی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> برای تمدنسازی اسلامی در عصر حاضر، گامی برداریم. در این مقاله، با بهره گیری از روش توصیف و تحلیل و بر اساس منابع کتابخانه ای، تلاش شده است، الگوی تمدن ساز <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> در روایات <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> را استخراج کنیم. یکی از نتایج و دستاوردهای این پژوهش، تبیین معیارها و ملاک های فرهنگی نهفته در آموزه های اهل بیت(ع) در مورد واقعه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> است. بررسی و تبیین آموزه های فرهنگ ساز <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> از منظر <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> در ابعاد اخلاق فردی، اجتماعی، الاهی و سیاسی، در قالبی جدید از جنبه های نوآوری این مقاله شمرده می شود.</p>', 0, 0, 0, 0, 14, 'fa', 1, '2024-12-15 08:56:22', '2024-11-30 10:59:13', '2024-12-15 08:56:22'),
(3, 'گزارش فاطمیه', NULL, 1, 11, 'image79031734275619.jpg', 'image39591734276476.jpg###', 'video67601734276083.mp4###', NULL, NULL, '<p>با سلام &nbsp;<br>قابل توجه مبلغان گرامی📣 که جهت تهیه ی کتاب و اجرای برنامه ی فاطمیه ی امسال با محوریت کتاب فاخر🌸 فاطمه برترین بانوی هستی 🌸<br>اعلام‌ آمادگی نمودید ‼️👇👇<br>مبلغینی که تا &nbsp;پایان ایام فاطمیه ( تا ولادت حضرت) گزارشی از اجرای برنامه ی خود بفرستند ، در لیست قرعه کشی هدیه ویژه این ایام قرار میگیرند&nbsp;<br>✨هدایا 👇👇👇<br>🔹۵ نفر مبلغ &nbsp;یک میلیون تومان&nbsp;<br>🔸۱۲ نفر مبلغ ۵۰۰ هزار تومان&nbsp;</p>', 31, 25, 6, 0, 143, 'fa', 1, NULL, '2024-11-30 12:04:09', '2025-02-01 18:54:43'),
(4, 'ایده های برگزاری جشن های ولادت حضرت زهرا سلام الله علیها', NULL, 2, 11, 'image14101733716898.jpg', NULL, NULL, NULL, NULL, '<p>السلام علیک ایتها الصدیقه الشهیده&nbsp;</p><p>&nbsp;</p>', 0, 0, 0, 0, 17, 'fa', 1, '2024-12-22 00:00:45', '2024-12-09 00:34:49', '2024-12-22 00:00:45'),
(5, 'کتاب مادران اهلبیت علیهم السلام', NULL, 1, 11, 'image47171734289447.jpg', 'image50571734289927.jpg###image63451734290080.jpg###', NULL, 'application6861734290476.pdf###', NULL, '<p>&nbsp; بسم الله الرحمن الرحیم&nbsp;</p><p>📖 &nbsp;کتاب دوازده مادر<br>«آشنایی با مادران اهل بیت علیهم السلام»<br>🔸۱۲۸ صفحه&nbsp;<br>🔸به قلم دکتر مهدی خدامیان آرانی &nbsp; &nbsp;<br>🔸سایز حدودی (۱۲/۵×۱۹/۵) رقعی اروپایی</p><p><br>💰قیمت پشت جلد: 110,000 تومان&nbsp;<br>👌قیمت پخش با تخفیف: 50,000 تومان<br>مرکز پخش این کتاب فروشگاه غدیریه می باشد.<br>برای دانلود پی دی اف کتاب اینجا کلیک کنید (https://eitaa.com/ghadiriam14/5035)</p><p>🌐 برای سفارش از سایت اینجا کلیک کنید👉</p><p>جهت سفارش به ادمین پیام دهید👇👇<br>@ghadiriaam14<br>02537208882<br>#مادران #کتاب<br>ـــــــــــــــــــــــــــــــــــــــــــ<br>فروشگاه غدیریه<br>🆔 @ghadiriam14<br>کد های رهگیری بسته ها 👇<br>🆔@ghadiriamposhtibani</p>', 5, 4, 1, 0, 31, 'fa', 1, NULL, '2024-12-11 08:26:12', '2025-02-01 13:14:14'),
(6, 'گزارش دهی ایام فاطمیه  1403', NULL, 1, 11, 'image73431734274523.jpg', 'image16621734275175.jpg###', NULL, NULL, NULL, '<p>بسم الله الرحمن الرحیم&nbsp;</p><p>با سلام خدمت شما مبلغان گرامی&nbsp;</p><p>سرورانی که کتاب &nbsp;فاطمه برترین بانوی هستی را &nbsp;از ما دریافت &nbsp;و از این کتاب استفاده نمودند &nbsp;لطفا در بخش گزارش ثبت فعالیت نمایند&nbsp;</p><p>ان شاء الله از بین مبلغانی که گزارش ارسال نمایند &nbsp;به قید قرعه &nbsp;هدایایی تقدیم خواهد شد&nbsp;</p><p>موفق باشید&nbsp;</p><p>یا علی &nbsp;</p>', 0, 0, 0, 0, 25, 'fa', 1, '2024-12-22 00:02:21', '2024-12-11 09:41:32', '2024-12-22 00:02:21'),
(7, 'از اعتکاف تا غدیر', NULL, 11, 11, 'image48251736784542.jpg', 'image19511736784955.jpg###', NULL, NULL, NULL, '<p style=\"text-align:right;\">&nbsp;</p><p style=\"text-align:right;\">🔻<span class=\"text-big\"><strong>اعتکاف، جلوه‌ای ناب از حضور معنوی و اجتماع قلوب شیعیان است؛</strong> فرصتی که مؤمنین به‌سان قطراتِ پراکندهٔ باران رحمت الهی، گرداگرد محور بندگی خداوند متعال جمع می‌شوند.</span></p><p style=\"text-align:right;\"><span class=\"text-big\">❤️ اما همان‌گونه که اعتکاف ما را به تفکّر، تعهّد و تزکیه دعوت می‌کند، این فرصت می‌تواند ما را به شناخت عمیق‌تری از مقام والای <strong>ولایت اهل بیت علیهم السلام </strong>و نقش آن در هدایت انسان‌ها برساند. <strong>اعتکاف، تمرین اجتماع قلوب </strong>است برای حضوری باشکوه در روز غدیر در نجف.</span></p><p style=\"text-align:right;\"><span class=\"text-big\">✋🏼 بیاییم از فرصتِ معنوی اعتکاف بهره‌برداری کنیم و از دلِ این روزهای ملکوتی، شعله‌های <strong>معرفت به أمیرالمؤمنین صلوات‌الله‌علیه</strong> را برافروخته‌تر سازیم.</span></p><p style=\"text-align:right;\"><span class=\"text-big\">🌹 ان‌شاءالله، در عید غدیر امسال، با معرفتی افزون‌تر و عشقی خالصانه‌تر، جامۀ عمل به فرمایش نورانی امام رضا علیه السلام بپوشانیم که فرمودند:</span><br><span class=\"text-big\"><strong>«هر جا که بودی، روز غدیر نزد امیرالمؤمنین حاضر باش.»</strong></span><br><span class=\"text-big\">و یکپارچه حضورمان را در کنار مضجع شریف امیرالمؤمنین علیه‌السلام در نجف اثبات کنیم</span>.</p><p>_____________________<br>♡⠀ &nbsp; &nbsp;〇⠀ &nbsp; &nbsp;⎙⠀ &nbsp;⌲⁣&nbsp;<br>ˡⁱᵏᵉ ᶜᵒᵐᵐᵉⁿᵗ &nbsp;ˢᵃᵛᵉ &nbsp;ˢʰᵃʳᵉ</p><p><span class=\"text-big\"><strong>https://eitaa.com/welayat110</strong></span></p>', 2, 2, 0, 0, 13, 'fa', 1, NULL, '2025-01-13 12:44:05', '2025-01-20 07:10:29'),
(8, 'اعلام اسامی منتخب مبلغین فاطمیه 1403', NULL, 11, 11, 'image21141737138245.png', 'image19881737138187.png###', NULL, NULL, NULL, '<p>ـــــــــــــــــــــــــــــ﷽ــــــــــــــــــــــــــــــــــ</p><p>با سلام محضر مبلغان گرامی&nbsp;</p><p>اسامی مبلغان فاطمیه 1403 به صورت قرعه کشی مشخص شد&nbsp;</p><p>طبق وعده &nbsp;به 5 نفر مبلغ یک میلیون تومان و به 12 نفر مبلغ 500 هزار تومان اهدا می شود&nbsp;</p><p>اسامی به شرح ذیل می باشد:</p><p>(لطفا شماره حساب خود را در پروفایل خود بارگزاری نمایید )</p><figure class=\"table\" style=\"width:35.79%;\"><table class=\"ck-table-resized\"><colgroup><col style=\"width:14.29%;\"><col style=\"width:44.96%;\"><col style=\"width:40.75%;\"></colgroup><tbody><tr><td style=\"width:30pt;\">ردیف</td><td style=\"width:102pt;\">نام&nbsp;</td><td style=\"width:89pt;\">مبلغ هدیه&nbsp;</td></tr><tr><td>1</td><td>سید اسماعیل طباطبایی&nbsp;</td><td>یک میلیون تومان&nbsp;</td></tr><tr><td>2</td><td>سیران کهریزی پور&nbsp;</td><td>یک میلیون تومان&nbsp;</td></tr><tr><td>3</td><td>حمدیه نجفی&nbsp;</td><td>یک میلیون تومان&nbsp;</td></tr><tr><td>4</td><td>راضیه عباسی&nbsp;</td><td>یک میلیون تومان&nbsp;</td></tr><tr><td>5</td><td>اسماعیل ورمزیار&nbsp;</td><td>یک میلیون تومان&nbsp;</td></tr><tr><td>6</td><td>هادی رخ فروز&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>7</td><td>روح الله رحیمی&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>8</td><td>فاطمه علیزاده&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>9</td><td>محمدرضا سعدی&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>10</td><td>فریبا شهریارپور&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>11</td><td>مجید خوشه چرخ&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>12</td><td>محمدحسن زارع</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>13</td><td>مرضیه خداوردیان&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>14</td><td>علی شهروزفر&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>15</td><td>هدا چراغی&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>16</td><td>محمد کیانی&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>17</td><td>الهه قهرمانیان&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr></tbody></table></figure>', 11, 10, 1, 0, 115, 'fa', 1, NULL, '2025-01-17 14:44:04', '2025-02-01 18:53:37'),
(9, 'منتظر واقعی، عاشق غدیر است', NULL, 11, 11, 'image96891737349984.jpg', 'image15821737350024.jpg###image92531737350052.jpg###image19481737350075.jpg###', NULL, 'application88501737354503.pdf###application63051737354755.pdf###', NULL, '<p>ـــــــــــــــــــــــــــــ﷽ــــــــــــــــــــــــــــــــــ</p><p>🔻 ماه رجب است ولی دل‌هایمان منتظر شب نیمۀ شعبان؛ شبی که از آن به‌عنوان «لیلة القدر اهل بیت علیهم‌السلام» یاد می‌شود(۱).<br>شبی سرشار از فرصت برای بازنگری در دل‌ها و پیمان‌ها و عهدهای فراموش‌شده و مسئولیت‌های منتظران!<br>✋🏼 اما دراین شبِ خاص، گویا دل‌های شیعیان به صورت یک معمای شیرین به هم گره می‌خورد!<br>.معمایی که رازش در روز غدیر در نجف امیرالمؤمنین علیه السلام نهفته است!<br>.چون در مسیر ظهور و انتظار، روز «غدیر» تجلّی ولایتِ اهل بیت علیهم السلام و آزمون آمادگی برای ظهور است<br>و «نجف»، همان جایی‌ست که مؤمنین در کنار مضجع شریف امیرالمؤمنین علیه السلام، بزرگ‌ترین اجتماع شاد شیعیان را رقم خواهند زد<br>همانگونه که امام رضا علیه السلام فرمودند: «هر جا که بودی، روز غدیر نزد امیرالمؤمنین حاضر باش.»(۲) این فرمان، نه فقط دعوت به یک حضور ظاهری، بلکه تجدید عهدی است با امام زمان؛ عهدی که ایشان از شیعیان خود انتظار دارد. چه اینکه می‌فرمایند: «اگر دل‌های شیعیان ما در وفای به عهدشان یکدل بودند، هرگز دیدار با ما به تأخیر نمی‌افتاد. اما این اعمال ناشایست آنان است که ما را از آن‌ها دور نگه می‌دارد».(۳)</p><p>&nbsp;بیاییم از همین ماه رجب که منتظر نیمۀ شعبان هستیم، امسال در نیمۀ شعبان، در لیلة القدر اهل بیت علیهم السلام عهدمان را تازه کنیم و برای شکوه غدیر برنامه ریزی کنیم. تا بزرگ‌ترین عید خدا را باشکوه‌تر از همیشه برگزار کنیم و جهانیان را از پیام انتظار آگاه سازیم. چون حضور در نجف در روز غدیر، اجتماع قلوبِ شیعیان است؛ یک گام عملی برای تحقق فرمان امام رضا و امام زمان علیهما السلام و آمادگی برای ظهور.</p><p>📌 #منتظر_واقعی #غدیر_باشکوه #نیمه_شعبان</p><p>&nbsp;#لیلة_القدر_اهل_بیت #نجف_اشرف</p><p style=\"text-align:right;\"><br>ـــــــــــــــــــــــــــــــــــــــــــ<br>۱. «وَ إِنَّهَا اللَّيْلَةُ الَّتِي جَعَلَهَا اللَّهُ لَنَا أَهْلَ الْبَيْتِ»، وسائل الشیعة، ج ۸، ص ۱۰۶.<br>۲. «أَيْنَ مَا كُنْتَ فَاحْضُرْ يَوْمَ الْغَدِيرِ عِنْدَ أَمِيرِ الْمُؤْمِنِينَ عَلَيْهِ السَّلاَمُ»، تهذيب الأحكام، ج ۶، ص ۲۴.<br>۳. «وَ لَوْ اَنَّ أشياعَنا وَ فَقَّهُمُ اللّه ُ لِطاعَتِهِ، عَلى اجْتِماعٍ مِنَ الْقُلُوبِ…»، بحارالانوار، ج ۵۳، ص ۱۷۷.</p><p>♡⠀ &nbsp; &nbsp;〇⠀ &nbsp; &nbsp;⎙⠀ &nbsp;⌲⁣&nbsp;<br>ˡⁱᵏᵉ ᶜᵒᵐᵐᵉⁿᵗ &nbsp;ˢᵃᵛᵉ &nbsp;ˢʰᵃʳᵉ</p><p>https://eitaa.com/ghadiriam12</p>', 0, 0, 0, 0, 10, 'fa', 1, NULL, '2025-01-20 01:45:34', '2025-02-03 06:56:51');

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
(1, 1, NULL, 2, 0, 'dfldlfddlvd;', 1, 1, 'fa', 1, '2024-12-15 08:56:22', '2024-12-10 09:35:54', '2024-12-15 08:56:22'),
(2, 1, NULL, 2, 0, 'پاسخ', 1, 1, 'fa', 1, '2024-12-15 08:56:22', '2024-12-10 09:37:04', '2024-12-15 08:56:22'),
(3, 1, NULL, 2, 0, 'تست', 1, 1, 'fa', 1, '2024-12-15 08:56:22', '2024-12-10 09:37:51', '2024-12-15 08:56:22'),
(4, 7, NULL, 5, 0, 'خیلی عالی', 1, 1, 'fa', 1, NULL, '2024-12-11 08:26:55', '2024-12-11 08:33:34'),
(5, 7, NULL, 3, 0, 'خیلی خوب', 1, 1, 'fa', 1, NULL, '2024-12-11 08:40:50', '2024-12-12 06:58:04'),
(6, 3, NULL, 6, 0, 'دیدیسد', 1, 1, 'fa', 1, '2024-12-22 00:02:21', '2024-12-11 09:42:14', '2024-12-22 00:02:21'),
(7, 3, NULL, 6, 0, 'efegfewger', 1, 1, 'fa', 1, '2024-12-22 00:02:21', '2024-12-12 06:58:58', '2024-12-22 00:02:21'),
(8, 3, NULL, 6, 0, 'geeeeeeeeeeeeeeeee', 1, 1, 'fa', 1, '2024-12-22 00:02:21', '2024-12-12 06:59:01', '2024-12-22 00:02:21'),
(9, 3, NULL, 6, 0, 'ddddddddddddddddddddddddddd', 1, 1, 'fa', 1, '2024-12-22 00:02:21', '2024-12-12 06:59:07', '2024-12-22 00:02:21'),
(10, 3, NULL, 6, 6, 'swvvvvvvww', 1, 1, 'fa', 1, '2024-12-22 00:02:21', '2024-12-12 07:00:29', '2024-12-22 00:02:21'),
(11, 3, 1, 6, 8, 'wwwwwwwwwwwwwwww', 1, 0, 'fa', 1, '2024-12-22 00:02:21', '2024-12-12 07:00:35', '2024-12-22 00:02:21'),
(12, 5, NULL, 6, 0, 'با سلام \nان شاءالله خداوند از همه ی ارادتمندان به حضرت زهرا سلام الله علیها قبول بگرداند \nآمین', NULL, 2, 'fa', 1, '2024-12-22 00:02:21', '2024-12-16 07:16:43', '2024-12-22 00:02:21'),
(13, 5, NULL, 5, 0, 'سلام علیکم \nعالیه', NULL, 2, 'fa', 1, NULL, '2024-12-17 12:00:53', '2024-12-17 12:00:53'),
(14, 16, NULL, 3, 0, 'سلام علیکم، خیلی کتاب خوبی بود\nمن بسیار لذت بردم از احادیث این کتاب\nبخصوص بخش خلقت وجودی حضرت\nخدا عمر باعزت به استاد فرحزاد وبه شما دهد', 11, 1, 'fa', 1, NULL, '2024-12-22 00:32:23', '2025-01-05 11:18:14'),
(15, 16, NULL, 3, 0, 'سلام علیکم وقت بخیر\nکتاب بسبار خوبی بود ممنونم\nمخصوصا بخش اول کتاب، خلقت وجودی حضرت فاطمه زهرا سلام الله علیها', NULL, 2, 'fa', 1, '2025-01-05 11:18:36', '2024-12-22 00:33:59', '2025-01-05 11:18:36'),
(16, 20, NULL, 3, 0, 'بسیار عالی', NULL, 2, 'fa', 1, '2025-01-05 11:23:26', '2024-12-22 00:41:15', '2025-01-05 11:23:26'),
(17, 20, NULL, 3, 0, 'بسیار عالی', NULL, 2, 'fa', 1, '2025-01-05 11:18:54', '2024-12-22 00:42:04', '2025-01-05 11:18:54'),
(18, 20, NULL, 3, 0, 'بنده از کتاب استفاده کرده و در فیش سخنرانی و روضه بهره مند شدم', 11, 1, 'fa', 1, NULL, '2024-12-22 00:43:49', '2025-01-05 11:19:13'),
(19, 23, NULL, 5, 0, 'خیلی عالی', NULL, 2, 'fa', 1, NULL, '2024-12-22 00:48:25', '2024-12-22 00:48:25'),
(20, 26, NULL, 3, 0, 'سلام خوب وجامع', 11, 1, 'fa', 1, NULL, '2024-12-22 01:06:50', '2025-01-05 11:19:23'),
(21, 27, NULL, 3, 0, 'سلام علیکم.بنده هم دهه اول سخنرانی و عزداری داشتیم و هم دهه دوم.', NULL, 2, 'fa', 1, '2025-01-05 11:23:51', '2024-12-22 01:09:00', '2025-01-05 11:23:51'),
(22, 35, NULL, 3, 0, 'سلام\nانجام شد', 11, 1, 'fa', 1, NULL, '2024-12-22 01:52:58', '2025-01-05 11:23:37'),
(23, 42, NULL, 3, 0, 'سلام ممنون محتوا و کتاب عالی اجرتون با حضرت زهرا سلام الله علیها', 11, 1, 'fa', 1, NULL, '2024-12-22 04:29:32', '2025-01-05 11:18:03'),
(24, 17, NULL, 3, 0, 'از شما خادمان فاطمی تشکر میکنم..هوای ما در روستا داشته باشید', NULL, 2, 'fa', 1, NULL, '2024-12-23 16:34:05', '2024-12-23 16:34:05'),
(25, 56, NULL, 3, 0, 'سلام علیکم \nکتاب خوب وپرمحتوایی هست \nولی برای منبر هایی با مخاطب عمومی کمی سنگین هست لذا باید خیلی مطلب را آسان وروان کرد تا مخاطب بداند', NULL, 2, 'fa', 1, NULL, '2024-12-26 10:55:42', '2024-12-26 10:55:42'),
(26, 56, NULL, 3, 0, 'کتاب خوب وپرمحتوایی هست', NULL, 2, 'fa', 1, '2025-01-05 11:42:04', '2024-12-26 10:56:26', '2025-01-05 11:42:04'),
(27, 67, NULL, 3, 0, 'باسلام \nبنده دو جلسه بیشتر نتوانستم برگزار کنم ‌ به دلیل  اینکه فرزند کوچک داشتم که ۳۰ روز داشتن در توانم نبود که بیشتر برگزار کنم.   ان شاالله در مراسمات بعد جبران میکنم', NULL, 2, 'fa', 1, NULL, '2024-12-27 15:24:23', '2024-12-27 15:24:23'),
(28, 41, NULL, 3, 0, 'من کامل نخوندم ولی ی کم که خوندم عالی بود علی ااخصوص حدیث کسا', NULL, 2, 'fa', 1, NULL, '2025-01-07 16:00:02', '2025-01-07 16:00:02'),
(29, 104, NULL, 3, 0, 'سلام وعرض ادب کتاب بسبار مفید وخوبی بود ومن در مجالسام استفاده کردم ورضایت مخاطب رو کاملا احساس کردم وبه جان خودمم نشست  برترین بانوی هستی اما چقدر مظلوم', NULL, 2, 'fa', 1, NULL, '2025-01-07 16:42:15', '2025-01-07 16:42:15'),
(30, 105, NULL, 3, 0, 'سلام ممنون کتاب خوب وبامحتوای بود و بسیار استفاده کردیم', NULL, 2, 'fa', 1, NULL, '2025-01-07 16:46:01', '2025-01-07 16:46:01'),
(31, 110, NULL, 3, 0, 'سلام کتاب عالی بود عالیییییی', NULL, 2, 'fa', 1, NULL, '2025-01-07 16:47:22', '2025-01-07 16:47:22'),
(32, 50, NULL, 3, 0, 'باسلام و عرض ادب \nکتاب بسیار کاربردی  به خصوص در ایام فاطمیه می توان در سخنرانی و کلاس ها و جلسات خانگی که برگزار می کنیم از مطالب کتاب استفاده و محتوا آن را در اختیار بانوان قرار دهیم و بانوان با سیره حضرت آشنا می شوند،تشکر از زحمات تان،اجرتان با بی بی دو عالم حضرت زهرا سلام الله علیها', NULL, 2, 'fa', 1, NULL, '2025-01-07 16:59:28', '2025-01-07 16:59:28'),
(33, 111, NULL, 3, 0, 'سلام  کتاب خیلی عالی و پرمحتوایی بود در ۴ جلسه به صورت روضه و سخنرانی استفاده کردم .', NULL, 2, 'fa', 1, NULL, '2025-01-07 17:06:57', '2025-01-07 17:06:57'),
(34, 111, NULL, 3, 0, 'کتاب رو در حوزه علمیه معرفی کردم و همونجا هم خودم هم بقیه مبلغین از کتاب بهره فراوانی بردیم', NULL, 2, 'fa', 1, NULL, '2025-01-07 17:08:06', '2025-01-07 17:08:06'),
(35, 111, NULL, 5, 0, 'سلام وقت بخیر چطور سفارش بدم', NULL, 2, 'fa', 1, NULL, '2025-01-07 17:09:51', '2025-01-07 17:09:51'),
(36, 116, NULL, 3, 0, 'سلام و درود \nکتاب عالی بود و همچنین محتوا ها و موضوعات ارائه شده در کانال.\nواقعاً دغدغه ما نسبت به موضوع و محتوای عالی کم شده.\nاجرتون با حضرت زهرا سلام الله علیها', NULL, 2, 'fa', 1, NULL, '2025-01-07 17:26:05', '2025-01-07 17:26:05'),
(37, 120, NULL, 3, 0, 'سلام کتاب عالی بود ساده وروان قابل استفاده برای عموم', NULL, 2, 'fa', 1, NULL, '2025-01-07 18:20:06', '2025-01-07 18:20:06'),
(38, 120, NULL, 3, 0, 'باعرض سلام  وادب \nکتاب مفیدوارزشمندی بود خداخیرتون بده', NULL, 2, 'fa', 1, NULL, '2025-01-07 18:22:00', '2025-01-07 18:22:00'),
(39, 53, NULL, 3, 0, 'باسلام و خدا قوت \nمن از کتاب فاطمه برترین بانوی هستی استفاده کردم خیلی مطالب کاربردی و خوبی داشت ممنون', NULL, 2, 'fa', 1, NULL, '2025-01-07 22:41:47', '2025-01-07 22:41:47'),
(40, 107, NULL, 3, 0, 'باسلام و تشکر حقیر از این کتاب استفاده کردم و سبک زندگی و سیره عملی حضرت زهرا (سلام الله علیها) را بیان کردم', NULL, 2, 'fa', 1, NULL, '2025-01-08 00:31:25', '2025-01-08 00:31:25'),
(41, 126, NULL, 5, 0, 'سلام ممنونم از لطف شما ...', NULL, 2, 'fa', 1, NULL, '2025-01-08 00:42:54', '2025-01-08 00:42:54'),
(42, 131, NULL, 3, 0, 'سلام.خیلی متشکرم از طرح بسیار عالی شما. بنده از کتاب در 10 کلاس در دانشگاه های مختلف مشهد مقدس استفاده و مطالبی از آن را برای دانشجویان تبیین کردم.', NULL, 2, 'fa', 1, NULL, '2025-01-08 01:42:54', '2025-01-08 01:42:54'),
(43, 134, NULL, 3, 0, 'سلام علیکم \nحقیقتا عرض میکنم کتابی به این جامعیتی تا به حال ندیده بودم با اینکه کتاب‌های دیگر رو هم دیدمبنده از این کتاب در منابر مسجد و هیئات استفاده کردم و هم خودم لذت بردن و هم مردم خدا خیر کثیر به همهشما و مولف گرامی عنایت بفرماید.\nعباس خدری روحانی مسجد شهید مدنی خرم آباد لرستان', NULL, 2, 'fa', 1, NULL, '2025-01-08 03:39:33', '2025-01-08 03:39:33'),
(44, 135, NULL, 3, 0, 'سلام وعرض ادب بهترین کتابی بود که در این ایام فاطمیه دریافت کردم خیلی محتوا عالی ،سلیس وروان ،مطالب خیلی دلنشین بود \nتمامی جلسات منبر از این کتاب استفاده کردم \nنیازی نبود دنبال مطلب بگردم به دلیل اینکه همه چیز که میخواستم در این کتاب بود اونم با سند و مدرک \nخدا خیرتون بده\nاجرتون با حضرت زهرا سلام الله علیها \nگزارشات انجام شد.', NULL, 2, 'fa', 1, NULL, '2025-01-08 10:09:07', '2025-01-08 10:09:07'),
(45, 135, NULL, 3, 0, 'هر چی از این کتاب تعریف کنم کمه \nبنده مبلغ بودم \nخیلی پر محتوا بود کتاب \nخیلی قشنگ مطالب باز کرده بود علاوه براینکه به دل خودمون می‌نشست به دل مخاطب اثرش بیشتر بود\nالحمدلله رب العالمین', NULL, 2, 'fa', 1, NULL, '2025-01-08 10:10:32', '2025-01-08 10:10:32'),
(46, 11, NULL, 8, 0, 'با سلام \nاز همه ی مبلغین درخواست داریم پروفایل خودشان را تکمیل نمایند \nیا علی', 11, 1, 'fa', 1, NULL, '2025-01-17 15:06:38', '2025-01-17 15:06:38'),
(47, 143, NULL, 8, 0, 'سلام مبارکشون باشه  در پناه امیر المومنین علی علیه السلام', NULL, 2, 'fa', 1, NULL, '2025-01-17 15:16:07', '2025-01-17 15:16:07'),
(48, 105, NULL, 8, 0, 'عالی بود', NULL, 2, 'fa', 1, NULL, '2025-01-17 15:17:06', '2025-01-17 15:17:06'),
(49, 40, NULL, 8, 46, 'سلام علیکم \nواقعا ممنونم از این کتاب بسیار خوبی که برای فاطمیه فرستادین چندین منبر ما ازش استفاده کردیم خیلی عالی بود خدا خیرتون بده انشاالله', NULL, 2, 'fa', 1, NULL, '2025-01-17 15:23:03', '2025-01-17 15:23:03'),
(50, 151, NULL, 3, 0, 'سلام خدمت شما بزرگوار ان \nممنون‌از حمایت محتوایی \nبسیار مناسب وکاربردی بود', NULL, 2, 'fa', 1, NULL, '2025-01-17 15:38:25', '2025-01-17 15:38:25'),
(51, 16, NULL, 7, 0, 'سلام علیکم وقت بخیر\nمراسم اعتکاف خدا روشکر خوب بود واز منابع خوب اساتید بزرگ حوزه استفاده کردیم', NULL, 2, 'fa', 1, NULL, '2025-01-17 15:39:29', '2025-01-17 15:39:29'),
(52, 132, NULL, 8, 0, 'سلام.داخل اسامی برگزیدگان.محمد کیانی هست.میخاستم ببینم محمد کیهانی یا محمد کیانی', NULL, 2, 'fa', 1, NULL, '2025-01-17 16:01:58', '2025-01-17 16:01:58'),
(53, 84, NULL, 8, 0, 'سلام علیکممبارک همه دوستان باشه ان شاالله', NULL, 2, 'fa', 1, NULL, '2025-01-17 16:16:11', '2025-01-17 16:16:11'),
(54, 27, NULL, 8, 46, 'ممنون.خدا خیرتون بدهد.', NULL, 2, 'fa', 1, NULL, '2025-01-17 16:18:11', '2025-01-17 16:18:11'),
(55, 89, NULL, 8, 0, 'عرض سلام و احترام محضر سروران معزز و اساتید گرانقدر و تقدیر بابت زحمات ارزنده و صادقانه دوستان', NULL, 2, 'fa', 1, NULL, '2025-01-17 16:27:00', '2025-01-17 16:27:00'),
(56, 94, NULL, 3, 0, 'سلام علیکم  وقت همه شما عزیزان بخیر با تشکر از دست اندرکاران گرامی\nاحتراما به استحضار شما عزیزان می رساند که کتاب مذکورجامع و عالی بود و از متن واحادیث این کتاب لذت بردیم و در سخنرانی ها و روضه ها و در جلسات مختلف استفاده بهینه کردیم انشاءالله موفق باشید', NULL, 2, 'fa', 1, NULL, '2025-01-17 16:52:42', '2025-01-17 16:52:42'),
(57, 165, NULL, 8, 0, 'خدا قوت تشکر از شما بزرگواران', NULL, 2, 'fa', 1, NULL, '2025-01-17 23:39:42', '2025-01-17 23:39:42'),
(58, 29, NULL, 8, 0, 'بسیار عالی \nماجورین', NULL, 2, 'fa', 1, NULL, '2025-01-18 10:26:30', '2025-01-18 10:26:30'),
(59, 16, NULL, 7, 0, 'سلام علیکم وقت بخیر\nاعتکاف خوبی بود، امیدوارم همینطور که در اعتکاف همه دور هم جمع شدیم در روز عید غدیر هم به برکت حضرت علی علیه السلام این چنین باشد', NULL, 2, 'fa', 1, NULL, '2025-01-20 07:00:45', '2025-01-20 07:00:45'),
(60, 111, NULL, 8, 46, 'ضمن تبریک اعیاد ماه رجب از زحمات شما و بقیه دوستان تقدیر و تشکر دارم.کتاب بسیار پر محتوا و جذابی بود برای طلبه های حوزه هر شب در گفتگوهای دور همی بیان شد', NULL, 2, 'fa', 1, NULL, '2025-01-23 06:56:57', '2025-01-23 06:56:57'),
(61, 92, NULL, 3, 0, 'سلام وخداقوت\nکتاب برایم مطالب جالب وشنیدنی داشت \nاجرکم عندالله', NULL, 2, 'fa', 1, NULL, '2025-01-23 17:35:44', '2025-01-23 17:35:44'),
(62, 86, NULL, 3, 0, 'سلام انجام شد', NULL, 2, 'fa', 1, NULL, '2025-01-27 14:32:55', '2025-01-27 14:32:55'),
(63, 25, NULL, 3, 0, 'باعرض سلام خسته نباشید محتوای کتاب واقعا عالی بود دستتون درد نکنه  و در نشست های کلاسی استفاده کردم', NULL, 2, 'fa', 1, NULL, '2025-02-01 13:36:00', '2025-02-01 13:36:00'),
(64, 193, NULL, 3, 0, 'سلام انجام شد خیلی هم عالی', NULL, 2, 'fa', 1, NULL, '2025-02-01 18:54:42', '2025-02-01 18:54:42');

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
('|178.131.226.201', 'i:1;', 1734852805),
('|178.131.226.201:timer', 'i:1734852805;', 1734852805),
('|5.115.173.24', 'i:1;', 1735631429),
('|5.115.173.24:timer', 'i:1735631429;', 1735631429),
('|5.123.43.121', 'i:3;', 1736143622),
('|5.123.43.121:timer', 'i:1736143622;', 1736143622),
('|5.212.162.44', 'i:1;', 1733997950),
('|5.212.162.44:timer', 'i:1733997950;', 1733997950),
('|5.215.242.211', 'i:1;', 1737141686),
('|5.215.242.211:timer', 'i:1737141686;', 1737141686),
('|5.250.54.252', 'i:1;', 1736707798),
('|5.250.54.252:timer', 'i:1736707798;', 1736707798);

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
(5, 1, 6, 10, 'دوره جدید', '1403', '33', 3, 23, 'مسجد', 36, 2, 'مسجدی', NULL, 1, '2025-01-05 09:54:39', '2025-01-05 13:24:39', '2025-01-05 09:54:39'),
(8, 2, 8, 11, 'فاطمیه', '1403', '3', 1, 100, 'مسجد', 37, 4, 'اصفهان', NULL, 1, '2025-01-05 09:54:32', '2025-01-05 13:24:32', '2025-01-05 09:54:32'),
(9, 2, 6, 10, 'دوره جدید', '1403', '33', 3, 23, 'مسجد', 36, 2, 'مسجدی', 'ّتست', 1, '2025-01-05 09:54:39', '2025-01-05 13:24:39', '2025-01-05 09:54:39'),
(11, 2, 7, 12, 'لزانبلغن', '1403', '55', 1, 55, 'طبلتطبلت', 5, 1, 'سیلبسیل', NULL, 1, '2025-01-05 09:54:25', '2025-01-05 13:24:25', '2025-01-05 09:54:25'),
(28, 3, 3, 25, 'grh', '1403', '44', 1, 44, '44', 26, 2, 't4t', NULL, 1, '2025-01-05 09:54:51', '2025-01-05 13:24:51', '2025-01-05 09:54:51'),
(20, 3, 6, 18, 'courses', '1403', '34', 1, 34, 'school', 21, 4, 'city', NULL, 1, '2025-01-05 09:54:11', '2025-01-05 13:24:11', '2025-01-05 09:54:11'),
(22, 3, 4, 13, 'نقشه خوانی غدیر', '1403', '60', 3, 50, 'تالار شهر', 72, 9, 'بوجن', NULL, 1, '2025-01-05 09:54:18', '2025-01-05 13:24:18', '2025-01-05 09:54:18'),
(32, 3, 5, 27, 'طا', '1403', '548', 2, 80, 'اتم', 124, 7, 'بیت', NULL, 1, '2025-01-05 09:54:57', '2025-01-05 13:24:57', '2025-01-05 09:54:57'),
(46, 4, 4, 13, 'نقشه خوانی غدیر', '1403', '60', 3, 50, 'تالار شهر', 72, 9, 'بوجن', NULL, 1, '2025-01-05 09:54:18', '2025-01-05 13:24:18', '2025-01-05 09:54:18'),
(44, 4, 6, 18, 'courses', '1403', '34', 1, 34, 'school', 21, 4, 'city', NULL, 1, '2025-01-05 09:54:11', '2025-01-05 13:24:11', '2025-01-05 09:54:11'),
(45, 4, 6, 18, 'دوره من', '1403', '34', 1, 34, 'مسجد', 5, 1, 'شهرمن', NULL, 1, '2025-01-05 09:54:11', '2025-01-05 13:24:11', '2025-01-05 09:54:11'),
(52, 4, 14, 34, 'دهه فاطمیه', '1403', '30', 4, 20, 'مدرسه', 13, 24, 'انبارالوم', 'امین_آباد', 1, '2025-01-05 09:53:14', '2025-01-05 13:23:14', '2025-01-05 09:53:14'),
(53, 4, 16, 35, 'منبر دهه فاطمیه', '1403', '40', 3, 20, 'منزل افراد', 246, 11, 'سرخس', NULL, 1, NULL, NULL, NULL),
(89, 4, 22, 37, 'فاطمیه', '1403', '45', 3, 400, 'حسینیه', 321, 20, 'دلبران', 'بهار لو', 1, NULL, NULL, NULL),
(200, 4, 23, 88, 'اسامی و القاب حضرت زهرا', '1403', '300', 5, 60, 'مسجدالمهدی', 332, 4, 'کاشان', NULL, 1, NULL, NULL, NULL),
(199, 4, 23, 88, 'فاطمه برترین بانوی هستی', '1403', '500', 1, 80, 'منزل خانم علیزاده', 332, 4, 'کاشان', NULL, 1, NULL, NULL, NULL),
(198, 4, 23, 88, 'زندگی حضرت زهرا و همسرداری نمونه ایشان', '1403', '200', 3, 60, 'منزل علوی', 332, 4, 'کاشان', NULL, 1, NULL, NULL, NULL),
(58, 4, 24, 39, 'ایام فاطمیه', '1403', '3000', 1, 200, 'مسجد ثامن الحجج', 99, 10, 'بیرجند', 'دارج', 1, NULL, NULL, NULL),
(59, 4, 25, 40, 'نشست دانش اموزی درایام فاطمیه درمورد کتاب  فاطمه برترین بانوی هستی  و نمایش حدیث کسا و صلوات خاصه حضرت فاطمه با بچه ها', '1403', '30', 4, 35, 'مدرسه', 423, 2, 'نقده', NULL, 1, NULL, NULL, NULL),
(60, 4, 25, 40, 'نمایش نامه حدیث کسا', '1403', '30', 4, 35, 'مدرسه', 423, 2, 'نقده', NULL, 1, NULL, NULL, NULL),
(61, 4, 26, 41, 'ایام فاطمیه سخنرانی', '1403', '35', 3, 80, 'ماهدشت، خیابان رحمانی، قرارگاه تعالی بانوان', 336, 5, 'ماهدشت', NULL, 1, NULL, NULL, NULL),
(205, 4, 28, 91, 'فاطمیه', '1403', '90', 4, 75, 'دبستان حجاب', 281, 9, 'کیان', NULL, 1, NULL, NULL, NULL),
(63, 4, 30, 45, 'موکب دانش اموزی', '1403', '30', 4, 200, 'مدرسه دخترانه', 300, 30, 'فامنین', 'نگارخاتون', 1, NULL, NULL, NULL),
(64, 4, 32, 46, 'اجرای حداقل 3 جلسه از فصل 14 و 15 کتاب فاطمه برترین بانوی هستی و اهدای کتاب هب یکی از فعالین فرهنگی در کنطقه', '1403', '40', 1, 250, 'روضه های خانگی', 373, 17, 'لارو لطیفی، ارد ، گراش و حومه', NULL, 1, NULL, NULL, NULL),
(197, 4, 23, 88, 'حجاب و عفاف حضرت زهرا', '1403', '300', 4, 60, 'منزل مهدوی', 332, 4, 'کاشان', NULL, 1, NULL, NULL, NULL),
(66, 4, 35, 48, 'فاطمیه', '1403', '400', 1, 700, 'مسجد', 127, 4, NULL, 'قلعه ناظر', 1, NULL, NULL, NULL),
(67, 4, 37, 49, 'ایام فاطمیه دوم', '1403', '2', 3, 30, 'دهنو گنبکی', 222, 21, 'گنبکی', 'دهنو', 1, NULL, NULL, NULL),
(68, 4, 39, 50, 'فاطمیه', '1403', '40', 1, 300, 'حسینیه', 407, 6, 'مهران', 'مهران', 1, NULL, NULL, NULL),
(69, 4, 40, 51, 'فاطمیه دوم', '1403', '30', 1, 150, 'مسجد', 396, 11, 'شاندیز', 'فرح آباد', 1, NULL, NULL, NULL),
(70, 4, 42, 52, 'ایام فاطمیه', '1403', '60', 4, 300, 'مدرسه دخترانه', 214, 21, 'مرکزی', NULL, 1, NULL, NULL, NULL),
(71, 4, 43, 53, 'قاطمیه', '1403', '60', 4, 60, 'مسجد حضرت ابوالفضل', 421, 4, 'بادرود', 'فمی', 1, NULL, NULL, NULL),
(73, 4, 44, 54, 'منبر فاطمیه ۱۰ جلسه', '1403', '30', 1, 100, 'مسجد', 117, 11, 'تربت حیدریه', NULL, 1, NULL, NULL, NULL),
(74, 4, 44, 54, 'کلاس داری', '1403', '600', 4, 50, 'مسجد', 117, 11, 'تربت حیدریه', NULL, 1, NULL, NULL, NULL),
(75, 4, 47, 55, 'کتاب فاطمه برترین بانوی هستی', '1403', '180', 3, 50, 'مسجد حضرت زینب سلام الله', 378, 4, 'فولادشهر', NULL, 1, NULL, NULL, NULL),
(76, 4, 48, 56, 'تبلیغ فاطمیه', '1403', '90', 1, 150, 'مسجد و منزل', 339, 22, 'کرمانشاه', NULL, 1, NULL, NULL, NULL),
(77, 4, 49, 57, 'تبلیغ غدیریه', '1403', '1200', 1, 57, 'مسجد جامع شهر سرمست', 372, 22, 'شهر سرمست', 'سرمست', 1, NULL, NULL, NULL),
(78, 4, 50, 58, 'فاطمیه', '1403', '120', 3, 25, 'گنبکی،علی آباد مسجد علی ابن ابی طالب ع', 222, 21, 'گنبکی', 'علی آباد', 1, NULL, NULL, NULL),
(79, 4, 51, 59, 'تبلیغ فاطمه برترین بانوی هستی', '1403', '45', 1, 200, 'نیشابور هیات جنت الزینب سلام الله علیها', 432, 11, 'نیشابور', '.', 1, NULL, NULL, NULL),
(80, 4, 53, 60, 'فاطمه برترین بانوی عالم', '1403', '60', 3, 50, 'جلسات خانگی و مسجد ابوالفضل ع', 222, 21, NULL, 'میرآباد کناردشت', 1, NULL, NULL, NULL),
(81, 4, 55, 61, 'فاطمیه', '1403', '40', 5, 130, 'مسجد', 211, 25, 'رشت', NULL, 1, NULL, NULL, NULL),
(82, 4, 58, 62, 'فاطمیه', '1403', '60', 1, 150, 'نمایشگاه فاطمیه', 115, 1, 'تبریز', NULL, 1, NULL, NULL, NULL),
(84, 4, 17, 64, 'تبلیغ فاطمیه', '1403', '1200', NULL, 300, 'مدارس لامرد و مسجد فاطمه الزهرا', 375, 17, 'لامرد', 'دهشیخ', 1, NULL, NULL, NULL),
(85, 4, 60, 65, 'فاطمیه', '1403', '120', 1, 150, 'روستا', 232, 10, 'زهان', NULL, 1, NULL, NULL, NULL),
(86, 4, 61, 67, 'یلیلی', '1403', '55', NULL, 353, 'بیبلیث', 5, 1, '535', NULL, 1, '2024-12-25 09:02:41', '2024-12-25 12:32:41', '2024-12-25 09:02:41'),
(87, 4, 62, 68, 'تست', '1403', '120', 5, 25, 'مسجد محمدیه', 31, 1, 'تست', NULL, 1, '2025-01-06 09:39:33', '2025-01-06 13:09:33', '2025-01-06 09:39:33'),
(88, 4, 63, 69, 'ایام فاطمیه', '1403', '100', 3, 100, 'مساجد و پایگاه های بسیج شهرستان و روضه های خانگی', 54, 6, 'ایوان', 'ویله', 1, NULL, NULL, NULL),
(99, 4, 19, 63, 'فاطمیه', '1403', '100', 3, 50, 'جلسات خانگی قرآن', 375, 17, 'لامرد', NULL, 1, NULL, NULL, NULL),
(146, 4, 64, 83, NULL, '1403', '30', 1, 50, 'مسجد حضرت ابوالفضل ع', 424, 27, 'نکا', 'روستای دوقانلو', 1, NULL, NULL, NULL),
(95, 4, 46, 71, 'نق', '1403', '50', 1, 300, 'مسجد', 396, 11, 'مشهد', '......', 1, NULL, NULL, NULL),
(98, 4, 66, 73, 'الگوقراردادن حضرت زهرا،محبت ،ولایت ،..', '1403', '120', 4, 40, 'فاطمیه ومدرسه', 13, 24, 'انبارالوم', '.وک تپه ۱', 1, NULL, NULL, NULL),
(100, 4, 68, 75, 'فضایل اخلاقی فاطمی', '1403', '40', 1, 50, 'مسجد فاطمةُ الزهرا سلام الله علیها', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(101, 4, 71, 77, 'فاطمیه', '1403', '30', 4, 25, 'مدرسه', 13, 24, 'انبارالوم', 'امین آباد', 1, NULL, NULL, NULL),
(102, 4, 70, 78, 'دهه فاطمیه', '1403', '60', 4, 50, 'مدرسه ومسجد محل', 13, 24, 'آق  قلا', 'انقلاب', 1, NULL, NULL, NULL),
(106, 4, 15, 36, 'فاطمیه دوم', '1403', '40', 1, 100, 'مسجد امام رضا علیه السلام', 125, 30, 'تویسرکان', NULL, 1, NULL, NULL, NULL),
(145, 4, 11, 48, 'فاطمیه', '1403', '400', 1, 700, 'مسجد', 127, 4, NULL, 'قلعه ناظر', 1, NULL, NULL, NULL),
(232, 4, 80, 84, 'ایام فاطمیه', '1403', '60', 5, 16, 'مسجد', 342, 24, 'کلاله', 'وحدت', 1, NULL, NULL, NULL),
(231, 4, 80, 84, 'ایام فاطمیه', '1403', '60', 4, 20, 'مسجد', 342, 24, 'کلاله', 'وحدت', 1, NULL, NULL, NULL),
(201, 4, 78, 90, 'فاطمه شناسی', '1403', '50', 4, 60, 'نمازخانه مدرسه', 423, 2, 'نقده', NULL, 1, NULL, NULL, NULL),
(210, 4, 89, 92, 'مدیران فاطمی و همسران قرآنی', '1403', '60', 3, 300, 'پایگاه های بسیج خواهران تکایای مذهبی و جلسات بانوان', 364, 12, 'درق', NULL, 1, NULL, NULL, NULL),
(211, 4, 89, 92, 'همسر دار علوی و فاطمی و ولایت پذیری', '1403', '60', 1, 300, 'مسجد امام خمینی ره', 364, 12, 'درق', NULL, 1, NULL, NULL, NULL),
(209, 4, 89, 92, 'سبک زندگی و لایت مداری فاطمی', '1403', '60', 1, 200, 'مسجد امیرالمومنین علی علیه السلام', 364, 12, 'درق', NULL, 1, NULL, NULL, NULL),
(208, 4, 89, 92, 'رفع شبهات و پاسخگویی به شبهات', '1403', '60', 5, 100, 'مدارس', 364, 12, 'درق', NULL, 1, NULL, NULL, NULL),
(207, 4, 89, 92, 'معارف فاطمی', '1403', '60', 5, 15, 'هیئات مذهبی', 364, 12, 'درق', NULL, 1, NULL, NULL, NULL),
(206, 4, 89, 92, 'سبک زندگی فاطمی و تربیت دینی', '1403', '60', 1, 400, 'مسجد امیرالمومنین علی علیه السلام، شبستان ولایت مصلی امام خمینی (ره), ،هیئات مذهبی، روضه های خانگی، مدارس و....', 364, 12, 'درق', NULL, 1, NULL, NULL, NULL),
(212, 4, 92, 93, 'سبک زندگی حضرت زهرا س', '1403', '30', 5, 40, 'مدرسه شهید مهرجو', 300, 30, 'فامنین', 'فامنین', 1, NULL, NULL, NULL),
(213, 4, 93, 94, 'شناخت فاطمه زهرا سلام الله علیها', '1403', '30', 3, 40, 'منزل شخصی', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(214, 4, 97, 96, 'روشنگری حضرت فاطمه زهرا سلام الله علیها بعد پیغمبر ص', '1403', '40', 4, 50, 'مسجد', 188, 26, 'دلفان', 'شهر ی', 1, NULL, NULL, NULL),
(215, 4, 105, 97, 'فاطمیه', '1403', '180', 3, 30, 'حسینیه', 2, 17, 'آباده', 'حشمتیه', 1, NULL, NULL, NULL),
(216, 4, 108, 98, 'ایام فاطمیه', '1403', '120', NULL, 90, 'دبستان پسرانه شهدا', 371, 24, 'گنبد', 'گنبد', 1, NULL, NULL, NULL),
(217, 4, 110, 99, 'تبیین جایگاه حضرت زهرا س و نوع حمایت از امام زمان عج', '1403', '45', 4, 40, 'مدرسه دخترانه', 174, 2, 'خوی', NULL, 1, NULL, NULL, NULL),
(220, 4, 103, 103, 'جلسات با موضوع کتاب فاطمه برترین بانوی هستی', '1403', '250', 5, 120, 'مدرسه', 358, 24, 'گالیکش', 'گالیکش', 1, NULL, NULL, NULL),
(221, 4, 112, 104, 'منبر', '1403', '60', 1, 50, 'حسینیه', 332, 4, 'کاشان', 'کاشان', 1, NULL, NULL, NULL),
(222, 4, 18, 105, 'فاطمه برترین بانوی هستی', '1403', '60', 3, 50, 'حسینیه حضرت ابوالفضل علیه السلام', 306, 4, 'بخش مرکزی', 'میلاگرد', 1, NULL, NULL, NULL),
(219, 4, 103, 103, 'فاطمه برترین بانوی هستی', '1403', '360', 4, 150, 'مدرسه', 417, 24, 'مینودشت', 'مینودشت', 1, NULL, NULL, NULL),
(192, 4, 114, 106, 'فضیلت حضرت فاطمه', '1403', '40', NULL, 300, 'مسجد', 380, 25, 'لنگرود', 'پشکوه', 1, '2025-01-07 17:09:18', '2025-01-07 20:39:18', '2025-01-07 17:09:18'),
(223, 4, 29, 107, 'فاطمیه', '1403', '60', 2, 100, 'مهدیه', 320, 8, 'زیباشهر', NULL, 1, NULL, NULL, NULL),
(224, 4, 124, 112, 'الگو گیری ازرفتاروحجاب حضرت فاطمه زهرا سلام الله علیه', '1403', '60', NULL, 30, 'حسینه', 93, 30, NULL, 'زاغه', 1, NULL, NULL, NULL),
(225, 4, 127, 113, 'فضائل حضرت زهرا سلام الله علیه', '1403', '45', 1, 50, 'مسجد علی ابن ابی طالب', 448, 31, 'یزد', 'یزد', 1, NULL, NULL, NULL),
(228, 4, 123, 114, 'ایام فاطمیه کتاب فاطمه برترین بانوی هستی', '1403', '15', 2, 20, 'حوزه علمیه مدینه العلم', 280, 4, 'شهرضا', NULL, 1, NULL, NULL, NULL),
(227, 4, 123, 114, 'ایام فاطمیه کتاب فاطمه برترین بانوی هستی', '1403', '45', 2, 30, 'روضه خانگی', 280, 4, 'شهرضا', NULL, 1, NULL, NULL, NULL),
(226, 4, 123, 114, 'ایام فاطمیه کتاب فاطمه برترین بانوی هستی', '1403', '60', 1, 150, 'مسجد حضرت سلمان فارسی ره', 280, 4, 'شهرضا', NULL, 1, NULL, NULL, NULL),
(229, 4, 132, 115, 'کتاب برترین بانوی هستی', '1403', '45', 2, 25, 'مسجد', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(240, 4, 81, 116, 'سخنرانی', '1403', '15', 1, 50, 'مسجد', 437, 16, 'علی اکبر', NULL, 1, NULL, NULL, NULL),
(241, 4, 134, 117, 'فاطمیه', '1403', '100', 1, 400, 'مسجد شهید مدنی چهارراه طیب', 157, 26, 'خرم آباد', 'نداشت', 1, NULL, NULL, NULL),
(236, 4, 82, 85, 'فاطمیه', '1403', '180', 4, 30, 'مجتمع آموزشی ثارالله', 338, 21, 'کرمان', NULL, 1, NULL, NULL, NULL),
(242, 4, 135, 118, 'سبک زندگی فاطمی', '1403', '240', 3, 30, 'محله ،خانه به خانه', 402, 21, 'نودژ', 'خالق آباد', 1, NULL, NULL, NULL),
(243, 4, 136, 119, 'فاطمیه دوم', '1403', '300', 1, 200, 'مسجد امام حسین علیه السلام', 338, 21, 'کرمان', '_', 1, NULL, NULL, NULL),
(244, 4, 137, 120, 'فاطمیه', '1403', '60', 3, 40, 'مسجد', 336, 5, 'کرج', 'کرج', 1, NULL, NULL, NULL),
(270, 4, 141, 122, 'سیره زندگی حضرت زهرا', '1403', '60', 4, 60, 'مدرسه شهید خضرایی دو پایه چهارم', 335, 30, 'کبودراهنگ', 'نبود', 1, NULL, NULL, NULL),
(271, 4, 141, 122, 'بهترین بانوی هستی', '1403', '60', 3, 150, 'هیئت سیدالشهدا', 335, 30, 'کبودراهنگ', 'نبود', 1, NULL, NULL, NULL),
(269, 4, 141, 122, 'محراب مادر', '1403', '60', 4, 30, 'مدرسه شهید خضرایی', 335, 30, 'کبودراهنگ', 'نبود', 1, NULL, NULL, NULL),
(267, 4, 141, 122, 'فاطمه شناسی', '1403', '60', 5, 100, 'مدرسه دخترانه بنت‌الهدی', 126, 8, 'منطقه 11', NULL, 1, NULL, NULL, NULL),
(268, 4, 141, 122, 'آفرینش نور', '1403', '60', 1, 50, 'مسجد', 335, 30, 'کبودراهنگ', 'نبود', 1, NULL, NULL, NULL),
(65, 4, 33, 47, 'ایام فاطمیه', '1403', '75', 3, 30, 'مسجدامام خمینی', 334, 20, 'کامیاران', NULL, 1, NULL, NULL, NULL),
(94, 4, 64, 70, NULL, '1403', '30', 1, 50, 'مسجد', 27, 424, 'نکا', 'دوقانلو', 1, NULL, '2025-01-12 19:14:35', '2025-01-12 19:14:35');

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
(38, 6, 'محدثه', 'عبادی', 'همکار فرهنگی', 2, '353546', 'افرادی که با شما در امور فرهنگی همکاری سازنده دارند یا در محل تبلیغ شما تاثیر گزارند افرادی که با شما در امور فرهنگی همکاری سازنده دارند یا در محل تبلیغ شما تاثیر گزارند افرادی که با شما در امور فرهنگی همکاری سازنده دارند یا در محل تبلیغ شما تاثیر گزارند', NULL, NULL, NULL, NULL),
(37, 5, 'داود', 'صانعی', 'مدیر', 1, '09196637217', NULL, NULL, NULL, NULL, NULL),
(36, 5, 'سیدمحمد مهدی', 'فاطمی', 'مدیر کل', 1, '09127549713', NULL, NULL, NULL, NULL, NULL),
(25, 46, 'علیجان', 'زحمتکار', 'امام جماعت', 1, '09151216037', NULL, NULL, NULL, NULL, NULL),
(20, 61, 'علی', 'پارسا', 'مدیر مدرسه', 1, '09120000000', NULL, NULL, NULL, NULL, NULL),
(55, 64, 'سید عیسی', 'موسوی', 'فرمانده پایگاه', 1, '09111578167', NULL, NULL, NULL, NULL, NULL),
(23, 28, 'محبوبه', 'صالحی', 'مربی پرورشی', 2, '09139833511', NULL, NULL, NULL, NULL, NULL),
(33, 66, 'ام البنین', 'اربابی', 'مربی قرانی', 2, '09395808653', 'باهمکاری هم تمام مراسمات درمدرسه وروستاروبرگزارمیکنیم ایشون مهدقرانی دارندویکی ازفعالین روستاهستند', NULL, NULL, NULL, NULL),
(34, 66, 'فاطمه', 'اربابی', 'مسئول پایگاه بسیج روستای گوک تپه ۱', 2, '09306017680', 'همکاری خیلی زیادبامدرسه دارندودربرگزاری تمام مراسمات مدرسه وروستافعال هستندوبااینکه خانم هستندجشن غدیررودرروستاکه هم تشیع هستندوهم اهل سنت بسیارباتعصب به بهترین نحووباشکوه ترین مراسم بدون توهین  به مذهب دیگربرگزارمیکنند', NULL, NULL, NULL, NULL),
(46, 69, 'محسن', 'زارع بیدکی', 'خادم', 1, '09103320210', NULL, NULL, NULL, NULL, NULL),
(45, 69, 'فتح الله', 'زارع بیدکی', 'مؤذن', 1, '09132534252', NULL, NULL, NULL, NULL, NULL),
(35, 70, 'مهدیه', 'خواجه', 'فرهنگی است', 2, '09059923732', 'در کارهای فرهنگی خیلی به من کمک می کند.', NULL, NULL, NULL, NULL),
(41, 78, 'شیرین', 'کوهی', 'مربی دوم امین', 2, '09148782507', NULL, NULL, NULL, NULL, NULL),
(42, 78, 'ناهید', 'بوداقلو', 'مدیریت مدرسه', 2, '09148549412', NULL, NULL, NULL, NULL, NULL),
(54, 29, 'وحید', 'عیسوند', 'مسئول هيأت', 1, '09355918700', NULL, NULL, NULL, NULL, NULL),
(44, 141, 'مجتبی', 'لطیفی', 'هیئت امنا مسجد -هیئت دار و موکب سبدالشهدا', 1, '09483531163', 'کارکنان دولتی هستند و جز هیئت امنا و مسول هیئت سیدالشهدا در اصل هیئت برای خودشان هست و هر سه شنبه هیئت دارند .', NULL, NULL, NULL, NULL),
(49, 38, 'سعید', 'صوفی', 'مبلغ طرح هجرت', 1, '9232629962', NULL, NULL, NULL, NULL, NULL),
(52, 155, 'معصومه', 'الفت', 'مربی', 2, '09147148527', NULL, NULL, NULL, NULL, NULL),
(53, 67, 'فاطمه', 'عباسی', 'مدیریت دارالقرآن', 2, '09137653846', NULL, NULL, NULL, NULL, NULL),
(63, 159, 'جواد', 'قاسمی', 'کانون فرهنگی', 1, '09132779846', NULL, NULL, NULL, NULL, NULL),
(62, 159, 'عادل', 'جلالیان', 'گروه سرود', 1, '09103978570', NULL, NULL, NULL, NULL, NULL),
(64, 21, 'علیرضا', 'شیرعلی', 'مربی صالحین', 1, '09167694478', NULL, NULL, NULL, NULL, NULL),
(65, 25, 'آرزو', 'خندان', 'درامور فرهنگی باهمدگیر فعالیت درهمه زمینه ها داریم', 2, '09146262095', NULL, NULL, NULL, NULL, NULL),
(67, 120, 'لیلا', 'نجفی', 'مدیرمدرسه', 2, '09175460182', 'باهمکاری مدیر مراسمات روانجام میدیم', NULL, NULL, NULL, NULL);

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
(1, 'سطح ۱\r\n', '', 1, NULL, NULL, NULL),
(2, 'سطح ۲', '', 1, NULL, NULL, NULL),
(3, 'سطح ۳', '', 1, NULL, NULL, NULL),
(4, 'سطح ۴', '', 1, NULL, NULL, NULL);

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
  `has_commitment` int(1) DEFAULT NULL,
  `register_status` tinyint(1) DEFAULT NULL,
  `report_status` tinyint(1) DEFAULT NULL,
  `has_course` tinyint(1) DEFAULT NULL,
  `has_tribune` tinyint(1) DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `user_count` int(11) DEFAULT 0 COMMENT 'تعداد کل مشارکتهای مبلغین',
  `report_count` int(11) DEFAULT 0 COMMENT 'تعداد گزارش های ثبت شده',
  `sum_support` int(11) DEFAULT 0 COMMENT 'تعداد کل حمایتها',
  `sum_score` int(11) DEFAULT NULL COMMENT 'تعداد کل امتیازهایی که برای گزارشها ثبت شده',
  `course_count` int(11) DEFAULT 0,
  `tribun_count` int(11) DEFAULT 0,
  `creator_id` int(11) DEFAULT NULL,
  `editor_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `year`, `photo`, `comments`, `commitments`, `has_commitment`, `register_status`, `report_status`, `has_course`, `has_tribune`, `status_id`, `user_count`, `report_count`, `sum_support`, `sum_score`, `course_count`, `tribun_count`, `creator_id`, `editor_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'فاطمیه', 1403, 'image38751733683779.jpg', 'در فرهنگ عامه، به دهه دوم جمادی‌الاول، از دهم تا بیستم آن ماه که بر اساس روایت ۷۵ روز درگذشت فاطمه در میان آن روزها واقع شده‌است، «دهه اول فاطمیه» و به دهه اول جمادی‌الثانی، از اول تا دهم جمادی‌الثانی که بنا به روایت ۹۵ روز، درگذشت فاطمه در میان این روزها اتفاق افتاده «دهه دوم فاطمیه» می‌گویند.', '\'تعهدات ستاد دارای این مواردمیباشد.در فرهنگ عامه، به دهه دوم جمادی‌الاول، از دهم تا بیستم آن ماه که بر اساس روایت ۷۵ روز درگذشت فاطمه در میان آن روزها واقع شده‌است، «دهه اول فاطمیه» و به دهه اول جمادی‌الثانی، از اول تا دهم جمادی‌الثانی که بنا به روایت ۹۵ روز، درگذشت فاطمه در میان این روزها اتفاق افتاده «دهه دوم فاطمیه» می‌گویند.', 1, 0, 0, 1, 1, 1, 4, 0, 1, NULL, 0, 0, 2, 1, NULL, '2024-12-08 15:19:42', '2024-12-12 06:36:55'),
(2, 'تبلیغ نیمه شعبان', 1403, 'image6891733916776.png', 'توضیحات اینجا نوشته می شود', 'بسته فرهنگی\nثبت سابقه تبلیغی', 1, 0, 0, 1, 1, 1, 3, 0, 2, NULL, 0, 0, 1, 1, NULL, '2024-12-11 08:03:50', '2025-01-05 09:54:39'),
(3, 'ایام غدیر یه', 1403, 'image14661733921765.png', 'زذیدید', NULL, 0, 0, 0, 1, 1, 1, 3, 0, 1, NULL, 0, 0, 1, 11, NULL, '2024-12-11 09:26:08', '2025-01-05 09:54:57'),
(4, 'فاطمیه دوم', 1403, 'image73001734287754.jpg', 'با سلام \nاجرای حداقل  3 جلسه از فصل 14 و 15  کتاب فاطمه برترین بانوی هستی  توسط مبلغین تا میلاد حضرت فاطمه سلام الله علیها  به صورت منبر یا دوره یا کلاس', 'ارسال رایگان کتاب  برای مبلغین متعهد به ارائه محتوای کتاب \n و قرعه کشی 17 نفر', 1, 0, 0, 1, 1, 1, 77, 84, 1, NULL, 0, 0, 11, 11, NULL, '2024-12-14 08:31:45', '2025-01-15 14:43:04'),
(5, 'ایام  شعبانیه', 1403, 'image1901738391483.jpg', 'فعالیت مبلغان بر اساس محتوای کتاب 👈 اجتماع قلوب شیعیان امر امام زمان  علیه السلام    \nو ارتباط با روایت فَاحضُر یوم الغدیر عند امیرالمؤمنین عليه‌السلام\n‼️👈توضیحات تکمیلی در کانال پیام رسانان غدیریه در ایتا \nhttps://eitaa.com/welayat110', 'بر مبنای ارسال گزارش از طرف مبلغ و  اولویت بانی ، هدیه ای پرداخت می شود . ان شاالله', 1, 1, NULL, 1, 1, 1, 62, 0, 0, NULL, 0, 0, 11, 11, NULL, '2025-02-01 03:15:40', '2025-02-03 15:00:26');

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
(8, 3, 1, 1, 1, NULL, '2024-12-09 03:54:58', '2024-12-09 00:24:58'),
(9, 4, 1, 1, 1, NULL, '2024-12-09 07:25:30', '2024-12-09 03:55:30'),
(10, 5, 1, 0, 0, NULL, '2024-12-09 10:46:39', '2024-12-09 07:16:39'),
(11, 6, 1, 0, 1, NULL, '2024-12-09 11:57:31', '2024-12-09 08:27:31'),
(12, 8, 2, 1, 1, NULL, '2024-12-11 11:35:04', '2024-12-11 08:05:04'),
(13, 9, 2, 1, 1, NULL, '2024-12-11 11:35:24', '2024-12-11 08:05:24'),
(14, 7, 2, 1, 1, NULL, '2024-12-11 11:35:38', '2024-12-11 08:05:38'),
(15, 3, 3, 1, 1, NULL, '2024-12-11 12:57:01', '2024-12-11 09:27:01'),
(16, 6, 3, 0, 1, NULL, '2024-12-11 21:33:22', '2024-12-11 18:03:22'),
(17, 5, 3, 1, 1, NULL, '2024-12-14 11:46:39', '2024-12-14 08:16:39'),
(18, 5, 4, 1, 1, NULL, '2024-12-14 12:02:45', '2024-12-14 08:32:45'),
(19, 3, 4, 1, 1, NULL, '2024-12-14 12:17:17', '2024-12-14 08:47:17'),
(20, 7, 4, 1, 1, NULL, '2024-12-15 11:43:24', '2024-12-15 08:13:24'),
(21, 13, 4, 1, 1, NULL, '2024-12-17 18:28:36', '2024-12-17 14:58:36'),
(22, 17, 4, 0, 1, NULL, '2024-12-22 03:51:43', '2024-12-22 00:21:43'),
(23, 14, 4, 1, 1, NULL, '2024-12-22 03:52:16', '2024-12-22 00:22:16'),
(24, 18, 4, 1, 1, NULL, '2024-12-22 03:52:27', '2024-12-22 00:22:27'),
(25, 16, 4, 0, 0, NULL, '2024-12-22 03:54:51', '2024-12-22 00:24:51'),
(26, 23, 4, 1, 1, NULL, '2024-12-22 04:17:49', '2024-12-22 00:47:49'),
(27, 20, 4, 1, 1, NULL, '2024-12-22 04:23:36', '2024-12-22 00:53:36'),
(28, 21, 4, 0, 1, NULL, '2024-12-22 04:28:06', '2024-12-22 00:58:06'),
(29, 26, 4, 0, 1, NULL, '2024-12-22 04:35:59', '2024-12-22 01:05:59'),
(30, 27, 4, 0, 1, NULL, '2024-12-22 04:36:17', '2024-12-22 01:06:17'),
(31, 25, 4, 0, 1, NULL, '2024-12-22 04:38:15', '2024-12-22 01:08:15'),
(32, 30, 4, 1, 1, NULL, '2024-12-22 04:47:42', '2024-12-22 01:17:42'),
(33, 32, 4, 0, 1, NULL, '2024-12-22 04:57:08', '2024-12-22 01:27:08'),
(34, 15, 4, 1, 1, NULL, '2024-12-22 05:14:23', '2024-12-22 01:44:23'),
(35, 35, 4, 1, 1, NULL, '2024-12-22 05:22:11', '2024-12-22 01:52:11'),
(36, 39, 4, 1, 0, NULL, '2024-12-22 06:24:07', '2024-12-22 02:54:07'),
(37, 42, 4, 0, 1, NULL, '2024-12-22 07:58:19', '2024-12-22 04:28:19'),
(38, 43, 4, 0, 0, NULL, '2024-12-22 08:04:39', '2024-12-22 04:34:39'),
(39, 45, 4, 0, 1, NULL, '2024-12-22 10:21:08', '2024-12-22 06:51:08'),
(40, 50, 4, 1, 1, NULL, '2024-12-22 13:34:35', '2024-12-22 10:04:35'),
(41, 51, 4, 1, 1, NULL, '2024-12-22 15:09:56', '2024-12-22 11:39:56'),
(42, 53, 4, 1, 0, NULL, '2024-12-22 15:36:54', '2024-12-22 12:06:54'),
(43, 54, 4, 0, 1, NULL, '2024-12-22 15:55:43', '2024-12-22 12:25:43'),
(44, 57, 4, 1, 1, NULL, '2024-12-23 03:54:18', '2024-12-23 00:24:18'),
(45, 58, 4, 1, 1, NULL, '2024-12-23 12:56:38', '2024-12-23 09:26:38'),
(46, 59, 4, 1, 1, NULL, '2024-12-23 17:35:21', '2024-12-23 14:05:21'),
(47, 19, 4, 0, 0, NULL, '2024-12-23 17:54:17', '2024-12-23 14:24:17'),
(48, 61, 4, 1, 1, NULL, '2024-12-25 12:21:22', '2024-12-25 08:51:22'),
(49, 62, 4, 1, 1, NULL, '2024-12-25 12:40:12', '2024-12-25 09:10:12'),
(50, 64, 4, 0, 1, NULL, '2024-12-26 11:43:36', '2024-12-26 08:13:36'),
(51, 28, 4, 0, 1, NULL, '2024-12-26 12:18:38', '2024-12-26 08:48:38'),
(52, 46, 4, 1, 1, NULL, '2024-12-26 16:35:21', '2024-12-26 13:05:21'),
(53, 44, 4, 1, 1, NULL, '2024-12-27 05:59:00', '2024-12-27 02:29:00'),
(54, 66, 4, 1, 1, NULL, '2024-12-27 06:38:43', '2024-12-27 03:08:43'),
(55, 67, 4, 0, 1, NULL, '2024-12-27 18:51:18', '2024-12-27 15:21:18'),
(56, 68, 4, 0, 1, NULL, '2024-12-27 19:46:25', '2024-12-27 16:16:25'),
(57, 69, 4, 0, 1, NULL, '2024-12-28 03:15:21', '2024-12-27 23:45:21'),
(58, 70, 4, 0, 1, NULL, '2024-12-31 07:56:53', '2024-12-31 04:26:53'),
(59, 71, 4, 1, 1, NULL, '2024-12-31 09:10:46', '2024-12-31 05:40:46'),
(60, 75, 4, 0, 1, NULL, '2025-01-03 21:30:31', '2025-01-03 18:00:31'),
(61, 77, 4, 0, 1, NULL, '2025-01-06 06:13:41', '2025-01-06 02:43:41'),
(62, 79, 4, 1, 1, NULL, '2025-01-07 08:18:51', '2025-01-07 04:48:51'),
(63, 80, 4, 1, 1, NULL, '2025-01-07 08:33:36', '2025-01-07 05:03:36'),
(64, 81, 4, 1, 1, NULL, '2025-01-07 09:35:13', '2025-01-07 06:05:13'),
(65, 84, 4, 1, 1, NULL, '2025-01-07 16:06:24', '2025-01-07 12:36:24'),
(66, 78, 4, 0, 1, NULL, '2025-01-07 17:31:59', '2025-01-07 14:01:59'),
(67, 86, 4, 1, 0, NULL, '2025-01-07 18:24:25', '2025-01-07 14:54:25'),
(68, 89, 4, 1, 1, NULL, '2025-01-07 19:07:18', '2025-01-07 15:37:18'),
(69, 92, 4, 0, 1, NULL, '2025-01-07 19:13:47', '2025-01-07 15:43:47'),
(72, 41, 4, 0, 1, NULL, '2025-01-07 19:27:56', '2025-01-07 15:57:56'),
(71, 94, 4, 0, 1, NULL, '2025-01-07 19:23:54', '2025-01-07 15:53:54'),
(73, 90, 4, 0, 1, NULL, '2025-01-07 19:39:22', '2025-01-07 16:09:22'),
(74, 99, 4, 1, 1, NULL, '2025-01-07 19:53:31', '2025-01-07 16:23:31'),
(75, 63, 4, 1, 1, NULL, '2025-01-07 20:04:39', '2025-01-07 16:34:39'),
(76, 105, 4, 0, 1, NULL, '2025-01-07 20:09:21', '2025-01-07 16:39:21'),
(77, 103, 4, 1, 0, NULL, '2025-01-07 20:10:17', '2025-01-07 16:40:17'),
(78, 109, 4, 1, 1, NULL, '2025-01-07 20:12:26', '2025-01-07 16:42:26'),
(79, 110, 4, 1, 1, NULL, '2025-01-07 20:16:08', '2025-01-07 16:46:08'),
(80, 112, 4, 0, 1, NULL, '2025-01-07 20:22:45', '2025-01-07 16:52:45'),
(81, 114, 4, 0, 1, NULL, '2025-01-07 20:34:08', '2025-01-07 17:04:08'),
(82, 111, 4, 0, 1, NULL, '2025-01-07 20:35:29', '2025-01-07 17:05:29'),
(83, 29, 4, 0, 1, NULL, '2025-01-07 20:43:19', '2025-01-07 17:13:19'),
(84, 117, 4, 0, 1, NULL, '2025-01-07 21:06:31', '2025-01-07 17:36:31'),
(85, 120, 4, 0, 1, NULL, '2025-01-07 21:48:16', '2025-01-07 18:18:16'),
(86, 121, 4, 1, 1, NULL, '2025-01-07 21:48:20', '2025-01-07 18:18:20'),
(87, 122, 4, 0, 1, NULL, '2025-01-08 01:22:12', '2025-01-07 21:52:12'),
(88, 123, 4, 0, 1, NULL, '2025-01-08 03:53:23', '2025-01-08 00:23:23'),
(89, 125, 4, 0, 1, NULL, '2025-01-08 04:04:08', '2025-01-08 00:34:08'),
(90, 132, 4, 1, 0, NULL, '2025-01-08 05:25:21', '2025-01-08 01:55:21'),
(91, 133, 4, 0, 1, NULL, '2025-01-08 06:36:20', '2025-01-08 03:06:20'),
(92, 134, 4, 1, 1, NULL, '2025-01-08 07:31:25', '2025-01-08 04:01:25'),
(93, 140, 4, 1, 1, NULL, '2025-01-10 07:55:56', '2025-01-10 04:25:56'),
(94, 141, 4, 1, 1, NULL, '2025-01-11 16:55:52', '2025-01-11 13:25:52'),
(95, 142, 4, 1, 1, NULL, '2025-01-13 10:45:35', '2025-01-13 07:15:35'),
(96, 5, 5, 0, 0, NULL, '2025-02-01 06:52:48', '2025-02-01 03:22:48'),
(97, 8, 5, 1, 1, NULL, '2025-02-01 07:07:23', '2025-02-01 03:37:23'),
(98, 122, 5, 1, 1, NULL, '2025-02-01 07:59:16', '2025-02-01 04:29:16'),
(99, 114, 5, 1, 1, NULL, '2025-02-01 07:59:23', '2025-02-01 04:29:23'),
(100, 18, 5, 1, 1, NULL, '2025-02-01 07:59:31', '2025-02-01 04:29:31'),
(101, 17, 5, 1, 1, NULL, '2025-02-01 08:00:38', '2025-02-01 04:30:38'),
(102, 64, 5, 0, 1, NULL, '2025-02-01 08:01:59', '2025-02-01 04:31:59'),
(103, 27, 5, 0, 1, NULL, '2025-02-01 08:02:07', '2025-02-01 04:32:07'),
(104, 32, 5, 1, 1, NULL, '2025-02-01 08:03:25', '2025-02-01 04:33:25'),
(105, 177, 5, 0, 1, NULL, '2025-02-01 08:03:27', '2025-02-01 04:33:27'),
(106, 28, 5, 0, 1, NULL, '2025-02-01 08:03:33', '2025-02-01 04:33:33'),
(107, 23, 5, 1, 1, NULL, '2025-02-01 08:04:24', '2025-02-01 04:34:24'),
(108, 24, 5, 1, 1, NULL, '2025-02-01 08:07:30', '2025-02-01 04:37:30'),
(109, 175, 5, 0, 1, NULL, '2025-02-01 08:58:23', '2025-02-01 05:28:23'),
(110, 53, 5, 0, 1, NULL, '2025-02-01 09:00:46', '2025-02-01 05:30:46'),
(111, 51, 5, 1, 1, NULL, '2025-02-01 09:02:32', '2025-02-01 05:32:32'),
(112, 158, 5, 0, 1, NULL, '2025-02-01 09:07:05', '2025-02-01 05:37:05'),
(113, 33, 5, 0, 1, NULL, '2025-02-01 09:23:42', '2025-02-01 05:53:42'),
(114, 15, 5, 1, 1, NULL, '2025-02-01 09:23:45', '2025-02-01 05:53:45'),
(115, 50, 5, 1, 1, NULL, '2025-02-01 09:27:44', '2025-02-01 05:57:44'),
(116, 159, 5, 1, 0, NULL, '2025-02-01 09:37:12', '2025-02-01 06:07:12'),
(117, 181, 5, 1, 1, NULL, '2025-02-01 09:37:21', '2025-02-01 06:07:21'),
(118, 78, 5, 0, 1, NULL, '2025-02-01 09:48:22', '2025-02-01 06:18:22'),
(119, 35, 5, 1, 1, NULL, '2025-02-01 10:00:53', '2025-02-01 06:30:53'),
(120, 29, 5, 0, 1, NULL, '2025-02-01 10:00:57', '2025-02-01 06:30:57'),
(121, 48, 5, 0, 1, NULL, '2025-02-01 10:16:10', '2025-02-01 06:46:10'),
(122, 183, 5, 0, 0, NULL, '2025-02-01 10:19:13', '2025-02-01 06:49:13'),
(123, 182, 5, 0, 1, NULL, '2025-02-01 10:19:14', '2025-02-01 06:49:14'),
(124, 69, 5, 0, 1, NULL, '2025-02-01 10:19:15', '2025-02-01 06:49:15'),
(125, 94, 5, 1, 1, NULL, '2025-02-01 10:31:38', '2025-02-01 07:01:38'),
(126, 102, 5, 0, 1, NULL, '2025-02-01 10:58:54', '2025-02-01 07:28:54'),
(127, 184, 5, 1, 1, NULL, '2025-02-01 11:08:55', '2025-02-01 07:38:55'),
(128, 146, 5, 0, 1, NULL, '2025-02-01 11:17:47', '2025-02-01 07:47:47'),
(129, 185, 5, 1, 0, NULL, '2025-02-01 11:23:12', '2025-02-01 07:53:12'),
(130, 186, 5, 0, 1, NULL, '2025-02-01 12:16:52', '2025-02-01 08:46:52'),
(131, 56, 5, 0, 1, NULL, '2025-02-01 12:29:40', '2025-02-01 08:59:40'),
(132, 188, 5, 0, 1, NULL, '2025-02-01 13:29:09', '2025-02-01 09:59:09'),
(133, 103, 5, 1, 1, NULL, '2025-02-01 14:40:22', '2025-02-01 11:10:22'),
(134, 189, 5, 1, 1, NULL, '2025-02-01 15:48:22', '2025-02-01 12:18:22'),
(135, 42, 5, 0, 1, NULL, '2025-02-01 15:53:57', '2025-02-01 12:23:57'),
(136, 58, 5, 1, 1, NULL, '2025-02-01 16:26:12', '2025-02-01 12:56:12'),
(137, 109, 5, 1, 1, NULL, '2025-02-01 16:36:56', '2025-02-01 13:06:56'),
(138, 129, 5, 0, 1, NULL, '2025-02-01 16:43:26', '2025-02-01 13:13:26'),
(139, 25, 5, 1, 1, NULL, '2025-02-01 17:02:49', '2025-02-01 13:32:49'),
(140, 44, 5, 1, 1, NULL, '2025-02-01 17:13:20', '2025-02-01 13:43:20'),
(141, 190, 5, 0, 1, NULL, '2025-02-01 17:16:36', '2025-02-01 13:46:36'),
(142, 191, 5, 0, 1, NULL, '2025-02-01 18:22:40', '2025-02-01 14:52:40'),
(143, 46, 5, 0, 1, NULL, '2025-02-01 18:31:00', '2025-02-01 15:01:00'),
(144, 169, 5, 1, 1, NULL, '2025-02-01 18:32:31', '2025-02-01 15:02:31'),
(145, 84, 5, 1, 1, NULL, '2025-02-01 18:51:39', '2025-02-01 15:21:39'),
(146, 13, 5, 1, 1, NULL, '2025-02-01 19:39:51', '2025-02-01 16:09:51'),
(147, 63, 5, 1, 1, NULL, '2025-02-01 20:26:32', '2025-02-01 16:56:32'),
(148, 193, 5, 0, 1, NULL, '2025-02-01 22:22:37', '2025-02-01 18:52:37'),
(149, 194, 5, 1, 1, NULL, '2025-02-02 02:59:08', '2025-02-01 23:29:08'),
(150, 66, 5, 0, 1, NULL, '2025-02-02 04:03:41', '2025-02-02 00:33:41'),
(151, 195, 5, 1, 1, NULL, '2025-02-02 06:01:41', '2025-02-02 02:31:41'),
(152, 164, 5, 1, 1, NULL, '2025-02-02 13:24:53', '2025-02-02 09:54:53'),
(153, 196, 5, 0, 1, NULL, '2025-02-02 16:23:25', '2025-02-02 12:53:25'),
(154, 120, 5, 0, 1, NULL, '2025-02-02 17:29:17', '2025-02-02 13:59:17'),
(155, 128, 5, 1, 1, NULL, '2025-02-03 05:27:18', '2025-02-03 01:57:18'),
(156, 37, 5, 0, 1, NULL, '2025-02-03 06:53:59', '2025-02-03 03:23:59'),
(157, 198, 5, 0, 0, NULL, '2025-02-03 18:30:26', '2025-02-03 15:00:26');

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
(8, 8, 2, 1, 3),
(9, 9, 1, 1, 4),
(10, 9, 5, 1, 4),
(11, 9, 4, 1, 4),
(12, 9, 2, 1, 4),
(13, 10, 1, 1, 5),
(14, 10, 5, 1, 5),
(15, 10, 4, 1, 5),
(16, 10, 2, 1, 5),
(17, 11, 2, 1, 6),
(18, 11, 4, 1, 6),
(19, 12, 2, 2, 8),
(20, 13, 1, 2, 9),
(21, 13, 6, 2, 9),
(22, 13, 3, 2, 9),
(23, 13, 4, 2, 9),
(24, 13, 2, 2, 9),
(25, 14, 1, 2, 7),
(26, 14, 2, 2, 7),
(27, 14, 3, 2, 7),
(28, 14, 4, 2, 7),
(29, 14, 6, 2, 7),
(30, 15, 1, 3, 3),
(31, 15, 4, 3, 3),
(32, 15, 3, 3, 3),
(33, 15, 2, 3, 3),
(34, 15, 6, 3, 3),
(35, 16, 1, 3, 6),
(36, 17, 3, 3, 5),
(37, 18, 4, 4, 5),
(38, 18, 2, 4, 5),
(39, 18, 6, 4, 5),
(40, 19, 4, 4, 3),
(41, 19, 5, 4, 3),
(42, 19, 2, 4, 3),
(43, 19, 1, 4, 3),
(44, 19, 6, 4, 3),
(45, 20, 4, 4, 7),
(46, 20, 5, 4, 7),
(47, 20, 2, 4, 7),
(48, 20, 1, 4, 7),
(49, 20, 6, 4, 7),
(50, 21, 1, 4, 13),
(51, 21, 6, 4, 13),
(52, 21, 5, 4, 13),
(53, 21, 4, 4, 13),
(54, 21, 2, 4, 13),
(55, 22, 2, 4, 17),
(56, 22, 6, 4, 17),
(57, 23, 4, 4, 14),
(58, 23, 2, 4, 14),
(59, 23, 5, 4, 14),
(60, 23, 6, 4, 14),
(61, 24, 4, 4, 18),
(62, 24, 1, 4, 18),
(63, 24, 2, 4, 18),
(64, 24, 6, 4, 18),
(65, 26, 2, 4, 23),
(66, 26, 4, 4, 23),
(67, 27, 4, 4, 20),
(68, 29, 4, 4, 26),
(69, 29, 5, 4, 26),
(70, 29, 2, 4, 26),
(71, 30, 4, 4, 27),
(72, 30, 1, 4, 27),
(73, 30, 6, 4, 27),
(74, 31, 2, 4, 25),
(75, 32, 2, 4, 30),
(76, 32, 6, 4, 30),
(77, 35, 4, 4, 35),
(78, 35, 5, 4, 35),
(79, 35, 1, 4, 35),
(80, 36, 4, 4, 39),
(81, 37, 2, 4, 42),
(82, 40, 6, 4, 50),
(83, 40, 5, 4, 50),
(84, 41, 4, 4, 51),
(85, 41, 5, 4, 51),
(86, 41, 2, 4, 51),
(87, 41, 1, 4, 51),
(88, 41, 6, 4, 51),
(89, 42, 2, 4, 53),
(90, 42, 1, 4, 53),
(91, 43, 4, 4, 54),
(92, 43, 5, 4, 54),
(93, 43, 2, 4, 54),
(94, 43, 6, 4, 54),
(95, 44, 6, 4, 57),
(96, 45, 5, 4, 58),
(97, 45, 2, 4, 58),
(98, 45, 1, 4, 58),
(99, 45, 6, 4, 58),
(100, 46, 6, 4, 59),
(101, 46, 4, 4, 59),
(102, 46, 2, 4, 59),
(103, 48, 4, 4, 61),
(104, 48, 1, 4, 61),
(105, 49, 1, 4, 62),
(106, 49, 5, 4, 62),
(107, 50, 4, 4, 64),
(108, 50, 6, 4, 64),
(109, 50, 2, 4, 64),
(110, 51, 2, 4, 28),
(111, 52, 4, 4, 46),
(112, 52, 1, 4, 46),
(113, 53, 4, 4, 44),
(114, 53, 6, 4, 44),
(115, 53, 5, 4, 44),
(116, 54, 4, 4, 66),
(117, 54, 2, 4, 66),
(118, 54, 6, 4, 66),
(119, 55, 4, 4, 67),
(120, 55, 2, 4, 67),
(121, 58, 2, 4, 70),
(122, 58, 6, 4, 70),
(123, 59, 1, 4, 71),
(124, 60, 2, 4, 75),
(125, 60, 6, 4, 75),
(126, 62, 4, 4, 79),
(127, 62, 5, 4, 79),
(128, 62, 2, 4, 79),
(129, 62, 1, 4, 79),
(130, 62, 6, 4, 79),
(131, 63, 4, 4, 80),
(132, 63, 5, 4, 80),
(133, 64, 4, 4, 81),
(134, 64, 2, 4, 81),
(135, 64, 5, 4, 81),
(136, 64, 1, 4, 81),
(137, 64, 6, 4, 81),
(138, 65, 2, 4, 84),
(139, 65, 6, 4, 84),
(140, 65, 4, 4, 84),
(141, 66, 4, 4, 78),
(142, 66, 2, 4, 78),
(143, 66, 1, 4, 78),
(144, 67, 5, 4, 86),
(145, 67, 1, 4, 86),
(146, 67, 6, 4, 86),
(147, 67, 2, 4, 86),
(148, 67, 4, 4, 86),
(149, 68, 4, 4, 89),
(150, 68, 5, 4, 89),
(151, 68, 2, 4, 89),
(152, 68, 1, 4, 89),
(153, 68, 6, 4, 89),
(157, 71, 1, 4, 94),
(156, 71, 5, 4, 94),
(158, 72, 4, 4, 41),
(159, 73, 4, 4, 90),
(160, 73, 6, 4, 90),
(161, 74, 4, 4, 99),
(162, 74, 2, 4, 99),
(163, 74, 1, 4, 99),
(164, 74, 6, 4, 99),
(165, 75, 2, 4, 63),
(166, 77, 5, 4, 103),
(167, 77, 4, 4, 103),
(168, 77, 1, 4, 103),
(169, 77, 6, 4, 103),
(170, 77, 2, 4, 103),
(171, 78, 5, 4, 109),
(172, 78, 4, 4, 109),
(173, 79, 2, 4, 110),
(174, 79, 4, 4, 110),
(175, 82, 2, 4, 111),
(176, 82, 5, 4, 111),
(177, 82, 4, 4, 111),
(178, 83, 2, 4, 29),
(179, 83, 4, 4, 29),
(180, 85, 1, 4, 120),
(181, 86, 4, 4, 121),
(182, 86, 1, 4, 121),
(183, 86, 2, 4, 121),
(184, 86, 5, 4, 121),
(185, 86, 6, 4, 121),
(186, 89, 5, 4, 125),
(187, 89, 2, 4, 125),
(188, 90, 5, 4, 132),
(189, 90, 4, 4, 132),
(190, 91, 4, 4, 133),
(191, 91, 5, 4, 133),
(192, 92, 4, 4, 134),
(193, 92, 5, 4, 134),
(194, 92, 2, 4, 134),
(195, 92, 1, 4, 134),
(196, 92, 6, 4, 134),
(197, 93, 1, 4, 140),
(198, 93, 5, 4, 140),
(199, 93, 4, 4, 140),
(200, 93, 2, 4, 140),
(201, 94, 2, 4, 141),
(202, 94, 6, 4, 141),
(203, 94, 1, 4, 141),
(204, 94, 5, 4, 141),
(205, 94, 4, 4, 141),
(206, 95, 4, 4, 142),
(207, 95, 5, 4, 142),
(208, 95, 2, 4, 142),
(209, 97, 1, 5, 8),
(210, 97, 2, 5, 8),
(211, 97, 3, 5, 8),
(212, 97, 4, 5, 8),
(213, 97, 6, 5, 8),
(214, 98, 2, 5, 122),
(215, 98, 6, 5, 122),
(216, 98, 4, 5, 122),
(217, 98, 3, 5, 122),
(218, 98, 1, 5, 122),
(219, 99, 1, 5, 114),
(220, 99, 2, 5, 114),
(221, 99, 4, 5, 114),
(222, 99, 6, 5, 114),
(223, 100, 4, 5, 18),
(224, 100, 6, 5, 18),
(225, 100, 3, 5, 18),
(226, 100, 1, 5, 18),
(227, 100, 2, 5, 18),
(228, 101, 6, 5, 17),
(229, 102, 1, 5, 64),
(230, 102, 2, 5, 64),
(231, 102, 4, 5, 64),
(232, 102, 6, 5, 64),
(233, 102, 3, 5, 64),
(234, 103, 1, 5, 27),
(235, 103, 6, 5, 27),
(236, 105, 4, 5, 177),
(237, 107, 2, 5, 23),
(238, 107, 4, 5, 23),
(239, 107, 6, 5, 23),
(240, 108, 6, 5, 24),
(241, 109, 1, 5, 175),
(242, 109, 2, 5, 175),
(243, 109, 3, 5, 175),
(244, 109, 4, 5, 175),
(245, 110, 2, 5, 53),
(246, 111, 1, 5, 51),
(247, 111, 2, 5, 51),
(248, 111, 3, 5, 51),
(249, 111, 4, 5, 51),
(250, 111, 6, 5, 51),
(251, 112, 1, 5, 158),
(252, 112, 6, 5, 158),
(253, 113, 2, 5, 33),
(254, 113, 4, 5, 33),
(255, 114, 6, 5, 15),
(256, 114, 4, 5, 15),
(257, 115, 2, 5, 50),
(258, 115, 6, 5, 50),
(259, 116, 2, 5, 159),
(260, 116, 6, 5, 159),
(261, 116, 1, 5, 159),
(262, 119, 1, 5, 35),
(263, 119, 3, 5, 35),
(264, 119, 6, 5, 35),
(265, 119, 4, 5, 35),
(266, 120, 1, 5, 29),
(267, 121, 1, 5, 48),
(268, 121, 4, 5, 48),
(269, 122, 1, 5, 183),
(270, 122, 2, 5, 183),
(271, 122, 4, 5, 183),
(272, 122, 6, 5, 183),
(273, 123, 4, 5, 182),
(274, 123, 3, 5, 182),
(275, 123, 2, 5, 182),
(276, 125, 1, 5, 94),
(277, 125, 2, 5, 94),
(278, 125, 3, 5, 94),
(279, 125, 6, 5, 94),
(280, 127, 2, 5, 184),
(281, 127, 6, 5, 184),
(282, 128, 1, 5, 146),
(283, 129, 4, 5, 185),
(284, 129, 3, 5, 185),
(285, 132, 1, 5, 188),
(286, 132, 2, 5, 188),
(287, 133, 1, 5, 103),
(288, 133, 4, 5, 103),
(289, 133, 6, 5, 103),
(290, 133, 2, 5, 103),
(291, 133, 3, 5, 103),
(292, 134, 4, 5, 189),
(293, 134, 6, 5, 189),
(294, 134, 1, 5, 189),
(295, 134, 2, 5, 189),
(296, 135, 4, 5, 42),
(297, 135, 6, 5, 42),
(298, 136, 1, 5, 58),
(299, 136, 4, 5, 58),
(300, 136, 6, 5, 58),
(301, 137, 1, 5, 109),
(302, 137, 2, 5, 109),
(303, 137, 3, 5, 109),
(304, 137, 4, 5, 109),
(305, 137, 6, 5, 109),
(306, 139, 2, 5, 25),
(307, 139, 1, 5, 25),
(308, 140, 1, 5, 44),
(309, 140, 4, 5, 44),
(310, 140, 6, 5, 44),
(311, 141, 1, 5, 190),
(312, 141, 2, 5, 190),
(313, 141, 3, 5, 190),
(314, 141, 6, 5, 190),
(315, 141, 4, 5, 190),
(316, 143, 3, 5, 46),
(317, 143, 4, 5, 46),
(318, 143, 6, 5, 46),
(319, 143, 1, 5, 46),
(320, 144, 4, 5, 169),
(321, 144, 6, 5, 169),
(322, 145, 2, 5, 84),
(323, 145, 6, 5, 84),
(324, 145, 3, 5, 84),
(325, 145, 1, 5, 84),
(326, 145, 4, 5, 84),
(327, 146, 2, 5, 13),
(328, 146, 4, 5, 13),
(329, 146, 3, 5, 13),
(330, 146, 6, 5, 13),
(331, 146, 1, 5, 13),
(332, 147, 1, 5, 63),
(333, 147, 2, 5, 63),
(334, 148, 1, 5, 193),
(335, 148, 2, 5, 193),
(336, 148, 6, 5, 193),
(337, 149, 2, 5, 194),
(338, 149, 1, 5, 194),
(339, 150, 2, 5, 66),
(340, 150, 3, 5, 66),
(341, 150, 4, 5, 66),
(342, 150, 1, 5, 66),
(343, 150, 6, 5, 66),
(344, 152, 6, 5, 164),
(345, 152, 3, 5, 164),
(346, 153, 3, 5, 196),
(347, 153, 6, 5, 196),
(348, 153, 2, 5, 196),
(349, 154, 1, 5, 120),
(350, 155, 1, 5, 128),
(351, 155, 2, 5, 128),
(352, 155, 4, 5, 128),
(353, 155, 6, 5, 128),
(354, 155, 3, 5, 128),
(355, 156, 2, 5, 37),
(356, 156, 3, 5, 37);

-- --------------------------------------------------------

--
-- Table structure for table `promotion_positions`
--

CREATE TABLE `promotion_positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotion_positions`
--

INSERT INTO `promotion_positions` (`id`, `title`, `location`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'امام جمعه', 'مسجد', 1, NULL, NULL, NULL),
(2, 'امام جماعت', 'مسجد', 1, NULL, NULL, NULL),
(3, 'طرح هجرت', 'هیات', 1, NULL, NULL, NULL),
(4, 'مبلغ مدارس', 'مدرسه', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotion_reports`
--

CREATE TABLE `promotion_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `promoter_id` int(11) DEFAULT NULL,
  `photos` varchar(255) DEFAULT NULL,
  `videos` varchar(255) DEFAULT NULL,
  `status_id` int(1) DEFAULT 0,
  `confirm_id` int(1) DEFAULT -1,
  `level_id` int(1) DEFAULT 0,
  `creator_id` int(11) DEFAULT NULL,
  `editor_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotion_reports`
--

INSERT INTO `promotion_reports` (`id`, `promotion_id`, `promoter_id`, `photos`, `videos`, `status_id`, `confirm_id`, `level_id`, `creator_id`, `editor_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-09 12:12:03', '2024-12-09 00:26:27', '2024-12-09 12:12:03'),
(2, 1, 3, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-09 12:12:08', '2024-12-09 00:26:55', '2024-12-09 12:12:08'),
(3, 1, 4, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-09 12:12:12', '2024-12-09 03:57:46', '2024-12-09 12:12:12'),
(4, 1, 4, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-09 12:12:17', '2024-12-09 04:00:07', '2024-12-09 12:12:17'),
(5, 1, 6, 'image44571733745623.jpg###', NULL, 0, -1, 0, NULL, NULL, '2024-12-09 12:12:23', '2024-12-09 08:30:26', '2024-12-09 12:12:23'),
(6, 1, 3, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-09 12:12:32', '2024-12-09 08:53:09', '2024-12-09 12:12:32'),
(7, 1, 3, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-12 06:36:55', '2024-12-09 11:42:38', '2024-12-12 06:36:55'),
(8, 1, 3, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-12 06:36:51', '2024-12-09 11:42:39', '2024-12-12 06:36:51'),
(9, 1, 3, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-12 06:36:47', '2024-12-09 11:42:39', '2024-12-12 06:36:47'),
(10, 2, 6, NULL, NULL, 0, 1, 33, NULL, NULL, '2025-01-05 09:54:39', '2024-12-10 10:47:25', '2025-01-05 09:54:39'),
(11, 2, 8, NULL, NULL, 0, 1, 50, NULL, NULL, '2025-01-05 09:54:32', '2024-12-11 08:04:04', '2025-01-05 09:54:32'),
(12, 2, 7, NULL, NULL, 0, 1, 60, NULL, NULL, '2025-01-05 09:54:25', '2024-12-11 08:39:35', '2025-01-05 09:54:25'),
(13, 4, 4, NULL, NULL, 0, 1, 10, NULL, NULL, '2025-01-05 09:54:18', '2024-12-11 09:31:42', '2025-01-05 09:54:18'),
(14, 3, 6, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-11 17:39:34', '2024-12-11 16:52:25', '2024-12-11 17:39:34'),
(15, 3, 6, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-11 18:02:29', '2024-12-11 17:43:09', '2024-12-11 18:02:29'),
(16, 3, 6, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-11 18:06:07', '2024-12-11 18:04:29', '2024-12-11 18:06:07'),
(17, 3, 6, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-11 18:12:42', '2024-12-11 18:07:09', '2024-12-11 18:12:42'),
(18, 4, 6, 'image68841734212622.jpg###image70321734212629.jpg###image77701734212636.jpg###', 'video67461734212796.mp4###', 0, 1, 0, NULL, NULL, '2025-01-05 09:54:11', '2024-12-11 18:15:09', '2025-01-05 09:54:11'),
(19, 4, 4, NULL, NULL, 0, 1, 111, NULL, NULL, '2025-01-05 09:54:03', '2024-12-12 06:35:56', '2025-01-05 09:54:03'),
(20, 3, 3, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-12 06:40:12', '2024-12-12 06:39:32', '2024-12-12 06:40:12'),
(21, 3, 3, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-12 06:40:09', '2024-12-12 06:39:33', '2024-12-12 06:40:09'),
(22, 3, 3, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-12 06:40:05', '2024-12-12 06:39:33', '2024-12-12 06:40:05'),
(23, 4, 3, NULL, NULL, 0, 1, 0, NULL, NULL, '2025-01-05 09:53:57', '2024-12-12 06:40:43', '2025-01-05 09:53:57'),
(24, 4, 3, NULL, NULL, 0, 1, 32, NULL, NULL, '2025-01-05 09:53:43', '2024-12-12 06:40:45', '2025-01-05 09:53:43'),
(25, 4, 3, NULL, NULL, 0, 1, 10, NULL, NULL, '2025-01-05 09:54:51', '2024-12-12 06:40:45', '2025-01-05 09:54:51'),
(26, 3, 5, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-14 08:21:49', '2024-12-14 08:19:04', '2024-12-14 08:21:49'),
(27, 3, 5, NULL, NULL, 0, 1, 30, NULL, NULL, '2025-01-05 09:54:57', '2024-12-14 08:23:03', '2025-01-05 09:54:57'),
(28, 4, 5, 'application68411734178408.pdf###image11341734178463.jpg###', 'image85131734178382.jpg###', 0, 1, 22, NULL, NULL, '2025-01-05 09:55:01', '2024-12-14 08:34:52', '2025-01-05 09:55:01'),
(29, 4, 3, 'image95331734178741.jpg###', 'image35301734178756.jpg###', 0, 1, 40, NULL, NULL, '2025-01-05 09:55:09', '2024-12-14 08:48:07', '2025-01-05 09:55:09'),
(30, 4, 7, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-15 08:17:52', '2024-12-15 08:17:37', '2024-12-15 08:17:52'),
(31, 4, 7, NULL, NULL, 0, 1, 50, NULL, NULL, NULL, '2024-12-15 08:19:06', '2025-01-15 02:25:31'),
(32, 4, 11, NULL, NULL, 0, 1, 20, NULL, NULL, '2024-12-19 17:40:38', '2024-12-17 14:44:08', '2024-12-19 17:40:38'),
(33, 4, 13, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2024-12-19 17:39:12', '2024-12-19 17:39:12'),
(34, 4, 14, NULL, NULL, 0, -1, 0, NULL, NULL, '2025-01-05 09:53:14', '2024-12-22 00:26:31', '2025-01-05 09:53:14'),
(35, 4, 16, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2024-12-22 00:28:16', '2025-01-06 10:56:41'),
(36, 4, 15, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2024-12-22 00:35:11', '2025-01-06 09:10:37'),
(37, 4, 22, NULL, NULL, 0, 1, 40, NULL, NULL, NULL, '2024-12-22 00:43:26', '2025-01-06 10:57:24'),
(38, 4, 23, NULL, NULL, 0, 1, 50, NULL, NULL, NULL, '2024-12-22 00:54:24', '2025-01-06 10:58:54'),
(39, 4, 24, NULL, NULL, 0, 1, 100, NULL, NULL, NULL, '2024-12-22 00:54:44', '2025-01-06 11:00:39'),
(40, 4, 25, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2024-12-22 01:04:13', '2025-01-06 11:01:45'),
(41, 4, 26, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2024-12-22 01:04:52', '2025-01-06 11:02:27'),
(42, 4, 27, NULL, NULL, 0, 1, 10, NULL, NULL, NULL, '2024-12-22 01:05:03', '2025-01-06 11:03:52'),
(43, 4, 28, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2024-12-22 01:05:07', '2025-01-06 11:04:45'),
(44, 4, 21, NULL, NULL, 0, 1, 10, NULL, NULL, NULL, '2024-12-22 01:15:58', '2025-01-06 11:05:54'),
(45, 4, 30, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2024-12-22 01:19:46', '2025-01-06 11:06:40'),
(46, 4, 32, NULL, NULL, 0, 1, 40, NULL, NULL, NULL, '2024-12-22 01:30:20', '2025-01-06 11:07:35'),
(47, 4, 33, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2024-12-22 01:37:49', '2025-01-06 11:08:05'),
(48, 4, 35, NULL, NULL, 0, 1, 50, NULL, NULL, NULL, '2024-12-22 01:54:27', '2025-01-06 11:08:42'),
(49, 4, 37, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2024-12-22 02:48:25', '2025-01-06 10:38:03'),
(50, 4, 39, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2024-12-22 02:55:43', '2025-01-06 10:36:57'),
(51, 4, 40, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2024-12-22 03:24:20', '2025-01-06 10:36:15'),
(52, 4, 42, NULL, NULL, 0, 1, 40, NULL, NULL, NULL, '2024-12-22 04:26:45', '2025-01-06 10:35:30'),
(53, 4, 43, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2024-12-22 04:35:44', '2025-01-06 10:34:34'),
(54, 4, 44, NULL, NULL, 0, 1, 200, NULL, NULL, NULL, '2024-12-22 07:00:21', '2025-01-06 10:32:55'),
(55, 4, 47, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2024-12-22 09:12:17', '2025-01-06 10:31:40'),
(56, 4, 48, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2024-12-22 09:53:03', '2025-01-06 10:20:42'),
(57, 4, 49, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2024-12-22 09:54:50', '2024-12-22 09:54:50'),
(58, 4, 50, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2024-12-22 10:06:13', '2025-01-06 09:56:33'),
(59, 4, 51, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2024-12-22 11:39:20', '2025-01-06 09:48:11'),
(60, 4, 53, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2024-12-22 12:09:57', '2025-01-06 09:47:36'),
(61, 4, 55, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2024-12-22 15:48:00', '2025-01-06 09:46:54'),
(62, 4, 58, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2024-12-23 09:25:39', '2025-01-06 09:46:15'),
(63, 4, 19, 'image90511735211763.jpg###image89001735212005.jpg###image14751735212235.jpg###image71931735309447.jpg###', NULL, 0, 1, 20, NULL, NULL, NULL, '2024-12-23 14:26:30', '2025-01-06 09:45:02'),
(64, 4, 17, NULL, NULL, 0, 1, 60, NULL, NULL, NULL, '2024-12-23 16:30:43', '2025-01-06 08:18:44'),
(65, 4, 60, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2024-12-23 18:56:41', '2025-01-06 09:43:44'),
(66, 4, 56, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2024-12-24 09:24:08', '2025-01-06 09:48:28'),
(67, 4, 61, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-25 09:02:41', '2024-12-25 08:56:18', '2024-12-25 09:02:41'),
(68, 4, 62, NULL, NULL, 0, -1, 0, NULL, NULL, '2025-01-06 09:39:33', '2024-12-25 09:11:58', '2025-01-06 09:39:33'),
(69, 4, 63, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2024-12-25 10:14:41', '2025-01-06 09:31:04'),
(70, 4, 64, 'image95791735213904.jpg###image41531735213911.jpg###image39831735213915.jpg###', NULL, 0, 1, 30, NULL, NULL, NULL, '2024-12-26 08:21:58', '2025-01-06 09:29:35'),
(71, 4, 46, 'image44391735232337.jpgimage31431735235006.jpgimage57681735235346.jpg###image12021735235550.jpg###image50401735236321.jpg###image59911735236392.jpg###image29681735236413.jpg###image1791735236422.jpg###', NULL, 0, 1, 50, NULL, NULL, NULL, '2024-12-26 14:43:50', '2025-01-06 09:25:33'),
(72, 4, 66, NULL, NULL, 0, -1, 0, NULL, NULL, '2024-12-27 03:21:45', '2024-12-27 03:20:52', '2024-12-27 03:21:45'),
(73, 4, 66, 'image57951735282859.jpg###image13171735282943.jpg###image28831735282964.jpg###image13261735282980.jpg###image2501735283031.jpg###image60031735283045.jpg###application25781735283077.heic###application28311735283166.heic###', NULL, 0, 1, 80, NULL, NULL, NULL, '2024-12-27 03:37:38', '2025-01-06 09:22:30'),
(74, 4, 67, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2024-12-27 15:19:52', '2025-01-06 09:20:49'),
(75, 4, 68, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2024-12-27 16:18:05', '2025-01-06 09:19:14'),
(76, 4, 69, NULL, NULL, 0, 1, 50, NULL, NULL, NULL, '2024-12-27 23:43:32', '2025-01-06 09:18:13'),
(77, 4, 71, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2024-12-31 05:28:29', '2025-01-06 09:17:09'),
(78, 4, 70, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2025-01-03 10:14:36', '2025-01-06 09:16:12'),
(79, 4, 11, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2025-01-04 03:46:36', '2025-01-05 11:48:48'),
(80, 4, 11, NULL, NULL, 0, 1, 50, NULL, NULL, NULL, '2025-01-06 01:49:48', '2025-01-06 08:20:09'),
(81, 4, 77, NULL, NULL, 0, -1, 30, NULL, NULL, NULL, '2025-01-06 02:42:12', '2025-01-08 07:22:07'),
(82, 4, 5, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-07 03:55:05', '2025-01-07 17:00:02'),
(83, 4, 64, 'image18281736237843.jpg###', NULL, 0, -1, 0, NULL, NULL, NULL, '2025-01-07 04:47:24', '2025-01-07 04:47:24'),
(84, 4, 80, 'image45171736240029.jpg###', NULL, 0, -1, 0, NULL, NULL, NULL, '2025-01-07 05:07:56', '2025-01-08 04:01:27'),
(85, 4, 82, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-01-07 06:08:07', '2025-01-08 07:17:50'),
(86, 4, 84, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-07 12:43:10', '2025-01-08 01:21:09'),
(87, 4, 33, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2025-01-07 13:40:43', '2025-01-08 01:22:30'),
(88, 4, 23, NULL, NULL, 0, 1, 100, NULL, NULL, NULL, '2025-01-07 14:05:23', '2025-01-08 01:24:17'),
(89, 4, 28, NULL, NULL, 0, -1, 0, NULL, NULL, '2025-01-07 14:12:35', '2025-01-07 14:12:25', '2025-01-07 14:12:35'),
(90, 4, 78, 'image55611736271798.jpg###image90301736271801.jpg###image15561736271839.jpg###image99651736271905.jpg###', NULL, 0, 1, 30, NULL, NULL, NULL, '2025-01-07 14:15:08', '2025-01-08 01:26:29'),
(91, 4, 28, 'image20341736272077.jpg###', NULL, 0, 1, 30, NULL, NULL, NULL, '2025-01-07 14:18:03', '2025-01-08 01:28:01'),
(92, 4, 89, NULL, NULL, 0, 1, 120, NULL, NULL, NULL, '2025-01-07 15:45:54', '2025-01-08 01:30:33'),
(93, 4, 92, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-07 15:47:08', '2025-01-08 01:32:48'),
(94, 4, 93, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-07 15:48:35', '2025-01-08 01:36:31'),
(95, 4, 94, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-07 15:57:02', '2025-01-08 01:43:30'),
(96, 4, 97, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-07 16:28:26', '2025-01-08 01:45:10'),
(97, 4, 105, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2025-01-07 16:44:07', '2025-01-08 01:48:36'),
(98, 4, 108, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2025-01-07 16:44:14', '2025-01-08 01:52:07'),
(99, 4, 110, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-07 16:45:01', '2025-01-08 01:56:50'),
(100, 4, 104, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2025-01-07 16:48:11', '2025-01-08 02:01:00'),
(101, 4, 111, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-07 16:50:54', '2025-01-08 02:02:07'),
(102, 4, 107, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-07 16:52:08', '2025-01-08 02:03:17'),
(103, 4, 103, NULL, NULL, 0, 1, 80, NULL, NULL, NULL, '2025-01-07 16:53:09', '2025-01-08 02:07:31'),
(104, 4, 112, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-07 16:54:31', '2025-01-08 02:42:14'),
(105, 4, 18, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-07 16:55:29', '2025-01-08 02:44:09'),
(106, 4, 114, NULL, NULL, 0, -1, 0, NULL, NULL, '2025-01-07 17:09:18', '2025-01-07 17:08:03', '2025-01-07 17:09:18'),
(107, 4, 29, NULL, NULL, 0, 1, 40, NULL, NULL, NULL, '2025-01-07 17:14:39', '2025-01-08 02:51:48'),
(108, 4, 117, NULL, NULL, 0, 1, 60, NULL, NULL, NULL, '2025-01-07 17:40:48', '2025-01-08 02:53:50'),
(109, 4, 122, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-07 21:49:03', '2025-01-08 02:55:01'),
(110, 4, 88, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2025-01-07 22:38:33', '2025-01-08 02:57:35'),
(111, 4, 57, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-07 23:41:42', '2025-01-08 03:01:33'),
(112, 4, 124, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-08 00:14:13', '2025-01-08 03:02:09'),
(113, 4, 127, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-08 00:51:27', '2025-01-08 03:03:56'),
(114, 4, 123, NULL, NULL, 0, 1, 40, NULL, NULL, NULL, '2025-01-08 01:27:17', '2025-01-08 03:05:01'),
(115, 4, 132, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-08 01:57:15', '2025-01-08 03:05:46'),
(116, 4, 81, NULL, NULL, 0, 1, 10, NULL, NULL, NULL, '2025-01-08 03:27:11', '2025-01-09 05:18:37'),
(117, 4, 134, 'image98931736321637.jpg###', NULL, 0, 1, 50, NULL, NULL, NULL, '2025-01-08 04:02:42', '2025-01-09 05:20:11'),
(118, 4, 135, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2025-01-08 10:06:14', '2025-01-09 05:20:55'),
(119, 4, 136, NULL, NULL, 0, 1, 30, NULL, NULL, NULL, '2025-01-08 13:57:49', '2025-01-09 05:22:07'),
(120, 4, 137, NULL, NULL, 0, 1, 20, NULL, NULL, NULL, '2025-01-08 15:09:17', '2025-01-09 05:23:46'),
(121, 4, 139, 'image31481736522074.jpg###image74231736522088.jpg###image57741736522110.jpg###image85181736522120.jpg###image59251736522132.jpg###image46211736522161.jpg###image4971736522175.jpg###image42501736522186.jpg###', NULL, 0, 1, 120, NULL, NULL, NULL, '2025-01-10 11:48:34', '2025-01-12 04:32:36'),
(122, 4, 141, NULL, NULL, 0, 1, 60, NULL, 1, NULL, '2025-01-11 13:30:53', '2025-01-15 14:43:04'),
(123, 0, 70, NULL, NULL, 0, -1, 0, NULL, NULL, '2025-01-15 02:00:22', '2025-01-12 12:05:39', '2025-01-15 02:00:22'),
(124, 0, 70, NULL, NULL, 0, -1, 0, NULL, NULL, '2025-01-15 01:59:56', '2025-01-12 12:05:45', '2025-01-15 01:59:56'),
(125, 0, 70, NULL, NULL, 0, -1, 0, NULL, NULL, '2025-01-15 01:59:28', '2025-01-12 12:05:54', '2025-01-15 01:59:28'),
(126, 0, 70, NULL, NULL, 0, -1, 0, NULL, NULL, '2025-01-15 01:57:19', '2025-01-12 12:05:57', '2025-01-15 01:57:19'),
(127, 0, 70, NULL, NULL, 0, -1, 0, NULL, NULL, '2025-01-15 01:56:50', '2025-01-12 12:06:00', '2025-01-15 01:56:50'),
(128, 4, 38, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-01-17 15:36:34', '2025-01-17 15:36:34'),
(129, 4, 38, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-01-17 15:39:01', '2025-01-17 15:39:01'),
(130, 4, 38, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-01-17 15:39:50', '2025-01-17 15:39:50'),
(131, 4, 38, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-01-17 15:40:36', '2025-01-17 15:40:36'),
(132, 4, 16, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-01-17 15:41:17', '2025-01-17 15:41:17'),
(133, 4, 38, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-01-17 15:41:26', '2025-01-17 15:41:26'),
(134, 4, 38, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-01-17 15:42:17', '2025-01-17 15:42:17'),
(135, 4, 38, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-01-17 15:43:18', '2025-01-17 15:43:18'),
(136, 4, 59, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-01-18 00:28:04', '2025-01-18 00:28:04'),
(137, 4, 59, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-01-18 00:30:10', '2025-01-18 00:30:10'),
(138, NULL, 84, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-02-01 15:24:03', '2025-02-01 15:24:03'),
(139, NULL, 84, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-02-01 15:27:55', '2025-02-01 15:27:55'),
(140, NULL, 84, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-02-01 15:30:18', '2025-02-01 15:30:18'),
(141, NULL, 194, NULL, NULL, 0, -1, 0, NULL, NULL, NULL, '2025-02-01 23:30:19', '2025-02-01 23:30:19');

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
(1, 1, 1),
(2, 2, 1),
(3, 4, 1),
(4, 5, 1),
(5, 1, 2),
(6, 2, 2),
(7, 3, 2),
(8, 4, 2),
(9, 6, 2),
(10, 1, 3),
(11, 2, 3),
(12, 3, 3),
(13, 4, 3),
(14, 6, 3),
(15, 4, 4),
(16, 5, 4),
(17, 2, 4),
(18, 1, 4),
(19, 6, 4),
(20, 1, 5),
(21, 2, 5),
(22, 3, 5),
(23, 4, 5),
(24, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rituals`
--

CREATE TABLE `rituals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rituals`
--

INSERT INTO `rituals` (`id`, `title`, `color`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'موکب خیابانی', '#FF6347', 1, NULL, NULL, NULL),
(2, 'موکب خانگی', '#8A2BE2', 1, NULL, NULL, NULL),
(3, 'کاروان شادی', '#00CED1', 1, NULL, NULL, NULL),
(4, 'اطعام', '#FF4500', 1, NULL, NULL, NULL),
(5, 'دسته عزاداری', '#32CD32', 1, NULL, NULL, NULL),
(6, 'تزیین خیابان و محله', '#FFD700', 1, NULL, NULL, NULL);

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
(2, NULL, '1403', 10, 2, 6, 'مجله جدید', 304, 'کاروانیها', 5, 'شهر من', 'روستای جدید', 1, '2025-01-05 09:54:39', '2025-01-05 13:24:39', '2025-01-05 09:54:39'),
(23, NULL, '1403', 83, 4, 64, NULL, 424, 'اطراف مسجد', 27, 'نکا', 'دوقانلو', 1, NULL, NULL, NULL),
(22, NULL, '1403', 83, 4, 64, NULL, 424, 'مسجد', 27, 'نکا', 'دوقانلو', 1, NULL, NULL, NULL),
(21, NULL, '1403', 83, 4, 64, NULL, 424, 'منزل', 27, 'نکا', 'دوقانلو', 1, NULL, NULL, NULL),
(6, NULL, '1403', 71, 4, 46, 'پخت غذا در خیابان برای عزاداران حضرت فاطمه در خیا بان قائم مشهد او نهم گروهی . یعنی نزدیک 30مسجد هر مسجد یه دیگ  مجزا با همکاری هیات امنای مسجد', 396, 'کنار خیا بان', 11, 'مشهد', 'سیدی خیا بان قائم 30', 1, NULL, NULL, NULL),
(11, NULL, '1403', 73, 4, 66, 'پذیرایی آش باهمکاری یکی ازخانواده هابرای ۲۰۰نفرانجام شد', 13, 'مدرسه', 24, 'انبارلوم', 'گوک تپه ۱', 1, NULL, NULL, NULL),
(12, NULL, '1403', 73, 4, 66, 'تزیین مدرسه،برگزاری نمایشگاه یاس نبوی ونمایشگاه حجاب ،درمدرسه مختلط دختروپسروهم اهل سنت واهل تشیع هستندمحفل انس باقران', 13, 'مدرسه', 24, 'انبارلوم', 'گوک تپه ۱', 1, NULL, NULL, NULL),
(49, NULL, '1403', 84, 4, 80, NULL, 342, 'مسجد', 24, 'کلاله', 'وحدت', 1, NULL, NULL, NULL),
(48, NULL, '1403', 84, 4, 80, NULL, 342, 'مسجد', 24, 'کلاله', 'وحدت', 1, NULL, NULL, NULL),
(54, NULL, '1403', 85, 4, 82, NULL, 338, 'امام زاده سید محمد', 21, 'کرمان', NULL, 1, NULL, NULL, NULL),
(42, NULL, '1403', 90, 4, 78, 'اطعام، کاروان شادی موکب خیابانی', 423, 'گروه بانوان راحیل', 2, NULL, NULL, 1, NULL, NULL, NULL),
(46, NULL, '1403', 103, 4, 103, 'د  روز شهادت بانوی دو عالم حضرت فاطمه زهرا سلام الله علیها دسته عزاداری در سطح شهر  فعالیت خوبی داشته است', 417, 'خیابان اصلی شهر', 24, 'مینودشت', 'مینودشت', 1, NULL, NULL, NULL),
(45, NULL, '1403', 103, 4, 103, '۴ ایستگاه صلواتی به مدت چهار روز در سطح شهربرگزار گردید', 417, 'پارک شهر', 24, 'مینودشت', 'مینودشت', 1, NULL, NULL, NULL),
(44, NULL, '1403', 103, 4, 103, 'دسته عزاداری د ر غروب روز شهادت ررگزار گردید', 358, 'خیابان اصلی', 24, 'گالیکش', 'گالیکش', 1, NULL, NULL, NULL),
(43, NULL, '1403', 103, 4, 103, 'اطعام در شب شهادت و روز شهادت بانوی دو عالم حضرت فاطمه زهرا سلام الله علیها در خدمت مومنین بودیم', 417, 'مسجد صاحب الزمان', 24, 'مینودشت', 'مینودشت', 1, NULL, NULL, NULL),
(47, NULL, '1403', 107, 4, 29, NULL, 106, 'خانه', 8, 'پارچين', NULL, 1, NULL, NULL, NULL),
(55, NULL, '1403', 117, 4, 134, 'موکب خیابانی همراه با سخنرانی و مداحی و پذیرایی که ۳۵۰ الی ۴۰۰ صندلی پر شد', 157, 'چهار راه طیب مقابل مسجد شهید آیت الله مدنی', 26, 'خرم آباد', 'نداشت', 1, NULL, NULL, NULL),
(53, NULL, '1403', 85, 4, 82, NULL, 338, 'میدان علی بن ابی طالب علیه السلام', 21, 'کرمان', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
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

INSERT INTO `supports` (`id`, `title`, `pack_items`, `amount`, `type_id`, `promotion_id`, `description`, `creator_id`, `editor_id`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'کتاب\nبروشور', NULL, 1, 1, 'به ضورت پستی ارسال شد', NULL, NULL, 1, NULL, '2024-12-11 08:53:05', '2024-12-11 08:53:05'),
(2, NULL, NULL, '500000 تومان', 2, 3, 'زذزذز', NULL, NULL, 1, NULL, '2024-12-11 09:45:39', '2024-12-11 09:45:39'),
(3, NULL, 'vdbvdbd', NULL, 1, 2, 'v svs', NULL, NULL, 1, NULL, '2024-12-12 03:48:23', '2024-12-12 03:48:23'),
(4, NULL, NULL, NULL, 2, 2, 'e34e4er', NULL, NULL, 1, NULL, '2024-12-12 04:47:29', '2024-12-12 04:47:29'),
(5, NULL, NULL, '200000', 2, 4, 'عهلهع', NULL, NULL, 1, NULL, '2024-12-14 09:03:54', '2024-12-14 09:03:54');

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
(1, 3, 1, NULL, NULL, NULL),
(2, 4, 1, NULL, NULL, NULL),
(3, 5, 1, NULL, NULL, NULL),
(4, 7, 1, NULL, NULL, NULL),
(5, 3, 2, NULL, NULL, NULL),
(6, 5, 2, NULL, NULL, NULL),
(7, 4, 4, NULL, NULL, NULL),
(8, 5, 4, NULL, NULL, NULL),
(13, 7, 5, NULL, NULL, NULL),
(12, 6, 5, NULL, NULL, NULL),
(14, 8, 5, NULL, NULL, NULL);

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
(1, 'فاطمیه', 8, 2, 2, 3, NULL, 'fa', 1, NULL, '2024-12-11 08:11:01', '2025-01-05 11:13:44'),
(2, 'مشکل ثبت نان دا رم', 7, 2, 3, 3, NULL, 'fa', 1, NULL, '2024-12-11 08:29:41', '2024-12-11 08:31:21'),
(3, 'بسته فرهنگی', 3, 2, 3, 3, 5, 'fa', 1, NULL, '2024-12-11 09:33:12', '2024-12-11 09:34:41'),
(4, 'ویرایش', 5, 1, 3, 3, 5, 'fa', 1, NULL, '2024-12-15 10:50:07', '2024-12-15 15:30:01'),
(5, 'بررسی تیکت', 6, 1, 2, 3, NULL, 'fa', 1, NULL, '2024-12-15 15:54:39', '2025-01-05 11:11:38'),
(6, 'برگزاری اردوی زیارتی', 55, 2, 3, 3, NULL, 'fa', 1, NULL, '2024-12-22 15:50:53', '2025-01-05 11:09:18'),
(7, 'مشکل سامانه', 61, 1, 3, 3, NULL, 'fa', 1, NULL, '2024-12-25 08:57:02', '2025-01-05 11:10:09'),
(8, 'مساعدت هدایتی فرهنگی معتکفین نوجوان و جوان و بزرگسال با اولویت صحیفه سجادیه', 89, 2, 3, 0, NULL, 'fa', 1, NULL, '2025-01-07 15:49:07', '2025-01-07 15:49:07'),
(9, 'کتاب بفرستین', 17, 2, 2, 0, NULL, 'fa', 1, NULL, '2025-02-01 04:32:22', '2025-02-01 04:32:22'),
(10, 'نیمه شعبان', 193, 2, 3, 0, NULL, 'fa', 1, NULL, '2025-02-01 19:06:48', '2025-02-01 19:06:48');

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
(1, 8, 1, 'هر چه پیش آید خوش آید', NULL, 1, NULL, '2024-12-11 08:11:01', '2024-12-11 08:11:01'),
(2, 7, 2, 'مهم است', 'image88331733918379.jpg###', 1, NULL, '2024-12-11 08:29:41', '2024-12-11 08:29:41'),
(3, 1, 2, 'حله شده مجدد چک کنید', NULL, 1, NULL, '2024-12-11 08:30:53', '2024-12-11 08:30:53'),
(4, 3, 3, 'سلام\nقرار بود بسته بفرستید هنوز ذدریسرمسگخ', NULL, 1, NULL, '2024-12-11 09:33:12', '2024-12-11 09:33:12'),
(5, 1, 3, 'دایمک ئ یدئذیجدذسخجذس', NULL, 1, NULL, '2024-12-11 09:33:50', '2024-12-11 09:33:50'),
(6, 3, 3, 'زذدزد', NULL, 1, NULL, '2024-12-11 09:34:20', '2024-12-11 09:34:20'),
(7, 5, 4, 'به جای کلمه وبلاگ اطلاعیه باشد \nبه جای کلمه تیکت ، درخواست باشد', NULL, 1, NULL, '2024-12-15 10:50:07', '2024-12-15 10:50:07'),
(8, 6, 5, 'این متن برای تست بررسی درخواست من ثبت میشود :)', NULL, 1, NULL, '2024-12-15 15:54:39', '2024-12-15 15:54:39'),
(9, 1, 5, 'شما باید همکاری داشته باشید جهت بررسی تست', NULL, 1, NULL, '2024-12-15 15:56:16', '2024-12-15 15:56:16'),
(10, 6, 5, 'تشکر از پیگیری شما', NULL, 1, NULL, '2024-12-15 16:13:05', '2024-12-15 16:13:05'),
(11, 55, 6, 'درخواست کمک در برگزاری اردو زیارتی مشهد مقدس یا قم و جمکران برای نوجوانان و جوانان محلات کم برخوردار رشت', NULL, 1, NULL, '2024-12-22 15:50:53', '2024-12-22 15:50:53'),
(12, 61, 7, 'یذیذ', NULL, 1, NULL, '2024-12-25 08:57:02', '2024-12-25 08:57:02'),
(13, 11, 1, 'ان شاالله', NULL, 1, NULL, '2025-01-05 11:12:30', '2025-01-05 11:12:30'),
(14, 11, 1, 'تمام', NULL, 1, NULL, '2025-01-05 11:13:35', '2025-01-05 11:13:35'),
(15, 89, 8, 'ضمن عرض سلام و احترام محضر سروران معزز باتوجه به حساسیت منطقه تبلیغی و همجواری با استان گلستان و تردد بیش از حد مایحتاج به شهرستان های تلفیقی استان های هم جوار و احتمال تاثیر پذیری مباحث اعتقادی و ... لزوم مساعدت مضاعف میگردد', NULL, 1, NULL, '2025-01-07 15:49:07', '2025-01-07 15:49:07'),
(16, 17, 9, 'پرچم کتاب جوایز بفرستید', NULL, 1, NULL, '2025-02-01 04:32:22', '2025-02-01 04:32:22'),
(17, 193, 10, 'سلام علیکم \nدر نیمه شعبان در شهر  برنامه جشن کیلومتری داریم و همچنین اعزام بیش از ۳۰ مبلغ به روستاهای فاقد روحانی ومحروم نیاز به پشتیبانی مالی و فرهنگی داریم', NULL, 1, NULL, '2025-02-01 19:06:48', '2025-02-01 19:06:48');

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
(1, 'پشتیبانی فنی', 1, NULL, 3, 0, 0, 0, 3, 1, NULL, '2024-11-30 11:34:55', '2024-11-30 11:34:55'),
(2, 'پشتیبانی و آماد فرهنگی', 1, NULL, 7, 3, 0, 0, 3, 1, NULL, '2024-11-30 11:35:12', '2024-11-30 11:35:12'),
(3, 'پشتیبانی مهارتی', 1, NULL, 0, 0, 0, 0, 0, 0, NULL, '2024-11-30 11:35:27', '2024-11-30 11:35:27');

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
(1, 'فاطمیه', 4, 4, 1, '1403', '45', 1, 150, 'حسینیه', 99, 10, 'بیرجند', NULL, 1, '2024-12-09 12:12:17', '2024-12-09 15:42:17', '2024-12-09 12:12:17'),
(3, 'تست منبر', 10, 6, 2, '1403', '43', 3, 45, 'تست مکان', 21, 4, 'اردستانی', 'اردستان روستا', 1, '2025-01-05 09:54:39', '2025-01-05 13:24:39', '2025-01-05 09:54:39'),
(10, 'فاطمیه', 31, 7, 4, '1403', '50', 1, 29, 'مسجد', 18, 14, 'ابهر', NULL, 1, NULL, NULL, NULL),
(31, 'منبر کتاب فاطمه برترین بانوی هستی', 36, 15, 4, '1403', '40', 1, 100, 'مسجد', 125, 30, 'شهر', NULL, 1, NULL, NULL, NULL),
(17, 'حضرت زهرا', 42, 27, 4, '1403', '45', 1, 50, 'مسجد و حسینیه', 378, 4, 'باغبهادران', 'کرچگان', 1, NULL, NULL, NULL),
(18, 'فاطمیه', 44, 21, 4, '1403', '45', 2, 10, 'مسجد', 43, 13, '۰', '۰', 1, NULL, NULL, NULL),
(19, NULL, 64, 17, 4, '1403', NULL, NULL, NULL, NULL, 375, 17, NULL, NULL, 1, NULL, NULL, NULL),
(20, 'فضایل اخلاقی حضرت زهرا علیهاالسلام', 66, 56, 4, '1403', '1', 1, 50, 'مسجد بقیة‌الله', 20, 3, 'اردبیل', NULL, 1, NULL, NULL, NULL),
(65, NULL, 83, 64, 4, '1403', '30', 1, 50, 'مسجد حضرت ابوالفضل ع', 424, 27, 'نکا', 'روستای دوقانلو', 1, NULL, NULL, NULL),
(22, 'نقش حضرت زهرا سلام الله علیها در تربیت فرزندان', 71, 46, 4, '1403', '45', 3, 300, 'حسینیه ومسجد', 396, 11, 'مشهد', '......', 1, NULL, NULL, NULL),
(23, 'نقش حضرت زهرا س در خانه داری و همکاری با شوهر و.....', 71, 46, 4, '1403', '50', 1, 500, 'مسجد', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(25, 'الگو قراردادن حضرت،ولایت ،محبت ...حضرت زهرا،القاب', 73, 66, 4, '1403', '120', 4, 40, 'زینبیه ومدرسه', 13, 24, 'انبارالوم', 'گوک تپه ۱', 1, NULL, NULL, NULL),
(26, 'شهادت و ولادت خانم فاطمه زهرا سلام الله علیها', 74, 67, 4, '1403', '45', 4, 12, 'خانه قرآن ام ابیها سلام الله علیها', 44, 21, NULL, 'بیاض', 1, NULL, NULL, NULL),
(27, 'برترین بانوی', 76, 69, 4, '1403', '180', 1, 200, 'مسجد جامع بیدک', 409, 31, 'مهريز', NULL, 1, NULL, NULL, NULL),
(142, 'بخش۱۴و۱۵ کتاب فاطمه بهترین بانوی هستی-جلسه اول', 81, 77, 4, '1403', '30', 1, 100, 'مسجد المهدی عج زیدی', 332, 4, 'کاشان', NULL, 1, NULL, NULL, NULL),
(141, 'بخش۱۴و۱۵ کتاب فاطمه بهترین بانوی هستی-جلسه دوم', 81, 77, 4, '1403', '30', 1, 100, 'مسجد المهدی عج زیدی', 332, 4, 'کاشان', NULL, 1, NULL, NULL, NULL),
(140, 'بخش۱۴و۱۵ کتاب فاطمه بهترین بانوی هستی-جلسه سوم', 81, 77, 4, '1403', '30', 1, 100, 'مسجد المهدی عج زیدی', 332, 4, 'کاشان', NULL, 1, NULL, NULL, NULL),
(66, NULL, 83, 64, 4, '1403', '45', 1, 70, 'مسجد جامع گرجی محله', 96, 27, 'بهشر', 'گرجی محله', 1, NULL, NULL, NULL),
(103, 'فاطمیه', 82, 5, 4, '1403', '40', 1, 40, 'منزل شخصی', 7, 4, NULL, 'حسین آباد', 1, NULL, NULL, NULL),
(139, 'حضرت صدیقه الشهیده', 84, 80, 4, '1403', '40', 1, 100, 'مسجد', 342, 24, 'کلاله', 'وحدت', 1, NULL, NULL, NULL),
(138, 'حضرت صدیقه الشهیده', 84, 80, 4, '1403', '40', 1, 90, 'مسجد', 342, 24, 'کلاله', 'وحدت', 1, NULL, NULL, NULL),
(137, 'حضرت صدیقه الشهیده', 84, 80, 4, '1403', '30', 1, 80, 'مسجد', 342, 24, 'کلاله', 'وحدت', 1, NULL, NULL, NULL),
(136, 'حضرت صدیقه الشهیده', 84, 80, 4, '1403', '30', 1, 30, 'مسجد', 342, 24, 'کلاله', 'وحدت', 1, NULL, NULL, NULL),
(119, 'سیره زندگی حضرت زهرا (س)', 86, 84, 4, '1403', '30', NULL, 50, 'شهرک جهاد جهادگران۱۵', 360, 23, 'دوگنبدان', NULL, 1, NULL, NULL, NULL),
(120, 'ایام فاطمیه دوم', 87, 33, 4, '1403', '90', 3, 25, 'مسجد امام خمینی(ره)', 334, 20, 'کامیاران', NULL, 1, NULL, NULL, NULL),
(121, NULL, 90, 78, 4, '1403', '50', 4, 60, 'نمازخانه مدرسه', 423, 2, 'نقده', NULL, 1, NULL, NULL, NULL),
(122, 'فاطمیه', 91, 28, 4, '1403', '90', 4, 75, 'دبستان حجاب', 281, 9, 'کیان', NULL, 1, NULL, NULL, NULL),
(123, 'موضوعات مربوط به ایام فاطمیه', 95, 94, 4, '1403', '40', NULL, 100, 'مسجد باب الحوائج', 423, 2, 'شهر', NULL, 1, NULL, NULL, NULL),
(124, 'سبک زندگی فاطمی برگرفته ازکتاب فاطمه برترین بانوی هستی', 100, 104, 4, '1403', '30', 1, 100, 'روضه خانگی ....دلنشگاه ....حوزه', 233, 27, 'ساری', NULL, 1, NULL, NULL, NULL),
(125, 'ایام فاطمیه', 101, 111, 4, '1403', '45', 3, 15, 'حسینیه فاطمه‌ الزهرا سلام الله علیها', 176, 22, 'کرند', NULL, 1, NULL, NULL, NULL),
(126, 'سیره حضرت زهرا (سلام الله علیها', 102, 107, 4, '1403', '60', 1, 150, 'مسجد صاحب الزمان', 373, 17, 'عماد شهر', NULL, 1, NULL, NULL, NULL),
(127, 'فاطمیه', 107, 29, 4, '1403', '40', 1, 100, 'قاسمیه امام حسن', 106, 8, 'پاکدشت', NULL, 1, NULL, NULL, NULL),
(128, 'اهداف ودرسهای حضرت زهراسلام الله علیها', 108, 117, 4, '1403', '300', 1, 50, 'مسجد', 71, 26, 'بروجرد', 'کوشکی علیا', 1, NULL, NULL, NULL),
(131, 'فاطمیه', 109, 122, 4, '1403', '60', 3, 150, 'زینبیه', 375, 17, 'اشکنان', NULL, 1, NULL, NULL, NULL),
(130, 'فاطمیه', 109, 122, 4, '1403', '60', 4, 50, 'حسینیه الزهرا مرکزی', 375, 17, 'اشکنان', NULL, 1, NULL, NULL, NULL),
(129, 'فاطمیه', 109, 122, 4, '1403', '60', 3, 80, 'مسجد نبی اکرم (س)', 375, 17, 'اشکنان', NULL, 1, NULL, NULL, NULL),
(134, 'سبک زندگی عالی اسلامی', 110, 88, 4, '1403', '30', 3, 40, 'توس', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(133, 'سبک زندگی عالی اسلامی', 110, 88, 4, '1403', '30', 3, 10, 'امامیه', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(132, 'سبک زندگی عالی اسلامی', 110, 88, 4, '1403', '30', 3, 30, 'خیابان خواجه ربیع.شهید قربانی ۱۹', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(135, 'فاطمه برترین بانوی هستی', 111, 57, 4, '1403', '45', 1, 200, 'مشهد توس ۵۳ مسجد حضرت رسول اکرم', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(157, 'منبر', 121, 139, 4, '1403', '1', 3, 50, 'مسجد عباسیه کوچمشکی', 443, 30, 'همدان', NULL, 1, NULL, NULL, NULL),
(156, 'منبر', 121, 139, 4, '1403', '1', 3, 25, 'حسینیه امام خمینی', 443, 30, 'همدان', NULL, 1, NULL, NULL, NULL),
(155, 'منبر', 121, 139, 4, '1403', '1', 3, 40, 'مجلس خانگی', 443, 30, 'همدان', NULL, 1, NULL, NULL, NULL),
(154, 'منبر', 121, 139, 4, '1403', '2', 5, 30, 'دانشگاه علوم پزشکی', 443, 30, 'همدان', NULL, 1, NULL, NULL, NULL),
(153, 'منبر', 121, 139, 4, '1403', '1', 5, 30, 'دانشگاه علوم پزشکی', 443, 30, 'همدان', NULL, 1, NULL, NULL, NULL),
(152, 'منبر', 121, 139, 4, '1403', '2', 5, 30, 'خوابگاه ریحانه', 443, 30, 'همدان', NULL, 1, NULL, NULL, NULL),
(151, 'منبر', 121, 139, 4, '1403', '1', 5, 30, 'خوابگاه ریحانه', 443, 30, 'همدان', NULL, 1, NULL, NULL, NULL),
(158, 'منبر', 121, 139, 4, '1403', '1', 3, 20, 'حسینیه ملا جلیل', 443, 30, 'همدان', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT 2,
  `gender_id` int(11) DEFAULT 1,
  `is_not_citizen` int(1) DEFAULT 0 COMMENT 'اتباع هستم',
  `codemeli` varchar(10) DEFAULT NULL,
  `khadamat_code` varchar(30) DEFAULT NULL,
  `tablighat_office_code` varchar(30) DEFAULT NULL,
  `tablighat_organization_code` varchar(30) DEFAULT NULL,
  `ovghaf_code` varchar(30) DEFAULT NULL,
  `bank_account_number` varchar(30) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL COMMENT 'شهرستان محل سکونت',
  `province_id` int(11) DEFAULT NULL COMMENT 'استان محل سکونت',
  `city` varchar(100) DEFAULT NULL COMMENT 'شهرمحل سکونت',
  `village` varchar(100) DEFAULT NULL COMMENT 'روستا',
  `native_province_id` int(11) DEFAULT NULL COMMENT 'استان بومی',
  `native_city_id` int(11) DEFAULT NULL COMMENT 'شهرستان بومی',
  `address` text DEFAULT NULL,
  `postal_code` varchar(15) DEFAULT NULL,
  `photo` varchar(255) DEFAULT 'avatar.png',
  `education_id` int(11) DEFAULT NULL COMMENT 'تحصیلات',
  `status_id` int(11) DEFAULT -1 COMMENT 'وضعیت اکانت کاربر',
  `level_id` varchar(5) DEFAULT NULL COMMENT 'رتبه',
  `confirm_code` varchar(100) DEFAULT NULL,
  `confirm_time` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `editor_id` int(11) DEFAULT NULL,
  `has_khadamat_code` int(1) DEFAULT 0,
  `has_tablighat_office_code` int(1) DEFAULT 0,
  `has_tablighat_organization_code` int(1) DEFAULT 0,
  `has_ovghaf_code` int(1) DEFAULT 0,
  `report_count` int(11) DEFAULT 0 COMMENT 'تعداد گزارشها',
  `agree_count` int(11) DEFAULT 0 COMMENT 'تعداد مشارکتها',
  `work_status` int(1) DEFAULT 1 COMMENT 'وضعیت فعالیت فرهنگی',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `mobile`, `firstname`, `lastname`, `role_id`, `gender_id`, `is_not_citizen`, `codemeli`, `khadamat_code`, `tablighat_office_code`, `tablighat_organization_code`, `ovghaf_code`, `bank_account_number`, `city_id`, `province_id`, `city`, `village`, `native_province_id`, `native_city_id`, `address`, `postal_code`, `photo`, `education_id`, `status_id`, `level_id`, `confirm_code`, `confirm_time`, `password`, `last_login`, `creator_id`, `remember_token`, `editor_id`, `has_khadamat_code`, `has_tablighat_office_code`, `has_tablighat_organization_code`, `has_ovghaf_code`, `report_count`, `agree_count`, `work_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '09191964745', 'پرسنل', 'غدیر', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image49351733838074.png', NULL, 1, NULL, '2462', '1734246541', '$2y$12$MF4toQZLv5.DSupBLZ00FOYJdeg3LFnVPSbuJNMF52UNGY07pCOX2', '2025-02-03 13:28:39', NULL, 'RFP6YrMJqjKkpJuUyHR3P9A8zrB8eM7PgGXn0eU4wKs3gXWIcStSJrQCy5Ps', 1, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-03 16:58:39', '2025-02-03 13:28:39'),
(2, '09198111102', 'صادق', 'شیری', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image79261733768422.jpg', NULL, 1, NULL, NULL, NULL, '$2y$12$9l/.qnK2iRrIxvNbRecvguUNI3pV0Abtjxpu6hmjh/PC.ciqzgYf6', '2025-02-03 05:43:49', NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-03 09:13:49', '2025-02-03 05:43:49'),
(3, '09189062676', 'مبلغ', 'غدیر', 2, 1, 0, '4032228035', '434', NULL, '5566', NULL, '0132324234', 36, 2, '434', '434', 1, 31, NULL, '434343434', 'avatar.png', 2, 0, '0', '5121', '1733919257', '$2y$12$SbbHP/kZ6s17SKSiYImeJunolUdAuYxsaBvtn2SlAG0nqTAE/ocwi', '2024-12-22 11:50:20', NULL, 'nLGh1AsIA6OemB5mQOmVLS3szqPWKG3JqQpovohgzYW9sWDWQIaR0gcReyZy', 11, 1, 0, 1, 0, 0, 3, 2, NULL, '2025-01-05 13:36:11', '2025-01-05 10:06:11'),
(4, '09360000000', 'ابوعلی', 'تستی', 2, 1, 0, '1234567654', '1414', '689', NULL, NULL, '344', 349, 3, 'کوثر', NULL, 2, 122, NULL, NULL, 'avatar.png', 1, 0, '0', '6046', '1733729073', '$2y$12$mpLc206u.H5AHC2hHc85X.V/P8N6wDsngiOJHr3pdg.HysRuX5nJS', '2024-12-09 03:53:10', NULL, NULL, 11, 1, 1, 0, 0, 0, 1, 0, NULL, '2025-01-05 13:34:52', '2025-01-05 10:04:52'),
(5, '09196660562', 'مقداد', 'براتی', 2, 1, 0, '1260660729', '45736', '22035', NULL, '6373', '0700170000000302808262002', 327, 19, 'پردیسان', NULL, 4, 7, 'پردیسان - نجات خواه 4 -ک شهيدان  رنگرز- مجتمع مهندسین 1 ب 4 و8', NULL, 'image95111734262109.jpg', 3, 1, '5', '6411', '1733741246', '$2y$12$cH0xJJ73AZMyJnucgOe11eK4X4Ln2cEkpiF0OB8exrF0DxtU38pn6', '2025-02-03 06:51:14', NULL, NULL, 11, 1, 1, 0, 1, 1, 4, 1, NULL, '2025-02-03 10:21:14', '2025-02-03 06:51:14'),
(6, '09198526839', 'مریم', 'عبادی راد', 2, 2, 0, '2134543265', '546457474', NULL, NULL, '4645775757', '126754356', 26, 2, 'پردیس', NULL, 10, 99, 'تهران پردیس فاز 3 بلوک 453 پلاک 436\n\nجهت آزمایش          آزمایش', '65438754', 'image20751736084046.jpg', 4, 0, '0', '9302', '1733744741', '$2y$12$qsApw3I3RCqw5zE0KexRVOoO4BXOGOzmoVke81dOCVdkAm2i5HViq', '2024-12-16 04:05:32', NULL, NULL, 11, 1, 0, 0, 1, 0, 2, 0, NULL, '2025-01-05 13:34:09', '2025-01-05 10:04:09'),
(7, '09133598905', 'سید اسماعیل', 'طباطبایی', 2, 1, 0, '4420169516', '167789', NULL, NULL, NULL, '0302825136009', 327, 19, NULL, NULL, 31, 448, 'خیابان انقلاب کوچه 17 فرعی 18 کوچه شهید آهن پلاک 15/3', NULL, 'avatar.pngimage35911734262782.jpg', 3, -1, NULL, '6044', '1733916805', '$2y$12$tw5A5C92AQdpWmmIxo/9vOcpcEsSDtyC51.JIxEmsOmYcLyxDLQzy', '2024-12-16 07:45:39', NULL, 'G5u44sx9V5qMSAcEMh5SGg5Hu6QquZAlqTzFHSJXmXsNi635LssDKOzwiBh5', 7, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-01-05 13:24:25', '2025-01-05 09:54:25'),
(8, '09198555266', 'مجتبی', 'قاسمی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1759', '1738393704', '$2y$12$LqPCg0eNvxLmb9ZLC5ncwewA8egFnVY0YDxUCH4/pJGxS5ui0sBfm', '2025-02-01 03:36:29', NULL, 'atIjhc3cm7z0msWNihQszdRBer0pCArmcH1pKio1uNY5pzFC7nE1nPPhyB7P', NULL, 0, 0, 0, 0, 0, 2, 1, NULL, '2025-02-01 07:07:23', '2025-02-01 03:37:23'),
(9, '09196637217', 'داود', 'صانعی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2708', '1733916901', '$2y$12$RmN2YD8xi.ps6TPN84rrAufHx0w5nrItE.mjJPVxf02vLUidLvkG.', '2024-12-11 08:03:28', NULL, 'HwKn7LFysKcGpe87SLPhE8VrcLJssi0snI5Jx0T1289mAoiYdlYJF4RCsCBS', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2024-12-11 11:35:24', '2024-12-11 08:05:24'),
(10, '09127549713', 'سیدمحمد مهدی', 'فاطمی', 2, 1, 0, '1111111111', NULL, NULL, NULL, NULL, '111111', 89, 2, NULL, NULL, 3, 38, NULL, NULL, 'avatar.png', 2, 1, '0', '6743', '1733920001', '$2y$12$iMMNEp/FWxvNZnJRFAeeQO/Cgv2SzYBsvJz9kcN4Ae/W3nAic5xfW', '2024-12-11 08:54:55', NULL, 'O2jgEVfLc8BbZELv6N67wa8yl3hsCOxpOIY7kp8GnaYJyKhXDRI43ZmzZCjU', 1, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-12-14 08:37:58', '2024-12-14 05:07:58'),
(11, '09120000000', 'مسئول امور تبلیغی', 'براتی', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image45361734294246.jpg', NULL, 1, NULL, NULL, NULL, '$2y$12$Qt8TQiShrE0aKJZx5XQQzewolsxbI3zo5HPQh.eUIy4qAt3DROCw2', '2025-02-03 06:44:27', 1, NULL, 11, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-03 10:14:27', '2025-02-03 06:44:27'),
(12, '09130000000', 'معاون امور تبلیغی سید اسماعیل', 'طباطبایی', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image55371734262919.jpg', NULL, 1, NULL, NULL, NULL, '$2y$12$f/BRSRdwtHpxzf9r4y/koOMUQnCxqY6eoixW.bqrg/UC/hXjEsBb.', '2024-12-16 07:46:40', 11, NULL, 12, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-12-16 11:16:40', '2024-12-16 07:46:40'),
(13, '09191494182', 'هادی', 'رخ فروز', 2, 1, 0, '4999854813', '50427', '30774', NULL, NULL, '010408315009', 327, 19, 'قم', NULL, 27, 424, 'انتهای بیست متری شهید بهشتی ده متری شهیدچراغپورپلاک 168', '3719793859', 'avatar.png', 2, 1, '0', '2925', '1737142989', '$2y$12$Pla8kl0S0vV4Y6WDRfaw7.vuTI1O/jjw4k5nzpm5WwxXOanY46Imi', '2025-01-17 16:11:54', NULL, 'fnqPa72XMQIj8iQ572UL9p7vwl0frBPGIbr1ikSAovU8mM73lMFCnWvjb4pV', 11, 1, 1, 0, 0, 1, 2, 1, NULL, '2025-02-01 19:39:51', '2025-02-01 16:09:51'),
(14, '91187566091', 'رقیه', 'لکزائی', 2, 2, 0, '2532567727', '366721', NULL, NULL, NULL, '940170000000356344259003', 13, 24, 'انبارالوم', 'امین آباد', 24, 13, NULL, '4939191114', 'avatar.pngimage20211736276412.jpg', 2, 1, '4', '9170', '1734839451', '$2y$12$F9A1RFfvalLikNwMnfRmn.30eyF0EB9yrWHD9xdWzlKb2KPQyskuC', '2024-12-22 00:19:58', NULL, 'xLhzfvcQLTQYJSddQlY9yK2VI0I3eY8OY7gw0sr06XZkMcG9o2iI5pebdmcw', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-01-07 20:19:49', '2025-01-07 16:49:49'),
(15, '09186716204', 'مهدی', 'شرکائی', 2, 1, 0, '3979740706', '97696', NULL, NULL, NULL, '500170000000322997884005', 125, 30, 'تویسرکان', NULL, 30, 125, 'تویسرکان شهرک قائم خیابان تربیت خیابان تهذیب کوچه دانش یک', '6581773138', 'avatar.pngimage31531734844281.jpgimage45841736086035.webp', 3, 1, '5', '7867', '1734839492', '$2y$12$Juc0IFO1sXWYbrmGR8q5T.SfYNMLdoRiYt.JMbjn0LBEVp9h8sTIm', '2025-02-01 12:26:35', NULL, 'zH9kivaaxvSbMLiY0frQXRrBhmbstuF1VM0tJzROxvmHtKYWpojetndNMYvo', 15, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-02-01 15:57:15', '2025-02-01 12:27:15'),
(16, '09159250290', 'مرضیه', 'شایق', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8697', '1734839698', '$2y$12$SGCleg6RV1FkLBxeSCEwGO37M2HqW39QPWtceJZd2OGMai3bfhULW', '2024-12-22 00:23:14', NULL, 'idoblFfDSeHhVru7E46vNWhZzKgjedcLwpOBDS5jwE8wjNmCkB2UKgeLX0av', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2024-12-22 03:58:16', '2024-12-22 00:28:16'),
(17, '09171848773', 'مسلم', 'میرزایی', 2, 1, 0, '5159840591', '63790', NULL, '‏‪139411057009‬‏', NULL, '9001700000003030639916004', 375, 17, 'لامرد', 'کره موچی', 17, 375, 'فارس.لامرد..روستای کره موچی..خیابان شهید موسوی نژاد..کوچه نهم.منزل مسلم میرزایی', NULL, 'image19071738413556.jpg', 3, 1, '0', '2370', '1734839573', '$2y$12$U08n2aFrKOQND.RDjbfmpemH4.i8oD8xYDO9Lxoi0nAPzzh9AlJKy', '2024-12-22 00:21:02', NULL, 'mc0TgPMBpkXtgRV7ZxSHw6XHfL4OWxV2NPposAhbZUNVxueKh7IuYUFZI0Ob', 11, 1, 0, 1, 0, 1, 2, 1, NULL, '2025-02-01 15:02:03', '2025-02-01 11:32:03'),
(18, '09130814005', 'علی اصغر', 'ابن علی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6412', '1734839592', '$2y$12$YZLLjsJa2T2jBsGA2h3CFehXIdztiHHYI.t2vg4AvRmDhNWTB83Py', '2024-12-22 00:21:43', NULL, 'WqHoSndvmwwijl0L0Ab7hgif8pKY5BVi2s28IDbINnYQrAaNTX0W8Ycue9m8', NULL, 0, 0, 0, 0, 1, 2, 1, NULL, '2025-02-01 07:59:31', '2025-02-01 04:29:31'),
(19, '09171851123', 'زهره', 'انصاری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4663', '1734839905', '$2y$12$oED.L1jNUa28iCWFEc9Dk.icC96DH1FwVrVBYOzI9p.5so4JuaH8S', '2024-12-22 00:26:44', NULL, 'H6tPRqym4bCINp8HTqT9w033Se4MwDa2NC9j0nkbKYz4l7QJZQ41Bl91FEXd', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2024-12-27 14:24:11', '2024-12-27 10:54:11'),
(20, '09352334864', 'محمد', 'کرامتی', 2, 1, 0, '6029169807', '80723', '139076625', '139076625', NULL, '910170000000303919673007', 336, 5, 'کمال شهر', 'خرمدشت', 5, 336, 'کرج  کمالشهر  شهرک خرمدشت  میثم ۳ نیلوفر ۴ پلاک ۴۴', NULL, 'avatar.pngimage87721734841380.jpg', 2, -1, NULL, '1313', '1734840410', '$2y$12$m1EpyyvS8pfnUl8fPOzQh.2wAPC8PY1B8wYovTJrXpXGpkmNdW9Gm', '2025-01-17 17:53:03', NULL, NULL, 20, 1, 1, 1, 0, 0, 1, 1, NULL, '2025-01-17 21:23:03', '2025-01-17 17:53:03'),
(21, '09371422878', 'عقیل', 'شریفی', 2, 1, 0, '1850039941', '185291', NULL, NULL, NULL, '040170000000344241694007', 43, 13, NULL, NULL, 13, 43, 'امیدیه\nکوی طالقانی خ۱۲متری\nجنب مغازه صمدشریفی', NULL, 'avatar.png', 2, -1, NULL, '3693', '1734840744', '$2y$12$JkdxycHaWvoOcnHuD7/5CuxYgpagxhXtFPBwCJGDE5WCxjzSpIdH.', '2025-02-01 13:03:11', NULL, NULL, 21, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-01 16:47:15', '2025-02-01 13:17:15'),
(22, '09189036118', 'ابراهیم', 'جوادی ثابت', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7278', '1734840765', '$2y$12$g1vrnyuB/owevkVY2CyD2OlX.t9ul4ezoy53ST1bqI0q6QVTBQ2oC', '2024-12-22 00:40:58', NULL, '3S8nivvMZEPJ5lMfEnOp3BwPEnFNYfMmFpmPBzRpHtcexsIFD86Q14GbGMWT', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2024-12-26 10:37:36', '2024-12-26 07:07:36'),
(23, '09356231274', 'مرضیه', 'خداوردیان', 2, 2, 0, '1263434649', '137780', NULL, '139901103550', NULL, '440600243370011093712001', 332, 4, 'کاشان', NULL, 4, 332, NULL, NULL, 'image60771738511319.jpg', 2, -1, NULL, '9317', '1734841035', '$2y$12$.YOSLWl9Qs6VlLbgP5oC1err6uH1jhSOWVw9AUhboB299OpSRRsP6', '2025-02-02 11:54:07', NULL, '6BokAHllSKVP4TWUbLxzgonEJ1OKHnnMRk7HKFXrJ5A3cLIvK8CzI6FuGJaS', 23, 1, 0, 1, 0, 2, 2, 1, NULL, '2025-02-02 15:48:44', '2025-02-02 12:18:44'),
(24, '09155631783', 'سعید', 'زینلی', 2, 1, 0, '0640243010', '214838', '29246', NULL, NULL, '200170000000313319504002', 99, 10, NULL, NULL, 10, 99, NULL, NULL, 'avatar.pngimage63951738409515.jpg', 3, -1, NULL, '8325', '1737139922', '$2y$12$CdRPTWUXfn2MbSJt92vPG.Umh4CeVpJETGvVnLJ7aFo2KKT1G1iPW', '2025-01-17 15:20:25', NULL, 'ramyIuuxsGhUU3e48vKWY79efj2P4tcmJPzsD9lK2KvAZ3yaTVeeDnro8m2N', 24, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-02-01 11:31:59', '2025-02-01 08:01:59'),
(25, '09145551257', 'زهرا', 'سیفی پور', 2, 2, 0, '2900304601', '۳۸۳۸۹۸', NULL, NULL, NULL, '0227851673007', 423, 2, NULL, NULL, 2, 423, NULL, NULL, 'image97321738430717.jpg', 2, -1, NULL, '6510', '1734841835', '$2y$12$KqNKx7upXYiHV4zYe0ScTea8K2aM8X/UkFgx6JtcTcXFMYsZEIKre', '2024-12-22 00:58:46', NULL, 'fTOSvaAreqOzE3an80nIEaLNR41V9nHNifWDPCFnMR9qYPq2QeJ5UCvjLblU', 25, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-02-01 17:25:24', '2025-02-01 13:55:24'),
(26, '09398405068', 'خدیجه', 'هاشم خانی', 2, 2, 0, '0320438147', '32235042', NULL, NULL, NULL, '4401700000003428860095007', 336, 5, 'ماهدشت', NULL, 5, 336, 'البرز، کرج، ماهدشت، میدان نماز، کوچه شهید فیلو پلاک ۳۱', '3189919434', 'image31291738504235.jpg', 2, -1, NULL, '9696', '1734842003', '$2y$12$pFKqrm.Zg4jzAvGoE8px7uMz7qoAOVvdALUWmr3aPSDoAY5S5hOou', '2024-12-22 01:01:59', NULL, 'tzwGXjXGmhppNqKH5dJVRFRVh4hYYb7zExUF8zoW56VnSFEjWy17Y1BG9AZ5', 26, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-02 13:55:35', '2025-02-02 10:25:35'),
(27, '09131105844', 'روح‌ا', 'رحیمی', 2, 1, 0, '1091760578', '45302', 'ندارم', 'ندارم', 'ندارم', '800170000000303188998007', 378, 4, 'باغبهدران', 'کرچگان', 4, 378, 'اصفهان /لنجان/باغبهادران/روستای کرچگان/کوی بهار شش/پلاک شش', '8479115713', 'avatar.pngimage22941737144166.jpg', 2, -1, NULL, '5944', '1737143199', '$2y$12$A3JJhSYc0a1pu7UolCH.2ORBvWHBvsIqXyyDC0S.xyyU02zh5nb5y', '2025-01-17 16:14:58', NULL, 'BzL14OgKVGBPCX1xqpPUvV278ZtkD1TE72q80jfs3er9NdV2YaNTeDCN9pAf', 27, 1, 1, 1, 1, 1, 2, 1, NULL, '2025-02-01 08:02:07', '2025-02-01 04:32:07'),
(28, '09915525365', 'نرگس', 'شاهرخی شهرکی', 2, 2, 0, '4622692287', '115926', NULL, NULL, NULL, '700170000000304000933001', 281, 9, 'کیان', NULL, 9, 281, 'خیابان باهنر کوچه 20پلاک 17', NULL, 'avatar.png', 2, -1, NULL, '3050', '1738397002', '$2y$12$YUsuN8B18HdDOZV3ZVwxMO/woe376tlpJl44jYFlanXhr0zeHEzj.', '2025-02-01 04:31:27', NULL, 'd5Mj1p4pwRch3hrOktOU5MIVw3vU2dS2dqLWVKo8myi6v2HlzfhalKasod8z', 28, 1, 0, 0, 0, 2, 2, 1, NULL, '2025-02-01 08:03:33', '2025-02-01 04:33:33'),
(29, '09907646359', 'اسماعیل', 'ورمزیار', 2, 1, 0, '0559833148', '۱۴۴۷۶۳', NULL, NULL, NULL, '190170000000307108420002', 106, 8, 'پاکدشت', NULL, 28, 165, 'پاکدشت بلوار شهدای رحیمی حوزه علمیه امام صادق علیه السلام', NULL, 'image55931736282107.jpg', 3, -1, NULL, '8639', '1736281816', '$2y$12$RgWTYUz2afH4hJgyzNmZw.ZkiKZXtZWoUtgJrtCNLGJZemSTk/1cm', '2025-02-01 06:29:44', NULL, '9ku3YGPVeH1ocdZ5CbD7WUNYmN3PMLfAYOuSuhPPg3gafKJtgW2SQXTkujhk', 29, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-02-01 10:00:57', '2025-02-01 06:30:57'),
(30, '09187003622', 'مهین', 'سبحانی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5669', '1734842917', '$2y$12$Z1.HeYu6EBcRmwADkKGPSuGE6zGGT3nM1Ov05i2GCK3gLpBzOu6mu', '2024-12-22 01:16:53', NULL, 'xmzCqtU0J6zzFijmkzNt1XUOCZaz1X5JCIplqFE5z9elPazibGkKrRT1Q2YP', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2024-12-22 04:49:46', '2024-12-22 01:19:46'),
(31, '09191501644', 'مرتضی', 'عرب خالص', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4662', '1737140087', '$2y$12$kLpxhBlNzxCc2lALQxVaqunppHUYoq16d4OUqH4ScIH3ZsL7x2LZ6', '2025-01-17 15:23:01', NULL, 'KajfhrLQgzyqv2UtVxCwe0TB72ZDfkw1mJKrCLCWKjBVBq8EXYoEazzcaiDY', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 18:56:47', '2025-01-17 18:56:47'),
(32, '09123902693', 'حسین', 'اشهد', 2, 1, 0, '0076295087', '62540', '200292', '139311003660', NULL, '7801700000102053938003', 327, 19, 'قم', NULL, 8, 126, 'میدان بسیج 30 متری هنرستان خیابان میرزاکوچک خان کوچه 3 پلاک5', '3715846954', 'avatar.pngimage80481734843974.jpg', 4, -1, NULL, '1780', '1734843469', '$2y$12$GG0bram2Bj7VyKcoz6r7FeXT34FX/eka7O8b3/4jhljTVsU8VrLfS', '2025-01-17 15:19:17', NULL, 'NdCfc18PWUZtAqTRNYT6jbnzEzjH7WrwEda8eEqLAZgJMKBrDvELgczJqnnh', 32, 1, 1, 1, 0, 1, 2, 1, NULL, '2025-02-01 08:03:25', '2025-02-01 04:33:25'),
(33, '09192951545', 'سیران', 'کهریزی پور', 2, 2, 0, '3838347269', '۶۰۳۰۵', NULL, NULL, NULL, '322075451004', 334, 20, 'کامیاران', NULL, 20, 334, 'کامیاران خیابان شهید مصطفی خمینی کوچه شهید منوچهری پلاک ۱۸۹۹', '۶۶۳۱۸۳۳۸۷۱', 'avatar.png', 3, -1, NULL, '2639', '1734844063', '$2y$12$IDXM/xRRdbNmVuFh3Dbq9eIRvE9QvEOw4g3Jpjq723Yu2P9yKBDL.', '2025-02-01 08:12:33', NULL, 'rDc61maPi4OAfYB8ditja8ZcgwKsQh7qlOqKr8MVzoHVKZEhXBR3dhvrMpiF', 33, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-01 11:42:33', '2025-02-01 08:12:33'),
(34, '09185066141', 'سجاد', 'سهروردی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7854', '1734844669', '$2y$12$d1vjuvWBo7193X2II5QBY.BRYDfrSm1YHZBzvDOYzRJ6Q0JMRYc8G', '2024-12-22 01:46:03', NULL, 'kmGMxiUsW2OmXMvOjoHL3Ixum7wKKR7V1NUelXNrY0Ro1ngvaQa3BSXDcRO5', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-12-22 05:17:52', '2024-12-22 05:17:52'),
(35, '09137862564', 'اکبر', 'صالحی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5410', '1734845007', '$2y$12$f/WbR7/PbIkko/zcdnaIT.WDKuhfZ2dCwhzY11VXqahEB6cd6wPKK', '2024-12-22 01:51:38', NULL, 'WyMP2YYnKTXGChZbAMSl1cLKf9YJl3R4wKGImnLESvAjWUotBB2ioHjPwRtK', NULL, 0, 0, 0, 0, 1, 2, 1, NULL, '2025-02-01 10:00:53', '2025-02-01 06:30:53'),
(36, '09118599711', 'مجید', 'خوشه چرخ', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7839', '1734846343', '$2y$12$V88mkZz.Ym6n4IiNVdppEO1aLYdHwAlkQg3/lZb7OuVcz1OzR1ici', '2024-12-22 02:13:56', NULL, 'PeXK3cRYjxoxOVoxU7jA5LT8vZsYtCH7HBVHvrTbY873ebrEDbyrNXx87yNL', NULL, 0, 0, 0, 0, 0, 0, 1, '2025-01-07 04:21:50', '2025-01-07 07:51:50', '2025-01-07 04:21:50'),
(37, '09162527342', 'حمیده', 'آرمندجرجندی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2364', '1734848190', '$2y$12$QDurDNoeCr02QTtvl3dAyOPxzSYBXWWR.CVGJ8yzfqvV9qvcreS3e', '2024-12-22 02:44:51', NULL, 'XljEAXaStebT7sNen9Dr4k8SFB8ttWDSqh245R5AqrVrM0CMi1RbWiN25ZgB', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-02-03 06:53:59', '2025-02-03 03:23:59'),
(38, '09300754576', 'علیرضا', 'موسیوند', 2, 1, 0, '3861581957', NULL, NULL, NULL, NULL, '6037998173423327', NULL, 30, 'مریانج', 'ارزانفود', 30, 443, NULL, NULL, 'avatar.pngimage4561737141677.jpg', 1, -1, NULL, '4948', '1734848403', '$2y$12$buul2.IrsM9tBiITEqJilOGO1EUrpiFLtSFcPjIZvduJQCDcx2oSG', '2025-02-01 12:18:57', NULL, NULL, 38, 0, 0, 0, 0, 7, 0, 1, NULL, '2025-02-01 15:48:57', '2025-02-01 12:18:57'),
(39, '09385437365', 'سلیم', 'ابراهیمی', 2, 1, 0, '4011820911', '168372', NULL, NULL, NULL, '510170000000306346679008', 407, 6, NULL, NULL, 30, 29, NULL, NULL, 'image27801737146641.jpg', 4, -1, NULL, '7378', '1734848698', '$2y$12$8gS5/eN7DexbPv0ymf2hb.L6jH5poE50ctqtZKWV0qigT74Cwxjk6', '2024-12-22 02:53:17', NULL, 'TCJBQ443j9E1VT7gdS6EO2OI9yCF9i5pnjkYbFIndmq6Uur7aE6ziXpL6Asc', 39, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-01-17 20:46:44', '2025-01-17 17:16:44'),
(40, '09159395797', 'مصطفی', 'جهانی یدک', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6760', '1734849900', '$2y$12$B.OyADGy.q1G13tKpleh6.g5ncoF03b4wg78wTj5YM0TN0.Ps.ES.', '2024-12-22 03:13:25', NULL, 'M28DnhYismXsQmiXMTx2zxJyfzJgYgSuiQo0UghIYlTHU5N9NCAbRJYoqgU9', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2024-12-22 06:54:20', '2024-12-22 03:24:20'),
(41, '09921960463', 'راضیه', 'عبودی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7554', '1734852366', '$2y$12$6CUgRGLGuzHYvHGVLPX.g.ofR1/ofLu3q/ukCTzIlTyXU54AedsN6', '2025-01-18 17:06:24', NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-18 20:36:24', '2025-01-18 17:06:24'),
(42, '09135032141', 'فاطمه', 'علیزاده', 2, 2, 0, '3052301871', '379827', NULL, '63475', NULL, '160170000000357545793005', 214, 21, 'مرکزی', NULL, 21, 214, NULL, NULL, 'image73471737207563.jpg', 3, -1, NULL, '8424', '1737207116', '$2y$12$LtA0bLP/aKp9uh2pNFUH4.1/0ISP9AbbJgr6YdgasoJ8n1tjvN4Ze', '2025-02-01 12:23:15', NULL, NULL, 42, 1, 0, 1, 0, 1, 2, 1, NULL, '2025-02-01 15:53:57', '2025-02-01 12:23:57'),
(43, '09130849238', 'مهدی', 'صحرایی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4342', '1734854642', '$2y$12$B/es3kHvwb8FlBoLDIb.ReKjoiFjL1xLZaAuJyH9m8T7/ji9yaueu', '2024-12-22 04:33:34', NULL, 'uOELNw1feH8eEMNARrAjKgQB84iGVJ4PsMKQ7e3G3kBMra1B71Rg8qiYT1K3', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2024-12-22 08:05:44', '2024-12-22 04:35:44'),
(44, '09158231483', 'جعفر', 'منظمی', 2, 1, 0, '6509938316', '۱۱۱۳۶۵', '۱', '۱', NULL, '0170000000320019422000', 117, 11, 'تربت حیدریه', NULL, 11, 117, 'خراسان رضوی تربت حیدریه بلوار باهنر ۵۸/۴ پلاک ۱۸', NULL, 'avatar.png', 4, -1, NULL, '4198', '1734862886', '$2y$12$sPxvZ8hIxlFratzakzNfeu0HwT.6AfLpp15W6Csf1bOiYC08nl2Ei', '2025-02-01 13:42:24', NULL, 'zmYgFTVxPiqlaYakjZFSGKtQZpQlLXfryb1jSaGcbXvDlfmCLJy4q3N42Fya', 44, 1, 1, 1, 0, 1, 2, 1, NULL, '2025-02-01 17:13:20', '2025-02-01 13:43:20'),
(45, '09139958817', 'زینب', 'قاسمی رشک سفلائی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5224', '1737141239', '$2y$12$sbLJNbIjvsXMGJ0bKDFlIuPbvR5W2xjTTBA1XtQRjlA2w6DXeYmPy', '2025-01-17 15:42:32', NULL, 'I5CBl5r2nL3pxHNPAseQlfvUvEEB6UUGg4hrbsPSOd3kuX3MoJ6yLDvjRKfl', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-17 19:12:32', '2025-01-17 15:42:32'),
(46, '09151216037', 'علی جان', 'زحمتکار', 2, 1, 0, '0889315140', '101569', '139150197', '139311044817', NULL, '200170000000303964840007', 396, 11, 'مشهد', NULL, 11, 396, 'خراسان رضوی مشهد مقدس کوی سیدی بولوار شهید اصلانی 47 فرجی 4 پلاک 93', NULL, 'image94501735230824.jpg', 2, -1, NULL, '6784', '1734869118', '$2y$12$2kuwn.JHEi.u6YItaos8c.hJ0TghqK40R8uvx0A5.bKVjkWb8OJCO', '2025-02-01 14:58:37', NULL, 'hZEYkNxKKg2zVt58XDyIfL2pUpszKw03kmPYxnWFPnKORya7RaoYaGeHTiRL', 46, 1, 1, 1, 0, 1, 2, 1, NULL, '2025-02-01 18:31:00', '2025-02-01 15:01:00'),
(47, '09137404256', 'آرزو', 'رضایی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1937', '1734871335', '$2y$12$BrwHcjuG5c5Q//WuPpJbSuLF4XZ9hcjVjO6ho/1gVjnniuRisy4mq', '2024-12-22 09:10:20', NULL, 'nTvO6yaHfPV9UfFR6KhMmwx6pQUNff43Yt1f8PQdrgsPr4L6mKZSzu5cn65L', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2024-12-22 12:42:17', '2024-12-22 09:12:17'),
(48, '09186221966', 'محمدرضا', 'سعدی', 2, 1, 0, '3241317994', NULL, NULL, NULL, NULL, '970170000000207601169000', 339, 22, NULL, NULL, 22, 339, NULL, NULL, 'avatar.png', 4, -1, NULL, '5119', '1734873671', '$2y$12$uXpyBbt8kvNQo40k/LQm7ulM1zjXcNZO3vUTKkVAbbfQeoXUOLAsG', '2025-02-01 06:44:20', NULL, 'hUoOEgo1p4EDs5E69RHofHV4HJSuMx61fQ5ZGK7cne1qCDuIvJaOWnDb6K0r', 48, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-02-01 10:16:10', '2025-02-01 06:46:10'),
(49, '09185535765', 'آذر', 'عبدی پور', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3151', '1734873736', '$2y$12$rux.46phQtcunwLRvu5mqOuvv1k9MGfTwai7W9B8m5.E0xFHxYJTu', '2024-12-22 09:50:34', NULL, 'C2QyDmIVjCSr3fRKRuRX8GmY4jLMdY95LjTHb4l2Hv6SdMmfJe9ftLGU2GxH', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2024-12-22 13:24:50', '2024-12-22 09:54:50'),
(50, '09140565996', 'حلما', 'محمدی زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1371', '1734874516', '$2y$12$hesciaTp/pYEaVQnuJguI.K.oi0Yo0yF9F5Hy9uX5uPYIQHVVav1K', '2024-12-22 10:03:25', NULL, 'Q7d64Ln9ZX1qBC1T35a34OE4WFbNSfHr7zePEL9BLMkcbhtPcwCdu06LgGBc', NULL, 0, 0, 0, 0, 1, 2, 1, NULL, '2025-02-01 09:27:44', '2025-02-01 05:57:44'),
(51, '09151541539', 'مجید', 'شاکری', 2, 1, 0, '1050075706', '155060', '32056', '1050075706', '1050075706', '9.101700000003086e+23', 327, 19, 'قم', 'قم', 19, 327, 'آدرس: قم ، پردیسان ، خیابان شهیدان تقوی ، خیابان شهید مسلم قلی پور، مجتمع خوانساری، بلوک ۸ ، طبقه ۲،واحد ۷', '3749195968', 'image26381738421226.jpgimage46631738421372.JPG', 3, -1, NULL, '6147', '1734880190', '$2y$12$SzVZ4wrvHoVCvecz4023weZyI/Y.PaPQ7vYOqxbZzJ85AYBI9yr9a', '2024-12-22 11:38:01', NULL, 'jf2aVMK7QIpgUvXz62opPiLjYuiFJCJk6FzT3oDkgLLVCSmjClSjLsufTT8k', 51, 1, 1, 1, 1, 1, 2, 1, NULL, '2025-02-01 14:50:26', '2025-02-01 11:20:26'),
(52, '09195448600', 'جواد', 'خانقلی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1889', '1734881779', '$2y$12$1JQ8dU7aw9YSUKJtV2VXcu4J85Mn3nsmEIDgOgree4q0Y/vZ.3pKm', '2024-12-22 12:04:28', NULL, 'g4CiENXUy7XufweCVijLWM8Kg3tg2ThY52SKKqJlxQj1Z2mMRyk46tfNXDSh', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-12-22 15:36:18', '2024-12-22 15:36:18'),
(53, '09901443267', 'فریبا', 'شهریارپور', 2, 2, 0, '2994124610', '398052', NULL, NULL, NULL, '130170000000333454309004', 222, NULL, 'ریگان', 'میرآباد کناردشت', 21, 222, NULL, '۷۶۹۱۳۱۳۱۸۵', 'image34471738414662.jpg', 2, -1, NULL, '4009', '1734881835', '$2y$12$ba9QpJj9RRSs.2ShEFa3Zu2MdMFink2ZxIAC4eQWLbqBPQgw6wZCq', '2024-12-22 12:05:36', NULL, 'J8r0coKbcemAaT92IILLzCeZE5E5H5FRpHm0rcBaS2aJqh4Q1DY2JRt7Z8Ah', 53, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-02-01 12:57:47', '2025-02-01 09:27:47'),
(54, '09165529875', 'احمد', 'خدري', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7880', '1736305102', '$2y$12$PfTClj3FGRVOPg6bUgh0UO879APSWQi9nDGT1Y0upkSPjT.vxORja', '2025-01-07 23:26:35', NULL, '6EA7syZs1MJj2YX7PUcA4FksT5Ywi5jNfG47jlFkB5425fQFiBOZVZbepMce', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-08 02:56:35', '2025-01-07 23:26:35'),
(55, '09127508105', 'امیر', 'چهری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4437', '1736278225', '$2y$12$QyjL08uq82AROEj9UHEQIOIXS1vM3XyeXYF9mTTGgZDc2xggcLHNK', '2024-12-22 15:45:09', NULL, 'yLUDj3KchAkwwA4KiquKwrCG0Nt7ToEgNRkykOkizaiXIWNQfp52LNn6NQet', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-07 19:28:20', '2025-01-07 15:58:20'),
(56, '09148633368', 'امیر مهدی', 'گل آور', 2, 1, 0, '1451744900', '405716', '201145', NULL, NULL, '930170000000216918005007', 327, 19, 'قم', 'قم', 3, 20, 'قم خیابان انقلاب کوچه ۴۷', '3715848514', 'image86471735214799.jpgimage40821735214835.jpg', 2, -1, NULL, '2042', '1734925191', '$2y$12$KMtaUcgySstvRa8REMV7buX0SUkfe2aHOgUEdA5wvN2eVBbu0lPhq', '2024-12-23 00:08:08', NULL, '8IcMeGqCfOEVqq3e1lG8URCzI1AHahwL0Ebu1lhQMPgrRrphH6Y0gZHnXwPQ', 56, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-02-01 12:29:40', '2025-02-01 08:59:40'),
(57, '09156845468', 'فرهاد', 'تفضلی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1116', '1734926131', '$2y$12$4uajGK/WniuhVe7gCy8BI..OegNar/.xA9GDjOScIsNAAAeWjyOx6', '2024-12-23 00:23:42', NULL, 'yU5nMCOMCtkrDg7KDkEHF3q37pnrZ9EnIlh6NdvvxuAmBIDZB8OGRXfrU68l', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-01-08 06:31:33', '2025-01-08 03:01:33'),
(58, '09142572895', 'حامد', 'کریم زاد', 2, 1, 0, '1490286853', '51419', NULL, NULL, NULL, '840170000000108072917002', 115, 1, 'تبریز', NULL, NULL, 115, NULL, '5175763796', 'avatar.pngimage16411734958797.jpgimage92751738427289.jpg', 4, -1, NULL, '5710', '1734958545', '$2y$12$LvKvxdsv2s0ykA4XFGvi/ePTlSbibQrX/yo2NfCLFFuB5cAsuMp9W', '2025-02-01 12:55:31', NULL, 'o0TijwZn7QVfKX5y4fUcE2p13ZZxM50aUONmFfCqGJJNqsndxs0QaFShla6H', 58, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-02-01 16:28:13', '2025-02-01 12:58:13'),
(59, '09140418699', 'شیوا', 'جزینی زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3880', '1734975386', '$2y$12$1M0Yzdi41zNv3sA0DUsSYO6Q4phxT/sQojnja0UCbiLuoYACAqhra', '2024-12-23 14:04:49', NULL, 'XWrlaiZvDkjtFLbdw0nBlWpRztfWgWNSWMD7WjvUYxTNYVTGhbDqRWpaQcUs', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2024-12-23 17:35:21', '2024-12-23 14:05:21'),
(60, '09157407932', 'مسلم', 'طالبی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5445', '1734992788', '$2y$12$X2.rPqNi3UcpaaruqNO0NOafcBhzz2LtA7R8SDHw9wzm8zzqM1ibu', '2024-12-23 18:54:41', NULL, 'pHkkeQPitKsuIOF3ljPj91dhMczEJaL2A5QhMwssBKfGKvEuDAVEkN2OQ2c2', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2024-12-23 22:26:41', '2024-12-23 18:56:41'),
(61, '09362222222', 'محمد', 'کریمی', 2, 1, 0, '2343333333', NULL, '5353', NULL, NULL, '535353', 235, 5, 'پردیس', NULL, 4, 37, NULL, '3553636363', 'avatar.pngimage85231735129122.jpg', 3, -1, '0', '5273', '1735129095', '$2y$12$UBbmmlK38XFODG4ogih2aeI72EY0QMPk/uMiBAUzzpFzhgwUDNEIW', '2024-12-25 08:46:33', NULL, 'vHiTBCFootyaKf1NgtwGwdSvhLIxCGSADZpqs2pmo9T9MSMwjRTPsTh69Fwv', 2, 0, 1, 0, 0, 0, 1, 1, NULL, '2024-12-25 12:33:15', '2024-12-25 09:03:15'),
(62, '09361022252', 'محمد', 'کریمی', 2, 1, 0, '5566666666', NULL, NULL, NULL, NULL, '846464646466464', 101, 3, 'تست', NULL, 2, 89, 'تست', '6737733', 'avatar.png', 2, -1, NULL, '3137', '1735130279', '$2y$12$l6jkJ3VAz3TGlTtvsizqm.KeviOO2UprDhQ1Y55t70X56EL0JTz7i', '2024-12-25 09:06:11', NULL, 'IUX6Vw5kJVfxq5osftWm6f52HbJ9iXmHOTQkjHzB6AoaGVDnEUA8R0QvMqAk', 62, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-06 13:09:33', '2025-01-06 09:39:33'),
(63, '09360349647', 'حمدیه', 'نجفی', 2, 2, 0, '6169921145', '۲۸۳۱۷۶', '۶۲۹۱۲', NULL, NULL, '0344014898008', 54, 6, 'ایوان', NULL, 6, 54, 'ایلام ، ایوان،انتهای خیابان امیرکبیر،', '۶۹۴۱۱۱۳۷۰۵', 'avatar.png', 3, -1, NULL, '8667', '1735134241', '$2y$12$QSKqDL9SVftS4yyk8Egg5u5SniJFsJZctGxjEQFLItQSGCVcCECLu', '2025-02-01 16:55:26', NULL, 'GrSh07vxAomn6UxyTmgVOOS7EKiJ866H1EMv8LZg6QyezopvhHPRP8VsDeGJ', 63, 1, 1, 0, 0, 1, 2, 1, NULL, '2025-02-01 20:26:32', '2025-02-01 16:56:32'),
(64, '09118599711', 'مجید', 'خوشه چرخ', 2, 1, 0, '2080210785', '253227', '38034', NULL, NULL, '130170000000112380180000', 327, 19, 'قم', 'شهرک مهدیه', 27, 424, 'استان مازندران شهرستان نکا روستای دوقانلو کوچه عدالت 5', '4853195443', 'avatar.pngimage90811735212225.jpg', 3, 1, '5', '5659', '1737141767', '$2y$12$SZlh7zmJQWNSgkv1XqgwveX4uzP89PIIHTu8Qxz6K0hTDbld7DLVO', '2025-01-17 15:51:00', NULL, 'McUO93HNAUT4Fhoinvz8XSGoEP7ZWyQE7E3NSgSytPa4E2TUBEW9hIBq2W87', 64, 1, 1, 0, 0, 2, 2, 1, NULL, '2025-02-01 12:02:05', '2025-02-01 08:32:05'),
(65, '09179520132', 'محمدحسین', 'فتاحی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9156', '1735222478', '$2y$12$rOBGEPqliL0ILzHVl6LND.z/LtHiH2XbAp72ttV.sC97YiavsD.fa', '2024-12-26 10:42:54', NULL, 'fFs56Ei8nYsltvXriNKobkdtq82X7jPyHNvP8YiTJSUIWVcD3iZ94BbYkVWJ', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-12-26 14:12:54', '2024-12-26 14:12:54'),
(66, '09366923141', 'مینا', 'علی  صوفی جوان', 2, 2, 0, '4970012563', '360429', NULL, NULL, NULL, '750170000000110554703001', 13, 24, 'انبارلوم', NULL, 24, 13, 'گرگان،آق قلا،شهرانبارلوم،خ امام ،کوچه آذرخش،سمت چپ درب پنجم', '4939114446', 'image49551735280959.jpg', 2, 1, '5', '4339', '1735280784', '$2y$12$3Ecql0UPPT488AGKRyZI0uVTJ/ToDHeE.2VXYl/blQV2RMyiOZYX6', '2024-12-27 02:54:35', NULL, '5e2yqNfYwmyLQxiF7QR5L3DgzoqlHp2q0SYBrLP8pD30UoUMblTWlOg9ROLt', 11, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-02-02 04:03:41', '2025-02-02 00:33:41'),
(67, '09136682197', 'راضیه', 'عباسی', 2, 2, 0, '5420002698', '152951', NULL, NULL, NULL, '360170000000341898239003', 44, 21, NULL, 'بیاض', 21, 44, NULL, '7749135483', 'avatar.png', 2, -1, NULL, '1054', '1735325311', '$2y$12$I2ihh7/H8p0J3NXr1EBccORtsk.Hzhpe8oOTSwthg8kbuas2.VK9G', '2024-12-27 15:16:48', NULL, '0rbCNp5ciMOPWI1XkfgeOsSBuq4NTGwgvhDwdLRA1S8qV8xrNg25R7PNvBq8', 67, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-01-18 11:14:59', '2025-01-18 07:44:59'),
(68, '09157030867', 'غلامحسین', 'محمدزاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3710', '1735328556', '$2y$12$t3VsI7my7S9kQStnCwUvu.hUoztTVDa9uCZp7mAhAxP10J8xvJEl6', '2024-12-27 16:10:50', NULL, '1RXbfeIUdJ9RXn9HeCNXPbswXpvotsL7XwrFBXJ7noBwelAQnQHCMJ9k3nVB', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2024-12-27 19:48:05', '2024-12-27 16:18:05'),
(69, '09134546770', 'محمدحسن', 'زارع', 2, 1, 0, '4469731838', '73514', NULL, NULL, NULL, '490170000000303161210005', 409, 31, NULL, 'روستای عصمت آباد', 31, 409, 'استان یزد شهرستان مهریز روستای عصمت آباد کوچه قائم', '8981148491', 'image19441735355185.jpgimage73081735355256.jpg', 2, -1, NULL, '5309', '1735355039', '$2y$12$WzQkgstQn1.VidYYGbel7OfO55.cdddcwpWpfS96h4.wyLa7fBOHW', '2024-12-27 23:32:05', NULL, 'D6TZ4iPQtmjiDLPaVf8qSfJtLzP9wPmAN4XCCiacJ7gPPBictPwM2dhQefBd', 69, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-02-01 10:19:15', '2025-02-01 06:49:15'),
(70, '09380303731', 'نرگس', 'لکزایی', 2, 2, 0, '4979958036', '356889', NULL, NULL, NULL, '090170000000110840705003', 13, 24, 'آق قلا', 'انقلاب', 24, 13, 'استان گلستان شهرستان اق قلا بخش سد وشمگیر روستای انقلاب منزل مهرعلی  خواجه', '4939188575', 'avatar.png', 2, -1, NULL, '2438', '1735631593', '$2y$12$jigwaNy0e.RibUYxzw.QQ.4sBcBXSIy0EHhzkfAB.woP.qFv0BGZ6', '2024-12-31 04:21:25', NULL, 'cEfdanQQHw3WTZnRDwOqvYklC9tYUi0neMvlsCjESlQ18hobbXzHSJ4kDTAR', 70, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-01-15 05:30:22', '2025-01-15 02:00:22'),
(71, '09373696609', 'رقیه', 'لکزائی', 2, 2, 0, '4979818481', '366721', NULL, NULL, NULL, '940170000000356344259003', NULL, NULL, 'انبارالوم', 'امین آباد', 24, 13, 'استان گلستان شهرستان آق قلا شهرانبارالوم بخش وشمگیر روستای امین آباد کوچه امام خمینی یکم منزل عباس چشک رقیه لکزائی', '4939191114', 'avatar.pngimage72941735634025.jpg', 2, 1, '4', '7960', '1735631604', '$2y$12$EkvcjDSeNwsLTY/CtogVMOvT.jjPLhHD6Z1/7bmPx3L56EM8s4WvG', '2024-12-31 04:21:44', NULL, 'DOK1AhsrsKRJamP2tApbf4WpXNhQtSArO7UtDjnhKplIrxIPhfD7Y5MkN61P', 11, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-01-05 13:12:08', '2025-01-05 09:42:08'),
(72, '09012454885', 'کلثوم', 'امیری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1503', '1735631669', '$2y$12$pFOGRp7Y91kJ3MR6YrS/Y.00BUHdoGwXH2/sbR3linH0GYxRPAIGC', '2024-12-31 04:29:39', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-12-31 07:59:39', '2024-12-31 04:29:39'),
(73, '09026336534', 'فاطمه', 'چاری', 2, 2, 0, '4970191026', '335580', NULL, NULL, NULL, '370170000000110344585001', 13, 24, 'انبارالوم_ بخش وشمگیر', 'انقلاب', 24, 13, 'استان گلستان شهرستان آق قلا شهر انبارالوم بخش وشمگیر روستای انقلاب', '4939188337', 'avatar.png', 2, -1, NULL, '5080', '1735631911', '$2y$12$9ZkdZp7DV2.5/IfPgVR4HuVqER45DAuJohVlnUzHCUqFvHolP3eXi', '2024-12-31 04:26:44', NULL, 'dEYF62KvuKxmLDGdiJFVuFnukvMryjI6QubCiNp9rxL9OFP7Ux8Sf4EXcbzS', 73, 1, 0, 0, 0, 0, 0, 1, NULL, '2024-12-31 08:02:26', '2024-12-31 04:32:26'),
(74, '09379967236', 'علی', 'عالی زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8698', '1735733698', '$2y$12$tBDbyK8RQQXQiFTqFKw/3eYe/3XPdj2IX4vYJKcXr9BRR2oqbMJh2', '2025-01-01 08:43:34', NULL, 'WMzHAk2s8xcWNCTbCX2YQrj8fs9LZlIhBitcpIp6nfgCk9VzRiapGE63ApOh', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-01 12:13:34', '2025-01-01 12:13:34'),
(75, '09389177962', 'زهرا', 'اسمعیلی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7671', '1735939863', '$2y$12$TMJFzBr4uuM0wyn7fI3zIOU6XlmxREWHKUr5oa4efOwTk9hxoR.8K', '2025-01-03 17:59:58', NULL, 'WZtd3UPE5oTK74ESYJdaU7HzvP3sw8W08nUZV0QFGcCJjuAnYbljplWRGgQG', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-03 21:30:31', '2025-01-03 18:00:31'),
(76, '09130396918', 'علی', 'نوکاریزی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7457', '1735973631', '$2y$12$w5M2MhTKsZkD/zhTGCSY0O47lkET4aIIOalsbPMPgQzF3Nn.yRRQO', '2025-01-05 06:03:18', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, '2025-01-05 11:42:52', '2025-01-05 15:12:52', '2025-01-05 11:42:52'),
(77, '09130396918', 'علی', 'نوکاریزی', 2, 1, 0, '1050352361', '249440', NULL, '139711081146', NULL, '0338714425006', 332, 4, 'کاشان', NULL, 11, 432, 'کاشان .میدان جهاد .بلوار مادر', NULL, 'image12141735974716.jpg', 4, 1, '0', '3580', '1736143738', '$2y$12$7wdMESeFN.yF2En6cIRkNONP9xHwA0RT8kxMkI71wx420.JNRPNSW', '2025-01-06 02:37:17', NULL, 'PYgWhLOvjTcyJDml7bacPbGF6z4rmqPiZ7nFCuXtgz6pkaZWoS7RTcqhNHTb', 77, 1, 0, 1, 0, 1, 1, 1, NULL, '2025-01-08 10:52:07', '2025-01-08 07:22:07'),
(78, '09140661725', 'مرضیه', 'ناظمی خلیلوند', 2, 2, 0, '2900040663', '344626', NULL, NULL, NULL, '0349666320006', 423, 2, NULL, NULL, 2, 423, NULL, NULL, 'avatar.pngimage12451736270419.jpg', 2, -1, NULL, '4309', '1737144125', '$2y$12$td6iSWB7Reav.wln.XTtauzYHJMdRkAdslpkFkCoKG0QmZK./apoi', '2025-01-17 16:30:46', NULL, 'oa0zOMerWkhjMbBXQENOXixbTXRzaIawvZPDKMo3e22abB8WdxTeHiaQOkwk', 78, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-02-01 09:48:22', '2025-02-01 06:18:22'),
(79, '09147256036', 'مهدی', 'احسانی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6461', '1736237986', '$2y$12$pVYsNf4Q8M7ZgHTLiEoE7uYuvjuLENKJOP0sMIZU11XDqhUVwS5Im', '2025-01-07 04:48:05', NULL, 'L0Pa9aXvfJaq84h8fqPLO7hP22VvZ2YSmnYoaoj8sXy0CJF9cKwlKrDw4BEO', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-07 08:18:51', '2025-01-07 04:48:51'),
(80, '09100311933', 'جواد', 'موحدی فر', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5989', '1736238864', '$2y$12$78VGaXQtw/8bgsUne6gEAOPY4HA.SDuaFgcntEv9FMRmqIKNDnLUy', '2025-01-07 05:25:35', NULL, '7um9fsJhSNaxlDq4quUSfEQ5GThHG9zFw58N7tNUeqph4nufseVuGOohy9EX', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-01-08 07:31:27', '2025-01-08 04:01:27'),
(81, '09366911866', 'ایمان', 'شهریاری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7802', '1736239524', '$2y$12$jm0YkXWUegGk0iDQtA57Ae1QPS7xuEgNy/Dta5VKdIgUPTTCjAs7W', '2025-01-07 05:13:31', NULL, 've1nnUZd6K6kNRKytKQGlEAUXMq5o4BxUyJpc1ccyPaVlZ32IbuzS16qCwzy', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-01-09 08:48:37', '2025-01-09 05:18:37'),
(82, '09369839916', 'عباس', 'اسدی', 2, 1, 0, '0371342635', '281487', '200982', NULL, NULL, '710170000000345732796007', 327, 19, 'قم', NULL, 19, 327, NULL, NULL, 'image24431736335623.jpeg', 3, -1, NULL, '2670', '1736242676', '$2y$12$nk9qDjxFbLeRHKlZAVwU0Otbkm3Osp9qXz/hYUknhdYO2g1ZIUHSi', '2025-01-08 07:05:07', NULL, 'e1t4uyZwihDIbXGyPrjKclXqPZnU0EbEA4CKsliMdWUaJ84zmJdtJ3Os53qB', 82, 1, 1, 0, 0, 1, 0, 1, NULL, '2025-01-08 11:28:20', '2025-01-08 07:58:20'),
(83, '09945556581', 'سلمان', 'صادقی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5139', '1736249056', '$2y$12$jqgZJVcW1IaP2TarwNqws.TMVxIJ0gdYItonDvSExBYNSMStuKYP.', '2025-01-07 07:52:35', NULL, 'TLZ8YWWB1dWT9dhdE06HjsZ8ONpTwmEVvLhbMHaGtCnpjnk1sMNx28Ixbp90', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 11:22:35', '2025-01-07 11:22:35'),
(84, '09174584229', 'سیما', 'طاهریان', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7992', '1736266059', '$2y$12$Ztfgk9JBaoSWGe5azx55ZuIR.qTcyLxGPngTo/ws1xzIJJ/dP4BsG', '2025-01-07 12:35:48', NULL, 'eBCHApcnWN6k1nqbdrRnnQ1ck0e1t3ceqHxK1rhOH7SNTJopjTDGVoIF3TVD', NULL, 0, 0, 0, 0, 1, 2, 1, NULL, '2025-02-01 18:51:39', '2025-02-01 15:21:39'),
(85, '09196638264', 'نرگس', 'قربانی پور', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9172', '1736273492', '$2y$12$LpidmsKxxmIaHWHJt1VkKeoyBaH3lt5l5wGDSnuV5Dknapk82CpC6', '2025-01-07 14:39:45', NULL, 'J4S5rIYzlY7UCdNJgwYrFNbTPnYmTGTJxGUgMrj0snVN4knkV6omSeDntRCF', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 18:09:45', '2025-01-07 18:09:45'),
(86, '09186217494', 'پیمان', 'بدری', 2, 1, 0, '3240879174', NULL, NULL, NULL, NULL, '950170000000230831215006', 339, 22, NULL, NULL, 22, 339, NULL, NULL, 'avatar.png', 1, -1, NULL, '4504', '1736274330', '$2y$12$AVV4LEjcIvjcSnwcKipcgeuHNvathOiURIjEfQBYOAVDR6927MxOO', '2025-01-27 14:30:39', NULL, 'vMDfxC7m8pSYa2emc3ndZcQM4nSYfXUkSnMN57NnmxF7ZZiZSm1SXCYvZOPE', 86, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-27 18:07:49', '2025-01-27 14:37:49'),
(87, '09916505819', 'فاطمه', 'سعیدی دهاقانی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1700', '1736276628', '$2y$12$VdRjgmJV6Orelk0EjQDvXuOCB5F6N4XaKIutETSQGLyjKqcCG2m02', '2025-01-07 15:33:17', NULL, 'NgaCfryX7L93Ll1LsfJorFWUpvV5BROOBeSKnJXRpcPGvb9HVMlP8BD3nsnW', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 19:03:17', '2025-01-07 19:03:17'),
(88, '09331105463', 'امید', 'درحی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5476', '1736276768', '$2y$12$H7DSazSZwNFxSDuesVDqzOA9fi7R.vyw6eKmP9GI6kau41NQdQG5m', '2025-01-07 15:34:55', NULL, 'mbKRKREg9z4Ahic2As01O5oDARCSFb75PivZzzfeP3iDoApX1Aka32f33xbS', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-08 06:27:35', '2025-01-08 02:57:35'),
(89, '09127487179', 'یحیی', 'حسام', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3481', '1736276886', '$2y$12$jwtTVvRJUQ1MX4CacFqrRO.exvvYhGnBtpPaCA/nYrCUWg26418/K', '2025-01-07 15:36:38', NULL, 'Mcpr3hDHjioOW8wrrjpulFMeR3yhs6dOvTbW1QDHomTKTA8fMqxFxdnm5NKr', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-01-08 05:00:33', '2025-01-08 01:30:33'),
(90, '09176830793', 'معصومه', 'عباسی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2836', '1736276996', '$2y$12$DhHEtIOZkmRXaxccgo4/v.Xd1H.rpD8Dt6NGsYedKGX5agEKaOvRO', '2025-01-07 15:38:11', NULL, 'RRO95jL7z5db7JkCxBGToUTLEQKi77BIpTT7izLRO8ZVRZDAP72QKIg7vXfN', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-07 19:39:22', '2025-01-07 16:09:22'),
(91, '09191486248', 'روح الله', 'فدوی زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7664', '1736277136', '$2y$12$yBsM4mToatsBoJsYWs/imuvb.A4i3uLAdrjOxrJ1pd44Cqw0DcV1S', '2025-01-07 15:41:56', NULL, 'TdZhQxBzZ1mwcaF6yAf5UE44yQjXMeCqSc7uMBqbiKE2qzT7QVbphqUgPE6J', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 19:11:56', '2025-01-07 19:11:56'),
(92, '09385542341', 'اصغر', 'زارع', 2, 1, 0, '0384819060', '۶۰۵۳۹', NULL, NULL, NULL, '500170000000302932645007', 300, 30, 'فامنین', 'زرقان   خوش اباد', 30, 300, NULL, '۶۵۶۱۱۵۷۹۴۶', 'avatar.pngimage68801736277838.jpg', 3, -1, NULL, '6286', '1736277286', '$2y$12$JPDZyu.xPwNofw6XfzLjK.4MDdwTtZs2gT4wi.LYWpvlw3bT2ffH.', '2025-01-07 15:43:05', NULL, 'CErE0bXWvEvA0BQeCgnHleOhgTDbiT7YVMcMTIeSFsFH0nIPT3uUCElQXNyu', 92, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-01-08 05:02:48', '2025-01-08 01:32:48'),
(93, '09364484997', 'محمد', 'احمدی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9909', '1736277356', '$2y$12$Gnp24N9CzlpYP.ogKofhOOulYEQL8IEwHHz3KYUJ6E1ZCxdSne90K', '2025-01-07 15:44:09', NULL, 'BrbD7IAmdu57YyA7sMPKX7jKrt0qjq89bRyQwEvoa0Y18m6wk4GPIoEOtDXC', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-08 05:06:31', '2025-01-08 01:36:31'),
(94, '09125529068', 'علی', 'شهروزفر', 2, 1, 0, '2909514102', '1263', '13707', NULL, NULL, '050170000000328534464007', 327, 19, 'قم', NULL, 2, 423, 'قم ۴۵متری صدوق سی متری قائم کوچه شماره  ۵ چهارراه دوم دست چپ کوچه شهیدمعماریان', '۵۷۶۱۷۴۴۷۵۱', 'image4701736525552.jpg', 3, -1, NULL, '6003', '1736277602', '$2y$12$7YUdrveIz/GWUSU/jdrH2OmRsoH.IoOPikloIwN2aNOeSRuyeABUa', '2025-02-01 07:00:10', NULL, NULL, 94, 1, 1, 0, 0, 1, 2, 1, NULL, '2025-02-01 10:31:39', '2025-02-01 07:01:39'),
(95, '09182970838', 'مهشید', 'افراسیابی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9358', '1736278340', '$2y$12$KutLHtAHBvFV/JBvlDg6QeiZW8v5ZBMpKxGj4tIGdm94OUYoXZR9C', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 19:30:15', '2025-01-07 16:00:15'),
(96, '09191602034', 'وحيد', 'اوتادي', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9844', '1736278538', '$2y$12$pYfziw6uik4OnMqXXi1V4.AB165NRtnczwhBUcLXkkSa/lBxp7JU2', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 19:33:33', '2025-01-07 16:03:33'),
(97, '09193591448', 'محمد حسین', 'فلاح یخدانی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3172', '1736279362', '$2y$12$W0J4MII0/v.4F31s3IXrI.Db8kUsr7t2jn/Q4Hkvb9C90pSVf1zeO', '2025-01-07 16:21:06', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-08 05:15:10', '2025-01-08 01:45:10'),
(98, '09916661401', 'مرضیه', 'سنچولی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9564', '1736279457', '$2y$12$aCSn.97BPAgMA8xN0VRAwO/fvDzgFkcbHo7i7PHOf31eH/OaQLQUm', '2025-01-07 16:19:14', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 19:49:14', '2025-01-07 16:19:14'),
(99, '09380383654', 'زهرا', 'سوار', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6026', '1736279574', '$2y$12$Vt9HLAeN.yOXZPGHAnoI0uBK7flHkJm0LMZNkF.bvstFKTAJzFWTy', '2025-01-07 16:21:53', NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-07 19:53:31', '2025-01-07 16:23:31'),
(100, '09159211971', 'سید خلیل الله', 'روحانی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9786', '1736279680', '$2y$12$OhIWNWJJar2xFaD4K1Y9ZuS8f1/ZGUH2YL0zIIg1lNzGi/EzrnFx2', '2025-01-07 16:26:07', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 19:56:07', '2025-01-07 16:26:07'),
(101, '09183123831', 'علی', 'سیاح شعاع', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7994', '1736280058', '$2y$12$X2M/3Cil5LWU236dVxDFDuuP6GobpzGKDt37aYw7MSn6C3PKaL65G', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 19:58:53', '2025-01-07 16:28:53'),
(102, '09104646733', 'محمد حسین', 'طالبی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4677', '1736280194', '$2y$12$LueNNBExUBoaGTjL9.HVg.yYAFzP/RqkkrgyVUmmrPva7M3cgBXRm', '2025-02-01 07:28:22', NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 10:58:54', '2025-02-01 07:28:54'),
(103, '09119763086', 'حسن', 'علوی پور', 2, 1, 0, '4888695717', NULL, NULL, NULL, NULL, '460170000000223773615004', 417, 24, NULL, NULL, 24, 417, 'استان گلستان شهرستان مینودشت خیابان سید جمال الدین کوچه شهید چشمکی پلاک ۷', '4981666156', 'avatar.pngimage4121737141835.jpg', 2, -1, NULL, '6583', '1736280412', '$2y$12$/RPS6ERDS4Lxz5jc0OgG3OKZERadhkhRMXwu1eKZBsVqinNeLAVC.', '2025-02-01 11:09:07', NULL, NULL, 103, 0, 0, 0, 0, 1, 2, 1, NULL, '2025-02-01 14:41:40', '2025-02-01 11:11:40'),
(104, '09112547184', 'اکرم', 'فرجی ملادهی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5059', '1736280617', '$2y$12$hu.scf7H8RZ/uWb./TtsbuLwgYGL4ZuZqONkUvk/CNEzLbVn/E6n.', '2025-01-07 16:38:40', NULL, '8aKD8cD7ZLrCiwDsE8K2uAJhb0u0LBbnJbXkQkf7eotJ949J675UbwSekzJi', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-08 05:31:00', '2025-01-08 02:01:00'),
(105, '09162667613', 'زهرا', 'کیومرثی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2468', '1736280637', '$2y$12$/FrYsMasz9uF7Mj/xUD06e1SoqaAQ2EJmNngYWWATADg7RnsjeXii', '2025-01-07 16:39:38', NULL, 'vJLiGDHLr7dVgO44cD18r7cq470CUcoCyo52FXXx8ftmYxwY6uOeYLx2K52F', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-01-08 05:18:36', '2025-01-08 01:48:36'),
(106, '09145636374', 'سمیرا', 'اسدپور', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2265', '1736280682', '$2y$12$W2FftZoHLt8fHk/WMZa83utWihB4YrnELCwWZoONHLy/AcIM8RV6S', '2025-01-07 16:39:30', NULL, '0AxSeaaNo6NPXEZM7qUAot6SV4mbjcx3Q1BdpAJLRAYWC6TWaa9R5h8hBCx3', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 20:09:30', '2025-01-07 20:09:30'),
(107, '09102809864', 'مهدی', 'بی باک', 2, 1, 0, '2572037912', '65059', '139429094', NULL, NULL, '760170000000205870087008', 327, 19, 'قم', 'قم', 19, 327, 'قم  پردیسان خ  نجات خواه مجتمع سیدمهدی روحانی بلوک ۲واحد۱۲', '‏‪۳۷۱۱۳۸۶۹۹۸‬‏', 'avatar.png', 4, -1, NULL, '7437', '1736280727', '$2y$12$5vshCtIWwDCbck6wmUsye.X/EGFulzdVoU/.zsZ2wWFsFf2jhWob6', '2025-01-07 16:40:23', NULL, 'ktgkvuppvgKfnZcanrRUyCT6s2QvFJgp12fC7bzDxXlzsYTuodLy3Lodk3Oy', 107, 1, 1, 0, 0, 1, 0, 1, NULL, '2025-01-08 05:33:17', '2025-01-08 02:03:17'),
(108, '09118747132', 'احمد', 'طوسی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8604', '1736280810', '$2y$12$FOPV7GB/HwqMZ3j8.7swlOvYk7oi/O7Qyb3HAsjn3fm8I0497x8qi', '2025-01-07 16:41:35', NULL, '1LcMdEYJhMV0aNHCMrLsM6gVs7OUJOme5Umm5eh3FZMC16U6hRKqS91VDTOY', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-08 05:22:07', '2025-01-08 01:52:07'),
(109, '09133634158', 'عباس', 'حیدریان مقدم', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1016', '1736280820', '$2y$12$a3Bsr6Z3bKchKj/HCK8k1uxKzglJEXNvOhvDKr7BKSmThmRD4OWQq', '2025-01-07 16:41:48', NULL, 'gENHCfT96sUB87bRaMg4LNOfm8jIy9NRpSZq0RnXIlDwcJBehy38VMik14Cl', NULL, 0, 0, 0, 0, 0, 2, 1, NULL, '2025-02-01 16:36:56', '2025-02-01 13:06:56'),
(110, '09142135406', 'فاطمه', 'میرقاتی خویی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8275', '1736280836', '$2y$12$x..9hwCfj4uMziHqqdleReABxx9o6YPNqbgS0MFe/Ul0LQQDa8klG', '2025-01-07 16:42:41', NULL, 'NKj61QJq9uaDbELnZnhI7F4xXXH1ZY4OdYy28Vuy5QAtrfYhwM85mwOLAyz1', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-01-08 05:26:50', '2025-01-08 01:56:50'),
(111, '09100997440', 'هدا', 'چراغی', 2, 2, 0, '4940018652', NULL, NULL, NULL, NULL, '0357908502000', 176, 22, 'کرندغرب', 'گاودانه خور', 22, 176, NULL, '۶۷۶۵۱۸۱۳۷۸', 'image39891736281946.jpg', 2, -1, NULL, '9444', '1736280872', '$2y$12$Bt/UUUjpRzgvIgWQIV69Ne8keIKQiJSuLmYtIN4eyYIfe27Q3r1jy', '2025-01-07 16:42:40', NULL, 'hy0n7FyOGvUg0qrVso3lSvHown3wkvucIhDXXQ7O4k53wx01pH32XNtnd9Sk', 111, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-01-08 05:32:07', '2025-01-08 02:02:07');
INSERT INTO `users` (`id`, `mobile`, `firstname`, `lastname`, `role_id`, `gender_id`, `is_not_citizen`, `codemeli`, `khadamat_code`, `tablighat_office_code`, `tablighat_organization_code`, `ovghaf_code`, `bank_account_number`, `city_id`, `province_id`, `city`, `village`, `native_province_id`, `native_city_id`, `address`, `postal_code`, `photo`, `education_id`, `status_id`, `level_id`, `confirm_code`, `confirm_time`, `password`, `last_login`, `creator_id`, `remember_token`, `editor_id`, `has_khadamat_code`, `has_tablighat_office_code`, `has_tablighat_organization_code`, `has_ovghaf_code`, `report_count`, `agree_count`, `work_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(112, '09134735684', 'فاطمه', 'باقری کلایه', 2, 2, 0, '0381766748', '۱۸۰۶۰۹', NULL, '۰۳۸۱۷۶۶۷۴۸', NULL, '322121217007', 332, 4, 'کاشان', NULL, 4, 332, 'اصفهان کاشان خ امیر کبیر انارستان ۴۰', NULL, 'avatar.png', 3, -1, NULL, '1596', '1736281373', '$2y$12$uCvCZTEY5fW..l4FY0qYx.6vtkGQKYZyMjIYhTxzPljEdYKoy8Ce2', '2025-01-07 16:52:25', NULL, 'JTuaMtC4tXJ8b1DcFfLiv2ya6GN00IJUCtpbOGShd09878cinzq2r5MpkSgQ', 112, 1, 0, 1, 0, 1, 1, 1, NULL, '2025-01-08 06:12:14', '2025-01-08 02:42:14'),
(113, '09123530993', 'محمدرضا', 'شجاعی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9902', '1736281385', '$2y$12$6UtrmOE55oQStK2P0Nb42eA0qFqeAerIm0ERs0/XTogXyb5W6C7AC', '2025-01-07 16:51:21', NULL, 'aT8sSBP7uzvRKtUTZ34VYflrRDkzhr3WDKKsc0fgoPTBhs6brc5oci11g68w', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 20:21:21', '2025-01-07 20:21:21'),
(114, '09127493112', 'مهدی', 'آقازاده', 2, 1, 0, '2668815924', '۵۶۷۸۸', '۲۲۰۵۴', NULL, NULL, '780170000000102494997003', 327, NULL, 'قم', NULL, 25, 380, 'قم پردیسان خیابان شهیدحامدنیامجتمع شهیدسعیدی بلوک ۶واحد۷', NULL, 'image91791738408067.jpg', 4, -1, NULL, '1374', '1736282098', '$2y$12$SUCQ0SynwVxkHF9jgsPwp.CU6wVJuPpf6ee8COEbQ3dn8FQAZiZ/2', '2025-01-07 17:03:28', NULL, 'q77srAf6C4ADQ9C0ARxO86i7AW8dhrCfiQnsDom62oi8vcThO5mDpU9pQKEM', 114, 1, 1, 0, 0, 0, 2, 1, NULL, '2025-02-01 11:08:03', '2025-02-01 07:38:03'),
(115, '09931246238', 'فریبا', 'صمدی انصار', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5122', '1736283087', '$2y$12$PyWmq0Olbhfxn5khtLMHueiowdJHkr3c5jDnnxd6utrMmDVx2w4k.', '2025-01-07 17:19:46', NULL, '3oBrkJSFHjWwrTU1lqeDdAVC8mM0IcZawO5ORRpYuJZVgD2mjfPEaHSQxeDp', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 20:49:46', '2025-01-07 20:49:46'),
(116, '09179300744', 'عقیل', 'شفیعی', 2, 1, 0, '2491588099', '66004', NULL, '139411033308', NULL, '550170000000306424684008', 430, 17, 'نی ریز', NULL, 17, 430, 'نی ریز خ امام خمینی ره \nکوچه امام‌زادگان ع', '7491848468', 'avatar.pngimage84781736283642.png', 3, -1, NULL, '5197', '1736283282', '$2y$12$Za2p2BiFUBbNOUGtMU9mc.4vgx1QIdta98UpWo5oAGngRz2r69hqa', '2025-01-07 17:22:54', NULL, '4OkRg1Fx2aa2eNOs59zrpOEN84lapP2hJWrRn3otvZM7u7jybOX3DDIytvkr', 116, 1, 0, 1, 0, 0, 0, 1, NULL, '2025-01-07 21:02:59', '2025-01-07 17:32:59'),
(117, '09139873078', 'مهدی', 'میرزایی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4354', '1736284051', '$2y$12$U/pIERoFvULMLPH1miPZ8uPLdjbWejycrCcOf1fv1YeILTiAEY/em', '2025-01-07 17:35:57', NULL, 'xgzOksMlXaBIEK4OKzuCuGZAtDHEkdOIWq9HrxFiNztZqPi3rNJQwtr6eWgo', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-01-08 06:23:50', '2025-01-08 02:53:50'),
(118, '09186761800', 'سید محمد علی', 'ملیحی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7855', '1736284326', '$2y$12$s.bCEWPbUqSk76ZfjUtvYeW4Rq5mtcpbLD1t1KjuZucGbcT8daCJ.', '2025-01-07 17:40:33', NULL, 'BzeQfcFF21f3B7F1lo8TugIrGcoqubDdAnotLkdS28VeFrykFGTitfWFoHwb', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 21:10:33', '2025-01-07 21:10:33'),
(119, '09192514957', 'علی', 'صادقی نیا', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7127', '1736284780', '$2y$12$KP7IP48ymEeASzYqAQyBsOcTT55yuCssEivPe1pSetjnCnc4LG1yu', '2025-01-07 17:48:01', NULL, '3bRmzSzWBCPnuaRsOt0A1rhE5Pcon62Oq8FCZLe05yNZFXGzv0qkQmeuPKwa', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 21:18:01', '2025-01-07 21:18:01'),
(120, '09175461593', 'فاطمه', 'سالاری', 2, 2, 0, '4699473946', '۳۹۵۳۲۵', NULL, NULL, NULL, '330170000000340057530003', 216, 29, 'دهبارز', 'خ شهید دستغیب', 29, 216, 'هرمزگان.رودان.دهبارز .خ شهید دستغیب', '۷۹۹۱۹۹۴۳۱۵', 'avatar.pngimage70251738517317.heic', 2, -1, NULL, '7870', '1736284897', '$2y$12$zIiBYFgZQS9leRYvAkehAeDoB3jg4GxBuJfu2Yvj3cIv8lJqRoD/O', '2025-01-07 17:51:19', NULL, '18wApqfUHL4oBtpSOcylZgIowMXcfCgYxcBQHC68tjXChrug7CUc2Fob7ku5', 120, 1, 0, 0, 0, 0, 2, 1, NULL, '2025-02-02 17:29:17', '2025-02-02 13:59:17'),
(121, '09171682412', 'ابراهیم', 'جعفری  خوشن آبادی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7858', '1736286494', '$2y$12$xieJXdRx6b0dlGDY8DpyJuyLZ24PmuZdsH3WVWCHk1OwyoClzVZKu', '2025-01-07 18:16:38', NULL, 'qE3WRGEeQVaXpNhxEqpIPpxrArrSVk5QNoYTDyqvljxMnkRbO5vrgilazG7T', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-07 21:48:20', '2025-01-07 18:18:20'),
(122, '09178210145', 'آمنه', 'شیردل', 2, 2, 0, '5479918435', '414752', NULL, NULL, NULL, '870170000000218886543000', 375, 17, 'اشکنان', NULL, 17, 375, 'اشکنان . خیابان سردار سلیمانی کوچه معراج منزل سید حسین سخن سنج', '7439114477', 'avatar.png', 2, -1, NULL, '1538', '1736298943', '$2y$12$KWXy3cTf3ohRipKEj7JNYeBS75h9f3OcCYPBG1JpPFP9mkf7n3p/K', '2025-01-07 21:43:59', NULL, 'XYsROV3qbjldW8rSZbRKMAOPNMN2GMPcf1fYt1xPGlWI97tFEUHbddQZB4Mq', 122, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-02-01 13:41:05', '2025-02-01 10:11:05'),
(123, '09139302762', 'مرتضی', 'یوسفان', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6923', '1736301660', '$2y$12$d.igza7H0dxFOD7k7EdF4.S0IFSOb3vxaqvAi/PSVpLFbkO2az.5m', '2025-01-08 01:24:21', NULL, 'ocOh0m97cQCAysyKPoHivqMHTaY5ygBlbz5DznvvypoqPDWCGSMPFhvwH4Lx', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-01-08 06:35:01', '2025-01-08 03:05:01'),
(124, '09188193029', 'ندا', 'سعادتی صفا', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9895', '1736307729', '$2y$12$4h.mkTg7Gtf/o2tTzgOfGOWxAtHI6CrD2SZwZloxbMp7I.AKDFWYi', '2025-01-08 00:10:28', NULL, '04NHCC31f9AZniT6cHlAOrBpJOd1Q4SejpBpK0ztlyBb9Kbvwq6gd9T02OHh', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-08 06:32:09', '2025-01-08 03:02:09'),
(125, '09918535249', 'علی', 'عاشوری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7032', '1736309060', '$2y$12$69Y525mgvoolSAYtdf7m0eJaWzm7273mhQyMe4m7ltNbwpVxGOtNS', '2025-01-08 00:32:37', NULL, '1gm9sg7PFmWhgOGrB3jW8pbpcRo5ubzTc4y9JmYsp57TtIADfxk65GDFYDyU', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-08 04:04:08', '2025-01-08 00:34:08'),
(126, '09179828078', 'نرگس', 'قریشی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5144', '1736309539', '$2y$12$JPns3.oJelQZrPcWe6pODeK8f9qWkUKovUZxeZpKT9aUbJYsm6422', '2025-01-08 00:41:17', NULL, 'r8W687tA4DMIJ9trjgfEA4SIL6LgVu8yrUcQ6GRP4RC5GCiJy5EoPfLg8DOH', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-08 04:11:17', '2025-01-08 00:41:17'),
(127, '09138971315', 'حمید', 'کارگر', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6925', '1736309997', '$2y$12$y/9.9kLFs/kEOkZbXpOYBO4AiDLjaQ5WfIgseoqz6nQIN9gjc8B0u', '2025-01-08 00:48:09', NULL, 'jgOMM4f4wWIdFkS23w8rFz3MBiRkU6a1NaF0re24zHiQRBNeiLVH22snfD4K', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-08 06:33:56', '2025-01-08 03:03:56'),
(128, '09357334517', 'محسن', 'کوهستانی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7853', '1736311430', '$2y$12$tphZWxTvagyVruLnayvMb.27k/aFTE7o6.ObiyYdyt/sgyvDScjq6', '2025-01-08 01:12:45', NULL, 'pOeL3lt4dCf4yi6GX81zFbaqIimH8QkPtR5gHpFiqxpYTCdtRaWLqjhQmgLJ', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-03 05:27:18', '2025-02-03 01:57:18'),
(129, '09189514421', 'حسین', 'خزائی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9611', '1738428221', '$2y$12$qqyacJBTETtAM94Zkc4c8ef5TRc/rq8ISoE2Yn.plZynfdVDIVKde', '2025-02-01 13:11:52', NULL, '7sofesa19lMvOxmu7PFqnJh40uRAwCkwhj6CtRKkgHY45e7rlz1jOhzUXyG1', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 16:43:26', '2025-02-01 13:13:26'),
(130, '09194510873', 'الهیار', 'محسنی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7326', '1736312550', '$2y$12$7Sh83SlZkeaC0eyYssnSsOpe5D2iGfX4f5fE2mvDjjXHipaBbeZOe', '2025-01-08 01:30:43', NULL, 'CrzPjFNzZSBZQA3TzaOl63J1oa6uG1WyZwaDeeaMSP7qeGQwEC1XKOBsMSZj', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-08 05:00:43', '2025-01-08 05:00:43'),
(131, '09153216541', 'سید محمد', 'ناجی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8765', '1736313106', '$2y$12$uLSYjdAVIdde0RXWsWwMcubgFBpr2KB1AyHLJq320KwxdOtSEK90S', '2025-01-08 01:39:56', NULL, 'AxQxTuQ93XrCKB2ZNVXKaEPv3i2lhEETPtbLZxYdjnjU6sQ94zrVoqDhxHVl', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-08 05:09:56', '2025-01-08 05:09:56'),
(132, '09352659924', 'محمد', 'کیهانی', 2, 1, 0, '0640719279', '427133', NULL, NULL, NULL, '362221852003', 396, 11, NULL, NULL, 10, 99, 'سیدی‌.خیابان قائم.قآیم ۳۳.پلاک ۱۷', NULL, 'avatar.png', 2, -1, NULL, '8974', '1736313978', '$2y$12$ehxKxdO8Zi/IXPsEm9AsiumW9RQtD21FS3IHSauSlmR0648MgTfyi', '2025-01-08 01:54:25', NULL, '1wAYYJT7ustgxdV9qDB1OwNflQqFgBbetHz3EB2EUKhgXeSH8iCmY5PIx8na', 132, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-01-17 19:31:01', '2025-01-17 16:01:01'),
(133, '09151672206', 'محمد هادی', 'امیری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4330', '1736318211', '$2y$12$44DsUn4dJBGwLZOO1sCGT.l515Bl4NZMssyayBxHuMpV70uahBts6', '2025-01-08 03:05:27', NULL, 'JQgZxdu7UrAmSzTOnKC3eCV6UNXIEe7gLtPMU1gWJjrA6L2s2tKcq7VhP9KH', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-08 06:36:20', '2025-01-08 03:06:20'),
(134, '09366201700', 'عباس', 'خدری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1448', '1736319975', '$2y$12$Cbe5dpiXDuT1RuglEDx0l.vCDAp6kVzDyT77ZIyGRxf32/2Q3Oxcy', '2025-01-08 03:34:25', NULL, '8gBvQobL1wYShZoSGolVV590gGfUID7Vb8Jaro5TZtHL9IWAtXlk5Y2xlQmc', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-01-09 08:50:11', '2025-01-09 05:20:11'),
(135, '09139575423', 'صغری', 'رازنهان', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6574', '1736343224', '$2y$12$Xa6qljAZ4Oliu4GDy1uVm.Q.hWASmTkZLhDCE2rcBwOSKi.xtPbhK', '2025-01-08 10:02:01', NULL, 'TCEx7f0xVywwnYmbd8erDlykd1J021qWstJEjls2SM3RGZEQVWBB1edac1W4', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-09 08:50:55', '2025-01-09 05:20:55'),
(136, '09374129940', 'روح الله', 'حیدری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7891', '1736357164', '$2y$12$UcSuaoEGd4O/OV/bLCGxIeTFmJPfT2U.j7ecW1gWfQj2GXyY8kypq', '2025-01-08 14:00:54', NULL, 'NLYeUqXB2T4v0tDu9WKsggA9cV7MogfjlpwuaFlWRlfhZzLxCLO6hUmSqc5d', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-09 08:52:07', '2025-01-09 05:22:07'),
(137, '09108417355', 'الهه', 'قهرمانیان', 2, 2, 0, '0016194764', '404907', NULL, NULL, NULL, '670620000000201335343001', 336, 5, NULL, NULL, 8, 126, 'کرج عظیمیه میدان اسبی بلوار استقلال شمالی انتهای کوچه الهام شهید مختاری پلاک 36 واحد 8', NULL, 'avatar.png', 2, -1, NULL, '3650', '1736361602', '$2y$12$IbtR8OzfPf53SBuGNKGnuuY66siCLAl4kWH6LnbxK6qXDPRnpd9RO', '2025-01-18 10:01:34', NULL, '2XtlQHvqoM2HM09guDALA5Y9uSCQnjsuaEeOlwTPSjJARdfn6IBUcHr9SO73', 137, 1, 0, 0, 0, 1, 0, 1, NULL, '2025-01-18 13:31:34', '2025-01-18 10:01:34'),
(138, '09187248414', 'محمد', 'عزیزی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8128', '1736403110', '$2y$12$GIL79/zVJpj3Xx9FdCcAMO9/GKEFUPhHmc2DxH4kMn3cUIlJ2/L/a', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-09 06:09:45', '2025-01-09 02:39:45'),
(139, '09188124541', 'مریم', 'پلمه', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5354', '1736490351', '$2y$12$/8bDIoQXHmKdibdIKgvIF.OmQDsSFj8EOedzPAJBf4yO8UJQbHf5a', '2025-01-10 02:53:58', NULL, 'PuWiCW5kW1fOtx1zvPjQAH1cjqKtYneiYfYPNH5GAJ3aIa4gQgJ4l1TYRCIC', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-12 08:02:36', '2025-01-12 04:32:36'),
(140, '09019421609', 'امین', 'نواصری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8248', '1736495821', '$2y$12$QeD7ZxJZ2By3nol4ndSi0uTsjunCHuQ.vNuy9br/FEXPqH1hKuNcK', '2025-01-10 04:25:09', NULL, 'hyW1FWFyITISc6OCAvOykVYWgDnGQtZUqzbOFU4izQ0sgLsquipl23QAlqkU', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-10 07:55:56', '2025-01-10 04:25:56'),
(141, '09184105607', 'میترا', 'حلیمی مبصر', 2, 2, 0, '3980155628', '341571', '3980155625', '3980155625', NULL, '480170000000351670419009', NULL, 30, 'کبودراهنگ', 'نه', 30, 335, 'کبودراهنگ .پایگاه هوایی شهید نوژه', '6551163135', 'image28191736615322.jpg', 2, -1, NULL, '4397', '1736614633', '$2y$12$Q9ieR.wfxRAnI3fxas8eFet.vrvul0XjOObTasfXyafORjWWH/huK', '2025-01-11 13:25:21', NULL, 'wdpWIAxCjf4jfJSkotAROhuM7QTboaIsRdUUXFlX06UnCEh1i388inwntbpg', 141, 1, 1, 1, 0, 1, 1, 1, NULL, '2025-01-15 18:13:04', '2025-01-15 14:43:04'),
(142, '09360911696', 'مهدی', 'امیری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9587', '1736764995', '$2y$12$ZGyn8JKjGfAPfzc9OFLcwOA5qd5lgetkeHXMtAzs4GEYnCTYCrIZO', '2025-01-13 07:11:25', NULL, 'KujbjFBSe1kmNJ0WmWt4SwCjHGLqpzGIU2XvhPWd9cdbFkaDrc7cXWmtsHOh', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-13 10:45:35', '2025-01-13 07:15:35'),
(143, '09371108884', 'ملیحه', 'رموک', 2, 2, 0, '0053699017', '۳۰۱۴۱۷', '272052', NULL, NULL, '0170000000343468970001', 304, 5, 'فردیس', 'فردیس', 5, 304, 'فردیس فلکه چهارم خیابان چهلم شرقی مدرسه علمیه تخصصی کوثر', '3175975648', 'image93741737140212.jpg', 2, -1, NULL, '2479', '1737139599', '$2y$12$vhcNWq/VyFlnGqhevAlKhOCz/NBMHMZl7dyjAQk.1l5SGhLtngYIq', '2025-01-17 15:14:46', NULL, 'UCazfe8gcboKXp544gsU8gl3i0L1Zn3PpnLgDuLoYHfopbUbhFxDfYfdMz2X', 143, 1, 1, 0, 0, 0, 0, 1, NULL, '2025-01-17 18:56:56', '2025-01-17 15:26:56'),
(144, '09149816172', 'محمد', 'جوانمرد', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1629', '1737139644', '$2y$12$vgZ.U.vuOACT10uolnYp2OkKIQGgq9Xs0.3yYXP/6LpGVNTkcpP5.', '2025-01-17 15:15:30', NULL, 'p47MvBHnr0MZif6zukx2XUXYDrMVoeUEA3EbyNx4mRDCiw3bED9rXoZfO1ZC', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 18:45:30', '2025-01-17 18:45:30'),
(145, '09037323440', 'فاطمه', 'آقاویردی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5808', '1737139697', '$2y$12$sbdz7XadtL416p7k.rShxOU5pj7RJOsU/qpKpwBuq1havodovrz8K', '2025-01-17 15:16:50', NULL, 'Qq5uy3rG5CG13ZoY2HO7QyxWCzaQpGIEQOzCjuJQGsY5dG7cA4QPGg0Qu5fM', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 18:46:50', '2025-01-17 18:46:50'),
(146, '09178813118', 'بتول', 'زارعی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5592', '1737139925', '$2y$12$ienwtAM2Kdi5r3vFNFLcvuS.ld8p5Ab0xiyEmxij/q7BUp.q0H7nC', '2025-01-17 15:20:25', NULL, 'IZkblq0bIxN1Fyr2kijk7yRId06G2wKHfNeK21iSq5Lji24OeMLEK676lctk', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 11:17:47', '2025-02-01 07:47:47'),
(147, '09106125818', 'یاسر', 'عبدی وند', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9410', '1737140174', '$2y$12$OqzLOL1izKr4bm6KrCtWseQAoG57VQ6XDLCZCUWZtPx2A3JrJ0o6m', '2025-01-17 15:24:39', NULL, 'g3mtzJiDvzHiDH2uRCckLzeuYkAvzkTWdXpObq0ODslqpQ0NgwXqKgLeuYMP', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 18:54:39', '2025-01-17 18:54:39'),
(148, '09397883044', 'بهمن', 'باقری مسک', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4967', '1737140224', '$2y$12$pG.ezT0mLdMCRVnUr/164Oh8RNc9fvH1BzDqYmVlAyx3hHJiHWHzS', '2025-01-17 15:26:55', NULL, 'mzUHXCAHTmJtburzJ8YZJZwfkWffKvIMRFmCXaBRwlMYi1MG2VnQMGxBMjCs', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 18:57:25', '2025-01-17 18:57:25'),
(149, '09137009100', 'سیدابوالقاسم', 'افضلی بروجنی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7635', '1737140629', '$2y$12$ahhf980DZMXpZJFMT4RQEuRZHoQcO./twU9q7A.6Ew75FbvtcHVFG', '2025-01-17 15:31:54', NULL, 'sJRuFPlCBDiZoMmwDmzYtOD0FZxM9iJiKmcvV6k0LSppxCihh6eMzlYEngcW', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 19:01:54', '2025-01-17 19:01:54'),
(150, '09389376974', 'مریم', 'رنجبر', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4047', '1737140786', '$2y$12$NmPZ0rwcb4TxmqhGyv1x6e9JfDRtM64oszmo7iTEd9q2LOW3D4J8.', '2025-01-17 15:34:52', NULL, '9k7b5XYpUPybNBGh5bEFaB90sANkZ1sjNaNgdfhH3rP6oBJ1rDRTPhfU6On6', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 19:04:52', '2025-01-17 19:04:52'),
(151, '09010282779', 'بتول', 'فلاح رجب زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3800', '1737140853', '$2y$12$BR8JfZ8c7oUuhQBbD/WRUuDCLGefmJ46XQ6WUIj/gWL6xSib1j4tS', '2025-01-17 15:36:11', NULL, 'rYKvT4i9xS9SUfSpGtHfJrbd3iz6k81jponj2KR3BVmOGFV2xVe1Q842wRYc', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 19:06:11', '2025-01-17 19:06:11'),
(152, '09140587412', 'سمیرا', 'برجی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6491', '1737141169', '$2y$12$K5vT1YoUoRpMi5jirZJi9.yzni19EAPeU5ChRGTDUOWzneaCht2Vm', '2025-01-17 15:41:16', NULL, 'QuuvaNUNHG2idyP81nmUMReVak5st1RyKjZ4L95TpeBL5ZC1fJDsTwhGZuBB', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 19:11:16', '2025-01-17 19:11:16'),
(153, '09183153089', 'علی اکبر', 'سهرابی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2432', '1737141643', '$2y$12$h7iyPD5V0VxgpYePgg.F6.vYiGsW3iyO8Xr8g7aQNNAEZV6NubLcq', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 19:18:38', '2025-01-17 15:48:38'),
(154, '09137586962', 'محبوبه', 'قلندری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1783', '1737141701', '$2y$12$XUzORdPfh9oxPTNrMjdUieLcD9JqNuJTWO.1xC/aAckchiSxcVlmG', '2025-01-17 15:50:08', NULL, 'EPmNaIbtfwAR6Oo8dzt9cHQNWrfdErhEgPuM9GKYsHT1iDpdBlzXRvEZcmlj', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 19:20:08', '2025-01-17 15:50:08'),
(155, '09147148527', 'اعظم', 'باقری', 2, 2, 0, '2909680924', '236893', NULL, NULL, NULL, '0314412304001', 423, 2, 'نقده', 'بخش محمدیار', 2, 423, 'آذربایجان غربی شهرستان نقدهذبخش محمدیار خیایان شهید نیکخواه منزل باقری', '5766147331', 'avatar.png', 3, -1, NULL, '3243', '1737141784', '$2y$12$.AQCUQUoZXO3F2TB5UDVo./bRFxdFJDPgOIKkqhAIvtuzeHeHLVbW', '2025-01-17 15:51:32', NULL, 'ZzaoBeQwOCXe1uATvR3Ge9gwTPQ6QQtHf91g7jDK65AqH3b5j41eR4lEqQZ1', 155, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 19:36:44', '2025-01-17 16:06:44'),
(156, '09179638653', 'مریم', 'رحیم زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6485', '1737142428', '$2y$12$Tk4EjWFQZMbXv4G9zEXlXuZHnY8cIZsZKBIHxa9WmWsEe1SF3YZZC', '2025-01-17 16:02:14', NULL, 'CvLcqeRUvBfQTT31WFgEzTdsXvXvemCXovVZHgJy9VznZUn0k79fBAiBffD8', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 19:32:14', '2025-01-17 19:32:14'),
(157, '09162094456', 'نصرت', 'آرمند جرجندی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6257', '1737142538', '$2y$12$OXUH5/f0M6nyZ4NMh.ooFO6eewZd6HVZ4m90efgFaYsNR7GZePXgW', '2025-01-17 16:03:47', NULL, '7qZuWXXybXaU6ajb3PU09mGepMExnS81BA1GBzEZWYtMkoAyqYZLuhu4P0SI', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 19:33:47', '2025-01-17 19:33:47'),
(158, '09139488332', 'زینب', 'امیری هنزایی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8285', '1737143361', '$2y$12$2ZCbNCbtpK1.4CVV5.TZheCIoKVzthDT1skRoxgQ9jypYKEGDztzC', '2025-01-17 16:17:35', NULL, 'OCPCWJ9rgpAl24ETrR6zNxAnCXzDH12TFsOfkK0J1qg8xZAOX0wt82TESuSp', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 09:07:05', '2025-02-01 05:37:05'),
(159, '09132621784', 'روح الله', 'عباسی', 2, 1, 0, '1262493064', '۶۶۳۷۰', '۳۲۱۶۴', '۳۰۴۱۹۰۰۵۳', NULL, '0307007209000', 7, 4, 'ابوزیدآباد', 'حسين آباد کویر', 4, 7, 'اصفهان شهرستان آران وبیدگل شهر ابوزیدآباد دهستان حسین آباد کویر  روبروی حرم مطهر شهدای گمنام', '۸۷۴۹۱۵۵۹۳۶', 'image96501738425245.jpg', 2, -1, NULL, '9586', '1737143393', '$2y$12$L7zxp1zf84XSKDS18ZKmRuWqgSceABLS405jCWiT7FOpOnDDA0Prq', '2025-02-01 12:22:40', NULL, 'hHrLrKlwUJOJdNDZS3jtXvFAC9gSKa7rKptBnanv1QXecCXiW3s9f6yMgEMz', 159, 1, 1, 1, 0, 0, 1, 1, NULL, '2025-02-01 16:00:02', '2025-02-01 16:00:02'),
(160, '09148583320', 'فاطمه', 'بیرام زاده چیانه', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5042', '1737144125', '$2y$12$RGw/PzXNRvRx5KXj/lbsw.5wWKtFpHxLmewScsHu8PvBUZmCQ8gBK', '2025-01-17 16:32:21', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 20:02:21', '2025-01-17 16:32:21'),
(161, '09939118400', 'سوده', 'صادقی جعفری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1335', '1737144892', '$2y$12$FdRtN2IMCKf62q9bTiB7YuhI4xefFoUo98G0tk0vTZdvl3UwjZfeK', '2025-01-17 16:43:18', NULL, 'L9MreFt8inoXbU5zwmzMXoaLBSTnVNtKXplP7kQiXyu54jRABzdQzw4nt0e1', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 20:13:18', '2025-01-17 20:13:18'),
(162, '09393085119', 'خدیجه', 'سرحدی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3425', '1737147613', '$2y$12$T3FeY82RXef1ACbMzsHFJ.LKmHQFMY34PjspOHwWTc2KKmlhrNyuC', '2025-01-17 17:28:33', NULL, '3jHBm1KwaGjQOrel92PqmXqDGIbj0fx5BBITPZDiG6UzTlVOwvK1IhZNH3Jm', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 20:58:33', '2025-01-17 17:28:33'),
(163, '09101573253', 'لطف الله', 'وفاعهد', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5113', '1737148692', '$2y$12$5EEFu.mhJnrs1zK41qSr3OWzRuW/AHo031bRMlJE1PQIpX2i9QzL6', '2025-01-17 17:46:29', NULL, 'QLnbtTr46GEwG48LR3e3hk4ydaOUtlSinSzJrT8sOq9AcfgOLxeoiNIyLSOM', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 21:16:29', '2025-01-17 21:16:29'),
(164, '09902865405', 'فریده', 'حسنی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3561', '1737151733', '$2y$12$WtKlOEqWkBlzLps39XdJlOdoKcAsv2a2vq.FmuyCV97KANZqrzu32', '2025-01-17 18:37:08', NULL, 'Pyw6iYG6UttfFy8On7ydYHhj8CoPVLYNFQfrClV5u7oFZMNbaQZUVx2CG206', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-02 13:24:53', '2025-02-02 09:54:53'),
(165, '09178829591', 'زهرا', 'منفرد', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5646', '1737169759', '$2y$12$bd4hjkVD0wN36XZcN42mI.kqWWrR7C7fXStjRMrg2cAJ5q8FCi.D6', '2025-01-17 23:37:45', NULL, 'skdkRERZrXbsIGd6BwFTIUpT938H51BvVZ4DxderelP22egf8opjN6uD3QEc', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-18 03:07:45', '2025-01-18 03:07:45'),
(166, '09036091920', 'سید امیر', 'موسوی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2533', '1737171970', '$2y$12$QwQWuVpoStj57JJ8SfMiIecu31kWGiCVQOh0pSNs8oYjaMP9tzE32', '2025-01-18 00:18:38', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-18 03:48:38', '2025-01-18 00:18:38'),
(167, '09158360873', 'مرتضی', 'ایزدی یزدان آبادی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8588', '1737175134', '$2y$12$9j0/SWMTQy.QTb2xIz1CYuwBjRitzaepP9KE0ruuDUWGGn8lJZp2q', '2025-01-18 01:07:09', NULL, 'Q3TORwODAGtBWHeoZY404Cc7SoOhXmv4Deu2Z6pHBLTzAaS2uoXbUWDVaZ2e', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-18 04:37:09', '2025-01-18 04:37:09'),
(168, '09331284715', 'اعظم', 'آذرنیوه', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7313', '1737177090', '$2y$12$WTGIIWAWAtzBRR0OAtNqVu5sLkMvahIfsY0cV7Qu1zWUUfcn9qGna', '2025-01-18 01:39:34', NULL, 'gOJHyWfzZAzSTfsCet3It5XttdPQAZitLgYRnxDeGHXYPL2PlPEEfSAnOXbo', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-18 05:09:34', '2025-01-18 05:09:34'),
(169, '09187248413', 'محمد', 'عزیزی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3108', '1737189342', '$2y$12$h2Fj5N62Lvsr0kQ3tCM0uOX7rF267vAFRiwVMnazNT2QhFg0cGjeu', '2025-02-01 15:01:33', NULL, 'waPyXFaKRjVqX0Bs8Ie3cpX4bRlxQJMmA124ZQr8c8zCY6GTa89WYtdM9YjN', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 18:32:31', '2025-02-01 15:02:31'),
(170, '09118645607', 'طاهره', 'کرمانی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1703', '1737302105', '$2y$12$VzPzTUg3XSJxLr69JZ1UPOYSav1CbmEgYFqO4nqRgw7IKLFB3lKli', '2025-01-19 12:23:36', NULL, 'ASpovLxqv06Oz23jeBeAzWWtoUdFmW1Ap2pBjqq6DX3JgNZaP75eKyEoOsJr', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-19 15:53:36', '2025-01-19 15:53:36'),
(171, '09176745975', 'نجیمه', 'رضایی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9384', '1737318343', '$2y$12$Wxsa.I5Q4C3FIN8JyMKApOdjKrCvZVDm5XYnf22Hsq3nWtcwrQ0EK', '2025-01-19 16:54:07', NULL, 'VXkzcS85hB6o40CvWf3z0d3usN9Op0g6cvxnoyVhrXgNBxfsxzbhkmjLxe1B', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-19 20:24:07', '2025-01-19 20:24:07'),
(172, '09139445701', 'سلیمه', 'شهیکی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3245', '1737347401', '$2y$12$hGvRB1HK95U5xkns6nRhqOR/KD3BVvLuRs3j41vFVSoWAGFseFyFm', '2025-01-20 00:58:24', NULL, 'tY8T6NtZQoURHcYhhc6bt5OBHheoXYEgl0fR3trihvhIUu1qZ6qqAuobInNp', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-20 04:28:24', '2025-01-20 04:28:24'),
(173, '09116154056', 'الیاس', 'آقازاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4492', '1737355611', '$2y$12$D5Ea/eXTT.c2GPL8Sbqqj.KTPNg78Ol6FN8WiaZ6lPva94irzPpou', '2025-01-20 03:14:55', NULL, 'n2qB3Q6USsgtNCVSGVFJHGCgrXOV4xOSpF0HQPG8OVD9SNJ9oLWx909WWbv7', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-20 06:44:55', '2025-01-20 06:44:55'),
(174, '09168618006', 'پیمان', 'اختر', 2, 1, 0, '4190300489', '225391', NULL, NULL, NULL, '0323098889005', 182, 6, 'دره شهر', 'اسدآباد سفلی', 26, 352, NULL, '6844119356', 'image92991737369616.jpg', 3, -1, NULL, '2329', '1737369308', '$2y$12$PpW6BkCoSyRS.b5fmzNCOOdUrMLMeHt6An1UpbQh9qqnmMie28ZaS', '2025-01-20 07:03:30', NULL, 'f8I90f5NLt2jPtOYK2djWhoqqfxEZYAVVBLhgd13Olc43XF2ztbaagskagvu', 174, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-01-20 10:40:20', '2025-01-20 07:10:20'),
(175, '09145519622', 'فاطمه', 'محمودتاش', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3982', '1737369521', '$2y$12$0W2Zhp3REL8mAVWFLW4sluvTqu2JEYQfcsSe9zq81g0KUjHJHdklS', '2025-01-20 07:07:59', NULL, '4A4JXp1GfXm73mLggKk94js4uUriVk5uHughPHYnmOy37FFJ1Ni3ZAC7xFsT', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 08:58:23', '2025-02-01 05:28:23'),
(176, '09192888162', 'رقیه', 'عبدلی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1158', '1737847604', '$2y$12$nhDYPS7Z/oI0nio1GjnbR.SaxNBtXfW6OEGjerspwoniqWenQRuAy', '2025-01-25 19:54:56', NULL, 'cOtG1kpb01hdI1Evmc4xfqf4MlxVRdt5ClsKzwHYbkNNMHehuDCWEDuB6tIN', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-25 23:24:56', '2025-01-25 23:24:56'),
(177, '09158543150', 'علی', 'بامری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3496', '1738397034', '$2y$12$.1vGr1T16wMowx2VGPO7Ue1XpsM/GFA.MacyhhnMAqE/onv/eiITC', '2025-02-01 04:32:02', NULL, 'ub2cH7J7w42exqctra0ZNZXuCO81WY5XJuA0mp5VJa0XOoJpxja5BcNcHHGB', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 08:03:27', '2025-02-01 04:33:27'),
(178, '09136517762', 'زهرا', 'بیاضی پور رفسنجانی زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3025', '1738397174', '$2y$12$EFQtCkqf1RbHJ7pqFlSHze1B.F9LIZhs148dWCCOmDxPqeaP174nu', '2025-02-01 04:34:35', NULL, 'NnwFUtEi5lIyExYU8ByEslZCNWE44jB39wFTWsO00yzWzEGiExvJlg9hi8aa', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-01 08:04:35', '2025-02-01 08:04:35'),
(179, '09103416470', 'شیوا', 'جزینی زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6451', '1738399470', '$2y$12$GPDlDc6yPlo/cl1XqWs.Vu1cAlliG6P5J7Bw3ell8wBHAt5vFahOi', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-01 08:42:25', '2025-02-01 05:12:25'),
(180, '09025264542', 'شیوا', 'جزینی زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2734', '1738399616', '$2y$12$1TmVqV53p1tzOqCOU0STdO1kByBpsYjoq.e/AehPjN1jD4vnd.SY2', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-01 08:44:51', '2025-02-01 05:14:51'),
(181, '09158790527', 'راضیه', 'نیکبخت', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9652', '1738402701', '$2y$12$kVGFud0Tk3SryXSqVMh4Y.uBUUrEGuqKT8oulQCts6nZpk3oY9yoW', '2025-02-01 06:06:29', NULL, 'XA1Ue9mQDAeFdlkZBNg2M3iVn3D2sCDR5V4n9iTmqZM7W0BUnb1CXUnkESJ1', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 09:37:21', '2025-02-01 06:07:21'),
(182, '09164156254', 'محمد', 'الهیاری', 2, 1, 0, '2560087510', '۱۸۷۴۶۷', NULL, '۲۵۶۰۰۸۷۵۱۰', NULL, '0305803135004', 309, 17, NULL, 'دستجه کوچه ۲۷مجتمع خیریه شهید یوسفیان', 17, 309, 'فسا روستای دستجه کوچه۲۷ مجتمع خیریه شهید یوسفیان', '7461614488', 'image67111738414547.png', 3, -1, NULL, '8875', '1738405230', '$2y$12$KlpgcNDI4pZNAPFO08yx1eV7uIUIv18Xu3FomC6OumjNpaETbeC5O', '2025-02-01 06:48:38', NULL, 'QHOHRapMRv7NVxmMVRTGcO2tVd1ZMD5rVRGIPClw4dLzMt0iXGlAh7QN2Drp', 182, 1, 0, 1, 0, 0, 1, 1, NULL, '2025-02-01 12:55:51', '2025-02-01 09:25:51'),
(183, '09174867513', 'سمانه', 'رئیسی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3413', '1738405238', '$2y$12$aQShmvy3/bag3vG7USBIIujjtM3/LR.EHMZv1fOx0LuDt6L1AOhue', '2025-02-01 06:48:48', NULL, 'bBdVv3nVuoL46cl406z4QiVw5q9FSnfPpgqOwzIV1Fs6z0ZP4TqBqRg9rkxS', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 10:19:13', '2025-02-01 06:49:13'),
(184, '09368503150', 'طاهره', 'عنبری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7637', '1738407998', '$2y$12$EQ5OihjXWOD6O0wTmTzWZOd6hraX2fZXZEMwvWcFX4Q4sgzEoT3L6', '2025-02-01 07:35:01', NULL, '04OBuNqqClhWZjM5Aavn6dRvhmO34UhbxuFjZWpNb2kHbskD0Y8Sm5vfISP3', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 11:08:55', '2025-02-01 07:38:55'),
(185, '09186730713', 'فرزانه', 'سوری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7888', '1738408976', '$2y$12$v4i9KIvWL5uVr4WSsunFAObGAIzrfiCwCgCFgiBRcVUXo34wKj.4.', '2025-02-01 07:51:13', NULL, '2cOXBSf8RmXcyoZFAEXec9O6g4ztSQXZtxLFK95SLdVhXlzdqwC12DGGU4ec', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 11:23:12', '2025-02-01 07:53:12'),
(186, '09153188130', 'سید خداداد', 'صادقی', 2, 1, 1, NULL, '101919', '50396', NULL, NULL, '040170000000306120028005', 396, 11, 'مشهد', NULL, 11, 396, 'مشهد شهرک شهید رجایی-حر۲۸ اروند ۹پلاک 24 طبقه سوم', NULL, 'image48311738412640.jpeg', 3, -1, NULL, '3703', '1738412209', '$2y$12$HO8Q4tzj7l4JFUJzdBO5pu8eMzyNucZD0R1T7yGrN/fzIKJ/CUauC', '2025-02-01 08:45:31', NULL, NULL, 186, 1, 1, 0, 0, 0, 1, 1, NULL, '2025-02-01 12:26:16', '2025-02-01 08:56:16'),
(187, '09373317195', 'مرضیه', 'نجفیان نجف آبادی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7385', '1738413426', '$2y$12$B3BMhRfvyKfT7F9wB/aLkuX6KhLZ.i059o5UISu6.jdomLgCdCwhy', '2025-02-01 09:06:25', NULL, 'NXI2jtjGuJpaRCWUvezcVzn5hNPrE6DJoRmJTzPP37w3Guowa6jg9MqpA7tJ', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-01 12:36:25', '2025-02-01 09:06:25'),
(188, '09136358095', 'مهری', 'زابلی غضنفر ابادی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3123', '1738416532', '$2y$12$AEwXfml0.Mb7ghtW7ibZx.lh411qSaGXM3x.l1FuMf7Jfq7SSk6Zu', '2025-02-01 09:57:08', NULL, 'Atx3j53vHMCS8h85xP8xdYdAvmNoyMqZfELgAFocKDlIkQuds2D04vw06W61', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 13:29:09', '2025-02-01 09:59:09'),
(189, '09176433522', 'روح الله', 'هوشمندی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5164', '1738424979', '$2y$12$tTpNATlEpgQU.2zFemCBIuhS/wWQarRqEKKsvlYr/krsqndUBaSti', '2025-02-01 12:17:52', NULL, '41TFtKOCgoXMFMAsgijcD9nJjDNIjW1zGJUbJK7b6Q1RGPfr7VHC0zggGRcx', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 15:48:23', '2025-02-01 12:18:23'),
(190, '09390646231', 'راحله', 'ترکاشوند', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4400', '1738430270', '$2y$12$TRGTxGUe2VzHsJxdItTykO6u1P4K.n4YPwIR1C.NMJAqRPxKhIHEO', '2025-02-01 13:45:57', NULL, 'nWvSsEOUSdgVYNdhFSB9F04ShD373QFMwPtBCrqHi7B0ox8TrNhkHlIKuKGo', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 17:16:36', '2025-02-01 13:46:36'),
(191, '09190487425', 'مظفر عباس', 'راجا', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1566', '1738434221', '$2y$12$rDLHzE7Mwqypdj3uQ/f.Ke/RPrllpU98t0vdKipQ8Q7I0J1tViDre', '2025-02-01 14:51:53', NULL, 'PwLqBCKD3sH9OK7LZzcOv3Pp2dEmOR6lRn991qdQwcSG5ebljdVpx02whzSj', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 18:22:40', '2025-02-01 14:52:40'),
(192, '09039646690', 'سیده نفیسه', 'حسینی نژاد', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5657', '1738441824', '$2y$12$h/4Vk6vbBJGOYGg7S6ovhOvw5Id32CzAY8T52AiTYYsQIbpUH4TqC', '2025-02-01 16:58:49', NULL, 'gDEBUBKs8rZvqMD4UgzsHtQX4FICOiTkHyLrEF3MvnLMRtadCqhpNYqQDdZA', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-01 20:28:49', '2025-02-01 20:28:49'),
(193, '09029380978', 'سعید', 'خلیلی نیا', 2, 1, 0, '5260310985', NULL, NULL, NULL, NULL, '750170000000341489144002', 276, 13, 'شوش', 'کوی ابوذرغفاری خیابان امام', 13, 276, 'شوش کوی ابوذرغفاری  خیابان امام روبروی مسجد جامع پ۵', NULL, 'avatar.pngimage85461738448911.webp', 2, -1, NULL, '7501', '1738448621', '$2y$12$8rwo5vSIuAaCr012YeSXuOCBeThvWnd2tVIcDIMHNVjpn9mMiZSb2', '2025-02-01 18:51:53', NULL, 'W30kyC6okSbbAwE81g90AgQ7zzfw4HjewsyWyTZWW5XG7I6FHvUwBdBndSEs', 193, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 22:29:53', '2025-02-01 18:59:53'),
(194, '09903794800', 'علی', 'میکاییلی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7000', '1738465165', '$2y$12$9AUFYSG5vgiSfueeatIjFuv2ELxmI1QahLNNKsIWJSJkiw67pgZsG', '2025-02-01 23:27:36', NULL, 'yVdr2AP5PgLkuF7PsGnsV1Db6J44bM0jq3YbfFvm3Sqj9G79Xeffbxpxv0bc', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-02 02:59:08', '2025-02-01 23:29:08'),
(195, '09159046301', 'میثم', 'نصرتی', 2, 1, 0, '0939918862', '111858', '55253', NULL, NULL, '0201032223007', 396, 11, 'مشهد', NULL, 11, 396, 'قاسم آباد دکتر حسابی جنوبی ۹', '9189788796', 'image31921738475820.jpg', 4, -1, NULL, '1702', '1738475704', '$2y$12$ZfPE0wr4FvtI3m/8Rk2jTOCYxt4JamBWJyUGKO9WhSSdVp08Ep8PW', '2025-02-02 02:23:23', NULL, 'FvrbhbIWOF5RwIonQ2QlTRBedjP1eGwVQGkisUecuQAtQSGkMsDsJMVURZ7R', 195, 1, 1, 0, 0, 0, 1, 1, NULL, '2025-02-02 06:04:13', '2025-02-02 06:04:13'),
(196, '09910378058', 'ثریا', 'جمشیدی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1324', '1738513443', '$2y$12$RAoruzK.1MgcnXaZ.LkD2.IZGelqe939QzEQUVnb2jclkbf0PtJ5K', '2025-02-02 12:52:14', NULL, 'FsXGwxnmkYfq6ECljN4VU042YkJQnC5S5N41wPaL6zBMMhbnsVoVslpivTAH', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-02 16:23:25', '2025-02-02 12:53:25'),
(197, '09149090672', 'حسین', 'محمدپور گلشن آباد', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5713', '1738514199', '$2y$12$kkKv4LM7wsUPNagCpklBROO4cJB0QFWVXE.TIZLzyH3ZQyy3ypgJe', '2025-02-02 13:04:50', NULL, 'c34nCoLDs3aX3h9Ny2fQ0bDLGn3m3n8Qq5qlXTdRPF1cszTFKqDDWFbxOIV2', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-02 16:34:50', '2025-02-02 16:34:50'),
(198, '09191519138', 'زهرا', 'محمدی', 2, 2, 0, '1234567875', NULL, NULL, NULL, NULL, '1234', 327, 19, NULL, NULL, 19, 327, NULL, '983432', 'image81321738607203.jpg', 1, 1, '3', NULL, NULL, '$2y$12$BvWqAyDGS4TYsLDczPcGS.rZ6yAxcTXFHLuOpI8uT5Daexxh6urwq', '2025-02-03 14:59:42', 1, NULL, NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-03 18:30:26', '2025-02-03 15:00:26');

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
(2, 3, 1, 'این اطلاعیه برای تست می باشد', 1, 0, NULL, '2024-12-11 13:25:23', '2024-12-11 09:55:23'),
(3, 3, 1, 'سنکحدرشنح ستبشضنمبشصمد یحش', 1, 0, NULL, '2024-12-11 13:25:24', '2024-12-11 09:55:24'),
(4, 10, 1, 'این یک اطلاعیه است', 1, 1, NULL, '2024-12-14 05:07:58', NULL),
(5, 10, NULL, 'salam b shoma', 1, 1, NULL, '2024-12-15 15:39:49', '2024-12-15 15:39:49'),
(6, 10, NULL, 'new for test salam b shoma', 1, 1, '2024-12-15 15:40:05', '2024-12-15 19:10:05', '2024-12-15 15:40:05'),
(7, 9, NULL, 'salam', 1, 1, NULL, '2024-12-15 15:40:19', '2024-12-15 15:40:19'),
(8, 3, NULL, 'تست کنید', 1, 0, NULL, '2024-12-15 19:28:54', '2024-12-15 15:58:54'),
(9, 13, NULL, 'سلام مبلغ گرامی  جناب آقای رخ فروز \nخوش آمدید \nمواظب خودت باش!\nيا علی', 1, 0, NULL, '2024-12-17 18:28:07', '2024-12-17 14:58:07'),
(10, 5, NULL, 'سلام علیکم \nخوش آمدید', 1, 0, NULL, '2024-12-17 16:11:24', '2024-12-17 12:41:24'),
(11, 14, NULL, 'با سلام خانم لکزایی لطفا از قسمت پروفایل مشخصات فردی ، تبلیغی ، فعالین فرهنگی را تکمیل نمایید \nبا تشکر', 1, 1, NULL, '2024-12-24 11:41:24', '2024-12-24 11:41:24'),
(12, 64, NULL, 'سلام علیکم  . شماره 09118599711 شما ثبت شد و جایگزین شد', 1, 1, NULL, '2025-01-07 04:26:19', '2025-01-07 04:26:19');

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
(70, 3, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 6, 3, 94, 8, 'شمرانات', NULL, 'پردیس', NULL, NULL, NULL, NULL),
(67, 6, 4, 94, 8, 'پردیس', 'روستای پردیس', 'اهل بیت', NULL, NULL, NULL, NULL),
(27, 10, NULL, 89, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 5, 3, 327, 19, 'قم', NULL, 'امام حسین علیه السلام', NULL, NULL, NULL, NULL),
(47, 20, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 32, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 46, 2, 396, 11, 'مشهد', NULL, 'علی بن موسی الرضا ع', NULL, NULL, NULL, NULL),
(69, 4, NULL, 349, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 61, 4, 53, 6, 'مهران', NULL, 'توحید', NULL, NULL, NULL, NULL),
(44, 62, 4, 48, 1, NULL, 'عربی', 'توحید', NULL, NULL, NULL, NULL),
(115, 64, 2, 424, 27, 'نکا', 'دوقانلو', 'حضرت ابوالفضل ع', NULL, NULL, NULL, NULL),
(50, 56, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 28, 4, 281, 9, 'کیان', NULL, 'حجاب', NULL, NULL, NULL, NULL),
(117, 44, 2, 117, 11, 'تربت حیدریه', NULL, 'حضرت قاسم ابن الحسن', NULL, NULL, NULL, NULL),
(116, 44, 2, 117, 11, 'تربت حیدریه', NULL, 'اداره راهداری و حمل و نقل', NULL, NULL, NULL, NULL),
(61, 66, 4, 13, 24, 'انبارالوم', 'گوک تپه ۱', 'آنه بی بی آهنگری', NULL, NULL, NULL, NULL),
(90, 69, 2, 409, 31, 'مهريز', NULL, 'جامع بیدک', NULL, NULL, NULL, NULL),
(64, 70, 4, 13, 24, 'آق قلا', 'انقلاب', 'استان گلستان شهرستان اق قلا بخش سد وشمگیر روستای انقلاب', NULL, NULL, NULL, NULL),
(73, 77, NULL, 332, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 15, NULL, 125, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 13, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 33, NULL, 334, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 78, 4, 423, 2, 'نقده', NULL, 'شهیدقنبراژدری', NULL, NULL, NULL, NULL),
(82, 14, NULL, 13, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 29, 2, 106, 8, 'پاکدشت', NULL, 'حضرت قائم', NULL, NULL, NULL, NULL),
(142, 120, 2, 216, 29, 'دهبارز', NULL, 'دبیرستان مکتب الزهرا', NULL, NULL, NULL, NULL),
(85, 94, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 141, 4, 335, 30, 'کبودآهنگ', 'نرفتم', 'شهید خضرایی پایگاه شهید نوژه', NULL, NULL, NULL, NULL),
(87, 141, 2, 335, 30, 'کبودراهنگ', 'نبودم', 'نماز خانه آموزشگاه', NULL, NULL, NULL, NULL),
(89, 143, NULL, 304, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 38, 2, 443, 30, NULL, 'ارزانفود', 'صاحب الزمان', NULL, NULL, NULL, NULL),
(94, 38, 1, 443, 30, 'مریانج', NULL, 'ابوالفضلی کوی بید آبادی', NULL, NULL, NULL, NULL),
(98, 155, 4, 423, 2, 'نقده بخش محمدیار', NULL, 'راهنمایی۲۲ بهمن محمدیاز', NULL, NULL, NULL, NULL),
(99, 27, 2, 37, 4, 'باغبهادران', 'کرچگان', 'مسجد جامع', NULL, NULL, NULL, NULL),
(103, 39, 2, 407, 6, 'مهران', 'مهران', 'بعثت', NULL, NULL, NULL, NULL),
(102, 39, 2, 407, 6, 'مرکزی', NULL, 'بعثت', NULL, NULL, NULL, NULL),
(131, 53, 4, 222, 21, 'محمد آباد', NULL, 'مدرسه متوسطه دوره دوم زینب کبری س', NULL, NULL, NULL, NULL),
(107, 67, 4, 44, 21, 'انار', NULL, 'شهید علیزاده', NULL, NULL, NULL, NULL),
(108, 67, NULL, 44, 21, NULL, 'بیاض', NULL, NULL, NULL, NULL, NULL),
(110, 137, NULL, 336, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 111, NULL, 176, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 114, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 186, NULL, 396, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 182, NULL, 309, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 122, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 103, NULL, 417, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 51, NULL, 432, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 17, NULL, 375, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 159, 4, 7, 4, 'ابوزیدآباد', 'حسین آباد کویر', 'شهادت', NULL, NULL, NULL, NULL),
(132, 58, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 21, 2, 43, 13, 'امیدیه', 'امیدیه', 'شهیدخدادادزاده', NULL, NULL, NULL, NULL),
(135, 25, 4, 423, 2, 'شهرنقده', NULL, 'مدرسه پسرانه ابتدایی', NULL, NULL, NULL, NULL),
(136, 195, 2, 396, 11, 'بلوار شاهنامه ۷۶', 'محمد آباد', 'امام حسین ع', NULL, NULL, NULL, NULL),
(137, 195, 4, 396, 11, 'مشهد', NULL, 'رازدان', NULL, NULL, NULL, NULL),
(139, 23, 4, 332, 4, 'کاشان', NULL, 'کوثر', NULL, NULL, NULL, NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `base_cities`
--
ALTER TABLE `base_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=449;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `blog_subjects`
--
ALTER TABLE `blog_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `cultural_users`
--
ALTER TABLE `cultural_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `promotion_agree`
--
ALTER TABLE `promotion_agree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `promotion_agree_item`
--
ALTER TABLE `promotion_agree_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `promotion_positions`
--
ALTER TABLE `promotion_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotion_reports`
--
ALTER TABLE `promotion_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `promotion_ritual`
--
ALTER TABLE `promotion_ritual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `rituals`
--
ALTER TABLE `rituals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ritual_reports`
--
ALTER TABLE `ritual_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `support_types`
--
ALTER TABLE `support_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_users`
--
ALTER TABLE `support_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ticket_items`
--
ALTER TABLE `ticket_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tribunes`
--
ALTER TABLE `tribunes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `user_notes`
--
ALTER TABLE `user_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_notif`
--
ALTER TABLE `user_notif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_promotions`
--
ALTER TABLE `user_promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

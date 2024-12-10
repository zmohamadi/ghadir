-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2024 at 07:37 PM
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
(1, 'مقدمات و سیر غدیر', NULL, 1, 2, 'image74221732958564.jpg', 'image90461732958815.jpg###image9361732958824.jpg###', 'video91831732958810.mp4###', 'application69991732958890.docx###', NULL, '<p><span style=\"background-color:hsl(0, 0%, 100%);\">پرداختن به مفهوم ولایت، ناب ترین مفهومی است که می تواند ضمن تحکیم مبانی حکومت دینی و </span><a href=\"https://civilica.com/search/paper/k-%D9%81%D9%84%D8%B3%D9%81%D9%87%20%D8%B3%DB%8C%D8%A7%D8%B3%DB%8C%20%D8%A7%D8%B3%D9%84%D8%A7%D9%85/\"><span style=\"background-color:hsl(0, 0%, 100%);\">فلسفه سیاسی اسلام</span></a><span style=\"background-color:hsl(0, 0%, 100%);\"> و یز اثبات بطلان سفسطه جدایی دین از سیاست،</span> چراغی فراروی جامعه اسلامی باشد. <a href=\"https://civilica.com/search/paper/k-%D8%AD%D8%B6%D8%B1%D8%AA%20%D8%B9%D9%84%DB%8C%20(%D8%B9)/\">حضرت علی (ع)</a> همچون ستاره ای درخشان در آسمان بود که نماد قرآن مجسم و همه کمالاتی که بشریت همواره در آرزوی آن بود، محسوب می شود. انقلابیبودن و داشتن بصیرت دینی را از دو ویژگی مهم امام زمانی بودن است اگر هرکدام را نداشته باشیم و یا یکی قوی و دیگری ضعیف باشد قطعا راه را به انحراف خواهیم رفت. در روز عید غدیر تمام مسلمین به حضرت علی(ع)بیعت نمودند طوری که مردان با حضرت دست می دادند و زنان دست خود را در تشت پر از آب می کردند و به این طریق بیعت می نمودند. بعد از حادثه غدیر پیامبر همیشه علی را امیرالمومنین خطاب میکردند در حالیکه قبلا به نام ابوالحسن صدایش می کرد. طبق روایت از <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85/\">امامان معصوم</a> لقب امیرالمومنین خاص برای علی (ع) است.در سال دهم هجرت 70 هزار حاجی از مدینه منوره و تعدادی زیادی هم از یمن و دیگر مناطق که تعداد مجموعی شان بیشتر از 120 هزار نفر می رسید، برای ادای فریضه الهی حج در مکه حضور یافتند که در برگشت از خانه خداوند در <a href=\"https://civilica.com/search/paper/k-%D9%85%D9%86%D8%B7%D9%82%D9%87%20%D8%BA%D8%AF%DB%8C%D8%B1%20%D8%AE%D9%85/\">منطقه غدیر خم</a> پیامبر حضرت علی ابن ابی طالب را به عنوان وصی و جانشین خود به مسلمین معرفی نمود. غربی ها از زنان استفاده ابزاری می کنند و آنچه را که اسلام برای زنان داده است دیگر ادیان نداده است و حرکت <a href=\"https://civilica.com/search/paper/k-%D8%B2%D9%86%D8%A7%D9%86%20%D8%AF%D8%B1%20%D8%A7%D8%B3%D9%84%D8%A7%D9%85/\">زنان در اسلام</a> تاثیر گذار بوده است. ما هرچه داریم از زنان تاریخ ساز اسلام داریم و مانند زنان صدر اسلام در هیچ جای دنیا هیچ زنی نتوانسته است که اثر گذار باشد.</p>', 2, 0, 2, 0, 16, 'fa', 1, NULL, '2024-11-30 10:58:13', '2024-12-09 00:35:33'),
(2, 'مباحث تخصصی', NULL, 1, 2, 'image30611732958911.webp', 'image30191732958932.jpg###image36231732958935.jpg###', 'video80811732958925.mp4###', 'application99741732958928.docx###', NULL, '<p>قاله ی حاضر با نگاهی به آموزه های فرهنگی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> از منظر امامان معصوم(ع)، با تبیین مفهوم مدیریت فرهنگی در غدیر، ابعاد و ویژگی های واقعه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> و ضرورت ترویج سبک زندگی اسلامی بر اساس روایات اهل بیت(ع)، برآنیم تا قدمی برای معرفی ابعاد گوناگون واقعه ی فرهنگی و اجتماعی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> برداریم. بی تردید نقش گسترده ی <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> در حوزه ی تبیین دین و فرهنگ، غیرقابل انکار است؛ بدین رو اهل بیت(ع) اهمیت ویژه ای به واقعه ی تمدن ساز <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> مبذول می داشتند و در هر فرصتی برای نهادینه کردن فرهنگ ولایت و رهبری بر اساس واقعه ی غدیر، ضرورت تبیین جایگاه <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> در اسلام را بازگو می کردند. این پژوهش به دنبال بررسی این مساله است که آیا حادثه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> می تواند به عنوان الگوی فرهنگ ساز در راستای تمدن اسلامی مطرح شود! و اهل بیت(ع) با توجه به اهمیت غدیر، در برابر این واقعه ی مهم و عظیم، چگونه موضع گیری کردند! بدین رو هدف از این مقاله، بررسی و تبیین آموزه های فرهنگی واقعه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> از منظر <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> است؛ هدف این است که با بررسی روایات اهل بیت(ع)، کارکرد فرهنگی و اجتماعی آموزه های <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> را استخراج نموده، تا در جهت الگوسازی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> برای تمدنسازی اسلامی در عصر حاضر، گامی برداریم. در این مقاله، با بهره گیری از روش توصیف و تحلیل و بر اساس منابع کتابخانه ای، تلاش شده است، الگوی تمدن ساز <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> در روایات <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> را استخراج کنیم. یکی از نتایج و دستاوردهای این پژوهش، تبیین معیارها و ملاک های فرهنگی نهفته در آموزه های اهل بیت(ع) در مورد واقعه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> است. بررسی و تبیین آموزه های فرهنگ ساز <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> از منظر <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> در ابعاد اخلاق فردی، اجتماعی، الاهی و سیاسی، در قالبی جدید از جنبه های نوآوری این مقاله شمرده می شود.</p>', 1, 0, 1, 0, 7, 'fa', 1, NULL, '2024-11-30 10:59:13', '2024-12-09 00:21:28'),
(3, 'اهمیت بیعت در غدیر', NULL, 1, 1, 'image59041732962705.jpg', 'image99441732962748.webp###image13741732962751.jpg###image27701732962757.jpg###', NULL, 'application25031732962754.docx###', NULL, '<p>بعد از حادثه غدیر پیامبر همیشه علی را امیرالمومنین خطاب میکردند در حالیکه قبلا به نام ابوالحسن صدایش می کرد. طبق روایت از <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85/\">امامان معصوم</a> لقب امیرالمومنین خاص برای علی (ع) است.در سال دهم هجرت 70 هزار حاجی از مدینه منوره و تعدادی زیادی هم از یمن و دیگر مناطق که تعداد مجموعی شان بیشتر از 120 هزار نفر می رسید، برای ادای فریضه الهی حج در مکه حضور یافتند که در برگشت از خانه خداوند در <a href=\"https://civilica.com/search/paper/k-%D9%85%D9%86%D8%B7%D9%82%D9%87%20%D8%BA%D8%AF%DB%8C%D8%B1%20%D8%AE%D9%85/\">منطقه غدیر خم</a> پیامبر حضرت علی ابن ابی طالب را به عنوان وصی و جانشین خود به مسلمین معرفی نمود. غربی ها از زنان استفاده ابزاری می کنند و آنچه را که اسلام برای زنان داده است دیگر ادیان نداده است و حرکت <a href=\"https://civilica.com/search/paper/k-%D8%B2%D9%86%D8%A7%D9%86%20%D8%AF%D8%B1%20%D8%A7%D8%B3%D9%84%D8%A7%D9%85/\">زنان در اسلام</a> تاثیر گذار بوده است. ما هرچه داریم از زنان تاریخ ساز اسلام داریم و مانند زنان صدر اسلام در هیچ جای دنیا هیچ زنی نتوانسته است که اثر گذار باشد.</p>', 1, 1, 0, 0, 10, 'fa', 1, NULL, '2024-11-30 12:04:09', '2024-12-07 12:05:49'),
(4, 'ایده های برگزاری جشن های ولادت حضرت زهرا سلام الله علیها', NULL, 2, 1, 'image14101733716898.jpg', 'image84101733760141.jpg###image77561733760169.png###', NULL, NULL, NULL, '<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد</p><p>&nbsp;</p><p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.<br>&nbsp;</p>', 0, 0, 0, 0, 7, 'fa', 1, NULL, '2024-12-09 00:34:49', '2024-12-09 12:32:56');

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
(1, 1, NULL, 2, 0, 'بسیار مقاله درست و ب عنوان برترین مطلب می تواند باشد', 1, 1, 'fa', 1, NULL, '2024-11-30 11:00:48', '2024-11-30 11:00:48'),
(2, 2, 1, 1, 0, 'چقدر مورد تحسین است این مقاله .', 1, 1, 'fa', 1, NULL, '2024-11-30 11:32:51', '2024-11-30 11:33:52'),
(3, 19, NULL, 1, 0, 'متن خوبی بود مرسی', 1, 1, 'fa', 1, NULL, '2024-12-01 20:11:47', '2024-12-01 20:12:43'),
(4, 19, NULL, 1, 2, 'اره واقعا', NULL, 2, 'fa', 1, '2024-12-01 20:13:24', '2024-12-01 20:12:01', '2024-12-01 20:13:24'),
(5, 18, NULL, 3, 0, 'تست نظر', NULL, 2, 'fa', 1, NULL, '2024-12-03 04:48:23', '2024-12-03 04:48:23');

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
(4, 1, 6, 5, 'دوره فاطمیه', '1403', '50', 1, 30, 'مسجد اشرفیه', 94, 8, 'بهارستانی', NULL, 1, '2024-12-09 12:12:23', '2024-12-09 15:42:23', '2024-12-09 12:12:23');

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
(3, 6, 'محدثه', 'عبادی', 'همکار فرهنگی', 2, '353546', 'افرادی که با شما در امور فرهنگی همکاری سازنده دارند یا در محل تبلیغ شما تاثیر گزارند افرادی که با شما در امور فرهنگی همکاری سازنده دارند یا در محل تبلیغ شما تاثیر گزارند افرادی که با شما در امور فرهنگی همکاری سازنده دارند یا در محل تبلیغ شما تاثیر گزارند', NULL, NULL, NULL, NULL);

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
(1, 'فاطمیه', 1403, 'image38751733683779.jpg', 'در فرهنگ عامه، به دهه دوم جمادی‌الاول، از دهم تا بیستم آن ماه که بر اساس روایت ۷۵ روز درگذشت فاطمه در میان آن روزها واقع شده‌است، «دهه اول فاطمیه» و به دهه اول جمادی‌الثانی، از اول تا دهم جمادی‌الثانی که بنا به روایت ۹۵ روز، درگذشت فاطمه در میان این روزها اتفاق افتاده «دهه دوم فاطمیه» می‌گویند.', '\'تعهدات ستاد دارای این مواردمیباشد.در فرهنگ عامه، به دهه دوم جمادی‌الاول، از دهم تا بیستم آن ماه که بر اساس روایت ۷۵ روز درگذشت فاطمه در میان آن روزها واقع شده‌است، «دهه اول فاطمیه» و به دهه اول جمادی‌الثانی، از اول تا دهم جمادی‌الثانی که بنا به روایت ۹۵ روز، درگذشت فاطمه در میان این روزها اتفاق افتاده «دهه دوم فاطمیه» می‌گویند.', 1, 1, 1, 1, 1, 1, 4, 3, 0, NULL, 0, 0, 2, 1, NULL, '2024-12-08 15:19:42', '2024-12-09 12:12:32');

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
(11, 6, 1, 0, 1, NULL, '2024-12-09 11:57:31', '2024-12-09 08:27:31');

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
(18, 11, 4, 1, 6);

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
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotion_reports`
--

INSERT INTO `promotion_reports` (`id`, `promotion_id`, `promoter_id`, `photos`, `videos`, `status_id`, `confirm_id`, `level_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL, 0, -1, 0, '2024-12-09 12:12:03', '2024-12-09 00:26:27', '2024-12-09 12:12:03'),
(2, 1, 3, NULL, NULL, 0, -1, 0, '2024-12-09 12:12:08', '2024-12-09 00:26:55', '2024-12-09 12:12:08'),
(3, 1, 4, NULL, NULL, 0, -1, 0, '2024-12-09 12:12:12', '2024-12-09 03:57:46', '2024-12-09 12:12:12'),
(4, 1, 4, NULL, NULL, 0, -1, 0, '2024-12-09 12:12:17', '2024-12-09 04:00:07', '2024-12-09 12:12:17'),
(5, 1, 6, 'image44571733745623.jpg###', NULL, 0, -1, 0, '2024-12-09 12:12:23', '2024-12-09 08:30:26', '2024-12-09 12:12:23'),
(6, 1, 3, NULL, NULL, 0, -1, 0, '2024-12-09 12:12:32', '2024-12-09 08:53:09', '2024-12-09 12:12:32'),
(7, 1, 3, NULL, NULL, 0, -1, 0, NULL, '2024-12-09 11:42:38', '2024-12-09 11:42:38'),
(8, 1, 3, NULL, NULL, 0, -1, 0, NULL, '2024-12-09 11:42:39', '2024-12-09 11:42:39'),
(9, 1, 3, NULL, NULL, 0, -1, 0, NULL, '2024-12-09 11:42:39', '2024-12-09 11:53:07');

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
(4, 5, 1);

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
(1, NULL, '1403', 5, 1, 6, 'اطعام در تبلیغ انجام شده ه است', 336, 'مدرسه کرجیان', 5, 'کرج', NULL, 1, '2024-12-09 12:12:23', '2024-12-09 15:42:23', '2024-12-09 12:12:23');

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
(1, 'فعغ', 5, 2, 3, 3, NULL, 'fa', 1, NULL, '2024-12-09 07:19:16', '2024-12-09 07:55:28'),
(2, 'تقدیر و تشکر', 5, 2, 2, 0, NULL, 'fa', 1, NULL, '2024-12-09 08:19:19', '2024-12-09 08:19:19'),
(3, 'باسلام', 6, 2, 2, 1, NULL, 'fa', 1, NULL, '2024-12-09 08:32:20', '2024-12-09 08:42:38'),
(4, 'bfh', 3, 2, 1, 0, NULL, 'fa', 1, NULL, '2024-12-09 12:35:34', '2024-12-09 12:35:34');

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
(1, 5, 1, 'بائ تبتبتتتوب', NULL, 1, NULL, '2024-12-09 07:19:16', '2024-12-09 07:19:16'),
(2, 1, 1, 'knhkgb,jg,j', NULL, 1, NULL, '2024-12-09 07:55:28', '2024-12-09 07:55:28'),
(3, 5, 2, 'سلام علیکم \nاز زحمات شما عزیزان کمال امتنان را داریم \nدر پناه امام زمان باشید \nیا علی', NULL, 1, NULL, '2024-12-09 08:19:19', '2024-12-09 08:19:19'),
(4, 6, 3, 'سلام من درخواست همکاری در ستاد شما رو دارم .', 'image59761733745737.jpg###', 1, NULL, '2024-12-09 08:32:20', '2024-12-09 08:32:20'),
(5, 1, 3, 'بسیار خوشحالیم', NULL, 1, NULL, '2024-12-09 08:42:38', '2024-12-09 08:42:38'),
(6, 3, 4, 'cvnh', 'image32361733760326.png###image28581733760332.png###', 1, NULL, '2024-12-09 12:35:34', '2024-12-09 12:35:34');

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
(1, 'پشتیبانی فنی', 1, NULL, 0, 0, 0, 0, 0, 1, NULL, '2024-11-30 11:34:55', '2024-11-30 11:34:55'),
(2, 'پشتیبانی و آماد فرهنگی', 1, NULL, 4, 2, 0, 0, 1, 1, NULL, '2024-11-30 11:35:12', '2024-11-30 11:35:12'),
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
(2, 'منبر فاطمی', 5, 6, 1, '1403', '40', 3, 50, 'هیات اسلامشهر', 304, 5, 'فردیسی', 'فردیسیه', 1, '2024-12-09 12:12:23', '2024-12-09 15:42:23', '2024-12-09 12:12:23');

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
(1, '09191964745', 'پرسنل', 'غدیر', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, 1, NULL, NULL, NULL, '$2y$12$MF4toQZLv5.DSupBLZ00FOYJdeg3LFnVPSbuJNMF52UNGY07pCOX2', '2024-12-09 12:36:57', NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-12-09 16:06:57', '2024-12-09 12:36:57'),
(2, '09198111102', 'صادق', 'شیری', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, 1, NULL, NULL, NULL, '$2y$12$9l/.qnK2iRrIxvNbRecvguUNI3pV0Abtjxpu6hmjh/PC.ciqzgYf6', '2024-12-09 00:21:13', NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-12-09 03:51:13', '2024-12-09 00:21:13'),
(3, '09189062676', 'مبلغ', 'غدیر', 2, 1, 0, '4032228035', '434', NULL, '5566', NULL, '0132324234', 36, 2, '434', '434', 1, 31, NULL, '434343434', 'avatar.png', 2, 1, '0', '2189', '1733757228', '$2y$12$SbbHP/kZ6s17SKSiYImeJunolUdAuYxsaBvtn2SlAG0nqTAE/ocwi', '2024-12-09 12:34:47', NULL, 'Dt6b7uy86RdbAdD8VIBQEKGOF58QajLAPBftG9P8nIxMInw3EcW3YXNkGfZT', 1, 1, 0, 1, 0, 3, 1, 1, NULL, '2024-12-09 16:04:47', '2024-12-09 12:34:47'),
(4, '09361022252', 'ابوعلی', 'براتی', 2, 1, 0, '1234567654', NULL, NULL, NULL, NULL, '344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', 1, -1, '0', '6046', '1733729073', '$2y$12$mpLc206u.H5AHC2hHc85X.V/P8N6wDsngiOJHr3pdg.HysRuX5nJS', '2024-12-09 03:53:10', NULL, NULL, 1, 0, 0, 0, 0, 0, 1, 1, NULL, '2024-12-09 15:42:17', '2024-12-09 12:12:17'),
(5, '09196660562', 'مقداد', 'براتی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6411', '1733741246', '$2y$12$cH0xJJ73AZMyJnucgOe11eK4X4Ln2cEkpiF0OB8exrF0DxtU38pn6', '2024-12-09 07:57:19', NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2024-12-09 11:27:19', '2024-12-09 07:57:19'),
(6, '09198526839', 'مریم', 'عبادی راد', 2, 2, 0, '2134543265', '546457474', NULL, NULL, '4645775757', '126754356', NULL, 8, 'پردیس تهران', NULL, 8, NULL, 'تهران پردیس فاز 3 بلوک 453 پلاک 436', '65438754', 'avatar.png', 4, 1, '0', '9302', '1733744741', '$2y$12$qsApw3I3RCqw5zE0KexRVOoO4BXOGOzmoVke81dOCVdkAm2i5HViq', '2024-12-09 08:14:54', NULL, NULL, 1, 1, 0, 0, 1, 0, 1, 1, NULL, '2024-12-09 15:42:23', '2024-12-09 12:12:23');

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
(8, 3, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 3, 275, 8, 'شمرانات', NULL, 'پردیس', NULL, NULL, NULL, NULL),
(7, 6, 4, 112, 8, 'پردیس', 'روستای پردیس', 'اهل بیت', NULL, NULL, NULL, NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_subjects`
--
ALTER TABLE `blog_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cultural_users`
--
ALTER TABLE `cultural_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promotion_agree`
--
ALTER TABLE `promotion_agree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `promotion_agree_item`
--
ALTER TABLE `promotion_agree_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `promotion_positions`
--
ALTER TABLE `promotion_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotion_reports`
--
ALTER TABLE `promotion_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `promotion_ritual`
--
ALTER TABLE `promotion_ritual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rituals`
--
ALTER TABLE `rituals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ritual_reports`
--
ALTER TABLE `ritual_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_types`
--
ALTER TABLE `support_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_users`
--
ALTER TABLE `support_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket_items`
--
ALTER TABLE `ticket_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_notif`
--
ALTER TABLE `user_notif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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

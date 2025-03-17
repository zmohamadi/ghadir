-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2025 at 11:30 AM
-- Server version: 10.6.21-MariaDB
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
(36, 'نیمه فعال', NULL, 33, '2', 'theme-22', 1, NULL, NULL, NULL),
(37, 'جنسیت', NULL, 0, NULL, NULL, 1, NULL, NULL, NULL),
(38, 'عمومی', NULL, 37, '1', NULL, 1, NULL, NULL, NULL),
(39, 'آقایان', NULL, 37, '2', NULL, 1, NULL, NULL, NULL),
(40, 'بانوان', NULL, 37, '3', NULL, 1, NULL, NULL, NULL);

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
(3, 'گزارش فاطمیه', NULL, 1, 11, 'image79031734275619.jpg', 'image39591734276476.jpg###', 'video67601734276083.mp4###', NULL, NULL, '<p>با سلام &nbsp;<br>قابل توجه مبلغان گرامی📣 که جهت تهیه ی کتاب و اجرای برنامه ی فاطمیه ی امسال با محوریت کتاب فاخر🌸 فاطمه برترین بانوی هستی 🌸<br>اعلام‌ آمادگی نمودید ‼️👇👇<br>مبلغینی که تا &nbsp;پایان ایام فاطمیه ( تا ولادت حضرت) گزارشی از اجرای برنامه ی خود بفرستند ، در لیست قرعه کشی هدیه ویژه این ایام قرار میگیرند&nbsp;<br>✨هدایا 👇👇👇<br>🔹۵ نفر مبلغ &nbsp;یک میلیون تومان&nbsp;<br>🔸۱۲ نفر مبلغ ۵۰۰ هزار تومان&nbsp;</p>', 32, 26, 6, 0, 181, 'fa', 1, NULL, '2024-11-30 12:04:09', '2025-03-11 03:03:47'),
(4, 'ایده های برگزاری جشن های ولادت حضرت زهرا سلام الله علیها', NULL, 2, 11, 'image14101733716898.jpg', NULL, NULL, NULL, NULL, '<p>السلام علیک ایتها الصدیقه الشهیده&nbsp;</p><p>&nbsp;</p>', 0, 0, 0, 0, 17, 'fa', 1, '2024-12-22 00:00:45', '2024-12-09 00:34:49', '2024-12-22 00:00:45'),
(5, 'کتاب مادران اهلبیت علیهم السلام', NULL, 1, 11, 'image47171734289447.jpg', 'image50571734289927.jpg###image63451734290080.jpg###', NULL, 'application6861734290476.pdf###', NULL, '<p>&nbsp; بسم الله الرحمن الرحیم&nbsp;</p><p>📖 &nbsp;کتاب دوازده مادر<br>«آشنایی با مادران اهل بیت علیهم السلام»<br>🔸۱۲۸ صفحه&nbsp;<br>🔸به قلم دکتر مهدی خدامیان آرانی &nbsp; &nbsp;<br>🔸سایز حدودی (۱۲/۵×۱۹/۵) رقعی اروپایی</p><p><br>💰قیمت پشت جلد: 110,000 تومان&nbsp;<br>👌قیمت پخش با تخفیف: 50,000 تومان<br>مرکز پخش این کتاب فروشگاه غدیریه می باشد.<br>برای دانلود پی دی اف کتاب اینجا کلیک کنید (https://eitaa.com/ghadiriam14/5035)</p><p>🌐 برای سفارش از سایت اینجا کلیک کنید👉</p><p>جهت سفارش به ادمین پیام دهید👇👇<br>@ghadiriaam14<br>02537208882<br>#مادران #کتاب<br>ـــــــــــــــــــــــــــــــــــــــــــ<br>فروشگاه غدیریه<br>🆔 @ghadiriam14<br>کد های رهگیری بسته ها 👇<br>🆔@ghadiriamposhtibani</p>', 5, 4, 1, 0, 39, 'fa', 1, NULL, '2024-12-11 08:26:12', '2025-03-10 15:09:39'),
(6, 'گزارش دهی ایام فاطمیه  1403', NULL, 1, 11, 'image73431734274523.jpg', 'image16621734275175.jpg###', NULL, NULL, NULL, '<p>بسم الله الرحمن الرحیم&nbsp;</p><p>با سلام خدمت شما مبلغان گرامی&nbsp;</p><p>سرورانی که کتاب &nbsp;فاطمه برترین بانوی هستی را &nbsp;از ما دریافت &nbsp;و از این کتاب استفاده نمودند &nbsp;لطفا در بخش گزارش ثبت فعالیت نمایند&nbsp;</p><p>ان شاء الله از بین مبلغانی که گزارش ارسال نمایند &nbsp;به قید قرعه &nbsp;هدایایی تقدیم خواهد شد&nbsp;</p><p>موفق باشید&nbsp;</p><p>یا علی &nbsp;</p>', 0, 0, 0, 0, 25, 'fa', 1, '2024-12-22 00:02:21', '2024-12-11 09:41:32', '2024-12-22 00:02:21'),
(7, 'از اعتکاف تا غدیر', NULL, 11, 11, 'image48251736784542.jpg', 'image19511736784955.jpg###', NULL, NULL, NULL, '<p style=\"text-align:right;\">&nbsp;</p><p style=\"text-align:right;\">🔻<span class=\"text-big\"><strong>اعتکاف، جلوه‌ای ناب از حضور معنوی و اجتماع قلوب شیعیان است؛</strong> فرصتی که مؤمنین به‌سان قطراتِ پراکندهٔ باران رحمت الهی، گرداگرد محور بندگی خداوند متعال جمع می‌شوند.</span></p><p style=\"text-align:right;\"><span class=\"text-big\">❤️ اما همان‌گونه که اعتکاف ما را به تفکّر، تعهّد و تزکیه دعوت می‌کند، این فرصت می‌تواند ما را به شناخت عمیق‌تری از مقام والای <strong>ولایت اهل بیت علیهم السلام </strong>و نقش آن در هدایت انسان‌ها برساند. <strong>اعتکاف، تمرین اجتماع قلوب </strong>است برای حضوری باشکوه در روز غدیر در نجف.</span></p><p style=\"text-align:right;\"><span class=\"text-big\">✋🏼 بیاییم از فرصتِ معنوی اعتکاف بهره‌برداری کنیم و از دلِ این روزهای ملکوتی، شعله‌های <strong>معرفت به أمیرالمؤمنین صلوات‌الله‌علیه</strong> را برافروخته‌تر سازیم.</span></p><p style=\"text-align:right;\"><span class=\"text-big\">🌹 ان‌شاءالله، در عید غدیر امسال، با معرفتی افزون‌تر و عشقی خالصانه‌تر، جامۀ عمل به فرمایش نورانی امام رضا علیه السلام بپوشانیم که فرمودند:</span><br><span class=\"text-big\"><strong>«هر جا که بودی، روز غدیر نزد امیرالمؤمنین حاضر باش.»</strong></span><br><span class=\"text-big\">و یکپارچه حضورمان را در کنار مضجع شریف امیرالمؤمنین علیه‌السلام در نجف اثبات کنیم</span>.</p><p>_____________________<br>♡⠀ &nbsp; &nbsp;〇⠀ &nbsp; &nbsp;⎙⠀ &nbsp;⌲⁣&nbsp;<br>ˡⁱᵏᵉ ᶜᵒᵐᵐᵉⁿᵗ &nbsp;ˢᵃᵛᵉ &nbsp;ˢʰᵃʳᵉ</p><p><span class=\"text-big\"><strong>https://eitaa.com/welayat110</strong></span></p>', 2, 2, 0, 0, 25, 'fa', 1, NULL, '2025-01-13 12:44:05', '2025-03-10 08:55:44'),
(8, 'اعلام اسامی منتخب مبلغین فاطمیه 1403', NULL, 11, 11, 'image21141737138245.png', 'image19881737138187.png###', NULL, NULL, NULL, '<p>ـــــــــــــــــــــــــــــ﷽ــــــــــــــــــــــــــــــــــ</p><p>با سلام محضر مبلغان گرامی&nbsp;</p><p>اسامی مبلغان فاطمیه 1403 به صورت قرعه کشی مشخص شد&nbsp;</p><p>طبق وعده &nbsp;به 5 نفر مبلغ یک میلیون تومان و به 12 نفر مبلغ 500 هزار تومان اهدا می شود&nbsp;</p><p>اسامی به شرح ذیل می باشد:</p><p>(لطفا شماره حساب خود را در پروفایل خود بارگزاری نمایید )</p><figure class=\"table\" style=\"width:35.79%;\"><table class=\"ck-table-resized\"><colgroup><col style=\"width:14.29%;\"><col style=\"width:44.96%;\"><col style=\"width:40.75%;\"></colgroup><tbody><tr><td style=\"width:30pt;\">ردیف</td><td style=\"width:102pt;\">نام&nbsp;</td><td style=\"width:89pt;\">مبلغ هدیه&nbsp;</td></tr><tr><td>1</td><td>سید اسماعیل طباطبایی&nbsp;</td><td>یک میلیون تومان&nbsp;</td></tr><tr><td>2</td><td>سیران کهریزی پور&nbsp;</td><td>یک میلیون تومان&nbsp;</td></tr><tr><td>3</td><td>حمدیه نجفی&nbsp;</td><td>یک میلیون تومان&nbsp;</td></tr><tr><td>4</td><td>راضیه عباسی&nbsp;</td><td>یک میلیون تومان&nbsp;</td></tr><tr><td>5</td><td>اسماعیل ورمزیار&nbsp;</td><td>یک میلیون تومان&nbsp;</td></tr><tr><td>6</td><td>هادی رخ فروز&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>7</td><td>روح الله رحیمی&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>8</td><td>فاطمه علیزاده&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>9</td><td>محمدرضا سعدی&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>10</td><td>فریبا شهریارپور&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>11</td><td>مجید خوشه چرخ&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>12</td><td>محمدحسن زارع</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>13</td><td>مرضیه خداوردیان&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>14</td><td>علی شهروزفر&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>15</td><td>هدا چراغی&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>16</td><td>محمد کیانی&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr><tr><td>17</td><td>الهه قهرمانیان&nbsp;</td><td>500 هزار تومان&nbsp;</td></tr></tbody></table></figure>', 14, 13, 1, 0, 176, 'fa', 1, NULL, '2025-01-17 14:44:04', '2025-03-11 03:03:31'),
(9, 'منتظر واقعی، عاشق غدیر است', NULL, 11, 11, 'image96891737349984.jpg', 'image15821737350024.jpg###image92531737350052.jpg###image19481737350075.jpg###', NULL, 'application88501737354503.pdf###application63051737354755.pdf###', NULL, '<p>ـــــــــــــــــــــــــــــ﷽ــــــــــــــــــــــــــــــــــ</p><p>🔻 ماه رجب است ولی دل‌هایمان منتظر شب نیمۀ شعبان؛ شبی که از آن به‌عنوان «لیلة القدر اهل بیت علیهم‌السلام» یاد می‌شود(۱).<br>شبی سرشار از فرصت برای بازنگری در دل‌ها و پیمان‌ها و عهدهای فراموش‌شده و مسئولیت‌های منتظران!<br>✋🏼 اما دراین شبِ خاص، گویا دل‌های شیعیان به صورت یک معمای شیرین به هم گره می‌خورد!<br>.معمایی که رازش در روز غدیر در نجف امیرالمؤمنین علیه السلام نهفته است!<br>.چون در مسیر ظهور و انتظار، روز «غدیر» تجلّی ولایتِ اهل بیت علیهم السلام و آزمون آمادگی برای ظهور است<br>و «نجف»، همان جایی‌ست که مؤمنین در کنار مضجع شریف امیرالمؤمنین علیه السلام، بزرگ‌ترین اجتماع شاد شیعیان را رقم خواهند زد<br>همانگونه که امام رضا علیه السلام فرمودند: «هر جا که بودی، روز غدیر نزد امیرالمؤمنین حاضر باش.»(۲) این فرمان، نه فقط دعوت به یک حضور ظاهری، بلکه تجدید عهدی است با امام زمان؛ عهدی که ایشان از شیعیان خود انتظار دارد. چه اینکه می‌فرمایند: «اگر دل‌های شیعیان ما در وفای به عهدشان یکدل بودند، هرگز دیدار با ما به تأخیر نمی‌افتاد. اما این اعمال ناشایست آنان است که ما را از آن‌ها دور نگه می‌دارد».(۳)</p><p>&nbsp;بیاییم از همین ماه رجب که منتظر نیمۀ شعبان هستیم، امسال در نیمۀ شعبان، در لیلة القدر اهل بیت علیهم السلام عهدمان را تازه کنیم و برای شکوه غدیر برنامه ریزی کنیم. تا بزرگ‌ترین عید خدا را باشکوه‌تر از همیشه برگزار کنیم و جهانیان را از پیام انتظار آگاه سازیم. چون حضور در نجف در روز غدیر، اجتماع قلوبِ شیعیان است؛ یک گام عملی برای تحقق فرمان امام رضا و امام زمان علیهما السلام و آمادگی برای ظهور.</p><p>📌 #منتظر_واقعی #غدیر_باشکوه #نیمه_شعبان</p><p>&nbsp;#لیلة_القدر_اهل_بیت #نجف_اشرف</p><p style=\"text-align:right;\"><br>ـــــــــــــــــــــــــــــــــــــــــــ<br>۱. «وَ إِنَّهَا اللَّيْلَةُ الَّتِي جَعَلَهَا اللَّهُ لَنَا أَهْلَ الْبَيْتِ»، وسائل الشیعة، ج ۸، ص ۱۰۶.<br>۲. «أَيْنَ مَا كُنْتَ فَاحْضُرْ يَوْمَ الْغَدِيرِ عِنْدَ أَمِيرِ الْمُؤْمِنِينَ عَلَيْهِ السَّلاَمُ»، تهذيب الأحكام، ج ۶، ص ۲۴.<br>۳. «وَ لَوْ اَنَّ أشياعَنا وَ فَقَّهُمُ اللّه ُ لِطاعَتِهِ، عَلى اجْتِماعٍ مِنَ الْقُلُوبِ…»، بحارالانوار، ج ۵۳، ص ۱۷۷.</p><p>♡⠀ &nbsp; &nbsp;〇⠀ &nbsp; &nbsp;⎙⠀ &nbsp;⌲⁣&nbsp;<br>ˡⁱᵏᵉ ᶜᵒᵐᵐᵉⁿᵗ &nbsp;ˢᵃᵛᵉ &nbsp;ˢʰᵃʳᵉ</p><p>https://eitaa.com/ghadiriam12</p>', 1, 1, 0, 0, 29, 'fa', 1, NULL, '2025-01-20 01:45:34', '2025-03-10 08:52:15'),
(10, 'نیمه‌شعبان؛ لیلة‌القدر اهل‌بیت علیهم‌السلام', NULL, 11, 11, 'image46631738678866.jfif', 'image88321738678940.jfif###image28751738678951.jfif###image58851738678980.jfif###', NULL, 'application66591738679621.pdf###application8891738679661.pdf###', NULL, '<p>ـــــــــــــــــــــــــــــ﷽ــــــــــــــــــــــــــــــــــ</p><p>&nbsp;&nbsp;</p><p>🌙 اگر لیلة‌القدر رمضان، شب تقدیر جهانیان است، نیمه‌شعبان، شب تقدیر خاصِ شیعیان است!</p><p>📜 امام باقر صلوات‌الله‌علیه: «خداوند، شب نیمه‌شعبان را در عوض لیلة‌القدر برای اهل‌بیت علیهم‌السلام قرار داده است.» [۱]</p><p>🔹 فضائل، مناقب و اعمال این شب، فراوان است. &nbsp;<br>🔹 در روایات، نیمه‌شعبان برترین شب پس از لیلة‌القدر دانسته شده است. &nbsp;<br>🔹 این دو شب (یعنی لیلة القدر ماه رمضان و لیلة القدر ماه شعبان) مشترکاتی دارند؛ از جمله غسل، احیا، دعا، استجابت دعا، زیارت و نمازهای مخصوص، تقسیم و تقدیر رزق و روزی‌های معنوی و مادی و ...</p><p>❗️ اما تفاوت مهمی نیز وجود دارد: &nbsp;<br>💫 در نیمه‌شعبان، روزی و تقدیر شیعیان به‌طور ویژه رقم می‌خورد! &nbsp;<br>🔹 پیامبر اکرم صلی‌الله‌علیه‌وآله فرمودند: «روزی مؤمنین و شیعیان، در ماه شعبان تقسیم می‌شود.»[۲]</p><p>📌 یعنی اگرچه در لیلة‌القدر ماه مبارك رمضان، همه‌ی بندگان (اعم از شیعیان و غیرشیعیان) در مقدّراتِ رزق و روزی شریک‌اند، اما در نیمه‌شعبان، روزی و تقدیر شیعیان به‌طور ویژه مورد عنایت الهی قرار می‌گیرد. &nbsp;</p><p>✨ پس این شب، شبِ قدرِ اهل‌بیت علیهم‌السلام و شبِ خاص شیعیان است. &nbsp;<br>💡 شبی‌ست که باید از آن برای نزدیکی دل‌های شیعه بهره برد، چراکه همدلی و وفاداری ما نسبت به یکدیگر، زمینه‌ساز دیدار امام زمان عجل‌الله‌تعالیٰ‌فرجه‌الشریف است! &nbsp;</p><p>📖 که امام زمان عجل‌الله‌تعالیٰ‌فرجه‌الشریف در این باره فرمودند:<br>اگر شیعیان ما (که خداوند توفیق طاعتشان دهد) در راه ایفای پیمانی که بر دوش دارند، هم‌دل می‌شدند، میمنت ملاقات ما از ایشان به تأخیر نمی‌افتاد، و سعادت دیدار ما زودتر نصیب آنان می‌گشت![۳]</p><p>🔻 پس بیاییم در این شب خاص شیعیان، علاوه بر دعای تعجیل ظهور، دل‌های‌مان را به هم نزدیک کنیم، کینه‌ها را کنار بگذاریم و یک قدم برای همدلی بین خودمان برداریم… و از همین حالا، برای حضوری باشکوه در روز غدیر، در نجف آماده شویم![۴] 💫</p><p><br>&nbsp;</p><p><br>ـــــــــــــــــــــــــــــــــــــــــــ<br>۱. «وَ إِنَّهَا اللَّيْلَةُ الَّتِي جَعَلَهَا اللَّهُ لَنَا أَهْلَ الْبَيْتِ»، وسائل الشیعة، ج ۸، ص ۱۰۶.<br>۲. «وَ إِنَّمَا سُمِّیَ شَعْبَانَ لِأَنَّهُ یَتَشَعَّبُ فِیهِ أَرْزَاقُ الْمُؤْمِنِینَ»، بحار الانوار، ج ۹۴، ص ۶۹.<br>۳. «وَ لَوْ اَنَّ أشياعَنا وَ فَقَّهُمُ اللّه ُ لِطاعَتِهِ، عَلى اجْتِماعٍ مِنَ الْقُلُوبِ فِی الْوَفاءِ بِالْعَهْدِ عَلَیْهِمْ لَما تَاَخَّرَ عَنْهُمُ الْیُمْنَ بِلِقائِنا، وَلَتَعَجَّلَتْ لَهُمُ السَّعادَةُ بِمُشاهَدَتِنا»، بحارالانوار، ج ۵۳، ص ۱۷۷.<br>۴. «أَيْنَ مَا كُنْتَ فَاحْضُرْ يَوْمَ الْغَدِيرِ عِنْدَ أَمِيرِ الْمُؤْمِنِينَ عَلَيْهِ السَّلاَمُ»، تهذيب الأحكام، ج ۶، ص ۲۴.<br>&nbsp;</p>', 9, 9, 0, 0, 95, 'fa', 1, NULL, '2025-02-04 11:05:31', '2025-03-11 02:15:00');

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
(64, 193, NULL, 3, 0, 'سلام انجام شد خیلی هم عالی', NULL, 2, 'fa', 1, NULL, '2025-02-01 18:54:42', '2025-02-01 18:54:42'),
(65, 286, NULL, 10, 0, 'عالی', NULL, 2, 'fa', 1, NULL, '2025-02-07 12:29:03', '2025-02-07 12:29:03'),
(66, 289, NULL, 8, 0, 'سلام علیک\nثبتنام کردیم\nهمه ی برنامه هاروهم داشتیم ولی ...جایی برای ثبت شماره ...ندیدم', NULL, 2, 'fa', 1, NULL, '2025-02-07 12:55:58', '2025-02-07 12:55:58'),
(67, 133, NULL, 10, 0, 'مطالب خوبی بود ممنون از لطفتان  استفاده کردیم', NULL, 2, 'fa', 1, NULL, '2025-02-08 12:22:47', '2025-02-08 12:22:47'),
(68, 133, NULL, 9, 0, 'مطالب کوتاه هست میشه لطفا مسابقه برای بچه های مسجد هم بزارین', NULL, 2, 'fa', 1, NULL, '2025-02-08 12:25:44', '2025-02-08 12:25:44'),
(69, 329, NULL, 10, 0, 'مطالب فوق العاده مفید و جامع و کاربردی است', NULL, 2, 'fa', 1, NULL, '2025-02-09 01:23:57', '2025-02-09 01:23:57'),
(70, 130, NULL, 10, 0, 'بسیار عالی.تشکر فراوان', NULL, 2, 'fa', 1, NULL, '2025-02-09 05:29:04', '2025-02-09 05:29:04'),
(71, 130, NULL, 3, 0, 'سلام علیکم بسیار خوب و مفید الحمد للله\nتشکر فراوان از همه شما عزیزان', NULL, 2, 'fa', 1, NULL, '2025-02-09 05:31:55', '2025-02-09 05:31:55'),
(72, 437, NULL, 10, 0, 'عالی', NULL, 2, 'fa', 1, NULL, '2025-02-09 13:41:37', '2025-02-09 13:41:37'),
(73, 386, NULL, 10, 0, '❤️🌷', NULL, 2, 'fa', 1, NULL, '2025-02-10 07:07:23', '2025-02-10 07:07:23'),
(74, 84, NULL, 10, 0, 'تشکر از مطالب خوبتون', NULL, 2, 'fa', 1, NULL, '2025-02-10 08:28:40', '2025-02-10 08:28:40'),
(75, 276, NULL, 10, 0, 'سلام ممنون از زحمات خیلی طرح خوبی است برای شناخت امام زمان عج', NULL, 2, 'fa', 1, NULL, '2025-02-10 13:16:57', '2025-02-10 13:16:57'),
(76, 466, NULL, 10, 0, 'یامهدی', NULL, 2, 'fa', 1, NULL, '2025-02-10 16:28:00', '2025-02-10 16:28:00'),
(77, 22, NULL, 8, 0, 'سلام علیکم حاج آقا جان خوبین تو حرم امیرالمومنین علیه یادتون همدیگر زیارت کردیم', NULL, 2, 'fa', 1, NULL, '2025-02-10 17:09:16', '2025-02-10 17:09:16'),
(78, 348, NULL, 8, 46, 'سلام علیکم پروفایل بنده تکمیل است', NULL, 2, 'fa', 1, NULL, '2025-03-09 10:24:29', '2025-03-09 10:24:29');

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
('|178.131.213.72', 'i:1;', 1739184123),
('|178.131.213.72:timer', 'i:1739184123;', 1739184123),
('|178.131.226.201', 'i:1;', 1734852805),
('|178.131.226.201:timer', 'i:1734852805;', 1734852805),
('|2.147.40.240', 'i:1;', 1741554874),
('|2.147.40.240:timer', 'i:1741554874;', 1741554874),
('|2.183.129.42', 'i:1;', 1739704576),
('|2.183.129.42:timer', 'i:1739704576;', 1739704576),
('|203.171.112.128', 'i:1;', 1739621322),
('|203.171.112.128:timer', 'i:1739621322;', 1739621322),
('|31.130.180.48', 'i:3;', 1740726348),
('|31.130.180.48:timer', 'i:1740726348;', 1740726348),
('|31.25.108.148', 'i:1;', 1739209575),
('|31.25.108.148:timer', 'i:1739209575;', 1739209575),
('|37.129.136.39', 'i:3;', 1739690828),
('|37.129.136.39:timer', 'i:1739690828;', 1739690828),
('|37.129.230.213', 'i:1;', 1739687905),
('|37.129.230.213:timer', 'i:1739687905;', 1739687905),
('|37.129.240.254', 'i:1;', 1739645890),
('|37.129.240.254:timer', 'i:1739645890;', 1739645890),
('|5.115.173.24', 'i:1;', 1735631429),
('|5.115.173.24:timer', 'i:1735631429;', 1735631429),
('|5.116.242.19', 'i:1;', 1740284238),
('|5.116.242.19:timer', 'i:1740284238;', 1740284238),
('|5.116.90.136', 'i:1;', 1738839263),
('|5.116.90.136:timer', 'i:1738839263;', 1738839263),
('|5.123.43.121', 'i:3;', 1736143622),
('|5.123.43.121:timer', 'i:1736143622;', 1736143622),
('|5.124.55.222', 'i:4;', 1741599971),
('|5.124.55.222:timer', 'i:1741599971;', 1741599971),
('|5.125.202.187', 'i:1;', 1739415361),
('|5.125.202.187:timer', 'i:1739415361;', 1739415361),
('|5.126.70.0', 'i:1;', 1739092567),
('|5.126.70.0:timer', 'i:1739092567;', 1739092567),
('|5.209.24.192', 'i:1;', 1739104591),
('|5.209.24.192:timer', 'i:1739104591;', 1739104591),
('|5.212.162.44', 'i:1;', 1733997950),
('|5.212.162.44:timer', 'i:1733997950;', 1733997950),
('|5.215.242.211', 'i:1;', 1737141686),
('|5.215.242.211:timer', 'i:1737141686;', 1737141686),
('|5.215.58.115', 'i:1;', 1739270088),
('|5.215.58.115:timer', 'i:1739270088;', 1739270088),
('|5.217.100.85', 'i:2;', 1739031596),
('|5.217.100.85:timer', 'i:1739031596;', 1739031596),
('|5.250.54.252', 'i:1;', 1736707798),
('|5.250.54.252:timer', 'i:1736707798;', 1736707798),
('|83.123.141.113', 'i:1;', 1739123254),
('|83.123.141.113:timer', 'i:1739123254;', 1739123254),
('|83.123.35.235', 'i:1;', 1739697095),
('|83.123.35.235:timer', 'i:1739697095;', 1739697095);

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
(79, 4, 51, 59, 'تبلیغ فاطمه برترین بانوی هستی', '1403', '45', 1, 200, 'نیشابور هیات جنت الزینب سلام الله علیها', 432, 11, 'نیشابور', '.', 1, '2025-03-08 08:50:41', '2025-03-08 12:20:41', '2025-03-08 08:50:41'),
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
(94, 4, 64, 70, NULL, '1403', '30', 1, 50, 'مسجد', 27, 424, 'نکا', 'دوقانلو', 1, NULL, '2025-01-12 19:14:35', '2025-01-12 19:14:35'),
(805, 5, 5, 154, 'اجتماع قلوب', '1403', '90', 2, 78, 'مسجد', 29, 30, 'اسد', NULL, 1, NULL, '2025-03-05 10:46:48', NULL),
(617, 5, 141, 167, 'موکب', '1403', '60', 4, 300, 'خیابان', 335, 30, 'کبودراهنگ', 'ن', 1, NULL, NULL, NULL),
(819, 5, 51, 322, 'اجتماع قلوب', '1403', '60', 1, 200, 'مسجد جامع', 432, 11, 'نیشابور', NULL, 1, NULL, '2025-03-08 08:50:24', NULL),
(593, 5, 310, 147, 'اعیاد شعبانیه', '1403', '550', 1, 50, 'حسینیه', 448, 31, 'یزد', 'یزد', 1, NULL, NULL, NULL),
(276, 5, 79, 148, 'اعیاد شعبانیه', '1403', '60', 1, 50, 'مسجد', 122, 2, NULL, 'قینرجه', 1, '2025-02-08 07:16:21', '2025-02-08 10:46:21', '2025-02-08 07:16:21'),
(674, 5, 17, 220, 'سخنرانی در حسینیه دهه فجر', '1403', '60', NULL, 50, 'حسینیه امام خمینی', 375, 17, NULL, 'کره موچی', 1, NULL, '2025-03-01 07:07:21', NULL),
(596, 5, 50, 151, 'اعیاد شعبانیه', '1403', '120', 4, 20, 'مسجد', 222, 21, 'گنبکی', 'علی آباد', 1, NULL, NULL, NULL),
(600, 5, 26, 152, 'جشنواره کیک خانگی به مناسبت ایام شعبانیه', '1403', '3', NULL, 50, 'قرارگاه شهید اشتیانی', 336, 5, 'ماهدشت', NULL, 1, NULL, NULL, NULL),
(601, 5, 316, 153, 'ایام شعبانیه', '1403', '40', NULL, 60, 'مسجد فاطمیه', 332, 4, 'کاشان', 'جوشقان استرک', 1, NULL, NULL, NULL),
(738, 5, 23, 155, 'مهدویت و اجتماع قلوب شیعیان', '1403', '100', 3, 80, 'زیارت سلطان امیر احمد', 332, 4, 'کاشان', NULL, 1, NULL, '2025-03-02 07:50:18', NULL),
(736, 5, 313, 156, 'اعیاد شعبانیه .موالید شعبانیه', '1403', '200', 1, 120, 'مسجد امام حسین علیه السلام محله گلکاران', 16, 31, 'ابرکوه', NULL, 1, NULL, '2025-03-02 07:46:22', NULL),
(737, 5, 43, 157, 'ولادت امام حسین', '1403', '40', 1, 100, 'مسجد حضرت ابوالفضل', 421, 4, 'بادرود', 'فمی', 1, NULL, '2025-03-02 07:49:57', NULL),
(605, 5, 133, 160, 'جشن های شعبانیه', '1403', '120', 1, 80, 'مسجد صاحب الزمان عج', 102, 11, 'شاندیز', 'سراسیاب', 1, NULL, NULL, NULL),
(607, 5, 119, 162, 'معرفت افزایی اولیاء الهی و  مادران', '1403', '2500', 1, 650, 'ستاد غدیریه', 327, 19, 'قم', NULL, 1, NULL, NULL, NULL),
(608, 5, 328, 165, 'منبر', '1403', '90', 2, 300, 'مسجد صاحب الزمان', 423, 2, 'بخش محمدیار', NULL, 1, NULL, NULL, NULL),
(745, 5, 35, 361, 'مهدویت رحمت الهی 2', '1403', '50', 1, 600, 'امامزاده بابالنگر', 127, 4, 'عسگران', 'عسگران', 1, NULL, '2025-03-02 08:20:23', NULL),
(614, 5, 15, 169, 'معرفی شخصیت امام حسین علیه السلام', '1403', '45', 2, 60, 'دبستان راهیان کوثر', 125, 30, 'تویسرکان', 'بخش مرکزی', 1, NULL, NULL, NULL),
(613, 5, 15, 169, 'دوره مهدویت', '1403', '45', 3, 150, 'دبیرستان دخترانه مریم', 125, 30, 'تویسرکان', 'بخش مرکزی', 1, NULL, NULL, NULL),
(612, 5, 15, 169, 'اجتماع قلوب شیعیان', '1403', '40', 1, 100, 'مسجد امام رضا علیه السلام', 125, 30, 'تویسرکان', 'بخش مرکزی', 1, NULL, NULL, NULL),
(611, 5, 15, 169, 'دوره مهدویت', '1403', '40', 4, 20, 'مسجد امام رضا علیه السلام', 125, 30, 'تویسرکان', 'بخش مرکزی', 1, NULL, NULL, NULL),
(610, 5, 15, 169, 'تبلیغ ایام شعبانیه', '1403', '60', 1, 100, 'مسجد امام رضا علیه السلام', 125, 30, 'تویسرکان', 'بخش مرکزی', 1, NULL, NULL, NULL),
(295, 5, 71, 170, 'نیمه شعبان', '1403', '30', NULL, 30, 'مدرسه', 13, 24, 'انبارالوم', 'امین آباد', 1, NULL, NULL, NULL),
(618, 5, 130, 174, 'انتظار عامیانه و عارفانه', '1403', '20', 2, 70, 'زینبیه', 318, 10, 'قاین', NULL, 1, NULL, NULL, NULL),
(297, 5, 47, 176, 'ایام شعبانیه', '1403', '4', 1, 50, 'مسجد حضرت زینب سلام الله', 378, 4, 'فولادشهر', NULL, 1, NULL, NULL, NULL),
(298, 5, 367, 177, 'ویژهگی های سربازان امام زمان علیه السلام', '1403', '180', 4, 45, 'مسجد امام زمان علیه السلام', 396, 11, NULL, 'گلشهر ،یعقوبی ۲۴', 1, '2025-02-09 06:57:07', '2025-02-09 10:27:07', '2025-02-09 06:57:07'),
(633, 5, 37, 178, 'امام شناسی', '1403', '20', 3, 30, 'روستای دهنوگنبکی', 222, 21, 'گنبکی', 'دهنو', 1, NULL, NULL, NULL),
(623, 5, 387, 182, 'سبک زندگی علوی', '1403', '40', 3, 20, 'منزل مرحوم حجت الاسلام رحیمی', 396, 11, 'مشهد مقدس ،منطقه ۵', NULL, 1, NULL, NULL, NULL),
(634, 5, 137, 183, 'ماه شعبان', '1403', '120', 3, 350, 'فضای مجازی', 336, 5, 'کرج', NULL, 1, NULL, NULL, NULL),
(621, 5, 393, 184, 'موکب مهدوی', '1403', '120', 1, 200, 'مشهد موسوی قوچانی بین ۲۵و۲۷ روبروی مجتمع ثامن', 396, 11, 'مشهد', 'خراسان رضوی، خیابان  موسوی قوچانی', 1, NULL, NULL, NULL),
(629, 5, 418, 187, 'حلقه معرفتی نوجوانان', '1403', '35', 4, 50, 'مطهری شمالی 46', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(628, 5, 418, 187, 'اعتقادات و احکام مخصوص نوجوانان', '1403', '50', 4, 100, 'مطهری 19', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(635, 5, 422, 188, 'اجتماع قلوب', '1403', '45', 1, 400, 'مسجد جامع خورزوق', 68, 4, 'خورزوق', NULL, 1, NULL, NULL, NULL),
(627, 5, 182, 189, 'امام شناسی در دوره پیرامون', '1403', '50', 1, 30, 'مسجد امام موسی ابن جعفر علیه السلام فسا محله بالا بازار', 309, 17, 'فسا', NULL, 1, NULL, NULL, NULL),
(804, 5, 426, 191, 'پاسخگویی', '1403', '300', 1, 400, 'موکب  حرم  جمکران', 327, 19, 'قم', NULL, 1, NULL, '2025-03-03 06:45:55', NULL),
(636, 5, 428, 192, 'نماز و آموزش احکام', '1403', '30', 4, 30, 'مدرسه سایا', 396, 11, 'مشهد', '...', 1, NULL, NULL, NULL),
(632, 5, 427, 193, 'وظایف منتظران در عصر غیبت', '1403', '45', 2, 50, 'مسجد حسین بن علی', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(657, 5, 431, 194, 'فاطمیه اول و دوم', '1403', '360', 1, 40, 'مسجد و حسینیه', 396, 11, 'ملک آباد', 'امان آباد وامیر آباد', 1, NULL, NULL, NULL),
(637, 5, 439, 195, 'برگزاری جشن نیمه شعبان.', '1403', '60', 1, 200, 'مسجدجامع شهیدبهشتی طُرُق', 396, 11, NULL, 'شهرک طُرُق', 1, NULL, NULL, NULL),
(638, 5, 293, 198, 'مهدویت', '1403', '60', 3, 250, 'مسجد', 396, 11, 'مشهد', 'جاده کنه بیست', 1, NULL, NULL, NULL),
(642, 5, 193, 199, 'نشست با جوانان نوآورین', '1403', '240', 5, 50, 'سدکرخه', 46, 13, 'اندیمشک', NULL, 1, NULL, NULL, NULL),
(641, 5, 193, 199, 'جلسه با مبلغین', '1403', '60', 2, 20, 'مسجد امام حسین', 276, 13, 'شوش', 'کوی انصار', 1, NULL, NULL, NULL),
(640, 5, 193, 199, 'میلاد علی اکبر', '1403', '60', 1, 100, 'مسجد حضرت رسول', 276, 13, 'شوش', NULL, 1, NULL, NULL, NULL),
(639, 5, 193, 199, 'اعیاد شعبانیه', '1403', '60', 2, 50, 'منزل جهانی', 276, 13, 'شوش', 'عمله شیف', 1, NULL, NULL, NULL),
(645, 5, 16, 200, 'اعیاد شعبانیه', '1403', '1200', 3, 100, 'جمکران', 327, 19, 'قم', NULL, 1, NULL, NULL, NULL),
(652, 5, 69, 203, 'شعبانیه', '1403', '35', 1, 40, 'مهريز خورمیز علیا', 409, 31, NULL, 'خورمیز علیا', 1, NULL, NULL, NULL),
(651, 5, 69, 203, 'شعبانیه', '1403', '130', 1, 300, 'مسجد جامع بیدک', 409, 31, 'مهریز', NULL, 1, NULL, NULL, NULL),
(658, 5, 246, 204, 'دوره', '1403', '300', 1, 45, 'مسجدو..', 46, 13, 'اندیمشک', 'ولایت', 1, NULL, NULL, NULL),
(323, 5, 144, 208, 'دوره', '1403', '300', 4, 80, 'مدرسه', 293, 1, 'عجب شیر', 'عجب شیر', 1, NULL, NULL, NULL),
(324, 5, 144, 208, 'دوره', '1403', '120', 1, 60, 'مسجد', 293, 1, 'عجب شیر', 'عجب شیر', 1, NULL, NULL, NULL),
(654, 5, 283, 209, 'مناسبت نیمه شعبان سخنرانی موکب ومسابقه', '1403', '4', 1, 250, 'کاشان', 332, 4, 'کاشان', 'نصرآباد', 1, NULL, NULL, NULL),
(653, 5, 386, 210, 'جشن نیمه شعبان', '1403', '120', 1, 500, 'مشهد میدان امام حسین بلوار22بهمن بین22و24مسجدمهدیه', 396, 11, 'مشهد', 'مشهد', 1, NULL, NULL, NULL),
(664, 5, 371, 212, 'مهدویت', '1403', '120', NULL, 80, 'مسجدحضرت زینب کبری سلام الله علیها', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-01 06:59:40', NULL),
(663, 5, 459, 214, 'سخنرانی', '1403', '40', 1, 50, 'حسینیه', 396, 11, 'رضویه', 'رضویه', 1, NULL, '2025-03-01 06:55:58', NULL),
(669, 5, 261, 216, 'اجتماع قلوب شیعیان', '1403', '80', 5, 70, 'خوابگاه', 29, 30, 'شهر', NULL, 1, NULL, '2025-03-01 07:02:01', NULL),
(668, 5, 261, 216, 'اجتماع قلوب شیعیان', '1403', '80', 3, 60, 'کانون فرهنگی منتظران', 29, 30, 'شهر', NULL, 1, NULL, '2025-03-01 07:02:01', NULL),
(667, 5, 261, 216, 'اجتماع قلوب شیعیان', '1403', '80', 3, 70, 'مرکز نیکوکاری سید جمال الدین', 29, 30, 'شهر', NULL, 1, NULL, '2025-03-01 07:02:01', NULL),
(666, 5, 261, 216, 'اجتماع قلوب  شیعیان', '1403', '29', 3, 60, 'پایگاه خواهران', 29, 30, 'شهر', NULL, 1, NULL, '2025-03-01 07:02:01', NULL),
(665, 5, 261, 216, 'اجتماعی قلوب شیعیان', '1403', '80', 1, 80, 'مسجد مسکن مهر', 29, 30, 'شهر', NULL, 1, NULL, '2025-03-01 07:02:01', NULL),
(673, 5, 17, 220, 'منبر  اعیاد شعبانیه و مدحی', '1403', '50', NULL, 30, 'مسجد فاطمه الزهرا دهشیخ', 375, 17, NULL, 'دهشیخ', 1, NULL, '2025-03-01 07:07:21', NULL),
(672, 5, 17, 220, 'زنگ انقلاب', '1403', '20', NULL, 200, 'مدرسه شهید خسروی', 375, 17, 'مرکز شهر لامرد', NULL, 1, NULL, '2025-03-01 07:07:21', NULL),
(671, 5, 17, 220, 'اعیاد شعبانیه  میلاد ها', '1403', '100', NULL, 600, 'مدارس سر صف صبحگاه', 375, 17, 'لامرد', 'دهشیخ', 1, NULL, '2025-03-01 07:07:21', NULL),
(677, 5, 281, 223, 'غدیر و ولایت', '1403', '2', 1, 100, 'مسجد', 88, 7, 'بوشهر', NULL, 1, NULL, '2025-03-01 07:20:54', NULL),
(676, 5, 209, 225, 'دهه فجر', '1403', '20', 2, 150, 'مدرسه', 37, 4, 'محمداباد', NULL, 1, NULL, '2025-03-01 07:17:00', NULL),
(341, 5, 131, 226, 'فاطمیه', '1403', '200', 5, 400, 'دانشگاه های مشهد', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(712, 5, 228, 313, 'وظایف ما در زمان غیبت، احیا ، اجتماع قلوب', '1403', '9', 1, 1000, 'موکب مجمع متمسکین به قران وعترت خیابان ظهور', 327, 19, 'قم', NULL, 1, NULL, '2025-03-01 08:50:48', NULL),
(679, 5, 203, 231, 'جایگاه امامت', '1403', '850', 2, 500, 'کلاسهای فرهنگی و تربیتی زندان مرکزی', 20, 3, 'اردبیل', NULL, 1, NULL, '2025-03-01 07:35:10', NULL),
(680, 5, 276, 232, NULL, '1403', '120', NULL, 12000, 'سالن ورزشی', 396, 11, NULL, 'کنه بیست', 1, NULL, '2025-03-01 07:43:00', NULL),
(686, 5, 24, 240, 'شیعیان واقعی امام زمان', '1403', '60', 4, 30, 'روستای دارج', 99, 10, 'بیرجند', 'دارج', 1, NULL, '2025-03-01 07:45:14', NULL),
(725, 5, 470, 330, 'ارزش شب نیمه شعبان، رابطه با آمریکا و نقش آن در تاخیر ظهور', '1403', '40', 1, 150, 'هیئت شهدای گمنام', 428, 30, 'نهاوند', NULL, 1, NULL, '2025-03-01 09:09:10', NULL),
(681, 5, 189, 239, NULL, '1403', '100', 1, 150, 'مسجد', 401, 17, 'خومه زار', NULL, 1, NULL, '2025-03-01 07:43:31', NULL),
(685, 5, 24, 240, 'زندگینامه امام زمان عج', '1403', '60', 4, 30, 'مدرسه روستایی دارج', 99, 10, 'بیرجند', 'دارج', 1, NULL, '2025-03-01 07:45:14', NULL),
(684, 5, 24, 240, 'امام زمان ، جانشین خدا', '1403', '60', 4, 30, 'مدرسه روستای دارج', 99, 10, 'بیرجند', 'دارج', 1, NULL, '2025-03-01 07:45:14', NULL),
(683, 5, 24, 240, 'امام زمان ، امام دلها', '1403', '60', 4, 30, 'مدرسه روستایی دارج', 99, 10, 'بیرجند', 'دارج', 1, NULL, '2025-03-01 07:45:14', NULL),
(682, 5, 24, 240, 'امام زمان و کودکان', '1403', '60', 4, 30, 'مدرسه روستایی دارج', 99, 10, 'بیرجند', 'دارج', 1, NULL, '2025-03-01 07:45:14', NULL),
(688, 5, 242, 241, 'اجتماع قلوب شیعیان', '1403', '20', 1, 15, 'مسجد', 46, 13, 'اندیمشک', NULL, 1, NULL, '2025-03-01 07:46:00', NULL),
(687, 5, 242, 241, 'اجتماع قلوب شیعیان', '1403', '20', 1, 15, 'مسجد', 46, 13, 'عدم وجود', 'عدم وجود', 1, NULL, '2025-03-01 07:46:00', NULL),
(689, 5, 311, 242, 'اجتماع قلوبرشیعیان', '1403', '25', 1, 200, 'مسجدجامع ولیعصرعج مرغاب', 158, 17, 'قادر آباد', NULL, 1, NULL, '2025-03-01 07:46:36', NULL),
(764, 5, 49, 389, 'گزارش تبلیغی شعبانیه', '1403', '500', 1, 70, 'محله', 372, 22, 'سرمست', 'سرمست', 1, NULL, '2025-03-02 08:53:43', NULL),
(690, 5, 159, 244, NULL, '1403', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-03-01 07:48:45', NULL),
(691, 5, 324, 246, 'ویژگی یاران امام زمان>محب خدا بودن', '1403', '30', 1, 30, 'بلوار پیروزی۲/۱ارغوان ۱۶ کانون نورالزهرا سلام الله علیها', 396, 11, 'مشهد', 'مشهد', 1, NULL, '2025-03-01 07:50:15', NULL),
(362, 5, 472, 248, 'مهدویت', '1403', '190', 4, 70, 'مدرسه،  هیئت', 75, 29, 'سردشت', 'ملکن', 1, NULL, NULL, NULL),
(692, 5, 356, 249, 'مهدویت؛ تجلی نهضت مقاومت حسینی', '1403', '15', 5, 8, 'هدایت', 327, 19, 'قم', NULL, 1, NULL, '2025-03-01 07:55:54', NULL),
(693, 5, 262, 251, NULL, '1403', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-03-01 07:59:31', NULL),
(694, 5, 433, 252, 'تبلیغ شب جمعه', '1403', '30', 1, 100, 'مسجد موسی ابن جعفر علیه السلام', 396, 11, 'چناران', 'گهوه', 1, NULL, '2025-03-01 08:00:01', NULL),
(366, 5, 42, 253, 'اعیاد شعبانیه', '1403', '120', 4, 280, 'مدرسه', 214, 21, 'رفسنجان', NULL, 1, NULL, NULL, NULL),
(695, 5, 30, 256, 'اعیاد شعبانیه', '1403', '2000', 1, 200, 'مسجد و مدرسه', 300, 30, NULL, 'نگارخاتون', 1, NULL, '2025-03-01 08:02:30', NULL),
(370, 5, 480, 257, 'عید مبعث پیامبر اکرم ص', '1403', '60', 1, 53, 'مسجد', 218, 21, 'جازموریان', 'چاه دول', 1, NULL, NULL, NULL),
(372, 5, 94, 266, 'اجرای سرود در نماز جمعه و مسیر راهپیمایی', '1403', '40', 1, 200, 'مسجد و  مسیر راهپیمایی ۲۲ بهمن', 423, 2, 'شهر', NULL, 1, '2025-03-04 08:04:50', '2025-03-04 11:34:50', '2025-03-04 08:04:50'),
(697, 5, 104, 268, 'ماه شعبان', '1403', '60', 3, 120, 'منزل', 233, 27, 'ساری', NULL, 1, NULL, '2025-03-01 08:16:57', NULL),
(374, 5, 190, 277, 'اعیاد شعبانیه', '1403', '600', 4, 250, 'دبستان اندیشه', 125, 30, 'تویسرکان', NULL, 1, NULL, NULL, NULL),
(702, 5, 56, 278, 'اعیاد شعبانیه ولادت حضرت مهدی عجل الله تعالی فرجه الشریف', '1403', '60', 2, 60, 'اردبیل شهرک نادری', 20, 3, 'اردبیل', '۰', 1, NULL, '2025-03-01 08:29:12', NULL),
(763, 5, 297, 388, 'مهدویت', '1403', '45', 1, 80, 'مسجد', 396, 11, 'مشهد', 'خادم اباد', 1, NULL, '2025-03-02 08:51:22', NULL),
(762, 5, 297, 388, 'مهدویت امام شناسی', '1403', '60', 4, 60, 'مسجد', 396, 11, 'رضویه', 'خادم اباد', 1, NULL, '2025-03-02 08:51:22', NULL),
(761, 5, 297, 388, 'علائم ظهور', '1403', '60', 4, 60, 'مسجد', 396, 11, 'رضویه', 'خادم اباد', 1, NULL, '2025-03-02 08:51:22', NULL),
(699, 5, 482, 283, 'پویش آخرین خورشید', '1403', '300', 4, 110, 'مدرسه شهید سید محمد باقر صدر', 25, 17, 'ارسنجان', 'دهستان شوراب', 1, NULL, '2025-03-01 08:24:58', NULL),
(700, 5, 174, 287, 'آشنایی با مهدویت', '1403', '180', 1, 200, 'مسجد', 182, 6, 'ارمو', 'اسدآباد سفلی', 1, NULL, '2025-03-01 08:27:32', NULL),
(703, 5, 348, 288, 'سخنرانی', '1403', '30', 1, 70, 'مسجد', 246, 11, 'سرخس', 'کلاته ی عوض', 1, NULL, '2025-03-01 08:30:47', NULL),
(704, 5, 380, 297, 'عصمت اهل البیت وایات مختص اهل البیت علیهم السلام', '1403', '40', 1, 40, 'خوزستان', 49, 13, 'اهواز', 'مسیرخسرج', 1, NULL, '2025-03-01 08:36:22', NULL),
(705, 5, 501, 298, 'نوجوان', '1403', '45', 1, 15, 'مسجد', 437, 16, NULL, 'شهرک میر', 1, NULL, '2025-03-01 08:36:46', NULL),
(387, 5, 180, 300, 'شناخت امام زمان عج', '1403', '55', 3, 89, 'مسجد ابالفضل', 77, 21, 'بم', 'امیراباد', 1, NULL, NULL, NULL),
(388, 5, 180, 300, 'آثار برکات ماه شعبان', '1403', '45', 4, 57, 'مدرسه', 77, 21, 'بم', 'روستای امیراباد', 1, NULL, NULL, NULL),
(389, 5, 53, 301, 'اعیاد شعبانیه', '1403', '55', 4, 400, 'مدرسه دخترانه متوسطه دوره دوم', 222, 21, 'ریگان', NULL, 1, NULL, NULL, NULL),
(773, 5, 331, 303, 'نیمه شعبان ولادت امام زمان عجل الله تعالی فرجه', '1403', '120', 1, 300, 'مسجد و حسینیه ابالفضل العباس علیه السلام', 417, 24, 'مینودشت', 'قلمی', 1, NULL, '2025-03-02 09:09:27', NULL),
(706, 5, 377, 306, 'امام زمان', '1403', '60', 1, 100, 'مسجد', 396, 11, 'شهر', NULL, 1, NULL, '2025-03-01 08:40:57', NULL),
(707, 5, 169, 308, 'مهدویت و انقلاب', '1403', '60', 1, 40, 'مسجد', 339, 22, 'کرمانشاه', NULL, 1, NULL, '2025-03-01 08:45:34', NULL),
(708, 5, 303, 310, 'اجتماع قلوب گنج پنهان', '1403', '180', NULL, 500, 'مدرسه', 86, 4, 'بوئین میاندشت', 'چند روستا', 1, NULL, '2025-03-01 08:48:58', NULL),
(710, 5, 229, 311, 'نشانه های ظهور', '1403', '100', 1, 200, 'حسینیه', 377, 9, 'لردگان', 'خاردان', 1, NULL, '2025-03-01 08:50:07', NULL),
(709, 5, 229, 311, 'وظایف منتظران  امام زمان سلام الله علیه', '1403', '150', NULL, 300, 'حسینیه', 377, 9, 'لردگان', 'خاردان', 1, NULL, '2025-03-01 08:50:07', NULL),
(711, 5, 60, 312, 'دهه فجر و نیمه شعبان', '1403', '30', 4, 42, 'مدرسه', 232, 10, 'زهان', 'بایمرغ', 1, NULL, '2025-03-01 08:50:26', NULL),
(739, 5, 334, 315, 'راه اندازی موکب در شب میلاد حضرت صاحب الزمان عج', '1403', '3000', 1, 2000, 'نیروگاه بلوار جمهوری ۱۶ متری امام خمینی ره کوچه ۴۵', 327, 19, 'قم', NULL, 1, NULL, '2025-03-02 07:54:36', NULL),
(714, 5, 20, 316, 'اجتماع قلوب', '1403', '20', 2, 15, 'مسجد امام حسن عسکری علیه السلام', 336, 5, 'حصارک', 'شهرک رازی', 1, NULL, '2025-03-01 08:53:01', NULL),
(713, 5, 20, 316, 'اجتماع قلوب', '1403', '35', 1, 60, 'مسجد امام حسین علیه السلام', 336, 5, 'کمالشهر', 'قزلحصار', 1, NULL, '2025-03-01 08:53:01', NULL),
(715, 5, 111, 318, 'اعیاد شعبان', '1403', '20', 3, 10, 'منزل جلال چراغی', 176, 22, 'کرند غرب', NULL, 1, NULL, '2025-03-01 08:54:38', NULL),
(716, 5, 101, 319, 'جش میلادامام زمان عج درنیمه شعبان', '1403', '180', 1, 400, 'مسجد', 29, 30, 'اسدآباد', NULL, 1, NULL, '2025-03-01 08:58:30', NULL),
(740, 5, 153, 320, 'برگزاری جشن  کنارجاده اصلی مسیرچندین روستا', '1403', '180', 1, 400, 'کنارجاده اصلی  عمومی پخش شیرینی وچای', 300, 30, NULL, 'امیراباد', 1, NULL, '2025-03-02 08:00:10', NULL),
(404, 5, 63, 321, 'اجتماع قلولب و دعای برای سلامتی امام زمان (عج)', '1403', '15', 3, 30, 'روستای ویله', 54, 6, 'ایوان', 'ویله', 1, NULL, NULL, NULL),
(405, 5, 63, 321, 'دعا برای تعجیل در ظهور و سلامتی امام زمان و راههای دستیابی به سعادت حقیقی', '1403', '20', 4, 190, 'مدرسه شهیده عاطفه رشیدی', 54, 6, 'ایوان', NULL, 1, NULL, NULL, NULL),
(406, 5, 63, 321, 'جنگ شناختی و جهادتبیین', '1403', '13', 3, 50, 'پایگاه بسیج', 54, 6, 'ایوان', NULL, 1, NULL, NULL, NULL),
(407, 5, 63, 321, 'استغاثه و پناه بردن به امام زمان عج و عفاف و حجاب', '1403', '20', 3, 30, 'جشن خانگی', 54, 6, 'ایوان', NULL, 1, NULL, NULL, NULL),
(749, 5, 481, 374, 'میلاد امام زمان(عج)', '1403', '90', 1, 161, 'مسجد قمربنی هاشم', 238, 17, 'اردکان', 'اردکان', 1, NULL, '2025-03-02 08:25:57', NULL),
(748, 5, 481, 374, 'جشن نیمه شعبان', '1403', '60', 4, 152, 'مدرسه شهیدابراهیمی', 238, 17, 'اردکان', 'اردکان', 1, NULL, '2025-03-02 08:25:57', NULL),
(717, 5, 256, 324, 'ولادت امام زمان (عج)', '1403', '30', 5, 20, 'حسینیه', 339, 22, 'کرمانشاه', NULL, 1, NULL, '2025-03-01 09:00:10', NULL),
(411, 5, 474, 325, 'نیمه شعبان', '1403', '360', 1, 500, 'خیابان امام ،جنب مدرسه فروزان رضایی', 54, 6, 'ایوان غرب', NULL, 1, NULL, NULL, NULL),
(722, 5, 44, 326, 'معرفت مهدوی', '1403', '180', 5, 60, 'مسجد حضرت قاسم ابن الحسن', 117, 11, 'تربت حیدریه', NULL, 1, NULL, '2025-03-01 09:02:24', NULL),
(721, 5, 44, 326, 'کلاسداری مهدوی', '1403', '180', 4, 60, 'مسجد حضرت قاسم ابن الحسن', 117, 11, 'تربت حیدریه', NULL, 1, NULL, '2025-03-01 09:02:24', NULL),
(720, 5, 44, 326, 'قرائت دعای ندبه', '1403', '120', 1, 150, 'مسجد حضرت قاسم ابن الحسن', 117, 11, 'تربت حیدریه', NULL, 1, NULL, '2025-03-01 09:02:24', NULL),
(719, 5, 44, 326, 'ایستگاه صلواتی', '1403', '120', 1, 200, 'مسجد حضرت قاسم ابن الحسن', 117, 11, 'تربت حیدریه', NULL, 1, NULL, '2025-03-01 09:02:24', NULL),
(718, 5, 44, 326, 'منبر', '1403', '40', 1, 100, 'مسجد حضرت قاسم ابن الحسن', 117, 11, 'تربت حیدریه', NULL, 1, NULL, '2025-03-01 09:02:24', NULL),
(723, 5, 421, 327, 'ولادت امام زمان', '1403', '240', 4, 50, 'کاشمر،کوهسرخ،روستای پایین دره', 354, 11, NULL, 'پایین دره', 1, NULL, '2025-03-01 09:05:05', NULL),
(724, 5, 319, 328, 'اجتماع قلوب', '1403', '150', 1, 200, 'پایگاه بسیج روستا', 37, 4, 'اصفهان', 'روران', 1, NULL, '2025-03-01 09:06:06', NULL),
(726, 5, 173, 334, 'نیمه شعبان', '1403', '60', 1, 10, 'پیاده روی جمکران', 327, 19, 'قم', 'قم', 1, NULL, '2025-03-01 09:14:03', NULL),
(727, 5, 507, 337, 'نیمه شعبان', '1403', '170', 1, 200, 'حسینیه امام صادق ع', 406, 17, 'اسیر', NULL, 1, NULL, '2025-03-01 09:15:43', NULL),
(742, 5, 64, 339, NULL, '1403', '30', 1, 40, 'مسجد حضرت ابوالفضل ع', 424, 27, 'نکا', 'دوقانلو', 1, NULL, '2025-03-02 08:10:03', NULL),
(728, 5, 103, 340, 'شعبانیه', '1403', '60', 2, 70, 'هیات حضرت علی اصغر علیه السلام', 417, 24, 'مینودشت', 'مینودشت', 1, NULL, '2025-03-01 09:17:52', NULL),
(729, 5, 469, 343, 'جشن نیمه شعبان', '1403', '2', 1, 550, 'حسینیه روستا', 335, 30, 'شیرین سو', 'آقکند', 1, NULL, '2025-03-01 09:20:07', NULL),
(730, 5, 177, 344, 'ایستگاه صلواتی', '1403', '60', NULL, 70, 'سیستان بلوچستان', 189, 16, NULL, 'چاه خدابخش', 1, NULL, '2025-03-01 09:20:30', NULL),
(732, 5, 278, 347, 'شعبان', '1403', '60', 1, 70, 'مسجد', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-01 09:21:52', NULL),
(428, 5, 90, 349, 'جشن نیمه شعبان', '1403', '40', 3, 30, 'منزل', 375, 17, 'اشکنان', 'آبدوان', 1, NULL, NULL, NULL),
(429, 5, 90, 349, 'جشن نیمه شعبان', '1403', '120', 1, 200, 'منزل شخصی', 375, 17, 'اشکنان', 'اشکنان', 1, NULL, NULL, NULL),
(430, 5, 90, 349, 'جشن نیمه شعبان', '1403', '100', 3, 180, 'منزل شخصی', 375, 17, 'اشکنان', 'اشکنان', 1, NULL, NULL, NULL),
(431, 5, 164, 351, 'مراسمات شعبانيه', '1403', '60', 3, 80, 'زینبیه امیرالمؤمنین مسجد قزلناو', 271, 2, 'شاهین دژ', '_', 1, NULL, NULL, NULL),
(432, 5, 74, 352, 'شعبانیه', '1403', '1000', 1, 200, 'ستاد غدیر استان قم', 327, 19, 'قم', NULL, 1, NULL, NULL, NULL),
(733, 5, 359, 353, 'اسباب خوشحالی امام زمان ارواحنا فداه', '1403', '45', 1, 80, 'منزل', 396, 11, 'مشهد مقدس', NULL, 1, NULL, '2025-03-01 09:25:45', NULL),
(743, 5, 116, 354, 'اطعام', '1403', '120', 1, 100, 'سالن کتابخانه امام صادق علیه‌السلام', 430, 17, 'نی ریز', NULL, 1, NULL, '2025-03-02 08:17:46', NULL),
(735, 5, 97, 355, 'مهدویت', '1403', '20', 1, 50, 'مسجد مقدس جمکران', 327, 19, 'جمکران', NULL, 1, NULL, '2025-03-01 09:27:07', NULL),
(744, 5, 35, 361, 'مهدویت رحمت الهی', '1403', '50', 1, 400, 'مسجد', 127, 4, 'عسگران', 'قلعه ناظر', 1, NULL, '2025-03-02 08:20:23', NULL),
(662, 5, 198, 360, 'Dgdg', '1403', '4', 1, 4, 'dfdg', 5, 1, 'erter', NULL, 1, NULL, '2025-02-27 15:20:13', NULL),
(746, 5, 197, 365, 'ظهور', '1403', '60', 1, 5000, 'تبریز زیر پل نصف راه', 115, 1, 'تبریز', NULL, 1, NULL, '2025-03-02 08:22:47', NULL),
(456, 5, 508, 366, 'ایام شعبانیه', '1403', '3', 1, 200, 'مسجد', 411, 2, 'میاندواب', 'فیروزآباد', 1, NULL, NULL, NULL),
(747, 5, 186, 368, NULL, '1403', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-03-02 08:24:08', NULL),
(660, 5, 8, 369, 'امام  زمان و نیمه ی شعبان', '1403', '90', 1, 200, 'ستاد غدیریه', 327, 19, 'قم', NULL, 1, NULL, NULL, NULL),
(750, 5, 225, 376, 'اعیاد شعبانیه', '1403', '200', 1, 100, 'مسجد ومدرسه', 371, 24, 'گنبد کاووس', 'زابل', 1, NULL, '2025-03-02 08:29:45', NULL),
(759, 5, 344, 377, 'دانش افزائی مهدوی(نیمه شعبان)', '1403', '1200', 4, 35, 'مدرسه المنجی', 396, 11, 'مشهدمقدس', 'حاشیه شهر', 1, NULL, '2025-03-02 08:47:11', NULL),
(752, 5, 434, 378, 'نیمه شعبان', '1403', '180', 1, 400, 'مسجد امام حسین علیه السلام', 285, 11, 'صالح آباد', 'روستا ی درخت بید', 1, NULL, '2025-03-02 08:34:20', NULL),
(755, 5, 233, 379, 'برگزاری دوره آموزشی کتاب نگین آفرینش', '1403', '200', 1, 100, 'مسجد و تکیه امام حسین علیه السلام', 338, 21, 'کرمان', NULL, 1, NULL, '2025-03-02 08:37:21', NULL),
(754, 5, 233, 379, 'معارف امام عصر (عج)', '1403', '150', 1, 100, 'مسجد صاحب الزمان(عج)', 338, 21, 'کرمان', NULL, 1, NULL, '2025-03-02 08:37:21', NULL),
(753, 5, 233, 379, 'شیوه های ارتباط با امام عصر(عجل الله تعالی فرجه الشریف)', '1403', '180', 5, 60, 'مسجد صاحب الزمان(عج)', 338, 21, 'کرمان', NULL, 1, NULL, '2025-03-02 08:37:21', NULL),
(757, 5, 509, 382, 'انتظارات امام زمان ازشیعیان', '1403', '300', 2, 50, 'مساجدکرمانشاه', 347, 22, 'کنگاور', NULL, 1, NULL, '2025-03-02 08:45:05', NULL),
(758, 5, 46, 383, 'فضائل ماه شعبان', '1403', '120', 1, 300, 'مسجد', 396, 11, 'مشهد', 'مشهد', 1, NULL, '2025-03-02 08:46:45', NULL),
(469, 5, 171, 384, 'برگزاری موکب', '1403', '12', 1, 1000, 'خیابان انصار', 406, 17, 'گله دار', NULL, 1, NULL, NULL, NULL),
(470, 5, 171, 384, 'پخت غذای نذری', '1403', '8', 1, 300, 'حسینیه پنج تن ال عبا', 406, 17, 'گله دار', NULL, 1, NULL, NULL, NULL),
(471, 5, 154, 385, 'برگزاری جشن', '1403', '3', NULL, 200, 'مسجد', 338, 21, NULL, 'چهارده معصوم', 1, NULL, NULL, NULL),
(760, 5, 297, 388, 'وظایف منتظران', '1403', '60', 4, 50, 'مسجد', 396, 11, 'رضویه', 'خادم اباد', 1, NULL, '2025-03-02 08:51:22', NULL),
(778, 5, 18, 390, 'آذین بندی مسجد ومحله', '1403', '600', 4, 50, 'مسجد محله و اطراف آن', 306, 4, 'مرکزی', 'میلاگرد', 1, NULL, '2025-03-02 09:10:34', NULL),
(772, 5, 330, 392, 'امامت و مهدویت', '1403', '240', 2, 20, 'تهران', 94, 8, 'نسیم شهر', NULL, 1, NULL, '2025-03-02 09:07:24', NULL),
(481, 5, 158, 393, 'برگزاری جشن اعیاد شعبانیه', '1403', '240', 1, 750, 'کانون فرهنگی ومدرسه', 138, 21, 'جیرفت', NULL, 1, NULL, NULL, NULL),
(678, 5, 203, 231, 'وظایف منتظران', '1403', '450', 2, 400, 'کلاسهای فرهنگی و تربیتی زندان مرکزی', 20, 3, 'اردبیل', NULL, 1, NULL, '2025-03-01 07:35:10', NULL),
(771, 5, 423, 394, 'اعیاد شعبانیه', '1403', '120', 1, 120, 'هیت', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-02 09:04:27', NULL),
(770, 5, 423, 394, 'اعیاد شعبانیه', '1403', '360', 1, 30, 'مسجد', 396, 11, NULL, 'کلاته سیدعلی', 1, NULL, '2025-03-02 09:04:27', NULL),
(646, 5, 16, 200, 'جوانی جمعیت', '1403', '1200', 3, 100, 'موکب، جمکران', 327, 19, 'قم', NULL, 1, NULL, NULL, NULL),
(769, 5, 163, 395, 'نقاشی', '1403', '20', NULL, 15, 'مسجدامام رضا علیه السلام', 244, 22, 'سرپل زهاب', 'جلالوندعلیا', 1, NULL, '2025-03-02 09:01:27', NULL),
(768, 5, 163, 395, 'نقاشی کودکان ونوجوانان مهدوی', '1403', '20', 4, 15, 'مسجدامام رضا علیه السلام', 244, 22, 'سرپلزهاب', 'جلالوند علیا', 1, NULL, '2025-03-02 09:01:27', NULL),
(767, 5, 163, 395, '244', '1403', '100', 1, 200, 'مسجد امام رضا علیه السلام', 244, 22, 'سرپل زهاب', 'جلالوندعلیا', 1, NULL, '2025-03-02 09:01:27', NULL),
(766, 5, 163, 395, 'مهدویت', '1403', '100', 1, 200, 'مسجدامام رضا علیه السلام', 244, 22, NULL, 'جلالوندعلیا', 1, NULL, '2025-03-02 09:01:27', NULL),
(765, 5, 163, 395, 'جشن نیمه شعبان', '1403', '100', 1, 200, 'مسجدامام رضا علیه السلام', 244, 22, 'سرپل زهاب', 'جلالوندعلیا', 1, NULL, '2025-03-02 09:01:27', NULL),
(616, 5, 141, 167, 'اطعام', '1403', '1', 4, 270, 'مدرسه', 335, 30, 'کبودراهنگ', 'ن', 1, NULL, NULL, NULL),
(615, 5, 141, 167, 'تزیین محله', '1403', '100', 4, 270, 'مدرسه', 335, 30, 'کبودراهنگ', 'ن', 1, NULL, NULL, NULL),
(675, 5, 259, 224, 'اردوی فرهنگی مهدویت', '1403', '120', 4, 20, 'ساحل دریا.', 104, 29, 'پترسیان', '.', 1, NULL, '2025-03-01 07:16:13', NULL),
(779, 5, 263, 397, 'امام زمان ارواحنا فداه', '1403', '75', 4, 20, 'مدرسه', 157, 26, 'خرم آباد', NULL, 1, NULL, '2025-03-02 09:12:25', NULL),
(780, 5, 385, 398, NULL, '1403', '2', 1, 150, 'مسجد', NULL, 11, 'ملک اباد', 'بازه حوض', 1, NULL, '2025-03-02 09:13:04', NULL),
(511, 5, 185, 401, 'اعیادشعبانیه.جشن ولادت امام زمان علیه السلام', '1403', '120', NULL, 150, 'مدرسه', 125, 30, 'تویسرکان', NULL, 1, NULL, NULL, NULL),
(781, 5, 446, 402, 'شعبان', '1403', '60', 1, 100, 'مسیر امامزاده یحیی بن زید علیهما السلام', 371, 24, 'گنبدکاووس', NULL, 1, NULL, '2025-03-02 09:14:00', NULL),
(516, 5, 402, 405, 'کاروان شادی', '1403', '40', 1, 20, 'خیابان روستا', 246, 11, 'سرخس', 'ابراهیم آباد', 1, NULL, NULL, NULL),
(517, 5, 333, 406, 'ایام شعبانیه', '1403', '60', 1, 100, 'مسجد', 103, 3, 'پارس آباد', 'تکله کندی', 1, '2025-02-17 15:06:23', '2025-02-17 18:36:23', '2025-02-17 15:06:23'),
(782, 5, 429, 409, 'ولادت امام زمان', '1403', '30', 4, 50, 'مسجد', 290, 10, 'طبس', NULL, 1, NULL, '2025-03-02 09:16:30', NULL),
(520, 5, 45, 410, 'نیمه شعبان  (اجتماع قلوب)با استفاده از خلاصه ی سخنرانی اساتید طبسی و فرحزاد و کفیل', '1403', '45', 3, 30, 'مسجد صاحب الزمان عج دهچنار', 227, 21, NULL, 'دهچنار', 1, NULL, NULL, NULL),
(521, 5, 45, 410, 'اضطرار به امام زمان عج و استغاثه به امام زمان و راه ارتباط با امام زمان  و پیمان نامه با امام زمان عج با استفاده از سخنرانی اساتید میر باقری و فرحزاد و هاشمی نژاد و گنجی و حسینی قمی و میر شفیعی', '1403', '90', 3, 30, 'مسجد صاحب الزمان عج دهچنار', 227, 21, NULL, 'دهچنار', 1, NULL, NULL, NULL),
(522, 5, 45, 410, 'ضرورت تبلیغ مهدویت و ویژگی یاران امام زمان عج  با استفاده از سخنرانی اساتید فرخزاد و گنجی', '1403', '45', 3, 30, 'مسجد صاحب الزمان عج', 227, 21, NULL, 'دهچنار', 1, NULL, NULL, NULL),
(523, 5, 405, 412, 'نیمه شعبان', '1403', '120', 3, 160, 'مدرسه', 37, 4, 'اصفهان', 'دهنو', 1, NULL, NULL, NULL),
(524, 5, 514, 414, 'گزارش ماه شعبان', '1403', '50', 3, 50, 'مدرسه', 375, 17, NULL, 'سیدهاشمی علامرودشت', 1, NULL, NULL, NULL),
(525, 5, 25, 415, 'نیمه شعبان', '1403', '50', 4, 32, 'مدرسه', 423, 2, 'نقده', NULL, 1, NULL, NULL, NULL),
(783, 5, 142, 416, 'وظايف منتظران', '1403', '45', 2, 31, 'حسینیه', 327, 19, 'قم', 'قم', 1, NULL, '2025-03-03 06:26:26', NULL),
(786, 5, 114, 417, 'اجتماع قلوب ورابطه دلی باامام زمان', '1403', '40', 1, 300, 'مسجدرکج محله', 380, 25, 'لنگرود', NULL, 1, NULL, '2025-03-03 06:27:05', NULL),
(785, 5, 114, 417, 'شرح زیارت آل یاسین', '1403', '50', 2, 200, 'حسینیه امام حسن مجتبی', 380, 25, 'لنگرود', NULL, 1, NULL, '2025-03-03 06:27:05', NULL),
(784, 5, 114, 417, 'آداب انتظارواجتماع قلوب', '1403', '40', 5, 150, 'حسینیه شهیدامامیها', 380, 25, 'لنگرود', NULL, 1, NULL, '2025-03-03 06:27:05', NULL),
(793, 5, 267, 419, 'مهدویت ۶', '1403', '90', 1, 49, 'مسجد امام رضا علیه السلام', 434, 16, 'ادیمی', 'فتح الله', 1, NULL, '2025-03-03 06:30:24', NULL),
(792, 5, 267, 419, 'مهدویت ۵', '1403', '60', 1, 27, 'مسجد حضرت معصومه علیها سلام', 223, 16, 'زابل', NULL, 1, NULL, '2025-03-03 06:30:24', NULL),
(791, 5, 267, 419, 'مهدویت ۴', '1403', '90', 1, 78, 'مسجد النبی صل الله علیه وآله', 223, 16, 'زابل', NULL, 1, NULL, '2025-03-03 06:30:24', NULL),
(790, 5, 267, 419, 'مهدویت ۳', '1403', '240', 1, 25, 'مسجد حوزه علمیه خواهران', 223, 16, 'زابل', NULL, 1, NULL, '2025-03-03 06:30:24', NULL),
(789, 5, 267, 419, 'مهدویت ۳', '1403', '90', NULL, 38, 'پارک ملت شهدای گمنام', 223, 16, 'زابل', NULL, 1, NULL, '2025-03-03 06:30:24', NULL),
(787, 5, 267, 419, 'مهدویت ۱', '1403', '60', NULL, 45, 'مدرسه', 223, 16, 'زابل', NULL, 1, NULL, '2025-03-03 06:30:24', NULL),
(788, 5, 267, 419, 'مهدویت ۲', '1403', '35', NULL, 51, 'مؤسسه فرهنگی قرآنی خادم الرضا علیه السلام', 223, 16, 'زابل', NULL, 1, NULL, '2025-03-03 06:30:24', NULL),
(796, 5, 304, 420, 'جشن نیمه شعبان', '1403', '140', 1, 100, 'مشهد ،انتهای طبرسی شمالی ۴ ، نظام دوست ۳۲ مسجدالنبی ص', 396, 11, 'محله نظام دوست', NULL, 1, NULL, '2025-03-03 06:32:19', NULL),
(795, 5, 304, 420, 'جشن نیمه شعبان در مدرسه محله', '1403', '60', 4, 350, 'مشهد انتهای طبرسی شمالی ۴ ، نظام دوست ۳۲، مدرسه شهید چراغچی', 396, 11, 'محله نظام دوست', NULL, 1, NULL, '2025-03-03 06:32:19', NULL),
(794, 5, 304, 420, 'جشن ایام شعبان در مسجد', '1403', '45', 1, 40, 'مشهد انتهای طبرسی شمالی ۴ نظامدوست۳۲ مسجدالنبی ص', 396, 11, 'محله نظام دوست', NULL, 1, NULL, '2025-03-03 06:32:19', NULL),
(797, 5, 301, 423, 'انقلاب مهدوی و استکبار ستیزی', '1403', '90', 4, 50, 'مدرسه', 277, 13, 'گوریه', 'شیخ حسین', 1, NULL, '2025-03-03 06:33:42', NULL),
(545, 5, 208, 425, 'برگزاری مراسم نیمه شعبان', '1403', '120', 4, 70, 'سالن شهید حسین شفیعی', 218, 21, 'زهکلوت', 'شهیداباد', 1, NULL, NULL, NULL),
(799, 5, 132, 426, 'امام زمان علیه السلام', '1403', '60', 4, 40, 'مشهد‌.قائم ۳۸.مسجد امام حسین علیه السلام', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-03 06:35:30', NULL),
(777, 5, 18, 390, 'منبر مهدوی', '1403', '300', 1, 200, 'مسجد صاحب الزمان', 306, 4, 'بخش مرکزی', 'میلاگرد', 1, NULL, '2025-03-02 09:10:34', NULL),
(776, 5, 18, 390, 'ایستگاه صلواتی و اطعام', '1403', '200', 1, 1000, 'مسجد صاحب الزمان', 306, 4, 'بخش مرکزی', 'میلاگرد', 1, NULL, '2025-03-02 09:10:34', NULL),
(775, 5, 18, 390, 'برگزاری جشن بزرگ ظهور', '1403', '200', 1, 1000, 'مسجد حضرت صاحب الزمان عج', 306, 4, 'بخش مرکزی', 'میلاگرد', 1, NULL, '2025-03-02 09:10:34', NULL),
(774, 5, 18, 390, 'مهدی شناسی', '1403', '600', NULL, 50, 'پایگاه بسیج', 306, 4, 'فریدون شهر', 'میلاگرد', 1, NULL, '2025-03-02 09:10:34', NULL),
(800, 5, 400, 429, 'جشن شادی نیمه شعبان با شناخت امام زمان', '1403', '60', 4, 500, 'علامه طباطبایی۴۲ مسجد فاطمه الزهرا', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-03 06:37:40', NULL),
(801, 5, 497, 430, 'اعیاد  شعبانیه', '1403', '1', 2, 155, 'مسجد حضرت ابوالفضل', 245, 17, 'کره ای', NULL, 1, NULL, '2025-03-03 06:38:20', NULL),
(650, 5, 184, 202, 'اجتماع قلوب شیعیان (فضیلت انتظارفرج،انجام دادن کارهایی که موردرضایت امام زمان علیه السلام هست انجام دهیم', '1403', '300', NULL, 200, 'مدرسه حضرت رقیه سلام الله علیها', 392, 17, 'مرودشت', NULL, 1, NULL, NULL, NULL),
(802, 5, 305, 431, 'اجتماع قلوب', '1403', '20', 1, 50, 'مسجد', 28, 17, 'استهبان', 'رونیز سفلی', 1, NULL, '2025-03-03 06:38:39', NULL),
(813, 5, 232, 432, 'مهدویت و دهه فجر', '1403', '60', 3, 50, 'حسینیه', 336, 5, 'هفت تیر', 'هفت تیر', 1, NULL, '2025-03-06 10:11:00', NULL),
(812, 5, 232, 432, 'مهدویت و دهه فجر', '1403', '45', 4, 25, 'منزل', 304, 5, 'اهری', 'اهری', 1, NULL, '2025-03-06 10:11:00', NULL),
(811, 5, 232, 432, 'مهدویت ودهه فجر', '1403', '75', 3, 45, 'منزل', 336, 5, 'گلشهر', 'گلشهر', 1, NULL, '2025-03-06 10:11:00', NULL),
(810, 5, 232, 432, 'مهدویت', '1403', '75', 1, 35, 'منزل', 336, 5, 'خاتم', 'خاتم الانبیا', 1, NULL, '2025-03-06 10:11:00', NULL),
(809, 5, 232, 432, 'مهدویت', '1403', '60', 1, 200, 'مسجد الزهرا  س', 336, 5, 'کلاک', NULL, 1, NULL, '2025-03-06 10:11:00', NULL),
(808, 5, 232, 432, 'مهدوت', '1403', '70', 1, 40, 'منزل', 304, 5, 'فردیس', 'طالقانی', 1, NULL, '2025-03-06 10:11:00', NULL),
(807, 5, 232, 432, 'مهدویت', '1403', '60', 3, 30, 'منزل', 336, 5, 'جهان نما', NULL, 1, NULL, '2025-03-06 10:11:00', NULL),
(806, 5, 232, 432, 'مهدویت', '1403', '75', 3, 35, 'منزل', 304, 5, 'مشگین دشت', 'ش صیاد', 1, NULL, '2025-03-06 10:11:00', NULL),
(696, 5, 488, 262, 'نیمه شعبان', '1403', '20', 1, 15, 'مسجد صاحب الزمان عج', 206, 24, 'رامیان', NULL, 1, NULL, '2025-03-01 08:14:56', NULL),
(595, 5, 521, 436, 'اجتماع قلوب', '1403', '90', 2, 15, 'تهران', 435, 8, 'قرچک', NULL, 1, NULL, NULL, NULL),
(659, 5, 7, 437, 'شادی در شادی اهل بیت البته شادی سالم و بدونه گناه', '1403', '60', 1, 500, 'یزد ، رضوانشهر', 448, 31, 'رضوانشهر', NULL, 1, NULL, NULL, NULL),
(630, 5, 418, 187, 'منبر فاطمیه', '1403', '50', 1, 50, 'مفتح20 دار القران امام علی علیه السلام', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(649, 5, 184, 202, 'ویژگی منتظران امام زمان عجل الله تعالی فرجه الشریف', '1403', '60', 4, 30, 'مسجدسلمان فارسی', 392, 17, 'مرودشت', 'مرودشت', 1, NULL, NULL, NULL),
(803, 5, 426, 191, 'فاطمیه', '1403', '25', 3, 3500, 'نمایشگاه کوچه های بني هاشم', 26, 2, 'ارومیه', '۰۰۰۰۰', 1, NULL, '2025-03-03 06:45:55', NULL),
(741, 5, 9, 331, 'اجتماع قلوب', '1403', '270', 1, 40, 'مسجد', 371, 24, NULL, 'ابوذر', 1, NULL, '2025-03-02 08:06:09', NULL),
(670, 5, 261, 216, 'اجتماع قلوب شیعیان', '1403', '80', 5, 100, 'مدرسه نمونه دولتی آزرمی', 29, 30, 'شهر', NULL, 1, NULL, '2025-03-01 07:02:01', NULL),
(814, 5, 232, 432, 'مهدویت', '1403', '65', 5, 60, 'حسینیه', 336, 5, 'استاندارد', 'نوروز آباد', 1, NULL, '2025-03-06 10:11:00', NULL),
(815, 5, 232, 432, 'مهدویت', '1403', '75', 1, 40, 'منزل', 304, 5, 'بنفشه', NULL, 1, NULL, '2025-03-06 10:11:00', NULL),
(818, 5, 51, 322, 'تبلیغ فاطمه برترین بانوی هستی', '1403', '45', NULL, 200, 'نیشابور هیات جنت الزینب سلام الله علیها', 432, 11, 'نیشابور', NULL, 1, NULL, '2025-03-08 08:50:24', NULL),
(820, 5, 249, 440, 'مهدویت', '1403', '120', 1, 200, 'مسجد و حسینیه', 448, 31, 'یزد', NULL, 1, NULL, '2025-03-09 07:57:01', NULL),
(822, 5, 83, 444, NULL, '1403', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-03-09 08:34:23', NULL),
(823, 7, 527, 446, 'ایام غدیریه', '1393', '300', 2, 56, 'اصفهان', 37, 4, 'اصفهان', NULL, 1, NULL, '2025-03-09 08:55:45', NULL),
(825, 3, 234, 450, 'ایام غدیریه_1393', '1403', '300', 1, 100, 'مسجد- حسینیه', 400, 6, 'ایلام', NULL, 1, '2025-03-09 10:46:59', '2025-03-09 14:16:59', '2025-03-09 10:46:59'),
(830, 7, 3, 451, 'غدیریه-1393', '1393', '300', 1, 100, 'ایلام', 400, 6, 'ایلام', NULL, 1, NULL, '2025-03-09 10:53:18', NULL),
(831, 7, 234, 452, 'تبیین ایام غدیریه', '1393', '360', 1, 100, 'مسجد- حسینیه', 400, 6, 'ایلام', NULL, 1, NULL, '2025-03-09 10:57:04', NULL),
(832, 3, 144, 458, 'تبیین ایام غدیریه1393', '1403', '150', 2, 25, 'حوزه', 293, 1, 'آذربایجان شرقی', NULL, 1, '2025-03-10 08:56:03', '2025-03-10 12:26:03', '2025-03-10 08:56:03'),
(833, 7, 144, 459, 'تبیین ایام غدیریه1393', '1393', '150', 2, 24, 'حوزه', 293, 1, 'آذربایجان شرقی', NULL, 1, NULL, '2025-03-10 08:59:39', NULL),
(835, 7, 222, 441, 'غدیریه93', '1393', '450', 2, 160, 'حوزه - مسجد -حسینیه( 3 دوره)', 280, 4, 'شهرضا', NULL, 1, NULL, '2025-03-10 10:13:39', NULL);

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
(88, 29, 'وحید', 'عیسوند', 'مسئول هيأت', 1, '09355918700', NULL, NULL, NULL, NULL, NULL),
(44, 141, 'مجتبی', 'لطیفی', 'هیئت امنا مسجد -هیئت دار و موکب سبدالشهدا', 1, '09483531163', 'کارکنان دولتی هستند و جز هیئت امنا و مسول هیئت سیدالشهدا در اصل هیئت برای خودشان هست و هر سه شنبه هیئت دارند .', NULL, NULL, NULL, NULL),
(49, 38, 'سعید', 'صوفی', 'مبلغ طرح هجرت', 1, '9232629962', NULL, NULL, NULL, NULL, NULL),
(52, 155, 'معصومه', 'الفت', 'مربی', 2, '09147148527', NULL, NULL, NULL, NULL, NULL),
(53, 67, 'فاطمه', 'عباسی', 'مدیریت دارالقرآن', 2, '09137653846', NULL, NULL, NULL, NULL, NULL),
(63, 159, 'جواد', 'قاسمی', 'کانون فرهنگی', 1, '09132779846', NULL, NULL, NULL, NULL, NULL),
(62, 159, 'عادل', 'جلالیان', 'گروه سرود', 1, '09103978570', NULL, NULL, NULL, NULL, NULL),
(64, 21, 'علیرضا', 'شیرعلی', 'مربی صالحین', 1, '09167694478', NULL, NULL, NULL, NULL, NULL),
(82, 25, 'آرزو', 'خندان', 'درامور فرهنگی باهمدگیر فعالیت درهمه زمینه ها داریم', 2, '09146262095', NULL, NULL, NULL, NULL, NULL),
(67, 120, 'لیلا', 'نجفی', 'مدیرمدرسه', 2, '09175460182', 'باهمکاری مدیر مراسمات روانجام میدیم', NULL, NULL, NULL, NULL),
(69, 198, 'ere', 'erer', 'erer', 2, '343', 'eferer', NULL, NULL, NULL, NULL),
(79, 184, 'فاطمه', 'خلیفه', 'رئیس محترم حوزه علمیه فاطمة الزهراسلام الله علیها', 2, '09371391989', 'باسلام واحترام\nایشان هرزمانی نیروی مداح جهت اعزام تبایغ درروستاویاسطح شهرلازم باشدبه بنده حقیرزنگ می زنندودعوت می نمایدندجهت تبلیغ  ودرزمینه تبلیغ همکاری می نمایند', NULL, NULL, NULL, NULL),
(77, 184, 'کیان', 'افروزنسب', 'رئیس واحدفرهنگی کمیته امدادامام خمینی', 1, '09179277140', 'باسلام واحترام\nاقای افروزدرواحدفرهنگی همکاری بابنده رادرجهت تصحیح فرم اقامه نمازواماده سازی کلاسهای اموزشی احکام واجرای برنامه طرح فلاح درمنازل ومحافل نوررادارندکه درطول سال درزمینه مشاوره مذهبی واجرای مراسم دعابه مناسبت شهادت وولادت اهل بیت علیهم السلام وسخنرانی درخدمت نهادکمیته امدادمی باشم و ۲۰سال هست که فعالیت دارم الحمدلله رب العالمین', NULL, NULL, NULL, NULL),
(78, 184, 'سیده زهرا', 'حبیبی', 'مربی طرح امین', 2, '09171266783', 'باسلام واحترام\nسرکارخانم سیده زهراحبیبی جهت اجرای مراسمات مذهبی وتبلیغ نقش واسطه گری جهت تبلیغ ومعرفی بنده درسطح شهرجهت حضوربنده درمراسمات وازنزدیک شاهداجرای برنامه های سخنرانی ومداحی بنده بودندوبرای ایشان اثرگذاربوده واخردعواناان الحمدلله رب العالمین', NULL, NULL, NULL, NULL),
(80, 314, 'محمدرضا', 'نوری', 'سائلین آل یاسین', 1, '09386175690', NULL, NULL, NULL, NULL, NULL),
(81, 314, 'سعید', 'زارعی', 'هیئت حسن بن حیدر', 1, '09193201934', NULL, NULL, NULL, NULL, NULL),
(86, 348, 'برات', 'حیدریار', 'عضو هیئت امناء مسجد', 1, '09159094806', NULL, NULL, NULL, NULL, NULL),
(85, 348, 'مصطفی', 'بهلولی', 'فرمانده پایگاه مسجد', 1, '09158162961', NULL, NULL, NULL, NULL, NULL),
(87, 234, 'حسن', 'خیرالهی', 'هیات امنا', 1, '08432240380', NULL, NULL, NULL, NULL, NULL);

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
  `gender_id` int(11) DEFAULT 1,
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

INSERT INTO `promotions` (`id`, `title`, `year`, `photo`, `comments`, `commitments`, `has_commitment`, `register_status`, `report_status`, `has_course`, `has_tribune`, `status_id`, `gender_id`, `user_count`, `report_count`, `sum_support`, `sum_score`, `course_count`, `tribun_count`, `creator_id`, `editor_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'فاطمیه02', 1402, 'image38751733683779.jpg', 'در فرهنگ عامه، به دهه دوم جمادی‌الاول، از دهم تا بیستم آن ماه که بر اساس روایت ۷۵ روز درگذشت فاطمه در میان آن روزها واقع شده‌است، «دهه اول فاطمیه» و به دهه اول جمادی‌الثانی، از اول تا دهم جمادی‌الثانی که بنا به روایت ۹۵ روز، درگذشت فاطمه در میان این روزها اتفاق افتاده «دهه دوم فاطمیه» می‌گویند.', '\'تعهدات ستاد دارای این مواردمیباشد.در فرهنگ عامه، به دهه دوم جمادی‌الاول، از دهم تا بیستم آن ماه که بر اساس روایت ۷۵ روز درگذشت فاطمه در میان آن روزها واقع شده‌است، «دهه اول فاطمیه» و به دهه اول جمادی‌الثانی، از اول تا دهم جمادی‌الثانی که بنا به روایت ۹۵ روز، درگذشت فاطمه در میان این روزها اتفاق افتاده «دهه دوم فاطمیه» می‌گویند.', 1, 0, 0, 1, 1, 1, 1, 4, 0, 1, NULL, 0, 0, 2, 11, NULL, '2024-12-08 15:19:42', '2025-03-10 10:06:09'),
(2, 'شعبانیه02', 1402, 'image6891733916776.png', 'توضیحات اینجا نوشته می شود', 'بسته فرهنگی\nثبت سابقه تبلیغی', 1, 0, 0, 1, 1, 1, 1, 3, 0, 2, NULL, 0, 0, 1, 11, NULL, '2024-12-11 08:03:50', '2025-03-10 10:05:18'),
(3, 'غدیر یه03', 1403, 'image14661733921765.png', 'زذیدید', NULL, 0, 0, 0, 1, 1, 1, 1, 3, 0, 1, NULL, 0, 0, 1, 11, NULL, '2024-12-11 09:26:08', '2025-03-10 10:06:49'),
(4, 'فاطمیه دوم03', 1403, 'image73001734287754.jpg', 'با سلام \nاجرای حداقل  3 جلسه از فصل 14 و 15  کتاب فاطمه برترین بانوی هستی  توسط مبلغین تا میلاد حضرت فاطمه سلام الله علیها  به صورت منبر یا دوره یا کلاس', 'ارسال رایگان کتاب  برای مبلغین متعهد به ارائه محتوای کتاب \n و قرعه کشی 17 نفر', 1, 0, 0, 1, 1, 1, 1, 77, 94, 3, NULL, 0, 0, 11, 11, NULL, '2024-12-14 08:31:45', '2025-03-10 10:04:39'),
(5, 'شعبانیه03', 1403, 'image1901738391483.jpg', 'فعالیت مبلغان بر اساس محتوای کتاب 👈 اجتماع قلوب شیعیان امر امام زمان  علیه السلام    \nو ارتباط با روایت فَاحضُر یوم الغدیر عند امیرالمؤمنین عليه‌السلام\n‼️👈توضیحات تکمیلی در کانال پیام رسانان غدیریه در ایتا \nhttps://eitaa.com/welayat110', 'بر مبنای ارسال گزارش از طرف مبلغ و  اولویت بانی ، هدیه ای پرداخت می شود . ان شاالله', 1, 0, 0, 1, 1, 1, 1, 349, 269, 0, NULL, 0, 0, 11, 11, NULL, '2025-02-01 03:15:40', '2025-03-10 10:04:10'),
(6, 'غدیریه', 1393, 'image8251741422545.jpeg', '1393', NULL, 0, 0, 0, 1, 0, 1, 2, 0, 0, 0, NULL, 0, 0, 11, NULL, '2025-03-08 05:00:51', '2025-03-08 04:59:09', '2025-03-08 05:00:51'),
(7, 'غدیریه93', 1393, 'image24871741518011.jpeg', 'برگزاری دوره های آموزشی تبیین مناسبت های ایا م غدیریه', 'به ازای هر دوره 110 هزار تومان', 0, 0, 0, 1, 0, 1, 2, 0, 5, 0, NULL, 0, 0, 11, 11, NULL, '2025-03-09 07:30:55', '2025-03-10 10:13:39');

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
(157, 198, 5, 0, 0, NULL, '2025-02-03 18:30:26', '2025-02-03 15:00:26'),
(158, 199, 5, 1, 1, NULL, '2025-02-03 19:58:48', '2025-02-03 16:28:48'),
(159, 200, 5, 0, 0, NULL, '2025-02-04 12:22:30', '2025-02-04 08:52:30'),
(160, 201, 5, 0, 1, NULL, '2025-02-04 13:59:19', '2025-02-04 10:29:19'),
(161, 202, 5, 0, 1, NULL, '2025-02-04 14:04:28', '2025-02-04 10:34:28'),
(162, 203, 5, 0, 1, NULL, '2025-02-04 14:08:20', '2025-02-04 10:38:20'),
(163, 204, 5, 1, 1, NULL, '2025-02-04 14:25:19', '2025-02-04 10:55:19'),
(164, 205, 5, 1, 1, NULL, '2025-02-04 14:28:23', '2025-02-04 10:58:23'),
(165, 206, 5, 1, 1, NULL, '2025-02-04 16:00:37', '2025-02-04 12:30:37'),
(166, 207, 5, 0, 1, NULL, '2025-02-04 16:45:56', '2025-02-04 13:15:56'),
(167, 208, 5, 1, 1, NULL, '2025-02-04 16:57:27', '2025-02-04 13:27:27'),
(168, 209, 5, 1, 1, NULL, '2025-02-04 17:06:51', '2025-02-04 13:36:51'),
(169, 26, 5, 0, 1, NULL, '2025-02-04 17:31:00', '2025-02-04 14:01:00'),
(170, 210, 5, 0, 1, NULL, '2025-02-04 18:36:52', '2025-02-04 15:06:52'),
(171, 40, 5, 0, 1, NULL, '2025-02-04 19:13:27', '2025-02-04 15:43:27'),
(176, 213, 5, 0, 1, NULL, '2025-02-04 20:42:00', '2025-02-04 17:12:00'),
(175, 107, 5, 1, 1, NULL, '2025-02-04 19:54:42', '2025-02-04 16:24:42'),
(177, 165, 5, 0, 0, NULL, '2025-02-05 03:45:15', '2025-02-05 00:15:15'),
(178, 214, 5, 1, 1, NULL, '2025-02-05 04:18:30', '2025-02-05 00:48:30'),
(179, 163, 5, 1, 1, NULL, '2025-02-05 04:18:51', '2025-02-05 00:48:51'),
(180, 119, 5, 1, 0, NULL, '2025-02-05 07:37:43', '2025-02-05 04:07:43'),
(181, 216, 5, 0, 1, NULL, '2025-02-05 08:36:15', '2025-02-05 05:06:15'),
(182, 217, 5, 0, 1, NULL, '2025-02-05 08:51:54', '2025-02-05 05:21:54'),
(183, 218, 5, 1, 0, NULL, '2025-02-05 08:55:37', '2025-02-05 05:25:37'),
(184, 219, 5, 0, 0, NULL, '2025-02-05 09:26:19', '2025-02-05 05:56:19'),
(185, 220, 5, 0, 1, NULL, '2025-02-05 09:56:12', '2025-02-05 06:26:12'),
(186, 221, 5, 1, 1, NULL, '2025-02-05 10:21:31', '2025-02-05 06:51:31'),
(187, 222, 5, 1, 1, NULL, '2025-02-05 10:40:38', '2025-02-05 07:10:38'),
(188, 223, 5, 1, 1, NULL, '2025-02-05 11:02:53', '2025-02-05 07:32:53'),
(189, 225, 5, 1, 1, NULL, '2025-02-05 11:21:16', '2025-02-05 07:51:16'),
(190, 226, 5, 0, 1, NULL, '2025-02-05 12:55:15', '2025-02-05 09:25:15'),
(191, 227, 5, 1, 1, NULL, '2025-02-05 13:48:15', '2025-02-05 10:18:15'),
(192, 228, 5, 1, 1, NULL, '2025-02-05 13:57:12', '2025-02-05 10:27:12'),
(193, 162, 5, 0, 0, NULL, '2025-02-05 14:04:23', '2025-02-05 10:34:23'),
(194, 180, 5, 1, 1, NULL, '2025-02-05 14:07:07', '2025-02-05 10:37:07'),
(195, 229, 5, 1, 1, NULL, '2025-02-05 15:08:20', '2025-02-05 11:38:20'),
(196, 231, 5, 0, 1, NULL, '2025-02-05 17:03:39', '2025-02-05 13:33:39'),
(197, 14, 5, 0, 1, NULL, '2025-02-05 17:09:02', '2025-02-05 13:39:02'),
(198, 232, 5, 1, 1, NULL, '2025-02-05 17:52:49', '2025-02-05 14:22:49'),
(199, 233, 5, 1, 1, NULL, '2025-02-05 19:37:52', '2025-02-05 16:07:52'),
(200, 234, 5, 0, 1, NULL, '2025-02-05 19:40:23', '2025-02-05 16:10:23'),
(201, 30, 5, 1, 1, NULL, '2025-02-05 20:20:09', '2025-02-05 16:50:09'),
(202, 20, 5, 0, 1, NULL, '2025-02-05 20:57:03', '2025-02-05 17:27:03'),
(203, 230, 5, 0, 0, NULL, '2025-02-05 20:59:33', '2025-02-05 17:29:33'),
(204, 192, 5, 0, 0, NULL, '2025-02-06 01:36:32', '2025-02-05 22:06:32'),
(205, 236, 5, 1, 0, NULL, '2025-02-06 04:29:46', '2025-02-06 00:59:46'),
(206, 237, 5, 0, 0, NULL, '2025-02-06 10:28:28', '2025-02-06 06:58:28'),
(207, 238, 5, 1, 0, NULL, '2025-02-06 11:57:38', '2025-02-06 08:27:38'),
(208, 9, 5, 1, 1, NULL, '2025-02-06 12:24:02', '2025-02-06 08:54:02'),
(209, 239, 5, 0, 0, NULL, '2025-02-06 13:00:35', '2025-02-06 09:30:35'),
(210, 243, 5, 1, 1, NULL, '2025-02-06 13:32:23', '2025-02-06 10:02:23'),
(211, 245, 5, 1, 1, NULL, '2025-02-06 13:49:27', '2025-02-06 10:19:27'),
(212, 38, 5, 0, 1, NULL, '2025-02-06 15:25:31', '2025-02-06 11:55:31'),
(213, 246, 5, 0, 0, NULL, '2025-02-06 17:17:35', '2025-02-06 13:47:35'),
(214, 247, 5, 1, 1, NULL, '2025-02-06 18:23:53', '2025-02-06 14:53:53'),
(215, 67, 5, 0, 1, NULL, '2025-02-06 18:40:19', '2025-02-06 15:10:19'),
(216, 248, 5, 0, 1, NULL, '2025-02-06 18:42:02', '2025-02-06 15:12:02'),
(217, 250, 5, 1, 1, NULL, '2025-02-06 18:49:31', '2025-02-06 15:19:31'),
(218, 249, 5, 1, 1, NULL, '2025-02-06 18:49:44', '2025-02-06 15:19:44'),
(219, 34, 5, 0, 1, NULL, '2025-02-06 20:49:30', '2025-02-06 17:19:30'),
(220, 22, 5, 1, 1, NULL, '2025-02-06 21:04:07', '2025-02-06 17:34:07'),
(221, 251, 5, 1, 1, NULL, '2025-02-06 23:03:54', '2025-02-06 19:33:54'),
(226, 253, 5, 0, 0, NULL, '2025-02-07 05:14:54', '2025-02-07 01:44:54'),
(227, 254, 5, 1, 1, NULL, '2025-02-07 08:53:33', '2025-02-07 05:23:33'),
(225, 252, 5, 0, 1, NULL, '2025-02-07 04:32:32', '2025-02-07 01:02:32'),
(228, 134, 5, 1, 1, NULL, '2025-02-07 08:54:52', '2025-02-07 05:24:52'),
(229, 255, 5, 0, 1, NULL, '2025-02-07 09:52:26', '2025-02-07 06:22:26'),
(230, 258, 5, 0, 1, NULL, '2025-02-07 10:43:05', '2025-02-07 07:13:05'),
(231, 260, 5, 1, 1, NULL, '2025-02-07 10:50:30', '2025-02-07 07:20:30'),
(232, 79, 5, 1, 1, NULL, '2025-02-07 10:51:54', '2025-02-07 07:21:54'),
(233, 261, 5, 1, 1, NULL, '2025-02-07 10:57:26', '2025-02-07 07:27:26'),
(234, 263, 5, 1, 1, NULL, '2025-02-07 11:14:58', '2025-02-07 07:44:58'),
(235, 264, 5, 1, 1, NULL, '2025-02-07 11:50:33', '2025-02-07 08:20:33'),
(236, 265, 5, 0, 0, NULL, '2025-02-07 12:09:17', '2025-02-07 08:39:17'),
(237, 266, 5, 0, 1, NULL, '2025-02-07 12:43:08', '2025-02-07 09:13:08'),
(238, 267, 5, 0, 1, NULL, '2025-02-07 13:14:35', '2025-02-07 09:44:35'),
(239, 268, 5, 1, 1, NULL, '2025-02-07 13:44:51', '2025-02-07 10:14:51'),
(240, 269, 5, 1, 1, NULL, '2025-02-07 13:53:02', '2025-02-07 10:23:02'),
(241, 271, 5, 0, 1, NULL, '2025-02-07 14:02:49', '2025-02-07 10:32:49'),
(242, 272, 5, 0, 1, NULL, '2025-02-07 14:16:00', '2025-02-07 10:46:00'),
(243, 256, 5, 1, 1, NULL, '2025-02-07 14:17:47', '2025-02-07 10:47:47'),
(244, 273, 5, 0, 0, NULL, '2025-02-07 14:21:33', '2025-02-07 10:51:33'),
(245, 277, 5, 0, 1, NULL, '2025-02-07 14:55:46', '2025-02-07 11:25:46'),
(246, 279, 5, 0, 1, NULL, '2025-02-07 15:18:41', '2025-02-07 11:48:41'),
(247, 280, 5, 0, 1, NULL, '2025-02-07 15:21:29', '2025-02-07 11:51:29'),
(248, 281, 5, 1, 1, NULL, '2025-02-07 15:23:12', '2025-02-07 11:53:12'),
(249, 282, 5, 1, 1, NULL, '2025-02-07 15:31:33', '2025-02-07 12:01:33'),
(250, 283, 5, 1, 1, NULL, '2025-02-07 15:37:04', '2025-02-07 12:07:04'),
(251, 284, 5, 1, 1, NULL, '2025-02-07 15:48:07', '2025-02-07 12:18:07'),
(252, 259, 5, 0, 0, NULL, '2025-02-07 15:48:37', '2025-02-07 12:18:37'),
(253, 285, 5, 0, 1, NULL, '2025-02-07 15:51:23', '2025-02-07 12:21:23'),
(254, 286, 5, 1, 1, NULL, '2025-02-07 15:58:08', '2025-02-07 12:28:08'),
(255, 287, 5, 0, 1, NULL, '2025-02-07 16:01:52', '2025-02-07 12:31:52'),
(256, 288, 5, 1, 1, NULL, '2025-02-07 16:06:55', '2025-02-07 12:36:55'),
(257, 289, 5, 1, 1, NULL, '2025-02-07 16:24:20', '2025-02-07 12:54:20'),
(258, 290, 5, 0, 0, NULL, '2025-02-07 17:18:31', '2025-02-07 13:48:31'),
(259, 291, 5, 1, 1, NULL, '2025-02-07 17:34:07', '2025-02-07 14:04:07'),
(260, 293, 5, 1, 1, NULL, '2025-02-07 18:23:20', '2025-02-07 14:53:20'),
(261, 55, 5, 1, 1, NULL, '2025-02-07 18:47:39', '2025-02-07 15:17:39'),
(262, 296, 5, 1, 1, NULL, '2025-02-07 19:01:48', '2025-02-07 15:31:48'),
(263, 295, 5, 0, 1, NULL, '2025-02-07 19:06:56', '2025-02-07 15:36:56'),
(264, 297, 5, 1, 1, NULL, '2025-02-07 19:26:47', '2025-02-07 15:56:47'),
(265, 298, 5, 1, 1, NULL, '2025-02-08 02:29:38', '2025-02-07 22:59:38'),
(266, 300, 5, 1, 1, NULL, '2025-02-08 06:23:04', '2025-02-08 02:53:04'),
(267, 301, 5, 0, 1, NULL, '2025-02-08 07:32:17', '2025-02-08 04:02:17'),
(268, 43, 5, 1, 0, NULL, '2025-02-08 07:40:04', '2025-02-08 04:10:04'),
(269, 31, 5, 0, 0, NULL, '2025-02-08 08:24:29', '2025-02-08 04:54:29'),
(270, 302, 5, 1, 1, NULL, '2025-02-08 08:48:30', '2025-02-08 05:18:30'),
(271, 57, 5, 1, 1, NULL, '2025-02-08 08:49:04', '2025-02-08 05:19:04'),
(272, 303, 5, 1, 1, NULL, '2025-02-08 09:02:33', '2025-02-08 05:32:33'),
(273, 304, 5, 0, 1, NULL, '2025-02-08 09:43:23', '2025-02-08 06:13:23'),
(274, 306, 5, 1, 1, NULL, '2025-02-08 09:51:06', '2025-02-08 06:21:06'),
(275, 305, 5, 0, 1, NULL, '2025-02-08 09:51:40', '2025-02-08 06:21:40'),
(276, 308, 5, 1, 1, NULL, '2025-02-08 10:26:48', '2025-02-08 06:56:48'),
(277, 310, 5, 0, 1, NULL, '2025-02-08 10:29:08', '2025-02-08 06:59:08'),
(278, 309, 5, 1, 1, NULL, '2025-02-08 10:33:37', '2025-02-08 07:03:37'),
(279, 39, 5, 1, 1, NULL, '2025-02-08 10:39:10', '2025-02-08 07:09:10'),
(280, 312, 5, 1, 1, NULL, '2025-02-08 10:56:03', '2025-02-08 07:26:03'),
(281, 313, 5, 1, 1, NULL, '2025-02-08 10:57:11', '2025-02-08 07:27:11'),
(282, 275, 5, 1, 1, NULL, '2025-02-08 11:08:52', '2025-02-08 07:38:52'),
(283, 176, 5, 1, 1, NULL, '2025-02-08 11:25:52', '2025-02-08 07:55:52'),
(284, 315, 5, 1, 1, NULL, '2025-02-08 11:51:28', '2025-02-08 08:21:28'),
(285, 83, 5, 0, 0, NULL, '2025-02-08 12:01:17', '2025-02-08 08:31:17'),
(286, 316, 5, 0, 0, NULL, '2025-02-08 12:19:23', '2025-02-08 08:49:23'),
(287, 318, 5, 1, 1, NULL, '2025-02-08 13:18:44', '2025-02-08 09:48:44'),
(288, 320, 5, 1, 1, NULL, '2025-02-08 14:37:32', '2025-02-08 11:07:32'),
(289, 321, 5, 1, 1, NULL, '2025-02-08 14:38:11', '2025-02-08 11:08:11'),
(290, 133, 5, 1, 1, NULL, '2025-02-08 15:48:10', '2025-02-08 12:18:10'),
(291, 323, 5, 0, 1, NULL, '2025-02-08 16:00:04', '2025-02-08 12:30:04'),
(292, 96, 5, 0, 1, NULL, '2025-02-08 16:05:27', '2025-02-08 12:35:27'),
(293, 324, 5, 0, 1, NULL, '2025-02-08 16:34:39', '2025-02-08 13:04:39'),
(294, 45, 5, 0, 0, NULL, '2025-02-08 19:22:51', '2025-02-08 15:52:51'),
(295, 292, 5, 1, 1, NULL, '2025-02-08 19:59:04', '2025-02-08 16:29:04'),
(296, 328, 5, 1, 1, NULL, '2025-02-08 20:48:22', '2025-02-08 17:18:22'),
(297, 90, 5, 0, 1, NULL, '2025-02-09 02:08:09', '2025-02-08 22:38:09'),
(298, 329, 5, 0, 1, NULL, '2025-02-09 04:51:28', '2025-02-09 01:21:28'),
(299, 141, 5, 1, 1, NULL, '2025-02-09 08:00:54', '2025-02-09 04:30:54'),
(300, 333, 5, 0, 1, NULL, '2025-02-09 08:08:32', '2025-02-09 04:38:32'),
(301, 142, 5, 1, 1, NULL, '2025-02-09 08:11:10', '2025-02-09 04:41:10'),
(302, 336, 5, 1, 1, NULL, '2025-02-09 08:16:06', '2025-02-09 04:46:06'),
(303, 338, 5, 1, 1, NULL, '2025-02-09 08:19:22', '2025-02-09 04:49:22'),
(304, 341, 5, 0, 1, NULL, '2025-02-09 08:20:59', '2025-02-09 04:50:59'),
(305, 342, 5, 0, 1, NULL, '2025-02-09 08:23:42', '2025-02-09 04:53:42'),
(306, 337, 5, 1, 1, NULL, '2025-02-09 08:23:48', '2025-02-09 04:53:48'),
(307, 344, 5, 0, 1, NULL, '2025-02-09 08:24:48', '2025-02-09 04:54:48'),
(308, 346, 5, 0, 1, NULL, '2025-02-09 08:29:37', '2025-02-09 04:59:37'),
(309, 347, 5, 1, 1, NULL, '2025-02-09 08:30:34', '2025-02-09 05:00:34'),
(310, 334, 5, 0, 1, NULL, '2025-02-09 08:35:13', '2025-02-09 05:05:13'),
(311, 330, 5, 1, 1, NULL, '2025-02-09 08:41:37', '2025-02-09 05:11:37'),
(312, 351, 5, 1, 1, NULL, '2025-02-09 08:44:00', '2025-02-09 05:14:00'),
(313, 130, 5, 1, 1, NULL, '2025-02-09 08:51:54', '2025-02-09 05:21:54'),
(314, 332, 5, 1, 1, NULL, '2025-02-09 09:04:17', '2025-02-09 05:34:17'),
(315, 359, 5, 0, 1, NULL, '2025-02-09 09:18:41', '2025-02-09 05:48:41'),
(316, 361, 5, 1, 1, NULL, '2025-02-09 09:22:42', '2025-02-09 05:52:42'),
(317, 363, 5, 1, 1, NULL, '2025-02-09 09:25:20', '2025-02-09 05:55:20'),
(318, 364, 5, 1, 1, NULL, '2025-02-09 09:26:07', '2025-02-09 05:56:07'),
(319, 368, 5, 1, 1, NULL, '2025-02-09 09:50:44', '2025-02-09 06:20:44'),
(320, 86, 5, 1, 0, NULL, '2025-02-09 09:56:03', '2025-02-09 06:26:03'),
(321, 47, 5, 0, 1, NULL, '2025-02-09 09:59:02', '2025-02-09 06:29:02'),
(322, 88, 5, 0, 1, NULL, '2025-02-09 10:05:05', '2025-02-09 06:35:05'),
(323, 367, 5, 1, 1, NULL, '2025-02-09 10:19:18', '2025-02-09 06:49:18'),
(324, 52, 5, 0, 1, NULL, '2025-02-09 10:31:53', '2025-02-09 07:01:53'),
(325, 371, 5, 1, 0, NULL, '2025-02-09 10:41:35', '2025-02-09 07:11:35'),
(326, 374, 5, 0, 1, NULL, '2025-02-09 10:50:30', '2025-02-09 07:20:30'),
(327, 375, 5, 0, 1, NULL, '2025-02-09 10:52:41', '2025-02-09 07:22:41'),
(328, 16, 5, 0, 1, NULL, '2025-02-09 11:01:15', '2025-02-09 07:31:15'),
(329, 376, 5, 1, 1, NULL, '2025-02-09 11:01:18', '2025-02-09 07:31:18'),
(330, 100, 5, 1, 1, NULL, '2025-02-09 11:12:12', '2025-02-09 07:42:12'),
(331, 377, 5, 1, 1, NULL, '2025-02-09 11:20:32', '2025-02-09 07:50:32'),
(332, 378, 5, 0, 1, NULL, '2025-02-09 11:22:30', '2025-02-09 07:52:30'),
(333, 379, 5, 1, 1, NULL, '2025-02-09 11:25:19', '2025-02-09 07:55:19'),
(334, 380, 5, 0, 1, NULL, '2025-02-09 11:28:35', '2025-02-09 07:58:35'),
(335, 382, 5, 1, 1, NULL, '2025-02-09 11:35:29', '2025-02-09 08:05:29'),
(336, 383, 5, 0, 1, NULL, '2025-02-09 11:44:02', '2025-02-09 08:14:02'),
(337, 384, 5, 1, 1, NULL, '2025-02-09 11:48:04', '2025-02-09 08:18:04'),
(338, 385, 5, 0, 1, NULL, '2025-02-09 11:51:29', '2025-02-09 08:21:29'),
(339, 387, 5, 0, 1, NULL, '2025-02-09 11:55:35', '2025-02-09 08:25:35'),
(340, 388, 5, 0, 0, NULL, '2025-02-09 11:56:08', '2025-02-09 08:26:08'),
(341, 389, 5, 1, 1, NULL, '2025-02-09 11:59:30', '2025-02-09 08:29:30'),
(342, 390, 5, 0, 1, NULL, '2025-02-09 12:00:37', '2025-02-09 08:30:37'),
(343, 391, 5, 1, 1, NULL, '2025-02-09 12:02:10', '2025-02-09 08:32:10'),
(344, 392, 5, 0, 1, NULL, '2025-02-09 12:02:35', '2025-02-09 08:32:35'),
(345, 393, 5, 0, 1, NULL, '2025-02-09 12:03:27', '2025-02-09 08:33:27'),
(346, 398, 5, 1, 1, NULL, '2025-02-09 12:11:18', '2025-02-09 08:41:18'),
(347, 399, 5, 0, 1, NULL, '2025-02-09 12:22:56', '2025-02-09 08:52:56'),
(348, 401, 5, 1, 1, NULL, '2025-02-09 12:36:21', '2025-02-09 09:06:21'),
(349, 276, 5, 0, 0, NULL, '2025-02-09 12:56:53', '2025-02-09 09:26:53'),
(350, 402, 5, 0, 1, NULL, '2025-02-09 13:12:17', '2025-02-09 09:42:17'),
(351, 174, 5, 1, 1, NULL, '2025-02-09 13:16:49', '2025-02-09 09:46:49'),
(352, 403, 5, 0, 1, NULL, '2025-02-09 13:18:24', '2025-02-09 09:48:24'),
(353, 404, 5, 0, 1, NULL, '2025-02-09 13:22:56', '2025-02-09 09:52:56'),
(354, 405, 5, 1, 1, NULL, '2025-02-09 13:27:21', '2025-02-09 09:57:21'),
(355, 406, 5, 0, 1, NULL, '2025-02-09 13:30:44', '2025-02-09 10:00:44'),
(356, 407, 5, 0, 1, NULL, '2025-02-09 14:20:01', '2025-02-09 10:50:01'),
(357, 97, 5, 0, 1, NULL, '2025-02-09 14:29:13', '2025-02-09 10:59:13'),
(358, 132, 5, 0, 1, NULL, '2025-02-09 14:32:01', '2025-02-09 11:02:01'),
(359, 408, 5, 1, 0, NULL, '2025-02-09 14:32:41', '2025-02-09 11:02:41'),
(360, 411, 5, 0, 1, NULL, '2025-02-09 14:46:37', '2025-02-09 11:16:37'),
(361, 413, 5, 1, 1, NULL, '2025-02-09 14:48:45', '2025-02-09 11:18:45'),
(362, 415, 5, 1, 1, NULL, '2025-02-09 14:53:21', '2025-02-09 11:23:21'),
(363, 91, 5, 0, 1, NULL, '2025-02-09 15:11:16', '2025-02-09 11:41:16'),
(364, 418, 5, 1, 1, NULL, '2025-02-09 15:16:37', '2025-02-09 11:46:37'),
(365, 417, 5, 0, 1, NULL, '2025-02-09 15:17:06', '2025-02-09 11:47:06'),
(366, 420, 5, 0, 0, NULL, '2025-02-09 15:22:43', '2025-02-09 11:52:43'),
(367, 422, 5, 1, 1, NULL, '2025-02-09 15:31:45', '2025-02-09 12:01:45'),
(368, 423, 5, 0, 1, NULL, '2025-02-09 15:37:09', '2025-02-09 12:07:09'),
(369, 421, 5, 0, 1, NULL, '2025-02-09 15:38:44', '2025-02-09 12:08:44'),
(370, 425, 5, 1, 1, NULL, '2025-02-09 16:03:52', '2025-02-09 12:33:52'),
(371, 426, 5, 1, 1, NULL, '2025-02-09 16:09:33', '2025-02-09 12:39:33'),
(372, 427, 5, 0, 1, NULL, '2025-02-09 16:10:34', '2025-02-09 12:40:34'),
(373, 429, 5, 0, 1, NULL, '2025-02-09 16:18:35', '2025-02-09 12:48:35'),
(374, 431, 5, 0, 1, NULL, '2025-02-09 16:39:51', '2025-02-09 13:09:51'),
(375, 432, 5, 0, 1, NULL, '2025-02-09 16:50:23', '2025-02-09 13:20:23'),
(376, 437, 5, 1, 1, NULL, '2025-02-09 17:09:33', '2025-02-09 13:39:33'),
(377, 395, 5, 0, 0, NULL, '2025-02-09 17:14:03', '2025-02-09 13:44:03'),
(378, 438, 5, 1, 1, NULL, '2025-02-09 17:16:22', '2025-02-09 13:46:22'),
(379, 439, 5, 0, 1, NULL, '2025-02-09 17:34:23', '2025-02-09 14:04:23'),
(380, 89, 5, 1, 1, NULL, '2025-02-09 17:54:06', '2025-02-09 14:24:06'),
(381, 101, 5, 1, 1, NULL, '2025-02-09 18:15:00', '2025-02-09 14:45:00'),
(382, 440, 5, 0, 0, NULL, '2025-02-09 18:15:57', '2025-02-09 14:45:57'),
(383, 442, 5, 0, 0, NULL, '2025-02-09 18:43:11', '2025-02-09 15:13:11'),
(384, 436, 5, 1, 1, NULL, '2025-02-09 20:05:40', '2025-02-09 16:35:40'),
(385, 444, 5, 1, 1, NULL, '2025-02-09 20:12:29', '2025-02-09 16:42:29'),
(386, 445, 5, 0, 1, NULL, '2025-02-09 20:54:16', '2025-02-09 17:24:16'),
(387, 446, 5, 0, 1, NULL, '2025-02-10 03:52:23', '2025-02-10 00:22:23'),
(388, 410, 5, 0, 0, NULL, '2025-02-10 04:01:30', '2025-02-10 00:31:30'),
(389, 447, 5, 1, 1, NULL, '2025-02-10 05:16:16', '2025-02-10 01:46:16'),
(390, 448, 5, 0, 1, NULL, '2025-02-10 05:29:31', '2025-02-10 01:59:31'),
(391, 111, 5, 0, 1, NULL, '2025-02-10 05:53:46', '2025-02-10 02:23:46'),
(392, 449, 5, 0, 1, NULL, '2025-02-10 06:14:23', '2025-02-10 02:44:23'),
(395, 372, 5, 0, 0, NULL, '2025-02-10 08:33:15', '2025-02-10 05:03:15'),
(394, 451, 5, 1, 1, NULL, '2025-02-10 08:31:26', '2025-02-10 05:01:26'),
(396, 409, 5, 1, 1, NULL, '2025-02-10 09:18:16', '2025-02-10 05:48:16'),
(397, 452, 5, 0, 1, NULL, '2025-02-10 09:34:52', '2025-02-10 06:04:52'),
(398, 144, 5, 1, 1, NULL, '2025-02-10 09:44:11', '2025-02-10 06:14:11'),
(399, 453, 5, 1, 1, NULL, '2025-02-10 09:49:39', '2025-02-10 06:19:39'),
(400, 386, 5, 1, 1, NULL, '2025-02-10 10:29:08', '2025-02-10 06:59:08'),
(401, 456, 5, 0, 1, NULL, '2025-02-10 10:33:03', '2025-02-10 07:03:03'),
(402, 455, 5, 1, 1, NULL, '2025-02-10 10:42:33', '2025-02-10 07:12:33'),
(403, 370, 5, 1, 1, NULL, '2025-02-10 10:49:41', '2025-02-10 07:19:41'),
(404, 457, 5, 0, 1, NULL, '2025-02-10 10:57:47', '2025-02-10 07:27:47'),
(405, 458, 5, 0, 1, NULL, '2025-02-10 10:58:03', '2025-02-10 07:28:03'),
(406, 459, 5, 1, 0, NULL, '2025-02-10 11:08:30', '2025-02-10 07:38:30'),
(407, 311, 5, 1, 0, NULL, '2025-02-11 12:44:21', '2025-02-11 09:14:21'),
(408, 460, 5, 1, 1, NULL, '2025-02-11 12:50:23', '2025-02-11 09:20:23'),
(409, 348, 5, 0, 1, NULL, '2025-02-11 13:13:59', '2025-02-11 09:43:59'),
(410, 117, 5, 0, 1, NULL, '2025-02-11 14:20:16', '2025-02-11 10:50:16'),
(411, 474, 5, 1, 0, NULL, '2025-02-11 15:52:54', '2025-02-11 12:22:54'),
(412, 123, 5, 0, 1, NULL, '2025-02-11 15:59:39', '2025-02-11 12:29:39'),
(413, 262, 5, 0, 1, NULL, '2025-02-11 16:07:36', '2025-02-11 12:37:36'),
(414, 153, 5, 1, 1, NULL, '2025-02-11 16:20:55', '2025-02-11 12:50:55'),
(415, 477, 5, 0, 1, NULL, '2025-02-11 16:29:09', '2025-02-11 12:59:09'),
(416, 479, 5, 1, 1, NULL, '2025-02-11 16:47:45', '2025-02-11 13:17:45'),
(417, 481, 5, 1, 1, NULL, '2025-02-11 16:51:03', '2025-02-11 13:21:03'),
(418, 483, 5, 1, 1, NULL, '2025-02-11 17:04:06', '2025-02-11 13:34:06'),
(419, 485, 5, 0, 1, NULL, '2025-02-11 17:10:10', '2025-02-11 13:40:10'),
(420, 486, 5, 0, 1, NULL, '2025-02-11 17:20:21', '2025-02-11 13:50:21'),
(421, 487, 5, 0, 0, NULL, '2025-02-11 17:23:39', '2025-02-11 13:53:39'),
(422, 482, 5, 1, 1, NULL, '2025-02-11 17:54:09', '2025-02-11 14:24:09'),
(423, 488, 5, 0, 1, NULL, '2025-02-11 17:55:10', '2025-02-11 14:25:10'),
(424, 150, 5, 1, 1, NULL, '2025-02-11 19:47:08', '2025-02-11 16:17:08'),
(425, 434, 5, 0, 0, NULL, '2025-02-11 20:01:06', '2025-02-11 16:31:06'),
(426, 464, 5, 0, 1, NULL, '2025-02-11 20:16:57', '2025-02-11 16:46:57'),
(427, 494, 5, 0, 1, NULL, '2025-02-12 03:59:00', '2025-02-12 00:29:00'),
(428, 495, 5, 0, 0, NULL, '2025-02-12 04:28:04', '2025-02-12 00:58:04'),
(429, 314, 5, 1, 1, NULL, '2025-02-12 06:51:21', '2025-02-12 03:21:21'),
(430, 498, 5, 1, 1, NULL, '2025-02-12 10:28:13', '2025-02-12 06:58:13'),
(431, 463, 5, 1, 0, NULL, '2025-02-12 16:15:00', '2025-02-12 12:45:00'),
(432, 497, 5, 0, 1, NULL, '2025-02-12 18:15:56', '2025-02-12 14:45:56'),
(433, 499, 5, 1, 0, NULL, '2025-02-12 18:51:48', '2025-02-12 15:21:48'),
(434, 501, 5, 0, 1, NULL, '2025-02-13 03:00:37', '2025-02-12 23:30:37'),
(435, 503, 5, 1, 0, NULL, '2025-02-13 09:48:49', '2025-02-13 06:18:49'),
(436, 504, 5, 1, 1, NULL, '2025-02-13 18:09:45', '2025-02-13 14:39:45'),
(437, 505, 5, 0, 1, NULL, '2025-02-13 21:21:21', '2025-02-13 17:51:21'),
(438, 506, 5, 1, 1, NULL, '2025-02-14 20:18:17', '2025-02-14 16:48:17'),
(439, 470, 5, 0, 1, NULL, '2025-02-15 03:56:14', '2025-02-15 00:26:14'),
(440, 116, 5, 1, 1, NULL, '2025-02-15 09:31:23', '2025-02-15 06:01:23'),
(441, 197, 5, 1, 1, NULL, '2025-02-15 11:18:02', '2025-02-15 07:48:02'),
(442, 473, 5, 0, 0, NULL, '2025-02-15 11:42:00', '2025-02-15 08:12:00'),
(443, 509, 5, 1, 1, NULL, '2025-02-15 16:32:44', '2025-02-15 13:02:44'),
(444, 171, 5, 1, 0, NULL, '2025-02-15 19:56:31', '2025-02-15 16:26:31'),
(445, 512, 5, 1, 1, NULL, '2025-02-16 16:37:30', '2025-02-16 13:07:30'),
(446, 513, 5, 0, 1, NULL, '2025-02-16 20:43:41', '2025-02-16 17:13:41'),
(447, 472, 5, 1, 1, NULL, '2025-02-17 19:48:24', '2025-02-17 16:18:24'),
(448, 326, 5, 0, 1, NULL, '2025-02-17 20:13:05', '2025-02-17 16:43:05'),
(449, 7, 5, 0, 0, NULL, '2025-02-22 12:44:06', '2025-02-22 09:14:06'),
(450, 521, 5, 0, 0, NULL, '2025-02-24 12:51:22', '2025-02-24 09:21:22'),
(451, 518, 5, 1, 1, NULL, '2025-02-25 07:16:37', '2025-02-25 03:46:37');

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
(356, 156, 3, 5, 37),
(357, 158, 1, 5, 199),
(358, 158, 2, 5, 199),
(359, 158, 3, 5, 199),
(360, 158, 4, 5, 199),
(361, 158, 6, 5, 199),
(362, 161, 2, 5, 202),
(363, 162, 1, 5, 203),
(364, 163, 6, 5, 204),
(365, 163, 4, 5, 204),
(366, 163, 3, 5, 204),
(367, 164, 1, 5, 205),
(368, 164, 3, 5, 205),
(369, 164, 4, 5, 205),
(370, 164, 6, 5, 205),
(371, 164, 2, 5, 205),
(372, 165, 4, 5, 206),
(373, 165, 6, 5, 206),
(374, 165, 2, 5, 206),
(375, 165, 1, 5, 206),
(376, 165, 3, 5, 206),
(377, 166, 2, 5, 207),
(378, 167, 3, 5, 208),
(379, 167, 6, 5, 208),
(380, 168, 6, 5, 209),
(381, 168, 1, 5, 209),
(382, 168, 2, 5, 209),
(383, 168, 4, 5, 209),
(384, 170, 1, 5, 210),
(385, 170, 2, 5, 210),
(386, 170, 3, 5, 210),
(387, 170, 4, 5, 210),
(388, 170, 6, 5, 210),
(389, 171, 6, 5, 40),
(401, 175, 6, 5, 107),
(400, 175, 4, 5, 107),
(399, 175, 1, 5, 107),
(402, 176, 4, 5, 213),
(403, 178, 1, 5, 214),
(404, 178, 4, 5, 214),
(405, 178, 6, 5, 214),
(406, 178, 2, 5, 214),
(407, 179, 4, 5, 163),
(408, 179, 6, 5, 163),
(409, 181, 4, 5, 216),
(410, 181, 6, 5, 216),
(411, 184, 1, 5, 219),
(412, 184, 3, 5, 219),
(413, 184, 6, 5, 219),
(414, 184, 4, 5, 219),
(415, 186, 2, 5, 221),
(416, 188, 1, 5, 223),
(417, 188, 4, 5, 223),
(418, 188, 6, 5, 223),
(419, 189, 3, 5, 225),
(420, 189, 4, 5, 225),
(421, 189, 6, 5, 225),
(422, 189, 2, 5, 225),
(423, 189, 1, 5, 225),
(424, 190, 1, 5, 226),
(425, 190, 2, 5, 226),
(426, 190, 4, 5, 226),
(427, 190, 6, 5, 226),
(428, 191, 1, 5, 227),
(429, 191, 2, 5, 227),
(430, 191, 4, 5, 227),
(431, 191, 6, 5, 227),
(432, 192, 1, 5, 228),
(433, 192, 2, 5, 228),
(434, 192, 6, 5, 228),
(435, 193, 4, 5, 162),
(436, 194, 4, 5, 180),
(437, 194, 3, 5, 180),
(438, 194, 6, 5, 180),
(439, 194, 2, 5, 180),
(440, 195, 1, 5, 229),
(441, 195, 2, 5, 229),
(442, 195, 3, 5, 229),
(443, 195, 4, 5, 229),
(444, 195, 6, 5, 229),
(445, 197, 1, 5, 14),
(446, 197, 3, 5, 14),
(447, 198, 1, 5, 232),
(448, 198, 3, 5, 232),
(449, 198, 2, 5, 232),
(450, 199, 1, 5, 233),
(451, 199, 3, 5, 233),
(452, 199, 4, 5, 233),
(453, 199, 6, 5, 233),
(454, 199, 2, 5, 233),
(455, 200, 2, 5, 234),
(456, 201, 3, 5, 30),
(457, 201, 6, 5, 30),
(458, 201, 2, 5, 30),
(459, 201, 4, 5, 30),
(460, 202, 1, 5, 20),
(461, 204, 2, 5, 192),
(462, 205, 2, 5, 236),
(463, 205, 3, 5, 236),
(464, 206, 6, 5, 237),
(465, 207, 1, 5, 238),
(466, 207, 2, 5, 238),
(467, 207, 3, 5, 238),
(468, 207, 4, 5, 238),
(469, 207, 6, 5, 238),
(470, 208, 1, 5, 9),
(471, 208, 2, 5, 9),
(472, 211, 2, 5, 245),
(473, 211, 6, 5, 245),
(474, 211, 4, 5, 245),
(475, 211, 3, 5, 245),
(476, 211, 1, 5, 245),
(477, 212, 2, 5, 38),
(478, 212, 6, 5, 38),
(479, 214, 4, 5, 247),
(480, 215, 4, 5, 67),
(481, 215, 6, 5, 67),
(482, 215, 2, 5, 67),
(483, 216, 1, 5, 248),
(484, 216, 3, 5, 248),
(485, 216, 4, 5, 248),
(486, 216, 6, 5, 248),
(487, 217, 1, 5, 250),
(488, 217, 2, 5, 250),
(489, 217, 3, 5, 250),
(490, 217, 6, 5, 250),
(491, 217, 4, 5, 250),
(492, 218, 6, 5, 249),
(493, 220, 1, 5, 22),
(494, 220, 4, 5, 22),
(495, 221, 1, 5, 251),
(496, 221, 4, 5, 251),
(497, 221, 6, 5, 251),
(498, 221, 2, 5, 251),
(510, 225, 6, 5, 252),
(509, 225, 3, 5, 252),
(508, 225, 1, 5, 252),
(511, 227, 2, 5, 254),
(512, 227, 4, 5, 254),
(513, 228, 1, 5, 134),
(514, 228, 6, 5, 134),
(515, 229, 1, 5, 255),
(516, 229, 3, 5, 255),
(517, 229, 6, 5, 255),
(518, 229, 4, 5, 255),
(519, 230, 6, 5, 258),
(520, 230, 2, 5, 258),
(521, 230, 1, 5, 258),
(522, 231, 1, 5, 260),
(523, 231, 3, 5, 260),
(524, 231, 6, 5, 260),
(525, 232, 2, 5, 79),
(526, 232, 1, 5, 79),
(527, 232, 3, 5, 79),
(528, 232, 4, 5, 79),
(529, 232, 6, 5, 79),
(530, 233, 2, 5, 261),
(531, 233, 1, 5, 261),
(532, 233, 6, 5, 261),
(533, 233, 4, 5, 261),
(534, 234, 1, 5, 263),
(535, 234, 6, 5, 263),
(536, 234, 4, 5, 263),
(537, 235, 6, 5, 264),
(538, 235, 4, 5, 264),
(539, 235, 3, 5, 264),
(540, 235, 2, 5, 264),
(541, 235, 1, 5, 264),
(542, 236, 1, 5, 265),
(543, 236, 6, 5, 265),
(544, 237, 1, 5, 266),
(545, 237, 4, 5, 266),
(546, 237, 6, 5, 266),
(547, 238, 1, 5, 267),
(548, 238, 3, 5, 267),
(549, 239, 1, 5, 268),
(550, 240, 6, 5, 269),
(551, 243, 4, 5, 256),
(552, 243, 6, 5, 256),
(553, 243, 2, 5, 256),
(554, 244, 1, 5, 273),
(555, 244, 3, 5, 273),
(556, 244, 4, 5, 273),
(557, 244, 6, 5, 273),
(558, 245, 1, 5, 277),
(559, 245, 2, 5, 277),
(560, 245, 6, 5, 277),
(561, 247, 1, 5, 280),
(562, 247, 3, 5, 280),
(563, 247, 6, 5, 280),
(564, 249, 1, 5, 282),
(565, 249, 6, 5, 282),
(566, 250, 2, 5, 283),
(567, 250, 3, 5, 283),
(568, 250, 4, 5, 283),
(569, 250, 6, 5, 283),
(570, 251, 1, 5, 284),
(571, 251, 6, 5, 284),
(572, 253, 2, 5, 285),
(573, 253, 1, 5, 285),
(574, 253, 6, 5, 285),
(575, 254, 1, 5, 286),
(576, 254, 2, 5, 286),
(577, 254, 3, 5, 286),
(578, 254, 6, 5, 286),
(579, 254, 4, 5, 286),
(580, 255, 2, 5, 287),
(581, 255, 6, 5, 287),
(582, 255, 3, 5, 287),
(583, 257, 1, 5, 289),
(584, 257, 2, 5, 289),
(585, 257, 6, 5, 289),
(586, 257, 4, 5, 289),
(587, 257, 3, 5, 289),
(588, 258, 6, 5, 290),
(589, 258, 4, 5, 290),
(590, 259, 6, 5, 291),
(591, 259, 1, 5, 291),
(592, 259, 4, 5, 291),
(593, 260, 1, 5, 293),
(594, 260, 2, 5, 293),
(595, 260, 3, 5, 293),
(596, 260, 4, 5, 293),
(597, 260, 6, 5, 293),
(598, 261, 1, 5, 55),
(599, 261, 2, 5, 55),
(600, 261, 3, 5, 55),
(601, 261, 4, 5, 55),
(602, 261, 6, 5, 55),
(603, 262, 6, 5, 296),
(604, 262, 4, 5, 296),
(605, 262, 3, 5, 296),
(606, 263, 2, 5, 295),
(607, 263, 3, 5, 295),
(608, 263, 4, 5, 295),
(609, 263, 6, 5, 295),
(610, 264, 4, 5, 297),
(611, 264, 6, 5, 297),
(612, 264, 1, 5, 297),
(613, 264, 3, 5, 297),
(614, 265, 1, 5, 298),
(615, 265, 2, 5, 298),
(616, 265, 3, 5, 298),
(617, 265, 6, 5, 298),
(618, 266, 1, 5, 300),
(619, 266, 4, 5, 300),
(620, 266, 6, 5, 300),
(621, 267, 3, 5, 301),
(622, 267, 2, 5, 301),
(623, 267, 1, 5, 301),
(624, 267, 4, 5, 301),
(625, 267, 6, 5, 301),
(626, 268, 4, 5, 43),
(627, 268, 6, 5, 43),
(628, 268, 1, 5, 43),
(629, 270, 1, 5, 302),
(630, 270, 6, 5, 302),
(631, 270, 3, 5, 302),
(632, 271, 6, 5, 57),
(633, 271, 3, 5, 57),
(634, 271, 2, 5, 57),
(635, 272, 6, 5, 303),
(636, 272, 4, 5, 303),
(637, 273, 4, 5, 304),
(638, 273, 6, 5, 304),
(639, 274, 4, 5, 306),
(640, 274, 6, 5, 306),
(641, 274, 2, 5, 306),
(642, 275, 3, 5, 305),
(643, 275, 4, 5, 305),
(644, 275, 1, 5, 305),
(645, 276, 6, 5, 308),
(646, 276, 4, 5, 308),
(647, 276, 1, 5, 308),
(648, 278, 4, 5, 309),
(649, 278, 2, 5, 309),
(650, 279, 4, 5, 39),
(651, 279, 6, 5, 39),
(652, 280, 4, 5, 312),
(653, 280, 2, 5, 312),
(654, 281, 1, 5, 313),
(655, 281, 4, 5, 313),
(656, 281, 6, 5, 313),
(657, 282, 1, 5, 275),
(658, 282, 3, 5, 275),
(659, 282, 4, 5, 275),
(660, 282, 6, 5, 275),
(661, 283, 2, 5, 176),
(662, 284, 1, 5, 315),
(663, 284, 3, 5, 315),
(664, 284, 4, 5, 315),
(665, 284, 6, 5, 315),
(666, 286, 1, 5, 316),
(667, 286, 3, 5, 316),
(668, 287, 1, 5, 318),
(669, 287, 3, 5, 318),
(670, 287, 4, 5, 318),
(671, 287, 6, 5, 318),
(672, 287, 2, 5, 318),
(673, 288, 4, 5, 320),
(674, 289, 1, 5, 321),
(675, 289, 6, 5, 321),
(676, 289, 2, 5, 321),
(677, 289, 4, 5, 321),
(678, 290, 4, 5, 133),
(679, 290, 6, 5, 133),
(680, 290, 1, 5, 133),
(681, 292, 1, 5, 96),
(682, 292, 3, 5, 96),
(683, 293, 1, 5, 324),
(684, 295, 2, 5, 292),
(685, 295, 4, 5, 292),
(686, 295, 6, 5, 292),
(687, 295, 1, 5, 292),
(688, 296, 4, 5, 328),
(689, 297, 2, 5, 90),
(690, 297, 3, 5, 90),
(691, 297, 6, 5, 90),
(692, 298, 6, 5, 329),
(693, 298, 2, 5, 329),
(694, 298, 3, 5, 329),
(695, 299, 1, 5, 141),
(696, 299, 2, 5, 141),
(697, 299, 3, 5, 141),
(698, 299, 4, 5, 141),
(699, 299, 6, 5, 141),
(700, 301, 4, 5, 142),
(701, 301, 6, 5, 142),
(702, 302, 3, 5, 336),
(703, 302, 4, 5, 336),
(704, 302, 6, 5, 336),
(705, 303, 2, 5, 338),
(706, 305, 6, 5, 342),
(707, 305, 2, 5, 342),
(708, 306, 2, 5, 337),
(709, 306, 1, 5, 337),
(710, 307, 6, 5, 344),
(711, 309, 4, 5, 347),
(712, 310, 1, 5, 334),
(713, 310, 4, 5, 334),
(714, 311, 6, 5, 330),
(715, 313, 1, 5, 130),
(716, 313, 2, 5, 130),
(717, 313, 4, 5, 130),
(718, 313, 6, 5, 130),
(719, 316, 4, 5, 361),
(720, 316, 6, 5, 361),
(721, 318, 1, 5, 364),
(722, 318, 6, 5, 364),
(723, 318, 2, 5, 364),
(724, 318, 3, 5, 364),
(725, 318, 4, 5, 364),
(726, 319, 1, 5, 368),
(727, 319, 4, 5, 368),
(728, 319, 6, 5, 368),
(729, 320, 1, 5, 86),
(730, 320, 2, 5, 86),
(731, 320, 4, 5, 86),
(732, 323, 3, 5, 367),
(733, 323, 4, 5, 367),
(734, 328, 1, 5, 16),
(735, 328, 6, 5, 16),
(736, 330, 2, 5, 100),
(737, 331, 1, 5, 377),
(738, 331, 2, 5, 377),
(739, 332, 4, 5, 378),
(740, 333, 2, 5, 379),
(741, 333, 3, 5, 379),
(742, 335, 4, 5, 382),
(743, 335, 2, 5, 382),
(744, 335, 1, 5, 382),
(745, 340, 2, 5, 388),
(746, 340, 4, 5, 388),
(747, 340, 6, 5, 388),
(748, 341, 1, 5, 389),
(749, 341, 6, 5, 389),
(750, 343, 1, 5, 391),
(751, 343, 2, 5, 391),
(752, 343, 3, 5, 391),
(753, 343, 6, 5, 391),
(754, 344, 1, 5, 392),
(755, 345, 1, 5, 393),
(756, 348, 2, 5, 401),
(757, 348, 1, 5, 401),
(758, 348, 3, 5, 401),
(759, 350, 4, 5, 402),
(760, 350, 2, 5, 402),
(761, 350, 3, 5, 402),
(762, 351, 1, 5, 174),
(763, 351, 2, 5, 174),
(764, 351, 3, 5, 174),
(765, 351, 4, 5, 174),
(766, 351, 6, 5, 174),
(767, 352, 2, 5, 403),
(768, 354, 2, 5, 405),
(769, 354, 6, 5, 405),
(770, 355, 4, 5, 406),
(771, 355, 6, 5, 406),
(772, 355, 2, 5, 406),
(773, 356, 1, 5, 407),
(774, 356, 4, 5, 407),
(775, 356, 6, 5, 407),
(776, 356, 3, 5, 407),
(777, 356, 2, 5, 407),
(778, 357, 1, 5, 97),
(779, 357, 3, 5, 97),
(780, 357, 4, 5, 97),
(781, 358, 6, 5, 132),
(782, 358, 4, 5, 132),
(783, 358, 2, 5, 132),
(784, 359, 1, 5, 408),
(785, 359, 2, 5, 408),
(786, 359, 4, 5, 408),
(787, 360, 1, 5, 411),
(788, 360, 2, 5, 411),
(789, 360, 3, 5, 411),
(790, 360, 4, 5, 411),
(791, 360, 6, 5, 411),
(792, 361, 1, 5, 413),
(793, 361, 2, 5, 413),
(794, 361, 3, 5, 413),
(795, 361, 4, 5, 413),
(796, 361, 6, 5, 413),
(797, 362, 1, 5, 415),
(798, 362, 3, 5, 415),
(799, 362, 2, 5, 415),
(800, 362, 4, 5, 415),
(801, 362, 6, 5, 415),
(802, 364, 4, 5, 418),
(803, 364, 1, 5, 418),
(804, 367, 1, 5, 422),
(805, 367, 6, 5, 422),
(806, 368, 2, 5, 423),
(807, 368, 6, 5, 423),
(808, 369, 2, 5, 421),
(809, 369, 4, 5, 421),
(810, 369, 6, 5, 421),
(811, 369, 1, 5, 421),
(812, 369, 3, 5, 421),
(813, 371, 1, 5, 426),
(814, 371, 3, 5, 426),
(815, 371, 6, 5, 426),
(816, 371, 4, 5, 426),
(817, 373, 6, 5, 429),
(818, 373, 1, 5, 429),
(819, 374, 1, 5, 431),
(820, 375, 1, 5, 432),
(821, 375, 3, 5, 432),
(822, 375, 6, 5, 432),
(823, 376, 3, 5, 437),
(824, 376, 2, 5, 437),
(825, 377, 3, 5, 395),
(826, 377, 4, 5, 395),
(827, 377, 1, 5, 395),
(828, 377, 2, 5, 395),
(829, 378, 1, 5, 438),
(830, 379, 6, 5, 439),
(831, 379, 1, 5, 439),
(832, 379, 3, 5, 439),
(833, 380, 1, 5, 89),
(834, 380, 2, 5, 89),
(835, 380, 3, 5, 89),
(836, 380, 4, 5, 89),
(837, 380, 6, 5, 89),
(838, 381, 3, 5, 101),
(839, 381, 6, 5, 101),
(840, 381, 1, 5, 101),
(841, 383, 1, 5, 442),
(842, 383, 4, 5, 442),
(843, 383, 6, 5, 442),
(844, 384, 6, 5, 436),
(845, 385, 1, 5, 444),
(846, 385, 4, 5, 444),
(847, 385, 6, 5, 444),
(848, 387, 3, 5, 446),
(849, 388, 6, 5, 410),
(850, 388, 1, 5, 410),
(851, 389, 2, 5, 447),
(852, 389, 4, 5, 447),
(853, 391, 2, 5, 111),
(854, 391, 4, 5, 111),
(855, 392, 2, 5, 449),
(857, 394, 2, 5, 451),
(858, 396, 2, 5, 409),
(859, 396, 3, 5, 409),
(860, 396, 6, 5, 409),
(861, 396, 1, 5, 409),
(862, 398, 1, 5, 144),
(863, 398, 4, 5, 144),
(864, 398, 6, 5, 144),
(865, 398, 3, 5, 144),
(866, 398, 2, 5, 144),
(867, 399, 1, 5, 453),
(868, 399, 2, 5, 453),
(869, 399, 3, 5, 453),
(870, 400, 6, 5, 386),
(871, 400, 1, 5, 386),
(872, 400, 4, 5, 386),
(873, 401, 1, 5, 456),
(874, 402, 1, 5, 455),
(875, 402, 4, 5, 455),
(876, 402, 6, 5, 455),
(877, 403, 1, 5, 370),
(878, 403, 4, 5, 370),
(879, 406, 6, 5, 459),
(880, 406, 2, 5, 459),
(881, 407, 1, 5, 311),
(882, 407, 2, 5, 311),
(883, 407, 3, 5, 311),
(884, 407, 4, 5, 311),
(885, 407, 6, 5, 311),
(886, 408, 1, 5, 460),
(887, 408, 3, 5, 460),
(888, 408, 4, 5, 460),
(889, 408, 6, 5, 460),
(890, 408, 2, 5, 460),
(891, 411, 1, 5, 474),
(892, 411, 2, 5, 474),
(893, 413, 1, 5, 262),
(894, 413, 3, 5, 262),
(895, 413, 6, 5, 262),
(896, 413, 4, 5, 262),
(897, 414, 1, 5, 153),
(898, 414, 6, 5, 153),
(899, 415, 1, 5, 477),
(900, 415, 3, 5, 477),
(901, 415, 6, 5, 477),
(902, 415, 4, 5, 477),
(903, 416, 1, 5, 479),
(904, 416, 3, 5, 479),
(905, 416, 6, 5, 479),
(906, 417, 1, 5, 481),
(907, 417, 3, 5, 481),
(908, 417, 6, 5, 481),
(909, 417, 4, 5, 481),
(910, 417, 2, 5, 481),
(911, 418, 1, 5, 483),
(912, 418, 2, 5, 483),
(913, 418, 3, 5, 483),
(914, 418, 4, 5, 483),
(915, 418, 6, 5, 483),
(916, 419, 1, 5, 485),
(917, 421, 1, 5, 487),
(918, 421, 2, 5, 487),
(919, 421, 6, 5, 487),
(920, 422, 3, 5, 482),
(921, 422, 4, 5, 482),
(922, 423, 4, 5, 488),
(923, 424, 2, 5, 150),
(924, 427, 1, 5, 494),
(925, 427, 4, 5, 494),
(926, 427, 6, 5, 494),
(927, 428, 4, 5, 495),
(928, 428, 1, 5, 495),
(929, 429, 6, 5, 314),
(930, 429, 1, 5, 314),
(931, 430, 1, 5, 498),
(932, 431, 4, 5, 463),
(933, 432, 3, 5, 497),
(934, 433, 1, 5, 499),
(935, 433, 3, 5, 499),
(936, 433, 6, 5, 499),
(937, 433, 4, 5, 499),
(938, 433, 2, 5, 499),
(939, 435, 1, 5, 503),
(940, 436, 1, 5, 504),
(941, 436, 2, 5, 504),
(942, 436, 4, 5, 504),
(943, 436, 6, 5, 504),
(944, 437, 1, 5, 505),
(945, 437, 4, 5, 505),
(946, 438, 1, 5, 506),
(947, 438, 6, 5, 506),
(948, 438, 3, 5, 506),
(949, 438, 4, 5, 506),
(950, 439, 1, 5, 470),
(951, 439, 4, 5, 470),
(952, 440, 1, 5, 116),
(953, 440, 4, 5, 116),
(954, 441, 1, 5, 197),
(955, 441, 2, 5, 197),
(956, 441, 3, 5, 197),
(957, 441, 6, 5, 197),
(958, 441, 4, 5, 197),
(959, 442, 1, 5, 473),
(960, 442, 4, 5, 473),
(961, 442, 6, 5, 473),
(962, 443, 1, 5, 509),
(963, 443, 2, 5, 509),
(964, 443, 3, 5, 509),
(965, 443, 4, 5, 509),
(966, 443, 6, 5, 509),
(967, 444, 1, 5, 171),
(968, 444, 4, 5, 171),
(969, 445, 1, 5, 512),
(970, 445, 3, 5, 512),
(971, 445, 6, 5, 512),
(972, 445, 4, 5, 512),
(973, 446, 2, 5, 513),
(974, 446, 6, 5, 513),
(975, 447, 2, 5, 472),
(976, 447, 1, 5, 472),
(977, 447, 3, 5, 472),
(978, 447, 4, 5, 472),
(979, 447, 6, 5, 472),
(980, 451, 1, 5, 518),
(981, 451, 2, 5, 518),
(982, 451, 3, 5, 518),
(983, 451, 4, 5, 518),
(984, 451, 6, 5, 518);

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
(59, 4, 51, NULL, NULL, 0, 1, 20, NULL, NULL, '2025-03-08 08:50:41', '2024-12-22 11:39:20', '2025-03-08 08:50:41'),
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
(139, NULL, 84, NULL, NULL, 0, -1, 0, NULL, NULL, '2025-02-08 04:03:37', '2025-02-01 15:27:55', '2025-02-08 04:03:37'),
(140, NULL, 84, NULL, NULL, 0, -1, 0, NULL, NULL, '2025-02-08 04:03:29', '2025-02-01 15:30:18', '2025-02-08 04:03:29'),
(141, NULL, 194, NULL, NULL, 0, -1, 0, NULL, NULL, '2025-02-08 04:03:14', '2025-02-01 23:30:19', '2025-02-08 04:03:14'),
(142, 5, 198, NULL, NULL, 0, -1, 0, 198, 11, '2025-02-08 04:00:45', '2025-02-03 19:41:14', '2025-02-08 04:00:45'),
(143, 5, 38, NULL, NULL, 0, 1, 10, 38, 11, NULL, '2025-02-08 04:49:31', '2025-02-23 05:06:40'),
(144, 5, 302, NULL, NULL, 0, 1, 10, 302, 11, NULL, '2025-02-08 05:46:38', '2025-02-23 05:31:16'),
(145, 5, 5, NULL, NULL, 0, -1, 0, 5, NULL, '2025-02-23 07:29:05', '2025-02-08 06:37:02', '2025-02-23 07:29:05'),
(146, 5, 51, 'image86571739070137.jpg###', NULL, 0, -1, 10, 51, 523, '2025-03-08 08:50:46', '2025-02-08 07:13:21', '2025-03-08 08:50:46'),
(147, 5, 310, NULL, NULL, 0, 1, 30, 310, 11, NULL, '2025-02-08 07:13:39', '2025-02-23 07:32:43'),
(148, 5, 79, NULL, NULL, 0, -1, 0, 79, NULL, '2025-02-08 07:16:21', '2025-02-08 07:15:16', '2025-02-08 07:16:21'),
(149, 5, 79, NULL, NULL, 0, 1, 60, 79, 11, NULL, '2025-02-08 07:18:56', '2025-02-24 11:17:05'),
(150, 5, 17, NULL, NULL, 0, -1, 0, 17, NULL, '2025-02-08 07:20:27', '2025-02-08 07:19:53', '2025-02-08 07:20:27'),
(151, 5, 50, NULL, NULL, 0, 1, 30, 50, 12, NULL, '2025-02-08 07:26:26', '2025-02-25 05:16:42'),
(152, 5, 26, 'image31601739014588.jpg###image7271739014599.jpg###image89191739014707.png###image56191739014731.jpg###', NULL, 0, 1, 40, 26, 12, NULL, '2025-02-08 08:03:40', '2025-02-25 08:18:44'),
(153, 5, 316, NULL, NULL, 0, 1, 30, 316, 12, NULL, '2025-02-08 08:37:51', '2025-02-25 08:27:02'),
(154, 5, 5, NULL, NULL, 0, -1, 0, 5, 11, NULL, '2025-02-08 08:49:50', '2025-03-05 10:46:48'),
(155, 5, 23, NULL, NULL, 0, 1, 30, 23, 523, NULL, '2025-02-08 09:40:44', '2025-03-02 07:50:18'),
(156, 5, 313, NULL, NULL, 0, 1, 30, 313, 523, NULL, '2025-02-08 09:47:19', '2025-03-02 07:46:22'),
(157, 5, 43, NULL, NULL, 0, 1, 10, 43, 523, NULL, '2025-02-08 09:56:27', '2025-03-02 07:49:57'),
(158, 5, 320, NULL, NULL, 0, -1, 0, 320, NULL, NULL, '2025-02-08 11:16:36', '2025-02-12 07:25:16'),
(159, 5, 102, NULL, NULL, 0, 1, 10, 102, 523, NULL, '2025-02-08 12:09:42', '2025-03-02 07:45:24'),
(160, 5, 133, NULL, NULL, 0, 1, 30, 133, 12, NULL, '2025-02-08 12:20:13', '2025-02-25 08:41:30'),
(161, 5, 39, NULL, NULL, 0, -1, 0, 39, NULL, NULL, '2025-02-08 13:07:51', '2025-02-09 04:38:12'),
(162, 5, 119, NULL, NULL, 0, 1, 30, 119, 12, NULL, '2025-02-08 14:36:10', '2025-02-25 08:44:39'),
(163, 5, 33, 'image88831739605284.jpg###image83351739605291.jpg###image33521739605298.jpg###image16611739605303.jpg###image75491739605500.jpg###image66721739605519.jpg###image5421739605523.jpg###', NULL, 0, 1, 80, 33, 12, NULL, '2025-02-08 14:53:25', '2025-02-25 09:15:08'),
(164, 5, 327, NULL, NULL, 0, -1, 0, 327, NULL, NULL, '2025-02-08 15:51:41', '2025-02-08 15:51:41'),
(165, 5, 328, NULL, NULL, 0, 1, 30, 328, 12, NULL, '2025-02-08 17:22:36', '2025-02-25 08:54:19'),
(166, 5, 51, NULL, NULL, 0, -1, 30, 51, 523, '2025-03-08 08:50:51', '2025-02-08 23:34:09', '2025-03-08 08:50:51'),
(167, 5, 141, NULL, NULL, 0, 1, 30, 141, 12, NULL, '2025-02-09 04:40:01', '2025-02-25 09:17:54'),
(168, 5, 35, NULL, NULL, 0, -1, 0, 35, NULL, '2025-02-09 04:50:58', '2025-02-09 04:49:51', '2025-02-09 04:50:58'),
(169, 5, 15, NULL, NULL, 0, 1, 150, 15, 12, NULL, '2025-02-09 04:52:47', '2025-02-25 09:08:12'),
(170, 5, 71, NULL, NULL, 0, -1, 0, 71, NULL, NULL, '2025-02-09 04:58:13', '2025-02-09 04:58:13'),
(171, 5, 343, NULL, NULL, 0, 1, 20, 343, 12, NULL, '2025-02-09 04:59:44', '2025-02-25 09:03:43'),
(172, 5, 350, NULL, NULL, 0, -1, 0, 350, NULL, '2025-02-09 05:10:52', '2025-02-09 05:09:56', '2025-02-09 05:10:52'),
(173, 5, 332, NULL, NULL, 0, 1, 10, 332, 12, NULL, '2025-02-09 05:18:11', '2025-02-25 09:16:32'),
(174, 5, 130, NULL, NULL, 0, 1, 10, 130, 12, NULL, '2025-02-09 05:24:11', '2025-02-25 09:23:18'),
(175, 5, 195, NULL, NULL, 0, 0, 0, 195, 12, NULL, '2025-02-09 06:15:27', '2025-02-25 09:32:45'),
(176, 5, 47, NULL, NULL, 0, -1, 0, 47, NULL, NULL, '2025-02-09 06:30:35', '2025-02-09 06:30:35'),
(177, 5, 367, NULL, NULL, 0, -1, 0, 367, NULL, '2025-02-09 06:57:07', '2025-02-09 06:53:51', '2025-02-09 06:57:07'),
(178, 5, 37, NULL, NULL, 0, -1, 10, 37, 11, NULL, '2025-02-09 06:55:33', '2025-02-25 09:43:09'),
(179, 5, 378, NULL, NULL, 0, 1, 10, 378, 11, NULL, '2025-02-09 08:07:36', '2025-02-25 09:43:39'),
(180, 5, 380, NULL, NULL, 0, 1, 30, 380, 11, NULL, '2025-02-09 08:12:09', '2025-02-25 10:01:34'),
(181, 5, 388, NULL, NULL, 0, 1, 10, 388, 11, NULL, '2025-02-09 08:27:48', '2025-02-25 09:50:30'),
(182, 5, 387, NULL, NULL, 0, 1, 10, 387, 11, NULL, '2025-02-09 08:28:16', '2025-02-25 09:52:31'),
(183, 5, 137, NULL, NULL, 0, -1, 0, 137, 11, NULL, '2025-02-09 08:29:17', '2025-02-25 10:00:59'),
(184, 5, 393, NULL, NULL, 0, 1, 10, 393, 11, NULL, '2025-02-09 08:39:22', '2025-02-25 09:46:48'),
(185, 5, 149, NULL, NULL, 0, 1, 10, 149, 11, NULL, '2025-02-09 09:57:40', '2025-02-25 09:53:53'),
(186, 5, 403, NULL, NULL, 0, 1, 20, 403, 11, NULL, '2025-02-09 10:00:19', '2025-02-25 09:54:30'),
(187, 5, 418, NULL, NULL, 0, 1, 30, 418, 11, NULL, '2025-02-09 11:50:29', '2025-02-25 09:55:50'),
(188, 5, 422, NULL, NULL, 0, 1, 10, 422, 11, NULL, '2025-02-09 12:07:07', '2025-02-25 10:02:31'),
(189, 5, 182, NULL, NULL, 0, 1, 10, 182, 11, NULL, '2025-02-09 12:11:52', '2025-02-25 09:56:34'),
(190, 5, 424, NULL, NULL, 0, 1, 10, 424, 11, NULL, '2025-02-09 12:35:07', '2025-02-25 09:57:30'),
(191, 5, 426, NULL, NULL, 0, 1, 60, 426, 523, NULL, '2025-02-09 12:37:27', '2025-03-03 06:45:55'),
(192, 5, 428, NULL, NULL, 0, 1, 10, 428, 11, NULL, '2025-02-09 12:49:22', '2025-02-25 10:03:32'),
(193, 5, 427, NULL, NULL, 0, 1, 10, 427, 11, NULL, '2025-02-09 12:50:16', '2025-02-25 09:58:54'),
(194, 5, 431, NULL, NULL, 0, 1, 10, 431, 11, NULL, '2025-02-09 13:17:30', '2025-02-25 10:57:59'),
(195, 5, 439, NULL, NULL, 0, 1, 30, 439, 11, NULL, '2025-02-09 14:10:13', '2025-02-25 10:08:27'),
(196, 5, 129, NULL, NULL, 0, 1, 30, 129, 11, NULL, '2025-02-09 16:09:45', '2025-02-25 10:09:15'),
(197, 5, 165, NULL, NULL, 0, -1, 0, 165, NULL, NULL, '2025-02-09 16:30:15', '2025-02-12 12:21:28'),
(198, 5, 293, NULL, NULL, 0, 1, 30, 293, 11, NULL, '2025-02-09 17:14:26', '2025-02-25 10:10:06'),
(199, 5, 193, NULL, NULL, 0, 1, 210, 193, 11, NULL, '2025-02-09 18:39:53', '2025-02-25 10:12:54'),
(200, 5, 16, NULL, NULL, 0, -1, 0, 16, 11, NULL, '2025-02-10 01:56:19', '2025-02-25 10:18:37'),
(201, 5, 430, NULL, NULL, 0, 1, 60, 430, 11, NULL, '2025-02-10 02:16:29', '2025-02-25 10:19:31'),
(202, 5, 184, NULL, NULL, 0, -1, 0, 184, 11, NULL, '2025-02-10 02:16:41', '2025-02-25 10:24:06'),
(203, 5, 69, NULL, NULL, 0, 1, 40, 69, 11, NULL, '2025-02-10 04:48:31', '2025-02-25 10:25:09'),
(204, 5, 246, NULL, NULL, 0, 1, 50, 246, 11, NULL, '2025-02-10 05:11:03', '2025-02-25 11:11:05'),
(205, 5, 199, NULL, NULL, 0, 1, 20, 199, 523, NULL, '2025-02-10 05:29:37', '2025-02-25 10:34:45'),
(206, 5, 452, NULL, NULL, 0, 1, 20, 452, 523, NULL, '2025-02-10 06:07:59', '2025-02-25 10:35:45'),
(207, 5, 395, NULL, NULL, 0, -1, 0, 395, NULL, '2025-02-12 16:40:35', '2025-02-10 06:17:00', '2025-02-12 16:40:35'),
(208, 208, 144, 'image50551739652084.jpg###image79231739652099.jpg###image48091739652139.jpg###image42291739652269.jpg###image28981739652484.jpg###image86151739652564.jpg###image98111739652613.jpg###', NULL, 0, 1, 70, 144, NULL, NULL, '2025-02-10 06:19:59', '2025-02-25 10:36:31'),
(209, 5, 283, NULL, NULL, 0, 1, 10, 283, 523, NULL, '2025-02-10 06:48:22', '2025-02-25 10:38:52'),
(210, 5, 386, NULL, NULL, 0, 1, 30, 386, 523, NULL, '2025-02-10 07:00:48', '2025-02-25 10:38:15'),
(211, 5, 456, NULL, NULL, 0, 1, 10, 456, 523, NULL, '2025-02-10 07:01:58', '2025-02-25 10:38:42'),
(212, 5, 371, NULL, NULL, 0, 1, 30, 371, 523, NULL, '2025-02-10 07:16:22', '2025-03-01 06:59:40'),
(213, 5, 284, NULL, NULL, 0, -1, 100, 284, 523, NULL, '2025-02-10 07:29:29', '2025-03-10 09:04:16'),
(214, 5, 459, NULL, NULL, 0, 1, 10, 459, 523, NULL, '2025-02-10 07:39:38', '2025-03-01 06:55:58'),
(215, 5, 174, NULL, NULL, 0, -1, 0, 174, NULL, '2025-02-12 07:41:29', '2025-02-10 07:51:30', '2025-02-12 07:41:29'),
(216, 5, 261, 'image53641739178096.jpg###image66871739178106.jpg###image68281739178136.jpg###image43271739178152.jpg###image12331739178167.jpg###image42121739178194.jpg###image97111739178226.jpg###image58541739179059.jpg###', NULL, 0, 1, 170, 261, 523, NULL, '2025-02-10 08:15:44', '2025-03-01 07:02:01'),
(217, 5, 287, NULL, NULL, 0, -1, 0, 287, NULL, '2025-02-10 08:40:27', '2025-02-10 08:37:32', '2025-02-10 08:40:27'),
(218, 5, 287, NULL, NULL, 0, 1, 50, 287, 523, NULL, '2025-02-10 08:46:41', '2025-03-01 06:56:52'),
(219, 5, 118, NULL, NULL, 0, 1, 10, 118, 523, NULL, '2025-02-10 09:14:14', '2025-03-01 07:06:09'),
(220, 5, 17, 'image32221739200424.jpg###', NULL, 0, 1, 70, 17, 523, NULL, '2025-02-10 09:52:10', '2025-03-01 07:07:21'),
(221, 5, 368, NULL, NULL, 0, 1, 10, 368, 523, NULL, '2025-02-10 10:19:35', '2025-03-01 07:08:28'),
(222, 5, 231, NULL, NULL, 0, 1, 50, 231, 523, NULL, '2025-02-10 11:04:24', '2025-03-01 07:24:18'),
(223, 5, 281, NULL, NULL, 0, 1, 10, 281, 523, NULL, '2025-02-10 12:45:49', '2025-03-01 07:20:54'),
(224, 5, 259, NULL, NULL, 0, 1, 60, 259, 523, NULL, '2025-02-10 12:54:05', '2025-03-01 07:16:13'),
(225, 5, 209, NULL, NULL, 0, 1, 10, 209, 523, NULL, '2025-02-10 14:18:39', '2025-03-01 07:17:00'),
(226, 5, 131, NULL, NULL, 0, -1, 0, 131, NULL, NULL, '2025-02-10 14:19:54', '2025-02-10 14:19:54'),
(227, 5, 191, NULL, NULL, 0, 1, 10, 191, 523, NULL, '2025-02-10 15:36:08', '2025-03-01 07:19:43'),
(228, 5, 5, 'image37121739598797.jpg###image11971739598956.jpg###', 'video17021739598818.mp4###video49351739598969.mp4###', 0, 1, 10, 5, NULL, NULL, '2025-02-10 16:12:20', '2025-02-15 11:37:39'),
(229, 5, 228, NULL, NULL, 0, 1, 10, 228, 11, NULL, '2025-02-10 16:40:38', '2025-03-02 09:07:15'),
(230, 5, 22, NULL, NULL, 0, 1, 10, 22, 523, NULL, '2025-02-10 17:06:02', '2025-03-01 07:29:24'),
(231, 5, 203, 'image97131739603777.jpg###image34641739603810.jpg###image52241739604995.jpg###image56171739605007.jpg###image41061739605091.jpg###image86601739688865.jpg###image87311739688873.jpg###image84591739688911.jpg###image56911739688948.jpg###', NULL, 0, 1, 180, 203, 523, NULL, '2025-02-10 18:37:07', '2025-03-01 07:35:10'),
(232, 5, 276, NULL, NULL, 0, 1, 10, 276, 523, NULL, '2025-02-11 00:22:39', '2025-03-01 07:43:00'),
(233, 5, 24, NULL, NULL, 0, -1, 0, 24, NULL, '2025-02-11 01:58:48', '2025-02-11 01:28:47', '2025-02-11 01:58:48'),
(234, 5, 24, NULL, NULL, 0, -1, 0, 24, NULL, '2025-02-11 01:59:04', '2025-02-11 01:57:16', '2025-02-11 01:59:04'),
(235, 5, 24, NULL, NULL, 0, -1, 0, 24, NULL, '2025-02-11 08:02:08', '2025-02-11 02:00:15', '2025-02-11 08:02:08'),
(236, 5, 24, NULL, NULL, 0, -1, 0, 24, NULL, '2025-02-11 08:02:05', '2025-02-11 02:03:24', '2025-02-11 08:02:05'),
(237, 5, 470, NULL, NULL, 0, -1, 0, 470, NULL, NULL, '2025-02-11 05:20:02', '2025-02-14 23:07:50'),
(238, 5, 122, NULL, NULL, 0, -1, 0, 122, NULL, NULL, '2025-02-11 06:16:06', '2025-02-11 06:16:06'),
(239, 5, 189, NULL, NULL, 0, 1, 10, 189, 523, NULL, '2025-02-11 06:43:39', '2025-03-01 07:43:31'),
(240, 5, 24, NULL, NULL, 0, 1, 50, 24, 523, NULL, '2025-02-11 08:08:05', '2025-03-01 07:45:14'),
(241, 5, 242, NULL, NULL, 0, 1, 30, 242, 523, NULL, '2025-02-11 09:44:59', '2025-03-01 07:46:00'),
(242, 5, 311, NULL, NULL, 0, 1, 10, 311, 523, NULL, '2025-02-11 10:03:19', '2025-03-01 07:46:36'),
(243, 5, 159, NULL, NULL, 0, -1, 0, 159, NULL, '2025-02-11 10:21:58', '2025-02-11 10:16:56', '2025-02-11 10:21:58'),
(244, 5, 159, NULL, NULL, 0, 1, 30, 159, 523, NULL, '2025-02-11 10:27:03', '2025-03-01 07:48:45'),
(245, 5, 50, NULL, NULL, 0, 1, 30, 50, 523, NULL, '2025-02-11 12:01:38', '2025-03-01 07:49:53'),
(246, 5, 324, NULL, NULL, 0, 1, 10, 324, 523, NULL, '2025-02-11 12:10:13', '2025-03-01 07:50:15'),
(247, 5, 282, 'image71771739357237.jpg###image73341739357288.jpg###image64041739357362.jpg###image51891739357401.jpg###image79461739357513.jpg###image67331739357523.jpg###image1721739357568.jpg###image25261739357584.jpg###image67251739357610.jpg###', NULL, 0, 1, 50, 282, 523, NULL, '2025-02-11 12:10:26', '2025-03-01 07:51:48'),
(248, 5, 472, NULL, NULL, 0, -1, 0, 472, NULL, NULL, '2025-02-11 12:10:43', '2025-02-11 12:10:43'),
(249, 5, 356, NULL, NULL, 0, 1, 10, 356, 523, NULL, '2025-02-11 12:11:42', '2025-03-01 07:55:54'),
(250, 5, 51, 'application17301739289246.heic###', NULL, 0, -1, 0, 51, NULL, '2025-03-08 08:50:55', '2025-02-11 12:20:55', '2025-03-08 08:50:55'),
(251, 5, 262, NULL, NULL, 0, 1, 10, 262, 523, NULL, '2025-02-11 12:37:01', '2025-03-01 07:59:31'),
(252, 5, 433, NULL, NULL, 0, 1, 10, 433, 523, NULL, '2025-02-11 12:37:49', '2025-03-01 08:00:01'),
(253, 5, 42, NULL, NULL, 0, -1, 0, 42, NULL, NULL, '2025-02-11 13:06:17', '2025-02-11 13:06:17'),
(254, 5, 30, NULL, NULL, 0, -1, 0, 30, NULL, '2025-02-11 13:17:24', '2025-02-11 13:07:02', '2025-02-11 13:17:24'),
(255, 5, 30, NULL, NULL, 0, -1, 0, 30, NULL, NULL, '2025-02-11 13:11:37', '2025-02-11 13:13:15'),
(256, 5, 30, NULL, NULL, 0, 1, 30, 30, 523, NULL, '2025-02-11 13:17:13', '2025-03-01 08:02:30'),
(257, 5, 480, NULL, NULL, 0, -1, 0, 480, NULL, NULL, '2025-02-11 13:21:31', '2025-02-11 13:21:31'),
(258, 5, 96, NULL, NULL, 0, 1, 60, 96, 523, NULL, '2025-02-11 14:02:49', '2025-03-01 08:04:48'),
(259, 5, 490, NULL, NULL, 0, 1, 50, 490, 523, NULL, '2025-02-11 14:37:58', '2025-03-01 08:07:45'),
(260, 5, 448, NULL, NULL, 0, 1, 10, 448, 523, NULL, '2025-02-11 14:37:59', '2025-03-01 08:08:12'),
(261, 5, 94, NULL, NULL, 0, -1, 0, 94, NULL, '2025-03-04 08:05:14', '2025-02-11 14:58:59', '2025-03-04 08:05:14'),
(262, 5, 488, NULL, NULL, 0, 1, 50, 488, 523, NULL, '2025-02-11 15:04:46', '2025-03-01 08:14:56'),
(263, 5, 94, NULL, NULL, 0, -1, 0, 94, NULL, '2025-03-04 08:05:06', '2025-02-11 15:06:47', '2025-03-04 08:05:06'),
(264, 5, 94, NULL, NULL, 0, -1, 0, 94, NULL, '2025-03-04 08:04:59', '2025-02-11 15:14:01', '2025-03-04 08:04:59'),
(265, 5, 94, NULL, NULL, 0, -1, 0, 94, NULL, '2025-03-04 08:04:56', '2025-02-11 15:16:53', '2025-03-04 08:04:56'),
(266, 5, 94, NULL, NULL, 0, -1, 0, 94, NULL, '2025-03-04 08:04:50', '2025-02-11 15:20:14', '2025-03-04 08:04:50'),
(267, 5, 94, NULL, NULL, 0, -1, 0, 94, NULL, '2025-03-04 08:04:46', '2025-02-11 15:25:07', '2025-03-04 08:04:46'),
(268, 5, 104, NULL, NULL, 0, 1, 10, 104, 523, NULL, '2025-02-11 15:25:49', '2025-03-01 08:16:57'),
(269, 5, 94, NULL, NULL, 0, -1, 0, 94, NULL, '2025-03-04 08:04:40', '2025-02-11 15:27:20', '2025-03-04 08:04:40'),
(270, 5, 94, NULL, NULL, 0, 1, 30, 94, 523, '2025-03-04 08:04:34', '2025-02-11 15:30:01', '2025-03-04 08:04:34'),
(271, 5, 488, NULL, NULL, 0, -1, 0, 488, 488, NULL, '2025-02-11 15:32:01', '2025-02-18 13:41:31'),
(272, 5, 460, NULL, NULL, 0, 1, 10, 460, 523, NULL, '2025-02-11 15:35:45', '2025-03-01 08:17:45'),
(273, 5, 464, NULL, NULL, 0, 1, 10, 464, 523, NULL, '2025-02-11 16:48:38', '2025-03-01 08:18:40'),
(274, 5, 431, 'image41271739305298.jpg###image23061739305351.jpg###image28151739305608.jpg###', 'video28221739305187.mp4###', 0, 1, 80, 431, 11, NULL, '2025-02-11 17:00:00', '2025-02-25 11:05:24'),
(275, 5, 28, 'image6041739306529.jpg###image88461739306714.jpg###', NULL, 0, -1, 0, 28, NULL, NULL, '2025-02-11 17:15:23', '2025-02-11 17:15:23'),
(276, 5, 285, NULL, NULL, 0, 1, 20, 285, 523, NULL, '2025-02-11 17:48:55', '2025-03-01 08:21:35'),
(277, 5, 190, NULL, NULL, 0, -1, 0, 190, NULL, NULL, '2025-02-12 02:04:41', '2025-02-12 02:04:41'),
(278, 5, 56, NULL, NULL, 0, 1, 10, 56, 523, NULL, '2025-02-12 02:23:03', '2025-03-01 08:29:12'),
(279, 5, 24, NULL, NULL, 0, 1, 50, 24, 523, NULL, '2025-02-12 02:26:08', '2025-03-01 08:23:21'),
(280, 5, 297, NULL, NULL, 0, -1, 0, 297, NULL, '2025-02-12 02:54:40', '2025-02-12 02:52:16', '2025-02-12 02:54:40'),
(281, 5, 297, NULL, NULL, 0, -1, 0, 297, NULL, '2025-02-15 17:50:00', '2025-02-12 02:59:24', '2025-02-15 17:50:00'),
(282, 5, 141, NULL, NULL, 0, -1, 0, 141, NULL, NULL, '2025-02-12 03:57:17', '2025-02-12 03:57:17'),
(283, 5, 482, NULL, NULL, 0, 1, 60, 482, 523, NULL, '2025-02-12 06:38:24', '2025-03-01 08:24:58'),
(288, 5, 348, NULL, NULL, 0, 1, 10, 348, 523, NULL, '2025-02-12 07:47:29', '2025-03-01 08:30:47'),
(284, 5, 295, NULL, NULL, 0, 1, 10, 295, 523, NULL, '2025-02-12 07:13:45', '2025-03-01 08:25:17'),
(286, 5, 174, NULL, NULL, 0, -1, 0, 174, NULL, '2025-02-12 07:45:27', '2025-02-12 07:42:24', '2025-02-12 07:45:27'),
(287, 5, 174, NULL, NULL, 0, 1, 60, 174, 523, NULL, '2025-02-12 07:46:20', '2025-03-01 08:27:32'),
(285, 5, 312, NULL, NULL, 0, 1, 80, 312, 523, NULL, '2025-02-12 07:24:57', '2025-03-01 08:26:49'),
(289, 5, 395, NULL, NULL, 0, -1, 0, 395, NULL, '2025-02-12 16:41:34', '2025-02-12 08:10:48', '2025-02-12 16:41:34'),
(290, 5, 196, 'image20651739369480.jpg###', NULL, 0, -1, 0, 196, NULL, NULL, '2025-02-12 10:41:29', '2025-02-12 10:41:29'),
(291, 5, 463, NULL, NULL, 0, 1, 10, 463, 523, NULL, '2025-02-12 12:38:58', '2025-03-01 08:32:13'),
(292, 5, 194, NULL, NULL, 0, 1, 10, 194, 523, NULL, '2025-02-12 12:44:52', '2025-03-01 08:32:48'),
(293, 5, 463, NULL, NULL, 0, 1, 10, 463, 523, NULL, '2025-02-12 12:57:33', '2025-03-01 08:33:14'),
(294, 5, 296, NULL, NULL, 0, 1, 10, 296, 523, NULL, '2025-02-12 13:15:45', '2025-03-01 08:34:49'),
(295, 5, 395, NULL, NULL, 0, 1, 10, 395, 523, NULL, '2025-02-12 16:46:01', '2025-03-01 08:35:30'),
(296, 5, 395, NULL, NULL, 0, 1, 10, 395, 523, NULL, '2025-02-12 17:18:10', '2025-03-01 08:36:01'),
(297, 5, 380, NULL, NULL, 0, 1, 10, 380, 523, NULL, '2025-02-12 17:44:04', '2025-03-01 08:36:22'),
(298, 5, 501, NULL, NULL, 0, 1, 10, 501, 523, NULL, '2025-02-12 23:32:44', '2025-03-01 08:36:46'),
(299, 5, 39, '407', NULL, 0, 1, 100, 39, 523, NULL, '2025-02-12 23:46:46', '2025-03-01 08:38:33'),
(300, 5, 180, NULL, NULL, 0, -1, 0, 180, NULL, NULL, '2025-02-13 02:14:12', '2025-02-13 02:18:09'),
(301, 5, 53, NULL, NULL, 0, -1, 0, 53, NULL, NULL, '2025-02-13 02:15:33', '2025-02-13 02:19:32'),
(302, 5, 457, NULL, NULL, 0, -1, 0, 457, NULL, NULL, '2025-02-13 04:20:24', '2025-02-13 04:20:24'),
(303, 5, 331, NULL, NULL, 0, 1, 30, 331, 11, NULL, '2025-02-13 08:36:35', '2025-03-02 09:09:27'),
(304, 5, 26, 'image58941739448376.jpg###image47371739448417.png###image60721739449202.jpg###image4511739449222.png###image68181739449234.jpg###', 'video45431739449182.mp4###', 0, -1, 0, 26, NULL, NULL, '2025-02-13 08:50:41', '2025-02-13 08:50:41'),
(305, 5, 150, NULL, NULL, 0, -1, 0, 150, NULL, NULL, '2025-02-13 10:53:00', '2025-02-13 10:53:00'),
(306, 5, 377, NULL, NULL, 0, 1, 10, 377, 523, NULL, '2025-02-13 11:44:20', '2025-03-01 08:40:57'),
(307, 5, 27, 'image17981739464744.jpg###image20151739464796.jpg###image32671739464819.jpg###image92151739464833.jpg###image30581739464847.jpg###image85611739464856.jpg###', NULL, 0, 1, 40, 27, 523, NULL, '2025-02-13 13:12:16', '2025-03-01 08:41:29'),
(308, 5, 169, 'image62721739470020.jpg###', 'image69761739470041.jpg###', 0, 1, 20, 169, 523, NULL, '2025-02-13 14:28:29', '2025-03-01 08:45:34'),
(309, 5, 504, NULL, NULL, 0, 1, 10, 504, 523, NULL, '2025-02-13 14:41:36', '2025-03-02 07:57:40'),
(310, 5, 303, NULL, NULL, 0, 1, 100, 303, 523, NULL, '2025-02-13 15:30:44', '2025-03-01 08:48:58'),
(311, 5, 229, NULL, NULL, 0, 1, 60, 229, 523, NULL, '2025-02-13 23:04:24', '2025-03-01 08:50:07'),
(312, 5, 60, NULL, NULL, 0, 1, 10, 60, 523, NULL, '2025-02-13 23:08:11', '2025-03-01 08:50:26'),
(313, 5, 228, NULL, NULL, 0, 1, 10, 228, 523, NULL, '2025-02-14 00:22:36', '2025-03-01 08:50:48'),
(314, 5, 188, NULL, NULL, 0, 1, 20, 188, 523, NULL, '2025-02-14 02:41:47', '2025-03-02 07:58:09'),
(315, 5, 334, NULL, NULL, 0, 1, 10, 334, 523, NULL, '2025-02-14 05:05:44', '2025-03-02 07:54:36'),
(316, 5, 20, 'image40961739523749.jpg###image81831739523783.heic###image77221739523805.jpg###image40291739523939.jpg###image16921739523991.jpg###', NULL, 0, 1, 40, 20, 523, NULL, '2025-02-14 05:36:39', '2025-03-01 08:53:01'),
(317, 5, 309, NULL, NULL, 0, 1, 10, 309, 523, NULL, '2025-02-14 06:01:18', '2025-03-02 07:52:46'),
(318, 5, 111, NULL, NULL, 0, 1, 10, 111, 523, NULL, '2025-02-14 11:32:47', '2025-03-01 08:54:38'),
(319, 5, 101, 'image78141739550867.jpg###', 'video4701739551052.mp4###', 0, 1, 70, 101, 523, NULL, '2025-02-14 12:54:44', '2025-03-01 08:58:30'),
(320, 5, 153, NULL, NULL, 0, 1, 10, 153, 523, NULL, '2025-02-14 12:56:41', '2025-03-02 08:00:10'),
(321, 5, 63, 'image46981739631670.jpg###image26701739631686.jpg###image16541739631697.jpg###', NULL, 0, -1, 0, 63, NULL, NULL, '2025-02-14 13:34:27', '2025-02-15 11:32:22'),
(322, 5, 51, 'image54881739555499.jpg###image84621739555509.jpg###image37041739555514.jpg###image10471739555518.jpg###image86021739555523.jpg###image69861739555528.jpg###', NULL, 0, 1, 40, 51, 523, NULL, '2025-02-14 14:21:14', '2025-03-08 08:50:24'),
(323, 5, 481, 'image87921739556613.jpg###', NULL, 0, -1, 0, 481, NULL, '2025-02-14 14:44:00', '2025-02-14 14:33:27', '2025-02-14 14:44:00'),
(324, 5, 256, NULL, NULL, 0, 1, 10, 256, 523, NULL, '2025-02-14 14:59:29', '2025-03-01 09:00:10'),
(325, 5, 474, NULL, NULL, 0, -1, 0, 474, NULL, NULL, '2025-02-14 15:32:33', '2025-02-14 15:34:00'),
(326, 5, 44, 'image90021739560775.jpg###', NULL, 0, 1, 120, 44, 523, NULL, '2025-02-14 15:52:27', '2025-03-01 09:02:24'),
(327, 5, 421, NULL, NULL, 0, 1, 60, 421, 523, NULL, '2025-02-14 15:59:27', '2025-03-01 09:05:05'),
(328, 5, 319, NULL, NULL, 0, 1, 50, 319, 523, NULL, '2025-02-14 16:23:50', '2025-03-01 09:06:06'),
(329, 5, 20, 'image48621739567314.jpg###image16281739567325.jpg###', NULL, 0, 1, 20, 20, 523, NULL, '2025-02-14 17:39:34', '2025-03-01 09:06:39'),
(330, 5, 470, NULL, NULL, 0, 1, 10, 470, 523, NULL, '2025-02-14 23:10:53', '2025-03-01 09:09:10'),
(331, 5, 9, NULL, NULL, 0, 1, 40, 9, 523, NULL, '2025-02-14 23:31:11', '2025-03-02 08:06:09'),
(332, 5, 5, NULL, NULL, 0, 1, 10, 5, 523, NULL, '2025-02-15 02:44:32', '2025-03-01 09:11:49'),
(333, 5, 195, NULL, NULL, 0, 1, 50, 195, 523, NULL, '2025-02-15 02:53:47', '2025-03-01 09:13:33'),
(334, 5, 173, NULL, NULL, 0, 1, 10, 173, 523, NULL, '2025-02-15 03:40:14', '2025-03-01 09:14:03'),
(335, 5, 40, 'image34351739799261.jpg###', NULL, 0, 1, 30, 40, 523, NULL, '2025-02-15 03:41:26', '2025-03-01 09:14:31'),
(336, 5, 341, NULL, NULL, 0, 1, 30, 341, 523, NULL, '2025-02-15 03:43:28', '2025-03-01 09:15:05'),
(337, 5, 507, NULL, NULL, 0, 1, 30, 507, 523, NULL, '2025-02-15 03:46:01', '2025-03-01 09:15:43'),
(338, 5, 37, NULL, NULL, 0, 1, 10, 37, 523, NULL, '2025-02-15 03:50:12', '2025-03-01 09:16:09'),
(339, 5, 64, 'image23571739604098.jpg###image82021739604102.jpg###image8981739604106.jpg###', NULL, 0, 1, 60, 64, 523, NULL, '2025-02-15 03:51:49', '2025-03-02 08:10:03'),
(340, 5, 103, NULL, NULL, 0, 1, 10, 103, 523, NULL, '2025-02-15 03:57:04', '2025-03-01 09:17:52'),
(341, 5, 213, NULL, 'video25731739604938.mp4###', 0, 1, 40, 213, 523, NULL, '2025-02-15 03:58:02', '2025-03-01 09:18:50'),
(342, 5, 203, NULL, NULL, 0, -1, 0, 203, NULL, '2025-03-04 08:12:45', '2025-02-15 04:18:08', '2025-03-04 08:12:45'),
(343, 5, 469, NULL, NULL, 0, 1, 10, 469, 523, NULL, '2025-02-15 04:22:30', '2025-03-01 09:20:07'),
(344, 5, 177, NULL, NULL, 0, 1, 10, 177, 523, NULL, '2025-02-15 04:26:17', '2025-03-01 09:20:30'),
(345, 5, 229, 'image79201739606174.jpg###image6761739641365.jpg###', 'video6121739641346.mp4###', 0, 1, 50, 229, 523, NULL, '2025-02-15 04:27:10', '2025-03-02 08:13:19'),
(346, 5, 391, NULL, NULL, 0, 1, 10, 391, 523, NULL, '2025-02-15 04:28:24', '2025-03-01 09:21:09'),
(347, 5, 278, NULL, NULL, 0, 1, 20, 278, 523, NULL, '2025-02-15 04:42:01', '2025-03-01 09:21:33'),
(348, 5, 79, NULL, NULL, 0, 1, 20, 79, 523, NULL, '2025-02-15 04:46:50', '2025-03-02 08:13:46'),
(349, 5, 90, NULL, NULL, 0, -1, 0, 90, NULL, NULL, '2025-02-15 04:47:49', '2025-02-15 04:51:12'),
(350, 5, 320, NULL, NULL, 0, 1, 30, 320, 523, NULL, '2025-02-15 04:48:10', '2025-03-01 09:24:43'),
(351, 5, 164, NULL, NULL, 0, -1, 0, 164, NULL, NULL, '2025-02-15 04:54:24', '2025-02-15 04:54:24'),
(352, 5, 74, NULL, NULL, 0, -1, 0, 74, NULL, NULL, '2025-02-15 05:06:06', '2025-02-15 05:06:06'),
(353, 5, 359, NULL, NULL, 0, 1, 10, 359, 523, NULL, '2025-02-15 05:12:15', '2025-03-01 09:25:45'),
(354, 5, 116, NULL, NULL, 0, 1, 30, 116, 523, NULL, '2025-02-15 06:04:24', '2025-03-02 08:17:46'),
(355, 5, 97, NULL, NULL, 0, 1, 10, 97, 523, NULL, '2025-02-15 06:18:16', '2025-03-01 09:27:07'),
(356, 5, 198, 'image91221739613548.png###image7221739613556.png###image8651739613564.png###', NULL, 0, -1, 45, 198, 1, '2025-02-15 06:33:51', '2025-02-15 06:29:27', '2025-02-15 06:33:51'),
(357, 5, 198, 'image29111739613911.png###', NULL, 0, 1, 22, 198, 1, '2025-02-15 06:41:19', '2025-02-15 06:35:14', '2025-02-15 06:41:19'),
(358, 5, 198, NULL, NULL, 0, 1, 0, 198, 1, '2025-02-15 06:46:50', '2025-02-15 06:41:46', '2025-02-15 06:46:50'),
(359, 5, 198, 'image17671739614707.png###image63741739614714.png###image80901739614887.jpg###video37231739614924.mp4###image26791739614931.jpg###image6731739614936.jpg###image99671739614940.jpg###', 'video97941739614851.mp4###', 0, -1, 0, 198, NULL, '2025-02-15 06:53:16', '2025-02-15 06:52:24', '2025-02-15 06:53:16'),
(360, 5, 198, 'image59671739615084.jpg###', NULL, 0, -1, 0, 198, 1, NULL, '2025-02-15 06:54:47', '2025-02-27 15:20:13'),
(361, 5, 35, 'image53201739614999.jpg###image86601739615143.jpg###image35171739615157.jpg###image91851739615334.jpg###', 'video47701739615430.mp4###', 0, 1, 90, 35, 523, NULL, '2025-02-15 07:00:40', '2025-03-02 08:20:23'),
(362, 5, 58, NULL, NULL, 0, 1, 20, 58, 523, NULL, '2025-02-15 07:26:09', '2025-03-01 09:28:01'),
(363, 5, 58, NULL, NULL, 0, -1, 0, 58, NULL, NULL, '2025-02-15 07:28:20', '2025-02-15 07:34:12'),
(364, 5, 58, NULL, NULL, 0, 1, 10, 58, 523, NULL, '2025-02-15 07:35:11', '2025-03-02 08:22:27'),
(365, 5, 197, NULL, NULL, 0, 1, 10, 197, 523, NULL, '2025-02-15 07:50:06', '2025-03-02 08:22:47'),
(366, 5, 508, NULL, NULL, 0, -1, 0, 508, NULL, NULL, '2025-02-15 07:52:21', '2025-02-15 07:52:22'),
(367, 5, 259, NULL, NULL, 0, 1, 10, 259, 523, NULL, '2025-02-15 08:04:50', '2025-03-02 08:23:15'),
(368, 5, 186, NULL, NULL, 0, 1, 120, 186, 523, NULL, '2025-02-15 08:05:15', '2025-03-02 08:24:08'),
(369, 5, 8, NULL, NULL, 0, 1, 30, 8, 11, NULL, '2025-02-15 08:08:18', '2025-02-26 04:52:54'),
(370, 5, 473, NULL, NULL, 0, -1, 0, 473, NULL, '2025-02-15 08:13:34', '2025-02-15 08:12:56', '2025-02-15 08:13:34'),
(371, 5, 473, NULL, NULL, 0, -1, 0, 473, NULL, NULL, '2025-02-15 08:16:05', '2025-02-15 08:18:03'),
(372, 5, 372, NULL, NULL, 0, 1, 20, 372, 523, NULL, '2025-02-15 08:22:37', '2025-03-02 08:24:55'),
(373, 5, 401, NULL, NULL, 0, 1, 10, 401, 523, NULL, '2025-02-15 08:25:23', '2025-03-02 08:25:23'),
(374, 5, 481, 'image63491739635424.jpg###', NULL, 0, 1, 50, 481, 523, NULL, '2025-02-15 09:54:27', '2025-03-02 08:25:57'),
(375, 5, 481, 'image52861739635367.jpg###', NULL, 0, 1, 30, 481, 523, NULL, '2025-02-15 09:56:36', '2025-03-02 08:27:52'),
(376, 5, 225, NULL, NULL, 0, 1, 60, 225, 523, NULL, '2025-02-15 11:30:22', '2025-03-02 08:29:45'),
(377, 5, 344, 'image73671739633090.jpg###image12261739633117.jpg###image90811739633210.jpg###image67661739633366.jpg###image48621739633384.jpg###image2591739633404.jpg###', 'video30341739633437.mp4###', 0, 1, 200, 344, 523, NULL, '2025-02-15 11:34:00', '2025-03-02 08:47:11'),
(378, 5, 434, NULL, NULL, 0, 1, 30, 434, 523, NULL, '2025-02-15 11:56:02', '2025-03-02 08:34:20'),
(379, 5, 233, NULL, NULL, 0, 1, 140, 233, 523, NULL, '2025-02-15 12:02:58', '2025-03-02 08:37:21'),
(380, 5, 344, NULL, NULL, 0, 1, 0, 344, 523, NULL, '2025-02-15 12:11:17', '2025-03-02 08:40:54'),
(381, 5, 32, NULL, NULL, 0, 1, 80, 32, 523, NULL, '2025-02-15 13:05:30', '2025-03-02 08:42:34'),
(382, 5, 509, NULL, NULL, 0, 1, 50, 509, 523, NULL, '2025-02-15 13:09:08', '2025-03-02 08:45:05'),
(383, 5, 46, NULL, NULL, 0, 1, 30, 46, 523, NULL, '2025-02-15 13:31:38', '2025-03-02 08:46:45'),
(384, 5, 171, NULL, NULL, 0, -1, 0, 171, NULL, NULL, '2025-02-15 16:30:34', '2025-02-15 16:30:34'),
(385, 5, 154, NULL, NULL, 0, -1, 0, 154, NULL, NULL, '2025-02-15 16:38:57', '2025-02-15 16:38:57'),
(386, 5, 329, NULL, NULL, 0, 1, 10, 329, 523, NULL, '2025-02-15 17:03:50', '2025-03-02 08:48:50'),
(387, 5, 440, NULL, NULL, 0, 1, 90, 440, 523, NULL, '2025-02-15 17:24:09', '2025-03-02 08:50:05'),
(388, 5, 297, 'image28771739655277.jpg###', NULL, 0, 1, 100, 297, 523, NULL, '2025-02-15 18:07:33', '2025-03-02 08:51:22'),
(389, 5, 49, NULL, NULL, 0, 1, 70, 49, 523, NULL, '2025-02-15 19:19:37', '2025-03-02 08:53:43'),
(390, 5, 18, NULL, NULL, 0, 1, 110, 18, 523, NULL, '2025-02-15 20:49:49', '2025-03-02 09:10:34'),
(391, 5, 330, NULL, NULL, 0, -1, 0, 330, NULL, '2025-02-16 02:29:20', '2025-02-16 02:27:20', '2025-02-16 02:29:20'),
(392, 5, 330, NULL, NULL, 0, 1, 90, 330, 523, NULL, '2025-02-16 02:37:31', '2025-03-02 09:07:24'),
(393, 5, 158, NULL, NULL, 0, -1, 0, 158, NULL, NULL, '2025-02-16 03:04:55', '2025-02-16 03:04:55'),
(394, 5, 423, NULL, NULL, 0, 1, 60, 423, 523, NULL, '2025-02-16 03:55:49', '2025-03-02 09:04:27'),
(395, 5, 163, NULL, NULL, 0, 1, 70, 163, 523, NULL, '2025-02-16 08:13:57', '2025-03-02 09:01:27'),
(396, 5, 406, NULL, NULL, 0, 1, 10, 406, 523, NULL, '2025-02-16 09:54:17', '2025-03-02 09:11:40'),
(397, 5, 263, NULL, NULL, 0, 1, 20, 263, 523, NULL, '2025-02-16 14:03:02', '2025-03-02 09:12:25'),
(398, 5, 385, NULL, NULL, 0, 1, 10, 385, 523, NULL, '2025-02-16 15:38:04', '2025-03-02 09:13:04'),
(399, 5, 68, NULL, NULL, 0, 1, 40, 68, 523, NULL, '2025-02-16 16:33:20', '2025-03-02 09:13:40'),
(400, 5, 513, NULL, NULL, 0, -1, 0, 513, 513, NULL, '2025-02-16 17:11:18', '2025-02-16 17:22:57'),
(401, 5, 185, NULL, NULL, 0, -1, 0, 185, NULL, NULL, '2025-02-16 17:52:57', '2025-02-16 17:52:57'),
(402, 5, 446, NULL, NULL, 0, 1, 10, 446, 523, NULL, '2025-02-17 02:11:23', '2025-03-02 09:14:00'),
(403, 5, 217, NULL, NULL, 0, 1, 10, 217, 523, NULL, '2025-02-17 06:54:03', '2025-03-02 09:14:27'),
(404, 5, 117, NULL, NULL, 0, 1, 10, 117, 523, NULL, '2025-02-17 07:20:19', '2025-03-02 09:14:49'),
(405, 5, 402, NULL, NULL, 0, -1, 0, 402, NULL, NULL, '2025-02-17 15:01:21', '2025-02-17 15:01:21'),
(406, 5, 333, NULL, NULL, 0, -1, 0, 333, NULL, '2025-02-17 15:06:23', '2025-02-17 15:05:33', '2025-02-17 15:06:23'),
(407, 5, 333, 'image66501739818081.jpg###', NULL, 0, 1, 20, 333, 523, NULL, '2025-02-17 15:18:23', '2025-03-02 09:15:57'),
(408, 5, 429, NULL, NULL, 0, -1, 0, 429, NULL, '2025-02-17 15:21:52', '2025-02-17 15:19:33', '2025-02-17 15:21:52'),
(409, 5, 429, NULL, NULL, 0, 1, 20, 429, 523, NULL, '2025-02-17 15:23:42', '2025-03-02 09:16:30'),
(410, 5, 45, NULL, NULL, 0, -1, 0, 45, NULL, NULL, '2025-02-17 15:29:20', '2025-02-17 15:29:20'),
(411, 5, 144, NULL, NULL, 0, 1, 20, 144, 523, NULL, '2025-02-17 16:19:36', '2025-03-03 06:25:08'),
(412, 5, 405, NULL, NULL, 0, -1, 0, 405, NULL, NULL, '2025-02-17 16:21:35', '2025-02-17 16:21:35'),
(413, 5, 57, NULL, NULL, 0, 1, 30, 57, 523, NULL, '2025-02-17 16:26:26', '2025-03-02 09:17:18'),
(414, 5, 514, NULL, NULL, 0, -1, 0, 514, NULL, NULL, '2025-02-17 16:30:07', '2025-02-17 16:30:07'),
(415, 5, 25, NULL, NULL, 0, -1, 0, 25, NULL, NULL, '2025-02-17 16:34:00', '2025-02-17 16:34:00'),
(416, 5, 142, NULL, NULL, 0, 1, 10, 142, 523, NULL, '2025-02-17 16:46:13', '2025-03-03 06:26:26'),
(417, 5, 114, NULL, NULL, 0, 1, 30, 114, 523, NULL, '2025-02-17 16:47:07', '2025-03-03 06:27:05'),
(418, 5, 264, NULL, NULL, 0, 1, 20, 264, 523, NULL, '2025-02-17 17:44:00', '2025-03-03 06:28:35'),
(419, 5, 267, NULL, NULL, 0, 1, 150, 267, 523, NULL, '2025-02-17 18:00:47', '2025-03-03 06:30:24'),
(420, 5, 304, NULL, NULL, 0, 1, 80, 304, 523, NULL, '2025-02-17 19:25:17', '2025-03-03 06:32:19'),
(421, 5, 323, NULL, NULL, 0, 1, 10, 323, 523, NULL, '2025-02-17 23:02:27', '2025-03-03 06:32:43'),
(422, 5, 258, NULL, NULL, 0, 1, 40, 258, 523, NULL, '2025-02-17 23:12:31', '2025-03-03 06:33:14'),
(423, 5, 301, NULL, NULL, 0, 1, 30, 301, 523, NULL, '2025-02-17 23:19:56', '2025-03-03 06:33:42'),
(424, 5, 134, 'image55861739848624.jpg###', NULL, 0, 1, 40, 134, 523, NULL, '2025-02-17 23:39:53', '2025-03-03 06:34:21'),
(425, 5, 208, NULL, NULL, 0, -1, 0, 208, NULL, NULL, '2025-02-18 00:10:12', '2025-02-18 00:10:12'),
(426, 5, 132, NULL, NULL, 0, 1, 10, 132, 523, NULL, '2025-02-18 00:25:34', '2025-03-03 06:34:53'),
(427, 5, 392, NULL, NULL, 0, 1, 10, 392, 523, NULL, '2025-02-18 01:13:56', '2025-03-03 06:36:12'),
(428, 5, 21, NULL, NULL, 0, 1, 10, 21, 523, NULL, '2025-02-18 01:15:27', '2025-03-03 06:37:01'),
(429, 5, 400, NULL, NULL, 0, 1, 10, 400, 523, NULL, '2025-02-18 02:54:33', '2025-03-03 06:37:40'),
(430, 5, 497, NULL, NULL, 0, 1, 10, 497, 523, NULL, '2025-02-18 04:08:50', '2025-03-03 06:38:20'),
(431, 5, 305, NULL, NULL, 0, 1, 10, 305, 523, NULL, '2025-02-18 05:58:52', '2025-03-03 06:38:39'),
(432, 5, 232, NULL, NULL, 0, 1, 200, 232, 523, NULL, '2025-02-18 07:52:07', '2025-03-06 10:11:00'),
(433, 5, 515, NULL, NULL, 0, 1, 10, 515, 523, NULL, '2025-02-18 10:01:07', '2025-03-03 06:39:04'),
(434, 5, 107, NULL, NULL, 0, 1, 20, 107, 11, NULL, '2025-02-22 11:17:55', '2025-02-25 11:54:27'),
(435, 5, 314, NULL, NULL, 0, 1, 30, 314, 12, NULL, '2025-02-23 00:57:30', '2025-02-25 05:19:12'),
(436, 5, 521, NULL, NULL, 0, 1, 30, 521, 11, NULL, '2025-02-24 09:25:43', '2025-02-24 09:29:08'),
(437, 5, 7, 'image62771740478356.jpg###', NULL, 0, 1, 60, 7, 11, NULL, '2025-02-25 06:32:27', '2025-02-25 11:53:04'),
(438, 5, 31, NULL, NULL, 0, 1, 100, 523, NULL, NULL, '2025-03-08 08:32:37', '2025-03-08 08:32:37'),
(439, 5, 88, NULL, NULL, 0, 1, 110, 523, NULL, NULL, '2025-03-09 07:52:13', '2025-03-09 07:52:13'),
(440, 5, 249, NULL, NULL, 0, 1, 30, 523, NULL, NULL, '2025-03-09 07:57:01', '2025-03-09 07:57:01'),
(441, 7, 222, NULL, NULL, 0, 1, 90, 11, 11, NULL, '2025-03-09 08:03:30', '2025-03-10 10:13:39'),
(442, 5, 89, NULL, NULL, 0, 1, 30, 523, NULL, NULL, '2025-03-09 08:11:50', '2025-03-09 08:11:50'),
(443, 5, 91, NULL, NULL, 0, 1, 10, 523, NULL, NULL, '2025-03-09 08:20:19', '2025-03-09 08:20:19'),
(444, 5, 83, NULL, NULL, 0, 1, 330, 523, NULL, NULL, '2025-03-09 08:34:23', '2025-03-09 08:34:23'),
(445, 5, 93, NULL, NULL, 0, 1, 30, 523, NULL, NULL, '2025-03-09 08:52:25', '2025-03-09 08:52:26'),
(446, 7, 527, NULL, NULL, 0, 1, 60, 11, NULL, NULL, '2025-03-09 08:55:45', '2025-03-09 08:55:45'),
(447, 5, 94, NULL, NULL, 0, 1, 50, 523, NULL, NULL, '2025-03-09 09:02:16', '2025-03-09 09:02:16'),
(448, 5, 100, NULL, NULL, 0, 1, 30, 523, NULL, NULL, '2025-03-09 09:11:05', '2025-03-09 09:11:05'),
(449, 5, 55, NULL, NULL, 0, 1, 70, 523, NULL, NULL, '2025-03-09 09:23:52', '2025-03-09 09:23:52'),
(450, 3, 234, NULL, NULL, 0, -1, 60, 11, 11, '2025-03-09 10:46:59', '2025-03-09 10:33:12', '2025-03-09 10:46:59'),
(451, 7, 3, NULL, NULL, 0, 1, 60, 11, 11, NULL, '2025-03-09 10:49:40', '2025-03-09 10:53:18'),
(452, 7, 234, NULL, NULL, 0, 1, 60, 11, NULL, NULL, '2025-03-09 10:57:04', '2025-03-09 10:57:04');
INSERT INTO `promotion_reports` (`id`, `promotion_id`, `promoter_id`, `photos`, `videos`, `status_id`, `confirm_id`, `level_id`, `creator_id`, `editor_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(453, 5, 29, NULL, NULL, 0, 1, 50, 523, NULL, NULL, '2025-03-10 07:20:17', '2025-03-10 07:20:17'),
(454, 5, 109, NULL, NULL, 0, 1, 140, 523, NULL, NULL, '2025-03-10 07:38:57', '2025-03-10 07:38:57'),
(455, 5, 125, NULL, NULL, 0, 1, 60, 523, NULL, NULL, '2025-03-10 07:53:44', '2025-03-10 07:53:44'),
(456, 5, 77, NULL, NULL, 0, 1, 20, 523, NULL, NULL, '2025-03-10 08:18:32', '2025-03-10 08:18:32'),
(457, 5, 204, NULL, NULL, 0, 1, 40, 523, NULL, NULL, '2025-03-10 08:52:31', '2025-03-10 08:52:31'),
(458, 3, 144, NULL, NULL, 0, 1, 30, 526, NULL, '2025-03-10 08:56:03', '2025-03-10 08:55:39', '2025-03-10 08:56:03'),
(459, 7, 144, NULL, NULL, 0, 1, 30, 526, NULL, NULL, '2025-03-10 08:59:39', '2025-03-10 08:59:39');

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
(2, 1, '1403', 10, 2, 6, 'مجله جدید', 304, 'کاروانیها', 5, 'شهر من', 'روستای جدید', 1, '2025-01-05 09:54:39', '2025-02-03 23:00:36', '2025-02-03 23:00:36'),
(23, 1, '1403', 83, 4, 64, NULL, 424, 'اطراف مسجد', 27, 'نکا', 'دوقانلو', 1, NULL, '2025-02-03 23:01:25', '2025-02-03 23:01:25'),
(22, 1, '1403', 83, 4, 64, NULL, 424, 'مسجد', 27, 'نکا', 'دوقانلو', 1, NULL, '2025-02-03 23:01:32', '2025-02-03 23:01:32'),
(21, 2, '1403', 83, 4, 64, NULL, 424, 'منزل', 27, 'نکا', 'دوقانلو', 1, NULL, '2025-02-03 23:01:43', '2025-02-03 23:01:43'),
(6, 4, '1403', 71, 4, 46, 'پخت غذا در خیابان برای عزاداران حضرت فاطمه در خیا بان قائم مشهد او نهم گروهی . یعنی نزدیک 30مسجد هر مسجد یه دیگ  مجزا با همکاری هیات امنای مسجد', 396, 'کنار خیا بان', 11, 'مشهد', 'سیدی خیا بان قائم 30', 1, NULL, '2025-02-03 23:01:55', '2025-02-03 23:01:55'),
(11, 4, '1403', 73, 4, 66, 'پذیرایی آش باهمکاری یکی ازخانواده هابرای ۲۰۰نفرانجام شد', 13, 'مدرسه', 24, 'انبارلوم', 'گوک تپه ۱', 1, NULL, '2025-02-03 23:03:10', '2025-02-03 23:03:10'),
(12, 6, '1403', 73, 4, 66, 'تزیین مدرسه،برگزاری نمایشگاه یاس نبوی ونمایشگاه حجاب ،درمدرسه مختلط دختروپسروهم اهل سنت واهل تشیع هستندمحفل انس باقران', 13, 'مدرسه', 24, 'انبارلوم', 'گوک تپه ۱', 1, NULL, '2025-02-03 23:03:14', '2025-02-03 23:03:14'),
(49, 1, '1403', 84, 4, 80, NULL, 342, 'مسجد', 24, 'کلاله', 'وحدت', 1, NULL, '2025-02-03 23:03:21', '2025-02-03 23:03:21'),
(48, 1, '1403', 84, 4, 80, NULL, 342, 'مسجد', 24, 'کلاله', 'وحدت', 1, NULL, '2025-02-03 23:03:24', '2025-02-03 23:03:24'),
(54, 1, '1403', 85, 4, 82, NULL, 338, 'امام زاده سید محمد', 21, 'کرمان', NULL, 1, NULL, '2025-02-03 23:03:27', '2025-02-03 23:03:27'),
(42, 1, '1403', 90, 4, 78, 'اطعام، کاروان شادی موکب خیابانی', 423, 'گروه بانوان راحیل', 2, NULL, NULL, 1, NULL, '2025-02-03 23:03:44', '2025-02-03 23:03:44'),
(46, 5, '1403', 103, 4, 103, 'د  روز شهادت بانوی دو عالم حضرت فاطمه زهرا سلام الله علیها دسته عزاداری در سطح شهر  فعالیت خوبی داشته است', 417, 'خیابان اصلی شهر', 24, 'مینودشت', 'مینودشت', 1, NULL, '2025-02-03 23:03:57', '2025-02-03 23:03:57'),
(45, 1, '1403', 103, 4, 103, '۴ ایستگاه صلواتی به مدت چهار روز در سطح شهربرگزار گردید', 417, 'پارک شهر', 24, 'مینودشت', 'مینودشت', 1, NULL, '2025-02-03 23:04:00', '2025-02-03 23:04:00'),
(44, 5, '1403', 103, 4, 103, 'دسته عزاداری د ر غروب روز شهادت ررگزار گردید', 358, 'خیابان اصلی', 24, 'گالیکش', 'گالیکش', 1, NULL, '2025-02-03 23:04:10', '2025-02-03 23:04:10'),
(43, 4, '1403', 103, 4, 103, 'اطعام در شب شهادت و روز شهادت بانوی دو عالم حضرت فاطمه زهرا سلام الله علیها در خدمت مومنین بودیم', 417, 'مسجد صاحب الزمان', 24, 'مینودشت', 'مینودشت', 1, NULL, '2025-02-03 23:04:13', '2025-02-03 23:04:13'),
(47, 2, '1403', 107, 4, 29, NULL, 106, 'خانه', 8, 'پارچين', NULL, 1, NULL, '2025-02-03 23:04:27', '2025-02-03 23:04:27'),
(55, 1, '1403', 117, 4, 134, 'موکب خیابانی همراه با سخنرانی و مداحی و پذیرایی که ۳۵۰ الی ۴۰۰ صندلی پر شد', 157, 'چهار راه طیب مقابل مسجد شهید آیت الله مدنی', 26, 'خرم آباد', 'نداشت', 1, NULL, '2025-02-03 23:04:33', '2025-02-03 23:04:33'),
(53, 1, '1403', 85, 4, 82, NULL, 338, 'میدان علی بن ابی طالب علیه السلام', 21, 'کرمان', NULL, 1, NULL, '2025-02-03 23:04:43', '2025-02-03 23:04:43'),
(193, 1, '1403', 360, 5, 198, 'Hdkjdknc', 31, 'Hdjdkc', 1, 'Cxkjdkc', NULL, 1, NULL, '2025-02-27 15:20:13', NULL),
(224, 6, '1403', 159, 5, 102, NULL, 7, 'خیابان و نسجد', 4, 'سفیدشهر', NULL, 1, NULL, '2025-03-02 07:45:24', NULL),
(61, 3, '1403', 164, 5, 327, 'گرامیداشت اعیاد شعبانیه', 423, 'مدرسه دخترانه', 2, 'نفده‌', 'محمدیار', 1, NULL, NULL, NULL),
(177, 1, '1403', 184, 5, 393, 'با سلام \nهرهفته شب های جمعه موکب و ایستگاه صلواتی به همراه نوجوانان برگزار میکنم. \n\nاین هفته نیمه شعبان مراسم نورافشانی و پذیرایی  در خیابان موسوی قوچانی بین ۲۵و۲۷داریم.', 396, 'بین ۲۵و۲۷ مجتمع ثامن', 11, 'مشهد', 'موسوی قوچانی', 1, NULL, NULL, NULL),
(178, 2, '1403', 196, 5, 129, 'برگزاری مراسم جشن و اطعام', 125, 'شهرستان', 30, 'تویسرکان', NULL, 1, NULL, NULL, NULL),
(189, 6, '1403', 204, 5, 246, 'جشن وایرادسخنرانی وتزیین', 46, 'محله ومسجدواداره', 13, 'اندیمشک', 'ولایت', 1, NULL, NULL, NULL),
(188, 6, '1403', 204, 5, 246, 'تزیین وجشن و...', 46, 'مسجدومحله', 13, 'اندیمشک', 'ولایت', 1, NULL, NULL, NULL),
(187, 6, '1403', 204, 5, 246, 'اطعام ،موکب،جشن وسخنرانی', 46, 'محله،مسجد...', 13, 'اندیمشک', 'ولایت', 1, NULL, NULL, NULL),
(185, 4, '1403', 205, 5, 199, 'طبخ اطعام به مناسبت ولادت سرداران کربلا و برپایی محفل جشن و شادی', 231, 'مسجد حضرت ابوالفضل', 16, 'زهک', 'زهک', 1, NULL, NULL, NULL),
(186, 1, '1403', 205, 5, 199, 'برپایی 4 ساعت موکب خیابانی  و توزیع 1000 بسته فرهنگی و پذیرایی شیرکاکائو کیک و لبو به مناسبت روز جوان و جشن انقلاب', 231, 'خیابان اصلی شهرستان زهک', 16, 'زهک', 'زهک', 1, NULL, NULL, NULL),
(198, 6, '1403', 216, 5, 261, 'با صحبتی که با شهردار داشتیم شهر را آزین بندی شود', 29, 'تمام شهر', 30, 'شهر', NULL, 1, NULL, '2025-03-01 07:02:01', NULL),
(197, 1, '1403', 216, 5, 261, 'چند نفر از دوستان در نقاط مختلف شهر موکب زحمت میافتند', 29, 'خیابان امام و خیابان کاشانی و مسکن مهر و سیدان و گلزار شهدا و', 30, 'شهر', NULL, 1, NULL, '2025-03-01 07:02:01', NULL),
(196, 2, '1403', 216, 5, 261, 'با خانواده هایی هماهنگی که در محلات خود برای امام زمان موکب بزنند', 29, 'خانواده هایی از محلات مختلف مثل مسکن مهر محله اسلام آباد خیابان کاشانی', 30, 'شهر', NULL, 1, NULL, '2025-03-01 07:02:01', NULL),
(195, 6, '1403', 216, 5, 261, 'خیابان کاشانی و محله مسکن مهر', 29, 'خیابان کاشانی محله مسکن مهر', 30, 'شهر', NULL, 1, NULL, '2025-03-01 07:02:01', NULL),
(194, 4, '1403', 216, 5, 261, 'هر روز تا نیمه شعبان پخت و توزیع غذا پنجاه تا هفتاد پرس و روز نیمه شعبان پخت بیش از هزار پرس', 29, 'شهر و روستا', 30, 'اسداباد', NULL, 1, NULL, '2025-03-01 07:02:01', NULL),
(76, 4, '1403', 236, 5, 24, 'پخت و توزیع غذای متبرک به مناسبت موالید شعبان', 99, 'غفاری ، خیابان خلیج فارس', 10, 'بیرجند', '__', 1, '2025-02-11 08:02:05', '2025-02-11 11:32:05', '2025-02-11 08:02:05'),
(77, 6, '1403', 238, 5, 122, 'به مناسبت دهه فجر و اعیاد شعبانیه تزییناتی از قبیل نصب پرچم و کتیبه در منزل و پرچم درب منزل نصب شد همچنین هییت دخترانه ریحانه النبی نیز تزیین و زیبا سازی شد .در مسجد محله و کوچه های اطراف نیز پرچم نصب گردید', 375, 'حسینیه الزهرا مرکزی', 17, 'اشکنان', NULL, 1, NULL, NULL, NULL),
(78, 1, '1403', 238, 5, 122, 'موکب خیابانی جلو مسجد نبی اکرم (ص)به مناسبت اعیاد شعبانیه و پذیرایی و هدیه به کودکان', 375, 'مسجد نبی اکرم (ص)', 17, 'اشکنان', NULL, 1, NULL, NULL, NULL),
(79, 4, '1403', 238, 5, 122, 'اطعام ۲۵۰نفر در مسجد نبی اکرم به مناسبت اعیاد شعبانیه', 375, 'مسجد نبی اکرم (ص)', 17, 'اشکنان', NULL, 1, NULL, NULL, NULL),
(80, 2, '1403', 238, 5, 122, 'پذیرایی جلو درب منزل از رهگذران و همسایگان به مناسبت اعیاد شعبانیه با شیرینی', 375, 'منزل شخصی', 17, 'اشکنان', NULL, 1, NULL, NULL, NULL),
(206, NULL, '1403', 244, 5, 159, NULL, 7, 'خانگی', 4, 'ابوزیدآباد', 'حسین آباد', 1, NULL, '2025-03-01 07:48:45', NULL),
(205, 1, '1403', 244, 5, 159, NULL, 7, 'خیابان', 4, 'ابوزیدآباد', 'حسین آباد', 1, NULL, '2025-03-01 07:48:45', NULL),
(204, 2, '1403', 244, 5, 159, NULL, 7, 'خانگی', 4, 'ابوزیدآباد', 'حسین آباد', 1, NULL, '2025-03-01 07:48:45', NULL),
(203, NULL, '1403', 244, 5, 159, NULL, 7, 'خانگی', NULL, 'ابوزیدآباد', 'حسین آباد', 1, NULL, '2025-03-01 07:48:45', NULL),
(269, 1, '1403', 322, 5, 51, 'پخش غذا و چای\nتعداد ۱۰۰۰ عدد پرس غذا\nو ۵ هزار لیوان چای', 432, 'هیئت و موکب خدام الرقیه سلام الله علیها', 11, 'نیشابور', NULL, 1, NULL, '2025-03-08 08:50:24', NULL),
(267, 1, '1403', 270, 5, 94, 'پخش شربت و ...در دو نقطه شهر', 423, 'خیابان و چهارراه و مسیر راهپیمایی', 2, 'شهر', NULL, 1, '2025-03-04 08:04:34', '2025-03-04 11:34:34', '2025-03-04 08:04:34'),
(207, 3, '1403', 272, 5, 460, 'با عرض سلام\nبه صورت گروهی مدارس اقلید و سورمق و بیدک و آباده سرکشی نموده و با دادن اقلام فرهنگی و اجرای برنامه ویژه نیمه شعبان و هماهنگی برای ایستگاه صلواتی و برپایی جشن کاروان شادی مدارس', 2, 'مدارس', 17, 'آباده', NULL, 1, NULL, '2025-03-01 08:17:45', NULL),
(92, 2, '1403', 275, 5, 28, 'سخنرانی و مولودی خوانی  به مناسبت نیمه شعبان', 281, 'منزل شخصی', 9, 'کیان', NULL, 1, NULL, NULL, NULL),
(93, 2, '1403', 275, 5, 28, 'موکب وایستگاه صلواتی در مدرسه اجرا شد ولی به دلیل نداشتن گزینه مدرسه موکب خانگی انتخاب شد', 281, 'مدرسه', 9, 'کیان', NULL, 1, NULL, NULL, NULL),
(209, 1, '1403', 285, 5, 312, 'هدایای امام زمانی در راستای حجاب و عفاف', 423, 'پارک یئددی گوز', 2, 'نقده', NULL, 1, NULL, '2025-03-01 08:26:49', NULL),
(208, 4, '1403', 285, 5, 312, 'اطعام نیمه شعبان به تعداد ۵۰۰ نفر سفره امام زمان برپاکردیم', 111, 'حسینیه اداره تبلیغات اسلامی', 2, 'پیرانشهر', NULL, 1, NULL, '2025-03-01 08:26:49', NULL),
(212, 3, '1403', 296, 5, 395, 'شب ولادت وروز ولادت‌ان شاءالله کاروان شادی درسطح شهرمقدس مشهد', 396, 'سطح شهر مقدس مشهد', 11, 'مشهد', 'گروه حیدریون', 1, NULL, '2025-03-01 08:36:01', NULL),
(210, 2, '1403', 292, 5, 194, 'مهدویت وانقلاب اسلامی\nجریان تولد امام زمان علیه السلام وشباهت به انبیاءگذشته و علائم ظهور و آمادگی واجتماع قلوب', 122, 'منزل پاسدارمولاداد', 2, 'تکاب', '.', 1, NULL, '2025-03-01 08:32:48', NULL),
(211, 4, '1403', 293, 5, 463, 'سلام در ایام شعبانیه و ماه محرم و صفر وماه رمضان اطعام میدهیم', 435, 'داخل خانه', 8, 'تهران', NULL, 1, NULL, '2025-03-01 08:33:14', NULL),
(213, 1, '1403', 307, 5, 27, 'ایستگاه صلواتی و مسابقه و مولودی خوانی و پذیرایی', 378, 'هیات چهارده معصوم', 4, 'باغبهادران', 'کرچگان', 1, NULL, '2025-03-01 08:41:29', NULL),
(231, 2, '1403', 309, 5, 504, NULL, 169, 'خیراباد', 11, NULL, 'خیراباد', 1, NULL, '2025-03-02 07:58:27', NULL),
(214, 6, '1403', 310, 5, 303, 'موکب خیابانی\nاطعام مهدوی\nتزئین خیابان \nتوزیع پرچم و تراکت مهدوی', 86, 'مدرسه و عمومی', 4, 'بوئین میاندشت', 'چند روستا', 1, NULL, '2025-03-01 08:48:58', NULL),
(222, 1, '1403', 329, 5, 20, 'نیمه شعبان در محله و پارک محله ایستگاه و موکب و پذیرایی به عمل آمد', 336, 'پارک شهریار', 5, 'کمالشهر', 'خرمدشت', 1, NULL, '2025-03-01 09:06:39', NULL),
(225, 1, '1403', 317, 5, 309, NULL, 392, 'ایستگاه صلواتی', 17, 'مرودشت', 'مراگلو', 1, NULL, '2025-03-02 07:52:46', NULL),
(216, 6, '1403', 324, 5, 256, 'تزیین حسینیه', 339, 'حسینیه', 22, 'کرمانشاه', NULL, 1, NULL, '2025-03-01 09:00:10', NULL),
(219, 6, '1403', 326, 5, 44, 'تزئین مسجد و محله و نور افشانی در شب ولادت حضرت', 117, 'مسجد حضرت قاسم', 11, 'تربت حیدریه', NULL, 1, NULL, '2025-03-01 09:02:24', NULL),
(218, 4, '1403', 326, 5, 44, 'تعداد ۱۰۰ نفر صبحانه دعای ندبه', 117, 'مسجد حضرت قاسم', 11, 'تربت حیدریه', NULL, 1, NULL, '2025-03-01 09:02:24', NULL),
(217, 4, '1403', 326, 5, 44, 'تعداد ۳۰۰ نفر شام  شب ولادت امام زمان علیه السلام', 117, 'مسجد حضرت قاسم', 11, 'تربت حیدریه', NULL, 1, NULL, '2025-03-01 09:02:24', NULL),
(221, 6, '1403', 328, 5, 319, 'تزیین خیابان های اصلی و اذین بندی معابر و توصیه به اهالی برای تزیین درب منازل', 37, 'روستای روران', 4, 'اصفهان', NULL, 1, NULL, '2025-03-01 09:06:06', NULL),
(220, 1, '1403', 328, 5, 319, 'برگزاری جشن خیابانی همراه پذیرایی و مسابقه و جایزه و نورافشانی', 37, 'پارک روستا', 4, 'اصفهان', 'روران', 1, NULL, '2025-03-01 09:06:06', NULL),
(235, 6, '1403', 339, 5, 64, NULL, 424, 'اطراف مسجد', 27, 'نکا', 'دوقانلو', 1, NULL, '2025-03-02 08:10:03', NULL),
(234, 4, '1403', 339, 5, 64, NULL, 424, 'پارک', 27, 'نکا', 'نکا', 1, NULL, '2025-03-02 08:10:03', NULL),
(233, 2, '1403', 339, 5, 64, NULL, 424, 'منزل', 27, 'نکا', 'دوقانلو', 1, NULL, '2025-03-02 08:10:03', NULL),
(232, 1, '1403', 339, 5, 64, NULL, 424, 'اطرف مسجد', 27, 'نکا', 'دوقانلو', 1, NULL, '2025-03-02 08:10:03', NULL),
(237, 4, '1403', 345, 5, 229, 'اطعام ۵۰۰', 377, 'حسینیه', 9, 'لردگان', 'خاردان', 1, NULL, '2025-03-02 08:13:19', NULL),
(236, 1, '1403', 345, 5, 229, NULL, 377, 'مابین چهارراه شهرداری تا مصلی', 9, 'لردگان', NULL, 1, NULL, '2025-03-02 08:13:19', NULL),
(239, 4, '1403', 348, 5, 79, NULL, 122, 'قینرجه', 2, 'تکاب', 'قینرجه', 1, NULL, '2025-03-02 08:13:46', NULL),
(238, 2, '1403', 348, 5, 79, NULL, 122, 'قینرجه', 2, 'تکاب', 'قینرجه', 1, NULL, '2025-03-02 08:13:46', NULL),
(242, 3, '1403', 361, 5, 35, 'کاروان شادی خودرویی روز نیمه شعبان\nزیارت امامزاده \nسخنرانی\nمولودی \nتوزیع آش نذری \nقرعه کشی و اهدای جوایز', 127, 'امامزاده بابا لنگر', 4, 'عسگران', 'قلعه ناظر', 1, NULL, '2025-03-02 08:20:23', NULL),
(240, 1, '1403', 361, 5, 35, 'ماشین نویسی صلواتی', 127, 'خط اصلی جنب لبنیاتی قدیری', 4, 'عسگران', 'قلعه ناظر', 1, NULL, '2025-03-02 08:20:23', NULL),
(241, 1, '1403', 361, 5, 35, 'پخش نذورات', 127, 'مدرسه', 4, 'عسگران', 'قلعه ناظر', 1, NULL, '2025-03-02 08:20:23', NULL),
(243, 6, '1403', 364, 5, 58, NULL, 115, 'مسجد طفلان مسلم', 1, 'تبریز', NULL, 1, NULL, '2025-03-02 08:22:27', NULL),
(244, 2, '1403', 368, 5, 186, 'جلسه ویژه ولادت امام زمان ظهر نیمه شعبان', 396, 'شهرک شهید رجایی-حر۲۸ اروند 9 پلاک 24', 11, 'مشهد', NULL, 1, NULL, '2025-03-02 08:24:08', NULL),
(133, 4, '1403', 371, 5, 473, 'پخت ۳۰۰ پرس غذای نذری و توزیع بین خانواده های نیازمند شهر گله دار و روستاهای اطراف در شب نیمه شعبان', 406, 'حسینیه پنج تن آل عبا .ع.', 17, 'گله دار', NULL, 1, NULL, NULL, NULL),
(250, 2, '1403', 388, 5, 297, NULL, 396, 'منزل سید حسینی درب منزل', 11, 'رضویه', 'خادم اباد', 1, NULL, '2025-03-02 08:51:22', NULL),
(249, 6, '1403', 388, 5, 297, 'باهمکاری جوانان ونوجوانان', 396, 'داخل روستا ومحوطه', 11, 'رضویه', 'خادم اباد', 1, NULL, '2025-03-02 08:51:22', NULL),
(248, 4, '1403', 388, 5, 297, 'اطعام درشب عید وروز عید ۱۵۰۰ پرس غذا', 396, 'مسجد وحسینیه ودرب منازل', 11, 'رضویه', 'خادم اباد', 1, NULL, '2025-03-02 08:51:22', NULL),
(202, NULL, '1403', 244, 5, 159, NULL, 7, 'خانگی', 4, 'ابوزیدآباد', 'حسین آباد', 1, NULL, '2025-03-01 07:48:45', NULL),
(253, 6, '1403', 392, 5, 330, 'نصب پرچم شادی در کوچه', 94, 'تهران', 8, 'نسیم شهر', 'اورین', 1, NULL, '2025-03-02 09:07:24', NULL),
(252, 4, '1403', 392, 5, 330, 'در قالب هیئت خانگی همراه با پذیرایی شام', 94, 'تهران', 8, 'نسیم شهر', 'اورین', 1, NULL, '2025-03-02 09:07:24', NULL),
(200, 4, '1403', 231, 5, 203, NULL, 20, 'مسجد محمدیه، هیأت روضة الزهرا', 3, 'اردبیل', NULL, 1, NULL, '2025-03-01 07:35:10', NULL),
(199, 1, '1403', 231, 5, 203, 'ایستگاه صلواتی', 20, 'میدان شهید غفور جدی', 3, 'اردبیل', NULL, 1, NULL, '2025-03-01 07:35:10', NULL),
(201, 1, '1403', 241, 5, 242, 'در روز ولادت آقا امام زمان علیه السلام در خیابان جشن گرفته شد', 46, 'جلوی مدرسه', 13, 'اندیمشک', 'عدم', 1, NULL, '2025-03-01 07:46:00', NULL),
(251, 4, '1403', 395, 5, 163, 'ایستگاه  صلواتی برگزارکردیم  با مردم عمومی  واطعام ‌،پدران،مادران ،نقاشی کودکان مهدوی', 244, 'مسجد امام رضا علیه السلام', 22, 'سرپل زهای', 'جلالوند علیا', 1, NULL, '2025-03-02 09:01:27', NULL),
(247, 2, '1403', 377, 5, 344, 'برگزاری جشن های خانگی توسط والدین متربیان دعوت از مربیان و دانش آموزان برای برگزاری جشن و موکب درمنازل شون', 396, 'شهرک شهیدآوینی شهرک شهید رجایی', 11, 'مشهدمقدس', 'حاشیه شهر', 1, NULL, '2025-03-02 08:47:11', NULL),
(156, 6, '1403', 400, 5, 513, 'تزیین و چراغانی محله و پخش نذری', 216, 'محله', 29, 'دهبارز', 'ندارد', 1, NULL, NULL, NULL),
(223, 1, '1403', 335, 5, 40, 'حاشیه جاده اصلی ایستگاه صلواتی زدیم با شیر کاکائو و کیک پذیرایی کردیم و برای بچه ها پفک تهیه شد و داده شد', 396, 'کنار مسجد جاده اصلی', 11, 'شاندیز', 'فرح آباد', 1, NULL, '2025-03-01 09:14:31', NULL),
(259, 1, '1403', 411, 5, 144, 'چایخانه بهمراه پذیرایی شیرینی', 293, 'خیابان امام', 1, 'عجب شیر', '..', 1, NULL, '2025-03-03 06:25:08', NULL),
(258, 6, '1403', 411, 5, 144, 'تزیین مسجد و اطراف مسجد', 293, 'خیابان امام مسجد خاتم الانبیا', 1, 'عجب شیر', '..', 1, NULL, '2025-03-03 06:25:08', NULL),
(257, 1, '1403', 413, 5, 57, NULL, 396, 'توس۵۳ روبروی فتحی ۴', 11, 'مشهد', 'مشهد', 1, NULL, '2025-03-02 09:17:18', NULL),
(256, 3, '1403', 413, 5, 57, NULL, 396, 'بلوار توس', 11, 'مشهد', 'مشهد', 1, NULL, '2025-03-02 09:17:18', NULL),
(262, 6, '1403', 420, 5, 304, 'تزئین مسجد و محله همراه با جوانان و نوجوانان مسجدی', 396, 'مسجد النبی ص', 11, 'محله نظام دوست', NULL, 1, NULL, '2025-03-03 06:32:19', NULL),
(261, 1, '1403', 420, 5, 304, 'برپایی موکب و پخش چای همراه یا نوجوانان مسجدی', 396, 'انتهای طبرسی شمالی ۴ نظام دوست ۳۲ مسجد النبی ص', 11, 'محله نظام دوست', NULL, 1, NULL, '2025-03-03 06:32:19', NULL),
(260, 1, '1403', 420, 5, 304, 'برپایی موکب خیابانی در روز ولادت امام زمان عج و پخش چای و  شربت و شیرینی و کیک همراه با پخش مولودی', 396, 'مشهد طبرسی شمالی ۲۸ خالقی ۲۹ پلاک ۳۶', 11, 'محله طبرسی', NULL, 1, NULL, '2025-03-03 06:32:19', NULL),
(264, 6, '1403', 424, 5, 134, NULL, 157, 'مسجد شهید مدنی چهار راه طیب', 26, 'خرم آباد', NULL, 1, NULL, '2025-03-03 06:34:21', NULL),
(263, 4, '1403', 424, 5, 134, 'شام در شب میلاد حضرت امام زمان علیه السلام', 157, 'مسجد شهید آیت الله مدنی چهارراه طیب', 26, 'خرم آباد', NULL, 1, NULL, '2025-03-03 06:34:21', NULL),
(265, 1, '1403', 427, 5, 392, 'ایستگاه صلواتی و توزیع چای و شیرینی.\nبرگزاری هیئت خانگی در ایام نیمه شعبان', 396, 'شهرک طرق', 11, 'مشهد', NULL, 1, NULL, '2025-03-03 06:36:12', NULL),
(229, 2, '1403', 314, 5, 188, NULL, 222, 'خیابان شهید شیرخانی', 21, 'گنبکی', 'شلتوک آباد', 1, NULL, '2025-03-02 07:58:09', NULL),
(230, NULL, '1403', 314, 5, 188, NULL, 222, 'خیابان شهید شیرخانی', 21, 'گنبکی', 'شلتوک آباد', 1, NULL, '2025-03-02 07:58:09', NULL),
(184, 4, '1403', 202, 5, 184, 'باسلام  واحترام\nروزجمعه به مناسبت ولادت امام زمان عجل الله تعالی فرجه الشریف  وجهت سلامتی اقاجان ونذرامام زمان عجل الله تعالی فرجه الشریف  غذایی به صرف ناهارتهیه نمودم و۱۲نفرمیهمان رابه خانه دعوت نمودم وتالحظه عصردورهمی داشتیم به صرف شیرینی وغذای نذری امام زمان علیه السلام وچای ومیوه جات وبرای فرج اقاهم دعانمودم', 392, 'بلوارامام علی علیه السلام ،خ شصت متری،کوچه بهمن', 17, 'مرودشت', NULL, 1, NULL, NULL, NULL),
(182, 3, '1403', 202, 5, 184, 'باسلام واحترام\nبه مناسبت نیمه شعبان وشناخت امام زمان عجل الله تعالی فرجه الشریف مسابقه حفظ سوره فجروهم چنین مسابقه اخرین خورشیدباموضوع خفظ دعای معرفت(اللهم عرفنی نفسک)برای دانش اموزان وجلسات پرسش وپاسخ وتمرین وتکراردعای معرفت صورت گرفت وقرارشدازنفرات برتردرهرمسابقه تجلیل وقدردانی شود', 392, 'خ مدرس،۱۶متری شهیدمطهری مدرسه حضرت رقیه سلام الله علیها', 17, 'مرودشت', NULL, 1, NULL, NULL, NULL),
(183, 6, '1403', 202, 5, 184, 'باسلام واحترام\nبه مناسبت اعیادشعبانیه  درمدرسه بانصب پرچم وبادکنک،ونصب بنرونوشته وعکس ونقاشی فضای مدرسه تزئین واذین بندی شد', 392, 'خ مدرس  ،۱۲متری شهیدمطهری،مدرسه حضرت رقیه سلام الله علیها', 17, 'مرودشت', NULL, 1, NULL, NULL, NULL),
(192, 4, '1403', 434, 5, 107, NULL, 371, 'امام رضا(علیه السلام)', 24, NULL, 'سلمان فارسی۱', 1, NULL, NULL, NULL),
(191, 4, '1403', 437, 5, 7, NULL, 448, 'خانه', 31, 'یزد', 'رضوانشهر', 1, NULL, NULL, NULL),
(190, 6, '1403', 437, 5, 7, NULL, 448, 'منزل', 31, 'یزد', 'رضوانشهر', 1, NULL, NULL, NULL),
(270, 3, '1403', 439, 5, 88, 'کاروان از مشهد به قم آورده و در مسیر جمکران پیاده روی شرکت کرده و بعد راهیان نور رفته است', 327, 'مسیر جمکران', 19, 'قم', NULL, 1, NULL, '2025-03-09 07:52:13', NULL),
(271, 1, '1403', 442, 5, 89, 'موکب پخش چای و شربت و اطعام', 364, 'مسجد و حسینیه', 12, 'درق', NULL, 1, NULL, '2025-03-09 08:11:50', NULL),
(272, 3, '1403', 442, 5, 89, 'کاروان شادی در روز عید غدیر', 364, 'خیابان شهر', 12, 'درق', NULL, 1, NULL, '2025-03-09 08:11:50', NULL),
(273, 1, '1403', 449, 5, 55, 'ایستگاه صلواتی و پخش چایی و شیرینی', 211, 'خیابان', 25, 'رشت', NULL, 1, NULL, '2025-03-09 09:23:52', NULL),
(274, 3, '1403', 449, 5, 55, 'کاروان شادی برای ایام نیمه شعبان', 211, 'خیابان', 25, 'رشت', NULL, 1, NULL, '2025-03-09 09:23:52', NULL),
(275, 1, '1403', 453, 5, 29, 'ایستگاه صلواتی در خیابان و پخش چای و شیرینی و اطعام در نیمه شعبان و مراسم احیاء شب نیمه شعبان', 106, 'مسجد و خیابان', 8, 'پاکدشت', NULL, 1, NULL, '2025-03-10 07:20:17', NULL),
(276, 1, '1403', 454, 5, 109, 'آذین بندی محله و برپایی ایستگاه صلواتی و پخش آش و...', 421, 'مسجد و خیابان', 4, 'خالد آباد', NULL, 1, NULL, '2025-03-10 07:38:57', NULL),
(277, 1, '1403', 455, 5, 125, 'موکب در مسیر جمکران داشته اند برای بزرگسال و کودک و نوجوان\nو خودشان نیز مسؤول ارزیابی مبلغین بوده است.', 327, 'مسیر جمکران', 19, 'قم', NULL, 1, NULL, '2025-03-10 07:53:44', NULL),
(278, NULL, '1403', 456, 5, 77, 'برگزاری سفره صلوات و اهداء جوائز در مسجد', 332, 'مسجد', 4, 'کاشان', NULL, 1, NULL, '2025-03-10 08:18:32', NULL),
(279, 1, '1403', 457, 5, 204, 'ایستگاه صلواتی داشته و پیاده روی نمادین داشته و پیگیری برای اعزام مبلغین', 332, 'مسجد', 4, 'کاشان', NULL, 1, NULL, '2025-03-10 08:52:31', NULL),
(280, 1, '1403', 213, 5, 284, 'ایستگاه صلواتی', 398, 'خیابان', 30, 'ملایر', NULL, 1, NULL, '2025-03-10 09:04:17', NULL),
(281, 6, '1403', 213, 5, 284, 'تزین مسجد و خیابان های اطراف', 398, 'خیابان و مسجد', 30, 'ملایر', NULL, 1, NULL, '2025-03-10 09:04:17', NULL);

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
(1, NULL, 'کتاب حاج آقا فرحزاد\nبروشور', NULL, 1, 1, 'برای 300 نفر به صورت پستی ارسال شد', NULL, NULL, 1, NULL, '2024-12-11 08:53:05', '2025-03-02 09:42:52'),
(2, NULL, NULL, '500000 تومان', 2, 3, 'تستی', NULL, NULL, 1, NULL, '2024-12-11 09:45:39', '2025-03-08 04:44:53'),
(3, NULL, NULL, '500000 توملن', 2, 4, 'به سیزده نفر از مبلغین  که ارسال گزارش داشته اند به صورت قرعه کشی', NULL, NULL, 1, NULL, '2024-12-12 03:48:23', '2025-03-02 09:39:21'),
(4, NULL, NULL, '500000 تومان', 2, 4, 'به سیزده نفر از مبلغین که گزارش ارسال کرده اند به صورت قرعه کشی', NULL, NULL, 1, NULL, '2024-12-12 04:47:29', '2025-03-02 09:38:58'),
(5, NULL, NULL, '1000000 تومان', 2, 4, 'به صورت قرعه کشی از بین مبلغانی که در تبلیغ فاطمیه گزارش داده بودند', NULL, NULL, 1, NULL, '2024-12-14 09:03:54', '2025-03-02 09:38:24');

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
(70, 7, 1, NULL, NULL, NULL),
(69, 5, 1, NULL, NULL, NULL),
(68, 4, 1, NULL, NULL, NULL),
(67, 3, 1, NULL, NULL, NULL),
(72, 5, 2, NULL, NULL, NULL),
(71, 3, 2, NULL, NULL, NULL),
(59, 249, 4, NULL, NULL, NULL),
(58, 111, 4, NULL, NULL, NULL),
(49, 67, 5, NULL, NULL, NULL),
(48, 63, 5, NULL, NULL, NULL),
(47, 33, 5, NULL, NULL, NULL),
(46, 29, 5, NULL, NULL, NULL),
(45, 7, 5, NULL, NULL, NULL),
(57, 94, 4, NULL, NULL, NULL),
(56, 64, 4, NULL, NULL, NULL),
(55, 53, 4, NULL, NULL, NULL),
(54, 48, 4, NULL, NULL, NULL),
(53, 42, 4, NULL, NULL, NULL),
(52, 27, 4, NULL, NULL, NULL),
(51, 23, 4, NULL, NULL, NULL),
(50, 13, 4, NULL, NULL, NULL),
(62, 249, 3, NULL, NULL, NULL),
(61, 137, 3, NULL, NULL, NULL),
(60, 132, 3, NULL, NULL, NULL);

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
(8, 'مساعدت هدایتی فرهنگی معتکفین نوجوان و جوان و بزرگسال با اولویت صحیفه سجادیه', 89, 2, 3, 3, NULL, 'fa', 1, NULL, '2025-01-07 15:49:07', '2025-02-25 04:07:21'),
(9, 'کتاب بفرستین', 17, 2, 2, 0, NULL, 'fa', 1, NULL, '2025-02-01 04:32:22', '2025-02-01 04:32:22'),
(10, 'نیمه شعبان', 193, 2, 3, 0, NULL, 'fa', 1, NULL, '2025-02-01 19:06:48', '2025-02-01 19:06:48'),
(11, 'کمک به برگزاری جشن نیمه شعبان', 250, 2, 3, 0, NULL, 'fa', 1, NULL, '2025-02-06 15:35:13', '2025-02-06 15:35:13'),
(12, 'ثبت نشدن شماره شبا در سامانه', 51, 1, 3, 0, NULL, 'fa', 1, NULL, '2025-02-07 05:36:57', '2025-02-07 05:36:57'),
(13, 'برگزاری مسابقه نیمه شعبان و اهدا جوایز', 261, 2, 3, 0, NULL, 'fa', 1, NULL, '2025-02-07 08:02:31', '2025-02-07 08:02:31'),
(14, 'تقاضا پرچم وکتاب کودکانه', 130, 2, 2, 0, NULL, 'fa', 1, NULL, '2025-02-09 05:28:01', '2025-02-09 05:28:01'),
(15, 'درخواست حمایت', 149, 2, 3, 3, NULL, 'fa', 1, NULL, '2025-02-09 10:01:58', '2025-02-25 04:05:31'),
(16, 'درخواست ثبت نام و معرف', 431, 2, 2, 0, NULL, 'fa', 1, NULL, '2025-02-09 13:23:42', '2025-02-09 13:23:42'),
(17, 'برنامه های ماه رمضان', 193, 2, 3, 0, NULL, 'fa', 1, NULL, '2025-02-09 18:43:47', '2025-02-09 18:43:48'),
(18, 'حمایتی', 463, 1, 3, 3, 0, 'fa', 1, NULL, '2025-02-12 12:43:12', '2025-03-04 10:57:33'),
(19, 'قفل بودن سایت و عدم امکان ثبت گزارش جدید', 470, 1, 3, 3, 5, 'fa', 1, NULL, '2025-02-14 23:03:56', '2025-02-14 23:30:01'),
(25, 'حمایت از فعالیت های قرآنی و فرهنگی در 3مدرسه روستای شیخ حسین', 301, 2, 3, 0, NULL, 'fa', 1, NULL, '2025-02-17 23:33:13', '2025-02-17 23:33:13'),
(26, 'عکسهای جشن نیمه شعبان', 434, 2, 3, 3, 0, 'fa', 1, NULL, '2025-02-18 07:03:23', '2025-03-09 09:22:17'),
(27, 'حمایت مالی', 518, 2, 3, 3, NULL, 'fa', 1, NULL, '2025-02-25 04:08:09', '2025-02-25 04:08:44'),
(28, 'منبر در ماه رمضان', 242, 2, 3, 0, NULL, 'fa', 1, NULL, '2025-03-02 06:12:30', '2025-03-02 06:12:30'),
(29, 'ثبت گزارش تبلیغ نیمه ماه شعبان', 463, 2, 2, 0, NULL, 'fa', 1, NULL, '2025-03-09 07:26:45', '2025-03-09 07:26:45');

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
(17, 193, 10, 'سلام علیکم \nدر نیمه شعبان در شهر  برنامه جشن کیلومتری داریم و همچنین اعزام بیش از ۳۰ مبلغ به روستاهای فاقد روحانی ومحروم نیاز به پشتیبانی مالی و فرهنگی داریم', NULL, 1, NULL, '2025-02-01 19:06:48', '2025-02-01 19:06:48'),
(18, 250, 11, 'درخواست کمک مالی برا برگزاری جشن نیمه شعبان', NULL, 1, NULL, '2025-02-06 15:35:13', '2025-02-06 15:35:13'),
(19, 51, 12, 'با سلام چند بار تکرار کردم اما شماره شبا ثبت نمی شود\nلطفا پیگیری کنید\nشماره شبا بانک ملی \n910170000000308591927006', NULL, 1, NULL, '2025-02-07 05:36:57', '2025-02-07 05:36:57'),
(20, 261, 13, 'مسابقاتی بمناسبت نیمه شعبان با محتوای کتاب دوره ها برگزار نماییم و جوایز به نفرات برتر اهدا کنیم که با حمایت از جوایز برنامه موثرتر واقع می‌شود', NULL, 1, NULL, '2025-02-07 08:02:31', '2025-02-07 08:02:31'),
(21, 130, 14, 'سلام.مقداری پرچم برای درب خانه ها وتوزیع بین کودکان وکتاب داستان برای امام زمان عجل الله تعالی فرجه الشریف اگر به ما کمک کنید بسیار ممنونم', NULL, 1, NULL, '2025-02-09 05:28:01', '2025-02-09 05:28:01'),
(22, 149, 15, 'درخواست حمایت فرهنگی و مالی جهت برگزاری پرشور عید نیمه شعبان', NULL, 1, NULL, '2025-02-09 10:01:58', '2025-02-09 10:01:58'),
(23, 431, 16, 'ثبت نام و گزارش تبلیغ بنابر معرفی گروه حیدریون انجام شد.', NULL, 1, NULL, '2025-02-09 13:23:42', '2025-02-09 13:23:42'),
(24, 193, 17, 'بنده علاوه بر مجموعه ی فرهنگی که در منطقه دارم مسول شبکه مبلغین در شهرستان هستم \nبرای ماه رمضان برنامه های متفاوت داریم و درخواست داریم که شبکه رو تقویت کنید اقلام وابسته های تبلیغی ،هدیه تبلیغ برای مبلغین', NULL, 1, NULL, '2025-02-09 18:43:48', '2025-02-09 18:43:48'),
(25, 463, 18, 'سلام علیکم من فاطمیه دوم هم ۵ روز رفته بودم تبلیغ  به صورت آزاد ولی چیزی به من ندادند این گزارشی که ثبت کردم مربوط به امروز هست', NULL, 1, NULL, '2025-02-12 12:43:12', '2025-02-12 12:43:12'),
(26, 470, 19, 'قفل بودن سایت و عدم امکان ثبت گزارش جدید', NULL, 1, NULL, '2025-02-14 23:03:56', '2025-02-14 23:03:56'),
(27, 470, 19, 'با سلام و احترام با توجه به راهنمایی های موجود در کانال مشکل حل شد', NULL, 1, NULL, '2025-02-14 23:29:45', '2025-02-14 23:29:45'),
(28, 301, 25, '1-بحث احداث تجهیز و تکمیل کتابخانه مدارس در روستای شیخ حسین با کمک به ساختن چند قفسه و  همچنین تامین کتاب متنوع بدلیل داشتن 450دانش آموز از کلاس اول ابتدایی تا کلاس دهم\n2-حمایت فرهنگی از نظر اردوها و همچنین تامین جوایز مسابقات فرهنگی در طول سال جهت تشویق و ترغیب این450دانشآموز ودرجهت ایجاد رقابت  سالم \n3-تامین یک لب تاب وپرژکتور  جهت تنظیم و همچنین استفاده از رسانه  جهت جذاب سازی \nبرنامه های فرهنگی\n4-تجهیز سالن چند منظوره به دو لولر  ایستاده \nدر جهت استفاده بهتر از این سالن برای نماز خانه \nوکتابخانه و همچنین سالن اجتماعات', NULL, 1, NULL, '2025-02-17 23:33:13', '2025-02-17 23:33:13'),
(29, 434, 26, 'عکسهای جشن نیمه شعبان روستای درخت بید', 'image37241739874800.jpg###image89681739874801.jpg###', 1, NULL, '2025-02-18 07:03:23', '2025-02-18 07:03:23'),
(30, 518, 27, 'لطفاً از ما مبلغین حمایت مالی و فرهنگی داشته باشید', NULL, 1, NULL, '2025-02-25 04:08:09', '2025-02-25 04:08:09'),
(31, 520, 27, 'باشه چشم', NULL, 1, NULL, '2025-02-25 04:08:44', '2025-02-25 04:08:44'),
(32, 242, 28, 'درخواست منبر در ماه رمضان برای عموم مردم در مسجد را دارم با تشکر', NULL, 1, NULL, '2025-03-02 06:12:30', '2025-03-02 06:12:30'),
(33, 463, 29, 'سلام علیکم بنده درسایت ستاد غدیریه ثبت نام کردم  وثبت گزارش هم انجام دادم تایید شده ولی هنوز جوابش نیومده چرا؟', NULL, 1, NULL, '2025-03-09 07:26:45', '2025-03-09 07:26:45');

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
(1, 'پشتیبانی فنی', 1, NULL, 6, 1, 0, 0, 5, 1, NULL, '2024-11-30 11:34:55', '2024-11-30 11:34:55'),
(2, 'پشتیبانی و آماد فرهنگی', 1, NULL, 18, 11, 0, 0, 7, 1, NULL, '2024-11-30 11:35:12', '2024-11-30 11:35:12'),
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
(158, 'منبر', 121, 139, 4, '1403', '1', 3, 20, 'حسینیه ملا جلیل', 443, 30, 'همدان', NULL, 1, NULL, NULL, NULL),
(419, 'ولادت امام زمان', 143, 38, 5, '1403', '15', 1, 30, 'مسجد', 443, 30, 'مریانج', NULL, 1, NULL, NULL, NULL),
(420, 'فضیلت ماه شعبان', 144, 302, 5, '1403', '45', 1, 100, 'مسجد', 396, 11, 'مشهد', 'منطقه ۳', 1, NULL, NULL, NULL),
(425, NULL, 149, 79, 5, '1403', '30', 1, 100, 'مسجد', 122, 2, NULL, 'قینرجه', 1, NULL, NULL, NULL),
(426, NULL, 149, 79, 5, '1403', '30', 1, 100, 'مسجد', 122, 2, NULL, 'قینرجه', 1, NULL, NULL, NULL),
(539, 'اجتماع قلوب', 332, 5, 5, '1403', '45', 1, 60, 'مسجد سید الشهدا', 332, 4, 'کاشان', NULL, 1, NULL, '2025-03-01 09:11:49', NULL),
(553, 'مراسم نیمه شعبان', 350, 320, 5, '1403', '120', 1, 500, 'مسجد', 284, 12, 'شیروان', 'رضاآباد شرقی', 1, NULL, '2025-03-01 09:24:43', NULL),
(556, 'اجتماع قلوب', 159, 102, 5, '1403', '30', 2, 50, 'منازل و مسجد', 7, 4, 'سفیدشهر', NULL, 1, NULL, '2025-03-02 07:45:24', NULL),
(276, 'اجتماع قلوب شیعیان امر امام زمان علیه السلام و ارتباط با روایت فَاحضُر یوم الغدیر عند امیرالمؤمنین عليه‌السلام', 302, 457, 5, '1403', '1200', 3, 77, 'مسجد', 166, 4, 'خمینی شهر', NULL, 1, NULL, NULL, NULL),
(534, 'جشن انقلاب', 299, 39, 5, '1403', '30', 1, 1000, 'گلزار شهدای بخش صالح آباد', 407, 6, 'مهران', 'بخش صالح آباد', 1, NULL, '2025-03-01 08:38:33', NULL),
(533, 'میلاد حضرت علی اکبر علیه السلام', 299, 39, 5, '1403', '90', 1, 250, 'یادمان شهدای گمنام', 407, 6, 'مهران', 'مهران', 1, NULL, '2025-03-01 08:38:33', NULL),
(532, 'نیمه شعبان', 299, 39, 5, '1403', '90', 1, 300, 'حسینیه آیت الله حیدری گلان', 407, 6, 'مهران', 'گلان', 1, NULL, '2025-03-01 08:38:33', NULL),
(531, 'نیمه شعبان اطعام', 299, 39, 5, '1403', '90', 1, 2500, 'حسینیه بعثت رستم آباد (بلوار)', 407, 6, 'مهران', 'رستم آباد', 1, NULL, '2025-03-01 08:38:33', NULL),
(436, 'جشن خانگی به مناسبت ولادت امام حسین-حضرت ابوالفضل العباس وامام سجاد(ع)', 163, 33, 5, '1403', '30', 3, 25, 'منازل مشتاقان اهل بیت', 334, 20, 'کامیاران', NULL, 1, NULL, NULL, NULL),
(434, 'اجتماع قلوب شیعیان امرامام زمان (عج) ۴ جلسه', 163, 33, 5, '1403', '40', 4, 25, 'مدرسه متوسطه دوم', 334, 20, 'کامیاران', NULL, 1, NULL, NULL, NULL),
(435, 'ویژگیهای یاران امام زمان(عج)-جشن خانگی ۲جلسه', 163, 33, 5, '1403', '40', 3, 25, 'منازل شیعیان', 334, 20, 'کامیاران', NULL, 1, NULL, NULL, NULL),
(433, 'وظایف منتظران', 171, 343, 5, '1403', '60', 1, 100, 'مسجد', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(432, 'ویژگی های منتظران', 171, 343, 5, '1403', '60', 3, 100, 'حسینیه', 362, 24, 'گرگان', NULL, 1, NULL, NULL, NULL),
(176, 'بیان مهدوی', 172, 350, 5, '1403', '60', 3, 8, 'طبرسی شمالی ۵۱', 396, 11, 'مشهد', 'مشهد', 1, '2025-02-09 05:10:52', '2025-02-09 08:40:52', '2025-02-09 05:10:52'),
(437, 'مهدویت', 173, 332, 5, '1403', '60', 2, 40, 'منزل', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(540, 'اعیاد شعبانیه', 333, 195, 5, '1403', '150', 1, 50, 'مسجد', 396, 11, 'مشهد', 'محمد آباد', 1, NULL, '2025-03-01 09:13:33', NULL),
(438, 'ارزش واهمیت ماه شعبان', 179, 378, 5, '1403', '40', NULL, 60, 'مسجد سید وحدت اباد', 306, 4, 'فریدونشهر', 'وحدت اباد', 1, NULL, NULL, NULL),
(450, 'جایگاه حضرت ابا عبدالله نزد عامة الناس والشیعه', 180, 380, 5, '1403', '25', 1, 40, 'منازل مومنین', 49, 13, 'اهواز', NULL, 1, NULL, NULL, NULL),
(451, 'مکانت حضرت آبی الفضل العباس عند اهل البیت', 180, 380, 5, '1403', '20', 1, 45, 'حسینیه وبیوت مومنین', 49, 13, 'اهواز', NULL, 1, NULL, NULL, NULL),
(452, 'علمیت حضرت امام سجاد وشرحی بر مختصری بر رسالة الحقوق وصحیفه سجادیه', 180, 380, 5, '1403', '30', 1, 30, 'بیوت مومنین حسینیه', 49, 13, 'اهواز', NULL, 1, NULL, NULL, NULL),
(445, 'غدیر', 181, 388, 5, '1403', '3', 1, 2000, 'خراسان جنوبی روستای محروم', 181, 10, NULL, 'نوزاد', 1, NULL, NULL, NULL),
(446, 'اعیاد شعبانیه', 185, 149, 5, '1403', '45', 1, 200, 'مسجد امام حسین علیه السلام', 72, 9, 'سفیددشت', NULL, 1, NULL, NULL, NULL),
(448, 'مهدویت', 186, 403, 5, '1403', '20', 2, 80, 'ملک آباد 19 پلاک 105', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(447, 'مهدویت', 186, 403, 5, '1403', '20', 2, 80, 'روضه خانگی ملک آباد 19 پلاک 105', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(449, 'آخر الزمان', 190, 424, 5, '1403', '60', 1, 80, 'طبرسی شمالی ۳۸طباطبائی ۳۰ پلاک ۴۶', 396, 11, 'مشهد', 'مشهد', 1, NULL, NULL, NULL),
(455, 'احترام به والدین', 196, 129, 5, '1403', '40', 1, 100, 'مسجد امام حسین علیه السلام', 125, 30, 'تویسرکان', NULL, 1, NULL, NULL, NULL),
(453, 'ولایت و بصیرت', 196, 129, 5, '1403', '35', 1, 100, 'مسجد', 125, 30, 'تویسرکان', NULL, 1, NULL, NULL, NULL),
(454, 'اتحاد قلوب مومنین', 196, 129, 5, '1403', '40', 1, 100, 'مسجد', 125, 30, 'تویسرکان', NULL, 1, NULL, NULL, NULL),
(191, 'جایگاه امیر المومنین علی ( ع) در زندگی و اذهان مردم', 197, 165, 5, '1403', '60', 3, 80, 'هیأت', 375, 17, 'اشکنان', 'پسبند', 1, NULL, NULL, NULL),
(192, 'حجاب و عفاف', 197, 165, 5, '1403', '60', 1, 50, 'مسجد', 375, 17, 'اشکنان', 'پاقلات', 1, NULL, NULL, NULL),
(461, 'ویژگی اهل بیت و شفاعت دراخرت', 201, 430, 5, '1403', '30', 1, 50, 'مسجد', 396, 11, 'ملک اباد', 'امان اباد', 1, NULL, NULL, NULL),
(460, 'دهه فجر', 201, 430, 5, '1403', '30', 5, 150, 'هیئت روضه العباس', 369, 11, NULL, 'بهاباد', 1, NULL, NULL, NULL),
(459, 'ایام دهه فجر', 201, 430, 5, '1403', '200', 4, 300, 'مشهد مدرسه ولی عصر', 396, 11, 'مشهد', 'مشهد', 1, NULL, NULL, NULL),
(458, 'ولادت حضرت سجاد', 201, 430, 5, '1403', '60', 1, 200, 'مشهد رسالت جاده سیمان کشمیری 52شهرک شهرک سیدا', 396, 11, 'مشهد', 'مشهد', 1, NULL, NULL, NULL),
(456, 'ولادت امام حسین', 201, 430, 5, '1403', '50', 3, 100, 'خانه', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(457, 'ولادت حضرت عباس', 201, 430, 5, '1403', '50', 3, 80, 'مشهد خیابان سیدی', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(466, 'جشن،سخنرانی اعیاد شعبانیه  و...', 204, 246, 5, '1403', '150', 1, 100, 'مسجد،محله و اداره', 46, 13, 'اندیمشک', 'ولایت', 1, NULL, NULL, NULL),
(467, 'ایراد سخنرانی،جلسه بامردم ونتیجه آن ساخت در ایام شعبان آشپزخانه مسجد،ساخت. شاب مسجد،ساخت درب های مسجد وساخت شاب وایزوگام ۲۰۰مترمسجدو.،', 204, 246, 5, '1403', '600', 1, 100, 'مسجد عبدالله', 46, 13, 'اندیمشک', 'ولایت', 1, NULL, NULL, NULL),
(463, 'مهدویت', 206, 452, 5, '1403', '45', NULL, 150, 'رسالت ۷۲', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(462, 'منبر', 206, 452, 5, '1403', '45', NULL, 150, 'رسالت ۷۲', 396, 11, 'مشهد', NULL, 1, NULL, NULL, NULL),
(464, 'بیان احکام و مشاور دینی', 211, 456, 5, '1403', '20', 1, 20, 'مسجد', 129, 12, 'سنخواست', 'اندقان', 1, NULL, NULL, NULL),
(636, 'امام زمان و نیازهای امروز بشری', 213, 284, 5, '1403', '210', 5, 100, 'حسینیه', 398, 30, 'ملایر', 'ملایر', 1, NULL, '2025-03-10 09:04:17', NULL),
(205, 'رویان اخلاقی', 215, 174, 5, '1403', '60', 1, 200, 'مسجد', 182, 6, 'ارمو', 'اسدآباد سفلی', 1, '2025-02-12 07:41:29', '2025-02-12 11:11:29', '2025-02-12 07:41:29'),
(477, 'پیمان نامه با امام زمان', 218, 287, 5, '1403', '40', 3, 30, 'روستا', 302, 28, 'فراهام', 'ساروق', 1, NULL, '2025-03-01 06:56:52', NULL),
(476, 'استغاثه به امام زمان', 218, 287, 5, '1403', '45', NULL, 25, 'روستا', 302, 28, 'فراهان', 'غیاث آباد', 1, NULL, '2025-03-01 06:56:52', NULL),
(475, 'راه های ارتباط با امام زمان', 218, 287, 5, '1403', '30', 1, 30, 'شهرخنجین', 302, 28, 'خنجین', 'دستجان', 1, NULL, '2025-03-01 06:56:52', NULL),
(474, 'ویژگی های  یاران امام زمان', 218, 287, 5, '1403', '40', 1, 50, 'روستا', 302, 28, 'فراهان', 'غیاث آباد', 1, NULL, '2025-03-01 06:56:52', NULL),
(473, 'ویژگی های یاران امام زمان', 218, 287, 5, '1403', '45', 1, 35, 'روستا', 302, 28, 'فراهان', 'بورقان', 1, NULL, '2025-03-01 06:56:52', NULL),
(478, 'دهه فجر و ایام ولادت شعبانیه', 219, 118, 5, '1403', '45', 1, 180, 'مسجد', 443, 30, 'همدان', NULL, 1, NULL, '2025-03-01 07:06:09', NULL),
(479, NULL, 220, 17, 5, '1403', NULL, NULL, NULL, NULL, 375, 17, NULL, NULL, 1, NULL, '2025-03-01 07:07:21', NULL),
(480, 'شعبانیه', 221, 368, 5, '1403', '50', 1, 50, 'مسجدومدرسه', 231, 16, 'زهک', 'حسن خون', 1, NULL, '2025-03-01 07:08:28', NULL),
(484, 'اعیاد شعبانیه', 222, 231, 5, '1403', '60', 1, 200, 'مسجد جامع', 411, 2, 'چهاربرج', NULL, 1, NULL, '2025-03-01 07:24:18', NULL),
(483, 'اعیاد شعبانیه', 222, 231, 5, '1403', '100', 4, 150, 'مدرسه والفجر', 411, 2, 'چهاربرج', NULL, 1, NULL, '2025-03-01 07:24:18', NULL),
(482, 'تبلیغ اعیاد شعبانیه', 222, 231, 5, '1403', '60', 3, 100, 'مسجد 14معصوم ع', 411, 2, 'چهاربرج', NULL, 1, NULL, '2025-03-01 07:24:18', NULL),
(568, 'مهدویت', 367, 259, 5, '1403', '60', 1, 80, 'مسجد فاطمه الزهرا', 104, 29, 'پارسیان', '.', 1, NULL, '2025-03-02 08:23:15', NULL),
(481, 'مهدویت', 227, 191, 5, '1403', '25', 1, 40, 'حسینیه', 327, 19, 'قم', 'قم', 1, NULL, '2025-03-01 07:19:43', NULL),
(485, 'سبک زندگی مهدوی', 230, 22, 5, '1403', '60', NULL, 90, 'مسجد', 321, 20, NULL, 'بهار لو', 1, NULL, '2025-03-01 07:29:24', NULL),
(489, 'تربیت یافتگان مکتب اهل بیت', 231, 203, 5, '1403', '20', 2, 150, 'حسینیه زندان مرکزی', 20, 3, 'اردبیل', NULL, 1, NULL, '2025-03-01 07:35:10', NULL),
(488, 'تربیت یافتگان مکتب اهل بیت علیهم السلام', 231, 203, 5, '1403', '25', 2, 50, 'مسجد محمدیه', 20, 3, 'اردبیل', NULL, 1, NULL, '2025-03-01 07:35:10', NULL),
(487, 'تربیت اهل بیت، تربیت الهی است', 231, 203, 5, '1403', '25', 2, 50, 'مسجد محمدیه', 20, 3, 'اردبیل', NULL, 1, NULL, '2025-03-01 07:35:10', NULL),
(490, 'جشن نیمه شعبان', 232, 276, 5, '1403', '120', NULL, 1000, 'سالن و رزشی', 396, 11, NULL, 'کنه بیست', 1, NULL, '2025-03-01 07:43:00', NULL),
(491, 'منبرها', 239, 189, 5, '1403', '100', 1, 200, 'مسجد', 401, 17, 'خومه زار', 'ممسنی', 1, NULL, '2025-03-01 07:43:31', NULL),
(494, NULL, 244, 159, 5, '1403', '20', 4, 17, 'مدرسه', 7, 4, NULL, NULL, 1, NULL, '2025-03-01 07:48:45', NULL),
(493, NULL, 244, 159, 5, '1403', '20', 4, 19, 'مدرسه', 7, 4, NULL, NULL, 1, NULL, '2025-03-01 07:48:45', NULL),
(492, NULL, 244, 159, 5, '1403', '20', 4, 19, 'مدرسه', 7, 4, NULL, NULL, 1, NULL, '2025-03-01 07:48:45', NULL),
(495, 'نیمه شعبان', 245, 50, 5, '1403', '120', 4, 20, 'مسجد', 222, 21, 'گنبکی', 'علی آباد', 1, NULL, '2025-03-01 07:49:53', NULL),
(499, 'ولادت حضرت علی اکبر علیه السلام', 247, 282, 5, '1403', '35', 1, 200, 'مسجد', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-01 07:51:48', NULL),
(498, 'ولادت امام سجاد علیه السلام', 247, 282, 5, '1403', '35', 1, 200, 'مسجد', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-01 07:51:48', NULL),
(497, 'ولادت حضرت ابوالفضل علیه السلام', 247, 282, 5, '1403', '35', 1, 200, 'مسجد', 396, 11, 'مشهد', '396', 1, NULL, '2025-03-01 07:51:48', NULL),
(496, 'جشن ولادت امام حسین علیه السلام', 247, 282, 5, '1403', '35', 1, 200, 'مسجد', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-01 07:51:48', NULL),
(500, 'ایام شعبانیه', 251, 262, 5, '1403', '60', NULL, 250, 'مسجد جامع امام علی علیه السلام', 208, 8, 'پرند', NULL, 1, NULL, '2025-03-01 07:59:31', NULL),
(506, 'امام زمان ع', 258, 96, 5, '1403', '45', 4, 32, 'مدرسه', 327, 19, 'قم', NULL, 1, NULL, '2025-03-01 08:04:48', NULL),
(505, 'امام زمان ع', 258, 96, 5, '1403', '45', 4, 36, 'مدرسه', 327, 19, 'قم', NULL, 1, NULL, '2025-03-01 08:04:48', NULL),
(504, 'امام زمان وشیخ مفید', 258, 96, 5, '1403', '45', 4, 35, 'مدرسه', 327, 19, 'قم', NULL, 1, NULL, '2025-03-01 08:04:48', NULL),
(503, 'امام زمان ع', 258, 96, 5, '1403', '45', 4, 30, 'مدرسه', 327, 19, 'قم', NULL, 1, NULL, '2025-03-01 08:04:48', NULL),
(502, 'امام زمان', 258, 96, 5, '1403', '35', 1, 25, 'حسینیه', 327, 19, 'قم', NULL, 1, NULL, '2025-03-01 08:04:48', NULL),
(501, 'امام زمان ع', 258, 96, 5, '1403', '45', 2, 30, 'حسینیه', 327, 19, 'قم', NULL, 1, NULL, '2025-03-01 08:04:48', NULL),
(507, 'ولادت امام حسین ودهه فجر', 259, 490, 5, '1403', '200', 1, 200, 'حسینیه انصارالزهرا', 99, 10, 'بیرجند', NULL, 1, NULL, '2025-03-01 08:07:45', NULL),
(508, 'تدبر در قرآن .امام زمان و آثار  و برکات ظهور', 260, 448, 5, '1403', '50', 1, 200, 'مسجد ولیعصر زیاران', 4, 18, 'زیاران', NULL, 1, NULL, '2025-03-01 08:08:12', NULL),
(627, 'مهدویت', 447, 94, 5, '1403', '150', 1, 50, 'مسجد', 327, 19, 'قم', NULL, 1, NULL, '2025-03-09 09:02:16', NULL),
(628, 'مهدویت', 448, 100, 5, '1403', '90', 4, 15, 'مسجد و حسینیه', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-09 09:11:05', NULL),
(512, 'ولادت حضرت ابالفضل ع', 262, 488, 5, '1403', '20', 1, 20, 'مسجدصاحب الزمان عج', 206, 24, 'رامیان', NULL, 1, NULL, '2025-03-01 08:14:56', NULL),
(511, 'ولادت امام حسین ع', 262, 488, 5, '1403', '20', 1, 20, 'مسجدصاحب الزمان عج', 206, 24, 'رامیان', NULL, 1, NULL, '2025-03-01 08:14:56', NULL),
(513, 'وظایف ما در دوران غیبت', 273, 464, 5, '1403', '60', 1, 30, 'کمیته امداد', 277, 13, 'شوشتر', NULL, 1, NULL, '2025-03-01 08:18:40', NULL),
(465, 'اعیاد شعبانیه و دهه فجر', 274, 431, 5, '1403', '450', 1, 100, 'مسجد و حسینیه', 396, 11, 'ملک آباد', 'امان آباد و دهسرخ', 1, NULL, NULL, NULL),
(257, 'اعیاد شعبانیه (اجماع قلوب)', 275, 28, 5, '1403', '120', 4, 30, 'مدرسه', 281, 9, 'کیان', NULL, 1, NULL, NULL, NULL),
(258, 'اعیاد شعبانیه (اجماع قلوب)', 275, 28, 5, '1403', '120', 4, 30, 'کدرسه', 281, 9, 'کیان', NULL, 1, NULL, NULL, NULL),
(515, 'اعمال که سفارش شده در روز وشب نیمه شعبان', 276, 285, 5, '1403', '30', NULL, 50, 'اهواز روستای خبینه مسجد محمد رسول الله صلی الله علیه و آله وسلم', 49, 13, 'اهواز', 'روستای خبینه', 1, NULL, '2025-03-01 08:21:35', NULL),
(514, 'افضل اعمال امتی انتظار الفرج.  وفضیلت شب نیمه شعبان و.  در رابطه باخود سازی ظاهری وزبانی', 276, 285, 5, '1403', '35', NULL, 60, 'حسینیه ومسجد', 49, 13, 'اهواز', 'لشکر آباد وخبینه', 1, NULL, '2025-03-01 08:21:35', NULL),
(524, 'ویژگی های عصر غیبت', 279, 24, 5, '1403', '50', 1, 200, 'مسجد ثامن الحجج', 99, 10, 'بیرجند', NULL, 1, NULL, '2025-03-01 08:24:34', NULL),
(525, 'فضیلت های انتظار', 279, 24, 5, '1403', '50', 1, 200, 'مسجد ثامن الحجج', 99, 10, 'بیرجند', NULL, 1, NULL, '2025-03-01 08:24:34', NULL),
(523, 'ویژگی های عصر ظهور', 279, 24, 5, '1403', '60', 1, 200, 'مسجد ثامن الحجج', 99, 10, 'بیرجند', NULL, 1, NULL, '2025-03-01 08:24:34', NULL),
(522, 'وظایف منتظران', 279, 24, 5, '1403', '50', 1, 200, 'مسجد ثامن الحجج', 99, 10, 'بیرجند', NULL, 1, NULL, '2025-03-01 08:24:34', NULL),
(521, 'موانع ظهور', 279, 24, 5, '1403', '50', 1, 200, 'مسجد ثامن الحجج', 99, 10, 'بیرجند', NULL, 1, NULL, '2025-03-01 08:24:34', NULL),
(526, 'ماه شعبان', 284, 295, 5, '1403', '45', 1, 60, 'مسجد', 396, 11, 'مشهد', 'مشهد', 1, NULL, '2025-03-01 08:25:17', NULL),
(527, 'با وجود تکنولوژی چه نیازی به وجود مبارک امام زمان(عج) داریم.', 285, 312, 5, '1403', '240', 1, 500, 'حسینیه اداره تبلیغات اسلامی شهرستان پیرانشهر', 111, 2, 'پیرانشهر', NULL, 1, NULL, '2025-03-01 08:26:49', NULL),
(268, 'سخنرانی در باب اعیاد شعبانیه', 290, 196, 5, '1403', '20', 4, 60, 'مدرسه', 218, 21, 'زهکلوت', NULL, 1, NULL, NULL, NULL),
(528, 'مهدویت -امام زمان', 291, 463, 5, '1403', '45', 1, 80, 'تهران-ورامین', 435, 8, 'تهران', NULL, 1, NULL, '2025-03-01 08:32:13', NULL),
(529, 'مهدویت', 294, 296, 5, '1403', '30', 1, 120, 'مسجد جامع سیدالشهدا علیه السلام', 396, 11, 'ملک آباد', 'دیزباد سفلی', 1, NULL, '2025-03-01 08:34:49', NULL),
(530, 'استواری برولایت درزمان غیبت اززبان امام سجاد علیه السلام', 295, 395, 5, '1403', '45', 2, 35, 'هیأت انصار الحسن علیه السلام', 396, 11, 'مشهد', 'گروه حیدریون', 1, NULL, '2025-03-01 08:35:30', NULL),
(277, 'امام شناسی', 304, 26, 5, '1403', '30', 4, 70, 'قرارگاه شهید اشتیانی', 336, 5, 'ماهدشت', NULL, 1, NULL, NULL, NULL),
(278, 'امام زمان علیه السلام', 305, 150, 5, '1403', '55', 3, 100, 'موسسه قرآنی بیت الاحزان حضرت زهرا سلام الله علیها', 309, 17, 'زاهدشهر', 'سنان', 1, NULL, NULL, NULL),
(536, 'انتظار فرج یعنی ....', 307, 27, 5, '1403', '50', 2, 50, 'مسجد', 378, 4, 'باغبهادران', 'کرچگان', 1, NULL, '2025-03-01 08:41:29', NULL),
(535, 'اجتماع قلوب شیعیان', 307, 27, 5, '1403', '50', 1, 150, 'مسجد', 378, 4, 'باغبهادران', 'کرچگان', 1, NULL, '2025-03-01 08:41:29', NULL),
(537, NULL, 310, 303, 5, '1403', '90', 1, 400, 'مسجد و حسینیه', 86, 4, NULL, NULL, 1, NULL, '2025-03-01 08:48:58', NULL),
(562, 'امام زمان', 314, 188, 5, '1403', '45', 4, 70, 'مدرسه', 222, 21, 'گنبکی', 'شلتوک آباد', 1, NULL, '2025-03-02 07:58:09', NULL),
(538, 'میلاد امام زمان عج (  نیمه شعبان)', 316, 20, 5, '1403', '45', 1, 200, 'مسجد', 336, 5, 'حصارک', 'شهرک امام حسین علیه السلام', 1, NULL, '2025-03-01 08:53:01', NULL),
(284, 'دعا برای تعجیل در ظهور و سلامتی امام زمان و رواج بی بندو باری با اطاعت از شبطان', 321, 63, 5, '1403', '18', 3, 30, 'روستای ویله', 54, 6, 'ایوان', 'ویله', 1, NULL, NULL, NULL),
(285, 'جنگ شناختی و جهادتبیین و مقایسه وضعیت کنونی با زمان پهلوی', 321, 63, 5, '1403', '15', 3, 50, 'پایگاه بسیج', 54, 6, 'ایوان', NULL, 1, NULL, NULL, NULL),
(286, 'استغاثه و پناه بردن به امام زمان و راههای دستیابی به سعادت و رستگاری', 321, 63, 5, '1403', '18', 4, 190, '۱۳', 54, 6, 'ایوان', NULL, 1, NULL, NULL, NULL),
(287, 'اجتماع قلوب و عفاف و‌حجاب', 321, 63, 5, '1403', '20', 3, 25, 'جشن خانگی', 54, 6, 'ایوان', NULL, 1, NULL, NULL, NULL),
(288, 'نیمه شعبان و چگونگی جلب رضایت امام زمان عج', 321, 63, 5, '1403', '30', 4, 22, 'مدرسه شهیده عاطفه رشیدی', 54, 6, 'ایوان', NULL, 1, NULL, NULL, NULL),
(563, 'معارف مهدوی و استغاثه', 331, 9, 5, '1403', '30', 1, 120, 'مسجد', 371, 24, 'گنبد', 'ابوذر2', 1, NULL, '2025-03-02 08:06:09', NULL),
(541, 'ویژه گی جامعه مهدوی', 335, 40, 5, '1403', '35', 1, 250, 'مسجد', 396, 11, 'شاندیز', 'فرح آباد', 1, NULL, '2025-03-01 09:14:31', NULL),
(544, 'اجتماع قلوب و خرج در راه امام زمان', 336, 341, 5, '1403', '45', 1, 40, 'منزل', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-01 09:15:05', NULL),
(543, 'اجتماع قلوب و معیت با ائمه', 336, 341, 5, '1403', '25', 1, 60, 'مسجد چهارده معصوم', 396, 11, NULL, 'مهدی آباد', 1, NULL, '2025-03-01 09:15:05', NULL),
(542, 'اجتماع قلوب در کلام امام عصر ارواحنافداه', 336, 341, 5, '1403', '45', 5, 30, 'هیات', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-01 09:15:05', NULL),
(545, 'نیمه شعبان', 338, 37, 5, '1403', '30', 3, 40, 'دهنوگنبکی', 222, 21, 'گنبکی', 'دهنو گنبکی', 1, NULL, '2025-03-01 09:16:09', NULL),
(549, 'امام زمان(عج)', 341, 213, 5, '1403', '30', 1, 200, 'حسنیه امام حسن مجتبی(ع)', 112, 8, 'پیشوا', NULL, 1, NULL, '2025-03-01 09:18:50', NULL),
(548, 'دلایل وجود امام زمان(عج)', 341, 213, 5, '1403', '35', 5, 100, 'هیئت حیدری های بازار', 112, 8, 'پیشوا', NULL, 1, NULL, '2025-03-01 09:18:50', NULL),
(547, 'امام زمان(عج)در ادیان', 341, 213, 5, '1403', '30', 1, 250, 'مسجد امیرالمومنین(ع)', 435, 8, 'ورامین', NULL, 1, NULL, '2025-03-01 09:18:50', NULL),
(546, 'حقیقت امام زمان(عج)', 341, 213, 5, '1403', '40', 1, 150, 'مسجد الزهرا(س)', 435, 8, 'ورامین', NULL, 1, NULL, '2025-03-01 09:18:50', NULL),
(565, 'محبت به امام زمان سلام الله علیه', 345, 229, 5, '1403', '30', 1, 50, 'مسجد', 377, 9, 'لردگان', 'خاردان', 1, NULL, '2025-03-02 08:13:19', NULL),
(564, 'آثار انتظار', 345, 229, 5, '1403', '30', 1, 400, 'حسینیخ', 377, 9, 'لردگان', 'خاردان', 1, NULL, '2025-03-02 08:13:19', NULL),
(550, 'ولادت حضرت مهدی علیه السلام', 346, 391, 5, '1403', '15', 1, 60, 'مسجد حضرت ابوالفضل علیه السلام', 396, 11, NULL, 'زرکش', 1, NULL, '2025-03-01 09:21:09', NULL),
(552, NULL, 347, 278, 5, '1403', '20', 1, 70, 'مسجد', 396, 11, NULL, NULL, 1, NULL, '2025-03-01 09:21:52', NULL),
(306, 'بلابلا', 359, 198, 5, '1403', '4', 2, 4, 'بلبل', 38, 3, 'بلابلا', NULL, 1, '2025-02-15 06:53:16', '2025-02-15 10:23:16', '2025-02-15 06:53:16'),
(567, 'اجتماع دختران مهدوی', 361, 35, 5, '1403', '45', 3, 200, 'حسینیه', 127, 4, 'عسگران', 'قلعه ناظر', 1, NULL, '2025-03-02 08:20:23', NULL),
(566, 'اجتماع قلوب', 361, 35, 5, '1403', '35', 1, 300, 'مسجد جامع', 127, 4, 'عسگران', 'قلعه ناظر', 1, NULL, '2025-03-02 08:20:23', NULL),
(555, 'اجتماع قلوب شیعیان', 362, 58, 5, '1403', '30', 2, 10, 'مسجد طفلان مسلم', 115, 1, 'تبریز', NULL, 1, NULL, '2025-03-01 09:28:01', NULL),
(554, 'نیمه شعبان', 362, 58, 5, '1403', '30', 2, 30, 'مسجد طفلان مسلم ع', 115, 1, 'تبریز', NULL, 1, NULL, '2025-03-01 09:28:01', NULL),
(578, 'وظایف ما در برابر امام زمان', 368, 186, 5, '1403', '40', 1, 50, 'شهرک شهید رجایی-حر۲۸ بین اروند 19 و 21 مسجد امام محمد باقر علیه السلام', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-02 08:24:08', NULL),
(577, 'معرفت به امام زمان', 368, 186, 5, '1403', '40', 1, 50, 'شهرک شهید رجایی-حر۲۸ بین اروند 19 و 21 مسجد امام محمد باقر علیه السلام', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-02 08:24:08', NULL),
(576, 'مقام امام زمان عجل الله تعالی فرجه الشریف', 368, 186, 5, '1403', '40', 1, 50, 'شهرک شهید رجایی-حر۲۸ بین اروند 19 و 21 مسجد امام محمد باقر علیه السلام', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-02 08:24:08', NULL),
(575, 'جوان', 368, 186, 5, '1403', '40', 1, 50, 'شهرک شهید رجایی-حر۲۸ بین اروند 19 و 21 مسجد امام محمد باقر علیه السلام', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-02 08:24:08', NULL),
(574, 'حضرت علی اکبر علیه السلام', 368, 186, 5, '1403', '40', 1, 50, 'شهرک شهید رجایی-حر۲۸ بین اروند 19 و 21 مسجد امام محمد باقر علیه السلام', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-02 08:24:08', NULL),
(573, 'قرآن', 368, 186, 5, '1403', '40', 1, 50, 'شهرک شهید رجایی-حر۲۸ بین اروند 19 و 21 مسجد امام محمد باقر علیه السلام', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-02 08:24:08', NULL),
(572, 'قیامت', 368, 186, 5, '1403', '40', 1, 50, 'شهرک شهید رجایی-حر۲۸ بین اروند 19 و 21 مسجد امام محمد باقر علیه السلام', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-02 08:24:08', NULL),
(571, 'مقام امام سجاد علیه السلام', 368, 186, 5, '1403', '40', 1, 50, 'شهرک شهید رجایی-حر۲۸ بین اروند 19 و 21 مسجد امام محمد باقر علیه السلام', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-02 08:24:08', NULL),
(570, 'قمر بنی هاشم اباالفضل العباس', 368, 186, 5, '1403', '40', 1, 50, 'شهرک شهید رجایی-حر۲۸ بین اروند 19 و 21 مسجد امام محمد باقر علیه السلام', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-02 08:24:08', NULL),
(569, 'مقام امام حسین علیه السلام', 368, 186, 5, '1403', '40', 1, 50, 'شهرک شهید رجایی-حر۲۸ بین اروند 19 و 21 مسجد امام محمد باقر علیه السلام', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-02 08:24:08', NULL),
(580, 'مهدویت', 372, 372, 5, '1403', '100', 1, 50, 'مسجد و حسینیه', 106, 8, 'پاکدشت', NULL, 1, NULL, '2025-03-02 08:24:55', NULL),
(581, 'امام زمان عجل الله تعالی فرجه الشریف و رفتار مومنانه', 373, 401, 5, '1403', '60', 1, 100, 'مشهد بلوار طبرسی شمالی 61 مسجد چهارده معصوم علیه السلام', 396, 11, 'مشهد', 'مشهد', 1, NULL, '2025-03-02 08:25:23', NULL),
(582, 'میلاد امام زمان(عج)', 375, 481, 5, '1403', '90', 1, 170, 'مسجد قمربنی هاشم', 238, 17, 'اردکان', 'اردکان', 1, NULL, '2025-03-02 08:27:52', NULL),
(586, 'مهدویت و انتظار', 379, 233, 5, '1403', '100', 1, 50, 'موکب مجمع نمایندگان طلاب حوزه علمیه قم در مسیر پیاده روی به سمت جمکران .', 327, 19, 'قم', NULL, 1, NULL, '2025-03-02 08:37:21', NULL),
(584, 'انتظار فرج', 379, 233, 5, '1403', '45', 1, 100, 'مسجدصاحب الزمان(عج)', 338, 21, 'کرمان', NULL, 1, NULL, '2025-03-02 08:37:21', NULL),
(585, 'دعا در زمان غیبت', 379, 233, 5, '1403', '40', 1, 100, 'حسینیه گلزار شهدای کرمان مزار شهیدحاج قاسم سلیمانی.', 338, 21, 'کرمان', NULL, 1, NULL, '2025-03-02 08:37:21', NULL),
(583, 'ویژگیهای یاران امام زمان (عجل الله تعالی فرجه الشریف)', 379, 233, 5, '1403', '60', 1, 100, 'مسجدامام حسین علیه السلام', 338, 21, 'کرمان', NULL, 1, NULL, '2025-03-02 08:37:21', NULL),
(587, 'دهه فجر انقلاب و اعیادشعبانیه', 380, 344, 5, '1403', '100', 4, 35, 'مدرسه المنجی', 396, 11, 'مشهد مقدس', 'حاشیه شهر', 1, NULL, '2025-03-02 08:40:54', NULL),
(591, 'دانش افزایی مهارت‌های مهدوی', 381, 32, 5, '1403', '300', 3, 35, 'حوزه علمیه بقیع', 336, 5, 'کرج', NULL, 1, NULL, '2025-03-02 08:42:34', NULL),
(590, 'گونه شناسی دعاهای حضرت امام زمان علیه السلام', 381, 32, 5, '1403', '50', 1, 85, 'مسجد پیغمبر', 126, 8, 'تهران', NULL, 1, NULL, '2025-03-02 08:42:34', NULL),
(589, 'عدم سنخیت ملاکات الهی و ملاکات بشری', 381, 32, 5, '1403', '55', 1, 70, 'مسجد حضرت ولیعصر علیه السلام', 126, 8, 'تهران', NULL, 1, NULL, '2025-03-02 08:42:34', NULL),
(588, 'راه های نجات از هلاکت در دوران غیبت', 381, 32, 5, '1403', '50', 1, 150, 'مسجد حضرت حمزه سیدالشهدا علیه السلام', 126, 8, 'تهران', NULL, 1, NULL, '2025-03-02 08:42:34', NULL),
(592, 'جشن میلاد امام زمان علیه السلام', 386, 329, 5, '1403', '60', 1, 850, 'مسجد جامع امام حسن عسکری علیه السلام', 418, 4, 'نایین', 'جزن آباد', 1, NULL, '2025-03-02 08:48:50', NULL),
(596, 'احیاء شب نیمه شعبان', 387, 440, 5, '1403', '240', 1, 50, 'مسجد حاج زین العابدین', 170, 4, NULL, 'رحمت آباد', 1, NULL, '2025-03-02 08:50:05', NULL),
(595, 'نیمه شعبان', 387, 440, 5, '1403', '30', 1, 80, 'مسجد حاج زین العابدین', 170, 4, NULL, 'رحمت آباد', 1, NULL, '2025-03-02 08:50:05', NULL),
(594, 'نیمه شعبان', 387, 440, 5, '1403', '90', 1, 120, 'مسجد جامع', 170, 4, NULL, 'رحمت آباد', 1, NULL, '2025-03-02 08:50:05', NULL),
(593, 'اعیاد شعبانیه', 387, 440, 5, '1403', '300', 1, 80, 'مسجد حاج زین العابدین', 170, 4, NULL, 'روستای رحمت آباد', 1, NULL, '2025-03-02 08:50:05', NULL),
(598, 'تبیین حکومت امام زمان', 388, 297, 5, '1403', '30', 1, 150, 'مسجد', 396, 11, 'رضویه', 'خادم اباد', 1, NULL, '2025-03-02 08:51:22', NULL),
(597, 'وظایف منتظران', 388, 297, 5, '1403', '30', 1, 150, 'حسینیه', 396, 11, 'رضویه', 'خادم اباد', 1, NULL, '2025-03-02 08:51:22', NULL),
(599, 'امامت و مهدویت', 392, 330, 5, '1403', '240', 1, 30, 'تهران', 94, 8, 'نسیم شهر', 'اورین', 1, NULL, '2025-03-02 09:07:24', NULL),
(486, 'خرج کردن سرمایه ها در راه خداوند و ولی الهی', 231, 203, 5, '1403', '20', 2, 180, 'آمفی تئاتر', 20, 3, 'اردبیل', NULL, 1, NULL, '2025-03-01 07:35:10', NULL),
(600, 'مهدویت', 396, 406, 5, '1403', '45', 1, 100, 'مسجد', 86, 4, NULL, 'ازناوله', 1, NULL, '2025-03-02 09:11:40', NULL),
(601, 'نیمه شعبان', 398, 385, 5, '1403', '2', 1, 150, 'مسجد', 396, 11, 'ملک اباد', 'بازه حوض', 1, NULL, '2025-03-02 09:13:04', NULL),
(604, 'امام زمان علیه السلام', 399, 68, 5, '1403', '30', 1, 30, 'منزل شخصی', 396, 11, 'مشهد', '0', 1, NULL, '2025-03-02 09:13:40', NULL),
(605, 'امام زمان علیه السلام', 399, 68, 5, '1403', '30', 1, 30, 'منزل شخصی', 396, 11, 'مشهد', '0', 1, NULL, '2025-03-02 09:13:40', NULL),
(603, 'امام زمان علیه السلام', 399, 68, 5, '1403', '30', 1, 30, 'مسجد أم البنین علیها سلام', 396, 11, 'مشهد', '0', 1, NULL, '2025-03-02 09:13:40', NULL),
(602, 'پیرامون امام زمان علیه السلام', 399, 68, 5, '1403', '30', 1, 30, 'مسجد فاطمةُ الزهرا سلام الله علیها', 396, 11, 'مشهد', '0', 1, NULL, '2025-03-02 09:13:40', NULL),
(368, 'شناخت امام زمان عجل الله تعالی فرجه الشریف', 400, 513, 5, '1403', '30', 3, 50, 'حسینیه', 216, 29, 'رودان', 'فاریاب', 1, NULL, NULL, NULL),
(369, 'رسانه و اندیشه مهدوی', 400, 513, 5, '1403', '20', 3, 45, 'دانشگاه فرهنگیان', 216, 29, 'دهبارز', 'ندارد', 1, NULL, NULL, NULL),
(606, 'معارفی پیرامون امام زمان عجل الله تعالی فرجه الشریف', 403, 217, 5, '1403', '30', 2, 9, 'قم', 327, 19, 'قم', NULL, 1, NULL, '2025-03-02 09:14:27', NULL),
(607, 'نیمه شعبان', 404, 117, 5, '1403', '60', NULL, 100, 'مسجد', 71, 26, NULL, 'کوشکی علیا', 1, NULL, '2025-03-02 09:14:49', NULL),
(608, 'اعیاد شعبانیه', 407, 333, 5, '1403', '60', 1, 200, 'مسجد روستا', 103, 3, 'پارس آباد', 'تکله کندی', 1, NULL, '2025-03-02 09:15:57', NULL),
(609, 'ولادت امام زمان', 409, 429, 5, '1403', '240', 1, 300, 'مسجد(منبر مولودی)', 290, 10, 'طبس', NULL, 1, NULL, '2025-03-02 09:16:30', NULL),
(610, 'وظیفه منتظران براساس توقیع شریف مهدوی', 413, 57, 5, '1403', '30', 5, 50, 'مشهد توس۵۳ مسجد حضرت رسول اکرم', 396, 11, 'مشهد', 'مشهد', 1, NULL, '2025-03-02 09:17:18', NULL),
(612, 'مهدویت و انتظار', 418, 264, 5, '1403', '30', 2, 40, 'منزل و مسجد', 193, 26, 'دورود', NULL, 1, NULL, '2025-03-03 06:28:35', NULL),
(611, 'مهدویت', 418, 264, 5, '1403', '30', 1, 60, 'منزل', 193, 26, 'دورود', NULL, 1, NULL, '2025-03-03 06:28:35', NULL),
(613, 'عوامل غیبت امام زمان', 421, 323, 5, '1403', '45', 3, 10, 'منزل', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-03 06:32:43', NULL),
(617, 'خداشناسی', 422, 258, 5, '1403', '40', 1, 50, 'هیات رایات الحسین', 360, 23, 'دوگنبدان', NULL, 1, NULL, '2025-03-03 06:33:14', NULL),
(616, 'اخلاق مهدوی', 422, 258, 5, '1403', '30', 1, 100, 'مسجد صاحب الزمان عجل الله فرجه', 360, 23, 'دوگنبدان', NULL, 1, NULL, '2025-03-03 06:33:14', NULL),
(615, 'خانواده مهدوی', 422, 258, 5, '1403', '30', 1, 50, 'هیات خانگی', 360, 23, 'دوگنبدان', NULL, 1, NULL, '2025-03-03 06:33:14', NULL),
(614, 'مهدویت', 422, 258, 5, '1403', '40', 1, 100, 'مرکز شهر', 360, 23, 'دوگنبدان', NULL, 1, NULL, '2025-03-03 06:33:14', NULL),
(618, 'مهدویت و نهج البلاغه', 424, 134, 5, '1403', '60', 1, 300, 'مسجد شهید آیت الله مدنی چهارراه طیب', 157, 26, 'خرم آباد', NULL, 1, NULL, '2025-03-03 06:34:21', NULL),
(619, 'نیمه شعبان', 428, 21, 5, '1403', '30', 1, 20, 'مسجدوبیمارستان', 43, 13, 'امیدیه', 'امیدیه', 1, NULL, '2025-03-03 06:37:01', NULL),
(560, 'اعیاد شعبانیه', 314, 188, 5, '1403', '30', 4, 70, 'مدرسه', 222, 21, 'گنبکی', 'شلتوک اباد', 1, NULL, '2025-03-02 07:58:09', NULL),
(561, 'امام شناسی', 314, 188, 5, '1403', '30', 3, 25, 'جلسه خانگی', 222, 21, 'گنبکی', 'شلتوک آباد', 1, NULL, '2025-03-02 07:58:09', NULL),
(620, 'عظمت ماه شعبان', 433, 515, 5, '1403', '45', 1, 250, 'مسجد صاحب الزمان عج علمدار محله خلیل‌شهر بهشهر', 96, 27, 'خلیل‌شهر', 'علمدارمحله', 1, NULL, '2025-03-03 06:39:04', NULL),
(510, 'ولادت امام زمان عج', 262, 488, 5, '1403', '20', 1, 15, 'مسجد صاحب الزمان عج', 206, 24, 'رامیان', NULL, 1, NULL, '2025-03-01 08:14:56', NULL),
(509, 'ولادت امام سجادع', 262, 488, 5, '1403', '20', 1, 20, 'مسجدصاحب الزمان عج', 206, 24, 'رامیان', NULL, 1, NULL, '2025-03-01 08:14:56', NULL),
(469, 'اجتماع قلوب', 434, 107, 5, '1403', '60', 1, 200, 'مسجد امام رضا(علیه السلام)', 371, 24, NULL, 'سلمان فارسی۱', 1, NULL, NULL, NULL),
(429, 'اضطرار به امام زمان', 435, 314, 5, '1403', '25', 5, 40, 'هیئت حسن بن حیدر', 29, 30, 'اسدآباد', NULL, 1, NULL, NULL, NULL),
(428, 'یاد امام زمان سلام الله علیه', 435, 314, 5, '1403', '20', 5, 170, 'حسینیه سیدالشهدا جنت آباد', 29, 30, 'پالیز', 'جنت آباد', 1, NULL, NULL, NULL),
(427, 'مهربانی امام عصر سلام الله علیه', 435, 314, 5, '1403', '25', NULL, 200, 'منزل شخصی آقای محسن حمیدی', 29, 30, 'اسدآباد', 'چنار علیا', 1, NULL, NULL, NULL),
(424, 'اقتدا به سیره اهل بیت', 149, 79, 5, '1403', '120', 1, 100, 'مسجد ومنزل', 122, 2, NULL, 'قینرجه', 1, NULL, NULL, NULL),
(468, 'فضیلت نیمه شعبان', 437, 7, 5, '1403', '30', 1, 500, 'یزد رضوانشهر', 448, 31, 'رضوانشهر', NULL, 1, NULL, NULL, NULL),
(579, 'انتظار به معنای انتظار', 368, 186, 5, '1403', '40', 1, 50, 'شهرک شهید رجایی-حر۲۸ بین اروند 19 و 21 مسجد امام محمد باقر علیه السلام', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-02 08:24:08', NULL),
(621, 'مهدویت', 438, 31, 5, '1403', '300', 1, 300, 'مسجد و مدرسه', 225, 16, 'زاهدان', NULL, 1, NULL, '2025-03-08 08:32:37', NULL),
(622, 'مهدویت', 439, 88, 5, '1403', '300', 1, 160, 'کاروان شادی (سخنرانی در مسجد و حسینه و مسیر جمکران)', 327, 19, 'قم', NULL, 1, NULL, '2025-03-09 07:52:13', NULL),
(623, 'مهدویت', 442, 89, 5, '1403', '120', NULL, 300, 'مسجد امام، مسجد جامع، حسینیه (', 364, 12, 'درق', NULL, 1, NULL, '2025-03-09 08:11:50', NULL),
(624, NULL, 443, 91, 5, '1403', '30', 1, 100, NULL, 327, 19, 'قم', NULL, 1, NULL, '2025-03-09 08:20:19', NULL),
(625, 'مهدویت', 444, 83, 5, '1403', '1000', NULL, 400, 'ستاد غدیریه', 327, 19, 'قم', NULL, 1, NULL, '2025-03-09 08:34:23', NULL),
(626, NULL, 445, 93, 5, '1403', '90', 1, 80, 'خانگی', 396, 11, 'مشهد', NULL, 1, NULL, '2025-03-09 08:52:26', NULL),
(629, 'مهدویت', 449, 55, 5, '1403', '150', 1, 250, 'مسجد و حسینیه', 211, 25, 'رشت', NULL, 1, NULL, '2025-03-09 09:23:52', NULL),
(630, NULL, 453, 29, 5, '1403', '120', NULL, 500, NULL, 106, 8, NULL, NULL, 1, NULL, '2025-03-10 07:20:17', NULL),
(631, NULL, 454, 109, 5, '1403', '200', 1, 100, 'مسجد (ده جلسه)', 421, 4, 'بادرود', NULL, 1, NULL, '2025-03-10 07:38:57', NULL),
(632, 'مهدویت', 454, 109, 5, '1403', '90', 4, 120, 'مدرسه (سه جلسه)', 421, 4, 'خالد آباد', NULL, 1, NULL, '2025-03-10 07:38:57', NULL),
(633, 'مهدویت', 455, 125, 5, '1403', '150', NULL, 250, 'مسجد جواد الائمه', 327, 19, 'قم', NULL, 1, NULL, '2025-03-10 07:53:44', NULL),
(634, 'مهدویت', 456, 77, 5, '1403', '30', 1, 110, 'مسجد', 332, 4, 'کاشان', NULL, 1, NULL, '2025-03-10 08:18:32', NULL),
(635, NULL, 457, 204, 5, '1403', '90', 1, 100, 'مسجد (سه جلسه)', 332, 4, 'کاشان', NULL, 1, NULL, '2025-03-10 08:52:31', NULL);

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
  `bank_cart_number` varchar(100) DEFAULT NULL,
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

INSERT INTO `users` (`id`, `mobile`, `firstname`, `lastname`, `role_id`, `gender_id`, `is_not_citizen`, `codemeli`, `khadamat_code`, `tablighat_office_code`, `tablighat_organization_code`, `ovghaf_code`, `bank_account_number`, `bank_cart_number`, `city_id`, `province_id`, `city`, `village`, `native_province_id`, `native_city_id`, `address`, `postal_code`, `photo`, `education_id`, `status_id`, `level_id`, `confirm_code`, `confirm_time`, `password`, `last_login`, `creator_id`, `remember_token`, `editor_id`, `has_khadamat_code`, `has_tablighat_office_code`, `has_tablighat_organization_code`, `has_ovghaf_code`, `report_count`, `agree_count`, `work_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '09191964745', 'پرسنل', 'غدیر', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image49351733838074.png', NULL, 1, NULL, '2462', '1734246541', '$2y$12$MF4toQZLv5.DSupBLZ00FOYJdeg3LFnVPSbuJNMF52UNGY07pCOX2', '2025-02-27 15:00:13', NULL, 'gAT1qfDTKUR0fH7KMYQ4K0D1w5HhIzM58zc2kE7ORuSTetuQcQY8Kiv2CzvZ', 1, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-27 18:30:13', '2025-02-27 15:00:13'),
(2, '09198111102', 'صادق', 'شیری', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image79261733768422.jpg', NULL, 1, NULL, NULL, NULL, '$2y$12$9l/.qnK2iRrIxvNbRecvguUNI3pV0Abtjxpu6hmjh/PC.ciqzgYf6', '2025-03-10 06:21:42', NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-03-10 09:51:42', '2025-03-10 06:21:42'),
(3, '09189062676', 'مبلغ', 'غدیر', 2, 1, 0, '4032228035', '434', NULL, '5566', NULL, '0132324234', NULL, 36, 2, '434', '434', 1, 31, NULL, '434343434', 'avatar.png', 2, 0, '0', '5121', '1733919257', '$2y$12$SbbHP/kZ6s17SKSiYImeJunolUdAuYxsaBvtn2SlAG0nqTAE/ocwi', '2024-12-22 11:50:20', NULL, 'nLGh1AsIA6OemB5mQOmVLS3szqPWKG3JqQpovohgzYW9sWDWQIaR0gcReyZy', 11, 1, 0, 1, 0, 1, 3, 2, NULL, '2025-03-09 14:23:18', '2025-03-09 10:53:18'),
(4, '09360000000', 'ابوعلی', 'تستی', 2, 1, 0, '1234567654', '1414', '689', NULL, NULL, '344', NULL, 349, 3, 'کوثر', NULL, 2, 122, NULL, NULL, 'avatar.png', 1, 0, '0', '6046', '1733729073', '$2y$12$mpLc206u.H5AHC2hHc85X.V/P8N6wDsngiOJHr3pdg.HysRuX5nJS', '2024-12-09 03:53:10', NULL, NULL, 11, 1, 1, 0, 0, 0, 1, 0, NULL, '2025-01-05 13:34:52', '2025-01-05 10:04:52'),
(5, '09196660562', 'مقداد', 'براتی', 2, 1, 0, '1260660729', '45736', '22035', NULL, '6373', '0700170000000302808262002', NULL, 327, 19, 'پردیسان', NULL, 4, 7, 'پردیسان - نجات خواه 4 -ک شهيدان  رنگرز- مجتمع مهندسین 1 ب 4 و8', NULL, 'image95111734262109.jpg', 3, 1, '5', '6411', '1733741246', '$2y$12$cH0xJJ73AZMyJnucgOe11eK4X4Ln2cEkpiF0OB8exrF0DxtU38pn6', '2025-02-25 03:44:39', NULL, NULL, 11, 1, 1, 0, 1, 4, 4, 1, NULL, '2025-03-05 14:16:48', '2025-03-05 10:46:48'),
(6, '09198526839', 'مریم', 'عبادی راد', 2, 2, 0, '2134543265', '546457474', NULL, NULL, '4645775757', '126754356', NULL, 26, 2, 'پردیس', NULL, 10, 99, 'تهران پردیس فاز 3 بلوک 453 پلاک 436\n\nجهت آزمایش          آزمایش', '65438754', 'image20751736084046.jpg', 4, 0, '0', '9302', '1733744741', '$2y$12$qsApw3I3RCqw5zE0KexRVOoO4BXOGOzmoVke81dOCVdkAm2i5HViq', '2024-12-16 04:05:32', NULL, NULL, 11, 1, 0, 0, 1, 0, 2, 0, NULL, '2025-01-05 13:34:09', '2025-01-05 10:04:09'),
(7, '09133598905', 'سید اسماعیل', 'طباطبایی', 2, 1, 0, '4420169516', '167789', NULL, NULL, NULL, '0302825136009', NULL, 327, 19, NULL, NULL, 31, 448, 'خیابان انقلاب کوچه 17 فرعی 18 کوچه شهید آهن پلاک 15/3', NULL, 'avatar.pngimage35911734262782.jpg', 3, 1, '5', '6044', '1733916805', '$2y$12$tw5A5C92AQdpWmmIxo/9vOcpcEsSDtyC51.JIxEmsOmYcLyxDLQzy', '2025-02-25 06:25:56', NULL, 'l95Kx7CsJ3k2TVSSLaS54aEYk0CvAs3ZLuUQFl3AbTfE27T22esolIZxGeTL', 11, 1, 0, 0, 0, 2, 3, 1, NULL, '2025-02-25 15:23:04', '2025-02-25 11:53:04'),
(8, '09198555266', 'مجتبی', 'قاسمی', 2, 1, 0, '1270309110', '127548', NULL, NULL, NULL, '950170000000336143423008', NULL, 327, 19, 'پردیسان', NULL, 4, 37, 'پردیسان  خ شهید مسلم قلی پور  مجتمع سبد رضی بلوک 3 واحد 18', NULL, 'avatar.pngimage76541738753134.jpg', 3, 1, '5', '1759', '1738393704', '$2y$12$LqPCg0eNvxLmb9ZLC5ncwewA8egFnVY0YDxUCH4/pJGxS5ui0sBfm', '2025-02-01 03:36:29', NULL, 'atIjhc3cm7z0msWNihQszdRBer0pCArmcH1pKio1uNY5pzFC7nE1nPPhyB7P', 11, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-02-26 08:22:54', '2025-02-26 04:52:54'),
(9, '09196637217', 'داود', 'صانعی', 2, 1, 0, '0902319299', '93654', NULL, NULL, NULL, '400170000000303942903000', NULL, 327, 19, 'قم', NULL, 11, 333, 'قم. بلوار 15 خرداد. کوچه 54. کوچه 12 . فرعی پنجم . پلاک 7', NULL, 'image94101738844597.jpg', 4, 1, '5', '5439', '1738839343', '$2y$12$RmN2YD8xi.ps6TPN84rrAufHx0w5nrItE.mjJPVxf02vLUidLvkG.', '2025-02-06 07:23:57', NULL, 'HwKn7LFysKcGpe87SLPhE8VrcLJssi0snI5Jx0T1289mAoiYdlYJF4RCsCBS', 11, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-03-02 11:36:09', '2025-03-02 08:06:09'),
(10, '09127549713', 'سیدمحمد مهدی', 'فاطمی', 2, 1, 0, '1111111111', NULL, NULL, NULL, NULL, '111111', NULL, 89, 2, NULL, NULL, 3, 38, NULL, NULL, 'avatar.png', 2, 1, '5', '6743', '1733920001', '$2y$12$iMMNEp/FWxvNZnJRFAeeQO/Cgv2SzYBsvJz9kcN4Ae/W3nAic5xfW', '2024-12-11 08:54:55', NULL, 'O2jgEVfLc8BbZELv6N67wa8yl3hsCOxpOIY7kp8GnaYJyKhXDRI43ZmzZCjU', 11, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-06 13:37:50', '2025-02-06 10:07:50'),
(11, '09120000000', 'مسئول امور تبلیغی', 'براتی', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image45361734294246.jpg', NULL, 1, NULL, NULL, NULL, '$2y$12$Qt8TQiShrE0aKJZx5XQQzewolsxbI3zo5HPQh.eUIy4qAt3DROCw2', '2025-03-10 08:28:50', 1, NULL, 11, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-03-10 11:58:50', '2025-03-10 08:28:50'),
(12, '09130000000', 'معاون امور تبلیغی سید اسماعیل', 'طباطبایی', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image55371734262919.jpg', NULL, 1, NULL, NULL, NULL, '$2y$12$f/BRSRdwtHpxzf9r4y/koOMUQnCxqY6eoixW.bqrg/UC/hXjEsBb.', '2025-02-25 06:29:01', 11, NULL, 12, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-25 09:59:01', '2025-02-25 06:29:01'),
(13, '09191494182', 'هادی', 'رخ فروز', 2, 1, 0, '4999854813', '50427', '30774', NULL, NULL, '920170000000104083150009', '6037998144807889', 327, 19, 'قم', NULL, 27, 424, 'انتهای بیست متری شهید بهشتی ده متری شهیدچراغپورپلاک 168', '3719793859', 'avatar.png', 2, 1, '0', '2925', '1737142989', '$2y$12$Pla8kl0S0vV4Y6WDRfaw7.vuTI1O/jjw4k5nzpm5WwxXOanY46Imi', '2025-01-17 16:11:54', NULL, 'fnqPa72XMQIj8iQ572UL9p7vwl0frBPGIbr1ikSAovU8mM73lMFCnWvjb4pV', 11, 1, 1, 0, 0, 1, 2, 1, NULL, '2025-02-11 07:24:01', '2025-02-11 03:54:01'),
(14, '91187566091', 'رقیه', 'لکزائی', 2, 2, 0, '2532567727', '366721', NULL, NULL, NULL, '940170000000356344259003', NULL, 13, 24, 'انبارالوم', 'امین آباد', 24, 13, 'استان گلستان شهرستان آق قلا شهرانبارالوم بخش وشمگیر روستای امین آباد کوچه امام خمینی یکم', '4939191114', 'avatar.pngimage20211736276412.jpg', 2, 1, '4', '9170', '1734839451', '$2y$12$F9A1RFfvalLikNwMnfRmn.30eyF0EB9yrWHD9xdWzlKb2KPQyskuC', '2024-12-22 00:19:58', NULL, 'xLhzfvcQLTQYJSddQlY9yK2VI0I3eY8OY7gw0sr06XZkMcG9o2iI5pebdmcw', 14, 1, 0, 0, 0, 0, 2, 1, NULL, '2025-02-05 17:13:00', '2025-02-05 13:43:00'),
(15, '09186716204', 'مهدی', 'شرکائی', 2, 1, 0, '3979740706', '97696', NULL, NULL, NULL, '500170000000322997884005', NULL, 125, 30, 'تویسرکان', NULL, 30, 125, 'تویسرکان شهرک قائم خیابان تربیت خیابان تهذیب کوچه دانش یک', '6581773138', 'avatar.pngimage31531734844281.jpgimage45841736086035.webp', 3, 1, '5', '7867', '1734839492', '$2y$12$Juc0IFO1sXWYbrmGR8q5T.SfYNMLdoRiYt.JMbjn0LBEVp9h8sTIm', '2025-02-15 03:57:02', NULL, 'zH9kivaaxvSbMLiY0frQXRrBhmbstuF1VM0tJzROxvmHtKYWpojetndNMYvo', 15, 1, 0, 0, 0, 2, 2, 1, NULL, '2025-02-25 12:38:12', '2025-02-25 09:08:12'),
(16, '09159250290', 'مرضیه', 'شایق', 2, 2, 0, '0819683183', '117450', '58745', NULL, NULL, '910170000000304046562005', '6037991945591836', 246, 11, 'سرخس', NULL, 11, 246, 'سذخس امام رضا شرقی 4 پلاک 1 سمت راست اولین درب کرکره ای', NULL, 'avatar.png', 2, -1, NULL, '8356', '1739697179', '$2y$12$SGCleg6RV1FkLBxeSCEwGO37M2HqW39QPWtceJZd2OGMai3bfhULW', '2025-02-16 05:41:13', NULL, 'mPjW10Id8k22E214YfAZXAifD1KK32xF2mSeeRj7GAunPygE8wIzcLSzv4Ow', 16, 1, 1, 0, 0, 3, 2, 1, NULL, '2025-02-25 13:48:37', '2025-02-25 10:18:37'),
(17, '09171848773', 'مسلم', 'میرزایی', 2, 1, 0, '5159840591', '63790', NULL, '‏‪139411057009‬‏', NULL, '9001700000003030639916004', NULL, 375, 17, 'لامرد', 'کره موچی', 17, 375, 'فارس.لامرد..روستای کره موچی..خیابان شهید موسوی نژاد..کوچه نهم.منزل مسلم میرزایی', NULL, 'image19071738413556.jpg', 3, 1, '5', '2370', '1734839573', '$2y$12$U08n2aFrKOQND.RDjbfmpemH4.i8oD8xYDO9Lxoi0nAPzzh9AlJKy', '2024-12-22 00:21:02', NULL, 'mc0TgPMBpkXtgRV7ZxSHw6XHfL4OWxV2NPposAhbZUNVxueKh7IuYUFZI0Ob', 11, 1, 0, 1, 0, 2, 2, 1, NULL, '2025-03-01 10:37:21', '2025-03-01 07:07:21'),
(18, '09130814005', 'علی اصغر', 'ابن علی', 2, 1, 0, '1262969034', '40090', NULL, NULL, NULL, '370170000000301300392000', NULL, 306, 4, 'فریدون شهر', 'میلاگرد', 4, 306, 'استان اصفهان شهرستان فریدون شهر روستای میلاگرد', NULL, 'avatar.png', 2, 1, '5', '6412', '1734839592', '$2y$12$YZLLjsJa2T2jBsGA2h3CFehXIdztiHHYI.t2vg4AvRmDhNWTB83Py', '2024-12-22 00:21:43', NULL, 'WqHoSndvmwwijl0L0Ab7hgif8pKY5BVi2s28IDbINnYQrAaNTX0W8Ycue9m8', 11, 1, 0, 0, 0, 2, 2, 1, NULL, '2025-03-02 12:40:34', '2025-03-02 09:10:34'),
(19, '09171851123', 'زهره', 'انصاری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4663', '1734839905', '$2y$12$oED.L1jNUa28iCWFEc9Dk.icC96DH1FwVrVBYOzI9p.5so4JuaH8S', '2024-12-22 00:26:44', NULL, 'H6tPRqym4bCINp8HTqT9w033Se4MwDa2NC9j0nkbKYz4l7QJZQ41Bl91FEXd', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2024-12-27 14:24:11', '2024-12-27 10:54:11'),
(20, '09352334864', 'محمد', 'کرامتی', 2, 1, 0, '6029169807', '80723', '139076625', '139076625', NULL, '910170000000303919673007', NULL, 336, 5, 'کمال شهر', 'خرمدشت', 5, 336, 'کرج  کمالشهر  شهرک خرمدشت  میثم ۳ نیلوفر ۴ پلاک ۴۴', NULL, 'avatar.pngimage87721734841380.jpg', 2, 1, '5', '1313', '1734840410', '$2y$12$m1EpyyvS8pfnUl8fPOzQh.2wAPC8PY1B8wYovTJrXpXGpkmNdW9Gm', '2025-03-04 23:30:31', NULL, NULL, 11, 1, 1, 1, 0, 2, 2, 1, NULL, '2025-03-05 03:00:31', '2025-03-04 23:30:31'),
(21, '09371422878', 'عقیل', 'شریفی', 2, 1, 0, '1850039941', '185291', NULL, NULL, NULL, '040170000000344241694007', NULL, 43, 13, NULL, NULL, 13, 43, 'امیدیه\nکوی طالقانی خ۱۲متری\nجنب مغازه صمدشریفی', NULL, 'avatar.png', 2, 1, '4', '3693', '1734840744', '$2y$12$JkdxycHaWvoOcnHuD7/5CuxYgpagxhXtFPBwCJGDE5WCxjzSpIdH.', '2025-02-18 01:03:22', NULL, NULL, 11, 1, 0, 0, 0, 2, 1, 1, NULL, '2025-03-03 10:07:01', '2025-03-03 06:37:01'),
(22, '09189036118', 'ابراهیم', 'جوادی ثابت', 2, 1, 0, '3875624920', '330898', NULL, NULL, NULL, '700170000000347842608008', '6037997531358381', 321, 20, 'روستا بهارلو', 'روستا بهارلو', 30, 443, 'استان کردستان شهرستان قروه بخش دلبران روستا بهارلو خانه عالم', '۶۵۱۴۸۵۹۳۸۴', 'video7801738858959.mp4', 3, 1, '5', '7278', '1734840765', '$2y$12$g1vrnyuB/owevkVY2CyD2OlX.t9ul4ezoy53ST1bqI0q6QVTBQ2oC', '2024-12-22 00:40:58', NULL, '3S8nivvMZEPJ5lMfEnOp3BwPEnFNYfMmFpmPBzRpHtcexsIFD86Q14GbGMWT', 22, 1, 0, 0, 0, 2, 1, 1, NULL, '2025-03-01 10:59:24', '2025-03-01 07:29:24'),
(23, '09356231274', 'مرضیه', 'خداوردیان', 2, 2, 0, '1263434649', '137780', NULL, '139901103550', NULL, '440600243370011093712001', '6037998148736985', 332, 4, 'کاشان', NULL, 4, 332, 'کاشان..میدان جهاد', NULL, 'image60771738511319.jpgimage1851739447949.jpg', 2, 1, '5', '9317', '1734841035', '$2y$12$.YOSLWl9Qs6VlLbgP5oC1err6uH1jhSOWVw9AUhboB299OpSRRsP6', '2025-03-09 09:16:59', NULL, '6BokAHllSKVP4TWUbLxzgonEJ1OKHnnMRk7HKFXrJ5A3cLIvK8CzI6FuGJaS', 23, 1, 0, 1, 0, 3, 2, 1, NULL, '2025-03-09 12:46:59', '2025-03-09 09:16:59'),
(24, '09155631783', 'سعید', 'زینلی', 2, 1, 0, '0640243010', '214838', '29246', NULL, NULL, '200170000000313319504002', '6037997101432673', 99, 10, 'غفاری خلیج فارس ۶ پلاک ۴', NULL, 10, 99, NULL, NULL, 'avatar.pngimage63951738409515.jpg', 3, 1, '5', '8620', '1739440467', '$2y$12$CdRPTWUXfn2MbSJt92vPG.Umh4CeVpJETGvVnLJ7aFo2KKT1G1iPW', '2025-02-13 06:22:35', NULL, 'rhlxSH0Um8IqSvk7kKOo8TzyCGHFdMefYwtpHxYvnbpfzaCZbaL0ZdJo36Y3', 24, 1, 1, 0, 0, 3, 1, 1, NULL, '2025-03-01 11:54:34', '2025-03-01 08:24:34'),
(25, '09145551257', 'زهرا', 'سیفی پور', 2, 2, 0, '2900304601', '۳۸۳۸۹۸', NULL, NULL, NULL, '0227851673007', '6037998214658824', 423, 2, NULL, NULL, 2, 423, NULL, NULL, 'image97321738430717.jpg', 2, 1, '5', '6510', '1734841835', '$2y$12$KqNKx7upXYiHV4zYe0ScTea8K2aM8X/UkFgx6JtcTcXFMYsZEIKre', '2024-12-22 00:58:46', NULL, 'fTOSvaAreqOzE3an80nIEaLNR41V9nHNifWDPCFnMR9qYPq2QeJ5UCvjLblU', 25, 1, 0, 0, 0, 2, 2, 1, NULL, '2025-02-17 20:06:18', '2025-02-17 16:36:18'),
(26, '09398405068', 'خدیجه', 'هاشم خانی', 2, 2, 0, '0320438147', '32235042', NULL, '۶۳۸۷۴۱۱۳۹۲۱۸۴۸۲۴', NULL, '4401700000003428860095007', '0320438147', 336, 5, 'ماهدشت', NULL, 5, 336, 'البرز، کرج، ماهدشت، میدان نماز، کوچه شهید فیلو پلاک ۳۱', '3189919434', 'image31291738504235.jpg', 2, 1, '5', '9696', '1734842003', '$2y$12$pFKqrm.Zg4jzAvGoE8px7uMz7qoAOVvdALUWmr3aPSDoAY5S5hOou', '2024-12-22 01:01:59', NULL, 'tzwGXjXGmhppNqKH5dJVRFRVh4hYYb7zExUF8zoW56VnSFEjWy17Y1BG9AZ5', 26, 1, 0, 1, 0, 3, 2, 1, NULL, '2025-02-25 11:48:44', '2025-02-25 08:18:44'),
(27, '09131105844', 'روح‌ا', 'رحیمی', 2, 1, 0, '1091760578', '45302', 'ندارم', 'ندارم', 'ندارم', '800170000000303188998007', NULL, 378, 4, 'باغبهدران', 'کرچگان', 4, 378, 'اصفهان /لنجان/باغبهادران/روستای کرچگان/کوی بهار شش/پلاک شش', '8479115713', 'avatar.pngimage22941737144166.jpg', 2, 1, '5', '5944', '1737143199', '$2y$12$A3JJhSYc0a1pu7UolCH.2ORBvWHBvsIqXyyDC0S.xyyU02zh5nb5y', '2025-01-17 16:14:58', NULL, 'BzL14OgKVGBPCX1xqpPUvV278ZtkD1TE72q80jfs3er9NdV2YaNTeDCN9pAf', 11, 1, 1, 1, 1, 2, 2, 1, NULL, '2025-03-01 12:11:29', '2025-03-01 08:41:29'),
(28, '09915525365', 'نرگس', 'شاهرخی شهرکی', 2, 2, 0, '4622692287', '115926', NULL, NULL, NULL, '700170000000304000933001', '6037991067161699', 281, 9, 'کیان', NULL, 9, 281, 'خیابان باهنر کوچه 20پلاک 17', NULL, 'avatar.png', 2, 1, '4', '3050', '1738397002', '$2y$12$YUsuN8B18HdDOZV3ZVwxMO/woe376tlpJl44jYFlanXhr0zeHEzj.', '2025-02-01 04:31:27', NULL, 'd5Mj1p4pwRch3hrOktOU5MIVw3vU2dS2dqLWVKo8myi6v2HlzfhalKasod8z', 28, 1, 0, 0, 0, 3, 2, 1, NULL, '2025-02-11 20:45:23', '2025-02-11 17:15:23'),
(29, '09907646359', 'اسماعیل', 'ورمزیار', 2, 1, 0, '0559833148', '۱۴۴۷۶۳', NULL, NULL, NULL, '190170000000307108420002', '6037991921878959', 106, 8, 'پاکدشت', NULL, 28, 165, 'پاکدشت بلوار شهدای رحیمی حوزه علمیه امام صادق علیه السلام', NULL, 'image55931736282107.jpg', 3, 1, '0', '8639', '1736281816', '$2y$12$RgWTYUz2afH4hJgyzNmZw.ZkiKZXtZWoUtgJrtCNLGJZemSTk/1cm', '2025-02-01 06:29:44', NULL, '9ku3YGPVeH1ocdZ5CbD7WUNYmN3PMLfAYOuSuhPPg3gafKJtgW2SQXTkujhk', 523, 1, 0, 0, 0, 2, 2, 1, NULL, '2025-03-10 10:50:26', '2025-03-10 07:20:26'),
(30, '09187003622', 'مهین', 'سبحانی', 2, 2, 0, '0386665540', '356390', NULL, NULL, NULL, '210170000000352515247009', NULL, 300, 30, 'فامنین', 'نگارخاتون', 30, 300, 'همدان فامنین نگارخاتون انتهای خ شهید ربانی', '6561183962', 'avatar.pngimage28691738786968.jpg', 2, 1, '4', '5669', '1734842917', '$2y$12$Z1.HeYu6EBcRmwADkKGPSuGE6zGGT3nM1Ov05i2GCK3gLpBzOu6mu', '2024-12-22 01:16:53', NULL, 'xmzCqtU0J6zzFijmkzNt1XUOCZaz1X5JCIplqFE5z9elPazibGkKrRT1Q2YP', 11, 1, 0, 0, 0, 3, 2, 1, NULL, '2025-03-01 11:32:30', '2025-03-01 08:02:30'),
(31, '09191501644', 'مرتضی', 'عرب خالص', 2, 1, 0, '3621134230', '36934', NULL, NULL, NULL, '910170000000104336641000', '6037991331340913', NULL, 16, 'زاهدان', NULL, 16, 225, 'زاهدان، بلوار آزادگان، آزادگان ،18 جنب مسجد 14 معصوم علیه السلام', NULL, 'avatar.pngimage75181738943088.jpg', 3, 1, '0', '6625', '1739003048', '$2y$12$kLpxhBlNzxCc2lALQxVaqunppHUYoq16d4OUqH4ScIH3ZsL7x2LZ6', '2025-02-08 04:52:33', NULL, '2z6bwiYTsFMXO7VNqWrv5Z1ogEfjHOVUqzl7gVKYbw5i81GxQIii5bWc4Iwu', 523, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-08 12:02:37', '2025-03-08 08:32:37'),
(32, '09123902693', 'حسین', 'اشهد', 2, 1, 0, '0076295087', '62540', '200292', '139311003660', NULL, '7801700000102053938003', NULL, 327, 19, 'قم', NULL, 8, 126, 'میدان بسیج 30 متری هنرستان خیابان میرزاکوچک خان کوچه 3 پلاک5', '3715846954', 'avatar.pngimage80481734843974.jpg', 4, 1, '5', '1780', '1734843469', '$2y$12$GG0bram2Bj7VyKcoz6r7FeXT34FX/eka7O8b3/4jhljTVsU8VrLfS', '2025-02-15 12:58:53', NULL, 'NdCfc18PWUZtAqTRNYT6jbnzEzjH7WrwEda8eEqLAZgJMKBrDvELgczJqnnh', 11, 1, 1, 1, 0, 2, 2, 1, NULL, '2025-03-02 12:12:34', '2025-03-02 08:42:34'),
(33, '09192951545', 'سیران', 'کهریزی پور', 2, 2, 0, '3838347269', '۶۰۳۰۵', NULL, NULL, NULL, '800170000000322075451004', '6037997375445773', 334, 20, 'کامیاران', NULL, 20, 334, 'کامیاران خیابان شهید مصطفی خمینی کوچه شهید منوچهری پلاک ۱۸۹۹', '۶۶۳۱۸۳۳۸۷۱', 'avatar.png', 3, 1, '0', '2639', '1734844063', '$2y$12$IDXM/xRRdbNmVuFh3Dbq9eIRvE9QvEOw4g3Jpjq723Yu2P9yKBDL.', '2025-03-09 09:19:02', NULL, '6uWQp4kGOdEYpOAT8rp4V0eevTAmk4DcBmX1s3tnf0B0KuK5M5LdMEp8DAde', 33, 1, 0, 0, 0, 3, 1, 1, NULL, '2025-03-09 12:50:39', '2025-03-09 12:50:39'),
(34, '09185066141', 'سجاد', 'سهروردی', 2, 1, 0, '3970027845', '341321', NULL, NULL, NULL, '700170000000348809475005', NULL, 125, 30, NULL, NULL, NULL, 125, NULL, NULL, 'image72601738874852.jpg', 2, 1, '5', '7854', '1734844669', '$2y$12$d1vjuvWBo7193X2II5QBY.BRYDfrSm1YHZBzvDOYzRJ6Q0JMRYc8G', '2025-02-10 19:13:16', NULL, 'kmGMxiUsW2OmXMvOjoHL3Ixum7wKKR7V1NUelXNrY0Ro1ngvaQa3BSXDcRO5', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 22:43:16', '2025-02-10 19:13:16'),
(35, '09137862564', 'اکبر', 'صالحی', 2, 1, 0, '1150010924', '140856', NULL, '‏‪139484168‬‏', NULL, '730170000000302262358006', NULL, 127, 4, 'تیران', 'قلعه ناظر', 4, 419, 'روستای قلعه ناظر کوچه مسجد جامع', '8519656756', 'avatar.pngimage22791738917424.jpg', 2, -1, NULL, '5410', '1734845007', '$2y$12$f/WbR7/PbIkko/zcdnaIT.WDKuhfZ2dCwhzY11VXqahEB6cd6wPKK', '2024-12-22 01:51:38', NULL, 'WyMP2YYnKTXGChZbAMSl1cLKf9YJl3R4wKGImnLESvAjWUotBB2ioHjPwRtK', 35, 1, 0, 1, 0, 2, 2, 1, NULL, '2025-03-02 11:50:23', '2025-03-02 08:20:23'),
(36, '09118599711', 'مجید', 'خوشه چرخ', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7839', '1734846343', '$2y$12$V88mkZz.Ym6n4IiNVdppEO1aLYdHwAlkQg3/lZb7OuVcz1OzR1ici', '2024-12-22 02:13:56', NULL, 'PeXK3cRYjxoxOVoxU7jA5LT8vZsYtCH7HBVHvrTbY873ebrEDbyrNXx87yNL', NULL, 0, 0, 0, 0, 0, 0, 1, '2025-01-07 04:21:50', '2025-01-07 07:51:50', '2025-01-07 04:21:50'),
(37, '09162527342', 'حمیده', 'آرمندجرجندی', 2, 2, 0, '6050005060', NULL, NULL, NULL, NULL, '0322339163004', '6037997457742527', 222, 21, 'گنبکی', 'محله گلزار', 21, 222, 'کرمان.ریگان.گنبکی', '۷۶۹۵۱۲۱۵۲۸', 'avatar.png', 2, -1, NULL, '2364', '1734848190', '$2y$12$QDurDNoeCr02QTtvl3dAyOPxzSYBXWWR.CVGJ8yzfqvV9qvcreS3e', '2024-12-22 02:44:51', NULL, 'XljEAXaStebT7sNen9Dr4k8SFB8ttWDSqh245R5AqrVrM0CMi1RbWiN25ZgB', 37, 0, 0, 0, 0, 3, 1, 1, NULL, '2025-03-01 12:46:09', '2025-03-01 09:16:09'),
(38, '09300754576', 'علیرضا', 'موسیوند', 2, 1, 0, '3861581957', '423910', NULL, NULL, NULL, '910560611828005780181901', NULL, 443, 30, 'مریانج', 'ارزانفود', 30, 443, 'همدان ، روستای ارزانفود ، خیابان صاحب الزمان ، کوچه شهید رضا گرجی', NULL, 'image30161738855479.jpg###', 1, 1, '4', '4948', '1734848403', '$2y$12$buul2.IrsM9tBiITEqJilOGO1EUrpiFLtSFcPjIZvduJQCDcx2oSG', '2025-02-09 06:33:51', NULL, NULL, 38, 1, 0, 0, 0, 8, 1, 1, NULL, '2025-02-23 08:36:40', '2025-02-23 05:06:40'),
(39, '09385437365', 'سلیم', 'ابراهیمی', 2, 1, 0, '4011820911', '168372', NULL, NULL, NULL, '510170000000306346679008', NULL, 407, 6, NULL, NULL, 30, 29, NULL, NULL, 'image27801737146641.jpg', 4, 1, '5', '7378', '1734848698', '$2y$12$8gS5/eN7DexbPv0ymf2hb.L6jH5poE50ctqtZKWV0qigT74Cwxjk6', '2024-12-22 02:53:17', NULL, 'TCJBQ443j9E1VT7gdS6EO2OI9yCF9i5pnjkYbFIndmq6Uur7aE6ziXpL6Asc', 11, 1, 0, 0, 0, 3, 2, 1, NULL, '2025-03-01 12:08:33', '2025-03-01 08:38:33'),
(40, '09159395797', 'مصطفی', 'جهانی یدک', 2, 1, 0, '0872023397', '105588', NULL, NULL, NULL, '380170000000345095196007', NULL, 396, 11, 'شاندیز', 'فرح آباد', 11, 328, 'مشهد مقدس \nشهر شاندیز \nروستای فرح آباد \nبین 11و 13\nمسجد جامع امام حسین علیه السلام', NULL, 'image26141738697857.jpg', 3, 1, '5', '6760', '1734849900', '$2y$12$B.OyADGy.q1G13tKpleh6.g5ncoF03b4wg78wTj5YM0TN0.Ps.ES.', '2025-02-17 09:47:54', NULL, 'csgZMCW1nJDsLB8i702P2TIZKMr1NBRoxrg3VVa7pztesUMOk1iNt2S468oJ', 11, 1, 0, 0, 0, 2, 1, 1, NULL, '2025-03-01 12:44:31', '2025-03-01 09:14:31'),
(41, '09921960463', 'راضیه', 'عبودی', 2, 2, 0, '2500120627', '۹۶۱۲۲۰۹۲۷۱', NULL, NULL, NULL, '370170000000356798263000', '6037997445339790', NULL, NULL, 'شهر فال', 'شهرفال', NULL, NULL, 'استان فارس شهرستان مهر شهرگله دار', NULL, 'avatar.png', 2, -1, NULL, '7554', '1734852366', '$2y$12$6CUgRGLGuzHYvHGVLPX.g.ofR1/ofLu3q/ukCTzIlTyXU54AedsN6', '2025-03-09 17:06:37', NULL, NULL, 41, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-03-09 20:36:37', '2025-03-09 17:06:37'),
(42, '09135032141', 'فاطمه', 'علیزاده', 2, 2, 0, '3052301871', '379827', NULL, '63475', NULL, '160170000000357545793005', NULL, 214, 21, 'مرکزی', NULL, 21, 214, NULL, NULL, 'image73471737207563.jpg', 3, 1, '4', '1013', '1739704660', '$2y$12$LtA0bLP/aKp9uh2pNFUH4.1/0ISP9AbbJgr6YdgasoJ8n1tjvN4Ze', '2025-02-16 07:45:51', NULL, 'N0HUm2DZDFrWUJp0cZu2czRoq5uCbyozwUmK9YgOTSwrG24bBYe0PAqe3Fzw', 11, 1, 0, 1, 0, 2, 2, 1, NULL, '2025-02-16 11:15:51', '2025-02-16 11:15:51'),
(43, '09130849238', 'مهدی', 'صحرایی', 2, 1, 0, '1230067841', '۳۳۵۹۴۲', NULL, NULL, NULL, '780170000000360111228004', NULL, 421, 4, 'بادرود', 'فمی', 4, 421, NULL, NULL, 'avatar.png', 1, 1, '5', '9817', '1738920488', '$2y$12$B/es3kHvwb8FlBoLDIb.ReKjoiFjL1xLZaAuJyH9m8T7/ji9yaueu', '2025-02-07 05:56:28', NULL, 'uOELNw1feH8eEMNARrAjKgQB84iGVJ4PsMKQ7e3G3kBMra1B71Rg8qiYT1K3', 43, 1, 0, 0, 0, 2, 2, 1, NULL, '2025-03-02 11:19:57', '2025-03-02 07:49:57'),
(44, '09158231483', 'جعفر', 'منظمی', 2, 1, 0, '6509938316', '۱۱۱۳۶۵', '۱', '۱', NULL, '0170000000320019422000', '6037991927065650', 117, 11, 'تربت حیدریه', NULL, 11, 117, 'خراسان رضوی تربت حیدریه بلوار باهنر ۵۸/۴ پلاک ۱۸', NULL, 'avatar.png', 4, 1, '5', '4198', '1734862886', '$2y$12$sPxvZ8hIxlFratzakzNfeu0HwT.6AfLpp15W6Csf1bOiYC08nl2Ei', '2025-03-03 22:22:27', NULL, 'zmYgFTVxPiqlaYakjZFSGKtQZpQlLXfryb1jSaGcbXvDlfmCLJy4q3N42Fya', 44, 1, 1, 1, 0, 2, 2, 1, NULL, '2025-03-04 01:52:27', '2025-03-03 22:22:27'),
(45, '09139958817', 'زینب', 'قاسمی رشک سفلائی', 2, 2, 0, '3091108287', '434195', NULL, '139801082340', NULL, '900170000000305532981002', '6037997530012377', 227, 21, 'زرند', 'دهچنار', 21, 227, 'زرند روستای دهچنار کوچه امام علی 8 منزل محمد زراعتکار', '7761350118', 'image33221739044239.jpg###', 2, -1, NULL, '5224', '1737141239', '$2y$12$sbLJNbIjvsXMGJ0bKDFlIuPbvR5W2xjTTBA1XtQRjlA2w6DXeYmPy', '2025-02-17 15:14:47', NULL, 'I5CBl5r2nL3pxHNPAseQlfvUvEEB6UUGg4hrbsPSOd3kuX3MoJ6yLDvjRKfl', 45, 1, 0, 1, 0, 1, 2, 1, NULL, '2025-02-17 18:59:20', '2025-02-17 15:29:20'),
(46, '09151216037', 'علی جان', 'زحمتکار', 2, 1, 0, '0889315140', '101569', '139150197', '139311044817', NULL, '200170000000303964840007', NULL, 396, 11, 'مشهد', NULL, 11, 396, 'خراسان رضوی مشهد مقدس کوی سیدی بولوار شهید اصلانی 47 فرجی 4 پلاک 93', NULL, 'image94501735230824.jpg', 2, 1, '5', '6784', '1734869118', '$2y$12$2kuwn.JHEi.u6YItaos8c.hJ0TghqK40R8uvx0A5.bKVjkWb8OJCO', '2025-03-10 08:27:43', NULL, 'hZEYkNxKKg2zVt58XDyIfL2pUpszKw03kmPYxnWFPnKORya7RaoYaGeHTiRL', 11, 1, 1, 1, 0, 2, 2, 1, NULL, '2025-03-10 11:57:43', '2025-03-10 08:27:43'),
(47, '09137404256', 'آرزو', 'رضایی', 2, 2, 0, '1200021797', '370373', NULL, NULL, NULL, '190140040000310004492933', '6280231254177222', 378, 4, 'فولادشهر', NULL, 4, 378, 'اصفهان فولادشهر مسکن مهر محله ای۳ بلوار مهر آیین خیابان شهید داریوش رضایی‌نژاد', '8491346439', 'image13311739095624.jpg', 2, -1, NULL, '1937', '1734871335', '$2y$12$BrwHcjuG5c5Q//WuPpJbSuLF4XZ9hcjVjO6ho/1gVjnniuRisy4mq', '2024-12-22 09:10:20', NULL, 'nTvO6yaHfPV9UfFR6KhMmwx6pQUNff43Yt1f8PQdrgsPr4L6mKZSzu5cn65L', 47, 1, 0, 0, 0, 2, 1, 1, NULL, '2025-02-09 10:07:26', '2025-02-09 06:37:26'),
(48, '09186221966', 'محمدرضا', 'سعدی', 2, 1, 0, '3241317994', NULL, NULL, NULL, NULL, '970170000000207601169000', NULL, 339, 22, NULL, NULL, 22, 339, NULL, NULL, 'avatar.png', 4, 1, '1', '5119', '1734873671', '$2y$12$uXpyBbt8kvNQo40k/LQm7ulM1zjXcNZO3vUTKkVAbbfQeoXUOLAsG', '2025-02-15 14:47:41', NULL, 'hUoOEgo1p4EDs5E69RHofHV4HJSuMx61fQ5ZGK7cne1qCDuIvJaOWnDb6K0r', 11, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-02-15 18:17:41', '2025-02-15 14:47:41'),
(49, '09185535765', 'آذر', 'عبدی پور', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3151', '1734873736', '$2y$12$rux.46phQtcunwLRvu5mqOuvv1k9MGfTwai7W9B8m5.E0xFHxYJTu', '2024-12-22 09:50:34', NULL, 'C2QyDmIVjCSr3fRKRuRX8GmY4jLMdY95LjTHb4l2Hv6SdMmfJe9ftLGU2GxH', NULL, 0, 0, 0, 0, 2, 0, 1, NULL, '2025-03-02 12:23:43', '2025-03-02 08:53:43'),
(50, '09140565996', 'حلما', 'محمدی زاده', 2, 2, 0, '6050147701', NULL, NULL, NULL, NULL, '29622098', '6037997701410277', NULL, 21, NULL, NULL, 21, NULL, NULL, NULL, 'avatar.png', 2, -1, NULL, '1371', '1734874516', '$2y$12$hesciaTp/pYEaVQnuJguI.K.oi0Yo0yF9F5Hy9uX5uPYIQHVVav1K', '2024-12-22 10:03:25', NULL, 'Q7d64Ln9ZX1qBC1T35a34OE4WFbNSfHr7zePEL9BLMkcbhtPcwCdu06LgGBc', 50, 0, 0, 0, 0, 3, 2, 1, NULL, '2025-03-01 11:19:53', '2025-03-01 07:49:53'),
(51, '09151541539', 'مجید', 'شاکری', 2, 1, 0, '1050075706', '155060', '32056', '1050075706', '1050075706', '910170000000308591927006', NULL, 327, 19, 'قم', 'قم', 19, 327, 'آدرس: قم ، پردیسان ، خیابان شهیدان تقوی ، خیابان شهید مسلم قلی پور، مجتمع خوانساری، بلوک ۸ ، طبقه ۲،واحد ۷\nشماره شبا\n910170000000308591927006', '3749195968', 'image26381738421226.jpgimage46631738421372.JPG', 3, 1, '5', '6147', '1734880190', '$2y$12$SzVZ4wrvHoVCvecz4023weZyI/Y.PaPQ7vYOqxbZzJ85AYBI9yr9a', '2024-12-22 11:38:01', NULL, 'jf2aVMK7QIpgUvXz62opPiLjYuiFJCJk6FzT3oDkgLLVCSmjClSjLsufTT8k', 51, 1, 1, 1, 1, 1, 2, 1, NULL, '2025-03-08 12:20:55', '2025-03-08 08:50:55'),
(52, '09195448600', 'جواد', 'خانقلی', 2, 1, 0, '4560162298', '336295', '38567', NULL, NULL, '650170000000110362956006', '6037998127300118', 327, 19, 'قم', NULL, 15, 256, 'خیابان توحید توحید 3 پ 44', NULL, 'image89161739097056.jpg', 3, -1, '0', '8940', '1739096975', '$2y$12$1JQ8dU7aw9YSUKJtV2VXcu4J85Mn3nsmEIDgOgree4q0Y/vZ.3pKm', '2025-02-09 06:57:45', NULL, 'NKXRK9OLI1tZTzdBJ7QY6D5TGUwsoLw0OMuT25UTMP4fn08oO2mCamFPnKrf', 523, 1, 1, 0, 0, 0, 1, 1, NULL, '2025-03-08 12:30:24', '2025-03-08 09:00:24'),
(53, '09901443267', 'فریبا', 'شهریارپور', 2, 2, 0, '2994124610', '398052', NULL, NULL, NULL, '130170000000333454309004', '6037997579408114', 222, 21, 'ریگان', 'میرآباد کناردشت', 21, 222, NULL, '۷۶۹۱۳۱۳۱۸۵', 'image34471738414662.jpg', 2, 1, '4', '4009', '1734881835', '$2y$12$ba9QpJj9RRSs.2ShEFa3Zu2MdMFink2ZxIAC4eQWLbqBPQgw6wZCq', '2024-12-22 12:05:36', NULL, 'J8r0coKbcemAaT92IILLzCeZE5E5H5FRpHm0rcBaS2aJqh4Q1DY2JRt7Z8Ah', 53, 1, 0, 0, 0, 2, 2, 1, NULL, '2025-02-13 05:50:53', '2025-02-13 02:20:53'),
(54, '09165529875', 'احمد', 'خدري', 2, 1, 0, '4120580660', '336180', NULL, NULL, NULL, '650170000000348640866009', '6037997481716356', 71, 26, NULL, NULL, 26, 71, 'استان لرستان شهرستان بروجرد شهرک اندیشه فاز یک کوچه شکوفه 20 پلاک 10', NULL, 'image93801739032167.jpg', 3, -1, NULL, '8047', '1739031882', '$2y$12$PfTClj3FGRVOPg6bUgh0UO879APSWQi9nDGT1Y0upkSPjT.vxORja', '2025-02-08 12:53:19', NULL, '6EA7syZs1MJj2YX7PUcA4FksT5Ywi5jNfG47jlFkB5425fQFiBOZVZbepMce', 54, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 11:26:35', '2025-02-10 07:56:35'),
(55, '09127508105', 'امیر', 'چهری', 2, 1, 0, '0075033623', '۵۴۷۳۲', '۲۲۲۲۲', '۱۱۱۱۱۱۱', '۳۳۳۳۳۳', '530170000000200737459007', NULL, 211, 25, 'رشت', NULL, 25, 211, 'کمربندی خرمشهر کوی طالقانی بسمت مزار بن بست قائم عج ساختمان أهل البیت ع واحد ۲', '4177614390', 'image18831738954446.jpg', 4, -1, NULL, '9764', '1738954115', '$2y$12$QyjL08uq82AROEj9UHEQIOIXS1vM3XyeXYF9mTTGgZDc2xggcLHNK', '2025-02-07 15:17:03', NULL, 'HYVni48YRBRo3qOKoErgA0GQ8w8rYPxYFxtvv7nJBAJJKrEGEa2be0X4PL6q', 55, 1, 1, 1, 1, 2, 1, 1, NULL, '2025-03-09 12:53:52', '2025-03-09 09:23:52'),
(56, '09148633368', 'امیر مهدی', 'گل آور', 2, 1, 0, '1451744900', '405716', '201145', NULL, NULL, '930170000000216918005007', NULL, 327, 19, 'قم', 'قم', 3, 20, 'قم خیابان انقلاب کوچه ۴۷', '3715848514', 'image86471735214799.jpgimage40821735214835.jpg', 2, 1, '5', '2042', '1734925191', '$2y$12$KMtaUcgySstvRa8REMV7buX0SUkfe2aHOgUEdA5wvN2eVBbu0lPhq', '2024-12-23 00:08:08', NULL, '8IcMeGqCfOEVqq3e1lG8URCzI1AHahwL0Ebu1lhQMPgrRrphH6Y0gZHnXwPQ', 11, 1, 1, 0, 0, 2, 1, 1, NULL, '2025-03-01 11:59:12', '2025-03-01 08:29:12'),
(57, '09156845468', 'فرهاد', 'تفضلی خوی طینت', 2, 1, 0, '0920413803', '302844', NULL, NULL, NULL, '290170000000344469031002', '6037997700116487', 396, 11, NULL, NULL, 11, 396, NULL, NULL, 'avatar.png', 3, -1, NULL, '1116', '1734926131', '$2y$12$4uajGK/WniuhVe7gCy8BI..OegNar/.xA9GDjOScIsNAAAeWjyOx6', '2024-12-23 00:23:42', NULL, 'yU5nMCOMCtkrDg7KDkEHF3q37pnrZ9EnIlh6NdvvxuAmBIDZB8OGRXfrU68l', 57, 1, 0, 0, 0, 2, 2, 1, NULL, '2025-03-02 12:47:18', '2025-03-02 09:17:18'),
(58, '09142572895', 'حامد', 'کریم زاد', 2, 1, 0, '1490286853', '51419', NULL, NULL, NULL, '840170000000108072917002', '6037997228543972', 115, 1, 'تبریز', NULL, 1, 115, NULL, '5175763796', 'avatar.pngimage16411734958797.jpgimage92751738427289.jpg', 4, 1, '5', '5710', '1734958545', '$2y$12$LvKvxdsv2s0ykA4XFGvi/ePTlSbibQrX/yo2NfCLFFuB5cAsuMp9W', '2025-02-15 07:22:50', NULL, 'o0TijwZn7QVfKX5y4fUcE2p13ZZxM50aUONmFfCqGJJNqsndxs0QaFShla6H', 58, 1, 0, 0, 0, 4, 2, 1, NULL, '2025-03-02 11:52:27', '2025-03-02 08:22:27'),
(59, '09140418699', 'شیوا', 'جزینی زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3880', '1734975386', '$2y$12$1M0Yzdi41zNv3sA0DUsSYO6Q4phxT/sQojnja0UCbiLuoYACAqhra', '2024-12-23 14:04:49', NULL, 'XWrlaiZvDkjtFLbdw0nBlWpRztfWgWNSWMD7WjvUYxTNYVTGhbDqRWpaQcUs', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2024-12-23 17:35:21', '2024-12-23 14:05:21'),
(60, '09157407932', 'مسلم', 'طالبی', 2, 1, 0, '0889961115', '275665', '0000000', NULL, NULL, '800170000000341596436000', '6037991943162994', 232, 10, 'حاجی آباد', 'بایمرغ', 10, 232, NULL, NULL, 'avatar.pngimage46681739125406.jpg', 2, -1, NULL, '5445', '1734992788', '$2y$12$X2.rPqNi3UcpaaruqNO0NOafcBhzz2LtA7R8SDHw9wzm8zzqM1ibu', '2024-12-23 18:54:41', NULL, 'pHkkeQPitKsuIOF3ljPj91dhMczEJaL2A5QhMwssBKfGKvEuDAVEkN2OQ2c2', 60, 1, 1, 0, 0, 2, 0, 1, NULL, '2025-03-01 12:20:26', '2025-03-01 08:50:26'),
(61, '09362222222', 'محمد', 'کریمی', 2, 1, 0, '2343333333', NULL, '5353', NULL, NULL, '535353', NULL, 235, 5, 'پردیس', NULL, 4, 37, NULL, '3553636363', 'avatar.pngimage85231735129122.jpg', 3, 0, '0', '5273', '1735129095', '$2y$12$UBbmmlK38XFODG4ogih2aeI72EY0QMPk/uMiBAUzzpFzhgwUDNEIW', '2024-12-25 08:46:33', NULL, 'vHiTBCFootyaKf1NgtwGwdSvhLIxCGSADZpqs2pmo9T9MSMwjRTPsTh69Fwv', 11, 0, 1, 0, 0, 0, 1, 0, NULL, '2025-02-07 10:08:16', '2025-02-07 06:38:16'),
(62, '09461022252', 'محمد', 'کریمی', 2, 1, 0, '5566666666', NULL, NULL, NULL, NULL, '846464646466464', NULL, 101, 3, 'تست', NULL, 2, 89, 'تست', '6737733', 'avatar.png', 2, 0, '0', '3137', '1735130279', '$2y$12$l6jkJ3VAz3TGlTtvsizqm.KeviOO2UprDhQ1Y55t70X56EL0JTz7i', '2024-12-25 09:06:11', NULL, 'IUX6Vw5kJVfxq5osftWm6f52HbJ9iXmHOTQkjHzB6AoaGVDnEUA8R0QvMqAk', 11, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-02-07 10:09:34', '2025-02-07 06:39:34'),
(63, '09360349647', 'حمدیه', 'نجفی', 2, 2, 0, '6169921145', '۲۸۳۱۷۶', '۶۲۹۱۲', NULL, NULL, '344014898008', NULL, 54, 6, 'ایوان', NULL, 6, 54, 'ایلام ، ایوان،انتهای خیابان امیرکبیر،', '۶۹۴۱۱۱۳۷۰۵', 'image73811738790017.jpgimage46131738790128.jpgimage17761738790179.jpg', 3, -1, NULL, '8667', '1735134241', '$2y$12$QSKqDL9SVftS4yyk8Egg5u5SniJFsJZctGxjEQFLItQSGCVcCECLu', '2025-03-10 15:08:21', NULL, 'GrSh07vxAomn6UxyTmgVOOS7EKiJ866H1EMv8LZg6QyezopvhHPRP8VsDeGJ', 63, 1, 1, 0, 0, 2, 2, 1, NULL, '2025-03-10 18:38:21', '2025-03-10 15:08:21'),
(64, '09118599711', 'مجید', 'خوشه چرخ', 2, 1, 0, '2080210785', '253227', '38034', NULL, NULL, '130170000000112380180000', NULL, 327, 19, 'قم', 'شهرک مهدیه', 27, 424, 'استان مازندران شهرستان نکا روستای دوقانلو کوچه عدالت 5', '4853195443', 'avatar.pngimage90811735212225.jpg', 3, 1, '5', '5659', '1737141767', '$2y$12$SZlh7zmJQWNSgkv1XqgwveX4uzP89PIIHTu8Qxz6K0hTDbld7DLVO', '2025-01-17 15:51:00', NULL, 'McUO93HNAUT4Fhoinvz8XSGoEP7ZWyQE7E3NSgSytPa4E2TUBEW9hIBq2W87', 11, 1, 1, 0, 0, 3, 2, 1, NULL, '2025-03-02 11:40:03', '2025-03-02 08:10:03'),
(65, '09179520132', 'محمدحسین', 'فتاحی', 2, 1, 0, '2539851703', '۹۳۲۱۱', NULL, NULL, NULL, '340170000000111040775007', '6037991763361320', 327, 19, NULL, NULL, 17, 39, '۲۰متری زاد کوچه ۲۸پلاک۹', '۷۱۳۱۱۱۳۸۵۲۹', 'avatar.pngimage14421739110556.jpg', 2, -1, NULL, '9156', '1735222478', '$2y$12$rOBGEPqliL0ILzHVl6LND.z/LtHiH2XbAp72ttV.sC97YiavsD.fa', '2024-12-26 10:42:54', NULL, 'fFs56Ei8nYsltvXriNKobkdtq82X7jPyHNvP8YiTJSUIWVcD3iZ94BbYkVWJ', 65, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 14:18:01', '2025-02-09 10:48:01'),
(66, '09366923141', 'مینا', 'علی  صوفی جوان', 2, 2, 0, '4970012563', '360429', NULL, NULL, NULL, '750170000000110554703001', NULL, 13, 24, 'انبارلوم', NULL, 24, 13, 'گرگان،آق قلا،شهرانبارلوم،خ امام ،کوچه آذرخش،سمت چپ درب پنجم', '4939114446', 'image49551735280959.jpg', 2, 1, '4', '4339', '1735280784', '$2y$12$3Ecql0UPPT488AGKRyZI0uVTJ/ToDHeE.2VXYl/blQV2RMyiOZYX6', '2024-12-27 02:54:35', NULL, '5e2yqNfYwmyLQxiF7QR5L3DgzoqlHp2q0SYBrLP8pD30UoUMblTWlOg9ROLt', 11, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-02-07 10:16:02', '2025-02-07 06:46:02'),
(67, '09136682197', 'راضیه', 'عباسی', 2, 2, 0, '5420002698', '152951', NULL, NULL, NULL, '360170000000341898239003', NULL, 44, 21, NULL, 'بیاض', 21, 44, NULL, '7749135483', 'avatar.png', 2, 1, '4', '1054', '1735325311', '$2y$12$I2ihh7/H8p0J3NXr1EBccORtsk.Hzhpe8oOTSwthg8kbuas2.VK9G', '2024-12-27 15:16:48', NULL, '0rbCNp5ciMOPWI1XkfgeOsSBuq4NTGwgvhDwdLRA1S8qV8xrNg25R7PNvBq8', 11, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-02-07 10:17:06', '2025-02-07 06:47:06'),
(68, '09157030867', 'غلامحسین', 'محمدزاده', 2, 1, 0, '0700730567', '106063', '54391', NULL, NULL, '480170000000327669360003', '6037997153858767', 396, 11, 'مشهد', '0', 11, 396, 'مشهد مقدس ، انتهای طبرسی شمالی ۴۴، کمی به سمت راست ، بعد، سمت چپ پلاک ۷۰', '9179791797', 'image16131739183183.jpg', 4, -1, NULL, '3710', '1735328556', '$2y$12$t3VsI7my7S9kQStnCwUvu.hUoztTVDa9uCZp7mAhAxP10J8xvJEl6', '2024-12-27 16:10:50', NULL, '1RXbfeIUdJ9RXn9HeCNXPbswXpvotsL7XwrFBXJ7noBwelAQnQHCMJ9k3nVB', 68, 1, 1, 0, 0, 2, 1, 1, NULL, '2025-03-02 12:43:41', '2025-03-02 09:13:41'),
(69, '09134546770', 'محمدحسن', 'زارع', 2, 1, 0, '4469731838', '73514', NULL, NULL, NULL, '490170000000303161210005', NULL, 409, 31, NULL, 'روستای عصمت آباد', 31, 409, 'استان یزد شهرستان مهریز روستای عصمت آباد کوچه قائم', '8981148491', 'image19441735355185.jpgimage73081735355256.jpg', 2, 1, '5', '5309', '1735355039', '$2y$12$WzQkgstQn1.VidYYGbel7OfO55.cdddcwpWpfS96h4.wyLa7fBOHW', '2024-12-27 23:32:05', NULL, 'D6TZ4iPQtmjiDLPaVf8qSfJtLzP9wPmAN4XCCiacJ7gPPBictPwM2dhQefBd', 11, 1, 0, 0, 0, 2, 2, 1, NULL, '2025-02-25 13:55:09', '2025-02-25 10:25:09'),
(70, '09380303731', 'نرگس', 'لکزایی', 2, 2, 0, '4979958036', '356889', NULL, NULL, NULL, '090170000000110840705003', NULL, 13, 24, 'آق قلا', 'انقلاب', 24, 13, 'استان گلستان شهرستان اق قلا بخش سد وشمگیر روستای انقلاب منزل مهرعلی  خواجه', '4939188575', 'avatar.png', 2, 1, '4', '2438', '1735631593', '$2y$12$jigwaNy0e.RibUYxzw.QQ.4sBcBXSIy0EHhzkfAB.woP.qFv0BGZ6', '2024-12-31 04:21:25', NULL, 'cEfdanQQHw3WTZnRDwOqvYklC9tYUi0neMvlsCjESlQ18hobbXzHSJ4kDTAR', 11, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-07 10:26:58', '2025-02-07 06:56:58'),
(71, '09373696609', 'رقیه', 'لکزائی', 2, 2, 0, '4979818481', '366721', NULL, NULL, NULL, '940170000000356344259003', '6037991795100811', NULL, NULL, 'انبارالوم', 'امین آباد', 24, 13, 'استان گلستان شهرستان آق قلا شهرانبارالوم بخش وشمگیر روستای امین آباد کوچه امام خمینی یکم منزل عباس چشک رقیه لکزائی', '4939191114', 'avatar.pngimage72941735634025.jpg', 2, 1, '4', '7960', '1735631604', '$2y$12$EkvcjDSeNwsLTY/CtogVMOvT.jjPLhHD6Z1/7bmPx3L56EM8s4WvG', '2024-12-31 04:21:44', NULL, 'DOK1AhsrsKRJamP2tApbf4WpXNhQtSArO7UtDjnhKplIrxIPhfD7Y5MkN61P', 71, 1, 0, 0, 0, 2, 1, 1, NULL, '2025-02-09 08:28:13', '2025-02-09 04:58:13'),
(72, '09012454885', 'کلثوم', 'امیری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1503', '1735631669', '$2y$12$pFOGRp7Y91kJ3MR6YrS/Y.00BUHdoGwXH2/sbR3linH0GYxRPAIGC', '2024-12-31 04:29:39', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-12-31 07:59:39', '2024-12-31 04:29:39'),
(73, '09026336534', 'فاطمه', 'چاری', 2, 2, 0, '4970191026', '335580', NULL, NULL, NULL, '370170000000110344585001', NULL, 13, 24, 'انبارالوم_ بخش وشمگیر', 'انقلاب', 24, 13, 'استان گلستان شهرستان آق قلا شهر انبارالوم بخش وشمگیر روستای انقلاب', '4939188337', 'avatar.png', 2, 1, '4', '5080', '1735631911', '$2y$12$9ZkdZp7DV2.5/IfPgVR4HuVqER45DAuJohVlnUzHCUqFvHolP3eXi', '2024-12-31 04:26:44', NULL, 'dEYF62KvuKxmLDGdiJFVuFnukvMryjI6QubCiNp9rxL9OFP7Ux8Sf4EXcbzS', 11, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-07 10:29:19', '2025-02-07 06:59:19'),
(74, '09379967236', 'علی', 'عالی زاده', 2, 1, 0, '0370642716', '222155', '30583', NULL, NULL, '350170000000217097173005', '6037998132496158', 327, 19, 'قم', NULL, 19, 327, 'قم، عطاران ، کوچه زینعلی 2، پلاک 183', '3716718667', 'image46461741524566.jpg', 2, -1, NULL, '8698', '1735733698', '$2y$12$tBDbyK8RQQXQiFTqFKw/3eYe/3XPdj2IX4vYJKcXr9BRR2oqbMJh2', '2025-01-01 08:43:34', NULL, 'WMzHAk2s8xcWNCTbCX2YQrj8fs9LZlIhBitcpIp6nfgCk9VzRiapGE63ApOh', 74, 1, 1, 0, 0, 1, 0, 1, NULL, '2025-03-09 12:50:23', '2025-03-09 09:20:23'),
(75, '09389177962', 'زهرا', 'اسمعیلی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7671', '1735939863', '$2y$12$TMJFzBr4uuM0wyn7fI3zIOU6XlmxREWHKUr5oa4efOwTk9hxoR.8K', '2025-01-03 17:59:58', NULL, 'WZtd3UPE5oTK74ESYJdaU7HzvP3sw8W08nUZV0QFGcCJjuAnYbljplWRGgQG', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-03 21:30:31', '2025-01-03 18:00:31'),
(76, '09130396918', 'علی', 'نوکاریزی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7457', '1735973631', '$2y$12$w5M2MhTKsZkD/zhTGCSY0O47lkET4aIIOalsbPMPgQzF3Nn.yRRQO', '2025-01-05 06:03:18', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, '2025-01-05 11:42:52', '2025-01-05 15:12:52', '2025-01-05 11:42:52'),
(77, '09130396918', 'علی', 'نوکاریزی', 2, 1, 0, '1050352361', '249440', NULL, '139711081146', NULL, '560170000000338714425006', '6037997242546704', 332, 4, 'کاشان', NULL, 11, 432, 'کاشان .میدان جهاد .بلوار مادر', NULL, 'image12141735974716.jpg', 4, 1, '0', '3580', '1736143738', '$2y$12$7wdMESeFN.yF2En6cIRkNONP9xHwA0RT8kxMkI71wx420.JNRPNSW', '2025-01-06 02:37:17', NULL, 'PYgWhLOvjTcyJDml7bacPbGF6z4rmqPiZ7nFCuXtgz6pkaZWoS7RTcqhNHTb', 77, 1, 0, 1, 0, 2, 1, 1, NULL, '2025-03-10 11:52:17', '2025-03-10 08:22:17'),
(78, '09140661725', 'مرضیه', 'ناظمی خلیلوند', 2, 2, 0, '2900040663', '344626', NULL, NULL, NULL, '0349666320006', NULL, 423, 2, NULL, NULL, 2, 423, NULL, NULL, 'avatar.pngimage12451736270419.jpg', 2, -1, NULL, '4309', '1737144125', '$2y$12$td6iSWB7Reav.wln.XTtauzYHJMdRkAdslpkFkCoKG0QmZK./apoi', '2025-01-17 16:30:46', NULL, 'oa0zOMerWkhjMbBXQENOXixbTXRzaIawvZPDKMo3e22abB8WdxTeHiaQOkwk', 78, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-02-01 09:48:22', '2025-02-01 06:18:22'),
(79, '09147256036', 'مهدی', 'احسانی', 2, 1, 0, '2940153256', '323233', '000000000', '00000000', NULL, '430170000000346443102000', NULL, 122, 2, NULL, NULL, 2, 122, NULL, NULL, 'avatar.png', 2, -1, NULL, '6461', '1736237986', '$2y$12$pVYsNf4Q8M7ZgHTLiEoE7uYuvjuLENKJOP0sMIZU11XDqhUVwS5Im', '2025-01-07 04:48:05', NULL, 'L0Pa9aXvfJaq84h8fqPLO7hP22VvZ2YSmnYoaoj8sXy0CJF9cKwlKrDw4BEO', 79, 1, 1, 1, 0, 2, 2, 1, NULL, '2025-03-02 11:43:46', '2025-03-02 08:13:46'),
(80, '09100311933', 'جواد', 'موحدی فر', 2, 1, 0, '4869863014', '95158', NULL, NULL, NULL, '180170000000304155569009', NULL, 327, 19, 'قم', 'قم', 24, 342, NULL, '1111111111', 'avatar.png', 4, 1, '5', '5989', '1736238864', '$2y$12$78VGaXQtw/8bgsUne6gEAOPY4HA.SDuaFgcntEv9FMRmqIKNDnLUy', '2025-02-05 05:30:29', NULL, '7um9fsJhSNaxlDq4quUSfEQ5GThHG9zFw58N7tNUeqph4nufseVuGOohy9EX', 11, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-07 12:04:23', '2025-02-07 08:34:23'),
(81, '09366911866', 'ایمان', 'شهریاری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7802', '1736239524', '$2y$12$jm0YkXWUegGk0iDQtA57Ae1QPS7xuEgNy/Dta5VKdIgUPTTCjAs7W', '2025-01-07 05:13:31', NULL, 've1nnUZd6K6kNRKytKQGlEAUXMq5o4BxUyJpc1ccyPaVlZ32IbuzS16qCwzy', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-01-09 08:48:37', '2025-01-09 05:18:37'),
(82, '09369839916', 'عباس', 'اسدی', 2, 1, 0, '0371342635', '281487', '200982', NULL, NULL, '710170000000345732796007', NULL, 327, 19, 'قم', NULL, 19, 327, NULL, NULL, 'image24431736335623.jpeg', 3, 1, '4', '2670', '1736242676', '$2y$12$nk9qDjxFbLeRHKlZAVwU0Otbkm3Osp9qXz/hYUknhdYO2g1ZIUHSi', '2025-01-08 07:05:07', NULL, 'e1t4uyZwihDIbXGyPrjKclXqPZnU0EbEA4CKsliMdWUaJ84zmJdtJ3Os53qB', 11, 1, 1, 0, 0, 1, 0, 1, NULL, '2025-02-07 12:07:56', '2025-02-07 08:37:56'),
(83, '09945556581', 'سلمان', 'صادقی', 2, 1, 0, '1209336367', '۸۰۸۰۳', '۲۵۷۸۴', NULL, 'یادم نیست', '240170000000305756683008', '6037997433245322', 327, 19, 'قم', NULL, 4, 257, 'گلزار /خ هنرستان /خ شهیدابراهیمی/ پلاک۶۸', NULL, 'avatar.png', 3, 1, '0', '5139', '1736249056', '$2y$12$jqgZJVcW1IaP2TarwNqws.TMVxIJ0gdYItonDvSExBYNSMStuKYP.', '2025-01-07 07:52:35', NULL, 'YQDQIf6LTL3GGL1RyTUqrLaTerNS5LfiCT4TLwcOR7MeDtCWbI85uuoIWBb9', 523, 1, 1, 0, 1, 1, 1, 1, NULL, '2025-03-09 12:04:23', '2025-03-09 08:34:23'),
(84, '09174584229', 'سیما', 'طاهریان', 2, 2, 0, '4269971916', '337139', '63646', NULL, NULL, '710170000000200509912009', '6037997189838445', 360, 23, 'دوگنبدان', NULL, 23, 360, 'گچساران ؛بلواربعثت؛بعثت۱۷. آخر کوچه سمت راست درب آخر', '7581833186', 'image16431739188473.jpg', 2, -1, NULL, '7992', '1736266059', '$2y$12$Ztfgk9JBaoSWGe5azx55ZuIR.qTcyLxGPngTo/ws1xzIJJ/dP4BsG', '2025-01-07 12:35:48', NULL, 'eBCHApcnWN6k1nqbdrRnnQ1ck0e1t3ceqHxK1rhOH7SNTJopjTDGVoIF3TVD', 84, 1, 1, 0, 0, 2, 2, 1, NULL, '2025-02-10 11:54:39', '2025-02-10 08:24:39'),
(85, '09196638264', 'نرگس', 'قربانی پور', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9172', '1736273492', '$2y$12$LpidmsKxxmIaHWHJt1VkKeoyBaH3lt5l5wGDSnuV5Dknapk82CpC6', '2025-01-07 14:39:45', NULL, 'J4S5rIYzlY7UCdNJgwYrFNbTPnYmTGTJxGUgMrj0snVN4knkV6omSeDntRCF', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 18:09:45', '2025-01-07 18:09:45'),
(86, '09186217494', 'پیمان', 'بدری', 2, 1, 0, '3240879174', NULL, NULL, NULL, NULL, '950170000000230831215006', '6037998273348044', 339, 22, NULL, NULL, 22, 339, NULL, NULL, 'avatar.png', 1, -1, NULL, '4504', '1736274330', '$2y$12$AVV4LEjcIvjcSnwcKipcgeuHNvathOiURIjEfQBYOAVDR6927MxOO', '2025-02-09 06:16:45', NULL, 'vMDfxC7m8pSYa2emc3ndZcQM4nSYfXUkSnMN57NnmxF7ZZiZSm1SXCYvZOPE', 86, 0, 0, 0, 0, 0, 2, 1, NULL, '2025-02-09 09:56:03', '2025-02-09 06:26:03'),
(87, '09916505819', 'فاطمه', 'سعیدی دهاقانی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1700', '1736276628', '$2y$12$VdRjgmJV6Orelk0EjQDvXuOCB5F6N4XaKIutETSQGLyjKqcCG2m02', '2025-01-07 15:33:17', NULL, 'NgaCfryX7L93Ll1LsfJorFWUpvV5BROOBeSKnJXRpcPGvb9HVMlP8BD3nsnW', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 19:03:17', '2025-01-07 19:03:17'),
(88, '09331105463', 'امید', 'درحی', 2, 1, 0, '0923839976', '260272', '‏‪9830001342‬‏', NULL, NULL, '670170000000347675395000', '6037997262104608', 396, 11, 'مشهد', NULL, 11, 396, NULL, NULL, 'avatar.pngimage90881739205445.JPG', 3, -1, NULL, '5476', '1736276768', '$2y$12$H7DSazSZwNFxSDuesVDqzOA9fi7R.vyw6eKmP9GI6kau41NQdQG5m', '2025-01-07 15:34:55', NULL, 'mbKRKREg9z4Ahic2As01O5oDARCSFb75PivZzzfeP3iDoApX1Aka32f33xbS', 88, 1, 1, 0, 0, 2, 1, 1, NULL, '2025-03-09 11:22:13', '2025-03-09 07:52:13'),
(89, '09127487179', 'یحیی', 'حسام', 2, 1, 0, '2122471255', '۳۶۸۵۰', NULL, NULL, NULL, '280170000000328320397009', '6037997437491765', 129, 12, 'درق', NULL, 24, 362, NULL, NULL, 'avatar.png', 3, 1, '0', '3454', '1739123645', '$2y$12$jwtTVvRJUQ1MX4CacFqrRO.exvvYhGnBtpPaCA/nYrCUWg26418/K', '2025-02-09 14:22:13', NULL, 'Mcpr3hDHjioOW8wrrjpulFMeR3yhs6dOvTbW1QDHomTKTA8fMqxFxdnm5NKr', 11, 1, 0, 0, 0, 2, 2, 1, NULL, '2025-03-09 11:41:50', '2025-03-09 08:11:50'),
(90, '09176830793', 'معصومه', 'عباسی', 2, 2, 0, '5150038520', '386567', NULL, '139901133981', NULL, '590170000000358167133006', '6037997494968051', 375, 17, 'اشکنان', 'اشکنان', 17, 375, 'فارس،لامرد،اشکنان،بلوار انقلاب ،کوچه شهید طلعتی', '7439118951', 'avatar.pngimage70001739069094.jpgimage75021739088233.jpg', 2, -1, NULL, '2836', '1736276996', '$2y$12$DhHEtIOZkmRXaxccgo4/v.Xd1H.rpD8Dt6NGsYedKGX5agEKaOvRO', '2025-01-07 15:38:11', NULL, 'RRO95jL7z5db7JkCxBGToUTLEQKi77BIpTT7izLRO8ZVRZDAP72QKIg7vXfN', 90, 1, 0, 1, 0, 1, 2, 1, NULL, '2025-02-15 08:17:49', '2025-02-15 04:47:49'),
(91, '09191486248', 'روح الله', 'فدوی زاده', 2, 1, 0, '0900526068', '۱۱۰۵۶۲', NULL, NULL, NULL, '9300170000000304802954001', '6037997493930128', 327, 19, NULL, NULL, 11, 333, 'بلوار 15 خرداد ک40 مجتمع اساتید بلوک 5 واحد 4', '۳۷۱۴۸۵ ۳۰۷۴', 'avatar.pngimage48641739110688.jpg', 4, -1, '0', '7664', '1736277136', '$2y$12$yBsM4mToatsBoJsYWs/imuvb.A4i3uLAdrjOxrJ1pd44Cqw0DcV1S', '2025-01-07 15:41:56', NULL, 'TdZhQxBzZ1mwcaF6yAf5UE44yQjXMeCqSc7uMBqbiKE2qzT7QVbphqUgPE6J', 523, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-09 11:50:19', '2025-03-09 08:20:19'),
(92, '09385542341', 'اصغر', 'زارع', 2, 1, 0, '0384819060', '۶۰۵۳۹', NULL, NULL, NULL, '500170000000302932645007', NULL, 300, 30, 'فامنین', 'زرقان   خوش اباد', 30, 300, NULL, '۶۵۶۱۱۵۷۹۴۶', 'avatar.pngimage68801736277838.jpg', 3, -1, NULL, '6286', '1736277286', '$2y$12$JPDZyu.xPwNofw6XfzLjK.4MDdwTtZs2gT4wi.LYWpvlw3bT2ffH.', '2025-01-07 15:43:05', NULL, 'CErE0bXWvEvA0BQeCgnHleOhgTDbiT7YVMcMTIeSFsFH0nIPT3uUCElQXNyu', 92, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-01-08 05:02:48', '2025-01-08 01:32:48'),
(93, '09364484997', 'محمد', 'احمدی', 2, 1, 1, NULL, '155390', NULL, NULL, NULL, '580170000000301456336000', '6037998160413684', 396, 11, NULL, NULL, 11, 396, NULL, '9149866534', 'image55931739113249.jpg', 4, -1, NULL, '9909', '1736277356', '$2y$12$Gnp24N9CzlpYP.ogKofhOOulYEQL8IEwHHz3KYUJ6E1ZCxdSne90K', '2025-01-07 15:44:09', NULL, 'BrbD7IAmdu57YyA7sMPKX7jKrt0qjq89bRyQwEvoa0Y18m6wk4GPIoEOtDXC', 93, 1, 0, 0, 0, 2, 0, 1, NULL, '2025-03-09 12:22:26', '2025-03-09 08:52:26'),
(94, '09125529068', 'علی', 'شهروزفر', 2, 1, 0, '2909514102', '1263', '13707', NULL, NULL, '050170000000328534464007', NULL, 327, 19, 'قم', NULL, 2, 423, 'قم ۴۵متری صدوق سی متری قائم کوچه شماره  ۵ چهارراه دوم دست چپ کوچه شهیدمعماریان', '۵۷۶۱۷۴۴۷۵۱', 'image4701736525552.jpg', 3, -1, NULL, '6003', '1736277602', '$2y$12$7YUdrveIz/GWUSU/jdrH2OmRsoH.IoOPikloIwN2aNOeSRuyeABUa', '2025-03-03 22:34:44', NULL, NULL, 94, 1, 1, 0, 0, 2, 2, 1, NULL, '2025-03-09 12:32:16', '2025-03-09 09:02:16'),
(95, '09182970838', 'مهشید', 'افراسیابی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9358', '1736278340', '$2y$12$KutLHtAHBvFV/JBvlDg6QeiZW8v5ZBMpKxGj4tIGdm94OUYoXZR9C', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 19:30:15', '2025-01-07 16:00:15'),
(96, '09191602034', 'وحيد', 'اوتادي', 2, 1, 0, '0074358529', NULL, NULL, NULL, NULL, '080170000000336189463005', '6037997207463705', 327, 19, NULL, NULL, 19, 327, NULL, NULL, 'image10101739031091.jpgimage70561739295276.jpg', 3, -1, NULL, '9844', '1736278538', '$2y$12$pYfziw6uik4OnMqXXi1V4.AB165NRtnczwhBUcLXkkSa/lBxp7JU2', '2025-02-11 13:47:13', NULL, NULL, 96, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 11:34:48', '2025-03-01 08:04:48'),
(97, '09193591448', 'محمد حسین', 'فلاح یخدانی', 2, 1, 0, '4489419831', '44953', '19139', NULL, NULL, '170170000000102486394007', '6037997370518756', 327, 19, 'پردیسان بلوار سلمان فارسی خیابان آزادی بلوار 22بهمن مجتمع شهید میثمی رض', 'قم پردیسان', 19, 327, 'پردیسان بلوار سلمان فارسی خیابان آزادی بلوار 22بهمن مجتمع شهید میثمی رض بلوک 4واحد ۱', '3749179697', 'image90311739111731.jpg', 4, -1, NULL, '1303', '1739111407', '$2y$12$W0J4MII0/v.4F31s3IXrI.Db8kUsr7t2jn/Q4Hkvb9C90pSVf1zeO', '2025-02-09 10:58:21', NULL, 'yvh4g0uec3PYM3QAMdHW4VouAWOfpWVgBwT0c25xMvcA5Dwx9w4YK6N7VN13', 97, 1, 1, 0, 0, 2, 1, 1, NULL, '2025-03-01 12:57:07', '2025-03-01 09:27:07'),
(98, '09916661401', 'مرضیه', 'سنچولی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9564', '1736279457', '$2y$12$aCSn.97BPAgMA8xN0VRAwO/fvDzgFkcbHo7i7PHOf31eH/OaQLQUm', '2025-01-07 16:19:14', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 19:49:14', '2025-01-07 16:19:14'),
(99, '09380383654', 'زهرا', 'سوار', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6026', '1736279574', '$2y$12$Vt9HLAeN.yOXZPGHAnoI0uBK7flHkJm0LMZNkF.bvstFKTAJzFWTy', '2025-01-07 16:21:53', NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-07 19:53:31', '2025-01-07 16:23:31'),
(100, '09159211971', 'سید خلیل الله', 'روحانی', 2, 1, 1, '0002918947', '107478', NULL, NULL, NULL, '650170000000308061608007', '6037998160762836', 396, 11, 'مشهد مقدس', NULL, 11, 396, 'مشهد مقدس_ پنجتن  55 _شهید کمالی 6 پلاک 30', NULL, 'image50461739101483.jpg', 3, -1, '0', '9786', '1736279680', '$2y$12$OhIWNWJJar2xFaD4K1Y9ZuS8f1/ZGUH2YL0zIIg1lNzGi/EzrnFx2', '2025-02-09 07:40:50', NULL, NULL, 11, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-09 12:41:05', '2025-03-09 09:11:05');
INSERT INTO `users` (`id`, `mobile`, `firstname`, `lastname`, `role_id`, `gender_id`, `is_not_citizen`, `codemeli`, `khadamat_code`, `tablighat_office_code`, `tablighat_organization_code`, `ovghaf_code`, `bank_account_number`, `bank_cart_number`, `city_id`, `province_id`, `city`, `village`, `native_province_id`, `native_city_id`, `address`, `postal_code`, `photo`, `education_id`, `status_id`, `level_id`, `confirm_code`, `confirm_time`, `password`, `last_login`, `creator_id`, `remember_token`, `editor_id`, `has_khadamat_code`, `has_tablighat_office_code`, `has_tablighat_organization_code`, `has_ovghaf_code`, `report_count`, `agree_count`, `work_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(101, '09183123831', 'علی', 'سیاح شعاع', 2, 1, 0, '4011258903', '37343', NULL, NULL, NULL, '760170000000106908414007', '6037997159903971', 29, 30, 'اسدآباد', NULL, 30, 29, 'همدان اسدآباد خیابان15خرداد کوچه رفعت پلاک ۵', NULL, 'image41251739124726.jpg', 2, -1, '0', '7994', '1736280058', '$2y$12$X2M/3Cil5LWU236dVxDFDuuP6GobpzGKDt37aYw7MSn6C3PKaL65G', '2025-02-14 12:52:14', NULL, NULL, 523, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-09 12:59:00', '2025-03-09 09:29:00'),
(102, '09104646733', 'محمد حسین', 'طالبی نصرآبادی', 2, 1, 0, '1263482031', '62360', '23802', NULL, NULL, '960170000000302469462001', NULL, 7, 4, 'سفیدشهر', NULL, 4, 7, NULL, '۸۷۴۳۱۳۶۳۳۸', 'avatar.pngimage76851739028851.jpg', 3, -1, NULL, '4677', '1736280194', '$2y$12$LueNNBExUBoaGTjL9.HVg.yYAFzP/RqkkrgyVUmmrPva7M3cgBXRm', '2025-02-08 12:02:06', NULL, NULL, 102, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-02 11:15:24', '2025-03-02 07:45:24'),
(103, '09119763086', 'حسن', 'علوی پور', 2, 1, 0, '4888695717', NULL, NULL, NULL, NULL, '460170000000223773615004', NULL, 417, 24, NULL, NULL, 24, 417, 'استان گلستان شهرستان مینودشت خیابان سید جمال الدین کوچه شهید چشمکی پلاک ۷', '4981666156', 'avatar.pngimage4121737141835.jpg', 2, -1, NULL, '6583', '1736280412', '$2y$12$/RPS6ERDS4Lxz5jc0OgG3OKZERadhkhRMXwu1eKZBsVqinNeLAVC.', '2025-03-09 09:28:34', NULL, NULL, 103, 0, 0, 0, 0, 2, 2, 1, NULL, '2025-03-09 12:58:34', '2025-03-09 09:28:34'),
(104, '09112547184', 'اکرم', 'فرجی ملادهی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5059', '1736280617', '$2y$12$hu.scf7H8RZ/uWb./TtsbuLwgYGL4ZuZqONkUvk/CNEzLbVn/E6n.', '2025-01-07 16:38:40', NULL, '8aKD8cD7ZLrCiwDsE8K2uAJhb0u0LBbnJbXkQkf7eotJ949J675UbwSekzJi', NULL, 0, 0, 0, 0, 2, 0, 1, NULL, '2025-03-01 11:46:57', '2025-03-01 08:16:57'),
(105, '09162667613', 'زهرا', 'کیومرثی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2468', '1736280637', '$2y$12$/FrYsMasz9uF7Mj/xUD06e1SoqaAQ2EJmNngYWWATADg7RnsjeXii', '2025-01-07 16:39:38', NULL, 'vJLiGDHLr7dVgO44cD18r7cq470CUcoCyo52FXXx8ftmYxwY6uOeYLx2K52F', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-01-08 05:18:36', '2025-01-08 01:48:36'),
(106, '09145636374', 'سمیرا', 'اسدپور', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2265', '1736280682', '$2y$12$W2FftZoHLt8fHk/WMZa83utWihB4YrnELCwWZoONHLy/AcIM8RV6S', '2025-01-07 16:39:30', NULL, '0AxSeaaNo6NPXEZM7qUAot6SV4mbjcx3Q1BdpAJLRAYWC6TWaa9R5h8hBCx3', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 20:09:30', '2025-01-07 20:09:30'),
(107, '09102809864', 'مهدی', 'بی باک', 2, 1, 0, '2572037912', '65059', '139429094', NULL, '۹۸۱۲', '760170000000205870087008', '6037998126906014', 327, 19, 'قم', 'قم', 19, 327, 'قم  پردیسان خ  نجات خواه مجتمع سیدمهدی روحانی بلوک ۲واحد۱۲', '‏‪۳۷۱۱۳۸۶۹۹۸‬‏', 'image47391739257053.jpg', 4, 1, '5', '7437', '1736280727', '$2y$12$5vshCtIWwDCbck6wmUsye.X/EGFulzdVoU/.zsZ2wWFsFf2jhWob6', '2025-01-07 16:40:23', NULL, 'ktgkvuppvgKfnZcanrRUyCT6s2QvFJgp12fC7bzDxXlzsYTuodLy3Lodk3Oy', 11, 1, 1, 0, 1, 2, 1, 1, NULL, '2025-02-25 15:24:27', '2025-02-25 11:54:27'),
(108, '09118747132', 'احمد', 'طوسی', 2, 1, 0, '2233333333', NULL, NULL, NULL, NULL, '530600520179908018404001', '1111111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', 2, -1, '0', '8604', '1736280810', '$2y$12$FOPV7GB/HwqMZ3j8.7swlOvYk7oi/O7Qyb3HAsjn3fm8I0497x8qi', '2025-01-07 16:41:35', NULL, '1LcMdEYJhMV0aNHCMrLsM6gVs7OUJOme5Umm5eh3FZMC16U6hRKqS91VDTOY', 11, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-02-10 13:06:15', '2025-02-10 09:36:15'),
(109, '09133634158', 'عباس', 'حیدریان مقدم', 2, 1, 0, '1239926332', '73410', NULL, NULL, NULL, '880170000000303930930008', '6037997239584817', 421, 4, 'شهر خالد آباد', NULL, 4, 421, 'شهرستان نطنز ، شهر خالد آبد ، خیابان ولیعصر،  پ97', NULL, 'avatar.png', 2, -1, '0', '1016', '1736280820', '$2y$12$a3Bsr6Z3bKchKj/HCK8k1uxKzglJEXNvOhvDKr7BKSmThmRD4OWQq', '2025-01-07 16:41:48', NULL, 'gENHCfT96sUB87bRaMg4LNOfm8jIy9NRpSZq0RnXIlDwcJBehy38VMik14Cl', 523, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-03-10 11:09:02', '2025-03-10 07:39:02'),
(110, '09142135406', 'فاطمه', 'میرقاتی خویی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8275', '1736280836', '$2y$12$x..9hwCfj4uMziHqqdleReABxx9o6YPNqbgS0MFe/Ul0LQQDa8klG', '2025-01-07 16:42:41', NULL, 'NKj61QJq9uaDbELnZnhI7F4xXXH1ZY4OdYy28Vuy5QAtrfYhwM85mwOLAyz1', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-01-08 05:26:50', '2025-01-08 01:56:50'),
(111, '09100997440', 'هدا', 'چراغی', 2, 2, 0, '4940018652', '429220', NULL, NULL, NULL, '430170000000357908502000', '6037997480193060', 176, 22, 'کرندغرب', 'گاودانه خور', 22, 176, NULL, '۶۷۶۵۱۸۱۳۷۸', 'image39891736281946.jpg', 2, -1, NULL, '9444', '1736280872', '$2y$12$Bt/UUUjpRzgvIgWQIV69Ne8keIKQiJSuLmYtIN4eyYIfe27Q3r1jy', '2025-01-07 16:42:40', NULL, 'hy0n7FyOGvUg0qrVso3lSvHown3wkvucIhDXXQ7O4k53wx01pH32XNtnd9Sk', 111, 1, 0, 0, 0, 2, 2, 1, NULL, '2025-03-01 12:24:38', '2025-03-01 08:54:38'),
(112, '09134735684', 'فاطمه', 'باقری کلایه', 2, 2, 0, '0381766748', '۱۸۰۶۰۹', NULL, '۰۳۸۱۷۶۶۷۴۸', NULL, '322121217007', NULL, 332, 4, 'کاشان', NULL, 4, 332, 'اصفهان کاشان خ امیر کبیر انارستان ۴۰', NULL, 'avatar.png', 3, -1, NULL, '1596', '1736281373', '$2y$12$uCvCZTEY5fW..l4FY0qYx.6vtkGQKYZyMjIYhTxzPljEdYKoy8Ce2', '2025-01-07 16:52:25', NULL, 'JTuaMtC4tXJ8b1DcFfLiv2ya6GN00IJUCtpbOGShd09878cinzq2r5MpkSgQ', 112, 1, 0, 1, 0, 1, 1, 1, NULL, '2025-01-08 06:12:14', '2025-01-08 02:42:14'),
(113, '09123530993', 'محمدرضا', 'شجاعی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9902', '1736281385', '$2y$12$6UtrmOE55oQStK2P0Nb42eA0qFqeAerIm0ERs0/XTogXyb5W6C7AC', '2025-01-07 16:51:21', NULL, 'aT8sSBP7uzvRKtUTZ34VYflrRDkzhr3WDKKsc0fgoPTBhs6brc5oci11g68w', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 20:21:21', '2025-01-07 20:21:21'),
(114, '09127493112', 'مهدی', 'آقازاده', 2, 1, 0, '2668815924', '۵۶۷۸۸', '۲۲۰۵۴', NULL, NULL, '780170000000102494997003', NULL, 327, NULL, 'قم', NULL, 25, 380, 'قم پردیسان خیابان شهیدحامدنیامجتمع شهیدسعیدی بلوک ۶واحد۷', NULL, 'image91791738408067.jpg', 4, -1, NULL, '1374', '1736282098', '$2y$12$SUCQ0SynwVxkHF9jgsPwp.CU6wVJuPpf6ee8COEbQ3dn8FQAZiZ/2', '2025-01-07 17:03:28', NULL, 'q77srAf6C4ADQ9C0ARxO86i7AW8dhrCfiQnsDom62oi8vcThO5mDpU9pQKEM', 114, 1, 1, 0, 0, 1, 2, 1, NULL, '2025-03-03 09:57:05', '2025-03-03 06:27:05'),
(115, '09931246238', 'فریبا', 'صمدی انصار', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5122', '1736283087', '$2y$12$PyWmq0Olbhfxn5khtLMHueiowdJHkr3c5jDnnxd6utrMmDVx2w4k.', '2025-01-07 17:19:46', NULL, '3oBrkJSFHjWwrTU1lqeDdAVC8mM0IcZawO5ORRpYuJZVgD2mjfPEaHSQxeDp', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-07 20:49:46', '2025-01-07 20:49:46'),
(116, '09179300744', 'عقیل', 'شفیعی', 2, 1, 0, '2491588099', '66004', NULL, '139411033308', NULL, '550170000000306424684008', NULL, 430, 17, 'نی ریز', NULL, 17, 430, 'نی ریز خ امام خمینی ره \nکوچه امام‌زادگان ع', '7491848468', 'avatar.pngimage84781736283642.png', 3, 1, '5', '5197', '1736283282', '$2y$12$Za2p2BiFUBbNOUGtMU9mc.4vgx1QIdta98UpWo5oAGngRz2r69hqa', '2025-01-07 17:22:54', NULL, '4OkRg1Fx2aa2eNOs59zrpOEN84lapP2hJWrRn3otvZM7u7jybOX3DDIytvkr', 11, 1, 0, 1, 0, 1, 1, 1, NULL, '2025-03-02 11:47:46', '2025-03-02 08:17:46'),
(117, '09139873078', 'مهدی', 'میرزایی', 2, 1, 0, '5579508131', '32259', '200534', NULL, NULL, '460170000000103730211002', '6037997391561306', 327, 19, 'شهرک پردیسان', NULL, 19, 327, 'شهرک پردیسان هزاره هفتم مجتمع علامه امینی بلوک 4واحد3', NULL, 'avatar.png', 2, -1, NULL, '4135', '1739104689', '$2y$12$GZcieRdvQ/ShzeB33.aDluxCwxi6mqga3Ul8qDFOmS2RqhHzOw8Cm', '2025-02-18 16:08:52', NULL, '8iOYdrHlT5msh9cHn4wTuQ3fN5ySM7q8xpWVGmXGZLbGfplARpSSvpqvkMOT', 117, 1, 1, 0, 0, 2, 2, 1, NULL, '2025-03-02 12:44:49', '2025-03-02 09:14:49'),
(118, '09186761800', 'سید محمد علی', 'ملیحی', 2, 1, 0, '3871121215', NULL, NULL, NULL, NULL, '190170000000340196481009', '6037997598467422', NULL, NULL, NULL, NULL, 30, 443, NULL, NULL, 'avatar.png', 2, -1, NULL, '7855', '1736284326', '$2y$12$s.bCEWPbUqSk76ZfjUtvYeW4Rq5mtcpbLD1t1KjuZucGbcT8daCJ.', '2025-01-07 17:40:33', NULL, 'BzeQfcFF21f3B7F1lo8TugIrGcoqubDdAnotLkdS28VeFrykFGTitfWFoHwb', 118, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-03-01 10:36:09', '2025-03-01 07:06:09'),
(119, '09192514957', 'علی', 'صادقی نیا', 2, 1, 0, '0383667437', '۲۹۰۷۸', '۲۰۲۸۸', NULL, NULL, '0339568783002', NULL, 327, 19, 'قم', NULL, NULL, NULL, 'خ ایستگاه کوی ۱۵ فرعی ۲ پلاک۷', NULL, 'image96421738741537.jpg', 3, -1, NULL, '7127', '1736284780', '$2y$12$KP7IP48ymEeASzYqAQyBsOcTT55yuCssEivPe1pSetjnCnc4LG1yu', '2025-01-07 17:48:01', NULL, '3bRmzSzWBCPnuaRsOt0A1rhE5Pcon62Oq8FCZLe05yNZFXGzv0qkQmeuPKwa', 119, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-02-25 12:16:05', '2025-02-25 08:46:05'),
(120, '09175461593', 'فاطمه', 'سالاری', 2, 2, 0, '4699473946', '۳۹۵۳۲۵', NULL, NULL, NULL, '330170000000340057530003', NULL, 216, 29, 'دهبارز', 'خ شهید دستغیب', 29, 216, 'هرمزگان.رودان.دهبارز .خ شهید دستغیب', '۷۹۹۱۹۹۴۳۱۵', 'avatar.pngimage70251738517317.heic', 2, -1, NULL, '7870', '1736284897', '$2y$12$zIiBYFgZQS9leRYvAkehAeDoB3jg4GxBuJfu2Yvj3cIv8lJqRoD/O', '2025-01-07 17:51:19', NULL, '18wApqfUHL4oBtpSOcylZgIowMXcfCgYxcBQHC68tjXChrug7CUc2Fob7ku5', 120, 1, 0, 0, 0, 0, 2, 1, NULL, '2025-02-02 17:29:17', '2025-02-02 13:59:17'),
(121, '09171682412', 'ابراهیم', 'جعفری  خوشن آبادی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7858', '1736286494', '$2y$12$xieJXdRx6b0dlGDY8DpyJuyLZ24PmuZdsH3WVWCHk1OwyoClzVZKu', '2025-01-07 18:16:38', NULL, 'qE3WRGEeQVaXpNhxEqpIPpxrArrSVk5QNoYTDyqvljxMnkRbO5vrgilazG7T', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-07 21:48:20', '2025-01-07 18:18:20'),
(122, '09178210145', 'آمنه', 'شیردل', 2, 2, 0, '5479918435', '414752', NULL, NULL, NULL, '870170000000218886543000', NULL, 375, 17, 'اشکنان', NULL, 17, 375, 'اشکنان . خیابان سردار سلیمانی کوچه معراج منزل سید حسین سخن سنج', '7439114477', 'avatar.png', 2, -1, NULL, '1538', '1736298943', '$2y$12$KWXy3cTf3ohRipKEj7JNYeBS75h9f3OcCYPBG1JpPFP9mkf7n3p/K', '2025-01-07 21:43:59', NULL, 'XYsROV3qbjldW8rSZbRKMAOPNMN2GMPcf1fYt1xPGlWI97tFEUHbddQZB4Mq', 122, 1, 0, 0, 0, 2, 2, 1, NULL, '2025-02-11 09:46:06', '2025-02-11 06:16:06'),
(123, '09139302762', 'مرتضی', 'یوسفان', 2, 1, 0, '1091760500', '54845', '139042579', NULL, NULL, '240170000000302943253007', '6037991933208286', 280, 4, NULL, NULL, 4, 280, 'شهرضا خ پاسداران فرعی 54 روبروی سوپری رضوی زاده', NULL, 'avatar.pngimage21601739267805.png', 3, -1, NULL, '2073', '1739267737', '$2y$12$d.igza7H0dxFOD7k7EdF4.S0IFSOb3vxaqvAi/PSVpLFbkO2az.5m', '2025-02-11 06:23:43', NULL, 'ocOh0m97cQCAysyKPoHivqMHTaY5ygBlbz5DznvvypoqPDWCGSMPFhvwH4Lx', 123, 1, 1, 0, 0, 1, 2, 1, NULL, '2025-02-11 15:59:39', '2025-02-11 12:29:39'),
(124, '09188193029', 'ندا', 'سعادتی صفا', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9895', '1736307729', '$2y$12$4h.mkTg7Gtf/o2tTzgOfGOWxAtHI6CrD2SZwZloxbMp7I.AKDFWYi', '2025-01-08 00:10:28', NULL, '04NHCC31f9AZniT6cHlAOrBpJOd1Q4SejpBpK0ztlyBb9Kbvwq6gd9T02OHh', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-08 06:32:09', '2025-01-08 03:02:09'),
(125, '09918535249', 'علی', 'عاشوری', 2, 1, 0, '6319664746', '30302', NULL, NULL, NULL, '620600520170014823033001', '6063731165596728', 327, 19, NULL, NULL, 25, 219, 'توحید جواد الائمه 18 متری قدس ک 5 پ170', NULL, 'avatar.png', 4, -1, '0', '7032', '1736309060', '$2y$12$69Y525mgvoolSAYtdf7m0eJaWzm7273mhQyMe4m7ltNbwpVxGOtNS', '2025-01-08 00:32:37', NULL, '1gm9sg7PFmWhgOGrB3jW8pbpcRo5ubzTc4y9JmYsp57TtIADfxk65GDFYDyU', 523, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-10 11:31:47', '2025-03-10 08:01:47'),
(126, '09179828078', 'نرگس', 'قریشی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5144', '1736309539', '$2y$12$JPns3.oJelQZrPcWe6pODeK8f9qWkUKovUZxeZpKT9aUbJYsm6422', '2025-01-08 00:41:17', NULL, 'r8W687tA4DMIJ9trjgfEA4SIL6LgVu8yrUcQ6GRP4RC5GCiJy5EoPfLg8DOH', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-08 04:11:17', '2025-01-08 00:41:17'),
(127, '09138971315', 'حمید', 'کارگر', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6925', '1736309997', '$2y$12$y/9.9kLFs/kEOkZbXpOYBO4AiDLjaQ5WfIgseoqz6nQIN9gjc8B0u', '2025-01-08 00:48:09', NULL, 'jgOMM4f4wWIdFkS23w8rFz3MBiRkU6a1NaF0re24zHiQRBNeiLVH22snfD4K', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-08 06:33:56', '2025-01-08 03:03:56'),
(128, '09357334517', 'محسن', 'کوهستانی', 2, 1, 0, '2269885260', '۶۱۳۸۸', NULL, NULL, NULL, '180170000000350949087003', '6037997242083260', 295, 24, NULL, NULL, 24, 295, NULL, NULL, 'image68231739201033.jpg', 4, -1, NULL, '1711', '1738944434', '$2y$12$tphZWxTvagyVruLnayvMb.27k/aFTE7o6.ObiyYdyt/sgyvDScjq6', '2025-02-10 11:51:20', NULL, 'pOeL3lt4dCf4yi6GX81zFbaqIimH8QkPtR5gHpFiqxpYTCdtRaWLqjhQmgLJ', 128, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 15:23:56', '2025-02-10 11:53:56'),
(129, '09189514421', 'حسین', 'خزائی', 2, 1, 0, '5849977880', NULL, NULL, NULL, NULL, '490600740670001839197001', '6063731153956363', 125, 30, NULL, NULL, 30, 125, NULL, NULL, 'avatar.pngimage53041739129412.heic', 2, -1, NULL, '9611', '1738428221', '$2y$12$qqyacJBTETtAM94Zkc4c8ef5TRc/rq8ISoE2Yn.plZynfdVDIVKde', '2025-02-01 13:11:52', NULL, '7sofesa19lMvOxmu7PFqnJh40uRAwCkwhj6CtRKkgHY45e7rlz1jOhzUXyG1', 129, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 13:39:15', '2025-02-25 10:09:15'),
(130, '09194510873', 'الهیار', 'محسنی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2323', '1739585174', '$2y$12$7Sh83SlZkeaC0eyYssnSsOpe5D2iGfX4f5fE2mvDjjXHipaBbeZOe', '2025-02-14 22:35:21', NULL, 'CrzPjFNzZSBZQA3TzaOl63J1oa6uG1WyZwaDeeaMSP7qeGQwEC1XKOBsMSZj', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 12:53:18', '2025-02-25 09:23:18'),
(131, '09153216541', 'سید محمد', 'ناجی', 2, 1, 0, '0944835333', '106803', NULL, NULL, NULL, '220170000000308022006009', NULL, 396, 11, NULL, NULL, 11, 396, NULL, NULL, 'avatar.png', 4, -1, NULL, '8765', '1736313106', '$2y$12$uLSYjdAVIdde0RXWsWwMcubgFBpr2KB1AyHLJq320KwxdOtSEK90S', '2025-01-08 01:39:56', NULL, 'AxQxTuQ93XrCKB2ZNVXKaEPv3i2lhEETPtbLZxYdjnjU6sQ94zrVoqDhxHVl', 131, 1, 0, 0, 0, 1, 0, 1, NULL, '2025-02-10 17:49:54', '2025-02-10 14:19:54'),
(132, '09352659924', 'محمد', 'کیهانی', 2, 1, 0, '0640719279', '427133', NULL, NULL, NULL, '710170000000362221852003', '6037998175585560', 396, 11, NULL, NULL, 10, 99, 'سیدی‌.خیابان قائم.قآیم ۳۳.پلاک ۱۷', NULL, 'avatar.png', 2, -1, NULL, '8974', '1736313978', '$2y$12$ehxKxdO8Zi/IXPsEm9AsiumW9RQtD21FS3IHSauSlmR0648MgTfyi', '2025-01-08 01:54:25', NULL, '1wAYYJT7ustgxdV9qDB1OwNflQqFgBbetHz3EB2EUKhgXeSH8iCmY5PIx8na', 132, 1, 0, 0, 0, 2, 2, 1, NULL, '2025-03-03 10:05:30', '2025-03-03 06:35:30'),
(133, '09151672206', 'محمد هادی', 'امیری', 2, 1, 0, '0732006171', '103816', NULL, NULL, NULL, '980170000000302301890003', NULL, 102, 11, 'سرآسیاب شاندیز', 'روستای سرآسیاب خیابان بهشتی 6  مسجد صاحب الزمان عج', 11, 102, 'شاندیز سرآسیاب بهشتی 6 مسجد صاحب الزمان عج', '9185130121', 'avatar.png', 3, -1, NULL, '4330', '1736318211', '$2y$12$44DsUn4dJBGwLZOO1sCGT.l515Bl4NZMssyayBxHuMpV70uahBts6', '2025-01-08 03:05:27', NULL, 'JQgZxdu7UrAmSzTOnKC3eCV6UNXIEe7gLtPMU1gWJjrA6L2s2tKcq7VhP9KH', 133, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-02-25 12:11:30', '2025-02-25 08:41:30'),
(134, '09366201700', 'عباس', 'خدری', 2, 1, 0, '4120174255', '۱۹۹۹۰۵', '۳۰۸۴', NULL, NULL, '020600660170012917287001', NULL, 157, 26, 'خرم آباد', NULL, 26, NULL, 'قاضی آباد بین کوچه اول و دوم قاضی آباد کوچه ۱۲ متری برق جنب آسیاب گبری', '6818833919', 'image94381738918814.jpg', 3, 1, '5', '1448', '1736319975', '$2y$12$Cbe5dpiXDuT1RuglEDx0l.vCDAp6kVzDyT77ZIyGRxf32/2Q3Oxcy', '2025-01-08 03:34:25', NULL, '8gBvQobL1wYShZoSGolVV590gGfUID7Vb8Jaro5TZtHL9IWAtXlk5Y2xlQmc', 11, 1, 1, 0, 0, 2, 2, 1, NULL, '2025-03-03 10:04:21', '2025-03-03 06:34:21'),
(135, '09139575423', 'صغری', 'رازنهان', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6574', '1736343224', '$2y$12$Xa6qljAZ4Oliu4GDy1uVm.Q.hWASmTkZLhDCE2rcBwOSKi.xtPbhK', '2025-01-08 10:02:01', NULL, 'TCEx7f0xVywwnYmbd8erDlykd1J021qWstJEjls2SM3RGZEQVWBB1edac1W4', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-09 08:50:55', '2025-01-09 05:20:55'),
(136, '09374129940', 'روح الله', 'حیدری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7891', '1736357164', '$2y$12$UcSuaoEGd4O/OV/bLCGxIeTFmJPfT2U.j7ecW1gWfQj2GXyY8kypq', '2025-02-10 10:35:17', NULL, 'zieex0y2s2arhGzRYTiASTogmZ2WgZqFySrHxd74KPJ0xPjRbMrK84UH0TOr', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-02-10 14:18:24', '2025-02-10 14:18:24'),
(137, '09108417355', 'الهه', 'قهرمانیان', 2, 2, 0, '0016194764', '404907', NULL, NULL, NULL, '670620000000201335343001', NULL, 336, 5, NULL, NULL, 8, 126, 'کرج عظیمیه میدان اسبی بلوار استقلال شمالی انتهای کوچه الهام شهید مختاری پلاک 36 واحد 8', NULL, 'avatar.png', 2, -1, NULL, '3650', '1736361602', '$2y$12$IbtR8OzfPf53SBuGNKGnuuY66siCLAl4kWH6LnbxK6qXDPRnpd9RO', '2025-02-11 12:26:00', NULL, '2XtlQHvqoM2HM09guDALA5Y9uSCQnjsuaEeOlwTPSjJARdfn6IBUcHr9SO73', 137, 1, 0, 0, 0, 2, 0, 1, NULL, '2025-02-25 13:30:59', '2025-02-25 10:00:59'),
(138, '09187248414', 'محمد', 'عزیزی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8128', '1736403110', '$2y$12$GIL79/zVJpj3Xx9FdCcAMO9/GKEFUPhHmc2DxH4kMn3cUIlJ2/L/a', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, '2025-02-11 08:57:19', '2025-02-11 12:27:19', '2025-02-11 08:57:19'),
(139, '09188124541', 'مریم', 'پلمه', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5354', '1736490351', '$2y$12$/8bDIoQXHmKdibdIKgvIF.OmQDsSFj8EOedzPAJBf4yO8UJQbHf5a', '2025-01-10 02:53:58', NULL, 'PuWiCW5kW1fOtx1zvPjQAH1cjqKtYneiYfYPNH5GAJ3aIa4gQgJ4l1TYRCIC', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-01-12 08:02:36', '2025-01-12 04:32:36'),
(140, '09019421609', 'امین', 'نواصری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8248', '1736495821', '$2y$12$QeD7ZxJZ2By3nol4ndSi0uTsjunCHuQ.vNuy9br/FEXPqH1hKuNcK', '2025-01-10 04:25:09', NULL, 'hyW1FWFyITISc6OCAvOykVYWgDnGQtZUqzbOFU4izQ0sgLsquipl23QAlqkU', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-01-10 07:55:56', '2025-01-10 04:25:56'),
(141, '09184105607', 'میترا', 'حلیمی مبصر', 2, 2, 0, '3980155628', '341571', '62979', '3980155625', NULL, '480170000000351670419009', '6037997362766538', 335, 30, 'کبودراهنگ', 'نه', 30, 335, 'کبودراهنگ .پایگاه هوایی شهید نوژه', '6551163135', 'image28191736615322.jpg', 2, -1, NULL, '4397', '1736614633', '$2y$12$Q9ieR.wfxRAnI3fxas8eFet.vrvul0XjOObTasfXyafORjWWH/huK', '2025-01-11 13:25:21', NULL, 'wdpWIAxCjf4jfJSkotAROhuM7QTboaIsRdUUXFlX06UnCEh1i388inwntbpg', 141, 1, 1, 1, 0, 3, 2, 1, NULL, '2025-02-25 12:47:54', '2025-02-25 09:17:54'),
(142, '09360911696', 'مهدی', 'امیری', 2, 1, 1, '0001155342', '۲۰۱۱۸۰', NULL, NULL, NULL, '740570320180014798427101', '5022291304129511', 327, 19, NULL, NULL, 19, 327, 'قم  بلوار دل آذر  کوچه ۶ فرعی ۹ پلاک ۷', NULL, 'avatar.pngimage84891739200044.jpg', 4, -1, NULL, '9587', '1736764995', '$2y$12$ZGyn8JKjGfAPfzc9OFLcwOA5qd5lgetkeHXMtAzs4GEYnCTYCrIZO', '2025-01-13 07:11:25', NULL, 'KujbjFBSe1kmNJ0WmWt4SwCjHGLqpzGIU2XvhPWd9cdbFkaDrc7cXWmtsHOh', 142, 1, 0, 0, 0, 1, 2, 1, NULL, '2025-03-03 09:56:26', '2025-03-03 06:26:26'),
(143, '09371108884', 'ملیحه', 'رموک', 2, 2, 0, '0053699017', '۳۰۱۴۱۷', '272052', NULL, NULL, '0170000000343468970001', NULL, 304, 5, 'فردیس', 'فردیس', 5, 304, 'فردیس فلکه چهارم خیابان چهلم شرقی مدرسه علمیه تخصصی کوثر', '3175975648', 'image93741737140212.jpg', 2, -1, NULL, '2479', '1737139599', '$2y$12$vhcNWq/VyFlnGqhevAlKhOCz/NBMHMZl7dyjAQk.1l5SGhLtngYIq', '2025-01-17 15:14:46', NULL, 'UCazfe8gcboKXp544gsU8gl3i0L1Zn3PpnLgDuLoYHfopbUbhFxDfYfdMz2X', 143, 1, 1, 0, 0, 0, 0, 1, NULL, '2025-01-17 18:56:56', '2025-01-17 15:26:56'),
(144, '09149816172', 'محمد', 'جوانمرد', 2, 1, 0, '5079945648', NULL, NULL, NULL, NULL, '600170000000104365103007', '6037997401119988', 293, 1, NULL, NULL, 1, 293, 'عجب شیر،شهرک پرواز ، اول فاز۲', NULL, 'image75221739180588.jpg', 1, -1, NULL, '1629', '1737139644', '$2y$12$vgZ.U.vuOACT10uolnYp2OkKIQGgq9Xs0.3yYXP/6LpGVNTkcpP5.', '2025-01-17 15:15:30', NULL, 'p47MvBHnr0MZif6zukx2XUXYDrMVoeUEA3EbyNx4mRDCiw3bED9rXoZfO1ZC', 144, 0, 0, 0, 0, 3, 1, 1, NULL, '2025-03-10 12:29:39', '2025-03-10 08:59:39'),
(145, '09037323440', 'فاطمه', 'آقاویردی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5808', '1737139697', '$2y$12$sbdz7XadtL416p7k.rShxOU5pj7RJOsU/qpKpwBuq1havodovrz8K', '2025-01-17 15:16:50', NULL, 'Qq5uy3rG5CG13ZoY2HO7QyxWCzaQpGIEQOzCjuJQGsY5dG7cA4QPGg0Qu5fM', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 18:46:50', '2025-01-17 18:46:50'),
(146, '09178813118', 'بتول', 'زارعی', 2, 2, 0, '2500106993', '309173', '61958', NULL, NULL, '690170000000215383195003', '6037997272069643', 375, 17, 'لامرد', 'ده‌شیخ', 17, 375, NULL, '7434374614', 'avatar.pngimage61051739938987.jpg', 2, -1, NULL, '5592', '1737139925', '$2y$12$ienwtAM2Kdi5r3vFNFLcvuS.ld8p5Ab0xiyEmxij/q7BUp.q0H7nC', '2025-01-17 15:20:25', NULL, 'IZkblq0bIxN1Fyr2kijk7yRId06G2wKHfNeK21iSq5Lji24OeMLEK676lctk', 146, 1, 1, 0, 0, 0, 1, 1, NULL, '2025-02-19 04:23:15', '2025-02-19 00:53:15'),
(147, '09106125818', 'یاسر', 'عبدی وند', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9410', '1737140174', '$2y$12$OqzLOL1izKr4bm6KrCtWseQAoG57VQ6XDLCZCUWZtPx2A3JrJ0o6m', '2025-01-17 15:24:39', NULL, 'g3mtzJiDvzHiDH2uRCckLzeuYkAvzkTWdXpObq0ODslqpQ0NgwXqKgLeuYMP', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 18:54:39', '2025-01-17 18:54:39'),
(148, '09397883044', 'بهمن', 'باقری مسک', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4967', '1737140224', '$2y$12$pG.ezT0mLdMCRVnUr/164Oh8RNc9fvH1BzDqYmVlAyx3hHJiHWHzS', '2025-02-15 13:19:54', NULL, '2bkfXRQoije98bpclc9zQBfJCp0iLpgNbOqqkHaCwwsb4EzjIeqzng0JPaq7', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-15 16:51:22', '2025-02-15 16:51:22'),
(149, '09137009100', 'سیدابوالقاسم', 'افضلی بروجنی', 2, 1, 0, '4640138458', NULL, NULL, NULL, NULL, '070600321570001298198001', '6063731005536256', 72, 9, 'سفیددشت', NULL, 9, 72, NULL, NULL, 'avatar.pngimage78521739107834.png', 4, -1, NULL, '7635', '1737140629', '$2y$12$ahhf980DZMXpZJFMT4RQEuRZHoQcO./twU9q7A.6Ew75FbvtcHVFG', '2025-02-15 08:00:07', NULL, 'sJRuFPlCBDiZoMmwDmzYtOD0FZxM9iJiKmcvV6k0LSppxCihh6eMzlYEngcW', 149, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-02-25 13:23:53', '2025-02-25 09:53:53'),
(150, '09389376974', 'مریم', 'رنجبر', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4047', '1737140786', '$2y$12$NmPZ0rwcb4TxmqhGyv1x6e9JfDRtM64oszmo7iTEd9q2LOW3D4J8.', '2025-01-17 15:34:52', NULL, '9k7b5XYpUPybNBGh5bEFaB90sANkZ1sjNaNgdfhH3rP6oBJ1rDRTPhfU6On6', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-02-13 14:23:00', '2025-02-13 10:53:00'),
(151, '09010282779', 'بتول', 'فلاح رجب زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3800', '1737140853', '$2y$12$BR8JfZ8c7oUuhQBbD/WRUuDCLGefmJ46XQ6WUIj/gWL6xSib1j4tS', '2025-01-17 15:36:11', NULL, 'rYKvT4i9xS9SUfSpGtHfJrbd3iz6k81jponj2KR3BVmOGFV2xVe1Q842wRYc', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 19:06:11', '2025-01-17 19:06:11'),
(152, '09140587412', 'سمیرا', 'برجی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4207', '1739734302', '$2y$12$K5vT1YoUoRpMi5jirZJi9.yzni19EAPeU5ChRGTDUOWzneaCht2Vm', '2025-02-16 16:00:29', NULL, 'QuuvaNUNHG2idyP81nmUMReVak5st1RyKjZ4L95TpeBL5ZC1fJDsTwhGZuBB', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-16 19:30:29', '2025-02-16 16:00:29'),
(153, '09183153089', 'علی اکبر', 'سهرابی', 2, 1, 0, '3872251260', '۳۰۵۸۲', NULL, '۱۳۹۱۴۵۷۴۸', NULL, '580170000000300154586009', '6037997515053842', 300, 30, 'فامنین', 'امیراباد', 30, 300, 'همدان شهرستان فامنین روستای امیراباد', '۶۵۶۱۱۵۸۶۰۱', 'image61641739197589.jpg', 2, -1, NULL, '2432', '1737141643', '$2y$12$h7iyPD5V0VxgpYePgg.F6.vYiGsW3iyO8Xr8g7aQNNAEZV6NubLcq', '2025-03-09 16:12:44', NULL, NULL, 153, 1, 0, 1, 0, 1, 1, 1, NULL, '2025-03-09 19:42:44', '2025-03-09 16:12:44'),
(154, '09137586962', 'محبوبه', 'قلندری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1783', '1737141701', '$2y$12$XUzORdPfh9oxPTNrMjdUieLcD9JqNuJTWO.1xC/aAckchiSxcVlmG', '2025-01-17 15:50:08', NULL, 'EPmNaIbtfwAR6Oo8dzt9cHQNWrfdErhEgPuM9GKYsHT1iDpdBlzXRvEZcmlj', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-02-15 20:08:57', '2025-02-15 16:38:57'),
(155, '09147148527', 'اعظم', 'باقری', 2, 2, 0, '2909680924', '236893', NULL, NULL, NULL, '0314412304001', NULL, 423, 2, 'نقده', 'بخش محمدیار', 2, 423, 'آذربایجان غربی شهرستان نقدهذبخش محمدیار خیایان شهید نیکخواه منزل باقری', '5766147331', 'avatar.png', 3, -1, NULL, '3243', '1737141784', '$2y$12$.AQCUQUoZXO3F2TB5UDVo./bRFxdFJDPgOIKkqhAIvtuzeHeHLVbW', '2025-01-17 15:51:32', NULL, 'ZzaoBeQwOCXe1uATvR3Ge9gwTPQ6QQtHf91g7jDK65AqH3b5j41eR4lEqQZ1', 155, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 19:36:44', '2025-01-17 16:06:44'),
(156, '09179638653', 'مریم', 'رحیم زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6485', '1737142428', '$2y$12$Tk4EjWFQZMbXv4G9zEXlXuZHnY8cIZsZKBIHxa9WmWsEe1SF3YZZC', '2025-01-17 16:02:14', NULL, 'CvLcqeRUvBfQTT31WFgEzTdsXvXvemCXovVZHgJy9VznZUn0k79fBAiBffD8', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 19:32:14', '2025-01-17 19:32:14'),
(157, '09162094456', 'نصرت', 'آرمند جرجندی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6257', '1737142538', '$2y$12$OXUH5/f0M6nyZ4NMh.ooFO6eewZd6HVZ4m90efgFaYsNR7GZePXgW', '2025-01-17 16:03:47', NULL, '7qZuWXXybXaU6ajb3PU09mGepMExnS81BA1GBzEZWYtMkoAyqYZLuhu4P0SI', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 19:33:47', '2025-01-17 19:33:47'),
(158, '09139488332', 'زینب', 'امیری هنزایی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8285', '1737143361', '$2y$12$2ZCbNCbtpK1.4CVV5.TZheCIoKVzthDT1skRoxgQ9jypYKEGDztzC', '2025-03-11 02:15:25', NULL, 'OCPCWJ9rgpAl24ETrR6zNxAnCXzDH12TFsOfkK0J1qg8xZAOX0wt82TESuSp', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-03-11 05:45:25', '2025-03-11 02:15:25'),
(159, '09132621784', 'روح الله', 'عباسی', 2, 1, 0, '1262493064', '۶۶۳۷۰', '۳۲۱۶۴', '۳۰۴۱۹۰۰۵۳', NULL, '750170000000307007209000', '6037997553043804', 7, 4, 'ابوزیدآباد', 'حسين آباد کویر', 4, 7, 'اصفهان شهرستان آران وبیدگل شهر ابوزیدآباد دهستان حسین آباد کویر  روبروی حرم مطهر شهدای گمنام', '۸۷۴۹۱۵۵۹۳۶', 'image96501738425245.jpg', 2, 1, '5', '9586', '1737143393', 'kFRFsCzTY6cjiwBhZPZsq0YWFaOj4TKqJeC1HsaTHHU0Pw0CI2dM3gsDYJAw', '2025-02-15 18:18:55', NULL, 'kFRFsCzTY6cjiwBhZPZsq0YWFaOj4TKqJeC1HsaTHHU0Pw0CI2dM3gsDYJAw', 1, 1, 1, 1, 0, 1, 1, 1, NULL, '2025-03-01 11:18:45', '2025-03-01 07:48:45'),
(160, '09148583320', 'فاطمه', 'بیرام زاده چیانه', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5042', '1737144125', '$2y$12$RGw/PzXNRvRx5KXj/lbsw.5wWKtFpHxLmewScsHu8PvBUZmCQ8gBK', '2025-01-17 16:32:21', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 20:02:21', '2025-01-17 16:32:21'),
(161, '09939118400', 'سوده', 'صادقی جعفری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1335', '1737144892', '$2y$12$FdRtN2IMCKf62q9bTiB7YuhI4xefFoUo98G0tk0vTZdvl3UwjZfeK', '2025-01-17 16:43:18', NULL, 'L9MreFt8inoXbU5zwmzMXoaLBSTnVNtKXplP7kQiXyu54jRABzdQzw4nt0e1', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-17 20:13:18', '2025-01-17 20:13:18'),
(162, '09393085119', 'خدیجه', 'سرحدی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3425', '1737147613', '$2y$12$T3FeY82RXef1ACbMzsHFJ.LKmHQFMY34PjspOHwWTc2KKmlhrNyuC', '2025-02-17 16:20:25', NULL, '3jHBm1KwaGjQOrel92PqmXqDGIbj0fx5BBITPZDiG6UzTlVOwvK1IhZNH3Jm', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-17 19:50:25', '2025-02-17 16:20:25'),
(163, '09101573253', 'لطف الله', 'وفاعهد', 2, 1, 0, '3369838346', '71567', NULL, NULL, NULL, '1070170000000302491628006', '6037991703188098', 244, 22, NULL, NULL, 22, 244, NULL, NULL, 'image76381739279133.png', 3, -1, NULL, '4628', '1739279142', '$2y$12$5EEFu.mhJnrs1zK41qSr3OWzRuW/AHo031bRMlJE1PQIpX2i9QzL6', '2025-02-11 09:33:52', NULL, '7p0lRoPMd1TxAaha6NwFxvIDy0t2cBdr50GNALU5OcI0Rk5YF84GuLQGEn3O', 163, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-02 12:31:27', '2025-03-02 09:01:27'),
(164, '09902865405', 'فریده', 'حسنی', 2, 2, 0, '2938664966', '۹۰۳۶۲', NULL, NULL, NULL, '560170000000345210140004', '6037991733412450', 271, 2, 'شاهین دژ', NULL, 2, 271, 'آذربایجان غربی ,شهرستان شاهین دژ،محله قزلناو  انتهای خیابان شهید واحدی  جنب بهداشت  منزل سلطانعلی ارم. فریده حسنی', NULL, 'avatar.pngimage40251739160832.jpg', 2, -1, NULL, '3561', '1737151733', '$2y$12$WtKlOEqWkBlzLps39XdJlOdoKcAsv2a2vq.FmuyCV97KANZqrzu32', '2025-01-17 18:37:08', NULL, 'Pyw6iYG6UttfFy8On7ydYHhj8CoPVLYNFQfrClV5u7oFZMNbaQZUVx2CG206', 164, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-15 08:24:24', '2025-02-15 04:54:24'),
(165, '09178829591', 'زهرا', 'منفرد', 2, 2, 0, '5159806644', '۴۱۴۷۰۸', '۹۹۱۲۰۲۳۹۲۵', '۹۹۱۲۰۲۳۹۲۵', NULL, '780170000000224481379002', '6037997476457404', NULL, 17, 'اشکنان', NULL, 17, NULL, 'استان فارس شهرستان لامرد شهر اشکنان خیابان جماران جنب حسینیه جماران', '۷۴۳۹۱۱۹۶۵۷', 'avatar.pngimage10281739192884.jpg', 2, -1, NULL, '5646', '1737169759', '$2y$12$bd4hjkVD0wN36XZcN42mI.kqWWrR7C7fXStjRMrg2cAJ5q8FCi.D6', '2025-01-17 23:37:45', NULL, 'skdkRERZrXbsIGd6BwFTIUpT938H51BvVZ4DxderelP22egf8opjN6uD3QEc', 165, 1, 1, 1, 0, 1, 1, 1, NULL, '2025-02-10 13:13:59', '2025-02-10 09:43:59'),
(166, '09036091920', 'سید امیر', 'موسوی', 2, 1, 0, '1230987654', NULL, NULL, NULL, NULL, '1266666666666666', '23454444444444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', 1, 0, '0', '2533', '1737171970', '$2y$12$QwQWuVpoStj57JJ8SfMiIecu31kWGiCVQOh0pSNs8oYjaMP9tzE32', '2025-01-18 00:18:38', NULL, NULL, 11, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-11 10:04:27', '2025-02-11 06:34:27'),
(167, '09158360873', 'مرتضی', 'ایزدی یزدان آبادی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8588', '1737175134', '$2y$12$9j0/SWMTQy.QTb2xIz1CYuwBjRitzaepP9KE0ruuDUWGGn8lJZp2q', '2025-01-18 01:07:09', NULL, 'Q3TORwODAGtBWHeoZY404Cc7SoOhXmv4Deu2Z6pHBLTzAaS2uoXbUWDVaZ2e', NULL, 0, 0, 0, 0, 0, 0, 1, '2025-02-07 16:08:15', '2025-02-07 19:38:15', '2025-02-07 16:08:15'),
(168, '09331284715', 'اعظم', 'آذرنیوه', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7313', '1737177090', '$2y$12$WTGIIWAWAtzBRR0OAtNqVu5sLkMvahIfsY0cV7Qu1zWUUfcn9qGna', '2025-01-18 01:39:34', NULL, 'gOJHyWfzZAzSTfsCet3It5XttdPQAZitLgYRnxDeGHXYPL2PlPEEfSAnOXbo', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-18 05:09:34', '2025-01-18 05:09:34'),
(169, '09187248413', 'محمد', 'عزیزی', 2, 1, 0, '3256813968', '۹۶۶۲۳', NULL, '139311027689', NULL, '1601700000003260047003', '0303260047003', 339, 22, 'کرمانشاه', 'مسکن مهرتلاش', 22, 339, 'کرمانشاه شهرک دانش مسکن مهرتلاش', '6715938779', 'avatar.pngimage35401738774651.jpgvideo28511739281074.mp4', 3, -1, NULL, '3108', '1737189342', '$2y$12$h2Fj5N62Lvsr0kQ3tCM0uOX7rF267vAFRiwVMnazNT2QhFg0cGjeu', '2025-03-09 09:46:44', NULL, 'waPyXFaKRjVqX0Bs8Ie3cpX4bRlxQJMmA124ZQr8c8zCY6GTa89WYtdM9YjN', 169, 1, 0, 1, 0, 1, 1, 1, NULL, '2025-03-09 13:16:44', '2025-03-09 09:46:44'),
(170, '09118645607', 'طاهره', 'کرمانی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1703', '1737302105', '$2y$12$VzPzTUg3XSJxLr69JZ1UPOYSav1CbmEgYFqO4nqRgw7IKLFB3lKli', '2025-01-19 12:23:36', NULL, 'ASpovLxqv06Oz23jeBeAzWWtoUdFmW1Ap2pBjqq6DX3JgNZaP75eKyEoOsJr', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-19 15:53:36', '2025-01-19 15:53:36'),
(171, '09176745975', 'نجیمه', 'رضایی', 2, 2, 0, '2500049779', '178548', NULL, NULL, NULL, '260170000000302401604001', '6037997484424479', 406, 17, NULL, NULL, 17, 406, 'فارس، شهرستان مهر، شهرگله دار', '7445175573', 'image18361739650108.jpg', 3, -1, NULL, '9384', '1737318343', '$2y$12$Wxsa.I5Q4C3FIN8JyMKApOdjKrCvZVDm5XYnf22Hsq3nWtcwrQ0EK', '2025-01-19 16:54:07', NULL, 'VXkzcS85hB6o40CvWf3z0d3usN9Op0g6cvxnoyVhrXgNBxfsxzbhkmjLxe1B', 171, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-15 20:13:41', '2025-02-15 16:43:41'),
(172, '09139445701', 'سلیمه', 'شهیکی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3245', '1737347401', '$2y$12$hGvRB1HK95U5xkns6nRhqOR/KD3BVvLuRs3j41vFVSoWAGFseFyFm', '2025-01-20 00:58:24', NULL, 'tY8T6NtZQoURHcYhhc6bt5OBHheoXYEgl0fR3trihvhIUu1qZ6qqAuobInNp', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-01-20 04:28:24', '2025-01-20 04:28:24'),
(173, '09116154056', 'الیاس', 'آقازاده', 2, 1, 0, '2660199892', '249996', NULL, NULL, NULL, '060170000000337657281009', '6037997582345709', 327, 19, NULL, NULL, 25, 312, NULL, NULL, 'avatar.png', 3, -1, NULL, '4492', '1737355611', '$2y$12$D5Ea/eXTT.c2GPL8Sbqqj.KTPNg78Ol6FN8WiaZ6lPva94irzPpou', '2025-01-20 03:14:55', NULL, 'n2qB3Q6USsgtNCVSGVFJHGCgrXOV4xOSpF0HQPG8OVD9SNJ9oLWx909WWbv7', 173, 1, 0, 0, 0, 1, 0, 1, NULL, '2025-03-01 12:44:03', '2025-03-01 09:14:03'),
(174, '09168618006', 'پیمان', 'اختر', 2, 1, 0, '4190300489', '225391', NULL, NULL, NULL, '680170000000323098889005', '6037998154623663', 182, 6, 'دره شهر', 'اسدآباد سفلی', 26, 352, 'ایلام در شهر روستای اسدآباد سفلی', '6844119356', 'image92991737369616.jpg', 3, -1, NULL, '2920', '1739358761', '$2y$12$PpW6BkCoSyRS.b5fmzNCOOdUrMLMeHt6An1UpbQh9qqnmMie28ZaS', '2025-02-12 07:41:21', NULL, 'TuP7MtSPc17ExBA7cqfIdZ7BXpfYLI6vtRvsLbv1I2FfDu2wwKb81QVNIGUT', 174, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 11:57:32', '2025-03-01 08:27:32'),
(175, '09145519622', 'فاطمه', 'محمودتاش', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3982', '1737369521', '$2y$12$0W2Zhp3REL8mAVWFLW4sluvTqu2JEYQfcsSe9zq81g0KUjHJHdklS', '2025-01-20 07:07:59', NULL, '4A4JXp1GfXm73mLggKk94js4uUriVk5uHughPHYnmOy37FFJ1Ni3ZAC7xFsT', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 08:58:23', '2025-02-01 05:28:23'),
(176, '09192888162', 'رقیه', 'عبدلی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1158', '1737847604', '$2y$12$nhDYPS7Z/oI0nio1GjnbR.SaxNBtXfW6OEGjerspwoniqWenQRuAy', '2025-01-25 19:54:56', NULL, 'cOtG1kpb01hdI1Evmc4xfqf4MlxVRdt5ClsKzwHYbkNNMHehuDCWEDuB6tIN', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-08 11:25:52', '2025-02-08 07:55:52'),
(177, '09158543150', 'علی', 'بامری', 2, 1, 0, '3580701150', '301031', NULL, NULL, NULL, '680170000000339028714005', '6037997364306002', 189, 16, NULL, NULL, 16, 189, NULL, NULL, 'avatar.pngimage61031739204911.heic', 2, -1, NULL, '3496', '1738397034', '$2y$12$.1vGr1T16wMowx2VGPO7Ue1XpsM/GFA.MacyhhnMAqE/onv/eiITC', '2025-02-01 04:32:02', NULL, 'ub2cH7J7w42exqctra0ZNZXuCO81WY5XJuA0mp5VJa0XOoJpxja5BcNcHHGB', 177, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 12:50:30', '2025-03-01 09:20:30'),
(178, '09136517762', 'زهرا', 'بیاضی پور رفسنجانی زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3025', '1738397174', '$2y$12$EFQtCkqf1RbHJ7pqFlSHze1B.F9LIZhs148dWCCOmDxPqeaP174nu', '2025-02-01 04:34:35', NULL, 'NnwFUtEi5lIyExYU8ByEslZCNWE44jB39wFTWsO00yzWzEGiExvJlg9hi8aa', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-01 08:04:35', '2025-02-01 08:04:35'),
(179, '09103416470', 'شیوا', 'جزینی زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6451', '1738399470', '$2y$12$GPDlDc6yPlo/cl1XqWs.Vu1cAlliG6P5J7Bw3ell8wBHAt5vFahOi', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-01 08:42:25', '2025-02-01 05:12:25'),
(180, '09025264542', 'شیوا', 'جزینی زاده', 2, 2, 0, '3100263626', '۳۵۶۵۴۳', '۴۵۹۸۴۲', '۸۶۹۹۸۱۸', NULL, '920170000000349948203005', '6037997320248553', NULL, NULL, 'بم', 'امیراباد', NULL, NULL, 'بم میدان امام حسین بلوار مالک اشتر کوچه ۱۸ پلاک ۱۲', '۷۶۶۱۳۵۷۳۶۶', 'image85951739425021.jpg', 2, -1, NULL, '8439', '1739424374', '$2y$12$1TmVqV53p1tzOqCOU0STdO1kByBpsYjoq.e/AehPjN1jD4vnd.SY2', '2025-02-13 01:54:58', NULL, 'BsMcn8eTYhwkCCucR3u0i5TApb419wMueZTtgmNodoioFj1cwHsa2llcePJK', 180, 1, 1, 1, 0, 1, 1, 1, NULL, '2025-02-13 05:44:12', '2025-02-13 02:14:12'),
(181, '09158790527', 'راضیه', 'نیکبخت', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9652', '1738402701', '$2y$12$kVGFud0Tk3SryXSqVMh4Y.uBUUrEGuqKT8oulQCts6nZpk3oY9yoW', '2025-02-01 06:06:29', NULL, 'XA1Ue9mQDAeFdlkZBNg2M3iVn3D2sCDR5V4n9iTmqZM7W0BUnb1CXUnkESJ1', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-01 09:37:21', '2025-02-01 06:07:21'),
(182, '09164156254', 'محمد', 'الهیاری', 2, 1, 0, '2560087510', '۱۸۷۴۶۷', NULL, '۲۵۶۰۰۸۷۵۱۰', NULL, '210170000000305803135004', '6037997520559114', 309, 17, 'فسا', 'دستجه کوچه ۲۷مجتمع خیریه شهید یوسفیان', 17, 309, 'فسا روستای دستجه کوچه۲۷ مجتمع خیریه شهید یوسفیان', '7461614488', 'image67111738414547.png', 3, -1, NULL, '8875', '1738405230', '$2y$12$KlpgcNDI4pZNAPFO08yx1eV7uIUIv18Xu3FomC6OumjNpaETbeC5O', '2025-02-18 06:12:56', NULL, '1D9QBKU72tFdz7wAl0yVKuyprqme5BY2QgY6RV00naNAi3w4qMFNSQgECeko', 182, 1, 0, 1, 0, 1, 1, 1, NULL, '2025-02-25 13:26:34', '2025-02-25 09:56:34'),
(183, '09174867513', 'سمانه', 'رئیسی', 2, 2, 0, '2400030111', '۲۶۵۵۵۹', NULL, NULL, NULL, '770170000000332992305000', '6037998201751996', 2, 17, 'آباده', '.', 17, 2, NULL, '۷۳۹۱۹۳۵۸۴۳', 'avatar.png', 2, -1, NULL, '3413', '1738405238', '$2y$12$aQShmvy3/bag3vG7USBIIujjtM3/LR.EHMZv1fOx0LuDt6L1AOhue', '2025-02-01 06:48:48', NULL, 'bBdVv3nVuoL46cl406z4QiVw5q9FSnfPpgqOwzIV1Fs6z0ZP4TqBqRg9rkxS', 183, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 12:24:16', '2025-02-09 08:54:16'),
(184, '09368503150', 'طاهره', 'عنبری سیمکانی', 2, 2, 0, '2410277381', '81194', NULL, NULL, NULL, '730170000000304082505000', '6037998149085226', 392, 17, 'مرودشت', NULL, 17, 392, 'استان فارس\nشهرستان مرودشت\nخیابان شصت متری\nبلوارامام علی علیه السلام\nکوچه بهمن', '7371755784', 'image20191739167024.jpg', 2, -1, NULL, '7637', '1738407998', '$2y$12$EQ5OihjXWOD6O0wTmTzWZOd6hraX2fZXZEMwvWcFX4Q4sgzEoT3L6', '2025-02-01 07:35:01', NULL, '04OBuNqqClhWZjM5Aavn6dRvhmO34UhbxuFjZWpNb2kHbskD0Y8Sm5vfISP3', 184, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 13:54:06', '2025-02-25 10:24:06'),
(185, '09186730713', 'فرزانه', 'سوری', 2, 2, 0, '3979835601', '۱۶۵۷۲۰', NULL, '۲۲۴۰۴۰۰۰۸', NULL, '0348040604009', '6037997142938910', 125, 30, 'تویسرکان', NULL, 30, 125, 'میدان هلال احمر.کوچه گل رز', '۶۵۸۱۷۴۵۵۰۳', 'image72701739741485.jpgimage45591739741570.jpg', 2, -1, NULL, '7888', '1738408976', '$2y$12$v4i9KIvWL5uVr4WSsunFAObGAIzrfiCwCgCFgiBRcVUXo34wKj.4.', '2025-02-16 17:49:09', NULL, '2cOXBSf8RmXcyoZFAEXec9O6g4ztSQXZtxLFK95SLdVhXlzdqwC12DGGU4ec', 185, 1, 0, 1, 0, 1, 1, 1, NULL, '2025-02-16 21:36:36', '2025-02-16 18:06:36'),
(186, '09153188130', 'سید خداداد', 'صادقی', 2, 1, 1, NULL, '101919', '50396', NULL, NULL, '040170000000306120028005', NULL, 396, 11, 'مشهد', NULL, 11, 396, 'مشهد شهرک شهید رجایی-حر۲۸ اروند ۹پلاک 24 طبقه سوم', NULL, 'image48311738412640.jpeg', 3, -1, NULL, '3703', '1738412209', '$2y$12$HO8Q4tzj7l4JFUJzdBO5pu8eMzyNucZD0R1T7yGrN/fzIKJ/CUauC', '2025-02-15 07:52:08', NULL, NULL, 186, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-02 11:54:08', '2025-03-02 08:24:08'),
(187, '09373317195', 'مرضیه', 'نجفیان نجف آبادی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7385', '1738413426', '$2y$12$B3BMhRfvyKfT7F9wB/aLkuX6KhLZ.i059o5UISu6.jdomLgCdCwhy', '2025-02-01 09:06:25', NULL, 'NXI2jtjGuJpaRCWUvezcVzn5hNPrE6DJoRmJTzPP37w3Guowa6jg9MqpA7tJ', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-01 12:36:25', '2025-02-01 09:06:25'),
(188, '09136358095', 'مهری', 'زابلی غضنفر ابادی', 2, 2, 0, '3111566587', '184716', NULL, NULL, NULL, '250170000000307997182006', '6037997502521405', 222, 21, 'گنبکی', 'شلتوک آباد', 21, 222, 'روستای شلتوک آباد گنبکی', NULL, 'avatar.png', 2, -1, NULL, '3123', '1738416532', '$2y$12$AEwXfml0.Mb7ghtW7ibZx.lh411qSaGXM3x.l1FuMf7Jfq7SSk6Zu', '2025-02-18 04:10:30', NULL, 'Atx3j53vHMCS8h85xP8xdYdAvmNoyMqZfELgAFocKDlIkQuds2D04vw06W61', 188, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-02 11:28:09', '2025-03-02 07:58:09'),
(189, '09176433522', 'روح الله', 'هوشمندی', 2, 1, 0, '2391509618', '40743', NULL, '0000', NULL, '090210000001000212541378', '6277601341120796', 401, 17, 'خومه زار', 'شهرک هرایرز', 17, 401, 'فارس ممسنی شهرک هرایرز مسجد سید الشهداء ع', '7351417151', 'avatar.pngvideo7471739269815.mp4', 2, 1, '0', '5164', '1738424979', '$2y$12$tTpNATlEpgQU.2zFemCBIuhS/wWQarRqEKKsvlYr/krsqndUBaSti', '2025-02-01 12:17:52', NULL, '41TFtKOCgoXMFMAsgijcD9nJjDNIjW1zGJUbJK7b6Q1RGPfr7VHC0zggGRcx', 11, 1, 0, 1, 0, 1, 1, 1, NULL, '2025-03-01 11:13:31', '2025-03-01 07:43:31'),
(190, '09390646231', 'راحله', 'ترکاشوند', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4400', '1738430270', '$2y$12$TRGTxGUe2VzHsJxdItTykO6u1P4K.n4YPwIR1C.NMJAqRPxKhIHEO', '2025-02-01 13:45:57', NULL, 'nWvSsEOUSdgVYNdhFSB9F04ShD373QFMwPtBCrqHi7B0ox8TrNhkHlIKuKGo', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-02-12 05:34:41', '2025-02-12 02:04:41'),
(191, '09190487425', 'مظفر عباس', 'راجا', 2, 1, 1, NULL, '۱۵۴۶۱۲', NULL, NULL, NULL, '390180000000005390270765', '5859831011585410', NULL, 19, 'قم', 'قم', 19, 327, 'خیابان امام ک ۲ ، مجمتمع مسکونی مدینه العلم', NULL, 'avatar.pngimage6071739198833.jpg', 4, -1, NULL, '8696', '1739198420', '$2y$12$KeUB8nTAMkyD4GQ1ime.cOuDAupol8LPW83.j.CfXYSJU07iCOSF.', '2025-02-10 11:08:34', NULL, 'PwLqBCKD3sH9OK7LZzcOv3Pp2dEmOR6lRn991qdQwcSG5ebljdVpx02whzSj', 191, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 10:49:43', '2025-03-01 07:19:43'),
(192, '09039646690', 'سیده نفیسه', 'حسینی نژاد', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5657', '1738441824', '$2y$12$h/4Vk6vbBJGOYGg7S6ovhOvw5Id32CzAY8T52AiTYYsQIbpUH4TqC', '2025-02-01 16:58:49', NULL, 'gDEBUBKs8rZvqMD4UgzsHtQX4FICOiTkHyLrEF3MvnLMRtadCqhpNYqQDdZA', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-06 01:36:32', '2025-02-05 22:06:32'),
(193, '09029380978', 'سعید', 'خلیلی نیا', 2, 1, 0, '5260310985', NULL, NULL, NULL, NULL, '750170000000341489144002', NULL, 276, 13, 'شوش', 'کوی ابوذرغفاری خیابان امام', 13, 276, 'شوش کوی ابوذرغفاری  خیابان امام روبروی مسجد جامع پ۵', NULL, 'avatar.pngimage85461738448911.webp', 2, -1, NULL, '7501', '1738448621', '$2y$12$8rwo5vSIuAaCr012YeSXuOCBeThvWnd2tVIcDIMHNVjpn9mMiZSb2', '2025-02-01 18:51:53', NULL, 'W30kyC6okSbbAwE81g90AgQ7zzfw4HjewsyWyTZWW5XG7I6FHvUwBdBndSEs', 193, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 13:42:54', '2025-02-25 10:12:54'),
(194, '09903794800', 'علی', 'میکاییلی', 2, 1, 0, '2940132763', '264526', NULL, NULL, NULL, '530150001214701103896811', '5892101453130284', 122, 2, 'تکاب', NULL, 2, 122, 'مسکن مهرفرهنگیان بلوک سه واحد14', '۵۹۹۱۷۶۴۷۵۷', 'avatar.png', 2, -1, NULL, '7000', '1738465165', '$2y$12$9AUFYSG5vgiSfueeatIjFuv2ELxmI1QahLNNKsIWJSJkiw67pgZsG', '2025-02-01 23:27:36', NULL, 'yVdr2AP5PgLkuF7PsGnsV1Db6J44bM0jq3YbfFvm3Sqj9G79Xeffbxpxv0bc', 194, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 12:02:48', '2025-03-01 08:32:48'),
(195, '09159046301', 'میثم', 'نصرتی', 2, 1, 0, '0939918862', '111858', '55253', NULL, NULL, '200170000000201032223007', '6037997379177976', 396, 11, 'مشهد', NULL, 11, 396, 'قاسم آباد دکتر حسابی جنوبی ۹', '9189788796', 'image31921738475820.jpg', 4, -1, NULL, '1702', '1738475704', '$2y$12$ZfPE0wr4FvtI3m/8Rk2jTOCYxt4JamBWJyUGKO9WhSSdVp08Ep8PW', '2025-02-17 23:18:14', NULL, 'Hfx5VRIK8l6Ni0UWEhkPYRxK4iQEqeEeNxRcOOyhNC1FbctoVJfMeviLxDjS', 195, 1, 1, 0, 0, 2, 1, 1, NULL, '2025-03-01 12:43:33', '2025-03-01 09:13:33'),
(196, '09910378058', 'ثریا', 'جمشیدی', 2, 2, 0, '5360247169', '941266', '5360247169', NULL, NULL, '660170000000348899448009', NULL, 218, 21, 'جازموریان', 'حیدرآباد', 21, 218, NULL, '7889729016', 'avatar.png', 3, -1, NULL, '1324', '1738513443', '$2y$12$RAoruzK.1MgcnXaZ.LkD2.IZGelqe939QzEQUVnb2jclkbf0PtJ5K', '2025-02-02 12:52:14', NULL, 'FsXGwxnmkYfq6ECljN4VU042YkJQnC5S5N41wPaL6zBMMhbnsVoVslpivTAH', 196, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-02-12 14:11:29', '2025-02-12 10:41:29'),
(197, '09149090672', 'حسین', 'محمدپور گلشن آباد', 2, 1, 0, '1360958010', '۲۲۵۴۲۱', NULL, NULL, NULL, '320600200870011697186001', '60637311243595', 115, 1, 'تبریز', NULL, 1, 115, 'تبریز خیابان شهید شریفی شریفی ۵پلاک ۵۳', '۵۱۸۱۱۱۱۱۱۱۱۱', 'video44231739198731.mp4', 3, -1, NULL, '5713', '1738514199', '$2y$12$kkKv4LM7wsUPNagCpklBROO4cJB0QFWVXE.TIZLzyH3ZQyy3ypgJe', '2025-02-02 13:04:50', NULL, 'c34nCoLDs3aX3h9Ny2fQ0bDLGn3m3n8Qq5qlXTdRPF1cszTFKqDDWFbxOIV2', 197, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-02 11:52:47', '2025-03-02 08:22:47'),
(198, '09191519138', 'زهرا', 'محمدی - تیم فنی', 2, 2, 0, '1234567875', '345', '3453', '3535', '35345', '1234', '8769898', 327, 19, NULL, NULL, 19, 327, 'یسبسب', '983432', 'image28371739652832.jpg', 1, 1, '0', NULL, NULL, '$2y$12$BvWqAyDGS4TYsLDczPcGS.rZ6yAxcTXFHLuOpI8uT5Daexxh6urwq', '2025-02-16 07:17:29', 1, NULL, 198, 1, 1, 1, 1, 1, 1, 1, NULL, '2025-02-27 18:50:13', '2025-02-27 15:20:13'),
(199, '09158355813', 'مرتضی', 'محبی', 2, 1, 0, '3660491519', '212146', NULL, '‏‪139711084889‬‏', NULL, '120170000000335695139002', '6037997220057336', 231, 16, 'زهک', NULL, 16, 223, NULL, '9869116642', 'image47861738612683.jpg', 3, -1, NULL, '6417', '1738612649', '$2y$12$VsK6ITFn2E.4tDgVISsxlepFvKGkfmk9sD1Bf2GAx7uFCR2h1enZe', '2025-02-10 05:24:46', NULL, 'fB1kAdyw5JY2CsiXE5zGCYkO3rmOIr9QCBB2Rq1ZiKk3rNrhTsaBwKpqjv4H', 199, 1, 0, 1, 0, 1, 1, 1, NULL, '2025-02-25 14:04:45', '2025-02-25 10:34:45'),
(200, '09057581229', 'علیرضا', 'ایزدی', 2, 1, 0, '0371950813', '۳۲۱۴۹۸', NULL, NULL, NULL, '400170000000347946649002', NULL, 327, 19, 'قم', 'قم', 19, 327, 'جمهوری خ حضرت رقیه سلام الله علیها کوچه ۷پلاک۲۵', '3717866561', 'image54981738672298.jpg', 3, -1, NULL, '4777', '1738671764', '$2y$12$pFm9PZMqY3h6l48F6DrkeOx8WCqHl8E/s5osHHKratk11tl5zvu12', '2025-02-04 08:51:00', NULL, 'YzJtUqczfkPiGlHbumUTcCrk6uqVtWqGNyaBWLNHjoTpxTyyc6fJw5d4TsH4', 200, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-04 12:31:41', '2025-02-04 09:01:41'),
(201, '09149900858', 'حسین', 'واثق', 2, 1, 0, '1450752527', '۱۷۵۵۷۰', NULL, NULL, NULL, '380170000000116639328009', '6037997594849631', 103, 3, 'پارس آباد', NULL, 3, 103, NULL, NULL, 'avatar.png', 3, 1, '5', '4174', '1738677555', '$2y$12$Fp5R.N1TzjeFq2uznwJawOamv.UCrr3F5zvdIuqkdrIDHAXLr.LrW', '2025-02-04 10:27:24', NULL, '4Qw034yRz1novEBSLhWQJiEdgjTEqGLjeSMFnLh4V3aBl8Y96nMIqwlAQAUv', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 16:58:12', '2025-02-10 13:28:12'),
(202, '09127593149', 'اسماعیل', 'علی نقی ریزی', 2, 1, 0, '1170727565', '66222', '23647', NULL, '5831', '640170000000303898291007', NULL, 327, 19, NULL, NULL, 4, 378, 'قم. شهرک پردیسان. م ش باهنر. بلوک ۴ واحد۲', NULL, 'avatar.pngimage3361738678340.jpg', 3, -1, NULL, '1593', '1738677767', '$2y$12$t.j3yxAhnUay4xXcmx0YB.GRSutg37lSBt788UuafEumNYqTwLr9y', '2025-02-04 10:33:30', NULL, NULL, 202, 1, 1, 0, 1, 0, 1, 1, NULL, '2025-02-04 14:12:24', '2025-02-04 10:42:24'),
(203, '09148216267', 'یوسف', 'زارع', 2, 1, 0, '1450626041', '178066', NULL, NULL, NULL, '050170000000305737369001', '6037997586502891', 20, 3, NULL, NULL, 3, 20, 'اردبیل ، شهرک سینا ، مجتمع مهتاب ، بلوک۷ ،ط۱، و۶', NULL, 'image21391738729607.jpg', 3, -1, NULL, '4213', '1738677902', '$2y$12$ZldVqPz01a3Kt3p969P3SOFxLlOZdDbIDnjC0Xtt4qnG1Q08fMhFy', '2025-02-04 10:33:29', NULL, 'mcg2vuTlX4N3HfJim1hfHYDNeMXWijZ82FVHBugebxxx6iCJzwPWuVNjtKTH', 203, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-04 11:42:45', '2025-03-04 08:12:45');
INSERT INTO `users` (`id`, `mobile`, `firstname`, `lastname`, `role_id`, `gender_id`, `is_not_citizen`, `codemeli`, `khadamat_code`, `tablighat_office_code`, `tablighat_organization_code`, `ovghaf_code`, `bank_account_number`, `bank_cart_number`, `city_id`, `province_id`, `city`, `village`, `native_province_id`, `native_city_id`, `address`, `postal_code`, `photo`, `education_id`, `status_id`, `level_id`, `confirm_code`, `confirm_time`, `password`, `last_login`, `creator_id`, `remember_token`, `editor_id`, `has_khadamat_code`, `has_tablighat_office_code`, `has_tablighat_organization_code`, `has_ovghaf_code`, `report_count`, `agree_count`, `work_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(204, '09128535450', 'رضا', 'محمودزاده', 2, 1, 0, '1230012532', '196077', '139092404', NULL, '1230012532', '570170000000301375015001', '60379915645429063', 332, 4, 'بادرود', 'بادرود', 4, 421, 'با درود خیابان امام ره جنب اداره آبفا', '8766117651', 'image96571738678406.jpg', 4, -1, '0', '7936', '1738678272', '$2y$12$lLKuAreg3jAQTwlNzfyoTe3EbBjf0bx7DKS5kgQjiFFFLgcuXd4q2', '2025-02-04 10:39:35', NULL, 'sF92G0DgHxUljPJZJ4rvWR0rtzN5E2dU4CnDlFyYs2TlZWP7RSTpOtYhbucB', 523, 1, 1, 0, 1, 1, 1, 1, NULL, '2025-03-10 12:23:29', '2025-03-10 08:53:29'),
(205, '09132318018', 'غلامحسین', 'ملکی', 2, 1, 0, '1815612967', '۲۲۳۳۹', NULL, NULL, NULL, '800170000000101684881000', '11111111111111', 419, 4, 'نجف آباد', NULL, 4, 419, 'نجف آباد خ منتظری شمالی خ هشت بهشت خ ابوذر بن بست نور پ ۷۵', '۸۵۱۴۹۵۴۱۹۵', 'avatar.pngimage77671738688509.jpg', 2, 1, '0', '8014', '1738679365', '$2y$12$bxQ1Gzl7CjEf7muosVk7MuMMkiEbNc/QcoSTI1S4j6M92K8tyabIS', '2025-02-04 10:57:39', NULL, 'ZDXMjVK3RZDdYnjIPxpGx7Gv7FqbT4IOaGrX4LdYvDLkPdB9ZlkPtltEnGsa', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 14:17:52', '2025-02-09 10:47:52'),
(206, '09149676534', 'رسول', 'صفری', 2, 1, 0, '1450577245', '175569', NULL, NULL, NULL, '780170000000307023959003', NULL, 20, 3, NULL, NULL, 3, 20, NULL, NULL, 'image63771738685307.jpg', 2, -1, NULL, '5008', '1738684896', '$2y$12$XFqTZQxR7iU4SZGXyOgRXuhjWsqVbROujkkx4bTC3FKLV9Sd5G4.u', '2025-02-04 12:29:48', NULL, '1qnEiZq4I37YWSJhsfDgDkDkNJxMTo12cSkQpadyDeI1pgahaoiGkm4CvwnD', 206, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-04 16:08:32', '2025-02-04 12:38:32'),
(207, '09388539229', 'علی اصغر', 'رضایی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7171', '1738687501', '$2y$12$LURRhty7ZmLLJ5nkfjps4Omry3jheZdMPZrZSBkiGu3QniOu.329e', '2025-02-04 13:13:13', NULL, 'YRG9VWGcWTv4UI546YGqzMWDX5KZ4akz4ejvyq4zbIU03FPUsSQ968CebG5W', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-04 16:45:56', '2025-02-04 13:15:56'),
(208, '09368359976', '09052022989', 'لیلا سابقی نژاد', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1216', '1738688259', '$2y$12$hRSXTP4As6cVEGebKCG0D.yicv/kbnXfWVE0HvdhreY.q0SI9./we', '2025-02-18 00:07:30', NULL, 'XVL2uPoYKwK6CgrpPUvODWrtbJD2TOylAvFkjMT1xfQslXUpFB6HkNR6kW8a', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-02-18 03:40:12', '2025-02-18 00:10:12'),
(209, '09132277085', 'سیدحسین', 'طباطبایی', 2, 1, 0, '5649896828', '۴۸۶۹۱', '۴۱۰۰۰', NULL, NULL, '9500170000000106675522000', '6037997114896716', 37, 4, 'محمداباد', NULL, 4, 37, 'اصفهان. شهرستان جرقویه. شهر محمداباد. جنب پست. منزل شخصی', '۸۳۷۳۱۱۳۵۳۱', 'avatar.pngimage89141739212174.jpg', 3, -1, NULL, '6236', '1738688840', '$2y$12$bGFL3teL0p1O0rHNNxRC7uThMNuqJeI8rp.SPnHNI55FPxLAk5KH2', '2025-02-04 13:35:32', NULL, 'TXMEHwb6kjonoxm5sDCs6fYRJM6KCpWv6DqwYSgZU1nDs88ugO05SYSU6FHr', 209, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-01 10:47:00', '2025-03-01 07:17:00'),
(210, '09193540073', 'مهراب', 'غلامی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3119', '1738694258', '$2y$12$79gKaLzzjkKRr6k/xgwg1OTLsd1/FJNfoz9VPJm9FyHYMmi1qz3j2', '2025-02-04 15:05:48', NULL, 'nIjEzFSOGBRJfpQqr3lhUtGzZx9S8fyAcjuVr5Q0drEK7FctUcEKaccMfyol', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-04 18:36:52', '2025-02-04 15:06:52'),
(211, '09364204006', 'محمد', 'شهبازی میانرود', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9874', '1738695183', '$2y$12$0i074bjGFWgSD0j9RGqO6.FHMR5ChF5u3X/H1vXobvSbmyDmgdaOK', '2025-02-04 15:21:11', NULL, 'qJtRMWhBHDBCzanitRznGYo6lcRTgrRHnS3b0ZNWPj0r7od7hxsM4oiQVnUJ', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-04 18:51:11', '2025-02-04 18:51:11'),
(212, '09358032468', 'علی', 'متقی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9690', '1738696245', '$2y$12$vFcpZwunTuIoY55vr/RrZu4qS3ZlNVwWH2TB/VvVu1z3CSBAI.joi', '2025-02-04 15:39:21', NULL, 'qriGjR4gmRImuyghKqLOUxq1aawY7wzKqPGX44eivRo9YncdPagACnqL99jx', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-04 19:09:21', '2025-02-04 19:09:21'),
(213, '09191957614', 'علیرضا', 'محسنی راد', 2, 1, 0, '0370612205', NULL, NULL, NULL, NULL, '920170000000321250779001', NULL, 112, 8, NULL, NULL, 19, 327, NULL, NULL, 'avatar.pngimage81431738773384.jpg', 2, -1, NULL, '6597', '1738701642', '$2y$12$etRGQkbgXYvVqmazmM6Lv.mXgCtJb4HQ41pY5wUNrE9L/dRwaa5Vi', '2025-02-15 03:50:49', NULL, 'AKIss6uHDazlOxcmTeVoC1LdC8OrIXC8lSwaRBNKJBMWUqoHChCAslcsJLu1', 213, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 12:48:50', '2025-03-01 09:18:50'),
(214, '09132195322', 'مهدی', 'حق شناس', 2, 1, 0, '0386417075', '87941', NULL, NULL, NULL, '980170000000364714464009', NULL, 37, 4, NULL, NULL, 4, 37, NULL, NULL, 'avatar.pngimage14341738756299.jpg', 3, -1, NULL, '9263', '1738729168', '$2y$12$lm7hUGhQqsfnlahjArZUz.4vOxGjUS.QXSKwcK.jNavpBMlydjbcq', '2025-02-05 00:47:31', NULL, 'eNfYzMa9XGLBm7fTM63h3unJndFZH5Jdl1Es0j4TbleMG7gyIsLreCsQnlBz', 214, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-05 11:51:49', '2025-02-05 08:21:49'),
(215, '09139729272', 'محمد', 'بخشی', 2, 1, 0, '0690493649', '۱۴۲۷۴۸', '۲۸۴۸۲', '۲۸۴۸۲', NULL, '170170000000111699480003', '6037991780228932', NULL, NULL, 'قم', NULL, NULL, 327, NULL, NULL, 'avatar.png', 4, -1, '0', '5215', '1738731276', '$2y$12$6Zxp2VE8V295qFc/5YPSvugp.8JDL7TDlp39BKUr0WGynCG6XyEB6', '2025-02-05 01:23:14', NULL, 'UYmlByNqKKsZ13ouzxj2AF7j2bhF3J2sIBjNdoeUCaooafBDtB5nJEYidStI', 11, 1, 1, 1, 0, 0, 0, 1, NULL, '2025-02-10 13:02:25', '2025-02-10 09:32:25'),
(216, '09364260369', 'محمدرضا', 'تاجیک بالایی', 2, 1, 0, '0410505005', '323094', '67277', '139311024709', NULL, '650170000000346607038006', NULL, 435, 8, NULL, NULL, 8, 435, NULL, NULL, 'image24711738819206.jpg', 2, -1, NULL, '7811', '1738744645', '$2y$12$wI68.XUJlNYZmt4Fzzjbr.6mgQXckisCdUaMK7qrlmqrw5cdDUGni', '2025-02-05 05:05:33', NULL, 'L8SQaJXI0aY5UbJZEdF8KF7tJImEsGkgspNvJ4f3VuX4iyU2BiDPjQjlXauD', 216, 1, 1, 1, 0, 0, 1, 1, NULL, '2025-02-06 05:20:20', '2025-02-06 01:50:20'),
(217, '09159085171', 'علی اصغر', 'وطن خواه', 2, 1, 0, '0945496941', '111892', '24853', NULL, NULL, '780170000000303921802003', '6037991882294550', 327, 19, NULL, NULL, 19, 327, NULL, NULL, 'avatar.pngimage5921738745867.jpg', 4, -1, NULL, '8528', '1738745463', '$2y$12$MNhEZpLsXv2tApmVsxjjtuXwEU.0oL0lg0J6Y35uOOfC44GE1H4G6', '2025-02-17 06:52:19', NULL, 'DvOjLe9895AhFWIJrIEjibXV3H0gncwN3HszAOx5F5mDQwwdZ7SzWQJrracz', 217, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-02 12:44:27', '2025-03-02 09:14:27'),
(218, '09183437478', 'محمد', 'جمشیدبیگی', 2, 1, 0, '4501252091', '220969', NULL, NULL, NULL, '490170000000311382681006', NULL, NULL, 6, NULL, 'چالسرا', 6, 53, NULL, NULL, 'avatar.png', 2, -1, NULL, '7650', '1738745787', '$2y$12$1OM9MGMVlzH.amLyBzm5.eXmFqZ1y6lTI/qGwsq1AxwczkMisHXCO', '2025-02-05 05:24:41', NULL, 'dQ8X2x6BvjuftlUJjXtH5Bwg6XOjnDNJz39aTh9EM2FxFTCSKnd0pC3m2Q7B', 218, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-05 09:13:30', '2025-02-05 05:43:30'),
(219, '09193921395', 'مصطفی', 'کریمی', 2, 1, 0, '0439094887', '50080', '70737', NULL, NULL, '370170000000302420965003', NULL, 112, 8, 'پیشوا', NULL, 8, 112, NULL, NULL, 'avatar.pngimage57401738827311.jpgimage48981738827510.jpg', 2, -1, NULL, '5214', '1738747582', '$2y$12$EH5lxaY.XymH.27NcIG/N.E8ymJiHnWsXCp9Ht/ZscLYieHFudHe6', '2025-02-15 03:41:54', NULL, 'SElHB57AZ7I1KU3INgLikvOI1e4gbpChluFGraClmtoaoU64EJQ10yN9vfMQ', 219, 1, 1, 0, 0, 0, 1, 1, NULL, '2025-02-15 07:11:54', '2025-02-15 03:41:54'),
(220, '09104114959', 'عادل', 'سلیمی', 2, 1, 0, '1600955996', '67047', NULL, NULL, NULL, '120170000000210436116004', NULL, 389, 1, 'مراغه', NULL, 1, 389, NULL, NULL, 'image91761738749856.jpg', 3, -1, NULL, '2183', '1738749362', '$2y$12$redAOYDoWY3bKNAehoHeZubOx2R5kyFpQB586PcMop/ci8GdbIp.S', '2025-02-05 06:24:13', NULL, 'YX7BU2WZUBpaKMO9bgudPAD6ZQgS7uC7wkPoRCFMfwJ6BWmOqwMpfhUsRpt7', 220, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-05 10:04:42', '2025-02-05 06:34:42'),
(221, '09148407642', 'مهدی', '389', 2, 1, 0, '1550850490', '۶۹۹۶۵', NULL, NULL, NULL, '120170000000305830627003', NULL, 389, 1, 'مراغه', NULL, 1, 389, 'مراغه شهرک امام حسن', '5517313625', 'image33791738787249.jpg', 2, -1, NULL, '9838', '1738750862', '$2y$12$XzU.Px9M1hz/Q1fgWt/TH.69NgW/2qJVd9UZqm8RQVwf6IR2TDGxO', '2025-02-05 17:23:47', NULL, 'dqXLpzMLVLOwRwRI50tXNkedkea58PnuCJEGhgw1vwNCJCdrj4yUTW6fFNyW', 221, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-05 20:53:47', '2025-02-05 17:23:47'),
(222, '09193583427', 'مهدی', 'عرب صالحی', 2, 1, 0, '5649734232', '54017', '35778', NULL, NULL, '350170000000103985848007', NULL, 37, 4, 'هرند', NULL, 4, 37, 'هرند خ شهید صفارهرندی(ره) بلوار مادر خ اندیشه پ 75', '8374176941', 'image33361738755157.jpgimage78121738755225.jpgimage32001738755297.jpgimage18931738755764.jpg', 3, -1, NULL, '4338', '1738752104', '$2y$12$B4dEtK0DCjr7eTNIp61bY./0y50cLGTVQ1ryAHImwHPELsi2kugGG', '2025-02-06 00:01:27', NULL, 'TPBVrOmLgycMWyg8pBhQ2L3aMLbLHrXGyI4HtmsRTbFpAwmAYvkZE1ahvteL', 222, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-10 13:43:39', '2025-03-10 10:13:39'),
(223, '09171356422', 'محمد هادی', 'اعتمادی فر', 2, 1, 0, '2491616173', '95121', '26932', NULL, NULL, '430170000000228674283008', NULL, 266, 29, 'بمانی', 'روتان', 29, 266, NULL, '‭79 4618 4315‬', 'image12261738754109.jpg', 3, -1, NULL, '3265', '1738753383', '$2y$12$JtZYtIlFAus1ues1oNiO9.JNuQqFtj5f.lqvlVx0alDvdgU.bbXcK', '2025-02-05 07:32:17', NULL, 'cpEiA3UCtFV58Zoa5NPQoDHyyqrNp8Rkgo0pBcf2OV42sDF1Cl3HHV3WbjBG', 223, 1, 1, 0, 0, 0, 1, 1, NULL, '2025-02-05 11:15:48', '2025-02-05 11:15:48'),
(224, '09188436493', 'عمران', 'احمدی', 2, 1, 0, '4539435337', NULL, NULL, NULL, NULL, '410150001518756329593719', '5892101634708073', 146, 6, 'سرابله', NULL, 6, 146, NULL, '6951914240', 'avatar.pngimage87911739269031.jpg', 2, -1, NULL, '7391', '1738753518', '$2y$12$q0O5H/HbTi3vt6Vx9uA5ueo10ZQZAVgsV8U18.ZJYnb4LYdEFMIri', '2025-02-11 06:42:28', NULL, 'AKs8xLtRRY0aaovhaXtPmqT1k6Ne0ZHTt2ICJlgr440o76McGIn06T0LLtWs', 224, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-11 10:17:13', '2025-02-11 06:47:13'),
(225, '09117503778', 'محمود', 'محمدی پسند', 2, 1, 0, '2032117363', '102134', NULL, NULL, NULL, '0170000000303004995005', NULL, 371, 24, NULL, NULL, 24, 371, NULL, NULL, 'avatar.pngimage3951738755083.png', 2, -1, NULL, '6402', '1738754536', '$2y$12$a/xlwecklDxqMoClYso16eT9co8.FsISXGeIUlhlbOfehvoC6mhMm', '2025-02-05 07:50:25', NULL, 'k7rhhTF4RvHRPMArvojSdFoNW3pdZAYQi1IlaNoefSnibYkDDwIzp5TBDWD1', 225, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-02 11:59:45', '2025-03-02 08:29:45'),
(226, '09126531170', 'یوسف', 'جعفری', 2, 1, 0, '0322237998', '۴۳۱۳۵', '۲۱۳۹۵', NULL, NULL, '250170000000359148496004', '6037991773015544', 397, 8, 'ملارد', NULL, 8, 397, 'شهرستان ملارد خ بسیج کوچه ۱۳ پ ۲۷۱', NULL, 'image56721739198271.jpg', 3, 1, '0', '5865', '1738760197', '$2y$12$kfQGfdFQRPXfmz15ywUoou6NNBgiGpl0qH770LsXMDWeg9wYK0Npa', '2025-02-05 09:26:21', NULL, 'MpgdKpM4sI8PxiavsCax90hkNTSbCW5w7uAdrqsb0Gw9YTWfve3YGsDeiu1l', 11, 1, 1, 0, 0, 0, 1, 1, NULL, '2025-02-10 15:05:17', '2025-02-10 11:35:17'),
(227, '09192247092', 'علی', 'پروانه', 2, 1, 0, '1640095365', NULL, NULL, NULL, NULL, '610170000000224549066005', NULL, NULL, 8, 'ری', NULL, 1, 239, NULL, NULL, 'image8001738763271.jpg', 2, -1, NULL, '4809', '1738763053', '$2y$12$Iwd8s/Iq62zNOLpTlOvy7e4RJfd5SSKPo3zMlPblpWgUN0HTU5XXu', '2025-02-05 10:12:29', NULL, 'y3j6OghfYBHNjx4Ba8LpnvE4RN3X9pztBpAlMCkgEMoPRJkBHoNRkMf0Z8Up', 227, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-05 13:48:15', '2025-02-05 10:18:15'),
(228, '09100234472', 'سید عنایت الله', 'موسوی', 2, 1, 1, NULL, '233428', NULL, NULL, NULL, '210170000000108798117005', '0108798117005', 327, 19, 'قم', NULL, 19, 327, 'قم خیابان ال یاسین کوچه ۱۰ پلاک ۲۱ زیر زمین', NULL, 'avatar.pngimage2451739200788.jpg', 4, -1, NULL, '3212', '1738763891', '$2y$12$t4bI15..TRCRcTcvvGFc2OIB6LxHXcEZfFVUWu1Sru76h2aARmEa2', '2025-02-05 10:26:29', NULL, '0nZxQENnrZFxNKEbOuIFPzDWFkhIwUItbW5D0gPa42hks3DjCglNiqsfOghc', 228, 1, 0, 0, 0, 2, 1, 1, NULL, '2025-03-02 12:37:15', '2025-03-02 09:07:15'),
(229, '09135118180', 'روح الله', 'مرادی', 2, 1, 0, '4660262928', '۲۵۲۹۲۶', '4660262928', NULL, NULL, '6.801700000003389e+23', '6037991948736180', 377, 9, 'لردگان', 'خاردان', 9, 377, 'چ و ب لردگان خاردان میدان نماز', '8891435723', 'image46861738768451.jpg', 3, -1, '0', '1211', '1738767888', '$2y$12$xbuIDtxkDLHD1JF.JkBaqOGfFOE86Ymww5q1tUWF6Z.JQ.827mT2C', '2025-02-05 11:32:57', NULL, 'e8Ntu1vuGZI5dAyM1bPHCRqTj2of2OPkBEiveHaKmDFY9QJgrXNq5bsEPZEy', 229, 1, 1, 0, 0, 2, 1, 1, NULL, '2025-03-02 11:43:19', '2025-03-02 08:13:19'),
(230, '09135738789', 'سجاد', 'ملایی', 2, 1, 0, '1291929959', '204205', NULL, NULL, NULL, '94019000000105772060007', NULL, NULL, 11, 'نیشابور', 'لک لک اشیان', 11, NULL, NULL, NULL, 'avatar.png', 1, -1, NULL, '6708', '1738789195', '$2y$12$ObGCbgFiifIOSbjdSUHPnOWhivmHS1SH78yMPZwRF9CcwS.VK6yEq', '2025-02-05 17:29:23', NULL, 'tuLsxeq9AlJuoTJOdpiKzItkx6RK465rNXPTxH1VNfm3iHLFjaALxYHgARAS', 230, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-05 20:59:33', '2025-02-05 17:29:33'),
(231, '09377773809', 'محمد', 'فاتحی چهاربرج', 2, 1, 0, '2960050088', '175865', '30495', NULL, NULL, '930170000000104402454009', NULL, 411, 2, 'چهاربرج', NULL, 2, 411, 'آذربایجان غربی شهرستان چهاربرج خیابان شهید رجایی کوچه ایثار 5', NULL, 'avatar.pngimage46031738774839.jpgimage95321738774928.jpg', 3, -1, NULL, '1379', '1738774237', '$2y$12$rARrYr96pqjDYcJ7LksgJeieXPChQLcowIduWMDrSugXp8ddsDANm', '2025-02-05 13:19:29', NULL, 'cL13RxONODIBbzkv01QoES2B6U4ZbF9p2lEyljL5DQeHLZLdLDd5o1xR96zv', 231, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-01 10:54:18', '2025-03-01 07:24:18'),
(232, '09337459594', 'محمد حسن', 'جعفری تیل', 2, 1, 0, '1638775044', '454867', NULL, NULL, NULL, '040170000000100314129002', '6037997337975560', 304, 5, 'شهرک وحدت', 'شهرک وحدت خ 15 غربی پ 15', 3, 162, 'استان البرز . شهر فردیس . شهرک وحدت . خ 15 غربی . پ15 . واحد 3', '3165895447', 'image27641738778305.jpg', 3, 1, '5', '4167', '1738777940', '$2y$12$Zb7XQzSE/wexVC120KCNpOzeHPnYjT5ozmd.Zjtm5myenkgiZ.D86', '2025-03-06 10:37:03', NULL, 'F4pwVkBXfJqobeaWX8NeyKm7GmK92dgHgZlHoWoMCGtcMB5NwF5rYneF3tnU', 232, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-06 14:07:03', '2025-03-06 10:37:03'),
(233, '09380239034', 'روح الله', 'حیدری', 2, 1, 0, '2992236640', '95379', '28165', NULL, NULL, '910170000000102633489004', '6037997284416568', 327, 19, 'قم', 'قم', 21, 338, 'قم،بلوارجمهوری اسلامی، خیابان قیام کوچه۵ پلاک۶۴ واحداول پایین.\nکدپستی ۳۷۱۶۸۳۷۸۱۵', '۷۶۱۶۷۵۷۳۵۹', 'avatar.pngimage91851739197752.jpg', 3, -1, NULL, '1583', '1738784301', '$2y$12$IeAJnkqDMlpLfmmB4jKaRuD/M6bF.GPcP5tEAV.kSMzqD/ZrfOsyG', '2025-02-20 17:57:52', NULL, '0EbLdOThR6C2gQAdllBICzGklwpSabdOO8pMvVGZsHMQnJkfb7YG4TrKmDTV', 233, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-02 12:07:21', '2025-03-02 08:37:21'),
(234, '09189451998', 'روح‌الله', 'تاری', 2, 1, 0, '5819811976', '۶۹۰۰۰', '...', NULL, NULL, '930170000000115665871006', '6037998216756840', 53, 6, 'ایلام', '.', 6, 53, 'ایلام جانبازان انتهای بلوار ابوالفضل کنار اتکا مجتمع ارام واحد ۱', '۶۹۳۱۱۸۵۸۴۴', 'avatar.png', 2, -1, NULL, '7114', '1738784504', '$2y$12$UD6eaj9xpRC8d5D2o0thEeeyxYmgWLN2UA5IuPpiSzVgPtIYQ5tOi', '2025-02-05 16:09:52', NULL, '5w8EoNLzyqob2pR9BAY89Blhnak81TRutCx4pER0VzBscgQqRdzly9tcIX9x', 234, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-09 14:27:04', '2025-03-09 10:57:04'),
(235, '09370636541', 'علی', 'رضازاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9202', '1738788849', '$2y$12$zYICIY8TfyFLOa5Pc09tVe1F8gYvywKyeaFuPYwsNzPEhM/m/0np2', '2025-02-05 17:22:31', NULL, 'yPU8NkD3peSfT2iMnY9al8bgixVS5DT3ytj44JBjWUAcojSRwCNPjTl8PpiA', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-05 20:52:31', '2025-02-05 20:52:31'),
(236, '09137659303', 'زکیه', 'روح الامینی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2164', '1738816210', '$2y$12$QZjlLMI0IMYS58ehWJYP.OS4lepxXkrirg7t75wIQBU.vzRoPMNCO', '2025-02-06 00:58:24', NULL, 'dyK8MD7B6dOd0BBaeTqcFUJRgwZELYQBgUesQDdfH8auSPoDD85szbfkKqQg', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-06 04:29:46', '2025-02-06 00:59:46'),
(237, '09148910631', 'علی', 'اعظمی', 2, 1, 0, '2960174763', '۲۵۸۹۵۶', NULL, NULL, NULL, '170170000000108071903006', NULL, 80, 1, NULL, NULL, NULL, 80, 'بناب حوزهعلمیه بناب مجتمع المهدی', '۵۵۵۱۸۹۴۷۶۷', 'avatar.png', 3, -1, NULL, '3602', '1738833558', '$2y$12$YRN3NFzhpE3.RS97n82qAudzmdr8nRObkES/TTfKgqDFZkVyHgqC6', '2025-02-06 05:47:55', NULL, '4uLhXLCuTTRVXoP0scgpbGC9rY52Wpii6cg0kPmX0xoxP782Gc9B5kpIuf1I', 237, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-06 10:38:34', '2025-02-06 07:08:34'),
(238, '09105837876', 'سید محمود', 'طباطبائی', 2, 1, 0, '1283867745', '57041', NULL, NULL, NULL, '530170000000102586179005', '6037997507799220', 327, 19, NULL, NULL, 11, 57, 'پردیسان خ مسلم قلی پور مجتمع میرداماد ره', NULL, 'image97861739163630.png', 4, -1, NULL, '3862', '1738843124', '$2y$12$WtkODv6VtIS8mMXxq9cHpu7TSF8wtH0YkxUaIF0vrO6SDPsgo2iy.', '2025-02-06 08:26:54', NULL, 'w5NjoMmFSZcucP2BHioW8diGLkLFuoLf2RR79h9EAhC51bFINL3OTxagrt0g', 238, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 05:00:38', '2025-02-10 01:30:38'),
(239, '09158888739', 'محمد ذکریا', 'بازمانده', 2, 1, 0, '0639066429', '113296', NULL, NULL, NULL, '950170000000301643514003', NULL, 30, 12, NULL, 'روستای کسرق', 12, 30, NULL, NULL, 'avatar.png', 2, 1, '5', '8024', '1738846913', '$2y$12$9n1Y5j89akd4RQD2yDKyNepnu8F63NHJI2sigmE3Ikim8LqFoPXPO', '2025-02-06 09:30:09', NULL, 'ELsucaUgAS13IsymDYwxJw7mXEVORHlMwXBKnDil7I5zU7TH9VQ0aMUOvRmM', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-06 13:25:28', '2025-02-06 09:55:28'),
(240, '09191964280', 'مهدی', 'میرزازاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7593', '1738847992', '$2y$12$9Rv1iKfI6KOfCaZkF.BAP.4lqV8nSWhRhvu9FwiRFKT1JJ6DZJtgC', '2025-02-06 09:48:10', NULL, 'BBibDBuFoJ3WsifVW5EcBZVNwgJFS5jYQPcU5q0tXA96FdbD0WUxGrbzAiL4', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-06 13:18:10', '2025-02-06 13:18:10'),
(241, '09191532588', 'محمد', 'فدائی', 2, 1, 0, '4592224841', '56660', NULL, NULL, NULL, '240170000000303131986004', '6037997228295649', 327, 19, 'قم', NULL, 15, 270, 'بلوار سمیه کوچه 35مجتمع گلستان3ط2و7', '3715841971', 'avatar.pngimage10401738848452.jpgimage61431738852652.jpgimage68741738854241.jpgimage61901738969644.jpgimage5771738969742.jpgimage9371739246687.jpg', 3, -1, NULL, '2037', '1738848014', '$2y$12$FGmMQHe/w6f6V2OGanl0uubE1EIW7ctfwNTTZuZi1nfZY0dX0wn5K', '2025-02-06 09:48:37', NULL, 'wyPUHe7eEhiLA7IsEktX6LKzO5xjVSqkFs3SSEJ9RA2pE7xWgzBKPrA2OetM', 241, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-11 04:05:49', '2025-02-11 00:35:49'),
(242, '09167178095', 'امید', 'جوادی نصر', 2, 1, 0, '1930997140', '252958', NULL, NULL, NULL, '260170000000332983738005', '6037998116032706', NULL, 13, NULL, NULL, 13, NULL, NULL, NULL, 'image98021740908599.jpg', 2, -1, NULL, '1295', '1738848387', '$2y$12$57oCLgqrtUJQdPYklxaB.uEpsJ2JdCOJLEJuNagBc1GOxe0Ws.5yC', '2025-02-06 09:54:55', NULL, 'AK3c4ldmBSYW1UeNrJ1nIiogZY4QpZgre1ZfkXvX4tIR7CjdI01AM9ATWYMU', 242, 1, 0, 0, 0, 1, 0, 1, NULL, '2025-03-02 09:44:12', '2025-03-02 09:44:12'),
(243, '09198547088', 'وحید', 'صفایی حائری', 2, 1, 0, '0386234744', '177143', NULL, NULL, NULL, '280170000000304360078003', NULL, 256, 15, 'سمنان', NULL, 19, 327, NULL, '3514496116', 'image68841738848971.jpg', 2, -1, NULL, '9436', '1738848765', '$2y$12$1gxjbQRkgpkm4pGPSnjxGOkXII8U1SWoZCGeGx9I0AMrFG3EQa6XC', '2025-02-06 10:00:57', NULL, 'JSGenI5DnSs9EM7WeSEV35HMttQVEXuZ4nzyX9MFSchGeOLVs0B0RAgcba9D', 243, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-06 13:36:15', '2025-02-06 10:06:15'),
(244, '09158152782', 'رضا', 'احمدیان', 2, 1, 0, '0921511256', '۱۰۸۶۶۵', NULL, NULL, NULL, '800170000000106207897007', NULL, 102, 11, NULL, NULL, 11, 102, NULL, NULL, 'avatar.png', 3, 1, '5', '4255', '1738848915', '$2y$12$klAbHf9kg1VoNm58ZtaAb.bz.4JSqo15igiiY6Chbbkh.xfbCkmFi', '2025-02-06 10:03:29', NULL, 'VCyUDZd1tA6qdeGmVjgepux2Oxloi7Yz2YjdA6yMCVVCULjLySt4Fu0QaqYa', 11, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-07 14:22:23', '2025-02-07 10:52:23'),
(245, '09195456021', 'علیرضا', 'عرب یارمحمدی', 2, 1, 0, '4579493931', '168310', '33884', '33884', NULL, '270170000000304093765006', NULL, 327, 19, 'قم', NULL, 15, 270, 'انتهای خیابان جوادالایمه(علیه السلام )بلوار بنی فضل ،بیست متری باهنر 10متری امام رضا (علیه السلام )کوچه 25پلاک 52 زنگ وسط', NULL, 'avatar.pngimage79171738852617.JPG', 4, 1, '5', '9688', '1738849818', '$2y$12$e72KHz3mUUKLR4lebezuueYWMfPLpWu/S7P2Hug7KszrdWDyhM4tC', '2025-02-06 10:18:36', NULL, 'zQceDkRFtMbyBRCpL7Y8DwFoIDJvSk6IRWf2pIyVh3RNHlWwvtVk0GyA8EYE', 11, 1, 1, 1, 0, 0, 1, 1, NULL, '2025-02-07 14:22:57', '2025-02-07 10:52:57'),
(246, '09372200268', 'محمد', 'حبیبی', 2, 1, 0, '1930102161', '33501', '18941', '139411047298', NULL, '800170000000300402353004', NULL, 46, 13, 'اندیمشک', NULL, 13, 46, 'خوزستان -اندیمشک- کوی ولایت-مسجدعبدالله', '6481845600', 'image72511738864759.jpg', 4, 1, '5', '9856', '1738850395', '$2y$12$f1GguLY06T.fTRlp49oTJ.b5bWaY98of.3uQd5TR5aGan8VLKp8Ra', '2025-02-06 10:29:53', NULL, 'uauz0yQipuH2HSFBcXBRBpy4l6MWko0SUlRRbqvWjsFE3cSEGTtBdi64aBVF', 11, 1, 1, 1, 0, 1, 1, 1, NULL, '2025-02-25 14:41:05', '2025-02-25 11:11:05'),
(247, '09158047402', 'حسن', 'طایی', 2, 1, 0, '1989470203', '121627', NULL, NULL, NULL, '0170000000305209665005', '6037997430835422', 243, 10, 'سربیشه', 'سربیشه', 10, 243, 'روبروی فرمانداری، کوچه جابری3، پلاک 84', NULL, 'avatar.png', 4, -1, NULL, '6885', '1739201357', '$2y$12$5Y75KTJA.7hBn08t/YDNFOw8utJfBFMwFuPyBR.fsweEHANUx5zha', '2025-02-10 11:57:21', NULL, 'mSAFOZqjM2bJbnvQiLgVWeiSWtJ6mN5aUADkaPKClTaLkHouO3Eh5218fr7T', 247, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 15:31:27', '2025-02-10 12:01:27'),
(248, '09193592505', 'عباسعلی', 'فرمانیان', 2, 1, 0, '4579651537', '42918', NULL, NULL, NULL, '500170000000301800390003', '6037997543774831', 270, 15, 'شاهرود', NULL, 15, 270, 'استان سمنان- شهر شاهرود- خ نگارستان گلدانه 5', '3616793417', 'image20401739270404.jpg', 3, 1, '0', '8195', '1739270236', '$2y$12$y6koAd/6whusHJf3vFrVNuCozpM9QMe0zDgGf6dgw4ZzrvGquMYO.', '2025-02-11 07:05:29', NULL, 'oSQECKYlAtAQR1iKP2Uqux9scK8DLYTbtWfZUIazvoNkIR4Tg0GF8jkR2kfh', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-11 10:55:11', '2025-02-11 07:25:11'),
(249, '09139543956', 'محمد حسن', 'زارع', 2, 1, 0, '5529901522', '20109', '25654', NULL, NULL, '130170000000101414818007', '6037997318572097', 119, 31, 'تفت', NULL, 31, 119, 'یزد تفت خیابان شهدا روبروی مسجد شهدا \nپلاک 8', '8991717546', 'image76041739210973.png', 3, -1, NULL, '3814', '1738867808', '$2y$12$McEafK1MhsYBWBGX4IQ0eu59RxekIrgm97g/uIaCOc/moIQtck9tO', '2025-02-06 15:18:36', NULL, 'qBYCO7bD7uBso3nEr7h5Nr6pseRDz24Qe6M06bXb7Yrh210QpX9WzcLT6eDN', 249, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-09 11:27:01', '2025-03-09 07:57:01'),
(250, '09151446575', 'محمود', 'پارسا', 2, 1, 0, '3674297108', '۷۳۳۵۶', NULL, NULL, NULL, '940170000000231596067008', NULL, 223, 16, 'بنجار', 'حیدری جهانتیغ', 16, 223, 'زابل بخش مرکزی. روستای حيدري جهانتیغ', NULL, 'image81401738868632.jpg', 3, 1, '5', '9494', '1738867852', '$2y$12$tc6Cqn.Q6uhVufliYy2xdeLdJkziocxnAH2aL3xu/bnod2ayjgnrq', '2025-02-06 15:19:08', NULL, '68ogXiS6hl0rPm1dN1CL7LmgeK2VAtllEu8Sjea4JWSb4drKJbctJvKbinVh', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 13:55:27', '2025-02-07 10:25:27'),
(251, '09148056144', 'هادی', 'توفیق فام', 2, 1, 0, '1552765911', '167741', NULL, NULL, NULL, '220170000000338279022009', NULL, 389, 1, NULL, NULL, 1, 389, NULL, NULL, 'image76511738963132.jpg', 2, -1, NULL, '1303', '1738883097', '$2y$12$qIXNUkGafVaEcgH32iTXmeSxMQ6u3vXUBnEee3MZF0K4fDAUuwj2m', '2025-02-06 19:33:08', NULL, 'rqxGwiRZS7KOXpCdIlrS3ngAwCk9zEUa1yrtAGWPZOIKVQPPezVA5wgfoNeo', 251, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 21:19:32', '2025-02-07 17:49:32'),
(252, '09153242410', 'مهدی', 'اسداله زاده خضربیگی', 2, 1, 0, '0901956694', '112223', NULL, NULL, NULL, '280170000000103630939004', NULL, 396, 11, 'مشهد', NULL, 11, 354, 'شهرک مهرگان فاز دوم عترت26 پلاک 18', NULL, 'image45351738902689.jpg', 4, 1, '5', '9118', '1738902185', '$2y$12$LwyrFrOv54WS9t.51WiO/.Kwwdo2XGsdE8tQDBryRIMOqOHliNi66', '2025-02-07 00:51:15', NULL, 'fcRzQ2QKBv6MEhhkQYFPUsr0j0fXVxOzxdmVxvY1xSEqIdxC9yVKtuUp2jGg', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 14:04:24', '2025-02-07 10:34:24'),
(253, '09153243572', 'سعید', 'سلیمانی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8949', '1738905304', '$2y$12$n5ehFOPgZ6rrbzIJpq/5qO6J6/.A2lmk2./cguYT9bftJfLAPEYoa', '2025-02-07 01:43:39', NULL, 'nGiYBQmoiGfKZzkn71bU5UxxlJSmHr6hlt5YsG1s5sILNfoP2bq3CKe0Dazq', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 05:14:54', '2025-02-07 01:44:54'),
(254, '09183521837', 'محمدرضا', 'مصباحی پور', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6022', '1738918458', '$2y$12$8x.vHtqrNBotp9D/yzD9deOXf7PbVWOCtl2FZC3/i9ATjUjm8X8Tm', '2025-02-07 05:22:32', NULL, 'J284qqubiQUDiJmLfgU2BUwhoys8WplcPH8ZPliZ2XzV7bXBFU36OxzuYF7C', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 08:53:33', '2025-02-07 05:23:33'),
(255, '09185591984', 'مهدی', 'عباسی نیا', 2, 1, 0, '4011682179', '99476', NULL, '139311004804', NULL, '730170000000303506936003', NULL, 339, 22, 'کرمانشاه', 'کرمانشاه', 22, 339, 'کرمانشاه،  شهرستان کرمانشاه.  شهرک الهیه.  میدان رسالت.  بلوار جانبازان.  انتهای بلوار.  کوچه دوم.  منزل دوم سمت چپ', NULL, 'image69881738922416.jpg', 3, 1, '5', '6785', '1738920794', '$2y$12$Y8AA/VRwINVQhwY7Ho7iBep.e0km8zCSibA5rpRHaGKsABOvXCN6W', '2025-02-07 06:01:26', NULL, 'XdPWo6H1Bg4kZArfBgjJRSBlWw5J6SvnG4y8w4cjtVA3WNKu11Q77voVOgab', 11, 1, 0, 1, 0, 0, 1, 1, NULL, '2025-02-07 14:06:14', '2025-02-07 10:36:14'),
(256, '09185562487', 'مسلم', 'حیدری', 2, 1, 0, '3358814556', '۶۱۹۳۶', NULL, NULL, NULL, '620170000000114216464002', '6037991797313073', 339, 22, 'کرمانشاه', NULL, 22, 339, 'کرمانشاه شهرک ظفر', '6717685186', 'avatar.png', 1, -1, NULL, '6953', '1738923900', '$2y$12$f1FjrXdgWtHgjy.mff31CuEv0VJYecqGRH9il2lkHnXw7KUxCu/0a', '2025-02-07 06:53:18', NULL, 'owXU2sGrSUx47VQLG9G3DB8fzgEl4nmfiza3TSSqrrnqXQLBS39S6I76t1OE', 256, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 12:30:10', '2025-03-01 09:00:10'),
(257, '09386542747', 'مجید', 'بنی اسدی', 2, 1, 0, '5369887594', '۱۰۰۶۹۱', NULL, NULL, NULL, '470150000142290500215216', NULL, NULL, 21, 'شهرستان رودبار جنوب', NULL, 29, 82, 'محل تبلیغ:هرمزگان،بندرعباس،خیابان انتظام،', '7916794659', 'avatar.png', 2, -1, NULL, '3442', '1738923935', '$2y$12$BzD/RrbSdyjfk0E4k/8FCu1Q2UGGOtdDOYjxqAhvD/oJpYS8.tHP2', '2025-02-07 06:53:49', NULL, 'AuUo1wOMXpBmwaeWZeUP7RsedlsaIdmV1JdFQkSJaCwZ8BLslRz6jCRzQg47', 257, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-07 10:32:51', '2025-02-07 07:02:51'),
(258, '09176630488', 'مهران', 'ذبیحی نژاد', 2, 1, 0, '4269936071', '178541', '38963', NULL, NULL, '02017000000302960833004', '6037991763054644', 360, 23, 'دوگنبدان', '.', 23, 360, 'گچساران خیابان عمران کوچه شهید مکاریان جنب مسجد صاحب الزمان عجل الله فرجه', '7581639451', 'image53671738924924.jpg', 3, -1, NULL, '4138', '1739846328', '$2y$12$QagUry1yKIsWI2jLtrUP3./OyALFsZKyL.ihjzyBjAiK0Ht5CkYle', '2025-02-17 23:06:58', NULL, 'IiSS7leSGCptVDYN346AaRrQ4Ordqy1GIDc8T5G4PSdOb50JSrf9pkqSFVZ1', 258, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-03 10:03:14', '2025-03-03 06:33:14'),
(259, '09173826859', 'مسلم', 'غیاثی', 2, 1, 0, '5159852220', '63776', NULL, NULL, NULL, '200170000000306763413003', NULL, 104, 29, 'پارسیان', '.', 29, 104, 'هرمزگان.پارسیان.خیابان کوثر.محله حیدری ها .جنب دارالقرآن رسول اعظم', '7977143710', 'avatar.png', 4, -1, NULL, '2178', '1738924869', '$2y$12$JuO.40amBOglKkCqz/bkQ.I/Jz67Z8lIGu7tZoV55ONYGExuOH8vq', '2025-02-16 13:54:10', NULL, NULL, 259, 1, 0, 0, 0, 2, 1, 1, NULL, '2025-03-02 11:53:15', '2025-03-02 08:23:15'),
(260, '09193510165', 'جواد', 'ایزدی', 2, 1, 0, '0942043251', '74729', NULL, NULL, NULL, '670170000000306798169003', NULL, 283, 17, NULL, NULL, 11, 396, NULL, NULL, 'avatar.png', 3, 1, '5', '3635', '1738925514', '$2y$12$ESzP69nEE36D0EiLbfRXBOI0iLOog7Wa6vSeKFtSoPPpoFkzDJwYi', '2025-02-07 07:20:04', NULL, 'ABSi39jyuqxOU3oJDigY1Qtscyf5k38ATI3R7HMcyR0gL5WeDEdqM62zDaZ4', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 13:50:20', '2025-02-07 10:20:20'),
(261, '09189058856', 'احسان', 'عباسی', 2, 1, 0, '3932721731', '33319', NULL, NULL, NULL, '630170000000302118235004', NULL, 29, 30, 'اسدآباد', NULL, 30, 398, 'اسداباد محله اسلام آباد کوچه شهید عافیتی پلاک ۱۷', '6541864494', 'image35531738927317.jpg', 2, 1, '5', '5243', '1739134904', '$2y$12$bYdThyMQ24Ze4dBXGkXkH.Twf95UOLfuEnD8KW.dhlzSjcEa8rE/G', '2025-02-09 17:29:52', NULL, '2rTUuz0ThHmEAhP9AkQ3x4olIgrTYTJayc1GdfW2GrvP8KC3Bf3h5y0LDk2M', 11, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 10:32:01', '2025-03-01 07:02:01'),
(262, '09353490900', 'سلمان', 'گوران', 2, 1, 0, '3790098930', '202163', NULL, NULL, NULL, '520170000000110410924001', NULL, 208, 8, 'پرند', NULL, 8, 208, 'تهران شهرستان رباط کریم شهر جدید پرند فاز چهار مجتمع میثم نهاجا', NULL, 'avatar.png', 3, 1, '5', '8528', '1738925641', '$2y$12$JMD2cpiMbnrP4rH.1rq8Q.NivPEh2sKgenIl1.7.06RT2zRRjMTx6', '2025-02-07 07:22:07', NULL, 'POkIpKyc6ckRbPLjz4YbCb6dPyQLnNPQT8V0svrzWL1SpOndtK0GXXnFrMFT', 11, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 11:29:31', '2025-03-01 07:59:31'),
(263, '09169584235', 'سعید', 'عالی پور', 2, 1, 0, '4072757081', '86073', '139430989', NULL, NULL, '140170000000305204161003', NULL, NULL, NULL, NULL, NULL, NULL, 157, NULL, '6819615146', 'avatar.pngimage2591738926205.jpg', 4, 1, '5', '9130', '1738925981', '$2y$12$vo43LqQ/TzvrqKuZcy29UuUcl/ADOyeB3HkvNAM2jtDSOcnjoEUuu', '2025-02-07 07:27:59', NULL, 'eUgUnbprKFti2I5iE81If0Nseo3g5IgWU8d53i42APnz7ijrfnX4McsRApAy', 11, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-02 12:42:25', '2025-03-02 09:12:25'),
(264, '09167166146', 'رضا', 'سالاروند', 2, 1, 0, '4219559566', NULL, NULL, NULL, NULL, '830170000000102335054001', '6037997176292978', 193, 26, NULL, NULL, 26, 193, 'دورود  فرهنگیان', NULL, 'image44721738929129.jpg', 3, 1, '5', '6037', '1738928572', '$2y$12$72lq5UZRcK6Ammdsgu9xI.c8dQtt6aLrLGGEfOlmfceoirvjxkyIq', '2025-02-07 08:11:22', NULL, 'rYX5vTATl5yKOZuDKWnCcy8AOwG8cQwvgnuNZzMuIkW13AOePcYKFbLgUqzR', 264, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-03-03 09:58:35', '2025-03-03 06:28:35'),
(265, '09393818193', 'ناصر', 'خلیلی شومیا', 2, 1, 0, '2142119263', '۵۹۹۰۵', NULL, NULL, NULL, '070170000000105793848001', NULL, 424, 27, NULL, NULL, NULL, NULL, 'مازندران نکا مدرسه علمیه مسجد جامع', '۴۸۴۱۸۷۹۳۷۴', 'video34971738989742.mp4', 3, -1, NULL, '9378', '1738930211', '$2y$12$7fSf.uaocAww4pm.xz75RuPAo/TFXiJsJXZFyZOY7vSJrVJ40zJzK', '2025-02-07 08:38:34', NULL, 'xVWLNN0mmNkOJputfJR3uCY1wUhGAi3nfrgAuGgF3WQ3j2BInHKZzRBxb0hZ', 265, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-08 04:42:34', '2025-02-08 01:12:34'),
(266, '09139917647', 'محمد', 'صادقی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4616', '1738932109', '$2y$12$dpLG.M4OKGNuvIZ4cZ9jXuYGC.tWQsukwDYzejAt6yAqDWHjqV8Xu', '2025-02-07 09:10:20', NULL, 'egtnu7Trm3mgTOezAnfBdh456vpcEP6QPoZLOcf3v8kLB02iTRIDTuWZRq4J', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 12:43:08', '2025-02-07 09:13:08'),
(267, '09045384189', 'حسن', 'صیادی', 2, 1, 0, '3670233059', '51923', NULL, NULL, NULL, '850190000000332318553007', NULL, 223, 16, 'زابل', NULL, 16, 223, 'زابل خیابان رسالت کوچه ۱۹ دست چپ منزل دوم', '9861633556', 'avatar.png', 1, 1, '5', '3588', '1738933592', '$2y$12$B8x7eia/l6y1eu7uY2ELveqkkQafdoc5ZIzp3/AERxAKqsV077Bym', '2025-02-07 09:34:51', NULL, 'UOFCZu2KPWmJsuecIn5FYpBNMScgkH63ykr2kvWt2Digtspy7fODQ3hyN2F7', 11, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-03 10:00:24', '2025-03-03 06:30:24'),
(268, '09173831081', 'یعقوب', 'حاجي پور', 2, 1, 0, '2500321411', '185257', NULL, NULL, '2500321411', '800170000000342002950002', NULL, 327, 19, 'قم', NULL, 17, 373, 'قم_پردیسان_خ شجاعت1 _مجتمع حافظ 5 _درب دوم_بلوک 7_طبقه4_واحد 14', NULL, 'image39811738935797.jpg', 4, 1, '5', '4770', '1738935652', '$2y$12$Mt2qlSeNuv.xJIEYWP8bFuD1gjislMJ/tuotLp45zL216L8AJcShq', '2025-02-07 10:08:55', NULL, 'kQuD02Q42Ppp4127nv0N20H0BQ2Z51AGhaH3oP1RIfzuiilWA2pY7gAulgQs', 11, 1, 0, 0, 1, 0, 1, 1, NULL, '2025-02-07 13:47:34', '2025-02-07 10:17:34'),
(269, '09156100345', 'ابوالفضل', 'نیکویان', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1022', '1738936427', '$2y$12$oH1pyAbKuQ5/UFP/l54zuuYuh1RRXDzQC9ZpU5ndMCv72CdN/fZ2y', '2025-02-07 10:21:53', NULL, 'PvigDqRMzMVFqmvYa2GeFbQ98U8hFlvuRKJMU4MV372tyIYMaAhPZG6i9dgV', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 13:53:02', '2025-02-07 10:23:02'),
(270, '09055106783', 'میرجلیل', 'حسینی مزرعه شادی', 2, 1, 0, '5198323195', '45499', NULL, NULL, NULL, '380170000000300102729005', NULL, 396, 11, 'شهر جدید بینالود', NULL, 1, 115, 'استان خراسان رضوی شهرستان مشهد بخش احمد آباد شهر جدید بینالود بلوار بهاران بهاران ۶ مجتمع کاویان سازان بلوک یک واحد یک کد پستی ۹۳۵۱۳۶۸۶۵۷', NULL, 'avatar.pngimage48471738937901.jpg', 2, -1, NULL, '2160', '1738936859', '$2y$12$2vYQ2w2vGsjsJCe173ifyeh8CMl5KipFgsGKIQPwc12lUMUZK8sBm', '2025-02-07 10:29:31', NULL, 'sB7c3aJa2MmDjyCMooyb3nippuCqI7i9WPxaKJ7J3fJHSodzz8ftzneQJVX4', 270, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-07 14:19:02', '2025-02-07 10:49:02'),
(271, '09179179420', 'محمد رضا', 'رئیسی زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4946', '1738937066', '$2y$12$mUAObN84pxHuy91xTCb4xOnQPMSXLmuKODnF6EgXhXOP9b8eMG/2O', '2025-02-07 10:32:33', NULL, 'k2CMxmdDMqKCX4Ww850XAuARG0dtNzQMtYIz1pvrWoiL0dt4xwyG7BvKjrNE', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 14:02:49', '2025-02-07 10:32:49'),
(272, '09117293852', 'مجیدرضا', 'توحیدی قلندرآبادی', 2, 1, 0, '0938774069', '106135', NULL, NULL, NULL, '080170000000304979115000', NULL, NULL, 11, NULL, 'محله آوینی- شهید آوینی', 11, 396, 'خراسان رضوی- مشهد- آوینی ۴۸- آوینی ۴۷،۳- مسجد صاحب الزمان عجل الله تعالی فرجه الشریف', '9156143140', 'avatar.pngimage6381738937712.jpg', 3, -1, NULL, '9801', '1738937278', '$2y$12$0BZliGXlzcXSBVV29.ruY..LwxRIGz129Z4cTAepOoe43lZkOnrv2', '2025-02-07 10:36:14', NULL, 'Kicsa9oeI7ukWlQ1QivGtpp2qlywQ1YxtyLG2EYBy2Kqup8Z5sWs7VWrlszJ', 272, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 14:16:00', '2025-02-07 10:46:00'),
(273, '09111764380', 'محمدرضا', 'طوسی', 2, 1, 0, '4889400265', '39849', NULL, NULL, NULL, '480170000000101510659003', NULL, 417, 24, 'مینودشت', 'پرسه سو', 24, NULL, 'استان گلستان مینودشت روستای پرسه سو مسجد جامع محمدرضا طوسی روحانی مستقر', '4981171499', 'image54611738938689.jpg', 2, -1, NULL, '5659', '1738937942', '$2y$12$08YU3ljd9shGYj8dWzKYNevlRhGMB07W6Ji3g9oXa2s7hG.GbCgOu', '2025-02-07 10:48:35', NULL, '4hUrQA5feCJdzT8pKh1BvLLsJvVl3hPvRdn2zYR8gzHxOrrF7Qa4P30WkrUR', 273, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 14:33:08', '2025-02-07 11:03:08'),
(274, '09157201343', 'سید حسن', 'خزاعی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5791', '1738938443', '$2y$12$8WP78wTbEWGq/zqAZjDdlOyPb4pc/J4f4tWW03T3KFgvQfDB.IhDy', '2025-02-07 10:55:52', NULL, 'XqeNe7Pc0eRoIDyOzv8vySpjZdMqOpmDPbzS7AYRHsuOOKhFHzPp06ZGAPa0', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-07 14:25:52', '2025-02-07 14:25:52'),
(275, '09178522857', 'محمدصادق', 'فتاحی', 2, 1, 0, '3456234567', NULL, NULL, NULL, NULL, '1111111111', '11111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', 2, 0, '0', '8285', '1738938546', '$2y$12$E7ep1kp6C/wDoPm5YWb7JupYIu0v9vISA8.tAA4LB34vfiJjQCNhW', '2025-02-08 07:38:10', NULL, NULL, 11, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 16:37:03', '2025-02-10 13:07:03'),
(276, '09151212491', 'سیداحمد', 'حسینی', 2, 1, 1, NULL, NULL, NULL, NULL, NULL, '6800000000317475327003', '6037998159943306', NULL, 11, 'حومه مشهد', 'کنه بیست', 11, 396, NULL, NULL, 'avatar.png', 3, -1, NULL, '7675', '1738939349', '$2y$12$VSIJSzNhLkCsNYL/MjzTZ.DnZB/gacugon4kptwT4wyrIvzwFm3ie', '2025-02-07 11:11:37', NULL, 'vjGhCrPUf4fuS702KZGHKyVALdNhZKKiIe1yDUgVYmKLwzkhqJHnWBrRnE2f', 276, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 11:13:00', '2025-03-01 07:43:00'),
(277, '09176720587', 'جاهد', 'جاوید', 2, 1, 0, '6559985741', '226545', NULL, NULL, NULL, '320170000000311822292005', NULL, 19, 28, 'ساروق', 'جیریا', 17, 161, 'استان مرکزی ، اراک ، ساروق ، روستای جیریا \nخیابان فرش ، مسجد جامع ، خانه عالم', NULL, 'avatar.png', 2, -1, NULL, '1142', '1738939681', '$2y$12$1JkAW4nBYoY5GL9QGaXHS.kN4vbCY3hcO7LQAMfUqelw.Kr4oLVB6', '2025-02-07 11:16:17', NULL, 'bYWjeTAulObFr33hWsEsbQS6HJsaSYJ4aD2YKK6xV5NRNRvZ52uyAxJaYYNA', 277, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 15:46:33', '2025-02-07 12:16:33'),
(278, '09380693388', 'محسن', 'جعفری', 2, 1, 0, '0860357724', '203748', NULL, NULL, NULL, '770170000000342240107005', '6037998166124874', 396, 11, NULL, NULL, 11, 396, NULL, NULL, 'image69341739204218.jpg', 4, -1, NULL, '1037', '1738941212', '$2y$12$9mUe4hBjF86bxQbW0XbRs.GglhL8AdMBFqP0DMpcle/Ixk8Tksake', '2025-02-07 11:41:41', NULL, 'UXHeZdulZvUlxkEaffS2w43X1W02RJZxuDgwKkqOqR4hDMd8aVhkRBFE617F', 278, 1, 0, 0, 0, 1, 0, 1, NULL, '2025-03-01 12:51:52', '2025-03-01 09:21:52'),
(279, '09157031587', 'ابوالفضل', 'رحمانی نسب', 2, 1, 0, '0921979241', '157443', NULL, NULL, NULL, '800180000000004209925333', NULL, 396, 11, 'مشهد', 'بهارستان(کورده)', 11, 396, NULL, NULL, 'avatar.png', 4, -1, NULL, '9224', '1738941583', '$2y$12$1JArSTnNDF6Dy5aI.yZBI.7kGQ9UvqlLus.0UDS5Qpi.SY5htnGzW', '2025-02-07 11:49:12', NULL, 'nKF9LfTBHI2v1OWBS4LNVnjDKKvXHqpWf92ZsOSozFZJL7VDse9r5TirXd84', 279, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 15:24:22', '2025-02-07 11:54:22'),
(280, '09176030942', 'ابوالفضل', 'نوروزیان', 2, 1, 0, '5480016202', '255018', NULL, NULL, NULL, '440170000000364990439002', NULL, 251, 17, NULL, NULL, 17, 251, 'سروستان خیابان ایمان', '‏‪7345156954‬‏', 'avatar.png', 3, -1, NULL, '4817', '1738941735', '$2y$12$Yq6Q99ffKCAaCz/n7phdheF8kvKXXY5FCAWTbAOpVHwEbSWApn/mS', '2025-02-07 11:50:31', NULL, 'dZwrR7ULe1dmFXefK0AEKkWLIf3f0lKzPq03Ylw7Ba0wdF6FRFl7oJ3t0kli', 280, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 15:33:35', '2025-02-07 12:03:35'),
(281, '09903632446', 'رضا', 'جمالی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9848', '1738941869', '$2y$12$fTST/0biYl8Z94evp86K3O69uuU6trR0ypdsWVSF6mKclop7w7oAW', '2025-02-07 11:52:55', NULL, 'QNlkbFNDaSpYbbW0P78bR4aMybqQ9OqJumj9EkUlC79NVyDiy1yypdJvkbkr', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 10:50:54', '2025-03-01 07:20:54'),
(282, '09134930121', 'مرتضی', 'ایزدی یزدان آبادی', 2, 1, 0, '3091483037', '119884', NULL, NULL, NULL, '970600560270002871189001', NULL, 396, 11, 'مشهد', NULL, 21, 227, NULL, '9157965718', 'image75631738943118.jpg', 3, -1, NULL, '3085', '1738942355', '$2y$12$oVLpTdUL.u2Xcczrdqb.turYGktozwIDIMnwlEjHg467KpIJ8tjYm', '2025-02-07 12:02:17', NULL, '8J2CiHQzuJBheMKYfNPvB6a24FDe6k0sYMCrP4RyQWIsg8PF1CQfIy2n5Vj4', 282, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 11:21:48', '2025-03-01 07:51:48'),
(283, '09132768337', 'مصطفی', 'دستاران', 2, 1, 0, '1262043379', '70895', '23268', NULL, NULL, '240170000000302270652000', '6037997374210293', 332, 4, NULL, NULL, 4, 332, NULL, NULL, 'avatar.pngimage84391739272633.jpg', 3, -1, NULL, '2725', '1738942676', '$2y$12$zTAaYAtx71BO6X87wN93d.M3GhmJxjiA7U2xbQDBir9qfNguuVrS6', '2025-02-07 12:06:07', NULL, 'ojk7764c2FLbbHpskfDx6nCvYAn6NCl9IT6QdgRrOLdZeqj6aTYhjDt2EYYq', 283, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-02-25 14:08:52', '2025-02-25 10:38:52'),
(284, '09188503194', 'محمد ولی', 'دارابی', 2, 1, 0, '3662112332', NULL, NULL, NULL, NULL, '460150000015164062157281', '5999999997', 428, 30, 'نهاوند', NULL, 30, 428, 'نهاوند شهرک شهید حیدری طلاب .ساختمان محمد نهاوندی واحد ۱', '۶۵۹۱۸۹۱۳۲۹', 'avatar.pngimage71951738943597.jpgimage68661738943850.jpg', 3, 1, '0', '5680', '1738943340', '$2y$12$osdBgYf5r9sTO1y3rCnkG.6Bb2SbOZvR/zN1PpN3pv6FZ7375pG9C', '2025-03-10 08:51:51', NULL, 'kdwksbnWJh5AkDFp4CEraqNe8jsEHju0ZycocQmb9mSD5EYCJw4Kp7vDKOmh', 11, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-03-10 12:36:10', '2025-03-10 09:06:10'),
(285, '09161112701', 'محمد هادی', 'کوتی', 2, 1, 0, '1754728553', '۴۶۷۴۸', '۱۳۹۴۱۱۰۰۸۴۰۰', '۱۳۹۴۱۱۰۰۸۳۹۹', NULL, '120130100000000055180991', '5894631853078392', 49, 13, 'لشکر آباد خیابان امت پلاک ۲۰۵', 'اهواز لشکر اباد', 13, 49, 'اهواز لشکر آباد خیابان امت پلاک ۲۰۵', '۶۱۳۴۶۴۵۶۵۳', 'image84921739310881.jpg', 3, -1, NULL, '8707', '1738943463', '$2y$12$t0xyTTULGqY3ellZLpIkmeCK3x7z9rKTXBHOtdYMxKdIRS7YNIL4G', '2025-02-07 12:19:17', NULL, '7zO9xCZzrHcHsBJxoZUDWQA95XRZ2NDk0XKkIwv8Yb9i3ZEFoDnRzWfoo2Dc', 285, 1, 1, 1, 0, 1, 1, 1, NULL, '2025-03-01 11:51:35', '2025-03-01 08:21:35'),
(286, '09158164556', 'سید احمد', 'موسوی', 2, 1, 0, '0921516606', '157797', NULL, '139311030054', NULL, '890600360470002870669001', '6063731019566786', 396, 11, 'شهر جدید بینالود', 'روستای سلطان آباد نمک', 11, 396, '۷۵ کیلومتری جاده قدیم مشهد نیشابور بعد از شهر جدید بینالود روستای سلطان آباد نمک', NULL, 'avatar.png', 3, -1, NULL, '7682', '1738943943', '$2y$12$VUW171cbSsTt/bbOHpMP7ea1oWjUYHs7jXBuSTGneHNyRkvc5qYzm', '2025-02-07 12:27:16', NULL, '14kVCqlUaEhlhrSXUt5DOWRu83znPdFVtV5zQ1aTtQ1UINLOTIpemMr3NhG8', 286, 1, 0, 1, 0, 0, 1, 1, NULL, '2025-02-10 10:28:45', '2025-02-10 06:58:45'),
(287, '09185280961', 'اکبر', 'قنبری', 2, 1, 0, '0532556887', '88183', NULL, NULL, NULL, '680170000000305934322002', '6037997543674569', 19, 28, NULL, NULL, 28, 19, NULL, '3816981893', 'image79091739188315.jpg', 3, -1, '0', '7361', '1738944138', '$2y$12$HN9H0r8SBUbL40cXT7S1fO9T6BI21aVQtIA.uT.9wm4SAOzY32c7K', '2025-03-10 15:42:50', NULL, 'OndohpA6i2TD8p26qF7kmj9gaKcKMNul2U3QDFFk9L76sSDalywCzsmUhXLY', 287, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-10 19:12:50', '2025-03-10 15:42:50'),
(288, '09131952897', 'حسین', 'ایزدی خالق آبادی', 2, 1, 0, '3090162938', NULL, NULL, NULL, NULL, '110170000000104370086003', NULL, 396, 11, 'گلبهار', NULL, 21, 338, NULL, NULL, 'avatar.png', 2, -1, NULL, '5941', '1738944461', '$2y$12$fdcBifv2BtLBpMy7vZHqoe/hstRWVkTHDeR3Y3PxwF/Ht9GDkizv6', '2025-02-07 12:36:07', NULL, 'eoCkgbLV8KwfCZG2iuSH6cIiM6AeRgRpcOHkFkJ6iDJLusj9tOmPzcGVf5YC', 288, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 16:12:02', '2025-02-07 12:42:02'),
(289, '09159181494', 'مهدی', 'کمالی', 2, 1, 0, '0941721221', NULL, NULL, NULL, NULL, '540170000000306111394008', NULL, NULL, 11, NULL, 'قازقان', 11, 396, 'مشهد،رضویه،قازقان،مسجدجامع امیرالمومنین حضرت علی بن ابیطالب علیهمالسلام', NULL, 'image88471738946023.jpg', 2, -1, NULL, '2329', '1738945442', '$2y$12$excJ4SL1t7DqV4Vc8BAg.eq6eVaKSPupyT7r3oJ6BmofFWpMVEFWC', '2025-02-07 12:52:55', NULL, 'N7LQM2rOfSYkSd7WSfrCmdAyclhwuSY6jtNOEUnSJiHCZKDdUNeQajbWQQ52', 289, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-07 16:33:47', '2025-02-07 13:03:47'),
(290, '09153242207', 'علی اصغر', 'اصغری دشتی', 2, 1, 0, '0769878814', '114021', NULL, NULL, NULL, '670170000000317462805000', NULL, NULL, 11, 'مشهد', 'روستای جیم آباد', 11, NULL, 'روستای جیم آباد', NULL, 'image90041738994585.jpg', 4, -1, NULL, '2446', '1738948747', '$2y$12$X1wQb5AQoK34N2XMDWBn8.bHUJINZIliPCviyGFKQjjlbbHXeL03K', '2025-02-07 13:47:15', NULL, 'GC9R2Efeqe735UtKFv5grxGAO6AaLM4XwcRl7OrmhgKnGFe0PX9K0XEtoijx', 290, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-08 06:07:07', '2025-02-08 06:07:07'),
(291, '09151570644', 'محمدحسن', 'اشرفی شیرخند', 2, 1, 0, '0889819671', '104514', NULL, NULL, NULL, '710170000000302424915007', NULL, 396, 11, NULL, NULL, 10, 318, 'مشهد مقدس طبرسی شمالی۳ شهید جعفری ۷ پلاک ۷۵', NULL, 'image84571738950245.jpg', 3, 1, '4', '7977', '1738949704', '$2y$12$q.tzNQOlnMub.LQAITbKou5zX0xwMRxF8eLdmP/NnEOPqb7y7PYBi', '2025-02-07 14:03:20', NULL, 'kzHPN5jdq2wSPMzgxUPLMkY0nutgn3l8ckZyWZpgISEkPh2vuO0lFwytuleK', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-08 07:29:08', '2025-02-08 03:59:08'),
(292, '09159244017', 'محمد', 'امینی', 2, 1, 0, '0703263161', '7611110695', NULL, NULL, NULL, '520170000000328801603004', NULL, 396, 11, 'مشهد', 'خواجه ربیع', 11, 396, 'خواجه ربیع خ شهید یوسف زاده 6/11پلاک 1', NULL, 'image21601738951541.jpg', 3, 1, '4', '3745', '1738950855', '$2y$12$w.zhDLm1dQK4FULoIibfcuOdkLoBA/6phMkRELio7yYGdZyyFd/4q', '2025-02-07 14:22:27', NULL, 'e0mc3y7okZH0BiggXGofVAZkh1xxXFkDMQa3BPXSsyHUM643LN2uFpdIc2uE', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-08 19:59:04', '2025-02-08 16:29:04'),
(293, '09158958986', 'حسین', 'جنتی راد', 2, 1, 0, '0889667926', '108278', '82174980', NULL, NULL, '490170000000102884159003', '6037998139660400', 396, 11, 'مشهد', NULL, 11, 396, 'مشهد بولوار حر ، حر ۲۸  ، اروند ۳۱ مسجد جوادالرضاع', '۹۱۵۹۹۹۳۵۴۱', 'image53381739133425.jpg', 2, -1, NULL, '1237', '1738952527', '$2y$12$8IdwGrrTZOlyo9W6YkVpX.cfFbcszaAVTcL9fpxHBid1GjfKaZ7AW', '2025-02-15 03:37:11', NULL, 'LouvJbqVBkqlffKVxjNPldXngJq6sXt9I67qhFK5QAkNVSZzojOzk4TyLHNN', 293, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-02-25 13:40:06', '2025-02-25 10:10:06'),
(294, '09391753855', 'سید محمد امین', 'حسینی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5235', '1738953537', '$2y$12$fDqPpl7F5a4vUAm2svvRsOPiYxQm6G3CGIMfYqlbipzU8I4odI.ji', '2025-02-07 15:07:07', NULL, 'Pg5NPmeLTFcl11M2j4O1Ht8apiRsNtTxumN54CP9UoHN4PpxsAv5dtrI47Vw', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-07 18:37:07', '2025-02-07 18:37:07'),
(295, '09387387815', 'احمد', 'سنگل آبادی', 2, 1, 0, '0690115921', '155643', NULL, NULL, NULL, '080170000000316979111003', NULL, 396, 11, 'مشهد', NULL, 11, 396, 'سیدی دایی ۶۰/۱', '9111111111', 'image4431738955149.jpg', 3, -1, NULL, '9232', '1738954798', '$2y$12$dc/RJnA/x1v5uIeEcdbKt.tUJ2TK3zqq.sT81JNFrTzGg5/uCjdXm', '2025-02-07 15:28:13', NULL, 'EQGyKNE0Wfe0BxrnuXte4KswhjFXN0UEGJMb4e1PDI67GsgsGHb0L7LFCjr4', 295, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 11:55:17', '2025-03-01 08:25:17'),
(296, '09158940019', 'حسن', 'انفرادی', 2, 1, 0, '1064071198', NULL, NULL, NULL, NULL, '890170000000308445565003', '6037997585209787', 396, 11, NULL, NULL, 11, 396, NULL, '396', 'avatar.png', 3, 1, '5', '1861', '1738954876', '$2y$12$L7GWwozGdfvqKfgDQ7NpzeouLOGl1ndOQ/LC0HzuEkmP23chHDb26', '2025-02-17 16:25:03', NULL, 'VbYHZtuawalqG6u4wXHbTyeoT6snqRTamqDq6Xqq5RwRZlenRpnMrAeQpCfO', 296, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 12:04:49', '2025-03-01 08:34:49'),
(297, '09109920586', 'مهدی', 'خانی یدکی', 2, 1, 0, '0944218393', '۱۰۷۲۷۷', NULL, NULL, NULL, '130170000000305215808005', NULL, 396, 11, 'رضویه', 'خادم اباد', 11, 396, 'مشهد شهر رضویه جاده میامی روستای خادم اباد', NULL, 'image46531739009068.jpg', 3, -1, NULL, '1420', '1738956402', '$2y$12$h6uM1bFksrzm3ZuxvC403.1wVW2AlOJQ/2M/0RLLROpKlczqYQr2O', '2025-02-07 15:55:00', NULL, 'exiJi988MKcSAHsZPIbKNLqdJAs6TPwqxyri3pdLN9jVDZCpRV7n35qv0eMM', 297, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-02 12:21:22', '2025-03-02 08:51:22'),
(298, '09176243886', 'شیرزاد', 'حسنی شنبدی', 2, 1, 0, '6549603994', NULL, NULL, NULL, NULL, '620140040000710126615818', '6280231511875436', 17, 29, 'ابوموسی', NULL, 29, 17, NULL, NULL, 'avatar.pngimage14031739204433.jpg', 2, -1, NULL, '3313', '1738981848', '$2y$12$40DYJsiByPBoYW5MuRBcAO.svP.5CaPAOvMI9lmyfH4wWMcSn6AUK', '2025-02-07 22:59:01', NULL, 'SrlpFqzElCtux7gT8bAfRZ9DjETbxAyTvW6eYkzpj9sk7VirQ5AgUCeRjml0', 298, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 16:20:38', '2025-02-10 12:50:38'),
(299, '09155521920', 'علی', 'علیزاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7295', '1738983633', '$2y$12$FKEh6MuRCUq/w8AxJGS5x.rLdriz1H9opf2bo5sl2D9Ey7TJZqsaO', '2025-02-07 23:28:49', NULL, 'u5neBvWkrnJUtlSmHXYnW5xklO95ddpK9iOSi5oqJwEal5Zf0gcLkD50itti', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-08 02:58:49', '2025-02-08 02:58:49'),
(300, '09173073828', 'محمد', 'فقیهی امین', 2, 1, 0, '2298060894', '۲۲۹۶۵', NULL, '۴۵۶۷', '۳۴', '0601170000000303525432005', '6037997498997023', 283, 17, 'شهرک فرهنگیان', NULL, 17, 283, NULL, '۷۱۷۹۸۸۶۵۶۲', 'avatar.png', 3, -1, NULL, '5948', '1738995739', '$2y$12$k3HHmw7ARpiAtYtuG6/p.eUmPktnGg6jcbNJNO0SvjK1Gywv/BNt2', '2025-02-09 04:47:37', NULL, 'Zg0J59QlSV97ZFGUPqZaqTaXDTi6UB3BiKcPP1EvYMct7PMNTdDs4ZPuYGqq', 300, 1, 0, 1, 1, 0, 1, 1, NULL, '2025-02-09 08:24:25', '2025-02-09 04:54:25'),
(301, '09381307851', 'طاهر', 'کرم اله', 2, 1, 0, '1870007972', '‏‪223101‬‏', '‏‪75927‬‏', '۱۳۹۴۱۱۰۴۹۷۰۴', NULL, '070170000000322826844000', '6037997132687550', 277, 13, 'گوریه', 'روستای شیخ حسین', 13, 277, 'خوزستان -شوشتر -بخش شعیبیه روستای شیخ حسین  -مسجد امام حسن عسکری علیه السلام', '‏‪6453136745‬‏', 'image89791739187266.jpg', 2, -1, NULL, '3516', '1738999911', '$2y$12$/pAe1jHcmX4oJuxt0G7i6eixEsg4lfcl4LcrDs5kXir3smLo2LC3q', '2025-02-08 04:00:07', NULL, 'CqvqTTLufBGRUwykjhiQeRI27DjFO885mpaAZnXPxoFnoBASBG6q9taftdRW', 301, 1, 1, 1, 0, 1, 1, 1, NULL, '2025-03-03 10:03:42', '2025-03-03 06:33:42'),
(302, '09373261858', 'محمد ابراهیم', 'حیدری', 2, 1, 0, '0703258443', '107308', NULL, '139411057783', NULL, '45017000000010506107408', '111111111', 396, 11, 'مشهد', 'منظقه ۳', NULL, NULL, 'بین طبرسی شمالی ۶و۸ مسجد حضرت زینب سلام الله پلاک ۱۱۰', NULL, 'avatar.pngimage16511739004455.jpegimage37061739016879.jpeg', 2, -1, '0', '4897', '1739004244', '$2y$12$ild66RKmThOcM6ufTGdI..0PXrY6kWe/pHnF52Hu9eFJEnU.LE6Vi', '2025-02-08 05:13:01', NULL, 'iv4XpvVPCO9nb2QcFuwt9ttED6y4PFbbEr6o3KCiSyZBPnLSLd0Jezo0FCFC', 11, 1, 0, 1, 0, 1, 1, 1, NULL, '2025-02-23 09:01:16', '2025-02-23 05:31:16');
INSERT INTO `users` (`id`, `mobile`, `firstname`, `lastname`, `role_id`, `gender_id`, `is_not_citizen`, `codemeli`, `khadamat_code`, `tablighat_office_code`, `tablighat_organization_code`, `ovghaf_code`, `bank_account_number`, `bank_cart_number`, `city_id`, `province_id`, `city`, `village`, `native_province_id`, `native_city_id`, `address`, `postal_code`, `photo`, `education_id`, `status_id`, `level_id`, `confirm_code`, `confirm_time`, `password`, `last_login`, `creator_id`, `remember_token`, `editor_id`, `has_khadamat_code`, `has_tablighat_office_code`, `has_tablighat_organization_code`, `has_ovghaf_code`, `report_count`, `agree_count`, `work_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(303, '09128066830', 'محمد', 'ابراهیمی', 2, 1, 0, '6219895894', '47890', '24394', NULL, NULL, '880170000000109685656002', '6037991532021437', 86, 4, 'بوئین میاندشت', 'ششجوان', 4, 86, NULL, NULL, 'avatar.pngimage72821739197417.jpg', 2, -1, NULL, '7479', '1739005322', '$2y$12$xVdEyV6AVMxTdQP5jZ7zYeVsC8N/5YKkI416TfjhtXpGFnKYWKOWu', '2025-02-13 15:04:13', NULL, 'LgbTPs6IPN7YOvmcjyAQ5rS4HZXLnWdkb7GLx4fmgHj4XSRQRaiHtYtbUDkJ', 303, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-01 12:18:58', '2025-03-01 08:48:58'),
(304, '09396234010', 'عباس', 'فریمانه', 2, 1, 0, '5219767240', '100705', '139350661', NULL, NULL, '600170000000302374404007', NULL, 396, 11, 'مشهد طبرسی شمالی', NULL, 11, 396, 'مشهد ، طبرسی شمالی ۲۸ ، شهید خالقی ۲۹ ، پلاک ۳۶ طبقه اول', NULL, 'avatar.pngimage41761739007748.jpg', 4, -1, NULL, '5278', '1739006473', '$2y$12$3U.2DQP6V/uphIB6bjHiwO1az.NlP3KlwvFD8LNAfrSFiPKUC7Ju6', '2025-02-17 19:55:49', NULL, 'PpVxtVF7WTwhP4KdweiJCDoX67z0ROicdUIG52aCeKJQvL3hkQ0HgKcd3pQI', 304, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-03 10:02:19', '2025-03-03 06:32:19'),
(305, '09177517448', 'جواد', 'فلاحیان', 2, 1, 0, '2529781011', '81705', NULL, '139311005837', '60000001428533', '680170000000102014617002', '6037998225375475', 28, 17, 'استهبان', 'رونیز سفلی', 17, 28, 'فارس - استهبان - روستای رونیز سفلی -  کوچه مسجد صاحب الزمان (عج) - خانه عالم', '7446154465', 'avatar.pngimage62411739216285.jpgimage8611739216475.jpg', 1, -1, NULL, '2379', '1739008185', '$2y$12$4JAhoCk1M6EgLNzYb9V7VeXXcwxU6QhqOElPGTOYeNgRWC6.nZc3S', '2025-02-19 15:19:20', NULL, 'BAjY4scd1lOl7ymDNldR2hhSVMgMS9S9dpv29gWF1YIjcHSiQkbfhT6F3OSp', 305, 1, 0, 1, 1, 1, 1, 1, NULL, '2025-03-03 10:08:39', '2025-03-03 06:38:39'),
(306, '09151605223', 'علیرضا', 'نظری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8024', '1739008314', '$2y$12$20feLJF9ZEphoZ7i/.RywOAa/fuyLMOv4CExGLYBFJIf0OmBr2S1q', '2025-02-08 06:20:22', NULL, 'FZPiw3hQRqbD1Lt0a0RCaQWslVWhbZsYF7NITZVOqAnt17FQucho5iy9UeRD', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-08 09:51:06', '2025-02-08 06:21:06'),
(307, '09957379290', 'مهدی', 'غلامیان', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5608', '1739009079', '$2y$12$3NDc.Xfq27/opNzWYYjro.FZvq9hQFwP2cp89paZLYAydwDuKJX0G', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-08 10:02:34', '2025-02-08 06:32:34'),
(308, '09159619989', 'حسین', 'رضائی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2310', '1739010347', '$2y$12$6RzHTArvxVJYQf3W7Typn.6.JZg4/d3kzgBW7PUsiYYe2BXNwkTSu', '2025-02-08 06:53:59', NULL, 'IcU8US947rRQM3Ak1RaL55nLKjsnXDJlERhNiXB1maaJXbqOBGYPeibPrwNw', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-08 10:26:48', '2025-02-08 06:56:48'),
(309, '09338501106', 'محسن', 'غلامی', 2, 1, 0, '2420409639', '۲۰۶۹۳۰', NULL, NULL, NULL, '690170000000341554073000', '6037997537440548', 392, NULL, 'مرودشت', NULL, 17, 392, NULL, NULL, 'avatar.png', 2, -1, NULL, '9204', '1739010585', '$2y$12$/YyEIJiVsBpbOzzB8qMdo.mKoG6dUs.I6a08KnmMh1ZuGWMhftm8C', '2025-02-15 11:29:48', NULL, 'yDxqZ64rZBwoXqoS57Zx4J37ug8wqNSSYZwRyxJbMA6WWsKvQtA8L2qTUd7f', 309, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-02 11:22:46', '2025-03-02 07:52:46'),
(310, '09138562953', 'محمد مهدی', 'مومنی هامانه', 2, 1, 0, '4431693491', '26172', NULL, NULL, NULL, '680170000000104924966008', '6037997503635980', NULL, NULL, 'یزد', NULL, NULL, NULL, 'یزد بلوار نواب صفوی گوجه مسجد کوفه کوچه کارگر بلاک32', NULL, 'avatar.png', 3, -1, NULL, '6134', '1739010591', '$2y$12$9bfZdrX8oXi2PlEEOArYLuln0wfLFh8nBNmcE1h0gcQxGcQ9tORqq', '2025-02-10 12:10:42', NULL, 'SuZvP6cFkwHWMr5H6yDVwGAyOCOyKwtQjDGyjED2H7h1J2dDvwlSTWhWun8V', 310, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-23 11:02:43', '2025-02-23 07:32:43'),
(311, '09127530882', 'سيد عبد الکریم', 'موسوی نژاد', 2, 1, 1, '9613313265', '28265', NULL, NULL, NULL, '390180000000353900594363', '5859831026976976', 158, 17, 'قادر آباد ،محله مر غاب', NULL, NULL, NULL, 'استان فارس\nشهرستان خرم بید\nقادر آباد\nدشت مر غاب\nخیابان بسیج  مقابل مسجد ولي عصر عج\nکدپستی7375154889\nمنزل موسوی نژاد', NULL, 'avatar.png', 4, -1, NULL, '1133', '1739012128', '$2y$12$09F4EZQSOTns0EG93w0Cyu5gvQ759HL8kFI9Wge2A/vfcEm.z8JKG', '2025-02-08 07:24:00', NULL, '0twjIThWbfaJr6rYN2FcC3LP30q7SB9QDS7CHX15oaQnG0DFuk679SHTUNQA', 311, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 11:16:36', '2025-03-01 07:46:36'),
(312, '09143339216', 'حجت', 'گلچین', 2, 1, 0, '2900082226', '253190', '37747', NULL, NULL, '830170000000304723753002', NULL, NULL, 2, NULL, NULL, 2, NULL, 'پیرانشهر خیابان قدس', NULL, 'image69061739012655.jpeg', 3, -1, NULL, '2303', '1739012228', '$2y$12$tDwUTLVXTIwGnrA2KTGG8eNknNGvAjWzp7NeyXmRVmYZyRsFaugua', '2025-02-08 07:25:25', NULL, 'YqJMPb0kbCOs1ZHtgympvU3MqP4tjZfzaPQvK3Bg7RXmgA9KzO4it4KRcXJq', 312, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-01 11:56:49', '2025-03-01 08:26:49'),
(313, '09139547540', 'رحمان', 'حاجی حسینی', 2, 1, 0, '4431904921', '123818', NULL, '38206', NULL, '420170000000302340035000', NULL, 16, 31, NULL, NULL, 31, 448, NULL, NULL, 'image58551739013221.jpg', 2, -1, NULL, '3115', '1739012278', '$2y$12$XzFIXfkljYU8kslerB13kOI9R5kLFChvERSas5dt7yd9mkZ/2kepW', '2025-02-08 07:26:39', NULL, '2235LVPNJ4eZ7NCDfmiOm5sueXLhoVqY6Rq3Bxch08DPiINGYtcL14Vd87Uq', 313, 1, 0, 1, 0, 1, 1, 1, NULL, '2025-03-02 11:16:22', '2025-03-02 07:46:22'),
(314, '09192952489', 'مرتضی', 'یاری', 2, 1, 0, '0385014171', '78815', NULL, NULL, NULL, '3.1017000000030276e+23', '6037997391921377', 29, 30, 'اسدآباد', NULL, 19, 327, 'همدان اسدآباد میدان الغدیر خیابان ۱۵ خرداد کوچه جهاد سابق جنب مسجد قدس', '6544144209', 'image57401740287821.jpg', 3, -1, NULL, '5077', '1740284431', '$2y$12$AYQWvu0HCOu5Eka7oGxlX.HFP9vmE8gb2P49anhIysXr1UxGMd8h6', '2025-02-23 00:48:58', NULL, 'fdpzJjaaPgVXjeRXKzptpmaF2F6JxWOd5j8Kb69Z3z2g0cVZAMPAyd0mFXnO', 314, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 08:49:12', '2025-02-25 05:19:12'),
(315, '09191349901', 'روح الله', 'کریم زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8593', '1739015546', '$2y$12$q4fMWkatYpWcoSECOW6PEeqJt1Pz4byFQS.ljTgEDFZO.gTDMweTe', '2025-02-08 08:20:48', NULL, 'idcpFzuNOh28pdsJT0KRkx3vz0eQvpBrinHmGu6HxfKf80aMnJH7S4bGmd4h', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-08 11:51:28', '2025-02-08 08:21:28'),
(316, '09132619782', 'حسین', 'معین ابادی', 2, 1, 0, '6199727215', '۵۱۲۱۱', NULL, NULL, NULL, '570170000000303856734005', NULL, 7, 4, 'آران وبیدگل', 'بیدگل', 4, 7, 'بیدگل بلوار امام ک ولایت ۲۶', NULL, 'avatar.png', 3, -1, NULL, '9962', '1739016435', '$2y$12$1s6N9YaFsYMY.EZAyLI6b.gruX7LDP.M5cJmsTDr22sz7cOtizE8y', '2025-02-08 08:35:40', NULL, 'iSfbJCoPwicHG50SXw5mJJ7vq3cIJRsmgwtnNhyqNWRuOICPX2TOMbdmZAYN', 316, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 11:57:02', '2025-02-25 08:27:02'),
(317, '09387676517', 'سید حسین', 'حسینی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3272', '1739017615', '$2y$12$tqwurmSaEoBaktPCutv7deSA91sEtOh5kroe1nTE8AA3wrzDNf8YG', '2025-02-08 08:55:40', NULL, '5oiI1enRicxYX2oJ7VY0zL3EQdmStZcjjj3zmpJ5DxtM6ubvI8u7MzJjIMit', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-08 12:25:40', '2025-02-08 12:25:40'),
(318, '09394655447', 'سیّد جواد', 'سادات شهابی', 2, 1, 0, '2093536676', '۸۸۵۶۴', NULL, NULL, NULL, '850170000000107286311004', '111111111', 396, 11, 'مشهد', 'کاظم آباد پنجشنبه', 11, 396, NULL, '۹۱۹۹۱۶۰۶۷۶', 'avatar.png', 1, 1, '0', '8435', '1739020316', '$2y$12$cXwQmheVw8YSqFS/TdPcLe7lXnrZh2qsPdZM.9sGMTFkIuB9ZNqjW', '2025-02-08 09:40:31', NULL, 'MbklGRJ5EFoyQ1Hy6cfoL5Rr1mqYvYbcTtXWYvw3MKZ77TZvwIxd4ACJtUEe', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 12:56:26', '2025-02-10 09:26:26'),
(319, '09133285731', 'روح الله', 'امینی رورانی', 2, 1, 0, '1284238954', '127356', '41349', '1067491', NULL, '570170000000305109169002', NULL, 37, 4, 'اصفهان', 'روستای روران', 4, 37, 'اصفهان خیابان آبشار کیلومتر 30 براان جنوبی روستای روران خیابان شهید احمد شجاعی بن بست 8 پلاک 616', '8168155780', 'avatar.pngimage2541739025148.jpg', 2, -1, NULL, '6290', '1739024857', '$2y$12$arfR0TlrhTsldLncdAM0EuWMRFvoGzJQrTag8to2ELgEJrzFb2F1G', '2025-02-19 14:21:59', NULL, 'PkO6NPqaZFQnAUtCf5IqeCB7qTYm5o3iH6Ij8u0inI32l0ZbpT8rJ5HUwogG', 319, 1, 1, 1, 0, 1, 0, 1, NULL, '2025-03-01 12:36:06', '2025-03-01 09:06:06'),
(320, '09024478560', 'علی', 'دردایی مایوان', 2, 1, 0, '0860121607', '159077', '54674', NULL, NULL, '300170000000336518907007', '6037991753913874', 284, 12, 'شیروان', 'رضاآباد شرقی', 12, 284, 'خراسان شمالی شهرستان شیروان روستای رضاآبادشرقی\nمسجدامام رضا علیه السلام', '9487147999', 'image91591739607599.jpg', 3, -1, NULL, '1365', '1739025519', '$2y$12$cYvEk3QAHBRyhUCMGgDCWuxeSYqcBL8mSEbfMZwVcBPsUIcS/6fa.', '2025-03-06 14:57:35', NULL, 'i3wUsz0zA5rpymsF6WUaVBk7Ez9nNjRkqAh6ZY614YpNArnFlsDBJ59BsDHF', 320, 1, 1, 0, 0, 2, 1, 1, NULL, '2025-03-06 18:27:35', '2025-03-06 14:57:35'),
(321, '09107558340', 'محمد', 'رضایی آدریانی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5511', '1739025548', '$2y$12$vTdKEWGnzYXglMa4BJgjc.I.IDisoINkmBD3TT7tiX7Z0mSWGhcDa', '2025-02-08 11:07:27', NULL, 'cqBnZ8NJRcwR3KNAX7ctS7Z9cbY6n84ashFFnWULfTLZ1UHojqNIFfhTJHTk', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-08 14:38:11', '2025-02-08 11:08:11'),
(322, '09198677464', 'علی اکبر', 'یزدی', 2, 1, 0, '3060306281', '249288', '۳۳۴۱۷', NULL, NULL, '130170000000220209580003', NULL, 396, 11, 'رضویه', 'چنارک', 21, 264, 'مشهد رضویه چنارک خانه خیابان قدمیان بین ۱۳ و ۱۵ خانه عالم', NULL, 'image30421739027399.jpeg', 4, -1, NULL, '7533', '1739027201', '$2y$12$pg60D0ZsiIzDD/VHCDx9fu0XDU/3lm3OpirynN5XAKQscaWYpD3OS', '2025-02-08 11:34:48', NULL, 'JhaEaFa4Ay8erC6iYUzSdZijqG2cTc2D55zcDKiwyjbXZtRNKvAw312qZZFV', 322, 1, 1, 0, 0, 0, 0, 1, NULL, '2025-02-08 15:10:03', '2025-02-08 11:40:03'),
(323, '09359899071', 'مهدی', 'برزگر', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1740', '1739030480', '$2y$12$vkIqkFct61N692gCz.Y8/e3yzNxn/VAdEMbZwvPNrwpdB61i.Quly', '2025-02-08 12:29:29', NULL, 'JagPVuETyYGKYqZ4WMw7rWxKwtdxj1yzD9a5WCpXc4tzhZx5BDniJY5socN9', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-03-03 10:02:43', '2025-03-03 06:32:43'),
(324, '09366453218', 'مصطفی', 'معلم', 2, 1, 0, '0921001363', '216166', NULL, NULL, NULL, '890170000000109048595001', '6037997386944970', 396, 11, NULL, NULL, 11, 396, 'مشهد-گروه حیدریون-سیدی شهید دایی۶۰ پ۱۰۸۰', NULL, 'image72271739100466.jpg', 3, -1, NULL, '4258', '1739032556', '$2y$12$BXp8tfnsp6o45.Wtt9Pr3.hdLpFrNfv8kzgB9KGX9JVMjitESYh1y', '2025-02-08 13:04:02', NULL, 'T7hwZp6uxtXky6B0hOZ69LFLAjKit7R6qvJhed49sbMsygP2roajlgeCP9uD', 324, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 11:20:15', '2025-03-01 07:50:15'),
(325, '09360475523', 'محمود', 'صف آرا', 2, 1, 0, '0829425098', '113884', '50147', NULL, NULL, '210700001000114813948001', '5041721090497695', 396, 11, 'مشهد', '50147', 11, NULL, 'مشهد مقدس قاسم آباد حسابی جنوبی ۱۱ مجتمع ولایت طلاب بلوک ۲۵ واحد ۵', NULL, 'image52151739277806.jpg', 3, -1, NULL, '5731', '1739032821', '$2y$12$y3lJ8Szd606KCP0jHVA57OWYeSRulOweA6InIOc6tYZjozjY.tAva', '2025-02-08 13:08:33', NULL, 'nj37b3tDDToTj8aUeeqDzwvSdUpFjbUGnqVaL50mRl28CcbMZxRzUbK7q0tD', 325, 1, 1, 0, 0, 0, 0, 1, NULL, '2025-02-11 13:03:53', '2025-02-11 09:33:53'),
(326, '09197463909', 'سید ابوالفضل', 'اکبری جعفرآبادی', 2, 1, 0, '0370513691', '216358', '32856', NULL, '0370513691', '830170000000322989532002', '6037997477706262', 327, 19, 'قم', NULL, 19, 327, 'هفت تیر کوچه ۷۸ کوچه فجر پ۲۸', '3719917765', 'avatar.png', 4, -1, NULL, '3782', '1739607610', '$2y$12$iSrep4h2D/InchQeQVhoZurX4BOiIRA36tCdDH0RDIUmZBXceOLHe', '2025-02-15 04:48:17', NULL, 'agMmouVYIISHA1KGgzqO596VvEhTWC2D8wePSSnTvjdVe1O7p2w6eam29bhG', 326, 1, 1, 0, 1, 0, 1, 1, NULL, '2025-02-17 20:13:05', '2025-02-17 16:43:05'),
(327, '09145112280', 'رعنا', 'رحیم لو', 2, 2, 0, '2909827674', '122941', NULL, NULL, NULL, '9101700000000115976615004', '6037998225874113', 423, 2, 'نقده', 'محمدیار', 2, 423, 'محمدیار بلوار امام رضا علیه السلام بخش فرهنگیان کوچه پروین اعتصامی', '5766139135', 'avatar.png', 3, -1, NULL, '7840', '1739039368', '$2y$12$hO1epIjLOY7US2Wr7sC0m.uWnTv1ybRMyPQSC87tTVcoz/qptDTwK', '2025-02-18 02:21:25', NULL, 'udgTwiq0v3umRt0AOKGoLRHxXcG48GMvTu3fvWUXJhoWAUikiDgtsATdMBBw', 327, 1, 0, 0, 0, 1, 0, 1, NULL, '2025-02-18 05:51:25', '2025-02-18 02:21:25'),
(328, '09198698516', 'مرتضی', 'سراوکی', 2, 1, 0, '2949855369', '88013', '28261', NULL, NULL, '390170000000303269190003', '6037991946710443', 423, 2, 'محمدیار', 'محمدیار', 2, 122, 'آذربایجان‌غربی، شهرستان نقده بخش محمدیار،  بلوار شهید بهشتی، جنب مسجد صاحب الزمان', '5766113458', 'image78831739099385.jpg', 3, 1, '0', '6710', '1739047756', '$2y$12$w0SvqGzH/rh1CKUledWTquSMr4OOTMLoNM121ddkrouPY6YZrcUvq', '2025-02-08 17:17:26', NULL, 'y0NQbF776XkjC7inGrWteOKs0OBpvajwQp3eAJKpdEZtiYSyMJl8ThZaUCbd', 11, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-02-25 12:24:19', '2025-02-25 08:54:19'),
(329, '09132026138', 'محمد', 'قنبری جزن آبادی', 2, 1, 0, '1249811181', '9757', NULL, NULL, NULL, '370170000000304687535000', '6037997527897764', NULL, 4, 'اصفهان', NULL, 4, NULL, 'اصفهان خ معراج خ شهید اول بن بست گلبهار 9 پلاک 74 طبقه سوم', '8198937995', 'avatar.pngimage47331739127014.jpg', 3, -1, NULL, '3285', '1739076750', '$2y$12$iq2RS5suZlKciVaiWbyiVuTpWY.EOJ5TkJxpx3ffT4uVS69GsjkPC', '2025-02-22 14:09:30', NULL, 'J2Tw4lFSaoK4ZH6KUTpAq9MSZScVRssRp4HNuzULjlDEJ5a0GTdQmOAgKKx5', 329, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-02 12:18:50', '2025-03-02 08:48:50'),
(330, '09193393899', 'امیر', 'مهدوی فاضل', 2, 1, 0, '5699955976', NULL, NULL, NULL, NULL, '520170000000302742967000', '6037997556165067', 94, 8, NULL, NULL, 8, 94, NULL, NULL, 'avatar.png', 2, -1, NULL, '8604', '1739086119', '$2y$12$HLapc6/N3DZiZdN3ehGWYOFQA8LIVTIFWBL4.P69E9LQR0izhcjOC', '2025-02-23 06:52:01', NULL, 'qTECPLRhq5Y4RHp6gF9Qw5w0kPN590Dn1dSMzrXtRKMZvo8LkNgxKwgvwRXj', 330, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-03-02 12:37:24', '2025-03-02 09:07:24'),
(331, '09113743225', 'محمدرضا', 'ممشلی', 2, 1, 0, '4889033017', '۳۹۸۵۴', NULL, NULL, NULL, '160170000000300527515002', '6037997266816496', 417, 24, 'گلستان مینودشت روستای قلمی خیابان شهید عبدلی کوچه صداقت 1 پ۳۸', 'قلمی', NULL, 417, 'گلستان مینودشت روستای قلمی خیابان شهید عبدلی کوچه صداقت 1 پ۳۸', '4981161212', 'avatar.pngimage82691739203515.jpgimage63661739204141.jpg', 2, -1, NULL, '2847', '1739087599', '$2y$12$ef484GddXDLhLYpWXuvHAeavssP2ABSoYBZdJhMwRdn9UAOY3DALu', '2025-02-17 16:16:47', NULL, '9X87BJdybVnOAZ9LWskYRj2YoyvZoMWXobKm9o5aFDlLr6CdLC8yTa9FzJfK', 331, 1, 0, 0, 0, 1, 0, 1, NULL, '2025-03-02 12:39:27', '2025-03-02 09:09:27'),
(332, '09152089747', 'سیدحسن', 'علوی', 2, 1, 0, '0700512179', '113486', NULL, NULL, NULL, '700170000000302415678006', '6037991769233929', 396, 11, 'مشهد', NULL, 11, 396, 'مشهد مقدس\nگروه حیدریون\nهدایت 1\nصفدری 13\nپلاک8', NULL, 'avatar.pngimage19051739090681.jpg', 3, -1, NULL, '7421', '1739087793', '$2y$12$4jWfUpgmbROoCiJNAj.Av.WCQEMTA2uzVBC4LR34RbMrNGPaCqWIa', '2025-02-09 04:24:54', NULL, 'wRIgiuFwiGJVc305k6nyKQikvxqmrzpYe2kyVqHsxfJ2aqsjt60x6gwJzPDA', 332, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 12:46:32', '2025-02-25 09:16:32'),
(333, '09144549793', 'تقی', 'همتی کنزق', 2, 1, 0, '1467467766', '99958', NULL, NULL, NULL, '960170000000207329146001', '6037997196977640', 103, 3, 'پارس آباد', 'تکله کندی', 3, 103, 'روستای تکله کندی جنب مسجد جامع خانه عالم', '5693149311', 'image74041739277767.jpg', 2, -1, NULL, '4724', '1739088545', '$2y$12$aA1SYTmuxdRO8SjmZCV7FuRVZYPI9deB.98yH5VasW9.iK7GaqZhm', '2025-02-09 04:37:25', NULL, 'jbYoV74kVyra4H8mGSxxl7KYVv75I6iiFdyVKBoHVUQmONDNfwq4O7PVmewa', 333, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-02 12:45:57', '2025-03-02 09:15:57'),
(334, '09361497315', 'ابوالقاسم', 'قاسم فام', 2, 1, 0, '0386382761', '86448', '23923', NULL, NULL, '680170000000342704946008', '6037997378022629', 327, 19, NULL, NULL, 19, 327, 'نیروگاه بلوار جمهوری  خیابان گلستان کوچه ۳۱ پلاک ۲۴', NULL, 'avatar.pngimage42131739090009.jpg', 3, -1, NULL, '3832', '1739088840', '$2y$12$Joh1eG/d7qLScIgpkV5pN.AnjnprWuAzuSNHVItEbnDAMqXdUdKp.', '2025-02-09 04:42:49', NULL, 'p1fWPKIV4E8ToYqfl8AkFiEwnciPHyAlhGCrNVpyYBw4f6A5KCbPlkZ94rLa', 334, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-02 11:24:36', '2025-03-02 07:54:36'),
(335, '09154822767', 'محمدرضا', 'فقیهی', 2, 1, 0, '6359912198', '157946', '53174', NULL, NULL, '970170000000342810371003', '6037997561719890', 396, 11, 'مشهدمقدس', NULL, NULL, 298, 'مشهدمقدس - عبادی ۱۳ پلاک ۷', '9145633975', 'avatar.pngimage16651739164818.jpg', 4, -1, NULL, '6019', '1739088869', '$2y$12$R9K.zT/ZCNpMG/dfLhI6S.blNIyAJ7fX7zSmdBoVB5bvcYYXDk4/6', '2025-02-22 04:22:38', NULL, 'tpaauGbpp5o9LIRc8WjX2d5pRGfrh0MvIzD8KHzRMaHwu2SBYzYR9FDm10xa', 335, 1, 1, 0, 0, 0, 0, 1, NULL, '2025-02-22 07:52:38', '2025-02-22 04:22:38'),
(336, '09901606947', 'امیر', 'صادقی', 2, 1, 0, '0921711700', '202751', NULL, NULL, NULL, '190170000000216194352001', '6037997381313213', 396, 11, 'مشهد', 'رضویه', 11, 396, 'مشهد مقدس، گروه حیدریون، شهر رضویه خیابان کوثر 3پلاک22', '9167116448', 'image26561739091080.jpg', 1, -1, '0', '6860', '1739089038', '$2y$12$CPT6yaAa0nC.Cim8x/c4Aure8gWju/2/j7cRWKCDfwknIKfOz5N5W', '2025-02-09 04:45:27', NULL, '14cKTsnr0O57NN86BO5tYvC0TgYUHmnQjmYckqKvtybNwr1O6QUecr0a3hqm', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 13:27:02', '2025-02-10 09:57:02'),
(337, '09038005535', 'محسن', 'آهنچیان', 2, 1, 0, '0924932511', NULL, NULL, NULL, NULL, '79122421', '6037997772055084', 396, 11, NULL, '396', 11, 396, 'مشهد مقدس', NULL, 'avatar.pngimage68661739108439.jpg', 2, -1, NULL, '6177', '1739089192', '$2y$12$p6ATGYZxOjCxXEhzMjzoLOlaiqRP1kGCbiWtzWBcb6Iva0zFI3mx6', '2025-02-09 10:07:56', NULL, 'nJM8bqcgeQI4nSaD54a9mgRR5dC8OZa5u4bCDIlLh69HyL9rHQiAjgroYTst', 337, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 13:40:44', '2025-02-09 10:10:44'),
(338, '09156563557', 'سید مهدی', 'حسینی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3871', '1739089211', '$2y$12$Ul9RHKd0Zym6n4N1p6sAnOBcW856Khha4XECK.1PnIVkKEhc2vFXa', '2025-02-09 04:48:19', NULL, 'j1A7HWFUzaNBIrIr0owdAKZzhhXKyFMuma846j6KKXGCMMjQ0z0mx24VjnFW', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 08:19:22', '2025-02-09 04:49:22'),
(339, '09934108912', 'مرتضی', 'پندور', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6217', '1739089217', '$2y$12$3nsvcDdGYCiTbyNR2XO70OVWdHsmEI3mnNQOPlNTzV1M6oSunmQsG', '2025-02-09 04:48:23', NULL, 'gP19Exh6JaTbf6LbQogketESeWbbb7SaSBq37iaxJJIGBQA1WWfRqEPFpRUg', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 08:18:23', '2025-02-09 08:18:23'),
(340, '09155757609', 'مصطفی', 'سلیمی زارع', 2, 1, 0, '0901297062', '194656', '53010', NULL, NULL, '640170000000336630731002', '6037997463148586', 65, 12, 'بجنورد', NULL, 12, NULL, NULL, NULL, 'image17641739206205.jpg', 4, -1, NULL, '4019', '1739089243', '$2y$12$.gm9XIjt5vJZEbECO/bhme5Q8FKJgCot5lmQzdXiXtqgTf.jN3iMG', '2025-02-09 04:48:54', NULL, 'vLQi85L3JpmMbIh1JK80E0NcrHLXWd03bkEsU5BhoMXvbSWHUrJGsNMojlAf', 340, 1, 1, 0, 0, 0, 0, 1, NULL, '2025-02-10 16:50:16', '2025-02-10 13:20:16'),
(341, '09156453956', 'محمد', 'احمدی', 2, 1, 0, '0921069715', '۱۵۵۶۱۷', '۵۳۶۱۲', NULL, NULL, '830170000000108886476002', '6037997129045408', 396, 11, NULL, NULL, 11, 396, 'مصلی ۷ گوهری ۱۳ پلاک ۸', NULL, 'image66701739206394.jpg', 4, -1, NULL, '4568', '1739089334', '$2y$12$JzKzuDqaRykGPyFmS5IvYeXodOOP6ZieUo/xVbc3lGwyCXRaLLoW2', '2025-02-09 04:50:22', NULL, '1zYKIiMeLMk4euFoFSUgRl2DLS2abwpRZbVxTyP0A0rBEGwrQTLytoyVTVmU', 341, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-01 12:45:05', '2025-03-01 09:15:05'),
(342, '09305103818', 'حمیدرضا', 'بیاراست', 2, 1, 0, '0924247215', '327104', NULL, NULL, NULL, '610170000000118948021006', '6037991545254629', 396, NULL, 'مشهد کامیاب۶۲تاجری۱ پ248واحد2', NULL, 11, 396, 'کامیاب۶۲تاجری۱ پ248واحد2', NULL, 'image56801739089753.jpg', 4, -1, NULL, '4337', '1739089455', '$2y$12$wemGxCsLkb3YH.HxlmxzQOdYSlBEwuYaAISiPmvG7erxQEXXlH2gq', '2025-02-09 04:52:34', NULL, '86wKh2Cyfv1jXoXkjYCQQEgSQdPfzdwtLcZRrrV5QmkOwaf1TvhtnwdzR9PO', 342, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 08:29:14', '2025-02-09 04:59:14'),
(343, '09117281278', 'عبدالحمید', 'نیشابوری', 2, 1, 0, '2110333111', '۲۳۶۵۸۴', '۵۴۹۱۱', NULL, NULL, '290170000000336446164009', '6037997229505913', 396, 11, 'مشهد', NULL, 24, 362, 'مشهد مقدس گروه حیدریون\nخیابان مطهری شمالی ۵۰ پلاک ۹ طبقه سوم', '۹۱۹۴۸۸۹۵۷۵', 'avatar.pngimage51611739090445.jpg', 2, -1, NULL, '9052', '1739089472', '$2y$12$.oDvFy0GlU53JViUII0QvuQRX/iGI.Rtd1/bH0o.P3h0n3ssaBR8a', '2025-02-09 04:53:40', NULL, 'CfD4bNC90EZLCxHIx4OlvCSo0QuIlYqEwt7z3TYRqSjq9KVwMTewuva8dr7Q', 343, 1, 1, 0, 0, 1, 0, 1, NULL, '2025-02-25 12:33:43', '2025-02-25 09:03:43'),
(344, '09156525213', 'سیداحمد', 'موسوی', 2, 1, 1, '9751599547', '323267', '52881', NULL, NULL, '290170000000348534621005', '6037998159395903', 396, 11, 'حاشیه شهرمشهدمقدس', NULL, 11, 396, 'مشهد مقدس  شهیدآوینی', '9157965936', 'avatar.pngimage31031739089746.jpgimage76551739091915.jpg', 4, 1, '0', '6595', '1739089559', '$2y$12$.fLuJw.v36zMJzBeMpOTBeijeWMIGyn4LyRUD4rG2E39QS9IbQ4/a', '2025-03-09 09:46:06', NULL, 'YJam3x2yRobJ3EmvQ1P21C3U0Np8gkCjgjDRtOANw8r2H7TJGuoPjYVQ2K3o', 344, 1, 1, 0, 0, 2, 1, 1, NULL, '2025-03-09 13:17:08', '2025-03-09 13:17:08'),
(345, '09152264653', 'سعید', 'زیبایی', 2, 1, 0, '0924653914', '371757', NULL, NULL, NULL, '280170000000355607855009', '6037997373180778', 396, 11, 'مشهد', 'خالی', 11, 396, 'خواجه ربیع بلوار بهمن14/12 پ 6', 'ندارم', 'avatar.pngimage16071739206797.jpg', 2, -1, NULL, '8512', '1739089621', '$2y$12$/uQT3Tz0whg4rtHke9Tkg.NgsManWd810N2abIBYpgnLHHFjHWhCq', '2025-02-09 04:55:13', NULL, 'RFRtQncT36l3cfZ8HbQrT9No1Z1nRa1G8p3FIcyzdO2Pr6BI5qkyZpNKJuqX', 345, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-10 17:00:01', '2025-02-10 13:30:01'),
(346, '09156047402', 'جواد', 'حیدری اول', 2, 1, 0, '0850172942', NULL, NULL, NULL, NULL, '0351376624007', '6037997544674451', 396, 11, NULL, NULL, 10, 76, NULL, NULL, 'avatar.pngimage46961739301147.jpg', 2, -1, NULL, '4046', '1739089827', '$2y$12$lNgYPLTX56pg6RtTa/zswuNJ7u/9SPhj7wQ0QRgSN6zyzrdggPtcm', '2025-02-09 04:59:11', NULL, '5Gkxw0N3q87d9HcmYIvIfAz6KzvOV9HK4TDIhCVtgmWxdSwpf7Loga4aoDfb', 346, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-12 08:59:53', '2025-02-12 05:29:53'),
(347, '09155033396', 'جواد', 'ایزانلو', 2, 1, 0, '0932287840', '۱۰۷۶۸۶', NULL, NULL, NULL, '120170000000303930756000', '6037991762672677', 136, 11, 'حکم آباد', NULL, 11, 136, 'خراسان رضوی شهرستان جوین شهرحکم آبادخیابان آزادی', NULL, 'avatar.pngimage99391739207846.jpg', 4, -1, NULL, '2249', '1739089852', '$2y$12$tBGjHTk20HMyU.f6SVCHF.utmI.1oH8s3MAR.LPuEP98HlBADBYhu', '2025-02-09 04:59:23', NULL, '0DQEKwOoiv7QE6inQIHh4UwCaLNZg0F15htREh1K7l1UvMpDkqaUFZLaYy52', 347, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 17:19:00', '2025-02-10 13:49:00'),
(348, '09336359713', 'سجاد', 'بهلولی', 2, 1, 0, '0810291592', '398356', NULL, NULL, NULL, '700170000000112821984001', '6037997570611427', 246, 11, 'سرخس', 'کلاته ی عوض', 11, 246, 'خراسان رضوی  شهرستان سرخس لقمان ۳', '۹۳۸۱۸۳۰۲۰۴', 'image19101739280037.jpg', 1, -1, NULL, '7659', '1739089955', '$2y$12$nd0ItE8TZLB6xnyZvOtY5.WAcu6WjYTpmEIqe9JA.dP8NdyXA6vey', '2025-02-09 05:00:46', NULL, 'mN3CdQhfN0E0yDHiQQUCGr5GIO1IBzYhDS0FogKgzYnrxi2K443SAiAdIqZ3', 348, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-09 13:51:46', '2025-03-09 10:21:46'),
(349, '09154249457', 'محمدجواد', 'علیزاده دری', 2, 1, 0, '0921812566', '197486', '0921812566', '0921812566', NULL, '440170000000107100212004', '6037997392193612', 396, 11, 'مشهد', NULL, 11, 396, 'مشهد مقدس_ گروه حیدریون\n\nرسالت ۸۱، نرگس ۶، بلوک ۲، واحد ۱۴', '9149161759', 'image89021739090980.jpg', 4, -1, NULL, '3024', '1739090280', '$2y$12$5t2yoaO5kBmEjWJiSYn0I.UROTAHy13Zn24tLj8P0I8zmOicWIf/y', '2025-02-09 05:06:11', NULL, 'pyyRimpmnZ8MbrJGXpAm8aEuLRW5C3P5mNaJrMxFHsoD4NVijfT4ueoAFomK', 349, 1, 1, 1, 0, 0, 0, 1, NULL, '2025-02-09 08:51:01', '2025-02-09 08:51:01'),
(350, '09028421765', 'رضا', 'امیدوار', 2, 1, 0, '0670239771', '365640', NULL, NULL, NULL, '430600380570005160366001', '6063731202542537', 396, 11, NULL, NULL, 12, 65, 'کانون تبلیغی حیدریون', NULL, 'avatar.png', 1, -1, NULL, '9360', '1739090288', '$2y$12$00l7OevF4J1.dDyoJnaeCu8IcZWEuYc3eX6ZFY8tyHQWZldlmJesi', '2025-02-11 01:16:37', NULL, 'KRZ9bqnARspeONmJgGruiewyiSHb9gm7UMUfcVVlTDixtOc3S9zQFry2BACR', 350, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-11 04:46:37', '2025-02-11 01:16:37'),
(351, '09151203850', 'علیرضا', 'جلالی کاتب', 2, 1, 0, '0946276196', NULL, NULL, NULL, NULL, '830600360470002869819001', '6063731019558213', 396, 11, NULL, NULL, 11, 396, 'میثاق ۱۲ مسجد حضرت معصومه س', NULL, 'avatar.pngimage82101739090937.jpg', 4, -1, NULL, '4360', '1739090693', '$2y$12$EZyBNS2N2RZM2Uqivq.fdOABrvTd60gQj2QDtiSCffz8ADkL9SbFi', '2025-02-09 05:13:03', NULL, 'xoIF0vOc0jJSZQjlgfuiKqdaNlTtCGglxl3XyKcaFACCTY7sMV01ICD6l5l4', 351, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 08:49:26', '2025-02-09 05:19:26'),
(352, '09903576516', 'علی', 'حسینی', 2, 1, 0, '5230154462', '382977', '54440', NULL, NULL, '380170000000227325957005', '6037998199012401', 396, 11, NULL, NULL, 10, 181, 'مشهد مقدس گروه حیدریون\nخیابان جمهوری 20 بین دهستانی 18 و 20 پلاک 1/76', NULL, 'image25861739091087.png', 3, -1, NULL, '4158', '1739090781', '$2y$12$R2hpG6.d53GAimBeKQlx.O4kXTg7xLorzxlDgrbjXEOA.On8Z0cPC', '2025-02-09 05:14:33', NULL, 'A1GN3VpKqoKmiMNywQF19hCD4BFwr5BPYzx8vnrcV2aoimSt0jkwrW9XO2rF', 352, 1, 1, 0, 0, 0, 0, 1, NULL, '2025-02-09 08:51:29', '2025-02-09 05:21:29'),
(353, '09384869140', 'حسین', 'فکور', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4815', '1739091152', '$2y$12$PW72wor6WB0129tvsju07eFmTJDM4P9HJvB9q/TYrI0WmyoCk6kT.', '2025-02-09 05:20:44', NULL, 'MPNlDIZqsu1olGZoh8heB9Wujnj0f91AvGJ0xvnKRhZjnzusaIxr3Ho5U4aJ', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 08:50:44', '2025-02-09 08:50:44'),
(354, '09157028958', 'محسن', 'نجاتی حاتمیان', 2, 1, 0, '0921653654', '۱۵۹۱۲۴', NULL, NULL, NULL, '6406003622700175774921001', '6063731195265369', 396, 11, 'مشهد', NULL, 11, 396, 'گروه حیدریون مشهد جاده سیمان کشمیری ۵۲/۱ کوچه اول سمت چپ بین پلاک ۱۶ و ۱۸', NULL, 'avatar.png', 3, -1, NULL, '6917', '1739091406', '$2y$12$r97hW2JMqNVcTw3NQjycOuosp43b4ew2G7Lw4jUWxly/6T4ON.8KW', '2025-02-09 05:25:58', NULL, 'OHLnIjmK1plc1r2s9SSbouYqsCPTsfJ0UhIQMMyB9CrxcmAKFVDGAMVRWgfT', 354, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 09:00:39', '2025-02-09 05:30:39'),
(355, '09386542484', 'شمس الدین', 'انصاری', 2, 1, 1, NULL, '154635', NULL, NULL, NULL, '630170000000323163038008', '6037991630424418', NULL, 19, NULL, NULL, NULL, 327, NULL, NULL, 'avatar.png', 4, -1, NULL, '7429', '1739091444', '$2y$12$P5DKwdl9LfNBNfo.X4nxruU4NQ/bfYSmYhuS9XXFfwX6stBpwQ99q', '2025-02-09 05:25:39', NULL, '9RBL5MHLtpU9FdxGo6l0d7dA2cqAv9SLeR9IrYaUaC3zb70d1b3545W73nkR', 355, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 09:08:02', '2025-02-09 05:38:02'),
(356, '09121120776', 'سَیِّدمحمدوَهب', 'آیت الهی', 2, 1, 0, '1376615101', '396365', NULL, NULL, NULL, '0170000000103423834000', '6037997426969888', 327, 19, NULL, NULL, 8, 126, NULL, NULL, 'avatar.png', 3, -1, NULL, '5058', '1739091482', '$2y$12$AIGG7rSqyv3WyQXoUA/jjeYcpxJGccsciYu9BU7Dv4l1E6hmbMzUS', '2025-02-12 07:11:09', NULL, 'MSZAxpby0X60FacWhe6nn5oOoAtP35xj1DKLaLciEy7PgTZpdV7uIphEYSp4', 356, 1, 0, 0, 0, 1, 0, 1, NULL, '2025-03-01 11:25:54', '2025-03-01 07:55:54'),
(357, '09380858161', 'محسن', 'حسین زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7428', '1739091592', '$2y$12$U7wa/Se2lJXLkVQxg8q3iOkVQ/PzUwayIcSHifuDLckrxluRdL.wO', '2025-02-11 12:05:30', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-11 15:35:30', '2025-02-11 12:05:30'),
(358, '09105002512', 'محمد', 'فلاح اسدآباد', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1409', '1739092666', '$2y$12$X11cZU68R8RBTu8kljaXwuWGREWOLpA/vib9Ehrjgr4tNs6rm8DK2', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 09:15:41', '2025-02-09 05:45:41'),
(359, '09155042592', 'محمد رضا', 'همتی', 2, 1, 0, '4723563792', '104706', '2684', NULL, NULL, '770170000000224453382007', '6037997473405554', 396, 11, 'مشهد مقدس', NULL, 11, 396, 'حیدریون\nمطهری شمالی 41 میلان دوم سمت چپ پلاک 40', '9193976739', 'avatar.png', 4, -1, NULL, '6199', '1739092627', '$2y$12$J/lJcYKXHB1mk9VPFihf4O17qGbA9q6ZIcHyowQ0fCEdM44LnnzyG', '2025-02-09 05:45:15', NULL, 'dq5pPVg9WjLFVtGUngIaXZgU9hO2yjWB53Z3nN88HJWID3WsZYc345POCFhp', 359, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-01 12:55:45', '2025-03-01 09:25:45'),
(360, '09304334171', 'محمد', 'فلاح اسدآباد', 2, 1, 0, '0889358931', '107264', '51718', NULL, NULL, '800170000000302883364005', '6037998127021540', 396, 11, 'مشهد', NULL, 10, 318, 'مشهد مقدس، گروه حیدریون، بلوار نبوت، نبوت 11، پلاک 9،', '9157614818', 'image89811739093148.jpg', 4, -1, NULL, '7321', '1739092768', '$2y$12$vZWSfZT.sXIZIUc1MpkAzOXbWz9NLtwX7Robg0Wd6CfNTVkXVbEwq', '2025-02-09 05:47:37', NULL, 'lFduhL6abQzaMzy5ZuelBCrJ3yYt4SBvpCDtljkqyz10mHfOi3Za89gQXYFV', 360, 1, 1, 0, 0, 0, 0, 1, NULL, '2025-02-09 09:36:55', '2025-02-09 06:06:55'),
(361, '09119007896', 'مهدی', 'اسلامی پور', 2, 1, 0, '6249701427', '198217', NULL, NULL, NULL, '460170000000307018711006', '6037997567459533', 358, 24, 'گالیکش .', NULL, 24, 8, 'استان گلستان .شهرستان گالیکش .خیابان فارسیان .فارسیان ۱۳ .پلاک ۷ .منزل مرحوم احمدی \nکد پستی .۴۹۸۳۱۵۹۱۷۹', '4964186933', 'avatar.png', 2, -1, NULL, '5342', '1739092930', '$2y$12$weZkrkvLubcKHGV/lLlegucNCDyRqi6IzbIJwgEQLUs3s5AqjNQve', '2025-02-09 06:17:24', NULL, 'wBCwf5GVZWlwmwQeqnJHKKvIRL3f242oawszY6IBY5NGLPJoF6OhxPaWSmlN', 361, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 09:47:24', '2025-02-09 06:17:24'),
(362, '09308190179', 'محمد صالح', 'جبرئیلی', 2, 1, 0, '0925999024', '396193', '54422', NULL, NULL, '450170000000315319380003', '6037997476993499', 396, 11, 'مشهد', NULL, 11, 396, 'مشهد مقدس-گروه حیدریون-پنجتن 39 نرسیده به فرعی 2 پ 38', NULL, 'avatar.pngimage82091739094711.jpg', 2, -1, NULL, '7658', '1739092984', '$2y$12$jAlmHRQUGfs1Eyv5OQiCx.VD2vXHYqw/8mhWWa0VhOVY/ikcarVMy', '2025-02-09 05:51:18', NULL, 'SGenMr60oJtYgp8fdB9nEx6VAQBllnY59xG7RStvxZJaa8RWoo0UMSsKXRH0', 362, 1, 1, 0, 0, 0, 0, 1, NULL, '2025-02-09 09:52:50', '2025-02-09 09:52:50'),
(363, '09232820221', 'محمد', 'افتاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7788', '1739093144', '$2y$12$XeApNFQbhabfGOqptUb5w.PEewxK4bqpVvzF77wPPjVEOs51sJ/ha', '2025-02-09 05:53:59', NULL, 'mvLY7ykuYKyC4ZezGKxCM5iYGQj4fOwRGUbWtHJPlesKIMvxzkUMTDLoPQtL', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 09:25:20', '2025-02-09 05:55:20'),
(364, '09158208774', 'علی', 'مرادی', 2, 1, 0, '0921394624', '356764', '139653786', '139611084643', NULL, '910170000000343720516000', '603799734140169', 396, 11, 'مشهد', NULL, 11, 396, 'مشهد مقدس _گروه  حیدریون_\nمفتح شرقی سخاوت۳/۴پلاک ۷۰', NULL, 'avatar.png', 3, -1, NULL, '8903', '1739093161', '$2y$12$RHqujmQnOqNq2weUTHOhWOtWumZ.MSFe18Ya2/GDETMuFyQbtzB0O', '2025-02-09 05:54:11', NULL, 'rNvXXjAiMRMJzoNpATNjE1LzKXJtlrBz0rBbLWOL6HGPUf8ysYzdqF4gYSMX', 364, 1, 1, 1, 0, 0, 1, 1, NULL, '2025-02-09 09:44:12', '2025-02-09 06:14:12'),
(365, '09159102790', 'حمید', 'خدادادی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1580', '1739093255', '$2y$12$.RnOcOfp55q6KA4UbhWF4eG/VPQrtGi3vO7/LrDxoIG2xANceF3da', '2025-02-09 05:56:01', NULL, '5i78NzIutOX3MVkPUHVwvzcGefgS2dUZiZsuxX1LXlLoK4tY0mlgLmIpYIUu', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 09:26:01', '2025-02-09 09:26:01'),
(366, '09921485573', 'رضا', 'پیمان', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8647', '1739093405', '$2y$12$s3g.DIfAAPgMVvapk5HUd.XBsIVTSPspnt7HVJwsFiZzddT7YLNBe', '2025-02-09 05:58:09', NULL, 'BhZO5jCvObmtiDzHVgjzpn32ZXYXEL7CqjZk57hfnoWMjDmQwvTXzkJY38aa', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 09:28:09', '2025-02-09 09:28:09'),
(367, '09398233187', 'محمد ناصر', 'میرزایی', 2, 1, 1, NULL, NULL, '۲۸۴۹۷۴', NULL, NULL, '85829825', '6037997773018743', NULL, 11, NULL, 'گلشهر', 11, 396, 'مشهد، خراسان رضوی ، گلشهر', '۹۱۵۵۸۳۶۱۱۳', 'avatar.png', 2, -1, NULL, '4074', '1739094225', '$2y$12$NMdK1u/gUGZa8ho38WOrb.pROVHe/h/yyliA9V1oLoS75K3mNpoWu', '2025-02-09 06:16:28', NULL, NULL, 367, 0, 1, 0, 0, 0, 1, 1, NULL, '2025-02-09 10:27:07', '2025-02-09 06:57:07'),
(368, '09158466694', 'حسین علی', 'حسینی نیک', 2, 1, 0, '5339001393', '179671', NULL, NULL, NULL, '670170000000116265104009', '6037998233042729', 231, 16, 'زهک', 'حسن خون', NULL, 231, NULL, NULL, 'avatar.png', 3, -1, NULL, '4547', '1739195341', '$2y$12$Xwk.BO7RlE7peex3.29e9uYllORpd3IS8EEQ2s..HXirHPU5hVgQe', '2025-02-10 10:17:16', NULL, 'x38BZgQSPAnnCYVcjHbId9ZKUisTrnzCgDRtlFLcQt26zupxStz08RsxygAF', 368, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 10:38:28', '2025-03-01 07:08:28'),
(369, '09198703219', 'رسول', 'قوجالی', 2, 1, 0, '2910034550', '182125', '27057', NULL, 'نمیدانم', '620170000000301582317006', '6037997500370730', 327, 19, NULL, NULL, 19, 327, NULL, '3749163851', 'image40401739095282.jpg', 4, -1, NULL, '3636', '1739095073', '$2y$12$V2IsyNQ0VfiqzVyVB6X7SexGlYs05D7qWZ0qSCg9uBT0Fnu9GUo2O', '2025-02-09 06:26:02', NULL, 'fTvaXb9TrPw0tB8OX3iE9UTHnHLXpfRdBzRAMop3FLmY3GYiprqcVv39aoup', 369, 1, 1, 0, 1, 0, 0, 1, NULL, '2025-02-09 10:02:18', '2025-02-09 06:32:18'),
(370, '09963235379', 'حسین', 'شهرآبادی', 2, 1, 0, '5720134913', '371558', NULL, NULL, NULL, '330170000000222880899000', '6037997341828862', 396, 11, NULL, NULL, 11, 396, NULL, NULL, 'avatar.pngimage51551739184541.jpg', 2, -1, NULL, '8840', '1739095473', '$2y$12$FBpJSp5pKDjnNBgXXCE02eLr1GdJd2eLHC.YC1m7GsdekS/eon7U2', '2025-02-09 06:32:41', NULL, 'jxzZ83gjNaMAj7GrNocpmQHEdGW6cDxPgtFVyX7jxrW48iDRGp70TULdSM3E', 370, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 10:49:41', '2025-02-10 07:19:41'),
(371, '09375708195', 'سید محمد علی', 'مصباح', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7702', '1739097683', '$2y$12$xlolGFLu6n2GvYlwn9sQVeUb65YFCwLxLVIhrT85vy12hLrTX3jQS', '2025-02-09 07:09:56', NULL, '4GVN1K2Ic0E1zL4HzLu4Yurlh0x4F5wwSHBfVQ6KwJjYc7mZ1frPqJ5WPfsu', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 10:29:40', '2025-03-01 06:59:40'),
(372, '09371246793', 'احمد', 'جان بزرگی', 2, 1, 0, '4848563321', '62030', NULL, NULL, '5154', '450170000000302143511006', '6037997261545561', NULL, 8, 'پاکدشت', NULL, 26, 27, 'پاکدشت سه راه جیتو مسجد جامع پاکدشت', NULL, 'avatar.png', 3, -1, NULL, '7130', '1739097712', '$2y$12$kxbdLZu7bGH6WAUtS3v7Y.UgJiW4t5HO0goVAnQX6T3JsyXGcBHZi', '2025-02-09 07:10:04', NULL, 'GhKbAeQpAlzKwwQVb2fp5c2xhmUrubvp3X33U13ZiaKFRWNmIVNE60GIwTFK', 372, 1, 0, 0, 1, 1, 1, 1, NULL, '2025-03-02 11:54:55', '2025-03-02 08:24:55'),
(373, '09366684277', 'محمدرضا', 'علیزاده', 2, 1, 0, '0021993841', '342966', NULL, NULL, NULL, '300170000000344411380004', '6037997510823942', 396, 11, 'مشهد', NULL, 11, 396, 'مشهد مقدس_گروه حیدریون\nشهرک شهید رجایی،  حر 52، پلاک 85', NULL, 'avatar.pngimage10351739097969.jpg', 2, 1, '0', '3636', '1739097804', '$2y$12$K6uYSrHIUUpdY944BuGofeQPIBlkKz7HMBO3Mu2P2nSk9DMMbBVZi', '2025-02-09 07:11:28', NULL, 'N5ejqQyvNTOSgkjNxrcEb45ZJnEM4DxnjZ75IeQTnuz9AEngeYIl51uAvNws', 11, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 14:00:59', '2025-02-09 10:30:59'),
(374, '09173428046', 'محمدسعید', 'رشیدی کیا', 2, 1, 0, '1829190350', '۹۴۷۲۸', NULL, NULL, NULL, '550170000000307581212001', '6037997459811601', 360, 23, 'دوگنبدان', NULL, 13, 160, 'گچساران کوی کارکنان ۱۹ جنوبی سمت راست فرعی دوم سمت راست درب پنجم', '7581695376', 'avatar.png', 3, -1, NULL, '1988', '1739184197', '$2y$12$SDOd1dPG3OkJCeuXRXGcIeKZPWmkXSWU7ZpBDZwMck0zVHJhybAzu', '2025-02-10 07:11:24', NULL, '6bLNV9h6CMxyQZxqLHoAPRfTyxq5ZmIWTuRsZQG3MKCXHzFPjBLP533MzCOE', 374, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 10:44:50', '2025-02-10 07:14:50'),
(375, '09361147263', 'سیدحسین', 'جهانی فاز', 2, 1, 0, '0939045990', '114084', '139455469', '139311021488', NULL, '040620000000100546163004', '0939045990', 396, 11, 'مشهد', 'روستای شهرک طرق', 11, 396, 'شهرک طرق ساعی۲۳رشیدیان۵پلاک۶۷', '9165111980', 'image71271739184918.jpg', 4, -1, NULL, '6246', '1739098442', '$2y$12$p3Y6BkkmfrZGfLbkIOQr8O9STf33Aj453iEXadlOoYZQ9sQat1kyC', '2025-02-09 07:22:13', NULL, 'sNsK44sed0YPe1x2cYICFEnOStE0qd6TNGD1CsqfoVV05Z0yr3jkJANpdptd', 375, 1, 1, 1, 0, 0, 1, 1, NULL, '2025-02-10 10:56:37', '2025-02-10 07:26:37'),
(376, '09377630161', 'جاسم', 'خواجه', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1708', '1739098964', '$2y$12$FNALeU3eIxqp6JA3D2DrZuYIC1wSHfFEGGMMRIT/iKP67iC.pPnW2', '2025-02-09 07:30:57', NULL, 'VKuiMB4WFf4s0Z1HEK9O64VkQ4Q2RwLCf7KYVlB7YAw1J6H5Xx2VjS9tFpwu', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 11:01:18', '2025-02-09 07:31:18'),
(377, '09153255604', 'رحمان', 'اسدی', 2, 1, 0, '0700824685', '101074', '۵۳۳۱۱', '۱۰۸', NULL, '390170000000301296514001', '6067991940418508', 396, 11, 'مشهد', NULL, 11, 396, 'مشهد محله ایثار بلوارمیرزاکوچک خان، میرزاکوچک خان ۸ پلاک۱۴', '۹۱۵۸۷۵۶۹۹۵', 'image68141739357845.jpgimage19051739358425.jpg', 2, -1, NULL, '6910', '1739100080', '$2y$12$yRFdbXYMM8OiJVxsShRnNuhisLWEBT55F16zQbPM4MmKjH5hzRsku', '2025-02-09 07:49:43', NULL, 'iTu5ymmXIaPIE8LPCuJ08kuNB4gsLZGykmnd21JSrf8GavJGDkPFPYJHMiQB', 377, 1, 1, 1, 0, 1, 1, 1, NULL, '2025-03-01 12:10:57', '2025-03-01 08:40:57'),
(378, '09929557855', 'احمد رضا', 'کریمی', 2, 1, 0, '1159255644', '۳۸۲۰۵', NULL, NULL, NULL, '730170000000303814009000', '6037991818164786', 306, 4, 'فریدنشهر', 'محله وحدت اباد', 4, 306, 'فریدنشهر محله وحدت ابادکوچه دانش خ ابوالفضل خانه عالم', NULL, 'image32311739109041.jpg', 2, -1, NULL, '6553', '1739100182', '$2y$12$ndAtFFwT5k.9VwxFlsPrtOns4cZqaEKBRFTwax2Yjncr3ZKVTBytS', '2025-02-09 07:51:18', NULL, 'dNBZfKz5X2Hx15xIDGnLYNWi8B5pDGBpKKD7Qr4w5uRMu2bjnBCPduOSejCk', 378, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 13:13:39', '2025-02-25 09:43:39'),
(379, '09365747506', 'صالح', 'کریمی', 2, 1, 1, NULL, '361791', NULL, NULL, NULL, '740170000000355746156005', '6037998158459122', 396, 11, NULL, NULL, 11, 396, 'گروه تبلیغی حیدریون', NULL, 'avatar.pngimage7381739100668.jpg', 3, -1, NULL, '5956', '1739100361', '$2y$12$77DGp6pLCZuFbiJ6OGcQ9.mMGWuwFuQbhe7NHbeNncbxDhmLwNHbq', '2025-02-09 07:54:15', NULL, 'TZeG6ZIPKYxGvxZW7tjKZ1DgJXBxMu7A3yrzWKuecYZv0yCZYTdQkRu0vh9U', 379, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 11:34:37', '2025-02-09 08:04:37'),
(380, '09166000922', 'محمود', 'منابی', 2, 1, 0, '1757512934', NULL, NULL, NULL, NULL, '660170000000107859379004', '6037997316739763', 49, 13, 'اهواز', 'حاشیه اهواز', 13, 49, 'اهواز نهضت آباد خیابان گلستان بین افشاری وحسینی پلاک ۱۹', '6134646915', 'avatar.pngimage7631739102739.jpg', 1, 1, '5', '6691', '1739100429', '$2y$12$H8XxZIbM1rBu3uxFsSmemO04JBzeZmdPtJf3A4KTGcaj6l8DG0Aju', '2025-02-09 07:55:20', NULL, 'qlJlPETuarTDASkR7OY7wZHxMM5LHSNHiQ5PLlgPDBBSTrcLrGd9D6tYG1CE', 11, 0, 0, 0, 0, 2, 1, 1, NULL, '2025-03-01 12:06:22', '2025-03-01 08:36:22'),
(381, '09132212936', 'کمیل', 'نادم', 2, 1, 0, '1199667511', '64868', NULL, NULL, NULL, '490170000000307276920005', '6037998149049891', 280, 4, 'شهرضا', '.', 4, 280, NULL, '8616864167', 'avatar.png', 3, -1, NULL, '2295', '1739100570', '$2y$12$nczmYqUVQX/HYA04wAyGOukWdKwB7NVTGGKj3S1a9XRjLTI5bw8H6', '2025-02-09 07:57:53', NULL, 'xFwHXM7OQ3PCTzrRObNKyZkl5oTTCDXooGSnU9sCnG3hR6Ay6JTrnrorG1oh', 381, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 11:32:57', '2025-02-09 08:02:57'),
(382, '09370640375', 'رسول', 'قیومی', 2, 1, 0, '0910083428', '350542', NULL, NULL, NULL, '250640011070071770908001', '0910083428', NULL, 12, 'مشهد مقدس _گروه حیدریون', 'خیابان طبرسی', 11, 369, 'مشهد مقدس گروه حیدریون\nطبرسی جنوبی \nمفتح ۶', NULL, 'avatar.pngimage54981739101541.jpg', 3, -1, NULL, '4569', '1739100993', '$2y$12$JgSseSE8zqgPMKNDfCuCIOPwpBfw8.mMCRstDLxoq0x.twJuaksgu', '2025-02-09 08:04:45', NULL, 'xEPVvLQauFCkPpn7QApLCoo2RD5XX1LRbj3BpwwjHrNMEJrnnPohtvAYtCPi', 382, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 11:45:45', '2025-02-09 08:15:45'),
(383, '09337829042', 'مهدی', 'عزیزی', 2, 1, 1, '9067536805', NULL, NULL, NULL, NULL, '080170000000355796196001', '6037998158849348', 396, 11, 'مشهد', NULL, 11, 396, 'مفتح شرقی۶ محور۱۳ پلاک ۱۱۳واحد۲', NULL, 'image90531739184631.jpg', 4, -1, NULL, '2700', '1739101504', '$2y$12$z8X5MqDSAwtoJaHm.OVEw.1YxPgOgnUhFI6XYCibmALsPZHxbcH.e', '2025-02-09 08:13:14', NULL, 'cGg2CKHiLZCmIZjbaSnSOCMcAX5GBcyaf6ff77GkW6HwVPVVuon3byWLc45O', 383, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 10:50:45', '2025-02-10 07:20:45'),
(384, '09923962095', 'رضا', 'غفاری مقدم', 2, 1, 0, '5530089240', '289389', NULL, NULL, NULL, '950170000000117984021008', '6037998282474252', 396, 11, 'مشهد', 'مشهد', 11, 396, 'مشهد گروه حیدریون', '9196963763', 'avatar.pngimage40431739285005.jpg', 3, -1, NULL, '4144', '1739101727', '$2y$12$Du8F6rdTxqX49NHC2or92eeWJr61FRjc3d9ijpMSLMWN4.KZcMBZG', '2025-02-09 08:17:00', NULL, 'p4CJzJrUr56ocvDxHkhl4ci0MGo1PSMSyrqvY2a2Teh25SCeKhFB0fn6zlDU', 384, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-11 14:44:02', '2025-02-11 11:14:02'),
(385, '09151045916', 'حسن', 'محمدی', 2, 1, 0, '0901978140', '۱۰۷۵۹۶', '۱۱۴۴۱', NULL, NULL, '930170000000304142662003', '6037997377735411', 396, 11, 'مشهد', NULL, 11, 396, NULL, NULL, 'avatar.pngimage81311739281997.jpg', 3, -1, NULL, '8904', '1739101939', '$2y$12$pgcpjjMLPEhPaU2/wAqxyuC8eaBdsoxKVnzOlA5VtsO6aGMAjhOla', '2025-02-11 10:14:16', NULL, 'w1ElSCV2DnvM3vYggj2qLkki0C1hLHDhTGaJD74j9OYiKbejk5hSImzrYEot', 385, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-02 12:43:04', '2025-03-02 09:13:04'),
(386, '09150751618', 'محمدرضا', 'تاجر علیزاده', 2, 1, 0, '0311268031', '351491', NULL, NULL, NULL, '310170000000335702713002', '6037998166749530', 396, 11, NULL, NULL, 11, 396, 'گروه حیدریون مشهد مقدس\nبلوار بهمن بین22و24مسجد مهدیه', '۹۱۹۹۸۱۶۳۹۱', 'image93611739183589.jpg', 2, -1, NULL, '7681', '1739101982', '$2y$12$Dj/m.nuxasxl3s5Zg/HBRe.doGdCRi6Qgf7K3sRCf8dYc6d0ZXQD.', '2025-02-09 08:21:06', NULL, 'EYik6xugOAp9f8OS8hQN2tu4iINdkv7Jw7v8nl3BGqGNmFwwlQBcbyVDfaa9', 386, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 14:08:15', '2025-02-25 10:38:15'),
(387, '09034509278', 'محمد جواد', 'معرفت', 2, 1, 0, '2691635252', '97974', NULL, NULL, NULL, '750170000000105198017002', '6037997503934516', 396, 11, 'مشهد', NULL, 25, 219, 'مشهد مقدس،گروه تبلیغی حیدریون', NULL, 'image89701739102933.jpg', 3, -1, NULL, '9990', '1739102177', '$2y$12$KNw6eXhV2j3xyiojz8/FIu0HZ5dvcsUiOEAMVLi2aMHOqU2Kg5vW6', '2025-02-09 08:24:35', NULL, 'XYImr0mYxS639F9nbmhM8xEDbIRg5zR9XDvZePkQsRm5owqW5Z0L3MD5lvjz', 387, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 13:22:31', '2025-02-25 09:52:31'),
(388, '09367709420', 'سید جواد', 'حسینی زاده', 2, 1, 0, '5230051809', '310889', NULL, NULL, NULL, '540170000000346646514003', '6037991923720290', 396, 11, 'مشهد', 'مشهد', 10, 99, 'توس ۶۹ مجتمع امام رضا ع بلوار عمار یاسر بلوک ۱', '9198463913', 'image22711739191754.jpg', 2, -1, '0', '5898', '1739102230', '$2y$12$llQwhxcgGrG160DF1X36XOzWnN54kwOmPBg7h8GPtEKeq4qSWk/qi', '2025-02-09 08:25:32', NULL, '1IadTABTE3c0HuVivF98FGUWQR9msKp7Zyduq4rRKMXUu1f4aRb93HyEORAw', 11, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 13:20:30', '2025-02-25 09:50:30'),
(389, '09159540146', 'مهدی', 'بزی جوان', 2, 1, 0, '3673882759', '193137', NULL, NULL, NULL, '140170000000307016470009', '0307016470009', 223, 16, 'زابل', 'روستای سرحدی', 16, 223, 'زابل بلوار ارتش  خیابان دشتی زاده  دشتی زاده 9جنب مسجد صاحب الزمان عج', NULL, 'avatar.pngimage76611739102854.jpg', 2, -1, NULL, '8518', '1739102409', '$2y$12$u6bAqCR7sCgnwmmiVVCjR.SwOdCgZPGy5nEyidPfp.DoaQ1QQtzam', '2025-02-09 08:28:26', NULL, 'Zw69HHH67efCErqKBIA15TDG8Kv6zdItxOb82aO56wbxX2AJNCbgRwnP5qSt', 389, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 12:10:03', '2025-02-09 12:10:03'),
(390, '09158918120', 'مهدی', 'عرب', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8352', '1739102506', '$2y$12$4yOBbnn3KQEVkG40QLb9m.MZF9HkThsQdFy5Jo4euOMF2zHsv0TYy', '2025-02-09 08:30:04', NULL, 'gU9vXYJRpUT9RQBrSs0GwVMqHrBdxNws13eF3KEqYsX12ZsTAPYITE0K8Z01', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 12:00:37', '2025-02-09 08:30:37'),
(391, '09395735479', 'جواد', 'ترکانلو', 2, 1, 0, '0670373893', '۱۹۹۱۹۲', NULL, NULL, NULL, '900170000000342498184001', '6037997413818429', 396, 11, NULL, 'زرکش', 12, 65, 'توس ۱۰۳ پلاک ۱۷', '۹۱۹۷۱۹۷۱۷۷', 'avatar.pngimage40771739183476.jpg', 3, -1, NULL, '4763', '1739102544', '$2y$12$NXPlYeOz46Pxg.RspCQV0.sBnTt8/wu43CwIhp1MXzI0L3cFw/OMS', '2025-02-09 08:30:37', NULL, 'HUsfUWcqrLJ6cph3V6UFRyChcANJj0GK01XqErMfka8Hemp2cM2WOMGNDh3I', 391, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 12:51:09', '2025-03-01 09:21:09'),
(392, '09906294094', 'علی', 'نوروزی', 2, 1, 0, '0770227406', '350997', NULL, NULL, NULL, '340170000000351431190004', '6037997258813287', NULL, 11, NULL, NULL, 11, 396, 'مشهد شهرک طرق', NULL, 'avatar.png', 3, -1, NULL, '3447', '1739102573', '$2y$12$zDZn5ucKCybYHdaIifV/IuKGOJ2BFOVNVOFs4sKIqf8geiP3NFS5.', '2025-02-09 08:31:18', NULL, 'poTvaNVkWpYlCe0sugiqczdFm5FWE5ds58LchUjnNy0PJvP6aMbAqJFKB9aA', 392, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-03 10:06:12', '2025-03-03 06:36:12'),
(393, '09150609543', 'علی', 'کبیری', 2, 1, 0, '0922741514', '199671', NULL, NULL, NULL, '150150000003130091316146', '5892101603197118', 396, 11, 'مشهد', NULL, 11, 396, 'گروه حیدریون_ مشهد\n\nمنزل: مجتمع ثامن', NULL, 'avatar.pngimage33701739185204.jpgimage86161739205957.jpg', 4, -1, NULL, '2714', '1739102659', '$2y$12$.caRC8g8zhLz2S389K6OjOehPAKxJe6zmLMs4zn/mKzeIZqzdO7TC', '2025-02-10 12:27:56', NULL, 'NOxR2CZ78S1eExHFwGskopjompnGoQ6psPl8PFHGFof6O0yzQffUmuybUF42', 393, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 13:16:48', '2025-02-25 09:46:48'),
(394, '09032690239', 'سیدحسینعلی', 'مصباح', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1342', '1739102704', '$2y$12$MqH6jwOMv/9EoFm50TGW3urBpQ1VfLBEKuAQJviOxAL.nGEeIqkmm', '2025-02-09 08:34:01', NULL, 'T9qCqua3Ixb43uiFDRTFzRTz2zWF2KiasH1vujKbK2YCKEcPkZM7kNEJ7rT2', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 12:04:01', '2025-02-09 12:04:01'),
(395, '09369414844', 'روح‌الله', 'آهنگرانی', 2, 1, 0, '0942466349', NULL, NULL, NULL, NULL, '410170000000358320087004', '6037997505031006', 396, 11, 'مشهد مقدس گروه حیدریون', 'خیابان وحید بین وحید ۲۱ و۲۳ کوچه ششم پلاک ۱۰۰۵', 11, 396, 'مشهد گروه حیدریون \nخیابان وحید بین وحید ۲۱ و۲۳ کوچه ششم پلاک ۱۰۰۵', '9157778177', 'avatar.png', 1, -1, NULL, '3511', '1739102742', '$2y$12$Lkq8NPDcNy.x4qNkTNQqNOMibSJ.xz4mQ3LhXO2ELmzip6wXc8mjC', '2025-02-09 08:34:22', NULL, 'GTOvxLuD8K5I7uo8rb5dSAtk2pnovIHDKMNUYozmGsjYRTJtQJaZ5SkT7ePg', 395, 0, 0, 0, 0, 2, 1, 1, NULL, '2025-03-01 12:06:01', '2025-03-01 08:36:01'),
(396, '09369414844', 'روح‌الله', 'آهنگرانی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5971', '1739102742', '$2y$12$sRxHr6JhbiUMVa3sVkKAx.79GMlku1j4EBhzm/Jaj0WKD1ilglQNW', '2025-02-09 08:34:22', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 12:04:22', '2025-02-09 08:34:22'),
(397, '09156116080', 'محمدی رضا', 'زاهدی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2346', '1739102950', '$2y$12$UsMhK2i47WgbhVx3z9b8R.GfrBkicOU7icOvLNZyJ.Xrm3LhdvYBO', '2025-02-09 08:37:16', NULL, 'ifI68Zuzth8sKeXrkG6Lip3wh2Rv3pooFzu5kKeSKJXvaNax883gS2G3pHv2', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 12:07:16', '2025-02-09 12:07:16'),
(398, '09155201179', 'ملیحه', 'خواجوی', 2, 2, 0, '0945748027', '284975', NULL, NULL, NULL, '780600360470002704825001', '6063731019056275', 308, 11, 'گروه حیدریون', NULL, NULL, 308, NULL, NULL, 'avatar.pngimage33271739103316.jpg', 3, -1, NULL, '3142', '1739103156', '$2y$12$yZCURfxzRm2njPm7dE3zIeoZ1PuU1XRv5RZtXauhojVoHQnxa.Dze', '2025-02-09 08:40:50', NULL, 'ViBQasy7MpXlPdyCH1IEoYhrzSeIvV8ohMNTxmaBifuECgkCzH9hbiAFbtQK', 398, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 12:16:12', '2025-02-09 08:46:12'),
(399, '09152544842', 'محمدرضا', 'ابراهیمی مطلق', 2, 1, 0, '0690676328', '324501', NULL, '139611083076', NULL, '950170000000358631638004', '6037991755188806', NULL, NULL, NULL, NULL, 11, 396, 'مشهد مقدس گروه تبلیغی جهادی حیدریون توس ۶۹ مجتمع امام رضا علیه السلام', NULL, 'avatar.pngimage33831739104221.jpeg', 4, -1, NULL, '8354', '1739103864', '$2y$12$S0GmHkteyL3W1JadzvjFaeGKCJV0totEVtnK/wEY8zir5.hjtXgE2', '2025-02-09 08:52:29', NULL, 'URVSl9jebRN0LQEtkFnS6qoSzkA5v3WbWjFwbCNyoBtPu9UBWFDY9ZMK3oz5', 399, 1, 0, 1, 0, 0, 1, 1, NULL, '2025-02-09 12:33:04', '2025-02-09 09:03:04'),
(400, '09016420405', 'سیدمحمد', 'اکبرزاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6080', '1739103935', '$2y$12$wJdfbaM/xdeZzjc3l5MNNOSIO4ffP9MeJr7mXMWugxg427lnXIbyK', '2025-02-09 08:53:42', NULL, 'd4Ey2ddR4kxGE6bJUq4j9De4JOU42jG1fq0Ih1z32qEy2wP4JiqN48pzQj8O', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-03-03 10:07:40', '2025-03-03 06:37:40');
INSERT INTO `users` (`id`, `mobile`, `firstname`, `lastname`, `role_id`, `gender_id`, `is_not_citizen`, `codemeli`, `khadamat_code`, `tablighat_office_code`, `tablighat_organization_code`, `ovghaf_code`, `bank_account_number`, `bank_cart_number`, `city_id`, `province_id`, `city`, `village`, `native_province_id`, `native_city_id`, `address`, `postal_code`, `photo`, `education_id`, `status_id`, `level_id`, `confirm_code`, `confirm_time`, `password`, `last_login`, `creator_id`, `remember_token`, `editor_id`, `has_khadamat_code`, `has_tablighat_office_code`, `has_tablighat_organization_code`, `has_ovghaf_code`, `report_count`, `agree_count`, `work_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(401, '09929538365', 'مهدی', 'براتی', 2, 1, 0, '0670722847', '372320', 'پرونده دارم اما کدش را نمیدانم', 'پرونده دارم اما کدش را نمیدانم', NULL, '420170000000356879575003', '6037997422102914', 396, 11, 'مشهد از طرف گروه جهادی مبلغان حیدریون', 'مشهد از طرف گروه جهادی مبلغان حیدریون', 11, 396, 'مشهد، بلوار پنجتن، پنجتن 48، شهید قربانی 14\n\nاز طرف گروه جهادی مبلغین حیدریون', NULL, 'image69161739116868.jpg', 2, -1, NULL, '4019', '1739104644', '$2y$12$.CO/07RV2TygqPm/YCpUzOBHRed6OY/XS9.Q6CyywFnYl6FakZJKG', '2025-02-09 09:05:37', NULL, 'k6skrMQgS0qkFVZi0ixpBpNrPnOXAB6lRMQhiAg0cOOod33gT1J9byDolvzw', 401, 1, 1, 1, 0, 1, 1, 1, NULL, '2025-03-02 11:55:23', '2025-03-02 08:25:23'),
(402, '09027437867', 'اکرم', 'تکشی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7941', '1739105779', '$2y$12$13nShDfcQOLJUnYnvu0VnuGA34w/ugKtDBWrW/nVxsYXE3npToShi', '2025-02-09 09:25:01', NULL, 'eHzPP6MOEu77CowGPD7wEFuMMqv4OcVAhr2N9hUpagbn2VWaLesvDgTsprN4', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-02-17 18:31:21', '2025-02-17 15:01:21'),
(403, '09158035145', 'سید محمد حسین', 'ضیاء زاده', 2, 1, 0, '0926088785', '364935', NULL, NULL, NULL, '310170000000355624560004', '6037997590214145', 396, 11, 'مشهد', NULL, 11, NULL, 'مشهد مقدس گروه حیدریون \nمطهری شمالی 36 پلاک 36/4', NULL, 'avatar.pngimage11011739107391.jpg', 2, -1, NULL, '9699', '1739107116', '$2y$12$uco2y6DnGgKL6gUokTJqWuf6uZikiLwVNu66lym4bUU1MWn1NR0QG', '2025-02-09 09:46:43', NULL, 'kXj59LA8AKUo1ZA39LP7oot7b4ppbLopr1Gee6ED7QBKbrDr2ySgtj3eNkUe', 403, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 13:24:30', '2025-02-25 09:54:30'),
(404, '09397103257', 'احسان', 'حکمتی فر', 2, 1, 0, '0630331871', '321201', '52941', NULL, NULL, '610170000000347179596001', '6037998196200017', 396, 11, NULL, NULL, 12, 30, NULL, NULL, 'image49141739283285.jpg', 4, -1, NULL, '9603', '1739107412', '$2y$12$RdKlIg1p9cDV.i21sCPlOea43A.8QjGwqvu.dvKhPtWIqKEzNy472', '2025-02-09 09:51:38', NULL, 'gVmy5fv6uBSlOuk3W8VYsKHPSdJKuAd50TsMKA0Xzcj3jiiaACQbmLquDHNK', 404, 1, 1, 0, 0, 0, 1, 1, NULL, '2025-02-11 14:18:53', '2025-02-11 10:48:53'),
(405, '09155223421', 'فاطمه', 'تكشي', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7386', '1739107712', '$2y$12$OhZcJkqNw33PxohEoxSCQOmLzaWLyHw8S7yTI6CtHxzxsCQpcoE/O', '2025-02-09 09:56:49', NULL, 'wJrDsyXflpKzq9rVbuFmBPbS4ZfahqNkWh9isrzfRUpir138t9fbsoJVkvUd', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-02-17 19:51:35', '2025-02-17 16:21:35'),
(406, '09139726656', 'علی', 'میرزایی', 2, 1, 0, '6219938690', '93725', NULL, NULL, NULL, '220700001000119946974001', '5041721008893589', 86, 4, NULL, 'ازناوله', 4, 86, NULL, NULL, 'avatar.png', 3, -1, NULL, '2845', '1739107907', '$2y$12$4dKnRqEk0sUDhcL1EmeYpu1W4UA6aufEbhwI9/.ZpAYwaJS8t2yHa', '2025-02-09 09:59:52', NULL, 'iu3nFKF4kbZsnSHB13sof8W2800S85g5hK2MS3DFTnXSHssTjNCMk8dLRA9I', 406, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-02 12:41:40', '2025-03-02 09:11:40'),
(407, '09357004545', 'روح اله', 'پورنجف باغستان', 2, 1, 0, '0858690594', '300565', '139553392', NULL, NULL, '780170000000344536103001', '6037998132657429', 396, 11, 'مشهد', NULL, 11, 396, 'مشهد عبدالمطلب 30حائری13 پلاک82\nگروه تبلیغی حیدریون', '9194754534', 'avatar.pngimage87881739111769.jpg', 4, -1, NULL, '1929', '1739110858', '$2y$12$c5f2clHquLeA/NfOLzB4H.5/JQ7xwaEZaz3l2q9UX4xqQmuC/FxG.', '2025-02-09 10:49:07', NULL, 'qjJbDS2Naqn9D35vG0Lx1G1xL6sApMyGapwMNjVoPbkyNHkHoQsppHziXCDZ', 407, 1, 1, 0, 0, 0, 1, 1, NULL, '2025-02-09 14:36:13', '2025-02-09 11:06:13'),
(408, '09159512414', 'سید رضا', 'میرهادی', 2, 1, 0, '1064342973', '108686', NULL, NULL, NULL, '730170000000104231080007', '.6037998256215814', 396, 11, 'مشهد', NULL, 11, 432, 'مشهد مقدس گروه حیدریون', NULL, 'image55501739112730.jpg', 2, -1, NULL, '1883', '1739111588', '$2y$12$zwg0t.vXFz/cqgZHKfN2u.3bf7eenz5E9hnNRj0hOIruhdLaDDVxW', '2025-02-09 11:01:21', NULL, 'aHwEXXCl7jvyeUCkcbMxTIJ3trhKMNyuHNYUOjEiwqZqo8XFjSv9y9DHgres', 408, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 14:52:14', '2025-02-09 11:22:14'),
(409, '09364154095', 'حمید', 'محمدی امین', 2, 1, 0, '0690548540', '3166885', NULL, NULL, NULL, '400170000000111664407008', '6037997541135530', 396, 11, 'مشهد', NULL, 11, 396, 'حرعاملی ۶۴بن بست اول سمت چپ شماره ۱۶', NULL, 'avatar.pngimage41001739179025.jpgimage92661739179741.jpg', 2, -1, NULL, '5886', '1739112310', '$2y$12$kuTw0Q5oZijYYrtnZnDHY.9/.dLpFOlA/kGgR4JVBGwecAt9GnNe.', '2025-02-09 11:13:20', NULL, 'VJX87rRC7qcCWIr0U5HAqVQ0VNVsfmCWszuSI8iSMUNgaEXVkWErFozqCpQr', 409, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 13:02:06', '2025-02-10 09:32:06'),
(410, '09917126672', 'علی', 'محمدی اول', 2, 1, 0, '0927504431', '428755', NULL, NULL, NULL, '550570077700005199366001', '5022291543890717', NULL, 11, 'مشهد', 'مشهد', 11, 396, 'مشهد مقدس _گروه حیدری ن رباط طرق رباط 9پلاک 68', '9143974935', 'avatar.pngimage42141739132025.jpg', 1, -1, NULL, '6060', '1739112425', '$2y$12$P4.NJ85OM3Sx9DPmwK/hDumgmLxOEcH1p7t3opxCqM7qEsUs8mwem', '2025-02-09 11:15:17', NULL, 'NlBGDxH8A6Z4O4MhHA3xDQnUesuksj5xCL22PjaQhJaQYCDeCozt1LbFwrJ1', 410, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 04:01:30', '2025-02-10 00:31:30'),
(411, '09385772560', 'مهدی', 'حیدرآبادی', 2, 1, 0, '6449925752', NULL, NULL, NULL, NULL, '540170000000216360702006', '6037997396600802', NULL, 11, 'مشهد', 'مشهد', 11, 396, NULL, NULL, 'avatar.png', 4, -1, NULL, '5416', '1739112461', '$2y$12$SoxS.jCkvHBi1tRJHFcoHuLX1I4YdsB7AHWcdmt8gRupgYw5s.Z3G', '2025-02-09 11:15:50', NULL, 'b6qZJfZFqpu3NtqIfLvRY83JKHnZtiX1lBE9xlV8OI3WMceYii8d0jcqLZ4b', 411, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 14:51:21', '2025-02-09 11:21:21'),
(412, '09159929854', 'محمد', 'مظلومی', 2, 1, 0, '0925749265', '418358', NULL, NULL, NULL, '490170000000357460009001', '6037997454637258', 396, 11, NULL, NULL, 11, 396, 'مشهد مقدس-گروه تبلیغی حیدریون', NULL, 'avatar.pngimage73921739112538.jpg', 3, -1, '0', '5671', '1739112479', '$2y$12$eRvnxGS029KpJ70WY2bBmOcMq9FVz.k1fRRbYngeL3YHZUdDdN1lK', '2025-02-09 11:16:04', NULL, 'LWLoPliMJBT2r3yq8WQerALchDsYCSkOCJU4DffxvR8WTwk0vVsrzIKJb1Ad', 11, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-10 15:50:40', '2025-02-10 12:20:40'),
(413, '09127577698', 'غلامرضا', 'توکلی دارگانی', 2, 1, 0, '1112116494', '50505', NULL, NULL, NULL, '500170000000345006505005', '6037991765024348', 327, 19, 'قم', NULL, 19, 327, 'قم خیابان معلم کوچه ۹ پلاک ۱۰', NULL, 'image7711739859323.jpg', 3, -1, NULL, '3048', '1739112577', '$2y$12$bKL1dHbfpK9N8O4d/Hsmg.793NhgdfpFXp89LZvnGSfBcUwvvCFzG', '2025-02-09 11:17:49', NULL, 'sFF9K1uZ5htwQ2e3rPnV14ks3YKCWMeoWvJaSpMnPT4YSgsIjIFzMyWMeJTL', 413, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-18 06:15:36', '2025-02-18 02:45:36'),
(414, '09132444896', 'سید علیرضا', 'مصطفویان', 2, 1, 0, '0927057859', '408066', NULL, NULL, NULL, '460170000000226293232005', '6037998190805241', 396, 11, NULL, NULL, 11, 396, 'مشهد مقدس. گروه تبلیغی حیدریون\nسیدی. شهیددایی 62.پلاک 5.واحد1', NULL, 'image77951739112976.jpg', 1, -1, NULL, '1918', '1739112577', '$2y$12$Hc87Pq5zjZubYWKaAcTT5.TQzuIpnABWsingeDvZlDoztaYNx1te6', '2025-02-09 11:17:48', NULL, 'z9RaQB249BStHv3nbVxhu6ZyRragaZIlJTKSPzF8mHXr5N9XyzYgkSZrM5mC', 414, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 14:56:44', '2025-02-09 11:26:44'),
(415, '09159341857', 'محمد', 'آخرتی دهمیانی', 2, 1, 0, '0902446312', '114049', NULL, NULL, NULL, '51017000000033930685003', '6037991934961529', 396, 11, 'مشهد گروه جهادی حیدریون', 'سیس آباد', 11, 396, 'مشهد از طرف گروه جهاد ی حیدریون  رسالت ۸۱ مجتمع نرگس ۶ طبقه سوم واحد ۱۵', '9149160022', 'avatar.pngimage14631739113469.jpg', 4, -1, NULL, '7673', '1739112710', '$2y$12$cIX5NFvl4Gl.rcVuepntk.rjrW8ssUYvmYmQSooj79FtARWdxmhuG', '2025-02-09 11:20:06', NULL, 'c9o089MobKkD14yfhuFChXnLXdStndKqs7jDfEiZLpEr3hYub4JE4aeL06ay', 415, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 15:04:33', '2025-02-09 11:34:33'),
(416, '09336582964', 'حسن', 'شهسوار', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3961', '1739112720', '$2y$12$TlX21wTuBaHOYdo1Qqa2hedGnOA.0ObA5oxOM8EIO9y1MUmJq1Zvm', '2025-02-09 11:20:15', NULL, 'zF5of78AWfQeDW9WmDveJ6JATx6jPyPdL4NK6MTGp80tFtLrethyi8J06MQJ', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 14:50:15', '2025-02-09 14:50:15'),
(417, '09157901578', 'حامد', 'حسنی', 2, 1, 1, '9273466801', '283248', NULL, NULL, NULL, '500190000000212239154002', '6037691633185129', 396, 11, 'مشهد', NULL, 11, 396, 'گروه تبلیغی جهادی حیدریون', NULL, 'avatar.png', 3, -1, '0', '5238', '1739113986', '$2y$12$VTT8S5SYDU9FVySZPlV8AOGDaZhASEtWq3xcd07n3WTzCdEpjQjyG', '2025-02-09 11:41:20', NULL, '5dqbERTsrUfHOSMwG9UvBJzIk1mvrZbbiSLPiY4m9sBPgN0pXpJvmmDyi8xr', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 13:08:50', '2025-02-10 09:38:50'),
(418, '09395779625', 'امیرحسین', 'ترسالار', 2, 1, 0, '0927079100', '435635', NULL, NULL, NULL, '540560611828005766061501', '6219861984232859', 396, 11, 'مشهد', NULL, 11, 396, 'مشهد. مقدس گروه حیدریون', NULL, 'avatar.pngimage91261739130192.jpgimage11141739167517.jpg', 1, -1, NULL, '4641', '1739114025', '$2y$12$asVYS2StgCgJM2PgSGnzDe20qt0exwkoxqSKfBdk20R0TMIDVh1sK', '2025-02-10 02:34:50', NULL, NULL, 418, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 13:27:06', '2025-02-25 09:57:06'),
(419, '09152246469', 'مهدی', 'جعفری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3242', '1739114550', '$2y$12$/JgoRZgq2eY8I/huAi.OHuNhaTD.bXDUySxXdVGd9coxqbpiqEAdK', '2025-02-09 11:50:35', NULL, 'D8mpyOrUAO6XIz0WBcxSFZ6djfKl9KKTdrxIq4FQ6rsNaeRCwYxts8doFmic', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 15:20:35', '2025-02-09 15:20:35'),
(420, '09233995872', 'مهدی', 'فوطه بافان', 2, 1, 0, '0926819895', '432028', NULL, NULL, NULL, '036000000342432009', '0360342432009', 396, 11, 'مشهد', NULL, 11, 396, 'مشهد بلوار طبرسی شمالی 9 چهار راه اول سمت راست پلاک 194\nاز طرف گروه حیدریون', NULL, 'avatar.pngimage21971739115001.jpgimage64571739115153.jpg', 2, -1, NULL, '3941', '1739114615', '$2y$12$wzN96opjFUKl6l7baAMCg.gbYiD1FtukhtPt6suVkG6LK82jYKxQu', '2025-02-09 11:51:51', NULL, 'rPXnBE7miog5OgdfIUfphSG0pNK1Ba1UHWOW7KL7Wc5TMrv5myTPnATkI3GE', 420, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 15:32:46', '2025-02-09 15:32:46'),
(421, '09150368289', 'علی', 'قاسمی', 2, 1, 0, '0890415439', '267359', '54426', NULL, NULL, '660170000000340697797001', '6037991762295297', 396, 11, 'مشهد', NULL, 11, 396, 'مشهد،گروه حیدریون\nمشهد رسالت 81،نرگس 6،بلوک 12', NULL, 'image41001739115180.jpg', 4, -1, NULL, '5473', '1739114764', '$2y$12$a2iO.GP5A0eRwE.64LqyVewpcHEEV.KU.CupycJrkMVAdzwOgLZz6', '2025-02-09 11:54:15', NULL, 'INWvBJIzM5WA4LA5qHTNxcRtR9RT5m2xjmUxDT3VUaQUhXpK9aEkGs5M01rP', 421, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-01 12:35:05', '2025-03-01 09:05:05'),
(422, '09395957480', 'رسول', 'حق شناس', 2, 1, 0, '5110625085', '63699', NULL, NULL, NULL, '470170000000302053455006', '6037997361208862', 68, 4, 'خورزوق', NULL, 4, 68, NULL, NULL, 'avatar.png', 3, -1, NULL, '4749', '1739115170', '$2y$12$XzXCwKlchr6WrHpiRNEwaeii2nK8Qv5ifHwpRzKenhnrkD49YLUya', '2025-02-09 12:01:16', NULL, 'jf6Ew5F4osNBiiybZyeiDQNzWmUovRQZGLbrlM2WxSgN4Yeh5h8cq5V5phjO', 422, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 13:32:31', '2025-02-25 10:02:31'),
(423, '09159115709', 'سید رضا', 'موسوی', 2, 1, 1, NULL, '102562', '139754137', NULL, NULL, '840170000000308151186001', '6037998290198406', 396, 11, NULL, NULL, 11, 396, 'گروه حیدرون. مشهد', NULL, 'image33241739115993.jpg', 4, -1, '0', '3574', '1739115508', '$2y$12$ekokOhC981n9TCyk.rPtR.I9Ej8BJ.tdDP5iQ2f9bdnclCGe4J3QG', '2025-02-16 03:51:48', NULL, 'D2jpMsREkW1VCn85SFw9UxatAzm0u1AjenITIuwgKVwfOsJkg8KXImnBIH1j', 11, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-02 12:34:27', '2025-03-02 09:04:27'),
(424, '09381556989', 'محمدامین', 'کامل', 2, 1, 0, '0923315802', '301448', '983000141414', '1061040', NULL, '880170000000341845388005', '6037997432157494', 396, 11, NULL, NULL, 11, 396, 'مشهد مقدس. گروه حیدریون', NULL, 'avatar.pngimage1931739116641.jpgimage74841739223885.jpg', 4, -1, NULL, '6760', '1739115564', '$2y$12$xoclrs7tbpguUdQPpCw/LO2i460nurHvn0DbCZ/asJUXTG2t7p8w2', '2025-02-09 12:07:32', NULL, '1GjqKNVuxHlnJNdoKCKOIOngdjwPQEOHKaUPQdyzq8eBxITJbf44YPrOIO7u', 424, 1, 1, 1, 0, 1, 0, 1, NULL, '2025-02-25 13:27:30', '2025-02-25 09:57:30'),
(425, '09364655491', 'ابوالفضل', 'کامران نژاد', 2, 1, 0, '0640596568', '381544', NULL, NULL, NULL, '670170000000354750759009', '6037997559122958', 396, 11, NULL, NULL, 10, 99, 'مشهد گروه حیدریون خیابان وحید ۱۶/۱ پلاک ۱۹۹', NULL, 'image90181739117292.jpg', 2, -1, NULL, '1528', '1739117095', '$2y$12$DuzgU7wXPaq6DuTMgPb0L.1sa9/fdbGGgpksmq3vS7uzmzv4uJb.G', '2025-02-09 12:33:10', NULL, 'oY11vljQHbAtNej4PSZiSEbD8h8Gc9tSC1IRfnBpg495wHJUTHvDmFW9xWyQ', 425, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 16:08:29', '2025-02-09 12:38:29'),
(426, '09127542059', 'احسان الله', 'مؤمن‌زاده', 2, 1, 0, '0938881124', '۸۸۴۲۲', '۲۵۵۵۹', '۱۴۰۲', '۳۶۹۱', '230170000000203820231000', '6037991923051084', 327, 19, 'قم', NULL, 19, 327, 'قم پردیسان جاده کهک هزاره نهم طلاب مجتمع میرزای شیرازی بلوک۵ واحد۱۴', '3711385564', 'avatar.pngimage2311739118454.jpgimage27391739118655.jpg', 3, -1, NULL, '1361', '1739117196', '$2y$12$p8qgVOt.GZ1iiliLVCTv2eIAgYQAZ1OSqYWZOSkcpwpz2Rrt7AyNe', '2025-02-09 12:35:16', NULL, 'OOX4UvJnL8AaBWIjBjxpjbmE2kFHzRumnQjiCfmYhoU3VxgI2z9J16JA9A6a', 426, 1, 1, 1, 1, 1, 1, 1, NULL, '2025-03-03 10:15:55', '2025-03-03 06:45:55'),
(427, '09152464976', 'وحید', 'وزیرمقدم', 2, 1, 0, '2200480458', '73011', '53243', NULL, NULL, '930600360370004483995001', '6063731160330743', 396, 11, NULL, NULL, 11, 396, 'گروه تبلیغی حیدریون .\nرسالت 81.,نرگس شش.بلوک یک .واحد 10', NULL, 'image71681739117862.jpg', 3, -1, NULL, '1129', '1739117496', '$2y$12$4mrLUsThff083ju0bX2TYOsXZm/YEUGNsJwgQ85tkDFF50HJ4ZQaW', '2025-02-09 12:39:45', NULL, 'ojeRk9OndNRei4qb8uiYmgNIoPHMeGL4L5dLKG0s0X2I1aRqQxOPK892T63m', 427, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-02-25 13:28:54', '2025-02-25 09:58:54'),
(428, '09150468153', 'صادق', 'خداشاهی', 2, 1, 0, '5210085147', '347795', NULL, NULL, NULL, '280210000001000239736829', '6277601385287279', 396, 11, NULL, NULL, NULL, 396, 'مشهد-  گروه حیدریون \nبلوار کشمیری بین ۷ و۹', NULL, 'image36421739118227.jpg', 2, 1, '0', '9552', '1739117853', '$2y$12$k7dvubNM5H9Ycl9CwVmBiuXqKgvv0NLbfXp1AfeatErpT8xu02tBq', '2025-02-09 12:45:56', NULL, 'WkS6NxhYl3kaBz18jNn9IcKrGnR8UAlAge9PhYElT5GkXSKbyGQdsk0So4uu', 11, 1, 0, 0, 0, 1, 0, 1, NULL, '2025-02-25 13:33:32', '2025-02-25 10:03:32'),
(429, '09138584331', 'علیرضا', 'جمعه گی', 2, 1, 0, '0839954778', '103774', '0839954778', NULL, NULL, '040170000000300325038000', '6037997381588285', 290, 10, 'طبس', '---', 10, 290, 'طبس ،مسکن مهر ،معراج 11', '9791798993', 'image69321739119607.jpg', 2, -1, '0', '6463', '1739117928', '$2y$12$dTp2qYROCQYHDM5jlLtF5.OTH9.fgsZF2PJavf4oF7VsLUWGQSsci', '2025-02-09 12:47:01', NULL, 'dSoivm5SxKGXkyQnDrKKZLrzOdyu4BqpDugK6g9UAg90zd2JixMStGtTLJ5y', 11, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-02 12:46:30', '2025-03-02 09:16:30'),
(430, '09936259361', 'امیر', 'خدادوست بهابادی', 2, 1, 0, '0910169969', '345887', '52680', NULL, NULL, '910170000000316106365007', '6037991927590269', 396, 11, 'مشهد رسالت کشمیری54', NULL, 11, 369, 'مشهد .ازطرف گروه جهادی تبلیغی حیدریون .\nرسالت.کشمیری ۵۴.پ۲۲', NULL, 'image73081739170450.jpg', 3, -1, '0', '9125', '1739118677', '$2y$12$ihUGhXwELlu9n5yxCutFIeUkMYGQVNDjzAZ641NW7Qr42gNUACCmq', '2025-02-09 12:59:47', NULL, 'NQjxbsyydyZO3juzJKixTkTsAIuiGsleJSoxnLoAYc32fIPeYKuVyJK6cYak', 11, 1, 1, 0, 0, 1, 0, 1, NULL, '2025-02-25 13:49:31', '2025-02-25 10:19:31'),
(431, '09105789482', 'عباس', 'نجفی', 2, 1, 1, '1667601850', '4406', '53785', NULL, NULL, '200170000000100932491007', '6037998158126374', 396, 11, 'مشهد  بلوار شهید رستمی ۵۹ پلاک ۵۴', NULL, 11, 396, 'مشهد بلوار شهید رستمی ۵۹ پلاک ۵۴\nمشهد گروه حیدریون', '9167766496', 'avatar.pngimage19071739302510.jpg', 4, -1, NULL, '6769', '1740726466', '$2y$12$VwLKQwF18LI0dOvwfjNAw.bhBmy2ONmLOaDzkyYOyizJgsdWzIFcu', '2025-02-28 03:36:03', NULL, '2hcmbNOT90otXBkge68oWWlnH8OUk8uHclhGvPqI6I4h9wIEltkcR6KuYN7r', 431, 1, 1, 0, 0, 2, 1, 1, NULL, '2025-02-28 07:07:56', '2025-02-28 03:37:56'),
(432, '09158331733', 'محمد تقی', 'حسین پور', 2, 1, 0, '0749188596', '۱۰۶۸۳۹', NULL, NULL, NULL, '370170000000303187569001', '6037991923467884', 396, 11, 'مشهد', 'ساغروان', 11, 57, 'شهرستان مشهد روستای ساغروان \nگروه تبلیغی جهادی حیدریون', '9355164087', 'image15861739119780.jpg', 2, -1, '0', '3381', '1739119209', '$2y$12$fF/XqQoeAP6v11tIcg1lXuq0cbJQCN5wiZs7.7lnA.O4.x9aKcVKC', '2025-02-09 13:08:25', NULL, 'kRlCImnxO2aNdx4sLPLS9P3PaWOFJujCuwcQfdeWwcQdBH5t50my5b7mQVXG', 11, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 12:02:20', '2025-02-10 08:32:20'),
(433, '09963195314', 'مجتبی', 'کاظمی', 2, 1, 0, '0820366935', '382708', '54988', NULL, NULL, '190560611828005212125201', '6219861914476519', NULL, NULL, 'مشهد', 'مشهد منطقه طلاب مفتح مسجد موسی ابن جعفر', 11, 396, 'خراسان رضوی مفتح 31 مدرسه علمیه امام باقر علیه السلام', '9155845954', 'image93601739289388.jpg', 3, -1, NULL, '9015', '1739119647', '$2y$12$BupsmrghAYRE/1O1ERaN4.azHkWMZRm1qpIf6WimA3nk7ajt/XdHu', '2025-02-09 13:15:46', NULL, 'L3zbOPWDYSp3IAwBgkiIbEYGsE3eJkkSNWZkNQqX65y40rpP8fj5QrOvBMRV', 433, 1, 1, 0, 0, 1, 0, 1, NULL, '2025-03-04 13:39:08', '2025-03-04 10:09:08'),
(434, '09302314643', 'محمد', 'شیر محمدی', 2, 1, 0, '0732495210', '114029', '139353070', '663288', NULL, '430170000000110677854001', '6037997587201055', 396, 11, 'مشهد', 'درخت بید', 11, 285, 'قاسم آباد دکتر حسابی جنوبی 11مجتمع ولایت فاز2بلوکa2طبقه 6واحد602', '9189783004', 'image15761739290049.jpg', 4, -1, NULL, '9793', '1739119871', '$2y$12$1rQcVFdGflzUe7FeqEPOueyfWlq7Cs6Yg0kG1CMSsjnllFBywpB32', '2025-02-09 13:19:41', NULL, 'aLfxIImBPxnfo8h90fbV2ZynrBk5iZsN2oSVcRd6FUncCvzRSqCtxYSThZXg', 434, 1, 1, 1, 0, 1, 1, 1, NULL, '2025-03-02 12:04:20', '2025-03-02 08:34:20'),
(435, '09395400227', 'اشکان', 'اسماعیلی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9544', '1739120342', '$2y$12$8m0L.QP7ZjfhMXF.MEn9x.pIH6xk1BqhBL7DuEjqOu.Vn4nq93Xom', '2025-02-09 13:27:10', NULL, 'xGdEvNysF8UN0MAH9BFspGtq0r2nemF3w49GgLAJkwVjRqxYIN7VkcwVk1BM', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-09 16:57:10', '2025-02-09 16:57:10'),
(436, '09157036627', 'موسی الرضا', 'حیدری', 2, 1, 0, '0941357848', '۱۱۸۶۷۹', NULL, NULL, NULL, '150170000000310703184008', '6037991920130972', 396, 11, NULL, NULL, 11, 396, 'مشهدمقدس-گروه حیدریون\nمشهدمقدس ،بلوارطبرسی شمالی طبرسی ۳۸ شهید طباطبایی۲ کوچه اول سمت راست پلاک۷ طبقه دوم', NULL, 'avatar.pngimage16141739208198.png', 4, -1, NULL, '9002', '1739120452', '$2y$12$yOYk66GO3flILOQMuASgIe3y2ZPlvuNyIuzaRwlJYoTl9i0s/xIYy', '2025-02-09 13:28:57', NULL, 'PI7flvBecHTEzdYmtQwzMHwAPfHMBne01xOBRob9kP1wVawsYLcFQTmtXqUl', 436, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 17:23:20', '2025-02-10 13:53:20'),
(437, '09362701683', 'مهدی', 'رضایی', 2, 1, 0, '0947089829', '360481', '53971', NULL, NULL, '160170000000340570431001', '6037997382698588', 396, 11, 'مشهد', NULL, 11, NULL, 'مشهد پنج تن 48شهید قربانی 3ابرار 7بلوک 24', NULL, 'avatar.png', 2, -1, NULL, '8013', '1739121051', '$2y$12$3/gyT610WdtpBUPEgN589e9QoltrpExyV9SnovFXImpjcZ54jhf8u', '2025-02-09 13:39:05', NULL, '3KPKgVtl0JSZHpJl2NqaoO7uqIIcKqsAkl2iBO8v5XRer21RXEIyYPpH0Dzb', 437, 1, 1, 0, 0, 0, 1, 1, NULL, '2025-02-11 16:21:59', '2025-02-11 12:51:59'),
(438, '09131366883', 'قربان', 'اسماعیلی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5949', '1739121451', '$2y$12$W1waTXSbKaV/YW8/tIA6G.JayH57oJlKOXw9C5fyfGA2gFxdpPNFK', '2025-03-09 10:33:32', NULL, 'p3J2C6RFkpdUuZffnz1jmakOuGpePU941Q0vhKIRZFHrRIMgowX0QBvFtUev', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-03-09 14:11:04', '2025-03-09 14:11:04'),
(439, '09159305725', 'داوود', 'متقیان', 2, 1, 0, '0700396233', '109297', NULL, NULL, NULL, '130170000000304781329000', '6037997505715244', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 'image23371739211638.jpg', 2, -1, NULL, '2414', '1739122338', '$2y$12$qIkHocNqoPxsnOnaiNlJGOpHJIQ0fwIYzbwzNrnPkY.IcjbVXkBpa', '2025-02-09 14:00:38', NULL, 'j4ytlsZYkSXzDJlUzSJCSd9RzxBfwRhuBmGB1tYelN1vc2R06N0vUzmUANAU', 439, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 13:38:27', '2025-02-25 10:08:27'),
(440, '09192536567', 'علی اکبر', 'ابراهیمی', 2, 1, 0, '6219388305', '35390', '26401', '139048304', 'یادم نیست', '440170000000102072715002', '6037991758155190', 170, 4, 'خوانسار', 'رحمت آباد', 4, 86, 'اصفهان ، خوانسار ، روستای رحمت آباد ، جنب دهیاری ، خانه عالم.', '8794114869', 'avatar.pngimage41181739127429.jpgimage64671739128120.jpg', 2, -1, '0', '3332', '1739123173', '$2y$12$bURd.KFvNsrZcTlP.awNH.UoZy4Cu4iM5FOSH0wUODUmQ8TQoaGMa', '2025-02-09 14:15:03', NULL, '6047IcjOk3GnUgfGAb7RJLHUe9xxpJt2U7ZtO22wSIJVd1QEHo3vto6thPTK', 11, 1, 1, 1, 1, 1, 1, 1, NULL, '2025-03-02 12:20:05', '2025-03-02 08:50:05'),
(441, '09336532072', 'علی', 'راستگومقدم', 2, 1, 0, '0927671158', '429296', NULL, NULL, NULL, '560170000000362911518005', '6037998214143959', 396, 11, NULL, NULL, 11, 396, NULL, NULL, 'avatar.pngimage70501739292948.jpg', 1, -1, '0', '5408', '1739123580', '$2y$12$ycL0TT2YrWPlQAlxaMHR8uV6BHJbs76eUFZ6oeZr2MIdudldXIx8S', '2025-02-09 14:21:11', NULL, 'vPM91EKx668QdgvSG7KqIOI1Cs9mulKEP4L9hdKLfoF4Csu1cpXjWe2zxNau', 11, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-12 04:49:31', '2025-02-12 01:19:31'),
(442, '09902679087', 'فرهاد', 'دنیادیده', 2, 1, 0, '1361138254', '238835', NULL, NULL, NULL, '220570320170014276686101', '5022291092487527', 327, 19, 'قم', NULL, 19, 327, NULL, NULL, 'avatar.pngimage84181739127255.jpg', 3, -1, NULL, '1764', '1739126644', '$2y$12$Gmk2eh3LVS8E220w/iuQqOu.jhglSP/sc07d000eT2br2t424ocmu', '2025-02-09 15:12:13', NULL, 'ZtljFk5dkFyZsGfUmSllxsKPSt7t4WYeSDfEjU1AV4g5Ff3sl4xsfrf11ri5', 442, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-09 18:54:18', '2025-02-09 15:24:18'),
(443, '09138481255', 'محمدتقی', 'کریم زاده', 2, 1, 0, '3130914242', '44888', '29157', NULL, NULL, '420170000000302516759009', '302516759009', 327, 19, NULL, NULL, 21, 60, 'پردیسان، بلوار22 بهمن، خیابان شهید حامدنیا، مجتمع شهید میثمی ، بلوک 2 واحد16', NULL, 'avatar.pngimage30711739132290.jpg', 3, -1, NULL, '4090', '1739131578', '$2y$12$ta/nHVqG37DJEgzbBH30n.7oUR8F0DuY6h.mOhHxnZdgV9Dma.yo2', '2025-02-09 16:34:28', NULL, 'j0TjR2mwQV7WbcfoI9158RgdMA0J11SBXuMtQilnSz5OnYJyvuvEtnAT4G6f', 443, 1, 1, 0, 0, 0, 0, 1, NULL, '2025-02-09 20:18:52', '2025-02-09 16:48:52'),
(444, '09391761018', 'تقی', 'قاسمی نژاد', 2, 1, 0, '2720697397', NULL, NULL, NULL, NULL, '680170000000368332264000', '6037991531250482', 336, 5, 'کرج', NULL, 25, 376, 'کرج بلوارخوارزمی میدان شهدای مدافع حرم شهرک احسانی نژادبلوک۲۱طبقه سوم واحد۱۱', '3197918783', 'avatar.pngimage95681739290485.jpeg', 3, -1, NULL, '2484', '1739131939', '$2y$12$XGnn620hVXtCAO5MWHBODesX/nTLQbAlCb4eZnm4CMlAYINkTgl5O', '2025-02-09 16:40:54', NULL, 'okfLw6FrZII7TwM7UVaKT3GEp5Gmq2zOLxAAP4ovVbw17mWmKc9EijHgR89C', 444, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-11 16:15:11', '2025-02-11 12:45:11'),
(445, '09154070523', 'حسین', 'اکبری', 2, 1, 0, '0946176523', '۳۷۴۵۲۳', NULL, NULL, NULL, '740170000000317459244004', '6063731054649615', 396, 11, 'مشهد', 'مشهد', 11, 396, 'مشهد خیابان فدائیان اسلام  ۱۲ نسترن ۱۸ پلاک ۳۱ طبقه سوم', '۹۱۶۶۹۷۴۹۷۰', 'avatar.pngimage76021739290722.jpg', 3, -1, NULL, '9930', '1739134489', '$2y$12$DJORPEWqEstuJxdpD3DMeeDlfYX2v81R8x9l2Jn7rmWr0fVJt45yS', '2025-02-09 17:22:57', NULL, 'fT8DXhT2HZYINmhw6c9r5FBFJ1p2PArZ11X8NqSXMVox3497zFHGdHW6cb6K', 445, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-11 16:18:51', '2025-02-11 12:48:51'),
(446, '09112720485', 'هاشم', 'گیلکی', 2, 1, 0, '6249499725', '33868', '22264', NULL, NULL, '150170000000103690883007', '6037997334151645', 371, 24, 'گنبدکاووس', NULL, 24, 371, NULL, NULL, 'image28071739211344.jpg', 3, -1, NULL, '4392', '1739159426', '$2y$12$gSSTAMlStjJbaBFULwnKR.UnhxKqTp25Ag009yIjvpnlyB92LTDxi', '2025-02-10 00:18:43', NULL, 'edcXO6to3izrgYEjLYeTA1Z4ELjKawnVXdjN9D9jDf1hOaUfzQanlBIGOuhj', 446, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-02 12:44:00', '2025-03-02 09:14:00'),
(447, '09159100133', 'محمد', 'نجف پوربراکوهی', 2, 1, 0, '6509904047', '113531', NULL, NULL, NULL, '040170000000306516745007', '6037997546684284', 396, 11, NULL, NULL, 11, 396, 'سیدی سحر 30 پلاک44 طبقه2واحد4', NULL, 'image24071739208372.jpg', 3, -1, NULL, '6427', '1739164630', '$2y$12$w3Qprxh9MCgo9W5Sx5cj9OOMsgA37WC70a2HAqCFXzTyEi358zdZ.', '2025-02-10 01:45:21', NULL, 'PKYRIrHpHvWHwvGlGNb2IbkxomvHO1W6JOhRAvk4xs3LaN6YpQBuMb0zTHaY', 447, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 17:27:09', '2025-02-10 13:57:09'),
(448, '09196638278', 'اسماعیل', 'فرهمندپور', 2, 1, 0, '2031026658', '52389', NULL, NULL, NULL, '370170000000307498679002', '6037997581719631', 4, 18, 'زیاران', NULL, 24, 371, 'قزوین آبیک.شهر زیاران', NULL, 'avatar.pngimage72991739298118.jpg', 3, -1, NULL, '9477', '1739165440', '$2y$12$oW97Cki7gLTZIBfM6AjnruF3Uef2cCCdoyoQ8CTel.Fi1Erhfp92q', '2025-02-10 01:58:54', NULL, 'CospGrfJTG0n7XT7wBJeUwtYxZVJEDPMe8LE0qqXwsQKBrWX7FZxJ8WZMYDH', 448, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 11:38:13', '2025-03-01 08:08:13'),
(449, '09053134456', 'سید محمد رضا', 'رضوی', 2, 1, 0, '0927103621', '407014', NULL, NULL, NULL, '860180000000000404218980', '5859831164869223', 396, 11, 'مشهد- گروه حیدریون', NULL, 11, 396, 'پنجتن ۴۸ شهید قربانی ۱ قربانی ۱/۴ پلاک ۱۰ طبقه همکف', '9156866607', 'image25231739170292.jpg', 1, -1, NULL, '6947', '1739166732', '$2y$12$r2cedNlCGR5d5swvjF2GuOe8.2RgKV9wPcK77QveAIwLmlP3cU1Ha', '2025-02-10 03:09:12', NULL, 'BDWrcmJrWmSHDEbz9uLRsrTKux4TfM4PYe6NGBOlUsS0AjRZP69BFBMzwn7k', 449, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 06:55:04', '2025-02-10 06:55:04'),
(450, '09908798065', 'مهدی', 'فلاحی', 2, 1, 0, '0925746258', '366846', NULL, NULL, NULL, '340170000000351732472004', '6037997270553200', 396, 11, 'مشهد', 'دزق', 11, 396, 'مشهد مقدس گروه حیدریون، بلوار توس، توس 81، پلاک 36', '9197166378', 'avatar.pngimage20751739168099.jpg###image76431739169540.jpg###', 3, -1, NULL, '7734', '1739167675', '$2y$12$4fV1tQ8e5vaFeV9jN2KTTOUOky61IWVSFJdxrDoCB4ZBARgT7E0i.', '2025-02-10 02:36:00', NULL, 'Hr52NKGz7ObtSbhSHaO9iqLpBBsCt6v0D9tsaoBltl0Hx6IKQg2cTDC50lf6', 450, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-10 09:37:10', '2025-02-10 06:07:10'),
(451, '09159966835', 'احمد', 'صادقی', 2, 1, 0, '0638908736', '111215', NULL, NULL, NULL, '280170000000304698262004', '6037997203275681', 396, 11, NULL, 'بلوار توس', 12, 30, NULL, NULL, 'avatar.pngimage3601739290500.jpg', 4, -1, NULL, '5692', '1739176261', '$2y$12$Fu01/qI/ziQ9A2Cd76eID.GGmDVisletND00.Lv4eaJVXcipG1sou', '2025-02-10 04:59:14', NULL, 'cayYLVJFLQei1vK1Mgzpb9Z6zlsstCMJkVSszTzPOjsioYv2eKGAxXw2B8pO', 451, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-11 16:15:09', '2025-02-11 12:45:09'),
(452, '09154434966', 'سید محسن', 'اسماعیلی', 2, 1, 0, '0922682305', '201743', NULL, NULL, NULL, '370170000000109498648001', '6037997499905769', 396, 11, 'مشهد', 'مشهد', 11, 396, NULL, NULL, 'image27191739334529.jpg', 2, -1, NULL, '1404', '1739180176', '$2y$12$IoaMWGdokV/twd/zgd./3OB.PexYp6Iz6jUmUgMkr6WZll.TuCZ5a', '2025-02-12 00:54:02', NULL, 'wC2pnH5ycEZyCKPHuBQUZhMsCfcE9MFellb5qrZaxMoOlPSNk1Kds9nTK33E', 452, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 14:05:45', '2025-02-25 10:35:45'),
(453, '09305956064', 'محمدرضا', 'فتحی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3085', '1739180752', '$2y$12$GfJvSnC52JmA.rw2UCoQoOb4CS9Kr2Vsjy0gPyNTb3U5toDHeE/1u', '2025-02-10 06:14:25', NULL, 'XU2HJcU7lm3Fb5DkNCf7WlFJJyUmlbOCnunichTrLLoNFk3nGHEnRa5M0a5k', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 09:49:39', '2025-02-10 06:19:39'),
(454, '09103797671', 'حسین', 'شهرآبادی', 2, 1, 0, '0928639576', '528575', NULL, NULL, NULL, '470170000000352379202004', '6037997294586822', 396, 11, NULL, NULL, 11, 396, 'مشهد مقدس . گروه جهادی حیدریون', NULL, 'avatar.pngimage3031739182411.jpg', 1, -1, NULL, '4164', '1739181988', '$2y$12$42n5i9RLIv77Nixf/TjmyOWTZG83ZRBbESv.vVni.jDJI/9dPRGHi', '2025-02-10 06:34:39', NULL, 'tdYt09yu0gKQwe6CVGE3iG6e2zpqFbFTLgdNH2HGKjBiLCUvtPZVbjO2KXzL', 454, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-10 10:16:49', '2025-02-10 06:46:49'),
(455, '09194530635', 'سید احمد', 'شاهمیری سرو', 2, 1, 0, '1288250371', '65902', '139040486', NULL, NULL, '380170000000305091827005', '6037997520126708', NULL, 19, 'قم', 'قم خیابان آذر کوچه 23 پلاک 36', 4, 37, 'قم خیابان آذر کوچه 23 پلاک 36', '3714935745', 'avatar.pngimage9741739183401.jpgimage75441739184084.jpg', 3, 1, '5', '1226', '1739183049', '$2y$12$cK1BTHVFNI02CISUr/4xE.NdBZEfCQx2EDWJfFaWRJCUPNtyyYL42', '2025-02-10 06:52:19', NULL, 'M1C6h0PyKUY0kLKqFet1nr9n5sYXaWrh7FTTcMUBfL41Kroip2aweAJ4LYWT', 11, 1, 1, 0, 0, 0, 1, 1, NULL, '2025-02-10 11:18:01', '2025-02-10 07:48:01'),
(456, '09157199521', 'حمیدرضا', 'اسماعیلی', 2, 1, 0, '0750146036', '271444', NULL, NULL, NULL, '300170000000341980948004', '6037997250281525', 129, 12, 'سنخواست', 'سنخواست', 12, 129, 'استان خراسان شمالی شهرستان جاجرم شهر سنخواست خیابان فرهنگ کوچه سروش پلاک22', '9448611885', 'image71741739184250.jpg', 3, -1, '0', '6245', '1739183488', '$2y$12$rz2mq.P6he3kDH7oBR/kH.tcGCs5dPgVnCyaBTy4mDcOvB3xHf8Qa', '2025-02-10 06:59:43', NULL, 'rjobFwF4lQv1CyESIIG2Q0iCPm1XAbAVoERQpGYlVnYP5TJk78Qnjp1xISfw', 11, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-25 14:08:42', '2025-02-25 10:38:42'),
(457, '09364806849', 'نفیسه', 'عموسلطانی', 2, 2, 0, '1141341832', '162126', '48908', NULL, NULL, '070170000000341933519007', '6037997369002556', 166, 4, NULL, NULL, 4, 166, NULL, NULL, 'avatar.pngimage37751739184966.jpg', 3, -1, NULL, '2504', '1739430971', '$2y$12$H/Fukw7/wQmiSCGMgHUq.evYNCv9l/lw4iAXsXXHSsKGvvi9u1Jie', '2025-02-13 03:44:40', NULL, 'A2qyXnu82MRNAGMYpQVmd5MTOLMmYAGF3xHMTLVxRDcCe6mEs9Dtqc4116Vu', 457, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-02-13 07:50:24', '2025-02-13 04:20:24'),
(458, '09014458880', 'داود', 'صادقی نیا', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4101', '1739185151', '$2y$12$oQyaq5pCI3zLHvua.6c93ebUK30daPYASYl5Hx.pTSVg0/WKNaVUa', '2025-02-10 07:27:21', NULL, 'j0scAFzXWtpAvVZqnjoOBGxcCxTeFp63pkvDZftJPq5hvmAe63p1LXXSrkVv', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-10 10:58:03', '2025-02-10 07:28:03'),
(459, '09151566769', 'مجتبی', 'هوشمند', 2, 1, 0, '0939831767', '105796', NULL, NULL, NULL, '580170000000302357996008', '6037991921472993', 396, 11, 'رضویه', 'رضویه', 11, 396, NULL, '9159818933', 'avatar.pngimage60861739291811.jpg', 2, -1, NULL, '7046', '1739185755', '$2y$12$PyCiKeXR4kUeizPwVnNW8e8pZXMx4RpjHJyeudKBFjvTnschODVSK', '2025-02-10 07:37:25', NULL, '20KZeGOaLUTjIHEf8lhUdRgEZOltpkhUCpada58NVZTq63OLBAsr1UNGab78', 459, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 10:25:58', '2025-03-01 06:55:58'),
(460, '09931380864', 'امین', 'توفیقی', 2, 1, 0, '2297037988', '74060', '30877', '23352', NULL, '890170000000109285081001', '6037997375736064', 327, 19, NULL, NULL, 17, 283, NULL, '3749195985', 'image70701739269925.jpg', 4, -1, NULL, '8149', '1739192845', '$2y$12$/co/91oUbqygILfkMeTpiOoZWJs4vOJ3/9b8E.cwM5uhH5DnxH1pG', '2025-02-10 09:35:36', NULL, 'FnoiPszrjcGNRnayV9gIcDuFIae1faxkZz5q4O1fyBu5bbKmS9qWWHdf4y5E', 460, 1, 1, 1, 0, 1, 1, 1, NULL, '2025-03-01 11:47:45', '2025-03-01 08:17:45'),
(461, '09388239229', 'صادق', 'وهاب پور', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1582', '1739199504', '$2y$12$ORP0QhcXhmWH4OJpkSJUnOv6C/N.dxyhX.12LxlztdLW9qOJn0e5i', '2025-02-10 11:26:35', NULL, 'd69mk1R27mWq4dYuKkRx7sPheT9Ig6yMoG4YfS1JU8nBjsYY0fOqWBz3Zc5K', NULL, 0, 0, 0, 0, 0, 0, 1, '2025-02-11 13:06:08', '2025-02-11 16:36:08', '2025-02-11 13:06:08'),
(462, '09172258199', 'محمدصادق', 'فتاحی', 2, 1, 0, '2539699421', '62058', NULL, NULL, NULL, '740180000000005387367022', '5859831106437931', NULL, 19, NULL, NULL, 17, NULL, 'بیست متری زاد خیابان. شهید امامی کوچه 6پلاک 74', NULL, 'avatar.png', 2, 1, '5', '6106', '1739204410', '$2y$12$EmtPmfCXOc18kxcNlPAoS.iT6o7J466hneux2O8XqCFUKG.3ZU68y', '2025-02-10 12:48:23', NULL, 'yaygENZDW1s3Z4ew8VrDyFAlHwtPQIJKn6OqyFnEx8zn5axBXFFXkoyz2p7g', 11, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-10 16:34:59', '2025-02-10 13:04:59'),
(463, '09999383585', 'سید امیر', 'موسوی', 2, 1, 1, '9842282569', '425351', NULL, NULL, '327', '610170000000358682884007', '6037998158292143', 327, 19, 'قم', NULL, 19, 327, 'قم-خیابان امام زاده ابراهیم -بلوار سوم خرداد -کوچه 16-پلاک ۸', '37188-85197', 'image59871739207128.jpgimage19401739268094.jpg', 2, -1, '0', '7441', '1739205384', '$2y$12$MSbfUPqX5lWrV8gZsJLNjugvBCVSRgrXssAOmmCtPsT86SAUb.FnS', '2025-02-10 13:05:05', NULL, '8nAoKcr7FSqEtsboj8Iud5s8WpcuQocAnXpo2JaqW0DzvCthP3gvHGyvVdmI', 463, 1, 0, 0, 0, 2, 1, 1, NULL, '2025-03-01 12:03:14', '2025-03-01 08:33:14'),
(464, '09163225145', 'محمد', 'مرید', 2, 1, 0, '1880942550', '62329', NULL, NULL, NULL, '890170000000301337279000', '6037991943084966', 277, 13, 'شوشتر', NULL, 13, 277, 'خوزستان.شوشتر.خ شهید.کوچه شهید زاهدزاده. پشت مسجد حاج زمان.', '6451964937', 'avatar.png', 2, -1, NULL, '7586', '1739212613', '$2y$12$.W7Ja5fA.lkWtDa/mH.8HeATV5PMIPQha/L1SoeDcs7rNTWv1scYe', '2025-02-10 15:05:01', NULL, 'VBnQ3wehMNlyju479vYKlUhm2Tg1tNOFq4HQ654lvvcWnTTQoLUYHTHPxrvi', 464, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 11:48:40', '2025-03-01 08:18:40'),
(465, '09138732851', 'علی رضا', 'قاسمی', 2, 1, 0, '1260660117', '34129', NULL, NULL, NULL, '080170000000104686450005', '6037997564248111', 332, 4, 'کاشان', 'ناجی آباد فاز 2 میدان کاظمیه کوچه یاس4بن بست نسترن 4سمت راست پلاک 37منزل قاسمی', 4, 332, 'ناجی آباد فاز 2 میدان کاظمیه کوچه یاس4بن بست نسترن 4سمت راست پلاک 37منزل قاسمی', '8719311669', 'avatar.pngimage16371739214623.jpgimage38221739215519.jpg', 2, 1, '0', '7718', '1739213786', '$2y$12$d2qRcOsN.INq0OL3QmeO1OXKYR0pusKNKmtps.rhRxAxLxJeJwJNy', '2025-02-10 15:24:39', NULL, 'xb8xDC5pDPKAZt0LYTf0T6GTcuZtSSurI4b5JZzYGnELpaSVIfCeu07osonA', 11, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-11 04:13:45', '2025-02-11 00:43:45'),
(466, '09158785136', 'محمد حسین', 'متوکلی مقدم', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2463', '1739217482', '$2y$12$nz.S2LhyJOeHEsC5AfgLFeh7AevevaMcjSMb3ROk/3bJwWItTYNYa', '2025-02-10 16:26:25', NULL, 'JIuQXzBn79ESs1lepIGahMc08R9vyVGTsWDL6SJfAMpYCUuRstMuVOl17pPl', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-10 19:56:25', '2025-02-10 19:56:25'),
(467, '09154084533', 'رضا', 'مقدم', 2, 1, 0, '0630242781', '۲۶۰۰۳۶', NULL, NULL, NULL, '490170000000346857508008', '6037997171890917', 396, 11, 'مشهد', 'مشهد', 11, 396, 'مشهد طبرسی شمالی ۴۰ پلاک ۵۲', '9149314948', 'image68501739292621.jpg', 3, -1, NULL, '5181', '1739243084', '$2y$12$JV3KhG5x9DAYV15zl0pqsun4uDOmNj9TdG54wsBr/E/NO8d5pAs6G', '2025-02-10 23:32:50', NULL, '6CsOPylegHr6Sue9MW4Lr9tZiHNGY7qOUrgMDtC2GdvM94MHQTzkbG9WFElh', 467, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-11 16:50:54', '2025-02-11 13:20:54'),
(468, '09162980857', 'محمد حسین', 'صنعتکار', 2, 1, 0, '1263325920', '8590', NULL, NULL, NULL, '460170000000302870173005', '6037997507299874', 7, 4, 'ابوزیدآباد', NULL, 4, 7, NULL, NULL, 'avatar.png', 2, -1, NULL, '7024', '1739252930', '$2y$12$3v0sddlAkg3qgUybDeHy4eDGP/Q5R.8TFJsf/SundKu54hQfdeNo2', '2025-02-11 02:17:04', NULL, 'vx0aqbhroYcWRq8UYQyISAWsXdAS7iqxpeUUgOaqOpkKcATxqQzCItf57tkG', 468, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-11 06:02:07', '2025-02-11 02:32:07'),
(469, '09189020158', 'اسماعیل', 'خزاعی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8051', '1739261789', '$2y$12$tqcIotQlg2dLxDePidvrnuHpow5MpUD.LxHR/gHIL0bKxA8HWkEsy', '2025-02-11 04:44:39', NULL, 'jDEfOJ512cSlxplIpiwUAiouMmWOurezrS4aHX6ZqWKvvgNGi6hyTWXn2Efg', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-03-01 12:50:07', '2025-03-01 09:20:07'),
(470, '09127493091', 'محسن', 'یوسفی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6783', '1739263309', '$2y$12$xGBXNziF4DuZdRyc5gBGVOB2MVNCK.Ue/lYxfM/zPRALvHw4bQBE6', '2025-02-14 23:31:20', NULL, 'erod3t7sKesxnzAkCNXpGDrhM9TVSVmQHoTNiHXbDHhWZpkOkpKSDZD0w2FM', NULL, 0, 0, 0, 0, 2, 1, 1, NULL, '2025-03-01 12:39:10', '2025-03-01 09:09:10'),
(471, '09396556849', 'محمدجواد', 'یزدانی زاده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9434', '1739285347', '$2y$12$tQjEqK.o0IcJlmb4DiHkp.q1neKIprDceLUjTzGmWztPTQAlGH27u', '2025-02-11 11:17:20', NULL, 'oDUmkRKgErJxprYS86RIY4tEMq2rJBJQuvxG6uKYXqMmrCWOJBxdJat61fEm', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-11 14:47:20', '2025-02-11 14:47:20'),
(472, '09921939764', 'زهرا', 'علی دادی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4269', '1739288048', '$2y$12$FaGsUxgO6DG/pG3qdV3AoORRPkPv0sOvbIfWD0U/BwrIq50Ov3TVa', '2025-02-11 12:02:17', NULL, 'OhlDd87l4cJYCP2MYLT2mXZQtVNA5ZDlkD85FY1ElEcTZAczJKrQGKD022x7', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-02-17 19:48:24', '2025-02-17 16:18:24'),
(473, '09176201223', 'سمیرا', 'توانا', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9317', '1739288611', '$2y$12$cj8RmmYPgjNAcp5UmoS86OHIYjDWbQhzj7fsqowOZVymOSnBeAa3q', '2025-02-11 12:11:45', NULL, '34ENUZ0bbf1iKcwQEDe3cSRXrNDGbYbDfN1yiJmN4EAxHOyHOlF06ntLXCcn', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-02-15 11:46:05', '2025-02-15 08:16:05'),
(474, '09910282043', 'زهرا', 'کیانی', 2, 2, 0, '6169972440', '۲۸۳۱۶۹', NULL, NULL, NULL, '710170000000344042613008', '6037997483314614', 54, 6, 'ایوان غرب', '.', 6, 54, 'استان ایلام ، شهرستان ایوان غرب ، جنب کلانتری', NULL, 'avatar.pngimage76831739289519.jpg', 3, -1, NULL, '9104', '1739289227', '$2y$12$Sx0LUYKAeRp9BhkEnJ3RqOfUoh.zqzB47CSoWLa5TzrPPZxt9EGvm', '2025-02-11 12:22:09', NULL, 'ZxvpzNYPOurwDDuaK7j2ZW7UZAKVb5uwy2tc5ladMoH3P1a9zXHJStQvkK6h', 474, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-14 19:02:33', '2025-02-14 15:32:33'),
(475, '09170519958', 'سید حسین', 'حسینی', 2, 1, 0, '2550181727', '261307', NULL, '139611078348', NULL, '860170000000339634203007', '6037991753839301', 28, 17, NULL, NULL, 17, 28, NULL, NULL, 'avatar.pngimage83601739290695.jpg', 3, -1, NULL, '4416', '1739290618', '$2y$12$N4hKDc76egDj6/rWWssrMO1u3dy6FjHyWWaUzNGYFUJuxSIdO/sIS', '2025-02-11 12:45:03', NULL, 'tTUzJUnHTputgzHaOFGWakKgTrc4oreIbcOXwpgJ8B6EsIY48OuGK8OId69w', 475, 1, 0, 1, 0, 0, 0, 1, NULL, '2025-02-11 16:18:51', '2025-02-11 16:18:51'),
(476, '09177322273', 'سید اصغر', 'حسینی', 2, 1, 0, '2559653346', '54600', NULL, NULL, NULL, '940170000000302895387000', '6037997438906506', 430, 17, NULL, NULL, 17, 430, NULL, NULL, 'avatar.pngimage32431739297103.jpg', 3, -1, NULL, '4660', '1739291339', '$2y$12$IzUxZVgLrD3RwdmWrSP3o.zK5AXQvk4zgBBw5E.B3ojzhSOLH.IKy', '2025-02-11 12:57:32', NULL, 'w06HJsl9iN3JEc5DUU49ZASqAqo9ljsK6Ifmf6utVmz0LC9Kucp5XEAzxs3b', 476, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-11 18:05:08', '2025-02-11 14:35:08'),
(477, '09191968640', 'یعقوب', 'میر', 2, 1, 0, '5159956670', '150604', NULL, NULL, NULL, '0348668463003', '6037998140359141', 327, 19, NULL, NULL, 17, 375, NULL, NULL, 'avatar.pngimage19971739295342.jpg', 2, -1, NULL, '4667', '1739291399', '$2y$12$/EcilEWXpTdvC2bIxBWXFOXdev2Ohy78bYiSmdRxrUQRBLjhqXgMW', '2025-02-11 14:01:47', NULL, 'vifINFhhvXlgkUhMxv8StJKMHxQukC98gbWo5j9vGx2yPU6aeIsCe6KbRBES', 477, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-11 17:36:34', '2025-02-11 14:06:34'),
(478, '09331151612', 'سیدعلی', 'علوی', 2, 1, 0, '4723472541', '133390', NULL, '139811102706', NULL, '660170000000301096642008', '6037991775775285', 327, 19, 'قم', NULL, 17, 283, 'قم - پردیسان هزاره نهم - خیابان ایمانی - خیابان ملایی - مجتمع فیض کاشانی بلوک 4 واحد 5', '3711385436', 'avatar.png', 3, -1, NULL, '2027', '1739291960', '$2y$12$J3Vk7/XUVzNQE/3L4lF2hOLAv30VRO0ZN6miIYIY5R9RGhyTboQp2', '2025-02-11 13:07:26', NULL, 'nv06R3jV9y1mqAN35HRql9RqYsfPnYAQDPQmBYLXZzxTsmBiaic5mKTDwArJ', 478, 1, 0, 1, 0, 0, 0, 1, NULL, '2025-02-11 16:46:56', '2025-02-11 13:16:56'),
(479, '09127499708', 'محسن', 'جلیلی', 2, 1, 0, '2538972191', '۲۹۲۶۲', NULL, NULL, NULL, '320170000000101892150009', '6037991936544463', 39, 17, 'اقلید', 'اقلید', 17, 39, 'اقلید فارس خیابان شهید رسول قلندری کوچه ۸ منزل سوم سمت راست', '۷۳۸۱۷۴۹۶۳۳', 'avatar.pngimage34711739293072.jpg', 2, -1, NULL, '6645', '1739292517', '$2y$12$NiJh7CHvFr7mqh1RECHvROy.uJeVx2JCJWgQCVqqhEBHeIZAHgTU.', '2025-02-11 13:17:05', NULL, 'UIJiaOrOnPmbBC35p0bv7FYp7XeCaaMd9sN2pVEHf4C2blF2eHj5uXN9glbC', 479, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-11 16:58:54', '2025-02-11 13:28:54'),
(480, '09904927153', 'یدالله', 'بامری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6381', '1739292619', '$2y$12$PwggLKADt87ChD1eoWCbv.0ha80PcfcguUZ5/VGE4qbFysOsrgVhy', '2025-02-11 13:18:36', NULL, '5RGvQrgEMsa7cN2PKUyeFogUIRDh3Csun7fnZSzyUJpNzHvCw5NBrk2UzCYc', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-02-11 16:51:31', '2025-02-11 13:21:31'),
(481, '09178889534', 'محمد', 'حدادی فرد', 2, 1, 0, '2281724719', '304698', NULL, NULL, NULL, '030170000000345896880006', '6037997567567145', 238, 17, 'اردکان', NULL, 17, 283, 'سپیدان.خیابان ساحلی.کوچه شهید حق جو.پلاک23', NULL, 'image58781739303562.jpg', 3, -1, NULL, '5104', '1739292720', '$2y$12$JxS0tAWh69DQiyI5FOCQQOv6VT214CW0/zUbepatUYW./.GRwcpOC', '2025-02-11 13:20:17', NULL, 'zLEjIww51hC6JNmvoHJNRxHtXNVZf8GBM9keU24Av3IcBON2cmX8TRuGZZKy', 481, 1, 0, 0, 0, 2, 1, 1, NULL, '2025-03-02 11:57:52', '2025-03-02 08:27:52'),
(482, '09175567353', 'محمد', 'زارع', 2, 1, 0, '6480043431', '319227', NULL, NULL, NULL, '280170000000341923968009', '6037998203581284', 25, 17, 'ارسنجان', 'دهستان شوراب ، روستای کوشک', 17, 25, 'استان فارس ، شهرستان ارسنجان ، دهستان شوراب ، روستای کوشک', '7495178688', 'image41941739293408.JPG', 2, -1, NULL, '9658', '1741256692', '$2y$12$WC0JziA2NuIwqOCzmESWf.A8GqgmgwJWL8QlepTKKxUOYhQKuz1Ui', '2025-03-06 06:53:12', NULL, 'v7afYmm5O80SNc5bvdQLPwvWHpVCzqUIuNZAcMMtjS5cp2D2VMRz0XoNbCIS', 482, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-06 10:24:41', '2025-03-06 10:24:41'),
(483, '09176332086', 'رضا', 'قاید', 2, 1, 0, '2451965185', '50646', NULL, NULL, NULL, '0102636625007', '6037997438033913', 329, 17, 'کارزین', 'کارزین', 17, 329, 'فارس شهرستان قیروکارزین شهر کارزین بلوار آزادگان کوچه شهید علی عسکری', '7476186548', 'avatar.png', 3, -1, NULL, '7485', '1739293502', '$2y$12$hlplgzx0gUQ.VcRLLvdKY.J5wAvwqnoLEs1RnOJ5C3F5SIFH7LrHG', '2025-02-11 13:33:23', NULL, 'aJUNXOxGHLM43NRArPo3Pwc6U5sB1Hq09kVZbHjUz403eMhKG42hYXQrJjqM', 483, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-11 17:11:28', '2025-02-11 13:41:28'),
(485, '09175655420', 'حسین', 'کاوسی فرد', 2, 1, 0, '2530207526', '280350', NULL, NULL, NULL, '500120010000004927339853', '6104337976127330', 39, 17, NULL, NULL, 17, 39, NULL, NULL, 'avatar.pngimage5111739293753.jpg', 2, -1, NULL, '8113', '1739293659', '$2y$12$HVx97i2V/eSORG22X.ddT.D8sR8.4dj7u6YJfxo5bqkwDFj8QYgcS', '2025-02-11 13:35:48', NULL, 'FcFSAcUwYKXllckUb1BmrloU6891IV9z25rgpjTH5MoTRRJADEt78zci6a0X', 485, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-11 17:10:10', '2025-02-11 13:40:10'),
(484, '09127585751', 'سعید', 'رحمانی', 2, 1, 0, '1110269870', NULL, NULL, NULL, '۵۸۹۷۰', '290600520170018176013001', '6063731215387623', 327, 19, NULL, NULL, 4, 310, 'قم پردیسان هزاره دهم مجتمع میرزا هاشم آملی بلوک ۲ واحد ۳', '۳۷۱۱۳۸۳۴۳۸', 'avatar.pngimage45861739294079.jpg', 3, -1, NULL, '8174', '1739293580', '$2y$12$xFUaMEMAqIQUCEZYVciAdu0BFb/yjZfHOrFk0WexUL3R.MmY7ab/.', '2025-02-11 13:34:30', NULL, 'QO4RmG6PXv7rkH8znPGBltdZNzKFrwgVhy2A57Z4xv53yV52MOjgxyEQyAty', 484, 0, 0, 0, 1, 0, 0, 1, NULL, '2025-02-11 17:14:42', '2025-02-11 13:44:42'),
(486, '09175307578', 'عبدالرضا', 'قاسمی برشنه', 2, 1, 0, '2540098045', '305584', NULL, NULL, NULL, '840170000000342590412000', '6037997385312799', 238, 17, 'فارس سپیدان', 'روستای برشنه', 17, 238, 'فارس سپیدان روستای برشنه', NULL, 'image50851739294031.jpeg', 2, -1, NULL, '1143', '1739293849', '$2y$12$TITveYMvPe7gDf/1BwVlw.QGGoHj6KqOCQNnR3.xHpk7hO9JnrjMm', '2025-02-17 17:00:05', NULL, '5Q0Zaedsa5nzBbFC1lrhCi6EWXcXpL18asvNh9wqTTbbpj8L7xlkhqYaVJoQ', 486, 1, 0, 0, 0, 0, 1, 1, NULL, '2025-02-17 20:30:05', '2025-02-17 17:00:05'),
(487, '09164587164', 'مرتضی', 'فروتن اقلیدی', 2, 1, 0, '2530280088', NULL, NULL, NULL, NULL, '0223425169900', '6037998113738784', 39, 17, NULL, NULL, 17, 39, NULL, NULL, 'avatar.pngimage86961739295089.jpg', 1, -1, NULL, '5003', '1739294692', '$2y$12$5xAVaXnn5DIUcJPZIuSjLu5WG2mB8TxUOomOAWzHg7kVvrDJFkP02', '2025-02-11 13:53:24', NULL, 'eMgLWZRN39zkgCJchPyHpwF5Xd7ln0i0BZnGUMtHVPQeMX6NLCv2mL0p5mko', 487, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-11 17:31:41', '2025-02-11 17:31:41'),
(488, '09100579091', 'سیدحسین', 'حسینی', 2, 1, 0, '4879649090', '۱۵۰۲۴۷', '۲۵۷۱۰', NULL, NULL, '7901700000003430005760008', '6037997588175118', 206, 24, 'رامیان', NULL, 24, 206, 'استان گلستان،شهرستان رامیان، خیابان امام خمینی ع،کمربندی شرقی،جنب اداره بهداشت،منزل اآقا حسینی', NULL, 'avatar.png', 2, -1, NULL, '5387', '1739296431', '$2y$12$Cwb.vadDYuIBsV9cfzfdjOnjPVCicx/JUy2hO3GCOq1NGQXxkkDj2', '2025-02-11 14:22:23', NULL, 'efplIongr9ZWrDJMj98ydi7uewAHB5tv53lfp0WMQHJrBqpOibedtSL5XWSf', 488, 1, 1, 0, 0, 2, 1, 1, NULL, '2025-03-01 11:44:56', '2025-03-01 08:14:56'),
(489, '09355728895', 'قاسم', 'جانی', 2, 1, 0, '0889810036', '113901', NULL, NULL, NULL, '530170000000305160397005', '6037991766249985', 396, 11, 'مشهد', NULL, 10, 318, 'خیابان امام خمینی 45 ثامن الائمه 2پلاک 80', NULL, 'avatar.pngimage38701739299016.jpg', 4, -1, NULL, '6939', '1739296996', '$2y$12$Vdx.gSY7weV0yJ/VtzCyMORX1XOXMYB/3JcTmQt5n/6bQcWzRkU/y', '2025-02-11 14:31:24', NULL, 'aLyREWbquUaI1Cy8cvGWhpxEuFsFBWzew0QtjFoy8r37geaT2z67eSFXAtyG', 489, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-11 18:37:18', '2025-02-11 15:07:18'),
(490, '09152699682', 'سیداحمد', 'احمدی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8283', '1739297215', '$2y$12$M0QsECje2P5cRfoHXQqnzOmX69K0jI3ogzWiG2YrYNngHhlkwxheW', '2025-03-09 09:42:54', NULL, 'i4DGdYvE01LP1YssbWsdui1GHX7kajAJzsjIyOdLxs0PPiCW9cPAA6OvpJq0', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-03-09 13:12:54', '2025-03-09 09:42:54'),
(491, '09107031435', 'حمید', 'رستمی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3475', '1739315588', '$2y$12$BHBa3c4iA01ka/lHhwRLbubTjtB6sIjowOHRz5Wgp/pAnKv5Pyt0.', '2025-02-11 19:41:12', NULL, 'l3Samsmpq6vOSxXYsOXz3gsjF0nSdgthWn81lJALTBWB9LiuYf6vdXIZYRqc', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-11 23:11:12', '2025-02-11 23:11:12'),
(492, '09125534707', 'سید ابراهیم', 'رضوی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8551', '1739330290', '$2y$12$ZqOA/PATPD04KFAy3FDr2erAMKkgIF5L0v8yrghd14qOKGkfrLPPO', '2025-02-11 23:46:41', NULL, 'WNABQ6Ny4ARbwQoEVB6uzNVUcBERU4K6pg2JaPwtoSuGC8NKG4KDAyHSlcpC', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-12 03:16:41', '2025-02-12 03:16:41'),
(493, '09336767008', 'محمدجواد', 'جعفرپناه', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9092', '1739331650', '$2y$12$TtNh.mdpJO2Fqj6gn3ZFeuJHxKa57XZtTQG3UYETqhEbzUmClArfC', '2025-02-12 00:09:00', NULL, 'xlzCUK4tlYnLkDxhNctE71UMYiA9CDfXvumsSBZJ8logje3EvA6aub2BSyli', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-12 03:39:00', '2025-02-12 03:39:00'),
(494, '09127480823', 'محمد جعفر', 'نجفی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3990', '1739332784', '$2y$12$qmmiWcJrSJos1DvfUAuAf.TPW3lgeA792hpoo/qh5.LL8G2m9Fkjq', '2025-02-12 00:27:59', NULL, '5onbbohha1GxaVOnUPIKmL3Q9AQYhoak1cKpyUYuwaEfjcKFJf5CAcJBqYsy', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-12 03:59:00', '2025-02-12 00:29:00'),
(495, '09198531364', 'سیدمرتضی', 'رضوی', 2, 1, 0, '2451693691', '84415', 'نمیدانم', NULL, 'نمیدانم', '0106346831008', '6037997455588724', 327, 19, NULL, NULL, 17, 314, NULL, NULL, 'avatar.pngimage44781739334814.jpg', 3, -1, NULL, '1457', '1739334550', '$2y$12$sI92rua0g5PdLdKa1CBFAudKpschMdboKSOodr9a/NnYKJU19GTBS', '2025-02-12 00:57:18', NULL, '7Pnjd6Gj6xqsEaE0V9Q20JJIjjfAa3MrP4ToephmQ56c0fsXug1v80QaFZtx', 495, 1, 1, 0, 1, 0, 1, 1, NULL, '2025-02-12 04:35:05', '2025-02-12 01:05:05'),
(496, '09360650042', 'سید مسعود', 'پورسروقد', 2, 1, 0, '0923874801', '260418', NULL, NULL, NULL, '0341840665004', '6037998121885536', 396, 11, 'مشهد', 'مشهد', 11, 396, 'مشهد مقدس میدان تختی ابکو 5 چهار راه اول سمت راست پلاک 114', '9184683515', 'avatar.pngimage90041739339658.jpg', 4, -1, NULL, '1002', '1739339400', '$2y$12$.1/RrC0nzQ.UAIKMLh2Vi.9bIey/eWvpVVSqg9taURCrZK3DxX9Lu', '2025-02-12 02:18:09', NULL, 'trM4sripLvdgoSE209L1jUYoWdAyqb6mhAKS1M3HxxlDAjzE3TDgrEtdgTJ4', 496, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-12 05:55:53', '2025-02-12 02:25:53'),
(497, '09175665305', 'داود', 'زارع', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5328', '1739353198', '$2y$12$hMwYAv8IGyrPzcXnlIlxxebHfhU/F6RFcw4TGQ20fT1eAC2VnDXPi', '2025-02-12 06:08:50', NULL, 'E9uP4rgEh4pIGT24tUCES4t3ri36VjJfEAXCKcK4L9T2lBuBOxqQienT3sBa', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-03-03 10:08:20', '2025-03-03 06:38:20');
INSERT INTO `users` (`id`, `mobile`, `firstname`, `lastname`, `role_id`, `gender_id`, `is_not_citizen`, `codemeli`, `khadamat_code`, `tablighat_office_code`, `tablighat_organization_code`, `ovghaf_code`, `bank_account_number`, `bank_cart_number`, `city_id`, `province_id`, `city`, `village`, `native_province_id`, `native_city_id`, `address`, `postal_code`, `photo`, `education_id`, `status_id`, `level_id`, `confirm_code`, `confirm_time`, `password`, `last_login`, `creator_id`, `remember_token`, `editor_id`, `has_khadamat_code`, `has_tablighat_office_code`, `has_tablighat_organization_code`, `has_ovghaf_code`, `report_count`, `agree_count`, `work_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(498, '09194471916', 'محمد', 'خالقی نسب', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7046', '1739356147', '$2y$12$B4M2TKUBclWYyIOD1LH/XO9zLXGepctkjy1.EqC2HQlE.WoAs.0DO', '2025-02-12 06:57:43', NULL, 'Pwgt0a8cggozWA7IUt4cESu0NqNo8ASDmthBOnlB72XPIbZCh4D4qOcSpPht', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-12 10:28:13', '2025-02-12 06:58:13'),
(499, '09909962365', 'زهره', 'پناهنده', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '9757', '1739386370', '$2y$12$UQFnmSFUzQUeUKpQz6aWKOIbEEdcsGp0wrSOlK2x./2jV7j2qiGme', '2025-02-12 15:20:59', NULL, 'Gh6PNCseDsU0reGSulOPqYTrrgdwuTJqFnQgIR58i3bRXay4kyz80eAv7iSO', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-12 18:51:48', '2025-02-12 15:21:48'),
(500, '09151992346', 'مهدی', 'پیکرستان', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5553', '1739415492', '$2y$12$CsgEUeC2JZZfTX5BWqGqju84lpa7tJxhEsA5QcqdQzv1QuMCchwDK', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-13 02:56:07', '2025-02-12 23:26:07'),
(501, '09019468710', 'مه دی', 'پیکرستان', 2, 1, 0, '3591578541', '14۸۸۸۲', NULL, NULL, NULL, '700170000000304570271009', '6037991767035599', 437, 16, 'محمد اباد', NULL, 16, NULL, NULL, NULL, 'avatar.png', 2, -1, NULL, '1759', '1739415676', '$2y$12$yO/8hREtQB.2qIuvu4P3fe6/O9FPEbueZOMT/ELNdpaR4YlOPryry', '2025-02-12 23:29:31', NULL, 'ZvJpEoupsO6l0nHQMETtOzJjNuZl364PKdo0YAi9W6GQJ7ej96tZzUty2TqL', 501, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-03-01 12:06:46', '2025-03-01 08:36:46'),
(502, '09102829633', 'محمد', 'اکبری', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7499', '1739423125', '$2y$12$tT/pt8vtuADHPD0JEhH0/el4WDl8Nh3ylAUV7YHJA0wiRMHmrR5lG', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-13 05:03:20', '2025-02-13 01:33:20'),
(503, '09306298595', 'وحید', 'صمدی کرجایی', 2, 1, 0, '0076357074', '85518', '139029791', NULL, NULL, '520170000000302292790000', '6037997127162072', 327, 19, 'قم', NULL, 19, 327, 'قم پردیسان خ شهیدان مخلصی 3 مجتمع علامه مجلسی بلوک 4 واحد 8', '3749174311', 'image12721739439406.jpg', 3, -1, NULL, '9537', '1739436879', '$2y$12$DyrkEKF89v6w4IsvN.M9CuUShbEUsMb2MMjJh3VNlkusNmpqK3Dry', '2025-02-13 05:23:23', NULL, 'HZ9VHxYMv6DIVeXv0JX5otY2BWCjdg1yCCH4TJARwz6M9YkgOMlD71LOHsko', 503, 1, 1, 0, 0, 0, 1, 1, NULL, '2025-02-13 09:48:49', '2025-02-13 06:18:49'),
(504, '09379360183', 'محمدرضا', 'جعفری خیرآبای', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3293', '1739470247', '$2y$12$l1EA.KCzRkvHl4es5zZyeu3.gIU12Xvo4Z6mK4Kkb7754/O0ABUyG', '2025-02-13 14:39:10', NULL, 'rMC10MamykJHX4dyPUac8lrJAA1JOvAqt0hlq4YnvZfbD4L7ekmNaXg8uOhD', NULL, 0, 0, 0, 0, 1, 1, 1, NULL, '2025-03-02 11:28:27', '2025-03-02 07:58:27'),
(505, '09159759717', 'علی', 'ابراهیمی', 2, 1, 0, '0639767850', '107812', '54612', NULL, NULL, '360170000000308519446007', '6037997273837550', 201, 12, 'غلامان', NULL, 12, 30, NULL, NULL, 'avatar.png', 4, -1, NULL, '2415', '1739480924', '$2y$12$RXjjnjAnegCeowddYc1hLe2s6kTlSUOH8vIU1BmqtKQ/HTI7UH6pS', '2025-02-13 17:36:57', NULL, 'OuzbB5R3sys15tfgSVBwjYkzO921iPdXuFvfPlM9lp7qAnctAdVaQiln4OVo', 505, 1, 1, 0, 0, 0, 1, 1, NULL, '2025-02-13 21:21:21', '2025-02-13 17:51:21'),
(506, '09158907945', 'سید محمد مهدی', 'اسدی خانوکی', 2, 1, 0, '2980779512', '241272', '54335', NULL, NULL, '550170000000108401273000', '6037991945322851', 396, 11, 'مشهد', 'خرق', 21, 338, NULL, NULL, 'avatar.png', 4, -1, NULL, '6940', '1739564356', '$2y$12$LPYktsiLmiL3feFNzBDLM.99Tyu7lhjPHFPrNOZ00L1gzf0kfqY/W', '2025-02-14 16:47:25', NULL, 'AbtF5vBzL8UbkOviYOEhJhEbh3TGZLbdiEUuToliu3L3YFZiZUbKJhnzVOP7', 506, 1, 1, 0, 0, 0, 1, 1, NULL, '2025-02-14 20:24:01', '2025-02-14 20:24:01'),
(507, '09386465952', 'سیده مرضیه', 'ابراهیمی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8165', '1739603722', '$2y$12$XwlhcmoppRacmtMaKJJQ6eBHWXedouU0vMXJYzzcXNSP8oYNspNMe', '2025-02-15 03:43:39', NULL, 'YegGHLi8oM49mQLt93PKoNTxqzwbl3SdMPLwx3kzDBBeCBLqmt6z50Imgl14', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-03-01 12:45:43', '2025-03-01 09:15:43'),
(508, '09012880895', 'زهرا', 'قسمی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5183', '1739618325', '$2y$12$/U5Ku4m75SntzXu/NWNVN.FR1On.p2AcqD470JstT4VybYOQEBz3i', '2025-02-15 07:46:57', NULL, 'YfWNIFaXcnJy9la23lVMDIVwv8FBRnKVsF6mcFfZPckAibrD09Fr939XW8Cm', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-02-15 11:22:22', '2025-02-15 07:52:22'),
(509, '09122514169', 'سیدمجتبی', 'خاتمی بیدگلی', 2, 1, 0, '6199679032', '41567', '18119', NULL, NULL, '0300561661005', '6037991320754397', 327, 19, 'قم', NULL, NULL, NULL, 'قم خیابان اراک بلوارامام رضا علیه السلام مجتمع فردوس بلوک۴واحد۴۰۳', NULL, 'avatar.png', 4, -1, NULL, '6811', '1739637195', '$2y$12$Y4.hRNZ1.pqVkvV9T67TneaPnvwK4BEA1jhi.L8tN3d8BX.L1Grxa', '2025-02-17 16:39:05', NULL, 'aBxJ1tdnx9agbM5Qr2cRiwjo1RySTG0GrenS4phY3820HHysZFiymgNfY704', 509, 1, 1, 0, 0, 1, 1, 1, NULL, '2025-03-02 12:15:05', '2025-03-02 08:45:05'),
(510, '09138034861', 'عباس', 'سمرقندی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6868', '1739706786', '$2y$12$fXwunj3QCTM41jfTzjTdEOcLUDmwMGap981ozS73JcsBI4pRV.wFO', '2025-02-16 08:21:16', NULL, '5LiZnoaTAPt3oClooCIgIOHOV5UpbIomq1eIQX3iLfBioOSaClmx051IqkKE', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-16 11:51:16', '2025-02-16 11:51:16'),
(511, '09360806931', 'فرهاد', 'براتی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7215', '1739712563', '$2y$12$VT9EUNdDy9QEF6Rh1V97Dul.g1t9w94ZEaSqxrTG6x3nr94S55Kyu', '2025-02-16 09:57:28', NULL, 'EDgdA6soWXGGo0Pc5nh35KWvlCjVbqJAsH0J81aOX1AKSCjlnl8u4F4NUrYI', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-16 13:27:28', '2025-02-16 13:27:28'),
(512, '09158797502', 'مجتبی', 'نجمی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2319', '1739723795', '$2y$12$DWF2xyRKFztBWF9nAgNuf.RmVladxTf1dO4l6qqzQeeMyGmrU9f9S', '2025-02-16 13:05:02', NULL, '3mPkYhisN8KV5BhvuF9yPxwN8QQJ5zhwSFrgaJnAjv3kZmoFxQnQevleQJWA', NULL, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-16 17:01:37', '2025-02-16 17:01:37'),
(513, '09179788621', 'معصومه', 'بیکاهیان', 2, 2, 0, '4699947409', '272996', NULL, '61834', NULL, '300170000000342564694004', '6037997523275932', 216, 29, 'دهبارز', NULL, 29, 216, 'استان هرمزگان شهرستان رودان خیابان شهید چمران', NULL, 'image91871739738341.jpg', 2, 1, '4', '2161', '1739737180', '$2y$12$31i/.iIlpLCEveWlttMeHueYRru4xfEcH8e95ge6eLEoc0AMYd96y', '2025-02-16 16:47:53', NULL, 'QPKyi7g8D1ZS9fBVCcJajfodGHWIvF1P6i0csWfgNCLn7b69j7Wbmllbnfzn', 11, 1, 0, 1, 0, 1, 1, 1, NULL, '2025-03-05 13:28:39', '2025-03-05 09:58:39'),
(514, '09019547536', 'مرضیه', 'عبدالهی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '8664', '1739822266', '$2y$12$sbVbxaN6kHxkFOGU.CJ7oeu.K5PLdlWUS.mZqXPD8xGtH1RIeiEQm', '2025-02-17 16:26:36', NULL, 'jZ8CsFuwTjGsIn2IPmTWxza29ll3ghUrBIqj0wmcGEDmQ19clD66CNZwYdwC', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-02-17 20:00:07', '2025-02-17 16:30:07'),
(515, '09113598746', 'کاظم', 'قاسمی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '7569', '1739885490', '$2y$12$zu26OqJSnH9M74jg/C2OHOdia1/Ab9QFtPqmwlNg8gvDNSmW0VNre', '2025-02-18 09:59:46', NULL, 'PhSxYJ6BknyDCv6D22eTtTDYgVdSh0Fznt2e2knlQ5tYep0EDUVMp8EpjxfR', NULL, 0, 0, 0, 0, 1, 0, 1, NULL, '2025-03-03 10:09:04', '2025-03-03 06:39:04'),
(516, '09171805920', 'احمد', 'عدالتی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '1670', '1739967815', '$2y$12$veu4aSuMKLjvP80fz1nPT.dh1wLXeeW3Y6B/SJGUrLvrPH8snbIjS', '2025-02-19 08:52:08', NULL, 'L6n4JSne5eWLPPSqHDnAyctdppoEQayLie5idDlVS6US9dx9wF2e2rnOkSVd', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-19 12:22:08', '2025-02-19 12:22:08'),
(517, '09360396601', 'حسین', 'سرائی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2442', '1740069474', '$2y$12$eUHoFAp.as5H2B7wfPLZye6PhSJDdqobhBN8gyXkvE3ZM/zmoSpZO', '2025-02-20 13:06:41', NULL, '569JCzO3D5uPunSzBgmU3I3Lda0ErnnKzk7aaotniBhTYyUjLF7629jcZvv4', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-20 16:36:41', '2025-02-20 16:36:41'),
(518, '09192522597', 'جواد', 'اعتمادی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5166', '1740478322', '$2y$12$kvGLBM7JjRYMb3FPB56rxeb99UW.6VSKJuavJ7W8TVWDpevJFVqvq', '2025-02-25 07:28:30', NULL, 'cBNAamkCi8NooQOWAaSoSWfdcebjg61ReOQSiDJUIzSQCg7utKIyzD8rYE3C', 518, 0, 0, 0, 0, 0, 1, 1, NULL, '2025-02-25 11:09:51', '2025-02-25 11:09:51'),
(519, '09191111111', 'جواد', 'اعتمادی', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image82401740297638.jpg', NULL, 1, NULL, NULL, NULL, '$2y$12$vcEQNsXoiiDjxuIxeGSv3.U18kpwP4EAx4WZosojDR8Y0iJtp0GyK', NULL, 11, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, '2025-02-23 04:35:47', '2025-02-23 08:05:47', '2025-02-23 04:35:47'),
(520, '09107198158', 'جواد', 'اعتمادی', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image99981740304840.jpg', NULL, 1, NULL, '6962', '1741416212', '$2y$12$JkOmfktYzJqIOJHxhSz1C.W0QJu5dkRj9mL59tzZZRnyDv50GlgzC', '2025-03-08 03:12:39', 11, 'MOzcOj2JmelgTtWhtYAs6dE03QeAQwUDmh3CCISPzEJHm0708kKxtHIgbWGz', 11, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-03-08 06:42:39', '2025-03-08 03:12:39'),
(521, '09193781106', 'سید رضا', 'علوی', 2, 1, 1, '1894095502', '161790', NULL, NULL, NULL, '360190000000307379656009', '6037697465130778', 327, 19, 'قم', NULL, 19, 327, 'بلوار سمیه ک14پ66', NULL, 'image32861740400778.jpg', 4, 1, '5', '7839', '1740400465', '$2y$12$FLGZfH.q9GcdmSVY5RRWZOjFhDHmAiFYz/V7YST9LY96Y.RMgEiqK', '2025-02-24 09:02:39', NULL, 'p9ebHxIQ2Lx1b8ba8PQkNj5XeUu4AcI4AVOkOAWoYligUynoNcNIE8oZZ20p', 11, 1, 0, 0, 0, 1, 1, 1, NULL, '2025-02-24 13:05:26', '2025-02-24 13:05:26'),
(522, '09103265889', 'احمد', 'قاسمی', 2, 1, 0, '1100336265', '334278', NULL, NULL, NULL, '50017000000011602500007', '6037991928981533', 327, 19, NULL, NULL, 4, 310, 'قم باجک ۱ ک ۲۹ پ ۱۴', NULL, 'image32011740480550.jpg', 2, 1, '0', '9472', '1740480197', '$2y$12$fp9ad3NGoa6EsSEvZHOnpOXQuMLtXlOpD35a0YpmB2Le1RQYrgqQ.', '2025-02-25 07:11:34', NULL, 'V0G5CHN60CwmSRjsE7hrbRT0q7BL3CaFPbPac1DBfTNJKIRIs6CGPU8bEKgu', 12, 1, 0, 0, 0, 0, 0, 1, NULL, '2025-02-25 11:15:06', '2025-02-25 07:45:06'),
(523, '09358278542', 'سیدرضا', 'علوی', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image2311740491718.jpg', NULL, 1, NULL, '7293', '1740492281', '$2y$12$NWtnN/xhEFE6Wh3w/L7QWuP16fQnv2lM8XnA/1QK8HuaRU4FU1fUW', '2025-03-10 09:01:04', 11, 'NBTna477s8oKbZKjjxhMJf87cuEy1QUxumbtZ56PndrQ9ujxDFTgif3HDk7L', 523, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-03-10 12:31:04', '2025-03-10 09:01:04'),
(524, '09127545199', 'حسین', 'زینل بیک', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '2587', '1740595616', '$2y$12$yphC.wwlg4L1CPS4AEYp2uNPkPuVlX2LpxF6dquezzcd9C9//ekIa', '2025-02-26 15:15:02', NULL, 'hJIyJzKrZg1zwZV4ad1gRQO1FVtJEyyDJWFGQ4wAm19GcuwlHmnO2DUiFrMK', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-26 18:45:02', '2025-02-26 18:45:02'),
(525, '09192532629', 'داریوش', 'سوری مالیچه', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4120', '1740772870', '$2y$12$q7W0VUJteZMeXuIb2QY9qOf7AO3C/cAPYh8SoZX9t7dnSaO9YBMQe', '2025-02-28 16:29:40', NULL, 'vyWWNvOEZZw4YTuU7pvTd1k8HJdDxAWUtjY1CkcsC0aWYWmFMOOrTDo0TchW', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-02-28 19:59:40', '2025-02-28 19:59:40'),
(526, '09010000000', 'علی', 'عالی زاده', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image28991741522687.jpg', NULL, 1, NULL, NULL, NULL, '$2y$12$ClXtdD4YoBE88i1j5veBP.hZ841e7l9NMoZaF1I8gxkm7PhshlzXK', '2025-03-10 08:22:56', 11, NULL, 11, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-03-10 11:52:56', '2025-03-10 08:22:56'),
(527, '09131697608', 'مهدی', 'شاهچراغی', 2, 1, 0, '1111111123', NULL, NULL, NULL, NULL, '333333', '3333333333333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image85581741518429.jpeg', 3, 1, '1', NULL, NULL, '$2y$12$n2OfFDVbeTgY4yF21ZX6ne8Dez3yKNJEWUf1kRiZvJp777JK84ecK', NULL, 11, NULL, 11, 0, 0, 0, 0, 1, 0, 2, NULL, '2025-03-09 12:25:45', '2025-03-09 08:55:45'),
(528, '09179075835', 'مهدی', 'نوازشی', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '6006', '1741527442', '$2y$12$LqL1ybfAkEglws85UkqD4u5jRVEj7jInifo.ipCNfQK.xxpCL3mWS', '2025-03-09 10:05:30', NULL, 'HIHET2HteFNmqo9kMzTpWMsezoJmMIQB2l7ofcFo0dFCu8wNhrbIHZAw7TM7', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-03-09 13:35:30', '2025-03-09 13:35:30'),
(529, '09019434200', 'سمیرا', 'قوی پنجه', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '5429', '1741589069', '$2y$12$qJw1cibavRCGYWHkraRPZuyNw7NhF1oW/J3tdo6aasi5456lDH32e', '2025-03-10 03:12:41', NULL, 'n8glzH4I5B1i2eWyvlaFhO2n1KtiXUHw7obM3QdR9jEEbbzO5BoYduRHSXRI', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-03-10 06:42:41', '2025-03-10 06:42:41'),
(530, '09387922747', 'عباس', 'عباسیان گول', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '4074', '1741609422', '$2y$12$dBEudTYHC2.5SqwuS7DLz.WVlUmZOBFchCjzqyWuhkMOWR0.scwSu', '2025-03-10 08:51:54', NULL, 'B0Jd9kOjyEBd6ekS4RJWJy4NEdAgsIM89Ajxm0NexKHNJDhRt91XXQFpS1fX', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-03-10 12:21:54', '2025-03-10 12:21:54'),
(531, '09174538793', 'الناز', 'قربانی جعفربیگلو', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.png', NULL, -1, NULL, '3520', '1741629938', '$2y$12$P4paP68PeT/ZrvDrAwJ4Z.ivF4TGqWDbU0uqm7muW4kBqz1niafWG', '2025-03-10 14:34:14', NULL, 'VH0VarczuykiupXx91lnbjCcm9zG9u6d1fOZ53D1cKq3TRKbVkQeAgibjEzF', NULL, 0, 0, 0, 0, 0, 0, 1, NULL, '2025-03-10 18:04:14', '2025-03-10 18:04:14');

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
(1, 166, 11, 'ایشان با شماره دیگه عضو شده', 1, NULL, '2025-02-11 06:34:27', NULL),
(2, 463, 11, '09036091920', 1, NULL, '2025-02-11 06:35:12', NULL);

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
(12, 64, NULL, 'سلام علیکم  . شماره 09118599711 شما ثبت شد و جایگزین شد', 1, 1, NULL, '2025-01-07 04:26:19', '2025-01-07 04:26:19'),
(13, 55, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-05 12:44:36', '2025-02-05 12:44:36'),
(14, 228, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-05 12:46:47', '2025-02-05 12:46:47'),
(15, 226, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-05 12:57:12', '2025-02-05 12:57:12'),
(16, 225, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-23 06:17:02', '2025-02-23 02:47:02'),
(17, 224, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-11 10:12:48', '2025-02-11 06:42:48'),
(18, 221, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-05 20:37:26', '2025-02-05 17:07:26'),
(19, 219, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-05 13:01:50', '2025-02-05 13:01:50'),
(20, 218, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-05 13:02:53', '2025-02-05 13:02:53'),
(21, 231, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-05 16:52:46', '2025-02-05 13:22:46'),
(22, 216, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-05 13:22:39', '2025-02-05 13:22:39'),
(23, 215, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-10 01:40:32', '2025-02-09 22:10:32'),
(24, 212, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-05 13:25:18', '2025-02-05 13:25:18'),
(25, 5, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-10 19:39:55', '2025-02-10 16:09:55'),
(26, 235, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-10 15:14:41', '2025-02-10 11:44:41'),
(27, 236, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-16 04:46:48', '2025-02-16 01:16:48'),
(28, 16, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-09 11:00:41', '2025-02-09 07:30:41'),
(29, 18, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-06 18:04:14', '2025-02-06 14:34:14'),
(30, 19, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-06 09:00:17', '2025-02-06 09:00:17'),
(31, 22, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-06 09:44:01', '2025-02-06 09:44:01'),
(32, 24, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nآدرس !!!!\nيا علی', 1, 0, NULL, '2025-02-09 08:01:20', '2025-02-09 04:31:20'),
(33, 25, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nشماره شبا !!!\nيا علی', 1, 1, NULL, '2025-02-06 09:59:54', '2025-02-06 09:59:54'),
(34, 31, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-06 10:20:41', '2025-02-06 10:20:41'),
(35, 33, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nلطفا شماره شبا!!!\nيا علی', 1, 0, NULL, '2025-02-08 18:02:34', '2025-02-08 14:32:34'),
(36, 34, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-06 20:49:40', '2025-02-06 17:19:40'),
(37, 37, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-06 10:34:09', '2025-02-06 10:34:09'),
(38, 38, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nلطفا شماره شبا !!!!\nيا علی', 1, 0, NULL, '2025-02-06 15:23:54', '2025-02-06 11:53:54'),
(39, 48, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید (کد ها!!!)\nيا علی', 1, 1, NULL, '2025-02-07 08:45:27', '2025-02-07 05:15:27'),
(40, 52, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-09 10:32:01', '2025-02-09 07:02:01'),
(41, 54, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 05:23:10', '2025-02-07 05:23:10'),
(42, 57, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-08 08:48:32', '2025-02-08 05:18:32'),
(43, 60, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-09 18:25:54', '2025-02-09 14:55:54'),
(44, 65, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-09 14:18:41', '2025-02-09 10:48:41'),
(45, 68, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-08 10:11:52', '2025-02-08 06:41:52'),
(46, 72, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 06:58:35', '2025-02-07 06:58:35'),
(47, 74, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 07:00:26', '2025-02-07 07:00:26'),
(48, 75, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 07:01:10', '2025-02-07 07:01:10'),
(49, 81, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 08:36:56', '2025-02-07 08:36:56'),
(50, 265, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-07 12:13:24', '2025-02-07 08:43:24'),
(51, 266, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 10:16:41', '2025-02-07 10:16:41'),
(52, 265, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 10:18:05', '2025-02-07 10:18:05'),
(53, 251, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 10:26:02', '2025-02-07 10:26:02'),
(54, 254, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 10:35:39', '2025-02-07 10:35:39'),
(55, 256, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-07 14:18:57', '2025-02-07 10:48:57'),
(56, 271, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 10:40:02', '2025-02-07 10:40:02'),
(57, 269, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 10:40:24', '2025-02-07 10:40:24'),
(58, 270, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 10:40:54', '2025-02-07 10:40:54'),
(59, 272, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 10:41:24', '2025-02-07 10:41:24'),
(60, 108, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 10:45:06', '2025-02-07 10:45:06'),
(61, 273, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-07 14:23:14', '2025-02-07 10:53:14'),
(62, 247, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 0, NULL, '2025-02-10 15:27:45', '2025-02-10 11:57:45'),
(63, 248, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-07 10:55:17', '2025-02-07 10:55:17'),
(64, 176, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-08 09:36:17', '2025-02-08 09:36:17'),
(65, 157, NULL, 'با سلام و احترام \nسرور گرامی ! لطفا از قسمت پروفایل خود نسبت به تکمیل مشخصات اقدام فرمایید \nيا علی', 1, 1, NULL, '2025-02-08 12:13:02', '2025-02-08 12:13:02'),
(66, 2, NULL, 'تست', 1, 1, NULL, '2025-02-17 08:39:34', '2025-02-17 08:39:34'),
(67, 7, NULL, 'سلام  علیکم  لطفا پروفایل خود را تکمیل نمایید . یا علی', 1, 0, NULL, '2025-02-22 13:15:20', '2025-02-22 09:45:20'),
(68, 521, NULL, 'سلام علیکم خوش امدید', 1, 0, NULL, '2025-02-24 12:49:00', '2025-02-24 09:19:00');

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
(212, 10, NULL, 89, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 5, 3, 327, 19, 'قم', NULL, 'امام حسین علیه السلام', NULL, NULL, NULL, NULL),
(203, 20, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 32, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 46, 2, 396, 11, 'مشهد', NULL, 'علی بن موسی الرضا ع', NULL, NULL, NULL, NULL),
(69, 4, NULL, 349, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 61, 4, 53, 6, 'مهران', NULL, 'توحید', NULL, NULL, NULL, NULL),
(244, 62, 4, 48, 1, NULL, 'عربی', 'توحید', NULL, NULL, NULL, NULL),
(115, 64, 2, 424, 27, 'نکا', 'دوقانلو', 'حضرت ابوالفضل ع', NULL, NULL, NULL, NULL),
(236, 56, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 28, 4, 281, 9, 'کیان', NULL, 'حجاب', NULL, NULL, NULL, NULL),
(333, 44, 2, 117, 11, 'تربت حیدریه', NULL, 'حضرت قاسم ابن الحسن', NULL, NULL, NULL, NULL),
(332, 44, 2, 117, 11, 'تربت حیدریه', NULL, 'اداره راهداری و حمل و نقل', NULL, NULL, NULL, NULL),
(61, 66, 4, 13, 24, 'انبارالوم', 'گوک تپه ۱', 'آنه بی بی آهنگری', NULL, NULL, NULL, NULL),
(90, 69, 2, 409, 31, 'مهريز', NULL, 'جامع بیدک', NULL, NULL, NULL, NULL),
(64, 70, 4, 13, 24, 'آق قلا', 'انقلاب', 'استان گلستان شهرستان اق قلا بخش سد وشمگیر روستای انقلاب', NULL, NULL, NULL, NULL),
(648, 77, NULL, 332, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 15, NULL, 125, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, 13, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 33, NULL, 334, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 78, 4, 423, 2, 'نقده', NULL, 'شهیدقنبراژدری', NULL, NULL, NULL, NULL),
(169, 14, NULL, 13, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(645, 29, 2, 106, 8, 'پاکدشت', NULL, 'حضرت قائم', NULL, NULL, NULL, NULL),
(142, 120, 2, 216, 29, 'دهبارز', NULL, 'دبیرستان مکتب الزهرا', NULL, NULL, NULL, NULL),
(85, 94, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 141, 4, 335, 30, 'کبودآهنگ', 'نرفتم', 'شهید خضرایی پایگاه شهید نوژه', NULL, NULL, NULL, NULL),
(87, 141, 2, 335, 30, 'کبودراهنگ', 'نبودم', 'نماز خانه آموزشگاه', NULL, NULL, NULL, NULL),
(89, 143, NULL, 304, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 38, 2, 443, 30, NULL, 'ارزانفود', 'صاحب الزمان', NULL, NULL, NULL, NULL),
(94, 38, 1, 443, 30, 'مریانج', NULL, 'ابوالفضلی کوی بید آبادی', NULL, NULL, NULL, NULL),
(98, 155, 4, 423, 2, 'نقده بخش محمدیار', NULL, 'راهنمایی۲۲ بهمن محمدیاز', NULL, NULL, NULL, NULL),
(215, 27, 2, 37, 4, 'باغبهادران', 'کرچگان', 'مسجد جامع', NULL, NULL, NULL, NULL),
(220, 39, 2, 407, 6, 'مرکزی', NULL, 'بعثت', NULL, NULL, NULL, NULL),
(219, 39, 2, 407, 6, 'مهران', 'مهران', 'بعثت', NULL, NULL, NULL, NULL),
(560, 53, 4, 222, 21, 'محمد آباد', NULL, 'مدرسه متوسطه دوره دوم زینب کبری س', NULL, NULL, NULL, NULL),
(107, 67, 4, 44, 21, 'انار', NULL, 'شهید علیزاده', NULL, NULL, NULL, NULL),
(108, 67, NULL, 44, 21, NULL, 'بیاض', NULL, NULL, NULL, NULL, NULL),
(110, 137, NULL, 336, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, 111, NULL, 176, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 114, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 186, NULL, 396, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 182, NULL, 309, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 122, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 103, NULL, 417, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 51, NULL, 432, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 17, NULL, 375, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 159, 4, 7, 4, 'ابوزیدآباد', 'حسین آباد کویر', 'شهادت', NULL, NULL, NULL, NULL),
(577, 58, NULL, 115, 1, 'تبریز', NULL, 'مسجد طفلان مسلم ع', NULL, NULL, NULL, NULL),
(134, 21, 2, 43, 13, 'امیدیه', 'امیدیه', 'شهیدخدادادزاده', NULL, NULL, NULL, NULL),
(629, 25, 4, 423, 2, 'شهرنقده', NULL, 'مدرسه پسرانه ابتدایی', NULL, NULL, NULL, NULL),
(410, 195, 4, 396, 11, 'مشهد', NULL, 'رازدان', NULL, NULL, NULL, NULL),
(409, 195, 2, 396, 11, 'بلوار شاهنامه ۷۶', 'محمد آباد', 'امام حسین ع', NULL, NULL, NULL, NULL),
(562, 23, 4, 332, 4, 'کاشان', NULL, 'کوثر', NULL, NULL, NULL, NULL),
(145, 200, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(649, 204, 2, 421, 4, 'بادرود', 'بادرود', 'میدان میر', NULL, NULL, NULL, NULL),
(369, 205, NULL, 419, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 26, NULL, 336, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(636, 83, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, 188, 4, 222, 21, NULL, 'شلتوک آباد', 'دبستان جوادالائمه', NULL, NULL, NULL, NULL),
(154, 206, NULL, 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, 217, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 220, 2, 389, 1, 'مراغه', NULL, 'نماز خانه اداره', NULL, NULL, NULL, NULL),
(162, 222, NULL, 37, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 196, 4, 218, 21, 'زهکلوت', NULL, 'زینبیه زهکلوت', NULL, NULL, NULL, NULL),
(578, 229, NULL, 377, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 213, 2, 435, 8, 'ورامین', NULL, 'الزهرا(س)', NULL, NULL, NULL, NULL),
(564, 169, 4, 339, 22, 'کرمانشاه', NULL, 'هنرستان رسالت', NULL, NULL, NULL, NULL),
(197, 231, 4, 411, 2, 'چهاربرج', NULL, 'مدرسه متوسطه اول والفجر', NULL, NULL, NULL, NULL),
(185, 221, 2, 389, 1, 'مراغه', 'صومعه سفلی', 'امین الشرع', NULL, NULL, NULL, NULL),
(192, 63, NULL, 54, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 63, 4, 54, 6, 'ایوان', NULL, 'مدرسه عاطفه رشیدی', NULL, NULL, NULL, NULL),
(194, 216, 2, 435, 8, 'ورامین', NULL, 'پنج تن آل عبا', NULL, NULL, NULL, NULL),
(200, 219, NULL, 112, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 231, NULL, 411, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 7, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 8, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 239, NULL, 30, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 24, NULL, 99, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(631, 242, 2, 46, 13, 'نیستم', 'نیستم', 'مسجد امام سجاد علیه السلام', NULL, NULL, NULL, NULL),
(211, 9, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 30, NULL, 300, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 246, NULL, 46, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 250, NULL, 223, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 252, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 18, 2, 306, 4, 'فریدون شهر', 'میلاگرد', 'صاحب الزمان عجل الله', NULL, NULL, NULL, NULL),
(492, 22, NULL, 321, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 34, NULL, 125, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 40, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 42, NULL, 214, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 35, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 48, NULL, 339, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 134, 2, 157, 26, 'خرم آباد', NULL, 'شهید آیت الله مدنی چهارراه طیب', NULL, NULL, NULL, NULL),
(245, 73, NULL, 13, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 257, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 263, 4, 157, 26, 'خرم آباد', 'خرم آباد', 'مدارس دانشگاه حوزه', NULL, NULL, NULL, NULL),
(257, 80, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 82, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, 264, 2, 193, 26, 'دورود', NULL, 'حضرت ابوالفضل', NULL, NULL, NULL, NULL),
(601, 264, 2, 193, 26, 'دورود', NULL, 'حضرت ابوالفضل', NULL, NULL, NULL, NULL),
(262, 267, NULL, 223, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 268, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 260, NULL, 283, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 261, NULL, 29, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 262, NULL, 208, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 255, NULL, 339, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 272, 3, 396, 11, 'مشهد', 'محله آوینی', 'صاحب الزمان عج', NULL, NULL, NULL, NULL),
(274, 270, 4, 396, 11, 'جدید بینالود', NULL, 'مسجد', NULL, NULL, NULL, NULL),
(275, 244, NULL, 102, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 245, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 279, 3, 396, 11, 'مشهد', 'بهارستان (کورده)', 'روستای بهارستان (کورده)', NULL, NULL, NULL, NULL),
(282, 280, 2, 251, 17, 'سروستان', NULL, 'امام حسین', NULL, NULL, NULL, NULL),
(283, 277, 3, 19, 28, 'ساروق', 'جیریا', 'حضرت رقیه', NULL, NULL, NULL, NULL),
(285, 282, NULL, 396, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(651, 284, NULL, 428, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 286, 2, 396, 11, 'شهر جدید بینالود', 'روستای سلطان آباد نمک', '۷۵ کیلومتری جاده قدیم مشهد نیشابور بعد از شهر جدید بینالود روستای سلطان آباد نمک', NULL, NULL, NULL, NULL),
(305, 292, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 55, 2, 211, 25, 'رشت', 'پیرکلاچای', 'امام حسین علیه السلام', NULL, NULL, NULL, NULL),
(395, 296, 3, 396, 11, 'مشهد', 'دیزباد', 'روستای دیزبادسفلی', NULL, NULL, NULL, NULL),
(614, 232, NULL, 304, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 259, 2, 104, 29, 'پارسیان', '.', 'مسجد فاطمه الزهرا س', NULL, NULL, NULL, NULL),
(297, 251, 2, 389, 1, 'مراغه', 'مراغه', 'محمد صادق خان', NULL, NULL, NULL, NULL),
(298, 251, 2, 389, 1, 'مراغه', 'مراغه', 'شیخ بابا', NULL, NULL, NULL, NULL),
(494, 241, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 290, NULL, 396, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 291, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 43, 2, 421, 4, 'بادرود', 'فمی', 'مسجد حضرت ابوالفضل علیه السلام', NULL, NULL, NULL, NULL),
(633, 31, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 116, NULL, 430, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, 304, 2, 396, 11, 'مشهد طبرسی شمالی', NULL, 'مسجد النبی ص', NULL, NULL, NULL, NULL),
(313, 304, 4, 396, 11, 'مشهد طبرسی شمالی', NULL, 'دبیرستان پسرانه شهید چراغچی', NULL, NULL, NULL, NULL),
(314, 297, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 313, 4, 16, 31, 'ابرکوه', NULL, 'مدرسه ابتدائی شهید محمد فلاح زاده', NULL, NULL, NULL, NULL),
(435, 302, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 319, 4, 37, 4, 'اصفهان', 'روران', 'آموزشگاه ارشاد روران', NULL, NULL, NULL, NULL),
(319, 102, 3, 7, 4, 'سفیدشهر', NULL, 'قائمیه', NULL, NULL, NULL, NULL),
(563, 169, 2, 339, 22, 'کرمانشاه', NULL, 'مسجد حضرت ام البنین(س)', NULL, NULL, NULL, NULL),
(325, 319, NULL, 37, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 330, NULL, 94, 8, NULL, 'اورین', NULL, NULL, NULL, NULL, NULL),
(363, 337, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(639, 344, 4, 396, 11, 'مشهد', NULL, 'مدرسه المنجی', NULL, NULL, NULL, NULL),
(638, 344, 2, 396, 11, 'مشهد', NULL, 'مدرسه المنجی', NULL, NULL, NULL, NULL),
(364, 332, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 360, 4, 396, 11, 'مشهد', 'مشهد', 'دبیرستان شهید صیاد شیرازی', NULL, NULL, NULL, NULL),
(345, 86, NULL, 339, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 367, 2, 396, 11, NULL, 'رسالت', 'پیغمبر', NULL, NULL, NULL, NULL),
(367, 373, 2, 396, 11, 'مشهد', NULL, 'امام رضا علیه السلام', NULL, NULL, NULL, NULL),
(349, 309, NULL, 392, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 328, 2, 423, 2, 'محمدیار', NULL, 'صاحب الزمان', NULL, NULL, NULL, NULL),
(353, 381, NULL, 280, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, 16, NULL, 246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, 100, NULL, 396, 11, NULL, NULL, 'مشهد مقدس مبلغین جهادی حیدریون', NULL, NULL, NULL, NULL),
(362, 380, NULL, 49, 13, NULL, NULL, 'خوزستان', NULL, NULL, NULL, NULL),
(359, 387, 4, 396, 11, 'مشهد', NULL, 'شهید خطیبی', NULL, NULL, NULL, NULL),
(360, 183, NULL, 2, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, 399, 4, 396, 11, 'مشهد', NULL, 'مدرسه صدرا', NULL, NULL, NULL, NULL),
(371, 132, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 411, 2, 396, 11, 'مشهد', 'مشهد', 'نمازخانه', NULL, NULL, NULL, NULL),
(635, 91, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 420, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 421, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, 422, NULL, 68, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, 427, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, 428, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, 429, NULL, 290, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, 426, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, 395, 2, 396, 11, 'مشهد گروه حیدریون', 'گروه حیدریون', 'مدرسه عالی شهید مطهری واقع در کوهسنگی ۱۵', NULL, NULL, NULL, NULL),
(388, 60, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, 442, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 440, 3, 170, 4, NULL, 'رحمت آباد', 'قمربنی هاشم', NULL, NULL, NULL, NULL),
(393, 164, NULL, 271, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(618, 335, 4, 396, 11, 'مشهدمقدس', NULL, 'فعال در مدارس سطح شهر مشهدمقدس', NULL, NULL, NULL, NULL),
(447, 430, 4, 396, 11, 'مشهد', NULL, 'ولی عصر', NULL, NULL, NULL, NULL),
(404, 418, 3, 396, 11, 'مشهد', NULL, 'حیدریون', NULL, NULL, NULL, NULL),
(407, 449, 4, 396, 11, 'مشهد', NULL, 'مجموعه مدارس راه فاطمی', NULL, NULL, NULL, NULL),
(459, 336, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, 199, NULL, 231, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 409, 2, 396, 11, 'مشهد', NULL, 'الله اکبر', NULL, NULL, NULL, NULL),
(422, 188, NULL, 222, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, 454, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 455, 2, 378, 4, 'باغبهادران', NULL, 'صاحب الزمان سرچشمه', NULL, NULL, NULL, NULL),
(427, 386, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 383, 2, 396, 11, 'مشهد', NULL, 'مسجد جوادیه و مسجد امام صادق علیه‏السلام', NULL, NULL, NULL, NULL),
(431, 174, NULL, 182, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 54, NULL, 71, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, 301, 4, 277, 13, 'شهر گوریه', 'شیخ حسین', 'شهدای شعیبیه', NULL, NULL, NULL, NULL),
(434, 432, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 412, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, 392, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 318, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, 423, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 456, NULL, 129, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, 417, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(652, 287, 2, 19, 28, 'اراک', NULL, 'حسینیه امام خمینی', NULL, NULL, NULL, NULL),
(452, 388, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, 368, 4, 231, 16, 'زه‌', 'حسن خون', 'شهیدآذرپیرا', NULL, NULL, NULL, NULL),
(456, 233, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, 226, NULL, 397, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 278, 2, 396, 11, 'مشهد', NULL, 'امام حسین', NULL, NULL, NULL, NULL),
(465, 462, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, 393, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, 201, NULL, 103, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, 340, NULL, 65, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, 345, 2, 396, 11, 'مشهد', 'خالی', 'مسجد حجت', NULL, NULL, NULL, NULL),
(504, 463, NULL, 327, 19, NULL, NULL, 'تهران -ورامین', NULL, NULL, NULL, NULL),
(590, 256, 2, 339, 22, 'کرمانشاه', NULL, 'حسینیه', NULL, NULL, NULL, NULL),
(477, 457, NULL, 166, 4, 'خمینی شهر', NULL, 'منزل خودمان ، منظریه فاز ۴', NULL, NULL, NULL, NULL),
(478, 457, NULL, 166, 4, 'خمینی شهر', NULL, 'چشمه لادر، میدان امام ، مکان تفریحی', NULL, NULL, NULL, NULL),
(479, 457, NULL, 166, 4, NULL, NULL, 'خوزستان و ایلام', NULL, NULL, NULL, NULL),
(480, 457, NULL, 166, 4, 'خمینی شهر', NULL, 'مسجد الزهرا', NULL, NULL, NULL, NULL),
(481, 457, NULL, 166, 4, 'خمینی شهر', NULL, 'منزل خودمان', NULL, NULL, NULL, NULL),
(482, 249, 3, 119, 31, 'تفت', NULL, 'محله شهدا', NULL, NULL, NULL, NULL),
(483, 446, NULL, 371, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, 209, NULL, 37, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, 465, 2, 332, 4, 'کاشان', 'عیسی آباد', 'مسجد حضرت ام البنین سلام الله علیه', NULL, NULL, NULL, NULL),
(489, 305, NULL, 28, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, 327, NULL, 423, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, 424, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, 107, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, 41, 3, 406, 17, 'فال', 'فال', 'حسینیه دارالقرآن وبیت الزهرا س', NULL, NULL, NULL, NULL),
(505, 463, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, 173, 4, 327, 19, 'قم', NULL, 'شهدای پورمحمدی', NULL, NULL, NULL, NULL),
(507, 224, 2, 146, 6, NULL, 'زنجیره علیا', 'صاحب زمان', NULL, NULL, NULL, NULL),
(508, 224, NULL, 146, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, 248, NULL, 270, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, 189, NULL, 401, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, 283, 2, 332, 4, 'کاشان', 'نصرآباد', 'خوابگاه دانشگاهی', NULL, NULL, NULL, NULL),
(514, 333, 3, 103, 3, 'پارس آباد', 'تکله کندی', 'هیات جوانان حضرت علی اکبر(ع)', NULL, NULL, NULL, NULL),
(515, 333, 4, 103, 3, 'پارس آباد', 'تکله کندی', 'زکیه', NULL, NULL, NULL, NULL),
(519, 163, 3, 244, 22, NULL, 'جلالوندعلیا', 'انصارالحسین', NULL, NULL, NULL, NULL),
(518, 163, 2, 244, 22, 'سرپل ذهاب', 'جلالوندعلیا', 'امام رضا علیه السلام', NULL, NULL, NULL, NULL),
(520, 359, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, 404, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, 384, NULL, 396, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, 434, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, 444, NULL, 336, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, 445, 2, 396, 11, 'مشهد', NULL, 'حضرت ابوالفضل عليه السلام', NULL, NULL, NULL, NULL),
(535, 437, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(620, 153, NULL, 300, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, 478, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, 479, 2, 39, 17, 'اقلید', NULL, 'حضرت سیدالشهدا علیه السلام', NULL, NULL, NULL, NULL),
(543, 482, 4, 25, 17, 'ارسنجان', 'دهستان شوراب', 'مدرسه شهید سید محمد باقر صدر', NULL, NULL, NULL, NULL),
(540, 486, 3, 238, 17, 'سپیدان', 'برشنه', 'حضرت ابالفضل علیه السلام', NULL, NULL, NULL, NULL),
(541, 96, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, 311, NULL, 158, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(544, 448, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, 481, 2, 238, 17, 'اردکان', NULL, 'قمر بنی هاشم(علیه السلام)', NULL, NULL, NULL, NULL),
(546, 481, NULL, 238, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, 431, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, 452, 2, 396, 11, 'مشهد', NULL, 'مسجد ولی عصر  رسالت ۷۲', NULL, NULL, NULL, NULL),
(549, 441, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, 496, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, 346, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, 377, NULL, 396, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, 165, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(561, 503, 4, 327, 19, 'جعفریه', 'قاهان', 'شهید فهمیده قاهان', NULL, NULL, NULL, NULL),
(572, 474, NULL, 54, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, 320, 3, 284, 12, 'شیروان', 'رضاآباد شرقی', 'داریم', NULL, NULL, NULL, NULL),
(583, 41, 4, 406, 17, 'فال', 'اسیر', 'مدرسه هنرستان شهراسیر', NULL, NULL, NULL, NULL),
(584, 41, 4, 406, 17, 'فال', 'فال', 'اسیر', NULL, NULL, NULL, NULL),
(594, 198, 2, 5, 1, 'eree', NULL, 'ereer', NULL, NULL, NULL, NULL),
(603, 258, NULL, 360, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, 413, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, 184, NULL, 392, 17, 'مرودشت', NULL, NULL, NULL, NULL, NULL, NULL),
(611, 184, NULL, 392, 17, 'مرودشت', NULL, NULL, NULL, NULL, NULL, NULL),
(612, 184, NULL, 392, 17, 'مرودشت', NULL, NULL, NULL, NULL, NULL, NULL),
(613, 184, NULL, 392, 17, 'مرودشت', NULL, NULL, NULL, NULL, NULL, NULL),
(615, 203, NULL, 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(616, 144, NULL, 293, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(617, 501, NULL, 437, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(619, 89, NULL, 129, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(625, 314, 2, 29, 30, 'اسدآباد', NULL, 'قدس', NULL, NULL, NULL, NULL),
(626, 314, 3, 29, 30, 'اسدآباد', NULL, 'سائلین آل یاسین و حسن بن حیدر علیه السلام', NULL, NULL, NULL, NULL),
(628, 521, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(630, 522, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(632, 513, NULL, 216, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(634, 52, NULL, 327, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(637, 101, NULL, 29, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(642, 348, 1, 246, 11, 'سرخس', 'کلاته عوض', 'مسجد حضرت فاطمه الزهرا سلام الله علیها', NULL, NULL, NULL, NULL),
(644, 234, 2, 53, 6, 'ایلام', NULL, 'حضرت عباس', NULL, NULL, NULL, NULL),
(646, 109, NULL, 421, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `blog_subjects`
--
ALTER TABLE `blog_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=836;

--
-- AUTO_INCREMENT for table `cultural_users`
--
ALTER TABLE `cultural_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `promotion_agree`
--
ALTER TABLE `promotion_agree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT for table `promotion_agree_item`
--
ALTER TABLE `promotion_agree_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=985;

--
-- AUTO_INCREMENT for table `promotion_positions`
--
ALTER TABLE `promotion_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotion_reports`
--
ALTER TABLE `promotion_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ticket_items`
--
ALTER TABLE `ticket_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tribunes`
--
ALTER TABLE `tribunes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=637;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT for table `user_notes`
--
ALTER TABLE `user_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_notif`
--
ALTER TABLE `user_notif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `user_promotions`
--
ALTER TABLE `user_promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=653;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - ghadir
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ghadir` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_persian_ci */;

USE `ghadir`;

/*Table structure for table `audience_types` */

DROP TABLE IF EXISTS `audience_types`;

CREATE TABLE `audience_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `audience_types` */

insert  into `audience_types`(`id`,`title`,`description`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'نوجوانان','',1,NULL,NULL,NULL),
(2,'جوانان','',1,NULL,NULL,NULL),
(3,'خانم ها','',1,NULL,NULL,NULL),
(4,'آقایان','',1,NULL,NULL,NULL);

/*Table structure for table `base_cities` */

DROP TABLE IF EXISTS `base_cities`;

CREATE TABLE `base_cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name_fa` varchar(50) DEFAULT NULL COMMENT 'نام',
  `province_id` int(11) DEFAULT NULL COMMENT 'شناسه استان',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=449 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `base_cities` */

insert  into `base_cities`(`id`,`name_fa`,`province_id`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'آبادان',13,1,NULL,NULL,NULL),
(2,'آباده',17,1,NULL,NULL,NULL),
(3,'آبدانان',6,1,NULL,NULL,NULL),
(4,'آبیک',18,1,NULL,NULL,NULL),
(5,'آذرشهر',1,1,NULL,NULL,NULL),
(6,'آرادان',15,1,NULL,NULL,NULL),
(7,'آران وبیدگل',4,1,NULL,NULL,NULL),
(8,'آزادشهر',24,1,NULL,NULL,NULL),
(9,'آستارا',25,1,NULL,NULL,NULL),
(10,'آستانه اشرفیه',25,1,NULL,NULL,NULL),
(11,'آشتیان',28,1,NULL,NULL,NULL),
(12,'آغاجاری',13,1,NULL,NULL,NULL),
(13,'آق قلا',24,1,NULL,NULL,NULL),
(14,'آمل',27,1,NULL,NULL,NULL),
(15,'آوج',18,1,NULL,NULL,NULL),
(16,'ابرکوه',31,1,NULL,NULL,NULL),
(17,'ابوموسی',29,1,NULL,NULL,NULL),
(18,'ابهر',14,1,NULL,NULL,NULL),
(19,'اراک',28,1,NULL,NULL,NULL),
(20,'اردبیل',3,1,NULL,NULL,NULL),
(21,'اردستان',4,1,NULL,NULL,NULL),
(22,'اردکان',31,1,NULL,NULL,NULL),
(23,'اردل',9,1,NULL,NULL,NULL),
(24,'ارزوییه',21,1,NULL,NULL,NULL),
(25,'ارسنجان',17,1,NULL,NULL,NULL),
(26,'ارومیه',2,1,NULL,NULL,NULL),
(27,'ازنا',26,1,NULL,NULL,NULL),
(28,'استهبان',17,1,NULL,NULL,NULL),
(29,'اسدآباد',30,1,NULL,NULL,NULL),
(30,'اسفراین',12,1,NULL,NULL,NULL),
(31,'اسکو',1,1,NULL,NULL,NULL),
(32,'اسلام آبادغرب',22,1,NULL,NULL,NULL),
(33,'اسلامشهر',8,1,NULL,NULL,NULL),
(34,'اشتهارد',5,1,NULL,NULL,NULL),
(35,'اشکذر',31,1,NULL,NULL,NULL),
(36,'اشنویه',2,1,NULL,NULL,NULL),
(37,'اصفهان',4,1,NULL,NULL,NULL),
(38,'اصلاندوز',3,1,NULL,NULL,NULL),
(39,'اقلید',17,1,NULL,NULL,NULL),
(40,'البرز',18,1,NULL,NULL,NULL),
(41,'الیگودرز',26,1,NULL,NULL,NULL),
(42,'املش',25,1,NULL,NULL,NULL),
(43,'امیدیه',13,1,NULL,NULL,NULL),
(44,'انار',21,1,NULL,NULL,NULL),
(45,'اندیکا',13,1,NULL,NULL,NULL),
(46,'اندیمشک',13,1,NULL,NULL,NULL),
(47,'اوز',17,1,NULL,NULL,NULL),
(48,'اهر',1,1,NULL,NULL,NULL),
(49,'اهواز',13,1,NULL,NULL,NULL),
(50,'ایجرود',14,1,NULL,NULL,NULL),
(51,'ایذه',13,1,NULL,NULL,NULL),
(52,'ایرانشهر',16,1,NULL,NULL,NULL),
(53,'ایلام',6,1,NULL,NULL,NULL),
(54,'ایوان',6,1,NULL,NULL,NULL),
(55,'بابل',27,1,NULL,NULL,NULL),
(56,'بابلسر',27,1,NULL,NULL,NULL),
(57,'باخرز',11,1,NULL,NULL,NULL),
(58,'باشت',23,1,NULL,NULL,NULL),
(59,'باغ ملک',13,1,NULL,NULL,NULL),
(60,'بافت',21,1,NULL,NULL,NULL),
(61,'بافق',31,1,NULL,NULL,NULL),
(62,'بانه',20,1,NULL,NULL,NULL),
(63,'باوی',13,1,NULL,NULL,NULL),
(64,'بجستان',11,1,NULL,NULL,NULL),
(65,'بجنورد',12,1,NULL,NULL,NULL),
(66,'بختگان',17,1,NULL,NULL,NULL),
(67,'بدره',6,1,NULL,NULL,NULL),
(68,'برخوار',4,1,NULL,NULL,NULL),
(69,'بردسکن',11,1,NULL,NULL,NULL),
(70,'بردسیر',21,1,NULL,NULL,NULL),
(71,'بروجرد',26,1,NULL,NULL,NULL),
(72,'بروجن',9,1,NULL,NULL,NULL),
(73,'بستان آباد',1,1,NULL,NULL,NULL),
(74,'بستک',29,1,NULL,NULL,NULL),
(75,'بشاگرد',29,1,NULL,NULL,NULL),
(76,'بشرویه',10,1,NULL,NULL,NULL),
(77,'بم',21,1,NULL,NULL,NULL),
(78,'بمپور',16,1,NULL,NULL,NULL),
(79,'بن',9,1,NULL,NULL,NULL),
(80,'بناب',1,1,NULL,NULL,NULL),
(81,'بندرانزلی',25,1,NULL,NULL,NULL),
(82,'بندرعباس',29,1,NULL,NULL,NULL),
(83,'بندرگز',24,1,NULL,NULL,NULL),
(84,'بندرلنگه',29,1,NULL,NULL,NULL),
(85,'بندرماهشهر',13,1,NULL,NULL,NULL),
(86,'بو یین و میاندشت',4,1,NULL,NULL,NULL),
(87,'بوانات',17,1,NULL,NULL,NULL),
(88,'بوشهر',7,1,NULL,NULL,NULL),
(89,'بوکان',2,1,NULL,NULL,NULL),
(90,'بویراحمد',23,1,NULL,NULL,NULL),
(91,'بویین زهرا',18,1,NULL,NULL,NULL),
(92,'بهاباد',31,1,NULL,NULL,NULL),
(93,'بهار',30,1,NULL,NULL,NULL),
(94,'بهارستان',8,1,NULL,NULL,NULL),
(95,'بهبهان',13,1,NULL,NULL,NULL),
(96,'بهشهر',27,1,NULL,NULL,NULL),
(97,'بهمیی',23,1,NULL,NULL,NULL),
(98,'بیجار',20,1,NULL,NULL,NULL),
(99,'بیرجند',10,1,NULL,NULL,NULL),
(100,'بیضا',17,1,NULL,NULL,NULL),
(101,'بیله سوار',3,1,NULL,NULL,NULL),
(102,'بینالود',11,1,NULL,NULL,NULL),
(103,'پارس آباد',3,1,NULL,NULL,NULL),
(104,'پارسیان',29,1,NULL,NULL,NULL),
(105,'پاسارگاد',17,1,NULL,NULL,NULL),
(106,'پاکدشت',8,1,NULL,NULL,NULL),
(107,'پاوه',22,1,NULL,NULL,NULL),
(108,'پردیس',8,1,NULL,NULL,NULL),
(109,'پلدختر',26,1,NULL,NULL,NULL),
(110,'پلدشت',2,1,NULL,NULL,NULL),
(111,'پیرانشهر',2,1,NULL,NULL,NULL),
(112,'پیشوا',8,1,NULL,NULL,NULL),
(113,'تاکستان',18,1,NULL,NULL,NULL),
(114,'تایباد',11,1,NULL,NULL,NULL),
(115,'تبریز',1,1,NULL,NULL,NULL),
(116,'تربت جام',11,1,NULL,NULL,NULL),
(117,'تربت حیدریه',11,1,NULL,NULL,NULL),
(118,'ترکمن',24,1,NULL,NULL,NULL),
(119,'تفت',31,1,NULL,NULL,NULL),
(120,'تفتان',16,1,NULL,NULL,NULL),
(121,'تفرش',28,1,NULL,NULL,NULL),
(122,'تکاب',2,1,NULL,NULL,NULL),
(123,'تنکابن',27,1,NULL,NULL,NULL),
(124,'تنگستان',7,1,NULL,NULL,NULL),
(125,'تویسرکان',30,1,NULL,NULL,NULL),
(126,'تهران',8,1,NULL,NULL,NULL),
(127,'تیران وکرون',4,1,NULL,NULL,NULL),
(128,'ثلاث باباجانی',22,1,NULL,NULL,NULL),
(129,'جاجرم',12,1,NULL,NULL,NULL),
(130,'جاسک',29,1,NULL,NULL,NULL),
(131,'جغتای',11,1,NULL,NULL,NULL),
(132,'جلفا',1,1,NULL,NULL,NULL),
(133,'جم',7,1,NULL,NULL,NULL),
(134,'جوانرود',22,1,NULL,NULL,NULL),
(135,'جویبار',27,1,NULL,NULL,NULL),
(136,'جوین',11,1,NULL,NULL,NULL),
(137,'جهرم',17,1,NULL,NULL,NULL),
(138,'جیرفت',21,1,NULL,NULL,NULL),
(139,'چادگان',4,1,NULL,NULL,NULL),
(140,'چاراویماق',1,1,NULL,NULL,NULL),
(141,'چالدران',2,1,NULL,NULL,NULL),
(142,'چالوس',27,1,NULL,NULL,NULL),
(143,'چاه بهار',16,1,NULL,NULL,NULL),
(144,'چایپاره',2,1,NULL,NULL,NULL),
(145,'چرام',23,1,NULL,NULL,NULL),
(146,'چرداول',6,1,NULL,NULL,NULL),
(147,'چگنی',26,1,NULL,NULL,NULL),
(148,'چناران',11,1,NULL,NULL,NULL),
(149,'حاجی اباد',29,1,NULL,NULL,NULL),
(150,'حمیدیه',13,1,NULL,NULL,NULL),
(151,'خاتم',31,1,NULL,NULL,NULL),
(152,'خاش',16,1,NULL,NULL,NULL),
(153,'خانمیرزا',9,1,NULL,NULL,NULL),
(154,'خداآفرین',1,1,NULL,NULL,NULL),
(155,'خدابنده',14,1,NULL,NULL,NULL),
(156,'خرامه',17,1,NULL,NULL,NULL),
(157,'خرم آباد',26,1,NULL,NULL,NULL),
(158,'خرم بید',17,1,NULL,NULL,NULL),
(159,'خرمدره',14,1,NULL,NULL,NULL),
(160,'خرمشهر',13,1,NULL,NULL,NULL),
(161,'خفر',17,1,NULL,NULL,NULL),
(162,'خلخال',3,1,NULL,NULL,NULL),
(163,'خلیل آباد',11,1,NULL,NULL,NULL),
(164,'خمیر',29,1,NULL,NULL,NULL),
(165,'خمین',28,1,NULL,NULL,NULL),
(166,'خمینی شهر',4,1,NULL,NULL,NULL),
(167,'خنج',17,1,NULL,NULL,NULL),
(168,'خنداب',28,1,NULL,NULL,NULL),
(169,'خواف',11,1,NULL,NULL,NULL),
(170,'خوانسار',4,1,NULL,NULL,NULL),
(171,'خور و بیابانک',4,1,NULL,NULL,NULL),
(172,'خوسف',10,1,NULL,NULL,NULL),
(173,'خوشاب',11,1,NULL,NULL,NULL),
(174,'خوی',2,1,NULL,NULL,NULL),
(175,'داراب',17,1,NULL,NULL,NULL),
(176,'دالاهو',22,1,NULL,NULL,NULL),
(177,'دامغان',15,1,NULL,NULL,NULL),
(178,'داورزن',11,1,NULL,NULL,NULL),
(179,'درگز',11,1,NULL,NULL,NULL),
(180,'درگزین',30,1,NULL,NULL,NULL),
(181,'درمیان',10,1,NULL,NULL,NULL),
(182,'دره شهر',6,1,NULL,NULL,NULL),
(183,'دزفول',13,1,NULL,NULL,NULL),
(184,'دشت آزادگان',13,1,NULL,NULL,NULL),
(185,'دشتستان',7,1,NULL,NULL,NULL),
(186,'دشتی',7,1,NULL,NULL,NULL),
(187,'دشتیاری',16,1,NULL,NULL,NULL),
(188,'دلفان',26,1,NULL,NULL,NULL),
(189,'دلگان',16,1,NULL,NULL,NULL),
(190,'دلیجان',28,1,NULL,NULL,NULL),
(191,'دماوند',8,1,NULL,NULL,NULL),
(192,'دنا',23,1,NULL,NULL,NULL),
(193,'دورود',26,1,NULL,NULL,NULL),
(194,'دهاقان',4,1,NULL,NULL,NULL),
(195,'دهگلان',20,1,NULL,NULL,NULL),
(196,'دهلران',6,1,NULL,NULL,NULL),
(197,'دیر',7,1,NULL,NULL,NULL),
(198,'دیلم',7,1,NULL,NULL,NULL),
(199,'دیواندره',20,1,NULL,NULL,NULL),
(200,'رابر',21,1,NULL,NULL,NULL),
(201,'راز و جرگلان',12,1,NULL,NULL,NULL),
(202,'راسک',16,1,NULL,NULL,NULL),
(203,'رامسر',27,1,NULL,NULL,NULL),
(204,'رامشیر',13,1,NULL,NULL,NULL),
(205,'رامهرمز',13,1,NULL,NULL,NULL),
(206,'رامیان',24,1,NULL,NULL,NULL),
(207,'راور',21,1,NULL,NULL,NULL),
(208,'رباط کریم',8,1,NULL,NULL,NULL),
(209,'رزن',30,1,NULL,NULL,NULL),
(210,'رستم',17,1,NULL,NULL,NULL),
(211,'رشت',25,1,NULL,NULL,NULL),
(212,'رشتخوار',11,1,NULL,NULL,NULL),
(213,'رضوانشهر',25,1,NULL,NULL,NULL),
(214,'رفسنجان',21,1,NULL,NULL,NULL),
(215,'روانسر',22,1,NULL,NULL,NULL),
(216,'رودان',29,1,NULL,NULL,NULL),
(217,'رودبار',25,1,NULL,NULL,NULL),
(218,'رودبارجنوب',21,1,NULL,NULL,NULL),
(219,'رودسر',25,1,NULL,NULL,NULL),
(220,'رومشکان',26,1,NULL,NULL,NULL),
(221,'ری',8,1,NULL,NULL,NULL),
(222,'ریگان',21,1,NULL,NULL,NULL),
(223,'زابل',16,1,NULL,NULL,NULL),
(224,'زاوه',11,1,NULL,NULL,NULL),
(225,'زاهدان',16,1,NULL,NULL,NULL),
(226,'زرقان',17,1,NULL,NULL,NULL),
(227,'زرند',21,1,NULL,NULL,NULL),
(228,'زرندیه',28,1,NULL,NULL,NULL),
(229,'زرین دشت',17,1,NULL,NULL,NULL),
(230,'زنجان',14,1,NULL,NULL,NULL),
(231,'زهک',16,1,NULL,NULL,NULL),
(232,'زیرکوه',10,1,NULL,NULL,NULL),
(233,'ساری',27,1,NULL,NULL,NULL),
(234,'سامان',9,1,NULL,NULL,NULL),
(235,'ساوجبلاغ',5,1,NULL,NULL,NULL),
(236,'ساوه',28,1,NULL,NULL,NULL),
(237,'سبزوار',11,1,NULL,NULL,NULL),
(238,'سپیدان',17,1,NULL,NULL,NULL),
(239,'سراب',1,1,NULL,NULL,NULL),
(240,'سراوان',16,1,NULL,NULL,NULL),
(241,'سرایان',10,1,NULL,NULL,NULL),
(242,'سرباز',16,1,NULL,NULL,NULL),
(243,'سربیشه',10,1,NULL,NULL,NULL),
(244,'سرپل ذهاب',22,1,NULL,NULL,NULL),
(245,'سرچهان',17,1,NULL,NULL,NULL),
(246,'سرخس',11,1,NULL,NULL,NULL),
(247,'سرخه',15,1,NULL,NULL,NULL),
(248,'سردشت',2,1,NULL,NULL,NULL),
(249,'سرعین',3,1,NULL,NULL,NULL),
(250,'سروآباد',20,1,NULL,NULL,NULL),
(251,'سروستان',17,1,NULL,NULL,NULL),
(252,'سقز',20,1,NULL,NULL,NULL),
(253,'سلسله',26,1,NULL,NULL,NULL),
(254,'سلطانیه',14,1,NULL,NULL,NULL),
(255,'سلماس',2,1,NULL,NULL,NULL),
(256,'سمنان',15,1,NULL,NULL,NULL),
(257,'سمیرم',4,1,NULL,NULL,NULL),
(258,'سنقر',22,1,NULL,NULL,NULL),
(259,'سنندج',20,1,NULL,NULL,NULL),
(260,'سوادکوه',27,1,NULL,NULL,NULL),
(261,'سوادکوه شمالی',27,1,NULL,NULL,NULL),
(262,'سیاهکل',25,1,NULL,NULL,NULL),
(263,'سیب و سوران',16,1,NULL,NULL,NULL),
(264,'سیرجان',21,1,NULL,NULL,NULL),
(265,'سیروان',6,1,NULL,NULL,NULL),
(266,'سیریک',29,1,NULL,NULL,NULL),
(267,'سیمرغ',27,1,NULL,NULL,NULL),
(268,'شادگان',13,1,NULL,NULL,NULL),
(269,'شازند',28,1,NULL,NULL,NULL),
(270,'شاهرود',15,1,NULL,NULL,NULL),
(271,'شاهین دژ',2,1,NULL,NULL,NULL),
(272,'شاهین شهرومیمه',4,1,NULL,NULL,NULL),
(273,'شبستر',1,1,NULL,NULL,NULL),
(274,'شفت',25,1,NULL,NULL,NULL),
(275,'شمیرانات',8,1,NULL,NULL,NULL),
(276,'شوش',13,1,NULL,NULL,NULL),
(277,'شوشتر',13,1,NULL,NULL,NULL),
(278,'شوط',2,1,NULL,NULL,NULL),
(279,'شهربابک',21,1,NULL,NULL,NULL),
(280,'شهرضا',4,1,NULL,NULL,NULL),
(281,'شهرکرد',9,1,NULL,NULL,NULL),
(282,'شهریار',8,1,NULL,NULL,NULL),
(283,'شیراز',17,1,NULL,NULL,NULL),
(284,'شیروان',12,1,NULL,NULL,NULL),
(285,'صالح آباد',11,1,NULL,NULL,NULL),
(286,'صحنه',22,1,NULL,NULL,NULL),
(287,'صومعه سرا',25,1,NULL,NULL,NULL),
(288,'طارم',14,1,NULL,NULL,NULL),
(289,'طالقان',5,1,NULL,NULL,NULL),
(290,'طبس',10,1,NULL,NULL,NULL),
(291,'طوالش',25,1,NULL,NULL,NULL),
(292,'عباس آباد',27,1,NULL,NULL,NULL),
(293,'عجب شیر',1,1,NULL,NULL,NULL),
(294,'عسلویه',7,1,NULL,NULL,NULL),
(295,'علی آباد کتول',24,1,NULL,NULL,NULL),
(296,'عنبرآباد',21,1,NULL,NULL,NULL),
(297,'فارسان',9,1,NULL,NULL,NULL),
(298,'فاروج',12,1,NULL,NULL,NULL),
(299,'فاریاب',21,1,NULL,NULL,NULL),
(300,'فامنین',30,1,NULL,NULL,NULL),
(301,'فراشبند',17,1,NULL,NULL,NULL),
(302,'فراهان',28,1,NULL,NULL,NULL),
(303,'فردوس',10,1,NULL,NULL,NULL),
(304,'فردیس',5,1,NULL,NULL,NULL),
(305,'فریدن',4,1,NULL,NULL,NULL),
(306,'فریدونشهر',4,1,NULL,NULL,NULL),
(307,'فریدونکنار',27,1,NULL,NULL,NULL),
(308,'فریمان',11,1,NULL,NULL,NULL),
(309,'فسا',17,1,NULL,NULL,NULL),
(310,'فلاورجان',4,1,NULL,NULL,NULL),
(311,'فنوج',16,1,NULL,NULL,NULL),
(312,'فومن',25,1,NULL,NULL,NULL),
(313,'فهرج',21,1,NULL,NULL,NULL),
(314,'فیروزآباد',17,1,NULL,NULL,NULL),
(315,'فیروزکوه',8,1,NULL,NULL,NULL),
(316,'فیروزه',11,1,NULL,NULL,NULL),
(317,'قایم شهر',27,1,NULL,NULL,NULL),
(318,'قاینات',10,1,NULL,NULL,NULL),
(319,'قدس',8,1,NULL,NULL,NULL),
(320,'قرچک',8,1,NULL,NULL,NULL),
(321,'قروه',20,1,NULL,NULL,NULL),
(322,'قزوین',18,1,NULL,NULL,NULL),
(323,'قشم',29,1,NULL,NULL,NULL),
(324,'قصرشیرین',22,1,NULL,NULL,NULL),
(325,'قصرقند',16,1,NULL,NULL,NULL),
(326,'قلعه گنج',21,1,NULL,NULL,NULL),
(327,'قم',19,1,NULL,NULL,NULL),
(328,'قوچان',11,1,NULL,NULL,NULL),
(329,'قیروکارزین',17,1,NULL,NULL,NULL),
(330,'کارون',13,1,NULL,NULL,NULL),
(331,'کازرون',17,1,NULL,NULL,NULL),
(332,'کاشان',4,1,NULL,NULL,NULL),
(333,'کاشمر',11,1,NULL,NULL,NULL),
(334,'کامیاران',20,1,NULL,NULL,NULL),
(335,'کبودرآهنگ',30,1,NULL,NULL,NULL),
(336,'کرج',5,1,NULL,NULL,NULL),
(337,'کردکوی',24,1,NULL,NULL,NULL),
(338,'کرمان',21,1,NULL,NULL,NULL),
(339,'کرمانشاه',22,1,NULL,NULL,NULL),
(340,'کلات',11,1,NULL,NULL,NULL),
(341,'کلاردشت',27,1,NULL,NULL,NULL),
(342,'کلاله',24,1,NULL,NULL,NULL),
(343,'کلیبر',1,1,NULL,NULL,NULL),
(344,'کمیجان',28,1,NULL,NULL,NULL),
(345,'کنارک',16,1,NULL,NULL,NULL),
(346,'کنگان',7,1,NULL,NULL,NULL),
(347,'کنگاور',22,1,NULL,NULL,NULL),
(348,'کوار',17,1,NULL,NULL,NULL),
(349,'کوثر',3,1,NULL,NULL,NULL),
(350,'کوه چنار',17,1,NULL,NULL,NULL),
(351,'کوهبنان',21,1,NULL,NULL,NULL),
(352,'کوهدشت',26,1,NULL,NULL,NULL),
(353,'کوهرنگ',9,1,NULL,NULL,NULL),
(354,'کوهسرخ',11,1,NULL,NULL,NULL),
(355,'کهگیلویه',23,1,NULL,NULL,NULL),
(356,'کهنوج',21,1,NULL,NULL,NULL),
(357,'کیار',9,1,NULL,NULL,NULL),
(358,'گالیکش',24,1,NULL,NULL,NULL),
(359,'گتوند',13,1,NULL,NULL,NULL),
(360,'گچساران',23,1,NULL,NULL,NULL),
(361,'گراش',17,1,NULL,NULL,NULL),
(362,'گرگان',24,1,NULL,NULL,NULL),
(363,'گرمسار',15,1,NULL,NULL,NULL),
(364,'گرمه',12,1,NULL,NULL,NULL),
(365,'گرمی',3,1,NULL,NULL,NULL),
(366,'گلپایگان',4,1,NULL,NULL,NULL),
(367,'گلوگاه',27,1,NULL,NULL,NULL),
(368,'گمیشان',24,1,NULL,NULL,NULL),
(369,'گناباد',11,1,NULL,NULL,NULL),
(370,'گناوه',7,1,NULL,NULL,NULL),
(371,'گنبدکاووس',24,1,NULL,NULL,NULL),
(372,'گیلانغرب',22,1,NULL,NULL,NULL),
(373,'لارستان',17,1,NULL,NULL,NULL),
(374,'لالی',13,1,NULL,NULL,NULL),
(375,'لامرد',17,1,NULL,NULL,NULL),
(376,'لاهیجان',25,1,NULL,NULL,NULL),
(377,'لردگان',9,1,NULL,NULL,NULL),
(378,'لنجان',4,1,NULL,NULL,NULL),
(379,'لنده',23,1,NULL,NULL,NULL),
(380,'لنگرود',25,1,NULL,NULL,NULL),
(381,'مارگون',23,1,NULL,NULL,NULL),
(382,'ماسال',25,1,NULL,NULL,NULL),
(383,'ماکو',2,1,NULL,NULL,NULL),
(384,'مانه وسملقان',12,1,NULL,NULL,NULL),
(385,'ماهنشان',14,1,NULL,NULL,NULL),
(386,'مبارکه',4,1,NULL,NULL,NULL),
(387,'محلات',28,1,NULL,NULL,NULL),
(388,'محمودآباد',27,1,NULL,NULL,NULL),
(389,'مراغه',1,1,NULL,NULL,NULL),
(390,'مراوه تپه',24,1,NULL,NULL,NULL),
(391,'مرند',1,1,NULL,NULL,NULL),
(392,'مرودشت',17,1,NULL,NULL,NULL),
(393,'مریوان',20,1,NULL,NULL,NULL),
(394,'مسجدسلیمان',13,1,NULL,NULL,NULL),
(395,'مشگین شهر',3,1,NULL,NULL,NULL),
(396,'مشهد',11,1,NULL,NULL,NULL),
(397,'ملارد',8,1,NULL,NULL,NULL),
(398,'ملایر',30,1,NULL,NULL,NULL),
(399,'ملکان',1,1,NULL,NULL,NULL),
(400,'ملکشاهی',6,1,NULL,NULL,NULL),
(401,'ممسنی',17,1,NULL,NULL,NULL),
(402,'منوجان',21,1,NULL,NULL,NULL),
(403,'مه ولات',11,1,NULL,NULL,NULL),
(404,'مهاباد',2,1,NULL,NULL,NULL),
(405,'مهدی شهر',15,1,NULL,NULL,NULL),
(406,'مهر',17,1,NULL,NULL,NULL),
(407,'مهران',6,1,NULL,NULL,NULL),
(408,'مهرستان',16,1,NULL,NULL,NULL),
(409,'مهریز',31,1,NULL,NULL,NULL),
(410,'میامی',15,1,NULL,NULL,NULL),
(411,'میاندوآب',2,1,NULL,NULL,NULL),
(412,'میاندورود',27,1,NULL,NULL,NULL),
(413,'میانه',1,1,NULL,NULL,NULL),
(414,'میبد',31,1,NULL,NULL,NULL),
(415,'میرجاوه',16,1,NULL,NULL,NULL),
(416,'میناب',29,1,NULL,NULL,NULL),
(417,'مینودشت',24,1,NULL,NULL,NULL),
(418,'نایین',4,1,NULL,NULL,NULL),
(419,'نجف آباد',4,1,NULL,NULL,NULL),
(420,'نرماشیر',21,1,NULL,NULL,NULL),
(421,'نطنز',4,1,NULL,NULL,NULL),
(422,'نظرآباد',5,1,NULL,NULL,NULL),
(423,'نقده',2,1,NULL,NULL,NULL),
(424,'نکا',27,1,NULL,NULL,NULL),
(425,'نمین',3,1,NULL,NULL,NULL),
(426,'نور',27,1,NULL,NULL,NULL),
(427,'نوشهر',27,1,NULL,NULL,NULL),
(428,'نهاوند',30,1,NULL,NULL,NULL),
(429,'نهبندان',10,1,NULL,NULL,NULL),
(430,'نی ریز',17,1,NULL,NULL,NULL),
(431,'نیر',3,1,NULL,NULL,NULL),
(432,'نیشابور',11,1,NULL,NULL,NULL),
(433,'نیک شهر',16,1,NULL,NULL,NULL),
(434,'نیمروز',16,1,NULL,NULL,NULL),
(435,'ورامین',8,1,NULL,NULL,NULL),
(436,'ورزقان',1,1,NULL,NULL,NULL),
(437,'هامون',16,1,NULL,NULL,NULL),
(438,'هرسین',22,1,NULL,NULL,NULL),
(439,'هریس',1,1,NULL,NULL,NULL),
(440,'هشترود',1,1,NULL,NULL,NULL),
(441,'هفتکل',13,1,NULL,NULL,NULL),
(442,'هلیلان',6,1,NULL,NULL,NULL),
(443,'همدان',30,1,NULL,NULL,NULL),
(444,'هندیجان',13,1,NULL,NULL,NULL),
(445,'هوراند',1,1,NULL,NULL,NULL),
(446,'هویزه',13,1,NULL,NULL,NULL),
(447,'هیرمند',16,1,NULL,NULL,NULL),
(448,'یزد',31,1,NULL,NULL,NULL);

/*Table structure for table `base_genders` */

DROP TABLE IF EXISTS `base_genders`;

CREATE TABLE `base_genders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title_fa` varchar(100) DEFAULT NULL,
  `title_en` varchar(100) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `base_genders` */

insert  into `base_genders`(`id`,`title_fa`,`title_en`,`status_id`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'آقا','male',1,'2024-07-06 14:52:35','2024-07-06 14:52:35',NULL),
(2,'خانم','femail',1,'2024-07-06 14:52:35','2024-07-06 14:52:35',NULL);

/*Table structure for table `base_languages` */

DROP TABLE IF EXISTS `base_languages`;

CREATE TABLE `base_languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(10) DEFAULT NULL COMMENT 'عنوان',
  `symbol` varchar(5) DEFAULT NULL COMMENT 'عنوان اختصاری',
  `dir` varchar(3) NOT NULL DEFAULT 'rtl' COMMENT 'چینش',
  `icon` varchar(50) DEFAULT NULL COMMENT 'آیکون',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `base_languages` */

insert  into `base_languages`(`id`,`title`,`symbol`,`dir`,`icon`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'فارسی','fa','rtl','fa.png',1,NULL,'2024-07-06 14:52:35','2024-07-06 14:52:35'),
(2,'English','en','ltr','en.png',0,NULL,'2024-07-06 14:52:35','2024-07-06 14:52:35'),
(3,'عربی','ar','rtl','ar.png',0,NULL,'2024-07-06 14:52:35','2024-07-06 14:52:35');

/*Table structure for table `base_provinces` */

DROP TABLE IF EXISTS `base_provinces`;

CREATE TABLE `base_provinces` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `base_provinces` */

insert  into `base_provinces`(`id`,`name_fa`,`name_en`,`name_ar`,`country_id`,`icon`,`description_fa`,`description_en`,`description_ar`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'آذربایجان شرقی','East Azerbaijan','آذربیجان الشرقیة',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(2,'آذربایجان غربی','West Azerbaijan','آذربیجان الغربیة',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(3,'اردبیل','Ardabil','أردبیل',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(4,'اصفهان','Isfahan','أصفهان',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(5,'البرز','Alborz','ألبرز',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(6,'ایلام','Ilam','إیلام',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(7,'بوشهر','Bushehr','بوشهر',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(8,'تهران','Tehran','طهران',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(9,'چهارمحال و بختیاری','Chaharmahal and Bakhtiari','چهارمحال وبختیاری',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(10,'خراسان جنوبی','South Khorasan','خراسان الجنوبیة',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(11,'خراسان رضوی','Razavi Khorasan','خراسان الرضویة',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(12,'خراسان شمالی','North Khorasan','خراسان الشمالیة',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(13,'خوزستان','Khuzestan','خوزستان',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(14,'زنجان','Zanjan','زنجان',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(15,'سمنان','Semnan','سمنان',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(16,'سیستان و بلوچستان','Sistan and Baluchestan','سیستان وبلوشستان',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(17,'فارس','Fars','فارس',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(18,'قزوین','Qazvin','قزوین',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(19,'قم','Qom','قم',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(20,'کردستان','Kurdistan','کردستان',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(21,'کرمان','Kerman','کرمان',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(22,'کرمانشاه','Kermanshah','کرمانشاه',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(23,'کهگیلویه و بویراحمد','Kohgiluyeh and Boyer-Ahmad','کهکیلویه وبویر أحمد',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(24,'گلستان','Golestan','گلستان',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(25,'گیلان','Gilan','گیلان',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(26,'لرستان','Lorestan','لرستان',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(27,'مازندران','Mazandaran','مازندران',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(28,'مرکزی','Markazi','المركزیة',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(29,'هرمزگان','Hormozgan','هرمزجان',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(30,'همدان','Hamadan','همدان',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03'),
(31,'یزد','Yazd','یزد',1,NULL,NULL,NULL,NULL,1,NULL,'2024-11-26 14:06:03','2024-11-26 14:06:03');

/*Table structure for table `base_statuses` */

DROP TABLE IF EXISTS `base_statuses`;

CREATE TABLE `base_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title_fa` varchar(200) DEFAULT NULL COMMENT 'عنوان به زبان فارسی',
  `title_en` varchar(200) DEFAULT NULL COMMENT 'عنوان به زبان عربی',
  `group_id` int(11) DEFAULT NULL COMMENT 'شناسه گروه وضعیت',
  `code` varchar(3) DEFAULT NULL COMMENT 'کد وضعیت',
  `color` varchar(20) DEFAULT NULL COMMENT 'رنگ',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `base_statuses` */

insert  into `base_statuses`(`id`,`title_fa`,`title_en`,`group_id`,`code`,`color`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'وضعیت فعالیت',NULL,NULL,NULL,'',1,NULL,NULL,NULL),
(2,'فعال',NULL,1,'1','theme-10',1,NULL,NULL,NULL),
(3,'نیمه فعال',NULL,1,'2','theme-22',1,NULL,NULL,NULL),
(4,'غیرفعال',NULL,1,'0','theme-24',1,NULL,NULL,NULL),
(5,'تعهد ستاد',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),
(6,'دارد',NULL,5,'1',NULL,1,NULL,NULL,NULL),
(7,'ندارد',NULL,5,'0',NULL,1,NULL,NULL,NULL),
(8,'وضعیت گزارش دهی',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),
(9,'باز',NULL,8,'1','theme-10',1,NULL,NULL,NULL),
(10,'بسته',NULL,8,'0','theme-24',1,NULL,NULL,NULL),
(11,'وضعیت ثبت نام',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),
(12,'باز',NULL,11,'1','theme-10',1,NULL,NULL,NULL),
(13,'بسته',NULL,11,'0','theme-24',1,NULL,NULL,NULL),
(14,'وضعیت تایید',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),
(15,'ثبت شد',NULL,14,'2','theme-22',1,NULL,NULL,NULL),
(16,'تایید',NULL,14,'1','theme-10',1,NULL,NULL,NULL),
(17,'عدم تایید',NULL,14,'0','theme-24',1,NULL,NULL,NULL),
(18,'حذف',NULL,14,'-1','theme-22',1,NULL,NULL,NULL),
(19,'وضعیت پاسخ تیکت',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),
(20,'در انتظار پاسخ',NULL,19,'0','theme-23',1,NULL,NULL,NULL),
(21,'در حال بررسی',NULL,19,'1','theme-200',1,NULL,NULL,NULL),
(22,'پاسخ داده شد',NULL,19,'2','theme-10',1,NULL,NULL,NULL),
(23,'بسته شد',NULL,19,'3','theme-24',1,NULL,NULL,NULL),
(24,'وضعیت اولویت پاسخ به تیکت',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),
(25,'کم',NULL,24,'1','theme-200',1,NULL,NULL,NULL),
(26,'متوسط',NULL,24,'2','theme-10',1,NULL,NULL,NULL),
(27,'زیاد',NULL,24,'3','theme-24',1,NULL,NULL,NULL),
(28,'وضغیت گزارشی که مبلغ ارسال کرده',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),
(29,'تایید',NULL,28,'1','theme-10',1,NULL,NULL,NULL),
(30,'عدم تایید',NULL,28,'0','theme-24',1,NULL,NULL,NULL),
(31,'حذف',NULL,28,'-1','theme-22',1,NULL,NULL,NULL);

/*Table structure for table `base_villages` */

DROP TABLE IF EXISTS `base_villages`;

CREATE TABLE `base_villages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `base_villages` */

/*Table structure for table `blog_comments` */

DROP TABLE IF EXISTS `blog_comments`;

CREATE TABLE `blog_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blog_comments` */

insert  into `blog_comments`(`id`,`creator_id`,`editor_id`,`blog_id`,`parent_id`,`comment`,`confirm_user_id`,`confirm_id`,`lang`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,1,NULL,2,0,'بسیار مقاله درست و ب عنوان برترین مطلب می تواند باشد',1,1,'fa',1,NULL,'2024-11-30 11:30:48','2024-11-30 11:30:48'),
(2,2,1,1,0,'چقدر مورد تحسین است این مقاله .',1,1,'fa',1,NULL,'2024-11-30 12:02:51','2024-11-30 12:03:52'),
(3,19,NULL,1,0,'متن خوبی بود مرسی',1,1,'fa',1,NULL,'2024-12-01 20:41:47','2024-12-01 20:42:43'),
(4,19,NULL,1,2,'اره واقعا',NULL,2,'fa',1,'2024-12-01 20:43:24','2024-12-01 20:42:01','2024-12-01 20:43:24'),
(5,18,NULL,3,0,'تست نظر',NULL,2,'fa',1,NULL,'2024-12-03 05:18:23','2024-12-03 05:18:23');

/*Table structure for table `blog_keyword` */

DROP TABLE IF EXISTS `blog_keyword`;

CREATE TABLE `blog_keyword` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL COMMENT 'شناسه مقاله',
  `keyword_id` int(11) DEFAULT NULL COMMENT 'شناسه کلمه کلیدی',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blog_keyword` */

/*Table structure for table `blog_subjects` */

DROP TABLE IF EXISTS `blog_subjects`;

CREATE TABLE `blog_subjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title_fa` varchar(50) DEFAULT NULL COMMENT 'عنوان',
  `order` int(11) DEFAULT 1 COMMENT 'ترتیب',
  `count_blog` int(11) NOT NULL DEFAULT 0 COMMENT 'تعداد محتوا',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blog_subjects` */

/*Table structure for table `blogs` */

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blogs` */

insert  into `blogs`(`id`,`title`,`subject_id`,`creator_id`,`editor_id`,`thumb`,`img`,`video`,`document`,`summary`,`text`,`count_comment`,`count_comment_waiting`,`count_comment_confirmed`,`count_comment_rejected`,`count_view`,`lang`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'مقدمات و سیر غدیر',NULL,1,NULL,'image74221732958564.jpg','image90461732958815.jpg###image9361732958824.jpg###','video91831732958810.mp4###','application69991732958890.docx###',NULL,'<p><span style=\"background-color:hsl(120, 75%, 60%);\">پرداختن به مفهوم ولایت، ناب ترین مفهومی است که می تواند ضمن تحکیم مبانی حکومت دینی و </span><a href=\"https://civilica.com/search/paper/k-%D9%81%D9%84%D8%B3%D9%81%D9%87%20%D8%B3%DB%8C%D8%A7%D8%B3%DB%8C%20%D8%A7%D8%B3%D9%84%D8%A7%D9%85/\"><span style=\"background-color:hsl(120, 75%, 60%);\">فلسفه سیاسی اسلام</span></a><span style=\"background-color:hsl(120, 75%, 60%);\"> و یز اثبات بطلان سفسطه جدایی دین از سیاست،</span> چراغی فراروی جامعه اسلامی باشد. <a href=\"https://civilica.com/search/paper/k-%D8%AD%D8%B6%D8%B1%D8%AA%20%D8%B9%D9%84%DB%8C%20(%D8%B9)/\">حضرت علی (ع)</a> همچون ستاره ای درخشان در آسمان بود که نماد قرآن مجسم و همه کمالاتی که بشریت همواره در آرزوی آن بود، محسوب می شود. انقلابیبودن و داشتن بصیرت دینی را از دو ویژگی مهم امام زمانی بودن است اگر هرکدام را نداشته باشیم و یا یکی قوی و دیگری ضعیف باشد قطعا راه را به انحراف خواهیم رفت. در روز عید غدیر تمام مسلمین به حضرت علی(ع)بیعت نمودند طوری که مردان با حضرت دست می دادند و زنان دست خود را در تشت پر از آب می کردند و به این طریق بیعت می نمودند. بعد از حادثه غدیر پیامبر همیشه علی را امیرالمومنین خطاب میکردند در حالیکه قبلا به نام ابوالحسن صدایش می کرد. طبق روایت از <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85/\">امامان معصوم</a> لقب امیرالمومنین خاص برای علی (ع) است.در سال دهم هجرت 70 هزار حاجی از مدینه منوره و تعدادی زیادی هم از یمن و دیگر مناطق که تعداد مجموعی شان بیشتر از 120 هزار نفر می رسید، برای ادای فریضه الهی حج در مکه حضور یافتند که در برگشت از خانه خداوند در <a href=\"https://civilica.com/search/paper/k-%D9%85%D9%86%D8%B7%D9%82%D9%87%20%D8%BA%D8%AF%DB%8C%D8%B1%20%D8%AE%D9%85/\">منطقه غدیر خم</a> پیامبر حضرت علی ابن ابی طالب را به عنوان وصی و جانشین خود به مسلمین معرفی نمود. غربی ها از زنان استفاده ابزاری می کنند و آنچه را که اسلام برای زنان داده است دیگر ادیان نداده است و حرکت <a href=\"https://civilica.com/search/paper/k-%D8%B2%D9%86%D8%A7%D9%86%20%D8%AF%D8%B1%20%D8%A7%D8%B3%D9%84%D8%A7%D9%85/\">زنان در اسلام</a> تاثیر گذار بوده است. ما هرچه داریم از زنان تاریخ ساز اسلام داریم و مانند زنان صدر اسلام در هیچ جای دنیا هیچ زنی نتوانسته است که اثر گذار باشد.</p>',2,0,2,0,16,'fa',1,NULL,'2024-11-30 11:28:13','2024-12-01 20:43:49'),
(2,'مباحث تخصصی',NULL,1,1,'image30611732958911.webp','image30191732958932.jpg###image36231732958935.jpg###','video80811732958925.mp4###','application99741732958928.docx###',NULL,'<p>قاله ی حاضر با نگاهی به آموزه های فرهنگی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> از منظر امامان معصوم(ع)، با تبیین مفهوم مدیریت فرهنگی در غدیر، ابعاد و ویژگی های واقعه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> و ضرورت ترویج سبک زندگی اسلامی بر اساس روایات اهل بیت(ع)، برآنیم تا قدمی برای معرفی ابعاد گوناگون واقعه ی فرهنگی و اجتماعی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> برداریم. بی تردید نقش گسترده ی <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> در حوزه ی تبیین دین و فرهنگ، غیرقابل انکار است؛ بدین رو اهل بیت(ع) اهمیت ویژه ای به واقعه ی تمدن ساز <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> مبذول می داشتند و در هر فرصتی برای نهادینه کردن فرهنگ ولایت و رهبری بر اساس واقعه ی غدیر، ضرورت تبیین جایگاه <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> در اسلام را بازگو می کردند. این پژوهش به دنبال بررسی این مساله است که آیا حادثه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> می تواند به عنوان الگوی فرهنگ ساز در راستای تمدن اسلامی مطرح شود! و اهل بیت(ع) با توجه به اهمیت غدیر، در برابر این واقعه ی مهم و عظیم، چگونه موضع گیری کردند! بدین رو هدف از این مقاله، بررسی و تبیین آموزه های فرهنگی واقعه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> از منظر <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> است؛ هدف این است که با بررسی روایات اهل بیت(ع)، کارکرد فرهنگی و اجتماعی آموزه های <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> را استخراج نموده، تا در جهت الگوسازی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> برای تمدنسازی اسلامی در عصر حاضر، گامی برداریم. در این مقاله، با بهره گیری از روش توصیف و تحلیل و بر اساس منابع کتابخانه ای، تلاش شده است، الگوی تمدن ساز <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> در روایات <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> را استخراج کنیم. یکی از نتایج و دستاوردهای این پژوهش، تبیین معیارها و ملاک های فرهنگی نهفته در آموزه های اهل بیت(ع) در مورد واقعه ی <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> است. بررسی و تبیین آموزه های فرهنگ ساز <a href=\"https://civilica.com/search/paper/k-%D8%BA%D8%AF%DB%8C%D8%B1/\">غدیر</a> از منظر <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85(%D8%B9)/\">امامان معصوم(ع)</a> در ابعاد اخلاق فردی، اجتماعی، الاهی و سیاسی، در قالبی جدید از جنبه های نوآوری این مقاله شمرده می شود.</p>',1,0,1,0,7,'fa',0,NULL,'2024-11-30 11:29:13','2024-11-30 12:04:26'),
(3,'اهمیت بیعت در غدیر',NULL,1,1,'image59041732962705.jpg','image99441732962748.webp###image13741732962751.jpg###image27701732962757.jpg###',NULL,'application25031732962754.docx###',NULL,'<p>بعد از حادثه غدیر پیامبر همیشه علی را امیرالمومنین خطاب میکردند در حالیکه قبلا به نام ابوالحسن صدایش می کرد. طبق روایت از <a href=\"https://civilica.com/search/paper/k-%D8%A7%D9%85%D8%A7%D9%85%D8%A7%D9%86%20%D9%85%D8%B9%D8%B5%D9%88%D9%85/\">امامان معصوم</a> لقب امیرالمومنین خاص برای علی (ع) است.در سال دهم هجرت 70 هزار حاجی از مدینه منوره و تعدادی زیادی هم از یمن و دیگر مناطق که تعداد مجموعی شان بیشتر از 120 هزار نفر می رسید، برای ادای فریضه الهی حج در مکه حضور یافتند که در برگشت از خانه خداوند در <a href=\"https://civilica.com/search/paper/k-%D9%85%D9%86%D8%B7%D9%82%D9%87%20%D8%BA%D8%AF%DB%8C%D8%B1%20%D8%AE%D9%85/\">منطقه غدیر خم</a> پیامبر حضرت علی ابن ابی طالب را به عنوان وصی و جانشین خود به مسلمین معرفی نمود. غربی ها از زنان استفاده ابزاری می کنند و آنچه را که اسلام برای زنان داده است دیگر ادیان نداده است و حرکت <a href=\"https://civilica.com/search/paper/k-%D8%B2%D9%86%D8%A7%D9%86%20%D8%AF%D8%B1%20%D8%A7%D8%B3%D9%84%D8%A7%D9%85/\">زنان در اسلام</a> تاثیر گذار بوده است. ما هرچه داریم از زنان تاریخ ساز اسلام داریم و مانند زنان صدر اسلام در هیچ جای دنیا هیچ زنی نتوانسته است که اثر گذار باشد.</p>',1,1,0,0,7,'fa',1,NULL,'2024-11-30 12:34:09','2024-12-04 15:28:20');

/*Table structure for table `cache` */

DROP TABLE IF EXISTS `cache`;

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cache` */

insert  into `cache`(`key`,`value`,`expiration`) values 
('|23.227.140.174','i:1;',1733078772),
('|23.227.140.174:timer','i:1733078772;',1733078772),
('|5.239.172.218','i:3;',1733159507),
('|5.239.172.218:timer','i:1733159507;',1733159507),
('|5.239.172.31','i:1;',1733077197),
('|5.239.172.31:timer','i:1733077197;',1733077197);

/*Table structure for table `cache_locks` */

DROP TABLE IF EXISTS `cache_locks`;

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cache_locks` */

/*Table structure for table `courses` */

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `courses` */

insert  into `courses`(`id`,`promotion_id`,`promoter_id`,`promotion_report_id`,`subject`,`year`,`duration`,`audiencetype_id`,`people_count`,`place_name`,`city_id`,`province_id`,`city`,`village`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(2,3,2,1,'دوره معرفی غدیر','1403','40',2,80,'مدرسه اهل بیت',19,19,'شهر ری','روستای خانی آباد',1,NULL,'2024-11-26 16:39:18','2024-11-26 16:39:18'),
(3,6,6,3,'برگزاری مراسم و حمایت از برنامه‌های مذهبی','1403','100',4,100,NULL,19,19,'اردبیل',NULL,1,NULL,'2024-11-26 16:39:18','2024-11-26 16:39:18'),
(4,9,6,4,'شرکت در برنامه‌های فرهنگی و تبلیغی','1402','40',4,120,'مدرسه اهل بیت',19,19,'شیراز',NULL,1,NULL,'2024-11-26 16:39:27','2024-11-26 16:39:27'),
(5,12,15,5,'حمایت از برنامه‌های مذهبی و فرهنگی','1400','70',4,90,NULL,19,19,NULL,NULL,1,NULL,'2024-11-26 16:39:26','2024-11-26 16:39:26'),
(13,13,13,6,'شرکت در مراسم‌های عمومی و فرهنگی','1401','120',2,70,'مدرسه',19,19,'قم',NULL,1,NULL,NULL,NULL),
(7,13,19,7,'دوره میلاد','1401','100',3,120,'مسجد حضرت زهرا',36,8,NULL,NULL,1,NULL,NULL,NULL),
(8,13,NULL,7,'دوره میلاد','1401','100',3,120,'مسجد حضرت زهرا',36,8,NULL,NULL,1,NULL,NULL,NULL),
(9,13,NULL,7,'دوره میلاد','1401','100',3,120,'مسجد حضرت زهرا',36,8,NULL,NULL,1,NULL,NULL,NULL),
(10,13,NULL,7,'دوره میلاد','1401','100',3,120,'مسجد حضرت زهرا',36,8,NULL,NULL,1,NULL,NULL,NULL),
(14,6,NULL,9,'سلام بر دوستان','1403','22',NULL,22,NULL,196,6,'بقب',NULL,1,NULL,NULL,NULL);

/*Table structure for table `cultural_users` */

DROP TABLE IF EXISTS `cultural_users`;

CREATE TABLE `cultural_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cultural_users` */

insert  into `cultural_users`(`id`,`promoter_id`,`name`,`family`,`job_position`,`gender_id`,`phone`,`comments`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(10,2,'فاطمه','محمدی','همکاری فرهنگی',NULL,'094354534','خانم فاطمه محمدی افرادی که با شما در امور فرهنگی همکاری سازنده دارند یا در محل تبلیغ شما تاثیر گزارند',NULL,NULL,NULL,NULL),
(4,4,'رضا','پرهیزگار','مدرس',NULL,'091912335','دهه کرامت یعنی چه ؟ ولادت باسعادت کریمه اهل بیت حضرت فاطمه معصومه سلام الله علیهاو برادر گرامیشان و آغاز دهه مبارک و میمون کرامت بر همگان مبارک باد. دهه کرامت،دهه اول ماه ذی‌العقده است و آغازش با ولادت حضرت معصومه(علیهالسلام) و پایانش با ولادت حضرت ابوالحسن علی بن موسی‌الرضا(علیه السلام) می‌باشد.',NULL,NULL,NULL,NULL),
(5,6,'خانم','مرادی','مدیریت',2,NULL,NULL,NULL,NULL,NULL,NULL),
(7,19,'خانم همکار','فرهنگی','معلم',NULL,'435345','خیلی فعال هستند',NULL,NULL,NULL,NULL);

/*Table structure for table `education` */

DROP TABLE IF EXISTS `education`;

CREATE TABLE `education` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `education` */

insert  into `education`(`id`,`title`,`description`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'سطح ۱\r\n','',1,NULL,NULL,NULL),
(2,'سطح ۲','',1,NULL,NULL,NULL),
(3,'سطح ۳','',1,NULL,NULL,NULL),
(4,'سطح ۴','',1,NULL,NULL,NULL);

/*Table structure for table `levels` */

DROP TABLE IF EXISTS `levels`;

CREATE TABLE `levels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status_id` int(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `levels` */

insert  into `levels`(`id`,`title`,`description`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'1','',1,NULL,NULL,NULL),
(2,'2','',1,NULL,NULL,NULL),
(3,'3','',1,NULL,NULL,NULL),
(4,'4','',1,NULL,NULL,NULL),
(5,'5','',1,NULL,NULL,NULL);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2024_11_03_220824_create_users_table',1),
(2,'2024_11_03_220825_create_user_promotions_table',1),
(3,'2024_11_03_220826_create_promotion_positions_table',1),
(4,'2024_11_03_220827_create_supports_table',1),
(5,'2024_11_03_220828_create_cultural_users_table',1),
(6,'2024_11_03_220829_create_promotion_notices_table',1),
(7,'2024_11_03_220830_create_levels_table',1),
(8,'2024_11_03_220831_create_genders_table',1),
(9,'2024_11_03_220832_create_notes_table',1),
(10,'2024_11_03_220833_create_cities_table',1),
(11,'2024_11_03_220834_create_provinces_table',1),
(12,'2024_11_03_220835_create_roles_table',1),
(13,'2024_11_03_220836_create_blogs1_table',1),
(14,'2024_11_03_220837_create_support_types_table',1),
(15,'2024_11_03_220838_create_tickets1_table',1),
(16,'2024_11_03_220839_create_ticket_subjects1_table',1),
(17,'2024_11_03_220840_create_rituals_table',1),
(18,'2024_11_03_220841_create_promotion_reports_table',1),
(19,'2024_11_03_220842_create_ritual_reports_table',1),
(20,'2024_11_03_220843_create_tribunes_table',1),
(21,'2024_11_03_220844_create_courses_table',1),
(22,'2024_11_03_220845_create_educational_bases_table',1),
(23,'2024_11_03_220846_create_audience_types_table',1),
(24,'2024_11_03_220830_create_blog_comments_table',2),
(25,'2024_11_03_220830_create_blog_keyword_table',2),
(26,'2024_11_03_220830_create_blog_subjects_table',2),
(27,'2024_11_03_220830_create_blogs_table',2),
(28,'2024_11_03_220838_create_ticket_items_table',2),
(29,'2024_11_03_220838_create_tickets_table',2),
(30,'2024_11_03_220839_create_ticket_subjects_table',2);

/*Table structure for table `promotion_agree` */

DROP TABLE IF EXISTS `promotion_agree`;

CREATE TABLE `promotion_agree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promoter_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `has_course` int(1) DEFAULT 0,
  `has_tribune` int(1) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `promotion_agree` */

insert  into `promotion_agree`(`id`,`promoter_id`,`promotion_id`,`has_course`,`has_tribune`,`deleted_at`,`created_at`,`updated_at`) values 
(1,2,3,1,1,NULL,'2024-11-21 01:19:33','2024-11-20 21:49:33'),
(2,4,4,NULL,0,NULL,'2024-11-22 17:46:03','2024-11-22 14:16:03'),
(3,2,5,NULL,NULL,NULL,'2024-11-25 08:05:44','2024-11-25 04:35:44'),
(4,6,14,1,1,NULL,'2024-11-26 15:48:52','2024-11-26 12:18:52'),
(5,6,11,1,1,NULL,'2024-11-26 15:49:03','2024-11-26 12:19:03'),
(6,6,6,1,NULL,NULL,'2024-11-26 15:49:22','2024-11-26 12:19:22'),
(7,15,14,1,1,NULL,'2024-11-26 15:56:22','2024-11-26 12:26:22'),
(8,15,8,1,NULL,NULL,'2024-11-26 15:56:35','2024-11-26 12:26:35'),
(9,15,7,1,1,NULL,'2024-11-26 15:56:48','2024-11-26 12:26:48'),
(10,13,7,1,1,NULL,'2024-11-26 16:18:22','2024-11-26 12:48:22'),
(11,13,13,1,NULL,NULL,'2024-11-26 16:18:43','2024-11-26 12:48:43'),
(12,13,8,1,NULL,NULL,'2024-11-26 16:18:59','2024-11-26 12:48:59'),
(13,19,12,1,1,NULL,'2024-12-01 23:58:12','2024-12-01 20:28:12'),
(14,18,15,NULL,NULL,NULL,'2024-12-02 21:52:18','2024-12-02 18:22:18'),
(15,18,14,1,1,NULL,'2024-12-02 21:52:42','2024-12-02 18:22:42'),
(16,21,12,1,0,NULL,'2024-12-03 00:46:01','2024-12-02 21:16:01'),
(17,21,13,1,NULL,NULL,'2024-12-03 01:12:12','2024-12-02 21:42:12'),
(18,18,8,1,NULL,NULL,'2024-12-04 10:28:31','2024-12-04 06:58:31'),
(19,18,2,NULL,1,NULL,'2024-12-04 10:33:28','2024-12-04 07:03:28');

/*Table structure for table `promotion_agree_item` */

DROP TABLE IF EXISTS `promotion_agree_item`;

CREATE TABLE `promotion_agree_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agree_id` int(11) DEFAULT NULL,
  `ritual_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `promoter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `promotion_agree_item` */

insert  into `promotion_agree_item`(`id`,`agree_id`,`ritual_id`,`promotion_id`,`promoter_id`) values 
(1,1,3,3,2),
(2,1,4,3,2),
(3,2,3,4,4),
(4,2,1,4,4),
(5,3,1,5,2),
(6,13,2,12,19),
(7,13,3,12,19),
(8,13,4,12,19),
(9,16,2,12,21),
(10,16,3,12,21),
(11,19,4,2,18);

/*Table structure for table `promotion_positions` */

DROP TABLE IF EXISTS `promotion_positions`;

CREATE TABLE `promotion_positions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `status_id` int(11) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `promotion_positions` */

insert  into `promotion_positions`(`id`,`title`,`location`,`comments`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'امام جمعه','مسجد',NULL,1,NULL,NULL,NULL),
(2,'امام جماعت','مسجد',NULL,1,NULL,NULL,NULL),
(3,'طرح هجرت','هیات',NULL,1,NULL,NULL,NULL),
(4,'مبلغ مدارس','مدرسه',NULL,1,NULL,NULL,NULL);

/*Table structure for table `promotion_reports` */

DROP TABLE IF EXISTS `promotion_reports`;

CREATE TABLE `promotion_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `promoter_id` int(11) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `status_id` int(1) DEFAULT 0,
  `confirm_id` int(1) DEFAULT 0,
  `level_id` int(1) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `promotion_reports` */

insert  into `promotion_reports`(`id`,`promotion_id`,`promoter_id`,`photo`,`status_id`,`confirm_id`,`level_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,3,2,'image63541732159360.jpg',NULL,0,0,NULL,'2024-11-21 03:52:14','2024-11-21 03:52:43'),
(2,4,4,'image70381732308440.jpg',NULL,-1,2,NULL,'2024-11-22 20:18:22','2024-11-22 20:18:22'),
(3,6,6,'',NULL,1,1,NULL,'2024-11-26 12:22:36','2024-11-26 12:22:36'),
(4,9,6,'image35561732647210.jpg',NULL,1,3,NULL,'2024-11-26 12:24:46','2024-11-26 12:24:46'),
(5,12,15,'image39031732647433.jpg',NULL,1,4,NULL,'2024-11-26 12:28:43','2024-11-26 12:28:43'),
(6,13,13,'',NULL,0,0,NULL,'2024-11-26 12:32:11','2024-12-02 21:53:25'),
(7,13,19,'',0,1,20,'2024-12-01 23:04:55','2024-12-01 20:31:00','2024-12-01 23:04:55'),
(8,6,NULL,'',0,0,0,NULL,'2024-12-02 21:16:17','2024-12-02 21:16:17'),
(9,6,NULL,'',0,0,0,NULL,'2024-12-02 21:16:45','2024-12-04 07:26:47');

/*Table structure for table `promotion_ritual` */

DROP TABLE IF EXISTS `promotion_ritual`;

CREATE TABLE `promotion_ritual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ritual_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `promotion_ritual` */

insert  into `promotion_ritual`(`id`,`ritual_id`,`promotion_id`) values 
(1,1,3),
(2,2,3),
(3,3,3),
(4,4,3),
(5,6,3),
(6,4,1),
(7,5,1),
(8,1,2),
(9,2,2),
(10,3,2),
(11,4,2),
(12,1,4),
(13,2,4),
(14,3,4),
(15,6,4),
(16,1,5),
(17,1,12),
(18,2,12),
(19,3,12),
(20,4,12),
(21,6,12);

/*Table structure for table `promotions` */

DROP TABLE IF EXISTS `promotions`;

CREATE TABLE `promotions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `commitments` text DEFAULT NULL,
  `register_status` tinyint(1) DEFAULT NULL,
  `report_status` tinyint(1) DEFAULT NULL,
  `has_course` tinyint(1) DEFAULT NULL,
  `has_tribune` tinyint(1) DEFAULT NULL,
  `has_commitment` int(1) DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `promotions` */

insert  into `promotions`(`id`,`title`,`year`,`photo`,`comments`,`commitments`,`register_status`,`report_status`,`has_course`,`has_tribune`,`has_commitment`,`status_id`,`user_count`,`report_count`,`sum_support`,`course_count`,`tribun_count`,`creator_id`,`editor_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'دهه ی فاطمیه',1403,'image59661731845420.jpg','در فرهنگ عامه، به دهه دوم جمادی‌الاول، از دهم تا بیستم آن ماه که بر اساس روایت ۷۵ روز درگذشت فاطمه در میان آن روزها واقع شده‌است، «دهه اول فاطمیه» و به دهه اول جمادی‌الثانی، از اول تا دهم جمادی‌الثانی که بنا به روایت ۹۵ روز، درگذشت فاطمه در میان این روزها اتفاق افتاده «دهه دوم فاطمیه» می‌گویند.','تعهدات ستاد دارای این مواردمیباشد.در فرهنگ عامه، به دهه دوم جمادی‌الاول، از دهم تا بیستم آن ماه که بر اساس روایت ۷۵ روز درگذشت فاطمه در میان آن روزها واقع شده‌است، «دهه اول فاطمیه» و به دهه اول جمادی‌الثانی، از اول تا دهم جمادی‌الثانی که بنا به روایت ۹۵ روز، درگذشت فاطمه در میان این روزها اتفاق افتاده «دهه دوم فاطمیه» می‌گویند.',1,0,1,0,NULL,1,0,0,1,1,1,1,1,NULL,'2024-11-17 07:40:38','2024-11-20 21:46:42'),
(2,'نیمه شعبان',1401,'image41621731845468.jpg','نیمهٔ شعبان (۱۵ شعبان در گاهشماری هجری قمری) یکی از جشن‌های مسلمانان شیعه است که هم‌زمان با زادروز امام دوازدهم شیعیان، حجت بن حسن است. دعاهای زیادی مانند دعای کمیل در این شب خوانده می‌شود. اهل سنت شب نیمه شعبان را «شب برات» نامیده و آن را به عنوان روز انزال قرآن به شب زنده‌داری و دعا می‌پردازند.',NULL,1,1,0,1,NULL,1,1,0,2,1,2,1,1,NULL,'2024-11-17 07:41:18','2024-12-04 07:03:28'),
(3,'عید غدیر',1403,'image3991731845572.jpg','واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.','واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.',1,0,1,1,NULL,1,1,1,1,2,1,1,1,NULL,'2024-11-17 07:43:02','2024-11-20 21:52:43'),
(4,'دهه کرامت',1403,'image9321732305869.jpg','دهه کرامت یعنی چه ؟ ولادت باسعادت کریمه اهل بیت حضرت فاطمه معصومه سلام الله علیهاو برادر گرامیشان و آغاز دهه مبارک و میمون کرامت بر همگان مبارک باد. دهه کرامت،دهه اول ماه ذی‌العقده است و آغازش با ولادت حضرت معصومه(علیهالسلام) و پایانش با ولادت حضرت ابوالحسن علی بن موسی‌الرضا(علیه السلام) می‌باشد.','تعهدات پیامرسان غدیر.',1,1,0,1,NULL,1,1,1,2,1,1,1,1,NULL,'2024-11-22 13:34:00','2024-11-25 04:28:40'),
(5,'مدیریت فرهنگی',1402,'image60611732530484.jpg','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.','بسیار متعهد',1,0,0,0,NULL,1,1,0,0,1,1,1,NULL,NULL,'2024-11-25 03:58:18','2024-11-25 04:35:44'),
(6,'هفته وحدت',1403,'1.jpg','جشن‌ها و برنامه‌های مرتبط با وحدت اسلامی','شرکت در مراسم‌های عمومی و فرهنگی',1,1,1,0,NULL,1,1,3,0,1,1,1,NULL,NULL,'2024-11-26 14:22:31','2024-12-04 07:26:47'),
(7,'ماه محرم و عزاداری حسینی',1402,'2.jpg','اطلاعیه برگزاری مراسم عزاداری محرم','برگزاری مراسم و حمایت از برنامه‌های مذهبی',1,1,1,1,NULL,1,2,0,0,1,1,2,NULL,NULL,'2024-11-26 14:22:31','2024-11-26 12:48:22'),
(8,'روز غدیر خم',1403,'3.jpg','اطلاعیه جشن‌های بزرگ غدیر','برگزاری جشن‌های غدیر و پخش غذا',1,1,1,0,NULL,1,3,0,0,1,1,3,NULL,NULL,'2024-11-26 14:22:31','2024-12-04 06:58:31'),
(9,'روز مبعث پیامبر اکرم (ص)',1402,'4.jpg','برگزاری مراسم جشن و سخنرانی‌های مذهبی','شرکت در برنامه‌های فرهنگی و تبلیغی',1,1,0,0,NULL,1,0,1,0,1,1,4,NULL,NULL,'2024-11-26 14:22:31','2024-11-26 12:24:46'),
(10,'شب قدر',1401,'5.jpg','برگزاری مراسم احیا و دعا در شب‌های قدر','تشویق مردم به شرکت در مراسم و کمک‌های مردمی',1,1,0,0,NULL,1,0,0,0,1,1,5,NULL,NULL,'2024-11-26 14:22:31','2024-11-26 14:22:31'),
(11,'اربعین حسینی',1401,'6.jpg','اطلاعیه پیاده‌روی و مراسم اربعین حسینی','حمایت از زائران و برنامه‌های مذهبی',1,1,1,1,NULL,1,1,0,0,NULL,NULL,6,NULL,NULL,'2024-11-26 14:22:31','2024-11-26 12:19:03'),
(12,'هفته دفاع مقدس',1400,'7.jpg','برگزاری نمایشگاه‌ها و مراسم گرامیداشت دفاع مقدس','ترویج فرهنگ ایثار و شهادت',1,1,1,1,NULL,1,2,1,0,NULL,NULL,7,1,NULL,'2024-11-26 14:22:31','2024-12-02 21:16:01'),
(13,'میلاد امام علی (ع)',1401,'4.jpg','برگزاری جشن و مراسم میلاد امام علی (ع)','تشویق مردم به شرکت در برنامه‌ها',1,1,1,0,NULL,1,2,1,0,NULL,NULL,8,NULL,NULL,'2024-11-26 14:22:31','2024-12-02 21:53:25'),
(14,'روز نیمه شعبان',1403,'5.jpg','اطلاعیه جشن بزرگ نیمه شعبان','حمایت از برنامه‌های مذهبی و فرهنگی',0,0,1,1,NULL,1,3,0,0,NULL,NULL,9,1,NULL,'2024-11-26 14:22:31','2024-12-04 07:02:35'),
(15,'روز عرفه',1402,'7.jpg','برگزاری دعا و مراسم مذهبی روز عرفه','تشویق مردم به دعا و نیایش',1,1,0,0,NULL,1,1,0,0,NULL,NULL,10,NULL,NULL,'2024-11-26 14:22:31','2024-12-02 18:22:18');

/*Table structure for table `ritual_reports` */

DROP TABLE IF EXISTS `ritual_reports`;

CREATE TABLE `ritual_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ritual_reports` */

insert  into `ritual_reports`(`id`,`ritual_id`,`year`,`promotion_report_id`,`promotion_id`,`promoter_id`,`description`,`city_id`,`place_name`,`province_id`,`city`,`village`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(2,4,NULL,1,3,2,'توضیحات شعائر که مبلغ ثبت میکند را می توانیم در این قسمت ثبت کنیم و قابل مشاهده میباشد .',3,'مسجد امام زمان',1,'کهک',NULL,1,NULL,NULL,NULL),
(3,3,NULL,2,4,4,'دهه کرامت یعنی چه ؟ ولادت باسعادت کریمه اهل بیت حضرت فاطمه معصومه سلام الله علیهاو برادر گرامیشان و آغاز دهه مبارک و میمون کرامت بر همگان مبارک باد. دهه کرامت،دهه اول ماه ذی‌العقده است و آغازش با ولادت حضرت معصومه(علیهالسلام) و پایانش با ولادت حضرت ابوالحسن علی بن موسی‌الرضا(علیه السلام) می‌باشد.',3,'مسجد امام حسین',2,'شهر ری','باقر اباد',1,NULL,NULL,NULL),
(4,NULL,NULL,3,6,6,'برگزاری مراسم و حمایت از برنامه‌های مذهبی',4,NULL,4,'اصفهان',NULL,1,NULL,NULL,NULL),
(5,4,NULL,4,9,6,'\'شرکت در برنامه‌های فرهنگی و تبلیغی\'',15,'اطعام مسجد',15,'سمنان',NULL,1,NULL,NULL,NULL),
(6,6,NULL,5,12,15,'حمایت از برنامه‌های مذهبی و فرهنگی',5,NULL,5,'کرج',NULL,1,NULL,NULL,NULL),
(16,4,'1401',6,13,13,'شرکت در مراسم‌های عمومی و فرهنگی',19,'مسجد المهدی',19,'قم','کهک',1,NULL,NULL,NULL),
(8,4,'1401',7,13,19,'سلفچگان مدرسه',34,'سلفچگان مدرسه',19,'سلفچگان','سلفچگان',1,NULL,NULL,NULL),
(9,4,'1401',7,13,NULL,'سلفچگان مدرسه',34,'سلفچگان مدرسه',19,'سلفچگان','سلفچگان',1,NULL,NULL,NULL),
(10,6,'1401',7,13,NULL,'سلفچگان محله',32,NULL,19,NULL,NULL,1,NULL,NULL,NULL),
(11,4,'1401',7,13,NULL,'سلفچگان مدرسه',34,'سلفچگان مدرسه',19,'سلفچگان','سلفچگان',1,NULL,NULL,NULL),
(12,4,'1401',7,13,NULL,'سلفچگان مدرسه',34,'سلفچگان مدرسه',19,'سلفچگان','سلفچگان',1,NULL,NULL,NULL),
(13,6,'1401',7,13,NULL,'سلفچگان محله',32,NULL,19,NULL,NULL,1,NULL,NULL,NULL);

/*Table structure for table `rituals` */

DROP TABLE IF EXISTS `rituals`;

CREATE TABLE `rituals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rituals` */

insert  into `rituals`(`id`,`title`,`color`,`description`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'موکب خیابانی','#FF6347',NULL,1,NULL,NULL,NULL),
(2,'موکب خانگی','#8A2BE2',NULL,1,NULL,NULL,NULL),
(3,'کاروان شادی','#00CED1',NULL,1,NULL,NULL,NULL),
(4,'اطعام','#FF4500',NULL,1,NULL,NULL,NULL),
(5,'دسته عزاداری','#32CD32',NULL,1,NULL,NULL,NULL),
(6,'تزیین خیابان و محله','#FFD700',NULL,1,NULL,NULL,NULL);

/*Table structure for table `support_types` */

DROP TABLE IF EXISTS `support_types`;

CREATE TABLE `support_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `status_id` int(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `support_types` */

insert  into `support_types`(`id`,`title`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'بسته فرهنگی',1,NULL,NULL,NULL),
(2,'حمایت مالی',1,NULL,NULL,NULL),
(3,'سایر',1,NULL,NULL,NULL);

/*Table structure for table `support_users` */

DROP TABLE IF EXISTS `support_users`;

CREATE TABLE `support_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promoter_id` int(11) DEFAULT NULL,
  `support_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `support_users` */

insert  into `support_users`(`id`,`promoter_id`,`support_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,2,1,NULL,NULL,NULL),
(2,3,2,NULL,NULL,NULL),
(3,2,3,NULL,NULL,NULL),
(4,3,3,NULL,NULL,NULL),
(5,2,4,NULL,NULL,NULL),
(6,3,4,NULL,NULL,NULL),
(7,6,6,NULL,NULL,NULL),
(8,3,7,NULL,NULL,NULL),
(9,4,7,NULL,NULL,NULL),
(10,6,7,NULL,NULL,NULL),
(11,19,12,NULL,NULL,NULL),
(12,21,17,NULL,NULL,NULL),
(13,21,16,NULL,NULL,NULL),
(14,3,17,NULL,NULL,NULL),
(15,18,17,NULL,NULL,NULL);

/*Table structure for table `supports` */

DROP TABLE IF EXISTS `supports`;

CREATE TABLE `supports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `supports` */

insert  into `supports`(`id`,`pack_items`,`amount`,`type_id`,`promotion_id`,`description`,`creator_id`,`editor_id`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'کتاب\nبروشور\nپرچم',NULL,1,3,'واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.',NULL,NULL,1,NULL,'2024-11-17 07:52:10','2024-11-19 12:47:26'),
(2,NULL,'500000',2,2,'واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.',NULL,NULL,1,NULL,'2024-11-17 07:52:31','2024-11-17 07:52:31'),
(3,'بن خرید',NULL,3,1,'واقعه غدیر خم از مهم‌ترین وقایع تاریخ اسلام است که در آن، پیامبر اسلام (صلی‌الله‌علیه‌و‌آله‌وسلّم) هنگام بازگشت از حجةالوداع در ۱۸ ذی‌الحجه سال دهم قمری در مکانی به نام غدیرخم، امام علی (علیه‌السّلام) را ولی و جانشین خود معرفی کرد و حاضران که بزرگان صحابه نیز در میان‌شان بودند، در آنجا با امام علی (علیه‌السّلام) بیعت کردند.\nطبق آیه تبلیغ، پیامبر از جانب خداوند مامور بود آنچه را که خدا دستور داده به مردم ابلاغ کند و اگر این کار را انجام ندهد رسالتش را انجام نداده است. پس از واقعه غدیر آیه اکمال نازل شده و این روز را روز اکمال دین و اتمام نعمت معرفی نمود.',NULL,NULL,1,NULL,'2024-11-17 07:53:32','2024-11-17 07:53:32'),
(4,NULL,'1000000',2,4,'دهه کرامت یعنی چه ؟ ولادت باسعادت کریمه اهل بیت حضرت فاطمه معصومه سلام الله علیهاو برادر گرامیشان و آغاز دهه مبارک و میمون کرامت بر همگان مبارک باد. دهه کرامت،دهه اول ماه ذی‌العقده است و آغازش با ولادت حضرت معصومه(علیهالسلام) و پایانش با ولادت حضرت ابوالحسن علی بن موسی‌الرضا(علیه السلام) می‌باشد.',NULL,NULL,1,NULL,'2024-11-22 13:35:51','2024-11-22 13:35:51'),
(6,'ملزومات','150000',3,2,'در همین حد\nلورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.',NULL,NULL,1,NULL,'2024-11-25 03:59:26','2024-11-25 03:59:26'),
(7,'ldm\nosonvs\nns',NULL,NULL,4,'/.saxasmlm',NULL,NULL,1,NULL,'2024-11-25 04:28:40','2024-11-25 04:28:40'),
(8,'برنج، روغن، قند',NULL,1,1,'حمایت بسته غذایی برای خانواده‌های نیازمند.',1,NULL,1,NULL,'2024-11-26 14:38:34','2024-11-26 14:38:34'),
(9,'لباس زمستانی',NULL,1,2,'حمایت از کودکان مناطق محروم با تهیه لباس زمستانی.',2,NULL,1,NULL,'2024-11-26 14:38:34','2024-11-26 14:38:34'),
(10,'کتاب‌های مذهبی',NULL,1,3,'ارسال کتاب‌های آموزشی برای مدارس مناطق دورافتاده.',3,NULL,1,NULL,'2024-11-26 14:38:34','2024-11-26 14:38:34'),
(11,NULL,'5000000',2,4,'حمایت مالی برای بازسازی مسجد.',1,NULL,1,NULL,'2024-11-26 14:38:34','2024-11-26 14:38:34'),
(12,NULL,'3000000',2,5,'کمک به تهیه جهیزیه.',4,NULL,1,NULL,'2024-11-26 14:38:34','2024-11-26 14:38:34'),
(13,NULL,'1000000',2,6,'حمایت مالی برای جشن‌های مذهبی.',5,NULL,1,NULL,'2024-11-26 14:38:34','2024-11-26 14:38:34'),
(14,'بسته لوازم‌التحریر',NULL,3,7,'تهیه لوازم‌التحریر برای دانش‌آموزان.',1,NULL,1,NULL,'2024-11-26 14:38:34','2024-11-26 14:38:34'),
(15,'کارت هدیه',NULL,3,8,'توزیع کارت هدیه برای نیازمندان.',6,NULL,1,NULL,'2024-11-26 14:38:34','2024-11-26 14:38:34'),
(16,'بسته بهداشتی',NULL,3,9,'ارسال بسته‌های بهداشتی برای خانواده‌ها.',7,NULL,1,NULL,'2024-11-26 14:38:34','2024-11-26 14:38:34'),
(17,'اقلام خوراکی و بهداشتی',NULL,1,10,'تهیه بسته حمایتی برای مناطق سیل‌زده.',8,NULL,1,NULL,'2024-11-26 14:38:34','2024-11-26 14:38:34');

/*Table structure for table `ticket_items` */

DROP TABLE IF EXISTS `ticket_items`;

CREATE TABLE `ticket_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT 'شناسه کاربر ارسال کننده',
  `ticket_id` int(11) DEFAULT NULL COMMENT 'شناسه تیکت',
  `text` text DEFAULT NULL COMMENT 'متن تیکت',
  `media` varchar(255) DEFAULT NULL COMMENT 'فایل های مدیا',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'شناسه وضعیت فعال/غیر فعال',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ticket_items` */

insert  into `ticket_items`(`id`,`user_id`,`ticket_id`,`text`,`media`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,2,1,'عرض سلام و خدا قوت\nدرباره روند کار و موضوع فرهنگی','image13501732961242.jpg###',1,NULL,'2024-11-30 12:07:24','2024-11-30 12:07:24'),
(2,1,1,'مورد بررسی میشود ب زودی',NULL,1,NULL,'2024-11-30 12:11:11','2024-11-30 12:11:11'),
(3,19,2,'سلام من ویرایش گزارش زدم مشکل داشت','image58351733081831.jpg###',1,NULL,'2024-12-01 20:37:19','2024-12-01 20:37:19'),
(4,1,2,'سلام کدوم قسمت مشکل دارید ؟ \nلینک بهم بدید',NULL,1,NULL,'2024-12-01 20:38:38','2024-12-01 20:38:38'),
(5,19,2,'دوباره چک کردم درست بود',NULL,1,NULL,'2024-12-01 20:39:18','2024-12-01 20:39:18');

/*Table structure for table `ticket_subjects` */

DROP TABLE IF EXISTS `ticket_subjects`;

CREATE TABLE `ticket_subjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ticket_subjects` */

insert  into `ticket_subjects`(`id`,`title_fa`,`creator_id`,`editor_id`,`count_ticket`,`count_ticket_awaiting`,`count_ticket_checking`,`count_ticket_answered`,`count_ticket_closed`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'پشتیبانی فنی',1,NULL,1,1,0,0,0,1,NULL,'2024-11-30 12:04:55','2024-11-30 12:04:55'),
(2,'پشتیبانی و آماد فرهنگی',1,NULL,1,0,0,0,1,1,NULL,'2024-11-30 12:05:12','2024-11-30 12:05:12'),
(3,'پشتیبانی مهارتی',1,NULL,0,0,0,0,0,0,NULL,'2024-11-30 12:05:27','2024-11-30 12:05:27');

/*Table structure for table `tickets` */

DROP TABLE IF EXISTS `tickets`;

CREATE TABLE `tickets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tickets` */

insert  into `tickets`(`id`,`title`,`user_id`,`subject_id`,`priority_status_id`,`reply_status_id`,`score`,`lang`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'فعالیت فرهنگی',2,2,3,3,5,'fa',1,NULL,'2024-11-30 12:07:24','2024-11-30 12:27:04'),
(2,'مشکل سامانه',19,1,2,3,5,'fa',1,NULL,'2024-12-01 20:37:19','2024-12-01 20:40:09');

/*Table structure for table `tribunes` */

DROP TABLE IF EXISTS `tribunes`;

CREATE TABLE `tribunes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tribunes` */

insert  into `tribunes`(`id`,`subject`,`promotion_report_id`,`promoter_id`,`promotion_id`,`year`,`duration`,`audiencetype_id`,`people_count`,`place_name`,`city_id`,`province_id`,`city`,`village`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(2,'اشنایی با غدیر',1,2,3,'1403','30',3,100,'مسجد امام زمان',19,19,'کهک',NULL,1,NULL,'2024-11-26 16:39:45','2024-11-26 16:39:45'),
(3,'برگزاری مراسم و حمایت از برنامه‌های مذهبی',3,6,6,'1403','40',3,50,NULL,19,19,'ارومیه',NULL,1,NULL,'2024-11-26 16:39:43','2024-11-26 16:39:43'),
(11,'شرکت در مراسم‌های عمومی و فرهنگی',6,13,13,'1401','45',2,100,'مدرسه شریفی',19,19,'قم','کهک',1,NULL,NULL,NULL),
(5,'سخنرانی من',7,19,13,'1401','20',1,50,'مدرسه جوانان',34,19,'سلفچگان','سلفچگان',1,NULL,NULL,NULL),
(6,'سخنرانی من',7,NULL,13,'1401','20',1,50,'مدرسه جوانان',34,19,'سلفچگان','سلفچگان',1,NULL,NULL,NULL),
(7,'سخنرانی من',7,NULL,13,'1401','20',1,50,'مدرسه جوانان',34,19,'سلفچگان','سلفچگان',1,NULL,NULL,NULL),
(8,'سخنرانی من',7,NULL,13,'1401','20',1,50,'مدرسه جوانان',34,19,'سلفچگان','سلفچگان',1,NULL,NULL,NULL),
(9,'ثقفثقف',7,NULL,13,'1401','ثفثقفث',3,456,'قلیل',36,8,NULL,NULL,1,NULL,NULL,NULL);

/*Table structure for table `user_notes` */

DROP TABLE IF EXISTS `user_notes`;

CREATE TABLE `user_notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `promoter_id` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_notes` */

insert  into `user_notes`(`id`,`promoter_id`,`creator_id`,`content`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(14,3,1,'مبلغ دارای 4 ستاره میباشد',1,NULL,'2024-11-20 14:28:17','2024-11-20 14:28:17'),
(18,2,1,'این مبلغ 5 ستاره دارد',NULL,NULL,NULL,NULL),
(17,2,1,'خانم عبادی در زمینه فعالیت های فرهنگی و بسیج فعالیت دارند',NULL,NULL,NULL,NULL),
(22,4,1,'یک مبلغ حوزه ضمن اشاره به حدیثی از امام کاظم(ع) در رابطه با امر به معروف تصریح کرد: ایشان می‌فرمایند: «امر به معروف کنید، از منکر بازدارید که اگر این کار را انجام ندهید اشرار بر شما حاکم خواهند شد و آنگاه خوبان شما هر چقدر هم که دعا کنند، دعاهای آنان مستجاب نمی‌­شود.»',NULL,NULL,'2024-11-22 13:53:11',NULL),
(21,4,1,'دهه کرامت یعنی چه ؟ ولادت باسعادت کریمه اهل بیت حضرت فاطمه معصومه سلام الله علیهاو برادر گرامیشان و آغاز دهه مبارک و میمون کرامت بر همگان مبارک باد. دهه کرامت،دهه اول ماه ذی‌العقده است و آغازش با ولادت حضرت معصومه(علیهالسلام) و پایانش با ولادت حضرت ابوالحسن علی بن موسی‌الرضا(علیه السلام) می‌باشد.',NULL,NULL,'2024-11-22 13:53:11',NULL),
(23,6,1,'در صورت همکاری بیش از آنچه بتوان را در اختیار همکاران برای فرهنگی قرار میدهیم',NULL,NULL,'2024-11-25 03:56:21',NULL);

/*Table structure for table `user_notif` */

DROP TABLE IF EXISTS `user_notif`;

CREATE TABLE `user_notif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promoter_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `display` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `user_notif` */

insert  into `user_notif`(`id`,`promoter_id`,`creator_id`,`content`,`status_id`,`display`,`deleted_at`,`created_at`,`updated_at`) values 
(1,19,1,'سلام خیلی خوش  آمدید همکار محترم !!!',1,0,NULL,'2024-12-02 00:21:46','2024-12-01 20:51:46'),
(2,21,1,'سلام دوست گرامی ...',1,1,NULL,'2024-12-02 21:48:57',NULL);

/*Table structure for table `user_promotions` */

DROP TABLE IF EXISTS `user_promotions`;

CREATE TABLE `user_promotions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_promotions` */

insert  into `user_promotions`(`id`,`promoter_id`,`position_id`,`city_id`,`province_id`,`city`,`village`,`place_name`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(27,2,3,NULL,2,'تهران',NULL,'مسجد الزهرا',NULL,NULL,NULL,NULL),
(6,4,4,2,NULL,'ورامین',NULL,'مدرسه شرافت',NULL,NULL,NULL,NULL),
(7,4,2,3,NULL,'شهرری','باقر آباد','مسجد امام حسین',NULL,NULL,NULL,NULL),
(8,6,4,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(19,19,3,NULL,19,NULL,NULL,'دانشگاه کهک',NULL,NULL,NULL,NULL),
(18,19,4,NULL,19,'دستجرد','دستجرد','مدرسه مهدویت',NULL,NULL,NULL,NULL),
(20,18,4,182,6,'بسب','بس','ببب',NULL,NULL,NULL,NULL),
(24,22,2,NULL,5,NULL,NULL,'ww',NULL,NULL,NULL,NULL);

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_roles` */

insert  into `user_roles`(`id`,`name`,`description`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'مدیریت','',1,NULL,NULL,NULL),
(2,'مبلغ','',1,NULL,NULL,NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `native_province_id` int(11) DEFAULT NULL,
  `native_city_id` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT 'avatar.png',
  `education_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1,
  `level_id` varchar(5) DEFAULT NULL,
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
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`mobile`,`firstname`,`lastname`,`role_id`,`gender_id`,`is_not_citizen`,`codemeli`,`khadamat_code`,`tablighat_office_code`,`tablighat_organization_code`,`ovghaf_code`,`bank_account_number`,`city_id`,`province_id`,`city`,`village`,`native_province_id`,`native_city_id`,`address`,`postal_code`,`photo`,`education_id`,`status_id`,`level_id`,`confirm_code`,`confirm_time`,`password`,`last_login`,`creator_id`,`remember_token`,`editor_id`,`has_khadamat_code`,`has_tablighat_office_code`,`has_tablighat_organization_code`,`has_ovghaf_code`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'09191964745','پرسنل','غدیر',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'image88381731844742.png',NULL,1,NULL,'9732','1732513440','$2y$12$tEr5zN7Fx/GnPu/6rrc1gucC9PqYm9EQvrD2PHmk2qRNBK/6GlKT2','2024-12-04 15:11:44',NULL,'Oms4g68qpQdMhvEhPEN8NdpKXYiXvMIeJUE1vtH3DWwsrtClyQ1fZY217VIr',1,NULL,NULL,NULL,NULL,NULL,'2024-12-05 02:14:12','2024-12-05 02:14:12'),
(2,'09198526839','مریم','عبادی',2,2,0,'1234567','122324','44444','33333','222222222','43535355-34534535',1,13,'قم',NULL,NULL,NULL,'قم میدان رسالت','23424234-343','image8961731845105.png',1,1,'5','8611','1733041239','$2y$12$5ov2vBu7ueo7Th6MK.0kCusu32bIkvkdHSZlkX..RJDmDL7tnctdC','2024-12-04 22:44:28',1,'He1BtBgUXer4eAmpGGpsmSqJLi9KcEgZOtJAjjEOTQsu2o0ZTtpfxZINl79W',2,1,1,1,1,NULL,'2024-12-05 02:43:30','2024-12-04 23:13:30'),
(3,'09191519138','الیاس','مصباح',2,1,1,NULL,NULL,NULL,'345345','3534534','345345345345',3,0,'تهران',NULL,NULL,NULL,NULL,'345345','image63481731845052.png',2,1,'4','6501','1733039117','$2y$12$B6BHbJy1JHx/P7u2vPDIVuiO4b6B1qB7n1HiQ0Pz9GcYk9jOgdV86','2024-11-25 03:50:56',1,'4UILc3vUbNHSZkFyFYsWyoxqo5xIs4Nl5Jw9O8RKA7qSxznZQeJEd9FNEfaD',1,NULL,NULL,NULL,NULL,NULL,'2024-12-01 12:13:12','2024-12-01 08:43:12'),
(4,'09191519132','امیرعلی','حسینی',2,1,1,NULL,'1230945','456734','76465476',NULL,'2342305345',3,0,'شهر ری','باقرآباد',NULL,NULL,'شهر ری روستای باقرآباد ک 32 پلاک 67','32434235','image24831732306151.jpg',4,1,'5',NULL,NULL,'$2y$12$o.dzMP9pjS/ooLmxGEXBPuoi5h81mMH633O5vFSY8kDrpMomCZzb6','2024-11-22 14:12:24',1,NULL,4,NULL,NULL,NULL,NULL,NULL,'2024-11-22 17:49:30','2024-11-22 14:19:30'),
(5,'09198526834','زهرا','محمدی',2,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2.png',NULL,1,NULL,'1917','1732433496','$2y$12$es0TupRGKcOQndwLnHrwiueaC80EY36HrMiiObWOPkl6ElOtZkyvm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-26 14:47:29','2024-11-26 14:47:29'),
(6,'09361111111','احمد','احمدی',2,1,0,'037','1223',NULL,NULL,NULL,'034777',3,0,NULL,NULL,NULL,NULL,NULL,NULL,'image75381732530372.png',2,1,'1',NULL,NULL,'$2y$12$p6EsGdo6eSQEpuqdbPXl7O99w0GTXZkkDs.u7u19UCiNp6gs8K.OW','2024-11-26 12:15:42',1,NULL,1,NULL,NULL,NULL,NULL,NULL,'2024-11-26 15:45:42','2024-11-26 12:15:42'),
(7,'09121234567','علی','احمدی',2,1,0,'1234567890',NULL,NULL,NULL,NULL,NULL,1,0,'تهران',NULL,NULL,NULL,'تهران، خیابان آزادی','1234567891','1.png',NULL,1,NULL,NULL,NULL,'$2y$10$KwjQHOEJgPBLjtH9JbxR0OkYsN8MX.GyDj5k82x5t8Kvrs5WDFu9i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-26 14:47:48','2024-11-26 14:47:48'),
(8,'09122223344','مریم','رضایی',2,2,0,'0987654321',NULL,NULL,NULL,NULL,NULL,2,0,'اصفهان',NULL,NULL,NULL,'اصفهان، خیابان کاوه','1234567892','2.png',NULL,1,NULL,NULL,NULL,'$2y$10$1jLkO8G9XlXgj6OGTcWSeuuH98.k2C9jU38h0bVz5Z7fS.oO/mDG.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-26 14:47:32','2024-11-26 14:47:32'),
(9,'09123334455','حسن','کریمی',2,1,0,'1122334455',NULL,NULL,NULL,NULL,NULL,3,0,'شیراز',NULL,NULL,NULL,'شیراز، خیابان زند','1234567893','1.png',NULL,1,NULL,NULL,NULL,'$2y$12$EbyIGAhmEt27wMRqclGHE.iInlLxZmNs1r9AVgUiPQCYCBvQyzere',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'2024-11-26 15:45:19','2024-11-26 12:15:19'),
(10,'09124445566','فاطمه','محمدی',2,2,0,'2233445566',NULL,NULL,NULL,NULL,NULL,4,0,'مشهد',NULL,NULL,NULL,'مشهد، خیابان امام رضا','1234567894','2.png',NULL,1,NULL,NULL,NULL,'$2y$10$QZokjkH3yVkw.GZhgWZ/q.ujm7MQypjN2HFt.L6QGf4xV64hhrWJK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-26 14:47:34','2024-11-26 14:47:34'),
(11,'09125556677','سعید','عباسی',2,1,0,'3344556677',NULL,NULL,NULL,NULL,NULL,5,0,'تبریز',NULL,NULL,NULL,'تبریز، میدان ساعت','1234567895','1.png',NULL,1,NULL,NULL,NULL,'$2y$10$yWu1iRcgyOQYlBzSC9FOCOZ/xZTnpRKHniVTA4vsGsmmlkcImU8fq',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-26 14:47:46','2024-11-26 14:47:46'),
(12,'09126667788','زهرا','اکبری',2,2,0,'4455667788',NULL,NULL,NULL,NULL,NULL,6,0,'اهواز',NULL,NULL,NULL,'اهواز، خیابان نادری','1234567896','2.png',NULL,1,NULL,NULL,NULL,'$2y$10$4fJbE9LdkBW3UWePZ9z06OPD4Zh7BdOZub1Drnm92FnIo/SJHaa9u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-26 14:47:35','2024-11-26 14:47:35'),
(13,'09127778899','رضا','حسینی',2,1,0,'5566778899',NULL,NULL,NULL,NULL,NULL,7,0,'کرمانشاه',NULL,NULL,NULL,'کرمانشاه، میدان آزادی','1234567897','1.png',NULL,1,NULL,NULL,NULL,'$2y$12$EknAzwYLGCHtK.nAABve7O0gPtALirR/ZOKk1jcvsOFHWeuXTU1Wu','2024-11-26 12:30:03',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'2024-11-26 16:00:03','2024-11-26 12:30:03'),
(14,'09128889900','نرگس','امیری',2,2,0,'6677889900',NULL,NULL,NULL,NULL,NULL,8,0,'زاهدان',NULL,NULL,NULL,'زاهدان، خیابان دانشگاه','1234567898','2.png',NULL,1,NULL,NULL,NULL,'$2y$10$FtCDaX/jqJ.oXtfBy7RSHuvD/UP5rwUfsM9R82r6pCTqEs3dPHUgO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-26 14:47:36','2024-11-26 14:47:36'),
(15,'09129990011','محمد','نوری',2,1,0,'7788990011',NULL,NULL,NULL,NULL,NULL,9,0,'کرمان',NULL,NULL,NULL,'کرمان، خیابان شهید بهشتی','1234567899','1.png',NULL,1,NULL,NULL,NULL,'$2y$12$LG2qM61g/MSkKTkv1VyA/.b8sWIuDGUaQ2IXeGyufHVClXoz4cBAS','2024-11-26 12:25:22',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'2024-11-26 15:55:22','2024-11-26 12:25:22'),
(16,'09130001122','سارا','عسگری',2,2,0,'8899001122',NULL,NULL,NULL,NULL,NULL,10,0,'ارومیه',NULL,NULL,NULL,'ارومیه، میدان گولزار','1234567800','2.png',NULL,1,NULL,NULL,NULL,'$2y$10$1MG94zBxhZzvs.2Wi.kZYeBLYbSGIf2P2j1hhqTKBIc3TY77KrU4W',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-26 14:47:36','2024-11-26 14:47:36'),
(17,'0919852683911','m','e',2,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'9044','1732707671','$2y$12$gHRyrf0Km55WNb27wdVosun56QeIQmX1QUeFc4Wf3TlprbCo45U2q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-27 18:30:46','2024-11-27 18:30:46'),
(18,'09198111102','صادق','شیری',2,1,0,'4032228035',NULL,NULL,NULL,NULL,'32242424',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'image36341732784026.jpg',2,1,'0','2324','1733156288','$2y$12$2ZTttyCoFDLgCeLSxKdcTuxCT79g/8G3T0rg5SdeF0mJxnvEG/A/W','2024-12-04 15:24:24',1,NULL,1,NULL,NULL,NULL,NULL,NULL,'2024-12-04 19:35:38','2024-12-04 16:05:38'),
(19,'09192510347','رویا','روشن',2,2,0,'12345678','45646-45646','345346-3535-3566','4564-45646','456456456','123-45646',35,8,'لواسان',NULL,NULL,NULL,'لواسان خ روحانی ک 34 پلاک 23','3454','image86861733076665.jpg',4,1,'0',NULL,NULL,'$2y$12$3cjulqbjneUXiAqxuygmcuWhO7GWk0fp/26lRJwyuKEmmB8M94QYG','2024-12-01 19:46:23',1,NULL,19,NULL,NULL,NULL,NULL,'2024-12-01 23:05:05','2024-12-02 02:35:05','2024-12-01 23:05:05'),
(20,'09191419424','علیرضا','احمدی',1,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'image14241733082345.jpg',NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-12-02 00:17:28','2024-12-01 20:47:28'),
(21,'09153670680','محمدیاسین','محمدی',2,1,1,NULL,NULL,NULL,NULL,NULL,'123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'avatar.png',3,1,'0','9785','1733160041','$2y$12$EJm.FSXBZFe.Xu/v2QoFM.J/0tpl68AYq1u5VFYTtnLcnTSKjla3e','2024-12-04 13:00:01',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'2024-12-04 16:30:01','2024-12-04 13:00:01'),
(22,'09189062676','تست','تستسی',2,1,0,'456456','456456','rtyry','000000',NULL,'000000',336,5,'dfvdfv',NULL,4,194,NULL,NULL,'avatar.png',2,1,'0','1758','1733160959','$2y$12$48FPvFH07z.PZCC9pZEI0OCatJefuXcWhdttYLi8S3pYP8711N5uW','2024-12-04 15:32:03',NULL,NULL,1,1,1,1,0,NULL,'2024-12-05 00:38:40','2024-12-04 21:08:40');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

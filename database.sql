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
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `audience_types` */

/*Table structure for table `base_cities` */

DROP TABLE IF EXISTS `base_cities`;

CREATE TABLE `base_cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `base_cities` */

insert  into `base_cities`(`id`,`name_fa`,`name_en`,`name_ar`,`province_id`,`icon`,`description_fa`,`description_en`,`description_ar`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'شهرستان قم',NULL,NULL,1,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),
(2,'شهرستان تهران',NULL,NULL,2,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),
(3,'شهر ری',NULL,NULL,2,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL);

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
(1,'آقا','male',1,'2024-07-06 20:22:35','2024-07-06 20:22:35',NULL),
(2,'خانم','femail',1,'2024-07-06 20:22:35','2024-07-06 20:22:35',NULL);

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
(1,'فارسی','fa','rtl','fa.png',1,NULL,'2024-07-06 20:22:35','2024-07-06 20:22:35'),
(2,'English','en','ltr','en.png',0,NULL,'2024-07-06 20:22:35','2024-07-06 20:22:35'),
(3,'عربی','ar','rtl','ar.png',0,NULL,'2024-07-06 20:22:35','2024-07-06 20:22:35');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `base_provinces` */

insert  into `base_provinces`(`id`,`name_fa`,`name_en`,`name_ar`,`country_id`,`icon`,`description_fa`,`description_en`,`description_ar`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'قم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),
(2,'تهران',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

/*Data for the table `base_statuses` */

insert  into `base_statuses`(`id`,`title_fa`,`title_en`,`group_id`,`code`,`color`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'وضعیت فعالیت',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),
(2,'فعال',NULL,1,'1',NULL,1,NULL,NULL,NULL),
(3,'نیمه فعال',NULL,1,'2',NULL,1,NULL,NULL,NULL),
(4,'غیرفعال',NULL,1,'0',NULL,1,NULL,NULL,NULL),
(5,'تعهد ستاد',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),
(6,'دارد',NULL,5,'1',NULL,1,NULL,NULL,NULL),
(7,'ندارد',NULL,5,'0',NULL,1,NULL,NULL,NULL),
(8,'وضعیت گزارش دهی',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),
(9,'باز',NULL,8,'1',NULL,1,NULL,NULL,NULL),
(10,'بسته',NULL,8,'0',NULL,1,NULL,NULL,NULL),
(11,'وضعیت ثبت نام',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),
(12,'باز',NULL,11,'1',NULL,1,NULL,NULL,NULL),
(13,'بسته',NULL,11,'0',NULL,1,NULL,NULL,NULL);

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

/*Table structure for table `blogs` */

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blogs` */

/*Table structure for table `cache` */

DROP TABLE IF EXISTS `cache`;

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cache` */

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
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `courses` */

/*Table structure for table `cultural_users` */

DROP TABLE IF EXISTS `cultural_users`;

CREATE TABLE `cultural_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `family` varchar(255) NOT NULL,
  `job_position` varchar(255) NOT NULL,
  `gender_id` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cultural_users` */

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `education` */

insert  into `education`(`id`,`title`,`description`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'لیسانس','',1,NULL,NULL,NULL),
(2,'فوق لیسانس','',1,NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(13,'2024_11_03_220836_create_blogs_table',1),
(14,'2024_11_03_220837_create_support_types_table',1),
(15,'2024_11_03_220838_create_tickets_table',1),
(16,'2024_11_03_220839_create_ticket_subjects_table',1),
(17,'2024_11_03_220840_create_rituals_table',1),
(18,'2024_11_03_220841_create_promotion_reports_table',1),
(19,'2024_11_03_220842_create_ritual_reports_table',1),
(20,'2024_11_03_220843_create_tribunes_table',1),
(21,'2024_11_03_220844_create_courses_table',1),
(22,'2024_11_03_220845_create_educational_bases_table',1),
(23,'2024_11_03_220846_create_audience_types_table',1);

/*Table structure for table `notes` */

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `notes` */

/*Table structure for table `promotion_positions` */

DROP TABLE IF EXISTS `promotion_positions`;

CREATE TABLE `promotion_positions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `promotion_positions` */

/*Table structure for table `promotion_reports` */

DROP TABLE IF EXISTS `promotion_reports`;

CREATE TABLE `promotion_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) NOT NULL,
  `report` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `promotion_reports` */

/*Table structure for table `promotions` */

DROP TABLE IF EXISTS `promotions`;

CREATE TABLE `promotions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `promotions` */

insert  into `promotions`(`id`,`title`,`year`,`photo`,`comments`,`commitments`,`register_status`,`report_status`,`has_course`,`has_tribune`,`status_id`,`creator_id`,`editor_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'efwe',45,NULL,'erer','werw',1,1,0,0,1,NULL,NULL,'2024-11-05 21:31:53','2024-11-05 20:51:35','2024-11-05 21:31:53'),
(2,'efwe',45,'','erer','werw',1,1,0,0,1,1,NULL,NULL,'2024-11-05 20:52:20','2024-11-05 20:52:20'),
(3,'جدید ت',1345,'image25041730836833.gif','promotion promotion promotion',NULL,1,1,0,0,1,1,NULL,'2024-11-05 21:01:07','2024-11-05 21:00:48','2024-11-05 21:01:07'),
(4,'سلام',1234,'image23701730838448.jpg','CheckBoxGroup','ddfgfg',1,1,1,1,1,1,1,NULL,'2024-11-05 21:27:32','2024-11-05 21:30:37');

/*Table structure for table `ritual_reports` */

DROP TABLE IF EXISTS `ritual_reports`;

CREATE TABLE `ritual_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ritual_id` int(11) NOT NULL,
  `promotion_report_id` int(11) NOT NULL,
  `report` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ritual_reports` */

/*Table structure for table `rituals` */

DROP TABLE IF EXISTS `rituals`;

CREATE TABLE `rituals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rituals` */

insert  into `rituals`(`id`,`title`,`description`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'موکب خیابانی',NULL,1,NULL,NULL,NULL),
(2,'موکب خانگی',NULL,1,NULL,NULL,NULL),
(3,'کاروان شادی',NULL,1,NULL,NULL,NULL),
(4,'اطعام',NULL,1,NULL,NULL,NULL),
(5,'دسته عزاداری',NULL,1,NULL,NULL,NULL),
(6,'تزیین خیابان و محله',NULL,1,NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `support_types` */

insert  into `support_types`(`id`,`title`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'بسته فرهنگی',1,NULL,NULL,NULL),
(2,'حمایت مالی',1,NULL,NULL,NULL),
(3,'سایر',1,NULL,NULL,NULL);

/*Table structure for table `supports` */

DROP TABLE IF EXISTS `supports`;

CREATE TABLE `supports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pack_items` varchar(255) DEFAULT NULL COMMENT 'اقلام بسته / اگر بسته باشد',
  `amount` varchar(255) DEFAULT NULL COMMENT 'مبلغ / اگر مالی باشد',
  `type_id` int(11) DEFAULT NULL COMMENT 'نوع حمایت',
  `description` text DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `editor_id` int(11) DEFAULT NULL,
  `status_id` int(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `supports` */

insert  into `supports`(`id`,`pack_items`,`amount`,`type_id`,`description`,`creator_id`,`editor_id`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'کتاب',NULL,1,'توضیحات من',NULL,NULL,1,'2024-11-06 06:18:12','2024-11-06 06:15:16','2024-11-06 06:18:12'),
(2,'کتاب',NULL,1,'توضیحات من',NULL,NULL,1,NULL,'2024-11-06 06:15:22','2024-11-06 06:15:22'),
(3,'کتاب',NULL,1,'توضیحات من',NULL,NULL,1,NULL,'2024-11-06 06:15:36','2024-11-06 06:15:36'),
(4,NULL,'2000000',2,'حمایت مالی',NULL,NULL,1,NULL,'2024-11-06 06:18:35','2024-11-06 06:18:35');

/*Table structure for table `ticket_subjects` */

DROP TABLE IF EXISTS `ticket_subjects`;

CREATE TABLE `ticket_subjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ticket_subjects` */

/*Table structure for table `tickets` */

DROP TABLE IF EXISTS `tickets`;

CREATE TABLE `tickets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tickets` */

/*Table structure for table `tribunes` */

DROP TABLE IF EXISTS `tribunes`;

CREATE TABLE `tribunes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tribunes` */

/*Table structure for table `user_promotions` */

DROP TABLE IF EXISTS `user_promotions`;

CREATE TABLE `user_promotions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `village` varchar(255) NOT NULL,
  `place_name` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_promotions` */

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_roles` */

insert  into `user_roles`(`id`,`name`,`description`,`status_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'مدیریت','',1,NULL,NULL,NULL),
(2,'مبلغ','',1,NULL,NULL,NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`mobile`,`password`,`firstname`,`lastname`,`role_id`,`gender_id`,`is_not_citizen`,`codemeli`,`khadamat_code`,`tablighat_office_code`,`tablighat_organization_code`,`ovghaf_code`,`bank_account_number`,`city_id`,`city`,`village`,`address`,`postal_code`,`photo`,`status_id`,`education_id`,`level_id`,`last_login`,`creator_id`,`editor_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'09191964745','$2y$12$onogYslcq05.1lR6PICdH.0V526DqEd11807W0KzgMZBSDPVhqD.a','مهدی','وثوقی',1,1,0,'09191964745','','','','','',0,'','','','','',1,NULL,0,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'2024-11-04 16:12:08'),
(2,NULL,NULL,NULL,NULL,2,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'2024-11-05 19:34:43','2024-11-05 18:14:35','2024-11-05 19:34:43'),
(3,NULL,NULL,'sdfdfg','dfgdfg',2,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',1,1,1,NULL,1,1,'2024-11-05 19:34:38','2024-11-05 18:15:47','2024-11-05 19:34:38'),
(4,'09191519138',NULL,'رویا','روشن',2,2,1,NULL,'435354','345345','345345','453535','1234',3,'my city','روستا','قفثقفثقفERtertert','ثقفثقف','image41221730829326.png',2,1,1,NULL,1,1,NULL,'2024-11-05 18:55:35','2024-11-05 19:42:30'),
(5,'09192510347',NULL,'dgdfg','dfgdg',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'image45271730833021.jpg',1,NULL,NULL,NULL,1,NULL,'2024-11-05 19:57:24','2024-11-05 19:57:11','2024-11-05 19:57:24');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

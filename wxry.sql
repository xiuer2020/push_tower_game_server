/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.6.44-log : Database - wzry
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wzry` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wzry`;

/*Table structure for table `admin_menu` */

DROP TABLE IF EXISTS `admin_menu`;

CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_menu` */

insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values 
(1,0,1,'Dashboard','fa-bar-chart','/',NULL,NULL,NULL),
(2,0,2,'Admin','fa-tasks','',NULL,NULL,NULL),
(3,2,3,'Users','fa-users','auth/users',NULL,NULL,NULL),
(4,2,4,'Roles','fa-user','auth/roles',NULL,NULL,NULL),
(5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL,NULL),
(6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL,NULL),
(7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL,NULL);

/*Table structure for table `admin_operation_log` */

DROP TABLE IF EXISTS `admin_operation_log`;

CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=449 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_operation_log` */

insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values 
(1,1,'admin','GET','127.0.0.1','[]','2021-05-15 11:52:00','2021-05-15 11:52:00'),
(2,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 11:52:22','2021-05-15 11:52:22'),
(3,1,'admin/heros/23/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 11:52:33','2021-05-15 11:52:33'),
(4,1,'admin/heros/23','PUT','127.0.0.1','{\"name\":\"\\u5f20\\u98de\\u54e5\\u54e5\",\"proficiency\":\"0\",\"launch_time\":\"2015-01-01 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u51b7\\u9759\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\"]},\"occupation\":[\"\\u5766\\u514b\",\"\\u8f85\\u52a9\",null],\"location\":\"\\u5b88\\u62a4\\u8f85\\u52a9\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u56e2\\u961f\\u589e\\u76ca\",null],\"period\":\"\\u5747\\u8861\",\"existence\":\"100\",\"output\":\"40\",\"difficulty\":\"30\",\"shunt\":\"\\u6e38\\u8d70\",\"height\":\"186\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u8700\\u5730\\u6b66\\u5c06\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros\"}','2021-05-15 11:53:59','2021-05-15 11:53:59'),
(5,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 11:54:00','2021-05-15 11:54:00'),
(6,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 12:12:18','2021-05-15 12:12:18'),
(7,1,'admin/heros/23/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 12:12:24','2021-05-15 12:12:24'),
(8,1,'admin/heros/23/edit','GET','127.0.0.1','[]','2021-05-15 12:19:11','2021-05-15 12:19:11'),
(9,1,'admin/heros','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 12:19:15','2021-05-15 12:19:15'),
(10,1,'admin/heros/91/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 12:19:24','2021-05-15 12:19:24'),
(11,1,'admin/heros/91','PUT','127.0.0.1','{\"name\":\"\\u540e\\u7fbf\",\"proficiency\":\"3400\",\"launch_time\":\"2015-01-02 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u51b7\\u9759\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\"]},\"occupation\":[\"\\u5c04\\u624b\",null],\"location\":\"\\u8fde\\u73e0\\u5c04\\u624b\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u5148\\u624b\",null],\"period\":\"\\u540e\\u671f\",\"existence\":\"40\",\"output\":\"80\",\"difficulty\":\"30\",\"shunt\":\"\\u53d1\\u80b2\\u8def\",\"height\":\"183\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u795e\\u804c\\u8005,\\\"\\u795e\\u5c04\\u624b\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros\"}','2021-05-15 12:19:28','2021-05-15 12:19:28'),
(12,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 12:19:28','2021-05-15 12:19:28'),
(13,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\",\"_pjax\":\"#pjax-container\"}','2021-05-15 12:22:04','2021-05-15 12:22:04'),
(14,1,'admin/heros/16/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 12:22:16','2021-05-15 12:22:16'),
(15,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\",\"_pjax\":\"#pjax-container\"}','2021-05-15 12:41:29','2021-05-15 12:41:29'),
(16,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 12:41:37','2021-05-15 12:41:37'),
(17,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 12:41:44','2021-05-15 12:41:44'),
(18,1,'admin/heros/23/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 12:41:51','2021-05-15 12:41:51'),
(19,1,'admin/heros/23','PUT','127.0.0.1','{\"name\":\"\\u5f20\\u98de\\u54e5\\u54e5\",\"proficiency\":\"0\",\"launch_time\":\"2015-01-01 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u51b7\\u9759\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\"]},\"occupation\":[\"\\u5766\\u514b\",\"\\u6218\\u58eb\",\"\\u523a\\u5ba2\",\"\\u6cd5\\u5e08\",\"\\u5c04\\u624b\",\"\\u8f85\\u52a9\",null],\"location\":\"\\u5b88\\u62a4\\u8f85\\u52a9\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u56e2\\u961f\\u589e\\u76ca\",null],\"period\":\"\\u5747\\u8861\",\"existence\":\"100\",\"output\":\"40\",\"difficulty\":\"30\",\"shunt\":\"\\u6e38\\u8d70\",\"height\":\"186\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u8700\\u5730\\u6b66\\u5c06\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros\"}','2021-05-15 12:42:06','2021-05-15 12:42:06'),
(20,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 12:42:07','2021-05-15 12:42:07'),
(21,1,'admin/heros/23/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 12:58:13','2021-05-15 12:58:13'),
(22,1,'admin/heros/23','PUT','127.0.0.1','{\"name\":\"\\u5f20\\u98de\\u54e5\\u54e5\",\"proficiency\":\"0\",\"launch_time\":\"2015-01-01 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u51b7\\u9759\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\"]},\"occupation\":[\"\\u5766\\u514b\",\"\\u8f85\\u52a9\",null],\"location\":\"\\u5b88\\u62a4\\u8f85\\u52a9\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u56e2\\u961f\\u589e\\u76ca\",null],\"period\":\"\\u5747\\u8861\",\"existence\":\"100\",\"output\":\"40\",\"difficulty\":\"30\",\"shunt\":\"\\u6e38\\u8d70\",\"height\":\"186\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u8700\\u5730\\u6b66\\u5c06\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros\"}','2021-05-15 12:58:51','2021-05-15 12:58:51'),
(23,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 12:58:52','2021-05-15 12:58:52'),
(24,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\",\"_pjax\":\"#pjax-container\"}','2021-05-15 13:00:11','2021-05-15 13:00:11'),
(25,1,'admin/heros','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"__search__\":\"u5766\\\\u514b\"}','2021-05-15 13:01:01','2021-05-15 13:01:01'),
(26,1,'admin/heros','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"__search__\":\"\\\\u5766\\\\u514b\"}','2021-05-15 13:01:13','2021-05-15 13:01:13'),
(27,1,'admin/heros','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"__search__\":\"\\\\u5766\\\\u514b\"}','2021-05-15 13:01:15','2021-05-15 13:01:15'),
(28,1,'admin/heros','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"__search__\":\"\\\\u5766\\\\u514b\"}','2021-05-15 13:01:17','2021-05-15 13:01:17'),
(29,1,'admin/heros','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"__search__\":\"\\\\u5766\\\\u514b\"}','2021-05-15 13:01:17','2021-05-15 13:01:17'),
(30,1,'admin/heros','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"__search__\":\"14b\"}','2021-05-15 13:01:25','2021-05-15 13:01:25'),
(31,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"14b\"}','2021-05-15 13:12:27','2021-05-15 13:12:27'),
(32,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:12:33','2021-05-15 13:12:33'),
(33,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:13:22','2021-05-15 13:13:22'),
(34,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:13:39','2021-05-15 13:13:39'),
(35,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:13:55','2021-05-15 13:13:55'),
(36,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:15:10','2021-05-15 13:15:10'),
(37,1,'admin','GET','127.0.0.1','[]','2021-05-15 13:15:13','2021-05-15 13:15:13'),
(38,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:15:19','2021-05-15 13:15:19'),
(39,1,'admin/equipments','GET','127.0.0.1','[]','2021-05-15 13:15:27','2021-05-15 13:15:27'),
(40,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:15:34','2021-05-15 13:15:34'),
(41,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:20:39','2021-05-15 13:20:39'),
(42,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:28:03','2021-05-15 13:28:03'),
(43,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:28:15','2021-05-15 13:28:15'),
(44,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:29:07','2021-05-15 13:29:07'),
(45,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:30:09','2021-05-15 13:30:09'),
(46,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:30:11','2021-05-15 13:30:11'),
(47,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:30:33','2021-05-15 13:30:33'),
(48,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:30:51','2021-05-15 13:30:51'),
(49,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\",\"_pjax\":\"#pjax-container\"}','2021-05-15 13:31:15','2021-05-15 13:31:15'),
(50,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:32:23','2021-05-15 13:32:23'),
(51,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:33:21','2021-05-15 13:33:21'),
(52,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:34:49','2021-05-15 13:34:49'),
(53,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:35:08','2021-05-15 13:35:08'),
(54,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\"}','2021-05-15 13:35:28','2021-05-15 13:35:28'),
(55,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\"}','2021-05-15 13:35:29','2021-05-15 13:35:29'),
(56,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\"}','2021-05-15 13:35:30','2021-05-15 13:35:30'),
(57,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\"}','2021-05-15 13:35:31','2021-05-15 13:35:31'),
(58,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\"}','2021-05-15 13:39:20','2021-05-15 13:39:20'),
(59,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\"}','2021-05-15 13:39:44','2021-05-15 13:39:44'),
(60,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\"}','2021-05-15 13:39:45','2021-05-15 13:39:45'),
(61,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\"}','2021-05-15 13:40:03','2021-05-15 13:40:03'),
(62,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\"}','2021-05-15 13:40:30','2021-05-15 13:40:30'),
(63,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:40:46','2021-05-15 13:40:46'),
(64,1,'admin/heros/23/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 13:41:11','2021-05-15 13:41:11'),
(65,1,'admin/heros/23','PUT','127.0.0.1','{\"name\":\"\\u5f20\\u98de\",\"proficiency\":\"0\",\"launch_time\":\"2015-01-01 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u51b7\\u9759\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\"]},\"occupation\":[\"\\u5766\\u514b\",\"\\u8f85\\u52a9\",null],\"location\":\"\\u5b88\\u62a4\\u8f85\\u52a9\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u56e2\\u961f\\u589e\\u76ca\",null],\"period\":\"\\u5747\\u8861\",\"existence\":\"100\",\"output\":\"40\",\"difficulty\":\"30\",\"shunt\":\"\\u6e38\\u8d70\",\"height\":\"186\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u8700\\u5730\\u6b66\\u5c06\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros\"}','2021-05-15 13:41:19','2021-05-15 13:41:19'),
(66,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:41:19','2021-05-15 13:41:19'),
(67,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"514b\",\"_pjax\":\"#pjax-container\"}','2021-05-15 13:41:53','2021-05-15 13:41:53'),
(68,1,'admin/heros/23/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 13:42:15','2021-05-15 13:42:15'),
(69,1,'admin/heros/23/edit','GET','127.0.0.1','[]','2021-05-15 13:47:18','2021-05-15 13:47:18'),
(70,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:47:22','2021-05-15 13:47:22'),
(71,1,'admin/heros','GET','127.0.0.1','{\"occupation\":null,\"_pjax\":\"#pjax-container\"}','2021-05-15 13:47:33','2021-05-15 13:47:33'),
(72,1,'admin/heros','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"occupation\":\"514\"}','2021-05-15 13:47:51','2021-05-15 13:47:51'),
(73,1,'admin/heros','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"occupation\":\"2a9\"}','2021-05-15 13:48:06','2021-05-15 13:48:06'),
(74,1,'admin/heros','GET','127.0.0.1','{\"occupation\":\"2a9\"}','2021-05-15 13:49:38','2021-05-15 13:49:38'),
(75,1,'admin/heros','GET','127.0.0.1','{\"occupation\":\"2a9\",\"_pjax\":\"#pjax-container\"}','2021-05-15 13:49:47','2021-05-15 13:49:47'),
(76,1,'admin/heros','GET','127.0.0.1','{\"occupation\":\"2a9\"}','2021-05-15 13:50:50','2021-05-15 13:50:50'),
(77,1,'admin/heros','GET','127.0.0.1','{\"occupation\":\"2a9\"}','2021-05-15 13:53:52','2021-05-15 13:53:52'),
(78,1,'admin/heros','GET','127.0.0.1','{\"occupation\":\"2a9\"}','2021-05-15 13:57:14','2021-05-15 13:57:14'),
(79,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:57:17','2021-05-15 13:57:17'),
(80,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:58:20','2021-05-15 13:58:20'),
(81,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:58:31','2021-05-15 13:58:31'),
(82,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:58:42','2021-05-15 13:58:42'),
(83,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 13:58:55','2021-05-15 13:58:55'),
(84,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 14:01:30','2021-05-15 14:01:30'),
(85,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\",\"_pjax\":\"#pjax-container\"}','2021-05-15 14:01:40','2021-05-15 14:01:40'),
(86,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\"}','2021-05-15 14:03:11','2021-05-15 14:03:11'),
(87,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u5766\\u514b\"}','2021-05-15 14:03:41','2021-05-15 14:03:41'),
(88,1,'admin/heros','GET','127.0.0.1','{\"__search__\":null}','2021-05-15 14:03:45','2021-05-15 14:03:45'),
(89,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"52a9\",\"_pjax\":\"#pjax-container\"}','2021-05-15 14:07:04','2021-05-15 14:07:04'),
(90,1,'admin/heros','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"__search__\":\"\\\\u5766\\\\u514b\"}','2021-05-15 14:13:06','2021-05-15 14:13:06'),
(91,1,'admin/heros','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:13:19','2021-05-15 14:13:19'),
(92,1,'admin/heros/23/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:13:29','2021-05-15 14:13:29'),
(93,1,'admin/heros/23','PUT','127.0.0.1','{\"name\":\"\\u5f20\\u98de\",\"proficiency\":\"0\",\"launch_time\":\"2015-01-01 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u6025\\u901f\\u4e4b\\u9774\"]},\"occupation\":[\"\\u5766\\u514b\",\"\\u8f85\\u52a9\",null],\"location\":\"\\u5b88\\u62a4\\u8f85\\u52a9\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u56e2\\u961f\\u589e\\u76ca\",null],\"period\":\"\\u5747\\u8861\",\"existence\":\"100\",\"output\":\"40\",\"difficulty\":\"30\",\"shunt\":\"\\u6e38\\u8d70\",\"height\":\"186\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u8700\\u5730\\u6b66\\u5c06\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros?&__search__=%5C%5Cu5766%5C%5Cu514b\"}','2021-05-15 14:14:36','2021-05-15 14:14:36'),
(94,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:14:36','2021-05-15 14:14:36'),
(95,1,'admin/heros/16/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:21:54','2021-05-15 14:21:54'),
(96,1,'admin/heros/16','PUT','127.0.0.1','{\"name\":\"\\u725b\\u9b54\",\"proficiency\":\"0\",\"launch_time\":\"2015-01-03 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u5b88\\u62a4\\u8f85\\u52a9\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u56e2\\u961f\\u589e\\u76ca\",null],\"period\":\"\\u524d\\u671f\",\"existence\":\"70\",\"output\":\"40\",\"difficulty\":\"40\",\"shunt\":\"\\u6e38\\u8d70\",\"height\":\"230\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u9b54\\u79cd\\u8d77\\u4e49\\u519b\\u53db\\u5f92\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros?&__search__=%5C%5Cu5766%5C%5Cu514b\"}','2021-05-15 14:23:03','2021-05-15 14:23:03'),
(97,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:23:03','2021-05-15 14:23:03'),
(98,1,'admin/heros/22/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:23:10','2021-05-15 14:23:10'),
(99,1,'admin/heros/22','PUT','127.0.0.1','{\"name\":\"\\u4e9a\\u745f\",\"proficiency\":\"0\",\"launch_time\":\"2015-01-05 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u4e0d\\u7965\\u5f81\\u5146\",\"\\u6012\\u9b42\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u51b2\\u950b\\u6218\\u58eb\",\"specialty\":[\"\\u51b2\\u950b\",\"\\u6218\\u58eb\",null],\"period\":\"\\u5747\\u8861\",\"existence\":\"80\",\"output\":\"50\",\"difficulty\":\"20\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"188\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u5723\\u9a91\\u58eb\\u56e2\\u5c06\\u9886\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros?&__search__=%5C%5Cu5766%5C%5Cu514b\"}','2021-05-15 14:26:15','2021-05-15 14:26:15'),
(100,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:26:16','2021-05-15 14:26:16'),
(101,1,'admin/heros/4/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:26:24','2021-05-15 14:26:24'),
(102,1,'admin/heros/4','PUT','127.0.0.1','{\"name\":\"\\u7a0b\\u54ac\\u91d1\",\"proficiency\":\"0\",\"launch_time\":\"2015-01-13 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u4e0d\\u6b7b\\u9e1f\\u4e4b\\u773c\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u5148\\u950b\\u5766\\u514b\",\"specialty\":[\"\\u5355\\u5e26\",\"\\u56de\\u590d\",null],\"period\":\"\\u5747\\u8861\",\"existence\":\"90\",\"output\":\"50\",\"difficulty\":\"40\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"200\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u540d\\u5c06\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros?&__search__=%5C%5Cu5766%5C%5Cu514b\"}','2021-05-15 14:28:10','2021-05-15 14:28:10'),
(103,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:28:11','2021-05-15 14:28:11'),
(104,1,'admin/heros/21/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:28:19','2021-05-15 14:28:19'),
(105,1,'admin/heros/21','PUT','127.0.0.1','{\"name\":\"\\u9879\\u7fbd\",\"proficiency\":\"0\",\"launch_time\":\"2015-01-18 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u5f71\\u5fcd\\u4e4b\\u8db3\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u5b88\\u62a4\\u5766\\u514b\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u627f\\u4f24\",null],\"period\":\"\\u540e\\u671f\",\"existence\":\"90\",\"output\":\"50\",\"difficulty\":\"30\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"197\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u9738\\u738b\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros?&__search__=%5C%5Cu5766%5C%5Cu514b\"}','2021-05-15 14:30:17','2021-05-15 14:30:17'),
(106,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:30:17','2021-05-15 14:30:17'),
(107,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:30:42','2021-05-15 14:30:42'),
(108,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:31:07','2021-05-15 14:31:07'),
(109,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"_pjax\":\"#pjax-container\"}','2021-05-15 14:31:10','2021-05-15 14:31:10'),
(110,1,'admin/heros/5/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:31:17','2021-05-15 14:31:17'),
(111,1,'admin/heros/5','PUT','127.0.0.1','{\"name\":\"\\u8fbe\\u6469\",\"proficiency\":\"0\",\"launch_time\":\"2015-01-19 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u8840\\u9b54\\u4e4b\\u6012\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u5148\\u950b\\u6218\\u58eb\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u7a81\\u8fdb\",null],\"period\":\"\\u5747\\u8861\",\"existence\":\"70\",\"output\":\"50\",\"difficulty\":\"70\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"177\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u62f3\\u50e7\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros?&__search__=%5C%5Cu5766%5C%5Cu514b\"}','2021-05-15 14:32:06','2021-05-15 14:32:06'),
(112,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:32:06','2021-05-15 14:32:06'),
(113,1,'admin/heros/12/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:32:12','2021-05-15 14:32:12'),
(114,1,'admin/heros/12','PUT','127.0.0.1','{\"name\":\"\\u5415\\u5e03\",\"proficiency\":\"0\",\"launch_time\":\"2015-01-26 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u4e0d\\u7965\\u5f81\\u5146\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u5f71\\u5203\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u91cd\\u88c5\\u6218\\u58eb\",\"specialty\":[\"\\u6536\\u5272\",null],\"period\":\"\\u540e\\u671f\",\"existence\":\"60\",\"output\":\"60\",\"difficulty\":\"40\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"192\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u91cd\\u751f\\u7684\\u6218\\u795e\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros?&__search__=%5C%5Cu5766%5C%5Cu514b\"}','2021-05-15 14:32:59','2021-05-15 14:32:59'),
(115,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:33:00','2021-05-15 14:33:00'),
(116,1,'admin/heros/15/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:33:09','2021-05-15 14:33:09'),
(117,1,'admin/heros/15','PUT','127.0.0.1','{\"name\":\"\\u8288\\u6708\",\"proficiency\":\"0\",\"launch_time\":\"2015-01-27 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u4e0d\\u6b7b\\u9e1f\\u4e4b\\u773c\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u6781\\u5bd2\\u98ce\\u66b4\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u9635\\u5730\\u6cd5\\u5e08\",\"specialty\":[\"\\u6301\\u7eed\\u8f93\\u51fa\",\"\\u56de\\u590d\",null],\"period\":\"\\u524d\\u671f\",\"existence\":\"60\",\"output\":\"70\",\"difficulty\":\"80\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"175\",\"energy\":\"\\u9b54\\u9053\",\"identity\":\"[\\\"\\u7384\\u96cd\\u592a\\u540e\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros?&__search__=%5C%5Cu5766%5C%5Cu514b\"}','2021-05-15 14:36:10','2021-05-15 14:36:10'),
(118,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:36:11','2021-05-15 14:36:11'),
(119,1,'admin/heros/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:36:18','2021-05-15 14:36:18'),
(120,1,'admin/heros/2','PUT','127.0.0.1','{\"name\":\"\\u767d\\u8d77\",\"proficiency\":\"0\",\"launch_time\":\"2015-01-28 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",null]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u5148\\u950b\\u5766\\u514b\",\"specialty\":[\"\\u56e2\\u63a7\",null],\"period\":\"\\u5747\\u8861\",\"existence\":\"80\",\"output\":\"40\",\"difficulty\":\"60\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"193\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"\\u7384\\u96cd\\u6b66\\u5c06\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros?&__search__=%5C%5Cu5766%5C%5Cu514b\"}','2021-05-15 14:36:54','2021-05-15 14:36:54'),
(121,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:36:54','2021-05-15 14:36:54'),
(122,1,'admin/heros/24/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:37:00','2021-05-15 14:37:00'),
(123,1,'admin/heros/24','PUT','127.0.0.1','{\"name\":\"\\u949f\\u65e0\\u8273\",\"proficiency\":\"0\",\"launch_time\":\"2015-01-31 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u91cd\\u88c5\\u6218\\u58eb\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u7a81\\u8fdb\",null],\"period\":\"\\u524d\\u671f\",\"existence\":\"80\",\"output\":\"80\",\"difficulty\":\"40\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"177\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u7a37\\u4e0b\\u5b66\\u751f\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros?&__search__=%5C%5Cu5766%5C%5Cu514b\"}','2021-05-15 14:37:38','2021-05-15 14:37:38'),
(124,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:37:38','2021-05-15 14:37:38'),
(125,1,'admin/heros/11/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:37:45','2021-05-15 14:37:45'),
(126,1,'admin/heros/11','PUT','127.0.0.1','{\"name\":\"\\u5218\\u7985\",\"proficiency\":\"0\",\"launch_time\":\"2015-02-03 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u6218\\u672f\\u8f85\\u52a9\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u63a8\\u8fdb\",null],\"period\":\"\\u524d\\u671f\",\"existence\":\"70\",\"output\":\"50\",\"difficulty\":\"40\",\"shunt\":\"\\u6e38\\u8d70\",\"height\":\"145\\/210\",\"energy\":\"\\u673a\\u5173\",\"identity\":\"[\\\"\\u8700\\u5730\\u7ee7\\u627f\\u4eba\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros?&__search__=%5C%5Cu5766%5C%5Cu514b\"}','2021-05-15 14:39:05','2021-05-15 14:39:05'),
(127,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:39:05','2021-05-15 14:39:05'),
(128,1,'admin/heros/9/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:39:14','2021-05-15 14:39:14'),
(129,1,'admin/heros/9','PUT','127.0.0.1','{\"name\":\"\\u5ec9\\u9887\",\"proficiency\":\"0\",\"launch_time\":\"2015-02-12 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u5148\\u950b\\u5766\\u514b\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u5148\\u624b\",null],\"period\":\"\\u5747\\u8861\",\"existence\":\"100\",\"output\":\"40\",\"difficulty\":\"50\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"190\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u7518\\u4e39\\u65cf\\u957f\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros?&__search__=%5C%5Cu5766%5C%5Cu514b\"}','2021-05-15 14:40:13','2021-05-15 14:40:13'),
(130,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 14:40:14','2021-05-15 14:40:14'),
(131,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}','2021-05-15 14:40:54','2021-05-15 14:40:54'),
(132,1,'admin/heros/16/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:41:21','2021-05-15 14:41:21'),
(133,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}','2021-05-15 14:41:24','2021-05-15 14:41:24'),
(134,1,'admin/heros/10/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:42:17','2021-05-15 14:42:17'),
(135,1,'admin/heros/10','PUT','127.0.0.1','{\"name\":\"\\u5218\\u90a6\",\"proficiency\":\"0\",\"launch_time\":\"2015-02-19 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u5b88\\u62a4\\u5766\\u514b\",\"specialty\":[\"\\u652f\\u63f4\",null],\"period\":\"\\u5747\\u8861\",\"existence\":\"80\",\"output\":\"50\",\"difficulty\":\"70\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"179\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u705e\\u57ce\\u7edf\\u6cbb\\u8005\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"dWl3VGFbBga5f11VTelPBoxtDQ2FuRAT6cpEAi0H\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/heros?__search__=%5C%5Cu5766%5C%5Cu514b&per_page=100\"}','2021-05-15 14:43:14','2021-05-15 14:43:14'),
(136,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\"}','2021-05-15 14:43:15','2021-05-15 14:43:15'),
(137,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\"}','2021-05-15 14:43:31','2021-05-15 14:43:31'),
(138,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\"}','2021-05-15 14:46:42','2021-05-15 14:46:42'),
(139,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\"}','2021-05-15 14:47:08','2021-05-15 14:47:08'),
(140,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\"}','2021-05-15 14:47:23','2021-05-15 14:47:23'),
(141,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\"}','2021-05-15 14:47:59','2021-05-15 14:47:59'),
(142,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\"}','2021-05-15 14:48:11','2021-05-15 14:48:11'),
(143,1,'admin/heros/20/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:48:23','2021-05-15 14:48:23'),
(144,1,'admin/heros/20','PUT','127.0.0.1','{\"name\":\"\\u590f\\u4faf\\u60c7\",\"proficiency\":\"0\",\"launch_time\":\"2015-02-24 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6697\\u5f71\\u6218\\u65a7\",\"\\u53cd\\u4f24\\u523a\\u7532\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u5b88\\u62a4\\u5766\\u514b\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u7a81\\u8fdb\",null],\"period\":\"\\u524d\\u671f\",\"existence\":\"70\",\"output\":\"50\",\"difficulty\":\"40\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"186\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u9b4f\\u5730\\u6b66\\u5c06\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"2JkWSNx6boEtHXgtp0skl5f8bs3Ufz2A60AiOATq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/heros?__search__=%5C%5Cu5766%5C%5Cu514b&per_page=100\"}','2021-05-15 14:49:15','2021-05-15 14:49:15'),
(145,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\"}','2021-05-15 14:49:16','2021-05-15 14:49:16'),
(146,1,'admin/heros/19/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:49:21','2021-05-15 14:49:21'),
(147,1,'admin/heros/19','PUT','127.0.0.1','{\"name\":\"\\u592a\\u4e59\\u771f\\u4eba\",\"proficiency\":\"0\",\"launch_time\":\"2015-03-02 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u5b88\\u62a4\\u8f85\\u52a9\",\"specialty\":[\"\\u56e2\\u961f\\u589e\\u76ca\",\"\\u590d\\u6d3b\",null],\"period\":\"\\u524d\\u671f\",\"existence\":\"50\",\"output\":\"50\",\"difficulty\":\"60\",\"shunt\":\"\\u6e38\\u8d70\",\"height\":\"120\\/230\",\"energy\":\"\\u9b54\\u9053\",\"identity\":\"[\\\"\\u70bc\\u91d1\\u5e08\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"2JkWSNx6boEtHXgtp0skl5f8bs3Ufz2A60AiOATq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/heros?__search__=%5C%5Cu5766%5C%5Cu514b&per_page=100\"}','2021-05-15 14:50:12','2021-05-15 14:50:12'),
(148,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\"}','2021-05-15 14:50:12','2021-05-15 14:50:12'),
(149,1,'admin/heros/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:50:18','2021-05-15 14:50:18'),
(150,1,'admin/heros/6','PUT','127.0.0.1','{\"name\":\"\\u4e1c\\u7687\\u592a\\u4e00\",\"proficiency\":\"0\",\"launch_time\":\"2015-03-07 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u4e0d\\u6b7b\\u9e1f\\u4e4b\\u773c\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u8840\\u9b54\\u4e4b\\u6012\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u8fdb\\u653b\\u8f85\\u52a9\",\"specialty\":[\"\\u56de\\u590d\",\"\\u6301\\u7eed\\u63a7\\u5236\",null],\"period\":\"\\u524d\\u671f\",\"existence\":\"80\",\"output\":\"50\",\"difficulty\":\"50\",\"shunt\":\"\\u6e38\\u8d70\",\"height\":\"215\",\"energy\":\"\\u9b54\\u9053\",\"identity\":\"[\\\"\\u4e1c\\u795e\\u4e4b\\u57ce\\u7edf\\u6cbb\\u8005\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"2JkWSNx6boEtHXgtp0skl5f8bs3Ufz2A60AiOATq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/heros?__search__=%5C%5Cu5766%5C%5Cu514b&per_page=100\"}','2021-05-15 14:51:21','2021-05-15 14:51:21'),
(151,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\"}','2021-05-15 14:51:22','2021-05-15 14:51:22'),
(152,1,'admin/heros/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:51:26','2021-05-15 14:51:26'),
(153,1,'admin/heros/8','PUT','127.0.0.1','{\"name\":\"\\u94e0\",\"proficiency\":\"0\",\"launch_time\":\"2015-03-12 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u66b4\\u70c8\\u4e4b\\u7532\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u523a\\u6740\\u6218\\u58eb\",\"specialty\":[null],\"period\":\"\\u540e\\u671f\",\"existence\":\"70\",\"output\":\"70\",\"difficulty\":\"30\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"188\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u957f\\u57ce\\u5b88\\u536b\\u519b\\u6210\\u5458\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"2JkWSNx6boEtHXgtp0skl5f8bs3Ufz2A60AiOATq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/heros?__search__=%5C%5Cu5766%5C%5Cu514b&per_page=100\"}','2021-05-15 14:52:23','2021-05-15 14:52:23'),
(154,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\"}','2021-05-15 14:52:24','2021-05-15 14:52:24'),
(155,1,'admin/heros/17/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:52:28','2021-05-15 14:52:28'),
(156,1,'admin/heros/17','PUT','127.0.0.1','{\"name\":\"\\u82cf\\u70c8\",\"proficiency\":\"0\",\"launch_time\":\"2015-03-15 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u5148\\u950b\\u5766\\u514b\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u5148\\u624b\",null],\"period\":\"\\u524d\\u671f\",\"existence\":\"70\",\"output\":\"60\",\"difficulty\":\"80\",\"shunt\":\"\\u6e38\\u8d70\",\"height\":\"208\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u957f\\u57ce\\u5b88\\u536b\\u519b\\u6210\\u5458\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"2JkWSNx6boEtHXgtp0skl5f8bs3Ufz2A60AiOATq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/heros?__search__=%5C%5Cu5766%5C%5Cu514b&per_page=100\"}','2021-05-15 14:53:01','2021-05-15 14:53:01'),
(157,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\"}','2021-05-15 14:53:01','2021-05-15 14:53:01'),
(158,1,'admin/heros/14/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:53:06','2021-05-15 14:53:06'),
(159,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}','2021-05-15 14:53:21','2021-05-15 14:53:21'),
(160,1,'admin/heros/18/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:53:29','2021-05-15 14:53:29'),
(161,1,'admin/heros/18','PUT','127.0.0.1','{\"name\":\"\\u5b59\\u7b56\",\"proficiency\":\"0\",\"launch_time\":\"2015-03-26 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u51b2\\u950b\\u6218\\u58eb\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u5148\\u624b\",null],\"period\":\"\\u5747\\u8861\",\"existence\":\"70\",\"output\":\"70\",\"difficulty\":\"60\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"185\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u6c5f\\u4e1c\\u5c0f\\u9738\\u738b\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"2JkWSNx6boEtHXgtp0skl5f8bs3Ufz2A60AiOATq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/heros?__search__=%5C%5Cu5766%5C%5Cu514b&per_page=100\"}','2021-05-15 14:53:58','2021-05-15 14:53:58'),
(162,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\"}','2021-05-15 14:53:59','2021-05-15 14:53:59'),
(163,1,'admin/heros/7/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:54:13','2021-05-15 14:54:13'),
(164,1,'admin/heros/7','PUT','127.0.0.1','{\"name\":\"\\u76fe\\u5c71\",\"proficiency\":\"0\",\"launch_time\":\"2015-03-28 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u4e0d\\u7965\\u5f81\\u5146\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u8840\\u9b54\\u4e4b\\u6012\",\"\\u75be\\u6b65\\u4e4b\\u9774\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u8fdb\\u653b\\u8f85\\u52a9\",\"specialty\":[\"\\u6301\\u7eed\\u63a7\\u5236\",\"\\u683c\\u6321\",null],\"period\":\"\\u5747\\u8861\",\"existence\":\"100\",\"output\":\"40\",\"difficulty\":\"80\",\"shunt\":\"\\u6e38\\u8d70\",\"height\":\"283\",\"energy\":\"\\u673a\\u5173\",\"identity\":\"[\\\"\\u4fee\\u7b51\\u957f\\u57ce\\u7684\\u673a\\u68b0\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"2JkWSNx6boEtHXgtp0skl5f8bs3Ufz2A60AiOATq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/heros?__search__=%5C%5Cu5766%5C%5Cu514b&per_page=100\"}','2021-05-15 14:55:14','2021-05-15 14:55:14'),
(165,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"per_page\":\"100\"}','2021-05-15 14:55:15','2021-05-15 14:55:15'),
(166,1,'admin/heros/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 14:55:22','2021-05-15 14:55:22'),
(167,1,'admin/heros/3','PUT','127.0.0.1','{\"name\":\"\\u5ae6\\u5a25\",\"proficiency\":\"0\",\"launch_time\":\"2015-03-31 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u70bd\\u70ed\\u652f\\u914d\\u8005\",\"\\u5f71\\u5fcd\\u4e4b\\u8db3\",\"\\u8fdb\\u5316\\u6c34\\u6676\",\"\\u84dd\\u5b9d\\u77f3\",\"\\u84dd\\u5b9d\\u77f3\",\"\\u84dd\\u5b9d\\u77f3\",\"\\u65f6\\u4e4b\\u9884\\u8a00\",\"\\u5deb\\u5e08\\u6cd5\\u6756\",\"\\u6781\\u5bd2\\u98ce\\u66b4\"]},\"occupation\":[\"\\u5766\\u514b\",\"\\u6cd5\\u5e08\",null],\"location\":\"\\u9635\\u5730\\u6cd5\\u5e08\",\"specialty\":[\"\\u6301\\u7eed\\u8f93\\u51fa\",\"\\u6cd5\\u529b\\u62a4\\u76fe\",null],\"period\":\"\\u524d\\u671f\",\"existence\":\"80\",\"output\":\"70\",\"difficulty\":\"80\",\"shunt\":\"\\u4e2d\\u8def\",\"height\":\"171\",\"energy\":\"\\u9b54\\u9053\",\"identity\":\"[\\\"\\u9b54\\u9053\\u5bb6\\u65cf\\u516c\\u4e3b\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"2JkWSNx6boEtHXgtp0skl5f8bs3Ufz2A60AiOATq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/heros?__search__=%5C%5Cu5766%5C%5Cu514b&per_page=100\"}','2021-05-15 14:56:56','2021-05-15 14:56:56'),
(168,1,'admin/heros/3/edit','GET','127.0.0.1','[]','2021-05-15 14:56:57','2021-05-15 14:56:57'),
(169,1,'admin/heros/3','PUT','127.0.0.1','{\"name\":\"\\u5ae6\\u5a25\",\"proficiency\":\"0\",\"launch_time\":\"2015-03-31 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u70bd\\u70ed\\u652f\\u914d\\u8005\",\"\\u5f71\\u5fcd\\u4e4b\\u8db3\",\"\\u8fdb\\u5316\\u6c34\\u6676\",\"\\u84dd\\u5b9d\\u77f3\",\"\\u84dd\\u5b9d\\u77f3\",\"\\u84dd\\u5b9d\\u77f3\",\"\\u65f6\\u4e4b\\u9884\\u8a00\",\"\\u5deb\\u5e08\\u6cd5\\u6756\",\"\\u6781\\u5bd2\\u98ce\\u66b4\"]},\"occupation\":[\"\\u5766\\u514b\",\"\\u6cd5\\u5e08\",null],\"location\":\"\\u9635\\u5730\\u6cd5\\u5e08\",\"specialty\":[\"\\u6301\\u7eed\\u8f93\\u51fa\",\"\\u6cd5\\u529b\\u62a4\\u76fe\",null],\"period\":\"\\u524d\\u671f\",\"existence\":\"80\",\"output\":\"70\",\"difficulty\":\"80\",\"shunt\":\"\\u4e2d\\u8def\",\"height\":\"171\",\"energy\":\"\\u9b54\\u9053\",\"identity\":\"[\\\"\\u9b54\\u9053\\u5bb6\\u65cf\\u516c\\u4e3b\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"2JkWSNx6boEtHXgtp0skl5f8bs3Ufz2A60AiOATq\",\"_method\":\"PUT\"}','2021-05-15 15:00:29','2021-05-15 15:00:29'),
(170,1,'admin/heros','GET','127.0.0.1','[]','2021-05-15 15:00:30','2021-05-15 15:00:30'),
(171,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"_pjax\":\"#pjax-container\"}','2021-05-15 15:09:37','2021-05-15 15:09:37'),
(172,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"_pjax\":\"#pjax-container\",\"page\":\"2\"}','2021-05-15 15:10:32','2021-05-15 15:10:32'),
(173,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"_pjax\":\"#pjax-container\",\"page\":\"2\",\"per_page\":\"100\"}','2021-05-15 15:10:35','2021-05-15 15:10:35'),
(174,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"_pjax\":\"#pjax-container\",\"page\":\"1\",\"per_page\":\"100\"}','2021-05-15 15:10:35','2021-05-15 15:10:35'),
(175,1,'admin/heros/13/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 15:10:58','2021-05-15 15:10:58'),
(176,1,'admin/heros/13','PUT','127.0.0.1','{\"name\":\"\\u8499\\u606c\",\"proficiency\":\"0\",\"launch_time\":\"2015-04-11 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u66b4\\u70c8\\u4e4b\\u7532\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]},\"occupation\":[\"\\u5766\\u514b\",null],\"location\":\"\\u91cd\\u88c5\\u6218\\u58eb\",\"specialty\":[\"\\u7a81\\u8fdb\",null],\"period\":\"\\u524d\\u671f\",\"existence\":\"70\",\"output\":\"70\",\"difficulty\":\"70\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"190\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u7384\\u96cd\\u62a4\\u56fd\\u5927\\u5c06\\u519b\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"2JkWSNx6boEtHXgtp0skl5f8bs3Ufz2A60AiOATq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/heros?__search__=%5C%5Cu5766%5C%5Cu514b&page=1&per_page=100\"}','2021-05-15 15:12:00','2021-05-15 15:12:00'),
(177,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"page\":\"1\",\"per_page\":\"100\"}','2021-05-15 15:12:01','2021-05-15 15:12:01'),
(178,1,'admin/heros/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 15:12:05','2021-05-15 15:12:05'),
(179,1,'admin/heros/1','PUT','127.0.0.1','{\"name\":\"\\u963f\\u53e4\\u6735\",\"proficiency\":\"0\",\"launch_time\":\"2015-04-12 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6781\\u5f71\",\"\\u6012\\u9b42\"]},\"occupation\":[\"\\u5766\\u514b\",\"\\u6218\\u58eb\",\"\\u523a\\u5ba2\",\"\\u6cd5\\u5e08\",\"\\u5c04\\u624b\",null],\"location\":\"\\u5148\\u950b\\u5766\\u514b\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u56e2\\u961f\\u589e\\u76ca\",null],\"period\":\"\\u524d\\u671f\",\"existence\":\"90\",\"output\":\"50\",\"difficulty\":\"40\",\"shunt\":\"\\u6253\\u91ce\",\"height\":\"145\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"\\u72fc\\u5b69\",\"relevant\":{\"keys\":[\"\\u8bf8\\u845b\\u4eae\",\"\\u5218\\u7985\"],\"values\":[\"\\u5934\\u513f\",\"\\u4e8c\\u5f53\\u5934\"]},\"maximum_health\":\"0\",\"maximum_mana\":\"0\",\"magic_attack\":\"0\",\"physical_attack\":\"0\",\"spell_defense\":\"0\",\"physical_defense\":\"0\",\"moving_speed\":\"0\",\"physical_penetration\":\"0\",\"spell_penetration\":\"00\",\"attack_speed\":\"0\",\"critical_hit_probability\":\"0\",\"critical_hit_effect\":\"0\",\"physical_blood_sucking\":\"0\",\"sorcery_sucks_blood\":\"0\",\"cooling_reduction\":\"0\",\"attack_range\":\"0\",\"toughness\":\"0\",\"return_blood\":\"0\",\"_token\":\"2JkWSNx6boEtHXgtp0skl5f8bs3Ufz2A60AiOATq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/heros?__search__=%5C%5Cu5766%5C%5Cu514b&page=1&per_page=100\"}','2021-05-15 15:13:08','2021-05-15 15:13:08'),
(180,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"page\":\"1\",\"per_page\":\"100\"}','2021-05-15 15:13:08','2021-05-15 15:13:08'),
(181,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\",\"_pjax\":\"#pjax-container\"}','2021-05-15 15:17:12','2021-05-15 15:17:12'),
(182,1,'admin/heros/105/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 15:17:17','2021-05-15 15:17:17'),
(183,1,'admin/heros/105','PUT','127.0.0.1','{\"name\":\"\\u732a\\u516b\\u6212\",\"proficiency\":\"0\",\"launch_time\":\"2015-04-01 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6697\\u5f71\\u6218\\u65a7\",\"\\u53cd\\u4f24\\u523a\\u7532\"]},\"occupation\":[null],\"location\":\"\\u5148\\u950b\\u5766\\u514b\",\"specialty\":[\"\\u56e2\\u63a7\",\"\\u56de\\u590d\",null],\"period\":\"\\u5747\\u8861\",\"existence\":\"70\",\"output\":\"50\",\"difficulty\":\"80\",\"shunt\":\"\\u5bf9\\u6297\\u8def\",\"height\":\"183\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u9b54\\u79cd\\u8d77\\u4e49\\u519b\\u5c06\\u9886\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"2JkWSNx6boEtHXgtp0skl5f8bs3Ufz2A60AiOATq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/heros?page=1&per_page=100&__search__=%5C%5Cu5766%5C%5Cu514b\"}','2021-05-15 15:17:56','2021-05-15 15:17:56'),
(184,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 15:17:56','2021-05-15 15:17:56'),
(185,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"__search__\":\"\\\\\\\\u5766\\\\\\\\u514b\"}','2021-05-15 16:25:54','2021-05-15 16:25:54'),
(186,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"__search__\":\"\\u5178\\u97e6\",\"_pjax\":\"#pjax-container\"}','2021-05-15 16:26:05','2021-05-15 16:26:05'),
(187,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\",\"__search__\":\"\\u5e84\\u5468\"}','2021-05-15 16:26:24','2021-05-15 16:26:24'),
(188,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\",\"__search__\":\"\\u5415\\u5e03\"}','2021-05-15 16:26:45','2021-05-15 16:26:45'),
(189,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\",\"__search__\":\"\\u5178\\u97e6\"}','2021-05-15 16:46:53','2021-05-15 16:46:53'),
(190,1,'admin/heros/26/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-15 16:47:38','2021-05-15 16:47:38'),
(191,1,'admin/heros/26','PUT','127.0.0.1','{\"name\":\"\\u5178\\u97e6\",\"proficiency\":\"100\",\"launch_time\":\"2015-01-22 00:00:00\",\"combat_power\":\"0\",\"area_code\":\"0\",\"out_loading\":{\"values\":[null,null,null,null,null,null]},\"occupation\":[\"\\u6218\\u58eb\",null],\"location\":\"\\u72c2\\u6218\\u58eb\",\"specialty\":[\"\\u6536\\u5272\",null],\"period\":\"\\u540e\\u671f\",\"existence\":\"60\",\"output\":\"60\",\"difficulty\":\"30\",\"shunt\":\"\\u6253\\u91ce\",\"height\":\"183\",\"energy\":\"\\u6b66\\u9053\",\"identity\":\"[\\\"\\u9b4f\\u5730\\u6b66\\u5c06\\\"]\",\"maximum_health\":null,\"maximum_mana\":null,\"magic_attack\":null,\"physical_attack\":null,\"spell_defense\":null,\"physical_defense\":null,\"moving_speed\":null,\"physical_penetration\":null,\"spell_penetration\":null,\"attack_speed\":null,\"critical_hit_probability\":null,\"critical_hit_effect\":null,\"physical_blood_sucking\":null,\"sorcery_sucks_blood\":null,\"cooling_reduction\":null,\"attack_range\":null,\"toughness\":null,\"return_blood\":null,\"_token\":\"2JkWSNx6boEtHXgtp0skl5f8bs3Ufz2A60AiOATq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/heros?page=1&per_page=100&__search__=%E5%85%B8%E9%9F%A6\"}','2021-05-15 16:48:14','2021-05-15 16:48:14'),
(192,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"__search__\":\"\\u5178\\u97e6\"}','2021-05-15 16:48:14','2021-05-15 16:48:14'),
(193,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"__search__\":\"\\u59b2\\u5df1\",\"_pjax\":\"#pjax-container\"}','2021-05-15 17:01:15','2021-05-15 17:01:15'),
(194,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\",\"__search__\":\"\\u5178\\u97e6\"}','2021-05-15 17:01:31','2021-05-15 17:01:31'),
(195,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\",\"__search__\":\"\\u540e\\u7fbf\"}','2021-05-15 17:01:40','2021-05-15 17:01:40'),
(196,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\",\"__search__\":\"\\u5218\\u7985\"}','2021-05-15 17:29:42','2021-05-15 17:29:42'),
(197,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\",\"__search__\":\"\\u5415\\u5e03\"}','2021-05-15 18:19:28','2021-05-15 18:19:28'),
(198,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\",\"__search__\":\"\\u5ec9\\u9887\"}','2021-05-15 18:52:45','2021-05-15 18:52:45'),
(199,1,'admin/heros','GET','127.0.0.1','{\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\",\"__search__\":\"\\u72c4\\u4ec1\\u6770\"}','2021-05-15 19:13:47','2021-05-15 19:13:47'),
(200,1,'admin','GET','127.0.0.1','[]','2021-05-16 18:11:22','2021-05-16 18:11:22'),
(201,1,'admin/heros','GET','127.0.0.1','[]','2021-05-16 18:11:27','2021-05-16 18:11:27'),
(202,1,'admin/heros','GET','127.0.0.1','[]','2021-05-16 18:19:08','2021-05-16 18:19:08'),
(203,1,'admin/heros','GET','127.0.0.1','[]','2021-05-16 18:23:23','2021-05-16 18:23:23'),
(204,1,'admin/heros','GET','127.0.0.1','[]','2021-05-16 18:25:42','2021-05-16 18:25:42'),
(205,1,'admin/heros','GET','127.0.0.1','[]','2021-05-18 22:18:34','2021-05-18 22:18:34'),
(206,1,'admin/heros','GET','127.0.0.1','{\"__search__\":\"\\u8001\\u592b\\u5b50\",\"_pjax\":\"#pjax-container\"}','2021-05-18 22:19:00','2021-05-18 22:19:00'),
(207,1,'admin/heros','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"__search__\":\"\\u7a0b\\u54ac\\u91d1\"}','2021-05-18 22:20:04','2021-05-18 22:20:04'),
(208,1,'admin/heros','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"__search__\":\"\\u5178\\u97e6\"}','2021-05-18 23:10:05','2021-05-18 23:10:05'),
(209,1,'admin/heros','GET','127.0.0.1','[]','2021-05-22 22:55:08','2021-05-22 22:55:08'),
(210,1,'admin/heros','GET','127.0.0.1','[]','2021-05-22 22:55:08','2021-05-22 22:55:08'),
(211,1,'admin/heros','GET','127.0.0.1','[]','2021-05-22 23:21:46','2021-05-22 23:21:46'),
(212,1,'admin/heros','GET','127.0.0.1','[]','2021-05-22 23:22:57','2021-05-22 23:22:57'),
(213,1,'admin/heros','GET','127.0.0.1','[]','2021-05-22 23:23:36','2021-05-22 23:23:36'),
(214,1,'admin/heros','GET','127.0.0.1','[]','2021-05-22 23:38:38','2021-05-22 23:38:38'),
(215,1,'admin/heros','GET','127.0.0.1','[]','2021-05-22 23:39:20','2021-05-22 23:39:20'),
(216,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:03:48','2021-05-29 11:03:48'),
(217,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:03:48','2021-05-29 11:03:48'),
(218,1,'admin/heros','GET','127.0.0.1','{\"occupation\":\"\\u5766\\u514b\",\"_pjax\":\"#pjax-container\"}','2021-05-29 11:05:09','2021-05-29 11:05:09'),
(219,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 11:26:10','2021-05-29 11:26:10'),
(220,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:26:27','2021-05-29 11:26:27'),
(221,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 11:29:13','2021-05-29 11:29:13'),
(222,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:29:30','2021-05-29 11:29:30'),
(223,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:29:46','2021-05-29 11:29:46'),
(224,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:31:10','2021-05-29 11:31:10'),
(225,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 11:32:02','2021-05-29 11:32:02'),
(226,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 11:32:23','2021-05-29 11:32:23'),
(227,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 11:32:32','2021-05-29 11:32:32'),
(228,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:33:26','2021-05-29 11:33:26'),
(229,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:33:42','2021-05-29 11:33:42'),
(230,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:34:09','2021-05-29 11:34:09'),
(231,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:34:11','2021-05-29 11:34:11'),
(232,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:34:27','2021-05-29 11:34:27'),
(233,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 11:34:31','2021-05-29 11:34:31'),
(234,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 11:35:30','2021-05-29 11:35:30'),
(235,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 11:36:00','2021-05-29 11:36:00'),
(236,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 11:36:07','2021-05-29 11:36:07'),
(237,1,'admin/thresholds/create','GET','127.0.0.1','[]','2021-05-29 11:38:57','2021-05-29 11:38:57'),
(238,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"116\",\"152\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 11:40:39','2021-05-29 11:40:39'),
(239,1,'admin/thresholds/create','GET','127.0.0.1','[]','2021-05-29 11:40:42','2021-05-29 11:40:42'),
(240,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"116\",\"152\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\"}','2021-05-29 11:41:18','2021-05-29 11:41:18'),
(241,1,'admin/thresholds/create','GET','127.0.0.1','[]','2021-05-29 11:41:18','2021-05-29 11:41:18'),
(242,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"116\",\"152\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\"}','2021-05-29 11:41:34','2021-05-29 11:41:34'),
(243,1,'admin/thresholds/create','GET','127.0.0.1','[]','2021-05-29 11:41:34','2021-05-29 11:41:34'),
(244,1,'admin/thresholds/create','GET','127.0.0.1','[]','2021-05-29 11:41:36','2021-05-29 11:41:36'),
(245,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[null]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\"}','2021-05-29 11:41:39','2021-05-29 11:41:39'),
(246,1,'admin/thresholds/create','GET','127.0.0.1','[]','2021-05-29 11:41:39','2021-05-29 11:41:39'),
(247,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\"}','2021-05-29 11:41:45','2021-05-29 11:41:45'),
(248,1,'admin/thresholds/create','GET','127.0.0.1','[]','2021-05-29 11:41:45','2021-05-29 11:41:45'),
(249,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\"}','2021-05-29 11:42:22','2021-05-29 11:42:22'),
(250,1,'admin/thresholds/create','GET','127.0.0.1','[]','2021-05-29 11:42:22','2021-05-29 11:42:22'),
(251,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\"}','2021-05-29 11:42:27','2021-05-29 11:42:27'),
(252,1,'admin/thresholds/create','GET','127.0.0.1','[]','2021-05-29 11:42:27','2021-05-29 11:42:27'),
(253,1,'admin/thresholds/create','GET','127.0.0.1','[]','2021-05-29 11:42:55','2021-05-29 11:42:55'),
(254,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\"}','2021-05-29 11:42:58','2021-05-29 11:42:58'),
(255,1,'admin/thresholds/create','GET','127.0.0.1','[]','2021-05-29 11:42:58','2021-05-29 11:42:58'),
(256,1,'admin/thresholds/create','GET','127.0.0.1','[]','2021-05-29 11:43:29','2021-05-29 11:43:29'),
(257,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 11:43:34','2021-05-29 11:43:34'),
(258,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 11:43:37','2021-05-29 11:43:37'),
(259,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 11:43:44','2021-05-29 11:43:44'),
(260,1,'admin/thresholds/create','GET','127.0.0.1','[]','2021-05-29 11:43:44','2021-05-29 11:43:44'),
(261,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\"}','2021-05-29 11:44:21','2021-05-29 11:44:21'),
(262,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 11:44:21','2021-05-29 11:44:21'),
(263,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 11:45:19','2021-05-29 11:45:19'),
(264,1,'admin/thresholds/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 11:45:30','2021-05-29 11:45:30'),
(265,1,'admin/thresholds/1','PUT','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"116\",\"152\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 11:46:18','2021-05-29 11:46:18'),
(266,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 11:46:18','2021-05-29 11:46:18'),
(267,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 11:46:26','2021-05-29 11:46:26'),
(268,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:47:56','2021-05-29 11:47:56'),
(269,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:50:05','2021-05-29 11:50:05'),
(270,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:52:41','2021-05-29 11:52:41'),
(271,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:52:54','2021-05-29 11:52:54'),
(272,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:53:00','2021-05-29 11:53:00'),
(273,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:53:28','2021-05-29 11:53:28'),
(274,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:53:30','2021-05-29 11:53:30'),
(275,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:53:33','2021-05-29 11:53:33'),
(276,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:54:17','2021-05-29 11:54:17'),
(277,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:56:09','2021-05-29 11:56:09'),
(278,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 11:59:53','2021-05-29 11:59:53'),
(279,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 12:00:51','2021-05-29 12:00:51'),
(280,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 12:01:16','2021-05-29 12:01:16'),
(281,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 12:02:26','2021-05-29 12:02:26'),
(282,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 12:02:56','2021-05-29 12:02:56'),
(283,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 12:03:55','2021-05-29 12:03:55'),
(284,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 12:04:13','2021-05-29 12:04:13'),
(285,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 12:19:54','2021-05-29 12:19:54'),
(286,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 12:49:19','2021-05-29 12:49:19'),
(287,1,'admin/heros/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 12:49:22','2021-05-29 12:49:22'),
(288,1,'admin/thresholds/create','GET','127.0.0.1','[]','2021-05-29 12:50:37','2021-05-29 12:50:37'),
(289,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 12:52:31','2021-05-29 12:52:31'),
(290,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 12:54:23','2021-05-29 12:54:23'),
(291,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 12:55:01','2021-05-29 12:55:01'),
(292,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 12:55:22','2021-05-29 12:55:22'),
(293,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 12:56:55','2021-05-29 12:56:55'),
(294,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 12:57:23','2021-05-29 12:57:23'),
(295,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 12:58:15','2021-05-29 12:58:15'),
(296,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 12:58:32','2021-05-29 12:58:32'),
(297,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 13:00:46','2021-05-29 13:00:46'),
(298,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 13:00:54','2021-05-29 13:00:54'),
(299,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 13:01:42','2021-05-29 13:01:42'),
(300,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 13:02:21','2021-05-29 13:02:21'),
(301,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 13:03:19','2021-05-29 13:03:19'),
(302,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 13:03:50','2021-05-29 13:03:50'),
(303,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 13:04:25','2021-05-29 13:04:25'),
(304,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 13:04:47','2021-05-29 13:04:47'),
(305,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 13:05:48','2021-05-29 13:05:48'),
(306,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 13:14:48','2021-05-29 13:14:48'),
(307,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 13:21:37','2021-05-29 13:21:37'),
(308,1,'admin/heros/create','GET','127.0.0.1','[]','2021-05-29 13:22:03','2021-05-29 13:22:03'),
(309,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 13:22:20','2021-05-29 13:22:20'),
(310,1,'admin/equipments','GET','127.0.0.1','[]','2021-05-29 13:22:27','2021-05-29 13:22:27'),
(311,1,'admin/equipments','GET','127.0.0.1','[]','2021-05-29 13:22:36','2021-05-29 13:22:36'),
(312,1,'admin/equipments','GET','127.0.0.1','[]','2021-05-29 13:24:17','2021-05-29 13:24:17'),
(313,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 14:16:02','2021-05-29 14:16:02'),
(314,1,'admin/equipments','GET','127.0.0.1','[]','2021-05-29 14:19:52','2021-05-29 14:19:52'),
(315,1,'admin/equipments/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:20:11','2021-05-29 14:20:11'),
(316,1,'admin/equipments','GET','127.0.0.1','[]','2021-05-29 14:24:51','2021-05-29 14:24:51'),
(317,1,'admin/equipments/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:24:54','2021-05-29 14:24:54'),
(318,1,'admin/equipments','GET','127.0.0.1','[]','2021-05-29 14:25:32','2021-05-29 14:25:32'),
(319,1,'admin/equipments','GET','127.0.0.1','[]','2021-05-29 14:26:08','2021-05-29 14:26:08'),
(320,1,'admin/equipments','GET','127.0.0.1','[]','2021-05-29 14:30:55','2021-05-29 14:30:55'),
(321,1,'admin/equipments','GET','127.0.0.1','[]','2021-05-29 14:31:34','2021-05-29 14:31:34'),
(322,1,'admin/equipments','GET','127.0.0.1','[]','2021-05-29 14:36:33','2021-05-29 14:36:33'),
(323,1,'admin/equipments','GET','127.0.0.1','{\"type\":\"\\u653b\\u51fb\",\"_pjax\":\"#pjax-container\"}','2021-05-29 14:36:42','2021-05-29 14:36:42'),
(324,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:37:46','2021-05-29 14:37:46'),
(325,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:38:46','2021-05-29 14:38:46'),
(326,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1.6\",\"9.2\",\"16.8\",\"27.4\",\"38\",\"53.2\",\"69.8\",\"91\",\"116.8\",\"153.2\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:39:35','2021-05-29 14:39:35'),
(327,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:39:35','2021-05-29 14:39:35'),
(328,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:40:01','2021-05-29 14:40:01'),
(329,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"116\",\"152\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:41:01','2021-05-29 14:41:01'),
(330,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:41:01','2021-05-29 14:41:01'),
(331,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:41:05','2021-05-29 14:41:05'),
(332,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"86.4\",\"109.2\",\"139.4\",\"178.8\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:42:03','2021-05-29 14:42:03'),
(333,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:42:03','2021-05-29 14:42:03'),
(334,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:42:14','2021-05-29 14:42:14'),
(335,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"10.2\",\"21.2\",\"34.6\",\"51.4\",\"72.8\",\"101.6\",\"141.8\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:43:05','2021-05-29 14:43:05'),
(336,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:43:06','2021-05-29 14:43:06'),
(337,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:43:18','2021-05-29 14:43:18'),
(338,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"3.4\",\"8.2\",\"13.6\",\"19.6\",\"26.2\",\"33.6\",\"42\",\"51.4\",\"62.274.8\",\"89.2\",\"106.4\",\"127\",\"152.2\",\"183.6\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:44:22','2021-05-29 14:44:22'),
(339,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:44:23','2021-05-29 14:44:23'),
(340,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:44:36','2021-05-29 14:44:36'),
(341,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"1.6\",\"8.2\",\"9.2\",\"16.6\",\"16.8\",\"26.2\",\"37.6\",\"38\",\"51.4\",\"53.2\",\"68.2\",\"69.8\",\"86.4\",\"89.2\",\"91\",\"109.2\",\"116\",\"116.8\",\"139.4\",\"152\",\"153.2\",\"178.8\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:47:27','2021-05-29 14:47:27'),
(342,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:47:28','2021-05-29 14:47:28'),
(343,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:47:46','2021-05-29 14:47:46'),
(344,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"3.6\",\"9.4\",\"15.8\",\"23\",\"31.2\",\"40.6\",\"51.4\",\"64\",\"79\",\"96.8\",\"118.6\",\"145.8\",\"180.8\",null]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:48:35','2021-05-29 14:48:35'),
(345,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:48:36','2021-05-29 14:48:36'),
(346,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:48:49','2021-05-29 14:48:49'),
(347,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"5.2\",\"11.4\",\"18.4\",\"26.2\",\"35.2\",\"45.6\",\"57.8\",\"72\",\"89.2\",\"110.2\",\"136.4\",\"170\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:49:33','2021-05-29 14:49:33'),
(348,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:49:34','2021-05-29 14:49:34'),
(349,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:49:45','2021-05-29 14:49:45'),
(350,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"10.2\",\"21.2\",\"34.6\",\"51.4\",\"72.8\",\"101.6\",\"141.8\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:50:25','2021-05-29 14:50:25'),
(351,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:50:27','2021-05-29 14:50:27'),
(352,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:50:49','2021-05-29 14:50:49'),
(353,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"1.6\",\"8.2\",\"9.2\",\"16.6\",\"18.2\",\"26.2\",\"28.8\",\"37.6\",\"42.6\",\"51.4\",\"57.6\",\"68.2\",\"77.4\",\"89.2\",\"103.2\",\"116\",\"136.4\",\"152\",\"183.4\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:52:17','2021-05-29 14:52:17'),
(354,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:52:17','2021-05-29 14:52:17'),
(355,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:52:38','2021-05-29 14:52:38'),
(356,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1.6\",\"7.6\",\"15.2\",\"22.8\",\"31.2\",\"41\",\"53.2\",\"66.8\",\"83.4\",\"103.2\",\"128.8\",\"160.8\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:53:22','2021-05-29 14:53:22'),
(357,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:53:22','2021-05-29 14:53:22'),
(358,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:54:06','2021-05-29 14:54:06'),
(359,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"103.2\",\"132\",\"171.4\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:54:48','2021-05-29 14:54:48'),
(360,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:54:49','2021-05-29 14:54:49'),
(361,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:55:12','2021-05-29 14:55:12'),
(362,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"4.6\",\"7.6\",\"12.2\",\"18.2\",\"22.8\",\"30.4\",\"36.4\",\"44\",\"53.2\",\"62.2\",\"72.8\",\"85\",\"98.6\",\"115.8\",\"135\",\"159.2\",\"186.4\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:56:52','2021-05-29 14:56:52'),
(363,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:56:53','2021-05-29 14:56:53'),
(364,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:57:05','2021-05-29 14:57:05'),
(365,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"10.2\",\"21.2\",\"34.6\",\"51.4\",\"72.8\",\"101.6\",\"141.8\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:57:47','2021-05-29 14:57:47'),
(366,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:57:47','2021-05-29 14:57:47'),
(367,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:58:02','2021-05-29 14:58:02'),
(368,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"1.6\",\"8.2\",\"9.2\",\"16.6\",\"26.2\",\"27.4\",\"37.6\",\"38\",\"51.4\",\"53.2\",\"68.2\",\"69.8\",\"89.2\",\"91\",\"116\",\"116.8\",\"152\",\"153.2\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 14:59:16','2021-05-29 14:59:16'),
(369,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 14:59:17','2021-05-29 14:59:17'),
(370,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 14:59:52','2021-05-29 14:59:52'),
(371,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"7\",\"13.6\",\"21.2\",\"29.8\",\"39.8\",\"51.4\",\"65.2\",\"81.6\",\"101.6\",\"127\",\"156.2\",\"192.6\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 15:00:54','2021-05-29 15:00:54'),
(372,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:00:54','2021-05-29 15:00:54'),
(373,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:26:04','2021-05-29 15:26:04'),
(374,1,'admin/thresholds/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 15:26:08','2021-05-29 15:26:08'),
(375,1,'admin/thresholds/1','PUT','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"116\",\"152\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 15:26:29','2021-05-29 15:26:29'),
(376,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:26:29','2021-05-29 15:26:29'),
(377,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:27:06','2021-05-29 15:27:06'),
(378,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:27:24','2021-05-29 15:27:24'),
(379,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:28:20','2021-05-29 15:28:20'),
(380,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:29:27','2021-05-29 15:29:27'),
(381,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:31:55','2021-05-29 15:31:55'),
(382,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:32:08','2021-05-29 15:32:08'),
(383,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:33:36','2021-05-29 15:33:36'),
(384,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:35:22','2021-05-29 15:35:22'),
(385,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:37:33','2021-05-29 15:37:33'),
(386,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:37:58','2021-05-29 15:37:58'),
(387,1,'admin/equipments','GET','127.0.0.1','[]','2021-05-29 15:40:58','2021-05-29 15:40:58'),
(388,1,'admin/equipments/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 15:41:04','2021-05-29 15:41:04'),
(389,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:41:46','2021-05-29 15:41:46'),
(390,1,'admin/thresholds/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-29 15:41:52','2021-05-29 15:41:52'),
(391,1,'admin/thresholds/1','PUT','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"116\",\"152\"]},\"_token\":\"WMjwntMgBbIRcO9ZvkPx8CNdgse8WVD1eIL9vYmu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-29 15:42:05','2021-05-29 15:42:05'),
(392,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:42:05','2021-05-29 15:42:05'),
(393,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:45:40','2021-05-29 15:45:40'),
(394,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:45:42','2021-05-29 15:45:42'),
(395,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:46:00','2021-05-29 15:46:00'),
(396,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:46:54','2021-05-29 15:46:54'),
(397,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 15:52:16','2021-05-29 15:52:16'),
(398,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 16:19:02','2021-05-29 16:19:02'),
(399,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 16:42:12','2021-05-29 16:42:12'),
(400,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 16:44:51','2021-05-29 16:44:51'),
(401,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 16:46:30','2021-05-29 16:46:30'),
(402,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 16:48:46','2021-05-29 16:48:46'),
(403,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 16:54:13','2021-05-29 16:54:13'),
(404,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 16:54:35','2021-05-29 16:54:35'),
(405,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 16:55:46','2021-05-29 16:55:46'),
(406,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 16:56:05','2021-05-29 16:56:05'),
(407,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 16:57:10','2021-05-29 16:57:10'),
(408,1,'admin/equipments','GET','127.0.0.1','[]','2021-05-29 16:57:20','2021-05-29 16:57:20'),
(409,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 16:58:39','2021-05-29 16:58:39'),
(410,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 17:04:40','2021-05-29 17:04:40'),
(411,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 17:05:32','2021-05-29 17:05:32'),
(412,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 17:05:51','2021-05-29 17:05:51'),
(413,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 22:37:35','2021-05-29 22:37:35'),
(414,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 22:39:00','2021-05-29 22:39:00'),
(415,1,'admin/heros','GET','127.0.0.1','[]','2021-05-29 22:44:44','2021-05-29 22:44:44'),
(416,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 22:45:06','2021-05-29 22:45:06'),
(417,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 22:45:35','2021-05-29 22:45:35'),
(418,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 22:46:41','2021-05-29 22:46:41'),
(419,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 22:50:16','2021-05-29 22:50:16'),
(420,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 22:50:16','2021-05-29 22:50:16'),
(421,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-29 23:07:22','2021-05-29 23:07:22'),
(422,1,'admin/heros','GET','127.0.0.1','[]','2021-05-31 18:25:19','2021-05-31 18:25:19'),
(423,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-31 18:25:21','2021-05-31 18:25:21'),
(424,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-31 18:25:38','2021-05-31 18:25:38'),
(425,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-31 18:28:07','2021-05-31 18:28:07'),
(426,1,'admin/heros','GET','127.0.0.1','[]','2021-05-31 21:54:29','2021-05-31 21:54:29'),
(427,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-31 21:54:29','2021-05-31 21:54:29'),
(428,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-31 21:54:34','2021-05-31 21:54:34'),
(429,1,'admin/thresholds/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-31 21:55:18','2021-05-31 21:55:18'),
(430,1,'admin/thresholds','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-31 21:55:23','2021-05-31 21:55:23'),
(431,1,'admin/thresholds/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-31 21:55:41','2021-05-31 21:55:41'),
(432,1,'admin/thresholds','POST','127.0.0.1','{\"speeds\":{\"values\":[\"0\"]},\"_token\":\"cKQbCoPcNhcTrvv1ZiEdRZCEptpnQlcE1rQzpU2w\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-05-31 21:55:56','2021-05-31 21:55:56'),
(433,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-31 21:55:57','2021-05-31 21:55:57'),
(434,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-31 21:58:00','2021-05-31 21:58:00'),
(435,1,'admin/thresholds','GET','127.0.0.1','[]','2021-05-31 21:59:40','2021-05-31 21:59:40'),
(436,1,'admin/temps','GET','127.0.0.1','[]','2021-05-31 22:09:44','2021-05-31 22:09:44'),
(437,1,'admin/temps','GET','127.0.0.1','[]','2021-05-31 22:10:00','2021-05-31 22:10:00'),
(438,1,'admin/temps/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-31 22:10:02','2021-05-31 22:10:02'),
(439,1,'admin/temps','POST','127.0.0.1','{\"_token\":\"cKQbCoPcNhcTrvv1ZiEdRZCEptpnQlcE1rQzpU2w\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/temps\"}','2021-05-31 22:10:08','2021-05-31 22:10:08'),
(440,1,'admin/temps','GET','127.0.0.1','[]','2021-05-31 22:10:08','2021-05-31 22:10:08'),
(441,1,'admin/temps','GET','127.0.0.1','[]','2021-05-31 22:10:50','2021-05-31 22:10:50'),
(442,1,'admin/temps','GET','127.0.0.1','[]','2021-05-31 22:11:31','2021-05-31 22:11:31'),
(443,1,'admin/temps','GET','127.0.0.1','[]','2021-05-31 22:12:36','2021-05-31 22:12:36'),
(444,1,'admin/temps','GET','127.0.0.1','[]','2021-05-31 22:13:12','2021-05-31 22:13:12'),
(445,1,'admin/temps','GET','127.0.0.1','[]','2021-05-31 22:13:15','2021-05-31 22:13:15'),
(446,1,'admin/temps','GET','127.0.0.1','[]','2021-05-31 22:13:19','2021-05-31 22:13:19'),
(447,1,'admin/temps','GET','127.0.0.1','[]','2021-05-31 22:14:18','2021-05-31 22:14:18'),
(448,1,'admin/temps','GET','127.0.0.1','[]','2021-05-31 22:14:28','2021-05-31 22:14:28');

/*Table structure for table `admin_permissions` */

DROP TABLE IF EXISTS `admin_permissions`;

CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_permissions` */

insert  into `admin_permissions`(`id`,`name`,`slug`,`http_method`,`http_path`,`created_at`,`updated_at`) values 
(1,'All permission','*','','*',NULL,NULL),
(2,'Dashboard','dashboard','GET','/',NULL,NULL),
(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),
(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),
(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);

/*Table structure for table `admin_role_menu` */

DROP TABLE IF EXISTS `admin_role_menu`;

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_role_menu` */

insert  into `admin_role_menu`(`role_id`,`menu_id`,`created_at`,`updated_at`) values 
(1,2,NULL,NULL);

/*Table structure for table `admin_role_permissions` */

DROP TABLE IF EXISTS `admin_role_permissions`;

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_role_permissions` */

insert  into `admin_role_permissions`(`role_id`,`permission_id`,`created_at`,`updated_at`) values 
(1,1,NULL,NULL);

/*Table structure for table `admin_role_users` */

DROP TABLE IF EXISTS `admin_role_users`;

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_role_users` */

insert  into `admin_role_users`(`role_id`,`user_id`,`created_at`,`updated_at`) values 
(1,1,NULL,NULL);

/*Table structure for table `admin_roles` */

DROP TABLE IF EXISTS `admin_roles`;

CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_roles` */

insert  into `admin_roles`(`id`,`name`,`slug`,`created_at`,`updated_at`) values 
(1,'Administrator','administrator','2021-05-15 11:51:33','2021-05-15 11:51:33');

/*Table structure for table `admin_user_permissions` */

DROP TABLE IF EXISTS `admin_user_permissions`;

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_user_permissions` */

/*Table structure for table `admin_users` */

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_users` */

insert  into `admin_users`(`id`,`username`,`password`,`name`,`avatar`,`remember_token`,`created_at`,`updated_at`) values 
(1,'admin','$2y$10$RiskTlo6t7zUXoLRiNJ2NuQSv7nRqo73wkU0OpxxpOT3IGDBedklC','Administrator',NULL,'KbUKdObyjenylwM7ap4lvU3qOHsxGyacCQoOow9JRI0ReDQtM2nupfdKFJKS','2021-05-15 11:51:33','2021-05-15 11:51:33');

/*Table structure for table `equipments` */

DROP TABLE IF EXISTS `equipments`;

CREATE TABLE `equipments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '装备id',
  `price` int(5) NOT NULL DEFAULT '1' COMMENT '装备价格',
  `name` varchar(10) NOT NULL DEFAULT 'name' COMMENT '装备名称',
  `type` varchar(20) NOT NULL DEFAULT 'type' COMMENT '装备类型',
  `picture` varchar(100) NOT NULL DEFAULT 'images/error.png' COMMENT '装备展示的图片',
  `decription` varchar(100) NOT NULL DEFAULT 'decription' COMMENT '装备描述',
  `passive_name` varchar(100) NOT NULL DEFAULT 'passive_name' COMMENT '被动名称',
  `passive_description` varchar(100) NOT NULL DEFAULT 'passive_description' COMMENT '被动描述',
  `active_name` varchar(100) NOT NULL DEFAULT 'active_name' COMMENT '主动名称',
  `active_description` varchar(100) NOT NULL DEFAULT 'active_description' COMMENT '主动描述',
  `created_at` datetime NOT NULL DEFAULT '2021-05-29 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '2021-05-29 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

/*Data for the table `equipments` */

insert  into `equipments`(`id`,`price`,`name`,`type`,`picture`,`decription`,`passive_name`,`passive_description`,`active_name`,`active_description`,`created_at`,`updated_at`) values 
(1,250,'铁剑','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(2,290,'匕首','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(3,320,'搏击拳套','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(4,410,'吸血之镰','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(5,910,'风暴巨剑','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(6,790,'日冕','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(7,890,'狂暴双刃','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(8,1080,'陨星','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(9,450,'雷鸣刀','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(10,550,'充能拳套','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(11,2000,'破魔刀','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(12,1900,'名刀,司命','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(13,1980,'寒霜袭侵','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(14,890,'速击之枪','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(15,2100,'碎心锤','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(16,1100,'穿云弓','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(17,1800,'制裁之刃','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(18,2120,'纯净苍穹','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(19,2160,'末世','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(20,1740,'泣血之刃','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(21,2140,'无尽战刃','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(22,2100,'宗师之力','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(23,1840,'闪电匕首','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(24,2070,'影刃','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(25,2090,'暗影战斧','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(26,2950,'破军','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(27,2100,'逐日之弓','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(28,3400,'破晓','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(29,4180,'日渊','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(30,300,'咒术典籍','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(31,220,'蓝宝石','攻击','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(32,120,'炼金护符','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(33,500,'圣者法典','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(34,540,'元素杖','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(35,820,'大棒','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(36,1240,'血族之书','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(37,730,'光辉之剑','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(38,890,'魔道之石','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(39,720,'进化水晶','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(40,1950,'炽热支配者','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(41,800,'破碎圣杯','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(42,1990,'辉月','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(43,970,'云灵木','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(44,2120,'日暮之流','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(45,2070,'黄金圣剑','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(46,2050,'梦魇之牙','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(47,1800,'圣杯','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(48,2110,'虚无法杖','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(49,2300,'博学者之怒','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(50,2100,'回响之杖','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(51,2100,'凝冰之息','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(52,2040,'痛苦面具','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(53,2120,'巫师法杖','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(54,2090,'时之预言','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(55,2990,'贤者之书','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(56,2090,'噬神之书','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(57,4070,'月神','法术','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(58,300,'红玛瑙','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(59,220,'布甲','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(60,220,'抗魔披风','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(61,140,'提神水晶','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(62,900,'力量腰带','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(63,900,'熔炼之心','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(64,1020,'神隐斗篷','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(65,900,'雪山圆盾','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(66,730,'守护者之铠','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(67,1910,'反伤刺甲','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(68,2120,'血魔之怒','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(69,2100,'冰霜冲击','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(70,710,'荆棘护手','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(71,710,'暗夜小甲','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(72,2080,'原初遗珠','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(73,1830,'红莲斗篷','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(74,2070,'霸者重装','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(75,2180,'不祥征兆','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(76,2100,'不死鸟之眼','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(77,2080,'魔女斗篷','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(78,2100,'极寒风暴','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(79,2080,'贤者的庇护','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(80,1950,'爆烈之甲','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(81,2110,'永夜守护','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(82,4200,'怒魂','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(83,4180,'凛冬','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(84,2070,'冰痕之握','防御','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(85,250,'神速之靴','移动','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(86,710,'影忍之足','移动','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(87,710,'抵抗之靴','移动','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(88,710,'冷静之靴','移动','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(89,710,'秘法之靴','移动','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(90,710,'急速之靴','移动','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(91,710,'疾步之靴','移动','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(92,250,'狩猎宽刃','打野','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(93,250,'弃鳞短刃','打野','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(94,750,'游击弯刀','打野','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(95,750,'巡守利斧','打野','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(96,750,'追击刀锋','打野','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(97,750,'龙鳞利剑','打野','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(98,2160,'符文大剑','打野','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(99,1960,'巨人之握','打野','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(100,2160,'贪婪之噬','打野','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(101,2080,'浴火之怒','打野','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(102,300,'学识宝石','游走','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(103,1070,'凤鸣指环','游走','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(104,1010,'风之轻语','游走','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(105,1180,'风灵文章','游走','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(106,1210,'鼓舞之盾','游走','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(107,1910,'极影','游走','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(108,1800,'救赎之翼','游走','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(109,2090,'奔狼文章','游走','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00'),
(110,2010,'近卫荣耀','游走','images/error.png','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-05-29 00:00:00');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `heros` */

DROP TABLE IF EXISTS `heros`;

CREATE TABLE `heros` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '英雄id',
  `threshold_id` int(11) NOT NULL DEFAULT '1',
  `proficiency` int(20) NOT NULL DEFAULT '1' COMMENT '英雄熟练度',
  `add_time` datetime NOT NULL DEFAULT '2021-05-29 00:00:00' COMMENT '英雄上架时间',
  `combat_power` int(20) NOT NULL DEFAULT '0' COMMENT '英雄战力值',
  `area_code` varchar(20) NOT NULL DEFAULT '0' COMMENT '英雄区号',
  `head_portrait` varchar(100) NOT NULL DEFAULT 'head_thumb' COMMENT '头像',
  `out_loading` text NOT NULL COMMENT '英雄出装',
  `occupation` varchar(100) NOT NULL DEFAULT '[]' COMMENT '英雄职业',
  `location` varchar(250) NOT NULL DEFAULT '[]' COMMENT '英雄定位',
  `specialty` varchar(1000) NOT NULL DEFAULT '[""]' COMMENT '英雄特长',
  `period` varchar(100) NOT NULL DEFAULT 'period' COMMENT '英雄时期',
  `existence` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄生存',
  `output` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄输出',
  `difficulty` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄难度',
  `poster` varchar(100) NOT NULL DEFAULT 'images/error.png' COMMENT '英雄海报',
  `full_body_video` varchar(100) NOT NULL DEFAULT 'files/error.png' COMMENT '英雄全身视频',
  `shunt` varchar(100) NOT NULL DEFAULT 'shunt' COMMENT '英雄分路',
  `race` varchar(20) NOT NULL DEFAULT 'race' COMMENT '英雄种族',
  `height` varchar(20) NOT NULL DEFAULT '0' COMMENT '英雄身高',
  `energy` varchar(100) NOT NULL DEFAULT 'energy' COMMENT '英雄能量',
  `city` varchar(100) NOT NULL DEFAULT 'city' COMMENT '英雄城市',
  `power` varchar(20) NOT NULL DEFAULT 'power' COMMENT '英雄势力',
  `identity` varchar(20) NOT NULL DEFAULT 'identity' COMMENT '英雄身份',
  `name` varchar(20) NOT NULL DEFAULT 'name' COMMENT '英雄名称',
  `relevant` varchar(100) NOT NULL DEFAULT '[]' COMMENT '英雄相关英雄',
  `maximum_health` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄最大生命值',
  `maximum_mana` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄最大法力值',
  `magic_attack` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄法术攻击',
  `physical_attack` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄物理攻击',
  `spell_defense` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄法术防御',
  `physical_defense` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄物理防御',
  `moving_speed` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄移速',
  `physical_penetration` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄物理穿透',
  `spell_penetration` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄法术穿透',
  `attack_speed` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄移速加成',
  `critical_hit_probability` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄暴击几率',
  `critical_hit_effect` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄暴击效果',
  `physical_blood_sucking` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄物理吸血',
  `sorcery_sucks_blood` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄法术吸血',
  `cooling_reduction` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄冷却缩减',
  `attack_range` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄攻击范围',
  `toughness` varchar(100) NOT NULL DEFAULT '0' COMMENT '英雄韧性',
  `return_blood` varchar(100) NOT NULL DEFAULT '0' COMMENT '每5秒回血',
  `return_to_blue` varchar(100) NOT NULL DEFAULT '0' COMMENT '每5秒回蓝',
  `created_at` datetime NOT NULL DEFAULT '2021-05-29 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '2021-05-29 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

/*Data for the table `heros` */

insert  into `heros`(`id`,`threshold_id`,`proficiency`,`add_time`,`combat_power`,`area_code`,`head_portrait`,`out_loading`,`occupation`,`location`,`specialty`,`period`,`existence`,`output`,`difficulty`,`poster`,`full_body_video`,`shunt`,`race`,`height`,`energy`,`city`,`power`,`identity`,`name`,`relevant`,`maximum_health`,`maximum_mana`,`magic_attack`,`physical_attack`,`spell_defense`,`physical_defense`,`moving_speed`,`physical_penetration`,`spell_penetration`,`attack_speed`,`critical_hit_probability`,`critical_hit_effect`,`physical_blood_sucking`,`sorcery_sucks_blood`,`cooling_reduction`,`attack_range`,`toughness`,`return_blood`,`return_to_blue`,`created_at`,`updated_at`) values 
(1,1,0,'2015-04-12 00:00:00',0,'0','images/阿古朵.jpg','[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6781\\u5f71\",\"\\u6012\\u9b42\"]','[\"\\u5766\\u514b\",\"\\u6218\\u58eb\",\"\\u523a\\u5ba2\",\"\\u6cd5\\u5e08\",\"\\u5c04\\u624b\"]','先锋坦克','[\"团控\",\"团队增益\"]','前期','90','50','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','145','武道','益城','蜀','[\"狼孩\"]','阿古朵','{\"诸葛亮\": \"头儿\", \"刘禅\": \"二当头\"}','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-07 14:03:56','2021-05-15 15:13:08'),
(2,1,0,'2015-01-28 00:00:00',0,'0','images/白起.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",null]','[\"\\u5766\\u514b\"]','先锋坦克','[\"团控\"]','均衡','80','40','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','193','武道','玄雍城','玄雍','[\"狼孩\"]','白起','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(3,1,0,'2015-03-31 00:00:00',0,'0','images/嫦娥.jpg','[\"\\u70bd\\u70ed\\u652f\\u914d\\u8005\",\"\\u5f71\\u5fcd\\u4e4b\\u8db3\",\"\\u8fdb\\u5316\\u6c34\\u6676\",\"\\u84dd\\u5b9d\\u77f3\",\"\\u84dd\\u5b9d\\u77f3\",\"\\u84dd\\u5b9d\\u77f3\",\"\\u65f6\\u4e4b\\u9884\\u8a00\",\"\\u5deb\\u5e08\\u6cd5\\u6756\",\"\\u6781\\u5bd2\\u98ce\\u66b4\"]','[\"\\u5766\\u514b\",\"\\u6cd5\\u5e08\"]','阵地法师','[\"持续输出\",\"法力护盾\"]','前期','80','70','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','171','魔道','日之塔','日之塔','[\"魔道家族公主\"]','嫦娥','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(4,1,0,'2015-01-13 00:00:00',0,'0','images/程咬金.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u4e0d\\u6b7b\\u9e1f\\u4e4b\\u773c\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','先锋坦克','[\"单带\", \"回复\"]','均衡','90','50','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','200','武道','长安城','长安','[\"名将\"]','程咬金','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(5,1,0,'2015-01-19 00:00:00',0,'0','images/达摩.jpg','[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u8840\\u9b54\\u4e4b\\u6012\"]','[\"\\u5766\\u514b\"]','先锋战士','[\"\\u56e2\\u63a7\",\"\\u7a81\\u8fdb\"]','均衡','70','50','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','177','武道','长安城','长安','[\"拳僧\"]','达摩','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(6,1,0,'2015-03-07 00:00:00',0,'0','images/东皇太一.jpg','[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u4e0d\\u6b7b\\u9e1f\\u4e4b\\u773c\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u8840\\u9b54\\u4e4b\\u6012\"]','[\"\\u5766\\u514b\"]','进攻辅助','[\"回复\",\"持续控制\"]','前期','80','50','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人类','215','魔道','云梦泽','云梦泽','[\"东神之城统治者\"]','东皇太一','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(7,1,0,'2015-03-28 00:00:00',0,'0','images/盾山.jpg','[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u4e0d\\u7965\\u5f81\\u5146\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u8840\\u9b54\\u4e4b\\u6012\",\"\\u75be\\u6b65\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','进攻辅助','[\"持续控制\",\"格挡\"]','均衡','100','40','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人造人','283','机关','长城','长城守卫军','[\"修筑长城的机械\"]','盾山','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(8,1,0,'2015-03-12 00:00:00',0,'0','images/铠.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u66b4\\u70c8\\u4e4b\\u7532\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','刺杀战士','[]','后期','70','70','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','188','武道','长城','长城守卫军','[\"长城守卫军成员\"]','铠','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(9,1,0,'2015-02-12 00:00:00',0,'0','images/廉颇.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]','[\"\\u5766\\u514b\"]','先锋坦克','[\"团控\",\"先手\"]','均衡','100','40','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','190','武道','稷下','稷下学院 ','[\"甘丹族长\"]','廉颇','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(10,1,0,'2015-02-19 00:00:00',0,'0','images/刘邦.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','守护坦克','[\"支援\"]','均衡','80','50','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','179','武道','灞城','灞上','[\"灞城统治者\"]','刘邦','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(11,1,0,'2015-02-03 00:00:00',0,'0','images/刘禅.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]','[\"\\u5766\\u514b\"]','战术辅助','[\"\\u56e2\\u63a7\",\"\\u63a8\\u8fdb\"]','前期','70','50','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人类','145/210','机关','益城','蜀','[\"蜀地继承人\"]','刘禅','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(12,1,0,'2015-01-26 00:00:00',0,'0','images/吕布.jpg','[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u4e0d\\u7965\\u5f81\\u5146\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u5f71\\u5203\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','重装战士','[\"收割\"]','后期','60','60','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','192','武道','魏都','','[\"重生的战神\"]','吕布','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(13,1,0,'2015-04-11 00:00:00',0,'0','images/蒙恬.jpg','[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u66b4\\u70c8\\u4e4b\\u7532\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','重装战士','[\"突进\"]','前期','70','70','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','190','武道','玄雍城','玄雍','[\"玄雍护国大将军\"]','蒙恬','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(14,1,0,'2015-03-16 00:00:00',0,'0','images/梦奇.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5766\\u514b\"]','重装战士','[\"远程消耗\",\"团控\"]','均衡','70','60','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','97','魔道','倒悬天','倒悬天','[\"食梦者\"]','梦奇','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(15,1,0,'2015-01-27 00:00:00',0,'0','images/芈月.jpg','[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u4e0d\\u6b7b\\u9e1f\\u4e4b\\u773c\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u6781\\u5bd2\\u98ce\\u66b4\"]','[\"\\u5766\\u514b\"]','阵地法师','[\"持续输出\",\"回复\"]','前期','60','70','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','175','魔道','玄雍城','玄雍','[\"玄雍太后\"]','芈月','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(16,1,0,'2015-01-03 00:00:00',0,'0','images/牛魔.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','守护辅助','[\"团控\",\"团队增益\"]','前期','70','40','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','魔种','230','武道','日之塔','日之塔','[\"魔种起义军叛徒\"]','牛魔','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(17,1,0,'2015-03-15 00:00:00',0,'0','images/苏烈.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','先锋坦克','[\"团控\",\"先手\"]','前期','70','60','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人类','208','武道','长城','长城守卫军','[\"长城守卫军成员\"]','苏烈','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(18,1,0,'2015-03-26 00:00:00',0,'0','images/孙策.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]','[\"\\u5766\\u514b\"]','冲锋战士','[\"团控\",\"先手\"]','均衡','70','70','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','185','武道','江郡','吴','[\"江东小霸王\"]','孙策','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(19,1,0,'2015-03-02 00:00:00',0,'0','images/太乙真人.jpg','[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','守护辅助','[\"\\u56e2\\u961f\\u589e\\u76ca\",\"\\u590d\\u6d3b\"]','前期','50','50','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人类','120/230','魔道','倒悬天','倒悬天','[\"炼金师\"]','太乙真人','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(20,1,0,'2015-02-24 00:00:00',0,'0','images/夏侯惇.jpg','[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6697\\u5f71\\u6218\\u65a7\",\"\\u53cd\\u4f24\\u523a\\u7532\"]','[\"\\u5766\\u514b\"]','守护坦克','[\"\\u56e2\\u63a7\",\"\\u7a81\\u8fdb\"]','前期','70','50','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','186','武道','魏都','魏','[\"魏地武将\"]','夏侯惇','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(21,1,0,'2015-01-18 00:00:00',0,'0','images/项羽.jpg','[\"\\u5f71\\u5fcd\\u4e4b\\u8db3\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]','[\"\\u5766\\u514b\"]','守护坦克','[\"团控\",\"承伤\"]','后期','90','50','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','197','武道','鸿门','鸿门','[\"霸王\"]','项羽','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:32:11'),
(22,1,0,'2015-01-05 00:00:00',0,'0','images/亚瑟.jpg','[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u4e0d\\u7965\\u5f81\\u5146\",\"\\u6012\\u9b42\"]','[\"\\u5766\\u514b\"]','冲锋战士','[\"冲锋\",\"战士\"]','均衡','80','50','20','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','188','武道','日落神殿','日落神殿','[\"圣骑士团将领\"]','亚瑟','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(23,1,0,'2015-01-01 00:00:00',0,'0','images/张飞.jpg','[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u6025\\u901f\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\",\"\\u8f85\\u52a9\"]','守护辅助','[\"团控\",\"团队增益\"]','均衡','100','40','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人魔混血','186','武道','益城','蜀','[\"蜀地武将\"]','张飞','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(24,1,0,'2015-01-31 00:00:00',0,'0','images/钟无艳.jpg','[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]','[\"\\u5766\\u514b\"]','重装战士','[\"团控\",\"突进\"]','前期','80','80','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人魔混血','177','武道','稷下','稷下学院','[\"稷下学生\"]','钟无艳','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(25,1,100,'2015-01-23 00:00:00',0,'0','images/曹操.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','狂战士','[\"吸血\"]','均衡','60','60','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','179','武道','魏都','魏','[\"魏地主公\"]','曹操','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(26,1,100,'2015-01-22 00:00:00',0,'0','images/典韦.jpg','[null,null,null,null,null,null]','[\"\\u6218\\u58eb\"]','狂战士','[\"收割\"]','后期','60','60','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','183','武道','魏都','魏','[\"魏地武将\"]','典韦','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(27,1,100,'2015-01-21 00:00:00',0,'0','images/宫本武藏.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','刺杀战士','[\"突进\",\"收割\"]','均衡','40','70','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','181','武道','扶桑','扶桑','[\"扶桑剑客\"]','宫本武藏','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(28,1,100,'2015-02-22 00:00:00',0,'0','images/关羽.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','冲锋战士','[\"突进\",\"先手\"]','均衡','60','60','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','191','武道','益城','蜀','[\"蜀地武将\"]','关羽','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(29,1,100,'2015-01-08 00:00:00',0,'0','images/花木兰.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','刺杀战士','[\"突进\",\"收割\"]','均衡','50','70','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','174','魔道','长城','长城守卫军','[\"长城守卫军队长\"]','花木兰','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(30,1,100,'2015-02-27 00:00:00',0,'0','images/橘右京.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','刺杀战士','[\"突进\",\"回复\"]','前期','50','60','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','176','武道','扶桑','扶桑','[\"扶桑剑客\"]','橘右京','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(31,1,100,'2015-03-23 00:00:00',0,'0','images/狂铁.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','重装战士','[\"突进\",\"团控\"]','前期','60','60','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','171','武道','海都','海都家族','[\"海都佣兵\"]','狂铁','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(32,1,100,'2015-01-16 00:00:00',0,'0','images/老夫子.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','狂战士','[\"突进\"]','后期','70','70','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','神职者','173','武道','稷下','稷下学院','[\"稷下三贤者\"]','老夫子','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(33,1,100,'2015-03-10 00:00:00',0,'0','images/李信.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','狂战士','[\"突进\",\"团控\"]','均衡','60','70','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','187','武道/魔道','长城','长城守卫军','[\"长城守卫军成员\"]','李信','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(34,1,100,'2015-02-13 00:00:00',0,'0','images/刘备.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','狂战士','[\"突进\",\"收割\"]','前期','50','50','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','178','武道','益城','蜀','[\"蜀地主公\"]','刘备','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(35,1,100,'2015-01-12 00:00:00',0,'0','images/露娜.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','冲锋战士','[\"突进\",\"收割\"]','均衡','50','70','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','173','魔道','海都','海都','[\"寒星家族继承人\"]','露娜','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(36,1,100,'2015-04-06 00:00:00',0,'0','images/马超.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','刺杀战士','[\"收割\"]','均衡','40','80','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','180','武道','益城','蜀','[\"蜀地将领\"]','马超','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(37,1,100,'2015-02-09 00:00:00',0,'0','images/墨子.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','控场法师','[\"控制\",\"护盾\"]','后期','50','50','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','182/512','机关','稷下','稷下学院','[\"稷下三贤者\"]','墨子','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(38,1,100,'2015-03-03 00:00:00',0,'0','images/哪吒.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','冲锋战士','[\"突进\",\"吸收伤害\"]','后期','80','60','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','175','武道','倒悬天','倒悬天','[\"陈塘关长官之子\"]','哪吒','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(39,1,100,'2015-04-02 00:00:00',0,'0','images/盘古.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','狂战士','[\"突进\",\"收割\"]','前期','50','70','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','超智慧体','212','武道','倒悬天','倒悬天','[\"神\"]','盘古','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(40,1,100,'2015-03-21 00:00:00',0,'0','images/配擒虎.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','游斗刺客','[\"远程消耗\",\"收割\"]','前期','40','80','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人魔混血','177','武道','长安城','尧天','[\"拳师\"]','配擒虎','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(41,1,100,'2015-04-15 00:00:00',0,'0','images/司空震.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','狂战士','[\"爆发\"]','均衡','40','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','190','魔道','长安城','长安','[\"长安大司空\"]','司空震','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(42,1,100,'2015-01-04 00:00:00',0,'0','images/孙悟空.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','爆发战士','[\"突进\",\"团控\"]','后期','40','80','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','魔种','180','武道','日之塔','日之塔','[\"魔种起义军将领\"]','孙悟空','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(43,1,100,'2015-04-13 00:00:00',0,'0','images/夏洛特.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','冲锋战士','[\"突进\",\"收割\"]','均衡','60','70','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','人类','190','武道','日落海','日落圣殿','[\"贵族剑士\"]','夏洛特','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(44,1,100,'2015-02-25 00:00:00',0,'0','images/雅典娜.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','刺杀战士','[\"突进\"]','前期','70','60','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','178','武道','日落神殿','日落圣殿','[\"神的继承者\"]','雅典娜','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(45,1,100,'2015-03-01 00:00:00',0,'0','images/杨戬.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','刺杀战士','[\"突进\",\"收割\"]','均衡','60','60','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','对抗路','神职者','185','武道','倒悬天','倒悬天','[\"神职者\"]','杨戬','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(46,1,100,'2015-04-05 00:00:00',0,'0','images/曜.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','刺杀战士','[\"\"]','均衡','70','60','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','176','武道','稷下','稷下学院','[\"稷下学生\"]','曜','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(47,1,100,'2015-04-04 00:00:00',0,'0','images/云中君.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','爆发刺客','[\"突进\",\"收割\"]','前期','40','90','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','182','武道','云梦泽','云梦泽','[\"孤岛转生者\"]','云中君','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(48,1,100,'2015-02-10 00:00:00',0,'0','images/赵云.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','刺杀战士','[\"突进\"]','均衡','60','60','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','186','武道','益城','蜀','[\"龙枪战士\"]','赵云','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(49,1,400,'2015-02-01 00:00:00',0,'0','images/阿轲.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','爆发刺客','[\"突进\",\"收割\"]','后期','30','100','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','171','武道','南荒','南荒','[\"复仇刺客\"]','阿轲','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(50,1,400,'2015-03-13 00:00:00',0,'0','images/百里守约.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','重炮射手','[\"远程消耗\"]','前期','20','70','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','发育路','人魔混血','182','武道','长城','长城守卫军','[\"长城守卫军成员\"]','百里守约','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(51,1,400,'2015-03-14 00:00:00',0,'0','images/百里玄策.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','游斗刺客','[\"突进\",\"收割\"]','均衡','40','80','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人魔混血','171','武道','长城','长城守卫军','[\"长城守卫军成员\"]','百里玄策','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(52,1,400,'2015-02-20 00:00:00',0,'0','images/不知火舞.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','突袭法师','[\"爆发\",\"突进\"]','均衡','30','80','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','165','魔道','扶桑','扶桑','[\"不知火舞继承人\"]','不知火舞','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(53,1,400,'2015-01-15 00:00:00',0,'0','images/貂蝉.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','阵地法师','[\"持续输出\",\"真伤\"]','后期','40','70','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','172','魔道','魏都','扶桑','[\"绝世舞姬\"]','貂蝉','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(54,1,400,'2015-01-10 00:00:00',0,'0','images/韩信.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','游斗刺客','[\"突进\"]','均衡','20','70','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','185','武道','灞城','灞上','[\"灞城武将\"]','韩信','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(55,1,400,'2015-04-10 00:00:00',0,'0','images/镜.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','游斗刺客','[\"突进\",\"收割\"]','均衡','10','90','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','170','武道','玄雍城','玄雍','[\"阴曲情报专员\"]','镜','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(56,1,400,'2015-02-14 00:00:00',0,'0','images/兰陵王.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','爆发刺客','[\"突进\",\"收割\"]','前期','40','80','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','179','武道','金庭城','金庭国','[\"金庭城王子\"]','兰陵王','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(57,1,400,'2015-04-14 00:00:00',0,'0','images/澜.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','游斗刺客','[\"突进\",\"收割\"]','均衡','40','80','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','180','魔道','江郡','吴','[\"前魏都杀手\"]','澜','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(58,1,400,'2015-02-16 00:00:00',0,'0','images/李白.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','游斗刺客','[\"突进\",\"收割\"]','后期','40','60','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','184','武道','长安城','长安','[\"天才刺客\"]','李白','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(59,1,400,'2015-02-15 00:00:00',0,'0','images/娜可露露.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','爆发刺客','[\"突进\"]','后期','30','80','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','154','武道','扶桑','扶桑','[\"扶桑巫女\"]','娜可露露','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(60,1,400,'2015-03-30 00:00:00',0,'0','images/上官婉儿.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','突袭法师','[\"爆发\",\"突进\"]','前期','30','90','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','170','武道','长安城','长安','[\"女帝的密探\"]','上官婉儿','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(61,1,400,'2015-03-27 00:00:00',0,'0','images/司马懿.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','爆发刺客','[\"突进\"]','前期','50','90','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','184','魔道','魏都','魏','[\"魏地军师\"]','司马懿','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(62,1,400,'2015-03-25 00:00:00',0,'0','images/元歌.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','游斗刺客','[\"先手\"]','均衡','10','90','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','打野','人类','182','机关','益城','蜀','[\"机关傀儡师\"]','元歌','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(63,1,1400,'2015-01-14 00:00:00',0,'0','images/安琪拉.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]',' 炮台法师','[\"爆发\",\"护盾\"]','均衡','40','80','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','153','魔道','日落神殿','日落神殿','[\"神秘法师\"]','安琪拉','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(64,1,1400,'2015-01-29 00:00:00',0,'0','images/扁鹊.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','阵地法师','[\"持续输出\",\"治疗\"]','后期','50','40','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','173','魔道','玄雍城','玄雍','[\"医者\"]','扁鹊','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(65,1,1400,'2015-02-08 00:00:00',0,'0','images/妲己.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]',' 炮台法师','[\"爆发\",\"先手\"]','后期','20','80','20','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人造人','165','魔道','倒悬天','倒悬天','[\"姜子牙所造人偶\"]','妲己','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(66,1,1400,'2015-03-08 00:00:00',0,'0','images/干将莫邪.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','炮台法师','[\"爆发\",\"超远视距\"]','后期','40','80','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','237','魔道','云梦泽','云梦泽','[\"铸剑师\"]','干将莫邪','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(67,1,1400,'2015-02-02 00:00:00',0,'0','images/高渐离.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','阵地法师','[\"持续输出\",\"减伤\"]','均衡','50','90','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','178','魔道','南荒','南荒','[\"吟游乐师\"]','高渐离','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(68,1,1400,'2015-01-11 00:00:00',0,'0','images/姜子牙.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','炮台法师','[\"消耗\",\"团队增益\"]','前期','10','70','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','神职者','178','魔道','倒悬天','倒悬天','[\"神职者\"]','姜子牙','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(69,1,1400,'2015-03-17 00:00:00',0,'0','images/女娲.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','阵地法师','[\"消耗\",\"传送\"]',' 后期','30','90','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','超智慧体','180','魔道','倒悬天','倒悬天','[\"神\"]','女娲','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(70,1,1400,'2015-03-24 00:00:00',0,'0','images/米莱迪.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','阵地法师','[\"持续输出\",\"突进\"]','前期','20','70','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','169','机关','海都','海都家族','[\"海都执政者\"]','米莱迪','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(71,1,1400,'2015-03-29 00:00:00',0,'0','images/沈梦溪.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','炮台法师','[\"消耗\",\"加速\"]','前期','30','80','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人魔混血','151','机关','长城','长城守卫军','[\"长城守卫军成员\"]','沈梦溪','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(72,1,1400,'2015-01-30 00:00:00',0,'0','images/孙膑.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','战术辅助','[\"团控\",\"团队增益\"]','后期','200','40','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人类','155','机关','稷下','稷下学院','[\"稷下学生\"]','孙膑','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(73,1,1400,'2015-01-09 00:00:00',0,'0','images/王昭君.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','控场法师','[\"控制\",\"冰冻\"]','均衡','40','80','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','170','武道','狼旗','狼旗','[\"和亲公主\"]','王昭君','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(74,1,1400,'2015-01-17 00:00:00',0,'0','images/武则天.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','控场法师','[\"控制\",\"全图支援\"]','均衡','20','100','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','171','魔道','长安城','长安','[\"长安女帝\"]','武则天','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(75,1,1400,'2015-04-07 00:00:00',0,'0','images/西施.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','控场法师','[\"控制\",\"距离减伤\"]','均衡','10','60','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','163','魔道','稷下','稷下学院','[\"稷下学生\"]','西施','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(76,1,1400,'2015-02-11 00:00:00',0,'0','images/小乔.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','炮台法师','[\"消耗\",\"群伤\"]','后期','20','80','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','157','魔道','江郡','吴','[\"魔道名门之后\"]','小乔','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(77,1,1400,'2015-03-20 00:00:00',0,'0','images/杨玉环.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','阵地法师','[\"持续输出\",\"治疗\"]','后期','20','90','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人造人','169','魔道','长安城','尧天','[\"长乐坊乐师\"]','杨玉环','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(78,1,1400,'2015-03-22 00:00:00',0,'0','images/奕星.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','炮台法师','[\"消耗\",\"团控\"]','均衡','40','70','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','169','魔道','长安城','尧天','[\"少年棋手\"]','奕星','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(79,1,1400,'2015-02-07 00:00:00',0,'0','images/嬴政.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','炮台法师','[\"消耗\",\"加速\"]','后期','30','100','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','182','魔道','玄雍城','玄雍','[\"玄雍君主\"]','嬴政','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(80,1,1400,'2015-01-06 00:00:00',0,'0','images/张良.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','控场法师','[\"控制\",\"先手\"]','均衡','30','60','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','180','魔道','灞城','灞上','[\"天才学者\"]','张良','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(81,1,1400,'2015-01-24 00:00:00',0,'0','images/甄姬.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','控场法师','[\"控制\",\"冰冻\"]','均衡','10','70','20','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','171','魔道','魏都','魏','[\"魔道圣人之后\"]','甄姬','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(82,1,1400,'2015-02-17 00:00:00',0,'0','images/钟馗.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','进攻辅助','[\"控制\",\"先手\"]','前期','50','50','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人造人','355','机关','长安城','长安','[\"长安守护者\"]','钟馗','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(83,1,1400,'2015-01-25 00:00:00',0,'0','images/周瑜.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','阵地法师','[\"持续输出\",\"突进\"]','前期','30','90','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','180','魔道','江郡','吴','[\"吴地都郡\"]','周瑜','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(84,1,1400,'2015-03-04 00:00:00',0,'0','images/诸葛亮.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','突袭法师','[\"爆发\",\"收割\"]','后期','30','80','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','中路','人类','183','魔道','益城','蜀','[\"蜀地军师\"]','诸葛亮','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(85,1,3400,'2015-01-07 00:00:00',0,'0','images/艾琳.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','灵巧射手','[\"持续输出\"]','中期','30','80','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','发育路','精灵','165','魔道','日落神殿','黄金森林','[\"精灵公主\"]','艾琳','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(86,1,3400,'2015-02-04 00:00:00',0,'0','images/庄周.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','守护辅助','[\"团队增益\"]','后期','80','40','20','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人类','175','魔道','稷下','稷下学院','[\"稷下三贤者\"]','庄周','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(87,1,3400,'2015-02-28 00:00:00',0,'0','images/成吉思汗.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','重炮射手','[\"先手\",\"收割\"]','后期','30','80','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','发育路','人类','177','武道','狼旗','狼旗','[\"狼旗首领\"]','成吉思汗','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(88,1,3400,'2015-01-20 00:00:00',0,'0','images/狄仁杰.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','连珠射手','[\"\"]','均衡','40','90','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','发育路','人类','178','武道','长安城','长安','[\"长安治安官\"]','狄仁杰','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(89,1,3400,'2015-03-09 00:00:00',0,'0','images/伽罗.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','连珠射手','[\"远程消耗\",\"团队增益\"]','后期','30','90','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','发育路','人类','172','魔道','长城','长城守卫军','[\"千窟城继承者\"]','伽罗','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(90,1,3400,'2015-03-19 00:00:00',0,'0','images/公孙离.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','灵巧射手','[\"突进\",\"收割\"]','均衡','20','80','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','发育路','人魔混血','169','武道','长安城','尧天','[\"长乐坊舞者\"]','公孙离','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(91,1,3400,'2015-01-02 00:00:00',0,'0','images/后羿.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','连珠射手','[\"团控\",\"先手\"]','后期','40','80','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','发育路','神职者','183','武道','日之塔','日之塔','[\"神职者,\"神射手\"]','后羿','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(92,1,3400,'2015-03-05 00:00:00',0,'0','images/黄忠.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','连珠射手','[\"收割\",\"远程消耗\"]','后期','40','9','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','发育路','人类','187','武道','益城','蜀','[\"机关炮老兵\"]','黄忠','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(93,1,3400,'2015-02-18 00:00:00',0,'0','images/李元芳.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','重炮射手','[\"突进\",\"收割\"]','前期','30','80','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','发育路','人魔混血','152','武道','长安城','长安','[\"长安密探\"]','李元芳','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(94,1,3400,'2015-02-05 00:00:00',0,'0','images/鲁班七号.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','连珠射手','[\"远程消耗\"]','后期','10','100','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','发育路','人造人','149','机关','玄雍城','玄雍','[\"鲁班所造之物\"]','鲁班七号','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(95,1,3400,'2015-02-26 00:00:00',0,'0','images/马可波罗.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','灵巧射手','[\"远程消耗\"]','均衡','30','60','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','发育路','人类','179','武道','海都','海都家族','[\"冒险家\"]','马可波罗','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(96,1,3400,'2015-04-09 00:00:00',0,'0','images/蒙犽.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','连珠射手','[\"远程消耗\"]','前期','40','90','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','发育路','人类','150','机关','稷下','稷下学院','[\"稷下学生\"]','蒙犽','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(97,1,3400,'2015-02-06 00:00:00',0,'0','images/孙尚香.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','重炮射手','[\"突进\",\"收割\"]','后期','30','80','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','发育路','人类','166','武道','江郡','吴','[\"吴地小公主\"]','孙尚香','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(98,1,3400,'2015-02-21 00:00:00',0,'0','images/虞姬.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','连珠射手','[\"突进\",\"远程消耗\"]','均衡','40','80','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','发育路','人类','173','武道','鸿门','鸿门','[\"自然巡游者\"]','虞姬','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(99,1,3400,'2015-04-03 00:00:00',0,'0','images/瑶.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u8f85\\u52a9\"]','增益辅助','[\"团队增益\"]','均衡','70','30','20','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人类','162','魔道','云梦泽','云梦泽','[\"鹿灵转生者\"]','瑶','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(100,1,3400,'2015-02-23 00:00:00',0,'0','images/蔡文姬.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u8f85\\u52a9\"]','增益辅助','[\"团队增益\",\"回复\"]','均衡','50','30','20','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人类','104/180','魔道','魏都','魏','[\"音乐天才少女\"]','蔡文姬','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(101,1,3400,'2015-03-06 00:00:00',0,'0','images/大乔.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u8f85\\u52a9\"]','战术辅助','[\"团队增益\"]','均衡','10','30','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人类','168','魔道','江郡','吴','[\"魔道名门继承者\"]','大乔','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(102,1,3400,'2015-03-11 00:00:00',0,'0','images/鬼谷子.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u8f85\\u52a9\"]','进攻辅助','[\"团控\"]','均衡','50','30','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人类','150','魔道','云梦泽','云梦泽','[\"博学者\"]','鬼谷子','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(103,1,3400,'2015-04-08 00:00:00',0,'0','images/鲁班大师.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u8f85\\u52a9\"]','进攻辅助','[\"\"]','前期','60','40','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人类','192','机关','稷下','稷下','[\"稷下学生\"]','鲁班大师','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(104,1,3400,'2015-03-18 00:00:00',0,'0','images/明世隐.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u8f85\\u52a9\"]','增益辅助','[\"团队增益\"]','均衡','60','40','20','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','游走','人类','181','魔道','长安城','尧天','[\"尧天组织首领\"]','明世隐','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(105,1,0,'2015-04-01 00:00:00',0,'0','images/猪八戒.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6697\\u5f71\\u6218\\u65a7\",\"\\u53cd\\u4f24\\u523a\\u7532\"]','[\"\\u8f85\\u52a9\"]','先锋坦克','[\"团控\",\"回复\"]','均衡','70','50','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','对抗路','魔种','183','武道','日之塔','日之塔','[\"魔种起义军将领\"]','猪八戒','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(106,1,10,'2021-05-08 23:05:25',3,'5','images/猪八戒.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','狂战士','[\"\\u56e2\\u961f\\u589e\\u76ca\",\"\\u8fdc\\u7a0b\\u6d88\\u8017\",\"\\u590d\\u6d3b\",\"\\u51b2\\u950b\",\"\\u6218\\u58eb\",\"\\u5438\\u8840\",\"\\u5438\\u6536\\u4f24\\u5bb3\",\"\\u8d85\\u8fdc\\u89c6\\u8ddd\"]','均衡','27','42','43','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','打野','人类','183','武道','日之塔','日之塔','[\"\"]','name','{\"\\u8bf8\\u845b\\u4eae\":\"\\u5934\\u513f\"}','2','2','1','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','1','2021-05-05 00:00:00','2021-05-13 22:57:28'),
(107,1,0,'2021-05-08 23:05:25',0,'0','images/猪八戒.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"游走\"]','灵巧射手','[\"团队增益\"]','均衡','27','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','游走','人类','183','武道','日之塔','日之塔','[\"\"]','name','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(108,1,0,'2021-05-08 23:05:25',0,'0','images/猪八戒.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"游走\"]','灵巧射手','[\"团队增益\"]','均衡','27','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','游走','人类','183','武道','日之塔','日之塔','[\"\"]','name','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(109,1,0,'2021-05-08 23:05:25',0,'0','images/猪八戒.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"游走\"]','灵巧射手','[\"团队增益\"]','均衡','27','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','游走','人类','183','武道','日之塔','日之塔','[\"\"]','name','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(110,1,0,'2021-05-08 23:05:25',0,'0','images/猪八戒.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"游走\"]','灵巧射手','[\"团队增益\"]','均衡','27','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','游走','人类','183','武道','日之塔','日之塔','[\"\"]','zame','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(111,1,0,'2021-05-08 23:05:25',0,'0','images/猪八戒.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"游走\"]','灵巧射手','[\"团队增益\"]','均衡','27','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','游走','人类','183','武道','日之塔','日之塔','[\"\"]','name','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-05 00:00:00','2021-05-29 12:36:03'),
(112,1,0,'2021-05-08 23:05:25',0,'0','images/猪八戒.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"游走\"]','灵巧射手','[\"团队增益\"]','均衡','27','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','游走','人类','183','武道','日之塔','日之塔','[\"\"]','name','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-08 14:00:38','2021-05-29 12:36:03'),
(113,1,0,'2021-05-08 23:05:25',0,'0','images/猪八戒.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"游走\"]','灵巧射手','[\"团队增益\"]','均衡','27','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','游走','人类','183','武道','日之塔','日之塔','[\"\"]','name','[]','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','2021-05-08 15:15:17','2021-05-29 12:36:03'),
(114,1,1,'2021-05-29 00:00:00',0,'0','images/猪八戒.jpg','[\"\"]','[\"\\u8f85\\u52a9\"]','灵巧射手','[\"\"]','均衡','0','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','游走','人类','0','武道','日之塔','日之塔','[\"\"]','name','[]','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','2021-05-08 15:15:17','2021-05-29 12:39:10');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2016_01_04_173148_create_admin_tables',1),
(4,'2019_08_19_000000_create_failed_jobs_table',1),
(5,'2021_05_07_131713_create_heroes_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `temps` */

DROP TABLE IF EXISTS `temps`;

CREATE TABLE `temps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumb` varchar(100) NOT NULL DEFAULT 'images/error.png',
  `created_at` datetime DEFAULT '2021-06-01 00:00:00',
  `updated_at` datetime DEFAULT '2021-06-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `temps` */

insert  into `temps`(`id`,`thumb`,`created_at`,`updated_at`) values 
(1,'images/b3277ca44ce7edae057a663254c9fc92.png','2021-05-31 22:10:08','2021-05-31 22:10:08');

/*Table structure for table `thresholds` */

DROP TABLE IF EXISTS `thresholds`;

CREATE TABLE `thresholds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speeds` text NOT NULL,
  `thumb` varchar(1100) NOT NULL DEFAULT 'images/error.png',
  `created_at` datetime NOT NULL DEFAULT '2021-05-29 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '2021-05-29 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `thresholds` */

insert  into `thresholds`(`id`,`speeds`,`thumb`,`created_at`,`updated_at`) values 
(1,'[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"116\",\"152\"]','images/af450e61034d08ae5033736b4f6b12b3.png','2021-05-29 11:44:21','2021-05-29 15:42:05'),
(2,'[\"0\",\"1.6\",\"9.2\",\"16.8\",\"27.4\",\"38\",\"53.2\",\"69.8\",\"91\",\"116.8\",\"153.2\"]','images/error.png','2021-05-29 14:39:35','2021-05-29 14:39:35'),
(3,'[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"116\",\"152\"]','images/error.png','2021-05-29 14:41:01','2021-05-29 14:41:01'),
(4,'[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"86.4\",\"109.2\",\"139.4\",\"178.8\"]','images/error.png','2021-05-29 14:42:03','2021-05-29 14:42:03'),
(5,'[\"0\",\"1\",\"10.2\",\"21.2\",\"34.6\",\"51.4\",\"72.8\",\"101.6\",\"141.8\"]','images/error.png','2021-05-29 14:43:05','2021-05-29 14:43:05'),
(6,'[\"0\",\"3.4\",\"8.2\",\"13.6\",\"19.6\",\"26.2\",\"33.6\",\"42\",\"51.4\",\"62.274.8\",\"89.2\",\"106.4\",\"127\",\"152.2\",\"183.6\"]','images/error.png','2021-05-29 14:44:22','2021-05-29 14:44:22'),
(7,'[\"0\",\"1\",\"1.6\",\"8.2\",\"9.2\",\"16.6\",\"16.8\",\"26.2\",\"37.6\",\"38\",\"51.4\",\"53.2\",\"68.2\",\"69.8\",\"86.4\",\"89.2\",\"91\",\"109.2\",\"116\",\"116.8\",\"139.4\",\"152\",\"153.2\",\"178.8\"]','images/error.png','2021-05-29 14:47:28','2021-05-29 14:47:28'),
(8,'[\"0\",\"3.6\",\"9.4\",\"15.8\",\"23\",\"31.2\",\"40.6\",\"51.4\",\"64\",\"79\",\"96.8\",\"118.6\",\"145.8\",\"180.8\",null]','images/error.png','2021-05-29 14:48:36','2021-05-29 14:48:36'),
(9,'[\"0\",\"5.2\",\"11.4\",\"18.4\",\"26.2\",\"35.2\",\"45.6\",\"57.8\",\"72\",\"89.2\",\"110.2\",\"136.4\",\"170\"]','images/error.png','2021-05-29 14:49:34','2021-05-29 14:49:34'),
(10,'[\"0\",\"1\",\"10.2\",\"21.2\",\"34.6\",\"51.4\",\"72.8\",\"101.6\",\"141.8\"]','images/error.png','2021-05-29 14:50:27','2021-05-29 14:50:27'),
(11,'[\"0\",\"1\",\"1.6\",\"8.2\",\"9.2\",\"16.6\",\"18.2\",\"26.2\",\"28.8\",\"37.6\",\"42.6\",\"51.4\",\"57.6\",\"68.2\",\"77.4\",\"89.2\",\"103.2\",\"116\",\"136.4\",\"152\",\"183.4\"]','images/error.png','2021-05-29 14:52:17','2021-05-29 14:52:17'),
(12,'[\"0\",\"1.6\",\"7.6\",\"15.2\",\"22.8\",\"31.2\",\"41\",\"53.2\",\"66.8\",\"83.4\",\"103.2\",\"128.8\",\"160.8\"]','images/error.png','2021-05-29 14:53:22','2021-05-29 14:53:22'),
(13,'[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"103.2\",\"132\",\"171.4\"]','images/error.png','2021-05-29 14:54:48','2021-05-29 14:54:48'),
(14,'[\"0\",\"4.6\",\"7.6\",\"12.2\",\"18.2\",\"22.8\",\"30.4\",\"36.4\",\"44\",\"53.2\",\"62.2\",\"72.8\",\"85\",\"98.6\",\"115.8\",\"135\",\"159.2\",\"186.4\"]','images/error.png','2021-05-29 14:56:52','2021-05-29 14:56:52'),
(15,'[\"0\",\"1\",\"10.2\",\"21.2\",\"34.6\",\"51.4\",\"72.8\",\"101.6\",\"141.8\"]','images/error.png','2021-05-29 14:57:47','2021-05-29 14:57:47'),
(16,'[\"0\",\"1\",\"1.6\",\"8.2\",\"9.2\",\"16.6\",\"26.2\",\"27.4\",\"37.6\",\"38\",\"51.4\",\"53.2\",\"68.2\",\"69.8\",\"89.2\",\"91\",\"116\",\"116.8\",\"152\",\"153.2\"]','images/error.png','2021-05-29 14:59:16','2021-05-29 14:59:16'),
(17,'[\"0\",\"1\",\"7\",\"13.6\",\"21.2\",\"29.8\",\"39.8\",\"51.4\",\"65.2\",\"81.6\",\"101.6\",\"127\",\"156.2\",\"192.6\"]','images/error.png','2021-05-29 15:00:54','2021-05-29 15:00:54'),
(18,'[\"0\"]','images/36a1b32afce804c9df3eb907b549ab1d.png','2021-05-31 21:55:56','2021-05-31 21:55:56');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

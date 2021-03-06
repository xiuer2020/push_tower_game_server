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
) ENGINE=InnoDB AUTO_INCREMENT=486 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(448,1,'admin/temps','GET','127.0.0.1','[]','2021-05-31 22:14:28','2021-05-31 22:14:28'),
(449,1,'admin/temps/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-05-31 22:20:49','2021-05-31 22:20:49'),
(450,1,'admin/temps/1','PUT','127.0.0.1','{\"_token\":\"cKQbCoPcNhcTrvv1ZiEdRZCEptpnQlcE1rQzpU2w\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/temps\"}','2021-05-31 22:20:58','2021-05-31 22:20:58'),
(451,1,'admin/temps','GET','127.0.0.1','[]','2021-05-31 22:20:59','2021-05-31 22:20:59'),
(452,1,'admin/heros','GET','127.0.0.1','[]','2021-06-01 20:10:25','2021-06-01 20:10:25'),
(453,1,'admin/thresholds','GET','127.0.0.1','[]','2021-06-01 20:10:34','2021-06-01 20:10:34'),
(454,1,'admin/thresholds/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-06-01 20:11:10','2021-06-01 20:11:10'),
(455,1,'admin/thresholds/1','PUT','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"116\",\"152\"]},\"_token\":\"w3BmCNw5KCfCn9Dva5fywu4liozmXflYt5n6WNz4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-06-01 20:11:21','2021-06-01 20:11:21'),
(456,1,'admin/thresholds','GET','127.0.0.1','[]','2021-06-01 20:11:24','2021-06-01 20:11:24'),
(457,1,'admin/thresholds/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-06-01 20:11:30','2021-06-01 20:11:30'),
(458,1,'admin/thresholds/2','PUT','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1.6\",\"9.2\",\"16.8\",\"27.4\",\"38\",\"53.2\",\"69.8\",\"91\",\"116.8\",\"153.2\"]},\"_token\":\"w3BmCNw5KCfCn9Dva5fywu4liozmXflYt5n6WNz4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-06-01 20:11:38','2021-06-01 20:11:38'),
(459,1,'admin/thresholds','GET','127.0.0.1','[]','2021-06-01 20:11:41','2021-06-01 20:11:41'),
(460,1,'admin/thresholds/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-06-01 20:11:51','2021-06-01 20:11:51'),
(461,1,'admin/thresholds/3','PUT','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"116\",\"152\"]},\"_token\":\"w3BmCNw5KCfCn9Dva5fywu4liozmXflYt5n6WNz4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-06-01 20:12:01','2021-06-01 20:12:01'),
(462,1,'admin/thresholds','GET','127.0.0.1','[]','2021-06-01 20:12:03','2021-06-01 20:12:03'),
(463,1,'admin/thresholds/4/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-06-01 20:12:19','2021-06-01 20:12:19'),
(464,1,'admin/thresholds/4','PUT','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"86.4\",\"109.2\",\"139.4\",\"178.8\"]},\"_token\":\"w3BmCNw5KCfCn9Dva5fywu4liozmXflYt5n6WNz4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-06-01 20:12:27','2021-06-01 20:12:27'),
(465,1,'admin/thresholds','GET','127.0.0.1','[]','2021-06-01 20:12:30','2021-06-01 20:12:30'),
(466,1,'admin/thresholds/5/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-06-01 20:12:40','2021-06-01 20:12:40'),
(467,1,'admin/thresholds/5','PUT','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"1\",\"10.2\",\"21.2\",\"34.6\",\"51.4\",\"72.8\",\"101.6\",\"141.8\"]},\"_token\":\"w3BmCNw5KCfCn9Dva5fywu4liozmXflYt5n6WNz4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-06-01 20:12:49','2021-06-01 20:12:49'),
(468,1,'admin/thresholds','GET','127.0.0.1','[]','2021-06-01 20:12:51','2021-06-01 20:12:51'),
(469,1,'admin/thresholds/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-06-01 20:13:02','2021-06-01 20:13:02'),
(470,1,'admin/thresholds/6','PUT','127.0.0.1','{\"speeds\":{\"values\":[\"0\",\"3.4\",\"8.2\",\"13.6\",\"19.6\",\"26.2\",\"33.6\",\"42\",\"51.4\",\"62.274.8\",\"89.2\",\"106.4\",\"127\",\"152.2\",\"183.6\"]},\"_token\":\"w3BmCNw5KCfCn9Dva5fywu4liozmXflYt5n6WNz4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/s1.wzry.com\\/admin\\/thresholds\"}','2021-06-01 20:13:11','2021-06-01 20:13:11'),
(471,1,'admin/thresholds','GET','127.0.0.1','[]','2021-06-01 20:13:14','2021-06-01 20:13:14'),
(472,1,'admin/thresholds/7/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-06-01 20:13:44','2021-06-01 20:13:44'),
(473,1,'admin/equipments','GET','127.0.0.1','[]','2021-06-01 20:14:56','2021-06-01 20:14:56'),
(474,1,'admin/heros','GET','127.0.0.1','[]','2021-06-01 20:55:03','2021-06-01 20:55:03'),
(475,1,'admin/heros','GET','127.0.0.1','[]','2021-06-01 21:53:22','2021-06-01 21:53:22'),
(476,1,'admin/thresholds','GET','127.0.0.1','[]','2021-06-01 21:53:23','2021-06-01 21:53:23'),
(477,1,'admin/_handle_action_','POST','127.0.0.1','{\"_key\":\"18\",\"_model\":\"App_Models_Threshold\",\"_token\":\"w3BmCNw5KCfCn9Dva5fywu4liozmXflYt5n6WNz4\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2021-06-01 21:53:51','2021-06-01 21:53:51'),
(478,1,'admin/thresholds','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2021-06-01 21:53:53','2021-06-01 21:53:53'),
(479,1,'admin/equipments','GET','127.0.0.1','[]','2021-06-01 21:54:03','2021-06-01 21:54:03'),
(480,1,'admin/heros','GET','127.0.0.1','[]','2021-06-01 21:56:10','2021-06-01 21:56:10'),
(481,1,'admin/equipments','GET','127.0.0.1','[]','2021-06-01 22:03:33','2021-06-01 22:03:33'),
(482,1,'admin/equipments','GET','127.0.0.1','{\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}','2021-06-01 22:03:43','2021-06-01 22:03:43'),
(483,1,'admin/equipments','GET','127.0.0.1','{\"per_page\":\"100\"}','2021-06-01 22:06:09','2021-06-01 22:06:09'),
(484,1,'admin/equipments','GET','127.0.0.1','{\"per_page\":\"100\"}','2021-06-01 22:14:58','2021-06-01 22:14:58'),
(485,1,'admin/heros','GET','127.0.0.1','[]','2021-06-12 15:28:16','2021-06-12 15:28:16');

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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????id',
  `price` int(5) NOT NULL DEFAULT '1' COMMENT '????????????',
  `name` varchar(10) NOT NULL DEFAULT 'name' COMMENT '????????????',
  `type` varchar(20) NOT NULL DEFAULT 'type' COMMENT '????????????',
  `picture` varchar(100) NOT NULL DEFAULT 'images/error.png' COMMENT '?????????????????????',
  `decription` varchar(100) NOT NULL DEFAULT 'decription' COMMENT '????????????',
  `passive_name` varchar(100) NOT NULL DEFAULT 'passive_name' COMMENT '????????????',
  `passive_description` varchar(100) NOT NULL DEFAULT 'passive_description' COMMENT '????????????',
  `active_name` varchar(100) NOT NULL DEFAULT 'active_name' COMMENT '????????????',
  `active_description` varchar(100) NOT NULL DEFAULT 'active_description' COMMENT '????????????',
  `created_at` datetime NOT NULL DEFAULT '2021-05-29 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '2021-05-29 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

/*Data for the table `equipments` */

insert  into `equipments`(`id`,`price`,`name`,`type`,`picture`,`decription`,`passive_name`,`passive_description`,`active_name`,`active_description`,`created_at`,`updated_at`) values 
(1,250,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(2,290,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(3,320,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(4,410,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(5,910,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(6,790,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(7,890,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(8,1080,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(9,450,'?????????','??????','images/?????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(10,550,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(11,2000,'?????????','??????','images/?????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(12,1900,'??????,??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(13,1980,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(14,890,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(15,2100,'?????????','??????','images/?????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(16,1100,'?????????','??????','images/?????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(17,1800,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(18,2120,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(19,2160,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(20,1740,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(21,2140,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(22,2100,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(23,1840,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(24,2070,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(25,2090,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(26,2950,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(27,2100,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(28,3400,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(29,4180,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(30,300,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(31,220,'?????????','??????','images/?????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(32,120,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(33,500,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(34,540,'?????????','??????','images/?????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(35,820,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(36,1240,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(37,730,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(38,890,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(39,720,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(40,1950,'???????????????','??????','images/???????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(41,800,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(42,1990,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(43,970,'?????????','??????','images/?????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(44,2120,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(45,2070,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(46,2050,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(47,1800,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(48,2110,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(49,2300,'???????????????','??????','images/???????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(50,2100,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(51,2100,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(52,2040,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(53,2120,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(54,2090,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(55,2990,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(56,2090,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(57,4070,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(58,300,'?????????','??????','images/?????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(59,220,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(60,220,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(61,140,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(62,900,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(63,900,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(64,1020,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(65,900,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(66,730,'???????????????','??????','images/???????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(67,1910,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(68,2120,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(69,2100,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(70,710,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(71,710,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(72,2080,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(73,1830,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(74,2070,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(75,2180,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(76,2100,'???????????????','??????','images/???????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(77,2080,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(78,2100,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(79,2080,'???????????????','??????','images/???????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(80,1950,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(81,2110,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(82,4200,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(83,4180,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(84,2070,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(85,250,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(86,710,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(87,710,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(88,710,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(89,710,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(90,710,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(91,710,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(92,250,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(93,250,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(94,750,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(95,750,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(96,750,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(97,750,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(98,2160,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(99,1960,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(100,2160,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(101,2080,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(102,300,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(103,1070,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(104,1010,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(105,1180,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(106,1210,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(107,1910,'??????','??????','images/??????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(108,1800,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(109,2090,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24'),
(110,2010,'????????????','??????','images/????????????.jpg','decription','passive_name','passive_description','active_name','active_description','2021-05-29 00:00:00','2021-06-01 22:03:24');

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
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '??????id',
  `threshold_id` int(11) NOT NULL DEFAULT '1' COMMENT '???????????????id',
  `proficiency` int(20) NOT NULL DEFAULT '1' COMMENT '???????????????',
  `add_time` datetime NOT NULL DEFAULT '2021-05-29 00:00:00' COMMENT '??????????????????',
  `combat_power` int(20) NOT NULL DEFAULT '0' COMMENT '???????????????',
  `area_code` varchar(20) NOT NULL DEFAULT '0' COMMENT '????????????',
  `bonus` float NOT NULL DEFAULT '1' COMMENT '????????????',
  `amount` int(2) NOT NULL DEFAULT '1' COMMENT '??????????????????',
  `remark` varchar(200) NOT NULL DEFAULT 'remark' COMMENT '??????',
  `head_portrait` varchar(100) NOT NULL DEFAULT 'head_thumb' COMMENT '??????',
  `out_loading` varchar(255) NOT NULL COMMENT '????????????',
  `occupation` varchar(100) NOT NULL DEFAULT '[]' COMMENT '????????????',
  `location` varchar(250) NOT NULL DEFAULT '[]' COMMENT '????????????',
  `specialty` varchar(1000) NOT NULL DEFAULT '[""]' COMMENT '????????????',
  `period` varchar(100) NOT NULL DEFAULT 'period' COMMENT '????????????',
  `existence` varchar(100) NOT NULL DEFAULT '0' COMMENT '????????????',
  `output` varchar(100) NOT NULL DEFAULT '0' COMMENT '????????????',
  `difficulty` varchar(100) NOT NULL DEFAULT '0' COMMENT '????????????',
  `poster` varchar(100) NOT NULL DEFAULT 'images/error.png' COMMENT '????????????',
  `full_body_video` varchar(100) NOT NULL DEFAULT 'files/error.png' COMMENT '??????????????????',
  `shunt` varchar(100) NOT NULL DEFAULT 'shunt' COMMENT '????????????',
  `race` varchar(20) NOT NULL DEFAULT 'race' COMMENT '????????????',
  `height` varchar(20) NOT NULL DEFAULT '0' COMMENT '????????????',
  `energy` varchar(100) NOT NULL DEFAULT 'energy' COMMENT '????????????',
  `city` varchar(100) NOT NULL DEFAULT 'city' COMMENT '????????????',
  `power` varchar(20) NOT NULL DEFAULT 'power' COMMENT '????????????',
  `identity` varchar(20) NOT NULL DEFAULT 'identity' COMMENT '????????????',
  `relevant` varchar(100) NOT NULL DEFAULT '[]' COMMENT '??????????????????',
  `min_spell_defense` int(5) NOT NULL DEFAULT '50' COMMENT '????????????????????????',
  `min_health` int(5) NOT NULL DEFAULT '0' COMMENT '?????????????????????',
  `min_mana` int(5) NOT NULL DEFAULT '0' COMMENT '?????????????????????',
  `min_physical_attack` int(5) NOT NULL DEFAULT '0' COMMENT '????????????????????????',
  `min_physical_defense` int(5) NOT NULL DEFAULT '0' COMMENT '????????????????????????',
  `moving_speed` int(5) NOT NULL DEFAULT '0' COMMENT '??????????????????',
  `return_blood` int(5) NOT NULL DEFAULT '0' COMMENT '???5?????????',
  `return_to_blue` int(5) NOT NULL DEFAULT '0' COMMENT '???5?????????',
  `magic_attack` int(5) NOT NULL DEFAULT '0' COMMENT '??????????????????',
  `name` varchar(20) NOT NULL DEFAULT 'name' COMMENT '????????????',
  `max_physical_attack` int(5) NOT NULL DEFAULT '0' COMMENT '????????????????????????',
  `maximum_health` int(5) NOT NULL DEFAULT '1' COMMENT '?????????????????????',
  `physical_defense` int(5) NOT NULL DEFAULT '0' COMMENT '????????????????????????',
  `growth_attack_speed` int(5) NOT NULL DEFAULT '0' COMMENT '??????????????????',
  `max_spell_defense` int(5) NOT NULL DEFAULT '169' COMMENT '????????????????????????',
  `growth_physical_attack` int(5) NOT NULL DEFAULT '0' COMMENT '????????????????????????',
  `growth_health` int(5) NOT NULL DEFAULT '1' COMMENT '?????????????????????',
  `growth_physical_defense` int(5) NOT NULL DEFAULT '0' COMMENT '????????????????????????',
  `physical_penetration` int(5) NOT NULL DEFAULT '0' COMMENT '??????????????????',
  `spell_penetration` int(5) NOT NULL DEFAULT '0' COMMENT '??????????????????',
  `attack_speed` int(5) NOT NULL DEFAULT '0' COMMENT '??????????????????',
  `critical_hit_probability` int(5) NOT NULL DEFAULT '0' COMMENT '??????????????????',
  `critical_hit_effect` int(5) NOT NULL DEFAULT '200' COMMENT '??????????????????',
  `physical_blood_sucking` int(5) NOT NULL DEFAULT '0' COMMENT '??????????????????',
  `sorcery_sucks_blood` int(5) NOT NULL DEFAULT '0' COMMENT '??????????????????',
  `cooling_reduction` int(5) NOT NULL DEFAULT '0' COMMENT '??????????????????',
  `attack_range` varchar(255) NOT NULL DEFAULT '??????' COMMENT '??????????????????',
  `toughness` int(5) NOT NULL DEFAULT '0' COMMENT '????????????',
  `created_at` datetime NOT NULL DEFAULT '2021-05-29 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '2021-05-29 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

/*Data for the table `heros` */

insert  into `heros`(`id`,`threshold_id`,`proficiency`,`add_time`,`combat_power`,`area_code`,`bonus`,`amount`,`remark`,`head_portrait`,`out_loading`,`occupation`,`location`,`specialty`,`period`,`existence`,`output`,`difficulty`,`poster`,`full_body_video`,`shunt`,`race`,`height`,`energy`,`city`,`power`,`identity`,`relevant`,`min_spell_defense`,`min_health`,`min_mana`,`min_physical_attack`,`min_physical_defense`,`moving_speed`,`return_blood`,`return_to_blue`,`magic_attack`,`name`,`max_physical_attack`,`maximum_health`,`physical_defense`,`growth_attack_speed`,`max_spell_defense`,`growth_physical_attack`,`growth_health`,`growth_physical_defense`,`physical_penetration`,`spell_penetration`,`attack_speed`,`critical_hit_probability`,`critical_hit_effect`,`physical_blood_sucking`,`sorcery_sucks_blood`,`cooling_reduction`,`attack_range`,`toughness`,`created_at`,`updated_at`) values 
(1,1,0,'2015-04-12 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6781\\u5f71\",\"\\u6012\\u9b42\"]','[\"\\u5766\\u514b\",\"\\u6218\\u58eb\",\"\\u523a\\u5ba2\",\"\\u6cd5\\u5e08\",\"\\u5c04\\u624b\"]','????????????','[\"??????\",\"????????????\"]','??????','90','50','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','145','??????','??????','???','[\"??????\"]','{\"?????????\": \"??????\", \"??????\": \"?????????\"}',50,946,0,166,107,380,50,0,0,'?????????',349,8869,415,0,169,13,565,22,0,0,1,0,200,0,0,0,'??????',1,'2021-05-07 14:03:56','2021-06-12 20:49:44'),
(2,1,0,'2015-01-28 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",null]','[\"\\u5766\\u514b\"]','????????????','[\"??????\"]','??????','80','40','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','193','??????','?????????','??????','[\"??????\"]','[]',50,3040,100,179,102,370,50,0,0,'??????',289,7242,432,1,169,7,300,23,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(3,1,0,'2015-03-31 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\\u70bd\\u70ed\\u652f\\u914d\\u8005\",\"\\u5f71\\u5fcd\\u4e4b\\u8db3\",\"\\u8fdb\\u5316\\u6c34\\u6676\",\"\\u84dd\\u5b9d\\u77f3\",\"\\u84dd\\u5b9d\\u77f3\",\"\\u84dd\\u5b9d\\u77f3\",\"\\u65f6\\u4e4b\\u9884\\u8a00\",\"\\u5deb\\u5e08\\u6cd5\\u6756\",\"\\u6781\\u5bd2\\u98ce\\u66b4\"]','[\"\\u5766\\u514b\",\"\\u6cd5\\u5e08\"]','????????????','[\"????????????\",\"????????????\"]','??????','80','70','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','171','??????','?????????','?????????','[\"??????????????????\"]','[]',50,1620,1000,167,70,370,23,16,0,'??????',307,4560,331,0,169,10,210,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(4,1,0,'2015-01-13 00:00:00',0,'378',1,1,'remark','images/?????????.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u4e0d\\u6b7b\\u9e1f\\u4e4b\\u773c\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','????????????','[\"??????\", \"??????\"]','??????','90','50','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','200','??????','?????????','??????','[\"??????\"]','[]',50,3250,0,185,107,380,85,0,0,'?????????',318,8949,430,2,169,9,407,23,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(5,1,0,'2015-01-19 00:00:00',0,'384',1,1,'remark','images/??????.jpg','[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u8840\\u9b54\\u4e4b\\u6012\"]','[\"\\u5766\\u514b\"]','????????????','[\"\\u56e2\\u63a7\",\"\\u7a81\\u8fdb\"]','??????','70','50','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','177','??????','?????????','??????','[\"??????\"]','[]',50,3213,420,171,95,380,51,15,0,'??????',355,7140,415,3,169,13,280,22,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(6,1,0,'2015-03-07 00:00:00',0,'0',1,1,'remark','images/????????????.jpg','[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u4e0d\\u6b7b\\u9e1f\\u4e4b\\u773c\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u8840\\u9b54\\u4e4b\\u6012\"]','[\"\\u5766\\u514b\"]','????????????','[\"??????\",\"????????????\"]','??????','80','50','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','215','??????','?????????','?????????','[\"?????????????????????\"]','[]',50,3201,470,163,99,350,88,17,0,'????????????',286,7669,360,1,169,8,319,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(7,1,0,'2015-03-28 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u4e0d\\u7965\\u5f81\\u5146\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u8840\\u9b54\\u4e4b\\u6012\",\"\\u75be\\u6b65\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','????????????','[\"????????????\",\"??????\"]','??????','100','40','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','?????????','283','??????','??????','???????????????','[\"?????????????????????\"]','[]',50,3361,10,207,126,370,48,2,0,'??????',316,7706,516,1,169,7,310,27,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(8,1,0,'2015-03-12 00:00:00',0,'0',1,1,'remark','images/???.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u66b4\\u70c8\\u4e4b\\u7532\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','????????????','[]','??????','70','70','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','188','??????','??????','???????????????','[\"?????????????????????\"]','[]',50,3387,440,176,107,390,44,16,0,'???',328,7357,388,2,169,10,283,20,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(9,1,0,'2015-02-12 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]','[\"\\u5766\\u514b\"]','????????????','[\"??????\",\"??????\"]','??????','100','40','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','190','??????','??????','???????????? ','[\"????????????\"]','[]',50,3135,100,183,94,370,78,0,0,'??????',288,7612,452,1,169,7,319,25,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(10,1,0,'2015-02-19 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','????????????','[\"??????\"]','??????','80','50','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','179','??????','??????','??????','[\"???????????????\"]','[]',50,3199,470,180,121,400,88,17,0,'??????',303,8148,457,3,169,8,353,24,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(11,1,0,'2015-02-03 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]','[\"\\u5766\\u514b\"]','????????????','[\"\\u56e2\\u63a7\",\"\\u63a8\\u8fdb\"]','??????','70','50','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','145/210','??????','??????','???','[\"???????????????\"]','[]',50,3364,420,178,139,380,84,15,0,'??????',295,8581,459,1,169,8,372,22,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(12,1,0,'2015-01-26 00:00:00',0,'391',1,1,'remark','images/??????.jpg','[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u4e0d\\u7965\\u5f81\\u5146\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u5f71\\u5203\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','????????????','[\"??????\"]','??????','60','60','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','192','??????','??????','','[\"???????????????\"]','[]',50,3564,0,181,99,380,54,1,0,'??????',354,7344,390,1,169,12,270,20,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(13,1,0,'2015-04-11 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6781\\u5bd2\\u98ce\\u66b4\",\"\\u66b4\\u70c8\\u4e4b\\u7532\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','????????????','[\"??????\"]','??????','70','70','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','190','??????','?????????','??????','[\"?????????????????????\"]','[]',50,3079,1000,168,115,370,76,0,0,'??????',294,7599,470,1,169,9,322,25,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(14,1,0,'2015-03-16 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5766\\u514b\"]','????????????','[\"????????????\",\"??????\"]','??????','70','60','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','97','??????','?????????','?????????','[\"?????????\"]','[]',50,3041,100,171,39,380,76,0,0,'??????',476,6361,814,1,169,21,237,55,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(15,1,0,'2015-01-27 00:00:00',0,'392',1,1,'remark','images/??????.jpg','[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u4e0d\\u6b7b\\u9e1f\\u4e4b\\u773c\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u6781\\u5bd2\\u98ce\\u66b4\"]','[\"\\u5766\\u514b\"]','????????????','[\"????????????\",\"??????\"]','??????','60','70','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','175','??????','?????????','??????','[\"????????????\"]','[]',50,3119,100,152,88,370,44,0,0,'??????',289,6311,361,0,169,9,228,19,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(16,1,0,'2015-01-03 00:00:00',0,'369',1,1,'remark','images/??????.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','????????????','[\"??????\",\"????????????\"]','??????','70','40','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','230','??????','?????????','?????????','[\"?????????????????????\"]','[]',50,3537,470,156,109,380,88,17,0,'??????',273,8476,394,1,169,8,352,20,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(17,1,0,'2015-03-15 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','????????????','[\"??????\",\"??????\"]','??????','70','60','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','208','??????','??????','???????????????','[\"?????????????????????\"]','[]',50,3284,470,192,91,380,86,17,0,'??????',302,8780,333,1,169,7,392,17,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(18,1,0,'2015-03-26 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]','[\"\\u5766\\u514b\"]','????????????','[\"??????\",\"??????\"]','??????','70','70','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','185','??????','??????','???','[\"???????????????\"]','[]',50,3320,420,151,97,380,80,15,0,'??????',291,7885,396,1,169,10,326,21,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(19,1,0,'2015-03-02 00:00:00',0,'0',1,1,'remark','images/????????????.jpg','[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u62b5\\u6297\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\"]','????????????','[\"\\u56e2\\u961f\\u589e\\u76ca\",\"\\u590d\\u6d3b\"]','??????','50','50','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','120/230','??????','?????????','?????????','[\"?????????\"]','[]',50,3274,420,154,89,380,46,15,0,'????????????',284,7058,376,1,169,9,270,20,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(20,1,0,'2015-02-24 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6697\\u5f71\\u6218\\u65a7\",\"\\u53cd\\u4f24\\u523a\\u7532\"]','[\"\\u5766\\u514b\"]','????????????','[\"\\u56e2\\u63a7\",\"\\u7a81\\u8fdb\"]','??????','70','50','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','186','??????','??????','???','[\"????????????\"]','[]',50,3221,430,182,89,380,84,15,0,'?????????',315,7747,350,2,169,9,323,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(21,1,0,'2015-01-18 00:00:00',0,'383',1,1,'remark','images/??????.jpg','[\"\\u5f71\\u5fcd\\u4e4b\\u8db3\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]','[\"\\u5766\\u514b\"]','????????????','[\"??????\",\"??????\"]','??????','90','50','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','197','??????','??????','??????','[\"??????\"]','[]',50,3045,420,200,103,370,76,15,0,'??????',333,6490,415,0,169,9,246,22,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(22,1,0,'2015-01-05 00:00:00',0,'371',1,1,'remark','images/??????.jpg','[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u4e0d\\u7965\\u5f81\\u5146\",\"\\u6012\\u9b42\"]','[\"\\u5766\\u514b\"]','????????????','[\"??????\",\"??????\"]','??????','80','50','20','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','188','??????','????????????','????????????','[\"??????????????????\"]','[]',50,1622,0,164,98,390,55,0,0,'??????',346,8050,400,1,169,13,459,21,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(23,1,0,'2015-01-01 00:00:00',0,'367',1,1,'remark','images/??????.jpg','[\"\\u9f99\\u9cde\\u5229\\u5251\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\",\"\\u6025\\u901f\\u4e4b\\u9774\"]','[\"\\u5766\\u514b\",\"\\u8f85\\u52a9\"]','????????????','[\"??????\",\"????????????\"]','??????','100','40','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','????????????','186','??????','??????','???','[\"????????????\"]','[]',50,3450,100,153,125,380,86,5,0,'??????',301,8341,504,1,169,10,349,27,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(24,1,0,'2015-01-31 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u53cd\\u4f24\\u523a\\u7532\",\"\\u9738\\u8005\\u91cd\\u88c5\"]','[\"\\u5766\\u514b\"]','????????????','[\"??????\",\"??????\"]','??????','80','80','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','????????????','177','??????','??????','????????????','[\"????????????\"]','[]',50,3338,430,175,100,380,48,15,0,'?????????',354,7196,409,1,169,12,275,22,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(25,1,100,'2015-01-23 00:00:00',0,'388',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','?????????','[\"??????\"]','??????','60','60','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','179','??????','??????','???','[\"????????????\"]','[]',50,3467,0,174,104,380,54,0,0,'??????',361,7473,371,1,169,13,286,19,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(26,1,100,'2015-01-22 00:00:00',0,'387',1,1,'remark','images/??????.jpg','[null,null,null,null,null,null]','[\"\\u6218\\u58eb\"]','?????????','[\"??????\"]','??????','60','60','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','183','??????','??????','???','[\"????????????\"]','[]',50,3434,430,168,89,390,52,16,0,'??????',345,7516,402,3,169,12,291,22,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(27,1,100,'2015-01-21 00:00:00',0,'386',1,1,'remark','images/????????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\",\"??????\"]','??????','40','70','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','181','??????','??????','??????','[\"????????????\"]','[]',50,3128,0,157,106,400,48,0,0,'????????????',330,6692,391,1,169,12,254,20,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(28,1,100,'2015-02-22 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\",\"??????\"]','??????','60','60','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','191','??????','??????','???','[\"????????????\"]','[]',50,3451,10,170,101,380,53,0,0,'??????',343,7383,386,1,169,12,280,20,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(29,1,100,'2015-01-08 00:00:00',0,'373',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\",\"??????\"]','??????','50','70','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','174','??????','??????','???????????????','[\"?????????????????????\"]','[]',50,3231,100,155,86,380,54,0,0,'?????????',317,5793,349,2,169,11,183,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(30,1,100,'2015-02-27 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\",\"??????\"]','??????','50','60','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','176','??????','??????','??????','[\"????????????\"]','[]',50,3150,0,165,96,390,48,0,0,'?????????',347,7000,392,1,169,13,275,21,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(31,1,100,'2015-03-23 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\",\"??????\"]','??????','60','60','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','171','??????','??????','????????????','[\"????????????\"]','[]',50,3263,90,166,95,390,50,0,0,'??????',345,6624,394,2,169,12,240,21,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(32,1,100,'2015-01-16 00:00:00',0,'381',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','?????????','[\"??????\"]','??????','70','70','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','?????????','173','??????','??????','????????????','[\"???????????????\"]','[]',50,3370,5,174,100,390,51,0,0,'?????????',337,7155,409,5,169,11,270,22,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(33,1,100,'2015-03-10 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','?????????','[\"??????\",\"??????\"]','??????','60','70','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','187','??????/??????','??????','???????????????','[\"?????????????????????\"]','[]',50,3418,0,176,106,370,52,0,0,'??????',362,7203,405,1,169,13,270,21,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(34,1,100,'2015-02-13 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','?????????','[\"??????\",\"??????\"]','??????','50','50','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','178','??????','??????','???','[\"????????????\"]','[]',50,3225,440,163,113,380,40,15,0,'??????',363,6900,381,2,169,14,262,19,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(35,1,100,'2015-01-12 00:00:00',0,'377',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\",\"??????\"]','??????','50','70','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','173','??????','??????','??????','[\"?????????????????????\"]','[]',50,3021,450,163,102,380,52,16,0,'??????',335,6612,375,2,169,12,256,19,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(36,1,100,'2015-04-06 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\"]','??????','40','80','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','180','??????','??????','???','[\"????????????\"]','[]',50,3307,4,168,96,370,50,0,0,'??????',345,7350,392,1,169,12,288,21,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(37,1,100,'2015-02-09 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\",\"??????\"]','??????','50','50','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','182/512','??????','??????','????????????','[\"???????????????\"]','[]',50,3078,420,191,102,380,76,15,0,'??????',350,6709,475,2,169,11,259,26,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(38,1,100,'2015-03-03 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\",\"????????????\"]','??????','80','60','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','175','??????','?????????','?????????','[\"?????????????????????\"]','[]',50,3483,450,159,99,380,53,16,0,'??????',320,7268,408,2,169,11,270,22,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(39,1,100,'2015-04-02 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','?????????','[\"??????\",\"??????\"]','??????','50','70','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','????????????','212','??????','?????????','?????????','[\"???\"]','[]',50,3439,10,160,94,390,51,1,0,'??????',329,7520,416,2,169,12,291,23,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(40,1,100,'2015-03-21 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"????????????\",\"??????\"]','??????','40','80','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','????????????','177','??????','?????????','??????','[\"??????\"]','[]',50,3178,200,151,86,370,45,50,0,'?????????',348,6088,359,1,169,14,207,19,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(41,1,100,'2015-04-15 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','?????????','[\"??????\"]','??????','40','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','190','??????','?????????','??????','[\"???????????????\"]','[]',50,3300,6,168,85,370,50,0,0,'?????????',338,6800,384,1,169,12,250,21,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(42,1,100,'2015-01-04 00:00:00',0,'370',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\",\"??????\"]','??????','40','80','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','180','??????','?????????','?????????','[\"?????????????????????\"]','[]',50,3293,430,167,94,380,50,15,0,'?????????',349,6585,385,1,169,13,235,20,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(43,1,100,'2015-04-13 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\",\"??????\"]','??????','60','70','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','190','??????','?????????','????????????','[\"????????????\"]','[]',50,3267,0,150,101,390,50,0,0,'?????????',319,6832,413,2,169,12,254,22,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(44,1,100,'2015-02-25 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\"]','??????','70','60','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','178','??????','????????????','????????????','[\"???????????????\"]','[]',50,2862,430,162,106,400,44,15,0,'?????????',327,6264,418,2,169,11,243,22,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(45,1,100,'2015-03-01 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\",\"??????\"]','??????','60','60','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','?????????','185','??????','?????????','?????????','[\"?????????\"]','[]',50,3339,420,166,98,380,51,15,0,'??????',325,7623,428,2,169,11,306,23,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(46,1,100,'2015-04-05 00:00:00',0,'0',1,1,'remark','images/???.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"\"]','??????','70','60','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','176','??????','??????','????????????','[\"????????????\"]','[]',50,3225,3,149,94,370,49,0,0,'???',314,6900,406,2,169,11,262,22,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(47,1,100,'2015-04-04 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\",\"??????\"]','??????','40','90','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','182','??????','?????????','?????????','[\"???????????????\"]','[]',50,3190,100,166,91,350,49,0,0,'?????????',378,6074,357,2,169,15,206,19,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(48,1,100,'2015-02-10 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','????????????','[\"??????\"]','??????','60','60','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','186','??????','??????','???','[\"????????????\"]','[]',50,3366,430,173,84,380,50,15,0,'??????',380,6936,394,2,169,14,255,22,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(49,1,400,'2015-02-01 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','????????????','[\"??????\",\"??????\"]','??????','30','100','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','171','??????','??????','??????','[\"????????????\"]','[]',50,3269,0,177,89,380,50,0,0,'??????',427,5968,349,2,169,17,192,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(50,1,400,'2015-03-13 00:00:00',0,'0',1,1,'remark','images/????????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','????????????','[\"????????????\"]','??????','20','70','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','????????????','182','??????','??????','???????????????','[\"?????????????????????\"]','[]',50,3019,440,188,94,350,39,16,0,'????????????',410,5611,329,4,169,15,185,16,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(51,1,400,'2015-03-14 00:00:00',0,'0',1,1,'remark','images/????????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','????????????','[\"??????\",\"??????\"]','??????','40','80','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','????????????','171','??????','??????','???????????????','[\"?????????????????????\"]','[]',50,3359,450,178,88,380,51,16,0,'????????????',396,6633,369,1,169,15,233,20,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(52,1,400,'2015-02-20 00:00:00',0,'0',1,1,'remark','images/????????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','????????????','[\"??????\",\"??????\"]','??????','30','80','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','165','??????','??????','??????','[\"?????????????????????\"]','[]',50,3235,200,170,89,390,46,50,0,'????????????',293,6014,336,1,169,8,198,17,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(53,1,400,'2015-01-15 00:00:00',0,'380',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','????????????','[\"????????????\",\"??????\"]','??????','40','70','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','172','??????','??????','??????','[\"????????????\"]','[]',50,3019,490,167,87,350,43,17,0,'??????',287,5669,330,1,169,8,189,17,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(54,1,400,'2015-01-10 00:00:00',0,'375',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','????????????','[\"??????\"]','??????','20','70','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','185','??????','??????','??????','[\"????????????\"]','[]',50,3113,430,172,92,380,47,15,0,'??????',1,1,1,0,169,-13,-223,-7,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(55,1,400,'2015-04-10 00:00:00',0,'0',1,1,'remark','images/???.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','????????????','[\"??????\",\"??????\"]','??????','10','90','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','170','??????','?????????','??????','[\"??????????????????\"]','[]',50,3264,460,173,87,380,52,16,0,'???',381,6580,358,1,169,14,236,19,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(56,1,400,'2015-02-14 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','????????????','[\"??????\",\"??????\"]','??????','40','80','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','179','??????','?????????','?????????','[\"???????????????\"]','[]',50,3300,450,171,85,400,52,19,0,'?????????',388,6517,342,1,169,15,229,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(57,1,400,'2015-04-14 00:00:00',0,'0',1,1,'remark','images/???.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','????????????','[\"??????\",\"??????\"]','??????','40','80','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','180','??????','??????','???','[\"???????????????\"]','[]',50,3300,440,167,90,380,51,16,0,'???',388,6590,381,1,169,15,235,20,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(58,1,400,'2015-02-16 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','????????????','[\"??????\",\"??????\"]','??????','40','60','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','184','??????','?????????','??????','[\"????????????\"]','[]',50,2968,450,169,98,390,49,16,0,'??????',330,5483,358,3,169,11,179,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(59,1,400,'2015-02-15 00:00:00',0,'0',1,1,'remark','images/????????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','????????????','[\"??????\"]','??????','30','80','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','154','??????','??????','??????','[\"????????????\"]','[]',50,3239,450,173,86,380,47,16,0,'????????????',385,6205,359,1,169,15,211,19,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(60,1,400,'2015-03-30 00:00:00',0,'0',1,1,'remark','images/????????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','????????????','[\"??????\",\"??????\"]','??????','30','90','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','170','??????','?????????','??????','[\"???????????????\"]','[]',50,3389,490,156,90,350,48,18,0,'????????????',287,6299,368,1,169,9,207,19,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(61,1,400,'2015-03-27 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','????????????','[\"??????\"]','??????','50','90','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','184','??????','??????','???','[\"????????????\"]','[]',50,3196,80,179,87,370,45,10,0,'?????????',321,5870,330,1,169,10,191,17,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(62,1,400,'2015-03-25 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u523a\\u5ba2\"]','????????????','[\"??????\"]','??????','10','90','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','182','??????','??????','???','[\"???????????????\"]','[]',50,2637,490,152,86,350,40,17,0,'??????',352,4843,1,0,169,14,157,-7,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(63,1,1400,'2015-01-14 00:00:00',0,'379',5.24,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]',' ????????????','[\"??????\",\"??????\"]','??????','40','80','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','153','??????','????????????','????????????','[\"????????????\"]','[]',50,3323,490,170,83,360,47,17,0,'?????????',293,5994,315,1,169,8,190,16,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(64,1,1400,'2015-01-29 00:00:00',0,'0',2.45,15,'????????????','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"????????????\",\"??????\"]','??????','50','40','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','173','??????','?????????','??????','[\"??????\"]','[]',50,3036,490,168,87,350,43,18,0,'??????',309,6256,374,1,169,10,230,20,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(65,1,1400,'2015-02-08 00:00:00',0,'0',5.63,7,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]',' ????????????','[\"??????\",\"??????\"]','??????','20','80','20','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','?????????','165','??????','?????????','?????????','[\"?????????????????????\"]','[]',50,3289,490,170,86,360,46,18,0,'??????',293,6040,326,1,169,8,196,17,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(66,1,1400,'2015-03-08 00:00:00',0,'0',1,1,'remark','images/????????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"????????????\"]','??????','40','80','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','237','??????','?????????','?????????','[\"?????????\"]','[]',50,3189,490,159,92,370,45,17,0,'????????????',292,5583,323,1,169,9,171,16,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(67,1,1400,'2015-02-02 00:00:00',0,'0',2.07,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"????????????\",\"??????\"]','??????','50','90','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','178','??????','??????','??????','[\"????????????\"]','[]',50,3122,490,163,98,370,44,17,0,'?????????',290,6165,343,1,169,9,217,17,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(68,1,1400,'2015-01-11 00:00:00',0,'376',3.5,11,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"????????????\"]','??????','10','70','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','?????????','178','??????','?????????','?????????','[\"?????????\"]','[]',50,2958,490,168,106,370,42,18,0,'?????????',317,5399,342,1,169,10,174,16,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(69,1,1400,'2015-03-17 00:00:00',0,'0',2.78,4,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"??????\"]',' ??????','30','90','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','????????????','180','??????','?????????','?????????','[\"???\"]','[]',50,3157,500,155,89,350,45,19,0,'??????',295,5626,322,1,169,10,176,16,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(70,1,1400,'2015-03-24 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"????????????\",\"??????\"]','??????','20','70','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','169','??????','??????','????????????','[\"???????????????\"]','[]',50,3166,490,165,91,360,45,18,0,'?????????',303,5711,344,1,169,9,181,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(71,1,1400,'2015-03-29 00:00:00',0,'0',2.66,7,'????????????','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"??????\"]','??????','30','80','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','????????????','151','??????','??????','???????????????','[\"?????????????????????\"]','[]',50,3238,10,171,84,360,46,1,0,'?????????',304,5910,340,1,169,9,190,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(72,1,1400,'2015-01-30 00:00:00',0,'0',2.07,1,'??????????????????','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"????????????\"]','??????','200','40','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','155','??????','??????','????????????','[\"????????????\"]','[]',50,3208,470,176,98,350,45,17,0,'??????',328,6811,413,1,169,10,257,22,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(73,1,1400,'2015-01-09 00:00:00',0,'374',4.39,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"??????\"]','??????','40','80','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','170','??????','??????','??????','[\"????????????\"]','[]',50,3083,490,165,91,360,44,17,0,'?????????',296,5429,305,1,169,9,167,15,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(74,1,1400,'2015-01-17 00:00:00',0,'382',1.52,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"????????????\"]','??????','20','100','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','171','??????','?????????','??????','[\"????????????\"]','[]',50,3019,490,173,95,350,40,18,0,'?????????',0,0,0,1,169,-13,-216,-7,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(75,1,1400,'2015-04-07 00:00:00',0,'0',0.72,3,'?????????????????????','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"????????????\"]','??????','10','60','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','163','??????','??????','????????????','[\"????????????\"]','[]',50,3041,490,164,91,360,43,17,0,'??????',292,5387,305,0,169,9,167,15,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(76,1,1400,'2015-02-11 00:00:00',0,'0',5.93,7,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"??????\"]','??????','20','80','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','157','??????','??????','???','[\"??????????????????\"]','[]',50,3088,490,153,95,360,44,18,0,'??????',263,5916,309,1,169,7,202,15,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(77,1,1400,'2015-03-20 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"????????????\",\"??????\"]','??????','20','90','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','?????????','169','??????','?????????','??????','[\"???????????????\"]','[]',50,2966,470,162,80,370,42,17,0,'?????????',297,5682,358,1,169,9,194,19,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(78,1,1400,'2015-03-22 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"??????\"]','??????','40','70','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','169','??????','?????????','??????','[\"????????????\"]','[]',50,3176,490,171,90,370,45,17,0,'??????',304,5798,353,1,169,9,187,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(79,1,1400,'2015-02-07 00:00:00',0,'0',7.2,90,'???????????????','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"??????\"]','??????','30','100','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','182','??????','?????????','??????','[\"????????????\"]','[]',50,3125,490,157,91,350,44,17,0,'??????',309,5471,295,0,169,10,167,14,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(80,1,1400,'2015-01-06 00:00:00',0,'372',3.78,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"??????\"]','??????','30','60','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','180','??????','??????','??????','[\"????????????\"]','[]',50,3027,490,170,87,360,43,18,0,'??????',293,5799,320,1,169,8,198,16,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(81,1,1400,'2015-01-24 00:00:00',0,'389',4.42,8,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"??????\"]','??????','10','70','20','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','171','??????','??????','???','[\"??????????????????\"]','[]',50,3149,490,165,87,360,45,18,0,'??????',296,5783,330,1,169,9,188,17,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(82,1,1400,'2015-02-17 00:00:00',0,'0',4.4,19,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"??????\"]','??????','50','50','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','?????????','355','??????','?????????','??????','[\"???????????????\"]','[]',50,3501,490,180,99,360,53,17,0,'??????',320,7316,390,1,169,10,272,20,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(83,1,1400,'2015-01-25 00:00:00',0,'390',1.95,8,'?????????1???3??????','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"????????????\",\"??????\"]','??????','30','90','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','180','??????','??????','???','[\"????????????\"]','[]',50,3093,490,160,87,360,44,17,0,'??????',298,5513,320,1,169,9,172,16,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(84,1,1400,'2015-03-04 00:00:00',0,'0',5.16,11,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6cd5\\u5e08\"]','????????????','[\"??????\",\"??????\"]','??????','30','80','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','183','??????','??????','???','[\"????????????\"]','[]',50,3229,490,156,87,350,46,18,0,'?????????',287,5824,330,1,169,9,185,17,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(85,1,3400,'2015-01-07 00:00:00',0,'1',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','????????????','[\"????????????\"]','??????','30','80','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','165','??????','????????????','????????????','[\"????????????\"]','[]',50,3135,100,0,86,360,39,0,0,'??????',0,5655,326,1,169,0,180,17,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(86,1,3400,'2015-02-04 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','????????????','[\"????????????\"]','??????','80','40','20','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','175','??????','??????','????????????','[\"???????????????\"]','[]',50,3146,420,170,150,390,52,15,0,'??????',297,7742,497,1,169,9,328,24,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(87,1,3400,'2015-02-28 00:00:00',0,'0',1,1,'remark','images/????????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','????????????','[\"??????\",\"??????\"]','??????','30','80','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','177','??????','??????','??????','[\"????????????\"]','[]',50,3027,440,184,94,370,37,15,0,'????????????',394,5799,329,3,169,15,198,16,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(88,1,3400,'2015-01-20 00:00:00',0,'385',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','????????????','[\"\"]','??????','40','90','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','178','??????','?????????','??????','[\"???????????????\"]','[]',50,3242,440,169,95,360,40,15,0,'?????????',376,5710,338,2,169,14,176,17,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(89,1,3400,'2015-03-09 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','????????????','[\"????????????\",\"????????????\"]','??????','30','90','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','172','??????','??????','???????????????','[\"??????????????????\"]','[]',50,3173,490,184,84,350,39,18,0,'??????',387,5898,347,1,169,14,194,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(90,1,3400,'2015-03-19 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','????????????','[\"??????\",\"??????\"]','??????','20','80','100','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','????????????','169','??????','?????????','??????','[\"???????????????\"]','[]',50,3096,440,173,95,350,39,15,0,'?????????',362,5894,1,1,169,13,199,-7,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(91,1,3400,'2015-01-02 00:00:00',0,'368',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','????????????','[\"??????\",\"??????\"]','??????','40','80','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','?????????','183','??????','?????????','?????????','[\"?????????,\"?????????\"]','[]',50,3182,440,175,86,360,41,16,0,'??????',400,5986,336,1,169,16,200,17,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(92,1,3400,'2015-03-05 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','????????????','[\"??????\",\"????????????\"]','??????','40','9','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','187','??????','??????','???','[\"???????????????\"]','[]',50,3226,440,187,91,350,39,16,0,'??????',426,6030,319,3,169,17,200,16,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(93,1,3400,'2015-02-18 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','????????????','[\"??????\",\"??????\"]','??????','30','80','60','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','????????????','152','??????','?????????','??????','[\"????????????\"]','[]',50,3007,440,161,84,350,37,15,0,'?????????',396,5725,340,3,169,16,194,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(94,1,3400,'2015-02-05 00:00:00',0,'0',1,1,'remark','images/????????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','????????????','[\"????????????\"]','??????','10','100','30','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','?????????','149','??????','?????????','??????','[\"??????????????????\"]','[]',50,3401,440,174,88,360,42,15,0,'????????????',400,5989,323,3,169,16,184,16,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(95,1,3400,'2015-02-26 00:00:00',0,'0',1,1,'remark','images/????????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','????????????','[\"????????????\"]','??????','30','60','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','179','??????','??????','????????????','[\"?????????\"]','[]',50,3041,200,175,91,350,46,50,0,'????????????',362,5584,344,3,169,13,181,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(96,1,3400,'2015-04-09 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','????????????','[\"????????????\"]','??????','40','90','40','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','150','??????','??????','????????????','[\"????????????\"]','[]',50,3235,100,151,90,360,40,0,0,'??????',330,6014,368,0,169,12,198,19,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(97,1,3400,'2015-02-06 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','????????????','[\"??????\",\"??????\"]','??????','30','80','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','166','??????','??????','???','[\"???????????????\"]','[]',50,3235,440,168,89,350,40,15,0,'?????????',386,6014,346,3,169,15,198,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(98,1,3400,'2015-02-21 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u5c04\\u624b\"]','????????????','[\"??????\",\"????????????\"]','??????','40','80','50','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','?????????','??????','173','??????','??????','??????','[\"???????????????\"]','[]',50,2977,440,15,84,350,36,16,0,'??????',407,5669,329,3,169,28,192,17,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(99,1,3400,'2015-04-03 00:00:00',0,'0',1,1,'remark','images/???.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u8f85\\u52a9\"]','????????????','[\"????????????\"]','??????','70','30','20','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','162','??????','?????????','?????????','[\"???????????????\"]','[]',50,2587,440,162,87,360,36,16,0,'???',297,5108,330,1,169,9,180,17,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(100,1,3400,'2015-02-23 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u8f85\\u52a9\"]','????????????','[\"????????????\",\"??????\"]','??????','50','30','20','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','104/180','??????','??????','???','[\"??????????????????\"]','[]',50,3238,470,159,96,360,38,17,0,'?????????',292,5910,350,1,169,9,190,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(101,1,3400,'2015-03-06 00:00:00',0,'0',1,1,'remark','images/??????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u8f85\\u52a9\"]','????????????','[\"????????????\"]','??????','10','30','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','168','??????','??????','???','[\"?????????????????????\"]','[]',50,3111,470,168,93,360,42,17,0,'??????',305,5799,340,1,169,9,192,17,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(102,1,3400,'2015-03-11 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u8f85\\u52a9\"]','????????????','[\"??????\"]','??????','50','30','70','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','150','??????','?????????','?????????','[\"?????????\"]','[]',50,3322,450,162,92,360,47,16,0,'?????????',297,7107,394,1,169,9,270,21,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(103,1,3400,'2015-04-08 00:00:00',0,'0',1,1,'remark','images/????????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u8f85\\u52a9\"]','????????????','[\"\"]','??????','60','40','90','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','192','??????','??????','??????','[\"????????????\"]','[]',50,3398,420,166,107,380,80,15,0,'????????????',301,7656,402,1,169,9,304,21,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(104,1,3400,'2015-03-18 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u8f85\\u52a9\"]','????????????','[\"????????????\"]','??????','60','40','20','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','files/favicon.ico','??????','??????','181','??????','?????????','??????','[\"??????????????????\"]','[]',50,3255,440,162,99,370,46,16,0,'?????????',297,6860,358,1,169,9,257,18,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(105,1,0,'2015-04-01 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\\u5de1\\u5b88\\u5229\\u65a7\",\"\\u7ea2\\u83b2\\u6597\\u7bf7\",\"\\u62b5\\u6297\\u4e4b\\u9774\",\"\\u6c38\\u591c\\u5b88\\u62a4\",\"\\u6697\\u5f71\\u6218\\u65a7\",\"\\u53cd\\u4f24\\u523a\\u7532\"]','[\"\\u8f85\\u52a9\"]','????????????','[\"??????\",\"??????\"]','??????','70','50','80','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','?????????','??????','183','??????','?????????','?????????','[\"?????????????????????\"]','[]',50,3080,0,176,89,80,81,0,0,'?????????',299,8457,322,1,169,8,384,16,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(106,1,10,'2021-05-08 23:05:25',3,'5',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"\\u6218\\u58eb\"]','?????????','[\"\\u56e2\\u961f\\u589e\\u76ca\",\"\\u8fdc\\u7a0b\\u6d88\\u8017\",\"\\u590d\\u6d3b\",\"\\u51b2\\u950b\",\"\\u6218\\u58eb\",\"\\u5438\\u8840\",\"\\u5438\\u6536\\u4f24\\u5bb3\",\"\\u8d85\\u8fdc\\u89c6\\u8ddd\"]','??????','27','42','43','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','??????','??????','183','??????','?????????','?????????','[\"\"]','{\"\\u8bf8\\u845b\\u4eae\":\"\\u5934\\u513f\"}',50,3080,0,1,1,0,0,1,0,'name',349,6000,0,0,169,24,208,-1,0,0,0,0,200,0,0,0,'??????',0,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(107,1,0,'2021-05-08 23:05:25',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"??????\"]','????????????','[\"????????????\"]','??????','27','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','??????','??????','183','??????','?????????','?????????','[\"\"]','[]',50,3080,0,1,1,1,1,1,0,'name',349,6000,1,0,169,24,208,0,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(108,1,0,'2021-05-08 23:05:25',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"??????\"]','????????????','[\"????????????\"]','??????','27','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','??????','??????','183','??????','?????????','?????????','[\"\"]','[]',50,3080,0,1,1,1,1,1,0,'name',349,6000,1,0,169,24,208,0,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(109,1,0,'2021-05-08 23:05:25',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"??????\"]','????????????','[\"????????????\"]','??????','27','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','??????','??????','183','??????','?????????','?????????','[\"\"]','[]',50,3080,0,1,1,1,1,1,0,'name',349,6000,1,0,169,24,208,0,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(110,1,0,'2021-05-08 23:05:25',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"??????\"]','????????????','[\"????????????\"]','??????','27','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','??????','??????','183','??????','?????????','?????????','[\"\"]','[]',50,3080,0,1,1,1,1,1,0,'zame',349,1,1,0,169,24,-220,0,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(111,1,0,'2021-05-08 23:05:25',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"??????\"]','????????????','[\"????????????\"]','??????','27','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','??????','??????','183','??????','?????????','?????????','[\"\"]','[]',50,3080,0,1,1,1,1,1,0,'name',349,6000,1,0,169,24,208,0,0,0,1,0,200,0,0,0,'??????',1,'2021-05-05 00:00:00','2021-06-12 20:49:44'),
(112,1,0,'2021-05-08 23:05:25',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"??????\"]','????????????','[\"????????????\"]','??????','27','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','??????','??????','183','??????','?????????','?????????','[\"\"]','[]',50,3080,0,1,1,1,1,1,0,'name',349,6000,1,0,169,24,208,0,0,0,1,0,200,0,0,0,'??????',1,'2021-05-08 14:00:38','2021-06-12 20:49:44'),
(113,1,0,'2021-05-08 23:05:25',0,'0',1,1,'remark','images/?????????.jpg','[\"\",\"\",\"\",\"\",\"\",\"\"]','[\"??????\"]','????????????','[\"????????????\"]','??????','27','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','??????','??????','183','??????','?????????','?????????','[\"\"]','[]',50,3080,0,1,1,1,1,1,0,'name',349,6000,1,0,169,24,208,0,0,0,1,0,200,0,0,0,'??????',1,'2021-05-08 15:15:17','2021-06-12 20:49:44'),
(114,1,1,'2021-05-29 00:00:00',0,'0',1,1,'remark','images/?????????.jpg','[\"\"]','[\"\\u8f85\\u52a9\"]','????????????','[\"\"]','??????','0','0','0','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','images/47c8a2cd307b5e96ddf739ca903a5a8f.ico','??????','??????','0','??????','?????????','?????????','[\"\"]','[]',50,3080,0,1,1,0,0,0,0,'name',349,6000,0,0,169,24,208,-1,0,0,0,0,200,0,0,0,'??????',0,'2021-05-08 15:15:17','2021-06-12 20:49:44'),
(115,1,1,'2021-05-29 00:00:00',0,'0',1,1,'remark','head_thumb','[\"\"]','[]','[]','[\"\"]','period','0','0','0','images/error.png','files/error.png','shunt','race','0','energy','city','power','identity','[]',50,3080,0,1,1,1,1,1,0,'name',349,6000,1,0,169,24,208,0,0,0,1,0,200,0,0,0,'??????',1,'2021-05-29 00:00:00','2021-06-12 20:49:44');

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
(1,'images/54725da8f1bfe1a70c2ef592ebc41dbe.png','2021-05-31 22:10:08','2021-05-31 22:20:58');

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
(1,'[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"116\",\"152\"]','images/??????1.png','2021-05-29 11:44:21','2021-06-01 20:11:22'),
(2,'[\"0\",\"1.6\",\"9.2\",\"16.8\",\"27.4\",\"38\",\"53.2\",\"69.8\",\"91\",\"116.8\",\"153.2\"]','images/??????2.png','2021-05-29 14:39:35','2021-06-01 20:11:39'),
(3,'[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"116\",\"152\"]','images/??????3.png','2021-05-29 14:41:01','2021-06-01 20:12:02'),
(4,'[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"86.4\",\"109.2\",\"139.4\",\"178.8\"]','images/??????4.png','2021-05-29 14:42:03','2021-06-01 20:12:27'),
(5,'[\"0\",\"1\",\"10.2\",\"21.2\",\"34.6\",\"51.4\",\"72.8\",\"101.6\",\"141.8\"]','images/??????5.png','2021-05-29 14:43:05','2021-06-01 20:12:49'),
(6,'[\"0\",\"3.4\",\"8.2\",\"13.6\",\"19.6\",\"26.2\",\"33.6\",\"42\",\"51.4\",\"62.274.8\",\"89.2\",\"106.4\",\"127\",\"152.2\",\"183.6\"]','images/??????6.png','2021-05-29 14:44:22','2021-06-01 20:13:11'),
(7,'[\"0\",\"1\",\"1.6\",\"8.2\",\"9.2\",\"16.6\",\"16.8\",\"26.2\",\"37.6\",\"38\",\"51.4\",\"53.2\",\"68.2\",\"69.8\",\"86.4\",\"89.2\",\"91\",\"109.2\",\"116\",\"116.8\",\"139.4\",\"152\",\"153.2\",\"178.8\"]','images/??????7.png','2021-05-29 14:47:28','2021-05-29 14:47:28'),
(8,'[\"0\",\"3.6\",\"9.4\",\"15.8\",\"23\",\"31.2\",\"40.6\",\"51.4\",\"64\",\"79\",\"96.8\",\"118.6\",\"145.8\",\"180.8\",null]','images/??????8.png','2021-05-29 14:48:36','2021-05-29 14:48:36'),
(9,'[\"0\",\"5.2\",\"11.4\",\"18.4\",\"26.2\",\"35.2\",\"45.6\",\"57.8\",\"72\",\"89.2\",\"110.2\",\"136.4\",\"170\"]','images/??????9.png','2021-05-29 14:49:34','2021-05-29 14:49:34'),
(10,'[\"0\",\"1\",\"10.2\",\"21.2\",\"34.6\",\"51.4\",\"72.8\",\"101.6\",\"141.8\"]','images/??????10.png','2021-05-29 14:50:27','2021-05-29 14:50:27'),
(11,'[\"0\",\"1\",\"1.6\",\"8.2\",\"9.2\",\"16.6\",\"18.2\",\"26.2\",\"28.8\",\"37.6\",\"42.6\",\"51.4\",\"57.6\",\"68.2\",\"77.4\",\"89.2\",\"103.2\",\"116\",\"136.4\",\"152\",\"183.4\"]','images/??????11.png','2021-05-29 14:52:17','2021-05-29 14:52:17'),
(12,'[\"0\",\"1.6\",\"7.6\",\"15.2\",\"22.8\",\"31.2\",\"41\",\"53.2\",\"66.8\",\"83.4\",\"103.2\",\"128.8\",\"160.8\"]','images/??????12.png','2021-05-29 14:53:22','2021-05-29 14:53:22'),
(13,'[\"0\",\"1\",\"8.2\",\"16.6\",\"26.2\",\"37.6\",\"51.4\",\"68.2\",\"89.2\",\"103.2\",\"132\",\"171.4\"]','images/??????13.png','2021-05-29 14:54:48','2021-05-29 14:54:48'),
(14,'[\"0\",\"4.6\",\"7.6\",\"12.2\",\"18.2\",\"22.8\",\"30.4\",\"36.4\",\"44\",\"53.2\",\"62.2\",\"72.8\",\"85\",\"98.6\",\"115.8\",\"135\",\"159.2\",\"186.4\"]','images/??????14.png','2021-05-29 14:56:52','2021-05-29 14:56:52'),
(15,'[\"0\",\"1\",\"10.2\",\"21.2\",\"34.6\",\"51.4\",\"72.8\",\"101.6\",\"141.8\"]','images/??????15.png','2021-05-29 14:57:47','2021-05-29 14:57:47'),
(16,'[\"0\",\"1\",\"1.6\",\"8.2\",\"9.2\",\"16.6\",\"26.2\",\"27.4\",\"37.6\",\"38\",\"51.4\",\"53.2\",\"68.2\",\"69.8\",\"89.2\",\"91\",\"116\",\"116.8\",\"152\",\"153.2\"]','images/??????16.png','2021-05-29 14:59:16','2021-05-29 14:59:16'),
(17,'[\"0\",\"1\",\"7\",\"13.6\",\"21.2\",\"29.8\",\"39.8\",\"51.4\",\"65.2\",\"81.6\",\"101.6\",\"127\",\"156.2\",\"192.6\"]','images/??????17.png','2021-05-29 15:00:54','2021-05-29 15:00:54');

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

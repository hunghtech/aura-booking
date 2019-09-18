/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : aura-booking-2019

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-09-18 13:25:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aura_backend_aura_district_info
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_aura_district_info`;
CREATE TABLE `aura_backend_aura_district_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_aura_district_info
-- ----------------------------

-- ----------------------------
-- Table structure for aura_backend_aura_life
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_aura_life`;
CREATE TABLE `aura_backend_aura_life` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thumbnail1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_aura_life
-- ----------------------------

-- ----------------------------
-- Table structure for aura_backend_aura_life_info
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_aura_life_info`;
CREATE TABLE `aura_backend_aura_life_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aura_life_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_aura_life_info
-- ----------------------------

-- ----------------------------
-- Table structure for aura_backend_banner
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_banner`;
CREATE TABLE `aura_backend_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_banner
-- ----------------------------

-- ----------------------------
-- Table structure for aura_backend_banner_store
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_banner_store`;
CREATE TABLE `aura_backend_banner_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_banner_store
-- ----------------------------

-- ----------------------------
-- Table structure for aura_backend_room
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_room`;
CREATE TABLE `aura_backend_room` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_room
-- ----------------------------

-- ----------------------------
-- Table structure for aura_backend_room_category
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_room_category`;
CREATE TABLE `aura_backend_room_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_room_category
-- ----------------------------

-- ----------------------------
-- Table structure for aura_backend_room_info
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_room_info`;
CREATE TABLE `aura_backend_room_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_room_info
-- ----------------------------

-- ----------------------------
-- Table structure for aura_backend_room_service
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_room_service`;
CREATE TABLE `aura_backend_room_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_room_service
-- ----------------------------

-- ----------------------------
-- Table structure for aura_backend_room_type
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_room_type`;
CREATE TABLE `aura_backend_room_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_room_type
-- ----------------------------

-- ----------------------------
-- Table structure for aura_backend_service
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_service`;
CREATE TABLE `aura_backend_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_service
-- ----------------------------

-- ----------------------------
-- Table structure for aura_backend_store
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_store`;
CREATE TABLE `aura_backend_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` int(11) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_store
-- ----------------------------

-- ----------------------------
-- Table structure for backend_access_log
-- ----------------------------
DROP TABLE IF EXISTS `backend_access_log`;
CREATE TABLE `backend_access_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of backend_access_log
-- ----------------------------
INSERT INTO `backend_access_log` VALUES ('1', '1', '127.0.0.1', '2019-09-18 03:54:14', '2019-09-18 03:54:14');

-- ----------------------------
-- Table structure for backend_users
-- ----------------------------
DROP TABLE IF EXISTS `backend_users`;
CREATE TABLE `backend_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) unsigned DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_unique` (`login`),
  UNIQUE KEY `email_unique` (`email`),
  KEY `act_code_index` (`activation_code`),
  KEY `reset_code_index` (`reset_password_code`),
  KEY `admin_role_index` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of backend_users
-- ----------------------------
INSERT INTO `backend_users` VALUES ('1', 'Super', 'Admin', 'sysadmin', 'hungdn0502@gmail.com', '$2y$10$NdVPijvoTpmHN9LK811kyOP9pwDUhd51rK3isVhigKx1Nu2tbfWe6', null, '$2y$10$yyvDtstXiS9SF7.b9oooYuW.sK5rWOWPSO1HGPjtXKRXUAQ7nBLd.', null, '', '1', '2', null, '2019-09-18 03:54:14', '2019-09-16 14:07:25', '2019-09-18 03:54:14', null, '1');

-- ----------------------------
-- Table structure for backend_users_groups
-- ----------------------------
DROP TABLE IF EXISTS `backend_users_groups`;
CREATE TABLE `backend_users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `user_group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of backend_users_groups
-- ----------------------------
INSERT INTO `backend_users_groups` VALUES ('1', '1');

-- ----------------------------
-- Table structure for backend_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `backend_user_groups`;
CREATE TABLE `backend_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_unique` (`name`),
  KEY `code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of backend_user_groups
-- ----------------------------
INSERT INTO `backend_user_groups` VALUES ('1', 'Owners', '2019-09-16 14:07:25', '2019-09-16 14:07:25', 'owners', 'Default group for website owners.', '0');

-- ----------------------------
-- Table structure for backend_user_preferences
-- ----------------------------
DROP TABLE IF EXISTS `backend_user_preferences`;
CREATE TABLE `backend_user_preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of backend_user_preferences
-- ----------------------------

-- ----------------------------
-- Table structure for backend_user_roles
-- ----------------------------
DROP TABLE IF EXISTS `backend_user_roles`;
CREATE TABLE `backend_user_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_unique` (`name`),
  KEY `role_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of backend_user_roles
-- ----------------------------
INSERT INTO `backend_user_roles` VALUES ('1', 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', '1', '2019-09-16 14:07:25', '2019-09-16 14:07:25');
INSERT INTO `backend_user_roles` VALUES ('2', 'Developer', 'developer', 'Site administrator with access to developer tools.', '', '1', '2019-09-16 14:07:25', '2019-09-16 14:07:25');

-- ----------------------------
-- Table structure for backend_user_throttle
-- ----------------------------
DROP TABLE IF EXISTS `backend_user_throttle`;
CREATE TABLE `backend_user_throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_user_throttle_user_id_index` (`user_id`),
  KEY `backend_user_throttle_ip_address_index` (`ip_address`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of backend_user_throttle
-- ----------------------------
INSERT INTO `backend_user_throttle` VALUES ('1', '1', '127.0.0.1', '0', null, '0', null, '0', null);

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cms_theme_data
-- ----------------------------
DROP TABLE IF EXISTS `cms_theme_data`;
CREATE TABLE `cms_theme_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_theme_data_theme_index` (`theme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_theme_data
-- ----------------------------

-- ----------------------------
-- Table structure for cms_theme_logs
-- ----------------------------
DROP TABLE IF EXISTS `cms_theme_logs`;
CREATE TABLE `cms_theme_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `old_content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_theme_logs_type_index` (`type`),
  KEY `cms_theme_logs_theme_index` (`theme`),
  KEY `cms_theme_logs_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_theme_logs
-- ----------------------------

-- ----------------------------
-- Table structure for cms_theme_templates
-- ----------------------------
DROP TABLE IF EXISTS `cms_theme_templates`;
CREATE TABLE `cms_theme_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(10) unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_theme_templates_source_index` (`source`),
  KEY `cms_theme_templates_path_index` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_theme_templates
-- ----------------------------

-- ----------------------------
-- Table structure for deferred_bindings
-- ----------------------------
DROP TABLE IF EXISTS `deferred_bindings`;
CREATE TABLE `deferred_bindings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deferred_bindings_master_type_index` (`master_type`),
  KEY `deferred_bindings_master_field_index` (`master_field`),
  KEY `deferred_bindings_slave_type_index` (`slave_type`),
  KEY `deferred_bindings_slave_id_index` (`slave_id`),
  KEY `deferred_bindings_session_key_index` (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of deferred_bindings
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2013_10_01_000001_Db_Deferred_Bindings', '1');
INSERT INTO `migrations` VALUES ('2', '2013_10_01_000002_Db_System_Files', '1');
INSERT INTO `migrations` VALUES ('3', '2013_10_01_000003_Db_System_Plugin_Versions', '1');
INSERT INTO `migrations` VALUES ('4', '2013_10_01_000004_Db_System_Plugin_History', '1');
INSERT INTO `migrations` VALUES ('5', '2013_10_01_000005_Db_System_Settings', '1');
INSERT INTO `migrations` VALUES ('6', '2013_10_01_000006_Db_System_Parameters', '1');
INSERT INTO `migrations` VALUES ('7', '2013_10_01_000007_Db_System_Add_Disabled_Flag', '1');
INSERT INTO `migrations` VALUES ('8', '2013_10_01_000008_Db_System_Mail_Templates', '1');
INSERT INTO `migrations` VALUES ('9', '2013_10_01_000009_Db_System_Mail_Layouts', '1');
INSERT INTO `migrations` VALUES ('10', '2014_10_01_000010_Db_Jobs', '1');
INSERT INTO `migrations` VALUES ('11', '2014_10_01_000011_Db_System_Event_Logs', '1');
INSERT INTO `migrations` VALUES ('12', '2014_10_01_000012_Db_System_Request_Logs', '1');
INSERT INTO `migrations` VALUES ('13', '2014_10_01_000013_Db_System_Sessions', '1');
INSERT INTO `migrations` VALUES ('14', '2015_10_01_000014_Db_System_Mail_Layout_Rename', '1');
INSERT INTO `migrations` VALUES ('15', '2015_10_01_000015_Db_System_Add_Frozen_Flag', '1');
INSERT INTO `migrations` VALUES ('16', '2015_10_01_000016_Db_Cache', '1');
INSERT INTO `migrations` VALUES ('17', '2015_10_01_000017_Db_System_Revisions', '1');
INSERT INTO `migrations` VALUES ('18', '2015_10_01_000018_Db_FailedJobs', '1');
INSERT INTO `migrations` VALUES ('19', '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', '1');
INSERT INTO `migrations` VALUES ('20', '2016_10_01_000020_Db_System_Timestamp_Fix', '1');
INSERT INTO `migrations` VALUES ('21', '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', '1');
INSERT INTO `migrations` VALUES ('22', '2017_10_01_000021_Db_System_Sessions_Update', '1');
INSERT INTO `migrations` VALUES ('23', '2017_10_01_000022_Db_Jobs_FailedJobs_Update', '1');
INSERT INTO `migrations` VALUES ('24', '2017_10_01_000023_Db_System_Mail_Partials', '1');
INSERT INTO `migrations` VALUES ('25', '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', '1');
INSERT INTO `migrations` VALUES ('26', '2013_10_01_000001_Db_Backend_Users', '2');
INSERT INTO `migrations` VALUES ('27', '2013_10_01_000002_Db_Backend_User_Groups', '2');
INSERT INTO `migrations` VALUES ('28', '2013_10_01_000003_Db_Backend_Users_Groups', '2');
INSERT INTO `migrations` VALUES ('29', '2013_10_01_000004_Db_Backend_User_Throttle', '2');
INSERT INTO `migrations` VALUES ('30', '2014_01_04_000005_Db_Backend_User_Preferences', '2');
INSERT INTO `migrations` VALUES ('31', '2014_10_01_000006_Db_Backend_Access_Log', '2');
INSERT INTO `migrations` VALUES ('32', '2014_10_01_000007_Db_Backend_Add_Description_Field', '2');
INSERT INTO `migrations` VALUES ('33', '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', '2');
INSERT INTO `migrations` VALUES ('34', '2016_10_01_000009_Db_Backend_Timestamp_Fix', '2');
INSERT INTO `migrations` VALUES ('35', '2017_10_01_000010_Db_Backend_User_Roles', '2');
INSERT INTO `migrations` VALUES ('36', '2018_12_16_000011_Db_Backend_Add_Deleted_At', '2');
INSERT INTO `migrations` VALUES ('37', '2014_10_01_000001_Db_Cms_Theme_Data', '3');
INSERT INTO `migrations` VALUES ('38', '2016_10_01_000002_Db_Cms_Timestamp_Fix', '3');
INSERT INTO `migrations` VALUES ('39', '2017_10_01_000003_Db_Cms_Theme_Logs', '3');
INSERT INTO `migrations` VALUES ('40', '2018_11_01_000001_Db_Cms_Theme_Templates', '3');

-- ----------------------------
-- Table structure for rainlab_translate_attributes
-- ----------------------------
DROP TABLE IF EXISTS `rainlab_translate_attributes`;
CREATE TABLE `rainlab_translate_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_data` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `rainlab_translate_attributes_locale_index` (`locale`),
  KEY `rainlab_translate_attributes_model_id_index` (`model_id`),
  KEY `rainlab_translate_attributes_model_type_index` (`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of rainlab_translate_attributes
-- ----------------------------

-- ----------------------------
-- Table structure for rainlab_translate_indexes
-- ----------------------------
DROP TABLE IF EXISTS `rainlab_translate_indexes`;
CREATE TABLE `rainlab_translate_indexes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `rainlab_translate_indexes_locale_index` (`locale`),
  KEY `rainlab_translate_indexes_model_id_index` (`model_id`),
  KEY `rainlab_translate_indexes_model_type_index` (`model_type`),
  KEY `rainlab_translate_indexes_item_index` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of rainlab_translate_indexes
-- ----------------------------

-- ----------------------------
-- Table structure for rainlab_translate_locales
-- ----------------------------
DROP TABLE IF EXISTS `rainlab_translate_locales`;
CREATE TABLE `rainlab_translate_locales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rainlab_translate_locales_code_index` (`code`),
  KEY `rainlab_translate_locales_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of rainlab_translate_locales
-- ----------------------------
INSERT INTO `rainlab_translate_locales` VALUES ('1', 'en', 'English', '1', '1', '1');

-- ----------------------------
-- Table structure for rainlab_translate_messages
-- ----------------------------
DROP TABLE IF EXISTS `rainlab_translate_messages`;
CREATE TABLE `rainlab_translate_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_data` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `rainlab_translate_messages_code_index` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of rainlab_translate_messages
-- ----------------------------

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------

-- ----------------------------
-- Table structure for system_event_logs
-- ----------------------------
DROP TABLE IF EXISTS `system_event_logs`;
CREATE TABLE `system_event_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `details` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_event_logs_level_index` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of system_event_logs
-- ----------------------------
INSERT INTO `system_event_logs` VALUES ('1', 'error', 'Exception: Stop everything!!! This file already exists: D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking/plugins/aura/backend/controllers/auralife/_list_toolbar.htm in D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\october\\rain\\src\\Scaffold\\GeneratorCommand.php:116\nStack trace:\n#0 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\october\\rain\\src\\Scaffold\\GeneratorCommand.php(85): October\\Rain\\Scaffold\\GeneratorCommand->makeStub(\'controller/_lis...\')\n#1 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\october\\rain\\src\\Scaffold\\GeneratorCommand.php(63): October\\Rain\\Scaffold\\GeneratorCommand->makeStubs()\n#2 [internal function]: October\\Rain\\Scaffold\\GeneratorCommand->handle()\n#3 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#4 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#6 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(549): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#7 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#8 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\symfony\\console\\Command\\Command.php(264): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#9 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#10 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\symfony\\console\\Application.php(874): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#11 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\symfony\\console\\Application.php(228): Symfony\\Component\\Console\\Application->doRunCommand(Object(October\\Rain\\Scaffold\\Console\\CreateController), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#12 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\symfony\\console\\Application.php(130): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#13 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#14 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(121): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 {main}', null, '2019-09-18 04:38:45', '2019-09-18 04:38:45');
INSERT INTO `system_event_logs` VALUES ('2', 'error', 'October\\Rain\\Exception\\SystemException: Unable to find configuration file D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking/plugins/aura/backend/models/auralife/columns.yaml defined for Backend\\Behaviors\\ListController. in D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\modules\\system\\traits\\ConfigMaker.php:62\nStack trace:\n#0 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\modules\\backend\\behaviors\\ListController.php(137): Backend\\Classes\\ControllerBehavior->makeConfig(\'D:\\\\xampp\\\\htdocs...\')\n#1 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\modules\\backend\\behaviors\\ListController.php(109): Backend\\Behaviors\\ListController->makeList(\'list\')\n#2 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\modules\\backend\\behaviors\\ListController.php(283): Backend\\Behaviors\\ListController->makeLists()\n#3 [internal function]: Backend\\Behaviors\\ListController->index()\n#4 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#5 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\modules\\backend\\classes\\Controller.php(192): Backend\\Classes\\Controller->extendableCall(\'index\', Array)\n#6 [internal function]: Backend\\Classes\\Controller->__call(\'index\', Array)\n#7 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\modules\\backend\\classes\\Controller.php(397): call_user_func_array(Array, Array)\n#8 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\modules\\backend\\classes\\Controller.php(285): Backend\\Classes\\Controller->execPageAction(\'index\', Array)\n#9 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\modules\\backend\\classes\\BackendController.php(165): Backend\\Classes\\Controller->run(\'index\', Array)\n#10 [internal function]: Backend\\Classes\\BackendController->run(\'aura/backend/au...\')\n#11 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#12 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#13 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#14 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#15 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#16 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#37 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#38 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#39 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#40 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#41 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#42 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#48 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#49 D:\\xampp\\htdocs\\MySelf\\aura-booking\\03.WWW\\aura-booking\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#50 {main}', null, '2019-09-18 04:53:42', '2019-09-18 04:53:42');

-- ----------------------------
-- Table structure for system_files
-- ----------------------------
DROP TABLE IF EXISTS `system_files`;
CREATE TABLE `system_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_files_field_index` (`field`),
  KEY `system_files_attachment_id_index` (`attachment_id`),
  KEY `system_files_attachment_type_index` (`attachment_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of system_files
-- ----------------------------

-- ----------------------------
-- Table structure for system_mail_layouts
-- ----------------------------
DROP TABLE IF EXISTS `system_mail_layouts`;
CREATE TABLE `system_mail_layouts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of system_mail_layouts
-- ----------------------------
INSERT INTO `system_mail_layouts` VALUES ('1', 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', '1', null, '2019-09-16 14:07:25', '2019-09-16 14:07:25');
INSERT INTO `system_mail_layouts` VALUES ('2', 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', '1', null, '2019-09-16 14:07:25', '2019-09-16 14:07:25');

-- ----------------------------
-- Table structure for system_mail_partials
-- ----------------------------
DROP TABLE IF EXISTS `system_mail_partials`;
CREATE TABLE `system_mail_partials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of system_mail_partials
-- ----------------------------

-- ----------------------------
-- Table structure for system_mail_templates
-- ----------------------------
DROP TABLE IF EXISTS `system_mail_templates`;
CREATE TABLE `system_mail_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_mail_templates_layout_id_index` (`layout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of system_mail_templates
-- ----------------------------

-- ----------------------------
-- Table structure for system_parameters
-- ----------------------------
DROP TABLE IF EXISTS `system_parameters`;
CREATE TABLE `system_parameters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `item_index` (`namespace`,`group`,`item`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of system_parameters
-- ----------------------------
INSERT INTO `system_parameters` VALUES ('1', 'system', 'update', 'count', '0');
INSERT INTO `system_parameters` VALUES ('2', 'system', 'core', 'build', '458');
INSERT INTO `system_parameters` VALUES ('3', 'system', 'update', 'retry', '1568865267');

-- ----------------------------
-- Table structure for system_plugin_history
-- ----------------------------
DROP TABLE IF EXISTS `system_plugin_history`;
CREATE TABLE `system_plugin_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_plugin_history_code_index` (`code`),
  KEY `system_plugin_history_type_index` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of system_plugin_history
-- ----------------------------
INSERT INTO `system_plugin_history` VALUES ('1', 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2019-09-16 14:07:25');
INSERT INTO `system_plugin_history` VALUES ('2', 'RainLab.Builder', 'comment', '1.0.1', 'Initialize plugin.', '2019-09-18 03:56:28');
INSERT INTO `system_plugin_history` VALUES ('3', 'RainLab.Builder', 'comment', '1.0.2', 'Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.', '2019-09-18 03:56:28');
INSERT INTO `system_plugin_history` VALUES ('4', 'RainLab.Builder', 'comment', '1.0.3', 'Improved handling of the enum data type.', '2019-09-18 03:56:28');
INSERT INTO `system_plugin_history` VALUES ('5', 'RainLab.Builder', 'comment', '1.0.4', 'Added user permissions to work with the Builder.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('6', 'RainLab.Builder', 'comment', '1.0.5', 'Fixed permissions registration.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('7', 'RainLab.Builder', 'comment', '1.0.6', 'Fixed front-end record ordering in the Record List component.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('8', 'RainLab.Builder', 'comment', '1.0.7', 'Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('9', 'RainLab.Builder', 'comment', '1.0.8', 'Added the Reorder Controller behavior.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('10', 'RainLab.Builder', 'comment', '1.0.9', 'Minor API and UI updates.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('11', 'RainLab.Builder', 'comment', '1.0.10', 'Minor styling update.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('12', 'RainLab.Builder', 'comment', '1.0.11', 'Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('13', 'RainLab.Builder', 'comment', '1.0.12', 'Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('14', 'RainLab.Builder', 'comment', '1.0.13', 'Minor styling fix on the database editor.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('15', 'RainLab.Builder', 'comment', '1.0.14', 'Added support for published_at timestamp field', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('16', 'RainLab.Builder', 'comment', '1.0.15', 'Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('17', 'RainLab.Builder', 'comment', '1.0.16', 'Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form\'s outside area. Added a check that prevents creating localization strings inside other existing strings.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('18', 'RainLab.Builder', 'comment', '1.0.17', 'Added support Trigger attribute support for RecordFinder and Repeater form widgets.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('19', 'RainLab.Builder', 'comment', '1.0.18', 'Fixes a bug where \'::class\' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('20', 'RainLab.Builder', 'comment', '1.0.19', 'Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('21', 'RainLab.Builder', 'comment', '1.0.20', 'Fixes a bug where form the builder could trigger the \"current.hasAttribute is not a function\" error.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('22', 'RainLab.Builder', 'comment', '1.0.21', 'Back-end navigation sort order updated.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('23', 'RainLab.Builder', 'comment', '1.0.22', 'Added scopeValue property to the RecordList component.', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('24', 'RainLab.Builder', 'comment', '1.0.23', 'Added support for balloon-selector field type, added Brazilian Portuguese translation, fixed some bugs', '2019-09-18 03:56:29');
INSERT INTO `system_plugin_history` VALUES ('25', 'RainLab.Builder', 'comment', '1.0.24', 'Added support for tag list field type, added read only toggle for fields. Prevent plugins from using reserved PHP keywords for class names and namespaces', '2019-09-18 03:56:30');
INSERT INTO `system_plugin_history` VALUES ('26', 'RainLab.Builder', 'comment', '1.0.25', 'Allow editing of migration code in the \"Migration\" popup when saving changes in the database editor.', '2019-09-18 03:56:30');
INSERT INTO `system_plugin_history` VALUES ('27', 'RainLab.Builder', 'comment', '1.0.26', 'Allow special default values for columns and added new \"Add ID column\" button to database editor.', '2019-09-18 03:56:30');
INSERT INTO `system_plugin_history` VALUES ('28', 'RainLab.Translate', 'script', '1.0.1', 'create_messages_table.php', '2019-09-18 03:57:04');
INSERT INTO `system_plugin_history` VALUES ('29', 'RainLab.Translate', 'script', '1.0.1', 'create_attributes_table.php', '2019-09-18 03:57:04');
INSERT INTO `system_plugin_history` VALUES ('30', 'RainLab.Translate', 'script', '1.0.1', 'create_locales_table.php', '2019-09-18 03:57:05');
INSERT INTO `system_plugin_history` VALUES ('31', 'RainLab.Translate', 'comment', '1.0.1', 'First version of Translate', '2019-09-18 03:57:05');
INSERT INTO `system_plugin_history` VALUES ('32', 'RainLab.Translate', 'comment', '1.0.2', 'Languages and Messages can now be deleted.', '2019-09-18 03:57:05');
INSERT INTO `system_plugin_history` VALUES ('33', 'RainLab.Translate', 'comment', '1.0.3', 'Minor updates for latest October release.', '2019-09-18 03:57:05');
INSERT INTO `system_plugin_history` VALUES ('34', 'RainLab.Translate', 'comment', '1.0.4', 'Locale cache will clear when updating a language.', '2019-09-18 03:57:05');
INSERT INTO `system_plugin_history` VALUES ('35', 'RainLab.Translate', 'comment', '1.0.5', 'Add Spanish language and fix plugin config.', '2019-09-18 03:57:05');
INSERT INTO `system_plugin_history` VALUES ('36', 'RainLab.Translate', 'comment', '1.0.6', 'Minor improvements to the code.', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('37', 'RainLab.Translate', 'comment', '1.0.7', 'Fixes major bug where translations are skipped entirely!', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('38', 'RainLab.Translate', 'comment', '1.0.8', 'Minor bug fixes.', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('39', 'RainLab.Translate', 'comment', '1.0.9', 'Fixes an issue where newly created models lose their translated values.', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('40', 'RainLab.Translate', 'comment', '1.0.10', 'Minor fix for latest build.', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('41', 'RainLab.Translate', 'comment', '1.0.11', 'Fix multilingual rich editor when used in stretch mode.', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('42', 'RainLab.Translate', 'comment', '1.1.0', 'Introduce compatibility with RainLab.Pages plugin.', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('43', 'RainLab.Translate', 'comment', '1.1.1', 'Minor UI fix to the language picker.', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('44', 'RainLab.Translate', 'comment', '1.1.2', 'Add support for translating Static Content files.', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('45', 'RainLab.Translate', 'comment', '1.1.3', 'Improved support for the multilingual rich editor.', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('46', 'RainLab.Translate', 'comment', '1.1.4', 'Adds new multilingual markdown editor.', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('47', 'RainLab.Translate', 'comment', '1.1.5', 'Minor update to the multilingual control API.', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('48', 'RainLab.Translate', 'comment', '1.1.6', 'Minor improvements in the message editor.', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('49', 'RainLab.Translate', 'comment', '1.1.7', 'Fixes bug not showing content when first loading multilingual textarea controls.', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('50', 'RainLab.Translate', 'comment', '1.2.0', 'CMS pages now support translating the URL.', '2019-09-18 03:57:06');
INSERT INTO `system_plugin_history` VALUES ('51', 'RainLab.Translate', 'comment', '1.2.1', 'Minor update in the rich editor and code editor language control position.', '2019-09-18 03:57:07');
INSERT INTO `system_plugin_history` VALUES ('52', 'RainLab.Translate', 'comment', '1.2.2', 'Static Pages now support translating the URL.', '2019-09-18 03:57:07');
INSERT INTO `system_plugin_history` VALUES ('53', 'RainLab.Translate', 'comment', '1.2.3', 'Fixes Rich Editor when inserting a page link.', '2019-09-18 03:57:07');
INSERT INTO `system_plugin_history` VALUES ('54', 'RainLab.Translate', 'script', '1.2.4', 'create_indexes_table.php', '2019-09-18 03:57:08');
INSERT INTO `system_plugin_history` VALUES ('55', 'RainLab.Translate', 'comment', '1.2.4', 'Translatable attributes can now be declared as indexes.', '2019-09-18 03:57:08');
INSERT INTO `system_plugin_history` VALUES ('56', 'RainLab.Translate', 'comment', '1.2.5', 'Adds new multilingual repeater form widget.', '2019-09-18 03:57:08');
INSERT INTO `system_plugin_history` VALUES ('57', 'RainLab.Translate', 'comment', '1.2.6', 'Fixes repeater usage with static pages plugin.', '2019-09-18 03:57:08');
INSERT INTO `system_plugin_history` VALUES ('58', 'RainLab.Translate', 'comment', '1.2.7', 'Fixes placeholder usage with static pages plugin.', '2019-09-18 03:57:08');
INSERT INTO `system_plugin_history` VALUES ('59', 'RainLab.Translate', 'comment', '1.2.8', 'Improvements to code for latest October build compatibility.', '2019-09-18 03:57:08');
INSERT INTO `system_plugin_history` VALUES ('60', 'RainLab.Translate', 'comment', '1.2.9', 'Fixes context for translated strings when used with Static Pages.', '2019-09-18 03:57:08');
INSERT INTO `system_plugin_history` VALUES ('61', 'RainLab.Translate', 'comment', '1.2.10', 'Minor UI fix to the multilingual repeater.', '2019-09-18 03:57:08');
INSERT INTO `system_plugin_history` VALUES ('62', 'RainLab.Translate', 'comment', '1.2.11', 'Fixes translation not working with partials loaded via AJAX.', '2019-09-18 03:57:08');
INSERT INTO `system_plugin_history` VALUES ('63', 'RainLab.Translate', 'comment', '1.2.12', 'Add support for translating the new grouped repeater feature.', '2019-09-18 03:57:08');
INSERT INTO `system_plugin_history` VALUES ('64', 'RainLab.Translate', 'comment', '1.3.0', 'Added search to the translate messages page.', '2019-09-18 03:57:08');
INSERT INTO `system_plugin_history` VALUES ('65', 'RainLab.Translate', 'script', '1.3.1', 'builder_table_update_rainlab_translate_locales.php', '2019-09-18 03:57:09');
INSERT INTO `system_plugin_history` VALUES ('66', 'RainLab.Translate', 'script', '1.3.1', 'seed_all_tables.php', '2019-09-18 03:57:09');
INSERT INTO `system_plugin_history` VALUES ('67', 'RainLab.Translate', 'comment', '1.3.1', 'Added reordering to languages', '2019-09-18 03:57:09');
INSERT INTO `system_plugin_history` VALUES ('68', 'RainLab.Translate', 'comment', '1.3.2', 'Improved compatibility with RainLab.Pages, added ability to scan Mail Messages for translatable variables.', '2019-09-18 03:57:09');
INSERT INTO `system_plugin_history` VALUES ('69', 'RainLab.Translate', 'comment', '1.3.3', 'Fix to the locale picker session handling in Build 420 onwards.', '2019-09-18 03:57:09');
INSERT INTO `system_plugin_history` VALUES ('70', 'RainLab.Translate', 'comment', '1.3.4', 'Add alternate hreflang elements and adds prefixDefaultLocale setting.', '2019-09-18 03:57:09');
INSERT INTO `system_plugin_history` VALUES ('71', 'RainLab.Translate', 'comment', '1.3.5', 'Fix MLRepeater bug when switching locales.', '2019-09-18 03:57:09');
INSERT INTO `system_plugin_history` VALUES ('72', 'RainLab.Translate', 'comment', '1.3.6', 'Fix Middleware to use the prefixDefaultLocale setting introduced in 1.3.4', '2019-09-18 03:57:09');
INSERT INTO `system_plugin_history` VALUES ('73', 'RainLab.Translate', 'comment', '1.3.7', 'Fix config reference in LocaleMiddleware', '2019-09-18 03:57:10');
INSERT INTO `system_plugin_history` VALUES ('74', 'RainLab.Translate', 'comment', '1.3.8', 'Keep query string when switching locales', '2019-09-18 03:57:10');
INSERT INTO `system_plugin_history` VALUES ('75', 'RainLab.Translate', 'comment', '1.4.0', 'Add importer and exporter for messages', '2019-09-18 03:57:10');
INSERT INTO `system_plugin_history` VALUES ('76', 'RainLab.Translate', 'comment', '1.4.1', 'Updated Hungarian translation. Added Arabic translation. Fixed issue where default texts are overwritten by import. Fixed issue where the language switcher for repeater fields would overlap with the first repeater row.', '2019-09-18 03:57:10');
INSERT INTO `system_plugin_history` VALUES ('77', 'RainLab.Translate', 'comment', '1.4.2', 'Add multilingual MediaFinder', '2019-09-18 03:57:10');
INSERT INTO `system_plugin_history` VALUES ('78', 'RainLab.Translate', 'comment', '1.4.3', '!!! Please update OctoberCMS to Build 444 before updating this plugin. Added ability to translate CMS Pages fields (e.g. title, description, meta-title, meta-description)', '2019-09-18 03:57:10');
INSERT INTO `system_plugin_history` VALUES ('79', 'RainLab.Translate', 'comment', '1.4.4', 'Minor improvements to compatibility with Laravel framework.', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('80', 'RainLab.Translate', 'comment', '1.4.5', 'Fixed issue when using the language switcher', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('81', 'RainLab.Translate', 'comment', '1.5.0', 'Compatibility fix with Build 451', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('82', 'RainLab.Translate', 'comment', '1.6.0', 'Make File Upload widget properties translatable. Merge Repeater core changes into MLRepeater widget. Add getter method to retrieve original translate data.', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('83', 'RainLab.Translate', 'comment', '1.6.1', 'Add ability for models to provide translated computed data, add option to disable locale prefix routing', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('84', 'RainLab.Translate', 'comment', '1.6.2', 'Implement localeUrl filter, add per-locale theme configuration support', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('85', 'Excodus.TranslateExtended', 'comment', '1.0.1', 'First version of Translate Extended', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('86', 'Excodus.TranslateExtended', 'comment', '1.0.2', 'Added backend settings page with option to opt-out from the browser lang detection and route prefixing', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('87', 'Excodus.TranslateExtended', 'comment', '1.0.2', 'Bug fixes', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('88', 'Excodus.TranslateExtended', 'comment', '1.0.2', 'Improved browser language matching', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('89', 'Excodus.TranslateExtended', 'comment', '1.0.3', 'Fixed default plugin settings', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('90', 'Excodus.TranslateExtended', 'comment', '1.0.4', 'Added extended locale picker', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('91', 'Excodus.TranslateExtended', 'comment', '1.0.5', 'Bug fixes', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('92', 'Excodus.TranslateExtended', 'comment', '1.0.5', 'Added setting for homepage redirect', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('93', 'Excodus.TranslateExtended', 'comment', '1.0.6', 'Support for translated page URLs', '2019-09-18 03:57:11');
INSERT INTO `system_plugin_history` VALUES ('94', 'Excodus.TranslateExtended', 'comment', '1.0.6', 'Fix for switcher for pages in subdirectory of domain', '2019-09-18 03:57:12');
INSERT INTO `system_plugin_history` VALUES ('95', 'Excodus.TranslateExtended', 'comment', '1.0.7', 'Specified \'web\' middleware for Laravel 5.5 support', '2019-09-18 03:57:12');
INSERT INTO `system_plugin_history` VALUES ('96', 'Aura.Backend', 'comment', '1.0.1', 'First version of Backend', '2019-09-18 04:03:07');
INSERT INTO `system_plugin_history` VALUES ('97', 'Aura.Backend', 'script', '1.0.2', 'builder_table_create_aura_backend_banner.php', '2019-09-18 04:03:08');
INSERT INTO `system_plugin_history` VALUES ('98', 'Aura.Backend', 'comment', '1.0.2', 'Created table aura_backend_banner', '2019-09-18 04:03:08');
INSERT INTO `system_plugin_history` VALUES ('99', 'Aura.Backend', 'script', '1.0.3', 'builder_table_create_aura_backend_service.php', '2019-09-18 04:03:38');
INSERT INTO `system_plugin_history` VALUES ('100', 'Aura.Backend', 'comment', '1.0.3', 'Created table aura_backend_service', '2019-09-18 04:03:38');
INSERT INTO `system_plugin_history` VALUES ('101', 'Aura.Backend', 'script', '1.0.4', 'builder_table_create_aura_backend_store.php', '2019-09-18 04:05:12');
INSERT INTO `system_plugin_history` VALUES ('102', 'Aura.Backend', 'comment', '1.0.4', 'Created table aura_backend_store', '2019-09-18 04:05:12');
INSERT INTO `system_plugin_history` VALUES ('103', 'Aura.Backend', 'script', '1.0.5', 'builder_table_create_aura_backend_banner_store.php', '2019-09-18 04:06:01');
INSERT INTO `system_plugin_history` VALUES ('104', 'Aura.Backend', 'comment', '1.0.5', 'Created table aura_backend_banner_store', '2019-09-18 04:06:01');
INSERT INTO `system_plugin_history` VALUES ('105', 'Aura.Backend', 'script', '1.0.6', 'builder_table_create_aura_backend_room_type.php', '2019-09-18 04:06:33');
INSERT INTO `system_plugin_history` VALUES ('106', 'Aura.Backend', 'comment', '1.0.6', 'Created table aura_backend_room_type', '2019-09-18 04:06:33');
INSERT INTO `system_plugin_history` VALUES ('107', 'Aura.Backend', 'script', '1.0.7', 'builder_table_create_aura_backend_room_category.php', '2019-09-18 04:10:16');
INSERT INTO `system_plugin_history` VALUES ('108', 'Aura.Backend', 'comment', '1.0.7', 'Created table aura_backend_room_category', '2019-09-18 04:10:16');
INSERT INTO `system_plugin_history` VALUES ('109', 'Aura.Backend', 'script', '1.0.8', 'builder_table_create_aura_backend_room.php', '2019-09-18 04:12:43');
INSERT INTO `system_plugin_history` VALUES ('110', 'Aura.Backend', 'comment', '1.0.8', 'Created table aura_backend_room', '2019-09-18 04:12:43');
INSERT INTO `system_plugin_history` VALUES ('111', 'Aura.Backend', 'script', '1.0.9', 'builder_table_create_aura_backend_room_info.php', '2019-09-18 04:14:15');
INSERT INTO `system_plugin_history` VALUES ('112', 'Aura.Backend', 'comment', '1.0.9', 'Created table aura_backend_room_info', '2019-09-18 04:14:15');
INSERT INTO `system_plugin_history` VALUES ('113', 'Aura.Backend', 'script', '1.0.10', 'builder_table_create_aura_backend_room_service.php', '2019-09-18 04:14:55');
INSERT INTO `system_plugin_history` VALUES ('114', 'Aura.Backend', 'comment', '1.0.10', 'Created table aura_backend_room_service', '2019-09-18 04:14:55');
INSERT INTO `system_plugin_history` VALUES ('115', 'Aura.Backend', 'script', '1.0.11', 'builder_table_create_aura_backend_aura_life.php', '2019-09-18 04:16:29');
INSERT INTO `system_plugin_history` VALUES ('116', 'Aura.Backend', 'comment', '1.0.11', 'Created table aura_backend_aura_life', '2019-09-18 04:16:29');
INSERT INTO `system_plugin_history` VALUES ('117', 'Aura.Backend', 'script', '1.0.12', 'builder_table_create_aura_backend_aura_life_info.php', '2019-09-18 04:17:12');
INSERT INTO `system_plugin_history` VALUES ('118', 'Aura.Backend', 'comment', '1.0.12', 'Created table aura_backend_aura_life_info', '2019-09-18 04:17:12');
INSERT INTO `system_plugin_history` VALUES ('119', 'Aura.Backend', 'script', '1.0.13', 'builder_table_create_aura_backend_aura_district_info.php', '2019-09-18 04:18:49');
INSERT INTO `system_plugin_history` VALUES ('120', 'Aura.Backend', 'comment', '1.0.13', 'Created table aura_backend_aura_district_info', '2019-09-18 04:18:49');

-- ----------------------------
-- Table structure for system_plugin_versions
-- ----------------------------
DROP TABLE IF EXISTS `system_plugin_versions`;
CREATE TABLE `system_plugin_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `system_plugin_versions_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of system_plugin_versions
-- ----------------------------
INSERT INTO `system_plugin_versions` VALUES ('1', 'October.Demo', '1.0.1', '2019-09-16 14:07:25', '0', '0');
INSERT INTO `system_plugin_versions` VALUES ('2', 'RainLab.Builder', '1.0.26', '2019-09-18 03:56:30', '0', '0');
INSERT INTO `system_plugin_versions` VALUES ('3', 'RainLab.Translate', '1.6.2', '2019-09-18 03:57:11', '0', '0');
INSERT INTO `system_plugin_versions` VALUES ('4', 'Excodus.TranslateExtended', '1.0.7', '2019-09-18 03:57:12', '0', '0');
INSERT INTO `system_plugin_versions` VALUES ('5', 'Aura.Backend', '1.0.13', '2019-09-18 04:18:49', '0', '0');

-- ----------------------------
-- Table structure for system_request_logs
-- ----------------------------
DROP TABLE IF EXISTS `system_request_logs`;
CREATE TABLE `system_request_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of system_request_logs
-- ----------------------------

-- ----------------------------
-- Table structure for system_revisions
-- ----------------------------
DROP TABLE IF EXISTS `system_revisions`;
CREATE TABLE `system_revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  KEY `system_revisions_user_id_index` (`user_id`),
  KEY `system_revisions_field_index` (`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of system_revisions
-- ----------------------------

-- ----------------------------
-- Table structure for system_settings
-- ----------------------------
DROP TABLE IF EXISTS `system_settings`;
CREATE TABLE `system_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `system_settings_item_index` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of system_settings
-- ----------------------------

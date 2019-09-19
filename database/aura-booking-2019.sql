/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : aura-booking-2019

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-09-19 17:05:23
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_aura_district_info
-- ----------------------------
INSERT INTO `aura_backend_aura_district_info` VALUES ('1', '/aura-district/slg1.png', 'Tự do kiến tạo chất riêng trong không gian và tiện ích hiện đại.', '2019-09-19 10:48:53', null);
INSERT INTO `aura_backend_aura_district_info` VALUES ('2', '/aura-district/slg2.png', 'Kết bạn và chia sẻ những câu chuyện đầy thú vị từ bốn phương.', '2019-09-19 10:49:32', null);
INSERT INTO `aura_backend_aura_district_info` VALUES ('3', '/aura-district/slg3.png', 'Tốt hơn mỗi ngày bằng việc phát triển bản thân và kết nối bạn bè.', '2019-09-19 10:50:13', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_aura_life
-- ----------------------------
INSERT INTO `aura_backend_aura_life` VALUES ('1', '/aura-life/life1.png', '/aura-life/life2.png', '2019-09-19 10:27:05', null);
INSERT INTO `aura_backend_aura_life` VALUES ('2', '/aura-life/life3.png', '/aura-life/life4.png', '2019-09-19 10:32:15', null);
INSERT INTO `aura_backend_aura_life` VALUES ('3', '/aura-life/life6.png', '/aura-life/life5.png', '2019-09-19 10:34:32', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_aura_life_info
-- ----------------------------
INSERT INTO `aura_backend_aura_life_info` VALUES ('1', '1', 'Khóa học\r\nđặc biệt', '/icon/icon1.png', '2019-09-19 10:30:12', null);
INSERT INTO `aura_backend_aura_life_info` VALUES ('2', '1', 'Thư viện', '/icon/icon2.png', '2019-09-19 10:30:45', null);
INSERT INTO `aura_backend_aura_life_info` VALUES ('3', '1', 'Hoạt động\r\ndã ngoại', '/icon/icon3.png', '2019-09-19 10:31:39', null);
INSERT INTO `aura_backend_aura_life_info` VALUES ('4', '2', 'Dọn dẹp', '/icon/icon6.png', '2019-09-19 10:33:28', null);
INSERT INTO `aura_backend_aura_life_info` VALUES ('5', '2', 'Giặt ủi', '/icon/icon7.png', '2019-09-19 10:33:50', null);
INSERT INTO `aura_backend_aura_life_info` VALUES ('6', '2', 'Wifi', '/icon/icon8.png', '2019-09-19 10:34:05', null);
INSERT INTO `aura_backend_aura_life_info` VALUES ('7', '3', 'Khu vui chơi', '/icon/icon10.png', '2019-09-19 10:34:54', null);
INSERT INTO `aura_backend_aura_life_info` VALUES ('8', '3', 'Gym', '/icon/icon9.png', '2019-09-19 10:35:09', null);
INSERT INTO `aura_backend_aura_life_info` VALUES ('9', '3', 'Yoga', '/icon/icon5.png', '2019-09-19 10:35:22', null);
INSERT INTO `aura_backend_aura_life_info` VALUES ('10', '3', 'Cafe', '/icon/icon4.png', '2019-09-19 10:35:31', null);

-- ----------------------------
-- Table structure for aura_backend_banner
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_banner`;
CREATE TABLE `aura_backend_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_banner
-- ----------------------------
INSERT INTO `aura_backend_banner` VALUES ('1', 'ở Aura District', '/banner/motngay.png', '7am', 'Tham gia ngay một buổi workshop đầy sáng tạo. Để bất ngờ với những tiềm năng của bản thân chưa từng được khai phá!', '/banner/slide1.png', '2019-09-19 11:18:53', null);
INSERT INTO `aura_backend_banner` VALUES ('2', 'ở Aura District', '/banner/motngay.png', '9am', 'Tham gia ngay một buổi workshop đầy sáng tạo. Để bất ngờ với những tiềm năng của bản thân chưa từng được khai phá!', '/banner/slide2.png', '2019-09-19 11:18:46', null);
INSERT INTO `aura_backend_banner` VALUES ('3', 'ở Aura District', '/banner/motngay.png', '10am', 'Tham gia ngay một buổi workshop đầy sáng tạo. Để bất ngờ với những tiềm năng của bản thân chưa từng được khai phá!', '/banner/slide5.png', '2019-09-19 11:19:45', null);
INSERT INTO `aura_backend_banner` VALUES ('4', 'ở Aura District', '/banner/motngay.png', '4pm', 'Tham gia ngay một buổi workshop đầy sáng tạo. Để bất ngờ với những tiềm năng của bản thân chưa từng được khai phá!', '/banner/slide6.png', '2019-09-19 11:20:28', null);
INSERT INTO `aura_backend_banner` VALUES ('5', 'ở Aura District', '/banner/motngay.png', '8pm', 'Tham gia ngay một buổi workshop đầy sáng tạo. Để bất ngờ với những tiềm năng của bản thân chưa từng được khai phá!', '/banner/slide7.png', '2019-09-19 11:20:56', null);

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
-- Table structure for aura_backend_faq
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_faq`;
CREATE TABLE `aura_backend_faq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_faq
-- ----------------------------
INSERT INTO `aura_backend_faq` VALUES ('1', 'Làm thế nào để đăng kí sử dụng dịch vụ tại Aura Co-living? Giá phòng 1 tháng tại Aura? Tôi có được xem trước phòng hoặc share phòng với bạn bè không?', 'Qui trình đăng kí sử dụng dịch vụ hiện chưa có. Giá phòng 1 tháng tại Aura là 3,5tr bao gồm điện nước, chưa bao gồm phí gửi xe. Bạn sẽ được tham quan phòng trước khi đặt và Aura rất tiếc là bạn không thể share phòng với bạn bè, vì 1 phòng tại Aura được thiết kế riêng biệt cho 1 người dùng giúp tối ưu sự riêng tư.', '2019-09-19 04:48:33', '2019-09-19 04:48:33');
INSERT INTO `aura_backend_faq` VALUES ('2', 'Tôi có phải đặt cọc trước nếu book phòng tại Aura Coliving không? Chế độ hủy đặt phòng của Aura co-living như thế nào?', 'Đối với khách ở dài hạn, nếu muốn book phòng tại Aura, bạn sẽ phải đặt cọc trước 2 tháng tiền phòng (7 triệu). Đối với khách ở ngắn hạn, bạn không cần đặt cọc khi book phòng. Chế độ hủy đặt phòng chưa có', '2019-09-19 04:48:44', '2019-09-19 04:48:44');
INSERT INTO `aura_backend_faq` VALUES ('3', 'Chế độ trả phòng của Aura co-living như thế nào?', 'Đối với khách ở dài hạn, bạn phải thông báo trước 1 tháng nếu muốn check-out. Đối với khách ở ngắn hạn, bạn phải check-out trước 14h.', '2019-09-19 04:48:55', '2019-09-19 04:48:55');
INSERT INTO `aura_backend_faq` VALUES ('4', 'Những giấy tờ hành chính để chuyển vào Aura co-living?', 'Đối với khách hàng lưu trú ngắn hạn, chỉ cần cmnd/passport để check-in. Đối với khách hàng lưu trú dài hạn, cần cung cấp cmnd/passport và giấy đăng kí tạm vắng tại địa phương', '2019-09-19 04:49:07', '2019-09-19 04:49:07');
INSERT INTO `aura_backend_faq` VALUES ('5', 'Các hình thức thanh toán tại Aura.  Hướng dẫn thanh toán trực tuyến tại Aura', 'Có 4 hình thức thanh toán tại Aura\r\n-Thanh toán bằng thẻ ngân hàng\r\n-Thanh toán bằng tiền mặt\r\n-Thanh toán qua app của Aura\r\n-Thanh toán qua ví điện tử của Aura', '2019-09-19 04:49:28', '2019-09-19 04:49:28');
INSERT INTO `aura_backend_faq` VALUES ('6', 'Có gì khác biệt giữa Aura co-living và các hình thức cư trú khác? Vd: homestay, khách sạn giá rẻ, phòng trọ, kí túc xá...', 'Khi là thành viên Aura, bạn sẽ sở hữu không gian nghỉ ngơi riêng tư tuyệt đối. Bạn còn có thể sử dụng không gian co-working rộng rãi, đầy đủ tiện nghi của Aura để làm việc. Ngoài ra, Aura còn tổ chức các buổi hội thảo, workshop, các lớp kĩ năng, lớp học nhảy, yoga để bạn học hỏi và giảm stress. Chúng mình còn phát triển Aura app giúp bạn theo dõi những sự kiện hay ho diễn ra trong ngày, đặt chỗ ở các buổi hội thảo, thanh toán các dịch vụ tại Aura.', '2019-09-19 04:49:43', '2019-09-19 04:49:43');
INSERT INTO `aura_backend_faq` VALUES ('7', 'Aura Co-living có app không? Cách sử dụng như thế nào?', 'Aura Co-living có phát triển app mang tên Aura District', '2019-09-19 04:50:20', '2019-09-19 04:50:20');
INSERT INTO `aura_backend_faq` VALUES ('8', 'Không gian sự kiện Aura bao gồm những gì?', 'Không gian sự kiện ở Aura có thiết kế trang nhã, ở ngay vị trí trung tâm. Aura cung cấp cho bạn tất cả các thiết bị tổ chức sự kiện cần thiết như máy chiếu, màn hình, micrô hoặc bộ công cụ. Nếu bạn cần dữ liệu hình ảnh cho sự kiện của mình, Aura sẽ kết nối bạn với các nhà quay phim và nhiếp ảnh gia chuyên nghiệp giúp bạn ghi lại những khoảnh khắc đáng nhớ trong sự kiện. Bạn yên tâm, các chi phí ở Aura đều minh bạch. Bất kì ai cũng có thể đặt ngay không gian tổ chức sự kiện tại Aura. Sự năng động, không gian thiết kế tốt có thể được đặt bất cứ lúc nào cho các sự kiện công cộng cũng như riêng tư. Tất cả các không gian đều có khả năng tùy biến cao giúp bạn tùy chỉnh không gian phù hợp với yêu cầu riêng. Nếu bạn cần không gian để tổ chức sự kiện, Aura là lựa chọn tuyệt vời cho bạn', '2019-09-19 04:50:43', '2019-09-19 04:50:43');

-- ----------------------------
-- Table structure for aura_backend_menu
-- ----------------------------
DROP TABLE IF EXISTS `aura_backend_menu`;
CREATE TABLE `aura_backend_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_menu
-- ----------------------------
INSERT INTO `aura_backend_menu` VALUES ('1', 'Dịch vụ', '0', 'dich-vu', '2019-09-19 17:02:10', '2019-09-19 10:02:10');
INSERT INTO `aura_backend_menu` VALUES ('2', 'Địa điểm', '0', 'dia-diem', '2019-09-19 17:02:17', '2019-09-19 10:02:17');
INSERT INTO `aura_backend_menu` VALUES ('3', 'Thành viên', '0', 'thanh-vien', '2019-09-19 17:02:22', '2019-09-19 10:02:22');
INSERT INTO `aura_backend_menu` VALUES ('4', 'Về Aura', '0', 've-aura', '2019-09-19 17:02:29', '2019-09-19 10:02:29');
INSERT INTO `aura_backend_menu` VALUES ('5', 'Co-Living', '1', 'co-living', '2019-09-19 17:01:58', '2019-09-19 10:01:58');
INSERT INTO `aura_backend_menu` VALUES ('6', 'Co-working', '1', 'co-working', '2019-09-19 17:02:05', '2019-09-19 10:02:05');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of aura_backend_service
-- ----------------------------
INSERT INTO `aura_backend_service` VALUES ('1', 'Co-Living', '2019-09-19 03:57:05', '2019-09-19 03:57:05');
INSERT INTO `aura_backend_service` VALUES ('2', 'Co-Working', '2019-09-19 03:57:12', '2019-09-19 03:57:12');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of backend_user_preferences
-- ----------------------------
INSERT INTO `backend_user_preferences` VALUES ('1', '1', 'rainlab_translate', 'locales', 'lists', '{\"visible\":[\"name\",\"code\",\"is_default\",\"is_enabled\"],\"per_page\":\"20\"}');

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

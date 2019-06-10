/*
 Navicat MySQL Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : pfinal_cms

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 10/06/2019 18:08:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, '系统管理', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, '用户管理', 'fa-tasks', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, '用户列表', 'fa-users', 'auth/users', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, '角色管理', 'fa-user', 'auth/roles', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, '权限管理', 'fa-ban', 'auth/permissions', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, '菜单管理', 'fa-bars', 'auth/menu', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, '操作日志', 'fa-history', 'auth/logs', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (8, 1, 0, '前台系统管理', 'fa-500px', 'reception_system', NULL, '2019-06-10 07:18:41', '2019-06-10 07:18:41');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 287 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:02:16', '2019-06-10 05:02:16');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:02:21', '2019-06-10 05:02:21');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:02:26', '2019-06-10 05:02:26');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:02:58', '2019-06-10 05:02:58');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:09:56', '2019-06-10 05:09:56');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:15:32', '2019-06-10 05:15:32');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:16:12', '2019-06-10 05:16:12');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:16:40', '2019-06-10 05:16:40');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:16:42', '2019-06-10 05:16:42');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:16:43', '2019-06-10 05:16:43');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:16:51', '2019-06-10 05:16:51');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-06-10 05:17:29', '2019-06-10 05:17:29');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:17:32', '2019-06-10 05:17:32');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:17:38', '2019-06-10 05:17:38');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-06-10 05:17:53', '2019-06-10 05:17:53');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:17:55', '2019-06-10 05:17:55');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:18:54', '2019-06-10 05:18:54');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:18:54', '2019-06-10 05:18:54');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:20:23', '2019-06-10 05:20:23');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:21:39', '2019-06-10 05:21:39');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:21:59', '2019-06-10 05:21:59');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:24:13', '2019-06-10 05:24:13');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:29:38', '2019-06-10 05:29:38');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:31:01', '2019-06-10 05:31:01');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:31:08', '2019-06-10 05:31:08');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:31:37', '2019-06-10 05:31:37');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:31:59', '2019-06-10 05:31:59');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:32:36', '2019-06-10 05:32:36');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:32:44', '2019-06-10 05:32:44');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:33:34', '2019-06-10 05:33:34');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:33:44', '2019-06-10 05:33:44');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:33:50', '2019-06-10 05:33:50');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:34:17', '2019-06-10 05:34:17');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:34:42', '2019-06-10 05:34:42');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:35:07', '2019-06-10 05:35:07');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:35:21', '2019-06-10 05:35:21');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:36:01', '2019-06-10 05:36:01');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:36:16', '2019-06-10 05:36:16');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:36:38', '2019-06-10 05:36:38');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:37:07', '2019-06-10 05:37:07');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:37:37', '2019-06-10 05:37:37');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 05:40:40', '2019-06-10 05:40:40');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:40:56', '2019-06-10 05:40:56');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:40:57', '2019-06-10 05:40:57');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:41:00', '2019-06-10 05:41:00');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:41:04', '2019-06-10 05:41:04');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:42:09', '2019-06-10 05:42:09');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 05:42:31', '2019-06-10 05:42:31');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"PFinal\",\"password\":\"$2y$10$wvDuAWnG8BOXDcAbSLgxeubWObiVRXmb9m2xt1GCW58bZi1Hd.Sx.\",\"password_confirmation\":\"$2y$10$wvDuAWnG8BOXDcAbSLgxeubWObiVRXmb9m2xt1GCW58bZi1Hd.Sx.\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.pfinal_cms.com\\/admin\"}', '2019-06-10 05:43:03', '2019-06-10 05:43:03');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-06-10 05:43:03', '2019-06-10 05:43:03');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-06-10 05:45:55', '2019-06-10 05:45:55');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-06-10 05:49:09', '2019-06-10 05:49:09');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"PFinal\",\"password\":\"$2y$10$wvDuAWnG8BOXDcAbSLgxeubWObiVRXmb9m2xt1GCW58bZi1Hd.Sx.\",\"password_confirmation\":\"$2y$10$wvDuAWnG8BOXDcAbSLgxeubWObiVRXmb9m2xt1GCW58bZi1Hd.Sx.\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.pfinal_cms.com\\/admin\\/auth\\/login\"}', '2019-06-10 05:49:21', '2019-06-10 05:49:21');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-06-10 05:49:21', '2019-06-10 05:49:21');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-06-10 06:00:00', '2019-06-10 06:00:00');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 06:00:14', '2019-06-10 06:00:14');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 06:00:17', '2019-06-10 06:00:17');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 06:00:34', '2019-06-10 06:00:34');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 06:00:45', '2019-06-10 06:00:45');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 06:01:08', '2019-06-10 06:01:08');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 06:01:47', '2019-06-10 06:01:47');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 06:01:52', '2019-06-10 06:01:52');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-06-10 06:22:03', '2019-06-10 06:22:03');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:22:12', '2019-06-10 06:22:12');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:22:45', '2019-06-10 06:22:45');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:22:54', '2019-06-10 06:22:54');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:23:20', '2019-06-10 06:23:20');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:23:29', '2019-06-10 06:23:29');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:23:48', '2019-06-10 06:23:48');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:23:52', '2019-06-10 06:23:52');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 06:23:59', '2019-06-10 06:23:59');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 06:29:29', '2019-06-10 06:29:29');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:30:09', '2019-06-10 06:30:09');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:30:56', '2019-06-10 06:30:56');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:31:01', '2019-06-10 06:31:01');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:50:52', '2019-06-10 06:50:52');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:51:50', '2019-06-10 06:51:50');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:52:03', '2019-06-10 06:52:03');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:52:19', '2019-06-10 06:52:19');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:52:51', '2019-06-10 06:52:51');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:56:22', '2019-06-10 06:56:22');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:56:40', '2019-06-10 06:56:40');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:59:12', '2019-06-10 06:59:12');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 06:59:57', '2019-06-10 06:59:57');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 07:00:35', '2019-06-10 07:00:35');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 07:01:13', '2019-06-10 07:01:13');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 07:02:09', '2019-06-10 07:02:09');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 07:02:46', '2019-06-10 07:02:46');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 07:03:35', '2019-06-10 07:03:35');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 07:04:03', '2019-06-10 07:04:03');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 07:04:59', '2019-06-10 07:04:59');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:05:25', '2019-06-10 07:05:25');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:05:28', '2019-06-10 07:05:28');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:05:34', '2019-06-10 07:05:34');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:05:35', '2019-06-10 07:05:35');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:05:39', '2019-06-10 07:05:39');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:05:44', '2019-06-10 07:05:44');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:06:18', '2019-06-10 07:06:18');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:06:22', '2019-06-10 07:06:22');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:06:50', '2019-06-10 07:06:50');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:06:55', '2019-06-10 07:06:55');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:07:05', '2019-06-10 07:07:05');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:07:10', '2019-06-10 07:07:10');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:07:11', '2019-06-10 07:07:11');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:07:15', '2019-06-10 07:07:15');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:07:18', '2019-06-10 07:07:18');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:07:55', '2019-06-10 07:07:55');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:08:03', '2019-06-10 07:08:03');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:08:06', '2019-06-10 07:08:06');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:08:11', '2019-06-10 07:08:11');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:08:15', '2019-06-10 07:08:15');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:08:20', '2019-06-10 07:08:20');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:08:25', '2019-06-10 07:08:25');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:08:30', '2019-06-10 07:08:30');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:08:33', '2019-06-10 07:08:33');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:08:34', '2019-06-10 07:08:34');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:08:43', '2019-06-10 07:08:43');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:08:44', '2019-06-10 07:08:44');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:09:09', '2019-06-10 07:09:09');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 07:12:47', '2019-06-10 07:12:47');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 07:14:55', '2019-06-10 07:14:55');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 07:15:06', '2019-06-10 07:15:06');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 07:16:46', '2019-06-10 07:16:46');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:17:02', '2019-06-10 07:17:02');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:17:05', '2019-06-10 07:17:05');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:17:42', '2019-06-10 07:17:42');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:17:46', '2019-06-10 07:17:46');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:17:53', '2019-06-10 07:17:53');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:17:57', '2019-06-10 07:17:57');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:18:00', '2019-06-10 07:18:00');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:18:04', '2019-06-10 07:18:04');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"\\u524d\\u53f0\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-500px\",\"uri\":\"reception_system\",\"roles\":[null],\"permission\":null,\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 07:18:41', '2019-06-10 07:18:41');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-10 07:18:42', '2019-06-10 07:18:42');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:18:46', '2019-06-10 07:18:46');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:18:49', '2019-06-10 07:18:49');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:18:52', '2019-06-10 07:18:52');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:19:15', '2019-06-10 07:19:15');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:20:17', '2019-06-10 07:20:17');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:20:19', '2019-06-10 07:20:19');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 07:20:20', '2019-06-10 07:20:20');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:20:23', '2019-06-10 07:20:23');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:20:30', '2019-06-10 07:20:30');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 07:20:59', '2019-06-10 07:20:59');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:21:01', '2019-06-10 07:21:01');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 07:38:42', '2019-06-10 07:38:42');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 07:39:27', '2019-06-10 07:39:27');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:39:29', '2019-06-10 07:39:29');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:40:55', '2019-06-10 07:40:55');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:40:56', '2019-06-10 07:40:56');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 07:41:09', '2019-06-10 07:41:09');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 07:42:24', '2019-06-10 07:42:24');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 07:42:37', '2019-06-10 07:42:37');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 07:43:08', '2019-06-10 07:43:08');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:43:15', '2019-06-10 07:43:15');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:43:16', '2019-06-10 07:43:16');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:44:09', '2019-06-10 07:44:09');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:44:56', '2019-06-10 07:44:56');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:45:00', '2019-06-10 07:45:00');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:45:06', '2019-06-10 07:45:06');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:45:10', '2019-06-10 07:45:10');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:48:18', '2019-06-10 07:48:18');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:48:29', '2019-06-10 07:48:29');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:48:32', '2019-06-10 07:48:32');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:48:34', '2019-06-10 07:48:34');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:48:39', '2019-06-10 07:48:39');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:48:40', '2019-06-10 07:48:40');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:48:41', '2019-06-10 07:48:41');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:48:43', '2019-06-10 07:48:43');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:48:50', '2019-06-10 07:48:50');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:48:52', '2019-06-10 07:48:52');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:48:53', '2019-06-10 07:48:53');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:48:54', '2019-06-10 07:48:54');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:48:56', '2019-06-10 07:48:56');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-10 07:49:02', '2019-06-10 07:49:02');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-10 07:56:43', '2019-06-10 07:56:43');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-10 07:57:52', '2019-06-10 07:57:52');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:57:55', '2019-06-10 07:57:55');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:57:57', '2019-06-10 07:57:57');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-10 07:58:23', '2019-06-10 07:58:23');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 07:58:26', '2019-06-10 07:58:26');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 07:58:50', '2019-06-10 07:58:50');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 08:00:56', '2019-06-10 08:00:56');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 08:00:59', '2019-06-10 08:00:59');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-10 08:02:25', '2019-06-10 08:02:25');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 08:02:29', '2019-06-10 08:02:29');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-10 08:12:58', '2019-06-10 08:12:58');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:16:39', '2019-06-10 08:16:39');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:17:58', '2019-06-10 08:17:58');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:26:02', '2019-06-10 08:26:02');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:28:52', '2019-06-10 08:28:52');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:30:49', '2019-06-10 08:30:49');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 08:31:05', '2019-06-10 08:31:05');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 08:31:09', '2019-06-10 08:31:09');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 08:31:12', '2019-06-10 08:31:12');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 08:31:22', '2019-06-10 08:31:22');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 08:31:28', '2019-06-10 08:31:28');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 08:31:40', '2019-06-10 08:31:40');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:33:46', '2019-06-10 08:33:46');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:36:03', '2019-06-10 08:36:03');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:36:06', '2019-06-10 08:36:06');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:38:06', '2019-06-10 08:38:06');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:39:49', '2019-06-10 08:39:49');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:40:16', '2019-06-10 08:40:16');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:43:52', '2019-06-10 08:43:52');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:44:30', '2019-06-10 08:44:30');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:45:41', '2019-06-10 08:45:41');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:47:17', '2019-06-10 08:47:17');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:47:19', '2019-06-10 08:47:19');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:47:45', '2019-06-10 08:47:45');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:49:07', '2019-06-10 08:49:07');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:49:34', '2019-06-10 08:49:34');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 08:50:01', '2019-06-10 08:50:01');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 08:50:03', '2019-06-10 08:50:03');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 08:50:57', '2019-06-10 08:50:57');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 08:51:45', '2019-06-10 08:51:45');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 08:51:47', '2019-06-10 08:51:47');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:52:13', '2019-06-10 08:52:13');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:52:26', '2019-06-10 08:52:26');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:55:35', '2019-06-10 08:55:35');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 08:55:50', '2019-06-10 08:55:50');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:55:50', '2019-06-10 08:55:50');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 08:57:05', '2019-06-10 08:57:05');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:57:05', '2019-06-10 08:57:05');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 08:57:26', '2019-06-10 08:57:26');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:57:26', '2019-06-10 08:57:26');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 08:59:07', '2019-06-10 08:59:07');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 08:59:07', '2019-06-10 08:59:07');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 08:59:30', '2019-06-10 08:59:30');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:00:21', '2019-06-10 09:00:21');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:00:31', '2019-06-10 09:00:31');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:22:23', '2019-06-10 09:22:23');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:22:59', '2019-06-10 09:22:59');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:23:07', '2019-06-10 09:23:07');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-10 09:38:51', '2019-06-10 09:38:51');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 09:39:01', '2019-06-10 09:39:01');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"PFinal\",\"password\":\"$2y$10$wvDuAWnG8BOXDcAbSLgxeubWObiVRXmb9m2xt1GCW58bZi1Hd.Sx.\",\"password_confirmation\":\"$2y$10$wvDuAWnG8BOXDcAbSLgxeubWObiVRXmb9m2xt1GCW58bZi1Hd.Sx.\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.pfinal_cms.com\\/admin\"}', '2019-06-10 09:39:13', '2019-06-10 09:39:13');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 09:47:39', '2019-06-10 09:47:39');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 09:47:44', '2019-06-10 09:47:44');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:48:16', '2019-06-10 09:48:16');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 09:48:49', '2019-06-10 09:48:49');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":null,\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:48:55', '2019-06-10 09:48:55');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 09:49:13', '2019-06-10 09:49:13');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:49:47', '2019-06-10 09:49:47');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 09:52:26', '2019-06-10 09:52:26');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:52:29', '2019-06-10 09:52:29');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:52:35', '2019-06-10 09:52:35');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 09:52:44', '2019-06-10 09:52:44');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:52:46', '2019-06-10 09:52:46');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:53:39', '2019-06-10 09:53:39');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:53:41', '2019-06-10 09:53:41');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:53:42', '2019-06-10 09:53:42');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:54:08', '2019-06-10 09:54:08');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:54:08', '2019-06-10 09:54:08');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:54:25', '2019-06-10 09:54:25');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:54:28', '2019-06-10 09:54:28');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:54:28', '2019-06-10 09:54:28');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:55:04', '2019-06-10 09:55:04');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:55:06', '2019-06-10 09:55:06');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-10 09:56:31', '2019-06-10 09:56:31');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:56:35', '2019-06-10 09:56:35');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:56:37', '2019-06-10 09:56:37');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:57:24', '2019-06-10 09:57:24');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:57:26', '2019-06-10 09:57:26');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:57:32', '2019-06-10 09:57:32');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:58:00', '2019-06-10 09:58:00');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:58:03', '2019-06-10 09:58:03');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:58:52', '2019-06-10 09:58:52');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:58:53', '2019-06-10 09:58:53');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:59:22', '2019-06-10 09:59:22');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:59:43', '2019-06-10 09:59:43');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:59:46', '2019-06-10 09:59:46');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 09:59:48', '2019-06-10 09:59:48');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 09:59:58', '2019-06-10 09:59:58');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 10:00:03', '2019-06-10 10:00:03');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 10:00:07', '2019-06-10 10:00:07');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 10:00:27', '2019-06-10 10:00:27');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 10:01:29', '2019-06-10 10:01:29');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 10:01:32', '2019-06-10 10:01:32');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 10:01:57', '2019-06-10 10:01:57');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 10:02:03', '2019-06-10 10:02:03');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 10:02:06', '2019-06-10 10:02:06');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 10:02:33', '2019-06-10 10:02:33');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 10:02:38', '2019-06-10 10:02:38');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 10:02:38', '2019-06-10 10:02:38');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFinal\\u793e\\u533a\",\"keywords\":\"PFinal\\u793e\\u533a\",\"description\":\"pfinalClub \\u81f4\\u529b\\u4e8e\\u63d0\\u4f9b\\u4f18\\u8d28PHP\\u4e2d\\u6587\\u5b66\\u4e60\\u8d44\\u6e90,Laravel\\u3001Yii\\u3001ThinkPHP\\u7b49\\u6846\\u67b6\\u5b66\\u4e60\\u8d44\\u6e90\\u3001\\u4e2d\\u6587\\u89c6\\u9891\\u6559\\u7a0b\\u3001\\u9879\\u76ee\\u5b9e\\u6218\\u6559\\u7a0b\",\"_token\":\"Rfny6e1iaQsW57UvyMiwX4gQt3vQRAszCuooboTA\"}', '2019-06-10 10:02:43', '2019-06-10 10:02:43');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-10 10:02:44', '2019-06-10 10:02:44');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2019-06-10 04:58:26', '2019-06-10 04:58:26');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$wvDuAWnG8BOXDcAbSLgxeubWObiVRXmb9m2xt1GCW58bZi1Hd.Sx.', 'PFinal', 'images/mmexport1557977719436.jpg', 'i4IQtWubsMXfKSEvsZ0XO2J89Mf6wA0NNx7Y1khyfb2P3jigXd1eVpRVFLZv', '2019-06-10 04:58:26', '2019-06-10 05:49:21');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_06_10_080312_create_table_system_config', 2);
INSERT INTO `migrations` VALUES (6, '2019_06_10_081908_create_table_template_pack', 3);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PFinal社区' COMMENT '网站标题',
  `keywords` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PFinal社区' COMMENT '网站关键字',
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pfinalClub 致力于提供优质PHP中文学习资源,Laravel、Yii、ThinkPHP等框架学习资源、中文视频教程、项目实战教程' COMMENT '站点描述',
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'logo.jpg' COMMENT '站点logo',
  `template_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '模板id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `system_config_template_id_index`(`template_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES (1, 'PFinal社区', 'PFinal社区', 'pfinalClub 致力于提供优质PHP中文学习资源,Laravel、Yii、ThinkPHP等框架学习资源、中文视频教程、项目实战教程', 'logo/2019-06-10-09-52-35-5cfe2863ede0e.jpg', 0, NULL, '2019-06-10 09:52:35');

-- ----------------------------
-- Table structure for template_pack
-- ----------------------------
DROP TABLE IF EXISTS `template_pack`;
CREATE TABLE `template_pack`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板名称',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板标识',
  `local` tinyint(4) NOT NULL COMMENT '本地模板',
  `package` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板配置',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

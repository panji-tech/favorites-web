/*
 Navicat Premium Data Transfer

 Source Server         : MySQL57-Docker
 Source Server Type    : MySQL
 Source Server Version : 50743
 Source Host           : localhost:3306
 Source Schema         : favorites

 Target Server Type    : MySQL
 Target Server Version : 50743
 File Encoding         : 65001

 Date: 29/10/2023 21:31:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `charset` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `create_time` bigint(20) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `favorites_id` bigint(20) NOT NULL,
  `is_delete` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `last_modify_time` bigint(20) NOT NULL,
  `logo_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (1, '', 'UTF-8', 1698583661680, '项目介绍本期给大家介绍一个 校园信息墙 系统，可以发布信息，表白墙，分享墙，校园二手买卖，咨询分享等墙信息。', 2, 'NO', 1698583661680, 'http://127.0.0.1:8080/img/logo.jpg', '', 'ITSource 分享 第5期【校园信息墙系统】', 'PUBLIC', 'https://mp.weixin.qq.com/s?__biz=MzkzNjYwMjIyMA==&mid=2247483658&idx=1&sn=fbf83fef73a915563cb63023560d61e1&chksm=c29d7e09f5eaf71f92104b0a2b64d2a1b6f3570e437fc763379ffcdf1a955e4976804a5efcec&token=1755027407&lang=zh_CN#rd', 1);
INSERT INTO `collect` VALUES (2, '', 'UTF-8', 1698583768304, '项目介绍 本期给大家介绍一个 校园信息墙 系统，可以发布信息，表白墙，分享墙，校园二手买卖，咨询分享', 3, 'NO', 1698583768304, 'https://www.cnblogs.com/skins/custom/images/logo.gif', '', 'ITSource 分享 第5期【校园信息墙系统】 - it光 - 博客园', 'PUBLIC', 'https://www.cnblogs.com/itguang/p/17796348.html', 2);

-- ----------------------------
-- Table structure for collector_view
-- ----------------------------
DROP TABLE IF EXISTS `collector_view`;
CREATE TABLE `collector_view`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `counts` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collector_view
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `collect_id` bigint(20) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `create_time` bigint(20) NOT NULL,
  `reply_user_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 1, '666', 1698583696954, NULL, 1);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` bigint(20) NOT NULL,
  `default_collect_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `default_favorties` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `default_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `last_modify_time` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 1698583645379, 'public', '1', 'simple', 1698583645379, 1);
INSERT INTO `config` VALUES (2, 1698583753669, 'public', '3', 'simple', 1698583753669, 2);

-- ----------------------------
-- Table structure for favorites
-- ----------------------------
DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `count` bigint(20) NOT NULL,
  `create_time` bigint(20) NOT NULL,
  `last_modify_time` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favorites
-- ----------------------------
INSERT INTO `favorites` VALUES (1, 0, 1698583645368, 1698583645368, '未读列表', 1);
INSERT INTO `favorites` VALUES (2, 1, 1698583661678, 1698583661678, 'ITSource', 1);
INSERT INTO `favorites` VALUES (3, 1, 1698583753661, 1698583768298, '未读列表', 2);

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` bigint(20) NOT NULL,
  `feedback_advice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `feedback_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `last_modify_time` bigint(20) NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` bigint(20) NOT NULL,
  `follow_id` bigint(20) NOT NULL,
  `last_modify_time` bigint(20) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of follow
-- ----------------------------

-- ----------------------------
-- Table structure for letter
-- ----------------------------
DROP TABLE IF EXISTS `letter`;
CREATE TABLE `letter`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `create_time` bigint(20) NOT NULL,
  `pid` bigint(20) NULL DEFAULT NULL,
  `receive_user_id` bigint(20) NOT NULL,
  `send_user_id` bigint(20) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of letter
-- ----------------------------

-- ----------------------------
-- Table structure for look_record
-- ----------------------------
DROP TABLE IF EXISTS `look_record`;
CREATE TABLE `look_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `collect_id` bigint(20) NOT NULL,
  `create_time` bigint(20) NOT NULL,
  `last_modify_time` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of look_record
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `collect_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `create_time` bigint(20) NOT NULL,
  `oper_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `readed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '1', 1698583691195, '1', 'unread', 'praise', 1);
INSERT INTO `notice` VALUES (2, '1', 1698583696980, '1', 'unread', 'comment', 1);

-- ----------------------------
-- Table structure for praise
-- ----------------------------
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `collect_id` bigint(20) NOT NULL,
  `create_time` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of praise
-- ----------------------------
INSERT INTO `praise` VALUES (1, 1, 1698583691171, 1);

-- ----------------------------
-- Table structure for url_library
-- ----------------------------
DROP TABLE IF EXISTS `url_library`;
CREATE TABLE `url_library`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `count` int(11) NULL DEFAULT 0,
  `logo_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of url_library
-- ----------------------------
INSERT INTO `url_library` VALUES (1, 0, 'http://127.0.0.1:8080/img/logo.jpg', 'https://mp.weixin.qq.com/s?__biz=MzkzNjYwMjIyMA==&mid=2247483658&idx=1&sn=fbf83fef73a915563cb63023560d61e1&chksm=c29d7e09f5eaf71f92104b0a2b64d2a1b6f3570e437fc763379ffcdf1a955e4976804a5efcec&token=1755027407&lang=zh_CN#rd');
INSERT INTO `url_library` VALUES (2, 0, 'https://www.cnblogs.com/skins/custom/images/logo.gif', 'https://www.cnblogs.com/itguang/p/17796348.html');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `background_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `create_time` bigint(20) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `last_modify_time` bigint(20) NOT NULL,
  `out_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `pass_word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `profile_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `validata_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_ob8kqyqqgmefl0aco34akdtpe`(`email`) USING BTREE,
  UNIQUE INDEX `UK_lqjrcobrh9jc8wpcar64q1bfh`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, NULL, 1698583645315, 'itsource@qq.com', NULL, 1698583645315, NULL, 'dfdafe7cdbb82ca3566ffc8ad9245a3f', 'img/favicon.png', 'itsource', NULL);
INSERT INTO `user` VALUES (2, NULL, 1698583753653, 'itsource1@qq.com', NULL, 1698583753653, NULL, 'dfdafe7cdbb82ca3566ffc8ad9245a3f', 'img/favicon.png', 'itsource2', NULL);

-- ----------------------------
-- Table structure for user_is_follow
-- ----------------------------
DROP TABLE IF EXISTS `user_is_follow`;
CREATE TABLE `user_is_follow`  (
  `id` bigint(20) NOT NULL,
  `is_follow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `profile_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_is_follow
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : ForSpring
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : books

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 16/02/2025 18:17:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '评论内容',
  `c_author` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '评论者',
  `book_id` int NULL DEFAULT NULL COMMENT '关联的图书',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '很好111', '李世民', 4);
INSERT INTO `comment` VALUES (2, '图书包装很好，字体清晰，内容完整，案例很好', '吴姗姗', 4);
INSERT INTO `comment` VALUES (3, '第二次购买了，推荐给朋友', '陈安娜', 4);
INSERT INTO `comment` VALUES (4, '值得推荐的一本书', '张茵', 4);
INSERT INTO `comment` VALUES (5, '内容完整，案例很好', '轻舞飞扬', 4);
INSERT INTO `comment` VALUES (6, '字体清晰，案例很好', '轻舞飞扬', 1);
INSERT INTO `comment` VALUES (7, '字体清晰，内容完整，案例很好', '轻舞飞扬', 2);
INSERT INTO `comment` VALUES (8, '不错，值得推荐的一本书', '云淡风轻', 3);
INSERT INTO `comment` VALUES (9, '字体清晰，内容完整', '轻舞飞扬', 5);
INSERT INTO `comment` VALUES (10, '很好111', NULL, NULL);

-- ----------------------------
-- Table structure for tb_book
-- ----------------------------
DROP TABLE IF EXISTS `tb_book`;
CREATE TABLE `tb_book`  (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `author` char(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `press` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of tb_book
-- ----------------------------
INSERT INTO `tb_book` VALUES (1, 'Hadoop+Spark大数据技术（微课版）', '刘彬斌', '清华大学出版社', 69.00);
INSERT INTO `tb_book` VALUES (2, 'PHPWeb 程序设计与项目案例开发', '马石安', '清华大学出版社', 59.80);
INSERT INTO `tb_book` VALUES (3, 'JavaEE框架整合开发入门到实践Spring+SpringMVC+MyBatis', '陈恒', '清华大学出版社', 69.80);
INSERT INTO `tb_book` VALUES (4, 'SpringBoot企业级开发教程', '黑马程序员', '人民邮电出版社', 56.00);
INSERT INTO `tb_book` VALUES (5, 'SpringCloud微服务架构开发', '黑马程序员', '人民邮电出版社', 43.00);
INSERT INTO `tb_book` VALUES (6, 'Java自学宝典', '黑马程序员', '清华大学出版社', 73.00);

-- ----------------------------
-- Table structure for tbbook
-- ----------------------------
DROP TABLE IF EXISTS `tbbook`;
CREATE TABLE `tbbook`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `author` char(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `press` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of tbbook
-- ----------------------------
INSERT INTO `tbbook` VALUES (1, 'Hadoop+Spark大数据技术（微课版）', '刘彬斌', '清华大学出版社', 69.00);
INSERT INTO `tbbook` VALUES (2, 'PHPWeb程序设计与项目案例开发', '马石安', '清华大学出版社', 59.80);
INSERT INTO `tbbook` VALUES (3, 'JavaEE框架整合开发入门到实践Spring+SpringMVC+MyBatis', '陈恒', '清华大学出版社', 69.80);
INSERT INTO `tbbook` VALUES (4, 'SpringBoot企业级开发教程', '黑马程序员', '人民邮电出版社', 56.00);
INSERT INTO `tbbook` VALUES (5, 'SpringCloud微服务架构开发', '黑马程序员', '人民邮电出版社', 43.00);

SET FOREIGN_KEY_CHECKS = 1;

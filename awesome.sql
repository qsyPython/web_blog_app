/*
 Navicat Premium Data Transfer

 Source Server         : local_web_app
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : awesome

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 07/09/2018 19:44:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_image` varchar(500) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `summary` varchar(200) DEFAULT NULL,
  `content` text,
  `created_at` float(23,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blogs
-- ----------------------------
BEGIN;
INSERT INTO `blogs` VALUES ('0015361393805032da7f22cfc2e4f6eb7fd549095d19cf4000', '001535362204672252d3c9ed24f4493adc30ef6db21a669000', '邱少一', NULL, '第1个日志', '我是第一个日志哦', '1、从前从前有个人爱你很久，但偏偏风渐渐把距离吹得好远，好不容易又能再多爱一天，但故事的最后你好像还是说了拜拜。——《晴天》', 1536139392.00);
INSERT INTO `blogs` VALUES ('0015361416783688863250096944588801d4f262c53f195000', '001535362204672252d3c9ed24f4493adc30ef6db21a669000', '邱少一', NULL, '第2个日志', '这是我的第2个日志大家都一下', '常用字段类型 内容整理,摘抄自刘江博客 Django默认自动创建自增主键id，当然，你也可以自己指定主键。 类型 说明 AutoField 一个自动增加的整数类型字段。通常你不需要自己编写它，Django会自动帮你添加字段：id = models.AutoField(primary_key=True)，这是一个自增字段，从1开始计数。如果你非要自己设置主键，那么请务必将字段设置为p', 1536141696.00);
COMMIT;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` varchar(50) NOT NULL,
  `blog_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_image` varchar(500) DEFAULT NULL,
  `content` text,
  `created_at` float(23,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
BEGIN;
INSERT INTO `comments` VALUES ('001536139399911e6f926a06bc5408ca4561b98cb0ab550000', '0015361393805032da7f22cfc2e4f6eb7fd549095d19cf4000', '001535362204672252d3c9ed24f4493adc30ef6db21a669000', '邱少一', NULL, '你写的啥东西啊', 1536139392.00);
INSERT INTO `comments` VALUES ('001536141691788a6b44ba541d14be388e367ed6e0f1cf7000', '0015361393805032da7f22cfc2e4f6eb7fd549095d19cf4000', '001535362204672252d3c9ed24f4493adc30ef6db21a669000', '邱少一', NULL, '看着好烂', 1536141696.00);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `created_at` float(23,2) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('0015353619425317844d3048eeb4df2bf6e2551806ee9b8000', '1129331906@qq.com', '3cc80efce156c27e6668f15d8d6f562846b9591f', 'dddddd', NULL, 1535361920.00, 0);
INSERT INTO `users` VALUES ('001535362204672252d3c9ed24f4493adc30ef6db21a669000', '1129331905@qq.com', 'c00a7471fae3f6a2493b1251303f870aa3c72419', '邱少一', NULL, 1535362176.00, 1);
INSERT INTO `users` VALUES ('001535362353609ae1a5ea742fe4d34ad390d9f96c2da62000', '1129331904@qq.com', '6156f485ca9af44f4cea001b981bc5b23d15b74f', 'bbbbbb', NULL, 1535362304.00, 0);
INSERT INTO `users` VALUES ('001535362743453f977725a27e24101993e2e6c7cc8599f000', '1129331903@qq.com', '241ffed09dc12dae8681fe231f02fa2728499e17', 'iiii', NULL, 1535362688.00, 0);
INSERT INTO `users` VALUES ('00153536285663698fdca10817f44a7a9bdf3c3befd2d5f000', '1129331902@qq.com', 'da67e67b5429c211d4367a5861a217fb9f749b79', 'ooooo', NULL, 1535362816.00, 0);
INSERT INTO `users` VALUES ('001535363137267e9f3f537b21842039984aefb68a73526000', '1129331901@qq.com', '8762cfca29d078631e86a81011b4998560dbf5c4', 'ppppp', NULL, 1535363200.00, 0);
INSERT INTO `users` VALUES ('00153537042162356b0c016bf1e438693230f0ca9de7652000', '1129331900@qq.com', '96916bbde4d6478eeaa6864f21e1ad0929690ccc', 'qqqqqq', NULL, 1535370368.00, 0);
INSERT INTO `users` VALUES ('001535370451338f75e199ef0784571aead0435da054d85000', '1129331809@qq.com', '4359662e85afa78533c39fea419111d045338054', 'eeeee', NULL, 1535370496.00, 0);
INSERT INTO `users` VALUES ('001535370560092c1337db47d3d45bd8e61ba8df50b11fa000', '1129331808@qq.com', '6aa67ecda802c9710a0ac27852fcaf02cd77db55', 'ttttt', NULL, 1535370624.00, 0);
INSERT INTO `users` VALUES ('0015353706274585394ec6757364dd7aefa22fa0a4dffdd000', '1129331807@qq.com', '13a406ee246e39f0bf251ab0f1d76a86e97efb94', 'yyyyy', NULL, 1535370624.00, 0);
INSERT INTO `users` VALUES ('001535372592356fbad654ef14e4244b2cb6cc559ade864000', '1129331806@qq.com', '61eda661b7681ee735e207727889c768b0c3c364', '嘎嘎嘎嘎嘎过', NULL, 1535372544.00, 0);
INSERT INTO `users` VALUES ('001535546848181cdb8cca5281a40d89894faab9a05a97a000', '1129331801@qq.com', '1eec65f2bf9217ba87be15585acb6fba9993e67b', 'ccccccc', NULL, 1535546880.00, 0);
INSERT INTO `users` VALUES ('0015361415880993ff7bdb512ce40618b770b5b1123d975000', '1129331800@qq.com', '5bf7bf1f7068d23f7d7c1a19a018fef2b3145dd1', 'sajlgjlkjg', NULL, 1536141568.00, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

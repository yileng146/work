/*
 Navicat Premium Data Transfer

 Source Server         : yileng
 Source Server Type    : MySQL
 Source Server Version : 50168
 Source Host           : localhost:3306
 Source Schema         : headphone

 Target Server Type    : MySQL
 Target Server Version : 50168
 File Encoding         : 65001

 Date: 13/06/2019 17:16:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_code
-- ----------------------------
DROP TABLE IF EXISTS `t_code`;
CREATE TABLE `t_code`  (
  `code_id` int(10) NOT NULL AUTO_INCREMENT,
  `code_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_use` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`code_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_code
-- ----------------------------
INSERT INTO `t_code` VALUES (1, 'python', '90');
INSERT INTO `t_code` VALUES (2, 'java', '80');
INSERT INTO `t_code` VALUES (3, 'go', '70');
INSERT INTO `t_code` VALUES (4, 'ruby', '60');
INSERT INTO `t_code` VALUES (5, 'c#', '50');
INSERT INTO `t_code` VALUES (6, 'c/c++', '70');

-- ----------------------------
-- Table structure for t_headphone
-- ----------------------------
DROP TABLE IF EXISTS `t_headphone`;
CREATE TABLE `t_headphone`  (
  `headphone_id` int(10) NOT NULL AUTO_INCREMENT,
  `headphone_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headphone_price` int(10) NOT NULL,
  `headphone_class` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`headphone_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_headphone
-- ----------------------------
INSERT INTO `t_headphone` VALUES (1, '王麻子', 19, '高新区');
INSERT INTO `t_headphone` VALUES (2, '李麻子', 17, '马保村');
INSERT INTO `t_headphone` VALUES (16, '好朋坡', 20, '福州市');
INSERT INTO `t_headphone` VALUES (17, '王麻子', 20, '高新区');
INSERT INTO `t_headphone` VALUES (18, '王麻子', 19, '高新区');

-- ----------------------------
-- Table structure for t_lesson
-- ----------------------------
DROP TABLE IF EXISTS `t_lesson`;
CREATE TABLE `t_lesson`  (
  `lesson_id` int(10) NOT NULL AUTO_INCREMENT,
  `lesson_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lesson_class` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lesson_author` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lesson_price` int(10) NOT NULL,
  `lesson_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`lesson_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_lesson
-- ----------------------------
INSERT INTO `t_lesson` VALUES (1, '大数据', 'it', 'tony', 199, '2019-06-06 11:07:54');
INSERT INTO `t_lesson` VALUES (2, '云计算', 'it', 'cloud', 199, '2019-06-06 11:07:58');
INSERT INTO `t_lesson` VALUES (3, '人工智能', 'it', 'AI', 199, '2019-06-06 11:08:00');
INSERT INTO `t_lesson` VALUES (4, '人工智能爬虫', 'it', 'AI', 199, '2019-06-06 11:08:05');

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `student_id` int(10) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `student_age` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_address` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES (1, '王麻子', '23', '福州高新区');
INSERT INTO `t_student` VALUES (2, '张爱国', '25', '马保村某大队');
INSERT INTO `t_student` VALUES (3, '李建伟', '28', '厦门思明区');
INSERT INTO `t_student` VALUES (4, '郝朋坡', '30', '某乡');
INSERT INTO `t_student` VALUES (5, '陈锐旺', '21', '福州福清');
INSERT INTO `t_student` VALUES (6, '李广', '22', '福州');

SET FOREIGN_KEY_CHECKS = 1;

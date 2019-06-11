/*
 Navicat Premium Data Transfer

 Source Server         : x5
 Source Server Type    : MySQL
 Source Server Version : 50626
 Source Host           : localhost:3306
 Source Schema         : finally

 Target Server Type    : MySQL
 Target Server Version : 50626
 File Encoding         : 65001

 Date: 11/06/2019 03:14:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for p_table
-- ----------------------------
DROP TABLE IF EXISTS `p_table`;
CREATE TABLE `p_table`  (
  `p_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_yuqishouyi` float(10, 1) NOT NULL,
  `p_qixian` int(10) NOT NULL,
  `p_rongziguimo` float(50, 2) NOT NULL,
  `p_time` date NOT NULL,
  `p_salenum` int(10) NOT NULL,
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of p_table
-- ----------------------------
INSERT INTO `p_table` VALUES (1, 4.8, 50, 70.00, '2019-06-05', 34);
INSERT INTO `p_table` VALUES (2, 4.8, 60, 80.00, '2019-06-25', 12);
INSERT INTO `p_table` VALUES (3, 4.2, 10, 50.00, '2019-04-10', 66);
INSERT INTO `p_table` VALUES (4, 3.5, 10, 40.00, '2019-06-24', 23);
INSERT INTO `p_table` VALUES (5, 5.8, 90, 100.00, '2019-05-07', 44);
INSERT INTO `p_table` VALUES (6, 6.8, 180, 200.00, '2019-07-14', 45);
INSERT INTO `p_table` VALUES (7, 8.5, 220, 300.00, '2019-04-16', 12);
INSERT INTO `p_table` VALUES (8, 7.4, 180, 150.00, '2019-06-18', 63);
INSERT INTO `p_table` VALUES (9, 5.5, 140, 110.00, '2019-05-13', 12);
INSERT INTO `p_table` VALUES (10, 4.5, 110, 105.00, '2019-04-15', 25);
INSERT INTO `p_table` VALUES (11, 4.5, 60, 300.00, '2019-04-22', 25);

-- ----------------------------
-- Table structure for p_table_2
-- ----------------------------
DROP TABLE IF EXISTS `p_table_2`;
CREATE TABLE `p_table_2`  (
  `p_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_yuqishouyi` float(10, 1) NOT NULL,
  `p_qixian` int(10) NOT NULL,
  `p_rongziguimo` float(50, 2) NOT NULL,
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of p_table_2
-- ----------------------------
INSERT INTO `p_table_2` VALUES (1, 4.8, 50, 70.00);
INSERT INTO `p_table_2` VALUES (2, 4.8, 60, 80.00);
INSERT INTO `p_table_2` VALUES (3, 4.2, 10, 50.00);
INSERT INTO `p_table_2` VALUES (4, 3.5, 10, 40.00);
INSERT INTO `p_table_2` VALUES (5, 5.8, 90, 100.00);
INSERT INTO `p_table_2` VALUES (6, 6.8, 180, 200.00);
INSERT INTO `p_table_2` VALUES (7, 8.5, 220, 300.00);
INSERT INTO `p_table_2` VALUES (8, 7.4, 180, 150.00);
INSERT INTO `p_table_2` VALUES (9, 5.5, 140, 110.00);
INSERT INTO `p_table_2` VALUES (10, 4.5, 110, 105.00);
INSERT INTO `p_table_2` VALUES (11, 4.5, 60, 300.00);

-- ----------------------------
-- Table structure for use_log
-- ----------------------------
DROP TABLE IF EXISTS `use_log`;
CREATE TABLE `use_log`  (
  `use_id` int(10) NOT NULL AUTO_INCREMENT,
  `use_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `out_num` float(255, 0) NOT NULL,
  `create_time` date NOT NULL,
  `use_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`use_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of use_log
-- ----------------------------
INSERT INTO `use_log` VALUES (1, '花呗套现', 2000, '2019-07-25', '充值');
INSERT INTO `use_log` VALUES (2, '厂里发工资', 1800, '2019-06-30', '投资');
INSERT INTO `use_log` VALUES (3, '还花呗', 2000, '2019-08-29', '充值');
INSERT INTO `use_log` VALUES (4, '中彩票', 200, '2019-07-28', '投资');
INSERT INTO `use_log` VALUES (5, '准备买车买房', 4000, '2019-04-23', '投资');
INSERT INTO `use_log` VALUES (7, '充钱充钱', 5000, '2019-06-27', '充值');

-- ----------------------------
-- Table structure for user_inf
-- ----------------------------
DROP TABLE IF EXISTS `user_inf`;
CREATE TABLE `user_inf`  (
  `user_balance` int(20) NOT NULL,
  `user_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_inf
-- ----------------------------
INSERT INTO `user_inf` VALUES (100000, 'novell', 1);

-- ----------------------------
-- Table structure for user_information
-- ----------------------------
DROP TABLE IF EXISTS `user_information`;
CREATE TABLE `user_information`  (
  `u_id` int(10) NULL DEFAULT NULL,
  `u_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `p_id` int(10) NOT NULL,
  `u_balance` float(50, 2) NOT NULL,
  `u_in` float(50, 2) NOT NULL,
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_information
-- ----------------------------
INSERT INTO `user_information` VALUES (1, '7458123', 1, 7000.00, 1000.00);
INSERT INTO `user_information` VALUES (2, '75425', 3, 6000.00, 4000.00);
INSERT INTO `user_information` VALUES (3, '47516', 6, 7500.00, 2000.00);

SET FOREIGN_KEY_CHECKS = 1;

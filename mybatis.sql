/*
 Navicat Premium Data Transfer

 Source Server         : localhost_13306
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:13306
 Source Schema         : mybatis

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 19/02/2023 16:16:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dorms
-- ----------------------------
DROP TABLE IF EXISTS `dorms`;
CREATE TABLE `dorms`  (
  `dorm` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `buildings` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `floor` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `room` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dorms
-- ----------------------------
INSERT INTO `dorms` VALUES ('2404', '二栋', '四楼', '第四间');
INSERT INTO `dorms` VALUES ('8603', '八栋', '六楼', '第三间');
INSERT INTO `dorms` VALUES ('2403', '八栋', '四楼', '第三间');

-- ----------------------------
-- Table structure for electricity
-- ----------------------------
DROP TABLE IF EXISTS `electricity`;
CREATE TABLE `electricity`  (
  `dorm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pre_electricity` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `cur_electricity` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `elec_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `excess` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `ele_money` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of electricity
-- ----------------------------
INSERT INTO `electricity` VALUES ('2303', '162', '345', '183', '33', '16.5');

-- ----------------------------
-- Table structure for late
-- ----------------------------
DROP TABLE IF EXISTS `late`;
CREATE TABLE `late`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `dorm` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `faculty` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `late_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `late_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of late
-- ----------------------------
INSERT INTO `late` VALUES ('李思', '5720201521', '2404', '软件工程学院', '13284287566', '2022-10-10 22：40');
INSERT INTO `late` VALUES ('李思', '5720201521', '2404', '软件工程学院', '13284287566', '2023-02-12 22：40');

-- ----------------------------
-- Table structure for rating
-- ----------------------------
DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating`  (
  `dorm` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `buildings` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `faculty` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `examine` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `violations_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `check_times` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `check_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `item` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `month_times` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rating
-- ----------------------------
INSERT INTO `rating` VALUES ('2404', '二栋', '软件工程', '文明寝室评选中', '2', '第二次', '2022-10-30', '违规电器', '-2');

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair`  (
  `name_stu` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `dorm` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `goods` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `tel_stu` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `sq_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `name_man` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `tel_man` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `wx_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES ('王一', '8603', '电风扇', '开不了', '12345678901', '2022-10-12', '王武', '17109838693', '2022-10-12', '已完成');
INSERT INTO `repair` VALUES ('李思', '2404', '凳子', '坏了', '13284287566', '2022-12-12', '王武', '18597404711', '2023-02-02', '已完成');
INSERT INTO `repair` VALUES ('lora', '2404', '洗漱台', '堵了水流不下去', '18597404711', '2023-01-30', '王武', '18597404711', '2023-02-02', '已完成');
INSERT INTO `repair` VALUES ('lora', '2303', '洗漱台', '堵了水流不下去', '18597404711', '2023-01-31', '王武', '18597404711', '2023-01-31', '已完成');
INSERT INTO `repair` VALUES ('lora', '2404', '洗漱台', '堵了水流不下去', '18597404711', '2023-02-03', '王武', '18597404711', '2023-02-02', '已完成');

-- ----------------------------
-- Table structure for stay
-- ----------------------------
DROP TABLE IF EXISTS `stay`;
CREATE TABLE `stay`  (
  `faculty` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `class1` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `date_range` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `stu_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `stay_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `admin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `admin_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `stay_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `apply_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stay
-- ----------------------------
INSERT INTO `stay` VALUES ('软件工程学院', '软件开发1班', '5720201521', '李思', '2022-12-12~2023-1-12', NULL, '13284287566', '考研', NULL, NULL, '在校', NULL);

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `nation` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `bj` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `dorm` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `faculty` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `bed` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('王一', '1', '男', '汉', '南京省', '日语201班', '8603', '12345678901', '外语学院', '3');
INSERT INTO `students` VALUES ('李思', '2', '女', '汉', '江西省', '经管201', '2404', '13284287566', '商学院', '1');
INSERT INTO `students` VALUES ('	张伟', '3', '男', '汉', '江西省', '软件开发201', '8603', '18628799421', '软件工程学院', '2');
INSERT INTO `students` VALUES ('李娜', '4', '女', '汉', '江西省', '软件开发201', '2303', '18543149129', '软件工程学院', '4');
INSERT INTO `students` VALUES ('	王秀英', '5', '女', '汉', '江西省', '软件开发201', '2303', '13244058345', '软件工程学院', '1');
INSERT INTO `students` VALUES ('	李军', '6', '男', '汉', '江西省', '软件开发201', '8603', '17198182389', '软件工程学院', '3');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `identify` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('王武', '555555', '维修人员');
INSERT INTO `users` VALUES ('张三', '111111', '管理员');
INSERT INTO `users` VALUES ('李思', '222222', '学生');
INSERT INTO `users` VALUES ('呵呵', '123456', '其他用户');

-- ----------------------------
-- Table structure for visitor
-- ----------------------------
DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor`  (
  `dorm` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `visitor_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `relation` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `visitor_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `student_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `access_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `student_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visitor
-- ----------------------------
INSERT INTO `visitor` VALUES ('2404', '姚翠琴', '母女', '15599656046', '5720201521', '李思', '2023-02-10', '在校');
INSERT INTO `visitor` VALUES ('2303', '孙安荷', '母女', '17623014424', '5720201432', '权静芙', '2023-02-01', '在校');
INSERT INTO `visitor` VALUES ('2101', '龚颖初', '朋友', '13240256192', '5720201534', '简千琴', '2022-10-10', '离校');

-- ----------------------------
-- Table structure for water
-- ----------------------------
DROP TABLE IF EXISTS `water`;
CREATE TABLE `water`  (
  `dorm` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `pre_water` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `cur_water` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `cur_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `exceed` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of water
-- ----------------------------
INSERT INTO `water` VALUES ('1103', '2107', '2130', '23', '5', '16');
INSERT INTO `water` VALUES ('1104', '1751', '1772', '21', '3', '9.6');
INSERT INTO `water` VALUES ('1105', '2191', '2217', '26', '8', '9.6');
INSERT INTO `water` VALUES ('2404', '388', '407', '19', '1', '3.2');
INSERT INTO `water` VALUES ('4203', '687', '703', '16', '4', '12.8');

SET FOREIGN_KEY_CHECKS = 1;

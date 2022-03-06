/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 05/03/2022 20:10:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `filename` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES (21, '2022-03-05 11:33:26', 'scenery', '3LOrpd8IOD0qDQ-on3mz_L22.jpg', 'http://192.168.1.102:8088/getAlbum/3LOrpd8IOD0qDQ-on3mz_L22.jpg');
INSERT INTO `album` VALUES (22, '2022-03-05 11:33:30', 'scenery', 'c9m9LFB0quCeMlUag7XKQNt_.jpg', 'http://192.168.1.102:8088/getAlbum/c9m9LFB0quCeMlUag7XKQNt_.jpg');
INSERT INTO `album` VALUES (23, '2022-03-05 11:33:35', 'fiction', 'ki0r1bg-S_Vt562XDSAZxzGu.jpg', 'http://192.168.1.102:8088/getAlbum/ki0r1bg-S_Vt562XDSAZxzGu.jpg');
INSERT INTO `album` VALUES (24, '2022-03-05 11:33:39', 'game', 'u2PzqQrZeR4DcnZ7ARZIk1HW.jpg', 'http://192.168.1.102:8088/getAlbum/u2PzqQrZeR4DcnZ7ARZIk1HW.jpg');
INSERT INTO `album` VALUES (25, '2022-03-05 15:17:40', 'game', 's3SwaJeJv6miKDO4fhgC2hOG.jpeg', 'http://192.168.1.102:8088/getAlbum/s3SwaJeJv6miKDO4fhgC2hOG.jpeg');
INSERT INTO `album` VALUES (26, '2022-03-05 15:17:43', 'game', 'poMjgf-Y89XuKK84x_ElWN4B.jpeg', 'http://192.168.1.102:8088/getAlbum/poMjgf-Y89XuKK84x_ElWN4B.jpeg');
INSERT INTO `album` VALUES (27, '2022-03-05 15:17:46', 'game', 'BIJIRmu_cy6VAJLL1Jdg1fqG.jpg', 'http://192.168.1.102:8088/getAlbum/BIJIRmu_cy6VAJLL1Jdg1fqG.jpg');
INSERT INTO `album` VALUES (28, '2022-03-05 15:17:49', 'game', 'Cx-RWrCjPVuYM6N15aJjYpXn.jpeg', 'http://192.168.1.102:8088/getAlbum/Cx-RWrCjPVuYM6N15aJjYpXn.jpeg');
INSERT INTO `album` VALUES (29, '2022-03-05 15:17:52', 'cartoon', 'lgHAYDk8TGqLBxlDsIXdmpX8.jpeg', 'http://192.168.1.102:8088/getAlbum/lgHAYDk8TGqLBxlDsIXdmpX8.jpeg');
INSERT INTO `album` VALUES (30, '2022-03-05 15:17:56', 'cartoon', '27Lun9blDgzzCvSKgT-8_5ge.jpeg', 'http://192.168.1.102:8088/getAlbum/27Lun9blDgzzCvSKgT-8_5ge.jpeg');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `describes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (37, '2022-03-04 23:20:59', '<p>戳</p>', 'javascript', '大城市', '1');
INSERT INTO `article` VALUES (38, '2022-03-04 23:21:02', '<p>&nbsp;下次</p>', 'javascript', '显示·', '1');
INSERT INTO `article` VALUES (39, '2022-03-04 23:21:04', '<p><img src=\"http://192.168.1.37:8088/getPic/fe3Zrpcfp7TaotFRDBhmimLl.jpg\" alt=\"图片文字说明\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"30%\"/></p>', 'javascript', '适当', '1');
INSERT INTO `article` VALUES (40, '2022-03-04 23:21:06', '<p>产生的城市</p>', 'javascript', '测试文章', '1');
INSERT INTO `article` VALUES (41, '2022-03-04 23:21:07', '<p><img src=\"http://192.168.1.37:8088/getPic/yGYV-oY3rTnBQPaqsp3RAaM2.jpg\" alt=\"图片文字说明\" contenteditable=\"false\" style=\"font-size: 14px; max-width: 100%;\" width=\"30%\"/></p><br/>', 'javascript', '大城市', '1');
INSERT INTO `article` VALUES (42, '2022-03-04 23:21:10', '<p>是的是的</p>', 'javascript', '不知道', '1');
INSERT INTO `article` VALUES (43, '2022-03-05 00:37:15', '<p><img src=\"http://192.168.1.102:8088/getPic/LN6ZbFMSWoz2dNLlRnUdJ3D6.jpg\" alt=\"图片文字说明\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"30%\"/></p>', 'javascript', '你', '个');
INSERT INTO `article` VALUES (44, '2022-03-05 00:46:25', '<p>环环相扣<img src=\"http://192.168.1.102:8088/getPic/JOVBAMe1sDBkZEjVDlZmMs90.jpg\" alt=\"图片文字说明\" contenteditable=\"false\" style=\"font-size: 14px; max-width: 100%;\" width=\"30%\"/></p>', 'javascript', '垃圾', '流量');
INSERT INTO `article` VALUES (45, '2022-03-05 11:33:01', '<p><img src=\"http://192.168.1.102:8088/getPic/zucxlTk3jNSk8nAqMgiEhMoK.jpg\" alt=\"暂无文字说明\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"30%\"/>cx xc</p>', 'javascript', 'cs', 'xz');
INSERT INTO `article` VALUES (46, '2022-03-05 11:35:04', '<p><img src=\"http://192.168.1.102:8088/getPic/LFW2GE105k9lyoKeyfqd7ra5.jpg\" alt=\"暂无文字说明\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"30%\"/></p>', 'javascript', '你在', '哈哈');
INSERT INTO `article` VALUES (47, '2022-03-05 13:39:57', '<p>承担</p>', 'javascript', 'csdcs的点点滴滴多多多多多多多多多多多多多多多多多多', '的点点滴滴多多多多多多多多多多多多多多多多多多的点点滴滴多多多多多多多多多多多多多多多多多多的点点滴滴多多多多多多多多多多多多多多多多多多的点点滴滴多多多多多多多多多多多多多多多多多多的点点滴滴多多多多多多多多多多多多多多多多多多的点点滴滴多多多多多多多多多多多多多多多多多多的点点滴滴多多多多多多多多多多多多多多多多多多的点点滴滴多多多多多多多多多多多多多多多多多多的点点滴滴多多多多多多多多多多多多多多多多多多的点点滴滴多多多多多多多多多多多多多多多多多多的点点滴滴多多多多多多多多多多多多多多多多多多的点点滴滴多多多多多多多多多多多多多多多多多多');
INSERT INTO `article` VALUES (48, '2022-03-05 14:24:14', '<h1 style=\"text-align:center;\"><b id=\"pv3ra\">发送的时代</b></h1><div><b>1<span style=\"background-color: rgb(77, 128, 191);\">.测试文章哈哈哈</span></b></div><div>&nbsp; &nbsp;&nbsp;<b><br/></b></div><pre><code class=\"JavaScript\">const <span class=\"hljs-attribute\">a</span>=1;\n<span class=\"hljs-keyword\">for</span>(let <span class=\"hljs-attribute\">b</span>=1;b&amp;lt;10;b++){\nconsole.log(11)\n}\nclass c{\nthis.<span class=\"hljs-attribute\">a</span>=11\n}\na()</code></pre><p><i style=\"\"><font size=\"6\">2.<font face=\"仿宋\" color=\"#8baa4a\" style=\"\">小编替</font></font></i></p><p><font face=\"仿宋\" color=\"#8baa4a\">&nbsp; &nbsp;</font><font face=\"仿宋\" color=\"#c24f4a\">房价都是吕金龙百度</font></p><p data-we-empty-p=\"\" style=\"text-align:center;\"><img src=\"http://192.168.1.102:8088/getPic/BD8zYbwi0lIWHsB7PgmUBi51.jpg\" alt=\"暂无文字说明\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"30%\"/></p>', 'css', '打岔三次方', '傻叉大城市滴滴滴');
INSERT INTO `article` VALUES (49, '2022-03-05 14:25:18', '<table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><th></th><th></th><th></th><th></th><th></th></tr><tr><td>ds</td><td></td><td></td><td></td><td></td></tr><tr><td>csd</td><td></td><td></td><td></td><td>fdvdf</td></tr><tr><td></td><td></td><td></td><td>vdv</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr></tbody></table>', 'css', '测试bable', 'cscsvsdvd');
INSERT INTO `article` VALUES (50, '2022-03-05 17:30:34', '<p>的许多</p>', 'daily', '分析', '杀虫水');
INSERT INTO `article` VALUES (51, '2022-03-05 18:05:22', '<p>b gfb</p>', 'calculate', 'vdf', 'dfv');

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `events` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (1, '2022-03-04 19:27:33', '完成首页，个人信息静态页面');
INSERT INTO `logs` VALUES (2, '2022-03-04 19:28:45', '编写读文本文章法发布，图库展示静态页面');
INSERT INTO `logs` VALUES (3, '2022-03-04 19:29:19', '编写文章发布，图片上传接口');
INSERT INTO `logs` VALUES (4, '2022-03-04 19:29:53', '留言与说说页面制作完成');
INSERT INTO `logs` VALUES (5, '2022-03-04 19:30:16', '测试-----------------------------------------------------------------------------------------------------------------');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `qq` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '12345',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `context` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `logs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (11, '84960390', '是', '都是', NULL, '2022-03-04 18:26:39');
INSERT INTO `message` VALUES (12, '', '是', '都是戳', NULL, '2022-03-04 18:26:48');
INSERT INTO `message` VALUES (13, '11', '是', '都是戳', NULL, '2022-03-04 18:27:01');
INSERT INTO `message` VALUES (14, '123456', '55', '6152', NULL, '2022-03-04 19:52:04');
INSERT INTO `message` VALUES (15, '123456', '55', '6152w', NULL, '2022-03-04 19:53:33');
INSERT INTO `message` VALUES (16, '123456', '55', '6152w', NULL, '2022-03-04 19:54:57');
INSERT INTO `message` VALUES (17, '123456', '55', '6152w', NULL, '2022-03-04 19:57:08');
INSERT INTO `message` VALUES (18, '123456', '55', '6152wsscs', NULL, '2022-03-04 19:57:19');
INSERT INTO `message` VALUES (19, '123456', '55', '6152bf是', NULL, '2022-03-04 19:57:28');
INSERT INTO `message` VALUES (20, '1234', '动物', '产生的', NULL, '2022-03-04 19:58:55');
INSERT INTO `message` VALUES (21, '1234', '动物', '产生的分', NULL, '2022-03-04 19:58:58');
INSERT INTO `message` VALUES (22, '1234', '动物', '产生的分', NULL, '2022-03-04 19:59:35');
INSERT INTO `message` VALUES (23, '1234', '动物', '产生的分除非', NULL, '2022-03-04 19:59:43');
INSERT INTO `message` VALUES (24, '1234', '动物', '产生的分除非是', NULL, '2022-03-04 19:59:54');
INSERT INTO `message` VALUES (25, '1234', '动物', '产生的分除非是是', NULL, '2022-03-04 20:00:19');
INSERT INTO `message` VALUES (26, '1234', '动物', '产生的分除非是是是', NULL, '2022-03-04 20:01:19');
INSERT INTO `message` VALUES (27, '出生', '出生', '成都市', NULL, '2022-03-04 20:01:58');
INSERT INTO `message` VALUES (28, '出生', '出生', '成都市戳', NULL, '2022-03-04 20:02:01');
INSERT INTO `message` VALUES (29, '出生', '出生', '成都', NULL, '2022-03-04 20:02:07');
INSERT INTO `message` VALUES (30, '出生', '出生', '成1', NULL, '2022-03-04 20:02:13');
INSERT INTO `message` VALUES (31, '出生', '出生', '成1', NULL, '2022-03-04 20:02:21');
INSERT INTO `message` VALUES (32, '出生', '出生', '成1', NULL, '2022-03-04 20:02:24');
INSERT INTO `message` VALUES (33, '出生', '出生', '成1', NULL, '2022-03-04 20:04:38');
INSERT INTO `message` VALUES (34, '出生', '出生', '成1是', NULL, '2022-03-04 20:04:40');
INSERT INTO `message` VALUES (35, '84960390', '玛卡巴卡1', '嘻嘻嘻', NULL, '2022-03-05 00:44:29');
INSERT INTO `message` VALUES (36, '搜索', '产生的', '毒素', NULL, '2022-03-05 18:28:03');
INSERT INTO `message` VALUES (37, 'hshd', 'ddjdn', 'jdjd', NULL, '2022-03-05 19:38:38');

-- ----------------------------
-- Table structure for share
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `context` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share
-- ----------------------------
INSERT INTO `share` VALUES (4, '测试', '2022-03-04 18:52:35');
INSERT INTO `share` VALUES (5, '实习真难顶', '2022-03-04 18:52:50');
INSERT INTO `share` VALUES (6, '少时诵诗书所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所', '2022-03-04 18:52:58');

-- ----------------------------
-- Table structure for sum
-- ----------------------------
DROP TABLE IF EXISTS `sum`;
CREATE TABLE `sum`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `javascript` int UNSIGNED NOT NULL DEFAULT 0,
  `shell` int UNSIGNED NOT NULL DEFAULT 0,
  `css` int UNSIGNED NOT NULL DEFAULT 0,
  `calculate` int UNSIGNED NOT NULL DEFAULT 0,
  `daily` int NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `visit` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sum
-- ----------------------------
INSERT INTO `sum` VALUES (1, 22, 1, 3, 2, 1, '2022-03-05 19:38:21', 19);

SET FOREIGN_KEY_CHECKS = 1;

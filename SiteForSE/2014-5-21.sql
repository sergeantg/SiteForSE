/*
Navicat MySQL Data Transfer

Source Server         : sergeantg-pc_3306
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : siteforse

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2014-05-21 21:42:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
`password`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES ('123');
COMMIT;

-- ----------------------------
-- Table structure for `doc`
-- ----------------------------
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
`DOC_ID`  int(255) UNSIGNED NOT NULL AUTO_INCREMENT ,
`NAME`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ADD_DATE`  timestamp NOT NULL DEFAULT '2014-04-21 00:00:00' ON UPDATE CURRENT_TIMESTAMP ,
`PATH`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`DOC_ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=9

;

-- ----------------------------
-- Records of doc
-- ----------------------------
BEGIN;
INSERT INTO `doc` VALUES ('1', 'nature', '2014-05-06 12:57:09', '/SiteForSE/docs/nature13056.pdf');
COMMIT;

-- ----------------------------
-- Table structure for `post`
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
`POST_ID`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`UID`  int(11) NOT NULL DEFAULT 0 ,
`TITLE`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`CONTENT`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`REPLY_COUNT`  int(255) UNSIGNED NOT NULL DEFAULT 0 ,
`POST_TIME`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`POST_ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=10

;

-- ----------------------------
-- Records of post
-- ----------------------------
BEGIN;
INSERT INTO `post` VALUES ('1', '0', '关于软件工程', '软件工程到底是关于什么的课程？', '1', '2014-05-14 16:13:52'), ('2', '0', '关于软件', '怎么学好软件工程？', '0', '2014-05-14 15:36:46'), ('8', '1', '你们好', '测试内同', '0', '2014-05-20 14:42:39'), ('9', '1', '测试评估', '测试', '0', '2014-05-21 18:05:53');
COMMIT;

-- ----------------------------
-- Table structure for `reply`
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
`POST_ID`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`UID`  int(11) NOT NULL DEFAULT 0 ,
`CONTENT`  varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`POST_TIME`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`POST_ID`, `UID`, `CONTENT`, `POST_TIME`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=9

;

-- ----------------------------
-- Records of reply
-- ----------------------------
BEGIN;
INSERT INTO `reply` VALUES ('1', '0', '同求', '2014-05-14 15:36:00'), ('1', '1', 'ä½ é¢ä¹', '2014-05-20 14:41:52'), ('1', '1', '你们好啊', '2014-05-21 18:05:19'), ('1', '1', '大家好', '2014-05-20 14:20:26'), ('1', '1', '就是软件工程啊', '2014-05-20 14:19:14'), ('2', '1', '', '2014-05-19 21:49:54'), ('8', '1', '你好', '2014-05-20 14:54:27'), ('8', '1', '大家好', '2014-05-20 14:58:08');
COMMIT;

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
`VIDEO_ID`  int(255) UNSIGNED NOT NULL AUTO_INCREMENT ,
`NAME`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ADD_TIME`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP ,
`PATH`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`VIDEO_ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of video
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Auto increment value for `doc`
-- ----------------------------
ALTER TABLE `doc` AUTO_INCREMENT=9;

-- ----------------------------
-- Auto increment value for `post`
-- ----------------------------
ALTER TABLE `post` AUTO_INCREMENT=10;

-- ----------------------------
-- Auto increment value for `reply`
-- ----------------------------
ALTER TABLE `reply` AUTO_INCREMENT=9;

-- ----------------------------
-- Auto increment value for `video`
-- ----------------------------
ALTER TABLE `video` AUTO_INCREMENT=1;

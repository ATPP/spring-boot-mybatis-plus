/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost
 Source Database       : cms

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 04/02/2019 19:18:23 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(32) NOT NULL COMMENT '账号',
  `name` varchar(16) DEFAULT '' COMMENT '名字',
  `password` varchar(128) DEFAULT '' COMMENT '密码',
  `salt` varchar(64) DEFAULT '' COMMENT 'md5密码盐',
  `phone` varchar(32) DEFAULT '' COMMENT '联系电话',
  `tips` varchar(255) DEFAULT NULL COMMENT '备注',
  `state` tinyint(1) DEFAULT '1' COMMENT '状态 1:正常 2:禁用',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='后台管理用户表';

-- ----------------------------
--  Records of `t_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES ('1', 'admin', '系统管理员', '123456', 'www', '17890908889', '系统管理员', '1', '2017-12-12 09:46:12', '2017-12-12 09:46:12'), ('2', 'aix', '张三', '123456', 'eee', '17859569358', '', '1', '2017-12-12 09:46:12', '2017-12-12 09:46:12');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

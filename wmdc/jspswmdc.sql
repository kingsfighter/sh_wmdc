/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : jspswmdc

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2016-04-27 19:32:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ddmx
-- ----------------------------
DROP TABLE IF EXISTS `ddmx`;
CREATE TABLE `ddmx` (
  `ddmxid` int(11) NOT NULL auto_increment,
  `dd` varchar(40) default NULL COMMENT '订单',
  `sp` varchar(40) default NULL COMMENT '商品',
  `sl` varchar(40) default NULL COMMENT '数量',
  `jg` varchar(40) default NULL COMMENT '价格',
  `sj` varchar(40) default NULL COMMENT '时间',
  `zt` varchar(40) default NULL COMMENT '状态',
  `yh` varchar(40) default NULL,
  PRIMARY KEY  (`ddmxid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of ddmx
-- ----------------------------
INSERT INTO `ddmx` VALUES ('1', '1', '1', '1', '12', null, '已处理', '123');
INSERT INTO `ddmx` VALUES ('2', '1', '1', '1', '12', null, '已处理', '123');
INSERT INTO `ddmx` VALUES ('3', '2', '1', '1', '12', null, '已处理', '123');
INSERT INTO `ddmx` VALUES ('4', '2', '6', '1', '8', null, '已处理', '123');
INSERT INTO `ddmx` VALUES ('5', '3', '1', '1', '12', null, '已处理', '123');
INSERT INTO `ddmx` VALUES ('6', '3', '1', '1', '12', null, '已处理', '123');
INSERT INTO `ddmx` VALUES ('7', '3', '1', '1', '12', null, '已处理', '123');
INSERT INTO `ddmx` VALUES ('8', '4', '1', '1', '12', null, '已处理', '123');
INSERT INTO `ddmx` VALUES ('9', '4', '2', '1', '15', null, '已处理', '123');
INSERT INTO `ddmx` VALUES ('10', '5', '1', '1', '12', null, '已处理', '123');
INSERT INTO `ddmx` VALUES ('11', '5', '3', '1', '12', null, '已处理', '123');
INSERT INTO `ddmx` VALUES ('12', '6', '1', '1', '12', null, '已处理', '123');
INSERT INTO `ddmx` VALUES ('13', '6', '1', '1', '12', null, '已处理', '123');
INSERT INTO `ddmx` VALUES ('14', null, '1', '1', '12', null, '未处理', '123');
INSERT INTO `ddmx` VALUES ('15', null, '1', '1', '12', null, '未处理', 'admin');

-- ----------------------------
-- Table structure for dingdan
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `ddid` int(11) NOT NULL auto_increment,
  `ddmc` varchar(40) default NULL COMMENT '订单名称',
  `yh` varchar(40) default NULL COMMENT '用户',
  `gmsj` varchar(40) default NULL COMMENT '购买时间',
  `zt` varchar(40) default NULL COMMENT '状态',
  `dz` varchar(40) default NULL COMMENT '地址',
  `dh` varchar(40) default NULL COMMENT '电话',
  `shr` varchar(40) default NULL COMMENT '收货人',
  `zj` float(11,0) default NULL,
  PRIMARY KEY  (`ddid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('1', 'null', '123', '2015-04-23 21:56:48', '已处理', '123', '12345678901', '123', '24');
INSERT INTO `dingdan` VALUES ('2', 'null', '123', '2015-04-23 22:02:35', '已处理', '1231', '12345678901', '23', '20');
INSERT INTO `dingdan` VALUES ('3', 'null', '123', '2015-04-23 17:05:40', '已处理', '123', '1232266516', '123', '36');
INSERT INTO `dingdan` VALUES ('4', 'null', '123', '2015-04-23 18:00:47', '已处理', '12313', '1231233333', '12312312', '27');
INSERT INTO `dingdan` VALUES ('5', 'null', '123', '2015-04-23 18:40:53', '已处理', '31231231', '12312312313', '33131232131', '24');
INSERT INTO `dingdan` VALUES ('6', null, '123', '2016-04-27 10:44:55', '未处理', '312312', '12312123123', '312312', '24');

-- ----------------------------
-- Table structure for pinglun
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `plid` int(11) NOT NULL auto_increment,
  `sp` varchar(40) default NULL COMMENT '商品',
  `pl` varchar(40) default NULL COMMENT '评论',
  `yh` varchar(40) default NULL COMMENT '用户',
  `sj` varchar(40) default NULL COMMENT '时间',
  PRIMARY KEY  (`plid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of pinglun
-- ----------------------------
INSERT INTO `pinglun` VALUES ('1', '1', '123', '123', '2015-04-23 22:04:23');

-- ----------------------------
-- Table structure for quanxian
-- ----------------------------
DROP TABLE IF EXISTS `quanxian`;
CREATE TABLE `quanxian` (
  `qxid` int(11) NOT NULL auto_increment,
  `qx` varchar(40) default NULL COMMENT '权限',
  PRIMARY KEY  (`qxid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of quanxian
-- ----------------------------
INSERT INTO `quanxian` VALUES ('1', '管理员');
INSERT INTO `quanxian` VALUES ('2', '用户');

-- ----------------------------
-- Table structure for shangpin
-- ----------------------------
DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE `shangpin` (
  `spid` int(11) NOT NULL auto_increment,
  `sp` varchar(40) default NULL COMMENT '商品',
  `lb` varchar(40) default NULL COMMENT '类别',
  `cd` varchar(40) default NULL COMMENT '产地',
  `jg` varchar(40) default NULL COMMENT '价格',
  `ms` varchar(400) default NULL COMMENT '描述',
  `tp` varchar(40) default NULL COMMENT '图片',
  `sftj` varchar(40) default NULL COMMENT '是否推荐',
  `sl` int(10) default NULL,
  PRIMARY KEY  (`spid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of shangpin
-- ----------------------------
INSERT INTO `shangpin` VALUES ('1', '宫保鸡丁盖饭', '中式快餐', '中式风格', '12', '宫保鸡定，米饭', '1397309856890.jpg', '是', '103');
INSERT INTO `shangpin` VALUES ('2', '日本豆腐盖饭', '中式快餐', '中式', '15', '日本豆腐盖浇饭', '1397309996801.jpg', '否', '9');
INSERT INTO `shangpin` VALUES ('3', '鱼香肉丝盖饭', '中式快餐', '中式', '12', '鱼香肉丝盖饭', '1397310042260.jpg', '否', '11');
INSERT INTO `shangpin` VALUES ('4', '汉堡包', '西式开餐', '美式快餐', '18', '汉堡包', '1397310393962.jpg', '否', '13');
INSERT INTO `shangpin` VALUES ('5', '炸鸡腿', '西式开餐', '美国', '21', '炸鸡腿', '1397310437097.jpg', '否', '13');
INSERT INTO `shangpin` VALUES ('6', '蛋花汤', '汤类', '中式快餐', '8', '蛋花汤', '1397310505515.jpg', '否', '12');
INSERT INTO `shangpin` VALUES ('7', '可乐', '饮料', '天津', '3', '可乐', '1397310589261.jpg', '否', '12');
INSERT INTO `shangpin` VALUES ('8', '果汁', '饮料', '本地产', '5', '果汁', '1397310619089.jpg', '否', '1');
INSERT INTO `shangpin` VALUES ('9', '盖饭', '中式快餐', '中国', '22', '盖饭', '1397311420087.jpg', '否', '2');
INSERT INTO `shangpin` VALUES ('10', '红烧排骨', '中式快餐', '中式风格', '33', '红烧排骨', '1429781712572.jpg', '否', '222');
INSERT INTO `shangpin` VALUES ('11', '法式快餐', '西式开餐', '一个秒包', '12', '一个秒包', '1429784131502.jpg', '否', '22');
INSERT INTO `shangpin` VALUES ('12', '啤酒', '饮料', '德国啤酒', '10', '啤酒', '1429785713237.jpg', '否', '2222');
INSERT INTO `shangpin` VALUES ('13', '皮蛋豆腐', '中式快餐', '1231', '312', '1231', '1461725135147.jpg', '否', '11');

-- ----------------------------
-- Table structure for splb
-- ----------------------------
DROP TABLE IF EXISTS `splb`;
CREATE TABLE `splb` (
  `splbid` int(11) NOT NULL auto_increment,
  `lb` varchar(40) default NULL COMMENT '类别',
  `yhid` int(11) default NULL COMMENT '所属卖家',
  PRIMARY KEY  (`splbid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of splb
-- ----------------------------
INSERT INTO `splb` VALUES ('1', '中式快餐',1);
INSERT INTO `splb` VALUES ('2', '西式开餐',4);
INSERT INTO `splb` VALUES ('3', '汤类',1);
INSERT INTO `splb` VALUES ('4', '饮料',4);

-- ----------------------------
-- Table structure for xinwen
-- ----------------------------
DROP TABLE IF EXISTS `xinwen`;
CREATE TABLE `xinwen` (
  `xwid` int(11) NOT NULL auto_increment,
  `bt` varchar(40) default NULL COMMENT '标题',
  `nr` varchar(40) default NULL COMMENT '内容',
  `sj` varchar(40) default NULL COMMENT '时间',
  `yh` varchar(40) default NULL COMMENT '用户',
  PRIMARY KEY  (`xwid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of xinwen
-- ----------------------------
INSERT INTO `xinwen` VALUES ('1', '系统上线啦', '系统上线啦', '2015-04-23 21:50:41', 'admin');
INSERT INTO `xinwen` VALUES ('2', '系统上线菜价优惠', '系统上线菜价优惠', '2015-04-23 21:50:49', 'admin');
INSERT INTO `xinwen` VALUES ('3', '测试啦', '测试啦', '2015-04-23 22:03:53', 'admin');
INSERT INTO `xinwen` VALUES ('4', '31231', '1232131', '2015-04-23 18:15:55', 'admin');
INSERT INTO `xinwen` VALUES ('5', '沙发', '阿萨德发', '2016-04-27 10:45:57', 'admin');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `yhid` int(11) NOT NULL auto_increment,
  `yhm` varchar(40) default NULL COMMENT '用户名',
  `mm` varchar(40) default NULL COMMENT '密码',
  `xm` varchar(40) default NULL COMMENT '姓名',
  `qx` varchar(40) default NULL COMMENT '权限',
  `dh` varchar(40) default NULL COMMENT '电话',
  `dz` varchar(40) default NULL COMMENT '地址',
  PRIMARY KEY  (`yhid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', 'admin', 'admin', '中餐管理员', '管理员', '123', '123');
INSERT INTO `yonghu` VALUES ('4', 'admin1', 'admin1', '西餐管理员', '管理员', '123', '123');
INSERT INTO `yonghu` VALUES ('2', 'yh', 'yh', '用户', '用户', '23', '132');
INSERT INTO `yonghu` VALUES ('3', '123', '123', '123', '用户', '123', '123');

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
  `dd` varchar(40) default NULL COMMENT '����',
  `sp` varchar(40) default NULL COMMENT '��Ʒ',
  `sl` varchar(40) default NULL COMMENT '����',
  `jg` varchar(40) default NULL COMMENT '�۸�',
  `sj` varchar(40) default NULL COMMENT 'ʱ��',
  `zt` varchar(40) default NULL COMMENT '״̬',
  `yh` varchar(40) default NULL,
  PRIMARY KEY  (`ddmxid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of ddmx
-- ----------------------------
INSERT INTO `ddmx` VALUES ('1', '1', '1', '1', '12', null, '�Ѵ���', '123');
INSERT INTO `ddmx` VALUES ('2', '1', '1', '1', '12', null, '�Ѵ���', '123');
INSERT INTO `ddmx` VALUES ('3', '2', '1', '1', '12', null, '�Ѵ���', '123');
INSERT INTO `ddmx` VALUES ('4', '2', '6', '1', '8', null, '�Ѵ���', '123');
INSERT INTO `ddmx` VALUES ('5', '3', '1', '1', '12', null, '�Ѵ���', '123');
INSERT INTO `ddmx` VALUES ('6', '3', '1', '1', '12', null, '�Ѵ���', '123');
INSERT INTO `ddmx` VALUES ('7', '3', '1', '1', '12', null, '�Ѵ���', '123');
INSERT INTO `ddmx` VALUES ('8', '4', '1', '1', '12', null, '�Ѵ���', '123');
INSERT INTO `ddmx` VALUES ('9', '4', '2', '1', '15', null, '�Ѵ���', '123');
INSERT INTO `ddmx` VALUES ('10', '5', '1', '1', '12', null, '�Ѵ���', '123');
INSERT INTO `ddmx` VALUES ('11', '5', '3', '1', '12', null, '�Ѵ���', '123');
INSERT INTO `ddmx` VALUES ('12', '6', '1', '1', '12', null, '�Ѵ���', '123');
INSERT INTO `ddmx` VALUES ('13', '6', '1', '1', '12', null, '�Ѵ���', '123');
INSERT INTO `ddmx` VALUES ('14', null, '1', '1', '12', null, 'δ����', '123');
INSERT INTO `ddmx` VALUES ('15', null, '1', '1', '12', null, 'δ����', 'admin');

-- ----------------------------
-- Table structure for dingdan
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `ddid` int(11) NOT NULL auto_increment,
  `ddmc` varchar(40) default NULL COMMENT '��������',
  `yh` varchar(40) default NULL COMMENT '�û�',
  `gmsj` varchar(40) default NULL COMMENT '����ʱ��',
  `zt` varchar(40) default NULL COMMENT '״̬',
  `dz` varchar(40) default NULL COMMENT '��ַ',
  `dh` varchar(40) default NULL COMMENT '�绰',
  `shr` varchar(40) default NULL COMMENT '�ջ���',
  `zj` float(11,0) default NULL,
  PRIMARY KEY  (`ddid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('1', 'null', '123', '2015-04-23 21:56:48', '�Ѵ���', '123', '12345678901', '123', '24');
INSERT INTO `dingdan` VALUES ('2', 'null', '123', '2015-04-23 22:02:35', '�Ѵ���', '1231', '12345678901', '23', '20');
INSERT INTO `dingdan` VALUES ('3', 'null', '123', '2015-04-23 17:05:40', '�Ѵ���', '123', '1232266516', '123', '36');
INSERT INTO `dingdan` VALUES ('4', 'null', '123', '2015-04-23 18:00:47', '�Ѵ���', '12313', '1231233333', '12312312', '27');
INSERT INTO `dingdan` VALUES ('5', 'null', '123', '2015-04-23 18:40:53', '�Ѵ���', '31231231', '12312312313', '33131232131', '24');
INSERT INTO `dingdan` VALUES ('6', null, '123', '2016-04-27 10:44:55', 'δ����', '312312', '12312123123', '312312', '24');

-- ----------------------------
-- Table structure for pinglun
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `plid` int(11) NOT NULL auto_increment,
  `sp` varchar(40) default NULL COMMENT '��Ʒ',
  `pl` varchar(40) default NULL COMMENT '����',
  `yh` varchar(40) default NULL COMMENT '�û�',
  `sj` varchar(40) default NULL COMMENT 'ʱ��',
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
  `qx` varchar(40) default NULL COMMENT 'Ȩ��',
  PRIMARY KEY  (`qxid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of quanxian
-- ----------------------------
INSERT INTO `quanxian` VALUES ('1', '����Ա');
INSERT INTO `quanxian` VALUES ('2', '�û�');

-- ----------------------------
-- Table structure for shangpin
-- ----------------------------
DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE `shangpin` (
  `spid` int(11) NOT NULL auto_increment,
  `sp` varchar(40) default NULL COMMENT '��Ʒ',
  `lb` varchar(40) default NULL COMMENT '���',
  `cd` varchar(40) default NULL COMMENT '����',
  `jg` varchar(40) default NULL COMMENT '�۸�',
  `ms` varchar(400) default NULL COMMENT '����',
  `tp` varchar(40) default NULL COMMENT 'ͼƬ',
  `sftj` varchar(40) default NULL COMMENT '�Ƿ��Ƽ�',
  `sl` int(10) default NULL,
  PRIMARY KEY  (`spid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of shangpin
-- ----------------------------
INSERT INTO `shangpin` VALUES ('1', '���������Ƿ�', '��ʽ���', '��ʽ���', '12', '�����������׷�', '1397309856890.jpg', '��', '103');
INSERT INTO `shangpin` VALUES ('2', '�ձ������Ƿ�', '��ʽ���', '��ʽ', '15', '�ձ������ǽ���', '1397309996801.jpg', '��', '9');
INSERT INTO `shangpin` VALUES ('3', '������˿�Ƿ�', '��ʽ���', '��ʽ', '12', '������˿�Ƿ�', '1397310042260.jpg', '��', '11');
INSERT INTO `shangpin` VALUES ('4', '������', '��ʽ����', '��ʽ���', '18', '������', '1397310393962.jpg', '��', '13');
INSERT INTO `shangpin` VALUES ('5', 'ը����', '��ʽ����', '����', '21', 'ը����', '1397310437097.jpg', '��', '13');
INSERT INTO `shangpin` VALUES ('6', '������', '����', '��ʽ���', '8', '������', '1397310505515.jpg', '��', '12');
INSERT INTO `shangpin` VALUES ('7', '����', '����', '���', '3', '����', '1397310589261.jpg', '��', '12');
INSERT INTO `shangpin` VALUES ('8', '��֭', '����', '���ز�', '5', '��֭', '1397310619089.jpg', '��', '1');
INSERT INTO `shangpin` VALUES ('9', '�Ƿ�', '��ʽ���', '�й�', '22', '�Ƿ�', '1397311420087.jpg', '��', '2');
INSERT INTO `shangpin` VALUES ('10', '�����Ź�', '��ʽ���', '��ʽ���', '33', '�����Ź�', '1429781712572.jpg', '��', '222');
INSERT INTO `shangpin` VALUES ('11', '��ʽ���', '��ʽ����', 'һ�����', '12', 'һ�����', '1429784131502.jpg', '��', '22');
INSERT INTO `shangpin` VALUES ('12', 'ơ��', '����', '�¹�ơ��', '10', 'ơ��', '1429785713237.jpg', '��', '2222');
INSERT INTO `shangpin` VALUES ('13', 'Ƥ������', '��ʽ���', '1231', '312', '1231', '1461725135147.jpg', '��', '11');

-- ----------------------------
-- Table structure for splb
-- ----------------------------
DROP TABLE IF EXISTS `splb`;
CREATE TABLE `splb` (
  `splbid` int(11) NOT NULL auto_increment,
  `lb` varchar(40) default NULL COMMENT '���',
  `yhid` int(11) default NULL COMMENT '��������',
  PRIMARY KEY  (`splbid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of splb
-- ----------------------------
INSERT INTO `splb` VALUES ('1', '��ʽ���',1);
INSERT INTO `splb` VALUES ('2', '��ʽ����',4);
INSERT INTO `splb` VALUES ('3', '����',1);
INSERT INTO `splb` VALUES ('4', '����',4);

-- ----------------------------
-- Table structure for xinwen
-- ----------------------------
DROP TABLE IF EXISTS `xinwen`;
CREATE TABLE `xinwen` (
  `xwid` int(11) NOT NULL auto_increment,
  `bt` varchar(40) default NULL COMMENT '����',
  `nr` varchar(40) default NULL COMMENT '����',
  `sj` varchar(40) default NULL COMMENT 'ʱ��',
  `yh` varchar(40) default NULL COMMENT '�û�',
  PRIMARY KEY  (`xwid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of xinwen
-- ----------------------------
INSERT INTO `xinwen` VALUES ('1', 'ϵͳ������', 'ϵͳ������', '2015-04-23 21:50:41', 'admin');
INSERT INTO `xinwen` VALUES ('2', 'ϵͳ���߲˼��Ż�', 'ϵͳ���߲˼��Ż�', '2015-04-23 21:50:49', 'admin');
INSERT INTO `xinwen` VALUES ('3', '������', '������', '2015-04-23 22:03:53', 'admin');
INSERT INTO `xinwen` VALUES ('4', '31231', '1232131', '2015-04-23 18:15:55', 'admin');
INSERT INTO `xinwen` VALUES ('5', 'ɳ��', '�����·�', '2016-04-27 10:45:57', 'admin');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `yhid` int(11) NOT NULL auto_increment,
  `yhm` varchar(40) default NULL COMMENT '�û���',
  `mm` varchar(40) default NULL COMMENT '����',
  `xm` varchar(40) default NULL COMMENT '����',
  `qx` varchar(40) default NULL COMMENT 'Ȩ��',
  `dh` varchar(40) default NULL COMMENT '�绰',
  `dz` varchar(40) default NULL COMMENT '��ַ',
  PRIMARY KEY  (`yhid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', 'admin', 'admin', '�в͹���Ա', '����Ա', '123', '123');
INSERT INTO `yonghu` VALUES ('4', 'admin1', 'admin1', '���͹���Ա', '����Ա', '123', '123');
INSERT INTO `yonghu` VALUES ('2', 'yh', 'yh', '�û�', '�û�', '23', '132');
INSERT INTO `yonghu` VALUES ('3', '123', '123', '123', '�û�', '123', '123');

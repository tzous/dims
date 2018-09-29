-- 导出 dimsdb 的数据库结构
CREATE DATABASE IF NOT EXISTS `dimsdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dimsdb`;

-- 导出  表 dimsdb.tbdevinfo 结构
CREATE TABLE IF NOT EXISTS `tbdevinfo` (
  `devid` int(18) NOT NULL AUTO_INCREMENT,
  `famsid` char(10) DEFAULT NULL,
  `eamid` char(10) DEFAULT NULL,
  `devsn` varchar(40) DEFAULT NULL,
  `devname` varchar(10) DEFAULT NULL,
  `devbrand` varchar(50) DEFAULT NULL,
  `devmodel` varchar(50) DEFAULT NULL,
  `devdate` char(10) DEFAULT NULL,
  `siteid` int(10) DEFAULT NULL,
  `keeper` varchar(20) DEFAULT NULL,
  `devlocation` varchar(50) DEFAULT NULL,
  `devlevel` char(10) DEFAULT NULL,
  `devstat` char(10) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `isasset` char(2) DEFAULT NULL,
  `opdate` char(10) DEFAULT NULL,
  PRIMARY KEY (`devid`)
) ENGINE=InnoDB AUTO_INCREMENT=2718 DEFAULT CHARSET=utf8 COMMENT='设备信息表';

-- 导出  表 dimsdb.tbdevlog 结构
CREATE TABLE IF NOT EXISTS `tbdevlog` (
  `logid` int(18) NOT NULL AUTO_INCREMENT,
  `oper` char(10) NOT NULL,
  `op` char(10) NOT NULL,
  `opdate` char(10) NOT NULL,
  `optime` char(10) NOT NULL,
  `devid` int(180) NOT NULL,
  `okeys` varchar(512) DEFAULT NULL,
  `nkeys` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=1565 DEFAULT CHARSET=utf8 COMMENT='设备信息变更记录表';

-- 导出  表 dimsdb.tbdevmodel 结构
CREATE TABLE IF NOT EXISTS `tbdevmodel` (
  `modelid` int(18) NOT NULL AUTO_INCREMENT,
  `devbrand` char(20) NOT NULL,
  `devmodel` char(30) NOT NULL,
  `typeid` int(10) NOT NULL,
  PRIMARY KEY (`modelid`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='设备型号表';

-- 导出  表 dimsdb.tbdevtype 结构
CREATE TABLE IF NOT EXISTS `tbdevtype` (
  `typeid` int(11) NOT NULL,
  `typename` varchar(30) DEFAULT NULL,
  `superid` int(11) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备类型表';

-- 导出  表 dimsdb.tbgrp 结构
CREATE TABLE IF NOT EXISTS `tbgrp` (
  `gid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分组ID',
  `gsite` int(11) unsigned zerofill NOT NULL COMMENT '保管站点编号',
  `gname` varchar(255) NOT NULL COMMENT '分组名称',
  `ghid` int(11) NOT NULL COMMENT '上级分组ID',
  `gstat` int(1) unsigned zerofill NOT NULL COMMENT '状态 1-启用 0-停用',
  KEY `gid` (`gid`),
  KEY `ghid` (`ghid`),
  KEY `gsite` (`gsite`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='地区分组表';

-- 导出  表 dimsdb.tbsys 结构
CREATE TABLE IF NOT EXISTS `tbsys` (
  `sysid` int(11) NOT NULL,
  `sysname` varchar(255) NOT NULL,
  `sysversion` varchar(50) NOT NULL,
  PRIMARY KEY (`sysid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统控制表';

-- 导出  表 dimsdb.tbuser 结构
CREATE TABLE IF NOT EXISTS `tbuser` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `uname` char(50) NOT NULL COMMENT '用户名',
  `upasswd` char(50) NOT NULL COMMENT '用户密码（MD5）',
  `ulevel` int(1) NOT NULL COMMENT '0-普通用户 1-管理 -系统管理员',
  `ustat` int(1) unsigned zerofill NOT NULL COMMENT '用户状态 1-启用 0-停用',
  `udesc` varchar(255) NOT NULL COMMENT '用户描述',
  `uregister` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '注册时间',
  `uinvalid` timestamp NULL DEFAULT NULL COMMENT '注销时间',
  PRIMARY KEY (`uname`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 导出  表 dimsdb.tbusergrp 结构
CREATE TABLE IF NOT EXISTS `tbusergrp` (
  `ugid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `gid` int(11) unsigned NOT NULL COMMENT '分组ID',
  PRIMARY KEY (`uid`),
  KEY `ugid` (`ugid`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户分组表';


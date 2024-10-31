/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmb615y
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmb615y` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmb615y`;

/*Table structure for table `banjixinxi` */

DROP TABLE IF EXISTS `banjixinxi`;

CREATE TABLE `banjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjimingcheng` varchar(200) NOT NULL COMMENT '班级名称',
  `fuzeren` varchar(200) NOT NULL COMMENT '负责人',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='班级信息';

/*Data for the table `banjixinxi` */

insert  into `banjixinxi`(`id`,`addtime`,`banjimingcheng`,`fuzeren`,`weizhi`) values (51,'2021-03-19 16:32:46','班级名称1','负责人1','位置1'),(52,'2021-03-19 16:32:46','班级名称2','负责人2','位置2'),(53,'2021-03-19 16:32:46','班级名称3','负责人3','位置3'),(54,'2021-03-19 16:32:46','班级名称4','负责人4','位置4'),(55,'2021-03-19 16:32:46','班级名称5','负责人5','位置5'),(56,'2021-03-19 16:32:46','班级名称6','负责人6','位置6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmb615y/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmb615y/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmb615y/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dabianmingdan` */

DROP TABLE IF EXISTS `dabianmingdan`;

CREATE TABLE `dabianmingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingdanbianhao` varchar(200) NOT NULL COMMENT '名单编号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mingdanbianhao` (`mingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='答辩名单';

/*Data for the table `dabianmingdan` */

insert  into `dabianmingdan`(`id`,`addtime`,`mingdanbianhao`,`xuehao`,`xueshengxingming`,`zhuanye`,`banji`,`lianxidianhua`,`youxiang`,`faburiqi`,`gonghao`,`jiaoshixingming`,`sfsh`,`shhf`) values (201,'2021-03-19 16:32:46','名单编号1','学号1','学生姓名1','专业1','班级1','联系电话1','邮箱1','2021-03-19','工号1','教师姓名1','是',''),(202,'2021-03-19 16:32:46','名单编号2','学号2','学生姓名2','专业2','班级2','联系电话2','邮箱2','2021-03-19','工号2','教师姓名2','是',''),(203,'2021-03-19 16:32:46','名单编号3','学号3','学生姓名3','专业3','班级3','联系电话3','邮箱3','2021-03-19','工号3','教师姓名3','是',''),(204,'2021-03-19 16:32:46','名单编号4','学号4','学生姓名4','专业4','班级4','联系电话4','邮箱4','2021-03-19','工号4','教师姓名4','是',''),(205,'2021-03-19 16:32:46','名单编号5','学号5','学生姓名5','专业5','班级5','联系电话5','邮箱5','2021-03-19','工号5','教师姓名5','是',''),(206,'2021-03-19 16:32:46','名单编号6','学号6','学生姓名6','专业6','班级6','联系电话6','邮箱6','2021-03-19','工号6','教师姓名6','是','');

/*Table structure for table `dafenxinxi` */

DROP TABLE IF EXISTS `dafenxinxi`;

CREATE TABLE `dafenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wendangbianhao` varchar(200) DEFAULT NULL COMMENT '文档编号',
  `wendangmingcheng` varchar(200) DEFAULT NULL COMMENT '文档名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `faburiqi` varchar(200) DEFAULT NULL COMMENT '发布日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `xueshengwendang` varchar(200) DEFAULT NULL COMMENT '学生文档',
  `dafen` int(11) DEFAULT NULL COMMENT '打分',
  `pingfenriqi` date DEFAULT NULL COMMENT '评分日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='打分信息';

/*Data for the table `dafenxinxi` */

insert  into `dafenxinxi`(`id`,`addtime`,`wendangbianhao`,`wendangmingcheng`,`gonghao`,`jiaoshixingming`,`faburiqi`,`xuehao`,`xueshengxingming`,`leixing`,`xueshengwendang`,`dafen`,`pingfenriqi`) values (161,'2021-03-19 16:32:46','文档编号1','文档名称1','工号1','教师姓名1','发布日期1','学号1','学生姓名1','类型1','',1,'2021-03-19'),(162,'2021-03-19 16:32:46','文档编号2','文档名称2','工号2','教师姓名2','发布日期2','学号2','学生姓名2','类型2','',2,'2021-03-19'),(163,'2021-03-19 16:32:46','文档编号3','文档名称3','工号3','教师姓名3','发布日期3','学号3','学生姓名3','类型3','',3,'2021-03-19'),(164,'2021-03-19 16:32:46','文档编号4','文档名称4','工号4','教师姓名4','发布日期4','学号4','学生姓名4','类型4','',4,'2021-03-19'),(165,'2021-03-19 16:32:46','文档编号5','文档名称5','工号5','教师姓名5','发布日期5','学号5','学生姓名5','类型5','',5,'2021-03-19'),(166,'2021-03-19 16:32:46','文档编号6','文档名称6','工号6','教师姓名6','发布日期6','学号6','学生姓名6','类型6','',6,'2021-03-19');

/*Table structure for table `daoshi` */

DROP TABLE IF EXISTS `daoshi`;

CREATE TABLE `daoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshizhanghao` varchar(200) NOT NULL COMMENT '导师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `daoshixingming` varchar(200) NOT NULL COMMENT '导师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `daoshizhanghao` (`daoshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='导师';

/*Data for the table `daoshi` */

insert  into `daoshi`(`id`,`addtime`,`daoshizhanghao`,`mima`,`daoshixingming`,`xingbie`,`yuanxi`,`nianji`,`shoujihaoma`,`youxiang`) values (31,'2021-03-19 16:32:46','导师1','123456','导师姓名1','男','院系1','年级1','13823888881','773890001@qq.com'),(32,'2021-03-19 16:32:46','导师2','123456','导师姓名2','男','院系2','年级2','13823888882','773890002@qq.com'),(33,'2021-03-19 16:32:46','导师3','123456','导师姓名3','男','院系3','年级3','13823888883','773890003@qq.com'),(34,'2021-03-19 16:32:46','导师4','123456','导师姓名4','男','院系4','年级4','13823888884','773890004@qq.com'),(35,'2021-03-19 16:32:46','导师5','123456','导师姓名5','男','院系5','年级5','13823888885','773890005@qq.com'),(36,'2021-03-19 16:32:46','导师6','123456','导师姓名6','男','院系6','年级6','13823888886','773890006@qq.com');

/*Table structure for table `daoshiketixuanze` */

DROP TABLE IF EXISTS `daoshiketixuanze`;

CREATE TABLE `daoshiketixuanze` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketibianhao` varchar(200) DEFAULT NULL COMMENT '课题编号',
  `ketimingcheng` varchar(200) DEFAULT NULL COMMENT '课题名称',
  `nandu` varchar(200) DEFAULT NULL COMMENT '难度',
  `laiyuan` varchar(200) DEFAULT NULL COMMENT '来源',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `miaoshu` varchar(200) DEFAULT NULL COMMENT '描述',
  `kechengziliao` varchar(200) DEFAULT NULL COMMENT '课程资料',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='导师课题选择';

/*Data for the table `daoshiketixuanze` */

insert  into `daoshiketixuanze`(`id`,`addtime`,`ketibianhao`,`ketimingcheng`,`nandu`,`laiyuan`,`leixing`,`miaoshu`,`kechengziliao`,`daoshizhanghao`,`daoshixingming`,`xuehao`,`xueshengxingming`,`shenqingriqi`,`sfsh`,`shhf`) values (111,'2021-03-19 16:32:46','课题编号1','课题名称1','难度1','来源1','类型1','描述1','','导师账号1','导师姓名1','学号1','学生姓名1','2021-03-19','是',''),(112,'2021-03-19 16:32:46','课题编号2','课题名称2','难度2','来源2','类型2','描述2','','导师账号2','导师姓名2','学号2','学生姓名2','2021-03-19','是',''),(113,'2021-03-19 16:32:46','课题编号3','课题名称3','难度3','来源3','类型3','描述3','','导师账号3','导师姓名3','学号3','学生姓名3','2021-03-19','是',''),(114,'2021-03-19 16:32:46','课题编号4','课题名称4','难度4','来源4','类型4','描述4','','导师账号4','导师姓名4','学号4','学生姓名4','2021-03-19','是',''),(115,'2021-03-19 16:32:46','课题编号5','课题名称5','难度5','来源5','类型5','描述5','','导师账号5','导师姓名5','学号5','学生姓名5','2021-03-19','是',''),(116,'2021-03-19 16:32:46','课题编号6','课题名称6','难度6','来源6','类型6','描述6','','导师账号6','导师姓名6','学号6','学生姓名6','2021-03-19','是','');

/*Table structure for table `daoshixinxi` */

DROP TABLE IF EXISTS `daoshixinxi`;

CREATE TABLE `daoshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `suoshuzhuanye` varchar(200) DEFAULT NULL COMMENT '所属专业',
  `kezhidaozhuanye` varchar(200) DEFAULT NULL COMMENT '可指导专业',
  `yanjiufangxiang` varchar(200) DEFAULT NULL COMMENT '研究方向',
  `zuigaoxueli` varchar(200) DEFAULT NULL COMMENT '最高学历',
  `zuigaoxuewei` varchar(200) DEFAULT NULL COMMENT '最高学位',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='导师信息';

/*Data for the table `daoshixinxi` */

insert  into `daoshixinxi`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`suoshuzhuanye`,`kezhidaozhuanye`,`yanjiufangxiang`,`zuigaoxueli`,`zuigaoxuewei`,`faburiqi`,`sfsh`,`shhf`) values (61,'2021-03-19 16:32:46','导师账号1','导师姓名1','所属专业1','可指导专业1','研究方向1','最高学历1','最高学位1','2021-03-19','是',''),(62,'2021-03-19 16:32:46','导师账号2','导师姓名2','所属专业2','可指导专业2','研究方向2','最高学历2','最高学位2','2021-03-19','是',''),(63,'2021-03-19 16:32:46','导师账号3','导师姓名3','所属专业3','可指导专业3','研究方向3','最高学历3','最高学位3','2021-03-19','是',''),(64,'2021-03-19 16:32:46','导师账号4','导师姓名4','所属专业4','可指导专业4','研究方向4','最高学历4','最高学位4','2021-03-19','是',''),(65,'2021-03-19 16:32:46','导师账号5','导师姓名5','所属专业5','可指导专业5','研究方向5','最高学历5','最高学位5','2021-03-19','是',''),(66,'2021-03-19 16:32:46','导师账号6','导师姓名6','所属专业6','可指导专业6','研究方向6','最高学历6','最高学位6','2021-03-19','是','');

/*Table structure for table `daoshixuanze` */

DROP TABLE IF EXISTS `daoshixuanze`;

CREATE TABLE `daoshixuanze` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `xuanze` varchar(200) DEFAULT NULL COMMENT '选择',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='导师选择';

/*Data for the table `daoshixuanze` */

insert  into `daoshixuanze`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xuanze`,`xuehao`,`xueshengxingming`,`shenqingriqi`) values (71,'2021-03-19 16:32:46','导师账号1','导师姓名1','第一导师','学号1','学生姓名1','2021-03-19'),(72,'2021-03-19 16:32:46','导师账号2','导师姓名2','第一导师','学号2','学生姓名2','2021-03-19'),(73,'2021-03-19 16:32:46','导师账号3','导师姓名3','第一导师','学号3','学生姓名3','2021-03-19'),(74,'2021-03-19 16:32:46','导师账号4','导师姓名4','第一导师','学号4','学生姓名4','2021-03-19'),(75,'2021-03-19 16:32:46','导师账号5','导师姓名5','第一导师','学号5','学生姓名5','2021-03-19'),(76,'2021-03-19 16:32:46','导师账号6','导师姓名6','第一导师','学号6','学生姓名6','2021-03-19');

/*Table structure for table `gonggaoxinxi` */

DROP TABLE IF EXISTS `gonggaoxinxi`;

CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobianhao` varchar(200) NOT NULL COMMENT '公告编号',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonggaobianhao` (`gonggaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggaoxinxi` */

insert  into `gonggaoxinxi`(`id`,`addtime`,`gonggaobianhao`,`biaoti`,`neirong`,`riqi`) values (181,'2021-03-19 16:32:46','公告编号1','标题1','内容1','2021-03-19'),(182,'2021-03-19 16:32:46','公告编号2','标题2','内容2','2021-03-19'),(183,'2021-03-19 16:32:46','公告编号3','标题3','内容3','2021-03-19'),(184,'2021-03-19 16:32:46','公告编号4','标题4','内容4','2021-03-19'),(185,'2021-03-19 16:32:46','公告编号5','标题5','内容5','2021-03-19'),(186,'2021-03-19 16:32:46','公告编号6','标题6','内容6','2021-03-19');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`yuanxi`,`zhicheng`,`shoujihaoma`,`youxiang`) values (21,'2021-03-19 16:32:46','教师1','123456','教师姓名1','男','院系1','职称1','13823888881','773890001@qq.com'),(22,'2021-03-19 16:32:46','教师2','123456','教师姓名2','男','院系2','职称2','13823888882','773890002@qq.com'),(23,'2021-03-19 16:32:46','教师3','123456','教师姓名3','男','院系3','职称3','13823888883','773890003@qq.com'),(24,'2021-03-19 16:32:46','教师4','123456','教师姓名4','男','院系4','职称4','13823888884','773890004@qq.com'),(25,'2021-03-19 16:32:46','教师5','123456','教师姓名5','男','院系5','职称5','13823888885','773890005@qq.com'),(26,'2021-03-19 16:32:46','教师6','123456','教师姓名6','男','院系6','职称6','13823888886','773890006@qq.com');

/*Table structure for table `jiaoshiketixuanze` */

DROP TABLE IF EXISTS `jiaoshiketixuanze`;

CREATE TABLE `jiaoshiketixuanze` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketibianhao` varchar(200) DEFAULT NULL COMMENT '课题编号',
  `ketimingcheng` varchar(200) DEFAULT NULL COMMENT '课题名称',
  `nandu` varchar(200) DEFAULT NULL COMMENT '难度',
  `laiyuan` varchar(200) DEFAULT NULL COMMENT '来源',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `miaoshu` varchar(200) DEFAULT NULL COMMENT '描述',
  `kechengziliao` varchar(200) DEFAULT NULL COMMENT '课程资料',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='教师课题选择';

/*Data for the table `jiaoshiketixuanze` */

insert  into `jiaoshiketixuanze`(`id`,`addtime`,`ketibianhao`,`ketimingcheng`,`nandu`,`laiyuan`,`leixing`,`miaoshu`,`kechengziliao`,`gonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`shenqingriqi`,`sfsh`,`shhf`) values (101,'2021-03-19 16:32:46','课题编号1','课题名称1','难度1','来源1','类型1','描述1','','工号1','教师姓名1','学号1','学生姓名1','2021-03-19','是',''),(102,'2021-03-19 16:32:46','课题编号2','课题名称2','难度2','来源2','类型2','描述2','','工号2','教师姓名2','学号2','学生姓名2','2021-03-19','是',''),(103,'2021-03-19 16:32:46','课题编号3','课题名称3','难度3','来源3','类型3','描述3','','工号3','教师姓名3','学号3','学生姓名3','2021-03-19','是',''),(104,'2021-03-19 16:32:46','课题编号4','课题名称4','难度4','来源4','类型4','描述4','','工号4','教师姓名4','学号4','学生姓名4','2021-03-19','是',''),(105,'2021-03-19 16:32:46','课题编号5','课题名称5','难度5','来源5','类型5','描述5','','工号5','教师姓名5','学号5','学生姓名5','2021-03-19','是',''),(106,'2021-03-19 16:32:46','课题编号6','课题名称6','难度6','来源6','类型6','描述6','','工号6','教师姓名6','学号6','学生姓名6','2021-03-19','是','');

/*Table structure for table `jinduxinxi` */

DROP TABLE IF EXISTS `jinduxinxi`;

CREATE TABLE `jinduxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wendangbianhao` varchar(200) DEFAULT NULL COMMENT '文档编号',
  `wendangmingcheng` varchar(200) DEFAULT NULL COMMENT '文档名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `xueshengwendang` varchar(200) DEFAULT NULL COMMENT '学生文档',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='进度信息';

/*Data for the table `jinduxinxi` */

insert  into `jinduxinxi`(`id`,`addtime`,`wendangbianhao`,`wendangmingcheng`,`gonghao`,`jiaoshixingming`,`faburiqi`,`xuehao`,`xueshengxingming`,`leixing`,`xueshengwendang`,`shenqingriqi`,`sfsh`,`shhf`) values (131,'2021-03-19 16:32:46','文档编号1','文档名称1','工号1','教师姓名1','2021-03-19','学号1','学生姓名1','类型1','','2021-03-19','是',''),(132,'2021-03-19 16:32:46','文档编号2','文档名称2','工号2','教师姓名2','2021-03-19','学号2','学生姓名2','类型2','','2021-03-19','是',''),(133,'2021-03-19 16:32:46','文档编号3','文档名称3','工号3','教师姓名3','2021-03-19','学号3','学生姓名3','类型3','','2021-03-19','是',''),(134,'2021-03-19 16:32:46','文档编号4','文档名称4','工号4','教师姓名4','2021-03-19','学号4','学生姓名4','类型4','','2021-03-19','是',''),(135,'2021-03-19 16:32:46','文档编号5','文档名称5','工号5','教师姓名5','2021-03-19','学号5','学生姓名5','类型5','','2021-03-19','是',''),(136,'2021-03-19 16:32:46','文档编号6','文档名称6','工号6','教师姓名6','2021-03-19','学号6','学生姓名6','类型6','','2021-03-19','是','');

/*Table structure for table `ketixinxi` */

DROP TABLE IF EXISTS `ketixinxi`;

CREATE TABLE `ketixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketibianhao` varchar(200) NOT NULL COMMENT '课题编号',
  `ketimingcheng` varchar(200) NOT NULL COMMENT '课题名称',
  `nandu` varchar(200) DEFAULT NULL COMMENT '难度',
  `laiyuan` varchar(200) DEFAULT NULL COMMENT '来源',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `miaoshu` longtext COMMENT '描述',
  `kechengziliao` varchar(200) DEFAULT NULL COMMENT '课程资料',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ketibianhao` (`ketibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='课题信息';

/*Data for the table `ketixinxi` */

insert  into `ketixinxi`(`id`,`addtime`,`ketibianhao`,`ketimingcheng`,`nandu`,`laiyuan`,`leixing`,`miaoshu`,`kechengziliao`,`gonghao`,`jiaoshixingming`,`faburiqi`,`sfsh`,`shhf`) values (81,'2021-03-19 16:32:46','课题编号1','课题名称1','低','学生拟定','类型1','描述1','','工号1','教师姓名1','2021-03-19','是',''),(82,'2021-03-19 16:32:46','课题编号2','课题名称2','低','学生拟定','类型2','描述2','','工号2','教师姓名2','2021-03-19','是',''),(83,'2021-03-19 16:32:46','课题编号3','课题名称3','低','学生拟定','类型3','描述3','','工号3','教师姓名3','2021-03-19','是',''),(84,'2021-03-19 16:32:46','课题编号4','课题名称4','低','学生拟定','类型4','描述4','','工号4','教师姓名4','2021-03-19','是',''),(85,'2021-03-19 16:32:46','课题编号5','课题名称5','低','学生拟定','类型5','描述5','','工号5','教师姓名5','2021-03-19','是',''),(86,'2021-03-19 16:32:46','课题编号6','课题名称6','低','学生拟定','类型6','描述6','','工号6','教师姓名6','2021-03-19','是','');

/*Table structure for table `leixingxinxi` */

DROP TABLE IF EXISTS `leixingxinxi`;

CREATE TABLE `leixingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='类型信息';

/*Data for the table `leixingxinxi` */

insert  into `leixingxinxi`(`id`,`addtime`,`leixing`) values (151,'2021-03-19 16:32:46','类型1'),(152,'2021-03-19 16:32:46','类型2'),(153,'2021-03-19 16:32:46','类型3'),(154,'2021-03-19 16:32:46','类型4'),(155,'2021-03-19 16:32:46','类型5'),(156,'2021-03-19 16:32:46','类型6');

/*Table structure for table `mianlunwenshenqing` */

DROP TABLE IF EXISTS `mianlunwenshenqing`;

CREATE TABLE `mianlunwenshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingbianhao` varchar(200) NOT NULL COMMENT '申请编号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shenqingneirong` longtext COMMENT '申请内容',
  `shenqingfujian` varchar(200) DEFAULT NULL COMMENT '申请附件',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shenqingbianhao` (`shenqingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616142959560 DEFAULT CHARSET=utf8 COMMENT='免论文申请';

/*Data for the table `mianlunwenshenqing` */

insert  into `mianlunwenshenqing`(`id`,`addtime`,`shenqingbianhao`,`xuehao`,`xueshengxingming`,`shenqingneirong`,`shenqingfujian`,`shenqingriqi`,`sfsh`,`shhf`) values (211,'2021-03-19 16:32:46','申请编号1','学号1','学生姓名1','申请内容1','','2021-03-19','是',''),(212,'2021-03-19 16:32:46','申请编号2','学号2','学生姓名2','申请内容2','','2021-03-19','是',''),(213,'2021-03-19 16:32:46','申请编号3','学号3','学生姓名3','申请内容3','','2021-03-19','是',''),(214,'2021-03-19 16:32:46','申请编号4','学号4','学生姓名4','申请内容4','','2021-03-19','是',''),(215,'2021-03-19 16:32:46','申请编号5','学号5','学生姓名5','申请内容5','','2021-03-19','是',''),(216,'2021-03-19 16:32:46','申请编号6','学号6','学生姓名6','申请内容6','','2021-03-19','是',''),(1616142959559,'2021-03-19 16:35:59','1616142843518','1','测试','<p>各种申请免论文内容32323232323</p>','http://localhost:8080/ssmb615y/upload/1616142940632.docx','2021-02-01','是','sdasdsad');

/*Table structure for table `shangchuanwendang` */

DROP TABLE IF EXISTS `shangchuanwendang`;

CREATE TABLE `shangchuanwendang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinxibianhao` varchar(200) NOT NULL COMMENT '信息编号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xueshengwendang` varchar(200) DEFAULT NULL COMMENT '学生文档',
  `shangchuanriqi` date DEFAULT NULL COMMENT '上传日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xinxibianhao` (`xinxibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='上传文档';

/*Data for the table `shangchuanwendang` */

insert  into `shangchuanwendang`(`id`,`addtime`,`xinxibianhao`,`xuehao`,`xueshengxingming`,`xueshengwendang`,`shangchuanriqi`,`gonghao`,`jiaoshixingming`,`sfsh`,`shhf`) values (171,'2021-03-19 16:32:46','信息编号1','学号1','学生姓名1','','2021-03-19','工号1','教师姓名1','是',''),(172,'2021-03-19 16:32:46','信息编号2','学号2','学生姓名2','','2021-03-19','工号2','教师姓名2','是',''),(173,'2021-03-19 16:32:46','信息编号3','学号3','学生姓名3','','2021-03-19','工号3','教师姓名3','是',''),(174,'2021-03-19 16:32:46','信息编号4','学号4','学生姓名4','','2021-03-19','工号4','教师姓名4','是',''),(175,'2021-03-19 16:32:46','信息编号5','学号5','学生姓名5','','2021-03-19','工号5','教师姓名5','是',''),(176,'2021-03-19 16:32:46','信息编号6','学号6','学生姓名6','','2021-03-19','工号6','教师姓名6','是','');

/*Table structure for table `shenqingketi` */

DROP TABLE IF EXISTS `shenqingketi`;

CREATE TABLE `shenqingketi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketibianhao` varchar(200) NOT NULL COMMENT '课题编号',
  `ketimingcheng` varchar(200) NOT NULL COMMENT '课题名称',
  `nandu` varchar(200) DEFAULT NULL COMMENT '难度',
  `laiyuan` varchar(200) DEFAULT NULL COMMENT '来源',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `miaoshu` longtext COMMENT '描述',
  `kechengziliao` varchar(200) DEFAULT NULL COMMENT '课程资料',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ketibianhao` (`ketibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='申请课题';

/*Data for the table `shenqingketi` */

insert  into `shenqingketi`(`id`,`addtime`,`ketibianhao`,`ketimingcheng`,`nandu`,`laiyuan`,`leixing`,`miaoshu`,`kechengziliao`,`daoshizhanghao`,`daoshixingming`,`faburiqi`,`sfsh`,`shhf`) values (91,'2021-03-19 16:32:46','课题编号1','课题名称1','低','学生预订','类型1','描述1','','导师账号1','导师姓名1','2021-03-19','是',''),(92,'2021-03-19 16:32:46','课题编号2','课题名称2','低','学生预订','类型2','描述2','','导师账号2','导师姓名2','2021-03-19','是',''),(93,'2021-03-19 16:32:46','课题编号3','课题名称3','低','学生预订','类型3','描述3','','导师账号3','导师姓名3','2021-03-19','是',''),(94,'2021-03-19 16:32:46','课题编号4','课题名称4','低','学生预订','类型4','描述4','','导师账号4','导师姓名4','2021-03-19','是',''),(95,'2021-03-19 16:32:46','课题编号5','课题名称5','低','学生预订','类型5','描述5','','导师账号5','导师姓名5','2021-03-19','是',''),(96,'2021-03-19 16:32:46','课题编号6','课题名称6','低','学生预订','类型6','描述6','','导师账号6','导师姓名6','2021-03-19','是','');

/*Table structure for table `tichuyiwen` */

DROP TABLE IF EXISTS `tichuyiwen`;

CREATE TABLE `tichuyiwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `wenti` longtext COMMENT '问题',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='提出疑问';

/*Data for the table `tichuyiwen` */

insert  into `tichuyiwen`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`wenti`,`xuehao`,`xueshengxingming`,`riqi`,`sfsh`,`shhf`) values (141,'2021-03-19 16:32:46','导师账号1','导师姓名1','问题1','学号1','学生姓名1','2021-03-19','是',''),(142,'2021-03-19 16:32:46','导师账号2','导师姓名2','问题2','学号2','学生姓名2','2021-03-19','是',''),(143,'2021-03-19 16:32:46','导师账号3','导师姓名3','问题3','学号3','学生姓名3','2021-03-19','是',''),(144,'2021-03-19 16:32:46','导师账号4','导师姓名4','问题4','学号4','学生姓名4','2021-03-19','是',''),(145,'2021-03-19 16:32:46','导师账号5','导师姓名5','问题5','学号5','学生姓名5','2021-03-19','是',''),(146,'2021-03-19 16:32:46','导师账号6','导师姓名6','问题6','学号6','学生姓名6','2021-03-19','是','');

/*Table structure for table `tiwenxinxi` */

DROP TABLE IF EXISTS `tiwenxinxi`;

CREATE TABLE `tiwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wentibianhao` varchar(200) NOT NULL COMMENT '问题编号',
  `wentimingcheng` varchar(200) NOT NULL COMMENT '问题名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wentibianhao` (`wentibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='提问信息';

/*Data for the table `tiwenxinxi` */

insert  into `tiwenxinxi`(`id`,`addtime`,`wentibianhao`,`wentimingcheng`,`xuehao`,`xueshengxingming`,`riqi`,`sfsh`,`shhf`) values (191,'2021-03-19 16:32:46','问题编号1','问题名称1','学号1','学生姓名1','2021-03-19','是',''),(192,'2021-03-19 16:32:46','问题编号2','问题名称2','学号2','学生姓名2','2021-03-19','是',''),(193,'2021-03-19 16:32:46','问题编号3','问题名称3','学号3','学生姓名3','2021-03-19','是',''),(194,'2021-03-19 16:32:46','问题编号4','问题名称4','学号4','学生姓名4','2021-03-19','是',''),(195,'2021-03-19 16:32:46','问题编号5','问题名称5','学号5','学生姓名5','2021-03-19','是',''),(196,'2021-03-19 16:32:46','问题编号6','问题名称6','学号6','学生姓名6','2021-03-19','是','');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1616142919391,'1','xuesheng','学生','ew9rgaofbm829est7weoqlv887a8ecvx','2021-03-19 16:35:24','2021-03-19 17:35:25'),(2,1,'abo','users','管理员','jmctr8kexiys2f99vcsunpb90k0ycbbr','2021-03-19 16:36:10','2021-03-19 17:36:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-19 16:32:46');

/*Table structure for table `wendangfabu` */

DROP TABLE IF EXISTS `wendangfabu`;

CREATE TABLE `wendangfabu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wendangbianhao` varchar(200) NOT NULL COMMENT '文档编号',
  `wendangmingcheng` varchar(200) NOT NULL COMMENT '文档名称',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wendangbianhao` (`wendangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='文档发布';

/*Data for the table `wendangfabu` */

insert  into `wendangfabu`(`id`,`addtime`,`wendangbianhao`,`wendangmingcheng`,`fujian`,`leixing`,`gonghao`,`jiaoshixingming`,`faburiqi`,`sfsh`,`shhf`) values (121,'2021-03-19 16:32:46','文档编号1','文档名称1','','类型1','工号1','教师姓名1','2021-03-19','是',''),(122,'2021-03-19 16:32:46','文档编号2','文档名称2','','类型2','工号2','教师姓名2','2021-03-19','是',''),(123,'2021-03-19 16:32:46','文档编号3','文档名称3','','类型3','工号3','教师姓名3','2021-03-19','是',''),(124,'2021-03-19 16:32:46','文档编号4','文档名称4','','类型4','工号4','教师姓名4','2021-03-19','是',''),(125,'2021-03-19 16:32:46','文档编号5','文档名称5','','类型5','工号5','教师姓名5','2021-03-19','是',''),(126,'2021-03-19 16:32:46','文档编号6','文档名称6','','类型6','工号6','教师姓名6','2021-03-19','是','');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616142919392 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`xueyuan`,`zhuanye`,`banji`,`lianxidianhua`,`youxiang`) values (11,'2021-03-19 16:32:46','学生1','123456','学生姓名1','男','学院1','专业1','班级1','13823888881','773890001@qq.com'),(12,'2021-03-19 16:32:46','学生2','123456','学生姓名2','男','学院2','专业2','班级2','13823888882','773890002@qq.com'),(13,'2021-03-19 16:32:46','学生3','123456','学生姓名3','男','学院3','专业3','班级3','13823888883','773890003@qq.com'),(14,'2021-03-19 16:32:46','学生4','123456','学生姓名4','男','学院4','专业4','班级4','13823888884','773890004@qq.com'),(15,'2021-03-19 16:32:46','学生5','123456','学生姓名5','男','学院5','专业5','班级5','13823888885','773890005@qq.com'),(16,'2021-03-19 16:32:46','学生6','123456','学生姓名6','男','学院6','专业6','班级6','13823888886','773890006@qq.com'),(1616142919391,'2021-03-19 16:35:19','1','1','测试',NULL,NULL,'测试专业',NULL,'13255632510','132@163.com');

/*Table structure for table `yuanxixinxi` */

DROP TABLE IF EXISTS `yuanxixinxi`;

CREATE TABLE `yuanxixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanximingcheng` varchar(200) NOT NULL COMMENT '院系名称',
  `jiaoxueyuanzhang` varchar(200) NOT NULL COMMENT '教学院长',
  `jiaoxuemishu` varchar(200) NOT NULL COMMENT '教学秘书',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='院系信息';

/*Data for the table `yuanxixinxi` */

insert  into `yuanxixinxi`(`id`,`addtime`,`yuanximingcheng`,`jiaoxueyuanzhang`,`jiaoxuemishu`,`fuzeren`) values (41,'2021-03-19 16:32:46','院系名称1','教学院长1','教学秘书1','负责人1'),(42,'2021-03-19 16:32:46','院系名称2','教学院长2','教学秘书2','负责人2'),(43,'2021-03-19 16:32:46','院系名称3','教学院长3','教学秘书3','负责人3'),(44,'2021-03-19 16:32:46','院系名称4','教学院长4','教学秘书4','负责人4'),(45,'2021-03-19 16:32:46','院系名称5','教学院长5','教学秘书5','负责人5'),(46,'2021-03-19 16:32:46','院系名称6','教学院长6','教学秘书6','负责人6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmr9096
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmr9096` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmr9096`;

/*Table structure for table `banji` */

DROP TABLE IF EXISTS `banji`;

CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='班级';

/*Data for the table `banji` */

insert  into `banji`(`id`,`addtime`,`banjimingcheng`,`jiaoshizhanghao`,`jiaoshixingming`,`zhanghao`,`xingming`,`xingbie`,`shouji`,`touxiang`,`userid`) values (81,'2021-04-27 17:45:11','班级名称1','教师账号1','教师姓名1','账号1','姓名1','性别1','手机1','http://localhost:8080/ssmr9096/upload/banji_touxiang1.jpg',1);
insert  into `banji`(`id`,`addtime`,`banjimingcheng`,`jiaoshizhanghao`,`jiaoshixingming`,`zhanghao`,`xingming`,`xingbie`,`shouji`,`touxiang`,`userid`) values (82,'2021-04-27 17:45:11','班级名称2','教师账号2','教师姓名2','账号2','姓名2','性别2','手机2','http://localhost:8080/ssmr9096/upload/banji_touxiang2.jpg',2);
insert  into `banji`(`id`,`addtime`,`banjimingcheng`,`jiaoshizhanghao`,`jiaoshixingming`,`zhanghao`,`xingming`,`xingbie`,`shouji`,`touxiang`,`userid`) values (83,'2021-04-27 17:45:11','班级名称3','教师账号3','教师姓名3','账号3','姓名3','性别3','手机3','http://localhost:8080/ssmr9096/upload/banji_touxiang3.jpg',3);
insert  into `banji`(`id`,`addtime`,`banjimingcheng`,`jiaoshizhanghao`,`jiaoshixingming`,`zhanghao`,`xingming`,`xingbie`,`shouji`,`touxiang`,`userid`) values (84,'2021-04-27 17:45:11','班级名称4','教师账号4','教师姓名4','账号4','姓名4','性别4','手机4','http://localhost:8080/ssmr9096/upload/banji_touxiang4.jpg',4);
insert  into `banji`(`id`,`addtime`,`banjimingcheng`,`jiaoshizhanghao`,`jiaoshixingming`,`zhanghao`,`xingming`,`xingbie`,`shouji`,`touxiang`,`userid`) values (85,'2021-04-27 17:45:11','班级名称5','教师账号5','教师姓名5','账号5','姓名5','性别5','手机5','http://localhost:8080/ssmr9096/upload/banji_touxiang5.jpg',5);
insert  into `banji`(`id`,`addtime`,`banjimingcheng`,`jiaoshizhanghao`,`jiaoshixingming`,`zhanghao`,`xingming`,`xingbie`,`shouji`,`touxiang`,`userid`) values (86,'2021-04-27 17:45:11','班级名称6','教师账号6','教师姓名6','账号6','姓名6','性别6','手机6','http://localhost:8080/ssmr9096/upload/banji_touxiang6.jpg',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmr9096/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmr9096/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmr9096/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619516847650 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`addtime`,`name`,`time`,`status`) values (1619516847281,'2021-04-27 17:47:27','1',11,1);

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619516876234 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1619516876233,'2021-04-27 17:47:56',1619516847281,'1','1','[]',1,'1','1',3,1);

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619516922744 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1619516922743,'2021-04-27 17:48:41',11,NULL,1619516847281,'1',1619516876233,'1','[]',1,'1','1',1,'1');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`addtime`,`biaoti`,`neirong`,`tupian`,`fujian`,`fabushijian`) values (31,'2021-04-27 17:45:11','标题1','内容1','http://localhost:8080/ssmr9096/upload/gonggao_tupian1.jpg','','2021-04-27');
insert  into `gonggao`(`id`,`addtime`,`biaoti`,`neirong`,`tupian`,`fujian`,`fabushijian`) values (32,'2021-04-27 17:45:11','标题2','内容2','http://localhost:8080/ssmr9096/upload/gonggao_tupian2.jpg','','2021-04-27');
insert  into `gonggao`(`id`,`addtime`,`biaoti`,`neirong`,`tupian`,`fujian`,`fabushijian`) values (33,'2021-04-27 17:45:11','标题3','内容3','http://localhost:8080/ssmr9096/upload/gonggao_tupian3.jpg','','2021-04-27');
insert  into `gonggao`(`id`,`addtime`,`biaoti`,`neirong`,`tupian`,`fujian`,`fabushijian`) values (34,'2021-04-27 17:45:11','标题4','内容4','http://localhost:8080/ssmr9096/upload/gonggao_tupian4.jpg','','2021-04-27');
insert  into `gonggao`(`id`,`addtime`,`biaoti`,`neirong`,`tupian`,`fujian`,`fabushijian`) values (35,'2021-04-27 17:45:11','标题5','内容5','http://localhost:8080/ssmr9096/upload/gonggao_tupian5.jpg','','2021-04-27');
insert  into `gonggao`(`id`,`addtime`,`biaoti`,`neirong`,`tupian`,`fujian`,`fabushijian`) values (36,'2021-04-27 17:45:11','标题6','内容6','http://localhost:8080/ssmr9096/upload/gonggao_tupian6.jpg','','2021-04-27');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshizhanghao` varchar(200) NOT NULL COMMENT '教师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshizhanghao` (`jiaoshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (21,'2021-04-27 17:45:11','教师1','123456','教师姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssmr9096/upload/jiaoshi_touxiang1.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (22,'2021-04-27 17:45:11','教师2','123456','教师姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssmr9096/upload/jiaoshi_touxiang2.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (23,'2021-04-27 17:45:11','教师3','123456','教师姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssmr9096/upload/jiaoshi_touxiang3.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (24,'2021-04-27 17:45:11','教师4','123456','教师姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssmr9096/upload/jiaoshi_touxiang4.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (25,'2021-04-27 17:45:11','教师5','123456','教师姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssmr9096/upload/jiaoshi_touxiang5.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (26,'2021-04-27 17:45:11','教师6','123456','教师姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssmr9096/upload/jiaoshi_touxiang6.jpg');

/*Table structure for table `kaoqin` */

DROP TABLE IF EXISTS `kaoqin`;

CREATE TABLE `kaoqin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `shangkeriqi` varchar(200) DEFAULT NULL COMMENT '上课日期',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `kaoqintupian` varchar(200) DEFAULT NULL COMMENT '考勤图片',
  `kaoqinshijian` datetime DEFAULT NULL COMMENT '考勤时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='考勤';

/*Data for the table `kaoqin` */

insert  into `kaoqin`(`id`,`addtime`,`jiaoshizhanghao`,`jiaoshixingming`,`kechengmingcheng`,`shangkedidian`,`shangkeriqi`,`shangkeshijian`,`kaoqintupian`,`kaoqinshijian`,`sfsh`,`shhf`,`userid`) values (71,'2021-04-27 17:45:11','教师账号1','教师姓名1','课程名称1','上课地点1','上课日期1','上课时间1','http://localhost:8080/ssmr9096/upload/kaoqin_kaoqintupian1.jpg','2021-04-27 17:45:11','是','',1);
insert  into `kaoqin`(`id`,`addtime`,`jiaoshizhanghao`,`jiaoshixingming`,`kechengmingcheng`,`shangkedidian`,`shangkeriqi`,`shangkeshijian`,`kaoqintupian`,`kaoqinshijian`,`sfsh`,`shhf`,`userid`) values (72,'2021-04-27 17:45:11','教师账号2','教师姓名2','课程名称2','上课地点2','上课日期2','上课时间2','http://localhost:8080/ssmr9096/upload/kaoqin_kaoqintupian2.jpg','2021-04-27 17:45:11','是','',2);
insert  into `kaoqin`(`id`,`addtime`,`jiaoshizhanghao`,`jiaoshixingming`,`kechengmingcheng`,`shangkedidian`,`shangkeriqi`,`shangkeshijian`,`kaoqintupian`,`kaoqinshijian`,`sfsh`,`shhf`,`userid`) values (73,'2021-04-27 17:45:11','教师账号3','教师姓名3','课程名称3','上课地点3','上课日期3','上课时间3','http://localhost:8080/ssmr9096/upload/kaoqin_kaoqintupian3.jpg','2021-04-27 17:45:11','是','',3);
insert  into `kaoqin`(`id`,`addtime`,`jiaoshizhanghao`,`jiaoshixingming`,`kechengmingcheng`,`shangkedidian`,`shangkeriqi`,`shangkeshijian`,`kaoqintupian`,`kaoqinshijian`,`sfsh`,`shhf`,`userid`) values (74,'2021-04-27 17:45:11','教师账号4','教师姓名4','课程名称4','上课地点4','上课日期4','上课时间4','http://localhost:8080/ssmr9096/upload/kaoqin_kaoqintupian4.jpg','2021-04-27 17:45:11','是','',4);
insert  into `kaoqin`(`id`,`addtime`,`jiaoshizhanghao`,`jiaoshixingming`,`kechengmingcheng`,`shangkedidian`,`shangkeriqi`,`shangkeshijian`,`kaoqintupian`,`kaoqinshijian`,`sfsh`,`shhf`,`userid`) values (75,'2021-04-27 17:45:11','教师账号5','教师姓名5','课程名称5','上课地点5','上课日期5','上课时间5','http://localhost:8080/ssmr9096/upload/kaoqin_kaoqintupian5.jpg','2021-04-27 17:45:11','是','',5);
insert  into `kaoqin`(`id`,`addtime`,`jiaoshizhanghao`,`jiaoshixingming`,`kechengmingcheng`,`shangkedidian`,`shangkeriqi`,`shangkeshijian`,`kaoqintupian`,`kaoqinshijian`,`sfsh`,`shhf`,`userid`) values (76,'2021-04-27 17:45:11','教师账号6','教师姓名6','课程名称6','上课地点6','上课日期6','上课时间6','http://localhost:8080/ssmr9096/upload/kaoqin_kaoqintupian6.jpg','2021-04-27 17:45:11','是','',6);

/*Table structure for table `kechengbiao` */

DROP TABLE IF EXISTS `kechengbiao`;

CREATE TABLE `kechengbiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `shangkeriqi` date DEFAULT NULL COMMENT '上课日期',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程表';

/*Data for the table `kechengbiao` */

insert  into `kechengbiao`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`shangkedidian`,`shangkeriqi`,`shangkeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`zhanghao`,`xingming`,`userid`) values (41,'2021-04-27 17:45:11','课程名称1','科目1','上课地点1','2021-04-27','上课时间1','教师账号1','教师姓名1','账号1','姓名1',1);
insert  into `kechengbiao`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`shangkedidian`,`shangkeriqi`,`shangkeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`zhanghao`,`xingming`,`userid`) values (42,'2021-04-27 17:45:11','课程名称2','科目2','上课地点2','2021-04-27','上课时间2','教师账号2','教师姓名2','账号2','姓名2',2);
insert  into `kechengbiao`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`shangkedidian`,`shangkeriqi`,`shangkeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`zhanghao`,`xingming`,`userid`) values (43,'2021-04-27 17:45:11','课程名称3','科目3','上课地点3','2021-04-27','上课时间3','教师账号3','教师姓名3','账号3','姓名3',3);
insert  into `kechengbiao`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`shangkedidian`,`shangkeriqi`,`shangkeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`zhanghao`,`xingming`,`userid`) values (44,'2021-04-27 17:45:11','课程名称4','科目4','上课地点4','2021-04-27','上课时间4','教师账号4','教师姓名4','账号4','姓名4',4);
insert  into `kechengbiao`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`shangkedidian`,`shangkeriqi`,`shangkeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`zhanghao`,`xingming`,`userid`) values (45,'2021-04-27 17:45:11','课程名称5','科目5','上课地点5','2021-04-27','上课时间5','教师账号5','教师姓名5','账号5','姓名5',5);
insert  into `kechengbiao`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`shangkedidian`,`shangkeriqi`,`shangkeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`zhanghao`,`xingming`,`userid`) values (46,'2021-04-27 17:45:11','课程名称6','科目6','上课地点6','2021-04-27','上课时间6','教师账号6','教师姓名6','账号6','姓名6',6);

/*Table structure for table `kemu` */

DROP TABLE IF EXISTS `kemu`;

CREATE TABLE `kemu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kemu` varchar(200) NOT NULL COMMENT '科目',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='科目';

/*Data for the table `kemu` */

insert  into `kemu`(`id`,`addtime`,`kemu`) values (51,'2021-04-27 17:45:11','科目1');
insert  into `kemu`(`id`,`addtime`,`kemu`) values (52,'2021-04-27 17:45:11','科目2');
insert  into `kemu`(`id`,`addtime`,`kemu`) values (53,'2021-04-27 17:45:11','科目3');
insert  into `kemu`(`id`,`addtime`,`kemu`) values (54,'2021-04-27 17:45:11','科目4');
insert  into `kemu`(`id`,`addtime`,`kemu`) values (55,'2021-04-27 17:45:11','科目5');
insert  into `kemu`(`id`,`addtime`,`kemu`) values (56,'2021-04-27 17:45:11','科目6');

/*Table structure for table `shijianduan` */

DROP TABLE IF EXISTS `shijianduan`;

CREATE TABLE `shijianduan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '时间段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='时间段';

/*Data for the table `shijianduan` */

insert  into `shijianduan`(`id`,`addtime`,`shijianduan`) values (61,'2021-04-27 17:45:11','时间段1');
insert  into `shijianduan`(`id`,`addtime`,`shijianduan`) values (62,'2021-04-27 17:45:11','时间段2');
insert  into `shijianduan`(`id`,`addtime`,`shijianduan`) values (63,'2021-04-27 17:45:11','时间段3');
insert  into `shijianduan`(`id`,`addtime`,`shijianduan`) values (64,'2021-04-27 17:45:11','时间段4');
insert  into `shijianduan`(`id`,`addtime`,`shijianduan`) values (65,'2021-04-27 17:45:11','时间段5');
insert  into `shijianduan`(`id`,`addtime`,`shijianduan`) values (66,'2021-04-27 17:45:11','时间段6');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,21,'教师1','jiaoshi','管理员','jjzgvpzawpx31d1tuem0x70zs058gl3t','2021-04-27 17:47:15','2021-04-27 18:49:03');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'学生1','xuesheng','学生','pagndy71ywku8nih1ty6xqh4cyh2j5hn','2021-04-27 17:48:28','2021-04-27 18:48:28');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-27 17:45:11');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-04-27 17:45:11','学生1','123456','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssmr9096/upload/xuesheng_touxiang1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (12,'2021-04-27 17:45:11','学生2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssmr9096/upload/xuesheng_touxiang2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (13,'2021-04-27 17:45:11','学生3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssmr9096/upload/xuesheng_touxiang3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (14,'2021-04-27 17:45:11','学生4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssmr9096/upload/xuesheng_touxiang4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (15,'2021-04-27 17:45:11','学生5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssmr9096/upload/xuesheng_touxiang5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (16,'2021-04-27 17:45:11','学生6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssmr9096/upload/xuesheng_touxiang6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

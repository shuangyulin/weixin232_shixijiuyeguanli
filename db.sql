/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshengshixiyujiuye
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshengshixiyujiuye` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueshengshixiyujiuye`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xueshengshixiyujiuye/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xueshengshixiyujiuye/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xueshengshixiyujiuye/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (4,'zhaopin_types','招聘岗位',1,'招聘岗位1',NULL,NULL,'2022-04-01 19:50:23'),(5,'zhaopin_types','招聘岗位',2,'招聘岗位2',NULL,NULL,'2022-04-01 19:50:23'),(6,'zhaopin_types','招聘岗位',3,'招聘岗位3',NULL,NULL,'2022-04-01 19:50:23'),(7,'shangxia_types','是否上架',1,'上架',NULL,NULL,'2022-04-01 19:50:23'),(8,'shangxia_types','是否上架',2,'下架',NULL,NULL,'2022-04-01 19:50:23'),(9,'sex_types','性别',1,'男',NULL,NULL,'2022-04-01 19:50:23'),(10,'sex_types','性别',2,'女',NULL,NULL,'2022-04-01 19:50:23'),(11,'hanye_types','所在行业',1,'所在行业1',NULL,NULL,'2022-04-01 19:50:23'),(12,'hanye_types','所在行业',2,'所在行业2',NULL,NULL,'2022-04-01 19:50:23'),(13,'news_types','公告信息类型',1,'公告信息类型1',NULL,NULL,'2022-04-01 19:50:23'),(14,'news_types','公告信息类型',2,'公告信息类型2',NULL,NULL,'2022-04-01 19:50:23'),(15,'news_types','公告信息类型',3,'公告信息类型3',NULL,NULL,'2022-04-01 19:50:23'),(17,'toudi_yesno_types','审核结果',1,'处理中',NULL,NULL,'2022-04-01 19:50:24'),(18,'toudi_yesno_types','审核结果',2,'通过',NULL,NULL,'2022-04-01 19:50:24'),(19,'toudi_yesno_types','审核结果',3,'拒绝',NULL,NULL,'2022-04-01 19:50:24'),(20,'zhaopin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-01 19:50:24');

/*Table structure for table `fudaojiaoshi` */

DROP TABLE IF EXISTS `fudaojiaoshi`;

CREATE TABLE `fudaojiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `fudaojiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `fudaojiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `fudaojiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '教师手机号',
  `fudaojiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='辅导教师';

/*Data for the table `fudaojiaoshi` */

insert  into `fudaojiaoshi`(`id`,`username`,`password`,`fudaojiaoshi_name`,`fudaojiaoshi_photo`,`fudaojiaoshi_phone`,`fudaojiaoshi_email`,`sex_types`,`create_time`) values (1,'a1','123456','教师姓名1','http://localhost:8080/xueshengshixiyujiuye/upload/fudaojiaoshi1.jpg','17703786901','1@qq.com',1,'2022-04-01 19:55:55'),(2,'a2','123456','教师姓名2','http://localhost:8080/xueshengshixiyujiuye/upload/fudaojiaoshi2.jpg','17703786902','2@qq.com',2,'2022-04-01 19:55:55'),(3,'a3','123456','教师姓名3','http://localhost:8080/xueshengshixiyujiuye/upload/fudaojiaoshi3.jpg','17703786903','3@qq.com',1,'2022-04-01 19:55:55');

/*Table structure for table `fudaojiaoshi_liuyan` */

DROP TABLE IF EXISTS `fudaojiaoshi_liuyan`;

CREATE TABLE `fudaojiaoshi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fudaojiaoshi_id` int(11) DEFAULT NULL COMMENT '辅导教师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fudaojiaoshi_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='辅导教师留言';

/*Data for the table `fudaojiaoshi_liuyan` */

insert  into `fudaojiaoshi_liuyan`(`id`,`fudaojiaoshi_id`,`yonghu_id`,`fudaojiaoshi_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,2,1,'留言内容1','回复信息1','2022-04-01 19:55:55','2022-04-01 19:55:55','2022-04-01 19:55:55'),(2,2,2,'留言内容2','回复信息2','2022-04-01 19:55:55','2022-04-01 19:55:55','2022-04-01 19:55:55'),(3,3,2,'留言内容3','回复信息3','2022-04-01 19:55:55','2022-04-01 19:55:55','2022-04-01 19:55:55'),(4,3,1,'留言内容4','回复信息4','2022-04-01 19:55:55','2022-04-01 19:55:55','2022-04-01 19:55:55'),(5,2,3,'留言内容5','学生留言教师回复','2022-04-01 19:55:55','2022-04-01 21:28:19','2022-04-01 19:55:55'),(6,1,1,'询问教师自己的情况','','2022-04-01 21:30:38',NULL,'2022-04-01 21:30:38');

/*Table structure for table `gongsi` */

DROP TABLE IF EXISTS `gongsi`;

CREATE TABLE `gongsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `gongsi_name` varchar(200) DEFAULT NULL COMMENT '企业名称 Search111 ',
  `hanye_types` int(11) DEFAULT NULL COMMENT '所在行业',
  `gongsi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongsi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gongsi_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `gongsi_content` text COMMENT '企业简介 ',
  `gongsi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `gongsi` */

insert  into `gongsi`(`id`,`username`,`password`,`gongsi_name`,`hanye_types`,`gongsi_phone`,`gongsi_email`,`gongsi_photo`,`gongsi_content`,`gongsi_delete`,`create_time`) values (1,'a1','123456','企业名称1',1,'17703786901','1@qq.com','http://localhost:8080/xueshengshixiyujiuye/upload/gongsi1.jpg','企业简介1',1,'2022-04-01 19:55:55'),(2,'a2','123456','企业名称2',1,'17703786902','2@qq.com','http://localhost:8080/xueshengshixiyujiuye/upload/gongsi2.jpg','企业简介2',1,'2022-04-01 19:55:55'),(3,'a3','123456','企业名称3',1,'17703786903','3@qq.com','http://localhost:8080/xueshengshixiyujiuye/upload/gongsi3.jpg','企业简介3',1,'2022-04-01 19:55:55');

/*Table structure for table `gongzuoguanliren` */

DROP TABLE IF EXISTS `gongzuoguanliren`;

CREATE TABLE `gongzuoguanliren` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongzuoguanliren_name` varchar(200) DEFAULT NULL COMMENT '工作管理人姓名 Search111 ',
  `gongzuoguanliren_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `gongzuoguanliren_phone` varchar(200) DEFAULT NULL COMMENT '工作管理人手机号',
  `gongzuoguanliren_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='工作管理人';

/*Data for the table `gongzuoguanliren` */

insert  into `gongzuoguanliren`(`id`,`username`,`password`,`gongzuoguanliren_name`,`gongzuoguanliren_photo`,`gongzuoguanliren_phone`,`gongzuoguanliren_email`,`sex_types`,`create_time`) values (1,'a1','123456','工作管理人姓名1','http://localhost:8080/xueshengshixiyujiuye/upload/gongzuoguanliren1.jpg','17703786901','1@qq.com',2,'2022-04-01 19:55:55'),(2,'a2','123456','工作管理人姓名2','http://localhost:8080/xueshengshixiyujiuye/upload/gongzuoguanliren2.jpg','17703786902','2@qq.com',2,'2022-04-01 19:55:55'),(3,'a3','123456','工作管理人姓名3','http://localhost:8080/xueshengshixiyujiuye/upload/gongzuoguanliren3.jpg','17703786903','3@qq.com',2,'2022-04-01 19:55:55');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`news_delete`,`create_time`) values (1,'公告信息标题1',3,'http://localhost:8080/xueshengshixiyujiuye/upload/news1.jpg','2022-04-01 19:55:55','公告信息详情1',1,'2022-04-01 19:55:55'),(2,'公告信息标题2',1,'http://localhost:8080/xueshengshixiyujiuye/upload/news2.jpg','2022-04-01 19:55:55','公告信息详情2',1,'2022-04-01 19:55:55'),(3,'公告信息标题3',2,'http://localhost:8080/xueshengshixiyujiuye/upload/news3.jpg','2022-04-01 19:55:55','公告信息详情3',1,'2022-04-01 19:55:55'),(4,'公告信息标题4',3,'http://localhost:8080/xueshengshixiyujiuye/upload/news4.jpg','2022-04-01 19:55:55','公告信息详情4',1,'2022-04-01 19:55:55'),(5,'公告信息标题5',1,'http://localhost:8080/xueshengshixiyujiuye/upload/news5.jpg','2022-04-01 19:55:55','公告信息详情5',1,'2022-04-01 19:55:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','dubr642xk48101zdacw0q7leag6www9v','2022-04-01 20:31:57','2022-04-01 22:35:08'),(2,1,'a1','yonghu','用户','gzlsasgv6tuli90iatsvf2badrrmtg6b','2022-04-01 20:33:22','2022-04-01 22:29:35'),(3,1,'a1','gongsi','企业','mibsu4ib7e9aw3hlthachda7w09yxdkg','2022-04-01 21:18:15','2022-04-01 22:28:38'),(4,1,'a1','gongzuoguanliren','工作管理人','9pe7ruaufohkd6yg1k0hjvr1yoat256n','2022-04-01 21:26:49','2022-04-01 22:26:49'),(5,1,'a1','fudaojiaoshi','辅导教师','6b6z6kph2j5e4wpk3loswtak3kdn24qy','2022-04-01 21:27:54','2022-04-01 22:27:54'),(6,2,'a2','fudaojiaoshi','辅导教师','t6uf0ugejr6yucd5f44cejezory3w43t','2022-04-01 21:28:02','2022-04-01 22:28:03');

/*Table structure for table `toudi` */

DROP TABLE IF EXISTS `toudi`;

CREATE TABLE `toudi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '招聘',
  `zhaopin_file` varchar(200) DEFAULT NULL COMMENT '简历',
  `toudi_yesno_types` int(11) DEFAULT NULL COMMENT '审核结果 Search111',
  `toudi_yesno_text` text COMMENT '审核原因',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投递时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='申请实习';

/*Data for the table `toudi` */

insert  into `toudi`(`id`,`yonghu_id`,`zhaopin_id`,`zhaopin_file`,`toudi_yesno_types`,`toudi_yesno_text`,`insert_time`,`create_time`) values (1,2,1,'http://localhost:8080/xueshengshixiyujiuye/upload/file.rar',1,NULL,'2022-04-01 19:55:55','2022-04-01 19:55:55'),(2,3,2,'http://localhost:8080/xueshengshixiyujiuye/upload/file.rar',1,NULL,'2022-04-01 19:55:55','2022-04-01 19:55:55'),(3,2,3,'http://localhost:8080/xueshengshixiyujiuye/upload/file.rar',1,NULL,'2022-04-01 19:55:55','2022-04-01 19:55:55'),(5,3,5,'http://localhost:8080/xueshengshixiyujiuye/upload/file.rar',1,NULL,'2022-04-01 19:55:55','2022-04-01 19:55:55'),(30,1,5,'http://localhost:8080/xueshengshixiyujiuye/upload/1648817197776.rar',2,'123','2022-04-01 20:46:39','2022-04-01 20:46:39');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/xueshengshixiyujiuye/upload/yonghu1.jpg','17703786901','410224199610232001','1@qq.com',1,1,'2022-04-01 19:55:55'),(2,'a2','123456','用户姓名2','http://localhost:8080/xueshengshixiyujiuye/upload/yonghu2.jpg','17703786902','410224199610232002','2@qq.com',1,1,'2022-04-01 19:55:55'),(3,'a3','123456','用户姓名3','http://localhost:8080/xueshengshixiyujiuye/upload/yonghu3.jpg','17703786903','410224199610232003','3@qq.com',1,1,'2022-04-01 19:55:55');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongsi_id` int(11) DEFAULT NULL COMMENT '企业',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zhaopin_types` int(11) DEFAULT NULL COMMENT '招聘岗位 Search111',
  `zhaopin_renshu_number` int(11) DEFAULT NULL COMMENT '招聘人数',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='职位招聘';

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`id`,`gongsi_id`,`zhaopin_name`,`zhaopin_photo`,`zhaopin_address`,`lianxiren_name`,`zhaopin_phone`,`zhaopin_types`,`zhaopin_renshu_number`,`zhaopin_content`,`create_time`) values (1,2,'招聘信息名称1','http://localhost:8080/xueshengshixiyujiuye/upload/zhaopin1.jpg','上班地点1','联系人1','17703786901',2,410,'招聘信息详情1','2022-04-01 19:55:55'),(2,1,'招聘信息名称2','http://localhost:8080/xueshengshixiyujiuye/upload/zhaopin2.jpg','上班地点2','联系人2','17703786902',2,272,'招聘信息详情2','2022-04-01 19:55:55'),(3,3,'招聘信息名称3','http://localhost:8080/xueshengshixiyujiuye/upload/zhaopin3.jpg','上班地点3','联系人3','17703786903',3,270,'招聘信息详情3','2022-04-01 19:55:55'),(4,2,'招聘信息名称4','http://localhost:8080/xueshengshixiyujiuye/upload/zhaopin4.jpg','上班地点4','联系人4','17703786904',1,55,'招聘信息详情4','2022-04-01 19:55:55'),(5,1,'招聘信息名称5','http://localhost:8080/xueshengshixiyujiuye/upload/zhaopin5.jpg','上班地点5','联系人5','17703786905',3,283,'招聘信息详情5','2022-04-01 19:55:55');

/*Table structure for table `zhaopin_collection` */

DROP TABLE IF EXISTS `zhaopin_collection`;

CREATE TABLE `zhaopin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='职位收藏';

/*Data for the table `zhaopin_collection` */

insert  into `zhaopin_collection`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2022-04-01 19:55:55','2022-04-01 19:55:55'),(2,2,3,1,'2022-04-01 19:55:55','2022-04-01 19:55:55'),(3,3,3,1,'2022-04-01 19:55:55','2022-04-01 19:55:55'),(4,4,2,1,'2022-04-01 19:55:55','2022-04-01 19:55:55');

/*Table structure for table `zhaopin_liuyan` */

DROP TABLE IF EXISTS `zhaopin_liuyan`;

CREATE TABLE `zhaopin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='职位留言';

/*Data for the table `zhaopin_liuyan` */

insert  into `zhaopin_liuyan`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,3,'留言内容1','回复信息1','2022-04-01 19:55:55','2022-04-01 19:55:55','2022-04-01 19:55:55'),(2,2,2,'留言内容2','回复信息2','2022-04-01 19:55:55','2022-04-01 19:55:55','2022-04-01 19:55:55'),(3,3,1,'留言内容3','回复信息3','2022-04-01 19:55:55','2022-04-01 19:55:55','2022-04-01 19:55:55'),(4,4,2,'留言内容4','回复信息4','2022-04-01 19:55:55','2022-04-01 19:55:55','2022-04-01 19:55:55'),(5,5,2,'留言内容5','回复信息5','2022-04-01 19:55:55','2022-04-01 19:55:55','2022-04-01 19:55:55'),(6,5,1,'对企业的留言 后台可以回复','','2022-04-01 21:30:06',NULL,'2022-04-01 21:30:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

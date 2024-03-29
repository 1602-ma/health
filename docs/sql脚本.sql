/*
Navicat MySQL Data Transfer

Source Server         : aliyun_mysql
Source Server Version : 50173
Source Host           : bdm266490277.my3w.com:3306
Source Database       : bdm266490277_db

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2020-04-28 09:06:54
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `t_checkgroup`
-- ----------------------------
drop table if exists t_checkgroup;
create table t_checkgroup (
    id int(11) not null auto_increment comment '主键id'
    , code varchar(32) default null comment '检查组代号'
    , name varchar(32) default null comment '检查组名'
    , helpCode varchar(32) default null comment '简写'
    , sex char(1) default null comment '性别'
    , remark varchar(128) default null comment '标记'
    , attention varchar(128) default null comment '注意事项'
    , primary key (id)
) engine=InnoDB auto_increment=16 default charset=utf8

-- ----------------------------
-- Records of t_checkgroup
-- ----------------------------
INSERT INTO `t_checkgroup` VALUES ('5', '0001', '一般检查', 'YBJC', '0', '一般检查', '无');
INSERT INTO `t_checkgroup` VALUES ('6', '0002', '视力色觉', 'SLSJ', '0', '视力色觉', null);
INSERT INTO `t_checkgroup` VALUES ('7', '0003', '血常规', 'XCG', '0', '血常规', null);
INSERT INTO `t_checkgroup` VALUES ('8', '0004', '尿常规', 'NCG', '0', '尿常规', null);
INSERT INTO `t_checkgroup` VALUES ('9', '0005', '肝功三项', 'GGSX', '0', '肝功三项', null);
INSERT INTO `t_checkgroup` VALUES ('10', '0006', '肾功三项', 'NGSX', '0', '肾功三项', null);
INSERT INTO `t_checkgroup` VALUES ('11', '0007', '血脂四项', 'XZSX', '0', '血脂四项', null);
INSERT INTO `t_checkgroup` VALUES ('12', '0008', '心肌酶三项', 'XJMSX', '0', '心肌酶三项', null);
INSERT INTO `t_checkgroup` VALUES ('13', '0009', '甲功三项', 'JGSX', '0', '甲功三项', null);
INSERT INTO `t_checkgroup` VALUES ('14', '0010', '子宫附件彩超', 'ZGFJCC', '2', '子宫附件彩超', null);
INSERT INTO `t_checkgroup` VALUES ('15', '0011', '胆红素三项', 'DHSSX', '0', '胆红素三项', null);

-- ----------------------------
-- Table structure for `t_checkgroup_checkitem`
-- ----------------------------
drop table if exists t_checkgroup_checkitem;
create table t_checkgroup_checkitem (
    checkgroup_id int(11) not null default 0 comment '检查组id'
    , checkitem_id int(11) not null default 0 comment '检查项id'
    , primary key (checkgroup_id, checkitem_id)
    , key item_id (checkitem_id)
    , constraint group_id foreign key (checkgroup_id) references t_checkgroup (id)
    , constraint item_id foreign key (checkitem_id) references t_checkitem (id)
) engine=InnoDB default charset=utf8;

-- ----------------------------
-- Records of t_checkgroup_checkitem
-- ----------------------------
INSERT INTO `t_checkgroup_checkitem` VALUES ('5', '28');
INSERT INTO `t_checkgroup_checkitem` VALUES ('5', '29');
INSERT INTO `t_checkgroup_checkitem` VALUES ('5', '30');
INSERT INTO `t_checkgroup_checkitem` VALUES ('5', '31');
INSERT INTO `t_checkgroup_checkitem` VALUES ('5', '32');
INSERT INTO `t_checkgroup_checkitem` VALUES ('6', '33');
INSERT INTO `t_checkgroup_checkitem` VALUES ('6', '34');
INSERT INTO `t_checkgroup_checkitem` VALUES ('6', '35');
INSERT INTO `t_checkgroup_checkitem` VALUES ('6', '36');
INSERT INTO `t_checkgroup_checkitem` VALUES ('6', '37');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '38');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '39');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '40');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '41');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '42');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '43');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '44');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '45');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '46');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '47');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '48');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '49');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '50');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '51');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '52');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '53');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '54');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '55');
INSERT INTO `t_checkgroup_checkitem` VALUES ('7', '56');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '57');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '58');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '59');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '60');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '61');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '62');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '63');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '64');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '65');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '66');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '67');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '68');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '69');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '70');
INSERT INTO `t_checkgroup_checkitem` VALUES ('8', '71');
INSERT INTO `t_checkgroup_checkitem` VALUES ('9', '72');
INSERT INTO `t_checkgroup_checkitem` VALUES ('9', '73');
INSERT INTO `t_checkgroup_checkitem` VALUES ('9', '74');
INSERT INTO `t_checkgroup_checkitem` VALUES ('10', '75');
INSERT INTO `t_checkgroup_checkitem` VALUES ('10', '76');
INSERT INTO `t_checkgroup_checkitem` VALUES ('10', '77');
INSERT INTO `t_checkgroup_checkitem` VALUES ('11', '78');
INSERT INTO `t_checkgroup_checkitem` VALUES ('11', '79');
INSERT INTO `t_checkgroup_checkitem` VALUES ('11', '80');
INSERT INTO `t_checkgroup_checkitem` VALUES ('11', '81');
INSERT INTO `t_checkgroup_checkitem` VALUES ('12', '82');
INSERT INTO `t_checkgroup_checkitem` VALUES ('12', '83');
INSERT INTO `t_checkgroup_checkitem` VALUES ('12', '84');
INSERT INTO `t_checkgroup_checkitem` VALUES ('13', '85');
INSERT INTO `t_checkgroup_checkitem` VALUES ('13', '86');
INSERT INTO `t_checkgroup_checkitem` VALUES ('13', '87');
INSERT INTO `t_checkgroup_checkitem` VALUES ('14', '88');
INSERT INTO `t_checkgroup_checkitem` VALUES ('14', '89');
INSERT INTO `t_checkgroup_checkitem` VALUES ('15', '90');
INSERT INTO `t_checkgroup_checkitem` VALUES ('15', '91');
INSERT INTO `t_checkgroup_checkitem` VALUES ('15', '92');

-- ----------------------------
-- Table structure for `t_checkitem`
-- ----------------------------
drop table if exists t_checkitem;
create table t_checkitem (
    id int(11) not null auto_increment comment '主键id'
    , code varchar(16) default null comment '检查项代号'
    , name varchar(32) default null comment '检查项名字'
    , sex char(1) default null comment '性别'
    , age varchar(32) default null comment '年龄范围'
    , price float default null comment '价格'
    , type char(1) default null comment '检查项类型，分为检查和检验'
    , attention varchar(128) default null comment '注意事项'
    , remark varchar(128) default null comment '备注'
    , primary key (id)
) engine=InnoDB auto_increment=98 default charset=utf8

-- ----------------------------
-- Records of t_checkitem
-- ----------------------------
INSERT INTO `t_checkitem` VALUES ('28', '0001', '身高', '0', '0-100', '5', '1', '无', '身高');
INSERT INTO `t_checkitem` VALUES ('29', '0002', '体重', '0', '0-100', '5', '1', '无', '体重');
INSERT INTO `t_checkitem` VALUES ('30', '0003', '体重指数', '0', '0-100', '5', '1', '无', '体重指数');
INSERT INTO `t_checkitem` VALUES ('31', '0004', '收缩压', '0', '0-100', '5', '1', '无', '收缩压');
INSERT INTO `t_checkitem` VALUES ('32', '0005', '舒张压', '0', '0-100', '5', '1', '无', '舒张压');
INSERT INTO `t_checkitem` VALUES ('33', '0006', '裸视力（右）', '0', '0-100', '5', '1', '无', '裸视力（右）');
INSERT INTO `t_checkitem` VALUES ('34', '0007', '裸视力（左）', '0', '0-100', '5', '1', '无', '裸视力（左）');
INSERT INTO `t_checkitem` VALUES ('35', '0008', '矫正视力（右）', '0', '0-100', '5', '1', '无', '矫正视力（右）');
INSERT INTO `t_checkitem` VALUES ('36', '0009', '矫正视力（左）', '0', '0-100', '5', '1', '无', '矫正视力（左）');
INSERT INTO `t_checkitem` VALUES ('37', '0010', '色觉', '0', '0-100', '5', '1', '无', '色觉');
INSERT INTO `t_checkitem` VALUES ('38', '0011', '白细胞计数', '0', '0-100', '10', '2', '无', '白细胞计数');
INSERT INTO `t_checkitem` VALUES ('39', '0012', '红细胞计数', '0', '0-100', '10', '2', null, '红细胞计数');
INSERT INTO `t_checkitem` VALUES ('40', '0013', '血红蛋白', '0', '0-100', '10', '2', null, '血红蛋白');
INSERT INTO `t_checkitem` VALUES ('41', '0014', '红细胞压积', '0', '0-100', '10', '2', null, '红细胞压积');
INSERT INTO `t_checkitem` VALUES ('42', '0015', '平均红细胞体积', '0', '0-100', '10', '2', null, '平均红细胞体积');
INSERT INTO `t_checkitem` VALUES ('43', '0016', '平均红细胞血红蛋白含量', '0', '0-100', '10', '2', null, '平均红细胞血红蛋白含量');
INSERT INTO `t_checkitem` VALUES ('44', '0017', '平均红细胞血红蛋白浓度', '0', '0-100', '10', '2', null, '平均红细胞血红蛋白浓度');
INSERT INTO `t_checkitem` VALUES ('45', '0018', '红细胞分布宽度-变异系数', '0', '0-100', '10', '2', null, '红细胞分布宽度-变异系数');
INSERT INTO `t_checkitem` VALUES ('46', '0019', '血小板计数', '0', '0-100', '10', '2', null, '血小板计数');
INSERT INTO `t_checkitem` VALUES ('47', '0020', '平均血小板体积', '0', '0-100', '10', '2', null, '平均血小板体积');
INSERT INTO `t_checkitem` VALUES ('48', '0021', '血小板分布宽度', '0', '0-100', '10', '2', null, '血小板分布宽度');
INSERT INTO `t_checkitem` VALUES ('49', '0022', '淋巴细胞百分比', '0', '0-100', '10', '2', null, '淋巴细胞百分比');
INSERT INTO `t_checkitem` VALUES ('50', '0023', '中间细胞百分比', '0', '0-100', '10', '2', null, '中间细胞百分比');
INSERT INTO `t_checkitem` VALUES ('51', '0024', '中性粒细胞百分比', '0', '0-100', '10', '2', null, '中性粒细胞百分比');
INSERT INTO `t_checkitem` VALUES ('52', '0025', '淋巴细胞绝对值', '0', '0-100', '10', '2', null, '淋巴细胞绝对值');
INSERT INTO `t_checkitem` VALUES ('53', '0026', '中间细胞绝对值', '0', '0-100', '10', '2', null, '中间细胞绝对值');
INSERT INTO `t_checkitem` VALUES ('54', '0027', '中性粒细胞绝对值', '0', '0-100', '10', '2', null, '中性粒细胞绝对值');
INSERT INTO `t_checkitem` VALUES ('55', '0028', '红细胞分布宽度-标准差', '0', '0-100', '10', '2', null, '红细胞分布宽度-标准差');
INSERT INTO `t_checkitem` VALUES ('56', '0029', '血小板压积', '0', '0-100', '10', '2', null, '血小板压积');
INSERT INTO `t_checkitem` VALUES ('57', '0030', '尿比重', '0', '0-100', '10', '2', null, '尿比重');
INSERT INTO `t_checkitem` VALUES ('58', '0031', '尿酸碱度', '0', '0-100', '10', '2', null, '尿酸碱度');
INSERT INTO `t_checkitem` VALUES ('59', '0032', '尿白细胞', '0', '0-100', '10', '2', null, '尿白细胞');
INSERT INTO `t_checkitem` VALUES ('60', '0033', '尿亚硝酸盐', '0', '0-100', '10', '2', null, '尿亚硝酸盐');
INSERT INTO `t_checkitem` VALUES ('61', '0034', '尿蛋白质', '0', '0-100', '10', '2', null, '尿蛋白质');
INSERT INTO `t_checkitem` VALUES ('62', '0035', '尿糖', '0', '0-100', '10', '2', null, '尿糖');
INSERT INTO `t_checkitem` VALUES ('63', '0036', '尿酮体', '0', '0-100', '10', '2', null, '尿酮体');
INSERT INTO `t_checkitem` VALUES ('64', '0037', '尿胆原', '0', '0-100', '10', '2', null, '尿胆原');
INSERT INTO `t_checkitem` VALUES ('65', '0038', '尿胆红素', '0', '0-100', '10', '2', null, '尿胆红素');
INSERT INTO `t_checkitem` VALUES ('66', '0039', '尿隐血', '0', '0-100', '10', '2', null, '尿隐血');
INSERT INTO `t_checkitem` VALUES ('67', '0040', '尿镜检红细胞', '0', '0-100', '10', '2', null, '尿镜检红细胞');
INSERT INTO `t_checkitem` VALUES ('68', '0041', '尿镜检白细胞', '0', '0-100', '10', '2', null, '尿镜检白细胞');
INSERT INTO `t_checkitem` VALUES ('69', '0042', '上皮细胞', '0', '0-100', '10', '2', null, '上皮细胞');
INSERT INTO `t_checkitem` VALUES ('70', '0043', '无机盐类', '0', '0-100', '10', '2', null, '无机盐类');
INSERT INTO `t_checkitem` VALUES ('71', '0044', '尿镜检蛋白定性', '0', '0-100', '10', '2', null, '尿镜检蛋白定性');
INSERT INTO `t_checkitem` VALUES ('72', '0045', '丙氨酸氨基转移酶', '0', '0-100', '10', '2', null, '丙氨酸氨基转移酶');
INSERT INTO `t_checkitem` VALUES ('73', '0046', '天门冬氨酸氨基转移酶', '0', '0-100', '10', '2', null, '天门冬氨酸氨基转移酶');
INSERT INTO `t_checkitem` VALUES ('74', '0047', 'Y-谷氨酰转移酶', '0', '0-100', '10', '2', null, 'Y-谷氨酰转移酶');
INSERT INTO `t_checkitem` VALUES ('75', '0048', '尿素', '0', '0-100', '10', '2', null, '尿素');
INSERT INTO `t_checkitem` VALUES ('76', '0049', '肌酐', '0', '0-100', '10', '2', null, '肌酐');
INSERT INTO `t_checkitem` VALUES ('77', '0050', '尿酸', '0', '0-100', '10', '2', null, '尿酸');
INSERT INTO `t_checkitem` VALUES ('78', '0051', '总胆固醇', '0', '0-100', '10', '2', null, '总胆固醇');
INSERT INTO `t_checkitem` VALUES ('79', '0052', '甘油三酯', '0', '0-100', '10', '2', null, '甘油三酯');
INSERT INTO `t_checkitem` VALUES ('80', '0053', '高密度脂蛋白胆固醇', '0', '0-100', '10', '2', null, '高密度脂蛋白胆固醇');
INSERT INTO `t_checkitem` VALUES ('81', '0054', '低密度脂蛋白胆固醇', '0', '0-100', '10', '2', null, '低密度脂蛋白胆固醇');
INSERT INTO `t_checkitem` VALUES ('82', '0055', '磷酸肌酸激酶', '0', '0-100', '10', '2', null, '磷酸肌酸激酶');
INSERT INTO `t_checkitem` VALUES ('83', '0056', '磷酸肌酸激酶同工酶', '0', '0-100', '10', '2', null, '磷酸肌酸激酶同工酶');
INSERT INTO `t_checkitem` VALUES ('84', '0057', '乳酸脱氢酶', '0', '0-100', '10', '2', null, '乳酸脱氢酶');
INSERT INTO `t_checkitem` VALUES ('85', '0058', '三碘甲状腺原氨酸', '0', '0-100', '10', '2', null, '三碘甲状腺原氨酸');
INSERT INTO `t_checkitem` VALUES ('86', '0059', '甲状腺素', '0', '0-100', '10', '2', null, '甲状腺素');
INSERT INTO `t_checkitem` VALUES ('87', '0060', '促甲状腺激素', '0', '0-100', '10', '2', null, '促甲状腺激素');
INSERT INTO `t_checkitem` VALUES ('88', '0061', '子宫', '2', '0-100', '10', '2', null, '子宫');
INSERT INTO `t_checkitem` VALUES ('89', '0062', '附件', '2', '0-100', '10', '2', null, '附件');
INSERT INTO `t_checkitem` VALUES ('90', '0063', '总胆红素', '0', '0-100', '10', '2', null, '总胆红素');
INSERT INTO `t_checkitem` VALUES ('91', '0064', '直接胆红素', '0', '0-100', '10', '2', null, '直接胆红素');
INSERT INTO `t_checkitem` VALUES ('92', '0065', '间接胆红素', '0', '0-100', '10', '2', null, '间接胆红素');

-- ----------------------------
-- Table structure for `t_member`
-- ----------------------------
drop table if exists t_member;
create table t_member (
    id int(11) not null auto_increment comment '主键id'
    , fileNumber varchar(32) default null comment '文件数量'
    , name varchar(32) default null comment '姓名'
    , sex varchar(8) default null comment '性别'
    , idCard varchar(18) default null comment '会员卡号'
    , phoneNumber varchar(11) default null comment '电话号码'
    , regTime date default null comment '注册时间'
    , password varchar(32) default null comment '密码'
    , email varchar(32) default null comment '邮件'
    , birthday date default null comment '生日'
    , remark varchar(128) default null comment '备注'
    , primary key (id)
) engine=InnoDB auto_increment=93 default charset=utf8 comment '会员表';

-- ----------------------------
-- Records of t_member
-- ----------------------------
INSERT INTO `t_member` VALUES ('82', null, '小明', '1', '123456789000999999', '18511279942', '2020-03-08', null, null, null, null);
INSERT INTO `t_member` VALUES ('83', null, '王美丽', '1', '132333333333333', '13412345678', '2020-03-11', null, null, null, null);
INSERT INTO `t_member` VALUES ('84', null, 'test', null, null, '18511279942', '2020-03-13', null, null, null, null);
INSERT INTO `t_member` VALUES ('85', null, null, null, null, null, '2020-03-06', null, null, null, null);
INSERT INTO `t_member` VALUES ('86', null, null, null, null, null, '2020-04-04', null, null, null, null);
INSERT INTO `t_member` VALUES ('87', null, null, null, null, null, '2020-02-06', null, null, null, null);
INSERT INTO `t_member` VALUES ('88', null, null, null, null, null, '2020-04-10', null, null, null, null);
INSERT INTO `t_member` VALUES ('89', null, null, null, null, null, '2018-12-01', null, null, null, null);
INSERT INTO `t_member` VALUES ('90', null, null, null, null, null, '2018-12-02', null, null, null, null);
INSERT INTO `t_member` VALUES ('91', null, null, null, null, null, '2018-02-01', null, null, null, null);
INSERT INTO `t_member` VALUES ('92', null, '333', '2', '234234145432121345', '18019286521', '2020-04-19', null, null, null, null);

-- ----------------------------
-- Table structure for `t_menu`
-- ----------------------------
drop table if exists t_menu;
create table t_menu (
    id int(11) not null auto_increment comment '主键id'
    , name varchar(128) default null comment '菜单名'
    , linkUrl varchar(128) default null comment '对应页面'
    , path varchar(128) default null comment '路径'
    , priority int(11) default null comment '优先级'
    , icon varchar(64) default null comment '图标'
    , description varchar(128) default null comment '描述'
    , parentMenuId int(11) default null comment '父级菜单'
    , level int(11) default null comment '菜单所在层级'
    , primary key (id)
    , key FK_Reference_13 (parentMenuId)
    , constraint FK_Reference_13 foreign key (parentMenuId) references t_menu (id)
) engine=InnoDB auto_increment=22 default charset=utf8 comment '菜单表';

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '会员管理', null, '2', '1', 'fa-user-md', null, null, '1');
INSERT INTO `t_menu` VALUES ('2', '会员档案', 'member.html', '/2-1', '1', null, null, '1', '2');
INSERT INTO `t_menu` VALUES ('3', '体检上传', null, '/2-2', '2', null, null, '1', '2');
INSERT INTO `t_menu` VALUES ('4', '会员统计', null, '/2-3', '3', null, null, '1', '2');
INSERT INTO `t_menu` VALUES ('5', '预约管理', null, '3', '2', 'fa-tty', null, null, '1');
INSERT INTO `t_menu` VALUES ('6', '预约列表', 'ordersettinglist.html', '/3-1', '1', null, null, '5', '2');
INSERT INTO `t_menu` VALUES ('7', '预约设置', 'ordersetting.html', '/3-2', '2', null, null, '5', '2');
INSERT INTO `t_menu` VALUES ('8', '套餐管理', 'setmeal.html', '/3-3', '3', null, null, '5', '2');
INSERT INTO `t_menu` VALUES ('9', '检查组管理', 'checkgroup.html', '/3-4', '4', null, null, '5', '2');
INSERT INTO `t_menu` VALUES ('10', '检查项管理', 'checkitem.html', '/3-5', '5', null, null, '5', '2');
INSERT INTO `t_menu` VALUES ('11', '健康评估', null, '4', '3', 'fa-stethoscope', null, null, '1');
INSERT INTO `t_menu` VALUES ('12', '中医体质辨识', null, '/4-1', '1', null, null, '11', '2');
INSERT INTO `t_menu` VALUES ('13', '统计分析', null, '5', '4', 'fa-heartbeat', null, null, '1');
INSERT INTO `t_menu` VALUES ('14', '会员数量', 'report_member.html', '/5-1', '1', null, null, '13', '2');
INSERT INTO `t_menu` VALUES ('15', '系统设置', null, '6', '5', 'fa-users', null, null, '1');
INSERT INTO `t_menu` VALUES ('16', '菜单管理', 'menu.html', '/6-1', '1', null, null, '15', '2');
INSERT INTO `t_menu` VALUES ('17', '权限管理', 'permission.html', '/6-2', '2', null, null, '15', '2');
INSERT INTO `t_menu` VALUES ('18', '角色管理', 'role.html', '/6-3', '3', null, null, '15', '2');
INSERT INTO `t_menu` VALUES ('19', '用户管理', 'user.html', '/6-4', '4', null, null, '15', '2');
INSERT INTO `t_menu` VALUES ('20', '套餐占比', 'report_setmeal.html', '/5-2', '2', null, null, '13', '2');
INSERT INTO `t_menu` VALUES ('21', '运营数据', 'report_business.html', '/5-3', '3', null, null, '13', '2');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL COMMENT '员会id',
  `orderDate` date DEFAULT NULL COMMENT '约预日期',
  `orderType` varchar(8) DEFAULT NULL COMMENT '约预类型 电话预约/微信预约',
  `orderStatus` varchar(8) DEFAULT NULL COMMENT '预约状态（是否到诊）',
  `setmeal_id` int(11) DEFAULT NULL COMMENT '餐套id',
  PRIMARY KEY (`id`),
  KEY `key_member_id` (`member_id`),
  KEY `key_setmeal_id` (`setmeal_id`),
  CONSTRAINT `key_member_id` FOREIGN KEY (`member_id`) REFERENCES `t_member` (`id`),
  CONSTRAINT `key_setmeal_id` FOREIGN KEY (`setmeal_id`) REFERENCES `t_setmeal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('17', '84', '2020-04-28', '微信预约', '未到诊', '12');

-- ----------------------------
-- Table structure for `t_ordersetting`
-- ----------------------------
drop table if exists t_ordersetting;
create table t_ordersetting (
    id int(11) not null auto_increment
    , orderDate date default null comment '预约日期'
    , number int(11) default null comment '可预约人数'
    , reservations int(11) default null comment '已预约人数'
    , primary key (id)
) engine=InnoDB auto_increment=69 default charset=utf8 comment '预约表';

-- ----------------------------
-- Records of t_ordersetting
-- ----------------------------
INSERT INTO `t_ordersetting` VALUES ('13', '2020-03-04', '100', '100');
INSERT INTO `t_ordersetting` VALUES ('14', '2020-03-05', '200', '0');
INSERT INTO `t_ordersetting` VALUES ('15', '2020-03-06', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('16', '2020-03-07', '200', '0');
INSERT INTO `t_ordersetting` VALUES ('17', '2020-03-08', '200', '1');
INSERT INTO `t_ordersetting` VALUES ('18', '2020-03-09', '200', '0');
INSERT INTO `t_ordersetting` VALUES ('19', '2020-03-10', '200', '0');
INSERT INTO `t_ordersetting` VALUES ('20', '2020-03-11', '200', '3');
INSERT INTO `t_ordersetting` VALUES ('21', '2020-03-13', '300', '1');
INSERT INTO `t_ordersetting` VALUES ('22', '2020-03-14', '600', '0');
INSERT INTO `t_ordersetting` VALUES ('23', '2020-03-15', '500', '1');
INSERT INTO `t_ordersetting` VALUES ('24', '2020-03-16', '500', '0');
INSERT INTO `t_ordersetting` VALUES ('25', '2020-03-17', '400', '0');
INSERT INTO `t_ordersetting` VALUES ('26', '2020-03-19', '300', '1');
INSERT INTO `t_ordersetting` VALUES ('27', '2020-04-01', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('28', '2020-04-02', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('29', '2020-04-19', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('30', '2020-03-20', '200', '1');
INSERT INTO `t_ordersetting` VALUES ('31', '2020-05-01', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('32', '2020-03-28', '200', '1');
INSERT INTO `t_ordersetting` VALUES ('33', '2020-04-03', '400', '0');
INSERT INTO `t_ordersetting` VALUES ('34', '2020-09-30', '800', '0');
INSERT INTO `t_ordersetting` VALUES ('35', '2020-04-04', '400', '0');
INSERT INTO `t_ordersetting` VALUES ('36', '2020-04-05', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('37', '2020-04-14', '200', '1');
INSERT INTO `t_ordersetting` VALUES ('38', '2020-04-13', '200', '0');
INSERT INTO `t_ordersetting` VALUES ('39', '2020-04-17', '400', '0');
INSERT INTO `t_ordersetting` VALUES ('40', '2020-04-18', '1', '1');
INSERT INTO `t_ordersetting` VALUES ('41', '2020-04-20', '300', '1');
INSERT INTO `t_ordersetting` VALUES ('42', '2020-04-21', '300', '1');
INSERT INTO `t_ordersetting` VALUES ('43', '2020-04-22', '300', '1');
INSERT INTO `t_ordersetting` VALUES ('44', '2020-04-23', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('45', '2020-04-24', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('46', '2020-04-25', '400', '0');
INSERT INTO `t_ordersetting` VALUES ('47', '2020-04-26', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('48', '2020-04-27', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('49', '2020-04-28', '300', '2');
INSERT INTO `t_ordersetting` VALUES ('50', '2020-04-29', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('51', '2020-04-30', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('52', '2020-05-02', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('53', '2020-05-03', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('54', '2020-05-04', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('55', '2020-05-05', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('56', '2020-05-06', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('57', '2020-05-07', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('58', '2020-05-08', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('59', '2020-05-09', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('60', '2020-05-10', '300', '0');
INSERT INTO `t_ordersetting` VALUES ('61', '2020-05-11', '300', '0');

-- ----------------------------
-- Table structure for `t_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `keyword` varchar(64) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '新增检查项', 'CHECKITEM_ADD', null);
INSERT INTO `t_permission` VALUES ('2', '删除检查项', 'CHECKITEM_DELETE', null);
INSERT INTO `t_permission` VALUES ('3', '编辑检查项', 'CHECKITEM_EDIT', null);
INSERT INTO `t_permission` VALUES ('4', '查询检查项', 'CHECKITEM_QUERY', null);
INSERT INTO `t_permission` VALUES ('5', '新增检查组', 'CHECKGROUP_ADD', null);
INSERT INTO `t_permission` VALUES ('6', '删除检查组', 'CHECKGROUP_DELETE', null);
INSERT INTO `t_permission` VALUES ('7', '编辑检查组', 'CHECKGROUP_EDIT', null);
INSERT INTO `t_permission` VALUES ('8', '查询检查组', 'CHECKGROUP_QUERY', null);
INSERT INTO `t_permission` VALUES ('9', '新增套餐', 'SETMEAL_ADD', null);
INSERT INTO `t_permission` VALUES ('10', '删除套餐', 'SETMEAL_DELETE', null);
INSERT INTO `t_permission` VALUES ('11', '编辑套餐', 'SETMEAL_EDIT', null);
INSERT INTO `t_permission` VALUES ('12', '查询套餐', 'SETMEAL_QUERY', null);
INSERT INTO `t_permission` VALUES ('13', '预约设置', 'ORDERSETTING', null);
INSERT INTO `t_permission` VALUES ('14', '查看统计报表', 'REPORT_VIEW', null);
INSERT INTO `t_permission` VALUES ('15', '新增菜单', 'MENU_ADD', null);
INSERT INTO `t_permission` VALUES ('16', '删除菜单', 'MENU_DELETE', null);
INSERT INTO `t_permission` VALUES ('17', '编辑菜单', 'MENU_EDIT', null);
INSERT INTO `t_permission` VALUES ('18', '查询菜单', 'MENU_QUERY', null);
INSERT INTO `t_permission` VALUES ('19', '新增角色', 'ROLE_ADD', null);
INSERT INTO `t_permission` VALUES ('20', '删除角色', 'ROLE_DELETE', null);
INSERT INTO `t_permission` VALUES ('21', '编辑角色', 'ROLE_EDIT', null);
INSERT INTO `t_permission` VALUES ('22', '查询角色', 'ROLE_QUERY', null);
INSERT INTO `t_permission` VALUES ('23', '新增用户', 'USER_ADD', null);
INSERT INTO `t_permission` VALUES ('24', '删除用户', 'USER_DELETE', null);
INSERT INTO `t_permission` VALUES ('25', '编辑用户', 'USER_EDIT', null);
INSERT INTO `t_permission` VALUES ('26', '查询用户', 'USER_QUERY', null);

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
drop table if exists t_role;
create table t_role (
    id int(11) not null auto_increment comment '主键id'
    , name varchar(32) default null comment '角色'
    , keyword varchar(64) default null comment '关键词'
    , description varchar(128) default null comment '描述'
    , primary key (id)
) engine=InnoDB auto_increment=3 default charset=utf8 comment '角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '系统管理员', 'ROLE_ADMIN', null);
INSERT INTO `t_role` VALUES ('2', '健康管理师', 'ROLE_HEALTH_MANAGER', null);

-- ----------------------------
-- Table structure for `t_role_menu`
-- ----------------------------
drop table if exists t_role_menu;
create table t_role_menu_id (
    role_id int(11) not null comment '角色id'
    , menu_id int(11) not null comment '菜单id'
    , primary key (role_id, menu_id)
    , key FK_Reference_10 (menu_id)
    , constraint FK_Reference_10 foreign key (menu_id) references t_menu (id)
    , constraint FK_Reference_9 foreign key (role_id) references t_role (id)
) engine=InnoDB default charset=utf8 comment '角色-菜单对应表';

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES ('1', '1');
INSERT INTO `t_role_menu` VALUES ('2', '1');
INSERT INTO `t_role_menu` VALUES ('1', '2');
INSERT INTO `t_role_menu` VALUES ('2', '2');
INSERT INTO `t_role_menu` VALUES ('1', '3');
INSERT INTO `t_role_menu` VALUES ('2', '3');
INSERT INTO `t_role_menu` VALUES ('1', '4');
INSERT INTO `t_role_menu` VALUES ('2', '4');
INSERT INTO `t_role_menu` VALUES ('1', '5');
INSERT INTO `t_role_menu` VALUES ('1', '6');
INSERT INTO `t_role_menu` VALUES ('1', '7');
INSERT INTO `t_role_menu` VALUES ('1', '8');
INSERT INTO `t_role_menu` VALUES ('1', '9');
INSERT INTO `t_role_menu` VALUES ('1', '10');
INSERT INTO `t_role_menu` VALUES ('1', '11');
INSERT INTO `t_role_menu` VALUES ('1', '12');
INSERT INTO `t_role_menu` VALUES ('1', '13');
INSERT INTO `t_role_menu` VALUES ('1', '14');
INSERT INTO `t_role_menu` VALUES ('1', '15');
INSERT INTO `t_role_menu` VALUES ('1', '16');
INSERT INTO `t_role_menu` VALUES ('1', '17');
INSERT INTO `t_role_menu` VALUES ('1', '18');
INSERT INTO `t_role_menu` VALUES ('1', '19');
INSERT INTO `t_role_menu` VALUES ('1', '20');
INSERT INTO `t_role_menu` VALUES ('1', '21');

-- ----------------------------
-- Table structure for `t_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `FK_Reference_12` (`permission_id`),
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`permission_id`) REFERENCES `t_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('1', '1');
INSERT INTO `t_role_permission` VALUES ('2', '1');
INSERT INTO `t_role_permission` VALUES ('1', '2');
INSERT INTO `t_role_permission` VALUES ('2', '2');
INSERT INTO `t_role_permission` VALUES ('1', '3');
INSERT INTO `t_role_permission` VALUES ('2', '3');
INSERT INTO `t_role_permission` VALUES ('1', '4');
INSERT INTO `t_role_permission` VALUES ('2', '4');
INSERT INTO `t_role_permission` VALUES ('1', '5');
INSERT INTO `t_role_permission` VALUES ('2', '5');
INSERT INTO `t_role_permission` VALUES ('1', '6');
INSERT INTO `t_role_permission` VALUES ('2', '6');
INSERT INTO `t_role_permission` VALUES ('1', '7');
INSERT INTO `t_role_permission` VALUES ('2', '7');
INSERT INTO `t_role_permission` VALUES ('1', '8');
INSERT INTO `t_role_permission` VALUES ('2', '8');
INSERT INTO `t_role_permission` VALUES ('1', '9');
INSERT INTO `t_role_permission` VALUES ('2', '9');
INSERT INTO `t_role_permission` VALUES ('1', '10');
INSERT INTO `t_role_permission` VALUES ('2', '10');
INSERT INTO `t_role_permission` VALUES ('1', '11');
INSERT INTO `t_role_permission` VALUES ('2', '11');
INSERT INTO `t_role_permission` VALUES ('1', '12');
INSERT INTO `t_role_permission` VALUES ('2', '12');
INSERT INTO `t_role_permission` VALUES ('1', '13');
INSERT INTO `t_role_permission` VALUES ('2', '13');
INSERT INTO `t_role_permission` VALUES ('1', '14');
INSERT INTO `t_role_permission` VALUES ('2', '14');
INSERT INTO `t_role_permission` VALUES ('1', '15');
INSERT INTO `t_role_permission` VALUES ('1', '16');
INSERT INTO `t_role_permission` VALUES ('1', '17');
INSERT INTO `t_role_permission` VALUES ('1', '18');
INSERT INTO `t_role_permission` VALUES ('1', '19');
INSERT INTO `t_role_permission` VALUES ('1', '20');
INSERT INTO `t_role_permission` VALUES ('1', '21');
INSERT INTO `t_role_permission` VALUES ('1', '22');
INSERT INTO `t_role_permission` VALUES ('1', '23');
INSERT INTO `t_role_permission` VALUES ('1', '24');
INSERT INTO `t_role_permission` VALUES ('1', '25');
INSERT INTO `t_role_permission` VALUES ('1', '26');

-- ----------------------------
-- Table structure for `t_setmeal`
-- ----------------------------
drop table if exists t_setmeal;
create table t_setmeal (
    id int(11) not null auto_increment comment '主键id'
    , name varchar(128) default null comment '套餐名'
    , code varchar(8) default null comment '代号'
    , helpCode varchar(16) default null comment '简写'
    , sex char(1) default null comment '性别'
    , age varchar(32) default null comment '年龄'
    , price float default null comment '价格'
    , remark varchar(128) default null comment '备注'
    , attention varchar(128) default null comment '注意事项'
    , img varchar(128) default null comment '图片'
    , primary key (id)
) engine=InnoDB auto_increment=16 default charset=utf8;

-- ----------------------------
-- Records of t_setmeal
-- ----------------------------
INSERT INTO `t_setmeal` VALUES ('12', '入职无忧体检套餐（男女通用）', '0001', 'RZTJ', '0', '18-60', '300', '入职体检套餐', null, 'a5e8e729-74ce-4939-bf36-9cdc02fb2ae51.jpg');
INSERT INTO `t_setmeal` VALUES ('13', '粉红珍爱(女)升级TM12项筛查体检套餐', '0002', 'FHZA', '2', '18-60', '1200', '本套餐针对宫颈(TCT检查、HPV乳头瘤病毒筛查）、乳腺（彩超，癌抗125），甲状腺（彩超，甲功验血）以及胸片，血常规肝功等有全面检查，非常适合女性全面疾病筛查使用。', null, 'd7114f3d-35bd-4e52-b0b5-9dfc83d54af72.jpg');
INSERT INTO `t_setmeal` VALUES ('14', '阳光爸妈升级肿瘤12项筛查（男女单人）体检套餐', '0003', 'YGBM', '0', '55-100', '1400', '本套餐主要针对常见肿瘤筛查，肝肾、颈动脉、脑血栓、颅内血流筛查，以及风湿、颈椎、骨密度检查', null, '1291b1fb-40c2-4558-b102-02e05c4cff6c3.jpg');
INSERT INTO `t_setmeal` VALUES ('15', '珍爱高端升级肿瘤12项筛查（男女单人）', '0004', 'ZAGD', '0', '14-20', '2400', '本套餐是一款针对生化五项检查，心，肝，胆，胃，甲状腺，颈椎，肺功能，脑部检查（经颅多普勒）以及癌症筛查，适合大众人群体检的套餐', null, '68c7c13f-8fc2-46c3-b5d6-f7ec7992dc6e1.jpg');

-- ----------------------------
-- Table structure for `t_setmeal_checkgroup`
-- ----------------------------
drop table if exists t_setmeal_checkgroup;
create table t_setmeal_checkgroup (
    setmeal_id int(11) not null default '0' comment '套餐id'
    , checkgroup_id int(11) not null default '0' comment '检查组id'
    , primary key (setmeal_id, checkgroup_id)
    , constraint checkgroup_key foreign key (checkgroup_id) references t_checkgroup (id)
    , constraint setmeal_id foreign key (setmeal_id) references t_setmeal (id)
) engine=InnoDB default charset=utf8 comment '套餐-检查组对应表';

-- ----------------------------
-- Records of t_setmeal_checkgroup
-- ----------------------------
INSERT INTO `t_setmeal_checkgroup` VALUES ('12', '5');
INSERT INTO `t_setmeal_checkgroup` VALUES ('12', '6');
INSERT INTO `t_setmeal_checkgroup` VALUES ('12', '7');
INSERT INTO `t_setmeal_checkgroup` VALUES ('12', '8');
INSERT INTO `t_setmeal_checkgroup` VALUES ('12', '9');
INSERT INTO `t_setmeal_checkgroup` VALUES ('12', '10');
INSERT INTO `t_setmeal_checkgroup` VALUES ('14', '10');
INSERT INTO `t_setmeal_checkgroup` VALUES ('15', '10');
INSERT INTO `t_setmeal_checkgroup` VALUES ('12', '11');
INSERT INTO `t_setmeal_checkgroup` VALUES ('14', '11');
INSERT INTO `t_setmeal_checkgroup` VALUES ('15', '11');
INSERT INTO `t_setmeal_checkgroup` VALUES ('14', '12');
INSERT INTO `t_setmeal_checkgroup` VALUES ('14', '13');
INSERT INTO `t_setmeal_checkgroup` VALUES ('15', '13');
INSERT INTO `t_setmeal_checkgroup` VALUES ('13', '14');
INSERT INTO `t_setmeal_checkgroup` VALUES ('15', '14');
INSERT INTO `t_setmeal_checkgroup` VALUES ('13', '15');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
drop table if exists t_user;
create table t_user (
    id int(11) not null auto_increment comment '主键id'
    , birthday date default null comment '生日'
    , gender varchar(1) default null comment '性别'
    , username varchar(32) default null comment '账号'
    , password varchar(256) default null comment '密码'
    , remark varchar(32) default null comment '备注'
    , station varchar(1) default null comment '身份'
    , telephone varchar(11) default null comment '电话'
    , primary key (id)
) engine=InnoDB auto_increment=4 default charset=utf8 comment '用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', null, null, 'admin', '$2a$10$u/BcsUUqZNWUxdmDhbnoeeobJy6IBsL1Gn/S0dMxI2RbSgnMKJ.4a', null, null, null);
INSERT INTO `t_user` VALUES ('2', null, null, 'xiaoming', '$2a$10$3xW2nBjwBM3rx1LoYprVsemNri5bvxeOd/QfmO7UDFQhW2HRHLi.C', null, null, null);
INSERT INTO `t_user` VALUES ('3', null, null, 'test', '$2a$10$zYJRscVUgHX1wqwu90WereuTmIg6h/JGirGG4SWBsZ60wVPCgtF8W', null, null, null);

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_Reference_8` (`role_id`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1');
INSERT INTO `t_user_role` VALUES ('2', '2');


alter table t_checkgroup comment='检查组信息';
alter table t_checkgroup_checkitem comment='检查组与检查项关系';
alter table t_checkitem comment='检查项信息';
alter table t_member comment='会员信息';
alter table t_menu comment='菜单信息';
alter table t_order comment='预约订单信息';
alter table t_ordersetting comment='预约设置信息';
alter table t_permission comment='权限信息';
alter table t_role comment='角色信息';
alter table t_role_menu comment='角色与菜单的关系';
alter table t_role_permission comment='角色与权限的关系';
alter table t_setmeal comment='套餐信息';
alter table t_setmeal_checkgroup comment='套餐与检查组信息';
alter table t_user comment='系统用户信息';
